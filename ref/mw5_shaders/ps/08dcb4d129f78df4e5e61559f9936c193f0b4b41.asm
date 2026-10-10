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
; shader hash: 46ff656a9aa29d7b9b0ca9a95855dadb
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
  %382 = add i32 %43, 604
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
  %540 = add i32 %43, 488
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
  %563 = add i32 %43, 572
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
  %761 = add i32 %43, 504
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
  %845 = add i32 %43, 520
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
  %1137 = add i32 %43, 556
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
  %1189 = add i32 %43, 540
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
  %1215 = add i32 %43, 492
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
  %1238 = add i32 %43, 576
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
  %1436 = add i32 %43, 508
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
  %1520 = add i32 %43, 524
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
  %1991 = add i32 %43, 560
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
  %2043 = add i32 %43, 544
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
  %2069 = add i32 %43, 496
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
  %2092 = add i32 %43, 580
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
  %2290 = add i32 %43, 512
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
  %2374 = add i32 %43, 528
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
  %2845 = add i32 %43, 564
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
  %2897 = add i32 %43, 548
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
  %2923 = add i32 %43, 500
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
  %2946 = add i32 %43, 584
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
  %3144 = add i32 %43, 516
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
  %3228 = add i32 %43, 532
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
  %3470 = add i32 %43, 440
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3470, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = extractvalue %dx.types.ResRet.i32 %3471, 1
  %3474 = bitcast i32 %3472 to float
  %3475 = bitcast i32 %3473 to float
  %3476 = fcmp fast oge float %3474, 0.000000e+00
  %3477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3478 = extractvalue %dx.types.CBufRet.f32 %3477, 0
  %3479 = select i1 %3476, float %3474, float %3478
  %3480 = add i32 %43, 568
  %3481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.i32 %3481, 0
  %3483 = add i32 %3482, 0
  %3484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3485 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3484, %dx.types.Handle %77, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3486 = extractvalue %dx.types.ResRet.f32 %3485, 0
  %3487 = fmul fast float %3486, %3475
  %3488 = fadd fast float %3487, %3479
  %3489 = call float @dx.op.dot2.f32(i32 54, float %3458, float %3459, float %3458, float %3459)  ; Dot2(ax,ay,bx,by)
  %3490 = fmul fast float %3489, 0x3FE3333340000000
  %3491 = fsub fast float 1.000000e+00, %3490
  %3492 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3459, float %3491, float %3458, float %3459, float %3491)  ; Dot3(ax,ay,az,bx,by,bz)
  %3493 = call float @dx.op.unary.f32(i32 25, float %3492)  ; Rsqrt(value)
  %3494 = fmul fast float %3493, %3458
  %3495 = fmul fast float %3493, %3459
  %3496 = fmul fast float %3491, %3493
  %3497 = fmul fast float %3496, %87
  %3498 = fmul fast float %3496, %88
  %3499 = fmul fast float %3496, %89
  %3500 = fmul fast float %3494, %61
  %3501 = fmul fast float %3494, %62
  %3502 = fmul fast float %3494, %63
  %3503 = fadd fast float %3497, %3500
  %3504 = fadd fast float %3498, %3501
  %3505 = fadd fast float %3499, %3502
  %3506 = fmul fast float %99, %3495
  %3507 = fmul fast float %100, %3495
  %3508 = fmul fast float %101, %3495
  %3509 = fadd fast float %3503, %3506
  %3510 = fadd fast float %3504, %3507
  %3511 = fadd fast float %3505, %3508
  %3512 = call float @dx.op.dot3.f32(i32 55, float %3509, float %3510, float %3511, float %3509, float %3510, float %3511)  ; Dot3(ax,ay,az,bx,by,bz)
  %3513 = call float @dx.op.unary.f32(i32 25, float %3512)  ; Rsqrt(value)
  %3514 = fmul fast float %3509, %3513
  %3515 = fmul fast float %3510, %3513
  %3516 = fmul fast float %3511, %3513
  %3517 = and i32 %45, 1
  %3518 = icmp eq i32 %3517, 0
  br i1 %3518, label %3519, label %4027

; <label>:3519                                    ; preds = %3457
  %3520 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3521 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3522 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3523 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3524 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3525 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3526 = fadd fast float %3520, %143
  %3527 = fadd fast float %3521, %144
  %3528 = fadd fast float %3522, %145
  %3529 = fadd fast float %3523, %143
  %3530 = fadd fast float %3524, %144
  %3531 = fadd fast float %3525, %145
  %3532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3533 = extractvalue %dx.types.CBufRet.f32 %3532, 0
  %3534 = extractvalue %dx.types.CBufRet.f32 %3532, 1
  %3535 = extractvalue %dx.types.CBufRet.f32 %3532, 2
  %3536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3537 = extractvalue %dx.types.CBufRet.f32 %3536, 2
  %3538 = extractvalue %dx.types.CBufRet.f32 %3536, 3
  %3539 = fmul fast float %3533, %80
  %3540 = fmul fast float %3539, %3537
  %3541 = fmul fast float %3534, %81
  %3542 = fmul fast float %3541, %3538
  %3543 = fptoui float %3540 to i32
  %3544 = fptoui float %3542 to i32
  %3545 = fadd fast float %3533, -1.000000e+00
  %3546 = fadd fast float %3534, -1.000000e+00
  %3547 = fptoui float %3545 to i32
  %3548 = fptoui float %3546 to i32
  %3549 = call i32 @dx.op.binary.i32(i32 40, i32 %3543, i32 %3547)  ; UMin(a,b)
  %3550 = call i32 @dx.op.binary.i32(i32 40, i32 %3544, i32 %3548)  ; UMin(a,b)
  %3551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3551, 2
  %3553 = extractvalue %dx.types.CBufRet.f32 %3551, 3
  %3554 = fmul fast float %3552, %75
  %3555 = fsub fast float %3554, %3553
  %3556 = fadd fast float %3535, -1.000000e+00
  %3557 = call float @dx.op.binary.f32(i32 36, float %3555, float %3556)  ; FMin(a,b)
  %3558 = fptoui float %3557 to i32
  %3559 = fptoui float %3533 to i32
  %3560 = fptoui float %3534 to i32
  %3561 = mul i32 %3558, %3560
  %3562 = add i32 %3561, %3550
  %3563 = mul i32 %3562, %3559
  %3564 = add i32 %3563, %3549
  %3565 = shl i32 %3564, 2
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = and i32 %3567, 1023
  %3569 = lshr i32 %3567, 10
  %3570 = icmp eq i32 %3568, 0
  br i1 %3570, label %3996, label %3571

; <label>:3571                                    ; preds = %3519
  %3572 = and i32 %3567, 1023
  br label %3573

