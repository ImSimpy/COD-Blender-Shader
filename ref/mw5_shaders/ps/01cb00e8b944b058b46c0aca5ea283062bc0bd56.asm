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
; shader hash: 9dcd7f69efe412685354c2aed9cc394d
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
  %380 = add i32 %43, 472
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
  %538 = add i32 %43, 360
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
  %561 = add i32 %43, 440
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
  %759 = add i32 %43, 376
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
  %843 = add i32 %43, 392
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
  %891 = add i32 %43, 456
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
  %1165 = add i32 %43, 428
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
  %1217 = add i32 %43, 412
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
  %1243 = add i32 %43, 364
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
  %1266 = add i32 %43, 444
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
  %1464 = add i32 %43, 380
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
  %1548 = add i32 %43, 396
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
  %1596 = add i32 %43, 460
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
  %2059 = add i32 %43, 432
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
  %2111 = add i32 %43, 416
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
  %2137 = add i32 %43, 368
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
  %2160 = add i32 %43, 448
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
  %2358 = add i32 %43, 384
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
  %2442 = add i32 %43, 400
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
  %2490 = add i32 %43, 464
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
  %2953 = add i32 %43, 436
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
  %3005 = add i32 %43, 420
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
  %3031 = add i32 %43, 372
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
  %3054 = add i32 %43, 452
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
  %3252 = add i32 %43, 388
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
  %3336 = add i32 %43, 404
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
  %3384 = add i32 %43, 468
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
  %3618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3619 = extractvalue %dx.types.CBufRet.f32 %3618, 0
  %3620 = call float @dx.op.dot2.f32(i32 54, float %3605, float %3606, float %3605, float %3606)  ; Dot2(ax,ay,bx,by)
  %3621 = fmul fast float %3620, 0x3FE3333340000000
  %3622 = fsub fast float 1.000000e+00, %3621
  %3623 = call float @dx.op.dot3.f32(i32 55, float %3605, float %3606, float %3622, float %3605, float %3606, float %3622)  ; Dot3(ax,ay,az,bx,by,bz)
  %3624 = call float @dx.op.unary.f32(i32 25, float %3623)  ; Rsqrt(value)
  %3625 = fmul fast float %3624, %3605
  %3626 = fmul fast float %3624, %3606
  %3627 = fmul fast float %3622, %3624
  %3628 = fmul fast float %3627, %85
  %3629 = fmul fast float %3627, %86
  %3630 = fmul fast float %3627, %87
  %3631 = fmul fast float %3625, %59
  %3632 = fmul fast float %3625, %60
  %3633 = fmul fast float %3625, %61
  %3634 = fadd fast float %3628, %3631
  %3635 = fadd fast float %3629, %3632
  %3636 = fadd fast float %3630, %3633
  %3637 = fmul fast float %97, %3626
  %3638 = fmul fast float %98, %3626
  %3639 = fmul fast float %99, %3626
  %3640 = fadd fast float %3634, %3637
  %3641 = fadd fast float %3635, %3638
  %3642 = fadd fast float %3636, %3639
  %3643 = call float @dx.op.dot3.f32(i32 55, float %3640, float %3641, float %3642, float %3640, float %3641, float %3642)  ; Dot3(ax,ay,az,bx,by,bz)
  %3644 = call float @dx.op.unary.f32(i32 25, float %3643)  ; Rsqrt(value)
  %3645 = fmul fast float %3640, %3644
  %3646 = fmul fast float %3641, %3644
  %3647 = fmul fast float %3642, %3644
  %3648 = and i32 %45, 1
  %3649 = icmp eq i32 %3648, 0
  br i1 %3649, label %3650, label %4162

; <label>:3650                                    ; preds = %3604
  %3651 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3652 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3653 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3654 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3655 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3656 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3657 = fadd fast float %3651, %141
  %3658 = fadd fast float %3652, %142
  %3659 = fadd fast float %3653, %143
  %3660 = fadd fast float %3654, %141
  %3661 = fadd fast float %3655, %142
  %3662 = fadd fast float %3656, %143
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.CBufRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.CBufRet.f32 %3663, 2
  %3667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3668 = extractvalue %dx.types.CBufRet.f32 %3667, 2
  %3669 = extractvalue %dx.types.CBufRet.f32 %3667, 3
  %3670 = fmul fast float %3664, %78
  %3671 = fmul fast float %3670, %3668
  %3672 = fmul fast float %3665, %79
  %3673 = fmul fast float %3672, %3669
  %3674 = fptoui float %3671 to i32
  %3675 = fptoui float %3673 to i32
  %3676 = fadd fast float %3664, -1.000000e+00
  %3677 = fadd fast float %3665, -1.000000e+00
  %3678 = fptoui float %3676 to i32
  %3679 = fptoui float %3677 to i32
  %3680 = call i32 @dx.op.binary.i32(i32 40, i32 %3674, i32 %3678)  ; UMin(a,b)
  %3681 = call i32 @dx.op.binary.i32(i32 40, i32 %3675, i32 %3679)  ; UMin(a,b)
  %3682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3683 = extractvalue %dx.types.CBufRet.f32 %3682, 2
  %3684 = extractvalue %dx.types.CBufRet.f32 %3682, 3
  %3685 = fmul fast float %3683, %73
  %3686 = fsub fast float %3685, %3684
  %3687 = fadd fast float %3666, -1.000000e+00
  %3688 = call float @dx.op.binary.f32(i32 36, float %3686, float %3687)  ; FMin(a,b)
  %3689 = fptoui float %3688 to i32
  %3690 = fptoui float %3664 to i32
  %3691 = fptoui float %3665 to i32
  %3692 = mul i32 %3689, %3691
  %3693 = add i32 %3692, %3681
  %3694 = mul i32 %3693, %3690
  %3695 = add i32 %3694, %3680
  %3696 = shl i32 %3695, 2
  %3697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3696, i32 undef)  ; BufferLoad(srv,index,wot)
  %3698 = extractvalue %dx.types.ResRet.i32 %3697, 0
  %3699 = and i32 %3698, 1023
  %3700 = lshr i32 %3698, 10
  %3701 = icmp eq i32 %3699, 0
  br i1 %3701, label %4130, label %3702

; <label>:3702                                    ; preds = %3650
  %3703 = and i32 %3698, 1023
  br label %3704

