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
; shader hash: 8db448c2b4e69c6a7ccff33e56366657
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
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5      t3,space1     1
;                                   texture    byte         r/o      T6      t4,space1     1
;                                   texture    byte         r/o      T7      t5,space1     1
;                                   texture    byte         r/o      T8      t6,space1     1
;                                   texture     u32     2darray      T9     t11,space2     1
;                                   texture     f32     2darray     T10     t10,space2     1
;                                   texture     f32          2d     T11     t69,space2     1
;                                   texture    byte         r/o     T12     t49,space1     1
;                                   texture    byte         r/o     T13     t50,space1     1
;                                   texture    byte         r/o     T14     t51,space1     1
;                                   texture    byte         r/o     T15     t52,space1     1
;                                   texture     f32          2d     T16     t37,space2     1
;                                   texture     f32          2d     T17             t0     1
;                                   texture     f32     2darray     T18     t49,space2     1
;                                   texture     f32          2d     T19     t58,space2     1
;                                   texture     f32          2d     T20     t59,space2     1
;                                   texture     f32          2d     T21     t60,space2     1
;                                   texture    byte         r/o     T22     t45,space1     1
;                                   texture    byte         r/o     T23     t46,space1     1
;                                   texture    byte         r/o     T24     t47,space1     1
;                                   texture    byte         r/o     T25     t48,space1     1
;                                   texture     f32          2d     T26     t57,space2     1
;                                   texture    byte         r/o     T27     t69,space1     1
;                                   texture     f32     2darray     T28     t35,space2     1
;                                   texture     f32          3d     T29     t31,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31     t68,space1     1
;                                   texture     f32          2d     T32      t0,space2     1
;                                   texture    byte         r/o     T33     t11,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;                                   texture     f32          2d     T35     t48,space2     1
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
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 0
  %74 = fmul fast float %73, %67
  %75 = fmul fast float %73, %68
  %76 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %77 = bitcast float %76 to i32
  %78 = ashr i32 %77, 1
  %79 = sub nsw i32 1597250115, %78
  %80 = bitcast i32 %79 to float
  %81 = fmul fast float %80, %59
  %82 = fmul fast float %80, %60
  %83 = fmul fast float %80, %61
  %84 = fmul fast float %60, %57
  %85 = fmul fast float %61, %56
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %61, %55
  %88 = fmul fast float %59, %57
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %59, %56
  %91 = fmul fast float %60, %55
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %86, %58
  %94 = fmul fast float %89, %58
  %95 = fmul fast float %92, %58
  %96 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %97 = bitcast float %96 to i32
  %98 = ashr i32 %97, 1
  %99 = sub nsw i32 1597250115, %98
  %100 = bitcast i32 %99 to float
  %101 = fmul fast float %100, %48
  %102 = fmul fast float %100, %49
  %103 = fmul fast float %100, %50
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 3
  %107 = fmul fast float %74, 2.000000e+00
  %108 = fmul fast float %107, %105
  %109 = fmul fast float %75, 2.000000e+00
  %110 = fmul fast float %109, %106
  %111 = fsub fast float 1.000000e+00, %108
  %112 = fsub fast float 1.000000e+00, %110
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fmul fast float %111, %114
  %118 = fmul fast float %111, %115
  %119 = fmul fast float %111, %116
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %112, %121
  %125 = fmul fast float %112, %122
  %126 = fmul fast float %112, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fadd fast float %124, %128
  %132 = fadd fast float %131, %117
  %133 = fadd fast float %125, %129
  %134 = fadd fast float %133, %118
  %135 = fadd fast float %126, %130
  %136 = fadd fast float %135, %119
  %137 = fmul fast float %132, %69
  %138 = fmul fast float %134, %69
  %139 = fmul fast float %136, %69
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %142 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %143 = fmul fast float %141, %74
  %144 = fmul fast float %142, %75
  %145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %146 = extractvalue %dx.types.ResRet.i32 %145, 0
  %147 = and i32 %146, 114688
  %148 = icmp ne i32 %147, 0
  %149 = select i1 %148, float %143, float 0.000000e+00
  %150 = select i1 %148, float %144, float 0.000000e+00
  %151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %10, %dx.types.Handle %37, float %149, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = fmul fast float %152, 2.550000e+02
  %154 = fptoui float %153 to i32
  %155 = select i1 %148, i32 %154, i32 0
  %156 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.i32 %156, 3
  %158 = and i32 %157, 3
  %159 = icmp ne i32 %158, 0
  %160 = and i32 %157, 4
  %161 = icmp ne i32 %160, 0
  %162 = and i1 %159, %161
  br i1 %162, label %163, label %172

; <label>:163                                     ; preds = %0
  %164 = fmul fast float %106, %75
  %165 = fmul fast float %105, %74
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %165, float %164, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fsub fast float 1.000000e+00, %167
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fcmp fast olt float %168, %170
  br label %180

; <label>:172                                     ; preds = %0
  %173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %174 = extractvalue %dx.types.CBufRet.i32 %173, 3
  %175 = and i32 %174, 3
  %176 = icmp ne i32 %175, 0
  %177 = and i32 %174, 4
  %178 = icmp eq i32 %177, 0
  %179 = and i1 %176, %178
  br label %180

; <label>:180                                     ; preds = %172, %163
  %181 = phi i1 [ %171, %163 ], [ %179, %172 ]
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 2
  %184 = fmul fast float %183, 0x3FE3C6EF40000000
  %185 = frem fast float %74, 2.560000e+02
  %186 = frem fast float %75, 2.560000e+02
  %187 = fptoui float %185 to i32
  %188 = fptoui float %186 to i32
  %189 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %187, i32 %188, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = extractvalue %dx.types.ResRet.f32 %189, 1
  %192 = fadd fast float %190, %184
  %193 = fadd fast float %191, %184
  %194 = call float @dx.op.unary.f32(i32 22, float %192)  ; Frc(value)
  %195 = call float @dx.op.unary.f32(i32 22, float %193)  ; Frc(value)
  %196 = add i32 %40, 156
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = shl i32 %198, 4
  %200 = and i32 %199, 32752
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %198, 7
  %203 = and i32 %202, 32752
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = lshr i32 %198, 22
  %206 = shl nuw nsw i32 %205, 5
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = add i32 %40, 216
  %209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %210 = extractvalue %dx.types.ResRet.i32 %209, 0
  %211 = and i32 %210, 255
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F70101020000000
  %214 = lshr i32 %210, 8
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = lshr i32 %210, 16
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = add i32 %40, 36
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 65535
  %226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %225)  ; LegacyF16ToF32(value)
  %227 = lshr i32 %224, 16
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = add i32 %40, 288
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 65535
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %231, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = fmul fast float %233, 0x3F50624DE0000000
  %237 = fmul fast float %235, 0x3F50624DE0000000
  %238 = add i32 %40, 172
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = shl i32 %240, 4
  %242 = and i32 %241, 32752
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %240, 7
  %245 = and i32 %244, 32752
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = lshr i32 %240, 22
  %248 = shl nuw nsw i32 %247, 5
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = add i32 %40, 232
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 255
  %254 = uitofp i32 %253 to float
  %255 = fmul fast float %254, 0x3F70101020000000
  %256 = lshr i32 %252, 8
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %252, 16
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = add i32 %40, 52
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 65535
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = lshr i32 %266, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = add i32 %40, 304
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %273, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = fmul fast float %275, 0x3F50624DE0000000
  %279 = fmul fast float %277, 0x3F50624DE0000000
  %280 = add i32 %40, 188
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = shl i32 %282, 4
  %284 = and i32 %283, 32752
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %282, 7
  %287 = and i32 %286, 32752
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = lshr i32 %282, 22
  %290 = shl nuw nsw i32 %289, 5
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = add i32 %40, 248
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %296, 0x3F70101020000000
  %298 = lshr i32 %294, 8
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %294, 16
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = add i32 %40, 68
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 65535
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = lshr i32 %308, 16
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = add i32 %40, 320
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = fmul fast float %317, 0x3F50624DE0000000
  %321 = fmul fast float %319, 0x3F50624DE0000000
  %322 = add i32 %40, 204
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = shl i32 %324, 4
  %326 = and i32 %325, 32752
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %324, 7
  %329 = and i32 %328, 32752
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = lshr i32 %324, 22
  %332 = shl nuw nsw i32 %331, 5
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = add i32 %40, 264
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %336, 8
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %336, 16
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = add i32 %40, 84
  %349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %348, i32 undef)  ; BufferLoad(srv,index,wot)
  %350 = extractvalue %dx.types.ResRet.i32 %349, 0
  %351 = and i32 %350, 65535
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = lshr i32 %350, 16
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = add i32 %40, 336
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 65535
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = lshr i32 %357, 16
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = fmul fast float %359, 0x3F50624DE0000000
  %363 = fmul fast float %361, 0x3F50624DE0000000
  %364 = add i32 %40, 348
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 32
  %368 = icmp eq i32 %367, 0
  %369 = and i32 %366, 64
  %370 = icmp eq i32 %369, 0
  %371 = and i32 %366, 128
  %372 = icmp eq i32 %371, 0
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 2
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %390, label %377

; <label>:377                                     ; preds = %180
  %378 = add i32 %40, 472
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = add i32 %380, 0
  %382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %382, %dx.types.Handle %71, float %62, float %63, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  %385 = extractvalue %dx.types.ResRet.f32 %383, 1
  %386 = extractvalue %dx.types.ResRet.f32 %383, 2
  %387 = fmul fast float %384, %64
  %388 = fmul fast float %385, %65
  %389 = fmul fast float %386, %66
  br label %390

; <label>:390                                     ; preds = %377, %180
  %391 = phi float [ %66, %180 ], [ %389, %377 ]
  %392 = phi float [ %65, %180 ], [ %388, %377 ]
  %393 = phi float [ %64, %180 ], [ %387, %377 ]
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = and i32 %395, 2
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %417, label %398

; <label>:398                                     ; preds = %390
  %399 = add i32 %40, 44
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 1
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %393, float 1.000000e+00
  %405 = add i32 %40, 60
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 1
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %392, float 1.000000e+00
  %411 = add i32 %40, 76
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %391, float 1.000000e+00
  br label %417

; <label>:417                                     ; preds = %398, %390
  %418 = phi float [ %391, %390 ], [ %416, %398 ]
  %419 = phi float [ %392, %390 ], [ %410, %398 ]
  %420 = phi float [ %393, %390 ], [ %404, %398 ]
  %421 = lshr i32 %395, 20
  %422 = and i32 %421, 3
  %423 = add nuw nsw i32 %422, 1
  %424 = add i32 %40, 24
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = add i32 %40, 28
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = or i32 %429, %426
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %890, label %432

; <label>:432                                     ; preds = %417
  %433 = and i32 %426, 262144
  %434 = icmp ne i32 %433, 0
  %435 = select i1 %434, float %42, float 1.000000e+00
  %436 = select i1 %434, float %43, float 0.000000e+00
  %437 = select i1 %434, float %44, float 0.000000e+00
  %438 = select i1 %434, float %45, float 1.000000e+00
  %439 = select i1 %434, float %46, float %62
  %440 = select i1 %434, float %47, float %63
  %441 = add i32 %40, 284
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = lshr i32 %443, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = fmul fast float %445, 0x3F50624DE0000000
  %447 = add i32 %40, 88
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 16
  %451 = and i32 %450, 255
  %452 = lshr i32 %449, 24
  %453 = add i32 %40, 292
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = and i32 %455, 65535
  %457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %456)  ; LegacyF16ToF32(value)
  %458 = lshr i32 %455, 16
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = add i32 %40, 32
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = lshr i32 %462, 22
  %464 = shl nuw nsw i32 %463, 5
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = shl i32 %462, 4
  %467 = and i32 %466, 32752
  %468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %467)  ; LegacyF16ToF32(value)
  %469 = lshr i32 %462, 7
  %470 = and i32 %469, 32752
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %473 = extractvalue %dx.types.CBufRet.f32 %472, 3
  %474 = fmul fast float %473, 1.000000e+03
  %475 = fmul fast float %236, %474
  %476 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %477 = fadd fast float %476, %226
  %478 = fmul fast float %237, %474
  %479 = call float @dx.op.unary.f32(i32 22, float %478)  ; Frc(value)
  %480 = fadd fast float %479, %228
  %481 = fmul fast float %446, %474
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fmul fast float %482, 0x401921FB60000000
  %484 = fadd fast float %483, %465
  %485 = call float @dx.op.unary.f32(i32 13, float %484)  ; Sin(value)
  %486 = call float @dx.op.unary.f32(i32 12, float %484)  ; Cos(value)
  %487 = fsub fast float -0.000000e+00, %485
  %488 = fadd fast float %439, -5.000000e-01
  %489 = fadd fast float %440, -5.000000e-01
  %490 = fmul fast float %457, %488
  %491 = fmul fast float %459, %489
  %492 = fadd fast float %490, 5.000000e-01
  %493 = fadd fast float %491, 5.000000e-01
  %494 = fmul fast float %468, %492
  %495 = fmul fast float %471, %493
  %496 = fmul fast float %486, %494
  %497 = call float @dx.op.tertiary.f32(i32 46, float %487, float %495, float %496)  ; FMad(a,b,c)
  %498 = fmul fast float %485, %494
  %499 = call float @dx.op.tertiary.f32(i32 46, float %486, float %495, float %498)  ; FMad(a,b,c)
  %500 = fadd fast float %477, %497
  %501 = fadd fast float %480, %499
  %502 = icmp ugt i32 %451, 1
  %503 = icmp ugt i32 %449, 33554431
  %504 = or i1 %503, %502
  br i1 %504, label %505, label %530

; <label>:505                                     ; preds = %432
  %506 = add i32 %40, 228
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %506, i32 undef)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = lshr i32 %508, 16
  %510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %509)  ; LegacyF16ToF32(value)
  %511 = fmul fast float %473, %510
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = mul nuw nsw i32 %451, %452
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %512, %514
  %516 = call float @dx.op.unary.f32(i32 27, float %515)  ; Round_ni(value)
  %517 = fptoui float %516 to i32
  %518 = urem i32 %517, %451
  %519 = udiv i32 %517, %452
  %520 = call float @dx.op.unary.f32(i32 22, float %500)  ; Frc(value)
  %521 = call float @dx.op.unary.f32(i32 22, float %501)  ; Frc(value)
  %522 = uitofp i32 %518 to float
  %523 = uitofp i32 %519 to float
  %524 = fadd fast float %520, %522
  %525 = fadd fast float %521, %523
  %526 = uitofp i32 %451 to float
  %527 = uitofp i32 %452 to float
  %528 = fdiv fast float %524, %526
  %529 = fdiv fast float %525, %527
  br label %530

; <label>:530                                     ; preds = %505, %432
  %531 = phi float [ %528, %505 ], [ %500, %432 ]
  %532 = phi float [ %529, %505 ], [ %501, %432 ]
  %533 = and i32 %426, 16
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %731, label %535

; <label>:535                                     ; preds = %530
  %536 = add i32 %40, 360
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = add i32 %538, 0
  %540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %541 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %540, %dx.types.Handle %70, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %542 = extractvalue %dx.types.ResRet.f32 %541, 0
  %543 = extractvalue %dx.types.ResRet.f32 %541, 1
  %544 = extractvalue %dx.types.ResRet.f32 %541, 2
  %545 = extractvalue %dx.types.ResRet.f32 %541, 3
  %546 = and i32 %449, 255
  %547 = uitofp i32 %546 to float
  %548 = lshr i32 %449, 8
  %549 = and i32 %548, 255
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %545, %547
  %552 = fadd fast float %551, %550
  %553 = fmul fast float %552, 0x3F70101000000000
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = and i32 %555, 512
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %566, label %558

; <label>:558                                     ; preds = %535
  %559 = add i32 %40, 440
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %559, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = add i32 %561, 0
  %563 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %562, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %564 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %563, %dx.types.Handle %71, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %565 = extractvalue %dx.types.ResRet.f32 %564, 0
  br label %566

; <label>:566                                     ; preds = %558, %535
  %567 = phi float [ %565, %558 ], [ 1.000000e+00, %535 ]
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 33554432
  %571 = icmp eq i32 %570, 0
  br i1 %571, label %678, label %572

; <label>:572                                     ; preds = %566
  %573 = add i32 %40, 224
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 65535
  %577 = call float @dx.op.legacyF16ToF32(i32 131, i32 %576)  ; LegacyF16ToF32(value)
  %578 = lshr i32 %575, 16
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = add i32 %40, 228
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 65535
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %208, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = lshr i32 %586, 24
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = and i32 %586, 255
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = lshr i32 %586, 8
  %594 = and i32 %593, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %586, 16
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = add i32 %40, 220
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = lshr i32 %603, 24
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = and i32 %603, 255
  %608 = uitofp i32 %607 to float
  %609 = fmul fast float %608, 0x3F70101020000000
  %610 = lshr i32 %603, 8
  %611 = and i32 %610, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %603, 16
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = bitcast float %542 to i32
  %619 = ashr i32 %618, 1
  %620 = sub nsw i32 1597463174, %619
  %621 = bitcast i32 %620 to float
  %622 = fmul fast float %542, 5.000000e-01
  %623 = fmul fast float %621, %621
  %624 = fmul fast float %623, %622
  %625 = fsub fast float 1.500000e+00, %624
  %626 = fmul fast float %621, %542
  %627 = fmul fast float %626, %625
  %628 = bitcast float %543 to i32
  %629 = ashr i32 %628, 1
  %630 = sub nsw i32 1597463174, %629
  %631 = bitcast i32 %630 to float
  %632 = fmul fast float %543, 5.000000e-01
  %633 = fmul fast float %631, %631
  %634 = fmul fast float %633, %632
  %635 = fsub fast float 1.500000e+00, %634
  %636 = fmul fast float %631, %543
  %637 = fmul fast float %636, %635
  %638 = bitcast float %544 to i32
  %639 = ashr i32 %638, 1
  %640 = sub nsw i32 1597463174, %639
  %641 = bitcast i32 %640 to float
  %642 = fmul fast float %544, 5.000000e-01
  %643 = fmul fast float %641, %641
  %644 = fmul fast float %643, %642
  %645 = fsub fast float 1.500000e+00, %644
  %646 = fmul fast float %641, %544
  %647 = fmul fast float %646, %645
  %648 = fsub fast float %627, %609
  %649 = fsub fast float %637, %613
  %650 = fsub fast float %647, %617
  %651 = fmul fast float %648, %577
  %652 = fmul fast float %649, %579
  %653 = fmul fast float %650, %584
  %654 = fadd fast float %651, %592
  %655 = fadd fast float %652, %596
  %656 = fadd fast float %653, %600
  %657 = call float @dx.op.unary.f32(i32 7, float %654)  ; Saturate(value)
  %658 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %659 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %660 = fmul fast float %657, %657
  %661 = fmul fast float %658, %658
  %662 = fmul fast float %659, %659
  %663 = fsub fast float %660, %542
  %664 = fsub fast float %661, %543
  %665 = fsub fast float %662, %544
  %666 = fmul fast float %663, %567
  %667 = fmul fast float %664, %567
  %668 = fmul fast float %665, %567
  %669 = fadd fast float %666, %542
  %670 = fadd fast float %667, %543
  %671 = fadd fast float %668, %544
  %672 = fadd fast float %589, %553
  %673 = fsub fast float %672, %606
  %674 = call float @dx.op.unary.f32(i32 7, float %673)  ; Saturate(value)
  %675 = fsub fast float %674, %553
  %676 = fmul fast float %675, %567
  %677 = fadd fast float %676, %553
  br label %731

; <label>:678                                     ; preds = %566
  %679 = and i32 %569, 134217728
  %680 = icmp eq i32 %679, 0
  br i1 %680, label %715, label %681

; <label>:681                                     ; preds = %678
  %682 = call float @dx.op.unary.f32(i32 24, float %213)  ; Sqrt(value)
  %683 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %684 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %685 = fadd fast float %682, -5.000000e-01
  %686 = fadd fast float %683, -5.000000e-01
  %687 = fadd fast float %684, -5.000000e-01
  %688 = fmul fast float %685, %567
  %689 = fmul fast float %686, %567
  %690 = fmul fast float %687, %567
  %691 = fadd fast float %688, 5.000000e-01
  %692 = fadd fast float %689, 5.000000e-01
  %693 = fadd fast float %690, 5.000000e-01
  %694 = call float @dx.op.unary.f32(i32 24, float %542)  ; Sqrt(value)
  %695 = call float @dx.op.unary.f32(i32 24, float %543)  ; Sqrt(value)
  %696 = call float @dx.op.unary.f32(i32 24, float %544)  ; Sqrt(value)
  %697 = fmul fast float %691, 2.000000e+00
  %698 = fsub fast float 1.000000e+00, %697
  %699 = fmul fast float %698, %694
  %700 = fadd fast float %699, %697
  %701 = fmul fast float %700, %694
  %702 = fmul fast float %692, 2.000000e+00
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %695
  %705 = fadd fast float %704, %702
  %706 = fmul fast float %705, %695
  %707 = fmul fast float %693, 2.000000e+00
  %708 = fsub fast float 1.000000e+00, %707
  %709 = fmul fast float %708, %696
  %710 = fadd fast float %709, %707
  %711 = fmul fast float %710, %696
  %712 = fmul fast float %701, %701
  %713 = fmul fast float %706, %706
  %714 = fmul fast float %711, %711
  br label %731

; <label>:715                                     ; preds = %678
  %716 = fmul fast float %213, %213
  %717 = fmul fast float %217, %217
  %718 = fmul fast float %221, %221
  %719 = fadd fast float %716, -1.000000e+00
  %720 = fadd fast float %717, -1.000000e+00
  %721 = fadd fast float %718, -1.000000e+00
  %722 = fmul fast float %567, %719
  %723 = fmul fast float %567, %720
  %724 = fmul fast float %567, %721
  %725 = fadd fast float %722, 1.000000e+00
  %726 = fadd fast float %723, 1.000000e+00
  %727 = fadd fast float %724, 1.000000e+00
  %728 = fmul fast float %725, %542
  %729 = fmul fast float %726, %543
  %730 = fmul fast float %727, %544
  br label %731

; <label>:731                                     ; preds = %715, %681, %572, %530
  %732 = phi float [ %677, %572 ], [ %553, %681 ], [ %553, %715 ], [ 0x3FA23C0BE0000000, %530 ]
  %733 = phi float [ %669, %572 ], [ %712, %681 ], [ %728, %715 ], [ 1.000000e+00, %530 ]
  %734 = phi float [ %670, %572 ], [ %713, %681 ], [ %729, %715 ], [ 1.000000e+00, %530 ]
  %735 = phi float [ %671, %572 ], [ %714, %681 ], [ %730, %715 ], [ 1.000000e+00, %530 ]
  %736 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %737 = extractvalue %dx.types.CBufRet.i32 %736, 1
  %738 = and i32 %737, 1
  %739 = icmp ne i32 %738, 0
  %740 = add i32 %40, 356
  %741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %740, i32 undef)  ; BufferLoad(srv,index,wot)
  %742 = extractvalue %dx.types.ResRet.i32 %741, 0
  %743 = and i32 %742, 32
  %744 = icmp ne i32 %743, 0
  %745 = and i1 %739, %744
  %746 = select i1 %745, float 1.000000e+00, float %733
  %747 = select i1 %745, float 0x3FD3333340000000, float %734
  %748 = select i1 %745, float 0x3FD3333340000000, float %735
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 32
  %752 = icmp eq i32 %751, 0
  br i1 %752, label %825, label %753

; <label>:753                                     ; preds = %731
  %754 = add i32 %40, 92
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %754, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = add i32 %40, 376
  %758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.i32 %758, 0
  %760 = add i32 %759, 0
  %761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %762 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %761, %dx.types.Handle %70, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %763 = extractvalue %dx.types.ResRet.f32 %762, 0
  %764 = extractvalue %dx.types.ResRet.f32 %762, 1
  %765 = extractvalue %dx.types.ResRet.f32 %762, 2
  %766 = extractvalue %dx.types.ResRet.f32 %762, 3
  %767 = and i32 %756, 255
  %768 = uitofp i32 %767 to float
  %769 = lshr i32 %756, 8
  %770 = and i32 %769, 255
  %771 = uitofp i32 %770 to float
  %772 = lshr i32 %756, 16
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101000000000
  %776 = fmul fast float %763, %768
  %777 = fadd fast float %776, %771
  %778 = fmul fast float %777, 0x3F70101000000000
  %779 = fadd fast float %764, -5.000000e-01
  %780 = fadd fast float %766, -5.000000e-01
  %781 = fmul fast float %779, %775
  %782 = fmul fast float %780, %775
  %783 = fadd fast float %781, 5.000000e-01
  %784 = fadd fast float %782, 5.000000e-01
  %785 = fmul fast float %783, 2.000000e+00
  %786 = fadd fast float %785, -1.000000e+00
  %787 = fmul fast float %784, 2.000000e+00
  %788 = fadd fast float %787, -1.000000e+00
  %789 = fadd fast float %786, %788
  %790 = fmul fast float %789, 5.000000e-01
  %791 = fsub fast float %786, %788
  %792 = fmul fast float %791, 5.000000e-01
  %793 = call float @dx.op.unary.f32(i32 6, float %790)  ; FAbs(value)
  %794 = fsub fast float 1.000000e+00, %793
  %795 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %796 = fsub fast float %794, %795
  %797 = call float @dx.op.dot3.f32(i32 55, float %790, float %792, float %796, float %790, float %792, float %796)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = call float @dx.op.unary.f32(i32 25, float %797)  ; Rsqrt(value)
  %799 = fmul fast float %790, %798
  %800 = fmul fast float %792, %798
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 67108864
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %821, label %805

; <label>:805                                     ; preds = %753
  %806 = add i32 %40, 280
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %441, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = lshr i32 %808, 16
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = fsub fast float %778, %816
  %818 = fmul fast float %817, %810
  %819 = fadd fast float %818, %814
  %820 = call float @dx.op.unary.f32(i32 7, float %819)  ; Saturate(value)
  br label %821

; <label>:821                                     ; preds = %805, %753
  %822 = phi float [ %820, %805 ], [ %778, %753 ]
  %823 = call float @dx.op.dot2.f32(i32 54, float %799, float %800, float %435, float %436)  ; Dot2(ax,ay,bx,by)
  %824 = call float @dx.op.dot2.f32(i32 54, float %799, float %800, float %437, float %438)  ; Dot2(ax,ay,bx,by)
  br label %825

; <label>:825                                     ; preds = %821, %731
  %826 = phi float [ %822, %821 ], [ 0x3FD6666660000000, %731 ]
  %827 = phi float [ %823, %821 ], [ 0.000000e+00, %731 ]
  %828 = phi float [ %824, %821 ], [ 0.000000e+00, %731 ]
  %829 = phi float [ %765, %821 ], [ 1.000000e+00, %731 ]
  %830 = add i32 %40, 160
  %831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.i32 %831, 0
  %833 = lshr i32 %832, 22
  %834 = shl nuw nsw i32 %833, 5
  %835 = call float @dx.op.legacyF16ToF32(i32 131, i32 %834)  ; LegacyF16ToF32(value)
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = and i32 %837, 64
  %839 = icmp eq i32 %838, 0
  br i1 %839, label %873, label %840

; <label>:840                                     ; preds = %825
  %841 = add i32 %40, 392
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = add i32 %843, 0
  %845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 131072
  %849 = icmp eq i32 %848, 0
  %850 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %845, %dx.types.Handle %70, float %531, float %532, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %851 = extractvalue %dx.types.ResRet.f32 %850, 0
  %852 = extractvalue %dx.types.ResRet.f32 %850, 1
  %853 = extractvalue %dx.types.ResRet.f32 %850, 2
  %854 = fmul fast float %851, %201
  %855 = fmul fast float %852, %204
  %856 = fmul fast float %853, %207
  br i1 %849, label %863, label %857

; <label>:857                                     ; preds = %840
  %858 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %859 = extractvalue %dx.types.CBufRet.f32 %858, 0
  %860 = fmul fast float %859, %854
  %861 = fmul fast float %859, %855
  %862 = fmul fast float %859, %856
  br label %863

; <label>:863                                     ; preds = %857, %840
  %864 = phi float [ %860, %857 ], [ %854, %840 ]
  %865 = phi float [ %861, %857 ], [ %855, %840 ]
  %866 = phi float [ %862, %857 ], [ %856, %840 ]
  %867 = fmul fast float %864, %835
  %868 = select i1 %181, float %867, float %864
  %869 = call float @dx.op.dot3.f32(i32 55, float %868, float %865, float %866, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = select i1 %181, float 0.000000e+00, float %864
  %871 = select i1 %181, float %869, float %865
  %872 = select i1 %181, float 0.000000e+00, float %866
  br label %873

; <label>:873                                     ; preds = %863, %825
  %874 = phi float [ %870, %863 ], [ 0.000000e+00, %825 ]
  %875 = phi float [ %871, %863 ], [ 0.000000e+00, %825 ]
  %876 = phi float [ %872, %863 ], [ 0.000000e+00, %825 ]
  %877 = add i32 %40, 96
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = lshr i32 %879, 8
  %883 = and i32 %882, 255
  %884 = uitofp i32 %883 to float
  %885 = call float @dx.op.dot3.f32(i32 55, float %746, float %747, float %748, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %886 = fmul fast float %884, %885
  %887 = fadd fast float %886, %881
  %888 = fmul fast float %887, 0x3F70101020000000
  %889 = call float @dx.op.unary.f32(i32 7, float %888)  ; Saturate(value)
  br label %890

; <label>:890                                     ; preds = %873, %417
  %891 = phi float [ 0.000000e+00, %417 ], [ %827, %873 ]
  %892 = phi float [ 0.000000e+00, %417 ], [ %828, %873 ]
  %893 = phi float [ 0.000000e+00, %417 ], [ %874, %873 ]
  %894 = phi float [ 0.000000e+00, %417 ], [ %875, %873 ]
  %895 = phi float [ 0.000000e+00, %417 ], [ %876, %873 ]
  %896 = phi float [ 0.000000e+00, %417 ], [ %746, %873 ]
  %897 = phi float [ 0.000000e+00, %417 ], [ %747, %873 ]
  %898 = phi float [ 0.000000e+00, %417 ], [ %748, %873 ]
  %899 = phi float [ 0.000000e+00, %417 ], [ %732, %873 ]
  %900 = phi float [ 0.000000e+00, %417 ], [ 1.000000e+00, %873 ]
  %901 = phi float [ 0.000000e+00, %417 ], [ %826, %873 ]
  %902 = phi float [ 0.000000e+00, %417 ], [ %829, %873 ]
  %903 = phi float [ 0.000000e+00, %417 ], [ %889, %873 ]
  br i1 %368, label %1745, label %904

; <label>:904                                     ; preds = %890
  %905 = icmp ult i32 %423, 2
  %906 = add i32 %40, 40
  %907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %908 = extractvalue %dx.types.ResRet.i32 %907, 0
  %909 = add i32 %40, 44
  %910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %909, i32 undef)  ; BufferLoad(srv,index,wot)
  %911 = extractvalue %dx.types.ResRet.i32 %910, 0
  %912 = or i32 %911, %908
  %913 = icmp eq i32 %912, 0
  br i1 %913, label %1745, label %914

; <label>:914                                     ; preds = %904
  %915 = and i32 %908, 262144
  %916 = icmp ne i32 %915, 0
  %917 = select i1 %916, float %42, float 1.000000e+00
  %918 = select i1 %916, float %43, float 0.000000e+00
  %919 = select i1 %916, float %44, float 0.000000e+00
  %920 = select i1 %916, float %45, float 1.000000e+00
  %921 = select i1 %916, float %46, float %62
  %922 = select i1 %916, float %47, float %63
  %923 = add i32 %40, 300
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = lshr i32 %925, 16
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = fmul fast float %927, 0x3F50624DE0000000
  %929 = add i32 %40, 104
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = lshr i32 %931, 16
  %933 = and i32 %932, 255
  %934 = lshr i32 %931, 24
  %935 = add i32 %40, 308
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = and i32 %937, 65535
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = lshr i32 %937, 16
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = add i32 %40, 48
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = lshr i32 %944, 22
  %946 = shl nuw nsw i32 %945, 5
  %947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %946)  ; LegacyF16ToF32(value)
  %948 = shl i32 %944, 4
  %949 = and i32 %948, 32752
  %950 = call float @dx.op.legacyF16ToF32(i32 131, i32 %949)  ; LegacyF16ToF32(value)
  %951 = lshr i32 %944, 7
  %952 = and i32 %951, 32752
  %953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %952)  ; LegacyF16ToF32(value)
  %954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %955 = extractvalue %dx.types.CBufRet.f32 %954, 3
  %956 = fmul fast float %955, 1.000000e+03
  %957 = fmul fast float %278, %956
  %958 = call float @dx.op.unary.f32(i32 22, float %957)  ; Frc(value)
  %959 = fadd fast float %958, %268
  %960 = fmul fast float %279, %956
  %961 = call float @dx.op.unary.f32(i32 22, float %960)  ; Frc(value)
  %962 = fadd fast float %961, %270
  %963 = fmul fast float %928, %956
  %964 = call float @dx.op.unary.f32(i32 22, float %963)  ; Frc(value)
  %965 = fmul fast float %964, 0x401921FB60000000
  %966 = fadd fast float %965, %947
  %967 = call float @dx.op.unary.f32(i32 13, float %966)  ; Sin(value)
  %968 = call float @dx.op.unary.f32(i32 12, float %966)  ; Cos(value)
  %969 = fsub fast float -0.000000e+00, %967
  %970 = fadd fast float %921, -5.000000e-01
  %971 = fadd fast float %922, -5.000000e-01
  %972 = fmul fast float %939, %970
  %973 = fmul fast float %941, %971
  %974 = fadd fast float %972, 5.000000e-01
  %975 = fadd fast float %973, 5.000000e-01
  %976 = fmul fast float %950, %974
  %977 = fmul fast float %953, %975
  %978 = fmul fast float %968, %976
  %979 = call float @dx.op.tertiary.f32(i32 46, float %969, float %977, float %978)  ; FMad(a,b,c)
  %980 = fmul fast float %967, %976
  %981 = call float @dx.op.tertiary.f32(i32 46, float %968, float %977, float %980)  ; FMad(a,b,c)
  %982 = fadd fast float %959, %979
  %983 = fadd fast float %962, %981
  %984 = icmp ugt i32 %933, 1
  %985 = icmp ugt i32 %931, 33554431
  %986 = or i1 %985, %984
  br i1 %986, label %987, label %1012

; <label>:987                                     ; preds = %914
  %988 = add i32 %40, 244
  %989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %988, i32 undef)  ; BufferLoad(srv,index,wot)
  %990 = extractvalue %dx.types.ResRet.i32 %989, 0
  %991 = lshr i32 %990, 16
  %992 = call float @dx.op.legacyF16ToF32(i32 131, i32 %991)  ; LegacyF16ToF32(value)
  %993 = fmul fast float %955, %992
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = mul nuw nsw i32 %933, %934
  %996 = uitofp i32 %995 to float
  %997 = fmul fast float %994, %996
  %998 = call float @dx.op.unary.f32(i32 27, float %997)  ; Round_ni(value)
  %999 = fptoui float %998 to i32
  %1000 = urem i32 %999, %933
  %1001 = udiv i32 %999, %934
  %1002 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %1003 = call float @dx.op.unary.f32(i32 22, float %983)  ; Frc(value)
  %1004 = uitofp i32 %1000 to float
  %1005 = uitofp i32 %1001 to float
  %1006 = fadd fast float %1002, %1004
  %1007 = fadd fast float %1003, %1005
  %1008 = uitofp i32 %933 to float
  %1009 = uitofp i32 %934 to float
  %1010 = fdiv fast float %1006, %1008
  %1011 = fdiv fast float %1007, %1009
  br label %1012

; <label>:1012                                    ; preds = %987, %914
  %1013 = phi float [ %1010, %987 ], [ %982, %914 ]
  %1014 = phi float [ %1011, %987 ], [ %983, %914 ]
  %1015 = and i32 %908, 16777216
  %1016 = icmp eq i32 %1015, 0
  br i1 %1016, label %1126, label %1017

; <label>:1017                                    ; preds = %1012
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1022 = fadd fast float %1019, %137
  %1023 = fadd fast float %1020, %138
  %1024 = fadd fast float %1021, %139
  %1025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1026 = extractvalue %dx.types.CBufRet.f32 %1025, 0
  %1027 = call float @dx.op.unary.f32(i32 7, float %1026)  ; Saturate(value)
  %1028 = icmp eq i32 %41, 65535
  br i1 %1028, label %1123, label %1029

; <label>:1029                                    ; preds = %1017
  %1030 = lshr i32 %41, 1
  %1031 = shl i32 %1030, 2
  %1032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1031, i32 undef)  ; BufferLoad(srv,index,wot)
  %1033 = extractvalue %dx.types.ResRet.i32 %1032, 0
  %1034 = and i32 %41, 1
  %1035 = icmp ne i32 %1034, 0
  %1036 = lshr i32 %1033, 16
  %1037 = and i32 %1033, 65535
  %1038 = select i1 %1035, i32 %1036, i32 %1037
  %1039 = icmp eq i32 %1038, 65535
  br i1 %1039, label %1119, label %1040

