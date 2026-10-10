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
; shader hash: 08a190e41f440f8d33a4c230c398d826
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
  br i1 %370, label %1747, label %906

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
  br i1 %915, label %1747, label %916

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
  br i1 %1204, label %1747, label %1205

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
  %1554 = add i32 %43, 112
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = lshr i32 %1556, 8
  %1560 = and i32 %1559, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = call float @dx.op.dot3.f32(i32 55, float %1423, float %1424, float %1425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1563 = fmul fast float %1561, %1562
  %1564 = fadd fast float %1563, %1558
  %1565 = fmul fast float %1564, 0x3F70101020000000
  %1566 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  br i1 %907, label %1567, label %1575

; <label>:1567                                    ; preds = %1550
  %1568 = fsub fast float 1.000000e+00, %1203
  %1569 = fmul fast float %1568, %895
  %1570 = fmul fast float %1568, %896
  %1571 = fmul fast float %1568, %897
  %1572 = fmul fast float %1568, %898
  %1573 = fmul fast float %1568, %899
  %1574 = fmul fast float %1568, %900
  br label %1575

; <label>:1575                                    ; preds = %1567, %1550
  %1576 = phi float [ %1569, %1567 ], [ %895, %1550 ]
  %1577 = phi float [ %1570, %1567 ], [ %896, %1550 ]
  %1578 = phi float [ %1571, %1567 ], [ %897, %1550 ]
  %1579 = phi float [ %1572, %1567 ], [ %898, %1550 ]
  %1580 = phi float [ %1573, %1567 ], [ %899, %1550 ]
  %1581 = phi float [ %1574, %1567 ], [ %900, %1550 ]
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = and i32 %1583, 3
  %1585 = icmp eq i32 %1584, 3
  br i1 %1585, label %1664, label %1586

; <label>:1586                                    ; preds = %1575
  %1587 = and i32 %1583, 16
  %1588 = icmp ne i32 %1587, 0
  %1589 = select i1 %1588, float %1203, float 0.000000e+00
  %1590 = icmp eq i32 %1584, 0
  br i1 %1590, label %1591, label %1619

; <label>:1591                                    ; preds = %1586
  %1592 = and i32 %1583, 64
  %1593 = icmp ne i32 %1592, 0
  %1594 = select i1 %1593, float %1203, float 0.000000e+00
  %1595 = fsub fast float %1423, %1576
  %1596 = fsub fast float %1424, %1577
  %1597 = fsub fast float %1425, %1578
  %1598 = fmul fast float %1589, %1595
  %1599 = fmul fast float %1589, %1596
  %1600 = fmul fast float %1589, %1597
  %1601 = fadd fast float %1598, %1576
  %1602 = fadd fast float %1599, %1577
  %1603 = fadd fast float %1600, %1578
  %1604 = fsub fast float %1409, %901
  %1605 = fmul fast float %1589, %1604
  %1606 = fadd fast float %1605, %901
  %1607 = fsub fast float %1551, %1579
  %1608 = fsub fast float %1552, %1580
  %1609 = fsub fast float %1553, %1581
  %1610 = fmul fast float %1594, %1607
  %1611 = fmul fast float %1594, %1608
  %1612 = fmul fast float %1594, %1609
  %1613 = fadd fast float %1610, %1579
  %1614 = fadd fast float %1611, %1580
  %1615 = fadd fast float %1612, %1581
  %1616 = fsub fast float %1566, %905
  %1617 = fmul fast float %1589, %1616
  %1618 = fadd fast float %1617, %905
  br label %1664

; <label>:1619                                    ; preds = %1586
  %1620 = icmp eq i32 %1584, 1
  br i1 %1620, label %1621, label %1634

; <label>:1621                                    ; preds = %1619
  %1622 = fadd fast float %1423, -1.000000e+00
  %1623 = fadd fast float %1424, -1.000000e+00
  %1624 = fadd fast float %1425, -1.000000e+00
  %1625 = fmul fast float %1589, %1622
  %1626 = fmul fast float %1589, %1623
  %1627 = fmul fast float %1589, %1624
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fadd fast float %1626, 1.000000e+00
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fmul fast float %1628, %1576
  %1632 = fmul fast float %1629, %1577
  %1633 = fmul fast float %1630, %1578
  br label %1664

; <label>:1634                                    ; preds = %1619
  %1635 = icmp eq i32 %1584, 2
  br i1 %1635, label %1636, label %1664

; <label>:1636                                    ; preds = %1634
  %1637 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1638 = call float @dx.op.unary.f32(i32 24, float %1424)  ; Sqrt(value)
  %1639 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1640 = fadd fast float %1637, -5.000000e-01
  %1641 = fadd fast float %1638, -5.000000e-01
  %1642 = fadd fast float %1639, -5.000000e-01
  %1643 = fmul fast float %1640, %1589
  %1644 = fmul fast float %1641, %1589
  %1645 = fmul fast float %1642, %1589
  %1646 = fadd fast float %1643, 5.000000e-01
  %1647 = fadd fast float %1644, 5.000000e-01
  %1648 = fadd fast float %1645, 5.000000e-01
  %1649 = fmul fast float %1646, 2.000000e+00
  %1650 = fsub fast float 1.000000e+00, %1649
  %1651 = fmul fast float %1650, %1576
  %1652 = fadd fast float %1651, %1649
  %1653 = fmul fast float %1652, %1576
  %1654 = fmul fast float %1647, 2.000000e+00
  %1655 = fsub fast float 1.000000e+00, %1654
  %1656 = fmul fast float %1655, %1577
  %1657 = fadd fast float %1656, %1654
  %1658 = fmul fast float %1657, %1577
  %1659 = fmul fast float %1648, 2.000000e+00
  %1660 = fsub fast float 1.000000e+00, %1659
  %1661 = fmul fast float %1660, %1578
  %1662 = fadd fast float %1661, %1659
  %1663 = fmul fast float %1662, %1578
  br label %1664

; <label>:1664                                    ; preds = %1636, %1634, %1621, %1591, %1575
  %1665 = phi float [ %1576, %1575 ], [ %1653, %1636 ], [ %1576, %1634 ], [ %1631, %1621 ], [ %1601, %1591 ]
  %1666 = phi float [ %1577, %1575 ], [ %1658, %1636 ], [ %1577, %1634 ], [ %1632, %1621 ], [ %1602, %1591 ]
  %1667 = phi float [ %1578, %1575 ], [ %1663, %1636 ], [ %1578, %1634 ], [ %1633, %1621 ], [ %1603, %1591 ]
  %1668 = phi float [ %1579, %1575 ], [ %1579, %1636 ], [ %1579, %1634 ], [ %1579, %1621 ], [ %1613, %1591 ]
  %1669 = phi float [ %1580, %1575 ], [ %1580, %1636 ], [ %1580, %1634 ], [ %1580, %1621 ], [ %1614, %1591 ]
  %1670 = phi float [ %1581, %1575 ], [ %1581, %1636 ], [ %1581, %1634 ], [ %1581, %1621 ], [ %1615, %1591 ]
  %1671 = phi float [ %901, %1575 ], [ %901, %1636 ], [ %901, %1634 ], [ %901, %1621 ], [ %1606, %1591 ]
  %1672 = phi float [ %905, %1575 ], [ %905, %1636 ], [ %905, %1634 ], [ %905, %1621 ], [ %1618, %1591 ]
  %1673 = and i32 %1583, 12
  %1674 = icmp eq i32 %1673, 12
  br i1 %1674, label %1747, label %1675

; <label>:1675                                    ; preds = %1664
  %1676 = and i32 %1583, 2097184
  %1677 = icmp eq i32 %1676, 2097184
  %1678 = select i1 %1677, float %1203, float 0.000000e+00
  %1679 = and i32 %1583, 4194336
  %1680 = icmp eq i32 %1679, 4194336
  %1681 = select i1 %1680, float %1203, float 0.000000e+00
  %1682 = and i32 %1583, 8388640
  %1683 = icmp eq i32 %1682, 8388640
  %1684 = select i1 %1683, float %1203, float 0.000000e+00
  %1685 = icmp eq i32 %1673, 0
  br i1 %1685, label %1686, label %1699

; <label>:1686                                    ; preds = %1675
  %1687 = fsub fast float %1504, %893
  %1688 = fsub fast float %1505, %894
  %1689 = fmul fast float %1678, %1687
  %1690 = fmul fast float %1678, %1688
  %1691 = fadd fast float %1689, %893
  %1692 = fadd fast float %1690, %894
  %1693 = fsub fast float %1506, %904
  %1694 = fmul fast float %1681, %1693
  %1695 = fadd fast float %1694, %904
  %1696 = fsub fast float %1503, %903
  %1697 = fmul fast float %1684, %1696
  %1698 = fadd fast float %1697, %903
  br label %1747

; <label>:1699                                    ; preds = %1675
  %1700 = icmp eq i32 %1673, 4
  br i1 %1700, label %1701, label %1733

; <label>:1701                                    ; preds = %1699
  %1702 = fmul fast float %1678, %1504
  %1703 = fmul fast float %1678, %1505
  %1704 = fadd fast float %1702, %893
  %1705 = fadd fast float %1703, %894
  %1706 = call float @dx.op.binary.f32(i32 36, float %904, float %1506)  ; FMin(a,b)
  %1707 = fsub fast float %1706, %904
  %1708 = fmul fast float %1707, %1681
  %1709 = fadd fast float %1708, %904
  %1710 = fadd fast float %1503, %903
  %1711 = fmul fast float %1710, 0x3FF337FAE0000000
  %1712 = fmul fast float %903, %903
  %1713 = fmul fast float %1503, %1503
  %1714 = fadd fast float %1713, %1712
  %1715 = fmul fast float %1714, 0x3FE5152B00000000
  %1716 = fmul fast float %903, 0xBFCC1F85E0000000
  %1717 = fmul fast float %1716, %1503
  %1718 = fadd fast float %1717, 0xBFE1363700000000
  %1719 = fadd fast float %1718, %1711
  %1720 = fsub fast float %1719, %1715
  %1721 = fmul fast float %1710, 0x3FBA6F0D00000000
  %1722 = fmul fast float %1714, 0x3FD0432880000000
  %1723 = fmul fast float %903, 0xBFEF110800000000
  %1724 = fmul fast float %1723, %1503
  %1725 = fadd fast float %1724, 1.000000e+00
  %1726 = fsub fast float %1725, %1721
  %1727 = fadd fast float %1726, %1722
  %1728 = fdiv fast float %1720, %1727
  %1729 = call float @dx.op.unary.f32(i32 7, float %1728)  ; Saturate(value)
  %1730 = fsub fast float %1729, %903
  %1731 = fmul fast float %1730, %1684
  %1732 = fadd fast float %1731, %903
  br label %1747

; <label>:1733                                    ; preds = %1699
  %1734 = icmp eq i32 %1673, 8
  br i1 %1734, label %1735, label %1747

; <label>:1735                                    ; preds = %1733
  %1736 = fmul fast float %1678, %1504
  %1737 = fmul fast float %1678, %1505
  %1738 = fadd fast float %1736, %893
  %1739 = fadd fast float %1737, %894
  %1740 = call float @dx.op.binary.f32(i32 36, float %904, float %1506)  ; FMin(a,b)
  %1741 = fsub fast float %1740, %904
  %1742 = fmul fast float %1741, %1681
  %1743 = fadd fast float %1742, %904
  %1744 = fsub fast float %1503, %903
  %1745 = fmul fast float %1684, %1744
  %1746 = fadd fast float %1745, %903
  br label %1747

; <label>:1747                                    ; preds = %1735, %1733, %1701, %1686, %1664, %1202, %906, %892
  %1748 = phi float [ %893, %1664 ], [ %893, %1202 ], [ %893, %892 ], [ %1738, %1735 ], [ %893, %1733 ], [ %1704, %1701 ], [ %1691, %1686 ], [ %893, %906 ]
  %1749 = phi float [ %894, %1664 ], [ %894, %1202 ], [ %894, %892 ], [ %1739, %1735 ], [ %894, %1733 ], [ %1705, %1701 ], [ %1692, %1686 ], [ %894, %906 ]
  %1750 = phi float [ %1665, %1664 ], [ %895, %1202 ], [ %895, %892 ], [ %1665, %1735 ], [ %1665, %1733 ], [ %1665, %1701 ], [ %1665, %1686 ], [ %895, %906 ]
  %1751 = phi float [ %1666, %1664 ], [ %896, %1202 ], [ %896, %892 ], [ %1666, %1735 ], [ %1666, %1733 ], [ %1666, %1701 ], [ %1666, %1686 ], [ %896, %906 ]
  %1752 = phi float [ %1667, %1664 ], [ %897, %1202 ], [ %897, %892 ], [ %1667, %1735 ], [ %1667, %1733 ], [ %1667, %1701 ], [ %1667, %1686 ], [ %897, %906 ]
  %1753 = phi float [ %1668, %1664 ], [ %898, %1202 ], [ %898, %892 ], [ %1668, %1735 ], [ %1668, %1733 ], [ %1668, %1701 ], [ %1668, %1686 ], [ %898, %906 ]
  %1754 = phi float [ %1669, %1664 ], [ %899, %1202 ], [ %899, %892 ], [ %1669, %1735 ], [ %1669, %1733 ], [ %1669, %1701 ], [ %1669, %1686 ], [ %899, %906 ]
  %1755 = phi float [ %1670, %1664 ], [ %900, %1202 ], [ %900, %892 ], [ %1670, %1735 ], [ %1670, %1733 ], [ %1670, %1701 ], [ %1670, %1686 ], [ %900, %906 ]
  %1756 = phi float [ %1671, %1664 ], [ %901, %1202 ], [ %901, %892 ], [ %1671, %1735 ], [ %1671, %1733 ], [ %1671, %1701 ], [ %1671, %1686 ], [ %901, %906 ]
  %1757 = phi float [ %903, %1664 ], [ %903, %1202 ], [ %903, %892 ], [ %1746, %1735 ], [ %903, %1733 ], [ %1732, %1701 ], [ %1698, %1686 ], [ %903, %906 ]
  %1758 = phi float [ %904, %1664 ], [ %904, %1202 ], [ %904, %892 ], [ %1743, %1735 ], [ %904, %1733 ], [ %1709, %1701 ], [ %1695, %1686 ], [ %904, %906 ]
  %1759 = phi float [ %1672, %1664 ], [ %905, %1202 ], [ %905, %892 ], [ %1672, %1735 ], [ %1672, %1733 ], [ %1672, %1701 ], [ %1672, %1686 ], [ %905, %906 ]
  br i1 %372, label %2601, label %1760

; <label>:1760                                    ; preds = %1747
  %1761 = icmp ult i32 %425, 3
  %1762 = add i32 %43, 56
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = add i32 %43, 60
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = or i32 %1767, %1764
  %1769 = icmp eq i32 %1768, 0
  br i1 %1769, label %2601, label %1770

; <label>:1770                                    ; preds = %1760
  %1771 = and i32 %1764, 262144
  %1772 = icmp ne i32 %1771, 0
  %1773 = select i1 %1772, float %46, float 1.000000e+00
  %1774 = select i1 %1772, float %47, float 0.000000e+00
  %1775 = select i1 %1772, float %48, float 0.000000e+00
  %1776 = select i1 %1772, float %49, float 1.000000e+00
  %1777 = select i1 %1772, float %50, float %66
  %1778 = select i1 %1772, float %51, float %67
  %1779 = add i32 %43, 316
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = lshr i32 %1781, 16
  %1783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1782)  ; LegacyF16ToF32(value)
  %1784 = fmul fast float %1783, 0x3F50624DE0000000
  %1785 = add i32 %43, 120
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 16
  %1789 = and i32 %1788, 255
  %1790 = lshr i32 %1787, 24
  %1791 = add i32 %43, 324
  %1792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1791, i32 undef)  ; BufferLoad(srv,index,wot)
  %1793 = extractvalue %dx.types.ResRet.i32 %1792, 0
  %1794 = and i32 %1793, 65535
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = lshr i32 %1793, 16
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = add i32 %43, 64
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = lshr i32 %1800, 22
  %1802 = shl nuw nsw i32 %1801, 5
  %1803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1802)  ; LegacyF16ToF32(value)
  %1804 = shl i32 %1800, 4
  %1805 = and i32 %1804, 32752
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = lshr i32 %1800, 7
  %1808 = and i32 %1807, 32752
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1811 = extractvalue %dx.types.CBufRet.f32 %1810, 3
  %1812 = fmul fast float %1811, 1.000000e+03
  %1813 = fmul fast float %322, %1812
  %1814 = call float @dx.op.unary.f32(i32 22, float %1813)  ; Frc(value)
  %1815 = fadd fast float %1814, %312
  %1816 = fmul fast float %323, %1812
  %1817 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1818 = fadd fast float %1817, %314
  %1819 = fmul fast float %1784, %1812
  %1820 = call float @dx.op.unary.f32(i32 22, float %1819)  ; Frc(value)
  %1821 = fmul fast float %1820, 0x401921FB60000000
  %1822 = fadd fast float %1821, %1803
  %1823 = call float @dx.op.unary.f32(i32 13, float %1822)  ; Sin(value)
  %1824 = call float @dx.op.unary.f32(i32 12, float %1822)  ; Cos(value)
  %1825 = fsub fast float -0.000000e+00, %1823
  %1826 = fadd fast float %1777, -5.000000e-01
  %1827 = fadd fast float %1778, -5.000000e-01
  %1828 = fmul fast float %1795, %1826
  %1829 = fmul fast float %1797, %1827
  %1830 = fadd fast float %1828, 5.000000e-01
  %1831 = fadd fast float %1829, 5.000000e-01
  %1832 = fmul fast float %1806, %1830
  %1833 = fmul fast float %1809, %1831
  %1834 = fmul fast float %1824, %1832
  %1835 = call float @dx.op.tertiary.f32(i32 46, float %1825, float %1833, float %1834)  ; FMad(a,b,c)
  %1836 = fmul fast float %1823, %1832
  %1837 = call float @dx.op.tertiary.f32(i32 46, float %1824, float %1833, float %1836)  ; FMad(a,b,c)
  %1838 = fadd fast float %1815, %1835
  %1839 = fadd fast float %1818, %1837
  %1840 = icmp ugt i32 %1789, 1
  %1841 = icmp ugt i32 %1787, 33554431
  %1842 = or i1 %1841, %1840
  br i1 %1842, label %1843, label %1868

; <label>:1843                                    ; preds = %1770
  %1844 = add i32 %43, 260
  %1845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1844, i32 undef)  ; BufferLoad(srv,index,wot)
  %1846 = extractvalue %dx.types.ResRet.i32 %1845, 0
  %1847 = lshr i32 %1846, 16
  %1848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1847)  ; LegacyF16ToF32(value)
  %1849 = fmul fast float %1811, %1848
  %1850 = call float @dx.op.unary.f32(i32 22, float %1849)  ; Frc(value)
  %1851 = mul nuw nsw i32 %1789, %1790
  %1852 = uitofp i32 %1851 to float
  %1853 = fmul fast float %1850, %1852
  %1854 = call float @dx.op.unary.f32(i32 27, float %1853)  ; Round_ni(value)
  %1855 = fptoui float %1854 to i32
  %1856 = urem i32 %1855, %1789
  %1857 = udiv i32 %1855, %1790
  %1858 = call float @dx.op.unary.f32(i32 22, float %1838)  ; Frc(value)
  %1859 = call float @dx.op.unary.f32(i32 22, float %1839)  ; Frc(value)
  %1860 = uitofp i32 %1856 to float
  %1861 = uitofp i32 %1857 to float
  %1862 = fadd fast float %1858, %1860
  %1863 = fadd fast float %1859, %1861
  %1864 = uitofp i32 %1789 to float
  %1865 = uitofp i32 %1790 to float
  %1866 = fdiv fast float %1862, %1864
  %1867 = fdiv fast float %1863, %1865
  br label %1868

; <label>:1868                                    ; preds = %1843, %1770
  %1869 = phi float [ %1866, %1843 ], [ %1838, %1770 ]
  %1870 = phi float [ %1867, %1843 ], [ %1839, %1770 ]
  %1871 = and i32 %1764, 16777216
  %1872 = icmp eq i32 %1871, 0
  br i1 %1872, label %1982, label %1873

; <label>:1873                                    ; preds = %1868
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.CBufRet.f32 %1874, 2
  %1878 = fadd fast float %1875, %141
  %1879 = fadd fast float %1876, %142
  %1880 = fadd fast float %1877, %143
  %1881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1882 = extractvalue %dx.types.CBufRet.f32 %1881, 0
  %1883 = call float @dx.op.unary.f32(i32 7, float %1882)  ; Saturate(value)
  %1884 = icmp eq i32 %44, 65535
  br i1 %1884, label %1979, label %1885

; <label>:1885                                    ; preds = %1873
  %1886 = lshr i32 %44, 1
  %1887 = shl i32 %1886, 2
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = and i32 %44, 1
  %1891 = icmp ne i32 %1890, 0
  %1892 = lshr i32 %1889, 16
  %1893 = and i32 %1889, 65535
  %1894 = select i1 %1891, i32 %1892, i32 %1893
  %1895 = icmp eq i32 %1894, 65535
  br i1 %1895, label %1975, label %1896

; <label>:1896                                    ; preds = %1885
  %1897 = mul nuw nsw i32 %1894, 40
  %1898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = extractvalue %dx.types.ResRet.f32 %1898, 1
  %1901 = extractvalue %dx.types.ResRet.f32 %1898, 2
  %1902 = add nuw nsw i32 %1897, 12
  %1903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  %1905 = extractvalue %dx.types.ResRet.f32 %1903, 1
  %1906 = extractvalue %dx.types.ResRet.f32 %1903, 2
  %1907 = add nuw nsw i32 %1897, 24
  %1908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = add nuw nsw i32 %1897, 36
  %1913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.f32 %1913, 0
  %1915 = fsub fast float %1878, %1899
  %1916 = fsub fast float %1879, %1900
  %1917 = fsub fast float %1880, %1901
  %1918 = fmul fast float %1914, %1915
  %1919 = fmul fast float %1914, %1916
  %1920 = fmul fast float %1914, %1917
  %1921 = call float @dx.op.unary.f32(i32 27, float %1918)  ; Round_ni(value)
  %1922 = call float @dx.op.unary.f32(i32 27, float %1919)  ; Round_ni(value)
  %1923 = call float @dx.op.unary.f32(i32 27, float %1920)  ; Round_ni(value)
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = fmul fast float %1924, %1904
  %1928 = fmul fast float %1925, %1905
  %1929 = fmul fast float %1926, %1906
  %1930 = shl i32 %44, 2
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = add i32 %1932, 0
  %1934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1935 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1936 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1937 = call float @dx.op.unary.f32(i32 22, float %1929)  ; Frc(value)
  %1938 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1934, %dx.types.Handle %40, float %1935, float %1936, float %1937, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1939 = extractvalue %dx.types.ResRet.f32 %1938, 0
  %1940 = extractvalue %dx.types.ResRet.f32 %1938, 1
  %1941 = extractvalue %dx.types.ResRet.f32 %1938, 2
  %1942 = fmul fast float %1939, 1.023000e+03
  %1943 = fmul fast float %1940, 1.023000e+03
  %1944 = fmul fast float %1941, 1.023000e+03
  %1945 = fadd fast float %1942, 5.000000e-01
  %1946 = fadd fast float %1943, 5.000000e-01
  %1947 = fadd fast float %1944, 5.000000e-01
  %1948 = call float @dx.op.unary.f32(i32 27, float %1945)  ; Round_ni(value)
  %1949 = call float @dx.op.unary.f32(i32 27, float %1946)  ; Round_ni(value)
  %1950 = call float @dx.op.unary.f32(i32 27, float %1947)  ; Round_ni(value)
  %1951 = fsub fast float %1918, %1921
  %1952 = fsub fast float %1919, %1922
  %1953 = fsub fast float %1920, %1923
  %1954 = fmul fast float %1951, 7.500000e-01
  %1955 = fmul fast float %1952, 7.500000e-01
  %1956 = fmul fast float %1953, 7.500000e-01
  %1957 = fadd fast float %1921, 1.250000e-01
  %1958 = fadd fast float %1957, %1954
  %1959 = fadd fast float %1958, %1948
  %1960 = fadd fast float %1922, 1.250000e-01
  %1961 = fadd fast float %1960, %1955
  %1962 = fadd fast float %1961, %1949
  %1963 = fadd fast float %1923, 1.250000e-01
  %1964 = fadd fast float %1963, %1956
  %1965 = fadd fast float %1964, %1950
  %1966 = fmul fast float %1959, %1909
  %1967 = fmul fast float %1962, %1910
  %1968 = fmul fast float %1965, %1911
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = add i32 %1970, 0
  %1972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1971, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1972, %dx.types.Handle %38, float %1966, float %1967, float %1968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  br label %1975

; <label>:1975                                    ; preds = %1896, %1885
  %1976 = phi float [ %1974, %1896 ], [ -1.000000e+00, %1885 ]
  %1977 = fadd fast float %1976, %1883
  %1978 = call float @dx.op.unary.f32(i32 7, float %1977)  ; Saturate(value)
  br label %1979

; <label>:1979                                    ; preds = %1975, %1873
  %1980 = phi float [ %1978, %1975 ], [ %1883, %1873 ]
  %1981 = fmul fast float %1980, %421
  br label %1982

; <label>:1982                                    ; preds = %1979, %1868
  %1983 = phi float [ %1981, %1979 ], [ %421, %1868 ]
  %1984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1985 = extractvalue %dx.types.ResRet.i32 %1984, 0
  %1986 = and i32 %1985, 256
  %1987 = icmp eq i32 %1986, 0
  br i1 %1987, label %2034, label %1988

; <label>:1988                                    ; preds = %1982
  %1989 = add i32 %43, 448
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = add i32 %1991, 0
  %1993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1993, %dx.types.Handle %75, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1995 = extractvalue %dx.types.ResRet.f32 %1994, 0
  %1996 = add i32 %43, 132
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1996, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = shl i32 %1998, 4
  %2000 = and i32 %1999, 32752
  %2001 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2000)  ; LegacyF16ToF32(value)
  %2002 = lshr i32 %1998, 7
  %2003 = and i32 %2002, 32752
  %2004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2003)  ; LegacyF16ToF32(value)
  %2005 = fsub fast float 1.000000e+00, %1983
  %2006 = call float @dx.op.binary.f32(i32 35, float %2005, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2007 = bitcast float %1983 to i32
  %2008 = sitofp i32 %2007 to float
  %2009 = fadd fast float %2008, 0xC1CFBF8940000000
  %2010 = fmul fast float %2004, %2009
  %2011 = fadd fast float %2010, 0x41CFBF8940000000
  %2012 = fptosi float %2011 to i32
  %2013 = bitcast i32 %2012 to float
  %2014 = bitcast float %2006 to i32
  %2015 = sitofp i32 %2014 to float
  %2016 = fadd fast float %2015, 0xC1CFBF8940000000
  %2017 = fmul fast float %2016, %2004
  %2018 = fadd fast float %2017, 0x41CFBF8940000000
  %2019 = fptosi float %2018 to i32
  %2020 = bitcast i32 %2019 to float
  %2021 = fmul fast float %2013, %2001
  %2022 = fmul fast float %2020, %2001
  %2023 = fsub fast float %2006, %2021
  %2024 = fadd fast float %2022, %2006
  %2025 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2026 = call float @dx.op.unary.f32(i32 7, float %2024)  ; Saturate(value)
  %2027 = fsub fast float %1995, %2025
  %2028 = fsub fast float %2026, %2025
  %2029 = bitcast float %2028 to i32
  %2030 = sub nsw i32 2129859010, %2029
  %2031 = bitcast i32 %2030 to float
  %2032 = fmul fast float %2031, %2027
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  br label %2034

; <label>:2034                                    ; preds = %1988, %1982
  %2035 = phi float [ %2033, %1988 ], [ %1983, %1982 ]
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = and i32 %2037, 128
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2056, label %2040

; <label>:2040                                    ; preds = %2034
  %2041 = add i32 %43, 432
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %2043, 0
  %2045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2046 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2045, %dx.types.Handle %75, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 524288
  %2051 = icmp ne i32 %2050, 0
  %2052 = fcmp fast ogt float %2047, 0x3FE0101020000000
  %2053 = select i1 %2052, float 1.000000e+00, float 0.000000e+00
  %2054 = select i1 %2051, float %2053, float %2047
  %2055 = fmul fast float %2054, %2035
  br label %2056

; <label>:2056                                    ; preds = %2040, %2034
  %2057 = phi float [ %2055, %2040 ], [ %2035, %2034 ]
  %2058 = fcmp fast ult float %2057, 0x3F70101020000000
  br i1 %2058, label %2601, label %2059

; <label>:2059                                    ; preds = %2056
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = and i32 %2061, 16
  %2063 = icmp eq i32 %2062, 0
  br i1 %2063, label %2262, label %2064

; <label>:2064                                    ; preds = %2059
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = add i32 %43, 384
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = add i32 %2069, 0
  %2071 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2070, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2072 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2071, %dx.types.Handle %74, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = extractvalue %dx.types.ResRet.f32 %2072, 3
  %2077 = and i32 %2066, 255
  %2078 = uitofp i32 %2077 to float
  %2079 = lshr i32 %2066, 8
  %2080 = and i32 %2079, 255
  %2081 = uitofp i32 %2080 to float
  %2082 = fmul fast float %2076, %2078
  %2083 = fadd fast float %2082, %2081
  %2084 = fmul fast float %2083, 0x3F70101000000000
  %2085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2086 = extractvalue %dx.types.ResRet.i32 %2085, 0
  %2087 = and i32 %2086, 512
  %2088 = icmp eq i32 %2087, 0
  br i1 %2088, label %2097, label %2089

; <label>:2089                                    ; preds = %2064
  %2090 = add i32 %43, 464
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2090, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = add i32 %2092, 0
  %2094 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2093, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2095 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2094, %dx.types.Handle %75, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2096 = extractvalue %dx.types.ResRet.f32 %2095, 0
  br label %2097

; <label>:2097                                    ; preds = %2089, %2064
  %2098 = phi float [ %2096, %2089 ], [ 1.000000e+00, %2064 ]
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = and i32 %2100, 33554432
  %2102 = icmp eq i32 %2101, 0
  br i1 %2102, label %2209, label %2103

; <label>:2103                                    ; preds = %2097
  %2104 = add i32 %43, 256
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = and i32 %2106, 65535
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = lshr i32 %2106, 16
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = add i32 %43, 260
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = and i32 %2113, 65535
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = lshr i32 %2117, 24
  %2119 = uitofp i32 %2118 to float
  %2120 = fmul fast float %2119, 0x3F70101020000000
  %2121 = and i32 %2117, 255
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F70101020000000
  %2124 = lshr i32 %2117, 8
  %2125 = and i32 %2124, 255
  %2126 = uitofp i32 %2125 to float
  %2127 = fmul fast float %2126, 0x3F70101020000000
  %2128 = lshr i32 %2117, 16
  %2129 = and i32 %2128, 255
  %2130 = uitofp i32 %2129 to float
  %2131 = fmul fast float %2130, 0x3F70101020000000
  %2132 = add i32 %43, 252
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2132, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = lshr i32 %2134, 24
  %2136 = uitofp i32 %2135 to float
  %2137 = fmul fast float %2136, 0x3F70101020000000
  %2138 = and i32 %2134, 255
  %2139 = uitofp i32 %2138 to float
  %2140 = fmul fast float %2139, 0x3F70101020000000
  %2141 = lshr i32 %2134, 8
  %2142 = and i32 %2141, 255
  %2143 = uitofp i32 %2142 to float
  %2144 = fmul fast float %2143, 0x3F70101020000000
  %2145 = lshr i32 %2134, 16
  %2146 = and i32 %2145, 255
  %2147 = uitofp i32 %2146 to float
  %2148 = fmul fast float %2147, 0x3F70101020000000
  %2149 = bitcast float %2073 to i32
  %2150 = ashr i32 %2149, 1
  %2151 = sub nsw i32 1597463174, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2073, 5.000000e-01
  %2154 = fmul fast float %2152, %2152
  %2155 = fmul fast float %2154, %2153
  %2156 = fsub fast float 1.500000e+00, %2155
  %2157 = fmul fast float %2152, %2073
  %2158 = fmul fast float %2157, %2156
  %2159 = bitcast float %2074 to i32
  %2160 = ashr i32 %2159, 1
  %2161 = sub nsw i32 1597463174, %2160
  %2162 = bitcast i32 %2161 to float
  %2163 = fmul fast float %2074, 5.000000e-01
  %2164 = fmul fast float %2162, %2162
  %2165 = fmul fast float %2164, %2163
  %2166 = fsub fast float 1.500000e+00, %2165
  %2167 = fmul fast float %2162, %2074
  %2168 = fmul fast float %2167, %2166
  %2169 = bitcast float %2075 to i32
  %2170 = ashr i32 %2169, 1
  %2171 = sub nsw i32 1597463174, %2170
  %2172 = bitcast i32 %2171 to float
  %2173 = fmul fast float %2075, 5.000000e-01
  %2174 = fmul fast float %2172, %2172
  %2175 = fmul fast float %2174, %2173
  %2176 = fsub fast float 1.500000e+00, %2175
  %2177 = fmul fast float %2172, %2075
  %2178 = fmul fast float %2177, %2176
  %2179 = fsub fast float %2158, %2140
  %2180 = fsub fast float %2168, %2144
  %2181 = fsub fast float %2178, %2148
  %2182 = fmul fast float %2179, %2108
  %2183 = fmul fast float %2180, %2110
  %2184 = fmul fast float %2181, %2115
  %2185 = fadd fast float %2182, %2123
  %2186 = fadd fast float %2183, %2127
  %2187 = fadd fast float %2184, %2131
  %2188 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2189 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2190 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2191 = fmul fast float %2188, %2188
  %2192 = fmul fast float %2189, %2189
  %2193 = fmul fast float %2190, %2190
  %2194 = fsub fast float %2191, %2073
  %2195 = fsub fast float %2192, %2074
  %2196 = fsub fast float %2193, %2075
  %2197 = fmul fast float %2194, %2098
  %2198 = fmul fast float %2195, %2098
  %2199 = fmul fast float %2196, %2098
  %2200 = fadd fast float %2197, %2073
  %2201 = fadd fast float %2198, %2074
  %2202 = fadd fast float %2199, %2075
  %2203 = fadd fast float %2120, %2084
  %2204 = fsub fast float %2203, %2137
  %2205 = call float @dx.op.unary.f32(i32 7, float %2204)  ; Saturate(value)
  %2206 = fsub fast float %2205, %2084
  %2207 = fmul fast float %2206, %2098
  %2208 = fadd fast float %2207, %2084
  br label %2262

; <label>:2209                                    ; preds = %2097
  %2210 = and i32 %2100, 134217728
  %2211 = icmp eq i32 %2210, 0
  br i1 %2211, label %2246, label %2212

; <label>:2212                                    ; preds = %2209
  %2213 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2214 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2215 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2216 = fadd fast float %2213, -5.000000e-01
  %2217 = fadd fast float %2214, -5.000000e-01
  %2218 = fadd fast float %2215, -5.000000e-01
  %2219 = fmul fast float %2216, %2098
  %2220 = fmul fast float %2217, %2098
  %2221 = fmul fast float %2218, %2098
  %2222 = fadd fast float %2219, 5.000000e-01
  %2223 = fadd fast float %2220, 5.000000e-01
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = call float @dx.op.unary.f32(i32 24, float %2073)  ; Sqrt(value)
  %2226 = call float @dx.op.unary.f32(i32 24, float %2074)  ; Sqrt(value)
  %2227 = call float @dx.op.unary.f32(i32 24, float %2075)  ; Sqrt(value)
  %2228 = fmul fast float %2222, 2.000000e+00
  %2229 = fsub fast float 1.000000e+00, %2228
  %2230 = fmul fast float %2229, %2225
  %2231 = fadd fast float %2230, %2228
  %2232 = fmul fast float %2231, %2225
  %2233 = fmul fast float %2223, 2.000000e+00
  %2234 = fsub fast float 1.000000e+00, %2233
  %2235 = fmul fast float %2234, %2226
  %2236 = fadd fast float %2235, %2233
  %2237 = fmul fast float %2236, %2226
  %2238 = fmul fast float %2224, 2.000000e+00
  %2239 = fsub fast float 1.000000e+00, %2238
  %2240 = fmul fast float %2239, %2227
  %2241 = fadd fast float %2240, %2238
  %2242 = fmul fast float %2241, %2227
  %2243 = fmul fast float %2232, %2232
  %2244 = fmul fast float %2237, %2237
  %2245 = fmul fast float %2242, %2242
  br label %2262

; <label>:2246                                    ; preds = %2209
  %2247 = fmul fast float %299, %299
  %2248 = fmul fast float %303, %303
  %2249 = fmul fast float %307, %307
  %2250 = fadd fast float %2247, -1.000000e+00
  %2251 = fadd fast float %2248, -1.000000e+00
  %2252 = fadd fast float %2249, -1.000000e+00
  %2253 = fmul fast float %2098, %2250
  %2254 = fmul fast float %2098, %2251
  %2255 = fmul fast float %2098, %2252
  %2256 = fadd fast float %2253, 1.000000e+00
  %2257 = fadd fast float %2254, 1.000000e+00
  %2258 = fadd fast float %2255, 1.000000e+00
  %2259 = fmul fast float %2256, %2073
  %2260 = fmul fast float %2257, %2074
  %2261 = fmul fast float %2258, %2075
  br label %2262

; <label>:2262                                    ; preds = %2246, %2212, %2103, %2059
  %2263 = phi float [ %2208, %2103 ], [ %2084, %2212 ], [ %2084, %2246 ], [ 0x3FA23C0BE0000000, %2059 ]
  %2264 = phi float [ %2200, %2103 ], [ %2243, %2212 ], [ %2259, %2246 ], [ 1.000000e+00, %2059 ]
  %2265 = phi float [ %2201, %2103 ], [ %2244, %2212 ], [ %2260, %2246 ], [ 1.000000e+00, %2059 ]
  %2266 = phi float [ %2202, %2103 ], [ %2245, %2212 ], [ %2261, %2246 ], [ 1.000000e+00, %2059 ]
  %2267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.i32 %2267, 1
  %2269 = and i32 %2268, 1
  %2270 = icmp ne i32 %2269, 0
  %2271 = add i32 %43, 356
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2271, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 32
  %2275 = icmp ne i32 %2274, 0
  %2276 = and i1 %2270, %2275
  %2277 = select i1 %2276, float 1.000000e+00, float %2264
  %2278 = select i1 %2276, float 0x3FD3333340000000, float %2265
  %2279 = select i1 %2276, float 0x3FD3333340000000, float %2266
  %2280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2281 = extractvalue %dx.types.ResRet.i32 %2280, 0
  %2282 = and i32 %2281, 32
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2356, label %2284

; <label>:2284                                    ; preds = %2262
  %2285 = add i32 %43, 124
  %2286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2287 = extractvalue %dx.types.ResRet.i32 %2286, 0
  %2288 = add i32 %43, 400
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %2290, 0
  %2292 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2291, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2293 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2292, %dx.types.Handle %74, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2294 = extractvalue %dx.types.ResRet.f32 %2293, 0
  %2295 = extractvalue %dx.types.ResRet.f32 %2293, 1
  %2296 = extractvalue %dx.types.ResRet.f32 %2293, 2
  %2297 = extractvalue %dx.types.ResRet.f32 %2293, 3
  %2298 = and i32 %2287, 255
  %2299 = uitofp i32 %2298 to float
  %2300 = lshr i32 %2287, 8
  %2301 = and i32 %2300, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = lshr i32 %2287, 16
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = fmul fast float %2305, 0x3F70101000000000
  %2307 = fmul fast float %2294, %2299
  %2308 = fadd fast float %2307, %2302
  %2309 = fmul fast float %2308, 0x3F70101000000000
  %2310 = fadd fast float %2295, -5.000000e-01
  %2311 = fadd fast float %2297, -5.000000e-01
  %2312 = fmul fast float %2310, %2306
  %2313 = fmul fast float %2311, %2306
  %2314 = fadd fast float %2312, 5.000000e-01
  %2315 = fadd fast float %2313, 5.000000e-01
  %2316 = fmul fast float %2314, 2.000000e+00
  %2317 = fadd fast float %2316, -1.000000e+00
  %2318 = fmul fast float %2315, 2.000000e+00
  %2319 = fadd fast float %2318, -1.000000e+00
  %2320 = fadd fast float %2317, %2319
  %2321 = fmul fast float %2320, 5.000000e-01
  %2322 = fsub fast float %2317, %2319
  %2323 = fmul fast float %2322, 5.000000e-01
  %2324 = call float @dx.op.unary.f32(i32 6, float %2321)  ; FAbs(value)
  %2325 = fsub fast float 1.000000e+00, %2324
  %2326 = call float @dx.op.unary.f32(i32 6, float %2323)  ; FAbs(value)
  %2327 = fsub fast float %2325, %2326
  %2328 = call float @dx.op.dot3.f32(i32 55, float %2321, float %2323, float %2327, float %2321, float %2323, float %2327)  ; Dot3(ax,ay,az,bx,by,bz)
  %2329 = call float @dx.op.unary.f32(i32 25, float %2328)  ; Rsqrt(value)
  %2330 = fmul fast float %2321, %2329
  %2331 = fmul fast float %2323, %2329
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = and i32 %2333, 67108864
  %2335 = icmp eq i32 %2334, 0
  br i1 %2335, label %2352, label %2336

; <label>:2336                                    ; preds = %2284
  %2337 = add i32 %43, 312
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = and i32 %2339, 65535
  %2341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2340)  ; LegacyF16ToF32(value)
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 65535
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = lshr i32 %2339, 16
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = fsub fast float %2309, %2347
  %2349 = fmul fast float %2348, %2341
  %2350 = fadd fast float %2349, %2345
  %2351 = call float @dx.op.unary.f32(i32 7, float %2350)  ; Saturate(value)
  br label %2352