; <label>:3573                                    ; preds = %3699, %3571
  %3574 = phi i32 [ %3649, %3699 ], [ 0, %3571 ]
  %3575 = phi float [ %3700, %3699 ], [ 0.000000e+00, %3571 ]
  %3576 = phi float [ %3701, %3699 ], [ %3488, %3571 ]
  %3577 = phi float [ %3702, %3699 ], [ %3469, %3571 ]
  %3578 = phi float [ %3703, %3699 ], [ 0.000000e+00, %3571 ]
  %3579 = phi float [ %3704, %3699 ], [ 0.000000e+00, %3571 ]
  %3580 = phi float [ %3705, %3699 ], [ %3463, %3571 ]
  %3581 = phi float [ %3706, %3699 ], [ %3464, %3571 ]
  %3582 = phi float [ %3707, %3699 ], [ %3465, %3571 ]
  %3583 = phi float [ %3708, %3699 ], [ %3514, %3571 ]
  %3584 = phi float [ %3709, %3699 ], [ %3515, %3571 ]
  %3585 = phi float [ %3710, %3699 ], [ %3516, %3571 ]
  %3586 = phi float [ %3711, %3699 ], [ %3468, %3571 ]
  %3587 = phi float [ %3712, %3699 ], [ %3467, %3571 ]
  %3588 = phi float [ %3713, %3699 ], [ 0.000000e+00, %3571 ]
  %3589 = phi float [ %3714, %3699 ], [ %3466, %3571 ]
  %3590 = phi float [ %3715, %3699 ], [ %3460, %3571 ]
  %3591 = phi float [ %3716, %3699 ], [ %3461, %3571 ]
  %3592 = phi float [ %3717, %3699 ], [ %3462, %3571 ]
  %3593 = add nuw nsw i32 %3574, %3569
  %3594 = shl i32 %3593, 2
  %3595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.i32 %3595, 0
  %3597 = shl i32 %3596, 8
  %3598 = or i32 %3597, 48
  %3599 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.f32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.f32 %3599, 1
  %3602 = extractvalue %dx.types.ResRet.f32 %3599, 2
  %3603 = extractvalue %dx.types.ResRet.f32 %3599, 3
  %3604 = or i32 %3597, 64
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = extractvalue %dx.types.ResRet.i32 %3605, 1
  %3608 = or i32 %3597, 80
  %3609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3612 = or i32 %3597, 96
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = or i32 %3597, 112
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3621 = or i32 %3597, 128
  %3622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = extractvalue %dx.types.ResRet.f32 %3622, 1
  %3625 = extractvalue %dx.types.ResRet.f32 %3622, 2
  %3626 = extractvalue %dx.types.ResRet.f32 %3622, 3
  %3627 = or i32 %3597, 144
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.ResRet.f32 %3628, 3
  %3633 = or i32 %3597, 160
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = extractvalue %dx.types.ResRet.f32 %3634, 1
  %3637 = extractvalue %dx.types.ResRet.f32 %3634, 2
  %3638 = extractvalue %dx.types.ResRet.f32 %3634, 3
  %3639 = or i32 %3597, 192
  %3640 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.i32 %3640, 0
  %3642 = or i32 %3597, 208
  %3643 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3642, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.f32 %3643, 0
  %3645 = or i32 %3597, 248
  %3646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3645, i32 undef)  ; BufferLoad(srv,index,wot)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = extractvalue %dx.types.ResRet.f32 %3646, 1
  %3649 = add nuw nsw i32 %3574, 1
  %3650 = bitcast float %3603 to i32
  %3651 = and i32 %3650, 512
  %3652 = icmp eq i32 %3651, 0
  %3653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3653, 2
  %3657 = extractvalue %dx.types.ResRet.f32 %3653, 3
  %3658 = call float @dx.op.dot4.f32(i32 56, float %3654, float %3655, float %3656, float %3657, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3659 = or i32 %3597, 16
  %3660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.f32 %3660, 0
  %3662 = extractvalue %dx.types.ResRet.f32 %3660, 1
  %3663 = extractvalue %dx.types.ResRet.f32 %3660, 2
  %3664 = extractvalue %dx.types.ResRet.f32 %3660, 3
  %3665 = call float @dx.op.dot4.f32(i32 56, float %3661, float %3662, float %3663, float %3664, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3666 = or i32 %3597, 32
  %3667 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3666, i32 undef)  ; BufferLoad(srv,index,wot)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.ResRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3667, 2
  %3671 = extractvalue %dx.types.ResRet.f32 %3667, 3
  %3672 = call float @dx.op.dot4.f32(i32 56, float %3668, float %3669, float %3670, float %3671, float %143, float %144, float %145, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3673 = call float @dx.op.unary.f32(i32 27, float %3658)  ; Round_ni(value)
  %3674 = call float @dx.op.unary.f32(i32 6, float %3673)  ; FAbs(value)
  %3675 = call float @dx.op.unary.f32(i32 27, float %3665)  ; Round_ni(value)
  %3676 = call float @dx.op.unary.f32(i32 6, float %3675)  ; FAbs(value)
  %3677 = call float @dx.op.unary.f32(i32 6, float %3672)  ; FAbs(value)
  %3678 = call float @dx.op.unary.f32(i32 27, float %3677)  ; Round_ni(value)
  %3679 = fadd fast float %3676, %3674
  %3680 = fadd fast float %3679, %3678
  %3681 = fcmp fast oeq float %3680, 0.000000e+00
  %3682 = call float @dx.op.dot4.f32(i32 56, float %3654, float %3655, float %3656, float %3657, float %3526, float %3527, float %3528, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3683 = call float @dx.op.dot4.f32(i32 56, float %3661, float %3662, float %3663, float %3664, float %3526, float %3527, float %3528, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3684 = call float @dx.op.dot4.f32(i32 56, float %3654, float %3655, float %3656, float %3657, float %3529, float %3530, float %3531, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3685 = call float @dx.op.dot4.f32(i32 56, float %3661, float %3662, float %3663, float %3664, float %3529, float %3530, float %3531, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3686 = fsub fast float %3682, %3658
  %3687 = fsub fast float %3684, %3658
  %3688 = fsub fast float %3683, %3665
  %3689 = fsub fast float %3685, %3665
  %3690 = call float @dx.op.dot3.f32(i32 55, float %3600, float %3601, float %3602, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %3691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3692 = extractvalue %dx.types.CBufRet.f32 %3691, 2
  %3693 = fadd fast float %3692, %3690
  %3694 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3695 = extractvalue %dx.types.CBufRet.f32 %3691, 0
  %3696 = fcmp fast ogt float %3694, %3695
  %3697 = and i1 %3681, %3696
  %3698 = and i1 %3652, %3697
  br i1 %3698, label %3719, label %3699

; <label>:3699                                    ; preds = %3982, %3800, %3719, %3573
  %3700 = phi float [ %3575, %3719 ], [ %3803, %3800 ], [ %3803, %3982 ], [ %3575, %3573 ]
  %3701 = phi float [ %3576, %3719 ], [ %3576, %3800 ], [ %3957, %3982 ], [ %3576, %3573 ]
  %3702 = phi float [ %3577, %3719 ], [ %3577, %3800 ], [ %3955, %3982 ], [ %3577, %3573 ]
  %3703 = phi float [ %3578, %3719 ], [ %3578, %3800 ], [ %3927, %3982 ], [ %3578, %3573 ]
  %3704 = phi float [ %3579, %3719 ], [ %3579, %3800 ], [ %3925, %3982 ], [ %3579, %3573 ]
  %3705 = phi float [ %3580, %3719 ], [ %3580, %3800 ], [ %3992, %3982 ], [ %3580, %3573 ]
  %3706 = phi float [ %3581, %3719 ], [ %3581, %3800 ], [ %3993, %3982 ], [ %3581, %3573 ]
  %3707 = phi float [ %3582, %3719 ], [ %3582, %3800 ], [ %3994, %3982 ], [ %3582, %3573 ]
  %3708 = phi float [ %3583, %3719 ], [ %3583, %3800 ], [ %3906, %3982 ], [ %3583, %3573 ]
  %3709 = phi float [ %3584, %3719 ], [ %3584, %3800 ], [ %3907, %3982 ], [ %3584, %3573 ]
  %3710 = phi float [ %3585, %3719 ], [ %3585, %3800 ], [ %3908, %3982 ], [ %3585, %3573 ]
  %3711 = phi float [ %3586, %3719 ], [ %3586, %3800 ], [ %3935, %3982 ], [ %3586, %3573 ]
  %3712 = phi float [ %3587, %3719 ], [ %3587, %3800 ], [ %3932, %3982 ], [ %3587, %3573 ]
  %3713 = phi float [ %3588, %3719 ], [ %3588, %3800 ], [ %3929, %3982 ], [ %3588, %3573 ]
  %3714 = phi float [ %3589, %3719 ], [ %3589, %3800 ], [ %3923, %3982 ], [ %3589, %3573 ]
  %3715 = phi float [ %3590, %3719 ], [ %3590, %3800 ], [ %3918, %3982 ], [ %3590, %3573 ]
  %3716 = phi float [ %3591, %3719 ], [ %3591, %3800 ], [ %3919, %3982 ], [ %3591, %3573 ]
  %3717 = phi float [ %3592, %3719 ], [ %3592, %3800 ], [ %3920, %3982 ], [ %3592, %3573 ]
  %3718 = icmp eq i32 %3649, %3572
  br i1 %3718, label %3995, label %3573

; <label>:3719                                    ; preds = %3573
  %3720 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3721 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3722 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3723 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3724 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3725 = extractvalue %dx.types.ResRet.i32 %3605, 3
  %3726 = extractvalue %dx.types.ResRet.i32 %3605, 2
  %3727 = add i32 %3725, 0
  %3728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3730 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3728, %dx.types.Handle %3729, float %3658, float %3665, float undef, float undef, i32 0, i32 0, i32 undef, float %3686, float %3688, float undef, float %3687, float %3689, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3731 = extractvalue %dx.types.ResRet.f32 %3730, 0
  %3732 = fmul fast float %3731, %3724
  %3733 = fadd fast float %3732, %3723
  %3734 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3735 = fmul fast float %3658, %3614
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3615, float %3665, float %3735)  ; FMad(a,b,c)
  %3737 = fadd fast float %3736, %3722
  %3738 = fmul fast float %3658, %3616
  %3739 = call float @dx.op.tertiary.f32(i32 46, float %3617, float %3665, float %3738)  ; FMad(a,b,c)
  %3740 = fadd fast float %3739, %3721
  %3741 = fmul fast float %3686, %3614
  %3742 = call float @dx.op.tertiary.f32(i32 46, float %3615, float %3688, float %3741)  ; FMad(a,b,c)
  %3743 = fmul fast float %3686, %3616
  %3744 = call float @dx.op.tertiary.f32(i32 46, float %3617, float %3688, float %3743)  ; FMad(a,b,c)
  %3745 = fmul fast float %3687, %3614
  %3746 = call float @dx.op.tertiary.f32(i32 46, float %3615, float %3689, float %3745)  ; FMad(a,b,c)
  %3747 = fmul fast float %3687, %3616
  %3748 = call float @dx.op.tertiary.f32(i32 46, float %3617, float %3689, float %3747)  ; FMad(a,b,c)
  %3749 = add i32 %3726, 0
  %3750 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3749, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3751 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3750, %dx.types.Handle %3729, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3752 = extractvalue %dx.types.ResRet.f32 %3751, 0
  %3753 = and i32 %3650, 1024
  %3754 = icmp ne i32 %3753, 0
  %3755 = fcmp fast ogt float %3752, 0x3FE0101020000000
  %3756 = uitofp i1 %3755 to float
  %3757 = select i1 %3754, float %3756, float %3752
  %3758 = and i32 %3650, 8192
  %3759 = icmp ne i32 %3758, 0
  %3760 = select i1 %3759, float %3720, float 1.000000e+00
  %3761 = fmul fast float %3658, 2.000000e+00
  %3762 = fadd fast float %3761, -1.000000e+00
  %3763 = call float @dx.op.unary.f32(i32 6, float %3762)  ; FAbs(value)
  %3764 = fmul fast float %3763, %3647
  %3765 = fsub fast float %3764, %3647
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = fmul fast float %3665, 2.000000e+00
  %3768 = fadd fast float %3767, -1.000000e+00
  %3769 = call float @dx.op.unary.f32(i32 6, float %3768)  ; FAbs(value)
  %3770 = fmul fast float %3769, %3648
  %3771 = fsub fast float %3770, %3648
  %3772 = call float @dx.op.unary.f32(i32 7, float %3771)  ; Saturate(value)
  %3773 = fmul fast float %3677, %3610
  %3774 = fsub fast float %3773, %3610
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  %3776 = fmul fast float %3734, %3760
  %3777 = fmul fast float %3776, %3731
  %3778 = fmul fast float %3777, %3766
  %3779 = fmul fast float %3778, %3757
  %3780 = fmul fast float %3779, %3772
  %3781 = fmul fast float %3780, %3775
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 1
  %3784 = extractvalue %dx.types.CBufRet.f32 %3782, 0
  %3785 = fsub fast float %3694, %3784
  %3786 = fmul fast float %3785, %3783
  %3787 = call float @dx.op.unary.f32(i32 7, float %3786)  ; Saturate(value)
  %3788 = fmul fast float %3781, %3611
  %3789 = fadd fast float %3781, %3611
  %3790 = fmul fast float %3789, %3620
  %3791 = fsub fast float %3790, %3620
  %3792 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3793 = and i32 %3650, 128
  %3794 = icmp ne i32 %3793, 0
  %3795 = select i1 %3794, float %3792, float %3788
  %3796 = fmul fast float %3795, %3787
  %3797 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.f32 %3797, 0
  %3799 = fcmp fast ugt float %3796, %3798
  br i1 %3799, label %3800, label %3699

; <label>:3800                                    ; preds = %3719
  %3801 = select i1 %3759, float %3796, float 0.000000e+00
  %3802 = fadd fast float %3801, %3575
  %3803 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  br i1 %3759, label %3699, label %3804

; <label>:3804                                    ; preds = %3800
  %3805 = and i32 %3650, 4
  %3806 = and i32 %3650, 8
  %3807 = add i32 %3606, 0
  %3808 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3807, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3810 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3808, %dx.types.Handle %3809, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3811 = extractvalue %dx.types.ResRet.f32 %3810, 0
  %3812 = extractvalue %dx.types.ResRet.f32 %3810, 1
  %3813 = extractvalue %dx.types.ResRet.f32 %3810, 2
  %3814 = extractvalue %dx.types.ResRet.f32 %3810, 3
  %3815 = bitcast float %3632 to i32
  %3816 = and i32 %3815, 255
  %3817 = uitofp i32 %3816 to float
  %3818 = lshr i32 %3815, 8
  %3819 = and i32 %3818, 255
  %3820 = uitofp i32 %3819 to float
  %3821 = fmul fast float %3814, %3817
  %3822 = fadd fast float %3821, %3820
  %3823 = fmul fast float %3822, 0x3F70101000000000
  %3824 = add i32 %3607, 0
  %3825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3824, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3826 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3825, %dx.types.Handle %3809, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3827 = extractvalue %dx.types.ResRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.ResRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.ResRet.f32 %3826, 2
  %3830 = extractvalue %dx.types.ResRet.f32 %3826, 3
  %3831 = bitcast float %3626 to i32
  %3832 = and i32 %3831, 255
  %3833 = uitofp i32 %3832 to float
  %3834 = lshr i32 %3831, 8
  %3835 = and i32 %3834, 255
  %3836 = uitofp i32 %3835 to float
  %3837 = lshr i32 %3831, 16
  %3838 = and i32 %3837, 255
  %3839 = uitofp i32 %3838 to float
  %3840 = fmul fast float %3839, 0x3F70101000000000
  %3841 = fmul fast float %3827, %3833
  %3842 = fadd fast float %3841, %3836
  %3843 = fmul fast float %3842, 0x3F70101000000000
  %3844 = fadd fast float %3828, -5.000000e-01
  %3845 = fadd fast float %3830, -5.000000e-01
  %3846 = fmul fast float %3844, %3840
  %3847 = fmul fast float %3845, %3840
  %3848 = fadd fast float %3846, 5.000000e-01
  %3849 = fadd fast float %3847, 5.000000e-01
  %3850 = fmul fast float %3811, %3635
  %3851 = fmul fast float %3812, %3636
  %3852 = fmul fast float %3813, %3637
  %3853 = fmul fast float %3848, 2.000000e+00
  %3854 = fadd fast float %3853, -1.000000e+00
  %3855 = fmul fast float %3849, 2.000000e+00
  %3856 = fadd fast float %3855, -1.000000e+00
  %3857 = fadd fast float %3854, %3856
  %3858 = fmul fast float %3857, 5.000000e-01
  %3859 = fsub fast float %3854, %3856
  %3860 = fmul fast float %3859, 5.000000e-01
  %3861 = call float @dx.op.unary.f32(i32 6, float %3858)  ; FAbs(value)
  %3862 = fsub fast float 1.000000e+00, %3861
  %3863 = call float @dx.op.unary.f32(i32 6, float %3860)  ; FAbs(value)
  %3864 = fsub fast float %3862, %3863
  %3865 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3860, float %3864, float %3858, float %3860, float %3864)  ; Dot3(ax,ay,az,bx,by,bz)
  %3866 = call float @dx.op.unary.f32(i32 25, float %3865)  ; Rsqrt(value)
  %3867 = fmul fast float %3858, %3866
  %3868 = fmul fast float %3860, %3866
  %3869 = fmul fast float %3866, %3864
  %3870 = fmul fast float %3869, %3600
  %3871 = fmul fast float %3869, %3601
  %3872 = fmul fast float %3869, %3602
  %3873 = fmul fast float %3867, %3623
  %3874 = fmul fast float %3867, %3624
  %3875 = fmul fast float %3867, %3625
  %3876 = fadd fast float %3873, %3870
  %3877 = fadd fast float %3874, %3871
  %3878 = fadd fast float %3875, %3872
  %3879 = fmul fast float %3868, %3629
  %3880 = fmul fast float %3868, %3630
  %3881 = fmul fast float %3868, %3631
  %3882 = fadd fast float %3876, %3879
  %3883 = fadd fast float %3877, %3880
  %3884 = fadd fast float %3878, %3881
  %3885 = call float @dx.op.dot3.f32(i32 55, float %3882, float %3883, float %3884, float %3882, float %3883, float %3884)  ; Dot3(ax,ay,az,bx,by,bz)
  %3886 = call float @dx.op.unary.f32(i32 25, float %3885)  ; Rsqrt(value)
  %3887 = fmul fast float %3882, %3886
  %3888 = fmul fast float %3883, %3886
  %3889 = fmul fast float %3884, %3886
  %3890 = icmp ne i32 %3806, 0
  %3891 = select i1 %3890, float 1.000000e+00, float 0.000000e+00
  %3892 = fmul fast float %3796, %3891
  %3893 = and i32 %3650, 1
  %3894 = icmp eq i32 %3893, 0
  br i1 %3894, label %3895, label %3899

; <label>:3895                                    ; preds = %3804
  %3896 = fsub fast float %3887, %3583
  %3897 = fsub fast float %3888, %3584
  %3898 = fsub fast float %3889, %3585
  br label %3899

; <label>:3899                                    ; preds = %3895, %3804
  %3900 = phi float [ %3896, %3895 ], [ %3887, %3804 ]
  %3901 = phi float [ %3897, %3895 ], [ %3888, %3804 ]
  %3902 = phi float [ %3898, %3895 ], [ %3889, %3804 ]
  %3903 = fmul float %3902, %3892
  %3904 = fmul float %3901, %3892
  %3905 = fmul float %3900, %3892
  %3906 = fadd fast float %3905, %3583
  %3907 = fadd fast float %3904, %3584
  %3908 = fadd fast float %3903, %3585
  %3909 = icmp ne i32 %3805, 0
  %3910 = select i1 %3909, float 1.000000e+00, float 0.000000e+00
  %3911 = fmul fast float %3796, %3910
  %3912 = fsub fast float %3850, %3590
  %3913 = fsub fast float %3851, %3591
  %3914 = fsub fast float %3852, %3592
  %3915 = fmul fast float %3912, %3911
  %3916 = fmul fast float %3913, %3911
  %3917 = fmul fast float %3914, %3911
  %3918 = fadd fast float %3915, %3590
  %3919 = fadd fast float %3916, %3591
  %3920 = fadd fast float %3917, %3592
  %3921 = fsub fast float %3823, %3589
  %3922 = fmul fast float %3921, %3911
  %3923 = fadd fast float %3922, %3589
  %3924 = fmul fast float %3911, %3579
  %3925 = fsub fast float %3579, %3924
  %3926 = fmul fast float %3911, %3578
  %3927 = fsub fast float %3578, %3926
  %3928 = fadd fast float %3796, %3588
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = fsub fast float %3843, %3587
  %3931 = fmul fast float %3930, %3892
  %3932 = fadd fast float %3931, %3587
  %3933 = fsub fast float %3829, %3586
  %3934 = fmul fast float %3933, %3892
  %3935 = fadd fast float %3934, %3586
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3851, float %3852, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3938 = extractvalue %dx.types.CBufRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.CBufRet.f32 %3937, 1
  %3940 = fmul fast float %3939, %3936
  %3941 = fadd fast float %3940, %3938
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3943 = bitcast float %3638 to i32
  %3944 = and i32 %3943, 65535
  %3945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3944)  ; LegacyF16ToF32(value)
  %3946 = lshr i32 %3943, 16
  %3947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3946)  ; LegacyF16ToF32(value)
  %3948 = fcmp fast oge float %3945, 0.000000e+00
  %3949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3950 = extractvalue %dx.types.CBufRet.f32 %3949, 0
  %3951 = select i1 %3948, float %3945, float %3950
  %3952 = fadd fast float %3951, %3947
  %3953 = fsub fast float %3942, %3577
  %3954 = fmul fast float %3953, %3796
  %3955 = fadd fast float %3954, %3577
  %3956 = fmul fast float %3952, %3796
  %3957 = call float @dx.op.binary.f32(i32 35, float %3576, float %3956)  ; FMax(a,b)
  %3958 = and i32 %3650, 16
  %3959 = icmp eq i32 %3958, 0
  br i1 %3959, label %3982, label %3960

; <label>:3960                                    ; preds = %3899
  %3961 = bitcast float %3644 to i32
  %3962 = add i32 %3641, 0
  %3963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3962, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3964 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3963, %dx.types.Handle %3809, float %3737, float %3740, float undef, float undef, i32 0, i32 0, i32 undef, float %3742, float %3744, float undef, float %3746, float %3748, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3965 = extractvalue %dx.types.ResRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.ResRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.ResRet.f32 %3964, 2
  %3968 = and i32 %3961, 65535
  %3969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3968)  ; LegacyF16ToF32(value)
  %3970 = fmul fast float %3965, %3635
  %3971 = fmul fast float %3966, %3636
  %3972 = fmul fast float %3967, %3637
  %3973 = and i32 %3650, 16384
  %3974 = icmp ne i32 %3973, 0
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 0
  %3977 = select i1 %3974, float %3976, float 1.000000e+00
  %3978 = fmul fast float %3977, %3969
  %3979 = fmul fast float %3970, %3978
  %3980 = fmul fast float %3971, %3978
  %3981 = fmul fast float %3972, %3978
  br label %3982

; <label>:3982                                    ; preds = %3960, %3899
  %3983 = phi float [ %3979, %3960 ], [ 0.000000e+00, %3899 ]
  %3984 = phi float [ %3980, %3960 ], [ 0.000000e+00, %3899 ]
  %3985 = phi float [ %3981, %3960 ], [ 0.000000e+00, %3899 ]
  %3986 = fsub fast float %3983, %3580
  %3987 = fsub fast float %3984, %3581
  %3988 = fsub fast float %3985, %3582
  %3989 = fmul fast float %3986, %3796
  %3990 = fmul fast float %3987, %3796
  %3991 = fmul fast float %3988, %3796
  %3992 = fadd fast float %3989, %3580
  %3993 = fadd fast float %3990, %3581
  %3994 = fadd fast float %3991, %3582
  br label %3699

; <label>:3995                                    ; preds = %3699
  br label %3996

; <label>:3996                                    ; preds = %3995, %3519
  %3997 = phi float [ 0.000000e+00, %3519 ], [ %3700, %3995 ]
  %3998 = phi float [ %3488, %3519 ], [ %3701, %3995 ]
  %3999 = phi float [ %3469, %3519 ], [ %3702, %3995 ]
  %4000 = phi float [ 0.000000e+00, %3519 ], [ %3703, %3995 ]
  %4001 = phi float [ 0.000000e+00, %3519 ], [ %3704, %3995 ]
  %4002 = phi float [ %3463, %3519 ], [ %3705, %3995 ]
  %4003 = phi float [ %3464, %3519 ], [ %3706, %3995 ]
  %4004 = phi float [ %3465, %3519 ], [ %3707, %3995 ]
  %4005 = phi float [ %3514, %3519 ], [ %3708, %3995 ]
  %4006 = phi float [ %3515, %3519 ], [ %3709, %3995 ]
  %4007 = phi float [ %3516, %3519 ], [ %3710, %3995 ]
  %4008 = phi float [ %3468, %3519 ], [ %3711, %3995 ]
  %4009 = phi float [ %3467, %3519 ], [ %3712, %3995 ]
  %4010 = phi float [ 0.000000e+00, %3519 ], [ %3713, %3995 ]
  %4011 = phi float [ %3466, %3519 ], [ %3714, %3995 ]
  %4012 = phi float [ %3460, %3519 ], [ %3715, %3995 ]
  %4013 = phi float [ %3461, %3519 ], [ %3716, %3995 ]
  %4014 = phi float [ %3462, %3519 ], [ %3717, %3995 ]
  %4015 = call float @dx.op.dot3.f32(i32 55, float %4005, float %4006, float %4007, float %4005, float %4006, float %4007)  ; Dot3(ax,ay,az,bx,by,bz)
  %4016 = call float @dx.op.unary.f32(i32 25, float %4015)  ; Rsqrt(value)
  %4017 = fmul fast float %4016, %4005
  %4018 = fmul fast float %4016, %4006
  %4019 = fmul fast float %4016, %4007
  %4020 = fadd fast float %4010, %904
  %4021 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4022 = call float @dx.op.dot3.f32(i32 55, float %4017, float %4018, float %4019, float %4017, float %4018, float %4019)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = call float @dx.op.unary.f32(i32 25, float %4022)  ; Rsqrt(value)
  %4024 = fmul fast float %4023, %4017
  %4025 = fmul fast float %4023, %4018
  %4026 = fmul fast float %4023, %4019
  br label %4027

; <label>:4027                                    ; preds = %3996, %3457
  %4028 = phi float [ %4024, %3996 ], [ %3514, %3457 ]
  %4029 = phi float [ %4025, %3996 ], [ %3515, %3457 ]
  %4030 = phi float [ %4026, %3996 ], [ %3516, %3457 ]
  %4031 = phi float [ %4012, %3996 ], [ %3460, %3457 ]
  %4032 = phi float [ %4013, %3996 ], [ %3461, %3457 ]
  %4033 = phi float [ %4014, %3996 ], [ %3462, %3457 ]
  %4034 = phi float [ %4002, %3996 ], [ %3463, %3457 ]
  %4035 = phi float [ %4003, %3996 ], [ %3464, %3457 ]
  %4036 = phi float [ %4004, %3996 ], [ %3465, %3457 ]
  %4037 = phi float [ %4011, %3996 ], [ %3466, %3457 ]
  %4038 = phi float [ %4021, %3996 ], [ %904, %3457 ]
  %4039 = phi float [ %4009, %3996 ], [ %3467, %3457 ]
  %4040 = phi float [ %4008, %3996 ], [ %3468, %3457 ]
  %4041 = phi float [ %4001, %3996 ], [ 0.000000e+00, %3457 ]
  %4042 = phi float [ %4000, %3996 ], [ 0.000000e+00, %3457 ]
  %4043 = phi float [ %3997, %3996 ], [ 0.000000e+00, %3457 ]
  %4044 = phi float [ %3998, %3996 ], [ %3488, %3457 ]
  %4045 = phi float [ %3999, %3996 ], [ %3469, %3457 ]
  %4046 = fadd fast float %4037, 0xBFB99999A0000000
  %4047 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4048 = fmul fast float %4047, 0x3FF1C71C80000000
  %4049 = call float @dx.op.binary.f32(i32 36, float %4037, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4050 = fsub fast float 1.000000e+00, %4048
  %4051 = call float @dx.op.unary.f32(i32 7, float %4050)  ; Saturate(value)
  %4052 = fmul fast float %4051, %4031
  %4053 = fmul fast float %4051, %4032
  %4054 = fmul fast float %4051, %4033
  %4055 = call float @dx.op.unary.f32(i32 7, float %4052)  ; Saturate(value)
  %4056 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4057 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4058 = fmul fast float %4048, %4031
  %4059 = fmul fast float %4048, %4032
  %4060 = fmul fast float %4048, %4033
  %4061 = fadd fast float %4058, %4049
  %4062 = fadd fast float %4059, %4049
  %4063 = fadd fast float %4060, %4049
  %4064 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4065 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4066 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4067 = call float @dx.op.unary.f32(i32 7, float %4039)  ; Saturate(value)
  %4068 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.i32 %4068, 3
  %4070 = and i32 %4069, 8
  %4071 = icmp ne i32 %4070, 0
  %4072 = call float @dx.op.binary.f32(i32 35, float %4055, float %4031)  ; FMax(a,b)
  %4073 = call float @dx.op.binary.f32(i32 35, float %4056, float %4031)  ; FMax(a,b)
  %4074 = call float @dx.op.binary.f32(i32 35, float %4057, float %4031)  ; FMax(a,b)
  %4075 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4056, float %4057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4076 = select i1 %185, float %4031, float %4055
  %4077 = select i1 %185, float %4075, float %4056
  %4078 = select i1 %185, float 1.000000e+00, float %4057
  %4079 = select i1 %4071, float %4072, float %4076
  %4080 = select i1 %4071, float %4073, float %4077
  %4081 = select i1 %4071, float %4074, float %4078
  %4082 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4083 = extractvalue %dx.types.CBufRet.f32 %4082, 0
  %4084 = extractvalue %dx.types.CBufRet.f32 %4082, 1
  %4085 = extractvalue %dx.types.CBufRet.f32 %4082, 2
  %4086 = fadd fast float %4083, %143
  %4087 = fadd fast float %4084, %144
  %4088 = fadd fast float %4085, %145
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4092 = fsub fast float %4086, %4090
  %4093 = fsub fast float %4087, %4091
  %4094 = fmul fast float %4092, %4092
  %4095 = fmul fast float %4093, %4093
  %4096 = fadd fast float %4094, %4095
  %4097 = call float @dx.op.unary.f32(i32 24, float %4096)  ; Sqrt(value)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4089, 2
  %4099 = fcmp fast olt float %4097, %4098
  br i1 %4099, label %4100, label %4167

; <label>:4100                                    ; preds = %4027
  %4101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4102 = extractvalue %dx.types.CBufRet.f32 %4101, 0
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 0
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.CBufRet.f32 %4101, 1
  %4108 = extractvalue %dx.types.CBufRet.f32 %4103, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4105, 1
  %4110 = extractvalue %dx.types.CBufRet.f32 %4101, 3
  %4111 = extractvalue %dx.types.CBufRet.f32 %4103, 3
  %4112 = extractvalue %dx.types.CBufRet.f32 %4105, 3
  %4113 = fadd fast float %4110, %4086
  %4114 = fadd fast float %4111, %4087
  %4115 = fadd fast float %4112, %4088
  %4116 = fmul fast float %4113, %4102
  %4117 = call float @dx.op.tertiary.f32(i32 46, float %4114, float %4104, float %4116)  ; FMad(a,b,c)
  %4118 = call float @dx.op.tertiary.f32(i32 46, float %4115, float %4106, float %4117)  ; FMad(a,b,c)
  %4119 = fmul fast float %4113, %4107
  %4120 = call float @dx.op.tertiary.f32(i32 46, float %4114, float %4108, float %4119)  ; FMad(a,b,c)
  %4121 = call float @dx.op.tertiary.f32(i32 46, float %4115, float %4109, float %4120)  ; FMad(a,b,c)
  %4122 = fsub fast float %4118, %4110
  %4123 = fsub fast float %4121, %4111
  %4124 = fsub fast float %4122, %4090
  %4125 = fadd fast float %4124, %4098
  %4126 = fsub fast float %4123, %4091
  %4127 = fadd fast float %4126, %4098
  %4128 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4129 = fmul fast float %4125, %4128
  %4130 = fmul fast float %4127, %4128
  %4131 = call float @dx.op.unary.f32(i32 7, float %4129)  ; Saturate(value)
  %4132 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4133 = fsub fast float 1.000000e+00, %4131
  %4134 = fsub fast float 1.000000e+00, %4132
  %4135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4133, float %4134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4136 = extractvalue %dx.types.ResRet.f32 %4135, 0
  %4137 = fcmp fast ugt float %4136, 0.000000e+00
  br i1 %4137, label %4138, label %4441

; <label>:4138                                    ; preds = %4100
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 2
  %4141 = fmul fast float %4140, %4136
  %4142 = extractvalue %dx.types.CBufRet.f32 %4139, 3
  %4143 = fadd fast float %4142, %4141
  %4144 = extractvalue %dx.types.CBufRet.f32 %4105, 2
  %4145 = fadd fast float %4143, %4112
  %4146 = fmul fast float %4118, %4106
  %4147 = call float @dx.op.tertiary.f32(i32 46, float %4121, float %4109, float %4146)  ; FMad(a,b,c)
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %4145, float %4144, float %4147)  ; FMad(a,b,c)
  %4149 = fsub fast float %4148, %4112
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 2
  %4152 = fsub fast float %4149, %4151
  %4153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4133, float %4134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4154 = extractvalue %dx.types.ResRet.f32 %4153, 0
  %4155 = extractvalue %dx.types.ResRet.f32 %4153, 1
  %4156 = extractvalue %dx.types.ResRet.f32 %4153, 2
  %4157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4133, float %4134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4158 = extractvalue %dx.types.ResRet.f32 %4157, 0
  %4159 = extractvalue %dx.types.ResRet.f32 %4157, 1
  %4160 = extractvalue %dx.types.ResRet.f32 %4157, 2
  %4161 = fadd fast float %4158, %4154
  %4162 = fmul fast float %4161, 0x3F847AE140000000
  %4163 = fadd fast float %4159, %4155
  %4164 = fmul fast float %4163, 0x3F847AE140000000
  %4165 = fadd fast float %4160, %4156
  %4166 = fmul fast float %4165, 0x3F847AE140000000
  br label %4441

; <label>:4167                                    ; preds = %4027
  %4168 = and i32 %161, 1
  %4169 = icmp eq i32 %4168, 0
  br i1 %4169, label %4441, label %4170

; <label>:4170                                    ; preds = %4167
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.f32 %4173, 0
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4178 = extractvalue %dx.types.CBufRet.f32 %4173, 1
  %4179 = extractvalue %dx.types.CBufRet.f32 %4175, 1
  %4180 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4181 = extractvalue %dx.types.CBufRet.f32 %4173, 3
  %4182 = extractvalue %dx.types.CBufRet.f32 %4175, 3
  %4183 = fadd fast float %4180, %4086
  %4184 = fadd fast float %4181, %4087
  %4185 = fadd fast float %4182, %4088
  %4186 = fmul fast float %4183, %4172
  %4187 = call float @dx.op.tertiary.f32(i32 46, float %4184, float %4174, float %4186)  ; FMad(a,b,c)
  %4188 = call float @dx.op.tertiary.f32(i32 46, float %4185, float %4176, float %4187)  ; FMad(a,b,c)
  %4189 = fmul fast float %4183, %4177
  %4190 = call float @dx.op.tertiary.f32(i32 46, float %4184, float %4178, float %4189)  ; FMad(a,b,c)
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4185, float %4179, float %4190)  ; FMad(a,b,c)
  %4192 = fsub fast float %4188, %4180
  %4193 = fsub fast float %4191, %4181
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.CBufRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4198 = extractvalue %dx.types.CBufRet.f32 %4194, 3
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 3
  %4201 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4202 = extractvalue %dx.types.CBufRet.i32 %4201, 0
  %4203 = extractvalue %dx.types.CBufRet.i32 %4201, 1
  %4204 = udiv i32 %4203, %4202
  %4205 = fsub fast float %4192, %4195
  %4206 = fsub fast float %4193, %4196
  %4207 = call float @dx.op.binary.f32(i32 35, float %4205, float 0.000000e+00)  ; FMax(a,b)
  %4208 = call float @dx.op.binary.f32(i32 35, float %4206, float 0.000000e+00)  ; FMax(a,b)
  %4209 = call float @dx.op.binary.f32(i32 36, float %4207, float %4197)  ; FMin(a,b)
  %4210 = call float @dx.op.binary.f32(i32 36, float %4208, float %4198)  ; FMin(a,b)
  %4211 = add i32 %4202, -1
  %4212 = add i32 %4204, -1
  %4213 = fmul fast float %4209, %4200
  %4214 = fmul fast float %4210, %4200
  %4215 = fptoui float %4213 to i32
  %4216 = fptoui float %4214 to i32
  %4217 = call i32 @dx.op.binary.i32(i32 40, i32 %4215, i32 %4211)  ; UMin(a,b)
  %4218 = call i32 @dx.op.binary.i32(i32 40, i32 %4216, i32 %4212)  ; UMin(a,b)
  %4219 = mul i32 %4218, %4202
  %4220 = add i32 %4219, %4217
  %4221 = shl i32 %4220, 2
  %4222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4221, i32 undef)  ; BufferLoad(srv,index,wot)
  %4223 = extractvalue %dx.types.ResRet.i32 %4222, 0
  %4224 = icmp eq i32 %4223, -1
  br i1 %4224, label %4441, label %4225