; <label>:1040                                    ; preds = %1029
  %1041 = mul nuw nsw i32 %1038, 40
  %1042 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1041, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.f32 %1042, 0
  %1044 = extractvalue %dx.types.ResRet.f32 %1042, 1
  %1045 = extractvalue %dx.types.ResRet.f32 %1042, 2
  %1046 = add nuw nsw i32 %1041, 12
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = add nuw nsw i32 %1041, 24
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = add nuw nsw i32 %1041, 36
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = fsub fast float %1022, %1043
  %1060 = fsub fast float %1023, %1044
  %1061 = fsub fast float %1024, %1045
  %1062 = fmul fast float %1058, %1059
  %1063 = fmul fast float %1058, %1060
  %1064 = fmul fast float %1058, %1061
  %1065 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1066 = call float @dx.op.unary.f32(i32 27, float %1063)  ; Round_ni(value)
  %1067 = call float @dx.op.unary.f32(i32 27, float %1064)  ; Round_ni(value)
  %1068 = fadd fast float %1065, 5.000000e-01
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = fmul fast float %1068, %1048
  %1072 = fmul fast float %1069, %1049
  %1073 = fmul fast float %1070, %1050
  %1074 = shl i32 %41, 2
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = add i32 %1076, 0
  %1078 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1077, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1079 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  %1080 = call float @dx.op.unary.f32(i32 22, float %1072)  ; Frc(value)
  %1081 = call float @dx.op.unary.f32(i32 22, float %1073)  ; Frc(value)
  %1082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1078, %dx.types.Handle %37, float %1079, float %1080, float %1081, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = fmul fast float %1083, 1.023000e+03
  %1087 = fmul fast float %1084, 1.023000e+03
  %1088 = fmul fast float %1085, 1.023000e+03
  %1089 = fadd fast float %1086, 5.000000e-01
  %1090 = fadd fast float %1087, 5.000000e-01
  %1091 = fadd fast float %1088, 5.000000e-01
  %1092 = call float @dx.op.unary.f32(i32 27, float %1089)  ; Round_ni(value)
  %1093 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1095 = fsub fast float %1062, %1065
  %1096 = fsub fast float %1063, %1066
  %1097 = fsub fast float %1064, %1067
  %1098 = fmul fast float %1095, 7.500000e-01
  %1099 = fmul fast float %1096, 7.500000e-01
  %1100 = fmul fast float %1097, 7.500000e-01
  %1101 = fadd fast float %1065, 1.250000e-01
  %1102 = fadd fast float %1101, %1098
  %1103 = fadd fast float %1102, %1092
  %1104 = fadd fast float %1066, 1.250000e-01
  %1105 = fadd fast float %1104, %1099
  %1106 = fadd fast float %1105, %1093
  %1107 = fadd fast float %1067, 1.250000e-01
  %1108 = fadd fast float %1107, %1100
  %1109 = fadd fast float %1108, %1094
  %1110 = fmul fast float %1103, %1053
  %1111 = fmul fast float %1106, %1054
  %1112 = fmul fast float %1109, %1055
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = add i32 %1114, 0
  %1116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1116, %dx.types.Handle %35, float %1110, float %1111, float %1112, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  br label %1119

; <label>:1119                                    ; preds = %1040, %1029
  %1120 = phi float [ %1118, %1040 ], [ -1.000000e+00, %1029 ]
  %1121 = fadd fast float %1120, %1027
  %1122 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  br label %1123

; <label>:1123                                    ; preds = %1119, %1017
  %1124 = phi float [ %1122, %1119 ], [ %1027, %1017 ]
  %1125 = fmul fast float %1124, %420
  br label %1126

; <label>:1126                                    ; preds = %1123, %1012
  %1127 = phi float [ %1125, %1123 ], [ %420, %1012 ]
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = and i32 %1129, 256
  %1131 = icmp eq i32 %1130, 0
  br i1 %1131, label %1178, label %1132

; <label>:1132                                    ; preds = %1126
  %1133 = add i32 %40, 428
  %1134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1133, i32 undef)  ; BufferLoad(srv,index,wot)
  %1135 = extractvalue %dx.types.ResRet.i32 %1134, 0
  %1136 = add i32 %1135, 0
  %1137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1137, %dx.types.Handle %71, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1139 = extractvalue %dx.types.ResRet.f32 %1138, 0
  %1140 = add i32 %40, 116
  %1141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1140, i32 undef)  ; BufferLoad(srv,index,wot)
  %1142 = extractvalue %dx.types.ResRet.i32 %1141, 0
  %1143 = shl i32 %1142, 4
  %1144 = and i32 %1143, 32752
  %1145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1144)  ; LegacyF16ToF32(value)
  %1146 = lshr i32 %1142, 7
  %1147 = and i32 %1146, 32752
  %1148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1147)  ; LegacyF16ToF32(value)
  %1149 = fsub fast float 1.000000e+00, %1127
  %1150 = call float @dx.op.binary.f32(i32 35, float %1149, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1151 = bitcast float %1127 to i32
  %1152 = sitofp i32 %1151 to float
  %1153 = fadd fast float %1152, 0xC1CFBF8940000000
  %1154 = fmul fast float %1148, %1153
  %1155 = fadd fast float %1154, 0x41CFBF8940000000
  %1156 = fptosi float %1155 to i32
  %1157 = bitcast i32 %1156 to float
  %1158 = bitcast float %1150 to i32
  %1159 = sitofp i32 %1158 to float
  %1160 = fadd fast float %1159, 0xC1CFBF8940000000
  %1161 = fmul fast float %1160, %1148
  %1162 = fadd fast float %1161, 0x41CFBF8940000000
  %1163 = fptosi float %1162 to i32
  %1164 = bitcast i32 %1163 to float
  %1165 = fmul fast float %1157, %1145
  %1166 = fmul fast float %1164, %1145
  %1167 = fsub fast float %1150, %1165
  %1168 = fadd fast float %1166, %1150
  %1169 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1170 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1171 = fsub fast float %1139, %1169
  %1172 = fsub fast float %1170, %1169
  %1173 = bitcast float %1172 to i32
  %1174 = sub nsw i32 2129859010, %1173
  %1175 = bitcast i32 %1174 to float
  %1176 = fmul fast float %1175, %1171
  %1177 = call float @dx.op.unary.f32(i32 7, float %1176)  ; Saturate(value)
  br label %1178

; <label>:1178                                    ; preds = %1132, %1126
  %1179 = phi float [ %1177, %1132 ], [ %1127, %1126 ]
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = and i32 %1181, 128
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1200, label %1184

; <label>:1184                                    ; preds = %1178
  %1185 = add i32 %40, 412
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = add i32 %1187, 0
  %1189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1189, %dx.types.Handle %71, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1193 = extractvalue %dx.types.ResRet.i32 %1192, 0
  %1194 = and i32 %1193, 524288
  %1195 = icmp ne i32 %1194, 0
  %1196 = fcmp fast ogt float %1191, 0x3FE0101020000000
  %1197 = select i1 %1196, float 1.000000e+00, float 0.000000e+00
  %1198 = select i1 %1195, float %1197, float %1191
  %1199 = fmul fast float %1198, %1179
  br label %1200

; <label>:1200                                    ; preds = %1184, %1178
  %1201 = phi float [ %1199, %1184 ], [ %1179, %1178 ]
  %1202 = fcmp fast ult float %1201, 0x3F70101020000000
  br i1 %1202, label %1745, label %1203

; <label>:1203                                    ; preds = %1200
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = and i32 %1205, 16
  %1207 = icmp eq i32 %1206, 0
  br i1 %1207, label %1406, label %1208

; <label>:1208                                    ; preds = %1203
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = add i32 %40, 364
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1211, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = add i32 %1213, 0
  %1215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1215, %dx.types.Handle %70, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1217 = extractvalue %dx.types.ResRet.f32 %1216, 0
  %1218 = extractvalue %dx.types.ResRet.f32 %1216, 1
  %1219 = extractvalue %dx.types.ResRet.f32 %1216, 2
  %1220 = extractvalue %dx.types.ResRet.f32 %1216, 3
  %1221 = and i32 %1210, 255
  %1222 = uitofp i32 %1221 to float
  %1223 = lshr i32 %1210, 8
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = fmul fast float %1220, %1222
  %1227 = fadd fast float %1226, %1225
  %1228 = fmul fast float %1227, 0x3F70101000000000
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 512
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1241, label %1233

; <label>:1233                                    ; preds = %1208
  %1234 = add i32 %40, 444
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = add i32 %1236, 0
  %1238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1239 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1238, %dx.types.Handle %71, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1240 = extractvalue %dx.types.ResRet.f32 %1239, 0
  br label %1241

; <label>:1241                                    ; preds = %1233, %1208
  %1242 = phi float [ %1240, %1233 ], [ 1.000000e+00, %1208 ]
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 33554432
  %1246 = icmp eq i32 %1245, 0
  br i1 %1246, label %1353, label %1247

; <label>:1247                                    ; preds = %1241
  %1248 = add i32 %40, 240
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = and i32 %1250, 65535
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = lshr i32 %1250, 16
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = add i32 %40, 244
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = and i32 %1257, 65535
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = lshr i32 %1261, 24
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = and i32 %1261, 255
  %1266 = uitofp i32 %1265 to float
  %1267 = fmul fast float %1266, 0x3F70101020000000
  %1268 = lshr i32 %1261, 8
  %1269 = and i32 %1268, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F70101020000000
  %1272 = lshr i32 %1261, 16
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1274, 0x3F70101020000000
  %1276 = add i32 %40, 236
  %1277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1278 = extractvalue %dx.types.ResRet.i32 %1277, 0
  %1279 = lshr i32 %1278, 24
  %1280 = uitofp i32 %1279 to float
  %1281 = fmul fast float %1280, 0x3F70101020000000
  %1282 = and i32 %1278, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = fmul fast float %1283, 0x3F70101020000000
  %1285 = lshr i32 %1278, 8
  %1286 = and i32 %1285, 255
  %1287 = uitofp i32 %1286 to float
  %1288 = fmul fast float %1287, 0x3F70101020000000
  %1289 = lshr i32 %1278, 16
  %1290 = and i32 %1289, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F70101020000000
  %1293 = bitcast float %1217 to i32
  %1294 = ashr i32 %1293, 1
  %1295 = sub nsw i32 1597463174, %1294
  %1296 = bitcast i32 %1295 to float
  %1297 = fmul fast float %1217, 5.000000e-01
  %1298 = fmul fast float %1296, %1296
  %1299 = fmul fast float %1298, %1297
  %1300 = fsub fast float 1.500000e+00, %1299
  %1301 = fmul fast float %1296, %1217
  %1302 = fmul fast float %1301, %1300
  %1303 = bitcast float %1218 to i32
  %1304 = ashr i32 %1303, 1
  %1305 = sub nsw i32 1597463174, %1304
  %1306 = bitcast i32 %1305 to float
  %1307 = fmul fast float %1218, 5.000000e-01
  %1308 = fmul fast float %1306, %1306
  %1309 = fmul fast float %1308, %1307
  %1310 = fsub fast float 1.500000e+00, %1309
  %1311 = fmul fast float %1306, %1218
  %1312 = fmul fast float %1311, %1310
  %1313 = bitcast float %1219 to i32
  %1314 = ashr i32 %1313, 1
  %1315 = sub nsw i32 1597463174, %1314
  %1316 = bitcast i32 %1315 to float
  %1317 = fmul fast float %1219, 5.000000e-01
  %1318 = fmul fast float %1316, %1316
  %1319 = fmul fast float %1318, %1317
  %1320 = fsub fast float 1.500000e+00, %1319
  %1321 = fmul fast float %1316, %1219
  %1322 = fmul fast float %1321, %1320
  %1323 = fsub fast float %1302, %1284
  %1324 = fsub fast float %1312, %1288
  %1325 = fsub fast float %1322, %1292
  %1326 = fmul fast float %1323, %1252
  %1327 = fmul fast float %1324, %1254
  %1328 = fmul fast float %1325, %1259
  %1329 = fadd fast float %1326, %1267
  %1330 = fadd fast float %1327, %1271
  %1331 = fadd fast float %1328, %1275
  %1332 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1333 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1334 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1335 = fmul fast float %1332, %1332
  %1336 = fmul fast float %1333, %1333
  %1337 = fmul fast float %1334, %1334
  %1338 = fsub fast float %1335, %1217
  %1339 = fsub fast float %1336, %1218
  %1340 = fsub fast float %1337, %1219
  %1341 = fmul fast float %1338, %1242
  %1342 = fmul fast float %1339, %1242
  %1343 = fmul fast float %1340, %1242
  %1344 = fadd fast float %1341, %1217
  %1345 = fadd fast float %1342, %1218
  %1346 = fadd fast float %1343, %1219
  %1347 = fadd fast float %1264, %1228
  %1348 = fsub fast float %1347, %1281
  %1349 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1350 = fsub fast float %1349, %1228
  %1351 = fmul fast float %1350, %1242
  %1352 = fadd fast float %1351, %1228
  br label %1406

; <label>:1353                                    ; preds = %1241
  %1354 = and i32 %1244, 134217728
  %1355 = icmp eq i32 %1354, 0
  br i1 %1355, label %1390, label %1356

; <label>:1356                                    ; preds = %1353
  %1357 = call float @dx.op.unary.f32(i32 24, float %255)  ; Sqrt(value)
  %1358 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1359 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1360 = fadd fast float %1357, -5.000000e-01
  %1361 = fadd fast float %1358, -5.000000e-01
  %1362 = fadd fast float %1359, -5.000000e-01
  %1363 = fmul fast float %1360, %1242
  %1364 = fmul fast float %1361, %1242
  %1365 = fmul fast float %1362, %1242
  %1366 = fadd fast float %1363, 5.000000e-01
  %1367 = fadd fast float %1364, 5.000000e-01
  %1368 = fadd fast float %1365, 5.000000e-01
  %1369 = call float @dx.op.unary.f32(i32 24, float %1217)  ; Sqrt(value)
  %1370 = call float @dx.op.unary.f32(i32 24, float %1218)  ; Sqrt(value)
  %1371 = call float @dx.op.unary.f32(i32 24, float %1219)  ; Sqrt(value)
  %1372 = fmul fast float %1366, 2.000000e+00
  %1373 = fsub fast float 1.000000e+00, %1372
  %1374 = fmul fast float %1373, %1369
  %1375 = fadd fast float %1374, %1372
  %1376 = fmul fast float %1375, %1369
  %1377 = fmul fast float %1367, 2.000000e+00
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = fmul fast float %1378, %1370
  %1380 = fadd fast float %1379, %1377
  %1381 = fmul fast float %1380, %1370
  %1382 = fmul fast float %1368, 2.000000e+00
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = fmul fast float %1383, %1371
  %1385 = fadd fast float %1384, %1382
  %1386 = fmul fast float %1385, %1371
  %1387 = fmul fast float %1376, %1376
  %1388 = fmul fast float %1381, %1381
  %1389 = fmul fast float %1386, %1386
  br label %1406

; <label>:1390                                    ; preds = %1353
  %1391 = fmul fast float %255, %255
  %1392 = fmul fast float %259, %259
  %1393 = fmul fast float %263, %263
  %1394 = fadd fast float %1391, -1.000000e+00
  %1395 = fadd fast float %1392, -1.000000e+00
  %1396 = fadd fast float %1393, -1.000000e+00
  %1397 = fmul fast float %1242, %1394
  %1398 = fmul fast float %1242, %1395
  %1399 = fmul fast float %1242, %1396
  %1400 = fadd fast float %1397, 1.000000e+00
  %1401 = fadd fast float %1398, 1.000000e+00
  %1402 = fadd fast float %1399, 1.000000e+00
  %1403 = fmul fast float %1400, %1217
  %1404 = fmul fast float %1401, %1218
  %1405 = fmul fast float %1402, %1219
  br label %1406

; <label>:1406                                    ; preds = %1390, %1356, %1247, %1203
  %1407 = phi float [ %1352, %1247 ], [ %1228, %1356 ], [ %1228, %1390 ], [ 0x3FA23C0BE0000000, %1203 ]
  %1408 = phi float [ %1344, %1247 ], [ %1387, %1356 ], [ %1403, %1390 ], [ 1.000000e+00, %1203 ]
  %1409 = phi float [ %1345, %1247 ], [ %1388, %1356 ], [ %1404, %1390 ], [ 1.000000e+00, %1203 ]
  %1410 = phi float [ %1346, %1247 ], [ %1389, %1356 ], [ %1405, %1390 ], [ 1.000000e+00, %1203 ]
  %1411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1412 = extractvalue %dx.types.CBufRet.i32 %1411, 1
  %1413 = and i32 %1412, 1
  %1414 = icmp ne i32 %1413, 0
  %1415 = add i32 %40, 356
  %1416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1415, i32 undef)  ; BufferLoad(srv,index,wot)
  %1417 = extractvalue %dx.types.ResRet.i32 %1416, 0
  %1418 = and i32 %1417, 32
  %1419 = icmp ne i32 %1418, 0
  %1420 = and i1 %1414, %1419
  %1421 = select i1 %1420, float 1.000000e+00, float %1408
  %1422 = select i1 %1420, float 0x3FD3333340000000, float %1409
  %1423 = select i1 %1420, float 0x3FD3333340000000, float %1410
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 32
  %1427 = icmp eq i32 %1426, 0
  br i1 %1427, label %1500, label %1428

; <label>:1428                                    ; preds = %1406
  %1429 = add i32 %40, 108
  %1430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.i32 %1430, 0
  %1432 = add i32 %40, 380
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = add i32 %1434, 0
  %1436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1435, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1437 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1436, %dx.types.Handle %70, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1438 = extractvalue %dx.types.ResRet.f32 %1437, 0
  %1439 = extractvalue %dx.types.ResRet.f32 %1437, 1
  %1440 = extractvalue %dx.types.ResRet.f32 %1437, 2
  %1441 = extractvalue %dx.types.ResRet.f32 %1437, 3
  %1442 = and i32 %1431, 255
  %1443 = uitofp i32 %1442 to float
  %1444 = lshr i32 %1431, 8
  %1445 = and i32 %1444, 255
  %1446 = uitofp i32 %1445 to float
  %1447 = lshr i32 %1431, 16
  %1448 = and i32 %1447, 255
  %1449 = uitofp i32 %1448 to float
  %1450 = fmul fast float %1449, 0x3F70101000000000
  %1451 = fmul fast float %1438, %1443
  %1452 = fadd fast float %1451, %1446
  %1453 = fmul fast float %1452, 0x3F70101000000000
  %1454 = fadd fast float %1439, -5.000000e-01
  %1455 = fadd fast float %1441, -5.000000e-01
  %1456 = fmul fast float %1454, %1450
  %1457 = fmul fast float %1455, %1450
  %1458 = fadd fast float %1456, 5.000000e-01
  %1459 = fadd fast float %1457, 5.000000e-01
  %1460 = fmul fast float %1458, 2.000000e+00
  %1461 = fadd fast float %1460, -1.000000e+00
  %1462 = fmul fast float %1459, 2.000000e+00
  %1463 = fadd fast float %1462, -1.000000e+00
  %1464 = fadd fast float %1461, %1463
  %1465 = fmul fast float %1464, 5.000000e-01
  %1466 = fsub fast float %1461, %1463
  %1467 = fmul fast float %1466, 5.000000e-01
  %1468 = call float @dx.op.unary.f32(i32 6, float %1465)  ; FAbs(value)
  %1469 = fsub fast float 1.000000e+00, %1468
  %1470 = call float @dx.op.unary.f32(i32 6, float %1467)  ; FAbs(value)
  %1471 = fsub fast float %1469, %1470
  %1472 = call float @dx.op.dot3.f32(i32 55, float %1465, float %1467, float %1471, float %1465, float %1467, float %1471)  ; Dot3(ax,ay,az,bx,by,bz)
  %1473 = call float @dx.op.unary.f32(i32 25, float %1472)  ; Rsqrt(value)
  %1474 = fmul fast float %1465, %1473
  %1475 = fmul fast float %1467, %1473
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 67108864
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1496, label %1480

; <label>:1480                                    ; preds = %1428
  %1481 = add i32 %40, 296
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 65535
  %1485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1484)  ; LegacyF16ToF32(value)
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 65535
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = lshr i32 %1483, 16
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = fsub fast float %1453, %1491
  %1493 = fmul fast float %1492, %1485
  %1494 = fadd fast float %1493, %1489
  %1495 = call float @dx.op.unary.f32(i32 7, float %1494)  ; Saturate(value)
  br label %1496

; <label>:1496                                    ; preds = %1480, %1428
  %1497 = phi float [ %1495, %1480 ], [ %1453, %1428 ]
  %1498 = call float @dx.op.dot2.f32(i32 54, float %1474, float %1475, float %917, float %918)  ; Dot2(ax,ay,bx,by)
  %1499 = call float @dx.op.dot2.f32(i32 54, float %1474, float %1475, float %919, float %920)  ; Dot2(ax,ay,bx,by)
  br label %1500

; <label>:1500                                    ; preds = %1496, %1406
  %1501 = phi float [ %1497, %1496 ], [ 0x3FD6666660000000, %1406 ]
  %1502 = phi float [ %1498, %1496 ], [ 0.000000e+00, %1406 ]
  %1503 = phi float [ %1499, %1496 ], [ 0.000000e+00, %1406 ]
  %1504 = phi float [ %1440, %1496 ], [ 1.000000e+00, %1406 ]
  %1505 = add i32 %40, 176
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = lshr i32 %1507, 22
  %1509 = shl nuw nsw i32 %1508, 5
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 64
  %1514 = icmp eq i32 %1513, 0
  br i1 %1514, label %1548, label %1515

; <label>:1515                                    ; preds = %1500
  %1516 = add i32 %40, 396
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1516, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = add i32 %1518, 0
  %1520 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1519, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 131072
  %1524 = icmp eq i32 %1523, 0
  %1525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1520, %dx.types.Handle %70, float %1013, float %1014, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1526 = extractvalue %dx.types.ResRet.f32 %1525, 0
  %1527 = extractvalue %dx.types.ResRet.f32 %1525, 1
  %1528 = extractvalue %dx.types.ResRet.f32 %1525, 2
  %1529 = fmul fast float %1526, %243
  %1530 = fmul fast float %1527, %246
  %1531 = fmul fast float %1528, %249
  br i1 %1524, label %1538, label %1532

; <label>:1532                                    ; preds = %1515
  %1533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1534 = extractvalue %dx.types.CBufRet.f32 %1533, 0
  %1535 = fmul fast float %1534, %1529
  %1536 = fmul fast float %1534, %1530
  %1537 = fmul fast float %1534, %1531
  br label %1538

; <label>:1538                                    ; preds = %1532, %1515
  %1539 = phi float [ %1535, %1532 ], [ %1529, %1515 ]
  %1540 = phi float [ %1536, %1532 ], [ %1530, %1515 ]
  %1541 = phi float [ %1537, %1532 ], [ %1531, %1515 ]
  %1542 = fmul fast float %1539, %1510
  %1543 = select i1 %181, float %1542, float %1539
  %1544 = call float @dx.op.dot3.f32(i32 55, float %1543, float %1540, float %1541, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1545 = select i1 %181, float 0.000000e+00, float %1539
  %1546 = select i1 %181, float %1544, float %1540
  %1547 = select i1 %181, float 0.000000e+00, float %1541
  br label %1548

; <label>:1548                                    ; preds = %1538, %1500
  %1549 = phi float [ %1545, %1538 ], [ 0.000000e+00, %1500 ]
  %1550 = phi float [ %1546, %1538 ], [ 0.000000e+00, %1500 ]
  %1551 = phi float [ %1547, %1538 ], [ 0.000000e+00, %1500 ]
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = add i32 %40, 112
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1554, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 255
  %1558 = uitofp i32 %1557 to float
  %1559 = lshr i32 %1556, 8
  %1560 = and i32 %1559, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = call float @dx.op.dot3.f32(i32 55, float %1421, float %1422, float %1423, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1563 = fmul fast float %1561, %1562
  %1564 = fadd fast float %1563, %1558
  %1565 = fmul fast float %1564, 0x3F70101020000000
  %1566 = call float @dx.op.unary.f32(i32 7, float %1565)  ; Saturate(value)
  br i1 %905, label %1567, label %1575

; <label>:1567                                    ; preds = %1548
  %1568 = fsub fast float 1.000000e+00, %1201
  %1569 = fmul fast float %1568, %896
  %1570 = fmul fast float %1568, %897
  %1571 = fmul fast float %1568, %898
  %1572 = fmul fast float %1568, %893
  %1573 = fmul fast float %1568, %894
  %1574 = fmul fast float %1568, %895
  br label %1575

; <label>:1575                                    ; preds = %1567, %1548
  %1576 = phi float [ %1572, %1567 ], [ %893, %1548 ]
  %1577 = phi float [ %1573, %1567 ], [ %894, %1548 ]
  %1578 = phi float [ %1574, %1567 ], [ %895, %1548 ]
  %1579 = phi float [ %1569, %1567 ], [ %896, %1548 ]
  %1580 = phi float [ %1570, %1567 ], [ %897, %1548 ]
  %1581 = phi float [ %1571, %1567 ], [ %898, %1548 ]
  %1582 = and i32 %1553, 3
  %1583 = icmp eq i32 %1582, 3
  br i1 %1583, label %1662, label %1584

; <label>:1584                                    ; preds = %1575
  %1585 = and i32 %1553, 16
  %1586 = icmp ne i32 %1585, 0
  %1587 = select i1 %1586, float %1201, float 0.000000e+00
  %1588 = icmp eq i32 %1582, 0
  br i1 %1588, label %1589, label %1617

; <label>:1589                                    ; preds = %1584
  %1590 = and i32 %1553, 64
  %1591 = icmp ne i32 %1590, 0
  %1592 = select i1 %1591, float %1201, float 0.000000e+00
  %1593 = fsub fast float %1421, %1579
  %1594 = fsub fast float %1422, %1580
  %1595 = fsub fast float %1423, %1581
  %1596 = fmul fast float %1587, %1593
  %1597 = fmul fast float %1587, %1594
  %1598 = fmul fast float %1587, %1595
  %1599 = fadd fast float %1596, %1579
  %1600 = fadd fast float %1597, %1580
  %1601 = fadd fast float %1598, %1581
  %1602 = fsub fast float %1407, %899
  %1603 = fmul fast float %1587, %1602
  %1604 = fadd fast float %1603, %899
  %1605 = fsub fast float %1549, %1576
  %1606 = fsub fast float %1550, %1577
  %1607 = fsub fast float %1551, %1578
  %1608 = fmul fast float %1592, %1605
  %1609 = fmul fast float %1592, %1606
  %1610 = fmul fast float %1592, %1607
  %1611 = fadd fast float %1608, %1576
  %1612 = fadd fast float %1609, %1577
  %1613 = fadd fast float %1610, %1578
  %1614 = fsub fast float %1566, %903
  %1615 = fmul fast float %1587, %1614
  %1616 = fadd fast float %1615, %903
  br label %1662

; <label>:1617                                    ; preds = %1584
  %1618 = icmp eq i32 %1582, 1
  br i1 %1618, label %1619, label %1632

; <label>:1619                                    ; preds = %1617
  %1620 = fadd fast float %1421, -1.000000e+00
  %1621 = fadd fast float %1422, -1.000000e+00
  %1622 = fadd fast float %1423, -1.000000e+00
  %1623 = fmul fast float %1587, %1620
  %1624 = fmul fast float %1587, %1621
  %1625 = fmul fast float %1587, %1622
  %1626 = fadd fast float %1623, 1.000000e+00
  %1627 = fadd fast float %1624, 1.000000e+00
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fmul fast float %1626, %1579
  %1630 = fmul fast float %1627, %1580
  %1631 = fmul fast float %1628, %1581
  br label %1662

; <label>:1632                                    ; preds = %1617
  %1633 = icmp eq i32 %1582, 2
  br i1 %1633, label %1634, label %1662

; <label>:1634                                    ; preds = %1632
  %1635 = call float @dx.op.unary.f32(i32 24, float %1421)  ; Sqrt(value)
  %1636 = call float @dx.op.unary.f32(i32 24, float %1422)  ; Sqrt(value)
  %1637 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1638 = fadd fast float %1635, -5.000000e-01
  %1639 = fadd fast float %1636, -5.000000e-01
  %1640 = fadd fast float %1637, -5.000000e-01
  %1641 = fmul fast float %1638, %1587
  %1642 = fmul fast float %1639, %1587
  %1643 = fmul fast float %1640, %1587
  %1644 = fadd fast float %1641, 5.000000e-01
  %1645 = fadd fast float %1642, 5.000000e-01
  %1646 = fadd fast float %1643, 5.000000e-01
  %1647 = fmul fast float %1644, 2.000000e+00
  %1648 = fsub fast float 1.000000e+00, %1647
  %1649 = fmul fast float %1648, %1579
  %1650 = fadd fast float %1649, %1647
  %1651 = fmul fast float %1650, %1579
  %1652 = fmul fast float %1645, 2.000000e+00
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = fmul fast float %1653, %1580
  %1655 = fadd fast float %1654, %1652
  %1656 = fmul fast float %1655, %1580
  %1657 = fmul fast float %1646, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1581
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1581
  br label %1662

; <label>:1662                                    ; preds = %1634, %1632, %1619, %1589, %1575
  %1663 = phi float [ %1576, %1575 ], [ %1576, %1634 ], [ %1576, %1632 ], [ %1576, %1619 ], [ %1611, %1589 ]
  %1664 = phi float [ %1577, %1575 ], [ %1577, %1634 ], [ %1577, %1632 ], [ %1577, %1619 ], [ %1612, %1589 ]
  %1665 = phi float [ %1578, %1575 ], [ %1578, %1634 ], [ %1578, %1632 ], [ %1578, %1619 ], [ %1613, %1589 ]
  %1666 = phi float [ %1579, %1575 ], [ %1651, %1634 ], [ %1579, %1632 ], [ %1629, %1619 ], [ %1599, %1589 ]
  %1667 = phi float [ %1580, %1575 ], [ %1656, %1634 ], [ %1580, %1632 ], [ %1630, %1619 ], [ %1600, %1589 ]
  %1668 = phi float [ %1581, %1575 ], [ %1661, %1634 ], [ %1581, %1632 ], [ %1631, %1619 ], [ %1601, %1589 ]
  %1669 = phi float [ %899, %1575 ], [ %899, %1634 ], [ %899, %1632 ], [ %899, %1619 ], [ %1604, %1589 ]
  %1670 = phi float [ %903, %1575 ], [ %903, %1634 ], [ %903, %1632 ], [ %903, %1619 ], [ %1616, %1589 ]
  %1671 = and i32 %1553, 12
  %1672 = icmp eq i32 %1671, 12
  br i1 %1672, label %1745, label %1673

; <label>:1673                                    ; preds = %1662
  %1674 = and i32 %1553, 2097184
  %1675 = icmp eq i32 %1674, 2097184
  %1676 = select i1 %1675, float %1201, float 0.000000e+00
  %1677 = and i32 %1553, 4194336
  %1678 = icmp eq i32 %1677, 4194336
  %1679 = select i1 %1678, float %1201, float 0.000000e+00
  %1680 = and i32 %1553, 8388640
  %1681 = icmp eq i32 %1680, 8388640
  %1682 = select i1 %1681, float %1201, float 0.000000e+00
  %1683 = icmp eq i32 %1671, 0
  br i1 %1683, label %1684, label %1697

; <label>:1684                                    ; preds = %1673
  %1685 = fsub fast float %1502, %891
  %1686 = fsub fast float %1503, %892
  %1687 = fmul fast float %1676, %1685
  %1688 = fmul fast float %1676, %1686
  %1689 = fadd fast float %1687, %891
  %1690 = fadd fast float %1688, %892
  %1691 = fsub fast float %1504, %902
  %1692 = fmul fast float %1679, %1691
  %1693 = fadd fast float %1692, %902
  %1694 = fsub fast float %1501, %901
  %1695 = fmul fast float %1682, %1694
  %1696 = fadd fast float %1695, %901
  br label %1745

; <label>:1697                                    ; preds = %1673
  %1698 = icmp eq i32 %1671, 4
  br i1 %1698, label %1699, label %1731

; <label>:1699                                    ; preds = %1697
  %1700 = fmul fast float %1676, %1502
  %1701 = fmul fast float %1676, %1503
  %1702 = fadd fast float %1700, %891
  %1703 = fadd fast float %1701, %892
  %1704 = call float @dx.op.binary.f32(i32 36, float %902, float %1504)  ; FMin(a,b)
  %1705 = fsub fast float %1704, %902
  %1706 = fmul fast float %1705, %1679
  %1707 = fadd fast float %1706, %902
  %1708 = fadd fast float %1501, %901
  %1709 = fmul fast float %1708, 0x3FF337FAE0000000
  %1710 = fmul fast float %901, %901
  %1711 = fmul fast float %1501, %1501
  %1712 = fadd fast float %1711, %1710
  %1713 = fmul fast float %1712, 0x3FE5152B00000000
  %1714 = fmul fast float %901, 0xBFCC1F85E0000000
  %1715 = fmul fast float %1714, %1501
  %1716 = fadd fast float %1715, 0xBFE1363700000000
  %1717 = fadd fast float %1716, %1709
  %1718 = fsub fast float %1717, %1713
  %1719 = fmul fast float %1708, 0x3FBA6F0D00000000
  %1720 = fmul fast float %1712, 0x3FD0432880000000
  %1721 = fmul fast float %901, 0xBFEF110800000000
  %1722 = fmul fast float %1721, %1501
  %1723 = fadd fast float %1722, 1.000000e+00
  %1724 = fsub fast float %1723, %1719
  %1725 = fadd fast float %1724, %1720
  %1726 = fdiv fast float %1718, %1725
  %1727 = call float @dx.op.unary.f32(i32 7, float %1726)  ; Saturate(value)
  %1728 = fsub fast float %1727, %901
  %1729 = fmul fast float %1728, %1682
  %1730 = fadd fast float %1729, %901
  br label %1745

; <label>:1731                                    ; preds = %1697
  %1732 = icmp eq i32 %1671, 8
  br i1 %1732, label %1733, label %1745

; <label>:1733                                    ; preds = %1731
  %1734 = fmul fast float %1676, %1502
  %1735 = fmul fast float %1676, %1503
  %1736 = fadd fast float %1734, %891
  %1737 = fadd fast float %1735, %892
  %1738 = call float @dx.op.binary.f32(i32 36, float %902, float %1504)  ; FMin(a,b)
  %1739 = fsub fast float %1738, %902
  %1740 = fmul fast float %1739, %1679
  %1741 = fadd fast float %1740, %902
  %1742 = fsub fast float %1501, %901
  %1743 = fmul fast float %1682, %1742
  %1744 = fadd fast float %1743, %901
  br label %1745

; <label>:1745                                    ; preds = %1733, %1731, %1699, %1684, %1662, %1200, %904, %890
  %1746 = phi float [ %891, %1662 ], [ %891, %1200 ], [ %891, %890 ], [ %1736, %1733 ], [ %891, %1731 ], [ %1702, %1699 ], [ %1689, %1684 ], [ %891, %904 ]
  %1747 = phi float [ %892, %1662 ], [ %892, %1200 ], [ %892, %890 ], [ %1737, %1733 ], [ %892, %1731 ], [ %1703, %1699 ], [ %1690, %1684 ], [ %892, %904 ]
  %1748 = phi float [ %1663, %1662 ], [ %893, %1200 ], [ %893, %890 ], [ %1663, %1733 ], [ %1663, %1731 ], [ %1663, %1699 ], [ %1663, %1684 ], [ %893, %904 ]
  %1749 = phi float [ %1664, %1662 ], [ %894, %1200 ], [ %894, %890 ], [ %1664, %1733 ], [ %1664, %1731 ], [ %1664, %1699 ], [ %1664, %1684 ], [ %894, %904 ]
  %1750 = phi float [ %1665, %1662 ], [ %895, %1200 ], [ %895, %890 ], [ %1665, %1733 ], [ %1665, %1731 ], [ %1665, %1699 ], [ %1665, %1684 ], [ %895, %904 ]
  %1751 = phi float [ %1666, %1662 ], [ %896, %1200 ], [ %896, %890 ], [ %1666, %1733 ], [ %1666, %1731 ], [ %1666, %1699 ], [ %1666, %1684 ], [ %896, %904 ]
  %1752 = phi float [ %1667, %1662 ], [ %897, %1200 ], [ %897, %890 ], [ %1667, %1733 ], [ %1667, %1731 ], [ %1667, %1699 ], [ %1667, %1684 ], [ %897, %904 ]
  %1753 = phi float [ %1668, %1662 ], [ %898, %1200 ], [ %898, %890 ], [ %1668, %1733 ], [ %1668, %1731 ], [ %1668, %1699 ], [ %1668, %1684 ], [ %898, %904 ]
  %1754 = phi float [ %1669, %1662 ], [ %899, %1200 ], [ %899, %890 ], [ %1669, %1733 ], [ %1669, %1731 ], [ %1669, %1699 ], [ %1669, %1684 ], [ %899, %904 ]
  %1755 = phi float [ %901, %1662 ], [ %901, %1200 ], [ %901, %890 ], [ %1744, %1733 ], [ %901, %1731 ], [ %1730, %1699 ], [ %1696, %1684 ], [ %901, %904 ]
  %1756 = phi float [ %902, %1662 ], [ %902, %1200 ], [ %902, %890 ], [ %1741, %1733 ], [ %902, %1731 ], [ %1707, %1699 ], [ %1693, %1684 ], [ %902, %904 ]
  %1757 = phi float [ %1670, %1662 ], [ %903, %1200 ], [ %903, %890 ], [ %1670, %1733 ], [ %1670, %1731 ], [ %1670, %1699 ], [ %1670, %1684 ], [ %903, %904 ]
  br i1 %370, label %2599, label %1758

; <label>:1758                                    ; preds = %1745
  %1759 = icmp ult i32 %423, 3
  %1760 = add i32 %40, 56
  %1761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1762 = extractvalue %dx.types.ResRet.i32 %1761, 0
  %1763 = add i32 %40, 60
  %1764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1763, i32 undef)  ; BufferLoad(srv,index,wot)
  %1765 = extractvalue %dx.types.ResRet.i32 %1764, 0
  %1766 = or i32 %1765, %1762
  %1767 = icmp eq i32 %1766, 0
  br i1 %1767, label %2599, label %1768

; <label>:1768                                    ; preds = %1758
  %1769 = and i32 %1762, 262144
  %1770 = icmp ne i32 %1769, 0
  %1771 = select i1 %1770, float %42, float 1.000000e+00
  %1772 = select i1 %1770, float %43, float 0.000000e+00
  %1773 = select i1 %1770, float %44, float 0.000000e+00
  %1774 = select i1 %1770, float %45, float 1.000000e+00
  %1775 = select i1 %1770, float %46, float %62
  %1776 = select i1 %1770, float %47, float %63
  %1777 = add i32 %40, 316
  %1778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %1779 = extractvalue %dx.types.ResRet.i32 %1778, 0
  %1780 = lshr i32 %1779, 16
  %1781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1780)  ; LegacyF16ToF32(value)
  %1782 = fmul fast float %1781, 0x3F50624DE0000000
  %1783 = add i32 %40, 120
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = lshr i32 %1785, 16
  %1787 = and i32 %1786, 255
  %1788 = lshr i32 %1785, 24
  %1789 = add i32 %40, 324
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = and i32 %1791, 65535
  %1793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1792)  ; LegacyF16ToF32(value)
  %1794 = lshr i32 %1791, 16
  %1795 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1794)  ; LegacyF16ToF32(value)
  %1796 = add i32 %40, 64
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = lshr i32 %1798, 22
  %1800 = shl nuw nsw i32 %1799, 5
  %1801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1800)  ; LegacyF16ToF32(value)
  %1802 = shl i32 %1798, 4
  %1803 = and i32 %1802, 32752
  %1804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1803)  ; LegacyF16ToF32(value)
  %1805 = lshr i32 %1798, 7
  %1806 = and i32 %1805, 32752
  %1807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1806)  ; LegacyF16ToF32(value)
  %1808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1809 = extractvalue %dx.types.CBufRet.f32 %1808, 3
  %1810 = fmul fast float %1809, 1.000000e+03
  %1811 = fmul fast float %320, %1810
  %1812 = call float @dx.op.unary.f32(i32 22, float %1811)  ; Frc(value)
  %1813 = fadd fast float %1812, %310
  %1814 = fmul fast float %321, %1810
  %1815 = call float @dx.op.unary.f32(i32 22, float %1814)  ; Frc(value)
  %1816 = fadd fast float %1815, %312
  %1817 = fmul fast float %1782, %1810
  %1818 = call float @dx.op.unary.f32(i32 22, float %1817)  ; Frc(value)
  %1819 = fmul fast float %1818, 0x401921FB60000000
  %1820 = fadd fast float %1819, %1801
  %1821 = call float @dx.op.unary.f32(i32 13, float %1820)  ; Sin(value)
  %1822 = call float @dx.op.unary.f32(i32 12, float %1820)  ; Cos(value)
  %1823 = fsub fast float -0.000000e+00, %1821
  %1824 = fadd fast float %1775, -5.000000e-01
  %1825 = fadd fast float %1776, -5.000000e-01
  %1826 = fmul fast float %1793, %1824
  %1827 = fmul fast float %1795, %1825
  %1828 = fadd fast float %1826, 5.000000e-01
  %1829 = fadd fast float %1827, 5.000000e-01
  %1830 = fmul fast float %1804, %1828
  %1831 = fmul fast float %1807, %1829
  %1832 = fmul fast float %1822, %1830
  %1833 = call float @dx.op.tertiary.f32(i32 46, float %1823, float %1831, float %1832)  ; FMad(a,b,c)
  %1834 = fmul fast float %1821, %1830
  %1835 = call float @dx.op.tertiary.f32(i32 46, float %1822, float %1831, float %1834)  ; FMad(a,b,c)
  %1836 = fadd fast float %1813, %1833
  %1837 = fadd fast float %1816, %1835
  %1838 = icmp ugt i32 %1787, 1
  %1839 = icmp ugt i32 %1785, 33554431
  %1840 = or i1 %1839, %1838
  br i1 %1840, label %1841, label %1866