; <label>:3704                                    ; preds = %3831, %3702
  %3705 = phi i32 [ %3781, %3831 ], [ 0, %3702 ]
  %3706 = phi float [ %3832, %3831 ], [ 0.000000e+00, %3702 ]
  %3707 = phi float [ %3833, %3831 ], [ %931, %3702 ]
  %3708 = phi float [ %3834, %3831 ], [ %3619, %3702 ]
  %3709 = phi float [ %3835, %3831 ], [ %3617, %3702 ]
  %3710 = phi float [ %3836, %3831 ], [ %3616, %3702 ]
  %3711 = phi float [ %3837, %3831 ], [ 0.000000e+00, %3702 ]
  %3712 = phi float [ %3838, %3831 ], [ %3610, %3702 ]
  %3713 = phi float [ %3839, %3831 ], [ %3611, %3702 ]
  %3714 = phi float [ %3840, %3831 ], [ %3612, %3702 ]
  %3715 = phi float [ %3841, %3831 ], [ %3645, %3702 ]
  %3716 = phi float [ %3842, %3831 ], [ %3646, %3702 ]
  %3717 = phi float [ %3843, %3831 ], [ %3647, %3702 ]
  %3718 = phi float [ %3844, %3831 ], [ %3615, %3702 ]
  %3719 = phi float [ %3845, %3831 ], [ %3614, %3702 ]
  %3720 = phi float [ %3846, %3831 ], [ 0.000000e+00, %3702 ]
  %3721 = phi float [ %3847, %3831 ], [ %3613, %3702 ]
  %3722 = phi float [ %3848, %3831 ], [ %3607, %3702 ]
  %3723 = phi float [ %3849, %3831 ], [ %3608, %3702 ]
  %3724 = phi float [ %3850, %3831 ], [ %3609, %3702 ]
  %3725 = add nuw nsw i32 %3705, %3700
  %3726 = shl i32 %3725, 2
  %3727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3728 = extractvalue %dx.types.ResRet.i32 %3727, 0
  %3729 = shl i32 %3728, 8
  %3730 = or i32 %3729, 48
  %3731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3735 = extractvalue %dx.types.ResRet.f32 %3731, 3
  %3736 = or i32 %3729, 64
  %3737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.i32 %3737, 0
  %3739 = extractvalue %dx.types.ResRet.i32 %3737, 1
  %3740 = or i32 %3729, 80
  %3741 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3740, i32 undef)  ; BufferLoad(srv,index,wot)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 2
  %3743 = extractvalue %dx.types.ResRet.f32 %3741, 3
  %3744 = or i32 %3729, 96
  %3745 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3744, i32 undef)  ; BufferLoad(srv,index,wot)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = extractvalue %dx.types.ResRet.f32 %3745, 1
  %3748 = extractvalue %dx.types.ResRet.f32 %3745, 2
  %3749 = extractvalue %dx.types.ResRet.f32 %3745, 3
  %3750 = or i32 %3729, 112
  %3751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3750, i32 undef)  ; BufferLoad(srv,index,wot)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 2
  %3753 = or i32 %3729, 128
  %3754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.f32 %3754, 0
  %3756 = extractvalue %dx.types.ResRet.f32 %3754, 1
  %3757 = extractvalue %dx.types.ResRet.f32 %3754, 2
  %3758 = extractvalue %dx.types.ResRet.f32 %3754, 3
  %3759 = or i32 %3729, 144
  %3760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3759, i32 undef)  ; BufferLoad(srv,index,wot)
  %3761 = extractvalue %dx.types.ResRet.f32 %3760, 0
  %3762 = extractvalue %dx.types.ResRet.f32 %3760, 1
  %3763 = extractvalue %dx.types.ResRet.f32 %3760, 2
  %3764 = extractvalue %dx.types.ResRet.f32 %3760, 3
  %3765 = or i32 %3729, 160
  %3766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3765, i32 undef)  ; BufferLoad(srv,index,wot)
  %3767 = extractvalue %dx.types.ResRet.f32 %3766, 0
  %3768 = extractvalue %dx.types.ResRet.f32 %3766, 1
  %3769 = extractvalue %dx.types.ResRet.f32 %3766, 2
  %3770 = extractvalue %dx.types.ResRet.f32 %3766, 3
  %3771 = or i32 %3729, 192
  %3772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3771, i32 undef)  ; BufferLoad(srv,index,wot)
  %3773 = extractvalue %dx.types.ResRet.i32 %3772, 0
  %3774 = or i32 %3729, 208
  %3775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = or i32 %3729, 248
  %3778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  %3780 = extractvalue %dx.types.ResRet.f32 %3778, 1
  %3781 = add nuw nsw i32 %3705, 1
  %3782 = bitcast float %3735 to i32
  %3783 = and i32 %3782, 512
  %3784 = icmp eq i32 %3783, 0
  %3785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.ResRet.f32 %3785, 1
  %3788 = extractvalue %dx.types.ResRet.f32 %3785, 2
  %3789 = extractvalue %dx.types.ResRet.f32 %3785, 3
  %3790 = call float @dx.op.dot4.f32(i32 56, float %3786, float %3787, float %3788, float %3789, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3791 = or i32 %3729, 16
  %3792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3791, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.f32 %3792, 0
  %3794 = extractvalue %dx.types.ResRet.f32 %3792, 1
  %3795 = extractvalue %dx.types.ResRet.f32 %3792, 2
  %3796 = extractvalue %dx.types.ResRet.f32 %3792, 3
  %3797 = call float @dx.op.dot4.f32(i32 56, float %3793, float %3794, float %3795, float %3796, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3798 = or i32 %3729, 32
  %3799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3803 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3804 = call float @dx.op.dot4.f32(i32 56, float %3800, float %3801, float %3802, float %3803, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3805 = call float @dx.op.unary.f32(i32 27, float %3790)  ; Round_ni(value)
  %3806 = call float @dx.op.unary.f32(i32 6, float %3805)  ; FAbs(value)
  %3807 = call float @dx.op.unary.f32(i32 27, float %3797)  ; Round_ni(value)
  %3808 = call float @dx.op.unary.f32(i32 6, float %3807)  ; FAbs(value)
  %3809 = call float @dx.op.unary.f32(i32 6, float %3804)  ; FAbs(value)
  %3810 = call float @dx.op.unary.f32(i32 27, float %3809)  ; Round_ni(value)
  %3811 = fadd fast float %3808, %3806
  %3812 = fadd fast float %3811, %3810
  %3813 = fcmp fast oeq float %3812, 0.000000e+00
  %3814 = call float @dx.op.dot4.f32(i32 56, float %3786, float %3787, float %3788, float %3789, float %3657, float %3658, float %3659, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3815 = call float @dx.op.dot4.f32(i32 56, float %3793, float %3794, float %3795, float %3796, float %3657, float %3658, float %3659, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3816 = call float @dx.op.dot4.f32(i32 56, float %3786, float %3787, float %3788, float %3789, float %3660, float %3661, float %3662, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3817 = call float @dx.op.dot4.f32(i32 56, float %3793, float %3794, float %3795, float %3796, float %3660, float %3661, float %3662, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3818 = fsub fast float %3814, %3790
  %3819 = fsub fast float %3816, %3790
  %3820 = fsub fast float %3815, %3797
  %3821 = fsub fast float %3817, %3797
  %3822 = call float @dx.op.dot3.f32(i32 55, float %3732, float %3733, float %3734, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3824 = extractvalue %dx.types.CBufRet.f32 %3823, 2
  %3825 = fadd fast float %3824, %3822
  %3826 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3823, 0
  %3828 = fcmp fast ogt float %3826, %3827
  %3829 = and i1 %3813, %3828
  %3830 = and i1 %3784, %3829
  br i1 %3830, label %3852, label %3831

; <label>:3831                                    ; preds = %4116, %3933, %3852, %3704
  %3832 = phi float [ %3706, %3852 ], [ %3936, %3933 ], [ %3936, %4116 ], [ %3706, %3704 ]
  %3833 = phi float [ %3707, %3852 ], [ %3707, %3933 ], [ %4091, %4116 ], [ %3707, %3704 ]
  %3834 = phi float [ %3708, %3852 ], [ %3708, %3933 ], [ %4090, %4116 ], [ %3708, %3704 ]
  %3835 = phi float [ %3709, %3852 ], [ %3709, %3933 ], [ %4088, %4116 ], [ %3709, %3704 ]
  %3836 = phi float [ %3710, %3852 ], [ %3710, %3933 ], [ %4060, %4116 ], [ %3710, %3704 ]
  %3837 = phi float [ %3711, %3852 ], [ %3711, %3933 ], [ %4058, %4116 ], [ %3711, %3704 ]
  %3838 = phi float [ %3712, %3852 ], [ %3712, %3933 ], [ %4126, %4116 ], [ %3712, %3704 ]
  %3839 = phi float [ %3713, %3852 ], [ %3713, %3933 ], [ %4127, %4116 ], [ %3713, %3704 ]
  %3840 = phi float [ %3714, %3852 ], [ %3714, %3933 ], [ %4128, %4116 ], [ %3714, %3704 ]
  %3841 = phi float [ %3715, %3852 ], [ %3715, %3933 ], [ %4039, %4116 ], [ %3715, %3704 ]
  %3842 = phi float [ %3716, %3852 ], [ %3716, %3933 ], [ %4040, %4116 ], [ %3716, %3704 ]
  %3843 = phi float [ %3717, %3852 ], [ %3717, %3933 ], [ %4041, %4116 ], [ %3717, %3704 ]
  %3844 = phi float [ %3718, %3852 ], [ %3718, %3933 ], [ %4068, %4116 ], [ %3718, %3704 ]
  %3845 = phi float [ %3719, %3852 ], [ %3719, %3933 ], [ %4065, %4116 ], [ %3719, %3704 ]
  %3846 = phi float [ %3720, %3852 ], [ %3720, %3933 ], [ %4062, %4116 ], [ %3720, %3704 ]
  %3847 = phi float [ %3721, %3852 ], [ %3721, %3933 ], [ %4056, %4116 ], [ %3721, %3704 ]
  %3848 = phi float [ %3722, %3852 ], [ %3722, %3933 ], [ %4051, %4116 ], [ %3722, %3704 ]
  %3849 = phi float [ %3723, %3852 ], [ %3723, %3933 ], [ %4052, %4116 ], [ %3723, %3704 ]
  %3850 = phi float [ %3724, %3852 ], [ %3724, %3933 ], [ %4053, %4116 ], [ %3724, %3704 ]
  %3851 = icmp eq i32 %3781, %3703
  br i1 %3851, label %4129, label %3704

; <label>:3852                                    ; preds = %3704
  %3853 = extractvalue %dx.types.ResRet.f32 %3751, 3
  %3854 = extractvalue %dx.types.ResRet.f32 %3751, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3856 = extractvalue %dx.types.ResRet.f32 %3741, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3858 = extractvalue %dx.types.ResRet.i32 %3737, 3
  %3859 = extractvalue %dx.types.ResRet.i32 %3737, 2
  %3860 = add i32 %3858, 0
  %3861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3860, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3863 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3861, %dx.types.Handle %3862, float %3790, float %3797, float undef, float undef, i32 0, i32 0, i32 undef, float %3818, float %3820, float undef, float %3819, float %3821, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3864 = extractvalue %dx.types.ResRet.f32 %3863, 0
  %3865 = fmul fast float %3864, %3857
  %3866 = fadd fast float %3865, %3856
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = fmul fast float %3790, %3746
  %3869 = call float @dx.op.tertiary.f32(i32 46, float %3747, float %3797, float %3868)  ; FMad(a,b,c)
  %3870 = fadd fast float %3869, %3855
  %3871 = fmul fast float %3790, %3748
  %3872 = call float @dx.op.tertiary.f32(i32 46, float %3749, float %3797, float %3871)  ; FMad(a,b,c)
  %3873 = fadd fast float %3872, %3854
  %3874 = fmul fast float %3818, %3746
  %3875 = call float @dx.op.tertiary.f32(i32 46, float %3747, float %3820, float %3874)  ; FMad(a,b,c)
  %3876 = fmul fast float %3818, %3748
  %3877 = call float @dx.op.tertiary.f32(i32 46, float %3749, float %3820, float %3876)  ; FMad(a,b,c)
  %3878 = fmul fast float %3819, %3746
  %3879 = call float @dx.op.tertiary.f32(i32 46, float %3747, float %3821, float %3878)  ; FMad(a,b,c)
  %3880 = fmul fast float %3819, %3748
  %3881 = call float @dx.op.tertiary.f32(i32 46, float %3749, float %3821, float %3880)  ; FMad(a,b,c)
  %3882 = add i32 %3859, 0
  %3883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3882, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3884 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3883, %dx.types.Handle %3862, float %3870, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float %3875, float %3877, float undef, float %3879, float %3881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3885 = extractvalue %dx.types.ResRet.f32 %3884, 0
  %3886 = and i32 %3782, 1024
  %3887 = icmp ne i32 %3886, 0
  %3888 = fcmp fast ogt float %3885, 0x3FE0101020000000
  %3889 = uitofp i1 %3888 to float
  %3890 = select i1 %3887, float %3889, float %3885
  %3891 = and i32 %3782, 8192
  %3892 = icmp ne i32 %3891, 0
  %3893 = select i1 %3892, float %3853, float 1.000000e+00
  %3894 = fmul fast float %3790, 2.000000e+00
  %3895 = fadd fast float %3894, -1.000000e+00
  %3896 = call float @dx.op.unary.f32(i32 6, float %3895)  ; FAbs(value)
  %3897 = fmul fast float %3896, %3779
  %3898 = fsub fast float %3897, %3779
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = fmul fast float %3797, 2.000000e+00
  %3901 = fadd fast float %3900, -1.000000e+00
  %3902 = call float @dx.op.unary.f32(i32 6, float %3901)  ; FAbs(value)
  %3903 = fmul fast float %3902, %3780
  %3904 = fsub fast float %3903, %3780
  %3905 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3906 = fmul fast float %3809, %3742
  %3907 = fsub fast float %3906, %3742
  %3908 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3909 = fmul fast float %3867, %3893
  %3910 = fmul fast float %3909, %3864
  %3911 = fmul fast float %3910, %3899
  %3912 = fmul fast float %3911, %3890
  %3913 = fmul fast float %3912, %3905
  %3914 = fmul fast float %3913, %3908
  %3915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3915, 1
  %3917 = extractvalue %dx.types.CBufRet.f32 %3915, 0
  %3918 = fsub fast float %3826, %3917
  %3919 = fmul fast float %3918, %3916
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = fmul fast float %3914, %3743
  %3922 = fadd fast float %3914, %3743
  %3923 = fmul fast float %3922, %3752
  %3924 = fsub fast float %3923, %3752
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = and i32 %3782, 128
  %3927 = icmp ne i32 %3926, 0
  %3928 = select i1 %3927, float %3925, float %3921
  %3929 = fmul fast float %3928, %3920
  %3930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3931 = extractvalue %dx.types.CBufRet.f32 %3930, 0
  %3932 = fcmp fast ugt float %3929, %3931
  br i1 %3932, label %3933, label %3831

; <label>:3933                                    ; preds = %3852
  %3934 = select i1 %3892, float %3929, float 0.000000e+00
  %3935 = fadd fast float %3934, %3706
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  br i1 %3892, label %3831, label %3937

; <label>:3937                                    ; preds = %3933
  %3938 = and i32 %3782, 4
  %3939 = and i32 %3782, 8
  %3940 = add i32 %3738, 0
  %3941 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3940, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3943 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3941, %dx.types.Handle %3942, float %3870, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float %3875, float %3877, float undef, float %3879, float %3881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3944 = extractvalue %dx.types.ResRet.f32 %3943, 0
  %3945 = extractvalue %dx.types.ResRet.f32 %3943, 1
  %3946 = extractvalue %dx.types.ResRet.f32 %3943, 2
  %3947 = extractvalue %dx.types.ResRet.f32 %3943, 3
  %3948 = bitcast float %3764 to i32
  %3949 = and i32 %3948, 255
  %3950 = uitofp i32 %3949 to float
  %3951 = lshr i32 %3948, 8
  %3952 = and i32 %3951, 255
  %3953 = uitofp i32 %3952 to float
  %3954 = fmul fast float %3947, %3950
  %3955 = fadd fast float %3954, %3953
  %3956 = fmul fast float %3955, 0x3F70101000000000
  %3957 = add i32 %3739, 0
  %3958 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3957, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3959 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3958, %dx.types.Handle %3942, float %3870, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float %3875, float %3877, float undef, float %3879, float %3881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3960 = extractvalue %dx.types.ResRet.f32 %3959, 0
  %3961 = extractvalue %dx.types.ResRet.f32 %3959, 1
  %3962 = extractvalue %dx.types.ResRet.f32 %3959, 2
  %3963 = extractvalue %dx.types.ResRet.f32 %3959, 3
  %3964 = bitcast float %3758 to i32
  %3965 = and i32 %3964, 255
  %3966 = uitofp i32 %3965 to float
  %3967 = lshr i32 %3964, 8
  %3968 = and i32 %3967, 255
  %3969 = uitofp i32 %3968 to float
  %3970 = lshr i32 %3964, 16
  %3971 = and i32 %3970, 255
  %3972 = uitofp i32 %3971 to float
  %3973 = fmul fast float %3972, 0x3F70101000000000
  %3974 = fmul fast float %3960, %3966
  %3975 = fadd fast float %3974, %3969
  %3976 = fmul fast float %3975, 0x3F70101000000000
  %3977 = fadd fast float %3961, -5.000000e-01
  %3978 = fadd fast float %3963, -5.000000e-01
  %3979 = fmul fast float %3977, %3973
  %3980 = fmul fast float %3978, %3973
  %3981 = fadd fast float %3979, 5.000000e-01
  %3982 = fadd fast float %3980, 5.000000e-01
  %3983 = fmul fast float %3944, %3767
  %3984 = fmul fast float %3945, %3768
  %3985 = fmul fast float %3946, %3769
  %3986 = fmul fast float %3981, 2.000000e+00
  %3987 = fadd fast float %3986, -1.000000e+00
  %3988 = fmul fast float %3982, 2.000000e+00
  %3989 = fadd fast float %3988, -1.000000e+00
  %3990 = fadd fast float %3987, %3989
  %3991 = fmul fast float %3990, 5.000000e-01
  %3992 = fsub fast float %3987, %3989
  %3993 = fmul fast float %3992, 5.000000e-01
  %3994 = call float @dx.op.unary.f32(i32 6, float %3991)  ; FAbs(value)
  %3995 = fsub fast float 1.000000e+00, %3994
  %3996 = call float @dx.op.unary.f32(i32 6, float %3993)  ; FAbs(value)
  %3997 = fsub fast float %3995, %3996
  %3998 = call float @dx.op.dot3.f32(i32 55, float %3991, float %3993, float %3997, float %3991, float %3993, float %3997)  ; Dot3(ax,ay,az,bx,by,bz)
  %3999 = call float @dx.op.unary.f32(i32 25, float %3998)  ; Rsqrt(value)
  %4000 = fmul fast float %3991, %3999
  %4001 = fmul fast float %3993, %3999
  %4002 = fmul fast float %3999, %3997
  %4003 = fmul fast float %4002, %3732
  %4004 = fmul fast float %4002, %3733
  %4005 = fmul fast float %4002, %3734
  %4006 = fmul fast float %4000, %3755
  %4007 = fmul fast float %4000, %3756
  %4008 = fmul fast float %4000, %3757
  %4009 = fadd fast float %4006, %4003
  %4010 = fadd fast float %4007, %4004
  %4011 = fadd fast float %4008, %4005
  %4012 = fmul fast float %4001, %3761
  %4013 = fmul fast float %4001, %3762
  %4014 = fmul fast float %4001, %3763
  %4015 = fadd fast float %4009, %4012
  %4016 = fadd fast float %4010, %4013
  %4017 = fadd fast float %4011, %4014
  %4018 = call float @dx.op.dot3.f32(i32 55, float %4015, float %4016, float %4017, float %4015, float %4016, float %4017)  ; Dot3(ax,ay,az,bx,by,bz)
  %4019 = call float @dx.op.unary.f32(i32 25, float %4018)  ; Rsqrt(value)
  %4020 = fmul fast float %4015, %4019
  %4021 = fmul fast float %4016, %4019
  %4022 = fmul fast float %4017, %4019
  %4023 = icmp ne i32 %3939, 0
  %4024 = select i1 %4023, float 1.000000e+00, float 0.000000e+00
  %4025 = fmul fast float %3929, %4024
  %4026 = and i32 %3782, 1
  %4027 = icmp eq i32 %4026, 0
  br i1 %4027, label %4028, label %4032

; <label>:4028                                    ; preds = %3937
  %4029 = fsub fast float %4020, %3715
  %4030 = fsub fast float %4021, %3716
  %4031 = fsub fast float %4022, %3717
  br label %4032

; <label>:4032                                    ; preds = %4028, %3937
  %4033 = phi float [ %4029, %4028 ], [ %4020, %3937 ]
  %4034 = phi float [ %4030, %4028 ], [ %4021, %3937 ]
  %4035 = phi float [ %4031, %4028 ], [ %4022, %3937 ]
  %4036 = fmul float %4035, %4025
  %4037 = fmul float %4034, %4025
  %4038 = fmul float %4033, %4025
  %4039 = fadd fast float %4038, %3715
  %4040 = fadd fast float %4037, %3716
  %4041 = fadd fast float %4036, %3717
  %4042 = icmp ne i32 %3938, 0
  %4043 = select i1 %4042, float 1.000000e+00, float 0.000000e+00
  %4044 = fmul fast float %3929, %4043
  %4045 = fsub fast float %3983, %3722
  %4046 = fsub fast float %3984, %3723
  %4047 = fsub fast float %3985, %3724
  %4048 = fmul fast float %4045, %4044
  %4049 = fmul fast float %4046, %4044
  %4050 = fmul fast float %4047, %4044
  %4051 = fadd fast float %4048, %3722
  %4052 = fadd fast float %4049, %3723
  %4053 = fadd fast float %4050, %3724
  %4054 = fsub fast float %3956, %3721
  %4055 = fmul fast float %4054, %4044
  %4056 = fadd fast float %4055, %3721
  %4057 = fmul fast float %4044, %3711
  %4058 = fsub fast float %3711, %4057
  %4059 = fmul fast float %4044, %3710
  %4060 = fsub fast float %3710, %4059
  %4061 = fadd fast float %3929, %3720
  %4062 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4063 = fsub fast float %3976, %3719
  %4064 = fmul fast float %4063, %4025
  %4065 = fadd fast float %4064, %3719
  %4066 = fsub fast float %3962, %3718
  %4067 = fmul fast float %4066, %4025
  %4068 = fadd fast float %4067, %3718
  %4069 = call float @dx.op.dot3.f32(i32 55, float %3983, float %3984, float %3985, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4072 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4073 = fmul fast float %4072, %4069
  %4074 = fadd fast float %4073, %4071
  %4075 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4076 = bitcast float %3770 to i32
  %4077 = and i32 %4076, 65535
  %4078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4077)  ; LegacyF16ToF32(value)
  %4079 = lshr i32 %4076, 16
  %4080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4079)  ; LegacyF16ToF32(value)
  %4081 = fcmp fast oge float %4078, 0.000000e+00
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = select i1 %4081, float %4078, float %4083
  %4085 = fadd fast float %4084, %4080
  %4086 = fsub fast float %4075, %3709
  %4087 = fmul fast float %4086, %3929
  %4088 = fadd fast float %4087, %3709
  %4089 = fmul fast float %4085, %3929
  %4090 = call float @dx.op.binary.f32(i32 35, float %3708, float %4089)  ; FMax(a,b)
  %4091 = call float @dx.op.binary.f32(i32 35, float %3707, float %3929)  ; FMax(a,b)
  %4092 = and i32 %3782, 16
  %4093 = icmp eq i32 %4092, 0
  br i1 %4093, label %4116, label %4094

; <label>:4094                                    ; preds = %4032
  %4095 = bitcast float %3776 to i32
  %4096 = add i32 %3773, 0
  %4097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4096, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4098 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4097, %dx.types.Handle %3942, float %3870, float %3873, float undef, float undef, i32 0, i32 0, i32 undef, float %3875, float %3877, float undef, float %3879, float %3881, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.ResRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.ResRet.f32 %4098, 2
  %4102 = and i32 %4095, 65535
  %4103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4102)  ; LegacyF16ToF32(value)
  %4104 = fmul fast float %4099, %3767
  %4105 = fmul fast float %4100, %3768
  %4106 = fmul fast float %4101, %3769
  %4107 = and i32 %3782, 16384
  %4108 = icmp ne i32 %4107, 0
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = select i1 %4108, float %4110, float 1.000000e+00
  %4112 = fmul fast float %4111, %4103
  %4113 = fmul fast float %4104, %4112
  %4114 = fmul fast float %4105, %4112
  %4115 = fmul fast float %4106, %4112
  br label %4116

; <label>:4116                                    ; preds = %4094, %4032
  %4117 = phi float [ %4113, %4094 ], [ 0.000000e+00, %4032 ]
  %4118 = phi float [ %4114, %4094 ], [ 0.000000e+00, %4032 ]
  %4119 = phi float [ %4115, %4094 ], [ 0.000000e+00, %4032 ]
  %4120 = fsub fast float %4117, %3712
  %4121 = fsub fast float %4118, %3713
  %4122 = fsub fast float %4119, %3714
  %4123 = fmul fast float %4120, %3929
  %4124 = fmul fast float %4121, %3929
  %4125 = fmul fast float %4122, %3929
  %4126 = fadd fast float %4123, %3712
  %4127 = fadd fast float %4124, %3713
  %4128 = fadd fast float %4125, %3714
  br label %3831

; <label>:4129                                    ; preds = %3831
  br label %4130

; <label>:4130                                    ; preds = %4129, %3650
  %4131 = phi float [ 0.000000e+00, %3650 ], [ %3832, %4129 ]
  %4132 = phi float [ %931, %3650 ], [ %3833, %4129 ]
  %4133 = phi float [ %3619, %3650 ], [ %3834, %4129 ]
  %4134 = phi float [ %3617, %3650 ], [ %3835, %4129 ]
  %4135 = phi float [ %3616, %3650 ], [ %3836, %4129 ]
  %4136 = phi float [ 0.000000e+00, %3650 ], [ %3837, %4129 ]
  %4137 = phi float [ %3610, %3650 ], [ %3838, %4129 ]
  %4138 = phi float [ %3611, %3650 ], [ %3839, %4129 ]
  %4139 = phi float [ %3612, %3650 ], [ %3840, %4129 ]
  %4140 = phi float [ %3645, %3650 ], [ %3841, %4129 ]
  %4141 = phi float [ %3646, %3650 ], [ %3842, %4129 ]
  %4142 = phi float [ %3647, %3650 ], [ %3843, %4129 ]
  %4143 = phi float [ %3615, %3650 ], [ %3844, %4129 ]
  %4144 = phi float [ %3614, %3650 ], [ %3845, %4129 ]
  %4145 = phi float [ 0.000000e+00, %3650 ], [ %3846, %4129 ]
  %4146 = phi float [ %3613, %3650 ], [ %3847, %4129 ]
  %4147 = phi float [ %3607, %3650 ], [ %3848, %4129 ]
  %4148 = phi float [ %3608, %3650 ], [ %3849, %4129 ]
  %4149 = phi float [ %3609, %3650 ], [ %3850, %4129 ]
  %4150 = call float @dx.op.dot3.f32(i32 55, float %4140, float %4141, float %4142, float %4140, float %4141, float %4142)  ; Dot3(ax,ay,az,bx,by,bz)
  %4151 = call float @dx.op.unary.f32(i32 25, float %4150)  ; Rsqrt(value)
  %4152 = fmul fast float %4151, %4140
  %4153 = fmul fast float %4151, %4141
  %4154 = fmul fast float %4151, %4142
  %4155 = fadd fast float %4145, %931
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = call float @dx.op.dot3.f32(i32 55, float %4152, float %4153, float %4154, float %4152, float %4153, float %4154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4158 = call float @dx.op.unary.f32(i32 25, float %4157)  ; Rsqrt(value)
  %4159 = fmul fast float %4158, %4152
  %4160 = fmul fast float %4158, %4153
  %4161 = fmul fast float %4158, %4154
  br label %4162

; <label>:4162                                    ; preds = %4130, %3604
  %4163 = phi float [ %4159, %4130 ], [ %3645, %3604 ]
  %4164 = phi float [ %4160, %4130 ], [ %3646, %3604 ]
  %4165 = phi float [ %4161, %4130 ], [ %3647, %3604 ]
  %4166 = phi float [ %4147, %4130 ], [ %3607, %3604 ]
  %4167 = phi float [ %4148, %4130 ], [ %3608, %3604 ]
  %4168 = phi float [ %4149, %4130 ], [ %3609, %3604 ]
  %4169 = phi float [ %4137, %4130 ], [ %3610, %3604 ]
  %4170 = phi float [ %4138, %4130 ], [ %3611, %3604 ]
  %4171 = phi float [ %4139, %4130 ], [ %3612, %3604 ]
  %4172 = phi float [ %4146, %4130 ], [ %3613, %3604 ]
  %4173 = phi float [ %4156, %4130 ], [ %931, %3604 ]
  %4174 = phi float [ %4144, %4130 ], [ %3614, %3604 ]
  %4175 = phi float [ %4143, %4130 ], [ %3615, %3604 ]
  %4176 = phi float [ %4136, %4130 ], [ 0.000000e+00, %3604 ]
  %4177 = phi float [ %4135, %4130 ], [ %3616, %3604 ]
  %4178 = phi float [ %4131, %4130 ], [ 0.000000e+00, %3604 ]
  %4179 = phi float [ %4133, %4130 ], [ %3619, %3604 ]
  %4180 = phi float [ %4132, %4130 ], [ %931, %3604 ]
  %4181 = phi float [ %4134, %4130 ], [ %3617, %3604 ]
  %4182 = fadd fast float %4172, 0xBFB99999A0000000
  %4183 = call float @dx.op.unary.f32(i32 7, float %4182)  ; Saturate(value)
  %4184 = fmul fast float %4183, 0x3FF1C71C80000000
  %4185 = call float @dx.op.binary.f32(i32 36, float %4172, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4186 = fsub fast float 1.000000e+00, %4184
  %4187 = call float @dx.op.unary.f32(i32 7, float %4186)  ; Saturate(value)
  %4188 = fmul fast float %4187, %4166
  %4189 = fmul fast float %4187, %4167
  %4190 = fmul fast float %4187, %4168
  %4191 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4192 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4194 = fmul fast float %4184, %4166
  %4195 = fmul fast float %4184, %4167
  %4196 = fmul fast float %4184, %4168
  %4197 = fadd fast float %4194, %4185
  %4198 = fadd fast float %4195, %4185
  %4199 = fadd fast float %4196, %4185
  %4200 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4201 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4202 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4203 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4204 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.i32 %4204, 3
  %4206 = and i32 %4205, 8
  %4207 = icmp ne i32 %4206, 0
  %4208 = call float @dx.op.binary.f32(i32 35, float %4191, float %4166)  ; FMax(a,b)
  %4209 = call float @dx.op.binary.f32(i32 35, float %4192, float %4166)  ; FMax(a,b)
  %4210 = call float @dx.op.binary.f32(i32 35, float %4193, float %4166)  ; FMax(a,b)
  %4211 = call float @dx.op.dot3.f32(i32 55, float %4191, float %4192, float %4193, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4212 = select i1 %183, float %4166, float %4191
  %4213 = select i1 %183, float %4211, float %4192
  %4214 = select i1 %183, float 1.000000e+00, float %4193
  %4215 = select i1 %4207, float %4208, float %4212
  %4216 = select i1 %4207, float %4209, float %4213
  %4217 = select i1 %4207, float %4210, float %4214
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.CBufRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.CBufRet.f32 %4218, 2
  %4222 = fadd fast float %4219, %141
  %4223 = fadd fast float %4220, %142
  %4224 = fadd fast float %4221, %143
  %4225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.CBufRet.f32 %4225, 1
  %4228 = fsub fast float %4222, %4226
  %4229 = fsub fast float %4223, %4227
  %4230 = fmul fast float %4228, %4228
  %4231 = fmul fast float %4229, %4229
  %4232 = fadd fast float %4230, %4231
  %4233 = call float @dx.op.unary.f32(i32 24, float %4232)  ; Sqrt(value)
  %4234 = extractvalue %dx.types.CBufRet.f32 %4225, 2
  %4235 = fcmp fast olt float %4233, %4234
  br i1 %4235, label %4236, label %4303

; <label>:4236                                    ; preds = %4162
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 0
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 0
  %4241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4242 = extractvalue %dx.types.CBufRet.f32 %4241, 0
  %4243 = extractvalue %dx.types.CBufRet.f32 %4237, 1
  %4244 = extractvalue %dx.types.CBufRet.f32 %4239, 1
  %4245 = extractvalue %dx.types.CBufRet.f32 %4241, 1
  %4246 = extractvalue %dx.types.CBufRet.f32 %4237, 3
  %4247 = extractvalue %dx.types.CBufRet.f32 %4239, 3
  %4248 = extractvalue %dx.types.CBufRet.f32 %4241, 3
  %4249 = fadd fast float %4246, %4222
  %4250 = fadd fast float %4247, %4223
  %4251 = fadd fast float %4248, %4224
  %4252 = fmul fast float %4249, %4238
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4240, float %4252)  ; FMad(a,b,c)
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4242, float %4253)  ; FMad(a,b,c)
  %4255 = fmul fast float %4249, %4243
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4244, float %4255)  ; FMad(a,b,c)
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4245, float %4256)  ; FMad(a,b,c)
  %4258 = fsub fast float %4254, %4246
  %4259 = fsub fast float %4257, %4247
  %4260 = fsub fast float %4258, %4226
  %4261 = fadd fast float %4260, %4234
  %4262 = fsub fast float %4259, %4227
  %4263 = fadd fast float %4262, %4234
  %4264 = extractvalue %dx.types.CBufRet.f32 %4225, 3
  %4265 = fmul fast float %4261, %4264
  %4266 = fmul fast float %4263, %4264
  %4267 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4268 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4269 = fsub fast float 1.000000e+00, %4267
  %4270 = fsub fast float 1.000000e+00, %4268
  %4271 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4269, float %4270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = fcmp fast ugt float %4272, 0.000000e+00
  br i1 %4273, label %4274, label %4577

; <label>:4274                                    ; preds = %4236
  %4275 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4276 = extractvalue %dx.types.CBufRet.f32 %4275, 2
  %4277 = fmul fast float %4276, %4272
  %4278 = extractvalue %dx.types.CBufRet.f32 %4275, 3
  %4279 = fadd fast float %4278, %4277
  %4280 = extractvalue %dx.types.CBufRet.f32 %4241, 2
  %4281 = fadd fast float %4279, %4248
  %4282 = fmul fast float %4254, %4242
  %4283 = call float @dx.op.tertiary.f32(i32 46, float %4257, float %4245, float %4282)  ; FMad(a,b,c)
  %4284 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4280, float %4283)  ; FMad(a,b,c)
  %4285 = fsub fast float %4284, %4248
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 2
  %4288 = fsub fast float %4285, %4287
  %4289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4269, float %4270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.ResRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.ResRet.f32 %4289, 2
  %4293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4269, float %4270, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = extractvalue %dx.types.ResRet.f32 %4293, 1
  %4296 = extractvalue %dx.types.ResRet.f32 %4293, 2
  %4297 = fadd fast float %4294, %4290
  %4298 = fmul fast float %4297, 0x3F847AE140000000
  %4299 = fadd fast float %4295, %4291
  %4300 = fmul fast float %4299, 0x3F847AE140000000
  %4301 = fadd fast float %4296, %4292
  %4302 = fmul fast float %4301, 0x3F847AE140000000
  br label %4577

; <label>:4303                                    ; preds = %4162
  %4304 = and i32 %159, 1
  %4305 = icmp eq i32 %4304, 0
  br i1 %4305, label %4577, label %4306

; <label>:4306                                    ; preds = %4303
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.f32 %4311, 0
  %4313 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4314 = extractvalue %dx.types.CBufRet.f32 %4309, 1
  %4315 = extractvalue %dx.types.CBufRet.f32 %4311, 1
  %4316 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4317 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4318 = extractvalue %dx.types.CBufRet.f32 %4311, 3
  %4319 = fadd fast float %4316, %4222
  %4320 = fadd fast float %4317, %4223
  %4321 = fadd fast float %4318, %4224
  %4322 = fmul fast float %4319, %4308
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4310, float %4322)  ; FMad(a,b,c)
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4321, float %4312, float %4323)  ; FMad(a,b,c)
  %4325 = fmul fast float %4319, %4313
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4314, float %4325)  ; FMad(a,b,c)
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4321, float %4315, float %4326)  ; FMad(a,b,c)
  %4328 = fsub fast float %4324, %4316
  %4329 = fsub fast float %4327, %4317
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 0
  %4332 = extractvalue %dx.types.CBufRet.f32 %4330, 1
  %4333 = extractvalue %dx.types.CBufRet.f32 %4330, 2
  %4334 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 3
  %4337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.i32 %4337, 0
  %4339 = extractvalue %dx.types.CBufRet.i32 %4337, 1
  %4340 = udiv i32 %4339, %4338
  %4341 = fsub fast float %4328, %4331
  %4342 = fsub fast float %4329, %4332
  %4343 = call float @dx.op.binary.f32(i32 35, float %4341, float 0.000000e+00)  ; FMax(a,b)
  %4344 = call float @dx.op.binary.f32(i32 35, float %4342, float 0.000000e+00)  ; FMax(a,b)
  %4345 = call float @dx.op.binary.f32(i32 36, float %4343, float %4333)  ; FMin(a,b)
  %4346 = call float @dx.op.binary.f32(i32 36, float %4344, float %4334)  ; FMin(a,b)
  %4347 = add i32 %4338, -1
  %4348 = add i32 %4340, -1
  %4349 = fmul fast float %4345, %4336
  %4350 = fmul fast float %4346, %4336
  %4351 = fptoui float %4349 to i32
  %4352 = fptoui float %4350 to i32
  %4353 = call i32 @dx.op.binary.i32(i32 40, i32 %4351, i32 %4347)  ; UMin(a,b)
  %4354 = call i32 @dx.op.binary.i32(i32 40, i32 %4352, i32 %4348)  ; UMin(a,b)
  %4355 = mul i32 %4354, %4338
  %4356 = add i32 %4355, %4353
  %4357 = shl i32 %4356, 2
  %4358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4357, i32 undef)  ; BufferLoad(srv,index,wot)
  %4359 = extractvalue %dx.types.ResRet.i32 %4358, 0
  %4360 = icmp eq i32 %4359, -1
  br i1 %4360, label %4577, label %4361

