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
; shader hash: bbc02282cfd73d794b6c08e7e7c38ed3
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
  %382 = add i32 %43, 520
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
  %540 = add i32 %43, 408
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
  %563 = add i32 %43, 488
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
  %761 = add i32 %43, 424
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
  %845 = add i32 %43, 440
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
  %1137 = add i32 %43, 476
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
  %1189 = add i32 %43, 460
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
  %1215 = add i32 %43, 412
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
  %1238 = add i32 %43, 492
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
  %1436 = add i32 %43, 428
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
  %1520 = add i32 %43, 444
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
  %1991 = add i32 %43, 480
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
  %2043 = add i32 %43, 464
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
  %2069 = add i32 %43, 416
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
  %2092 = add i32 %43, 496
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
  %2290 = add i32 %43, 432
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
  %2374 = add i32 %43, 448
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
  %2845 = add i32 %43, 484
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
  %2897 = add i32 %43, 468
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
  %2923 = add i32 %43, 420
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
  %2946 = add i32 %43, 500
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
  %3144 = add i32 %43, 436
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
  %3228 = add i32 %43, 452
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
  %3470 = add i32 %43, 360
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = bitcast i32 %3472 to float
  %3474 = fcmp fast oge float %3473, 0.000000e+00
  %3475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3476 = extractvalue %dx.types.CBufRet.f32 %3475, 0
  %3477 = select i1 %3474, float %3473, float %3476
  %3478 = call float @dx.op.dot2.f32(i32 54, float %3458, float %3459, float %3458, float %3459)  ; Dot2(ax,ay,bx,by)
  %3479 = fmul fast float %3478, 0x3FE3333340000000
  %3480 = fsub fast float 1.000000e+00, %3479
  %3481 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3459, float %3480, float %3458, float %3459, float %3480)  ; Dot3(ax,ay,az,bx,by,bz)
  %3482 = call float @dx.op.unary.f32(i32 25, float %3481)  ; Rsqrt(value)
  %3483 = fmul fast float %3482, %3458
  %3484 = fmul fast float %3482, %3459
  %3485 = fmul fast float %3480, %3482
  %3486 = fmul fast float %3485, %87
  %3487 = fmul fast float %3485, %88
  %3488 = fmul fast float %3485, %89
  %3489 = fmul fast float %3483, %61
  %3490 = fmul fast float %3483, %62
  %3491 = fmul fast float %3483, %63
  %3492 = fadd fast float %3486, %3489
  %3493 = fadd fast float %3487, %3490
  %3494 = fadd fast float %3488, %3491
  %3495 = fmul fast float %99, %3484
  %3496 = fmul fast float %100, %3484
  %3497 = fmul fast float %101, %3484
  %3498 = fadd fast float %3492, %3495
  %3499 = fadd fast float %3493, %3496
  %3500 = fadd fast float %3494, %3497
  %3501 = call float @dx.op.dot3.f32(i32 55, float %3498, float %3499, float %3500, float %3498, float %3499, float %3500)  ; Dot3(ax,ay,az,bx,by,bz)
  %3502 = call float @dx.op.unary.f32(i32 25, float %3501)  ; Rsqrt(value)
  %3503 = fmul fast float %3498, %3502
  %3504 = fmul fast float %3499, %3502
  %3505 = fmul fast float %3500, %3502
  %3506 = and i32 %45, 1
  %3507 = icmp eq i32 %3506, 0
  br i1 %3507, label %3508, label %4016

; <label>:3508                                    ; preds = %3457
  %3509 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3510 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3511 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3512 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3513 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3514 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3515 = fadd fast float %3509, %143
  %3516 = fadd fast float %3510, %144
  %3517 = fadd fast float %3511, %145
  %3518 = fadd fast float %3512, %143
  %3519 = fadd fast float %3513, %144
  %3520 = fadd fast float %3514, %145
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.CBufRet.f32 %3521, 1
  %3524 = extractvalue %dx.types.CBufRet.f32 %3521, 2
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 2
  %3527 = extractvalue %dx.types.CBufRet.f32 %3525, 3
  %3528 = fmul fast float %3522, %80
  %3529 = fmul fast float %3528, %3526
  %3530 = fmul fast float %3523, %81
  %3531 = fmul fast float %3530, %3527
  %3532 = fptoui float %3529 to i32
  %3533 = fptoui float %3531 to i32
  %3534 = fadd fast float %3522, -1.000000e+00
  %3535 = fadd fast float %3523, -1.000000e+00
  %3536 = fptoui float %3534 to i32
  %3537 = fptoui float %3535 to i32
  %3538 = call i32 @dx.op.binary.i32(i32 40, i32 %3532, i32 %3536)  ; UMin(a,b)
  %3539 = call i32 @dx.op.binary.i32(i32 40, i32 %3533, i32 %3537)  ; UMin(a,b)
  %3540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3541 = extractvalue %dx.types.CBufRet.f32 %3540, 2
  %3542 = extractvalue %dx.types.CBufRet.f32 %3540, 3
  %3543 = fmul fast float %3541, %75
  %3544 = fsub fast float %3543, %3542
  %3545 = fadd fast float %3524, -1.000000e+00
  %3546 = call float @dx.op.binary.f32(i32 36, float %3544, float %3545)  ; FMin(a,b)
  %3547 = fptoui float %3546 to i32
  %3548 = fptoui float %3522 to i32
  %3549 = fptoui float %3523 to i32
  %3550 = mul i32 %3547, %3549
  %3551 = add i32 %3550, %3539
  %3552 = mul i32 %3551, %3548
  %3553 = add i32 %3552, %3538
  %3554 = shl i32 %3553, 2
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 1023
  %3558 = lshr i32 %3556, 10
  %3559 = icmp eq i32 %3557, 0
  br i1 %3559, label %3985, label %3560

; <label>:3560                                    ; preds = %3508
  %3561 = and i32 %3556, 1023
  br label %3562

; <label>:3562                                    ; preds = %3688, %3560
  %3563 = phi i32 [ %3638, %3688 ], [ 0, %3560 ]
  %3564 = phi float [ %3689, %3688 ], [ 0.000000e+00, %3560 ]
  %3565 = phi float [ %3690, %3688 ], [ %3477, %3560 ]
  %3566 = phi float [ %3691, %3688 ], [ %3469, %3560 ]
  %3567 = phi float [ %3692, %3688 ], [ 0.000000e+00, %3560 ]
  %3568 = phi float [ %3693, %3688 ], [ 0.000000e+00, %3560 ]
  %3569 = phi float [ %3694, %3688 ], [ %3463, %3560 ]
  %3570 = phi float [ %3695, %3688 ], [ %3464, %3560 ]
  %3571 = phi float [ %3696, %3688 ], [ %3465, %3560 ]
  %3572 = phi float [ %3697, %3688 ], [ %3503, %3560 ]
  %3573 = phi float [ %3698, %3688 ], [ %3504, %3560 ]
  %3574 = phi float [ %3699, %3688 ], [ %3505, %3560 ]
  %3575 = phi float [ %3700, %3688 ], [ %3468, %3560 ]
  %3576 = phi float [ %3701, %3688 ], [ %3467, %3560 ]
  %3577 = phi float [ %3702, %3688 ], [ 0.000000e+00, %3560 ]
  %3578 = phi float [ %3703, %3688 ], [ %3466, %3560 ]
  %3579 = phi float [ %3704, %3688 ], [ %3460, %3560 ]
  %3580 = phi float [ %3705, %3688 ], [ %3461, %3560 ]
  %3581 = phi float [ %3706, %3688 ], [ %3462, %3560 ]
  %3582 = add nuw nsw i32 %3563, %3558
  %3583 = shl i32 %3582, 2
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = shl i32 %3585, 8
  %3587 = or i32 %3586, 48
  %3588 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.f32 %3588, 0
  %3590 = extractvalue %dx.types.ResRet.f32 %3588, 1
  %3591 = extractvalue %dx.types.ResRet.f32 %3588, 2
  %3592 = extractvalue %dx.types.ResRet.f32 %3588, 3
  %3593 = or i32 %3586, 64
  %3594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.i32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.i32 %3594, 1
  %3597 = or i32 %3586, 80
  %3598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.f32 %3598, 2
  %3600 = extractvalue %dx.types.ResRet.f32 %3598, 3
  %3601 = or i32 %3586, 96
  %3602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.f32 %3602, 0
  %3604 = extractvalue %dx.types.ResRet.f32 %3602, 1
  %3605 = extractvalue %dx.types.ResRet.f32 %3602, 2
  %3606 = extractvalue %dx.types.ResRet.f32 %3602, 3
  %3607 = or i32 %3586, 112
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3610 = or i32 %3586, 128
  %3611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3610, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.f32 %3611, 0
  %3613 = extractvalue %dx.types.ResRet.f32 %3611, 1
  %3614 = extractvalue %dx.types.ResRet.f32 %3611, 2
  %3615 = extractvalue %dx.types.ResRet.f32 %3611, 3
  %3616 = or i32 %3586, 144
  %3617 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3616, i32 undef)  ; BufferLoad(srv,index,wot)
  %3618 = extractvalue %dx.types.ResRet.f32 %3617, 0
  %3619 = extractvalue %dx.types.ResRet.f32 %3617, 1
  %3620 = extractvalue %dx.types.ResRet.f32 %3617, 2
  %3621 = extractvalue %dx.types.ResRet.f32 %3617, 3
  %3622 = or i32 %3586, 160
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3628 = or i32 %3586, 192
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = or i32 %3586, 208
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = or i32 %3586, 248
  %3635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 1
  %3638 = add nuw nsw i32 %3563, 1
  %3639 = bitcast float %3592 to i32
  %3640 = and i32 %3639, 512
  %3641 = icmp eq i32 %3640, 0
  %3642 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3643 = extractvalue %dx.types.ResRet.f32 %3642, 0
  %3644 = extractvalue %dx.types.ResRet.f32 %3642, 1
  %3645 = extractvalue %dx.types.ResRet.f32 %3642, 2
  %3646 = extractvalue %dx.types.ResRet.f32 %3642, 3
  %3647 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3648 = or i32 %3586, 16
  %3649 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3648, i32 undef)  ; BufferLoad(srv,index,wot)
  %3650 = extractvalue %dx.types.ResRet.f32 %3649, 0
  %3651 = extractvalue %dx.types.ResRet.f32 %3649, 1
  %3652 = extractvalue %dx.types.ResRet.f32 %3649, 2
  %3653 = extractvalue %dx.types.ResRet.f32 %3649, 3
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = or i32 %3586, 32
  %3656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.ResRet.f32 %3656, 1
  %3659 = extractvalue %dx.types.ResRet.f32 %3656, 2
  %3660 = extractvalue %dx.types.ResRet.f32 %3656, 3
  %3661 = call float @dx.op.dot4.f32(i32 56, float %3657, float %3658, float %3659, float %3660, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3662 = call float @dx.op.unary.f32(i32 27, float %3647)  ; Round_ni(value)
  %3663 = call float @dx.op.unary.f32(i32 6, float %3662)  ; FAbs(value)
  %3664 = call float @dx.op.unary.f32(i32 27, float %3654)  ; Round_ni(value)
  %3665 = call float @dx.op.unary.f32(i32 6, float %3664)  ; FAbs(value)
  %3666 = call float @dx.op.unary.f32(i32 6, float %3661)  ; FAbs(value)
  %3667 = call float @dx.op.unary.f32(i32 27, float %3666)  ; Round_ni(value)
  %3668 = fadd fast float %3665, %3663
  %3669 = fadd fast float %3668, %3667
  %3670 = fcmp fast oeq float %3669, 0.000000e+00
  %3671 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %3515, float %3516, float %3517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3672 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %3515, float %3516, float %3517, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3673 = call float @dx.op.dot4.f32(i32 56, float %3643, float %3644, float %3645, float %3646, float %3518, float %3519, float %3520, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3674 = call float @dx.op.dot4.f32(i32 56, float %3650, float %3651, float %3652, float %3653, float %3518, float %3519, float %3520, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3675 = fsub fast float %3671, %3647
  %3676 = fsub fast float %3673, %3647
  %3677 = fsub fast float %3672, %3654
  %3678 = fsub fast float %3674, %3654
  %3679 = call float @dx.op.dot3.f32(i32 55, float %3589, float %3590, float %3591, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %3680 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3681 = extractvalue %dx.types.CBufRet.f32 %3680, 2
  %3682 = fadd fast float %3681, %3679
  %3683 = call float @dx.op.unary.f32(i32 7, float %3682)  ; Saturate(value)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3680, 0
  %3685 = fcmp fast ogt float %3683, %3684
  %3686 = and i1 %3670, %3685
  %3687 = and i1 %3641, %3686
  br i1 %3687, label %3708, label %3688

; <label>:3688                                    ; preds = %3971, %3789, %3708, %3562
  %3689 = phi float [ %3564, %3708 ], [ %3792, %3789 ], [ %3792, %3971 ], [ %3564, %3562 ]
  %3690 = phi float [ %3565, %3708 ], [ %3565, %3789 ], [ %3946, %3971 ], [ %3565, %3562 ]
  %3691 = phi float [ %3566, %3708 ], [ %3566, %3789 ], [ %3944, %3971 ], [ %3566, %3562 ]
  %3692 = phi float [ %3567, %3708 ], [ %3567, %3789 ], [ %3916, %3971 ], [ %3567, %3562 ]
  %3693 = phi float [ %3568, %3708 ], [ %3568, %3789 ], [ %3914, %3971 ], [ %3568, %3562 ]
  %3694 = phi float [ %3569, %3708 ], [ %3569, %3789 ], [ %3981, %3971 ], [ %3569, %3562 ]
  %3695 = phi float [ %3570, %3708 ], [ %3570, %3789 ], [ %3982, %3971 ], [ %3570, %3562 ]
  %3696 = phi float [ %3571, %3708 ], [ %3571, %3789 ], [ %3983, %3971 ], [ %3571, %3562 ]
  %3697 = phi float [ %3572, %3708 ], [ %3572, %3789 ], [ %3895, %3971 ], [ %3572, %3562 ]
  %3698 = phi float [ %3573, %3708 ], [ %3573, %3789 ], [ %3896, %3971 ], [ %3573, %3562 ]
  %3699 = phi float [ %3574, %3708 ], [ %3574, %3789 ], [ %3897, %3971 ], [ %3574, %3562 ]
  %3700 = phi float [ %3575, %3708 ], [ %3575, %3789 ], [ %3924, %3971 ], [ %3575, %3562 ]
  %3701 = phi float [ %3576, %3708 ], [ %3576, %3789 ], [ %3921, %3971 ], [ %3576, %3562 ]
  %3702 = phi float [ %3577, %3708 ], [ %3577, %3789 ], [ %3918, %3971 ], [ %3577, %3562 ]
  %3703 = phi float [ %3578, %3708 ], [ %3578, %3789 ], [ %3912, %3971 ], [ %3578, %3562 ]
  %3704 = phi float [ %3579, %3708 ], [ %3579, %3789 ], [ %3907, %3971 ], [ %3579, %3562 ]
  %3705 = phi float [ %3580, %3708 ], [ %3580, %3789 ], [ %3908, %3971 ], [ %3580, %3562 ]
  %3706 = phi float [ %3581, %3708 ], [ %3581, %3789 ], [ %3909, %3971 ], [ %3581, %3562 ]
  %3707 = icmp eq i32 %3638, %3561
  br i1 %3707, label %3984, label %3562

; <label>:3708                                    ; preds = %3562
  %3709 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3710 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3712 = extractvalue %dx.types.ResRet.f32 %3598, 1
  %3713 = extractvalue %dx.types.ResRet.f32 %3598, 0
  %3714 = extractvalue %dx.types.ResRet.i32 %3594, 3
  %3715 = extractvalue %dx.types.ResRet.i32 %3594, 2
  %3716 = add i32 %3714, 0
  %3717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3716, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3719 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3717, %dx.types.Handle %3718, float %3647, float %3654, float undef, float undef, i32 0, i32 0, i32 undef, float %3675, float %3677, float undef, float %3676, float %3678, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3721 = fmul fast float %3720, %3713
  %3722 = fadd fast float %3721, %3712
  %3723 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3724 = fmul fast float %3647, %3603
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3604, float %3654, float %3724)  ; FMad(a,b,c)
  %3726 = fadd fast float %3725, %3711
  %3727 = fmul fast float %3647, %3605
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3606, float %3654, float %3727)  ; FMad(a,b,c)
  %3729 = fadd fast float %3728, %3710
  %3730 = fmul fast float %3675, %3603
  %3731 = call float @dx.op.tertiary.f32(i32 46, float %3604, float %3677, float %3730)  ; FMad(a,b,c)
  %3732 = fmul fast float %3675, %3605
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3606, float %3677, float %3732)  ; FMad(a,b,c)
  %3734 = fmul fast float %3676, %3603
  %3735 = call float @dx.op.tertiary.f32(i32 46, float %3604, float %3678, float %3734)  ; FMad(a,b,c)
  %3736 = fmul fast float %3676, %3605
  %3737 = call float @dx.op.tertiary.f32(i32 46, float %3606, float %3678, float %3736)  ; FMad(a,b,c)
  %3738 = add i32 %3715, 0
  %3739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3738, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3740 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3739, %dx.types.Handle %3718, float %3726, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3735, float %3737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = and i32 %3639, 1024
  %3743 = icmp ne i32 %3742, 0
  %3744 = fcmp fast ogt float %3741, 0x3FE0101020000000
  %3745 = uitofp i1 %3744 to float
  %3746 = select i1 %3743, float %3745, float %3741
  %3747 = and i32 %3639, 8192
  %3748 = icmp ne i32 %3747, 0
  %3749 = select i1 %3748, float %3709, float 1.000000e+00
  %3750 = fmul fast float %3647, 2.000000e+00
  %3751 = fadd fast float %3750, -1.000000e+00
  %3752 = call float @dx.op.unary.f32(i32 6, float %3751)  ; FAbs(value)
  %3753 = fmul fast float %3752, %3636
  %3754 = fsub fast float %3753, %3636
  %3755 = call float @dx.op.unary.f32(i32 7, float %3754)  ; Saturate(value)
  %3756 = fmul fast float %3654, 2.000000e+00
  %3757 = fadd fast float %3756, -1.000000e+00
  %3758 = call float @dx.op.unary.f32(i32 6, float %3757)  ; FAbs(value)
  %3759 = fmul fast float %3758, %3637
  %3760 = fsub fast float %3759, %3637
  %3761 = call float @dx.op.unary.f32(i32 7, float %3760)  ; Saturate(value)
  %3762 = fmul fast float %3666, %3599
  %3763 = fsub fast float %3762, %3599
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
  %3774 = fsub fast float %3683, %3773
  %3775 = fmul fast float %3774, %3772
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = fmul fast float %3770, %3600
  %3778 = fadd fast float %3770, %3600
  %3779 = fmul fast float %3778, %3609
  %3780 = fsub fast float %3779, %3609
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = and i32 %3639, 128
  %3783 = icmp ne i32 %3782, 0
  %3784 = select i1 %3783, float %3781, float %3777
  %3785 = fmul fast float %3784, %3776
  %3786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3787 = extractvalue %dx.types.CBufRet.f32 %3786, 0
  %3788 = fcmp fast ugt float %3785, %3787
  br i1 %3788, label %3789, label %3688

; <label>:3789                                    ; preds = %3708
  %3790 = select i1 %3748, float %3785, float 0.000000e+00
  %3791 = fadd fast float %3790, %3564
  %3792 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  br i1 %3748, label %3688, label %3793

; <label>:3793                                    ; preds = %3789
  %3794 = and i32 %3639, 4
  %3795 = and i32 %3639, 8
  %3796 = add i32 %3595, 0
  %3797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3796, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3798 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3799 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3797, %dx.types.Handle %3798, float %3726, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3735, float %3737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3803 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3804 = bitcast float %3621 to i32
  %3805 = and i32 %3804, 255
  %3806 = uitofp i32 %3805 to float
  %3807 = lshr i32 %3804, 8
  %3808 = and i32 %3807, 255
  %3809 = uitofp i32 %3808 to float
  %3810 = fmul fast float %3803, %3806
  %3811 = fadd fast float %3810, %3809
  %3812 = fmul fast float %3811, 0x3F70101000000000
  %3813 = add i32 %3596, 0
  %3814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3813, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3815 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3814, %dx.types.Handle %3798, float %3726, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3735, float %3737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3816 = extractvalue %dx.types.ResRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.ResRet.f32 %3815, 1
  %3818 = extractvalue %dx.types.ResRet.f32 %3815, 2
  %3819 = extractvalue %dx.types.ResRet.f32 %3815, 3
  %3820 = bitcast float %3615 to i32
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
  %3839 = fmul fast float %3800, %3624
  %3840 = fmul fast float %3801, %3625
  %3841 = fmul fast float %3802, %3626
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
  %3859 = fmul fast float %3858, %3589
  %3860 = fmul fast float %3858, %3590
  %3861 = fmul fast float %3858, %3591
  %3862 = fmul fast float %3856, %3612
  %3863 = fmul fast float %3856, %3613
  %3864 = fmul fast float %3856, %3614
  %3865 = fadd fast float %3862, %3859
  %3866 = fadd fast float %3863, %3860
  %3867 = fadd fast float %3864, %3861
  %3868 = fmul fast float %3857, %3618
  %3869 = fmul fast float %3857, %3619
  %3870 = fmul fast float %3857, %3620
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
  %3882 = and i32 %3639, 1
  %3883 = icmp eq i32 %3882, 0
  br i1 %3883, label %3884, label %3888

; <label>:3884                                    ; preds = %3793
  %3885 = fsub fast float %3876, %3572
  %3886 = fsub fast float %3877, %3573
  %3887 = fsub fast float %3878, %3574
  br label %3888

; <label>:3888                                    ; preds = %3884, %3793
  %3889 = phi float [ %3885, %3884 ], [ %3876, %3793 ]
  %3890 = phi float [ %3886, %3884 ], [ %3877, %3793 ]
  %3891 = phi float [ %3887, %3884 ], [ %3878, %3793 ]
  %3892 = fmul float %3891, %3881
  %3893 = fmul float %3890, %3881
  %3894 = fmul float %3889, %3881
  %3895 = fadd fast float %3894, %3572
  %3896 = fadd fast float %3893, %3573
  %3897 = fadd fast float %3892, %3574
  %3898 = icmp ne i32 %3794, 0
  %3899 = select i1 %3898, float 1.000000e+00, float 0.000000e+00
  %3900 = fmul fast float %3785, %3899
  %3901 = fsub fast float %3839, %3579
  %3902 = fsub fast float %3840, %3580
  %3903 = fsub fast float %3841, %3581
  %3904 = fmul fast float %3901, %3900
  %3905 = fmul fast float %3902, %3900
  %3906 = fmul fast float %3903, %3900
  %3907 = fadd fast float %3904, %3579
  %3908 = fadd fast float %3905, %3580
  %3909 = fadd fast float %3906, %3581
  %3910 = fsub fast float %3812, %3578
  %3911 = fmul fast float %3910, %3900
  %3912 = fadd fast float %3911, %3578
  %3913 = fmul fast float %3900, %3568
  %3914 = fsub fast float %3568, %3913
  %3915 = fmul fast float %3900, %3567
  %3916 = fsub fast float %3567, %3915
  %3917 = fadd fast float %3785, %3577
  %3918 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3919 = fsub fast float %3832, %3576
  %3920 = fmul fast float %3919, %3881
  %3921 = fadd fast float %3920, %3576
  %3922 = fsub fast float %3818, %3575
  %3923 = fmul fast float %3922, %3881
  %3924 = fadd fast float %3923, %3575
  %3925 = call float @dx.op.dot3.f32(i32 55, float %3839, float %3840, float %3841, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3927 = extractvalue %dx.types.CBufRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.CBufRet.f32 %3926, 1
  %3929 = fmul fast float %3928, %3925
  %3930 = fadd fast float %3929, %3927
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = bitcast float %3627 to i32
  %3933 = and i32 %3932, 65535
  %3934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3933)  ; LegacyF16ToF32(value)
  %3935 = lshr i32 %3932, 16
  %3936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3935)  ; LegacyF16ToF32(value)
  %3937 = fcmp fast oge float %3934, 0.000000e+00
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = select i1 %3937, float %3934, float %3939
  %3941 = fadd fast float %3940, %3936
  %3942 = fsub fast float %3931, %3566
  %3943 = fmul fast float %3942, %3785
  %3944 = fadd fast float %3943, %3566
  %3945 = fmul fast float %3941, %3785
  %3946 = call float @dx.op.binary.f32(i32 35, float %3565, float %3945)  ; FMax(a,b)
  %3947 = and i32 %3639, 16
  %3948 = icmp eq i32 %3947, 0
  br i1 %3948, label %3971, label %3949