; <label>:1841                                    ; preds = %1768
  %1842 = add i32 %40, 260
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = lshr i32 %1844, 16
  %1846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1845)  ; LegacyF16ToF32(value)
  %1847 = fmul fast float %1809, %1846
  %1848 = call float @dx.op.unary.f32(i32 22, float %1847)  ; Frc(value)
  %1849 = mul nuw nsw i32 %1787, %1788
  %1850 = uitofp i32 %1849 to float
  %1851 = fmul fast float %1848, %1850
  %1852 = call float @dx.op.unary.f32(i32 27, float %1851)  ; Round_ni(value)
  %1853 = fptoui float %1852 to i32
  %1854 = urem i32 %1853, %1787
  %1855 = udiv i32 %1853, %1788
  %1856 = call float @dx.op.unary.f32(i32 22, float %1836)  ; Frc(value)
  %1857 = call float @dx.op.unary.f32(i32 22, float %1837)  ; Frc(value)
  %1858 = uitofp i32 %1854 to float
  %1859 = uitofp i32 %1855 to float
  %1860 = fadd fast float %1856, %1858
  %1861 = fadd fast float %1857, %1859
  %1862 = uitofp i32 %1787 to float
  %1863 = uitofp i32 %1788 to float
  %1864 = fdiv fast float %1860, %1862
  %1865 = fdiv fast float %1861, %1863
  br label %1866

; <label>:1866                                    ; preds = %1841, %1768
  %1867 = phi float [ %1864, %1841 ], [ %1836, %1768 ]
  %1868 = phi float [ %1865, %1841 ], [ %1837, %1768 ]
  %1869 = and i32 %1762, 16777216
  %1870 = icmp eq i32 %1869, 0
  br i1 %1870, label %1980, label %1871

; <label>:1871                                    ; preds = %1866
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.CBufRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %1876 = fadd fast float %1873, %137
  %1877 = fadd fast float %1874, %138
  %1878 = fadd fast float %1875, %139
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = icmp eq i32 %41, 65535
  br i1 %1882, label %1977, label %1883

; <label>:1883                                    ; preds = %1871
  %1884 = lshr i32 %41, 1
  %1885 = shl i32 %1884, 2
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = and i32 %41, 1
  %1889 = icmp ne i32 %1888, 0
  %1890 = lshr i32 %1887, 16
  %1891 = and i32 %1887, 65535
  %1892 = select i1 %1889, i32 %1890, i32 %1891
  %1893 = icmp eq i32 %1892, 65535
  br i1 %1893, label %1973, label %1894

; <label>:1894                                    ; preds = %1883
  %1895 = mul nuw nsw i32 %1892, 40
  %1896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.f32 %1896, 0
  %1898 = extractvalue %dx.types.ResRet.f32 %1896, 1
  %1899 = extractvalue %dx.types.ResRet.f32 %1896, 2
  %1900 = add nuw nsw i32 %1895, 12
  %1901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = extractvalue %dx.types.ResRet.f32 %1901, 1
  %1904 = extractvalue %dx.types.ResRet.f32 %1901, 2
  %1905 = add nuw nsw i32 %1895, 24
  %1906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = add nuw nsw i32 %1895, 36
  %1911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = fsub fast float %1876, %1897
  %1914 = fsub fast float %1877, %1898
  %1915 = fsub fast float %1878, %1899
  %1916 = fmul fast float %1912, %1913
  %1917 = fmul fast float %1912, %1914
  %1918 = fmul fast float %1912, %1915
  %1919 = call float @dx.op.unary.f32(i32 27, float %1916)  ; Round_ni(value)
  %1920 = call float @dx.op.unary.f32(i32 27, float %1917)  ; Round_ni(value)
  %1921 = call float @dx.op.unary.f32(i32 27, float %1918)  ; Round_ni(value)
  %1922 = fadd fast float %1919, 5.000000e-01
  %1923 = fadd fast float %1920, 5.000000e-01
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fmul fast float %1922, %1902
  %1926 = fmul fast float %1923, %1903
  %1927 = fmul fast float %1924, %1904
  %1928 = shl i32 %41, 2
  %1929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.i32 %1929, 0
  %1931 = add i32 %1930, 0
  %1932 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1931, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1933 = call float @dx.op.unary.f32(i32 22, float %1925)  ; Frc(value)
  %1934 = call float @dx.op.unary.f32(i32 22, float %1926)  ; Frc(value)
  %1935 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1932, %dx.types.Handle %37, float %1933, float %1934, float %1935, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  %1938 = extractvalue %dx.types.ResRet.f32 %1936, 1
  %1939 = extractvalue %dx.types.ResRet.f32 %1936, 2
  %1940 = fmul fast float %1937, 1.023000e+03
  %1941 = fmul fast float %1938, 1.023000e+03
  %1942 = fmul fast float %1939, 1.023000e+03
  %1943 = fadd fast float %1940, 5.000000e-01
  %1944 = fadd fast float %1941, 5.000000e-01
  %1945 = fadd fast float %1942, 5.000000e-01
  %1946 = call float @dx.op.unary.f32(i32 27, float %1943)  ; Round_ni(value)
  %1947 = call float @dx.op.unary.f32(i32 27, float %1944)  ; Round_ni(value)
  %1948 = call float @dx.op.unary.f32(i32 27, float %1945)  ; Round_ni(value)
  %1949 = fsub fast float %1916, %1919
  %1950 = fsub fast float %1917, %1920
  %1951 = fsub fast float %1918, %1921
  %1952 = fmul fast float %1949, 7.500000e-01
  %1953 = fmul fast float %1950, 7.500000e-01
  %1954 = fmul fast float %1951, 7.500000e-01
  %1955 = fadd fast float %1919, 1.250000e-01
  %1956 = fadd fast float %1955, %1952
  %1957 = fadd fast float %1956, %1946
  %1958 = fadd fast float %1920, 1.250000e-01
  %1959 = fadd fast float %1958, %1953
  %1960 = fadd fast float %1959, %1947
  %1961 = fadd fast float %1921, 1.250000e-01
  %1962 = fadd fast float %1961, %1954
  %1963 = fadd fast float %1962, %1948
  %1964 = fmul fast float %1957, %1907
  %1965 = fmul fast float %1960, %1908
  %1966 = fmul fast float %1963, %1909
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = add i32 %1968, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1970, %dx.types.Handle %35, float %1964, float %1965, float %1966, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  br label %1973

; <label>:1973                                    ; preds = %1894, %1883
  %1974 = phi float [ %1972, %1894 ], [ -1.000000e+00, %1883 ]
  %1975 = fadd fast float %1974, %1881
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  br label %1977

; <label>:1977                                    ; preds = %1973, %1871
  %1978 = phi float [ %1976, %1973 ], [ %1881, %1871 ]
  %1979 = fmul fast float %1978, %419
  br label %1980

; <label>:1980                                    ; preds = %1977, %1866
  %1981 = phi float [ %1979, %1977 ], [ %419, %1866 ]
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = and i32 %1983, 256
  %1985 = icmp eq i32 %1984, 0
  br i1 %1985, label %2032, label %1986

; <label>:1986                                    ; preds = %1980
  %1987 = add i32 %40, 432
  %1988 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1987, i32 undef)  ; BufferLoad(srv,index,wot)
  %1989 = extractvalue %dx.types.ResRet.i32 %1988, 0
  %1990 = add i32 %1989, 0
  %1991 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1990, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1992 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1991, %dx.types.Handle %71, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1993 = extractvalue %dx.types.ResRet.f32 %1992, 0
  %1994 = add i32 %40, 132
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = shl i32 %1996, 4
  %1998 = and i32 %1997, 32752
  %1999 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1998)  ; LegacyF16ToF32(value)
  %2000 = lshr i32 %1996, 7
  %2001 = and i32 %2000, 32752
  %2002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2001)  ; LegacyF16ToF32(value)
  %2003 = fsub fast float 1.000000e+00, %1981
  %2004 = call float @dx.op.binary.f32(i32 35, float %2003, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2005 = bitcast float %1981 to i32
  %2006 = sitofp i32 %2005 to float
  %2007 = fadd fast float %2006, 0xC1CFBF8940000000
  %2008 = fmul fast float %2002, %2007
  %2009 = fadd fast float %2008, 0x41CFBF8940000000
  %2010 = fptosi float %2009 to i32
  %2011 = bitcast i32 %2010 to float
  %2012 = bitcast float %2004 to i32
  %2013 = sitofp i32 %2012 to float
  %2014 = fadd fast float %2013, 0xC1CFBF8940000000
  %2015 = fmul fast float %2014, %2002
  %2016 = fadd fast float %2015, 0x41CFBF8940000000
  %2017 = fptosi float %2016 to i32
  %2018 = bitcast i32 %2017 to float
  %2019 = fmul fast float %2011, %1999
  %2020 = fmul fast float %2018, %1999
  %2021 = fsub fast float %2004, %2019
  %2022 = fadd fast float %2020, %2004
  %2023 = call float @dx.op.unary.f32(i32 7, float %2021)  ; Saturate(value)
  %2024 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2025 = fsub fast float %1993, %2023
  %2026 = fsub fast float %2024, %2023
  %2027 = bitcast float %2026 to i32
  %2028 = sub nsw i32 2129859010, %2027
  %2029 = bitcast i32 %2028 to float
  %2030 = fmul fast float %2029, %2025
  %2031 = call float @dx.op.unary.f32(i32 7, float %2030)  ; Saturate(value)
  br label %2032

; <label>:2032                                    ; preds = %1986, %1980
  %2033 = phi float [ %2031, %1986 ], [ %1981, %1980 ]
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = and i32 %2035, 128
  %2037 = icmp eq i32 %2036, 0
  br i1 %2037, label %2054, label %2038

; <label>:2038                                    ; preds = %2032
  %2039 = add i32 %40, 416
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = add i32 %2041, 0
  %2043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2044 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2043, %dx.types.Handle %71, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2045 = extractvalue %dx.types.ResRet.f32 %2044, 0
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = and i32 %2047, 524288
  %2049 = icmp ne i32 %2048, 0
  %2050 = fcmp fast ogt float %2045, 0x3FE0101020000000
  %2051 = select i1 %2050, float 1.000000e+00, float 0.000000e+00
  %2052 = select i1 %2049, float %2051, float %2045
  %2053 = fmul fast float %2052, %2033
  br label %2054

; <label>:2054                                    ; preds = %2038, %2032
  %2055 = phi float [ %2053, %2038 ], [ %2033, %2032 ]
  %2056 = fcmp fast ult float %2055, 0x3F70101020000000
  br i1 %2056, label %2599, label %2057

; <label>:2057                                    ; preds = %2054
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = and i32 %2059, 16
  %2061 = icmp eq i32 %2060, 0
  br i1 %2061, label %2260, label %2062

; <label>:2062                                    ; preds = %2057
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = add i32 %40, 368
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2065, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = add i32 %2067, 0
  %2069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2070 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2069, %dx.types.Handle %70, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2071 = extractvalue %dx.types.ResRet.f32 %2070, 0
  %2072 = extractvalue %dx.types.ResRet.f32 %2070, 1
  %2073 = extractvalue %dx.types.ResRet.f32 %2070, 2
  %2074 = extractvalue %dx.types.ResRet.f32 %2070, 3
  %2075 = and i32 %2064, 255
  %2076 = uitofp i32 %2075 to float
  %2077 = lshr i32 %2064, 8
  %2078 = and i32 %2077, 255
  %2079 = uitofp i32 %2078 to float
  %2080 = fmul fast float %2074, %2076
  %2081 = fadd fast float %2080, %2079
  %2082 = fmul fast float %2081, 0x3F70101000000000
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = and i32 %2084, 512
  %2086 = icmp eq i32 %2085, 0
  br i1 %2086, label %2095, label %2087

; <label>:2087                                    ; preds = %2062
  %2088 = add i32 %40, 448
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2088, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = add i32 %2090, 0
  %2092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2092, %dx.types.Handle %71, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2094 = extractvalue %dx.types.ResRet.f32 %2093, 0
  br label %2095

; <label>:2095                                    ; preds = %2087, %2062
  %2096 = phi float [ %2094, %2087 ], [ 1.000000e+00, %2062 ]
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = and i32 %2098, 33554432
  %2100 = icmp eq i32 %2099, 0
  br i1 %2100, label %2207, label %2101

; <label>:2101                                    ; preds = %2095
  %2102 = add i32 %40, 256
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = and i32 %2104, 65535
  %2106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2105)  ; LegacyF16ToF32(value)
  %2107 = lshr i32 %2104, 16
  %2108 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2107)  ; LegacyF16ToF32(value)
  %2109 = add i32 %40, 260
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = and i32 %2111, 65535
  %2113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2112)  ; LegacyF16ToF32(value)
  %2114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2115 = extractvalue %dx.types.ResRet.i32 %2114, 0
  %2116 = lshr i32 %2115, 24
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = and i32 %2115, 255
  %2120 = uitofp i32 %2119 to float
  %2121 = fmul fast float %2120, 0x3F70101020000000
  %2122 = lshr i32 %2115, 8
  %2123 = and i32 %2122, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = lshr i32 %2115, 16
  %2127 = and i32 %2126, 255
  %2128 = uitofp i32 %2127 to float
  %2129 = fmul fast float %2128, 0x3F70101020000000
  %2130 = add i32 %40, 252
  %2131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2130, i32 undef)  ; BufferLoad(srv,index,wot)
  %2132 = extractvalue %dx.types.ResRet.i32 %2131, 0
  %2133 = lshr i32 %2132, 24
  %2134 = uitofp i32 %2133 to float
  %2135 = fmul fast float %2134, 0x3F70101020000000
  %2136 = and i32 %2132, 255
  %2137 = uitofp i32 %2136 to float
  %2138 = fmul fast float %2137, 0x3F70101020000000
  %2139 = lshr i32 %2132, 8
  %2140 = and i32 %2139, 255
  %2141 = uitofp i32 %2140 to float
  %2142 = fmul fast float %2141, 0x3F70101020000000
  %2143 = lshr i32 %2132, 16
  %2144 = and i32 %2143, 255
  %2145 = uitofp i32 %2144 to float
  %2146 = fmul fast float %2145, 0x3F70101020000000
  %2147 = bitcast float %2071 to i32
  %2148 = ashr i32 %2147, 1
  %2149 = sub nsw i32 1597463174, %2148
  %2150 = bitcast i32 %2149 to float
  %2151 = fmul fast float %2071, 5.000000e-01
  %2152 = fmul fast float %2150, %2150
  %2153 = fmul fast float %2152, %2151
  %2154 = fsub fast float 1.500000e+00, %2153
  %2155 = fmul fast float %2150, %2071
  %2156 = fmul fast float %2155, %2154
  %2157 = bitcast float %2072 to i32
  %2158 = ashr i32 %2157, 1
  %2159 = sub nsw i32 1597463174, %2158
  %2160 = bitcast i32 %2159 to float
  %2161 = fmul fast float %2072, 5.000000e-01
  %2162 = fmul fast float %2160, %2160
  %2163 = fmul fast float %2162, %2161
  %2164 = fsub fast float 1.500000e+00, %2163
  %2165 = fmul fast float %2160, %2072
  %2166 = fmul fast float %2165, %2164
  %2167 = bitcast float %2073 to i32
  %2168 = ashr i32 %2167, 1
  %2169 = sub nsw i32 1597463174, %2168
  %2170 = bitcast i32 %2169 to float
  %2171 = fmul fast float %2073, 5.000000e-01
  %2172 = fmul fast float %2170, %2170
  %2173 = fmul fast float %2172, %2171
  %2174 = fsub fast float 1.500000e+00, %2173
  %2175 = fmul fast float %2170, %2073
  %2176 = fmul fast float %2175, %2174
  %2177 = fsub fast float %2156, %2138
  %2178 = fsub fast float %2166, %2142
  %2179 = fsub fast float %2176, %2146
  %2180 = fmul fast float %2177, %2106
  %2181 = fmul fast float %2178, %2108
  %2182 = fmul fast float %2179, %2113
  %2183 = fadd fast float %2180, %2121
  %2184 = fadd fast float %2181, %2125
  %2185 = fadd fast float %2182, %2129
  %2186 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  %2187 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2188 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2189 = fmul fast float %2186, %2186
  %2190 = fmul fast float %2187, %2187
  %2191 = fmul fast float %2188, %2188
  %2192 = fsub fast float %2189, %2071
  %2193 = fsub fast float %2190, %2072
  %2194 = fsub fast float %2191, %2073
  %2195 = fmul fast float %2192, %2096
  %2196 = fmul fast float %2193, %2096
  %2197 = fmul fast float %2194, %2096
  %2198 = fadd fast float %2195, %2071
  %2199 = fadd fast float %2196, %2072
  %2200 = fadd fast float %2197, %2073
  %2201 = fadd fast float %2118, %2082
  %2202 = fsub fast float %2201, %2135
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = fsub fast float %2203, %2082
  %2205 = fmul fast float %2204, %2096
  %2206 = fadd fast float %2205, %2082
  br label %2260

; <label>:2207                                    ; preds = %2095
  %2208 = and i32 %2098, 134217728
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2244, label %2210

; <label>:2210                                    ; preds = %2207
  %2211 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %2212 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2213 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2214 = fadd fast float %2211, -5.000000e-01
  %2215 = fadd fast float %2212, -5.000000e-01
  %2216 = fadd fast float %2213, -5.000000e-01
  %2217 = fmul fast float %2214, %2096
  %2218 = fmul fast float %2215, %2096
  %2219 = fmul fast float %2216, %2096
  %2220 = fadd fast float %2217, 5.000000e-01
  %2221 = fadd fast float %2218, 5.000000e-01
  %2222 = fadd fast float %2219, 5.000000e-01
  %2223 = call float @dx.op.unary.f32(i32 24, float %2071)  ; Sqrt(value)
  %2224 = call float @dx.op.unary.f32(i32 24, float %2072)  ; Sqrt(value)
  %2225 = call float @dx.op.unary.f32(i32 24, float %2073)  ; Sqrt(value)
  %2226 = fmul fast float %2220, 2.000000e+00
  %2227 = fsub fast float 1.000000e+00, %2226
  %2228 = fmul fast float %2227, %2223
  %2229 = fadd fast float %2228, %2226
  %2230 = fmul fast float %2229, %2223
  %2231 = fmul fast float %2221, 2.000000e+00
  %2232 = fsub fast float 1.000000e+00, %2231
  %2233 = fmul fast float %2232, %2224
  %2234 = fadd fast float %2233, %2231
  %2235 = fmul fast float %2234, %2224
  %2236 = fmul fast float %2222, 2.000000e+00
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = fmul fast float %2237, %2225
  %2239 = fadd fast float %2238, %2236
  %2240 = fmul fast float %2239, %2225
  %2241 = fmul fast float %2230, %2230
  %2242 = fmul fast float %2235, %2235
  %2243 = fmul fast float %2240, %2240
  br label %2260

; <label>:2244                                    ; preds = %2207
  %2245 = fmul fast float %297, %297
  %2246 = fmul fast float %301, %301
  %2247 = fmul fast float %305, %305
  %2248 = fadd fast float %2245, -1.000000e+00
  %2249 = fadd fast float %2246, -1.000000e+00
  %2250 = fadd fast float %2247, -1.000000e+00
  %2251 = fmul fast float %2096, %2248
  %2252 = fmul fast float %2096, %2249
  %2253 = fmul fast float %2096, %2250
  %2254 = fadd fast float %2251, 1.000000e+00
  %2255 = fadd fast float %2252, 1.000000e+00
  %2256 = fadd fast float %2253, 1.000000e+00
  %2257 = fmul fast float %2254, %2071
  %2258 = fmul fast float %2255, %2072
  %2259 = fmul fast float %2256, %2073
  br label %2260

; <label>:2260                                    ; preds = %2244, %2210, %2101, %2057
  %2261 = phi float [ %2206, %2101 ], [ %2082, %2210 ], [ %2082, %2244 ], [ 0x3FA23C0BE0000000, %2057 ]
  %2262 = phi float [ %2198, %2101 ], [ %2241, %2210 ], [ %2257, %2244 ], [ 1.000000e+00, %2057 ]
  %2263 = phi float [ %2199, %2101 ], [ %2242, %2210 ], [ %2258, %2244 ], [ 1.000000e+00, %2057 ]
  %2264 = phi float [ %2200, %2101 ], [ %2243, %2210 ], [ %2259, %2244 ], [ 1.000000e+00, %2057 ]
  %2265 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.i32 %2265, 1
  %2267 = and i32 %2266, 1
  %2268 = icmp ne i32 %2267, 0
  %2269 = add i32 %40, 356
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = and i32 %2271, 32
  %2273 = icmp ne i32 %2272, 0
  %2274 = and i1 %2268, %2273
  %2275 = select i1 %2274, float 1.000000e+00, float %2262
  %2276 = select i1 %2274, float 0x3FD3333340000000, float %2263
  %2277 = select i1 %2274, float 0x3FD3333340000000, float %2264
  %2278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2279 = extractvalue %dx.types.ResRet.i32 %2278, 0
  %2280 = and i32 %2279, 32
  %2281 = icmp eq i32 %2280, 0
  br i1 %2281, label %2354, label %2282

; <label>:2282                                    ; preds = %2260
  %2283 = add i32 %40, 124
  %2284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2283, i32 undef)  ; BufferLoad(srv,index,wot)
  %2285 = extractvalue %dx.types.ResRet.i32 %2284, 0
  %2286 = add i32 %40, 384
  %2287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2286, i32 undef)  ; BufferLoad(srv,index,wot)
  %2288 = extractvalue %dx.types.ResRet.i32 %2287, 0
  %2289 = add i32 %2288, 0
  %2290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2290, %dx.types.Handle %70, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2292 = extractvalue %dx.types.ResRet.f32 %2291, 0
  %2293 = extractvalue %dx.types.ResRet.f32 %2291, 1
  %2294 = extractvalue %dx.types.ResRet.f32 %2291, 2
  %2295 = extractvalue %dx.types.ResRet.f32 %2291, 3
  %2296 = and i32 %2285, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = lshr i32 %2285, 8
  %2299 = and i32 %2298, 255
  %2300 = uitofp i32 %2299 to float
  %2301 = lshr i32 %2285, 16
  %2302 = and i32 %2301, 255
  %2303 = uitofp i32 %2302 to float
  %2304 = fmul fast float %2303, 0x3F70101000000000
  %2305 = fmul fast float %2292, %2297
  %2306 = fadd fast float %2305, %2300
  %2307 = fmul fast float %2306, 0x3F70101000000000
  %2308 = fadd fast float %2293, -5.000000e-01
  %2309 = fadd fast float %2295, -5.000000e-01
  %2310 = fmul fast float %2308, %2304
  %2311 = fmul fast float %2309, %2304
  %2312 = fadd fast float %2310, 5.000000e-01
  %2313 = fadd fast float %2311, 5.000000e-01
  %2314 = fmul fast float %2312, 2.000000e+00
  %2315 = fadd fast float %2314, -1.000000e+00
  %2316 = fmul fast float %2313, 2.000000e+00
  %2317 = fadd fast float %2316, -1.000000e+00
  %2318 = fadd fast float %2315, %2317
  %2319 = fmul fast float %2318, 5.000000e-01
  %2320 = fsub fast float %2315, %2317
  %2321 = fmul fast float %2320, 5.000000e-01
  %2322 = call float @dx.op.unary.f32(i32 6, float %2319)  ; FAbs(value)
  %2323 = fsub fast float 1.000000e+00, %2322
  %2324 = call float @dx.op.unary.f32(i32 6, float %2321)  ; FAbs(value)
  %2325 = fsub fast float %2323, %2324
  %2326 = call float @dx.op.dot3.f32(i32 55, float %2319, float %2321, float %2325, float %2319, float %2321, float %2325)  ; Dot3(ax,ay,az,bx,by,bz)
  %2327 = call float @dx.op.unary.f32(i32 25, float %2326)  ; Rsqrt(value)
  %2328 = fmul fast float %2319, %2327
  %2329 = fmul fast float %2321, %2327
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 67108864
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2350, label %2334

; <label>:2334                                    ; preds = %2282
  %2335 = add i32 %40, 312
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 65535
  %2339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2338)  ; LegacyF16ToF32(value)
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1777, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 65535
  %2343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2342)  ; LegacyF16ToF32(value)
  %2344 = lshr i32 %2337, 16
  %2345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2344)  ; LegacyF16ToF32(value)
  %2346 = fsub fast float %2307, %2345
  %2347 = fmul fast float %2346, %2339
  %2348 = fadd fast float %2347, %2343
  %2349 = call float @dx.op.unary.f32(i32 7, float %2348)  ; Saturate(value)
  br label %2350

; <label>:2350                                    ; preds = %2334, %2282
  %2351 = phi float [ %2349, %2334 ], [ %2307, %2282 ]
  %2352 = call float @dx.op.dot2.f32(i32 54, float %2328, float %2329, float %1771, float %1772)  ; Dot2(ax,ay,bx,by)
  %2353 = call float @dx.op.dot2.f32(i32 54, float %2328, float %2329, float %1773, float %1774)  ; Dot2(ax,ay,bx,by)
  br label %2354

; <label>:2354                                    ; preds = %2350, %2260
  %2355 = phi float [ %2351, %2350 ], [ 0x3FD6666660000000, %2260 ]
  %2356 = phi float [ %2352, %2350 ], [ 0.000000e+00, %2260 ]
  %2357 = phi float [ %2353, %2350 ], [ 0.000000e+00, %2260 ]
  %2358 = phi float [ %2294, %2350 ], [ 1.000000e+00, %2260 ]
  %2359 = add i32 %40, 192
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = lshr i32 %2361, 22
  %2363 = shl nuw nsw i32 %2362, 5
  %2364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2363)  ; LegacyF16ToF32(value)
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = and i32 %2366, 64
  %2368 = icmp eq i32 %2367, 0
  br i1 %2368, label %2402, label %2369

; <label>:2369                                    ; preds = %2354
  %2370 = add i32 %40, 400
  %2371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2370, i32 undef)  ; BufferLoad(srv,index,wot)
  %2372 = extractvalue %dx.types.ResRet.i32 %2371, 0
  %2373 = add i32 %2372, 0
  %2374 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2373, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 131072
  %2378 = icmp eq i32 %2377, 0
  %2379 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2374, %dx.types.Handle %70, float %1867, float %1868, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2380 = extractvalue %dx.types.ResRet.f32 %2379, 0
  %2381 = extractvalue %dx.types.ResRet.f32 %2379, 1
  %2382 = extractvalue %dx.types.ResRet.f32 %2379, 2
  %2383 = fmul fast float %2380, %285
  %2384 = fmul fast float %2381, %288
  %2385 = fmul fast float %2382, %291
  br i1 %2378, label %2392, label %2386

; <label>:2386                                    ; preds = %2369
  %2387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.f32 %2387, 0
  %2389 = fmul fast float %2388, %2383
  %2390 = fmul fast float %2388, %2384
  %2391 = fmul fast float %2388, %2385
  br label %2392