; <label>:4225                                    ; preds = %4170
  %4226 = mul i32 %4223, 148
  %4227 = add i32 %4226, 4
  %4228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4227, i32 undef)  ; BufferLoad(srv,index,wot)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = add i32 %4226, 8
  %4231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = add i32 %4226, 36
  %4234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4233, i32 undef)  ; BufferLoad(srv,index,wot)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = add i32 %4226, 60
  %4237 = add i32 %4226, 92
  %4238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.i32 %4238, 0
  %4240 = add i32 %4226, 116
  %4241 = fsub fast float %4192, %4229
  %4242 = fsub fast float %4193, %4232
  %4243 = fmul fast float %4200, %4241
  %4244 = fmul fast float %4200, %4242
  %4245 = call float @dx.op.unary.f32(i32 7, float %4243)  ; Saturate(value)
  %4246 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4247 = fsub fast float 1.000000e+00, %4246
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 2
  %4250 = call float @dx.op.unary.f32(i32 83, float %4245)  ; DerivCoarseX(value)
  %4251 = call float @dx.op.unary.f32(i32 83, float %4247)  ; DerivCoarseX(value)
  %4252 = call float @dx.op.unary.f32(i32 84, float %4245)  ; DerivCoarseY(value)
  %4253 = call float @dx.op.unary.f32(i32 84, float %4247)  ; DerivCoarseY(value)
  %4254 = fmul fast float %4250, %4249
  %4255 = fmul fast float %4251, %4249
  %4256 = fmul fast float %4252, %4249
  %4257 = fmul fast float %4253, %4249
  %4258 = call float @dx.op.dot2.f32(i32 54, float %4256, float %4257, float %4256, float %4257)  ; Dot2(ax,ay,bx,by)
  %4259 = call float @dx.op.dot2.f32(i32 54, float %4254, float %4255, float %4254, float %4255)  ; Dot2(ax,ay,bx,by)
  %4260 = call float @dx.op.binary.f32(i32 35, float %4259, float %4258)  ; FMax(a,b)
  %4261 = call float @dx.op.unary.f32(i32 23, float %4260)  ; Log(value)
  %4262 = fmul fast float %4261, 5.000000e-01
  %4263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4263, 1
  %4265 = fadd fast float %4264, %4262
  %4266 = call float @dx.op.binary.f32(i32 35, float %4265, float 0.000000e+00)  ; FMax(a,b)
  %4267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4267, 3
  %4269 = fadd fast float %4268, %4266
  %4270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.f32 %4270, 3
  %4272 = fadd fast float %4269, %4271
  %4273 = add i32 %4239, 0
  %4274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4273, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4275 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4274, i32 0)  ; GetDimensions(handle,mipLevel)
  %4276 = extractvalue %dx.types.Dimensions %4275, 0
  %4277 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4276)  ; FirstbitLo(value)
  %4278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.i32 %4278, 1
  %4280 = sub nsw i32 %4279, %4277
  %4281 = sitofp i32 %4280 to float
  %4282 = fsub fast float %4272, %4281
  %4283 = call float @dx.op.binary.f32(i32 35, float %4282, float 0.000000e+00)  ; FMax(a,b)
  %4284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4274, %dx.types.Handle %37, float %4245, float %4247, float %4235, float undef, i32 0, i32 0, i32 undef, float %4283)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = fcmp ule float %4285, 0x3FE0101020000000
  %4287 = extractvalue %dx.types.CBufRet.i32 %4278, 0
  %4288 = and i32 %4287, 128
  %4289 = icmp ne i32 %4288, 0
  %4290 = and i1 %4286, %4289
  br i1 %4290, label %4441, label %4291

; <label>:4291                                    ; preds = %4225
  %4292 = add i32 %4226, 20
  %4293 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4292, i32 undef)  ; BufferLoad(srv,index,wot)
  %4294 = extractvalue %dx.types.ResRet.f32 %4293, 0
  %4295 = add i32 %4226, 24
  %4296 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4295, i32 undef)  ; BufferLoad(srv,index,wot)
  %4297 = extractvalue %dx.types.ResRet.f32 %4296, 0
  %4298 = add i32 %4226, 40
  %4299 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4298, i32 undef)  ; BufferLoad(srv,index,wot)
  %4300 = extractvalue %dx.types.ResRet.f32 %4299, 0
  %4301 = add i32 %4226, 96
  %4302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4301, i32 undef)  ; BufferLoad(srv,index,wot)
  %4303 = extractvalue %dx.types.ResRet.i32 %4302, 0
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 2
  %4306 = fmul fast float %4305, %4245
  %4307 = fmul fast float %4305, %4247
  %4308 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4309 = fadd fast float %4306, %4308
  %4310 = fadd fast float %4307, %4308
  %4311 = add i32 %4303, 0
  %4312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4311, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4313 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4312, i32 0)  ; GetDimensions(handle,mipLevel)
  %4314 = extractvalue %dx.types.Dimensions %4313, 0
  %4315 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4314)  ; FirstbitLo(value)
  %4316 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.i32 %4316, 1
  %4318 = sub nsw i32 %4317, %4315
  %4319 = sitofp i32 %4318 to float
  %4320 = fsub fast float %4269, %4319
  %4321 = call float @dx.op.binary.f32(i32 35, float %4320, float 0.000000e+00)  ; FMax(a,b)
  %4322 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4312, %dx.types.Handle %37, float %4309, float %4310, float %4300, float undef, i32 0, i32 0, i32 undef, float %4321)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4323 = extractvalue %dx.types.ResRet.f32 %4322, 0
  %4324 = fmul fast float %4323, %4294
  %4325 = fadd fast float %4324, %4297
  %4326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4327 = extractvalue %dx.types.CBufRet.f32 %4326, 0
  %4328 = extractvalue %dx.types.CBufRet.f32 %4326, 1
  %4329 = extractvalue %dx.types.CBufRet.f32 %4326, 2
  %4330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4331 = extractvalue %dx.types.CBufRet.f32 %4330, 3
  %4332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.f32 %4332, 3
  %4334 = extractvalue %dx.types.CBufRet.f32 %4326, 3
  %4335 = fadd fast float %4331, %4192
  %4336 = fadd fast float %4333, %4193
  %4337 = fadd fast float %4325, %4334
  %4338 = fmul fast float %4335, %4327
  %4339 = call float @dx.op.tertiary.f32(i32 46, float %4336, float %4328, float %4338)  ; FMad(a,b,c)
  %4340 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4329, float %4339)  ; FMad(a,b,c)
  %4341 = fsub fast float %4340, %4334
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %4344 = fsub fast float %4341, %4343
  %4345 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.i32 %4345, 0
  %4347 = call i32 @dx.op.binary.i32(i32 40, i32 %4223, i32 %4346)  ; UMin(a,b)
  %4348 = mul i32 %4347, 36
  %4349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4348, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.i32 %4349, 0
  %4351 = add i32 %4348, 4
  %4352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.f32 %4352, 0
  %4354 = fmul fast float %4353, %4245
  %4355 = fmul fast float %4353, %4247
  %4356 = extractvalue %dx.types.CBufRet.f32 %4352, 1
  %4357 = fadd fast float %4354, %4356
  %4358 = fadd fast float %4355, %4356
  %4359 = icmp eq i32 %4350, 0
  br i1 %4359, label %4428, label %4360

; <label>:4360                                    ; preds = %4291
  br label %4361

; <label>:4361                                    ; preds = %4418, %4360
  %4362 = phi float [ %4419, %4418 ], [ 0.000000e+00, %4360 ]
  %4363 = phi float [ %4420, %4418 ], [ 0.000000e+00, %4360 ]
  %4364 = phi float [ %4421, %4418 ], [ 0.000000e+00, %4360 ]
  %4365 = phi float [ %4422, %4418 ], [ 0.000000e+00, %4360 ]
  %4366 = phi float [ %4423, %4418 ], [ 0.000000e+00, %4360 ]
  %4367 = phi float [ %4424, %4418 ], [ 0.000000e+00, %4360 ]
  %4368 = phi i32 [ %4425, %4418 ], [ 0, %4360 ]
  %4369 = shl i32 %4368, 2
  %4370 = add i32 %4236, %4369
  %4371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = add i32 %4240, %4369
  %4374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.i32 %4374, 0
  %4376 = add i32 %4375, 0
  %4377 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4376, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4378 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4377, i32 0)  ; GetDimensions(handle,mipLevel)
  %4379 = extractvalue %dx.types.Dimensions %4378, 0
  %4380 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4379)  ; FirstbitLo(value)
  %4381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.i32 %4381, 1
  %4383 = sub nsw i32 %4382, %4380
  %4384 = sitofp i32 %4383 to float
  %4385 = fsub fast float %4269, %4384
  %4386 = call float @dx.op.binary.f32(i32 35, float %4385, float 0.000000e+00)  ; FMax(a,b)
  %4387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4377, %dx.types.Handle %37, float %4357, float %4358, float %4372, float undef, i32 0, i32 0, i32 undef, float %4386)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = fcmp fast ogt float %4388, 0.000000e+00
  br i1 %4389, label %4390, label %4418

; <label>:4390                                    ; preds = %4361
  %4391 = add i32 %4351, %4369
  %4392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.i32 %4392, 0
  %4394 = and i32 %4393, 32767
  %4395 = mul nuw nsw i32 %4394, 928
  %4396 = add nuw nsw i32 %4395, 48
  %4397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.ResRet.f32 %4397, 1
  %4400 = extractvalue %dx.types.ResRet.f32 %4397, 2
  %4401 = add nuw nsw i32 %4395, 60
  %4402 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4401, i32 undef)  ; BufferLoad(srv,index,wot)
  %4403 = extractvalue %dx.types.ResRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.ResRet.f32 %4402, 1
  %4405 = extractvalue %dx.types.ResRet.f32 %4402, 2
  %4406 = fmul fast float %4398, %4388
  %4407 = fmul fast float %4399, %4388
  %4408 = fmul fast float %4400, %4388
  %4409 = fadd fast float %4406, %4362
  %4410 = fadd fast float %4407, %4363
  %4411 = fadd fast float %4408, %4364
  %4412 = fmul fast float %4403, %4388
  %4413 = fmul fast float %4404, %4388
  %4414 = fmul fast float %4405, %4388
  %4415 = fadd fast float %4412, %4365
  %4416 = fadd fast float %4413, %4366
  %4417 = fadd fast float %4414, %4367
  br label %4418

; <label>:4418                                    ; preds = %4390, %4361
  %4419 = phi float [ %4409, %4390 ], [ %4362, %4361 ]
  %4420 = phi float [ %4410, %4390 ], [ %4363, %4361 ]
  %4421 = phi float [ %4411, %4390 ], [ %4364, %4361 ]
  %4422 = phi float [ %4415, %4390 ], [ %4365, %4361 ]
  %4423 = phi float [ %4416, %4390 ], [ %4366, %4361 ]
  %4424 = phi float [ %4417, %4390 ], [ %4367, %4361 ]
  %4425 = add nuw i32 %4368, 1
  %4426 = icmp eq i32 %4425, %4350
  br i1 %4426, label %4427, label %4361

; <label>:4427                                    ; preds = %4418
  br label %4428

; <label>:4428                                    ; preds = %4427, %4291
  %4429 = phi float [ 0.000000e+00, %4291 ], [ %4419, %4427 ]
  %4430 = phi float [ 0.000000e+00, %4291 ], [ %4420, %4427 ]
  %4431 = phi float [ 0.000000e+00, %4291 ], [ %4421, %4427 ]
  %4432 = phi float [ 0.000000e+00, %4291 ], [ %4422, %4427 ]
  %4433 = phi float [ 0.000000e+00, %4291 ], [ %4423, %4427 ]
  %4434 = phi float [ 0.000000e+00, %4291 ], [ %4424, %4427 ]
  %4435 = fadd fast float %4432, %4429
  %4436 = fmul fast float %4435, 0x3F847AE140000000
  %4437 = fadd fast float %4433, %4430
  %4438 = fmul fast float %4437, 0x3F847AE140000000
  %4439 = fadd fast float %4434, %4431
  %4440 = fmul fast float %4439, 0x3F847AE140000000
  br label %4441

; <label>:4441                                    ; preds = %4428, %4225, %4170, %4167, %4138, %4100
  %4442 = phi float [ %4152, %4138 ], [ -1.310720e+05, %4100 ], [ %4344, %4428 ], [ -1.310720e+05, %4170 ], [ -1.310720e+05, %4225 ], [ -1.310720e+05, %4167 ]
  %4443 = phi float [ %4162, %4138 ], [ 0.000000e+00, %4100 ], [ %4436, %4428 ], [ 0.000000e+00, %4170 ], [ 0.000000e+00, %4225 ], [ 0.000000e+00, %4167 ]
  %4444 = phi float [ %4164, %4138 ], [ 0.000000e+00, %4100 ], [ %4438, %4428 ], [ 0.000000e+00, %4170 ], [ 0.000000e+00, %4225 ], [ 0.000000e+00, %4167 ]
  %4445 = phi float [ %4166, %4138 ], [ 0.000000e+00, %4100 ], [ %4440, %4428 ], [ 0.000000e+00, %4170 ], [ 0.000000e+00, %4225 ], [ 0.000000e+00, %4167 ]
  %4446 = phi i1 [ true, %4138 ], [ false, %4100 ], [ true, %4428 ], [ false, %4170 ], [ false, %4225 ], [ false, %4167 ]
  %4447 = and i32 %161, 3
  %4448 = icmp eq i32 %4447, 1
  %4449 = select i1 %4448, float 1.000000e+00, float 0.000000e+00
  %4450 = fsub fast float %4442, %145
  %4451 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4452 = select i1 %4446, float %4451, float 1.000000e+00
  %4453 = fmul fast float %4452, %4449
  %4454 = icmp eq i32 %4447, 3
  %4455 = select i1 %4454, float 1.000000e+00, float %4453
  %4456 = call float @dx.op.binary.f32(i32 35, float %4043, float %4455)  ; FMax(a,b)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4456)  ; Saturate(value)
  %4458 = fcmp fast une float %4457, 0.000000e+00
  %4459 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %143, float %144, float %145)  ; Dot3(ax,ay,az,bx,by,bz)
  %4460 = call float @dx.op.unary.f32(i32 25, float %4459)  ; Rsqrt(value)
  br i1 %4458, label %4468, label %4461

; <label>:4461                                    ; preds = %4441
  %4462 = fmul fast float %4460, %143
  %4463 = fmul fast float %4460, %144
  %4464 = fmul fast float %4460, %145
  %4465 = fsub fast float -0.000000e+00, %4462
  %4466 = fsub fast float -0.000000e+00, %4463
  %4467 = fsub fast float -0.000000e+00, %4464
  br label %4636

; <label>:4468                                    ; preds = %4441
  %4469 = fmul fast float %143, %4460
  %4470 = fsub fast float -0.000000e+00, %4469
  %4471 = fmul fast float %144, %4460
  %4472 = fsub fast float -0.000000e+00, %4471
  %4473 = fmul fast float %145, %4460
  %4474 = fsub fast float -0.000000e+00, %4473
  %4475 = call float @dx.op.dot3.f32(i32 55, float %4470, float %4472, float %4474, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4476 = fmul fast float %4457, 2.500000e+00
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = fmul fast float %4457, 0x4013FFFFE0000000
  %4479 = fadd fast float %4478, 0xBFFFFFFFE0000000
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fmul fast float %4457, 0x4004000020000000
  %4482 = fadd fast float %4481, 0xBFF8000040000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4485 = fmul fast float %4046, 1.000000e+01
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = fmul fast float %4486, 2.000000e+00
  %4488 = fsub fast float 3.000000e+00, %4487
  %4489 = fmul fast float %4486, %4486
  %4490 = fmul fast float %4489, %4488
  %4491 = fsub fast float 1.000000e+00, %4490
  %4492 = fsub fast float 0x3FE3333340000000, %4067
  %4493 = fmul fast float %4492, 0x400AAAAAA0000000
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fmul fast float %4491, %4494
  %4496 = fmul fast float %4079, 0x3FEA2B8620000000
  %4497 = fmul fast float %4080, 0x3FEA2B8620000000
  %4498 = fmul fast float %4081, 0x3FEA2B8620000000
  %4499 = fadd fast float %4496, 0x3FC81DFBA0000000
  %4500 = fmul fast float %4499, %4079
  %4501 = fadd fast float %4500, 0x3F910E6020000000
  %4502 = fadd fast float %4497, 0x3FC81DFBA0000000
  %4503 = fmul fast float %4502, %4080
  %4504 = fadd fast float %4503, 0x3F910E6020000000
  %4505 = fadd fast float %4498, 0x3FC81DFBA0000000
  %4506 = fmul fast float %4505, %4081
  %4507 = fadd fast float %4506, 0x3F910E6020000000
  %4508 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4509 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4511 = fsub fast float %4508, %4079
  %4512 = fsub fast float %4509, %4080
  %4513 = fsub fast float %4510, %4081
  %4514 = fmul fast float %4511, %4484
  %4515 = fmul fast float %4514, %4495
  %4516 = fmul fast float %4512, %4484
  %4517 = fmul fast float %4516, %4495
  %4518 = fmul fast float %4513, %4484
  %4519 = fmul fast float %4518, %4495
  %4520 = fadd fast float %4515, %4079
  %4521 = fadd fast float %4517, %4080
  %4522 = fadd fast float %4519, %4081
  %4523 = fmul fast float %4040, %4040
  %4524 = fmul fast float %4523, %4523
  %4525 = fadd fast float %4480, 1.000000e+00
  %4526 = fsub fast float %4525, %4495
  %4527 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4528 = call float @dx.op.dot3.f32(i32 55, float %87, float %88, float %89, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4529 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4530 = fsub fast float 1.000000e+00, %4524
  %4531 = call float @dx.op.binary.f32(i32 36, float %4527, float %4530)  ; FMin(a,b)
  %4532 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4533 = call float @dx.op.binary.f32(i32 35, float %4531, float %4532)  ; FMax(a,b)
  %4534 = fadd fast float %4529, 0xBFE4CCCCC0000000
  %4535 = fmul fast float %4534, 0x4006DB6DA0000000
  %4536 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4537 = fmul fast float %4536, 2.000000e+00
  %4538 = fsub fast float 3.000000e+00, %4537
  %4539 = bitcast float %4064 to i32
  %4540 = ashr i32 %4539, 1
  %4541 = add nsw i32 %4540, 532487669
  %4542 = bitcast i32 %4541 to float
  %4543 = fsub fast float 1.000000e+00, %4542
  %4544 = bitcast float %4543 to i32
  %4545 = sub nsw i32 2129859010, %4544
  %4546 = bitcast i32 %4545 to float
  %4547 = fmul fast float %4546, 2.000000e+00
  %4548 = bitcast float %4065 to i32
  %4549 = ashr i32 %4548, 1
  %4550 = add nsw i32 %4549, 532487669
  %4551 = bitcast i32 %4550 to float
  %4552 = fsub fast float 1.000000e+00, %4551
  %4553 = bitcast float %4552 to i32
  %4554 = sub nsw i32 2129859010, %4553
  %4555 = bitcast i32 %4554 to float
  %4556 = fmul fast float %4555, 2.000000e+00
  %4557 = bitcast float %4066 to i32
  %4558 = ashr i32 %4557, 1
  %4559 = add nsw i32 %4558, 532487669
  %4560 = bitcast i32 %4559 to float
  %4561 = fsub fast float 1.000000e+00, %4560
  %4562 = bitcast float %4561 to i32
  %4563 = sub nsw i32 2129859010, %4562
  %4564 = bitcast i32 %4563 to float
  %4565 = fmul fast float %4564, 2.000000e+00
  %4566 = fsub fast float 0x4002A9FBE0000000, %4547
  %4567 = fadd fast float %4547, 0x3FD54FDF00000000
  %4568 = bitcast float %4567 to i32
  %4569 = sub nsw i32 2129859010, %4568
  %4570 = bitcast i32 %4569 to float
  %4571 = fmul fast float %4570, %4566
  %4572 = fmul fast float %4571, %4571
  %4573 = fsub fast float 0x4002A9FBE0000000, %4556
  %4574 = fadd fast float %4556, 0x3FD54FDF00000000
  %4575 = bitcast float %4574 to i32
  %4576 = sub nsw i32 2129859010, %4575
  %4577 = bitcast i32 %4576 to float
  %4578 = fmul fast float %4577, %4573
  %4579 = fmul fast float %4578, %4578
  %4580 = fsub fast float 0x4002A9FBE0000000, %4565
  %4581 = fadd fast float %4565, 0x3FD54FDF00000000
  %4582 = bitcast float %4581 to i32
  %4583 = sub nsw i32 2129859010, %4582
  %4584 = bitcast i32 %4583 to float
  %4585 = fmul fast float %4584, %4580
  %4586 = fmul fast float %4585, %4585
  %4587 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4572)  ; FMax(a,b)
  %4588 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4579)  ; FMax(a,b)
  %4589 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4586)  ; FMax(a,b)
  %4590 = fsub fast float 1.000000e+00, %4475
  %4591 = fadd fast float %4590, %4491
  %4592 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4593 = fsub fast float 1.000000e+00, %4455
  %4594 = fmul fast float %4533, %4593
  %4595 = fmul fast float %4536, %4536
  %4596 = fmul fast float %4595, %4594
  %4597 = fmul fast float %4596, %4538
  %4598 = fmul fast float %4593, 0xBFE99999A0000000
  %4599 = fmul fast float %4598, %4484
  %4600 = fmul fast float %4599, %4495
  %4601 = fadd fast float %4600, 1.000000e+00
  %4602 = fadd fast float %4067, -1.000000e+00
  %4603 = fmul fast float %4601, %4602
  %4604 = fadd fast float %4603, 1.000000e+00
  %4605 = fsub fast float %4587, %4064
  %4606 = fsub fast float %4588, %4065
  %4607 = fsub fast float %4589, %4066
  %4608 = fmul fast float %4597, %4605
  %4609 = fmul fast float %4597, %4606
  %4610 = fmul fast float %4597, %4607
  %4611 = fadd fast float %4608, %4064
  %4612 = fadd fast float %4609, %4065
  %4613 = fadd fast float %4610, %4066
  %4614 = fsub fast float %87, %4028
  %4615 = fsub fast float %88, %4029
  %4616 = fsub fast float %89, %4030
  %4617 = fmul fast float %4597, %4614
  %4618 = fmul fast float %4597, %4615
  %4619 = fmul fast float %4597, %4616
  %4620 = fadd fast float %4617, %4028
  %4621 = fadd fast float %4618, %4029
  %4622 = fadd fast float %4619, %4030
  %4623 = fmul fast float %4597, %4592
  %4624 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4625 = fsub fast float 1.000000e+00, %4624
  %4626 = fmul fast float %4623, %4625
  %4627 = fadd fast float %4626, %4624
  %4628 = fsub fast float 1.000000e+00, %4040
  %4629 = fmul fast float %4597, %4628
  %4630 = fadd fast float %4629, %4040
  %4631 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float %4620, float %4621, float %4622)  ; Dot3(ax,ay,az,bx,by,bz)
  %4632 = call float @dx.op.unary.f32(i32 25, float %4631)  ; Rsqrt(value)
  %4633 = fmul fast float %4620, %4632
  %4634 = fmul fast float %4621, %4632
  %4635 = fmul fast float %4622, %4632
  br label %4636