; <label>:3949                                    ; preds = %3888
  %3950 = bitcast float %3633 to i32
  %3951 = add i32 %3630, 0
  %3952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3951, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3952, %dx.types.Handle %3798, float %3726, float %3729, float undef, float undef, i32 0, i32 0, i32 undef, float %3731, float %3733, float undef, float %3735, float %3737, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = and i32 %3950, 65535
  %3958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3957)  ; LegacyF16ToF32(value)
  %3959 = fmul fast float %3954, %3624
  %3960 = fmul fast float %3955, %3625
  %3961 = fmul fast float %3956, %3626
  %3962 = and i32 %3639, 16384
  %3963 = icmp ne i32 %3962, 0
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 0
  %3966 = select i1 %3963, float %3965, float 1.000000e+00
  %3967 = fmul fast float %3966, %3958
  %3968 = fmul fast float %3959, %3967
  %3969 = fmul fast float %3960, %3967
  %3970 = fmul fast float %3961, %3967
  br label %3971

; <label>:3971                                    ; preds = %3949, %3888
  %3972 = phi float [ %3968, %3949 ], [ 0.000000e+00, %3888 ]
  %3973 = phi float [ %3969, %3949 ], [ 0.000000e+00, %3888 ]
  %3974 = phi float [ %3970, %3949 ], [ 0.000000e+00, %3888 ]
  %3975 = fsub fast float %3972, %3569
  %3976 = fsub fast float %3973, %3570
  %3977 = fsub fast float %3974, %3571
  %3978 = fmul fast float %3975, %3785
  %3979 = fmul fast float %3976, %3785
  %3980 = fmul fast float %3977, %3785
  %3981 = fadd fast float %3978, %3569
  %3982 = fadd fast float %3979, %3570
  %3983 = fadd fast float %3980, %3571
  br label %3688

; <label>:3984                                    ; preds = %3688
  br label %3985

; <label>:3985                                    ; preds = %3984, %3508
  %3986 = phi float [ 0.000000e+00, %3508 ], [ %3689, %3984 ]
  %3987 = phi float [ %3477, %3508 ], [ %3690, %3984 ]
  %3988 = phi float [ %3469, %3508 ], [ %3691, %3984 ]
  %3989 = phi float [ 0.000000e+00, %3508 ], [ %3692, %3984 ]
  %3990 = phi float [ 0.000000e+00, %3508 ], [ %3693, %3984 ]
  %3991 = phi float [ %3463, %3508 ], [ %3694, %3984 ]
  %3992 = phi float [ %3464, %3508 ], [ %3695, %3984 ]
  %3993 = phi float [ %3465, %3508 ], [ %3696, %3984 ]
  %3994 = phi float [ %3503, %3508 ], [ %3697, %3984 ]
  %3995 = phi float [ %3504, %3508 ], [ %3698, %3984 ]
  %3996 = phi float [ %3505, %3508 ], [ %3699, %3984 ]
  %3997 = phi float [ %3468, %3508 ], [ %3700, %3984 ]
  %3998 = phi float [ %3467, %3508 ], [ %3701, %3984 ]
  %3999 = phi float [ 0.000000e+00, %3508 ], [ %3702, %3984 ]
  %4000 = phi float [ %3466, %3508 ], [ %3703, %3984 ]
  %4001 = phi float [ %3460, %3508 ], [ %3704, %3984 ]
  %4002 = phi float [ %3461, %3508 ], [ %3705, %3984 ]
  %4003 = phi float [ %3462, %3508 ], [ %3706, %3984 ]
  %4004 = call float @dx.op.dot3.f32(i32 55, float %3994, float %3995, float %3996, float %3994, float %3995, float %3996)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = call float @dx.op.unary.f32(i32 25, float %4004)  ; Rsqrt(value)
  %4006 = fmul fast float %4005, %3994
  %4007 = fmul fast float %4005, %3995
  %4008 = fmul fast float %4005, %3996
  %4009 = fadd fast float %3999, %904
  %4010 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4011 = call float @dx.op.dot3.f32(i32 55, float %4006, float %4007, float %4008, float %4006, float %4007, float %4008)  ; Dot3(ax,ay,az,bx,by,bz)
  %4012 = call float @dx.op.unary.f32(i32 25, float %4011)  ; Rsqrt(value)
  %4013 = fmul fast float %4012, %4006
  %4014 = fmul fast float %4012, %4007
  %4015 = fmul fast float %4012, %4008
  br label %4016

; <label>:4016                                    ; preds = %3985, %3457
  %4017 = phi float [ %4013, %3985 ], [ %3503, %3457 ]
  %4018 = phi float [ %4014, %3985 ], [ %3504, %3457 ]
  %4019 = phi float [ %4015, %3985 ], [ %3505, %3457 ]
  %4020 = phi float [ %4001, %3985 ], [ %3460, %3457 ]
  %4021 = phi float [ %4002, %3985 ], [ %3461, %3457 ]
  %4022 = phi float [ %4003, %3985 ], [ %3462, %3457 ]
  %4023 = phi float [ %3991, %3985 ], [ %3463, %3457 ]
  %4024 = phi float [ %3992, %3985 ], [ %3464, %3457 ]
  %4025 = phi float [ %3993, %3985 ], [ %3465, %3457 ]
  %4026 = phi float [ %4000, %3985 ], [ %3466, %3457 ]
  %4027 = phi float [ %4010, %3985 ], [ %904, %3457 ]
  %4028 = phi float [ %3998, %3985 ], [ %3467, %3457 ]
  %4029 = phi float [ %3997, %3985 ], [ %3468, %3457 ]
  %4030 = phi float [ %3990, %3985 ], [ 0.000000e+00, %3457 ]
  %4031 = phi float [ %3989, %3985 ], [ 0.000000e+00, %3457 ]
  %4032 = phi float [ %3986, %3985 ], [ 0.000000e+00, %3457 ]
  %4033 = phi float [ %3987, %3985 ], [ %3477, %3457 ]
  %4034 = phi float [ %3988, %3985 ], [ %3469, %3457 ]
  %4035 = fadd fast float %4026, 0xBFB99999A0000000
  %4036 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4037 = fmul fast float %4036, 0x3FF1C71C80000000
  %4038 = call float @dx.op.binary.f32(i32 36, float %4026, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4039 = fsub fast float 1.000000e+00, %4037
  %4040 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4041 = fmul fast float %4040, %4020
  %4042 = fmul fast float %4040, %4021
  %4043 = fmul fast float %4040, %4022
  %4044 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4045 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4046 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4047 = fmul fast float %4037, %4020
  %4048 = fmul fast float %4037, %4021
  %4049 = fmul fast float %4037, %4022
  %4050 = fadd fast float %4047, %4038
  %4051 = fadd fast float %4048, %4038
  %4052 = fadd fast float %4049, %4038
  %4053 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4054 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4055 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4056 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.i32 %4057, 3
  %4059 = and i32 %4058, 8
  %4060 = icmp ne i32 %4059, 0
  %4061 = call float @dx.op.binary.f32(i32 35, float %4044, float %4020)  ; FMax(a,b)
  %4062 = call float @dx.op.binary.f32(i32 35, float %4045, float %4020)  ; FMax(a,b)
  %4063 = call float @dx.op.binary.f32(i32 35, float %4046, float %4020)  ; FMax(a,b)
  %4064 = call float @dx.op.dot3.f32(i32 55, float %4044, float %4045, float %4046, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = select i1 %185, float %4020, float %4044
  %4066 = select i1 %185, float %4064, float %4045
  %4067 = select i1 %185, float 1.000000e+00, float %4046
  %4068 = select i1 %4060, float %4061, float %4065
  %4069 = select i1 %4060, float %4062, float %4066
  %4070 = select i1 %4060, float %4063, float %4067
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4073 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4074 = extractvalue %dx.types.CBufRet.f32 %4071, 2
  %4075 = fadd fast float %4072, %143
  %4076 = fadd fast float %4073, %144
  %4077 = fadd fast float %4074, %145
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4081 = fsub fast float %4075, %4079
  %4082 = fsub fast float %4076, %4080
  %4083 = fmul fast float %4081, %4081
  %4084 = fmul fast float %4082, %4082
  %4085 = fadd fast float %4083, %4084
  %4086 = call float @dx.op.unary.f32(i32 24, float %4085)  ; Sqrt(value)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4078, 2
  %4088 = fcmp fast olt float %4086, %4087
  br i1 %4088, label %4089, label %4156

; <label>:4089                                    ; preds = %4016
  %4090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4091 = extractvalue %dx.types.CBufRet.f32 %4090, 0
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4095 = extractvalue %dx.types.CBufRet.f32 %4094, 0
  %4096 = extractvalue %dx.types.CBufRet.f32 %4090, 1
  %4097 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4098 = extractvalue %dx.types.CBufRet.f32 %4094, 1
  %4099 = extractvalue %dx.types.CBufRet.f32 %4090, 3
  %4100 = extractvalue %dx.types.CBufRet.f32 %4092, 3
  %4101 = extractvalue %dx.types.CBufRet.f32 %4094, 3
  %4102 = fadd fast float %4099, %4075
  %4103 = fadd fast float %4100, %4076
  %4104 = fadd fast float %4101, %4077
  %4105 = fmul fast float %4102, %4091
  %4106 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4093, float %4105)  ; FMad(a,b,c)
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4095, float %4106)  ; FMad(a,b,c)
  %4108 = fmul fast float %4102, %4096
  %4109 = call float @dx.op.tertiary.f32(i32 46, float %4103, float %4097, float %4108)  ; FMad(a,b,c)
  %4110 = call float @dx.op.tertiary.f32(i32 46, float %4104, float %4098, float %4109)  ; FMad(a,b,c)
  %4111 = fsub fast float %4107, %4099
  %4112 = fsub fast float %4110, %4100
  %4113 = fsub fast float %4111, %4079
  %4114 = fadd fast float %4113, %4087
  %4115 = fsub fast float %4112, %4080
  %4116 = fadd fast float %4115, %4087
  %4117 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4118 = fmul fast float %4114, %4117
  %4119 = fmul fast float %4116, %4117
  %4120 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4122 = fsub fast float 1.000000e+00, %4120
  %4123 = fsub fast float 1.000000e+00, %4121
  %4124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4122, float %4123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4125 = extractvalue %dx.types.ResRet.f32 %4124, 0
  %4126 = fcmp fast ugt float %4125, 0.000000e+00
  br i1 %4126, label %4127, label %4430

; <label>:4127                                    ; preds = %4089
  %4128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4129 = extractvalue %dx.types.CBufRet.f32 %4128, 2
  %4130 = fmul fast float %4129, %4125
  %4131 = extractvalue %dx.types.CBufRet.f32 %4128, 3
  %4132 = fadd fast float %4131, %4130
  %4133 = extractvalue %dx.types.CBufRet.f32 %4094, 2
  %4134 = fadd fast float %4132, %4101
  %4135 = fmul fast float %4107, %4095
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4098, float %4135)  ; FMad(a,b,c)
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4134, float %4133, float %4136)  ; FMad(a,b,c)
  %4138 = fsub fast float %4137, %4101
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 2
  %4141 = fsub fast float %4138, %4140
  %4142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4122, float %4123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4143 = extractvalue %dx.types.ResRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.ResRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.ResRet.f32 %4142, 2
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4122, float %4123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.ResRet.f32 %4146, 1
  %4149 = extractvalue %dx.types.ResRet.f32 %4146, 2
  %4150 = fadd fast float %4147, %4143
  %4151 = fmul fast float %4150, 0x3F847AE140000000
  %4152 = fadd fast float %4148, %4144
  %4153 = fmul fast float %4152, 0x3F847AE140000000
  %4154 = fadd fast float %4149, %4145
  %4155 = fmul fast float %4154, 0x3F847AE140000000
  br label %4430

; <label>:4156                                    ; preds = %4016
  %4157 = and i32 %161, 1
  %4158 = icmp eq i32 %4157, 0
  br i1 %4158, label %4430, label %4159

; <label>:4159                                    ; preds = %4156
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 0
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 0
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 0
  %4166 = extractvalue %dx.types.CBufRet.f32 %4160, 1
  %4167 = extractvalue %dx.types.CBufRet.f32 %4162, 1
  %4168 = extractvalue %dx.types.CBufRet.f32 %4164, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4160, 3
  %4170 = extractvalue %dx.types.CBufRet.f32 %4162, 3
  %4171 = extractvalue %dx.types.CBufRet.f32 %4164, 3
  %4172 = fadd fast float %4169, %4075
  %4173 = fadd fast float %4170, %4076
  %4174 = fadd fast float %4171, %4077
  %4175 = fmul fast float %4172, %4161
  %4176 = call float @dx.op.tertiary.f32(i32 46, float %4173, float %4163, float %4175)  ; FMad(a,b,c)
  %4177 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4165, float %4176)  ; FMad(a,b,c)
  %4178 = fmul fast float %4172, %4166
  %4179 = call float @dx.op.tertiary.f32(i32 46, float %4173, float %4167, float %4178)  ; FMad(a,b,c)
  %4180 = call float @dx.op.tertiary.f32(i32 46, float %4174, float %4168, float %4179)  ; FMad(a,b,c)
  %4181 = fsub fast float %4177, %4169
  %4182 = fsub fast float %4180, %4170
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = extractvalue %dx.types.CBufRet.f32 %4183, 1
  %4186 = extractvalue %dx.types.CBufRet.f32 %4183, 2
  %4187 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4191 = extractvalue %dx.types.CBufRet.i32 %4190, 0
  %4192 = extractvalue %dx.types.CBufRet.i32 %4190, 1
  %4193 = udiv i32 %4192, %4191
  %4194 = fsub fast float %4181, %4184
  %4195 = fsub fast float %4182, %4185
  %4196 = call float @dx.op.binary.f32(i32 35, float %4194, float 0.000000e+00)  ; FMax(a,b)
  %4197 = call float @dx.op.binary.f32(i32 35, float %4195, float 0.000000e+00)  ; FMax(a,b)
  %4198 = call float @dx.op.binary.f32(i32 36, float %4196, float %4186)  ; FMin(a,b)
  %4199 = call float @dx.op.binary.f32(i32 36, float %4197, float %4187)  ; FMin(a,b)
  %4200 = add i32 %4191, -1
  %4201 = add i32 %4193, -1
  %4202 = fmul fast float %4198, %4189
  %4203 = fmul fast float %4199, %4189
  %4204 = fptoui float %4202 to i32
  %4205 = fptoui float %4203 to i32
  %4206 = call i32 @dx.op.binary.i32(i32 40, i32 %4204, i32 %4200)  ; UMin(a,b)
  %4207 = call i32 @dx.op.binary.i32(i32 40, i32 %4205, i32 %4201)  ; UMin(a,b)
  %4208 = mul i32 %4207, %4191
  %4209 = add i32 %4208, %4206
  %4210 = shl i32 %4209, 2
  %4211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4210, i32 undef)  ; BufferLoad(srv,index,wot)
  %4212 = extractvalue %dx.types.ResRet.i32 %4211, 0
  %4213 = icmp eq i32 %4212, -1
  br i1 %4213, label %4430, label %4214

; <label>:4214                                    ; preds = %4159
  %4215 = mul i32 %4212, 148
  %4216 = add i32 %4215, 4
  %4217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.f32 %4217, 0
  %4219 = add i32 %4215, 8
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = add i32 %4215, 36
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4215, 60
  %4226 = add i32 %4215, 92
  %4227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4226, i32 undef)  ; BufferLoad(srv,index,wot)
  %4228 = extractvalue %dx.types.ResRet.i32 %4227, 0
  %4229 = add i32 %4215, 116
  %4230 = fsub fast float %4181, %4218
  %4231 = fsub fast float %4182, %4221
  %4232 = fmul fast float %4189, %4230
  %4233 = fmul fast float %4189, %4231
  %4234 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4236 = fsub fast float 1.000000e+00, %4235
  %4237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.f32 %4237, 2
  %4239 = call float @dx.op.unary.f32(i32 83, float %4234)  ; DerivCoarseX(value)
  %4240 = call float @dx.op.unary.f32(i32 83, float %4236)  ; DerivCoarseX(value)
  %4241 = call float @dx.op.unary.f32(i32 84, float %4234)  ; DerivCoarseY(value)
  %4242 = call float @dx.op.unary.f32(i32 84, float %4236)  ; DerivCoarseY(value)
  %4243 = fmul fast float %4239, %4238
  %4244 = fmul fast float %4240, %4238
  %4245 = fmul fast float %4241, %4238
  %4246 = fmul fast float %4242, %4238
  %4247 = call float @dx.op.dot2.f32(i32 54, float %4245, float %4246, float %4245, float %4246)  ; Dot2(ax,ay,bx,by)
  %4248 = call float @dx.op.dot2.f32(i32 54, float %4243, float %4244, float %4243, float %4244)  ; Dot2(ax,ay,bx,by)
  %4249 = call float @dx.op.binary.f32(i32 35, float %4248, float %4247)  ; FMax(a,b)
  %4250 = call float @dx.op.unary.f32(i32 23, float %4249)  ; Log(value)
  %4251 = fmul fast float %4250, 5.000000e-01
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 1
  %4254 = fadd fast float %4253, %4251
  %4255 = call float @dx.op.binary.f32(i32 35, float %4254, float 0.000000e+00)  ; FMax(a,b)
  %4256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4257 = extractvalue %dx.types.CBufRet.f32 %4256, 3
  %4258 = fadd fast float %4257, %4255
  %4259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4260 = extractvalue %dx.types.CBufRet.f32 %4259, 3
  %4261 = fadd fast float %4258, %4260
  %4262 = add i32 %4228, 0
  %4263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4262, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4264 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4263, i32 0)  ; GetDimensions(handle,mipLevel)
  %4265 = extractvalue %dx.types.Dimensions %4264, 0
  %4266 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4265)  ; FirstbitLo(value)
  %4267 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.i32 %4267, 1
  %4269 = sub nsw i32 %4268, %4266
  %4270 = sitofp i32 %4269 to float
  %4271 = fsub fast float %4261, %4270
  %4272 = call float @dx.op.binary.f32(i32 35, float %4271, float 0.000000e+00)  ; FMax(a,b)
  %4273 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4263, %dx.types.Handle %37, float %4234, float %4236, float %4224, float undef, i32 0, i32 0, i32 undef, float %4272)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4274 = extractvalue %dx.types.ResRet.f32 %4273, 0
  %4275 = fcmp ule float %4274, 0x3FE0101020000000
  %4276 = extractvalue %dx.types.CBufRet.i32 %4267, 0
  %4277 = and i32 %4276, 128
  %4278 = icmp ne i32 %4277, 0
  %4279 = and i1 %4275, %4278
  br i1 %4279, label %4430, label %4280