; <label>:2352                                    ; preds = %2336, %2284
  %2353 = phi float [ %2351, %2336 ], [ %2309, %2284 ]
  %2354 = call float @dx.op.dot2.f32(i32 54, float %2330, float %2331, float %1773, float %1774)  ; Dot2(ax,ay,bx,by)
  %2355 = call float @dx.op.dot2.f32(i32 54, float %2330, float %2331, float %1775, float %1776)  ; Dot2(ax,ay,bx,by)
  br label %2356

; <label>:2356                                    ; preds = %2352, %2262
  %2357 = phi float [ %2353, %2352 ], [ 0x3FD6666660000000, %2262 ]
  %2358 = phi float [ %2354, %2352 ], [ 0.000000e+00, %2262 ]
  %2359 = phi float [ %2355, %2352 ], [ 0.000000e+00, %2262 ]
  %2360 = phi float [ %2296, %2352 ], [ 1.000000e+00, %2262 ]
  %2361 = add i32 %43, 192
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2361, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = lshr i32 %2363, 22
  %2365 = shl nuw nsw i32 %2364, 5
  %2366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2365)  ; LegacyF16ToF32(value)
  %2367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2368 = extractvalue %dx.types.ResRet.i32 %2367, 0
  %2369 = and i32 %2368, 64
  %2370 = icmp eq i32 %2369, 0
  br i1 %2370, label %2404, label %2371

; <label>:2371                                    ; preds = %2356
  %2372 = add i32 %43, 416
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2372, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = add i32 %2374, 0
  %2376 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2375, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.i32 %2377, 0
  %2379 = and i32 %2378, 131072
  %2380 = icmp eq i32 %2379, 0
  %2381 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2376, %dx.types.Handle %74, float %1869, float %1870, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2382 = extractvalue %dx.types.ResRet.f32 %2381, 0
  %2383 = extractvalue %dx.types.ResRet.f32 %2381, 1
  %2384 = extractvalue %dx.types.ResRet.f32 %2381, 2
  %2385 = fmul fast float %2382, %287
  %2386 = fmul fast float %2383, %290
  %2387 = fmul fast float %2384, %293
  br i1 %2380, label %2394, label %2388

; <label>:2388                                    ; preds = %2371
  %2389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2390 = extractvalue %dx.types.CBufRet.f32 %2389, 0
  %2391 = fmul fast float %2390, %2385
  %2392 = fmul fast float %2390, %2386
  %2393 = fmul fast float %2390, %2387
  br label %2394

; <label>:2394                                    ; preds = %2388, %2371
  %2395 = phi float [ %2391, %2388 ], [ %2385, %2371 ]
  %2396 = phi float [ %2392, %2388 ], [ %2386, %2371 ]
  %2397 = phi float [ %2393, %2388 ], [ %2387, %2371 ]
  %2398 = fmul fast float %2395, %2366
  %2399 = select i1 %183, float %2398, float %2395
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2399, float %2396, float %2397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = select i1 %183, float 0.000000e+00, float %2395
  %2402 = select i1 %183, float %2400, float %2396
  %2403 = select i1 %183, float 0.000000e+00, float %2397
  br label %2404

; <label>:2404                                    ; preds = %2394, %2356
  %2405 = phi float [ %2401, %2394 ], [ 0.000000e+00, %2356 ]
  %2406 = phi float [ %2402, %2394 ], [ 0.000000e+00, %2356 ]
  %2407 = phi float [ %2403, %2394 ], [ 0.000000e+00, %2356 ]
  %2408 = add i32 %43, 128
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %2410, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = lshr i32 %2410, 8
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = call float @dx.op.dot3.f32(i32 55, float %2277, float %2278, float %2279, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2417 = fmul fast float %2415, %2416
  %2418 = fadd fast float %2417, %2412
  %2419 = fmul fast float %2418, 0x3F70101020000000
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  br i1 %1761, label %2421, label %2429

; <label>:2421                                    ; preds = %2404
  %2422 = fsub fast float 1.000000e+00, %2057
  %2423 = fmul fast float %2422, %1750
  %2424 = fmul fast float %2422, %1751
  %2425 = fmul fast float %2422, %1752
  %2426 = fmul fast float %2422, %1753
  %2427 = fmul fast float %2422, %1754
  %2428 = fmul fast float %2422, %1755
  br label %2429

; <label>:2429                                    ; preds = %2421, %2404
  %2430 = phi float [ %2423, %2421 ], [ %1750, %2404 ]
  %2431 = phi float [ %2424, %2421 ], [ %1751, %2404 ]
  %2432 = phi float [ %2425, %2421 ], [ %1752, %2404 ]
  %2433 = phi float [ %2426, %2421 ], [ %1753, %2404 ]
  %2434 = phi float [ %2427, %2421 ], [ %1754, %2404 ]
  %2435 = phi float [ %2428, %2421 ], [ %1755, %2404 ]
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = and i32 %2437, 3
  %2439 = icmp eq i32 %2438, 3
  br i1 %2439, label %2518, label %2440

; <label>:2440                                    ; preds = %2429
  %2441 = and i32 %2437, 16
  %2442 = icmp ne i32 %2441, 0
  %2443 = select i1 %2442, float %2057, float 0.000000e+00
  %2444 = icmp eq i32 %2438, 0
  br i1 %2444, label %2445, label %2473

; <label>:2445                                    ; preds = %2440
  %2446 = and i32 %2437, 64
  %2447 = icmp ne i32 %2446, 0
  %2448 = select i1 %2447, float %2057, float 0.000000e+00
  %2449 = fsub fast float %2277, %2430
  %2450 = fsub fast float %2278, %2431
  %2451 = fsub fast float %2279, %2432
  %2452 = fmul fast float %2443, %2449
  %2453 = fmul fast float %2443, %2450
  %2454 = fmul fast float %2443, %2451
  %2455 = fadd fast float %2452, %2430
  %2456 = fadd fast float %2453, %2431
  %2457 = fadd fast float %2454, %2432
  %2458 = fsub fast float %2263, %1756
  %2459 = fmul fast float %2443, %2458
  %2460 = fadd fast float %2459, %1756
  %2461 = fsub fast float %2405, %2433
  %2462 = fsub fast float %2406, %2434
  %2463 = fsub fast float %2407, %2435
  %2464 = fmul fast float %2448, %2461
  %2465 = fmul fast float %2448, %2462
  %2466 = fmul fast float %2448, %2463
  %2467 = fadd fast float %2464, %2433
  %2468 = fadd fast float %2465, %2434
  %2469 = fadd fast float %2466, %2435
  %2470 = fsub fast float %2420, %1759
  %2471 = fmul fast float %2443, %2470
  %2472 = fadd fast float %2471, %1759
  br label %2518

; <label>:2473                                    ; preds = %2440
  %2474 = icmp eq i32 %2438, 1
  br i1 %2474, label %2475, label %2488

; <label>:2475                                    ; preds = %2473
  %2476 = fadd fast float %2277, -1.000000e+00
  %2477 = fadd fast float %2278, -1.000000e+00
  %2478 = fadd fast float %2279, -1.000000e+00
  %2479 = fmul fast float %2443, %2476
  %2480 = fmul fast float %2443, %2477
  %2481 = fmul fast float %2443, %2478
  %2482 = fadd fast float %2479, 1.000000e+00
  %2483 = fadd fast float %2480, 1.000000e+00
  %2484 = fadd fast float %2481, 1.000000e+00
  %2485 = fmul fast float %2482, %2430
  %2486 = fmul fast float %2483, %2431
  %2487 = fmul fast float %2484, %2432
  br label %2518

; <label>:2488                                    ; preds = %2473
  %2489 = icmp eq i32 %2438, 2
  br i1 %2489, label %2490, label %2518

; <label>:2490                                    ; preds = %2488
  %2491 = call float @dx.op.unary.f32(i32 24, float %2277)  ; Sqrt(value)
  %2492 = call float @dx.op.unary.f32(i32 24, float %2278)  ; Sqrt(value)
  %2493 = call float @dx.op.unary.f32(i32 24, float %2279)  ; Sqrt(value)
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fadd fast float %2492, -5.000000e-01
  %2496 = fadd fast float %2493, -5.000000e-01
  %2497 = fmul fast float %2494, %2443
  %2498 = fmul fast float %2495, %2443
  %2499 = fmul fast float %2496, %2443
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = fmul fast float %2500, 2.000000e+00
  %2504 = fsub fast float 1.000000e+00, %2503
  %2505 = fmul fast float %2504, %2430
  %2506 = fadd fast float %2505, %2503
  %2507 = fmul fast float %2506, %2430
  %2508 = fmul fast float %2501, 2.000000e+00
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %2509, %2431
  %2511 = fadd fast float %2510, %2508
  %2512 = fmul fast float %2511, %2431
  %2513 = fmul fast float %2502, 2.000000e+00
  %2514 = fsub fast float 1.000000e+00, %2513
  %2515 = fmul fast float %2514, %2432
  %2516 = fadd fast float %2515, %2513
  %2517 = fmul fast float %2516, %2432
  br label %2518

; <label>:2518                                    ; preds = %2490, %2488, %2475, %2445, %2429
  %2519 = phi float [ %2430, %2429 ], [ %2507, %2490 ], [ %2430, %2488 ], [ %2485, %2475 ], [ %2455, %2445 ]
  %2520 = phi float [ %2431, %2429 ], [ %2512, %2490 ], [ %2431, %2488 ], [ %2486, %2475 ], [ %2456, %2445 ]
  %2521 = phi float [ %2432, %2429 ], [ %2517, %2490 ], [ %2432, %2488 ], [ %2487, %2475 ], [ %2457, %2445 ]
  %2522 = phi float [ %2433, %2429 ], [ %2433, %2490 ], [ %2433, %2488 ], [ %2433, %2475 ], [ %2467, %2445 ]
  %2523 = phi float [ %2434, %2429 ], [ %2434, %2490 ], [ %2434, %2488 ], [ %2434, %2475 ], [ %2468, %2445 ]
  %2524 = phi float [ %2435, %2429 ], [ %2435, %2490 ], [ %2435, %2488 ], [ %2435, %2475 ], [ %2469, %2445 ]
  %2525 = phi float [ %1756, %2429 ], [ %1756, %2490 ], [ %1756, %2488 ], [ %1756, %2475 ], [ %2460, %2445 ]
  %2526 = phi float [ %1759, %2429 ], [ %1759, %2490 ], [ %1759, %2488 ], [ %1759, %2475 ], [ %2472, %2445 ]
  %2527 = and i32 %2437, 12
  %2528 = icmp eq i32 %2527, 12
  br i1 %2528, label %2601, label %2529

; <label>:2529                                    ; preds = %2518
  %2530 = and i32 %2437, 2097184
  %2531 = icmp eq i32 %2530, 2097184
  %2532 = select i1 %2531, float %2057, float 0.000000e+00
  %2533 = and i32 %2437, 4194336
  %2534 = icmp eq i32 %2533, 4194336
  %2535 = select i1 %2534, float %2057, float 0.000000e+00
  %2536 = and i32 %2437, 8388640
  %2537 = icmp eq i32 %2536, 8388640
  %2538 = select i1 %2537, float %2057, float 0.000000e+00
  %2539 = icmp eq i32 %2527, 0
  br i1 %2539, label %2540, label %2553

; <label>:2540                                    ; preds = %2529
  %2541 = fsub fast float %2358, %1748
  %2542 = fsub fast float %2359, %1749
  %2543 = fmul fast float %2532, %2541
  %2544 = fmul fast float %2532, %2542
  %2545 = fadd fast float %2543, %1748
  %2546 = fadd fast float %2544, %1749
  %2547 = fsub fast float %2360, %1758
  %2548 = fmul fast float %2535, %2547
  %2549 = fadd fast float %2548, %1758
  %2550 = fsub fast float %2357, %1757
  %2551 = fmul fast float %2538, %2550
  %2552 = fadd fast float %2551, %1757
  br label %2601

; <label>:2553                                    ; preds = %2529
  %2554 = icmp eq i32 %2527, 4
  br i1 %2554, label %2555, label %2587

; <label>:2555                                    ; preds = %2553
  %2556 = fmul fast float %2532, %2358
  %2557 = fmul fast float %2532, %2359
  %2558 = fadd fast float %2556, %1748
  %2559 = fadd fast float %2557, %1749
  %2560 = call float @dx.op.binary.f32(i32 36, float %1758, float %2360)  ; FMin(a,b)
  %2561 = fsub fast float %2560, %1758
  %2562 = fmul fast float %2561, %2535
  %2563 = fadd fast float %2562, %1758
  %2564 = fadd fast float %2357, %1757
  %2565 = fmul fast float %2564, 0x3FF337FAE0000000
  %2566 = fmul fast float %1757, %1757
  %2567 = fmul fast float %2357, %2357
  %2568 = fadd fast float %2567, %2566
  %2569 = fmul fast float %2568, 0x3FE5152B00000000
  %2570 = fmul fast float %1757, 0xBFCC1F85E0000000
  %2571 = fmul fast float %2570, %2357
  %2572 = fadd fast float %2571, 0xBFE1363700000000
  %2573 = fadd fast float %2572, %2565
  %2574 = fsub fast float %2573, %2569
  %2575 = fmul fast float %2564, 0x3FBA6F0D00000000
  %2576 = fmul fast float %2568, 0x3FD0432880000000
  %2577 = fmul fast float %1757, 0xBFEF110800000000
  %2578 = fmul fast float %2577, %2357
  %2579 = fadd fast float %2578, 1.000000e+00
  %2580 = fsub fast float %2579, %2575
  %2581 = fadd fast float %2580, %2576
  %2582 = fdiv fast float %2574, %2581
  %2583 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2584 = fsub fast float %2583, %1757
  %2585 = fmul fast float %2584, %2538
  %2586 = fadd fast float %2585, %1757
  br label %2601

; <label>:2587                                    ; preds = %2553
  %2588 = icmp eq i32 %2527, 8
  br i1 %2588, label %2589, label %2601

; <label>:2589                                    ; preds = %2587
  %2590 = fmul fast float %2532, %2358
  %2591 = fmul fast float %2532, %2359
  %2592 = fadd fast float %2590, %1748
  %2593 = fadd fast float %2591, %1749
  %2594 = call float @dx.op.binary.f32(i32 36, float %1758, float %2360)  ; FMin(a,b)
  %2595 = fsub fast float %2594, %1758
  %2596 = fmul fast float %2595, %2535
  %2597 = fadd fast float %2596, %1758
  %2598 = fsub fast float %2357, %1757
  %2599 = fmul fast float %2538, %2598
  %2600 = fadd fast float %2599, %1757
  br label %2601

; <label>:2601                                    ; preds = %2589, %2587, %2555, %2540, %2518, %2056, %1760, %1747
  %2602 = phi float [ %1748, %2518 ], [ %1748, %2056 ], [ %1748, %1747 ], [ %2592, %2589 ], [ %1748, %2587 ], [ %2558, %2555 ], [ %2545, %2540 ], [ %1748, %1760 ]
  %2603 = phi float [ %1749, %2518 ], [ %1749, %2056 ], [ %1749, %1747 ], [ %2593, %2589 ], [ %1749, %2587 ], [ %2559, %2555 ], [ %2546, %2540 ], [ %1749, %1760 ]
  %2604 = phi float [ %2519, %2518 ], [ %1750, %2056 ], [ %1750, %1747 ], [ %2519, %2589 ], [ %2519, %2587 ], [ %2519, %2555 ], [ %2519, %2540 ], [ %1750, %1760 ]
  %2605 = phi float [ %2520, %2518 ], [ %1751, %2056 ], [ %1751, %1747 ], [ %2520, %2589 ], [ %2520, %2587 ], [ %2520, %2555 ], [ %2520, %2540 ], [ %1751, %1760 ]
  %2606 = phi float [ %2521, %2518 ], [ %1752, %2056 ], [ %1752, %1747 ], [ %2521, %2589 ], [ %2521, %2587 ], [ %2521, %2555 ], [ %2521, %2540 ], [ %1752, %1760 ]
  %2607 = phi float [ %2522, %2518 ], [ %1753, %2056 ], [ %1753, %1747 ], [ %2522, %2589 ], [ %2522, %2587 ], [ %2522, %2555 ], [ %2522, %2540 ], [ %1753, %1760 ]
  %2608 = phi float [ %2523, %2518 ], [ %1754, %2056 ], [ %1754, %1747 ], [ %2523, %2589 ], [ %2523, %2587 ], [ %2523, %2555 ], [ %2523, %2540 ], [ %1754, %1760 ]
  %2609 = phi float [ %2524, %2518 ], [ %1755, %2056 ], [ %1755, %1747 ], [ %2524, %2589 ], [ %2524, %2587 ], [ %2524, %2555 ], [ %2524, %2540 ], [ %1755, %1760 ]
  %2610 = phi float [ %2525, %2518 ], [ %1756, %2056 ], [ %1756, %1747 ], [ %2525, %2589 ], [ %2525, %2587 ], [ %2525, %2555 ], [ %2525, %2540 ], [ %1756, %1760 ]
  %2611 = phi float [ %1757, %2518 ], [ %1757, %2056 ], [ %1757, %1747 ], [ %2600, %2589 ], [ %1757, %2587 ], [ %2586, %2555 ], [ %2552, %2540 ], [ %1757, %1760 ]
  %2612 = phi float [ %1758, %2518 ], [ %1758, %2056 ], [ %1758, %1747 ], [ %2597, %2589 ], [ %1758, %2587 ], [ %2563, %2555 ], [ %2549, %2540 ], [ %1758, %1760 ]
  %2613 = phi float [ %2526, %2518 ], [ %1759, %2056 ], [ %1759, %1747 ], [ %2526, %2589 ], [ %2526, %2587 ], [ %2526, %2555 ], [ %2526, %2540 ], [ %1759, %1760 ]
  br i1 %374, label %3455, label %2614

; <label>:2614                                    ; preds = %2601
  %2615 = icmp ult i32 %425, 4
  %2616 = add i32 %43, 72
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = add i32 %43, 76
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = or i32 %2621, %2618
  %2623 = icmp eq i32 %2622, 0
  br i1 %2623, label %3455, label %2624

; <label>:2624                                    ; preds = %2614
  %2625 = and i32 %2618, 262144
  %2626 = icmp ne i32 %2625, 0
  %2627 = select i1 %2626, float %46, float 1.000000e+00
  %2628 = select i1 %2626, float %47, float 0.000000e+00
  %2629 = select i1 %2626, float %48, float 0.000000e+00
  %2630 = select i1 %2626, float %49, float 1.000000e+00
  %2631 = select i1 %2626, float %50, float %66
  %2632 = select i1 %2626, float %51, float %67
  %2633 = add i32 %43, 332
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = lshr i32 %2635, 16
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = fmul fast float %2637, 0x3F50624DE0000000
  %2639 = add i32 %43, 136
  %2640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2641 = extractvalue %dx.types.ResRet.i32 %2640, 0
  %2642 = lshr i32 %2641, 16
  %2643 = and i32 %2642, 255
  %2644 = lshr i32 %2641, 24
  %2645 = add i32 %43, 340
  %2646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2645, i32 undef)  ; BufferLoad(srv,index,wot)
  %2647 = extractvalue %dx.types.ResRet.i32 %2646, 0
  %2648 = and i32 %2647, 65535
  %2649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2648)  ; LegacyF16ToF32(value)
  %2650 = lshr i32 %2647, 16
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = add i32 %43, 80
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2652, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = lshr i32 %2654, 22
  %2656 = shl nuw nsw i32 %2655, 5
  %2657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2656)  ; LegacyF16ToF32(value)
  %2658 = shl i32 %2654, 4
  %2659 = and i32 %2658, 32752
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = lshr i32 %2654, 7
  %2662 = and i32 %2661, 32752
  %2663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2662)  ; LegacyF16ToF32(value)
  %2664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2665 = extractvalue %dx.types.CBufRet.f32 %2664, 3
  %2666 = fmul fast float %2665, 1.000000e+03
  %2667 = fmul fast float %364, %2666
  %2668 = call float @dx.op.unary.f32(i32 22, float %2667)  ; Frc(value)
  %2669 = fadd fast float %2668, %354
  %2670 = fmul fast float %365, %2666
  %2671 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2672 = fadd fast float %2671, %356
  %2673 = fmul fast float %2638, %2666
  %2674 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2675 = fmul fast float %2674, 0x401921FB60000000
  %2676 = fadd fast float %2675, %2657
  %2677 = call float @dx.op.unary.f32(i32 13, float %2676)  ; Sin(value)
  %2678 = call float @dx.op.unary.f32(i32 12, float %2676)  ; Cos(value)
  %2679 = fsub fast float -0.000000e+00, %2677
  %2680 = fadd fast float %2631, -5.000000e-01
  %2681 = fadd fast float %2632, -5.000000e-01
  %2682 = fmul fast float %2649, %2680
  %2683 = fmul fast float %2651, %2681
  %2684 = fadd fast float %2682, 5.000000e-01
  %2685 = fadd fast float %2683, 5.000000e-01
  %2686 = fmul fast float %2660, %2684
  %2687 = fmul fast float %2663, %2685
  %2688 = fmul fast float %2678, %2686
  %2689 = call float @dx.op.tertiary.f32(i32 46, float %2679, float %2687, float %2688)  ; FMad(a,b,c)
  %2690 = fmul fast float %2677, %2686
  %2691 = call float @dx.op.tertiary.f32(i32 46, float %2678, float %2687, float %2690)  ; FMad(a,b,c)
  %2692 = fadd fast float %2669, %2689
  %2693 = fadd fast float %2672, %2691
  %2694 = icmp ugt i32 %2643, 1
  %2695 = icmp ugt i32 %2641, 33554431
  %2696 = or i1 %2695, %2694
  br i1 %2696, label %2697, label %2722

; <label>:2697                                    ; preds = %2624
  %2698 = add i32 %43, 276
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = lshr i32 %2700, 16
  %2702 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2701)  ; LegacyF16ToF32(value)
  %2703 = fmul fast float %2665, %2702
  %2704 = call float @dx.op.unary.f32(i32 22, float %2703)  ; Frc(value)
  %2705 = mul nuw nsw i32 %2643, %2644
  %2706 = uitofp i32 %2705 to float
  %2707 = fmul fast float %2704, %2706
  %2708 = call float @dx.op.unary.f32(i32 27, float %2707)  ; Round_ni(value)
  %2709 = fptoui float %2708 to i32
  %2710 = urem i32 %2709, %2643
  %2711 = udiv i32 %2709, %2644
  %2712 = call float @dx.op.unary.f32(i32 22, float %2692)  ; Frc(value)
  %2713 = call float @dx.op.unary.f32(i32 22, float %2693)  ; Frc(value)
  %2714 = uitofp i32 %2710 to float
  %2715 = uitofp i32 %2711 to float
  %2716 = fadd fast float %2712, %2714
  %2717 = fadd fast float %2713, %2715
  %2718 = uitofp i32 %2643 to float
  %2719 = uitofp i32 %2644 to float
  %2720 = fdiv fast float %2716, %2718
  %2721 = fdiv fast float %2717, %2719
  br label %2722

; <label>:2722                                    ; preds = %2697, %2624
  %2723 = phi float [ %2720, %2697 ], [ %2692, %2624 ]
  %2724 = phi float [ %2721, %2697 ], [ %2693, %2624 ]
  %2725 = and i32 %2618, 16777216
  %2726 = icmp eq i32 %2725, 0
  br i1 %2726, label %2836, label %2727

; <label>:2727                                    ; preds = %2722
  %2728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2729 = extractvalue %dx.types.CBufRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.CBufRet.f32 %2728, 1
  %2731 = extractvalue %dx.types.CBufRet.f32 %2728, 2
  %2732 = fadd fast float %2729, %141
  %2733 = fadd fast float %2730, %142
  %2734 = fadd fast float %2731, %143
  %2735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2736 = extractvalue %dx.types.CBufRet.f32 %2735, 0
  %2737 = call float @dx.op.unary.f32(i32 7, float %2736)  ; Saturate(value)
  %2738 = icmp eq i32 %44, 65535
  br i1 %2738, label %2833, label %2739

; <label>:2739                                    ; preds = %2727
  %2740 = lshr i32 %44, 1
  %2741 = shl i32 %2740, 2
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %44, 1
  %2745 = icmp ne i32 %2744, 0
  %2746 = lshr i32 %2743, 16
  %2747 = and i32 %2743, 65535
  %2748 = select i1 %2745, i32 %2746, i32 %2747
  %2749 = icmp eq i32 %2748, 65535
  br i1 %2749, label %2829, label %2750

; <label>:2750                                    ; preds = %2739
  %2751 = mul nuw nsw i32 %2748, 40
  %2752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = extractvalue %dx.types.ResRet.f32 %2752, 1
  %2755 = extractvalue %dx.types.ResRet.f32 %2752, 2
  %2756 = add nuw nsw i32 %2751, 12
  %2757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2756, i32 undef)  ; BufferLoad(srv,index,wot)
  %2758 = extractvalue %dx.types.ResRet.f32 %2757, 0
  %2759 = extractvalue %dx.types.ResRet.f32 %2757, 1
  %2760 = extractvalue %dx.types.ResRet.f32 %2757, 2
  %2761 = add nuw nsw i32 %2751, 24
  %2762 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.ResRet.f32 %2762, 1
  %2765 = extractvalue %dx.types.ResRet.f32 %2762, 2
  %2766 = add nuw nsw i32 %2751, 36
  %2767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.f32 %2767, 0
  %2769 = fsub fast float %2732, %2753
  %2770 = fsub fast float %2733, %2754
  %2771 = fsub fast float %2734, %2755
  %2772 = fmul fast float %2768, %2769
  %2773 = fmul fast float %2768, %2770
  %2774 = fmul fast float %2768, %2771
  %2775 = call float @dx.op.unary.f32(i32 27, float %2772)  ; Round_ni(value)
  %2776 = call float @dx.op.unary.f32(i32 27, float %2773)  ; Round_ni(value)
  %2777 = call float @dx.op.unary.f32(i32 27, float %2774)  ; Round_ni(value)
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = fmul fast float %2778, %2758
  %2782 = fmul fast float %2779, %2759
  %2783 = fmul fast float %2780, %2760
  %2784 = shl i32 %44, 2
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = add i32 %2786, 0
  %2788 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2787, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2789 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2790 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2791 = call float @dx.op.unary.f32(i32 22, float %2783)  ; Frc(value)
  %2792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2788, %dx.types.Handle %40, float %2789, float %2790, float %2791, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2793 = extractvalue %dx.types.ResRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.ResRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.ResRet.f32 %2792, 2
  %2796 = fmul fast float %2793, 1.023000e+03
  %2797 = fmul fast float %2794, 1.023000e+03
  %2798 = fmul fast float %2795, 1.023000e+03
  %2799 = fadd fast float %2796, 5.000000e-01
  %2800 = fadd fast float %2797, 5.000000e-01
  %2801 = fadd fast float %2798, 5.000000e-01
  %2802 = call float @dx.op.unary.f32(i32 27, float %2799)  ; Round_ni(value)
  %2803 = call float @dx.op.unary.f32(i32 27, float %2800)  ; Round_ni(value)
  %2804 = call float @dx.op.unary.f32(i32 27, float %2801)  ; Round_ni(value)
  %2805 = fsub fast float %2772, %2775
  %2806 = fsub fast float %2773, %2776
  %2807 = fsub fast float %2774, %2777
  %2808 = fmul fast float %2805, 7.500000e-01
  %2809 = fmul fast float %2806, 7.500000e-01
  %2810 = fmul fast float %2807, 7.500000e-01
  %2811 = fadd fast float %2775, 1.250000e-01
  %2812 = fadd fast float %2811, %2808
  %2813 = fadd fast float %2812, %2802
  %2814 = fadd fast float %2776, 1.250000e-01
  %2815 = fadd fast float %2814, %2809
  %2816 = fadd fast float %2815, %2803
  %2817 = fadd fast float %2777, 1.250000e-01
  %2818 = fadd fast float %2817, %2810
  %2819 = fadd fast float %2818, %2804
  %2820 = fmul fast float %2813, %2763
  %2821 = fmul fast float %2816, %2764
  %2822 = fmul fast float %2819, %2765
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = add i32 %2824, 0
  %2826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2825, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2826, %dx.types.Handle %38, float %2820, float %2821, float %2822, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2828 = extractvalue %dx.types.ResRet.f32 %2827, 0
  br label %2829

; <label>:2829                                    ; preds = %2750, %2739
  %2830 = phi float [ %2828, %2750 ], [ -1.000000e+00, %2739 ]
  %2831 = fadd fast float %2830, %2737
  %2832 = call float @dx.op.unary.f32(i32 7, float %2831)  ; Saturate(value)
  br label %2833