; <label>:4636                                    ; preds = %4468, %4461
  %4637 = phi float [ %4467, %4461 ], [ %4474, %4468 ]
  %4638 = phi float [ %4466, %4461 ], [ %4472, %4468 ]
  %4639 = phi float [ %4465, %4461 ], [ %4470, %4468 ]
  %4640 = phi float [ %4464, %4461 ], [ %4473, %4468 ]
  %4641 = phi float [ %4463, %4461 ], [ %4471, %4468 ]
  %4642 = phi float [ %4462, %4461 ], [ %4469, %4468 ]
  %4643 = phi float [ %4079, %4461 ], [ %4520, %4468 ]
  %4644 = phi float [ %4080, %4461 ], [ %4521, %4468 ]
  %4645 = phi float [ %4081, %4461 ], [ %4522, %4468 ]
  %4646 = phi float [ %4028, %4461 ], [ %4633, %4468 ]
  %4647 = phi float [ %4029, %4461 ], [ %4634, %4468 ]
  %4648 = phi float [ %4030, %4461 ], [ %4635, %4468 ]
  %4649 = phi float [ %4064, %4461 ], [ %4611, %4468 ]
  %4650 = phi float [ %4065, %4461 ], [ %4612, %4468 ]
  %4651 = phi float [ %4066, %4461 ], [ %4613, %4468 ]
  %4652 = phi float [ %4067, %4461 ], [ %4627, %4468 ]
  %4653 = phi float [ %4040, %4461 ], [ %4630, %4468 ]
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 2
  %4656 = extractvalue %dx.types.CBufRet.f32 %4654, 3
  %4657 = fmul fast float %4655, %80
  %4658 = fmul fast float %4656, %81
  %4659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4659, 0
  %4661 = extractvalue %dx.types.CBufRet.f32 %4659, 1
  %4662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4657, float %4658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4663 = extractvalue %dx.types.ResRet.f32 %4662, 0
  %4664 = fmul fast float %4663, %4661
  %4665 = call float @dx.op.unary.f32(i32 7, float %4664)  ; Saturate(value)
  %4666 = fadd fast float %4665, -1.000000e+00
  %4667 = fmul fast float %4666, %4660
  %4668 = fadd fast float %4667, 1.000000e+00
  %4669 = select i1 %185, float 0.000000e+00, float %4651
  %4670 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %4639, float %4638, float %4637)  ; Dot3(ax,ay,az,bx,by,bz)
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = call float @dx.op.dot3.f32(i32 55, float %4642, float %4641, float %4640, float %4646, float %4647, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4673 = fmul fast float %4672, 2.000000e+00
  %4674 = fmul fast float %4673, %4646
  %4675 = fmul fast float %4673, %4647
  %4676 = fmul fast float %4673, %4648
  %4677 = fsub fast float %4642, %4674
  %4678 = fsub fast float %4641, %4675
  %4679 = fsub fast float %4640, %4676
  %4680 = call float @dx.op.binary.f32(i32 36, float %4653, float %4668)  ; FMin(a,b)
  %4681 = fsub fast float 1.000000e+00, %4680
  %4682 = bitcast float %4681 to i32
  %4683 = ashr i32 %4682, 1
  %4684 = add nsw i32 %4683, 532487669
  %4685 = bitcast i32 %4684 to float
  %4686 = fsub fast float 1.000000e+00, %4652
  %4687 = call float @dx.op.binary.f32(i32 35, float %4686, float 0x3F847AE140000000)  ; FMax(a,b)
  %4688 = fmul fast float %4687, %4687
  %4689 = fmul fast float %4688, %4688
  %4690 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4685, float %4689, float %4690, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = fsub fast float 1.000000e+00, %4653
  %4694 = bitcast float %4693 to i32
  %4695 = sub nsw i32 2129859010, %4694
  %4696 = bitcast i32 %4695 to float
  %4697 = fsub fast float 1.000000e+00, %57
  %4698 = call float @dx.op.dot3.f32(i32 55, float %107, float %108, float %109, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = call float @dx.op.binary.f32(i32 35, float %4698, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4700 = fdiv fast float %4697, %4699
  %4701 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4703 = fmul fast float %4702, 5.000000e-01
  %4704 = fadd fast float %4703, 5.000000e-01
  %4705 = fmul fast float %4704, %57
  %4706 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = fmul fast float %4707, %4700
  %4709 = fadd fast float %4705, %4708
  %4710 = fsub fast float 5.000000e-01, %4703
  %4711 = fmul fast float %4710, %4643
  %4712 = fmul fast float %4710, %4644
  %4713 = fmul fast float %4710, %4645
  %4714 = fadd fast float %4709, %4711
  %4715 = fadd fast float %4709, %4712
  %4716 = fadd fast float %4709, %4713
  %4717 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float %87, float %88, float %89)  ; Dot3(ax,ay,az,bx,by,bz)
  %4718 = call float @dx.op.unary.f32(i32 7, float %4717)  ; Saturate(value)
  %4719 = fmul fast float %4718, 5.000000e-01
  %4720 = fadd fast float %4719, 5.000000e-01
  %4721 = fmul fast float %4720, %57
  %4722 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float %107, float %108, float %109)  ; Dot3(ax,ay,az,bx,by,bz)
  %4723 = call float @dx.op.unary.f32(i32 7, float %4722)  ; Saturate(value)
  %4724 = fmul fast float %4723, %4700
  %4725 = fadd fast float %4721, %4724
  %4726 = fsub fast float 5.000000e-01, %4719
  %4727 = fmul fast float %4726, %4643
  %4728 = fmul fast float %4726, %4644
  %4729 = fmul fast float %4726, %4645
  %4730 = fadd fast float %4725, %4727
  %4731 = fadd fast float %4725, %4728
  %4732 = fadd fast float %4725, %4729
  %4733 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 0
  %4736 = call float @dx.op.binary.f32(i32 36, float %4643, float %4735)  ; FMin(a,b)
  %4737 = fmul fast float %4736, %4681
  %4738 = fsub fast float 1.000000e+00, %4737
  %4739 = bitcast float %4738 to i32
  %4740 = sub nsw i32 2129859010, %4739
  %4741 = bitcast i32 %4740 to float
  %4742 = call float @dx.op.binary.f32(i32 36, float %4644, float %4735)  ; FMin(a,b)
  %4743 = fmul fast float %4742, %4681
  %4744 = fsub fast float 1.000000e+00, %4743
  %4745 = bitcast float %4744 to i32
  %4746 = sub nsw i32 2129859010, %4745
  %4747 = bitcast i32 %4746 to float
  %4748 = call float @dx.op.binary.f32(i32 36, float %4645, float %4735)  ; FMin(a,b)
  %4749 = fmul fast float %4748, %4681
  %4750 = fsub fast float 1.000000e+00, %4749
  %4751 = bitcast float %4750 to i32
  %4752 = sub nsw i32 2129859010, %4751
  %4753 = bitcast i32 %4752 to float
  %4754 = fmul fast float %4680, %58
  %4755 = fmul fast float %4754, %4714
  %4756 = fmul fast float %4755, %4741
  %4757 = fmul fast float %4680, %59
  %4758 = fmul fast float %4757, %4715
  %4759 = fmul fast float %4758, %4747
  %4760 = fmul fast float %4680, %60
  %4761 = fmul fast float %4760, %4716
  %4762 = fmul fast float %4761, %4753
  %4763 = call float @dx.op.binary.f32(i32 36, float %4649, float %4735)  ; FMin(a,b)
  %4764 = fmul fast float %4763, %4681
  %4765 = fsub fast float 1.000000e+00, %4764
  %4766 = bitcast float %4765 to i32
  %4767 = sub nsw i32 2129859010, %4766
  %4768 = bitcast i32 %4767 to float
  %4769 = call float @dx.op.binary.f32(i32 36, float %4650, float %4735)  ; FMin(a,b)
  %4770 = fmul fast float %4769, %4681
  %4771 = fsub fast float 1.000000e+00, %4770
  %4772 = bitcast float %4771 to i32
  %4773 = sub nsw i32 2129859010, %4772
  %4774 = bitcast i32 %4773 to float
  %4775 = call float @dx.op.binary.f32(i32 36, float %4669, float %4735)  ; FMin(a,b)
  %4776 = fmul fast float %4775, %4681
  %4777 = fsub fast float 1.000000e+00, %4776
  %4778 = bitcast float %4777 to i32
  %4779 = sub nsw i32 2129859010, %4778
  %4780 = bitcast i32 %4779 to float
  %4781 = fmul fast float %4754, %4730
  %4782 = fmul fast float %4781, %4768
  %4783 = fmul fast float %4757, %4731
  %4784 = fmul fast float %4783, %4774
  %4785 = fmul fast float %4760, %4732
  %4786 = fmul fast float %4785, %4780
  %4787 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4759, float %4762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4788 = select i1 %185, float 0.000000e+00, float %4756
  %4789 = select i1 %185, float %4787, float %4759
  %4790 = select i1 %185, float 0.000000e+00, float %4762
  %4791 = call float @dx.op.dot3.f32(i32 55, float %4782, float %4784, float %4786, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4792 = select i1 %185, float 0.000000e+00, float %4782
  %4793 = select i1 %185, float %4791, float %4784
  %4794 = select i1 %185, float 0.000000e+00, float %4786
  %4795 = call float @dx.op.unary.f32(i32 6, float %53)  ; FAbs(value)
  %4796 = fmul fast float %4795, %4788
  %4797 = fmul fast float %4795, %4789
  %4798 = fmul fast float %4790, %4795
  %4799 = fmul fast float %4671, 9.843750e-01
  %4800 = fmul fast float %4652, 9.843750e-01
  %4801 = fadd fast float %4799, 7.812500e-03
  %4802 = fadd fast float %4800, 7.812500e-03
  %4803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4801, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 2
  %4805 = extractvalue %dx.types.ResRet.f32 %4803, 3
  %4806 = fmul fast float %4804, %4649
  %4807 = fmul fast float %4804, %4650
  %4808 = fmul fast float %4804, %4669
  %4809 = fadd fast float %4806, %4805
  %4810 = fadd fast float %4807, %4805
  %4811 = fadd fast float %4808, %4805
  %4812 = fcmp fast ogt float %4041, 0.000000e+00
  br i1 %4812, label %4813, label %4839

; <label>:4813                                    ; preds = %4636
  %4814 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4041, float %4671, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4815 = extractvalue %dx.types.ResRet.f32 %4814, 0
  %4816 = extractvalue %dx.types.ResRet.f32 %4814, 1
  %4817 = extractvalue %dx.types.ResRet.f32 %4814, 2
  %4818 = fadd fast float %4815, -5.000000e-01
  %4819 = fadd fast float %4816, -5.000000e-01
  %4820 = fadd fast float %4817, -5.000000e-01
  %4821 = fsub fast float 1.000000e+00, %4649
  %4822 = fsub fast float 1.000000e+00, %4650
  %4823 = fsub fast float 1.000000e+00, %4669
  %4824 = fmul fast float %4649, 4.000000e+00
  %4825 = fmul fast float %4824, %4821
  %4826 = fmul fast float %4825, %4818
  %4827 = fmul fast float %4650, 4.000000e+00
  %4828 = fmul fast float %4827, %4822
  %4829 = fmul fast float %4828, %4819
  %4830 = fmul fast float %4669, 4.000000e+00
  %4831 = fmul fast float %4830, %4823
  %4832 = fmul fast float %4831, %4820
  %4833 = fadd fast float %4826, %4809
  %4834 = fadd fast float %4829, %4810
  %4835 = fadd fast float %4832, %4811
  %4836 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4837 = call float @dx.op.unary.f32(i32 7, float %4834)  ; Saturate(value)
  %4838 = call float @dx.op.unary.f32(i32 7, float %4835)  ; Saturate(value)
  br label %4839

; <label>:4839                                    ; preds = %4813, %4636
  %4840 = phi float [ %4836, %4813 ], [ %4809, %4636 ]
  %4841 = phi float [ %4837, %4813 ], [ %4810, %4636 ]
  %4842 = phi float [ %4838, %4813 ], [ %4811, %4636 ]
  %4843 = call float @dx.op.binary.f32(i32 35, float %4841, float %4842)  ; FMax(a,b)
  %4844 = call float @dx.op.binary.f32(i32 35, float %4840, float %4843)  ; FMax(a,b)
  %4845 = fsub fast float 1.000000e+00, %4844
  %4846 = fmul fast float %4844, %4652
  %4847 = fadd fast float %4846, %4652
  %4848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4849 = extractvalue %dx.types.CBufRet.f32 %4848, 0
  %4850 = extractvalue %dx.types.CBufRet.f32 %4848, 1
  %4851 = extractvalue %dx.types.CBufRet.f32 %4848, 2
  %4852 = extractvalue %dx.types.CBufRet.f32 %4848, 3
  %4853 = fmul fast float %4847, %4849
  %4854 = fadd fast float %4853, %4850
  %4855 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4856 = fmul fast float %4851, %4847
  %4857 = fadd fast float %4856, %4852
  %4858 = call float @dx.op.unary.f32(i32 7, float %4857)  ; Saturate(value)
  %4859 = fsub fast float 1.000000e+00, %4692
  %4860 = fadd fast float %4859, %4858
  %4861 = call float @dx.op.unary.f32(i32 7, float %4860)  ; Saturate(value)
  %4862 = fcmp fast olt float %4861, 1.000000e+00
  br i1 %4862, label %4863, label %5718

; <label>:4863                                    ; preds = %4839
  %4864 = fcmp fast olt float %4855, 1.000000e+00
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4867 = fcmp fast ogt float %4866, 0.000000e+00
  %4868 = or i1 %4864, %4867
  %4869 = or i1 %4864, %4867
  %4870 = xor i1 %4869, true
  %4871 = zext i1 %4870 to i32
  br i1 %4868, label %4872, label %5115

; <label>:4872                                    ; preds = %4863
  %4873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.f32 %4873, 0
  %4875 = extractvalue %dx.types.CBufRet.f32 %4873, 1
  %4876 = extractvalue %dx.types.CBufRet.f32 %4873, 2
  %4877 = extractvalue %dx.types.CBufRet.f32 %4873, 3
  %4878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4879 = extractvalue %dx.types.CBufRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.CBufRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.CBufRet.f32 %4878, 2
  %4882 = extractvalue %dx.types.CBufRet.f32 %4878, 3
  %4883 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4884 = extractvalue %dx.types.CBufRet.f32 %4883, 0
  %4885 = extractvalue %dx.types.CBufRet.f32 %4883, 1
  %4886 = extractvalue %dx.types.CBufRet.f32 %4883, 2
  %4887 = extractvalue %dx.types.CBufRet.f32 %4883, 3
  %4888 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4889 = extractvalue %dx.types.CBufRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.CBufRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.CBufRet.f32 %4888, 2
  %4892 = extractvalue %dx.types.CBufRet.f32 %4888, 3
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4896 = extractvalue %dx.types.CBufRet.f32 %4893, 2
  %4897 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  %4898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4899 = extractvalue %dx.types.CBufRet.f32 %4898, 0
  %4900 = extractvalue %dx.types.CBufRet.f32 %4898, 1
  %4901 = extractvalue %dx.types.CBufRet.f32 %4898, 2
  %4902 = extractvalue %dx.types.CBufRet.f32 %4898, 3
  %4903 = call float @dx.op.dot3.f32(i32 55, float %4899, float %4900, float %4901, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %4904 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = call float @dx.op.unary.f32(i32 6, float %4904)  ; FAbs(value)
  %4906 = fmul fast float %4905, 8.000000e+00
  %4907 = fadd fast float %4906, -6.000000e+00
  %4908 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4909 = fmul fast float %4903, 8.000000e+00
  %4910 = fmul fast float %4909, %4866
  %4911 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4912 = fcmp fast ogt float %4911, 0.000000e+00
  br i1 %4912, label %4913, label %5090, !dx.controlflow.hints !86

; <label>:4913                                    ; preds = %4872
  %4914 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4915 = extractvalue %dx.types.CBufRet.f32 %4865, 2
  %4916 = fsub fast float %4914, %4915
  %4917 = fmul fast float %4916, %4652
  %4918 = fadd fast float %4917, %4915
  %4919 = fmul fast float %198, 2.000000e+00
  %4920 = fmul fast float %199, 2.000000e+00
  %4921 = fadd fast float %4919, -1.000000e+00
  %4922 = fadd fast float %4920, -1.000000e+00
  %4923 = fmul fast float %4918, %4921
  %4924 = fmul fast float %4918, %4922
  %4925 = fadd fast float %4923, %80
  %4926 = fadd fast float %4924, %81
  %4927 = fmul fast float %4925, %4655
  %4928 = fmul fast float %4926, %4656
  %4929 = fadd fast float %4652, 0xBFE3333340000000
  %4930 = fmul fast float %4929, 0x4004000020000000
  %4931 = fsub fast float 1.000000e+00, %4930
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = fmul fast float %4932, 3.000000e+00
  %4934 = fadd fast float %4933, %198
  %4935 = call float @dx.op.unary.f32(i32 27, float %4934)  ; Round_ni(value)
  %4936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4927, float %4928, float %4935, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 0
  %4938 = fcmp fast une float %4937, 0xFFF0000000000000
  %4939 = fcmp fast une float %4937, 0x7FF0000000000000
  %4940 = and i1 %4938, %4939
  %4941 = fcmp fast olt float %4937, 0.000000e+00
  %4942 = call float @dx.op.unary.f32(i32 6, float %4937)  ; FAbs(value)
  %4943 = fsub fast float 1.000000e+00, %4942
  %4944 = select i1 %4940, float 1.000000e+00, float 0.000000e+00
  %4945 = fmul fast float %4944, %4911
  %4946 = fcmp fast ogt float %4945, 0.000000e+00
  br i1 %4946, label %4947, label %5090, !dx.controlflow.hints !87

; <label>:4947                                    ; preds = %4913
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 0
  %4950 = extractvalue %dx.types.CBufRet.f32 %4948, 1
  %4951 = extractvalue %dx.types.CBufRet.f32 %4948, 2
  %4952 = select i1 %4941, float 0.000000e+00, float %4949
  %4953 = select i1 %4941, float 0.000000e+00, float %4950
  %4954 = select i1 %4941, float 0.000000e+00, float %4951
  %4955 = select i1 %4941, float %4874, float %4889
  %4956 = select i1 %4941, float %4879, float %4894
  %4957 = select i1 %4941, float %4884, float %4899
  %4958 = select i1 %4941, float %4875, float %4890
  %4959 = select i1 %4941, float %4880, float %4895
  %4960 = select i1 %4941, float %4885, float %4900
  %4961 = select i1 %4941, float %4876, float %4891
  %4962 = select i1 %4941, float %4881, float %4896
  %4963 = select i1 %4941, float %4886, float %4901
  %4964 = select i1 %4941, float %4877, float %4892
  %4965 = select i1 %4941, float %4882, float %4897
  %4966 = select i1 %4941, float %4887, float %4902
  %4967 = fadd fast float %4952, %143
  %4968 = fadd fast float %4953, %144
  %4969 = fadd fast float %4954, %145
  %4970 = fmul fast float %4967, %4955
  %4971 = call float @dx.op.tertiary.f32(i32 46, float %4968, float %4958, float %4970)  ; FMad(a,b,c)
  %4972 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4961, float %4971)  ; FMad(a,b,c)
  %4973 = fadd fast float %4972, %4964
  %4974 = fmul fast float %4967, %4956
  %4975 = call float @dx.op.tertiary.f32(i32 46, float %4968, float %4959, float %4974)  ; FMad(a,b,c)
  %4976 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4962, float %4975)  ; FMad(a,b,c)
  %4977 = fadd fast float %4976, %4965
  %4978 = fmul fast float %4967, %4957
  %4979 = call float @dx.op.tertiary.f32(i32 46, float %4968, float %4960, float %4978)  ; FMad(a,b,c)
  %4980 = call float @dx.op.tertiary.f32(i32 46, float %4969, float %4963, float %4979)  ; FMad(a,b,c)
  %4981 = fadd fast float %4980, %4966
  %4982 = fdiv fast float 1.000000e+00, %4981
  %4983 = fmul fast float %4982, %4973
  %4984 = fmul fast float %4982, %4977
  %4985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4986 = extractvalue %dx.types.CBufRet.f32 %4985, 0
  %4987 = extractvalue %dx.types.CBufRet.f32 %4985, 1
  %4988 = fmul fast float %4983, %4986
  %4989 = fmul fast float %4984, %4987
  %4990 = extractvalue %dx.types.CBufRet.f32 %4985, 2
  %4991 = extractvalue %dx.types.CBufRet.f32 %4985, 3
  %4992 = fadd fast float %4988, %4990
  %4993 = fadd fast float %4989, %4991
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 3
  %4996 = fmul fast float %4995, %4677
  %4997 = fmul fast float %4995, %4678
  %4998 = fmul fast float %4995, %4679
  %4999 = fadd fast float %4996, %4967
  %5000 = fadd fast float %4997, %4968
  %5001 = fadd fast float %4998, %4969
  %5002 = fmul fast float %4999, %4955
  %5003 = call float @dx.op.tertiary.f32(i32 46, float %5000, float %4958, float %5002)  ; FMad(a,b,c)
  %5004 = call float @dx.op.tertiary.f32(i32 46, float %5001, float %4961, float %5003)  ; FMad(a,b,c)
  %5005 = fadd fast float %5004, %4964
  %5006 = fmul fast float %4999, %4956
  %5007 = call float @dx.op.tertiary.f32(i32 46, float %5000, float %4959, float %5006)  ; FMad(a,b,c)
  %5008 = call float @dx.op.tertiary.f32(i32 46, float %5001, float %4962, float %5007)  ; FMad(a,b,c)
  %5009 = fadd fast float %5008, %4965
  %5010 = fmul fast float %4999, %4957
  %5011 = call float @dx.op.tertiary.f32(i32 46, float %5000, float %4960, float %5010)  ; FMad(a,b,c)
  %5012 = call float @dx.op.tertiary.f32(i32 46, float %5001, float %4963, float %5011)  ; FMad(a,b,c)
  %5013 = fadd fast float %5012, %4966
  %5014 = fdiv fast float 1.000000e+00, %5013
  %5015 = fmul fast float %5014, %5005
  %5016 = fmul fast float %5014, %5009
  %5017 = fmul fast float %4992, 2.000000e+00
  %5018 = fadd fast float %5017, -1.000000e+00
  %5019 = call float @dx.op.unary.f32(i32 6, float %5018)  ; FAbs(value)
  %5020 = fmul fast float %5019, 5.000000e+00
  %5021 = fadd fast float %5020, -4.000000e+00
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = fmul fast float %5022, %4908
  %5024 = fsub fast float %4983, %5015
  %5025 = fmul fast float %4986, %5024
  %5026 = fmul fast float %5023, %5025
  %5027 = fsub fast float %5015, %4983
  %5028 = fmul fast float %4986, %5027
  %5029 = fadd fast float %5028, %5026
  %5030 = fsub fast float %5016, %4984
  %5031 = fmul fast float %4987, %5030
  %5032 = fmul fast float %5029, %4943
  %5033 = fmul fast float %5031, %4943
  %5034 = fadd fast float %5032, %4992
  %5035 = fadd fast float %5033, %4993
  %5036 = fsub fast float %5014, %4982
  %5037 = fmul fast float %5036, %4943
  %5038 = fadd fast float %5037, %4982
  %5039 = fdiv fast float 1.000000e+00, %5038
  %5040 = fadd fast float %4652, -1.000000e+00
  %5041 = fsub fast float %5039, %4981
  %5042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5043 = extractvalue %dx.types.CBufRet.f32 %5042, 2
  %5044 = fmul fast float %5043, %5039
  %5045 = fdiv fast float 1.600000e+02, %5044
  %5046 = fmul fast float %5040, %5040
  %5047 = fmul fast float %5046, 0xBFB5B17960000000
  %5048 = fmul fast float %5047, %5041
  %5049 = fmul fast float %5048, %5045
  %5050 = call float @dx.op.unary.f32(i32 21, float %5049)  ; Exp(value)
  %5051 = fmul fast float %5050, 0x3FF04B2960000000
  %5052 = fsub fast float 0x3FF04B2960000000, %5051
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fmul fast float %5053, 4.000000e+00
  %5055 = fadd fast float %198, -5.000000e-01
  %5056 = fadd fast float %199, -5.000000e-01
  %5057 = fmul fast float %5053, 0x3FBEB851E0000000
  %5058 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5059 = fmul fast float %5058, %5055
  %5060 = fmul fast float %5058, %5056
  %5061 = fadd fast float %5034, %5059
  %5062 = fadd fast float %5035, %5060
  %5063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5061, float %5062, float undef, float undef, i32 0, i32 0, i32 undef, float %5054)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = extractvalue %dx.types.ResRet.f32 %5063, 1
  %5066 = extractvalue %dx.types.ResRet.f32 %5063, 2
  %5067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5068 = extractvalue %dx.types.CBufRet.f32 %5067, 2
  %5069 = fmul fast float %5068, %5064
  %5070 = fmul fast float %5068, %5065
  %5071 = fmul fast float %5068, %5066
  %5072 = select i1 %185, float 0.000000e+00, float %5070
  %5073 = select i1 %185, float 0.000000e+00, float %5071
  %5074 = fmul fast float %5061, 2.000000e+00
  %5075 = fmul fast float %5062, 2.000000e+00
  %5076 = fadd fast float %5074, -1.000000e+00
  %5077 = fadd fast float %5075, -1.000000e+00
  %5078 = fmul fast float %5076, %5076
  %5079 = fsub fast float 1.000000e+00, %5078
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fsub fast float 1.000000e+00, %5080
  %5082 = fmul fast float %5081, %4908
  %5083 = fadd fast float %5082, %5080
  %5084 = fmul fast float %5077, %5077
  %5085 = fsub fast float 1.000000e+00, %5084
  %5086 = call float @dx.op.unary.f32(i32 7, float %5085)  ; Saturate(value)
  %5087 = fmul fast float %5083, %5086
  %5088 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5089 = fmul fast float %5088, %4945
  br label %5090