; <label>:4361                                    ; preds = %4306
  %4362 = mul i32 %4359, 148
  %4363 = add i32 %4362, 4
  %4364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.f32 %4364, 0
  %4366 = add i32 %4362, 8
  %4367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = add i32 %4362, 36
  %4370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4369, i32 undef)  ; BufferLoad(srv,index,wot)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = add i32 %4362, 60
  %4373 = add i32 %4362, 92
  %4374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.i32 %4374, 0
  %4376 = add i32 %4362, 116
  %4377 = fsub fast float %4328, %4365
  %4378 = fsub fast float %4329, %4368
  %4379 = fmul fast float %4336, %4377
  %4380 = fmul fast float %4336, %4378
  %4381 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4382 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4383 = fsub fast float 1.000000e+00, %4382
  %4384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4385 = extractvalue %dx.types.CBufRet.f32 %4384, 2
  %4386 = call float @dx.op.unary.f32(i32 83, float %4381)  ; DerivCoarseX(value)
  %4387 = call float @dx.op.unary.f32(i32 83, float %4383)  ; DerivCoarseX(value)
  %4388 = call float @dx.op.unary.f32(i32 84, float %4381)  ; DerivCoarseY(value)
  %4389 = call float @dx.op.unary.f32(i32 84, float %4383)  ; DerivCoarseY(value)
  %4390 = fmul fast float %4386, %4385
  %4391 = fmul fast float %4387, %4385
  %4392 = fmul fast float %4388, %4385
  %4393 = fmul fast float %4389, %4385
  %4394 = call float @dx.op.dot2.f32(i32 54, float %4392, float %4393, float %4392, float %4393)  ; Dot2(ax,ay,bx,by)
  %4395 = call float @dx.op.dot2.f32(i32 54, float %4390, float %4391, float %4390, float %4391)  ; Dot2(ax,ay,bx,by)
  %4396 = call float @dx.op.binary.f32(i32 35, float %4395, float %4394)  ; FMax(a,b)
  %4397 = call float @dx.op.unary.f32(i32 23, float %4396)  ; Log(value)
  %4398 = fmul fast float %4397, 5.000000e-01
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4401 = fadd fast float %4400, %4398
  %4402 = call float @dx.op.binary.f32(i32 35, float %4401, float 0.000000e+00)  ; FMax(a,b)
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 3
  %4405 = fadd fast float %4404, %4402
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 3
  %4408 = fadd fast float %4405, %4407
  %4409 = add i32 %4375, 0
  %4410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4409, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4411 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4410, i32 0)  ; GetDimensions(handle,mipLevel)
  %4412 = extractvalue %dx.types.Dimensions %4411, 0
  %4413 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4412)  ; FirstbitLo(value)
  %4414 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4415 = extractvalue %dx.types.CBufRet.i32 %4414, 1
  %4416 = sub nsw i32 %4415, %4413
  %4417 = sitofp i32 %4416 to float
  %4418 = fsub fast float %4408, %4417
  %4419 = call float @dx.op.binary.f32(i32 35, float %4418, float 0.000000e+00)  ; FMax(a,b)
  %4420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4410, %dx.types.Handle %37, float %4381, float %4383, float %4371, float undef, i32 0, i32 0, i32 undef, float %4419)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = fcmp ule float %4421, 0x3FE0101020000000
  %4423 = extractvalue %dx.types.CBufRet.i32 %4414, 0
  %4424 = and i32 %4423, 128
  %4425 = icmp ne i32 %4424, 0
  %4426 = and i1 %4422, %4425
  br i1 %4426, label %4577, label %4427

; <label>:4427                                    ; preds = %4361
  %4428 = add i32 %4362, 20
  %4429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4428, i32 undef)  ; BufferLoad(srv,index,wot)
  %4430 = extractvalue %dx.types.ResRet.f32 %4429, 0
  %4431 = add i32 %4362, 24
  %4432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = add i32 %4362, 40
  %4435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = add i32 %4362, 96
  %4438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4439 = extractvalue %dx.types.ResRet.i32 %4438, 0
  %4440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4441 = extractvalue %dx.types.CBufRet.f32 %4440, 2
  %4442 = fmul fast float %4441, %4381
  %4443 = fmul fast float %4441, %4383
  %4444 = extractvalue %dx.types.CBufRet.f32 %4440, 3
  %4445 = fadd fast float %4442, %4444
  %4446 = fadd fast float %4443, %4444
  %4447 = add i32 %4439, 0
  %4448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4447, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4449 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4448, i32 0)  ; GetDimensions(handle,mipLevel)
  %4450 = extractvalue %dx.types.Dimensions %4449, 0
  %4451 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4450)  ; FirstbitLo(value)
  %4452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4453 = extractvalue %dx.types.CBufRet.i32 %4452, 1
  %4454 = sub nsw i32 %4453, %4451
  %4455 = sitofp i32 %4454 to float
  %4456 = fsub fast float %4405, %4455
  %4457 = call float @dx.op.binary.f32(i32 35, float %4456, float 0.000000e+00)  ; FMax(a,b)
  %4458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4448, %dx.types.Handle %37, float %4445, float %4446, float %4436, float undef, i32 0, i32 0, i32 undef, float %4457)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4459 = extractvalue %dx.types.ResRet.f32 %4458, 0
  %4460 = fmul fast float %4459, %4430
  %4461 = fadd fast float %4460, %4433
  %4462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4463 = extractvalue %dx.types.CBufRet.f32 %4462, 0
  %4464 = extractvalue %dx.types.CBufRet.f32 %4462, 1
  %4465 = extractvalue %dx.types.CBufRet.f32 %4462, 2
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4468 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4469 = extractvalue %dx.types.CBufRet.f32 %4468, 3
  %4470 = extractvalue %dx.types.CBufRet.f32 %4462, 3
  %4471 = fadd fast float %4467, %4328
  %4472 = fadd fast float %4469, %4329
  %4473 = fadd fast float %4461, %4470
  %4474 = fmul fast float %4471, %4463
  %4475 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4464, float %4474)  ; FMad(a,b,c)
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4465, float %4475)  ; FMad(a,b,c)
  %4477 = fsub fast float %4476, %4470
  %4478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.f32 %4478, 2
  %4480 = fsub fast float %4477, %4479
  %4481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.i32 %4481, 0
  %4483 = call i32 @dx.op.binary.i32(i32 40, i32 %4359, i32 %4482)  ; UMin(a,b)
  %4484 = mul i32 %4483, 36
  %4485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4484, i32 undef)  ; BufferLoad(srv,index,wot)
  %4486 = extractvalue %dx.types.ResRet.i32 %4485, 0
  %4487 = add i32 %4484, 4
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 0
  %4490 = fmul fast float %4489, %4381
  %4491 = fmul fast float %4489, %4383
  %4492 = extractvalue %dx.types.CBufRet.f32 %4488, 1
  %4493 = fadd fast float %4490, %4492
  %4494 = fadd fast float %4491, %4492
  %4495 = icmp eq i32 %4486, 0
  br i1 %4495, label %4564, label %4496

; <label>:4496                                    ; preds = %4427
  br label %4497

; <label>:4497                                    ; preds = %4554, %4496
  %4498 = phi float [ %4555, %4554 ], [ 0.000000e+00, %4496 ]
  %4499 = phi float [ %4556, %4554 ], [ 0.000000e+00, %4496 ]
  %4500 = phi float [ %4557, %4554 ], [ 0.000000e+00, %4496 ]
  %4501 = phi float [ %4558, %4554 ], [ 0.000000e+00, %4496 ]
  %4502 = phi float [ %4559, %4554 ], [ 0.000000e+00, %4496 ]
  %4503 = phi float [ %4560, %4554 ], [ 0.000000e+00, %4496 ]
  %4504 = phi i32 [ %4561, %4554 ], [ 0, %4496 ]
  %4505 = shl i32 %4504, 2
  %4506 = add i32 %4372, %4505
  %4507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4506, i32 undef)  ; BufferLoad(srv,index,wot)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = add i32 %4376, %4505
  %4510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.i32 %4510, 0
  %4512 = add i32 %4511, 0
  %4513 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4512, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4514 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4513, i32 0)  ; GetDimensions(handle,mipLevel)
  %4515 = extractvalue %dx.types.Dimensions %4514, 0
  %4516 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4515)  ; FirstbitLo(value)
  %4517 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.i32 %4517, 1
  %4519 = sub nsw i32 %4518, %4516
  %4520 = sitofp i32 %4519 to float
  %4521 = fsub fast float %4405, %4520
  %4522 = call float @dx.op.binary.f32(i32 35, float %4521, float 0.000000e+00)  ; FMax(a,b)
  %4523 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4513, %dx.types.Handle %37, float %4493, float %4494, float %4508, float undef, i32 0, i32 0, i32 undef, float %4522)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4524 = extractvalue %dx.types.ResRet.f32 %4523, 0
  %4525 = fcmp fast ogt float %4524, 0.000000e+00
  br i1 %4525, label %4526, label %4554

; <label>:4526                                    ; preds = %4497
  %4527 = add i32 %4487, %4505
  %4528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4527, i32 undef)  ; BufferLoad(srv,index,wot)
  %4529 = extractvalue %dx.types.ResRet.i32 %4528, 0
  %4530 = and i32 %4529, 32767
  %4531 = mul nuw nsw i32 %4530, 928
  %4532 = add nuw nsw i32 %4531, 48
  %4533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4532, i32 undef)  ; BufferLoad(srv,index,wot)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.ResRet.f32 %4533, 1
  %4536 = extractvalue %dx.types.ResRet.f32 %4533, 2
  %4537 = add nuw nsw i32 %4531, 60
  %4538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4537, i32 undef)  ; BufferLoad(srv,index,wot)
  %4539 = extractvalue %dx.types.ResRet.f32 %4538, 0
  %4540 = extractvalue %dx.types.ResRet.f32 %4538, 1
  %4541 = extractvalue %dx.types.ResRet.f32 %4538, 2
  %4542 = fmul fast float %4534, %4524
  %4543 = fmul fast float %4535, %4524
  %4544 = fmul fast float %4536, %4524
  %4545 = fadd fast float %4542, %4498
  %4546 = fadd fast float %4543, %4499
  %4547 = fadd fast float %4544, %4500
  %4548 = fmul fast float %4539, %4524
  %4549 = fmul fast float %4540, %4524
  %4550 = fmul fast float %4541, %4524
  %4551 = fadd fast float %4548, %4501
  %4552 = fadd fast float %4549, %4502
  %4553 = fadd fast float %4550, %4503
  br label %4554

; <label>:4554                                    ; preds = %4526, %4497
  %4555 = phi float [ %4545, %4526 ], [ %4498, %4497 ]
  %4556 = phi float [ %4546, %4526 ], [ %4499, %4497 ]
  %4557 = phi float [ %4547, %4526 ], [ %4500, %4497 ]
  %4558 = phi float [ %4551, %4526 ], [ %4501, %4497 ]
  %4559 = phi float [ %4552, %4526 ], [ %4502, %4497 ]
  %4560 = phi float [ %4553, %4526 ], [ %4503, %4497 ]
  %4561 = add nuw i32 %4504, 1
  %4562 = icmp eq i32 %4561, %4486
  br i1 %4562, label %4563, label %4497

; <label>:4563                                    ; preds = %4554
  br label %4564

; <label>:4564                                    ; preds = %4563, %4427
  %4565 = phi float [ 0.000000e+00, %4427 ], [ %4555, %4563 ]
  %4566 = phi float [ 0.000000e+00, %4427 ], [ %4556, %4563 ]
  %4567 = phi float [ 0.000000e+00, %4427 ], [ %4557, %4563 ]
  %4568 = phi float [ 0.000000e+00, %4427 ], [ %4558, %4563 ]
  %4569 = phi float [ 0.000000e+00, %4427 ], [ %4559, %4563 ]
  %4570 = phi float [ 0.000000e+00, %4427 ], [ %4560, %4563 ]
  %4571 = fadd fast float %4568, %4565
  %4572 = fmul fast float %4571, 0x3F847AE140000000
  %4573 = fadd fast float %4569, %4566
  %4574 = fmul fast float %4573, 0x3F847AE140000000
  %4575 = fadd fast float %4570, %4567
  %4576 = fmul fast float %4575, 0x3F847AE140000000
  br label %4577

; <label>:4577                                    ; preds = %4564, %4361, %4306, %4303, %4274, %4236
  %4578 = phi float [ %4288, %4274 ], [ -1.310720e+05, %4236 ], [ %4480, %4564 ], [ -1.310720e+05, %4306 ], [ -1.310720e+05, %4361 ], [ -1.310720e+05, %4303 ]
  %4579 = phi float [ %4298, %4274 ], [ 0.000000e+00, %4236 ], [ %4572, %4564 ], [ 0.000000e+00, %4306 ], [ 0.000000e+00, %4361 ], [ 0.000000e+00, %4303 ]
  %4580 = phi float [ %4300, %4274 ], [ 0.000000e+00, %4236 ], [ %4574, %4564 ], [ 0.000000e+00, %4306 ], [ 0.000000e+00, %4361 ], [ 0.000000e+00, %4303 ]
  %4581 = phi float [ %4302, %4274 ], [ 0.000000e+00, %4236 ], [ %4576, %4564 ], [ 0.000000e+00, %4306 ], [ 0.000000e+00, %4361 ], [ 0.000000e+00, %4303 ]
  %4582 = phi i1 [ true, %4274 ], [ false, %4236 ], [ true, %4564 ], [ false, %4306 ], [ false, %4361 ], [ false, %4303 ]
  %4583 = and i32 %159, 3
  %4584 = icmp eq i32 %4583, 1
  %4585 = select i1 %4584, float 1.000000e+00, float 0.000000e+00
  %4586 = fsub fast float %4578, %143
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = select i1 %4582, float %4587, float 1.000000e+00
  %4589 = fmul fast float %4588, %4585
  %4590 = icmp eq i32 %4583, 3
  %4591 = select i1 %4590, float 1.000000e+00, float %4589
  %4592 = call float @dx.op.binary.f32(i32 35, float %4178, float %4591)  ; FMax(a,b)
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = fcmp fast une float %4593, 0.000000e+00
  %4595 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4596 = call float @dx.op.unary.f32(i32 25, float %4595)  ; Rsqrt(value)
  br i1 %4594, label %4604, label %4597

; <label>:4597                                    ; preds = %4577
  %4598 = fmul fast float %4596, %141
  %4599 = fmul fast float %4596, %142
  %4600 = fmul fast float %4596, %143
  %4601 = fsub fast float -0.000000e+00, %4598
  %4602 = fsub fast float -0.000000e+00, %4599
  %4603 = fsub fast float -0.000000e+00, %4600
  br label %4772

; <label>:4604                                    ; preds = %4577
  %4605 = fmul fast float %141, %4596
  %4606 = fsub fast float -0.000000e+00, %4605
  %4607 = fmul fast float %142, %4596
  %4608 = fsub fast float -0.000000e+00, %4607
  %4609 = fmul fast float %143, %4596
  %4610 = fsub fast float -0.000000e+00, %4609
  %4611 = call float @dx.op.dot3.f32(i32 55, float %4606, float %4608, float %4610, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4612 = fmul fast float %4593, 2.500000e+00
  %4613 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4614 = fmul fast float %4593, 0x4013FFFFE0000000
  %4615 = fadd fast float %4614, 0xBFFFFFFFE0000000
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = fmul fast float %4593, 0x4004000020000000
  %4618 = fadd fast float %4617, 0xBFF8000040000000
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4621 = fmul fast float %4182, 1.000000e+01
  %4622 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4623 = fmul fast float %4622, 2.000000e+00
  %4624 = fsub fast float 3.000000e+00, %4623
  %4625 = fmul fast float %4622, %4622
  %4626 = fmul fast float %4625, %4624
  %4627 = fsub fast float 1.000000e+00, %4626
  %4628 = fsub fast float 0x3FE3333340000000, %4203
  %4629 = fmul fast float %4628, 0x400AAAAAA0000000
  %4630 = call float @dx.op.unary.f32(i32 7, float %4629)  ; Saturate(value)
  %4631 = fmul fast float %4627, %4630
  %4632 = fmul fast float %4215, 0x3FEA2B8620000000
  %4633 = fmul fast float %4216, 0x3FEA2B8620000000
  %4634 = fmul fast float %4217, 0x3FEA2B8620000000
  %4635 = fadd fast float %4632, 0x3FC81DFBA0000000
  %4636 = fmul fast float %4635, %4215
  %4637 = fadd fast float %4636, 0x3F910E6020000000
  %4638 = fadd fast float %4633, 0x3FC81DFBA0000000
  %4639 = fmul fast float %4638, %4216
  %4640 = fadd fast float %4639, 0x3F910E6020000000
  %4641 = fadd fast float %4634, 0x3FC81DFBA0000000
  %4642 = fmul fast float %4641, %4217
  %4643 = fadd fast float %4642, 0x3F910E6020000000
  %4644 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4647 = fsub fast float %4644, %4215
  %4648 = fsub fast float %4645, %4216
  %4649 = fsub fast float %4646, %4217
  %4650 = fmul fast float %4647, %4620
  %4651 = fmul fast float %4650, %4631
  %4652 = fmul fast float %4648, %4620
  %4653 = fmul fast float %4652, %4631
  %4654 = fmul fast float %4649, %4620
  %4655 = fmul fast float %4654, %4631
  %4656 = fadd fast float %4651, %4215
  %4657 = fadd fast float %4653, %4216
  %4658 = fadd fast float %4655, %4217
  %4659 = fmul fast float %4175, %4175
  %4660 = fmul fast float %4659, %4659
  %4661 = fadd fast float %4616, 1.000000e+00
  %4662 = fsub fast float %4661, %4631
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = fsub fast float 1.000000e+00, %4660
  %4667 = call float @dx.op.binary.f32(i32 36, float %4663, float %4666)  ; FMin(a,b)
  %4668 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4669 = call float @dx.op.binary.f32(i32 35, float %4667, float %4668)  ; FMax(a,b)
  %4670 = fadd fast float %4665, 0xBFE4CCCCC0000000
  %4671 = fmul fast float %4670, 0x4006DB6DA0000000
  %4672 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4673 = fmul fast float %4672, 2.000000e+00
  %4674 = fsub fast float 3.000000e+00, %4673
  %4675 = bitcast float %4200 to i32
  %4676 = ashr i32 %4675, 1
  %4677 = add nsw i32 %4676, 532487669
  %4678 = bitcast i32 %4677 to float
  %4679 = fsub fast float 1.000000e+00, %4678
  %4680 = bitcast float %4679 to i32
  %4681 = sub nsw i32 2129859010, %4680
  %4682 = bitcast i32 %4681 to float
  %4683 = fmul fast float %4682, 2.000000e+00
  %4684 = bitcast float %4201 to i32
  %4685 = ashr i32 %4684, 1
  %4686 = add nsw i32 %4685, 532487669
  %4687 = bitcast i32 %4686 to float
  %4688 = fsub fast float 1.000000e+00, %4687
  %4689 = bitcast float %4688 to i32
  %4690 = sub nsw i32 2129859010, %4689
  %4691 = bitcast i32 %4690 to float
  %4692 = fmul fast float %4691, 2.000000e+00
  %4693 = bitcast float %4202 to i32
  %4694 = ashr i32 %4693, 1
  %4695 = add nsw i32 %4694, 532487669
  %4696 = bitcast i32 %4695 to float
  %4697 = fsub fast float 1.000000e+00, %4696
  %4698 = bitcast float %4697 to i32
  %4699 = sub nsw i32 2129859010, %4698
  %4700 = bitcast i32 %4699 to float
  %4701 = fmul fast float %4700, 2.000000e+00
  %4702 = fsub fast float 0x4002A9FBE0000000, %4683
  %4703 = fadd fast float %4683, 0x3FD54FDF00000000
  %4704 = bitcast float %4703 to i32
  %4705 = sub nsw i32 2129859010, %4704
  %4706 = bitcast i32 %4705 to float
  %4707 = fmul fast float %4706, %4702
  %4708 = fmul fast float %4707, %4707
  %4709 = fsub fast float 0x4002A9FBE0000000, %4692
  %4710 = fadd fast float %4692, 0x3FD54FDF00000000
  %4711 = bitcast float %4710 to i32
  %4712 = sub nsw i32 2129859010, %4711
  %4713 = bitcast i32 %4712 to float
  %4714 = fmul fast float %4713, %4709
  %4715 = fmul fast float %4714, %4714
  %4716 = fsub fast float 0x4002A9FBE0000000, %4701
  %4717 = fadd fast float %4701, 0x3FD54FDF00000000
  %4718 = bitcast float %4717 to i32
  %4719 = sub nsw i32 2129859010, %4718
  %4720 = bitcast i32 %4719 to float
  %4721 = fmul fast float %4720, %4716
  %4722 = fmul fast float %4721, %4721
  %4723 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4708)  ; FMax(a,b)
  %4724 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4715)  ; FMax(a,b)
  %4725 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4722)  ; FMax(a,b)
  %4726 = fsub fast float 1.000000e+00, %4611
  %4727 = fadd fast float %4726, %4627
  %4728 = call float @dx.op.unary.f32(i32 7, float %4727)  ; Saturate(value)
  %4729 = fsub fast float 1.000000e+00, %4591
  %4730 = fmul fast float %4669, %4729
  %4731 = fmul fast float %4672, %4672
  %4732 = fmul fast float %4731, %4730
  %4733 = fmul fast float %4732, %4674
  %4734 = fmul fast float %4729, 0xBFE99999A0000000
  %4735 = fmul fast float %4734, %4620
  %4736 = fmul fast float %4735, %4631
  %4737 = fadd fast float %4736, 1.000000e+00
  %4738 = fadd fast float %4203, -1.000000e+00
  %4739 = fmul fast float %4737, %4738
  %4740 = fadd fast float %4739, 1.000000e+00
  %4741 = fsub fast float %4723, %4200
  %4742 = fsub fast float %4724, %4201
  %4743 = fsub fast float %4725, %4202
  %4744 = fmul fast float %4733, %4741
  %4745 = fmul fast float %4733, %4742
  %4746 = fmul fast float %4733, %4743
  %4747 = fadd fast float %4744, %4200
  %4748 = fadd fast float %4745, %4201
  %4749 = fadd fast float %4746, %4202
  %4750 = fsub fast float %85, %4163
  %4751 = fsub fast float %86, %4164
  %4752 = fsub fast float %87, %4165
  %4753 = fmul fast float %4733, %4750
  %4754 = fmul fast float %4733, %4751
  %4755 = fmul fast float %4733, %4752
  %4756 = fadd fast float %4753, %4163
  %4757 = fadd fast float %4754, %4164
  %4758 = fadd fast float %4755, %4165
  %4759 = fmul fast float %4733, %4728
  %4760 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4761 = fsub fast float 1.000000e+00, %4760
  %4762 = fmul fast float %4759, %4761
  %4763 = fadd fast float %4762, %4760
  %4764 = fsub fast float 1.000000e+00, %4175
  %4765 = fmul fast float %4733, %4764
  %4766 = fadd fast float %4765, %4175
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4757, float %4758, float %4756, float %4757, float %4758)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = call float @dx.op.unary.f32(i32 25, float %4767)  ; Rsqrt(value)
  %4769 = fmul fast float %4756, %4768
  %4770 = fmul fast float %4757, %4768
  %4771 = fmul fast float %4758, %4768
  br label %4772