; <label>:4280                                    ; preds = %4214
  %4281 = add i32 %4215, 20
  %4282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4281, i32 undef)  ; BufferLoad(srv,index,wot)
  %4283 = extractvalue %dx.types.ResRet.f32 %4282, 0
  %4284 = add i32 %4215, 24
  %4285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4284, i32 undef)  ; BufferLoad(srv,index,wot)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = add i32 %4215, 40
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = add i32 %4215, 96
  %4291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.i32 %4291, 0
  %4293 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.f32 %4293, 2
  %4295 = fmul fast float %4294, %4234
  %4296 = fmul fast float %4294, %4236
  %4297 = extractvalue %dx.types.CBufRet.f32 %4293, 3
  %4298 = fadd fast float %4295, %4297
  %4299 = fadd fast float %4296, %4297
  %4300 = add i32 %4292, 0
  %4301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4300, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4302 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4301, i32 0)  ; GetDimensions(handle,mipLevel)
  %4303 = extractvalue %dx.types.Dimensions %4302, 0
  %4304 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4303)  ; FirstbitLo(value)
  %4305 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.i32 %4305, 1
  %4307 = sub nsw i32 %4306, %4304
  %4308 = sitofp i32 %4307 to float
  %4309 = fsub fast float %4258, %4308
  %4310 = call float @dx.op.binary.f32(i32 35, float %4309, float 0.000000e+00)  ; FMax(a,b)
  %4311 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4301, %dx.types.Handle %37, float %4298, float %4299, float %4289, float undef, i32 0, i32 0, i32 undef, float %4310)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4312 = extractvalue %dx.types.ResRet.f32 %4311, 0
  %4313 = fmul fast float %4312, %4283
  %4314 = fadd fast float %4313, %4286
  %4315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4316 = extractvalue %dx.types.CBufRet.f32 %4315, 0
  %4317 = extractvalue %dx.types.CBufRet.f32 %4315, 1
  %4318 = extractvalue %dx.types.CBufRet.f32 %4315, 2
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4323 = extractvalue %dx.types.CBufRet.f32 %4315, 3
  %4324 = fadd fast float %4320, %4181
  %4325 = fadd fast float %4322, %4182
  %4326 = fadd fast float %4314, %4323
  %4327 = fmul fast float %4324, %4316
  %4328 = call float @dx.op.tertiary.f32(i32 46, float %4325, float %4317, float %4327)  ; FMad(a,b,c)
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4326, float %4318, float %4328)  ; FMad(a,b,c)
  %4330 = fsub fast float %4329, %4323
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 2
  %4333 = fsub fast float %4330, %4332
  %4334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.i32 %4334, 0
  %4336 = call i32 @dx.op.binary.i32(i32 40, i32 %4212, i32 %4335)  ; UMin(a,b)
  %4337 = mul i32 %4336, 36
  %4338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4337, i32 undef)  ; BufferLoad(srv,index,wot)
  %4339 = extractvalue %dx.types.ResRet.i32 %4338, 0
  %4340 = add i32 %4337, 4
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 0
  %4343 = fmul fast float %4342, %4234
  %4344 = fmul fast float %4342, %4236
  %4345 = extractvalue %dx.types.CBufRet.f32 %4341, 1
  %4346 = fadd fast float %4343, %4345
  %4347 = fadd fast float %4344, %4345
  %4348 = icmp eq i32 %4339, 0
  br i1 %4348, label %4417, label %4349

; <label>:4349                                    ; preds = %4280
  br label %4350

; <label>:4350                                    ; preds = %4407, %4349
  %4351 = phi float [ %4408, %4407 ], [ 0.000000e+00, %4349 ]
  %4352 = phi float [ %4409, %4407 ], [ 0.000000e+00, %4349 ]
  %4353 = phi float [ %4410, %4407 ], [ 0.000000e+00, %4349 ]
  %4354 = phi float [ %4411, %4407 ], [ 0.000000e+00, %4349 ]
  %4355 = phi float [ %4412, %4407 ], [ 0.000000e+00, %4349 ]
  %4356 = phi float [ %4413, %4407 ], [ 0.000000e+00, %4349 ]
  %4357 = phi i32 [ %4414, %4407 ], [ 0, %4349 ]
  %4358 = shl i32 %4357, 2
  %4359 = add i32 %4225, %4358
  %4360 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4359, i32 undef)  ; BufferLoad(srv,index,wot)
  %4361 = extractvalue %dx.types.ResRet.f32 %4360, 0
  %4362 = add i32 %4229, %4358
  %4363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.i32 %4363, 0
  %4365 = add i32 %4364, 0
  %4366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4365, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4367 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4366, i32 0)  ; GetDimensions(handle,mipLevel)
  %4368 = extractvalue %dx.types.Dimensions %4367, 0
  %4369 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4368)  ; FirstbitLo(value)
  %4370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4371 = extractvalue %dx.types.CBufRet.i32 %4370, 1
  %4372 = sub nsw i32 %4371, %4369
  %4373 = sitofp i32 %4372 to float
  %4374 = fsub fast float %4258, %4373
  %4375 = call float @dx.op.binary.f32(i32 35, float %4374, float 0.000000e+00)  ; FMax(a,b)
  %4376 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4366, %dx.types.Handle %37, float %4346, float %4347, float %4361, float undef, i32 0, i32 0, i32 undef, float %4375)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4377 = extractvalue %dx.types.ResRet.f32 %4376, 0
  %4378 = fcmp fast ogt float %4377, 0.000000e+00
  br i1 %4378, label %4379, label %4407

; <label>:4379                                    ; preds = %4350
  %4380 = add i32 %4340, %4358
  %4381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4380, i32 undef)  ; BufferLoad(srv,index,wot)
  %4382 = extractvalue %dx.types.ResRet.i32 %4381, 0
  %4383 = and i32 %4382, 32767
  %4384 = mul nuw nsw i32 %4383, 928
  %4385 = add nuw nsw i32 %4384, 48
  %4386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = extractvalue %dx.types.ResRet.f32 %4386, 1
  %4389 = extractvalue %dx.types.ResRet.f32 %4386, 2
  %4390 = add nuw nsw i32 %4384, 60
  %4391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4390, i32 undef)  ; BufferLoad(srv,index,wot)
  %4392 = extractvalue %dx.types.ResRet.f32 %4391, 0
  %4393 = extractvalue %dx.types.ResRet.f32 %4391, 1
  %4394 = extractvalue %dx.types.ResRet.f32 %4391, 2
  %4395 = fmul fast float %4387, %4377
  %4396 = fmul fast float %4388, %4377
  %4397 = fmul fast float %4389, %4377
  %4398 = fadd fast float %4395, %4351
  %4399 = fadd fast float %4396, %4352
  %4400 = fadd fast float %4397, %4353
  %4401 = fmul fast float %4392, %4377
  %4402 = fmul fast float %4393, %4377
  %4403 = fmul fast float %4394, %4377
  %4404 = fadd fast float %4401, %4354
  %4405 = fadd fast float %4402, %4355
  %4406 = fadd fast float %4403, %4356
  br label %4407

; <label>:4407                                    ; preds = %4379, %4350
  %4408 = phi float [ %4398, %4379 ], [ %4351, %4350 ]
  %4409 = phi float [ %4399, %4379 ], [ %4352, %4350 ]
  %4410 = phi float [ %4400, %4379 ], [ %4353, %4350 ]
  %4411 = phi float [ %4404, %4379 ], [ %4354, %4350 ]
  %4412 = phi float [ %4405, %4379 ], [ %4355, %4350 ]
  %4413 = phi float [ %4406, %4379 ], [ %4356, %4350 ]
  %4414 = add nuw i32 %4357, 1
  %4415 = icmp eq i32 %4414, %4339
  br i1 %4415, label %4416, label %4350

; <label>:4416                                    ; preds = %4407
  br label %4417

; <label>:4417                                    ; preds = %4416, %4280
  %4418 = phi float [ 0.000000e+00, %4280 ], [ %4408, %4416 ]
  %4419 = phi float [ 0.000000e+00, %4280 ], [ %4409, %4416 ]
  %4420 = phi float [ 0.000000e+00, %4280 ], [ %4410, %4416 ]
  %4421 = phi float [ 0.000000e+00, %4280 ], [ %4411, %4416 ]
  %4422 = phi float [ 0.000000e+00, %4280 ], [ %4412, %4416 ]
  %4423 = phi float [ 0.000000e+00, %4280 ], [ %4413, %4416 ]
  %4424 = fadd fast float %4421, %4418
  %4425 = fmul fast float %4424, 0x3F847AE140000000
  %4426 = fadd fast float %4422, %4419
  %4427 = fmul fast float %4426, 0x3F847AE140000000
  %4428 = fadd fast float %4423, %4420
  %4429 = fmul fast float %4428, 0x3F847AE140000000
  br label %4430

; <label>:4430                                    ; preds = %4417, %4214, %4159, %4156, %4127, %4089
  %4431 = phi float [ %4141, %4127 ], [ -1.310720e+05, %4089 ], [ %4333, %4417 ], [ -1.310720e+05, %4159 ], [ -1.310720e+05, %4214 ], [ -1.310720e+05, %4156 ]
  %4432 = phi float [ %4151, %4127 ], [ 0.000000e+00, %4089 ], [ %4425, %4417 ], [ 0.000000e+00, %4159 ], [ 0.000000e+00, %4214 ], [ 0.000000e+00, %4156 ]
  %4433 = phi float [ %4153, %4127 ], [ 0.000000e+00, %4089 ], [ %4427, %4417 ], [ 0.000000e+00, %4159 ], [ 0.000000e+00, %4214 ], [ 0.000000e+00, %4156 ]
  %4434 = phi float [ %4155, %4127 ], [ 0.000000e+00, %4089 ], [ %4429, %4417 ], [ 0.000000e+00, %4159 ], [ 0.000000e+00, %4214 ], [ 0.000000e+00, %4156 ]
  %4435 = phi i1 [ true, %4127 ], [ false, %4089 ], [ true, %4417 ], [ false, %4159 ], [ false, %4214 ], [ false, %4156 ]
  %4436 = and i32 %161, 3
  %4437 = icmp eq i32 %4436, 1
  %4438 = select i1 %4437, float 1.000000e+00, float 0.000000e+00
  %4439 = fsub fast float %4431, %145
  %4440 = call float @dx.op.unary.f32(i32 7, float %4439)  ; Saturate(value)
  %4441 = select i1 %4435, float %4440, float 1.000000e+00
  %4442 = fmul fast float %4441, %4438
  %4443 = icmp eq i32 %4436, 3
  %4444 = select i1 %4443, float 1.000000e+00, float %4442
  %4445 = call float @dx.op.binary.f32(i32 35, float %4032, float %4444)  ; FMax(a,b)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = fcmp fast une float %4446, 0.000000e+00
  %4448 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = call float @dx.op.unary.f32(i32 25, float %4448)  ; Rsqrt(value)
  br i1 %4447, label %4457, label %4450

; <label>:4450                                    ; preds = %4430
  %4451 = fmul fast float %4449, %143
  %4452 = fmul fast float %4449, %144
  %4453 = fmul fast float %4449, %145
  %4454 = fsub fast float -0.000000e+00, %4451
  %4455 = fsub fast float -0.000000e+00, %4452
  %4456 = fsub fast float -0.000000e+00, %4453
  br label %4625

; <label>:4457                                    ; preds = %4430
  %4458 = fmul fast float %143, %4449
  %4459 = fsub fast float -0.000000e+00, %4458
  %4460 = fmul fast float %144, %4449
  %4461 = fsub fast float -0.000000e+00, %4460
  %4462 = fmul fast float %145, %4449
  %4463 = fsub fast float -0.000000e+00, %4462
  %4464 = call float @dx.op.dot3.f32(i32 55, float %4459, float %4461, float %4463, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4465 = fmul fast float %4446, 2.500000e+00
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4446, 0x4013FFFFE0000000
  %4468 = fadd fast float %4467, 0xBFFFFFFFE0000000
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = fmul fast float %4446, 0x4004000020000000
  %4471 = fadd fast float %4470, 0xBFF8000040000000
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4474 = fmul fast float %4035, 1.000000e+01
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = fmul fast float %4475, 2.000000e+00
  %4477 = fsub fast float 3.000000e+00, %4476
  %4478 = fmul fast float %4475, %4475
  %4479 = fmul fast float %4478, %4477
  %4480 = fsub fast float 1.000000e+00, %4479
  %4481 = fsub fast float 0x3FE3333340000000, %4056
  %4482 = fmul fast float %4481, 0x400AAAAAA0000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4480, %4483
  %4485 = fmul fast float %4068, 0x3FEA2B8620000000
  %4486 = fmul fast float %4069, 0x3FEA2B8620000000
  %4487 = fmul fast float %4070, 0x3FEA2B8620000000
  %4488 = fadd fast float %4485, 0x3FC81DFBA0000000
  %4489 = fmul fast float %4488, %4068
  %4490 = fadd fast float %4489, 0x3F910E6020000000
  %4491 = fadd fast float %4486, 0x3FC81DFBA0000000
  %4492 = fmul fast float %4491, %4069
  %4493 = fadd fast float %4492, 0x3F910E6020000000
  %4494 = fadd fast float %4487, 0x3FC81DFBA0000000
  %4495 = fmul fast float %4494, %4070
  %4496 = fadd fast float %4495, 0x3F910E6020000000
  %4497 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4499 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4500 = fsub fast float %4497, %4068
  %4501 = fsub fast float %4498, %4069
  %4502 = fsub fast float %4499, %4070
  %4503 = fmul fast float %4500, %4473
  %4504 = fmul fast float %4503, %4484
  %4505 = fmul fast float %4501, %4473
  %4506 = fmul fast float %4505, %4484
  %4507 = fmul fast float %4502, %4473
  %4508 = fmul fast float %4507, %4484
  %4509 = fadd fast float %4504, %4068
  %4510 = fadd fast float %4506, %4069
  %4511 = fadd fast float %4508, %4070
  %4512 = fmul fast float %4029, %4029
  %4513 = fmul fast float %4512, %4512
  %4514 = fadd fast float %4469, 1.000000e+00
  %4515 = fsub fast float %4514, %4484
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4519 = fsub fast float 1.000000e+00, %4513
  %4520 = call float @dx.op.binary.f32(i32 36, float %4516, float %4519)  ; FMin(a,b)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4522 = call float @dx.op.binary.f32(i32 35, float %4520, float %4521)  ; FMax(a,b)
  %4523 = fadd fast float %4518, 0xBFE4CCCCC0000000
  %4524 = fmul fast float %4523, 0x4006DB6DA0000000
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = fmul fast float %4525, 2.000000e+00
  %4527 = fsub fast float 3.000000e+00, %4526
  %4528 = bitcast float %4053 to i32
  %4529 = ashr i32 %4528, 1
  %4530 = add nsw i32 %4529, 532487669
  %4531 = bitcast i32 %4530 to float
  %4532 = fsub fast float 1.000000e+00, %4531
  %4533 = bitcast float %4532 to i32
  %4534 = sub nsw i32 2129859010, %4533
  %4535 = bitcast i32 %4534 to float
  %4536 = fmul fast float %4535, 2.000000e+00
  %4537 = bitcast float %4054 to i32
  %4538 = ashr i32 %4537, 1
  %4539 = add nsw i32 %4538, 532487669
  %4540 = bitcast i32 %4539 to float
  %4541 = fsub fast float 1.000000e+00, %4540
  %4542 = bitcast float %4541 to i32
  %4543 = sub nsw i32 2129859010, %4542
  %4544 = bitcast i32 %4543 to float
  %4545 = fmul fast float %4544, 2.000000e+00
  %4546 = bitcast float %4055 to i32
  %4547 = ashr i32 %4546, 1
  %4548 = add nsw i32 %4547, 532487669
  %4549 = bitcast i32 %4548 to float
  %4550 = fsub fast float 1.000000e+00, %4549
  %4551 = bitcast float %4550 to i32
  %4552 = sub nsw i32 2129859010, %4551
  %4553 = bitcast i32 %4552 to float
  %4554 = fmul fast float %4553, 2.000000e+00
  %4555 = fsub fast float 0x4002A9FBE0000000, %4536
  %4556 = fadd fast float %4536, 0x3FD54FDF00000000
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, %4555
  %4561 = fmul fast float %4560, %4560
  %4562 = fsub fast float 0x4002A9FBE0000000, %4545
  %4563 = fadd fast float %4545, 0x3FD54FDF00000000
  %4564 = bitcast float %4563 to i32
  %4565 = sub nsw i32 2129859010, %4564
  %4566 = bitcast i32 %4565 to float
  %4567 = fmul fast float %4566, %4562
  %4568 = fmul fast float %4567, %4567
  %4569 = fsub fast float 0x4002A9FBE0000000, %4554
  %4570 = fadd fast float %4554, 0x3FD54FDF00000000
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = fmul fast float %4573, %4569
  %4575 = fmul fast float %4574, %4574
  %4576 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4561)  ; FMax(a,b)
  %4577 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4568)  ; FMax(a,b)
  %4578 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4575)  ; FMax(a,b)
  %4579 = fsub fast float 1.000000e+00, %4464
  %4580 = fadd fast float %4579, %4480
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fsub fast float 1.000000e+00, %4444
  %4583 = fmul fast float %4522, %4582
  %4584 = fmul fast float %4525, %4525
  %4585 = fmul fast float %4584, %4583
  %4586 = fmul fast float %4585, %4527
  %4587 = fmul fast float %4582, 0xBFE99999A0000000
  %4588 = fmul fast float %4587, %4473
  %4589 = fmul fast float %4588, %4484
  %4590 = fadd fast float %4589, 1.000000e+00
  %4591 = fadd fast float %4056, -1.000000e+00
  %4592 = fmul fast float %4590, %4591
  %4593 = fadd fast float %4592, 1.000000e+00
  %4594 = fsub fast float %4576, %4053
  %4595 = fsub fast float %4577, %4054
  %4596 = fsub fast float %4578, %4055
  %4597 = fmul fast float %4586, %4594
  %4598 = fmul fast float %4586, %4595
  %4599 = fmul fast float %4586, %4596
  %4600 = fadd fast float %4597, %4053
  %4601 = fadd fast float %4598, %4054
  %4602 = fadd fast float %4599, %4055
  %4603 = fsub fast float %87, %4017
  %4604 = fsub fast float %88, %4018
  %4605 = fsub fast float %89, %4019
  %4606 = fmul fast float %4586, %4603
  %4607 = fmul fast float %4586, %4604
  %4608 = fmul fast float %4586, %4605
  %4609 = fadd fast float %4606, %4017
  %4610 = fadd fast float %4607, %4018
  %4611 = fadd fast float %4608, %4019
  %4612 = fmul fast float %4586, %4581
  %4613 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4614 = fsub fast float 1.000000e+00, %4613
  %4615 = fmul fast float %4612, %4614
  %4616 = fadd fast float %4615, %4613
  %4617 = fsub fast float 1.000000e+00, %4029
  %4618 = fmul fast float %4586, %4617
  %4619 = fadd fast float %4618, %4029
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = call float @dx.op.unary.f32(i32 25, float %4620)  ; Rsqrt(value)
  %4622 = fmul fast float %4609, %4621
  %4623 = fmul fast float %4610, %4621
  %4624 = fmul fast float %4611, %4621
  br label %4625