; <label>:5090                                    ; preds = %4947, %4913, %4872
  %5091 = phi float [ %5069, %4947 ], [ 0.000000e+00, %4913 ], [ 0.000000e+00, %4872 ]
  %5092 = phi float [ %5072, %4947 ], [ 0.000000e+00, %4913 ], [ 0.000000e+00, %4872 ]
  %5093 = phi float [ %5073, %4947 ], [ 0.000000e+00, %4913 ], [ 0.000000e+00, %4872 ]
  %5094 = phi float [ %5089, %4947 ], [ 0.000000e+00, %4913 ], [ 0.000000e+00, %4872 ]
  %5095 = fcmp fast olt float %5094, 1.000000e+00
  %5096 = or i1 %5095, %4870
  %5097 = zext i1 %5096 to i32
  %5098 = fmul fast float %5094, %4855
  %5099 = fsub fast float %5094, %5098
  %5100 = fsub fast float 1.000000e+00, %4861
  %5101 = fmul fast float %5099, %5100
  %5102 = fadd fast float %5101, %4861
  %5103 = fsub fast float %5102, %5099
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = fmul fast float %5104, %4792
  %5106 = fmul fast float %5104, %4793
  %5107 = fmul fast float %5104, %4794
  %5108 = fsub fast float -0.000000e+00, %5102
  %5109 = fmul fast float %5099, %5091
  %5110 = fmul fast float %5099, %5092
  %5111 = fmul fast float %5099, %5093
  %5112 = fadd fast float %5109, %5105
  %5113 = fadd fast float %5110, %5106
  %5114 = fadd fast float %5111, %5107
  br label %5115

; <label>:5115                                    ; preds = %5090, %4863
  %5116 = phi float [ %4861, %4863 ], [ %5108, %5090 ]
  %5117 = phi float [ %4792, %4863 ], [ %5112, %5090 ]
  %5118 = phi float [ %4793, %4863 ], [ %5113, %5090 ]
  %5119 = phi float [ %4794, %4863 ], [ %5114, %5090 ]
  %5120 = phi i32 [ %4871, %4863 ], [ %5097, %5090 ]
  %5121 = icmp eq i32 %5120, 0
  br i1 %5121, label %5718, label %5122

; <label>:5122                                    ; preds = %5115
  %5123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5124 = extractvalue %dx.types.CBufRet.f32 %5123, 2
  %5125 = extractvalue %dx.types.CBufRet.f32 %5123, 3
  %5126 = fmul fast float %5124, %80
  %5127 = fmul fast float %5125, %81
  %5128 = fptoui float %5126 to i32
  %5129 = fptoui float %5127 to i32
  %5130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5131 = extractvalue %dx.types.CBufRet.f32 %5130, 0
  %5132 = extractvalue %dx.types.CBufRet.f32 %5130, 2
  %5133 = extractvalue %dx.types.CBufRet.f32 %5130, 3
  %5134 = fadd fast float %75, -4.000000e+00
  %5135 = call float @dx.op.binary.f32(i32 35, float %5134, float 0.000000e+00)  ; FMax(a,b)
  %5136 = fadd fast float %5135, %5131
  %5137 = fmul fast float %5136, %5132
  %5138 = call float @dx.op.unary.f32(i32 23, float %5137)  ; Log(value)
  %5139 = fmul fast float %5138, %5133
  %5140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5141 = extractvalue %dx.types.CBufRet.f32 %5140, 2
  %5142 = fmul fast float %5139, %5141
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.i32 %5144, 1
  %5146 = add i32 %5145, -1
  %5147 = uitofp i32 %5145 to float
  %5148 = fmul fast float %5147, %5143
  %5149 = fptoui float %5148 to i32
  %5150 = call i32 @dx.op.binary.i32(i32 40, i32 %5149, i32 %5146)  ; UMin(a,b)
  %5151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.i32 %5151, 2
  %5153 = extractvalue %dx.types.CBufRet.i32 %5151, 3
  %5154 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5129, i32 %5152, i32 %5128)  ; UMad(a,b,c)
  %5155 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5150, i32 %5153, i32 %5154)  ; UMad(a,b,c)
  %5156 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %5157 = fptoui float %5156 to i32
  %5158 = lshr i32 %5157, 5
  %5159 = call i32 @dx.op.binary.i32(i32 40, i32 %5158, i32 8191)  ; UMin(a,b)
  %5160 = fcmp fast ogt float %4451, 0.000000e+00
  %5161 = fcmp fast ogt float %4679, 0.000000e+00
  %5162 = and i1 %5161, %5160
  br i1 %5162, label %5163, label %5192

; <label>:5163                                    ; preds = %5122
  %5164 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %4679, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5165 = call float @dx.op.binary.f32(i32 35, float %5164, float -1.000000e+00)  ; FMax(a,b)
  %5166 = call float @dx.op.binary.f32(i32 36, float %5165, float 1.000000e+00)  ; FMin(a,b)
  %5167 = fmul fast float %5166, %5166
  %5168 = fsub fast float 1.000000e+00, %5167
  %5169 = fmul fast float %5168, 0x3FFC6E2300000000
  %5170 = fsub fast float 1.000000e+00, %5169
  %5171 = fcmp fast ogt float %5170, 0.000000e+00
  %5172 = call float @dx.op.unary.f32(i32 24, float %5170)  ; Sqrt(value)
  %5173 = fsub fast float 1.000000e+00, %5172
  %5174 = call float @dx.op.unary.f32(i32 23, float %5173)  ; Log(value)
  %5175 = fmul fast float %5174, 5.000000e+00
  %5176 = call float @dx.op.unary.f32(i32 21, float %5175)  ; Exp(value)
  %5177 = fmul fast float %5176, 0x3FEF591A60000000
  %5178 = fadd fast float %5177, 0x3F94DCB540000000
  %5179 = select i1 %5171, float %5178, float 1.000000e+00
  %5180 = fcmp fast oge float %5179, 1.000000e+00
  %5181 = fmul fast float %5164, 2.000000e+00
  %5182 = fadd fast float %5181, %4679
  %5183 = select i1 %5180, float %5182, float %4679
  %5184 = fsub fast float %5183, %4679
  %5185 = fmul fast float %5184, %4451
  %5186 = fadd fast float %5185, %4679
  %5187 = call float @dx.op.dot3.f32(i32 55, float %4677, float %4678, float %5186, float %4677, float %4678, float %5186)  ; Dot3(ax,ay,az,bx,by,bz)
  %5188 = call float @dx.op.unary.f32(i32 25, float %5187)  ; Rsqrt(value)
  %5189 = fmul fast float %5188, %4677
  %5190 = fmul fast float %5188, %4678
  %5191 = fmul fast float %5186, %5188
  br label %5192

; <label>:5192                                    ; preds = %5163, %5122
  %5193 = phi float [ %5189, %5163 ], [ %4677, %5122 ]
  %5194 = phi float [ %5190, %5163 ], [ %4678, %5122 ]
  %5195 = phi float [ %5191, %5163 ], [ %4679, %5122 ]
  %5196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.i32 %5196, 2
  %5198 = add nsw i32 %5197, -1
  %5199 = call i32 @dx.op.binary.i32(i32 37, i32 %5198, i32 0)  ; IMax(a,b)
  %5200 = shl i32 %5159, 2
  %5201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5200, i32 undef)  ; BufferLoad(srv,index,wot)
  %5202 = extractvalue %dx.types.ResRet.i32 %5201, 0
  %5203 = lshr i32 %5202, 16
  %5204 = and i32 %5202, 65535
  %5205 = lshr i32 %5202, 21
  %5206 = lshr i32 %5204, 5
  %5207 = call i32 @dx.op.binary.i32(i32 40, i32 %5206, i32 %5199)  ; UMin(a,b)
  %5208 = icmp ugt i32 %5205, %5207
  br i1 %5208, label %5590, label %5209

; <label>:5209                                    ; preds = %5192
  br label %5210

; <label>:5210                                    ; preds = %5579, %5209
  %5211 = phi float [ %5580, %5579 ], [ 0.000000e+00, %5209 ]
  %5212 = phi float [ %5581, %5579 ], [ 0.000000e+00, %5209 ]
  %5213 = phi float [ %5582, %5579 ], [ 0.000000e+00, %5209 ]
  %5214 = phi float [ %5583, %5579 ], [ 1.000000e+00, %5209 ]
  %5215 = phi i32 [ %5587, %5579 ], [ %5205, %5209 ]
  %5216 = phi float [ %5584, %5579 ], [ 0.000000e+00, %5209 ]
  %5217 = phi float [ %5585, %5579 ], [ 0.000000e+00, %5209 ]
  %5218 = phi float [ %5586, %5579 ], [ 0.000000e+00, %5209 ]
  %5219 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5220 = extractvalue %dx.types.CBufRet.i32 %5219, 2
  %5221 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5155, i32 %5220, i32 %5215)  ; UMad(a,b,c)
  %5222 = shl i32 %5221, 2
  %5223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5222, i32 undef)  ; BufferLoad(srv,index,wot)
  %5224 = extractvalue %dx.types.ResRet.i32 %5223, 0
  %5225 = shl i32 %5215, 5
  %5226 = sub nsw i32 %5203, %5225
  %5227 = call i32 @dx.op.binary.i32(i32 37, i32 %5226, i32 0)  ; IMax(a,b)
  %5228 = call i32 @dx.op.binary.i32(i32 38, i32 %5227, i32 31)  ; IMin(a,b)
  %5229 = sub nsw i32 1, %5203
  %5230 = add nsw i32 %5229, %5204
  %5231 = call i32 @dx.op.binary.i32(i32 37, i32 %5230, i32 0)  ; IMax(a,b)
  %5232 = call i32 @dx.op.binary.i32(i32 38, i32 %5231, i32 32)  ; IMin(a,b)
  %5233 = and i32 %5232, 31
  %5234 = shl i32 -1, %5233
  %5235 = xor i32 %5234, -1
  %5236 = and i32 %5228, 31
  %5237 = shl i32 %5235, %5236
  %5238 = icmp eq i32 %5232, 32
  %5239 = select i1 %5238, i32 -1, i32 %5237
  %5240 = and i32 %5239, %5224
  %5241 = icmp eq i32 %5240, 0
  br i1 %5241, label %5579, label %5242

; <label>:5242                                    ; preds = %5210
  br label %5243

; <label>:5243                                    ; preds = %5353, %5242
  %5244 = phi float [ %5354, %5353 ], [ %5211, %5242 ]
  %5245 = phi float [ %5355, %5353 ], [ %5212, %5242 ]
  %5246 = phi float [ %5356, %5353 ], [ %5213, %5242 ]
  %5247 = phi float [ %5357, %5353 ], [ %5214, %5242 ]
  %5248 = phi i32 [ %5256, %5353 ], [ %5240, %5242 ]
  %5249 = phi float [ %5358, %5353 ], [ %5216, %5242 ]
  %5250 = phi float [ %5359, %5353 ], [ %5217, %5242 ]
  %5251 = phi float [ %5360, %5353 ], [ %5218, %5242 ]
  %5252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5248)  ; FirstbitLo(value)
  %5253 = add i32 %5252, %5225
  %5254 = and i32 %5252, 31
  %5255 = shl i32 1, %5254
  %5256 = xor i32 %5255, %5248
  %5257 = mul i32 %5253, 72
  %5258 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5257, i32 undef)  ; BufferLoad(srv,index,wot)
  %5259 = extractvalue %dx.types.ResRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.ResRet.f32 %5258, 1
  %5261 = extractvalue %dx.types.ResRet.f32 %5258, 2
  %5262 = add i32 %5257, 12
  %5263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.i32 %5263, 0
  %5265 = add i32 %5257, 16
  %5266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5265, i32 undef)  ; BufferLoad(srv,index,wot)
  %5267 = extractvalue %dx.types.ResRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.ResRet.f32 %5266, 1
  %5269 = extractvalue %dx.types.ResRet.f32 %5266, 2
  %5270 = add i32 %5257, 28
  %5271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5270, i32 undef)  ; BufferLoad(srv,index,wot)
  %5272 = extractvalue %dx.types.ResRet.f32 %5271, 0
  %5273 = add i32 %5257, 32
  %5274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 1
  %5277 = extractvalue %dx.types.ResRet.f32 %5274, 2
  %5278 = extractvalue %dx.types.ResRet.f32 %5274, 3
  %5279 = add i32 %5257, 48
  %5280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5279, i32 undef)  ; BufferLoad(srv,index,wot)
  %5281 = extractvalue %dx.types.ResRet.f32 %5280, 0
  %5282 = extractvalue %dx.types.ResRet.f32 %5280, 1
  %5283 = add i32 %5257, 56
  %5284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5283, i32 undef)  ; BufferLoad(srv,index,wot)
  %5285 = extractvalue %dx.types.ResRet.f32 %5284, 0
  %5286 = extractvalue %dx.types.ResRet.f32 %5284, 1
  %5287 = add i32 %5257, 64
  %5288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5287, i32 undef)  ; BufferLoad(srv,index,wot)
  %5289 = extractvalue %dx.types.ResRet.f32 %5288, 0
  %5290 = extractvalue %dx.types.ResRet.f32 %5288, 1
  %5291 = mul i32 %5253, 60
  %5292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5291, i32 undef)  ; BufferLoad(srv,index,wot)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5296 = add i32 %5291, 12
  %5297 = add i32 %5291, 48
  %5298 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5297, i32 undef)  ; BufferLoad(srv,index,wot)
  %5299 = extractvalue %dx.types.ResRet.f32 %5298, 0
  %5300 = extractvalue %dx.types.ResRet.f32 %5298, 1
  %5301 = extractvalue %dx.types.ResRet.f32 %5298, 2
  %5302 = and i32 %5264, 32767
  %5303 = bitcast float %5259 to i32
  %5304 = icmp eq i32 %5303, -1
  %5305 = bitcast float %5260 to i32
  %5306 = and i32 %5264, 32768
  %5307 = icmp ne i32 %5306, 0
  %5308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5309 = extractvalue %dx.types.CBufRet.f32 %5308, 0
  %5310 = extractvalue %dx.types.CBufRet.f32 %5308, 1
  %5311 = extractvalue %dx.types.CBufRet.f32 %5308, 2
  %5312 = fsub fast float %5293, %5309
  %5313 = fsub fast float %5294, %5310
  %5314 = fsub fast float %5295, %5311
  %5315 = fsub fast float %143, %5312
  %5316 = fsub fast float %144, %5313
  %5317 = fsub fast float %145, %5314
  %5318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5296, i32 undef)  ; BufferLoad(srv,index,wot)
  %5319 = extractvalue %dx.types.ResRet.f32 %5318, 0
  %5320 = extractvalue %dx.types.ResRet.f32 %5318, 1
  %5321 = extractvalue %dx.types.ResRet.f32 %5318, 2
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5319, float %5320, float %5321)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = add i32 %5291, 24
  %5324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5325, float %5326, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = add i32 %5291, 36
  %5330 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5329, i32 undef)  ; BufferLoad(srv,index,wot)
  %5331 = extractvalue %dx.types.ResRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.ResRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.ResRet.f32 %5330, 2
  %5334 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5331, float %5332, float %5333)  ; Dot3(ax,ay,az,bx,by,bz)
  %5335 = call float @dx.op.unary.f32(i32 6, float %5322)  ; FAbs(value)
  %5336 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5337 = call float @dx.op.unary.f32(i32 6, float %5334)  ; FAbs(value)
  %5338 = fsub fast float %5299, %5335
  %5339 = fsub fast float %5300, %5336
  %5340 = fsub fast float %5301, %5337
  %5341 = fmul fast float %5338, %5267
  %5342 = fmul fast float %5339, %5268
  %5343 = fmul fast float %5340, %5269
  %5344 = call float @dx.op.binary.f32(i32 36, float %5342, float %5343)  ; FMin(a,b)
  %5345 = call float @dx.op.binary.f32(i32 36, float %5341, float %5344)  ; FMin(a,b)
  %5346 = call float @dx.op.unary.f32(i32 7, float %5345)  ; Saturate(value)
  %5347 = call float @dx.op.binary.f32(i32 36, float %5247, float %5346)  ; FMin(a,b)
  %5348 = uitofp i1 %5307 to float
  %5349 = fadd fast float %4451, 1.000000e+00
  %5350 = fsub fast float %5349, %5348
  %5351 = fmul fast float %5347, %5350
  %5352 = fcmp fast ogt float %5351, 0.000000e+00
  br i1 %5352, label %5362, label %5353

; <label>:5353                                    ; preds = %5504, %5243
  %5354 = phi float [ %5568, %5504 ], [ %5244, %5243 ]
  %5355 = phi float [ %5569, %5504 ], [ %5245, %5243 ]
  %5356 = phi float [ %5570, %5504 ], [ %5246, %5243 ]
  %5357 = phi float [ %5577, %5504 ], [ %5247, %5243 ]
  %5358 = phi float [ %5574, %5504 ], [ %5249, %5243 ]
  %5359 = phi float [ %5575, %5504 ], [ %5250, %5243 ]
  %5360 = phi float [ %5576, %5504 ], [ %5251, %5243 ]
  %5361 = icmp eq i32 %5248, %5255
  br i1 %5361, label %5578, label %5243

; <label>:5362                                    ; preds = %5243
  br i1 %5304, label %5420, label %5363

; <label>:5363                                    ; preds = %5362
  %5364 = fsub fast float -0.000000e+00, %5319
  %5365 = fsub fast float -0.000000e+00, %5320
  %5366 = fsub fast float -0.000000e+00, %5321
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5193, float %5194, float %5195, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = fsub fast float -0.000000e+00, %5367
  %5369 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5370 = fadd fast float %5369, %5282
  %5371 = fadd fast float %5281, %5369
  %5372 = fsub fast float -0.000000e+00, %5371
  %5373 = fcmp ogt float %5367, -0.000000e+00
  %5374 = select i1 %5373, float %5372, float %5370
  %5375 = call float @dx.op.unary.f32(i32 6, float %5368)  ; FAbs(value)
  %5376 = fdiv fast float 1.000000e+00, %5375
  %5377 = fmul fast float %5374, %5376
  %5378 = call float @dx.op.binary.f32(i32 35, float %5377, float 0.000000e+00)  ; FMax(a,b)
  %5379 = fsub fast float -0.000000e+00, %5325
  %5380 = fsub fast float -0.000000e+00, %5326
  %5381 = fsub fast float -0.000000e+00, %5327
  %5382 = call float @dx.op.dot3.f32(i32 55, float %5193, float %5194, float %5195, float %5379, float %5380, float %5381)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = fsub fast float -0.000000e+00, %5382
  %5384 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5379, float %5380, float %5381)  ; Dot3(ax,ay,az,bx,by,bz)
  %5385 = fadd fast float %5384, %5286
  %5386 = fadd fast float %5285, %5384
  %5387 = fsub fast float -0.000000e+00, %5386
  %5388 = fcmp ogt float %5382, -0.000000e+00
  %5389 = select i1 %5388, float %5387, float %5385
  %5390 = call float @dx.op.unary.f32(i32 6, float %5383)  ; FAbs(value)
  %5391 = fdiv fast float 1.000000e+00, %5390
  %5392 = fmul fast float %5389, %5391
  %5393 = call float @dx.op.binary.f32(i32 35, float %5392, float 0.000000e+00)  ; FMax(a,b)
  %5394 = fsub fast float -0.000000e+00, %5331
  %5395 = fsub fast float -0.000000e+00, %5332
  %5396 = fsub fast float -0.000000e+00, %5333
  %5397 = call float @dx.op.dot3.f32(i32 55, float %5193, float %5194, float %5195, float %5394, float %5395, float %5396)  ; Dot3(ax,ay,az,bx,by,bz)
  %5398 = fsub fast float -0.000000e+00, %5397
  %5399 = call float @dx.op.dot3.f32(i32 55, float %5315, float %5316, float %5317, float %5394, float %5395, float %5396)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = fadd fast float %5399, %5290
  %5401 = fadd fast float %5289, %5399
  %5402 = fsub fast float -0.000000e+00, %5401
  %5403 = fcmp ogt float %5397, -0.000000e+00
  %5404 = select i1 %5403, float %5402, float %5400
  %5405 = call float @dx.op.unary.f32(i32 6, float %5398)  ; FAbs(value)
  %5406 = fdiv fast float 1.000000e+00, %5405
  %5407 = fmul fast float %5404, %5406
  %5408 = call float @dx.op.binary.f32(i32 35, float %5407, float 0.000000e+00)  ; FMax(a,b)
  %5409 = call float @dx.op.binary.f32(i32 36, float %5393, float %5408)  ; FMin(a,b)
  %5410 = call float @dx.op.binary.f32(i32 36, float %5378, float %5409)  ; FMin(a,b)
  %5411 = fmul fast float %5410, %5193
  %5412 = fmul fast float %5410, %5194
  %5413 = fmul fast float %5410, %5195
  %5414 = fadd fast float %5411, %143
  %5415 = fadd fast float %5412, %144
  %5416 = fadd fast float %5413, %145
  %5417 = fsub fast float %5414, %5259
  %5418 = fsub fast float %5415, %5260
  %5419 = fsub fast float %5416, %5261
  br label %5427