; <label>:2833                                    ; preds = %2829, %2727
  %2834 = phi float [ %2832, %2829 ], [ %2737, %2727 ]
  %2835 = fmul fast float %2834, %420
  br label %2836

; <label>:2836                                    ; preds = %2833, %2722
  %2837 = phi float [ %2835, %2833 ], [ %420, %2722 ]
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = and i32 %2839, 256
  %2841 = icmp eq i32 %2840, 0
  br i1 %2841, label %2888, label %2842

; <label>:2842                                    ; preds = %2836
  %2843 = add i32 %43, 452
  %2844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2843, i32 undef)  ; BufferLoad(srv,index,wot)
  %2845 = extractvalue %dx.types.ResRet.i32 %2844, 0
  %2846 = add i32 %2845, 0
  %2847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2848 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2847, %dx.types.Handle %75, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2849 = extractvalue %dx.types.ResRet.f32 %2848, 0
  %2850 = add i32 %43, 148
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = shl i32 %2852, 4
  %2854 = and i32 %2853, 32752
  %2855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2854)  ; LegacyF16ToF32(value)
  %2856 = lshr i32 %2852, 7
  %2857 = and i32 %2856, 32752
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = fsub fast float 1.000000e+00, %2837
  %2860 = call float @dx.op.binary.f32(i32 35, float %2859, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2861 = bitcast float %2837 to i32
  %2862 = sitofp i32 %2861 to float
  %2863 = fadd fast float %2862, 0xC1CFBF8940000000
  %2864 = fmul fast float %2858, %2863
  %2865 = fadd fast float %2864, 0x41CFBF8940000000
  %2866 = fptosi float %2865 to i32
  %2867 = bitcast i32 %2866 to float
  %2868 = bitcast float %2860 to i32
  %2869 = sitofp i32 %2868 to float
  %2870 = fadd fast float %2869, 0xC1CFBF8940000000
  %2871 = fmul fast float %2870, %2858
  %2872 = fadd fast float %2871, 0x41CFBF8940000000
  %2873 = fptosi float %2872 to i32
  %2874 = bitcast i32 %2873 to float
  %2875 = fmul fast float %2867, %2855
  %2876 = fmul fast float %2874, %2855
  %2877 = fsub fast float %2860, %2875
  %2878 = fadd fast float %2876, %2860
  %2879 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  %2880 = call float @dx.op.unary.f32(i32 7, float %2878)  ; Saturate(value)
  %2881 = fsub fast float %2849, %2879
  %2882 = fsub fast float %2880, %2879
  %2883 = bitcast float %2882 to i32
  %2884 = sub nsw i32 2129859010, %2883
  %2885 = bitcast i32 %2884 to float
  %2886 = fmul fast float %2885, %2881
  %2887 = call float @dx.op.unary.f32(i32 7, float %2886)  ; Saturate(value)
  br label %2888

; <label>:2888                                    ; preds = %2842, %2836
  %2889 = phi float [ %2887, %2842 ], [ %2837, %2836 ]
  %2890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2891 = extractvalue %dx.types.ResRet.i32 %2890, 0
  %2892 = and i32 %2891, 128
  %2893 = icmp eq i32 %2892, 0
  br i1 %2893, label %2910, label %2894

; <label>:2894                                    ; preds = %2888
  %2895 = add i32 %43, 436
  %2896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2895, i32 undef)  ; BufferLoad(srv,index,wot)
  %2897 = extractvalue %dx.types.ResRet.i32 %2896, 0
  %2898 = add i32 %2897, 0
  %2899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2899, %dx.types.Handle %75, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2901 = extractvalue %dx.types.ResRet.f32 %2900, 0
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 524288
  %2905 = icmp ne i32 %2904, 0
  %2906 = fcmp fast ogt float %2901, 0x3FE0101020000000
  %2907 = select i1 %2906, float 1.000000e+00, float 0.000000e+00
  %2908 = select i1 %2905, float %2907, float %2901
  %2909 = fmul fast float %2908, %2889
  br label %2910

; <label>:2910                                    ; preds = %2894, %2888
  %2911 = phi float [ %2909, %2894 ], [ %2889, %2888 ]
  %2912 = fcmp fast ult float %2911, 0x3F70101020000000
  br i1 %2912, label %3455, label %2913

; <label>:2913                                    ; preds = %2910
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 16
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %3116, label %2918

; <label>:2918                                    ; preds = %2913
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2639, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = add i32 %43, 388
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = add i32 %2923, 0
  %2925 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2924, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2926 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2925, %dx.types.Handle %74, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2927 = extractvalue %dx.types.ResRet.f32 %2926, 0
  %2928 = extractvalue %dx.types.ResRet.f32 %2926, 1
  %2929 = extractvalue %dx.types.ResRet.f32 %2926, 2
  %2930 = extractvalue %dx.types.ResRet.f32 %2926, 3
  %2931 = and i32 %2920, 255
  %2932 = uitofp i32 %2931 to float
  %2933 = lshr i32 %2920, 8
  %2934 = and i32 %2933, 255
  %2935 = uitofp i32 %2934 to float
  %2936 = fmul fast float %2930, %2932
  %2937 = fadd fast float %2936, %2935
  %2938 = fmul fast float %2937, 0x3F70101000000000
  %2939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2940 = extractvalue %dx.types.ResRet.i32 %2939, 0
  %2941 = and i32 %2940, 512
  %2942 = icmp eq i32 %2941, 0
  br i1 %2942, label %2951, label %2943

; <label>:2943                                    ; preds = %2918
  %2944 = add i32 %43, 468
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = add i32 %2946, 0
  %2948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2947, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2949 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2948, %dx.types.Handle %75, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2950 = extractvalue %dx.types.ResRet.f32 %2949, 0
  br label %2951

; <label>:2951                                    ; preds = %2943, %2918
  %2952 = phi float [ %2950, %2943 ], [ 1.000000e+00, %2918 ]
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %2954, 33554432
  %2956 = icmp eq i32 %2955, 0
  br i1 %2956, label %3063, label %2957

; <label>:2957                                    ; preds = %2951
  %2958 = add i32 %43, 272
  %2959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2958, i32 undef)  ; BufferLoad(srv,index,wot)
  %2960 = extractvalue %dx.types.ResRet.i32 %2959, 0
  %2961 = and i32 %2960, 65535
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = lshr i32 %2960, 16
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = add i32 %43, 276
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 65535
  %2969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2968)  ; LegacyF16ToF32(value)
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = lshr i32 %2971, 24
  %2973 = uitofp i32 %2972 to float
  %2974 = fmul fast float %2973, 0x3F70101020000000
  %2975 = and i32 %2971, 255
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = lshr i32 %2971, 8
  %2979 = and i32 %2978, 255
  %2980 = uitofp i32 %2979 to float
  %2981 = fmul fast float %2980, 0x3F70101020000000
  %2982 = lshr i32 %2971, 16
  %2983 = and i32 %2982, 255
  %2984 = uitofp i32 %2983 to float
  %2985 = fmul fast float %2984, 0x3F70101020000000
  %2986 = add i32 %43, 268
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2986, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = lshr i32 %2988, 24
  %2990 = uitofp i32 %2989 to float
  %2991 = fmul fast float %2990, 0x3F70101020000000
  %2992 = and i32 %2988, 255
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2993, 0x3F70101020000000
  %2995 = lshr i32 %2988, 8
  %2996 = and i32 %2995, 255
  %2997 = uitofp i32 %2996 to float
  %2998 = fmul fast float %2997, 0x3F70101020000000
  %2999 = lshr i32 %2988, 16
  %3000 = and i32 %2999, 255
  %3001 = uitofp i32 %3000 to float
  %3002 = fmul fast float %3001, 0x3F70101020000000
  %3003 = bitcast float %2927 to i32
  %3004 = ashr i32 %3003, 1
  %3005 = sub nsw i32 1597463174, %3004
  %3006 = bitcast i32 %3005 to float
  %3007 = fmul fast float %2927, 5.000000e-01
  %3008 = fmul fast float %3006, %3006
  %3009 = fmul fast float %3008, %3007
  %3010 = fsub fast float 1.500000e+00, %3009
  %3011 = fmul fast float %3006, %2927
  %3012 = fmul fast float %3011, %3010
  %3013 = bitcast float %2928 to i32
  %3014 = ashr i32 %3013, 1
  %3015 = sub nsw i32 1597463174, %3014
  %3016 = bitcast i32 %3015 to float
  %3017 = fmul fast float %2928, 5.000000e-01
  %3018 = fmul fast float %3016, %3016
  %3019 = fmul fast float %3018, %3017
  %3020 = fsub fast float 1.500000e+00, %3019
  %3021 = fmul fast float %3016, %2928
  %3022 = fmul fast float %3021, %3020
  %3023 = bitcast float %2929 to i32
  %3024 = ashr i32 %3023, 1
  %3025 = sub nsw i32 1597463174, %3024
  %3026 = bitcast i32 %3025 to float
  %3027 = fmul fast float %2929, 5.000000e-01
  %3028 = fmul fast float %3026, %3026
  %3029 = fmul fast float %3028, %3027
  %3030 = fsub fast float 1.500000e+00, %3029
  %3031 = fmul fast float %3026, %2929
  %3032 = fmul fast float %3031, %3030
  %3033 = fsub fast float %3012, %2994
  %3034 = fsub fast float %3022, %2998
  %3035 = fsub fast float %3032, %3002
  %3036 = fmul fast float %3033, %2962
  %3037 = fmul fast float %3034, %2964
  %3038 = fmul fast float %3035, %2969
  %3039 = fadd fast float %3036, %2977
  %3040 = fadd fast float %3037, %2981
  %3041 = fadd fast float %3038, %2985
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3043 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3044 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3045 = fmul fast float %3042, %3042
  %3046 = fmul fast float %3043, %3043
  %3047 = fmul fast float %3044, %3044
  %3048 = fsub fast float %3045, %2927
  %3049 = fsub fast float %3046, %2928
  %3050 = fsub fast float %3047, %2929
  %3051 = fmul fast float %3048, %2952
  %3052 = fmul fast float %3049, %2952
  %3053 = fmul fast float %3050, %2952
  %3054 = fadd fast float %3051, %2927
  %3055 = fadd fast float %3052, %2928
  %3056 = fadd fast float %3053, %2929
  %3057 = fadd fast float %2974, %2938
  %3058 = fsub fast float %3057, %2991
  %3059 = call float @dx.op.unary.f32(i32 7, float %3058)  ; Saturate(value)
  %3060 = fsub fast float %3059, %2938
  %3061 = fmul fast float %3060, %2952
  %3062 = fadd fast float %3061, %2938
  br label %3116

; <label>:3063                                    ; preds = %2951
  %3064 = and i32 %2954, 134217728
  %3065 = icmp eq i32 %3064, 0
  br i1 %3065, label %3100, label %3066

; <label>:3066                                    ; preds = %3063
  %3067 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %3068 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3069 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3070 = fadd fast float %3067, -5.000000e-01
  %3071 = fadd fast float %3068, -5.000000e-01
  %3072 = fadd fast float %3069, -5.000000e-01
  %3073 = fmul fast float %3070, %2952
  %3074 = fmul fast float %3071, %2952
  %3075 = fmul fast float %3072, %2952
  %3076 = fadd fast float %3073, 5.000000e-01
  %3077 = fadd fast float %3074, 5.000000e-01
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = call float @dx.op.unary.f32(i32 24, float %2927)  ; Sqrt(value)
  %3080 = call float @dx.op.unary.f32(i32 24, float %2928)  ; Sqrt(value)
  %3081 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %3082 = fmul fast float %3076, 2.000000e+00
  %3083 = fsub fast float 1.000000e+00, %3082
  %3084 = fmul fast float %3083, %3079
  %3085 = fadd fast float %3084, %3082
  %3086 = fmul fast float %3085, %3079
  %3087 = fmul fast float %3077, 2.000000e+00
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = fmul fast float %3088, %3080
  %3090 = fadd fast float %3089, %3087
  %3091 = fmul fast float %3090, %3080
  %3092 = fmul fast float %3078, 2.000000e+00
  %3093 = fsub fast float 1.000000e+00, %3092
  %3094 = fmul fast float %3093, %3081
  %3095 = fadd fast float %3094, %3092
  %3096 = fmul fast float %3095, %3081
  %3097 = fmul fast float %3086, %3086
  %3098 = fmul fast float %3091, %3091
  %3099 = fmul fast float %3096, %3096
  br label %3116

; <label>:3100                                    ; preds = %3063
  %3101 = fmul fast float %341, %341
  %3102 = fmul fast float %345, %345
  %3103 = fmul fast float %349, %349
  %3104 = fadd fast float %3101, -1.000000e+00
  %3105 = fadd fast float %3102, -1.000000e+00
  %3106 = fadd fast float %3103, -1.000000e+00
  %3107 = fmul fast float %2952, %3104
  %3108 = fmul fast float %2952, %3105
  %3109 = fmul fast float %2952, %3106
  %3110 = fadd fast float %3107, 1.000000e+00
  %3111 = fadd fast float %3108, 1.000000e+00
  %3112 = fadd fast float %3109, 1.000000e+00
  %3113 = fmul fast float %3110, %2927
  %3114 = fmul fast float %3111, %2928
  %3115 = fmul fast float %3112, %2929
  br label %3116

; <label>:3116                                    ; preds = %3100, %3066, %2957, %2913
  %3117 = phi float [ %3062, %2957 ], [ %2938, %3066 ], [ %2938, %3100 ], [ 0x3FA23C0BE0000000, %2913 ]
  %3118 = phi float [ %3054, %2957 ], [ %3097, %3066 ], [ %3113, %3100 ], [ 1.000000e+00, %2913 ]
  %3119 = phi float [ %3055, %2957 ], [ %3098, %3066 ], [ %3114, %3100 ], [ 1.000000e+00, %2913 ]
  %3120 = phi float [ %3056, %2957 ], [ %3099, %3066 ], [ %3115, %3100 ], [ 1.000000e+00, %2913 ]
  %3121 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3122 = extractvalue %dx.types.CBufRet.i32 %3121, 1
  %3123 = and i32 %3122, 1
  %3124 = icmp ne i32 %3123, 0
  %3125 = add i32 %43, 356
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3125, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 32
  %3129 = icmp ne i32 %3128, 0
  %3130 = and i1 %3124, %3129
  %3131 = select i1 %3130, float 1.000000e+00, float %3118
  %3132 = select i1 %3130, float 0x3FD3333340000000, float %3119
  %3133 = select i1 %3130, float 0x3FD3333340000000, float %3120
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = and i32 %3135, 32
  %3137 = icmp eq i32 %3136, 0
  br i1 %3137, label %3210, label %3138

; <label>:3138                                    ; preds = %3116
  %3139 = add i32 %43, 140
  %3140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3139, i32 undef)  ; BufferLoad(srv,index,wot)
  %3141 = extractvalue %dx.types.ResRet.i32 %3140, 0
  %3142 = add i32 %43, 404
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %3144, 0
  %3146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3145, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3147 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3146, %dx.types.Handle %74, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3148 = extractvalue %dx.types.ResRet.f32 %3147, 0
  %3149 = extractvalue %dx.types.ResRet.f32 %3147, 1
  %3150 = extractvalue %dx.types.ResRet.f32 %3147, 2
  %3151 = extractvalue %dx.types.ResRet.f32 %3147, 3
  %3152 = and i32 %3141, 255
  %3153 = uitofp i32 %3152 to float
  %3154 = lshr i32 %3141, 8
  %3155 = and i32 %3154, 255
  %3156 = uitofp i32 %3155 to float
  %3157 = lshr i32 %3141, 16
  %3158 = and i32 %3157, 255
  %3159 = uitofp i32 %3158 to float
  %3160 = fmul fast float %3159, 0x3F70101000000000
  %3161 = fmul fast float %3148, %3153
  %3162 = fadd fast float %3161, %3156
  %3163 = fmul fast float %3162, 0x3F70101000000000
  %3164 = fadd fast float %3149, -5.000000e-01
  %3165 = fadd fast float %3151, -5.000000e-01
  %3166 = fmul fast float %3164, %3160
  %3167 = fmul fast float %3165, %3160
  %3168 = fadd fast float %3166, 5.000000e-01
  %3169 = fadd fast float %3167, 5.000000e-01
  %3170 = fmul fast float %3168, 2.000000e+00
  %3171 = fadd fast float %3170, -1.000000e+00
  %3172 = fmul fast float %3169, 2.000000e+00
  %3173 = fadd fast float %3172, -1.000000e+00
  %3174 = fadd fast float %3171, %3173
  %3175 = fmul fast float %3174, 5.000000e-01
  %3176 = fsub fast float %3171, %3173
  %3177 = fmul fast float %3176, 5.000000e-01
  %3178 = call float @dx.op.unary.f32(i32 6, float %3175)  ; FAbs(value)
  %3179 = fsub fast float 1.000000e+00, %3178
  %3180 = call float @dx.op.unary.f32(i32 6, float %3177)  ; FAbs(value)
  %3181 = fsub fast float %3179, %3180
  %3182 = call float @dx.op.dot3.f32(i32 55, float %3175, float %3177, float %3181, float %3175, float %3177, float %3181)  ; Dot3(ax,ay,az,bx,by,bz)
  %3183 = call float @dx.op.unary.f32(i32 25, float %3182)  ; Rsqrt(value)
  %3184 = fmul fast float %3175, %3183
  %3185 = fmul fast float %3177, %3183
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = and i32 %3187, 67108864
  %3189 = icmp eq i32 %3188, 0
  br i1 %3189, label %3206, label %3190

; <label>:3190                                    ; preds = %3138
  %3191 = add i32 %43, 328
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = and i32 %3193, 65535
  %3195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3194)  ; LegacyF16ToF32(value)
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = and i32 %3197, 65535
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = lshr i32 %3193, 16
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = fsub fast float %3163, %3201
  %3203 = fmul fast float %3202, %3195
  %3204 = fadd fast float %3203, %3199
  %3205 = call float @dx.op.unary.f32(i32 7, float %3204)  ; Saturate(value)
  br label %3206

; <label>:3206                                    ; preds = %3190, %3138
  %3207 = phi float [ %3205, %3190 ], [ %3163, %3138 ]
  %3208 = call float @dx.op.dot2.f32(i32 54, float %3184, float %3185, float %2627, float %2628)  ; Dot2(ax,ay,bx,by)
  %3209 = call float @dx.op.dot2.f32(i32 54, float %3184, float %3185, float %2629, float %2630)  ; Dot2(ax,ay,bx,by)
  br label %3210

; <label>:3210                                    ; preds = %3206, %3116
  %3211 = phi float [ %3207, %3206 ], [ 0x3FD6666660000000, %3116 ]
  %3212 = phi float [ %3208, %3206 ], [ 0.000000e+00, %3116 ]
  %3213 = phi float [ %3209, %3206 ], [ 0.000000e+00, %3116 ]
  %3214 = phi float [ %3150, %3206 ], [ 1.000000e+00, %3116 ]
  %3215 = add i32 %43, 208
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = lshr i32 %3217, 22
  %3219 = shl nuw nsw i32 %3218, 5
  %3220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3219)  ; LegacyF16ToF32(value)
  %3221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3222 = extractvalue %dx.types.ResRet.i32 %3221, 0
  %3223 = and i32 %3222, 64
  %3224 = icmp eq i32 %3223, 0
  br i1 %3224, label %3258, label %3225

; <label>:3225                                    ; preds = %3210
  %3226 = add i32 %43, 420
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3226, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = add i32 %3228, 0
  %3230 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3229, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3232 = extractvalue %dx.types.ResRet.i32 %3231, 0
  %3233 = and i32 %3232, 131072
  %3234 = icmp eq i32 %3233, 0
  %3235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3230, %dx.types.Handle %74, float %2723, float %2724, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.ResRet.f32 %3235, 2
  %3239 = fmul fast float %3236, %329
  %3240 = fmul fast float %3237, %332
  %3241 = fmul fast float %3238, %335
  br i1 %3234, label %3248, label %3242

; <label>:3242                                    ; preds = %3225
  %3243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3244 = extractvalue %dx.types.CBufRet.f32 %3243, 0
  %3245 = fmul fast float %3244, %3239
  %3246 = fmul fast float %3244, %3240
  %3247 = fmul fast float %3244, %3241
  br label %3248

; <label>:3248                                    ; preds = %3242, %3225
  %3249 = phi float [ %3245, %3242 ], [ %3239, %3225 ]
  %3250 = phi float [ %3246, %3242 ], [ %3240, %3225 ]
  %3251 = phi float [ %3247, %3242 ], [ %3241, %3225 ]
  %3252 = fmul fast float %3249, %3220
  %3253 = select i1 %183, float %3252, float %3249
  %3254 = call float @dx.op.dot3.f32(i32 55, float %3253, float %3250, float %3251, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3255 = select i1 %183, float 0.000000e+00, float %3249
  %3256 = select i1 %183, float %3254, float %3250
  %3257 = select i1 %183, float 0.000000e+00, float %3251
  br label %3258

; <label>:3258                                    ; preds = %3248, %3210
  %3259 = phi float [ %3255, %3248 ], [ 0.000000e+00, %3210 ]
  %3260 = phi float [ %3256, %3248 ], [ 0.000000e+00, %3210 ]
  %3261 = phi float [ %3257, %3248 ], [ 0.000000e+00, %3210 ]
  %3262 = add i32 %43, 144
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = lshr i32 %3264, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = call float @dx.op.dot3.f32(i32 55, float %3131, float %3132, float %3133, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3271 = fmul fast float %3269, %3270
  %3272 = fadd fast float %3271, %3266
  %3273 = fmul fast float %3272, 0x3F70101020000000
  %3274 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  br i1 %2615, label %3275, label %3283

; <label>:3275                                    ; preds = %3258
  %3276 = fsub fast float 1.000000e+00, %2911
  %3277 = fmul fast float %3276, %2604
  %3278 = fmul fast float %3276, %2605
  %3279 = fmul fast float %3276, %2606
  %3280 = fmul fast float %3276, %2607
  %3281 = fmul fast float %3276, %2608
  %3282 = fmul fast float %3276, %2609
  br label %3283

; <label>:3283                                    ; preds = %3275, %3258
  %3284 = phi float [ %3277, %3275 ], [ %2604, %3258 ]
  %3285 = phi float [ %3278, %3275 ], [ %2605, %3258 ]
  %3286 = phi float [ %3279, %3275 ], [ %2606, %3258 ]
  %3287 = phi float [ %3280, %3275 ], [ %2607, %3258 ]
  %3288 = phi float [ %3281, %3275 ], [ %2608, %3258 ]
  %3289 = phi float [ %3282, %3275 ], [ %2609, %3258 ]
  %3290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3291 = extractvalue %dx.types.ResRet.i32 %3290, 0
  %3292 = and i32 %3291, 3
  %3293 = icmp eq i32 %3292, 3
  br i1 %3293, label %3372, label %3294

; <label>:3294                                    ; preds = %3283
  %3295 = and i32 %3291, 16
  %3296 = icmp ne i32 %3295, 0
  %3297 = select i1 %3296, float %2911, float 0.000000e+00
  %3298 = icmp eq i32 %3292, 0
  br i1 %3298, label %3299, label %3327

; <label>:3299                                    ; preds = %3294
  %3300 = and i32 %3291, 64
  %3301 = icmp ne i32 %3300, 0
  %3302 = select i1 %3301, float %2911, float 0.000000e+00
  %3303 = fsub fast float %3131, %3284
  %3304 = fsub fast float %3132, %3285
  %3305 = fsub fast float %3133, %3286
  %3306 = fmul fast float %3297, %3303
  %3307 = fmul fast float %3297, %3304
  %3308 = fmul fast float %3297, %3305
  %3309 = fadd fast float %3306, %3284
  %3310 = fadd fast float %3307, %3285
  %3311 = fadd fast float %3308, %3286
  %3312 = fsub fast float %3117, %2610
  %3313 = fmul fast float %3297, %3312
  %3314 = fadd fast float %3313, %2610
  %3315 = fsub fast float %3259, %3287
  %3316 = fsub fast float %3260, %3288
  %3317 = fsub fast float %3261, %3289
  %3318 = fmul fast float %3302, %3315
  %3319 = fmul fast float %3302, %3316
  %3320 = fmul fast float %3302, %3317
  %3321 = fadd fast float %3318, %3287
  %3322 = fadd fast float %3319, %3288
  %3323 = fadd fast float %3320, %3289
  %3324 = fsub fast float %3274, %2613
  %3325 = fmul fast float %3297, %3324
  %3326 = fadd fast float %3325, %2613
  br label %3372

; <label>:3327                                    ; preds = %3294
  %3328 = icmp eq i32 %3292, 1
  br i1 %3328, label %3329, label %3342

; <label>:3329                                    ; preds = %3327
  %3330 = fadd fast float %3131, -1.000000e+00
  %3331 = fadd fast float %3132, -1.000000e+00
  %3332 = fadd fast float %3133, -1.000000e+00
  %3333 = fmul fast float %3297, %3330
  %3334 = fmul fast float %3297, %3331
  %3335 = fmul fast float %3297, %3332
  %3336 = fadd fast float %3333, 1.000000e+00
  %3337 = fadd fast float %3334, 1.000000e+00
  %3338 = fadd fast float %3335, 1.000000e+00
  %3339 = fmul fast float %3336, %3284
  %3340 = fmul fast float %3337, %3285
  %3341 = fmul fast float %3338, %3286
  br label %3372

; <label>:3342                                    ; preds = %3327
  %3343 = icmp eq i32 %3292, 2
  br i1 %3343, label %3344, label %3372

; <label>:3344                                    ; preds = %3342
  %3345 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3346 = call float @dx.op.unary.f32(i32 24, float %3132)  ; Sqrt(value)
  %3347 = call float @dx.op.unary.f32(i32 24, float %3133)  ; Sqrt(value)
  %3348 = fadd fast float %3345, -5.000000e-01
  %3349 = fadd fast float %3346, -5.000000e-01
  %3350 = fadd fast float %3347, -5.000000e-01
  %3351 = fmul fast float %3348, %3297
  %3352 = fmul fast float %3349, %3297
  %3353 = fmul fast float %3350, %3297
  %3354 = fadd fast float %3351, 5.000000e-01
  %3355 = fadd fast float %3352, 5.000000e-01
  %3356 = fadd fast float %3353, 5.000000e-01
  %3357 = fmul fast float %3354, 2.000000e+00
  %3358 = fsub fast float 1.000000e+00, %3357
  %3359 = fmul fast float %3358, %3284
  %3360 = fadd fast float %3359, %3357
  %3361 = fmul fast float %3360, %3284
  %3362 = fmul fast float %3355, 2.000000e+00
  %3363 = fsub fast float 1.000000e+00, %3362
  %3364 = fmul fast float %3363, %3285
  %3365 = fadd fast float %3364, %3362
  %3366 = fmul fast float %3365, %3285
  %3367 = fmul fast float %3356, 2.000000e+00
  %3368 = fsub fast float 1.000000e+00, %3367
  %3369 = fmul fast float %3368, %3286
  %3370 = fadd fast float %3369, %3367
  %3371 = fmul fast float %3370, %3286
  br label %3372

; <label>:3372                                    ; preds = %3344, %3342, %3329, %3299, %3283
  %3373 = phi float [ %3284, %3283 ], [ %3361, %3344 ], [ %3284, %3342 ], [ %3339, %3329 ], [ %3309, %3299 ]
  %3374 = phi float [ %3285, %3283 ], [ %3366, %3344 ], [ %3285, %3342 ], [ %3340, %3329 ], [ %3310, %3299 ]
  %3375 = phi float [ %3286, %3283 ], [ %3371, %3344 ], [ %3286, %3342 ], [ %3341, %3329 ], [ %3311, %3299 ]
  %3376 = phi float [ %3287, %3283 ], [ %3287, %3344 ], [ %3287, %3342 ], [ %3287, %3329 ], [ %3321, %3299 ]
  %3377 = phi float [ %3288, %3283 ], [ %3288, %3344 ], [ %3288, %3342 ], [ %3288, %3329 ], [ %3322, %3299 ]
  %3378 = phi float [ %3289, %3283 ], [ %3289, %3344 ], [ %3289, %3342 ], [ %3289, %3329 ], [ %3323, %3299 ]
  %3379 = phi float [ %2610, %3283 ], [ %2610, %3344 ], [ %2610, %3342 ], [ %2610, %3329 ], [ %3314, %3299 ]
  %3380 = phi float [ %2613, %3283 ], [ %2613, %3344 ], [ %2613, %3342 ], [ %2613, %3329 ], [ %3326, %3299 ]
  %3381 = and i32 %3291, 12
  %3382 = icmp eq i32 %3381, 12
  br i1 %3382, label %3455, label %3383

; <label>:3383                                    ; preds = %3372
  %3384 = and i32 %3291, 2097184
  %3385 = icmp eq i32 %3384, 2097184
  %3386 = select i1 %3385, float %2911, float 0.000000e+00
  %3387 = and i32 %3291, 4194336
  %3388 = icmp eq i32 %3387, 4194336
  %3389 = select i1 %3388, float %2911, float 0.000000e+00
  %3390 = and i32 %3291, 8388640
  %3391 = icmp eq i32 %3390, 8388640
  %3392 = select i1 %3391, float %2911, float 0.000000e+00
  %3393 = icmp eq i32 %3381, 0
  br i1 %3393, label %3394, label %3407

; <label>:3394                                    ; preds = %3383
  %3395 = fsub fast float %3212, %2602
  %3396 = fsub fast float %3213, %2603
  %3397 = fmul fast float %3386, %3395
  %3398 = fmul fast float %3386, %3396
  %3399 = fadd fast float %3397, %2602
  %3400 = fadd fast float %3398, %2603
  %3401 = fsub fast float %3214, %2612
  %3402 = fmul fast float %3389, %3401
  %3403 = fadd fast float %3402, %2612
  %3404 = fsub fast float %3211, %2611
  %3405 = fmul fast float %3392, %3404
  %3406 = fadd fast float %3405, %2611
  br label %3455

; <label>:3407                                    ; preds = %3383
  %3408 = icmp eq i32 %3381, 4
  br i1 %3408, label %3409, label %3441

; <label>:3409                                    ; preds = %3407
  %3410 = fmul fast float %3386, %3212
  %3411 = fmul fast float %3386, %3213
  %3412 = fadd fast float %3410, %2602
  %3413 = fadd fast float %3411, %2603
  %3414 = call float @dx.op.binary.f32(i32 36, float %2612, float %3214)  ; FMin(a,b)
  %3415 = fsub fast float %3414, %2612
  %3416 = fmul fast float %3415, %3389
  %3417 = fadd fast float %3416, %2612
  %3418 = fadd fast float %3211, %2611
  %3419 = fmul fast float %3418, 0x3FF337FAE0000000
  %3420 = fmul fast float %2611, %2611
  %3421 = fmul fast float %3211, %3211
  %3422 = fadd fast float %3421, %3420
  %3423 = fmul fast float %3422, 0x3FE5152B00000000
  %3424 = fmul fast float %2611, 0xBFCC1F85E0000000
  %3425 = fmul fast float %3424, %3211
  %3426 = fadd fast float %3425, 0xBFE1363700000000
  %3427 = fadd fast float %3426, %3419
  %3428 = fsub fast float %3427, %3423
  %3429 = fmul fast float %3418, 0x3FBA6F0D00000000
  %3430 = fmul fast float %3422, 0x3FD0432880000000
  %3431 = fmul fast float %2611, 0xBFEF110800000000
  %3432 = fmul fast float %3431, %3211
  %3433 = fadd fast float %3432, 1.000000e+00
  %3434 = fsub fast float %3433, %3429
  %3435 = fadd fast float %3434, %3430
  %3436 = fdiv fast float %3428, %3435
  %3437 = call float @dx.op.unary.f32(i32 7, float %3436)  ; Saturate(value)
  %3438 = fsub fast float %3437, %2611
  %3439 = fmul fast float %3438, %3392
  %3440 = fadd fast float %3439, %2611
  br label %3455

; <label>:3441                                    ; preds = %3407
  %3442 = icmp eq i32 %3381, 8
  br i1 %3442, label %3443, label %3455

; <label>:3443                                    ; preds = %3441
  %3444 = fmul fast float %3386, %3212
  %3445 = fmul fast float %3386, %3213
  %3446 = fadd fast float %3444, %2602
  %3447 = fadd fast float %3445, %2603
  %3448 = call float @dx.op.binary.f32(i32 36, float %2612, float %3214)  ; FMin(a,b)
  %3449 = fsub fast float %3448, %2612
  %3450 = fmul fast float %3449, %3389
  %3451 = fadd fast float %3450, %2612
  %3452 = fsub fast float %3211, %2611
  %3453 = fmul fast float %3392, %3452
  %3454 = fadd fast float %3453, %2611
  br label %3455

; <label>:3455                                    ; preds = %3443, %3441, %3409, %3394, %3372, %2910, %2614, %2601
  %3456 = phi float [ %2602, %3372 ], [ %2602, %2910 ], [ %2602, %2601 ], [ %2602, %2614 ], [ %3399, %3394 ], [ %3412, %3409 ], [ %2602, %3441 ], [ %3446, %3443 ]
  %3457 = phi float [ %2603, %3372 ], [ %2603, %2910 ], [ %2603, %2601 ], [ %2603, %2614 ], [ %3400, %3394 ], [ %3413, %3409 ], [ %2603, %3441 ], [ %3447, %3443 ]
  %3458 = phi float [ %3373, %3372 ], [ %2604, %2910 ], [ %2604, %2601 ], [ %2604, %2614 ], [ %3373, %3394 ], [ %3373, %3409 ], [ %3373, %3441 ], [ %3373, %3443 ]
  %3459 = phi float [ %3374, %3372 ], [ %2605, %2910 ], [ %2605, %2601 ], [ %2605, %2614 ], [ %3374, %3394 ], [ %3374, %3409 ], [ %3374, %3441 ], [ %3374, %3443 ]
  %3460 = phi float [ %3375, %3372 ], [ %2606, %2910 ], [ %2606, %2601 ], [ %2606, %2614 ], [ %3375, %3394 ], [ %3375, %3409 ], [ %3375, %3441 ], [ %3375, %3443 ]
  %3461 = phi float [ %3376, %3372 ], [ %2607, %2910 ], [ %2607, %2601 ], [ %2607, %2614 ], [ %3376, %3394 ], [ %3376, %3409 ], [ %3376, %3441 ], [ %3376, %3443 ]
  %3462 = phi float [ %3377, %3372 ], [ %2608, %2910 ], [ %2608, %2601 ], [ %2608, %2614 ], [ %3377, %3394 ], [ %3377, %3409 ], [ %3377, %3441 ], [ %3377, %3443 ]
  %3463 = phi float [ %3378, %3372 ], [ %2609, %2910 ], [ %2609, %2601 ], [ %2609, %2614 ], [ %3378, %3394 ], [ %3378, %3409 ], [ %3378, %3441 ], [ %3378, %3443 ]
  %3464 = phi float [ %3379, %3372 ], [ %2610, %2910 ], [ %2610, %2601 ], [ %2610, %2614 ], [ %3379, %3394 ], [ %3379, %3409 ], [ %3379, %3441 ], [ %3379, %3443 ]
  %3465 = phi float [ %2611, %3372 ], [ %2611, %2910 ], [ %2611, %2601 ], [ %2611, %2614 ], [ %3406, %3394 ], [ %3440, %3409 ], [ %2611, %3441 ], [ %3454, %3443 ]
  %3466 = phi float [ %2612, %3372 ], [ %2612, %2910 ], [ %2612, %2601 ], [ %2612, %2614 ], [ %3403, %3394 ], [ %3417, %3409 ], [ %2612, %3441 ], [ %3451, %3443 ]
  %3467 = phi float [ %3380, %3372 ], [ %2613, %2910 ], [ %2613, %2601 ], [ %2613, %2614 ], [ %3380, %3394 ], [ %3380, %3409 ], [ %3380, %3441 ], [ %3380, %3443 ]
  %3468 = add i32 %43, 360
  %3469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3468, i32 undef)  ; BufferLoad(srv,index,wot)
  %3470 = extractvalue %dx.types.ResRet.i32 %3469, 0
  %3471 = bitcast i32 %3470 to float
  %3472 = fcmp fast oge float %3471, 0.000000e+00
  %3473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3474 = extractvalue %dx.types.CBufRet.f32 %3473, 0
  %3475 = select i1 %3472, float %3471, float %3474
  %3476 = call float @dx.op.dot2.f32(i32 54, float %3456, float %3457, float %3456, float %3457)  ; Dot2(ax,ay,bx,by)
  %3477 = fmul fast float %3476, 0x3FE3333340000000
  %3478 = fsub fast float 1.000000e+00, %3477
  %3479 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3457, float %3478, float %3456, float %3457, float %3478)  ; Dot3(ax,ay,az,bx,by,bz)
  %3480 = call float @dx.op.unary.f32(i32 25, float %3479)  ; Rsqrt(value)
  %3481 = fmul fast float %3480, %3456
  %3482 = fmul fast float %3480, %3457
  %3483 = fmul fast float %3478, %3480
  %3484 = fmul fast float %3483, %85
  %3485 = fmul fast float %3483, %86
  %3486 = fmul fast float %3483, %87
  %3487 = fmul fast float %3481, %59
  %3488 = fmul fast float %3481, %60
  %3489 = fmul fast float %3481, %61
  %3490 = fadd fast float %3484, %3487
  %3491 = fadd fast float %3485, %3488
  %3492 = fadd fast float %3486, %3489
  %3493 = fmul fast float %97, %3482
  %3494 = fmul fast float %98, %3482
  %3495 = fmul fast float %99, %3482
  %3496 = fadd fast float %3490, %3493
  %3497 = fadd fast float %3491, %3494
  %3498 = fadd fast float %3492, %3495
  %3499 = call float @dx.op.dot3.f32(i32 55, float %3496, float %3497, float %3498, float %3496, float %3497, float %3498)  ; Dot3(ax,ay,az,bx,by,bz)
  %3500 = call float @dx.op.unary.f32(i32 25, float %3499)  ; Rsqrt(value)
  %3501 = fmul fast float %3496, %3500
  %3502 = fmul fast float %3497, %3500
  %3503 = fmul fast float %3498, %3500
  %3504 = and i32 %45, 1
  %3505 = icmp eq i32 %3504, 0
  br i1 %3505, label %3506, label %4018