; <label>:4772                                    ; preds = %4604, %4597
  %4773 = phi float [ %4603, %4597 ], [ %4610, %4604 ]
  %4774 = phi float [ %4602, %4597 ], [ %4608, %4604 ]
  %4775 = phi float [ %4601, %4597 ], [ %4606, %4604 ]
  %4776 = phi float [ %4600, %4597 ], [ %4609, %4604 ]
  %4777 = phi float [ %4599, %4597 ], [ %4607, %4604 ]
  %4778 = phi float [ %4598, %4597 ], [ %4605, %4604 ]
  %4779 = phi float [ %4200, %4597 ], [ %4747, %4604 ]
  %4780 = phi float [ %4201, %4597 ], [ %4748, %4604 ]
  %4781 = phi float [ %4202, %4597 ], [ %4749, %4604 ]
  %4782 = phi float [ %4215, %4597 ], [ %4656, %4604 ]
  %4783 = phi float [ %4216, %4597 ], [ %4657, %4604 ]
  %4784 = phi float [ %4217, %4597 ], [ %4658, %4604 ]
  %4785 = phi float [ %4163, %4597 ], [ %4769, %4604 ]
  %4786 = phi float [ %4164, %4597 ], [ %4770, %4604 ]
  %4787 = phi float [ %4165, %4597 ], [ %4771, %4604 ]
  %4788 = phi float [ %4203, %4597 ], [ %4763, %4604 ]
  %4789 = phi float [ %4175, %4597 ], [ %4766, %4604 ]
  %4790 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4791 = extractvalue %dx.types.CBufRet.f32 %4790, 2
  %4792 = extractvalue %dx.types.CBufRet.f32 %4790, 3
  %4793 = fmul fast float %4791, %78
  %4794 = fmul fast float %4792, %79
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 0
  %4797 = extractvalue %dx.types.CBufRet.f32 %4795, 1
  %4798 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4793, float %4794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4799 = extractvalue %dx.types.ResRet.f32 %4798, 0
  %4800 = fmul fast float %4799, %4797
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = fadd fast float %4801, -1.000000e+00
  %4803 = fmul fast float %4802, %4796
  %4804 = fadd fast float %4803, 1.000000e+00
  %4805 = select i1 %183, float 0.000000e+00, float %4781
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %4775, float %4774, float %4773)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4808 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4777, float %4776, float %4785, float %4786, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %4809 = fmul fast float %4808, 2.000000e+00
  %4810 = fmul fast float %4809, %4785
  %4811 = fmul fast float %4809, %4786
  %4812 = fmul fast float %4809, %4787
  %4813 = fsub fast float %4778, %4810
  %4814 = fsub fast float %4777, %4811
  %4815 = fsub fast float %4776, %4812
  %4816 = call float @dx.op.binary.f32(i32 36, float %4789, float %4804)  ; FMin(a,b)
  %4817 = fsub fast float 1.000000e+00, %4816
  %4818 = bitcast float %4817 to i32
  %4819 = ashr i32 %4818, 1
  %4820 = add nsw i32 %4819, 532487669
  %4821 = bitcast i32 %4820 to float
  %4822 = fsub fast float 1.000000e+00, %4788
  %4823 = call float @dx.op.binary.f32(i32 35, float %4822, float 0x3F847AE140000000)  ; FMax(a,b)
  %4824 = fmul fast float %4823, %4823
  %4825 = fmul fast float %4824, %4824
  %4826 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4827 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4821, float %4825, float %4826, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4828 = extractvalue %dx.types.ResRet.f32 %4827, 0
  %4829 = fsub fast float 1.000000e+00, %4789
  %4830 = bitcast float %4829 to i32
  %4831 = sub nsw i32 2129859010, %4830
  %4832 = fsub fast float 1.000000e+00, %55
  %4833 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4834 = call float @dx.op.binary.f32(i32 35, float %4833, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4835 = fdiv fast float %4832, %4834
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = call float @dx.op.unary.f32(i32 7, float %4836)  ; Saturate(value)
  %4838 = fmul fast float %4837, 5.000000e-01
  %4839 = fadd fast float %4838, 5.000000e-01
  %4840 = fmul fast float %4839, %55
  %4841 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4842 = call float @dx.op.unary.f32(i32 7, float %4841)  ; Saturate(value)
  %4843 = fmul fast float %4842, %4835
  %4844 = fadd fast float %4840, %4843
  %4845 = fsub fast float 5.000000e-01, %4838
  %4846 = fmul fast float %4845, %4782
  %4847 = fmul fast float %4845, %4783
  %4848 = fmul fast float %4845, %4784
  %4849 = fadd fast float %4844, %4846
  %4850 = fadd fast float %4844, %4847
  %4851 = fadd fast float %4844, %4848
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4813, float %4814, float %4815, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = call float @dx.op.unary.f32(i32 7, float %4852)  ; Saturate(value)
  %4854 = fmul fast float %4853, 5.000000e-01
  %4855 = fadd fast float %4854, 5.000000e-01
  %4856 = fmul fast float %4855, %55
  %4857 = call float @dx.op.dot3.f32(i32 55, float %4813, float %4814, float %4815, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4858 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4859 = fmul fast float %4858, %4835
  %4860 = fadd fast float %4856, %4859
  %4861 = fsub fast float 5.000000e-01, %4854
  %4862 = fmul fast float %4861, %4782
  %4863 = fmul fast float %4861, %4783
  %4864 = fmul fast float %4861, %4784
  %4865 = fadd fast float %4860, %4862
  %4866 = fadd fast float %4860, %4863
  %4867 = fadd fast float %4860, %4864
  %4868 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = call float @dx.op.binary.f32(i32 36, float %4782, float %4870)  ; FMin(a,b)
  %4872 = fmul fast float %4871, %4817
  %4873 = fsub fast float 1.000000e+00, %4872
  %4874 = bitcast float %4873 to i32
  %4875 = sub nsw i32 2129859010, %4874
  %4876 = bitcast i32 %4875 to float
  %4877 = call float @dx.op.binary.f32(i32 36, float %4783, float %4870)  ; FMin(a,b)
  %4878 = fmul fast float %4877, %4817
  %4879 = fsub fast float 1.000000e+00, %4878
  %4880 = bitcast float %4879 to i32
  %4881 = sub nsw i32 2129859010, %4880
  %4882 = bitcast i32 %4881 to float
  %4883 = call float @dx.op.binary.f32(i32 36, float %4784, float %4870)  ; FMin(a,b)
  %4884 = fmul fast float %4883, %4817
  %4885 = fsub fast float 1.000000e+00, %4884
  %4886 = bitcast float %4885 to i32
  %4887 = sub nsw i32 2129859010, %4886
  %4888 = bitcast i32 %4887 to float
  %4889 = fmul fast float %4816, %56
  %4890 = fmul fast float %4889, %4849
  %4891 = fmul fast float %4890, %4876
  %4892 = fmul fast float %4816, %57
  %4893 = fmul fast float %4892, %4850
  %4894 = fmul fast float %4893, %4882
  %4895 = fmul fast float %4816, %58
  %4896 = fmul fast float %4895, %4851
  %4897 = fmul fast float %4896, %4888
  %4898 = call float @dx.op.binary.f32(i32 36, float %4779, float %4870)  ; FMin(a,b)
  %4899 = fmul fast float %4898, %4817
  %4900 = fsub fast float 1.000000e+00, %4899
  %4901 = bitcast float %4900 to i32
  %4902 = sub nsw i32 2129859010, %4901
  %4903 = bitcast i32 %4902 to float
  %4904 = call float @dx.op.binary.f32(i32 36, float %4780, float %4870)  ; FMin(a,b)
  %4905 = fmul fast float %4904, %4817
  %4906 = fsub fast float 1.000000e+00, %4905
  %4907 = bitcast float %4906 to i32
  %4908 = sub nsw i32 2129859010, %4907
  %4909 = bitcast i32 %4908 to float
  %4910 = call float @dx.op.binary.f32(i32 36, float %4805, float %4870)  ; FMin(a,b)
  %4911 = fmul fast float %4910, %4817
  %4912 = fsub fast float 1.000000e+00, %4911
  %4913 = bitcast float %4912 to i32
  %4914 = sub nsw i32 2129859010, %4913
  %4915 = bitcast i32 %4914 to float
  %4916 = fmul fast float %4889, %4865
  %4917 = fmul fast float %4916, %4903
  %4918 = fmul fast float %4892, %4866
  %4919 = fmul fast float %4918, %4909
  %4920 = fmul fast float %4895, %4867
  %4921 = fmul fast float %4920, %4915
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4891, float %4894, float %4897, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = select i1 %183, float 0.000000e+00, float %4891
  %4924 = select i1 %183, float %4922, float %4894
  %4925 = select i1 %183, float 0.000000e+00, float %4897
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4917, float %4919, float %4921, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = select i1 %183, float 0.000000e+00, float %4917
  %4928 = select i1 %183, float %4926, float %4919
  %4929 = select i1 %183, float 0.000000e+00, float %4921
  %4930 = fmul fast float %4807, 9.843750e-01
  %4931 = fmul fast float %4788, 9.843750e-01
  %4932 = fadd fast float %4930, 7.812500e-03
  %4933 = fadd fast float %4931, 7.812500e-03
  %4934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4932, float %4933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4935 = extractvalue %dx.types.ResRet.f32 %4934, 2
  %4936 = extractvalue %dx.types.ResRet.f32 %4934, 3
  %4937 = fmul fast float %4935, %4779
  %4938 = fmul fast float %4935, %4780
  %4939 = fmul fast float %4935, %4805
  %4940 = fadd fast float %4937, %4936
  %4941 = fadd fast float %4938, %4936
  %4942 = fadd fast float %4939, %4936
  %4943 = fcmp fast ogt float %4176, 0.000000e+00
  br i1 %4943, label %4944, label %4970

; <label>:4944                                    ; preds = %4772
  %4945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %4807, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4946 = extractvalue %dx.types.ResRet.f32 %4945, 0
  %4947 = extractvalue %dx.types.ResRet.f32 %4945, 1
  %4948 = extractvalue %dx.types.ResRet.f32 %4945, 2
  %4949 = fadd fast float %4946, -5.000000e-01
  %4950 = fadd fast float %4947, -5.000000e-01
  %4951 = fadd fast float %4948, -5.000000e-01
  %4952 = fsub fast float 1.000000e+00, %4779
  %4953 = fsub fast float 1.000000e+00, %4780
  %4954 = fsub fast float 1.000000e+00, %4805
  %4955 = fmul fast float %4779, 4.000000e+00
  %4956 = fmul fast float %4955, %4952
  %4957 = fmul fast float %4956, %4949
  %4958 = fmul fast float %4780, 4.000000e+00
  %4959 = fmul fast float %4958, %4953
  %4960 = fmul fast float %4959, %4950
  %4961 = fmul fast float %4805, 4.000000e+00
  %4962 = fmul fast float %4961, %4954
  %4963 = fmul fast float %4962, %4951
  %4964 = fadd fast float %4957, %4940
  %4965 = fadd fast float %4960, %4941
  %4966 = fadd fast float %4963, %4942
  %4967 = call float @dx.op.unary.f32(i32 7, float %4964)  ; Saturate(value)
  %4968 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  br label %4970

; <label>:4970                                    ; preds = %4944, %4772
  %4971 = phi float [ %4967, %4944 ], [ %4940, %4772 ]
  %4972 = phi float [ %4968, %4944 ], [ %4941, %4772 ]
  %4973 = phi float [ %4969, %4944 ], [ %4942, %4772 ]
  %4974 = call float @dx.op.binary.f32(i32 35, float %4972, float %4973)  ; FMax(a,b)
  %4975 = call float @dx.op.binary.f32(i32 35, float %4971, float %4974)  ; FMax(a,b)
  %4976 = fsub fast float 1.000000e+00, %4975
  %4977 = fmul fast float %4975, %4788
  %4978 = fadd fast float %4977, %4788
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4983 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4984 = fmul fast float %4978, %4980
  %4985 = fadd fast float %4984, %4981
  %4986 = call float @dx.op.unary.f32(i32 7, float %4985)  ; Saturate(value)
  %4987 = fmul fast float %4982, %4978
  %4988 = fadd fast float %4987, %4983
  %4989 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4990 = fsub fast float 1.000000e+00, %4828
  %4991 = fadd fast float %4990, %4989
  %4992 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %4993 = fcmp fast olt float %4992, 1.000000e+00
  br i1 %4993, label %4994, label %5849

; <label>:4994                                    ; preds = %4970
  %4995 = fcmp fast olt float %4986, 1.000000e+00
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 0
  %4998 = fcmp fast ogt float %4997, 0.000000e+00
  %4999 = or i1 %4995, %4998
  %5000 = or i1 %4995, %4998
  %5001 = xor i1 %5000, true
  %5002 = zext i1 %5001 to i32
  br i1 %4999, label %5003, label %5246

; <label>:5003                                    ; preds = %4994
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5008 = extractvalue %dx.types.CBufRet.f32 %5004, 3
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 0
  %5011 = extractvalue %dx.types.CBufRet.f32 %5009, 1
  %5012 = extractvalue %dx.types.CBufRet.f32 %5009, 2
  %5013 = extractvalue %dx.types.CBufRet.f32 %5009, 3
  %5014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5015 = extractvalue %dx.types.CBufRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.CBufRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.CBufRet.f32 %5014, 2
  %5018 = extractvalue %dx.types.CBufRet.f32 %5014, 3
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5022 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5023 = extractvalue %dx.types.CBufRet.f32 %5019, 3
  %5024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5025 = extractvalue %dx.types.CBufRet.f32 %5024, 0
  %5026 = extractvalue %dx.types.CBufRet.f32 %5024, 1
  %5027 = extractvalue %dx.types.CBufRet.f32 %5024, 2
  %5028 = extractvalue %dx.types.CBufRet.f32 %5024, 3
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 0
  %5031 = extractvalue %dx.types.CBufRet.f32 %5029, 1
  %5032 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5033 = extractvalue %dx.types.CBufRet.f32 %5029, 3
  %5034 = call float @dx.op.dot3.f32(i32 55, float %5030, float %5031, float %5032, float %4813, float %4814, float %4815)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.unary.f32(i32 6, float %5035)  ; FAbs(value)
  %5037 = fmul fast float %5036, 8.000000e+00
  %5038 = fadd fast float %5037, -6.000000e+00
  %5039 = call float @dx.op.unary.f32(i32 7, float %5038)  ; Saturate(value)
  %5040 = fmul fast float %5034, 8.000000e+00
  %5041 = fmul fast float %5040, %4997
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = fcmp fast ogt float %5042, 0.000000e+00
  br i1 %5043, label %5044, label %5221, !dx.controlflow.hints !82

; <label>:5044                                    ; preds = %5003
  %5045 = extractvalue %dx.types.CBufRet.f32 %4996, 1
  %5046 = extractvalue %dx.types.CBufRet.f32 %4996, 2
  %5047 = fsub fast float %5045, %5046
  %5048 = fmul fast float %5047, %4788
  %5049 = fadd fast float %5048, %5046
  %5050 = fmul fast float %196, 2.000000e+00
  %5051 = fmul fast float %197, 2.000000e+00
  %5052 = fadd fast float %5050, -1.000000e+00
  %5053 = fadd fast float %5051, -1.000000e+00
  %5054 = fmul fast float %5049, %5052
  %5055 = fmul fast float %5049, %5053
  %5056 = fadd fast float %5054, %78
  %5057 = fadd fast float %5055, %79
  %5058 = fmul fast float %5056, %4791
  %5059 = fmul fast float %5057, %4792
  %5060 = fadd fast float %4788, 0xBFE3333340000000
  %5061 = fmul fast float %5060, 0x4004000020000000
  %5062 = fsub fast float 1.000000e+00, %5061
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fmul fast float %5063, 3.000000e+00
  %5065 = fadd fast float %5064, %196
  %5066 = call float @dx.op.unary.f32(i32 27, float %5065)  ; Round_ni(value)
  %5067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5058, float %5059, float %5066, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5068 = extractvalue %dx.types.ResRet.f32 %5067, 0
  %5069 = fcmp fast une float %5068, 0xFFF0000000000000
  %5070 = fcmp fast une float %5068, 0x7FF0000000000000
  %5071 = and i1 %5069, %5070
  %5072 = fcmp fast olt float %5068, 0.000000e+00
  %5073 = call float @dx.op.unary.f32(i32 6, float %5068)  ; FAbs(value)
  %5074 = fsub fast float 1.000000e+00, %5073
  %5075 = select i1 %5071, float 1.000000e+00, float 0.000000e+00
  %5076 = fmul fast float %5075, %5042
  %5077 = fcmp fast ogt float %5076, 0.000000e+00
  br i1 %5077, label %5078, label %5221, !dx.controlflow.hints !83

; <label>:5078                                    ; preds = %5044
  %5079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5080 = extractvalue %dx.types.CBufRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.CBufRet.f32 %5079, 1
  %5082 = extractvalue %dx.types.CBufRet.f32 %5079, 2
  %5083 = select i1 %5072, float 0.000000e+00, float %5080
  %5084 = select i1 %5072, float 0.000000e+00, float %5081
  %5085 = select i1 %5072, float 0.000000e+00, float %5082
  %5086 = select i1 %5072, float %5005, float %5020
  %5087 = select i1 %5072, float %5010, float %5025
  %5088 = select i1 %5072, float %5015, float %5030
  %5089 = select i1 %5072, float %5006, float %5021
  %5090 = select i1 %5072, float %5011, float %5026
  %5091 = select i1 %5072, float %5016, float %5031
  %5092 = select i1 %5072, float %5007, float %5022
  %5093 = select i1 %5072, float %5012, float %5027
  %5094 = select i1 %5072, float %5017, float %5032
  %5095 = select i1 %5072, float %5008, float %5023
  %5096 = select i1 %5072, float %5013, float %5028
  %5097 = select i1 %5072, float %5018, float %5033
  %5098 = fadd fast float %5083, %141
  %5099 = fadd fast float %5084, %142
  %5100 = fadd fast float %5085, %143
  %5101 = fmul fast float %5098, %5086
  %5102 = call float @dx.op.tertiary.f32(i32 46, float %5099, float %5089, float %5101)  ; FMad(a,b,c)
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5092, float %5102)  ; FMad(a,b,c)
  %5104 = fadd fast float %5103, %5095
  %5105 = fmul fast float %5098, %5087
  %5106 = call float @dx.op.tertiary.f32(i32 46, float %5099, float %5090, float %5105)  ; FMad(a,b,c)
  %5107 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5093, float %5106)  ; FMad(a,b,c)
  %5108 = fadd fast float %5107, %5096
  %5109 = fmul fast float %5098, %5088
  %5110 = call float @dx.op.tertiary.f32(i32 46, float %5099, float %5091, float %5109)  ; FMad(a,b,c)
  %5111 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5094, float %5110)  ; FMad(a,b,c)
  %5112 = fadd fast float %5111, %5097
  %5113 = fdiv fast float 1.000000e+00, %5112
  %5114 = fmul fast float %5113, %5104
  %5115 = fmul fast float %5113, %5108
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 0
  %5118 = extractvalue %dx.types.CBufRet.f32 %5116, 1
  %5119 = fmul fast float %5114, %5117
  %5120 = fmul fast float %5115, %5118
  %5121 = extractvalue %dx.types.CBufRet.f32 %5116, 2
  %5122 = extractvalue %dx.types.CBufRet.f32 %5116, 3
  %5123 = fadd fast float %5119, %5121
  %5124 = fadd fast float %5120, %5122
  %5125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5126 = extractvalue %dx.types.CBufRet.f32 %5125, 3
  %5127 = fmul fast float %5126, %4813
  %5128 = fmul fast float %5126, %4814
  %5129 = fmul fast float %5126, %4815
  %5130 = fadd fast float %5127, %5098
  %5131 = fadd fast float %5128, %5099
  %5132 = fadd fast float %5129, %5100
  %5133 = fmul fast float %5130, %5086
  %5134 = call float @dx.op.tertiary.f32(i32 46, float %5131, float %5089, float %5133)  ; FMad(a,b,c)
  %5135 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5092, float %5134)  ; FMad(a,b,c)
  %5136 = fadd fast float %5135, %5095
  %5137 = fmul fast float %5130, %5087
  %5138 = call float @dx.op.tertiary.f32(i32 46, float %5131, float %5090, float %5137)  ; FMad(a,b,c)
  %5139 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5093, float %5138)  ; FMad(a,b,c)
  %5140 = fadd fast float %5139, %5096
  %5141 = fmul fast float %5130, %5088
  %5142 = call float @dx.op.tertiary.f32(i32 46, float %5131, float %5091, float %5141)  ; FMad(a,b,c)
  %5143 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5094, float %5142)  ; FMad(a,b,c)
  %5144 = fadd fast float %5143, %5097
  %5145 = fdiv fast float 1.000000e+00, %5144
  %5146 = fmul fast float %5145, %5136
  %5147 = fmul fast float %5145, %5140
  %5148 = fmul fast float %5123, 2.000000e+00
  %5149 = fadd fast float %5148, -1.000000e+00
  %5150 = call float @dx.op.unary.f32(i32 6, float %5149)  ; FAbs(value)
  %5151 = fmul fast float %5150, 5.000000e+00
  %5152 = fadd fast float %5151, -4.000000e+00
  %5153 = call float @dx.op.unary.f32(i32 7, float %5152)  ; Saturate(value)
  %5154 = fmul fast float %5153, %5039
  %5155 = fsub fast float %5114, %5146
  %5156 = fmul fast float %5117, %5155
  %5157 = fmul fast float %5154, %5156
  %5158 = fsub fast float %5146, %5114
  %5159 = fmul fast float %5117, %5158
  %5160 = fadd fast float %5159, %5157
  %5161 = fsub fast float %5147, %5115
  %5162 = fmul fast float %5118, %5161
  %5163 = fmul fast float %5160, %5074
  %5164 = fmul fast float %5162, %5074
  %5165 = fadd fast float %5163, %5123
  %5166 = fadd fast float %5164, %5124
  %5167 = fsub fast float %5145, %5113
  %5168 = fmul fast float %5167, %5074
  %5169 = fadd fast float %5168, %5113
  %5170 = fdiv fast float 1.000000e+00, %5169
  %5171 = fadd fast float %4788, -1.000000e+00
  %5172 = fsub fast float %5170, %5112
  %5173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5174 = extractvalue %dx.types.CBufRet.f32 %5173, 2
  %5175 = fmul fast float %5174, %5170
  %5176 = fdiv fast float 1.600000e+02, %5175
  %5177 = fmul fast float %5171, %5171
  %5178 = fmul fast float %5177, 0xBFB5B17960000000
  %5179 = fmul fast float %5178, %5172
  %5180 = fmul fast float %5179, %5176
  %5181 = call float @dx.op.unary.f32(i32 21, float %5180)  ; Exp(value)
  %5182 = fmul fast float %5181, 0x3FF04B2960000000
  %5183 = fsub fast float 0x3FF04B2960000000, %5182
  %5184 = call float @dx.op.unary.f32(i32 7, float %5183)  ; Saturate(value)
  %5185 = fmul fast float %5184, 4.000000e+00
  %5186 = fadd fast float %196, -5.000000e-01
  %5187 = fadd fast float %197, -5.000000e-01
  %5188 = fmul fast float %5184, 0x3FBEB851E0000000
  %5189 = call float @dx.op.unary.f32(i32 7, float %5188)  ; Saturate(value)
  %5190 = fmul fast float %5189, %5186
  %5191 = fmul fast float %5189, %5187
  %5192 = fadd fast float %5165, %5190
  %5193 = fadd fast float %5166, %5191
  %5194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5192, float %5193, float undef, float undef, i32 0, i32 0, i32 undef, float %5185)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5195 = extractvalue %dx.types.ResRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.ResRet.f32 %5194, 1
  %5197 = extractvalue %dx.types.ResRet.f32 %5194, 2
  %5198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5199 = extractvalue %dx.types.CBufRet.f32 %5198, 2
  %5200 = fmul fast float %5199, %5195
  %5201 = fmul fast float %5199, %5196
  %5202 = fmul fast float %5199, %5197
  %5203 = select i1 %183, float 0.000000e+00, float %5201
  %5204 = select i1 %183, float 0.000000e+00, float %5202
  %5205 = fmul fast float %5192, 2.000000e+00
  %5206 = fmul fast float %5193, 2.000000e+00
  %5207 = fadd fast float %5205, -1.000000e+00
  %5208 = fadd fast float %5206, -1.000000e+00
  %5209 = fmul fast float %5207, %5207
  %5210 = fsub fast float 1.000000e+00, %5209
  %5211 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = fmul fast float %5212, %5039
  %5214 = fadd fast float %5213, %5211
  %5215 = fmul fast float %5208, %5208
  %5216 = fsub fast float 1.000000e+00, %5215
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = fmul fast float %5214, %5217
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fmul fast float %5219, %5076
  br label %5221