; <label>:5420                                    ; preds = %5362
  %5421 = fmul fast float %5193, 8.096000e+03
  %5422 = fmul fast float %5194, 8.096000e+03
  %5423 = fmul fast float %5195, 8.096000e+03
  %5424 = fadd fast float %5421, %143
  %5425 = fadd fast float %5422, %144
  %5426 = fadd fast float %5423, %145
  br label %5427

; <label>:5427                                    ; preds = %5420, %5363
  %5428 = phi float [ %5193, %5420 ], [ %5417, %5363 ]
  %5429 = phi float [ %5194, %5420 ], [ %5418, %5363 ]
  %5430 = phi float [ %5195, %5420 ], [ %5419, %5363 ]
  %5431 = phi float [ %5424, %5420 ], [ %5414, %5363 ]
  %5432 = phi float [ %5425, %5420 ], [ %5415, %5363 ]
  %5433 = phi float [ %5426, %5420 ], [ %5416, %5363 ]
  %5434 = fcmp fast olt float %5278, 1.000000e+00
  br i1 %5434, label %5435, label %5466, !dx.controlflow.hints !88

; <label>:5435                                    ; preds = %5427
  %5436 = fmul fast float %5430, %5276
  %5437 = fmul fast float %5429, %5277
  %5438 = fsub fast float %5436, %5437
  %5439 = fmul fast float %5428, %5277
  %5440 = fmul fast float %5430, %5275
  %5441 = fsub fast float %5439, %5440
  %5442 = fmul fast float %5429, %5275
  %5443 = fmul fast float %5428, %5276
  %5444 = fsub fast float %5442, %5443
  %5445 = fmul fast float %5438, 2.000000e+00
  %5446 = fmul fast float %5441, 2.000000e+00
  %5447 = fmul fast float %5444, 2.000000e+00
  %5448 = fmul fast float %5445, %5278
  %5449 = fmul fast float %5446, %5278
  %5450 = fmul fast float %5447, %5278
  %5451 = fmul fast float %5447, %5276
  %5452 = fmul fast float %5446, %5277
  %5453 = fmul fast float %5445, %5277
  %5454 = fmul fast float %5447, %5275
  %5455 = fmul fast float %5446, %5275
  %5456 = fmul fast float %5445, %5276
  %5457 = fadd fast float %5451, %5428
  %5458 = fadd fast float %5457, %5448
  %5459 = fsub fast float %5458, %5452
  %5460 = fsub fast float %5429, %5454
  %5461 = fadd fast float %5460, %5449
  %5462 = fadd fast float %5461, %5453
  %5463 = fadd fast float %5450, %5430
  %5464 = fsub fast float %5463, %5456
  %5465 = fadd fast float %5464, %5455
  br label %5466

; <label>:5466                                    ; preds = %5435, %5427
  %5467 = phi float [ %5459, %5435 ], [ %5428, %5427 ]
  %5468 = phi float [ %5462, %5435 ], [ %5429, %5427 ]
  %5469 = phi float [ %5465, %5435 ], [ %5430, %5427 ]
  br i1 %5304, label %5501, label %5470

; <label>:5470                                    ; preds = %5466
  %5471 = fmul fast float %4652, 0x400187C840000000
  %5472 = fadd fast float %5471, 0xC00EFC2120000000
  %5473 = fmul fast float %5472, %4652
  %5474 = fadd fast float %5473, 0x3FE5D16340000000
  %5475 = fmul fast float %5474, %4652
  %5476 = fadd fast float %5475, 1.000000e+00
  %5477 = call float @dx.op.unary.f32(i32 7, float %5476)  ; Saturate(value)
  %5478 = fsub fast float %5431, %143
  %5479 = fsub fast float %5432, %144
  %5480 = fsub fast float %5433, %145
  %5481 = fsub fast float %5431, %5259
  %5482 = fsub fast float %5432, %5260
  %5483 = fsub fast float %5433, %5261
  %5484 = call float @dx.op.dot3.f32(i32 55, float %5478, float %5479, float %5480, float %5478, float %5479, float %5480)  ; Dot3(ax,ay,az,bx,by,bz)
  %5485 = call float @dx.op.dot3.f32(i32 55, float %5481, float %5482, float %5483, float %5481, float %5482, float %5483)  ; Dot3(ax,ay,az,bx,by,bz)
  %5486 = fadd fast float %5485, 0x3EE4F8B580000000
  %5487 = fdiv fast float %5484, %5486
  %5488 = bitcast float %5487 to i32
  %5489 = ashr i32 %5488, 1
  %5490 = add nsw i32 %5489, 532487669
  %5491 = bitcast i32 %5490 to float
  %5492 = fmul fast float %5491, %5477
  %5493 = call float @dx.op.unary.f32(i32 7, float %5492)  ; Saturate(value)
  %5494 = fmul fast float %5493, 0x4009981AE0000000
  %5495 = fsub fast float 0x40111BBD80000000, %5494
  %5496 = fmul fast float %5495, %5493
  %5497 = fadd fast float %5496, 0xC0009F6020000000
  %5498 = fmul fast float %5497, %5493
  %5499 = fadd fast float %5498, 1.000000e+00
  %5500 = call float @dx.op.unary.f32(i32 7, float %5499)  ; Saturate(value)
  br label %5504

; <label>:5501                                    ; preds = %5466
  %5502 = icmp ne i32 %5305, -1
  %5503 = zext i1 %5502 to i32
  br label %5504

; <label>:5504                                    ; preds = %5501, %5470
  %5505 = phi float [ %4652, %5501 ], [ %5500, %5470 ]
  %5506 = phi i32 [ %5503, %5501 ], [ 0, %5470 ]
  %5507 = fmul float %5505, 5.000000e+00
  %5508 = fsub float 5.000000e+00, %5507
  %5509 = icmp ne i32 %5506, 0
  %5510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5511 = extractvalue %dx.types.CBufRet.f32 %5510, 3
  %5512 = fadd fast float %5511, %5508
  %5513 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5512)  ; FMax(a,b)
  %5514 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %5515 = call float @dx.op.unary.f32(i32 6, float %5468)  ; FAbs(value)
  %5516 = fadd fast float %5515, %5514
  %5517 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5518 = fadd fast float %5516, %5517
  %5519 = fcmp fast oeq float %5518, 0.000000e+00
  %5520 = fdiv fast float 1.000000e+00, %5518
  %5521 = select i1 %5519, float 1.000000e+00, float %5520
  %5522 = fmul fast float %5521, %5467
  %5523 = fmul fast float %5521, %5468
  %5524 = call float @dx.op.unary.f32(i32 6, float %5523)  ; FAbs(value)
  %5525 = call float @dx.op.unary.f32(i32 6, float %5522)  ; FAbs(value)
  %5526 = fsub fast float 1.000000e+00, %5524
  %5527 = fsub fast float 1.000000e+00, %5525
  %5528 = fcmp fast oge float %5522, 0.000000e+00
  %5529 = fcmp fast oge float %5523, 0.000000e+00
  %5530 = select i1 %5528, float 1.000000e+00, float -1.000000e+00
  %5531 = select i1 %5529, float 1.000000e+00, float -1.000000e+00
  %5532 = fcmp fast ole float %5469, 0.000000e+00
  %5533 = fmul fast float %5530, %5526
  %5534 = fmul fast float %5531, %5527
  %5535 = select i1 %5532, float %5533, float %5522
  %5536 = select i1 %5532, float %5534, float %5523
  %5537 = fmul fast float %5535, 5.000000e-01
  %5538 = fmul fast float %5536, 5.000000e-01
  %5539 = fadd fast float %5537, 5.000000e-01
  %5540 = fadd fast float %5538, 5.000000e-01
  %5541 = uitofp i32 %5302 to float
  %5542 = call float @dx.op.binary.f32(i32 36, float %5513, float 3.000000e+00)  ; FMin(a,b)
  %5543 = fadd fast float %5542, 2.000000e+00
  %5544 = call float @dx.op.unary.f32(i32 21, float %5543)  ; Exp(value)
  %5545 = extractvalue %dx.types.CBufRet.f32 %5510, 1
  %5546 = fmul fast float %5545, %5544
  %5547 = fmul fast float %5546, 2.000000e+00
  %5548 = fsub fast float 1.000000e+00, %5547
  %5549 = fmul fast float %5539, %5548
  %5550 = fmul fast float %5540, %5548
  %5551 = fadd fast float %5549, %5546
  %5552 = fadd fast float %5550, %5546
  %5553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5551, float %5552, float %5541, float undef, i32 0, i32 0, i32 undef, float %5513)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5554 = extractvalue %dx.types.ResRet.f32 %5553, 0
  %5555 = extractvalue %dx.types.ResRet.f32 %5553, 1
  %5556 = extractvalue %dx.types.ResRet.f32 %5553, 2
  %5557 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5558 = extractvalue %dx.types.CBufRet.f32 %5557, 3
  %5559 = fmul fast float %5558, %5272
  %5560 = call float @dx.op.binary.f32(i32 36, float %4733, float %5559)  ; FMin(a,b)
  %5561 = select i1 %5509, float %5560, float %5559
  %5562 = fmul fast float %5554, %5351
  %5563 = fmul fast float %5562, %5561
  %5564 = fmul fast float %5555, %5351
  %5565 = fmul fast float %5564, %5561
  %5566 = fmul fast float %5556, %5351
  %5567 = fmul fast float %5566, %5561
  %5568 = fadd fast float %5563, %5244
  %5569 = fadd fast float %5565, %5245
  %5570 = fadd fast float %5567, %5246
  %5571 = fmul fast float %5431, %5351
  %5572 = fmul fast float %5432, %5351
  %5573 = fmul fast float %5433, %5351
  %5574 = fadd fast float %5571, %5249
  %5575 = fadd fast float %5572, %5250
  %5576 = fadd fast float %5573, %5251
  %5577 = fsub fast float %5247, %5351
  br label %5353

; <label>:5578                                    ; preds = %5353
  br label %5579

; <label>:5579                                    ; preds = %5578, %5210
  %5580 = phi float [ %5211, %5210 ], [ %5354, %5578 ]
  %5581 = phi float [ %5212, %5210 ], [ %5355, %5578 ]
  %5582 = phi float [ %5213, %5210 ], [ %5356, %5578 ]
  %5583 = phi float [ %5214, %5210 ], [ %5357, %5578 ]
  %5584 = phi float [ %5216, %5210 ], [ %5358, %5578 ]
  %5585 = phi float [ %5217, %5210 ], [ %5359, %5578 ]
  %5586 = phi float [ %5218, %5210 ], [ %5360, %5578 ]
  %5587 = add i32 %5215, 1
  %5588 = icmp ugt i32 %5587, %5207
  br i1 %5588, label %5589, label %5210, !llvm.loop !89

; <label>:5589                                    ; preds = %5579
  br label %5590

; <label>:5590                                    ; preds = %5589, %5192
  %5591 = phi float [ 0.000000e+00, %5192 ], [ %5580, %5589 ]
  %5592 = phi float [ 0.000000e+00, %5192 ], [ %5581, %5589 ]
  %5593 = phi float [ 0.000000e+00, %5192 ], [ %5582, %5589 ]
  %5594 = phi float [ 0.000000e+00, %5192 ], [ %5584, %5589 ]
  %5595 = phi float [ 0.000000e+00, %5192 ], [ %5585, %5589 ]
  %5596 = phi float [ 0.000000e+00, %5192 ], [ %5586, %5589 ]
  %5597 = call float @dx.op.dot3.f32(i32 55, float %5591, float %5592, float %5593, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = select i1 %185, float 0.000000e+00, float %5591
  %5599 = select i1 %185, float %5597, float %5592
  %5600 = select i1 %185, float 0.000000e+00, float %5593
  %5601 = fcmp fast olt float %5116, 0.000000e+00
  %5602 = call float @dx.op.unary.f32(i32 6, float %5116)  ; FAbs(value)
  %5603 = fmul fast float %5602, %5117
  %5604 = fmul fast float %5602, %5118
  %5605 = fmul fast float %5602, %5119
  %5606 = select i1 %5601, float %5117, float %5603
  %5607 = select i1 %5601, float %5118, float %5604
  %5608 = select i1 %5601, float %5119, float %5605
  %5609 = fsub fast float 1.000000e+00, %5602
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fmul fast float %5610, %5598
  %5612 = fmul fast float %5610, %5599
  %5613 = fmul fast float %5610, %5600
  %5614 = fadd fast float %5606, %5611
  %5615 = fadd fast float %5607, %5612
  %5616 = fadd fast float %5608, %5613
  %5617 = fcmp fast une float %4866, 0.000000e+00
  br i1 %5617, label %5718, label %5618

; <label>:5618                                    ; preds = %5590
  %5619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.f32 %5619, 0
  %5621 = extractvalue %dx.types.CBufRet.f32 %5619, 1
  %5622 = extractvalue %dx.types.CBufRet.f32 %5619, 2
  %5623 = extractvalue %dx.types.CBufRet.f32 %5619, 3
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5626 = extractvalue %dx.types.CBufRet.f32 %5624, 1
  %5627 = extractvalue %dx.types.CBufRet.f32 %5624, 2
  %5628 = extractvalue %dx.types.CBufRet.f32 %5624, 3
  %5629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5630 = extractvalue %dx.types.CBufRet.f32 %5629, 0
  %5631 = extractvalue %dx.types.CBufRet.f32 %5629, 1
  %5632 = extractvalue %dx.types.CBufRet.f32 %5629, 2
  %5633 = extractvalue %dx.types.CBufRet.f32 %5629, 3
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5630, float %5631, float %5632, float %4677, float %4678, float %4679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = call float @dx.op.dot3.f32(i32 55, float %5594, float %5595, float %5596, float %5630, float %5631, float %5632)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %5630, float %5631, float %5632)  ; Dot3(ax,ay,az,bx,by,bz)
  %5637 = fadd fast float %4652, -1.000000e+00
  %5638 = fsub fast float %5635, %5636
  %5639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5640 = extractvalue %dx.types.CBufRet.f32 %5639, 2
  %5641 = fmul fast float %5640, %5635
  %5642 = fdiv fast float 1.600000e+02, %5641
  %5643 = fmul fast float %5637, %5637
  %5644 = fmul fast float %5643, 0xBFB5B17960000000
  %5645 = fmul fast float %5644, %5638
  %5646 = fmul fast float %5645, %5642
  %5647 = call float @dx.op.unary.f32(i32 21, float %5646)  ; Exp(value)
  %5648 = fmul fast float %5647, 0x3FF04B2960000000
  %5649 = fsub fast float 0x3FF04B2960000000, %5648
  %5650 = call float @dx.op.unary.f32(i32 7, float %5649)  ; Saturate(value)
  %5651 = fmul fast float %5650, 4.000000e+00
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 0
  %5654 = extractvalue %dx.types.CBufRet.f32 %5652, 1
  %5655 = extractvalue %dx.types.CBufRet.f32 %5652, 2
  %5656 = fadd fast float %5653, %5594
  %5657 = fadd fast float %5654, %5595
  %5658 = fadd fast float %5655, %5596
  %5659 = fmul fast float %5656, %5620
  %5660 = call float @dx.op.tertiary.f32(i32 46, float %5657, float %5621, float %5659)  ; FMad(a,b,c)
  %5661 = call float @dx.op.tertiary.f32(i32 46, float %5658, float %5622, float %5660)  ; FMad(a,b,c)
  %5662 = fadd fast float %5661, %5623
  %5663 = fmul fast float %5656, %5625
  %5664 = call float @dx.op.tertiary.f32(i32 46, float %5657, float %5626, float %5663)  ; FMad(a,b,c)
  %5665 = call float @dx.op.tertiary.f32(i32 46, float %5658, float %5627, float %5664)  ; FMad(a,b,c)
  %5666 = fadd fast float %5665, %5628
  %5667 = fmul fast float %5656, %5630
  %5668 = call float @dx.op.tertiary.f32(i32 46, float %5657, float %5631, float %5667)  ; FMad(a,b,c)
  %5669 = call float @dx.op.tertiary.f32(i32 46, float %5658, float %5632, float %5668)  ; FMad(a,b,c)
  %5670 = fadd fast float %5669, %5633
  %5671 = fdiv fast float %5662, %5670
  %5672 = fdiv fast float %5666, %5670
  %5673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5674 = extractvalue %dx.types.CBufRet.f32 %5673, 0
  %5675 = extractvalue %dx.types.CBufRet.f32 %5673, 1
  %5676 = fmul fast float %5674, %5671
  %5677 = fmul fast float %5675, %5672
  %5678 = extractvalue %dx.types.CBufRet.f32 %5673, 2
  %5679 = extractvalue %dx.types.CBufRet.f32 %5673, 3
  %5680 = fadd fast float %5676, %5678
  %5681 = fadd fast float %5677, %5679
  %5682 = fmul fast float %5634, 8.000000e+00
  %5683 = call float @dx.op.unary.f32(i32 7, float %5682)  ; Saturate(value)
  %5684 = fmul fast float %5680, 2.000000e+00
  %5685 = fmul fast float %5681, 2.000000e+00
  %5686 = fadd fast float %5684, -1.000000e+00
  %5687 = fadd fast float %5685, -1.000000e+00
  %5688 = fmul fast float %5686, %5686
  %5689 = fsub fast float 1.000000e+00, %5688
  %5690 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5691 = fmul fast float %5687, %5687
  %5692 = fsub fast float 1.000000e+00, %5691
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = fmul fast float %4866, %5690
  %5695 = fmul fast float %5694, %5693
  %5696 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5697 = fmul fast float %5696, %5683
  %5698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5680, float %5681, float undef, float undef, i32 0, i32 0, i32 undef, float %5651)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5699 = extractvalue %dx.types.ResRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.ResRet.f32 %5698, 1
  %5701 = extractvalue %dx.types.ResRet.f32 %5698, 2
  %5702 = select i1 %185, float 0.000000e+00, float %5700
  %5703 = select i1 %185, float 0.000000e+00, float %5701
  %5704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5705 = extractvalue %dx.types.CBufRet.f32 %5704, 2
  %5706 = fmul fast float %5705, %5699
  %5707 = fmul fast float %5702, %5705
  %5708 = fmul fast float %5703, %5705
  %5709 = fsub fast float %5706, %5598
  %5710 = fsub fast float %5707, %5599
  %5711 = fsub fast float %5708, %5600
  %5712 = fmul fast float %5709, %5697
  %5713 = fmul fast float %5710, %5697
  %5714 = fmul fast float %5711, %5697
  %5715 = fadd fast float %5712, %5598
  %5716 = fadd fast float %5713, %5599
  %5717 = fadd fast float %5714, %5600
  br label %5718