; <label>:2392                                    ; preds = %2386, %2369
  %2393 = phi float [ %2389, %2386 ], [ %2383, %2369 ]
  %2394 = phi float [ %2390, %2386 ], [ %2384, %2369 ]
  %2395 = phi float [ %2391, %2386 ], [ %2385, %2369 ]
  %2396 = fmul fast float %2393, %2364
  %2397 = select i1 %181, float %2396, float %2393
  %2398 = call float @dx.op.dot3.f32(i32 55, float %2397, float %2394, float %2395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2399 = select i1 %181, float 0.000000e+00, float %2393
  %2400 = select i1 %181, float %2398, float %2394
  %2401 = select i1 %181, float 0.000000e+00, float %2395
  br label %2402

; <label>:2402                                    ; preds = %2392, %2354
  %2403 = phi float [ %2399, %2392 ], [ 0.000000e+00, %2354 ]
  %2404 = phi float [ %2400, %2392 ], [ 0.000000e+00, %2354 ]
  %2405 = phi float [ %2401, %2392 ], [ 0.000000e+00, %2354 ]
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = add i32 %40, 128
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %2410, 255
  %2412 = uitofp i32 %2411 to float
  %2413 = lshr i32 %2410, 8
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = call float @dx.op.dot3.f32(i32 55, float %2275, float %2276, float %2277, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2417 = fmul fast float %2415, %2416
  %2418 = fadd fast float %2417, %2412
  %2419 = fmul fast float %2418, 0x3F70101020000000
  %2420 = call float @dx.op.unary.f32(i32 7, float %2419)  ; Saturate(value)
  br i1 %1759, label %2421, label %2429

; <label>:2421                                    ; preds = %2402
  %2422 = fsub fast float 1.000000e+00, %2055
  %2423 = fmul fast float %2422, %1751
  %2424 = fmul fast float %2422, %1752
  %2425 = fmul fast float %2422, %1753
  %2426 = fmul fast float %2422, %1748
  %2427 = fmul fast float %2422, %1749
  %2428 = fmul fast float %2422, %1750
  br label %2429

; <label>:2429                                    ; preds = %2421, %2402
  %2430 = phi float [ %2426, %2421 ], [ %1748, %2402 ]
  %2431 = phi float [ %2427, %2421 ], [ %1749, %2402 ]
  %2432 = phi float [ %2428, %2421 ], [ %1750, %2402 ]
  %2433 = phi float [ %2423, %2421 ], [ %1751, %2402 ]
  %2434 = phi float [ %2424, %2421 ], [ %1752, %2402 ]
  %2435 = phi float [ %2425, %2421 ], [ %1753, %2402 ]
  %2436 = and i32 %2407, 3
  %2437 = icmp eq i32 %2436, 3
  br i1 %2437, label %2516, label %2438

; <label>:2438                                    ; preds = %2429
  %2439 = and i32 %2407, 16
  %2440 = icmp ne i32 %2439, 0
  %2441 = select i1 %2440, float %2055, float 0.000000e+00
  %2442 = icmp eq i32 %2436, 0
  br i1 %2442, label %2443, label %2471

; <label>:2443                                    ; preds = %2438
  %2444 = and i32 %2407, 64
  %2445 = icmp ne i32 %2444, 0
  %2446 = select i1 %2445, float %2055, float 0.000000e+00
  %2447 = fsub fast float %2275, %2433
  %2448 = fsub fast float %2276, %2434
  %2449 = fsub fast float %2277, %2435
  %2450 = fmul fast float %2441, %2447
  %2451 = fmul fast float %2441, %2448
  %2452 = fmul fast float %2441, %2449
  %2453 = fadd fast float %2450, %2433
  %2454 = fadd fast float %2451, %2434
  %2455 = fadd fast float %2452, %2435
  %2456 = fsub fast float %2261, %1754
  %2457 = fmul fast float %2441, %2456
  %2458 = fadd fast float %2457, %1754
  %2459 = fsub fast float %2403, %2430
  %2460 = fsub fast float %2404, %2431
  %2461 = fsub fast float %2405, %2432
  %2462 = fmul fast float %2446, %2459
  %2463 = fmul fast float %2446, %2460
  %2464 = fmul fast float %2446, %2461
  %2465 = fadd fast float %2462, %2430
  %2466 = fadd fast float %2463, %2431
  %2467 = fadd fast float %2464, %2432
  %2468 = fsub fast float %2420, %1757
  %2469 = fmul fast float %2441, %2468
  %2470 = fadd fast float %2469, %1757
  br label %2516

; <label>:2471                                    ; preds = %2438
  %2472 = icmp eq i32 %2436, 1
  br i1 %2472, label %2473, label %2486

; <label>:2473                                    ; preds = %2471
  %2474 = fadd fast float %2275, -1.000000e+00
  %2475 = fadd fast float %2276, -1.000000e+00
  %2476 = fadd fast float %2277, -1.000000e+00
  %2477 = fmul fast float %2441, %2474
  %2478 = fmul fast float %2441, %2475
  %2479 = fmul fast float %2441, %2476
  %2480 = fadd fast float %2477, 1.000000e+00
  %2481 = fadd fast float %2478, 1.000000e+00
  %2482 = fadd fast float %2479, 1.000000e+00
  %2483 = fmul fast float %2480, %2433
  %2484 = fmul fast float %2481, %2434
  %2485 = fmul fast float %2482, %2435
  br label %2516

; <label>:2486                                    ; preds = %2471
  %2487 = icmp eq i32 %2436, 2
  br i1 %2487, label %2488, label %2516

; <label>:2488                                    ; preds = %2486
  %2489 = call float @dx.op.unary.f32(i32 24, float %2275)  ; Sqrt(value)
  %2490 = call float @dx.op.unary.f32(i32 24, float %2276)  ; Sqrt(value)
  %2491 = call float @dx.op.unary.f32(i32 24, float %2277)  ; Sqrt(value)
  %2492 = fadd fast float %2489, -5.000000e-01
  %2493 = fadd fast float %2490, -5.000000e-01
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fmul fast float %2492, %2441
  %2496 = fmul fast float %2493, %2441
  %2497 = fmul fast float %2494, %2441
  %2498 = fadd fast float %2495, 5.000000e-01
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fmul fast float %2498, 2.000000e+00
  %2502 = fsub fast float 1.000000e+00, %2501
  %2503 = fmul fast float %2502, %2433
  %2504 = fadd fast float %2503, %2501
  %2505 = fmul fast float %2504, %2433
  %2506 = fmul fast float %2499, 2.000000e+00
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2434
  %2509 = fadd fast float %2508, %2506
  %2510 = fmul fast float %2509, %2434
  %2511 = fmul fast float %2500, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2435
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2435
  br label %2516

; <label>:2516                                    ; preds = %2488, %2486, %2473, %2443, %2429
  %2517 = phi float [ %2430, %2429 ], [ %2430, %2488 ], [ %2430, %2486 ], [ %2430, %2473 ], [ %2465, %2443 ]
  %2518 = phi float [ %2431, %2429 ], [ %2431, %2488 ], [ %2431, %2486 ], [ %2431, %2473 ], [ %2466, %2443 ]
  %2519 = phi float [ %2432, %2429 ], [ %2432, %2488 ], [ %2432, %2486 ], [ %2432, %2473 ], [ %2467, %2443 ]
  %2520 = phi float [ %2433, %2429 ], [ %2505, %2488 ], [ %2433, %2486 ], [ %2483, %2473 ], [ %2453, %2443 ]
  %2521 = phi float [ %2434, %2429 ], [ %2510, %2488 ], [ %2434, %2486 ], [ %2484, %2473 ], [ %2454, %2443 ]
  %2522 = phi float [ %2435, %2429 ], [ %2515, %2488 ], [ %2435, %2486 ], [ %2485, %2473 ], [ %2455, %2443 ]
  %2523 = phi float [ %1754, %2429 ], [ %1754, %2488 ], [ %1754, %2486 ], [ %1754, %2473 ], [ %2458, %2443 ]
  %2524 = phi float [ %1757, %2429 ], [ %1757, %2488 ], [ %1757, %2486 ], [ %1757, %2473 ], [ %2470, %2443 ]
  %2525 = and i32 %2407, 12
  %2526 = icmp eq i32 %2525, 12
  br i1 %2526, label %2599, label %2527

; <label>:2527                                    ; preds = %2516
  %2528 = and i32 %2407, 2097184
  %2529 = icmp eq i32 %2528, 2097184
  %2530 = select i1 %2529, float %2055, float 0.000000e+00
  %2531 = and i32 %2407, 4194336
  %2532 = icmp eq i32 %2531, 4194336
  %2533 = select i1 %2532, float %2055, float 0.000000e+00
  %2534 = and i32 %2407, 8388640
  %2535 = icmp eq i32 %2534, 8388640
  %2536 = select i1 %2535, float %2055, float 0.000000e+00
  %2537 = icmp eq i32 %2525, 0
  br i1 %2537, label %2538, label %2551

; <label>:2538                                    ; preds = %2527
  %2539 = fsub fast float %2356, %1746
  %2540 = fsub fast float %2357, %1747
  %2541 = fmul fast float %2530, %2539
  %2542 = fmul fast float %2530, %2540
  %2543 = fadd fast float %2541, %1746
  %2544 = fadd fast float %2542, %1747
  %2545 = fsub fast float %2358, %1756
  %2546 = fmul fast float %2533, %2545
  %2547 = fadd fast float %2546, %1756
  %2548 = fsub fast float %2355, %1755
  %2549 = fmul fast float %2536, %2548
  %2550 = fadd fast float %2549, %1755
  br label %2599

; <label>:2551                                    ; preds = %2527
  %2552 = icmp eq i32 %2525, 4
  br i1 %2552, label %2553, label %2585

; <label>:2553                                    ; preds = %2551
  %2554 = fmul fast float %2530, %2356
  %2555 = fmul fast float %2530, %2357
  %2556 = fadd fast float %2554, %1746
  %2557 = fadd fast float %2555, %1747
  %2558 = call float @dx.op.binary.f32(i32 36, float %1756, float %2358)  ; FMin(a,b)
  %2559 = fsub fast float %2558, %1756
  %2560 = fmul fast float %2559, %2533
  %2561 = fadd fast float %2560, %1756
  %2562 = fadd fast float %2355, %1755
  %2563 = fmul fast float %2562, 0x3FF337FAE0000000
  %2564 = fmul fast float %1755, %1755
  %2565 = fmul fast float %2355, %2355
  %2566 = fadd fast float %2565, %2564
  %2567 = fmul fast float %2566, 0x3FE5152B00000000
  %2568 = fmul fast float %1755, 0xBFCC1F85E0000000
  %2569 = fmul fast float %2568, %2355
  %2570 = fadd fast float %2569, 0xBFE1363700000000
  %2571 = fadd fast float %2570, %2563
  %2572 = fsub fast float %2571, %2567
  %2573 = fmul fast float %2562, 0x3FBA6F0D00000000
  %2574 = fmul fast float %2566, 0x3FD0432880000000
  %2575 = fmul fast float %1755, 0xBFEF110800000000
  %2576 = fmul fast float %2575, %2355
  %2577 = fadd fast float %2576, 1.000000e+00
  %2578 = fsub fast float %2577, %2573
  %2579 = fadd fast float %2578, %2574
  %2580 = fdiv fast float %2572, %2579
  %2581 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  %2582 = fsub fast float %2581, %1755
  %2583 = fmul fast float %2582, %2536
  %2584 = fadd fast float %2583, %1755
  br label %2599

; <label>:2585                                    ; preds = %2551
  %2586 = icmp eq i32 %2525, 8
  br i1 %2586, label %2587, label %2599

; <label>:2587                                    ; preds = %2585
  %2588 = fmul fast float %2530, %2356
  %2589 = fmul fast float %2530, %2357
  %2590 = fadd fast float %2588, %1746
  %2591 = fadd fast float %2589, %1747
  %2592 = call float @dx.op.binary.f32(i32 36, float %1756, float %2358)  ; FMin(a,b)
  %2593 = fsub fast float %2592, %1756
  %2594 = fmul fast float %2593, %2533
  %2595 = fadd fast float %2594, %1756
  %2596 = fsub fast float %2355, %1755
  %2597 = fmul fast float %2536, %2596
  %2598 = fadd fast float %2597, %1755
  br label %2599

; <label>:2599                                    ; preds = %2587, %2585, %2553, %2538, %2516, %2054, %1758, %1745
  %2600 = phi float [ %1746, %2516 ], [ %1746, %2054 ], [ %1746, %1745 ], [ %2590, %2587 ], [ %1746, %2585 ], [ %2556, %2553 ], [ %2543, %2538 ], [ %1746, %1758 ]
  %2601 = phi float [ %1747, %2516 ], [ %1747, %2054 ], [ %1747, %1745 ], [ %2591, %2587 ], [ %1747, %2585 ], [ %2557, %2553 ], [ %2544, %2538 ], [ %1747, %1758 ]
  %2602 = phi float [ %2517, %2516 ], [ %1748, %2054 ], [ %1748, %1745 ], [ %2517, %2587 ], [ %2517, %2585 ], [ %2517, %2553 ], [ %2517, %2538 ], [ %1748, %1758 ]
  %2603 = phi float [ %2518, %2516 ], [ %1749, %2054 ], [ %1749, %1745 ], [ %2518, %2587 ], [ %2518, %2585 ], [ %2518, %2553 ], [ %2518, %2538 ], [ %1749, %1758 ]
  %2604 = phi float [ %2519, %2516 ], [ %1750, %2054 ], [ %1750, %1745 ], [ %2519, %2587 ], [ %2519, %2585 ], [ %2519, %2553 ], [ %2519, %2538 ], [ %1750, %1758 ]
  %2605 = phi float [ %2520, %2516 ], [ %1751, %2054 ], [ %1751, %1745 ], [ %2520, %2587 ], [ %2520, %2585 ], [ %2520, %2553 ], [ %2520, %2538 ], [ %1751, %1758 ]
  %2606 = phi float [ %2521, %2516 ], [ %1752, %2054 ], [ %1752, %1745 ], [ %2521, %2587 ], [ %2521, %2585 ], [ %2521, %2553 ], [ %2521, %2538 ], [ %1752, %1758 ]
  %2607 = phi float [ %2522, %2516 ], [ %1753, %2054 ], [ %1753, %1745 ], [ %2522, %2587 ], [ %2522, %2585 ], [ %2522, %2553 ], [ %2522, %2538 ], [ %1753, %1758 ]
  %2608 = phi float [ %2523, %2516 ], [ %1754, %2054 ], [ %1754, %1745 ], [ %2523, %2587 ], [ %2523, %2585 ], [ %2523, %2553 ], [ %2523, %2538 ], [ %1754, %1758 ]
  %2609 = phi float [ %1755, %2516 ], [ %1755, %2054 ], [ %1755, %1745 ], [ %2598, %2587 ], [ %1755, %2585 ], [ %2584, %2553 ], [ %2550, %2538 ], [ %1755, %1758 ]
  %2610 = phi float [ %1756, %2516 ], [ %1756, %2054 ], [ %1756, %1745 ], [ %2595, %2587 ], [ %1756, %2585 ], [ %2561, %2553 ], [ %2547, %2538 ], [ %1756, %1758 ]
  %2611 = phi float [ %2524, %2516 ], [ %1757, %2054 ], [ %1757, %1745 ], [ %2524, %2587 ], [ %2524, %2585 ], [ %2524, %2553 ], [ %2524, %2538 ], [ %1757, %1758 ]
  br i1 %372, label %3453, label %2612

; <label>:2612                                    ; preds = %2599
  %2613 = icmp ult i32 %423, 4
  %2614 = add i32 %40, 72
  %2615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2616 = extractvalue %dx.types.ResRet.i32 %2615, 0
  %2617 = add i32 %40, 76
  %2618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2617, i32 undef)  ; BufferLoad(srv,index,wot)
  %2619 = extractvalue %dx.types.ResRet.i32 %2618, 0
  %2620 = or i32 %2619, %2616
  %2621 = icmp eq i32 %2620, 0
  br i1 %2621, label %3453, label %2622

; <label>:2622                                    ; preds = %2612
  %2623 = and i32 %2616, 262144
  %2624 = icmp ne i32 %2623, 0
  %2625 = select i1 %2624, float %42, float 1.000000e+00
  %2626 = select i1 %2624, float %43, float 0.000000e+00
  %2627 = select i1 %2624, float %44, float 0.000000e+00
  %2628 = select i1 %2624, float %45, float 1.000000e+00
  %2629 = select i1 %2624, float %46, float %62
  %2630 = select i1 %2624, float %47, float %63
  %2631 = add i32 %40, 332
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 16
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = fmul fast float %2635, 0x3F50624DE0000000
  %2637 = add i32 %40, 136
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 16
  %2641 = and i32 %2640, 255
  %2642 = lshr i32 %2639, 24
  %2643 = add i32 %40, 340
  %2644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2643, i32 undef)  ; BufferLoad(srv,index,wot)
  %2645 = extractvalue %dx.types.ResRet.i32 %2644, 0
  %2646 = and i32 %2645, 65535
  %2647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2646)  ; LegacyF16ToF32(value)
  %2648 = lshr i32 %2645, 16
  %2649 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2648)  ; LegacyF16ToF32(value)
  %2650 = add i32 %40, 80
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = lshr i32 %2652, 22
  %2654 = shl nuw nsw i32 %2653, 5
  %2655 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2654)  ; LegacyF16ToF32(value)
  %2656 = shl i32 %2652, 4
  %2657 = and i32 %2656, 32752
  %2658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2657)  ; LegacyF16ToF32(value)
  %2659 = lshr i32 %2652, 7
  %2660 = and i32 %2659, 32752
  %2661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2660)  ; LegacyF16ToF32(value)
  %2662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2663 = extractvalue %dx.types.CBufRet.f32 %2662, 3
  %2664 = fmul fast float %2663, 1.000000e+03
  %2665 = fmul fast float %362, %2664
  %2666 = call float @dx.op.unary.f32(i32 22, float %2665)  ; Frc(value)
  %2667 = fadd fast float %2666, %352
  %2668 = fmul fast float %363, %2664
  %2669 = call float @dx.op.unary.f32(i32 22, float %2668)  ; Frc(value)
  %2670 = fadd fast float %2669, %354
  %2671 = fmul fast float %2636, %2664
  %2672 = call float @dx.op.unary.f32(i32 22, float %2671)  ; Frc(value)
  %2673 = fmul fast float %2672, 0x401921FB60000000
  %2674 = fadd fast float %2673, %2655
  %2675 = call float @dx.op.unary.f32(i32 13, float %2674)  ; Sin(value)
  %2676 = call float @dx.op.unary.f32(i32 12, float %2674)  ; Cos(value)
  %2677 = fsub fast float -0.000000e+00, %2675
  %2678 = fadd fast float %2629, -5.000000e-01
  %2679 = fadd fast float %2630, -5.000000e-01
  %2680 = fmul fast float %2647, %2678
  %2681 = fmul fast float %2649, %2679
  %2682 = fadd fast float %2680, 5.000000e-01
  %2683 = fadd fast float %2681, 5.000000e-01
  %2684 = fmul fast float %2658, %2682
  %2685 = fmul fast float %2661, %2683
  %2686 = fmul fast float %2676, %2684
  %2687 = call float @dx.op.tertiary.f32(i32 46, float %2677, float %2685, float %2686)  ; FMad(a,b,c)
  %2688 = fmul fast float %2675, %2684
  %2689 = call float @dx.op.tertiary.f32(i32 46, float %2676, float %2685, float %2688)  ; FMad(a,b,c)
  %2690 = fadd fast float %2667, %2687
  %2691 = fadd fast float %2670, %2689
  %2692 = icmp ugt i32 %2641, 1
  %2693 = icmp ugt i32 %2639, 33554431
  %2694 = or i1 %2693, %2692
  br i1 %2694, label %2695, label %2720

; <label>:2695                                    ; preds = %2622
  %2696 = add i32 %40, 276
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = lshr i32 %2698, 16
  %2700 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2699)  ; LegacyF16ToF32(value)
  %2701 = fmul fast float %2663, %2700
  %2702 = call float @dx.op.unary.f32(i32 22, float %2701)  ; Frc(value)
  %2703 = mul nuw nsw i32 %2641, %2642
  %2704 = uitofp i32 %2703 to float
  %2705 = fmul fast float %2702, %2704
  %2706 = call float @dx.op.unary.f32(i32 27, float %2705)  ; Round_ni(value)
  %2707 = fptoui float %2706 to i32
  %2708 = urem i32 %2707, %2641
  %2709 = udiv i32 %2707, %2642
  %2710 = call float @dx.op.unary.f32(i32 22, float %2690)  ; Frc(value)
  %2711 = call float @dx.op.unary.f32(i32 22, float %2691)  ; Frc(value)
  %2712 = uitofp i32 %2708 to float
  %2713 = uitofp i32 %2709 to float
  %2714 = fadd fast float %2710, %2712
  %2715 = fadd fast float %2711, %2713
  %2716 = uitofp i32 %2641 to float
  %2717 = uitofp i32 %2642 to float
  %2718 = fdiv fast float %2714, %2716
  %2719 = fdiv fast float %2715, %2717
  br label %2720

; <label>:2720                                    ; preds = %2695, %2622
  %2721 = phi float [ %2718, %2695 ], [ %2690, %2622 ]
  %2722 = phi float [ %2719, %2695 ], [ %2691, %2622 ]
  %2723 = and i32 %2616, 16777216
  %2724 = icmp eq i32 %2723, 0
  br i1 %2724, label %2834, label %2725

; <label>:2725                                    ; preds = %2720
  %2726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2727 = extractvalue %dx.types.CBufRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.CBufRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.CBufRet.f32 %2726, 2
  %2730 = fadd fast float %2727, %137
  %2731 = fadd fast float %2728, %138
  %2732 = fadd fast float %2729, %139
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = call float @dx.op.unary.f32(i32 7, float %2734)  ; Saturate(value)
  %2736 = icmp eq i32 %41, 65535
  br i1 %2736, label %2831, label %2737

; <label>:2737                                    ; preds = %2725
  %2738 = lshr i32 %41, 1
  %2739 = shl i32 %2738, 2
  %2740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2739, i32 undef)  ; BufferLoad(srv,index,wot)
  %2741 = extractvalue %dx.types.ResRet.i32 %2740, 0
  %2742 = and i32 %41, 1
  %2743 = icmp ne i32 %2742, 0
  %2744 = lshr i32 %2741, 16
  %2745 = and i32 %2741, 65535
  %2746 = select i1 %2743, i32 %2744, i32 %2745
  %2747 = icmp eq i32 %2746, 65535
  br i1 %2747, label %2827, label %2748

; <label>:2748                                    ; preds = %2737
  %2749 = mul nuw nsw i32 %2746, 40
  %2750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.f32 %2750, 0
  %2752 = extractvalue %dx.types.ResRet.f32 %2750, 1
  %2753 = extractvalue %dx.types.ResRet.f32 %2750, 2
  %2754 = add nuw nsw i32 %2749, 12
  %2755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = add nuw nsw i32 %2749, 24
  %2760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.ResRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.ResRet.f32 %2760, 2
  %2764 = add nuw nsw i32 %2749, 36
  %2765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = fsub fast float %2730, %2751
  %2768 = fsub fast float %2731, %2752
  %2769 = fsub fast float %2732, %2753
  %2770 = fmul fast float %2766, %2767
  %2771 = fmul fast float %2766, %2768
  %2772 = fmul fast float %2766, %2769
  %2773 = call float @dx.op.unary.f32(i32 27, float %2770)  ; Round_ni(value)
  %2774 = call float @dx.op.unary.f32(i32 27, float %2771)  ; Round_ni(value)
  %2775 = call float @dx.op.unary.f32(i32 27, float %2772)  ; Round_ni(value)
  %2776 = fadd fast float %2773, 5.000000e-01
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fmul fast float %2776, %2756
  %2780 = fmul fast float %2777, %2757
  %2781 = fmul fast float %2778, %2758
  %2782 = shl i32 %41, 2
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = add i32 %2784, 0
  %2786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2785, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2787 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2788 = call float @dx.op.unary.f32(i32 22, float %2780)  ; Frc(value)
  %2789 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2786, %dx.types.Handle %37, float %2787, float %2788, float %2789, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2791 = extractvalue %dx.types.ResRet.f32 %2790, 0
  %2792 = extractvalue %dx.types.ResRet.f32 %2790, 1
  %2793 = extractvalue %dx.types.ResRet.f32 %2790, 2
  %2794 = fmul fast float %2791, 1.023000e+03
  %2795 = fmul fast float %2792, 1.023000e+03
  %2796 = fmul fast float %2793, 1.023000e+03
  %2797 = fadd fast float %2794, 5.000000e-01
  %2798 = fadd fast float %2795, 5.000000e-01
  %2799 = fadd fast float %2796, 5.000000e-01
  %2800 = call float @dx.op.unary.f32(i32 27, float %2797)  ; Round_ni(value)
  %2801 = call float @dx.op.unary.f32(i32 27, float %2798)  ; Round_ni(value)
  %2802 = call float @dx.op.unary.f32(i32 27, float %2799)  ; Round_ni(value)
  %2803 = fsub fast float %2770, %2773
  %2804 = fsub fast float %2771, %2774
  %2805 = fsub fast float %2772, %2775
  %2806 = fmul fast float %2803, 7.500000e-01
  %2807 = fmul fast float %2804, 7.500000e-01
  %2808 = fmul fast float %2805, 7.500000e-01
  %2809 = fadd fast float %2773, 1.250000e-01
  %2810 = fadd fast float %2809, %2806
  %2811 = fadd fast float %2810, %2800
  %2812 = fadd fast float %2774, 1.250000e-01
  %2813 = fadd fast float %2812, %2807
  %2814 = fadd fast float %2813, %2801
  %2815 = fadd fast float %2775, 1.250000e-01
  %2816 = fadd fast float %2815, %2808
  %2817 = fadd fast float %2816, %2802
  %2818 = fmul fast float %2811, %2761
  %2819 = fmul fast float %2814, %2762
  %2820 = fmul fast float %2817, %2763
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = add i32 %2822, 0
  %2824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2824, %dx.types.Handle %35, float %2818, float %2819, float %2820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  br label %2827

; <label>:2827                                    ; preds = %2748, %2737
  %2828 = phi float [ %2826, %2748 ], [ -1.000000e+00, %2737 ]
  %2829 = fadd fast float %2828, %2735
  %2830 = call float @dx.op.unary.f32(i32 7, float %2829)  ; Saturate(value)
  br label %2831

; <label>:2831                                    ; preds = %2827, %2725
  %2832 = phi float [ %2830, %2827 ], [ %2735, %2725 ]
  %2833 = fmul fast float %2832, %418
  br label %2834

; <label>:2834                                    ; preds = %2831, %2720
  %2835 = phi float [ %2833, %2831 ], [ %418, %2720 ]
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = and i32 %2837, 256
  %2839 = icmp eq i32 %2838, 0
  br i1 %2839, label %2886, label %2840

; <label>:2840                                    ; preds = %2834
  %2841 = add i32 %40, 436
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = add i32 %2843, 0
  %2845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2844, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2846 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2845, %dx.types.Handle %71, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2847 = extractvalue %dx.types.ResRet.f32 %2846, 0
  %2848 = add i32 %40, 148
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = shl i32 %2850, 4
  %2852 = and i32 %2851, 32752
  %2853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2852)  ; LegacyF16ToF32(value)
  %2854 = lshr i32 %2850, 7
  %2855 = and i32 %2854, 32752
  %2856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2855)  ; LegacyF16ToF32(value)
  %2857 = fsub fast float 1.000000e+00, %2835
  %2858 = call float @dx.op.binary.f32(i32 35, float %2857, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2859 = bitcast float %2835 to i32
  %2860 = sitofp i32 %2859 to float
  %2861 = fadd fast float %2860, 0xC1CFBF8940000000
  %2862 = fmul fast float %2856, %2861
  %2863 = fadd fast float %2862, 0x41CFBF8940000000
  %2864 = fptosi float %2863 to i32
  %2865 = bitcast i32 %2864 to float
  %2866 = bitcast float %2858 to i32
  %2867 = sitofp i32 %2866 to float
  %2868 = fadd fast float %2867, 0xC1CFBF8940000000
  %2869 = fmul fast float %2868, %2856
  %2870 = fadd fast float %2869, 0x41CFBF8940000000
  %2871 = fptosi float %2870 to i32
  %2872 = bitcast i32 %2871 to float
  %2873 = fmul fast float %2865, %2853
  %2874 = fmul fast float %2872, %2853
  %2875 = fsub fast float %2858, %2873
  %2876 = fadd fast float %2874, %2858
  %2877 = call float @dx.op.unary.f32(i32 7, float %2875)  ; Saturate(value)
  %2878 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2879 = fsub fast float %2847, %2877
  %2880 = fsub fast float %2878, %2877
  %2881 = bitcast float %2880 to i32
  %2882 = sub nsw i32 2129859010, %2881
  %2883 = bitcast i32 %2882 to float
  %2884 = fmul fast float %2883, %2879
  %2885 = call float @dx.op.unary.f32(i32 7, float %2884)  ; Saturate(value)
  br label %2886

; <label>:2886                                    ; preds = %2840, %2834
  %2887 = phi float [ %2885, %2840 ], [ %2835, %2834 ]
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 128
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2908, label %2892

; <label>:2892                                    ; preds = %2886
  %2893 = add i32 %40, 420
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = add i32 %2895, 0
  %2897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2898 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2897, %dx.types.Handle %71, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2899 = extractvalue %dx.types.ResRet.f32 %2898, 0
  %2900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2901 = extractvalue %dx.types.ResRet.i32 %2900, 0
  %2902 = and i32 %2901, 524288
  %2903 = icmp ne i32 %2902, 0
  %2904 = fcmp fast ogt float %2899, 0x3FE0101020000000
  %2905 = select i1 %2904, float 1.000000e+00, float 0.000000e+00
  %2906 = select i1 %2903, float %2905, float %2899
  %2907 = fmul fast float %2906, %2887
  br label %2908

; <label>:2908                                    ; preds = %2892, %2886
  %2909 = phi float [ %2907, %2892 ], [ %2887, %2886 ]
  %2910 = fcmp fast ult float %2909, 0x3F70101020000000
  br i1 %2910, label %3453, label %2911

; <label>:2911                                    ; preds = %2908
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = and i32 %2913, 16
  %2915 = icmp eq i32 %2914, 0
  br i1 %2915, label %3114, label %2916

; <label>:2916                                    ; preds = %2911
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = add i32 %40, 372
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %2921, 0
  %2923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2923, %dx.types.Handle %70, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = extractvalue %dx.types.ResRet.f32 %2924, 1
  %2927 = extractvalue %dx.types.ResRet.f32 %2924, 2
  %2928 = extractvalue %dx.types.ResRet.f32 %2924, 3
  %2929 = and i32 %2918, 255
  %2930 = uitofp i32 %2929 to float
  %2931 = lshr i32 %2918, 8
  %2932 = and i32 %2931, 255
  %2933 = uitofp i32 %2932 to float
  %2934 = fmul fast float %2928, %2930
  %2935 = fadd fast float %2934, %2933
  %2936 = fmul fast float %2935, 0x3F70101000000000
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = and i32 %2938, 512
  %2940 = icmp eq i32 %2939, 0
  br i1 %2940, label %2949, label %2941

; <label>:2941                                    ; preds = %2916
  %2942 = add i32 %40, 452
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2942, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = add i32 %2944, 0
  %2946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2945, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2947 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2946, %dx.types.Handle %71, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  br label %2949

; <label>:2949                                    ; preds = %2941, %2916
  %2950 = phi float [ %2948, %2941 ], [ 1.000000e+00, %2916 ]
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 33554432
  %2954 = icmp eq i32 %2953, 0
  br i1 %2954, label %3061, label %2955

; <label>:2955                                    ; preds = %2949
  %2956 = add i32 %40, 272
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = and i32 %2958, 65535
  %2960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2959)  ; LegacyF16ToF32(value)
  %2961 = lshr i32 %2958, 16
  %2962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2961)  ; LegacyF16ToF32(value)
  %2963 = add i32 %40, 276
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %2965, 65535
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %334, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.i32 %2968, 0
  %2970 = lshr i32 %2969, 24
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = and i32 %2969, 255
  %2974 = uitofp i32 %2973 to float
  %2975 = fmul fast float %2974, 0x3F70101020000000
  %2976 = lshr i32 %2969, 8
  %2977 = and i32 %2976, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = lshr i32 %2969, 16
  %2981 = and i32 %2980, 255
  %2982 = uitofp i32 %2981 to float
  %2983 = fmul fast float %2982, 0x3F70101020000000
  %2984 = add i32 %40, 268
  %2985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2984, i32 undef)  ; BufferLoad(srv,index,wot)
  %2986 = extractvalue %dx.types.ResRet.i32 %2985, 0
  %2987 = lshr i32 %2986, 24
  %2988 = uitofp i32 %2987 to float
  %2989 = fmul fast float %2988, 0x3F70101020000000
  %2990 = and i32 %2986, 255
  %2991 = uitofp i32 %2990 to float
  %2992 = fmul fast float %2991, 0x3F70101020000000
  %2993 = lshr i32 %2986, 8
  %2994 = and i32 %2993, 255
  %2995 = uitofp i32 %2994 to float
  %2996 = fmul fast float %2995, 0x3F70101020000000
  %2997 = lshr i32 %2986, 16
  %2998 = and i32 %2997, 255
  %2999 = uitofp i32 %2998 to float
  %3000 = fmul fast float %2999, 0x3F70101020000000
  %3001 = bitcast float %2925 to i32
  %3002 = ashr i32 %3001, 1
  %3003 = sub nsw i32 1597463174, %3002
  %3004 = bitcast i32 %3003 to float
  %3005 = fmul fast float %2925, 5.000000e-01
  %3006 = fmul fast float %3004, %3004
  %3007 = fmul fast float %3006, %3005
  %3008 = fsub fast float 1.500000e+00, %3007
  %3009 = fmul fast float %3004, %2925
  %3010 = fmul fast float %3009, %3008
  %3011 = bitcast float %2926 to i32
  %3012 = ashr i32 %3011, 1
  %3013 = sub nsw i32 1597463174, %3012
  %3014 = bitcast i32 %3013 to float
  %3015 = fmul fast float %2926, 5.000000e-01
  %3016 = fmul fast float %3014, %3014
  %3017 = fmul fast float %3016, %3015
  %3018 = fsub fast float 1.500000e+00, %3017
  %3019 = fmul fast float %3014, %2926
  %3020 = fmul fast float %3019, %3018
  %3021 = bitcast float %2927 to i32
  %3022 = ashr i32 %3021, 1
  %3023 = sub nsw i32 1597463174, %3022
  %3024 = bitcast i32 %3023 to float
  %3025 = fmul fast float %2927, 5.000000e-01
  %3026 = fmul fast float %3024, %3024
  %3027 = fmul fast float %3026, %3025
  %3028 = fsub fast float 1.500000e+00, %3027
  %3029 = fmul fast float %3024, %2927
  %3030 = fmul fast float %3029, %3028
  %3031 = fsub fast float %3010, %2992
  %3032 = fsub fast float %3020, %2996
  %3033 = fsub fast float %3030, %3000
  %3034 = fmul fast float %3031, %2960
  %3035 = fmul fast float %3032, %2962
  %3036 = fmul fast float %3033, %2967
  %3037 = fadd fast float %3034, %2975
  %3038 = fadd fast float %3035, %2979
  %3039 = fadd fast float %3036, %2983
  %3040 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3041 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3043 = fmul fast float %3040, %3040
  %3044 = fmul fast float %3041, %3041
  %3045 = fmul fast float %3042, %3042
  %3046 = fsub fast float %3043, %2925
  %3047 = fsub fast float %3044, %2926
  %3048 = fsub fast float %3045, %2927
  %3049 = fmul fast float %3046, %2950
  %3050 = fmul fast float %3047, %2950
  %3051 = fmul fast float %3048, %2950
  %3052 = fadd fast float %3049, %2925
  %3053 = fadd fast float %3050, %2926
  %3054 = fadd fast float %3051, %2927
  %3055 = fadd fast float %2972, %2936
  %3056 = fsub fast float %3055, %2989
  %3057 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3058 = fsub fast float %3057, %2936
  %3059 = fmul fast float %3058, %2950
  %3060 = fadd fast float %3059, %2936
  br label %3114

; <label>:3061                                    ; preds = %2949
  %3062 = and i32 %2952, 134217728
  %3063 = icmp eq i32 %3062, 0
  br i1 %3063, label %3098, label %3064

; <label>:3064                                    ; preds = %3061
  %3065 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %3066 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3067 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3068 = fadd fast float %3065, -5.000000e-01
  %3069 = fadd fast float %3066, -5.000000e-01
  %3070 = fadd fast float %3067, -5.000000e-01
  %3071 = fmul fast float %3068, %2950
  %3072 = fmul fast float %3069, %2950
  %3073 = fmul fast float %3070, %2950
  %3074 = fadd fast float %3071, 5.000000e-01
  %3075 = fadd fast float %3072, 5.000000e-01
  %3076 = fadd fast float %3073, 5.000000e-01
  %3077 = call float @dx.op.unary.f32(i32 24, float %2925)  ; Sqrt(value)
  %3078 = call float @dx.op.unary.f32(i32 24, float %2926)  ; Sqrt(value)
  %3079 = call float @dx.op.unary.f32(i32 24, float %2927)  ; Sqrt(value)
  %3080 = fmul fast float %3074, 2.000000e+00
  %3081 = fsub fast float 1.000000e+00, %3080
  %3082 = fmul fast float %3081, %3077
  %3083 = fadd fast float %3082, %3080
  %3084 = fmul fast float %3083, %3077
  %3085 = fmul fast float %3075, 2.000000e+00
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = fmul fast float %3086, %3078
  %3088 = fadd fast float %3087, %3085
  %3089 = fmul fast float %3088, %3078
  %3090 = fmul fast float %3076, 2.000000e+00
  %3091 = fsub fast float 1.000000e+00, %3090
  %3092 = fmul fast float %3091, %3079
  %3093 = fadd fast float %3092, %3090
  %3094 = fmul fast float %3093, %3079
  %3095 = fmul fast float %3084, %3084
  %3096 = fmul fast float %3089, %3089
  %3097 = fmul fast float %3094, %3094
  br label %3114

; <label>:3098                                    ; preds = %3061
  %3099 = fmul fast float %339, %339
  %3100 = fmul fast float %343, %343
  %3101 = fmul fast float %347, %347
  %3102 = fadd fast float %3099, -1.000000e+00
  %3103 = fadd fast float %3100, -1.000000e+00
  %3104 = fadd fast float %3101, -1.000000e+00
  %3105 = fmul fast float %2950, %3102
  %3106 = fmul fast float %2950, %3103
  %3107 = fmul fast float %2950, %3104
  %3108 = fadd fast float %3105, 1.000000e+00
  %3109 = fadd fast float %3106, 1.000000e+00
  %3110 = fadd fast float %3107, 1.000000e+00
  %3111 = fmul fast float %3108, %2925
  %3112 = fmul fast float %3109, %2926
  %3113 = fmul fast float %3110, %2927
  br label %3114

; <label>:3114                                    ; preds = %3098, %3064, %2955, %2911
  %3115 = phi float [ %3060, %2955 ], [ %2936, %3064 ], [ %2936, %3098 ], [ 0x3FA23C0BE0000000, %2911 ]
  %3116 = phi float [ %3052, %2955 ], [ %3095, %3064 ], [ %3111, %3098 ], [ 1.000000e+00, %2911 ]
  %3117 = phi float [ %3053, %2955 ], [ %3096, %3064 ], [ %3112, %3098 ], [ 1.000000e+00, %2911 ]
  %3118 = phi float [ %3054, %2955 ], [ %3097, %3064 ], [ %3113, %3098 ], [ 1.000000e+00, %2911 ]
  %3119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3120 = extractvalue %dx.types.CBufRet.i32 %3119, 1
  %3121 = and i32 %3120, 1
  %3122 = icmp ne i32 %3121, 0
  %3123 = add i32 %40, 356
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3123, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = and i32 %3125, 32
  %3127 = icmp ne i32 %3126, 0
  %3128 = and i1 %3122, %3127
  %3129 = select i1 %3128, float 1.000000e+00, float %3116
  %3130 = select i1 %3128, float 0x3FD3333340000000, float %3117
  %3131 = select i1 %3128, float 0x3FD3333340000000, float %3118
  %3132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3133 = extractvalue %dx.types.ResRet.i32 %3132, 0
  %3134 = and i32 %3133, 32
  %3135 = icmp eq i32 %3134, 0
  br i1 %3135, label %3208, label %3136

; <label>:3136                                    ; preds = %3114
  %3137 = add i32 %40, 140
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3137, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = add i32 %40, 388
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3140, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = add i32 %3142, 0
  %3144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3143, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3145 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3144, %dx.types.Handle %70, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3146 = extractvalue %dx.types.ResRet.f32 %3145, 0
  %3147 = extractvalue %dx.types.ResRet.f32 %3145, 1
  %3148 = extractvalue %dx.types.ResRet.f32 %3145, 2
  %3149 = extractvalue %dx.types.ResRet.f32 %3145, 3
  %3150 = and i32 %3139, 255
  %3151 = uitofp i32 %3150 to float
  %3152 = lshr i32 %3139, 8
  %3153 = and i32 %3152, 255
  %3154 = uitofp i32 %3153 to float
  %3155 = lshr i32 %3139, 16
  %3156 = and i32 %3155, 255
  %3157 = uitofp i32 %3156 to float
  %3158 = fmul fast float %3157, 0x3F70101000000000
  %3159 = fmul fast float %3146, %3151
  %3160 = fadd fast float %3159, %3154
  %3161 = fmul fast float %3160, 0x3F70101000000000
  %3162 = fadd fast float %3147, -5.000000e-01
  %3163 = fadd fast float %3149, -5.000000e-01
  %3164 = fmul fast float %3162, %3158
  %3165 = fmul fast float %3163, %3158
  %3166 = fadd fast float %3164, 5.000000e-01
  %3167 = fadd fast float %3165, 5.000000e-01
  %3168 = fmul fast float %3166, 2.000000e+00
  %3169 = fadd fast float %3168, -1.000000e+00
  %3170 = fmul fast float %3167, 2.000000e+00
  %3171 = fadd fast float %3170, -1.000000e+00
  %3172 = fadd fast float %3169, %3171
  %3173 = fmul fast float %3172, 5.000000e-01
  %3174 = fsub fast float %3169, %3171
  %3175 = fmul fast float %3174, 5.000000e-01
  %3176 = call float @dx.op.unary.f32(i32 6, float %3173)  ; FAbs(value)
  %3177 = fsub fast float 1.000000e+00, %3176
  %3178 = call float @dx.op.unary.f32(i32 6, float %3175)  ; FAbs(value)
  %3179 = fsub fast float %3177, %3178
  %3180 = call float @dx.op.dot3.f32(i32 55, float %3173, float %3175, float %3179, float %3173, float %3175, float %3179)  ; Dot3(ax,ay,az,bx,by,bz)
  %3181 = call float @dx.op.unary.f32(i32 25, float %3180)  ; Rsqrt(value)
  %3182 = fmul fast float %3173, %3181
  %3183 = fmul fast float %3175, %3181
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = and i32 %3185, 67108864
  %3187 = icmp eq i32 %3186, 0
  br i1 %3187, label %3204, label %3188

; <label>:3188                                    ; preds = %3136
  %3189 = add i32 %40, 328
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = and i32 %3191, 65535
  %3193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3192)  ; LegacyF16ToF32(value)
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 65535
  %3197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3196)  ; LegacyF16ToF32(value)
  %3198 = lshr i32 %3191, 16
  %3199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3198)  ; LegacyF16ToF32(value)
  %3200 = fsub fast float %3161, %3199
  %3201 = fmul fast float %3200, %3193
  %3202 = fadd fast float %3201, %3197
  %3203 = call float @dx.op.unary.f32(i32 7, float %3202)  ; Saturate(value)
  br label %3204

; <label>:3204                                    ; preds = %3188, %3136
  %3205 = phi float [ %3203, %3188 ], [ %3161, %3136 ]
  %3206 = call float @dx.op.dot2.f32(i32 54, float %3182, float %3183, float %2625, float %2626)  ; Dot2(ax,ay,bx,by)
  %3207 = call float @dx.op.dot2.f32(i32 54, float %3182, float %3183, float %2627, float %2628)  ; Dot2(ax,ay,bx,by)
  br label %3208

; <label>:3208                                    ; preds = %3204, %3114
  %3209 = phi float [ %3205, %3204 ], [ 0x3FD6666660000000, %3114 ]
  %3210 = phi float [ %3206, %3204 ], [ 0.000000e+00, %3114 ]
  %3211 = phi float [ %3207, %3204 ], [ 0.000000e+00, %3114 ]
  %3212 = phi float [ %3148, %3204 ], [ 1.000000e+00, %3114 ]
  %3213 = add i32 %40, 208
  %3214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3215 = extractvalue %dx.types.ResRet.i32 %3214, 0
  %3216 = lshr i32 %3215, 22
  %3217 = shl nuw nsw i32 %3216, 5
  %3218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3217)  ; LegacyF16ToF32(value)
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = and i32 %3220, 64
  %3222 = icmp eq i32 %3221, 0
  br i1 %3222, label %3256, label %3223

; <label>:3223                                    ; preds = %3208
  %3224 = add i32 %40, 404
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3224, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = add i32 %3226, 0
  %3228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3227, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 131072
  %3232 = icmp eq i32 %3231, 0
  %3233 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3228, %dx.types.Handle %70, float %2721, float %2722, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3234 = extractvalue %dx.types.ResRet.f32 %3233, 0
  %3235 = extractvalue %dx.types.ResRet.f32 %3233, 1
  %3236 = extractvalue %dx.types.ResRet.f32 %3233, 2
  %3237 = fmul fast float %3234, %327
  %3238 = fmul fast float %3235, %330
  %3239 = fmul fast float %3236, %333
  br i1 %3232, label %3246, label %3240

; <label>:3240                                    ; preds = %3223
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  %3243 = fmul fast float %3242, %3237
  %3244 = fmul fast float %3242, %3238
  %3245 = fmul fast float %3242, %3239
  br label %3246

; <label>:3246                                    ; preds = %3240, %3223
  %3247 = phi float [ %3243, %3240 ], [ %3237, %3223 ]
  %3248 = phi float [ %3244, %3240 ], [ %3238, %3223 ]
  %3249 = phi float [ %3245, %3240 ], [ %3239, %3223 ]
  %3250 = fmul fast float %3247, %3218
  %3251 = select i1 %181, float %3250, float %3247
  %3252 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3248, float %3249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3253 = select i1 %181, float 0.000000e+00, float %3247
  %3254 = select i1 %181, float %3252, float %3248
  %3255 = select i1 %181, float 0.000000e+00, float %3249
  br label %3256