; <label>:3506                                    ; preds = %3455
  %3507 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3508 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3509 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3510 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3511 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3512 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3513 = fadd fast float %3507, %141
  %3514 = fadd fast float %3508, %142
  %3515 = fadd fast float %3509, %143
  %3516 = fadd fast float %3510, %141
  %3517 = fadd fast float %3511, %142
  %3518 = fadd fast float %3512, %143
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3522 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 2
  %3525 = extractvalue %dx.types.CBufRet.f32 %3523, 3
  %3526 = fmul fast float %3520, %78
  %3527 = fmul fast float %3526, %3524
  %3528 = fmul fast float %3521, %79
  %3529 = fmul fast float %3528, %3525
  %3530 = fptoui float %3527 to i32
  %3531 = fptoui float %3529 to i32
  %3532 = fadd fast float %3520, -1.000000e+00
  %3533 = fadd fast float %3521, -1.000000e+00
  %3534 = fptoui float %3532 to i32
  %3535 = fptoui float %3533 to i32
  %3536 = call i32 @dx.op.binary.i32(i32 40, i32 %3530, i32 %3534)  ; UMin(a,b)
  %3537 = call i32 @dx.op.binary.i32(i32 40, i32 %3531, i32 %3535)  ; UMin(a,b)
  %3538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3539 = extractvalue %dx.types.CBufRet.f32 %3538, 2
  %3540 = extractvalue %dx.types.CBufRet.f32 %3538, 3
  %3541 = fmul fast float %3539, %73
  %3542 = fsub fast float %3541, %3540
  %3543 = fadd fast float %3522, -1.000000e+00
  %3544 = call float @dx.op.binary.f32(i32 36, float %3542, float %3543)  ; FMin(a,b)
  %3545 = fptoui float %3544 to i32
  %3546 = fptoui float %3520 to i32
  %3547 = fptoui float %3521 to i32
  %3548 = mul i32 %3545, %3547
  %3549 = add i32 %3548, %3537
  %3550 = mul i32 %3549, %3546
  %3551 = add i32 %3550, %3536
  %3552 = shl i32 %3551, 2
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = and i32 %3554, 1023
  %3556 = lshr i32 %3554, 10
  %3557 = icmp eq i32 %3555, 0
  br i1 %3557, label %3986, label %3558

; <label>:3558                                    ; preds = %3506
  %3559 = and i32 %3554, 1023
  br label %3560

; <label>:3560                                    ; preds = %3687, %3558
  %3561 = phi i32 [ %3637, %3687 ], [ 0, %3558 ]
  %3562 = phi float [ %3688, %3687 ], [ 0.000000e+00, %3558 ]
  %3563 = phi float [ %3689, %3687 ], [ %902, %3558 ]
  %3564 = phi float [ %3690, %3687 ], [ %3475, %3558 ]
  %3565 = phi float [ %3691, %3687 ], [ %3467, %3558 ]
  %3566 = phi float [ %3692, %3687 ], [ 0.000000e+00, %3558 ]
  %3567 = phi float [ %3693, %3687 ], [ 0.000000e+00, %3558 ]
  %3568 = phi float [ %3694, %3687 ], [ %3461, %3558 ]
  %3569 = phi float [ %3695, %3687 ], [ %3462, %3558 ]
  %3570 = phi float [ %3696, %3687 ], [ %3463, %3558 ]
  %3571 = phi float [ %3697, %3687 ], [ %3501, %3558 ]
  %3572 = phi float [ %3698, %3687 ], [ %3502, %3558 ]
  %3573 = phi float [ %3699, %3687 ], [ %3503, %3558 ]
  %3574 = phi float [ %3700, %3687 ], [ %3466, %3558 ]
  %3575 = phi float [ %3701, %3687 ], [ %3465, %3558 ]
  %3576 = phi float [ %3702, %3687 ], [ 0.000000e+00, %3558 ]
  %3577 = phi float [ %3703, %3687 ], [ %3464, %3558 ]
  %3578 = phi float [ %3704, %3687 ], [ %3458, %3558 ]
  %3579 = phi float [ %3705, %3687 ], [ %3459, %3558 ]
  %3580 = phi float [ %3706, %3687 ], [ %3460, %3558 ]
  %3581 = add nuw nsw i32 %3561, %3556
  %3582 = shl i32 %3581, 2
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = shl i32 %3584, 8
  %3586 = or i32 %3585, 48
  %3587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.f32 %3587, 0
  %3589 = extractvalue %dx.types.ResRet.f32 %3587, 1
  %3590 = extractvalue %dx.types.ResRet.f32 %3587, 2
  %3591 = extractvalue %dx.types.ResRet.f32 %3587, 3
  %3592 = or i32 %3585, 64
  %3593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.i32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.i32 %3593, 1
  %3596 = or i32 %3585, 80
  %3597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3598 = extractvalue %dx.types.ResRet.f32 %3597, 2
  %3599 = extractvalue %dx.types.ResRet.f32 %3597, 3
  %3600 = or i32 %3585, 96
  %3601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.ResRet.f32 %3601, 2
  %3605 = extractvalue %dx.types.ResRet.f32 %3601, 3
  %3606 = or i32 %3585, 112
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3609 = or i32 %3585, 128
  %3610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.ResRet.f32 %3610, 1
  %3613 = extractvalue %dx.types.ResRet.f32 %3610, 2
  %3614 = extractvalue %dx.types.ResRet.f32 %3610, 3
  %3615 = or i32 %3585, 144
  %3616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.ResRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.ResRet.f32 %3616, 2
  %3620 = extractvalue %dx.types.ResRet.f32 %3616, 3
  %3621 = or i32 %3585, 160
  %3622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = extractvalue %dx.types.ResRet.f32 %3622, 1
  %3625 = extractvalue %dx.types.ResRet.f32 %3622, 2
  %3626 = extractvalue %dx.types.ResRet.f32 %3622, 3
  %3627 = or i32 %3585, 192
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = or i32 %3585, 208
  %3631 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.f32 %3631, 0
  %3633 = or i32 %3585, 248
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = add nuw nsw i32 %3561, 1
  %3638 = bitcast float %3591 to i32
  %3639 = and i32 %3638, 512
  %3640 = icmp eq i32 %3639, 0
  %3641 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.f32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.f32 %3641, 1
  %3644 = extractvalue %dx.types.ResRet.f32 %3641, 2
  %3645 = extractvalue %dx.types.ResRet.f32 %3641, 3
  %3646 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3647 = or i32 %3585, 16
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = extractvalue %dx.types.ResRet.f32 %3648, 3
  %3653 = call float @dx.op.dot4.f32(i32 56, float %3649, float %3650, float %3651, float %3652, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3654 = or i32 %3585, 32
  %3655 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3654, i32 undef)  ; BufferLoad(srv,index,wot)
  %3656 = extractvalue %dx.types.ResRet.f32 %3655, 0
  %3657 = extractvalue %dx.types.ResRet.f32 %3655, 1
  %3658 = extractvalue %dx.types.ResRet.f32 %3655, 2
  %3659 = extractvalue %dx.types.ResRet.f32 %3655, 3
  %3660 = call float @dx.op.dot4.f32(i32 56, float %3656, float %3657, float %3658, float %3659, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3661 = call float @dx.op.unary.f32(i32 27, float %3646)  ; Round_ni(value)
  %3662 = call float @dx.op.unary.f32(i32 6, float %3661)  ; FAbs(value)
  %3663 = call float @dx.op.unary.f32(i32 27, float %3653)  ; Round_ni(value)
  %3664 = call float @dx.op.unary.f32(i32 6, float %3663)  ; FAbs(value)
  %3665 = call float @dx.op.unary.f32(i32 6, float %3660)  ; FAbs(value)
  %3666 = call float @dx.op.unary.f32(i32 27, float %3665)  ; Round_ni(value)
  %3667 = fadd fast float %3664, %3662
  %3668 = fadd fast float %3667, %3666
  %3669 = fcmp fast oeq float %3668, 0.000000e+00
  %3670 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3671 = call float @dx.op.dot4.f32(i32 56, float %3649, float %3650, float %3651, float %3652, float %3513, float %3514, float %3515, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3672 = call float @dx.op.dot4.f32(i32 56, float %3642, float %3643, float %3644, float %3645, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3673 = call float @dx.op.dot4.f32(i32 56, float %3649, float %3650, float %3651, float %3652, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3674 = fsub fast float %3670, %3646
  %3675 = fsub fast float %3672, %3646
  %3676 = fsub fast float %3671, %3653
  %3677 = fsub fast float %3673, %3653
  %3678 = call float @dx.op.dot3.f32(i32 55, float %3588, float %3589, float %3590, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 2
  %3681 = fadd fast float %3680, %3678
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3684 = fcmp fast ogt float %3682, %3683
  %3685 = and i1 %3669, %3684
  %3686 = and i1 %3640, %3685
  br i1 %3686, label %3708, label %3687

; <label>:3687                                    ; preds = %3972, %3789, %3708, %3560
  %3688 = phi float [ %3562, %3708 ], [ %3792, %3789 ], [ %3792, %3972 ], [ %3562, %3560 ]
  %3689 = phi float [ %3563, %3708 ], [ %3563, %3789 ], [ %3947, %3972 ], [ %3563, %3560 ]
  %3690 = phi float [ %3564, %3708 ], [ %3564, %3789 ], [ %3946, %3972 ], [ %3564, %3560 ]
  %3691 = phi float [ %3565, %3708 ], [ %3565, %3789 ], [ %3944, %3972 ], [ %3565, %3560 ]
  %3692 = phi float [ %3566, %3708 ], [ %3566, %3789 ], [ %3916, %3972 ], [ %3566, %3560 ]
  %3693 = phi float [ %3567, %3708 ], [ %3567, %3789 ], [ %3914, %3972 ], [ %3567, %3560 ]
  %3694 = phi float [ %3568, %3708 ], [ %3568, %3789 ], [ %3982, %3972 ], [ %3568, %3560 ]
  %3695 = phi float [ %3569, %3708 ], [ %3569, %3789 ], [ %3983, %3972 ], [ %3569, %3560 ]
  %3696 = phi float [ %3570, %3708 ], [ %3570, %3789 ], [ %3984, %3972 ], [ %3570, %3560 ]
  %3697 = phi float [ %3571, %3708 ], [ %3571, %3789 ], [ %3895, %3972 ], [ %3571, %3560 ]
  %3698 = phi float [ %3572, %3708 ], [ %3572, %3789 ], [ %3896, %3972 ], [ %3572, %3560 ]
  %3699 = phi float [ %3573, %3708 ], [ %3573, %3789 ], [ %3897, %3972 ], [ %3573, %3560 ]
  %3700 = phi float [ %3574, %3708 ], [ %3574, %3789 ], [ %3924, %3972 ], [ %3574, %3560 ]
  %3701 = phi float [ %3575, %3708 ], [ %3575, %3789 ], [ %3921, %3972 ], [ %3575, %3560 ]
  %3702 = phi float [ %3576, %3708 ], [ %3576, %3789 ], [ %3918, %3972 ], [ %3576, %3560 ]
  %3703 = phi float [ %3577, %3708 ], [ %3577, %3789 ], [ %3912, %3972 ], [ %3577, %3560 ]
  %3704 = phi float [ %3578, %3708 ], [ %3578, %3789 ], [ %3907, %3972 ], [ %3578, %3560 ]
  %3705 = phi float [ %3579, %3708 ], [ %3579, %3789 ], [ %3908, %3972 ], [ %3579, %3560 ]
  %3706 = phi float [ %3580, %3708 ], [ %3580, %3789 ], [ %3909, %3972 ], [ %3580, %3560 ]
  %3707 = icmp eq i32 %3637, %3559
  br i1 %3707, label %3985, label %3560

; <label>:3708                                    ; preds = %3560
  %3709 = extractvalue %dx.types.ResRet.f32 %3607, 3
  %3710 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3712 = extractvalue %dx.types.ResRet.f32 %3597, 1
  %3713 = extractvalue %dx.types.ResRet.f32 %3597, 0
  %3714 = extractvalue %dx.types.ResRet.i32 %3593, 3
  %3715 = extractvalue %dx.types.ResRet.i32 %3593, 2
  %3716 = add i32 %3714, 0
  %3717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3716, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3719 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3717, %dx.types.Handle %3718, float %3646, float %3653, float undef, float undef, i32 0, i32 0, i32 undef, float %3674, float %3676, float undef, float %3675, float %3677, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3721 = fmul fast float %3720, %3713
  %3722 = fadd fast float %3721, %3712
  %3723 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3724 = fmul fast float %3646, %3602
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3653, float %3724)  ; FMad(a,b,c)
  %3726 = fadd fast float %3725, %3711
  %3727 = fmul fast float %3646, %3604
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3653, float %3727)  ; FMad(a,b,c)
  %3729 = fadd fast float %3728, %3710
  %3730 = fmul fast float %3674, %3602
  %3731 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3676, float %3730)  ; FMad(a,b,c)
  %3732 = fmul fast float %3674, %3604
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3676, float %3732)  ; FMad(a,b,c)
  %3734 = fmul fast float %3675, %3602
  %3735 = call float @dx.op.tertiary.f32(i32 46, float %3603, float %3677, float %3734)  ; FMad(a,b,c)
  %3736 = fmul fast float %3675, %3604
  %3737 = call float @dx.op.tertiary.f32(i32 46, float %3605, float %3677, float %3736)  ; FMad(a,b,c)
  %3738 = add i32 %3715, 0
  %3739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3738, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3740 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3739, %dx.types.Handle %3718, float %3726, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3735, float %3737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = and i32 %3638, 1024
  %3743 = icmp ne i32 %3742, 0
  %3744 = fcmp fast ogt float %3741, 0x3FE0101020000000
  %3745 = uitofp i1 %3744 to float
  %3746 = select i1 %3743, float %3745, float %3741
  %3747 = and i32 %3638, 8192
  %3748 = icmp ne i32 %3747, 0
  %3749 = select i1 %3748, float %3709, float 1.000000e+00
  %3750 = fmul fast float %3646, 2.000000e+00
  %3751 = fadd fast float %3750, -1.000000e+00
  %3752 = call float @dx.op.unary.f32(i32 6, float %3751)  ; FAbs(value)
  %3753 = fmul fast float %3752, %3635
  %3754 = fsub fast float %3753, %3635
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fmul fast float %3653, 2.000000e+00
  %3757 = fadd fast float %3756, -1.000000e+00
  %3758 = call float @dx.op.unary.f32(i32 6, float %3757)  ; FAbs(value)
  %3759 = fmul fast float %3758, %3636
  %3760 = fsub fast float %3759, %3636
  %3761 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3762 = fmul fast float %3665, %3598
  %3763 = fsub fast float %3762, %3598
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3765 = fmul fast float %3723, %3749
  %3766 = fmul fast float %3765, %3720
  %3767 = fmul fast float %3766, %3755
  %3768 = fmul fast float %3767, %3746
  %3769 = fmul fast float %3768, %3761
  %3770 = fmul fast float %3769, %3764
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 1
  %3773 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3774 = fsub fast float %3682, %3773
  %3775 = fmul fast float %3774, %3772
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = fmul fast float %3770, %3599
  %3778 = fadd fast float %3770, %3599
  %3779 = fmul fast float %3778, %3608
  %3780 = fsub fast float %3779, %3608
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = and i32 %3638, 128
  %3783 = icmp ne i32 %3782, 0
  %3784 = select i1 %3783, float %3781, float %3777
  %3785 = fmul fast float %3784, %3776
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 0
  %3788 = fcmp fast ugt float %3785, %3787
  br i1 %3788, label %3789, label %3687

; <label>:3789                                    ; preds = %3708
  %3790 = select i1 %3748, float %3785, float 0.000000e+00
  %3791 = fadd fast float %3790, %3562
  %3792 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  br i1 %3748, label %3687, label %3793

; <label>:3793                                    ; preds = %3789
  %3794 = and i32 %3638, 4
  %3795 = and i32 %3638, 8
  %3796 = add i32 %3594, 0
  %3797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3796, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3799 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3797, %dx.types.Handle %3798, float %3726, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3735, float %3737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3803 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3804 = bitcast float %3620 to i32
  %3805 = and i32 %3804, 255
  %3806 = uitofp i32 %3805 to float
  %3807 = lshr i32 %3804, 8
  %3808 = and i32 %3807, 255
  %3809 = uitofp i32 %3808 to float
  %3810 = fmul fast float %3803, %3806
  %3811 = fadd fast float %3810, %3809
  %3812 = fmul fast float %3811, 0x3F70101000000000
  %3813 = add i32 %3595, 0
  %3814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3813, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3815 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3814, %dx.types.Handle %3798, float %3726, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3735, float %3737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3818 = extractvalue %dx.types.ResRet.f32 %3815, 2
  %3819 = extractvalue %dx.types.ResRet.f32 %3815, 3
  %3820 = bitcast float %3614 to i32
  %3821 = and i32 %3820, 255
  %3822 = uitofp i32 %3821 to float
  %3823 = lshr i32 %3820, 8
  %3824 = and i32 %3823, 255
  %3825 = uitofp i32 %3824 to float
  %3826 = lshr i32 %3820, 16
  %3827 = and i32 %3826, 255
  %3828 = uitofp i32 %3827 to float
  %3829 = fmul fast float %3828, 0x3F70101000000000
  %3830 = fmul fast float %3816, %3822
  %3831 = fadd fast float %3830, %3825
  %3832 = fmul fast float %3831, 0x3F70101000000000
  %3833 = fadd fast float %3817, -5.000000e-01
  %3834 = fadd fast float %3819, -5.000000e-01
  %3835 = fmul fast float %3833, %3829
  %3836 = fmul fast float %3834, %3829
  %3837 = fadd fast float %3835, 5.000000e-01
  %3838 = fadd fast float %3836, 5.000000e-01
  %3839 = fmul fast float %3800, %3623
  %3840 = fmul fast float %3801, %3624
  %3841 = fmul fast float %3802, %3625
  %3842 = fmul fast float %3837, 2.000000e+00
  %3843 = fadd fast float %3842, -1.000000e+00
  %3844 = fmul fast float %3838, 2.000000e+00
  %3845 = fadd fast float %3844, -1.000000e+00
  %3846 = fadd fast float %3843, %3845
  %3847 = fmul fast float %3846, 5.000000e-01
  %3848 = fsub fast float %3843, %3845
  %3849 = fmul fast float %3848, 5.000000e-01
  %3850 = call float @dx.op.unary.f32(i32 6, float %3847)  ; FAbs(value)
  %3851 = fsub fast float 1.000000e+00, %3850
  %3852 = call float @dx.op.unary.f32(i32 6, float %3849)  ; FAbs(value)
  %3853 = fsub fast float %3851, %3852
  %3854 = call float @dx.op.dot3.f32(i32 55, float %3847, float %3849, float %3853, float %3847, float %3849, float %3853)  ; Dot3(ax,ay,az,bx,by,bz)
  %3855 = call float @dx.op.unary.f32(i32 25, float %3854)  ; Rsqrt(value)
  %3856 = fmul fast float %3847, %3855
  %3857 = fmul fast float %3849, %3855
  %3858 = fmul fast float %3855, %3853
  %3859 = fmul fast float %3858, %3588
  %3860 = fmul fast float %3858, %3589
  %3861 = fmul fast float %3858, %3590
  %3862 = fmul fast float %3856, %3611
  %3863 = fmul fast float %3856, %3612
  %3864 = fmul fast float %3856, %3613
  %3865 = fadd fast float %3862, %3859
  %3866 = fadd fast float %3863, %3860
  %3867 = fadd fast float %3864, %3861
  %3868 = fmul fast float %3857, %3617
  %3869 = fmul fast float %3857, %3618
  %3870 = fmul fast float %3857, %3619
  %3871 = fadd fast float %3865, %3868
  %3872 = fadd fast float %3866, %3869
  %3873 = fadd fast float %3867, %3870
  %3874 = call float @dx.op.dot3.f32(i32 55, float %3871, float %3872, float %3873, float %3871, float %3872, float %3873)  ; Dot3(ax,ay,az,bx,by,bz)
  %3875 = call float @dx.op.unary.f32(i32 25, float %3874)  ; Rsqrt(value)
  %3876 = fmul fast float %3871, %3875
  %3877 = fmul fast float %3872, %3875
  %3878 = fmul fast float %3873, %3875
  %3879 = icmp ne i32 %3795, 0
  %3880 = select i1 %3879, float 1.000000e+00, float 0.000000e+00
  %3881 = fmul fast float %3785, %3880
  %3882 = and i32 %3638, 1
  %3883 = icmp eq i32 %3882, 0
  br i1 %3883, label %3884, label %3888

; <label>:3884                                    ; preds = %3793
  %3885 = fsub fast float %3876, %3571
  %3886 = fsub fast float %3877, %3572
  %3887 = fsub fast float %3878, %3573
  br label %3888

; <label>:3888                                    ; preds = %3884, %3793
  %3889 = phi float [ %3885, %3884 ], [ %3876, %3793 ]
  %3890 = phi float [ %3886, %3884 ], [ %3877, %3793 ]
  %3891 = phi float [ %3887, %3884 ], [ %3878, %3793 ]
  %3892 = fmul float %3891, %3881
  %3893 = fmul float %3890, %3881
  %3894 = fmul float %3889, %3881
  %3895 = fadd fast float %3894, %3571
  %3896 = fadd fast float %3893, %3572
  %3897 = fadd fast float %3892, %3573
  %3898 = icmp ne i32 %3794, 0
  %3899 = select i1 %3898, float 1.000000e+00, float 0.000000e+00
  %3900 = fmul fast float %3785, %3899
  %3901 = fsub fast float %3839, %3578
  %3902 = fsub fast float %3840, %3579
  %3903 = fsub fast float %3841, %3580
  %3904 = fmul fast float %3901, %3900
  %3905 = fmul fast float %3902, %3900
  %3906 = fmul fast float %3903, %3900
  %3907 = fadd fast float %3904, %3578
  %3908 = fadd fast float %3905, %3579
  %3909 = fadd fast float %3906, %3580
  %3910 = fsub fast float %3812, %3577
  %3911 = fmul fast float %3910, %3900
  %3912 = fadd fast float %3911, %3577
  %3913 = fmul fast float %3900, %3567
  %3914 = fsub fast float %3567, %3913
  %3915 = fmul fast float %3900, %3566
  %3916 = fsub fast float %3566, %3915
  %3917 = fadd fast float %3785, %3576
  %3918 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3919 = fsub fast float %3832, %3575
  %3920 = fmul fast float %3919, %3881
  %3921 = fadd fast float %3920, %3575
  %3922 = fsub fast float %3818, %3574
  %3923 = fmul fast float %3922, %3881
  %3924 = fadd fast float %3923, %3574
  %3925 = call float @dx.op.dot3.f32(i32 55, float %3839, float %3840, float %3841, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.CBufRet.f32 %3926, 1
  %3929 = fmul fast float %3928, %3925
  %3930 = fadd fast float %3929, %3927
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = bitcast float %3626 to i32
  %3933 = and i32 %3932, 65535
  %3934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3933)  ; LegacyF16ToF32(value)
  %3935 = lshr i32 %3932, 16
  %3936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3935)  ; LegacyF16ToF32(value)
  %3937 = fcmp fast oge float %3934, 0.000000e+00
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = select i1 %3937, float %3934, float %3939
  %3941 = fadd fast float %3940, %3936
  %3942 = fsub fast float %3931, %3565
  %3943 = fmul fast float %3942, %3785
  %3944 = fadd fast float %3943, %3565
  %3945 = fmul fast float %3941, %3785
  %3946 = call float @dx.op.binary.f32(i32 35, float %3564, float %3945)  ; FMax(a,b)
  %3947 = call float @dx.op.binary.f32(i32 35, float %3563, float %3785)  ; FMax(a,b)
  %3948 = and i32 %3638, 16
  %3949 = icmp eq i32 %3948, 0
  br i1 %3949, label %3972, label %3950

; <label>:3950                                    ; preds = %3888
  %3951 = bitcast float %3632 to i32
  %3952 = add i32 %3629, 0
  %3953 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3952, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3954 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3953, %dx.types.Handle %3798, float %3726, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3735, float %3737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = and i32 %3951, 65535
  %3959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3958)  ; LegacyF16ToF32(value)
  %3960 = fmul fast float %3955, %3623
  %3961 = fmul fast float %3956, %3624
  %3962 = fmul fast float %3957, %3625
  %3963 = and i32 %3638, 16384
  %3964 = icmp ne i32 %3963, 0
  %3965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3966 = extractvalue %dx.types.CBufRet.f32 %3965, 0
  %3967 = select i1 %3964, float %3966, float 1.000000e+00
  %3968 = fmul fast float %3967, %3959
  %3969 = fmul fast float %3960, %3968
  %3970 = fmul fast float %3961, %3968
  %3971 = fmul fast float %3962, %3968
  br label %3972

; <label>:3972                                    ; preds = %3950, %3888
  %3973 = phi float [ %3969, %3950 ], [ 0.000000e+00, %3888 ]
  %3974 = phi float [ %3970, %3950 ], [ 0.000000e+00, %3888 ]
  %3975 = phi float [ %3971, %3950 ], [ 0.000000e+00, %3888 ]
  %3976 = fsub fast float %3973, %3568
  %3977 = fsub fast float %3974, %3569
  %3978 = fsub fast float %3975, %3570
  %3979 = fmul fast float %3976, %3785
  %3980 = fmul fast float %3977, %3785
  %3981 = fmul fast float %3978, %3785
  %3982 = fadd fast float %3979, %3568
  %3983 = fadd fast float %3980, %3569
  %3984 = fadd fast float %3981, %3570
  br label %3687

; <label>:3985                                    ; preds = %3687
  br label %3986

; <label>:3986                                    ; preds = %3985, %3506
  %3987 = phi float [ 0.000000e+00, %3506 ], [ %3688, %3985 ]
  %3988 = phi float [ %902, %3506 ], [ %3689, %3985 ]
  %3989 = phi float [ %3475, %3506 ], [ %3690, %3985 ]
  %3990 = phi float [ %3467, %3506 ], [ %3691, %3985 ]
  %3991 = phi float [ 0.000000e+00, %3506 ], [ %3692, %3985 ]
  %3992 = phi float [ 0.000000e+00, %3506 ], [ %3693, %3985 ]
  %3993 = phi float [ %3461, %3506 ], [ %3694, %3985 ]
  %3994 = phi float [ %3462, %3506 ], [ %3695, %3985 ]
  %3995 = phi float [ %3463, %3506 ], [ %3696, %3985 ]
  %3996 = phi float [ %3501, %3506 ], [ %3697, %3985 ]
  %3997 = phi float [ %3502, %3506 ], [ %3698, %3985 ]
  %3998 = phi float [ %3503, %3506 ], [ %3699, %3985 ]
  %3999 = phi float [ %3466, %3506 ], [ %3700, %3985 ]
  %4000 = phi float [ %3465, %3506 ], [ %3701, %3985 ]
  %4001 = phi float [ 0.000000e+00, %3506 ], [ %3702, %3985 ]
  %4002 = phi float [ %3464, %3506 ], [ %3703, %3985 ]
  %4003 = phi float [ %3458, %3506 ], [ %3704, %3985 ]
  %4004 = phi float [ %3459, %3506 ], [ %3705, %3985 ]
  %4005 = phi float [ %3460, %3506 ], [ %3706, %3985 ]
  %4006 = call float @dx.op.dot3.f32(i32 55, float %3996, float %3997, float %3998, float %3996, float %3997, float %3998)  ; Dot3(ax,ay,az,bx,by,bz)
  %4007 = call float @dx.op.unary.f32(i32 25, float %4006)  ; Rsqrt(value)
  %4008 = fmul fast float %4007, %3996
  %4009 = fmul fast float %4007, %3997
  %4010 = fmul fast float %4007, %3998
  %4011 = fadd fast float %4001, %902
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = call float @dx.op.dot3.f32(i32 55, float %4008, float %4009, float %4010, float %4008, float %4009, float %4010)  ; Dot3(ax,ay,az,bx,by,bz)
  %4014 = call float @dx.op.unary.f32(i32 25, float %4013)  ; Rsqrt(value)
  %4015 = fmul fast float %4014, %4008
  %4016 = fmul fast float %4014, %4009
  %4017 = fmul fast float %4014, %4010
  br label %4018

; <label>:4018                                    ; preds = %3986, %3455
  %4019 = phi float [ %4015, %3986 ], [ %3501, %3455 ]
  %4020 = phi float [ %4016, %3986 ], [ %3502, %3455 ]
  %4021 = phi float [ %4017, %3986 ], [ %3503, %3455 ]
  %4022 = phi float [ %4003, %3986 ], [ %3458, %3455 ]
  %4023 = phi float [ %4004, %3986 ], [ %3459, %3455 ]
  %4024 = phi float [ %4005, %3986 ], [ %3460, %3455 ]
  %4025 = phi float [ %3993, %3986 ], [ %3461, %3455 ]
  %4026 = phi float [ %3994, %3986 ], [ %3462, %3455 ]
  %4027 = phi float [ %3995, %3986 ], [ %3463, %3455 ]
  %4028 = phi float [ %4002, %3986 ], [ %3464, %3455 ]
  %4029 = phi float [ %4012, %3986 ], [ %902, %3455 ]
  %4030 = phi float [ %4000, %3986 ], [ %3465, %3455 ]
  %4031 = phi float [ %3999, %3986 ], [ %3466, %3455 ]
  %4032 = phi float [ %3992, %3986 ], [ 0.000000e+00, %3455 ]
  %4033 = phi float [ %3991, %3986 ], [ 0.000000e+00, %3455 ]
  %4034 = phi float [ %3987, %3986 ], [ 0.000000e+00, %3455 ]
  %4035 = phi float [ %3989, %3986 ], [ %3475, %3455 ]
  %4036 = phi float [ %3988, %3986 ], [ %902, %3455 ]
  %4037 = phi float [ %3990, %3986 ], [ %3467, %3455 ]
  %4038 = fadd fast float %4028, 0xBFB99999A0000000
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = fmul fast float %4039, 0x3FF1C71C80000000
  %4041 = call float @dx.op.binary.f32(i32 36, float %4028, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4042 = fsub fast float 1.000000e+00, %4040
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4044 = fmul fast float %4043, %4022
  %4045 = fmul fast float %4043, %4023
  %4046 = fmul fast float %4043, %4024
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = fmul fast float %4040, %4022
  %4051 = fmul fast float %4040, %4023
  %4052 = fmul fast float %4040, %4024
  %4053 = fadd fast float %4050, %4041
  %4054 = fadd fast float %4051, %4041
  %4055 = fadd fast float %4052, %4041
  %4056 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4057 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4058 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4059 = call float @dx.op.unary.f32(i32 7, float %4030)  ; Saturate(value)
  %4060 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4061 = extractvalue %dx.types.CBufRet.i32 %4060, 3
  %4062 = and i32 %4061, 8
  %4063 = icmp ne i32 %4062, 0
  %4064 = call float @dx.op.binary.f32(i32 35, float %4047, float %4022)  ; FMax(a,b)
  %4065 = call float @dx.op.binary.f32(i32 35, float %4048, float %4022)  ; FMax(a,b)
  %4066 = call float @dx.op.binary.f32(i32 35, float %4049, float %4022)  ; FMax(a,b)
  %4067 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4048, float %4049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4068 = select i1 %183, float %4022, float %4047
  %4069 = select i1 %183, float %4067, float %4048
  %4070 = select i1 %183, float 1.000000e+00, float %4049
  %4071 = select i1 %4063, float %4064, float %4068
  %4072 = select i1 %4063, float %4065, float %4069
  %4073 = select i1 %4063, float %4066, float %4070
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4077 = extractvalue %dx.types.CBufRet.f32 %4074, 2
  %4078 = fadd fast float %4075, %141
  %4079 = fadd fast float %4076, %142
  %4080 = fadd fast float %4077, %143
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 0
  %4083 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4084 = fsub fast float %4078, %4082
  %4085 = fsub fast float %4079, %4083
  %4086 = fmul fast float %4084, %4084
  %4087 = fmul fast float %4085, %4085
  %4088 = fadd fast float %4086, %4087
  %4089 = call float @dx.op.unary.f32(i32 24, float %4088)  ; Sqrt(value)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4081, 2
  %4091 = fcmp fast olt float %4089, %4090
  br i1 %4091, label %4092, label %4159

; <label>:4092                                    ; preds = %4018
  %4093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.f32 %4093, 0
  %4095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4096 = extractvalue %dx.types.CBufRet.f32 %4095, 0
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.CBufRet.f32 %4093, 1
  %4100 = extractvalue %dx.types.CBufRet.f32 %4095, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4102 = extractvalue %dx.types.CBufRet.f32 %4093, 3
  %4103 = extractvalue %dx.types.CBufRet.f32 %4095, 3
  %4104 = extractvalue %dx.types.CBufRet.f32 %4097, 3
  %4105 = fadd fast float %4102, %4078
  %4106 = fadd fast float %4103, %4079
  %4107 = fadd fast float %4104, %4080
  %4108 = fmul fast float %4105, %4094
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4096, float %4108)  ; FMad(a,b,c)
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4098, float %4109)  ; FMad(a,b,c)
  %4111 = fmul fast float %4105, %4099
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4106, float %4100, float %4111)  ; FMad(a,b,c)
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4107, float %4101, float %4112)  ; FMad(a,b,c)
  %4114 = fsub fast float %4110, %4102
  %4115 = fsub fast float %4113, %4103
  %4116 = fsub fast float %4114, %4082
  %4117 = fadd fast float %4116, %4090
  %4118 = fsub fast float %4115, %4083
  %4119 = fadd fast float %4118, %4090
  %4120 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4121 = fmul fast float %4117, %4120
  %4122 = fmul fast float %4119, %4120
  %4123 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4124 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  %4125 = fsub fast float 1.000000e+00, %4123
  %4126 = fsub fast float 1.000000e+00, %4124
  %4127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4128 = extractvalue %dx.types.ResRet.f32 %4127, 0
  %4129 = fcmp fast ugt float %4128, 0.000000e+00
  br i1 %4129, label %4130, label %4433