; <label>:5718                                    ; preds = %5618, %5590, %5115, %4839
  %5719 = phi float [ %5117, %5115 ], [ %5715, %5618 ], [ %5614, %5590 ], [ %4792, %4839 ]
  %5720 = phi float [ %5118, %5115 ], [ %5716, %5618 ], [ %5615, %5590 ], [ %4793, %4839 ]
  %5721 = phi float [ %5119, %5115 ], [ %5717, %5618 ], [ %5616, %5590 ], [ %4794, %4839 ]
  %5722 = fmul fast float %143, %143
  %5723 = fmul fast float %144, %144
  %5724 = fadd fast float %5723, %5722
  %5725 = fmul fast float %145, %145
  %5726 = fadd fast float %5724, %5725
  %5727 = call float @dx.op.unary.f32(i32 24, float %5726)  ; Sqrt(value)
  %5728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5729 = extractvalue %dx.types.CBufRet.f32 %5728, 1
  %5730 = fsub fast float %5727, %5729
  %5731 = extractvalue %dx.types.CBufRet.f32 %5728, 2
  %5732 = fmul fast float %5730, %5731
  %5733 = call float @dx.op.unary.f32(i32 7, float %5732)  ; Saturate(value)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5728, 0
  %5735 = extractvalue %dx.types.CBufRet.f32 %5728, 3
  %5736 = fmul fast float %5733, %46
  %5737 = fmul fast float %5736, %5734
  %5738 = fmul fast float %5736, %5735
  %5739 = fadd fast float %5738, 1.000000e+00
  %5740 = fmul fast float %4845, %4796
  %5741 = fmul fast float %5740, %5739
  %5742 = fmul fast float %4845, %4797
  %5743 = fmul fast float %5742, %5739
  %5744 = fmul fast float %4845, %4798
  %5745 = fmul fast float %5744, %5739
  %5746 = call float @dx.op.dot3.f32(i32 55, float %4643, float %4644, float %4645, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5747 = fcmp fast ogt float %5746, 0x3E7FF19E20000000
  %5748 = fdiv fast float 1.000000e+00, %5746
  %5749 = select i1 %5747, float %5748, float 0.000000e+00
  %5750 = fmul fast float %5749, %4643
  %5751 = fmul fast float %5749, %4644
  %5752 = fmul fast float %5749, %4645
  %5753 = fadd fast float %5750, -1.000000e+00
  %5754 = fadd fast float %5751, -1.000000e+00
  %5755 = fadd fast float %5752, -1.000000e+00
  %5756 = fmul fast float %5753, 5.000000e-01
  %5757 = fmul fast float %5754, 5.000000e-01
  %5758 = fmul fast float %5755, 5.000000e-01
  %5759 = fadd fast float %5756, 1.000000e+00
  %5760 = fadd fast float %5757, 1.000000e+00
  %5761 = fadd fast float %5758, 1.000000e+00
  %5762 = fadd fast float %5737, %4042
  %5763 = fmul fast float %5719, %4840
  %5764 = fmul fast float %5720, %4841
  %5765 = fmul fast float %5721, %4842
  %5766 = fsub fast float 1.000000e+00, %4671
  %5767 = bitcast float %5766 to i32
  %5768 = sitofp i32 %5767 to float
  %5769 = fmul fast float %5768, 5.000000e+00
  %5770 = fadd fast float %5769, 0xC1EFBF8940000000
  %5771 = fptosi float %5770 to i32
  %5772 = bitcast i32 %5771 to float
  %5773 = fmul fast float %5762, %5772
  %5774 = fmul fast float %5740, %5773
  %5775 = fmul fast float %5774, %5759
  %5776 = fmul fast float %5742, %5773
  %5777 = fmul fast float %5776, %5760
  %5778 = fmul fast float %5744, %5773
  %5779 = fmul fast float %5778, %5761
  %5780 = fmul fast float %5741, %4038
  %5781 = fmul fast float %5743, %4038
  %5782 = fmul fast float %5745, %4038
  %5783 = fadd fast float %5763, %4034
  %5784 = fadd fast float %5783, %5775
  %5785 = fmul fast float %5784, %4038
  %5786 = fadd fast float %5764, %4035
  %5787 = fadd fast float %5786, %5777
  %5788 = fmul fast float %5787, %4038
  %5789 = fadd fast float %5765, %4036
  %5790 = fadd fast float %5789, %5779
  %5791 = fmul fast float %5790, %4038
  %5792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5793 = extractvalue %dx.types.CBufRet.f32 %5792, 3
  %5794 = fcmp fast oeq float %5793, 0.000000e+00
  br i1 %5794, label %6013, label %5795

; <label>:5795                                    ; preds = %5718
  %5796 = extractvalue %dx.types.CBufRet.f32 %5792, 0
  %5797 = extractvalue %dx.types.CBufRet.f32 %5792, 1
  %5798 = extractvalue %dx.types.CBufRet.f32 %5792, 2
  %5799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5800 = extractvalue %dx.types.CBufRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.CBufRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.CBufRet.f32 %5799, 2
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = select i1 %185, float %5804, float %5800
  %5808 = select i1 %185, float %5806, float %5801
  %5809 = select i1 %185, float %5805, float %5802
  %5810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.f32 %5810, 1
  %5812 = fcmp fast une float %5811, 0.000000e+00
  br i1 %5812, label %5813, label %5830

; <label>:5813                                    ; preds = %5795
  %5814 = fptoui float %80 to i32
  %5815 = fptoui float %81 to i32
  %5816 = lshr i32 %5814, 4
  %5817 = lshr i32 %5815, 4
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5820 = fptoui float %5819 to i32
  %5821 = add i32 %5820, 15
  %5822 = lshr i32 %5821, 4
  %5823 = mul i32 %5822, %5817
  %5824 = add i32 %5823, %5816
  %5825 = shl i32 %5824, 3
  %5826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.i32 %5826, 0
  %5828 = and i32 %5827, -268435456
  %5829 = icmp eq i32 %5828, -1342177280
  br i1 %5829, label %5835, label %5830

; <label>:5830                                    ; preds = %5813, %5795
  %5831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4657, float %4658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  br label %5835

; <label>:5835                                    ; preds = %5830, %5813
  %5836 = phi float [ %5832, %5830 ], [ 0.000000e+00, %5813 ]
  %5837 = phi float [ %5833, %5830 ], [ 0.000000e+00, %5813 ]
  %5838 = phi float [ %5834, %5830 ], [ 0.000000e+00, %5813 ]
  %5839 = call float @dx.op.binary.f32(i32 36, float %5837, float %5838)  ; FMin(a,b)
  %5840 = call float @dx.op.binary.f32(i32 36, float %5836, float %5839)  ; FMin(a,b)
  %5841 = fcmp fast ogt float %5840, 0.000000e+00
  br i1 %5841, label %5842, label %6013, !dx.controlflow.hints !91

; <label>:5842                                    ; preds = %5835
  %5843 = fmul fast float %5836, %5807
  %5844 = fmul fast float %5837, %5808
  %5845 = fmul fast float %5838, %5809
  %5846 = fsub fast float %5796, %4642
  %5847 = fsub fast float %5797, %4641
  %5848 = fsub fast float %5798, %4640
  %5849 = call float @dx.op.dot3.f32(i32 55, float %5846, float %5847, float %5848, float %5846, float %5847, float %5848)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = call float @dx.op.unary.f32(i32 25, float %5849)  ; Rsqrt(value)
  %5851 = fmul fast float %5850, %5846
  %5852 = fmul fast float %5850, %5847
  %5853 = fmul fast float %5850, %5848
  %5854 = call float @dx.op.dot3.f32(i32 55, float %5796, float %5797, float %5798, float %4646, float %4647, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5855 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4638, float %4637, float %5851, float %5852, float %5853)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = call float @dx.op.unary.f32(i32 7, float %5854)  ; Saturate(value)
  %5857 = fmul fast float %5856, %5856
  %5858 = fmul fast float %5857, %4696
  %5859 = call float @dx.op.unary.f32(i32 7, float %5858)  ; Saturate(value)
  %5860 = fmul fast float %5859, %5856
  %5861 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %5851, float %5852, float %5853)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = fmul fast float %5861, %5861
  %5863 = call float @dx.op.unary.f32(i32 6, float %5854)  ; FAbs(value)
  %5864 = fsub fast float 1.000000e+00, %4689
  %5865 = fmul fast float %4671, %4671
  %5866 = fmul fast float %5865, %5864
  %5867 = fadd fast float %5866, %4689
  %5868 = bitcast float %5867 to i32
  %5869 = ashr i32 %5868, 1
  %5870 = add nsw i32 %5869, 532487669
  %5871 = bitcast i32 %5870 to float
  %5872 = fadd fast float %5871, %4671
  %5873 = fmul fast float %4689, %5862
  %5874 = fsub fast float 1.000000e+00, %5862
  %5875 = fadd fast float %5874, %5873
  %5876 = fmul fast float %5863, %5863
  %5877 = fmul fast float %5876, %5864
  %5878 = fadd fast float %5877, %4689
  %5879 = bitcast float %5878 to i32
  %5880 = ashr i32 %5879, 1
  %5881 = add nsw i32 %5880, 532487669
  %5882 = bitcast i32 %5881 to float
  %5883 = fadd fast float %5882, %5863
  %5884 = fmul fast float %5875, %5875
  %5885 = fmul fast float %5884, %5872
  %5886 = fmul fast float %5885, %5883
  %5887 = fdiv fast float 0x3FF0A00000000000, %5886
  %5888 = fmul fast float %5887, %4689
  %5889 = call float @dx.op.unary.f32(i32 6, float %5855)  ; FAbs(value)
  %5890 = fsub fast float 1.000000e+00, %5889
  %5891 = bitcast float %5890 to i32
  %5892 = sitofp i32 %5891 to float
  %5893 = fmul fast float %5892, 5.000000e+00
  %5894 = fadd fast float %5893, 0xC1EFBF8940000000
  %5895 = fptosi float %5894 to i32
  %5896 = bitcast i32 %5895 to float
  %5897 = fsub fast float 1.000000e+00, %4649
  %5898 = fsub fast float 1.000000e+00, %4650
  %5899 = fsub fast float 1.000000e+00, %4669
  %5900 = fmul fast float %5896, %5897
  %5901 = fmul fast float %5896, %5898
  %5902 = fmul fast float %5896, %5899
  %5903 = fadd fast float %5900, %4649
  %5904 = fadd fast float %5901, %4650
  %5905 = fadd fast float %5902, %4669
  br i1 %4812, label %5906, label %5929

; <label>:5906                                    ; preds = %5842
  %5907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4041, float %5889, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5908 = extractvalue %dx.types.ResRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.ResRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.ResRet.f32 %5907, 2
  %5911 = fadd fast float %5908, -5.000000e-01
  %5912 = fadd fast float %5909, -5.000000e-01
  %5913 = fadd fast float %5910, -5.000000e-01
  %5914 = fmul fast float %4649, 4.000000e+00
  %5915 = fmul fast float %5914, %5897
  %5916 = fmul fast float %5915, %5911
  %5917 = fmul fast float %4650, 4.000000e+00
  %5918 = fmul fast float %5917, %5898
  %5919 = fmul fast float %5918, %5912
  %5920 = fmul fast float %4669, 4.000000e+00
  %5921 = fmul fast float %5920, %5899
  %5922 = fmul fast float %5921, %5913
  %5923 = fadd fast float %5916, %5903
  %5924 = fadd fast float %5919, %5904
  %5925 = fadd fast float %5922, %5905
  %5926 = call float @dx.op.unary.f32(i32 7, float %5923)  ; Saturate(value)
  %5927 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5928 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  br label %5929

; <label>:5929                                    ; preds = %5906, %5842
  %5930 = phi float [ %5926, %5906 ], [ %5903, %5842 ]
  %5931 = phi float [ %5927, %5906 ], [ %5904, %5842 ]
  %5932 = phi float [ %5928, %5906 ], [ %5905, %5842 ]
  %5933 = fmul fast float %5854, 9.843750e-01
  %5934 = fadd fast float %5933, 7.812500e-03
  %5935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5934, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5936 = extractvalue %dx.types.ResRet.f32 %5935, 2
  %5937 = extractvalue %dx.types.ResRet.f32 %5935, 3
  %5938 = fmul fast float %5936, %4649
  %5939 = fmul fast float %5936, %4650
  %5940 = fmul fast float %5936, %4669
  %5941 = fadd fast float %5938, %5937
  %5942 = fadd fast float %5939, %5937
  %5943 = fadd fast float %5940, %5937
  br i1 %4812, label %5944, label %5967

; <label>:5944                                    ; preds = %5929
  %5945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4041, float %5854, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5946 = extractvalue %dx.types.ResRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.ResRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.ResRet.f32 %5945, 2
  %5949 = fadd fast float %5946, -5.000000e-01
  %5950 = fadd fast float %5947, -5.000000e-01
  %5951 = fadd fast float %5948, -5.000000e-01
  %5952 = fmul fast float %4649, 4.000000e+00
  %5953 = fmul fast float %5952, %5897
  %5954 = fmul fast float %5953, %5949
  %5955 = fmul fast float %4650, 4.000000e+00
  %5956 = fmul fast float %5955, %5898
  %5957 = fmul fast float %5956, %5950
  %5958 = fmul fast float %4669, 4.000000e+00
  %5959 = fmul fast float %5958, %5899
  %5960 = fmul fast float %5959, %5951
  %5961 = fadd fast float %5954, %5941
  %5962 = fadd fast float %5957, %5942
  %5963 = fadd fast float %5960, %5943
  %5964 = call float @dx.op.unary.f32(i32 7, float %5961)  ; Saturate(value)
  %5965 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5966 = call float @dx.op.unary.f32(i32 7, float %5963)  ; Saturate(value)
  br label %5967

; <label>:5967                                    ; preds = %5944, %5929
  %5968 = phi float [ %5964, %5944 ], [ %5941, %5929 ]
  %5969 = phi float [ %5965, %5944 ], [ %5942, %5929 ]
  %5970 = phi float [ %5966, %5944 ], [ %5943, %5929 ]
  %5971 = call float @dx.op.binary.f32(i32 35, float %5969, float %5970)  ; FMax(a,b)
  %5972 = call float @dx.op.binary.f32(i32 35, float %5968, float %5971)  ; FMax(a,b)
  %5973 = fsub fast float 1.000000e+00, %5972
  %5974 = fmul fast float %5930, %5888
  %5975 = fmul fast float %5931, %5888
  %5976 = fmul fast float %5932, %5888
  %5977 = fsub fast float 1.000000e+00, %5855
  %5978 = bitcast float %5977 to i32
  %5979 = sitofp i32 %5978 to float
  %5980 = fmul fast float %5979, 5.000000e+00
  %5981 = fadd fast float %5980, 0xC1EFBF8940000000
  %5982 = fptosi float %5981 to i32
  %5983 = bitcast i32 %5982 to float
  %5984 = fmul fast float %5983, %4042
  %5985 = fmul fast float %5973, %5984
  %5986 = fmul fast float %5985, %5759
  %5987 = fmul fast float %5985, %5760
  %5988 = fmul fast float %5985, %5761
  %5989 = fadd fast float %5986, %5974
  %5990 = fadd fast float %5987, %5975
  %5991 = fadd fast float %5988, %5976
  %5992 = fmul fast float %5860, %5843
  %5993 = fmul fast float %5992, %5973
  %5994 = fmul fast float %5860, %5844
  %5995 = fmul fast float %5994, %5973
  %5996 = fmul fast float %5860, %5845
  %5997 = fmul fast float %5996, %5973
  %5998 = fmul fast float %5992, %5989
  %5999 = fmul fast float %5994, %5990
  %6000 = fmul fast float %5996, %5991
  %6001 = fadd fast float %5993, %5741
  %6002 = fmul fast float %6001, %4038
  %6003 = fadd fast float %5995, %5743
  %6004 = fmul fast float %6003, %4038
  %6005 = fadd fast float %5997, %5745
  %6006 = fmul fast float %6005, %4038
  %6007 = fadd fast float %5998, %5784
  %6008 = fmul fast float %6007, %4038
  %6009 = fadd fast float %5999, %5787
  %6010 = fmul fast float %6009, %4038
  %6011 = fadd fast float %6000, %5790
  %6012 = fmul fast float %6011, %4038
  br label %6013

; <label>:6013                                    ; preds = %5967, %5835, %5718
  %6014 = phi float [ %5785, %5718 ], [ %5785, %5835 ], [ %6008, %5967 ]
  %6015 = phi float [ %5788, %5718 ], [ %5788, %5835 ], [ %6010, %5967 ]
  %6016 = phi float [ %5791, %5718 ], [ %5791, %5835 ], [ %6012, %5967 ]
  %6017 = phi float [ %5780, %5718 ], [ %5780, %5835 ], [ %6002, %5967 ]
  %6018 = phi float [ %5781, %5718 ], [ %5781, %5835 ], [ %6004, %5967 ]
  %6019 = phi float [ %5782, %5718 ], [ %5782, %5835 ], [ %6006, %5967 ]
  %6020 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6021 = extractvalue %dx.types.CBufRet.i32 %6020, 0
  %6022 = icmp eq i32 %6021, 0
  br i1 %6022, label %6453, label %6023

; <label>:6023                                    ; preds = %6013
  %6024 = fptoui float %80 to i32
  %6025 = fptoui float %81 to i32
  %6026 = lshr i32 %6024, 4
  %6027 = lshr i32 %6025, 4
  %6028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.i32 %6028, 0
  %6030 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6027, i32 %6029, i32 %6026)  ; UMad(a,b,c)
  %6031 = add nsw i32 %6021, -1
  %6032 = call i32 @dx.op.binary.i32(i32 37, i32 %6031, i32 0)  ; IMax(a,b)
  %6033 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %6034 = fptoui float %6033 to i32
  %6035 = lshr i32 %6034, 5
  %6036 = call i32 @dx.op.binary.i32(i32 40, i32 %6035, i32 8191)  ; UMin(a,b)
  %6037 = shl i32 %6036, 2
  %6038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6037, i32 undef)  ; BufferLoad(srv,index,wot)
  %6039 = extractvalue %dx.types.ResRet.i32 %6038, 0
  %6040 = lshr i32 %6039, 16
  %6041 = and i32 %6039, 65535
  %6042 = lshr i32 %6039, 21
  %6043 = lshr i32 %6041, 5
  %6044 = call i32 @dx.op.binary.i32(i32 40, i32 %6043, i32 %6032)  ; UMin(a,b)
  %6045 = icmp ugt i32 %6042, %6044
  br i1 %6045, label %6453, label %6046

; <label>:6046                                    ; preds = %6023
  br label %6047

; <label>:6047                                    ; preds = %6443, %6046
  %6048 = phi i32 [ %6450, %6443 ], [ %6042, %6046 ]
  %6049 = phi float [ %6444, %6443 ], [ %6014, %6046 ]
  %6050 = phi float [ %6445, %6443 ], [ %6015, %6046 ]
  %6051 = phi float [ %6446, %6443 ], [ %6016, %6046 ]
  %6052 = phi float [ %6447, %6443 ], [ %6017, %6046 ]
  %6053 = phi float [ %6448, %6443 ], [ %6018, %6046 ]
  %6054 = phi float [ %6449, %6443 ], [ %6019, %6046 ]
  %6055 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6056 = extractvalue %dx.types.CBufRet.i32 %6055, 0
  %6057 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6030, i32 %6056, i32 %6048)  ; UMad(a,b,c)
  %6058 = shl i32 %6057, 2
  %6059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6058, i32 undef)  ; BufferLoad(srv,index,wot)
  %6060 = extractvalue %dx.types.ResRet.i32 %6059, 0
  %6061 = shl i32 %6048, 5
  %6062 = sub nsw i32 %6040, %6061
  %6063 = call i32 @dx.op.binary.i32(i32 37, i32 %6062, i32 0)  ; IMax(a,b)
  %6064 = call i32 @dx.op.binary.i32(i32 38, i32 %6063, i32 31)  ; IMin(a,b)
  %6065 = sub nsw i32 1, %6040
  %6066 = add nsw i32 %6065, %6041
  %6067 = call i32 @dx.op.binary.i32(i32 37, i32 %6066, i32 0)  ; IMax(a,b)
  %6068 = call i32 @dx.op.binary.i32(i32 38, i32 %6067, i32 32)  ; IMin(a,b)
  %6069 = and i32 %6068, 31
  %6070 = shl i32 -1, %6069
  %6071 = xor i32 %6070, -1
  %6072 = and i32 %6064, 31
  %6073 = shl i32 %6071, %6072
  %6074 = icmp eq i32 %6068, 32
  %6075 = select i1 %6074, i32 -1, i32 %6073
  %6076 = and i32 %6075, %6060
  %6077 = icmp eq i32 %6076, 0
  br i1 %6077, label %6443, label %6078

; <label>:6078                                    ; preds = %6047
  br label %6079