; <label>:5221                                    ; preds = %5078, %5044, %5003
  %5222 = phi float [ %5200, %5078 ], [ 0.000000e+00, %5044 ], [ 0.000000e+00, %5003 ]
  %5223 = phi float [ %5203, %5078 ], [ 0.000000e+00, %5044 ], [ 0.000000e+00, %5003 ]
  %5224 = phi float [ %5204, %5078 ], [ 0.000000e+00, %5044 ], [ 0.000000e+00, %5003 ]
  %5225 = phi float [ %5220, %5078 ], [ 0.000000e+00, %5044 ], [ 0.000000e+00, %5003 ]
  %5226 = fcmp fast olt float %5225, 1.000000e+00
  %5227 = or i1 %5226, %5001
  %5228 = zext i1 %5227 to i32
  %5229 = fmul fast float %5225, %4986
  %5230 = fsub fast float %5225, %5229
  %5231 = fsub fast float 1.000000e+00, %4992
  %5232 = fmul fast float %5230, %5231
  %5233 = fadd fast float %5232, %4992
  %5234 = fsub fast float %5233, %5230
  %5235 = call float @dx.op.unary.f32(i32 7, float %5234)  ; Saturate(value)
  %5236 = fmul fast float %5235, %4927
  %5237 = fmul fast float %5235, %4928
  %5238 = fmul fast float %5235, %4929
  %5239 = fsub fast float -0.000000e+00, %5233
  %5240 = fmul fast float %5230, %5222
  %5241 = fmul fast float %5230, %5223
  %5242 = fmul fast float %5230, %5224
  %5243 = fadd fast float %5240, %5236
  %5244 = fadd fast float %5241, %5237
  %5245 = fadd fast float %5242, %5238
  br label %5246

; <label>:5246                                    ; preds = %5221, %4994
  %5247 = phi float [ %4992, %4994 ], [ %5239, %5221 ]
  %5248 = phi float [ %4927, %4994 ], [ %5243, %5221 ]
  %5249 = phi float [ %4928, %4994 ], [ %5244, %5221 ]
  %5250 = phi float [ %4929, %4994 ], [ %5245, %5221 ]
  %5251 = phi i32 [ %5002, %4994 ], [ %5228, %5221 ]
  %5252 = icmp eq i32 %5251, 0
  br i1 %5252, label %5849, label %5253

; <label>:5253                                    ; preds = %5246
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 3
  %5257 = fmul fast float %5255, %78
  %5258 = fmul fast float %5256, %79
  %5259 = fptoui float %5257 to i32
  %5260 = fptoui float %5258 to i32
  %5261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5262 = extractvalue %dx.types.CBufRet.f32 %5261, 0
  %5263 = extractvalue %dx.types.CBufRet.f32 %5261, 2
  %5264 = extractvalue %dx.types.CBufRet.f32 %5261, 3
  %5265 = fadd fast float %73, -4.000000e+00
  %5266 = call float @dx.op.binary.f32(i32 35, float %5265, float 0.000000e+00)  ; FMax(a,b)
  %5267 = fadd fast float %5266, %5262
  %5268 = fmul fast float %5267, %5263
  %5269 = call float @dx.op.unary.f32(i32 23, float %5268)  ; Log(value)
  %5270 = fmul fast float %5269, %5264
  %5271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.f32 %5271, 2
  %5273 = fmul fast float %5270, %5272
  %5274 = call float @dx.op.unary.f32(i32 7, float %5273)  ; Saturate(value)
  %5275 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5276 = extractvalue %dx.types.CBufRet.i32 %5275, 1
  %5277 = add i32 %5276, -1
  %5278 = uitofp i32 %5276 to float
  %5279 = fmul fast float %5278, %5274
  %5280 = fptoui float %5279 to i32
  %5281 = call i32 @dx.op.binary.i32(i32 40, i32 %5280, i32 %5277)  ; UMin(a,b)
  %5282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5283 = extractvalue %dx.types.CBufRet.i32 %5282, 2
  %5284 = extractvalue %dx.types.CBufRet.i32 %5282, 3
  %5285 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5260, i32 %5283, i32 %5259)  ; UMad(a,b,c)
  %5286 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5281, i32 %5284, i32 %5285)  ; UMad(a,b,c)
  %5287 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5288 = fptoui float %5287 to i32
  %5289 = lshr i32 %5288, 5
  %5290 = call i32 @dx.op.binary.i32(i32 40, i32 %5289, i32 8191)  ; UMin(a,b)
  %5291 = fcmp fast ogt float %4587, 0.000000e+00
  %5292 = fcmp fast ogt float %4815, 0.000000e+00
  %5293 = and i1 %5292, %5291
  br i1 %5293, label %5294, label %5323

; <label>:5294                                    ; preds = %5253
  %5295 = call float @dx.op.dot3.f32(i32 55, float %4813, float %4814, float %4815, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5296 = call float @dx.op.binary.f32(i32 35, float %5295, float -1.000000e+00)  ; FMax(a,b)
  %5297 = call float @dx.op.binary.f32(i32 36, float %5296, float 1.000000e+00)  ; FMin(a,b)
  %5298 = fmul fast float %5297, %5297
  %5299 = fsub fast float 1.000000e+00, %5298
  %5300 = fmul fast float %5299, 0x3FFC6E2300000000
  %5301 = fsub fast float 1.000000e+00, %5300
  %5302 = fcmp fast ogt float %5301, 0.000000e+00
  %5303 = call float @dx.op.unary.f32(i32 24, float %5301)  ; Sqrt(value)
  %5304 = fsub fast float 1.000000e+00, %5303
  %5305 = call float @dx.op.unary.f32(i32 23, float %5304)  ; Log(value)
  %5306 = fmul fast float %5305, 5.000000e+00
  %5307 = call float @dx.op.unary.f32(i32 21, float %5306)  ; Exp(value)
  %5308 = fmul fast float %5307, 0x3FEF591A60000000
  %5309 = fadd fast float %5308, 0x3F94DCB540000000
  %5310 = select i1 %5302, float %5309, float 1.000000e+00
  %5311 = fcmp fast oge float %5310, 1.000000e+00
  %5312 = fmul fast float %5295, 2.000000e+00
  %5313 = fadd fast float %5312, %4815
  %5314 = select i1 %5311, float %5313, float %4815
  %5315 = fsub fast float %5314, %4815
  %5316 = fmul fast float %5315, %4587
  %5317 = fadd fast float %5316, %4815
  %5318 = call float @dx.op.dot3.f32(i32 55, float %4813, float %4814, float %5317, float %4813, float %4814, float %5317)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = call float @dx.op.unary.f32(i32 25, float %5318)  ; Rsqrt(value)
  %5320 = fmul fast float %5319, %4813
  %5321 = fmul fast float %5319, %4814
  %5322 = fmul fast float %5317, %5319
  br label %5323

; <label>:5323                                    ; preds = %5294, %5253
  %5324 = phi float [ %5320, %5294 ], [ %4813, %5253 ]
  %5325 = phi float [ %5321, %5294 ], [ %4814, %5253 ]
  %5326 = phi float [ %5322, %5294 ], [ %4815, %5253 ]
  %5327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5328 = extractvalue %dx.types.CBufRet.i32 %5327, 2
  %5329 = add nsw i32 %5328, -1
  %5330 = call i32 @dx.op.binary.i32(i32 37, i32 %5329, i32 0)  ; IMax(a,b)
  %5331 = shl i32 %5290, 2
  %5332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5331, i32 undef)  ; BufferLoad(srv,index,wot)
  %5333 = extractvalue %dx.types.ResRet.i32 %5332, 0
  %5334 = lshr i32 %5333, 16
  %5335 = and i32 %5333, 65535
  %5336 = lshr i32 %5333, 21
  %5337 = lshr i32 %5335, 5
  %5338 = call i32 @dx.op.binary.i32(i32 40, i32 %5337, i32 %5330)  ; UMin(a,b)
  %5339 = icmp ugt i32 %5336, %5338
  br i1 %5339, label %5721, label %5340

; <label>:5340                                    ; preds = %5323
  br label %5341

; <label>:5341                                    ; preds = %5710, %5340
  %5342 = phi float [ %5711, %5710 ], [ 0.000000e+00, %5340 ]
  %5343 = phi float [ %5712, %5710 ], [ 0.000000e+00, %5340 ]
  %5344 = phi float [ %5713, %5710 ], [ 0.000000e+00, %5340 ]
  %5345 = phi float [ %5714, %5710 ], [ 1.000000e+00, %5340 ]
  %5346 = phi i32 [ %5718, %5710 ], [ %5336, %5340 ]
  %5347 = phi float [ %5715, %5710 ], [ 0.000000e+00, %5340 ]
  %5348 = phi float [ %5716, %5710 ], [ 0.000000e+00, %5340 ]
  %5349 = phi float [ %5717, %5710 ], [ 0.000000e+00, %5340 ]
  %5350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5351 = extractvalue %dx.types.CBufRet.i32 %5350, 2
  %5352 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5286, i32 %5351, i32 %5346)  ; UMad(a,b,c)
  %5353 = shl i32 %5352, 2
  %5354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5353, i32 undef)  ; BufferLoad(srv,index,wot)
  %5355 = extractvalue %dx.types.ResRet.i32 %5354, 0
  %5356 = shl i32 %5346, 5
  %5357 = sub nsw i32 %5334, %5356
  %5358 = call i32 @dx.op.binary.i32(i32 37, i32 %5357, i32 0)  ; IMax(a,b)
  %5359 = call i32 @dx.op.binary.i32(i32 38, i32 %5358, i32 31)  ; IMin(a,b)
  %5360 = sub nsw i32 1, %5334
  %5361 = add nsw i32 %5360, %5335
  %5362 = call i32 @dx.op.binary.i32(i32 37, i32 %5361, i32 0)  ; IMax(a,b)
  %5363 = call i32 @dx.op.binary.i32(i32 38, i32 %5362, i32 32)  ; IMin(a,b)
  %5364 = and i32 %5363, 31
  %5365 = shl i32 -1, %5364
  %5366 = xor i32 %5365, -1
  %5367 = and i32 %5359, 31
  %5368 = shl i32 %5366, %5367
  %5369 = icmp eq i32 %5363, 32
  %5370 = select i1 %5369, i32 -1, i32 %5368
  %5371 = and i32 %5370, %5355
  %5372 = icmp eq i32 %5371, 0
  br i1 %5372, label %5710, label %5373

; <label>:5373                                    ; preds = %5341
  br label %5374

; <label>:5374                                    ; preds = %5484, %5373
  %5375 = phi float [ %5485, %5484 ], [ %5342, %5373 ]
  %5376 = phi float [ %5486, %5484 ], [ %5343, %5373 ]
  %5377 = phi float [ %5487, %5484 ], [ %5344, %5373 ]
  %5378 = phi float [ %5488, %5484 ], [ %5345, %5373 ]
  %5379 = phi i32 [ %5387, %5484 ], [ %5371, %5373 ]
  %5380 = phi float [ %5489, %5484 ], [ %5347, %5373 ]
  %5381 = phi float [ %5490, %5484 ], [ %5348, %5373 ]
  %5382 = phi float [ %5491, %5484 ], [ %5349, %5373 ]
  %5383 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5379)  ; FirstbitLo(value)
  %5384 = add i32 %5383, %5356
  %5385 = and i32 %5383, 31
  %5386 = shl i32 1, %5385
  %5387 = xor i32 %5386, %5379
  %5388 = mul i32 %5384, 72
  %5389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5388, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = extractvalue %dx.types.ResRet.f32 %5389, 1
  %5392 = extractvalue %dx.types.ResRet.f32 %5389, 2
  %5393 = add i32 %5388, 12
  %5394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5393, i32 undef)  ; BufferLoad(srv,index,wot)
  %5395 = extractvalue %dx.types.ResRet.i32 %5394, 0
  %5396 = add i32 %5388, 16
  %5397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5398 = extractvalue %dx.types.ResRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.ResRet.f32 %5397, 1
  %5400 = extractvalue %dx.types.ResRet.f32 %5397, 2
  %5401 = add i32 %5388, 28
  %5402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5401, i32 undef)  ; BufferLoad(srv,index,wot)
  %5403 = extractvalue %dx.types.ResRet.f32 %5402, 0
  %5404 = add i32 %5388, 32
  %5405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5404, i32 undef)  ; BufferLoad(srv,index,wot)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 0
  %5407 = extractvalue %dx.types.ResRet.f32 %5405, 1
  %5408 = extractvalue %dx.types.ResRet.f32 %5405, 2
  %5409 = extractvalue %dx.types.ResRet.f32 %5405, 3
  %5410 = add i32 %5388, 48
  %5411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5410, i32 undef)  ; BufferLoad(srv,index,wot)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.ResRet.f32 %5411, 1
  %5414 = add i32 %5388, 56
  %5415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5414, i32 undef)  ; BufferLoad(srv,index,wot)
  %5416 = extractvalue %dx.types.ResRet.f32 %5415, 0
  %5417 = extractvalue %dx.types.ResRet.f32 %5415, 1
  %5418 = add i32 %5388, 64
  %5419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.ResRet.f32 %5419, 1
  %5422 = mul i32 %5384, 60
  %5423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.ResRet.f32 %5423, 1
  %5426 = extractvalue %dx.types.ResRet.f32 %5423, 2
  %5427 = add i32 %5422, 12
  %5428 = add i32 %5422, 48
  %5429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5430 = extractvalue %dx.types.ResRet.f32 %5429, 0
  %5431 = extractvalue %dx.types.ResRet.f32 %5429, 1
  %5432 = extractvalue %dx.types.ResRet.f32 %5429, 2
  %5433 = and i32 %5395, 32767
  %5434 = bitcast float %5390 to i32
  %5435 = icmp eq i32 %5434, -1
  %5436 = bitcast float %5391 to i32
  %5437 = and i32 %5395, 32768
  %5438 = icmp ne i32 %5437, 0
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 0
  %5441 = extractvalue %dx.types.CBufRet.f32 %5439, 1
  %5442 = extractvalue %dx.types.CBufRet.f32 %5439, 2
  %5443 = fsub fast float %5424, %5440
  %5444 = fsub fast float %5425, %5441
  %5445 = fsub fast float %5426, %5442
  %5446 = fsub fast float %141, %5443
  %5447 = fsub fast float %142, %5444
  %5448 = fsub fast float %143, %5445
  %5449 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5427, i32 undef)  ; BufferLoad(srv,index,wot)
  %5450 = extractvalue %dx.types.ResRet.f32 %5449, 0
  %5451 = extractvalue %dx.types.ResRet.f32 %5449, 1
  %5452 = extractvalue %dx.types.ResRet.f32 %5449, 2
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5450, float %5451, float %5452)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = add i32 %5422, 24
  %5455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5454, i32 undef)  ; BufferLoad(srv,index,wot)
  %5456 = extractvalue %dx.types.ResRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.ResRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.ResRet.f32 %5455, 2
  %5459 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5456, float %5457, float %5458)  ; Dot3(ax,ay,az,bx,by,bz)
  %5460 = add i32 %5422, 36
  %5461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5460, i32 undef)  ; BufferLoad(srv,index,wot)
  %5462 = extractvalue %dx.types.ResRet.f32 %5461, 0
  %5463 = extractvalue %dx.types.ResRet.f32 %5461, 1
  %5464 = extractvalue %dx.types.ResRet.f32 %5461, 2
  %5465 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5462, float %5463, float %5464)  ; Dot3(ax,ay,az,bx,by,bz)
  %5466 = call float @dx.op.unary.f32(i32 6, float %5453)  ; FAbs(value)
  %5467 = call float @dx.op.unary.f32(i32 6, float %5459)  ; FAbs(value)
  %5468 = call float @dx.op.unary.f32(i32 6, float %5465)  ; FAbs(value)
  %5469 = fsub fast float %5430, %5466
  %5470 = fsub fast float %5431, %5467
  %5471 = fsub fast float %5432, %5468
  %5472 = fmul fast float %5469, %5398
  %5473 = fmul fast float %5470, %5399
  %5474 = fmul fast float %5471, %5400
  %5475 = call float @dx.op.binary.f32(i32 36, float %5473, float %5474)  ; FMin(a,b)
  %5476 = call float @dx.op.binary.f32(i32 36, float %5472, float %5475)  ; FMin(a,b)
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = call float @dx.op.binary.f32(i32 36, float %5378, float %5477)  ; FMin(a,b)
  %5479 = uitofp i1 %5438 to float
  %5480 = fadd fast float %4587, 1.000000e+00
  %5481 = fsub fast float %5480, %5479
  %5482 = fmul fast float %5478, %5481
  %5483 = fcmp fast ogt float %5482, 0.000000e+00
  br i1 %5483, label %5493, label %5484

; <label>:5484                                    ; preds = %5635, %5374
  %5485 = phi float [ %5699, %5635 ], [ %5375, %5374 ]
  %5486 = phi float [ %5700, %5635 ], [ %5376, %5374 ]
  %5487 = phi float [ %5701, %5635 ], [ %5377, %5374 ]
  %5488 = phi float [ %5708, %5635 ], [ %5378, %5374 ]
  %5489 = phi float [ %5705, %5635 ], [ %5380, %5374 ]
  %5490 = phi float [ %5706, %5635 ], [ %5381, %5374 ]
  %5491 = phi float [ %5707, %5635 ], [ %5382, %5374 ]
  %5492 = icmp eq i32 %5379, %5386
  br i1 %5492, label %5709, label %5374

; <label>:5493                                    ; preds = %5374
  br i1 %5435, label %5551, label %5494