; <label>:3256                                    ; preds = %3246, %3208
  %3257 = phi float [ %3253, %3246 ], [ 0.000000e+00, %3208 ]
  %3258 = phi float [ %3254, %3246 ], [ 0.000000e+00, %3208 ]
  %3259 = phi float [ %3255, %3246 ], [ 0.000000e+00, %3208 ]
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = add i32 %40, 144
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = lshr i32 %3264, 8
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = call float @dx.op.dot3.f32(i32 55, float %3129, float %3130, float %3131, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3271 = fmul fast float %3269, %3270
  %3272 = fadd fast float %3271, %3266
  %3273 = fmul fast float %3272, 0x3F70101020000000
  %3274 = call float @dx.op.unary.f32(i32 7, float %3273)  ; Saturate(value)
  br i1 %2613, label %3275, label %3283

; <label>:3275                                    ; preds = %3256
  %3276 = fsub fast float 1.000000e+00, %2909
  %3277 = fmul fast float %3276, %2605
  %3278 = fmul fast float %3276, %2606
  %3279 = fmul fast float %3276, %2607
  %3280 = fmul fast float %3276, %2602
  %3281 = fmul fast float %3276, %2603
  %3282 = fmul fast float %3276, %2604
  br label %3283

; <label>:3283                                    ; preds = %3275, %3256
  %3284 = phi float [ %3280, %3275 ], [ %2602, %3256 ]
  %3285 = phi float [ %3281, %3275 ], [ %2603, %3256 ]
  %3286 = phi float [ %3282, %3275 ], [ %2604, %3256 ]
  %3287 = phi float [ %3277, %3275 ], [ %2605, %3256 ]
  %3288 = phi float [ %3278, %3275 ], [ %2606, %3256 ]
  %3289 = phi float [ %3279, %3275 ], [ %2607, %3256 ]
  %3290 = and i32 %3261, 3
  %3291 = icmp eq i32 %3290, 3
  br i1 %3291, label %3370, label %3292

; <label>:3292                                    ; preds = %3283
  %3293 = and i32 %3261, 16
  %3294 = icmp ne i32 %3293, 0
  %3295 = select i1 %3294, float %2909, float 0.000000e+00
  %3296 = icmp eq i32 %3290, 0
  br i1 %3296, label %3297, label %3325

; <label>:3297                                    ; preds = %3292
  %3298 = and i32 %3261, 64
  %3299 = icmp ne i32 %3298, 0
  %3300 = select i1 %3299, float %2909, float 0.000000e+00
  %3301 = fsub fast float %3129, %3287
  %3302 = fsub fast float %3130, %3288
  %3303 = fsub fast float %3131, %3289
  %3304 = fmul fast float %3295, %3301
  %3305 = fmul fast float %3295, %3302
  %3306 = fmul fast float %3295, %3303
  %3307 = fadd fast float %3304, %3287
  %3308 = fadd fast float %3305, %3288
  %3309 = fadd fast float %3306, %3289
  %3310 = fsub fast float %3115, %2608
  %3311 = fmul fast float %3295, %3310
  %3312 = fadd fast float %3311, %2608
  %3313 = fsub fast float %3257, %3284
  %3314 = fsub fast float %3258, %3285
  %3315 = fsub fast float %3259, %3286
  %3316 = fmul fast float %3300, %3313
  %3317 = fmul fast float %3300, %3314
  %3318 = fmul fast float %3300, %3315
  %3319 = fadd fast float %3316, %3284
  %3320 = fadd fast float %3317, %3285
  %3321 = fadd fast float %3318, %3286
  %3322 = fsub fast float %3274, %2611
  %3323 = fmul fast float %3295, %3322
  %3324 = fadd fast float %3323, %2611
  br label %3370

; <label>:3325                                    ; preds = %3292
  %3326 = icmp eq i32 %3290, 1
  br i1 %3326, label %3327, label %3340

; <label>:3327                                    ; preds = %3325
  %3328 = fadd fast float %3129, -1.000000e+00
  %3329 = fadd fast float %3130, -1.000000e+00
  %3330 = fadd fast float %3131, -1.000000e+00
  %3331 = fmul fast float %3295, %3328
  %3332 = fmul fast float %3295, %3329
  %3333 = fmul fast float %3295, %3330
  %3334 = fadd fast float %3331, 1.000000e+00
  %3335 = fadd fast float %3332, 1.000000e+00
  %3336 = fadd fast float %3333, 1.000000e+00
  %3337 = fmul fast float %3334, %3287
  %3338 = fmul fast float %3335, %3288
  %3339 = fmul fast float %3336, %3289
  br label %3370

; <label>:3340                                    ; preds = %3325
  %3341 = icmp eq i32 %3290, 2
  br i1 %3341, label %3342, label %3370

; <label>:3342                                    ; preds = %3340
  %3343 = call float @dx.op.unary.f32(i32 24, float %3129)  ; Sqrt(value)
  %3344 = call float @dx.op.unary.f32(i32 24, float %3130)  ; Sqrt(value)
  %3345 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3346 = fadd fast float %3343, -5.000000e-01
  %3347 = fadd fast float %3344, -5.000000e-01
  %3348 = fadd fast float %3345, -5.000000e-01
  %3349 = fmul fast float %3346, %3295
  %3350 = fmul fast float %3347, %3295
  %3351 = fmul fast float %3348, %3295
  %3352 = fadd fast float %3349, 5.000000e-01
  %3353 = fadd fast float %3350, 5.000000e-01
  %3354 = fadd fast float %3351, 5.000000e-01
  %3355 = fmul fast float %3352, 2.000000e+00
  %3356 = fsub fast float 1.000000e+00, %3355
  %3357 = fmul fast float %3356, %3287
  %3358 = fadd fast float %3357, %3355
  %3359 = fmul fast float %3358, %3287
  %3360 = fmul fast float %3353, 2.000000e+00
  %3361 = fsub fast float 1.000000e+00, %3360
  %3362 = fmul fast float %3361, %3288
  %3363 = fadd fast float %3362, %3360
  %3364 = fmul fast float %3363, %3288
  %3365 = fmul fast float %3354, 2.000000e+00
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3289
  %3368 = fadd fast float %3367, %3365
  %3369 = fmul fast float %3368, %3289
  br label %3370

; <label>:3370                                    ; preds = %3342, %3340, %3327, %3297, %3283
  %3371 = phi float [ %3284, %3283 ], [ %3284, %3342 ], [ %3284, %3340 ], [ %3284, %3327 ], [ %3319, %3297 ]
  %3372 = phi float [ %3285, %3283 ], [ %3285, %3342 ], [ %3285, %3340 ], [ %3285, %3327 ], [ %3320, %3297 ]
  %3373 = phi float [ %3286, %3283 ], [ %3286, %3342 ], [ %3286, %3340 ], [ %3286, %3327 ], [ %3321, %3297 ]
  %3374 = phi float [ %3287, %3283 ], [ %3359, %3342 ], [ %3287, %3340 ], [ %3337, %3327 ], [ %3307, %3297 ]
  %3375 = phi float [ %3288, %3283 ], [ %3364, %3342 ], [ %3288, %3340 ], [ %3338, %3327 ], [ %3308, %3297 ]
  %3376 = phi float [ %3289, %3283 ], [ %3369, %3342 ], [ %3289, %3340 ], [ %3339, %3327 ], [ %3309, %3297 ]
  %3377 = phi float [ %2608, %3283 ], [ %2608, %3342 ], [ %2608, %3340 ], [ %2608, %3327 ], [ %3312, %3297 ]
  %3378 = phi float [ %2611, %3283 ], [ %2611, %3342 ], [ %2611, %3340 ], [ %2611, %3327 ], [ %3324, %3297 ]
  %3379 = and i32 %3261, 12
  %3380 = icmp eq i32 %3379, 12
  br i1 %3380, label %3453, label %3381

; <label>:3381                                    ; preds = %3370
  %3382 = and i32 %3261, 2097184
  %3383 = icmp eq i32 %3382, 2097184
  %3384 = select i1 %3383, float %2909, float 0.000000e+00
  %3385 = and i32 %3261, 4194336
  %3386 = icmp eq i32 %3385, 4194336
  %3387 = select i1 %3386, float %2909, float 0.000000e+00
  %3388 = and i32 %3261, 8388640
  %3389 = icmp eq i32 %3388, 8388640
  %3390 = select i1 %3389, float %2909, float 0.000000e+00
  %3391 = icmp eq i32 %3379, 0
  br i1 %3391, label %3392, label %3405

; <label>:3392                                    ; preds = %3381
  %3393 = fsub fast float %3210, %2600
  %3394 = fsub fast float %3211, %2601
  %3395 = fmul fast float %3384, %3393
  %3396 = fmul fast float %3384, %3394
  %3397 = fadd fast float %3395, %2600
  %3398 = fadd fast float %3396, %2601
  %3399 = fsub fast float %3212, %2610
  %3400 = fmul fast float %3387, %3399
  %3401 = fadd fast float %3400, %2610
  %3402 = fsub fast float %3209, %2609
  %3403 = fmul fast float %3390, %3402
  %3404 = fadd fast float %3403, %2609
  br label %3453

; <label>:3405                                    ; preds = %3381
  %3406 = icmp eq i32 %3379, 4
  br i1 %3406, label %3407, label %3439

; <label>:3407                                    ; preds = %3405
  %3408 = fmul fast float %3384, %3210
  %3409 = fmul fast float %3384, %3211
  %3410 = fadd fast float %3408, %2600
  %3411 = fadd fast float %3409, %2601
  %3412 = call float @dx.op.binary.f32(i32 36, float %2610, float %3212)  ; FMin(a,b)
  %3413 = fsub fast float %3412, %2610
  %3414 = fmul fast float %3413, %3387
  %3415 = fadd fast float %3414, %2610
  %3416 = fadd fast float %3209, %2609
  %3417 = fmul fast float %3416, 0x3FF337FAE0000000
  %3418 = fmul fast float %2609, %2609
  %3419 = fmul fast float %3209, %3209
  %3420 = fadd fast float %3419, %3418
  %3421 = fmul fast float %3420, 0x3FE5152B00000000
  %3422 = fmul fast float %2609, 0xBFCC1F85E0000000
  %3423 = fmul fast float %3422, %3209
  %3424 = fadd fast float %3423, 0xBFE1363700000000
  %3425 = fadd fast float %3424, %3417
  %3426 = fsub fast float %3425, %3421
  %3427 = fmul fast float %3416, 0x3FBA6F0D00000000
  %3428 = fmul fast float %3420, 0x3FD0432880000000
  %3429 = fmul fast float %2609, 0xBFEF110800000000
  %3430 = fmul fast float %3429, %3209
  %3431 = fadd fast float %3430, 1.000000e+00
  %3432 = fsub fast float %3431, %3427
  %3433 = fadd fast float %3432, %3428
  %3434 = fdiv fast float %3426, %3433
  %3435 = call float @dx.op.unary.f32(i32 7, float %3434)  ; Saturate(value)
  %3436 = fsub fast float %3435, %2609
  %3437 = fmul fast float %3436, %3390
  %3438 = fadd fast float %3437, %2609
  br label %3453

; <label>:3439                                    ; preds = %3405
  %3440 = icmp eq i32 %3379, 8
  br i1 %3440, label %3441, label %3453

; <label>:3441                                    ; preds = %3439
  %3442 = fmul fast float %3384, %3210
  %3443 = fmul fast float %3384, %3211
  %3444 = fadd fast float %3442, %2600
  %3445 = fadd fast float %3443, %2601
  %3446 = call float @dx.op.binary.f32(i32 36, float %2610, float %3212)  ; FMin(a,b)
  %3447 = fsub fast float %3446, %2610
  %3448 = fmul fast float %3447, %3387
  %3449 = fadd fast float %3448, %2610
  %3450 = fsub fast float %3209, %2609
  %3451 = fmul fast float %3390, %3450
  %3452 = fadd fast float %3451, %2609
  br label %3453

; <label>:3453                                    ; preds = %3441, %3439, %3407, %3392, %3370, %2908, %2612, %2599
  %3454 = phi float [ %2600, %3370 ], [ %2600, %2908 ], [ %2600, %2599 ], [ %2600, %2612 ], [ %3397, %3392 ], [ %3410, %3407 ], [ %2600, %3439 ], [ %3444, %3441 ]
  %3455 = phi float [ %2601, %3370 ], [ %2601, %2908 ], [ %2601, %2599 ], [ %2601, %2612 ], [ %3398, %3392 ], [ %3411, %3407 ], [ %2601, %3439 ], [ %3445, %3441 ]
  %3456 = phi float [ %3371, %3370 ], [ %2602, %2908 ], [ %2602, %2599 ], [ %2602, %2612 ], [ %3371, %3392 ], [ %3371, %3407 ], [ %3371, %3439 ], [ %3371, %3441 ]
  %3457 = phi float [ %3372, %3370 ], [ %2603, %2908 ], [ %2603, %2599 ], [ %2603, %2612 ], [ %3372, %3392 ], [ %3372, %3407 ], [ %3372, %3439 ], [ %3372, %3441 ]
  %3458 = phi float [ %3373, %3370 ], [ %2604, %2908 ], [ %2604, %2599 ], [ %2604, %2612 ], [ %3373, %3392 ], [ %3373, %3407 ], [ %3373, %3439 ], [ %3373, %3441 ]
  %3459 = phi float [ %3374, %3370 ], [ %2605, %2908 ], [ %2605, %2599 ], [ %2605, %2612 ], [ %3374, %3392 ], [ %3374, %3407 ], [ %3374, %3439 ], [ %3374, %3441 ]
  %3460 = phi float [ %3375, %3370 ], [ %2606, %2908 ], [ %2606, %2599 ], [ %2606, %2612 ], [ %3375, %3392 ], [ %3375, %3407 ], [ %3375, %3439 ], [ %3375, %3441 ]
  %3461 = phi float [ %3376, %3370 ], [ %2607, %2908 ], [ %2607, %2599 ], [ %2607, %2612 ], [ %3376, %3392 ], [ %3376, %3407 ], [ %3376, %3439 ], [ %3376, %3441 ]
  %3462 = phi float [ %3377, %3370 ], [ %2608, %2908 ], [ %2608, %2599 ], [ %2608, %2612 ], [ %3377, %3392 ], [ %3377, %3407 ], [ %3377, %3439 ], [ %3377, %3441 ]
  %3463 = phi float [ %2609, %3370 ], [ %2609, %2908 ], [ %2609, %2599 ], [ %2609, %2612 ], [ %3404, %3392 ], [ %3438, %3407 ], [ %2609, %3439 ], [ %3452, %3441 ]
  %3464 = phi float [ %2610, %3370 ], [ %2610, %2908 ], [ %2610, %2599 ], [ %2610, %2612 ], [ %3401, %3392 ], [ %3415, %3407 ], [ %2610, %3439 ], [ %3449, %3441 ]
  %3465 = phi float [ %3378, %3370 ], [ %2611, %2908 ], [ %2611, %2599 ], [ %2611, %2612 ], [ %3378, %3392 ], [ %3378, %3407 ], [ %3378, %3439 ], [ %3378, %3441 ]
  %3466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3467 = extractvalue %dx.types.CBufRet.f32 %3466, 0
  %3468 = call float @dx.op.dot2.f32(i32 54, float %3454, float %3455, float %3454, float %3455)  ; Dot2(ax,ay,bx,by)
  %3469 = fmul fast float %3468, 0x3FE3333340000000
  %3470 = fsub fast float 1.000000e+00, %3469
  %3471 = call float @dx.op.dot3.f32(i32 55, float %3454, float %3455, float %3470, float %3454, float %3455, float %3470)  ; Dot3(ax,ay,az,bx,by,bz)
  %3472 = call float @dx.op.unary.f32(i32 25, float %3471)  ; Rsqrt(value)
  %3473 = fmul fast float %3472, %3454
  %3474 = fmul fast float %3472, %3455
  %3475 = fmul fast float %3470, %3472
  %3476 = fmul fast float %3475, %81
  %3477 = fmul fast float %3475, %82
  %3478 = fmul fast float %3475, %83
  %3479 = fmul fast float %3473, %55
  %3480 = fmul fast float %3473, %56
  %3481 = fmul fast float %3473, %57
  %3482 = fadd fast float %3476, %3479
  %3483 = fadd fast float %3477, %3480
  %3484 = fadd fast float %3478, %3481
  %3485 = fmul fast float %93, %3474
  %3486 = fmul fast float %94, %3474
  %3487 = fmul fast float %95, %3474
  %3488 = fadd fast float %3482, %3485
  %3489 = fadd fast float %3483, %3486
  %3490 = fadd fast float %3484, %3487
  %3491 = call float @dx.op.dot3.f32(i32 55, float %3488, float %3489, float %3490, float %3488, float %3489, float %3490)  ; Dot3(ax,ay,az,bx,by,bz)
  %3492 = call float @dx.op.unary.f32(i32 25, float %3491)  ; Rsqrt(value)
  %3493 = fmul fast float %3488, %3492
  %3494 = fmul fast float %3489, %3492
  %3495 = fmul fast float %3490, %3492
  %3496 = fadd fast float %3462, 0xBFB99999A0000000
  %3497 = call float @dx.op.unary.f32(i32 7, float %3496)  ; Saturate(value)
  %3498 = fmul fast float %3497, 0x3FF1C71C80000000
  %3499 = call float @dx.op.binary.f32(i32 36, float %3462, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3500 = fsub fast float 1.000000e+00, %3498
  %3501 = call float @dx.op.unary.f32(i32 7, float %3500)  ; Saturate(value)
  %3502 = fmul fast float %3501, %3459
  %3503 = fmul fast float %3501, %3460
  %3504 = fmul fast float %3501, %3461
  %3505 = call float @dx.op.unary.f32(i32 7, float %3502)  ; Saturate(value)
  %3506 = call float @dx.op.unary.f32(i32 7, float %3503)  ; Saturate(value)
  %3507 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3508 = fmul fast float %3498, %3459
  %3509 = fmul fast float %3498, %3460
  %3510 = fmul fast float %3498, %3461
  %3511 = fadd fast float %3508, %3499
  %3512 = fadd fast float %3509, %3499
  %3513 = fadd fast float %3510, %3499
  %3514 = call float @dx.op.unary.f32(i32 7, float %3511)  ; Saturate(value)
  %3515 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3516 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3517 = call float @dx.op.unary.f32(i32 7, float %3463)  ; Saturate(value)
  %3518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3519 = extractvalue %dx.types.CBufRet.i32 %3518, 3
  %3520 = and i32 %3519, 8
  %3521 = icmp ne i32 %3520, 0
  %3522 = call float @dx.op.binary.f32(i32 35, float %3505, float %3459)  ; FMax(a,b)
  %3523 = call float @dx.op.binary.f32(i32 35, float %3506, float %3459)  ; FMax(a,b)
  %3524 = call float @dx.op.binary.f32(i32 35, float %3507, float %3459)  ; FMax(a,b)
  %3525 = call float @dx.op.dot3.f32(i32 55, float %3505, float %3506, float %3507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3526 = select i1 %181, float %3459, float %3505
  %3527 = select i1 %181, float %3525, float %3506
  %3528 = select i1 %181, float 1.000000e+00, float %3507
  %3529 = select i1 %3521, float %3522, float %3526
  %3530 = select i1 %3521, float %3523, float %3527
  %3531 = select i1 %3521, float %3524, float %3528
  %3532 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3533 = extractvalue %dx.types.CBufRet.f32 %3532, 0
  %3534 = extractvalue %dx.types.CBufRet.f32 %3532, 1
  %3535 = extractvalue %dx.types.CBufRet.f32 %3532, 2
  %3536 = fadd fast float %3533, %137
  %3537 = fadd fast float %3534, %138
  %3538 = fadd fast float %3535, %139
  %3539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3540 = extractvalue %dx.types.CBufRet.f32 %3539, 0
  %3541 = extractvalue %dx.types.CBufRet.f32 %3539, 1
  %3542 = fsub fast float %3536, %3540
  %3543 = fsub fast float %3537, %3541
  %3544 = fmul fast float %3542, %3542
  %3545 = fmul fast float %3543, %3543
  %3546 = fadd fast float %3544, %3545
  %3547 = call float @dx.op.unary.f32(i32 24, float %3546)  ; Sqrt(value)
  %3548 = extractvalue %dx.types.CBufRet.f32 %3539, 2
  %3549 = fcmp fast olt float %3547, %3548
  br i1 %3549, label %3550, label %3617

; <label>:3550                                    ; preds = %3453
  %3551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3552 = extractvalue %dx.types.CBufRet.f32 %3551, 0
  %3553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.f32 %3553, 0
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 0
  %3557 = extractvalue %dx.types.CBufRet.f32 %3551, 1
  %3558 = extractvalue %dx.types.CBufRet.f32 %3553, 1
  %3559 = extractvalue %dx.types.CBufRet.f32 %3555, 1
  %3560 = extractvalue %dx.types.CBufRet.f32 %3551, 3
  %3561 = extractvalue %dx.types.CBufRet.f32 %3553, 3
  %3562 = extractvalue %dx.types.CBufRet.f32 %3555, 3
  %3563 = fadd fast float %3560, %3536
  %3564 = fadd fast float %3561, %3537
  %3565 = fadd fast float %3562, %3538
  %3566 = fmul fast float %3563, %3552
  %3567 = call float @dx.op.tertiary.f32(i32 46, float %3564, float %3554, float %3566)  ; FMad(a,b,c)
  %3568 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3556, float %3567)  ; FMad(a,b,c)
  %3569 = fmul fast float %3563, %3557
  %3570 = call float @dx.op.tertiary.f32(i32 46, float %3564, float %3558, float %3569)  ; FMad(a,b,c)
  %3571 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3559, float %3570)  ; FMad(a,b,c)
  %3572 = fsub fast float %3568, %3560
  %3573 = fsub fast float %3571, %3561
  %3574 = fsub fast float %3572, %3540
  %3575 = fadd fast float %3574, %3548
  %3576 = fsub fast float %3573, %3541
  %3577 = fadd fast float %3576, %3548
  %3578 = extractvalue %dx.types.CBufRet.f32 %3539, 3
  %3579 = fmul fast float %3575, %3578
  %3580 = fmul fast float %3577, %3578
  %3581 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  %3582 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3583 = fsub fast float 1.000000e+00, %3581
  %3584 = fsub fast float 1.000000e+00, %3582
  %3585 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %36, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = fcmp fast ugt float %3586, 0.000000e+00
  br i1 %3587, label %3588, label %3891

; <label>:3588                                    ; preds = %3550
  %3589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.f32 %3589, 2
  %3591 = fmul fast float %3590, %3586
  %3592 = extractvalue %dx.types.CBufRet.f32 %3589, 3
  %3593 = fadd fast float %3592, %3591
  %3594 = extractvalue %dx.types.CBufRet.f32 %3555, 2
  %3595 = fadd fast float %3593, %3562
  %3596 = fmul fast float %3568, %3556
  %3597 = call float @dx.op.tertiary.f32(i32 46, float %3571, float %3559, float %3596)  ; FMad(a,b,c)
  %3598 = call float @dx.op.tertiary.f32(i32 46, float %3595, float %3594, float %3597)  ; FMad(a,b,c)
  %3599 = fsub fast float %3598, %3562
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 2
  %3602 = fsub fast float %3599, %3601
  %3603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %36, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %36, float %3583, float %3584, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = fadd fast float %3608, %3604
  %3612 = fmul fast float %3611, 0x3F847AE140000000
  %3613 = fadd fast float %3609, %3605
  %3614 = fmul fast float %3613, 0x3F847AE140000000
  %3615 = fadd fast float %3610, %3606
  %3616 = fmul fast float %3615, 0x3F847AE140000000
  br label %3891

; <label>:3617                                    ; preds = %3453
  %3618 = and i32 %155, 1
  %3619 = icmp eq i32 %3618, 0
  br i1 %3619, label %3891, label %3620

; <label>:3620                                    ; preds = %3617
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 0
  %3623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.f32 %3623, 0
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.CBufRet.f32 %3621, 1
  %3628 = extractvalue %dx.types.CBufRet.f32 %3623, 1
  %3629 = extractvalue %dx.types.CBufRet.f32 %3625, 1
  %3630 = extractvalue %dx.types.CBufRet.f32 %3621, 3
  %3631 = extractvalue %dx.types.CBufRet.f32 %3623, 3
  %3632 = extractvalue %dx.types.CBufRet.f32 %3625, 3
  %3633 = fadd fast float %3630, %3536
  %3634 = fadd fast float %3631, %3537
  %3635 = fadd fast float %3632, %3538
  %3636 = fmul fast float %3633, %3622
  %3637 = call float @dx.op.tertiary.f32(i32 46, float %3634, float %3624, float %3636)  ; FMad(a,b,c)
  %3638 = call float @dx.op.tertiary.f32(i32 46, float %3635, float %3626, float %3637)  ; FMad(a,b,c)
  %3639 = fmul fast float %3633, %3627
  %3640 = call float @dx.op.tertiary.f32(i32 46, float %3634, float %3628, float %3639)  ; FMad(a,b,c)
  %3641 = call float @dx.op.tertiary.f32(i32 46, float %3635, float %3629, float %3640)  ; FMad(a,b,c)
  %3642 = fsub fast float %3638, %3630
  %3643 = fsub fast float %3641, %3631
  %3644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3645 = extractvalue %dx.types.CBufRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.CBufRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.CBufRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.CBufRet.f32 %3644, 3
  %3649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3650 = extractvalue %dx.types.CBufRet.f32 %3649, 3
  %3651 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3652 = extractvalue %dx.types.CBufRet.i32 %3651, 0
  %3653 = extractvalue %dx.types.CBufRet.i32 %3651, 1
  %3654 = udiv i32 %3653, %3652
  %3655 = fsub fast float %3642, %3645
  %3656 = fsub fast float %3643, %3646
  %3657 = call float @dx.op.binary.f32(i32 35, float %3655, float 0.000000e+00)  ; FMax(a,b)
  %3658 = call float @dx.op.binary.f32(i32 35, float %3656, float 0.000000e+00)  ; FMax(a,b)
  %3659 = call float @dx.op.binary.f32(i32 36, float %3657, float %3647)  ; FMin(a,b)
  %3660 = call float @dx.op.binary.f32(i32 36, float %3658, float %3648)  ; FMin(a,b)
  %3661 = add i32 %3652, -1
  %3662 = add i32 %3654, -1
  %3663 = fmul fast float %3659, %3650
  %3664 = fmul fast float %3660, %3650
  %3665 = fptoui float %3663 to i32
  %3666 = fptoui float %3664 to i32
  %3667 = call i32 @dx.op.binary.i32(i32 40, i32 %3665, i32 %3661)  ; UMin(a,b)
  %3668 = call i32 @dx.op.binary.i32(i32 40, i32 %3666, i32 %3662)  ; UMin(a,b)
  %3669 = mul i32 %3668, %3652
  %3670 = add i32 %3669, %3667
  %3671 = shl i32 %3670, 2
  %3672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %3671, i32 undef)  ; BufferLoad(srv,index,wot)
  %3673 = extractvalue %dx.types.ResRet.i32 %3672, 0
  %3674 = icmp eq i32 %3673, -1
  br i1 %3674, label %3891, label %3675

; <label>:3675                                    ; preds = %3620
  %3676 = mul i32 %3673, 148
  %3677 = add i32 %3676, 4
  %3678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = add i32 %3676, 8
  %3681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = add i32 %3676, 36
  %3684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = add i32 %3676, 60
  %3687 = add i32 %3676, 92
  %3688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3687, i32 undef)  ; BufferLoad(srv,index,wot)
  %3689 = extractvalue %dx.types.ResRet.i32 %3688, 0
  %3690 = add i32 %3676, 116
  %3691 = fsub fast float %3642, %3679
  %3692 = fsub fast float %3643, %3682
  %3693 = fmul fast float %3650, %3691
  %3694 = fmul fast float %3650, %3692
  %3695 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3696 = call float @dx.op.unary.f32(i32 7, float %3694)  ; Saturate(value)
  %3697 = fsub fast float 1.000000e+00, %3696
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 2
  %3700 = call float @dx.op.unary.f32(i32 83, float %3695)  ; DerivCoarseX(value)
  %3701 = call float @dx.op.unary.f32(i32 83, float %3697)  ; DerivCoarseX(value)
  %3702 = call float @dx.op.unary.f32(i32 84, float %3695)  ; DerivCoarseY(value)
  %3703 = call float @dx.op.unary.f32(i32 84, float %3697)  ; DerivCoarseY(value)
  %3704 = fmul fast float %3700, %3699
  %3705 = fmul fast float %3701, %3699
  %3706 = fmul fast float %3702, %3699
  %3707 = fmul fast float %3703, %3699
  %3708 = call float @dx.op.dot2.f32(i32 54, float %3706, float %3707, float %3706, float %3707)  ; Dot2(ax,ay,bx,by)
  %3709 = call float @dx.op.dot2.f32(i32 54, float %3704, float %3705, float %3704, float %3705)  ; Dot2(ax,ay,bx,by)
  %3710 = call float @dx.op.binary.f32(i32 35, float %3709, float %3708)  ; FMax(a,b)
  %3711 = call float @dx.op.unary.f32(i32 23, float %3710)  ; Log(value)
  %3712 = fmul fast float %3711, 5.000000e-01
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 1
  %3715 = fadd fast float %3714, %3712
  %3716 = call float @dx.op.binary.f32(i32 35, float %3715, float 0.000000e+00)  ; FMax(a,b)
  %3717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.f32 %3717, 3
  %3719 = fadd fast float %3718, %3716
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 3
  %3722 = fadd fast float %3719, %3721
  %3723 = add i32 %3689, 0
  %3724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3723, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3725 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3724, i32 0)  ; GetDimensions(handle,mipLevel)
  %3726 = extractvalue %dx.types.Dimensions %3725, 0
  %3727 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3726)  ; FirstbitLo(value)
  %3728 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3729 = extractvalue %dx.types.CBufRet.i32 %3728, 1
  %3730 = sub nsw i32 %3729, %3727
  %3731 = sitofp i32 %3730 to float
  %3732 = fsub fast float %3722, %3731
  %3733 = call float @dx.op.binary.f32(i32 35, float %3732, float 0.000000e+00)  ; FMax(a,b)
  %3734 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3724, %dx.types.Handle %34, float %3695, float %3697, float %3685, float undef, i32 0, i32 0, i32 undef, float %3733)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = fcmp ule float %3735, 0x3FE0101020000000
  %3737 = extractvalue %dx.types.CBufRet.i32 %3728, 0
  %3738 = and i32 %3737, 128
  %3739 = icmp ne i32 %3738, 0
  %3740 = and i1 %3736, %3739
  br i1 %3740, label %3891, label %3741

; <label>:3741                                    ; preds = %3675
  %3742 = add i32 %3676, 20
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = add i32 %3676, 24
  %3746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3748 = add i32 %3676, 40
  %3749 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3748, i32 undef)  ; BufferLoad(srv,index,wot)
  %3750 = extractvalue %dx.types.ResRet.f32 %3749, 0
  %3751 = add i32 %3676, 96
  %3752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3751, i32 undef)  ; BufferLoad(srv,index,wot)
  %3753 = extractvalue %dx.types.ResRet.i32 %3752, 0
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 2
  %3756 = fmul fast float %3755, %3695
  %3757 = fmul fast float %3755, %3697
  %3758 = extractvalue %dx.types.CBufRet.f32 %3754, 3
  %3759 = fadd fast float %3756, %3758
  %3760 = fadd fast float %3757, %3758
  %3761 = add i32 %3753, 0
  %3762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3761, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3763 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3762, i32 0)  ; GetDimensions(handle,mipLevel)
  %3764 = extractvalue %dx.types.Dimensions %3763, 0
  %3765 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3764)  ; FirstbitLo(value)
  %3766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.i32 %3766, 1
  %3768 = sub nsw i32 %3767, %3765
  %3769 = sitofp i32 %3768 to float
  %3770 = fsub fast float %3719, %3769
  %3771 = call float @dx.op.binary.f32(i32 35, float %3770, float 0.000000e+00)  ; FMax(a,b)
  %3772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3762, %dx.types.Handle %34, float %3759, float %3760, float %3750, float undef, i32 0, i32 0, i32 undef, float %3771)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3773 = extractvalue %dx.types.ResRet.f32 %3772, 0
  %3774 = fmul fast float %3773, %3744
  %3775 = fadd fast float %3774, %3747
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 0
  %3778 = extractvalue %dx.types.CBufRet.f32 %3776, 1
  %3779 = extractvalue %dx.types.CBufRet.f32 %3776, 2
  %3780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3781 = extractvalue %dx.types.CBufRet.f32 %3780, 3
  %3782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3783 = extractvalue %dx.types.CBufRet.f32 %3782, 3
  %3784 = extractvalue %dx.types.CBufRet.f32 %3776, 3
  %3785 = fadd fast float %3781, %3642
  %3786 = fadd fast float %3783, %3643
  %3787 = fadd fast float %3775, %3784
  %3788 = fmul fast float %3785, %3777
  %3789 = call float @dx.op.tertiary.f32(i32 46, float %3786, float %3778, float %3788)  ; FMad(a,b,c)
  %3790 = call float @dx.op.tertiary.f32(i32 46, float %3787, float %3779, float %3789)  ; FMad(a,b,c)
  %3791 = fsub fast float %3790, %3784
  %3792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.f32 %3792, 2
  %3794 = fsub fast float %3791, %3793
  %3795 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3796 = extractvalue %dx.types.CBufRet.i32 %3795, 0
  %3797 = call i32 @dx.op.binary.i32(i32 40, i32 %3673, i32 %3796)  ; UMin(a,b)
  %3798 = mul i32 %3797, 36
  %3799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3798, i32 undef)  ; BufferLoad(srv,index,wot)
  %3800 = extractvalue %dx.types.ResRet.i32 %3799, 0
  %3801 = add i32 %3798, 4
  %3802 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3803 = extractvalue %dx.types.CBufRet.f32 %3802, 0
  %3804 = fmul fast float %3803, %3695
  %3805 = fmul fast float %3803, %3697
  %3806 = extractvalue %dx.types.CBufRet.f32 %3802, 1
  %3807 = fadd fast float %3804, %3806
  %3808 = fadd fast float %3805, %3806
  %3809 = icmp eq i32 %3800, 0
  br i1 %3809, label %3878, label %3810

; <label>:3810                                    ; preds = %3741
  br label %3811

; <label>:3811                                    ; preds = %3868, %3810
  %3812 = phi float [ %3869, %3868 ], [ 0.000000e+00, %3810 ]
  %3813 = phi float [ %3870, %3868 ], [ 0.000000e+00, %3810 ]
  %3814 = phi float [ %3871, %3868 ], [ 0.000000e+00, %3810 ]
  %3815 = phi float [ %3872, %3868 ], [ 0.000000e+00, %3810 ]
  %3816 = phi float [ %3873, %3868 ], [ 0.000000e+00, %3810 ]
  %3817 = phi float [ %3874, %3868 ], [ 0.000000e+00, %3810 ]
  %3818 = phi i32 [ %3875, %3868 ], [ 0, %3810 ]
  %3819 = shl i32 %3818, 2
  %3820 = add i32 %3686, %3819
  %3821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %3820, i32 undef)  ; BufferLoad(srv,index,wot)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = add i32 %3690, %3819
  %3824 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.i32 %3824, 0
  %3826 = add i32 %3825, 0
  %3827 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3826, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3828 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3827, i32 0)  ; GetDimensions(handle,mipLevel)
  %3829 = extractvalue %dx.types.Dimensions %3828, 0
  %3830 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3829)  ; FirstbitLo(value)
  %3831 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.i32 %3831, 1
  %3833 = sub nsw i32 %3832, %3830
  %3834 = sitofp i32 %3833 to float
  %3835 = fsub fast float %3719, %3834
  %3836 = call float @dx.op.binary.f32(i32 35, float %3835, float 0.000000e+00)  ; FMax(a,b)
  %3837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3827, %dx.types.Handle %34, float %3807, float %3808, float %3822, float undef, i32 0, i32 0, i32 undef, float %3836)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = fcmp fast ogt float %3838, 0.000000e+00
  br i1 %3839, label %3840, label %3868

; <label>:3840                                    ; preds = %3811
  %3841 = add i32 %3801, %3819
  %3842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %3841, i32 undef)  ; BufferLoad(srv,index,wot)
  %3843 = extractvalue %dx.types.ResRet.i32 %3842, 0
  %3844 = and i32 %3843, 32767
  %3845 = mul nuw nsw i32 %3844, 928
  %3846 = add nuw nsw i32 %3845, 48
  %3847 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3846, i32 undef)  ; BufferLoad(srv,index,wot)
  %3848 = extractvalue %dx.types.ResRet.f32 %3847, 0
  %3849 = extractvalue %dx.types.ResRet.f32 %3847, 1
  %3850 = extractvalue %dx.types.ResRet.f32 %3847, 2
  %3851 = add nuw nsw i32 %3845, 60
  %3852 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %3851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3853 = extractvalue %dx.types.ResRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.ResRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.ResRet.f32 %3852, 2
  %3856 = fmul fast float %3848, %3838
  %3857 = fmul fast float %3849, %3838
  %3858 = fmul fast float %3850, %3838
  %3859 = fadd fast float %3856, %3812
  %3860 = fadd fast float %3857, %3813
  %3861 = fadd fast float %3858, %3814
  %3862 = fmul fast float %3853, %3838
  %3863 = fmul fast float %3854, %3838
  %3864 = fmul fast float %3855, %3838
  %3865 = fadd fast float %3862, %3815
  %3866 = fadd fast float %3863, %3816
  %3867 = fadd fast float %3864, %3817
  br label %3868

; <label>:3868                                    ; preds = %3840, %3811
  %3869 = phi float [ %3859, %3840 ], [ %3812, %3811 ]
  %3870 = phi float [ %3860, %3840 ], [ %3813, %3811 ]
  %3871 = phi float [ %3861, %3840 ], [ %3814, %3811 ]
  %3872 = phi float [ %3865, %3840 ], [ %3815, %3811 ]
  %3873 = phi float [ %3866, %3840 ], [ %3816, %3811 ]
  %3874 = phi float [ %3867, %3840 ], [ %3817, %3811 ]
  %3875 = add nuw i32 %3818, 1
  %3876 = icmp eq i32 %3875, %3800
  br i1 %3876, label %3877, label %3811