; <label>:6079                                    ; preds = %6159, %6078
  %6080 = phi i32 [ %6091, %6159 ], [ %6076, %6078 ]
  %6081 = phi float [ %6160, %6159 ], [ %6049, %6078 ]
  %6082 = phi float [ %6161, %6159 ], [ %6050, %6078 ]
  %6083 = phi float [ %6162, %6159 ], [ %6051, %6078 ]
  %6084 = phi float [ %6163, %6159 ], [ %6052, %6078 ]
  %6085 = phi float [ %6164, %6159 ], [ %6053, %6078 ]
  %6086 = phi float [ %6165, %6159 ], [ %6054, %6078 ]
  %6087 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6080)  ; FirstbitLo(value)
  %6088 = add i32 %6087, %6061
  %6089 = and i32 %6087, 31
  %6090 = shl i32 1, %6089
  %6091 = xor i32 %6090, %6080
  %6092 = mul i32 %6088, 112
  %6093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6092, i32 undef)  ; BufferLoad(srv,index,wot)
  %6094 = extractvalue %dx.types.ResRet.f32 %6093, 0
  %6095 = extractvalue %dx.types.ResRet.f32 %6093, 1
  %6096 = extractvalue %dx.types.ResRet.f32 %6093, 2
  %6097 = or i32 %6092, 12
  %6098 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6097, i32 undef)  ; BufferLoad(srv,index,wot)
  %6099 = extractvalue %dx.types.ResRet.f32 %6098, 0
  %6100 = add i32 %6092, 44
  %6101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6100, i32 undef)  ; BufferLoad(srv,index,wot)
  %6102 = extractvalue %dx.types.ResRet.f32 %6101, 0
  %6103 = add i32 %6092, 48
  %6104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6103, i32 undef)  ; BufferLoad(srv,index,wot)
  %6105 = extractvalue %dx.types.ResRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.ResRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.ResRet.f32 %6104, 2
  %6108 = add i32 %6092, 80
  %6109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6108, i32 undef)  ; BufferLoad(srv,index,wot)
  %6110 = extractvalue %dx.types.ResRet.f32 %6109, 1
  %6111 = extractvalue %dx.types.ResRet.f32 %6109, 2
  %6112 = call float @dx.op.dot3.f32(i32 55, float %6094, float %6095, float %6096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6113 = select i1 %185, float %6110, float %6094
  %6114 = select i1 %185, float %6112, float %6095
  %6115 = select i1 %185, float %6111, float %6096
  %6116 = fsub fast float %6105, %143
  %6117 = fsub fast float %6106, %144
  %6118 = fsub fast float %6107, %145
  %6119 = call float @dx.op.dot3.f32(i32 55, float %6116, float %6117, float %6118, float %6116, float %6117, float %6118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = call float @dx.op.unary.f32(i32 24, float %6119)  ; Sqrt(value)
  %6121 = fdiv fast float 1.000000e+00, %6120
  %6122 = fmul fast float %6121, %6116
  %6123 = fmul fast float %6121, %6117
  %6124 = fmul fast float %6121, %6118
  %6125 = fadd fast float %6120, %6099
  %6126 = fdiv fast float 1.000000e+00, %6125
  %6127 = fmul float %6102, %6126
  %6128 = fmul float %6127, %6127
  %6129 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  %6130 = and i32 %6090, %6076
  %6131 = icmp eq i32 %6130, 0
  br i1 %6131, label %6154, label %6132, !dx.controlflow.hints !92

; <label>:6132                                    ; preds = %6079
  %6133 = lshr i32 %6024, 5
  %6134 = lshr i32 %6025, 5
  %6135 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6133, i32 %6134, i32 %6088, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6136 = extractvalue %dx.types.ResRet.i32 %6135, 0
  %6137 = and i32 %6136, 3
  %6138 = icmp eq i32 %6137, 0
  %6139 = select i1 %6138, float 1.000000e+00, float 0.000000e+00
  %6140 = icmp eq i32 %6137, 3
  br i1 %6140, label %6141, label %6154

; <label>:6141                                    ; preds = %6132
  %6142 = lshr i32 %6136, 10
  %6143 = and i32 %6142, 8160
  %6144 = and i32 %6025, 31
  %6145 = or i32 %6143, %6144
  %6146 = lshr i32 %6136, 1
  %6147 = and i32 %6146, 16352
  %6148 = and i32 %6024, 31
  %6149 = or i32 %6147, %6148
  %6150 = lshr i32 %6136, 23
  %6151 = and i32 %6150, 255
  %6152 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6149, i32 %6145, i32 %6151, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6153 = extractvalue %dx.types.ResRet.f32 %6152, 0
  br label %6154

; <label>:6154                                    ; preds = %6141, %6132, %6079
  %6155 = phi float [ %6153, %6141 ], [ %6139, %6132 ], [ 0.000000e+00, %6079 ]
  %6156 = call float @dx.op.binary.f32(i32 36, float %6155, float %6155)  ; FMin(a,b)
  %6157 = call float @dx.op.binary.f32(i32 36, float %6155, float %6156)  ; FMin(a,b)
  %6158 = fcmp fast ogt float %6157, 0.000000e+00
  br i1 %6158, label %6167, label %6159, !dx.controlflow.hints !93

; <label>:6159                                    ; preds = %6399, %6154
  %6160 = phi float [ %6081, %6154 ], [ %6439, %6399 ]
  %6161 = phi float [ %6082, %6154 ], [ %6440, %6399 ]
  %6162 = phi float [ %6083, %6154 ], [ %6441, %6399 ]
  %6163 = phi float [ %6084, %6154 ], [ %6433, %6399 ]
  %6164 = phi float [ %6085, %6154 ], [ %6434, %6399 ]
  %6165 = phi float [ %6086, %6154 ], [ %6435, %6399 ]
  %6166 = icmp eq i32 %6080, %6090
  br i1 %6166, label %6442, label %6079

; <label>:6167                                    ; preds = %6154
  %6168 = fmul fast float %6155, %6113
  %6169 = fmul fast float %6155, %6114
  %6170 = fmul fast float %6155, %6115
  %6171 = fsub fast float %6107, %4442
  %6172 = fcmp fast ogt float %6171, 0.000000e+00
  %6173 = fsub fast float %145, %4442
  %6174 = fcmp fast ogt float %6173, 0.000000e+00
  %6175 = xor i1 %6174, %6172
  %6176 = fsub fast float %4442, %6107
  %6177 = fmul fast float %6176, 2.000000e+00
  %6178 = fadd fast float %6177, %6107
  %6179 = select i1 %6175, float %6107, float %6178
  %6180 = fsub fast float %6179, %145
  %6181 = call float @dx.op.dot3.f32(i32 55, float %6116, float %6117, float %6180, float %6116, float %6117, float %6180)  ; Dot3(ax,ay,az,bx,by,bz)
  %6182 = call float @dx.op.unary.f32(i32 25, float %6181)  ; Rsqrt(value)
  %6183 = fmul fast float %6182, %6116
  %6184 = fmul fast float %6182, %6117
  %6185 = fmul fast float %6182, %6180
  %6186 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4450)  ; Dot3(ax,ay,az,bx,by,bz)
  %6187 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6183, float %6184, float %6185)  ; Dot3(ax,ay,az,bx,by,bz)
  %6188 = fdiv fast float 1.000000e+00, %6187
  %6189 = fmul fast float %6188, %6186
  %6190 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6173, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6191 = fcmp fast ogt float %6190, 0.000000e+00
  %6192 = fcmp fast olt float %6190, 0.000000e+00
  %6193 = zext i1 %6191 to i32
  %6194 = zext i1 %6192 to i32
  %6195 = sub nsw i32 %6193, %6194
  %6196 = sitofp i32 %6195 to float
  %6197 = fsub fast float %6179, %4442
  %6198 = call float @dx.op.dot3.f32(i32 55, float %6116, float %6117, float %6197, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6199 = fcmp fast ogt float %6198, 0.000000e+00
  %6200 = fcmp fast olt float %6198, 0.000000e+00
  %6201 = zext i1 %6199 to i32
  %6202 = zext i1 %6200 to i32
  %6203 = sub nsw i32 %6201, %6202
  %6204 = sitofp i32 %6203 to float
  %6205 = fcmp fast une float %6196, %6204
  br i1 %6205, label %6206, label %6216

; <label>:6206                                    ; preds = %6167
  %6207 = fmul fast float %6189, %6185
  %6208 = fmul fast float %6189, %6184
  %6209 = fmul fast float %6189, %6183
  %6210 = fmul fast float %6209, %6209
  %6211 = fmul fast float %6208, %6208
  %6212 = fadd fast float %6210, %6211
  %6213 = fmul fast float %6207, %6207
  %6214 = fadd fast float %6212, %6213
  %6215 = call float @dx.op.unary.f32(i32 24, float %6214)  ; Sqrt(value)
  br label %6228

; <label>:6216                                    ; preds = %6167
  %6217 = icmp slt i32 %6195, 0
  br i1 %6217, label %6218, label %6228

; <label>:6218                                    ; preds = %6216
  %6219 = fsub fast float %143, %6105
  %6220 = fsub fast float %144, %6106
  %6221 = fsub fast float %145, %6179
  %6222 = fmul fast float %6219, %6219
  %6223 = fmul fast float %6220, %6220
  %6224 = fadd fast float %6222, %6223
  %6225 = fmul fast float %6221, %6221
  %6226 = fadd fast float %6224, %6225
  %6227 = call float @dx.op.unary.f32(i32 24, float %6226)  ; Sqrt(value)
  br label %6228

; <label>:6228                                    ; preds = %6218, %6216, %6206
  %6229 = phi float [ %6215, %6206 ], [ %6227, %6218 ], [ 0.000000e+00, %6216 ]
  %6230 = and i1 %6174, %6172
  %6231 = fsub fast float -0.000000e+00, %6229
  %6232 = select i1 %6230, float -0.000000e+00, float %6231
  %6233 = fmul fast float %4443, 0x3FF7154760000000
  %6234 = fmul fast float %6233, %6232
  %6235 = fmul fast float %4444, 0x3FF7154760000000
  %6236 = fmul fast float %6235, %6232
  %6237 = fmul fast float %4445, 0x3FF7154760000000
  %6238 = fmul fast float %6237, %6232
  %6239 = call float @dx.op.unary.f32(i32 21, float %6234)  ; Exp(value)
  %6240 = call float @dx.op.unary.f32(i32 21, float %6236)  ; Exp(value)
  %6241 = call float @dx.op.unary.f32(i32 21, float %6238)  ; Exp(value)
  %6242 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6243 = call float @dx.op.unary.f32(i32 7, float %6240)  ; Saturate(value)
  %6244 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  %6245 = fmul fast float %6168, %6242
  %6246 = fmul fast float %6169, %6243
  %6247 = fmul fast float %6170, %6244
  %6248 = fsub fast float %6122, %4642
  %6249 = fsub fast float %6123, %4641
  %6250 = fsub fast float %6124, %4640
  %6251 = call float @dx.op.dot3.f32(i32 55, float %6248, float %6249, float %6250, float %6248, float %6249, float %6250)  ; Dot3(ax,ay,az,bx,by,bz)
  %6252 = call float @dx.op.unary.f32(i32 25, float %6251)  ; Rsqrt(value)
  %6253 = fmul fast float %6252, %6248
  %6254 = fmul fast float %6252, %6249
  %6255 = fmul fast float %6252, %6250
  %6256 = call float @dx.op.dot3.f32(i32 55, float %6122, float %6123, float %6124, float %4646, float %4647, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %6257 = call float @dx.op.dot3.f32(i32 55, float %4639, float %4638, float %4637, float %6253, float %6254, float %6255)  ; Dot3(ax,ay,az,bx,by,bz)
  %6258 = call float @dx.op.unary.f32(i32 7, float %6256)  ; Saturate(value)
  %6259 = fmul fast float %6258, %6129
  %6260 = fmul fast float %6258, %6258
  %6261 = fmul fast float %6260, %4696
  %6262 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6263 = fmul fast float %6259, %6262
  %6264 = bitcast float %6119 to i32
  %6265 = ashr i32 %6264, 1
  %6266 = sub nsw i32 1597463007, %6265
  %6267 = bitcast i32 %6266 to float
  %6268 = fmul fast float %6267, %6116
  %6269 = fmul fast float %6267, %6117
  %6270 = fmul fast float %6267, %6118
  %6271 = fsub fast float %6268, %4642
  %6272 = fsub fast float %6269, %4641
  %6273 = fsub fast float %6270, %4640
  %6274 = call float @dx.op.dot3.f32(i32 55, float %6271, float %6272, float %6273, float %6271, float %6272, float %6273)  ; Dot3(ax,ay,az,bx,by,bz)
  %6275 = call float @dx.op.unary.f32(i32 25, float %6274)  ; Rsqrt(value)
  %6276 = fmul fast float %6271, %6275
  %6277 = fmul fast float %6272, %6275
  %6278 = fmul fast float %6273, %6275
  %6279 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %6276, float %6277, float %6278)  ; Dot3(ax,ay,az,bx,by,bz)
  %6280 = fmul fast float %6279, %6279
  %6281 = call float @dx.op.unary.f32(i32 6, float %6256)  ; FAbs(value)
  %6282 = fsub fast float 1.000000e+00, %4689
  %6283 = fmul fast float %4671, %4671
  %6284 = fmul fast float %6283, %6282
  %6285 = fadd fast float %6284, %4689
  %6286 = bitcast float %6285 to i32
  %6287 = ashr i32 %6286, 1
  %6288 = add nsw i32 %6287, 532487669
  %6289 = bitcast i32 %6288 to float
  %6290 = fadd fast float %6289, %4671
  %6291 = fmul fast float %4689, %6280
  %6292 = fsub fast float 1.000000e+00, %6280
  %6293 = fadd fast float %6292, %6291
  %6294 = fmul fast float %6281, %6281
  %6295 = fmul fast float %6294, %6282
  %6296 = fadd fast float %6295, %4689
  %6297 = bitcast float %6296 to i32
  %6298 = ashr i32 %6297, 1
  %6299 = add nsw i32 %6298, 532487669
  %6300 = bitcast i32 %6299 to float
  %6301 = fadd fast float %6300, %6281
  %6302 = fmul fast float %6293, %6293
  %6303 = fmul fast float %6302, %6290
  %6304 = fmul fast float %6303, %6301
  %6305 = fdiv fast float 1.000000e+00, %6304
  %6306 = bitcast float %4689 to i32
  %6307 = sitofp i32 %6306 to float
  %6308 = fmul fast float %6307, 0x3FE7F73180000000
  %6309 = fadd fast float %6308, 0x41AFE27C40000000
  %6310 = fptosi float %6309 to i32
  %6311 = bitcast i32 %6310 to float
  %6312 = fmul fast float %6102, 0x3FD80E9D60000000
  %6313 = fmul fast float %6312, %6267
  %6314 = fadd fast float %6311, %6313
  %6315 = bitcast float %6314 to i32
  %6316 = sub nsw i32 2129859010, %6315
  %6317 = bitcast i32 %6316 to float
  %6318 = fmul fast float %4689, %6305
  %6319 = fmul fast float %6318, %6311
  %6320 = fmul fast float %6319, %6317
  %6321 = call float @dx.op.unary.f32(i32 6, float %6257)  ; FAbs(value)
  %6322 = fsub fast float 1.000000e+00, %6321
  %6323 = bitcast float %6322 to i32
  %6324 = sitofp i32 %6323 to float
  %6325 = fmul fast float %6324, 5.000000e+00
  %6326 = fadd fast float %6325, 0xC1EFBF8940000000
  %6327 = fptosi float %6326 to i32
  %6328 = bitcast i32 %6327 to float
  %6329 = fsub fast float 1.000000e+00, %4649
  %6330 = fsub fast float 1.000000e+00, %4650
  %6331 = fsub fast float 1.000000e+00, %4669
  %6332 = fmul fast float %6328, %6329
  %6333 = fmul fast float %6328, %6330
  %6334 = fmul fast float %6328, %6331
  %6335 = fadd fast float %6332, %4649
  %6336 = fadd fast float %6333, %4650
  %6337 = fadd fast float %6334, %4669
  br i1 %4812, label %6338, label %6361

; <label>:6338                                    ; preds = %6228
  %6339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4041, float %6321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6340 = extractvalue %dx.types.ResRet.f32 %6339, 0
  %6341 = extractvalue %dx.types.ResRet.f32 %6339, 1
  %6342 = extractvalue %dx.types.ResRet.f32 %6339, 2
  %6343 = fadd fast float %6340, -5.000000e-01
  %6344 = fadd fast float %6341, -5.000000e-01
  %6345 = fadd fast float %6342, -5.000000e-01
  %6346 = fmul fast float %4649, 4.000000e+00
  %6347 = fmul fast float %6346, %6329
  %6348 = fmul fast float %6347, %6343
  %6349 = fmul fast float %4650, 4.000000e+00
  %6350 = fmul fast float %6349, %6330
  %6351 = fmul fast float %6350, %6344
  %6352 = fmul fast float %4669, 4.000000e+00
  %6353 = fmul fast float %6352, %6331
  %6354 = fmul fast float %6353, %6345
  %6355 = fadd fast float %6348, %6335
  %6356 = fadd fast float %6351, %6336
  %6357 = fadd fast float %6354, %6337
  %6358 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6359 = call float @dx.op.unary.f32(i32 7, float %6356)  ; Saturate(value)
  %6360 = call float @dx.op.unary.f32(i32 7, float %6357)  ; Saturate(value)
  br label %6361

; <label>:6361                                    ; preds = %6338, %6228
  %6362 = phi float [ %6358, %6338 ], [ %6335, %6228 ]
  %6363 = phi float [ %6359, %6338 ], [ %6336, %6228 ]
  %6364 = phi float [ %6360, %6338 ], [ %6337, %6228 ]
  %6365 = fmul fast float %6256, 9.843750e-01
  %6366 = fadd fast float %6365, 7.812500e-03
  %6367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6366, float %4802, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6368 = extractvalue %dx.types.ResRet.f32 %6367, 2
  %6369 = extractvalue %dx.types.ResRet.f32 %6367, 3
  %6370 = fmul fast float %6368, %4649
  %6371 = fmul fast float %6368, %4650
  %6372 = fmul fast float %6368, %4669
  %6373 = fadd fast float %6370, %6369
  %6374 = fadd fast float %6371, %6369
  %6375 = fadd fast float %6372, %6369
  br i1 %4812, label %6376, label %6399

; <label>:6376                                    ; preds = %6361
  %6377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4041, float %6256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6378 = extractvalue %dx.types.ResRet.f32 %6377, 0
  %6379 = extractvalue %dx.types.ResRet.f32 %6377, 1
  %6380 = extractvalue %dx.types.ResRet.f32 %6377, 2
  %6381 = fadd fast float %6378, -5.000000e-01
  %6382 = fadd fast float %6379, -5.000000e-01
  %6383 = fadd fast float %6380, -5.000000e-01
  %6384 = fmul fast float %4649, 4.000000e+00
  %6385 = fmul fast float %6384, %6329
  %6386 = fmul fast float %6385, %6381
  %6387 = fmul fast float %4650, 4.000000e+00
  %6388 = fmul fast float %6387, %6330
  %6389 = fmul fast float %6388, %6382
  %6390 = fmul fast float %4669, 4.000000e+00
  %6391 = fmul fast float %6390, %6331
  %6392 = fmul fast float %6391, %6383
  %6393 = fadd fast float %6386, %6373
  %6394 = fadd fast float %6389, %6374
  %6395 = fadd fast float %6392, %6375
  %6396 = call float @dx.op.unary.f32(i32 7, float %6393)  ; Saturate(value)
  %6397 = call float @dx.op.unary.f32(i32 7, float %6394)  ; Saturate(value)
  %6398 = call float @dx.op.unary.f32(i32 7, float %6395)  ; Saturate(value)
  br label %6399

; <label>:6399                                    ; preds = %6376, %6361
  %6400 = phi float [ %6396, %6376 ], [ %6373, %6361 ]
  %6401 = phi float [ %6397, %6376 ], [ %6374, %6361 ]
  %6402 = phi float [ %6398, %6376 ], [ %6375, %6361 ]
  %6403 = call float @dx.op.binary.f32(i32 35, float %6401, float %6402)  ; FMax(a,b)
  %6404 = call float @dx.op.binary.f32(i32 35, float %6400, float %6403)  ; FMax(a,b)
  %6405 = fsub fast float 1.000000e+00, %6404
  %6406 = fmul fast float %6362, %6320
  %6407 = fmul fast float %6363, %6320
  %6408 = fmul fast float %6364, %6320
  %6409 = fsub fast float 1.000000e+00, %6257
  %6410 = bitcast float %6409 to i32
  %6411 = sitofp i32 %6410 to float
  %6412 = fmul fast float %6411, 5.000000e+00
  %6413 = fadd fast float %6412, 0xC1EFBF8940000000
  %6414 = fptosi float %6413 to i32
  %6415 = bitcast i32 %6414 to float
  %6416 = fmul fast float %6415, %4042
  %6417 = fmul fast float %6405, %6416
  %6418 = fmul fast float %6417, %5759
  %6419 = fmul fast float %6417, %5760
  %6420 = fmul fast float %6417, %5761
  %6421 = fadd fast float %6418, %6406
  %6422 = fadd fast float %6419, %6407
  %6423 = fadd fast float %6420, %6408
  %6424 = fmul fast float %6245, %4038
  %6425 = fmul fast float %6424, %6263
  %6426 = fmul fast float %6425, %6405
  %6427 = fmul fast float %6246, %4038
  %6428 = fmul fast float %6427, %6263
  %6429 = fmul fast float %6428, %6405
  %6430 = fmul fast float %6247, %4038
  %6431 = fmul fast float %6430, %6263
  %6432 = fmul fast float %6431, %6405
  %6433 = fadd fast float %6426, %6084
  %6434 = fadd fast float %6429, %6085
  %6435 = fadd fast float %6432, %6086
  %6436 = fmul fast float %6425, %6421
  %6437 = fmul fast float %6428, %6422
  %6438 = fmul fast float %6431, %6423
  %6439 = fadd fast float %6436, %6081
  %6440 = fadd fast float %6437, %6082
  %6441 = fadd fast float %6438, %6083
  br label %6159

; <label>:6442                                    ; preds = %6159
  br label %6443

; <label>:6443                                    ; preds = %6442, %6047
  %6444 = phi float [ %6049, %6047 ], [ %6160, %6442 ]
  %6445 = phi float [ %6050, %6047 ], [ %6161, %6442 ]
  %6446 = phi float [ %6051, %6047 ], [ %6162, %6442 ]
  %6447 = phi float [ %6052, %6047 ], [ %6163, %6442 ]
  %6448 = phi float [ %6053, %6047 ], [ %6164, %6442 ]
  %6449 = phi float [ %6054, %6047 ], [ %6165, %6442 ]
  %6450 = add i32 %6048, 1
  %6451 = icmp ugt i32 %6450, %6044
  br i1 %6451, label %6452, label %6047

; <label>:6452                                    ; preds = %6443
  br label %6453

; <label>:6453                                    ; preds = %6452, %6023, %6013
  %6454 = phi float [ %6014, %6013 ], [ %6014, %6023 ], [ %6444, %6452 ]
  %6455 = phi float [ %6015, %6013 ], [ %6015, %6023 ], [ %6445, %6452 ]
  %6456 = phi float [ %6016, %6013 ], [ %6016, %6023 ], [ %6446, %6452 ]
  %6457 = phi float [ %6017, %6013 ], [ %6017, %6023 ], [ %6447, %6452 ]
  %6458 = phi float [ %6018, %6013 ], [ %6018, %6023 ], [ %6448, %6452 ]
  %6459 = phi float [ %6019, %6013 ], [ %6019, %6023 ], [ %6449, %6452 ]
  %6460 = call float @dx.op.unary.f32(i32 24, float %4643)  ; Sqrt(value)
  %6461 = call float @dx.op.unary.f32(i32 24, float %4644)  ; Sqrt(value)
  %6462 = call float @dx.op.unary.f32(i32 24, float %4645)  ; Sqrt(value)
  %6463 = fmul fast float %6460, %6457
  %6464 = fmul fast float %6461, %6458
  %6465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6466 = extractvalue %dx.types.CBufRet.f32 %6465, 0
  br i1 %185, label %6467, label %6490

; <label>:6467                                    ; preds = %6453
  %6468 = fadd fast float %6459, %4044
  %6469 = fmul fast float %6468, %4045
  %6470 = fsub fast float 1.000000e+00, %4045
  %6471 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6473 = extractvalue %dx.types.CBufRet.f32 %6472, 3
  %6474 = fmul fast float %6473, %6471
  %6475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6476 = extractvalue %dx.types.CBufRet.f32 %6475, 0
  %6477 = fmul fast float %6476, %5766
  %6478 = extractvalue %dx.types.CBufRet.f32 %6475, 2
  %6479 = fmul fast float %6478, %4667
  %6480 = fadd fast float %6464, %6463
  %6481 = fmul fast float %6466, %6480
  %6482 = extractvalue %dx.types.CBufRet.f32 %6472, 1
  %6483 = fadd fast float %6474, %6469
  %6484 = fsub fast float %6483, %6477
  %6485 = fadd fast float %6484, %6479
  %6486 = fsub fast float %6485, %6482
  %6487 = extractvalue %dx.types.CBufRet.f32 %6472, 2
  %6488 = fmul fast float %6486, %6487
  %6489 = call float @dx.op.unary.f32(i32 7, float %6488)  ; Saturate(value)
  br label %6506

; <label>:6490                                    ; preds = %6453
  %6491 = fmul fast float %6462, %6459
  %6492 = fmul fast float %6466, %6463
  %6493 = fmul fast float %6466, %6464
  %6494 = fmul fast float %6491, %6466
  %6495 = add i32 %43, 356
  %6496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6495, i32 undef)  ; BufferLoad(srv,index,wot)
  %6497 = extractvalue %dx.types.ResRet.i32 %6496, 0
  %6498 = and i32 %6497, 32
  %6499 = icmp eq i32 %6498, 0
  br i1 %6499, label %6506, label %6500

; <label>:6500                                    ; preds = %6490
  %6501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6502 = extractvalue %dx.types.CBufRet.f32 %6501, 0
  %6503 = fmul fast float %6502, 0x3FE99999A0000000
  %6504 = fadd fast float %6502, %6492
  %6505 = fadd fast float %6503, %6494
  br label %6506

; <label>:6506                                    ; preds = %6500, %6490, %6467
  %6507 = phi float [ %6481, %6467 ], [ %6504, %6500 ], [ %6492, %6490 ]
  %6508 = phi float [ %6489, %6467 ], [ %6493, %6500 ], [ %6493, %6490 ]
  %6509 = phi float [ 1.000000e+00, %6467 ], [ %6505, %6500 ], [ %6494, %6490 ]
  %6510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6511 = extractvalue %dx.types.CBufRet.f32 %6510, 0
  %6512 = fmul fast float %6511, %6455
  %6513 = fmul fast float %6511, %6456
  %6514 = fadd fast float %6455, %6454
  %6515 = select i1 %185, float %6514, float %6454
  %6516 = fmul float %6515, %6511
  %6517 = select i1 %185, float 0.000000e+00, float %6512
  %6518 = select i1 %185, float 0.000000e+00, float %6513
  %6519 = fmul fast float %6507, %6460
  %6520 = fmul fast float %6508, %6461
  %6521 = fmul fast float %6509, %6462
  %6522 = fadd fast float %6516, %6519
  %6523 = fadd fast float %6517, %6520
  %6524 = fadd fast float %6518, %6521
  %6525 = select i1 %185, float %6508, float %6523
  %6526 = select i1 %185, float %6509, float %6524
  %6527 = call float @dx.op.binary.f32(i32 36, float %6522, float 3.225500e+04)  ; FMin(a,b)
  %6528 = call float @dx.op.binary.f32(i32 36, float %6525, float 3.225500e+04)  ; FMin(a,b)
  %6529 = call float @dx.op.binary.f32(i32 36, float %6526, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6527)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6528)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