; <label>:5494                                    ; preds = %5493
  %5495 = fsub fast float -0.000000e+00, %5450
  %5496 = fsub fast float -0.000000e+00, %5451
  %5497 = fsub fast float -0.000000e+00, %5452
  %5498 = call float @dx.op.dot3.f32(i32 55, float %5324, float %5325, float %5326, float %5495, float %5496, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5499 = fsub fast float -0.000000e+00, %5498
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5495, float %5496, float %5497)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fadd fast float %5500, %5413
  %5502 = fadd fast float %5412, %5500
  %5503 = fsub fast float -0.000000e+00, %5502
  %5504 = fcmp ogt float %5498, -0.000000e+00
  %5505 = select i1 %5504, float %5503, float %5501
  %5506 = call float @dx.op.unary.f32(i32 6, float %5499)  ; FAbs(value)
  %5507 = fdiv fast float 1.000000e+00, %5506
  %5508 = fmul fast float %5505, %5507
  %5509 = call float @dx.op.binary.f32(i32 35, float %5508, float 0.000000e+00)  ; FMax(a,b)
  %5510 = fsub fast float -0.000000e+00, %5456
  %5511 = fsub fast float -0.000000e+00, %5457
  %5512 = fsub fast float -0.000000e+00, %5458
  %5513 = call float @dx.op.dot3.f32(i32 55, float %5324, float %5325, float %5326, float %5510, float %5511, float %5512)  ; Dot3(ax,ay,az,bx,by,bz)
  %5514 = fsub fast float -0.000000e+00, %5513
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5510, float %5511, float %5512)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fadd fast float %5515, %5417
  %5517 = fadd fast float %5416, %5515
  %5518 = fsub fast float -0.000000e+00, %5517
  %5519 = fcmp ogt float %5513, -0.000000e+00
  %5520 = select i1 %5519, float %5518, float %5516
  %5521 = call float @dx.op.unary.f32(i32 6, float %5514)  ; FAbs(value)
  %5522 = fdiv fast float 1.000000e+00, %5521
  %5523 = fmul fast float %5520, %5522
  %5524 = call float @dx.op.binary.f32(i32 35, float %5523, float 0.000000e+00)  ; FMax(a,b)
  %5525 = fsub fast float -0.000000e+00, %5462
  %5526 = fsub fast float -0.000000e+00, %5463
  %5527 = fsub fast float -0.000000e+00, %5464
  %5528 = call float @dx.op.dot3.f32(i32 55, float %5324, float %5325, float %5326, float %5525, float %5526, float %5527)  ; Dot3(ax,ay,az,bx,by,bz)
  %5529 = fsub fast float -0.000000e+00, %5528
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5447, float %5448, float %5525, float %5526, float %5527)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fadd fast float %5530, %5421
  %5532 = fadd fast float %5420, %5530
  %5533 = fsub fast float -0.000000e+00, %5532
  %5534 = fcmp ogt float %5528, -0.000000e+00
  %5535 = select i1 %5534, float %5533, float %5531
  %5536 = call float @dx.op.unary.f32(i32 6, float %5529)  ; FAbs(value)
  %5537 = fdiv fast float 1.000000e+00, %5536
  %5538 = fmul fast float %5535, %5537
  %5539 = call float @dx.op.binary.f32(i32 35, float %5538, float 0.000000e+00)  ; FMax(a,b)
  %5540 = call float @dx.op.binary.f32(i32 36, float %5524, float %5539)  ; FMin(a,b)
  %5541 = call float @dx.op.binary.f32(i32 36, float %5509, float %5540)  ; FMin(a,b)
  %5542 = fmul fast float %5541, %5324
  %5543 = fmul fast float %5541, %5325
  %5544 = fmul fast float %5541, %5326
  %5545 = fadd fast float %5542, %141
  %5546 = fadd fast float %5543, %142
  %5547 = fadd fast float %5544, %143
  %5548 = fsub fast float %5545, %5390
  %5549 = fsub fast float %5546, %5391
  %5550 = fsub fast float %5547, %5392
  br label %5558

; <label>:5551                                    ; preds = %5493
  %5552 = fmul fast float %5324, 8.096000e+03
  %5553 = fmul fast float %5325, 8.096000e+03
  %5554 = fmul fast float %5326, 8.096000e+03
  %5555 = fadd fast float %5552, %141
  %5556 = fadd fast float %5553, %142
  %5557 = fadd fast float %5554, %143
  br label %5558

; <label>:5558                                    ; preds = %5551, %5494
  %5559 = phi float [ %5324, %5551 ], [ %5548, %5494 ]
  %5560 = phi float [ %5325, %5551 ], [ %5549, %5494 ]
  %5561 = phi float [ %5326, %5551 ], [ %5550, %5494 ]
  %5562 = phi float [ %5555, %5551 ], [ %5545, %5494 ]
  %5563 = phi float [ %5556, %5551 ], [ %5546, %5494 ]
  %5564 = phi float [ %5557, %5551 ], [ %5547, %5494 ]
  %5565 = fcmp fast olt float %5409, 1.000000e+00
  br i1 %5565, label %5566, label %5597, !dx.controlflow.hints !84

; <label>:5566                                    ; preds = %5558
  %5567 = fmul fast float %5561, %5407
  %5568 = fmul fast float %5560, %5408
  %5569 = fsub fast float %5567, %5568
  %5570 = fmul fast float %5559, %5408
  %5571 = fmul fast float %5561, %5406
  %5572 = fsub fast float %5570, %5571
  %5573 = fmul fast float %5560, %5406
  %5574 = fmul fast float %5559, %5407
  %5575 = fsub fast float %5573, %5574
  %5576 = fmul fast float %5569, 2.000000e+00
  %5577 = fmul fast float %5572, 2.000000e+00
  %5578 = fmul fast float %5575, 2.000000e+00
  %5579 = fmul fast float %5576, %5409
  %5580 = fmul fast float %5577, %5409
  %5581 = fmul fast float %5578, %5409
  %5582 = fmul fast float %5578, %5407
  %5583 = fmul fast float %5577, %5408
  %5584 = fmul fast float %5576, %5408
  %5585 = fmul fast float %5578, %5406
  %5586 = fmul fast float %5577, %5406
  %5587 = fmul fast float %5576, %5407
  %5588 = fadd fast float %5582, %5559
  %5589 = fadd fast float %5588, %5579
  %5590 = fsub fast float %5589, %5583
  %5591 = fsub fast float %5560, %5585
  %5592 = fadd fast float %5591, %5580
  %5593 = fadd fast float %5592, %5584
  %5594 = fadd fast float %5581, %5561
  %5595 = fsub fast float %5594, %5587
  %5596 = fadd fast float %5595, %5586
  br label %5597

; <label>:5597                                    ; preds = %5566, %5558
  %5598 = phi float [ %5590, %5566 ], [ %5559, %5558 ]
  %5599 = phi float [ %5593, %5566 ], [ %5560, %5558 ]
  %5600 = phi float [ %5596, %5566 ], [ %5561, %5558 ]
  br i1 %5435, label %5632, label %5601

; <label>:5601                                    ; preds = %5597
  %5602 = fmul fast float %4788, 0x400187C840000000
  %5603 = fadd fast float %5602, 0xC00EFC2120000000
  %5604 = fmul fast float %5603, %4788
  %5605 = fadd fast float %5604, 0x3FE5D16340000000
  %5606 = fmul fast float %5605, %4788
  %5607 = fadd fast float %5606, 1.000000e+00
  %5608 = call float @dx.op.unary.f32(i32 7, float %5607)  ; Saturate(value)
  %5609 = fsub fast float %5562, %141
  %5610 = fsub fast float %5563, %142
  %5611 = fsub fast float %5564, %143
  %5612 = fsub fast float %5562, %5390
  %5613 = fsub fast float %5563, %5391
  %5614 = fsub fast float %5564, %5392
  %5615 = call float @dx.op.dot3.f32(i32 55, float %5609, float %5610, float %5611, float %5609, float %5610, float %5611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5612, float %5613, float %5614, float %5612, float %5613, float %5614)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = fadd fast float %5616, 0x3EE4F8B580000000
  %5618 = fdiv fast float %5615, %5617
  %5619 = bitcast float %5618 to i32
  %5620 = ashr i32 %5619, 1
  %5621 = add nsw i32 %5620, 532487669
  %5622 = bitcast i32 %5621 to float
  %5623 = fmul fast float %5622, %5608
  %5624 = call float @dx.op.unary.f32(i32 7, float %5623)  ; Saturate(value)
  %5625 = fmul fast float %5624, 0x4009981AE0000000
  %5626 = fsub fast float 0x40111BBD80000000, %5625
  %5627 = fmul fast float %5626, %5624
  %5628 = fadd fast float %5627, 0xC0009F6020000000
  %5629 = fmul fast float %5628, %5624
  %5630 = fadd fast float %5629, 1.000000e+00
  %5631 = call float @dx.op.unary.f32(i32 7, float %5630)  ; Saturate(value)
  br label %5635

; <label>:5632                                    ; preds = %5597
  %5633 = icmp ne i32 %5436, -1
  %5634 = zext i1 %5633 to i32
  br label %5635

; <label>:5635                                    ; preds = %5632, %5601
  %5636 = phi float [ %4788, %5632 ], [ %5631, %5601 ]
  %5637 = phi i32 [ %5634, %5632 ], [ 0, %5601 ]
  %5638 = fmul float %5636, 5.000000e+00
  %5639 = fsub float 5.000000e+00, %5638
  %5640 = icmp ne i32 %5637, 0
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 3
  %5643 = fadd fast float %5642, %5639
  %5644 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5643)  ; FMax(a,b)
  %5645 = call float @dx.op.unary.f32(i32 6, float %5598)  ; FAbs(value)
  %5646 = call float @dx.op.unary.f32(i32 6, float %5599)  ; FAbs(value)
  %5647 = fadd fast float %5646, %5645
  %5648 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5649 = fadd fast float %5647, %5648
  %5650 = fcmp fast oeq float %5649, 0.000000e+00
  %5651 = fdiv fast float 1.000000e+00, %5649
  %5652 = select i1 %5650, float 1.000000e+00, float %5651
  %5653 = fmul fast float %5652, %5598
  %5654 = fmul fast float %5652, %5599
  %5655 = call float @dx.op.unary.f32(i32 6, float %5654)  ; FAbs(value)
  %5656 = call float @dx.op.unary.f32(i32 6, float %5653)  ; FAbs(value)
  %5657 = fsub fast float 1.000000e+00, %5655
  %5658 = fsub fast float 1.000000e+00, %5656
  %5659 = fcmp fast oge float %5653, 0.000000e+00
  %5660 = fcmp fast oge float %5654, 0.000000e+00
  %5661 = select i1 %5659, float 1.000000e+00, float -1.000000e+00
  %5662 = select i1 %5660, float 1.000000e+00, float -1.000000e+00
  %5663 = fcmp fast ole float %5600, 0.000000e+00
  %5664 = fmul fast float %5661, %5657
  %5665 = fmul fast float %5662, %5658
  %5666 = select i1 %5663, float %5664, float %5653
  %5667 = select i1 %5663, float %5665, float %5654
  %5668 = fmul fast float %5666, 5.000000e-01
  %5669 = fmul fast float %5667, 5.000000e-01
  %5670 = fadd fast float %5668, 5.000000e-01
  %5671 = fadd fast float %5669, 5.000000e-01
  %5672 = uitofp i32 %5433 to float
  %5673 = call float @dx.op.binary.f32(i32 36, float %5644, float 3.000000e+00)  ; FMin(a,b)
  %5674 = fadd fast float %5673, 2.000000e+00
  %5675 = call float @dx.op.unary.f32(i32 21, float %5674)  ; Exp(value)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5677 = fmul fast float %5676, %5675
  %5678 = fmul fast float %5677, 2.000000e+00
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = fmul fast float %5670, %5679
  %5681 = fmul fast float %5671, %5679
  %5682 = fadd fast float %5680, %5677
  %5683 = fadd fast float %5681, %5677
  %5684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5682, float %5683, float %5672, float undef, i32 0, i32 0, i32 undef, float %5644)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5685 = extractvalue %dx.types.ResRet.f32 %5684, 0
  %5686 = extractvalue %dx.types.ResRet.f32 %5684, 1
  %5687 = extractvalue %dx.types.ResRet.f32 %5684, 2
  %5688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5689 = extractvalue %dx.types.CBufRet.f32 %5688, 3
  %5690 = fmul fast float %5689, %5403
  %5691 = call float @dx.op.binary.f32(i32 36, float %4868, float %5690)  ; FMin(a,b)
  %5692 = select i1 %5640, float %5691, float %5690
  %5693 = fmul fast float %5685, %5482
  %5694 = fmul fast float %5693, %5692
  %5695 = fmul fast float %5686, %5482
  %5696 = fmul fast float %5695, %5692
  %5697 = fmul fast float %5687, %5482
  %5698 = fmul fast float %5697, %5692
  %5699 = fadd fast float %5694, %5375
  %5700 = fadd fast float %5696, %5376
  %5701 = fadd fast float %5698, %5377
  %5702 = fmul fast float %5562, %5482
  %5703 = fmul fast float %5563, %5482
  %5704 = fmul fast float %5564, %5482
  %5705 = fadd fast float %5702, %5380
  %5706 = fadd fast float %5703, %5381
  %5707 = fadd fast float %5704, %5382
  %5708 = fsub fast float %5378, %5482
  br label %5484

; <label>:5709                                    ; preds = %5484
  br label %5710

; <label>:5710                                    ; preds = %5709, %5341
  %5711 = phi float [ %5342, %5341 ], [ %5485, %5709 ]
  %5712 = phi float [ %5343, %5341 ], [ %5486, %5709 ]
  %5713 = phi float [ %5344, %5341 ], [ %5487, %5709 ]
  %5714 = phi float [ %5345, %5341 ], [ %5488, %5709 ]
  %5715 = phi float [ %5347, %5341 ], [ %5489, %5709 ]
  %5716 = phi float [ %5348, %5341 ], [ %5490, %5709 ]
  %5717 = phi float [ %5349, %5341 ], [ %5491, %5709 ]
  %5718 = add i32 %5346, 1
  %5719 = icmp ugt i32 %5718, %5338
  br i1 %5719, label %5720, label %5341, !llvm.loop !85

; <label>:5720                                    ; preds = %5710
  br label %5721

; <label>:5721                                    ; preds = %5720, %5323
  %5722 = phi float [ 0.000000e+00, %5323 ], [ %5711, %5720 ]
  %5723 = phi float [ 0.000000e+00, %5323 ], [ %5712, %5720 ]
  %5724 = phi float [ 0.000000e+00, %5323 ], [ %5713, %5720 ]
  %5725 = phi float [ 0.000000e+00, %5323 ], [ %5715, %5720 ]
  %5726 = phi float [ 0.000000e+00, %5323 ], [ %5716, %5720 ]
  %5727 = phi float [ 0.000000e+00, %5323 ], [ %5717, %5720 ]
  %5728 = call float @dx.op.dot3.f32(i32 55, float %5722, float %5723, float %5724, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5729 = select i1 %183, float 0.000000e+00, float %5722
  %5730 = select i1 %183, float %5728, float %5723
  %5731 = select i1 %183, float 0.000000e+00, float %5724
  %5732 = fcmp fast olt float %5247, 0.000000e+00
  %5733 = call float @dx.op.unary.f32(i32 6, float %5247)  ; FAbs(value)
  %5734 = fmul fast float %5733, %5248
  %5735 = fmul fast float %5733, %5249
  %5736 = fmul fast float %5733, %5250
  %5737 = select i1 %5732, float %5248, float %5734
  %5738 = select i1 %5732, float %5249, float %5735
  %5739 = select i1 %5732, float %5250, float %5736
  %5740 = fsub fast float 1.000000e+00, %5733
  %5741 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5742 = fmul fast float %5741, %5729
  %5743 = fmul fast float %5741, %5730
  %5744 = fmul fast float %5741, %5731
  %5745 = fadd fast float %5737, %5742
  %5746 = fadd fast float %5738, %5743
  %5747 = fadd fast float %5739, %5744
  %5748 = fcmp fast une float %4997, 0.000000e+00
  br i1 %5748, label %5849, label %5749

; <label>:5749                                    ; preds = %5721
  %5750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5751 = extractvalue %dx.types.CBufRet.f32 %5750, 0
  %5752 = extractvalue %dx.types.CBufRet.f32 %5750, 1
  %5753 = extractvalue %dx.types.CBufRet.f32 %5750, 2
  %5754 = extractvalue %dx.types.CBufRet.f32 %5750, 3
  %5755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5756 = extractvalue %dx.types.CBufRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.CBufRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.CBufRet.f32 %5755, 2
  %5759 = extractvalue %dx.types.CBufRet.f32 %5755, 3
  %5760 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5761 = extractvalue %dx.types.CBufRet.f32 %5760, 0
  %5762 = extractvalue %dx.types.CBufRet.f32 %5760, 1
  %5763 = extractvalue %dx.types.CBufRet.f32 %5760, 2
  %5764 = extractvalue %dx.types.CBufRet.f32 %5760, 3
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5761, float %5762, float %5763, float %4813, float %4814, float %4815)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5725, float %5726, float %5727, float %5761, float %5762, float %5763)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5761, float %5762, float %5763)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = fadd fast float %4788, -1.000000e+00
  %5769 = fsub fast float %5766, %5767
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5772 = fmul fast float %5771, %5766
  %5773 = fdiv fast float 1.600000e+02, %5772
  %5774 = fmul fast float %5768, %5768
  %5775 = fmul fast float %5774, 0xBFB5B17960000000
  %5776 = fmul fast float %5775, %5769
  %5777 = fmul fast float %5776, %5773
  %5778 = call float @dx.op.unary.f32(i32 21, float %5777)  ; Exp(value)
  %5779 = fmul fast float %5778, 0x3FF04B2960000000
  %5780 = fsub fast float 0x3FF04B2960000000, %5779
  %5781 = call float @dx.op.unary.f32(i32 7, float %5780)  ; Saturate(value)
  %5782 = fmul fast float %5781, 4.000000e+00
  %5783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5784 = extractvalue %dx.types.CBufRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.CBufRet.f32 %5783, 1
  %5786 = extractvalue %dx.types.CBufRet.f32 %5783, 2
  %5787 = fadd fast float %5784, %5725
  %5788 = fadd fast float %5785, %5726
  %5789 = fadd fast float %5786, %5727
  %5790 = fmul fast float %5787, %5751
  %5791 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %5752, float %5790)  ; FMad(a,b,c)
  %5792 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5753, float %5791)  ; FMad(a,b,c)
  %5793 = fadd fast float %5792, %5754
  %5794 = fmul fast float %5787, %5756
  %5795 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %5757, float %5794)  ; FMad(a,b,c)
  %5796 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5758, float %5795)  ; FMad(a,b,c)
  %5797 = fadd fast float %5796, %5759
  %5798 = fmul fast float %5787, %5761
  %5799 = call float @dx.op.tertiary.f32(i32 46, float %5788, float %5762, float %5798)  ; FMad(a,b,c)
  %5800 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5763, float %5799)  ; FMad(a,b,c)
  %5801 = fadd fast float %5800, %5764
  %5802 = fdiv fast float %5793, %5801
  %5803 = fdiv fast float %5797, %5801
  %5804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5805 = extractvalue %dx.types.CBufRet.f32 %5804, 0
  %5806 = extractvalue %dx.types.CBufRet.f32 %5804, 1
  %5807 = fmul fast float %5805, %5802
  %5808 = fmul fast float %5806, %5803
  %5809 = extractvalue %dx.types.CBufRet.f32 %5804, 2
  %5810 = extractvalue %dx.types.CBufRet.f32 %5804, 3
  %5811 = fadd fast float %5807, %5809
  %5812 = fadd fast float %5808, %5810
  %5813 = fmul fast float %5765, 8.000000e+00
  %5814 = call float @dx.op.unary.f32(i32 7, float %5813)  ; Saturate(value)
  %5815 = fmul fast float %5811, 2.000000e+00
  %5816 = fmul fast float %5812, 2.000000e+00
  %5817 = fadd fast float %5815, -1.000000e+00
  %5818 = fadd fast float %5816, -1.000000e+00
  %5819 = fmul fast float %5817, %5817
  %5820 = fsub fast float 1.000000e+00, %5819
  %5821 = call float @dx.op.unary.f32(i32 7, float %5820)  ; Saturate(value)
  %5822 = fmul fast float %5818, %5818
  %5823 = fsub fast float 1.000000e+00, %5822
  %5824 = call float @dx.op.unary.f32(i32 7, float %5823)  ; Saturate(value)
  %5825 = fmul fast float %4997, %5821
  %5826 = fmul fast float %5825, %5824
  %5827 = call float @dx.op.unary.f32(i32 7, float %5826)  ; Saturate(value)
  %5828 = fmul fast float %5827, %5814
  %5829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5811, float %5812, float undef, float undef, i32 0, i32 0, i32 undef, float %5782)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.ResRet.f32 %5829, 1
  %5832 = extractvalue %dx.types.ResRet.f32 %5829, 2
  %5833 = select i1 %183, float 0.000000e+00, float %5831
  %5834 = select i1 %183, float 0.000000e+00, float %5832
  %5835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5836 = extractvalue %dx.types.CBufRet.f32 %5835, 2
  %5837 = fmul fast float %5836, %5830
  %5838 = fmul fast float %5833, %5836
  %5839 = fmul fast float %5834, %5836
  %5840 = fsub fast float %5837, %5729
  %5841 = fsub fast float %5838, %5730
  %5842 = fsub fast float %5839, %5731
  %5843 = fmul fast float %5840, %5828
  %5844 = fmul fast float %5841, %5828
  %5845 = fmul fast float %5842, %5828
  %5846 = fadd fast float %5843, %5729
  %5847 = fadd fast float %5844, %5730
  %5848 = fadd fast float %5845, %5731
  br label %5849