; <label>:4625                                    ; preds = %4457, %4450
  %4626 = phi float [ %4456, %4450 ], [ %4463, %4457 ]
  %4627 = phi float [ %4455, %4450 ], [ %4461, %4457 ]
  %4628 = phi float [ %4454, %4450 ], [ %4459, %4457 ]
  %4629 = phi float [ %4453, %4450 ], [ %4462, %4457 ]
  %4630 = phi float [ %4452, %4450 ], [ %4460, %4457 ]
  %4631 = phi float [ %4451, %4450 ], [ %4458, %4457 ]
  %4632 = phi float [ %4053, %4450 ], [ %4600, %4457 ]
  %4633 = phi float [ %4054, %4450 ], [ %4601, %4457 ]
  %4634 = phi float [ %4055, %4450 ], [ %4602, %4457 ]
  %4635 = phi float [ %4068, %4450 ], [ %4509, %4457 ]
  %4636 = phi float [ %4069, %4450 ], [ %4510, %4457 ]
  %4637 = phi float [ %4070, %4450 ], [ %4511, %4457 ]
  %4638 = phi float [ %4017, %4450 ], [ %4622, %4457 ]
  %4639 = phi float [ %4018, %4450 ], [ %4623, %4457 ]
  %4640 = phi float [ %4019, %4450 ], [ %4624, %4457 ]
  %4641 = phi float [ %4056, %4450 ], [ %4616, %4457 ]
  %4642 = phi float [ %4029, %4450 ], [ %4619, %4457 ]
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 3
  %4646 = fmul fast float %4644, %80
  %4647 = fmul fast float %4645, %81
  %4648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4649 = extractvalue %dx.types.CBufRet.f32 %4648, 0
  %4650 = extractvalue %dx.types.CBufRet.f32 %4648, 1
  %4651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4646, float %4647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = fmul fast float %4652, %4650
  %4654 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4655 = fadd fast float %4654, -1.000000e+00
  %4656 = fmul fast float %4655, %4649
  %4657 = fadd fast float %4656, 1.000000e+00
  %4658 = select i1 %185, float 0.000000e+00, float %4634
  %4659 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4628, float %4627, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4630, float %4629, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = fmul fast float %4661, 2.000000e+00
  %4663 = fmul fast float %4662, %4638
  %4664 = fmul fast float %4662, %4639
  %4665 = fmul fast float %4662, %4640
  %4666 = fsub fast float %4631, %4663
  %4667 = fsub fast float %4630, %4664
  %4668 = fsub fast float %4629, %4665
  %4669 = call float @dx.op.binary.f32(i32 36, float %4642, float %4657)  ; FMin(a,b)
  %4670 = fsub fast float 1.000000e+00, %4669
  %4671 = bitcast float %4670 to i32
  %4672 = ashr i32 %4671, 1
  %4673 = add nsw i32 %4672, 532487669
  %4674 = bitcast i32 %4673 to float
  %4675 = fsub fast float 1.000000e+00, %4641
  %4676 = call float @dx.op.binary.f32(i32 35, float %4675, float 0x3F847AE140000000)  ; FMax(a,b)
  %4677 = fmul fast float %4676, %4676
  %4678 = fmul fast float %4677, %4677
  %4679 = call float @dx.op.unary.f32(i32 7, float %4660)  ; Saturate(value)
  %4680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4674, float %4678, float %4679, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = fsub fast float 1.000000e+00, %4642
  %4683 = bitcast float %4682 to i32
  %4684 = sub nsw i32 2129859010, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = fsub fast float 1.000000e+00, %57
  %4687 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4688 = call float @dx.op.binary.f32(i32 35, float %4687, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4689 = fdiv fast float %4686, %4688
  %4690 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4691 = call float @dx.op.unary.f32(i32 7, float %4690)  ; Saturate(value)
  %4692 = fmul fast float %4691, 5.000000e-01
  %4693 = fadd fast float %4692, 5.000000e-01
  %4694 = fmul fast float %4693, %57
  %4695 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = call float @dx.op.unary.f32(i32 7, float %4695)  ; Saturate(value)
  %4697 = fmul fast float %4696, %4689
  %4698 = fadd fast float %4694, %4697
  %4699 = fsub fast float 5.000000e-01, %4692
  %4700 = fmul fast float %4699, %4635
  %4701 = fmul fast float %4699, %4636
  %4702 = fmul fast float %4699, %4637
  %4703 = fadd fast float %4698, %4700
  %4704 = fadd fast float %4698, %4701
  %4705 = fadd fast float %4698, %4702
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4707, 5.000000e-01
  %4709 = fadd fast float %4708, 5.000000e-01
  %4710 = fmul fast float %4709, %57
  %4711 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4712 = call float @dx.op.unary.f32(i32 7, float %4711)  ; Saturate(value)
  %4713 = fmul fast float %4712, %4689
  %4714 = fadd fast float %4710, %4713
  %4715 = fsub fast float 5.000000e-01, %4708
  %4716 = fmul fast float %4715, %4635
  %4717 = fmul fast float %4715, %4636
  %4718 = fmul fast float %4715, %4637
  %4719 = fadd fast float %4714, %4716
  %4720 = fadd fast float %4714, %4717
  %4721 = fadd fast float %4714, %4718
  %4722 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4724 = extractvalue %dx.types.CBufRet.f32 %4723, 0
  %4725 = call float @dx.op.binary.f32(i32 36, float %4635, float %4724)  ; FMin(a,b)
  %4726 = fmul fast float %4725, %4670
  %4727 = fsub fast float 1.000000e+00, %4726
  %4728 = bitcast float %4727 to i32
  %4729 = sub nsw i32 2129859010, %4728
  %4730 = bitcast i32 %4729 to float
  %4731 = call float @dx.op.binary.f32(i32 36, float %4636, float %4724)  ; FMin(a,b)
  %4732 = fmul fast float %4731, %4670
  %4733 = fsub fast float 1.000000e+00, %4732
  %4734 = bitcast float %4733 to i32
  %4735 = sub nsw i32 2129859010, %4734
  %4736 = bitcast i32 %4735 to float
  %4737 = call float @dx.op.binary.f32(i32 36, float %4637, float %4724)  ; FMin(a,b)
  %4738 = fmul fast float %4737, %4670
  %4739 = fsub fast float 1.000000e+00, %4738
  %4740 = bitcast float %4739 to i32
  %4741 = sub nsw i32 2129859010, %4740
  %4742 = bitcast i32 %4741 to float
  %4743 = fmul fast float %4669, %58
  %4744 = fmul fast float %4743, %4703
  %4745 = fmul fast float %4744, %4730
  %4746 = fmul fast float %4669, %59
  %4747 = fmul fast float %4746, %4704
  %4748 = fmul fast float %4747, %4736
  %4749 = fmul fast float %4669, %60
  %4750 = fmul fast float %4749, %4705
  %4751 = fmul fast float %4750, %4742
  %4752 = call float @dx.op.binary.f32(i32 36, float %4632, float %4724)  ; FMin(a,b)
  %4753 = fmul fast float %4752, %4670
  %4754 = fsub fast float 1.000000e+00, %4753
  %4755 = bitcast float %4754 to i32
  %4756 = sub nsw i32 2129859010, %4755
  %4757 = bitcast i32 %4756 to float
  %4758 = call float @dx.op.binary.f32(i32 36, float %4633, float %4724)  ; FMin(a,b)
  %4759 = fmul fast float %4758, %4670
  %4760 = fsub fast float 1.000000e+00, %4759
  %4761 = bitcast float %4760 to i32
  %4762 = sub nsw i32 2129859010, %4761
  %4763 = bitcast i32 %4762 to float
  %4764 = call float @dx.op.binary.f32(i32 36, float %4658, float %4724)  ; FMin(a,b)
  %4765 = fmul fast float %4764, %4670
  %4766 = fsub fast float 1.000000e+00, %4765
  %4767 = bitcast float %4766 to i32
  %4768 = sub nsw i32 2129859010, %4767
  %4769 = bitcast i32 %4768 to float
  %4770 = fmul fast float %4743, %4719
  %4771 = fmul fast float %4770, %4757
  %4772 = fmul fast float %4746, %4720
  %4773 = fmul fast float %4772, %4763
  %4774 = fmul fast float %4749, %4721
  %4775 = fmul fast float %4774, %4769
  %4776 = call float @dx.op.dot3.f32(i32 55, float %4745, float %4748, float %4751, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4777 = select i1 %185, float 0.000000e+00, float %4745
  %4778 = select i1 %185, float %4776, float %4748
  %4779 = select i1 %185, float 0.000000e+00, float %4751
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4771, float %4773, float %4775, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = select i1 %185, float 0.000000e+00, float %4771
  %4782 = select i1 %185, float %4780, float %4773
  %4783 = select i1 %185, float 0.000000e+00, float %4775
  %4784 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4785 = fmul fast float %4784, %4777
  %4786 = fmul fast float %4784, %4778
  %4787 = fmul fast float %4779, %4784
  %4788 = fmul fast float %4660, 9.843750e-01
  %4789 = fmul fast float %4641, 9.843750e-01
  %4790 = fadd fast float %4788, 7.812500e-03
  %4791 = fadd fast float %4789, 7.812500e-03
  %4792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4790, float %4791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4793 = extractvalue %dx.types.ResRet.f32 %4792, 2
  %4794 = extractvalue %dx.types.ResRet.f32 %4792, 3
  %4795 = fmul fast float %4793, %4632
  %4796 = fmul fast float %4793, %4633
  %4797 = fmul fast float %4793, %4658
  %4798 = fadd fast float %4795, %4794
  %4799 = fadd fast float %4796, %4794
  %4800 = fadd fast float %4797, %4794
  %4801 = fcmp fast ogt float %4030, 0.000000e+00
  br i1 %4801, label %4802, label %4828

; <label>:4802                                    ; preds = %4625
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4030, float %4660, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.ResRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.ResRet.f32 %4803, 2
  %4807 = fadd fast float %4804, -5.000000e-01
  %4808 = fadd fast float %4805, -5.000000e-01
  %4809 = fadd fast float %4806, -5.000000e-01
  %4810 = fsub fast float 1.000000e+00, %4632
  %4811 = fsub fast float 1.000000e+00, %4633
  %4812 = fsub fast float 1.000000e+00, %4658
  %4813 = fmul fast float %4632, 4.000000e+00
  %4814 = fmul fast float %4813, %4810
  %4815 = fmul fast float %4814, %4807
  %4816 = fmul fast float %4633, 4.000000e+00
  %4817 = fmul fast float %4816, %4811
  %4818 = fmul fast float %4817, %4808
  %4819 = fmul fast float %4658, 4.000000e+00
  %4820 = fmul fast float %4819, %4812
  %4821 = fmul fast float %4820, %4809
  %4822 = fadd fast float %4815, %4798
  %4823 = fadd fast float %4818, %4799
  %4824 = fadd fast float %4821, %4800
  %4825 = call float @dx.op.unary.f32(i32 7, float %4822)  ; Saturate(value)
  %4826 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4827 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  br label %4828

; <label>:4828                                    ; preds = %4802, %4625
  %4829 = phi float [ %4825, %4802 ], [ %4798, %4625 ]
  %4830 = phi float [ %4826, %4802 ], [ %4799, %4625 ]
  %4831 = phi float [ %4827, %4802 ], [ %4800, %4625 ]
  %4832 = call float @dx.op.binary.f32(i32 35, float %4830, float %4831)  ; FMax(a,b)
  %4833 = call float @dx.op.binary.f32(i32 35, float %4829, float %4832)  ; FMax(a,b)
  %4834 = fsub fast float 1.000000e+00, %4833
  %4835 = fmul fast float %4833, %4641
  %4836 = fadd fast float %4835, %4641
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 1
  %4840 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4841 = extractvalue %dx.types.CBufRet.f32 %4837, 3
  %4842 = fmul fast float %4836, %4838
  %4843 = fadd fast float %4842, %4839
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = fmul fast float %4840, %4836
  %4846 = fadd fast float %4845, %4841
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = fsub fast float 1.000000e+00, %4681
  %4849 = fadd fast float %4848, %4847
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = fcmp fast olt float %4850, 1.000000e+00
  br i1 %4851, label %4852, label %5707

; <label>:4852                                    ; preds = %4828
  %4853 = fcmp fast olt float %4844, 1.000000e+00
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = fcmp fast ogt float %4855, 0.000000e+00
  %4857 = or i1 %4853, %4856
  %4858 = or i1 %4853, %4856
  %4859 = xor i1 %4858, true
  %4860 = zext i1 %4859 to i32
  br i1 %4857, label %4861, label %5104

; <label>:4861                                    ; preds = %4852
  %4862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4863 = extractvalue %dx.types.CBufRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.CBufRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.CBufRet.f32 %4862, 2
  %4866 = extractvalue %dx.types.CBufRet.f32 %4862, 3
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 1
  %4870 = extractvalue %dx.types.CBufRet.f32 %4867, 2
  %4871 = extractvalue %dx.types.CBufRet.f32 %4867, 3
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4876 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4880 = extractvalue %dx.types.CBufRet.f32 %4877, 2
  %4881 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.CBufRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.CBufRet.f32 %4882, 2
  %4886 = extractvalue %dx.types.CBufRet.f32 %4882, 3
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.CBufRet.f32 %4887, 1
  %4890 = extractvalue %dx.types.CBufRet.f32 %4887, 2
  %4891 = extractvalue %dx.types.CBufRet.f32 %4887, 3
  %4892 = call float @dx.op.dot3.f32(i32 55, float %4888, float %4889, float %4890, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %4893 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4894 = call float @dx.op.unary.f32(i32 6, float %4893)  ; FAbs(value)
  %4895 = fmul fast float %4894, 8.000000e+00
  %4896 = fadd fast float %4895, -6.000000e+00
  %4897 = call float @dx.op.unary.f32(i32 7, float %4896)  ; Saturate(value)
  %4898 = fmul fast float %4892, 8.000000e+00
  %4899 = fmul fast float %4898, %4855
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fcmp fast ogt float %4900, 0.000000e+00
  br i1 %4901, label %4902, label %5079, !dx.controlflow.hints !86

; <label>:4902                                    ; preds = %4861
  %4903 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4904 = extractvalue %dx.types.CBufRet.f32 %4854, 2
  %4905 = fsub fast float %4903, %4904
  %4906 = fmul fast float %4905, %4641
  %4907 = fadd fast float %4906, %4904
  %4908 = fmul fast float %198, 2.000000e+00
  %4909 = fmul fast float %199, 2.000000e+00
  %4910 = fadd fast float %4908, -1.000000e+00
  %4911 = fadd fast float %4909, -1.000000e+00
  %4912 = fmul fast float %4907, %4910
  %4913 = fmul fast float %4907, %4911
  %4914 = fadd fast float %4912, %80
  %4915 = fadd fast float %4913, %81
  %4916 = fmul fast float %4914, %4644
  %4917 = fmul fast float %4915, %4645
  %4918 = fadd fast float %4641, 0xBFE3333340000000
  %4919 = fmul fast float %4918, 0x4004000020000000
  %4920 = fsub fast float 1.000000e+00, %4919
  %4921 = call float @dx.op.unary.f32(i32 7, float %4920)  ; Saturate(value)
  %4922 = fmul fast float %4921, 3.000000e+00
  %4923 = fadd fast float %4922, %198
  %4924 = call float @dx.op.unary.f32(i32 27, float %4923)  ; Round_ni(value)
  %4925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4916, float %4917, float %4924, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4926 = extractvalue %dx.types.ResRet.f32 %4925, 0
  %4927 = fcmp fast une float %4926, 0xFFF0000000000000
  %4928 = fcmp fast une float %4926, 0x7FF0000000000000
  %4929 = and i1 %4927, %4928
  %4930 = fcmp fast olt float %4926, 0.000000e+00
  %4931 = call float @dx.op.unary.f32(i32 6, float %4926)  ; FAbs(value)
  %4932 = fsub fast float 1.000000e+00, %4931
  %4933 = select i1 %4929, float 1.000000e+00, float 0.000000e+00
  %4934 = fmul fast float %4933, %4900
  %4935 = fcmp fast ogt float %4934, 0.000000e+00
  br i1 %4935, label %4936, label %5079, !dx.controlflow.hints !87

; <label>:4936                                    ; preds = %4902
  %4937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4938 = extractvalue %dx.types.CBufRet.f32 %4937, 0
  %4939 = extractvalue %dx.types.CBufRet.f32 %4937, 1
  %4940 = extractvalue %dx.types.CBufRet.f32 %4937, 2
  %4941 = select i1 %4930, float 0.000000e+00, float %4938
  %4942 = select i1 %4930, float 0.000000e+00, float %4939
  %4943 = select i1 %4930, float 0.000000e+00, float %4940
  %4944 = select i1 %4930, float %4863, float %4878
  %4945 = select i1 %4930, float %4868, float %4883
  %4946 = select i1 %4930, float %4873, float %4888
  %4947 = select i1 %4930, float %4864, float %4879
  %4948 = select i1 %4930, float %4869, float %4884
  %4949 = select i1 %4930, float %4874, float %4889
  %4950 = select i1 %4930, float %4865, float %4880
  %4951 = select i1 %4930, float %4870, float %4885
  %4952 = select i1 %4930, float %4875, float %4890
  %4953 = select i1 %4930, float %4866, float %4881
  %4954 = select i1 %4930, float %4871, float %4886
  %4955 = select i1 %4930, float %4876, float %4891
  %4956 = fadd fast float %4941, %143
  %4957 = fadd fast float %4942, %144
  %4958 = fadd fast float %4943, %145
  %4959 = fmul fast float %4956, %4944
  %4960 = call float @dx.op.tertiary.f32(i32 46, float %4957, float %4947, float %4959)  ; FMad(a,b,c)
  %4961 = call float @dx.op.tertiary.f32(i32 46, float %4958, float %4950, float %4960)  ; FMad(a,b,c)
  %4962 = fadd fast float %4961, %4953
  %4963 = fmul fast float %4956, %4945
  %4964 = call float @dx.op.tertiary.f32(i32 46, float %4957, float %4948, float %4963)  ; FMad(a,b,c)
  %4965 = call float @dx.op.tertiary.f32(i32 46, float %4958, float %4951, float %4964)  ; FMad(a,b,c)
  %4966 = fadd fast float %4965, %4954
  %4967 = fmul fast float %4956, %4946
  %4968 = call float @dx.op.tertiary.f32(i32 46, float %4957, float %4949, float %4967)  ; FMad(a,b,c)
  %4969 = call float @dx.op.tertiary.f32(i32 46, float %4958, float %4952, float %4968)  ; FMad(a,b,c)
  %4970 = fadd fast float %4969, %4955
  %4971 = fdiv fast float 1.000000e+00, %4970
  %4972 = fmul fast float %4971, %4962
  %4973 = fmul fast float %4971, %4966
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = extractvalue %dx.types.CBufRet.f32 %4974, 1
  %4977 = fmul fast float %4972, %4975
  %4978 = fmul fast float %4973, %4976
  %4979 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %4980 = extractvalue %dx.types.CBufRet.f32 %4974, 3
  %4981 = fadd fast float %4977, %4979
  %4982 = fadd fast float %4978, %4980
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 3
  %4985 = fmul fast float %4984, %4666
  %4986 = fmul fast float %4984, %4667
  %4987 = fmul fast float %4984, %4668
  %4988 = fadd fast float %4985, %4956
  %4989 = fadd fast float %4986, %4957
  %4990 = fadd fast float %4987, %4958
  %4991 = fmul fast float %4988, %4944
  %4992 = call float @dx.op.tertiary.f32(i32 46, float %4989, float %4947, float %4991)  ; FMad(a,b,c)
  %4993 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4950, float %4992)  ; FMad(a,b,c)
  %4994 = fadd fast float %4993, %4953
  %4995 = fmul fast float %4988, %4945
  %4996 = call float @dx.op.tertiary.f32(i32 46, float %4989, float %4948, float %4995)  ; FMad(a,b,c)
  %4997 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4951, float %4996)  ; FMad(a,b,c)
  %4998 = fadd fast float %4997, %4954
  %4999 = fmul fast float %4988, %4946
  %5000 = call float @dx.op.tertiary.f32(i32 46, float %4989, float %4949, float %4999)  ; FMad(a,b,c)
  %5001 = call float @dx.op.tertiary.f32(i32 46, float %4990, float %4952, float %5000)  ; FMad(a,b,c)
  %5002 = fadd fast float %5001, %4955
  %5003 = fdiv fast float 1.000000e+00, %5002
  %5004 = fmul fast float %5003, %4994
  %5005 = fmul fast float %5003, %4998
  %5006 = fmul fast float %4981, 2.000000e+00
  %5007 = fadd fast float %5006, -1.000000e+00
  %5008 = call float @dx.op.unary.f32(i32 6, float %5007)  ; FAbs(value)
  %5009 = fmul fast float %5008, 5.000000e+00
  %5010 = fadd fast float %5009, -4.000000e+00
  %5011 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5012 = fmul fast float %5011, %4897
  %5013 = fsub fast float %4972, %5004
  %5014 = fmul fast float %4975, %5013
  %5015 = fmul fast float %5012, %5014
  %5016 = fsub fast float %5004, %4972
  %5017 = fmul fast float %4975, %5016
  %5018 = fadd fast float %5017, %5015
  %5019 = fsub fast float %5005, %4973
  %5020 = fmul fast float %4976, %5019
  %5021 = fmul fast float %5018, %4932
  %5022 = fmul fast float %5020, %4932
  %5023 = fadd fast float %5021, %4981
  %5024 = fadd fast float %5022, %4982
  %5025 = fsub fast float %5003, %4971
  %5026 = fmul fast float %5025, %4932
  %5027 = fadd fast float %5026, %4971
  %5028 = fdiv fast float 1.000000e+00, %5027
  %5029 = fadd fast float %4641, -1.000000e+00
  %5030 = fsub fast float %5028, %4970
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 2
  %5033 = fmul fast float %5032, %5028
  %5034 = fdiv fast float 1.600000e+02, %5033
  %5035 = fmul fast float %5029, %5029
  %5036 = fmul fast float %5035, 0xBFB5B17960000000
  %5037 = fmul fast float %5036, %5030
  %5038 = fmul fast float %5037, %5034
  %5039 = call float @dx.op.unary.f32(i32 21, float %5038)  ; Exp(value)
  %5040 = fmul fast float %5039, 0x3FF04B2960000000
  %5041 = fsub fast float 0x3FF04B2960000000, %5040
  %5042 = call float @dx.op.unary.f32(i32 7, float %5041)  ; Saturate(value)
  %5043 = fmul fast float %5042, 4.000000e+00
  %5044 = fadd fast float %198, -5.000000e-01
  %5045 = fadd fast float %199, -5.000000e-01
  %5046 = fmul fast float %5042, 0x3FBEB851E0000000
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = fmul fast float %5047, %5044
  %5049 = fmul fast float %5047, %5045
  %5050 = fadd fast float %5023, %5048
  %5051 = fadd fast float %5024, %5049
  %5052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5050, float %5051, float undef, float undef, i32 0, i32 0, i32 undef, float %5043)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5053 = extractvalue %dx.types.ResRet.f32 %5052, 0
  %5054 = extractvalue %dx.types.ResRet.f32 %5052, 1
  %5055 = extractvalue %dx.types.ResRet.f32 %5052, 2
  %5056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5057 = extractvalue %dx.types.CBufRet.f32 %5056, 2
  %5058 = fmul fast float %5057, %5053
  %5059 = fmul fast float %5057, %5054
  %5060 = fmul fast float %5057, %5055
  %5061 = select i1 %185, float 0.000000e+00, float %5059
  %5062 = select i1 %185, float 0.000000e+00, float %5060
  %5063 = fmul fast float %5050, 2.000000e+00
  %5064 = fmul fast float %5051, 2.000000e+00
  %5065 = fadd fast float %5063, -1.000000e+00
  %5066 = fadd fast float %5064, -1.000000e+00
  %5067 = fmul fast float %5065, %5065
  %5068 = fsub fast float 1.000000e+00, %5067
  %5069 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = fmul fast float %5070, %4897
  %5072 = fadd fast float %5071, %5069
  %5073 = fmul fast float %5066, %5066
  %5074 = fsub fast float 1.000000e+00, %5073
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5072, %5075
  %5077 = call float @dx.op.unary.f32(i32 7, float %5076)  ; Saturate(value)
  %5078 = fmul fast float %5077, %4934
  br label %5079

; <label>:5079                                    ; preds = %4936, %4902, %4861
  %5080 = phi float [ %5058, %4936 ], [ 0.000000e+00, %4902 ], [ 0.000000e+00, %4861 ]
  %5081 = phi float [ %5061, %4936 ], [ 0.000000e+00, %4902 ], [ 0.000000e+00, %4861 ]
  %5082 = phi float [ %5062, %4936 ], [ 0.000000e+00, %4902 ], [ 0.000000e+00, %4861 ]
  %5083 = phi float [ %5078, %4936 ], [ 0.000000e+00, %4902 ], [ 0.000000e+00, %4861 ]
  %5084 = fcmp fast olt float %5083, 1.000000e+00
  %5085 = or i1 %5084, %4859
  %5086 = zext i1 %5085 to i32
  %5087 = fmul fast float %5083, %4844
  %5088 = fsub fast float %5083, %5087
  %5089 = fsub fast float 1.000000e+00, %4850
  %5090 = fmul fast float %5088, %5089
  %5091 = fadd fast float %5090, %4850
  %5092 = fsub fast float %5091, %5088
  %5093 = call float @dx.op.unary.f32(i32 7, float %5092)  ; Saturate(value)
  %5094 = fmul fast float %5093, %4781
  %5095 = fmul fast float %5093, %4782
  %5096 = fmul fast float %5093, %4783
  %5097 = fsub fast float -0.000000e+00, %5091
  %5098 = fmul fast float %5088, %5080
  %5099 = fmul fast float %5088, %5081
  %5100 = fmul fast float %5088, %5082
  %5101 = fadd fast float %5098, %5094
  %5102 = fadd fast float %5099, %5095
  %5103 = fadd fast float %5100, %5096
  br label %5104