; <label>:4130                                    ; preds = %4092
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4133 = fmul fast float %4132, %4128
  %4134 = extractvalue %dx.types.CBufRet.f32 %4131, 3
  %4135 = fadd fast float %4134, %4133
  %4136 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4137 = fadd fast float %4135, %4104
  %4138 = fmul fast float %4110, %4098
  %4139 = call float @dx.op.tertiary.f32(i32 46, float %4113, float %4101, float %4138)  ; FMad(a,b,c)
  %4140 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4136, float %4139)  ; FMad(a,b,c)
  %4141 = fsub fast float %4140, %4104
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4144 = fsub fast float %4141, %4143
  %4145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4125, float %4126, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4150 = extractvalue %dx.types.ResRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.ResRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.ResRet.f32 %4149, 2
  %4153 = fadd fast float %4150, %4146
  %4154 = fmul fast float %4153, 0x3F847AE140000000
  %4155 = fadd fast float %4151, %4147
  %4156 = fmul fast float %4155, 0x3F847AE140000000
  %4157 = fadd fast float %4152, %4148
  %4158 = fmul fast float %4157, 0x3F847AE140000000
  br label %4433

; <label>:4159                                    ; preds = %4018
  %4160 = and i32 %159, 1
  %4161 = icmp eq i32 %4160, 0
  br i1 %4161, label %4433, label %4162

; <label>:4162                                    ; preds = %4159
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.f32 %4165, 0
  %4167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4168 = extractvalue %dx.types.CBufRet.f32 %4167, 0
  %4169 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4170 = extractvalue %dx.types.CBufRet.f32 %4165, 1
  %4171 = extractvalue %dx.types.CBufRet.f32 %4167, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4173 = extractvalue %dx.types.CBufRet.f32 %4165, 3
  %4174 = extractvalue %dx.types.CBufRet.f32 %4167, 3
  %4175 = fadd fast float %4172, %4078
  %4176 = fadd fast float %4173, %4079
  %4177 = fadd fast float %4174, %4080
  %4178 = fmul fast float %4175, %4164
  %4179 = call float @dx.op.tertiary.f32(i32 46, float %4176, float %4166, float %4178)  ; FMad(a,b,c)
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4168, float %4179)  ; FMad(a,b,c)
  %4181 = fmul fast float %4175, %4169
  %4182 = call float @dx.op.tertiary.f32(i32 46, float %4176, float %4170, float %4181)  ; FMad(a,b,c)
  %4183 = call float @dx.op.tertiary.f32(i32 46, float %4177, float %4171, float %4182)  ; FMad(a,b,c)
  %4184 = fsub fast float %4180, %4172
  %4185 = fsub fast float %4183, %4173
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4189 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4190 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4193 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4194 = extractvalue %dx.types.CBufRet.i32 %4193, 0
  %4195 = extractvalue %dx.types.CBufRet.i32 %4193, 1
  %4196 = udiv i32 %4195, %4194
  %4197 = fsub fast float %4184, %4187
  %4198 = fsub fast float %4185, %4188
  %4199 = call float @dx.op.binary.f32(i32 35, float %4197, float 0.000000e+00)  ; FMax(a,b)
  %4200 = call float @dx.op.binary.f32(i32 35, float %4198, float 0.000000e+00)  ; FMax(a,b)
  %4201 = call float @dx.op.binary.f32(i32 36, float %4199, float %4189)  ; FMin(a,b)
  %4202 = call float @dx.op.binary.f32(i32 36, float %4200, float %4190)  ; FMin(a,b)
  %4203 = add i32 %4194, -1
  %4204 = add i32 %4196, -1
  %4205 = fmul fast float %4201, %4192
  %4206 = fmul fast float %4202, %4192
  %4207 = fptoui float %4205 to i32
  %4208 = fptoui float %4206 to i32
  %4209 = call i32 @dx.op.binary.i32(i32 40, i32 %4207, i32 %4203)  ; UMin(a,b)
  %4210 = call i32 @dx.op.binary.i32(i32 40, i32 %4208, i32 %4204)  ; UMin(a,b)
  %4211 = mul i32 %4210, %4194
  %4212 = add i32 %4211, %4209
  %4213 = shl i32 %4212, 2
  %4214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.i32 %4214, 0
  %4216 = icmp eq i32 %4215, -1
  br i1 %4216, label %4433, label %4217

; <label>:4217                                    ; preds = %4162
  %4218 = mul i32 %4215, 148
  %4219 = add i32 %4218, 4
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = add i32 %4218, 8
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4218, 36
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = add i32 %4218, 60
  %4229 = add i32 %4218, 92
  %4230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4229, i32 undef)  ; BufferLoad(srv,index,wot)
  %4231 = extractvalue %dx.types.ResRet.i32 %4230, 0
  %4232 = add i32 %4218, 116
  %4233 = fsub fast float %4184, %4221
  %4234 = fsub fast float %4185, %4224
  %4235 = fmul fast float %4192, %4233
  %4236 = fmul fast float %4192, %4234
  %4237 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4238 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4239 = fsub fast float 1.000000e+00, %4238
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 2
  %4242 = call float @dx.op.unary.f32(i32 83, float %4237)  ; DerivCoarseX(value)
  %4243 = call float @dx.op.unary.f32(i32 83, float %4239)  ; DerivCoarseX(value)
  %4244 = call float @dx.op.unary.f32(i32 84, float %4237)  ; DerivCoarseY(value)
  %4245 = call float @dx.op.unary.f32(i32 84, float %4239)  ; DerivCoarseY(value)
  %4246 = fmul fast float %4242, %4241
  %4247 = fmul fast float %4243, %4241
  %4248 = fmul fast float %4244, %4241
  %4249 = fmul fast float %4245, %4241
  %4250 = call float @dx.op.dot2.f32(i32 54, float %4248, float %4249, float %4248, float %4249)  ; Dot2(ax,ay,bx,by)
  %4251 = call float @dx.op.dot2.f32(i32 54, float %4246, float %4247, float %4246, float %4247)  ; Dot2(ax,ay,bx,by)
  %4252 = call float @dx.op.binary.f32(i32 35, float %4251, float %4250)  ; FMax(a,b)
  %4253 = call float @dx.op.unary.f32(i32 23, float %4252)  ; Log(value)
  %4254 = fmul fast float %4253, 5.000000e-01
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4257 = fadd fast float %4256, %4254
  %4258 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4261 = fadd fast float %4260, %4258
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 3
  %4264 = fadd fast float %4261, %4263
  %4265 = add i32 %4231, 0
  %4266 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4265, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4267 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4266, i32 0)  ; GetDimensions(handle,mipLevel)
  %4268 = extractvalue %dx.types.Dimensions %4267, 0
  %4269 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4268)  ; FirstbitLo(value)
  %4270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.i32 %4270, 1
  %4272 = sub nsw i32 %4271, %4269
  %4273 = sitofp i32 %4272 to float
  %4274 = fsub fast float %4264, %4273
  %4275 = call float @dx.op.binary.f32(i32 35, float %4274, float 0.000000e+00)  ; FMax(a,b)
  %4276 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4266, %dx.types.Handle %37, float %4237, float %4239, float %4227, float undef, i32 0, i32 0, i32 undef, float %4275)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  %4278 = fcmp ule float %4277, 0x3FE0101020000000
  %4279 = extractvalue %dx.types.CBufRet.i32 %4270, 0
  %4280 = and i32 %4279, 128
  %4281 = icmp ne i32 %4280, 0
  %4282 = and i1 %4278, %4281
  br i1 %4282, label %4433, label %4283

; <label>:4283                                    ; preds = %4217
  %4284 = add i32 %4218, 20
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4218, 24
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = add i32 %4218, 40
  %4291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = add i32 %4218, 96
  %4294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.i32 %4294, 0
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 2
  %4298 = fmul fast float %4297, %4237
  %4299 = fmul fast float %4297, %4239
  %4300 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4301 = fadd fast float %4298, %4300
  %4302 = fadd fast float %4299, %4300
  %4303 = add i32 %4295, 0
  %4304 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4303, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4305 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4304, i32 0)  ; GetDimensions(handle,mipLevel)
  %4306 = extractvalue %dx.types.Dimensions %4305, 0
  %4307 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4306)  ; FirstbitLo(value)
  %4308 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.i32 %4308, 1
  %4310 = sub nsw i32 %4309, %4307
  %4311 = sitofp i32 %4310 to float
  %4312 = fsub fast float %4261, %4311
  %4313 = call float @dx.op.binary.f32(i32 35, float %4312, float 0.000000e+00)  ; FMax(a,b)
  %4314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4304, %dx.types.Handle %37, float %4301, float %4302, float %4292, float undef, i32 0, i32 0, i32 undef, float %4313)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4315 = extractvalue %dx.types.ResRet.f32 %4314, 0
  %4316 = fmul fast float %4315, %4286
  %4317 = fadd fast float %4316, %4289
  %4318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4319 = extractvalue %dx.types.CBufRet.f32 %4318, 0
  %4320 = extractvalue %dx.types.CBufRet.f32 %4318, 1
  %4321 = extractvalue %dx.types.CBufRet.f32 %4318, 2
  %4322 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4323 = extractvalue %dx.types.CBufRet.f32 %4322, 3
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 3
  %4326 = extractvalue %dx.types.CBufRet.f32 %4318, 3
  %4327 = fadd fast float %4323, %4184
  %4328 = fadd fast float %4325, %4185
  %4329 = fadd fast float %4317, %4326
  %4330 = fmul fast float %4327, %4319
  %4331 = call float @dx.op.tertiary.f32(i32 46, float %4328, float %4320, float %4330)  ; FMad(a,b,c)
  %4332 = call float @dx.op.tertiary.f32(i32 46, float %4329, float %4321, float %4331)  ; FMad(a,b,c)
  %4333 = fsub fast float %4332, %4326
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 2
  %4336 = fsub fast float %4333, %4335
  %4337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.i32 %4337, 0
  %4339 = call i32 @dx.op.binary.i32(i32 40, i32 %4215, i32 %4338)  ; UMin(a,b)
  %4340 = mul i32 %4339, 36
  %4341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4340, i32 undef)  ; BufferLoad(srv,index,wot)
  %4342 = extractvalue %dx.types.ResRet.i32 %4341, 0
  %4343 = add i32 %4340, 4
  %4344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4345 = extractvalue %dx.types.CBufRet.f32 %4344, 0
  %4346 = fmul fast float %4345, %4237
  %4347 = fmul fast float %4345, %4239
  %4348 = extractvalue %dx.types.CBufRet.f32 %4344, 1
  %4349 = fadd fast float %4346, %4348
  %4350 = fadd fast float %4347, %4348
  %4351 = icmp eq i32 %4342, 0
  br i1 %4351, label %4420, label %4352

; <label>:4352                                    ; preds = %4283
  br label %4353

; <label>:4353                                    ; preds = %4410, %4352
  %4354 = phi float [ %4411, %4410 ], [ 0.000000e+00, %4352 ]
  %4355 = phi float [ %4412, %4410 ], [ 0.000000e+00, %4352 ]
  %4356 = phi float [ %4413, %4410 ], [ 0.000000e+00, %4352 ]
  %4357 = phi float [ %4414, %4410 ], [ 0.000000e+00, %4352 ]
  %4358 = phi float [ %4415, %4410 ], [ 0.000000e+00, %4352 ]
  %4359 = phi float [ %4416, %4410 ], [ 0.000000e+00, %4352 ]
  %4360 = phi i32 [ %4417, %4410 ], [ 0, %4352 ]
  %4361 = shl i32 %4360, 2
  %4362 = add i32 %4228, %4361
  %4363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 0
  %4365 = add i32 %4232, %4361
  %4366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.i32 %4366, 0
  %4368 = add i32 %4367, 0
  %4369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4368, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4370 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4369, i32 0)  ; GetDimensions(handle,mipLevel)
  %4371 = extractvalue %dx.types.Dimensions %4370, 0
  %4372 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4371)  ; FirstbitLo(value)
  %4373 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4374 = extractvalue %dx.types.CBufRet.i32 %4373, 1
  %4375 = sub nsw i32 %4374, %4372
  %4376 = sitofp i32 %4375 to float
  %4377 = fsub fast float %4261, %4376
  %4378 = call float @dx.op.binary.f32(i32 35, float %4377, float 0.000000e+00)  ; FMax(a,b)
  %4379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4369, %dx.types.Handle %37, float %4349, float %4350, float %4364, float undef, i32 0, i32 0, i32 undef, float %4378)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4380 = extractvalue %dx.types.ResRet.f32 %4379, 0
  %4381 = fcmp fast ogt float %4380, 0.000000e+00
  br i1 %4381, label %4382, label %4410

; <label>:4382                                    ; preds = %4353
  %4383 = add i32 %4343, %4361
  %4384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4383, i32 undef)  ; BufferLoad(srv,index,wot)
  %4385 = extractvalue %dx.types.ResRet.i32 %4384, 0
  %4386 = and i32 %4385, 32767
  %4387 = mul nuw nsw i32 %4386, 928
  %4388 = add nuw nsw i32 %4387, 48
  %4389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.ResRet.f32 %4389, 1
  %4392 = extractvalue %dx.types.ResRet.f32 %4389, 2
  %4393 = add nuw nsw i32 %4387, 60
  %4394 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4393, i32 undef)  ; BufferLoad(srv,index,wot)
  %4395 = extractvalue %dx.types.ResRet.f32 %4394, 0
  %4396 = extractvalue %dx.types.ResRet.f32 %4394, 1
  %4397 = extractvalue %dx.types.ResRet.f32 %4394, 2
  %4398 = fmul fast float %4390, %4380
  %4399 = fmul fast float %4391, %4380
  %4400 = fmul fast float %4392, %4380
  %4401 = fadd fast float %4398, %4354
  %4402 = fadd fast float %4399, %4355
  %4403 = fadd fast float %4400, %4356
  %4404 = fmul fast float %4395, %4380
  %4405 = fmul fast float %4396, %4380
  %4406 = fmul fast float %4397, %4380
  %4407 = fadd fast float %4404, %4357
  %4408 = fadd fast float %4405, %4358
  %4409 = fadd fast float %4406, %4359
  br label %4410

; <label>:4410                                    ; preds = %4382, %4353
  %4411 = phi float [ %4401, %4382 ], [ %4354, %4353 ]
  %4412 = phi float [ %4402, %4382 ], [ %4355, %4353 ]
  %4413 = phi float [ %4403, %4382 ], [ %4356, %4353 ]
  %4414 = phi float [ %4407, %4382 ], [ %4357, %4353 ]
  %4415 = phi float [ %4408, %4382 ], [ %4358, %4353 ]
  %4416 = phi float [ %4409, %4382 ], [ %4359, %4353 ]
  %4417 = add nuw i32 %4360, 1
  %4418 = icmp eq i32 %4417, %4342
  br i1 %4418, label %4419, label %4353

; <label>:4419                                    ; preds = %4410
  br label %4420

; <label>:4420                                    ; preds = %4419, %4283
  %4421 = phi float [ 0.000000e+00, %4283 ], [ %4411, %4419 ]
  %4422 = phi float [ 0.000000e+00, %4283 ], [ %4412, %4419 ]
  %4423 = phi float [ 0.000000e+00, %4283 ], [ %4413, %4419 ]
  %4424 = phi float [ 0.000000e+00, %4283 ], [ %4414, %4419 ]
  %4425 = phi float [ 0.000000e+00, %4283 ], [ %4415, %4419 ]
  %4426 = phi float [ 0.000000e+00, %4283 ], [ %4416, %4419 ]
  %4427 = fadd fast float %4424, %4421
  %4428 = fmul fast float %4427, 0x3F847AE140000000
  %4429 = fadd fast float %4425, %4422
  %4430 = fmul fast float %4429, 0x3F847AE140000000
  %4431 = fadd fast float %4426, %4423
  %4432 = fmul fast float %4431, 0x3F847AE140000000
  br label %4433

; <label>:4433                                    ; preds = %4420, %4217, %4162, %4159, %4130, %4092
  %4434 = phi float [ %4144, %4130 ], [ -1.310720e+05, %4092 ], [ %4336, %4420 ], [ -1.310720e+05, %4162 ], [ -1.310720e+05, %4217 ], [ -1.310720e+05, %4159 ]
  %4435 = phi float [ %4154, %4130 ], [ 0.000000e+00, %4092 ], [ %4428, %4420 ], [ 0.000000e+00, %4162 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4159 ]
  %4436 = phi float [ %4156, %4130 ], [ 0.000000e+00, %4092 ], [ %4430, %4420 ], [ 0.000000e+00, %4162 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4159 ]
  %4437 = phi float [ %4158, %4130 ], [ 0.000000e+00, %4092 ], [ %4432, %4420 ], [ 0.000000e+00, %4162 ], [ 0.000000e+00, %4217 ], [ 0.000000e+00, %4159 ]
  %4438 = phi i1 [ true, %4130 ], [ false, %4092 ], [ true, %4420 ], [ false, %4162 ], [ false, %4217 ], [ false, %4159 ]
  %4439 = and i32 %159, 3
  %4440 = icmp eq i32 %4439, 1
  %4441 = select i1 %4440, float 1.000000e+00, float 0.000000e+00
  %4442 = fsub fast float %4434, %143
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = select i1 %4438, float %4443, float 1.000000e+00
  %4445 = fmul fast float %4444, %4441
  %4446 = icmp eq i32 %4439, 3
  %4447 = select i1 %4446, float 1.000000e+00, float %4445
  %4448 = call float @dx.op.binary.f32(i32 35, float %4034, float %4447)  ; FMax(a,b)
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = fcmp fast une float %4449, 0.000000e+00
  %4451 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4452 = call float @dx.op.unary.f32(i32 25, float %4451)  ; Rsqrt(value)
  br i1 %4450, label %4460, label %4453

; <label>:4453                                    ; preds = %4433
  %4454 = fmul fast float %4452, %141
  %4455 = fmul fast float %4452, %142
  %4456 = fmul fast float %4452, %143
  %4457 = fsub fast float -0.000000e+00, %4454
  %4458 = fsub fast float -0.000000e+00, %4455
  %4459 = fsub fast float -0.000000e+00, %4456
  br label %4628

; <label>:4460                                    ; preds = %4433
  %4461 = fmul fast float %141, %4452
  %4462 = fsub fast float -0.000000e+00, %4461
  %4463 = fmul fast float %142, %4452
  %4464 = fsub fast float -0.000000e+00, %4463
  %4465 = fmul fast float %143, %4452
  %4466 = fsub fast float -0.000000e+00, %4465
  %4467 = call float @dx.op.dot3.f32(i32 55, float %4462, float %4464, float %4466, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4468 = fmul fast float %4449, 2.500000e+00
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = fmul fast float %4449, 0x4013FFFFE0000000
  %4471 = fadd fast float %4470, 0xBFFFFFFFE0000000
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fmul fast float %4449, 0x4004000020000000
  %4474 = fadd fast float %4473, 0xBFF8000040000000
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = call float @dx.op.unary.f32(i32 7, float %4469)  ; Saturate(value)
  %4477 = fmul fast float %4038, 1.000000e+01
  %4478 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4479 = fmul fast float %4478, 2.000000e+00
  %4480 = fsub fast float 3.000000e+00, %4479
  %4481 = fmul fast float %4478, %4478
  %4482 = fmul fast float %4481, %4480
  %4483 = fsub fast float 1.000000e+00, %4482
  %4484 = fsub fast float 0x3FE3333340000000, %4059
  %4485 = fmul fast float %4484, 0x400AAAAAA0000000
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4483, %4486
  %4488 = fmul fast float %4071, 0x3FEA2B8620000000
  %4489 = fmul fast float %4072, 0x3FEA2B8620000000
  %4490 = fmul fast float %4073, 0x3FEA2B8620000000
  %4491 = fadd fast float %4488, 0x3FC81DFBA0000000
  %4492 = fmul fast float %4491, %4071
  %4493 = fadd fast float %4492, 0x3F910E6020000000
  %4494 = fadd fast float %4489, 0x3FC81DFBA0000000
  %4495 = fmul fast float %4494, %4072
  %4496 = fadd fast float %4495, 0x3F910E6020000000
  %4497 = fadd fast float %4490, 0x3FC81DFBA0000000
  %4498 = fmul fast float %4497, %4073
  %4499 = fadd fast float %4498, 0x3F910E6020000000
  %4500 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4501 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4502 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4503 = fsub fast float %4500, %4071
  %4504 = fsub fast float %4501, %4072
  %4505 = fsub fast float %4502, %4073
  %4506 = fmul fast float %4503, %4476
  %4507 = fmul fast float %4506, %4487
  %4508 = fmul fast float %4504, %4476
  %4509 = fmul fast float %4508, %4487
  %4510 = fmul fast float %4505, %4476
  %4511 = fmul fast float %4510, %4487
  %4512 = fadd fast float %4507, %4071
  %4513 = fadd fast float %4509, %4072
  %4514 = fadd fast float %4511, %4073
  %4515 = fmul fast float %4031, %4031
  %4516 = fmul fast float %4515, %4515
  %4517 = fadd fast float %4472, 1.000000e+00
  %4518 = fsub fast float %4517, %4487
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4522 = fsub fast float 1.000000e+00, %4516
  %4523 = call float @dx.op.binary.f32(i32 36, float %4519, float %4522)  ; FMin(a,b)
  %4524 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4525 = call float @dx.op.binary.f32(i32 35, float %4523, float %4524)  ; FMax(a,b)
  %4526 = fadd fast float %4521, 0xBFE4CCCCC0000000
  %4527 = fmul fast float %4526, 0x4006DB6DA0000000
  %4528 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4529 = fmul fast float %4528, 2.000000e+00
  %4530 = fsub fast float 3.000000e+00, %4529
  %4531 = bitcast float %4056 to i32
  %4532 = ashr i32 %4531, 1
  %4533 = add nsw i32 %4532, 532487669
  %4534 = bitcast i32 %4533 to float
  %4535 = fsub fast float 1.000000e+00, %4534
  %4536 = bitcast float %4535 to i32
  %4537 = sub nsw i32 2129859010, %4536
  %4538 = bitcast i32 %4537 to float
  %4539 = fmul fast float %4538, 2.000000e+00
  %4540 = bitcast float %4057 to i32
  %4541 = ashr i32 %4540, 1
  %4542 = add nsw i32 %4541, 532487669
  %4543 = bitcast i32 %4542 to float
  %4544 = fsub fast float 1.000000e+00, %4543
  %4545 = bitcast float %4544 to i32
  %4546 = sub nsw i32 2129859010, %4545
  %4547 = bitcast i32 %4546 to float
  %4548 = fmul fast float %4547, 2.000000e+00
  %4549 = bitcast float %4058 to i32
  %4550 = ashr i32 %4549, 1
  %4551 = add nsw i32 %4550, 532487669
  %4552 = bitcast i32 %4551 to float
  %4553 = fsub fast float 1.000000e+00, %4552
  %4554 = bitcast float %4553 to i32
  %4555 = sub nsw i32 2129859010, %4554
  %4556 = bitcast i32 %4555 to float
  %4557 = fmul fast float %4556, 2.000000e+00
  %4558 = fsub fast float 0x4002A9FBE0000000, %4539
  %4559 = fadd fast float %4539, 0x3FD54FDF00000000
  %4560 = bitcast float %4559 to i32
  %4561 = sub nsw i32 2129859010, %4560
  %4562 = bitcast i32 %4561 to float
  %4563 = fmul fast float %4562, %4558
  %4564 = fmul fast float %4563, %4563
  %4565 = fsub fast float 0x4002A9FBE0000000, %4548
  %4566 = fadd fast float %4548, 0x3FD54FDF00000000
  %4567 = bitcast float %4566 to i32
  %4568 = sub nsw i32 2129859010, %4567
  %4569 = bitcast i32 %4568 to float
  %4570 = fmul fast float %4569, %4565
  %4571 = fmul fast float %4570, %4570
  %4572 = fsub fast float 0x4002A9FBE0000000, %4557
  %4573 = fadd fast float %4557, 0x3FD54FDF00000000
  %4574 = bitcast float %4573 to i32
  %4575 = sub nsw i32 2129859010, %4574
  %4576 = bitcast i32 %4575 to float
  %4577 = fmul fast float %4576, %4572
  %4578 = fmul fast float %4577, %4577
  %4579 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4564)  ; FMax(a,b)
  %4580 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4571)  ; FMax(a,b)
  %4581 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4578)  ; FMax(a,b)
  %4582 = fsub fast float 1.000000e+00, %4467
  %4583 = fadd fast float %4582, %4483
  %4584 = call float @dx.op.unary.f32(i32 7, float %4583)  ; Saturate(value)
  %4585 = fsub fast float 1.000000e+00, %4447
  %4586 = fmul fast float %4525, %4585
  %4587 = fmul fast float %4528, %4528
  %4588 = fmul fast float %4587, %4586
  %4589 = fmul fast float %4588, %4530
  %4590 = fmul fast float %4585, 0xBFE99999A0000000
  %4591 = fmul fast float %4590, %4476
  %4592 = fmul fast float %4591, %4487
  %4593 = fadd fast float %4592, 1.000000e+00
  %4594 = fadd fast float %4059, -1.000000e+00
  %4595 = fmul fast float %4593, %4594
  %4596 = fadd fast float %4595, 1.000000e+00
  %4597 = fsub fast float %4579, %4056
  %4598 = fsub fast float %4580, %4057
  %4599 = fsub fast float %4581, %4058
  %4600 = fmul fast float %4589, %4597
  %4601 = fmul fast float %4589, %4598
  %4602 = fmul fast float %4589, %4599
  %4603 = fadd fast float %4600, %4056
  %4604 = fadd fast float %4601, %4057
  %4605 = fadd fast float %4602, %4058
  %4606 = fsub fast float %85, %4019
  %4607 = fsub fast float %86, %4020
  %4608 = fsub fast float %87, %4021
  %4609 = fmul fast float %4589, %4606
  %4610 = fmul fast float %4589, %4607
  %4611 = fmul fast float %4589, %4608
  %4612 = fadd fast float %4609, %4019
  %4613 = fadd fast float %4610, %4020
  %4614 = fadd fast float %4611, %4021
  %4615 = fmul fast float %4589, %4584
  %4616 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4617 = fsub fast float 1.000000e+00, %4616
  %4618 = fmul fast float %4615, %4617
  %4619 = fadd fast float %4618, %4616
  %4620 = fsub fast float 1.000000e+00, %4031
  %4621 = fmul fast float %4589, %4620
  %4622 = fadd fast float %4621, %4031
  %4623 = call float @dx.op.dot3.f32(i32 55, float %4612, float %4613, float %4614, float %4612, float %4613, float %4614)  ; Dot3(ax,ay,az,bx,by,bz)
  %4624 = call float @dx.op.unary.f32(i32 25, float %4623)  ; Rsqrt(value)
  %4625 = fmul fast float %4612, %4624
  %4626 = fmul fast float %4613, %4624
  %4627 = fmul fast float %4614, %4624
  br label %4628