; <label>:5849                                    ; preds = %5749, %5721, %5246, %4970
  %5850 = phi float [ %5248, %5246 ], [ %5745, %5721 ], [ %4927, %4970 ], [ %5846, %5749 ]
  %5851 = phi float [ %5249, %5246 ], [ %5746, %5721 ], [ %4928, %4970 ], [ %5847, %5749 ]
  %5852 = phi float [ %5250, %5246 ], [ %5747, %5721 ], [ %4929, %4970 ], [ %5848, %5749 ]
  %5853 = fmul fast float %4976, %4923
  %5854 = fmul fast float %4976, %4924
  %5855 = fmul fast float %4976, %4925
  %5856 = call float @dx.op.dot3.f32(i32 55, float %4782, float %4783, float %4784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5857 = fcmp fast ogt float %5856, 0x3E7FF19E20000000
  %5858 = fdiv fast float 1.000000e+00, %5856
  %5859 = select i1 %5857, float %5858, float 0.000000e+00
  %5860 = fmul fast float %5859, %4782
  %5861 = fmul fast float %5859, %4783
  %5862 = fmul fast float %5859, %4784
  %5863 = fadd fast float %5860, -1.000000e+00
  %5864 = fadd fast float %5861, -1.000000e+00
  %5865 = fadd fast float %5862, -1.000000e+00
  %5866 = fmul fast float %5863, 5.000000e-01
  %5867 = fmul fast float %5864, 5.000000e-01
  %5868 = fmul fast float %5865, 5.000000e-01
  %5869 = fadd fast float %5866, 1.000000e+00
  %5870 = fadd fast float %5867, 1.000000e+00
  %5871 = fadd fast float %5868, 1.000000e+00
  %5872 = fmul fast float %5850, %4971
  %5873 = fmul fast float %5851, %4972
  %5874 = fmul fast float %5852, %4973
  %5875 = fsub fast float 1.000000e+00, %4807
  %5876 = bitcast float %5875 to i32
  %5877 = sitofp i32 %5876 to float
  %5878 = fmul fast float %5877, 5.000000e+00
  %5879 = fadd fast float %5878, 0xC1EFBF8940000000
  %5880 = fptosi float %5879 to i32
  %5881 = bitcast i32 %5880 to float
  %5882 = fmul fast float %5881, %4177
  %5883 = fmul fast float %4923, %5882
  %5884 = fmul fast float %5883, %4976
  %5885 = fmul fast float %5884, %5869
  %5886 = fmul fast float %4924, %5882
  %5887 = fmul fast float %5886, %4976
  %5888 = fmul fast float %5887, %5870
  %5889 = fmul fast float %4925, %5882
  %5890 = fmul fast float %5889, %4976
  %5891 = fmul fast float %5890, %5871
  %5892 = fmul fast float %5853, %4173
  %5893 = fmul fast float %5854, %4173
  %5894 = fmul fast float %5855, %4173
  %5895 = fadd fast float %5872, %4169
  %5896 = fadd fast float %5895, %5885
  %5897 = fmul fast float %5896, %4173
  %5898 = fadd fast float %5873, %4170
  %5899 = fadd fast float %5898, %5888
  %5900 = fmul fast float %5899, %4173
  %5901 = fadd fast float %5874, %4171
  %5902 = fadd fast float %5901, %5891
  %5903 = fmul fast float %5902, %4173
  %5904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5905 = extractvalue %dx.types.CBufRet.f32 %5904, 3
  %5906 = fcmp fast oeq float %5905, 0.000000e+00
  br i1 %5906, label %6126, label %5907

; <label>:5907                                    ; preds = %5849
  %5908 = extractvalue %dx.types.CBufRet.f32 %5904, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5904, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5904, 2
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = extractvalue %dx.types.CBufRet.f32 %5911, 2
  %5915 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5916 = extractvalue %dx.types.CBufRet.f32 %5915, 0
  %5917 = extractvalue %dx.types.CBufRet.f32 %5915, 1
  %5918 = call float @dx.op.dot3.f32(i32 55, float %5912, float %5913, float %5914, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5919 = select i1 %183, float %5916, float %5912
  %5920 = select i1 %183, float %5918, float %5913
  %5921 = select i1 %183, float %5917, float %5914
  %5922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5923 = extractvalue %dx.types.CBufRet.f32 %5922, 1
  %5924 = fcmp fast une float %5923, 0.000000e+00
  br i1 %5924, label %5925, label %5942

; <label>:5925                                    ; preds = %5907
  %5926 = fptoui float %78 to i32
  %5927 = fptoui float %79 to i32
  %5928 = lshr i32 %5926, 4
  %5929 = lshr i32 %5927, 4
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %5932 = fptoui float %5931 to i32
  %5933 = add i32 %5932, 15
  %5934 = lshr i32 %5933, 4
  %5935 = mul i32 %5934, %5929
  %5936 = add i32 %5935, %5928
  %5937 = shl i32 %5936, 3
  %5938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5937, i32 undef)  ; BufferLoad(srv,index,wot)
  %5939 = extractvalue %dx.types.ResRet.i32 %5938, 0
  %5940 = and i32 %5939, -268435456
  %5941 = icmp eq i32 %5940, -1342177280
  br i1 %5941, label %5947, label %5942

; <label>:5942                                    ; preds = %5925, %5907
  %5943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4793, float %4794, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5944 = extractvalue %dx.types.ResRet.f32 %5943, 0
  %5945 = extractvalue %dx.types.ResRet.f32 %5943, 1
  %5946 = extractvalue %dx.types.ResRet.f32 %5943, 2
  br label %5947

; <label>:5947                                    ; preds = %5942, %5925
  %5948 = phi float [ %5944, %5942 ], [ 0.000000e+00, %5925 ]
  %5949 = phi float [ %5945, %5942 ], [ 0.000000e+00, %5925 ]
  %5950 = phi float [ %5946, %5942 ], [ 0.000000e+00, %5925 ]
  %5951 = call float @dx.op.binary.f32(i32 36, float %5949, float %5950)  ; FMin(a,b)
  %5952 = call float @dx.op.binary.f32(i32 36, float %5948, float %5951)  ; FMin(a,b)
  %5953 = fcmp fast ogt float %5952, 0.000000e+00
  br i1 %5953, label %5954, label %6126, !dx.controlflow.hints !87

; <label>:5954                                    ; preds = %5947
  %5955 = fmul fast float %5948, %5919
  %5956 = fmul fast float %5949, %5920
  %5957 = fmul fast float %5950, %5921
  %5958 = fsub fast float %5908, %4778
  %5959 = fsub fast float %5909, %4777
  %5960 = fsub fast float %5910, %4776
  %5961 = call float @dx.op.dot3.f32(i32 55, float %5958, float %5959, float %5960, float %5958, float %5959, float %5960)  ; Dot3(ax,ay,az,bx,by,bz)
  %5962 = call float @dx.op.unary.f32(i32 25, float %5961)  ; Rsqrt(value)
  %5963 = fmul fast float %5962, %5958
  %5964 = fmul fast float %5962, %5959
  %5965 = fmul fast float %5962, %5960
  %5966 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float %4785, float %4786, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %5967 = call float @dx.op.dot3.f32(i32 55, float %4775, float %4774, float %4773, float %5963, float %5964, float %5965)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5969 = bitcast i32 %4831 to float
  %5970 = fmul fast float %5968, %5968
  %5971 = fmul fast float %5970, %5969
  %5972 = call float @dx.op.unary.f32(i32 7, float %5971)  ; Saturate(value)
  %5973 = fmul fast float %5972, %5968
  %5974 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %5963, float %5964, float %5965)  ; Dot3(ax,ay,az,bx,by,bz)
  %5975 = fmul fast float %5974, %5974
  %5976 = call float @dx.op.unary.f32(i32 6, float %5966)  ; FAbs(value)
  %5977 = fsub fast float 1.000000e+00, %4825
  %5978 = fmul fast float %4807, %4807
  %5979 = fmul fast float %5978, %5977
  %5980 = fadd fast float %5979, %4825
  %5981 = bitcast float %5980 to i32
  %5982 = ashr i32 %5981, 1
  %5983 = add nsw i32 %5982, 532487669
  %5984 = bitcast i32 %5983 to float
  %5985 = fadd fast float %5984, %4807
  %5986 = fmul fast float %4825, %5975
  %5987 = fsub fast float 1.000000e+00, %5975
  %5988 = fadd fast float %5987, %5986
  %5989 = fmul fast float %5976, %5976
  %5990 = fmul fast float %5989, %5977
  %5991 = fadd fast float %5990, %4825
  %5992 = bitcast float %5991 to i32
  %5993 = ashr i32 %5992, 1
  %5994 = add nsw i32 %5993, 532487669
  %5995 = bitcast i32 %5994 to float
  %5996 = fadd fast float %5995, %5976
  %5997 = fmul fast float %5988, %5988
  %5998 = fmul fast float %5997, %5985
  %5999 = fmul fast float %5998, %5996
  %6000 = fdiv fast float 0x3FF0A00000000000, %5999
  %6001 = fmul fast float %6000, %4825
  %6002 = call float @dx.op.unary.f32(i32 6, float %5967)  ; FAbs(value)
  %6003 = fsub fast float 1.000000e+00, %6002
  %6004 = bitcast float %6003 to i32
  %6005 = sitofp i32 %6004 to float
  %6006 = fmul fast float %6005, 5.000000e+00
  %6007 = fadd fast float %6006, 0xC1EFBF8940000000
  %6008 = fptosi float %6007 to i32
  %6009 = bitcast i32 %6008 to float
  %6010 = fsub fast float 1.000000e+00, %4779
  %6011 = fsub fast float 1.000000e+00, %4780
  %6012 = fsub fast float 1.000000e+00, %4805
  %6013 = fmul fast float %6009, %6010
  %6014 = fmul fast float %6009, %6011
  %6015 = fmul fast float %6009, %6012
  %6016 = fadd fast float %6013, %4779
  %6017 = fadd fast float %6014, %4780
  %6018 = fadd fast float %6015, %4805
  br i1 %4943, label %6019, label %6042

; <label>:6019                                    ; preds = %5954
  %6020 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %6002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6021 = extractvalue %dx.types.ResRet.f32 %6020, 0
  %6022 = extractvalue %dx.types.ResRet.f32 %6020, 1
  %6023 = extractvalue %dx.types.ResRet.f32 %6020, 2
  %6024 = fadd fast float %6021, -5.000000e-01
  %6025 = fadd fast float %6022, -5.000000e-01
  %6026 = fadd fast float %6023, -5.000000e-01
  %6027 = fmul fast float %4779, 4.000000e+00
  %6028 = fmul fast float %6027, %6010
  %6029 = fmul fast float %6028, %6024
  %6030 = fmul fast float %4780, 4.000000e+00
  %6031 = fmul fast float %6030, %6011
  %6032 = fmul fast float %6031, %6025
  %6033 = fmul fast float %4805, 4.000000e+00
  %6034 = fmul fast float %6033, %6012
  %6035 = fmul fast float %6034, %6026
  %6036 = fadd fast float %6029, %6016
  %6037 = fadd fast float %6032, %6017
  %6038 = fadd fast float %6035, %6018
  %6039 = call float @dx.op.unary.f32(i32 7, float %6036)  ; Saturate(value)
  %6040 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6041 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  br label %6042

; <label>:6042                                    ; preds = %6019, %5954
  %6043 = phi float [ %6039, %6019 ], [ %6016, %5954 ]
  %6044 = phi float [ %6040, %6019 ], [ %6017, %5954 ]
  %6045 = phi float [ %6041, %6019 ], [ %6018, %5954 ]
  %6046 = fmul fast float %5966, 9.843750e-01
  %6047 = fadd fast float %6046, 7.812500e-03
  %6048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6047, float %4933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6049 = extractvalue %dx.types.ResRet.f32 %6048, 2
  %6050 = extractvalue %dx.types.ResRet.f32 %6048, 3
  %6051 = fmul fast float %6049, %4779
  %6052 = fmul fast float %6049, %4780
  %6053 = fmul fast float %6049, %4805
  %6054 = fadd fast float %6051, %6050
  %6055 = fadd fast float %6052, %6050
  %6056 = fadd fast float %6053, %6050
  br i1 %4943, label %6057, label %6080

; <label>:6057                                    ; preds = %6042
  %6058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %5966, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6059 = extractvalue %dx.types.ResRet.f32 %6058, 0
  %6060 = extractvalue %dx.types.ResRet.f32 %6058, 1
  %6061 = extractvalue %dx.types.ResRet.f32 %6058, 2
  %6062 = fadd fast float %6059, -5.000000e-01
  %6063 = fadd fast float %6060, -5.000000e-01
  %6064 = fadd fast float %6061, -5.000000e-01
  %6065 = fmul fast float %4779, 4.000000e+00
  %6066 = fmul fast float %6065, %6010
  %6067 = fmul fast float %6066, %6062
  %6068 = fmul fast float %4780, 4.000000e+00
  %6069 = fmul fast float %6068, %6011
  %6070 = fmul fast float %6069, %6063
  %6071 = fmul fast float %4805, 4.000000e+00
  %6072 = fmul fast float %6071, %6012
  %6073 = fmul fast float %6072, %6064
  %6074 = fadd fast float %6067, %6054
  %6075 = fadd fast float %6070, %6055
  %6076 = fadd fast float %6073, %6056
  %6077 = call float @dx.op.unary.f32(i32 7, float %6074)  ; Saturate(value)
  %6078 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6079 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  br label %6080

; <label>:6080                                    ; preds = %6057, %6042
  %6081 = phi float [ %6077, %6057 ], [ %6054, %6042 ]
  %6082 = phi float [ %6078, %6057 ], [ %6055, %6042 ]
  %6083 = phi float [ %6079, %6057 ], [ %6056, %6042 ]
  %6084 = call float @dx.op.binary.f32(i32 35, float %6082, float %6083)  ; FMax(a,b)
  %6085 = call float @dx.op.binary.f32(i32 35, float %6081, float %6084)  ; FMax(a,b)
  %6086 = fsub fast float 1.000000e+00, %6085
  %6087 = fmul fast float %6043, %6001
  %6088 = fmul fast float %6044, %6001
  %6089 = fmul fast float %6045, %6001
  %6090 = fsub fast float 1.000000e+00, %5967
  %6091 = bitcast float %6090 to i32
  %6092 = sitofp i32 %6091 to float
  %6093 = fmul fast float %6092, 5.000000e+00
  %6094 = fadd fast float %6093, 0xC1EFBF8940000000
  %6095 = fptosi float %6094 to i32
  %6096 = bitcast i32 %6095 to float
  %6097 = fmul fast float %6096, %4177
  %6098 = fmul fast float %6086, %6097
  %6099 = fmul fast float %6098, %5869
  %6100 = fmul fast float %6098, %5870
  %6101 = fmul fast float %6098, %5871
  %6102 = fadd fast float %6099, %6087
  %6103 = fadd fast float %6100, %6088
  %6104 = fadd fast float %6101, %6089
  %6105 = fmul fast float %5973, %5955
  %6106 = fmul fast float %6105, %6086
  %6107 = fmul fast float %5973, %5956
  %6108 = fmul fast float %6107, %6086
  %6109 = fmul fast float %5973, %5957
  %6110 = fmul fast float %6109, %6086
  %6111 = fmul fast float %6105, %6102
  %6112 = fmul fast float %6107, %6103
  %6113 = fmul fast float %6109, %6104
  %6114 = fadd fast float %6106, %5853
  %6115 = fmul fast float %6114, %4173
  %6116 = fadd fast float %6108, %5854
  %6117 = fmul fast float %6116, %4173
  %6118 = fadd fast float %6110, %5855
  %6119 = fmul fast float %6118, %4173
  %6120 = fadd fast float %6111, %5896
  %6121 = fmul fast float %6120, %4173
  %6122 = fadd fast float %6112, %5899
  %6123 = fmul fast float %6122, %4173
  %6124 = fadd fast float %6113, %5902
  %6125 = fmul fast float %6124, %4173
  br label %6126

; <label>:6126                                    ; preds = %6080, %5947, %5849
  %6127 = phi float [ %5897, %5849 ], [ %5897, %5947 ], [ %6121, %6080 ]
  %6128 = phi float [ %5900, %5849 ], [ %5900, %5947 ], [ %6123, %6080 ]
  %6129 = phi float [ %5903, %5849 ], [ %5903, %5947 ], [ %6125, %6080 ]
  %6130 = phi float [ %5892, %5849 ], [ %5892, %5947 ], [ %6115, %6080 ]
  %6131 = phi float [ %5893, %5849 ], [ %5893, %5947 ], [ %6117, %6080 ]
  %6132 = phi float [ %5894, %5849 ], [ %5894, %5947 ], [ %6119, %6080 ]
  %6133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6134 = extractvalue %dx.types.CBufRet.i32 %6133, 0
  %6135 = icmp eq i32 %6134, 0
  br i1 %6135, label %6567, label %6136

; <label>:6136                                    ; preds = %6126
  %6137 = fptoui float %78 to i32
  %6138 = fptoui float %79 to i32
  %6139 = lshr i32 %6137, 4
  %6140 = lshr i32 %6138, 4
  %6141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6142 = extractvalue %dx.types.CBufRet.i32 %6141, 0
  %6143 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6140, i32 %6142, i32 %6139)  ; UMad(a,b,c)
  %6144 = add nsw i32 %6134, -1
  %6145 = call i32 @dx.op.binary.i32(i32 37, i32 %6144, i32 0)  ; IMax(a,b)
  %6146 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6147 = fptoui float %6146 to i32
  %6148 = lshr i32 %6147, 5
  %6149 = call i32 @dx.op.binary.i32(i32 40, i32 %6148, i32 8191)  ; UMin(a,b)
  %6150 = shl i32 %6149, 2
  %6151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6150, i32 undef)  ; BufferLoad(srv,index,wot)
  %6152 = extractvalue %dx.types.ResRet.i32 %6151, 0
  %6153 = lshr i32 %6152, 16
  %6154 = and i32 %6152, 65535
  %6155 = lshr i32 %6152, 21
  %6156 = lshr i32 %6154, 5
  %6157 = call i32 @dx.op.binary.i32(i32 40, i32 %6156, i32 %6145)  ; UMin(a,b)
  %6158 = icmp ugt i32 %6155, %6157
  br i1 %6158, label %6567, label %6159

; <label>:6159                                    ; preds = %6136
  br label %6160

; <label>:6160                                    ; preds = %6557, %6159
  %6161 = phi i32 [ %6564, %6557 ], [ %6155, %6159 ]
  %6162 = phi float [ %6558, %6557 ], [ %6127, %6159 ]
  %6163 = phi float [ %6559, %6557 ], [ %6128, %6159 ]
  %6164 = phi float [ %6560, %6557 ], [ %6129, %6159 ]
  %6165 = phi float [ %6561, %6557 ], [ %6130, %6159 ]
  %6166 = phi float [ %6562, %6557 ], [ %6131, %6159 ]
  %6167 = phi float [ %6563, %6557 ], [ %6132, %6159 ]
  %6168 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6169 = extractvalue %dx.types.CBufRet.i32 %6168, 0
  %6170 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6143, i32 %6169, i32 %6161)  ; UMad(a,b,c)
  %6171 = shl i32 %6170, 2
  %6172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6171, i32 undef)  ; BufferLoad(srv,index,wot)
  %6173 = extractvalue %dx.types.ResRet.i32 %6172, 0
  %6174 = shl i32 %6161, 5
  %6175 = sub nsw i32 %6153, %6174
  %6176 = call i32 @dx.op.binary.i32(i32 37, i32 %6175, i32 0)  ; IMax(a,b)
  %6177 = call i32 @dx.op.binary.i32(i32 38, i32 %6176, i32 31)  ; IMin(a,b)
  %6178 = sub nsw i32 1, %6153
  %6179 = add nsw i32 %6178, %6154
  %6180 = call i32 @dx.op.binary.i32(i32 37, i32 %6179, i32 0)  ; IMax(a,b)
  %6181 = call i32 @dx.op.binary.i32(i32 38, i32 %6180, i32 32)  ; IMin(a,b)
  %6182 = and i32 %6181, 31
  %6183 = shl i32 -1, %6182
  %6184 = xor i32 %6183, -1
  %6185 = and i32 %6177, 31
  %6186 = shl i32 %6184, %6185
  %6187 = icmp eq i32 %6181, 32
  %6188 = select i1 %6187, i32 -1, i32 %6186
  %6189 = and i32 %6188, %6173
  %6190 = icmp eq i32 %6189, 0
  br i1 %6190, label %6557, label %6191

; <label>:6191                                    ; preds = %6160
  br label %6192

