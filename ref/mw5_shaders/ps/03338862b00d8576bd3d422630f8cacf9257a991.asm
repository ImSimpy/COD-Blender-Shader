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
; shader hash: 0b49e7a98094f6500141f753ebef07cf
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
  br i1 %435, label %923, label %436

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
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 26624
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %908, label %885

; <label>:885                                     ; preds = %877
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = and i32 %887, 16384
  %889 = icmp eq i32 %888, 0
  br i1 %889, label %908, label %890

; <label>:890                                     ; preds = %885
  %891 = and i32 %887, 1048576
  %892 = icmp ne i32 %891, 0
  %893 = add i32 %43, 504
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = add i32 %895, 0
  %897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %897, %dx.types.Handle %77, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %899 = extractvalue %dx.types.ResRet.f32 %898, 0
  %900 = add i32 %43, 96
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = lshr i32 %902, 24
  %904 = uitofp i32 %903 to float
  %905 = fmul fast float %899, 0x3F70101020000000
  %906 = select i1 %892, float 0x3F70101020000000, float %905
  %907 = fmul fast float %906, %904
  br label %908

; <label>:908                                     ; preds = %890, %885, %877
  %909 = phi float [ %907, %890 ], [ 0.000000e+00, %885 ], [ 0.000000e+00, %877 ]
  %910 = add i32 %43, 96
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 255
  %914 = uitofp i32 %913 to float
  %915 = lshr i32 %912, 8
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = fmul fast float %917, %918
  %920 = fadd fast float %919, %914
  %921 = fmul fast float %920, 0x3F70101020000000
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  br label %923

; <label>:923                                     ; preds = %908, %421
  %924 = phi float [ 0.000000e+00, %421 ], [ %831, %908 ]
  %925 = phi float [ 0.000000e+00, %421 ], [ %832, %908 ]
  %926 = phi float [ 0.000000e+00, %421 ], [ %750, %908 ]
  %927 = phi float [ 0.000000e+00, %421 ], [ %751, %908 ]
  %928 = phi float [ 0.000000e+00, %421 ], [ %752, %908 ]
  %929 = phi float [ 0.000000e+00, %421 ], [ %878, %908 ]
  %930 = phi float [ 0.000000e+00, %421 ], [ %879, %908 ]
  %931 = phi float [ 0.000000e+00, %421 ], [ %880, %908 ]
  %932 = phi float [ 0.000000e+00, %421 ], [ %736, %908 ]
  %933 = phi float [ 0.000000e+00, %421 ], [ 1.000000e+00, %908 ]
  %934 = phi float [ 0.000000e+00, %421 ], [ %830, %908 ]
  %935 = phi float [ 0.000000e+00, %421 ], [ %833, %908 ]
  %936 = phi float [ 0.000000e+00, %421 ], [ %909, %908 ]
  %937 = phi float [ 0.000000e+00, %421 ], [ %922, %908 ]
  br i1 %372, label %1818, label %938

; <label>:938                                     ; preds = %923
  %939 = icmp ult i32 %427, 2
  %940 = add i32 %43, 40
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = add i32 %43, 44
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = or i32 %945, %942
  %947 = icmp eq i32 %946, 0
  br i1 %947, label %1818, label %948

; <label>:948                                     ; preds = %938
  %949 = and i32 %942, 262144
  %950 = icmp ne i32 %949, 0
  %951 = select i1 %950, float %47, float 1.000000e+00
  %952 = select i1 %950, float %48, float 0.000000e+00
  %953 = select i1 %950, float %49, float 0.000000e+00
  %954 = select i1 %950, float %50, float 1.000000e+00
  %955 = select i1 %950, float %51, float %68
  %956 = select i1 %950, float %52, float %69
  %957 = add i32 %43, 300
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = lshr i32 %959, 16
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = fmul fast float %961, 0x3F50624DE0000000
  %963 = add i32 %43, 104
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = lshr i32 %965, 16
  %967 = and i32 %966, 255
  %968 = lshr i32 %965, 24
  %969 = add i32 %43, 308
  %970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %969, i32 undef)  ; BufferLoad(srv,index,wot)
  %971 = extractvalue %dx.types.ResRet.i32 %970, 0
  %972 = and i32 %971, 65535
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = lshr i32 %971, 16
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = add i32 %43, 48
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = lshr i32 %978, 22
  %980 = shl nuw nsw i32 %979, 5
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = shl i32 %978, 4
  %983 = and i32 %982, 32752
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = lshr i32 %978, 7
  %986 = and i32 %985, 32752
  %987 = call float @dx.op.legacyF16ToF32(i32 131, i32 %986)  ; LegacyF16ToF32(value)
  %988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %989 = extractvalue %dx.types.CBufRet.f32 %988, 3
  %990 = fmul fast float %989, 1.000000e+03
  %991 = fmul fast float %282, %990
  %992 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %993 = fadd fast float %992, %272
  %994 = fmul fast float %283, %990
  %995 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %996 = fadd fast float %995, %274
  %997 = fmul fast float %962, %990
  %998 = call float @dx.op.unary.f32(i32 22, float %997)  ; Frc(value)
  %999 = fmul fast float %998, 0x401921FB60000000
  %1000 = fadd fast float %999, %981
  %1001 = call float @dx.op.unary.f32(i32 13, float %1000)  ; Sin(value)
  %1002 = call float @dx.op.unary.f32(i32 12, float %1000)  ; Cos(value)
  %1003 = fsub fast float -0.000000e+00, %1001
  %1004 = fadd fast float %955, -5.000000e-01
  %1005 = fadd fast float %956, -5.000000e-01
  %1006 = fmul fast float %973, %1004
  %1007 = fmul fast float %975, %1005
  %1008 = fadd fast float %1006, 5.000000e-01
  %1009 = fadd fast float %1007, 5.000000e-01
  %1010 = fmul fast float %984, %1008
  %1011 = fmul fast float %987, %1009
  %1012 = fmul fast float %1002, %1010
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %1003, float %1011, float %1012)  ; FMad(a,b,c)
  %1014 = fmul fast float %1001, %1010
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %1011, float %1014)  ; FMad(a,b,c)
  %1016 = fadd fast float %993, %1013
  %1017 = fadd fast float %996, %1015
  %1018 = icmp ugt i32 %967, 1
  %1019 = icmp ugt i32 %965, 33554431
  %1020 = or i1 %1019, %1018
  br i1 %1020, label %1021, label %1046

; <label>:1021                                    ; preds = %948
  %1022 = add i32 %43, 244
  %1023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.i32 %1023, 0
  %1025 = lshr i32 %1024, 16
  %1026 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1025)  ; LegacyF16ToF32(value)
  %1027 = fmul fast float %989, %1026
  %1028 = call float @dx.op.unary.f32(i32 22, float %1027)  ; Frc(value)
  %1029 = mul nuw nsw i32 %967, %968
  %1030 = uitofp i32 %1029 to float
  %1031 = fmul fast float %1028, %1030
  %1032 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1033 = fptoui float %1032 to i32
  %1034 = urem i32 %1033, %967
  %1035 = udiv i32 %1033, %968
  %1036 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1037 = call float @dx.op.unary.f32(i32 22, float %1017)  ; Frc(value)
  %1038 = uitofp i32 %1034 to float
  %1039 = uitofp i32 %1035 to float
  %1040 = fadd fast float %1036, %1038
  %1041 = fadd fast float %1037, %1039
  %1042 = uitofp i32 %967 to float
  %1043 = uitofp i32 %968 to float
  %1044 = fdiv fast float %1040, %1042
  %1045 = fdiv fast float %1041, %1043
  br label %1046

; <label>:1046                                    ; preds = %1021, %948
  %1047 = phi float [ %1044, %1021 ], [ %1016, %948 ]
  %1048 = phi float [ %1045, %1021 ], [ %1017, %948 ]
  %1049 = and i32 %942, 16777216
  %1050 = icmp eq i32 %1049, 0
  br i1 %1050, label %1160, label %1051

; <label>:1051                                    ; preds = %1046
  %1052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1053 = extractvalue %dx.types.CBufRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.CBufRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.CBufRet.f32 %1052, 2
  %1056 = fadd fast float %1053, %143
  %1057 = fadd fast float %1054, %144
  %1058 = fadd fast float %1055, %145
  %1059 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1060 = extractvalue %dx.types.CBufRet.f32 %1059, 0
  %1061 = call float @dx.op.unary.f32(i32 7, float %1060)  ; Saturate(value)
  %1062 = icmp eq i32 %44, 65535
  br i1 %1062, label %1157, label %1063

; <label>:1063                                    ; preds = %1051
  %1064 = lshr i32 %44, 1
  %1065 = shl i32 %1064, 2
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = and i32 %44, 1
  %1069 = icmp ne i32 %1068, 0
  %1070 = lshr i32 %1067, 16
  %1071 = and i32 %1067, 65535
  %1072 = select i1 %1069, i32 %1070, i32 %1071
  %1073 = icmp eq i32 %1072, 65535
  br i1 %1073, label %1153, label %1074

; <label>:1074                                    ; preds = %1063
  %1075 = mul nuw nsw i32 %1072, 40
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = add nuw nsw i32 %1075, 12
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = add nuw nsw i32 %1075, 24
  %1086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = extractvalue %dx.types.ResRet.f32 %1086, 1
  %1089 = extractvalue %dx.types.ResRet.f32 %1086, 2
  %1090 = add nuw nsw i32 %1075, 36
  %1091 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = fsub fast float %1056, %1077
  %1094 = fsub fast float %1057, %1078
  %1095 = fsub fast float %1058, %1079
  %1096 = fmul fast float %1092, %1093
  %1097 = fmul fast float %1092, %1094
  %1098 = fmul fast float %1092, %1095
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = fadd fast float %1100, 5.000000e-01
  %1104 = fadd fast float %1101, 5.000000e-01
  %1105 = fmul fast float %1102, %1082
  %1106 = fmul fast float %1103, %1083
  %1107 = fmul fast float %1104, %1084
  %1108 = shl i32 %44, 2
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = add i32 %1110, 0
  %1112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1113 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1114 = call float @dx.op.unary.f32(i32 22, float %1106)  ; Frc(value)
  %1115 = call float @dx.op.unary.f32(i32 22, float %1107)  ; Frc(value)
  %1116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1112, %dx.types.Handle %40, float %1113, float %1114, float %1115, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1117 = extractvalue %dx.types.ResRet.f32 %1116, 0
  %1118 = extractvalue %dx.types.ResRet.f32 %1116, 1
  %1119 = extractvalue %dx.types.ResRet.f32 %1116, 2
  %1120 = fmul fast float %1117, 1.023000e+03
  %1121 = fmul fast float %1118, 1.023000e+03
  %1122 = fmul fast float %1119, 1.023000e+03
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = fadd fast float %1121, 5.000000e-01
  %1125 = fadd fast float %1122, 5.000000e-01
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1128 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1129 = fsub fast float %1096, %1099
  %1130 = fsub fast float %1097, %1100
  %1131 = fsub fast float %1098, %1101
  %1132 = fmul fast float %1129, 7.500000e-01
  %1133 = fmul fast float %1130, 7.500000e-01
  %1134 = fmul fast float %1131, 7.500000e-01
  %1135 = fadd fast float %1099, 1.250000e-01
  %1136 = fadd fast float %1135, %1132
  %1137 = fadd fast float %1136, %1126
  %1138 = fadd fast float %1100, 1.250000e-01
  %1139 = fadd fast float %1138, %1133
  %1140 = fadd fast float %1139, %1127
  %1141 = fadd fast float %1101, 1.250000e-01
  %1142 = fadd fast float %1141, %1134
  %1143 = fadd fast float %1142, %1128
  %1144 = fmul fast float %1137, %1087
  %1145 = fmul fast float %1140, %1088
  %1146 = fmul fast float %1143, %1089
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = add i32 %1148, 0
  %1150 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1149, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1150, %dx.types.Handle %38, float %1144, float %1145, float %1146, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1152 = extractvalue %dx.types.ResRet.f32 %1151, 0
  br label %1153

; <label>:1153                                    ; preds = %1074, %1063
  %1154 = phi float [ %1152, %1074 ], [ -1.000000e+00, %1063 ]
  %1155 = fadd fast float %1154, %1061
  %1156 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  br label %1157

; <label>:1157                                    ; preds = %1153, %1051
  %1158 = phi float [ %1156, %1153 ], [ %1061, %1051 ]
  %1159 = fmul fast float %1158, %424
  br label %1160

; <label>:1160                                    ; preds = %1157, %1046
  %1161 = phi float [ %1159, %1157 ], [ %424, %1046 ]
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = and i32 %1163, 256
  %1165 = icmp eq i32 %1164, 0
  br i1 %1165, label %1212, label %1166

; <label>:1166                                    ; preds = %1160
  %1167 = add i32 %43, 476
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = add i32 %1169, 0
  %1171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1171, %dx.types.Handle %77, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1173 = extractvalue %dx.types.ResRet.f32 %1172, 0
  %1174 = add i32 %43, 116
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = shl i32 %1176, 4
  %1178 = and i32 %1177, 32752
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = lshr i32 %1176, 7
  %1181 = and i32 %1180, 32752
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = fsub fast float 1.000000e+00, %1161
  %1184 = call float @dx.op.binary.f32(i32 35, float %1183, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1185 = bitcast float %1161 to i32
  %1186 = sitofp i32 %1185 to float
  %1187 = fadd fast float %1186, 0xC1CFBF8940000000
  %1188 = fmul fast float %1182, %1187
  %1189 = fadd fast float %1188, 0x41CFBF8940000000
  %1190 = fptosi float %1189 to i32
  %1191 = bitcast i32 %1190 to float
  %1192 = bitcast float %1184 to i32
  %1193 = sitofp i32 %1192 to float
  %1194 = fadd fast float %1193, 0xC1CFBF8940000000
  %1195 = fmul fast float %1194, %1182
  %1196 = fadd fast float %1195, 0x41CFBF8940000000
  %1197 = fptosi float %1196 to i32
  %1198 = bitcast i32 %1197 to float
  %1199 = fmul fast float %1191, %1179
  %1200 = fmul fast float %1198, %1179
  %1201 = fsub fast float %1184, %1199
  %1202 = fadd fast float %1200, %1184
  %1203 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1204 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1205 = fsub fast float %1173, %1203
  %1206 = fsub fast float %1204, %1203
  %1207 = bitcast float %1206 to i32
  %1208 = sub nsw i32 2129859010, %1207
  %1209 = bitcast i32 %1208 to float
  %1210 = fmul fast float %1209, %1205
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  br label %1212

; <label>:1212                                    ; preds = %1166, %1160
  %1213 = phi float [ %1211, %1166 ], [ %1161, %1160 ]
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = and i32 %1215, 128
  %1217 = icmp eq i32 %1216, 0
  br i1 %1217, label %1234, label %1218

; <label>:1218                                    ; preds = %1212
  %1219 = add i32 %43, 460
  %1220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1221 = extractvalue %dx.types.ResRet.i32 %1220, 0
  %1222 = add i32 %1221, 0
  %1223 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1222, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1224 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1223, %dx.types.Handle %77, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1225 = extractvalue %dx.types.ResRet.f32 %1224, 0
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = and i32 %1227, 524288
  %1229 = icmp ne i32 %1228, 0
  %1230 = fcmp fast ogt float %1225, 0x3FE0101020000000
  %1231 = select i1 %1230, float 1.000000e+00, float 0.000000e+00
  %1232 = select i1 %1229, float %1231, float %1225
  %1233 = fmul fast float %1232, %1213
  br label %1234

; <label>:1234                                    ; preds = %1218, %1212
  %1235 = phi float [ %1233, %1218 ], [ %1213, %1212 ]
  %1236 = fcmp fast ult float %1235, 0x3F70101020000000
  br i1 %1236, label %1818, label %1237

; <label>:1237                                    ; preds = %1234
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = and i32 %1239, 16
  %1241 = icmp eq i32 %1240, 0
  br i1 %1241, label %1440, label %1242

; <label>:1242                                    ; preds = %1237
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %43, 412
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = add i32 %1247, 0
  %1249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1248, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1250 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1249, %dx.types.Handle %76, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1251 = extractvalue %dx.types.ResRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.ResRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.ResRet.f32 %1250, 2
  %1254 = extractvalue %dx.types.ResRet.f32 %1250, 3
  %1255 = and i32 %1244, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = lshr i32 %1244, 8
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1254, %1256
  %1261 = fadd fast float %1260, %1259
  %1262 = fmul fast float %1261, 0x3F70101000000000
  %1263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1264 = extractvalue %dx.types.ResRet.i32 %1263, 0
  %1265 = and i32 %1264, 512
  %1266 = icmp eq i32 %1265, 0
  br i1 %1266, label %1275, label %1267

; <label>:1267                                    ; preds = %1242
  %1268 = add i32 %43, 492
  %1269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1270 = extractvalue %dx.types.ResRet.i32 %1269, 0
  %1271 = add i32 %1270, 0
  %1272 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1271, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1273 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1272, %dx.types.Handle %77, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1274 = extractvalue %dx.types.ResRet.f32 %1273, 0
  br label %1275

; <label>:1275                                    ; preds = %1267, %1242
  %1276 = phi float [ %1274, %1267 ], [ 1.000000e+00, %1242 ]
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = and i32 %1278, 33554432
  %1280 = icmp eq i32 %1279, 0
  br i1 %1280, label %1387, label %1281

; <label>:1281                                    ; preds = %1275
  %1282 = add i32 %43, 240
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1282, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = and i32 %1284, 65535
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = lshr i32 %1284, 16
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = add i32 %43, 244
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1289, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 65535
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1295 = extractvalue %dx.types.ResRet.i32 %1294, 0
  %1296 = lshr i32 %1295, 24
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1297, 0x3F70101020000000
  %1299 = and i32 %1295, 255
  %1300 = uitofp i32 %1299 to float
  %1301 = fmul fast float %1300, 0x3F70101020000000
  %1302 = lshr i32 %1295, 8
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = fmul fast float %1304, 0x3F70101020000000
  %1306 = lshr i32 %1295, 16
  %1307 = and i32 %1306, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = fmul fast float %1308, 0x3F70101020000000
  %1310 = add i32 %43, 236
  %1311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1310, i32 undef)  ; BufferLoad(srv,index,wot)
  %1312 = extractvalue %dx.types.ResRet.i32 %1311, 0
  %1313 = lshr i32 %1312, 24
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = and i32 %1312, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = fmul fast float %1317, 0x3F70101020000000
  %1319 = lshr i32 %1312, 8
  %1320 = and i32 %1319, 255
  %1321 = uitofp i32 %1320 to float
  %1322 = fmul fast float %1321, 0x3F70101020000000
  %1323 = lshr i32 %1312, 16
  %1324 = and i32 %1323, 255
  %1325 = uitofp i32 %1324 to float
  %1326 = fmul fast float %1325, 0x3F70101020000000
  %1327 = bitcast float %1251 to i32
  %1328 = ashr i32 %1327, 1
  %1329 = sub nsw i32 1597463174, %1328
  %1330 = bitcast i32 %1329 to float
  %1331 = fmul fast float %1251, 5.000000e-01
  %1332 = fmul fast float %1330, %1330
  %1333 = fmul fast float %1332, %1331
  %1334 = fsub fast float 1.500000e+00, %1333
  %1335 = fmul fast float %1330, %1251
  %1336 = fmul fast float %1335, %1334
  %1337 = bitcast float %1252 to i32
  %1338 = ashr i32 %1337, 1
  %1339 = sub nsw i32 1597463174, %1338
  %1340 = bitcast i32 %1339 to float
  %1341 = fmul fast float %1252, 5.000000e-01
  %1342 = fmul fast float %1340, %1340
  %1343 = fmul fast float %1342, %1341
  %1344 = fsub fast float 1.500000e+00, %1343
  %1345 = fmul fast float %1340, %1252
  %1346 = fmul fast float %1345, %1344
  %1347 = bitcast float %1253 to i32
  %1348 = ashr i32 %1347, 1
  %1349 = sub nsw i32 1597463174, %1348
  %1350 = bitcast i32 %1349 to float
  %1351 = fmul fast float %1253, 5.000000e-01
  %1352 = fmul fast float %1350, %1350
  %1353 = fmul fast float %1352, %1351
  %1354 = fsub fast float 1.500000e+00, %1353
  %1355 = fmul fast float %1350, %1253
  %1356 = fmul fast float %1355, %1354
  %1357 = fsub fast float %1336, %1318
  %1358 = fsub fast float %1346, %1322
  %1359 = fsub fast float %1356, %1326
  %1360 = fmul fast float %1357, %1286
  %1361 = fmul fast float %1358, %1288
  %1362 = fmul fast float %1359, %1293
  %1363 = fadd fast float %1360, %1301
  %1364 = fadd fast float %1361, %1305
  %1365 = fadd fast float %1362, %1309
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = fmul fast float %1366, %1366
  %1370 = fmul fast float %1367, %1367
  %1371 = fmul fast float %1368, %1368
  %1372 = fsub fast float %1369, %1251
  %1373 = fsub fast float %1370, %1252
  %1374 = fsub fast float %1371, %1253
  %1375 = fmul fast float %1372, %1276
  %1376 = fmul fast float %1373, %1276
  %1377 = fmul fast float %1374, %1276
  %1378 = fadd fast float %1375, %1251
  %1379 = fadd fast float %1376, %1252
  %1380 = fadd fast float %1377, %1253
  %1381 = fadd fast float %1298, %1262
  %1382 = fsub fast float %1381, %1315
  %1383 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1384 = fsub fast float %1383, %1262
  %1385 = fmul fast float %1384, %1276
  %1386 = fadd fast float %1385, %1262
  br label %1440

; <label>:1387                                    ; preds = %1275
  %1388 = and i32 %1278, 134217728
  %1389 = icmp eq i32 %1388, 0
  br i1 %1389, label %1424, label %1390

; <label>:1390                                    ; preds = %1387
  %1391 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1392 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1393 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fadd fast float %1392, -5.000000e-01
  %1396 = fadd fast float %1393, -5.000000e-01
  %1397 = fmul fast float %1394, %1276
  %1398 = fmul fast float %1395, %1276
  %1399 = fmul fast float %1396, %1276
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = fadd fast float %1398, 5.000000e-01
  %1402 = fadd fast float %1399, 5.000000e-01
  %1403 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  %1404 = call float @dx.op.unary.f32(i32 24, float %1252)  ; Sqrt(value)
  %1405 = call float @dx.op.unary.f32(i32 24, float %1253)  ; Sqrt(value)
  %1406 = fmul fast float %1400, 2.000000e+00
  %1407 = fsub fast float 1.000000e+00, %1406
  %1408 = fmul fast float %1407, %1403
  %1409 = fadd fast float %1408, %1406
  %1410 = fmul fast float %1409, %1403
  %1411 = fmul fast float %1401, 2.000000e+00
  %1412 = fsub fast float 1.000000e+00, %1411
  %1413 = fmul fast float %1412, %1404
  %1414 = fadd fast float %1413, %1411
  %1415 = fmul fast float %1414, %1404
  %1416 = fmul fast float %1402, 2.000000e+00
  %1417 = fsub fast float 1.000000e+00, %1416
  %1418 = fmul fast float %1417, %1405
  %1419 = fadd fast float %1418, %1416
  %1420 = fmul fast float %1419, %1405
  %1421 = fmul fast float %1410, %1410
  %1422 = fmul fast float %1415, %1415
  %1423 = fmul fast float %1420, %1420
  br label %1440

; <label>:1424                                    ; preds = %1387
  %1425 = fmul fast float %259, %259
  %1426 = fmul fast float %263, %263
  %1427 = fmul fast float %267, %267
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fadd fast float %1427, -1.000000e+00
  %1431 = fmul fast float %1276, %1428
  %1432 = fmul fast float %1276, %1429
  %1433 = fmul fast float %1276, %1430
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fadd fast float %1432, 1.000000e+00
  %1436 = fadd fast float %1433, 1.000000e+00
  %1437 = fmul fast float %1434, %1251
  %1438 = fmul fast float %1435, %1252
  %1439 = fmul fast float %1436, %1253
  br label %1440

; <label>:1440                                    ; preds = %1424, %1390, %1281, %1237
  %1441 = phi float [ %1386, %1281 ], [ %1262, %1390 ], [ %1262, %1424 ], [ 0x3FA23C0BE0000000, %1237 ]
  %1442 = phi float [ %1378, %1281 ], [ %1421, %1390 ], [ %1437, %1424 ], [ 1.000000e+00, %1237 ]
  %1443 = phi float [ %1379, %1281 ], [ %1422, %1390 ], [ %1438, %1424 ], [ 1.000000e+00, %1237 ]
  %1444 = phi float [ %1380, %1281 ], [ %1423, %1390 ], [ %1439, %1424 ], [ 1.000000e+00, %1237 ]
  %1445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1446 = extractvalue %dx.types.CBufRet.i32 %1445, 1
  %1447 = and i32 %1446, 1
  %1448 = icmp ne i32 %1447, 0
  %1449 = add i32 %43, 356
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 32
  %1453 = icmp ne i32 %1452, 0
  %1454 = and i1 %1448, %1453
  %1455 = select i1 %1454, float 1.000000e+00, float %1442
  %1456 = select i1 %1454, float 0x3FD3333340000000, float %1443
  %1457 = select i1 %1454, float 0x3FD3333340000000, float %1444
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 32
  %1461 = icmp eq i32 %1460, 0
  br i1 %1461, label %1534, label %1462

; <label>:1462                                    ; preds = %1440
  %1463 = add i32 %43, 108
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = add i32 %43, 428
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %76, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.ResRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.ResRet.f32 %1471, 2
  %1475 = extractvalue %dx.types.ResRet.f32 %1471, 3
  %1476 = and i32 %1465, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = lshr i32 %1465, 8
  %1479 = and i32 %1478, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = lshr i32 %1465, 16
  %1482 = and i32 %1481, 255
  %1483 = uitofp i32 %1482 to float
  %1484 = fmul fast float %1483, 0x3F70101000000000
  %1485 = fmul fast float %1472, %1477
  %1486 = fadd fast float %1485, %1480
  %1487 = fmul fast float %1486, 0x3F70101000000000
  %1488 = fadd fast float %1473, -5.000000e-01
  %1489 = fadd fast float %1475, -5.000000e-01
  %1490 = fmul fast float %1488, %1484
  %1491 = fmul fast float %1489, %1484
  %1492 = fadd fast float %1490, 5.000000e-01
  %1493 = fadd fast float %1491, 5.000000e-01
  %1494 = fmul fast float %1492, 2.000000e+00
  %1495 = fadd fast float %1494, -1.000000e+00
  %1496 = fmul fast float %1493, 2.000000e+00
  %1497 = fadd fast float %1496, -1.000000e+00
  %1498 = fadd fast float %1495, %1497
  %1499 = fmul fast float %1498, 5.000000e-01
  %1500 = fsub fast float %1495, %1497
  %1501 = fmul fast float %1500, 5.000000e-01
  %1502 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1503 = fsub fast float 1.000000e+00, %1502
  %1504 = call float @dx.op.unary.f32(i32 6, float %1501)  ; FAbs(value)
  %1505 = fsub fast float %1503, %1504
  %1506 = call float @dx.op.dot3.f32(i32 55, float %1499, float %1501, float %1505, float %1499, float %1501, float %1505)  ; Dot3(ax,ay,az,bx,by,bz)
  %1507 = call float @dx.op.unary.f32(i32 25, float %1506)  ; Rsqrt(value)
  %1508 = fmul fast float %1499, %1507
  %1509 = fmul fast float %1501, %1507
  %1510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1511 = extractvalue %dx.types.ResRet.i32 %1510, 0
  %1512 = and i32 %1511, 67108864
  %1513 = icmp eq i32 %1512, 0
  br i1 %1513, label %1530, label %1514

; <label>:1514                                    ; preds = %1462
  %1515 = add i32 %43, 296
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 65535
  %1519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1518)  ; LegacyF16ToF32(value)
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 65535
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = lshr i32 %1517, 16
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = fsub fast float %1487, %1525
  %1527 = fmul fast float %1526, %1519
  %1528 = fadd fast float %1527, %1523
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  br label %1530

; <label>:1530                                    ; preds = %1514, %1462
  %1531 = phi float [ %1529, %1514 ], [ %1487, %1462 ]
  %1532 = call float @dx.op.dot2.f32(i32 54, float %1508, float %1509, float %951, float %952)  ; Dot2(ax,ay,bx,by)
  %1533 = call float @dx.op.dot2.f32(i32 54, float %1508, float %1509, float %953, float %954)  ; Dot2(ax,ay,bx,by)
  br label %1534

; <label>:1534                                    ; preds = %1530, %1440
  %1535 = phi float [ %1531, %1530 ], [ 0x3FD6666660000000, %1440 ]
  %1536 = phi float [ %1532, %1530 ], [ 0.000000e+00, %1440 ]
  %1537 = phi float [ %1533, %1530 ], [ 0.000000e+00, %1440 ]
  %1538 = phi float [ %1474, %1530 ], [ 1.000000e+00, %1440 ]
  %1539 = add i32 %43, 176
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = lshr i32 %1541, 22
  %1543 = shl nuw nsw i32 %1542, 5
  %1544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1543)  ; LegacyF16ToF32(value)
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 64
  %1548 = icmp eq i32 %1547, 0
  br i1 %1548, label %1582, label %1549

; <label>:1549                                    ; preds = %1534
  %1550 = add i32 %43, 444
  %1551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.i32 %1551, 0
  %1553 = add i32 %1552, 0
  %1554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 131072
  %1558 = icmp eq i32 %1557, 0
  %1559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1554, %dx.types.Handle %76, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1560 = extractvalue %dx.types.ResRet.f32 %1559, 0
  %1561 = extractvalue %dx.types.ResRet.f32 %1559, 1
  %1562 = extractvalue %dx.types.ResRet.f32 %1559, 2
  %1563 = fmul fast float %1560, %247
  %1564 = fmul fast float %1561, %250
  %1565 = fmul fast float %1562, %253
  br i1 %1558, label %1572, label %1566

; <label>:1566                                    ; preds = %1549
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 0
  %1569 = fmul fast float %1568, %1563
  %1570 = fmul fast float %1568, %1564
  %1571 = fmul fast float %1568, %1565
  br label %1572

; <label>:1572                                    ; preds = %1566, %1549
  %1573 = phi float [ %1569, %1566 ], [ %1563, %1549 ]
  %1574 = phi float [ %1570, %1566 ], [ %1564, %1549 ]
  %1575 = phi float [ %1571, %1566 ], [ %1565, %1549 ]
  %1576 = fmul fast float %1573, %1544
  %1577 = select i1 %185, float %1576, float %1573
  %1578 = call float @dx.op.dot3.f32(i32 55, float %1577, float %1574, float %1575, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1579 = select i1 %185, float 0.000000e+00, float %1573
  %1580 = select i1 %185, float %1578, float %1574
  %1581 = select i1 %185, float 0.000000e+00, float %1575
  br label %1582

; <label>:1582                                    ; preds = %1572, %1534
  %1583 = phi float [ %1579, %1572 ], [ 0.000000e+00, %1534 ]
  %1584 = phi float [ %1580, %1572 ], [ 0.000000e+00, %1534 ]
  %1585 = phi float [ %1581, %1572 ], [ 0.000000e+00, %1534 ]
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 26624
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1613, label %1590

; <label>:1590                                    ; preds = %1582
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 16384
  %1594 = icmp eq i32 %1593, 0
  br i1 %1594, label %1613, label %1595

; <label>:1595                                    ; preds = %1590
  %1596 = and i32 %1592, 1048576
  %1597 = icmp ne i32 %1596, 0
  %1598 = add i32 %43, 508
  %1599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1598, i32 undef)  ; BufferLoad(srv,index,wot)
  %1600 = extractvalue %dx.types.ResRet.i32 %1599, 0
  %1601 = add i32 %1600, 0
  %1602 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1601, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1603 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1602, %dx.types.Handle %77, float %1047, float %1048, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 0
  %1605 = add i32 %43, 112
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = lshr i32 %1607, 24
  %1609 = uitofp i32 %1608 to float
  %1610 = fmul fast float %1604, 0x3F70101020000000
  %1611 = select i1 %1597, float 0x3F70101020000000, float %1610
  %1612 = fmul fast float %1611, %1609
  br label %1613

; <label>:1613                                    ; preds = %1595, %1590, %1582
  %1614 = phi float [ %1612, %1595 ], [ 0.000000e+00, %1590 ], [ 0.000000e+00, %1582 ]
  %1615 = add i32 %43, 112
  %1616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1615, i32 undef)  ; BufferLoad(srv,index,wot)
  %1617 = extractvalue %dx.types.ResRet.i32 %1616, 0
  %1618 = and i32 %1617, 255
  %1619 = uitofp i32 %1618 to float
  %1620 = lshr i32 %1617, 8
  %1621 = and i32 %1620, 255
  %1622 = uitofp i32 %1621 to float
  %1623 = call float @dx.op.dot3.f32(i32 55, float %1455, float %1456, float %1457, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1624 = fmul fast float %1622, %1623
  %1625 = fadd fast float %1624, %1619
  %1626 = fmul fast float %1625, 0x3F70101020000000
  %1627 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  br i1 %939, label %1628, label %1636

; <label>:1628                                    ; preds = %1613
  %1629 = fsub fast float 1.000000e+00, %1235
  %1630 = fmul fast float %1629, %926
  %1631 = fmul fast float %1629, %927
  %1632 = fmul fast float %1629, %928
  %1633 = fmul fast float %1629, %929
  %1634 = fmul fast float %1629, %930
  %1635 = fmul fast float %1629, %931
  br label %1636

; <label>:1636                                    ; preds = %1628, %1613
  %1637 = phi float [ %1630, %1628 ], [ %926, %1613 ]
  %1638 = phi float [ %1631, %1628 ], [ %927, %1613 ]
  %1639 = phi float [ %1632, %1628 ], [ %928, %1613 ]
  %1640 = phi float [ %1633, %1628 ], [ %929, %1613 ]
  %1641 = phi float [ %1634, %1628 ], [ %930, %1613 ]
  %1642 = phi float [ %1635, %1628 ], [ %931, %1613 ]
  %1643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %1644 = extractvalue %dx.types.ResRet.i32 %1643, 0
  %1645 = and i32 %1644, 3
  %1646 = icmp eq i32 %1645, 3
  br i1 %1646, label %1725, label %1647

; <label>:1647                                    ; preds = %1636
  %1648 = and i32 %1644, 16
  %1649 = icmp ne i32 %1648, 0
  %1650 = select i1 %1649, float %1235, float 0.000000e+00
  %1651 = icmp eq i32 %1645, 0
  br i1 %1651, label %1652, label %1680

; <label>:1652                                    ; preds = %1647
  %1653 = and i32 %1644, 64
  %1654 = icmp ne i32 %1653, 0
  %1655 = select i1 %1654, float %1235, float 0.000000e+00
  %1656 = fsub fast float %1455, %1637
  %1657 = fsub fast float %1456, %1638
  %1658 = fsub fast float %1457, %1639
  %1659 = fmul fast float %1650, %1656
  %1660 = fmul fast float %1650, %1657
  %1661 = fmul fast float %1650, %1658
  %1662 = fadd fast float %1659, %1637
  %1663 = fadd fast float %1660, %1638
  %1664 = fadd fast float %1661, %1639
  %1665 = fsub fast float %1441, %932
  %1666 = fmul fast float %1650, %1665
  %1667 = fadd fast float %1666, %932
  %1668 = fsub fast float %1583, %1640
  %1669 = fsub fast float %1584, %1641
  %1670 = fsub fast float %1585, %1642
  %1671 = fmul fast float %1655, %1668
  %1672 = fmul fast float %1655, %1669
  %1673 = fmul fast float %1655, %1670
  %1674 = fadd fast float %1671, %1640
  %1675 = fadd fast float %1672, %1641
  %1676 = fadd fast float %1673, %1642
  %1677 = fsub fast float %1627, %937
  %1678 = fmul fast float %1650, %1677
  %1679 = fadd fast float %1678, %937
  br label %1725

; <label>:1680                                    ; preds = %1647
  %1681 = icmp eq i32 %1645, 1
  br i1 %1681, label %1682, label %1695

; <label>:1682                                    ; preds = %1680
  %1683 = fadd fast float %1455, -1.000000e+00
  %1684 = fadd fast float %1456, -1.000000e+00
  %1685 = fadd fast float %1457, -1.000000e+00
  %1686 = fmul fast float %1650, %1683
  %1687 = fmul fast float %1650, %1684
  %1688 = fmul fast float %1650, %1685
  %1689 = fadd fast float %1686, 1.000000e+00
  %1690 = fadd fast float %1687, 1.000000e+00
  %1691 = fadd fast float %1688, 1.000000e+00
  %1692 = fmul fast float %1689, %1637
  %1693 = fmul fast float %1690, %1638
  %1694 = fmul fast float %1691, %1639
  br label %1725

; <label>:1695                                    ; preds = %1680
  %1696 = icmp eq i32 %1645, 2
  br i1 %1696, label %1697, label %1725

; <label>:1697                                    ; preds = %1695
  %1698 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1699 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1700 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1701 = fadd fast float %1698, -5.000000e-01
  %1702 = fadd fast float %1699, -5.000000e-01
  %1703 = fadd fast float %1700, -5.000000e-01
  %1704 = fmul fast float %1701, %1650
  %1705 = fmul fast float %1702, %1650
  %1706 = fmul fast float %1703, %1650
  %1707 = fadd fast float %1704, 5.000000e-01
  %1708 = fadd fast float %1705, 5.000000e-01
  %1709 = fadd fast float %1706, 5.000000e-01
  %1710 = fmul fast float %1707, 2.000000e+00
  %1711 = fsub fast float 1.000000e+00, %1710
  %1712 = fmul fast float %1711, %1637
  %1713 = fadd fast float %1712, %1710
  %1714 = fmul fast float %1713, %1637
  %1715 = fmul fast float %1708, 2.000000e+00
  %1716 = fsub fast float 1.000000e+00, %1715
  %1717 = fmul fast float %1716, %1638
  %1718 = fadd fast float %1717, %1715
  %1719 = fmul fast float %1718, %1638
  %1720 = fmul fast float %1709, 2.000000e+00
  %1721 = fsub fast float 1.000000e+00, %1720
  %1722 = fmul fast float %1721, %1639
  %1723 = fadd fast float %1722, %1720
  %1724 = fmul fast float %1723, %1639
  br label %1725

; <label>:1725                                    ; preds = %1697, %1695, %1682, %1652, %1636
  %1726 = phi float [ %1637, %1636 ], [ %1714, %1697 ], [ %1637, %1695 ], [ %1692, %1682 ], [ %1662, %1652 ]
  %1727 = phi float [ %1638, %1636 ], [ %1719, %1697 ], [ %1638, %1695 ], [ %1693, %1682 ], [ %1663, %1652 ]
  %1728 = phi float [ %1639, %1636 ], [ %1724, %1697 ], [ %1639, %1695 ], [ %1694, %1682 ], [ %1664, %1652 ]
  %1729 = phi float [ %1640, %1636 ], [ %1640, %1697 ], [ %1640, %1695 ], [ %1640, %1682 ], [ %1674, %1652 ]
  %1730 = phi float [ %1641, %1636 ], [ %1641, %1697 ], [ %1641, %1695 ], [ %1641, %1682 ], [ %1675, %1652 ]
  %1731 = phi float [ %1642, %1636 ], [ %1642, %1697 ], [ %1642, %1695 ], [ %1642, %1682 ], [ %1676, %1652 ]
  %1732 = phi float [ %932, %1636 ], [ %932, %1697 ], [ %932, %1695 ], [ %932, %1682 ], [ %1667, %1652 ]
  %1733 = phi float [ %937, %1636 ], [ %937, %1697 ], [ %937, %1695 ], [ %937, %1682 ], [ %1679, %1652 ]
  %1734 = and i32 %1644, 12
  %1735 = icmp eq i32 %1734, 12
  br i1 %1735, label %1818, label %1736

; <label>:1736                                    ; preds = %1725
  %1737 = and i32 %1644, 2097184
  %1738 = icmp eq i32 %1737, 2097184
  %1739 = select i1 %1738, float %1235, float 0.000000e+00
  %1740 = and i32 %1644, 4194336
  %1741 = icmp eq i32 %1740, 4194336
  %1742 = select i1 %1741, float %1235, float 0.000000e+00
  %1743 = and i32 %1644, 8388640
  %1744 = icmp eq i32 %1743, 8388640
  %1745 = select i1 %1744, float %1235, float 0.000000e+00
  %1746 = and i32 %1644, 16384
  %1747 = icmp ne i32 %1746, 0
  %1748 = select i1 %1747, float %1235, float 0.000000e+00
  %1749 = icmp eq i32 %1734, 0
  br i1 %1749, label %1750, label %1766

; <label>:1750                                    ; preds = %1736
  %1751 = fsub fast float %1536, %924
  %1752 = fsub fast float %1537, %925
  %1753 = fmul fast float %1739, %1751
  %1754 = fmul fast float %1739, %1752
  %1755 = fadd fast float %1753, %924
  %1756 = fadd fast float %1754, %925
  %1757 = fsub fast float %1538, %935
  %1758 = fmul fast float %1742, %1757
  %1759 = fadd fast float %1758, %935
  %1760 = fsub fast float %1535, %934
  %1761 = fmul fast float %1745, %1760
  %1762 = fadd fast float %1761, %934
  %1763 = fsub fast float %1614, %936
  %1764 = fmul fast float %1748, %1763
  %1765 = fadd fast float %1764, %936
  br label %1818

; <label>:1766                                    ; preds = %1736
  %1767 = icmp eq i32 %1734, 4
  br i1 %1767, label %1768, label %1802

; <label>:1768                                    ; preds = %1766
  %1769 = fmul fast float %1739, %1536
  %1770 = fmul fast float %1739, %1537
  %1771 = fadd fast float %1769, %924
  %1772 = fadd fast float %1770, %925
  %1773 = call float @dx.op.binary.f32(i32 36, float %935, float %1538)  ; FMin(a,b)
  %1774 = fsub fast float %1773, %935
  %1775 = fmul fast float %1774, %1742
  %1776 = fadd fast float %1775, %935
  %1777 = fadd fast float %1535, %934
  %1778 = fmul fast float %1777, 0x3FF337FAE0000000
  %1779 = fmul fast float %934, %934
  %1780 = fmul fast float %1535, %1535
  %1781 = fadd fast float %1780, %1779
  %1782 = fmul fast float %1781, 0x3FE5152B00000000
  %1783 = fmul fast float %934, 0xBFCC1F85E0000000
  %1784 = fmul fast float %1783, %1535
  %1785 = fadd fast float %1784, 0xBFE1363700000000
  %1786 = fadd fast float %1785, %1778
  %1787 = fsub fast float %1786, %1782
  %1788 = fmul fast float %1777, 0x3FBA6F0D00000000
  %1789 = fmul fast float %1781, 0x3FD0432880000000
  %1790 = fmul fast float %934, 0xBFEF110800000000
  %1791 = fmul fast float %1790, %1535
  %1792 = fadd fast float %1791, 1.000000e+00
  %1793 = fsub fast float %1792, %1788
  %1794 = fadd fast float %1793, %1789
  %1795 = fdiv fast float %1787, %1794
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1797 = fsub fast float %1796, %934
  %1798 = fmul fast float %1797, %1745
  %1799 = fadd fast float %1798, %934
  %1800 = fmul fast float %1748, %1614
  %1801 = fadd fast float %1800, %936
  br label %1818

; <label>:1802                                    ; preds = %1766
  %1803 = icmp eq i32 %1734, 8
  br i1 %1803, label %1804, label %1818

; <label>:1804                                    ; preds = %1802
  %1805 = fmul fast float %1739, %1536
  %1806 = fmul fast float %1739, %1537
  %1807 = fadd fast float %1805, %924
  %1808 = fadd fast float %1806, %925
  %1809 = call float @dx.op.binary.f32(i32 36, float %935, float %1538)  ; FMin(a,b)
  %1810 = fsub fast float %1809, %935
  %1811 = fmul fast float %1810, %1742
  %1812 = fadd fast float %1811, %935
  %1813 = fsub fast float %1535, %934
  %1814 = fmul fast float %1745, %1813
  %1815 = fadd fast float %1814, %934
  %1816 = fmul fast float %1748, %1614
  %1817 = fadd fast float %1816, %936
  br label %1818

; <label>:1818                                    ; preds = %1804, %1802, %1768, %1750, %1725, %1234, %938, %923
  %1819 = phi float [ %924, %1725 ], [ %924, %1234 ], [ %924, %923 ], [ %1807, %1804 ], [ %924, %1802 ], [ %1771, %1768 ], [ %1755, %1750 ], [ %924, %938 ]
  %1820 = phi float [ %925, %1725 ], [ %925, %1234 ], [ %925, %923 ], [ %1808, %1804 ], [ %925, %1802 ], [ %1772, %1768 ], [ %1756, %1750 ], [ %925, %938 ]
  %1821 = phi float [ %1726, %1725 ], [ %926, %1234 ], [ %926, %923 ], [ %1726, %1804 ], [ %1726, %1802 ], [ %1726, %1768 ], [ %1726, %1750 ], [ %926, %938 ]
  %1822 = phi float [ %1727, %1725 ], [ %927, %1234 ], [ %927, %923 ], [ %1727, %1804 ], [ %1727, %1802 ], [ %1727, %1768 ], [ %1727, %1750 ], [ %927, %938 ]
  %1823 = phi float [ %1728, %1725 ], [ %928, %1234 ], [ %928, %923 ], [ %1728, %1804 ], [ %1728, %1802 ], [ %1728, %1768 ], [ %1728, %1750 ], [ %928, %938 ]
  %1824 = phi float [ %1729, %1725 ], [ %929, %1234 ], [ %929, %923 ], [ %1729, %1804 ], [ %1729, %1802 ], [ %1729, %1768 ], [ %1729, %1750 ], [ %929, %938 ]
  %1825 = phi float [ %1730, %1725 ], [ %930, %1234 ], [ %930, %923 ], [ %1730, %1804 ], [ %1730, %1802 ], [ %1730, %1768 ], [ %1730, %1750 ], [ %930, %938 ]
  %1826 = phi float [ %1731, %1725 ], [ %931, %1234 ], [ %931, %923 ], [ %1731, %1804 ], [ %1731, %1802 ], [ %1731, %1768 ], [ %1731, %1750 ], [ %931, %938 ]
  %1827 = phi float [ %1732, %1725 ], [ %932, %1234 ], [ %932, %923 ], [ %1732, %1804 ], [ %1732, %1802 ], [ %1732, %1768 ], [ %1732, %1750 ], [ %932, %938 ]
  %1828 = phi float [ %934, %1725 ], [ %934, %1234 ], [ %934, %923 ], [ %1815, %1804 ], [ %934, %1802 ], [ %1799, %1768 ], [ %1762, %1750 ], [ %934, %938 ]
  %1829 = phi float [ %935, %1725 ], [ %935, %1234 ], [ %935, %923 ], [ %1812, %1804 ], [ %935, %1802 ], [ %1776, %1768 ], [ %1759, %1750 ], [ %935, %938 ]
  %1830 = phi float [ %936, %1725 ], [ %936, %1234 ], [ %936, %923 ], [ %1817, %1804 ], [ %936, %1802 ], [ %1801, %1768 ], [ %1765, %1750 ], [ %936, %938 ]
  %1831 = phi float [ %1733, %1725 ], [ %937, %1234 ], [ %937, %923 ], [ %1733, %1804 ], [ %1733, %1802 ], [ %1733, %1768 ], [ %1733, %1750 ], [ %937, %938 ]
  br i1 %374, label %2712, label %1832

; <label>:1832                                    ; preds = %1818
  %1833 = icmp ult i32 %427, 3
  %1834 = add i32 %43, 56
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = add i32 %43, 60
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = or i32 %1839, %1836
  %1841 = icmp eq i32 %1840, 0
  br i1 %1841, label %2712, label %1842

; <label>:1842                                    ; preds = %1832
  %1843 = and i32 %1836, 262144
  %1844 = icmp ne i32 %1843, 0
  %1845 = select i1 %1844, float %47, float 1.000000e+00
  %1846 = select i1 %1844, float %48, float 0.000000e+00
  %1847 = select i1 %1844, float %49, float 0.000000e+00
  %1848 = select i1 %1844, float %50, float 1.000000e+00
  %1849 = select i1 %1844, float %51, float %68
  %1850 = select i1 %1844, float %52, float %69
  %1851 = add i32 %43, 316
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = lshr i32 %1853, 16
  %1855 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1854)  ; LegacyF16ToF32(value)
  %1856 = fmul fast float %1855, 0x3F50624DE0000000
  %1857 = add i32 %43, 120
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = lshr i32 %1859, 16
  %1861 = and i32 %1860, 255
  %1862 = lshr i32 %1859, 24
  %1863 = add i32 %43, 324
  %1864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.i32 %1864, 0
  %1866 = and i32 %1865, 65535
  %1867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1866)  ; LegacyF16ToF32(value)
  %1868 = lshr i32 %1865, 16
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = add i32 %43, 64
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = lshr i32 %1872, 22
  %1874 = shl nuw nsw i32 %1873, 5
  %1875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1874)  ; LegacyF16ToF32(value)
  %1876 = shl i32 %1872, 4
  %1877 = and i32 %1876, 32752
  %1878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1877)  ; LegacyF16ToF32(value)
  %1879 = lshr i32 %1872, 7
  %1880 = and i32 %1879, 32752
  %1881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1880)  ; LegacyF16ToF32(value)
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 3
  %1884 = fmul fast float %1883, 1.000000e+03
  %1885 = fmul fast float %324, %1884
  %1886 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1887 = fadd fast float %1886, %314
  %1888 = fmul fast float %325, %1884
  %1889 = call float @dx.op.unary.f32(i32 22, float %1888)  ; Frc(value)
  %1890 = fadd fast float %1889, %316
  %1891 = fmul fast float %1856, %1884
  %1892 = call float @dx.op.unary.f32(i32 22, float %1891)  ; Frc(value)
  %1893 = fmul fast float %1892, 0x401921FB60000000
  %1894 = fadd fast float %1893, %1875
  %1895 = call float @dx.op.unary.f32(i32 13, float %1894)  ; Sin(value)
  %1896 = call float @dx.op.unary.f32(i32 12, float %1894)  ; Cos(value)
  %1897 = fsub fast float -0.000000e+00, %1895
  %1898 = fadd fast float %1849, -5.000000e-01
  %1899 = fadd fast float %1850, -5.000000e-01
  %1900 = fmul fast float %1867, %1898
  %1901 = fmul fast float %1869, %1899
  %1902 = fadd fast float %1900, 5.000000e-01
  %1903 = fadd fast float %1901, 5.000000e-01
  %1904 = fmul fast float %1878, %1902
  %1905 = fmul fast float %1881, %1903
  %1906 = fmul fast float %1896, %1904
  %1907 = call float @dx.op.tertiary.f32(i32 46, float %1897, float %1905, float %1906)  ; FMad(a,b,c)
  %1908 = fmul fast float %1895, %1904
  %1909 = call float @dx.op.tertiary.f32(i32 46, float %1896, float %1905, float %1908)  ; FMad(a,b,c)
  %1910 = fadd fast float %1887, %1907
  %1911 = fadd fast float %1890, %1909
  %1912 = icmp ugt i32 %1861, 1
  %1913 = icmp ugt i32 %1859, 33554431
  %1914 = or i1 %1913, %1912
  br i1 %1914, label %1915, label %1940

; <label>:1915                                    ; preds = %1842
  %1916 = add i32 %43, 260
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = lshr i32 %1918, 16
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = fmul fast float %1883, %1920
  %1922 = call float @dx.op.unary.f32(i32 22, float %1921)  ; Frc(value)
  %1923 = mul nuw nsw i32 %1861, %1862
  %1924 = uitofp i32 %1923 to float
  %1925 = fmul fast float %1922, %1924
  %1926 = call float @dx.op.unary.f32(i32 27, float %1925)  ; Round_ni(value)
  %1927 = fptoui float %1926 to i32
  %1928 = urem i32 %1927, %1861
  %1929 = udiv i32 %1927, %1862
  %1930 = call float @dx.op.unary.f32(i32 22, float %1910)  ; Frc(value)
  %1931 = call float @dx.op.unary.f32(i32 22, float %1911)  ; Frc(value)
  %1932 = uitofp i32 %1928 to float
  %1933 = uitofp i32 %1929 to float
  %1934 = fadd fast float %1930, %1932
  %1935 = fadd fast float %1931, %1933
  %1936 = uitofp i32 %1861 to float
  %1937 = uitofp i32 %1862 to float
  %1938 = fdiv fast float %1934, %1936
  %1939 = fdiv fast float %1935, %1937
  br label %1940

; <label>:1940                                    ; preds = %1915, %1842
  %1941 = phi float [ %1938, %1915 ], [ %1910, %1842 ]
  %1942 = phi float [ %1939, %1915 ], [ %1911, %1842 ]
  %1943 = and i32 %1836, 16777216
  %1944 = icmp eq i32 %1943, 0
  br i1 %1944, label %2054, label %1945

; <label>:1945                                    ; preds = %1940
  %1946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1947 = extractvalue %dx.types.CBufRet.f32 %1946, 0
  %1948 = extractvalue %dx.types.CBufRet.f32 %1946, 1
  %1949 = extractvalue %dx.types.CBufRet.f32 %1946, 2
  %1950 = fadd fast float %1947, %143
  %1951 = fadd fast float %1948, %144
  %1952 = fadd fast float %1949, %145
  %1953 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1954 = extractvalue %dx.types.CBufRet.f32 %1953, 0
  %1955 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1956 = icmp eq i32 %44, 65535
  br i1 %1956, label %2051, label %1957

; <label>:1957                                    ; preds = %1945
  %1958 = lshr i32 %44, 1
  %1959 = shl i32 %1958, 2
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = and i32 %44, 1
  %1963 = icmp ne i32 %1962, 0
  %1964 = lshr i32 %1961, 16
  %1965 = and i32 %1961, 65535
  %1966 = select i1 %1963, i32 %1964, i32 %1965
  %1967 = icmp eq i32 %1966, 65535
  br i1 %1967, label %2047, label %1968

; <label>:1968                                    ; preds = %1957
  %1969 = mul nuw nsw i32 %1966, 40
  %1970 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1969, i32 undef)  ; BufferLoad(srv,index,wot)
  %1971 = extractvalue %dx.types.ResRet.f32 %1970, 0
  %1972 = extractvalue %dx.types.ResRet.f32 %1970, 1
  %1973 = extractvalue %dx.types.ResRet.f32 %1970, 2
  %1974 = add nuw nsw i32 %1969, 12
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1979 = add nuw nsw i32 %1969, 24
  %1980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = extractvalue %dx.types.ResRet.f32 %1980, 1
  %1983 = extractvalue %dx.types.ResRet.f32 %1980, 2
  %1984 = add nuw nsw i32 %1969, 36
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = fsub fast float %1950, %1971
  %1988 = fsub fast float %1951, %1972
  %1989 = fsub fast float %1952, %1973
  %1990 = fmul fast float %1986, %1987
  %1991 = fmul fast float %1986, %1988
  %1992 = fmul fast float %1986, %1989
  %1993 = call float @dx.op.unary.f32(i32 27, float %1990)  ; Round_ni(value)
  %1994 = call float @dx.op.unary.f32(i32 27, float %1991)  ; Round_ni(value)
  %1995 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1996 = fadd fast float %1993, 5.000000e-01
  %1997 = fadd fast float %1994, 5.000000e-01
  %1998 = fadd fast float %1995, 5.000000e-01
  %1999 = fmul fast float %1996, %1976
  %2000 = fmul fast float %1997, %1977
  %2001 = fmul fast float %1998, %1978
  %2002 = shl i32 %44, 2
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = add i32 %2004, 0
  %2006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2005, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2007 = call float @dx.op.unary.f32(i32 22, float %1999)  ; Frc(value)
  %2008 = call float @dx.op.unary.f32(i32 22, float %2000)  ; Frc(value)
  %2009 = call float @dx.op.unary.f32(i32 22, float %2001)  ; Frc(value)
  %2010 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2006, %dx.types.Handle %40, float %2007, float %2008, float %2009, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = extractvalue %dx.types.ResRet.f32 %2010, 1
  %2013 = extractvalue %dx.types.ResRet.f32 %2010, 2
  %2014 = fmul fast float %2011, 1.023000e+03
  %2015 = fmul fast float %2012, 1.023000e+03
  %2016 = fmul fast float %2013, 1.023000e+03
  %2017 = fadd fast float %2014, 5.000000e-01
  %2018 = fadd fast float %2015, 5.000000e-01
  %2019 = fadd fast float %2016, 5.000000e-01
  %2020 = call float @dx.op.unary.f32(i32 27, float %2017)  ; Round_ni(value)
  %2021 = call float @dx.op.unary.f32(i32 27, float %2018)  ; Round_ni(value)
  %2022 = call float @dx.op.unary.f32(i32 27, float %2019)  ; Round_ni(value)
  %2023 = fsub fast float %1990, %1993
  %2024 = fsub fast float %1991, %1994
  %2025 = fsub fast float %1992, %1995
  %2026 = fmul fast float %2023, 7.500000e-01
  %2027 = fmul fast float %2024, 7.500000e-01
  %2028 = fmul fast float %2025, 7.500000e-01
  %2029 = fadd fast float %1993, 1.250000e-01
  %2030 = fadd fast float %2029, %2026
  %2031 = fadd fast float %2030, %2020
  %2032 = fadd fast float %1994, 1.250000e-01
  %2033 = fadd fast float %2032, %2027
  %2034 = fadd fast float %2033, %2021
  %2035 = fadd fast float %1995, 1.250000e-01
  %2036 = fadd fast float %2035, %2028
  %2037 = fadd fast float %2036, %2022
  %2038 = fmul fast float %2031, %1981
  %2039 = fmul fast float %2034, %1982
  %2040 = fmul fast float %2037, %1983
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2002, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = add i32 %2042, 0
  %2044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2044, %dx.types.Handle %38, float %2038, float %2039, float %2040, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2046 = extractvalue %dx.types.ResRet.f32 %2045, 0
  br label %2047

; <label>:2047                                    ; preds = %1968, %1957
  %2048 = phi float [ %2046, %1968 ], [ -1.000000e+00, %1957 ]
  %2049 = fadd fast float %2048, %1955
  %2050 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  br label %2051

; <label>:2051                                    ; preds = %2047, %1945
  %2052 = phi float [ %2050, %2047 ], [ %1955, %1945 ]
  %2053 = fmul fast float %2052, %423
  br label %2054

; <label>:2054                                    ; preds = %2051, %1940
  %2055 = phi float [ %2053, %2051 ], [ %423, %1940 ]
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = and i32 %2057, 256
  %2059 = icmp eq i32 %2058, 0
  br i1 %2059, label %2106, label %2060

; <label>:2060                                    ; preds = %2054
  %2061 = add i32 %43, 480
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = add i32 %2063, 0
  %2065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2066 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2065, %dx.types.Handle %77, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2067 = extractvalue %dx.types.ResRet.f32 %2066, 0
  %2068 = add i32 %43, 132
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = shl i32 %2070, 4
  %2072 = and i32 %2071, 32752
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = lshr i32 %2070, 7
  %2075 = and i32 %2074, 32752
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = fsub fast float 1.000000e+00, %2055
  %2078 = call float @dx.op.binary.f32(i32 35, float %2077, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2079 = bitcast float %2055 to i32
  %2080 = sitofp i32 %2079 to float
  %2081 = fadd fast float %2080, 0xC1CFBF8940000000
  %2082 = fmul fast float %2076, %2081
  %2083 = fadd fast float %2082, 0x41CFBF8940000000
  %2084 = fptosi float %2083 to i32
  %2085 = bitcast i32 %2084 to float
  %2086 = bitcast float %2078 to i32
  %2087 = sitofp i32 %2086 to float
  %2088 = fadd fast float %2087, 0xC1CFBF8940000000
  %2089 = fmul fast float %2088, %2076
  %2090 = fadd fast float %2089, 0x41CFBF8940000000
  %2091 = fptosi float %2090 to i32
  %2092 = bitcast i32 %2091 to float
  %2093 = fmul fast float %2085, %2073
  %2094 = fmul fast float %2092, %2073
  %2095 = fsub fast float %2078, %2093
  %2096 = fadd fast float %2094, %2078
  %2097 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2098 = call float @dx.op.unary.f32(i32 7, float %2096)  ; Saturate(value)
  %2099 = fsub fast float %2067, %2097
  %2100 = fsub fast float %2098, %2097
  %2101 = bitcast float %2100 to i32
  %2102 = sub nsw i32 2129859010, %2101
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2103, %2099
  %2105 = call float @dx.op.unary.f32(i32 7, float %2104)  ; Saturate(value)
  br label %2106

; <label>:2106                                    ; preds = %2060, %2054
  %2107 = phi float [ %2105, %2060 ], [ %2055, %2054 ]
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = and i32 %2109, 128
  %2111 = icmp eq i32 %2110, 0
  br i1 %2111, label %2128, label %2112

; <label>:2112                                    ; preds = %2106
  %2113 = add i32 %43, 464
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2113, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = add i32 %2115, 0
  %2117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2118 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2117, %dx.types.Handle %77, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2119 = extractvalue %dx.types.ResRet.f32 %2118, 0
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = and i32 %2121, 524288
  %2123 = icmp ne i32 %2122, 0
  %2124 = fcmp fast ogt float %2119, 0x3FE0101020000000
  %2125 = select i1 %2124, float 1.000000e+00, float 0.000000e+00
  %2126 = select i1 %2123, float %2125, float %2119
  %2127 = fmul fast float %2126, %2107
  br label %2128

; <label>:2128                                    ; preds = %2112, %2106
  %2129 = phi float [ %2127, %2112 ], [ %2107, %2106 ]
  %2130 = fcmp fast ult float %2129, 0x3F70101020000000
  br i1 %2130, label %2712, label %2131

; <label>:2131                                    ; preds = %2128
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = and i32 %2133, 16
  %2135 = icmp eq i32 %2134, 0
  br i1 %2135, label %2334, label %2136

; <label>:2136                                    ; preds = %2131
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = add i32 %43, 416
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = add i32 %2141, 0
  %2143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2143, %dx.types.Handle %76, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.ResRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.ResRet.f32 %2144, 2
  %2148 = extractvalue %dx.types.ResRet.f32 %2144, 3
  %2149 = and i32 %2138, 255
  %2150 = uitofp i32 %2149 to float
  %2151 = lshr i32 %2138, 8
  %2152 = and i32 %2151, 255
  %2153 = uitofp i32 %2152 to float
  %2154 = fmul fast float %2148, %2150
  %2155 = fadd fast float %2154, %2153
  %2156 = fmul fast float %2155, 0x3F70101000000000
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 512
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2169, label %2161

; <label>:2161                                    ; preds = %2136
  %2162 = add i32 %43, 496
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %2164, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2166, %dx.types.Handle %77, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  br label %2169

; <label>:2169                                    ; preds = %2161, %2136
  %2170 = phi float [ %2168, %2161 ], [ 1.000000e+00, %2136 ]
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = and i32 %2172, 33554432
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2281, label %2175

; <label>:2175                                    ; preds = %2169
  %2176 = add i32 %43, 256
  %2177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2176, i32 undef)  ; BufferLoad(srv,index,wot)
  %2178 = extractvalue %dx.types.ResRet.i32 %2177, 0
  %2179 = and i32 %2178, 65535
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = lshr i32 %2178, 16
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = add i32 %43, 260
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2183, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = and i32 %2185, 65535
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = lshr i32 %2189, 24
  %2191 = uitofp i32 %2190 to float
  %2192 = fmul fast float %2191, 0x3F70101020000000
  %2193 = and i32 %2189, 255
  %2194 = uitofp i32 %2193 to float
  %2195 = fmul fast float %2194, 0x3F70101020000000
  %2196 = lshr i32 %2189, 8
  %2197 = and i32 %2196, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = fmul fast float %2198, 0x3F70101020000000
  %2200 = lshr i32 %2189, 16
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = fmul fast float %2202, 0x3F70101020000000
  %2204 = add i32 %43, 252
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = lshr i32 %2206, 24
  %2208 = uitofp i32 %2207 to float
  %2209 = fmul fast float %2208, 0x3F70101020000000
  %2210 = and i32 %2206, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = fmul fast float %2211, 0x3F70101020000000
  %2213 = lshr i32 %2206, 8
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2215, 0x3F70101020000000
  %2217 = lshr i32 %2206, 16
  %2218 = and i32 %2217, 255
  %2219 = uitofp i32 %2218 to float
  %2220 = fmul fast float %2219, 0x3F70101020000000
  %2221 = bitcast float %2145 to i32
  %2222 = ashr i32 %2221, 1
  %2223 = sub nsw i32 1597463174, %2222
  %2224 = bitcast i32 %2223 to float
  %2225 = fmul fast float %2145, 5.000000e-01
  %2226 = fmul fast float %2224, %2224
  %2227 = fmul fast float %2226, %2225
  %2228 = fsub fast float 1.500000e+00, %2227
  %2229 = fmul fast float %2224, %2145
  %2230 = fmul fast float %2229, %2228
  %2231 = bitcast float %2146 to i32
  %2232 = ashr i32 %2231, 1
  %2233 = sub nsw i32 1597463174, %2232
  %2234 = bitcast i32 %2233 to float
  %2235 = fmul fast float %2146, 5.000000e-01
  %2236 = fmul fast float %2234, %2234
  %2237 = fmul fast float %2236, %2235
  %2238 = fsub fast float 1.500000e+00, %2237
  %2239 = fmul fast float %2234, %2146
  %2240 = fmul fast float %2239, %2238
  %2241 = bitcast float %2147 to i32
  %2242 = ashr i32 %2241, 1
  %2243 = sub nsw i32 1597463174, %2242
  %2244 = bitcast i32 %2243 to float
  %2245 = fmul fast float %2147, 5.000000e-01
  %2246 = fmul fast float %2244, %2244
  %2247 = fmul fast float %2246, %2245
  %2248 = fsub fast float 1.500000e+00, %2247
  %2249 = fmul fast float %2244, %2147
  %2250 = fmul fast float %2249, %2248
  %2251 = fsub fast float %2230, %2212
  %2252 = fsub fast float %2240, %2216
  %2253 = fsub fast float %2250, %2220
  %2254 = fmul fast float %2251, %2180
  %2255 = fmul fast float %2252, %2182
  %2256 = fmul fast float %2253, %2187
  %2257 = fadd fast float %2254, %2195
  %2258 = fadd fast float %2255, %2199
  %2259 = fadd fast float %2256, %2203
  %2260 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2261 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = fmul fast float %2260, %2260
  %2264 = fmul fast float %2261, %2261
  %2265 = fmul fast float %2262, %2262
  %2266 = fsub fast float %2263, %2145
  %2267 = fsub fast float %2264, %2146
  %2268 = fsub fast float %2265, %2147
  %2269 = fmul fast float %2266, %2170
  %2270 = fmul fast float %2267, %2170
  %2271 = fmul fast float %2268, %2170
  %2272 = fadd fast float %2269, %2145
  %2273 = fadd fast float %2270, %2146
  %2274 = fadd fast float %2271, %2147
  %2275 = fadd fast float %2192, %2156
  %2276 = fsub fast float %2275, %2209
  %2277 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2278 = fsub fast float %2277, %2156
  %2279 = fmul fast float %2278, %2170
  %2280 = fadd fast float %2279, %2156
  br label %2334

; <label>:2281                                    ; preds = %2169
  %2282 = and i32 %2172, 134217728
  %2283 = icmp eq i32 %2282, 0
  br i1 %2283, label %2318, label %2284

; <label>:2284                                    ; preds = %2281
  %2285 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2286 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2287 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %2288 = fadd fast float %2285, -5.000000e-01
  %2289 = fadd fast float %2286, -5.000000e-01
  %2290 = fadd fast float %2287, -5.000000e-01
  %2291 = fmul fast float %2288, %2170
  %2292 = fmul fast float %2289, %2170
  %2293 = fmul fast float %2290, %2170
  %2294 = fadd fast float %2291, 5.000000e-01
  %2295 = fadd fast float %2292, 5.000000e-01
  %2296 = fadd fast float %2293, 5.000000e-01
  %2297 = call float @dx.op.unary.f32(i32 24, float %2145)  ; Sqrt(value)
  %2298 = call float @dx.op.unary.f32(i32 24, float %2146)  ; Sqrt(value)
  %2299 = call float @dx.op.unary.f32(i32 24, float %2147)  ; Sqrt(value)
  %2300 = fmul fast float %2294, 2.000000e+00
  %2301 = fsub fast float 1.000000e+00, %2300
  %2302 = fmul fast float %2301, %2297
  %2303 = fadd fast float %2302, %2300
  %2304 = fmul fast float %2303, %2297
  %2305 = fmul fast float %2295, 2.000000e+00
  %2306 = fsub fast float 1.000000e+00, %2305
  %2307 = fmul fast float %2306, %2298
  %2308 = fadd fast float %2307, %2305
  %2309 = fmul fast float %2308, %2298
  %2310 = fmul fast float %2296, 2.000000e+00
  %2311 = fsub fast float 1.000000e+00, %2310
  %2312 = fmul fast float %2311, %2299
  %2313 = fadd fast float %2312, %2310
  %2314 = fmul fast float %2313, %2299
  %2315 = fmul fast float %2304, %2304
  %2316 = fmul fast float %2309, %2309
  %2317 = fmul fast float %2314, %2314
  br label %2334

; <label>:2318                                    ; preds = %2281
  %2319 = fmul fast float %301, %301
  %2320 = fmul fast float %305, %305
  %2321 = fmul fast float %309, %309
  %2322 = fadd fast float %2319, -1.000000e+00
  %2323 = fadd fast float %2320, -1.000000e+00
  %2324 = fadd fast float %2321, -1.000000e+00
  %2325 = fmul fast float %2170, %2322
  %2326 = fmul fast float %2170, %2323
  %2327 = fmul fast float %2170, %2324
  %2328 = fadd fast float %2325, 1.000000e+00
  %2329 = fadd fast float %2326, 1.000000e+00
  %2330 = fadd fast float %2327, 1.000000e+00
  %2331 = fmul fast float %2328, %2145
  %2332 = fmul fast float %2329, %2146
  %2333 = fmul fast float %2330, %2147
  br label %2334

; <label>:2334                                    ; preds = %2318, %2284, %2175, %2131
  %2335 = phi float [ %2280, %2175 ], [ %2156, %2284 ], [ %2156, %2318 ], [ 0x3FA23C0BE0000000, %2131 ]
  %2336 = phi float [ %2272, %2175 ], [ %2315, %2284 ], [ %2331, %2318 ], [ 1.000000e+00, %2131 ]
  %2337 = phi float [ %2273, %2175 ], [ %2316, %2284 ], [ %2332, %2318 ], [ 1.000000e+00, %2131 ]
  %2338 = phi float [ %2274, %2175 ], [ %2317, %2284 ], [ %2333, %2318 ], [ 1.000000e+00, %2131 ]
  %2339 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2340 = extractvalue %dx.types.CBufRet.i32 %2339, 1
  %2341 = and i32 %2340, 1
  %2342 = icmp ne i32 %2341, 0
  %2343 = add i32 %43, 356
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2343, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 32
  %2347 = icmp ne i32 %2346, 0
  %2348 = and i1 %2342, %2347
  %2349 = select i1 %2348, float 1.000000e+00, float %2336
  %2350 = select i1 %2348, float 0x3FD3333340000000, float %2337
  %2351 = select i1 %2348, float 0x3FD3333340000000, float %2338
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 32
  %2355 = icmp eq i32 %2354, 0
  br i1 %2355, label %2428, label %2356

; <label>:2356                                    ; preds = %2334
  %2357 = add i32 %43, 124
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = add i32 %43, 432
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = add i32 %2362, 0
  %2364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2364, %dx.types.Handle %76, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  %2367 = extractvalue %dx.types.ResRet.f32 %2365, 1
  %2368 = extractvalue %dx.types.ResRet.f32 %2365, 2
  %2369 = extractvalue %dx.types.ResRet.f32 %2365, 3
  %2370 = and i32 %2359, 255
  %2371 = uitofp i32 %2370 to float
  %2372 = lshr i32 %2359, 8
  %2373 = and i32 %2372, 255
  %2374 = uitofp i32 %2373 to float
  %2375 = lshr i32 %2359, 16
  %2376 = and i32 %2375, 255
  %2377 = uitofp i32 %2376 to float
  %2378 = fmul fast float %2377, 0x3F70101000000000
  %2379 = fmul fast float %2366, %2371
  %2380 = fadd fast float %2379, %2374
  %2381 = fmul fast float %2380, 0x3F70101000000000
  %2382 = fadd fast float %2367, -5.000000e-01
  %2383 = fadd fast float %2369, -5.000000e-01
  %2384 = fmul fast float %2382, %2378
  %2385 = fmul fast float %2383, %2378
  %2386 = fadd fast float %2384, 5.000000e-01
  %2387 = fadd fast float %2385, 5.000000e-01
  %2388 = fmul fast float %2386, 2.000000e+00
  %2389 = fadd fast float %2388, -1.000000e+00
  %2390 = fmul fast float %2387, 2.000000e+00
  %2391 = fadd fast float %2390, -1.000000e+00
  %2392 = fadd fast float %2389, %2391
  %2393 = fmul fast float %2392, 5.000000e-01
  %2394 = fsub fast float %2389, %2391
  %2395 = fmul fast float %2394, 5.000000e-01
  %2396 = call float @dx.op.unary.f32(i32 6, float %2393)  ; FAbs(value)
  %2397 = fsub fast float 1.000000e+00, %2396
  %2398 = call float @dx.op.unary.f32(i32 6, float %2395)  ; FAbs(value)
  %2399 = fsub fast float %2397, %2398
  %2400 = call float @dx.op.dot3.f32(i32 55, float %2393, float %2395, float %2399, float %2393, float %2395, float %2399)  ; Dot3(ax,ay,az,bx,by,bz)
  %2401 = call float @dx.op.unary.f32(i32 25, float %2400)  ; Rsqrt(value)
  %2402 = fmul fast float %2393, %2401
  %2403 = fmul fast float %2395, %2401
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = and i32 %2405, 67108864
  %2407 = icmp eq i32 %2406, 0
  br i1 %2407, label %2424, label %2408

; <label>:2408                                    ; preds = %2356
  %2409 = add i32 %43, 312
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 65535
  %2413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2412)  ; LegacyF16ToF32(value)
  %2414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, 65535
  %2417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2416)  ; LegacyF16ToF32(value)
  %2418 = lshr i32 %2411, 16
  %2419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2418)  ; LegacyF16ToF32(value)
  %2420 = fsub fast float %2381, %2419
  %2421 = fmul fast float %2420, %2413
  %2422 = fadd fast float %2421, %2417
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  br label %2424

; <label>:2424                                    ; preds = %2408, %2356
  %2425 = phi float [ %2423, %2408 ], [ %2381, %2356 ]
  %2426 = call float @dx.op.dot2.f32(i32 54, float %2402, float %2403, float %1845, float %1846)  ; Dot2(ax,ay,bx,by)
  %2427 = call float @dx.op.dot2.f32(i32 54, float %2402, float %2403, float %1847, float %1848)  ; Dot2(ax,ay,bx,by)
  br label %2428

; <label>:2428                                    ; preds = %2424, %2334
  %2429 = phi float [ %2425, %2424 ], [ 0x3FD6666660000000, %2334 ]
  %2430 = phi float [ %2426, %2424 ], [ 0.000000e+00, %2334 ]
  %2431 = phi float [ %2427, %2424 ], [ 0.000000e+00, %2334 ]
  %2432 = phi float [ %2368, %2424 ], [ 1.000000e+00, %2334 ]
  %2433 = add i32 %43, 192
  %2434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.i32 %2434, 0
  %2436 = lshr i32 %2435, 22
  %2437 = shl nuw nsw i32 %2436, 5
  %2438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2437)  ; LegacyF16ToF32(value)
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 64
  %2442 = icmp eq i32 %2441, 0
  br i1 %2442, label %2476, label %2443

; <label>:2443                                    ; preds = %2428
  %2444 = add i32 %43, 448
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2444, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = add i32 %2446, 0
  %2448 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2447, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 131072
  %2452 = icmp eq i32 %2451, 0
  %2453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2448, %dx.types.Handle %76, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2454 = extractvalue %dx.types.ResRet.f32 %2453, 0
  %2455 = extractvalue %dx.types.ResRet.f32 %2453, 1
  %2456 = extractvalue %dx.types.ResRet.f32 %2453, 2
  %2457 = fmul fast float %2454, %289
  %2458 = fmul fast float %2455, %292
  %2459 = fmul fast float %2456, %295
  br i1 %2452, label %2466, label %2460

; <label>:2460                                    ; preds = %2443
  %2461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2462 = extractvalue %dx.types.CBufRet.f32 %2461, 0
  %2463 = fmul fast float %2462, %2457
  %2464 = fmul fast float %2462, %2458
  %2465 = fmul fast float %2462, %2459
  br label %2466

; <label>:2466                                    ; preds = %2460, %2443
  %2467 = phi float [ %2463, %2460 ], [ %2457, %2443 ]
  %2468 = phi float [ %2464, %2460 ], [ %2458, %2443 ]
  %2469 = phi float [ %2465, %2460 ], [ %2459, %2443 ]
  %2470 = fmul fast float %2467, %2438
  %2471 = select i1 %185, float %2470, float %2467
  %2472 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2468, float %2469, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2473 = select i1 %185, float 0.000000e+00, float %2467
  %2474 = select i1 %185, float %2472, float %2468
  %2475 = select i1 %185, float 0.000000e+00, float %2469
  br label %2476

; <label>:2476                                    ; preds = %2466, %2428
  %2477 = phi float [ %2473, %2466 ], [ 0.000000e+00, %2428 ]
  %2478 = phi float [ %2474, %2466 ], [ 0.000000e+00, %2428 ]
  %2479 = phi float [ %2475, %2466 ], [ 0.000000e+00, %2428 ]
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = and i32 %2481, 26624
  %2483 = icmp eq i32 %2482, 0
  br i1 %2483, label %2507, label %2484

; <label>:2484                                    ; preds = %2476
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = and i32 %2486, 16384
  %2488 = icmp eq i32 %2487, 0
  br i1 %2488, label %2507, label %2489

; <label>:2489                                    ; preds = %2484
  %2490 = and i32 %2486, 1048576
  %2491 = icmp ne i32 %2490, 0
  %2492 = add i32 %43, 512
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = add i32 %2494, 0
  %2496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2496, %dx.types.Handle %77, float %1941, float %1942, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2498 = extractvalue %dx.types.ResRet.f32 %2497, 0
  %2499 = add i32 %43, 128
  %2500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2499, i32 undef)  ; BufferLoad(srv,index,wot)
  %2501 = extractvalue %dx.types.ResRet.i32 %2500, 0
  %2502 = lshr i32 %2501, 24
  %2503 = uitofp i32 %2502 to float
  %2504 = fmul fast float %2498, 0x3F70101020000000
  %2505 = select i1 %2491, float 0x3F70101020000000, float %2504
  %2506 = fmul fast float %2505, %2503
  br label %2507

; <label>:2507                                    ; preds = %2489, %2484, %2476
  %2508 = phi float [ %2506, %2489 ], [ 0.000000e+00, %2484 ], [ 0.000000e+00, %2476 ]
  %2509 = add i32 %43, 128
  %2510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2509, i32 undef)  ; BufferLoad(srv,index,wot)
  %2511 = extractvalue %dx.types.ResRet.i32 %2510, 0
  %2512 = and i32 %2511, 255
  %2513 = uitofp i32 %2512 to float
  %2514 = lshr i32 %2511, 8
  %2515 = and i32 %2514, 255
  %2516 = uitofp i32 %2515 to float
  %2517 = call float @dx.op.dot3.f32(i32 55, float %2349, float %2350, float %2351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2518 = fmul fast float %2516, %2517
  %2519 = fadd fast float %2518, %2513
  %2520 = fmul fast float %2519, 0x3F70101020000000
  %2521 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  br i1 %1833, label %2522, label %2530

; <label>:2522                                    ; preds = %2507
  %2523 = fsub fast float 1.000000e+00, %2129
  %2524 = fmul fast float %2523, %1821
  %2525 = fmul fast float %2523, %1822
  %2526 = fmul fast float %2523, %1823
  %2527 = fmul fast float %2523, %1824
  %2528 = fmul fast float %2523, %1825
  %2529 = fmul fast float %2523, %1826
  br label %2530

; <label>:2530                                    ; preds = %2522, %2507
  %2531 = phi float [ %2524, %2522 ], [ %1821, %2507 ]
  %2532 = phi float [ %2525, %2522 ], [ %1822, %2507 ]
  %2533 = phi float [ %2526, %2522 ], [ %1823, %2507 ]
  %2534 = phi float [ %2527, %2522 ], [ %1824, %2507 ]
  %2535 = phi float [ %2528, %2522 ], [ %1825, %2507 ]
  %2536 = phi float [ %2529, %2522 ], [ %1826, %2507 ]
  %2537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2538 = extractvalue %dx.types.ResRet.i32 %2537, 0
  %2539 = and i32 %2538, 3
  %2540 = icmp eq i32 %2539, 3
  br i1 %2540, label %2619, label %2541

; <label>:2541                                    ; preds = %2530
  %2542 = and i32 %2538, 16
  %2543 = icmp ne i32 %2542, 0
  %2544 = select i1 %2543, float %2129, float 0.000000e+00
  %2545 = icmp eq i32 %2539, 0
  br i1 %2545, label %2546, label %2574

; <label>:2546                                    ; preds = %2541
  %2547 = and i32 %2538, 64
  %2548 = icmp ne i32 %2547, 0
  %2549 = select i1 %2548, float %2129, float 0.000000e+00
  %2550 = fsub fast float %2349, %2531
  %2551 = fsub fast float %2350, %2532
  %2552 = fsub fast float %2351, %2533
  %2553 = fmul fast float %2544, %2550
  %2554 = fmul fast float %2544, %2551
  %2555 = fmul fast float %2544, %2552
  %2556 = fadd fast float %2553, %2531
  %2557 = fadd fast float %2554, %2532
  %2558 = fadd fast float %2555, %2533
  %2559 = fsub fast float %2335, %1827
  %2560 = fmul fast float %2544, %2559
  %2561 = fadd fast float %2560, %1827
  %2562 = fsub fast float %2477, %2534
  %2563 = fsub fast float %2478, %2535
  %2564 = fsub fast float %2479, %2536
  %2565 = fmul fast float %2549, %2562
  %2566 = fmul fast float %2549, %2563
  %2567 = fmul fast float %2549, %2564
  %2568 = fadd fast float %2565, %2534
  %2569 = fadd fast float %2566, %2535
  %2570 = fadd fast float %2567, %2536
  %2571 = fsub fast float %2521, %1831
  %2572 = fmul fast float %2544, %2571
  %2573 = fadd fast float %2572, %1831
  br label %2619

; <label>:2574                                    ; preds = %2541
  %2575 = icmp eq i32 %2539, 1
  br i1 %2575, label %2576, label %2589

; <label>:2576                                    ; preds = %2574
  %2577 = fadd fast float %2349, -1.000000e+00
  %2578 = fadd fast float %2350, -1.000000e+00
  %2579 = fadd fast float %2351, -1.000000e+00
  %2580 = fmul fast float %2544, %2577
  %2581 = fmul fast float %2544, %2578
  %2582 = fmul fast float %2544, %2579
  %2583 = fadd fast float %2580, 1.000000e+00
  %2584 = fadd fast float %2581, 1.000000e+00
  %2585 = fadd fast float %2582, 1.000000e+00
  %2586 = fmul fast float %2583, %2531
  %2587 = fmul fast float %2584, %2532
  %2588 = fmul fast float %2585, %2533
  br label %2619

; <label>:2589                                    ; preds = %2574
  %2590 = icmp eq i32 %2539, 2
  br i1 %2590, label %2591, label %2619

; <label>:2591                                    ; preds = %2589
  %2592 = call float @dx.op.unary.f32(i32 24, float %2349)  ; Sqrt(value)
  %2593 = call float @dx.op.unary.f32(i32 24, float %2350)  ; Sqrt(value)
  %2594 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2595 = fadd fast float %2592, -5.000000e-01
  %2596 = fadd fast float %2593, -5.000000e-01
  %2597 = fadd fast float %2594, -5.000000e-01
  %2598 = fmul fast float %2595, %2544
  %2599 = fmul fast float %2596, %2544
  %2600 = fmul fast float %2597, %2544
  %2601 = fadd fast float %2598, 5.000000e-01
  %2602 = fadd fast float %2599, 5.000000e-01
  %2603 = fadd fast float %2600, 5.000000e-01
  %2604 = fmul fast float %2601, 2.000000e+00
  %2605 = fsub fast float 1.000000e+00, %2604
  %2606 = fmul fast float %2605, %2531
  %2607 = fadd fast float %2606, %2604
  %2608 = fmul fast float %2607, %2531
  %2609 = fmul fast float %2602, 2.000000e+00
  %2610 = fsub fast float 1.000000e+00, %2609
  %2611 = fmul fast float %2610, %2532
  %2612 = fadd fast float %2611, %2609
  %2613 = fmul fast float %2612, %2532
  %2614 = fmul fast float %2603, 2.000000e+00
  %2615 = fsub fast float 1.000000e+00, %2614
  %2616 = fmul fast float %2615, %2533
  %2617 = fadd fast float %2616, %2614
  %2618 = fmul fast float %2617, %2533
  br label %2619

; <label>:2619                                    ; preds = %2591, %2589, %2576, %2546, %2530
  %2620 = phi float [ %2531, %2530 ], [ %2608, %2591 ], [ %2531, %2589 ], [ %2586, %2576 ], [ %2556, %2546 ]
  %2621 = phi float [ %2532, %2530 ], [ %2613, %2591 ], [ %2532, %2589 ], [ %2587, %2576 ], [ %2557, %2546 ]
  %2622 = phi float [ %2533, %2530 ], [ %2618, %2591 ], [ %2533, %2589 ], [ %2588, %2576 ], [ %2558, %2546 ]
  %2623 = phi float [ %2534, %2530 ], [ %2534, %2591 ], [ %2534, %2589 ], [ %2534, %2576 ], [ %2568, %2546 ]
  %2624 = phi float [ %2535, %2530 ], [ %2535, %2591 ], [ %2535, %2589 ], [ %2535, %2576 ], [ %2569, %2546 ]
  %2625 = phi float [ %2536, %2530 ], [ %2536, %2591 ], [ %2536, %2589 ], [ %2536, %2576 ], [ %2570, %2546 ]
  %2626 = phi float [ %1827, %2530 ], [ %1827, %2591 ], [ %1827, %2589 ], [ %1827, %2576 ], [ %2561, %2546 ]
  %2627 = phi float [ %1831, %2530 ], [ %1831, %2591 ], [ %1831, %2589 ], [ %1831, %2576 ], [ %2573, %2546 ]
  %2628 = and i32 %2538, 12
  %2629 = icmp eq i32 %2628, 12
  br i1 %2629, label %2712, label %2630

; <label>:2630                                    ; preds = %2619
  %2631 = and i32 %2538, 2097184
  %2632 = icmp eq i32 %2631, 2097184
  %2633 = select i1 %2632, float %2129, float 0.000000e+00
  %2634 = and i32 %2538, 4194336
  %2635 = icmp eq i32 %2634, 4194336
  %2636 = select i1 %2635, float %2129, float 0.000000e+00
  %2637 = and i32 %2538, 8388640
  %2638 = icmp eq i32 %2637, 8388640
  %2639 = select i1 %2638, float %2129, float 0.000000e+00
  %2640 = and i32 %2538, 16384
  %2641 = icmp ne i32 %2640, 0
  %2642 = select i1 %2641, float %2129, float 0.000000e+00
  %2643 = icmp eq i32 %2628, 0
  br i1 %2643, label %2644, label %2660

; <label>:2644                                    ; preds = %2630
  %2645 = fsub fast float %2430, %1819
  %2646 = fsub fast float %2431, %1820
  %2647 = fmul fast float %2633, %2645
  %2648 = fmul fast float %2633, %2646
  %2649 = fadd fast float %2647, %1819
  %2650 = fadd fast float %2648, %1820
  %2651 = fsub fast float %2432, %1829
  %2652 = fmul fast float %2636, %2651
  %2653 = fadd fast float %2652, %1829
  %2654 = fsub fast float %2429, %1828
  %2655 = fmul fast float %2639, %2654
  %2656 = fadd fast float %2655, %1828
  %2657 = fsub fast float %2508, %1830
  %2658 = fmul fast float %2642, %2657
  %2659 = fadd fast float %2658, %1830
  br label %2712

; <label>:2660                                    ; preds = %2630
  %2661 = icmp eq i32 %2628, 4
  br i1 %2661, label %2662, label %2696

; <label>:2662                                    ; preds = %2660
  %2663 = fmul fast float %2633, %2430
  %2664 = fmul fast float %2633, %2431
  %2665 = fadd fast float %2663, %1819
  %2666 = fadd fast float %2664, %1820
  %2667 = call float @dx.op.binary.f32(i32 36, float %1829, float %2432)  ; FMin(a,b)
  %2668 = fsub fast float %2667, %1829
  %2669 = fmul fast float %2668, %2636
  %2670 = fadd fast float %2669, %1829
  %2671 = fadd fast float %2429, %1828
  %2672 = fmul fast float %2671, 0x3FF337FAE0000000
  %2673 = fmul fast float %1828, %1828
  %2674 = fmul fast float %2429, %2429
  %2675 = fadd fast float %2674, %2673
  %2676 = fmul fast float %2675, 0x3FE5152B00000000
  %2677 = fmul fast float %1828, 0xBFCC1F85E0000000
  %2678 = fmul fast float %2677, %2429
  %2679 = fadd fast float %2678, 0xBFE1363700000000
  %2680 = fadd fast float %2679, %2672
  %2681 = fsub fast float %2680, %2676
  %2682 = fmul fast float %2671, 0x3FBA6F0D00000000
  %2683 = fmul fast float %2675, 0x3FD0432880000000
  %2684 = fmul fast float %1828, 0xBFEF110800000000
  %2685 = fmul fast float %2684, %2429
  %2686 = fadd fast float %2685, 1.000000e+00
  %2687 = fsub fast float %2686, %2682
  %2688 = fadd fast float %2687, %2683
  %2689 = fdiv fast float %2681, %2688
  %2690 = call float @dx.op.unary.f32(i32 7, float %2689)  ; Saturate(value)
  %2691 = fsub fast float %2690, %1828
  %2692 = fmul fast float %2691, %2639
  %2693 = fadd fast float %2692, %1828
  %2694 = fmul fast float %2642, %2508
  %2695 = fadd fast float %2694, %1830
  br label %2712

; <label>:2696                                    ; preds = %2660
  %2697 = icmp eq i32 %2628, 8
  br i1 %2697, label %2698, label %2712

; <label>:2698                                    ; preds = %2696
  %2699 = fmul fast float %2633, %2430
  %2700 = fmul fast float %2633, %2431
  %2701 = fadd fast float %2699, %1819
  %2702 = fadd fast float %2700, %1820
  %2703 = call float @dx.op.binary.f32(i32 36, float %1829, float %2432)  ; FMin(a,b)
  %2704 = fsub fast float %2703, %1829
  %2705 = fmul fast float %2704, %2636
  %2706 = fadd fast float %2705, %1829
  %2707 = fsub fast float %2429, %1828
  %2708 = fmul fast float %2639, %2707
  %2709 = fadd fast float %2708, %1828
  %2710 = fmul fast float %2642, %2508
  %2711 = fadd fast float %2710, %1830
  br label %2712

; <label>:2712                                    ; preds = %2698, %2696, %2662, %2644, %2619, %2128, %1832, %1818
  %2713 = phi float [ %1819, %2619 ], [ %1819, %2128 ], [ %1819, %1818 ], [ %2701, %2698 ], [ %1819, %2696 ], [ %2665, %2662 ], [ %2649, %2644 ], [ %1819, %1832 ]
  %2714 = phi float [ %1820, %2619 ], [ %1820, %2128 ], [ %1820, %1818 ], [ %2702, %2698 ], [ %1820, %2696 ], [ %2666, %2662 ], [ %2650, %2644 ], [ %1820, %1832 ]
  %2715 = phi float [ %2620, %2619 ], [ %1821, %2128 ], [ %1821, %1818 ], [ %2620, %2698 ], [ %2620, %2696 ], [ %2620, %2662 ], [ %2620, %2644 ], [ %1821, %1832 ]
  %2716 = phi float [ %2621, %2619 ], [ %1822, %2128 ], [ %1822, %1818 ], [ %2621, %2698 ], [ %2621, %2696 ], [ %2621, %2662 ], [ %2621, %2644 ], [ %1822, %1832 ]
  %2717 = phi float [ %2622, %2619 ], [ %1823, %2128 ], [ %1823, %1818 ], [ %2622, %2698 ], [ %2622, %2696 ], [ %2622, %2662 ], [ %2622, %2644 ], [ %1823, %1832 ]
  %2718 = phi float [ %2623, %2619 ], [ %1824, %2128 ], [ %1824, %1818 ], [ %2623, %2698 ], [ %2623, %2696 ], [ %2623, %2662 ], [ %2623, %2644 ], [ %1824, %1832 ]
  %2719 = phi float [ %2624, %2619 ], [ %1825, %2128 ], [ %1825, %1818 ], [ %2624, %2698 ], [ %2624, %2696 ], [ %2624, %2662 ], [ %2624, %2644 ], [ %1825, %1832 ]
  %2720 = phi float [ %2625, %2619 ], [ %1826, %2128 ], [ %1826, %1818 ], [ %2625, %2698 ], [ %2625, %2696 ], [ %2625, %2662 ], [ %2625, %2644 ], [ %1826, %1832 ]
  %2721 = phi float [ %2626, %2619 ], [ %1827, %2128 ], [ %1827, %1818 ], [ %2626, %2698 ], [ %2626, %2696 ], [ %2626, %2662 ], [ %2626, %2644 ], [ %1827, %1832 ]
  %2722 = phi float [ %1828, %2619 ], [ %1828, %2128 ], [ %1828, %1818 ], [ %2709, %2698 ], [ %1828, %2696 ], [ %2693, %2662 ], [ %2656, %2644 ], [ %1828, %1832 ]
  %2723 = phi float [ %1829, %2619 ], [ %1829, %2128 ], [ %1829, %1818 ], [ %2706, %2698 ], [ %1829, %2696 ], [ %2670, %2662 ], [ %2653, %2644 ], [ %1829, %1832 ]
  %2724 = phi float [ %1830, %2619 ], [ %1830, %2128 ], [ %1830, %1818 ], [ %2711, %2698 ], [ %1830, %2696 ], [ %2695, %2662 ], [ %2659, %2644 ], [ %1830, %1832 ]
  %2725 = phi float [ %2627, %2619 ], [ %1831, %2128 ], [ %1831, %1818 ], [ %2627, %2698 ], [ %2627, %2696 ], [ %2627, %2662 ], [ %2627, %2644 ], [ %1831, %1832 ]
  br i1 %376, label %3606, label %2726

; <label>:2726                                    ; preds = %2712
  %2727 = icmp ult i32 %427, 4
  %2728 = add i32 %43, 72
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = add i32 %43, 76
  %2732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.i32 %2732, 0
  %2734 = or i32 %2733, %2730
  %2735 = icmp eq i32 %2734, 0
  br i1 %2735, label %3606, label %2736

; <label>:2736                                    ; preds = %2726
  %2737 = and i32 %2730, 262144
  %2738 = icmp ne i32 %2737, 0
  %2739 = select i1 %2738, float %47, float 1.000000e+00
  %2740 = select i1 %2738, float %48, float 0.000000e+00
  %2741 = select i1 %2738, float %49, float 0.000000e+00
  %2742 = select i1 %2738, float %50, float 1.000000e+00
  %2743 = select i1 %2738, float %51, float %68
  %2744 = select i1 %2738, float %52, float %69
  %2745 = add i32 %43, 332
  %2746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = lshr i32 %2747, 16
  %2749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2748)  ; LegacyF16ToF32(value)
  %2750 = fmul fast float %2749, 0x3F50624DE0000000
  %2751 = add i32 %43, 136
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = lshr i32 %2753, 16
  %2755 = and i32 %2754, 255
  %2756 = lshr i32 %2753, 24
  %2757 = add i32 %43, 340
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2757, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = and i32 %2759, 65535
  %2761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2760)  ; LegacyF16ToF32(value)
  %2762 = lshr i32 %2759, 16
  %2763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2762)  ; LegacyF16ToF32(value)
  %2764 = add i32 %43, 80
  %2765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.i32 %2765, 0
  %2767 = lshr i32 %2766, 22
  %2768 = shl nuw nsw i32 %2767, 5
  %2769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2768)  ; LegacyF16ToF32(value)
  %2770 = shl i32 %2766, 4
  %2771 = and i32 %2770, 32752
  %2772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2771)  ; LegacyF16ToF32(value)
  %2773 = lshr i32 %2766, 7
  %2774 = and i32 %2773, 32752
  %2775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2774)  ; LegacyF16ToF32(value)
  %2776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2777 = extractvalue %dx.types.CBufRet.f32 %2776, 3
  %2778 = fmul fast float %2777, 1.000000e+03
  %2779 = fmul fast float %366, %2778
  %2780 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2781 = fadd fast float %2780, %356
  %2782 = fmul fast float %367, %2778
  %2783 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2784 = fadd fast float %2783, %358
  %2785 = fmul fast float %2750, %2778
  %2786 = call float @dx.op.unary.f32(i32 22, float %2785)  ; Frc(value)
  %2787 = fmul fast float %2786, 0x401921FB60000000
  %2788 = fadd fast float %2787, %2769
  %2789 = call float @dx.op.unary.f32(i32 13, float %2788)  ; Sin(value)
  %2790 = call float @dx.op.unary.f32(i32 12, float %2788)  ; Cos(value)
  %2791 = fsub fast float -0.000000e+00, %2789
  %2792 = fadd fast float %2743, -5.000000e-01
  %2793 = fadd fast float %2744, -5.000000e-01
  %2794 = fmul fast float %2761, %2792
  %2795 = fmul fast float %2763, %2793
  %2796 = fadd fast float %2794, 5.000000e-01
  %2797 = fadd fast float %2795, 5.000000e-01
  %2798 = fmul fast float %2772, %2796
  %2799 = fmul fast float %2775, %2797
  %2800 = fmul fast float %2790, %2798
  %2801 = call float @dx.op.tertiary.f32(i32 46, float %2791, float %2799, float %2800)  ; FMad(a,b,c)
  %2802 = fmul fast float %2789, %2798
  %2803 = call float @dx.op.tertiary.f32(i32 46, float %2790, float %2799, float %2802)  ; FMad(a,b,c)
  %2804 = fadd fast float %2781, %2801
  %2805 = fadd fast float %2784, %2803
  %2806 = icmp ugt i32 %2755, 1
  %2807 = icmp ugt i32 %2753, 33554431
  %2808 = or i1 %2807, %2806
  br i1 %2808, label %2809, label %2834

; <label>:2809                                    ; preds = %2736
  %2810 = add i32 %43, 276
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = lshr i32 %2812, 16
  %2814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2813)  ; LegacyF16ToF32(value)
  %2815 = fmul fast float %2777, %2814
  %2816 = call float @dx.op.unary.f32(i32 22, float %2815)  ; Frc(value)
  %2817 = mul nuw nsw i32 %2755, %2756
  %2818 = uitofp i32 %2817 to float
  %2819 = fmul fast float %2816, %2818
  %2820 = call float @dx.op.unary.f32(i32 27, float %2819)  ; Round_ni(value)
  %2821 = fptoui float %2820 to i32
  %2822 = urem i32 %2821, %2755
  %2823 = udiv i32 %2821, %2756
  %2824 = call float @dx.op.unary.f32(i32 22, float %2804)  ; Frc(value)
  %2825 = call float @dx.op.unary.f32(i32 22, float %2805)  ; Frc(value)
  %2826 = uitofp i32 %2822 to float
  %2827 = uitofp i32 %2823 to float
  %2828 = fadd fast float %2824, %2826
  %2829 = fadd fast float %2825, %2827
  %2830 = uitofp i32 %2755 to float
  %2831 = uitofp i32 %2756 to float
  %2832 = fdiv fast float %2828, %2830
  %2833 = fdiv fast float %2829, %2831
  br label %2834

; <label>:2834                                    ; preds = %2809, %2736
  %2835 = phi float [ %2832, %2809 ], [ %2804, %2736 ]
  %2836 = phi float [ %2833, %2809 ], [ %2805, %2736 ]
  %2837 = and i32 %2730, 16777216
  %2838 = icmp eq i32 %2837, 0
  br i1 %2838, label %2948, label %2839

; <label>:2839                                    ; preds = %2834
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.CBufRet.f32 %2840, 1
  %2843 = extractvalue %dx.types.CBufRet.f32 %2840, 2
  %2844 = fadd fast float %2841, %143
  %2845 = fadd fast float %2842, %144
  %2846 = fadd fast float %2843, %145
  %2847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2848 = extractvalue %dx.types.CBufRet.f32 %2847, 0
  %2849 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2850 = icmp eq i32 %44, 65535
  br i1 %2850, label %2945, label %2851

; <label>:2851                                    ; preds = %2839
  %2852 = lshr i32 %44, 1
  %2853 = shl i32 %2852, 2
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %44, 1
  %2857 = icmp ne i32 %2856, 0
  %2858 = lshr i32 %2855, 16
  %2859 = and i32 %2855, 65535
  %2860 = select i1 %2857, i32 %2858, i32 %2859
  %2861 = icmp eq i32 %2860, 65535
  br i1 %2861, label %2941, label %2862

; <label>:2862                                    ; preds = %2851
  %2863 = mul nuw nsw i32 %2860, 40
  %2864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.f32 %2864, 0
  %2866 = extractvalue %dx.types.ResRet.f32 %2864, 1
  %2867 = extractvalue %dx.types.ResRet.f32 %2864, 2
  %2868 = add nuw nsw i32 %2863, 12
  %2869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2868, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.f32 %2869, 0
  %2871 = extractvalue %dx.types.ResRet.f32 %2869, 1
  %2872 = extractvalue %dx.types.ResRet.f32 %2869, 2
  %2873 = add nuw nsw i32 %2863, 24
  %2874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.f32 %2874, 0
  %2876 = extractvalue %dx.types.ResRet.f32 %2874, 1
  %2877 = extractvalue %dx.types.ResRet.f32 %2874, 2
  %2878 = add nuw nsw i32 %2863, 36
  %2879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2878, i32 undef)  ; BufferLoad(srv,index,wot)
  %2880 = extractvalue %dx.types.ResRet.f32 %2879, 0
  %2881 = fsub fast float %2844, %2865
  %2882 = fsub fast float %2845, %2866
  %2883 = fsub fast float %2846, %2867
  %2884 = fmul fast float %2880, %2881
  %2885 = fmul fast float %2880, %2882
  %2886 = fmul fast float %2880, %2883
  %2887 = call float @dx.op.unary.f32(i32 27, float %2884)  ; Round_ni(value)
  %2888 = call float @dx.op.unary.f32(i32 27, float %2885)  ; Round_ni(value)
  %2889 = call float @dx.op.unary.f32(i32 27, float %2886)  ; Round_ni(value)
  %2890 = fadd fast float %2887, 5.000000e-01
  %2891 = fadd fast float %2888, 5.000000e-01
  %2892 = fadd fast float %2889, 5.000000e-01
  %2893 = fmul fast float %2890, %2870
  %2894 = fmul fast float %2891, %2871
  %2895 = fmul fast float %2892, %2872
  %2896 = shl i32 %44, 2
  %2897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2898 = extractvalue %dx.types.ResRet.i32 %2897, 0
  %2899 = add i32 %2898, 0
  %2900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2901 = call float @dx.op.unary.f32(i32 22, float %2893)  ; Frc(value)
  %2902 = call float @dx.op.unary.f32(i32 22, float %2894)  ; Frc(value)
  %2903 = call float @dx.op.unary.f32(i32 22, float %2895)  ; Frc(value)
  %2904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2900, %dx.types.Handle %40, float %2901, float %2902, float %2903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2905 = extractvalue %dx.types.ResRet.f32 %2904, 0
  %2906 = extractvalue %dx.types.ResRet.f32 %2904, 1
  %2907 = extractvalue %dx.types.ResRet.f32 %2904, 2
  %2908 = fmul fast float %2905, 1.023000e+03
  %2909 = fmul fast float %2906, 1.023000e+03
  %2910 = fmul fast float %2907, 1.023000e+03
  %2911 = fadd fast float %2908, 5.000000e-01
  %2912 = fadd fast float %2909, 5.000000e-01
  %2913 = fadd fast float %2910, 5.000000e-01
  %2914 = call float @dx.op.unary.f32(i32 27, float %2911)  ; Round_ni(value)
  %2915 = call float @dx.op.unary.f32(i32 27, float %2912)  ; Round_ni(value)
  %2916 = call float @dx.op.unary.f32(i32 27, float %2913)  ; Round_ni(value)
  %2917 = fsub fast float %2884, %2887
  %2918 = fsub fast float %2885, %2888
  %2919 = fsub fast float %2886, %2889
  %2920 = fmul fast float %2917, 7.500000e-01
  %2921 = fmul fast float %2918, 7.500000e-01
  %2922 = fmul fast float %2919, 7.500000e-01
  %2923 = fadd fast float %2887, 1.250000e-01
  %2924 = fadd fast float %2923, %2920
  %2925 = fadd fast float %2924, %2914
  %2926 = fadd fast float %2888, 1.250000e-01
  %2927 = fadd fast float %2926, %2921
  %2928 = fadd fast float %2927, %2915
  %2929 = fadd fast float %2889, 1.250000e-01
  %2930 = fadd fast float %2929, %2922
  %2931 = fadd fast float %2930, %2916
  %2932 = fmul fast float %2925, %2875
  %2933 = fmul fast float %2928, %2876
  %2934 = fmul fast float %2931, %2877
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = add i32 %2936, 0
  %2938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2938, %dx.types.Handle %38, float %2932, float %2933, float %2934, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2940 = extractvalue %dx.types.ResRet.f32 %2939, 0
  br label %2941

; <label>:2941                                    ; preds = %2862, %2851
  %2942 = phi float [ %2940, %2862 ], [ -1.000000e+00, %2851 ]
  %2943 = fadd fast float %2942, %2849
  %2944 = call float @dx.op.unary.f32(i32 7, float %2943)  ; Saturate(value)
  br label %2945

; <label>:2945                                    ; preds = %2941, %2839
  %2946 = phi float [ %2944, %2941 ], [ %2849, %2839 ]
  %2947 = fmul fast float %2946, %422
  br label %2948

; <label>:2948                                    ; preds = %2945, %2834
  %2949 = phi float [ %2947, %2945 ], [ %422, %2834 ]
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = and i32 %2951, 256
  %2953 = icmp eq i32 %2952, 0
  br i1 %2953, label %3000, label %2954

; <label>:2954                                    ; preds = %2948
  %2955 = add i32 %43, 484
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = add i32 %2957, 0
  %2959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2959, %dx.types.Handle %77, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2961 = extractvalue %dx.types.ResRet.f32 %2960, 0
  %2962 = add i32 %43, 148
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = shl i32 %2964, 4
  %2966 = and i32 %2965, 32752
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = lshr i32 %2964, 7
  %2969 = and i32 %2968, 32752
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = fsub fast float 1.000000e+00, %2949
  %2972 = call float @dx.op.binary.f32(i32 35, float %2971, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2973 = bitcast float %2949 to i32
  %2974 = sitofp i32 %2973 to float
  %2975 = fadd fast float %2974, 0xC1CFBF8940000000
  %2976 = fmul fast float %2970, %2975
  %2977 = fadd fast float %2976, 0x41CFBF8940000000
  %2978 = fptosi float %2977 to i32
  %2979 = bitcast i32 %2978 to float
  %2980 = bitcast float %2972 to i32
  %2981 = sitofp i32 %2980 to float
  %2982 = fadd fast float %2981, 0xC1CFBF8940000000
  %2983 = fmul fast float %2982, %2970
  %2984 = fadd fast float %2983, 0x41CFBF8940000000
  %2985 = fptosi float %2984 to i32
  %2986 = bitcast i32 %2985 to float
  %2987 = fmul fast float %2979, %2967
  %2988 = fmul fast float %2986, %2967
  %2989 = fsub fast float %2972, %2987
  %2990 = fadd fast float %2988, %2972
  %2991 = call float @dx.op.unary.f32(i32 7, float %2989)  ; Saturate(value)
  %2992 = call float @dx.op.unary.f32(i32 7, float %2990)  ; Saturate(value)
  %2993 = fsub fast float %2961, %2991
  %2994 = fsub fast float %2992, %2991
  %2995 = bitcast float %2994 to i32
  %2996 = sub nsw i32 2129859010, %2995
  %2997 = bitcast i32 %2996 to float
  %2998 = fmul fast float %2997, %2993
  %2999 = call float @dx.op.unary.f32(i32 7, float %2998)  ; Saturate(value)
  br label %3000

; <label>:3000                                    ; preds = %2954, %2948
  %3001 = phi float [ %2999, %2954 ], [ %2949, %2948 ]
  %3002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3003 = extractvalue %dx.types.ResRet.i32 %3002, 0
  %3004 = and i32 %3003, 128
  %3005 = icmp eq i32 %3004, 0
  br i1 %3005, label %3022, label %3006

; <label>:3006                                    ; preds = %3000
  %3007 = add i32 %43, 468
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %3009, 0
  %3011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3011, %dx.types.Handle %77, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  %3014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3015 = extractvalue %dx.types.ResRet.i32 %3014, 0
  %3016 = and i32 %3015, 524288
  %3017 = icmp ne i32 %3016, 0
  %3018 = fcmp fast ogt float %3013, 0x3FE0101020000000
  %3019 = select i1 %3018, float 1.000000e+00, float 0.000000e+00
  %3020 = select i1 %3017, float %3019, float %3013
  %3021 = fmul fast float %3020, %3001
  br label %3022

; <label>:3022                                    ; preds = %3006, %3000
  %3023 = phi float [ %3021, %3006 ], [ %3001, %3000 ]
  %3024 = fcmp fast ult float %3023, 0x3F70101020000000
  br i1 %3024, label %3606, label %3025

; <label>:3025                                    ; preds = %3022
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 16
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3228, label %3030

; <label>:3030                                    ; preds = %3025
  %3031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3032 = extractvalue %dx.types.ResRet.i32 %3031, 0
  %3033 = add i32 %43, 420
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = add i32 %3035, 0
  %3037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3037, %dx.types.Handle %76, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3039 = extractvalue %dx.types.ResRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.ResRet.f32 %3038, 1
  %3041 = extractvalue %dx.types.ResRet.f32 %3038, 2
  %3042 = extractvalue %dx.types.ResRet.f32 %3038, 3
  %3043 = and i32 %3032, 255
  %3044 = uitofp i32 %3043 to float
  %3045 = lshr i32 %3032, 8
  %3046 = and i32 %3045, 255
  %3047 = uitofp i32 %3046 to float
  %3048 = fmul fast float %3042, %3044
  %3049 = fadd fast float %3048, %3047
  %3050 = fmul fast float %3049, 0x3F70101000000000
  %3051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3052 = extractvalue %dx.types.ResRet.i32 %3051, 0
  %3053 = and i32 %3052, 512
  %3054 = icmp eq i32 %3053, 0
  br i1 %3054, label %3063, label %3055

; <label>:3055                                    ; preds = %3030
  %3056 = add i32 %43, 500
  %3057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3056, i32 undef)  ; BufferLoad(srv,index,wot)
  %3058 = extractvalue %dx.types.ResRet.i32 %3057, 0
  %3059 = add i32 %3058, 0
  %3060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3060, %dx.types.Handle %77, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3062 = extractvalue %dx.types.ResRet.f32 %3061, 0
  br label %3063

; <label>:3063                                    ; preds = %3055, %3030
  %3064 = phi float [ %3062, %3055 ], [ 1.000000e+00, %3030 ]
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = and i32 %3066, 33554432
  %3068 = icmp eq i32 %3067, 0
  br i1 %3068, label %3175, label %3069

; <label>:3069                                    ; preds = %3063
  %3070 = add i32 %43, 272
  %3071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3070, i32 undef)  ; BufferLoad(srv,index,wot)
  %3072 = extractvalue %dx.types.ResRet.i32 %3071, 0
  %3073 = and i32 %3072, 65535
  %3074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3073)  ; LegacyF16ToF32(value)
  %3075 = lshr i32 %3072, 16
  %3076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3075)  ; LegacyF16ToF32(value)
  %3077 = add i32 %43, 276
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = and i32 %3079, 65535
  %3081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3080)  ; LegacyF16ToF32(value)
  %3082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3083 = extractvalue %dx.types.ResRet.i32 %3082, 0
  %3084 = lshr i32 %3083, 24
  %3085 = uitofp i32 %3084 to float
  %3086 = fmul fast float %3085, 0x3F70101020000000
  %3087 = and i32 %3083, 255
  %3088 = uitofp i32 %3087 to float
  %3089 = fmul fast float %3088, 0x3F70101020000000
  %3090 = lshr i32 %3083, 8
  %3091 = and i32 %3090, 255
  %3092 = uitofp i32 %3091 to float
  %3093 = fmul fast float %3092, 0x3F70101020000000
  %3094 = lshr i32 %3083, 16
  %3095 = and i32 %3094, 255
  %3096 = uitofp i32 %3095 to float
  %3097 = fmul fast float %3096, 0x3F70101020000000
  %3098 = add i32 %43, 268
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3098, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = lshr i32 %3100, 24
  %3102 = uitofp i32 %3101 to float
  %3103 = fmul fast float %3102, 0x3F70101020000000
  %3104 = and i32 %3100, 255
  %3105 = uitofp i32 %3104 to float
  %3106 = fmul fast float %3105, 0x3F70101020000000
  %3107 = lshr i32 %3100, 8
  %3108 = and i32 %3107, 255
  %3109 = uitofp i32 %3108 to float
  %3110 = fmul fast float %3109, 0x3F70101020000000
  %3111 = lshr i32 %3100, 16
  %3112 = and i32 %3111, 255
  %3113 = uitofp i32 %3112 to float
  %3114 = fmul fast float %3113, 0x3F70101020000000
  %3115 = bitcast float %3039 to i32
  %3116 = ashr i32 %3115, 1
  %3117 = sub nsw i32 1597463174, %3116
  %3118 = bitcast i32 %3117 to float
  %3119 = fmul fast float %3039, 5.000000e-01
  %3120 = fmul fast float %3118, %3118
  %3121 = fmul fast float %3120, %3119
  %3122 = fsub fast float 1.500000e+00, %3121
  %3123 = fmul fast float %3118, %3039
  %3124 = fmul fast float %3123, %3122
  %3125 = bitcast float %3040 to i32
  %3126 = ashr i32 %3125, 1
  %3127 = sub nsw i32 1597463174, %3126
  %3128 = bitcast i32 %3127 to float
  %3129 = fmul fast float %3040, 5.000000e-01
  %3130 = fmul fast float %3128, %3128
  %3131 = fmul fast float %3130, %3129
  %3132 = fsub fast float 1.500000e+00, %3131
  %3133 = fmul fast float %3128, %3040
  %3134 = fmul fast float %3133, %3132
  %3135 = bitcast float %3041 to i32
  %3136 = ashr i32 %3135, 1
  %3137 = sub nsw i32 1597463174, %3136
  %3138 = bitcast i32 %3137 to float
  %3139 = fmul fast float %3041, 5.000000e-01
  %3140 = fmul fast float %3138, %3138
  %3141 = fmul fast float %3140, %3139
  %3142 = fsub fast float 1.500000e+00, %3141
  %3143 = fmul fast float %3138, %3041
  %3144 = fmul fast float %3143, %3142
  %3145 = fsub fast float %3124, %3106
  %3146 = fsub fast float %3134, %3110
  %3147 = fsub fast float %3144, %3114
  %3148 = fmul fast float %3145, %3074
  %3149 = fmul fast float %3146, %3076
  %3150 = fmul fast float %3147, %3081
  %3151 = fadd fast float %3148, %3089
  %3152 = fadd fast float %3149, %3093
  %3153 = fadd fast float %3150, %3097
  %3154 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3155 = call float @dx.op.unary.f32(i32 7, float %3152)  ; Saturate(value)
  %3156 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3157 = fmul fast float %3154, %3154
  %3158 = fmul fast float %3155, %3155
  %3159 = fmul fast float %3156, %3156
  %3160 = fsub fast float %3157, %3039
  %3161 = fsub fast float %3158, %3040
  %3162 = fsub fast float %3159, %3041
  %3163 = fmul fast float %3160, %3064
  %3164 = fmul fast float %3161, %3064
  %3165 = fmul fast float %3162, %3064
  %3166 = fadd fast float %3163, %3039
  %3167 = fadd fast float %3164, %3040
  %3168 = fadd fast float %3165, %3041
  %3169 = fadd fast float %3086, %3050
  %3170 = fsub fast float %3169, %3103
  %3171 = call float @dx.op.unary.f32(i32 7, float %3170)  ; Saturate(value)
  %3172 = fsub fast float %3171, %3050
  %3173 = fmul fast float %3172, %3064
  %3174 = fadd fast float %3173, %3050
  br label %3228

; <label>:3175                                    ; preds = %3063
  %3176 = and i32 %3066, 134217728
  %3177 = icmp eq i32 %3176, 0
  br i1 %3177, label %3212, label %3178

; <label>:3178                                    ; preds = %3175
  %3179 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3180 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3181 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %3182 = fadd fast float %3179, -5.000000e-01
  %3183 = fadd fast float %3180, -5.000000e-01
  %3184 = fadd fast float %3181, -5.000000e-01
  %3185 = fmul fast float %3182, %3064
  %3186 = fmul fast float %3183, %3064
  %3187 = fmul fast float %3184, %3064
  %3188 = fadd fast float %3185, 5.000000e-01
  %3189 = fadd fast float %3186, 5.000000e-01
  %3190 = fadd fast float %3187, 5.000000e-01
  %3191 = call float @dx.op.unary.f32(i32 24, float %3039)  ; Sqrt(value)
  %3192 = call float @dx.op.unary.f32(i32 24, float %3040)  ; Sqrt(value)
  %3193 = call float @dx.op.unary.f32(i32 24, float %3041)  ; Sqrt(value)
  %3194 = fmul fast float %3188, 2.000000e+00
  %3195 = fsub fast float 1.000000e+00, %3194
  %3196 = fmul fast float %3195, %3191
  %3197 = fadd fast float %3196, %3194
  %3198 = fmul fast float %3197, %3191
  %3199 = fmul fast float %3189, 2.000000e+00
  %3200 = fsub fast float 1.000000e+00, %3199
  %3201 = fmul fast float %3200, %3192
  %3202 = fadd fast float %3201, %3199
  %3203 = fmul fast float %3202, %3192
  %3204 = fmul fast float %3190, 2.000000e+00
  %3205 = fsub fast float 1.000000e+00, %3204
  %3206 = fmul fast float %3205, %3193
  %3207 = fadd fast float %3206, %3204
  %3208 = fmul fast float %3207, %3193
  %3209 = fmul fast float %3198, %3198
  %3210 = fmul fast float %3203, %3203
  %3211 = fmul fast float %3208, %3208
  br label %3228

; <label>:3212                                    ; preds = %3175
  %3213 = fmul fast float %343, %343
  %3214 = fmul fast float %347, %347
  %3215 = fmul fast float %351, %351
  %3216 = fadd fast float %3213, -1.000000e+00
  %3217 = fadd fast float %3214, -1.000000e+00
  %3218 = fadd fast float %3215, -1.000000e+00
  %3219 = fmul fast float %3064, %3216
  %3220 = fmul fast float %3064, %3217
  %3221 = fmul fast float %3064, %3218
  %3222 = fadd fast float %3219, 1.000000e+00
  %3223 = fadd fast float %3220, 1.000000e+00
  %3224 = fadd fast float %3221, 1.000000e+00
  %3225 = fmul fast float %3222, %3039
  %3226 = fmul fast float %3223, %3040
  %3227 = fmul fast float %3224, %3041
  br label %3228

; <label>:3228                                    ; preds = %3212, %3178, %3069, %3025
  %3229 = phi float [ %3174, %3069 ], [ %3050, %3178 ], [ %3050, %3212 ], [ 0x3FA23C0BE0000000, %3025 ]
  %3230 = phi float [ %3166, %3069 ], [ %3209, %3178 ], [ %3225, %3212 ], [ 1.000000e+00, %3025 ]
  %3231 = phi float [ %3167, %3069 ], [ %3210, %3178 ], [ %3226, %3212 ], [ 1.000000e+00, %3025 ]
  %3232 = phi float [ %3168, %3069 ], [ %3211, %3178 ], [ %3227, %3212 ], [ 1.000000e+00, %3025 ]
  %3233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3234 = extractvalue %dx.types.CBufRet.i32 %3233, 1
  %3235 = and i32 %3234, 1
  %3236 = icmp ne i32 %3235, 0
  %3237 = add i32 %43, 356
  %3238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3237, i32 undef)  ; BufferLoad(srv,index,wot)
  %3239 = extractvalue %dx.types.ResRet.i32 %3238, 0
  %3240 = and i32 %3239, 32
  %3241 = icmp ne i32 %3240, 0
  %3242 = and i1 %3236, %3241
  %3243 = select i1 %3242, float 1.000000e+00, float %3230
  %3244 = select i1 %3242, float 0x3FD3333340000000, float %3231
  %3245 = select i1 %3242, float 0x3FD3333340000000, float %3232
  %3246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3247 = extractvalue %dx.types.ResRet.i32 %3246, 0
  %3248 = and i32 %3247, 32
  %3249 = icmp eq i32 %3248, 0
  br i1 %3249, label %3322, label %3250

; <label>:3250                                    ; preds = %3228
  %3251 = add i32 %43, 140
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3251, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = add i32 %43, 436
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3254, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = add i32 %3256, 0
  %3258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3258, %dx.types.Handle %76, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3260 = extractvalue %dx.types.ResRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.ResRet.f32 %3259, 1
  %3262 = extractvalue %dx.types.ResRet.f32 %3259, 2
  %3263 = extractvalue %dx.types.ResRet.f32 %3259, 3
  %3264 = and i32 %3253, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = lshr i32 %3253, 8
  %3267 = and i32 %3266, 255
  %3268 = uitofp i32 %3267 to float
  %3269 = lshr i32 %3253, 16
  %3270 = and i32 %3269, 255
  %3271 = uitofp i32 %3270 to float
  %3272 = fmul fast float %3271, 0x3F70101000000000
  %3273 = fmul fast float %3260, %3265
  %3274 = fadd fast float %3273, %3268
  %3275 = fmul fast float %3274, 0x3F70101000000000
  %3276 = fadd fast float %3261, -5.000000e-01
  %3277 = fadd fast float %3263, -5.000000e-01
  %3278 = fmul fast float %3276, %3272
  %3279 = fmul fast float %3277, %3272
  %3280 = fadd fast float %3278, 5.000000e-01
  %3281 = fadd fast float %3279, 5.000000e-01
  %3282 = fmul fast float %3280, 2.000000e+00
  %3283 = fadd fast float %3282, -1.000000e+00
  %3284 = fmul fast float %3281, 2.000000e+00
  %3285 = fadd fast float %3284, -1.000000e+00
  %3286 = fadd fast float %3283, %3285
  %3287 = fmul fast float %3286, 5.000000e-01
  %3288 = fsub fast float %3283, %3285
  %3289 = fmul fast float %3288, 5.000000e-01
  %3290 = call float @dx.op.unary.f32(i32 6, float %3287)  ; FAbs(value)
  %3291 = fsub fast float 1.000000e+00, %3290
  %3292 = call float @dx.op.unary.f32(i32 6, float %3289)  ; FAbs(value)
  %3293 = fsub fast float %3291, %3292
  %3294 = call float @dx.op.dot3.f32(i32 55, float %3287, float %3289, float %3293, float %3287, float %3289, float %3293)  ; Dot3(ax,ay,az,bx,by,bz)
  %3295 = call float @dx.op.unary.f32(i32 25, float %3294)  ; Rsqrt(value)
  %3296 = fmul fast float %3287, %3295
  %3297 = fmul fast float %3289, %3295
  %3298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3299 = extractvalue %dx.types.ResRet.i32 %3298, 0
  %3300 = and i32 %3299, 67108864
  %3301 = icmp eq i32 %3300, 0
  br i1 %3301, label %3318, label %3302

; <label>:3302                                    ; preds = %3250
  %3303 = add i32 %43, 328
  %3304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3303, i32 undef)  ; BufferLoad(srv,index,wot)
  %3305 = extractvalue %dx.types.ResRet.i32 %3304, 0
  %3306 = and i32 %3305, 65535
  %3307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3306)  ; LegacyF16ToF32(value)
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = and i32 %3309, 65535
  %3311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3310)  ; LegacyF16ToF32(value)
  %3312 = lshr i32 %3305, 16
  %3313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3312)  ; LegacyF16ToF32(value)
  %3314 = fsub fast float %3275, %3313
  %3315 = fmul fast float %3314, %3307
  %3316 = fadd fast float %3315, %3311
  %3317 = call float @dx.op.unary.f32(i32 7, float %3316)  ; Saturate(value)
  br label %3318

; <label>:3318                                    ; preds = %3302, %3250
  %3319 = phi float [ %3317, %3302 ], [ %3275, %3250 ]
  %3320 = call float @dx.op.dot2.f32(i32 54, float %3296, float %3297, float %2739, float %2740)  ; Dot2(ax,ay,bx,by)
  %3321 = call float @dx.op.dot2.f32(i32 54, float %3296, float %3297, float %2741, float %2742)  ; Dot2(ax,ay,bx,by)
  br label %3322

; <label>:3322                                    ; preds = %3318, %3228
  %3323 = phi float [ %3319, %3318 ], [ 0x3FD6666660000000, %3228 ]
  %3324 = phi float [ %3320, %3318 ], [ 0.000000e+00, %3228 ]
  %3325 = phi float [ %3321, %3318 ], [ 0.000000e+00, %3228 ]
  %3326 = phi float [ %3262, %3318 ], [ 1.000000e+00, %3228 ]
  %3327 = add i32 %43, 208
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = lshr i32 %3329, 22
  %3331 = shl nuw nsw i32 %3330, 5
  %3332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3331)  ; LegacyF16ToF32(value)
  %3333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.i32 %3333, 0
  %3335 = and i32 %3334, 64
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3370, label %3337

; <label>:3337                                    ; preds = %3322
  %3338 = add i32 %43, 452
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = add i32 %3340, 0
  %3342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 131072
  %3346 = icmp eq i32 %3345, 0
  %3347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3342, %dx.types.Handle %76, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3348 = extractvalue %dx.types.ResRet.f32 %3347, 0
  %3349 = extractvalue %dx.types.ResRet.f32 %3347, 1
  %3350 = extractvalue %dx.types.ResRet.f32 %3347, 2
  %3351 = fmul fast float %3348, %331
  %3352 = fmul fast float %3349, %334
  %3353 = fmul fast float %3350, %337
  br i1 %3346, label %3360, label %3354

; <label>:3354                                    ; preds = %3337
  %3355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3356 = extractvalue %dx.types.CBufRet.f32 %3355, 0
  %3357 = fmul fast float %3356, %3351
  %3358 = fmul fast float %3356, %3352
  %3359 = fmul fast float %3356, %3353
  br label %3360

; <label>:3360                                    ; preds = %3354, %3337
  %3361 = phi float [ %3357, %3354 ], [ %3351, %3337 ]
  %3362 = phi float [ %3358, %3354 ], [ %3352, %3337 ]
  %3363 = phi float [ %3359, %3354 ], [ %3353, %3337 ]
  %3364 = fmul fast float %3361, %3332
  %3365 = select i1 %185, float %3364, float %3361
  %3366 = call float @dx.op.dot3.f32(i32 55, float %3365, float %3362, float %3363, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3367 = select i1 %185, float 0.000000e+00, float %3361
  %3368 = select i1 %185, float %3366, float %3362
  %3369 = select i1 %185, float 0.000000e+00, float %3363
  br label %3370

; <label>:3370                                    ; preds = %3360, %3322
  %3371 = phi float [ %3367, %3360 ], [ 0.000000e+00, %3322 ]
  %3372 = phi float [ %3368, %3360 ], [ 0.000000e+00, %3322 ]
  %3373 = phi float [ %3369, %3360 ], [ 0.000000e+00, %3322 ]
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = and i32 %3375, 26624
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %3401, label %3378

; <label>:3378                                    ; preds = %3370
  %3379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3380 = extractvalue %dx.types.ResRet.i32 %3379, 0
  %3381 = and i32 %3380, 16384
  %3382 = icmp eq i32 %3381, 0
  br i1 %3382, label %3401, label %3383

; <label>:3383                                    ; preds = %3378
  %3384 = and i32 %3380, 1048576
  %3385 = icmp ne i32 %3384, 0
  %3386 = add i32 %43, 516
  %3387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3386, i32 undef)  ; BufferLoad(srv,index,wot)
  %3388 = extractvalue %dx.types.ResRet.i32 %3387, 0
  %3389 = add i32 %3388, 0
  %3390 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3389, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3391 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3390, %dx.types.Handle %77, float %2835, float %2836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3392 = extractvalue %dx.types.ResRet.f32 %3391, 0
  %3393 = add i32 %43, 144
  %3394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3393, i32 undef)  ; BufferLoad(srv,index,wot)
  %3395 = extractvalue %dx.types.ResRet.i32 %3394, 0
  %3396 = lshr i32 %3395, 24
  %3397 = uitofp i32 %3396 to float
  %3398 = fmul fast float %3392, 0x3F70101020000000
  %3399 = select i1 %3385, float 0x3F70101020000000, float %3398
  %3400 = fmul fast float %3399, %3397
  br label %3401

; <label>:3401                                    ; preds = %3383, %3378, %3370
  %3402 = phi float [ %3400, %3383 ], [ 0.000000e+00, %3378 ], [ 0.000000e+00, %3370 ]
  %3403 = add i32 %43, 144
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 255
  %3407 = uitofp i32 %3406 to float
  %3408 = lshr i32 %3405, 8
  %3409 = and i32 %3408, 255
  %3410 = uitofp i32 %3409 to float
  %3411 = call float @dx.op.dot3.f32(i32 55, float %3243, float %3244, float %3245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3412 = fmul fast float %3410, %3411
  %3413 = fadd fast float %3412, %3407
  %3414 = fmul fast float %3413, 0x3F70101020000000
  %3415 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  br i1 %2727, label %3416, label %3424

; <label>:3416                                    ; preds = %3401
  %3417 = fsub fast float 1.000000e+00, %3023
  %3418 = fmul fast float %3417, %2715
  %3419 = fmul fast float %3417, %2716
  %3420 = fmul fast float %3417, %2717
  %3421 = fmul fast float %3417, %2718
  %3422 = fmul fast float %3417, %2719
  %3423 = fmul fast float %3417, %2720
  br label %3424

; <label>:3424                                    ; preds = %3416, %3401
  %3425 = phi float [ %3418, %3416 ], [ %2715, %3401 ]
  %3426 = phi float [ %3419, %3416 ], [ %2716, %3401 ]
  %3427 = phi float [ %3420, %3416 ], [ %2717, %3401 ]
  %3428 = phi float [ %3421, %3416 ], [ %2718, %3401 ]
  %3429 = phi float [ %3422, %3416 ], [ %2719, %3401 ]
  %3430 = phi float [ %3423, %3416 ], [ %2720, %3401 ]
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = and i32 %3432, 3
  %3434 = icmp eq i32 %3433, 3
  br i1 %3434, label %3513, label %3435

; <label>:3435                                    ; preds = %3424
  %3436 = and i32 %3432, 16
  %3437 = icmp ne i32 %3436, 0
  %3438 = select i1 %3437, float %3023, float 0.000000e+00
  %3439 = icmp eq i32 %3433, 0
  br i1 %3439, label %3440, label %3468

; <label>:3440                                    ; preds = %3435
  %3441 = and i32 %3432, 64
  %3442 = icmp ne i32 %3441, 0
  %3443 = select i1 %3442, float %3023, float 0.000000e+00
  %3444 = fsub fast float %3243, %3425
  %3445 = fsub fast float %3244, %3426
  %3446 = fsub fast float %3245, %3427
  %3447 = fmul fast float %3438, %3444
  %3448 = fmul fast float %3438, %3445
  %3449 = fmul fast float %3438, %3446
  %3450 = fadd fast float %3447, %3425
  %3451 = fadd fast float %3448, %3426
  %3452 = fadd fast float %3449, %3427
  %3453 = fsub fast float %3229, %2721
  %3454 = fmul fast float %3438, %3453
  %3455 = fadd fast float %3454, %2721
  %3456 = fsub fast float %3371, %3428
  %3457 = fsub fast float %3372, %3429
  %3458 = fsub fast float %3373, %3430
  %3459 = fmul fast float %3443, %3456
  %3460 = fmul fast float %3443, %3457
  %3461 = fmul fast float %3443, %3458
  %3462 = fadd fast float %3459, %3428
  %3463 = fadd fast float %3460, %3429
  %3464 = fadd fast float %3461, %3430
  %3465 = fsub fast float %3415, %2725
  %3466 = fmul fast float %3438, %3465
  %3467 = fadd fast float %3466, %2725
  br label %3513

; <label>:3468                                    ; preds = %3435
  %3469 = icmp eq i32 %3433, 1
  br i1 %3469, label %3470, label %3483

; <label>:3470                                    ; preds = %3468
  %3471 = fadd fast float %3243, -1.000000e+00
  %3472 = fadd fast float %3244, -1.000000e+00
  %3473 = fadd fast float %3245, -1.000000e+00
  %3474 = fmul fast float %3438, %3471
  %3475 = fmul fast float %3438, %3472
  %3476 = fmul fast float %3438, %3473
  %3477 = fadd fast float %3474, 1.000000e+00
  %3478 = fadd fast float %3475, 1.000000e+00
  %3479 = fadd fast float %3476, 1.000000e+00
  %3480 = fmul fast float %3477, %3425
  %3481 = fmul fast float %3478, %3426
  %3482 = fmul fast float %3479, %3427
  br label %3513

; <label>:3483                                    ; preds = %3468
  %3484 = icmp eq i32 %3433, 2
  br i1 %3484, label %3485, label %3513

; <label>:3485                                    ; preds = %3483
  %3486 = call float @dx.op.unary.f32(i32 24, float %3243)  ; Sqrt(value)
  %3487 = call float @dx.op.unary.f32(i32 24, float %3244)  ; Sqrt(value)
  %3488 = call float @dx.op.unary.f32(i32 24, float %3245)  ; Sqrt(value)
  %3489 = fadd fast float %3486, -5.000000e-01
  %3490 = fadd fast float %3487, -5.000000e-01
  %3491 = fadd fast float %3488, -5.000000e-01
  %3492 = fmul fast float %3489, %3438
  %3493 = fmul fast float %3490, %3438
  %3494 = fmul fast float %3491, %3438
  %3495 = fadd fast float %3492, 5.000000e-01
  %3496 = fadd fast float %3493, 5.000000e-01
  %3497 = fadd fast float %3494, 5.000000e-01
  %3498 = fmul fast float %3495, 2.000000e+00
  %3499 = fsub fast float 1.000000e+00, %3498
  %3500 = fmul fast float %3499, %3425
  %3501 = fadd fast float %3500, %3498
  %3502 = fmul fast float %3501, %3425
  %3503 = fmul fast float %3496, 2.000000e+00
  %3504 = fsub fast float 1.000000e+00, %3503
  %3505 = fmul fast float %3504, %3426
  %3506 = fadd fast float %3505, %3503
  %3507 = fmul fast float %3506, %3426
  %3508 = fmul fast float %3497, 2.000000e+00
  %3509 = fsub fast float 1.000000e+00, %3508
  %3510 = fmul fast float %3509, %3427
  %3511 = fadd fast float %3510, %3508
  %3512 = fmul fast float %3511, %3427
  br label %3513

; <label>:3513                                    ; preds = %3485, %3483, %3470, %3440, %3424
  %3514 = phi float [ %3425, %3424 ], [ %3502, %3485 ], [ %3425, %3483 ], [ %3480, %3470 ], [ %3450, %3440 ]
  %3515 = phi float [ %3426, %3424 ], [ %3507, %3485 ], [ %3426, %3483 ], [ %3481, %3470 ], [ %3451, %3440 ]
  %3516 = phi float [ %3427, %3424 ], [ %3512, %3485 ], [ %3427, %3483 ], [ %3482, %3470 ], [ %3452, %3440 ]
  %3517 = phi float [ %3428, %3424 ], [ %3428, %3485 ], [ %3428, %3483 ], [ %3428, %3470 ], [ %3462, %3440 ]
  %3518 = phi float [ %3429, %3424 ], [ %3429, %3485 ], [ %3429, %3483 ], [ %3429, %3470 ], [ %3463, %3440 ]
  %3519 = phi float [ %3430, %3424 ], [ %3430, %3485 ], [ %3430, %3483 ], [ %3430, %3470 ], [ %3464, %3440 ]
  %3520 = phi float [ %2721, %3424 ], [ %2721, %3485 ], [ %2721, %3483 ], [ %2721, %3470 ], [ %3455, %3440 ]
  %3521 = phi float [ %2725, %3424 ], [ %2725, %3485 ], [ %2725, %3483 ], [ %2725, %3470 ], [ %3467, %3440 ]
  %3522 = and i32 %3432, 12
  %3523 = icmp eq i32 %3522, 12
  br i1 %3523, label %3606, label %3524

; <label>:3524                                    ; preds = %3513
  %3525 = and i32 %3432, 2097184
  %3526 = icmp eq i32 %3525, 2097184
  %3527 = select i1 %3526, float %3023, float 0.000000e+00
  %3528 = and i32 %3432, 4194336
  %3529 = icmp eq i32 %3528, 4194336
  %3530 = select i1 %3529, float %3023, float 0.000000e+00
  %3531 = and i32 %3432, 8388640
  %3532 = icmp eq i32 %3531, 8388640
  %3533 = select i1 %3532, float %3023, float 0.000000e+00
  %3534 = and i32 %3432, 16384
  %3535 = icmp ne i32 %3534, 0
  %3536 = select i1 %3535, float %3023, float 0.000000e+00
  %3537 = icmp eq i32 %3522, 0
  br i1 %3537, label %3538, label %3554

; <label>:3538                                    ; preds = %3524
  %3539 = fsub fast float %3324, %2713
  %3540 = fsub fast float %3325, %2714
  %3541 = fmul fast float %3527, %3539
  %3542 = fmul fast float %3527, %3540
  %3543 = fadd fast float %3541, %2713
  %3544 = fadd fast float %3542, %2714
  %3545 = fsub fast float %3326, %2723
  %3546 = fmul fast float %3530, %3545
  %3547 = fadd fast float %3546, %2723
  %3548 = fsub fast float %3323, %2722
  %3549 = fmul fast float %3533, %3548
  %3550 = fadd fast float %3549, %2722
  %3551 = fsub fast float %3402, %2724
  %3552 = fmul fast float %3536, %3551
  %3553 = fadd fast float %3552, %2724
  br label %3606

; <label>:3554                                    ; preds = %3524
  %3555 = icmp eq i32 %3522, 4
  br i1 %3555, label %3556, label %3590

; <label>:3556                                    ; preds = %3554
  %3557 = fmul fast float %3527, %3324
  %3558 = fmul fast float %3527, %3325
  %3559 = fadd fast float %3557, %2713
  %3560 = fadd fast float %3558, %2714
  %3561 = call float @dx.op.binary.f32(i32 36, float %2723, float %3326)  ; FMin(a,b)
  %3562 = fsub fast float %3561, %2723
  %3563 = fmul fast float %3562, %3530
  %3564 = fadd fast float %3563, %2723
  %3565 = fadd fast float %3323, %2722
  %3566 = fmul fast float %3565, 0x3FF337FAE0000000
  %3567 = fmul fast float %2722, %2722
  %3568 = fmul fast float %3323, %3323
  %3569 = fadd fast float %3568, %3567
  %3570 = fmul fast float %3569, 0x3FE5152B00000000
  %3571 = fmul fast float %2722, 0xBFCC1F85E0000000
  %3572 = fmul fast float %3571, %3323
  %3573 = fadd fast float %3572, 0xBFE1363700000000
  %3574 = fadd fast float %3573, %3566
  %3575 = fsub fast float %3574, %3570
  %3576 = fmul fast float %3565, 0x3FBA6F0D00000000
  %3577 = fmul fast float %3569, 0x3FD0432880000000
  %3578 = fmul fast float %2722, 0xBFEF110800000000
  %3579 = fmul fast float %3578, %3323
  %3580 = fadd fast float %3579, 1.000000e+00
  %3581 = fsub fast float %3580, %3576
  %3582 = fadd fast float %3581, %3577
  %3583 = fdiv fast float %3575, %3582
  %3584 = call float @dx.op.unary.f32(i32 7, float %3583)  ; Saturate(value)
  %3585 = fsub fast float %3584, %2722
  %3586 = fmul fast float %3585, %3533
  %3587 = fadd fast float %3586, %2722
  %3588 = fmul fast float %3536, %3402
  %3589 = fadd fast float %3588, %2724
  br label %3606

; <label>:3590                                    ; preds = %3554
  %3591 = icmp eq i32 %3522, 8
  br i1 %3591, label %3592, label %3606

; <label>:3592                                    ; preds = %3590
  %3593 = fmul fast float %3527, %3324
  %3594 = fmul fast float %3527, %3325
  %3595 = fadd fast float %3593, %2713
  %3596 = fadd fast float %3594, %2714
  %3597 = call float @dx.op.binary.f32(i32 36, float %2723, float %3326)  ; FMin(a,b)
  %3598 = fsub fast float %3597, %2723
  %3599 = fmul fast float %3598, %3530
  %3600 = fadd fast float %3599, %2723
  %3601 = fsub fast float %3323, %2722
  %3602 = fmul fast float %3533, %3601
  %3603 = fadd fast float %3602, %2722
  %3604 = fmul fast float %3536, %3402
  %3605 = fadd fast float %3604, %2724
  br label %3606

; <label>:3606                                    ; preds = %3592, %3590, %3556, %3538, %3513, %3022, %2726, %2712
  %3607 = phi float [ %2713, %3513 ], [ %2713, %3022 ], [ %2713, %2712 ], [ %2713, %2726 ], [ %3543, %3538 ], [ %3559, %3556 ], [ %2713, %3590 ], [ %3595, %3592 ]
  %3608 = phi float [ %2714, %3513 ], [ %2714, %3022 ], [ %2714, %2712 ], [ %2714, %2726 ], [ %3544, %3538 ], [ %3560, %3556 ], [ %2714, %3590 ], [ %3596, %3592 ]
  %3609 = phi float [ %3514, %3513 ], [ %2715, %3022 ], [ %2715, %2712 ], [ %2715, %2726 ], [ %3514, %3538 ], [ %3514, %3556 ], [ %3514, %3590 ], [ %3514, %3592 ]
  %3610 = phi float [ %3515, %3513 ], [ %2716, %3022 ], [ %2716, %2712 ], [ %2716, %2726 ], [ %3515, %3538 ], [ %3515, %3556 ], [ %3515, %3590 ], [ %3515, %3592 ]
  %3611 = phi float [ %3516, %3513 ], [ %2717, %3022 ], [ %2717, %2712 ], [ %2717, %2726 ], [ %3516, %3538 ], [ %3516, %3556 ], [ %3516, %3590 ], [ %3516, %3592 ]
  %3612 = phi float [ %3517, %3513 ], [ %2718, %3022 ], [ %2718, %2712 ], [ %2718, %2726 ], [ %3517, %3538 ], [ %3517, %3556 ], [ %3517, %3590 ], [ %3517, %3592 ]
  %3613 = phi float [ %3518, %3513 ], [ %2719, %3022 ], [ %2719, %2712 ], [ %2719, %2726 ], [ %3518, %3538 ], [ %3518, %3556 ], [ %3518, %3590 ], [ %3518, %3592 ]
  %3614 = phi float [ %3519, %3513 ], [ %2720, %3022 ], [ %2720, %2712 ], [ %2720, %2726 ], [ %3519, %3538 ], [ %3519, %3556 ], [ %3519, %3590 ], [ %3519, %3592 ]
  %3615 = phi float [ %3520, %3513 ], [ %2721, %3022 ], [ %2721, %2712 ], [ %2721, %2726 ], [ %3520, %3538 ], [ %3520, %3556 ], [ %3520, %3590 ], [ %3520, %3592 ]
  %3616 = phi float [ %2722, %3513 ], [ %2722, %3022 ], [ %2722, %2712 ], [ %2722, %2726 ], [ %3550, %3538 ], [ %3587, %3556 ], [ %2722, %3590 ], [ %3603, %3592 ]
  %3617 = phi float [ %2723, %3513 ], [ %2723, %3022 ], [ %2723, %2712 ], [ %2723, %2726 ], [ %3547, %3538 ], [ %3564, %3556 ], [ %2723, %3590 ], [ %3600, %3592 ]
  %3618 = phi float [ %2724, %3513 ], [ %2724, %3022 ], [ %2724, %2712 ], [ %2724, %2726 ], [ %3553, %3538 ], [ %3589, %3556 ], [ %2724, %3590 ], [ %3605, %3592 ]
  %3619 = phi float [ %3521, %3513 ], [ %2725, %3022 ], [ %2725, %2712 ], [ %2725, %2726 ], [ %3521, %3538 ], [ %3521, %3556 ], [ %3521, %3590 ], [ %3521, %3592 ]
  %3620 = add i32 %43, 360
  %3621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.i32 %3621, 0
  %3623 = bitcast i32 %3622 to float
  %3624 = fcmp fast oge float %3623, 0.000000e+00
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 0
  %3627 = select i1 %3624, float %3623, float %3626
  %3628 = call float @dx.op.dot2.f32(i32 54, float %3607, float %3608, float %3607, float %3608)  ; Dot2(ax,ay,bx,by)
  %3629 = fmul fast float %3628, 0x3FE3333340000000
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = call float @dx.op.dot3.f32(i32 55, float %3607, float %3608, float %3630, float %3607, float %3608, float %3630)  ; Dot3(ax,ay,az,bx,by,bz)
  %3632 = call float @dx.op.unary.f32(i32 25, float %3631)  ; Rsqrt(value)
  %3633 = fmul fast float %3632, %3607
  %3634 = fmul fast float %3632, %3608
  %3635 = fmul fast float %3630, %3632
  %3636 = fmul fast float %3635, %87
  %3637 = fmul fast float %3635, %88
  %3638 = fmul fast float %3635, %89
  %3639 = fmul fast float %3633, %61
  %3640 = fmul fast float %3633, %62
  %3641 = fmul fast float %3633, %63
  %3642 = fadd fast float %3636, %3639
  %3643 = fadd fast float %3637, %3640
  %3644 = fadd fast float %3638, %3641
  %3645 = fmul fast float %99, %3634
  %3646 = fmul fast float %100, %3634
  %3647 = fmul fast float %101, %3634
  %3648 = fadd fast float %3642, %3645
  %3649 = fadd fast float %3643, %3646
  %3650 = fadd fast float %3644, %3647
  %3651 = call float @dx.op.dot3.f32(i32 55, float %3648, float %3649, float %3650, float %3648, float %3649, float %3650)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = call float @dx.op.unary.f32(i32 25, float %3651)  ; Rsqrt(value)
  %3653 = fmul fast float %3648, %3652
  %3654 = fmul fast float %3649, %3652
  %3655 = fmul fast float %3650, %3652
  %3656 = and i32 %45, 1
  %3657 = icmp eq i32 %3656, 0
  br i1 %3657, label %3658, label %4166

; <label>:3658                                    ; preds = %3606
  %3659 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3660 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3661 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3662 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3663 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3664 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3665 = fadd fast float %3659, %143
  %3666 = fadd fast float %3660, %144
  %3667 = fadd fast float %3661, %145
  %3668 = fadd fast float %3662, %143
  %3669 = fadd fast float %3663, %144
  %3670 = fadd fast float %3664, %145
  %3671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3672 = extractvalue %dx.types.CBufRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.CBufRet.f32 %3671, 1
  %3674 = extractvalue %dx.types.CBufRet.f32 %3671, 2
  %3675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3676 = extractvalue %dx.types.CBufRet.f32 %3675, 2
  %3677 = extractvalue %dx.types.CBufRet.f32 %3675, 3
  %3678 = fmul fast float %3672, %80
  %3679 = fmul fast float %3678, %3676
  %3680 = fmul fast float %3673, %81
  %3681 = fmul fast float %3680, %3677
  %3682 = fptoui float %3679 to i32
  %3683 = fptoui float %3681 to i32
  %3684 = fadd fast float %3672, -1.000000e+00
  %3685 = fadd fast float %3673, -1.000000e+00
  %3686 = fptoui float %3684 to i32
  %3687 = fptoui float %3685 to i32
  %3688 = call i32 @dx.op.binary.i32(i32 40, i32 %3682, i32 %3686)  ; UMin(a,b)
  %3689 = call i32 @dx.op.binary.i32(i32 40, i32 %3683, i32 %3687)  ; UMin(a,b)
  %3690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3691 = extractvalue %dx.types.CBufRet.f32 %3690, 2
  %3692 = extractvalue %dx.types.CBufRet.f32 %3690, 3
  %3693 = fmul fast float %3691, %75
  %3694 = fsub fast float %3693, %3692
  %3695 = fadd fast float %3674, -1.000000e+00
  %3696 = call float @dx.op.binary.f32(i32 36, float %3694, float %3695)  ; FMin(a,b)
  %3697 = fptoui float %3696 to i32
  %3698 = fptoui float %3672 to i32
  %3699 = fptoui float %3673 to i32
  %3700 = mul i32 %3697, %3699
  %3701 = add i32 %3700, %3689
  %3702 = mul i32 %3701, %3698
  %3703 = add i32 %3702, %3688
  %3704 = shl i32 %3703, 2
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3704, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = and i32 %3706, 1023
  %3708 = lshr i32 %3706, 10
  %3709 = icmp eq i32 %3707, 0
  br i1 %3709, label %4135, label %3710

; <label>:3710                                    ; preds = %3658
  %3711 = and i32 %3706, 1023
  br label %3712

; <label>:3712                                    ; preds = %3838, %3710
  %3713 = phi i32 [ %3788, %3838 ], [ 0, %3710 ]
  %3714 = phi float [ %3839, %3838 ], [ 0.000000e+00, %3710 ]
  %3715 = phi float [ %3840, %3838 ], [ %3627, %3710 ]
  %3716 = phi float [ %3841, %3838 ], [ %3619, %3710 ]
  %3717 = phi float [ %3842, %3838 ], [ %3618, %3710 ]
  %3718 = phi float [ %3843, %3838 ], [ 0.000000e+00, %3710 ]
  %3719 = phi float [ %3844, %3838 ], [ %3612, %3710 ]
  %3720 = phi float [ %3845, %3838 ], [ %3613, %3710 ]
  %3721 = phi float [ %3846, %3838 ], [ %3614, %3710 ]
  %3722 = phi float [ %3847, %3838 ], [ %3653, %3710 ]
  %3723 = phi float [ %3848, %3838 ], [ %3654, %3710 ]
  %3724 = phi float [ %3849, %3838 ], [ %3655, %3710 ]
  %3725 = phi float [ %3850, %3838 ], [ %3617, %3710 ]
  %3726 = phi float [ %3851, %3838 ], [ %3616, %3710 ]
  %3727 = phi float [ %3852, %3838 ], [ 0.000000e+00, %3710 ]
  %3728 = phi float [ %3853, %3838 ], [ %3615, %3710 ]
  %3729 = phi float [ %3854, %3838 ], [ %3609, %3710 ]
  %3730 = phi float [ %3855, %3838 ], [ %3610, %3710 ]
  %3731 = phi float [ %3856, %3838 ], [ %3611, %3710 ]
  %3732 = add nuw nsw i32 %3713, %3708
  %3733 = shl i32 %3732, 2
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3733, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = shl i32 %3735, 8
  %3737 = or i32 %3736, 48
  %3738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3737, i32 undef)  ; BufferLoad(srv,index,wot)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = extractvalue %dx.types.ResRet.f32 %3738, 1
  %3741 = extractvalue %dx.types.ResRet.f32 %3738, 2
  %3742 = extractvalue %dx.types.ResRet.f32 %3738, 3
  %3743 = or i32 %3736, 64
  %3744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.i32 %3744, 0
  %3746 = extractvalue %dx.types.ResRet.i32 %3744, 1
  %3747 = or i32 %3736, 80
  %3748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.f32 %3748, 2
  %3750 = extractvalue %dx.types.ResRet.f32 %3748, 3
  %3751 = or i32 %3736, 96
  %3752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = extractvalue %dx.types.ResRet.f32 %3752, 1
  %3755 = extractvalue %dx.types.ResRet.f32 %3752, 2
  %3756 = extractvalue %dx.types.ResRet.f32 %3752, 3
  %3757 = or i32 %3736, 112
  %3758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3757, i32 undef)  ; BufferLoad(srv,index,wot)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3760 = or i32 %3736, 128
  %3761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3760, i32 undef)  ; BufferLoad(srv,index,wot)
  %3762 = extractvalue %dx.types.ResRet.f32 %3761, 0
  %3763 = extractvalue %dx.types.ResRet.f32 %3761, 1
  %3764 = extractvalue %dx.types.ResRet.f32 %3761, 2
  %3765 = extractvalue %dx.types.ResRet.f32 %3761, 3
  %3766 = or i32 %3736, 144
  %3767 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3766, i32 undef)  ; BufferLoad(srv,index,wot)
  %3768 = extractvalue %dx.types.ResRet.f32 %3767, 0
  %3769 = extractvalue %dx.types.ResRet.f32 %3767, 1
  %3770 = extractvalue %dx.types.ResRet.f32 %3767, 2
  %3771 = extractvalue %dx.types.ResRet.f32 %3767, 3
  %3772 = or i32 %3736, 160
  %3773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3772, i32 undef)  ; BufferLoad(srv,index,wot)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.ResRet.f32 %3773, 3
  %3778 = or i32 %3736, 192
  %3779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3778, i32 undef)  ; BufferLoad(srv,index,wot)
  %3780 = extractvalue %dx.types.ResRet.i32 %3779, 0
  %3781 = or i32 %3736, 208
  %3782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.f32 %3782, 0
  %3784 = or i32 %3736, 248
  %3785 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3784, i32 undef)  ; BufferLoad(srv,index,wot)
  %3786 = extractvalue %dx.types.ResRet.f32 %3785, 0
  %3787 = extractvalue %dx.types.ResRet.f32 %3785, 1
  %3788 = add nuw nsw i32 %3713, 1
  %3789 = bitcast float %3742 to i32
  %3790 = and i32 %3789, 512
  %3791 = icmp eq i32 %3790, 0
  %3792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3793 = extractvalue %dx.types.ResRet.f32 %3792, 0
  %3794 = extractvalue %dx.types.ResRet.f32 %3792, 1
  %3795 = extractvalue %dx.types.ResRet.f32 %3792, 2
  %3796 = extractvalue %dx.types.ResRet.f32 %3792, 3
  %3797 = call float @dx.op.dot4.f32(i32 56, float %3793, float %3794, float %3795, float %3796, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3798 = or i32 %3736, 16
  %3799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.f32 %3799, 0
  %3801 = extractvalue %dx.types.ResRet.f32 %3799, 1
  %3802 = extractvalue %dx.types.ResRet.f32 %3799, 2
  %3803 = extractvalue %dx.types.ResRet.f32 %3799, 3
  %3804 = call float @dx.op.dot4.f32(i32 56, float %3800, float %3801, float %3802, float %3803, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3805 = or i32 %3736, 32
  %3806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.f32 %3806, 0
  %3808 = extractvalue %dx.types.ResRet.f32 %3806, 1
  %3809 = extractvalue %dx.types.ResRet.f32 %3806, 2
  %3810 = extractvalue %dx.types.ResRet.f32 %3806, 3
  %3811 = call float @dx.op.dot4.f32(i32 56, float %3807, float %3808, float %3809, float %3810, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3812 = call float @dx.op.unary.f32(i32 27, float %3797)  ; Round_ni(value)
  %3813 = call float @dx.op.unary.f32(i32 6, float %3812)  ; FAbs(value)
  %3814 = call float @dx.op.unary.f32(i32 27, float %3804)  ; Round_ni(value)
  %3815 = call float @dx.op.unary.f32(i32 6, float %3814)  ; FAbs(value)
  %3816 = call float @dx.op.unary.f32(i32 6, float %3811)  ; FAbs(value)
  %3817 = call float @dx.op.unary.f32(i32 27, float %3816)  ; Round_ni(value)
  %3818 = fadd fast float %3815, %3813
  %3819 = fadd fast float %3818, %3817
  %3820 = fcmp fast oeq float %3819, 0.000000e+00
  %3821 = call float @dx.op.dot4.f32(i32 56, float %3793, float %3794, float %3795, float %3796, float %3665, float %3666, float %3667, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3822 = call float @dx.op.dot4.f32(i32 56, float %3800, float %3801, float %3802, float %3803, float %3665, float %3666, float %3667, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3823 = call float @dx.op.dot4.f32(i32 56, float %3793, float %3794, float %3795, float %3796, float %3668, float %3669, float %3670, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3824 = call float @dx.op.dot4.f32(i32 56, float %3800, float %3801, float %3802, float %3803, float %3668, float %3669, float %3670, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3825 = fsub fast float %3821, %3797
  %3826 = fsub fast float %3823, %3797
  %3827 = fsub fast float %3822, %3804
  %3828 = fsub fast float %3824, %3804
  %3829 = call float @dx.op.dot3.f32(i32 55, float %3739, float %3740, float %3741, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 2
  %3832 = fadd fast float %3831, %3829
  %3833 = call float @dx.op.unary.f32(i32 7, float %3832)  ; Saturate(value)
  %3834 = extractvalue %dx.types.CBufRet.f32 %3830, 0
  %3835 = fcmp fast ogt float %3833, %3834
  %3836 = and i1 %3820, %3835
  %3837 = and i1 %3791, %3836
  br i1 %3837, label %3858, label %3838

; <label>:3838                                    ; preds = %4121, %3939, %3858, %3712
  %3839 = phi float [ %3714, %3858 ], [ %3942, %3939 ], [ %3942, %4121 ], [ %3714, %3712 ]
  %3840 = phi float [ %3715, %3858 ], [ %3715, %3939 ], [ %4096, %4121 ], [ %3715, %3712 ]
  %3841 = phi float [ %3716, %3858 ], [ %3716, %3939 ], [ %4094, %4121 ], [ %3716, %3712 ]
  %3842 = phi float [ %3717, %3858 ], [ %3717, %3939 ], [ %4066, %4121 ], [ %3717, %3712 ]
  %3843 = phi float [ %3718, %3858 ], [ %3718, %3939 ], [ %4064, %4121 ], [ %3718, %3712 ]
  %3844 = phi float [ %3719, %3858 ], [ %3719, %3939 ], [ %4131, %4121 ], [ %3719, %3712 ]
  %3845 = phi float [ %3720, %3858 ], [ %3720, %3939 ], [ %4132, %4121 ], [ %3720, %3712 ]
  %3846 = phi float [ %3721, %3858 ], [ %3721, %3939 ], [ %4133, %4121 ], [ %3721, %3712 ]
  %3847 = phi float [ %3722, %3858 ], [ %3722, %3939 ], [ %4045, %4121 ], [ %3722, %3712 ]
  %3848 = phi float [ %3723, %3858 ], [ %3723, %3939 ], [ %4046, %4121 ], [ %3723, %3712 ]
  %3849 = phi float [ %3724, %3858 ], [ %3724, %3939 ], [ %4047, %4121 ], [ %3724, %3712 ]
  %3850 = phi float [ %3725, %3858 ], [ %3725, %3939 ], [ %4074, %4121 ], [ %3725, %3712 ]
  %3851 = phi float [ %3726, %3858 ], [ %3726, %3939 ], [ %4071, %4121 ], [ %3726, %3712 ]
  %3852 = phi float [ %3727, %3858 ], [ %3727, %3939 ], [ %4068, %4121 ], [ %3727, %3712 ]
  %3853 = phi float [ %3728, %3858 ], [ %3728, %3939 ], [ %4062, %4121 ], [ %3728, %3712 ]
  %3854 = phi float [ %3729, %3858 ], [ %3729, %3939 ], [ %4057, %4121 ], [ %3729, %3712 ]
  %3855 = phi float [ %3730, %3858 ], [ %3730, %3939 ], [ %4058, %4121 ], [ %3730, %3712 ]
  %3856 = phi float [ %3731, %3858 ], [ %3731, %3939 ], [ %4059, %4121 ], [ %3731, %3712 ]
  %3857 = icmp eq i32 %3788, %3711
  br i1 %3857, label %4134, label %3712

; <label>:3858                                    ; preds = %3712
  %3859 = extractvalue %dx.types.ResRet.f32 %3758, 3
  %3860 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3862 = extractvalue %dx.types.ResRet.f32 %3748, 1
  %3863 = extractvalue %dx.types.ResRet.f32 %3748, 0
  %3864 = extractvalue %dx.types.ResRet.i32 %3744, 3
  %3865 = extractvalue %dx.types.ResRet.i32 %3744, 2
  %3866 = add i32 %3864, 0
  %3867 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3866, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3868 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3869 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3867, %dx.types.Handle %3868, float %3797, float %3804, float undef, float undef, i32 0, i32 0, i32 undef, float %3825, float %3827, float undef, float %3826, float %3828, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = fmul fast float %3870, %3863
  %3872 = fadd fast float %3871, %3862
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = fmul fast float %3797, %3753
  %3875 = call float @dx.op.tertiary.f32(i32 46, float %3754, float %3804, float %3874)  ; FMad(a,b,c)
  %3876 = fadd fast float %3875, %3861
  %3877 = fmul fast float %3797, %3755
  %3878 = call float @dx.op.tertiary.f32(i32 46, float %3756, float %3804, float %3877)  ; FMad(a,b,c)
  %3879 = fadd fast float %3878, %3860
  %3880 = fmul fast float %3825, %3753
  %3881 = call float @dx.op.tertiary.f32(i32 46, float %3754, float %3827, float %3880)  ; FMad(a,b,c)
  %3882 = fmul fast float %3825, %3755
  %3883 = call float @dx.op.tertiary.f32(i32 46, float %3756, float %3827, float %3882)  ; FMad(a,b,c)
  %3884 = fmul fast float %3826, %3753
  %3885 = call float @dx.op.tertiary.f32(i32 46, float %3754, float %3828, float %3884)  ; FMad(a,b,c)
  %3886 = fmul fast float %3826, %3755
  %3887 = call float @dx.op.tertiary.f32(i32 46, float %3756, float %3828, float %3886)  ; FMad(a,b,c)
  %3888 = add i32 %3865, 0
  %3889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3888, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3890 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3889, %dx.types.Handle %3868, float %3876, float %3879, float undef, float undef, i32 0, i32 0, i32 undef, float %3881, float %3883, float undef, float %3885, float %3887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = and i32 %3789, 1024
  %3893 = icmp ne i32 %3892, 0
  %3894 = fcmp fast ogt float %3891, 0x3FE0101020000000
  %3895 = uitofp i1 %3894 to float
  %3896 = select i1 %3893, float %3895, float %3891
  %3897 = and i32 %3789, 8192
  %3898 = icmp ne i32 %3897, 0
  %3899 = select i1 %3898, float %3859, float 1.000000e+00
  %3900 = fmul fast float %3797, 2.000000e+00
  %3901 = fadd fast float %3900, -1.000000e+00
  %3902 = call float @dx.op.unary.f32(i32 6, float %3901)  ; FAbs(value)
  %3903 = fmul fast float %3902, %3786
  %3904 = fsub fast float %3903, %3786
  %3905 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3906 = fmul fast float %3804, 2.000000e+00
  %3907 = fadd fast float %3906, -1.000000e+00
  %3908 = call float @dx.op.unary.f32(i32 6, float %3907)  ; FAbs(value)
  %3909 = fmul fast float %3908, %3787
  %3910 = fsub fast float %3909, %3787
  %3911 = call float @dx.op.unary.f32(i32 7, float %3910)  ; Saturate(value)
  %3912 = fmul fast float %3816, %3749
  %3913 = fsub fast float %3912, %3749
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = fmul fast float %3873, %3899
  %3916 = fmul fast float %3915, %3870
  %3917 = fmul fast float %3916, %3905
  %3918 = fmul fast float %3917, %3896
  %3919 = fmul fast float %3918, %3911
  %3920 = fmul fast float %3919, %3914
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 1
  %3923 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3924 = fsub fast float %3833, %3923
  %3925 = fmul fast float %3924, %3922
  %3926 = call float @dx.op.unary.f32(i32 7, float %3925)  ; Saturate(value)
  %3927 = fmul fast float %3920, %3750
  %3928 = fadd fast float %3920, %3750
  %3929 = fmul fast float %3928, %3759
  %3930 = fsub fast float %3929, %3759
  %3931 = call float @dx.op.unary.f32(i32 7, float %3930)  ; Saturate(value)
  %3932 = and i32 %3789, 128
  %3933 = icmp ne i32 %3932, 0
  %3934 = select i1 %3933, float %3931, float %3927
  %3935 = fmul fast float %3934, %3926
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 0
  %3938 = fcmp fast ugt float %3935, %3937
  br i1 %3938, label %3939, label %3838

; <label>:3939                                    ; preds = %3858
  %3940 = select i1 %3898, float %3935, float 0.000000e+00
  %3941 = fadd fast float %3940, %3714
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  br i1 %3898, label %3838, label %3943

; <label>:3943                                    ; preds = %3939
  %3944 = and i32 %3789, 4
  %3945 = and i32 %3789, 8
  %3946 = add i32 %3745, 0
  %3947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3946, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3948 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3949 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3947, %dx.types.Handle %3948, float %3876, float %3879, float undef, float undef, i32 0, i32 0, i32 undef, float %3881, float %3883, float undef, float %3885, float %3887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3950 = extractvalue %dx.types.ResRet.f32 %3949, 0
  %3951 = extractvalue %dx.types.ResRet.f32 %3949, 1
  %3952 = extractvalue %dx.types.ResRet.f32 %3949, 2
  %3953 = extractvalue %dx.types.ResRet.f32 %3949, 3
  %3954 = bitcast float %3771 to i32
  %3955 = and i32 %3954, 255
  %3956 = uitofp i32 %3955 to float
  %3957 = lshr i32 %3954, 8
  %3958 = and i32 %3957, 255
  %3959 = uitofp i32 %3958 to float
  %3960 = fmul fast float %3953, %3956
  %3961 = fadd fast float %3960, %3959
  %3962 = fmul fast float %3961, 0x3F70101000000000
  %3963 = add i32 %3746, 0
  %3964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3964, %dx.types.Handle %3948, float %3876, float %3879, float undef, float undef, i32 0, i32 0, i32 undef, float %3881, float %3883, float undef, float %3885, float %3887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = extractvalue %dx.types.ResRet.f32 %3965, 1
  %3968 = extractvalue %dx.types.ResRet.f32 %3965, 2
  %3969 = extractvalue %dx.types.ResRet.f32 %3965, 3
  %3970 = bitcast float %3765 to i32
  %3971 = and i32 %3970, 255
  %3972 = uitofp i32 %3971 to float
  %3973 = lshr i32 %3970, 8
  %3974 = and i32 %3973, 255
  %3975 = uitofp i32 %3974 to float
  %3976 = lshr i32 %3970, 16
  %3977 = and i32 %3976, 255
  %3978 = uitofp i32 %3977 to float
  %3979 = fmul fast float %3978, 0x3F70101000000000
  %3980 = fmul fast float %3966, %3972
  %3981 = fadd fast float %3980, %3975
  %3982 = fmul fast float %3981, 0x3F70101000000000
  %3983 = fadd fast float %3967, -5.000000e-01
  %3984 = fadd fast float %3969, -5.000000e-01
  %3985 = fmul fast float %3983, %3979
  %3986 = fmul fast float %3984, %3979
  %3987 = fadd fast float %3985, 5.000000e-01
  %3988 = fadd fast float %3986, 5.000000e-01
  %3989 = fmul fast float %3950, %3774
  %3990 = fmul fast float %3951, %3775
  %3991 = fmul fast float %3952, %3776
  %3992 = fmul fast float %3987, 2.000000e+00
  %3993 = fadd fast float %3992, -1.000000e+00
  %3994 = fmul fast float %3988, 2.000000e+00
  %3995 = fadd fast float %3994, -1.000000e+00
  %3996 = fadd fast float %3993, %3995
  %3997 = fmul fast float %3996, 5.000000e-01
  %3998 = fsub fast float %3993, %3995
  %3999 = fmul fast float %3998, 5.000000e-01
  %4000 = call float @dx.op.unary.f32(i32 6, float %3997)  ; FAbs(value)
  %4001 = fsub fast float 1.000000e+00, %4000
  %4002 = call float @dx.op.unary.f32(i32 6, float %3999)  ; FAbs(value)
  %4003 = fsub fast float %4001, %4002
  %4004 = call float @dx.op.dot3.f32(i32 55, float %3997, float %3999, float %4003, float %3997, float %3999, float %4003)  ; Dot3(ax,ay,az,bx,by,bz)
  %4005 = call float @dx.op.unary.f32(i32 25, float %4004)  ; Rsqrt(value)
  %4006 = fmul fast float %3997, %4005
  %4007 = fmul fast float %3999, %4005
  %4008 = fmul fast float %4005, %4003
  %4009 = fmul fast float %4008, %3739
  %4010 = fmul fast float %4008, %3740
  %4011 = fmul fast float %4008, %3741
  %4012 = fmul fast float %4006, %3762
  %4013 = fmul fast float %4006, %3763
  %4014 = fmul fast float %4006, %3764
  %4015 = fadd fast float %4012, %4009
  %4016 = fadd fast float %4013, %4010
  %4017 = fadd fast float %4014, %4011
  %4018 = fmul fast float %4007, %3768
  %4019 = fmul fast float %4007, %3769
  %4020 = fmul fast float %4007, %3770
  %4021 = fadd fast float %4015, %4018
  %4022 = fadd fast float %4016, %4019
  %4023 = fadd fast float %4017, %4020
  %4024 = call float @dx.op.dot3.f32(i32 55, float %4021, float %4022, float %4023, float %4021, float %4022, float %4023)  ; Dot3(ax,ay,az,bx,by,bz)
  %4025 = call float @dx.op.unary.f32(i32 25, float %4024)  ; Rsqrt(value)
  %4026 = fmul fast float %4021, %4025
  %4027 = fmul fast float %4022, %4025
  %4028 = fmul fast float %4023, %4025
  %4029 = icmp ne i32 %3945, 0
  %4030 = select i1 %4029, float 1.000000e+00, float 0.000000e+00
  %4031 = fmul fast float %3935, %4030
  %4032 = and i32 %3789, 1
  %4033 = icmp eq i32 %4032, 0
  br i1 %4033, label %4034, label %4038

; <label>:4034                                    ; preds = %3943
  %4035 = fsub fast float %4026, %3722
  %4036 = fsub fast float %4027, %3723
  %4037 = fsub fast float %4028, %3724
  br label %4038

; <label>:4038                                    ; preds = %4034, %3943
  %4039 = phi float [ %4035, %4034 ], [ %4026, %3943 ]
  %4040 = phi float [ %4036, %4034 ], [ %4027, %3943 ]
  %4041 = phi float [ %4037, %4034 ], [ %4028, %3943 ]
  %4042 = fmul float %4041, %4031
  %4043 = fmul float %4040, %4031
  %4044 = fmul float %4039, %4031
  %4045 = fadd fast float %4044, %3722
  %4046 = fadd fast float %4043, %3723
  %4047 = fadd fast float %4042, %3724
  %4048 = icmp ne i32 %3944, 0
  %4049 = select i1 %4048, float 1.000000e+00, float 0.000000e+00
  %4050 = fmul fast float %3935, %4049
  %4051 = fsub fast float %3989, %3729
  %4052 = fsub fast float %3990, %3730
  %4053 = fsub fast float %3991, %3731
  %4054 = fmul fast float %4051, %4050
  %4055 = fmul fast float %4052, %4050
  %4056 = fmul fast float %4053, %4050
  %4057 = fadd fast float %4054, %3729
  %4058 = fadd fast float %4055, %3730
  %4059 = fadd fast float %4056, %3731
  %4060 = fsub fast float %3962, %3728
  %4061 = fmul fast float %4060, %4050
  %4062 = fadd fast float %4061, %3728
  %4063 = fmul fast float %4050, %3718
  %4064 = fsub fast float %3718, %4063
  %4065 = fmul fast float %4050, %3717
  %4066 = fsub fast float %3717, %4065
  %4067 = fadd fast float %3935, %3727
  %4068 = call float @dx.op.unary.f32(i32 7, float %4067)  ; Saturate(value)
  %4069 = fsub fast float %3982, %3726
  %4070 = fmul fast float %4069, %4031
  %4071 = fadd fast float %4070, %3726
  %4072 = fsub fast float %3968, %3725
  %4073 = fmul fast float %4072, %4031
  %4074 = fadd fast float %4073, %3725
  %4075 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3990, float %3991, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4079 = fmul fast float %4078, %4075
  %4080 = fadd fast float %4079, %4077
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = bitcast float %3777 to i32
  %4083 = and i32 %4082, 65535
  %4084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4083)  ; LegacyF16ToF32(value)
  %4085 = lshr i32 %4082, 16
  %4086 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4085)  ; LegacyF16ToF32(value)
  %4087 = fcmp fast oge float %4084, 0.000000e+00
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 0
  %4090 = select i1 %4087, float %4084, float %4089
  %4091 = fadd fast float %4090, %4086
  %4092 = fsub fast float %4081, %3716
  %4093 = fmul fast float %4092, %3935
  %4094 = fadd fast float %4093, %3716
  %4095 = fmul fast float %4091, %3935
  %4096 = call float @dx.op.binary.f32(i32 35, float %3715, float %4095)  ; FMax(a,b)
  %4097 = and i32 %3789, 16
  %4098 = icmp eq i32 %4097, 0
  br i1 %4098, label %4121, label %4099

; <label>:4099                                    ; preds = %4038
  %4100 = bitcast float %3783 to i32
  %4101 = add i32 %3780, 0
  %4102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4101, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4103 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4102, %dx.types.Handle %3948, float %3876, float %3879, float undef, float undef, i32 0, i32 0, i32 undef, float %3881, float %3883, float undef, float %3885, float %3887, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = extractvalue %dx.types.ResRet.f32 %4103, 1
  %4106 = extractvalue %dx.types.ResRet.f32 %4103, 2
  %4107 = and i32 %4100, 65535
  %4108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4107)  ; LegacyF16ToF32(value)
  %4109 = fmul fast float %4104, %3774
  %4110 = fmul fast float %4105, %3775
  %4111 = fmul fast float %4106, %3776
  %4112 = and i32 %3789, 16384
  %4113 = icmp ne i32 %4112, 0
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 0
  %4116 = select i1 %4113, float %4115, float 1.000000e+00
  %4117 = fmul fast float %4116, %4108
  %4118 = fmul fast float %4109, %4117
  %4119 = fmul fast float %4110, %4117
  %4120 = fmul fast float %4111, %4117
  br label %4121

; <label>:4121                                    ; preds = %4099, %4038
  %4122 = phi float [ %4118, %4099 ], [ 0.000000e+00, %4038 ]
  %4123 = phi float [ %4119, %4099 ], [ 0.000000e+00, %4038 ]
  %4124 = phi float [ %4120, %4099 ], [ 0.000000e+00, %4038 ]
  %4125 = fsub fast float %4122, %3719
  %4126 = fsub fast float %4123, %3720
  %4127 = fsub fast float %4124, %3721
  %4128 = fmul fast float %4125, %3935
  %4129 = fmul fast float %4126, %3935
  %4130 = fmul fast float %4127, %3935
  %4131 = fadd fast float %4128, %3719
  %4132 = fadd fast float %4129, %3720
  %4133 = fadd fast float %4130, %3721
  br label %3838

; <label>:4134                                    ; preds = %3838
  br label %4135

; <label>:4135                                    ; preds = %4134, %3658
  %4136 = phi float [ 0.000000e+00, %3658 ], [ %3839, %4134 ]
  %4137 = phi float [ %3627, %3658 ], [ %3840, %4134 ]
  %4138 = phi float [ %3619, %3658 ], [ %3841, %4134 ]
  %4139 = phi float [ %3618, %3658 ], [ %3842, %4134 ]
  %4140 = phi float [ 0.000000e+00, %3658 ], [ %3843, %4134 ]
  %4141 = phi float [ %3612, %3658 ], [ %3844, %4134 ]
  %4142 = phi float [ %3613, %3658 ], [ %3845, %4134 ]
  %4143 = phi float [ %3614, %3658 ], [ %3846, %4134 ]
  %4144 = phi float [ %3653, %3658 ], [ %3847, %4134 ]
  %4145 = phi float [ %3654, %3658 ], [ %3848, %4134 ]
  %4146 = phi float [ %3655, %3658 ], [ %3849, %4134 ]
  %4147 = phi float [ %3617, %3658 ], [ %3850, %4134 ]
  %4148 = phi float [ %3616, %3658 ], [ %3851, %4134 ]
  %4149 = phi float [ 0.000000e+00, %3658 ], [ %3852, %4134 ]
  %4150 = phi float [ %3615, %3658 ], [ %3853, %4134 ]
  %4151 = phi float [ %3609, %3658 ], [ %3854, %4134 ]
  %4152 = phi float [ %3610, %3658 ], [ %3855, %4134 ]
  %4153 = phi float [ %3611, %3658 ], [ %3856, %4134 ]
  %4154 = call float @dx.op.dot3.f32(i32 55, float %4144, float %4145, float %4146, float %4144, float %4145, float %4146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = call float @dx.op.unary.f32(i32 25, float %4154)  ; Rsqrt(value)
  %4156 = fmul fast float %4155, %4144
  %4157 = fmul fast float %4155, %4145
  %4158 = fmul fast float %4155, %4146
  %4159 = fadd fast float %4149, %933
  %4160 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4161 = call float @dx.op.dot3.f32(i32 55, float %4156, float %4157, float %4158, float %4156, float %4157, float %4158)  ; Dot3(ax,ay,az,bx,by,bz)
  %4162 = call float @dx.op.unary.f32(i32 25, float %4161)  ; Rsqrt(value)
  %4163 = fmul fast float %4162, %4156
  %4164 = fmul fast float %4162, %4157
  %4165 = fmul fast float %4162, %4158
  br label %4166

; <label>:4166                                    ; preds = %4135, %3606
  %4167 = phi float [ %4163, %4135 ], [ %3653, %3606 ]
  %4168 = phi float [ %4164, %4135 ], [ %3654, %3606 ]
  %4169 = phi float [ %4165, %4135 ], [ %3655, %3606 ]
  %4170 = phi float [ %4151, %4135 ], [ %3609, %3606 ]
  %4171 = phi float [ %4152, %4135 ], [ %3610, %3606 ]
  %4172 = phi float [ %4153, %4135 ], [ %3611, %3606 ]
  %4173 = phi float [ %4141, %4135 ], [ %3612, %3606 ]
  %4174 = phi float [ %4142, %4135 ], [ %3613, %3606 ]
  %4175 = phi float [ %4143, %4135 ], [ %3614, %3606 ]
  %4176 = phi float [ %4150, %4135 ], [ %3615, %3606 ]
  %4177 = phi float [ %4160, %4135 ], [ %933, %3606 ]
  %4178 = phi float [ %4148, %4135 ], [ %3616, %3606 ]
  %4179 = phi float [ %4147, %4135 ], [ %3617, %3606 ]
  %4180 = phi float [ %4140, %4135 ], [ 0.000000e+00, %3606 ]
  %4181 = phi float [ %4139, %4135 ], [ %3618, %3606 ]
  %4182 = phi float [ %4136, %4135 ], [ 0.000000e+00, %3606 ]
  %4183 = phi float [ %4137, %4135 ], [ %3627, %3606 ]
  %4184 = phi float [ %4138, %4135 ], [ %3619, %3606 ]
  %4185 = fadd fast float %4176, 0xBFB99999A0000000
  %4186 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4187 = fmul fast float %4186, 0x3FF1C71C80000000
  %4188 = call float @dx.op.binary.f32(i32 36, float %4176, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4189 = fsub fast float 1.000000e+00, %4187
  %4190 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4191 = fmul fast float %4190, %4170
  %4192 = fmul fast float %4190, %4171
  %4193 = fmul fast float %4190, %4172
  %4194 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4195 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4196 = call float @dx.op.unary.f32(i32 7, float %4193)  ; Saturate(value)
  %4197 = fmul fast float %4187, %4170
  %4198 = fmul fast float %4187, %4171
  %4199 = fmul fast float %4187, %4172
  %4200 = fadd fast float %4197, %4188
  %4201 = fadd fast float %4198, %4188
  %4202 = fadd fast float %4199, %4188
  %4203 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4204 = call float @dx.op.unary.f32(i32 7, float %4201)  ; Saturate(value)
  %4205 = call float @dx.op.unary.f32(i32 7, float %4202)  ; Saturate(value)
  %4206 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.i32 %4207, 3
  %4209 = and i32 %4208, 8
  %4210 = icmp ne i32 %4209, 0
  %4211 = call float @dx.op.binary.f32(i32 35, float %4194, float %4170)  ; FMax(a,b)
  %4212 = call float @dx.op.binary.f32(i32 35, float %4195, float %4170)  ; FMax(a,b)
  %4213 = call float @dx.op.binary.f32(i32 35, float %4196, float %4170)  ; FMax(a,b)
  %4214 = call float @dx.op.dot3.f32(i32 55, float %4194, float %4195, float %4196, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4215 = select i1 %185, float %4170, float %4194
  %4216 = select i1 %185, float %4214, float %4195
  %4217 = select i1 %185, float 1.000000e+00, float %4196
  %4218 = select i1 %4210, float %4211, float %4215
  %4219 = select i1 %4210, float %4212, float %4216
  %4220 = select i1 %4210, float %4213, float %4217
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.CBufRet.f32 %4221, 1
  %4224 = extractvalue %dx.types.CBufRet.f32 %4221, 2
  %4225 = fadd fast float %4222, %143
  %4226 = fadd fast float %4223, %144
  %4227 = fadd fast float %4224, %145
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.CBufRet.f32 %4228, 1
  %4231 = fsub fast float %4225, %4229
  %4232 = fsub fast float %4226, %4230
  %4233 = fmul fast float %4231, %4231
  %4234 = fmul fast float %4232, %4232
  %4235 = fadd fast float %4233, %4234
  %4236 = call float @dx.op.unary.f32(i32 24, float %4235)  ; Sqrt(value)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4228, 2
  %4238 = fcmp fast olt float %4236, %4237
  br i1 %4238, label %4239, label %4306

; <label>:4239                                    ; preds = %4166
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4245 = extractvalue %dx.types.CBufRet.f32 %4244, 0
  %4246 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4247 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4248 = extractvalue %dx.types.CBufRet.f32 %4244, 1
  %4249 = extractvalue %dx.types.CBufRet.f32 %4240, 3
  %4250 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4251 = extractvalue %dx.types.CBufRet.f32 %4244, 3
  %4252 = fadd fast float %4249, %4225
  %4253 = fadd fast float %4250, %4226
  %4254 = fadd fast float %4251, %4227
  %4255 = fmul fast float %4252, %4241
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %4253, float %4243, float %4255)  ; FMad(a,b,c)
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4254, float %4245, float %4256)  ; FMad(a,b,c)
  %4258 = fmul fast float %4252, %4246
  %4259 = call float @dx.op.tertiary.f32(i32 46, float %4253, float %4247, float %4258)  ; FMad(a,b,c)
  %4260 = call float @dx.op.tertiary.f32(i32 46, float %4254, float %4248, float %4259)  ; FMad(a,b,c)
  %4261 = fsub fast float %4257, %4249
  %4262 = fsub fast float %4260, %4250
  %4263 = fsub fast float %4261, %4229
  %4264 = fadd fast float %4263, %4237
  %4265 = fsub fast float %4262, %4230
  %4266 = fadd fast float %4265, %4237
  %4267 = extractvalue %dx.types.CBufRet.f32 %4228, 3
  %4268 = fmul fast float %4264, %4267
  %4269 = fmul fast float %4266, %4267
  %4270 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4271 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4272 = fsub fast float 1.000000e+00, %4270
  %4273 = fsub fast float 1.000000e+00, %4271
  %4274 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4272, float %4273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = fcmp fast ugt float %4275, 0.000000e+00
  br i1 %4276, label %4277, label %4580

; <label>:4277                                    ; preds = %4239
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 2
  %4280 = fmul fast float %4279, %4275
  %4281 = extractvalue %dx.types.CBufRet.f32 %4278, 3
  %4282 = fadd fast float %4281, %4280
  %4283 = extractvalue %dx.types.CBufRet.f32 %4244, 2
  %4284 = fadd fast float %4282, %4251
  %4285 = fmul fast float %4257, %4245
  %4286 = call float @dx.op.tertiary.f32(i32 46, float %4260, float %4248, float %4285)  ; FMad(a,b,c)
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4283, float %4286)  ; FMad(a,b,c)
  %4288 = fsub fast float %4287, %4251
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4291 = fsub fast float %4288, %4290
  %4292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4272, float %4273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4293 = extractvalue %dx.types.ResRet.f32 %4292, 0
  %4294 = extractvalue %dx.types.ResRet.f32 %4292, 1
  %4295 = extractvalue %dx.types.ResRet.f32 %4292, 2
  %4296 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4272, float %4273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4297 = extractvalue %dx.types.ResRet.f32 %4296, 0
  %4298 = extractvalue %dx.types.ResRet.f32 %4296, 1
  %4299 = extractvalue %dx.types.ResRet.f32 %4296, 2
  %4300 = fadd fast float %4297, %4293
  %4301 = fmul fast float %4300, 0x3F847AE140000000
  %4302 = fadd fast float %4298, %4294
  %4303 = fmul fast float %4302, 0x3F847AE140000000
  %4304 = fadd fast float %4299, %4295
  %4305 = fmul fast float %4304, 0x3F847AE140000000
  br label %4580

; <label>:4306                                    ; preds = %4166
  %4307 = and i32 %161, 1
  %4308 = icmp eq i32 %4307, 0
  br i1 %4308, label %4580, label %4309

; <label>:4309                                    ; preds = %4306
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 0
  %4316 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4317 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4318 = extractvalue %dx.types.CBufRet.f32 %4314, 1
  %4319 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4320 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4321 = extractvalue %dx.types.CBufRet.f32 %4314, 3
  %4322 = fadd fast float %4319, %4225
  %4323 = fadd fast float %4320, %4226
  %4324 = fadd fast float %4321, %4227
  %4325 = fmul fast float %4322, %4311
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4313, float %4325)  ; FMad(a,b,c)
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4315, float %4326)  ; FMad(a,b,c)
  %4328 = fmul fast float %4322, %4316
  %4329 = call float @dx.op.tertiary.f32(i32 46, float %4323, float %4317, float %4328)  ; FMad(a,b,c)
  %4330 = call float @dx.op.tertiary.f32(i32 46, float %4324, float %4318, float %4329)  ; FMad(a,b,c)
  %4331 = fsub fast float %4327, %4319
  %4332 = fsub fast float %4330, %4320
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 0
  %4335 = extractvalue %dx.types.CBufRet.f32 %4333, 1
  %4336 = extractvalue %dx.types.CBufRet.f32 %4333, 2
  %4337 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.f32 %4338, 3
  %4340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.i32 %4340, 0
  %4342 = extractvalue %dx.types.CBufRet.i32 %4340, 1
  %4343 = udiv i32 %4342, %4341
  %4344 = fsub fast float %4331, %4334
  %4345 = fsub fast float %4332, %4335
  %4346 = call float @dx.op.binary.f32(i32 35, float %4344, float 0.000000e+00)  ; FMax(a,b)
  %4347 = call float @dx.op.binary.f32(i32 35, float %4345, float 0.000000e+00)  ; FMax(a,b)
  %4348 = call float @dx.op.binary.f32(i32 36, float %4346, float %4336)  ; FMin(a,b)
  %4349 = call float @dx.op.binary.f32(i32 36, float %4347, float %4337)  ; FMin(a,b)
  %4350 = add i32 %4341, -1
  %4351 = add i32 %4343, -1
  %4352 = fmul fast float %4348, %4339
  %4353 = fmul fast float %4349, %4339
  %4354 = fptoui float %4352 to i32
  %4355 = fptoui float %4353 to i32
  %4356 = call i32 @dx.op.binary.i32(i32 40, i32 %4354, i32 %4350)  ; UMin(a,b)
  %4357 = call i32 @dx.op.binary.i32(i32 40, i32 %4355, i32 %4351)  ; UMin(a,b)
  %4358 = mul i32 %4357, %4341
  %4359 = add i32 %4358, %4356
  %4360 = shl i32 %4359, 2
  %4361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4360, i32 undef)  ; BufferLoad(srv,index,wot)
  %4362 = extractvalue %dx.types.ResRet.i32 %4361, 0
  %4363 = icmp eq i32 %4362, -1
  br i1 %4363, label %4580, label %4364

; <label>:4364                                    ; preds = %4309
  %4365 = mul i32 %4362, 148
  %4366 = add i32 %4365, 4
  %4367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.f32 %4367, 0
  %4369 = add i32 %4365, 8
  %4370 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4369, i32 undef)  ; BufferLoad(srv,index,wot)
  %4371 = extractvalue %dx.types.ResRet.f32 %4370, 0
  %4372 = add i32 %4365, 36
  %4373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = add i32 %4365, 60
  %4376 = add i32 %4365, 92
  %4377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.i32 %4377, 0
  %4379 = add i32 %4365, 116
  %4380 = fsub fast float %4331, %4368
  %4381 = fsub fast float %4332, %4371
  %4382 = fmul fast float %4339, %4380
  %4383 = fmul fast float %4339, %4381
  %4384 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4385 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4386 = fsub fast float 1.000000e+00, %4385
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 2
  %4389 = call float @dx.op.unary.f32(i32 83, float %4384)  ; DerivCoarseX(value)
  %4390 = call float @dx.op.unary.f32(i32 83, float %4386)  ; DerivCoarseX(value)
  %4391 = call float @dx.op.unary.f32(i32 84, float %4384)  ; DerivCoarseY(value)
  %4392 = call float @dx.op.unary.f32(i32 84, float %4386)  ; DerivCoarseY(value)
  %4393 = fmul fast float %4389, %4388
  %4394 = fmul fast float %4390, %4388
  %4395 = fmul fast float %4391, %4388
  %4396 = fmul fast float %4392, %4388
  %4397 = call float @dx.op.dot2.f32(i32 54, float %4395, float %4396, float %4395, float %4396)  ; Dot2(ax,ay,bx,by)
  %4398 = call float @dx.op.dot2.f32(i32 54, float %4393, float %4394, float %4393, float %4394)  ; Dot2(ax,ay,bx,by)
  %4399 = call float @dx.op.binary.f32(i32 35, float %4398, float %4397)  ; FMax(a,b)
  %4400 = call float @dx.op.unary.f32(i32 23, float %4399)  ; Log(value)
  %4401 = fmul fast float %4400, 5.000000e-01
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4404 = fadd fast float %4403, %4401
  %4405 = call float @dx.op.binary.f32(i32 35, float %4404, float 0.000000e+00)  ; FMax(a,b)
  %4406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4407 = extractvalue %dx.types.CBufRet.f32 %4406, 3
  %4408 = fadd fast float %4407, %4405
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 3
  %4411 = fadd fast float %4408, %4410
  %4412 = add i32 %4378, 0
  %4413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4412, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4414 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4413, i32 0)  ; GetDimensions(handle,mipLevel)
  %4415 = extractvalue %dx.types.Dimensions %4414, 0
  %4416 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4415)  ; FirstbitLo(value)
  %4417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.i32 %4417, 1
  %4419 = sub nsw i32 %4418, %4416
  %4420 = sitofp i32 %4419 to float
  %4421 = fsub fast float %4411, %4420
  %4422 = call float @dx.op.binary.f32(i32 35, float %4421, float 0.000000e+00)  ; FMax(a,b)
  %4423 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4413, %dx.types.Handle %37, float %4384, float %4386, float %4374, float undef, i32 0, i32 0, i32 undef, float %4422)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4424 = extractvalue %dx.types.ResRet.f32 %4423, 0
  %4425 = fcmp ule float %4424, 0x3FE0101020000000
  %4426 = extractvalue %dx.types.CBufRet.i32 %4417, 0
  %4427 = and i32 %4426, 128
  %4428 = icmp ne i32 %4427, 0
  %4429 = and i1 %4425, %4428
  br i1 %4429, label %4580, label %4430

; <label>:4430                                    ; preds = %4364
  %4431 = add i32 %4365, 20
  %4432 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4431, i32 undef)  ; BufferLoad(srv,index,wot)
  %4433 = extractvalue %dx.types.ResRet.f32 %4432, 0
  %4434 = add i32 %4365, 24
  %4435 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4434, i32 undef)  ; BufferLoad(srv,index,wot)
  %4436 = extractvalue %dx.types.ResRet.f32 %4435, 0
  %4437 = add i32 %4365, 40
  %4438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4437, i32 undef)  ; BufferLoad(srv,index,wot)
  %4439 = extractvalue %dx.types.ResRet.f32 %4438, 0
  %4440 = add i32 %4365, 96
  %4441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4440, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.i32 %4441, 0
  %4443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4444 = extractvalue %dx.types.CBufRet.f32 %4443, 2
  %4445 = fmul fast float %4444, %4384
  %4446 = fmul fast float %4444, %4386
  %4447 = extractvalue %dx.types.CBufRet.f32 %4443, 3
  %4448 = fadd fast float %4445, %4447
  %4449 = fadd fast float %4446, %4447
  %4450 = add i32 %4442, 0
  %4451 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4450, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4452 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4451, i32 0)  ; GetDimensions(handle,mipLevel)
  %4453 = extractvalue %dx.types.Dimensions %4452, 0
  %4454 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4453)  ; FirstbitLo(value)
  %4455 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4456 = extractvalue %dx.types.CBufRet.i32 %4455, 1
  %4457 = sub nsw i32 %4456, %4454
  %4458 = sitofp i32 %4457 to float
  %4459 = fsub fast float %4408, %4458
  %4460 = call float @dx.op.binary.f32(i32 35, float %4459, float 0.000000e+00)  ; FMax(a,b)
  %4461 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4451, %dx.types.Handle %37, float %4448, float %4449, float %4439, float undef, i32 0, i32 0, i32 undef, float %4460)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4462 = extractvalue %dx.types.ResRet.f32 %4461, 0
  %4463 = fmul fast float %4462, %4433
  %4464 = fadd fast float %4463, %4436
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4468 = extractvalue %dx.types.CBufRet.f32 %4465, 2
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4472 = extractvalue %dx.types.CBufRet.f32 %4471, 3
  %4473 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4474 = fadd fast float %4470, %4331
  %4475 = fadd fast float %4472, %4332
  %4476 = fadd fast float %4464, %4473
  %4477 = fmul fast float %4474, %4466
  %4478 = call float @dx.op.tertiary.f32(i32 46, float %4475, float %4467, float %4477)  ; FMad(a,b,c)
  %4479 = call float @dx.op.tertiary.f32(i32 46, float %4476, float %4468, float %4478)  ; FMad(a,b,c)
  %4480 = fsub fast float %4479, %4473
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4483 = fsub fast float %4480, %4482
  %4484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4485 = extractvalue %dx.types.CBufRet.i32 %4484, 0
  %4486 = call i32 @dx.op.binary.i32(i32 40, i32 %4362, i32 %4485)  ; UMin(a,b)
  %4487 = mul i32 %4486, 36
  %4488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4487, i32 undef)  ; BufferLoad(srv,index,wot)
  %4489 = extractvalue %dx.types.ResRet.i32 %4488, 0
  %4490 = add i32 %4487, 4
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 0
  %4493 = fmul fast float %4492, %4384
  %4494 = fmul fast float %4492, %4386
  %4495 = extractvalue %dx.types.CBufRet.f32 %4491, 1
  %4496 = fadd fast float %4493, %4495
  %4497 = fadd fast float %4494, %4495
  %4498 = icmp eq i32 %4489, 0
  br i1 %4498, label %4567, label %4499

; <label>:4499                                    ; preds = %4430
  br label %4500

; <label>:4500                                    ; preds = %4557, %4499
  %4501 = phi float [ %4558, %4557 ], [ 0.000000e+00, %4499 ]
  %4502 = phi float [ %4559, %4557 ], [ 0.000000e+00, %4499 ]
  %4503 = phi float [ %4560, %4557 ], [ 0.000000e+00, %4499 ]
  %4504 = phi float [ %4561, %4557 ], [ 0.000000e+00, %4499 ]
  %4505 = phi float [ %4562, %4557 ], [ 0.000000e+00, %4499 ]
  %4506 = phi float [ %4563, %4557 ], [ 0.000000e+00, %4499 ]
  %4507 = phi i32 [ %4564, %4557 ], [ 0, %4499 ]
  %4508 = shl i32 %4507, 2
  %4509 = add i32 %4375, %4508
  %4510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4509, i32 undef)  ; BufferLoad(srv,index,wot)
  %4511 = extractvalue %dx.types.ResRet.f32 %4510, 0
  %4512 = add i32 %4379, %4508
  %4513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4512, i32 undef)  ; BufferLoad(srv,index,wot)
  %4514 = extractvalue %dx.types.ResRet.i32 %4513, 0
  %4515 = add i32 %4514, 0
  %4516 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4515, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4517 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4516, i32 0)  ; GetDimensions(handle,mipLevel)
  %4518 = extractvalue %dx.types.Dimensions %4517, 0
  %4519 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4518)  ; FirstbitLo(value)
  %4520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.i32 %4520, 1
  %4522 = sub nsw i32 %4521, %4519
  %4523 = sitofp i32 %4522 to float
  %4524 = fsub fast float %4408, %4523
  %4525 = call float @dx.op.binary.f32(i32 35, float %4524, float 0.000000e+00)  ; FMax(a,b)
  %4526 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4516, %dx.types.Handle %37, float %4496, float %4497, float %4511, float undef, i32 0, i32 0, i32 undef, float %4525)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4527 = extractvalue %dx.types.ResRet.f32 %4526, 0
  %4528 = fcmp fast ogt float %4527, 0.000000e+00
  br i1 %4528, label %4529, label %4557

; <label>:4529                                    ; preds = %4500
  %4530 = add i32 %4490, %4508
  %4531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4530, i32 undef)  ; BufferLoad(srv,index,wot)
  %4532 = extractvalue %dx.types.ResRet.i32 %4531, 0
  %4533 = and i32 %4532, 32767
  %4534 = mul nuw nsw i32 %4533, 928
  %4535 = add nuw nsw i32 %4534, 48
  %4536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4535, i32 undef)  ; BufferLoad(srv,index,wot)
  %4537 = extractvalue %dx.types.ResRet.f32 %4536, 0
  %4538 = extractvalue %dx.types.ResRet.f32 %4536, 1
  %4539 = extractvalue %dx.types.ResRet.f32 %4536, 2
  %4540 = add nuw nsw i32 %4534, 60
  %4541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4540, i32 undef)  ; BufferLoad(srv,index,wot)
  %4542 = extractvalue %dx.types.ResRet.f32 %4541, 0
  %4543 = extractvalue %dx.types.ResRet.f32 %4541, 1
  %4544 = extractvalue %dx.types.ResRet.f32 %4541, 2
  %4545 = fmul fast float %4537, %4527
  %4546 = fmul fast float %4538, %4527
  %4547 = fmul fast float %4539, %4527
  %4548 = fadd fast float %4545, %4501
  %4549 = fadd fast float %4546, %4502
  %4550 = fadd fast float %4547, %4503
  %4551 = fmul fast float %4542, %4527
  %4552 = fmul fast float %4543, %4527
  %4553 = fmul fast float %4544, %4527
  %4554 = fadd fast float %4551, %4504
  %4555 = fadd fast float %4552, %4505
  %4556 = fadd fast float %4553, %4506
  br label %4557

; <label>:4557                                    ; preds = %4529, %4500
  %4558 = phi float [ %4548, %4529 ], [ %4501, %4500 ]
  %4559 = phi float [ %4549, %4529 ], [ %4502, %4500 ]
  %4560 = phi float [ %4550, %4529 ], [ %4503, %4500 ]
  %4561 = phi float [ %4554, %4529 ], [ %4504, %4500 ]
  %4562 = phi float [ %4555, %4529 ], [ %4505, %4500 ]
  %4563 = phi float [ %4556, %4529 ], [ %4506, %4500 ]
  %4564 = add nuw i32 %4507, 1
  %4565 = icmp eq i32 %4564, %4489
  br i1 %4565, label %4566, label %4500

; <label>:4566                                    ; preds = %4557
  br label %4567

; <label>:4567                                    ; preds = %4566, %4430
  %4568 = phi float [ 0.000000e+00, %4430 ], [ %4558, %4566 ]
  %4569 = phi float [ 0.000000e+00, %4430 ], [ %4559, %4566 ]
  %4570 = phi float [ 0.000000e+00, %4430 ], [ %4560, %4566 ]
  %4571 = phi float [ 0.000000e+00, %4430 ], [ %4561, %4566 ]
  %4572 = phi float [ 0.000000e+00, %4430 ], [ %4562, %4566 ]
  %4573 = phi float [ 0.000000e+00, %4430 ], [ %4563, %4566 ]
  %4574 = fadd fast float %4571, %4568
  %4575 = fmul fast float %4574, 0x3F847AE140000000
  %4576 = fadd fast float %4572, %4569
  %4577 = fmul fast float %4576, 0x3F847AE140000000
  %4578 = fadd fast float %4573, %4570
  %4579 = fmul fast float %4578, 0x3F847AE140000000
  br label %4580

; <label>:4580                                    ; preds = %4567, %4364, %4309, %4306, %4277, %4239
  %4581 = phi float [ %4291, %4277 ], [ -1.310720e+05, %4239 ], [ %4483, %4567 ], [ -1.310720e+05, %4309 ], [ -1.310720e+05, %4364 ], [ -1.310720e+05, %4306 ]
  %4582 = phi float [ %4301, %4277 ], [ 0.000000e+00, %4239 ], [ %4575, %4567 ], [ 0.000000e+00, %4309 ], [ 0.000000e+00, %4364 ], [ 0.000000e+00, %4306 ]
  %4583 = phi float [ %4303, %4277 ], [ 0.000000e+00, %4239 ], [ %4577, %4567 ], [ 0.000000e+00, %4309 ], [ 0.000000e+00, %4364 ], [ 0.000000e+00, %4306 ]
  %4584 = phi float [ %4305, %4277 ], [ 0.000000e+00, %4239 ], [ %4579, %4567 ], [ 0.000000e+00, %4309 ], [ 0.000000e+00, %4364 ], [ 0.000000e+00, %4306 ]
  %4585 = phi i1 [ true, %4277 ], [ false, %4239 ], [ true, %4567 ], [ false, %4309 ], [ false, %4364 ], [ false, %4306 ]
  %4586 = and i32 %161, 3
  %4587 = icmp eq i32 %4586, 1
  %4588 = select i1 %4587, float 1.000000e+00, float 0.000000e+00
  %4589 = fsub fast float %4581, %145
  %4590 = call float @dx.op.unary.f32(i32 7, float %4589)  ; Saturate(value)
  %4591 = select i1 %4585, float %4590, float 1.000000e+00
  %4592 = fmul fast float %4591, %4588
  %4593 = icmp eq i32 %4586, 3
  %4594 = select i1 %4593, float 1.000000e+00, float %4592
  %4595 = call float @dx.op.binary.f32(i32 35, float %4182, float %4594)  ; FMax(a,b)
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = fcmp fast une float %4596, 0.000000e+00
  %4598 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.unary.f32(i32 25, float %4598)  ; Rsqrt(value)
  br i1 %4597, label %4607, label %4600

; <label>:4600                                    ; preds = %4580
  %4601 = fmul fast float %4599, %143
  %4602 = fmul fast float %4599, %144
  %4603 = fmul fast float %4599, %145
  %4604 = fsub fast float -0.000000e+00, %4601
  %4605 = fsub fast float -0.000000e+00, %4602
  %4606 = fsub fast float -0.000000e+00, %4603
  br label %4775

; <label>:4607                                    ; preds = %4580
  %4608 = fmul fast float %143, %4599
  %4609 = fsub fast float -0.000000e+00, %4608
  %4610 = fmul fast float %144, %4599
  %4611 = fsub fast float -0.000000e+00, %4610
  %4612 = fmul fast float %145, %4599
  %4613 = fsub fast float -0.000000e+00, %4612
  %4614 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4611, float %4613, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4615 = fmul fast float %4596, 2.500000e+00
  %4616 = call float @dx.op.unary.f32(i32 7, float %4615)  ; Saturate(value)
  %4617 = fmul fast float %4596, 0x4013FFFFE0000000
  %4618 = fadd fast float %4617, 0xBFFFFFFFE0000000
  %4619 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4620 = fmul fast float %4596, 0x4004000020000000
  %4621 = fadd fast float %4620, 0xBFF8000040000000
  %4622 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4623 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4624 = fmul fast float %4185, 1.000000e+01
  %4625 = call float @dx.op.unary.f32(i32 7, float %4624)  ; Saturate(value)
  %4626 = fmul fast float %4625, 2.000000e+00
  %4627 = fsub fast float 3.000000e+00, %4626
  %4628 = fmul fast float %4625, %4625
  %4629 = fmul fast float %4628, %4627
  %4630 = fsub fast float 1.000000e+00, %4629
  %4631 = fsub fast float 0x3FE3333340000000, %4206
  %4632 = fmul fast float %4631, 0x400AAAAAA0000000
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = fmul fast float %4630, %4633
  %4635 = fmul fast float %4218, 0x3FEA2B8620000000
  %4636 = fmul fast float %4219, 0x3FEA2B8620000000
  %4637 = fmul fast float %4220, 0x3FEA2B8620000000
  %4638 = fadd fast float %4635, 0x3FC81DFBA0000000
  %4639 = fmul fast float %4638, %4218
  %4640 = fadd fast float %4639, 0x3F910E6020000000
  %4641 = fadd fast float %4636, 0x3FC81DFBA0000000
  %4642 = fmul fast float %4641, %4219
  %4643 = fadd fast float %4642, 0x3F910E6020000000
  %4644 = fadd fast float %4637, 0x3FC81DFBA0000000
  %4645 = fmul fast float %4644, %4220
  %4646 = fadd fast float %4645, 0x3F910E6020000000
  %4647 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4648 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4649 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4650 = fsub fast float %4647, %4218
  %4651 = fsub fast float %4648, %4219
  %4652 = fsub fast float %4649, %4220
  %4653 = fmul fast float %4650, %4623
  %4654 = fmul fast float %4653, %4634
  %4655 = fmul fast float %4651, %4623
  %4656 = fmul fast float %4655, %4634
  %4657 = fmul fast float %4652, %4623
  %4658 = fmul fast float %4657, %4634
  %4659 = fadd fast float %4654, %4218
  %4660 = fadd fast float %4656, %4219
  %4661 = fadd fast float %4658, %4220
  %4662 = fmul fast float %4179, %4179
  %4663 = fmul fast float %4662, %4662
  %4664 = fadd fast float %4619, 1.000000e+00
  %4665 = fsub fast float %4664, %4634
  %4666 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4667 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = call float @dx.op.unary.f32(i32 7, float %4667)  ; Saturate(value)
  %4669 = fsub fast float 1.000000e+00, %4663
  %4670 = call float @dx.op.binary.f32(i32 36, float %4666, float %4669)  ; FMin(a,b)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4672 = call float @dx.op.binary.f32(i32 35, float %4670, float %4671)  ; FMax(a,b)
  %4673 = fadd fast float %4668, 0xBFE4CCCCC0000000
  %4674 = fmul fast float %4673, 0x4006DB6DA0000000
  %4675 = call float @dx.op.unary.f32(i32 7, float %4674)  ; Saturate(value)
  %4676 = fmul fast float %4675, 2.000000e+00
  %4677 = fsub fast float 3.000000e+00, %4676
  %4678 = bitcast float %4203 to i32
  %4679 = ashr i32 %4678, 1
  %4680 = add nsw i32 %4679, 532487669
  %4681 = bitcast i32 %4680 to float
  %4682 = fsub fast float 1.000000e+00, %4681
  %4683 = bitcast float %4682 to i32
  %4684 = sub nsw i32 2129859010, %4683
  %4685 = bitcast i32 %4684 to float
  %4686 = fmul fast float %4685, 2.000000e+00
  %4687 = bitcast float %4204 to i32
  %4688 = ashr i32 %4687, 1
  %4689 = add nsw i32 %4688, 532487669
  %4690 = bitcast i32 %4689 to float
  %4691 = fsub fast float 1.000000e+00, %4690
  %4692 = bitcast float %4691 to i32
  %4693 = sub nsw i32 2129859010, %4692
  %4694 = bitcast i32 %4693 to float
  %4695 = fmul fast float %4694, 2.000000e+00
  %4696 = bitcast float %4205 to i32
  %4697 = ashr i32 %4696, 1
  %4698 = add nsw i32 %4697, 532487669
  %4699 = bitcast i32 %4698 to float
  %4700 = fsub fast float 1.000000e+00, %4699
  %4701 = bitcast float %4700 to i32
  %4702 = sub nsw i32 2129859010, %4701
  %4703 = bitcast i32 %4702 to float
  %4704 = fmul fast float %4703, 2.000000e+00
  %4705 = fsub fast float 0x4002A9FBE0000000, %4686
  %4706 = fadd fast float %4686, 0x3FD54FDF00000000
  %4707 = bitcast float %4706 to i32
  %4708 = sub nsw i32 2129859010, %4707
  %4709 = bitcast i32 %4708 to float
  %4710 = fmul fast float %4709, %4705
  %4711 = fmul fast float %4710, %4710
  %4712 = fsub fast float 0x4002A9FBE0000000, %4695
  %4713 = fadd fast float %4695, 0x3FD54FDF00000000
  %4714 = bitcast float %4713 to i32
  %4715 = sub nsw i32 2129859010, %4714
  %4716 = bitcast i32 %4715 to float
  %4717 = fmul fast float %4716, %4712
  %4718 = fmul fast float %4717, %4717
  %4719 = fsub fast float 0x4002A9FBE0000000, %4704
  %4720 = fadd fast float %4704, 0x3FD54FDF00000000
  %4721 = bitcast float %4720 to i32
  %4722 = sub nsw i32 2129859010, %4721
  %4723 = bitcast i32 %4722 to float
  %4724 = fmul fast float %4723, %4719
  %4725 = fmul fast float %4724, %4724
  %4726 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4711)  ; FMax(a,b)
  %4727 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4718)  ; FMax(a,b)
  %4728 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4725)  ; FMax(a,b)
  %4729 = fsub fast float 1.000000e+00, %4614
  %4730 = fadd fast float %4729, %4630
  %4731 = call float @dx.op.unary.f32(i32 7, float %4730)  ; Saturate(value)
  %4732 = fsub fast float 1.000000e+00, %4594
  %4733 = fmul fast float %4672, %4732
  %4734 = fmul fast float %4675, %4675
  %4735 = fmul fast float %4734, %4733
  %4736 = fmul fast float %4735, %4677
  %4737 = fmul fast float %4732, 0xBFE99999A0000000
  %4738 = fmul fast float %4737, %4623
  %4739 = fmul fast float %4738, %4634
  %4740 = fadd fast float %4739, 1.000000e+00
  %4741 = fadd fast float %4206, -1.000000e+00
  %4742 = fmul fast float %4740, %4741
  %4743 = fadd fast float %4742, 1.000000e+00
  %4744 = fsub fast float %4726, %4203
  %4745 = fsub fast float %4727, %4204
  %4746 = fsub fast float %4728, %4205
  %4747 = fmul fast float %4736, %4744
  %4748 = fmul fast float %4736, %4745
  %4749 = fmul fast float %4736, %4746
  %4750 = fadd fast float %4747, %4203
  %4751 = fadd fast float %4748, %4204
  %4752 = fadd fast float %4749, %4205
  %4753 = fsub fast float %87, %4167
  %4754 = fsub fast float %88, %4168
  %4755 = fsub fast float %89, %4169
  %4756 = fmul fast float %4736, %4753
  %4757 = fmul fast float %4736, %4754
  %4758 = fmul fast float %4736, %4755
  %4759 = fadd fast float %4756, %4167
  %4760 = fadd fast float %4757, %4168
  %4761 = fadd fast float %4758, %4169
  %4762 = fmul fast float %4736, %4731
  %4763 = call float @dx.op.unary.f32(i32 7, float %4743)  ; Saturate(value)
  %4764 = fsub fast float 1.000000e+00, %4763
  %4765 = fmul fast float %4762, %4764
  %4766 = fadd fast float %4765, %4763
  %4767 = fsub fast float 1.000000e+00, %4179
  %4768 = fmul fast float %4736, %4767
  %4769 = fadd fast float %4768, %4179
  %4770 = call float @dx.op.dot3.f32(i32 55, float %4759, float %4760, float %4761, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %4771 = call float @dx.op.unary.f32(i32 25, float %4770)  ; Rsqrt(value)
  %4772 = fmul fast float %4759, %4771
  %4773 = fmul fast float %4760, %4771
  %4774 = fmul fast float %4761, %4771
  br label %4775

; <label>:4775                                    ; preds = %4607, %4600
  %4776 = phi float [ %4606, %4600 ], [ %4613, %4607 ]
  %4777 = phi float [ %4605, %4600 ], [ %4611, %4607 ]
  %4778 = phi float [ %4604, %4600 ], [ %4609, %4607 ]
  %4779 = phi float [ %4603, %4600 ], [ %4612, %4607 ]
  %4780 = phi float [ %4602, %4600 ], [ %4610, %4607 ]
  %4781 = phi float [ %4601, %4600 ], [ %4608, %4607 ]
  %4782 = phi float [ %4203, %4600 ], [ %4750, %4607 ]
  %4783 = phi float [ %4204, %4600 ], [ %4751, %4607 ]
  %4784 = phi float [ %4205, %4600 ], [ %4752, %4607 ]
  %4785 = phi float [ %4167, %4600 ], [ %4772, %4607 ]
  %4786 = phi float [ %4168, %4600 ], [ %4773, %4607 ]
  %4787 = phi float [ %4169, %4600 ], [ %4774, %4607 ]
  %4788 = phi float [ %4218, %4600 ], [ %4659, %4607 ]
  %4789 = phi float [ %4219, %4600 ], [ %4660, %4607 ]
  %4790 = phi float [ %4220, %4600 ], [ %4661, %4607 ]
  %4791 = phi float [ %4206, %4600 ], [ %4766, %4607 ]
  %4792 = phi float [ %4179, %4600 ], [ %4769, %4607 ]
  %4793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4794 = extractvalue %dx.types.CBufRet.f32 %4793, 2
  %4795 = extractvalue %dx.types.CBufRet.f32 %4793, 3
  %4796 = fmul fast float %4794, %80
  %4797 = fmul fast float %4795, %81
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.CBufRet.f32 %4798, 1
  %4801 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4796, float %4797, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = fmul fast float %4802, %4800
  %4804 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4805 = fadd fast float %4804, -1.000000e+00
  %4806 = fmul fast float %4805, %4799
  %4807 = fadd fast float %4806, 1.000000e+00
  %4808 = select i1 %185, float 0.000000e+00, float %4784
  %4809 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %4778, float %4777, float %4776)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4809)  ; Saturate(value)
  %4811 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4780, float %4779, float %4785, float %4786, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %4812 = fmul fast float %4811, 2.000000e+00
  %4813 = fmul fast float %4812, %4785
  %4814 = fmul fast float %4812, %4786
  %4815 = fmul fast float %4812, %4787
  %4816 = fsub fast float %4781, %4813
  %4817 = fsub fast float %4780, %4814
  %4818 = fsub fast float %4779, %4815
  %4819 = call float @dx.op.binary.f32(i32 36, float %4792, float %4807)  ; FMin(a,b)
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = bitcast float %4820 to i32
  %4822 = ashr i32 %4821, 1
  %4823 = add nsw i32 %4822, 532487669
  %4824 = bitcast i32 %4823 to float
  %4825 = fsub fast float 1.000000e+00, %4791
  %4826 = call float @dx.op.binary.f32(i32 35, float %4825, float 0x3F847AE140000000)  ; FMax(a,b)
  %4827 = fmul fast float %4826, %4826
  %4828 = fmul fast float %4827, %4827
  %4829 = call float @dx.op.unary.f32(i32 7, float %4810)  ; Saturate(value)
  %4830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4824, float %4828, float %4829, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4831 = extractvalue %dx.types.ResRet.f32 %4830, 0
  %4832 = fsub fast float 1.000000e+00, %4792
  %4833 = bitcast float %4832 to i32
  %4834 = sub nsw i32 2129859010, %4833
  %4835 = bitcast i32 %4834 to float
  %4836 = fsub fast float 1.000000e+00, %57
  %4837 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = call float @dx.op.binary.f32(i32 35, float %4837, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4839 = fdiv fast float %4836, %4838
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = call float @dx.op.unary.f32(i32 7, float %4840)  ; Saturate(value)
  %4842 = fmul fast float %4841, 5.000000e-01
  %4843 = fadd fast float %4842, 5.000000e-01
  %4844 = fmul fast float %4843, %57
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.unary.f32(i32 7, float %4845)  ; Saturate(value)
  %4847 = fmul fast float %4846, %4839
  %4848 = fadd fast float %4844, %4847
  %4849 = fsub fast float 5.000000e-01, %4842
  %4850 = fmul fast float %4849, %4788
  %4851 = fmul fast float %4849, %4789
  %4852 = fmul fast float %4849, %4790
  %4853 = fadd fast float %4848, %4850
  %4854 = fadd fast float %4848, %4851
  %4855 = fadd fast float %4848, %4852
  %4856 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = fmul fast float %4857, 5.000000e-01
  %4859 = fadd fast float %4858, 5.000000e-01
  %4860 = fmul fast float %4859, %57
  %4861 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fmul fast float %4862, %4839
  %4864 = fadd fast float %4860, %4863
  %4865 = fsub fast float 5.000000e-01, %4858
  %4866 = fmul fast float %4865, %4788
  %4867 = fmul fast float %4865, %4789
  %4868 = fmul fast float %4865, %4790
  %4869 = fadd fast float %4864, %4866
  %4870 = fadd fast float %4864, %4867
  %4871 = fadd fast float %4864, %4868
  %4872 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4875 = call float @dx.op.binary.f32(i32 36, float %4788, float %4874)  ; FMin(a,b)
  %4876 = fmul fast float %4875, %4820
  %4877 = fsub fast float 1.000000e+00, %4876
  %4878 = bitcast float %4877 to i32
  %4879 = sub nsw i32 2129859010, %4878
  %4880 = bitcast i32 %4879 to float
  %4881 = call float @dx.op.binary.f32(i32 36, float %4789, float %4874)  ; FMin(a,b)
  %4882 = fmul fast float %4881, %4820
  %4883 = fsub fast float 1.000000e+00, %4882
  %4884 = bitcast float %4883 to i32
  %4885 = sub nsw i32 2129859010, %4884
  %4886 = bitcast i32 %4885 to float
  %4887 = call float @dx.op.binary.f32(i32 36, float %4790, float %4874)  ; FMin(a,b)
  %4888 = fmul fast float %4887, %4820
  %4889 = fsub fast float 1.000000e+00, %4888
  %4890 = bitcast float %4889 to i32
  %4891 = sub nsw i32 2129859010, %4890
  %4892 = bitcast i32 %4891 to float
  %4893 = fmul fast float %4819, %58
  %4894 = fmul fast float %4893, %4853
  %4895 = fmul fast float %4894, %4880
  %4896 = fmul fast float %4819, %59
  %4897 = fmul fast float %4896, %4854
  %4898 = fmul fast float %4897, %4886
  %4899 = fmul fast float %4819, %60
  %4900 = fmul fast float %4899, %4855
  %4901 = fmul fast float %4900, %4892
  %4902 = call float @dx.op.binary.f32(i32 36, float %4782, float %4874)  ; FMin(a,b)
  %4903 = fmul fast float %4902, %4820
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = bitcast float %4904 to i32
  %4906 = sub nsw i32 2129859010, %4905
  %4907 = bitcast i32 %4906 to float
  %4908 = call float @dx.op.binary.f32(i32 36, float %4783, float %4874)  ; FMin(a,b)
  %4909 = fmul fast float %4908, %4820
  %4910 = fsub fast float 1.000000e+00, %4909
  %4911 = bitcast float %4910 to i32
  %4912 = sub nsw i32 2129859010, %4911
  %4913 = bitcast i32 %4912 to float
  %4914 = call float @dx.op.binary.f32(i32 36, float %4808, float %4874)  ; FMin(a,b)
  %4915 = fmul fast float %4914, %4820
  %4916 = fsub fast float 1.000000e+00, %4915
  %4917 = bitcast float %4916 to i32
  %4918 = sub nsw i32 2129859010, %4917
  %4919 = bitcast i32 %4918 to float
  %4920 = fmul fast float %4893, %4869
  %4921 = fmul fast float %4920, %4907
  %4922 = fmul fast float %4896, %4870
  %4923 = fmul fast float %4922, %4913
  %4924 = fmul fast float %4899, %4871
  %4925 = fmul fast float %4924, %4919
  %4926 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4898, float %4901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4927 = select i1 %185, float 0.000000e+00, float %4895
  %4928 = select i1 %185, float %4926, float %4898
  %4929 = select i1 %185, float 0.000000e+00, float %4901
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4923, float %4925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = select i1 %185, float 0.000000e+00, float %4921
  %4932 = select i1 %185, float %4930, float %4923
  %4933 = select i1 %185, float 0.000000e+00, float %4925
  %4934 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4935 = fmul fast float %4934, %4927
  %4936 = fmul fast float %4934, %4928
  %4937 = fmul fast float %4929, %4934
  %4938 = fmul fast float %4810, 9.843750e-01
  %4939 = fmul fast float %4791, 9.843750e-01
  %4940 = fadd fast float %4938, 7.812500e-03
  %4941 = fadd fast float %4939, 7.812500e-03
  %4942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4940, float %4941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4943 = extractvalue %dx.types.ResRet.f32 %4942, 2
  %4944 = extractvalue %dx.types.ResRet.f32 %4942, 3
  %4945 = fmul fast float %4943, %4782
  %4946 = fmul fast float %4943, %4783
  %4947 = fmul fast float %4943, %4808
  %4948 = fadd fast float %4945, %4944
  %4949 = fadd fast float %4946, %4944
  %4950 = fadd fast float %4947, %4944
  %4951 = fcmp fast ogt float %4180, 0.000000e+00
  br i1 %4951, label %4952, label %4978

; <label>:4952                                    ; preds = %4775
  %4953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4180, float %4810, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4954 = extractvalue %dx.types.ResRet.f32 %4953, 0
  %4955 = extractvalue %dx.types.ResRet.f32 %4953, 1
  %4956 = extractvalue %dx.types.ResRet.f32 %4953, 2
  %4957 = fadd fast float %4954, -5.000000e-01
  %4958 = fadd fast float %4955, -5.000000e-01
  %4959 = fadd fast float %4956, -5.000000e-01
  %4960 = fsub fast float 1.000000e+00, %4782
  %4961 = fsub fast float 1.000000e+00, %4783
  %4962 = fsub fast float 1.000000e+00, %4808
  %4963 = fmul fast float %4782, 4.000000e+00
  %4964 = fmul fast float %4963, %4960
  %4965 = fmul fast float %4964, %4957
  %4966 = fmul fast float %4783, 4.000000e+00
  %4967 = fmul fast float %4966, %4961
  %4968 = fmul fast float %4967, %4958
  %4969 = fmul fast float %4808, 4.000000e+00
  %4970 = fmul fast float %4969, %4962
  %4971 = fmul fast float %4970, %4959
  %4972 = fadd fast float %4965, %4948
  %4973 = fadd fast float %4968, %4949
  %4974 = fadd fast float %4971, %4950
  %4975 = call float @dx.op.unary.f32(i32 7, float %4972)  ; Saturate(value)
  %4976 = call float @dx.op.unary.f32(i32 7, float %4973)  ; Saturate(value)
  %4977 = call float @dx.op.unary.f32(i32 7, float %4974)  ; Saturate(value)
  br label %4978

; <label>:4978                                    ; preds = %4952, %4775
  %4979 = phi float [ %4975, %4952 ], [ %4948, %4775 ]
  %4980 = phi float [ %4976, %4952 ], [ %4949, %4775 ]
  %4981 = phi float [ %4977, %4952 ], [ %4950, %4775 ]
  %4982 = call float @dx.op.binary.f32(i32 35, float %4980, float %4981)  ; FMax(a,b)
  %4983 = call float @dx.op.binary.f32(i32 35, float %4979, float %4982)  ; FMax(a,b)
  %4984 = fsub fast float 1.000000e+00, %4983
  %4985 = fmul fast float %4983, %4791
  %4986 = fadd fast float %4985, %4791
  %4987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4988 = extractvalue %dx.types.CBufRet.f32 %4987, 0
  %4989 = extractvalue %dx.types.CBufRet.f32 %4987, 1
  %4990 = extractvalue %dx.types.CBufRet.f32 %4987, 2
  %4991 = extractvalue %dx.types.CBufRet.f32 %4987, 3
  %4992 = fmul fast float %4986, %4988
  %4993 = fadd fast float %4992, %4989
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = fmul fast float %4990, %4986
  %4996 = fadd fast float %4995, %4991
  %4997 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %4998 = fsub fast float 1.000000e+00, %4831
  %4999 = fadd fast float %4998, %4997
  %5000 = call float @dx.op.unary.f32(i32 7, float %4999)  ; Saturate(value)
  %5001 = fcmp fast olt float %5000, 1.000000e+00
  br i1 %5001, label %5002, label %5857

; <label>:5002                                    ; preds = %4978
  %5003 = fcmp fast olt float %4994, 1.000000e+00
  %5004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5005 = extractvalue %dx.types.CBufRet.f32 %5004, 0
  %5006 = fcmp fast ogt float %5005, 0.000000e+00
  %5007 = or i1 %5003, %5006
  %5008 = or i1 %5003, %5006
  %5009 = xor i1 %5008, true
  %5010 = zext i1 %5009 to i32
  br i1 %5007, label %5011, label %5254

; <label>:5011                                    ; preds = %5002
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.CBufRet.f32 %5012, 2
  %5016 = extractvalue %dx.types.CBufRet.f32 %5012, 3
  %5017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5018 = extractvalue %dx.types.CBufRet.f32 %5017, 0
  %5019 = extractvalue %dx.types.CBufRet.f32 %5017, 1
  %5020 = extractvalue %dx.types.CBufRet.f32 %5017, 2
  %5021 = extractvalue %dx.types.CBufRet.f32 %5017, 3
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 0
  %5024 = extractvalue %dx.types.CBufRet.f32 %5022, 1
  %5025 = extractvalue %dx.types.CBufRet.f32 %5022, 2
  %5026 = extractvalue %dx.types.CBufRet.f32 %5022, 3
  %5027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5028 = extractvalue %dx.types.CBufRet.f32 %5027, 0
  %5029 = extractvalue %dx.types.CBufRet.f32 %5027, 1
  %5030 = extractvalue %dx.types.CBufRet.f32 %5027, 2
  %5031 = extractvalue %dx.types.CBufRet.f32 %5027, 3
  %5032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5033 = extractvalue %dx.types.CBufRet.f32 %5032, 0
  %5034 = extractvalue %dx.types.CBufRet.f32 %5032, 1
  %5035 = extractvalue %dx.types.CBufRet.f32 %5032, 2
  %5036 = extractvalue %dx.types.CBufRet.f32 %5032, 3
  %5037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5038 = extractvalue %dx.types.CBufRet.f32 %5037, 0
  %5039 = extractvalue %dx.types.CBufRet.f32 %5037, 1
  %5040 = extractvalue %dx.types.CBufRet.f32 %5037, 2
  %5041 = extractvalue %dx.types.CBufRet.f32 %5037, 3
  %5042 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5039, float %5040, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5044 = call float @dx.op.unary.f32(i32 6, float %5043)  ; FAbs(value)
  %5045 = fmul fast float %5044, 8.000000e+00
  %5046 = fadd fast float %5045, -6.000000e+00
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = fmul fast float %5042, 8.000000e+00
  %5049 = fmul fast float %5048, %5005
  %5050 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  %5051 = fcmp fast ogt float %5050, 0.000000e+00
  br i1 %5051, label %5052, label %5229, !dx.controlflow.hints !86

; <label>:5052                                    ; preds = %5011
  %5053 = extractvalue %dx.types.CBufRet.f32 %5004, 1
  %5054 = extractvalue %dx.types.CBufRet.f32 %5004, 2
  %5055 = fsub fast float %5053, %5054
  %5056 = fmul fast float %5055, %4791
  %5057 = fadd fast float %5056, %5054
  %5058 = fmul fast float %198, 2.000000e+00
  %5059 = fmul fast float %199, 2.000000e+00
  %5060 = fadd fast float %5058, -1.000000e+00
  %5061 = fadd fast float %5059, -1.000000e+00
  %5062 = fmul fast float %5057, %5060
  %5063 = fmul fast float %5057, %5061
  %5064 = fadd fast float %5062, %80
  %5065 = fadd fast float %5063, %81
  %5066 = fmul fast float %5064, %4794
  %5067 = fmul fast float %5065, %4795
  %5068 = fadd fast float %4791, 0xBFE3333340000000
  %5069 = fmul fast float %5068, 0x4004000020000000
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %5071, 3.000000e+00
  %5073 = fadd fast float %5072, %198
  %5074 = call float @dx.op.unary.f32(i32 27, float %5073)  ; Round_ni(value)
  %5075 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5066, float %5067, float %5074, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5076 = extractvalue %dx.types.ResRet.f32 %5075, 0
  %5077 = fcmp fast une float %5076, 0xFFF0000000000000
  %5078 = fcmp fast une float %5076, 0x7FF0000000000000
  %5079 = and i1 %5077, %5078
  %5080 = fcmp fast olt float %5076, 0.000000e+00
  %5081 = call float @dx.op.unary.f32(i32 6, float %5076)  ; FAbs(value)
  %5082 = fsub fast float 1.000000e+00, %5081
  %5083 = select i1 %5079, float 1.000000e+00, float 0.000000e+00
  %5084 = fmul fast float %5083, %5050
  %5085 = fcmp fast ogt float %5084, 0.000000e+00
  br i1 %5085, label %5086, label %5229, !dx.controlflow.hints !87

; <label>:5086                                    ; preds = %5052
  %5087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.f32 %5087, 0
  %5089 = extractvalue %dx.types.CBufRet.f32 %5087, 1
  %5090 = extractvalue %dx.types.CBufRet.f32 %5087, 2
  %5091 = select i1 %5080, float 0.000000e+00, float %5088
  %5092 = select i1 %5080, float 0.000000e+00, float %5089
  %5093 = select i1 %5080, float 0.000000e+00, float %5090
  %5094 = select i1 %5080, float %5013, float %5028
  %5095 = select i1 %5080, float %5018, float %5033
  %5096 = select i1 %5080, float %5023, float %5038
  %5097 = select i1 %5080, float %5014, float %5029
  %5098 = select i1 %5080, float %5019, float %5034
  %5099 = select i1 %5080, float %5024, float %5039
  %5100 = select i1 %5080, float %5015, float %5030
  %5101 = select i1 %5080, float %5020, float %5035
  %5102 = select i1 %5080, float %5025, float %5040
  %5103 = select i1 %5080, float %5016, float %5031
  %5104 = select i1 %5080, float %5021, float %5036
  %5105 = select i1 %5080, float %5026, float %5041
  %5106 = fadd fast float %5091, %143
  %5107 = fadd fast float %5092, %144
  %5108 = fadd fast float %5093, %145
  %5109 = fmul fast float %5106, %5094
  %5110 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5097, float %5109)  ; FMad(a,b,c)
  %5111 = call float @dx.op.tertiary.f32(i32 46, float %5108, float %5100, float %5110)  ; FMad(a,b,c)
  %5112 = fadd fast float %5111, %5103
  %5113 = fmul fast float %5106, %5095
  %5114 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5098, float %5113)  ; FMad(a,b,c)
  %5115 = call float @dx.op.tertiary.f32(i32 46, float %5108, float %5101, float %5114)  ; FMad(a,b,c)
  %5116 = fadd fast float %5115, %5104
  %5117 = fmul fast float %5106, %5096
  %5118 = call float @dx.op.tertiary.f32(i32 46, float %5107, float %5099, float %5117)  ; FMad(a,b,c)
  %5119 = call float @dx.op.tertiary.f32(i32 46, float %5108, float %5102, float %5118)  ; FMad(a,b,c)
  %5120 = fadd fast float %5119, %5105
  %5121 = fdiv fast float 1.000000e+00, %5120
  %5122 = fmul fast float %5121, %5112
  %5123 = fmul fast float %5121, %5116
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5127 = fmul fast float %5122, %5125
  %5128 = fmul fast float %5123, %5126
  %5129 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5130 = extractvalue %dx.types.CBufRet.f32 %5124, 3
  %5131 = fadd fast float %5127, %5129
  %5132 = fadd fast float %5128, %5130
  %5133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5134 = extractvalue %dx.types.CBufRet.f32 %5133, 3
  %5135 = fmul fast float %5134, %4816
  %5136 = fmul fast float %5134, %4817
  %5137 = fmul fast float %5134, %4818
  %5138 = fadd fast float %5135, %5106
  %5139 = fadd fast float %5136, %5107
  %5140 = fadd fast float %5137, %5108
  %5141 = fmul fast float %5138, %5094
  %5142 = call float @dx.op.tertiary.f32(i32 46, float %5139, float %5097, float %5141)  ; FMad(a,b,c)
  %5143 = call float @dx.op.tertiary.f32(i32 46, float %5140, float %5100, float %5142)  ; FMad(a,b,c)
  %5144 = fadd fast float %5143, %5103
  %5145 = fmul fast float %5138, %5095
  %5146 = call float @dx.op.tertiary.f32(i32 46, float %5139, float %5098, float %5145)  ; FMad(a,b,c)
  %5147 = call float @dx.op.tertiary.f32(i32 46, float %5140, float %5101, float %5146)  ; FMad(a,b,c)
  %5148 = fadd fast float %5147, %5104
  %5149 = fmul fast float %5138, %5096
  %5150 = call float @dx.op.tertiary.f32(i32 46, float %5139, float %5099, float %5149)  ; FMad(a,b,c)
  %5151 = call float @dx.op.tertiary.f32(i32 46, float %5140, float %5102, float %5150)  ; FMad(a,b,c)
  %5152 = fadd fast float %5151, %5105
  %5153 = fdiv fast float 1.000000e+00, %5152
  %5154 = fmul fast float %5153, %5144
  %5155 = fmul fast float %5153, %5148
  %5156 = fmul fast float %5131, 2.000000e+00
  %5157 = fadd fast float %5156, -1.000000e+00
  %5158 = call float @dx.op.unary.f32(i32 6, float %5157)  ; FAbs(value)
  %5159 = fmul fast float %5158, 5.000000e+00
  %5160 = fadd fast float %5159, -4.000000e+00
  %5161 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5162 = fmul fast float %5161, %5047
  %5163 = fsub fast float %5122, %5154
  %5164 = fmul fast float %5125, %5163
  %5165 = fmul fast float %5162, %5164
  %5166 = fsub fast float %5154, %5122
  %5167 = fmul fast float %5125, %5166
  %5168 = fadd fast float %5167, %5165
  %5169 = fsub fast float %5155, %5123
  %5170 = fmul fast float %5126, %5169
  %5171 = fmul fast float %5168, %5082
  %5172 = fmul fast float %5170, %5082
  %5173 = fadd fast float %5171, %5131
  %5174 = fadd fast float %5172, %5132
  %5175 = fsub fast float %5153, %5121
  %5176 = fmul fast float %5175, %5082
  %5177 = fadd fast float %5176, %5121
  %5178 = fdiv fast float 1.000000e+00, %5177
  %5179 = fadd fast float %4791, -1.000000e+00
  %5180 = fsub fast float %5178, %5120
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 2
  %5183 = fmul fast float %5182, %5178
  %5184 = fdiv fast float 1.600000e+02, %5183
  %5185 = fmul fast float %5179, %5179
  %5186 = fmul fast float %5185, 0xBFB5B17960000000
  %5187 = fmul fast float %5186, %5180
  %5188 = fmul fast float %5187, %5184
  %5189 = call float @dx.op.unary.f32(i32 21, float %5188)  ; Exp(value)
  %5190 = fmul fast float %5189, 0x3FF04B2960000000
  %5191 = fsub fast float 0x3FF04B2960000000, %5190
  %5192 = call float @dx.op.unary.f32(i32 7, float %5191)  ; Saturate(value)
  %5193 = fmul fast float %5192, 4.000000e+00
  %5194 = fadd fast float %198, -5.000000e-01
  %5195 = fadd fast float %199, -5.000000e-01
  %5196 = fmul fast float %5192, 0x3FBEB851E0000000
  %5197 = call float @dx.op.unary.f32(i32 7, float %5196)  ; Saturate(value)
  %5198 = fmul fast float %5197, %5194
  %5199 = fmul fast float %5197, %5195
  %5200 = fadd fast float %5173, %5198
  %5201 = fadd fast float %5174, %5199
  %5202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5200, float %5201, float undef, float undef, i32 0, i32 0, i32 undef, float %5193)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5203 = extractvalue %dx.types.ResRet.f32 %5202, 0
  %5204 = extractvalue %dx.types.ResRet.f32 %5202, 1
  %5205 = extractvalue %dx.types.ResRet.f32 %5202, 2
  %5206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5207 = extractvalue %dx.types.CBufRet.f32 %5206, 2
  %5208 = fmul fast float %5207, %5203
  %5209 = fmul fast float %5207, %5204
  %5210 = fmul fast float %5207, %5205
  %5211 = select i1 %185, float 0.000000e+00, float %5209
  %5212 = select i1 %185, float 0.000000e+00, float %5210
  %5213 = fmul fast float %5200, 2.000000e+00
  %5214 = fmul fast float %5201, 2.000000e+00
  %5215 = fadd fast float %5213, -1.000000e+00
  %5216 = fadd fast float %5214, -1.000000e+00
  %5217 = fmul fast float %5215, %5215
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fsub fast float 1.000000e+00, %5219
  %5221 = fmul fast float %5220, %5047
  %5222 = fadd fast float %5221, %5219
  %5223 = fmul fast float %5216, %5216
  %5224 = fsub fast float 1.000000e+00, %5223
  %5225 = call float @dx.op.unary.f32(i32 7, float %5224)  ; Saturate(value)
  %5226 = fmul fast float %5222, %5225
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = fmul fast float %5227, %5084
  br label %5229

; <label>:5229                                    ; preds = %5086, %5052, %5011
  %5230 = phi float [ %5208, %5086 ], [ 0.000000e+00, %5052 ], [ 0.000000e+00, %5011 ]
  %5231 = phi float [ %5211, %5086 ], [ 0.000000e+00, %5052 ], [ 0.000000e+00, %5011 ]
  %5232 = phi float [ %5212, %5086 ], [ 0.000000e+00, %5052 ], [ 0.000000e+00, %5011 ]
  %5233 = phi float [ %5228, %5086 ], [ 0.000000e+00, %5052 ], [ 0.000000e+00, %5011 ]
  %5234 = fcmp fast olt float %5233, 1.000000e+00
  %5235 = or i1 %5234, %5009
  %5236 = zext i1 %5235 to i32
  %5237 = fmul fast float %5233, %4994
  %5238 = fsub fast float %5233, %5237
  %5239 = fsub fast float 1.000000e+00, %5000
  %5240 = fmul fast float %5238, %5239
  %5241 = fadd fast float %5240, %5000
  %5242 = fsub fast float %5241, %5238
  %5243 = call float @dx.op.unary.f32(i32 7, float %5242)  ; Saturate(value)
  %5244 = fmul fast float %5243, %4931
  %5245 = fmul fast float %5243, %4932
  %5246 = fmul fast float %5243, %4933
  %5247 = fsub fast float -0.000000e+00, %5241
  %5248 = fmul fast float %5238, %5230
  %5249 = fmul fast float %5238, %5231
  %5250 = fmul fast float %5238, %5232
  %5251 = fadd fast float %5248, %5244
  %5252 = fadd fast float %5249, %5245
  %5253 = fadd fast float %5250, %5246
  br label %5254

; <label>:5254                                    ; preds = %5229, %5002
  %5255 = phi float [ %5000, %5002 ], [ %5247, %5229 ]
  %5256 = phi float [ %4931, %5002 ], [ %5251, %5229 ]
  %5257 = phi float [ %4932, %5002 ], [ %5252, %5229 ]
  %5258 = phi float [ %4933, %5002 ], [ %5253, %5229 ]
  %5259 = phi i32 [ %5010, %5002 ], [ %5236, %5229 ]
  %5260 = icmp eq i32 %5259, 0
  br i1 %5260, label %5857, label %5261

; <label>:5261                                    ; preds = %5254
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5264 = extractvalue %dx.types.CBufRet.f32 %5262, 3
  %5265 = fmul fast float %5263, %80
  %5266 = fmul fast float %5264, %81
  %5267 = fptoui float %5265 to i32
  %5268 = fptoui float %5266 to i32
  %5269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5270 = extractvalue %dx.types.CBufRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.CBufRet.f32 %5269, 2
  %5272 = extractvalue %dx.types.CBufRet.f32 %5269, 3
  %5273 = fadd fast float %75, -4.000000e+00
  %5274 = call float @dx.op.binary.f32(i32 35, float %5273, float 0.000000e+00)  ; FMax(a,b)
  %5275 = fadd fast float %5274, %5270
  %5276 = fmul fast float %5275, %5271
  %5277 = call float @dx.op.unary.f32(i32 23, float %5276)  ; Log(value)
  %5278 = fmul fast float %5277, %5272
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5281 = fmul fast float %5278, %5280
  %5282 = call float @dx.op.unary.f32(i32 7, float %5281)  ; Saturate(value)
  %5283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.i32 %5283, 1
  %5285 = add i32 %5284, -1
  %5286 = uitofp i32 %5284 to float
  %5287 = fmul fast float %5286, %5282
  %5288 = fptoui float %5287 to i32
  %5289 = call i32 @dx.op.binary.i32(i32 40, i32 %5288, i32 %5285)  ; UMin(a,b)
  %5290 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5291 = extractvalue %dx.types.CBufRet.i32 %5290, 2
  %5292 = extractvalue %dx.types.CBufRet.i32 %5290, 3
  %5293 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5268, i32 %5291, i32 %5267)  ; UMad(a,b,c)
  %5294 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5289, i32 %5292, i32 %5293)  ; UMad(a,b,c)
  %5295 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %5296 = fptoui float %5295 to i32
  %5297 = lshr i32 %5296, 5
  %5298 = call i32 @dx.op.binary.i32(i32 40, i32 %5297, i32 8191)  ; UMin(a,b)
  %5299 = fcmp fast ogt float %4590, 0.000000e+00
  %5300 = fcmp fast ogt float %4818, 0.000000e+00
  %5301 = and i1 %5300, %5299
  br i1 %5301, label %5302, label %5331

; <label>:5302                                    ; preds = %5261
  %5303 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = call float @dx.op.binary.f32(i32 35, float %5303, float -1.000000e+00)  ; FMax(a,b)
  %5305 = call float @dx.op.binary.f32(i32 36, float %5304, float 1.000000e+00)  ; FMin(a,b)
  %5306 = fmul fast float %5305, %5305
  %5307 = fsub fast float 1.000000e+00, %5306
  %5308 = fmul fast float %5307, 0x3FFC6E2300000000
  %5309 = fsub fast float 1.000000e+00, %5308
  %5310 = fcmp fast ogt float %5309, 0.000000e+00
  %5311 = call float @dx.op.unary.f32(i32 24, float %5309)  ; Sqrt(value)
  %5312 = fsub fast float 1.000000e+00, %5311
  %5313 = call float @dx.op.unary.f32(i32 23, float %5312)  ; Log(value)
  %5314 = fmul fast float %5313, 5.000000e+00
  %5315 = call float @dx.op.unary.f32(i32 21, float %5314)  ; Exp(value)
  %5316 = fmul fast float %5315, 0x3FEF591A60000000
  %5317 = fadd fast float %5316, 0x3F94DCB540000000
  %5318 = select i1 %5310, float %5317, float 1.000000e+00
  %5319 = fcmp fast oge float %5318, 1.000000e+00
  %5320 = fmul fast float %5303, 2.000000e+00
  %5321 = fadd fast float %5320, %4818
  %5322 = select i1 %5319, float %5321, float %4818
  %5323 = fsub fast float %5322, %4818
  %5324 = fmul fast float %5323, %4590
  %5325 = fadd fast float %5324, %4818
  %5326 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %5325, float %4816, float %4817, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 25, float %5326)  ; Rsqrt(value)
  %5328 = fmul fast float %5327, %4816
  %5329 = fmul fast float %5327, %4817
  %5330 = fmul fast float %5325, %5327
  br label %5331

; <label>:5331                                    ; preds = %5302, %5261
  %5332 = phi float [ %5328, %5302 ], [ %4816, %5261 ]
  %5333 = phi float [ %5329, %5302 ], [ %4817, %5261 ]
  %5334 = phi float [ %5330, %5302 ], [ %4818, %5261 ]
  %5335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.i32 %5335, 2
  %5337 = add nsw i32 %5336, -1
  %5338 = call i32 @dx.op.binary.i32(i32 37, i32 %5337, i32 0)  ; IMax(a,b)
  %5339 = shl i32 %5298, 2
  %5340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5339, i32 undef)  ; BufferLoad(srv,index,wot)
  %5341 = extractvalue %dx.types.ResRet.i32 %5340, 0
  %5342 = lshr i32 %5341, 16
  %5343 = and i32 %5341, 65535
  %5344 = lshr i32 %5341, 21
  %5345 = lshr i32 %5343, 5
  %5346 = call i32 @dx.op.binary.i32(i32 40, i32 %5345, i32 %5338)  ; UMin(a,b)
  %5347 = icmp ugt i32 %5344, %5346
  br i1 %5347, label %5729, label %5348

; <label>:5348                                    ; preds = %5331
  br label %5349

; <label>:5349                                    ; preds = %5718, %5348
  %5350 = phi float [ %5719, %5718 ], [ 0.000000e+00, %5348 ]
  %5351 = phi float [ %5720, %5718 ], [ 0.000000e+00, %5348 ]
  %5352 = phi float [ %5721, %5718 ], [ 0.000000e+00, %5348 ]
  %5353 = phi float [ %5722, %5718 ], [ 1.000000e+00, %5348 ]
  %5354 = phi i32 [ %5726, %5718 ], [ %5344, %5348 ]
  %5355 = phi float [ %5723, %5718 ], [ 0.000000e+00, %5348 ]
  %5356 = phi float [ %5724, %5718 ], [ 0.000000e+00, %5348 ]
  %5357 = phi float [ %5725, %5718 ], [ 0.000000e+00, %5348 ]
  %5358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.i32 %5358, 2
  %5360 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5294, i32 %5359, i32 %5354)  ; UMad(a,b,c)
  %5361 = shl i32 %5360, 2
  %5362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5361, i32 undef)  ; BufferLoad(srv,index,wot)
  %5363 = extractvalue %dx.types.ResRet.i32 %5362, 0
  %5364 = shl i32 %5354, 5
  %5365 = sub nsw i32 %5342, %5364
  %5366 = call i32 @dx.op.binary.i32(i32 37, i32 %5365, i32 0)  ; IMax(a,b)
  %5367 = call i32 @dx.op.binary.i32(i32 38, i32 %5366, i32 31)  ; IMin(a,b)
  %5368 = sub nsw i32 1, %5342
  %5369 = add nsw i32 %5368, %5343
  %5370 = call i32 @dx.op.binary.i32(i32 37, i32 %5369, i32 0)  ; IMax(a,b)
  %5371 = call i32 @dx.op.binary.i32(i32 38, i32 %5370, i32 32)  ; IMin(a,b)
  %5372 = and i32 %5371, 31
  %5373 = shl i32 -1, %5372
  %5374 = xor i32 %5373, -1
  %5375 = and i32 %5367, 31
  %5376 = shl i32 %5374, %5375
  %5377 = icmp eq i32 %5371, 32
  %5378 = select i1 %5377, i32 -1, i32 %5376
  %5379 = and i32 %5378, %5363
  %5380 = icmp eq i32 %5379, 0
  br i1 %5380, label %5718, label %5381

; <label>:5381                                    ; preds = %5349
  br label %5382

; <label>:5382                                    ; preds = %5492, %5381
  %5383 = phi float [ %5493, %5492 ], [ %5350, %5381 ]
  %5384 = phi float [ %5494, %5492 ], [ %5351, %5381 ]
  %5385 = phi float [ %5495, %5492 ], [ %5352, %5381 ]
  %5386 = phi float [ %5496, %5492 ], [ %5353, %5381 ]
  %5387 = phi i32 [ %5395, %5492 ], [ %5379, %5381 ]
  %5388 = phi float [ %5497, %5492 ], [ %5355, %5381 ]
  %5389 = phi float [ %5498, %5492 ], [ %5356, %5381 ]
  %5390 = phi float [ %5499, %5492 ], [ %5357, %5381 ]
  %5391 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5387)  ; FirstbitLo(value)
  %5392 = add i32 %5391, %5364
  %5393 = and i32 %5391, 31
  %5394 = shl i32 1, %5393
  %5395 = xor i32 %5394, %5387
  %5396 = mul i32 %5392, 72
  %5397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5396, i32 undef)  ; BufferLoad(srv,index,wot)
  %5398 = extractvalue %dx.types.ResRet.f32 %5397, 0
  %5399 = extractvalue %dx.types.ResRet.f32 %5397, 1
  %5400 = extractvalue %dx.types.ResRet.f32 %5397, 2
  %5401 = add i32 %5396, 12
  %5402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5401, i32 undef)  ; BufferLoad(srv,index,wot)
  %5403 = extractvalue %dx.types.ResRet.i32 %5402, 0
  %5404 = add i32 %5396, 16
  %5405 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5404, i32 undef)  ; BufferLoad(srv,index,wot)
  %5406 = extractvalue %dx.types.ResRet.f32 %5405, 0
  %5407 = extractvalue %dx.types.ResRet.f32 %5405, 1
  %5408 = extractvalue %dx.types.ResRet.f32 %5405, 2
  %5409 = add i32 %5396, 28
  %5410 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5409, i32 undef)  ; BufferLoad(srv,index,wot)
  %5411 = extractvalue %dx.types.ResRet.f32 %5410, 0
  %5412 = add i32 %5396, 32
  %5413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5412, i32 undef)  ; BufferLoad(srv,index,wot)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 0
  %5415 = extractvalue %dx.types.ResRet.f32 %5413, 1
  %5416 = extractvalue %dx.types.ResRet.f32 %5413, 2
  %5417 = extractvalue %dx.types.ResRet.f32 %5413, 3
  %5418 = add i32 %5396, 48
  %5419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.ResRet.f32 %5419, 1
  %5422 = add i32 %5396, 56
  %5423 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5422, i32 undef)  ; BufferLoad(srv,index,wot)
  %5424 = extractvalue %dx.types.ResRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.ResRet.f32 %5423, 1
  %5426 = add i32 %5396, 64
  %5427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5426, i32 undef)  ; BufferLoad(srv,index,wot)
  %5428 = extractvalue %dx.types.ResRet.f32 %5427, 0
  %5429 = extractvalue %dx.types.ResRet.f32 %5427, 1
  %5430 = mul i32 %5392, 60
  %5431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.ResRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.ResRet.f32 %5431, 2
  %5435 = add i32 %5430, 12
  %5436 = add i32 %5430, 48
  %5437 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5436, i32 undef)  ; BufferLoad(srv,index,wot)
  %5438 = extractvalue %dx.types.ResRet.f32 %5437, 0
  %5439 = extractvalue %dx.types.ResRet.f32 %5437, 1
  %5440 = extractvalue %dx.types.ResRet.f32 %5437, 2
  %5441 = and i32 %5403, 32767
  %5442 = bitcast float %5398 to i32
  %5443 = icmp eq i32 %5442, -1
  %5444 = bitcast float %5399 to i32
  %5445 = and i32 %5403, 32768
  %5446 = icmp ne i32 %5445, 0
  %5447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5448 = extractvalue %dx.types.CBufRet.f32 %5447, 0
  %5449 = extractvalue %dx.types.CBufRet.f32 %5447, 1
  %5450 = extractvalue %dx.types.CBufRet.f32 %5447, 2
  %5451 = fsub fast float %5432, %5448
  %5452 = fsub fast float %5433, %5449
  %5453 = fsub fast float %5434, %5450
  %5454 = fsub fast float %143, %5451
  %5455 = fsub fast float %144, %5452
  %5456 = fsub fast float %145, %5453
  %5457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5435, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.ResRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.ResRet.f32 %5457, 2
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = add i32 %5430, 24
  %5463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5462, i32 undef)  ; BufferLoad(srv,index,wot)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5467 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = add i32 %5430, 36
  %5469 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5468, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.f32 %5469, 0
  %5471 = extractvalue %dx.types.ResRet.f32 %5469, 1
  %5472 = extractvalue %dx.types.ResRet.f32 %5469, 2
  %5473 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5470, float %5471, float %5472)  ; Dot3(ax,ay,az,bx,by,bz)
  %5474 = call float @dx.op.unary.f32(i32 6, float %5461)  ; FAbs(value)
  %5475 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %5476 = call float @dx.op.unary.f32(i32 6, float %5473)  ; FAbs(value)
  %5477 = fsub fast float %5438, %5474
  %5478 = fsub fast float %5439, %5475
  %5479 = fsub fast float %5440, %5476
  %5480 = fmul fast float %5477, %5406
  %5481 = fmul fast float %5478, %5407
  %5482 = fmul fast float %5479, %5408
  %5483 = call float @dx.op.binary.f32(i32 36, float %5481, float %5482)  ; FMin(a,b)
  %5484 = call float @dx.op.binary.f32(i32 36, float %5480, float %5483)  ; FMin(a,b)
  %5485 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5486 = call float @dx.op.binary.f32(i32 36, float %5386, float %5485)  ; FMin(a,b)
  %5487 = uitofp i1 %5446 to float
  %5488 = fadd fast float %4590, 1.000000e+00
  %5489 = fsub fast float %5488, %5487
  %5490 = fmul fast float %5486, %5489
  %5491 = fcmp fast ogt float %5490, 0.000000e+00
  br i1 %5491, label %5501, label %5492

; <label>:5492                                    ; preds = %5643, %5382
  %5493 = phi float [ %5707, %5643 ], [ %5383, %5382 ]
  %5494 = phi float [ %5708, %5643 ], [ %5384, %5382 ]
  %5495 = phi float [ %5709, %5643 ], [ %5385, %5382 ]
  %5496 = phi float [ %5716, %5643 ], [ %5386, %5382 ]
  %5497 = phi float [ %5713, %5643 ], [ %5388, %5382 ]
  %5498 = phi float [ %5714, %5643 ], [ %5389, %5382 ]
  %5499 = phi float [ %5715, %5643 ], [ %5390, %5382 ]
  %5500 = icmp eq i32 %5387, %5394
  br i1 %5500, label %5717, label %5382

; <label>:5501                                    ; preds = %5382
  br i1 %5443, label %5559, label %5502

; <label>:5502                                    ; preds = %5501
  %5503 = fsub fast float -0.000000e+00, %5458
  %5504 = fsub fast float -0.000000e+00, %5459
  %5505 = fsub fast float -0.000000e+00, %5460
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %5503, float %5504, float %5505)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = fsub fast float -0.000000e+00, %5506
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5503, float %5504, float %5505)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = fadd fast float %5508, %5421
  %5510 = fadd fast float %5420, %5508
  %5511 = fsub fast float -0.000000e+00, %5510
  %5512 = fcmp ogt float %5506, -0.000000e+00
  %5513 = select i1 %5512, float %5511, float %5509
  %5514 = call float @dx.op.unary.f32(i32 6, float %5507)  ; FAbs(value)
  %5515 = fdiv fast float 1.000000e+00, %5514
  %5516 = fmul fast float %5513, %5515
  %5517 = call float @dx.op.binary.f32(i32 35, float %5516, float 0.000000e+00)  ; FMax(a,b)
  %5518 = fsub fast float -0.000000e+00, %5464
  %5519 = fsub fast float -0.000000e+00, %5465
  %5520 = fsub fast float -0.000000e+00, %5466
  %5521 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %5518, float %5519, float %5520)  ; Dot3(ax,ay,az,bx,by,bz)
  %5522 = fsub fast float -0.000000e+00, %5521
  %5523 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5518, float %5519, float %5520)  ; Dot3(ax,ay,az,bx,by,bz)
  %5524 = fadd fast float %5523, %5425
  %5525 = fadd fast float %5424, %5523
  %5526 = fsub fast float -0.000000e+00, %5525
  %5527 = fcmp ogt float %5521, -0.000000e+00
  %5528 = select i1 %5527, float %5526, float %5524
  %5529 = call float @dx.op.unary.f32(i32 6, float %5522)  ; FAbs(value)
  %5530 = fdiv fast float 1.000000e+00, %5529
  %5531 = fmul fast float %5528, %5530
  %5532 = call float @dx.op.binary.f32(i32 35, float %5531, float 0.000000e+00)  ; FMax(a,b)
  %5533 = fsub fast float -0.000000e+00, %5470
  %5534 = fsub fast float -0.000000e+00, %5471
  %5535 = fsub fast float -0.000000e+00, %5472
  %5536 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %5533, float %5534, float %5535)  ; Dot3(ax,ay,az,bx,by,bz)
  %5537 = fsub fast float -0.000000e+00, %5536
  %5538 = call float @dx.op.dot3.f32(i32 55, float %5454, float %5455, float %5456, float %5533, float %5534, float %5535)  ; Dot3(ax,ay,az,bx,by,bz)
  %5539 = fadd fast float %5538, %5429
  %5540 = fadd fast float %5428, %5538
  %5541 = fsub fast float -0.000000e+00, %5540
  %5542 = fcmp ogt float %5536, -0.000000e+00
  %5543 = select i1 %5542, float %5541, float %5539
  %5544 = call float @dx.op.unary.f32(i32 6, float %5537)  ; FAbs(value)
  %5545 = fdiv fast float 1.000000e+00, %5544
  %5546 = fmul fast float %5543, %5545
  %5547 = call float @dx.op.binary.f32(i32 35, float %5546, float 0.000000e+00)  ; FMax(a,b)
  %5548 = call float @dx.op.binary.f32(i32 36, float %5532, float %5547)  ; FMin(a,b)
  %5549 = call float @dx.op.binary.f32(i32 36, float %5517, float %5548)  ; FMin(a,b)
  %5550 = fmul fast float %5549, %5332
  %5551 = fmul fast float %5549, %5333
  %5552 = fmul fast float %5549, %5334
  %5553 = fadd fast float %5550, %143
  %5554 = fadd fast float %5551, %144
  %5555 = fadd fast float %5552, %145
  %5556 = fsub fast float %5553, %5398
  %5557 = fsub fast float %5554, %5399
  %5558 = fsub fast float %5555, %5400
  br label %5566

; <label>:5559                                    ; preds = %5501
  %5560 = fmul fast float %5332, 8.096000e+03
  %5561 = fmul fast float %5333, 8.096000e+03
  %5562 = fmul fast float %5334, 8.096000e+03
  %5563 = fadd fast float %5560, %143
  %5564 = fadd fast float %5561, %144
  %5565 = fadd fast float %5562, %145
  br label %5566

; <label>:5566                                    ; preds = %5559, %5502
  %5567 = phi float [ %5332, %5559 ], [ %5556, %5502 ]
  %5568 = phi float [ %5333, %5559 ], [ %5557, %5502 ]
  %5569 = phi float [ %5334, %5559 ], [ %5558, %5502 ]
  %5570 = phi float [ %5563, %5559 ], [ %5553, %5502 ]
  %5571 = phi float [ %5564, %5559 ], [ %5554, %5502 ]
  %5572 = phi float [ %5565, %5559 ], [ %5555, %5502 ]
  %5573 = fcmp fast olt float %5417, 1.000000e+00
  br i1 %5573, label %5574, label %5605, !dx.controlflow.hints !88

; <label>:5574                                    ; preds = %5566
  %5575 = fmul fast float %5569, %5415
  %5576 = fmul fast float %5568, %5416
  %5577 = fsub fast float %5575, %5576
  %5578 = fmul fast float %5567, %5416
  %5579 = fmul fast float %5569, %5414
  %5580 = fsub fast float %5578, %5579
  %5581 = fmul fast float %5568, %5414
  %5582 = fmul fast float %5567, %5415
  %5583 = fsub fast float %5581, %5582
  %5584 = fmul fast float %5577, 2.000000e+00
  %5585 = fmul fast float %5580, 2.000000e+00
  %5586 = fmul fast float %5583, 2.000000e+00
  %5587 = fmul fast float %5584, %5417
  %5588 = fmul fast float %5585, %5417
  %5589 = fmul fast float %5586, %5417
  %5590 = fmul fast float %5586, %5415
  %5591 = fmul fast float %5585, %5416
  %5592 = fmul fast float %5584, %5416
  %5593 = fmul fast float %5586, %5414
  %5594 = fmul fast float %5585, %5414
  %5595 = fmul fast float %5584, %5415
  %5596 = fadd fast float %5590, %5567
  %5597 = fadd fast float %5596, %5587
  %5598 = fsub fast float %5597, %5591
  %5599 = fsub fast float %5568, %5593
  %5600 = fadd fast float %5599, %5588
  %5601 = fadd fast float %5600, %5592
  %5602 = fadd fast float %5589, %5569
  %5603 = fsub fast float %5602, %5595
  %5604 = fadd fast float %5603, %5594
  br label %5605

; <label>:5605                                    ; preds = %5574, %5566
  %5606 = phi float [ %5598, %5574 ], [ %5567, %5566 ]
  %5607 = phi float [ %5601, %5574 ], [ %5568, %5566 ]
  %5608 = phi float [ %5604, %5574 ], [ %5569, %5566 ]
  br i1 %5443, label %5640, label %5609

; <label>:5609                                    ; preds = %5605
  %5610 = fmul fast float %4791, 0x400187C840000000
  %5611 = fadd fast float %5610, 0xC00EFC2120000000
  %5612 = fmul fast float %5611, %4791
  %5613 = fadd fast float %5612, 0x3FE5D16340000000
  %5614 = fmul fast float %5613, %4791
  %5615 = fadd fast float %5614, 1.000000e+00
  %5616 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  %5617 = fsub fast float %5570, %143
  %5618 = fsub fast float %5571, %144
  %5619 = fsub fast float %5572, %145
  %5620 = fsub fast float %5570, %5398
  %5621 = fsub fast float %5571, %5399
  %5622 = fsub fast float %5572, %5400
  %5623 = call float @dx.op.dot3.f32(i32 55, float %5617, float %5618, float %5619, float %5617, float %5618, float %5619)  ; Dot3(ax,ay,az,bx,by,bz)
  %5624 = call float @dx.op.dot3.f32(i32 55, float %5620, float %5621, float %5622, float %5620, float %5621, float %5622)  ; Dot3(ax,ay,az,bx,by,bz)
  %5625 = fadd fast float %5624, 0x3EE4F8B580000000
  %5626 = fdiv fast float %5623, %5625
  %5627 = bitcast float %5626 to i32
  %5628 = ashr i32 %5627, 1
  %5629 = add nsw i32 %5628, 532487669
  %5630 = bitcast i32 %5629 to float
  %5631 = fmul fast float %5630, %5616
  %5632 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  %5633 = fmul fast float %5632, 0x4009981AE0000000
  %5634 = fsub fast float 0x40111BBD80000000, %5633
  %5635 = fmul fast float %5634, %5632
  %5636 = fadd fast float %5635, 0xC0009F6020000000
  %5637 = fmul fast float %5636, %5632
  %5638 = fadd fast float %5637, 1.000000e+00
  %5639 = call float @dx.op.unary.f32(i32 7, float %5638)  ; Saturate(value)
  br label %5643

; <label>:5640                                    ; preds = %5605
  %5641 = icmp ne i32 %5444, -1
  %5642 = zext i1 %5641 to i32
  br label %5643

; <label>:5643                                    ; preds = %5640, %5609
  %5644 = phi float [ %4791, %5640 ], [ %5639, %5609 ]
  %5645 = phi i32 [ %5642, %5640 ], [ 0, %5609 ]
  %5646 = fmul float %5644, 5.000000e+00
  %5647 = fsub float 5.000000e+00, %5646
  %5648 = icmp ne i32 %5645, 0
  %5649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5650 = extractvalue %dx.types.CBufRet.f32 %5649, 3
  %5651 = fadd fast float %5650, %5647
  %5652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5651)  ; FMax(a,b)
  %5653 = call float @dx.op.unary.f32(i32 6, float %5606)  ; FAbs(value)
  %5654 = call float @dx.op.unary.f32(i32 6, float %5607)  ; FAbs(value)
  %5655 = fadd fast float %5654, %5653
  %5656 = call float @dx.op.unary.f32(i32 6, float %5608)  ; FAbs(value)
  %5657 = fadd fast float %5655, %5656
  %5658 = fcmp fast oeq float %5657, 0.000000e+00
  %5659 = fdiv fast float 1.000000e+00, %5657
  %5660 = select i1 %5658, float 1.000000e+00, float %5659
  %5661 = fmul fast float %5660, %5606
  %5662 = fmul fast float %5660, %5607
  %5663 = call float @dx.op.unary.f32(i32 6, float %5662)  ; FAbs(value)
  %5664 = call float @dx.op.unary.f32(i32 6, float %5661)  ; FAbs(value)
  %5665 = fsub fast float 1.000000e+00, %5663
  %5666 = fsub fast float 1.000000e+00, %5664
  %5667 = fcmp fast oge float %5661, 0.000000e+00
  %5668 = fcmp fast oge float %5662, 0.000000e+00
  %5669 = select i1 %5667, float 1.000000e+00, float -1.000000e+00
  %5670 = select i1 %5668, float 1.000000e+00, float -1.000000e+00
  %5671 = fcmp fast ole float %5608, 0.000000e+00
  %5672 = fmul fast float %5669, %5665
  %5673 = fmul fast float %5670, %5666
  %5674 = select i1 %5671, float %5672, float %5661
  %5675 = select i1 %5671, float %5673, float %5662
  %5676 = fmul fast float %5674, 5.000000e-01
  %5677 = fmul fast float %5675, 5.000000e-01
  %5678 = fadd fast float %5676, 5.000000e-01
  %5679 = fadd fast float %5677, 5.000000e-01
  %5680 = uitofp i32 %5441 to float
  %5681 = call float @dx.op.binary.f32(i32 36, float %5652, float 3.000000e+00)  ; FMin(a,b)
  %5682 = fadd fast float %5681, 2.000000e+00
  %5683 = call float @dx.op.unary.f32(i32 21, float %5682)  ; Exp(value)
  %5684 = extractvalue %dx.types.CBufRet.f32 %5649, 1
  %5685 = fmul fast float %5684, %5683
  %5686 = fmul fast float %5685, 2.000000e+00
  %5687 = fsub fast float 1.000000e+00, %5686
  %5688 = fmul fast float %5678, %5687
  %5689 = fmul fast float %5679, %5687
  %5690 = fadd fast float %5688, %5685
  %5691 = fadd fast float %5689, %5685
  %5692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5690, float %5691, float %5680, float undef, i32 0, i32 0, i32 undef, float %5652)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5697 = extractvalue %dx.types.CBufRet.f32 %5696, 3
  %5698 = fmul fast float %5697, %5411
  %5699 = call float @dx.op.binary.f32(i32 36, float %4872, float %5698)  ; FMin(a,b)
  %5700 = select i1 %5648, float %5699, float %5698
  %5701 = fmul fast float %5693, %5490
  %5702 = fmul fast float %5701, %5700
  %5703 = fmul fast float %5694, %5490
  %5704 = fmul fast float %5703, %5700
  %5705 = fmul fast float %5695, %5490
  %5706 = fmul fast float %5705, %5700
  %5707 = fadd fast float %5702, %5383
  %5708 = fadd fast float %5704, %5384
  %5709 = fadd fast float %5706, %5385
  %5710 = fmul fast float %5570, %5490
  %5711 = fmul fast float %5571, %5490
  %5712 = fmul fast float %5572, %5490
  %5713 = fadd fast float %5710, %5388
  %5714 = fadd fast float %5711, %5389
  %5715 = fadd fast float %5712, %5390
  %5716 = fsub fast float %5386, %5490
  br label %5492

; <label>:5717                                    ; preds = %5492
  br label %5718

; <label>:5718                                    ; preds = %5717, %5349
  %5719 = phi float [ %5350, %5349 ], [ %5493, %5717 ]
  %5720 = phi float [ %5351, %5349 ], [ %5494, %5717 ]
  %5721 = phi float [ %5352, %5349 ], [ %5495, %5717 ]
  %5722 = phi float [ %5353, %5349 ], [ %5496, %5717 ]
  %5723 = phi float [ %5355, %5349 ], [ %5497, %5717 ]
  %5724 = phi float [ %5356, %5349 ], [ %5498, %5717 ]
  %5725 = phi float [ %5357, %5349 ], [ %5499, %5717 ]
  %5726 = add i32 %5354, 1
  %5727 = icmp ugt i32 %5726, %5346
  br i1 %5727, label %5728, label %5349, !llvm.loop !89

; <label>:5728                                    ; preds = %5718
  br label %5729

; <label>:5729                                    ; preds = %5728, %5331
  %5730 = phi float [ 0.000000e+00, %5331 ], [ %5719, %5728 ]
  %5731 = phi float [ 0.000000e+00, %5331 ], [ %5720, %5728 ]
  %5732 = phi float [ 0.000000e+00, %5331 ], [ %5721, %5728 ]
  %5733 = phi float [ 0.000000e+00, %5331 ], [ %5723, %5728 ]
  %5734 = phi float [ 0.000000e+00, %5331 ], [ %5724, %5728 ]
  %5735 = phi float [ 0.000000e+00, %5331 ], [ %5725, %5728 ]
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5730, float %5731, float %5732, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = select i1 %185, float 0.000000e+00, float %5730
  %5738 = select i1 %185, float %5736, float %5731
  %5739 = select i1 %185, float 0.000000e+00, float %5732
  %5740 = fcmp fast olt float %5255, 0.000000e+00
  %5741 = call float @dx.op.unary.f32(i32 6, float %5255)  ; FAbs(value)
  %5742 = fmul fast float %5741, %5256
  %5743 = fmul fast float %5741, %5257
  %5744 = fmul fast float %5741, %5258
  %5745 = select i1 %5740, float %5256, float %5742
  %5746 = select i1 %5740, float %5257, float %5743
  %5747 = select i1 %5740, float %5258, float %5744
  %5748 = fsub fast float 1.000000e+00, %5741
  %5749 = call float @dx.op.unary.f32(i32 7, float %5748)  ; Saturate(value)
  %5750 = fmul fast float %5749, %5737
  %5751 = fmul fast float %5749, %5738
  %5752 = fmul fast float %5749, %5739
  %5753 = fadd fast float %5745, %5750
  %5754 = fadd fast float %5746, %5751
  %5755 = fadd fast float %5747, %5752
  %5756 = fcmp fast une float %5005, 0.000000e+00
  br i1 %5756, label %5857, label %5757

; <label>:5757                                    ; preds = %5729
  %5758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5759 = extractvalue %dx.types.CBufRet.f32 %5758, 0
  %5760 = extractvalue %dx.types.CBufRet.f32 %5758, 1
  %5761 = extractvalue %dx.types.CBufRet.f32 %5758, 2
  %5762 = extractvalue %dx.types.CBufRet.f32 %5758, 3
  %5763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5764 = extractvalue %dx.types.CBufRet.f32 %5763, 0
  %5765 = extractvalue %dx.types.CBufRet.f32 %5763, 1
  %5766 = extractvalue %dx.types.CBufRet.f32 %5763, 2
  %5767 = extractvalue %dx.types.CBufRet.f32 %5763, 3
  %5768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5769 = extractvalue %dx.types.CBufRet.f32 %5768, 0
  %5770 = extractvalue %dx.types.CBufRet.f32 %5768, 1
  %5771 = extractvalue %dx.types.CBufRet.f32 %5768, 2
  %5772 = extractvalue %dx.types.CBufRet.f32 %5768, 3
  %5773 = call float @dx.op.dot3.f32(i32 55, float %5769, float %5770, float %5771, float %4816, float %4817, float %4818)  ; Dot3(ax,ay,az,bx,by,bz)
  %5774 = call float @dx.op.dot3.f32(i32 55, float %5733, float %5734, float %5735, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5775 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %5769, float %5770, float %5771)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = fadd fast float %4791, -1.000000e+00
  %5777 = fsub fast float %5774, %5775
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 2
  %5780 = fmul fast float %5779, %5774
  %5781 = fdiv fast float 1.600000e+02, %5780
  %5782 = fmul fast float %5776, %5776
  %5783 = fmul fast float %5782, 0xBFB5B17960000000
  %5784 = fmul fast float %5783, %5777
  %5785 = fmul fast float %5784, %5781
  %5786 = call float @dx.op.unary.f32(i32 21, float %5785)  ; Exp(value)
  %5787 = fmul fast float %5786, 0x3FF04B2960000000
  %5788 = fsub fast float 0x3FF04B2960000000, %5787
  %5789 = call float @dx.op.unary.f32(i32 7, float %5788)  ; Saturate(value)
  %5790 = fmul fast float %5789, 4.000000e+00
  %5791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5792 = extractvalue %dx.types.CBufRet.f32 %5791, 0
  %5793 = extractvalue %dx.types.CBufRet.f32 %5791, 1
  %5794 = extractvalue %dx.types.CBufRet.f32 %5791, 2
  %5795 = fadd fast float %5792, %5733
  %5796 = fadd fast float %5793, %5734
  %5797 = fadd fast float %5794, %5735
  %5798 = fmul fast float %5795, %5759
  %5799 = call float @dx.op.tertiary.f32(i32 46, float %5796, float %5760, float %5798)  ; FMad(a,b,c)
  %5800 = call float @dx.op.tertiary.f32(i32 46, float %5797, float %5761, float %5799)  ; FMad(a,b,c)
  %5801 = fadd fast float %5800, %5762
  %5802 = fmul fast float %5795, %5764
  %5803 = call float @dx.op.tertiary.f32(i32 46, float %5796, float %5765, float %5802)  ; FMad(a,b,c)
  %5804 = call float @dx.op.tertiary.f32(i32 46, float %5797, float %5766, float %5803)  ; FMad(a,b,c)
  %5805 = fadd fast float %5804, %5767
  %5806 = fmul fast float %5795, %5769
  %5807 = call float @dx.op.tertiary.f32(i32 46, float %5796, float %5770, float %5806)  ; FMad(a,b,c)
  %5808 = call float @dx.op.tertiary.f32(i32 46, float %5797, float %5771, float %5807)  ; FMad(a,b,c)
  %5809 = fadd fast float %5808, %5772
  %5810 = fdiv fast float %5801, %5809
  %5811 = fdiv fast float %5805, %5809
  %5812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5813 = extractvalue %dx.types.CBufRet.f32 %5812, 0
  %5814 = extractvalue %dx.types.CBufRet.f32 %5812, 1
  %5815 = fmul fast float %5813, %5810
  %5816 = fmul fast float %5814, %5811
  %5817 = extractvalue %dx.types.CBufRet.f32 %5812, 2
  %5818 = extractvalue %dx.types.CBufRet.f32 %5812, 3
  %5819 = fadd fast float %5815, %5817
  %5820 = fadd fast float %5816, %5818
  %5821 = fmul fast float %5773, 8.000000e+00
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = fmul fast float %5819, 2.000000e+00
  %5824 = fmul fast float %5820, 2.000000e+00
  %5825 = fadd fast float %5823, -1.000000e+00
  %5826 = fadd fast float %5824, -1.000000e+00
  %5827 = fmul fast float %5825, %5825
  %5828 = fsub fast float 1.000000e+00, %5827
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = fmul fast float %5826, %5826
  %5831 = fsub fast float 1.000000e+00, %5830
  %5832 = call float @dx.op.unary.f32(i32 7, float %5831)  ; Saturate(value)
  %5833 = fmul fast float %5005, %5829
  %5834 = fmul fast float %5833, %5832
  %5835 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5836 = fmul fast float %5835, %5822
  %5837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5819, float %5820, float undef, float undef, i32 0, i32 0, i32 undef, float %5790)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5838 = extractvalue %dx.types.ResRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.ResRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.ResRet.f32 %5837, 2
  %5841 = select i1 %185, float 0.000000e+00, float %5839
  %5842 = select i1 %185, float 0.000000e+00, float %5840
  %5843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5844 = extractvalue %dx.types.CBufRet.f32 %5843, 2
  %5845 = fmul fast float %5844, %5838
  %5846 = fmul fast float %5841, %5844
  %5847 = fmul fast float %5842, %5844
  %5848 = fsub fast float %5845, %5737
  %5849 = fsub fast float %5846, %5738
  %5850 = fsub fast float %5847, %5739
  %5851 = fmul fast float %5848, %5836
  %5852 = fmul fast float %5849, %5836
  %5853 = fmul fast float %5850, %5836
  %5854 = fadd fast float %5851, %5737
  %5855 = fadd fast float %5852, %5738
  %5856 = fadd fast float %5853, %5739
  br label %5857

; <label>:5857                                    ; preds = %5757, %5729, %5254, %4978
  %5858 = phi float [ %5256, %5254 ], [ %5854, %5757 ], [ %5753, %5729 ], [ %4931, %4978 ]
  %5859 = phi float [ %5257, %5254 ], [ %5855, %5757 ], [ %5754, %5729 ], [ %4932, %4978 ]
  %5860 = phi float [ %5258, %5254 ], [ %5856, %5757 ], [ %5755, %5729 ], [ %4933, %4978 ]
  %5861 = fmul fast float %143, %143
  %5862 = fmul fast float %144, %144
  %5863 = fadd fast float %5862, %5861
  %5864 = fmul fast float %145, %145
  %5865 = fadd fast float %5863, %5864
  %5866 = call float @dx.op.unary.f32(i32 24, float %5865)  ; Sqrt(value)
  %5867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5868 = extractvalue %dx.types.CBufRet.f32 %5867, 1
  %5869 = fsub fast float %5866, %5868
  %5870 = extractvalue %dx.types.CBufRet.f32 %5867, 2
  %5871 = fmul fast float %5869, %5870
  %5872 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5867, 0
  %5874 = extractvalue %dx.types.CBufRet.f32 %5867, 3
  %5875 = fmul fast float %5872, %46
  %5876 = fmul fast float %5875, %5873
  %5877 = fmul fast float %5875, %5874
  %5878 = fadd fast float %5877, 1.000000e+00
  %5879 = fmul fast float %4984, %4935
  %5880 = fmul fast float %5879, %5878
  %5881 = fmul fast float %4984, %4936
  %5882 = fmul fast float %5881, %5878
  %5883 = fmul fast float %4984, %4937
  %5884 = fmul fast float %5883, %5878
  %5885 = call float @dx.op.dot3.f32(i32 55, float %4788, float %4789, float %4790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5886 = fcmp fast ogt float %5885, 0x3E7FF19E20000000
  %5887 = fdiv fast float 1.000000e+00, %5885
  %5888 = select i1 %5886, float %5887, float 0.000000e+00
  %5889 = fmul fast float %5888, %4788
  %5890 = fmul fast float %5888, %4789
  %5891 = fmul fast float %5888, %4790
  %5892 = fadd fast float %5889, -1.000000e+00
  %5893 = fadd fast float %5890, -1.000000e+00
  %5894 = fadd fast float %5891, -1.000000e+00
  %5895 = fmul fast float %5892, 5.000000e-01
  %5896 = fmul fast float %5893, 5.000000e-01
  %5897 = fmul fast float %5894, 5.000000e-01
  %5898 = fadd fast float %5895, 1.000000e+00
  %5899 = fadd fast float %5896, 1.000000e+00
  %5900 = fadd fast float %5897, 1.000000e+00
  %5901 = fadd fast float %5876, %4181
  %5902 = fmul fast float %5858, %4979
  %5903 = fmul fast float %5859, %4980
  %5904 = fmul fast float %5860, %4981
  %5905 = fsub fast float 1.000000e+00, %4810
  %5906 = bitcast float %5905 to i32
  %5907 = sitofp i32 %5906 to float
  %5908 = fmul fast float %5907, 5.000000e+00
  %5909 = fadd fast float %5908, 0xC1EFBF8940000000
  %5910 = fptosi float %5909 to i32
  %5911 = bitcast i32 %5910 to float
  %5912 = fmul fast float %5901, %5911
  %5913 = fmul fast float %5879, %5912
  %5914 = fmul fast float %5913, %5898
  %5915 = fmul fast float %5881, %5912
  %5916 = fmul fast float %5915, %5899
  %5917 = fmul fast float %5883, %5912
  %5918 = fmul fast float %5917, %5900
  %5919 = fmul fast float %5880, %4177
  %5920 = fmul fast float %5882, %4177
  %5921 = fmul fast float %5884, %4177
  %5922 = fadd fast float %5902, %4173
  %5923 = fadd fast float %5922, %5914
  %5924 = fmul fast float %5923, %4177
  %5925 = fadd fast float %5903, %4174
  %5926 = fadd fast float %5925, %5916
  %5927 = fmul fast float %5926, %4177
  %5928 = fadd fast float %5904, %4175
  %5929 = fadd fast float %5928, %5918
  %5930 = fmul fast float %5929, %4177
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 3
  %5933 = fcmp fast oeq float %5932, 0.000000e+00
  br i1 %5933, label %6152, label %5934

; <label>:5934                                    ; preds = %5857
  %5935 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5936 = extractvalue %dx.types.CBufRet.f32 %5931, 1
  %5937 = extractvalue %dx.types.CBufRet.f32 %5931, 2
  %5938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5939 = extractvalue %dx.types.CBufRet.f32 %5938, 0
  %5940 = extractvalue %dx.types.CBufRet.f32 %5938, 1
  %5941 = extractvalue %dx.types.CBufRet.f32 %5938, 2
  %5942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5943 = extractvalue %dx.types.CBufRet.f32 %5942, 0
  %5944 = extractvalue %dx.types.CBufRet.f32 %5942, 1
  %5945 = call float @dx.op.dot3.f32(i32 55, float %5939, float %5940, float %5941, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5946 = select i1 %185, float %5943, float %5939
  %5947 = select i1 %185, float %5945, float %5940
  %5948 = select i1 %185, float %5944, float %5941
  %5949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5950 = extractvalue %dx.types.CBufRet.f32 %5949, 1
  %5951 = fcmp fast une float %5950, 0.000000e+00
  br i1 %5951, label %5952, label %5969

; <label>:5952                                    ; preds = %5934
  %5953 = fptoui float %80 to i32
  %5954 = fptoui float %81 to i32
  %5955 = lshr i32 %5953, 4
  %5956 = lshr i32 %5954, 4
  %5957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5958 = extractvalue %dx.types.CBufRet.f32 %5957, 0
  %5959 = fptoui float %5958 to i32
  %5960 = add i32 %5959, 15
  %5961 = lshr i32 %5960, 4
  %5962 = mul i32 %5961, %5956
  %5963 = add i32 %5962, %5955
  %5964 = shl i32 %5963, 3
  %5965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5964, i32 undef)  ; BufferLoad(srv,index,wot)
  %5966 = extractvalue %dx.types.ResRet.i32 %5965, 0
  %5967 = and i32 %5966, -268435456
  %5968 = icmp eq i32 %5967, -1342177280
  br i1 %5968, label %5974, label %5969

; <label>:5969                                    ; preds = %5952, %5934
  %5970 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4796, float %4797, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5971 = extractvalue %dx.types.ResRet.f32 %5970, 0
  %5972 = extractvalue %dx.types.ResRet.f32 %5970, 1
  %5973 = extractvalue %dx.types.ResRet.f32 %5970, 2
  br label %5974

; <label>:5974                                    ; preds = %5969, %5952
  %5975 = phi float [ %5971, %5969 ], [ 0.000000e+00, %5952 ]
  %5976 = phi float [ %5972, %5969 ], [ 0.000000e+00, %5952 ]
  %5977 = phi float [ %5973, %5969 ], [ 0.000000e+00, %5952 ]
  %5978 = call float @dx.op.binary.f32(i32 36, float %5976, float %5977)  ; FMin(a,b)
  %5979 = call float @dx.op.binary.f32(i32 36, float %5975, float %5978)  ; FMin(a,b)
  %5980 = fcmp fast ogt float %5979, 0.000000e+00
  br i1 %5980, label %5981, label %6152, !dx.controlflow.hints !91

; <label>:5981                                    ; preds = %5974
  %5982 = fmul fast float %5975, %5946
  %5983 = fmul fast float %5976, %5947
  %5984 = fmul fast float %5977, %5948
  %5985 = fsub fast float %5935, %4781
  %5986 = fsub fast float %5936, %4780
  %5987 = fsub fast float %5937, %4779
  %5988 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %5985, float %5986, float %5987)  ; Dot3(ax,ay,az,bx,by,bz)
  %5989 = call float @dx.op.unary.f32(i32 25, float %5988)  ; Rsqrt(value)
  %5990 = fmul fast float %5989, %5985
  %5991 = fmul fast float %5989, %5986
  %5992 = fmul fast float %5989, %5987
  %5993 = call float @dx.op.dot3.f32(i32 55, float %5935, float %5936, float %5937, float %4785, float %4786, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %5994 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4777, float %4776, float %5990, float %5991, float %5992)  ; Dot3(ax,ay,az,bx,by,bz)
  %5995 = call float @dx.op.unary.f32(i32 7, float %5993)  ; Saturate(value)
  %5996 = fmul fast float %5995, %5995
  %5997 = fmul fast float %5996, %4835
  %5998 = call float @dx.op.unary.f32(i32 7, float %5997)  ; Saturate(value)
  %5999 = fmul fast float %5998, %5995
  %6000 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %5990, float %5991, float %5992)  ; Dot3(ax,ay,az,bx,by,bz)
  %6001 = fmul fast float %6000, %6000
  %6002 = call float @dx.op.unary.f32(i32 6, float %5993)  ; FAbs(value)
  %6003 = fsub fast float 1.000000e+00, %4828
  %6004 = fmul fast float %4810, %4810
  %6005 = fmul fast float %6004, %6003
  %6006 = fadd fast float %6005, %4828
  %6007 = bitcast float %6006 to i32
  %6008 = ashr i32 %6007, 1
  %6009 = add nsw i32 %6008, 532487669
  %6010 = bitcast i32 %6009 to float
  %6011 = fadd fast float %6010, %4810
  %6012 = fmul fast float %4828, %6001
  %6013 = fsub fast float 1.000000e+00, %6001
  %6014 = fadd fast float %6013, %6012
  %6015 = fmul fast float %6002, %6002
  %6016 = fmul fast float %6015, %6003
  %6017 = fadd fast float %6016, %4828
  %6018 = bitcast float %6017 to i32
  %6019 = ashr i32 %6018, 1
  %6020 = add nsw i32 %6019, 532487669
  %6021 = bitcast i32 %6020 to float
  %6022 = fadd fast float %6021, %6002
  %6023 = fmul fast float %6014, %6014
  %6024 = fmul fast float %6023, %6011
  %6025 = fmul fast float %6024, %6022
  %6026 = fdiv fast float 0x3FF0A00000000000, %6025
  %6027 = fmul fast float %6026, %4828
  %6028 = call float @dx.op.unary.f32(i32 6, float %5994)  ; FAbs(value)
  %6029 = fsub fast float 1.000000e+00, %6028
  %6030 = bitcast float %6029 to i32
  %6031 = sitofp i32 %6030 to float
  %6032 = fmul fast float %6031, 5.000000e+00
  %6033 = fadd fast float %6032, 0xC1EFBF8940000000
  %6034 = fptosi float %6033 to i32
  %6035 = bitcast i32 %6034 to float
  %6036 = fsub fast float 1.000000e+00, %4782
  %6037 = fsub fast float 1.000000e+00, %4783
  %6038 = fsub fast float 1.000000e+00, %4808
  %6039 = fmul fast float %6035, %6036
  %6040 = fmul fast float %6035, %6037
  %6041 = fmul fast float %6035, %6038
  %6042 = fadd fast float %6039, %4782
  %6043 = fadd fast float %6040, %4783
  %6044 = fadd fast float %6041, %4808
  br i1 %4951, label %6045, label %6068

; <label>:6045                                    ; preds = %5981
  %6046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4180, float %6028, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6047 = extractvalue %dx.types.ResRet.f32 %6046, 0
  %6048 = extractvalue %dx.types.ResRet.f32 %6046, 1
  %6049 = extractvalue %dx.types.ResRet.f32 %6046, 2
  %6050 = fadd fast float %6047, -5.000000e-01
  %6051 = fadd fast float %6048, -5.000000e-01
  %6052 = fadd fast float %6049, -5.000000e-01
  %6053 = fmul fast float %4782, 4.000000e+00
  %6054 = fmul fast float %6053, %6036
  %6055 = fmul fast float %6054, %6050
  %6056 = fmul fast float %4783, 4.000000e+00
  %6057 = fmul fast float %6056, %6037
  %6058 = fmul fast float %6057, %6051
  %6059 = fmul fast float %4808, 4.000000e+00
  %6060 = fmul fast float %6059, %6038
  %6061 = fmul fast float %6060, %6052
  %6062 = fadd fast float %6055, %6042
  %6063 = fadd fast float %6058, %6043
  %6064 = fadd fast float %6061, %6044
  %6065 = call float @dx.op.unary.f32(i32 7, float %6062)  ; Saturate(value)
  %6066 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6067 = call float @dx.op.unary.f32(i32 7, float %6064)  ; Saturate(value)
  br label %6068

; <label>:6068                                    ; preds = %6045, %5981
  %6069 = phi float [ %6065, %6045 ], [ %6042, %5981 ]
  %6070 = phi float [ %6066, %6045 ], [ %6043, %5981 ]
  %6071 = phi float [ %6067, %6045 ], [ %6044, %5981 ]
  %6072 = fmul fast float %5993, 9.843750e-01
  %6073 = fadd fast float %6072, 7.812500e-03
  %6074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6073, float %4941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6075 = extractvalue %dx.types.ResRet.f32 %6074, 2
  %6076 = extractvalue %dx.types.ResRet.f32 %6074, 3
  %6077 = fmul fast float %6075, %4782
  %6078 = fmul fast float %6075, %4783
  %6079 = fmul fast float %6075, %4808
  %6080 = fadd fast float %6077, %6076
  %6081 = fadd fast float %6078, %6076
  %6082 = fadd fast float %6079, %6076
  br i1 %4951, label %6083, label %6106

; <label>:6083                                    ; preds = %6068
  %6084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4180, float %5993, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6085 = extractvalue %dx.types.ResRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.ResRet.f32 %6084, 1
  %6087 = extractvalue %dx.types.ResRet.f32 %6084, 2
  %6088 = fadd fast float %6085, -5.000000e-01
  %6089 = fadd fast float %6086, -5.000000e-01
  %6090 = fadd fast float %6087, -5.000000e-01
  %6091 = fmul fast float %4782, 4.000000e+00
  %6092 = fmul fast float %6091, %6036
  %6093 = fmul fast float %6092, %6088
  %6094 = fmul fast float %4783, 4.000000e+00
  %6095 = fmul fast float %6094, %6037
  %6096 = fmul fast float %6095, %6089
  %6097 = fmul fast float %4808, 4.000000e+00
  %6098 = fmul fast float %6097, %6038
  %6099 = fmul fast float %6098, %6090
  %6100 = fadd fast float %6093, %6080
  %6101 = fadd fast float %6096, %6081
  %6102 = fadd fast float %6099, %6082
  %6103 = call float @dx.op.unary.f32(i32 7, float %6100)  ; Saturate(value)
  %6104 = call float @dx.op.unary.f32(i32 7, float %6101)  ; Saturate(value)
  %6105 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  br label %6106

; <label>:6106                                    ; preds = %6083, %6068
  %6107 = phi float [ %6103, %6083 ], [ %6080, %6068 ]
  %6108 = phi float [ %6104, %6083 ], [ %6081, %6068 ]
  %6109 = phi float [ %6105, %6083 ], [ %6082, %6068 ]
  %6110 = call float @dx.op.binary.f32(i32 35, float %6108, float %6109)  ; FMax(a,b)
  %6111 = call float @dx.op.binary.f32(i32 35, float %6107, float %6110)  ; FMax(a,b)
  %6112 = fsub fast float 1.000000e+00, %6111
  %6113 = fmul fast float %6069, %6027
  %6114 = fmul fast float %6070, %6027
  %6115 = fmul fast float %6071, %6027
  %6116 = fsub fast float 1.000000e+00, %5994
  %6117 = bitcast float %6116 to i32
  %6118 = sitofp i32 %6117 to float
  %6119 = fmul fast float %6118, 5.000000e+00
  %6120 = fadd fast float %6119, 0xC1EFBF8940000000
  %6121 = fptosi float %6120 to i32
  %6122 = bitcast i32 %6121 to float
  %6123 = fmul fast float %6122, %4181
  %6124 = fmul fast float %6112, %6123
  %6125 = fmul fast float %6124, %5898
  %6126 = fmul fast float %6124, %5899
  %6127 = fmul fast float %6124, %5900
  %6128 = fadd fast float %6125, %6113
  %6129 = fadd fast float %6126, %6114
  %6130 = fadd fast float %6127, %6115
  %6131 = fmul fast float %5999, %5982
  %6132 = fmul fast float %6131, %6112
  %6133 = fmul fast float %5999, %5983
  %6134 = fmul fast float %6133, %6112
  %6135 = fmul fast float %5999, %5984
  %6136 = fmul fast float %6135, %6112
  %6137 = fmul fast float %6131, %6128
  %6138 = fmul fast float %6133, %6129
  %6139 = fmul fast float %6135, %6130
  %6140 = fadd fast float %6132, %5880
  %6141 = fmul fast float %6140, %4177
  %6142 = fadd fast float %6134, %5882
  %6143 = fmul fast float %6142, %4177
  %6144 = fadd fast float %6136, %5884
  %6145 = fmul fast float %6144, %4177
  %6146 = fadd fast float %6137, %5923
  %6147 = fmul fast float %6146, %4177
  %6148 = fadd fast float %6138, %5926
  %6149 = fmul fast float %6148, %4177
  %6150 = fadd fast float %6139, %5929
  %6151 = fmul fast float %6150, %4177
  br label %6152

; <label>:6152                                    ; preds = %6106, %5974, %5857
  %6153 = phi float [ %5924, %5857 ], [ %5924, %5974 ], [ %6147, %6106 ]
  %6154 = phi float [ %5927, %5857 ], [ %5927, %5974 ], [ %6149, %6106 ]
  %6155 = phi float [ %5930, %5857 ], [ %5930, %5974 ], [ %6151, %6106 ]
  %6156 = phi float [ %5919, %5857 ], [ %5919, %5974 ], [ %6141, %6106 ]
  %6157 = phi float [ %5920, %5857 ], [ %5920, %5974 ], [ %6143, %6106 ]
  %6158 = phi float [ %5921, %5857 ], [ %5921, %5974 ], [ %6145, %6106 ]
  %6159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6160 = extractvalue %dx.types.CBufRet.i32 %6159, 0
  %6161 = icmp eq i32 %6160, 0
  br i1 %6161, label %6592, label %6162

; <label>:6162                                    ; preds = %6152
  %6163 = fptoui float %80 to i32
  %6164 = fptoui float %81 to i32
  %6165 = lshr i32 %6163, 4
  %6166 = lshr i32 %6164, 4
  %6167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6168 = extractvalue %dx.types.CBufRet.i32 %6167, 0
  %6169 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6166, i32 %6168, i32 %6165)  ; UMad(a,b,c)
  %6170 = add nsw i32 %6160, -1
  %6171 = call i32 @dx.op.binary.i32(i32 37, i32 %6170, i32 0)  ; IMax(a,b)
  %6172 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %6173 = fptoui float %6172 to i32
  %6174 = lshr i32 %6173, 5
  %6175 = call i32 @dx.op.binary.i32(i32 40, i32 %6174, i32 8191)  ; UMin(a,b)
  %6176 = shl i32 %6175, 2
  %6177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6176, i32 undef)  ; BufferLoad(srv,index,wot)
  %6178 = extractvalue %dx.types.ResRet.i32 %6177, 0
  %6179 = lshr i32 %6178, 16
  %6180 = and i32 %6178, 65535
  %6181 = lshr i32 %6178, 21
  %6182 = lshr i32 %6180, 5
  %6183 = call i32 @dx.op.binary.i32(i32 40, i32 %6182, i32 %6171)  ; UMin(a,b)
  %6184 = icmp ugt i32 %6181, %6183
  br i1 %6184, label %6592, label %6185

; <label>:6185                                    ; preds = %6162
  br label %6186

; <label>:6186                                    ; preds = %6582, %6185
  %6187 = phi i32 [ %6589, %6582 ], [ %6181, %6185 ]
  %6188 = phi float [ %6583, %6582 ], [ %6153, %6185 ]
  %6189 = phi float [ %6584, %6582 ], [ %6154, %6185 ]
  %6190 = phi float [ %6585, %6582 ], [ %6155, %6185 ]
  %6191 = phi float [ %6586, %6582 ], [ %6156, %6185 ]
  %6192 = phi float [ %6587, %6582 ], [ %6157, %6185 ]
  %6193 = phi float [ %6588, %6582 ], [ %6158, %6185 ]
  %6194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6195 = extractvalue %dx.types.CBufRet.i32 %6194, 0
  %6196 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6169, i32 %6195, i32 %6187)  ; UMad(a,b,c)
  %6197 = shl i32 %6196, 2
  %6198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6197, i32 undef)  ; BufferLoad(srv,index,wot)
  %6199 = extractvalue %dx.types.ResRet.i32 %6198, 0
  %6200 = shl i32 %6187, 5
  %6201 = sub nsw i32 %6179, %6200
  %6202 = call i32 @dx.op.binary.i32(i32 37, i32 %6201, i32 0)  ; IMax(a,b)
  %6203 = call i32 @dx.op.binary.i32(i32 38, i32 %6202, i32 31)  ; IMin(a,b)
  %6204 = sub nsw i32 1, %6179
  %6205 = add nsw i32 %6204, %6180
  %6206 = call i32 @dx.op.binary.i32(i32 37, i32 %6205, i32 0)  ; IMax(a,b)
  %6207 = call i32 @dx.op.binary.i32(i32 38, i32 %6206, i32 32)  ; IMin(a,b)
  %6208 = and i32 %6207, 31
  %6209 = shl i32 -1, %6208
  %6210 = xor i32 %6209, -1
  %6211 = and i32 %6203, 31
  %6212 = shl i32 %6210, %6211
  %6213 = icmp eq i32 %6207, 32
  %6214 = select i1 %6213, i32 -1, i32 %6212
  %6215 = and i32 %6214, %6199
  %6216 = icmp eq i32 %6215, 0
  br i1 %6216, label %6582, label %6217

; <label>:6217                                    ; preds = %6186
  br label %6218

; <label>:6218                                    ; preds = %6298, %6217
  %6219 = phi i32 [ %6230, %6298 ], [ %6215, %6217 ]
  %6220 = phi float [ %6299, %6298 ], [ %6188, %6217 ]
  %6221 = phi float [ %6300, %6298 ], [ %6189, %6217 ]
  %6222 = phi float [ %6301, %6298 ], [ %6190, %6217 ]
  %6223 = phi float [ %6302, %6298 ], [ %6191, %6217 ]
  %6224 = phi float [ %6303, %6298 ], [ %6192, %6217 ]
  %6225 = phi float [ %6304, %6298 ], [ %6193, %6217 ]
  %6226 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6219)  ; FirstbitLo(value)
  %6227 = add i32 %6226, %6200
  %6228 = and i32 %6226, 31
  %6229 = shl i32 1, %6228
  %6230 = xor i32 %6229, %6219
  %6231 = mul i32 %6227, 112
  %6232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6231, i32 undef)  ; BufferLoad(srv,index,wot)
  %6233 = extractvalue %dx.types.ResRet.f32 %6232, 0
  %6234 = extractvalue %dx.types.ResRet.f32 %6232, 1
  %6235 = extractvalue %dx.types.ResRet.f32 %6232, 2
  %6236 = or i32 %6231, 12
  %6237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6236, i32 undef)  ; BufferLoad(srv,index,wot)
  %6238 = extractvalue %dx.types.ResRet.f32 %6237, 0
  %6239 = add i32 %6231, 44
  %6240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6239, i32 undef)  ; BufferLoad(srv,index,wot)
  %6241 = extractvalue %dx.types.ResRet.f32 %6240, 0
  %6242 = add i32 %6231, 48
  %6243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6242, i32 undef)  ; BufferLoad(srv,index,wot)
  %6244 = extractvalue %dx.types.ResRet.f32 %6243, 0
  %6245 = extractvalue %dx.types.ResRet.f32 %6243, 1
  %6246 = extractvalue %dx.types.ResRet.f32 %6243, 2
  %6247 = add i32 %6231, 80
  %6248 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6247, i32 undef)  ; BufferLoad(srv,index,wot)
  %6249 = extractvalue %dx.types.ResRet.f32 %6248, 1
  %6250 = extractvalue %dx.types.ResRet.f32 %6248, 2
  %6251 = call float @dx.op.dot3.f32(i32 55, float %6233, float %6234, float %6235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6252 = select i1 %185, float %6249, float %6233
  %6253 = select i1 %185, float %6251, float %6234
  %6254 = select i1 %185, float %6250, float %6235
  %6255 = fsub fast float %6244, %143
  %6256 = fsub fast float %6245, %144
  %6257 = fsub fast float %6246, %145
  %6258 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %6259 = call float @dx.op.unary.f32(i32 24, float %6258)  ; Sqrt(value)
  %6260 = fdiv fast float 1.000000e+00, %6259
  %6261 = fmul fast float %6260, %6255
  %6262 = fmul fast float %6260, %6256
  %6263 = fmul fast float %6260, %6257
  %6264 = fadd fast float %6259, %6238
  %6265 = fdiv fast float 1.000000e+00, %6264
  %6266 = fmul float %6241, %6265
  %6267 = fmul float %6266, %6266
  %6268 = call float @dx.op.unary.f32(i32 7, float %6267)  ; Saturate(value)
  %6269 = and i32 %6229, %6215
  %6270 = icmp eq i32 %6269, 0
  br i1 %6270, label %6293, label %6271, !dx.controlflow.hints !92

; <label>:6271                                    ; preds = %6218
  %6272 = lshr i32 %6163, 5
  %6273 = lshr i32 %6164, 5
  %6274 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6272, i32 %6273, i32 %6227, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6275 = extractvalue %dx.types.ResRet.i32 %6274, 0
  %6276 = and i32 %6275, 3
  %6277 = icmp eq i32 %6276, 0
  %6278 = select i1 %6277, float 1.000000e+00, float 0.000000e+00
  %6279 = icmp eq i32 %6276, 3
  br i1 %6279, label %6280, label %6293

; <label>:6280                                    ; preds = %6271
  %6281 = lshr i32 %6275, 10
  %6282 = and i32 %6281, 8160
  %6283 = and i32 %6164, 31
  %6284 = or i32 %6282, %6283
  %6285 = lshr i32 %6275, 1
  %6286 = and i32 %6285, 16352
  %6287 = and i32 %6163, 31
  %6288 = or i32 %6286, %6287
  %6289 = lshr i32 %6275, 23
  %6290 = and i32 %6289, 255
  %6291 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6288, i32 %6284, i32 %6290, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  br label %6293

; <label>:6293                                    ; preds = %6280, %6271, %6218
  %6294 = phi float [ %6292, %6280 ], [ %6278, %6271 ], [ 0.000000e+00, %6218 ]
  %6295 = call float @dx.op.binary.f32(i32 36, float %6294, float %6294)  ; FMin(a,b)
  %6296 = call float @dx.op.binary.f32(i32 36, float %6294, float %6295)  ; FMin(a,b)
  %6297 = fcmp fast ogt float %6296, 0.000000e+00
  br i1 %6297, label %6306, label %6298, !dx.controlflow.hints !93

; <label>:6298                                    ; preds = %6538, %6293
  %6299 = phi float [ %6220, %6293 ], [ %6578, %6538 ]
  %6300 = phi float [ %6221, %6293 ], [ %6579, %6538 ]
  %6301 = phi float [ %6222, %6293 ], [ %6580, %6538 ]
  %6302 = phi float [ %6223, %6293 ], [ %6572, %6538 ]
  %6303 = phi float [ %6224, %6293 ], [ %6573, %6538 ]
  %6304 = phi float [ %6225, %6293 ], [ %6574, %6538 ]
  %6305 = icmp eq i32 %6219, %6229
  br i1 %6305, label %6581, label %6218

; <label>:6306                                    ; preds = %6293
  %6307 = fmul fast float %6294, %6252
  %6308 = fmul fast float %6294, %6253
  %6309 = fmul fast float %6294, %6254
  %6310 = fsub fast float %6246, %4581
  %6311 = fcmp fast ogt float %6310, 0.000000e+00
  %6312 = fsub fast float %145, %4581
  %6313 = fcmp fast ogt float %6312, 0.000000e+00
  %6314 = xor i1 %6313, %6311
  %6315 = fsub fast float %4581, %6246
  %6316 = fmul fast float %6315, 2.000000e+00
  %6317 = fadd fast float %6316, %6246
  %6318 = select i1 %6314, float %6246, float %6317
  %6319 = fsub fast float %6318, %145
  %6320 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6319, float %6255, float %6256, float %6319)  ; Dot3(ax,ay,az,bx,by,bz)
  %6321 = call float @dx.op.unary.f32(i32 25, float %6320)  ; Rsqrt(value)
  %6322 = fmul fast float %6321, %6255
  %6323 = fmul fast float %6321, %6256
  %6324 = fmul fast float %6321, %6319
  %6325 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4589)  ; Dot3(ax,ay,az,bx,by,bz)
  %6326 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6322, float %6323, float %6324)  ; Dot3(ax,ay,az,bx,by,bz)
  %6327 = fdiv fast float 1.000000e+00, %6326
  %6328 = fmul fast float %6327, %6325
  %6329 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6312, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6330 = fcmp fast ogt float %6329, 0.000000e+00
  %6331 = fcmp fast olt float %6329, 0.000000e+00
  %6332 = zext i1 %6330 to i32
  %6333 = zext i1 %6331 to i32
  %6334 = sub nsw i32 %6332, %6333
  %6335 = sitofp i32 %6334 to float
  %6336 = fsub fast float %6318, %4581
  %6337 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6336, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6338 = fcmp fast ogt float %6337, 0.000000e+00
  %6339 = fcmp fast olt float %6337, 0.000000e+00
  %6340 = zext i1 %6338 to i32
  %6341 = zext i1 %6339 to i32
  %6342 = sub nsw i32 %6340, %6341
  %6343 = sitofp i32 %6342 to float
  %6344 = fcmp fast une float %6335, %6343
  br i1 %6344, label %6345, label %6355

; <label>:6345                                    ; preds = %6306
  %6346 = fmul fast float %6328, %6324
  %6347 = fmul fast float %6328, %6323
  %6348 = fmul fast float %6328, %6322
  %6349 = fmul fast float %6348, %6348
  %6350 = fmul fast float %6347, %6347
  %6351 = fadd fast float %6349, %6350
  %6352 = fmul fast float %6346, %6346
  %6353 = fadd fast float %6351, %6352
  %6354 = call float @dx.op.unary.f32(i32 24, float %6353)  ; Sqrt(value)
  br label %6367

; <label>:6355                                    ; preds = %6306
  %6356 = icmp slt i32 %6334, 0
  br i1 %6356, label %6357, label %6367

; <label>:6357                                    ; preds = %6355
  %6358 = fsub fast float %143, %6244
  %6359 = fsub fast float %144, %6245
  %6360 = fsub fast float %145, %6318
  %6361 = fmul fast float %6358, %6358
  %6362 = fmul fast float %6359, %6359
  %6363 = fadd fast float %6361, %6362
  %6364 = fmul fast float %6360, %6360
  %6365 = fadd fast float %6363, %6364
  %6366 = call float @dx.op.unary.f32(i32 24, float %6365)  ; Sqrt(value)
  br label %6367

; <label>:6367                                    ; preds = %6357, %6355, %6345
  %6368 = phi float [ %6354, %6345 ], [ %6366, %6357 ], [ 0.000000e+00, %6355 ]
  %6369 = and i1 %6313, %6311
  %6370 = fsub fast float -0.000000e+00, %6368
  %6371 = select i1 %6369, float -0.000000e+00, float %6370
  %6372 = fmul fast float %4582, 0x3FF7154760000000
  %6373 = fmul fast float %6372, %6371
  %6374 = fmul fast float %4583, 0x3FF7154760000000
  %6375 = fmul fast float %6374, %6371
  %6376 = fmul fast float %4584, 0x3FF7154760000000
  %6377 = fmul fast float %6376, %6371
  %6378 = call float @dx.op.unary.f32(i32 21, float %6373)  ; Exp(value)
  %6379 = call float @dx.op.unary.f32(i32 21, float %6375)  ; Exp(value)
  %6380 = call float @dx.op.unary.f32(i32 21, float %6377)  ; Exp(value)
  %6381 = call float @dx.op.unary.f32(i32 7, float %6378)  ; Saturate(value)
  %6382 = call float @dx.op.unary.f32(i32 7, float %6379)  ; Saturate(value)
  %6383 = call float @dx.op.unary.f32(i32 7, float %6380)  ; Saturate(value)
  %6384 = fmul fast float %6307, %6381
  %6385 = fmul fast float %6308, %6382
  %6386 = fmul fast float %6309, %6383
  %6387 = fsub fast float %6261, %4781
  %6388 = fsub fast float %6262, %4780
  %6389 = fsub fast float %6263, %4779
  %6390 = call float @dx.op.dot3.f32(i32 55, float %6387, float %6388, float %6389, float %6387, float %6388, float %6389)  ; Dot3(ax,ay,az,bx,by,bz)
  %6391 = call float @dx.op.unary.f32(i32 25, float %6390)  ; Rsqrt(value)
  %6392 = fmul fast float %6391, %6387
  %6393 = fmul fast float %6391, %6388
  %6394 = fmul fast float %6391, %6389
  %6395 = call float @dx.op.dot3.f32(i32 55, float %6261, float %6262, float %6263, float %4785, float %4786, float %4787)  ; Dot3(ax,ay,az,bx,by,bz)
  %6396 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4777, float %4776, float %6392, float %6393, float %6394)  ; Dot3(ax,ay,az,bx,by,bz)
  %6397 = call float @dx.op.unary.f32(i32 7, float %6395)  ; Saturate(value)
  %6398 = fmul fast float %6397, %6268
  %6399 = fmul fast float %6397, %6397
  %6400 = fmul fast float %6399, %4835
  %6401 = call float @dx.op.unary.f32(i32 7, float %6400)  ; Saturate(value)
  %6402 = fmul fast float %6398, %6401
  %6403 = bitcast float %6258 to i32
  %6404 = ashr i32 %6403, 1
  %6405 = sub nsw i32 1597463007, %6404
  %6406 = bitcast i32 %6405 to float
  %6407 = fmul fast float %6406, %6255
  %6408 = fmul fast float %6406, %6256
  %6409 = fmul fast float %6406, %6257
  %6410 = fsub fast float %6407, %4781
  %6411 = fsub fast float %6408, %4780
  %6412 = fsub fast float %6409, %4779
  %6413 = call float @dx.op.dot3.f32(i32 55, float %6410, float %6411, float %6412, float %6410, float %6411, float %6412)  ; Dot3(ax,ay,az,bx,by,bz)
  %6414 = call float @dx.op.unary.f32(i32 25, float %6413)  ; Rsqrt(value)
  %6415 = fmul fast float %6410, %6414
  %6416 = fmul fast float %6411, %6414
  %6417 = fmul fast float %6412, %6414
  %6418 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %6415, float %6416, float %6417)  ; Dot3(ax,ay,az,bx,by,bz)
  %6419 = fmul fast float %6418, %6418
  %6420 = call float @dx.op.unary.f32(i32 6, float %6395)  ; FAbs(value)
  %6421 = fsub fast float 1.000000e+00, %4828
  %6422 = fmul fast float %4810, %4810
  %6423 = fmul fast float %6422, %6421
  %6424 = fadd fast float %6423, %4828
  %6425 = bitcast float %6424 to i32
  %6426 = ashr i32 %6425, 1
  %6427 = add nsw i32 %6426, 532487669
  %6428 = bitcast i32 %6427 to float
  %6429 = fadd fast float %6428, %4810
  %6430 = fmul fast float %4828, %6419
  %6431 = fsub fast float 1.000000e+00, %6419
  %6432 = fadd fast float %6431, %6430
  %6433 = fmul fast float %6420, %6420
  %6434 = fmul fast float %6433, %6421
  %6435 = fadd fast float %6434, %4828
  %6436 = bitcast float %6435 to i32
  %6437 = ashr i32 %6436, 1
  %6438 = add nsw i32 %6437, 532487669
  %6439 = bitcast i32 %6438 to float
  %6440 = fadd fast float %6439, %6420
  %6441 = fmul fast float %6432, %6432
  %6442 = fmul fast float %6441, %6429
  %6443 = fmul fast float %6442, %6440
  %6444 = fdiv fast float 1.000000e+00, %6443
  %6445 = bitcast float %4828 to i32
  %6446 = sitofp i32 %6445 to float
  %6447 = fmul fast float %6446, 0x3FE7F73180000000
  %6448 = fadd fast float %6447, 0x41AFE27C40000000
  %6449 = fptosi float %6448 to i32
  %6450 = bitcast i32 %6449 to float
  %6451 = fmul fast float %6241, 0x3FD80E9D60000000
  %6452 = fmul fast float %6451, %6406
  %6453 = fadd fast float %6450, %6452
  %6454 = bitcast float %6453 to i32
  %6455 = sub nsw i32 2129859010, %6454
  %6456 = bitcast i32 %6455 to float
  %6457 = fmul fast float %4828, %6444
  %6458 = fmul fast float %6457, %6450
  %6459 = fmul fast float %6458, %6456
  %6460 = call float @dx.op.unary.f32(i32 6, float %6396)  ; FAbs(value)
  %6461 = fsub fast float 1.000000e+00, %6460
  %6462 = bitcast float %6461 to i32
  %6463 = sitofp i32 %6462 to float
  %6464 = fmul fast float %6463, 5.000000e+00
  %6465 = fadd fast float %6464, 0xC1EFBF8940000000
  %6466 = fptosi float %6465 to i32
  %6467 = bitcast i32 %6466 to float
  %6468 = fsub fast float 1.000000e+00, %4782
  %6469 = fsub fast float 1.000000e+00, %4783
  %6470 = fsub fast float 1.000000e+00, %4808
  %6471 = fmul fast float %6467, %6468
  %6472 = fmul fast float %6467, %6469
  %6473 = fmul fast float %6467, %6470
  %6474 = fadd fast float %6471, %4782
  %6475 = fadd fast float %6472, %4783
  %6476 = fadd fast float %6473, %4808
  br i1 %4951, label %6477, label %6500

; <label>:6477                                    ; preds = %6367
  %6478 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4180, float %6460, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6479 = extractvalue %dx.types.ResRet.f32 %6478, 0
  %6480 = extractvalue %dx.types.ResRet.f32 %6478, 1
  %6481 = extractvalue %dx.types.ResRet.f32 %6478, 2
  %6482 = fadd fast float %6479, -5.000000e-01
  %6483 = fadd fast float %6480, -5.000000e-01
  %6484 = fadd fast float %6481, -5.000000e-01
  %6485 = fmul fast float %4782, 4.000000e+00
  %6486 = fmul fast float %6485, %6468
  %6487 = fmul fast float %6486, %6482
  %6488 = fmul fast float %4783, 4.000000e+00
  %6489 = fmul fast float %6488, %6469
  %6490 = fmul fast float %6489, %6483
  %6491 = fmul fast float %4808, 4.000000e+00
  %6492 = fmul fast float %6491, %6470
  %6493 = fmul fast float %6492, %6484
  %6494 = fadd fast float %6487, %6474
  %6495 = fadd fast float %6490, %6475
  %6496 = fadd fast float %6493, %6476
  %6497 = call float @dx.op.unary.f32(i32 7, float %6494)  ; Saturate(value)
  %6498 = call float @dx.op.unary.f32(i32 7, float %6495)  ; Saturate(value)
  %6499 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  br label %6500

; <label>:6500                                    ; preds = %6477, %6367
  %6501 = phi float [ %6497, %6477 ], [ %6474, %6367 ]
  %6502 = phi float [ %6498, %6477 ], [ %6475, %6367 ]
  %6503 = phi float [ %6499, %6477 ], [ %6476, %6367 ]
  %6504 = fmul fast float %6395, 9.843750e-01
  %6505 = fadd fast float %6504, 7.812500e-03
  %6506 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6505, float %4941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6507 = extractvalue %dx.types.ResRet.f32 %6506, 2
  %6508 = extractvalue %dx.types.ResRet.f32 %6506, 3
  %6509 = fmul fast float %6507, %4782
  %6510 = fmul fast float %6507, %4783
  %6511 = fmul fast float %6507, %4808
  %6512 = fadd fast float %6509, %6508
  %6513 = fadd fast float %6510, %6508
  %6514 = fadd fast float %6511, %6508
  br i1 %4951, label %6515, label %6538

; <label>:6515                                    ; preds = %6500
  %6516 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4180, float %6395, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6517 = extractvalue %dx.types.ResRet.f32 %6516, 0
  %6518 = extractvalue %dx.types.ResRet.f32 %6516, 1
  %6519 = extractvalue %dx.types.ResRet.f32 %6516, 2
  %6520 = fadd fast float %6517, -5.000000e-01
  %6521 = fadd fast float %6518, -5.000000e-01
  %6522 = fadd fast float %6519, -5.000000e-01
  %6523 = fmul fast float %4782, 4.000000e+00
  %6524 = fmul fast float %6523, %6468
  %6525 = fmul fast float %6524, %6520
  %6526 = fmul fast float %4783, 4.000000e+00
  %6527 = fmul fast float %6526, %6469
  %6528 = fmul fast float %6527, %6521
  %6529 = fmul fast float %4808, 4.000000e+00
  %6530 = fmul fast float %6529, %6470
  %6531 = fmul fast float %6530, %6522
  %6532 = fadd fast float %6525, %6512
  %6533 = fadd fast float %6528, %6513
  %6534 = fadd fast float %6531, %6514
  %6535 = call float @dx.op.unary.f32(i32 7, float %6532)  ; Saturate(value)
  %6536 = call float @dx.op.unary.f32(i32 7, float %6533)  ; Saturate(value)
  %6537 = call float @dx.op.unary.f32(i32 7, float %6534)  ; Saturate(value)
  br label %6538

; <label>:6538                                    ; preds = %6515, %6500
  %6539 = phi float [ %6535, %6515 ], [ %6512, %6500 ]
  %6540 = phi float [ %6536, %6515 ], [ %6513, %6500 ]
  %6541 = phi float [ %6537, %6515 ], [ %6514, %6500 ]
  %6542 = call float @dx.op.binary.f32(i32 35, float %6540, float %6541)  ; FMax(a,b)
  %6543 = call float @dx.op.binary.f32(i32 35, float %6539, float %6542)  ; FMax(a,b)
  %6544 = fsub fast float 1.000000e+00, %6543
  %6545 = fmul fast float %6501, %6459
  %6546 = fmul fast float %6502, %6459
  %6547 = fmul fast float %6503, %6459
  %6548 = fsub fast float 1.000000e+00, %6396
  %6549 = bitcast float %6548 to i32
  %6550 = sitofp i32 %6549 to float
  %6551 = fmul fast float %6550, 5.000000e+00
  %6552 = fadd fast float %6551, 0xC1EFBF8940000000
  %6553 = fptosi float %6552 to i32
  %6554 = bitcast i32 %6553 to float
  %6555 = fmul fast float %6554, %4181
  %6556 = fmul fast float %6544, %6555
  %6557 = fmul fast float %6556, %5898
  %6558 = fmul fast float %6556, %5899
  %6559 = fmul fast float %6556, %5900
  %6560 = fadd fast float %6557, %6545
  %6561 = fadd fast float %6558, %6546
  %6562 = fadd fast float %6559, %6547
  %6563 = fmul fast float %6384, %4177
  %6564 = fmul fast float %6563, %6402
  %6565 = fmul fast float %6564, %6544
  %6566 = fmul fast float %6385, %4177
  %6567 = fmul fast float %6566, %6402
  %6568 = fmul fast float %6567, %6544
  %6569 = fmul fast float %6386, %4177
  %6570 = fmul fast float %6569, %6402
  %6571 = fmul fast float %6570, %6544
  %6572 = fadd fast float %6565, %6223
  %6573 = fadd fast float %6568, %6224
  %6574 = fadd fast float %6571, %6225
  %6575 = fmul fast float %6564, %6560
  %6576 = fmul fast float %6567, %6561
  %6577 = fmul fast float %6570, %6562
  %6578 = fadd fast float %6575, %6220
  %6579 = fadd fast float %6576, %6221
  %6580 = fadd fast float %6577, %6222
  br label %6298

; <label>:6581                                    ; preds = %6298
  br label %6582

; <label>:6582                                    ; preds = %6581, %6186
  %6583 = phi float [ %6188, %6186 ], [ %6299, %6581 ]
  %6584 = phi float [ %6189, %6186 ], [ %6300, %6581 ]
  %6585 = phi float [ %6190, %6186 ], [ %6301, %6581 ]
  %6586 = phi float [ %6191, %6186 ], [ %6302, %6581 ]
  %6587 = phi float [ %6192, %6186 ], [ %6303, %6581 ]
  %6588 = phi float [ %6193, %6186 ], [ %6304, %6581 ]
  %6589 = add i32 %6187, 1
  %6590 = icmp ugt i32 %6589, %6183
  br i1 %6590, label %6591, label %6186

; <label>:6591                                    ; preds = %6582
  br label %6592

; <label>:6592                                    ; preds = %6591, %6162, %6152
  %6593 = phi float [ %6153, %6152 ], [ %6153, %6162 ], [ %6583, %6591 ]
  %6594 = phi float [ %6154, %6152 ], [ %6154, %6162 ], [ %6584, %6591 ]
  %6595 = phi float [ %6155, %6152 ], [ %6155, %6162 ], [ %6585, %6591 ]
  %6596 = phi float [ %6156, %6152 ], [ %6156, %6162 ], [ %6586, %6591 ]
  %6597 = phi float [ %6157, %6152 ], [ %6157, %6162 ], [ %6587, %6591 ]
  %6598 = phi float [ %6158, %6152 ], [ %6158, %6162 ], [ %6588, %6591 ]
  %6599 = call float @dx.op.unary.f32(i32 24, float %4788)  ; Sqrt(value)
  %6600 = call float @dx.op.unary.f32(i32 24, float %4789)  ; Sqrt(value)
  %6601 = call float @dx.op.unary.f32(i32 24, float %4790)  ; Sqrt(value)
  %6602 = fmul fast float %6599, %6596
  %6603 = fmul fast float %6600, %6597
  %6604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6605 = extractvalue %dx.types.CBufRet.f32 %6604, 0
  br i1 %185, label %6606, label %6629

; <label>:6606                                    ; preds = %6592
  %6607 = fadd fast float %6598, %4183
  %6608 = fmul fast float %6607, %4184
  %6609 = fsub fast float 1.000000e+00, %4184
  %6610 = call float @dx.op.unary.f32(i32 7, float %6609)  ; Saturate(value)
  %6611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6612 = extractvalue %dx.types.CBufRet.f32 %6611, 3
  %6613 = fmul fast float %6612, %6610
  %6614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6615 = extractvalue %dx.types.CBufRet.f32 %6614, 0
  %6616 = fmul fast float %6615, %5905
  %6617 = extractvalue %dx.types.CBufRet.f32 %6614, 2
  %6618 = fmul fast float %6617, %4806
  %6619 = fadd fast float %6603, %6602
  %6620 = fmul fast float %6605, %6619
  %6621 = extractvalue %dx.types.CBufRet.f32 %6611, 1
  %6622 = fadd fast float %6613, %6608
  %6623 = fsub fast float %6622, %6616
  %6624 = fadd fast float %6623, %6618
  %6625 = fsub fast float %6624, %6621
  %6626 = extractvalue %dx.types.CBufRet.f32 %6611, 2
  %6627 = fmul fast float %6625, %6626
  %6628 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  br label %6645

; <label>:6629                                    ; preds = %6592
  %6630 = fmul fast float %6601, %6598
  %6631 = fmul fast float %6605, %6602
  %6632 = fmul fast float %6605, %6603
  %6633 = fmul fast float %6630, %6605
  %6634 = add i32 %43, 356
  %6635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6634, i32 undef)  ; BufferLoad(srv,index,wot)
  %6636 = extractvalue %dx.types.ResRet.i32 %6635, 0
  %6637 = and i32 %6636, 32
  %6638 = icmp eq i32 %6637, 0
  br i1 %6638, label %6645, label %6639

; <label>:6639                                    ; preds = %6629
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = fmul fast float %6641, 0x3FE99999A0000000
  %6643 = fadd fast float %6641, %6631
  %6644 = fadd fast float %6642, %6633
  br label %6645

; <label>:6645                                    ; preds = %6639, %6629, %6606
  %6646 = phi float [ %6620, %6606 ], [ %6643, %6639 ], [ %6631, %6629 ]
  %6647 = phi float [ %6628, %6606 ], [ %6632, %6639 ], [ %6632, %6629 ]
  %6648 = phi float [ 1.000000e+00, %6606 ], [ %6644, %6639 ], [ %6633, %6629 ]
  %6649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6650 = extractvalue %dx.types.CBufRet.f32 %6649, 0
  %6651 = fmul fast float %6650, %6594
  %6652 = fmul fast float %6650, %6595
  %6653 = fadd fast float %6594, %6593
  %6654 = select i1 %185, float %6653, float %6593
  %6655 = fmul float %6654, %6650
  %6656 = select i1 %185, float 0.000000e+00, float %6651
  %6657 = select i1 %185, float 0.000000e+00, float %6652
  %6658 = fmul fast float %6646, %6599
  %6659 = fmul fast float %6647, %6600
  %6660 = fmul fast float %6648, %6601
  %6661 = fadd fast float %6655, %6658
  %6662 = fadd fast float %6656, %6659
  %6663 = fadd fast float %6657, %6660
  %6664 = select i1 %185, float %6647, float %6662
  %6665 = select i1 %185, float %6648, float %6663
  %6666 = call float @dx.op.binary.f32(i32 36, float %6661, float 3.225500e+04)  ; FMin(a,b)
  %6667 = call float @dx.op.binary.f32(i32 36, float %6664, float 3.225500e+04)  ; FMin(a,b)
  %6668 = call float @dx.op.binary.f32(i32 36, float %6665, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6666)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6667)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6668)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