; <label>:3877                                    ; preds = %3868
  br label %3878

; <label>:3878                                    ; preds = %3877, %3741
  %3879 = phi float [ 0.000000e+00, %3741 ], [ %3869, %3877 ]
  %3880 = phi float [ 0.000000e+00, %3741 ], [ %3870, %3877 ]
  %3881 = phi float [ 0.000000e+00, %3741 ], [ %3871, %3877 ]
  %3882 = phi float [ 0.000000e+00, %3741 ], [ %3872, %3877 ]
  %3883 = phi float [ 0.000000e+00, %3741 ], [ %3873, %3877 ]
  %3884 = phi float [ 0.000000e+00, %3741 ], [ %3874, %3877 ]
  %3885 = fadd fast float %3882, %3879
  %3886 = fmul fast float %3885, 0x3F847AE140000000
  %3887 = fadd fast float %3883, %3880
  %3888 = fmul fast float %3887, 0x3F847AE140000000
  %3889 = fadd fast float %3884, %3881
  %3890 = fmul fast float %3889, 0x3F847AE140000000
  br label %3891

; <label>:3891                                    ; preds = %3878, %3675, %3620, %3617, %3588, %3550
  %3892 = phi float [ %3602, %3588 ], [ -1.310720e+05, %3550 ], [ %3794, %3878 ], [ -1.310720e+05, %3620 ], [ -1.310720e+05, %3675 ], [ -1.310720e+05, %3617 ]
  %3893 = phi float [ %3612, %3588 ], [ 0.000000e+00, %3550 ], [ %3886, %3878 ], [ 0.000000e+00, %3620 ], [ 0.000000e+00, %3675 ], [ 0.000000e+00, %3617 ]
  %3894 = phi float [ %3614, %3588 ], [ 0.000000e+00, %3550 ], [ %3888, %3878 ], [ 0.000000e+00, %3620 ], [ 0.000000e+00, %3675 ], [ 0.000000e+00, %3617 ]
  %3895 = phi float [ %3616, %3588 ], [ 0.000000e+00, %3550 ], [ %3890, %3878 ], [ 0.000000e+00, %3620 ], [ 0.000000e+00, %3675 ], [ 0.000000e+00, %3617 ]
  %3896 = phi i1 [ true, %3588 ], [ false, %3550 ], [ true, %3878 ], [ false, %3620 ], [ false, %3675 ], [ false, %3617 ]
  %3897 = and i32 %155, 3
  %3898 = icmp eq i32 %3897, 1
  %3899 = select i1 %3898, float 1.000000e+00, float 0.000000e+00
  %3900 = fsub fast float %3892, %139
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = select i1 %3896, float %3901, float 1.000000e+00
  %3903 = fmul fast float %3902, %3899
  %3904 = icmp eq i32 %3897, 3
  %3905 = select i1 %3904, float 1.000000e+00, float %3903
  %3906 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3905)  ; FMax(a,b)
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = fcmp fast une float %3907, 0.000000e+00
  %3909 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %137, float %138, float %139)  ; Dot3(ax,ay,az,bx,by,bz)
  %3910 = call float @dx.op.unary.f32(i32 25, float %3909)  ; Rsqrt(value)
  br i1 %3908, label %3918, label %3911

; <label>:3911                                    ; preds = %3891
  %3912 = fmul fast float %3910, %137
  %3913 = fmul fast float %3910, %138
  %3914 = fmul fast float %3910, %139
  %3915 = fsub fast float -0.000000e+00, %3912
  %3916 = fsub fast float -0.000000e+00, %3913
  %3917 = fsub fast float -0.000000e+00, %3914
  br label %4086

; <label>:3918                                    ; preds = %3891
  %3919 = fmul fast float %137, %3910
  %3920 = fsub fast float -0.000000e+00, %3919
  %3921 = fmul fast float %138, %3910
  %3922 = fsub fast float -0.000000e+00, %3921
  %3923 = fmul fast float %139, %3910
  %3924 = fsub fast float -0.000000e+00, %3923
  %3925 = call float @dx.op.dot3.f32(i32 55, float %3920, float %3922, float %3924, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %3926 = fmul fast float %3907, 2.500000e+00
  %3927 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3928 = fmul fast float %3907, 0x4013FFFFE0000000
  %3929 = fadd fast float %3928, 0xBFFFFFFFE0000000
  %3930 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3931 = fmul fast float %3907, 0x4004000020000000
  %3932 = fadd fast float %3931, 0xBFF8000040000000
  %3933 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3934 = call float @dx.op.unary.f32(i32 7, float %3927)  ; Saturate(value)
  %3935 = fmul fast float %3496, 1.000000e+01
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3937 = fmul fast float %3936, 2.000000e+00
  %3938 = fsub fast float 3.000000e+00, %3937
  %3939 = fmul fast float %3936, %3936
  %3940 = fmul fast float %3939, %3938
  %3941 = fsub fast float 1.000000e+00, %3940
  %3942 = fsub fast float 0x3FE3333340000000, %3517
  %3943 = fmul fast float %3942, 0x400AAAAAA0000000
  %3944 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3945 = fmul fast float %3941, %3944
  %3946 = fmul fast float %3529, 0x3FEA2B8620000000
  %3947 = fmul fast float %3530, 0x3FEA2B8620000000
  %3948 = fmul fast float %3531, 0x3FEA2B8620000000
  %3949 = fadd fast float %3946, 0x3FC81DFBA0000000
  %3950 = fmul fast float %3949, %3529
  %3951 = fadd fast float %3950, 0x3F910E6020000000
  %3952 = fadd fast float %3947, 0x3FC81DFBA0000000
  %3953 = fmul fast float %3952, %3530
  %3954 = fadd fast float %3953, 0x3F910E6020000000
  %3955 = fadd fast float %3948, 0x3FC81DFBA0000000
  %3956 = fmul fast float %3955, %3531
  %3957 = fadd fast float %3956, 0x3F910E6020000000
  %3958 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3959 = call float @dx.op.unary.f32(i32 7, float %3954)  ; Saturate(value)
  %3960 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3961 = fsub fast float %3958, %3529
  %3962 = fsub fast float %3959, %3530
  %3963 = fsub fast float %3960, %3531
  %3964 = fmul fast float %3961, %3934
  %3965 = fmul fast float %3964, %3945
  %3966 = fmul fast float %3962, %3934
  %3967 = fmul fast float %3966, %3945
  %3968 = fmul fast float %3963, %3934
  %3969 = fmul fast float %3968, %3945
  %3970 = fadd fast float %3965, %3529
  %3971 = fadd fast float %3967, %3530
  %3972 = fadd fast float %3969, %3531
  %3973 = fmul fast float %3464, %3464
  %3974 = fmul fast float %3973, %3973
  %3975 = fadd fast float %3930, 1.000000e+00
  %3976 = fsub fast float %3975, %3945
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = call float @dx.op.dot3.f32(i32 55, float %81, float %82, float %83, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3979 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3980 = fsub fast float 1.000000e+00, %3974
  %3981 = call float @dx.op.binary.f32(i32 36, float %3977, float %3980)  ; FMin(a,b)
  %3982 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3983 = call float @dx.op.binary.f32(i32 35, float %3981, float %3982)  ; FMax(a,b)
  %3984 = fadd fast float %3979, 0xBFE4CCCCC0000000
  %3985 = fmul fast float %3984, 0x4006DB6DA0000000
  %3986 = call float @dx.op.unary.f32(i32 7, float %3985)  ; Saturate(value)
  %3987 = fmul fast float %3986, 2.000000e+00
  %3988 = fsub fast float 3.000000e+00, %3987
  %3989 = bitcast float %3514 to i32
  %3990 = ashr i32 %3989, 1
  %3991 = add nsw i32 %3990, 532487669
  %3992 = bitcast i32 %3991 to float
  %3993 = fsub fast float 1.000000e+00, %3992
  %3994 = bitcast float %3993 to i32
  %3995 = sub nsw i32 2129859010, %3994
  %3996 = bitcast i32 %3995 to float
  %3997 = fmul fast float %3996, 2.000000e+00
  %3998 = bitcast float %3515 to i32
  %3999 = ashr i32 %3998, 1
  %4000 = add nsw i32 %3999, 532487669
  %4001 = bitcast i32 %4000 to float
  %4002 = fsub fast float 1.000000e+00, %4001
  %4003 = bitcast float %4002 to i32
  %4004 = sub nsw i32 2129859010, %4003
  %4005 = bitcast i32 %4004 to float
  %4006 = fmul fast float %4005, 2.000000e+00
  %4007 = bitcast float %3516 to i32
  %4008 = ashr i32 %4007, 1
  %4009 = add nsw i32 %4008, 532487669
  %4010 = bitcast i32 %4009 to float
  %4011 = fsub fast float 1.000000e+00, %4010
  %4012 = bitcast float %4011 to i32
  %4013 = sub nsw i32 2129859010, %4012
  %4014 = bitcast i32 %4013 to float
  %4015 = fmul fast float %4014, 2.000000e+00
  %4016 = fsub fast float 0x4002A9FBE0000000, %3997
  %4017 = fadd fast float %3997, 0x3FD54FDF00000000
  %4018 = bitcast float %4017 to i32
  %4019 = sub nsw i32 2129859010, %4018
  %4020 = bitcast i32 %4019 to float
  %4021 = fmul fast float %4020, %4016
  %4022 = fmul fast float %4021, %4021
  %4023 = fsub fast float 0x4002A9FBE0000000, %4006
  %4024 = fadd fast float %4006, 0x3FD54FDF00000000
  %4025 = bitcast float %4024 to i32
  %4026 = sub nsw i32 2129859010, %4025
  %4027 = bitcast i32 %4026 to float
  %4028 = fmul fast float %4027, %4023
  %4029 = fmul fast float %4028, %4028
  %4030 = fsub fast float 0x4002A9FBE0000000, %4015
  %4031 = fadd fast float %4015, 0x3FD54FDF00000000
  %4032 = bitcast float %4031 to i32
  %4033 = sub nsw i32 2129859010, %4032
  %4034 = bitcast i32 %4033 to float
  %4035 = fmul fast float %4034, %4030
  %4036 = fmul fast float %4035, %4035
  %4037 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4022)  ; FMax(a,b)
  %4038 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4029)  ; FMax(a,b)
  %4039 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4036)  ; FMax(a,b)
  %4040 = fsub fast float 1.000000e+00, %3925
  %4041 = fadd fast float %4040, %3941
  %4042 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4043 = fsub fast float 1.000000e+00, %3905
  %4044 = fmul fast float %3983, %4043
  %4045 = fmul fast float %3986, %3986
  %4046 = fmul fast float %4045, %4044
  %4047 = fmul fast float %4046, %3988
  %4048 = fmul fast float %4043, 0xBFE99999A0000000
  %4049 = fmul fast float %4048, %3934
  %4050 = fmul fast float %4049, %3945
  %4051 = fadd fast float %4050, 1.000000e+00
  %4052 = fadd fast float %3517, -1.000000e+00
  %4053 = fmul fast float %4051, %4052
  %4054 = fadd fast float %4053, 1.000000e+00
  %4055 = fsub fast float %4037, %3514
  %4056 = fsub fast float %4038, %3515
  %4057 = fsub fast float %4039, %3516
  %4058 = fmul fast float %4047, %4055
  %4059 = fmul fast float %4047, %4056
  %4060 = fmul fast float %4047, %4057
  %4061 = fadd fast float %4058, %3514
  %4062 = fadd fast float %4059, %3515
  %4063 = fadd fast float %4060, %3516
  %4064 = fsub fast float %81, %3493
  %4065 = fsub fast float %82, %3494
  %4066 = fsub fast float %83, %3495
  %4067 = fmul fast float %4047, %4064
  %4068 = fmul fast float %4047, %4065
  %4069 = fmul fast float %4047, %4066
  %4070 = fadd fast float %4067, %3493
  %4071 = fadd fast float %4068, %3494
  %4072 = fadd fast float %4069, %3495
  %4073 = fmul fast float %4047, %4042
  %4074 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4075 = fsub fast float 1.000000e+00, %4074
  %4076 = fmul fast float %4073, %4075
  %4077 = fadd fast float %4076, %4074
  %4078 = fsub fast float 1.000000e+00, %3464
  %4079 = fmul fast float %4047, %4078
  %4080 = fadd fast float %4079, %3464
  %4081 = call float @dx.op.dot3.f32(i32 55, float %4070, float %4071, float %4072, float %4070, float %4071, float %4072)  ; Dot3(ax,ay,az,bx,by,bz)
  %4082 = call float @dx.op.unary.f32(i32 25, float %4081)  ; Rsqrt(value)
  %4083 = fmul fast float %4070, %4082
  %4084 = fmul fast float %4071, %4082
  %4085 = fmul fast float %4072, %4082
  br label %4086

; <label>:4086                                    ; preds = %3918, %3911
  %4087 = phi float [ %3917, %3911 ], [ %3924, %3918 ]
  %4088 = phi float [ %3916, %3911 ], [ %3922, %3918 ]
  %4089 = phi float [ %3915, %3911 ], [ %3920, %3918 ]
  %4090 = phi float [ %3914, %3911 ], [ %3923, %3918 ]
  %4091 = phi float [ %3913, %3911 ], [ %3921, %3918 ]
  %4092 = phi float [ %3912, %3911 ], [ %3919, %3918 ]
  %4093 = phi float [ %3514, %3911 ], [ %4061, %3918 ]
  %4094 = phi float [ %3515, %3911 ], [ %4062, %3918 ]
  %4095 = phi float [ %3516, %3911 ], [ %4063, %3918 ]
  %4096 = phi float [ %3493, %3911 ], [ %4083, %3918 ]
  %4097 = phi float [ %3494, %3911 ], [ %4084, %3918 ]
  %4098 = phi float [ %3495, %3911 ], [ %4085, %3918 ]
  %4099 = phi float [ %3529, %3911 ], [ %3970, %3918 ]
  %4100 = phi float [ %3530, %3911 ], [ %3971, %3918 ]
  %4101 = phi float [ %3531, %3911 ], [ %3972, %3918 ]
  %4102 = phi float [ %3517, %3911 ], [ %4077, %3918 ]
  %4103 = phi float [ %3464, %3911 ], [ %4080, %3918 ]
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 2
  %4106 = extractvalue %dx.types.CBufRet.f32 %4104, 3
  %4107 = fmul fast float %4105, %74
  %4108 = fmul fast float %4106, %75
  %4109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4110 = extractvalue %dx.types.CBufRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.CBufRet.f32 %4109, 1
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %36, float %4107, float %4108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = fmul fast float %4113, %4111
  %4115 = call float @dx.op.unary.f32(i32 7, float %4114)  ; Saturate(value)
  %4116 = fadd fast float %4115, -1.000000e+00
  %4117 = fmul fast float %4116, %4110
  %4118 = fadd fast float %4117, 1.000000e+00
  %4119 = select i1 %181, float 0.000000e+00, float %4095
  %4120 = call float @dx.op.dot3.f32(i32 55, float %4096, float %4097, float %4098, float %4089, float %4088, float %4087)  ; Dot3(ax,ay,az,bx,by,bz)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4120)  ; Saturate(value)
  %4122 = call float @dx.op.dot3.f32(i32 55, float %4092, float %4091, float %4090, float %4096, float %4097, float %4098)  ; Dot3(ax,ay,az,bx,by,bz)
  %4123 = fmul fast float %4122, 2.000000e+00
  %4124 = fmul fast float %4123, %4096
  %4125 = fmul fast float %4123, %4097
  %4126 = fmul fast float %4123, %4098
  %4127 = fsub fast float %4092, %4124
  %4128 = fsub fast float %4091, %4125
  %4129 = fsub fast float %4090, %4126
  %4130 = call float @dx.op.binary.f32(i32 36, float %4103, float %4118)  ; FMin(a,b)
  %4131 = fsub fast float 1.000000e+00, %4130
  %4132 = bitcast float %4131 to i32
  %4133 = ashr i32 %4132, 1
  %4134 = add nsw i32 %4133, 532487669
  %4135 = bitcast i32 %4134 to float
  %4136 = fsub fast float 1.000000e+00, %4102
  %4137 = call float @dx.op.binary.f32(i32 35, float %4136, float 0x3F847AE140000000)  ; FMax(a,b)
  %4138 = fmul fast float %4137, %4137
  %4139 = fmul fast float %4138, %4138
  %4140 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %4135, float %4139, float %4140, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4142 = extractvalue %dx.types.ResRet.f32 %4141, 0
  %4143 = fsub fast float 1.000000e+00, %4103
  %4144 = bitcast float %4143 to i32
  %4145 = sub nsw i32 2129859010, %4144
  %4146 = fsub fast float 1.000000e+00, %51
  %4147 = call float @dx.op.dot3.f32(i32 55, float %101, float %102, float %103, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4148 = call float @dx.op.binary.f32(i32 35, float %4147, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4149 = fdiv fast float %4146, %4148
  %4150 = call float @dx.op.dot3.f32(i32 55, float %4096, float %4097, float %4098, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4151 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4152 = fmul fast float %4151, 5.000000e-01
  %4153 = fadd fast float %4152, 5.000000e-01
  %4154 = fmul fast float %4153, %51
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4096, float %4097, float %4098, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = fmul fast float %4156, %4149
  %4158 = fadd fast float %4154, %4157
  %4159 = fsub fast float 5.000000e-01, %4152
  %4160 = fmul fast float %4159, %4099
  %4161 = fmul fast float %4159, %4100
  %4162 = fmul fast float %4159, %4101
  %4163 = fadd fast float %4158, %4160
  %4164 = fadd fast float %4158, %4161
  %4165 = fadd fast float %4158, %4162
  %4166 = call float @dx.op.dot3.f32(i32 55, float %4127, float %4128, float %4129, float %81, float %82, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4167 = call float @dx.op.unary.f32(i32 7, float %4166)  ; Saturate(value)
  %4168 = fmul fast float %4167, 5.000000e-01
  %4169 = fadd fast float %4168, 5.000000e-01
  %4170 = fmul fast float %4169, %51
  %4171 = call float @dx.op.dot3.f32(i32 55, float %4127, float %4128, float %4129, float %101, float %102, float %103)  ; Dot3(ax,ay,az,bx,by,bz)
  %4172 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4173 = fmul fast float %4172, %4149
  %4174 = fadd fast float %4170, %4173
  %4175 = fsub fast float 5.000000e-01, %4168
  %4176 = fmul fast float %4175, %4099
  %4177 = fmul fast float %4175, %4100
  %4178 = fmul fast float %4175, %4101
  %4179 = fadd fast float %4174, %4176
  %4180 = fadd fast float %4174, %4177
  %4181 = fadd fast float %4174, %4178
  %4182 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 0
  %4185 = call float @dx.op.binary.f32(i32 36, float %4099, float %4184)  ; FMin(a,b)
  %4186 = fmul fast float %4185, %4131
  %4187 = fsub fast float 1.000000e+00, %4186
  %4188 = bitcast float %4187 to i32
  %4189 = sub nsw i32 2129859010, %4188
  %4190 = bitcast i32 %4189 to float
  %4191 = call float @dx.op.binary.f32(i32 36, float %4100, float %4184)  ; FMin(a,b)
  %4192 = fmul fast float %4191, %4131
  %4193 = fsub fast float 1.000000e+00, %4192
  %4194 = bitcast float %4193 to i32
  %4195 = sub nsw i32 2129859010, %4194
  %4196 = bitcast i32 %4195 to float
  %4197 = call float @dx.op.binary.f32(i32 36, float %4101, float %4184)  ; FMin(a,b)
  %4198 = fmul fast float %4197, %4131
  %4199 = fsub fast float 1.000000e+00, %4198
  %4200 = bitcast float %4199 to i32
  %4201 = sub nsw i32 2129859010, %4200
  %4202 = bitcast i32 %4201 to float
  %4203 = fmul fast float %4130, %52
  %4204 = fmul fast float %4203, %4163
  %4205 = fmul fast float %4204, %4190
  %4206 = fmul fast float %4130, %53
  %4207 = fmul fast float %4206, %4164
  %4208 = fmul fast float %4207, %4196
  %4209 = fmul fast float %4130, %54
  %4210 = fmul fast float %4209, %4165
  %4211 = fmul fast float %4210, %4202
  %4212 = call float @dx.op.binary.f32(i32 36, float %4093, float %4184)  ; FMin(a,b)
  %4213 = fmul fast float %4212, %4131
  %4214 = fsub fast float 1.000000e+00, %4213
  %4215 = bitcast float %4214 to i32
  %4216 = sub nsw i32 2129859010, %4215
  %4217 = bitcast i32 %4216 to float
  %4218 = call float @dx.op.binary.f32(i32 36, float %4094, float %4184)  ; FMin(a,b)
  %4219 = fmul fast float %4218, %4131
  %4220 = fsub fast float 1.000000e+00, %4219
  %4221 = bitcast float %4220 to i32
  %4222 = sub nsw i32 2129859010, %4221
  %4223 = bitcast i32 %4222 to float
  %4224 = call float @dx.op.binary.f32(i32 36, float %4119, float %4184)  ; FMin(a,b)
  %4225 = fmul fast float %4224, %4131
  %4226 = fsub fast float 1.000000e+00, %4225
  %4227 = bitcast float %4226 to i32
  %4228 = sub nsw i32 2129859010, %4227
  %4229 = bitcast i32 %4228 to float
  %4230 = fmul fast float %4203, %4179
  %4231 = fmul fast float %4230, %4217
  %4232 = fmul fast float %4206, %4180
  %4233 = fmul fast float %4232, %4223
  %4234 = fmul fast float %4209, %4181
  %4235 = fmul fast float %4234, %4229
  %4236 = call float @dx.op.dot3.f32(i32 55, float %4205, float %4208, float %4211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4237 = select i1 %181, float 0.000000e+00, float %4205
  %4238 = select i1 %181, float %4236, float %4208
  %4239 = select i1 %181, float 0.000000e+00, float %4211
  %4240 = call float @dx.op.dot3.f32(i32 55, float %4231, float %4233, float %4235, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4241 = select i1 %181, float 0.000000e+00, float %4231
  %4242 = select i1 %181, float %4240, float %4233
  %4243 = select i1 %181, float 0.000000e+00, float %4235
  %4244 = fmul fast float %4121, 9.843750e-01
  %4245 = fmul fast float %4102, 9.843750e-01
  %4246 = fadd fast float %4244, 7.812500e-03
  %4247 = fadd fast float %4245, 7.812500e-03
  %4248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %4246, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4249 = extractvalue %dx.types.ResRet.f32 %4248, 2
  %4250 = extractvalue %dx.types.ResRet.f32 %4248, 3
  %4251 = fmul fast float %4249, %4093
  %4252 = fmul fast float %4249, %4094
  %4253 = fmul fast float %4249, %4119
  %4254 = fadd fast float %4251, %4250
  %4255 = fadd fast float %4252, %4250
  %4256 = fadd fast float %4253, %4250
  %4257 = call float @dx.op.binary.f32(i32 35, float %4255, float %4256)  ; FMax(a,b)
  %4258 = call float @dx.op.binary.f32(i32 35, float %4254, float %4257)  ; FMax(a,b)
  %4259 = fsub fast float 1.000000e+00, %4258
  %4260 = fmul fast float %4258, %4102
  %4261 = fadd fast float %4260, %4102
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 0
  %4264 = extractvalue %dx.types.CBufRet.f32 %4262, 1
  %4265 = extractvalue %dx.types.CBufRet.f32 %4262, 2
  %4266 = extractvalue %dx.types.CBufRet.f32 %4262, 3
  %4267 = fmul fast float %4261, %4263
  %4268 = fadd fast float %4267, %4264
  %4269 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4270 = fmul fast float %4265, %4261
  %4271 = fadd fast float %4270, %4266
  %4272 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4273 = fsub fast float 1.000000e+00, %4142
  %4274 = fadd fast float %4273, %4272
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = fcmp fast olt float %4275, 1.000000e+00
  br i1 %4276, label %4277, label %5132

; <label>:4277                                    ; preds = %4086
  %4278 = fcmp fast olt float %4269, 1.000000e+00
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 0
  %4281 = fcmp fast ogt float %4280, 0.000000e+00
  %4282 = or i1 %4278, %4281
  %4283 = or i1 %4278, %4281
  %4284 = xor i1 %4283, true
  %4285 = zext i1 %4284 to i32
  br i1 %4282, label %4286, label %4529

; <label>:4286                                    ; preds = %4277
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = extractvalue %dx.types.CBufRet.f32 %4287, 1
  %4290 = extractvalue %dx.types.CBufRet.f32 %4287, 2
  %4291 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 0
  %4294 = extractvalue %dx.types.CBufRet.f32 %4292, 1
  %4295 = extractvalue %dx.types.CBufRet.f32 %4292, 2
  %4296 = extractvalue %dx.types.CBufRet.f32 %4292, 3
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.CBufRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.CBufRet.f32 %4297, 2
  %4301 = extractvalue %dx.types.CBufRet.f32 %4297, 3
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 0
  %4304 = extractvalue %dx.types.CBufRet.f32 %4302, 1
  %4305 = extractvalue %dx.types.CBufRet.f32 %4302, 2
  %4306 = extractvalue %dx.types.CBufRet.f32 %4302, 3
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4310 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4311 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4315 = extractvalue %dx.types.CBufRet.f32 %4312, 2
  %4316 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4317 = call float @dx.op.dot3.f32(i32 55, float %4313, float %4314, float %4315, float %4127, float %4128, float %4129)  ; Dot3(ax,ay,az,bx,by,bz)
  %4318 = call float @dx.op.dot3.f32(i32 55, float %4096, float %4097, float %4098, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4319 = call float @dx.op.unary.f32(i32 6, float %4318)  ; FAbs(value)
  %4320 = fmul fast float %4319, 8.000000e+00
  %4321 = fadd fast float %4320, -6.000000e+00
  %4322 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4323 = fmul fast float %4317, 8.000000e+00
  %4324 = fmul fast float %4323, %4280
  %4325 = call float @dx.op.unary.f32(i32 7, float %4324)  ; Saturate(value)
  %4326 = fcmp fast ogt float %4325, 0.000000e+00
  br i1 %4326, label %4327, label %4504, !dx.controlflow.hints !78

; <label>:4327                                    ; preds = %4286
  %4328 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4329 = extractvalue %dx.types.CBufRet.f32 %4279, 2
  %4330 = fsub fast float %4328, %4329
  %4331 = fmul fast float %4330, %4102
  %4332 = fadd fast float %4331, %4329
  %4333 = fmul fast float %194, 2.000000e+00
  %4334 = fmul fast float %195, 2.000000e+00
  %4335 = fadd fast float %4333, -1.000000e+00
  %4336 = fadd fast float %4334, -1.000000e+00
  %4337 = fmul fast float %4332, %4335
  %4338 = fmul fast float %4332, %4336
  %4339 = fadd fast float %4337, %74
  %4340 = fadd fast float %4338, %75
  %4341 = fmul fast float %4339, %4105
  %4342 = fmul fast float %4340, %4106
  %4343 = fadd fast float %4102, 0xBFE3333340000000
  %4344 = fmul fast float %4343, 0x4004000020000000
  %4345 = fsub fast float 1.000000e+00, %4344
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4346, 3.000000e+00
  %4348 = fadd fast float %4347, %194
  %4349 = call float @dx.op.unary.f32(i32 27, float %4348)  ; Round_ni(value)
  %4350 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %37, float %4341, float %4342, float %4349, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = fcmp fast une float %4351, 0xFFF0000000000000
  %4353 = fcmp fast une float %4351, 0x7FF0000000000000
  %4354 = and i1 %4352, %4353
  %4355 = fcmp fast olt float %4351, 0.000000e+00
  %4356 = call float @dx.op.unary.f32(i32 6, float %4351)  ; FAbs(value)
  %4357 = fsub fast float 1.000000e+00, %4356
  %4358 = select i1 %4354, float 1.000000e+00, float 0.000000e+00
  %4359 = fmul fast float %4358, %4325
  %4360 = fcmp fast ogt float %4359, 0.000000e+00
  br i1 %4360, label %4361, label %4504, !dx.controlflow.hints !79

; <label>:4361                                    ; preds = %4327
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 0
  %4364 = extractvalue %dx.types.CBufRet.f32 %4362, 1
  %4365 = extractvalue %dx.types.CBufRet.f32 %4362, 2
  %4366 = select i1 %4355, float 0.000000e+00, float %4363
  %4367 = select i1 %4355, float 0.000000e+00, float %4364
  %4368 = select i1 %4355, float 0.000000e+00, float %4365
  %4369 = select i1 %4355, float %4288, float %4303
  %4370 = select i1 %4355, float %4293, float %4308
  %4371 = select i1 %4355, float %4298, float %4313
  %4372 = select i1 %4355, float %4289, float %4304
  %4373 = select i1 %4355, float %4294, float %4309
  %4374 = select i1 %4355, float %4299, float %4314
  %4375 = select i1 %4355, float %4290, float %4305
  %4376 = select i1 %4355, float %4295, float %4310
  %4377 = select i1 %4355, float %4300, float %4315
  %4378 = select i1 %4355, float %4291, float %4306
  %4379 = select i1 %4355, float %4296, float %4311
  %4380 = select i1 %4355, float %4301, float %4316
  %4381 = fadd fast float %4366, %137
  %4382 = fadd fast float %4367, %138
  %4383 = fadd fast float %4368, %139
  %4384 = fmul fast float %4381, %4369
  %4385 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4372, float %4384)  ; FMad(a,b,c)
  %4386 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4375, float %4385)  ; FMad(a,b,c)
  %4387 = fadd fast float %4386, %4378
  %4388 = fmul fast float %4381, %4370
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4373, float %4388)  ; FMad(a,b,c)
  %4390 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4376, float %4389)  ; FMad(a,b,c)
  %4391 = fadd fast float %4390, %4379
  %4392 = fmul fast float %4381, %4371
  %4393 = call float @dx.op.tertiary.f32(i32 46, float %4382, float %4374, float %4392)  ; FMad(a,b,c)
  %4394 = call float @dx.op.tertiary.f32(i32 46, float %4383, float %4377, float %4393)  ; FMad(a,b,c)
  %4395 = fadd fast float %4394, %4380
  %4396 = fdiv fast float 1.000000e+00, %4395
  %4397 = fmul fast float %4396, %4387
  %4398 = fmul fast float %4396, %4391
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4402 = fmul fast float %4397, %4400
  %4403 = fmul fast float %4398, %4401
  %4404 = extractvalue %dx.types.CBufRet.f32 %4399, 2
  %4405 = extractvalue %dx.types.CBufRet.f32 %4399, 3
  %4406 = fadd fast float %4402, %4404
  %4407 = fadd fast float %4403, %4405
  %4408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4409 = extractvalue %dx.types.CBufRet.f32 %4408, 3
  %4410 = fmul fast float %4409, %4127
  %4411 = fmul fast float %4409, %4128
  %4412 = fmul fast float %4409, %4129
  %4413 = fadd fast float %4410, %4381
  %4414 = fadd fast float %4411, %4382
  %4415 = fadd fast float %4412, %4383
  %4416 = fmul fast float %4413, %4369
  %4417 = call float @dx.op.tertiary.f32(i32 46, float %4414, float %4372, float %4416)  ; FMad(a,b,c)
  %4418 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4375, float %4417)  ; FMad(a,b,c)
  %4419 = fadd fast float %4418, %4378
  %4420 = fmul fast float %4413, %4370
  %4421 = call float @dx.op.tertiary.f32(i32 46, float %4414, float %4373, float %4420)  ; FMad(a,b,c)
  %4422 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4376, float %4421)  ; FMad(a,b,c)
  %4423 = fadd fast float %4422, %4379
  %4424 = fmul fast float %4413, %4371
  %4425 = call float @dx.op.tertiary.f32(i32 46, float %4414, float %4374, float %4424)  ; FMad(a,b,c)
  %4426 = call float @dx.op.tertiary.f32(i32 46, float %4415, float %4377, float %4425)  ; FMad(a,b,c)
  %4427 = fadd fast float %4426, %4380
  %4428 = fdiv fast float 1.000000e+00, %4427
  %4429 = fmul fast float %4428, %4419
  %4430 = fmul fast float %4428, %4423
  %4431 = fmul fast float %4406, 2.000000e+00
  %4432 = fadd fast float %4431, -1.000000e+00
  %4433 = call float @dx.op.unary.f32(i32 6, float %4432)  ; FAbs(value)
  %4434 = fmul fast float %4433, 5.000000e+00
  %4435 = fadd fast float %4434, -4.000000e+00
  %4436 = call float @dx.op.unary.f32(i32 7, float %4435)  ; Saturate(value)
  %4437 = fmul fast float %4436, %4322
  %4438 = fsub fast float %4397, %4429
  %4439 = fmul fast float %4400, %4438
  %4440 = fmul fast float %4437, %4439
  %4441 = fsub fast float %4429, %4397
  %4442 = fmul fast float %4400, %4441
  %4443 = fadd fast float %4442, %4440
  %4444 = fsub fast float %4430, %4398
  %4445 = fmul fast float %4401, %4444
  %4446 = fmul fast float %4443, %4357
  %4447 = fmul fast float %4445, %4357
  %4448 = fadd fast float %4446, %4406
  %4449 = fadd fast float %4447, %4407
  %4450 = fsub fast float %4428, %4396
  %4451 = fmul fast float %4450, %4357
  %4452 = fadd fast float %4451, %4396
  %4453 = fdiv fast float 1.000000e+00, %4452
  %4454 = fadd fast float %4102, -1.000000e+00
  %4455 = fsub fast float %4453, %4395
  %4456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4457 = extractvalue %dx.types.CBufRet.f32 %4456, 2
  %4458 = fmul fast float %4457, %4453
  %4459 = fdiv fast float 1.600000e+02, %4458
  %4460 = fmul fast float %4454, %4454
  %4461 = fmul fast float %4460, 0xBFB5B17960000000
  %4462 = fmul fast float %4461, %4455
  %4463 = fmul fast float %4462, %4459
  %4464 = call float @dx.op.unary.f32(i32 21, float %4463)  ; Exp(value)
  %4465 = fmul fast float %4464, 0x3FF04B2960000000
  %4466 = fsub fast float 0x3FF04B2960000000, %4465
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = fmul fast float %4467, 4.000000e+00
  %4469 = fadd fast float %194, -5.000000e-01
  %4470 = fadd fast float %195, -5.000000e-01
  %4471 = fmul fast float %4467, 0x3FBEB851E0000000
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fmul fast float %4472, %4469
  %4474 = fmul fast float %4472, %4470
  %4475 = fadd fast float %4448, %4473
  %4476 = fadd fast float %4449, %4474
  %4477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %4475, float %4476, float undef, float undef, i32 0, i32 0, i32 undef, float %4468)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = extractvalue %dx.types.ResRet.f32 %4477, 1
  %4480 = extractvalue %dx.types.ResRet.f32 %4477, 2
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4483 = fmul fast float %4482, %4478
  %4484 = fmul fast float %4482, %4479
  %4485 = fmul fast float %4482, %4480
  %4486 = select i1 %181, float 0.000000e+00, float %4484
  %4487 = select i1 %181, float 0.000000e+00, float %4485
  %4488 = fmul fast float %4475, 2.000000e+00
  %4489 = fmul fast float %4476, 2.000000e+00
  %4490 = fadd fast float %4488, -1.000000e+00
  %4491 = fadd fast float %4489, -1.000000e+00
  %4492 = fmul fast float %4490, %4490
  %4493 = fsub fast float 1.000000e+00, %4492
  %4494 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4495 = fsub fast float 1.000000e+00, %4494
  %4496 = fmul fast float %4495, %4322
  %4497 = fadd fast float %4496, %4494
  %4498 = fmul fast float %4491, %4491
  %4499 = fsub fast float 1.000000e+00, %4498
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = fmul fast float %4497, %4500
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = fmul fast float %4502, %4359
  br label %4504

; <label>:4504                                    ; preds = %4361, %4327, %4286
  %4505 = phi float [ %4483, %4361 ], [ 0.000000e+00, %4327 ], [ 0.000000e+00, %4286 ]
  %4506 = phi float [ %4486, %4361 ], [ 0.000000e+00, %4327 ], [ 0.000000e+00, %4286 ]
  %4507 = phi float [ %4487, %4361 ], [ 0.000000e+00, %4327 ], [ 0.000000e+00, %4286 ]
  %4508 = phi float [ %4503, %4361 ], [ 0.000000e+00, %4327 ], [ 0.000000e+00, %4286 ]
  %4509 = fcmp fast olt float %4508, 1.000000e+00
  %4510 = or i1 %4509, %4284
  %4511 = zext i1 %4510 to i32
  %4512 = fmul fast float %4508, %4269
  %4513 = fsub fast float %4508, %4512
  %4514 = fsub fast float 1.000000e+00, %4275
  %4515 = fmul fast float %4513, %4514
  %4516 = fadd fast float %4515, %4275
  %4517 = fsub fast float %4516, %4513
  %4518 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4519 = fmul fast float %4518, %4241
  %4520 = fmul fast float %4518, %4242
  %4521 = fmul fast float %4518, %4243
  %4522 = fsub fast float -0.000000e+00, %4516
  %4523 = fmul fast float %4513, %4505
  %4524 = fmul fast float %4513, %4506
  %4525 = fmul fast float %4513, %4507
  %4526 = fadd fast float %4523, %4519
  %4527 = fadd fast float %4524, %4520
  %4528 = fadd fast float %4525, %4521
  br label %4529

; <label>:4529                                    ; preds = %4504, %4277
  %4530 = phi float [ %4275, %4277 ], [ %4522, %4504 ]
  %4531 = phi float [ %4241, %4277 ], [ %4526, %4504 ]
  %4532 = phi float [ %4242, %4277 ], [ %4527, %4504 ]
  %4533 = phi float [ %4243, %4277 ], [ %4528, %4504 ]
  %4534 = phi i32 [ %4285, %4277 ], [ %4511, %4504 ]
  %4535 = icmp eq i32 %4534, 0
  br i1 %4535, label %5132, label %4536