; <label>:4628                                    ; preds = %4460, %4453
  %4629 = phi float [ %4459, %4453 ], [ %4466, %4460 ]
  %4630 = phi float [ %4458, %4453 ], [ %4464, %4460 ]
  %4631 = phi float [ %4457, %4453 ], [ %4462, %4460 ]
  %4632 = phi float [ %4456, %4453 ], [ %4465, %4460 ]
  %4633 = phi float [ %4455, %4453 ], [ %4463, %4460 ]
  %4634 = phi float [ %4454, %4453 ], [ %4461, %4460 ]
  %4635 = phi float [ %4071, %4453 ], [ %4512, %4460 ]
  %4636 = phi float [ %4072, %4453 ], [ %4513, %4460 ]
  %4637 = phi float [ %4073, %4453 ], [ %4514, %4460 ]
  %4638 = phi float [ %4019, %4453 ], [ %4625, %4460 ]
  %4639 = phi float [ %4020, %4453 ], [ %4626, %4460 ]
  %4640 = phi float [ %4021, %4453 ], [ %4627, %4460 ]
  %4641 = phi float [ %4056, %4453 ], [ %4603, %4460 ]
  %4642 = phi float [ %4057, %4453 ], [ %4604, %4460 ]
  %4643 = phi float [ %4058, %4453 ], [ %4605, %4460 ]
  %4644 = phi float [ %4059, %4453 ], [ %4619, %4460 ]
  %4645 = phi float [ %4031, %4453 ], [ %4622, %4460 ]
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4648 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4649 = fmul fast float %4647, %78
  %4650 = fmul fast float %4648, %79
  %4651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.f32 %4651, 0
  %4653 = extractvalue %dx.types.CBufRet.f32 %4651, 1
  %4654 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4649, float %4650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4655 = extractvalue %dx.types.ResRet.f32 %4654, 0
  %4656 = fmul fast float %4655, %4653
  %4657 = call float @dx.op.unary.f32(i32 7, float %4656)  ; Saturate(value)
  %4658 = fadd fast float %4657, -1.000000e+00
  %4659 = fmul fast float %4658, %4652
  %4660 = fadd fast float %4659, 1.000000e+00
  %4661 = select i1 %183, float 0.000000e+00, float %4643
  %4662 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4631, float %4630, float %4629)  ; Dot3(ax,ay,az,bx,by,bz)
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4633, float %4632, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = fmul fast float %4664, 2.000000e+00
  %4666 = fmul fast float %4665, %4638
  %4667 = fmul fast float %4665, %4639
  %4668 = fmul fast float %4665, %4640
  %4669 = fsub fast float %4634, %4666
  %4670 = fsub fast float %4633, %4667
  %4671 = fsub fast float %4632, %4668
  %4672 = call float @dx.op.binary.f32(i32 36, float %4645, float %4660)  ; FMin(a,b)
  %4673 = fsub fast float 1.000000e+00, %4672
  %4674 = bitcast float %4673 to i32
  %4675 = ashr i32 %4674, 1
  %4676 = add nsw i32 %4675, 532487669
  %4677 = bitcast i32 %4676 to float
  %4678 = fsub fast float 1.000000e+00, %4644
  %4679 = call float @dx.op.binary.f32(i32 35, float %4678, float 0x3F847AE140000000)  ; FMax(a,b)
  %4680 = fmul fast float %4679, %4679
  %4681 = fmul fast float %4680, %4680
  %4682 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4677, float %4681, float %4682, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4684 = extractvalue %dx.types.ResRet.f32 %4683, 0
  %4685 = fsub fast float 1.000000e+00, %4645
  %4686 = bitcast float %4685 to i32
  %4687 = sub nsw i32 2129859010, %4686
  %4688 = fsub fast float 1.000000e+00, %55
  %4689 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = call float @dx.op.binary.f32(i32 35, float %4689, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4691 = fdiv fast float %4688, %4690
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4693, 5.000000e-01
  %4695 = fadd fast float %4694, 5.000000e-01
  %4696 = fmul fast float %4695, %55
  %4697 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fmul fast float %4698, %4691
  %4700 = fadd fast float %4696, %4699
  %4701 = fsub fast float 5.000000e-01, %4694
  %4702 = fmul fast float %4701, %4635
  %4703 = fmul fast float %4701, %4636
  %4704 = fmul fast float %4701, %4637
  %4705 = fadd fast float %4700, %4702
  %4706 = fadd fast float %4700, %4703
  %4707 = fadd fast float %4700, %4704
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4670, float %4671, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = call float @dx.op.unary.f32(i32 7, float %4708)  ; Saturate(value)
  %4710 = fmul fast float %4709, 5.000000e-01
  %4711 = fadd fast float %4710, 5.000000e-01
  %4712 = fmul fast float %4711, %55
  %4713 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4670, float %4671, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fmul fast float %4714, %4691
  %4716 = fadd fast float %4712, %4715
  %4717 = fsub fast float 5.000000e-01, %4710
  %4718 = fmul fast float %4717, %4635
  %4719 = fmul fast float %4717, %4636
  %4720 = fmul fast float %4717, %4637
  %4721 = fadd fast float %4716, %4718
  %4722 = fadd fast float %4716, %4719
  %4723 = fadd fast float %4716, %4720
  %4724 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 0
  %4727 = call float @dx.op.binary.f32(i32 36, float %4635, float %4726)  ; FMin(a,b)
  %4728 = fmul fast float %4727, %4673
  %4729 = fsub fast float 1.000000e+00, %4728
  %4730 = bitcast float %4729 to i32
  %4731 = sub nsw i32 2129859010, %4730
  %4732 = bitcast i32 %4731 to float
  %4733 = call float @dx.op.binary.f32(i32 36, float %4636, float %4726)  ; FMin(a,b)
  %4734 = fmul fast float %4733, %4673
  %4735 = fsub fast float 1.000000e+00, %4734
  %4736 = bitcast float %4735 to i32
  %4737 = sub nsw i32 2129859010, %4736
  %4738 = bitcast i32 %4737 to float
  %4739 = call float @dx.op.binary.f32(i32 36, float %4637, float %4726)  ; FMin(a,b)
  %4740 = fmul fast float %4739, %4673
  %4741 = fsub fast float 1.000000e+00, %4740
  %4742 = bitcast float %4741 to i32
  %4743 = sub nsw i32 2129859010, %4742
  %4744 = bitcast i32 %4743 to float
  %4745 = fmul fast float %4672, %56
  %4746 = fmul fast float %4745, %4705
  %4747 = fmul fast float %4746, %4732
  %4748 = fmul fast float %4672, %57
  %4749 = fmul fast float %4748, %4706
  %4750 = fmul fast float %4749, %4738
  %4751 = fmul fast float %4672, %58
  %4752 = fmul fast float %4751, %4707
  %4753 = fmul fast float %4752, %4744
  %4754 = call float @dx.op.binary.f32(i32 36, float %4641, float %4726)  ; FMin(a,b)
  %4755 = fmul fast float %4754, %4673
  %4756 = fsub fast float 1.000000e+00, %4755
  %4757 = bitcast float %4756 to i32
  %4758 = sub nsw i32 2129859010, %4757
  %4759 = bitcast i32 %4758 to float
  %4760 = call float @dx.op.binary.f32(i32 36, float %4642, float %4726)  ; FMin(a,b)
  %4761 = fmul fast float %4760, %4673
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = bitcast float %4762 to i32
  %4764 = sub nsw i32 2129859010, %4763
  %4765 = bitcast i32 %4764 to float
  %4766 = call float @dx.op.binary.f32(i32 36, float %4661, float %4726)  ; FMin(a,b)
  %4767 = fmul fast float %4766, %4673
  %4768 = fsub fast float 1.000000e+00, %4767
  %4769 = bitcast float %4768 to i32
  %4770 = sub nsw i32 2129859010, %4769
  %4771 = bitcast i32 %4770 to float
  %4772 = fmul fast float %4745, %4721
  %4773 = fmul fast float %4772, %4759
  %4774 = fmul fast float %4748, %4722
  %4775 = fmul fast float %4774, %4765
  %4776 = fmul fast float %4751, %4723
  %4777 = fmul fast float %4776, %4771
  %4778 = call float @dx.op.dot3.f32(i32 55, float %4747, float %4750, float %4753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4779 = select i1 %183, float 0.000000e+00, float %4747
  %4780 = select i1 %183, float %4778, float %4750
  %4781 = select i1 %183, float 0.000000e+00, float %4753
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4773, float %4775, float %4777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = select i1 %183, float 0.000000e+00, float %4773
  %4784 = select i1 %183, float %4782, float %4775
  %4785 = select i1 %183, float 0.000000e+00, float %4777
  %4786 = fmul fast float %4663, 9.843750e-01
  %4787 = fmul fast float %4644, 9.843750e-01
  %4788 = fadd fast float %4786, 7.812500e-03
  %4789 = fadd fast float %4787, 7.812500e-03
  %4790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4788, float %4789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4791 = extractvalue %dx.types.ResRet.f32 %4790, 2
  %4792 = extractvalue %dx.types.ResRet.f32 %4790, 3
  %4793 = fmul fast float %4791, %4641
  %4794 = fmul fast float %4791, %4642
  %4795 = fmul fast float %4791, %4661
  %4796 = fadd fast float %4793, %4792
  %4797 = fadd fast float %4794, %4792
  %4798 = fadd fast float %4795, %4792
  %4799 = fcmp fast ogt float %4032, 0.000000e+00
  br i1 %4799, label %4800, label %4826

; <label>:4800                                    ; preds = %4628
  %4801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4032, float %4663, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.ResRet.f32 %4801, 1
  %4804 = extractvalue %dx.types.ResRet.f32 %4801, 2
  %4805 = fadd fast float %4802, -5.000000e-01
  %4806 = fadd fast float %4803, -5.000000e-01
  %4807 = fadd fast float %4804, -5.000000e-01
  %4808 = fsub fast float 1.000000e+00, %4641
  %4809 = fsub fast float 1.000000e+00, %4642
  %4810 = fsub fast float 1.000000e+00, %4661
  %4811 = fmul fast float %4641, 4.000000e+00
  %4812 = fmul fast float %4811, %4808
  %4813 = fmul fast float %4812, %4805
  %4814 = fmul fast float %4642, 4.000000e+00
  %4815 = fmul fast float %4814, %4809
  %4816 = fmul fast float %4815, %4806
  %4817 = fmul fast float %4661, 4.000000e+00
  %4818 = fmul fast float %4817, %4810
  %4819 = fmul fast float %4818, %4807
  %4820 = fadd fast float %4813, %4796
  %4821 = fadd fast float %4816, %4797
  %4822 = fadd fast float %4819, %4798
  %4823 = call float @dx.op.unary.f32(i32 7, float %4820)  ; Saturate(value)
  %4824 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4825 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  br label %4826

; <label>:4826                                    ; preds = %4800, %4628
  %4827 = phi float [ %4823, %4800 ], [ %4796, %4628 ]
  %4828 = phi float [ %4824, %4800 ], [ %4797, %4628 ]
  %4829 = phi float [ %4825, %4800 ], [ %4798, %4628 ]
  %4830 = call float @dx.op.binary.f32(i32 35, float %4828, float %4829)  ; FMax(a,b)
  %4831 = call float @dx.op.binary.f32(i32 35, float %4827, float %4830)  ; FMax(a,b)
  %4832 = fsub fast float 1.000000e+00, %4831
  %4833 = fmul fast float %4831, %4644
  %4834 = fadd fast float %4833, %4644
  %4835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.f32 %4835, 0
  %4837 = extractvalue %dx.types.CBufRet.f32 %4835, 1
  %4838 = extractvalue %dx.types.CBufRet.f32 %4835, 2
  %4839 = extractvalue %dx.types.CBufRet.f32 %4835, 3
  %4840 = fmul fast float %4834, %4836
  %4841 = fadd fast float %4840, %4837
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4843 = fmul fast float %4838, %4834
  %4844 = fadd fast float %4843, %4839
  %4845 = call float @dx.op.unary.f32(i32 7, float %4844)  ; Saturate(value)
  %4846 = fsub fast float 1.000000e+00, %4684
  %4847 = fadd fast float %4846, %4845
  %4848 = call float @dx.op.unary.f32(i32 7, float %4847)  ; Saturate(value)
  %4849 = fcmp fast olt float %4848, 1.000000e+00
  br i1 %4849, label %4850, label %5705

; <label>:4850                                    ; preds = %4826
  %4851 = fcmp fast olt float %4842, 1.000000e+00
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = fcmp fast ogt float %4853, 0.000000e+00
  %4855 = or i1 %4851, %4854
  %4856 = or i1 %4851, %4854
  %4857 = xor i1 %4856, true
  %4858 = zext i1 %4857 to i32
  br i1 %4855, label %4859, label %5102

; <label>:4859                                    ; preds = %4850
  %4860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4861 = extractvalue %dx.types.CBufRet.f32 %4860, 0
  %4862 = extractvalue %dx.types.CBufRet.f32 %4860, 1
  %4863 = extractvalue %dx.types.CBufRet.f32 %4860, 2
  %4864 = extractvalue %dx.types.CBufRet.f32 %4860, 3
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4868 = extractvalue %dx.types.CBufRet.f32 %4865, 2
  %4869 = extractvalue %dx.types.CBufRet.f32 %4865, 3
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4872 = extractvalue %dx.types.CBufRet.f32 %4870, 1
  %4873 = extractvalue %dx.types.CBufRet.f32 %4870, 2
  %4874 = extractvalue %dx.types.CBufRet.f32 %4870, 3
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 0
  %4877 = extractvalue %dx.types.CBufRet.f32 %4875, 1
  %4878 = extractvalue %dx.types.CBufRet.f32 %4875, 2
  %4879 = extractvalue %dx.types.CBufRet.f32 %4875, 3
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 0
  %4882 = extractvalue %dx.types.CBufRet.f32 %4880, 1
  %4883 = extractvalue %dx.types.CBufRet.f32 %4880, 2
  %4884 = extractvalue %dx.types.CBufRet.f32 %4880, 3
  %4885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4886 = extractvalue %dx.types.CBufRet.f32 %4885, 0
  %4887 = extractvalue %dx.types.CBufRet.f32 %4885, 1
  %4888 = extractvalue %dx.types.CBufRet.f32 %4885, 2
  %4889 = extractvalue %dx.types.CBufRet.f32 %4885, 3
  %4890 = call float @dx.op.dot3.f32(i32 55, float %4886, float %4887, float %4888, float %4669, float %4670, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %4891 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = call float @dx.op.unary.f32(i32 6, float %4891)  ; FAbs(value)
  %4893 = fmul fast float %4892, 8.000000e+00
  %4894 = fadd fast float %4893, -6.000000e+00
  %4895 = call float @dx.op.unary.f32(i32 7, float %4894)  ; Saturate(value)
  %4896 = fmul fast float %4890, 8.000000e+00
  %4897 = fmul fast float %4896, %4853
  %4898 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4899 = fcmp fast ogt float %4898, 0.000000e+00
  br i1 %4899, label %4900, label %5077, !dx.controlflow.hints !82

; <label>:4900                                    ; preds = %4859
  %4901 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4902 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4903 = fsub fast float %4901, %4902
  %4904 = fmul fast float %4903, %4644
  %4905 = fadd fast float %4904, %4902
  %4906 = fmul fast float %196, 2.000000e+00
  %4907 = fmul fast float %197, 2.000000e+00
  %4908 = fadd fast float %4906, -1.000000e+00
  %4909 = fadd fast float %4907, -1.000000e+00
  %4910 = fmul fast float %4905, %4908
  %4911 = fmul fast float %4905, %4909
  %4912 = fadd fast float %4910, %78
  %4913 = fadd fast float %4911, %79
  %4914 = fmul fast float %4912, %4647
  %4915 = fmul fast float %4913, %4648
  %4916 = fadd fast float %4644, 0xBFE3333340000000
  %4917 = fmul fast float %4916, 0x4004000020000000
  %4918 = fsub fast float 1.000000e+00, %4917
  %4919 = call float @dx.op.unary.f32(i32 7, float %4918)  ; Saturate(value)
  %4920 = fmul fast float %4919, 3.000000e+00
  %4921 = fadd fast float %4920, %196
  %4922 = call float @dx.op.unary.f32(i32 27, float %4921)  ; Round_ni(value)
  %4923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4914, float %4915, float %4922, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4924 = extractvalue %dx.types.ResRet.f32 %4923, 0
  %4925 = fcmp fast une float %4924, 0xFFF0000000000000
  %4926 = fcmp fast une float %4924, 0x7FF0000000000000
  %4927 = and i1 %4925, %4926
  %4928 = fcmp fast olt float %4924, 0.000000e+00
  %4929 = call float @dx.op.unary.f32(i32 6, float %4924)  ; FAbs(value)
  %4930 = fsub fast float 1.000000e+00, %4929
  %4931 = select i1 %4927, float 1.000000e+00, float 0.000000e+00
  %4932 = fmul fast float %4931, %4898
  %4933 = fcmp fast ogt float %4932, 0.000000e+00
  br i1 %4933, label %4934, label %5077, !dx.controlflow.hints !83

; <label>:4934                                    ; preds = %4900
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4937 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4938 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4939 = select i1 %4928, float 0.000000e+00, float %4936
  %4940 = select i1 %4928, float 0.000000e+00, float %4937
  %4941 = select i1 %4928, float 0.000000e+00, float %4938
  %4942 = select i1 %4928, float %4861, float %4876
  %4943 = select i1 %4928, float %4866, float %4881
  %4944 = select i1 %4928, float %4871, float %4886
  %4945 = select i1 %4928, float %4862, float %4877
  %4946 = select i1 %4928, float %4867, float %4882
  %4947 = select i1 %4928, float %4872, float %4887
  %4948 = select i1 %4928, float %4863, float %4878
  %4949 = select i1 %4928, float %4868, float %4883
  %4950 = select i1 %4928, float %4873, float %4888
  %4951 = select i1 %4928, float %4864, float %4879
  %4952 = select i1 %4928, float %4869, float %4884
  %4953 = select i1 %4928, float %4874, float %4889
  %4954 = fadd fast float %4939, %141
  %4955 = fadd fast float %4940, %142
  %4956 = fadd fast float %4941, %143
  %4957 = fmul fast float %4954, %4942
  %4958 = call float @dx.op.tertiary.f32(i32 46, float %4955, float %4945, float %4957)  ; FMad(a,b,c)
  %4959 = call float @dx.op.tertiary.f32(i32 46, float %4956, float %4948, float %4958)  ; FMad(a,b,c)
  %4960 = fadd fast float %4959, %4951
  %4961 = fmul fast float %4954, %4943
  %4962 = call float @dx.op.tertiary.f32(i32 46, float %4955, float %4946, float %4961)  ; FMad(a,b,c)
  %4963 = call float @dx.op.tertiary.f32(i32 46, float %4956, float %4949, float %4962)  ; FMad(a,b,c)
  %4964 = fadd fast float %4963, %4952
  %4965 = fmul fast float %4954, %4944
  %4966 = call float @dx.op.tertiary.f32(i32 46, float %4955, float %4947, float %4965)  ; FMad(a,b,c)
  %4967 = call float @dx.op.tertiary.f32(i32 46, float %4956, float %4950, float %4966)  ; FMad(a,b,c)
  %4968 = fadd fast float %4967, %4953
  %4969 = fdiv fast float 1.000000e+00, %4968
  %4970 = fmul fast float %4969, %4960
  %4971 = fmul fast float %4969, %4964
  %4972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4973 = extractvalue %dx.types.CBufRet.f32 %4972, 0
  %4974 = extractvalue %dx.types.CBufRet.f32 %4972, 1
  %4975 = fmul fast float %4970, %4973
  %4976 = fmul fast float %4971, %4974
  %4977 = extractvalue %dx.types.CBufRet.f32 %4972, 2
  %4978 = extractvalue %dx.types.CBufRet.f32 %4972, 3
  %4979 = fadd fast float %4975, %4977
  %4980 = fadd fast float %4976, %4978
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4983 = fmul fast float %4982, %4669
  %4984 = fmul fast float %4982, %4670
  %4985 = fmul fast float %4982, %4671
  %4986 = fadd fast float %4983, %4954
  %4987 = fadd fast float %4984, %4955
  %4988 = fadd fast float %4985, %4956
  %4989 = fmul fast float %4986, %4942
  %4990 = call float @dx.op.tertiary.f32(i32 46, float %4987, float %4945, float %4989)  ; FMad(a,b,c)
  %4991 = call float @dx.op.tertiary.f32(i32 46, float %4988, float %4948, float %4990)  ; FMad(a,b,c)
  %4992 = fadd fast float %4991, %4951
  %4993 = fmul fast float %4986, %4943
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4987, float %4946, float %4993)  ; FMad(a,b,c)
  %4995 = call float @dx.op.tertiary.f32(i32 46, float %4988, float %4949, float %4994)  ; FMad(a,b,c)
  %4996 = fadd fast float %4995, %4952
  %4997 = fmul fast float %4986, %4944
  %4998 = call float @dx.op.tertiary.f32(i32 46, float %4987, float %4947, float %4997)  ; FMad(a,b,c)
  %4999 = call float @dx.op.tertiary.f32(i32 46, float %4988, float %4950, float %4998)  ; FMad(a,b,c)
  %5000 = fadd fast float %4999, %4953
  %5001 = fdiv fast float 1.000000e+00, %5000
  %5002 = fmul fast float %5001, %4992
  %5003 = fmul fast float %5001, %4996
  %5004 = fmul fast float %4979, 2.000000e+00
  %5005 = fadd fast float %5004, -1.000000e+00
  %5006 = call float @dx.op.unary.f32(i32 6, float %5005)  ; FAbs(value)
  %5007 = fmul fast float %5006, 5.000000e+00
  %5008 = fadd fast float %5007, -4.000000e+00
  %5009 = call float @dx.op.unary.f32(i32 7, float %5008)  ; Saturate(value)
  %5010 = fmul fast float %5009, %4895
  %5011 = fsub fast float %4970, %5002
  %5012 = fmul fast float %4973, %5011
  %5013 = fmul fast float %5010, %5012
  %5014 = fsub fast float %5002, %4970
  %5015 = fmul fast float %4973, %5014
  %5016 = fadd fast float %5015, %5013
  %5017 = fsub fast float %5003, %4971
  %5018 = fmul fast float %4974, %5017
  %5019 = fmul fast float %5016, %4930
  %5020 = fmul fast float %5018, %4930
  %5021 = fadd fast float %5019, %4979
  %5022 = fadd fast float %5020, %4980
  %5023 = fsub fast float %5001, %4969
  %5024 = fmul fast float %5023, %4930
  %5025 = fadd fast float %5024, %4969
  %5026 = fdiv fast float 1.000000e+00, %5025
  %5027 = fadd fast float %4644, -1.000000e+00
  %5028 = fsub fast float %5026, %4968
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5031 = fmul fast float %5030, %5026
  %5032 = fdiv fast float 1.600000e+02, %5031
  %5033 = fmul fast float %5027, %5027
  %5034 = fmul fast float %5033, 0xBFB5B17960000000
  %5035 = fmul fast float %5034, %5028
  %5036 = fmul fast float %5035, %5032
  %5037 = call float @dx.op.unary.f32(i32 21, float %5036)  ; Exp(value)
  %5038 = fmul fast float %5037, 0x3FF04B2960000000
  %5039 = fsub fast float 0x3FF04B2960000000, %5038
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = fmul fast float %5040, 4.000000e+00
  %5042 = fadd fast float %196, -5.000000e-01
  %5043 = fadd fast float %197, -5.000000e-01
  %5044 = fmul fast float %5040, 0x3FBEB851E0000000
  %5045 = call float @dx.op.unary.f32(i32 7, float %5044)  ; Saturate(value)
  %5046 = fmul fast float %5045, %5042
  %5047 = fmul fast float %5045, %5043
  %5048 = fadd fast float %5021, %5046
  %5049 = fadd fast float %5022, %5047
  %5050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5048, float %5049, float undef, float undef, i32 0, i32 0, i32 undef, float %5041)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5051 = extractvalue %dx.types.ResRet.f32 %5050, 0
  %5052 = extractvalue %dx.types.ResRet.f32 %5050, 1
  %5053 = extractvalue %dx.types.ResRet.f32 %5050, 2
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 2
  %5056 = fmul fast float %5055, %5051
  %5057 = fmul fast float %5055, %5052
  %5058 = fmul fast float %5055, %5053
  %5059 = select i1 %183, float 0.000000e+00, float %5057
  %5060 = select i1 %183, float 0.000000e+00, float %5058
  %5061 = fmul fast float %5048, 2.000000e+00
  %5062 = fmul fast float %5049, 2.000000e+00
  %5063 = fadd fast float %5061, -1.000000e+00
  %5064 = fadd fast float %5062, -1.000000e+00
  %5065 = fmul fast float %5063, %5063
  %5066 = fsub fast float 1.000000e+00, %5065
  %5067 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5068 = fsub fast float 1.000000e+00, %5067
  %5069 = fmul fast float %5068, %4895
  %5070 = fadd fast float %5069, %5067
  %5071 = fmul fast float %5064, %5064
  %5072 = fsub fast float 1.000000e+00, %5071
  %5073 = call float @dx.op.unary.f32(i32 7, float %5072)  ; Saturate(value)
  %5074 = fmul fast float %5070, %5073
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5075, %4932
  br label %5077

; <label>:5077                                    ; preds = %4934, %4900, %4859
  %5078 = phi float [ %5056, %4934 ], [ 0.000000e+00, %4900 ], [ 0.000000e+00, %4859 ]
  %5079 = phi float [ %5059, %4934 ], [ 0.000000e+00, %4900 ], [ 0.000000e+00, %4859 ]
  %5080 = phi float [ %5060, %4934 ], [ 0.000000e+00, %4900 ], [ 0.000000e+00, %4859 ]
  %5081 = phi float [ %5076, %4934 ], [ 0.000000e+00, %4900 ], [ 0.000000e+00, %4859 ]
  %5082 = fcmp fast olt float %5081, 1.000000e+00
  %5083 = or i1 %5082, %4857
  %5084 = zext i1 %5083 to i32
  %5085 = fmul fast float %5081, %4842
  %5086 = fsub fast float %5081, %5085
  %5087 = fsub fast float 1.000000e+00, %4848
  %5088 = fmul fast float %5086, %5087
  %5089 = fadd fast float %5088, %4848
  %5090 = fsub fast float %5089, %5086
  %5091 = call float @dx.op.unary.f32(i32 7, float %5090)  ; Saturate(value)
  %5092 = fmul fast float %5091, %4783
  %5093 = fmul fast float %5091, %4784
  %5094 = fmul fast float %5091, %4785
  %5095 = fsub fast float -0.000000e+00, %5089
  %5096 = fmul fast float %5086, %5078
  %5097 = fmul fast float %5086, %5079
  %5098 = fmul fast float %5086, %5080
  %5099 = fadd fast float %5096, %5092
  %5100 = fadd fast float %5097, %5093
  %5101 = fadd fast float %5098, %5094
  br label %5102

; <label>:5102                                    ; preds = %5077, %4850
  %5103 = phi float [ %4848, %4850 ], [ %5095, %5077 ]
  %5104 = phi float [ %4783, %4850 ], [ %5099, %5077 ]
  %5105 = phi float [ %4784, %4850 ], [ %5100, %5077 ]
  %5106 = phi float [ %4785, %4850 ], [ %5101, %5077 ]
  %5107 = phi i32 [ %4858, %4850 ], [ %5084, %5077 ]
  %5108 = icmp eq i32 %5107, 0
  br i1 %5108, label %5705, label %5109

; <label>:5109                                    ; preds = %5102
  %5110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5111 = extractvalue %dx.types.CBufRet.f32 %5110, 2
  %5112 = extractvalue %dx.types.CBufRet.f32 %5110, 3
  %5113 = fmul fast float %5111, %78
  %5114 = fmul fast float %5112, %79
  %5115 = fptoui float %5113 to i32
  %5116 = fptoui float %5114 to i32
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5120 = extractvalue %dx.types.CBufRet.f32 %5117, 3
  %5121 = fadd fast float %73, -4.000000e+00
  %5122 = call float @dx.op.binary.f32(i32 35, float %5121, float 0.000000e+00)  ; FMax(a,b)
  %5123 = fadd fast float %5122, %5118
  %5124 = fmul fast float %5123, %5119
  %5125 = call float @dx.op.unary.f32(i32 23, float %5124)  ; Log(value)
  %5126 = fmul fast float %5125, %5120
  %5127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.f32 %5127, 2
  %5129 = fmul fast float %5126, %5128
  %5130 = call float @dx.op.unary.f32(i32 7, float %5129)  ; Saturate(value)
  %5131 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.i32 %5131, 1
  %5133 = add i32 %5132, -1
  %5134 = uitofp i32 %5132 to float
  %5135 = fmul fast float %5134, %5130
  %5136 = fptoui float %5135 to i32
  %5137 = call i32 @dx.op.binary.i32(i32 40, i32 %5136, i32 %5133)  ; UMin(a,b)
  %5138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.i32 %5138, 2
  %5140 = extractvalue %dx.types.CBufRet.i32 %5138, 3
  %5141 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5116, i32 %5139, i32 %5115)  ; UMad(a,b,c)
  %5142 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5137, i32 %5140, i32 %5141)  ; UMad(a,b,c)
  %5143 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5144 = fptoui float %5143 to i32
  %5145 = lshr i32 %5144, 5
  %5146 = call i32 @dx.op.binary.i32(i32 40, i32 %5145, i32 8191)  ; UMin(a,b)
  %5147 = fcmp fast ogt float %4443, 0.000000e+00
  %5148 = fcmp fast ogt float %4671, 0.000000e+00
  %5149 = and i1 %5148, %5147
  br i1 %5149, label %5150, label %5179

; <label>:5150                                    ; preds = %5109
  %5151 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4670, float %4671, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = call float @dx.op.binary.f32(i32 35, float %5151, float -1.000000e+00)  ; FMax(a,b)
  %5153 = call float @dx.op.binary.f32(i32 36, float %5152, float 1.000000e+00)  ; FMin(a,b)
  %5154 = fmul fast float %5153, %5153
  %5155 = fsub fast float 1.000000e+00, %5154
  %5156 = fmul fast float %5155, 0x3FFC6E2300000000
  %5157 = fsub fast float 1.000000e+00, %5156
  %5158 = fcmp fast ogt float %5157, 0.000000e+00
  %5159 = call float @dx.op.unary.f32(i32 24, float %5157)  ; Sqrt(value)
  %5160 = fsub fast float 1.000000e+00, %5159
  %5161 = call float @dx.op.unary.f32(i32 23, float %5160)  ; Log(value)
  %5162 = fmul fast float %5161, 5.000000e+00
  %5163 = call float @dx.op.unary.f32(i32 21, float %5162)  ; Exp(value)
  %5164 = fmul fast float %5163, 0x3FEF591A60000000
  %5165 = fadd fast float %5164, 0x3F94DCB540000000
  %5166 = select i1 %5158, float %5165, float 1.000000e+00
  %5167 = fcmp fast oge float %5166, 1.000000e+00
  %5168 = fmul fast float %5151, 2.000000e+00
  %5169 = fadd fast float %5168, %4671
  %5170 = select i1 %5167, float %5169, float %4671
  %5171 = fsub fast float %5170, %4671
  %5172 = fmul fast float %5171, %4443
  %5173 = fadd fast float %5172, %4671
  %5174 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4670, float %5173, float %4669, float %4670, float %5173)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = call float @dx.op.unary.f32(i32 25, float %5174)  ; Rsqrt(value)
  %5176 = fmul fast float %5175, %4669
  %5177 = fmul fast float %5175, %4670
  %5178 = fmul fast float %5173, %5175
  br label %5179

; <label>:5179                                    ; preds = %5150, %5109
  %5180 = phi float [ %5176, %5150 ], [ %4669, %5109 ]
  %5181 = phi float [ %5177, %5150 ], [ %4670, %5109 ]
  %5182 = phi float [ %5178, %5150 ], [ %4671, %5109 ]
  %5183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5184 = extractvalue %dx.types.CBufRet.i32 %5183, 2
  %5185 = add nsw i32 %5184, -1
  %5186 = call i32 @dx.op.binary.i32(i32 37, i32 %5185, i32 0)  ; IMax(a,b)
  %5187 = shl i32 %5146, 2
  %5188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5187, i32 undef)  ; BufferLoad(srv,index,wot)
  %5189 = extractvalue %dx.types.ResRet.i32 %5188, 0
  %5190 = lshr i32 %5189, 16
  %5191 = and i32 %5189, 65535
  %5192 = lshr i32 %5189, 21
  %5193 = lshr i32 %5191, 5
  %5194 = call i32 @dx.op.binary.i32(i32 40, i32 %5193, i32 %5186)  ; UMin(a,b)
  %5195 = icmp ugt i32 %5192, %5194
  br i1 %5195, label %5577, label %5196

; <label>:5196                                    ; preds = %5179
  br label %5197

; <label>:5197                                    ; preds = %5566, %5196
  %5198 = phi float [ %5567, %5566 ], [ 0.000000e+00, %5196 ]
  %5199 = phi float [ %5568, %5566 ], [ 0.000000e+00, %5196 ]
  %5200 = phi float [ %5569, %5566 ], [ 0.000000e+00, %5196 ]
  %5201 = phi float [ %5570, %5566 ], [ 1.000000e+00, %5196 ]
  %5202 = phi i32 [ %5574, %5566 ], [ %5192, %5196 ]
  %5203 = phi float [ %5571, %5566 ], [ 0.000000e+00, %5196 ]
  %5204 = phi float [ %5572, %5566 ], [ 0.000000e+00, %5196 ]
  %5205 = phi float [ %5573, %5566 ], [ 0.000000e+00, %5196 ]
  %5206 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.i32 %5206, 2
  %5208 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5142, i32 %5207, i32 %5202)  ; UMad(a,b,c)
  %5209 = shl i32 %5208, 2
  %5210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5209, i32 undef)  ; BufferLoad(srv,index,wot)
  %5211 = extractvalue %dx.types.ResRet.i32 %5210, 0
  %5212 = shl i32 %5202, 5
  %5213 = sub nsw i32 %5190, %5212
  %5214 = call i32 @dx.op.binary.i32(i32 37, i32 %5213, i32 0)  ; IMax(a,b)
  %5215 = call i32 @dx.op.binary.i32(i32 38, i32 %5214, i32 31)  ; IMin(a,b)
  %5216 = sub nsw i32 1, %5190
  %5217 = add nsw i32 %5216, %5191
  %5218 = call i32 @dx.op.binary.i32(i32 37, i32 %5217, i32 0)  ; IMax(a,b)
  %5219 = call i32 @dx.op.binary.i32(i32 38, i32 %5218, i32 32)  ; IMin(a,b)
  %5220 = and i32 %5219, 31
  %5221 = shl i32 -1, %5220
  %5222 = xor i32 %5221, -1
  %5223 = and i32 %5215, 31
  %5224 = shl i32 %5222, %5223
  %5225 = icmp eq i32 %5219, 32
  %5226 = select i1 %5225, i32 -1, i32 %5224
  %5227 = and i32 %5226, %5211
  %5228 = icmp eq i32 %5227, 0
  br i1 %5228, label %5566, label %5229

; <label>:5229                                    ; preds = %5197
  br label %5230

; <label>:5230                                    ; preds = %5340, %5229
  %5231 = phi float [ %5341, %5340 ], [ %5198, %5229 ]
  %5232 = phi float [ %5342, %5340 ], [ %5199, %5229 ]
  %5233 = phi float [ %5343, %5340 ], [ %5200, %5229 ]
  %5234 = phi float [ %5344, %5340 ], [ %5201, %5229 ]
  %5235 = phi i32 [ %5243, %5340 ], [ %5227, %5229 ]
  %5236 = phi float [ %5345, %5340 ], [ %5203, %5229 ]
  %5237 = phi float [ %5346, %5340 ], [ %5204, %5229 ]
  %5238 = phi float [ %5347, %5340 ], [ %5205, %5229 ]
  %5239 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5235)  ; FirstbitLo(value)
  %5240 = add i32 %5239, %5212
  %5241 = and i32 %5239, 31
  %5242 = shl i32 1, %5241
  %5243 = xor i32 %5242, %5235
  %5244 = mul i32 %5240, 72
  %5245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5244, i32 undef)  ; BufferLoad(srv,index,wot)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.ResRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.ResRet.f32 %5245, 2
  %5249 = add i32 %5244, 12
  %5250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5249, i32 undef)  ; BufferLoad(srv,index,wot)
  %5251 = extractvalue %dx.types.ResRet.i32 %5250, 0
  %5252 = add i32 %5244, 16
  %5253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5252, i32 undef)  ; BufferLoad(srv,index,wot)
  %5254 = extractvalue %dx.types.ResRet.f32 %5253, 0
  %5255 = extractvalue %dx.types.ResRet.f32 %5253, 1
  %5256 = extractvalue %dx.types.ResRet.f32 %5253, 2
  %5257 = add i32 %5244, 28
  %5258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5257, i32 undef)  ; BufferLoad(srv,index,wot)
  %5259 = extractvalue %dx.types.ResRet.f32 %5258, 0
  %5260 = add i32 %5244, 32
  %5261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5260, i32 undef)  ; BufferLoad(srv,index,wot)
  %5262 = extractvalue %dx.types.ResRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.ResRet.f32 %5261, 1
  %5264 = extractvalue %dx.types.ResRet.f32 %5261, 2
  %5265 = extractvalue %dx.types.ResRet.f32 %5261, 3
  %5266 = add i32 %5244, 48
  %5267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5266, i32 undef)  ; BufferLoad(srv,index,wot)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = extractvalue %dx.types.ResRet.f32 %5267, 1
  %5270 = add i32 %5244, 56
  %5271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5270, i32 undef)  ; BufferLoad(srv,index,wot)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.ResRet.f32 %5271, 1
  %5274 = add i32 %5244, 64
  %5275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5274, i32 undef)  ; BufferLoad(srv,index,wot)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = mul i32 %5240, 60
  %5279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5278, i32 undef)  ; BufferLoad(srv,index,wot)
  %5280 = extractvalue %dx.types.ResRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.ResRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.ResRet.f32 %5279, 2
  %5283 = add i32 %5278, 12
  %5284 = add i32 %5278, 48
  %5285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5284, i32 undef)  ; BufferLoad(srv,index,wot)
  %5286 = extractvalue %dx.types.ResRet.f32 %5285, 0
  %5287 = extractvalue %dx.types.ResRet.f32 %5285, 1
  %5288 = extractvalue %dx.types.ResRet.f32 %5285, 2
  %5289 = and i32 %5251, 32767
  %5290 = bitcast float %5246 to i32
  %5291 = icmp eq i32 %5290, -1
  %5292 = bitcast float %5247 to i32
  %5293 = and i32 %5251, 32768
  %5294 = icmp ne i32 %5293, 0
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.CBufRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.CBufRet.f32 %5295, 2
  %5299 = fsub fast float %5280, %5296
  %5300 = fsub fast float %5281, %5297
  %5301 = fsub fast float %5282, %5298
  %5302 = fsub fast float %141, %5299
  %5303 = fsub fast float %142, %5300
  %5304 = fsub fast float %143, %5301
  %5305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5306 = extractvalue %dx.types.ResRet.f32 %5305, 0
  %5307 = extractvalue %dx.types.ResRet.f32 %5305, 1
  %5308 = extractvalue %dx.types.ResRet.f32 %5305, 2
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float %5306, float %5307, float %5308)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = add i32 %5278, 24
  %5311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.ResRet.f32 %5311, 2
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float %5312, float %5313, float %5314)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = add i32 %5278, 36
  %5317 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5316, i32 undef)  ; BufferLoad(srv,index,wot)
  %5318 = extractvalue %dx.types.ResRet.f32 %5317, 0
  %5319 = extractvalue %dx.types.ResRet.f32 %5317, 1
  %5320 = extractvalue %dx.types.ResRet.f32 %5317, 2
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float %5318, float %5319, float %5320)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = call float @dx.op.unary.f32(i32 6, float %5309)  ; FAbs(value)
  %5323 = call float @dx.op.unary.f32(i32 6, float %5315)  ; FAbs(value)
  %5324 = call float @dx.op.unary.f32(i32 6, float %5321)  ; FAbs(value)
  %5325 = fsub fast float %5286, %5322
  %5326 = fsub fast float %5287, %5323
  %5327 = fsub fast float %5288, %5324
  %5328 = fmul fast float %5325, %5254
  %5329 = fmul fast float %5326, %5255
  %5330 = fmul fast float %5327, %5256
  %5331 = call float @dx.op.binary.f32(i32 36, float %5329, float %5330)  ; FMin(a,b)
  %5332 = call float @dx.op.binary.f32(i32 36, float %5328, float %5331)  ; FMin(a,b)
  %5333 = call float @dx.op.unary.f32(i32 7, float %5332)  ; Saturate(value)
  %5334 = call float @dx.op.binary.f32(i32 36, float %5234, float %5333)  ; FMin(a,b)
  %5335 = uitofp i1 %5294 to float
  %5336 = fadd fast float %4443, 1.000000e+00
  %5337 = fsub fast float %5336, %5335
  %5338 = fmul fast float %5334, %5337
  %5339 = fcmp fast ogt float %5338, 0.000000e+00
  br i1 %5339, label %5349, label %5340