; <label>:5104                                    ; preds = %5079, %4852
  %5105 = phi float [ %4850, %4852 ], [ %5097, %5079 ]
  %5106 = phi float [ %4781, %4852 ], [ %5101, %5079 ]
  %5107 = phi float [ %4782, %4852 ], [ %5102, %5079 ]
  %5108 = phi float [ %4783, %4852 ], [ %5103, %5079 ]
  %5109 = phi i32 [ %4860, %4852 ], [ %5086, %5079 ]
  %5110 = icmp eq i32 %5109, 0
  br i1 %5110, label %5707, label %5111

; <label>:5111                                    ; preds = %5104
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 2
  %5114 = extractvalue %dx.types.CBufRet.f32 %5112, 3
  %5115 = fmul fast float %5113, %80
  %5116 = fmul fast float %5114, %81
  %5117 = fptoui float %5115 to i32
  %5118 = fptoui float %5116 to i32
  %5119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5120 = extractvalue %dx.types.CBufRet.f32 %5119, 0
  %5121 = extractvalue %dx.types.CBufRet.f32 %5119, 2
  %5122 = extractvalue %dx.types.CBufRet.f32 %5119, 3
  %5123 = fadd fast float %75, -4.000000e+00
  %5124 = call float @dx.op.binary.f32(i32 35, float %5123, float 0.000000e+00)  ; FMax(a,b)
  %5125 = fadd fast float %5124, %5120
  %5126 = fmul fast float %5125, %5121
  %5127 = call float @dx.op.unary.f32(i32 23, float %5126)  ; Log(value)
  %5128 = fmul fast float %5127, %5122
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 2
  %5131 = fmul fast float %5128, %5130
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5133 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.i32 %5133, 1
  %5135 = add i32 %5134, -1
  %5136 = uitofp i32 %5134 to float
  %5137 = fmul fast float %5136, %5132
  %5138 = fptoui float %5137 to i32
  %5139 = call i32 @dx.op.binary.i32(i32 40, i32 %5138, i32 %5135)  ; UMin(a,b)
  %5140 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.i32 %5140, 2
  %5142 = extractvalue %dx.types.CBufRet.i32 %5140, 3
  %5143 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5118, i32 %5141, i32 %5117)  ; UMad(a,b,c)
  %5144 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5139, i32 %5142, i32 %5143)  ; UMad(a,b,c)
  %5145 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %5146 = fptoui float %5145 to i32
  %5147 = lshr i32 %5146, 5
  %5148 = call i32 @dx.op.binary.i32(i32 40, i32 %5147, i32 8191)  ; UMin(a,b)
  %5149 = fcmp fast ogt float %4440, 0.000000e+00
  %5150 = fcmp fast ogt float %4668, 0.000000e+00
  %5151 = and i1 %5150, %5149
  br i1 %5151, label %5152, label %5181

; <label>:5152                                    ; preds = %5111
  %5153 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %4668, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = call float @dx.op.binary.f32(i32 35, float %5153, float -1.000000e+00)  ; FMax(a,b)
  %5155 = call float @dx.op.binary.f32(i32 36, float %5154, float 1.000000e+00)  ; FMin(a,b)
  %5156 = fmul fast float %5155, %5155
  %5157 = fsub fast float 1.000000e+00, %5156
  %5158 = fmul fast float %5157, 0x3FFC6E2300000000
  %5159 = fsub fast float 1.000000e+00, %5158
  %5160 = fcmp fast ogt float %5159, 0.000000e+00
  %5161 = call float @dx.op.unary.f32(i32 24, float %5159)  ; Sqrt(value)
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = call float @dx.op.unary.f32(i32 23, float %5162)  ; Log(value)
  %5164 = fmul fast float %5163, 5.000000e+00
  %5165 = call float @dx.op.unary.f32(i32 21, float %5164)  ; Exp(value)
  %5166 = fmul fast float %5165, 0x3FEF591A60000000
  %5167 = fadd fast float %5166, 0x3F94DCB540000000
  %5168 = select i1 %5160, float %5167, float 1.000000e+00
  %5169 = fcmp fast oge float %5168, 1.000000e+00
  %5170 = fmul fast float %5153, 2.000000e+00
  %5171 = fadd fast float %5170, %4668
  %5172 = select i1 %5169, float %5171, float %4668
  %5173 = fsub fast float %5172, %4668
  %5174 = fmul fast float %5173, %4440
  %5175 = fadd fast float %5174, %4668
  %5176 = call float @dx.op.dot3.f32(i32 55, float %4666, float %4667, float %5175, float %4666, float %4667, float %5175)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = call float @dx.op.unary.f32(i32 25, float %5176)  ; Rsqrt(value)
  %5178 = fmul fast float %5177, %4666
  %5179 = fmul fast float %5177, %4667
  %5180 = fmul fast float %5175, %5177
  br label %5181

; <label>:5181                                    ; preds = %5152, %5111
  %5182 = phi float [ %5178, %5152 ], [ %4666, %5111 ]
  %5183 = phi float [ %5179, %5152 ], [ %4667, %5111 ]
  %5184 = phi float [ %5180, %5152 ], [ %4668, %5111 ]
  %5185 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.i32 %5185, 2
  %5187 = add nsw i32 %5186, -1
  %5188 = call i32 @dx.op.binary.i32(i32 37, i32 %5187, i32 0)  ; IMax(a,b)
  %5189 = shl i32 %5148, 2
  %5190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5189, i32 undef)  ; BufferLoad(srv,index,wot)
  %5191 = extractvalue %dx.types.ResRet.i32 %5190, 0
  %5192 = lshr i32 %5191, 16
  %5193 = and i32 %5191, 65535
  %5194 = lshr i32 %5191, 21
  %5195 = lshr i32 %5193, 5
  %5196 = call i32 @dx.op.binary.i32(i32 40, i32 %5195, i32 %5188)  ; UMin(a,b)
  %5197 = icmp ugt i32 %5194, %5196
  br i1 %5197, label %5579, label %5198

; <label>:5198                                    ; preds = %5181
  br label %5199

; <label>:5199                                    ; preds = %5568, %5198
  %5200 = phi float [ %5569, %5568 ], [ 0.000000e+00, %5198 ]
  %5201 = phi float [ %5570, %5568 ], [ 0.000000e+00, %5198 ]
  %5202 = phi float [ %5571, %5568 ], [ 0.000000e+00, %5198 ]
  %5203 = phi float [ %5572, %5568 ], [ 1.000000e+00, %5198 ]
  %5204 = phi i32 [ %5576, %5568 ], [ %5194, %5198 ]
  %5205 = phi float [ %5573, %5568 ], [ 0.000000e+00, %5198 ]
  %5206 = phi float [ %5574, %5568 ], [ 0.000000e+00, %5198 ]
  %5207 = phi float [ %5575, %5568 ], [ 0.000000e+00, %5198 ]
  %5208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5209 = extractvalue %dx.types.CBufRet.i32 %5208, 2
  %5210 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5144, i32 %5209, i32 %5204)  ; UMad(a,b,c)
  %5211 = shl i32 %5210, 2
  %5212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5211, i32 undef)  ; BufferLoad(srv,index,wot)
  %5213 = extractvalue %dx.types.ResRet.i32 %5212, 0
  %5214 = shl i32 %5204, 5
  %5215 = sub nsw i32 %5192, %5214
  %5216 = call i32 @dx.op.binary.i32(i32 37, i32 %5215, i32 0)  ; IMax(a,b)
  %5217 = call i32 @dx.op.binary.i32(i32 38, i32 %5216, i32 31)  ; IMin(a,b)
  %5218 = sub nsw i32 1, %5192
  %5219 = add nsw i32 %5218, %5193
  %5220 = call i32 @dx.op.binary.i32(i32 37, i32 %5219, i32 0)  ; IMax(a,b)
  %5221 = call i32 @dx.op.binary.i32(i32 38, i32 %5220, i32 32)  ; IMin(a,b)
  %5222 = and i32 %5221, 31
  %5223 = shl i32 -1, %5222
  %5224 = xor i32 %5223, -1
  %5225 = and i32 %5217, 31
  %5226 = shl i32 %5224, %5225
  %5227 = icmp eq i32 %5221, 32
  %5228 = select i1 %5227, i32 -1, i32 %5226
  %5229 = and i32 %5228, %5213
  %5230 = icmp eq i32 %5229, 0
  br i1 %5230, label %5568, label %5231

; <label>:5231                                    ; preds = %5199
  br label %5232

; <label>:5232                                    ; preds = %5342, %5231
  %5233 = phi float [ %5343, %5342 ], [ %5200, %5231 ]
  %5234 = phi float [ %5344, %5342 ], [ %5201, %5231 ]
  %5235 = phi float [ %5345, %5342 ], [ %5202, %5231 ]
  %5236 = phi float [ %5346, %5342 ], [ %5203, %5231 ]
  %5237 = phi i32 [ %5245, %5342 ], [ %5229, %5231 ]
  %5238 = phi float [ %5347, %5342 ], [ %5205, %5231 ]
  %5239 = phi float [ %5348, %5342 ], [ %5206, %5231 ]
  %5240 = phi float [ %5349, %5342 ], [ %5207, %5231 ]
  %5241 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5237)  ; FirstbitLo(value)
  %5242 = add i32 %5241, %5214
  %5243 = and i32 %5241, 31
  %5244 = shl i32 1, %5243
  %5245 = xor i32 %5244, %5237
  %5246 = mul i32 %5242, 72
  %5247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5246, i32 undef)  ; BufferLoad(srv,index,wot)
  %5248 = extractvalue %dx.types.ResRet.f32 %5247, 0
  %5249 = extractvalue %dx.types.ResRet.f32 %5247, 1
  %5250 = extractvalue %dx.types.ResRet.f32 %5247, 2
  %5251 = add i32 %5246, 12
  %5252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5251, i32 undef)  ; BufferLoad(srv,index,wot)
  %5253 = extractvalue %dx.types.ResRet.i32 %5252, 0
  %5254 = add i32 %5246, 16
  %5255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5254, i32 undef)  ; BufferLoad(srv,index,wot)
  %5256 = extractvalue %dx.types.ResRet.f32 %5255, 0
  %5257 = extractvalue %dx.types.ResRet.f32 %5255, 1
  %5258 = extractvalue %dx.types.ResRet.f32 %5255, 2
  %5259 = add i32 %5246, 28
  %5260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5261 = extractvalue %dx.types.ResRet.f32 %5260, 0
  %5262 = add i32 %5246, 32
  %5263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.ResRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.ResRet.f32 %5263, 2
  %5267 = extractvalue %dx.types.ResRet.f32 %5263, 3
  %5268 = add i32 %5246, 48
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = add i32 %5246, 56
  %5273 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5272, i32 undef)  ; BufferLoad(srv,index,wot)
  %5274 = extractvalue %dx.types.ResRet.f32 %5273, 0
  %5275 = extractvalue %dx.types.ResRet.f32 %5273, 1
  %5276 = add i32 %5246, 64
  %5277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5276, i32 undef)  ; BufferLoad(srv,index,wot)
  %5278 = extractvalue %dx.types.ResRet.f32 %5277, 0
  %5279 = extractvalue %dx.types.ResRet.f32 %5277, 1
  %5280 = mul i32 %5242, 60
  %5281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5280, i32 undef)  ; BufferLoad(srv,index,wot)
  %5282 = extractvalue %dx.types.ResRet.f32 %5281, 0
  %5283 = extractvalue %dx.types.ResRet.f32 %5281, 1
  %5284 = extractvalue %dx.types.ResRet.f32 %5281, 2
  %5285 = add i32 %5280, 12
  %5286 = add i32 %5280, 48
  %5287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5286, i32 undef)  ; BufferLoad(srv,index,wot)
  %5288 = extractvalue %dx.types.ResRet.f32 %5287, 0
  %5289 = extractvalue %dx.types.ResRet.f32 %5287, 1
  %5290 = extractvalue %dx.types.ResRet.f32 %5287, 2
  %5291 = and i32 %5253, 32767
  %5292 = bitcast float %5248 to i32
  %5293 = icmp eq i32 %5292, -1
  %5294 = bitcast float %5249 to i32
  %5295 = and i32 %5253, 32768
  %5296 = icmp ne i32 %5295, 0
  %5297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5298 = extractvalue %dx.types.CBufRet.f32 %5297, 0
  %5299 = extractvalue %dx.types.CBufRet.f32 %5297, 1
  %5300 = extractvalue %dx.types.CBufRet.f32 %5297, 2
  %5301 = fsub fast float %5282, %5298
  %5302 = fsub fast float %5283, %5299
  %5303 = fsub fast float %5284, %5300
  %5304 = fsub fast float %143, %5301
  %5305 = fsub fast float %144, %5302
  %5306 = fsub fast float %145, %5303
  %5307 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5308 = extractvalue %dx.types.ResRet.f32 %5307, 0
  %5309 = extractvalue %dx.types.ResRet.f32 %5307, 1
  %5310 = extractvalue %dx.types.ResRet.f32 %5307, 2
  %5311 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %5308, float %5309, float %5310)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = add i32 %5280, 24
  %5313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5312, i32 undef)  ; BufferLoad(srv,index,wot)
  %5314 = extractvalue %dx.types.ResRet.f32 %5313, 0
  %5315 = extractvalue %dx.types.ResRet.f32 %5313, 1
  %5316 = extractvalue %dx.types.ResRet.f32 %5313, 2
  %5317 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %5314, float %5315, float %5316)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = add i32 %5280, 36
  %5319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.ResRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.ResRet.f32 %5319, 2
  %5323 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %5320, float %5321, float %5322)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = call float @dx.op.unary.f32(i32 6, float %5311)  ; FAbs(value)
  %5325 = call float @dx.op.unary.f32(i32 6, float %5317)  ; FAbs(value)
  %5326 = call float @dx.op.unary.f32(i32 6, float %5323)  ; FAbs(value)
  %5327 = fsub fast float %5288, %5324
  %5328 = fsub fast float %5289, %5325
  %5329 = fsub fast float %5290, %5326
  %5330 = fmul fast float %5327, %5256
  %5331 = fmul fast float %5328, %5257
  %5332 = fmul fast float %5329, %5258
  %5333 = call float @dx.op.binary.f32(i32 36, float %5331, float %5332)  ; FMin(a,b)
  %5334 = call float @dx.op.binary.f32(i32 36, float %5330, float %5333)  ; FMin(a,b)
  %5335 = call float @dx.op.unary.f32(i32 7, float %5334)  ; Saturate(value)
  %5336 = call float @dx.op.binary.f32(i32 36, float %5236, float %5335)  ; FMin(a,b)
  %5337 = uitofp i1 %5296 to float
  %5338 = fadd fast float %4440, 1.000000e+00
  %5339 = fsub fast float %5338, %5337
  %5340 = fmul fast float %5336, %5339
  %5341 = fcmp fast ogt float %5340, 0.000000e+00
  br i1 %5341, label %5351, label %5342

; <label>:5342                                    ; preds = %5493, %5232
  %5343 = phi float [ %5557, %5493 ], [ %5233, %5232 ]
  %5344 = phi float [ %5558, %5493 ], [ %5234, %5232 ]
  %5345 = phi float [ %5559, %5493 ], [ %5235, %5232 ]
  %5346 = phi float [ %5566, %5493 ], [ %5236, %5232 ]
  %5347 = phi float [ %5563, %5493 ], [ %5238, %5232 ]
  %5348 = phi float [ %5564, %5493 ], [ %5239, %5232 ]
  %5349 = phi float [ %5565, %5493 ], [ %5240, %5232 ]
  %5350 = icmp eq i32 %5237, %5244
  br i1 %5350, label %5567, label %5232

; <label>:5351                                    ; preds = %5232
  br i1 %5293, label %5409, label %5352

; <label>:5352                                    ; preds = %5351
  %5353 = fsub fast float -0.000000e+00, %5308
  %5354 = fsub fast float -0.000000e+00, %5309
  %5355 = fsub fast float -0.000000e+00, %5310
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5182, float %5183, float %5184, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = fsub fast float -0.000000e+00, %5356
  %5358 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %5353, float %5354, float %5355)  ; Dot3(ax,ay,az,bx,by,bz)
  %5359 = fadd fast float %5358, %5271
  %5360 = fadd fast float %5270, %5358
  %5361 = fsub fast float -0.000000e+00, %5360
  %5362 = fcmp ogt float %5356, -0.000000e+00
  %5363 = select i1 %5362, float %5361, float %5359
  %5364 = call float @dx.op.unary.f32(i32 6, float %5357)  ; FAbs(value)
  %5365 = fdiv fast float 1.000000e+00, %5364
  %5366 = fmul fast float %5363, %5365
  %5367 = call float @dx.op.binary.f32(i32 35, float %5366, float 0.000000e+00)  ; FMax(a,b)
  %5368 = fsub fast float -0.000000e+00, %5314
  %5369 = fsub fast float -0.000000e+00, %5315
  %5370 = fsub fast float -0.000000e+00, %5316
  %5371 = call float @dx.op.dot3.f32(i32 55, float %5182, float %5183, float %5184, float %5368, float %5369, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5372 = fsub fast float -0.000000e+00, %5371
  %5373 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %5368, float %5369, float %5370)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = fadd fast float %5373, %5275
  %5375 = fadd fast float %5274, %5373
  %5376 = fsub fast float -0.000000e+00, %5375
  %5377 = fcmp ogt float %5371, -0.000000e+00
  %5378 = select i1 %5377, float %5376, float %5374
  %5379 = call float @dx.op.unary.f32(i32 6, float %5372)  ; FAbs(value)
  %5380 = fdiv fast float 1.000000e+00, %5379
  %5381 = fmul fast float %5378, %5380
  %5382 = call float @dx.op.binary.f32(i32 35, float %5381, float 0.000000e+00)  ; FMax(a,b)
  %5383 = fsub fast float -0.000000e+00, %5320
  %5384 = fsub fast float -0.000000e+00, %5321
  %5385 = fsub fast float -0.000000e+00, %5322
  %5386 = call float @dx.op.dot3.f32(i32 55, float %5182, float %5183, float %5184, float %5383, float %5384, float %5385)  ; Dot3(ax,ay,az,bx,by,bz)
  %5387 = fsub fast float -0.000000e+00, %5386
  %5388 = call float @dx.op.dot3.f32(i32 55, float %5304, float %5305, float %5306, float %5383, float %5384, float %5385)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = fadd fast float %5388, %5279
  %5390 = fadd fast float %5278, %5388
  %5391 = fsub fast float -0.000000e+00, %5390
  %5392 = fcmp ogt float %5386, -0.000000e+00
  %5393 = select i1 %5392, float %5391, float %5389
  %5394 = call float @dx.op.unary.f32(i32 6, float %5387)  ; FAbs(value)
  %5395 = fdiv fast float 1.000000e+00, %5394
  %5396 = fmul fast float %5393, %5395
  %5397 = call float @dx.op.binary.f32(i32 35, float %5396, float 0.000000e+00)  ; FMax(a,b)
  %5398 = call float @dx.op.binary.f32(i32 36, float %5382, float %5397)  ; FMin(a,b)
  %5399 = call float @dx.op.binary.f32(i32 36, float %5367, float %5398)  ; FMin(a,b)
  %5400 = fmul fast float %5399, %5182
  %5401 = fmul fast float %5399, %5183
  %5402 = fmul fast float %5399, %5184
  %5403 = fadd fast float %5400, %143
  %5404 = fadd fast float %5401, %144
  %5405 = fadd fast float %5402, %145
  %5406 = fsub fast float %5403, %5248
  %5407 = fsub fast float %5404, %5249
  %5408 = fsub fast float %5405, %5250
  br label %5416

; <label>:5409                                    ; preds = %5351
  %5410 = fmul fast float %5182, 8.096000e+03
  %5411 = fmul fast float %5183, 8.096000e+03
  %5412 = fmul fast float %5184, 8.096000e+03
  %5413 = fadd fast float %5410, %143
  %5414 = fadd fast float %5411, %144
  %5415 = fadd fast float %5412, %145
  br label %5416

; <label>:5416                                    ; preds = %5409, %5352
  %5417 = phi float [ %5182, %5409 ], [ %5406, %5352 ]
  %5418 = phi float [ %5183, %5409 ], [ %5407, %5352 ]
  %5419 = phi float [ %5184, %5409 ], [ %5408, %5352 ]
  %5420 = phi float [ %5413, %5409 ], [ %5403, %5352 ]
  %5421 = phi float [ %5414, %5409 ], [ %5404, %5352 ]
  %5422 = phi float [ %5415, %5409 ], [ %5405, %5352 ]
  %5423 = fcmp fast olt float %5267, 1.000000e+00
  br i1 %5423, label %5424, label %5455, !dx.controlflow.hints !88

; <label>:5424                                    ; preds = %5416
  %5425 = fmul fast float %5419, %5265
  %5426 = fmul fast float %5418, %5266
  %5427 = fsub fast float %5425, %5426
  %5428 = fmul fast float %5417, %5266
  %5429 = fmul fast float %5419, %5264
  %5430 = fsub fast float %5428, %5429
  %5431 = fmul fast float %5418, %5264
  %5432 = fmul fast float %5417, %5265
  %5433 = fsub fast float %5431, %5432
  %5434 = fmul fast float %5427, 2.000000e+00
  %5435 = fmul fast float %5430, 2.000000e+00
  %5436 = fmul fast float %5433, 2.000000e+00
  %5437 = fmul fast float %5434, %5267
  %5438 = fmul fast float %5435, %5267
  %5439 = fmul fast float %5436, %5267
  %5440 = fmul fast float %5436, %5265
  %5441 = fmul fast float %5435, %5266
  %5442 = fmul fast float %5434, %5266
  %5443 = fmul fast float %5436, %5264
  %5444 = fmul fast float %5435, %5264
  %5445 = fmul fast float %5434, %5265
  %5446 = fadd fast float %5440, %5417
  %5447 = fadd fast float %5446, %5437
  %5448 = fsub fast float %5447, %5441
  %5449 = fsub fast float %5418, %5443
  %5450 = fadd fast float %5449, %5438
  %5451 = fadd fast float %5450, %5442
  %5452 = fadd fast float %5439, %5419
  %5453 = fsub fast float %5452, %5445
  %5454 = fadd fast float %5453, %5444
  br label %5455