; <label>:4536                                    ; preds = %4529
  %4537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4538 = extractvalue %dx.types.CBufRet.f32 %4537, 2
  %4539 = extractvalue %dx.types.CBufRet.f32 %4537, 3
  %4540 = fmul fast float %4538, %74
  %4541 = fmul fast float %4539, %75
  %4542 = fptoui float %4540 to i32
  %4543 = fptoui float %4541 to i32
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4547 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4548 = fadd fast float %69, -4.000000e+00
  %4549 = call float @dx.op.binary.f32(i32 35, float %4548, float 0.000000e+00)  ; FMax(a,b)
  %4550 = fadd fast float %4549, %4545
  %4551 = fmul fast float %4550, %4546
  %4552 = call float @dx.op.unary.f32(i32 23, float %4551)  ; Log(value)
  %4553 = fmul fast float %4552, %4547
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 2
  %4556 = fmul fast float %4553, %4555
  %4557 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.i32 %4558, 1
  %4560 = add i32 %4559, -1
  %4561 = uitofp i32 %4559 to float
  %4562 = fmul fast float %4561, %4557
  %4563 = fptoui float %4562 to i32
  %4564 = call i32 @dx.op.binary.i32(i32 40, i32 %4563, i32 %4560)  ; UMin(a,b)
  %4565 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4566 = extractvalue %dx.types.CBufRet.i32 %4565, 2
  %4567 = extractvalue %dx.types.CBufRet.i32 %4565, 3
  %4568 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4543, i32 %4566, i32 %4542)  ; UMad(a,b,c)
  %4569 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4564, i32 %4567, i32 %4568)  ; UMad(a,b,c)
  %4570 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %4571 = fptoui float %4570 to i32
  %4572 = lshr i32 %4571, 5
  %4573 = call i32 @dx.op.binary.i32(i32 40, i32 %4572, i32 8191)  ; UMin(a,b)
  %4574 = fcmp fast ogt float %3901, 0.000000e+00
  %4575 = fcmp fast ogt float %4129, 0.000000e+00
  %4576 = and i1 %4575, %4574
  br i1 %4576, label %4577, label %4606

; <label>:4577                                    ; preds = %4536
  %4578 = call float @dx.op.dot3.f32(i32 55, float %4127, float %4128, float %4129, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call float @dx.op.binary.f32(i32 35, float %4578, float -1.000000e+00)  ; FMax(a,b)
  %4580 = call float @dx.op.binary.f32(i32 36, float %4579, float 1.000000e+00)  ; FMin(a,b)
  %4581 = fmul fast float %4580, %4580
  %4582 = fsub fast float 1.000000e+00, %4581
  %4583 = fmul fast float %4582, 0x3FFC6E2300000000
  %4584 = fsub fast float 1.000000e+00, %4583
  %4585 = fcmp fast ogt float %4584, 0.000000e+00
  %4586 = call float @dx.op.unary.f32(i32 24, float %4584)  ; Sqrt(value)
  %4587 = fsub fast float 1.000000e+00, %4586
  %4588 = call float @dx.op.unary.f32(i32 23, float %4587)  ; Log(value)
  %4589 = fmul fast float %4588, 5.000000e+00
  %4590 = call float @dx.op.unary.f32(i32 21, float %4589)  ; Exp(value)
  %4591 = fmul fast float %4590, 0x3FEF591A60000000
  %4592 = fadd fast float %4591, 0x3F94DCB540000000
  %4593 = select i1 %4585, float %4592, float 1.000000e+00
  %4594 = fcmp fast oge float %4593, 1.000000e+00
  %4595 = fmul fast float %4578, 2.000000e+00
  %4596 = fadd fast float %4595, %4129
  %4597 = select i1 %4594, float %4596, float %4129
  %4598 = fsub fast float %4597, %4129
  %4599 = fmul fast float %4598, %3901
  %4600 = fadd fast float %4599, %4129
  %4601 = call float @dx.op.dot3.f32(i32 55, float %4127, float %4128, float %4600, float %4127, float %4128, float %4600)  ; Dot3(ax,ay,az,bx,by,bz)
  %4602 = call float @dx.op.unary.f32(i32 25, float %4601)  ; Rsqrt(value)
  %4603 = fmul fast float %4602, %4127
  %4604 = fmul fast float %4602, %4128
  %4605 = fmul fast float %4600, %4602
  br label %4606

; <label>:4606                                    ; preds = %4577, %4536
  %4607 = phi float [ %4603, %4577 ], [ %4127, %4536 ]
  %4608 = phi float [ %4604, %4577 ], [ %4128, %4536 ]
  %4609 = phi float [ %4605, %4577 ], [ %4129, %4536 ]
  %4610 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4611 = extractvalue %dx.types.CBufRet.i32 %4610, 2
  %4612 = add nsw i32 %4611, -1
  %4613 = call i32 @dx.op.binary.i32(i32 37, i32 %4612, i32 0)  ; IMax(a,b)
  %4614 = shl i32 %4573, 2
  %4615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4614, i32 undef)  ; BufferLoad(srv,index,wot)
  %4616 = extractvalue %dx.types.ResRet.i32 %4615, 0
  %4617 = lshr i32 %4616, 16
  %4618 = and i32 %4616, 65535
  %4619 = lshr i32 %4616, 21
  %4620 = lshr i32 %4618, 5
  %4621 = call i32 @dx.op.binary.i32(i32 40, i32 %4620, i32 %4613)  ; UMin(a,b)
  %4622 = icmp ugt i32 %4619, %4621
  br i1 %4622, label %5004, label %4623

; <label>:4623                                    ; preds = %4606
  br label %4624

; <label>:4624                                    ; preds = %4993, %4623
  %4625 = phi float [ %4994, %4993 ], [ 0.000000e+00, %4623 ]
  %4626 = phi float [ %4995, %4993 ], [ 0.000000e+00, %4623 ]
  %4627 = phi float [ %4996, %4993 ], [ 0.000000e+00, %4623 ]
  %4628 = phi float [ %4997, %4993 ], [ 1.000000e+00, %4623 ]
  %4629 = phi i32 [ %5001, %4993 ], [ %4619, %4623 ]
  %4630 = phi float [ %4998, %4993 ], [ 0.000000e+00, %4623 ]
  %4631 = phi float [ %4999, %4993 ], [ 0.000000e+00, %4623 ]
  %4632 = phi float [ %5000, %4993 ], [ 0.000000e+00, %4623 ]
  %4633 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.i32 %4633, 2
  %4635 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4569, i32 %4634, i32 %4629)  ; UMad(a,b,c)
  %4636 = shl i32 %4635, 2
  %4637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4636, i32 undef)  ; BufferLoad(srv,index,wot)
  %4638 = extractvalue %dx.types.ResRet.i32 %4637, 0
  %4639 = shl i32 %4629, 5
  %4640 = sub nsw i32 %4617, %4639
  %4641 = call i32 @dx.op.binary.i32(i32 37, i32 %4640, i32 0)  ; IMax(a,b)
  %4642 = call i32 @dx.op.binary.i32(i32 38, i32 %4641, i32 31)  ; IMin(a,b)
  %4643 = sub nsw i32 1, %4617
  %4644 = add nsw i32 %4643, %4618
  %4645 = call i32 @dx.op.binary.i32(i32 37, i32 %4644, i32 0)  ; IMax(a,b)
  %4646 = call i32 @dx.op.binary.i32(i32 38, i32 %4645, i32 32)  ; IMin(a,b)
  %4647 = and i32 %4646, 31
  %4648 = shl i32 -1, %4647
  %4649 = xor i32 %4648, -1
  %4650 = and i32 %4642, 31
  %4651 = shl i32 %4649, %4650
  %4652 = icmp eq i32 %4646, 32
  %4653 = select i1 %4652, i32 -1, i32 %4651
  %4654 = and i32 %4653, %4638
  %4655 = icmp eq i32 %4654, 0
  br i1 %4655, label %4993, label %4656

; <label>:4656                                    ; preds = %4624
  br label %4657

; <label>:4657                                    ; preds = %4767, %4656
  %4658 = phi float [ %4768, %4767 ], [ %4625, %4656 ]
  %4659 = phi float [ %4769, %4767 ], [ %4626, %4656 ]
  %4660 = phi float [ %4770, %4767 ], [ %4627, %4656 ]
  %4661 = phi float [ %4771, %4767 ], [ %4628, %4656 ]
  %4662 = phi i32 [ %4670, %4767 ], [ %4654, %4656 ]
  %4663 = phi float [ %4772, %4767 ], [ %4630, %4656 ]
  %4664 = phi float [ %4773, %4767 ], [ %4631, %4656 ]
  %4665 = phi float [ %4774, %4767 ], [ %4632, %4656 ]
  %4666 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4662)  ; FirstbitLo(value)
  %4667 = add i32 %4666, %4639
  %4668 = and i32 %4666, 31
  %4669 = shl i32 1, %4668
  %4670 = xor i32 %4669, %4662
  %4671 = mul i32 %4667, 72
  %4672 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.f32 %4672, 0
  %4674 = extractvalue %dx.types.ResRet.f32 %4672, 1
  %4675 = extractvalue %dx.types.ResRet.f32 %4672, 2
  %4676 = add i32 %4671, 12
  %4677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4676, i32 undef)  ; BufferLoad(srv,index,wot)
  %4678 = extractvalue %dx.types.ResRet.i32 %4677, 0
  %4679 = add i32 %4671, 16
  %4680 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4679, i32 undef)  ; BufferLoad(srv,index,wot)
  %4681 = extractvalue %dx.types.ResRet.f32 %4680, 0
  %4682 = extractvalue %dx.types.ResRet.f32 %4680, 1
  %4683 = extractvalue %dx.types.ResRet.f32 %4680, 2
  %4684 = add i32 %4671, 28
  %4685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4684, i32 undef)  ; BufferLoad(srv,index,wot)
  %4686 = extractvalue %dx.types.ResRet.f32 %4685, 0
  %4687 = add i32 %4671, 32
  %4688 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4687, i32 undef)  ; BufferLoad(srv,index,wot)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 0
  %4690 = extractvalue %dx.types.ResRet.f32 %4688, 1
  %4691 = extractvalue %dx.types.ResRet.f32 %4688, 2
  %4692 = extractvalue %dx.types.ResRet.f32 %4688, 3
  %4693 = add i32 %4671, 48
  %4694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.ResRet.f32 %4694, 1
  %4697 = add i32 %4671, 56
  %4698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4697, i32 undef)  ; BufferLoad(srv,index,wot)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.ResRet.f32 %4698, 1
  %4701 = add i32 %4671, 64
  %4702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %31, i32 %4701, i32 undef)  ; BufferLoad(srv,index,wot)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = extractvalue %dx.types.ResRet.f32 %4702, 1
  %4705 = mul i32 %4667, 60
  %4706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4705, i32 undef)  ; BufferLoad(srv,index,wot)
  %4707 = extractvalue %dx.types.ResRet.f32 %4706, 0
  %4708 = extractvalue %dx.types.ResRet.f32 %4706, 1
  %4709 = extractvalue %dx.types.ResRet.f32 %4706, 2
  %4710 = add i32 %4705, 12
  %4711 = add i32 %4705, 48
  %4712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4711, i32 undef)  ; BufferLoad(srv,index,wot)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.ResRet.f32 %4712, 1
  %4715 = extractvalue %dx.types.ResRet.f32 %4712, 2
  %4716 = and i32 %4678, 32767
  %4717 = bitcast float %4673 to i32
  %4718 = icmp eq i32 %4717, -1
  %4719 = bitcast float %4674 to i32
  %4720 = and i32 %4678, 32768
  %4721 = icmp ne i32 %4720, 0
  %4722 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.f32 %4722, 0
  %4724 = extractvalue %dx.types.CBufRet.f32 %4722, 1
  %4725 = extractvalue %dx.types.CBufRet.f32 %4722, 2
  %4726 = fsub fast float %4707, %4723
  %4727 = fsub fast float %4708, %4724
  %4728 = fsub fast float %4709, %4725
  %4729 = fsub fast float %137, %4726
  %4730 = fsub fast float %138, %4727
  %4731 = fsub fast float %139, %4728
  %4732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4710, i32 undef)  ; BufferLoad(srv,index,wot)
  %4733 = extractvalue %dx.types.ResRet.f32 %4732, 0
  %4734 = extractvalue %dx.types.ResRet.f32 %4732, 1
  %4735 = extractvalue %dx.types.ResRet.f32 %4732, 2
  %4736 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4733, float %4734, float %4735)  ; Dot3(ax,ay,az,bx,by,bz)
  %4737 = add i32 %4705, 24
  %4738 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4737, i32 undef)  ; BufferLoad(srv,index,wot)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 0
  %4740 = extractvalue %dx.types.ResRet.f32 %4738, 1
  %4741 = extractvalue %dx.types.ResRet.f32 %4738, 2
  %4742 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4739, float %4740, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %4743 = add i32 %4705, 36
  %4744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %4743, i32 undef)  ; BufferLoad(srv,index,wot)
  %4745 = extractvalue %dx.types.ResRet.f32 %4744, 0
  %4746 = extractvalue %dx.types.ResRet.f32 %4744, 1
  %4747 = extractvalue %dx.types.ResRet.f32 %4744, 2
  %4748 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4745, float %4746, float %4747)  ; Dot3(ax,ay,az,bx,by,bz)
  %4749 = call float @dx.op.unary.f32(i32 6, float %4736)  ; FAbs(value)
  %4750 = call float @dx.op.unary.f32(i32 6, float %4742)  ; FAbs(value)
  %4751 = call float @dx.op.unary.f32(i32 6, float %4748)  ; FAbs(value)
  %4752 = fsub fast float %4713, %4749
  %4753 = fsub fast float %4714, %4750
  %4754 = fsub fast float %4715, %4751
  %4755 = fmul fast float %4752, %4681
  %4756 = fmul fast float %4753, %4682
  %4757 = fmul fast float %4754, %4683
  %4758 = call float @dx.op.binary.f32(i32 36, float %4756, float %4757)  ; FMin(a,b)
  %4759 = call float @dx.op.binary.f32(i32 36, float %4755, float %4758)  ; FMin(a,b)
  %4760 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  %4761 = call float @dx.op.binary.f32(i32 36, float %4661, float %4760)  ; FMin(a,b)
  %4762 = uitofp i1 %4721 to float
  %4763 = fadd fast float %3901, 1.000000e+00
  %4764 = fsub fast float %4763, %4762
  %4765 = fmul fast float %4761, %4764
  %4766 = fcmp fast ogt float %4765, 0.000000e+00
  br i1 %4766, label %4776, label %4767

; <label>:4767                                    ; preds = %4918, %4657
  %4768 = phi float [ %4982, %4918 ], [ %4658, %4657 ]
  %4769 = phi float [ %4983, %4918 ], [ %4659, %4657 ]
  %4770 = phi float [ %4984, %4918 ], [ %4660, %4657 ]
  %4771 = phi float [ %4991, %4918 ], [ %4661, %4657 ]
  %4772 = phi float [ %4988, %4918 ], [ %4663, %4657 ]
  %4773 = phi float [ %4989, %4918 ], [ %4664, %4657 ]
  %4774 = phi float [ %4990, %4918 ], [ %4665, %4657 ]
  %4775 = icmp eq i32 %4662, %4669
  br i1 %4775, label %4992, label %4657

; <label>:4776                                    ; preds = %4657
  br i1 %4718, label %4834, label %4777

; <label>:4777                                    ; preds = %4776
  %4778 = fsub fast float -0.000000e+00, %4733
  %4779 = fsub fast float -0.000000e+00, %4734
  %4780 = fsub fast float -0.000000e+00, %4735
  %4781 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %4778, float %4779, float %4780)  ; Dot3(ax,ay,az,bx,by,bz)
  %4782 = fsub fast float -0.000000e+00, %4781
  %4783 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4778, float %4779, float %4780)  ; Dot3(ax,ay,az,bx,by,bz)
  %4784 = fadd fast float %4783, %4696
  %4785 = fadd fast float %4695, %4783
  %4786 = fsub fast float -0.000000e+00, %4785
  %4787 = fcmp ogt float %4781, -0.000000e+00
  %4788 = select i1 %4787, float %4786, float %4784
  %4789 = call float @dx.op.unary.f32(i32 6, float %4782)  ; FAbs(value)
  %4790 = fdiv fast float 1.000000e+00, %4789
  %4791 = fmul fast float %4788, %4790
  %4792 = call float @dx.op.binary.f32(i32 35, float %4791, float 0.000000e+00)  ; FMax(a,b)
  %4793 = fsub fast float -0.000000e+00, %4739
  %4794 = fsub fast float -0.000000e+00, %4740
  %4795 = fsub fast float -0.000000e+00, %4741
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = fsub fast float -0.000000e+00, %4796
  %4798 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4793, float %4794, float %4795)  ; Dot3(ax,ay,az,bx,by,bz)
  %4799 = fadd fast float %4798, %4700
  %4800 = fadd fast float %4699, %4798
  %4801 = fsub fast float -0.000000e+00, %4800
  %4802 = fcmp ogt float %4796, -0.000000e+00
  %4803 = select i1 %4802, float %4801, float %4799
  %4804 = call float @dx.op.unary.f32(i32 6, float %4797)  ; FAbs(value)
  %4805 = fdiv fast float 1.000000e+00, %4804
  %4806 = fmul fast float %4803, %4805
  %4807 = call float @dx.op.binary.f32(i32 35, float %4806, float 0.000000e+00)  ; FMax(a,b)
  %4808 = fsub fast float -0.000000e+00, %4745
  %4809 = fsub fast float -0.000000e+00, %4746
  %4810 = fsub fast float -0.000000e+00, %4747
  %4811 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4608, float %4609, float %4808, float %4809, float %4810)  ; Dot3(ax,ay,az,bx,by,bz)
  %4812 = fsub fast float -0.000000e+00, %4811
  %4813 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4808, float %4809, float %4810)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = fadd fast float %4813, %4704
  %4815 = fadd fast float %4703, %4813
  %4816 = fsub fast float -0.000000e+00, %4815
  %4817 = fcmp ogt float %4811, -0.000000e+00
  %4818 = select i1 %4817, float %4816, float %4814
  %4819 = call float @dx.op.unary.f32(i32 6, float %4812)  ; FAbs(value)
  %4820 = fdiv fast float 1.000000e+00, %4819
  %4821 = fmul fast float %4818, %4820
  %4822 = call float @dx.op.binary.f32(i32 35, float %4821, float 0.000000e+00)  ; FMax(a,b)
  %4823 = call float @dx.op.binary.f32(i32 36, float %4807, float %4822)  ; FMin(a,b)
  %4824 = call float @dx.op.binary.f32(i32 36, float %4792, float %4823)  ; FMin(a,b)
  %4825 = fmul fast float %4824, %4607
  %4826 = fmul fast float %4824, %4608
  %4827 = fmul fast float %4824, %4609
  %4828 = fadd fast float %4825, %137
  %4829 = fadd fast float %4826, %138
  %4830 = fadd fast float %4827, %139
  %4831 = fsub fast float %4828, %4673
  %4832 = fsub fast float %4829, %4674
  %4833 = fsub fast float %4830, %4675
  br label %4841

; <label>:4834                                    ; preds = %4776
  %4835 = fmul fast float %4607, 8.096000e+03
  %4836 = fmul fast float %4608, 8.096000e+03
  %4837 = fmul fast float %4609, 8.096000e+03
  %4838 = fadd fast float %4835, %137
  %4839 = fadd fast float %4836, %138
  %4840 = fadd fast float %4837, %139
  br label %4841

; <label>:4841                                    ; preds = %4834, %4777
  %4842 = phi float [ %4607, %4834 ], [ %4831, %4777 ]
  %4843 = phi float [ %4608, %4834 ], [ %4832, %4777 ]
  %4844 = phi float [ %4609, %4834 ], [ %4833, %4777 ]
  %4845 = phi float [ %4838, %4834 ], [ %4828, %4777 ]
  %4846 = phi float [ %4839, %4834 ], [ %4829, %4777 ]
  %4847 = phi float [ %4840, %4834 ], [ %4830, %4777 ]
  %4848 = fcmp fast olt float %4692, 1.000000e+00
  br i1 %4848, label %4849, label %4880, !dx.controlflow.hints !80

; <label>:4849                                    ; preds = %4841
  %4850 = fmul fast float %4844, %4690
  %4851 = fmul fast float %4843, %4691
  %4852 = fsub fast float %4850, %4851
  %4853 = fmul fast float %4842, %4691
  %4854 = fmul fast float %4844, %4689
  %4855 = fsub fast float %4853, %4854
  %4856 = fmul fast float %4843, %4689
  %4857 = fmul fast float %4842, %4690
  %4858 = fsub fast float %4856, %4857
  %4859 = fmul fast float %4852, 2.000000e+00
  %4860 = fmul fast float %4855, 2.000000e+00
  %4861 = fmul fast float %4858, 2.000000e+00
  %4862 = fmul fast float %4859, %4692
  %4863 = fmul fast float %4860, %4692
  %4864 = fmul fast float %4861, %4692
  %4865 = fmul fast float %4861, %4690
  %4866 = fmul fast float %4860, %4691
  %4867 = fmul fast float %4859, %4691
  %4868 = fmul fast float %4861, %4689
  %4869 = fmul fast float %4860, %4689
  %4870 = fmul fast float %4859, %4690
  %4871 = fadd fast float %4865, %4842
  %4872 = fadd fast float %4871, %4862
  %4873 = fsub fast float %4872, %4866
  %4874 = fsub fast float %4843, %4868
  %4875 = fadd fast float %4874, %4863
  %4876 = fadd fast float %4875, %4867
  %4877 = fadd fast float %4864, %4844
  %4878 = fsub fast float %4877, %4870
  %4879 = fadd fast float %4878, %4869
  br label %4880

; <label>:4880                                    ; preds = %4849, %4841
  %4881 = phi float [ %4873, %4849 ], [ %4842, %4841 ]
  %4882 = phi float [ %4876, %4849 ], [ %4843, %4841 ]
  %4883 = phi float [ %4879, %4849 ], [ %4844, %4841 ]
  br i1 %4718, label %4915, label %4884

; <label>:4884                                    ; preds = %4880
  %4885 = fmul fast float %4102, 0x400187C840000000
  %4886 = fadd fast float %4885, 0xC00EFC2120000000
  %4887 = fmul fast float %4886, %4102
  %4888 = fadd fast float %4887, 0x3FE5D16340000000
  %4889 = fmul fast float %4888, %4102
  %4890 = fadd fast float %4889, 1.000000e+00
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fsub fast float %4845, %137
  %4893 = fsub fast float %4846, %138
  %4894 = fsub fast float %4847, %139
  %4895 = fsub fast float %4845, %4673
  %4896 = fsub fast float %4846, %4674
  %4897 = fsub fast float %4847, %4675
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4892, float %4893, float %4894, float %4892, float %4893, float %4894)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4896, float %4897, float %4895, float %4896, float %4897)  ; Dot3(ax,ay,az,bx,by,bz)
  %4900 = fadd fast float %4899, 0x3EE4F8B580000000
  %4901 = fdiv fast float %4898, %4900
  %4902 = bitcast float %4901 to i32
  %4903 = ashr i32 %4902, 1
  %4904 = add nsw i32 %4903, 532487669
  %4905 = bitcast i32 %4904 to float
  %4906 = fmul fast float %4905, %4891
  %4907 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4908 = fmul fast float %4907, 0x4009981AE0000000
  %4909 = fsub fast float 0x40111BBD80000000, %4908
  %4910 = fmul fast float %4909, %4907
  %4911 = fadd fast float %4910, 0xC0009F6020000000
  %4912 = fmul fast float %4911, %4907
  %4913 = fadd fast float %4912, 1.000000e+00
  %4914 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  br label %4918

; <label>:4915                                    ; preds = %4880
  %4916 = icmp ne i32 %4719, -1
  %4917 = zext i1 %4916 to i32
  br label %4918

; <label>:4918                                    ; preds = %4915, %4884
  %4919 = phi float [ %4102, %4915 ], [ %4914, %4884 ]
  %4920 = phi i32 [ %4917, %4915 ], [ 0, %4884 ]
  %4921 = fmul float %4919, 5.000000e+00
  %4922 = fsub float 5.000000e+00, %4921
  %4923 = icmp ne i32 %4920, 0
  %4924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %4925 = extractvalue %dx.types.CBufRet.f32 %4924, 3
  %4926 = fadd fast float %4925, %4922
  %4927 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4926)  ; FMax(a,b)
  %4928 = call float @dx.op.unary.f32(i32 6, float %4881)  ; FAbs(value)
  %4929 = call float @dx.op.unary.f32(i32 6, float %4882)  ; FAbs(value)
  %4930 = fadd fast float %4929, %4928
  %4931 = call float @dx.op.unary.f32(i32 6, float %4883)  ; FAbs(value)
  %4932 = fadd fast float %4930, %4931
  %4933 = fcmp fast oeq float %4932, 0.000000e+00
  %4934 = fdiv fast float 1.000000e+00, %4932
  %4935 = select i1 %4933, float 1.000000e+00, float %4934
  %4936 = fmul fast float %4935, %4881
  %4937 = fmul fast float %4935, %4882
  %4938 = call float @dx.op.unary.f32(i32 6, float %4937)  ; FAbs(value)
  %4939 = call float @dx.op.unary.f32(i32 6, float %4936)  ; FAbs(value)
  %4940 = fsub fast float 1.000000e+00, %4938
  %4941 = fsub fast float 1.000000e+00, %4939
  %4942 = fcmp fast oge float %4936, 0.000000e+00
  %4943 = fcmp fast oge float %4937, 0.000000e+00
  %4944 = select i1 %4942, float 1.000000e+00, float -1.000000e+00
  %4945 = select i1 %4943, float 1.000000e+00, float -1.000000e+00
  %4946 = fcmp fast ole float %4883, 0.000000e+00
  %4947 = fmul fast float %4944, %4940
  %4948 = fmul fast float %4945, %4941
  %4949 = select i1 %4946, float %4947, float %4936
  %4950 = select i1 %4946, float %4948, float %4937
  %4951 = fmul fast float %4949, 5.000000e-01
  %4952 = fmul fast float %4950, 5.000000e-01
  %4953 = fadd fast float %4951, 5.000000e-01
  %4954 = fadd fast float %4952, 5.000000e-01
  %4955 = uitofp i32 %4716 to float
  %4956 = call float @dx.op.binary.f32(i32 36, float %4927, float 3.000000e+00)  ; FMin(a,b)
  %4957 = fadd fast float %4956, 2.000000e+00
  %4958 = call float @dx.op.unary.f32(i32 21, float %4957)  ; Exp(value)
  %4959 = extractvalue %dx.types.CBufRet.f32 %4924, 1
  %4960 = fmul fast float %4959, %4958
  %4961 = fmul fast float %4960, 2.000000e+00
  %4962 = fsub fast float 1.000000e+00, %4961
  %4963 = fmul fast float %4953, %4962
  %4964 = fmul fast float %4954, %4962
  %4965 = fadd fast float %4963, %4960
  %4966 = fadd fast float %4964, %4960
  %4967 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %34, float %4965, float %4966, float %4955, float undef, i32 0, i32 0, i32 undef, float %4927)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4968 = extractvalue %dx.types.ResRet.f32 %4967, 0
  %4969 = extractvalue %dx.types.ResRet.f32 %4967, 1
  %4970 = extractvalue %dx.types.ResRet.f32 %4967, 2
  %4971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4972 = extractvalue %dx.types.CBufRet.f32 %4971, 3
  %4973 = fmul fast float %4972, %4686
  %4974 = call float @dx.op.binary.f32(i32 36, float %4182, float %4973)  ; FMin(a,b)
  %4975 = select i1 %4923, float %4974, float %4973
  %4976 = fmul fast float %4968, %4765
  %4977 = fmul fast float %4976, %4975
  %4978 = fmul fast float %4969, %4765
  %4979 = fmul fast float %4978, %4975
  %4980 = fmul fast float %4970, %4765
  %4981 = fmul fast float %4980, %4975
  %4982 = fadd fast float %4977, %4658
  %4983 = fadd fast float %4979, %4659
  %4984 = fadd fast float %4981, %4660
  %4985 = fmul fast float %4845, %4765
  %4986 = fmul fast float %4846, %4765
  %4987 = fmul fast float %4847, %4765
  %4988 = fadd fast float %4985, %4663
  %4989 = fadd fast float %4986, %4664
  %4990 = fadd fast float %4987, %4665
  %4991 = fsub fast float %4661, %4765
  br label %4767

; <label>:4992                                    ; preds = %4767
  br label %4993

; <label>:4993                                    ; preds = %4992, %4624
  %4994 = phi float [ %4625, %4624 ], [ %4768, %4992 ]
  %4995 = phi float [ %4626, %4624 ], [ %4769, %4992 ]
  %4996 = phi float [ %4627, %4624 ], [ %4770, %4992 ]
  %4997 = phi float [ %4628, %4624 ], [ %4771, %4992 ]
  %4998 = phi float [ %4630, %4624 ], [ %4772, %4992 ]
  %4999 = phi float [ %4631, %4624 ], [ %4773, %4992 ]
  %5000 = phi float [ %4632, %4624 ], [ %4774, %4992 ]
  %5001 = add i32 %4629, 1
  %5002 = icmp ugt i32 %5001, %4621
  br i1 %5002, label %5003, label %4624, !llvm.loop !81

; <label>:5003                                    ; preds = %4993
  br label %5004

; <label>:5004                                    ; preds = %5003, %4606
  %5005 = phi float [ 0.000000e+00, %4606 ], [ %4994, %5003 ]
  %5006 = phi float [ 0.000000e+00, %4606 ], [ %4995, %5003 ]
  %5007 = phi float [ 0.000000e+00, %4606 ], [ %4996, %5003 ]
  %5008 = phi float [ 0.000000e+00, %4606 ], [ %4998, %5003 ]
  %5009 = phi float [ 0.000000e+00, %4606 ], [ %4999, %5003 ]
  %5010 = phi float [ 0.000000e+00, %4606 ], [ %5000, %5003 ]
  %5011 = call float @dx.op.dot3.f32(i32 55, float %5005, float %5006, float %5007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5012 = select i1 %181, float 0.000000e+00, float %5005
  %5013 = select i1 %181, float %5011, float %5006
  %5014 = select i1 %181, float 0.000000e+00, float %5007
  %5015 = fcmp fast olt float %4530, 0.000000e+00
  %5016 = call float @dx.op.unary.f32(i32 6, float %4530)  ; FAbs(value)
  %5017 = fmul fast float %5016, %4531
  %5018 = fmul fast float %5016, %4532
  %5019 = fmul fast float %5016, %4533
  %5020 = select i1 %5015, float %4531, float %5017
  %5021 = select i1 %5015, float %4532, float %5018
  %5022 = select i1 %5015, float %4533, float %5019
  %5023 = fsub fast float 1.000000e+00, %5016
  %5024 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5025 = fmul fast float %5024, %5012
  %5026 = fmul fast float %5024, %5013
  %5027 = fmul fast float %5024, %5014
  %5028 = fadd fast float %5020, %5025
  %5029 = fadd fast float %5021, %5026
  %5030 = fadd fast float %5022, %5027
  %5031 = fcmp fast une float %4280, 0.000000e+00
  br i1 %5031, label %5132, label %5032

; <label>:5032                                    ; preds = %5004
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 0
  %5035 = extractvalue %dx.types.CBufRet.f32 %5033, 1
  %5036 = extractvalue %dx.types.CBufRet.f32 %5033, 2
  %5037 = extractvalue %dx.types.CBufRet.f32 %5033, 3
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5042 = extractvalue %dx.types.CBufRet.f32 %5038, 3
  %5043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5044 = extractvalue %dx.types.CBufRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.CBufRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.CBufRet.f32 %5043, 2
  %5047 = extractvalue %dx.types.CBufRet.f32 %5043, 3
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5045, float %5046, float %4127, float %4128, float %4129)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.dot3.f32(i32 55, float %5008, float %5009, float %5010, float %5044, float %5045, float %5046)  ; Dot3(ax,ay,az,bx,by,bz)
  %5050 = call float @dx.op.dot3.f32(i32 55, float %137, float %138, float %139, float %5044, float %5045, float %5046)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = fadd fast float %4102, -1.000000e+00
  %5052 = fsub fast float %5049, %5050
  %5053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5054 = extractvalue %dx.types.CBufRet.f32 %5053, 2
  %5055 = fmul fast float %5054, %5049
  %5056 = fdiv fast float 1.600000e+02, %5055
  %5057 = fmul fast float %5051, %5051
  %5058 = fmul fast float %5057, 0xBFB5B17960000000
  %5059 = fmul fast float %5058, %5052
  %5060 = fmul fast float %5059, %5056
  %5061 = call float @dx.op.unary.f32(i32 21, float %5060)  ; Exp(value)
  %5062 = fmul fast float %5061, 0x3FF04B2960000000
  %5063 = fsub fast float 0x3FF04B2960000000, %5062
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fmul fast float %5064, 4.000000e+00
  %5066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5067 = extractvalue %dx.types.CBufRet.f32 %5066, 0
  %5068 = extractvalue %dx.types.CBufRet.f32 %5066, 1
  %5069 = extractvalue %dx.types.CBufRet.f32 %5066, 2
  %5070 = fadd fast float %5067, %5008
  %5071 = fadd fast float %5068, %5009
  %5072 = fadd fast float %5069, %5010
  %5073 = fmul fast float %5070, %5034
  %5074 = call float @dx.op.tertiary.f32(i32 46, float %5071, float %5035, float %5073)  ; FMad(a,b,c)
  %5075 = call float @dx.op.tertiary.f32(i32 46, float %5072, float %5036, float %5074)  ; FMad(a,b,c)
  %5076 = fadd fast float %5075, %5037
  %5077 = fmul fast float %5070, %5039
  %5078 = call float @dx.op.tertiary.f32(i32 46, float %5071, float %5040, float %5077)  ; FMad(a,b,c)
  %5079 = call float @dx.op.tertiary.f32(i32 46, float %5072, float %5041, float %5078)  ; FMad(a,b,c)
  %5080 = fadd fast float %5079, %5042
  %5081 = fmul fast float %5070, %5044
  %5082 = call float @dx.op.tertiary.f32(i32 46, float %5071, float %5045, float %5081)  ; FMad(a,b,c)
  %5083 = call float @dx.op.tertiary.f32(i32 46, float %5072, float %5046, float %5082)  ; FMad(a,b,c)
  %5084 = fadd fast float %5083, %5047
  %5085 = fdiv fast float %5076, %5084
  %5086 = fdiv fast float %5080, %5084
  %5087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.f32 %5087, 0
  %5089 = extractvalue %dx.types.CBufRet.f32 %5087, 1
  %5090 = fmul fast float %5088, %5085
  %5091 = fmul fast float %5089, %5086
  %5092 = extractvalue %dx.types.CBufRet.f32 %5087, 2
  %5093 = extractvalue %dx.types.CBufRet.f32 %5087, 3
  %5094 = fadd fast float %5090, %5092
  %5095 = fadd fast float %5091, %5093
  %5096 = fmul fast float %5048, 8.000000e+00
  %5097 = call float @dx.op.unary.f32(i32 7, float %5096)  ; Saturate(value)
  %5098 = fmul fast float %5094, 2.000000e+00
  %5099 = fmul fast float %5095, 2.000000e+00
  %5100 = fadd fast float %5098, -1.000000e+00
  %5101 = fadd fast float %5099, -1.000000e+00
  %5102 = fmul fast float %5100, %5100
  %5103 = fsub fast float 1.000000e+00, %5102
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = fmul fast float %5101, %5101
  %5106 = fsub fast float 1.000000e+00, %5105
  %5107 = call float @dx.op.unary.f32(i32 7, float %5106)  ; Saturate(value)
  %5108 = fmul fast float %4280, %5104
  %5109 = fmul fast float %5108, %5107
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fmul fast float %5110, %5097
  %5112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %34, float %5094, float %5095, float undef, float undef, i32 0, i32 0, i32 undef, float %5065)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5113 = extractvalue %dx.types.ResRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.ResRet.f32 %5112, 1
  %5115 = extractvalue %dx.types.ResRet.f32 %5112, 2
  %5116 = select i1 %181, float 0.000000e+00, float %5114
  %5117 = select i1 %181, float 0.000000e+00, float %5115
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 2
  %5120 = fmul fast float %5119, %5113
  %5121 = fmul fast float %5116, %5119
  %5122 = fmul fast float %5117, %5119
  %5123 = fsub fast float %5120, %5012
  %5124 = fsub fast float %5121, %5013
  %5125 = fsub fast float %5122, %5014
  %5126 = fmul fast float %5123, %5111
  %5127 = fmul fast float %5124, %5111
  %5128 = fmul fast float %5125, %5111
  %5129 = fadd fast float %5126, %5012
  %5130 = fadd fast float %5127, %5013
  %5131 = fadd fast float %5128, %5014
  br label %5132

; <label>:5132                                    ; preds = %5032, %5004, %4529, %4086
  %5133 = phi float [ %4531, %4529 ], [ %5028, %5004 ], [ %4241, %4086 ], [ %5129, %5032 ]
  %5134 = phi float [ %4532, %4529 ], [ %5029, %5004 ], [ %4242, %4086 ], [ %5130, %5032 ]
  %5135 = phi float [ %4533, %4529 ], [ %5030, %5004 ], [ %4243, %4086 ], [ %5131, %5032 ]
  %5136 = fmul fast float %4259, %4237
  %5137 = fmul fast float %4259, %4238
  %5138 = fmul fast float %4259, %4239
  %5139 = fmul fast float %5133, %4254
  %5140 = fmul fast float %5134, %4255
  %5141 = fmul fast float %5135, %4256
  %5142 = fmul fast float %5136, %900
  %5143 = fmul fast float %5137, %900
  %5144 = fmul fast float %5138, %900
  %5145 = fadd fast float %5139, %3456
  %5146 = fmul fast float %5145, %900
  %5147 = fadd fast float %5140, %3457
  %5148 = fmul fast float %5147, %900
  %5149 = fadd fast float %5141, %3458
  %5150 = fmul fast float %5149, %900
  %5151 = bitcast i32 %4145 to float
  %5152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5153 = extractvalue %dx.types.CBufRet.f32 %5152, 3
  %5154 = fcmp fast oeq float %5153, 0.000000e+00
  br i1 %5154, label %5304, label %5155

