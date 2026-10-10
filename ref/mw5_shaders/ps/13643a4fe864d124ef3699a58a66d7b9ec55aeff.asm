;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; COMP_FACTOR              0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; OBJECT_POSITION          0   xyzw        9     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0ee2d45486bd327e8513b1bd1bea7f9a
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
; COMP_FACTOR              0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; OBJECT_POSITION          0                 linear       
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 39, 40, 42, 43 }
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
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %77 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %78 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %79 = extractvalue %dx.types.CBufRet.f32 %78, 0
  %80 = fmul fast float %79, %73
  %81 = fmul fast float %79, %74
  %82 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = bitcast float %82 to i32
  %84 = ashr i32 %83, 1
  %85 = sub nsw i32 1597250115, %84
  %86 = bitcast i32 %85 to float
  %87 = fmul fast float %86, %65
  %88 = fmul fast float %86, %66
  %89 = fmul fast float %86, %67
  %90 = fmul fast float %66, %63
  %91 = fmul fast float %67, %62
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %67, %61
  %94 = fmul fast float %65, %63
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %65, %62
  %97 = fmul fast float %66, %61
  %98 = fsub fast float %96, %97
  %99 = fmul fast float %92, %64
  %100 = fmul fast float %95, %64
  %101 = fmul fast float %98, %64
  %102 = call float @dx.op.dot3.f32(i32 55, float %54, float %55, float %56, float %54, float %55, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %103 = bitcast float %102 to i32
  %104 = ashr i32 %103, 1
  %105 = sub nsw i32 1597250115, %104
  %106 = bitcast i32 %105 to float
  %107 = fmul fast float %106, %54
  %108 = fmul fast float %106, %55
  %109 = fmul fast float %106, %56
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 3
  %113 = fmul fast float %80, 2.000000e+00
  %114 = fmul fast float %113, %111
  %115 = fmul fast float %81, 2.000000e+00
  %116 = fmul fast float %115, %112
  %117 = fsub fast float 1.000000e+00, %114
  %118 = fsub fast float 1.000000e+00, %116
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fmul fast float %117, %120
  %124 = fmul fast float %117, %121
  %125 = fmul fast float %117, %122
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 0
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 1
  %129 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %130 = fmul fast float %118, %127
  %131 = fmul fast float %118, %128
  %132 = fmul fast float %118, %129
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %136 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %137 = fadd fast float %130, %134
  %138 = fadd fast float %137, %123
  %139 = fadd fast float %131, %135
  %140 = fadd fast float %139, %124
  %141 = fadd fast float %132, %136
  %142 = fadd fast float %141, %125
  %143 = fmul fast float %138, %75
  %144 = fmul fast float %140, %75
  %145 = fmul fast float %142, %75
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %148 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %149 = fmul fast float %147, %80
  %150 = fmul fast float %148, %81
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = and i32 %152, 114688
  %154 = icmp ne i32 %153, 0
  %155 = select i1 %154, float %149, float 0.000000e+00
  %156 = select i1 %154, float %150, float 0.000000e+00
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %155, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = fmul fast float %158, 2.550000e+02
  %160 = fptoui float %159 to i32
  %161 = select i1 %154, i32 %160, i32 0
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 3
  %165 = and i32 %164, 3
  %166 = icmp ne i32 %165, 0
  %167 = and i32 %164, 4
  %168 = icmp ne i32 %167, 0
  %169 = and i1 %166, %168
  br i1 %169, label %170, label %181

; <label>:170                                     ; preds = %0
  %171 = extractvalue %dx.types.CBufRet.f32 %162, 3
  %172 = fmul fast float %171, %81
  %173 = extractvalue %dx.types.CBufRet.f32 %162, 2
  %174 = fmul fast float %173, %80
  %175 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %174, float %172, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = fsub fast float 1.000000e+00, %176
  %178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %179 = extractvalue %dx.types.CBufRet.f32 %178, 0
  %180 = fcmp fast olt float %177, %179
  br label %184

; <label>:181                                     ; preds = %0
  %182 = icmp eq i32 %167, 0
  %183 = and i1 %166, %182
  br label %184

; <label>:184                                     ; preds = %181, %170
  %185 = phi i1 [ %180, %170 ], [ %183, %181 ]
  %186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.f32 %186, 2
  %188 = fmul fast float %187, 0x3FE3C6EF40000000
  %189 = frem fast float %80, 2.560000e+02
  %190 = frem fast float %81, 2.560000e+02
  %191 = fptoui float %189 to i32
  %192 = fptoui float %190 to i32
  %193 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %191, i32 %192, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = fadd fast float %194, %188
  %197 = fadd fast float %195, %188
  %198 = call float @dx.op.unary.f32(i32 22, float %196)  ; Frc(value)
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = add i32 %43, 156
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = shl i32 %202, 4
  %204 = and i32 %203, 32752
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %202, 7
  %207 = and i32 %206, 32752
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %202, 22
  %210 = shl nuw nsw i32 %209, 5
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = add i32 %43, 216
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = lshr i32 %214, 8
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %214, 16
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = add i32 %43, 36
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = add i32 %43, 288
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = fmul fast float %237, 0x3F50624DE0000000
  %241 = fmul fast float %239, 0x3F50624DE0000000
  %242 = add i32 %43, 172
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = shl i32 %244, 4
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %244, 7
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %244, 22
  %252 = shl nuw nsw i32 %251, 5
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %43, 232
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %256, 8
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %256, 16
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = add i32 %43, 52
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = add i32 %43, 304
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = fmul fast float %279, 0x3F50624DE0000000
  %283 = fmul fast float %281, 0x3F50624DE0000000
  %284 = add i32 %43, 188
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %286, 4
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %286, 7
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %286, 22
  %294 = shl nuw nsw i32 %293, 5
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %43, 248
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %298, 8
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %298, 16
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = add i32 %43, 68
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %43, 320
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = fmul fast float %321, 0x3F50624DE0000000
  %325 = fmul fast float %323, 0x3F50624DE0000000
  %326 = add i32 %43, 204
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = shl i32 %328, 4
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %328, 7
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 22
  %336 = shl nuw nsw i32 %335, 5
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %43, 264
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %340, 8
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %340, 16
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = add i32 %43, 84
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %43, 336
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = fmul fast float %363, 0x3F50624DE0000000
  %367 = fmul fast float %365, 0x3F50624DE0000000
  %368 = add i32 %43, 348
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 32
  %372 = icmp eq i32 %371, 0
  %373 = and i32 %370, 64
  %374 = icmp eq i32 %373, 0
  %375 = and i32 %370, 128
  %376 = icmp eq i32 %375, 0
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 2
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %394, label %381

; <label>:381                                     ; preds = %184
  %382 = add i32 %43, 504
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = add i32 %384, 0
  %386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %386, %dx.types.Handle %77, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = extractvalue %dx.types.ResRet.f32 %387, 2
  %391 = fmul fast float %388, %70
  %392 = fmul fast float %389, %71
  %393 = fmul fast float %390, %72
  br label %394

; <label>:394                                     ; preds = %381, %184
  %395 = phi float [ %72, %184 ], [ %393, %381 ]
  %396 = phi float [ %71, %184 ], [ %392, %381 ]
  %397 = phi float [ %70, %184 ], [ %391, %381 ]
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 2
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %421, label %402

; <label>:402                                     ; preds = %394
  %403 = add i32 %43, 44
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 1
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %397, float 1.000000e+00
  %409 = add i32 %43, 60
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 1
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %396, float 1.000000e+00
  %415 = add i32 %43, 76
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %419, float %395, float 1.000000e+00
  br label %421

; <label>:421                                     ; preds = %402, %394
  %422 = phi float [ %395, %394 ], [ %420, %402 ]
  %423 = phi float [ %396, %394 ], [ %414, %402 ]
  %424 = phi float [ %397, %394 ], [ %408, %402 ]
  %425 = lshr i32 %399, 20
  %426 = and i32 %425, 3
  %427 = add nuw nsw i32 %426, 1
  %428 = add i32 %43, 24
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = add i32 %43, 28
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = or i32 %433, %430
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %894, label %436

; <label>:436                                     ; preds = %421
  %437 = and i32 %430, 262144
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %47, float 1.000000e+00
  %440 = select i1 %438, float %48, float 0.000000e+00
  %441 = select i1 %438, float %49, float 0.000000e+00
  %442 = select i1 %438, float %50, float 1.000000e+00
  %443 = select i1 %438, float %51, float %68
  %444 = select i1 %438, float %52, float %69
  %445 = add i32 %43, 284
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = lshr i32 %447, 16
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = fmul fast float %449, 0x3F50624DE0000000
  %451 = add i32 %43, 88
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = lshr i32 %453, 16
  %455 = and i32 %454, 255
  %456 = lshr i32 %453, 24
  %457 = add i32 %43, 292
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 65535
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %459, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = add i32 %43, 32
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = lshr i32 %466, 22
  %468 = shl nuw nsw i32 %467, 5
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = shl i32 %466, 4
  %471 = and i32 %470, 32752
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %466, 7
  %474 = and i32 %473, 32752
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %478 = fmul fast float %477, 1.000000e+03
  %479 = fmul fast float %240, %478
  %480 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %481 = fadd fast float %480, %230
  %482 = fmul fast float %241, %478
  %483 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %484 = fadd fast float %483, %232
  %485 = fmul fast float %450, %478
  %486 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %487 = fmul fast float %486, 0x401921FB60000000
  %488 = fadd fast float %487, %469
  %489 = call float @dx.op.unary.f32(i32 13, float %488)  ; Sin(value)
  %490 = call float @dx.op.unary.f32(i32 12, float %488)  ; Cos(value)
  %491 = fsub fast float -0.000000e+00, %489
  %492 = fadd fast float %443, -5.000000e-01
  %493 = fadd fast float %444, -5.000000e-01
  %494 = fmul fast float %461, %492
  %495 = fmul fast float %463, %493
  %496 = fadd fast float %494, 5.000000e-01
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fmul fast float %472, %496
  %499 = fmul fast float %475, %497
  %500 = fmul fast float %490, %498
  %501 = call float @dx.op.tertiary.f32(i32 46, float %491, float %499, float %500)  ; FMad(a,b,c)
  %502 = fmul fast float %489, %498
  %503 = call float @dx.op.tertiary.f32(i32 46, float %490, float %499, float %502)  ; FMad(a,b,c)
  %504 = fadd fast float %481, %501
  %505 = fadd fast float %484, %503
  %506 = icmp ugt i32 %455, 1
  %507 = icmp ugt i32 %453, 33554431
  %508 = or i1 %507, %506
  br i1 %508, label %509, label %534

; <label>:509                                     ; preds = %436
  %510 = add i32 %43, 228
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = fmul fast float %477, %514
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = mul nuw nsw i32 %455, %456
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %516, %518
  %520 = call float @dx.op.unary.f32(i32 27, float %519)  ; Round_ni(value)
  %521 = fptoui float %520 to i32
  %522 = urem i32 %521, %455
  %523 = udiv i32 %521, %456
  %524 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %525 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %526 = uitofp i32 %522 to float
  %527 = uitofp i32 %523 to float
  %528 = fadd fast float %524, %526
  %529 = fadd fast float %525, %527
  %530 = uitofp i32 %455 to float
  %531 = uitofp i32 %456 to float
  %532 = fdiv fast float %528, %530
  %533 = fdiv fast float %529, %531
  br label %534

; <label>:534                                     ; preds = %509, %436
  %535 = phi float [ %532, %509 ], [ %504, %436 ]
  %536 = phi float [ %533, %509 ], [ %505, %436 ]
  %537 = and i32 %430, 16
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %735, label %539

; <label>:539                                     ; preds = %534
  %540 = add i32 %43, 392
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %542, 0
  %544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %544, %dx.types.Handle %76, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = extractvalue %dx.types.ResRet.f32 %545, 3
  %550 = and i32 %453, 255
  %551 = uitofp i32 %550 to float
  %552 = lshr i32 %453, 8
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %549, %551
  %556 = fadd fast float %555, %554
  %557 = fmul fast float %556, 0x3F70101000000000
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 512
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %570, label %562

; <label>:562                                     ; preds = %539
  %563 = add i32 %43, 472
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = add i32 %565, 0
  %567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %567, %dx.types.Handle %77, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  br label %570

; <label>:570                                     ; preds = %562, %539
  %571 = phi float [ %569, %562 ], [ 1.000000e+00, %539 ]
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 33554432
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %682, label %576

; <label>:576                                     ; preds = %570
  %577 = add i32 %43, 224
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = add i32 %43, 228
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %605 = add i32 %43, 220
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = lshr i32 %607, 24
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = and i32 %607, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %607, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = lshr i32 %607, 16
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = bitcast float %546 to i32
  %623 = ashr i32 %622, 1
  %624 = sub nsw i32 1597463174, %623
  %625 = bitcast i32 %624 to float
  %626 = fmul fast float %546, 5.000000e-01
  %627 = fmul fast float %625, %625
  %628 = fmul fast float %627, %626
  %629 = fsub fast float 1.500000e+00, %628
  %630 = fmul fast float %625, %546
  %631 = fmul fast float %630, %629
  %632 = bitcast float %547 to i32
  %633 = ashr i32 %632, 1
  %634 = sub nsw i32 1597463174, %633
  %635 = bitcast i32 %634 to float
  %636 = fmul fast float %547, 5.000000e-01
  %637 = fmul fast float %635, %635
  %638 = fmul fast float %637, %636
  %639 = fsub fast float 1.500000e+00, %638
  %640 = fmul fast float %635, %547
  %641 = fmul fast float %640, %639
  %642 = bitcast float %548 to i32
  %643 = ashr i32 %642, 1
  %644 = sub nsw i32 1597463174, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %548, 5.000000e-01
  %647 = fmul fast float %645, %645
  %648 = fmul fast float %647, %646
  %649 = fsub fast float 1.500000e+00, %648
  %650 = fmul fast float %645, %548
  %651 = fmul fast float %650, %649
  %652 = fsub fast float %631, %613
  %653 = fsub fast float %641, %617
  %654 = fsub fast float %651, %621
  %655 = fmul fast float %652, %581
  %656 = fmul fast float %653, %583
  %657 = fmul fast float %654, %588
  %658 = fadd fast float %655, %596
  %659 = fadd fast float %656, %600
  %660 = fadd fast float %657, %604
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = fmul fast float %661, %661
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fsub fast float %664, %546
  %668 = fsub fast float %665, %547
  %669 = fsub fast float %666, %548
  %670 = fmul fast float %667, %571
  %671 = fmul fast float %668, %571
  %672 = fmul fast float %669, %571
  %673 = fadd fast float %670, %546
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %593, %557
  %677 = fsub fast float %676, %610
  %678 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %679 = fsub fast float %678, %557
  %680 = fmul fast float %679, %571
  %681 = fadd fast float %680, %557
  br label %735

; <label>:682                                     ; preds = %570
  %683 = and i32 %573, 134217728
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %719, label %685

; <label>:685                                     ; preds = %682
  %686 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %687 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %689 = fadd fast float %686, -5.000000e-01
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fmul fast float %689, %571
  %693 = fmul fast float %690, %571
  %694 = fmul fast float %691, %571
  %695 = fadd fast float %692, 5.000000e-01
  %696 = fadd fast float %693, 5.000000e-01
  %697 = fadd fast float %694, 5.000000e-01
  %698 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = fmul fast float %695, 2.000000e+00
  %702 = fsub fast float 1.000000e+00, %701
  %703 = fmul fast float %702, %698
  %704 = fadd fast float %703, %701
  %705 = fmul fast float %704, %698
  %706 = fmul fast float %696, 2.000000e+00
  %707 = fsub fast float 1.000000e+00, %706
  %708 = fmul fast float %707, %699
  %709 = fadd fast float %708, %706
  %710 = fmul fast float %709, %699
  %711 = fmul fast float %697, 2.000000e+00
  %712 = fsub fast float 1.000000e+00, %711
  %713 = fmul fast float %712, %700
  %714 = fadd fast float %713, %711
  %715 = fmul fast float %714, %700
  %716 = fmul fast float %705, %705
  %717 = fmul fast float %710, %710
  %718 = fmul fast float %715, %715
  br label %735

; <label>:719                                     ; preds = %682
  %720 = fmul fast float %217, %217
  %721 = fmul fast float %221, %221
  %722 = fmul fast float %225, %225
  %723 = fadd fast float %720, -1.000000e+00
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fmul fast float %571, %723
  %727 = fmul fast float %571, %724
  %728 = fmul fast float %571, %725
  %729 = fadd fast float %726, 1.000000e+00
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fmul fast float %729, %546
  %733 = fmul fast float %730, %547
  %734 = fmul fast float %731, %548
  br label %735

; <label>:735                                     ; preds = %719, %685, %576, %534
  %736 = phi float [ %681, %576 ], [ %557, %685 ], [ %557, %719 ], [ 0x3FA23C0BE0000000, %534 ]
  %737 = phi float [ %673, %576 ], [ %716, %685 ], [ %732, %719 ], [ 1.000000e+00, %534 ]
  %738 = phi float [ %674, %576 ], [ %717, %685 ], [ %733, %719 ], [ 1.000000e+00, %534 ]
  %739 = phi float [ %675, %576 ], [ %718, %685 ], [ %734, %719 ], [ 1.000000e+00, %534 ]
  %740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.i32 %740, 1
  %742 = and i32 %741, 1
  %743 = icmp ne i32 %742, 0
  %744 = add i32 %43, 356
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 32
  %748 = icmp ne i32 %747, 0
  %749 = and i1 %743, %748
  %750 = select i1 %749, float 1.000000e+00, float %737
  %751 = select i1 %749, float 0x3FD3333340000000, float %738
  %752 = select i1 %749, float 0x3FD3333340000000, float %739
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 32
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %829, label %757

; <label>:757                                     ; preds = %735
  %758 = add i32 %43, 92
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = add i32 %43, 408
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %763, 0
  %765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %765, %dx.types.Handle %76, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = extractvalue %dx.types.ResRet.f32 %766, 3
  %771 = and i32 %760, 255
  %772 = uitofp i32 %771 to float
  %773 = lshr i32 %760, 8
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = lshr i32 %760, 16
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101000000000
  %780 = fmul fast float %767, %772
  %781 = fadd fast float %780, %775
  %782 = fmul fast float %781, 0x3F70101000000000
  %783 = fadd fast float %768, -5.000000e-01
  %784 = fadd fast float %770, -5.000000e-01
  %785 = fmul fast float %783, %779
  %786 = fmul fast float %784, %779
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fmul fast float %787, 2.000000e+00
  %790 = fadd fast float %789, -1.000000e+00
  %791 = fmul fast float %788, 2.000000e+00
  %792 = fadd fast float %791, -1.000000e+00
  %793 = fadd fast float %790, %792
  %794 = fmul fast float %793, 5.000000e-01
  %795 = fsub fast float %790, %792
  %796 = fmul fast float %795, 5.000000e-01
  %797 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %798 = fsub fast float 1.000000e+00, %797
  %799 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %800 = fsub fast float %798, %799
  %801 = call float @dx.op.dot3.f32(i32 55, float %794, float %796, float %800, float %794, float %796, float %800)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = call float @dx.op.unary.f32(i32 25, float %801)  ; Rsqrt(value)
  %803 = fmul fast float %794, %802
  %804 = fmul fast float %796, %802
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 67108864
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %825, label %809

; <label>:809                                     ; preds = %757
  %810 = add i32 %43, 280
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %812, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = fsub fast float %782, %820
  %822 = fmul fast float %821, %814
  %823 = fadd fast float %822, %818
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  br label %825

; <label>:825                                     ; preds = %809, %757
  %826 = phi float [ %824, %809 ], [ %782, %757 ]
  %827 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %439, float %440)  ; Dot2(ax,ay,bx,by)
  %828 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %441, float %442)  ; Dot2(ax,ay,bx,by)
  br label %829

; <label>:829                                     ; preds = %825, %735
  %830 = phi float [ %826, %825 ], [ 0x3FD6666660000000, %735 ]
  %831 = phi float [ %827, %825 ], [ 0.000000e+00, %735 ]
  %832 = phi float [ %828, %825 ], [ 0.000000e+00, %735 ]
  %833 = phi float [ %769, %825 ], [ 1.000000e+00, %735 ]
  %834 = add i32 %43, 160
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 22
  %838 = shl nuw nsw i32 %837, 5
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 64
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %877, label %844

; <label>:844                                     ; preds = %829
  %845 = add i32 %43, 424
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = add i32 %847, 0
  %849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 131072
  %853 = icmp eq i32 %852, 0
  %854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %849, %dx.types.Handle %76, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = fmul fast float %855, %205
  %859 = fmul fast float %856, %208
  %860 = fmul fast float %857, %211
  br i1 %853, label %867, label %861

; <label>:861                                     ; preds = %844
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = fmul fast float %863, %858
  %865 = fmul fast float %863, %859
  %866 = fmul fast float %863, %860
  br label %867

; <label>:867                                     ; preds = %861, %844
  %868 = phi float [ %864, %861 ], [ %858, %844 ]
  %869 = phi float [ %865, %861 ], [ %859, %844 ]
  %870 = phi float [ %866, %861 ], [ %860, %844 ]
  %871 = fmul fast float %868, %839
  %872 = select i1 %185, float %871, float %868
  %873 = call float @dx.op.dot3.f32(i32 55, float %872, float %869, float %870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %874 = select i1 %185, float 0.000000e+00, float %868
  %875 = select i1 %185, float %873, float %869
  %876 = select i1 %185, float 0.000000e+00, float %870
  br label %877

; <label>:877                                     ; preds = %867, %829
  %878 = phi float [ %874, %867 ], [ 0.000000e+00, %829 ]
  %879 = phi float [ %875, %867 ], [ 0.000000e+00, %829 ]
  %880 = phi float [ %876, %867 ], [ 0.000000e+00, %829 ]
  %881 = add i32 %43, 96
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = and i32 %883, 255
  %885 = uitofp i32 %884 to float
  %886 = lshr i32 %883, 8
  %887 = and i32 %886, 255
  %888 = uitofp i32 %887 to float
  %889 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %890 = fmul fast float %888, %889
  %891 = fadd fast float %890, %885
  %892 = fmul fast float %891, 0x3F70101020000000
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  br label %894

; <label>:894                                     ; preds = %877, %421
  %895 = phi float [ 0.000000e+00, %421 ], [ %831, %877 ]
  %896 = phi float [ 0.000000e+00, %421 ], [ %832, %877 ]
  %897 = phi float [ 0.000000e+00, %421 ], [ %750, %877 ]
  %898 = phi float [ 0.000000e+00, %421 ], [ %751, %877 ]
  %899 = phi float [ 0.000000e+00, %421 ], [ %752, %877 ]
  %900 = phi float [ 0.000000e+00, %421 ], [ %878, %877 ]
  %901 = phi float [ 0.000000e+00, %421 ], [ %879, %877 ]
  %902 = phi float [ 0.000000e+00, %421 ], [ %880, %877 ]
  %903 = phi float [ 0.000000e+00, %421 ], [ %736, %877 ]
  %904 = phi float [ 0.000000e+00, %421 ], [ 1.000000e+00, %877 ]
  %905 = phi float [ 0.000000e+00, %421 ], [ %830, %877 ]
  %906 = phi float [ 0.000000e+00, %421 ], [ %833, %877 ]
  %907 = phi float [ 0.000000e+00, %421 ], [ %893, %877 ]
  br i1 %372, label %1749, label %908

; <label>:908                                     ; preds = %894
  %909 = icmp ult i32 %427, 2
  %910 = add i32 %43, 40
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = add i32 %43, 44
  %914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %913, i32 undef)  ; BufferLoad(srv,index,wot)
  %915 = extractvalue %dx.types.ResRet.i32 %914, 0
  %916 = or i32 %915, %912
  %917 = icmp eq i32 %916, 0
  br i1 %917, label %1749, label %918

; <label>:918                                     ; preds = %908
  %919 = and i32 %912, 262144
  %920 = icmp ne i32 %919, 0
  %921 = select i1 %920, float %47, float 1.000000e+00
  %922 = select i1 %920, float %48, float 0.000000e+00
  %923 = select i1 %920, float %49, float 0.000000e+00
  %924 = select i1 %920, float %50, float 1.000000e+00
  %925 = select i1 %920, float %51, float %68
  %926 = select i1 %920, float %52, float %69
  %927 = add i32 %43, 300
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = lshr i32 %929, 16
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = fmul fast float %931, 0x3F50624DE0000000
  %933 = add i32 %43, 104
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = lshr i32 %935, 16
  %937 = and i32 %936, 255
  %938 = lshr i32 %935, 24
  %939 = add i32 %43, 308
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = and i32 %941, 65535
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = lshr i32 %941, 16
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = add i32 %43, 48
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = lshr i32 %948, 22
  %950 = shl nuw nsw i32 %949, 5
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = shl i32 %948, 4
  %953 = and i32 %952, 32752
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = lshr i32 %948, 7
  %956 = and i32 %955, 32752
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.f32 %958, 3
  %960 = fmul fast float %959, 1.000000e+03
  %961 = fmul fast float %282, %960
  %962 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %963 = fadd fast float %962, %272
  %964 = fmul fast float %283, %960
  %965 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %966 = fadd fast float %965, %274
  %967 = fmul fast float %932, %960
  %968 = call float @dx.op.unary.f32(i32 22, float %967)  ; Frc(value)
  %969 = fmul fast float %968, 0x401921FB60000000
  %970 = fadd fast float %969, %951
  %971 = call float @dx.op.unary.f32(i32 13, float %970)  ; Sin(value)
  %972 = call float @dx.op.unary.f32(i32 12, float %970)  ; Cos(value)
  %973 = fsub fast float -0.000000e+00, %971
  %974 = fadd fast float %925, -5.000000e-01
  %975 = fadd fast float %926, -5.000000e-01
  %976 = fmul fast float %943, %974
  %977 = fmul fast float %945, %975
  %978 = fadd fast float %976, 5.000000e-01
  %979 = fadd fast float %977, 5.000000e-01
  %980 = fmul fast float %954, %978
  %981 = fmul fast float %957, %979
  %982 = fmul fast float %972, %980
  %983 = call float @dx.op.tertiary.f32(i32 46, float %973, float %981, float %982)  ; FMad(a,b,c)
  %984 = fmul fast float %971, %980
  %985 = call float @dx.op.tertiary.f32(i32 46, float %972, float %981, float %984)  ; FMad(a,b,c)
  %986 = fadd fast float %963, %983
  %987 = fadd fast float %966, %985
  %988 = icmp ugt i32 %937, 1
  %989 = icmp ugt i32 %935, 33554431
  %990 = or i1 %989, %988
  br i1 %990, label %991, label %1016

; <label>:991                                     ; preds = %918
  %992 = add i32 %43, 244
  %993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.i32 %993, 0
  %995 = lshr i32 %994, 16
  %996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %995)  ; LegacyF16ToF32(value)
  %997 = fmul fast float %959, %996
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = mul nuw nsw i32 %937, %938
  %1000 = uitofp i32 %999 to float
  %1001 = fmul fast float %998, %1000
  %1002 = call float @dx.op.unary.f32(i32 27, float %1001)  ; Round_ni(value)
  %1003 = fptoui float %1002 to i32
  %1004 = urem i32 %1003, %937
  %1005 = udiv i32 %1003, %938
  %1006 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %1007 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %1008 = uitofp i32 %1004 to float
  %1009 = uitofp i32 %1005 to float
  %1010 = fadd fast float %1006, %1008
  %1011 = fadd fast float %1007, %1009
  %1012 = uitofp i32 %937 to float
  %1013 = uitofp i32 %938 to float
  %1014 = fdiv fast float %1010, %1012
  %1015 = fdiv fast float %1011, %1013
  br label %1016

; <label>:1016                                    ; preds = %991, %918
  %1017 = phi float [ %1014, %991 ], [ %986, %918 ]
  %1018 = phi float [ %1015, %991 ], [ %987, %918 ]
  %1019 = and i32 %912, 16777216
  %1020 = icmp eq i32 %1019, 0
  br i1 %1020, label %1130, label %1021

; <label>:1021                                    ; preds = %1016
  %1022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1023 = extractvalue %dx.types.CBufRet.f32 %1022, 0
  %1024 = extractvalue %dx.types.CBufRet.f32 %1022, 1
  %1025 = extractvalue %dx.types.CBufRet.f32 %1022, 2
  %1026 = fadd fast float %1023, %143
  %1027 = fadd fast float %1024, %144
  %1028 = fadd fast float %1025, %145
  %1029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1030 = extractvalue %dx.types.CBufRet.f32 %1029, 0
  %1031 = call float @dx.op.unary.f32(i32 7, float %1030)  ; Saturate(value)
  %1032 = icmp eq i32 %44, 65535
  br i1 %1032, label %1127, label %1033

; <label>:1033                                    ; preds = %1021
  %1034 = lshr i32 %44, 1
  %1035 = shl i32 %1034, 2
  %1036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1035, i32 undef)  ; BufferLoad(srv,index,wot)
  %1037 = extractvalue %dx.types.ResRet.i32 %1036, 0
  %1038 = and i32 %44, 1
  %1039 = icmp ne i32 %1038, 0
  %1040 = lshr i32 %1037, 16
  %1041 = and i32 %1037, 65535
  %1042 = select i1 %1039, i32 %1040, i32 %1041
  %1043 = icmp eq i32 %1042, 65535
  br i1 %1043, label %1123, label %1044

; <label>:1044                                    ; preds = %1033
  %1045 = mul nuw nsw i32 %1042, 40
  %1046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1045, i32 undef)  ; BufferLoad(srv,index,wot)
  %1047 = extractvalue %dx.types.ResRet.f32 %1046, 0
  %1048 = extractvalue %dx.types.ResRet.f32 %1046, 1
  %1049 = extractvalue %dx.types.ResRet.f32 %1046, 2
  %1050 = add nuw nsw i32 %1045, 12
  %1051 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = add nuw nsw i32 %1045, 24
  %1056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1055, i32 undef)  ; BufferLoad(srv,index,wot)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = add nuw nsw i32 %1045, 36
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = fsub fast float %1026, %1047
  %1064 = fsub fast float %1027, %1048
  %1065 = fsub fast float %1028, %1049
  %1066 = fmul fast float %1062, %1063
  %1067 = fmul fast float %1062, %1064
  %1068 = fmul fast float %1062, %1065
  %1069 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = fadd fast float %1069, 5.000000e-01
  %1073 = fadd fast float %1070, 5.000000e-01
  %1074 = fadd fast float %1071, 5.000000e-01
  %1075 = fmul fast float %1072, %1052
  %1076 = fmul fast float %1073, %1053
  %1077 = fmul fast float %1074, %1054
  %1078 = shl i32 %44, 2
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = add i32 %1080, 0
  %1082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1083 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1084 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1085 = call float @dx.op.unary.f32(i32 22, float %1077)  ; Frc(value)
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1082, %dx.types.Handle %40, float %1083, float %1084, float %1085, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = fmul fast float %1087, 1.023000e+03
  %1091 = fmul fast float %1088, 1.023000e+03
  %1092 = fmul fast float %1089, 1.023000e+03
  %1093 = fadd fast float %1090, 5.000000e-01
  %1094 = fadd fast float %1091, 5.000000e-01
  %1095 = fadd fast float %1092, 5.000000e-01
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = fsub fast float %1066, %1069
  %1100 = fsub fast float %1067, %1070
  %1101 = fsub fast float %1068, %1071
  %1102 = fmul fast float %1099, 7.500000e-01
  %1103 = fmul fast float %1100, 7.500000e-01
  %1104 = fmul fast float %1101, 7.500000e-01
  %1105 = fadd fast float %1069, 1.250000e-01
  %1106 = fadd fast float %1105, %1102
  %1107 = fadd fast float %1106, %1096
  %1108 = fadd fast float %1070, 1.250000e-01
  %1109 = fadd fast float %1108, %1103
  %1110 = fadd fast float %1109, %1097
  %1111 = fadd fast float %1071, 1.250000e-01
  %1112 = fadd fast float %1111, %1104
  %1113 = fadd fast float %1112, %1098
  %1114 = fmul fast float %1107, %1057
  %1115 = fmul fast float %1110, %1058
  %1116 = fmul fast float %1113, %1059
  %1117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.i32 %1117, 0
  %1119 = add i32 %1118, 0
  %1120 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1119, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1120, %dx.types.Handle %38, float %1114, float %1115, float %1116, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1122 = extractvalue %dx.types.ResRet.f32 %1121, 0
  br label %1123

; <label>:1123                                    ; preds = %1044, %1033
  %1124 = phi float [ %1122, %1044 ], [ -1.000000e+00, %1033 ]
  %1125 = fadd fast float %1124, %1031
  %1126 = call float @dx.op.unary.f32(i32 7, float %1125)  ; Saturate(value)
  br label %1127

; <label>:1127                                    ; preds = %1123, %1021
  %1128 = phi float [ %1126, %1123 ], [ %1031, %1021 ]
  %1129 = fmul fast float %1128, %424
  br label %1130

; <label>:1130                                    ; preds = %1127, %1016
  %1131 = phi float [ %1129, %1127 ], [ %424, %1016 ]
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = and i32 %1133, 256
  %1135 = icmp eq i32 %1134, 0
  br i1 %1135, label %1182, label %1136

; <label>:1136                                    ; preds = %1130
  %1137 = add i32 %43, 460
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1137, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = add i32 %1139, 0
  %1141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1141, %dx.types.Handle %77, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  %1144 = add i32 %43, 116
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = shl i32 %1146, 4
  %1148 = and i32 %1147, 32752
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = lshr i32 %1146, 7
  %1151 = and i32 %1150, 32752
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = fsub fast float 1.000000e+00, %1131
  %1154 = call float @dx.op.binary.f32(i32 35, float %1153, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1155 = bitcast float %1131 to i32
  %1156 = sitofp i32 %1155 to float
  %1157 = fadd fast float %1156, 0xC1CFBF8940000000
  %1158 = fmul fast float %1152, %1157
  %1159 = fadd fast float %1158, 0x41CFBF8940000000
  %1160 = fptosi float %1159 to i32
  %1161 = bitcast i32 %1160 to float
  %1162 = bitcast float %1154 to i32
  %1163 = sitofp i32 %1162 to float
  %1164 = fadd fast float %1163, 0xC1CFBF8940000000
  %1165 = fmul fast float %1164, %1152
  %1166 = fadd fast float %1165, 0x41CFBF8940000000
  %1167 = fptosi float %1166 to i32
  %1168 = bitcast i32 %1167 to float
  %1169 = fmul fast float %1161, %1149
  %1170 = fmul fast float %1168, %1149
  %1171 = fsub fast float %1154, %1169
  %1172 = fadd fast float %1170, %1154
  %1173 = call float @dx.op.unary.f32(i32 7, float %1171)  ; Saturate(value)
  %1174 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1175 = fsub fast float %1143, %1173
  %1176 = fsub fast float %1174, %1173
  %1177 = bitcast float %1176 to i32
  %1178 = sub nsw i32 2129859010, %1177
  %1179 = bitcast i32 %1178 to float
  %1180 = fmul fast float %1179, %1175
  %1181 = call float @dx.op.unary.f32(i32 7, float %1180)  ; Saturate(value)
  br label %1182

; <label>:1182                                    ; preds = %1136, %1130
  %1183 = phi float [ %1181, %1136 ], [ %1131, %1130 ]
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = and i32 %1185, 128
  %1187 = icmp eq i32 %1186, 0
  br i1 %1187, label %1204, label %1188

; <label>:1188                                    ; preds = %1182
  %1189 = add i32 %43, 444
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1189, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = add i32 %1191, 0
  %1193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1194 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1193, %dx.types.Handle %77, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1195 = extractvalue %dx.types.ResRet.f32 %1194, 0
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 524288
  %1199 = icmp ne i32 %1198, 0
  %1200 = fcmp fast ogt float %1195, 0x3FE0101020000000
  %1201 = select i1 %1200, float 1.000000e+00, float 0.000000e+00
  %1202 = select i1 %1199, float %1201, float %1195
  %1203 = fmul fast float %1202, %1183
  br label %1204

; <label>:1204                                    ; preds = %1188, %1182
  %1205 = phi float [ %1203, %1188 ], [ %1183, %1182 ]
  %1206 = fcmp fast ult float %1205, 0x3F70101020000000
  br i1 %1206, label %1749, label %1207

; <label>:1207                                    ; preds = %1204
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 16
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1410, label %1212

; <label>:1212                                    ; preds = %1207
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %43, 396
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = add i32 %1217, 0
  %1219 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1218, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1219, %dx.types.Handle %76, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1221 = extractvalue %dx.types.ResRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.ResRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.ResRet.f32 %1220, 2
  %1224 = extractvalue %dx.types.ResRet.f32 %1220, 3
  %1225 = and i32 %1214, 255
  %1226 = uitofp i32 %1225 to float
  %1227 = lshr i32 %1214, 8
  %1228 = and i32 %1227, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1224, %1226
  %1231 = fadd fast float %1230, %1229
  %1232 = fmul fast float %1231, 0x3F70101000000000
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 512
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1245, label %1237

; <label>:1237                                    ; preds = %1212
  %1238 = add i32 %43, 476
  %1239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1238, i32 undef)  ; BufferLoad(srv,index,wot)
  %1240 = extractvalue %dx.types.ResRet.i32 %1239, 0
  %1241 = add i32 %1240, 0
  %1242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1243 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1242, %dx.types.Handle %77, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1244 = extractvalue %dx.types.ResRet.f32 %1243, 0
  br label %1245

; <label>:1245                                    ; preds = %1237, %1212
  %1246 = phi float [ %1244, %1237 ], [ 1.000000e+00, %1212 ]
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = and i32 %1248, 33554432
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1357, label %1251

; <label>:1251                                    ; preds = %1245
  %1252 = add i32 %43, 240
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = and i32 %1254, 65535
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = lshr i32 %1254, 16
  %1258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1257)  ; LegacyF16ToF32(value)
  %1259 = add i32 %43, 244
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = and i32 %1261, 65535
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1280 = add i32 %43, 236
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = lshr i32 %1282, 24
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1284, 0x3F70101020000000
  %1286 = and i32 %1282, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F70101020000000
  %1289 = lshr i32 %1282, 8
  %1290 = and i32 %1289, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F70101020000000
  %1293 = lshr i32 %1282, 16
  %1294 = and i32 %1293, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = bitcast float %1221 to i32
  %1298 = ashr i32 %1297, 1
  %1299 = sub nsw i32 1597463174, %1298
  %1300 = bitcast i32 %1299 to float
  %1301 = fmul fast float %1221, 5.000000e-01
  %1302 = fmul fast float %1300, %1300
  %1303 = fmul fast float %1302, %1301
  %1304 = fsub fast float 1.500000e+00, %1303
  %1305 = fmul fast float %1300, %1221
  %1306 = fmul fast float %1305, %1304
  %1307 = bitcast float %1222 to i32
  %1308 = ashr i32 %1307, 1
  %1309 = sub nsw i32 1597463174, %1308
  %1310 = bitcast i32 %1309 to float
  %1311 = fmul fast float %1222, 5.000000e-01
  %1312 = fmul fast float %1310, %1310
  %1313 = fmul fast float %1312, %1311
  %1314 = fsub fast float 1.500000e+00, %1313
  %1315 = fmul fast float %1310, %1222
  %1316 = fmul fast float %1315, %1314
  %1317 = bitcast float %1223 to i32
  %1318 = ashr i32 %1317, 1
  %1319 = sub nsw i32 1597463174, %1318
  %1320 = bitcast i32 %1319 to float
  %1321 = fmul fast float %1223, 5.000000e-01
  %1322 = fmul fast float %1320, %1320
  %1323 = fmul fast float %1322, %1321
  %1324 = fsub fast float 1.500000e+00, %1323
  %1325 = fmul fast float %1320, %1223
  %1326 = fmul fast float %1325, %1324
  %1327 = fsub fast float %1306, %1288
  %1328 = fsub fast float %1316, %1292
  %1329 = fsub fast float %1326, %1296
  %1330 = fmul fast float %1327, %1256
  %1331 = fmul fast float %1328, %1258
  %1332 = fmul fast float %1329, %1263
  %1333 = fadd fast float %1330, %1271
  %1334 = fadd fast float %1331, %1275
  %1335 = fadd fast float %1332, %1279
  %1336 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1337 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1338 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1339 = fmul fast float %1336, %1336
  %1340 = fmul fast float %1337, %1337
  %1341 = fmul fast float %1338, %1338
  %1342 = fsub fast float %1339, %1221
  %1343 = fsub fast float %1340, %1222
  %1344 = fsub fast float %1341, %1223
  %1345 = fmul fast float %1342, %1246
  %1346 = fmul fast float %1343, %1246
  %1347 = fmul fast float %1344, %1246
  %1348 = fadd fast float %1345, %1221
  %1349 = fadd fast float %1346, %1222
  %1350 = fadd fast float %1347, %1223
  %1351 = fadd fast float %1268, %1232
  %1352 = fsub fast float %1351, %1285
  %1353 = call float @dx.op.unary.f32(i32 7, float %1352)  ; Saturate(value)
  %1354 = fsub fast float %1353, %1232
  %1355 = fmul fast float %1354, %1246
  %1356 = fadd fast float %1355, %1232
  br label %1410

; <label>:1357                                    ; preds = %1245
  %1358 = and i32 %1248, 134217728
  %1359 = icmp eq i32 %1358, 0
  br i1 %1359, label %1394, label %1360

; <label>:1360                                    ; preds = %1357
  %1361 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1362 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1363 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1364 = fadd fast float %1361, -5.000000e-01
  %1365 = fadd fast float %1362, -5.000000e-01
  %1366 = fadd fast float %1363, -5.000000e-01
  %1367 = fmul fast float %1364, %1246
  %1368 = fmul fast float %1365, %1246
  %1369 = fmul fast float %1366, %1246
  %1370 = fadd fast float %1367, 5.000000e-01
  %1371 = fadd fast float %1368, 5.000000e-01
  %1372 = fadd fast float %1369, 5.000000e-01
  %1373 = call float @dx.op.unary.f32(i32 24, float %1221)  ; Sqrt(value)
  %1374 = call float @dx.op.unary.f32(i32 24, float %1222)  ; Sqrt(value)
  %1375 = call float @dx.op.unary.f32(i32 24, float %1223)  ; Sqrt(value)
  %1376 = fmul fast float %1370, 2.000000e+00
  %1377 = fsub fast float 1.000000e+00, %1376
  %1378 = fmul fast float %1377, %1373
  %1379 = fadd fast float %1378, %1376
  %1380 = fmul fast float %1379, %1373
  %1381 = fmul fast float %1371, 2.000000e+00
  %1382 = fsub fast float 1.000000e+00, %1381
  %1383 = fmul fast float %1382, %1374
  %1384 = fadd fast float %1383, %1381
  %1385 = fmul fast float %1384, %1374
  %1386 = fmul fast float %1372, 2.000000e+00
  %1387 = fsub fast float 1.000000e+00, %1386
  %1388 = fmul fast float %1387, %1375
  %1389 = fadd fast float %1388, %1386
  %1390 = fmul fast float %1389, %1375
  %1391 = fmul fast float %1380, %1380
  %1392 = fmul fast float %1385, %1385
  %1393 = fmul fast float %1390, %1390
  br label %1410

; <label>:1394                                    ; preds = %1357
  %1395 = fmul fast float %259, %259
  %1396 = fmul fast float %263, %263
  %1397 = fmul fast float %267, %267
  %1398 = fadd fast float %1395, -1.000000e+00
  %1399 = fadd fast float %1396, -1.000000e+00
  %1400 = fadd fast float %1397, -1.000000e+00
  %1401 = fmul fast float %1246, %1398
  %1402 = fmul fast float %1246, %1399
  %1403 = fmul fast float %1246, %1400
  %1404 = fadd fast float %1401, 1.000000e+00
  %1405 = fadd fast float %1402, 1.000000e+00
  %1406 = fadd fast float %1403, 1.000000e+00
  %1407 = fmul fast float %1404, %1221
  %1408 = fmul fast float %1405, %1222
  %1409 = fmul fast float %1406, %1223
  br label %1410

; <label>:1410                                    ; preds = %1394, %1360, %1251, %1207
  %1411 = phi float [ %1356, %1251 ], [ %1232, %1360 ], [ %1232, %1394 ], [ 0x3FA23C0BE0000000, %1207 ]
  %1412 = phi float [ %1348, %1251 ], [ %1391, %1360 ], [ %1407, %1394 ], [ 1.000000e+00, %1207 ]
  %1413 = phi float [ %1349, %1251 ], [ %1392, %1360 ], [ %1408, %1394 ], [ 1.000000e+00, %1207 ]
  %1414 = phi float [ %1350, %1251 ], [ %1393, %1360 ], [ %1409, %1394 ], [ 1.000000e+00, %1207 ]
  %1415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.i32 %1415, 1
  %1417 = and i32 %1416, 1
  %1418 = icmp ne i32 %1417, 0
  %1419 = add i32 %43, 356
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = and i32 %1421, 32
  %1423 = icmp ne i32 %1422, 0
  %1424 = and i1 %1418, %1423
  %1425 = select i1 %1424, float 1.000000e+00, float %1412
  %1426 = select i1 %1424, float 0x3FD3333340000000, float %1413
  %1427 = select i1 %1424, float 0x3FD3333340000000, float %1414
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = and i32 %1429, 32
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1504, label %1432

; <label>:1432                                    ; preds = %1410
  %1433 = add i32 %43, 108
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %43, 412
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1436, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = add i32 %1438, 0
  %1440 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1439, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1441 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1440, %dx.types.Handle %76, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = extractvalue %dx.types.ResRet.f32 %1441, 1
  %1444 = extractvalue %dx.types.ResRet.f32 %1441, 2
  %1445 = extractvalue %dx.types.ResRet.f32 %1441, 3
  %1446 = and i32 %1435, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = lshr i32 %1435, 8
  %1449 = and i32 %1448, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = lshr i32 %1435, 16
  %1452 = and i32 %1451, 255
  %1453 = uitofp i32 %1452 to float
  %1454 = fmul fast float %1453, 0x3F70101000000000
  %1455 = fmul fast float %1442, %1447
  %1456 = fadd fast float %1455, %1450
  %1457 = fmul fast float %1456, 0x3F70101000000000
  %1458 = fadd fast float %1443, -5.000000e-01
  %1459 = fadd fast float %1445, -5.000000e-01
  %1460 = fmul fast float %1458, %1454
  %1461 = fmul fast float %1459, %1454
  %1462 = fadd fast float %1460, 5.000000e-01
  %1463 = fadd fast float %1461, 5.000000e-01
  %1464 = fmul fast float %1462, 2.000000e+00
  %1465 = fadd fast float %1464, -1.000000e+00
  %1466 = fmul fast float %1463, 2.000000e+00
  %1467 = fadd fast float %1466, -1.000000e+00
  %1468 = fadd fast float %1465, %1467
  %1469 = fmul fast float %1468, 5.000000e-01
  %1470 = fsub fast float %1465, %1467
  %1471 = fmul fast float %1470, 5.000000e-01
  %1472 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1473 = fsub fast float 1.000000e+00, %1472
  %1474 = call float @dx.op.unary.f32(i32 6, float %1471)  ; FAbs(value)
  %1475 = fsub fast float %1473, %1474
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1469, float %1471, float %1475, float %1469, float %1471, float %1475)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = call float @dx.op.unary.f32(i32 25, float %1476)  ; Rsqrt(value)
  %1478 = fmul fast float %1469, %1477
  %1479 = fmul fast float %1471, %1477
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 67108864
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1500, label %1484

; <label>:1484                                    ; preds = %1432
  %1485 = add i32 %43, 296
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 65535
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 65535
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = lshr i32 %1487, 16
  %1495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1494)  ; LegacyF16ToF32(value)
  %1496 = fsub fast float %1457, %1495
  %1497 = fmul fast float %1496, %1489
  %1498 = fadd fast float %1497, %1493
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  br label %1500

; <label>:1500                                    ; preds = %1484, %1432
  %1501 = phi float [ %1499, %1484 ], [ %1457, %1432 ]
  %1502 = call float @dx.op.dot2.f32(i32 54, float %1478, float %1479, float %921, float %922)  ; Dot2(ax,ay,bx,by)
  %1503 = call float @dx.op.dot2.f32(i32 54, float %1478, float %1479, float %923, float %924)  ; Dot2(ax,ay,bx,by)
  br label %1504

; <label>:1504                                    ; preds = %1500, %1410
  %1505 = phi float [ %1501, %1500 ], [ 0x3FD6666660000000, %1410 ]
  %1506 = phi float [ %1502, %1500 ], [ 0.000000e+00, %1410 ]
  %1507 = phi float [ %1503, %1500 ], [ 0.000000e+00, %1410 ]
  %1508 = phi float [ %1444, %1500 ], [ 1.000000e+00, %1410 ]
  %1509 = add i32 %43, 176
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1509, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = lshr i32 %1511, 22
  %1513 = shl nuw nsw i32 %1512, 5
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 64
  %1518 = icmp eq i32 %1517, 0
  br i1 %1518, label %1552, label %1519

; <label>:1519                                    ; preds = %1504
  %1520 = add i32 %43, 428
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = add i32 %1522, 0
  %1524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = and i32 %1526, 131072
  %1528 = icmp eq i32 %1527, 0
  %1529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1524, %dx.types.Handle %76, float %1017, float %1018, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1530 = extractvalue %dx.types.ResRet.f32 %1529, 0
  %1531 = extractvalue %dx.types.ResRet.f32 %1529, 1
  %1532 = extractvalue %dx.types.ResRet.f32 %1529, 2
  %1533 = fmul fast float %1530, %247
  %1534 = fmul fast float %1531, %250
  %1535 = fmul fast float %1532, %253
  br i1 %1528, label %1542, label %1536

; <label>:1536                                    ; preds = %1519
  %1537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1538 = extractvalue %dx.types.CBufRet.f32 %1537, 0
  %1539 = fmul fast float %1538, %1533
  %1540 = fmul fast float %1538, %1534
  %1541 = fmul fast float %1538, %1535
  br label %1542

; <label>:1542                                    ; preds = %1536, %1519
  %1543 = phi float [ %1539, %1536 ], [ %1533, %1519 ]
  %1544 = phi float [ %1540, %1536 ], [ %1534, %1519 ]
  %1545 = phi float [ %1541, %1536 ], [ %1535, %1519 ]
  %1546 = fmul fast float %1543, %1514
  %1547 = select i1 %185, float %1546, float %1543
  %1548 = call float @dx.op.dot3.f32(i32 55, float %1547, float %1544, float %1545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1549 = select i1 %185, float 0.000000e+00, float %1543
  %1550 = select i1 %185, float %1548, float %1544
  %1551 = select i1 %185, float 0.000000e+00, float %1545
  br label %1552

; <label>:1552                                    ; preds = %1542, %1504
  %1553 = phi float [ %1549, %1542 ], [ 0.000000e+00, %1504 ]
  %1554 = phi float [ %1550, %1542 ], [ 0.000000e+00, %1504 ]
  %1555 = phi float [ %1551, %1542 ], [ 0.000000e+00, %1504 ]
  %1556 = add i32 %43, 112
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 255
  %1560 = uitofp i32 %1559 to float
  %1561 = lshr i32 %1558, 8
  %1562 = and i32 %1561, 255
  %1563 = uitofp i32 %1562 to float
  %1564 = call float @dx.op.dot3.f32(i32 55, float %1425, float %1426, float %1427, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1565 = fmul fast float %1563, %1564
  %1566 = fadd fast float %1565, %1560
  %1567 = fmul fast float %1566, 0x3F70101020000000
  %1568 = call float @dx.op.unary.f32(i32 7, float %1567)  ; Saturate(value)
  br i1 %909, label %1569, label %1577

; <label>:1569                                    ; preds = %1552
  %1570 = fsub fast float 1.000000e+00, %1205
  %1571 = fmul fast float %1570, %897
  %1572 = fmul fast float %1570, %898
  %1573 = fmul fast float %1570, %899
  %1574 = fmul fast float %1570, %900
  %1575 = fmul fast float %1570, %901
  %1576 = fmul fast float %1570, %902
  br label %1577

; <label>:1577                                    ; preds = %1569, %1552
  %1578 = phi float [ %1571, %1569 ], [ %897, %1552 ]
  %1579 = phi float [ %1572, %1569 ], [ %898, %1552 ]
  %1580 = phi float [ %1573, %1569 ], [ %899, %1552 ]
  %1581 = phi float [ %1574, %1569 ], [ %900, %1552 ]
  %1582 = phi float [ %1575, %1569 ], [ %901, %1552 ]
  %1583 = phi float [ %1576, %1569 ], [ %902, %1552 ]
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 3
  %1587 = icmp eq i32 %1586, 3
  br i1 %1587, label %1666, label %1588

; <label>:1588                                    ; preds = %1577
  %1589 = and i32 %1585, 16
  %1590 = icmp ne i32 %1589, 0
  %1591 = select i1 %1590, float %1205, float 0.000000e+00
  %1592 = icmp eq i32 %1586, 0
  br i1 %1592, label %1593, label %1621

; <label>:1593                                    ; preds = %1588
  %1594 = and i32 %1585, 64
  %1595 = icmp ne i32 %1594, 0
  %1596 = select i1 %1595, float %1205, float 0.000000e+00
  %1597 = fsub fast float %1425, %1578
  %1598 = fsub fast float %1426, %1579
  %1599 = fsub fast float %1427, %1580
  %1600 = fmul fast float %1591, %1597
  %1601 = fmul fast float %1591, %1598
  %1602 = fmul fast float %1591, %1599
  %1603 = fadd fast float %1600, %1578
  %1604 = fadd fast float %1601, %1579
  %1605 = fadd fast float %1602, %1580
  %1606 = fsub fast float %1411, %903
  %1607 = fmul fast float %1591, %1606
  %1608 = fadd fast float %1607, %903
  %1609 = fsub fast float %1553, %1581
  %1610 = fsub fast float %1554, %1582
  %1611 = fsub fast float %1555, %1583
  %1612 = fmul fast float %1596, %1609
  %1613 = fmul fast float %1596, %1610
  %1614 = fmul fast float %1596, %1611
  %1615 = fadd fast float %1612, %1581
  %1616 = fadd fast float %1613, %1582
  %1617 = fadd fast float %1614, %1583
  %1618 = fsub fast float %1568, %907
  %1619 = fmul fast float %1591, %1618
  %1620 = fadd fast float %1619, %907
  br label %1666

; <label>:1621                                    ; preds = %1588
  %1622 = icmp eq i32 %1586, 1
  br i1 %1622, label %1623, label %1636

; <label>:1623                                    ; preds = %1621
  %1624 = fadd fast float %1425, -1.000000e+00
  %1625 = fadd fast float %1426, -1.000000e+00
  %1626 = fadd fast float %1427, -1.000000e+00
  %1627 = fmul fast float %1591, %1624
  %1628 = fmul fast float %1591, %1625
  %1629 = fmul fast float %1591, %1626
  %1630 = fadd fast float %1627, 1.000000e+00
  %1631 = fadd fast float %1628, 1.000000e+00
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fmul fast float %1630, %1578
  %1634 = fmul fast float %1631, %1579
  %1635 = fmul fast float %1632, %1580
  br label %1666

; <label>:1636                                    ; preds = %1621
  %1637 = icmp eq i32 %1586, 2
  br i1 %1637, label %1638, label %1666

; <label>:1638                                    ; preds = %1636
  %1639 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1640 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1641 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1642 = fadd fast float %1639, -5.000000e-01
  %1643 = fadd fast float %1640, -5.000000e-01
  %1644 = fadd fast float %1641, -5.000000e-01
  %1645 = fmul fast float %1642, %1591
  %1646 = fmul fast float %1643, %1591
  %1647 = fmul fast float %1644, %1591
  %1648 = fadd fast float %1645, 5.000000e-01
  %1649 = fadd fast float %1646, 5.000000e-01
  %1650 = fadd fast float %1647, 5.000000e-01
  %1651 = fmul fast float %1648, 2.000000e+00
  %1652 = fsub fast float 1.000000e+00, %1651
  %1653 = fmul fast float %1652, %1578
  %1654 = fadd fast float %1653, %1651
  %1655 = fmul fast float %1654, %1578
  %1656 = fmul fast float %1649, 2.000000e+00
  %1657 = fsub fast float 1.000000e+00, %1656
  %1658 = fmul fast float %1657, %1579
  %1659 = fadd fast float %1658, %1656
  %1660 = fmul fast float %1659, %1579
  %1661 = fmul fast float %1650, 2.000000e+00
  %1662 = fsub fast float 1.000000e+00, %1661
  %1663 = fmul fast float %1662, %1580
  %1664 = fadd fast float %1663, %1661
  %1665 = fmul fast float %1664, %1580
  br label %1666

; <label>:1666                                    ; preds = %1638, %1636, %1623, %1593, %1577
  %1667 = phi float [ %1578, %1577 ], [ %1655, %1638 ], [ %1578, %1636 ], [ %1633, %1623 ], [ %1603, %1593 ]
  %1668 = phi float [ %1579, %1577 ], [ %1660, %1638 ], [ %1579, %1636 ], [ %1634, %1623 ], [ %1604, %1593 ]
  %1669 = phi float [ %1580, %1577 ], [ %1665, %1638 ], [ %1580, %1636 ], [ %1635, %1623 ], [ %1605, %1593 ]
  %1670 = phi float [ %1581, %1577 ], [ %1581, %1638 ], [ %1581, %1636 ], [ %1581, %1623 ], [ %1615, %1593 ]
  %1671 = phi float [ %1582, %1577 ], [ %1582, %1638 ], [ %1582, %1636 ], [ %1582, %1623 ], [ %1616, %1593 ]
  %1672 = phi float [ %1583, %1577 ], [ %1583, %1638 ], [ %1583, %1636 ], [ %1583, %1623 ], [ %1617, %1593 ]
  %1673 = phi float [ %903, %1577 ], [ %903, %1638 ], [ %903, %1636 ], [ %903, %1623 ], [ %1608, %1593 ]
  %1674 = phi float [ %907, %1577 ], [ %907, %1638 ], [ %907, %1636 ], [ %907, %1623 ], [ %1620, %1593 ]
  %1675 = and i32 %1585, 12
  %1676 = icmp eq i32 %1675, 12
  br i1 %1676, label %1749, label %1677

; <label>:1677                                    ; preds = %1666
  %1678 = and i32 %1585, 2097184
  %1679 = icmp eq i32 %1678, 2097184
  %1680 = select i1 %1679, float %1205, float 0.000000e+00
  %1681 = and i32 %1585, 4194336
  %1682 = icmp eq i32 %1681, 4194336
  %1683 = select i1 %1682, float %1205, float 0.000000e+00
  %1684 = and i32 %1585, 8388640
  %1685 = icmp eq i32 %1684, 8388640
  %1686 = select i1 %1685, float %1205, float 0.000000e+00
  %1687 = icmp eq i32 %1675, 0
  br i1 %1687, label %1688, label %1701

; <label>:1688                                    ; preds = %1677
  %1689 = fsub fast float %1506, %895
  %1690 = fsub fast float %1507, %896
  %1691 = fmul fast float %1680, %1689
  %1692 = fmul fast float %1680, %1690
  %1693 = fadd fast float %1691, %895
  %1694 = fadd fast float %1692, %896
  %1695 = fsub fast float %1508, %906
  %1696 = fmul fast float %1683, %1695
  %1697 = fadd fast float %1696, %906
  %1698 = fsub fast float %1505, %905
  %1699 = fmul fast float %1686, %1698
  %1700 = fadd fast float %1699, %905
  br label %1749

; <label>:1701                                    ; preds = %1677
  %1702 = icmp eq i32 %1675, 4
  br i1 %1702, label %1703, label %1735

; <label>:1703                                    ; preds = %1701
  %1704 = fmul fast float %1680, %1506
  %1705 = fmul fast float %1680, %1507
  %1706 = fadd fast float %1704, %895
  %1707 = fadd fast float %1705, %896
  %1708 = call float @dx.op.binary.f32(i32 36, float %906, float %1508)  ; FMin(a,b)
  %1709 = fsub fast float %1708, %906
  %1710 = fmul fast float %1709, %1683
  %1711 = fadd fast float %1710, %906
  %1712 = fadd fast float %1505, %905
  %1713 = fmul fast float %1712, 0x3FF337FAE0000000
  %1714 = fmul fast float %905, %905
  %1715 = fmul fast float %1505, %1505
  %1716 = fadd fast float %1715, %1714
  %1717 = fmul fast float %1716, 0x3FE5152B00000000
  %1718 = fmul fast float %905, 0xBFCC1F85E0000000
  %1719 = fmul fast float %1718, %1505
  %1720 = fadd fast float %1719, 0xBFE1363700000000
  %1721 = fadd fast float %1720, %1713
  %1722 = fsub fast float %1721, %1717
  %1723 = fmul fast float %1712, 0x3FBA6F0D00000000
  %1724 = fmul fast float %1716, 0x3FD0432880000000
  %1725 = fmul fast float %905, 0xBFEF110800000000
  %1726 = fmul fast float %1725, %1505
  %1727 = fadd fast float %1726, 1.000000e+00
  %1728 = fsub fast float %1727, %1723
  %1729 = fadd fast float %1728, %1724
  %1730 = fdiv fast float %1722, %1729
  %1731 = call float @dx.op.unary.f32(i32 7, float %1730)  ; Saturate(value)
  %1732 = fsub fast float %1731, %905
  %1733 = fmul fast float %1732, %1686
  %1734 = fadd fast float %1733, %905
  br label %1749

; <label>:1735                                    ; preds = %1701
  %1736 = icmp eq i32 %1675, 8
  br i1 %1736, label %1737, label %1749

; <label>:1737                                    ; preds = %1735
  %1738 = fmul fast float %1680, %1506
  %1739 = fmul fast float %1680, %1507
  %1740 = fadd fast float %1738, %895
  %1741 = fadd fast float %1739, %896
  %1742 = call float @dx.op.binary.f32(i32 36, float %906, float %1508)  ; FMin(a,b)
  %1743 = fsub fast float %1742, %906
  %1744 = fmul fast float %1743, %1683
  %1745 = fadd fast float %1744, %906
  %1746 = fsub fast float %1505, %905
  %1747 = fmul fast float %1686, %1746
  %1748 = fadd fast float %1747, %905
  br label %1749

; <label>:1749                                    ; preds = %1737, %1735, %1703, %1688, %1666, %1204, %908, %894
  %1750 = phi float [ %895, %1666 ], [ %895, %1204 ], [ %895, %894 ], [ %1740, %1737 ], [ %895, %1735 ], [ %1706, %1703 ], [ %1693, %1688 ], [ %895, %908 ]
  %1751 = phi float [ %896, %1666 ], [ %896, %1204 ], [ %896, %894 ], [ %1741, %1737 ], [ %896, %1735 ], [ %1707, %1703 ], [ %1694, %1688 ], [ %896, %908 ]
  %1752 = phi float [ %1667, %1666 ], [ %897, %1204 ], [ %897, %894 ], [ %1667, %1737 ], [ %1667, %1735 ], [ %1667, %1703 ], [ %1667, %1688 ], [ %897, %908 ]
  %1753 = phi float [ %1668, %1666 ], [ %898, %1204 ], [ %898, %894 ], [ %1668, %1737 ], [ %1668, %1735 ], [ %1668, %1703 ], [ %1668, %1688 ], [ %898, %908 ]
  %1754 = phi float [ %1669, %1666 ], [ %899, %1204 ], [ %899, %894 ], [ %1669, %1737 ], [ %1669, %1735 ], [ %1669, %1703 ], [ %1669, %1688 ], [ %899, %908 ]
  %1755 = phi float [ %1670, %1666 ], [ %900, %1204 ], [ %900, %894 ], [ %1670, %1737 ], [ %1670, %1735 ], [ %1670, %1703 ], [ %1670, %1688 ], [ %900, %908 ]
  %1756 = phi float [ %1671, %1666 ], [ %901, %1204 ], [ %901, %894 ], [ %1671, %1737 ], [ %1671, %1735 ], [ %1671, %1703 ], [ %1671, %1688 ], [ %901, %908 ]
  %1757 = phi float [ %1672, %1666 ], [ %902, %1204 ], [ %902, %894 ], [ %1672, %1737 ], [ %1672, %1735 ], [ %1672, %1703 ], [ %1672, %1688 ], [ %902, %908 ]
  %1758 = phi float [ %1673, %1666 ], [ %903, %1204 ], [ %903, %894 ], [ %1673, %1737 ], [ %1673, %1735 ], [ %1673, %1703 ], [ %1673, %1688 ], [ %903, %908 ]
  %1759 = phi float [ %905, %1666 ], [ %905, %1204 ], [ %905, %894 ], [ %1748, %1737 ], [ %905, %1735 ], [ %1734, %1703 ], [ %1700, %1688 ], [ %905, %908 ]
  %1760 = phi float [ %906, %1666 ], [ %906, %1204 ], [ %906, %894 ], [ %1745, %1737 ], [ %906, %1735 ], [ %1711, %1703 ], [ %1697, %1688 ], [ %906, %908 ]
  %1761 = phi float [ %1674, %1666 ], [ %907, %1204 ], [ %907, %894 ], [ %1674, %1737 ], [ %1674, %1735 ], [ %1674, %1703 ], [ %1674, %1688 ], [ %907, %908 ]
  br i1 %374, label %2603, label %1762

; <label>:1762                                    ; preds = %1749
  %1763 = icmp ult i32 %427, 3
  %1764 = add i32 %43, 56
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = add i32 %43, 60
  %1768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1767, i32 undef)  ; BufferLoad(srv,index,wot)
  %1769 = extractvalue %dx.types.ResRet.i32 %1768, 0
  %1770 = or i32 %1769, %1766
  %1771 = icmp eq i32 %1770, 0
  br i1 %1771, label %2603, label %1772

; <label>:1772                                    ; preds = %1762
  %1773 = and i32 %1766, 262144
  %1774 = icmp ne i32 %1773, 0
  %1775 = select i1 %1774, float %47, float 1.000000e+00
  %1776 = select i1 %1774, float %48, float 0.000000e+00
  %1777 = select i1 %1774, float %49, float 0.000000e+00
  %1778 = select i1 %1774, float %50, float 1.000000e+00
  %1779 = select i1 %1774, float %51, float %68
  %1780 = select i1 %1774, float %52, float %69
  %1781 = add i32 %43, 316
  %1782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %1783 = extractvalue %dx.types.ResRet.i32 %1782, 0
  %1784 = lshr i32 %1783, 16
  %1785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1784)  ; LegacyF16ToF32(value)
  %1786 = fmul fast float %1785, 0x3F50624DE0000000
  %1787 = add i32 %43, 120
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = lshr i32 %1789, 16
  %1791 = and i32 %1790, 255
  %1792 = lshr i32 %1789, 24
  %1793 = add i32 %43, 324
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = and i32 %1795, 65535
  %1797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1796)  ; LegacyF16ToF32(value)
  %1798 = lshr i32 %1795, 16
  %1799 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1798)  ; LegacyF16ToF32(value)
  %1800 = add i32 %43, 64
  %1801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1802 = extractvalue %dx.types.ResRet.i32 %1801, 0
  %1803 = lshr i32 %1802, 22
  %1804 = shl nuw nsw i32 %1803, 5
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = shl i32 %1802, 4
  %1807 = and i32 %1806, 32752
  %1808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1807)  ; LegacyF16ToF32(value)
  %1809 = lshr i32 %1802, 7
  %1810 = and i32 %1809, 32752
  %1811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1810)  ; LegacyF16ToF32(value)
  %1812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1813 = extractvalue %dx.types.CBufRet.f32 %1812, 3
  %1814 = fmul fast float %1813, 1.000000e+03
  %1815 = fmul fast float %324, %1814
  %1816 = call float @dx.op.unary.f32(i32 22, float %1815)  ; Frc(value)
  %1817 = fadd fast float %1816, %314
  %1818 = fmul fast float %325, %1814
  %1819 = call float @dx.op.unary.f32(i32 22, float %1818)  ; Frc(value)
  %1820 = fadd fast float %1819, %316
  %1821 = fmul fast float %1786, %1814
  %1822 = call float @dx.op.unary.f32(i32 22, float %1821)  ; Frc(value)
  %1823 = fmul fast float %1822, 0x401921FB60000000
  %1824 = fadd fast float %1823, %1805
  %1825 = call float @dx.op.unary.f32(i32 13, float %1824)  ; Sin(value)
  %1826 = call float @dx.op.unary.f32(i32 12, float %1824)  ; Cos(value)
  %1827 = fsub fast float -0.000000e+00, %1825
  %1828 = fadd fast float %1779, -5.000000e-01
  %1829 = fadd fast float %1780, -5.000000e-01
  %1830 = fmul fast float %1797, %1828
  %1831 = fmul fast float %1799, %1829
  %1832 = fadd fast float %1830, 5.000000e-01
  %1833 = fadd fast float %1831, 5.000000e-01
  %1834 = fmul fast float %1808, %1832
  %1835 = fmul fast float %1811, %1833
  %1836 = fmul fast float %1826, %1834
  %1837 = call float @dx.op.tertiary.f32(i32 46, float %1827, float %1835, float %1836)  ; FMad(a,b,c)
  %1838 = fmul fast float %1825, %1834
  %1839 = call float @dx.op.tertiary.f32(i32 46, float %1826, float %1835, float %1838)  ; FMad(a,b,c)
  %1840 = fadd fast float %1817, %1837
  %1841 = fadd fast float %1820, %1839
  %1842 = icmp ugt i32 %1791, 1
  %1843 = icmp ugt i32 %1789, 33554431
  %1844 = or i1 %1843, %1842
  br i1 %1844, label %1845, label %1870

; <label>:1845                                    ; preds = %1772
  %1846 = add i32 %43, 260
  %1847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1846, i32 undef)  ; BufferLoad(srv,index,wot)
  %1848 = extractvalue %dx.types.ResRet.i32 %1847, 0
  %1849 = lshr i32 %1848, 16
  %1850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1849)  ; LegacyF16ToF32(value)
  %1851 = fmul fast float %1813, %1850
  %1852 = call float @dx.op.unary.f32(i32 22, float %1851)  ; Frc(value)
  %1853 = mul nuw nsw i32 %1791, %1792
  %1854 = uitofp i32 %1853 to float
  %1855 = fmul fast float %1852, %1854
  %1856 = call float @dx.op.unary.f32(i32 27, float %1855)  ; Round_ni(value)
  %1857 = fptoui float %1856 to i32
  %1858 = urem i32 %1857, %1791
  %1859 = udiv i32 %1857, %1792
  %1860 = call float @dx.op.unary.f32(i32 22, float %1840)  ; Frc(value)
  %1861 = call float @dx.op.unary.f32(i32 22, float %1841)  ; Frc(value)
  %1862 = uitofp i32 %1858 to float
  %1863 = uitofp i32 %1859 to float
  %1864 = fadd fast float %1860, %1862
  %1865 = fadd fast float %1861, %1863
  %1866 = uitofp i32 %1791 to float
  %1867 = uitofp i32 %1792 to float
  %1868 = fdiv fast float %1864, %1866
  %1869 = fdiv fast float %1865, %1867
  br label %1870

; <label>:1870                                    ; preds = %1845, %1772
  %1871 = phi float [ %1868, %1845 ], [ %1840, %1772 ]
  %1872 = phi float [ %1869, %1845 ], [ %1841, %1772 ]
  %1873 = and i32 %1766, 16777216
  %1874 = icmp eq i32 %1873, 0
  br i1 %1874, label %1984, label %1875

; <label>:1875                                    ; preds = %1870
  %1876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1877 = extractvalue %dx.types.CBufRet.f32 %1876, 0
  %1878 = extractvalue %dx.types.CBufRet.f32 %1876, 1
  %1879 = extractvalue %dx.types.CBufRet.f32 %1876, 2
  %1880 = fadd fast float %1877, %143
  %1881 = fadd fast float %1878, %144
  %1882 = fadd fast float %1879, %145
  %1883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1884 = extractvalue %dx.types.CBufRet.f32 %1883, 0
  %1885 = call float @dx.op.unary.f32(i32 7, float %1884)  ; Saturate(value)
  %1886 = icmp eq i32 %44, 65535
  br i1 %1886, label %1981, label %1887

; <label>:1887                                    ; preds = %1875
  %1888 = lshr i32 %44, 1
  %1889 = shl i32 %1888, 2
  %1890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1891 = extractvalue %dx.types.ResRet.i32 %1890, 0
  %1892 = and i32 %44, 1
  %1893 = icmp ne i32 %1892, 0
  %1894 = lshr i32 %1891, 16
  %1895 = and i32 %1891, 65535
  %1896 = select i1 %1893, i32 %1894, i32 %1895
  %1897 = icmp eq i32 %1896, 65535
  br i1 %1897, label %1977, label %1898

; <label>:1898                                    ; preds = %1887
  %1899 = mul nuw nsw i32 %1896, 40
  %1900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.f32 %1900, 0
  %1902 = extractvalue %dx.types.ResRet.f32 %1900, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1900, 2
  %1904 = add nuw nsw i32 %1899, 12
  %1905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.ResRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1909 = add nuw nsw i32 %1899, 24
  %1910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.ResRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.ResRet.f32 %1910, 2
  %1914 = add nuw nsw i32 %1899, 36
  %1915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.f32 %1915, 0
  %1917 = fsub fast float %1880, %1901
  %1918 = fsub fast float %1881, %1902
  %1919 = fsub fast float %1882, %1903
  %1920 = fmul fast float %1916, %1917
  %1921 = fmul fast float %1916, %1918
  %1922 = fmul fast float %1916, %1919
  %1923 = call float @dx.op.unary.f32(i32 27, float %1920)  ; Round_ni(value)
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = fadd fast float %1923, 5.000000e-01
  %1927 = fadd fast float %1924, 5.000000e-01
  %1928 = fadd fast float %1925, 5.000000e-01
  %1929 = fmul fast float %1926, %1906
  %1930 = fmul fast float %1927, %1907
  %1931 = fmul fast float %1928, %1908
  %1932 = shl i32 %44, 2
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = add i32 %1934, 0
  %1936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1937 = call float @dx.op.unary.f32(i32 22, float %1929)  ; Frc(value)
  %1938 = call float @dx.op.unary.f32(i32 22, float %1930)  ; Frc(value)
  %1939 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1936, %dx.types.Handle %40, float %1937, float %1938, float %1939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.ResRet.f32 %1940, 1
  %1943 = extractvalue %dx.types.ResRet.f32 %1940, 2
  %1944 = fmul fast float %1941, 1.023000e+03
  %1945 = fmul fast float %1942, 1.023000e+03
  %1946 = fmul fast float %1943, 1.023000e+03
  %1947 = fadd fast float %1944, 5.000000e-01
  %1948 = fadd fast float %1945, 5.000000e-01
  %1949 = fadd fast float %1946, 5.000000e-01
  %1950 = call float @dx.op.unary.f32(i32 27, float %1947)  ; Round_ni(value)
  %1951 = call float @dx.op.unary.f32(i32 27, float %1948)  ; Round_ni(value)
  %1952 = call float @dx.op.unary.f32(i32 27, float %1949)  ; Round_ni(value)
  %1953 = fsub fast float %1920, %1923
  %1954 = fsub fast float %1921, %1924
  %1955 = fsub fast float %1922, %1925
  %1956 = fmul fast float %1953, 7.500000e-01
  %1957 = fmul fast float %1954, 7.500000e-01
  %1958 = fmul fast float %1955, 7.500000e-01
  %1959 = fadd fast float %1923, 1.250000e-01
  %1960 = fadd fast float %1959, %1956
  %1961 = fadd fast float %1960, %1950
  %1962 = fadd fast float %1924, 1.250000e-01
  %1963 = fadd fast float %1962, %1957
  %1964 = fadd fast float %1963, %1951
  %1965 = fadd fast float %1925, 1.250000e-01
  %1966 = fadd fast float %1965, %1958
  %1967 = fadd fast float %1966, %1952
  %1968 = fmul fast float %1961, %1911
  %1969 = fmul fast float %1964, %1912
  %1970 = fmul fast float %1967, %1913
  %1971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.i32 %1971, 0
  %1973 = add i32 %1972, 0
  %1974 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1973, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1974, %dx.types.Handle %38, float %1968, float %1969, float %1970, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  br label %1977

; <label>:1977                                    ; preds = %1898, %1887
  %1978 = phi float [ %1976, %1898 ], [ -1.000000e+00, %1887 ]
  %1979 = fadd fast float %1978, %1885
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  br label %1981

; <label>:1981                                    ; preds = %1977, %1875
  %1982 = phi float [ %1980, %1977 ], [ %1885, %1875 ]
  %1983 = fmul fast float %1982, %423
  br label %1984

; <label>:1984                                    ; preds = %1981, %1870
  %1985 = phi float [ %1983, %1981 ], [ %423, %1870 ]
  %1986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1987 = extractvalue %dx.types.ResRet.i32 %1986, 0
  %1988 = and i32 %1987, 256
  %1989 = icmp eq i32 %1988, 0
  br i1 %1989, label %2036, label %1990

; <label>:1990                                    ; preds = %1984
  %1991 = add i32 %43, 464
  %1992 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1991, i32 undef)  ; BufferLoad(srv,index,wot)
  %1993 = extractvalue %dx.types.ResRet.i32 %1992, 0
  %1994 = add i32 %1993, 0
  %1995 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1994, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1996 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1995, %dx.types.Handle %77, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1997 = extractvalue %dx.types.ResRet.f32 %1996, 0
  %1998 = add i32 %43, 132
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = shl i32 %2000, 4
  %2002 = and i32 %2001, 32752
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = lshr i32 %2000, 7
  %2005 = and i32 %2004, 32752
  %2006 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2005)  ; LegacyF16ToF32(value)
  %2007 = fsub fast float 1.000000e+00, %1985
  %2008 = call float @dx.op.binary.f32(i32 35, float %2007, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2009 = bitcast float %1985 to i32
  %2010 = sitofp i32 %2009 to float
  %2011 = fadd fast float %2010, 0xC1CFBF8940000000
  %2012 = fmul fast float %2006, %2011
  %2013 = fadd fast float %2012, 0x41CFBF8940000000
  %2014 = fptosi float %2013 to i32
  %2015 = bitcast i32 %2014 to float
  %2016 = bitcast float %2008 to i32
  %2017 = sitofp i32 %2016 to float
  %2018 = fadd fast float %2017, 0xC1CFBF8940000000
  %2019 = fmul fast float %2018, %2006
  %2020 = fadd fast float %2019, 0x41CFBF8940000000
  %2021 = fptosi float %2020 to i32
  %2022 = bitcast i32 %2021 to float
  %2023 = fmul fast float %2015, %2003
  %2024 = fmul fast float %2022, %2003
  %2025 = fsub fast float %2008, %2023
  %2026 = fadd fast float %2024, %2008
  %2027 = call float @dx.op.unary.f32(i32 7, float %2025)  ; Saturate(value)
  %2028 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2029 = fsub fast float %1997, %2027
  %2030 = fsub fast float %2028, %2027
  %2031 = bitcast float %2030 to i32
  %2032 = sub nsw i32 2129859010, %2031
  %2033 = bitcast i32 %2032 to float
  %2034 = fmul fast float %2033, %2029
  %2035 = call float @dx.op.unary.f32(i32 7, float %2034)  ; Saturate(value)
  br label %2036

; <label>:2036                                    ; preds = %1990, %1984
  %2037 = phi float [ %2035, %1990 ], [ %1985, %1984 ]
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %2039, 128
  %2041 = icmp eq i32 %2040, 0
  br i1 %2041, label %2058, label %2042

; <label>:2042                                    ; preds = %2036
  %2043 = add i32 %43, 448
  %2044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2043, i32 undef)  ; BufferLoad(srv,index,wot)
  %2045 = extractvalue %dx.types.ResRet.i32 %2044, 0
  %2046 = add i32 %2045, 0
  %2047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2048 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2047, %dx.types.Handle %77, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = and i32 %2051, 524288
  %2053 = icmp ne i32 %2052, 0
  %2054 = fcmp fast ogt float %2049, 0x3FE0101020000000
  %2055 = select i1 %2054, float 1.000000e+00, float 0.000000e+00
  %2056 = select i1 %2053, float %2055, float %2049
  %2057 = fmul fast float %2056, %2037
  br label %2058

; <label>:2058                                    ; preds = %2042, %2036
  %2059 = phi float [ %2057, %2042 ], [ %2037, %2036 ]
  %2060 = fcmp fast ult float %2059, 0x3F70101020000000
  br i1 %2060, label %2603, label %2061

; <label>:2061                                    ; preds = %2058
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 16
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2264, label %2066

; <label>:2066                                    ; preds = %2061
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = add i32 %43, 400
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2069, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = add i32 %2071, 0
  %2073 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2072, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2074 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2073, %dx.types.Handle %76, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2075 = extractvalue %dx.types.ResRet.f32 %2074, 0
  %2076 = extractvalue %dx.types.ResRet.f32 %2074, 1
  %2077 = extractvalue %dx.types.ResRet.f32 %2074, 2
  %2078 = extractvalue %dx.types.ResRet.f32 %2074, 3
  %2079 = and i32 %2068, 255
  %2080 = uitofp i32 %2079 to float
  %2081 = lshr i32 %2068, 8
  %2082 = and i32 %2081, 255
  %2083 = uitofp i32 %2082 to float
  %2084 = fmul fast float %2078, %2080
  %2085 = fadd fast float %2084, %2083
  %2086 = fmul fast float %2085, 0x3F70101000000000
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = and i32 %2088, 512
  %2090 = icmp eq i32 %2089, 0
  br i1 %2090, label %2099, label %2091

; <label>:2091                                    ; preds = %2066
  %2092 = add i32 %43, 480
  %2093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2092, i32 undef)  ; BufferLoad(srv,index,wot)
  %2094 = extractvalue %dx.types.ResRet.i32 %2093, 0
  %2095 = add i32 %2094, 0
  %2096 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2095, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2097 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2096, %dx.types.Handle %77, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2098 = extractvalue %dx.types.ResRet.f32 %2097, 0
  br label %2099

; <label>:2099                                    ; preds = %2091, %2066
  %2100 = phi float [ %2098, %2091 ], [ 1.000000e+00, %2066 ]
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = and i32 %2102, 33554432
  %2104 = icmp eq i32 %2103, 0
  br i1 %2104, label %2211, label %2105

; <label>:2105                                    ; preds = %2099
  %2106 = add i32 %43, 256
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = and i32 %2108, 65535
  %2110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2109)  ; LegacyF16ToF32(value)
  %2111 = lshr i32 %2108, 16
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = add i32 %43, 260
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = and i32 %2115, 65535
  %2117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2116)  ; LegacyF16ToF32(value)
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2134 = add i32 %43, 252
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2134, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = lshr i32 %2136, 24
  %2138 = uitofp i32 %2137 to float
  %2139 = fmul fast float %2138, 0x3F70101020000000
  %2140 = and i32 %2136, 255
  %2141 = uitofp i32 %2140 to float
  %2142 = fmul fast float %2141, 0x3F70101020000000
  %2143 = lshr i32 %2136, 8
  %2144 = and i32 %2143, 255
  %2145 = uitofp i32 %2144 to float
  %2146 = fmul fast float %2145, 0x3F70101020000000
  %2147 = lshr i32 %2136, 16
  %2148 = and i32 %2147, 255
  %2149 = uitofp i32 %2148 to float
  %2150 = fmul fast float %2149, 0x3F70101020000000
  %2151 = bitcast float %2075 to i32
  %2152 = ashr i32 %2151, 1
  %2153 = sub nsw i32 1597463174, %2152
  %2154 = bitcast i32 %2153 to float
  %2155 = fmul fast float %2075, 5.000000e-01
  %2156 = fmul fast float %2154, %2154
  %2157 = fmul fast float %2156, %2155
  %2158 = fsub fast float 1.500000e+00, %2157
  %2159 = fmul fast float %2154, %2075
  %2160 = fmul fast float %2159, %2158
  %2161 = bitcast float %2076 to i32
  %2162 = ashr i32 %2161, 1
  %2163 = sub nsw i32 1597463174, %2162
  %2164 = bitcast i32 %2163 to float
  %2165 = fmul fast float %2076, 5.000000e-01
  %2166 = fmul fast float %2164, %2164
  %2167 = fmul fast float %2166, %2165
  %2168 = fsub fast float 1.500000e+00, %2167
  %2169 = fmul fast float %2164, %2076
  %2170 = fmul fast float %2169, %2168
  %2171 = bitcast float %2077 to i32
  %2172 = ashr i32 %2171, 1
  %2173 = sub nsw i32 1597463174, %2172
  %2174 = bitcast i32 %2173 to float
  %2175 = fmul fast float %2077, 5.000000e-01
  %2176 = fmul fast float %2174, %2174
  %2177 = fmul fast float %2176, %2175
  %2178 = fsub fast float 1.500000e+00, %2177
  %2179 = fmul fast float %2174, %2077
  %2180 = fmul fast float %2179, %2178
  %2181 = fsub fast float %2160, %2142
  %2182 = fsub fast float %2170, %2146
  %2183 = fsub fast float %2180, %2150
  %2184 = fmul fast float %2181, %2110
  %2185 = fmul fast float %2182, %2112
  %2186 = fmul fast float %2183, %2117
  %2187 = fadd fast float %2184, %2125
  %2188 = fadd fast float %2185, %2129
  %2189 = fadd fast float %2186, %2133
  %2190 = call float @dx.op.unary.f32(i32 7, float %2187)  ; Saturate(value)
  %2191 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2192 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2193 = fmul fast float %2190, %2190
  %2194 = fmul fast float %2191, %2191
  %2195 = fmul fast float %2192, %2192
  %2196 = fsub fast float %2193, %2075
  %2197 = fsub fast float %2194, %2076
  %2198 = fsub fast float %2195, %2077
  %2199 = fmul fast float %2196, %2100
  %2200 = fmul fast float %2197, %2100
  %2201 = fmul fast float %2198, %2100
  %2202 = fadd fast float %2199, %2075
  %2203 = fadd fast float %2200, %2076
  %2204 = fadd fast float %2201, %2077
  %2205 = fadd fast float %2122, %2086
  %2206 = fsub fast float %2205, %2139
  %2207 = call float @dx.op.unary.f32(i32 7, float %2206)  ; Saturate(value)
  %2208 = fsub fast float %2207, %2086
  %2209 = fmul fast float %2208, %2100
  %2210 = fadd fast float %2209, %2086
  br label %2264

; <label>:2211                                    ; preds = %2099
  %2212 = and i32 %2102, 134217728
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2248, label %2214

; <label>:2214                                    ; preds = %2211
  %2215 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2216 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2217 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %2218 = fadd fast float %2215, -5.000000e-01
  %2219 = fadd fast float %2216, -5.000000e-01
  %2220 = fadd fast float %2217, -5.000000e-01
  %2221 = fmul fast float %2218, %2100
  %2222 = fmul fast float %2219, %2100
  %2223 = fmul fast float %2220, %2100
  %2224 = fadd fast float %2221, 5.000000e-01
  %2225 = fadd fast float %2222, 5.000000e-01
  %2226 = fadd fast float %2223, 5.000000e-01
  %2227 = call float @dx.op.unary.f32(i32 24, float %2075)  ; Sqrt(value)
  %2228 = call float @dx.op.unary.f32(i32 24, float %2076)  ; Sqrt(value)
  %2229 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2230 = fmul fast float %2224, 2.000000e+00
  %2231 = fsub fast float 1.000000e+00, %2230
  %2232 = fmul fast float %2231, %2227
  %2233 = fadd fast float %2232, %2230
  %2234 = fmul fast float %2233, %2227
  %2235 = fmul fast float %2225, 2.000000e+00
  %2236 = fsub fast float 1.000000e+00, %2235
  %2237 = fmul fast float %2236, %2228
  %2238 = fadd fast float %2237, %2235
  %2239 = fmul fast float %2238, %2228
  %2240 = fmul fast float %2226, 2.000000e+00
  %2241 = fsub fast float 1.000000e+00, %2240
  %2242 = fmul fast float %2241, %2229
  %2243 = fadd fast float %2242, %2240
  %2244 = fmul fast float %2243, %2229
  %2245 = fmul fast float %2234, %2234
  %2246 = fmul fast float %2239, %2239
  %2247 = fmul fast float %2244, %2244
  br label %2264

; <label>:2248                                    ; preds = %2211
  %2249 = fmul fast float %301, %301
  %2250 = fmul fast float %305, %305
  %2251 = fmul fast float %309, %309
  %2252 = fadd fast float %2249, -1.000000e+00
  %2253 = fadd fast float %2250, -1.000000e+00
  %2254 = fadd fast float %2251, -1.000000e+00
  %2255 = fmul fast float %2100, %2252
  %2256 = fmul fast float %2100, %2253
  %2257 = fmul fast float %2100, %2254
  %2258 = fadd fast float %2255, 1.000000e+00
  %2259 = fadd fast float %2256, 1.000000e+00
  %2260 = fadd fast float %2257, 1.000000e+00
  %2261 = fmul fast float %2258, %2075
  %2262 = fmul fast float %2259, %2076
  %2263 = fmul fast float %2260, %2077
  br label %2264

; <label>:2264                                    ; preds = %2248, %2214, %2105, %2061
  %2265 = phi float [ %2210, %2105 ], [ %2086, %2214 ], [ %2086, %2248 ], [ 0x3FA23C0BE0000000, %2061 ]
  %2266 = phi float [ %2202, %2105 ], [ %2245, %2214 ], [ %2261, %2248 ], [ 1.000000e+00, %2061 ]
  %2267 = phi float [ %2203, %2105 ], [ %2246, %2214 ], [ %2262, %2248 ], [ 1.000000e+00, %2061 ]
  %2268 = phi float [ %2204, %2105 ], [ %2247, %2214 ], [ %2263, %2248 ], [ 1.000000e+00, %2061 ]
  %2269 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.i32 %2269, 1
  %2271 = and i32 %2270, 1
  %2272 = icmp ne i32 %2271, 0
  %2273 = add i32 %43, 356
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = and i32 %2275, 32
  %2277 = icmp ne i32 %2276, 0
  %2278 = and i1 %2272, %2277
  %2279 = select i1 %2278, float 1.000000e+00, float %2266
  %2280 = select i1 %2278, float 0x3FD3333340000000, float %2267
  %2281 = select i1 %2278, float 0x3FD3333340000000, float %2268
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = and i32 %2283, 32
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2358, label %2286

; <label>:2286                                    ; preds = %2264
  %2287 = add i32 %43, 124
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = add i32 %43, 416
  %2291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2290, i32 undef)  ; BufferLoad(srv,index,wot)
  %2292 = extractvalue %dx.types.ResRet.i32 %2291, 0
  %2293 = add i32 %2292, 0
  %2294 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2293, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2295 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2294, %dx.types.Handle %76, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2296 = extractvalue %dx.types.ResRet.f32 %2295, 0
  %2297 = extractvalue %dx.types.ResRet.f32 %2295, 1
  %2298 = extractvalue %dx.types.ResRet.f32 %2295, 2
  %2299 = extractvalue %dx.types.ResRet.f32 %2295, 3
  %2300 = and i32 %2289, 255
  %2301 = uitofp i32 %2300 to float
  %2302 = lshr i32 %2289, 8
  %2303 = and i32 %2302, 255
  %2304 = uitofp i32 %2303 to float
  %2305 = lshr i32 %2289, 16
  %2306 = and i32 %2305, 255
  %2307 = uitofp i32 %2306 to float
  %2308 = fmul fast float %2307, 0x3F70101000000000
  %2309 = fmul fast float %2296, %2301
  %2310 = fadd fast float %2309, %2304
  %2311 = fmul fast float %2310, 0x3F70101000000000
  %2312 = fadd fast float %2297, -5.000000e-01
  %2313 = fadd fast float %2299, -5.000000e-01
  %2314 = fmul fast float %2312, %2308
  %2315 = fmul fast float %2313, %2308
  %2316 = fadd fast float %2314, 5.000000e-01
  %2317 = fadd fast float %2315, 5.000000e-01
  %2318 = fmul fast float %2316, 2.000000e+00
  %2319 = fadd fast float %2318, -1.000000e+00
  %2320 = fmul fast float %2317, 2.000000e+00
  %2321 = fadd fast float %2320, -1.000000e+00
  %2322 = fadd fast float %2319, %2321
  %2323 = fmul fast float %2322, 5.000000e-01
  %2324 = fsub fast float %2319, %2321
  %2325 = fmul fast float %2324, 5.000000e-01
  %2326 = call float @dx.op.unary.f32(i32 6, float %2323)  ; FAbs(value)
  %2327 = fsub fast float 1.000000e+00, %2326
  %2328 = call float @dx.op.unary.f32(i32 6, float %2325)  ; FAbs(value)
  %2329 = fsub fast float %2327, %2328
  %2330 = call float @dx.op.dot3.f32(i32 55, float %2323, float %2325, float %2329, float %2323, float %2325, float %2329)  ; Dot3(ax,ay,az,bx,by,bz)
  %2331 = call float @dx.op.unary.f32(i32 25, float %2330)  ; Rsqrt(value)
  %2332 = fmul fast float %2323, %2331
  %2333 = fmul fast float %2325, %2331
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = and i32 %2335, 67108864
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2354, label %2338

; <label>:2338                                    ; preds = %2286
  %2339 = add i32 %43, 312
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1781, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 65535
  %2347 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2346)  ; LegacyF16ToF32(value)
  %2348 = lshr i32 %2341, 16
  %2349 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2348)  ; LegacyF16ToF32(value)
  %2350 = fsub fast float %2311, %2349
  %2351 = fmul fast float %2350, %2343
  %2352 = fadd fast float %2351, %2347
  %2353 = call float @dx.op.unary.f32(i32 7, float %2352)  ; Saturate(value)
  br label %2354

; <label>:2354                                    ; preds = %2338, %2286
  %2355 = phi float [ %2353, %2338 ], [ %2311, %2286 ]
  %2356 = call float @dx.op.dot2.f32(i32 54, float %2332, float %2333, float %1775, float %1776)  ; Dot2(ax,ay,bx,by)
  %2357 = call float @dx.op.dot2.f32(i32 54, float %2332, float %2333, float %1777, float %1778)  ; Dot2(ax,ay,bx,by)
  br label %2358

; <label>:2358                                    ; preds = %2354, %2264
  %2359 = phi float [ %2355, %2354 ], [ 0x3FD6666660000000, %2264 ]
  %2360 = phi float [ %2356, %2354 ], [ 0.000000e+00, %2264 ]
  %2361 = phi float [ %2357, %2354 ], [ 0.000000e+00, %2264 ]
  %2362 = phi float [ %2298, %2354 ], [ 1.000000e+00, %2264 ]
  %2363 = add i32 %43, 192
  %2364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2363, i32 undef)  ; BufferLoad(srv,index,wot)
  %2365 = extractvalue %dx.types.ResRet.i32 %2364, 0
  %2366 = lshr i32 %2365, 22
  %2367 = shl nuw nsw i32 %2366, 5
  %2368 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2367)  ; LegacyF16ToF32(value)
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 64
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2406, label %2373

; <label>:2373                                    ; preds = %2358
  %2374 = add i32 %43, 432
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = add i32 %2376, 0
  %2378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2377, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 131072
  %2382 = icmp eq i32 %2381, 0
  %2383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2378, %dx.types.Handle %76, float %1871, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = extractvalue %dx.types.ResRet.f32 %2383, 1
  %2386 = extractvalue %dx.types.ResRet.f32 %2383, 2
  %2387 = fmul fast float %2384, %289
  %2388 = fmul fast float %2385, %292
  %2389 = fmul fast float %2386, %295
  br i1 %2382, label %2396, label %2390

; <label>:2390                                    ; preds = %2373
  %2391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2392 = extractvalue %dx.types.CBufRet.f32 %2391, 0
  %2393 = fmul fast float %2392, %2387
  %2394 = fmul fast float %2392, %2388
  %2395 = fmul fast float %2392, %2389
  br label %2396

; <label>:2396                                    ; preds = %2390, %2373
  %2397 = phi float [ %2393, %2390 ], [ %2387, %2373 ]
  %2398 = phi float [ %2394, %2390 ], [ %2388, %2373 ]
  %2399 = phi float [ %2395, %2390 ], [ %2389, %2373 ]
  %2400 = fmul fast float %2397, %2368
  %2401 = select i1 %185, float %2400, float %2397
  %2402 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2398, float %2399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2403 = select i1 %185, float 0.000000e+00, float %2397
  %2404 = select i1 %185, float %2402, float %2398
  %2405 = select i1 %185, float 0.000000e+00, float %2399
  br label %2406

; <label>:2406                                    ; preds = %2396, %2358
  %2407 = phi float [ %2403, %2396 ], [ 0.000000e+00, %2358 ]
  %2408 = phi float [ %2404, %2396 ], [ 0.000000e+00, %2358 ]
  %2409 = phi float [ %2405, %2396 ], [ 0.000000e+00, %2358 ]
  %2410 = add i32 %43, 128
  %2411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2410, i32 undef)  ; BufferLoad(srv,index,wot)
  %2412 = extractvalue %dx.types.ResRet.i32 %2411, 0
  %2413 = and i32 %2412, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = lshr i32 %2412, 8
  %2416 = and i32 %2415, 255
  %2417 = uitofp i32 %2416 to float
  %2418 = call float @dx.op.dot3.f32(i32 55, float %2279, float %2280, float %2281, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2419 = fmul fast float %2417, %2418
  %2420 = fadd fast float %2419, %2414
  %2421 = fmul fast float %2420, 0x3F70101020000000
  %2422 = call float @dx.op.unary.f32(i32 7, float %2421)  ; Saturate(value)
  br i1 %1763, label %2423, label %2431

; <label>:2423                                    ; preds = %2406
  %2424 = fsub fast float 1.000000e+00, %2059
  %2425 = fmul fast float %2424, %1752
  %2426 = fmul fast float %2424, %1753
  %2427 = fmul fast float %2424, %1754
  %2428 = fmul fast float %2424, %1755
  %2429 = fmul fast float %2424, %1756
  %2430 = fmul fast float %2424, %1757
  br label %2431

; <label>:2431                                    ; preds = %2423, %2406
  %2432 = phi float [ %2425, %2423 ], [ %1752, %2406 ]
  %2433 = phi float [ %2426, %2423 ], [ %1753, %2406 ]
  %2434 = phi float [ %2427, %2423 ], [ %1754, %2406 ]
  %2435 = phi float [ %2428, %2423 ], [ %1755, %2406 ]
  %2436 = phi float [ %2429, %2423 ], [ %1756, %2406 ]
  %2437 = phi float [ %2430, %2423 ], [ %1757, %2406 ]
  %2438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2439 = extractvalue %dx.types.ResRet.i32 %2438, 0
  %2440 = and i32 %2439, 3
  %2441 = icmp eq i32 %2440, 3
  br i1 %2441, label %2520, label %2442

; <label>:2442                                    ; preds = %2431
  %2443 = and i32 %2439, 16
  %2444 = icmp ne i32 %2443, 0
  %2445 = select i1 %2444, float %2059, float 0.000000e+00
  %2446 = icmp eq i32 %2440, 0
  br i1 %2446, label %2447, label %2475

; <label>:2447                                    ; preds = %2442
  %2448 = and i32 %2439, 64
  %2449 = icmp ne i32 %2448, 0
  %2450 = select i1 %2449, float %2059, float 0.000000e+00
  %2451 = fsub fast float %2279, %2432
  %2452 = fsub fast float %2280, %2433
  %2453 = fsub fast float %2281, %2434
  %2454 = fmul fast float %2445, %2451
  %2455 = fmul fast float %2445, %2452
  %2456 = fmul fast float %2445, %2453
  %2457 = fadd fast float %2454, %2432
  %2458 = fadd fast float %2455, %2433
  %2459 = fadd fast float %2456, %2434
  %2460 = fsub fast float %2265, %1758
  %2461 = fmul fast float %2445, %2460
  %2462 = fadd fast float %2461, %1758
  %2463 = fsub fast float %2407, %2435
  %2464 = fsub fast float %2408, %2436
  %2465 = fsub fast float %2409, %2437
  %2466 = fmul fast float %2450, %2463
  %2467 = fmul fast float %2450, %2464
  %2468 = fmul fast float %2450, %2465
  %2469 = fadd fast float %2466, %2435
  %2470 = fadd fast float %2467, %2436
  %2471 = fadd fast float %2468, %2437
  %2472 = fsub fast float %2422, %1761
  %2473 = fmul fast float %2445, %2472
  %2474 = fadd fast float %2473, %1761
  br label %2520

; <label>:2475                                    ; preds = %2442
  %2476 = icmp eq i32 %2440, 1
  br i1 %2476, label %2477, label %2490

; <label>:2477                                    ; preds = %2475
  %2478 = fadd fast float %2279, -1.000000e+00
  %2479 = fadd fast float %2280, -1.000000e+00
  %2480 = fadd fast float %2281, -1.000000e+00
  %2481 = fmul fast float %2445, %2478
  %2482 = fmul fast float %2445, %2479
  %2483 = fmul fast float %2445, %2480
  %2484 = fadd fast float %2481, 1.000000e+00
  %2485 = fadd fast float %2482, 1.000000e+00
  %2486 = fadd fast float %2483, 1.000000e+00
  %2487 = fmul fast float %2484, %2432
  %2488 = fmul fast float %2485, %2433
  %2489 = fmul fast float %2486, %2434
  br label %2520

; <label>:2490                                    ; preds = %2475
  %2491 = icmp eq i32 %2440, 2
  br i1 %2491, label %2492, label %2520

; <label>:2492                                    ; preds = %2490
  %2493 = call float @dx.op.unary.f32(i32 24, float %2279)  ; Sqrt(value)
  %2494 = call float @dx.op.unary.f32(i32 24, float %2280)  ; Sqrt(value)
  %2495 = call float @dx.op.unary.f32(i32 24, float %2281)  ; Sqrt(value)
  %2496 = fadd fast float %2493, -5.000000e-01
  %2497 = fadd fast float %2494, -5.000000e-01
  %2498 = fadd fast float %2495, -5.000000e-01
  %2499 = fmul fast float %2496, %2445
  %2500 = fmul fast float %2497, %2445
  %2501 = fmul fast float %2498, %2445
  %2502 = fadd fast float %2499, 5.000000e-01
  %2503 = fadd fast float %2500, 5.000000e-01
  %2504 = fadd fast float %2501, 5.000000e-01
  %2505 = fmul fast float %2502, 2.000000e+00
  %2506 = fsub fast float 1.000000e+00, %2505
  %2507 = fmul fast float %2506, %2432
  %2508 = fadd fast float %2507, %2505
  %2509 = fmul fast float %2508, %2432
  %2510 = fmul fast float %2503, 2.000000e+00
  %2511 = fsub fast float 1.000000e+00, %2510
  %2512 = fmul fast float %2511, %2433
  %2513 = fadd fast float %2512, %2510
  %2514 = fmul fast float %2513, %2433
  %2515 = fmul fast float %2504, 2.000000e+00
  %2516 = fsub fast float 1.000000e+00, %2515
  %2517 = fmul fast float %2516, %2434
  %2518 = fadd fast float %2517, %2515
  %2519 = fmul fast float %2518, %2434
  br label %2520

; <label>:2520                                    ; preds = %2492, %2490, %2477, %2447, %2431
  %2521 = phi float [ %2432, %2431 ], [ %2509, %2492 ], [ %2432, %2490 ], [ %2487, %2477 ], [ %2457, %2447 ]
  %2522 = phi float [ %2433, %2431 ], [ %2514, %2492 ], [ %2433, %2490 ], [ %2488, %2477 ], [ %2458, %2447 ]
  %2523 = phi float [ %2434, %2431 ], [ %2519, %2492 ], [ %2434, %2490 ], [ %2489, %2477 ], [ %2459, %2447 ]
  %2524 = phi float [ %2435, %2431 ], [ %2435, %2492 ], [ %2435, %2490 ], [ %2435, %2477 ], [ %2469, %2447 ]
  %2525 = phi float [ %2436, %2431 ], [ %2436, %2492 ], [ %2436, %2490 ], [ %2436, %2477 ], [ %2470, %2447 ]
  %2526 = phi float [ %2437, %2431 ], [ %2437, %2492 ], [ %2437, %2490 ], [ %2437, %2477 ], [ %2471, %2447 ]
  %2527 = phi float [ %1758, %2431 ], [ %1758, %2492 ], [ %1758, %2490 ], [ %1758, %2477 ], [ %2462, %2447 ]
  %2528 = phi float [ %1761, %2431 ], [ %1761, %2492 ], [ %1761, %2490 ], [ %1761, %2477 ], [ %2474, %2447 ]
  %2529 = and i32 %2439, 12
  %2530 = icmp eq i32 %2529, 12
  br i1 %2530, label %2603, label %2531

; <label>:2531                                    ; preds = %2520
  %2532 = and i32 %2439, 2097184
  %2533 = icmp eq i32 %2532, 2097184
  %2534 = select i1 %2533, float %2059, float 0.000000e+00
  %2535 = and i32 %2439, 4194336
  %2536 = icmp eq i32 %2535, 4194336
  %2537 = select i1 %2536, float %2059, float 0.000000e+00
  %2538 = and i32 %2439, 8388640
  %2539 = icmp eq i32 %2538, 8388640
  %2540 = select i1 %2539, float %2059, float 0.000000e+00
  %2541 = icmp eq i32 %2529, 0
  br i1 %2541, label %2542, label %2555

; <label>:2542                                    ; preds = %2531
  %2543 = fsub fast float %2360, %1750
  %2544 = fsub fast float %2361, %1751
  %2545 = fmul fast float %2534, %2543
  %2546 = fmul fast float %2534, %2544
  %2547 = fadd fast float %2545, %1750
  %2548 = fadd fast float %2546, %1751
  %2549 = fsub fast float %2362, %1760
  %2550 = fmul fast float %2537, %2549
  %2551 = fadd fast float %2550, %1760
  %2552 = fsub fast float %2359, %1759
  %2553 = fmul fast float %2540, %2552
  %2554 = fadd fast float %2553, %1759
  br label %2603

; <label>:2555                                    ; preds = %2531
  %2556 = icmp eq i32 %2529, 4
  br i1 %2556, label %2557, label %2589

; <label>:2557                                    ; preds = %2555
  %2558 = fmul fast float %2534, %2360
  %2559 = fmul fast float %2534, %2361
  %2560 = fadd fast float %2558, %1750
  %2561 = fadd fast float %2559, %1751
  %2562 = call float @dx.op.binary.f32(i32 36, float %1760, float %2362)  ; FMin(a,b)
  %2563 = fsub fast float %2562, %1760
  %2564 = fmul fast float %2563, %2537
  %2565 = fadd fast float %2564, %1760
  %2566 = fadd fast float %2359, %1759
  %2567 = fmul fast float %2566, 0x3FF337FAE0000000
  %2568 = fmul fast float %1759, %1759
  %2569 = fmul fast float %2359, %2359
  %2570 = fadd fast float %2569, %2568
  %2571 = fmul fast float %2570, 0x3FE5152B00000000
  %2572 = fmul fast float %1759, 0xBFCC1F85E0000000
  %2573 = fmul fast float %2572, %2359
  %2574 = fadd fast float %2573, 0xBFE1363700000000
  %2575 = fadd fast float %2574, %2567
  %2576 = fsub fast float %2575, %2571
  %2577 = fmul fast float %2566, 0x3FBA6F0D00000000
  %2578 = fmul fast float %2570, 0x3FD0432880000000
  %2579 = fmul fast float %1759, 0xBFEF110800000000
  %2580 = fmul fast float %2579, %2359
  %2581 = fadd fast float %2580, 1.000000e+00
  %2582 = fsub fast float %2581, %2577
  %2583 = fadd fast float %2582, %2578
  %2584 = fdiv fast float %2576, %2583
  %2585 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  %2586 = fsub fast float %2585, %1759
  %2587 = fmul fast float %2586, %2540
  %2588 = fadd fast float %2587, %1759
  br label %2603

; <label>:2589                                    ; preds = %2555
  %2590 = icmp eq i32 %2529, 8
  br i1 %2590, label %2591, label %2603

; <label>:2591                                    ; preds = %2589
  %2592 = fmul fast float %2534, %2360
  %2593 = fmul fast float %2534, %2361
  %2594 = fadd fast float %2592, %1750
  %2595 = fadd fast float %2593, %1751
  %2596 = call float @dx.op.binary.f32(i32 36, float %1760, float %2362)  ; FMin(a,b)
  %2597 = fsub fast float %2596, %1760
  %2598 = fmul fast float %2597, %2537
  %2599 = fadd fast float %2598, %1760
  %2600 = fsub fast float %2359, %1759
  %2601 = fmul fast float %2540, %2600
  %2602 = fadd fast float %2601, %1759
  br label %2603

; <label>:2603                                    ; preds = %2591, %2589, %2557, %2542, %2520, %2058, %1762, %1749
  %2604 = phi float [ %1750, %2520 ], [ %1750, %2058 ], [ %1750, %1749 ], [ %2594, %2591 ], [ %1750, %2589 ], [ %2560, %2557 ], [ %2547, %2542 ], [ %1750, %1762 ]
  %2605 = phi float [ %1751, %2520 ], [ %1751, %2058 ], [ %1751, %1749 ], [ %2595, %2591 ], [ %1751, %2589 ], [ %2561, %2557 ], [ %2548, %2542 ], [ %1751, %1762 ]
  %2606 = phi float [ %2521, %2520 ], [ %1752, %2058 ], [ %1752, %1749 ], [ %2521, %2591 ], [ %2521, %2589 ], [ %2521, %2557 ], [ %2521, %2542 ], [ %1752, %1762 ]
  %2607 = phi float [ %2522, %2520 ], [ %1753, %2058 ], [ %1753, %1749 ], [ %2522, %2591 ], [ %2522, %2589 ], [ %2522, %2557 ], [ %2522, %2542 ], [ %1753, %1762 ]
  %2608 = phi float [ %2523, %2520 ], [ %1754, %2058 ], [ %1754, %1749 ], [ %2523, %2591 ], [ %2523, %2589 ], [ %2523, %2557 ], [ %2523, %2542 ], [ %1754, %1762 ]
  %2609 = phi float [ %2524, %2520 ], [ %1755, %2058 ], [ %1755, %1749 ], [ %2524, %2591 ], [ %2524, %2589 ], [ %2524, %2557 ], [ %2524, %2542 ], [ %1755, %1762 ]
  %2610 = phi float [ %2525, %2520 ], [ %1756, %2058 ], [ %1756, %1749 ], [ %2525, %2591 ], [ %2525, %2589 ], [ %2525, %2557 ], [ %2525, %2542 ], [ %1756, %1762 ]
  %2611 = phi float [ %2526, %2520 ], [ %1757, %2058 ], [ %1757, %1749 ], [ %2526, %2591 ], [ %2526, %2589 ], [ %2526, %2557 ], [ %2526, %2542 ], [ %1757, %1762 ]
  %2612 = phi float [ %2527, %2520 ], [ %1758, %2058 ], [ %1758, %1749 ], [ %2527, %2591 ], [ %2527, %2589 ], [ %2527, %2557 ], [ %2527, %2542 ], [ %1758, %1762 ]
  %2613 = phi float [ %1759, %2520 ], [ %1759, %2058 ], [ %1759, %1749 ], [ %2602, %2591 ], [ %1759, %2589 ], [ %2588, %2557 ], [ %2554, %2542 ], [ %1759, %1762 ]
  %2614 = phi float [ %1760, %2520 ], [ %1760, %2058 ], [ %1760, %1749 ], [ %2599, %2591 ], [ %1760, %2589 ], [ %2565, %2557 ], [ %2551, %2542 ], [ %1760, %1762 ]
  %2615 = phi float [ %2528, %2520 ], [ %1761, %2058 ], [ %1761, %1749 ], [ %2528, %2591 ], [ %2528, %2589 ], [ %2528, %2557 ], [ %2528, %2542 ], [ %1761, %1762 ]
  br i1 %376, label %3457, label %2616

; <label>:2616                                    ; preds = %2603
  %2617 = icmp ult i32 %427, 4
  %2618 = add i32 %43, 72
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = add i32 %43, 76
  %2622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2621, i32 undef)  ; BufferLoad(srv,index,wot)
  %2623 = extractvalue %dx.types.ResRet.i32 %2622, 0
  %2624 = or i32 %2623, %2620
  %2625 = icmp eq i32 %2624, 0
  br i1 %2625, label %3457, label %2626

; <label>:2626                                    ; preds = %2616
  %2627 = and i32 %2620, 262144
  %2628 = icmp ne i32 %2627, 0
  %2629 = select i1 %2628, float %47, float 1.000000e+00
  %2630 = select i1 %2628, float %48, float 0.000000e+00
  %2631 = select i1 %2628, float %49, float 0.000000e+00
  %2632 = select i1 %2628, float %50, float 1.000000e+00
  %2633 = select i1 %2628, float %51, float %68
  %2634 = select i1 %2628, float %52, float %69
  %2635 = add i32 %43, 332
  %2636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %2637 = extractvalue %dx.types.ResRet.i32 %2636, 0
  %2638 = lshr i32 %2637, 16
  %2639 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2638)  ; LegacyF16ToF32(value)
  %2640 = fmul fast float %2639, 0x3F50624DE0000000
  %2641 = add i32 %43, 136
  %2642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2643 = extractvalue %dx.types.ResRet.i32 %2642, 0
  %2644 = lshr i32 %2643, 16
  %2645 = and i32 %2644, 255
  %2646 = lshr i32 %2643, 24
  %2647 = add i32 %43, 340
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = and i32 %2649, 65535
  %2651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2650)  ; LegacyF16ToF32(value)
  %2652 = lshr i32 %2649, 16
  %2653 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2652)  ; LegacyF16ToF32(value)
  %2654 = add i32 %43, 80
  %2655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2654, i32 undef)  ; BufferLoad(srv,index,wot)
  %2656 = extractvalue %dx.types.ResRet.i32 %2655, 0
  %2657 = lshr i32 %2656, 22
  %2658 = shl nuw nsw i32 %2657, 5
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = shl i32 %2656, 4
  %2661 = and i32 %2660, 32752
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = lshr i32 %2656, 7
  %2664 = and i32 %2663, 32752
  %2665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2664)  ; LegacyF16ToF32(value)
  %2666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.f32 %2666, 3
  %2668 = fmul fast float %2667, 1.000000e+03
  %2669 = fmul fast float %366, %2668
  %2670 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2671 = fadd fast float %2670, %356
  %2672 = fmul fast float %367, %2668
  %2673 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2674 = fadd fast float %2673, %358
  %2675 = fmul fast float %2640, %2668
  %2676 = call float @dx.op.unary.f32(i32 22, float %2675)  ; Frc(value)
  %2677 = fmul fast float %2676, 0x401921FB60000000
  %2678 = fadd fast float %2677, %2659
  %2679 = call float @dx.op.unary.f32(i32 13, float %2678)  ; Sin(value)
  %2680 = call float @dx.op.unary.f32(i32 12, float %2678)  ; Cos(value)
  %2681 = fsub fast float -0.000000e+00, %2679
  %2682 = fadd fast float %2633, -5.000000e-01
  %2683 = fadd fast float %2634, -5.000000e-01
  %2684 = fmul fast float %2651, %2682
  %2685 = fmul fast float %2653, %2683
  %2686 = fadd fast float %2684, 5.000000e-01
  %2687 = fadd fast float %2685, 5.000000e-01
  %2688 = fmul fast float %2662, %2686
  %2689 = fmul fast float %2665, %2687
  %2690 = fmul fast float %2680, %2688
  %2691 = call float @dx.op.tertiary.f32(i32 46, float %2681, float %2689, float %2690)  ; FMad(a,b,c)
  %2692 = fmul fast float %2679, %2688
  %2693 = call float @dx.op.tertiary.f32(i32 46, float %2680, float %2689, float %2692)  ; FMad(a,b,c)
  %2694 = fadd fast float %2671, %2691
  %2695 = fadd fast float %2674, %2693
  %2696 = icmp ugt i32 %2645, 1
  %2697 = icmp ugt i32 %2643, 33554431
  %2698 = or i1 %2697, %2696
  br i1 %2698, label %2699, label %2724

; <label>:2699                                    ; preds = %2626
  %2700 = add i32 %43, 276
  %2701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2700, i32 undef)  ; BufferLoad(srv,index,wot)
  %2702 = extractvalue %dx.types.ResRet.i32 %2701, 0
  %2703 = lshr i32 %2702, 16
  %2704 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2703)  ; LegacyF16ToF32(value)
  %2705 = fmul fast float %2667, %2704
  %2706 = call float @dx.op.unary.f32(i32 22, float %2705)  ; Frc(value)
  %2707 = mul nuw nsw i32 %2645, %2646
  %2708 = uitofp i32 %2707 to float
  %2709 = fmul fast float %2706, %2708
  %2710 = call float @dx.op.unary.f32(i32 27, float %2709)  ; Round_ni(value)
  %2711 = fptoui float %2710 to i32
  %2712 = urem i32 %2711, %2645
  %2713 = udiv i32 %2711, %2646
  %2714 = call float @dx.op.unary.f32(i32 22, float %2694)  ; Frc(value)
  %2715 = call float @dx.op.unary.f32(i32 22, float %2695)  ; Frc(value)
  %2716 = uitofp i32 %2712 to float
  %2717 = uitofp i32 %2713 to float
  %2718 = fadd fast float %2714, %2716
  %2719 = fadd fast float %2715, %2717
  %2720 = uitofp i32 %2645 to float
  %2721 = uitofp i32 %2646 to float
  %2722 = fdiv fast float %2718, %2720
  %2723 = fdiv fast float %2719, %2721
  br label %2724

; <label>:2724                                    ; preds = %2699, %2626
  %2725 = phi float [ %2722, %2699 ], [ %2694, %2626 ]
  %2726 = phi float [ %2723, %2699 ], [ %2695, %2626 ]
  %2727 = and i32 %2620, 16777216
  %2728 = icmp eq i32 %2727, 0
  br i1 %2728, label %2838, label %2729

; <label>:2729                                    ; preds = %2724
  %2730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2731 = extractvalue %dx.types.CBufRet.f32 %2730, 0
  %2732 = extractvalue %dx.types.CBufRet.f32 %2730, 1
  %2733 = extractvalue %dx.types.CBufRet.f32 %2730, 2
  %2734 = fadd fast float %2731, %143
  %2735 = fadd fast float %2732, %144
  %2736 = fadd fast float %2733, %145
  %2737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2738 = extractvalue %dx.types.CBufRet.f32 %2737, 0
  %2739 = call float @dx.op.unary.f32(i32 7, float %2738)  ; Saturate(value)
  %2740 = icmp eq i32 %44, 65535
  br i1 %2740, label %2835, label %2741

; <label>:2741                                    ; preds = %2729
  %2742 = lshr i32 %44, 1
  %2743 = shl i32 %2742, 2
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = and i32 %44, 1
  %2747 = icmp ne i32 %2746, 0
  %2748 = lshr i32 %2745, 16
  %2749 = and i32 %2745, 65535
  %2750 = select i1 %2747, i32 %2748, i32 %2749
  %2751 = icmp eq i32 %2750, 65535
  br i1 %2751, label %2831, label %2752

; <label>:2752                                    ; preds = %2741
  %2753 = mul nuw nsw i32 %2750, 40
  %2754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.f32 %2754, 0
  %2756 = extractvalue %dx.types.ResRet.f32 %2754, 1
  %2757 = extractvalue %dx.types.ResRet.f32 %2754, 2
  %2758 = add nuw nsw i32 %2753, 12
  %2759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2758, i32 undef)  ; BufferLoad(srv,index,wot)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2763 = add nuw nsw i32 %2753, 24
  %2764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2763, i32 undef)  ; BufferLoad(srv,index,wot)
  %2765 = extractvalue %dx.types.ResRet.f32 %2764, 0
  %2766 = extractvalue %dx.types.ResRet.f32 %2764, 1
  %2767 = extractvalue %dx.types.ResRet.f32 %2764, 2
  %2768 = add nuw nsw i32 %2753, 36
  %2769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2768, i32 undef)  ; BufferLoad(srv,index,wot)
  %2770 = extractvalue %dx.types.ResRet.f32 %2769, 0
  %2771 = fsub fast float %2734, %2755
  %2772 = fsub fast float %2735, %2756
  %2773 = fsub fast float %2736, %2757
  %2774 = fmul fast float %2770, %2771
  %2775 = fmul fast float %2770, %2772
  %2776 = fmul fast float %2770, %2773
  %2777 = call float @dx.op.unary.f32(i32 27, float %2774)  ; Round_ni(value)
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = fadd fast float %2777, 5.000000e-01
  %2781 = fadd fast float %2778, 5.000000e-01
  %2782 = fadd fast float %2779, 5.000000e-01
  %2783 = fmul fast float %2780, %2760
  %2784 = fmul fast float %2781, %2761
  %2785 = fmul fast float %2782, %2762
  %2786 = shl i32 %44, 2
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = add i32 %2788, 0
  %2790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2791 = call float @dx.op.unary.f32(i32 22, float %2783)  ; Frc(value)
  %2792 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2793 = call float @dx.op.unary.f32(i32 22, float %2785)  ; Frc(value)
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2790, %dx.types.Handle %40, float %2791, float %2792, float %2793, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  %2796 = extractvalue %dx.types.ResRet.f32 %2794, 1
  %2797 = extractvalue %dx.types.ResRet.f32 %2794, 2
  %2798 = fmul fast float %2795, 1.023000e+03
  %2799 = fmul fast float %2796, 1.023000e+03
  %2800 = fmul fast float %2797, 1.023000e+03
  %2801 = fadd fast float %2798, 5.000000e-01
  %2802 = fadd fast float %2799, 5.000000e-01
  %2803 = fadd fast float %2800, 5.000000e-01
  %2804 = call float @dx.op.unary.f32(i32 27, float %2801)  ; Round_ni(value)
  %2805 = call float @dx.op.unary.f32(i32 27, float %2802)  ; Round_ni(value)
  %2806 = call float @dx.op.unary.f32(i32 27, float %2803)  ; Round_ni(value)
  %2807 = fsub fast float %2774, %2777
  %2808 = fsub fast float %2775, %2778
  %2809 = fsub fast float %2776, %2779
  %2810 = fmul fast float %2807, 7.500000e-01
  %2811 = fmul fast float %2808, 7.500000e-01
  %2812 = fmul fast float %2809, 7.500000e-01
  %2813 = fadd fast float %2777, 1.250000e-01
  %2814 = fadd fast float %2813, %2810
  %2815 = fadd fast float %2814, %2804
  %2816 = fadd fast float %2778, 1.250000e-01
  %2817 = fadd fast float %2816, %2811
  %2818 = fadd fast float %2817, %2805
  %2819 = fadd fast float %2779, 1.250000e-01
  %2820 = fadd fast float %2819, %2812
  %2821 = fadd fast float %2820, %2806
  %2822 = fmul fast float %2815, %2765
  %2823 = fmul fast float %2818, %2766
  %2824 = fmul fast float %2821, %2767
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2786, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = add i32 %2826, 0
  %2828 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2827, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2828, %dx.types.Handle %38, float %2822, float %2823, float %2824, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2830 = extractvalue %dx.types.ResRet.f32 %2829, 0
  br label %2831

; <label>:2831                                    ; preds = %2752, %2741
  %2832 = phi float [ %2830, %2752 ], [ -1.000000e+00, %2741 ]
  %2833 = fadd fast float %2832, %2739
  %2834 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  br label %2835

; <label>:2835                                    ; preds = %2831, %2729
  %2836 = phi float [ %2834, %2831 ], [ %2739, %2729 ]
  %2837 = fmul fast float %2836, %422
  br label %2838

; <label>:2838                                    ; preds = %2835, %2724
  %2839 = phi float [ %2837, %2835 ], [ %422, %2724 ]
  %2840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2841 = extractvalue %dx.types.ResRet.i32 %2840, 0
  %2842 = and i32 %2841, 256
  %2843 = icmp eq i32 %2842, 0
  br i1 %2843, label %2890, label %2844

; <label>:2844                                    ; preds = %2838
  %2845 = add i32 %43, 468
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = add i32 %2847, 0
  %2849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2849, %dx.types.Handle %77, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  %2852 = add i32 %43, 148
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = shl i32 %2854, 4
  %2856 = and i32 %2855, 32752
  %2857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2856)  ; LegacyF16ToF32(value)
  %2858 = lshr i32 %2854, 7
  %2859 = and i32 %2858, 32752
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = fsub fast float 1.000000e+00, %2839
  %2862 = call float @dx.op.binary.f32(i32 35, float %2861, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2863 = bitcast float %2839 to i32
  %2864 = sitofp i32 %2863 to float
  %2865 = fadd fast float %2864, 0xC1CFBF8940000000
  %2866 = fmul fast float %2860, %2865
  %2867 = fadd fast float %2866, 0x41CFBF8940000000
  %2868 = fptosi float %2867 to i32
  %2869 = bitcast i32 %2868 to float
  %2870 = bitcast float %2862 to i32
  %2871 = sitofp i32 %2870 to float
  %2872 = fadd fast float %2871, 0xC1CFBF8940000000
  %2873 = fmul fast float %2872, %2860
  %2874 = fadd fast float %2873, 0x41CFBF8940000000
  %2875 = fptosi float %2874 to i32
  %2876 = bitcast i32 %2875 to float
  %2877 = fmul fast float %2869, %2857
  %2878 = fmul fast float %2876, %2857
  %2879 = fsub fast float %2862, %2877
  %2880 = fadd fast float %2878, %2862
  %2881 = call float @dx.op.unary.f32(i32 7, float %2879)  ; Saturate(value)
  %2882 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2883 = fsub fast float %2851, %2881
  %2884 = fsub fast float %2882, %2881
  %2885 = bitcast float %2884 to i32
  %2886 = sub nsw i32 2129859010, %2885
  %2887 = bitcast i32 %2886 to float
  %2888 = fmul fast float %2887, %2883
  %2889 = call float @dx.op.unary.f32(i32 7, float %2888)  ; Saturate(value)
  br label %2890

; <label>:2890                                    ; preds = %2844, %2838
  %2891 = phi float [ %2889, %2844 ], [ %2839, %2838 ]
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 128
  %2895 = icmp eq i32 %2894, 0
  br i1 %2895, label %2912, label %2896

; <label>:2896                                    ; preds = %2890
  %2897 = add i32 %43, 452
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = add i32 %2899, 0
  %2901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2902 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2901, %dx.types.Handle %77, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = and i32 %2905, 524288
  %2907 = icmp ne i32 %2906, 0
  %2908 = fcmp fast ogt float %2903, 0x3FE0101020000000
  %2909 = select i1 %2908, float 1.000000e+00, float 0.000000e+00
  %2910 = select i1 %2907, float %2909, float %2903
  %2911 = fmul fast float %2910, %2891
  br label %2912

; <label>:2912                                    ; preds = %2896, %2890
  %2913 = phi float [ %2911, %2896 ], [ %2891, %2890 ]
  %2914 = fcmp fast ult float %2913, 0x3F70101020000000
  br i1 %2914, label %3457, label %2915

; <label>:2915                                    ; preds = %2912
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = and i32 %2917, 16
  %2919 = icmp eq i32 %2918, 0
  br i1 %2919, label %3118, label %2920

; <label>:2920                                    ; preds = %2915
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2641, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = add i32 %43, 404
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2923, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = add i32 %2925, 0
  %2927 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2926, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2928 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2927, %dx.types.Handle %76, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2929 = extractvalue %dx.types.ResRet.f32 %2928, 0
  %2930 = extractvalue %dx.types.ResRet.f32 %2928, 1
  %2931 = extractvalue %dx.types.ResRet.f32 %2928, 2
  %2932 = extractvalue %dx.types.ResRet.f32 %2928, 3
  %2933 = and i32 %2922, 255
  %2934 = uitofp i32 %2933 to float
  %2935 = lshr i32 %2922, 8
  %2936 = and i32 %2935, 255
  %2937 = uitofp i32 %2936 to float
  %2938 = fmul fast float %2932, %2934
  %2939 = fadd fast float %2938, %2937
  %2940 = fmul fast float %2939, 0x3F70101000000000
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %2942, 512
  %2944 = icmp eq i32 %2943, 0
  br i1 %2944, label %2953, label %2945

; <label>:2945                                    ; preds = %2920
  %2946 = add i32 %43, 484
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = add i32 %2948, 0
  %2950 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2949, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2951 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2950, %dx.types.Handle %77, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 0
  br label %2953

; <label>:2953                                    ; preds = %2945, %2920
  %2954 = phi float [ %2952, %2945 ], [ 1.000000e+00, %2920 ]
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = and i32 %2956, 33554432
  %2958 = icmp eq i32 %2957, 0
  br i1 %2958, label %3065, label %2959

; <label>:2959                                    ; preds = %2953
  %2960 = add i32 %43, 272
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = and i32 %2962, 65535
  %2964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2963)  ; LegacyF16ToF32(value)
  %2965 = lshr i32 %2962, 16
  %2966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2965)  ; LegacyF16ToF32(value)
  %2967 = add i32 %43, 276
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = and i32 %2969, 65535
  %2971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2970)  ; LegacyF16ToF32(value)
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %2988 = add i32 %43, 268
  %2989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.i32 %2989, 0
  %2991 = lshr i32 %2990, 24
  %2992 = uitofp i32 %2991 to float
  %2993 = fmul fast float %2992, 0x3F70101020000000
  %2994 = and i32 %2990, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2990, 8
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = lshr i32 %2990, 16
  %3002 = and i32 %3001, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %3003, 0x3F70101020000000
  %3005 = bitcast float %2929 to i32
  %3006 = ashr i32 %3005, 1
  %3007 = sub nsw i32 1597463174, %3006
  %3008 = bitcast i32 %3007 to float
  %3009 = fmul fast float %2929, 5.000000e-01
  %3010 = fmul fast float %3008, %3008
  %3011 = fmul fast float %3010, %3009
  %3012 = fsub fast float 1.500000e+00, %3011
  %3013 = fmul fast float %3008, %2929
  %3014 = fmul fast float %3013, %3012
  %3015 = bitcast float %2930 to i32
  %3016 = ashr i32 %3015, 1
  %3017 = sub nsw i32 1597463174, %3016
  %3018 = bitcast i32 %3017 to float
  %3019 = fmul fast float %2930, 5.000000e-01
  %3020 = fmul fast float %3018, %3018
  %3021 = fmul fast float %3020, %3019
  %3022 = fsub fast float 1.500000e+00, %3021
  %3023 = fmul fast float %3018, %2930
  %3024 = fmul fast float %3023, %3022
  %3025 = bitcast float %2931 to i32
  %3026 = ashr i32 %3025, 1
  %3027 = sub nsw i32 1597463174, %3026
  %3028 = bitcast i32 %3027 to float
  %3029 = fmul fast float %2931, 5.000000e-01
  %3030 = fmul fast float %3028, %3028
  %3031 = fmul fast float %3030, %3029
  %3032 = fsub fast float 1.500000e+00, %3031
  %3033 = fmul fast float %3028, %2931
  %3034 = fmul fast float %3033, %3032
  %3035 = fsub fast float %3014, %2996
  %3036 = fsub fast float %3024, %3000
  %3037 = fsub fast float %3034, %3004
  %3038 = fmul fast float %3035, %2964
  %3039 = fmul fast float %3036, %2966
  %3040 = fmul fast float %3037, %2971
  %3041 = fadd fast float %3038, %2979
  %3042 = fadd fast float %3039, %2983
  %3043 = fadd fast float %3040, %2987
  %3044 = call float @dx.op.unary.f32(i32 7, float %3041)  ; Saturate(value)
  %3045 = call float @dx.op.unary.f32(i32 7, float %3042)  ; Saturate(value)
  %3046 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3047 = fmul fast float %3044, %3044
  %3048 = fmul fast float %3045, %3045
  %3049 = fmul fast float %3046, %3046
  %3050 = fsub fast float %3047, %2929
  %3051 = fsub fast float %3048, %2930
  %3052 = fsub fast float %3049, %2931
  %3053 = fmul fast float %3050, %2954
  %3054 = fmul fast float %3051, %2954
  %3055 = fmul fast float %3052, %2954
  %3056 = fadd fast float %3053, %2929
  %3057 = fadd fast float %3054, %2930
  %3058 = fadd fast float %3055, %2931
  %3059 = fadd fast float %2976, %2940
  %3060 = fsub fast float %3059, %2993
  %3061 = call float @dx.op.unary.f32(i32 7, float %3060)  ; Saturate(value)
  %3062 = fsub fast float %3061, %2940
  %3063 = fmul fast float %3062, %2954
  %3064 = fadd fast float %3063, %2940
  br label %3118

; <label>:3065                                    ; preds = %2953
  %3066 = and i32 %2956, 134217728
  %3067 = icmp eq i32 %3066, 0
  br i1 %3067, label %3102, label %3068

; <label>:3068                                    ; preds = %3065
  %3069 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3070 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3071 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %3072 = fadd fast float %3069, -5.000000e-01
  %3073 = fadd fast float %3070, -5.000000e-01
  %3074 = fadd fast float %3071, -5.000000e-01
  %3075 = fmul fast float %3072, %2954
  %3076 = fmul fast float %3073, %2954
  %3077 = fmul fast float %3074, %2954
  %3078 = fadd fast float %3075, 5.000000e-01
  %3079 = fadd fast float %3076, 5.000000e-01
  %3080 = fadd fast float %3077, 5.000000e-01
  %3081 = call float @dx.op.unary.f32(i32 24, float %2929)  ; Sqrt(value)
  %3082 = call float @dx.op.unary.f32(i32 24, float %2930)  ; Sqrt(value)
  %3083 = call float @dx.op.unary.f32(i32 24, float %2931)  ; Sqrt(value)
  %3084 = fmul fast float %3078, 2.000000e+00
  %3085 = fsub fast float 1.000000e+00, %3084
  %3086 = fmul fast float %3085, %3081
  %3087 = fadd fast float %3086, %3084
  %3088 = fmul fast float %3087, %3081
  %3089 = fmul fast float %3079, 2.000000e+00
  %3090 = fsub fast float 1.000000e+00, %3089
  %3091 = fmul fast float %3090, %3082
  %3092 = fadd fast float %3091, %3089
  %3093 = fmul fast float %3092, %3082
  %3094 = fmul fast float %3080, 2.000000e+00
  %3095 = fsub fast float 1.000000e+00, %3094
  %3096 = fmul fast float %3095, %3083
  %3097 = fadd fast float %3096, %3094
  %3098 = fmul fast float %3097, %3083
  %3099 = fmul fast float %3088, %3088
  %3100 = fmul fast float %3093, %3093
  %3101 = fmul fast float %3098, %3098
  br label %3118

; <label>:3102                                    ; preds = %3065
  %3103 = fmul fast float %343, %343
  %3104 = fmul fast float %347, %347
  %3105 = fmul fast float %351, %351
  %3106 = fadd fast float %3103, -1.000000e+00
  %3107 = fadd fast float %3104, -1.000000e+00
  %3108 = fadd fast float %3105, -1.000000e+00
  %3109 = fmul fast float %2954, %3106
  %3110 = fmul fast float %2954, %3107
  %3111 = fmul fast float %2954, %3108
  %3112 = fadd fast float %3109, 1.000000e+00
  %3113 = fadd fast float %3110, 1.000000e+00
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fmul fast float %3112, %2929
  %3116 = fmul fast float %3113, %2930
  %3117 = fmul fast float %3114, %2931
  br label %3118

; <label>:3118                                    ; preds = %3102, %3068, %2959, %2915
  %3119 = phi float [ %3064, %2959 ], [ %2940, %3068 ], [ %2940, %3102 ], [ 0x3FA23C0BE0000000, %2915 ]
  %3120 = phi float [ %3056, %2959 ], [ %3099, %3068 ], [ %3115, %3102 ], [ 1.000000e+00, %2915 ]
  %3121 = phi float [ %3057, %2959 ], [ %3100, %3068 ], [ %3116, %3102 ], [ 1.000000e+00, %2915 ]
  %3122 = phi float [ %3058, %2959 ], [ %3101, %3068 ], [ %3117, %3102 ], [ 1.000000e+00, %2915 ]
  %3123 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3124 = extractvalue %dx.types.CBufRet.i32 %3123, 1
  %3125 = and i32 %3124, 1
  %3126 = icmp ne i32 %3125, 0
  %3127 = add i32 %43, 356
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = and i32 %3129, 32
  %3131 = icmp ne i32 %3130, 0
  %3132 = and i1 %3126, %3131
  %3133 = select i1 %3132, float 1.000000e+00, float %3120
  %3134 = select i1 %3132, float 0x3FD3333340000000, float %3121
  %3135 = select i1 %3132, float 0x3FD3333340000000, float %3122
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, 32
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %3212, label %3140

; <label>:3140                                    ; preds = %3118
  %3141 = add i32 %43, 140
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = add i32 %43, 420
  %3145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3144, i32 undef)  ; BufferLoad(srv,index,wot)
  %3146 = extractvalue %dx.types.ResRet.i32 %3145, 0
  %3147 = add i32 %3146, 0
  %3148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3148, %dx.types.Handle %76, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3150 = extractvalue %dx.types.ResRet.f32 %3149, 0
  %3151 = extractvalue %dx.types.ResRet.f32 %3149, 1
  %3152 = extractvalue %dx.types.ResRet.f32 %3149, 2
  %3153 = extractvalue %dx.types.ResRet.f32 %3149, 3
  %3154 = and i32 %3143, 255
  %3155 = uitofp i32 %3154 to float
  %3156 = lshr i32 %3143, 8
  %3157 = and i32 %3156, 255
  %3158 = uitofp i32 %3157 to float
  %3159 = lshr i32 %3143, 16
  %3160 = and i32 %3159, 255
  %3161 = uitofp i32 %3160 to float
  %3162 = fmul fast float %3161, 0x3F70101000000000
  %3163 = fmul fast float %3150, %3155
  %3164 = fadd fast float %3163, %3158
  %3165 = fmul fast float %3164, 0x3F70101000000000
  %3166 = fadd fast float %3151, -5.000000e-01
  %3167 = fadd fast float %3153, -5.000000e-01
  %3168 = fmul fast float %3166, %3162
  %3169 = fmul fast float %3167, %3162
  %3170 = fadd fast float %3168, 5.000000e-01
  %3171 = fadd fast float %3169, 5.000000e-01
  %3172 = fmul fast float %3170, 2.000000e+00
  %3173 = fadd fast float %3172, -1.000000e+00
  %3174 = fmul fast float %3171, 2.000000e+00
  %3175 = fadd fast float %3174, -1.000000e+00
  %3176 = fadd fast float %3173, %3175
  %3177 = fmul fast float %3176, 5.000000e-01
  %3178 = fsub fast float %3173, %3175
  %3179 = fmul fast float %3178, 5.000000e-01
  %3180 = call float @dx.op.unary.f32(i32 6, float %3177)  ; FAbs(value)
  %3181 = fsub fast float 1.000000e+00, %3180
  %3182 = call float @dx.op.unary.f32(i32 6, float %3179)  ; FAbs(value)
  %3183 = fsub fast float %3181, %3182
  %3184 = call float @dx.op.dot3.f32(i32 55, float %3177, float %3179, float %3183, float %3177, float %3179, float %3183)  ; Dot3(ax,ay,az,bx,by,bz)
  %3185 = call float @dx.op.unary.f32(i32 25, float %3184)  ; Rsqrt(value)
  %3186 = fmul fast float %3177, %3185
  %3187 = fmul fast float %3179, %3185
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = and i32 %3189, 67108864
  %3191 = icmp eq i32 %3190, 0
  br i1 %3191, label %3208, label %3192

; <label>:3192                                    ; preds = %3140
  %3193 = add i32 %43, 328
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 65535
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2635, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 65535
  %3201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3200)  ; LegacyF16ToF32(value)
  %3202 = lshr i32 %3195, 16
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = fsub fast float %3165, %3203
  %3205 = fmul fast float %3204, %3197
  %3206 = fadd fast float %3205, %3201
  %3207 = call float @dx.op.unary.f32(i32 7, float %3206)  ; Saturate(value)
  br label %3208

; <label>:3208                                    ; preds = %3192, %3140
  %3209 = phi float [ %3207, %3192 ], [ %3165, %3140 ]
  %3210 = call float @dx.op.dot2.f32(i32 54, float %3186, float %3187, float %2629, float %2630)  ; Dot2(ax,ay,bx,by)
  %3211 = call float @dx.op.dot2.f32(i32 54, float %3186, float %3187, float %2631, float %2632)  ; Dot2(ax,ay,bx,by)
  br label %3212

; <label>:3212                                    ; preds = %3208, %3118
  %3213 = phi float [ %3209, %3208 ], [ 0x3FD6666660000000, %3118 ]
  %3214 = phi float [ %3210, %3208 ], [ 0.000000e+00, %3118 ]
  %3215 = phi float [ %3211, %3208 ], [ 0.000000e+00, %3118 ]
  %3216 = phi float [ %3152, %3208 ], [ 1.000000e+00, %3118 ]
  %3217 = add i32 %43, 208
  %3218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3217, i32 undef)  ; BufferLoad(srv,index,wot)
  %3219 = extractvalue %dx.types.ResRet.i32 %3218, 0
  %3220 = lshr i32 %3219, 22
  %3221 = shl nuw nsw i32 %3220, 5
  %3222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3221)  ; LegacyF16ToF32(value)
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 64
  %3226 = icmp eq i32 %3225, 0
  br i1 %3226, label %3260, label %3227

; <label>:3227                                    ; preds = %3212
  %3228 = add i32 %43, 436
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = add i32 %3230, 0
  %3232 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3231, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3234 = extractvalue %dx.types.ResRet.i32 %3233, 0
  %3235 = and i32 %3234, 131072
  %3236 = icmp eq i32 %3235, 0
  %3237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3232, %dx.types.Handle %76, float %2725, float %2726, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3238 = extractvalue %dx.types.ResRet.f32 %3237, 0
  %3239 = extractvalue %dx.types.ResRet.f32 %3237, 1
  %3240 = extractvalue %dx.types.ResRet.f32 %3237, 2
  %3241 = fmul fast float %3238, %331
  %3242 = fmul fast float %3239, %334
  %3243 = fmul fast float %3240, %337
  br i1 %3236, label %3250, label %3244

; <label>:3244                                    ; preds = %3227
  %3245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3246 = extractvalue %dx.types.CBufRet.f32 %3245, 0
  %3247 = fmul fast float %3246, %3241
  %3248 = fmul fast float %3246, %3242
  %3249 = fmul fast float %3246, %3243
  br label %3250

; <label>:3250                                    ; preds = %3244, %3227
  %3251 = phi float [ %3247, %3244 ], [ %3241, %3227 ]
  %3252 = phi float [ %3248, %3244 ], [ %3242, %3227 ]
  %3253 = phi float [ %3249, %3244 ], [ %3243, %3227 ]
  %3254 = fmul fast float %3251, %3222
  %3255 = select i1 %185, float %3254, float %3251
  %3256 = call float @dx.op.dot3.f32(i32 55, float %3255, float %3252, float %3253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3257 = select i1 %185, float 0.000000e+00, float %3251
  %3258 = select i1 %185, float %3256, float %3252
  %3259 = select i1 %185, float 0.000000e+00, float %3253
  br label %3260

; <label>:3260                                    ; preds = %3250, %3212
  %3261 = phi float [ %3257, %3250 ], [ 0.000000e+00, %3212 ]
  %3262 = phi float [ %3258, %3250 ], [ 0.000000e+00, %3212 ]
  %3263 = phi float [ %3259, %3250 ], [ 0.000000e+00, %3212 ]
  %3264 = add i32 %43, 144
  %3265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3264, i32 undef)  ; BufferLoad(srv,index,wot)
  %3266 = extractvalue %dx.types.ResRet.i32 %3265, 0
  %3267 = and i32 %3266, 255
  %3268 = uitofp i32 %3267 to float
  %3269 = lshr i32 %3266, 8
  %3270 = and i32 %3269, 255
  %3271 = uitofp i32 %3270 to float
  %3272 = call float @dx.op.dot3.f32(i32 55, float %3133, float %3134, float %3135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3273 = fmul fast float %3271, %3272
  %3274 = fadd fast float %3273, %3268
  %3275 = fmul fast float %3274, 0x3F70101020000000
  %3276 = call float @dx.op.unary.f32(i32 7, float %3275)  ; Saturate(value)
  br i1 %2617, label %3277, label %3285

; <label>:3277                                    ; preds = %3260
  %3278 = fsub fast float 1.000000e+00, %2913
  %3279 = fmul fast float %3278, %2606
  %3280 = fmul fast float %3278, %2607
  %3281 = fmul fast float %3278, %2608
  %3282 = fmul fast float %3278, %2609
  %3283 = fmul fast float %3278, %2610
  %3284 = fmul fast float %3278, %2611
  br label %3285

; <label>:3285                                    ; preds = %3277, %3260
  %3286 = phi float [ %3279, %3277 ], [ %2606, %3260 ]
  %3287 = phi float [ %3280, %3277 ], [ %2607, %3260 ]
  %3288 = phi float [ %3281, %3277 ], [ %2608, %3260 ]
  %3289 = phi float [ %3282, %3277 ], [ %2609, %3260 ]
  %3290 = phi float [ %3283, %3277 ], [ %2610, %3260 ]
  %3291 = phi float [ %3284, %3277 ], [ %2611, %3260 ]
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = and i32 %3293, 3
  %3295 = icmp eq i32 %3294, 3
  br i1 %3295, label %3374, label %3296

; <label>:3296                                    ; preds = %3285
  %3297 = and i32 %3293, 16
  %3298 = icmp ne i32 %3297, 0
  %3299 = select i1 %3298, float %2913, float 0.000000e+00
  %3300 = icmp eq i32 %3294, 0
  br i1 %3300, label %3301, label %3329

; <label>:3301                                    ; preds = %3296
  %3302 = and i32 %3293, 64
  %3303 = icmp ne i32 %3302, 0
  %3304 = select i1 %3303, float %2913, float 0.000000e+00
  %3305 = fsub fast float %3133, %3286
  %3306 = fsub fast float %3134, %3287
  %3307 = fsub fast float %3135, %3288
  %3308 = fmul fast float %3299, %3305
  %3309 = fmul fast float %3299, %3306
  %3310 = fmul fast float %3299, %3307
  %3311 = fadd fast float %3308, %3286
  %3312 = fadd fast float %3309, %3287
  %3313 = fadd fast float %3310, %3288
  %3314 = fsub fast float %3119, %2612
  %3315 = fmul fast float %3299, %3314
  %3316 = fadd fast float %3315, %2612
  %3317 = fsub fast float %3261, %3289
  %3318 = fsub fast float %3262, %3290
  %3319 = fsub fast float %3263, %3291
  %3320 = fmul fast float %3304, %3317
  %3321 = fmul fast float %3304, %3318
  %3322 = fmul fast float %3304, %3319
  %3323 = fadd fast float %3320, %3289
  %3324 = fadd fast float %3321, %3290
  %3325 = fadd fast float %3322, %3291
  %3326 = fsub fast float %3276, %2615
  %3327 = fmul fast float %3299, %3326
  %3328 = fadd fast float %3327, %2615
  br label %3374

; <label>:3329                                    ; preds = %3296
  %3330 = icmp eq i32 %3294, 1
  br i1 %3330, label %3331, label %3344

; <label>:3331                                    ; preds = %3329
  %3332 = fadd fast float %3133, -1.000000e+00
  %3333 = fadd fast float %3134, -1.000000e+00
  %3334 = fadd fast float %3135, -1.000000e+00
  %3335 = fmul fast float %3299, %3332
  %3336 = fmul fast float %3299, %3333
  %3337 = fmul fast float %3299, %3334
  %3338 = fadd fast float %3335, 1.000000e+00
  %3339 = fadd fast float %3336, 1.000000e+00
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fmul fast float %3338, %3286
  %3342 = fmul fast float %3339, %3287
  %3343 = fmul fast float %3340, %3288
  br label %3374

; <label>:3344                                    ; preds = %3329
  %3345 = icmp eq i32 %3294, 2
  br i1 %3345, label %3346, label %3374

; <label>:3346                                    ; preds = %3344
  %3347 = call float @dx.op.unary.f32(i32 24, float %3133)  ; Sqrt(value)
  %3348 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3349 = call float @dx.op.unary.f32(i32 24, float %3135)  ; Sqrt(value)
  %3350 = fadd fast float %3347, -5.000000e-01
  %3351 = fadd fast float %3348, -5.000000e-01
  %3352 = fadd fast float %3349, -5.000000e-01
  %3353 = fmul fast float %3350, %3299
  %3354 = fmul fast float %3351, %3299
  %3355 = fmul fast float %3352, %3299
  %3356 = fadd fast float %3353, 5.000000e-01
  %3357 = fadd fast float %3354, 5.000000e-01
  %3358 = fadd fast float %3355, 5.000000e-01
  %3359 = fmul fast float %3356, 2.000000e+00
  %3360 = fsub fast float 1.000000e+00, %3359
  %3361 = fmul fast float %3360, %3286
  %3362 = fadd fast float %3361, %3359
  %3363 = fmul fast float %3362, %3286
  %3364 = fmul fast float %3357, 2.000000e+00
  %3365 = fsub fast float 1.000000e+00, %3364
  %3366 = fmul fast float %3365, %3287
  %3367 = fadd fast float %3366, %3364
  %3368 = fmul fast float %3367, %3287
  %3369 = fmul fast float %3358, 2.000000e+00
  %3370 = fsub fast float 1.000000e+00, %3369
  %3371 = fmul fast float %3370, %3288
  %3372 = fadd fast float %3371, %3369
  %3373 = fmul fast float %3372, %3288
  br label %3374

; <label>:3374                                    ; preds = %3346, %3344, %3331, %3301, %3285
  %3375 = phi float [ %3286, %3285 ], [ %3363, %3346 ], [ %3286, %3344 ], [ %3341, %3331 ], [ %3311, %3301 ]
  %3376 = phi float [ %3287, %3285 ], [ %3368, %3346 ], [ %3287, %3344 ], [ %3342, %3331 ], [ %3312, %3301 ]
  %3377 = phi float [ %3288, %3285 ], [ %3373, %3346 ], [ %3288, %3344 ], [ %3343, %3331 ], [ %3313, %3301 ]
  %3378 = phi float [ %3289, %3285 ], [ %3289, %3346 ], [ %3289, %3344 ], [ %3289, %3331 ], [ %3323, %3301 ]
  %3379 = phi float [ %3290, %3285 ], [ %3290, %3346 ], [ %3290, %3344 ], [ %3290, %3331 ], [ %3324, %3301 ]
  %3380 = phi float [ %3291, %3285 ], [ %3291, %3346 ], [ %3291, %3344 ], [ %3291, %3331 ], [ %3325, %3301 ]
  %3381 = phi float [ %2612, %3285 ], [ %2612, %3346 ], [ %2612, %3344 ], [ %2612, %3331 ], [ %3316, %3301 ]
  %3382 = phi float [ %2615, %3285 ], [ %2615, %3346 ], [ %2615, %3344 ], [ %2615, %3331 ], [ %3328, %3301 ]
  %3383 = and i32 %3293, 12
  %3384 = icmp eq i32 %3383, 12
  br i1 %3384, label %3457, label %3385

; <label>:3385                                    ; preds = %3374
  %3386 = and i32 %3293, 2097184
  %3387 = icmp eq i32 %3386, 2097184
  %3388 = select i1 %3387, float %2913, float 0.000000e+00
  %3389 = and i32 %3293, 4194336
  %3390 = icmp eq i32 %3389, 4194336
  %3391 = select i1 %3390, float %2913, float 0.000000e+00
  %3392 = and i32 %3293, 8388640
  %3393 = icmp eq i32 %3392, 8388640
  %3394 = select i1 %3393, float %2913, float 0.000000e+00
  %3395 = icmp eq i32 %3383, 0
  br i1 %3395, label %3396, label %3409

; <label>:3396                                    ; preds = %3385
  %3397 = fsub fast float %3214, %2604
  %3398 = fsub fast float %3215, %2605
  %3399 = fmul fast float %3388, %3397
  %3400 = fmul fast float %3388, %3398
  %3401 = fadd fast float %3399, %2604
  %3402 = fadd fast float %3400, %2605
  %3403 = fsub fast float %3216, %2614
  %3404 = fmul fast float %3391, %3403
  %3405 = fadd fast float %3404, %2614
  %3406 = fsub fast float %3213, %2613
  %3407 = fmul fast float %3394, %3406
  %3408 = fadd fast float %3407, %2613
  br label %3457

; <label>:3409                                    ; preds = %3385
  %3410 = icmp eq i32 %3383, 4
  br i1 %3410, label %3411, label %3443

; <label>:3411                                    ; preds = %3409
  %3412 = fmul fast float %3388, %3214
  %3413 = fmul fast float %3388, %3215
  %3414 = fadd fast float %3412, %2604
  %3415 = fadd fast float %3413, %2605
  %3416 = call float @dx.op.binary.f32(i32 36, float %2614, float %3216)  ; FMin(a,b)
  %3417 = fsub fast float %3416, %2614
  %3418 = fmul fast float %3417, %3391
  %3419 = fadd fast float %3418, %2614
  %3420 = fadd fast float %3213, %2613
  %3421 = fmul fast float %3420, 0x3FF337FAE0000000
  %3422 = fmul fast float %2613, %2613
  %3423 = fmul fast float %3213, %3213
  %3424 = fadd fast float %3423, %3422
  %3425 = fmul fast float %3424, 0x3FE5152B00000000
  %3426 = fmul fast float %2613, 0xBFCC1F85E0000000
  %3427 = fmul fast float %3426, %3213
  %3428 = fadd fast float %3427, 0xBFE1363700000000
  %3429 = fadd fast float %3428, %3421
  %3430 = fsub fast float %3429, %3425
  %3431 = fmul fast float %3420, 0x3FBA6F0D00000000
  %3432 = fmul fast float %3424, 0x3FD0432880000000
  %3433 = fmul fast float %2613, 0xBFEF110800000000
  %3434 = fmul fast float %3433, %3213
  %3435 = fadd fast float %3434, 1.000000e+00
  %3436 = fsub fast float %3435, %3431
  %3437 = fadd fast float %3436, %3432
  %3438 = fdiv fast float %3430, %3437
  %3439 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3440 = fsub fast float %3439, %2613
  %3441 = fmul fast float %3440, %3394
  %3442 = fadd fast float %3441, %2613
  br label %3457

; <label>:3443                                    ; preds = %3409
  %3444 = icmp eq i32 %3383, 8
  br i1 %3444, label %3445, label %3457

; <label>:3445                                    ; preds = %3443
  %3446 = fmul fast float %3388, %3214
  %3447 = fmul fast float %3388, %3215
  %3448 = fadd fast float %3446, %2604
  %3449 = fadd fast float %3447, %2605
  %3450 = call float @dx.op.binary.f32(i32 36, float %2614, float %3216)  ; FMin(a,b)
  %3451 = fsub fast float %3450, %2614
  %3452 = fmul fast float %3451, %3391
  %3453 = fadd fast float %3452, %2614
  %3454 = fsub fast float %3213, %2613
  %3455 = fmul fast float %3394, %3454
  %3456 = fadd fast float %3455, %2613
  br label %3457

; <label>:3457                                    ; preds = %3445, %3443, %3411, %3396, %3374, %2912, %2616, %2603
  %3458 = phi float [ %2604, %3374 ], [ %2604, %2912 ], [ %2604, %2603 ], [ %2604, %2616 ], [ %3401, %3396 ], [ %3414, %3411 ], [ %2604, %3443 ], [ %3448, %3445 ]
  %3459 = phi float [ %2605, %3374 ], [ %2605, %2912 ], [ %2605, %2603 ], [ %2605, %2616 ], [ %3402, %3396 ], [ %3415, %3411 ], [ %2605, %3443 ], [ %3449, %3445 ]
  %3460 = phi float [ %3375, %3374 ], [ %2606, %2912 ], [ %2606, %2603 ], [ %2606, %2616 ], [ %3375, %3396 ], [ %3375, %3411 ], [ %3375, %3443 ], [ %3375, %3445 ]
  %3461 = phi float [ %3376, %3374 ], [ %2607, %2912 ], [ %2607, %2603 ], [ %2607, %2616 ], [ %3376, %3396 ], [ %3376, %3411 ], [ %3376, %3443 ], [ %3376, %3445 ]
  %3462 = phi float [ %3377, %3374 ], [ %2608, %2912 ], [ %2608, %2603 ], [ %2608, %2616 ], [ %3377, %3396 ], [ %3377, %3411 ], [ %3377, %3443 ], [ %3377, %3445 ]
  %3463 = phi float [ %3378, %3374 ], [ %2609, %2912 ], [ %2609, %2603 ], [ %2609, %2616 ], [ %3378, %3396 ], [ %3378, %3411 ], [ %3378, %3443 ], [ %3378, %3445 ]
  %3464 = phi float [ %3379, %3374 ], [ %2610, %2912 ], [ %2610, %2603 ], [ %2610, %2616 ], [ %3379, %3396 ], [ %3379, %3411 ], [ %3379, %3443 ], [ %3379, %3445 ]
  %3465 = phi float [ %3380, %3374 ], [ %2611, %2912 ], [ %2611, %2603 ], [ %2611, %2616 ], [ %3380, %3396 ], [ %3380, %3411 ], [ %3380, %3443 ], [ %3380, %3445 ]
  %3466 = phi float [ %3381, %3374 ], [ %2612, %2912 ], [ %2612, %2603 ], [ %2612, %2616 ], [ %3381, %3396 ], [ %3381, %3411 ], [ %3381, %3443 ], [ %3381, %3445 ]
  %3467 = phi float [ %2613, %3374 ], [ %2613, %2912 ], [ %2613, %2603 ], [ %2613, %2616 ], [ %3408, %3396 ], [ %3442, %3411 ], [ %2613, %3443 ], [ %3456, %3445 ]
  %3468 = phi float [ %2614, %3374 ], [ %2614, %2912 ], [ %2614, %2603 ], [ %2614, %2616 ], [ %3405, %3396 ], [ %3419, %3411 ], [ %2614, %3443 ], [ %3453, %3445 ]
  %3469 = phi float [ %3382, %3374 ], [ %2615, %2912 ], [ %2615, %2603 ], [ %2615, %2616 ], [ %3382, %3396 ], [ %3382, %3411 ], [ %3382, %3443 ], [ %3382, %3445 ]
  %3470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3471 = extractvalue %dx.types.CBufRet.f32 %3470, 0
  %3472 = call float @dx.op.dot2.f32(i32 54, float %3458, float %3459, float %3458, float %3459)  ; Dot2(ax,ay,bx,by)
  %3473 = fmul fast float %3472, 0x3FE3333340000000
  %3474 = fsub fast float 1.000000e+00, %3473
  %3475 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3459, float %3474, float %3458, float %3459, float %3474)  ; Dot3(ax,ay,az,bx,by,bz)
  %3476 = call float @dx.op.unary.f32(i32 25, float %3475)  ; Rsqrt(value)
  %3477 = fmul fast float %3476, %3458
  %3478 = fmul fast float %3476, %3459
  %3479 = fmul fast float %3474, %3476
  %3480 = fmul fast float %3479, %87
  %3481 = fmul fast float %3479, %88
  %3482 = fmul fast float %3479, %89
  %3483 = fmul fast float %3477, %61
  %3484 = fmul fast float %3477, %62
  %3485 = fmul fast float %3477, %63
  %3486 = fadd fast float %3480, %3483
  %3487 = fadd fast float %3481, %3484
  %3488 = fadd fast float %3482, %3485
  %3489 = fmul fast float %99, %3478
  %3490 = fmul fast float %100, %3478
  %3491 = fmul fast float %101, %3478
  %3492 = fadd fast float %3486, %3489
  %3493 = fadd fast float %3487, %3490
  %3494 = fadd fast float %3488, %3491
  %3495 = call float @dx.op.dot3.f32(i32 55, float %3492, float %3493, float %3494, float %3492, float %3493, float %3494)  ; Dot3(ax,ay,az,bx,by,bz)
  %3496 = call float @dx.op.unary.f32(i32 25, float %3495)  ; Rsqrt(value)
  %3497 = fmul fast float %3492, %3496
  %3498 = fmul fast float %3493, %3496
  %3499 = fmul fast float %3494, %3496
  %3500 = and i32 %45, 1
  %3501 = icmp eq i32 %3500, 0
  br i1 %3501, label %3502, label %4010

; <label>:3502                                    ; preds = %3457
  %3503 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3504 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3505 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3506 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3507 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3508 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3509 = fadd fast float %3503, %143
  %3510 = fadd fast float %3504, %144
  %3511 = fadd fast float %3505, %145
  %3512 = fadd fast float %3506, %143
  %3513 = fadd fast float %3507, %144
  %3514 = fadd fast float %3508, %145
  %3515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3516 = extractvalue %dx.types.CBufRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.CBufRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.CBufRet.f32 %3515, 2
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 2
  %3521 = extractvalue %dx.types.CBufRet.f32 %3519, 3
  %3522 = fmul fast float %3516, %80
  %3523 = fmul fast float %3522, %3520
  %3524 = fmul fast float %3517, %81
  %3525 = fmul fast float %3524, %3521
  %3526 = fptoui float %3523 to i32
  %3527 = fptoui float %3525 to i32
  %3528 = fadd fast float %3516, -1.000000e+00
  %3529 = fadd fast float %3517, -1.000000e+00
  %3530 = fptoui float %3528 to i32
  %3531 = fptoui float %3529 to i32
  %3532 = call i32 @dx.op.binary.i32(i32 40, i32 %3526, i32 %3530)  ; UMin(a,b)
  %3533 = call i32 @dx.op.binary.i32(i32 40, i32 %3527, i32 %3531)  ; UMin(a,b)
  %3534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3535 = extractvalue %dx.types.CBufRet.f32 %3534, 2
  %3536 = extractvalue %dx.types.CBufRet.f32 %3534, 3
  %3537 = fmul fast float %3535, %75
  %3538 = fsub fast float %3537, %3536
  %3539 = fadd fast float %3518, -1.000000e+00
  %3540 = call float @dx.op.binary.f32(i32 36, float %3538, float %3539)  ; FMin(a,b)
  %3541 = fptoui float %3540 to i32
  %3542 = fptoui float %3516 to i32
  %3543 = fptoui float %3517 to i32
  %3544 = mul i32 %3541, %3543
  %3545 = add i32 %3544, %3533
  %3546 = mul i32 %3545, %3542
  %3547 = add i32 %3546, %3532
  %3548 = shl i32 %3547, 2
  %3549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.i32 %3549, 0
  %3551 = and i32 %3550, 1023
  %3552 = lshr i32 %3550, 10
  %3553 = icmp eq i32 %3551, 0
  br i1 %3553, label %3979, label %3554

; <label>:3554                                    ; preds = %3502
  %3555 = and i32 %3550, 1023
  br label %3556

; <label>:3556                                    ; preds = %3682, %3554
  %3557 = phi i32 [ %3632, %3682 ], [ 0, %3554 ]
  %3558 = phi float [ %3683, %3682 ], [ 0.000000e+00, %3554 ]
  %3559 = phi float [ %3684, %3682 ], [ %3471, %3554 ]
  %3560 = phi float [ %3685, %3682 ], [ %3469, %3554 ]
  %3561 = phi float [ %3686, %3682 ], [ 0.000000e+00, %3554 ]
  %3562 = phi float [ %3687, %3682 ], [ 0.000000e+00, %3554 ]
  %3563 = phi float [ %3688, %3682 ], [ %3463, %3554 ]
  %3564 = phi float [ %3689, %3682 ], [ %3464, %3554 ]
  %3565 = phi float [ %3690, %3682 ], [ %3465, %3554 ]
  %3566 = phi float [ %3691, %3682 ], [ %3497, %3554 ]
  %3567 = phi float [ %3692, %3682 ], [ %3498, %3554 ]
  %3568 = phi float [ %3693, %3682 ], [ %3499, %3554 ]
  %3569 = phi float [ %3694, %3682 ], [ %3468, %3554 ]
  %3570 = phi float [ %3695, %3682 ], [ %3467, %3554 ]
  %3571 = phi float [ %3696, %3682 ], [ 0.000000e+00, %3554 ]
  %3572 = phi float [ %3697, %3682 ], [ %3466, %3554 ]
  %3573 = phi float [ %3698, %3682 ], [ %3460, %3554 ]
  %3574 = phi float [ %3699, %3682 ], [ %3461, %3554 ]
  %3575 = phi float [ %3700, %3682 ], [ %3462, %3554 ]
  %3576 = add nuw nsw i32 %3557, %3552
  %3577 = shl i32 %3576, 2
  %3578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3577, i32 undef)  ; BufferLoad(srv,index,wot)
  %3579 = extractvalue %dx.types.ResRet.i32 %3578, 0
  %3580 = shl i32 %3579, 8
  %3581 = or i32 %3580, 48
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = extractvalue %dx.types.ResRet.f32 %3582, 3
  %3587 = or i32 %3580, 64
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = extractvalue %dx.types.ResRet.i32 %3588, 1
  %3591 = or i32 %3580, 80
  %3592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.f32 %3592, 2
  %3594 = extractvalue %dx.types.ResRet.f32 %3592, 3
  %3595 = or i32 %3580, 96
  %3596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.f32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.f32 %3596, 1
  %3599 = extractvalue %dx.types.ResRet.f32 %3596, 2
  %3600 = extractvalue %dx.types.ResRet.f32 %3596, 3
  %3601 = or i32 %3580, 112
  %3602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3604 = or i32 %3580, 128
  %3605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.f32 %3605, 0
  %3607 = extractvalue %dx.types.ResRet.f32 %3605, 1
  %3608 = extractvalue %dx.types.ResRet.f32 %3605, 2
  %3609 = extractvalue %dx.types.ResRet.f32 %3605, 3
  %3610 = or i32 %3580, 144
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.ResRet.f32 %3611, 3
  %3616 = or i32 %3580, 160
  %3617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.ResRet.f32 %3617, 1
  %3620 = extractvalue %dx.types.ResRet.f32 %3617, 2
  %3621 = extractvalue %dx.types.ResRet.f32 %3617, 3
  %3622 = or i32 %3580, 192
  %3623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.i32 %3623, 0
  %3625 = or i32 %3580, 208
  %3626 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3625, i32 undef)  ; BufferLoad(srv,index,wot)
  %3627 = extractvalue %dx.types.ResRet.f32 %3626, 0
  %3628 = or i32 %3580, 248
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3632 = add nuw nsw i32 %3557, 1
  %3633 = bitcast float %3586 to i32
  %3634 = and i32 %3633, 512
  %3635 = icmp eq i32 %3634, 0
  %3636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.f32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.f32 %3636, 1
  %3639 = extractvalue %dx.types.ResRet.f32 %3636, 2
  %3640 = extractvalue %dx.types.ResRet.f32 %3636, 3
  %3641 = call float @dx.op.dot4.f32(i32 56, float %3637, float %3638, float %3639, float %3640, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3642 = or i32 %3580, 16
  %3643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = extractvalue %dx.types.ResRet.f32 %3643, 1
  %3646 = extractvalue %dx.types.ResRet.f32 %3643, 2
  %3647 = extractvalue %dx.types.ResRet.f32 %3643, 3
  %3648 = call float @dx.op.dot4.f32(i32 56, float %3644, float %3645, float %3646, float %3647, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3649 = or i32 %3580, 32
  %3650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = extractvalue %dx.types.ResRet.f32 %3650, 1
  %3653 = extractvalue %dx.types.ResRet.f32 %3650, 2
  %3654 = extractvalue %dx.types.ResRet.f32 %3650, 3
  %3655 = call float @dx.op.dot4.f32(i32 56, float %3651, float %3652, float %3653, float %3654, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3656 = call float @dx.op.unary.f32(i32 27, float %3641)  ; Round_ni(value)
  %3657 = call float @dx.op.unary.f32(i32 6, float %3656)  ; FAbs(value)
  %3658 = call float @dx.op.unary.f32(i32 27, float %3648)  ; Round_ni(value)
  %3659 = call float @dx.op.unary.f32(i32 6, float %3658)  ; FAbs(value)
  %3660 = call float @dx.op.unary.f32(i32 6, float %3655)  ; FAbs(value)
  %3661 = call float @dx.op.unary.f32(i32 27, float %3660)  ; Round_ni(value)
  %3662 = fadd fast float %3659, %3657
  %3663 = fadd fast float %3662, %3661
  %3664 = fcmp fast oeq float %3663, 0.000000e+00
  %3665 = call float @dx.op.dot4.f32(i32 56, float %3637, float %3638, float %3639, float %3640, float %3509, float %3510, float %3511, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3666 = call float @dx.op.dot4.f32(i32 56, float %3644, float %3645, float %3646, float %3647, float %3509, float %3510, float %3511, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3667 = call float @dx.op.dot4.f32(i32 56, float %3637, float %3638, float %3639, float %3640, float %3512, float %3513, float %3514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3668 = call float @dx.op.dot4.f32(i32 56, float %3644, float %3645, float %3646, float %3647, float %3512, float %3513, float %3514, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3669 = fsub fast float %3665, %3641
  %3670 = fsub fast float %3667, %3641
  %3671 = fsub fast float %3666, %3648
  %3672 = fsub fast float %3668, %3648
  %3673 = call float @dx.op.dot3.f32(i32 55, float %3583, float %3584, float %3585, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %3674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3675 = extractvalue %dx.types.CBufRet.f32 %3674, 2
  %3676 = fadd fast float %3675, %3673
  %3677 = call float @dx.op.unary.f32(i32 7, float %3676)  ; Saturate(value)
  %3678 = extractvalue %dx.types.CBufRet.f32 %3674, 0
  %3679 = fcmp fast ogt float %3677, %3678
  %3680 = and i1 %3664, %3679
  %3681 = and i1 %3635, %3680
  br i1 %3681, label %3702, label %3682

; <label>:3682                                    ; preds = %3965, %3783, %3702, %3556
  %3683 = phi float [ %3558, %3702 ], [ %3786, %3783 ], [ %3786, %3965 ], [ %3558, %3556 ]
  %3684 = phi float [ %3559, %3702 ], [ %3559, %3783 ], [ %3940, %3965 ], [ %3559, %3556 ]
  %3685 = phi float [ %3560, %3702 ], [ %3560, %3783 ], [ %3938, %3965 ], [ %3560, %3556 ]
  %3686 = phi float [ %3561, %3702 ], [ %3561, %3783 ], [ %3910, %3965 ], [ %3561, %3556 ]
  %3687 = phi float [ %3562, %3702 ], [ %3562, %3783 ], [ %3908, %3965 ], [ %3562, %3556 ]
  %3688 = phi float [ %3563, %3702 ], [ %3563, %3783 ], [ %3975, %3965 ], [ %3563, %3556 ]
  %3689 = phi float [ %3564, %3702 ], [ %3564, %3783 ], [ %3976, %3965 ], [ %3564, %3556 ]
  %3690 = phi float [ %3565, %3702 ], [ %3565, %3783 ], [ %3977, %3965 ], [ %3565, %3556 ]
  %3691 = phi float [ %3566, %3702 ], [ %3566, %3783 ], [ %3889, %3965 ], [ %3566, %3556 ]
  %3692 = phi float [ %3567, %3702 ], [ %3567, %3783 ], [ %3890, %3965 ], [ %3567, %3556 ]
  %3693 = phi float [ %3568, %3702 ], [ %3568, %3783 ], [ %3891, %3965 ], [ %3568, %3556 ]
  %3694 = phi float [ %3569, %3702 ], [ %3569, %3783 ], [ %3918, %3965 ], [ %3569, %3556 ]
  %3695 = phi float [ %3570, %3702 ], [ %3570, %3783 ], [ %3915, %3965 ], [ %3570, %3556 ]
  %3696 = phi float [ %3571, %3702 ], [ %3571, %3783 ], [ %3912, %3965 ], [ %3571, %3556 ]
  %3697 = phi float [ %3572, %3702 ], [ %3572, %3783 ], [ %3906, %3965 ], [ %3572, %3556 ]
  %3698 = phi float [ %3573, %3702 ], [ %3573, %3783 ], [ %3901, %3965 ], [ %3573, %3556 ]
  %3699 = phi float [ %3574, %3702 ], [ %3574, %3783 ], [ %3902, %3965 ], [ %3574, %3556 ]
  %3700 = phi float [ %3575, %3702 ], [ %3575, %3783 ], [ %3903, %3965 ], [ %3575, %3556 ]
  %3701 = icmp eq i32 %3632, %3555
  br i1 %3701, label %3978, label %3556

; <label>:3702                                    ; preds = %3556
  %3703 = extractvalue %dx.types.ResRet.f32 %3602, 3
  %3704 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3706 = extractvalue %dx.types.ResRet.f32 %3592, 1
  %3707 = extractvalue %dx.types.ResRet.f32 %3592, 0
  %3708 = extractvalue %dx.types.ResRet.i32 %3588, 3
  %3709 = extractvalue %dx.types.ResRet.i32 %3588, 2
  %3710 = add i32 %3708, 0
  %3711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3710, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3712 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3713 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3711, %dx.types.Handle %3712, float %3641, float %3648, float undef, float undef, i32 0, i32 0, i32 undef, float %3669, float %3671, float undef, float %3670, float %3672, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3714 = extractvalue %dx.types.ResRet.f32 %3713, 0
  %3715 = fmul fast float %3714, %3707
  %3716 = fadd fast float %3715, %3706
  %3717 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3718 = fmul fast float %3641, %3597
  %3719 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3648, float %3718)  ; FMad(a,b,c)
  %3720 = fadd fast float %3719, %3705
  %3721 = fmul fast float %3641, %3599
  %3722 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3648, float %3721)  ; FMad(a,b,c)
  %3723 = fadd fast float %3722, %3704
  %3724 = fmul fast float %3669, %3597
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3671, float %3724)  ; FMad(a,b,c)
  %3726 = fmul fast float %3669, %3599
  %3727 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3671, float %3726)  ; FMad(a,b,c)
  %3728 = fmul fast float %3670, %3597
  %3729 = call float @dx.op.tertiary.f32(i32 46, float %3598, float %3672, float %3728)  ; FMad(a,b,c)
  %3730 = fmul fast float %3670, %3599
  %3731 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3672, float %3730)  ; FMad(a,b,c)
  %3732 = add i32 %3709, 0
  %3733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3732, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3734 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3733, %dx.types.Handle %3712, float %3720, float %3723, float undef, float undef, i32 0, i32 0, i32 undef, float %3725, float %3727, float undef, float %3729, float %3731, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = and i32 %3633, 1024
  %3737 = icmp ne i32 %3736, 0
  %3738 = fcmp fast ogt float %3735, 0x3FE0101020000000
  %3739 = uitofp i1 %3738 to float
  %3740 = select i1 %3737, float %3739, float %3735
  %3741 = and i32 %3633, 8192
  %3742 = icmp ne i32 %3741, 0
  %3743 = select i1 %3742, float %3703, float 1.000000e+00
  %3744 = fmul fast float %3641, 2.000000e+00
  %3745 = fadd fast float %3744, -1.000000e+00
  %3746 = call float @dx.op.unary.f32(i32 6, float %3745)  ; FAbs(value)
  %3747 = fmul fast float %3746, %3630
  %3748 = fsub fast float %3747, %3630
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = fmul fast float %3648, 2.000000e+00
  %3751 = fadd fast float %3750, -1.000000e+00
  %3752 = call float @dx.op.unary.f32(i32 6, float %3751)  ; FAbs(value)
  %3753 = fmul fast float %3752, %3631
  %3754 = fsub fast float %3753, %3631
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fmul fast float %3660, %3593
  %3757 = fsub fast float %3756, %3593
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fmul fast float %3717, %3743
  %3760 = fmul fast float %3759, %3714
  %3761 = fmul fast float %3760, %3749
  %3762 = fmul fast float %3761, %3740
  %3763 = fmul fast float %3762, %3755
  %3764 = fmul fast float %3763, %3758
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 1
  %3767 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3768 = fsub fast float %3677, %3767
  %3769 = fmul fast float %3768, %3766
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3771 = fmul fast float %3764, %3594
  %3772 = fadd fast float %3764, %3594
  %3773 = fmul fast float %3772, %3603
  %3774 = fsub fast float %3773, %3603
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = and i32 %3633, 128
  %3777 = icmp ne i32 %3776, 0
  %3778 = select i1 %3777, float %3775, float %3771
  %3779 = fmul fast float %3778, %3770
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 0
  %3782 = fcmp fast ugt float %3779, %3781
  br i1 %3782, label %3783, label %3682

; <label>:3783                                    ; preds = %3702
  %3784 = select i1 %3742, float %3779, float 0.000000e+00
  %3785 = fadd fast float %3784, %3558
  %3786 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  br i1 %3742, label %3682, label %3787

; <label>:3787                                    ; preds = %3783
  %3788 = and i32 %3633, 4
  %3789 = and i32 %3633, 8
  %3790 = add i32 %3589, 0
  %3791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3790, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3793 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3791, %dx.types.Handle %3792, float %3720, float %3723, float undef, float undef, i32 0, i32 0, i32 undef, float %3725, float %3727, float undef, float %3729, float %3731, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = extractvalue %dx.types.ResRet.f32 %3793, 1
  %3796 = extractvalue %dx.types.ResRet.f32 %3793, 2
  %3797 = extractvalue %dx.types.ResRet.f32 %3793, 3
  %3798 = bitcast float %3615 to i32
  %3799 = and i32 %3798, 255
  %3800 = uitofp i32 %3799 to float
  %3801 = lshr i32 %3798, 8
  %3802 = and i32 %3801, 255
  %3803 = uitofp i32 %3802 to float
  %3804 = fmul fast float %3797, %3800
  %3805 = fadd fast float %3804, %3803
  %3806 = fmul fast float %3805, 0x3F70101000000000
  %3807 = add i32 %3590, 0
  %3808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3807, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3809 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3808, %dx.types.Handle %3792, float %3720, float %3723, float undef, float undef, i32 0, i32 0, i32 undef, float %3725, float %3727, float undef, float %3729, float %3731, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.ResRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.ResRet.f32 %3809, 2
  %3813 = extractvalue %dx.types.ResRet.f32 %3809, 3
  %3814 = bitcast float %3609 to i32
  %3815 = and i32 %3814, 255
  %3816 = uitofp i32 %3815 to float
  %3817 = lshr i32 %3814, 8
  %3818 = and i32 %3817, 255
  %3819 = uitofp i32 %3818 to float
  %3820 = lshr i32 %3814, 16
  %3821 = and i32 %3820, 255
  %3822 = uitofp i32 %3821 to float
  %3823 = fmul fast float %3822, 0x3F70101000000000
  %3824 = fmul fast float %3810, %3816
  %3825 = fadd fast float %3824, %3819
  %3826 = fmul fast float %3825, 0x3F70101000000000
  %3827 = fadd fast float %3811, -5.000000e-01
  %3828 = fadd fast float %3813, -5.000000e-01
  %3829 = fmul fast float %3827, %3823
  %3830 = fmul fast float %3828, %3823
  %3831 = fadd fast float %3829, 5.000000e-01
  %3832 = fadd fast float %3830, 5.000000e-01
  %3833 = fmul fast float %3794, %3618
  %3834 = fmul fast float %3795, %3619
  %3835 = fmul fast float %3796, %3620
  %3836 = fmul fast float %3831, 2.000000e+00
  %3837 = fadd fast float %3836, -1.000000e+00
  %3838 = fmul fast float %3832, 2.000000e+00
  %3839 = fadd fast float %3838, -1.000000e+00
  %3840 = fadd fast float %3837, %3839
  %3841 = fmul fast float %3840, 5.000000e-01
  %3842 = fsub fast float %3837, %3839
  %3843 = fmul fast float %3842, 5.000000e-01
  %3844 = call float @dx.op.unary.f32(i32 6, float %3841)  ; FAbs(value)
  %3845 = fsub fast float 1.000000e+00, %3844
  %3846 = call float @dx.op.unary.f32(i32 6, float %3843)  ; FAbs(value)
  %3847 = fsub fast float %3845, %3846
  %3848 = call float @dx.op.dot3.f32(i32 55, float %3841, float %3843, float %3847, float %3841, float %3843, float %3847)  ; Dot3(ax,ay,az,bx,by,bz)
  %3849 = call float @dx.op.unary.f32(i32 25, float %3848)  ; Rsqrt(value)
  %3850 = fmul fast float %3841, %3849
  %3851 = fmul fast float %3843, %3849
  %3852 = fmul fast float %3849, %3847
  %3853 = fmul fast float %3852, %3583
  %3854 = fmul fast float %3852, %3584
  %3855 = fmul fast float %3852, %3585
  %3856 = fmul fast float %3850, %3606
  %3857 = fmul fast float %3850, %3607
  %3858 = fmul fast float %3850, %3608
  %3859 = fadd fast float %3856, %3853
  %3860 = fadd fast float %3857, %3854
  %3861 = fadd fast float %3858, %3855
  %3862 = fmul fast float %3851, %3612
  %3863 = fmul fast float %3851, %3613
  %3864 = fmul fast float %3851, %3614
  %3865 = fadd fast float %3859, %3862
  %3866 = fadd fast float %3860, %3863
  %3867 = fadd fast float %3861, %3864
  %3868 = call float @dx.op.dot3.f32(i32 55, float %3865, float %3866, float %3867, float %3865, float %3866, float %3867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3869 = call float @dx.op.unary.f32(i32 25, float %3868)  ; Rsqrt(value)
  %3870 = fmul fast float %3865, %3869
  %3871 = fmul fast float %3866, %3869
  %3872 = fmul fast float %3867, %3869
  %3873 = icmp ne i32 %3789, 0
  %3874 = select i1 %3873, float 1.000000e+00, float 0.000000e+00
  %3875 = fmul fast float %3779, %3874
  %3876 = and i32 %3633, 1
  %3877 = icmp eq i32 %3876, 0
  br i1 %3877, label %3878, label %3882

; <label>:3878                                    ; preds = %3787
  %3879 = fsub fast float %3870, %3566
  %3880 = fsub fast float %3871, %3567
  %3881 = fsub fast float %3872, %3568
  br label %3882

; <label>:3882                                    ; preds = %3878, %3787
  %3883 = phi float [ %3879, %3878 ], [ %3870, %3787 ]
  %3884 = phi float [ %3880, %3878 ], [ %3871, %3787 ]
  %3885 = phi float [ %3881, %3878 ], [ %3872, %3787 ]
  %3886 = fmul float %3885, %3875
  %3887 = fmul float %3884, %3875
  %3888 = fmul float %3883, %3875
  %3889 = fadd fast float %3888, %3566
  %3890 = fadd fast float %3887, %3567
  %3891 = fadd fast float %3886, %3568
  %3892 = icmp ne i32 %3788, 0
  %3893 = select i1 %3892, float 1.000000e+00, float 0.000000e+00
  %3894 = fmul fast float %3779, %3893
  %3895 = fsub fast float %3833, %3573
  %3896 = fsub fast float %3834, %3574
  %3897 = fsub fast float %3835, %3575
  %3898 = fmul fast float %3895, %3894
  %3899 = fmul fast float %3896, %3894
  %3900 = fmul fast float %3897, %3894
  %3901 = fadd fast float %3898, %3573
  %3902 = fadd fast float %3899, %3574
  %3903 = fadd fast float %3900, %3575
  %3904 = fsub fast float %3806, %3572
  %3905 = fmul fast float %3904, %3894
  %3906 = fadd fast float %3905, %3572
  %3907 = fmul fast float %3894, %3562
  %3908 = fsub fast float %3562, %3907
  %3909 = fmul fast float %3894, %3561
  %3910 = fsub fast float %3561, %3909
  %3911 = fadd fast float %3779, %3571
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = fsub fast float %3826, %3570
  %3914 = fmul fast float %3913, %3875
  %3915 = fadd fast float %3914, %3570
  %3916 = fsub fast float %3812, %3569
  %3917 = fmul fast float %3916, %3875
  %3918 = fadd fast float %3917, %3569
  %3919 = call float @dx.op.dot3.f32(i32 55, float %3833, float %3834, float %3835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3921 = extractvalue %dx.types.CBufRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.CBufRet.f32 %3920, 1
  %3923 = fmul fast float %3922, %3919
  %3924 = fadd fast float %3923, %3921
  %3925 = call float @dx.op.unary.f32(i32 7, float %3924)  ; Saturate(value)
  %3926 = bitcast float %3621 to i32
  %3927 = and i32 %3926, 65535
  %3928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3927)  ; LegacyF16ToF32(value)
  %3929 = lshr i32 %3926, 16
  %3930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3929)  ; LegacyF16ToF32(value)
  %3931 = fcmp fast oge float %3928, 0.000000e+00
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3934 = select i1 %3931, float %3928, float %3933
  %3935 = fadd fast float %3934, %3930
  %3936 = fsub fast float %3925, %3560
  %3937 = fmul fast float %3936, %3779
  %3938 = fadd fast float %3937, %3560
  %3939 = fmul fast float %3935, %3779
  %3940 = call float @dx.op.binary.f32(i32 35, float %3559, float %3939)  ; FMax(a,b)
  %3941 = and i32 %3633, 16
  %3942 = icmp eq i32 %3941, 0
  br i1 %3942, label %3965, label %3943

; <label>:3943                                    ; preds = %3882
  %3944 = bitcast float %3627 to i32
  %3945 = add i32 %3624, 0
  %3946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3945, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3947 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3946, %dx.types.Handle %3792, float %3720, float %3723, float undef, float undef, i32 0, i32 0, i32 undef, float %3725, float %3727, float undef, float %3729, float %3731, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = and i32 %3944, 65535
  %3952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3951)  ; LegacyF16ToF32(value)
  %3953 = fmul fast float %3948, %3618
  %3954 = fmul fast float %3949, %3619
  %3955 = fmul fast float %3950, %3620
  %3956 = and i32 %3633, 16384
  %3957 = icmp ne i32 %3956, 0
  %3958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3959 = extractvalue %dx.types.CBufRet.f32 %3958, 0
  %3960 = select i1 %3957, float %3959, float 1.000000e+00
  %3961 = fmul fast float %3960, %3952
  %3962 = fmul fast float %3953, %3961
  %3963 = fmul fast float %3954, %3961
  %3964 = fmul fast float %3955, %3961
  br label %3965

; <label>:3965                                    ; preds = %3943, %3882
  %3966 = phi float [ %3962, %3943 ], [ 0.000000e+00, %3882 ]
  %3967 = phi float [ %3963, %3943 ], [ 0.000000e+00, %3882 ]
  %3968 = phi float [ %3964, %3943 ], [ 0.000000e+00, %3882 ]
  %3969 = fsub fast float %3966, %3563
  %3970 = fsub fast float %3967, %3564
  %3971 = fsub fast float %3968, %3565
  %3972 = fmul fast float %3969, %3779
  %3973 = fmul fast float %3970, %3779
  %3974 = fmul fast float %3971, %3779
  %3975 = fadd fast float %3972, %3563
  %3976 = fadd fast float %3973, %3564
  %3977 = fadd fast float %3974, %3565
  br label %3682

; <label>:3978                                    ; preds = %3682
  br label %3979

; <label>:3979                                    ; preds = %3978, %3502
  %3980 = phi float [ 0.000000e+00, %3502 ], [ %3683, %3978 ]
  %3981 = phi float [ %3471, %3502 ], [ %3684, %3978 ]
  %3982 = phi float [ %3469, %3502 ], [ %3685, %3978 ]
  %3983 = phi float [ 0.000000e+00, %3502 ], [ %3686, %3978 ]
  %3984 = phi float [ 0.000000e+00, %3502 ], [ %3687, %3978 ]
  %3985 = phi float [ %3463, %3502 ], [ %3688, %3978 ]
  %3986 = phi float [ %3464, %3502 ], [ %3689, %3978 ]
  %3987 = phi float [ %3465, %3502 ], [ %3690, %3978 ]
  %3988 = phi float [ %3497, %3502 ], [ %3691, %3978 ]
  %3989 = phi float [ %3498, %3502 ], [ %3692, %3978 ]
  %3990 = phi float [ %3499, %3502 ], [ %3693, %3978 ]
  %3991 = phi float [ %3468, %3502 ], [ %3694, %3978 ]
  %3992 = phi float [ %3467, %3502 ], [ %3695, %3978 ]
  %3993 = phi float [ 0.000000e+00, %3502 ], [ %3696, %3978 ]
  %3994 = phi float [ %3466, %3502 ], [ %3697, %3978 ]
  %3995 = phi float [ %3460, %3502 ], [ %3698, %3978 ]
  %3996 = phi float [ %3461, %3502 ], [ %3699, %3978 ]
  %3997 = phi float [ %3462, %3502 ], [ %3700, %3978 ]
  %3998 = call float @dx.op.dot3.f32(i32 55, float %3988, float %3989, float %3990, float %3988, float %3989, float %3990)  ; Dot3(ax,ay,az,bx,by,bz)
  %3999 = call float @dx.op.unary.f32(i32 25, float %3998)  ; Rsqrt(value)
  %4000 = fmul fast float %3999, %3988
  %4001 = fmul fast float %3999, %3989
  %4002 = fmul fast float %3999, %3990
  %4003 = fadd fast float %3993, %904
  %4004 = call float @dx.op.unary.f32(i32 7, float %4003)  ; Saturate(value)
  %4005 = call float @dx.op.dot3.f32(i32 55, float %4000, float %4001, float %4002, float %4000, float %4001, float %4002)  ; Dot3(ax,ay,az,bx,by,bz)
  %4006 = call float @dx.op.unary.f32(i32 25, float %4005)  ; Rsqrt(value)
  %4007 = fmul fast float %4006, %4000
  %4008 = fmul fast float %4006, %4001
  %4009 = fmul fast float %4006, %4002
  br label %4010

; <label>:4010                                    ; preds = %3979, %3457
  %4011 = phi float [ %4007, %3979 ], [ %3497, %3457 ]
  %4012 = phi float [ %4008, %3979 ], [ %3498, %3457 ]
  %4013 = phi float [ %4009, %3979 ], [ %3499, %3457 ]
  %4014 = phi float [ %3995, %3979 ], [ %3460, %3457 ]
  %4015 = phi float [ %3996, %3979 ], [ %3461, %3457 ]
  %4016 = phi float [ %3997, %3979 ], [ %3462, %3457 ]
  %4017 = phi float [ %3985, %3979 ], [ %3463, %3457 ]
  %4018 = phi float [ %3986, %3979 ], [ %3464, %3457 ]
  %4019 = phi float [ %3987, %3979 ], [ %3465, %3457 ]
  %4020 = phi float [ %3994, %3979 ], [ %3466, %3457 ]
  %4021 = phi float [ %4004, %3979 ], [ %904, %3457 ]
  %4022 = phi float [ %3992, %3979 ], [ %3467, %3457 ]
  %4023 = phi float [ %3991, %3979 ], [ %3468, %3457 ]
  %4024 = phi float [ %3984, %3979 ], [ 0.000000e+00, %3457 ]
  %4025 = phi float [ %3983, %3979 ], [ 0.000000e+00, %3457 ]
  %4026 = phi float [ %3980, %3979 ], [ 0.000000e+00, %3457 ]
  %4027 = phi float [ %3981, %3979 ], [ %3471, %3457 ]
  %4028 = phi float [ %3982, %3979 ], [ %3469, %3457 ]
  %4029 = fadd fast float %4020, 0xBFB99999A0000000
  %4030 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4031 = fmul fast float %4030, 0x3FF1C71C80000000
  %4032 = call float @dx.op.binary.f32(i32 36, float %4020, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4033 = fsub fast float 1.000000e+00, %4031
  %4034 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4035 = fmul fast float %4034, %4014
  %4036 = fmul fast float %4034, %4015
  %4037 = fmul fast float %4034, %4016
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4041 = fmul fast float %4031, %4014
  %4042 = fmul fast float %4031, %4015
  %4043 = fmul fast float %4031, %4016
  %4044 = fadd fast float %4041, %4032
  %4045 = fadd fast float %4042, %4032
  %4046 = fadd fast float %4043, %4032
  %4047 = call float @dx.op.unary.f32(i32 7, float %4044)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4049 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4050 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.i32 %4051, 3
  %4053 = and i32 %4052, 8
  %4054 = icmp ne i32 %4053, 0
  %4055 = call float @dx.op.binary.f32(i32 35, float %4038, float %4014)  ; FMax(a,b)
  %4056 = call float @dx.op.binary.f32(i32 35, float %4039, float %4014)  ; FMax(a,b)
  %4057 = call float @dx.op.binary.f32(i32 35, float %4040, float %4014)  ; FMax(a,b)
  %4058 = call float @dx.op.dot3.f32(i32 55, float %4038, float %4039, float %4040, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4059 = select i1 %185, float %4014, float %4038
  %4060 = select i1 %185, float %4058, float %4039
  %4061 = select i1 %185, float 1.000000e+00, float %4040
  %4062 = select i1 %4054, float %4055, float %4059
  %4063 = select i1 %4054, float %4056, float %4060
  %4064 = select i1 %4054, float %4057, float %4061
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4068 = extractvalue %dx.types.CBufRet.f32 %4065, 2
  %4069 = fadd fast float %4066, %143
  %4070 = fadd fast float %4067, %144
  %4071 = fadd fast float %4068, %145
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = fsub fast float %4069, %4073
  %4076 = fsub fast float %4070, %4074
  %4077 = fmul fast float %4075, %4075
  %4078 = fmul fast float %4076, %4076
  %4079 = fadd fast float %4077, %4078
  %4080 = call float @dx.op.unary.f32(i32 24, float %4079)  ; Sqrt(value)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4072, 2
  %4082 = fcmp fast olt float %4080, %4081
  br i1 %4082, label %4083, label %4150

; <label>:4083                                    ; preds = %4010
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 0
  %4090 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4091 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4092 = extractvalue %dx.types.CBufRet.f32 %4088, 1
  %4093 = extractvalue %dx.types.CBufRet.f32 %4084, 3
  %4094 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4095 = extractvalue %dx.types.CBufRet.f32 %4088, 3
  %4096 = fadd fast float %4093, %4069
  %4097 = fadd fast float %4094, %4070
  %4098 = fadd fast float %4095, %4071
  %4099 = fmul fast float %4096, %4085
  %4100 = call float @dx.op.tertiary.f32(i32 46, float %4097, float %4087, float %4099)  ; FMad(a,b,c)
  %4101 = call float @dx.op.tertiary.f32(i32 46, float %4098, float %4089, float %4100)  ; FMad(a,b,c)
  %4102 = fmul fast float %4096, %4090
  %4103 = call float @dx.op.tertiary.f32(i32 46, float %4097, float %4091, float %4102)  ; FMad(a,b,c)
  %4104 = call float @dx.op.tertiary.f32(i32 46, float %4098, float %4092, float %4103)  ; FMad(a,b,c)
  %4105 = fsub fast float %4101, %4093
  %4106 = fsub fast float %4104, %4094
  %4107 = fsub fast float %4105, %4073
  %4108 = fadd fast float %4107, %4081
  %4109 = fsub fast float %4106, %4074
  %4110 = fadd fast float %4109, %4081
  %4111 = extractvalue %dx.types.CBufRet.f32 %4072, 3
  %4112 = fmul fast float %4108, %4111
  %4113 = fmul fast float %4110, %4111
  %4114 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4115 = call float @dx.op.unary.f32(i32 7, float %4113)  ; Saturate(value)
  %4116 = fsub fast float 1.000000e+00, %4114
  %4117 = fsub fast float 1.000000e+00, %4115
  %4118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4116, float %4117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4119 = extractvalue %dx.types.ResRet.f32 %4118, 0
  %4120 = fcmp fast ugt float %4119, 0.000000e+00
  br i1 %4120, label %4121, label %4424

; <label>:4121                                    ; preds = %4083
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 2
  %4124 = fmul fast float %4123, %4119
  %4125 = extractvalue %dx.types.CBufRet.f32 %4122, 3
  %4126 = fadd fast float %4125, %4124
  %4127 = extractvalue %dx.types.CBufRet.f32 %4088, 2
  %4128 = fadd fast float %4126, %4095
  %4129 = fmul fast float %4101, %4089
  %4130 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4092, float %4129)  ; FMad(a,b,c)
  %4131 = call float @dx.op.tertiary.f32(i32 46, float %4128, float %4127, float %4130)  ; FMad(a,b,c)
  %4132 = fsub fast float %4131, %4095
  %4133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4134 = extractvalue %dx.types.CBufRet.f32 %4133, 2
  %4135 = fsub fast float %4132, %4134
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4116, float %4117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = extractvalue %dx.types.ResRet.f32 %4136, 1
  %4139 = extractvalue %dx.types.ResRet.f32 %4136, 2
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4116, float %4117, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = extractvalue %dx.types.ResRet.f32 %4140, 1
  %4143 = extractvalue %dx.types.ResRet.f32 %4140, 2
  %4144 = fadd fast float %4141, %4137
  %4145 = fmul fast float %4144, 0x3F847AE140000000
  %4146 = fadd fast float %4142, %4138
  %4147 = fmul fast float %4146, 0x3F847AE140000000
  %4148 = fadd fast float %4143, %4139
  %4149 = fmul fast float %4148, 0x3F847AE140000000
  br label %4424

; <label>:4150                                    ; preds = %4010
  %4151 = and i32 %161, 1
  %4152 = icmp eq i32 %4151, 0
  br i1 %4152, label %4424, label %4153

; <label>:4153                                    ; preds = %4150
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4159 = extractvalue %dx.types.CBufRet.f32 %4158, 0
  %4160 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4161 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4162 = extractvalue %dx.types.CBufRet.f32 %4158, 1
  %4163 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4164 = extractvalue %dx.types.CBufRet.f32 %4156, 3
  %4165 = extractvalue %dx.types.CBufRet.f32 %4158, 3
  %4166 = fadd fast float %4163, %4069
  %4167 = fadd fast float %4164, %4070
  %4168 = fadd fast float %4165, %4071
  %4169 = fmul fast float %4166, %4155
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4167, float %4157, float %4169)  ; FMad(a,b,c)
  %4171 = call float @dx.op.tertiary.f32(i32 46, float %4168, float %4159, float %4170)  ; FMad(a,b,c)
  %4172 = fmul fast float %4166, %4160
  %4173 = call float @dx.op.tertiary.f32(i32 46, float %4167, float %4161, float %4172)  ; FMad(a,b,c)
  %4174 = call float @dx.op.tertiary.f32(i32 46, float %4168, float %4162, float %4173)  ; FMad(a,b,c)
  %4175 = fsub fast float %4171, %4163
  %4176 = fsub fast float %4174, %4164
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4180 = extractvalue %dx.types.CBufRet.f32 %4177, 2
  %4181 = extractvalue %dx.types.CBufRet.f32 %4177, 3
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4184 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4185 = extractvalue %dx.types.CBufRet.i32 %4184, 0
  %4186 = extractvalue %dx.types.CBufRet.i32 %4184, 1
  %4187 = udiv i32 %4186, %4185
  %4188 = fsub fast float %4175, %4178
  %4189 = fsub fast float %4176, %4179
  %4190 = call float @dx.op.binary.f32(i32 35, float %4188, float 0.000000e+00)  ; FMax(a,b)
  %4191 = call float @dx.op.binary.f32(i32 35, float %4189, float 0.000000e+00)  ; FMax(a,b)
  %4192 = call float @dx.op.binary.f32(i32 36, float %4190, float %4180)  ; FMin(a,b)
  %4193 = call float @dx.op.binary.f32(i32 36, float %4191, float %4181)  ; FMin(a,b)
  %4194 = add i32 %4185, -1
  %4195 = add i32 %4187, -1
  %4196 = fmul fast float %4192, %4183
  %4197 = fmul fast float %4193, %4183
  %4198 = fptoui float %4196 to i32
  %4199 = fptoui float %4197 to i32
  %4200 = call i32 @dx.op.binary.i32(i32 40, i32 %4198, i32 %4194)  ; UMin(a,b)
  %4201 = call i32 @dx.op.binary.i32(i32 40, i32 %4199, i32 %4195)  ; UMin(a,b)
  %4202 = mul i32 %4201, %4185
  %4203 = add i32 %4202, %4200
  %4204 = shl i32 %4203, 2
  %4205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4204, i32 undef)  ; BufferLoad(srv,index,wot)
  %4206 = extractvalue %dx.types.ResRet.i32 %4205, 0
  %4207 = icmp eq i32 %4206, -1
  br i1 %4207, label %4424, label %4208

; <label>:4208                                    ; preds = %4153
  %4209 = mul i32 %4206, 148
  %4210 = add i32 %4209, 4
  %4211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.f32 %4211, 0
  %4213 = add i32 %4209, 8
  %4214 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4213, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = add i32 %4209, 36
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = add i32 %4209, 60
  %4220 = add i32 %4209, 92
  %4221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.i32 %4221, 0
  %4223 = add i32 %4209, 116
  %4224 = fsub fast float %4175, %4212
  %4225 = fsub fast float %4176, %4215
  %4226 = fmul fast float %4183, %4224
  %4227 = fmul fast float %4183, %4225
  %4228 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4229 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4230 = fsub fast float 1.000000e+00, %4229
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 2
  %4233 = call float @dx.op.unary.f32(i32 83, float %4228)  ; DerivCoarseX(value)
  %4234 = call float @dx.op.unary.f32(i32 83, float %4230)  ; DerivCoarseX(value)
  %4235 = call float @dx.op.unary.f32(i32 84, float %4228)  ; DerivCoarseY(value)
  %4236 = call float @dx.op.unary.f32(i32 84, float %4230)  ; DerivCoarseY(value)
  %4237 = fmul fast float %4233, %4232
  %4238 = fmul fast float %4234, %4232
  %4239 = fmul fast float %4235, %4232
  %4240 = fmul fast float %4236, %4232
  %4241 = call float @dx.op.dot2.f32(i32 54, float %4239, float %4240, float %4239, float %4240)  ; Dot2(ax,ay,bx,by)
  %4242 = call float @dx.op.dot2.f32(i32 54, float %4237, float %4238, float %4237, float %4238)  ; Dot2(ax,ay,bx,by)
  %4243 = call float @dx.op.binary.f32(i32 35, float %4242, float %4241)  ; FMax(a,b)
  %4244 = call float @dx.op.unary.f32(i32 23, float %4243)  ; Log(value)
  %4245 = fmul fast float %4244, 5.000000e-01
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 1
  %4248 = fadd fast float %4247, %4245
  %4249 = call float @dx.op.binary.f32(i32 35, float %4248, float 0.000000e+00)  ; FMax(a,b)
  %4250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.f32 %4250, 3
  %4252 = fadd fast float %4251, %4249
  %4253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.f32 %4253, 3
  %4255 = fadd fast float %4252, %4254
  %4256 = add i32 %4222, 0
  %4257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4258 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4257, i32 0)  ; GetDimensions(handle,mipLevel)
  %4259 = extractvalue %dx.types.Dimensions %4258, 0
  %4260 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4259)  ; FirstbitLo(value)
  %4261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.i32 %4261, 1
  %4263 = sub nsw i32 %4262, %4260
  %4264 = sitofp i32 %4263 to float
  %4265 = fsub fast float %4255, %4264
  %4266 = call float @dx.op.binary.f32(i32 35, float %4265, float 0.000000e+00)  ; FMax(a,b)
  %4267 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4257, %dx.types.Handle %37, float %4228, float %4230, float %4218, float undef, i32 0, i32 0, i32 undef, float %4266)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4268 = extractvalue %dx.types.ResRet.f32 %4267, 0
  %4269 = fcmp ule float %4268, 0x3FE0101020000000
  %4270 = extractvalue %dx.types.CBufRet.i32 %4261, 0
  %4271 = and i32 %4270, 128
  %4272 = icmp ne i32 %4271, 0
  %4273 = and i1 %4269, %4272
  br i1 %4273, label %4424, label %4274

; <label>:4274                                    ; preds = %4208
  %4275 = add i32 %4209, 20
  %4276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4275, i32 undef)  ; BufferLoad(srv,index,wot)
  %4277 = extractvalue %dx.types.ResRet.f32 %4276, 0
  %4278 = add i32 %4209, 24
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = add i32 %4209, 40
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = add i32 %4209, 96
  %4285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.i32 %4285, 0
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 2
  %4289 = fmul fast float %4288, %4228
  %4290 = fmul fast float %4288, %4230
  %4291 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4292 = fadd fast float %4289, %4291
  %4293 = fadd fast float %4290, %4291
  %4294 = add i32 %4286, 0
  %4295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4294, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4296 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4295, i32 0)  ; GetDimensions(handle,mipLevel)
  %4297 = extractvalue %dx.types.Dimensions %4296, 0
  %4298 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4297)  ; FirstbitLo(value)
  %4299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.i32 %4299, 1
  %4301 = sub nsw i32 %4300, %4298
  %4302 = sitofp i32 %4301 to float
  %4303 = fsub fast float %4252, %4302
  %4304 = call float @dx.op.binary.f32(i32 35, float %4303, float 0.000000e+00)  ; FMax(a,b)
  %4305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4295, %dx.types.Handle %37, float %4292, float %4293, float %4283, float undef, i32 0, i32 0, i32 undef, float %4304)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = fmul fast float %4306, %4277
  %4308 = fadd fast float %4307, %4280
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = extractvalue %dx.types.CBufRet.f32 %4309, 1
  %4312 = extractvalue %dx.types.CBufRet.f32 %4309, 2
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 3
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4317 = extractvalue %dx.types.CBufRet.f32 %4309, 3
  %4318 = fadd fast float %4314, %4175
  %4319 = fadd fast float %4316, %4176
  %4320 = fadd fast float %4308, %4317
  %4321 = fmul fast float %4318, %4310
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4311, float %4321)  ; FMad(a,b,c)
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4312, float %4322)  ; FMad(a,b,c)
  %4324 = fsub fast float %4323, %4317
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 2
  %4327 = fsub fast float %4324, %4326
  %4328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.i32 %4328, 0
  %4330 = call i32 @dx.op.binary.i32(i32 40, i32 %4206, i32 %4329)  ; UMin(a,b)
  %4331 = mul i32 %4330, 36
  %4332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4331, i32 undef)  ; BufferLoad(srv,index,wot)
  %4333 = extractvalue %dx.types.ResRet.i32 %4332, 0
  %4334 = add i32 %4331, 4
  %4335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4336 = extractvalue %dx.types.CBufRet.f32 %4335, 0
  %4337 = fmul fast float %4336, %4228
  %4338 = fmul fast float %4336, %4230
  %4339 = extractvalue %dx.types.CBufRet.f32 %4335, 1
  %4340 = fadd fast float %4337, %4339
  %4341 = fadd fast float %4338, %4339
  %4342 = icmp eq i32 %4333, 0
  br i1 %4342, label %4411, label %4343

; <label>:4343                                    ; preds = %4274
  br label %4344

; <label>:4344                                    ; preds = %4401, %4343
  %4345 = phi float [ %4402, %4401 ], [ 0.000000e+00, %4343 ]
  %4346 = phi float [ %4403, %4401 ], [ 0.000000e+00, %4343 ]
  %4347 = phi float [ %4404, %4401 ], [ 0.000000e+00, %4343 ]
  %4348 = phi float [ %4405, %4401 ], [ 0.000000e+00, %4343 ]
  %4349 = phi float [ %4406, %4401 ], [ 0.000000e+00, %4343 ]
  %4350 = phi float [ %4407, %4401 ], [ 0.000000e+00, %4343 ]
  %4351 = phi i32 [ %4408, %4401 ], [ 0, %4343 ]
  %4352 = shl i32 %4351, 2
  %4353 = add i32 %4219, %4352
  %4354 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4353, i32 undef)  ; BufferLoad(srv,index,wot)
  %4355 = extractvalue %dx.types.ResRet.f32 %4354, 0
  %4356 = add i32 %4223, %4352
  %4357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4356, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.i32 %4357, 0
  %4359 = add i32 %4358, 0
  %4360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4359, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4361 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4360, i32 0)  ; GetDimensions(handle,mipLevel)
  %4362 = extractvalue %dx.types.Dimensions %4361, 0
  %4363 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4362)  ; FirstbitLo(value)
  %4364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.i32 %4364, 1
  %4366 = sub nsw i32 %4365, %4363
  %4367 = sitofp i32 %4366 to float
  %4368 = fsub fast float %4252, %4367
  %4369 = call float @dx.op.binary.f32(i32 35, float %4368, float 0.000000e+00)  ; FMax(a,b)
  %4370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4360, %dx.types.Handle %37, float %4340, float %4341, float %4355, float undef, i32 0, i32 0, i32 undef, float %4369)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = fcmp fast ogt float %4371, 0.000000e+00
  br i1 %4372, label %4373, label %4401

; <label>:4373                                    ; preds = %4344
  %4374 = add i32 %4334, %4352
  %4375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.i32 %4375, 0
  %4377 = and i32 %4376, 32767
  %4378 = mul nuw nsw i32 %4377, 928
  %4379 = add nuw nsw i32 %4378, 48
  %4380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4379, i32 undef)  ; BufferLoad(srv,index,wot)
  %4381 = extractvalue %dx.types.ResRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.ResRet.f32 %4380, 1
  %4383 = extractvalue %dx.types.ResRet.f32 %4380, 2
  %4384 = add nuw nsw i32 %4378, 60
  %4385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4384, i32 undef)  ; BufferLoad(srv,index,wot)
  %4386 = extractvalue %dx.types.ResRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.ResRet.f32 %4385, 1
  %4388 = extractvalue %dx.types.ResRet.f32 %4385, 2
  %4389 = fmul fast float %4381, %4371
  %4390 = fmul fast float %4382, %4371
  %4391 = fmul fast float %4383, %4371
  %4392 = fadd fast float %4389, %4345
  %4393 = fadd fast float %4390, %4346
  %4394 = fadd fast float %4391, %4347
  %4395 = fmul fast float %4386, %4371
  %4396 = fmul fast float %4387, %4371
  %4397 = fmul fast float %4388, %4371
  %4398 = fadd fast float %4395, %4348
  %4399 = fadd fast float %4396, %4349
  %4400 = fadd fast float %4397, %4350
  br label %4401

; <label>:4401                                    ; preds = %4373, %4344
  %4402 = phi float [ %4392, %4373 ], [ %4345, %4344 ]
  %4403 = phi float [ %4393, %4373 ], [ %4346, %4344 ]
  %4404 = phi float [ %4394, %4373 ], [ %4347, %4344 ]
  %4405 = phi float [ %4398, %4373 ], [ %4348, %4344 ]
  %4406 = phi float [ %4399, %4373 ], [ %4349, %4344 ]
  %4407 = phi float [ %4400, %4373 ], [ %4350, %4344 ]
  %4408 = add nuw i32 %4351, 1
  %4409 = icmp eq i32 %4408, %4333
  br i1 %4409, label %4410, label %4344

; <label>:4410                                    ; preds = %4401
  br label %4411

; <label>:4411                                    ; preds = %4410, %4274
  %4412 = phi float [ 0.000000e+00, %4274 ], [ %4402, %4410 ]
  %4413 = phi float [ 0.000000e+00, %4274 ], [ %4403, %4410 ]
  %4414 = phi float [ 0.000000e+00, %4274 ], [ %4404, %4410 ]
  %4415 = phi float [ 0.000000e+00, %4274 ], [ %4405, %4410 ]
  %4416 = phi float [ 0.000000e+00, %4274 ], [ %4406, %4410 ]
  %4417 = phi float [ 0.000000e+00, %4274 ], [ %4407, %4410 ]
  %4418 = fadd fast float %4415, %4412
  %4419 = fmul fast float %4418, 0x3F847AE140000000
  %4420 = fadd fast float %4416, %4413
  %4421 = fmul fast float %4420, 0x3F847AE140000000
  %4422 = fadd fast float %4417, %4414
  %4423 = fmul fast float %4422, 0x3F847AE140000000
  br label %4424

; <label>:4424                                    ; preds = %4411, %4208, %4153, %4150, %4121, %4083
  %4425 = phi float [ %4135, %4121 ], [ -1.310720e+05, %4083 ], [ %4327, %4411 ], [ -1.310720e+05, %4153 ], [ -1.310720e+05, %4208 ], [ -1.310720e+05, %4150 ]
  %4426 = phi float [ %4145, %4121 ], [ 0.000000e+00, %4083 ], [ %4419, %4411 ], [ 0.000000e+00, %4153 ], [ 0.000000e+00, %4208 ], [ 0.000000e+00, %4150 ]
  %4427 = phi float [ %4147, %4121 ], [ 0.000000e+00, %4083 ], [ %4421, %4411 ], [ 0.000000e+00, %4153 ], [ 0.000000e+00, %4208 ], [ 0.000000e+00, %4150 ]
  %4428 = phi float [ %4149, %4121 ], [ 0.000000e+00, %4083 ], [ %4423, %4411 ], [ 0.000000e+00, %4153 ], [ 0.000000e+00, %4208 ], [ 0.000000e+00, %4150 ]
  %4429 = phi i1 [ true, %4121 ], [ false, %4083 ], [ true, %4411 ], [ false, %4153 ], [ false, %4208 ], [ false, %4150 ]
  %4430 = and i32 %161, 3
  %4431 = icmp eq i32 %4430, 1
  %4432 = select i1 %4431, float 1.000000e+00, float 0.000000e+00
  %4433 = fsub fast float %4425, %145
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = select i1 %4429, float %4434, float 1.000000e+00
  %4436 = fmul fast float %4435, %4432
  %4437 = icmp eq i32 %4430, 3
  %4438 = select i1 %4437, float 1.000000e+00, float %4436
  %4439 = call float @dx.op.binary.f32(i32 35, float %4026, float %4438)  ; FMax(a,b)
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = fcmp fast une float %4440, 0.000000e+00
  %4442 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4443 = call float @dx.op.unary.f32(i32 25, float %4442)  ; Rsqrt(value)
  br i1 %4441, label %4451, label %4444

; <label>:4444                                    ; preds = %4424
  %4445 = fmul fast float %4443, %143
  %4446 = fmul fast float %4443, %144
  %4447 = fmul fast float %4443, %145
  %4448 = fsub fast float -0.000000e+00, %4445
  %4449 = fsub fast float -0.000000e+00, %4446
  %4450 = fsub fast float -0.000000e+00, %4447
  br label %4619

; <label>:4451                                    ; preds = %4424
  %4452 = fmul fast float %143, %4443
  %4453 = fsub fast float -0.000000e+00, %4452
  %4454 = fmul fast float %144, %4443
  %4455 = fsub fast float -0.000000e+00, %4454
  %4456 = fmul fast float %145, %4443
  %4457 = fsub fast float -0.000000e+00, %4456
  %4458 = call float @dx.op.dot3.f32(i32 55, float %4453, float %4455, float %4457, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4459 = fmul fast float %4440, 2.500000e+00
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fmul fast float %4440, 0x4013FFFFE0000000
  %4462 = fadd fast float %4461, 0xBFFFFFFFE0000000
  %4463 = call float @dx.op.unary.f32(i32 7, float %4462)  ; Saturate(value)
  %4464 = fmul fast float %4440, 0x4004000020000000
  %4465 = fadd fast float %4464, 0xBFF8000040000000
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4468 = fmul fast float %4029, 1.000000e+01
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = fmul fast float %4469, 2.000000e+00
  %4471 = fsub fast float 3.000000e+00, %4470
  %4472 = fmul fast float %4469, %4469
  %4473 = fmul fast float %4472, %4471
  %4474 = fsub fast float 1.000000e+00, %4473
  %4475 = fsub fast float 0x3FE3333340000000, %4050
  %4476 = fmul fast float %4475, 0x400AAAAAA0000000
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = fmul fast float %4474, %4477
  %4479 = fmul fast float %4062, 0x3FEA2B8620000000
  %4480 = fmul fast float %4063, 0x3FEA2B8620000000
  %4481 = fmul fast float %4064, 0x3FEA2B8620000000
  %4482 = fadd fast float %4479, 0x3FC81DFBA0000000
  %4483 = fmul fast float %4482, %4062
  %4484 = fadd fast float %4483, 0x3F910E6020000000
  %4485 = fadd fast float %4480, 0x3FC81DFBA0000000
  %4486 = fmul fast float %4485, %4063
  %4487 = fadd fast float %4486, 0x3F910E6020000000
  %4488 = fadd fast float %4481, 0x3FC81DFBA0000000
  %4489 = fmul fast float %4488, %4064
  %4490 = fadd fast float %4489, 0x3F910E6020000000
  %4491 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4492 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4493 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4494 = fsub fast float %4491, %4062
  %4495 = fsub fast float %4492, %4063
  %4496 = fsub fast float %4493, %4064
  %4497 = fmul fast float %4494, %4467
  %4498 = fmul fast float %4497, %4478
  %4499 = fmul fast float %4495, %4467
  %4500 = fmul fast float %4499, %4478
  %4501 = fmul fast float %4496, %4467
  %4502 = fmul fast float %4501, %4478
  %4503 = fadd fast float %4498, %4062
  %4504 = fadd fast float %4500, %4063
  %4505 = fadd fast float %4502, %4064
  %4506 = fmul fast float %4023, %4023
  %4507 = fmul fast float %4506, %4506
  %4508 = fadd fast float %4463, 1.000000e+00
  %4509 = fsub fast float %4508, %4478
  %4510 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4511 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4512 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4513 = fsub fast float 1.000000e+00, %4507
  %4514 = call float @dx.op.binary.f32(i32 36, float %4510, float %4513)  ; FMin(a,b)
  %4515 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4516 = call float @dx.op.binary.f32(i32 35, float %4514, float %4515)  ; FMax(a,b)
  %4517 = fadd fast float %4512, 0xBFE4CCCCC0000000
  %4518 = fmul fast float %4517, 0x4006DB6DA0000000
  %4519 = call float @dx.op.unary.f32(i32 7, float %4518)  ; Saturate(value)
  %4520 = fmul fast float %4519, 2.000000e+00
  %4521 = fsub fast float 3.000000e+00, %4520
  %4522 = bitcast float %4047 to i32
  %4523 = ashr i32 %4522, 1
  %4524 = add nsw i32 %4523, 532487669
  %4525 = bitcast i32 %4524 to float
  %4526 = fsub fast float 1.000000e+00, %4525
  %4527 = bitcast float %4526 to i32
  %4528 = sub nsw i32 2129859010, %4527
  %4529 = bitcast i32 %4528 to float
  %4530 = fmul fast float %4529, 2.000000e+00
  %4531 = bitcast float %4048 to i32
  %4532 = ashr i32 %4531, 1
  %4533 = add nsw i32 %4532, 532487669
  %4534 = bitcast i32 %4533 to float
  %4535 = fsub fast float 1.000000e+00, %4534
  %4536 = bitcast float %4535 to i32
  %4537 = sub nsw i32 2129859010, %4536
  %4538 = bitcast i32 %4537 to float
  %4539 = fmul fast float %4538, 2.000000e+00
  %4540 = bitcast float %4049 to i32
  %4541 = ashr i32 %4540, 1
  %4542 = add nsw i32 %4541, 532487669
  %4543 = bitcast i32 %4542 to float
  %4544 = fsub fast float 1.000000e+00, %4543
  %4545 = bitcast float %4544 to i32
  %4546 = sub nsw i32 2129859010, %4545
  %4547 = bitcast i32 %4546 to float
  %4548 = fmul fast float %4547, 2.000000e+00
  %4549 = fsub fast float 0x4002A9FBE0000000, %4530
  %4550 = fadd fast float %4530, 0x3FD54FDF00000000
  %4551 = bitcast float %4550 to i32
  %4552 = sub nsw i32 2129859010, %4551
  %4553 = bitcast i32 %4552 to float
  %4554 = fmul fast float %4553, %4549
  %4555 = fmul fast float %4554, %4554
  %4556 = fsub fast float 0x4002A9FBE0000000, %4539
  %4557 = fadd fast float %4539, 0x3FD54FDF00000000
  %4558 = bitcast float %4557 to i32
  %4559 = sub nsw i32 2129859010, %4558
  %4560 = bitcast i32 %4559 to float
  %4561 = fmul fast float %4560, %4556
  %4562 = fmul fast float %4561, %4561
  %4563 = fsub fast float 0x4002A9FBE0000000, %4548
  %4564 = fadd fast float %4548, 0x3FD54FDF00000000
  %4565 = bitcast float %4564 to i32
  %4566 = sub nsw i32 2129859010, %4565
  %4567 = bitcast i32 %4566 to float
  %4568 = fmul fast float %4567, %4563
  %4569 = fmul fast float %4568, %4568
  %4570 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4555)  ; FMax(a,b)
  %4571 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4562)  ; FMax(a,b)
  %4572 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4569)  ; FMax(a,b)
  %4573 = fsub fast float 1.000000e+00, %4458
  %4574 = fadd fast float %4573, %4474
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = fsub fast float 1.000000e+00, %4438
  %4577 = fmul fast float %4516, %4576
  %4578 = fmul fast float %4519, %4519
  %4579 = fmul fast float %4578, %4577
  %4580 = fmul fast float %4579, %4521
  %4581 = fmul fast float %4576, 0xBFE99999A0000000
  %4582 = fmul fast float %4581, %4467
  %4583 = fmul fast float %4582, %4478
  %4584 = fadd fast float %4583, 1.000000e+00
  %4585 = fadd fast float %4050, -1.000000e+00
  %4586 = fmul fast float %4584, %4585
  %4587 = fadd fast float %4586, 1.000000e+00
  %4588 = fsub fast float %4570, %4047
  %4589 = fsub fast float %4571, %4048
  %4590 = fsub fast float %4572, %4049
  %4591 = fmul fast float %4580, %4588
  %4592 = fmul fast float %4580, %4589
  %4593 = fmul fast float %4580, %4590
  %4594 = fadd fast float %4591, %4047
  %4595 = fadd fast float %4592, %4048
  %4596 = fadd fast float %4593, %4049
  %4597 = fsub fast float %87, %4011
  %4598 = fsub fast float %88, %4012
  %4599 = fsub fast float %89, %4013
  %4600 = fmul fast float %4580, %4597
  %4601 = fmul fast float %4580, %4598
  %4602 = fmul fast float %4580, %4599
  %4603 = fadd fast float %4600, %4011
  %4604 = fadd fast float %4601, %4012
  %4605 = fadd fast float %4602, %4013
  %4606 = fmul fast float %4580, %4575
  %4607 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4608 = fsub fast float 1.000000e+00, %4607
  %4609 = fmul fast float %4606, %4608
  %4610 = fadd fast float %4609, %4607
  %4611 = fsub fast float 1.000000e+00, %4023
  %4612 = fmul fast float %4580, %4611
  %4613 = fadd fast float %4612, %4023
  %4614 = call float @dx.op.dot3.f32(i32 55, float %4603, float %4604, float %4605, float %4603, float %4604, float %4605)  ; Dot3(ax,ay,az,bx,by,bz)
  %4615 = call float @dx.op.unary.f32(i32 25, float %4614)  ; Rsqrt(value)
  %4616 = fmul fast float %4603, %4615
  %4617 = fmul fast float %4604, %4615
  %4618 = fmul fast float %4605, %4615
  br label %4619

; <label>:4619                                    ; preds = %4451, %4444
  %4620 = phi float [ %4450, %4444 ], [ %4457, %4451 ]
  %4621 = phi float [ %4449, %4444 ], [ %4455, %4451 ]
  %4622 = phi float [ %4448, %4444 ], [ %4453, %4451 ]
  %4623 = phi float [ %4447, %4444 ], [ %4456, %4451 ]
  %4624 = phi float [ %4446, %4444 ], [ %4454, %4451 ]
  %4625 = phi float [ %4445, %4444 ], [ %4452, %4451 ]
  %4626 = phi float [ %4047, %4444 ], [ %4594, %4451 ]
  %4627 = phi float [ %4048, %4444 ], [ %4595, %4451 ]
  %4628 = phi float [ %4049, %4444 ], [ %4596, %4451 ]
  %4629 = phi float [ %4062, %4444 ], [ %4503, %4451 ]
  %4630 = phi float [ %4063, %4444 ], [ %4504, %4451 ]
  %4631 = phi float [ %4064, %4444 ], [ %4505, %4451 ]
  %4632 = phi float [ %4011, %4444 ], [ %4616, %4451 ]
  %4633 = phi float [ %4012, %4444 ], [ %4617, %4451 ]
  %4634 = phi float [ %4013, %4444 ], [ %4618, %4451 ]
  %4635 = phi float [ %4050, %4444 ], [ %4610, %4451 ]
  %4636 = phi float [ %4023, %4444 ], [ %4613, %4451 ]
  %4637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4638 = extractvalue %dx.types.CBufRet.f32 %4637, 2
  %4639 = extractvalue %dx.types.CBufRet.f32 %4637, 3
  %4640 = fmul fast float %4638, %80
  %4641 = fmul fast float %4639, %81
  %4642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4643 = extractvalue %dx.types.CBufRet.f32 %4642, 0
  %4644 = extractvalue %dx.types.CBufRet.f32 %4642, 1
  %4645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4640, float %4641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = fmul fast float %4646, %4644
  %4648 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4649 = fadd fast float %4648, -1.000000e+00
  %4650 = fmul fast float %4649, %4643
  %4651 = fadd fast float %4650, 1.000000e+00
  %4652 = select i1 %185, float 0.000000e+00, float %4628
  %4653 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float %4622, float %4621, float %4620)  ; Dot3(ax,ay,az,bx,by,bz)
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = call float @dx.op.dot3.f32(i32 55, float %4625, float %4624, float %4623, float %4632, float %4633, float %4634)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = fmul fast float %4655, 2.000000e+00
  %4657 = fmul fast float %4656, %4632
  %4658 = fmul fast float %4656, %4633
  %4659 = fmul fast float %4656, %4634
  %4660 = fsub fast float %4625, %4657
  %4661 = fsub fast float %4624, %4658
  %4662 = fsub fast float %4623, %4659
  %4663 = call float @dx.op.binary.f32(i32 36, float %4636, float %4651)  ; FMin(a,b)
  %4664 = fsub fast float 1.000000e+00, %4663
  %4665 = bitcast float %4664 to i32
  %4666 = ashr i32 %4665, 1
  %4667 = add nsw i32 %4666, 532487669
  %4668 = bitcast i32 %4667 to float
  %4669 = fsub fast float 1.000000e+00, %4635
  %4670 = call float @dx.op.binary.f32(i32 35, float %4669, float 0x3F847AE140000000)  ; FMax(a,b)
  %4671 = fmul fast float %4670, %4670
  %4672 = fmul fast float %4671, %4671
  %4673 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4668, float %4672, float %4673, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4675 = extractvalue %dx.types.ResRet.f32 %4674, 0
  %4676 = fsub fast float 1.000000e+00, %4636
  %4677 = bitcast float %4676 to i32
  %4678 = sub nsw i32 2129859010, %4677
  %4679 = bitcast i32 %4678 to float
  %4680 = fsub fast float 1.000000e+00, %57
  %4681 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.binary.f32(i32 35, float %4681, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4683 = fdiv fast float %4680, %4682
  %4684 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = fmul fast float %4685, 5.000000e-01
  %4687 = fadd fast float %4686, 5.000000e-01
  %4688 = fmul fast float %4687, %57
  %4689 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4690 = call float @dx.op.unary.f32(i32 7, float %4689)  ; Saturate(value)
  %4691 = fmul fast float %4690, %4683
  %4692 = fadd fast float %4688, %4691
  %4693 = fsub fast float 5.000000e-01, %4686
  %4694 = fmul fast float %4693, %4629
  %4695 = fmul fast float %4693, %4630
  %4696 = fmul fast float %4693, %4631
  %4697 = fadd fast float %4692, %4694
  %4698 = fadd fast float %4692, %4695
  %4699 = fadd fast float %4692, %4696
  %4700 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4701 = call float @dx.op.unary.f32(i32 7, float %4700)  ; Saturate(value)
  %4702 = fmul fast float %4701, 5.000000e-01
  %4703 = fadd fast float %4702, 5.000000e-01
  %4704 = fmul fast float %4703, %57
  %4705 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4706 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  %4707 = fmul fast float %4706, %4683
  %4708 = fadd fast float %4704, %4707
  %4709 = fsub fast float 5.000000e-01, %4702
  %4710 = fmul fast float %4709, %4629
  %4711 = fmul fast float %4709, %4630
  %4712 = fmul fast float %4709, %4631
  %4713 = fadd fast float %4708, %4710
  %4714 = fadd fast float %4708, %4711
  %4715 = fadd fast float %4708, %4712
  %4716 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 0
  %4719 = call float @dx.op.binary.f32(i32 36, float %4629, float %4718)  ; FMin(a,b)
  %4720 = fmul fast float %4719, %4664
  %4721 = fsub fast float 1.000000e+00, %4720
  %4722 = bitcast float %4721 to i32
  %4723 = sub nsw i32 2129859010, %4722
  %4724 = bitcast i32 %4723 to float
  %4725 = call float @dx.op.binary.f32(i32 36, float %4630, float %4718)  ; FMin(a,b)
  %4726 = fmul fast float %4725, %4664
  %4727 = fsub fast float 1.000000e+00, %4726
  %4728 = bitcast float %4727 to i32
  %4729 = sub nsw i32 2129859010, %4728
  %4730 = bitcast i32 %4729 to float
  %4731 = call float @dx.op.binary.f32(i32 36, float %4631, float %4718)  ; FMin(a,b)
  %4732 = fmul fast float %4731, %4664
  %4733 = fsub fast float 1.000000e+00, %4732
  %4734 = bitcast float %4733 to i32
  %4735 = sub nsw i32 2129859010, %4734
  %4736 = bitcast i32 %4735 to float
  %4737 = fmul fast float %4663, %58
  %4738 = fmul fast float %4737, %4697
  %4739 = fmul fast float %4738, %4724
  %4740 = fmul fast float %4663, %59
  %4741 = fmul fast float %4740, %4698
  %4742 = fmul fast float %4741, %4730
  %4743 = fmul fast float %4663, %60
  %4744 = fmul fast float %4743, %4699
  %4745 = fmul fast float %4744, %4736
  %4746 = call float @dx.op.binary.f32(i32 36, float %4626, float %4718)  ; FMin(a,b)
  %4747 = fmul fast float %4746, %4664
  %4748 = fsub fast float 1.000000e+00, %4747
  %4749 = bitcast float %4748 to i32
  %4750 = sub nsw i32 2129859010, %4749
  %4751 = bitcast i32 %4750 to float
  %4752 = call float @dx.op.binary.f32(i32 36, float %4627, float %4718)  ; FMin(a,b)
  %4753 = fmul fast float %4752, %4664
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = bitcast float %4754 to i32
  %4756 = sub nsw i32 2129859010, %4755
  %4757 = bitcast i32 %4756 to float
  %4758 = call float @dx.op.binary.f32(i32 36, float %4652, float %4718)  ; FMin(a,b)
  %4759 = fmul fast float %4758, %4664
  %4760 = fsub fast float 1.000000e+00, %4759
  %4761 = bitcast float %4760 to i32
  %4762 = sub nsw i32 2129859010, %4761
  %4763 = bitcast i32 %4762 to float
  %4764 = fmul fast float %4737, %4713
  %4765 = fmul fast float %4764, %4751
  %4766 = fmul fast float %4740, %4714
  %4767 = fmul fast float %4766, %4757
  %4768 = fmul fast float %4743, %4715
  %4769 = fmul fast float %4768, %4763
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4742, float %4745, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = select i1 %185, float 0.000000e+00, float %4739
  %4772 = select i1 %185, float %4770, float %4742
  %4773 = select i1 %185, float 0.000000e+00, float %4745
  %4774 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4767, float %4769, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = select i1 %185, float 0.000000e+00, float %4765
  %4776 = select i1 %185, float %4774, float %4767
  %4777 = select i1 %185, float 0.000000e+00, float %4769
  %4778 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4779 = fmul fast float %4778, %4771
  %4780 = fmul fast float %4778, %4772
  %4781 = fmul fast float %4773, %4778
  %4782 = fmul fast float %4654, 9.843750e-01
  %4783 = fmul fast float %4635, 9.843750e-01
  %4784 = fadd fast float %4782, 7.812500e-03
  %4785 = fadd fast float %4783, 7.812500e-03
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4784, float %4785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 2
  %4788 = extractvalue %dx.types.ResRet.f32 %4786, 3
  %4789 = fmul fast float %4787, %4626
  %4790 = fmul fast float %4787, %4627
  %4791 = fmul fast float %4787, %4652
  %4792 = fadd fast float %4789, %4788
  %4793 = fadd fast float %4790, %4788
  %4794 = fadd fast float %4791, %4788
  %4795 = fcmp fast ogt float %4024, 0.000000e+00
  br i1 %4795, label %4796, label %4822

; <label>:4796                                    ; preds = %4619
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4024, float %4654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4801 = fadd fast float %4798, -5.000000e-01
  %4802 = fadd fast float %4799, -5.000000e-01
  %4803 = fadd fast float %4800, -5.000000e-01
  %4804 = fsub fast float 1.000000e+00, %4626
  %4805 = fsub fast float 1.000000e+00, %4627
  %4806 = fsub fast float 1.000000e+00, %4652
  %4807 = fmul fast float %4626, 4.000000e+00
  %4808 = fmul fast float %4807, %4804
  %4809 = fmul fast float %4808, %4801
  %4810 = fmul fast float %4627, 4.000000e+00
  %4811 = fmul fast float %4810, %4805
  %4812 = fmul fast float %4811, %4802
  %4813 = fmul fast float %4652, 4.000000e+00
  %4814 = fmul fast float %4813, %4806
  %4815 = fmul fast float %4814, %4803
  %4816 = fadd fast float %4809, %4792
  %4817 = fadd fast float %4812, %4793
  %4818 = fadd fast float %4815, %4794
  %4819 = call float @dx.op.unary.f32(i32 7, float %4816)  ; Saturate(value)
  %4820 = call float @dx.op.unary.f32(i32 7, float %4817)  ; Saturate(value)
  %4821 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  br label %4822

; <label>:4822                                    ; preds = %4796, %4619
  %4823 = phi float [ %4819, %4796 ], [ %4792, %4619 ]
  %4824 = phi float [ %4820, %4796 ], [ %4793, %4619 ]
  %4825 = phi float [ %4821, %4796 ], [ %4794, %4619 ]
  %4826 = call float @dx.op.binary.f32(i32 35, float %4824, float %4825)  ; FMax(a,b)
  %4827 = call float @dx.op.binary.f32(i32 35, float %4823, float %4826)  ; FMax(a,b)
  %4828 = fsub fast float 1.000000e+00, %4827
  %4829 = fmul fast float %4827, %4635
  %4830 = fadd fast float %4829, %4635
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.CBufRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.CBufRet.f32 %4831, 2
  %4835 = extractvalue %dx.types.CBufRet.f32 %4831, 3
  %4836 = fmul fast float %4830, %4832
  %4837 = fadd fast float %4836, %4833
  %4838 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4839 = fmul fast float %4834, %4830
  %4840 = fadd fast float %4839, %4835
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = fsub fast float 1.000000e+00, %4675
  %4843 = fadd fast float %4842, %4841
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = fcmp fast olt float %4844, 1.000000e+00
  br i1 %4845, label %4846, label %5701

; <label>:4846                                    ; preds = %4822
  %4847 = fcmp fast olt float %4838, 1.000000e+00
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = fcmp fast ogt float %4849, 0.000000e+00
  %4851 = or i1 %4847, %4850
  %4852 = or i1 %4847, %4850
  %4853 = xor i1 %4852, true
  %4854 = zext i1 %4853 to i32
  br i1 %4851, label %4855, label %5098

; <label>:4855                                    ; preds = %4846
  %4856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = extractvalue %dx.types.CBufRet.f32 %4856, 0
  %4858 = extractvalue %dx.types.CBufRet.f32 %4856, 1
  %4859 = extractvalue %dx.types.CBufRet.f32 %4856, 2
  %4860 = extractvalue %dx.types.CBufRet.f32 %4856, 3
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4863 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4864 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4865 = extractvalue %dx.types.CBufRet.f32 %4861, 3
  %4866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4867 = extractvalue %dx.types.CBufRet.f32 %4866, 0
  %4868 = extractvalue %dx.types.CBufRet.f32 %4866, 1
  %4869 = extractvalue %dx.types.CBufRet.f32 %4866, 2
  %4870 = extractvalue %dx.types.CBufRet.f32 %4866, 3
  %4871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4872 = extractvalue %dx.types.CBufRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.CBufRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.CBufRet.f32 %4871, 2
  %4875 = extractvalue %dx.types.CBufRet.f32 %4871, 3
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.CBufRet.f32 %4876, 1
  %4879 = extractvalue %dx.types.CBufRet.f32 %4876, 2
  %4880 = extractvalue %dx.types.CBufRet.f32 %4876, 3
  %4881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4882 = extractvalue %dx.types.CBufRet.f32 %4881, 0
  %4883 = extractvalue %dx.types.CBufRet.f32 %4881, 1
  %4884 = extractvalue %dx.types.CBufRet.f32 %4881, 2
  %4885 = extractvalue %dx.types.CBufRet.f32 %4881, 3
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4882, float %4883, float %4884, float %4660, float %4661, float %4662)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = call float @dx.op.unary.f32(i32 6, float %4887)  ; FAbs(value)
  %4889 = fmul fast float %4888, 8.000000e+00
  %4890 = fadd fast float %4889, -6.000000e+00
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fmul fast float %4886, 8.000000e+00
  %4893 = fmul fast float %4892, %4849
  %4894 = call float @dx.op.unary.f32(i32 7, float %4893)  ; Saturate(value)
  %4895 = fcmp fast ogt float %4894, 0.000000e+00
  br i1 %4895, label %4896, label %5073, !dx.controlflow.hints !86

; <label>:4896                                    ; preds = %4855
  %4897 = extractvalue %dx.types.CBufRet.f32 %4848, 1
  %4898 = extractvalue %dx.types.CBufRet.f32 %4848, 2
  %4899 = fsub fast float %4897, %4898
  %4900 = fmul fast float %4899, %4635
  %4901 = fadd fast float %4900, %4898
  %4902 = fmul fast float %198, 2.000000e+00
  %4903 = fmul fast float %199, 2.000000e+00
  %4904 = fadd fast float %4902, -1.000000e+00
  %4905 = fadd fast float %4903, -1.000000e+00
  %4906 = fmul fast float %4901, %4904
  %4907 = fmul fast float %4901, %4905
  %4908 = fadd fast float %4906, %80
  %4909 = fadd fast float %4907, %81
  %4910 = fmul fast float %4908, %4638
  %4911 = fmul fast float %4909, %4639
  %4912 = fadd fast float %4635, 0xBFE3333340000000
  %4913 = fmul fast float %4912, 0x4004000020000000
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fmul fast float %4915, 3.000000e+00
  %4917 = fadd fast float %4916, %198
  %4918 = call float @dx.op.unary.f32(i32 27, float %4917)  ; Round_ni(value)
  %4919 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4910, float %4911, float %4918, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4920 = extractvalue %dx.types.ResRet.f32 %4919, 0
  %4921 = fcmp fast une float %4920, 0xFFF0000000000000
  %4922 = fcmp fast une float %4920, 0x7FF0000000000000
  %4923 = and i1 %4921, %4922
  %4924 = fcmp fast olt float %4920, 0.000000e+00
  %4925 = call float @dx.op.unary.f32(i32 6, float %4920)  ; FAbs(value)
  %4926 = fsub fast float 1.000000e+00, %4925
  %4927 = select i1 %4923, float 1.000000e+00, float 0.000000e+00
  %4928 = fmul fast float %4927, %4894
  %4929 = fcmp fast ogt float %4928, 0.000000e+00
  br i1 %4929, label %4930, label %5073, !dx.controlflow.hints !87

; <label>:4930                                    ; preds = %4896
  %4931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4932 = extractvalue %dx.types.CBufRet.f32 %4931, 0
  %4933 = extractvalue %dx.types.CBufRet.f32 %4931, 1
  %4934 = extractvalue %dx.types.CBufRet.f32 %4931, 2
  %4935 = select i1 %4924, float 0.000000e+00, float %4932
  %4936 = select i1 %4924, float 0.000000e+00, float %4933
  %4937 = select i1 %4924, float 0.000000e+00, float %4934
  %4938 = select i1 %4924, float %4857, float %4872
  %4939 = select i1 %4924, float %4862, float %4877
  %4940 = select i1 %4924, float %4867, float %4882
  %4941 = select i1 %4924, float %4858, float %4873
  %4942 = select i1 %4924, float %4863, float %4878
  %4943 = select i1 %4924, float %4868, float %4883
  %4944 = select i1 %4924, float %4859, float %4874
  %4945 = select i1 %4924, float %4864, float %4879
  %4946 = select i1 %4924, float %4869, float %4884
  %4947 = select i1 %4924, float %4860, float %4875
  %4948 = select i1 %4924, float %4865, float %4880
  %4949 = select i1 %4924, float %4870, float %4885
  %4950 = fadd fast float %4935, %143
  %4951 = fadd fast float %4936, %144
  %4952 = fadd fast float %4937, %145
  %4953 = fmul fast float %4950, %4938
  %4954 = call float @dx.op.tertiary.f32(i32 46, float %4951, float %4941, float %4953)  ; FMad(a,b,c)
  %4955 = call float @dx.op.tertiary.f32(i32 46, float %4952, float %4944, float %4954)  ; FMad(a,b,c)
  %4956 = fadd fast float %4955, %4947
  %4957 = fmul fast float %4950, %4939
  %4958 = call float @dx.op.tertiary.f32(i32 46, float %4951, float %4942, float %4957)  ; FMad(a,b,c)
  %4959 = call float @dx.op.tertiary.f32(i32 46, float %4952, float %4945, float %4958)  ; FMad(a,b,c)
  %4960 = fadd fast float %4959, %4948
  %4961 = fmul fast float %4950, %4940
  %4962 = call float @dx.op.tertiary.f32(i32 46, float %4951, float %4943, float %4961)  ; FMad(a,b,c)
  %4963 = call float @dx.op.tertiary.f32(i32 46, float %4952, float %4946, float %4962)  ; FMad(a,b,c)
  %4964 = fadd fast float %4963, %4949
  %4965 = fdiv fast float 1.000000e+00, %4964
  %4966 = fmul fast float %4965, %4956
  %4967 = fmul fast float %4965, %4960
  %4968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4969 = extractvalue %dx.types.CBufRet.f32 %4968, 0
  %4970 = extractvalue %dx.types.CBufRet.f32 %4968, 1
  %4971 = fmul fast float %4966, %4969
  %4972 = fmul fast float %4967, %4970
  %4973 = extractvalue %dx.types.CBufRet.f32 %4968, 2
  %4974 = extractvalue %dx.types.CBufRet.f32 %4968, 3
  %4975 = fadd fast float %4971, %4973
  %4976 = fadd fast float %4972, %4974
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 3
  %4979 = fmul fast float %4978, %4660
  %4980 = fmul fast float %4978, %4661
  %4981 = fmul fast float %4978, %4662
  %4982 = fadd fast float %4979, %4950
  %4983 = fadd fast float %4980, %4951
  %4984 = fadd fast float %4981, %4952
  %4985 = fmul fast float %4982, %4938
  %4986 = call float @dx.op.tertiary.f32(i32 46, float %4983, float %4941, float %4985)  ; FMad(a,b,c)
  %4987 = call float @dx.op.tertiary.f32(i32 46, float %4984, float %4944, float %4986)  ; FMad(a,b,c)
  %4988 = fadd fast float %4987, %4947
  %4989 = fmul fast float %4982, %4939
  %4990 = call float @dx.op.tertiary.f32(i32 46, float %4983, float %4942, float %4989)  ; FMad(a,b,c)
  %4991 = call float @dx.op.tertiary.f32(i32 46, float %4984, float %4945, float %4990)  ; FMad(a,b,c)
  %4992 = fadd fast float %4991, %4948
  %4993 = fmul fast float %4982, %4940
  %4994 = call float @dx.op.tertiary.f32(i32 46, float %4983, float %4943, float %4993)  ; FMad(a,b,c)
  %4995 = call float @dx.op.tertiary.f32(i32 46, float %4984, float %4946, float %4994)  ; FMad(a,b,c)
  %4996 = fadd fast float %4995, %4949
  %4997 = fdiv fast float 1.000000e+00, %4996
  %4998 = fmul fast float %4997, %4988
  %4999 = fmul fast float %4997, %4992
  %5000 = fmul fast float %4975, 2.000000e+00
  %5001 = fadd fast float %5000, -1.000000e+00
  %5002 = call float @dx.op.unary.f32(i32 6, float %5001)  ; FAbs(value)
  %5003 = fmul fast float %5002, 5.000000e+00
  %5004 = fadd fast float %5003, -4.000000e+00
  %5005 = call float @dx.op.unary.f32(i32 7, float %5004)  ; Saturate(value)
  %5006 = fmul fast float %5005, %4891
  %5007 = fsub fast float %4966, %4998
  %5008 = fmul fast float %4969, %5007
  %5009 = fmul fast float %5006, %5008
  %5010 = fsub fast float %4998, %4966
  %5011 = fmul fast float %4969, %5010
  %5012 = fadd fast float %5011, %5009
  %5013 = fsub fast float %4999, %4967
  %5014 = fmul fast float %4970, %5013
  %5015 = fmul fast float %5012, %4926
  %5016 = fmul fast float %5014, %4926
  %5017 = fadd fast float %5015, %4975
  %5018 = fadd fast float %5016, %4976
  %5019 = fsub fast float %4997, %4965
  %5020 = fmul fast float %5019, %4926
  %5021 = fadd fast float %5020, %4965
  %5022 = fdiv fast float 1.000000e+00, %5021
  %5023 = fadd fast float %4635, -1.000000e+00
  %5024 = fsub fast float %5022, %4964
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 2
  %5027 = fmul fast float %5026, %5022
  %5028 = fdiv fast float 1.600000e+02, %5027
  %5029 = fmul fast float %5023, %5023
  %5030 = fmul fast float %5029, 0xBFB5B17960000000
  %5031 = fmul fast float %5030, %5024
  %5032 = fmul fast float %5031, %5028
  %5033 = call float @dx.op.unary.f32(i32 21, float %5032)  ; Exp(value)
  %5034 = fmul fast float %5033, 0x3FF04B2960000000
  %5035 = fsub fast float 0x3FF04B2960000000, %5034
  %5036 = call float @dx.op.unary.f32(i32 7, float %5035)  ; Saturate(value)
  %5037 = fmul fast float %5036, 4.000000e+00
  %5038 = fadd fast float %198, -5.000000e-01
  %5039 = fadd fast float %199, -5.000000e-01
  %5040 = fmul fast float %5036, 0x3FBEB851E0000000
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = fmul fast float %5041, %5038
  %5043 = fmul fast float %5041, %5039
  %5044 = fadd fast float %5017, %5042
  %5045 = fadd fast float %5018, %5043
  %5046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5044, float %5045, float undef, float undef, i32 0, i32 0, i32 undef, float %5037)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5047 = extractvalue %dx.types.ResRet.f32 %5046, 0
  %5048 = extractvalue %dx.types.ResRet.f32 %5046, 1
  %5049 = extractvalue %dx.types.ResRet.f32 %5046, 2
  %5050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.f32 %5050, 2
  %5052 = fmul fast float %5051, %5047
  %5053 = fmul fast float %5051, %5048
  %5054 = fmul fast float %5051, %5049
  %5055 = select i1 %185, float 0.000000e+00, float %5053
  %5056 = select i1 %185, float 0.000000e+00, float %5054
  %5057 = fmul fast float %5044, 2.000000e+00
  %5058 = fmul fast float %5045, 2.000000e+00
  %5059 = fadd fast float %5057, -1.000000e+00
  %5060 = fadd fast float %5058, -1.000000e+00
  %5061 = fmul fast float %5059, %5059
  %5062 = fsub fast float 1.000000e+00, %5061
  %5063 = call float @dx.op.unary.f32(i32 7, float %5062)  ; Saturate(value)
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = fmul fast float %5064, %4891
  %5066 = fadd fast float %5065, %5063
  %5067 = fmul fast float %5060, %5060
  %5068 = fsub fast float 1.000000e+00, %5067
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = fmul fast float %5066, %5069
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5071, %4928
  br label %5073

; <label>:5073                                    ; preds = %4930, %4896, %4855
  %5074 = phi float [ %5052, %4930 ], [ 0.000000e+00, %4896 ], [ 0.000000e+00, %4855 ]
  %5075 = phi float [ %5055, %4930 ], [ 0.000000e+00, %4896 ], [ 0.000000e+00, %4855 ]
  %5076 = phi float [ %5056, %4930 ], [ 0.000000e+00, %4896 ], [ 0.000000e+00, %4855 ]
  %5077 = phi float [ %5072, %4930 ], [ 0.000000e+00, %4896 ], [ 0.000000e+00, %4855 ]
  %5078 = fcmp fast olt float %5077, 1.000000e+00
  %5079 = or i1 %5078, %4853
  %5080 = zext i1 %5079 to i32
  %5081 = fmul fast float %5077, %4838
  %5082 = fsub fast float %5077, %5081
  %5083 = fsub fast float 1.000000e+00, %4844
  %5084 = fmul fast float %5082, %5083
  %5085 = fadd fast float %5084, %4844
  %5086 = fsub fast float %5085, %5082
  %5087 = call float @dx.op.unary.f32(i32 7, float %5086)  ; Saturate(value)
  %5088 = fmul fast float %5087, %4775
  %5089 = fmul fast float %5087, %4776
  %5090 = fmul fast float %5087, %4777
  %5091 = fsub fast float -0.000000e+00, %5085
  %5092 = fmul fast float %5082, %5074
  %5093 = fmul fast float %5082, %5075
  %5094 = fmul fast float %5082, %5076
  %5095 = fadd fast float %5092, %5088
  %5096 = fadd fast float %5093, %5089
  %5097 = fadd fast float %5094, %5090
  br label %5098

; <label>:5098                                    ; preds = %5073, %4846
  %5099 = phi float [ %4844, %4846 ], [ %5091, %5073 ]
  %5100 = phi float [ %4775, %4846 ], [ %5095, %5073 ]
  %5101 = phi float [ %4776, %4846 ], [ %5096, %5073 ]
  %5102 = phi float [ %4777, %4846 ], [ %5097, %5073 ]
  %5103 = phi i32 [ %4854, %4846 ], [ %5080, %5073 ]
  %5104 = icmp eq i32 %5103, 0
  br i1 %5104, label %5701, label %5105

; <label>:5105                                    ; preds = %5098
  %5106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5107 = extractvalue %dx.types.CBufRet.f32 %5106, 2
  %5108 = extractvalue %dx.types.CBufRet.f32 %5106, 3
  %5109 = fmul fast float %5107, %80
  %5110 = fmul fast float %5108, %81
  %5111 = fptoui float %5109 to i32
  %5112 = fptoui float %5110 to i32
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.CBufRet.f32 %5113, 2
  %5116 = extractvalue %dx.types.CBufRet.f32 %5113, 3
  %5117 = fadd fast float %75, -4.000000e+00
  %5118 = call float @dx.op.binary.f32(i32 35, float %5117, float 0.000000e+00)  ; FMax(a,b)
  %5119 = fadd fast float %5118, %5114
  %5120 = fmul fast float %5119, %5115
  %5121 = call float @dx.op.unary.f32(i32 23, float %5120)  ; Log(value)
  %5122 = fmul fast float %5121, %5116
  %5123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5123, 2
  %5125 = fmul fast float %5122, %5124
  %5126 = call float @dx.op.unary.f32(i32 7, float %5125)  ; Saturate(value)
  %5127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.i32 %5127, 1
  %5129 = add i32 %5128, -1
  %5130 = uitofp i32 %5128 to float
  %5131 = fmul fast float %5130, %5126
  %5132 = fptoui float %5131 to i32
  %5133 = call i32 @dx.op.binary.i32(i32 40, i32 %5132, i32 %5129)  ; UMin(a,b)
  %5134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.i32 %5134, 2
  %5136 = extractvalue %dx.types.CBufRet.i32 %5134, 3
  %5137 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5112, i32 %5135, i32 %5111)  ; UMad(a,b,c)
  %5138 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5133, i32 %5136, i32 %5137)  ; UMad(a,b,c)
  %5139 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %5140 = fptoui float %5139 to i32
  %5141 = lshr i32 %5140, 5
  %5142 = call i32 @dx.op.binary.i32(i32 40, i32 %5141, i32 8191)  ; UMin(a,b)
  %5143 = fcmp fast ogt float %4434, 0.000000e+00
  %5144 = fcmp fast ogt float %4662, 0.000000e+00
  %5145 = and i1 %5144, %5143
  br i1 %5145, label %5146, label %5175

; <label>:5146                                    ; preds = %5105
  %5147 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %4662, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5148 = call float @dx.op.binary.f32(i32 35, float %5147, float -1.000000e+00)  ; FMax(a,b)
  %5149 = call float @dx.op.binary.f32(i32 36, float %5148, float 1.000000e+00)  ; FMin(a,b)
  %5150 = fmul fast float %5149, %5149
  %5151 = fsub fast float 1.000000e+00, %5150
  %5152 = fmul fast float %5151, 0x3FFC6E2300000000
  %5153 = fsub fast float 1.000000e+00, %5152
  %5154 = fcmp fast ogt float %5153, 0.000000e+00
  %5155 = call float @dx.op.unary.f32(i32 24, float %5153)  ; Sqrt(value)
  %5156 = fsub fast float 1.000000e+00, %5155
  %5157 = call float @dx.op.unary.f32(i32 23, float %5156)  ; Log(value)
  %5158 = fmul fast float %5157, 5.000000e+00
  %5159 = call float @dx.op.unary.f32(i32 21, float %5158)  ; Exp(value)
  %5160 = fmul fast float %5159, 0x3FEF591A60000000
  %5161 = fadd fast float %5160, 0x3F94DCB540000000
  %5162 = select i1 %5154, float %5161, float 1.000000e+00
  %5163 = fcmp fast oge float %5162, 1.000000e+00
  %5164 = fmul fast float %5147, 2.000000e+00
  %5165 = fadd fast float %5164, %4662
  %5166 = select i1 %5163, float %5165, float %4662
  %5167 = fsub fast float %5166, %4662
  %5168 = fmul fast float %5167, %4434
  %5169 = fadd fast float %5168, %4662
  %5170 = call float @dx.op.dot3.f32(i32 55, float %4660, float %4661, float %5169, float %4660, float %4661, float %5169)  ; Dot3(ax,ay,az,bx,by,bz)
  %5171 = call float @dx.op.unary.f32(i32 25, float %5170)  ; Rsqrt(value)
  %5172 = fmul fast float %5171, %4660
  %5173 = fmul fast float %5171, %4661
  %5174 = fmul fast float %5169, %5171
  br label %5175

; <label>:5175                                    ; preds = %5146, %5105
  %5176 = phi float [ %5172, %5146 ], [ %4660, %5105 ]
  %5177 = phi float [ %5173, %5146 ], [ %4661, %5105 ]
  %5178 = phi float [ %5174, %5146 ], [ %4662, %5105 ]
  %5179 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.i32 %5179, 2
  %5181 = add nsw i32 %5180, -1
  %5182 = call i32 @dx.op.binary.i32(i32 37, i32 %5181, i32 0)  ; IMax(a,b)
  %5183 = shl i32 %5142, 2
  %5184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5183, i32 undef)  ; BufferLoad(srv,index,wot)
  %5185 = extractvalue %dx.types.ResRet.i32 %5184, 0
  %5186 = lshr i32 %5185, 16
  %5187 = and i32 %5185, 65535
  %5188 = lshr i32 %5185, 21
  %5189 = lshr i32 %5187, 5
  %5190 = call i32 @dx.op.binary.i32(i32 40, i32 %5189, i32 %5182)  ; UMin(a,b)
  %5191 = icmp ugt i32 %5188, %5190
  br i1 %5191, label %5573, label %5192

; <label>:5192                                    ; preds = %5175
  br label %5193

; <label>:5193                                    ; preds = %5562, %5192
  %5194 = phi float [ %5563, %5562 ], [ 0.000000e+00, %5192 ]
  %5195 = phi float [ %5564, %5562 ], [ 0.000000e+00, %5192 ]
  %5196 = phi float [ %5565, %5562 ], [ 0.000000e+00, %5192 ]
  %5197 = phi float [ %5566, %5562 ], [ 1.000000e+00, %5192 ]
  %5198 = phi i32 [ %5570, %5562 ], [ %5188, %5192 ]
  %5199 = phi float [ %5567, %5562 ], [ 0.000000e+00, %5192 ]
  %5200 = phi float [ %5568, %5562 ], [ 0.000000e+00, %5192 ]
  %5201 = phi float [ %5569, %5562 ], [ 0.000000e+00, %5192 ]
  %5202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5203 = extractvalue %dx.types.CBufRet.i32 %5202, 2
  %5204 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5138, i32 %5203, i32 %5198)  ; UMad(a,b,c)
  %5205 = shl i32 %5204, 2
  %5206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5205, i32 undef)  ; BufferLoad(srv,index,wot)
  %5207 = extractvalue %dx.types.ResRet.i32 %5206, 0
  %5208 = shl i32 %5198, 5
  %5209 = sub nsw i32 %5186, %5208
  %5210 = call i32 @dx.op.binary.i32(i32 37, i32 %5209, i32 0)  ; IMax(a,b)
  %5211 = call i32 @dx.op.binary.i32(i32 38, i32 %5210, i32 31)  ; IMin(a,b)
  %5212 = sub nsw i32 1, %5186
  %5213 = add nsw i32 %5212, %5187
  %5214 = call i32 @dx.op.binary.i32(i32 37, i32 %5213, i32 0)  ; IMax(a,b)
  %5215 = call i32 @dx.op.binary.i32(i32 38, i32 %5214, i32 32)  ; IMin(a,b)
  %5216 = and i32 %5215, 31
  %5217 = shl i32 -1, %5216
  %5218 = xor i32 %5217, -1
  %5219 = and i32 %5211, 31
  %5220 = shl i32 %5218, %5219
  %5221 = icmp eq i32 %5215, 32
  %5222 = select i1 %5221, i32 -1, i32 %5220
  %5223 = and i32 %5222, %5207
  %5224 = icmp eq i32 %5223, 0
  br i1 %5224, label %5562, label %5225

; <label>:5225                                    ; preds = %5193
  br label %5226

; <label>:5226                                    ; preds = %5336, %5225
  %5227 = phi float [ %5337, %5336 ], [ %5194, %5225 ]
  %5228 = phi float [ %5338, %5336 ], [ %5195, %5225 ]
  %5229 = phi float [ %5339, %5336 ], [ %5196, %5225 ]
  %5230 = phi float [ %5340, %5336 ], [ %5197, %5225 ]
  %5231 = phi i32 [ %5239, %5336 ], [ %5223, %5225 ]
  %5232 = phi float [ %5341, %5336 ], [ %5199, %5225 ]
  %5233 = phi float [ %5342, %5336 ], [ %5200, %5225 ]
  %5234 = phi float [ %5343, %5336 ], [ %5201, %5225 ]
  %5235 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5231)  ; FirstbitLo(value)
  %5236 = add i32 %5235, %5208
  %5237 = and i32 %5235, 31
  %5238 = shl i32 1, %5237
  %5239 = xor i32 %5238, %5231
  %5240 = mul i32 %5236, 72
  %5241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5240, i32 undef)  ; BufferLoad(srv,index,wot)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5245 = add i32 %5240, 12
  %5246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.i32 %5246, 0
  %5248 = add i32 %5240, 16
  %5249 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5248, i32 undef)  ; BufferLoad(srv,index,wot)
  %5250 = extractvalue %dx.types.ResRet.f32 %5249, 0
  %5251 = extractvalue %dx.types.ResRet.f32 %5249, 1
  %5252 = extractvalue %dx.types.ResRet.f32 %5249, 2
  %5253 = add i32 %5240, 28
  %5254 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5253, i32 undef)  ; BufferLoad(srv,index,wot)
  %5255 = extractvalue %dx.types.ResRet.f32 %5254, 0
  %5256 = add i32 %5240, 32
  %5257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5256, i32 undef)  ; BufferLoad(srv,index,wot)
  %5258 = extractvalue %dx.types.ResRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.ResRet.f32 %5257, 1
  %5260 = extractvalue %dx.types.ResRet.f32 %5257, 2
  %5261 = extractvalue %dx.types.ResRet.f32 %5257, 3
  %5262 = add i32 %5240, 48
  %5263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.ResRet.f32 %5263, 1
  %5266 = add i32 %5240, 56
  %5267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5266, i32 undef)  ; BufferLoad(srv,index,wot)
  %5268 = extractvalue %dx.types.ResRet.f32 %5267, 0
  %5269 = extractvalue %dx.types.ResRet.f32 %5267, 1
  %5270 = add i32 %5240, 64
  %5271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5270, i32 undef)  ; BufferLoad(srv,index,wot)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = extractvalue %dx.types.ResRet.f32 %5271, 1
  %5274 = mul i32 %5236, 60
  %5275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5274, i32 undef)  ; BufferLoad(srv,index,wot)
  %5276 = extractvalue %dx.types.ResRet.f32 %5275, 0
  %5277 = extractvalue %dx.types.ResRet.f32 %5275, 1
  %5278 = extractvalue %dx.types.ResRet.f32 %5275, 2
  %5279 = add i32 %5274, 12
  %5280 = add i32 %5274, 48
  %5281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5280, i32 undef)  ; BufferLoad(srv,index,wot)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.ResRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.ResRet.f32 %5281, 2
  %5285 = and i32 %5247, 32767
  %5286 = bitcast float %5242 to i32
  %5287 = icmp eq i32 %5286, -1
  %5288 = bitcast float %5243 to i32
  %5289 = and i32 %5247, 32768
  %5290 = icmp ne i32 %5289, 0
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5294 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5295 = fsub fast float %5276, %5292
  %5296 = fsub fast float %5277, %5293
  %5297 = fsub fast float %5278, %5294
  %5298 = fsub fast float %143, %5295
  %5299 = fsub fast float %144, %5296
  %5300 = fsub fast float %145, %5297
  %5301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.ResRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.ResRet.f32 %5301, 2
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %5302, float %5303, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = add i32 %5274, 24
  %5307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5306, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.ResRet.f32 %5307, 1
  %5310 = extractvalue %dx.types.ResRet.f32 %5307, 2
  %5311 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %5308, float %5309, float %5310)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = add i32 %5274, 36
  %5313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5312, i32 undef)  ; BufferLoad(srv,index,wot)
  %5314 = extractvalue %dx.types.ResRet.f32 %5313, 0
  %5315 = extractvalue %dx.types.ResRet.f32 %5313, 1
  %5316 = extractvalue %dx.types.ResRet.f32 %5313, 2
  %5317 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %5314, float %5315, float %5316)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = call float @dx.op.unary.f32(i32 6, float %5305)  ; FAbs(value)
  %5319 = call float @dx.op.unary.f32(i32 6, float %5311)  ; FAbs(value)
  %5320 = call float @dx.op.unary.f32(i32 6, float %5317)  ; FAbs(value)
  %5321 = fsub fast float %5282, %5318
  %5322 = fsub fast float %5283, %5319
  %5323 = fsub fast float %5284, %5320
  %5324 = fmul fast float %5321, %5250
  %5325 = fmul fast float %5322, %5251
  %5326 = fmul fast float %5323, %5252
  %5327 = call float @dx.op.binary.f32(i32 36, float %5325, float %5326)  ; FMin(a,b)
  %5328 = call float @dx.op.binary.f32(i32 36, float %5324, float %5327)  ; FMin(a,b)
  %5329 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  %5330 = call float @dx.op.binary.f32(i32 36, float %5230, float %5329)  ; FMin(a,b)
  %5331 = uitofp i1 %5290 to float
  %5332 = fadd fast float %4434, 1.000000e+00
  %5333 = fsub fast float %5332, %5331
  %5334 = fmul fast float %5330, %5333
  %5335 = fcmp fast ogt float %5334, 0.000000e+00
  br i1 %5335, label %5345, label %5336

; <label>:5336                                    ; preds = %5487, %5226
  %5337 = phi float [ %5551, %5487 ], [ %5227, %5226 ]
  %5338 = phi float [ %5552, %5487 ], [ %5228, %5226 ]
  %5339 = phi float [ %5553, %5487 ], [ %5229, %5226 ]
  %5340 = phi float [ %5560, %5487 ], [ %5230, %5226 ]
  %5341 = phi float [ %5557, %5487 ], [ %5232, %5226 ]
  %5342 = phi float [ %5558, %5487 ], [ %5233, %5226 ]
  %5343 = phi float [ %5559, %5487 ], [ %5234, %5226 ]
  %5344 = icmp eq i32 %5231, %5238
  br i1 %5344, label %5561, label %5226

; <label>:5345                                    ; preds = %5226
  br i1 %5287, label %5403, label %5346

; <label>:5346                                    ; preds = %5345
  %5347 = fsub fast float -0.000000e+00, %5302
  %5348 = fsub fast float -0.000000e+00, %5303
  %5349 = fsub fast float -0.000000e+00, %5304
  %5350 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5347, float %5348, float %5349)  ; Dot3(ax,ay,az,bx,by,bz)
  %5351 = fsub fast float -0.000000e+00, %5350
  %5352 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %5347, float %5348, float %5349)  ; Dot3(ax,ay,az,bx,by,bz)
  %5353 = fadd fast float %5352, %5265
  %5354 = fadd fast float %5264, %5352
  %5355 = fsub fast float -0.000000e+00, %5354
  %5356 = fcmp ogt float %5350, -0.000000e+00
  %5357 = select i1 %5356, float %5355, float %5353
  %5358 = call float @dx.op.unary.f32(i32 6, float %5351)  ; FAbs(value)
  %5359 = fdiv fast float 1.000000e+00, %5358
  %5360 = fmul fast float %5357, %5359
  %5361 = call float @dx.op.binary.f32(i32 35, float %5360, float 0.000000e+00)  ; FMax(a,b)
  %5362 = fsub fast float -0.000000e+00, %5308
  %5363 = fsub fast float -0.000000e+00, %5309
  %5364 = fsub fast float -0.000000e+00, %5310
  %5365 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5362, float %5363, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5366 = fsub fast float -0.000000e+00, %5365
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %5362, float %5363, float %5364)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = fadd fast float %5367, %5269
  %5369 = fadd fast float %5268, %5367
  %5370 = fsub fast float -0.000000e+00, %5369
  %5371 = fcmp ogt float %5365, -0.000000e+00
  %5372 = select i1 %5371, float %5370, float %5368
  %5373 = call float @dx.op.unary.f32(i32 6, float %5366)  ; FAbs(value)
  %5374 = fdiv fast float 1.000000e+00, %5373
  %5375 = fmul fast float %5372, %5374
  %5376 = call float @dx.op.binary.f32(i32 35, float %5375, float 0.000000e+00)  ; FMax(a,b)
  %5377 = fsub fast float -0.000000e+00, %5314
  %5378 = fsub fast float -0.000000e+00, %5315
  %5379 = fsub fast float -0.000000e+00, %5316
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = fsub fast float -0.000000e+00, %5380
  %5382 = call float @dx.op.dot3.f32(i32 55, float %5298, float %5299, float %5300, float %5377, float %5378, float %5379)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = fadd fast float %5382, %5273
  %5384 = fadd fast float %5272, %5382
  %5385 = fsub fast float -0.000000e+00, %5384
  %5386 = fcmp ogt float %5380, -0.000000e+00
  %5387 = select i1 %5386, float %5385, float %5383
  %5388 = call float @dx.op.unary.f32(i32 6, float %5381)  ; FAbs(value)
  %5389 = fdiv fast float 1.000000e+00, %5388
  %5390 = fmul fast float %5387, %5389
  %5391 = call float @dx.op.binary.f32(i32 35, float %5390, float 0.000000e+00)  ; FMax(a,b)
  %5392 = call float @dx.op.binary.f32(i32 36, float %5376, float %5391)  ; FMin(a,b)
  %5393 = call float @dx.op.binary.f32(i32 36, float %5361, float %5392)  ; FMin(a,b)
  %5394 = fmul fast float %5393, %5176
  %5395 = fmul fast float %5393, %5177
  %5396 = fmul fast float %5393, %5178
  %5397 = fadd fast float %5394, %143
  %5398 = fadd fast float %5395, %144
  %5399 = fadd fast float %5396, %145
  %5400 = fsub fast float %5397, %5242
  %5401 = fsub fast float %5398, %5243
  %5402 = fsub fast float %5399, %5244
  br label %5410

; <label>:5403                                    ; preds = %5345
  %5404 = fmul fast float %5176, 8.096000e+03
  %5405 = fmul fast float %5177, 8.096000e+03
  %5406 = fmul fast float %5178, 8.096000e+03
  %5407 = fadd fast float %5404, %143
  %5408 = fadd fast float %5405, %144
  %5409 = fadd fast float %5406, %145
  br label %5410

; <label>:5410                                    ; preds = %5403, %5346
  %5411 = phi float [ %5176, %5403 ], [ %5400, %5346 ]
  %5412 = phi float [ %5177, %5403 ], [ %5401, %5346 ]
  %5413 = phi float [ %5178, %5403 ], [ %5402, %5346 ]
  %5414 = phi float [ %5407, %5403 ], [ %5397, %5346 ]
  %5415 = phi float [ %5408, %5403 ], [ %5398, %5346 ]
  %5416 = phi float [ %5409, %5403 ], [ %5399, %5346 ]
  %5417 = fcmp fast olt float %5261, 1.000000e+00
  br i1 %5417, label %5418, label %5449, !dx.controlflow.hints !88

; <label>:5418                                    ; preds = %5410
  %5419 = fmul fast float %5413, %5259
  %5420 = fmul fast float %5412, %5260
  %5421 = fsub fast float %5419, %5420
  %5422 = fmul fast float %5411, %5260
  %5423 = fmul fast float %5413, %5258
  %5424 = fsub fast float %5422, %5423
  %5425 = fmul fast float %5412, %5258
  %5426 = fmul fast float %5411, %5259
  %5427 = fsub fast float %5425, %5426
  %5428 = fmul fast float %5421, 2.000000e+00
  %5429 = fmul fast float %5424, 2.000000e+00
  %5430 = fmul fast float %5427, 2.000000e+00
  %5431 = fmul fast float %5428, %5261
  %5432 = fmul fast float %5429, %5261
  %5433 = fmul fast float %5430, %5261
  %5434 = fmul fast float %5430, %5259
  %5435 = fmul fast float %5429, %5260
  %5436 = fmul fast float %5428, %5260
  %5437 = fmul fast float %5430, %5258
  %5438 = fmul fast float %5429, %5258
  %5439 = fmul fast float %5428, %5259
  %5440 = fadd fast float %5434, %5411
  %5441 = fadd fast float %5440, %5431
  %5442 = fsub fast float %5441, %5435
  %5443 = fsub fast float %5412, %5437
  %5444 = fadd fast float %5443, %5432
  %5445 = fadd fast float %5444, %5436
  %5446 = fadd fast float %5433, %5413
  %5447 = fsub fast float %5446, %5439
  %5448 = fadd fast float %5447, %5438
  br label %5449

; <label>:5449                                    ; preds = %5418, %5410
  %5450 = phi float [ %5442, %5418 ], [ %5411, %5410 ]
  %5451 = phi float [ %5445, %5418 ], [ %5412, %5410 ]
  %5452 = phi float [ %5448, %5418 ], [ %5413, %5410 ]
  br i1 %5287, label %5484, label %5453

; <label>:5453                                    ; preds = %5449
  %5454 = fmul fast float %4635, 0x400187C840000000
  %5455 = fadd fast float %5454, 0xC00EFC2120000000
  %5456 = fmul fast float %5455, %4635
  %5457 = fadd fast float %5456, 0x3FE5D16340000000
  %5458 = fmul fast float %5457, %4635
  %5459 = fadd fast float %5458, 1.000000e+00
  %5460 = call float @dx.op.unary.f32(i32 7, float %5459)  ; Saturate(value)
  %5461 = fsub fast float %5414, %143
  %5462 = fsub fast float %5415, %144
  %5463 = fsub fast float %5416, %145
  %5464 = fsub fast float %5414, %5242
  %5465 = fsub fast float %5415, %5243
  %5466 = fsub fast float %5416, %5244
  %5467 = call float @dx.op.dot3.f32(i32 55, float %5461, float %5462, float %5463, float %5461, float %5462, float %5463)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = call float @dx.op.dot3.f32(i32 55, float %5464, float %5465, float %5466, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5469 = fadd fast float %5468, 0x3EE4F8B580000000
  %5470 = fdiv fast float %5467, %5469
  %5471 = bitcast float %5470 to i32
  %5472 = ashr i32 %5471, 1
  %5473 = add nsw i32 %5472, 532487669
  %5474 = bitcast i32 %5473 to float
  %5475 = fmul fast float %5474, %5460
  %5476 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5477 = fmul fast float %5476, 0x4009981AE0000000
  %5478 = fsub fast float 0x40111BBD80000000, %5477
  %5479 = fmul fast float %5478, %5476
  %5480 = fadd fast float %5479, 0xC0009F6020000000
  %5481 = fmul fast float %5480, %5476
  %5482 = fadd fast float %5481, 1.000000e+00
  %5483 = call float @dx.op.unary.f32(i32 7, float %5482)  ; Saturate(value)
  br label %5487

; <label>:5484                                    ; preds = %5449
  %5485 = icmp ne i32 %5288, -1
  %5486 = zext i1 %5485 to i32
  br label %5487

; <label>:5487                                    ; preds = %5484, %5453
  %5488 = phi float [ %4635, %5484 ], [ %5483, %5453 ]
  %5489 = phi i32 [ %5486, %5484 ], [ 0, %5453 ]
  %5490 = fmul float %5488, 5.000000e+00
  %5491 = fsub float 5.000000e+00, %5490
  %5492 = icmp ne i32 %5489, 0
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 3
  %5495 = fadd fast float %5494, %5491
  %5496 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5495)  ; FMax(a,b)
  %5497 = call float @dx.op.unary.f32(i32 6, float %5450)  ; FAbs(value)
  %5498 = call float @dx.op.unary.f32(i32 6, float %5451)  ; FAbs(value)
  %5499 = fadd fast float %5498, %5497
  %5500 = call float @dx.op.unary.f32(i32 6, float %5452)  ; FAbs(value)
  %5501 = fadd fast float %5499, %5500
  %5502 = fcmp fast oeq float %5501, 0.000000e+00
  %5503 = fdiv fast float 1.000000e+00, %5501
  %5504 = select i1 %5502, float 1.000000e+00, float %5503
  %5505 = fmul fast float %5504, %5450
  %5506 = fmul fast float %5504, %5451
  %5507 = call float @dx.op.unary.f32(i32 6, float %5506)  ; FAbs(value)
  %5508 = call float @dx.op.unary.f32(i32 6, float %5505)  ; FAbs(value)
  %5509 = fsub fast float 1.000000e+00, %5507
  %5510 = fsub fast float 1.000000e+00, %5508
  %5511 = fcmp fast oge float %5505, 0.000000e+00
  %5512 = fcmp fast oge float %5506, 0.000000e+00
  %5513 = select i1 %5511, float 1.000000e+00, float -1.000000e+00
  %5514 = select i1 %5512, float 1.000000e+00, float -1.000000e+00
  %5515 = fcmp fast ole float %5452, 0.000000e+00
  %5516 = fmul fast float %5513, %5509
  %5517 = fmul fast float %5514, %5510
  %5518 = select i1 %5515, float %5516, float %5505
  %5519 = select i1 %5515, float %5517, float %5506
  %5520 = fmul fast float %5518, 5.000000e-01
  %5521 = fmul fast float %5519, 5.000000e-01
  %5522 = fadd fast float %5520, 5.000000e-01
  %5523 = fadd fast float %5521, 5.000000e-01
  %5524 = uitofp i32 %5285 to float
  %5525 = call float @dx.op.binary.f32(i32 36, float %5496, float 3.000000e+00)  ; FMin(a,b)
  %5526 = fadd fast float %5525, 2.000000e+00
  %5527 = call float @dx.op.unary.f32(i32 21, float %5526)  ; Exp(value)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5529 = fmul fast float %5528, %5527
  %5530 = fmul fast float %5529, 2.000000e+00
  %5531 = fsub fast float 1.000000e+00, %5530
  %5532 = fmul fast float %5522, %5531
  %5533 = fmul fast float %5523, %5531
  %5534 = fadd fast float %5532, %5529
  %5535 = fadd fast float %5533, %5529
  %5536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5534, float %5535, float %5524, float undef, i32 0, i32 0, i32 undef, float %5496)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5537 = extractvalue %dx.types.ResRet.f32 %5536, 0
  %5538 = extractvalue %dx.types.ResRet.f32 %5536, 1
  %5539 = extractvalue %dx.types.ResRet.f32 %5536, 2
  %5540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.f32 %5540, 3
  %5542 = fmul fast float %5541, %5255
  %5543 = call float @dx.op.binary.f32(i32 36, float %4716, float %5542)  ; FMin(a,b)
  %5544 = select i1 %5492, float %5543, float %5542
  %5545 = fmul fast float %5537, %5334
  %5546 = fmul fast float %5545, %5544
  %5547 = fmul fast float %5538, %5334
  %5548 = fmul fast float %5547, %5544
  %5549 = fmul fast float %5539, %5334
  %5550 = fmul fast float %5549, %5544
  %5551 = fadd fast float %5546, %5227
  %5552 = fadd fast float %5548, %5228
  %5553 = fadd fast float %5550, %5229
  %5554 = fmul fast float %5414, %5334
  %5555 = fmul fast float %5415, %5334
  %5556 = fmul fast float %5416, %5334
  %5557 = fadd fast float %5554, %5232
  %5558 = fadd fast float %5555, %5233
  %5559 = fadd fast float %5556, %5234
  %5560 = fsub fast float %5230, %5334
  br label %5336

; <label>:5561                                    ; preds = %5336
  br label %5562

; <label>:5562                                    ; preds = %5561, %5193
  %5563 = phi float [ %5194, %5193 ], [ %5337, %5561 ]
  %5564 = phi float [ %5195, %5193 ], [ %5338, %5561 ]
  %5565 = phi float [ %5196, %5193 ], [ %5339, %5561 ]
  %5566 = phi float [ %5197, %5193 ], [ %5340, %5561 ]
  %5567 = phi float [ %5199, %5193 ], [ %5341, %5561 ]
  %5568 = phi float [ %5200, %5193 ], [ %5342, %5561 ]
  %5569 = phi float [ %5201, %5193 ], [ %5343, %5561 ]
  %5570 = add i32 %5198, 1
  %5571 = icmp ugt i32 %5570, %5190
  br i1 %5571, label %5572, label %5193, !llvm.loop !89

; <label>:5572                                    ; preds = %5562
  br label %5573

; <label>:5573                                    ; preds = %5572, %5175
  %5574 = phi float [ 0.000000e+00, %5175 ], [ %5563, %5572 ]
  %5575 = phi float [ 0.000000e+00, %5175 ], [ %5564, %5572 ]
  %5576 = phi float [ 0.000000e+00, %5175 ], [ %5565, %5572 ]
  %5577 = phi float [ 0.000000e+00, %5175 ], [ %5567, %5572 ]
  %5578 = phi float [ 0.000000e+00, %5175 ], [ %5568, %5572 ]
  %5579 = phi float [ 0.000000e+00, %5175 ], [ %5569, %5572 ]
  %5580 = call float @dx.op.dot3.f32(i32 55, float %5574, float %5575, float %5576, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5581 = select i1 %185, float 0.000000e+00, float %5574
  %5582 = select i1 %185, float %5580, float %5575
  %5583 = select i1 %185, float 0.000000e+00, float %5576
  %5584 = fcmp fast olt float %5099, 0.000000e+00
  %5585 = call float @dx.op.unary.f32(i32 6, float %5099)  ; FAbs(value)
  %5586 = fmul fast float %5585, %5100
  %5587 = fmul fast float %5585, %5101
  %5588 = fmul fast float %5585, %5102
  %5589 = select i1 %5584, float %5100, float %5586
  %5590 = select i1 %5584, float %5101, float %5587
  %5591 = select i1 %5584, float %5102, float %5588
  %5592 = fsub fast float 1.000000e+00, %5585
  %5593 = call float @dx.op.unary.f32(i32 7, float %5592)  ; Saturate(value)
  %5594 = fmul fast float %5593, %5581
  %5595 = fmul fast float %5593, %5582
  %5596 = fmul fast float %5593, %5583
  %5597 = fadd fast float %5589, %5594
  %5598 = fadd fast float %5590, %5595
  %5599 = fadd fast float %5591, %5596
  %5600 = fcmp fast une float %4849, 0.000000e+00
  br i1 %5600, label %5701, label %5601

; <label>:5601                                    ; preds = %5573
  %5602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.f32 %5602, 0
  %5604 = extractvalue %dx.types.CBufRet.f32 %5602, 1
  %5605 = extractvalue %dx.types.CBufRet.f32 %5602, 2
  %5606 = extractvalue %dx.types.CBufRet.f32 %5602, 3
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  %5609 = extractvalue %dx.types.CBufRet.f32 %5607, 1
  %5610 = extractvalue %dx.types.CBufRet.f32 %5607, 2
  %5611 = extractvalue %dx.types.CBufRet.f32 %5607, 3
  %5612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5613 = extractvalue %dx.types.CBufRet.f32 %5612, 0
  %5614 = extractvalue %dx.types.CBufRet.f32 %5612, 1
  %5615 = extractvalue %dx.types.CBufRet.f32 %5612, 2
  %5616 = extractvalue %dx.types.CBufRet.f32 %5612, 3
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %4660, float %4661, float %4662)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5577, float %5578, float %5579, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5620 = fadd fast float %4635, -1.000000e+00
  %5621 = fsub fast float %5618, %5619
  %5622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5623 = extractvalue %dx.types.CBufRet.f32 %5622, 2
  %5624 = fmul fast float %5623, %5618
  %5625 = fdiv fast float 1.600000e+02, %5624
  %5626 = fmul fast float %5620, %5620
  %5627 = fmul fast float %5626, 0xBFB5B17960000000
  %5628 = fmul fast float %5627, %5621
  %5629 = fmul fast float %5628, %5625
  %5630 = call float @dx.op.unary.f32(i32 21, float %5629)  ; Exp(value)
  %5631 = fmul fast float %5630, 0x3FF04B2960000000
  %5632 = fsub fast float 0x3FF04B2960000000, %5631
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  %5634 = fmul fast float %5633, 4.000000e+00
  %5635 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5636 = extractvalue %dx.types.CBufRet.f32 %5635, 0
  %5637 = extractvalue %dx.types.CBufRet.f32 %5635, 1
  %5638 = extractvalue %dx.types.CBufRet.f32 %5635, 2
  %5639 = fadd fast float %5636, %5577
  %5640 = fadd fast float %5637, %5578
  %5641 = fadd fast float %5638, %5579
  %5642 = fmul fast float %5639, %5603
  %5643 = call float @dx.op.tertiary.f32(i32 46, float %5640, float %5604, float %5642)  ; FMad(a,b,c)
  %5644 = call float @dx.op.tertiary.f32(i32 46, float %5641, float %5605, float %5643)  ; FMad(a,b,c)
  %5645 = fadd fast float %5644, %5606
  %5646 = fmul fast float %5639, %5608
  %5647 = call float @dx.op.tertiary.f32(i32 46, float %5640, float %5609, float %5646)  ; FMad(a,b,c)
  %5648 = call float @dx.op.tertiary.f32(i32 46, float %5641, float %5610, float %5647)  ; FMad(a,b,c)
  %5649 = fadd fast float %5648, %5611
  %5650 = fmul fast float %5639, %5613
  %5651 = call float @dx.op.tertiary.f32(i32 46, float %5640, float %5614, float %5650)  ; FMad(a,b,c)
  %5652 = call float @dx.op.tertiary.f32(i32 46, float %5641, float %5615, float %5651)  ; FMad(a,b,c)
  %5653 = fadd fast float %5652, %5616
  %5654 = fdiv fast float %5645, %5653
  %5655 = fdiv fast float %5649, %5653
  %5656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5657 = extractvalue %dx.types.CBufRet.f32 %5656, 0
  %5658 = extractvalue %dx.types.CBufRet.f32 %5656, 1
  %5659 = fmul fast float %5657, %5654
  %5660 = fmul fast float %5658, %5655
  %5661 = extractvalue %dx.types.CBufRet.f32 %5656, 2
  %5662 = extractvalue %dx.types.CBufRet.f32 %5656, 3
  %5663 = fadd fast float %5659, %5661
  %5664 = fadd fast float %5660, %5662
  %5665 = fmul fast float %5617, 8.000000e+00
  %5666 = call float @dx.op.unary.f32(i32 7, float %5665)  ; Saturate(value)
  %5667 = fmul fast float %5663, 2.000000e+00
  %5668 = fmul fast float %5664, 2.000000e+00
  %5669 = fadd fast float %5667, -1.000000e+00
  %5670 = fadd fast float %5668, -1.000000e+00
  %5671 = fmul fast float %5669, %5669
  %5672 = fsub fast float 1.000000e+00, %5671
  %5673 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5674 = fmul fast float %5670, %5670
  %5675 = fsub fast float 1.000000e+00, %5674
  %5676 = call float @dx.op.unary.f32(i32 7, float %5675)  ; Saturate(value)
  %5677 = fmul fast float %4849, %5673
  %5678 = fmul fast float %5677, %5676
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = fmul fast float %5679, %5666
  %5681 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5663, float %5664, float undef, float undef, i32 0, i32 0, i32 undef, float %5634)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5682 = extractvalue %dx.types.ResRet.f32 %5681, 0
  %5683 = extractvalue %dx.types.ResRet.f32 %5681, 1
  %5684 = extractvalue %dx.types.ResRet.f32 %5681, 2
  %5685 = select i1 %185, float 0.000000e+00, float %5683
  %5686 = select i1 %185, float 0.000000e+00, float %5684
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 2
  %5689 = fmul fast float %5688, %5682
  %5690 = fmul fast float %5685, %5688
  %5691 = fmul fast float %5686, %5688
  %5692 = fsub fast float %5689, %5581
  %5693 = fsub fast float %5690, %5582
  %5694 = fsub fast float %5691, %5583
  %5695 = fmul fast float %5692, %5680
  %5696 = fmul fast float %5693, %5680
  %5697 = fmul fast float %5694, %5680
  %5698 = fadd fast float %5695, %5581
  %5699 = fadd fast float %5696, %5582
  %5700 = fadd fast float %5697, %5583
  br label %5701

; <label>:5701                                    ; preds = %5601, %5573, %5098, %4822
  %5702 = phi float [ %5100, %5098 ], [ %5698, %5601 ], [ %5597, %5573 ], [ %4775, %4822 ]
  %5703 = phi float [ %5101, %5098 ], [ %5699, %5601 ], [ %5598, %5573 ], [ %4776, %4822 ]
  %5704 = phi float [ %5102, %5098 ], [ %5700, %5601 ], [ %5599, %5573 ], [ %4777, %4822 ]
  %5705 = fmul fast float %143, %143
  %5706 = fmul fast float %144, %144
  %5707 = fadd fast float %5706, %5705
  %5708 = fmul fast float %145, %145
  %5709 = fadd fast float %5707, %5708
  %5710 = call float @dx.op.unary.f32(i32 24, float %5709)  ; Sqrt(value)
  %5711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5712 = extractvalue %dx.types.CBufRet.f32 %5711, 1
  %5713 = fsub fast float %5710, %5712
  %5714 = extractvalue %dx.types.CBufRet.f32 %5711, 2
  %5715 = fmul fast float %5713, %5714
  %5716 = call float @dx.op.unary.f32(i32 7, float %5715)  ; Saturate(value)
  %5717 = extractvalue %dx.types.CBufRet.f32 %5711, 0
  %5718 = extractvalue %dx.types.CBufRet.f32 %5711, 3
  %5719 = fmul fast float %5716, %46
  %5720 = fmul fast float %5719, %5717
  %5721 = fmul fast float %5719, %5718
  %5722 = fadd fast float %5721, 1.000000e+00
  %5723 = fmul fast float %4828, %4779
  %5724 = fmul fast float %5723, %5722
  %5725 = fmul fast float %4828, %4780
  %5726 = fmul fast float %5725, %5722
  %5727 = fmul fast float %4828, %4781
  %5728 = fmul fast float %5727, %5722
  %5729 = call float @dx.op.dot3.f32(i32 55, float %4629, float %4630, float %4631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = fcmp fast ogt float %5729, 0x3E7FF19E20000000
  %5731 = fdiv fast float 1.000000e+00, %5729
  %5732 = select i1 %5730, float %5731, float 0.000000e+00
  %5733 = fmul fast float %5732, %4629
  %5734 = fmul fast float %5732, %4630
  %5735 = fmul fast float %5732, %4631
  %5736 = fadd fast float %5733, -1.000000e+00
  %5737 = fadd fast float %5734, -1.000000e+00
  %5738 = fadd fast float %5735, -1.000000e+00
  %5739 = fmul fast float %5736, 5.000000e-01
  %5740 = fmul fast float %5737, 5.000000e-01
  %5741 = fmul fast float %5738, 5.000000e-01
  %5742 = fadd fast float %5739, 1.000000e+00
  %5743 = fadd fast float %5740, 1.000000e+00
  %5744 = fadd fast float %5741, 1.000000e+00
  %5745 = fadd fast float %5720, %4025
  %5746 = fmul fast float %5702, %4823
  %5747 = fmul fast float %5703, %4824
  %5748 = fmul fast float %5704, %4825
  %5749 = fsub fast float 1.000000e+00, %4654
  %5750 = bitcast float %5749 to i32
  %5751 = sitofp i32 %5750 to float
  %5752 = fmul fast float %5751, 5.000000e+00
  %5753 = fadd fast float %5752, 0xC1EFBF8940000000
  %5754 = fptosi float %5753 to i32
  %5755 = bitcast i32 %5754 to float
  %5756 = fmul fast float %5745, %5755
  %5757 = fmul fast float %5723, %5756
  %5758 = fmul fast float %5757, %5742
  %5759 = fmul fast float %5725, %5756
  %5760 = fmul fast float %5759, %5743
  %5761 = fmul fast float %5727, %5756
  %5762 = fmul fast float %5761, %5744
  %5763 = fmul fast float %5724, %4021
  %5764 = fmul fast float %5726, %4021
  %5765 = fmul fast float %5728, %4021
  %5766 = fadd fast float %5746, %4017
  %5767 = fadd fast float %5766, %5758
  %5768 = fmul fast float %5767, %4021
  %5769 = fadd fast float %5747, %4018
  %5770 = fadd fast float %5769, %5760
  %5771 = fmul fast float %5770, %4021
  %5772 = fadd fast float %5748, %4019
  %5773 = fadd fast float %5772, %5762
  %5774 = fmul fast float %5773, %4021
  %5775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5776 = extractvalue %dx.types.CBufRet.f32 %5775, 3
  %5777 = fcmp fast oeq float %5776, 0.000000e+00
  br i1 %5777, label %5996, label %5778

; <label>:5778                                    ; preds = %5701
  %5779 = extractvalue %dx.types.CBufRet.f32 %5775, 0
  %5780 = extractvalue %dx.types.CBufRet.f32 %5775, 1
  %5781 = extractvalue %dx.types.CBufRet.f32 %5775, 2
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5785 = extractvalue %dx.types.CBufRet.f32 %5782, 2
  %5786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5787 = extractvalue %dx.types.CBufRet.f32 %5786, 0
  %5788 = extractvalue %dx.types.CBufRet.f32 %5786, 1
  %5789 = call float @dx.op.dot3.f32(i32 55, float %5783, float %5784, float %5785, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5790 = select i1 %185, float %5787, float %5783
  %5791 = select i1 %185, float %5789, float %5784
  %5792 = select i1 %185, float %5788, float %5785
  %5793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5794 = extractvalue %dx.types.CBufRet.f32 %5793, 1
  %5795 = fcmp fast une float %5794, 0.000000e+00
  br i1 %5795, label %5796, label %5813

; <label>:5796                                    ; preds = %5778
  %5797 = fptoui float %80 to i32
  %5798 = fptoui float %81 to i32
  %5799 = lshr i32 %5797, 4
  %5800 = lshr i32 %5798, 4
  %5801 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5802 = extractvalue %dx.types.CBufRet.f32 %5801, 0
  %5803 = fptoui float %5802 to i32
  %5804 = add i32 %5803, 15
  %5805 = lshr i32 %5804, 4
  %5806 = mul i32 %5805, %5800
  %5807 = add i32 %5806, %5799
  %5808 = shl i32 %5807, 3
  %5809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5808, i32 undef)  ; BufferLoad(srv,index,wot)
  %5810 = extractvalue %dx.types.ResRet.i32 %5809, 0
  %5811 = and i32 %5810, -268435456
  %5812 = icmp eq i32 %5811, -1342177280
  br i1 %5812, label %5818, label %5813

; <label>:5813                                    ; preds = %5796, %5778
  %5814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4640, float %4641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5815 = extractvalue %dx.types.ResRet.f32 %5814, 0
  %5816 = extractvalue %dx.types.ResRet.f32 %5814, 1
  %5817 = extractvalue %dx.types.ResRet.f32 %5814, 2
  br label %5818

; <label>:5818                                    ; preds = %5813, %5796
  %5819 = phi float [ %5815, %5813 ], [ 0.000000e+00, %5796 ]
  %5820 = phi float [ %5816, %5813 ], [ 0.000000e+00, %5796 ]
  %5821 = phi float [ %5817, %5813 ], [ 0.000000e+00, %5796 ]
  %5822 = call float @dx.op.binary.f32(i32 36, float %5820, float %5821)  ; FMin(a,b)
  %5823 = call float @dx.op.binary.f32(i32 36, float %5819, float %5822)  ; FMin(a,b)
  %5824 = fcmp fast ogt float %5823, 0.000000e+00
  br i1 %5824, label %5825, label %5996, !dx.controlflow.hints !91

; <label>:5825                                    ; preds = %5818
  %5826 = fmul fast float %5819, %5790
  %5827 = fmul fast float %5820, %5791
  %5828 = fmul fast float %5821, %5792
  %5829 = fsub fast float %5779, %4625
  %5830 = fsub fast float %5780, %4624
  %5831 = fsub fast float %5781, %4623
  %5832 = call float @dx.op.dot3.f32(i32 55, float %5829, float %5830, float %5831, float %5829, float %5830, float %5831)  ; Dot3(ax,ay,az,bx,by,bz)
  %5833 = call float @dx.op.unary.f32(i32 25, float %5832)  ; Rsqrt(value)
  %5834 = fmul fast float %5833, %5829
  %5835 = fmul fast float %5833, %5830
  %5836 = fmul fast float %5833, %5831
  %5837 = call float @dx.op.dot3.f32(i32 55, float %5779, float %5780, float %5781, float %4632, float %4633, float %4634)  ; Dot3(ax,ay,az,bx,by,bz)
  %5838 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4621, float %4620, float %5834, float %5835, float %5836)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = call float @dx.op.unary.f32(i32 7, float %5837)  ; Saturate(value)
  %5840 = fmul fast float %5839, %5839
  %5841 = fmul fast float %5840, %4679
  %5842 = call float @dx.op.unary.f32(i32 7, float %5841)  ; Saturate(value)
  %5843 = fmul fast float %5842, %5839
  %5844 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float %5834, float %5835, float %5836)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = fmul fast float %5844, %5844
  %5846 = call float @dx.op.unary.f32(i32 6, float %5837)  ; FAbs(value)
  %5847 = fsub fast float 1.000000e+00, %4672
  %5848 = fmul fast float %4654, %4654
  %5849 = fmul fast float %5848, %5847
  %5850 = fadd fast float %5849, %4672
  %5851 = bitcast float %5850 to i32
  %5852 = ashr i32 %5851, 1
  %5853 = add nsw i32 %5852, 532487669
  %5854 = bitcast i32 %5853 to float
  %5855 = fadd fast float %5854, %4654
  %5856 = fmul fast float %4672, %5845
  %5857 = fsub fast float 1.000000e+00, %5845
  %5858 = fadd fast float %5857, %5856
  %5859 = fmul fast float %5846, %5846
  %5860 = fmul fast float %5859, %5847
  %5861 = fadd fast float %5860, %4672
  %5862 = bitcast float %5861 to i32
  %5863 = ashr i32 %5862, 1
  %5864 = add nsw i32 %5863, 532487669
  %5865 = bitcast i32 %5864 to float
  %5866 = fadd fast float %5865, %5846
  %5867 = fmul fast float %5858, %5858
  %5868 = fmul fast float %5867, %5855
  %5869 = fmul fast float %5868, %5866
  %5870 = fdiv fast float 0x3FF0A00000000000, %5869
  %5871 = fmul fast float %5870, %4672
  %5872 = call float @dx.op.unary.f32(i32 6, float %5838)  ; FAbs(value)
  %5873 = fsub fast float 1.000000e+00, %5872
  %5874 = bitcast float %5873 to i32
  %5875 = sitofp i32 %5874 to float
  %5876 = fmul fast float %5875, 5.000000e+00
  %5877 = fadd fast float %5876, 0xC1EFBF8940000000
  %5878 = fptosi float %5877 to i32
  %5879 = bitcast i32 %5878 to float
  %5880 = fsub fast float 1.000000e+00, %4626
  %5881 = fsub fast float 1.000000e+00, %4627
  %5882 = fsub fast float 1.000000e+00, %4652
  %5883 = fmul fast float %5879, %5880
  %5884 = fmul fast float %5879, %5881
  %5885 = fmul fast float %5879, %5882
  %5886 = fadd fast float %5883, %4626
  %5887 = fadd fast float %5884, %4627
  %5888 = fadd fast float %5885, %4652
  br i1 %4795, label %5889, label %5912

; <label>:5889                                    ; preds = %5825
  %5890 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4024, float %5872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5891 = extractvalue %dx.types.ResRet.f32 %5890, 0
  %5892 = extractvalue %dx.types.ResRet.f32 %5890, 1
  %5893 = extractvalue %dx.types.ResRet.f32 %5890, 2
  %5894 = fadd fast float %5891, -5.000000e-01
  %5895 = fadd fast float %5892, -5.000000e-01
  %5896 = fadd fast float %5893, -5.000000e-01
  %5897 = fmul fast float %4626, 4.000000e+00
  %5898 = fmul fast float %5897, %5880
  %5899 = fmul fast float %5898, %5894
  %5900 = fmul fast float %4627, 4.000000e+00
  %5901 = fmul fast float %5900, %5881
  %5902 = fmul fast float %5901, %5895
  %5903 = fmul fast float %4652, 4.000000e+00
  %5904 = fmul fast float %5903, %5882
  %5905 = fmul fast float %5904, %5896
  %5906 = fadd fast float %5899, %5886
  %5907 = fadd fast float %5902, %5887
  %5908 = fadd fast float %5905, %5888
  %5909 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  %5910 = call float @dx.op.unary.f32(i32 7, float %5907)  ; Saturate(value)
  %5911 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  br label %5912

; <label>:5912                                    ; preds = %5889, %5825
  %5913 = phi float [ %5909, %5889 ], [ %5886, %5825 ]
  %5914 = phi float [ %5910, %5889 ], [ %5887, %5825 ]
  %5915 = phi float [ %5911, %5889 ], [ %5888, %5825 ]
  %5916 = fmul fast float %5837, 9.843750e-01
  %5917 = fadd fast float %5916, 7.812500e-03
  %5918 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5917, float %4785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5919 = extractvalue %dx.types.ResRet.f32 %5918, 2
  %5920 = extractvalue %dx.types.ResRet.f32 %5918, 3
  %5921 = fmul fast float %5919, %4626
  %5922 = fmul fast float %5919, %4627
  %5923 = fmul fast float %5919, %4652
  %5924 = fadd fast float %5921, %5920
  %5925 = fadd fast float %5922, %5920
  %5926 = fadd fast float %5923, %5920
  br i1 %4795, label %5927, label %5950

; <label>:5927                                    ; preds = %5912
  %5928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4024, float %5837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5929 = extractvalue %dx.types.ResRet.f32 %5928, 0
  %5930 = extractvalue %dx.types.ResRet.f32 %5928, 1
  %5931 = extractvalue %dx.types.ResRet.f32 %5928, 2
  %5932 = fadd fast float %5929, -5.000000e-01
  %5933 = fadd fast float %5930, -5.000000e-01
  %5934 = fadd fast float %5931, -5.000000e-01
  %5935 = fmul fast float %4626, 4.000000e+00
  %5936 = fmul fast float %5935, %5880
  %5937 = fmul fast float %5936, %5932
  %5938 = fmul fast float %4627, 4.000000e+00
  %5939 = fmul fast float %5938, %5881
  %5940 = fmul fast float %5939, %5933
  %5941 = fmul fast float %4652, 4.000000e+00
  %5942 = fmul fast float %5941, %5882
  %5943 = fmul fast float %5942, %5934
  %5944 = fadd fast float %5937, %5924
  %5945 = fadd fast float %5940, %5925
  %5946 = fadd fast float %5943, %5926
  %5947 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5948 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5949 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  br label %5950

; <label>:5950                                    ; preds = %5927, %5912
  %5951 = phi float [ %5947, %5927 ], [ %5924, %5912 ]
  %5952 = phi float [ %5948, %5927 ], [ %5925, %5912 ]
  %5953 = phi float [ %5949, %5927 ], [ %5926, %5912 ]
  %5954 = call float @dx.op.binary.f32(i32 35, float %5952, float %5953)  ; FMax(a,b)
  %5955 = call float @dx.op.binary.f32(i32 35, float %5951, float %5954)  ; FMax(a,b)
  %5956 = fsub fast float 1.000000e+00, %5955
  %5957 = fmul fast float %5913, %5871
  %5958 = fmul fast float %5914, %5871
  %5959 = fmul fast float %5915, %5871
  %5960 = fsub fast float 1.000000e+00, %5838
  %5961 = bitcast float %5960 to i32
  %5962 = sitofp i32 %5961 to float
  %5963 = fmul fast float %5962, 5.000000e+00
  %5964 = fadd fast float %5963, 0xC1EFBF8940000000
  %5965 = fptosi float %5964 to i32
  %5966 = bitcast i32 %5965 to float
  %5967 = fmul fast float %5966, %4025
  %5968 = fmul fast float %5956, %5967
  %5969 = fmul fast float %5968, %5742
  %5970 = fmul fast float %5968, %5743
  %5971 = fmul fast float %5968, %5744
  %5972 = fadd fast float %5969, %5957
  %5973 = fadd fast float %5970, %5958
  %5974 = fadd fast float %5971, %5959
  %5975 = fmul fast float %5843, %5826
  %5976 = fmul fast float %5975, %5956
  %5977 = fmul fast float %5843, %5827
  %5978 = fmul fast float %5977, %5956
  %5979 = fmul fast float %5843, %5828
  %5980 = fmul fast float %5979, %5956
  %5981 = fmul fast float %5975, %5972
  %5982 = fmul fast float %5977, %5973
  %5983 = fmul fast float %5979, %5974
  %5984 = fadd fast float %5976, %5724
  %5985 = fmul fast float %5984, %4021
  %5986 = fadd fast float %5978, %5726
  %5987 = fmul fast float %5986, %4021
  %5988 = fadd fast float %5980, %5728
  %5989 = fmul fast float %5988, %4021
  %5990 = fadd fast float %5981, %5767
  %5991 = fmul fast float %5990, %4021
  %5992 = fadd fast float %5982, %5770
  %5993 = fmul fast float %5992, %4021
  %5994 = fadd fast float %5983, %5773
  %5995 = fmul fast float %5994, %4021
  br label %5996

; <label>:5996                                    ; preds = %5950, %5818, %5701
  %5997 = phi float [ %5768, %5701 ], [ %5768, %5818 ], [ %5991, %5950 ]
  %5998 = phi float [ %5771, %5701 ], [ %5771, %5818 ], [ %5993, %5950 ]
  %5999 = phi float [ %5774, %5701 ], [ %5774, %5818 ], [ %5995, %5950 ]
  %6000 = phi float [ %5763, %5701 ], [ %5763, %5818 ], [ %5985, %5950 ]
  %6001 = phi float [ %5764, %5701 ], [ %5764, %5818 ], [ %5987, %5950 ]
  %6002 = phi float [ %5765, %5701 ], [ %5765, %5818 ], [ %5989, %5950 ]
  %6003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.i32 %6003, 0
  %6005 = icmp eq i32 %6004, 0
  br i1 %6005, label %6436, label %6006

; <label>:6006                                    ; preds = %5996
  %6007 = fptoui float %80 to i32
  %6008 = fptoui float %81 to i32
  %6009 = lshr i32 %6007, 4
  %6010 = lshr i32 %6008, 4
  %6011 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6012 = extractvalue %dx.types.CBufRet.i32 %6011, 0
  %6013 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6010, i32 %6012, i32 %6009)  ; UMad(a,b,c)
  %6014 = add nsw i32 %6004, -1
  %6015 = call i32 @dx.op.binary.i32(i32 37, i32 %6014, i32 0)  ; IMax(a,b)
  %6016 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %6017 = fptoui float %6016 to i32
  %6018 = lshr i32 %6017, 5
  %6019 = call i32 @dx.op.binary.i32(i32 40, i32 %6018, i32 8191)  ; UMin(a,b)
  %6020 = shl i32 %6019, 2
  %6021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6020, i32 undef)  ; BufferLoad(srv,index,wot)
  %6022 = extractvalue %dx.types.ResRet.i32 %6021, 0
  %6023 = lshr i32 %6022, 16
  %6024 = and i32 %6022, 65535
  %6025 = lshr i32 %6022, 21
  %6026 = lshr i32 %6024, 5
  %6027 = call i32 @dx.op.binary.i32(i32 40, i32 %6026, i32 %6015)  ; UMin(a,b)
  %6028 = icmp ugt i32 %6025, %6027
  br i1 %6028, label %6436, label %6029

; <label>:6029                                    ; preds = %6006
  br label %6030

; <label>:6030                                    ; preds = %6426, %6029
  %6031 = phi i32 [ %6433, %6426 ], [ %6025, %6029 ]
  %6032 = phi float [ %6427, %6426 ], [ %5997, %6029 ]
  %6033 = phi float [ %6428, %6426 ], [ %5998, %6029 ]
  %6034 = phi float [ %6429, %6426 ], [ %5999, %6029 ]
  %6035 = phi float [ %6430, %6426 ], [ %6000, %6029 ]
  %6036 = phi float [ %6431, %6426 ], [ %6001, %6029 ]
  %6037 = phi float [ %6432, %6426 ], [ %6002, %6029 ]
  %6038 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6039 = extractvalue %dx.types.CBufRet.i32 %6038, 0
  %6040 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6013, i32 %6039, i32 %6031)  ; UMad(a,b,c)
  %6041 = shl i32 %6040, 2
  %6042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6041, i32 undef)  ; BufferLoad(srv,index,wot)
  %6043 = extractvalue %dx.types.ResRet.i32 %6042, 0
  %6044 = shl i32 %6031, 5
  %6045 = sub nsw i32 %6023, %6044
  %6046 = call i32 @dx.op.binary.i32(i32 37, i32 %6045, i32 0)  ; IMax(a,b)
  %6047 = call i32 @dx.op.binary.i32(i32 38, i32 %6046, i32 31)  ; IMin(a,b)
  %6048 = sub nsw i32 1, %6023
  %6049 = add nsw i32 %6048, %6024
  %6050 = call i32 @dx.op.binary.i32(i32 37, i32 %6049, i32 0)  ; IMax(a,b)
  %6051 = call i32 @dx.op.binary.i32(i32 38, i32 %6050, i32 32)  ; IMin(a,b)
  %6052 = and i32 %6051, 31
  %6053 = shl i32 -1, %6052
  %6054 = xor i32 %6053, -1
  %6055 = and i32 %6047, 31
  %6056 = shl i32 %6054, %6055
  %6057 = icmp eq i32 %6051, 32
  %6058 = select i1 %6057, i32 -1, i32 %6056
  %6059 = and i32 %6058, %6043
  %6060 = icmp eq i32 %6059, 0
  br i1 %6060, label %6426, label %6061

; <label>:6061                                    ; preds = %6030
  br label %6062

; <label>:6062                                    ; preds = %6142, %6061
  %6063 = phi i32 [ %6074, %6142 ], [ %6059, %6061 ]
  %6064 = phi float [ %6143, %6142 ], [ %6032, %6061 ]
  %6065 = phi float [ %6144, %6142 ], [ %6033, %6061 ]
  %6066 = phi float [ %6145, %6142 ], [ %6034, %6061 ]
  %6067 = phi float [ %6146, %6142 ], [ %6035, %6061 ]
  %6068 = phi float [ %6147, %6142 ], [ %6036, %6061 ]
  %6069 = phi float [ %6148, %6142 ], [ %6037, %6061 ]
  %6070 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6063)  ; FirstbitLo(value)
  %6071 = add i32 %6070, %6044
  %6072 = and i32 %6070, 31
  %6073 = shl i32 1, %6072
  %6074 = xor i32 %6073, %6063
  %6075 = mul i32 %6071, 112
  %6076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6075, i32 undef)  ; BufferLoad(srv,index,wot)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.ResRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.ResRet.f32 %6076, 2
  %6080 = or i32 %6075, 12
  %6081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6080, i32 undef)  ; BufferLoad(srv,index,wot)
  %6082 = extractvalue %dx.types.ResRet.f32 %6081, 0
  %6083 = add i32 %6075, 44
  %6084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6083, i32 undef)  ; BufferLoad(srv,index,wot)
  %6085 = extractvalue %dx.types.ResRet.f32 %6084, 0
  %6086 = add i32 %6075, 48
  %6087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6086, i32 undef)  ; BufferLoad(srv,index,wot)
  %6088 = extractvalue %dx.types.ResRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.ResRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.ResRet.f32 %6087, 2
  %6091 = add i32 %6075, 80
  %6092 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6091, i32 undef)  ; BufferLoad(srv,index,wot)
  %6093 = extractvalue %dx.types.ResRet.f32 %6092, 1
  %6094 = extractvalue %dx.types.ResRet.f32 %6092, 2
  %6095 = call float @dx.op.dot3.f32(i32 55, float %6077, float %6078, float %6079, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6096 = select i1 %185, float %6093, float %6077
  %6097 = select i1 %185, float %6095, float %6078
  %6098 = select i1 %185, float %6094, float %6079
  %6099 = fsub fast float %6088, %143
  %6100 = fsub fast float %6089, %144
  %6101 = fsub fast float %6090, %145
  %6102 = call float @dx.op.dot3.f32(i32 55, float %6099, float %6100, float %6101, float %6099, float %6100, float %6101)  ; Dot3(ax,ay,az,bx,by,bz)
  %6103 = call float @dx.op.unary.f32(i32 24, float %6102)  ; Sqrt(value)
  %6104 = fdiv fast float 1.000000e+00, %6103
  %6105 = fmul fast float %6104, %6099
  %6106 = fmul fast float %6104, %6100
  %6107 = fmul fast float %6104, %6101
  %6108 = fadd fast float %6103, %6082
  %6109 = fdiv fast float 1.000000e+00, %6108
  %6110 = fmul float %6085, %6109
  %6111 = fmul float %6110, %6110
  %6112 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  %6113 = and i32 %6073, %6059
  %6114 = icmp eq i32 %6113, 0
  br i1 %6114, label %6137, label %6115, !dx.controlflow.hints !92

; <label>:6115                                    ; preds = %6062
  %6116 = lshr i32 %6007, 5
  %6117 = lshr i32 %6008, 5
  %6118 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6116, i32 %6117, i32 %6071, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6119 = extractvalue %dx.types.ResRet.i32 %6118, 0
  %6120 = and i32 %6119, 3
  %6121 = icmp eq i32 %6120, 0
  %6122 = select i1 %6121, float 1.000000e+00, float 0.000000e+00
  %6123 = icmp eq i32 %6120, 3
  br i1 %6123, label %6124, label %6137

; <label>:6124                                    ; preds = %6115
  %6125 = lshr i32 %6119, 10
  %6126 = and i32 %6125, 8160
  %6127 = and i32 %6008, 31
  %6128 = or i32 %6126, %6127
  %6129 = lshr i32 %6119, 1
  %6130 = and i32 %6129, 16352
  %6131 = and i32 %6007, 31
  %6132 = or i32 %6130, %6131
  %6133 = lshr i32 %6119, 23
  %6134 = and i32 %6133, 255
  %6135 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6132, i32 %6128, i32 %6134, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6136 = extractvalue %dx.types.ResRet.f32 %6135, 0
  br label %6137

; <label>:6137                                    ; preds = %6124, %6115, %6062
  %6138 = phi float [ %6136, %6124 ], [ %6122, %6115 ], [ 0.000000e+00, %6062 ]
  %6139 = call float @dx.op.binary.f32(i32 36, float %6138, float %6138)  ; FMin(a,b)
  %6140 = call float @dx.op.binary.f32(i32 36, float %6138, float %6139)  ; FMin(a,b)
  %6141 = fcmp fast ogt float %6140, 0.000000e+00
  br i1 %6141, label %6150, label %6142, !dx.controlflow.hints !93

; <label>:6142                                    ; preds = %6382, %6137
  %6143 = phi float [ %6064, %6137 ], [ %6422, %6382 ]
  %6144 = phi float [ %6065, %6137 ], [ %6423, %6382 ]
  %6145 = phi float [ %6066, %6137 ], [ %6424, %6382 ]
  %6146 = phi float [ %6067, %6137 ], [ %6416, %6382 ]
  %6147 = phi float [ %6068, %6137 ], [ %6417, %6382 ]
  %6148 = phi float [ %6069, %6137 ], [ %6418, %6382 ]
  %6149 = icmp eq i32 %6063, %6073
  br i1 %6149, label %6425, label %6062

; <label>:6150                                    ; preds = %6137
  %6151 = fmul fast float %6138, %6096
  %6152 = fmul fast float %6138, %6097
  %6153 = fmul fast float %6138, %6098
  %6154 = fsub fast float %6090, %4425
  %6155 = fcmp fast ogt float %6154, 0.000000e+00
  %6156 = fsub fast float %145, %4425
  %6157 = fcmp fast ogt float %6156, 0.000000e+00
  %6158 = xor i1 %6157, %6155
  %6159 = fsub fast float %4425, %6090
  %6160 = fmul fast float %6159, 2.000000e+00
  %6161 = fadd fast float %6160, %6090
  %6162 = select i1 %6158, float %6090, float %6161
  %6163 = fsub fast float %6162, %145
  %6164 = call float @dx.op.dot3.f32(i32 55, float %6099, float %6100, float %6163, float %6099, float %6100, float %6163)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = call float @dx.op.unary.f32(i32 25, float %6164)  ; Rsqrt(value)
  %6166 = fmul fast float %6165, %6099
  %6167 = fmul fast float %6165, %6100
  %6168 = fmul fast float %6165, %6163
  %6169 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4433)  ; Dot3(ax,ay,az,bx,by,bz)
  %6170 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6166, float %6167, float %6168)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = fdiv fast float 1.000000e+00, %6170
  %6172 = fmul fast float %6171, %6169
  %6173 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6156, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = fcmp fast ogt float %6173, 0.000000e+00
  %6175 = fcmp fast olt float %6173, 0.000000e+00
  %6176 = zext i1 %6174 to i32
  %6177 = zext i1 %6175 to i32
  %6178 = sub nsw i32 %6176, %6177
  %6179 = sitofp i32 %6178 to float
  %6180 = fsub fast float %6162, %4425
  %6181 = call float @dx.op.dot3.f32(i32 55, float %6099, float %6100, float %6180, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6182 = fcmp fast ogt float %6181, 0.000000e+00
  %6183 = fcmp fast olt float %6181, 0.000000e+00
  %6184 = zext i1 %6182 to i32
  %6185 = zext i1 %6183 to i32
  %6186 = sub nsw i32 %6184, %6185
  %6187 = sitofp i32 %6186 to float
  %6188 = fcmp fast une float %6179, %6187
  br i1 %6188, label %6189, label %6199

; <label>:6189                                    ; preds = %6150
  %6190 = fmul fast float %6172, %6168
  %6191 = fmul fast float %6172, %6167
  %6192 = fmul fast float %6172, %6166
  %6193 = fmul fast float %6192, %6192
  %6194 = fmul fast float %6191, %6191
  %6195 = fadd fast float %6193, %6194
  %6196 = fmul fast float %6190, %6190
  %6197 = fadd fast float %6195, %6196
  %6198 = call float @dx.op.unary.f32(i32 24, float %6197)  ; Sqrt(value)
  br label %6211

; <label>:6199                                    ; preds = %6150
  %6200 = icmp slt i32 %6178, 0
  br i1 %6200, label %6201, label %6211

; <label>:6201                                    ; preds = %6199
  %6202 = fsub fast float %143, %6088
  %6203 = fsub fast float %144, %6089
  %6204 = fsub fast float %145, %6162
  %6205 = fmul fast float %6202, %6202
  %6206 = fmul fast float %6203, %6203
  %6207 = fadd fast float %6205, %6206
  %6208 = fmul fast float %6204, %6204
  %6209 = fadd fast float %6207, %6208
  %6210 = call float @dx.op.unary.f32(i32 24, float %6209)  ; Sqrt(value)
  br label %6211

; <label>:6211                                    ; preds = %6201, %6199, %6189
  %6212 = phi float [ %6198, %6189 ], [ %6210, %6201 ], [ 0.000000e+00, %6199 ]
  %6213 = and i1 %6157, %6155
  %6214 = fsub fast float -0.000000e+00, %6212
  %6215 = select i1 %6213, float -0.000000e+00, float %6214
  %6216 = fmul fast float %4426, 0x3FF7154760000000
  %6217 = fmul fast float %6216, %6215
  %6218 = fmul fast float %4427, 0x3FF7154760000000
  %6219 = fmul fast float %6218, %6215
  %6220 = fmul fast float %4428, 0x3FF7154760000000
  %6221 = fmul fast float %6220, %6215
  %6222 = call float @dx.op.unary.f32(i32 21, float %6217)  ; Exp(value)
  %6223 = call float @dx.op.unary.f32(i32 21, float %6219)  ; Exp(value)
  %6224 = call float @dx.op.unary.f32(i32 21, float %6221)  ; Exp(value)
  %6225 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  %6226 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6227 = call float @dx.op.unary.f32(i32 7, float %6224)  ; Saturate(value)
  %6228 = fmul fast float %6151, %6225
  %6229 = fmul fast float %6152, %6226
  %6230 = fmul fast float %6153, %6227
  %6231 = fsub fast float %6105, %4625
  %6232 = fsub fast float %6106, %4624
  %6233 = fsub fast float %6107, %4623
  %6234 = call float @dx.op.dot3.f32(i32 55, float %6231, float %6232, float %6233, float %6231, float %6232, float %6233)  ; Dot3(ax,ay,az,bx,by,bz)
  %6235 = call float @dx.op.unary.f32(i32 25, float %6234)  ; Rsqrt(value)
  %6236 = fmul fast float %6235, %6231
  %6237 = fmul fast float %6235, %6232
  %6238 = fmul fast float %6235, %6233
  %6239 = call float @dx.op.dot3.f32(i32 55, float %6105, float %6106, float %6107, float %4632, float %4633, float %4634)  ; Dot3(ax,ay,az,bx,by,bz)
  %6240 = call float @dx.op.dot3.f32(i32 55, float %4622, float %4621, float %4620, float %6236, float %6237, float %6238)  ; Dot3(ax,ay,az,bx,by,bz)
  %6241 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6242 = fmul fast float %6241, %6112
  %6243 = fmul fast float %6241, %6241
  %6244 = fmul fast float %6243, %4679
  %6245 = call float @dx.op.unary.f32(i32 7, float %6244)  ; Saturate(value)
  %6246 = fmul fast float %6242, %6245
  %6247 = bitcast float %6102 to i32
  %6248 = ashr i32 %6247, 1
  %6249 = sub nsw i32 1597463007, %6248
  %6250 = bitcast i32 %6249 to float
  %6251 = fmul fast float %6250, %6099
  %6252 = fmul fast float %6250, %6100
  %6253 = fmul fast float %6250, %6101
  %6254 = fsub fast float %6251, %4625
  %6255 = fsub fast float %6252, %4624
  %6256 = fsub fast float %6253, %4623
  %6257 = call float @dx.op.dot3.f32(i32 55, float %6254, float %6255, float %6256, float %6254, float %6255, float %6256)  ; Dot3(ax,ay,az,bx,by,bz)
  %6258 = call float @dx.op.unary.f32(i32 25, float %6257)  ; Rsqrt(value)
  %6259 = fmul fast float %6254, %6258
  %6260 = fmul fast float %6255, %6258
  %6261 = fmul fast float %6256, %6258
  %6262 = call float @dx.op.dot3.f32(i32 55, float %4632, float %4633, float %4634, float %6259, float %6260, float %6261)  ; Dot3(ax,ay,az,bx,by,bz)
  %6263 = fmul fast float %6262, %6262
  %6264 = call float @dx.op.unary.f32(i32 6, float %6239)  ; FAbs(value)
  %6265 = fsub fast float 1.000000e+00, %4672
  %6266 = fmul fast float %4654, %4654
  %6267 = fmul fast float %6266, %6265
  %6268 = fadd fast float %6267, %4672
  %6269 = bitcast float %6268 to i32
  %6270 = ashr i32 %6269, 1
  %6271 = add nsw i32 %6270, 532487669
  %6272 = bitcast i32 %6271 to float
  %6273 = fadd fast float %6272, %4654
  %6274 = fmul fast float %4672, %6263
  %6275 = fsub fast float 1.000000e+00, %6263
  %6276 = fadd fast float %6275, %6274
  %6277 = fmul fast float %6264, %6264
  %6278 = fmul fast float %6277, %6265
  %6279 = fadd fast float %6278, %4672
  %6280 = bitcast float %6279 to i32
  %6281 = ashr i32 %6280, 1
  %6282 = add nsw i32 %6281, 532487669
  %6283 = bitcast i32 %6282 to float
  %6284 = fadd fast float %6283, %6264
  %6285 = fmul fast float %6276, %6276
  %6286 = fmul fast float %6285, %6273
  %6287 = fmul fast float %6286, %6284
  %6288 = fdiv fast float 1.000000e+00, %6287
  %6289 = bitcast float %4672 to i32
  %6290 = sitofp i32 %6289 to float
  %6291 = fmul fast float %6290, 0x3FE7F73180000000
  %6292 = fadd fast float %6291, 0x41AFE27C40000000
  %6293 = fptosi float %6292 to i32
  %6294 = bitcast i32 %6293 to float
  %6295 = fmul fast float %6085, 0x3FD80E9D60000000
  %6296 = fmul fast float %6295, %6250
  %6297 = fadd fast float %6294, %6296
  %6298 = bitcast float %6297 to i32
  %6299 = sub nsw i32 2129859010, %6298
  %6300 = bitcast i32 %6299 to float
  %6301 = fmul fast float %4672, %6288
  %6302 = fmul fast float %6301, %6294
  %6303 = fmul fast float %6302, %6300
  %6304 = call float @dx.op.unary.f32(i32 6, float %6240)  ; FAbs(value)
  %6305 = fsub fast float 1.000000e+00, %6304
  %6306 = bitcast float %6305 to i32
  %6307 = sitofp i32 %6306 to float
  %6308 = fmul fast float %6307, 5.000000e+00
  %6309 = fadd fast float %6308, 0xC1EFBF8940000000
  %6310 = fptosi float %6309 to i32
  %6311 = bitcast i32 %6310 to float
  %6312 = fsub fast float 1.000000e+00, %4626
  %6313 = fsub fast float 1.000000e+00, %4627
  %6314 = fsub fast float 1.000000e+00, %4652
  %6315 = fmul fast float %6311, %6312
  %6316 = fmul fast float %6311, %6313
  %6317 = fmul fast float %6311, %6314
  %6318 = fadd fast float %6315, %4626
  %6319 = fadd fast float %6316, %4627
  %6320 = fadd fast float %6317, %4652
  br i1 %4795, label %6321, label %6344

; <label>:6321                                    ; preds = %6211
  %6322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4024, float %6304, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6323 = extractvalue %dx.types.ResRet.f32 %6322, 0
  %6324 = extractvalue %dx.types.ResRet.f32 %6322, 1
  %6325 = extractvalue %dx.types.ResRet.f32 %6322, 2
  %6326 = fadd fast float %6323, -5.000000e-01
  %6327 = fadd fast float %6324, -5.000000e-01
  %6328 = fadd fast float %6325, -5.000000e-01
  %6329 = fmul fast float %4626, 4.000000e+00
  %6330 = fmul fast float %6329, %6312
  %6331 = fmul fast float %6330, %6326
  %6332 = fmul fast float %4627, 4.000000e+00
  %6333 = fmul fast float %6332, %6313
  %6334 = fmul fast float %6333, %6327
  %6335 = fmul fast float %4652, 4.000000e+00
  %6336 = fmul fast float %6335, %6314
  %6337 = fmul fast float %6336, %6328
  %6338 = fadd fast float %6331, %6318
  %6339 = fadd fast float %6334, %6319
  %6340 = fadd fast float %6337, %6320
  %6341 = call float @dx.op.unary.f32(i32 7, float %6338)  ; Saturate(value)
  %6342 = call float @dx.op.unary.f32(i32 7, float %6339)  ; Saturate(value)
  %6343 = call float @dx.op.unary.f32(i32 7, float %6340)  ; Saturate(value)
  br label %6344

; <label>:6344                                    ; preds = %6321, %6211
  %6345 = phi float [ %6341, %6321 ], [ %6318, %6211 ]
  %6346 = phi float [ %6342, %6321 ], [ %6319, %6211 ]
  %6347 = phi float [ %6343, %6321 ], [ %6320, %6211 ]
  %6348 = fmul fast float %6239, 9.843750e-01
  %6349 = fadd fast float %6348, 7.812500e-03
  %6350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6349, float %4785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6351 = extractvalue %dx.types.ResRet.f32 %6350, 2
  %6352 = extractvalue %dx.types.ResRet.f32 %6350, 3
  %6353 = fmul fast float %6351, %4626
  %6354 = fmul fast float %6351, %4627
  %6355 = fmul fast float %6351, %4652
  %6356 = fadd fast float %6353, %6352
  %6357 = fadd fast float %6354, %6352
  %6358 = fadd fast float %6355, %6352
  br i1 %4795, label %6359, label %6382

; <label>:6359                                    ; preds = %6344
  %6360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4024, float %6239, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6361 = extractvalue %dx.types.ResRet.f32 %6360, 0
  %6362 = extractvalue %dx.types.ResRet.f32 %6360, 1
  %6363 = extractvalue %dx.types.ResRet.f32 %6360, 2
  %6364 = fadd fast float %6361, -5.000000e-01
  %6365 = fadd fast float %6362, -5.000000e-01
  %6366 = fadd fast float %6363, -5.000000e-01
  %6367 = fmul fast float %4626, 4.000000e+00
  %6368 = fmul fast float %6367, %6312
  %6369 = fmul fast float %6368, %6364
  %6370 = fmul fast float %4627, 4.000000e+00
  %6371 = fmul fast float %6370, %6313
  %6372 = fmul fast float %6371, %6365
  %6373 = fmul fast float %4652, 4.000000e+00
  %6374 = fmul fast float %6373, %6314
  %6375 = fmul fast float %6374, %6366
  %6376 = fadd fast float %6369, %6356
  %6377 = fadd fast float %6372, %6357
  %6378 = fadd fast float %6375, %6358
  %6379 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6380 = call float @dx.op.unary.f32(i32 7, float %6377)  ; Saturate(value)
  %6381 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  br label %6382

; <label>:6382                                    ; preds = %6359, %6344
  %6383 = phi float [ %6379, %6359 ], [ %6356, %6344 ]
  %6384 = phi float [ %6380, %6359 ], [ %6357, %6344 ]
  %6385 = phi float [ %6381, %6359 ], [ %6358, %6344 ]
  %6386 = call float @dx.op.binary.f32(i32 35, float %6384, float %6385)  ; FMax(a,b)
  %6387 = call float @dx.op.binary.f32(i32 35, float %6383, float %6386)  ; FMax(a,b)
  %6388 = fsub fast float 1.000000e+00, %6387
  %6389 = fmul fast float %6345, %6303
  %6390 = fmul fast float %6346, %6303
  %6391 = fmul fast float %6347, %6303
  %6392 = fsub fast float 1.000000e+00, %6240
  %6393 = bitcast float %6392 to i32
  %6394 = sitofp i32 %6393 to float
  %6395 = fmul fast float %6394, 5.000000e+00
  %6396 = fadd fast float %6395, 0xC1EFBF8940000000
  %6397 = fptosi float %6396 to i32
  %6398 = bitcast i32 %6397 to float
  %6399 = fmul fast float %6398, %4025
  %6400 = fmul fast float %6388, %6399
  %6401 = fmul fast float %6400, %5742
  %6402 = fmul fast float %6400, %5743
  %6403 = fmul fast float %6400, %5744
  %6404 = fadd fast float %6401, %6389
  %6405 = fadd fast float %6402, %6390
  %6406 = fadd fast float %6403, %6391
  %6407 = fmul fast float %6228, %4021
  %6408 = fmul fast float %6407, %6246
  %6409 = fmul fast float %6408, %6388
  %6410 = fmul fast float %6229, %4021
  %6411 = fmul fast float %6410, %6246
  %6412 = fmul fast float %6411, %6388
  %6413 = fmul fast float %6230, %4021
  %6414 = fmul fast float %6413, %6246
  %6415 = fmul fast float %6414, %6388
  %6416 = fadd fast float %6409, %6067
  %6417 = fadd fast float %6412, %6068
  %6418 = fadd fast float %6415, %6069
  %6419 = fmul fast float %6408, %6404
  %6420 = fmul fast float %6411, %6405
  %6421 = fmul fast float %6414, %6406
  %6422 = fadd fast float %6419, %6064
  %6423 = fadd fast float %6420, %6065
  %6424 = fadd fast float %6421, %6066
  br label %6142

; <label>:6425                                    ; preds = %6142
  br label %6426

; <label>:6426                                    ; preds = %6425, %6030
  %6427 = phi float [ %6032, %6030 ], [ %6143, %6425 ]
  %6428 = phi float [ %6033, %6030 ], [ %6144, %6425 ]
  %6429 = phi float [ %6034, %6030 ], [ %6145, %6425 ]
  %6430 = phi float [ %6035, %6030 ], [ %6146, %6425 ]
  %6431 = phi float [ %6036, %6030 ], [ %6147, %6425 ]
  %6432 = phi float [ %6037, %6030 ], [ %6148, %6425 ]
  %6433 = add i32 %6031, 1
  %6434 = icmp ugt i32 %6433, %6027
  br i1 %6434, label %6435, label %6030

; <label>:6435                                    ; preds = %6426
  br label %6436

; <label>:6436                                    ; preds = %6435, %6006, %5996
  %6437 = phi float [ %5997, %5996 ], [ %5997, %6006 ], [ %6427, %6435 ]
  %6438 = phi float [ %5998, %5996 ], [ %5998, %6006 ], [ %6428, %6435 ]
  %6439 = phi float [ %5999, %5996 ], [ %5999, %6006 ], [ %6429, %6435 ]
  %6440 = phi float [ %6000, %5996 ], [ %6000, %6006 ], [ %6430, %6435 ]
  %6441 = phi float [ %6001, %5996 ], [ %6001, %6006 ], [ %6431, %6435 ]
  %6442 = phi float [ %6002, %5996 ], [ %6002, %6006 ], [ %6432, %6435 ]
  %6443 = call float @dx.op.unary.f32(i32 24, float %4629)  ; Sqrt(value)
  %6444 = call float @dx.op.unary.f32(i32 24, float %4630)  ; Sqrt(value)
  %6445 = call float @dx.op.unary.f32(i32 24, float %4631)  ; Sqrt(value)
  %6446 = fmul fast float %6443, %6440
  %6447 = fmul fast float %6444, %6441
  %6448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6449 = extractvalue %dx.types.CBufRet.f32 %6448, 0
  br i1 %185, label %6450, label %6473

; <label>:6450                                    ; preds = %6436
  %6451 = fadd fast float %6442, %4027
  %6452 = fmul fast float %6451, %4028
  %6453 = fsub fast float 1.000000e+00, %4028
  %6454 = call float @dx.op.unary.f32(i32 7, float %6453)  ; Saturate(value)
  %6455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6455, 3
  %6457 = fmul fast float %6456, %6454
  %6458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6459 = extractvalue %dx.types.CBufRet.f32 %6458, 0
  %6460 = fmul fast float %6459, %5749
  %6461 = extractvalue %dx.types.CBufRet.f32 %6458, 2
  %6462 = fmul fast float %6461, %4650
  %6463 = fadd fast float %6447, %6446
  %6464 = fmul fast float %6449, %6463
  %6465 = extractvalue %dx.types.CBufRet.f32 %6455, 1
  %6466 = fadd fast float %6457, %6452
  %6467 = fsub fast float %6466, %6460
  %6468 = fadd fast float %6467, %6462
  %6469 = fsub fast float %6468, %6465
  %6470 = extractvalue %dx.types.CBufRet.f32 %6455, 2
  %6471 = fmul fast float %6469, %6470
  %6472 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  br label %6489

; <label>:6473                                    ; preds = %6436
  %6474 = fmul fast float %6445, %6442
  %6475 = fmul fast float %6449, %6446
  %6476 = fmul fast float %6449, %6447
  %6477 = fmul fast float %6474, %6449
  %6478 = add i32 %43, 356
  %6479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6478, i32 undef)  ; BufferLoad(srv,index,wot)
  %6480 = extractvalue %dx.types.ResRet.i32 %6479, 0
  %6481 = and i32 %6480, 32
  %6482 = icmp eq i32 %6481, 0
  br i1 %6482, label %6489, label %6483

; <label>:6483                                    ; preds = %6473
  %6484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6485 = extractvalue %dx.types.CBufRet.f32 %6484, 0
  %6486 = fmul fast float %6485, 0x3FE99999A0000000
  %6487 = fadd fast float %6485, %6475
  %6488 = fadd fast float %6486, %6477
  br label %6489

; <label>:6489                                    ; preds = %6483, %6473, %6450
  %6490 = phi float [ %6464, %6450 ], [ %6487, %6483 ], [ %6475, %6473 ]
  %6491 = phi float [ %6472, %6450 ], [ %6476, %6483 ], [ %6476, %6473 ]
  %6492 = phi float [ 1.000000e+00, %6450 ], [ %6488, %6483 ], [ %6477, %6473 ]
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6495 = fmul fast float %6494, %6438
  %6496 = fmul fast float %6494, %6439
  %6497 = fadd fast float %6438, %6437
  %6498 = select i1 %185, float %6497, float %6437
  %6499 = fmul float %6498, %6494
  %6500 = select i1 %185, float 0.000000e+00, float %6495
  %6501 = select i1 %185, float 0.000000e+00, float %6496
  %6502 = fmul fast float %6490, %6443
  %6503 = fmul fast float %6491, %6444
  %6504 = fmul fast float %6492, %6445
  %6505 = fadd fast float %6499, %6502
  %6506 = fadd fast float %6500, %6503
  %6507 = fadd fast float %6501, %6504
  %6508 = select i1 %185, float %6491, float %6506
  %6509 = select i1 %185, float %6492, float %6507
  %6510 = call float @dx.op.binary.f32(i32 36, float %6505, float 3.225500e+04)  ; FMin(a,b)
  %6511 = call float @dx.op.binary.f32(i32 36, float %6508, float 3.225500e+04)  ; FMin(a,b)
  %6512 = call float @dx.op.binary.f32(i32 36, float %6509, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6510)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6511)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6512)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !85}
!59 = !{!60, !83, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !76, !77, !78, !80, !82}
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
!74 = !{i32 7, !"COMP_FACTOR", i8 9, i8 0, !62, i8 2, i32 1, i8 1, i32 3, i8 3, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 7, i8 0, !67}
!77 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 8, i8 0, !71}
!78 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 9, i8 0, !79}
!79 = !{i32 3, i32 8}
!80 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 10, i8 0, !81}
!81 = !{i32 3, i32 13}
!82 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!83 = !{!84}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!85 = !{i32 0, i64 24}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !90}
!90 = !{!"llvm.loop.unroll.disable"}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}