; <label>:5455                                    ; preds = %5424, %5416
  %5456 = phi float [ %5448, %5424 ], [ %5417, %5416 ]
  %5457 = phi float [ %5451, %5424 ], [ %5418, %5416 ]
  %5458 = phi float [ %5454, %5424 ], [ %5419, %5416 ]
  br i1 %5293, label %5490, label %5459

; <label>:5459                                    ; preds = %5455
  %5460 = fmul fast float %4641, 0x400187C840000000
  %5461 = fadd fast float %5460, 0xC00EFC2120000000
  %5462 = fmul fast float %5461, %4641
  %5463 = fadd fast float %5462, 0x3FE5D16340000000
  %5464 = fmul fast float %5463, %4641
  %5465 = fadd fast float %5464, 1.000000e+00
  %5466 = call float @dx.op.unary.f32(i32 7, float %5465)  ; Saturate(value)
  %5467 = fsub fast float %5420, %143
  %5468 = fsub fast float %5421, %144
  %5469 = fsub fast float %5422, %145
  %5470 = fsub fast float %5420, %5248
  %5471 = fsub fast float %5421, %5249
  %5472 = fsub fast float %5422, %5250
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5468, float %5469, float %5467, float %5468, float %5469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5471, float %5472, float %5470, float %5471, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = fadd fast float %5474, 0x3EE4F8B580000000
  %5476 = fdiv fast float %5473, %5475
  %5477 = bitcast float %5476 to i32
  %5478 = ashr i32 %5477, 1
  %5479 = add nsw i32 %5478, 532487669
  %5480 = bitcast i32 %5479 to float
  %5481 = fmul fast float %5480, %5466
  %5482 = call float @dx.op.unary.f32(i32 7, float %5481)  ; Saturate(value)
  %5483 = fmul fast float %5482, 0x4009981AE0000000
  %5484 = fsub fast float 0x40111BBD80000000, %5483
  %5485 = fmul fast float %5484, %5482
  %5486 = fadd fast float %5485, 0xC0009F6020000000
  %5487 = fmul fast float %5486, %5482
  %5488 = fadd fast float %5487, 1.000000e+00
  %5489 = call float @dx.op.unary.f32(i32 7, float %5488)  ; Saturate(value)
  br label %5493

; <label>:5490                                    ; preds = %5455
  %5491 = icmp ne i32 %5294, -1
  %5492 = zext i1 %5491 to i32
  br label %5493

; <label>:5493                                    ; preds = %5490, %5459
  %5494 = phi float [ %4641, %5490 ], [ %5489, %5459 ]
  %5495 = phi i32 [ %5492, %5490 ], [ 0, %5459 ]
  %5496 = fmul float %5494, 5.000000e+00
  %5497 = fsub float 5.000000e+00, %5496
  %5498 = icmp ne i32 %5495, 0
  %5499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5500 = extractvalue %dx.types.CBufRet.f32 %5499, 3
  %5501 = fadd fast float %5500, %5497
  %5502 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5501)  ; FMax(a,b)
  %5503 = call float @dx.op.unary.f32(i32 6, float %5456)  ; FAbs(value)
  %5504 = call float @dx.op.unary.f32(i32 6, float %5457)  ; FAbs(value)
  %5505 = fadd fast float %5504, %5503
  %5506 = call float @dx.op.unary.f32(i32 6, float %5458)  ; FAbs(value)
  %5507 = fadd fast float %5505, %5506
  %5508 = fcmp fast oeq float %5507, 0.000000e+00
  %5509 = fdiv fast float 1.000000e+00, %5507
  %5510 = select i1 %5508, float 1.000000e+00, float %5509
  %5511 = fmul fast float %5510, %5456
  %5512 = fmul fast float %5510, %5457
  %5513 = call float @dx.op.unary.f32(i32 6, float %5512)  ; FAbs(value)
  %5514 = call float @dx.op.unary.f32(i32 6, float %5511)  ; FAbs(value)
  %5515 = fsub fast float 1.000000e+00, %5513
  %5516 = fsub fast float 1.000000e+00, %5514
  %5517 = fcmp fast oge float %5511, 0.000000e+00
  %5518 = fcmp fast oge float %5512, 0.000000e+00
  %5519 = select i1 %5517, float 1.000000e+00, float -1.000000e+00
  %5520 = select i1 %5518, float 1.000000e+00, float -1.000000e+00
  %5521 = fcmp fast ole float %5458, 0.000000e+00
  %5522 = fmul fast float %5519, %5515
  %5523 = fmul fast float %5520, %5516
  %5524 = select i1 %5521, float %5522, float %5511
  %5525 = select i1 %5521, float %5523, float %5512
  %5526 = fmul fast float %5524, 5.000000e-01
  %5527 = fmul fast float %5525, 5.000000e-01
  %5528 = fadd fast float %5526, 5.000000e-01
  %5529 = fadd fast float %5527, 5.000000e-01
  %5530 = uitofp i32 %5291 to float
  %5531 = call float @dx.op.binary.f32(i32 36, float %5502, float 3.000000e+00)  ; FMin(a,b)
  %5532 = fadd fast float %5531, 2.000000e+00
  %5533 = call float @dx.op.unary.f32(i32 21, float %5532)  ; Exp(value)
  %5534 = extractvalue %dx.types.CBufRet.f32 %5499, 1
  %5535 = fmul fast float %5534, %5533
  %5536 = fmul fast float %5535, 2.000000e+00
  %5537 = fsub fast float 1.000000e+00, %5536
  %5538 = fmul fast float %5528, %5537
  %5539 = fmul fast float %5529, %5537
  %5540 = fadd fast float %5538, %5535
  %5541 = fadd fast float %5539, %5535
  %5542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5540, float %5541, float %5530, float undef, i32 0, i32 0, i32 undef, float %5502)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5543 = extractvalue %dx.types.ResRet.f32 %5542, 0
  %5544 = extractvalue %dx.types.ResRet.f32 %5542, 1
  %5545 = extractvalue %dx.types.ResRet.f32 %5542, 2
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 3
  %5548 = fmul fast float %5547, %5261
  %5549 = call float @dx.op.binary.f32(i32 36, float %4722, float %5548)  ; FMin(a,b)
  %5550 = select i1 %5498, float %5549, float %5548
  %5551 = fmul fast float %5543, %5340
  %5552 = fmul fast float %5551, %5550
  %5553 = fmul fast float %5544, %5340
  %5554 = fmul fast float %5553, %5550
  %5555 = fmul fast float %5545, %5340
  %5556 = fmul fast float %5555, %5550
  %5557 = fadd fast float %5552, %5233
  %5558 = fadd fast float %5554, %5234
  %5559 = fadd fast float %5556, %5235
  %5560 = fmul fast float %5420, %5340
  %5561 = fmul fast float %5421, %5340
  %5562 = fmul fast float %5422, %5340
  %5563 = fadd fast float %5560, %5238
  %5564 = fadd fast float %5561, %5239
  %5565 = fadd fast float %5562, %5240
  %5566 = fsub fast float %5236, %5340
  br label %5342

; <label>:5567                                    ; preds = %5342
  br label %5568

; <label>:5568                                    ; preds = %5567, %5199
  %5569 = phi float [ %5200, %5199 ], [ %5343, %5567 ]
  %5570 = phi float [ %5201, %5199 ], [ %5344, %5567 ]
  %5571 = phi float [ %5202, %5199 ], [ %5345, %5567 ]
  %5572 = phi float [ %5203, %5199 ], [ %5346, %5567 ]
  %5573 = phi float [ %5205, %5199 ], [ %5347, %5567 ]
  %5574 = phi float [ %5206, %5199 ], [ %5348, %5567 ]
  %5575 = phi float [ %5207, %5199 ], [ %5349, %5567 ]
  %5576 = add i32 %5204, 1
  %5577 = icmp ugt i32 %5576, %5196
  br i1 %5577, label %5578, label %5199, !llvm.loop !89

; <label>:5578                                    ; preds = %5568
  br label %5579

; <label>:5579                                    ; preds = %5578, %5181
  %5580 = phi float [ 0.000000e+00, %5181 ], [ %5569, %5578 ]
  %5581 = phi float [ 0.000000e+00, %5181 ], [ %5570, %5578 ]
  %5582 = phi float [ 0.000000e+00, %5181 ], [ %5571, %5578 ]
  %5583 = phi float [ 0.000000e+00, %5181 ], [ %5573, %5578 ]
  %5584 = phi float [ 0.000000e+00, %5181 ], [ %5574, %5578 ]
  %5585 = phi float [ 0.000000e+00, %5181 ], [ %5575, %5578 ]
  %5586 = call float @dx.op.dot3.f32(i32 55, float %5580, float %5581, float %5582, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5587 = select i1 %185, float 0.000000e+00, float %5580
  %5588 = select i1 %185, float %5586, float %5581
  %5589 = select i1 %185, float 0.000000e+00, float %5582
  %5590 = fcmp fast olt float %5105, 0.000000e+00
  %5591 = call float @dx.op.unary.f32(i32 6, float %5105)  ; FAbs(value)
  %5592 = fmul fast float %5591, %5106
  %5593 = fmul fast float %5591, %5107
  %5594 = fmul fast float %5591, %5108
  %5595 = select i1 %5590, float %5106, float %5592
  %5596 = select i1 %5590, float %5107, float %5593
  %5597 = select i1 %5590, float %5108, float %5594
  %5598 = fsub fast float 1.000000e+00, %5591
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = fmul fast float %5599, %5587
  %5601 = fmul fast float %5599, %5588
  %5602 = fmul fast float %5599, %5589
  %5603 = fadd fast float %5595, %5600
  %5604 = fadd fast float %5596, %5601
  %5605 = fadd fast float %5597, %5602
  %5606 = fcmp fast une float %4855, 0.000000e+00
  br i1 %5606, label %5707, label %5607

; <label>:5607                                    ; preds = %5579
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.CBufRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.CBufRet.f32 %5608, 2
  %5612 = extractvalue %dx.types.CBufRet.f32 %5608, 3
  %5613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.f32 %5613, 0
  %5615 = extractvalue %dx.types.CBufRet.f32 %5613, 1
  %5616 = extractvalue %dx.types.CBufRet.f32 %5613, 2
  %5617 = extractvalue %dx.types.CBufRet.f32 %5613, 3
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5621 = extractvalue %dx.types.CBufRet.f32 %5618, 2
  %5622 = extractvalue %dx.types.CBufRet.f32 %5618, 3
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5619, float %5620, float %5621, float %4666, float %4667, float %4668)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = call float @dx.op.dot3.f32(i32 55, float %5583, float %5584, float %5585, float %5619, float %5620, float %5621)  ; Dot3(ax,ay,az,bx,by,bz)
  %5625 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %5619, float %5620, float %5621)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = fadd fast float %4641, -1.000000e+00
  %5627 = fsub fast float %5624, %5625
  %5628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5629 = extractvalue %dx.types.CBufRet.f32 %5628, 2
  %5630 = fmul fast float %5629, %5624
  %5631 = fdiv fast float 1.600000e+02, %5630
  %5632 = fmul fast float %5626, %5626
  %5633 = fmul fast float %5632, 0xBFB5B17960000000
  %5634 = fmul fast float %5633, %5627
  %5635 = fmul fast float %5634, %5631
  %5636 = call float @dx.op.unary.f32(i32 21, float %5635)  ; Exp(value)
  %5637 = fmul fast float %5636, 0x3FF04B2960000000
  %5638 = fsub fast float 0x3FF04B2960000000, %5637
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  %5640 = fmul fast float %5639, 4.000000e+00
  %5641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5642 = extractvalue %dx.types.CBufRet.f32 %5641, 0
  %5643 = extractvalue %dx.types.CBufRet.f32 %5641, 1
  %5644 = extractvalue %dx.types.CBufRet.f32 %5641, 2
  %5645 = fadd fast float %5642, %5583
  %5646 = fadd fast float %5643, %5584
  %5647 = fadd fast float %5644, %5585
  %5648 = fmul fast float %5645, %5609
  %5649 = call float @dx.op.tertiary.f32(i32 46, float %5646, float %5610, float %5648)  ; FMad(a,b,c)
  %5650 = call float @dx.op.tertiary.f32(i32 46, float %5647, float %5611, float %5649)  ; FMad(a,b,c)
  %5651 = fadd fast float %5650, %5612
  %5652 = fmul fast float %5645, %5614
  %5653 = call float @dx.op.tertiary.f32(i32 46, float %5646, float %5615, float %5652)  ; FMad(a,b,c)
  %5654 = call float @dx.op.tertiary.f32(i32 46, float %5647, float %5616, float %5653)  ; FMad(a,b,c)
  %5655 = fadd fast float %5654, %5617
  %5656 = fmul fast float %5645, %5619
  %5657 = call float @dx.op.tertiary.f32(i32 46, float %5646, float %5620, float %5656)  ; FMad(a,b,c)
  %5658 = call float @dx.op.tertiary.f32(i32 46, float %5647, float %5621, float %5657)  ; FMad(a,b,c)
  %5659 = fadd fast float %5658, %5622
  %5660 = fdiv fast float %5651, %5659
  %5661 = fdiv fast float %5655, %5659
  %5662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5663 = extractvalue %dx.types.CBufRet.f32 %5662, 0
  %5664 = extractvalue %dx.types.CBufRet.f32 %5662, 1
  %5665 = fmul fast float %5663, %5660
  %5666 = fmul fast float %5664, %5661
  %5667 = extractvalue %dx.types.CBufRet.f32 %5662, 2
  %5668 = extractvalue %dx.types.CBufRet.f32 %5662, 3
  %5669 = fadd fast float %5665, %5667
  %5670 = fadd fast float %5666, %5668
  %5671 = fmul fast float %5623, 8.000000e+00
  %5672 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5673 = fmul fast float %5669, 2.000000e+00
  %5674 = fmul fast float %5670, 2.000000e+00
  %5675 = fadd fast float %5673, -1.000000e+00
  %5676 = fadd fast float %5674, -1.000000e+00
  %5677 = fmul fast float %5675, %5675
  %5678 = fsub fast float 1.000000e+00, %5677
  %5679 = call float @dx.op.unary.f32(i32 7, float %5678)  ; Saturate(value)
  %5680 = fmul fast float %5676, %5676
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = call float @dx.op.unary.f32(i32 7, float %5681)  ; Saturate(value)
  %5683 = fmul fast float %4855, %5679
  %5684 = fmul fast float %5683, %5682
  %5685 = call float @dx.op.unary.f32(i32 7, float %5684)  ; Saturate(value)
  %5686 = fmul fast float %5685, %5672
  %5687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5669, float %5670, float undef, float undef, i32 0, i32 0, i32 undef, float %5640)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5688 = extractvalue %dx.types.ResRet.f32 %5687, 0
  %5689 = extractvalue %dx.types.ResRet.f32 %5687, 1
  %5690 = extractvalue %dx.types.ResRet.f32 %5687, 2
  %5691 = select i1 %185, float 0.000000e+00, float %5689
  %5692 = select i1 %185, float 0.000000e+00, float %5690
  %5693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5694 = extractvalue %dx.types.CBufRet.f32 %5693, 2
  %5695 = fmul fast float %5694, %5688
  %5696 = fmul fast float %5691, %5694
  %5697 = fmul fast float %5692, %5694
  %5698 = fsub fast float %5695, %5587
  %5699 = fsub fast float %5696, %5588
  %5700 = fsub fast float %5697, %5589
  %5701 = fmul fast float %5698, %5686
  %5702 = fmul fast float %5699, %5686
  %5703 = fmul fast float %5700, %5686
  %5704 = fadd fast float %5701, %5587
  %5705 = fadd fast float %5702, %5588
  %5706 = fadd fast float %5703, %5589
  br label %5707

; <label>:5707                                    ; preds = %5607, %5579, %5104, %4828
  %5708 = phi float [ %5106, %5104 ], [ %5704, %5607 ], [ %5603, %5579 ], [ %4781, %4828 ]
  %5709 = phi float [ %5107, %5104 ], [ %5705, %5607 ], [ %5604, %5579 ], [ %4782, %4828 ]
  %5710 = phi float [ %5108, %5104 ], [ %5706, %5607 ], [ %5605, %5579 ], [ %4783, %4828 ]
  %5711 = fmul fast float %143, %143
  %5712 = fmul fast float %144, %144
  %5713 = fadd fast float %5712, %5711
  %5714 = fmul fast float %145, %145
  %5715 = fadd fast float %5713, %5714
  %5716 = call float @dx.op.unary.f32(i32 24, float %5715)  ; Sqrt(value)
  %5717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.f32 %5717, 1
  %5719 = fsub fast float %5716, %5718
  %5720 = extractvalue %dx.types.CBufRet.f32 %5717, 2
  %5721 = fmul fast float %5719, %5720
  %5722 = call float @dx.op.unary.f32(i32 7, float %5721)  ; Saturate(value)
  %5723 = extractvalue %dx.types.CBufRet.f32 %5717, 0
  %5724 = extractvalue %dx.types.CBufRet.f32 %5717, 3
  %5725 = fmul fast float %5722, %46
  %5726 = fmul fast float %5725, %5723
  %5727 = fmul fast float %5725, %5724
  %5728 = fadd fast float %5727, 1.000000e+00
  %5729 = fmul fast float %4834, %4785
  %5730 = fmul fast float %5729, %5728
  %5731 = fmul fast float %4834, %4786
  %5732 = fmul fast float %5731, %5728
  %5733 = fmul fast float %4834, %4787
  %5734 = fmul fast float %5733, %5728
  %5735 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5736 = fcmp fast ogt float %5735, 0x3E7FF19E20000000
  %5737 = fdiv fast float 1.000000e+00, %5735
  %5738 = select i1 %5736, float %5737, float 0.000000e+00
  %5739 = fmul fast float %5738, %4635
  %5740 = fmul fast float %5738, %4636
  %5741 = fmul fast float %5738, %4637
  %5742 = fadd fast float %5739, -1.000000e+00
  %5743 = fadd fast float %5740, -1.000000e+00
  %5744 = fadd fast float %5741, -1.000000e+00
  %5745 = fmul fast float %5742, 5.000000e-01
  %5746 = fmul fast float %5743, 5.000000e-01
  %5747 = fmul fast float %5744, 5.000000e-01
  %5748 = fadd fast float %5745, 1.000000e+00
  %5749 = fadd fast float %5746, 1.000000e+00
  %5750 = fadd fast float %5747, 1.000000e+00
  %5751 = fadd fast float %5726, %4031
  %5752 = fmul fast float %5708, %4829
  %5753 = fmul fast float %5709, %4830
  %5754 = fmul fast float %5710, %4831
  %5755 = fsub fast float 1.000000e+00, %4660
  %5756 = bitcast float %5755 to i32
  %5757 = sitofp i32 %5756 to float
  %5758 = fmul fast float %5757, 5.000000e+00
  %5759 = fadd fast float %5758, 0xC1EFBF8940000000
  %5760 = fptosi float %5759 to i32
  %5761 = bitcast i32 %5760 to float
  %5762 = fmul fast float %5751, %5761
  %5763 = fmul fast float %5729, %5762
  %5764 = fmul fast float %5763, %5748
  %5765 = fmul fast float %5731, %5762
  %5766 = fmul fast float %5765, %5749
  %5767 = fmul fast float %5733, %5762
  %5768 = fmul fast float %5767, %5750
  %5769 = fmul fast float %5730, %4027
  %5770 = fmul fast float %5732, %4027
  %5771 = fmul fast float %5734, %4027
  %5772 = fadd fast float %5752, %4023
  %5773 = fadd fast float %5772, %5764
  %5774 = fmul fast float %5773, %4027
  %5775 = fadd fast float %5753, %4024
  %5776 = fadd fast float %5775, %5766
  %5777 = fmul fast float %5776, %4027
  %5778 = fadd fast float %5754, %4025
  %5779 = fadd fast float %5778, %5768
  %5780 = fmul fast float %5779, %4027
  %5781 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5782 = extractvalue %dx.types.CBufRet.f32 %5781, 3
  %5783 = fcmp fast oeq float %5782, 0.000000e+00
  br i1 %5783, label %6002, label %5784

; <label>:5784                                    ; preds = %5707
  %5785 = extractvalue %dx.types.CBufRet.f32 %5781, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5781, 1
  %5787 = extractvalue %dx.types.CBufRet.f32 %5781, 2
  %5788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.f32 %5788, 0
  %5790 = extractvalue %dx.types.CBufRet.f32 %5788, 1
  %5791 = extractvalue %dx.types.CBufRet.f32 %5788, 2
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5794 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5795 = call float @dx.op.dot3.f32(i32 55, float %5789, float %5790, float %5791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5796 = select i1 %185, float %5793, float %5789
  %5797 = select i1 %185, float %5795, float %5790
  %5798 = select i1 %185, float %5794, float %5791
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5801 = fcmp fast une float %5800, 0.000000e+00
  br i1 %5801, label %5802, label %5819

; <label>:5802                                    ; preds = %5784
  %5803 = fptoui float %80 to i32
  %5804 = fptoui float %81 to i32
  %5805 = lshr i32 %5803, 4
  %5806 = lshr i32 %5804, 4
  %5807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5808 = extractvalue %dx.types.CBufRet.f32 %5807, 0
  %5809 = fptoui float %5808 to i32
  %5810 = add i32 %5809, 15
  %5811 = lshr i32 %5810, 4
  %5812 = mul i32 %5811, %5806
  %5813 = add i32 %5812, %5805
  %5814 = shl i32 %5813, 3
  %5815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5814, i32 undef)  ; BufferLoad(srv,index,wot)
  %5816 = extractvalue %dx.types.ResRet.i32 %5815, 0
  %5817 = and i32 %5816, -268435456
  %5818 = icmp eq i32 %5817, -1342177280
  br i1 %5818, label %5824, label %5819