; <label>:5155                                    ; preds = %5132
  %5156 = extractvalue %dx.types.CBufRet.f32 %5152, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5152, 1
  %5158 = extractvalue %dx.types.CBufRet.f32 %5152, 2
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5162 = extractvalue %dx.types.CBufRet.f32 %5159, 2
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5166 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5161, float %5162, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5167 = select i1 %181, float %5164, float %5160
  %5168 = select i1 %181, float %5166, float %5161
  %5169 = select i1 %181, float %5165, float %5162
  %5170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5171 = extractvalue %dx.types.CBufRet.f32 %5170, 1
  %5172 = fcmp fast une float %5171, 0.000000e+00
  br i1 %5172, label %5173, label %5190

; <label>:5173                                    ; preds = %5155
  %5174 = fptoui float %74 to i32
  %5175 = fptoui float %75 to i32
  %5176 = lshr i32 %5174, 4
  %5177 = lshr i32 %5175, 4
  %5178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5179 = extractvalue %dx.types.CBufRet.f32 %5178, 0
  %5180 = fptoui float %5179 to i32
  %5181 = add i32 %5180, 15
  %5182 = lshr i32 %5181, 4
  %5183 = mul i32 %5182, %5177
  %5184 = add i32 %5183, %5176
  %5185 = shl i32 %5184, 3
  %5186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5185, i32 undef)  ; BufferLoad(srv,index,wot)
  %5187 = extractvalue %dx.types.ResRet.i32 %5186, 0
  %5188 = and i32 %5187, -268435456
  %5189 = icmp eq i32 %5188, -1342177280
  br i1 %5189, label %5195, label %5190

; <label>:5190                                    ; preds = %5173, %5155
  %5191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %37, float %4107, float %4108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5192 = extractvalue %dx.types.ResRet.f32 %5191, 0
  %5193 = extractvalue %dx.types.ResRet.f32 %5191, 1
  %5194 = extractvalue %dx.types.ResRet.f32 %5191, 2
  br label %5195

; <label>:5195                                    ; preds = %5190, %5173
  %5196 = phi float [ %5192, %5190 ], [ 0.000000e+00, %5173 ]
  %5197 = phi float [ %5193, %5190 ], [ 0.000000e+00, %5173 ]
  %5198 = phi float [ %5194, %5190 ], [ 0.000000e+00, %5173 ]
  %5199 = call float @dx.op.binary.f32(i32 36, float %5197, float %5198)  ; FMin(a,b)
  %5200 = call float @dx.op.binary.f32(i32 36, float %5196, float %5199)  ; FMin(a,b)
  %5201 = fcmp fast ogt float %5200, 0.000000e+00
  br i1 %5201, label %5202, label %5304, !dx.controlflow.hints !83

; <label>:5202                                    ; preds = %5195
  %5203 = fmul fast float %5196, %5167
  %5204 = fmul fast float %5197, %5168
  %5205 = fmul fast float %5198, %5169
  %5206 = fsub fast float %5156, %4092
  %5207 = fsub fast float %5157, %4091
  %5208 = fsub fast float %5158, %4090
  %5209 = call float @dx.op.dot3.f32(i32 55, float %5206, float %5207, float %5208, float %5206, float %5207, float %5208)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = call float @dx.op.unary.f32(i32 25, float %5209)  ; Rsqrt(value)
  %5211 = fmul fast float %5210, %5206
  %5212 = fmul fast float %5210, %5207
  %5213 = fmul fast float %5210, %5208
  %5214 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5157, float %5158, float %4096, float %4097, float %4098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = call float @dx.op.dot3.f32(i32 55, float %4089, float %4088, float %4087, float %5211, float %5212, float %5213)  ; Dot3(ax,ay,az,bx,by,bz)
  %5216 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5217 = fmul fast float %5216, %5216
  %5218 = fmul fast float %5217, %5151
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fmul fast float %5219, %5216
  %5221 = call float @dx.op.dot3.f32(i32 55, float %4096, float %4097, float %4098, float %5211, float %5212, float %5213)  ; Dot3(ax,ay,az,bx,by,bz)
  %5222 = fmul fast float %5221, %5221
  %5223 = call float @dx.op.unary.f32(i32 6, float %5214)  ; FAbs(value)
  %5224 = fsub fast float 1.000000e+00, %4139
  %5225 = fmul fast float %4121, %4121
  %5226 = fmul fast float %5225, %5224
  %5227 = fadd fast float %5226, %4139
  %5228 = bitcast float %5227 to i32
  %5229 = ashr i32 %5228, 1
  %5230 = add nsw i32 %5229, 532487669
  %5231 = bitcast i32 %5230 to float
  %5232 = fadd fast float %5231, %4121
  %5233 = fmul fast float %4139, %5222
  %5234 = fsub fast float 1.000000e+00, %5222
  %5235 = fadd fast float %5234, %5233
  %5236 = fmul fast float %5223, %5223
  %5237 = fmul fast float %5236, %5224
  %5238 = fadd fast float %5237, %4139
  %5239 = bitcast float %5238 to i32
  %5240 = ashr i32 %5239, 1
  %5241 = add nsw i32 %5240, 532487669
  %5242 = bitcast i32 %5241 to float
  %5243 = fadd fast float %5242, %5223
  %5244 = fmul fast float %5235, %5235
  %5245 = fmul fast float %5244, %5232
  %5246 = fmul fast float %5245, %5243
  %5247 = fdiv fast float 0x3FF0A00000000000, %5246
  %5248 = fmul fast float %5247, %4139
  %5249 = call float @dx.op.unary.f32(i32 6, float %5215)  ; FAbs(value)
  %5250 = fsub fast float 1.000000e+00, %5249
  %5251 = bitcast float %5250 to i32
  %5252 = sitofp i32 %5251 to float
  %5253 = fmul fast float %5252, 5.000000e+00
  %5254 = fadd fast float %5253, 0xC1EFBF8940000000
  %5255 = fptosi float %5254 to i32
  %5256 = bitcast i32 %5255 to float
  %5257 = fsub fast float 1.000000e+00, %4093
  %5258 = fsub fast float 1.000000e+00, %4094
  %5259 = fsub fast float 1.000000e+00, %4119
  %5260 = fmul fast float %5256, %5257
  %5261 = fmul fast float %5256, %5258
  %5262 = fmul fast float %5256, %5259
  %5263 = fadd fast float %5260, %4093
  %5264 = fadd fast float %5261, %4094
  %5265 = fadd fast float %5262, %4119
  %5266 = fmul fast float %5214, 9.843750e-01
  %5267 = fadd fast float %5266, 7.812500e-03
  %5268 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5267, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 2
  %5270 = extractvalue %dx.types.ResRet.f32 %5268, 3
  %5271 = fmul fast float %5269, %4093
  %5272 = fmul fast float %5269, %4094
  %5273 = fmul fast float %5269, %4119
  %5274 = fadd fast float %5271, %5270
  %5275 = fadd fast float %5272, %5270
  %5276 = fadd fast float %5273, %5270
  %5277 = call float @dx.op.binary.f32(i32 35, float %5275, float %5276)  ; FMax(a,b)
  %5278 = call float @dx.op.binary.f32(i32 35, float %5274, float %5277)  ; FMax(a,b)
  %5279 = fsub fast float 1.000000e+00, %5278
  %5280 = fmul fast float %5220, %5203
  %5281 = fmul fast float %5280, %5279
  %5282 = fmul fast float %5220, %5204
  %5283 = fmul fast float %5282, %5279
  %5284 = fmul fast float %5220, %5205
  %5285 = fmul fast float %5284, %5279
  %5286 = fmul fast float %5280, %5248
  %5287 = fmul fast float %5286, %5263
  %5288 = fmul fast float %5282, %5248
  %5289 = fmul fast float %5288, %5264
  %5290 = fmul fast float %5284, %5248
  %5291 = fmul fast float %5290, %5265
  %5292 = fadd fast float %5281, %5136
  %5293 = fmul fast float %5292, %900
  %5294 = fadd fast float %5283, %5137
  %5295 = fmul fast float %5294, %900
  %5296 = fadd fast float %5285, %5138
  %5297 = fmul fast float %5296, %900
  %5298 = fadd fast float %5287, %5145
  %5299 = fmul fast float %5298, %900
  %5300 = fadd fast float %5289, %5147
  %5301 = fmul fast float %5300, %900
  %5302 = fadd fast float %5291, %5149
  %5303 = fmul fast float %5302, %900
  br label %5304

; <label>:5304                                    ; preds = %5202, %5195, %5132
  %5305 = phi float [ %5146, %5132 ], [ %5146, %5195 ], [ %5299, %5202 ]
  %5306 = phi float [ %5148, %5132 ], [ %5148, %5195 ], [ %5301, %5202 ]
  %5307 = phi float [ %5150, %5132 ], [ %5150, %5195 ], [ %5303, %5202 ]
  %5308 = phi float [ %5142, %5132 ], [ %5142, %5195 ], [ %5293, %5202 ]
  %5309 = phi float [ %5143, %5132 ], [ %5143, %5195 ], [ %5295, %5202 ]
  %5310 = phi float [ %5144, %5132 ], [ %5144, %5195 ], [ %5297, %5202 ]
  %5311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5312 = extractvalue %dx.types.CBufRet.i32 %5311, 0
  %5313 = icmp eq i32 %5312, 0
  br i1 %5313, label %5675, label %5314

; <label>:5314                                    ; preds = %5304
  %5315 = fptoui float %74 to i32
  %5316 = fptoui float %75 to i32
  %5317 = lshr i32 %5315, 4
  %5318 = lshr i32 %5316, 4
  %5319 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.i32 %5319, 0
  %5321 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5318, i32 %5320, i32 %5317)  ; UMad(a,b,c)
  %5322 = add nsw i32 %5312, -1
  %5323 = call i32 @dx.op.binary.i32(i32 37, i32 %5322, i32 0)  ; IMax(a,b)
  %5324 = call float @dx.op.binary.f32(i32 35, float %69, float 0.000000e+00)  ; FMax(a,b)
  %5325 = fptoui float %5324 to i32
  %5326 = lshr i32 %5325, 5
  %5327 = call i32 @dx.op.binary.i32(i32 40, i32 %5326, i32 8191)  ; UMin(a,b)
  %5328 = shl i32 %5327, 2
  %5329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5328, i32 undef)  ; BufferLoad(srv,index,wot)
  %5330 = extractvalue %dx.types.ResRet.i32 %5329, 0
  %5331 = lshr i32 %5330, 16
  %5332 = and i32 %5330, 65535
  %5333 = lshr i32 %5330, 21
  %5334 = lshr i32 %5332, 5
  %5335 = call i32 @dx.op.binary.i32(i32 40, i32 %5334, i32 %5323)  ; UMin(a,b)
  %5336 = icmp ugt i32 %5333, %5335
  br i1 %5336, label %5675, label %5337

; <label>:5337                                    ; preds = %5314
  br label %5338

; <label>:5338                                    ; preds = %5665, %5337
  %5339 = phi i32 [ %5672, %5665 ], [ %5333, %5337 ]
  %5340 = phi float [ %5666, %5665 ], [ %5305, %5337 ]
  %5341 = phi float [ %5667, %5665 ], [ %5306, %5337 ]
  %5342 = phi float [ %5668, %5665 ], [ %5307, %5337 ]
  %5343 = phi float [ %5669, %5665 ], [ %5308, %5337 ]
  %5344 = phi float [ %5670, %5665 ], [ %5309, %5337 ]
  %5345 = phi float [ %5671, %5665 ], [ %5310, %5337 ]
  %5346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.i32 %5346, 0
  %5348 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5321, i32 %5347, i32 %5339)  ; UMad(a,b,c)
  %5349 = shl i32 %5348, 2
  %5350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5349, i32 undef)  ; BufferLoad(srv,index,wot)
  %5351 = extractvalue %dx.types.ResRet.i32 %5350, 0
  %5352 = shl i32 %5339, 5
  %5353 = sub nsw i32 %5331, %5352
  %5354 = call i32 @dx.op.binary.i32(i32 37, i32 %5353, i32 0)  ; IMax(a,b)
  %5355 = call i32 @dx.op.binary.i32(i32 38, i32 %5354, i32 31)  ; IMin(a,b)
  %5356 = sub nsw i32 1, %5331
  %5357 = add nsw i32 %5356, %5332
  %5358 = call i32 @dx.op.binary.i32(i32 37, i32 %5357, i32 0)  ; IMax(a,b)
  %5359 = call i32 @dx.op.binary.i32(i32 38, i32 %5358, i32 32)  ; IMin(a,b)
  %5360 = and i32 %5359, 31
  %5361 = shl i32 -1, %5360
  %5362 = xor i32 %5361, -1
  %5363 = and i32 %5355, 31
  %5364 = shl i32 %5362, %5363
  %5365 = icmp eq i32 %5359, 32
  %5366 = select i1 %5365, i32 -1, i32 %5364
  %5367 = and i32 %5366, %5351
  %5368 = icmp eq i32 %5367, 0
  br i1 %5368, label %5665, label %5369

; <label>:5369                                    ; preds = %5338
  br label %5370

; <label>:5370                                    ; preds = %5450, %5369
  %5371 = phi i32 [ %5382, %5450 ], [ %5367, %5369 ]
  %5372 = phi float [ %5451, %5450 ], [ %5340, %5369 ]
  %5373 = phi float [ %5452, %5450 ], [ %5341, %5369 ]
  %5374 = phi float [ %5453, %5450 ], [ %5342, %5369 ]
  %5375 = phi float [ %5454, %5450 ], [ %5343, %5369 ]
  %5376 = phi float [ %5455, %5450 ], [ %5344, %5369 ]
  %5377 = phi float [ %5456, %5450 ], [ %5345, %5369 ]
  %5378 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5371)  ; FirstbitLo(value)
  %5379 = add i32 %5378, %5352
  %5380 = and i32 %5378, 31
  %5381 = shl i32 1, %5380
  %5382 = xor i32 %5381, %5371
  %5383 = mul i32 %5379, 112
  %5384 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5383, i32 undef)  ; BufferLoad(srv,index,wot)
  %5385 = extractvalue %dx.types.ResRet.f32 %5384, 0
  %5386 = extractvalue %dx.types.ResRet.f32 %5384, 1
  %5387 = extractvalue %dx.types.ResRet.f32 %5384, 2
  %5388 = or i32 %5383, 12
  %5389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5388, i32 undef)  ; BufferLoad(srv,index,wot)
  %5390 = extractvalue %dx.types.ResRet.f32 %5389, 0
  %5391 = add i32 %5383, 44
  %5392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5391, i32 undef)  ; BufferLoad(srv,index,wot)
  %5393 = extractvalue %dx.types.ResRet.f32 %5392, 0
  %5394 = add i32 %5383, 48
  %5395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5394, i32 undef)  ; BufferLoad(srv,index,wot)
  %5396 = extractvalue %dx.types.ResRet.f32 %5395, 0
  %5397 = extractvalue %dx.types.ResRet.f32 %5395, 1
  %5398 = extractvalue %dx.types.ResRet.f32 %5395, 2
  %5399 = add i32 %5383, 80
  %5400 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5399, i32 undef)  ; BufferLoad(srv,index,wot)
  %5401 = extractvalue %dx.types.ResRet.f32 %5400, 1
  %5402 = extractvalue %dx.types.ResRet.f32 %5400, 2
  %5403 = call float @dx.op.dot3.f32(i32 55, float %5385, float %5386, float %5387, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5404 = select i1 %181, float %5401, float %5385
  %5405 = select i1 %181, float %5403, float %5386
  %5406 = select i1 %181, float %5402, float %5387
  %5407 = fsub fast float %5396, %137
  %5408 = fsub fast float %5397, %138
  %5409 = fsub fast float %5398, %139
  %5410 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5408, float %5409, float %5407, float %5408, float %5409)  ; Dot3(ax,ay,az,bx,by,bz)
  %5411 = call float @dx.op.unary.f32(i32 24, float %5410)  ; Sqrt(value)
  %5412 = fdiv fast float 1.000000e+00, %5411
  %5413 = fmul fast float %5412, %5407
  %5414 = fmul fast float %5412, %5408
  %5415 = fmul fast float %5412, %5409
  %5416 = fadd fast float %5411, %5390
  %5417 = fdiv fast float 1.000000e+00, %5416
  %5418 = fmul float %5393, %5417
  %5419 = fmul float %5418, %5418
  %5420 = call float @dx.op.unary.f32(i32 7, float %5419)  ; Saturate(value)
  %5421 = and i32 %5381, %5367
  %5422 = icmp eq i32 %5421, 0
  br i1 %5422, label %5445, label %5423, !dx.controlflow.hints !84

; <label>:5423                                    ; preds = %5370
  %5424 = lshr i32 %5315, 5
  %5425 = lshr i32 %5316, 5
  %5426 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %27, i32 0, i32 %5424, i32 %5425, i32 %5379, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5427 = extractvalue %dx.types.ResRet.i32 %5426, 0
  %5428 = and i32 %5427, 3
  %5429 = icmp eq i32 %5428, 0
  %5430 = select i1 %5429, float 1.000000e+00, float 0.000000e+00
  %5431 = icmp eq i32 %5428, 3
  br i1 %5431, label %5432, label %5445

; <label>:5432                                    ; preds = %5423
  %5433 = lshr i32 %5427, 10
  %5434 = and i32 %5433, 8160
  %5435 = and i32 %5316, 31
  %5436 = or i32 %5434, %5435
  %5437 = lshr i32 %5427, 1
  %5438 = and i32 %5437, 16352
  %5439 = and i32 %5315, 31
  %5440 = or i32 %5438, %5439
  %5441 = lshr i32 %5427, 23
  %5442 = and i32 %5441, 255
  %5443 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %26, i32 0, i32 %5440, i32 %5436, i32 %5442, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5444 = extractvalue %dx.types.ResRet.f32 %5443, 0
  br label %5445

; <label>:5445                                    ; preds = %5432, %5423, %5370
  %5446 = phi float [ %5444, %5432 ], [ %5430, %5423 ], [ 0.000000e+00, %5370 ]
  %5447 = call float @dx.op.binary.f32(i32 36, float %5446, float %5446)  ; FMin(a,b)
  %5448 = call float @dx.op.binary.f32(i32 36, float %5446, float %5447)  ; FMin(a,b)
  %5449 = fcmp fast ogt float %5448, 0.000000e+00
  br i1 %5449, label %5458, label %5450, !dx.controlflow.hints !85

; <label>:5450                                    ; preds = %5519, %5445
  %5451 = phi float [ %5372, %5445 ], [ %5661, %5519 ]
  %5452 = phi float [ %5373, %5445 ], [ %5662, %5519 ]
  %5453 = phi float [ %5374, %5445 ], [ %5663, %5519 ]
  %5454 = phi float [ %5375, %5445 ], [ %5652, %5519 ]
  %5455 = phi float [ %5376, %5445 ], [ %5653, %5519 ]
  %5456 = phi float [ %5377, %5445 ], [ %5654, %5519 ]
  %5457 = icmp eq i32 %5371, %5381
  br i1 %5457, label %5664, label %5370

; <label>:5458                                    ; preds = %5445
  %5459 = fmul fast float %5446, %5404
  %5460 = fmul fast float %5446, %5405
  %5461 = fmul fast float %5446, %5406
  %5462 = fsub fast float %5398, %3892
  %5463 = fcmp fast ogt float %5462, 0.000000e+00
  %5464 = fsub fast float %139, %3892
  %5465 = fcmp fast ogt float %5464, 0.000000e+00
  %5466 = xor i1 %5465, %5463
  %5467 = fsub fast float %3892, %5398
  %5468 = fmul fast float %5467, 2.000000e+00
  %5469 = fadd fast float %5468, %5398
  %5470 = select i1 %5466, float %5398, float %5469
  %5471 = fsub fast float %5470, %139
  %5472 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5408, float %5471, float %5407, float %5408, float %5471)  ; Dot3(ax,ay,az,bx,by,bz)
  %5473 = call float @dx.op.unary.f32(i32 25, float %5472)  ; Rsqrt(value)
  %5474 = fmul fast float %5473, %5407
  %5475 = fmul fast float %5473, %5408
  %5476 = fmul fast float %5473, %5471
  %5477 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3900)  ; Dot3(ax,ay,az,bx,by,bz)
  %5478 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5474, float %5475, float %5476)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = fdiv fast float 1.000000e+00, %5478
  %5480 = fmul fast float %5479, %5477
  %5481 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5464, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = fcmp fast ogt float %5481, 0.000000e+00
  %5483 = fcmp fast olt float %5481, 0.000000e+00
  %5484 = zext i1 %5482 to i32
  %5485 = zext i1 %5483 to i32
  %5486 = sub nsw i32 %5484, %5485
  %5487 = sitofp i32 %5486 to float
  %5488 = fsub fast float %5470, %3892
  %5489 = call float @dx.op.dot3.f32(i32 55, float %5407, float %5408, float %5488, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5490 = fcmp fast ogt float %5489, 0.000000e+00
  %5491 = fcmp fast olt float %5489, 0.000000e+00
  %5492 = zext i1 %5490 to i32
  %5493 = zext i1 %5491 to i32
  %5494 = sub nsw i32 %5492, %5493
  %5495 = sitofp i32 %5494 to float
  %5496 = fcmp fast une float %5487, %5495
  br i1 %5496, label %5497, label %5507

; <label>:5497                                    ; preds = %5458
  %5498 = fmul fast float %5480, %5476
  %5499 = fmul fast float %5480, %5475
  %5500 = fmul fast float %5480, %5474
  %5501 = fmul fast float %5500, %5500
  %5502 = fmul fast float %5499, %5499
  %5503 = fadd fast float %5501, %5502
  %5504 = fmul fast float %5498, %5498
  %5505 = fadd fast float %5503, %5504
  %5506 = call float @dx.op.unary.f32(i32 24, float %5505)  ; Sqrt(value)
  br label %5519

; <label>:5507                                    ; preds = %5458
  %5508 = icmp slt i32 %5486, 0
  br i1 %5508, label %5509, label %5519

; <label>:5509                                    ; preds = %5507
  %5510 = fsub fast float %137, %5396
  %5511 = fsub fast float %138, %5397
  %5512 = fsub fast float %139, %5470
  %5513 = fmul fast float %5510, %5510
  %5514 = fmul fast float %5511, %5511
  %5515 = fadd fast float %5513, %5514
  %5516 = fmul fast float %5512, %5512
  %5517 = fadd fast float %5515, %5516
  %5518 = call float @dx.op.unary.f32(i32 24, float %5517)  ; Sqrt(value)
  br label %5519

; <label>:5519                                    ; preds = %5509, %5507, %5497
  %5520 = phi float [ %5506, %5497 ], [ %5518, %5509 ], [ 0.000000e+00, %5507 ]
  %5521 = and i1 %5465, %5463
  %5522 = fsub fast float -0.000000e+00, %5520
  %5523 = select i1 %5521, float -0.000000e+00, float %5522
  %5524 = fmul fast float %3893, 0x3FF7154760000000
  %5525 = fmul fast float %5524, %5523
  %5526 = fmul fast float %3894, 0x3FF7154760000000
  %5527 = fmul fast float %5526, %5523
  %5528 = fmul fast float %3895, 0x3FF7154760000000
  %5529 = fmul fast float %5528, %5523
  %5530 = call float @dx.op.unary.f32(i32 21, float %5525)  ; Exp(value)
  %5531 = call float @dx.op.unary.f32(i32 21, float %5527)  ; Exp(value)
  %5532 = call float @dx.op.unary.f32(i32 21, float %5529)  ; Exp(value)
  %5533 = call float @dx.op.unary.f32(i32 7, float %5530)  ; Saturate(value)
  %5534 = call float @dx.op.unary.f32(i32 7, float %5531)  ; Saturate(value)
  %5535 = call float @dx.op.unary.f32(i32 7, float %5532)  ; Saturate(value)
  %5536 = fmul fast float %5459, %5533
  %5537 = fmul fast float %5460, %5534
  %5538 = fmul fast float %5461, %5535
  %5539 = fsub fast float %5413, %4092
  %5540 = fsub fast float %5414, %4091
  %5541 = fsub fast float %5415, %4090
  %5542 = call float @dx.op.dot3.f32(i32 55, float %5539, float %5540, float %5541, float %5539, float %5540, float %5541)  ; Dot3(ax,ay,az,bx,by,bz)
  %5543 = call float @dx.op.unary.f32(i32 25, float %5542)  ; Rsqrt(value)
  %5544 = fmul fast float %5543, %5539
  %5545 = fmul fast float %5543, %5540
  %5546 = fmul fast float %5543, %5541
  %5547 = call float @dx.op.dot3.f32(i32 55, float %5413, float %5414, float %5415, float %4096, float %4097, float %4098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5548 = call float @dx.op.dot3.f32(i32 55, float %4089, float %4088, float %4087, float %5544, float %5545, float %5546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5549 = call float @dx.op.unary.f32(i32 7, float %5547)  ; Saturate(value)
  %5550 = fmul fast float %5549, %5420
  %5551 = fmul fast float %5549, %5549
  %5552 = fmul fast float %5551, %5151
  %5553 = call float @dx.op.unary.f32(i32 7, float %5552)  ; Saturate(value)
  %5554 = fmul fast float %5550, %5553
  %5555 = bitcast float %5410 to i32
  %5556 = ashr i32 %5555, 1
  %5557 = sub nsw i32 1597463007, %5556
  %5558 = bitcast i32 %5557 to float
  %5559 = fmul fast float %5558, %5407
  %5560 = fmul fast float %5558, %5408
  %5561 = fmul fast float %5558, %5409
  %5562 = fsub fast float %5559, %4092
  %5563 = fsub fast float %5560, %4091
  %5564 = fsub fast float %5561, %4090
  %5565 = call float @dx.op.dot3.f32(i32 55, float %5562, float %5563, float %5564, float %5562, float %5563, float %5564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5566 = call float @dx.op.unary.f32(i32 25, float %5565)  ; Rsqrt(value)
  %5567 = fmul fast float %5562, %5566
  %5568 = fmul fast float %5563, %5566
  %5569 = fmul fast float %5564, %5566
  %5570 = call float @dx.op.dot3.f32(i32 55, float %4096, float %4097, float %4098, float %5567, float %5568, float %5569)  ; Dot3(ax,ay,az,bx,by,bz)
  %5571 = fmul fast float %5570, %5570
  %5572 = call float @dx.op.unary.f32(i32 6, float %5547)  ; FAbs(value)
  %5573 = fsub fast float 1.000000e+00, %4139
  %5574 = fmul fast float %4121, %4121
  %5575 = fmul fast float %5574, %5573
  %5576 = fadd fast float %5575, %4139
  %5577 = bitcast float %5576 to i32
  %5578 = ashr i32 %5577, 1
  %5579 = add nsw i32 %5578, 532487669
  %5580 = bitcast i32 %5579 to float
  %5581 = fadd fast float %5580, %4121
  %5582 = fmul fast float %4139, %5571
  %5583 = fsub fast float 1.000000e+00, %5571
  %5584 = fadd fast float %5583, %5582
  %5585 = fmul fast float %5572, %5572
  %5586 = fmul fast float %5585, %5573
  %5587 = fadd fast float %5586, %4139
  %5588 = bitcast float %5587 to i32
  %5589 = ashr i32 %5588, 1
  %5590 = add nsw i32 %5589, 532487669
  %5591 = bitcast i32 %5590 to float
  %5592 = fadd fast float %5591, %5572
  %5593 = fmul fast float %5584, %5584
  %5594 = fmul fast float %5593, %5581
  %5595 = fmul fast float %5594, %5592
  %5596 = fdiv fast float 1.000000e+00, %5595
  %5597 = bitcast float %4139 to i32
  %5598 = sitofp i32 %5597 to float
  %5599 = fmul fast float %5598, 0x3FE7F73180000000
  %5600 = fadd fast float %5599, 0x41AFE27C40000000
  %5601 = fptosi float %5600 to i32
  %5602 = bitcast i32 %5601 to float
  %5603 = fmul fast float %5393, 0x3FD80E9D60000000
  %5604 = fmul fast float %5603, %5558
  %5605 = fadd fast float %5602, %5604
  %5606 = bitcast float %5605 to i32
  %5607 = sub nsw i32 2129859010, %5606
  %5608 = bitcast i32 %5607 to float
  %5609 = fmul fast float %4139, %5596
  %5610 = fmul fast float %5609, %5602
  %5611 = fmul fast float %5610, %5608
  %5612 = call float @dx.op.unary.f32(i32 6, float %5548)  ; FAbs(value)
  %5613 = fsub fast float 1.000000e+00, %5612
  %5614 = bitcast float %5613 to i32
  %5615 = sitofp i32 %5614 to float
  %5616 = fmul fast float %5615, 5.000000e+00
  %5617 = fadd fast float %5616, 0xC1EFBF8940000000
  %5618 = fptosi float %5617 to i32
  %5619 = bitcast i32 %5618 to float
  %5620 = fsub fast float 1.000000e+00, %4093
  %5621 = fsub fast float 1.000000e+00, %4094
  %5622 = fsub fast float 1.000000e+00, %4119
  %5623 = fmul fast float %5619, %5620
  %5624 = fmul fast float %5619, %5621
  %5625 = fmul fast float %5619, %5622
  %5626 = fadd fast float %5623, %4093
  %5627 = fadd fast float %5624, %4094
  %5628 = fadd fast float %5625, %4119
  %5629 = fmul fast float %5547, 9.843750e-01
  %5630 = fadd fast float %5629, 7.812500e-03
  %5631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %36, float %5630, float %4247, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5632 = extractvalue %dx.types.ResRet.f32 %5631, 2
  %5633 = extractvalue %dx.types.ResRet.f32 %5631, 3
  %5634 = fmul fast float %5632, %4093
  %5635 = fmul fast float %5632, %4094
  %5636 = fmul fast float %5632, %4119
  %5637 = fadd fast float %5634, %5633
  %5638 = fadd fast float %5635, %5633
  %5639 = fadd fast float %5636, %5633
  %5640 = call float @dx.op.binary.f32(i32 35, float %5638, float %5639)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 35, float %5637, float %5640)  ; FMax(a,b)
  %5642 = fsub fast float 1.000000e+00, %5641
  %5643 = fmul fast float %5536, %900
  %5644 = fmul fast float %5643, %5554
  %5645 = fmul fast float %5644, %5642
  %5646 = fmul fast float %5537, %900
  %5647 = fmul fast float %5646, %5554
  %5648 = fmul fast float %5647, %5642
  %5649 = fmul fast float %5538, %900
  %5650 = fmul fast float %5649, %5554
  %5651 = fmul fast float %5650, %5642
  %5652 = fadd fast float %5645, %5375
  %5653 = fadd fast float %5648, %5376
  %5654 = fadd fast float %5651, %5377
  %5655 = fmul fast float %5644, %5626
  %5656 = fmul fast float %5655, %5611
  %5657 = fmul fast float %5647, %5627
  %5658 = fmul fast float %5657, %5611
  %5659 = fmul fast float %5650, %5628
  %5660 = fmul fast float %5659, %5611
  %5661 = fadd fast float %5656, %5372
  %5662 = fadd fast float %5658, %5373
  %5663 = fadd fast float %5660, %5374
  br label %5450

; <label>:5664                                    ; preds = %5450
  br label %5665

; <label>:5665                                    ; preds = %5664, %5338
  %5666 = phi float [ %5340, %5338 ], [ %5451, %5664 ]
  %5667 = phi float [ %5341, %5338 ], [ %5452, %5664 ]
  %5668 = phi float [ %5342, %5338 ], [ %5453, %5664 ]
  %5669 = phi float [ %5343, %5338 ], [ %5454, %5664 ]
  %5670 = phi float [ %5344, %5338 ], [ %5455, %5664 ]
  %5671 = phi float [ %5345, %5338 ], [ %5456, %5664 ]
  %5672 = add i32 %5339, 1
  %5673 = icmp ugt i32 %5672, %5335
  br i1 %5673, label %5674, label %5338

; <label>:5674                                    ; preds = %5665
  br label %5675

; <label>:5675                                    ; preds = %5674, %5314, %5304
  %5676 = phi float [ %5305, %5304 ], [ %5305, %5314 ], [ %5666, %5674 ]
  %5677 = phi float [ %5306, %5304 ], [ %5306, %5314 ], [ %5667, %5674 ]
  %5678 = phi float [ %5307, %5304 ], [ %5307, %5314 ], [ %5668, %5674 ]
  %5679 = phi float [ %5308, %5304 ], [ %5308, %5314 ], [ %5669, %5674 ]
  %5680 = phi float [ %5309, %5304 ], [ %5309, %5314 ], [ %5670, %5674 ]
  %5681 = phi float [ %5310, %5304 ], [ %5310, %5314 ], [ %5671, %5674 ]
  %5682 = call float @dx.op.unary.f32(i32 24, float %4099)  ; Sqrt(value)
  %5683 = call float @dx.op.unary.f32(i32 24, float %4100)  ; Sqrt(value)
  %5684 = call float @dx.op.unary.f32(i32 24, float %4101)  ; Sqrt(value)
  %5685 = fmul fast float %5682, %5679
  %5686 = fmul fast float %5683, %5680
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  br i1 %181, label %5689, label %5713

; <label>:5689                                    ; preds = %5675
  %5690 = fadd fast float %5681, %3467
  %5691 = fmul fast float %5690, %3465
  %5692 = fsub fast float 1.000000e+00, %3465
  %5693 = call float @dx.op.unary.f32(i32 7, float %5692)  ; Saturate(value)
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 3
  %5696 = fmul fast float %5695, %5693
  %5697 = fsub fast float 1.000000e+00, %4121
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 0
  %5700 = fmul fast float %5699, %5697
  %5701 = extractvalue %dx.types.CBufRet.f32 %5698, 2
  %5702 = fmul fast float %5701, %4117
  %5703 = fadd fast float %5686, %5685
  %5704 = fmul fast float %5688, %5703
  %5705 = extractvalue %dx.types.CBufRet.f32 %5694, 1
  %5706 = fadd fast float %5696, %5691
  %5707 = fsub fast float %5706, %5700
  %5708 = fadd fast float %5707, %5702
  %5709 = fsub fast float %5708, %5705
  %5710 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5711 = fmul fast float %5709, %5710
  %5712 = call float @dx.op.unary.f32(i32 7, float %5711)  ; Saturate(value)
  br label %5729

; <label>:5713                                    ; preds = %5675
  %5714 = fmul fast float %5684, %5681
  %5715 = fmul fast float %5688, %5685
  %5716 = fmul fast float %5688, %5686
  %5717 = fmul fast float %5714, %5688
  %5718 = add i32 %40, 356
  %5719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %5718, i32 undef)  ; BufferLoad(srv,index,wot)
  %5720 = extractvalue %dx.types.ResRet.i32 %5719, 0
  %5721 = and i32 %5720, 32
  %5722 = icmp eq i32 %5721, 0
  br i1 %5722, label %5729, label %5723

; <label>:5723                                    ; preds = %5713
  %5724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5725 = extractvalue %dx.types.CBufRet.f32 %5724, 0
  %5726 = fmul fast float %5725, 0x3FE99999A0000000
  %5727 = fadd fast float %5725, %5715
  %5728 = fadd fast float %5726, %5717
  br label %5729

; <label>:5729                                    ; preds = %5723, %5713, %5689
  %5730 = phi float [ %5704, %5689 ], [ %5727, %5723 ], [ %5715, %5713 ]
  %5731 = phi float [ %5712, %5689 ], [ %5716, %5723 ], [ %5716, %5713 ]
  %5732 = phi float [ 1.000000e+00, %5689 ], [ %5728, %5723 ], [ %5717, %5713 ]
  %5733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5734 = extractvalue %dx.types.CBufRet.f32 %5733, 0
  %5735 = fmul fast float %5734, %5677
  %5736 = fmul fast float %5734, %5678
  %5737 = fadd fast float %5677, %5676
  %5738 = select i1 %181, float %5737, float %5676
  %5739 = fmul float %5738, %5734
  %5740 = select i1 %181, float 0.000000e+00, float %5735
  %5741 = select i1 %181, float 0.000000e+00, float %5736
  %5742 = fmul fast float %5730, %5682
  %5743 = fmul fast float %5731, %5683
  %5744 = fmul fast float %5732, %5684
  %5745 = fadd fast float %5739, %5742
  %5746 = fadd fast float %5740, %5743
  %5747 = fadd fast float %5741, %5744
  %5748 = select i1 %181, float %5731, float %5746
  %5749 = select i1 %181, float %5732, float %5747
  %5750 = call float @dx.op.binary.f32(i32 36, float %5745, float 3.225500e+04)  ; FMin(a,b)
  %5751 = call float @dx.op.binary.f32(i32 36, float %5748, float 3.225500e+04)  ; FMin(a,b)
  %5752 = call float @dx.op.binary.f32(i32 36, float %5749, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5750)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5751)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5752)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!53}
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!37 = !{i32 29, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!47 = !{!48, !49, !50, !51, !52}
!48 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0]}
!54 = !{void ()* @ps_main, !"ps_main", !55, !4, !77}
!55 = !{!56, !75, null}
!56 = !{!57, !60, !62, !64, !66, !68, !69, !70, !71, !72, !74}
!57 = !{i32 0, !"SV_Position", i8 9, i8 3, !58, i8 4, i32 1, i8 4, i32 0, i8 0, !59}
!58 = !{i32 0}
!59 = !{i32 3, i32 11}
!60 = !{i32 1, !"COLOR", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 1, i8 0, !61}
!61 = !{i32 3, i32 14}
!62 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 2, i8 0, !63}
!63 = !{i32 3, i32 3}
!64 = !{i32 3, !"NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 3, i8 0, !65}
!65 = !{i32 3, i32 7}
!66 = !{i32 4, !"TANGENT", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 4, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !58, i8 2, i32 1, i8 3, i32 5, i8 0, !65}
!69 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!70 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 2, i32 7, i8 0, !63}
!71 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 8, i8 0, !67}
!72 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !58, i8 1, i32 1, i8 4, i32 9, i8 0, !73}
!73 = !{i32 3, i32 5}
!74 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !58, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!75 = !{!76}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!77 = !{i32 0, i64 24}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !82}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}