; <label>:5340                                    ; preds = %5491, %5230
  %5341 = phi float [ %5555, %5491 ], [ %5231, %5230 ]
  %5342 = phi float [ %5556, %5491 ], [ %5232, %5230 ]
  %5343 = phi float [ %5557, %5491 ], [ %5233, %5230 ]
  %5344 = phi float [ %5564, %5491 ], [ %5234, %5230 ]
  %5345 = phi float [ %5561, %5491 ], [ %5236, %5230 ]
  %5346 = phi float [ %5562, %5491 ], [ %5237, %5230 ]
  %5347 = phi float [ %5563, %5491 ], [ %5238, %5230 ]
  %5348 = icmp eq i32 %5235, %5242
  br i1 %5348, label %5565, label %5230

; <label>:5349                                    ; preds = %5230
  br i1 %5291, label %5407, label %5350

; <label>:5350                                    ; preds = %5349
  %5351 = fsub fast float -0.000000e+00, %5306
  %5352 = fsub fast float -0.000000e+00, %5307
  %5353 = fsub fast float -0.000000e+00, %5308
  %5354 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %5351, float %5352, float %5353)  ; Dot3(ax,ay,az,bx,by,bz)
  %5355 = fsub fast float -0.000000e+00, %5354
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float %5351, float %5352, float %5353)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = fadd fast float %5356, %5269
  %5358 = fadd fast float %5268, %5356
  %5359 = fsub fast float -0.000000e+00, %5358
  %5360 = fcmp ogt float %5354, -0.000000e+00
  %5361 = select i1 %5360, float %5359, float %5357
  %5362 = call float @dx.op.unary.f32(i32 6, float %5355)  ; FAbs(value)
  %5363 = fdiv fast float 1.000000e+00, %5362
  %5364 = fmul fast float %5361, %5363
  %5365 = call float @dx.op.binary.f32(i32 35, float %5364, float 0.000000e+00)  ; FMax(a,b)
  %5366 = fsub fast float -0.000000e+00, %5312
  %5367 = fsub fast float -0.000000e+00, %5313
  %5368 = fsub fast float -0.000000e+00, %5314
  %5369 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %5366, float %5367, float %5368)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = fsub fast float -0.000000e+00, %5369
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float %5366, float %5367, float %5368)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = fadd fast float %5371, %5273
  %5373 = fadd fast float %5272, %5371
  %5374 = fsub fast float -0.000000e+00, %5373
  %5375 = fcmp ogt float %5369, -0.000000e+00
  %5376 = select i1 %5375, float %5374, float %5372
  %5377 = call float @dx.op.unary.f32(i32 6, float %5370)  ; FAbs(value)
  %5378 = fdiv fast float 1.000000e+00, %5377
  %5379 = fmul fast float %5376, %5378
  %5380 = call float @dx.op.binary.f32(i32 35, float %5379, float 0.000000e+00)  ; FMax(a,b)
  %5381 = fsub fast float -0.000000e+00, %5318
  %5382 = fsub fast float -0.000000e+00, %5319
  %5383 = fsub fast float -0.000000e+00, %5320
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5180, float %5181, float %5182, float %5381, float %5382, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = fsub fast float -0.000000e+00, %5384
  %5386 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5303, float %5304, float %5381, float %5382, float %5383)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = fadd fast float %5386, %5277
  %5388 = fadd fast float %5276, %5386
  %5389 = fsub fast float -0.000000e+00, %5388
  %5390 = fcmp ogt float %5384, -0.000000e+00
  %5391 = select i1 %5390, float %5389, float %5387
  %5392 = call float @dx.op.unary.f32(i32 6, float %5385)  ; FAbs(value)
  %5393 = fdiv fast float 1.000000e+00, %5392
  %5394 = fmul fast float %5391, %5393
  %5395 = call float @dx.op.binary.f32(i32 35, float %5394, float 0.000000e+00)  ; FMax(a,b)
  %5396 = call float @dx.op.binary.f32(i32 36, float %5380, float %5395)  ; FMin(a,b)
  %5397 = call float @dx.op.binary.f32(i32 36, float %5365, float %5396)  ; FMin(a,b)
  %5398 = fmul fast float %5397, %5180
  %5399 = fmul fast float %5397, %5181
  %5400 = fmul fast float %5397, %5182
  %5401 = fadd fast float %5398, %141
  %5402 = fadd fast float %5399, %142
  %5403 = fadd fast float %5400, %143
  %5404 = fsub fast float %5401, %5246
  %5405 = fsub fast float %5402, %5247
  %5406 = fsub fast float %5403, %5248
  br label %5414

; <label>:5407                                    ; preds = %5349
  %5408 = fmul fast float %5180, 8.096000e+03
  %5409 = fmul fast float %5181, 8.096000e+03
  %5410 = fmul fast float %5182, 8.096000e+03
  %5411 = fadd fast float %5408, %141
  %5412 = fadd fast float %5409, %142
  %5413 = fadd fast float %5410, %143
  br label %5414

; <label>:5414                                    ; preds = %5407, %5350
  %5415 = phi float [ %5180, %5407 ], [ %5404, %5350 ]
  %5416 = phi float [ %5181, %5407 ], [ %5405, %5350 ]
  %5417 = phi float [ %5182, %5407 ], [ %5406, %5350 ]
  %5418 = phi float [ %5411, %5407 ], [ %5401, %5350 ]
  %5419 = phi float [ %5412, %5407 ], [ %5402, %5350 ]
  %5420 = phi float [ %5413, %5407 ], [ %5403, %5350 ]
  %5421 = fcmp fast olt float %5265, 1.000000e+00
  br i1 %5421, label %5422, label %5453, !dx.controlflow.hints !84

; <label>:5422                                    ; preds = %5414
  %5423 = fmul fast float %5417, %5263
  %5424 = fmul fast float %5416, %5264
  %5425 = fsub fast float %5423, %5424
  %5426 = fmul fast float %5415, %5264
  %5427 = fmul fast float %5417, %5262
  %5428 = fsub fast float %5426, %5427
  %5429 = fmul fast float %5416, %5262
  %5430 = fmul fast float %5415, %5263
  %5431 = fsub fast float %5429, %5430
  %5432 = fmul fast float %5425, 2.000000e+00
  %5433 = fmul fast float %5428, 2.000000e+00
  %5434 = fmul fast float %5431, 2.000000e+00
  %5435 = fmul fast float %5432, %5265
  %5436 = fmul fast float %5433, %5265
  %5437 = fmul fast float %5434, %5265
  %5438 = fmul fast float %5434, %5263
  %5439 = fmul fast float %5433, %5264
  %5440 = fmul fast float %5432, %5264
  %5441 = fmul fast float %5434, %5262
  %5442 = fmul fast float %5433, %5262
  %5443 = fmul fast float %5432, %5263
  %5444 = fadd fast float %5438, %5415
  %5445 = fadd fast float %5444, %5435
  %5446 = fsub fast float %5445, %5439
  %5447 = fsub fast float %5416, %5441
  %5448 = fadd fast float %5447, %5436
  %5449 = fadd fast float %5448, %5440
  %5450 = fadd fast float %5437, %5417
  %5451 = fsub fast float %5450, %5443
  %5452 = fadd fast float %5451, %5442
  br label %5453

; <label>:5453                                    ; preds = %5422, %5414
  %5454 = phi float [ %5446, %5422 ], [ %5415, %5414 ]
  %5455 = phi float [ %5449, %5422 ], [ %5416, %5414 ]
  %5456 = phi float [ %5452, %5422 ], [ %5417, %5414 ]
  br i1 %5291, label %5488, label %5457

; <label>:5457                                    ; preds = %5453
  %5458 = fmul fast float %4644, 0x400187C840000000
  %5459 = fadd fast float %5458, 0xC00EFC2120000000
  %5460 = fmul fast float %5459, %4644
  %5461 = fadd fast float %5460, 0x3FE5D16340000000
  %5462 = fmul fast float %5461, %4644
  %5463 = fadd fast float %5462, 1.000000e+00
  %5464 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5465 = fsub fast float %5418, %141
  %5466 = fsub fast float %5419, %142
  %5467 = fsub fast float %5420, %143
  %5468 = fsub fast float %5418, %5246
  %5469 = fsub fast float %5419, %5247
  %5470 = fsub fast float %5420, %5248
  %5471 = call float @dx.op.dot3.f32(i32 55, float %5465, float %5466, float %5467, float %5465, float %5466, float %5467)  ; Dot3(ax,ay,az,bx,by,bz)
  %5472 = call float @dx.op.dot3.f32(i32 55, float %5468, float %5469, float %5470, float %5468, float %5469, float %5470)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = fadd fast float %5472, 0x3EE4F8B580000000
  %5474 = fdiv fast float %5471, %5473
  %5475 = bitcast float %5474 to i32
  %5476 = ashr i32 %5475, 1
  %5477 = add nsw i32 %5476, 532487669
  %5478 = bitcast i32 %5477 to float
  %5479 = fmul fast float %5478, %5464
  %5480 = call float @dx.op.unary.f32(i32 7, float %5479)  ; Saturate(value)
  %5481 = fmul fast float %5480, 0x4009981AE0000000
  %5482 = fsub fast float 0x40111BBD80000000, %5481
  %5483 = fmul fast float %5482, %5480
  %5484 = fadd fast float %5483, 0xC0009F6020000000
  %5485 = fmul fast float %5484, %5480
  %5486 = fadd fast float %5485, 1.000000e+00
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  br label %5491

; <label>:5488                                    ; preds = %5453
  %5489 = icmp ne i32 %5292, -1
  %5490 = zext i1 %5489 to i32
  br label %5491

; <label>:5491                                    ; preds = %5488, %5457
  %5492 = phi float [ %4644, %5488 ], [ %5487, %5457 ]
  %5493 = phi i32 [ %5490, %5488 ], [ 0, %5457 ]
  %5494 = fmul float %5492, 5.000000e+00
  %5495 = fsub float 5.000000e+00, %5494
  %5496 = icmp ne i32 %5493, 0
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 3
  %5499 = fadd fast float %5498, %5495
  %5500 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5499)  ; FMax(a,b)
  %5501 = call float @dx.op.unary.f32(i32 6, float %5454)  ; FAbs(value)
  %5502 = call float @dx.op.unary.f32(i32 6, float %5455)  ; FAbs(value)
  %5503 = fadd fast float %5502, %5501
  %5504 = call float @dx.op.unary.f32(i32 6, float %5456)  ; FAbs(value)
  %5505 = fadd fast float %5503, %5504
  %5506 = fcmp fast oeq float %5505, 0.000000e+00
  %5507 = fdiv fast float 1.000000e+00, %5505
  %5508 = select i1 %5506, float 1.000000e+00, float %5507
  %5509 = fmul fast float %5508, %5454
  %5510 = fmul fast float %5508, %5455
  %5511 = call float @dx.op.unary.f32(i32 6, float %5510)  ; FAbs(value)
  %5512 = call float @dx.op.unary.f32(i32 6, float %5509)  ; FAbs(value)
  %5513 = fsub fast float 1.000000e+00, %5511
  %5514 = fsub fast float 1.000000e+00, %5512
  %5515 = fcmp fast oge float %5509, 0.000000e+00
  %5516 = fcmp fast oge float %5510, 0.000000e+00
  %5517 = select i1 %5515, float 1.000000e+00, float -1.000000e+00
  %5518 = select i1 %5516, float 1.000000e+00, float -1.000000e+00
  %5519 = fcmp fast ole float %5456, 0.000000e+00
  %5520 = fmul fast float %5517, %5513
  %5521 = fmul fast float %5518, %5514
  %5522 = select i1 %5519, float %5520, float %5509
  %5523 = select i1 %5519, float %5521, float %5510
  %5524 = fmul fast float %5522, 5.000000e-01
  %5525 = fmul fast float %5523, 5.000000e-01
  %5526 = fadd fast float %5524, 5.000000e-01
  %5527 = fadd fast float %5525, 5.000000e-01
  %5528 = uitofp i32 %5289 to float
  %5529 = call float @dx.op.binary.f32(i32 36, float %5500, float 3.000000e+00)  ; FMin(a,b)
  %5530 = fadd fast float %5529, 2.000000e+00
  %5531 = call float @dx.op.unary.f32(i32 21, float %5530)  ; Exp(value)
  %5532 = extractvalue %dx.types.CBufRet.f32 %5497, 1
  %5533 = fmul fast float %5532, %5531
  %5534 = fmul fast float %5533, 2.000000e+00
  %5535 = fsub fast float 1.000000e+00, %5534
  %5536 = fmul fast float %5526, %5535
  %5537 = fmul fast float %5527, %5535
  %5538 = fadd fast float %5536, %5533
  %5539 = fadd fast float %5537, %5533
  %5540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5538, float %5539, float %5528, float undef, i32 0, i32 0, i32 undef, float %5500)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5541 = extractvalue %dx.types.ResRet.f32 %5540, 0
  %5542 = extractvalue %dx.types.ResRet.f32 %5540, 1
  %5543 = extractvalue %dx.types.ResRet.f32 %5540, 2
  %5544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5544, 3
  %5546 = fmul fast float %5545, %5259
  %5547 = call float @dx.op.binary.f32(i32 36, float %4724, float %5546)  ; FMin(a,b)
  %5548 = select i1 %5496, float %5547, float %5546
  %5549 = fmul fast float %5541, %5338
  %5550 = fmul fast float %5549, %5548
  %5551 = fmul fast float %5542, %5338
  %5552 = fmul fast float %5551, %5548
  %5553 = fmul fast float %5543, %5338
  %5554 = fmul fast float %5553, %5548
  %5555 = fadd fast float %5550, %5231
  %5556 = fadd fast float %5552, %5232
  %5557 = fadd fast float %5554, %5233
  %5558 = fmul fast float %5418, %5338
  %5559 = fmul fast float %5419, %5338
  %5560 = fmul fast float %5420, %5338
  %5561 = fadd fast float %5558, %5236
  %5562 = fadd fast float %5559, %5237
  %5563 = fadd fast float %5560, %5238
  %5564 = fsub fast float %5234, %5338
  br label %5340

; <label>:5565                                    ; preds = %5340
  br label %5566

; <label>:5566                                    ; preds = %5565, %5197
  %5567 = phi float [ %5198, %5197 ], [ %5341, %5565 ]
  %5568 = phi float [ %5199, %5197 ], [ %5342, %5565 ]
  %5569 = phi float [ %5200, %5197 ], [ %5343, %5565 ]
  %5570 = phi float [ %5201, %5197 ], [ %5344, %5565 ]
  %5571 = phi float [ %5203, %5197 ], [ %5345, %5565 ]
  %5572 = phi float [ %5204, %5197 ], [ %5346, %5565 ]
  %5573 = phi float [ %5205, %5197 ], [ %5347, %5565 ]
  %5574 = add i32 %5202, 1
  %5575 = icmp ugt i32 %5574, %5194
  br i1 %5575, label %5576, label %5197, !llvm.loop !85

; <label>:5576                                    ; preds = %5566
  br label %5577

; <label>:5577                                    ; preds = %5576, %5179
  %5578 = phi float [ 0.000000e+00, %5179 ], [ %5567, %5576 ]
  %5579 = phi float [ 0.000000e+00, %5179 ], [ %5568, %5576 ]
  %5580 = phi float [ 0.000000e+00, %5179 ], [ %5569, %5576 ]
  %5581 = phi float [ 0.000000e+00, %5179 ], [ %5571, %5576 ]
  %5582 = phi float [ 0.000000e+00, %5179 ], [ %5572, %5576 ]
  %5583 = phi float [ 0.000000e+00, %5179 ], [ %5573, %5576 ]
  %5584 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5579, float %5580, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = select i1 %183, float 0.000000e+00, float %5578
  %5586 = select i1 %183, float %5584, float %5579
  %5587 = select i1 %183, float 0.000000e+00, float %5580
  %5588 = fcmp fast olt float %5103, 0.000000e+00
  %5589 = call float @dx.op.unary.f32(i32 6, float %5103)  ; FAbs(value)
  %5590 = fmul fast float %5589, %5104
  %5591 = fmul fast float %5589, %5105
  %5592 = fmul fast float %5589, %5106
  %5593 = select i1 %5588, float %5104, float %5590
  %5594 = select i1 %5588, float %5105, float %5591
  %5595 = select i1 %5588, float %5106, float %5592
  %5596 = fsub fast float 1.000000e+00, %5589
  %5597 = call float @dx.op.unary.f32(i32 7, float %5596)  ; Saturate(value)
  %5598 = fmul fast float %5597, %5585
  %5599 = fmul fast float %5597, %5586
  %5600 = fmul fast float %5597, %5587
  %5601 = fadd fast float %5593, %5598
  %5602 = fadd fast float %5594, %5599
  %5603 = fadd fast float %5595, %5600
  %5604 = fcmp fast une float %4853, 0.000000e+00
  br i1 %5604, label %5705, label %5605

; <label>:5605                                    ; preds = %5577
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5608 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5609 = extractvalue %dx.types.CBufRet.f32 %5606, 2
  %5610 = extractvalue %dx.types.CBufRet.f32 %5606, 3
  %5611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5612 = extractvalue %dx.types.CBufRet.f32 %5611, 0
  %5613 = extractvalue %dx.types.CBufRet.f32 %5611, 1
  %5614 = extractvalue %dx.types.CBufRet.f32 %5611, 2
  %5615 = extractvalue %dx.types.CBufRet.f32 %5611, 3
  %5616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.f32 %5616, 0
  %5618 = extractvalue %dx.types.CBufRet.f32 %5616, 1
  %5619 = extractvalue %dx.types.CBufRet.f32 %5616, 2
  %5620 = extractvalue %dx.types.CBufRet.f32 %5616, 3
  %5621 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %4669, float %4670, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %5622 = call float @dx.op.dot3.f32(i32 55, float %5581, float %5582, float %5583, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5623 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = fadd fast float %4644, -1.000000e+00
  %5625 = fsub fast float %5622, %5623
  %5626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5627 = extractvalue %dx.types.CBufRet.f32 %5626, 2
  %5628 = fmul fast float %5627, %5622
  %5629 = fdiv fast float 1.600000e+02, %5628
  %5630 = fmul fast float %5624, %5624
  %5631 = fmul fast float %5630, 0xBFB5B17960000000
  %5632 = fmul fast float %5631, %5625
  %5633 = fmul fast float %5632, %5629
  %5634 = call float @dx.op.unary.f32(i32 21, float %5633)  ; Exp(value)
  %5635 = fmul fast float %5634, 0x3FF04B2960000000
  %5636 = fsub fast float 0x3FF04B2960000000, %5635
  %5637 = call float @dx.op.unary.f32(i32 7, float %5636)  ; Saturate(value)
  %5638 = fmul fast float %5637, 4.000000e+00
  %5639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.f32 %5639, 0
  %5641 = extractvalue %dx.types.CBufRet.f32 %5639, 1
  %5642 = extractvalue %dx.types.CBufRet.f32 %5639, 2
  %5643 = fadd fast float %5640, %5581
  %5644 = fadd fast float %5641, %5582
  %5645 = fadd fast float %5642, %5583
  %5646 = fmul fast float %5643, %5607
  %5647 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %5608, float %5646)  ; FMad(a,b,c)
  %5648 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5609, float %5647)  ; FMad(a,b,c)
  %5649 = fadd fast float %5648, %5610
  %5650 = fmul fast float %5643, %5612
  %5651 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %5613, float %5650)  ; FMad(a,b,c)
  %5652 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5614, float %5651)  ; FMad(a,b,c)
  %5653 = fadd fast float %5652, %5615
  %5654 = fmul fast float %5643, %5617
  %5655 = call float @dx.op.tertiary.f32(i32 46, float %5644, float %5618, float %5654)  ; FMad(a,b,c)
  %5656 = call float @dx.op.tertiary.f32(i32 46, float %5645, float %5619, float %5655)  ; FMad(a,b,c)
  %5657 = fadd fast float %5656, %5620
  %5658 = fdiv fast float %5649, %5657
  %5659 = fdiv fast float %5653, %5657
  %5660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5661 = extractvalue %dx.types.CBufRet.f32 %5660, 0
  %5662 = extractvalue %dx.types.CBufRet.f32 %5660, 1
  %5663 = fmul fast float %5661, %5658
  %5664 = fmul fast float %5662, %5659
  %5665 = extractvalue %dx.types.CBufRet.f32 %5660, 2
  %5666 = extractvalue %dx.types.CBufRet.f32 %5660, 3
  %5667 = fadd fast float %5663, %5665
  %5668 = fadd fast float %5664, %5666
  %5669 = fmul fast float %5621, 8.000000e+00
  %5670 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  %5671 = fmul fast float %5667, 2.000000e+00
  %5672 = fmul fast float %5668, 2.000000e+00
  %5673 = fadd fast float %5671, -1.000000e+00
  %5674 = fadd fast float %5672, -1.000000e+00
  %5675 = fmul fast float %5673, %5673
  %5676 = fsub fast float 1.000000e+00, %5675
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = fmul fast float %5674, %5674
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = call float @dx.op.unary.f32(i32 7, float %5679)  ; Saturate(value)
  %5681 = fmul fast float %4853, %5677
  %5682 = fmul fast float %5681, %5680
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = fmul fast float %5683, %5670
  %5685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5667, float %5668, float undef, float undef, i32 0, i32 0, i32 undef, float %5638)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5686 = extractvalue %dx.types.ResRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.ResRet.f32 %5685, 1
  %5688 = extractvalue %dx.types.ResRet.f32 %5685, 2
  %5689 = select i1 %183, float 0.000000e+00, float %5687
  %5690 = select i1 %183, float 0.000000e+00, float %5688
  %5691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5692 = extractvalue %dx.types.CBufRet.f32 %5691, 2
  %5693 = fmul fast float %5692, %5686
  %5694 = fmul fast float %5689, %5692
  %5695 = fmul fast float %5690, %5692
  %5696 = fsub fast float %5693, %5585
  %5697 = fsub fast float %5694, %5586
  %5698 = fsub fast float %5695, %5587
  %5699 = fmul fast float %5696, %5684
  %5700 = fmul fast float %5697, %5684
  %5701 = fmul fast float %5698, %5684
  %5702 = fadd fast float %5699, %5585
  %5703 = fadd fast float %5700, %5586
  %5704 = fadd fast float %5701, %5587
  br label %5705

; <label>:5705                                    ; preds = %5605, %5577, %5102, %4826
  %5706 = phi float [ %5104, %5102 ], [ %5601, %5577 ], [ %4783, %4826 ], [ %5702, %5605 ]
  %5707 = phi float [ %5105, %5102 ], [ %5602, %5577 ], [ %4784, %4826 ], [ %5703, %5605 ]
  %5708 = phi float [ %5106, %5102 ], [ %5603, %5577 ], [ %4785, %4826 ], [ %5704, %5605 ]
  %5709 = fmul fast float %4832, %4779
  %5710 = fmul fast float %4832, %4780
  %5711 = fmul fast float %4832, %4781
  %5712 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5713 = fcmp fast ogt float %5712, 0x3E7FF19E20000000
  %5714 = fdiv fast float 1.000000e+00, %5712
  %5715 = select i1 %5713, float %5714, float 0.000000e+00
  %5716 = fmul fast float %5715, %4635
  %5717 = fmul fast float %5715, %4636
  %5718 = fmul fast float %5715, %4637
  %5719 = fadd fast float %5716, -1.000000e+00
  %5720 = fadd fast float %5717, -1.000000e+00
  %5721 = fadd fast float %5718, -1.000000e+00
  %5722 = fmul fast float %5719, 5.000000e-01
  %5723 = fmul fast float %5720, 5.000000e-01
  %5724 = fmul fast float %5721, 5.000000e-01
  %5725 = fadd fast float %5722, 1.000000e+00
  %5726 = fadd fast float %5723, 1.000000e+00
  %5727 = fadd fast float %5724, 1.000000e+00
  %5728 = fmul fast float %5706, %4827
  %5729 = fmul fast float %5707, %4828
  %5730 = fmul fast float %5708, %4829
  %5731 = fsub fast float 1.000000e+00, %4663
  %5732 = bitcast float %5731 to i32
  %5733 = sitofp i32 %5732 to float
  %5734 = fmul fast float %5733, 5.000000e+00
  %5735 = fadd fast float %5734, 0xC1EFBF8940000000
  %5736 = fptosi float %5735 to i32
  %5737 = bitcast i32 %5736 to float
  %5738 = fmul fast float %5737, %4033
  %5739 = fmul fast float %4779, %5738
  %5740 = fmul fast float %5739, %4832
  %5741 = fmul fast float %5740, %5725
  %5742 = fmul fast float %4780, %5738
  %5743 = fmul fast float %5742, %4832
  %5744 = fmul fast float %5743, %5726
  %5745 = fmul fast float %4781, %5738
  %5746 = fmul fast float %5745, %4832
  %5747 = fmul fast float %5746, %5727
  %5748 = fmul fast float %5709, %4029
  %5749 = fmul fast float %5710, %4029
  %5750 = fmul fast float %5711, %4029
  %5751 = fadd fast float %5728, %4025
  %5752 = fadd fast float %5751, %5741
  %5753 = fmul fast float %5752, %4029
  %5754 = fadd fast float %5729, %4026
  %5755 = fadd fast float %5754, %5744
  %5756 = fmul fast float %5755, %4029
  %5757 = fadd fast float %5730, %4027
  %5758 = fadd fast float %5757, %5747
  %5759 = fmul fast float %5758, %4029
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 3
  %5762 = fcmp fast oeq float %5761, 0.000000e+00
  br i1 %5762, label %5982, label %5763

; <label>:5763                                    ; preds = %5705
  %5764 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5765 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5766 = extractvalue %dx.types.CBufRet.f32 %5760, 2
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5769 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5770 = extractvalue %dx.types.CBufRet.f32 %5767, 2
  %5771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5771, 0
  %5773 = extractvalue %dx.types.CBufRet.f32 %5771, 1
  %5774 = call float @dx.op.dot3.f32(i32 55, float %5768, float %5769, float %5770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5775 = select i1 %183, float %5772, float %5768
  %5776 = select i1 %183, float %5774, float %5769
  %5777 = select i1 %183, float %5773, float %5770
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 1
  %5780 = fcmp fast une float %5779, 0.000000e+00
  br i1 %5780, label %5781, label %5798

; <label>:5781                                    ; preds = %5763
  %5782 = fptoui float %78 to i32
  %5783 = fptoui float %79 to i32
  %5784 = lshr i32 %5782, 4
  %5785 = lshr i32 %5783, 4
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = fptoui float %5787 to i32
  %5789 = add i32 %5788, 15
  %5790 = lshr i32 %5789, 4
  %5791 = mul i32 %5790, %5785
  %5792 = add i32 %5791, %5784
  %5793 = shl i32 %5792, 3
  %5794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5793, i32 undef)  ; BufferLoad(srv,index,wot)
  %5795 = extractvalue %dx.types.ResRet.i32 %5794, 0
  %5796 = and i32 %5795, -268435456
  %5797 = icmp eq i32 %5796, -1342177280
  br i1 %5797, label %5803, label %5798

; <label>:5798                                    ; preds = %5781, %5763
  %5799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4649, float %4650, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5800 = extractvalue %dx.types.ResRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.ResRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.ResRet.f32 %5799, 2
  br label %5803

; <label>:5803                                    ; preds = %5798, %5781
  %5804 = phi float [ %5800, %5798 ], [ 0.000000e+00, %5781 ]
  %5805 = phi float [ %5801, %5798 ], [ 0.000000e+00, %5781 ]
  %5806 = phi float [ %5802, %5798 ], [ 0.000000e+00, %5781 ]
  %5807 = call float @dx.op.binary.f32(i32 36, float %5805, float %5806)  ; FMin(a,b)
  %5808 = call float @dx.op.binary.f32(i32 36, float %5804, float %5807)  ; FMin(a,b)
  %5809 = fcmp fast ogt float %5808, 0.000000e+00
  br i1 %5809, label %5810, label %5982, !dx.controlflow.hints !87

; <label>:5810                                    ; preds = %5803
  %5811 = fmul fast float %5804, %5775
  %5812 = fmul fast float %5805, %5776
  %5813 = fmul fast float %5806, %5777
  %5814 = fsub fast float %5764, %4634
  %5815 = fsub fast float %5765, %4633
  %5816 = fsub fast float %5766, %4632
  %5817 = call float @dx.op.dot3.f32(i32 55, float %5814, float %5815, float %5816, float %5814, float %5815, float %5816)  ; Dot3(ax,ay,az,bx,by,bz)
  %5818 = call float @dx.op.unary.f32(i32 25, float %5817)  ; Rsqrt(value)
  %5819 = fmul fast float %5818, %5814
  %5820 = fmul fast float %5818, %5815
  %5821 = fmul fast float %5818, %5816
  %5822 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5766, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4630, float %4629, float %5819, float %5820, float %5821)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5825 = bitcast i32 %4687 to float
  %5826 = fmul fast float %5824, %5824
  %5827 = fmul fast float %5826, %5825
  %5828 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5829 = fmul fast float %5828, %5824
  %5830 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %5819, float %5820, float %5821)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = fmul fast float %5830, %5830
  %5832 = call float @dx.op.unary.f32(i32 6, float %5822)  ; FAbs(value)
  %5833 = fsub fast float 1.000000e+00, %4681
  %5834 = fmul fast float %4663, %4663
  %5835 = fmul fast float %5834, %5833
  %5836 = fadd fast float %5835, %4681
  %5837 = bitcast float %5836 to i32
  %5838 = ashr i32 %5837, 1
  %5839 = add nsw i32 %5838, 532487669
  %5840 = bitcast i32 %5839 to float
  %5841 = fadd fast float %5840, %4663
  %5842 = fmul fast float %4681, %5831
  %5843 = fsub fast float 1.000000e+00, %5831
  %5844 = fadd fast float %5843, %5842
  %5845 = fmul fast float %5832, %5832
  %5846 = fmul fast float %5845, %5833
  %5847 = fadd fast float %5846, %4681
  %5848 = bitcast float %5847 to i32
  %5849 = ashr i32 %5848, 1
  %5850 = add nsw i32 %5849, 532487669
  %5851 = bitcast i32 %5850 to float
  %5852 = fadd fast float %5851, %5832
  %5853 = fmul fast float %5844, %5844
  %5854 = fmul fast float %5853, %5841
  %5855 = fmul fast float %5854, %5852
  %5856 = fdiv fast float 0x3FF0A00000000000, %5855
  %5857 = fmul fast float %5856, %4681
  %5858 = call float @dx.op.unary.f32(i32 6, float %5823)  ; FAbs(value)
  %5859 = fsub fast float 1.000000e+00, %5858
  %5860 = bitcast float %5859 to i32
  %5861 = sitofp i32 %5860 to float
  %5862 = fmul fast float %5861, 5.000000e+00
  %5863 = fadd fast float %5862, 0xC1EFBF8940000000
  %5864 = fptosi float %5863 to i32
  %5865 = bitcast i32 %5864 to float
  %5866 = fsub fast float 1.000000e+00, %4641
  %5867 = fsub fast float 1.000000e+00, %4642
  %5868 = fsub fast float 1.000000e+00, %4661
  %5869 = fmul fast float %5865, %5866
  %5870 = fmul fast float %5865, %5867
  %5871 = fmul fast float %5865, %5868
  %5872 = fadd fast float %5869, %4641
  %5873 = fadd fast float %5870, %4642
  %5874 = fadd fast float %5871, %4661
  br i1 %4799, label %5875, label %5898

; <label>:5875                                    ; preds = %5810
  %5876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4032, float %5858, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5877 = extractvalue %dx.types.ResRet.f32 %5876, 0
  %5878 = extractvalue %dx.types.ResRet.f32 %5876, 1
  %5879 = extractvalue %dx.types.ResRet.f32 %5876, 2
  %5880 = fadd fast float %5877, -5.000000e-01
  %5881 = fadd fast float %5878, -5.000000e-01
  %5882 = fadd fast float %5879, -5.000000e-01
  %5883 = fmul fast float %4641, 4.000000e+00
  %5884 = fmul fast float %5883, %5866
  %5885 = fmul fast float %5884, %5880
  %5886 = fmul fast float %4642, 4.000000e+00
  %5887 = fmul fast float %5886, %5867
  %5888 = fmul fast float %5887, %5881
  %5889 = fmul fast float %4661, 4.000000e+00
  %5890 = fmul fast float %5889, %5868
  %5891 = fmul fast float %5890, %5882
  %5892 = fadd fast float %5885, %5872
  %5893 = fadd fast float %5888, %5873
  %5894 = fadd fast float %5891, %5874
  %5895 = call float @dx.op.unary.f32(i32 7, float %5892)  ; Saturate(value)
  %5896 = call float @dx.op.unary.f32(i32 7, float %5893)  ; Saturate(value)
  %5897 = call float @dx.op.unary.f32(i32 7, float %5894)  ; Saturate(value)
  br label %5898

; <label>:5898                                    ; preds = %5875, %5810
  %5899 = phi float [ %5895, %5875 ], [ %5872, %5810 ]
  %5900 = phi float [ %5896, %5875 ], [ %5873, %5810 ]
  %5901 = phi float [ %5897, %5875 ], [ %5874, %5810 ]
  %5902 = fmul fast float %5822, 9.843750e-01
  %5903 = fadd fast float %5902, 7.812500e-03
  %5904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5903, float %4789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5905 = extractvalue %dx.types.ResRet.f32 %5904, 2
  %5906 = extractvalue %dx.types.ResRet.f32 %5904, 3
  %5907 = fmul fast float %5905, %4641
  %5908 = fmul fast float %5905, %4642
  %5909 = fmul fast float %5905, %4661
  %5910 = fadd fast float %5907, %5906
  %5911 = fadd fast float %5908, %5906
  %5912 = fadd fast float %5909, %5906
  br i1 %4799, label %5913, label %5936

; <label>:5913                                    ; preds = %5898
  %5914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4032, float %5822, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5915 = extractvalue %dx.types.ResRet.f32 %5914, 0
  %5916 = extractvalue %dx.types.ResRet.f32 %5914, 1
  %5917 = extractvalue %dx.types.ResRet.f32 %5914, 2
  %5918 = fadd fast float %5915, -5.000000e-01
  %5919 = fadd fast float %5916, -5.000000e-01
  %5920 = fadd fast float %5917, -5.000000e-01
  %5921 = fmul fast float %4641, 4.000000e+00
  %5922 = fmul fast float %5921, %5866
  %5923 = fmul fast float %5922, %5918
  %5924 = fmul fast float %4642, 4.000000e+00
  %5925 = fmul fast float %5924, %5867
  %5926 = fmul fast float %5925, %5919
  %5927 = fmul fast float %4661, 4.000000e+00
  %5928 = fmul fast float %5927, %5868
  %5929 = fmul fast float %5928, %5920
  %5930 = fadd fast float %5923, %5910
  %5931 = fadd fast float %5926, %5911
  %5932 = fadd fast float %5929, %5912
  %5933 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5934 = call float @dx.op.unary.f32(i32 7, float %5931)  ; Saturate(value)
  %5935 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  br label %5936