; <label>:5819                                    ; preds = %5802, %5784
  %5820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4646, float %4647, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5821 = extractvalue %dx.types.ResRet.f32 %5820, 0
  %5822 = extractvalue %dx.types.ResRet.f32 %5820, 1
  %5823 = extractvalue %dx.types.ResRet.f32 %5820, 2
  br label %5824

; <label>:5824                                    ; preds = %5819, %5802
  %5825 = phi float [ %5821, %5819 ], [ 0.000000e+00, %5802 ]
  %5826 = phi float [ %5822, %5819 ], [ 0.000000e+00, %5802 ]
  %5827 = phi float [ %5823, %5819 ], [ 0.000000e+00, %5802 ]
  %5828 = call float @dx.op.binary.f32(i32 36, float %5826, float %5827)  ; FMin(a,b)
  %5829 = call float @dx.op.binary.f32(i32 36, float %5825, float %5828)  ; FMin(a,b)
  %5830 = fcmp fast ogt float %5829, 0.000000e+00
  br i1 %5830, label %5831, label %6002, !dx.controlflow.hints !91

; <label>:5831                                    ; preds = %5824
  %5832 = fmul fast float %5825, %5796
  %5833 = fmul fast float %5826, %5797
  %5834 = fmul fast float %5827, %5798
  %5835 = fsub fast float %5785, %4631
  %5836 = fsub fast float %5786, %4630
  %5837 = fsub fast float %5787, %4629
  %5838 = call float @dx.op.dot3.f32(i32 55, float %5835, float %5836, float %5837, float %5835, float %5836, float %5837)  ; Dot3(ax,ay,az,bx,by,bz)
  %5839 = call float @dx.op.unary.f32(i32 25, float %5838)  ; Rsqrt(value)
  %5840 = fmul fast float %5839, %5835
  %5841 = fmul fast float %5839, %5836
  %5842 = fmul fast float %5839, %5837
  %5843 = call float @dx.op.dot3.f32(i32 55, float %5785, float %5786, float %5787, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5844 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4627, float %4626, float %5840, float %5841, float %5842)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = call float @dx.op.unary.f32(i32 7, float %5843)  ; Saturate(value)
  %5846 = fmul fast float %5845, %5845
  %5847 = fmul fast float %5846, %4685
  %5848 = call float @dx.op.unary.f32(i32 7, float %5847)  ; Saturate(value)
  %5849 = fmul fast float %5848, %5845
  %5850 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %5840, float %5841, float %5842)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = fmul fast float %5850, %5850
  %5852 = call float @dx.op.unary.f32(i32 6, float %5843)  ; FAbs(value)
  %5853 = fsub fast float 1.000000e+00, %4678
  %5854 = fmul fast float %4660, %4660
  %5855 = fmul fast float %5854, %5853
  %5856 = fadd fast float %5855, %4678
  %5857 = bitcast float %5856 to i32
  %5858 = ashr i32 %5857, 1
  %5859 = add nsw i32 %5858, 532487669
  %5860 = bitcast i32 %5859 to float
  %5861 = fadd fast float %5860, %4660
  %5862 = fmul fast float %4678, %5851
  %5863 = fsub fast float 1.000000e+00, %5851
  %5864 = fadd fast float %5863, %5862
  %5865 = fmul fast float %5852, %5852
  %5866 = fmul fast float %5865, %5853
  %5867 = fadd fast float %5866, %4678
  %5868 = bitcast float %5867 to i32
  %5869 = ashr i32 %5868, 1
  %5870 = add nsw i32 %5869, 532487669
  %5871 = bitcast i32 %5870 to float
  %5872 = fadd fast float %5871, %5852
  %5873 = fmul fast float %5864, %5864
  %5874 = fmul fast float %5873, %5861
  %5875 = fmul fast float %5874, %5872
  %5876 = fdiv fast float 0x3FF0A00000000000, %5875
  %5877 = fmul fast float %5876, %4678
  %5878 = call float @dx.op.unary.f32(i32 6, float %5844)  ; FAbs(value)
  %5879 = fsub fast float 1.000000e+00, %5878
  %5880 = bitcast float %5879 to i32
  %5881 = sitofp i32 %5880 to float
  %5882 = fmul fast float %5881, 5.000000e+00
  %5883 = fadd fast float %5882, 0xC1EFBF8940000000
  %5884 = fptosi float %5883 to i32
  %5885 = bitcast i32 %5884 to float
  %5886 = fsub fast float 1.000000e+00, %4632
  %5887 = fsub fast float 1.000000e+00, %4633
  %5888 = fsub fast float 1.000000e+00, %4658
  %5889 = fmul fast float %5885, %5886
  %5890 = fmul fast float %5885, %5887
  %5891 = fmul fast float %5885, %5888
  %5892 = fadd fast float %5889, %4632
  %5893 = fadd fast float %5890, %4633
  %5894 = fadd fast float %5891, %4658
  br i1 %4801, label %5895, label %5918

; <label>:5895                                    ; preds = %5831
  %5896 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4030, float %5878, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = extractvalue %dx.types.ResRet.f32 %5896, 1
  %5899 = extractvalue %dx.types.ResRet.f32 %5896, 2
  %5900 = fadd fast float %5897, -5.000000e-01
  %5901 = fadd fast float %5898, -5.000000e-01
  %5902 = fadd fast float %5899, -5.000000e-01
  %5903 = fmul fast float %4632, 4.000000e+00
  %5904 = fmul fast float %5903, %5886
  %5905 = fmul fast float %5904, %5900
  %5906 = fmul fast float %4633, 4.000000e+00
  %5907 = fmul fast float %5906, %5887
  %5908 = fmul fast float %5907, %5901
  %5909 = fmul fast float %4658, 4.000000e+00
  %5910 = fmul fast float %5909, %5888
  %5911 = fmul fast float %5910, %5902
  %5912 = fadd fast float %5905, %5892
  %5913 = fadd fast float %5908, %5893
  %5914 = fadd fast float %5911, %5894
  %5915 = call float @dx.op.unary.f32(i32 7, float %5912)  ; Saturate(value)
  %5916 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5917 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  br label %5918

; <label>:5918                                    ; preds = %5895, %5831
  %5919 = phi float [ %5915, %5895 ], [ %5892, %5831 ]
  %5920 = phi float [ %5916, %5895 ], [ %5893, %5831 ]
  %5921 = phi float [ %5917, %5895 ], [ %5894, %5831 ]
  %5922 = fmul fast float %5843, 9.843750e-01
  %5923 = fadd fast float %5922, 7.812500e-03
  %5924 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5923, float %4791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5925 = extractvalue %dx.types.ResRet.f32 %5924, 2
  %5926 = extractvalue %dx.types.ResRet.f32 %5924, 3
  %5927 = fmul fast float %5925, %4632
  %5928 = fmul fast float %5925, %4633
  %5929 = fmul fast float %5925, %4658
  %5930 = fadd fast float %5927, %5926
  %5931 = fadd fast float %5928, %5926
  %5932 = fadd fast float %5929, %5926
  br i1 %4801, label %5933, label %5956

; <label>:5933                                    ; preds = %5918
  %5934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4030, float %5843, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5935 = extractvalue %dx.types.ResRet.f32 %5934, 0
  %5936 = extractvalue %dx.types.ResRet.f32 %5934, 1
  %5937 = extractvalue %dx.types.ResRet.f32 %5934, 2
  %5938 = fadd fast float %5935, -5.000000e-01
  %5939 = fadd fast float %5936, -5.000000e-01
  %5940 = fadd fast float %5937, -5.000000e-01
  %5941 = fmul fast float %4632, 4.000000e+00
  %5942 = fmul fast float %5941, %5886
  %5943 = fmul fast float %5942, %5938
  %5944 = fmul fast float %4633, 4.000000e+00
  %5945 = fmul fast float %5944, %5887
  %5946 = fmul fast float %5945, %5939
  %5947 = fmul fast float %4658, 4.000000e+00
  %5948 = fmul fast float %5947, %5888
  %5949 = fmul fast float %5948, %5940
  %5950 = fadd fast float %5943, %5930
  %5951 = fadd fast float %5946, %5931
  %5952 = fadd fast float %5949, %5932
  %5953 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5954 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  %5955 = call float @dx.op.unary.f32(i32 7, float %5952)  ; Saturate(value)
  br label %5956

; <label>:5956                                    ; preds = %5933, %5918
  %5957 = phi float [ %5953, %5933 ], [ %5930, %5918 ]
  %5958 = phi float [ %5954, %5933 ], [ %5931, %5918 ]
  %5959 = phi float [ %5955, %5933 ], [ %5932, %5918 ]
  %5960 = call float @dx.op.binary.f32(i32 35, float %5958, float %5959)  ; FMax(a,b)
  %5961 = call float @dx.op.binary.f32(i32 35, float %5957, float %5960)  ; FMax(a,b)
  %5962 = fsub fast float 1.000000e+00, %5961
  %5963 = fmul fast float %5919, %5877
  %5964 = fmul fast float %5920, %5877
  %5965 = fmul fast float %5921, %5877
  %5966 = fsub fast float 1.000000e+00, %5844
  %5967 = bitcast float %5966 to i32
  %5968 = sitofp i32 %5967 to float
  %5969 = fmul fast float %5968, 5.000000e+00
  %5970 = fadd fast float %5969, 0xC1EFBF8940000000
  %5971 = fptosi float %5970 to i32
  %5972 = bitcast i32 %5971 to float
  %5973 = fmul fast float %5972, %4031
  %5974 = fmul fast float %5962, %5973
  %5975 = fmul fast float %5974, %5748
  %5976 = fmul fast float %5974, %5749
  %5977 = fmul fast float %5974, %5750
  %5978 = fadd fast float %5975, %5963
  %5979 = fadd fast float %5976, %5964
  %5980 = fadd fast float %5977, %5965
  %5981 = fmul fast float %5849, %5832
  %5982 = fmul fast float %5981, %5962
  %5983 = fmul fast float %5849, %5833
  %5984 = fmul fast float %5983, %5962
  %5985 = fmul fast float %5849, %5834
  %5986 = fmul fast float %5985, %5962
  %5987 = fmul fast float %5981, %5978
  %5988 = fmul fast float %5983, %5979
  %5989 = fmul fast float %5985, %5980
  %5990 = fadd fast float %5982, %5730
  %5991 = fmul fast float %5990, %4027
  %5992 = fadd fast float %5984, %5732
  %5993 = fmul fast float %5992, %4027
  %5994 = fadd fast float %5986, %5734
  %5995 = fmul fast float %5994, %4027
  %5996 = fadd fast float %5987, %5773
  %5997 = fmul fast float %5996, %4027
  %5998 = fadd fast float %5988, %5776
  %5999 = fmul fast float %5998, %4027
  %6000 = fadd fast float %5989, %5779
  %6001 = fmul fast float %6000, %4027
  br label %6002

; <label>:6002                                    ; preds = %5956, %5824, %5707
  %6003 = phi float [ %5774, %5707 ], [ %5774, %5824 ], [ %5997, %5956 ]
  %6004 = phi float [ %5777, %5707 ], [ %5777, %5824 ], [ %5999, %5956 ]
  %6005 = phi float [ %5780, %5707 ], [ %5780, %5824 ], [ %6001, %5956 ]
  %6006 = phi float [ %5769, %5707 ], [ %5769, %5824 ], [ %5991, %5956 ]
  %6007 = phi float [ %5770, %5707 ], [ %5770, %5824 ], [ %5993, %5956 ]
  %6008 = phi float [ %5771, %5707 ], [ %5771, %5824 ], [ %5995, %5956 ]
  %6009 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6010 = extractvalue %dx.types.CBufRet.i32 %6009, 0
  %6011 = icmp eq i32 %6010, 0
  br i1 %6011, label %6442, label %6012

; <label>:6012                                    ; preds = %6002
  %6013 = fptoui float %80 to i32
  %6014 = fptoui float %81 to i32
  %6015 = lshr i32 %6013, 4
  %6016 = lshr i32 %6014, 4
  %6017 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6018 = extractvalue %dx.types.CBufRet.i32 %6017, 0
  %6019 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6016, i32 %6018, i32 %6015)  ; UMad(a,b,c)
  %6020 = add nsw i32 %6010, -1
  %6021 = call i32 @dx.op.binary.i32(i32 37, i32 %6020, i32 0)  ; IMax(a,b)
  %6022 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %6023 = fptoui float %6022 to i32
  %6024 = lshr i32 %6023, 5
  %6025 = call i32 @dx.op.binary.i32(i32 40, i32 %6024, i32 8191)  ; UMin(a,b)
  %6026 = shl i32 %6025, 2
  %6027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6026, i32 undef)  ; BufferLoad(srv,index,wot)
  %6028 = extractvalue %dx.types.ResRet.i32 %6027, 0
  %6029 = lshr i32 %6028, 16
  %6030 = and i32 %6028, 65535
  %6031 = lshr i32 %6028, 21
  %6032 = lshr i32 %6030, 5
  %6033 = call i32 @dx.op.binary.i32(i32 40, i32 %6032, i32 %6021)  ; UMin(a,b)
  %6034 = icmp ugt i32 %6031, %6033
  br i1 %6034, label %6442, label %6035

; <label>:6035                                    ; preds = %6012
  br label %6036

; <label>:6036                                    ; preds = %6432, %6035
  %6037 = phi i32 [ %6439, %6432 ], [ %6031, %6035 ]
  %6038 = phi float [ %6433, %6432 ], [ %6003, %6035 ]
  %6039 = phi float [ %6434, %6432 ], [ %6004, %6035 ]
  %6040 = phi float [ %6435, %6432 ], [ %6005, %6035 ]
  %6041 = phi float [ %6436, %6432 ], [ %6006, %6035 ]
  %6042 = phi float [ %6437, %6432 ], [ %6007, %6035 ]
  %6043 = phi float [ %6438, %6432 ], [ %6008, %6035 ]
  %6044 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6045 = extractvalue %dx.types.CBufRet.i32 %6044, 0
  %6046 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6019, i32 %6045, i32 %6037)  ; UMad(a,b,c)
  %6047 = shl i32 %6046, 2
  %6048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6047, i32 undef)  ; BufferLoad(srv,index,wot)
  %6049 = extractvalue %dx.types.ResRet.i32 %6048, 0
  %6050 = shl i32 %6037, 5
  %6051 = sub nsw i32 %6029, %6050
  %6052 = call i32 @dx.op.binary.i32(i32 37, i32 %6051, i32 0)  ; IMax(a,b)
  %6053 = call i32 @dx.op.binary.i32(i32 38, i32 %6052, i32 31)  ; IMin(a,b)
  %6054 = sub nsw i32 1, %6029
  %6055 = add nsw i32 %6054, %6030
  %6056 = call i32 @dx.op.binary.i32(i32 37, i32 %6055, i32 0)  ; IMax(a,b)
  %6057 = call i32 @dx.op.binary.i32(i32 38, i32 %6056, i32 32)  ; IMin(a,b)
  %6058 = and i32 %6057, 31
  %6059 = shl i32 -1, %6058
  %6060 = xor i32 %6059, -1
  %6061 = and i32 %6053, 31
  %6062 = shl i32 %6060, %6061
  %6063 = icmp eq i32 %6057, 32
  %6064 = select i1 %6063, i32 -1, i32 %6062
  %6065 = and i32 %6064, %6049
  %6066 = icmp eq i32 %6065, 0
  br i1 %6066, label %6432, label %6067

; <label>:6067                                    ; preds = %6036
  br label %6068