; <label>:6192                                    ; preds = %6272, %6191
  %6193 = phi i32 [ %6204, %6272 ], [ %6189, %6191 ]
  %6194 = phi float [ %6273, %6272 ], [ %6162, %6191 ]
  %6195 = phi float [ %6274, %6272 ], [ %6163, %6191 ]
  %6196 = phi float [ %6275, %6272 ], [ %6164, %6191 ]
  %6197 = phi float [ %6276, %6272 ], [ %6165, %6191 ]
  %6198 = phi float [ %6277, %6272 ], [ %6166, %6191 ]
  %6199 = phi float [ %6278, %6272 ], [ %6167, %6191 ]
  %6200 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6193)  ; FirstbitLo(value)
  %6201 = add i32 %6200, %6174
  %6202 = and i32 %6200, 31
  %6203 = shl i32 1, %6202
  %6204 = xor i32 %6203, %6193
  %6205 = mul i32 %6201, 112
  %6206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6205, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  %6208 = extractvalue %dx.types.ResRet.f32 %6206, 1
  %6209 = extractvalue %dx.types.ResRet.f32 %6206, 2
  %6210 = or i32 %6205, 12
  %6211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6210, i32 undef)  ; BufferLoad(srv,index,wot)
  %6212 = extractvalue %dx.types.ResRet.f32 %6211, 0
  %6213 = add i32 %6205, 44
  %6214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6213, i32 undef)  ; BufferLoad(srv,index,wot)
  %6215 = extractvalue %dx.types.ResRet.f32 %6214, 0
  %6216 = add i32 %6205, 48
  %6217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6216, i32 undef)  ; BufferLoad(srv,index,wot)
  %6218 = extractvalue %dx.types.ResRet.f32 %6217, 0
  %6219 = extractvalue %dx.types.ResRet.f32 %6217, 1
  %6220 = extractvalue %dx.types.ResRet.f32 %6217, 2
  %6221 = add i32 %6205, 80
  %6222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6221, i32 undef)  ; BufferLoad(srv,index,wot)
  %6223 = extractvalue %dx.types.ResRet.f32 %6222, 1
  %6224 = extractvalue %dx.types.ResRet.f32 %6222, 2
  %6225 = call float @dx.op.dot3.f32(i32 55, float %6207, float %6208, float %6209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6226 = select i1 %183, float %6223, float %6207
  %6227 = select i1 %183, float %6225, float %6208
  %6228 = select i1 %183, float %6224, float %6209
  %6229 = fsub fast float %6218, %141
  %6230 = fsub fast float %6219, %142
  %6231 = fsub fast float %6220, %143
  %6232 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6229, float %6230, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = call float @dx.op.unary.f32(i32 24, float %6232)  ; Sqrt(value)
  %6234 = fdiv fast float 1.000000e+00, %6233
  %6235 = fmul fast float %6234, %6229
  %6236 = fmul fast float %6234, %6230
  %6237 = fmul fast float %6234, %6231
  %6238 = fadd fast float %6233, %6212
  %6239 = fdiv fast float 1.000000e+00, %6238
  %6240 = fmul float %6215, %6239
  %6241 = fmul float %6240, %6240
  %6242 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6243 = and i32 %6203, %6189
  %6244 = icmp eq i32 %6243, 0
  br i1 %6244, label %6267, label %6245, !dx.controlflow.hints !88

; <label>:6245                                    ; preds = %6192
  %6246 = lshr i32 %6137, 5
  %6247 = lshr i32 %6138, 5
  %6248 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6246, i32 %6247, i32 %6201, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6249 = extractvalue %dx.types.ResRet.i32 %6248, 0
  %6250 = and i32 %6249, 3
  %6251 = icmp eq i32 %6250, 0
  %6252 = select i1 %6251, float 1.000000e+00, float 0.000000e+00
  %6253 = icmp eq i32 %6250, 3
  br i1 %6253, label %6254, label %6267

; <label>:6254                                    ; preds = %6245
  %6255 = lshr i32 %6249, 10
  %6256 = and i32 %6255, 8160
  %6257 = and i32 %6138, 31
  %6258 = or i32 %6256, %6257
  %6259 = lshr i32 %6249, 1
  %6260 = and i32 %6259, 16352
  %6261 = and i32 %6137, 31
  %6262 = or i32 %6260, %6261
  %6263 = lshr i32 %6249, 23
  %6264 = and i32 %6263, 255
  %6265 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6262, i32 %6258, i32 %6264, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 0
  br label %6267

; <label>:6267                                    ; preds = %6254, %6245, %6192
  %6268 = phi float [ %6266, %6254 ], [ %6252, %6245 ], [ 0.000000e+00, %6192 ]
  %6269 = call float @dx.op.binary.f32(i32 36, float %6268, float %6268)  ; FMin(a,b)
  %6270 = call float @dx.op.binary.f32(i32 36, float %6268, float %6269)  ; FMin(a,b)
  %6271 = fcmp fast ogt float %6270, 0.000000e+00
  br i1 %6271, label %6280, label %6272, !dx.controlflow.hints !89

; <label>:6272                                    ; preds = %6513, %6267
  %6273 = phi float [ %6194, %6267 ], [ %6553, %6513 ]
  %6274 = phi float [ %6195, %6267 ], [ %6554, %6513 ]
  %6275 = phi float [ %6196, %6267 ], [ %6555, %6513 ]
  %6276 = phi float [ %6197, %6267 ], [ %6547, %6513 ]
  %6277 = phi float [ %6198, %6267 ], [ %6548, %6513 ]
  %6278 = phi float [ %6199, %6267 ], [ %6549, %6513 ]
  %6279 = icmp eq i32 %6193, %6203
  br i1 %6279, label %6556, label %6192

; <label>:6280                                    ; preds = %6267
  %6281 = fmul fast float %6268, %6226
  %6282 = fmul fast float %6268, %6227
  %6283 = fmul fast float %6268, %6228
  %6284 = fsub fast float %6220, %4578
  %6285 = fcmp fast ogt float %6284, 0.000000e+00
  %6286 = fsub fast float %143, %4578
  %6287 = fcmp fast ogt float %6286, 0.000000e+00
  %6288 = xor i1 %6287, %6285
  %6289 = fsub fast float %4578, %6220
  %6290 = fmul fast float %6289, 2.000000e+00
  %6291 = fadd fast float %6290, %6220
  %6292 = select i1 %6288, float %6220, float %6291
  %6293 = fsub fast float %6292, %143
  %6294 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6293, float %6229, float %6230, float %6293)  ; Dot3(ax,ay,az,bx,by,bz)
  %6295 = call float @dx.op.unary.f32(i32 25, float %6294)  ; Rsqrt(value)
  %6296 = fmul fast float %6295, %6229
  %6297 = fmul fast float %6295, %6230
  %6298 = fmul fast float %6295, %6293
  %6299 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4586)  ; Dot3(ax,ay,az,bx,by,bz)
  %6300 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6296, float %6297, float %6298)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = fdiv fast float 1.000000e+00, %6300
  %6302 = fmul fast float %6301, %6299
  %6303 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6286, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6304 = fcmp fast ogt float %6303, 0.000000e+00
  %6305 = fcmp fast olt float %6303, 0.000000e+00
  %6306 = zext i1 %6304 to i32
  %6307 = zext i1 %6305 to i32
  %6308 = sub nsw i32 %6306, %6307
  %6309 = sitofp i32 %6308 to float
  %6310 = fsub fast float %6292, %4578
  %6311 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6310, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6312 = fcmp fast ogt float %6311, 0.000000e+00
  %6313 = fcmp fast olt float %6311, 0.000000e+00
  %6314 = zext i1 %6312 to i32
  %6315 = zext i1 %6313 to i32
  %6316 = sub nsw i32 %6314, %6315
  %6317 = sitofp i32 %6316 to float
  %6318 = fcmp fast une float %6309, %6317
  br i1 %6318, label %6319, label %6329

; <label>:6319                                    ; preds = %6280
  %6320 = fmul fast float %6302, %6298
  %6321 = fmul fast float %6302, %6297
  %6322 = fmul fast float %6302, %6296
  %6323 = fmul fast float %6322, %6322
  %6324 = fmul fast float %6321, %6321
  %6325 = fadd fast float %6323, %6324
  %6326 = fmul fast float %6320, %6320
  %6327 = fadd fast float %6325, %6326
  %6328 = call float @dx.op.unary.f32(i32 24, float %6327)  ; Sqrt(value)
  br label %6341

; <label>:6329                                    ; preds = %6280
  %6330 = icmp slt i32 %6308, 0
  br i1 %6330, label %6331, label %6341

; <label>:6331                                    ; preds = %6329
  %6332 = fsub fast float %141, %6218
  %6333 = fsub fast float %142, %6219
  %6334 = fsub fast float %143, %6292
  %6335 = fmul fast float %6332, %6332
  %6336 = fmul fast float %6333, %6333
  %6337 = fadd fast float %6335, %6336
  %6338 = fmul fast float %6334, %6334
  %6339 = fadd fast float %6337, %6338
  %6340 = call float @dx.op.unary.f32(i32 24, float %6339)  ; Sqrt(value)
  br label %6341

; <label>:6341                                    ; preds = %6331, %6329, %6319
  %6342 = phi float [ %6328, %6319 ], [ %6340, %6331 ], [ 0.000000e+00, %6329 ]
  %6343 = and i1 %6287, %6285
  %6344 = fsub fast float -0.000000e+00, %6342
  %6345 = select i1 %6343, float -0.000000e+00, float %6344
  %6346 = fmul fast float %4579, 0x3FF7154760000000
  %6347 = fmul fast float %6346, %6345
  %6348 = fmul fast float %4580, 0x3FF7154760000000
  %6349 = fmul fast float %6348, %6345
  %6350 = fmul fast float %4581, 0x3FF7154760000000
  %6351 = fmul fast float %6350, %6345
  %6352 = call float @dx.op.unary.f32(i32 21, float %6347)  ; Exp(value)
  %6353 = call float @dx.op.unary.f32(i32 21, float %6349)  ; Exp(value)
  %6354 = call float @dx.op.unary.f32(i32 21, float %6351)  ; Exp(value)
  %6355 = call float @dx.op.unary.f32(i32 7, float %6352)  ; Saturate(value)
  %6356 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6357 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6358 = fmul fast float %6281, %6355
  %6359 = fmul fast float %6282, %6356
  %6360 = fmul fast float %6283, %6357
  %6361 = fsub fast float %6235, %4778
  %6362 = fsub fast float %6236, %4777
  %6363 = fsub fast float %6237, %4776
  %6364 = call float @dx.op.dot3.f32(i32 55, float %6361, float %6362, float %6363, float %6361, float %6362, float %6363)  ; Dot3(ax,ay,az,bx,by,bz)
  %6365 = call float @dx.op.unary.f32(i32 25, float %6364)  ; Rsqrt(value)
  %6366 = fmul fast float %6365, %6361
  %6367 = fmul fast float %6365, %6362
  %6368 = fmul fast float %6365, %6363
  %6369 = call float @dx.op.dot3.f32(i32 55, float %6235, float %6236, float %6237, float %4785, float %4786, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %6370 = call float @dx.op.dot3.f32(i32 55, float %4775, float %4774, float %4773, float %6366, float %6367, float %6368)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6372 = fmul fast float %6371, %6242
  %6373 = bitcast i32 %4831 to float
  %6374 = fmul fast float %6371, %6371
  %6375 = fmul fast float %6374, %6373
  %6376 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6377 = fmul fast float %6372, %6376
  %6378 = bitcast float %6232 to i32
  %6379 = ashr i32 %6378, 1
  %6380 = sub nsw i32 1597463007, %6379
  %6381 = bitcast i32 %6380 to float
  %6382 = fmul fast float %6381, %6229
  %6383 = fmul fast float %6381, %6230
  %6384 = fmul fast float %6381, %6231
  %6385 = fsub fast float %6382, %4778
  %6386 = fsub fast float %6383, %4777
  %6387 = fsub fast float %6384, %4776
  %6388 = call float @dx.op.dot3.f32(i32 55, float %6385, float %6386, float %6387, float %6385, float %6386, float %6387)  ; Dot3(ax,ay,az,bx,by,bz)
  %6389 = call float @dx.op.unary.f32(i32 25, float %6388)  ; Rsqrt(value)
  %6390 = fmul fast float %6385, %6389
  %6391 = fmul fast float %6386, %6389
  %6392 = fmul fast float %6387, %6389
  %6393 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %6390, float %6391, float %6392)  ; Dot3(ax,ay,az,bx,by,bz)
  %6394 = fmul fast float %6393, %6393
  %6395 = call float @dx.op.unary.f32(i32 6, float %6369)  ; FAbs(value)
  %6396 = fsub fast float 1.000000e+00, %4825
  %6397 = fmul fast float %4807, %4807
  %6398 = fmul fast float %6397, %6396
  %6399 = fadd fast float %6398, %4825
  %6400 = bitcast float %6399 to i32
  %6401 = ashr i32 %6400, 1
  %6402 = add nsw i32 %6401, 532487669
  %6403 = bitcast i32 %6402 to float
  %6404 = fadd fast float %6403, %4807
  %6405 = fmul fast float %4825, %6394
  %6406 = fsub fast float 1.000000e+00, %6394
  %6407 = fadd fast float %6406, %6405
  %6408 = fmul fast float %6395, %6395
  %6409 = fmul fast float %6408, %6396
  %6410 = fadd fast float %6409, %4825
  %6411 = bitcast float %6410 to i32
  %6412 = ashr i32 %6411, 1
  %6413 = add nsw i32 %6412, 532487669
  %6414 = bitcast i32 %6413 to float
  %6415 = fadd fast float %6414, %6395
  %6416 = fmul fast float %6407, %6407
  %6417 = fmul fast float %6416, %6404
  %6418 = fmul fast float %6417, %6415
  %6419 = fdiv fast float 1.000000e+00, %6418
  %6420 = bitcast float %4825 to i32
  %6421 = sitofp i32 %6420 to float
  %6422 = fmul fast float %6421, 0x3FE7F73180000000
  %6423 = fadd fast float %6422, 0x41AFE27C40000000
  %6424 = fptosi float %6423 to i32
  %6425 = bitcast i32 %6424 to float
  %6426 = fmul fast float %6215, 0x3FD80E9D60000000
  %6427 = fmul fast float %6426, %6381
  %6428 = fadd fast float %6425, %6427
  %6429 = bitcast float %6428 to i32
  %6430 = sub nsw i32 2129859010, %6429
  %6431 = bitcast i32 %6430 to float
  %6432 = fmul fast float %4825, %6419
  %6433 = fmul fast float %6432, %6425
  %6434 = fmul fast float %6433, %6431
  %6435 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6436 = fsub fast float 1.000000e+00, %6435
  %6437 = bitcast float %6436 to i32
  %6438 = sitofp i32 %6437 to float
  %6439 = fmul fast float %6438, 5.000000e+00
  %6440 = fadd fast float %6439, 0xC1EFBF8940000000
  %6441 = fptosi float %6440 to i32
  %6442 = bitcast i32 %6441 to float
  %6443 = fsub fast float 1.000000e+00, %4779
  %6444 = fsub fast float 1.000000e+00, %4780
  %6445 = fsub fast float 1.000000e+00, %4805
  %6446 = fmul fast float %6442, %6443
  %6447 = fmul fast float %6442, %6444
  %6448 = fmul fast float %6442, %6445
  %6449 = fadd fast float %6446, %4779
  %6450 = fadd fast float %6447, %4780
  %6451 = fadd fast float %6448, %4805
  br i1 %4943, label %6452, label %6475

; <label>:6452                                    ; preds = %6341
  %6453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %6435, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.ResRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.ResRet.f32 %6453, 2
  %6457 = fadd fast float %6454, -5.000000e-01
  %6458 = fadd fast float %6455, -5.000000e-01
  %6459 = fadd fast float %6456, -5.000000e-01
  %6460 = fmul fast float %4779, 4.000000e+00
  %6461 = fmul fast float %6460, %6443
  %6462 = fmul fast float %6461, %6457
  %6463 = fmul fast float %4780, 4.000000e+00
  %6464 = fmul fast float %6463, %6444
  %6465 = fmul fast float %6464, %6458
  %6466 = fmul fast float %4805, 4.000000e+00
  %6467 = fmul fast float %6466, %6445
  %6468 = fmul fast float %6467, %6459
  %6469 = fadd fast float %6462, %6449
  %6470 = fadd fast float %6465, %6450
  %6471 = fadd fast float %6468, %6451
  %6472 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6473 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6474 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  br label %6475

; <label>:6475                                    ; preds = %6452, %6341
  %6476 = phi float [ %6472, %6452 ], [ %6449, %6341 ]
  %6477 = phi float [ %6473, %6452 ], [ %6450, %6341 ]
  %6478 = phi float [ %6474, %6452 ], [ %6451, %6341 ]
  %6479 = fmul fast float %6369, 9.843750e-01
  %6480 = fadd fast float %6479, 7.812500e-03
  %6481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6480, float %4933, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6482 = extractvalue %dx.types.ResRet.f32 %6481, 2
  %6483 = extractvalue %dx.types.ResRet.f32 %6481, 3
  %6484 = fmul fast float %6482, %4779
  %6485 = fmul fast float %6482, %4780
  %6486 = fmul fast float %6482, %4805
  %6487 = fadd fast float %6484, %6483
  %6488 = fadd fast float %6485, %6483
  %6489 = fadd fast float %6486, %6483
  br i1 %4943, label %6490, label %6513

; <label>:6490                                    ; preds = %6475
  %6491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %6369, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6492 = extractvalue %dx.types.ResRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.ResRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.ResRet.f32 %6491, 2
  %6495 = fadd fast float %6492, -5.000000e-01
  %6496 = fadd fast float %6493, -5.000000e-01
  %6497 = fadd fast float %6494, -5.000000e-01
  %6498 = fmul fast float %4779, 4.000000e+00
  %6499 = fmul fast float %6498, %6443
  %6500 = fmul fast float %6499, %6495
  %6501 = fmul fast float %4780, 4.000000e+00
  %6502 = fmul fast float %6501, %6444
  %6503 = fmul fast float %6502, %6496
  %6504 = fmul fast float %4805, 4.000000e+00
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
  %6523 = fsub fast float 1.000000e+00, %6370
  %6524 = bitcast float %6523 to i32
  %6525 = sitofp i32 %6524 to float
  %6526 = fmul fast float %6525, 5.000000e+00
  %6527 = fadd fast float %6526, 0xC1EFBF8940000000
  %6528 = fptosi float %6527 to i32
  %6529 = bitcast i32 %6528 to float
  %6530 = fmul fast float %6529, %4177
  %6531 = fmul fast float %6519, %6530
  %6532 = fmul fast float %6531, %5869
  %6533 = fmul fast float %6531, %5870
  %6534 = fmul fast float %6531, %5871
  %6535 = fadd fast float %6532, %6520
  %6536 = fadd fast float %6533, %6521
  %6537 = fadd fast float %6534, %6522
  %6538 = fmul fast float %6358, %4173
  %6539 = fmul fast float %6538, %6377
  %6540 = fmul fast float %6539, %6519
  %6541 = fmul fast float %6359, %4173
  %6542 = fmul fast float %6541, %6377
  %6543 = fmul fast float %6542, %6519
  %6544 = fmul fast float %6360, %4173
  %6545 = fmul fast float %6544, %6377
  %6546 = fmul fast float %6545, %6519
  %6547 = fadd fast float %6540, %6197
  %6548 = fadd fast float %6543, %6198
  %6549 = fadd fast float %6546, %6199
  %6550 = fmul fast float %6539, %6535
  %6551 = fmul fast float %6542, %6536
  %6552 = fmul fast float %6545, %6537
  %6553 = fadd fast float %6550, %6194
  %6554 = fadd fast float %6551, %6195
  %6555 = fadd fast float %6552, %6196
  br label %6272

; <label>:6556                                    ; preds = %6272
  br label %6557

; <label>:6557                                    ; preds = %6556, %6160
  %6558 = phi float [ %6162, %6160 ], [ %6273, %6556 ]
  %6559 = phi float [ %6163, %6160 ], [ %6274, %6556 ]
  %6560 = phi float [ %6164, %6160 ], [ %6275, %6556 ]
  %6561 = phi float [ %6165, %6160 ], [ %6276, %6556 ]
  %6562 = phi float [ %6166, %6160 ], [ %6277, %6556 ]
  %6563 = phi float [ %6167, %6160 ], [ %6278, %6556 ]
  %6564 = add i32 %6161, 1
  %6565 = icmp ugt i32 %6564, %6157
  br i1 %6565, label %6566, label %6160

; <label>:6566                                    ; preds = %6557
  br label %6567

; <label>:6567                                    ; preds = %6566, %6136, %6126
  %6568 = phi float [ %6127, %6126 ], [ %6127, %6136 ], [ %6558, %6566 ]
  %6569 = phi float [ %6128, %6126 ], [ %6128, %6136 ], [ %6559, %6566 ]
  %6570 = phi float [ %6129, %6126 ], [ %6129, %6136 ], [ %6560, %6566 ]
  %6571 = phi float [ %6130, %6126 ], [ %6130, %6136 ], [ %6561, %6566 ]
  %6572 = phi float [ %6131, %6126 ], [ %6131, %6136 ], [ %6562, %6566 ]
  %6573 = phi float [ %6132, %6126 ], [ %6132, %6136 ], [ %6563, %6566 ]
  %6574 = call float @dx.op.unary.f32(i32 24, float %4782)  ; Sqrt(value)
  %6575 = call float @dx.op.unary.f32(i32 24, float %4783)  ; Sqrt(value)
  %6576 = call float @dx.op.unary.f32(i32 24, float %4784)  ; Sqrt(value)
  %6577 = fmul fast float %6574, %6571
  %6578 = fmul fast float %6575, %6572
  %6579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6580 = extractvalue %dx.types.CBufRet.f32 %6579, 0
  br i1 %183, label %6581, label %6613

; <label>:6581                                    ; preds = %6567
  %6582 = fadd fast float %6573, %4179
  %6583 = fmul fast float %6582, %4181
  %6584 = fsub fast float 1.000000e+00, %4181
  %6585 = call float @dx.op.unary.f32(i32 7, float %6584)  ; Saturate(value)
  %6586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6587 = extractvalue %dx.types.CBufRet.f32 %6586, 3
  %6588 = fmul fast float %6587, %6585
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 0
  %6591 = fmul fast float %6590, %5875
  %6592 = extractvalue %dx.types.CBufRet.f32 %6589, 2
  %6593 = fmul fast float %6592, %4803
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
  %6604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6605 = extractvalue %dx.types.CBufRet.f32 %6604, 0
  %6606 = fsub fast float %6603, %6605
  %6607 = fmul fast float %6606, 1.000000e+01
  %6608 = call float @dx.op.unary.f32(i32 7, float %6607)  ; Saturate(value)
  %6609 = fadd fast float %4180, -1.000000e+00
  %6610 = fmul fast float %6608, %6609
  %6611 = fadd fast float %6610, 1.000000e+00
  %6612 = fmul fast float %6611, %6603
  br label %6629

; <label>:6613                                    ; preds = %6567
  %6614 = fmul fast float %6576, %6573
  %6615 = fmul fast float %6580, %6577
  %6616 = fmul fast float %6580, %6578
  %6617 = fmul fast float %6614, %6580
  %6618 = add i32 %43, 356
  %6619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6618, i32 undef)  ; BufferLoad(srv,index,wot)
  %6620 = extractvalue %dx.types.ResRet.i32 %6619, 0
  %6621 = and i32 %6620, 32
  %6622 = icmp eq i32 %6621, 0
  br i1 %6622, label %6629, label %6623

; <label>:6623                                    ; preds = %6613
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = fmul fast float %6625, 0x3FE99999A0000000
  %6627 = fadd fast float %6625, %6615
  %6628 = fadd fast float %6626, %6617
  br label %6629

; <label>:6629                                    ; preds = %6623, %6613, %6581
  %6630 = phi float [ %6595, %6581 ], [ %6627, %6623 ], [ %6615, %6613 ]
  %6631 = phi float [ %6612, %6581 ], [ %6616, %6623 ], [ %6616, %6613 ]
  %6632 = phi float [ %6611, %6581 ], [ %6628, %6623 ], [ %6617, %6613 ]
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = fmul fast float %6634, %6569
  %6636 = fmul fast float %6634, %6570
  %6637 = fadd fast float %6569, %6568
  %6638 = select i1 %183, float %6637, float %6568
  %6639 = fmul float %6638, %6634
  %6640 = select i1 %183, float 0.000000e+00, float %6635
  %6641 = select i1 %183, float 0.000000e+00, float %6636
  %6642 = fmul fast float %6630, %6574
  %6643 = fmul fast float %6631, %6575
  %6644 = fmul fast float %6632, %6576
  %6645 = fadd fast float %6639, %6642
  %6646 = fadd fast float %6640, %6643
  %6647 = fadd fast float %6641, %6644
  %6648 = select i1 %183, float %6631, float %6646
  %6649 = select i1 %183, float %6632, float %6647
  %6650 = call float @dx.op.binary.f32(i32 36, float %6645, float 3.225500e+04)  ; FMin(a,b)
  %6651 = call float @dx.op.binary.f32(i32 36, float %6648, float 3.225500e+04)  ; FMin(a,b)
  %6652 = call float @dx.op.binary.f32(i32 36, float %6649, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6650)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6651)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6652)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