; <label>:5936                                    ; preds = %5913, %5898
  %5937 = phi float [ %5933, %5913 ], [ %5910, %5898 ]
  %5938 = phi float [ %5934, %5913 ], [ %5911, %5898 ]
  %5939 = phi float [ %5935, %5913 ], [ %5912, %5898 ]
  %5940 = call float @dx.op.binary.f32(i32 35, float %5938, float %5939)  ; FMax(a,b)
  %5941 = call float @dx.op.binary.f32(i32 35, float %5937, float %5940)  ; FMax(a,b)
  %5942 = fsub fast float 1.000000e+00, %5941
  %5943 = fmul fast float %5899, %5857
  %5944 = fmul fast float %5900, %5857
  %5945 = fmul fast float %5901, %5857
  %5946 = fsub fast float 1.000000e+00, %5823
  %5947 = bitcast float %5946 to i32
  %5948 = sitofp i32 %5947 to float
  %5949 = fmul fast float %5948, 5.000000e+00
  %5950 = fadd fast float %5949, 0xC1EFBF8940000000
  %5951 = fptosi float %5950 to i32
  %5952 = bitcast i32 %5951 to float
  %5953 = fmul fast float %5952, %4033
  %5954 = fmul fast float %5942, %5953
  %5955 = fmul fast float %5954, %5725
  %5956 = fmul fast float %5954, %5726
  %5957 = fmul fast float %5954, %5727
  %5958 = fadd fast float %5955, %5943
  %5959 = fadd fast float %5956, %5944
  %5960 = fadd fast float %5957, %5945
  %5961 = fmul fast float %5829, %5811
  %5962 = fmul fast float %5961, %5942
  %5963 = fmul fast float %5829, %5812
  %5964 = fmul fast float %5963, %5942
  %5965 = fmul fast float %5829, %5813
  %5966 = fmul fast float %5965, %5942
  %5967 = fmul fast float %5961, %5958
  %5968 = fmul fast float %5963, %5959
  %5969 = fmul fast float %5965, %5960
  %5970 = fadd fast float %5962, %5709
  %5971 = fmul fast float %5970, %4029
  %5972 = fadd fast float %5964, %5710
  %5973 = fmul fast float %5972, %4029
  %5974 = fadd fast float %5966, %5711
  %5975 = fmul fast float %5974, %4029
  %5976 = fadd fast float %5967, %5752
  %5977 = fmul fast float %5976, %4029
  %5978 = fadd fast float %5968, %5755
  %5979 = fmul fast float %5978, %4029
  %5980 = fadd fast float %5969, %5758
  %5981 = fmul fast float %5980, %4029
  br label %5982

; <label>:5982                                    ; preds = %5936, %5803, %5705
  %5983 = phi float [ %5753, %5705 ], [ %5753, %5803 ], [ %5977, %5936 ]
  %5984 = phi float [ %5756, %5705 ], [ %5756, %5803 ], [ %5979, %5936 ]
  %5985 = phi float [ %5759, %5705 ], [ %5759, %5803 ], [ %5981, %5936 ]
  %5986 = phi float [ %5748, %5705 ], [ %5748, %5803 ], [ %5971, %5936 ]
  %5987 = phi float [ %5749, %5705 ], [ %5749, %5803 ], [ %5973, %5936 ]
  %5988 = phi float [ %5750, %5705 ], [ %5750, %5803 ], [ %5975, %5936 ]
  %5989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.i32 %5989, 0
  %5991 = icmp eq i32 %5990, 0
  br i1 %5991, label %6423, label %5992

; <label>:5992                                    ; preds = %5982
  %5993 = fptoui float %78 to i32
  %5994 = fptoui float %79 to i32
  %5995 = lshr i32 %5993, 4
  %5996 = lshr i32 %5994, 4
  %5997 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5998 = extractvalue %dx.types.CBufRet.i32 %5997, 0
  %5999 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5996, i32 %5998, i32 %5995)  ; UMad(a,b,c)
  %6000 = add nsw i32 %5990, -1
  %6001 = call i32 @dx.op.binary.i32(i32 37, i32 %6000, i32 0)  ; IMax(a,b)
  %6002 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6003 = fptoui float %6002 to i32
  %6004 = lshr i32 %6003, 5
  %6005 = call i32 @dx.op.binary.i32(i32 40, i32 %6004, i32 8191)  ; UMin(a,b)
  %6006 = shl i32 %6005, 2
  %6007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6006, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.i32 %6007, 0
  %6009 = lshr i32 %6008, 16
  %6010 = and i32 %6008, 65535
  %6011 = lshr i32 %6008, 21
  %6012 = lshr i32 %6010, 5
  %6013 = call i32 @dx.op.binary.i32(i32 40, i32 %6012, i32 %6001)  ; UMin(a,b)
  %6014 = icmp ugt i32 %6011, %6013
  br i1 %6014, label %6423, label %6015

; <label>:6015                                    ; preds = %5992
  br label %6016

; <label>:6016                                    ; preds = %6413, %6015
  %6017 = phi i32 [ %6420, %6413 ], [ %6011, %6015 ]
  %6018 = phi float [ %6414, %6413 ], [ %5983, %6015 ]
  %6019 = phi float [ %6415, %6413 ], [ %5984, %6015 ]
  %6020 = phi float [ %6416, %6413 ], [ %5985, %6015 ]
  %6021 = phi float [ %6417, %6413 ], [ %5986, %6015 ]
  %6022 = phi float [ %6418, %6413 ], [ %5987, %6015 ]
  %6023 = phi float [ %6419, %6413 ], [ %5988, %6015 ]
  %6024 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6025 = extractvalue %dx.types.CBufRet.i32 %6024, 0
  %6026 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5999, i32 %6025, i32 %6017)  ; UMad(a,b,c)
  %6027 = shl i32 %6026, 2
  %6028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6027, i32 undef)  ; BufferLoad(srv,index,wot)
  %6029 = extractvalue %dx.types.ResRet.i32 %6028, 0
  %6030 = shl i32 %6017, 5
  %6031 = sub nsw i32 %6009, %6030
  %6032 = call i32 @dx.op.binary.i32(i32 37, i32 %6031, i32 0)  ; IMax(a,b)
  %6033 = call i32 @dx.op.binary.i32(i32 38, i32 %6032, i32 31)  ; IMin(a,b)
  %6034 = sub nsw i32 1, %6009
  %6035 = add nsw i32 %6034, %6010
  %6036 = call i32 @dx.op.binary.i32(i32 37, i32 %6035, i32 0)  ; IMax(a,b)
  %6037 = call i32 @dx.op.binary.i32(i32 38, i32 %6036, i32 32)  ; IMin(a,b)
  %6038 = and i32 %6037, 31
  %6039 = shl i32 -1, %6038
  %6040 = xor i32 %6039, -1
  %6041 = and i32 %6033, 31
  %6042 = shl i32 %6040, %6041
  %6043 = icmp eq i32 %6037, 32
  %6044 = select i1 %6043, i32 -1, i32 %6042
  %6045 = and i32 %6044, %6029
  %6046 = icmp eq i32 %6045, 0
  br i1 %6046, label %6413, label %6047

; <label>:6047                                    ; preds = %6016
  br label %6048

; <label>:6048                                    ; preds = %6128, %6047
  %6049 = phi i32 [ %6060, %6128 ], [ %6045, %6047 ]
  %6050 = phi float [ %6129, %6128 ], [ %6018, %6047 ]
  %6051 = phi float [ %6130, %6128 ], [ %6019, %6047 ]
  %6052 = phi float [ %6131, %6128 ], [ %6020, %6047 ]
  %6053 = phi float [ %6132, %6128 ], [ %6021, %6047 ]
  %6054 = phi float [ %6133, %6128 ], [ %6022, %6047 ]
  %6055 = phi float [ %6134, %6128 ], [ %6023, %6047 ]
  %6056 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6049)  ; FirstbitLo(value)
  %6057 = add i32 %6056, %6030
  %6058 = and i32 %6056, 31
  %6059 = shl i32 1, %6058
  %6060 = xor i32 %6059, %6049
  %6061 = mul i32 %6057, 112
  %6062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6061, i32 undef)  ; BufferLoad(srv,index,wot)
  %6063 = extractvalue %dx.types.ResRet.f32 %6062, 0
  %6064 = extractvalue %dx.types.ResRet.f32 %6062, 1
  %6065 = extractvalue %dx.types.ResRet.f32 %6062, 2
  %6066 = or i32 %6061, 12
  %6067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6066, i32 undef)  ; BufferLoad(srv,index,wot)
  %6068 = extractvalue %dx.types.ResRet.f32 %6067, 0
  %6069 = add i32 %6061, 44
  %6070 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6069, i32 undef)  ; BufferLoad(srv,index,wot)
  %6071 = extractvalue %dx.types.ResRet.f32 %6070, 0
  %6072 = add i32 %6061, 48
  %6073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6072, i32 undef)  ; BufferLoad(srv,index,wot)
  %6074 = extractvalue %dx.types.ResRet.f32 %6073, 0
  %6075 = extractvalue %dx.types.ResRet.f32 %6073, 1
  %6076 = extractvalue %dx.types.ResRet.f32 %6073, 2
  %6077 = add i32 %6061, 80
  %6078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6077, i32 undef)  ; BufferLoad(srv,index,wot)
  %6079 = extractvalue %dx.types.ResRet.f32 %6078, 1
  %6080 = extractvalue %dx.types.ResRet.f32 %6078, 2
  %6081 = call float @dx.op.dot3.f32(i32 55, float %6063, float %6064, float %6065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6082 = select i1 %183, float %6079, float %6063
  %6083 = select i1 %183, float %6081, float %6064
  %6084 = select i1 %183, float %6080, float %6065
  %6085 = fsub fast float %6074, %141
  %6086 = fsub fast float %6075, %142
  %6087 = fsub fast float %6076, %143
  %6088 = call float @dx.op.dot3.f32(i32 55, float %6085, float %6086, float %6087, float %6085, float %6086, float %6087)  ; Dot3(ax,ay,az,bx,by,bz)
  %6089 = call float @dx.op.unary.f32(i32 24, float %6088)  ; Sqrt(value)
  %6090 = fdiv fast float 1.000000e+00, %6089
  %6091 = fmul fast float %6090, %6085
  %6092 = fmul fast float %6090, %6086
  %6093 = fmul fast float %6090, %6087
  %6094 = fadd fast float %6089, %6068
  %6095 = fdiv fast float 1.000000e+00, %6094
  %6096 = fmul float %6071, %6095
  %6097 = fmul float %6096, %6096
  %6098 = call float @dx.op.unary.f32(i32 7, float %6097)  ; Saturate(value)
  %6099 = and i32 %6059, %6045
  %6100 = icmp eq i32 %6099, 0
  br i1 %6100, label %6123, label %6101, !dx.controlflow.hints !88

; <label>:6101                                    ; preds = %6048
  %6102 = lshr i32 %5993, 5
  %6103 = lshr i32 %5994, 5
  %6104 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6102, i32 %6103, i32 %6057, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6105 = extractvalue %dx.types.ResRet.i32 %6104, 0
  %6106 = and i32 %6105, 3
  %6107 = icmp eq i32 %6106, 0
  %6108 = select i1 %6107, float 1.000000e+00, float 0.000000e+00
  %6109 = icmp eq i32 %6106, 3
  br i1 %6109, label %6110, label %6123

; <label>:6110                                    ; preds = %6101
  %6111 = lshr i32 %6105, 10
  %6112 = and i32 %6111, 8160
  %6113 = and i32 %5994, 31
  %6114 = or i32 %6112, %6113
  %6115 = lshr i32 %6105, 1
  %6116 = and i32 %6115, 16352
  %6117 = and i32 %5993, 31
  %6118 = or i32 %6116, %6117
  %6119 = lshr i32 %6105, 23
  %6120 = and i32 %6119, 255
  %6121 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6118, i32 %6114, i32 %6120, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6122 = extractvalue %dx.types.ResRet.f32 %6121, 0
  br label %6123

; <label>:6123                                    ; preds = %6110, %6101, %6048
  %6124 = phi float [ %6122, %6110 ], [ %6108, %6101 ], [ 0.000000e+00, %6048 ]
  %6125 = call float @dx.op.binary.f32(i32 36, float %6124, float %6124)  ; FMin(a,b)
  %6126 = call float @dx.op.binary.f32(i32 36, float %6124, float %6125)  ; FMin(a,b)
  %6127 = fcmp fast ogt float %6126, 0.000000e+00
  br i1 %6127, label %6136, label %6128, !dx.controlflow.hints !89

; <label>:6128                                    ; preds = %6369, %6123
  %6129 = phi float [ %6050, %6123 ], [ %6409, %6369 ]
  %6130 = phi float [ %6051, %6123 ], [ %6410, %6369 ]
  %6131 = phi float [ %6052, %6123 ], [ %6411, %6369 ]
  %6132 = phi float [ %6053, %6123 ], [ %6403, %6369 ]
  %6133 = phi float [ %6054, %6123 ], [ %6404, %6369 ]
  %6134 = phi float [ %6055, %6123 ], [ %6405, %6369 ]
  %6135 = icmp eq i32 %6049, %6059
  br i1 %6135, label %6412, label %6048

; <label>:6136                                    ; preds = %6123
  %6137 = fmul fast float %6124, %6082
  %6138 = fmul fast float %6124, %6083
  %6139 = fmul fast float %6124, %6084
  %6140 = fsub fast float %6076, %4434
  %6141 = fcmp fast ogt float %6140, 0.000000e+00
  %6142 = fsub fast float %143, %4434
  %6143 = fcmp fast ogt float %6142, 0.000000e+00
  %6144 = xor i1 %6143, %6141
  %6145 = fsub fast float %4434, %6076
  %6146 = fmul fast float %6145, 2.000000e+00
  %6147 = fadd fast float %6146, %6076
  %6148 = select i1 %6144, float %6076, float %6147
  %6149 = fsub fast float %6148, %143
  %6150 = call float @dx.op.dot3.f32(i32 55, float %6085, float %6086, float %6149, float %6085, float %6086, float %6149)  ; Dot3(ax,ay,az,bx,by,bz)
  %6151 = call float @dx.op.unary.f32(i32 25, float %6150)  ; Rsqrt(value)
  %6152 = fmul fast float %6151, %6085
  %6153 = fmul fast float %6151, %6086
  %6154 = fmul fast float %6151, %6149
  %6155 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4442)  ; Dot3(ax,ay,az,bx,by,bz)
  %6156 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6152, float %6153, float %6154)  ; Dot3(ax,ay,az,bx,by,bz)
  %6157 = fdiv fast float 1.000000e+00, %6156
  %6158 = fmul fast float %6157, %6155
  %6159 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6142, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6160 = fcmp fast ogt float %6159, 0.000000e+00
  %6161 = fcmp fast olt float %6159, 0.000000e+00
  %6162 = zext i1 %6160 to i32
  %6163 = zext i1 %6161 to i32
  %6164 = sub nsw i32 %6162, %6163
  %6165 = sitofp i32 %6164 to float
  %6166 = fsub fast float %6148, %4434
  %6167 = call float @dx.op.dot3.f32(i32 55, float %6085, float %6086, float %6166, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6168 = fcmp fast ogt float %6167, 0.000000e+00
  %6169 = fcmp fast olt float %6167, 0.000000e+00
  %6170 = zext i1 %6168 to i32
  %6171 = zext i1 %6169 to i32
  %6172 = sub nsw i32 %6170, %6171
  %6173 = sitofp i32 %6172 to float
  %6174 = fcmp fast une float %6165, %6173
  br i1 %6174, label %6175, label %6185

; <label>:6175                                    ; preds = %6136
  %6176 = fmul fast float %6158, %6154
  %6177 = fmul fast float %6158, %6153
  %6178 = fmul fast float %6158, %6152
  %6179 = fmul fast float %6178, %6178
  %6180 = fmul fast float %6177, %6177
  %6181 = fadd fast float %6179, %6180
  %6182 = fmul fast float %6176, %6176
  %6183 = fadd fast float %6181, %6182
  %6184 = call float @dx.op.unary.f32(i32 24, float %6183)  ; Sqrt(value)
  br label %6197

; <label>:6185                                    ; preds = %6136
  %6186 = icmp slt i32 %6164, 0
  br i1 %6186, label %6187, label %6197

; <label>:6187                                    ; preds = %6185
  %6188 = fsub fast float %141, %6074
  %6189 = fsub fast float %142, %6075
  %6190 = fsub fast float %143, %6148
  %6191 = fmul fast float %6188, %6188
  %6192 = fmul fast float %6189, %6189
  %6193 = fadd fast float %6191, %6192
  %6194 = fmul fast float %6190, %6190
  %6195 = fadd fast float %6193, %6194
  %6196 = call float @dx.op.unary.f32(i32 24, float %6195)  ; Sqrt(value)
  br label %6197

; <label>:6197                                    ; preds = %6187, %6185, %6175
  %6198 = phi float [ %6184, %6175 ], [ %6196, %6187 ], [ 0.000000e+00, %6185 ]
  %6199 = and i1 %6143, %6141
  %6200 = fsub fast float -0.000000e+00, %6198
  %6201 = select i1 %6199, float -0.000000e+00, float %6200
  %6202 = fmul fast float %4435, 0x3FF7154760000000
  %6203 = fmul fast float %6202, %6201
  %6204 = fmul fast float %4436, 0x3FF7154760000000
  %6205 = fmul fast float %6204, %6201
  %6206 = fmul fast float %4437, 0x3FF7154760000000
  %6207 = fmul fast float %6206, %6201
  %6208 = call float @dx.op.unary.f32(i32 21, float %6203)  ; Exp(value)
  %6209 = call float @dx.op.unary.f32(i32 21, float %6205)  ; Exp(value)
  %6210 = call float @dx.op.unary.f32(i32 21, float %6207)  ; Exp(value)
  %6211 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6212 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6213 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6214 = fmul fast float %6137, %6211
  %6215 = fmul fast float %6138, %6212
  %6216 = fmul fast float %6139, %6213
  %6217 = fsub fast float %6091, %4634
  %6218 = fsub fast float %6092, %4633
  %6219 = fsub fast float %6093, %4632
  %6220 = call float @dx.op.dot3.f32(i32 55, float %6217, float %6218, float %6219, float %6217, float %6218, float %6219)  ; Dot3(ax,ay,az,bx,by,bz)
  %6221 = call float @dx.op.unary.f32(i32 25, float %6220)  ; Rsqrt(value)
  %6222 = fmul fast float %6221, %6217
  %6223 = fmul fast float %6221, %6218
  %6224 = fmul fast float %6221, %6219
  %6225 = call float @dx.op.dot3.f32(i32 55, float %6091, float %6092, float %6093, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %6226 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4630, float %4629, float %6222, float %6223, float %6224)  ; Dot3(ax,ay,az,bx,by,bz)
  %6227 = call float @dx.op.unary.f32(i32 7, float %6225)  ; Saturate(value)
  %6228 = fmul fast float %6227, %6098
  %6229 = bitcast i32 %4687 to float
  %6230 = fmul fast float %6227, %6227
  %6231 = fmul fast float %6230, %6229
  %6232 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6233 = fmul fast float %6228, %6232
  %6234 = bitcast float %6088 to i32
  %6235 = ashr i32 %6234, 1
  %6236 = sub nsw i32 1597463007, %6235
  %6237 = bitcast i32 %6236 to float
  %6238 = fmul fast float %6237, %6085
  %6239 = fmul fast float %6237, %6086
  %6240 = fmul fast float %6237, %6087
  %6241 = fsub fast float %6238, %4634
  %6242 = fsub fast float %6239, %4633
  %6243 = fsub fast float %6240, %4632
  %6244 = call float @dx.op.dot3.f32(i32 55, float %6241, float %6242, float %6243, float %6241, float %6242, float %6243)  ; Dot3(ax,ay,az,bx,by,bz)
  %6245 = call float @dx.op.unary.f32(i32 25, float %6244)  ; Rsqrt(value)
  %6246 = fmul fast float %6241, %6245
  %6247 = fmul fast float %6242, %6245
  %6248 = fmul fast float %6243, %6245
  %6249 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %6246, float %6247, float %6248)  ; Dot3(ax,ay,az,bx,by,bz)
  %6250 = fmul fast float %6249, %6249
  %6251 = call float @dx.op.unary.f32(i32 6, float %6225)  ; FAbs(value)
  %6252 = fsub fast float 1.000000e+00, %4681
  %6253 = fmul fast float %4663, %4663
  %6254 = fmul fast float %6253, %6252
  %6255 = fadd fast float %6254, %4681
  %6256 = bitcast float %6255 to i32
  %6257 = ashr i32 %6256, 1
  %6258 = add nsw i32 %6257, 532487669
  %6259 = bitcast i32 %6258 to float
  %6260 = fadd fast float %6259, %4663
  %6261 = fmul fast float %4681, %6250
  %6262 = fsub fast float 1.000000e+00, %6250
  %6263 = fadd fast float %6262, %6261
  %6264 = fmul fast float %6251, %6251
  %6265 = fmul fast float %6264, %6252
  %6266 = fadd fast float %6265, %4681
  %6267 = bitcast float %6266 to i32
  %6268 = ashr i32 %6267, 1
  %6269 = add nsw i32 %6268, 532487669
  %6270 = bitcast i32 %6269 to float
  %6271 = fadd fast float %6270, %6251
  %6272 = fmul fast float %6263, %6263
  %6273 = fmul fast float %6272, %6260
  %6274 = fmul fast float %6273, %6271
  %6275 = fdiv fast float 1.000000e+00, %6274
  %6276 = bitcast float %4681 to i32
  %6277 = sitofp i32 %6276 to float
  %6278 = fmul fast float %6277, 0x3FE7F73180000000
  %6279 = fadd fast float %6278, 0x41AFE27C40000000
  %6280 = fptosi float %6279 to i32
  %6281 = bitcast i32 %6280 to float
  %6282 = fmul fast float %6071, 0x3FD80E9D60000000
  %6283 = fmul fast float %6282, %6237
  %6284 = fadd fast float %6281, %6283
  %6285 = bitcast float %6284 to i32
  %6286 = sub nsw i32 2129859010, %6285
  %6287 = bitcast i32 %6286 to float
  %6288 = fmul fast float %4681, %6275
  %6289 = fmul fast float %6288, %6281
  %6290 = fmul fast float %6289, %6287
  %6291 = call float @dx.op.unary.f32(i32 6, float %6226)  ; FAbs(value)
  %6292 = fsub fast float 1.000000e+00, %6291
  %6293 = bitcast float %6292 to i32
  %6294 = sitofp i32 %6293 to float
  %6295 = fmul fast float %6294, 5.000000e+00
  %6296 = fadd fast float %6295, 0xC1EFBF8940000000
  %6297 = fptosi float %6296 to i32
  %6298 = bitcast i32 %6297 to float
  %6299 = fsub fast float 1.000000e+00, %4641
  %6300 = fsub fast float 1.000000e+00, %4642
  %6301 = fsub fast float 1.000000e+00, %4661
  %6302 = fmul fast float %6298, %6299
  %6303 = fmul fast float %6298, %6300
  %6304 = fmul fast float %6298, %6301
  %6305 = fadd fast float %6302, %4641
  %6306 = fadd fast float %6303, %4642
  %6307 = fadd fast float %6304, %4661
  br i1 %4799, label %6308, label %6331

; <label>:6308                                    ; preds = %6197
  %6309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4032, float %6291, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6310 = extractvalue %dx.types.ResRet.f32 %6309, 0
  %6311 = extractvalue %dx.types.ResRet.f32 %6309, 1
  %6312 = extractvalue %dx.types.ResRet.f32 %6309, 2
  %6313 = fadd fast float %6310, -5.000000e-01
  %6314 = fadd fast float %6311, -5.000000e-01
  %6315 = fadd fast float %6312, -5.000000e-01
  %6316 = fmul fast float %4641, 4.000000e+00
  %6317 = fmul fast float %6316, %6299
  %6318 = fmul fast float %6317, %6313
  %6319 = fmul fast float %4642, 4.000000e+00
  %6320 = fmul fast float %6319, %6300
  %6321 = fmul fast float %6320, %6314
  %6322 = fmul fast float %4661, 4.000000e+00
  %6323 = fmul fast float %6322, %6301
  %6324 = fmul fast float %6323, %6315
  %6325 = fadd fast float %6318, %6305
  %6326 = fadd fast float %6321, %6306
  %6327 = fadd fast float %6324, %6307
  %6328 = call float @dx.op.unary.f32(i32 7, float %6325)  ; Saturate(value)
  %6329 = call float @dx.op.unary.f32(i32 7, float %6326)  ; Saturate(value)
  %6330 = call float @dx.op.unary.f32(i32 7, float %6327)  ; Saturate(value)
  br label %6331

; <label>:6331                                    ; preds = %6308, %6197
  %6332 = phi float [ %6328, %6308 ], [ %6305, %6197 ]
  %6333 = phi float [ %6329, %6308 ], [ %6306, %6197 ]
  %6334 = phi float [ %6330, %6308 ], [ %6307, %6197 ]
  %6335 = fmul fast float %6225, 9.843750e-01
  %6336 = fadd fast float %6335, 7.812500e-03
  %6337 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6336, float %4789, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6338 = extractvalue %dx.types.ResRet.f32 %6337, 2
  %6339 = extractvalue %dx.types.ResRet.f32 %6337, 3
  %6340 = fmul fast float %6338, %4641
  %6341 = fmul fast float %6338, %4642
  %6342 = fmul fast float %6338, %4661
  %6343 = fadd fast float %6340, %6339
  %6344 = fadd fast float %6341, %6339
  %6345 = fadd fast float %6342, %6339
  br i1 %4799, label %6346, label %6369

; <label>:6346                                    ; preds = %6331
  %6347 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4032, float %6225, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6348 = extractvalue %dx.types.ResRet.f32 %6347, 0
  %6349 = extractvalue %dx.types.ResRet.f32 %6347, 1
  %6350 = extractvalue %dx.types.ResRet.f32 %6347, 2
  %6351 = fadd fast float %6348, -5.000000e-01
  %6352 = fadd fast float %6349, -5.000000e-01
  %6353 = fadd fast float %6350, -5.000000e-01
  %6354 = fmul fast float %4641, 4.000000e+00
  %6355 = fmul fast float %6354, %6299
  %6356 = fmul fast float %6355, %6351
  %6357 = fmul fast float %4642, 4.000000e+00
  %6358 = fmul fast float %6357, %6300
  %6359 = fmul fast float %6358, %6352
  %6360 = fmul fast float %4661, 4.000000e+00
  %6361 = fmul fast float %6360, %6301
  %6362 = fmul fast float %6361, %6353
  %6363 = fadd fast float %6356, %6343
  %6364 = fadd fast float %6359, %6344
  %6365 = fadd fast float %6362, %6345
  %6366 = call float @dx.op.unary.f32(i32 7, float %6363)  ; Saturate(value)
  %6367 = call float @dx.op.unary.f32(i32 7, float %6364)  ; Saturate(value)
  %6368 = call float @dx.op.unary.f32(i32 7, float %6365)  ; Saturate(value)
  br label %6369

; <label>:6369                                    ; preds = %6346, %6331
  %6370 = phi float [ %6366, %6346 ], [ %6343, %6331 ]
  %6371 = phi float [ %6367, %6346 ], [ %6344, %6331 ]
  %6372 = phi float [ %6368, %6346 ], [ %6345, %6331 ]
  %6373 = call float @dx.op.binary.f32(i32 35, float %6371, float %6372)  ; FMax(a,b)
  %6374 = call float @dx.op.binary.f32(i32 35, float %6370, float %6373)  ; FMax(a,b)
  %6375 = fsub fast float 1.000000e+00, %6374
  %6376 = fmul fast float %6332, %6290
  %6377 = fmul fast float %6333, %6290
  %6378 = fmul fast float %6334, %6290
  %6379 = fsub fast float 1.000000e+00, %6226
  %6380 = bitcast float %6379 to i32
  %6381 = sitofp i32 %6380 to float
  %6382 = fmul fast float %6381, 5.000000e+00
  %6383 = fadd fast float %6382, 0xC1EFBF8940000000
  %6384 = fptosi float %6383 to i32
  %6385 = bitcast i32 %6384 to float
  %6386 = fmul fast float %6385, %4033
  %6387 = fmul fast float %6375, %6386
  %6388 = fmul fast float %6387, %5725
  %6389 = fmul fast float %6387, %5726
  %6390 = fmul fast float %6387, %5727
  %6391 = fadd fast float %6388, %6376
  %6392 = fadd fast float %6389, %6377
  %6393 = fadd fast float %6390, %6378
  %6394 = fmul fast float %6214, %4029
  %6395 = fmul fast float %6394, %6233
  %6396 = fmul fast float %6395, %6375
  %6397 = fmul fast float %6215, %4029
  %6398 = fmul fast float %6397, %6233
  %6399 = fmul fast float %6398, %6375
  %6400 = fmul fast float %6216, %4029
  %6401 = fmul fast float %6400, %6233
  %6402 = fmul fast float %6401, %6375
  %6403 = fadd fast float %6396, %6053
  %6404 = fadd fast float %6399, %6054
  %6405 = fadd fast float %6402, %6055
  %6406 = fmul fast float %6395, %6391
  %6407 = fmul fast float %6398, %6392
  %6408 = fmul fast float %6401, %6393
  %6409 = fadd fast float %6406, %6050
  %6410 = fadd fast float %6407, %6051
  %6411 = fadd fast float %6408, %6052
  br label %6128

; <label>:6412                                    ; preds = %6128
  br label %6413

; <label>:6413                                    ; preds = %6412, %6016
  %6414 = phi float [ %6018, %6016 ], [ %6129, %6412 ]
  %6415 = phi float [ %6019, %6016 ], [ %6130, %6412 ]
  %6416 = phi float [ %6020, %6016 ], [ %6131, %6412 ]
  %6417 = phi float [ %6021, %6016 ], [ %6132, %6412 ]
  %6418 = phi float [ %6022, %6016 ], [ %6133, %6412 ]
  %6419 = phi float [ %6023, %6016 ], [ %6134, %6412 ]
  %6420 = add i32 %6017, 1
  %6421 = icmp ugt i32 %6420, %6013
  br i1 %6421, label %6422, label %6016

; <label>:6422                                    ; preds = %6413
  br label %6423

; <label>:6423                                    ; preds = %6422, %5992, %5982
  %6424 = phi float [ %5983, %5982 ], [ %5983, %5992 ], [ %6414, %6422 ]
  %6425 = phi float [ %5984, %5982 ], [ %5984, %5992 ], [ %6415, %6422 ]
  %6426 = phi float [ %5985, %5982 ], [ %5985, %5992 ], [ %6416, %6422 ]
  %6427 = phi float [ %5986, %5982 ], [ %5986, %5992 ], [ %6417, %6422 ]
  %6428 = phi float [ %5987, %5982 ], [ %5987, %5992 ], [ %6418, %6422 ]
  %6429 = phi float [ %5988, %5982 ], [ %5988, %5992 ], [ %6419, %6422 ]
  %6430 = call float @dx.op.unary.f32(i32 24, float %4635)  ; Sqrt(value)
  %6431 = call float @dx.op.unary.f32(i32 24, float %4636)  ; Sqrt(value)
  %6432 = call float @dx.op.unary.f32(i32 24, float %4637)  ; Sqrt(value)
  %6433 = fmul fast float %6430, %6427
  %6434 = fmul fast float %6431, %6428
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 0
  br i1 %183, label %6437, label %6469

; <label>:6437                                    ; preds = %6423
  %6438 = fadd fast float %6429, %4035
  %6439 = fmul fast float %6438, %4037
  %6440 = fsub fast float 1.000000e+00, %4037
  %6441 = call float @dx.op.unary.f32(i32 7, float %6440)  ; Saturate(value)
  %6442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6443 = extractvalue %dx.types.CBufRet.f32 %6442, 3
  %6444 = fmul fast float %6443, %6441
  %6445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6446 = extractvalue %dx.types.CBufRet.f32 %6445, 0
  %6447 = fmul fast float %6446, %5731
  %6448 = extractvalue %dx.types.CBufRet.f32 %6445, 2
  %6449 = fmul fast float %6448, %4659
  %6450 = fadd fast float %6434, %6433
  %6451 = fmul fast float %6436, %6450
  %6452 = extractvalue %dx.types.CBufRet.f32 %6442, 1
  %6453 = fadd fast float %6444, %6439
  %6454 = fsub fast float %6453, %6447
  %6455 = fadd fast float %6454, %6449
  %6456 = fsub fast float %6455, %6452
  %6457 = extractvalue %dx.types.CBufRet.f32 %6442, 2
  %6458 = fmul fast float %6456, %6457
  %6459 = call float @dx.op.unary.f32(i32 7, float %6458)  ; Saturate(value)
  %6460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6461 = extractvalue %dx.types.CBufRet.f32 %6460, 0
  %6462 = fsub fast float %6459, %6461
  %6463 = fmul fast float %6462, 1.000000e+01
  %6464 = call float @dx.op.unary.f32(i32 7, float %6463)  ; Saturate(value)
  %6465 = fadd fast float %4036, -1.000000e+00
  %6466 = fmul fast float %6464, %6465
  %6467 = fadd fast float %6466, 1.000000e+00
  %6468 = fmul fast float %6467, %6459
  br label %6485

; <label>:6469                                    ; preds = %6423
  %6470 = fmul fast float %6432, %6429
  %6471 = fmul fast float %6436, %6433
  %6472 = fmul fast float %6436, %6434
  %6473 = fmul fast float %6470, %6436
  %6474 = add i32 %43, 356
  %6475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6474, i32 undef)  ; BufferLoad(srv,index,wot)
  %6476 = extractvalue %dx.types.ResRet.i32 %6475, 0
  %6477 = and i32 %6476, 32
  %6478 = icmp eq i32 %6477, 0
  br i1 %6478, label %6485, label %6479

; <label>:6479                                    ; preds = %6469
  %6480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6481 = extractvalue %dx.types.CBufRet.f32 %6480, 0
  %6482 = fmul fast float %6481, 0x3FE99999A0000000
  %6483 = fadd fast float %6481, %6471
  %6484 = fadd fast float %6482, %6473
  br label %6485

; <label>:6485                                    ; preds = %6479, %6469, %6437
  %6486 = phi float [ %6451, %6437 ], [ %6483, %6479 ], [ %6471, %6469 ]
  %6487 = phi float [ %6468, %6437 ], [ %6472, %6479 ], [ %6472, %6469 ]
  %6488 = phi float [ %6467, %6437 ], [ %6484, %6479 ], [ %6473, %6469 ]
  %6489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6490 = extractvalue %dx.types.CBufRet.f32 %6489, 0
  %6491 = fmul fast float %6490, %6425
  %6492 = fmul fast float %6490, %6426
  %6493 = fadd fast float %6425, %6424
  %6494 = select i1 %183, float %6493, float %6424
  %6495 = fmul float %6494, %6490
  %6496 = select i1 %183, float 0.000000e+00, float %6491
  %6497 = select i1 %183, float 0.000000e+00, float %6492
  %6498 = fmul fast float %6486, %6430
  %6499 = fmul fast float %6487, %6431
  %6500 = fmul fast float %6488, %6432
  %6501 = fadd fast float %6495, %6498
  %6502 = fadd fast float %6496, %6499
  %6503 = fadd fast float %6497, %6500
  %6504 = select i1 %183, float %6487, float %6502
  %6505 = select i1 %183, float %6488, float %6503
  %6506 = call float @dx.op.binary.f32(i32 36, float %6501, float 3.225500e+04)  ; FMin(a,b)
  %6507 = call float @dx.op.binary.f32(i32 36, float %6504, float 3.225500e+04)  ; FMin(a,b)
  %6508 = call float @dx.op.binary.f32(i32 36, float %6505, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6506)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6507)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6508)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