; <label>:6068                                    ; preds = %6148, %6067
  %6069 = phi i32 [ %6080, %6148 ], [ %6065, %6067 ]
  %6070 = phi float [ %6149, %6148 ], [ %6038, %6067 ]
  %6071 = phi float [ %6150, %6148 ], [ %6039, %6067 ]
  %6072 = phi float [ %6151, %6148 ], [ %6040, %6067 ]
  %6073 = phi float [ %6152, %6148 ], [ %6041, %6067 ]
  %6074 = phi float [ %6153, %6148 ], [ %6042, %6067 ]
  %6075 = phi float [ %6154, %6148 ], [ %6043, %6067 ]
  %6076 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6069)  ; FirstbitLo(value)
  %6077 = add i32 %6076, %6050
  %6078 = and i32 %6076, 31
  %6079 = shl i32 1, %6078
  %6080 = xor i32 %6079, %6069
  %6081 = mul i32 %6077, 112
  %6082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6081, i32 undef)  ; BufferLoad(srv,index,wot)
  %6083 = extractvalue %dx.types.ResRet.f32 %6082, 0
  %6084 = extractvalue %dx.types.ResRet.f32 %6082, 1
  %6085 = extractvalue %dx.types.ResRet.f32 %6082, 2
  %6086 = or i32 %6081, 12
  %6087 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6086, i32 undef)  ; BufferLoad(srv,index,wot)
  %6088 = extractvalue %dx.types.ResRet.f32 %6087, 0
  %6089 = add i32 %6081, 44
  %6090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6089, i32 undef)  ; BufferLoad(srv,index,wot)
  %6091 = extractvalue %dx.types.ResRet.f32 %6090, 0
  %6092 = add i32 %6081, 48
  %6093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6092, i32 undef)  ; BufferLoad(srv,index,wot)
  %6094 = extractvalue %dx.types.ResRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.f32 %6093, 1
  %6096 = extractvalue %dx.types.ResRet.f32 %6093, 2
  %6097 = add i32 %6081, 80
  %6098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6097, i32 undef)  ; BufferLoad(srv,index,wot)
  %6099 = extractvalue %dx.types.ResRet.f32 %6098, 1
  %6100 = extractvalue %dx.types.ResRet.f32 %6098, 2
  %6101 = call float @dx.op.dot3.f32(i32 55, float %6083, float %6084, float %6085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6102 = select i1 %185, float %6099, float %6083
  %6103 = select i1 %185, float %6101, float %6084
  %6104 = select i1 %185, float %6100, float %6085
  %6105 = fsub fast float %6094, %143
  %6106 = fsub fast float %6095, %144
  %6107 = fsub fast float %6096, %145
  %6108 = call float @dx.op.dot3.f32(i32 55, float %6105, float %6106, float %6107, float %6105, float %6106, float %6107)  ; Dot3(ax,ay,az,bx,by,bz)
  %6109 = call float @dx.op.unary.f32(i32 24, float %6108)  ; Sqrt(value)
  %6110 = fdiv fast float 1.000000e+00, %6109
  %6111 = fmul fast float %6110, %6105
  %6112 = fmul fast float %6110, %6106
  %6113 = fmul fast float %6110, %6107
  %6114 = fadd fast float %6109, %6088
  %6115 = fdiv fast float 1.000000e+00, %6114
  %6116 = fmul float %6091, %6115
  %6117 = fmul float %6116, %6116
  %6118 = call float @dx.op.unary.f32(i32 7, float %6117)  ; Saturate(value)
  %6119 = and i32 %6079, %6065
  %6120 = icmp eq i32 %6119, 0
  br i1 %6120, label %6143, label %6121, !dx.controlflow.hints !92

; <label>:6121                                    ; preds = %6068
  %6122 = lshr i32 %6013, 5
  %6123 = lshr i32 %6014, 5
  %6124 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6122, i32 %6123, i32 %6077, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6125 = extractvalue %dx.types.ResRet.i32 %6124, 0
  %6126 = and i32 %6125, 3
  %6127 = icmp eq i32 %6126, 0
  %6128 = select i1 %6127, float 1.000000e+00, float 0.000000e+00
  %6129 = icmp eq i32 %6126, 3
  br i1 %6129, label %6130, label %6143

; <label>:6130                                    ; preds = %6121
  %6131 = lshr i32 %6125, 10
  %6132 = and i32 %6131, 8160
  %6133 = and i32 %6014, 31
  %6134 = or i32 %6132, %6133
  %6135 = lshr i32 %6125, 1
  %6136 = and i32 %6135, 16352
  %6137 = and i32 %6013, 31
  %6138 = or i32 %6136, %6137
  %6139 = lshr i32 %6125, 23
  %6140 = and i32 %6139, 255
  %6141 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6138, i32 %6134, i32 %6140, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6142 = extractvalue %dx.types.ResRet.f32 %6141, 0
  br label %6143

; <label>:6143                                    ; preds = %6130, %6121, %6068
  %6144 = phi float [ %6142, %6130 ], [ %6128, %6121 ], [ 0.000000e+00, %6068 ]
  %6145 = call float @dx.op.binary.f32(i32 36, float %6144, float %6144)  ; FMin(a,b)
  %6146 = call float @dx.op.binary.f32(i32 36, float %6144, float %6145)  ; FMin(a,b)
  %6147 = fcmp fast ogt float %6146, 0.000000e+00
  br i1 %6147, label %6156, label %6148, !dx.controlflow.hints !93

; <label>:6148                                    ; preds = %6388, %6143
  %6149 = phi float [ %6070, %6143 ], [ %6428, %6388 ]
  %6150 = phi float [ %6071, %6143 ], [ %6429, %6388 ]
  %6151 = phi float [ %6072, %6143 ], [ %6430, %6388 ]
  %6152 = phi float [ %6073, %6143 ], [ %6422, %6388 ]
  %6153 = phi float [ %6074, %6143 ], [ %6423, %6388 ]
  %6154 = phi float [ %6075, %6143 ], [ %6424, %6388 ]
  %6155 = icmp eq i32 %6069, %6079
  br i1 %6155, label %6431, label %6068

; <label>:6156                                    ; preds = %6143
  %6157 = fmul fast float %6144, %6102
  %6158 = fmul fast float %6144, %6103
  %6159 = fmul fast float %6144, %6104
  %6160 = fsub fast float %6096, %4431
  %6161 = fcmp fast ogt float %6160, 0.000000e+00
  %6162 = fsub fast float %145, %4431
  %6163 = fcmp fast ogt float %6162, 0.000000e+00
  %6164 = xor i1 %6163, %6161
  %6165 = fsub fast float %4431, %6096
  %6166 = fmul fast float %6165, 2.000000e+00
  %6167 = fadd fast float %6166, %6096
  %6168 = select i1 %6164, float %6096, float %6167
  %6169 = fsub fast float %6168, %145
  %6170 = call float @dx.op.dot3.f32(i32 55, float %6105, float %6106, float %6169, float %6105, float %6106, float %6169)  ; Dot3(ax,ay,az,bx,by,bz)
  %6171 = call float @dx.op.unary.f32(i32 25, float %6170)  ; Rsqrt(value)
  %6172 = fmul fast float %6171, %6105
  %6173 = fmul fast float %6171, %6106
  %6174 = fmul fast float %6171, %6169
  %6175 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4439)  ; Dot3(ax,ay,az,bx,by,bz)
  %6176 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6172, float %6173, float %6174)  ; Dot3(ax,ay,az,bx,by,bz)
  %6177 = fdiv fast float 1.000000e+00, %6176
  %6178 = fmul fast float %6177, %6175
  %6179 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6162, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6180 = fcmp fast ogt float %6179, 0.000000e+00
  %6181 = fcmp fast olt float %6179, 0.000000e+00
  %6182 = zext i1 %6180 to i32
  %6183 = zext i1 %6181 to i32
  %6184 = sub nsw i32 %6182, %6183
  %6185 = sitofp i32 %6184 to float
  %6186 = fsub fast float %6168, %4431
  %6187 = call float @dx.op.dot3.f32(i32 55, float %6105, float %6106, float %6186, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6188 = fcmp fast ogt float %6187, 0.000000e+00
  %6189 = fcmp fast olt float %6187, 0.000000e+00
  %6190 = zext i1 %6188 to i32
  %6191 = zext i1 %6189 to i32
  %6192 = sub nsw i32 %6190, %6191
  %6193 = sitofp i32 %6192 to float
  %6194 = fcmp fast une float %6185, %6193
  br i1 %6194, label %6195, label %6205

; <label>:6195                                    ; preds = %6156
  %6196 = fmul fast float %6178, %6174
  %6197 = fmul fast float %6178, %6173
  %6198 = fmul fast float %6178, %6172
  %6199 = fmul fast float %6198, %6198
  %6200 = fmul fast float %6197, %6197
  %6201 = fadd fast float %6199, %6200
  %6202 = fmul fast float %6196, %6196
  %6203 = fadd fast float %6201, %6202
  %6204 = call float @dx.op.unary.f32(i32 24, float %6203)  ; Sqrt(value)
  br label %6217

; <label>:6205                                    ; preds = %6156
  %6206 = icmp slt i32 %6184, 0
  br i1 %6206, label %6207, label %6217

; <label>:6207                                    ; preds = %6205
  %6208 = fsub fast float %143, %6094
  %6209 = fsub fast float %144, %6095
  %6210 = fsub fast float %145, %6168
  %6211 = fmul fast float %6208, %6208
  %6212 = fmul fast float %6209, %6209
  %6213 = fadd fast float %6211, %6212
  %6214 = fmul fast float %6210, %6210
  %6215 = fadd fast float %6213, %6214
  %6216 = call float @dx.op.unary.f32(i32 24, float %6215)  ; Sqrt(value)
  br label %6217

; <label>:6217                                    ; preds = %6207, %6205, %6195
  %6218 = phi float [ %6204, %6195 ], [ %6216, %6207 ], [ 0.000000e+00, %6205 ]
  %6219 = and i1 %6163, %6161
  %6220 = fsub fast float -0.000000e+00, %6218
  %6221 = select i1 %6219, float -0.000000e+00, float %6220
  %6222 = fmul fast float %4432, 0x3FF7154760000000
  %6223 = fmul fast float %6222, %6221
  %6224 = fmul fast float %4433, 0x3FF7154760000000
  %6225 = fmul fast float %6224, %6221
  %6226 = fmul fast float %4434, 0x3FF7154760000000
  %6227 = fmul fast float %6226, %6221
  %6228 = call float @dx.op.unary.f32(i32 21, float %6223)  ; Exp(value)
  %6229 = call float @dx.op.unary.f32(i32 21, float %6225)  ; Exp(value)
  %6230 = call float @dx.op.unary.f32(i32 21, float %6227)  ; Exp(value)
  %6231 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  %6232 = call float @dx.op.unary.f32(i32 7, float %6229)  ; Saturate(value)
  %6233 = call float @dx.op.unary.f32(i32 7, float %6230)  ; Saturate(value)
  %6234 = fmul fast float %6157, %6231
  %6235 = fmul fast float %6158, %6232
  %6236 = fmul fast float %6159, %6233
  %6237 = fsub fast float %6111, %4631
  %6238 = fsub fast float %6112, %4630
  %6239 = fsub fast float %6113, %4629
  %6240 = call float @dx.op.dot3.f32(i32 55, float %6237, float %6238, float %6239, float %6237, float %6238, float %6239)  ; Dot3(ax,ay,az,bx,by,bz)
  %6241 = call float @dx.op.unary.f32(i32 25, float %6240)  ; Rsqrt(value)
  %6242 = fmul fast float %6241, %6237
  %6243 = fmul fast float %6241, %6238
  %6244 = fmul fast float %6241, %6239
  %6245 = call float @dx.op.dot3.f32(i32 55, float %6111, float %6112, float %6113, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %6246 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4627, float %4626, float %6242, float %6243, float %6244)  ; Dot3(ax,ay,az,bx,by,bz)
  %6247 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6248 = fmul fast float %6247, %6118
  %6249 = fmul fast float %6247, %6247
  %6250 = fmul fast float %6249, %4685
  %6251 = call float @dx.op.unary.f32(i32 7, float %6250)  ; Saturate(value)
  %6252 = fmul fast float %6248, %6251
  %6253 = bitcast float %6108 to i32
  %6254 = ashr i32 %6253, 1
  %6255 = sub nsw i32 1597463007, %6254
  %6256 = bitcast i32 %6255 to float
  %6257 = fmul fast float %6256, %6105
  %6258 = fmul fast float %6256, %6106
  %6259 = fmul fast float %6256, %6107
  %6260 = fsub fast float %6257, %4631
  %6261 = fsub fast float %6258, %4630
  %6262 = fsub fast float %6259, %4629
  %6263 = call float @dx.op.dot3.f32(i32 55, float %6260, float %6261, float %6262, float %6260, float %6261, float %6262)  ; Dot3(ax,ay,az,bx,by,bz)
  %6264 = call float @dx.op.unary.f32(i32 25, float %6263)  ; Rsqrt(value)
  %6265 = fmul fast float %6260, %6264
  %6266 = fmul fast float %6261, %6264
  %6267 = fmul fast float %6262, %6264
  %6268 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %6265, float %6266, float %6267)  ; Dot3(ax,ay,az,bx,by,bz)
  %6269 = fmul fast float %6268, %6268
  %6270 = call float @dx.op.unary.f32(i32 6, float %6245)  ; FAbs(value)
  %6271 = fsub fast float 1.000000e+00, %4678
  %6272 = fmul fast float %4660, %4660
  %6273 = fmul fast float %6272, %6271
  %6274 = fadd fast float %6273, %4678
  %6275 = bitcast float %6274 to i32
  %6276 = ashr i32 %6275, 1
  %6277 = add nsw i32 %6276, 532487669
  %6278 = bitcast i32 %6277 to float
  %6279 = fadd fast float %6278, %4660
  %6280 = fmul fast float %4678, %6269
  %6281 = fsub fast float 1.000000e+00, %6269
  %6282 = fadd fast float %6281, %6280
  %6283 = fmul fast float %6270, %6270
  %6284 = fmul fast float %6283, %6271
  %6285 = fadd fast float %6284, %4678
  %6286 = bitcast float %6285 to i32
  %6287 = ashr i32 %6286, 1
  %6288 = add nsw i32 %6287, 532487669
  %6289 = bitcast i32 %6288 to float
  %6290 = fadd fast float %6289, %6270
  %6291 = fmul fast float %6282, %6282
  %6292 = fmul fast float %6291, %6279
  %6293 = fmul fast float %6292, %6290
  %6294 = fdiv fast float 1.000000e+00, %6293
  %6295 = bitcast float %4678 to i32
  %6296 = sitofp i32 %6295 to float
  %6297 = fmul fast float %6296, 0x3FE7F73180000000
  %6298 = fadd fast float %6297, 0x41AFE27C40000000
  %6299 = fptosi float %6298 to i32
  %6300 = bitcast i32 %6299 to float
  %6301 = fmul fast float %6091, 0x3FD80E9D60000000
  %6302 = fmul fast float %6301, %6256
  %6303 = fadd fast float %6300, %6302
  %6304 = bitcast float %6303 to i32
  %6305 = sub nsw i32 2129859010, %6304
  %6306 = bitcast i32 %6305 to float
  %6307 = fmul fast float %4678, %6294
  %6308 = fmul fast float %6307, %6300
  %6309 = fmul fast float %6308, %6306
  %6310 = call float @dx.op.unary.f32(i32 6, float %6246)  ; FAbs(value)
  %6311 = fsub fast float 1.000000e+00, %6310
  %6312 = bitcast float %6311 to i32
  %6313 = sitofp i32 %6312 to float
  %6314 = fmul fast float %6313, 5.000000e+00
  %6315 = fadd fast float %6314, 0xC1EFBF8940000000
  %6316 = fptosi float %6315 to i32
  %6317 = bitcast i32 %6316 to float
  %6318 = fsub fast float 1.000000e+00, %4632
  %6319 = fsub fast float 1.000000e+00, %4633
  %6320 = fsub fast float 1.000000e+00, %4658
  %6321 = fmul fast float %6317, %6318
  %6322 = fmul fast float %6317, %6319
  %6323 = fmul fast float %6317, %6320
  %6324 = fadd fast float %6321, %4632
  %6325 = fadd fast float %6322, %4633
  %6326 = fadd fast float %6323, %4658
  br i1 %4801, label %6327, label %6350

; <label>:6327                                    ; preds = %6217
  %6328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4030, float %6310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6329 = extractvalue %dx.types.ResRet.f32 %6328, 0
  %6330 = extractvalue %dx.types.ResRet.f32 %6328, 1
  %6331 = extractvalue %dx.types.ResRet.f32 %6328, 2
  %6332 = fadd fast float %6329, -5.000000e-01
  %6333 = fadd fast float %6330, -5.000000e-01
  %6334 = fadd fast float %6331, -5.000000e-01
  %6335 = fmul fast float %4632, 4.000000e+00
  %6336 = fmul fast float %6335, %6318
  %6337 = fmul fast float %6336, %6332
  %6338 = fmul fast float %4633, 4.000000e+00
  %6339 = fmul fast float %6338, %6319
  %6340 = fmul fast float %6339, %6333
  %6341 = fmul fast float %4658, 4.000000e+00
  %6342 = fmul fast float %6341, %6320
  %6343 = fmul fast float %6342, %6334
  %6344 = fadd fast float %6337, %6324
  %6345 = fadd fast float %6340, %6325
  %6346 = fadd fast float %6343, %6326
  %6347 = call float @dx.op.unary.f32(i32 7, float %6344)  ; Saturate(value)
  %6348 = call float @dx.op.unary.f32(i32 7, float %6345)  ; Saturate(value)
  %6349 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  br label %6350

; <label>:6350                                    ; preds = %6327, %6217
  %6351 = phi float [ %6347, %6327 ], [ %6324, %6217 ]
  %6352 = phi float [ %6348, %6327 ], [ %6325, %6217 ]
  %6353 = phi float [ %6349, %6327 ], [ %6326, %6217 ]
  %6354 = fmul fast float %6245, 9.843750e-01
  %6355 = fadd fast float %6354, 7.812500e-03
  %6356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6355, float %4791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6357 = extractvalue %dx.types.ResRet.f32 %6356, 2
  %6358 = extractvalue %dx.types.ResRet.f32 %6356, 3
  %6359 = fmul fast float %6357, %4632
  %6360 = fmul fast float %6357, %4633
  %6361 = fmul fast float %6357, %4658
  %6362 = fadd fast float %6359, %6358
  %6363 = fadd fast float %6360, %6358
  %6364 = fadd fast float %6361, %6358
  br i1 %4801, label %6365, label %6388

; <label>:6365                                    ; preds = %6350
  %6366 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4030, float %6245, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6367 = extractvalue %dx.types.ResRet.f32 %6366, 0
  %6368 = extractvalue %dx.types.ResRet.f32 %6366, 1
  %6369 = extractvalue %dx.types.ResRet.f32 %6366, 2
  %6370 = fadd fast float %6367, -5.000000e-01
  %6371 = fadd fast float %6368, -5.000000e-01
  %6372 = fadd fast float %6369, -5.000000e-01
  %6373 = fmul fast float %4632, 4.000000e+00
  %6374 = fmul fast float %6373, %6318
  %6375 = fmul fast float %6374, %6370
  %6376 = fmul fast float %4633, 4.000000e+00
  %6377 = fmul fast float %6376, %6319
  %6378 = fmul fast float %6377, %6371
  %6379 = fmul fast float %4658, 4.000000e+00
  %6380 = fmul fast float %6379, %6320
  %6381 = fmul fast float %6380, %6372
  %6382 = fadd fast float %6375, %6362
  %6383 = fadd fast float %6378, %6363
  %6384 = fadd fast float %6381, %6364
  %6385 = call float @dx.op.unary.f32(i32 7, float %6382)  ; Saturate(value)
  %6386 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  %6387 = call float @dx.op.unary.f32(i32 7, float %6384)  ; Saturate(value)
  br label %6388

; <label>:6388                                    ; preds = %6365, %6350
  %6389 = phi float [ %6385, %6365 ], [ %6362, %6350 ]
  %6390 = phi float [ %6386, %6365 ], [ %6363, %6350 ]
  %6391 = phi float [ %6387, %6365 ], [ %6364, %6350 ]
  %6392 = call float @dx.op.binary.f32(i32 35, float %6390, float %6391)  ; FMax(a,b)
  %6393 = call float @dx.op.binary.f32(i32 35, float %6389, float %6392)  ; FMax(a,b)
  %6394 = fsub fast float 1.000000e+00, %6393
  %6395 = fmul fast float %6351, %6309
  %6396 = fmul fast float %6352, %6309
  %6397 = fmul fast float %6353, %6309
  %6398 = fsub fast float 1.000000e+00, %6246
  %6399 = bitcast float %6398 to i32
  %6400 = sitofp i32 %6399 to float
  %6401 = fmul fast float %6400, 5.000000e+00
  %6402 = fadd fast float %6401, 0xC1EFBF8940000000
  %6403 = fptosi float %6402 to i32
  %6404 = bitcast i32 %6403 to float
  %6405 = fmul fast float %6404, %4031
  %6406 = fmul fast float %6394, %6405
  %6407 = fmul fast float %6406, %5748
  %6408 = fmul fast float %6406, %5749
  %6409 = fmul fast float %6406, %5750
  %6410 = fadd fast float %6407, %6395
  %6411 = fadd fast float %6408, %6396
  %6412 = fadd fast float %6409, %6397
  %6413 = fmul fast float %6234, %4027
  %6414 = fmul fast float %6413, %6252
  %6415 = fmul fast float %6414, %6394
  %6416 = fmul fast float %6235, %4027
  %6417 = fmul fast float %6416, %6252
  %6418 = fmul fast float %6417, %6394
  %6419 = fmul fast float %6236, %4027
  %6420 = fmul fast float %6419, %6252
  %6421 = fmul fast float %6420, %6394
  %6422 = fadd fast float %6415, %6073
  %6423 = fadd fast float %6418, %6074
  %6424 = fadd fast float %6421, %6075
  %6425 = fmul fast float %6414, %6410
  %6426 = fmul fast float %6417, %6411
  %6427 = fmul fast float %6420, %6412
  %6428 = fadd fast float %6425, %6070
  %6429 = fadd fast float %6426, %6071
  %6430 = fadd fast float %6427, %6072
  br label %6148

; <label>:6431                                    ; preds = %6148
  br label %6432

; <label>:6432                                    ; preds = %6431, %6036
  %6433 = phi float [ %6038, %6036 ], [ %6149, %6431 ]
  %6434 = phi float [ %6039, %6036 ], [ %6150, %6431 ]
  %6435 = phi float [ %6040, %6036 ], [ %6151, %6431 ]
  %6436 = phi float [ %6041, %6036 ], [ %6152, %6431 ]
  %6437 = phi float [ %6042, %6036 ], [ %6153, %6431 ]
  %6438 = phi float [ %6043, %6036 ], [ %6154, %6431 ]
  %6439 = add i32 %6037, 1
  %6440 = icmp ugt i32 %6439, %6033
  br i1 %6440, label %6441, label %6036

; <label>:6441                                    ; preds = %6432
  br label %6442

; <label>:6442                                    ; preds = %6441, %6012, %6002
  %6443 = phi float [ %6003, %6002 ], [ %6003, %6012 ], [ %6433, %6441 ]
  %6444 = phi float [ %6004, %6002 ], [ %6004, %6012 ], [ %6434, %6441 ]
  %6445 = phi float [ %6005, %6002 ], [ %6005, %6012 ], [ %6435, %6441 ]
  %6446 = phi float [ %6006, %6002 ], [ %6006, %6012 ], [ %6436, %6441 ]
  %6447 = phi float [ %6007, %6002 ], [ %6007, %6012 ], [ %6437, %6441 ]
  %6448 = phi float [ %6008, %6002 ], [ %6008, %6012 ], [ %6438, %6441 ]
  %6449 = call float @dx.op.unary.f32(i32 24, float %4635)  ; Sqrt(value)
  %6450 = call float @dx.op.unary.f32(i32 24, float %4636)  ; Sqrt(value)
  %6451 = call float @dx.op.unary.f32(i32 24, float %4637)  ; Sqrt(value)
  %6452 = fmul fast float %6449, %6446
  %6453 = fmul fast float %6450, %6447
  %6454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6455 = extractvalue %dx.types.CBufRet.f32 %6454, 0
  br i1 %185, label %6456, label %6479

; <label>:6456                                    ; preds = %6442
  %6457 = fadd fast float %6448, %4033
  %6458 = fmul fast float %6457, %4034
  %6459 = fsub fast float 1.000000e+00, %4034
  %6460 = call float @dx.op.unary.f32(i32 7, float %6459)  ; Saturate(value)
  %6461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6462 = extractvalue %dx.types.CBufRet.f32 %6461, 3
  %6463 = fmul fast float %6462, %6460
  %6464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6465 = extractvalue %dx.types.CBufRet.f32 %6464, 0
  %6466 = fmul fast float %6465, %5755
  %6467 = extractvalue %dx.types.CBufRet.f32 %6464, 2
  %6468 = fmul fast float %6467, %4656
  %6469 = fadd fast float %6453, %6452
  %6470 = fmul fast float %6455, %6469
  %6471 = extractvalue %dx.types.CBufRet.f32 %6461, 1
  %6472 = fadd fast float %6463, %6458
  %6473 = fsub fast float %6472, %6466
  %6474 = fadd fast float %6473, %6468
  %6475 = fsub fast float %6474, %6471
  %6476 = extractvalue %dx.types.CBufRet.f32 %6461, 2
  %6477 = fmul fast float %6475, %6476
  %6478 = call float @dx.op.unary.f32(i32 7, float %6477)  ; Saturate(value)
  br label %6495

; <label>:6479                                    ; preds = %6442
  %6480 = fmul fast float %6451, %6448
  %6481 = fmul fast float %6455, %6452
  %6482 = fmul fast float %6455, %6453
  %6483 = fmul fast float %6480, %6455
  %6484 = add i32 %43, 356
  %6485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6484, i32 undef)  ; BufferLoad(srv,index,wot)
  %6486 = extractvalue %dx.types.ResRet.i32 %6485, 0
  %6487 = and i32 %6486, 32
  %6488 = icmp eq i32 %6487, 0
  br i1 %6488, label %6495, label %6489

; <label>:6489                                    ; preds = %6479
  %6490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6491 = extractvalue %dx.types.CBufRet.f32 %6490, 0
  %6492 = fmul fast float %6491, 0x3FE99999A0000000
  %6493 = fadd fast float %6491, %6481
  %6494 = fadd fast float %6492, %6483
  br label %6495

; <label>:6495                                    ; preds = %6489, %6479, %6456
  %6496 = phi float [ %6470, %6456 ], [ %6493, %6489 ], [ %6481, %6479 ]
  %6497 = phi float [ %6478, %6456 ], [ %6482, %6489 ], [ %6482, %6479 ]
  %6498 = phi float [ 1.000000e+00, %6456 ], [ %6494, %6489 ], [ %6483, %6479 ]
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = fmul fast float %6500, %6444
  %6502 = fmul fast float %6500, %6445
  %6503 = fadd fast float %6444, %6443
  %6504 = select i1 %185, float %6503, float %6443
  %6505 = fmul float %6504, %6500
  %6506 = select i1 %185, float 0.000000e+00, float %6501
  %6507 = select i1 %185, float 0.000000e+00, float %6502
  %6508 = fmul fast float %6496, %6449
  %6509 = fmul fast float %6497, %6450
  %6510 = fmul fast float %6498, %6451
  %6511 = fadd fast float %6505, %6508
  %6512 = fadd fast float %6506, %6509
  %6513 = fadd fast float %6507, %6510
  %6514 = select i1 %185, float %6497, float %6512
  %6515 = select i1 %185, float %6498, float %6513
  %6516 = call float @dx.op.binary.f32(i32 36, float %6511, float 3.225500e+04)  ; FMin(a,b)
  %6517 = call float @dx.op.binary.f32(i32 36, float %6514, float 3.225500e+04)  ; FMin(a,b)
  %6518 = call float @dx.op.binary.f32(i32 36, float %6515, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6516)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6517)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6518)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

