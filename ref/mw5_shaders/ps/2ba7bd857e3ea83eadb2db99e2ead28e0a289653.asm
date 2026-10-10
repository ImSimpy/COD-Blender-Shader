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
; SECONDARY_TEXCOORDS      0   xy          5     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        6     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        7     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c5ebdf6d332d2d6fc4cbe4c2d530bbcc
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
;                                   sampler      NA          NA      S5             s5     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture     f32          2d      T4     t65,space2     1
;                                   texture     f32          2d      T5     t66,space2     1
;                                   texture     f32          2d      T6     t67,space2     1
;                                   texture     f32          2d      T7     t68,space2     1
;                                   texture     u32          2d      T8     t64,space2     1
;                                   texture    byte         r/o      T9     t38,space1     1
;                                   texture    byte         r/o     T10     t39,space1     1
;                                   texture    byte         r/o     T11     t40,space1     1
;                                   texture    byte         r/o     T12     t37,space1     1
;                                   texture    byte         r/o     T13     t41,space1     1
;                                   texture    byte         r/o     T14     t42,space1     1
;                                   texture     f32          2d     T15     t33,space2     1
;                                   texture     f32     2darray     T16     t16,space2     1
;                                   texture     f32          3d     T17     t15,space2     1
;                                   texture     f32          2d     T18     t13,space2     1
;                                   texture     u32          2d     T19     t17,space2     1
;                                   texture     f32          3d     T20     t18,space2     1
;                                   texture     u32     2darray     T21     t11,space2     1
;                                   texture     f32     2darray     T22     t10,space2     1
;                                   texture     f32          2d     T23     t69,space2     1
;                                   texture    byte         r/o     T24     t49,space1     1
;                                   texture    byte         r/o     T25     t50,space1     1
;                                   texture    byte         r/o     T26     t51,space1     1
;                                   texture    byte         r/o     T27     t52,space1     1
;                                   texture    byte         r/o     T28     t16,space1     1
;                                   texture    byte         r/o     T29     t17,space1     1
;                                   texture     f32          2d     T30     t58,space2     1
;                                   texture     f32          2d     T31     t59,space2     1
;                                   texture     f32          2d     T32     t60,space2     1
;                                   texture    byte         r/o     T33     t45,space1     1
;                                   texture    byte         r/o     T34     t46,space1     1
;                                   texture    byte         r/o     T35     t47,space1     1
;                                   texture    byte         r/o     T36     t48,space1     1
;                                   texture     f32          2d     T37     t57,space2     1
;                                   texture    byte         r/o     T38     t69,space1     1
;                                   texture     f32          2d     T39     t34,space2     1
;                                   texture    byte         r/o     T40     t10,space1     1
;                                   texture    byte         r/o     T41     t68,space1     1
;                                   texture     f32          2d     T42      t0,space2     1
;                                   texture    byte         r/o     T43     t11,space1     1
;                                   texture    byte         r/o     T44     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 32, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 31 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 31 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 31 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 44, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 43, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 42, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 65, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %47 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %48 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = alloca [4 x i32], align 4
  %74 = alloca [4 x i32], align 4
  %75 = alloca [4 x i32], align 4
  %76 = alloca [4 x i32], align 4
  %77 = alloca [4 x i32], align 4
  %78 = alloca [4 x i32], align 4
  %79 = alloca [4 x i32], align 4
  %80 = alloca [4 x i32], align 4
  %81 = alloca [4 x i32], align 4
  %82 = alloca [4 x i32], align 4
  %83 = alloca [4 x float], align 4
  %84 = alloca [4 x float], align 4
  %85 = alloca [4 x float], align 4
  %86 = alloca [4 x float], align 4
  %87 = alloca [4 x float], align 4
  %88 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %89 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = fmul fast float %91, %70
  %93 = fmul fast float %91, %71
  %94 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %95 = bitcast float %94 to i32
  %96 = ashr i32 %95, 1
  %97 = sub nsw i32 1597250115, %96
  %98 = bitcast i32 %97 to float
  %99 = fmul fast float %98, %62
  %100 = fmul fast float %98, %63
  %101 = fmul fast float %98, %64
  %102 = fmul fast float %63, %60
  %103 = fmul fast float %64, %59
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %64, %58
  %106 = fmul fast float %62, %60
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %62, %59
  %109 = fmul fast float %63, %58
  %110 = fsub fast float %108, %109
  %111 = fmul fast float %104, %61
  %112 = fmul fast float %107, %61
  %113 = fmul fast float %110, %61
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 3
  %117 = fmul fast float %92, 2.000000e+00
  %118 = fmul fast float %117, %115
  %119 = fmul fast float %93, 2.000000e+00
  %120 = fmul fast float %119, %116
  %121 = fsub fast float 1.000000e+00, %118
  %122 = fsub fast float 1.000000e+00, %120
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %121, %124
  %128 = fmul fast float %121, %125
  %129 = fmul fast float %121, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %122, %131
  %135 = fmul fast float %122, %132
  %136 = fmul fast float %122, %133
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fadd fast float %134, %138
  %142 = fadd fast float %141, %127
  %143 = fadd fast float %135, %139
  %144 = fadd fast float %143, %128
  %145 = fadd fast float %136, %140
  %146 = fadd fast float %145, %129
  %147 = fmul fast float %142, %72
  %148 = fmul fast float %144, %72
  %149 = fmul fast float %146, %72
  %150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.i32 %150, 3
  %152 = and i32 %151, 1
  %153 = icmp eq i32 %152, 0
  %154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.f32 %154, 3
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 3
  br i1 %153, label %349, label %158, !dx.controlflow.hints !86

; <label>:158                                     ; preds = %0
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 2
  %161 = uitofp i32 %160 to float
  %162 = extractvalue %dx.types.CBufRet.i32 %150, 0
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = extractvalue %dx.types.CBufRet.f32 %163, 1
  %166 = fadd fast float %164, %147
  %167 = fadd fast float %165, %148
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = fsub fast float %166, %169
  %172 = fsub fast float %167, %170
  %173 = fptoui float %161 to i32
  %174 = uitofp i32 %162 to float
  %175 = fptosi float %174 to i32
  %176 = fmul fast float %171, 0x3F3A027520000000
  %177 = fmul fast float %172, 0x3F3A027520000000
  %178 = add nsw i32 %175, -1
  %179 = fptosi float %177 to i32
  %180 = call i32 @dx.op.binary.i32(i32 37, i32 %179, i32 0)  ; IMax(a,b)
  %181 = call i32 @dx.op.binary.i32(i32 38, i32 %180, i32 %178)  ; IMin(a,b)
  %182 = fptosi float %176 to i32
  %183 = call i32 @dx.op.binary.i32(i32 37, i32 %182, i32 0)  ; IMax(a,b)
  %184 = call i32 @dx.op.binary.i32(i32 38, i32 %183, i32 %178)  ; IMin(a,b)
  %185 = mul nsw i32 %181, %175
  %186 = add nsw i32 %184, %185
  %187 = sdiv i32 %186, 4
  %188 = shl nsw i32 %187, 2
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = srem i32 %186, 4
  %192 = shl nsw i32 %191, 3
  %193 = and i32 %192, 24
  %194 = lshr i32 %190, %193
  %195 = and i32 %194, 255
  %196 = mul nuw nsw i32 %195, 12
  %197 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.f32 %197, 0
  %199 = extractvalue %dx.types.ResRet.f32 %197, 1
  %200 = extractvalue %dx.types.ResRet.f32 %197, 2
  %201 = fsub fast float %171, %198
  %202 = fsub fast float %172, %199
  %203 = fdiv fast float %201, %200
  %204 = fdiv fast float %202, %200
  %205 = fmul fast float %157, 2.500000e+01
  %206 = extractvalue %dx.types.CBufRet.i32 %159, 1
  %207 = uitofp i32 %206 to float
  %208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.i32 %208, 1
  %210 = extractvalue %dx.types.CBufRet.i32 %159, 0
  %211 = mul i32 %210, %209
  %212 = uitofp i32 %211 to float
  %213 = uitofp i32 %173 to float
  %214 = shl nuw nsw i32 %195, 3
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = extractvalue %dx.types.ResRet.i32 %215, 1
  %218 = lshr i32 %217, 16
  %219 = and i32 %218, 1
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %226

; <label>:221                                     ; preds = %158
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = extractvalue %dx.types.ResRet.i32 %222, 1
  %225 = lshr i32 %224, 16
  br label %226

; <label>:226                                     ; preds = %221, %158
  %227 = phi i32 [ 0, %221 ], [ %195, %158 ]
  %228 = phi i32 [ %223, %221 ], [ %216, %158 ]
  %229 = phi i32 [ %224, %221 ], [ %217, %158 ]
  %230 = phi i32 [ %225, %221 ], [ %218, %158 ]
  %231 = and i32 %229, 65535
  %232 = lshr i32 %228, 16
  %233 = and i32 %228, 65535
  %234 = lshr i32 %230, 1
  %235 = uitofp i32 %234 to float
  %236 = icmp eq i32 %227, 0
  %237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.f32 %237, 2
  %239 = bitcast float %238 to i32
  %240 = fdiv fast float %171, %157
  %241 = fdiv fast float %172, %157
  %242 = fptoui float %213 to i32
  %243 = fmul fast float %240, %205
  %244 = fmul fast float %241, %205
  %245 = extractvalue %dx.types.CBufRet.i32 %208, 3
  %246 = and i32 %245, 2
  %247 = icmp ne i32 %246, 0
  %248 = select i1 %247, float 5.000000e-01, float 1.000000e+00
  %249 = call float @dx.op.unary.f32(i32 83, float %243)  ; DerivCoarseX(value)
  %250 = call float @dx.op.unary.f32(i32 83, float %244)  ; DerivCoarseX(value)
  %251 = fmul fast float %248, %249
  %252 = fmul fast float %248, %250
  %253 = call float @dx.op.unary.f32(i32 84, float %243)  ; DerivCoarseY(value)
  %254 = call float @dx.op.unary.f32(i32 84, float %244)  ; DerivCoarseY(value)
  %255 = fmul fast float %248, %253
  %256 = fmul fast float %254, %248
  %257 = call float @dx.op.dot2.f32(i32 54, float %251, float %252, float %251, float %252)  ; Dot2(ax,ay,bx,by)
  %258 = call float @dx.op.dot2.f32(i32 54, float %255, float %256, float %255, float %256)  ; Dot2(ax,ay,bx,by)
  %259 = call float @dx.op.binary.f32(i32 35, float %257, float %258)  ; FMax(a,b)
  %260 = call float @dx.op.unary.f32(i32 23, float %259)  ; Log(value)
  %261 = fmul fast float %260, 5.000000e-01
  %262 = call float @dx.op.binary.f32(i32 36, float %257, float %258)  ; FMin(a,b)
  %263 = call float @dx.op.unary.f32(i32 23, float %262)  ; Log(value)
  %264 = uitofp i32 %242 to float
  %265 = fsub fast float %260, %263
  %266 = fmul fast float %265, 5.000000e-01
  %267 = call float @dx.op.binary.f32(i32 36, float %266, float %264)  ; FMin(a,b)
  %268 = fmul fast float %267, %155
  %269 = fsub fast float %261, %268
  %270 = call float @dx.op.binary.f32(i32 35, float %269, float 0.000000e+00)  ; FMax(a,b)
  %271 = call float @dx.op.binary.f32(i32 36, float %270, float 2.400000e+01)  ; FMin(a,b)
  %272 = select i1 %236, float %240, float %203
  %273 = select i1 %236, float %241, float %204
  %274 = call float @dx.op.unary.f32(i32 27, float %271)  ; Round_ni(value)
  %275 = fptosi float %274 to i32
  %276 = sub nsw i32 8, %231
  %277 = select i1 %236, i32 %239, i32 %276
  %278 = sub nsw i32 %275, %277
  %279 = call i32 @dx.op.binary.i32(i32 37, i32 %278, i32 0)  ; IMax(a,b)
  %280 = call i32 @dx.op.binary.i32(i32 38, i32 %279, i32 %231)  ; IMin(a,b)
  %281 = fptoui float %235 to i32
  %282 = and i32 %280, 31
  %283 = lshr i32 %281, %282
  %284 = add i32 %283, -1
  %285 = uitofp i32 %284 to float
  %286 = uitofp i32 %283 to float
  %287 = fmul fast float %286, %272
  %288 = fmul fast float %286, %273
  %289 = call float @dx.op.unary.f32(i32 27, float %287)  ; Round_ni(value)
  %290 = call float @dx.op.unary.f32(i32 27, float %288)  ; Round_ni(value)
  %291 = call float @dx.op.binary.f32(i32 35, float %289, float 0.000000e+00)  ; FMax(a,b)
  %292 = call float @dx.op.binary.f32(i32 35, float %290, float 0.000000e+00)  ; FMax(a,b)
  %293 = call float @dx.op.binary.f32(i32 36, float %291, float %285)  ; FMin(a,b)
  %294 = call float @dx.op.binary.f32(i32 36, float %292, float %285)  ; FMin(a,b)
  %295 = fptoui float %293 to i32
  %296 = fptoui float %294 to i32
  %297 = lshr i32 %233, %282
  %298 = lshr i32 %232, %282
  %299 = add i32 %295, %297
  %300 = add i32 %296, %298
  %301 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %37, i32 %280, i32 %299, i32 %300, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = lshr i32 %302, 8
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = lshr i32 %302, 16
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fptoui float %310 to i32
  %312 = lshr i32 %302, 24
  %313 = uitofp i32 %312 to float
  %314 = fadd fast float %313, 1.000000e+00
  %315 = fptoui float %314 to i32
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, %272
  %318 = fmul fast float %316, %273
  %319 = add i32 %315, -1
  %320 = uitofp i32 %319 to float
  %321 = call float @dx.op.unary.f32(i32 27, float %317)  ; Round_ni(value)
  %322 = call float @dx.op.unary.f32(i32 27, float %318)  ; Round_ni(value)
  %323 = call float @dx.op.binary.f32(i32 35, float %321, float 0.000000e+00)  ; FMax(a,b)
  %324 = call float @dx.op.binary.f32(i32 35, float %322, float 0.000000e+00)  ; FMax(a,b)
  %325 = call float @dx.op.binary.f32(i32 36, float %323, float %320)  ; FMin(a,b)
  %326 = call float @dx.op.binary.f32(i32 36, float %324, float %320)  ; FMin(a,b)
  %327 = fsub fast float %317, %325
  %328 = fsub fast float %318, %326
  %329 = fadd fast float %207, 8.000000e+00
  %330 = fmul fast float %304, %329
  %331 = fmul fast float %307, %329
  %332 = fmul fast float %327, %207
  %333 = fmul fast float %328, %207
  %334 = fadd fast float %330, 4.500000e+00
  %335 = fadd fast float %334, %332
  %336 = fadd fast float %331, 4.500000e+00
  %337 = fadd fast float %336, %333
  %338 = fdiv fast float %335, %212
  %339 = fdiv fast float %337, %212
  %340 = and i32 %311, 31
  %341 = shl i32 1, %340
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, %212
  %344 = fdiv fast float 1.000000e+00, %343
  %345 = fmul fast float %344, %251
  %346 = fmul fast float %344, %252
  %347 = fmul fast float %344, %255
  %348 = fmul fast float %344, %256
  br label %349

; <label>:349                                     ; preds = %226, %0
  %350 = phi float [ %347, %226 ], [ 0.000000e+00, %0 ]
  %351 = phi float [ %348, %226 ], [ 0.000000e+00, %0 ]
  %352 = phi float [ %345, %226 ], [ 0.000000e+00, %0 ]
  %353 = phi float [ %346, %226 ], [ 0.000000e+00, %0 ]
  %354 = phi float [ %338, %226 ], [ 0.000000e+00, %0 ]
  %355 = phi float [ %339, %226 ], [ 0.000000e+00, %0 ]
  %356 = phi float [ %171, %226 ], [ 0.000000e+00, %0 ]
  %357 = phi float [ %172, %226 ], [ 0.000000e+00, %0 ]
  %358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %359 = extractvalue %dx.types.CBufRet.f32 %358, 2
  %360 = extractvalue %dx.types.CBufRet.f32 %358, 3
  %361 = fmul fast float %359, %92
  %362 = fmul fast float %360, %93
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 114688
  %366 = icmp ne i32 %365, 0
  %367 = select i1 %366, float %361, float 0.000000e+00
  %368 = select i1 %366, float %362, float 0.000000e+00
  %369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %46, float %367, float %368, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  %371 = fmul fast float %370, 2.550000e+02
  %372 = fptoui float %371 to i32
  %373 = select i1 %366, i32 %372, i32 0
  %374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.i32 %375, 3
  %377 = and i32 %376, 3
  %378 = icmp ne i32 %377, 0
  %379 = and i32 %376, 4
  %380 = icmp ne i32 %379, 0
  %381 = and i1 %378, %380
  br i1 %381, label %382, label %393

; <label>:382                                     ; preds = %349
  %383 = extractvalue %dx.types.CBufRet.f32 %374, 3
  %384 = fmul fast float %383, %93
  %385 = extractvalue %dx.types.CBufRet.f32 %374, 2
  %386 = fmul fast float %385, %92
  %387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %45, float %386, float %384, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = fsub fast float 1.000000e+00, %388
  %390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %391 = extractvalue %dx.types.CBufRet.f32 %390, 0
  %392 = fcmp fast olt float %389, %391
  br label %396

; <label>:393                                     ; preds = %349
  %394 = icmp eq i32 %379, 0
  %395 = and i1 %378, %394
  br label %396

; <label>:396                                     ; preds = %393, %382
  %397 = phi i1 [ %392, %382 ], [ %395, %393 ]
  %398 = add i32 %49, 156
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = shl i32 %400, 4
  %402 = and i32 %401, 32752
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = lshr i32 %400, 7
  %405 = and i32 %404, 32752
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = lshr i32 %400, 22
  %408 = shl nuw nsw i32 %407, 5
  %409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %408)  ; LegacyF16ToF32(value)
  %410 = add i32 %49, 216
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 255
  %414 = uitofp i32 %413 to float
  %415 = fmul fast float %414, 0x3F70101020000000
  %416 = lshr i32 %412, 8
  %417 = and i32 %416, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F70101020000000
  %420 = lshr i32 %412, 16
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = add i32 %49, 36
  %425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %424, i32 undef)  ; BufferLoad(srv,index,wot)
  %426 = extractvalue %dx.types.ResRet.i32 %425, 0
  %427 = and i32 %426, 65535
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = lshr i32 %426, 16
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = add i32 %49, 288
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = and i32 %433, 65535
  %435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %434)  ; LegacyF16ToF32(value)
  %436 = lshr i32 %433, 16
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = fmul fast float %435, 0x3F50624DE0000000
  %439 = fmul fast float %437, 0x3F50624DE0000000
  %440 = add i32 %49, 172
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = shl i32 %442, 4
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = lshr i32 %442, 7
  %447 = and i32 %446, 32752
  %448 = call float @dx.op.legacyF16ToF32(i32 131, i32 %447)  ; LegacyF16ToF32(value)
  %449 = lshr i32 %442, 22
  %450 = shl nuw nsw i32 %449, 5
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = add i32 %49, 232
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = and i32 %454, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3F70101020000000
  %458 = lshr i32 %454, 8
  %459 = and i32 %458, 255
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = lshr i32 %454, 16
  %463 = and i32 %462, 255
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = add i32 %49, 52
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = and i32 %468, 65535
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %468, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = add i32 %49, 304
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %473, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = and i32 %475, 65535
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = lshr i32 %475, 16
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = fmul fast float %477, 0x3F50624DE0000000
  %481 = fmul fast float %479, 0x3F50624DE0000000
  %482 = add i32 %49, 188
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %482, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = shl i32 %484, 4
  %486 = and i32 %485, 32752
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = lshr i32 %484, 7
  %489 = and i32 %488, 32752
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %484, 22
  %492 = shl nuw nsw i32 %491, 5
  %493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %492)  ; LegacyF16ToF32(value)
  %494 = add i32 %49, 248
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 255
  %498 = uitofp i32 %497 to float
  %499 = fmul fast float %498, 0x3F70101020000000
  %500 = lshr i32 %496, 8
  %501 = and i32 %500, 255
  %502 = uitofp i32 %501 to float
  %503 = fmul fast float %502, 0x3F70101020000000
  %504 = lshr i32 %496, 16
  %505 = and i32 %504, 255
  %506 = uitofp i32 %505 to float
  %507 = fmul fast float %506, 0x3F70101020000000
  %508 = add i32 %49, 68
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = and i32 %510, 65535
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = lshr i32 %510, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = add i32 %49, 320
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %515, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = and i32 %517, 65535
  %519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %518)  ; LegacyF16ToF32(value)
  %520 = lshr i32 %517, 16
  %521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %520)  ; LegacyF16ToF32(value)
  %522 = fmul fast float %519, 0x3F50624DE0000000
  %523 = fmul fast float %521, 0x3F50624DE0000000
  %524 = add i32 %49, 204
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = shl i32 %526, 4
  %528 = and i32 %527, 32752
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = lshr i32 %526, 7
  %531 = and i32 %530, 32752
  %532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %531)  ; LegacyF16ToF32(value)
  %533 = lshr i32 %526, 22
  %534 = shl nuw nsw i32 %533, 5
  %535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %534)  ; LegacyF16ToF32(value)
  %536 = add i32 %49, 264
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = and i32 %538, 255
  %540 = uitofp i32 %539 to float
  %541 = fmul fast float %540, 0x3F70101020000000
  %542 = lshr i32 %538, 8
  %543 = and i32 %542, 255
  %544 = uitofp i32 %543 to float
  %545 = fmul fast float %544, 0x3F70101020000000
  %546 = lshr i32 %538, 16
  %547 = and i32 %546, 255
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %548, 0x3F70101020000000
  %550 = add i32 %49, 84
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %550, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = and i32 %552, 65535
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = lshr i32 %552, 16
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = add i32 %49, 336
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %557, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 65535
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = lshr i32 %559, 16
  %563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %562)  ; LegacyF16ToF32(value)
  %564 = fmul fast float %561, 0x3F50624DE0000000
  %565 = fmul fast float %563, 0x3F50624DE0000000
  %566 = add i32 %49, 348
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = and i32 %568, 32
  %570 = icmp eq i32 %569, 0
  %571 = and i32 %568, 64
  %572 = icmp eq i32 %571, 0
  %573 = and i32 %568, 128
  %574 = icmp eq i32 %573, 0
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 2
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %592, label %579

; <label>:579                                     ; preds = %396
  %580 = add i32 %49, 520
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = add i32 %582, 0
  %584 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %583, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %585 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %584, %dx.types.Handle %89, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %586 = extractvalue %dx.types.ResRet.f32 %585, 0
  %587 = extractvalue %dx.types.ResRet.f32 %585, 1
  %588 = extractvalue %dx.types.ResRet.f32 %585, 2
  %589 = fmul fast float %586, %67
  %590 = fmul fast float %587, %68
  %591 = fmul fast float %588, %69
  br label %592

; <label>:592                                     ; preds = %579, %396
  %593 = phi float [ %69, %396 ], [ %591, %579 ]
  %594 = phi float [ %68, %396 ], [ %590, %579 ]
  %595 = phi float [ %67, %396 ], [ %589, %579 ]
  %596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %597 = extractvalue %dx.types.ResRet.i32 %596, 0
  %598 = and i32 %597, 2
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %619, label %600

; <label>:600                                     ; preds = %592
  %601 = add i32 %49, 44
  %602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.i32 %602, 0
  %604 = and i32 %603, 1
  %605 = icmp ne i32 %604, 0
  %606 = select i1 %605, float %595, float 1.000000e+00
  %607 = add i32 %49, 60
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 1
  %611 = icmp ne i32 %610, 0
  %612 = select i1 %611, float %594, float 1.000000e+00
  %613 = add i32 %49, 76
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 1
  %617 = icmp ne i32 %616, 0
  %618 = select i1 %617, float %593, float 1.000000e+00
  br label %619

; <label>:619                                     ; preds = %600, %592
  %620 = phi float [ %593, %592 ], [ %618, %600 ]
  %621 = phi float [ %594, %592 ], [ %612, %600 ]
  %622 = phi float [ %595, %592 ], [ %606, %600 ]
  %623 = lshr i32 %597, 20
  %624 = and i32 %623, 3
  %625 = add nuw nsw i32 %624, 1
  %626 = add i32 %49, 24
  %627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %628 = extractvalue %dx.types.ResRet.i32 %627, 0
  %629 = add i32 %49, 28
  %630 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %629, i32 undef)  ; BufferLoad(srv,index,wot)
  %631 = extractvalue %dx.types.ResRet.i32 %630, 0
  %632 = or i32 %631, %628
  %633 = icmp eq i32 %632, 0
  br i1 %633, label %1121, label %634

; <label>:634                                     ; preds = %619
  %635 = and i32 %628, 262144
  %636 = icmp ne i32 %635, 0
  %637 = select i1 %636, float %52, float 1.000000e+00
  %638 = select i1 %636, float %53, float 0.000000e+00
  %639 = select i1 %636, float %54, float 0.000000e+00
  %640 = select i1 %636, float %55, float 1.000000e+00
  %641 = select i1 %636, float %56, float %65
  %642 = select i1 %636, float %57, float %66
  %643 = add i32 %49, 284
  %644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %645 = extractvalue %dx.types.ResRet.i32 %644, 0
  %646 = lshr i32 %645, 16
  %647 = call float @dx.op.legacyF16ToF32(i32 131, i32 %646)  ; LegacyF16ToF32(value)
  %648 = fmul fast float %647, 0x3F50624DE0000000
  %649 = add i32 %49, 88
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = lshr i32 %651, 16
  %653 = and i32 %652, 255
  %654 = lshr i32 %651, 24
  %655 = add i32 %49, 292
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %655, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 65535
  %659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %658)  ; LegacyF16ToF32(value)
  %660 = lshr i32 %657, 16
  %661 = call float @dx.op.legacyF16ToF32(i32 131, i32 %660)  ; LegacyF16ToF32(value)
  %662 = add i32 %49, 32
  %663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %662, i32 undef)  ; BufferLoad(srv,index,wot)
  %664 = extractvalue %dx.types.ResRet.i32 %663, 0
  %665 = lshr i32 %664, 22
  %666 = shl nuw nsw i32 %665, 5
  %667 = call float @dx.op.legacyF16ToF32(i32 131, i32 %666)  ; LegacyF16ToF32(value)
  %668 = shl i32 %664, 4
  %669 = and i32 %668, 32752
  %670 = call float @dx.op.legacyF16ToF32(i32 131, i32 %669)  ; LegacyF16ToF32(value)
  %671 = lshr i32 %664, 7
  %672 = and i32 %671, 32752
  %673 = call float @dx.op.legacyF16ToF32(i32 131, i32 %672)  ; LegacyF16ToF32(value)
  %674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %675 = extractvalue %dx.types.CBufRet.f32 %674, 3
  %676 = fmul fast float %675, 1.000000e+03
  %677 = fmul fast float %438, %676
  %678 = call float @dx.op.unary.f32(i32 22, float %677)  ; Frc(value)
  %679 = fadd fast float %678, %428
  %680 = fmul fast float %439, %676
  %681 = call float @dx.op.unary.f32(i32 22, float %680)  ; Frc(value)
  %682 = fadd fast float %681, %430
  %683 = fmul fast float %648, %676
  %684 = call float @dx.op.unary.f32(i32 22, float %683)  ; Frc(value)
  %685 = fmul fast float %684, 0x401921FB60000000
  %686 = fadd fast float %685, %667
  %687 = call float @dx.op.unary.f32(i32 13, float %686)  ; Sin(value)
  %688 = call float @dx.op.unary.f32(i32 12, float %686)  ; Cos(value)
  %689 = fsub fast float -0.000000e+00, %687
  %690 = fadd fast float %641, -5.000000e-01
  %691 = fadd fast float %642, -5.000000e-01
  %692 = fmul fast float %659, %690
  %693 = fmul fast float %661, %691
  %694 = fadd fast float %692, 5.000000e-01
  %695 = fadd fast float %693, 5.000000e-01
  %696 = fmul fast float %670, %694
  %697 = fmul fast float %673, %695
  %698 = fmul fast float %688, %696
  %699 = call float @dx.op.tertiary.f32(i32 46, float %689, float %697, float %698)  ; FMad(a,b,c)
  %700 = fmul fast float %687, %696
  %701 = call float @dx.op.tertiary.f32(i32 46, float %688, float %697, float %700)  ; FMad(a,b,c)
  %702 = fadd fast float %679, %699
  %703 = fadd fast float %682, %701
  %704 = icmp ugt i32 %653, 1
  %705 = icmp ugt i32 %651, 33554431
  %706 = or i1 %705, %704
  br i1 %706, label %707, label %732

; <label>:707                                     ; preds = %634
  %708 = add i32 %49, 228
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = lshr i32 %710, 16
  %712 = call float @dx.op.legacyF16ToF32(i32 131, i32 %711)  ; LegacyF16ToF32(value)
  %713 = fmul fast float %675, %712
  %714 = call float @dx.op.unary.f32(i32 22, float %713)  ; Frc(value)
  %715 = mul nuw nsw i32 %653, %654
  %716 = uitofp i32 %715 to float
  %717 = fmul fast float %714, %716
  %718 = call float @dx.op.unary.f32(i32 27, float %717)  ; Round_ni(value)
  %719 = fptoui float %718 to i32
  %720 = urem i32 %719, %653
  %721 = udiv i32 %719, %654
  %722 = call float @dx.op.unary.f32(i32 22, float %702)  ; Frc(value)
  %723 = call float @dx.op.unary.f32(i32 22, float %703)  ; Frc(value)
  %724 = uitofp i32 %720 to float
  %725 = uitofp i32 %721 to float
  %726 = fadd fast float %722, %724
  %727 = fadd fast float %723, %725
  %728 = uitofp i32 %653 to float
  %729 = uitofp i32 %654 to float
  %730 = fdiv fast float %726, %728
  %731 = fdiv fast float %727, %729
  br label %732

; <label>:732                                     ; preds = %707, %634
  %733 = phi float [ %730, %707 ], [ %702, %634 ]
  %734 = phi float [ %731, %707 ], [ %703, %634 ]
  %735 = and i32 %628, 16
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %933, label %737

; <label>:737                                     ; preds = %732
  %738 = add i32 %49, 408
  %739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %738, i32 undef)  ; BufferLoad(srv,index,wot)
  %740 = extractvalue %dx.types.ResRet.i32 %739, 0
  %741 = add i32 %740, 0
  %742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %741, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %743 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %742, %dx.types.Handle %88, float %733, float %734, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %744 = extractvalue %dx.types.ResRet.f32 %743, 0
  %745 = extractvalue %dx.types.ResRet.f32 %743, 1
  %746 = extractvalue %dx.types.ResRet.f32 %743, 2
  %747 = extractvalue %dx.types.ResRet.f32 %743, 3
  %748 = and i32 %651, 255
  %749 = uitofp i32 %748 to float
  %750 = lshr i32 %651, 8
  %751 = and i32 %750, 255
  %752 = uitofp i32 %751 to float
  %753 = fmul fast float %747, %749
  %754 = fadd fast float %753, %752
  %755 = fmul fast float %754, 0x3F70101000000000
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 512
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %768, label %760

; <label>:760                                     ; preds = %737
  %761 = add i32 %49, 488
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %763, 0
  %765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %765, %dx.types.Handle %89, float %733, float %734, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  br label %768

; <label>:768                                     ; preds = %760, %737
  %769 = phi float [ %767, %760 ], [ 1.000000e+00, %737 ]
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 33554432
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %880, label %774

; <label>:774                                     ; preds = %768
  %775 = add i32 %49, 224
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 65535
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = lshr i32 %777, 16
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = add i32 %49, 228
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 65535
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = lshr i32 %788, 24
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %790, 0x3F70101020000000
  %792 = and i32 %788, 255
  %793 = uitofp i32 %792 to float
  %794 = fmul fast float %793, 0x3F70101020000000
  %795 = lshr i32 %788, 8
  %796 = and i32 %795, 255
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F70101020000000
  %799 = lshr i32 %788, 16
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101020000000
  %803 = add i32 %49, 220
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = lshr i32 %805, 24
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101020000000
  %809 = and i32 %805, 255
  %810 = uitofp i32 %809 to float
  %811 = fmul fast float %810, 0x3F70101020000000
  %812 = lshr i32 %805, 8
  %813 = and i32 %812, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F70101020000000
  %816 = lshr i32 %805, 16
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = bitcast float %744 to i32
  %821 = ashr i32 %820, 1
  %822 = sub nsw i32 1597463174, %821
  %823 = bitcast i32 %822 to float
  %824 = fmul fast float %744, 5.000000e-01
  %825 = fmul fast float %823, %823
  %826 = fmul fast float %825, %824
  %827 = fsub fast float 1.500000e+00, %826
  %828 = fmul fast float %823, %744
  %829 = fmul fast float %828, %827
  %830 = bitcast float %745 to i32
  %831 = ashr i32 %830, 1
  %832 = sub nsw i32 1597463174, %831
  %833 = bitcast i32 %832 to float
  %834 = fmul fast float %745, 5.000000e-01
  %835 = fmul fast float %833, %833
  %836 = fmul fast float %835, %834
  %837 = fsub fast float 1.500000e+00, %836
  %838 = fmul fast float %833, %745
  %839 = fmul fast float %838, %837
  %840 = bitcast float %746 to i32
  %841 = ashr i32 %840, 1
  %842 = sub nsw i32 1597463174, %841
  %843 = bitcast i32 %842 to float
  %844 = fmul fast float %746, 5.000000e-01
  %845 = fmul fast float %843, %843
  %846 = fmul fast float %845, %844
  %847 = fsub fast float 1.500000e+00, %846
  %848 = fmul fast float %843, %746
  %849 = fmul fast float %848, %847
  %850 = fsub fast float %829, %811
  %851 = fsub fast float %839, %815
  %852 = fsub fast float %849, %819
  %853 = fmul fast float %850, %779
  %854 = fmul fast float %851, %781
  %855 = fmul fast float %852, %786
  %856 = fadd fast float %853, %794
  %857 = fadd fast float %854, %798
  %858 = fadd fast float %855, %802
  %859 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  %860 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %861 = call float @dx.op.unary.f32(i32 7, float %858)  ; Saturate(value)
  %862 = fmul fast float %859, %859
  %863 = fmul fast float %860, %860
  %864 = fmul fast float %861, %861
  %865 = fsub fast float %862, %744
  %866 = fsub fast float %863, %745
  %867 = fsub fast float %864, %746
  %868 = fmul fast float %865, %769
  %869 = fmul fast float %866, %769
  %870 = fmul fast float %867, %769
  %871 = fadd fast float %868, %744
  %872 = fadd fast float %869, %745
  %873 = fadd fast float %870, %746
  %874 = fadd fast float %791, %755
  %875 = fsub fast float %874, %808
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  %877 = fsub fast float %876, %755
  %878 = fmul fast float %877, %769
  %879 = fadd fast float %878, %755
  br label %933

; <label>:880                                     ; preds = %768
  %881 = and i32 %771, 134217728
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %917, label %883

; <label>:883                                     ; preds = %880
  %884 = call float @dx.op.unary.f32(i32 24, float %415)  ; Sqrt(value)
  %885 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %886 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %887 = fadd fast float %884, -5.000000e-01
  %888 = fadd fast float %885, -5.000000e-01
  %889 = fadd fast float %886, -5.000000e-01
  %890 = fmul fast float %887, %769
  %891 = fmul fast float %888, %769
  %892 = fmul fast float %889, %769
  %893 = fadd fast float %890, 5.000000e-01
  %894 = fadd fast float %891, 5.000000e-01
  %895 = fadd fast float %892, 5.000000e-01
  %896 = call float @dx.op.unary.f32(i32 24, float %744)  ; Sqrt(value)
  %897 = call float @dx.op.unary.f32(i32 24, float %745)  ; Sqrt(value)
  %898 = call float @dx.op.unary.f32(i32 24, float %746)  ; Sqrt(value)
  %899 = fmul fast float %893, 2.000000e+00
  %900 = fsub fast float 1.000000e+00, %899
  %901 = fmul fast float %900, %896
  %902 = fadd fast float %901, %899
  %903 = fmul fast float %902, %896
  %904 = fmul fast float %894, 2.000000e+00
  %905 = fsub fast float 1.000000e+00, %904
  %906 = fmul fast float %905, %897
  %907 = fadd fast float %906, %904
  %908 = fmul fast float %907, %897
  %909 = fmul fast float %895, 2.000000e+00
  %910 = fsub fast float 1.000000e+00, %909
  %911 = fmul fast float %910, %898
  %912 = fadd fast float %911, %909
  %913 = fmul fast float %912, %898
  %914 = fmul fast float %903, %903
  %915 = fmul fast float %908, %908
  %916 = fmul fast float %913, %913
  br label %933

; <label>:917                                     ; preds = %880
  %918 = fmul fast float %415, %415
  %919 = fmul fast float %419, %419
  %920 = fmul fast float %423, %423
  %921 = fadd fast float %918, -1.000000e+00
  %922 = fadd fast float %919, -1.000000e+00
  %923 = fadd fast float %920, -1.000000e+00
  %924 = fmul fast float %769, %921
  %925 = fmul fast float %769, %922
  %926 = fmul fast float %769, %923
  %927 = fadd fast float %924, 1.000000e+00
  %928 = fadd fast float %925, 1.000000e+00
  %929 = fadd fast float %926, 1.000000e+00
  %930 = fmul fast float %927, %744
  %931 = fmul fast float %928, %745
  %932 = fmul fast float %929, %746
  br label %933

; <label>:933                                     ; preds = %917, %883, %774, %732
  %934 = phi float [ %879, %774 ], [ %755, %883 ], [ %755, %917 ], [ 0x3FA23C0BE0000000, %732 ]
  %935 = phi float [ %871, %774 ], [ %914, %883 ], [ %930, %917 ], [ 1.000000e+00, %732 ]
  %936 = phi float [ %872, %774 ], [ %915, %883 ], [ %931, %917 ], [ 1.000000e+00, %732 ]
  %937 = phi float [ %873, %774 ], [ %916, %883 ], [ %932, %917 ], [ 1.000000e+00, %732 ]
  %938 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %939 = extractvalue %dx.types.CBufRet.i32 %938, 1
  %940 = and i32 %939, 1
  %941 = icmp ne i32 %940, 0
  %942 = add i32 %49, 356
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = and i32 %944, 32
  %946 = icmp ne i32 %945, 0
  %947 = and i1 %941, %946
  %948 = select i1 %947, float 1.000000e+00, float %935
  %949 = select i1 %947, float 0x3FD3333340000000, float %936
  %950 = select i1 %947, float 0x3FD3333340000000, float %937
  %951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %952 = extractvalue %dx.types.ResRet.i32 %951, 0
  %953 = and i32 %952, 32
  %954 = icmp eq i32 %953, 0
  br i1 %954, label %1027, label %955

; <label>:955                                     ; preds = %933
  %956 = add i32 %49, 92
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = add i32 %49, 424
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = add i32 %961, 0
  %963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %963, %dx.types.Handle %88, float %733, float %734, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = extractvalue %dx.types.ResRet.f32 %964, 1
  %967 = extractvalue %dx.types.ResRet.f32 %964, 2
  %968 = extractvalue %dx.types.ResRet.f32 %964, 3
  %969 = and i32 %958, 255
  %970 = uitofp i32 %969 to float
  %971 = lshr i32 %958, 8
  %972 = and i32 %971, 255
  %973 = uitofp i32 %972 to float
  %974 = lshr i32 %958, 16
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = fmul fast float %976, 0x3F70101000000000
  %978 = fmul fast float %965, %970
  %979 = fadd fast float %978, %973
  %980 = fmul fast float %979, 0x3F70101000000000
  %981 = fadd fast float %966, -5.000000e-01
  %982 = fadd fast float %968, -5.000000e-01
  %983 = fmul fast float %981, %977
  %984 = fmul fast float %982, %977
  %985 = fadd fast float %983, 5.000000e-01
  %986 = fadd fast float %984, 5.000000e-01
  %987 = fmul fast float %985, 2.000000e+00
  %988 = fadd fast float %987, -1.000000e+00
  %989 = fmul fast float %986, 2.000000e+00
  %990 = fadd fast float %989, -1.000000e+00
  %991 = fadd fast float %988, %990
  %992 = fmul fast float %991, 5.000000e-01
  %993 = fsub fast float %988, %990
  %994 = fmul fast float %993, 5.000000e-01
  %995 = call float @dx.op.unary.f32(i32 6, float %992)  ; FAbs(value)
  %996 = fsub fast float 1.000000e+00, %995
  %997 = call float @dx.op.unary.f32(i32 6, float %994)  ; FAbs(value)
  %998 = fsub fast float %996, %997
  %999 = call float @dx.op.dot3.f32(i32 55, float %992, float %994, float %998, float %992, float %994, float %998)  ; Dot3(ax,ay,az,bx,by,bz)
  %1000 = call float @dx.op.unary.f32(i32 25, float %999)  ; Rsqrt(value)
  %1001 = fmul fast float %992, %1000
  %1002 = fmul fast float %994, %1000
  %1003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.i32 %1003, 0
  %1005 = and i32 %1004, 67108864
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1023, label %1007

; <label>:1007                                    ; preds = %955
  %1008 = add i32 %49, 280
  %1009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1008, i32 undef)  ; BufferLoad(srv,index,wot)
  %1010 = extractvalue %dx.types.ResRet.i32 %1009, 0
  %1011 = and i32 %1010, 65535
  %1012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1011)  ; LegacyF16ToF32(value)
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %643, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 65535
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = lshr i32 %1010, 16
  %1018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1017)  ; LegacyF16ToF32(value)
  %1019 = fsub fast float %980, %1018
  %1020 = fmul fast float %1019, %1012
  %1021 = fadd fast float %1020, %1016
  %1022 = call float @dx.op.unary.f32(i32 7, float %1021)  ; Saturate(value)
  br label %1023

; <label>:1023                                    ; preds = %1007, %955
  %1024 = phi float [ %1022, %1007 ], [ %980, %955 ]
  %1025 = call float @dx.op.dot2.f32(i32 54, float %1001, float %1002, float %637, float %638)  ; Dot2(ax,ay,bx,by)
  %1026 = call float @dx.op.dot2.f32(i32 54, float %1001, float %1002, float %639, float %640)  ; Dot2(ax,ay,bx,by)
  br label %1027

; <label>:1027                                    ; preds = %1023, %933
  %1028 = phi float [ %1024, %1023 ], [ 0x3FD6666660000000, %933 ]
  %1029 = phi float [ %1025, %1023 ], [ 0.000000e+00, %933 ]
  %1030 = phi float [ %1026, %1023 ], [ 0.000000e+00, %933 ]
  %1031 = phi float [ %967, %1023 ], [ 1.000000e+00, %933 ]
  %1032 = add i32 %49, 160
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = lshr i32 %1034, 22
  %1036 = shl nuw nsw i32 %1035, 5
  %1037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1036)  ; LegacyF16ToF32(value)
  %1038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1039 = extractvalue %dx.types.ResRet.i32 %1038, 0
  %1040 = and i32 %1039, 64
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1075, label %1042

; <label>:1042                                    ; preds = %1027
  %1043 = add i32 %49, 440
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %1045, 0
  %1047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = and i32 %1049, 131072
  %1051 = icmp eq i32 %1050, 0
  %1052 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1047, %dx.types.Handle %88, float %733, float %734, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = fmul fast float %1053, %403
  %1057 = fmul fast float %1054, %406
  %1058 = fmul fast float %1055, %409
  br i1 %1051, label %1065, label %1059

; <label>:1059                                    ; preds = %1042
  %1060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1061 = extractvalue %dx.types.CBufRet.f32 %1060, 0
  %1062 = fmul fast float %1061, %1056
  %1063 = fmul fast float %1061, %1057
  %1064 = fmul fast float %1061, %1058
  br label %1065

; <label>:1065                                    ; preds = %1059, %1042
  %1066 = phi float [ %1062, %1059 ], [ %1056, %1042 ]
  %1067 = phi float [ %1063, %1059 ], [ %1057, %1042 ]
  %1068 = phi float [ %1064, %1059 ], [ %1058, %1042 ]
  %1069 = fmul fast float %1066, %1037
  %1070 = select i1 %397, float %1069, float %1066
  %1071 = call float @dx.op.dot3.f32(i32 55, float %1070, float %1067, float %1068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1072 = select i1 %397, float 0.000000e+00, float %1066
  %1073 = select i1 %397, float %1071, float %1067
  %1074 = select i1 %397, float 0.000000e+00, float %1068
  br label %1075

; <label>:1075                                    ; preds = %1065, %1027
  %1076 = phi float [ %1072, %1065 ], [ 0.000000e+00, %1027 ]
  %1077 = phi float [ %1073, %1065 ], [ 0.000000e+00, %1027 ]
  %1078 = phi float [ %1074, %1065 ], [ 0.000000e+00, %1027 ]
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 26624
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1106, label %1083

; <label>:1083                                    ; preds = %1075
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %626, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = and i32 %1085, 16384
  %1087 = icmp eq i32 %1086, 0
  br i1 %1087, label %1106, label %1088

; <label>:1088                                    ; preds = %1083
  %1089 = and i32 %1085, 1048576
  %1090 = icmp ne i32 %1089, 0
  %1091 = add i32 %49, 504
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = add i32 %1093, 0
  %1095 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1094, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1096 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1095, %dx.types.Handle %89, float %733, float %734, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1097 = extractvalue %dx.types.ResRet.f32 %1096, 0
  %1098 = add i32 %49, 96
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = lshr i32 %1100, 24
  %1102 = uitofp i32 %1101 to float
  %1103 = fmul fast float %1097, 0x3F70101020000000
  %1104 = select i1 %1090, float 0x3F70101020000000, float %1103
  %1105 = fmul fast float %1104, %1102
  br label %1106

; <label>:1106                                    ; preds = %1088, %1083, %1075
  %1107 = phi float [ %1105, %1088 ], [ 0.000000e+00, %1083 ], [ 0.000000e+00, %1075 ]
  %1108 = add i32 %49, 96
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = lshr i32 %1110, 8
  %1114 = and i32 %1113, 255
  %1115 = uitofp i32 %1114 to float
  %1116 = call float @dx.op.dot3.f32(i32 55, float %948, float %949, float %950, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = fmul fast float %1115, %1116
  %1118 = fadd fast float %1117, %1112
  %1119 = fmul fast float %1118, 0x3F70101020000000
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  br label %1121

; <label>:1121                                    ; preds = %1106, %619
  %1122 = phi float [ 0.000000e+00, %619 ], [ %1029, %1106 ]
  %1123 = phi float [ 0.000000e+00, %619 ], [ %1030, %1106 ]
  %1124 = phi float [ 0.000000e+00, %619 ], [ %948, %1106 ]
  %1125 = phi float [ 0.000000e+00, %619 ], [ %949, %1106 ]
  %1126 = phi float [ 0.000000e+00, %619 ], [ %950, %1106 ]
  %1127 = phi float [ 0.000000e+00, %619 ], [ %1076, %1106 ]
  %1128 = phi float [ 0.000000e+00, %619 ], [ %1077, %1106 ]
  %1129 = phi float [ 0.000000e+00, %619 ], [ %1078, %1106 ]
  %1130 = phi float [ 0.000000e+00, %619 ], [ %934, %1106 ]
  %1131 = phi float [ 0.000000e+00, %619 ], [ 1.000000e+00, %1106 ]
  %1132 = phi float [ 0.000000e+00, %619 ], [ %1028, %1106 ]
  %1133 = phi float [ 0.000000e+00, %619 ], [ %1031, %1106 ]
  %1134 = phi float [ 0.000000e+00, %619 ], [ %1107, %1106 ]
  %1135 = phi float [ 0.000000e+00, %619 ], [ %1120, %1106 ]
  br i1 %570, label %2016, label %1136

; <label>:1136                                    ; preds = %1121
  %1137 = icmp ult i32 %625, 2
  %1138 = add i32 %49, 40
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = add i32 %49, 44
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = or i32 %1143, %1140
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %2016, label %1146

; <label>:1146                                    ; preds = %1136
  %1147 = and i32 %1140, 262144
  %1148 = icmp ne i32 %1147, 0
  %1149 = select i1 %1148, float %52, float 1.000000e+00
  %1150 = select i1 %1148, float %53, float 0.000000e+00
  %1151 = select i1 %1148, float %54, float 0.000000e+00
  %1152 = select i1 %1148, float %55, float 1.000000e+00
  %1153 = select i1 %1148, float %56, float %65
  %1154 = select i1 %1148, float %57, float %66
  %1155 = add i32 %49, 300
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = lshr i32 %1157, 16
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = fmul fast float %1159, 0x3F50624DE0000000
  %1161 = add i32 %49, 104
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 16
  %1165 = and i32 %1164, 255
  %1166 = lshr i32 %1163, 24
  %1167 = add i32 %49, 308
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 65535
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = lshr i32 %1169, 16
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = add i32 %49, 48
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = lshr i32 %1176, 22
  %1178 = shl nuw nsw i32 %1177, 5
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = shl i32 %1176, 4
  %1181 = and i32 %1180, 32752
  %1182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1181)  ; LegacyF16ToF32(value)
  %1183 = lshr i32 %1176, 7
  %1184 = and i32 %1183, 32752
  %1185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1184)  ; LegacyF16ToF32(value)
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 3
  %1188 = fmul fast float %1187, 1.000000e+03
  %1189 = fmul fast float %480, %1188
  %1190 = call float @dx.op.unary.f32(i32 22, float %1189)  ; Frc(value)
  %1191 = fadd fast float %1190, %470
  %1192 = fmul fast float %481, %1188
  %1193 = call float @dx.op.unary.f32(i32 22, float %1192)  ; Frc(value)
  %1194 = fadd fast float %1193, %472
  %1195 = fmul fast float %1160, %1188
  %1196 = call float @dx.op.unary.f32(i32 22, float %1195)  ; Frc(value)
  %1197 = fmul fast float %1196, 0x401921FB60000000
  %1198 = fadd fast float %1197, %1179
  %1199 = call float @dx.op.unary.f32(i32 13, float %1198)  ; Sin(value)
  %1200 = call float @dx.op.unary.f32(i32 12, float %1198)  ; Cos(value)
  %1201 = fsub fast float -0.000000e+00, %1199
  %1202 = fadd fast float %1153, -5.000000e-01
  %1203 = fadd fast float %1154, -5.000000e-01
  %1204 = fmul fast float %1171, %1202
  %1205 = fmul fast float %1173, %1203
  %1206 = fadd fast float %1204, 5.000000e-01
  %1207 = fadd fast float %1205, 5.000000e-01
  %1208 = fmul fast float %1182, %1206
  %1209 = fmul fast float %1185, %1207
  %1210 = fmul fast float %1200, %1208
  %1211 = call float @dx.op.tertiary.f32(i32 46, float %1201, float %1209, float %1210)  ; FMad(a,b,c)
  %1212 = fmul fast float %1199, %1208
  %1213 = call float @dx.op.tertiary.f32(i32 46, float %1200, float %1209, float %1212)  ; FMad(a,b,c)
  %1214 = fadd fast float %1191, %1211
  %1215 = fadd fast float %1194, %1213
  %1216 = icmp ugt i32 %1165, 1
  %1217 = icmp ugt i32 %1163, 33554431
  %1218 = or i1 %1217, %1216
  br i1 %1218, label %1219, label %1244

; <label>:1219                                    ; preds = %1146
  %1220 = add i32 %49, 244
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = lshr i32 %1222, 16
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = fmul fast float %1187, %1224
  %1226 = call float @dx.op.unary.f32(i32 22, float %1225)  ; Frc(value)
  %1227 = mul nuw nsw i32 %1165, %1166
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1226, %1228
  %1230 = call float @dx.op.unary.f32(i32 27, float %1229)  ; Round_ni(value)
  %1231 = fptoui float %1230 to i32
  %1232 = urem i32 %1231, %1165
  %1233 = udiv i32 %1231, %1166
  %1234 = call float @dx.op.unary.f32(i32 22, float %1214)  ; Frc(value)
  %1235 = call float @dx.op.unary.f32(i32 22, float %1215)  ; Frc(value)
  %1236 = uitofp i32 %1232 to float
  %1237 = uitofp i32 %1233 to float
  %1238 = fadd fast float %1234, %1236
  %1239 = fadd fast float %1235, %1237
  %1240 = uitofp i32 %1165 to float
  %1241 = uitofp i32 %1166 to float
  %1242 = fdiv fast float %1238, %1240
  %1243 = fdiv fast float %1239, %1241
  br label %1244

; <label>:1244                                    ; preds = %1219, %1146
  %1245 = phi float [ %1242, %1219 ], [ %1214, %1146 ]
  %1246 = phi float [ %1243, %1219 ], [ %1215, %1146 ]
  %1247 = and i32 %1140, 16777216
  %1248 = icmp eq i32 %1247, 0
  br i1 %1248, label %1358, label %1249

; <label>:1249                                    ; preds = %1244
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.CBufRet.f32 %1250, 2
  %1254 = fadd fast float %1251, %147
  %1255 = fadd fast float %1252, %148
  %1256 = fadd fast float %1253, %149
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = icmp eq i32 %50, 65535
  br i1 %1260, label %1355, label %1261

; <label>:1261                                    ; preds = %1249
  %1262 = lshr i32 %50, 1
  %1263 = shl i32 %1262, 2
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %50, 1
  %1267 = icmp ne i32 %1266, 0
  %1268 = lshr i32 %1265, 16
  %1269 = and i32 %1265, 65535
  %1270 = select i1 %1267, i32 %1268, i32 %1269
  %1271 = icmp eq i32 %1270, 65535
  br i1 %1271, label %1351, label %1272

; <label>:1272                                    ; preds = %1261
  %1273 = mul nuw nsw i32 %1270, 40
  %1274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = add nuw nsw i32 %1273, 12
  %1279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = add nuw nsw i32 %1273, 24
  %1284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = add nuw nsw i32 %1273, 36
  %1289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.f32 %1289, 0
  %1291 = fsub fast float %1254, %1275
  %1292 = fsub fast float %1255, %1276
  %1293 = fsub fast float %1256, %1277
  %1294 = fmul fast float %1290, %1291
  %1295 = fmul fast float %1290, %1292
  %1296 = fmul fast float %1290, %1293
  %1297 = call float @dx.op.unary.f32(i32 27, float %1294)  ; Round_ni(value)
  %1298 = call float @dx.op.unary.f32(i32 27, float %1295)  ; Round_ni(value)
  %1299 = call float @dx.op.unary.f32(i32 27, float %1296)  ; Round_ni(value)
  %1300 = fadd fast float %1297, 5.000000e-01
  %1301 = fadd fast float %1298, 5.000000e-01
  %1302 = fadd fast float %1299, 5.000000e-01
  %1303 = fmul fast float %1300, %1280
  %1304 = fmul fast float %1301, %1281
  %1305 = fmul fast float %1302, %1282
  %1306 = shl i32 %50, 2
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = add i32 %1308, 0
  %1310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1311 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1312 = call float @dx.op.unary.f32(i32 22, float %1304)  ; Frc(value)
  %1313 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1310, %dx.types.Handle %46, float %1311, float %1312, float %1313, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1315 = extractvalue %dx.types.ResRet.f32 %1314, 0
  %1316 = extractvalue %dx.types.ResRet.f32 %1314, 1
  %1317 = extractvalue %dx.types.ResRet.f32 %1314, 2
  %1318 = fmul fast float %1315, 1.023000e+03
  %1319 = fmul fast float %1316, 1.023000e+03
  %1320 = fmul fast float %1317, 1.023000e+03
  %1321 = fadd fast float %1318, 5.000000e-01
  %1322 = fadd fast float %1319, 5.000000e-01
  %1323 = fadd fast float %1320, 5.000000e-01
  %1324 = call float @dx.op.unary.f32(i32 27, float %1321)  ; Round_ni(value)
  %1325 = call float @dx.op.unary.f32(i32 27, float %1322)  ; Round_ni(value)
  %1326 = call float @dx.op.unary.f32(i32 27, float %1323)  ; Round_ni(value)
  %1327 = fsub fast float %1294, %1297
  %1328 = fsub fast float %1295, %1298
  %1329 = fsub fast float %1296, %1299
  %1330 = fmul fast float %1327, 7.500000e-01
  %1331 = fmul fast float %1328, 7.500000e-01
  %1332 = fmul fast float %1329, 7.500000e-01
  %1333 = fadd fast float %1297, 1.250000e-01
  %1334 = fadd fast float %1333, %1330
  %1335 = fadd fast float %1334, %1324
  %1336 = fadd fast float %1298, 1.250000e-01
  %1337 = fadd fast float %1336, %1331
  %1338 = fadd fast float %1337, %1325
  %1339 = fadd fast float %1299, 1.250000e-01
  %1340 = fadd fast float %1339, %1332
  %1341 = fadd fast float %1340, %1326
  %1342 = fmul fast float %1335, %1285
  %1343 = fmul fast float %1338, %1286
  %1344 = fmul fast float %1341, %1287
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %1346, 0
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1348, %dx.types.Handle %44, float %1342, float %1343, float %1344, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  br label %1351

; <label>:1351                                    ; preds = %1272, %1261
  %1352 = phi float [ %1350, %1272 ], [ -1.000000e+00, %1261 ]
  %1353 = fadd fast float %1352, %1259
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  br label %1355

; <label>:1355                                    ; preds = %1351, %1249
  %1356 = phi float [ %1354, %1351 ], [ %1259, %1249 ]
  %1357 = fmul fast float %1356, %622
  br label %1358

; <label>:1358                                    ; preds = %1355, %1244
  %1359 = phi float [ %1357, %1355 ], [ %622, %1244 ]
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 256
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1410, label %1364

; <label>:1364                                    ; preds = %1358
  %1365 = add i32 %49, 476
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %1367, 0
  %1369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1369, %dx.types.Handle %89, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = add i32 %49, 116
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.i32 %1373, 0
  %1375 = shl i32 %1374, 4
  %1376 = and i32 %1375, 32752
  %1377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1376)  ; LegacyF16ToF32(value)
  %1378 = lshr i32 %1374, 7
  %1379 = and i32 %1378, 32752
  %1380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1379)  ; LegacyF16ToF32(value)
  %1381 = fsub fast float 1.000000e+00, %1359
  %1382 = call float @dx.op.binary.f32(i32 35, float %1381, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1383 = bitcast float %1359 to i32
  %1384 = sitofp i32 %1383 to float
  %1385 = fadd fast float %1384, 0xC1CFBF8940000000
  %1386 = fmul fast float %1380, %1385
  %1387 = fadd fast float %1386, 0x41CFBF8940000000
  %1388 = fptosi float %1387 to i32
  %1389 = bitcast i32 %1388 to float
  %1390 = bitcast float %1382 to i32
  %1391 = sitofp i32 %1390 to float
  %1392 = fadd fast float %1391, 0xC1CFBF8940000000
  %1393 = fmul fast float %1392, %1380
  %1394 = fadd fast float %1393, 0x41CFBF8940000000
  %1395 = fptosi float %1394 to i32
  %1396 = bitcast i32 %1395 to float
  %1397 = fmul fast float %1389, %1377
  %1398 = fmul fast float %1396, %1377
  %1399 = fsub fast float %1382, %1397
  %1400 = fadd fast float %1398, %1382
  %1401 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1402 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1403 = fsub fast float %1371, %1401
  %1404 = fsub fast float %1402, %1401
  %1405 = bitcast float %1404 to i32
  %1406 = sub nsw i32 2129859010, %1405
  %1407 = bitcast i32 %1406 to float
  %1408 = fmul fast float %1407, %1403
  %1409 = call float @dx.op.unary.f32(i32 7, float %1408)  ; Saturate(value)
  br label %1410

; <label>:1410                                    ; preds = %1364, %1358
  %1411 = phi float [ %1409, %1364 ], [ %1359, %1358 ]
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = and i32 %1413, 128
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1432, label %1416

; <label>:1416                                    ; preds = %1410
  %1417 = add i32 %49, 460
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = add i32 %1419, 0
  %1421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1421, %dx.types.Handle %89, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.i32 %1424, 0
  %1426 = and i32 %1425, 524288
  %1427 = icmp ne i32 %1426, 0
  %1428 = fcmp fast ogt float %1423, 0x3FE0101020000000
  %1429 = select i1 %1428, float 1.000000e+00, float 0.000000e+00
  %1430 = select i1 %1427, float %1429, float %1423
  %1431 = fmul fast float %1430, %1411
  br label %1432

; <label>:1432                                    ; preds = %1416, %1410
  %1433 = phi float [ %1431, %1416 ], [ %1411, %1410 ]
  %1434 = fcmp fast ult float %1433, 0x3F70101020000000
  br i1 %1434, label %2016, label %1435

; <label>:1435                                    ; preds = %1432
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 16
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1638, label %1440

; <label>:1440                                    ; preds = %1435
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %49, 412
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = add i32 %1445, 0
  %1447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1447, %dx.types.Handle %88, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1449 = extractvalue %dx.types.ResRet.f32 %1448, 0
  %1450 = extractvalue %dx.types.ResRet.f32 %1448, 1
  %1451 = extractvalue %dx.types.ResRet.f32 %1448, 2
  %1452 = extractvalue %dx.types.ResRet.f32 %1448, 3
  %1453 = and i32 %1442, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = lshr i32 %1442, 8
  %1456 = and i32 %1455, 255
  %1457 = uitofp i32 %1456 to float
  %1458 = fmul fast float %1452, %1454
  %1459 = fadd fast float %1458, %1457
  %1460 = fmul fast float %1459, 0x3F70101000000000
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 512
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1473, label %1465

; <label>:1465                                    ; preds = %1440
  %1466 = add i32 %49, 492
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %89, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  br label %1473

; <label>:1473                                    ; preds = %1465, %1440
  %1474 = phi float [ %1472, %1465 ], [ 1.000000e+00, %1440 ]
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 33554432
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1585, label %1479

; <label>:1479                                    ; preds = %1473
  %1480 = add i32 %49, 240
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 65535
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = lshr i32 %1482, 16
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = add i32 %49, 244
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 65535
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = lshr i32 %1493, 24
  %1495 = uitofp i32 %1494 to float
  %1496 = fmul fast float %1495, 0x3F70101020000000
  %1497 = and i32 %1493, 255
  %1498 = uitofp i32 %1497 to float
  %1499 = fmul fast float %1498, 0x3F70101020000000
  %1500 = lshr i32 %1493, 8
  %1501 = and i32 %1500, 255
  %1502 = uitofp i32 %1501 to float
  %1503 = fmul fast float %1502, 0x3F70101020000000
  %1504 = lshr i32 %1493, 16
  %1505 = and i32 %1504, 255
  %1506 = uitofp i32 %1505 to float
  %1507 = fmul fast float %1506, 0x3F70101020000000
  %1508 = add i32 %49, 236
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = lshr i32 %1510, 24
  %1512 = uitofp i32 %1511 to float
  %1513 = fmul fast float %1512, 0x3F70101020000000
  %1514 = and i32 %1510, 255
  %1515 = uitofp i32 %1514 to float
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = lshr i32 %1510, 8
  %1518 = and i32 %1517, 255
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101020000000
  %1521 = lshr i32 %1510, 16
  %1522 = and i32 %1521, 255
  %1523 = uitofp i32 %1522 to float
  %1524 = fmul fast float %1523, 0x3F70101020000000
  %1525 = bitcast float %1449 to i32
  %1526 = ashr i32 %1525, 1
  %1527 = sub nsw i32 1597463174, %1526
  %1528 = bitcast i32 %1527 to float
  %1529 = fmul fast float %1449, 5.000000e-01
  %1530 = fmul fast float %1528, %1528
  %1531 = fmul fast float %1530, %1529
  %1532 = fsub fast float 1.500000e+00, %1531
  %1533 = fmul fast float %1528, %1449
  %1534 = fmul fast float %1533, %1532
  %1535 = bitcast float %1450 to i32
  %1536 = ashr i32 %1535, 1
  %1537 = sub nsw i32 1597463174, %1536
  %1538 = bitcast i32 %1537 to float
  %1539 = fmul fast float %1450, 5.000000e-01
  %1540 = fmul fast float %1538, %1538
  %1541 = fmul fast float %1540, %1539
  %1542 = fsub fast float 1.500000e+00, %1541
  %1543 = fmul fast float %1538, %1450
  %1544 = fmul fast float %1543, %1542
  %1545 = bitcast float %1451 to i32
  %1546 = ashr i32 %1545, 1
  %1547 = sub nsw i32 1597463174, %1546
  %1548 = bitcast i32 %1547 to float
  %1549 = fmul fast float %1451, 5.000000e-01
  %1550 = fmul fast float %1548, %1548
  %1551 = fmul fast float %1550, %1549
  %1552 = fsub fast float 1.500000e+00, %1551
  %1553 = fmul fast float %1548, %1451
  %1554 = fmul fast float %1553, %1552
  %1555 = fsub fast float %1534, %1516
  %1556 = fsub fast float %1544, %1520
  %1557 = fsub fast float %1554, %1524
  %1558 = fmul fast float %1555, %1484
  %1559 = fmul fast float %1556, %1486
  %1560 = fmul fast float %1557, %1491
  %1561 = fadd fast float %1558, %1499
  %1562 = fadd fast float %1559, %1503
  %1563 = fadd fast float %1560, %1507
  %1564 = call float @dx.op.unary.f32(i32 7, float %1561)  ; Saturate(value)
  %1565 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1566 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1567 = fmul fast float %1564, %1564
  %1568 = fmul fast float %1565, %1565
  %1569 = fmul fast float %1566, %1566
  %1570 = fsub fast float %1567, %1449
  %1571 = fsub fast float %1568, %1450
  %1572 = fsub fast float %1569, %1451
  %1573 = fmul fast float %1570, %1474
  %1574 = fmul fast float %1571, %1474
  %1575 = fmul fast float %1572, %1474
  %1576 = fadd fast float %1573, %1449
  %1577 = fadd fast float %1574, %1450
  %1578 = fadd fast float %1575, %1451
  %1579 = fadd fast float %1496, %1460
  %1580 = fsub fast float %1579, %1513
  %1581 = call float @dx.op.unary.f32(i32 7, float %1580)  ; Saturate(value)
  %1582 = fsub fast float %1581, %1460
  %1583 = fmul fast float %1582, %1474
  %1584 = fadd fast float %1583, %1460
  br label %1638

; <label>:1585                                    ; preds = %1473
  %1586 = and i32 %1476, 134217728
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1622, label %1588

; <label>:1588                                    ; preds = %1585
  %1589 = call float @dx.op.unary.f32(i32 24, float %457)  ; Sqrt(value)
  %1590 = call float @dx.op.unary.f32(i32 24, float %461)  ; Sqrt(value)
  %1591 = call float @dx.op.unary.f32(i32 24, float %465)  ; Sqrt(value)
  %1592 = fadd fast float %1589, -5.000000e-01
  %1593 = fadd fast float %1590, -5.000000e-01
  %1594 = fadd fast float %1591, -5.000000e-01
  %1595 = fmul fast float %1592, %1474
  %1596 = fmul fast float %1593, %1474
  %1597 = fmul fast float %1594, %1474
  %1598 = fadd fast float %1595, 5.000000e-01
  %1599 = fadd fast float %1596, 5.000000e-01
  %1600 = fadd fast float %1597, 5.000000e-01
  %1601 = call float @dx.op.unary.f32(i32 24, float %1449)  ; Sqrt(value)
  %1602 = call float @dx.op.unary.f32(i32 24, float %1450)  ; Sqrt(value)
  %1603 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1604 = fmul fast float %1598, 2.000000e+00
  %1605 = fsub fast float 1.000000e+00, %1604
  %1606 = fmul fast float %1605, %1601
  %1607 = fadd fast float %1606, %1604
  %1608 = fmul fast float %1607, %1601
  %1609 = fmul fast float %1599, 2.000000e+00
  %1610 = fsub fast float 1.000000e+00, %1609
  %1611 = fmul fast float %1610, %1602
  %1612 = fadd fast float %1611, %1609
  %1613 = fmul fast float %1612, %1602
  %1614 = fmul fast float %1600, 2.000000e+00
  %1615 = fsub fast float 1.000000e+00, %1614
  %1616 = fmul fast float %1615, %1603
  %1617 = fadd fast float %1616, %1614
  %1618 = fmul fast float %1617, %1603
  %1619 = fmul fast float %1608, %1608
  %1620 = fmul fast float %1613, %1613
  %1621 = fmul fast float %1618, %1618
  br label %1638

; <label>:1622                                    ; preds = %1585
  %1623 = fmul fast float %457, %457
  %1624 = fmul fast float %461, %461
  %1625 = fmul fast float %465, %465
  %1626 = fadd fast float %1623, -1.000000e+00
  %1627 = fadd fast float %1624, -1.000000e+00
  %1628 = fadd fast float %1625, -1.000000e+00
  %1629 = fmul fast float %1474, %1626
  %1630 = fmul fast float %1474, %1627
  %1631 = fmul fast float %1474, %1628
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fadd fast float %1630, 1.000000e+00
  %1634 = fadd fast float %1631, 1.000000e+00
  %1635 = fmul fast float %1632, %1449
  %1636 = fmul fast float %1633, %1450
  %1637 = fmul fast float %1634, %1451
  br label %1638

; <label>:1638                                    ; preds = %1622, %1588, %1479, %1435
  %1639 = phi float [ %1584, %1479 ], [ %1460, %1588 ], [ %1460, %1622 ], [ 0x3FA23C0BE0000000, %1435 ]
  %1640 = phi float [ %1576, %1479 ], [ %1619, %1588 ], [ %1635, %1622 ], [ 1.000000e+00, %1435 ]
  %1641 = phi float [ %1577, %1479 ], [ %1620, %1588 ], [ %1636, %1622 ], [ 1.000000e+00, %1435 ]
  %1642 = phi float [ %1578, %1479 ], [ %1621, %1588 ], [ %1637, %1622 ], [ 1.000000e+00, %1435 ]
  %1643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.i32 %1643, 1
  %1645 = and i32 %1644, 1
  %1646 = icmp ne i32 %1645, 0
  %1647 = add i32 %49, 356
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = and i32 %1649, 32
  %1651 = icmp ne i32 %1650, 0
  %1652 = and i1 %1646, %1651
  %1653 = select i1 %1652, float 1.000000e+00, float %1640
  %1654 = select i1 %1652, float 0x3FD3333340000000, float %1641
  %1655 = select i1 %1652, float 0x3FD3333340000000, float %1642
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 32
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1732, label %1660

; <label>:1660                                    ; preds = %1638
  %1661 = add i32 %49, 108
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = add i32 %49, 428
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = add i32 %1666, 0
  %1668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1668, %dx.types.Handle %88, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1670 = extractvalue %dx.types.ResRet.f32 %1669, 0
  %1671 = extractvalue %dx.types.ResRet.f32 %1669, 1
  %1672 = extractvalue %dx.types.ResRet.f32 %1669, 2
  %1673 = extractvalue %dx.types.ResRet.f32 %1669, 3
  %1674 = and i32 %1663, 255
  %1675 = uitofp i32 %1674 to float
  %1676 = lshr i32 %1663, 8
  %1677 = and i32 %1676, 255
  %1678 = uitofp i32 %1677 to float
  %1679 = lshr i32 %1663, 16
  %1680 = and i32 %1679, 255
  %1681 = uitofp i32 %1680 to float
  %1682 = fmul fast float %1681, 0x3F70101000000000
  %1683 = fmul fast float %1670, %1675
  %1684 = fadd fast float %1683, %1678
  %1685 = fmul fast float %1684, 0x3F70101000000000
  %1686 = fadd fast float %1671, -5.000000e-01
  %1687 = fadd fast float %1673, -5.000000e-01
  %1688 = fmul fast float %1686, %1682
  %1689 = fmul fast float %1687, %1682
  %1690 = fadd fast float %1688, 5.000000e-01
  %1691 = fadd fast float %1689, 5.000000e-01
  %1692 = fmul fast float %1690, 2.000000e+00
  %1693 = fadd fast float %1692, -1.000000e+00
  %1694 = fmul fast float %1691, 2.000000e+00
  %1695 = fadd fast float %1694, -1.000000e+00
  %1696 = fadd fast float %1693, %1695
  %1697 = fmul fast float %1696, 5.000000e-01
  %1698 = fsub fast float %1693, %1695
  %1699 = fmul fast float %1698, 5.000000e-01
  %1700 = call float @dx.op.unary.f32(i32 6, float %1697)  ; FAbs(value)
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = call float @dx.op.unary.f32(i32 6, float %1699)  ; FAbs(value)
  %1703 = fsub fast float %1701, %1702
  %1704 = call float @dx.op.dot3.f32(i32 55, float %1697, float %1699, float %1703, float %1697, float %1699, float %1703)  ; Dot3(ax,ay,az,bx,by,bz)
  %1705 = call float @dx.op.unary.f32(i32 25, float %1704)  ; Rsqrt(value)
  %1706 = fmul fast float %1697, %1705
  %1707 = fmul fast float %1699, %1705
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 67108864
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1728, label %1712

; <label>:1712                                    ; preds = %1660
  %1713 = add i32 %49, 296
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, 65535
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.i32 %1718, 0
  %1720 = and i32 %1719, 65535
  %1721 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1720)  ; LegacyF16ToF32(value)
  %1722 = lshr i32 %1715, 16
  %1723 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1722)  ; LegacyF16ToF32(value)
  %1724 = fsub fast float %1685, %1723
  %1725 = fmul fast float %1724, %1717
  %1726 = fadd fast float %1725, %1721
  %1727 = call float @dx.op.unary.f32(i32 7, float %1726)  ; Saturate(value)
  br label %1728

; <label>:1728                                    ; preds = %1712, %1660
  %1729 = phi float [ %1727, %1712 ], [ %1685, %1660 ]
  %1730 = call float @dx.op.dot2.f32(i32 54, float %1706, float %1707, float %1149, float %1150)  ; Dot2(ax,ay,bx,by)
  %1731 = call float @dx.op.dot2.f32(i32 54, float %1706, float %1707, float %1151, float %1152)  ; Dot2(ax,ay,bx,by)
  br label %1732

; <label>:1732                                    ; preds = %1728, %1638
  %1733 = phi float [ %1729, %1728 ], [ 0x3FD6666660000000, %1638 ]
  %1734 = phi float [ %1730, %1728 ], [ 0.000000e+00, %1638 ]
  %1735 = phi float [ %1731, %1728 ], [ 0.000000e+00, %1638 ]
  %1736 = phi float [ %1672, %1728 ], [ 1.000000e+00, %1638 ]
  %1737 = add i32 %49, 176
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = lshr i32 %1739, 22
  %1741 = shl nuw nsw i32 %1740, 5
  %1742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1741)  ; LegacyF16ToF32(value)
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 64
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1780, label %1747

; <label>:1747                                    ; preds = %1732
  %1748 = add i32 %49, 444
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %1750, 0
  %1752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = and i32 %1754, 131072
  %1756 = icmp eq i32 %1755, 0
  %1757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1752, %dx.types.Handle %88, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.ResRet.f32 %1757, 1
  %1760 = extractvalue %dx.types.ResRet.f32 %1757, 2
  %1761 = fmul fast float %1758, %445
  %1762 = fmul fast float %1759, %448
  %1763 = fmul fast float %1760, %451
  br i1 %1756, label %1770, label %1764

; <label>:1764                                    ; preds = %1747
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1766 = extractvalue %dx.types.CBufRet.f32 %1765, 0
  %1767 = fmul fast float %1766, %1761
  %1768 = fmul fast float %1766, %1762
  %1769 = fmul fast float %1766, %1763
  br label %1770

; <label>:1770                                    ; preds = %1764, %1747
  %1771 = phi float [ %1767, %1764 ], [ %1761, %1747 ]
  %1772 = phi float [ %1768, %1764 ], [ %1762, %1747 ]
  %1773 = phi float [ %1769, %1764 ], [ %1763, %1747 ]
  %1774 = fmul fast float %1771, %1742
  %1775 = select i1 %397, float %1774, float %1771
  %1776 = call float @dx.op.dot3.f32(i32 55, float %1775, float %1772, float %1773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1777 = select i1 %397, float 0.000000e+00, float %1771
  %1778 = select i1 %397, float %1776, float %1772
  %1779 = select i1 %397, float 0.000000e+00, float %1773
  br label %1780

; <label>:1780                                    ; preds = %1770, %1732
  %1781 = phi float [ %1777, %1770 ], [ 0.000000e+00, %1732 ]
  %1782 = phi float [ %1778, %1770 ], [ 0.000000e+00, %1732 ]
  %1783 = phi float [ %1779, %1770 ], [ 0.000000e+00, %1732 ]
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = and i32 %1785, 26624
  %1787 = icmp eq i32 %1786, 0
  br i1 %1787, label %1811, label %1788

; <label>:1788                                    ; preds = %1780
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = and i32 %1790, 16384
  %1792 = icmp eq i32 %1791, 0
  br i1 %1792, label %1811, label %1793

; <label>:1793                                    ; preds = %1788
  %1794 = and i32 %1790, 1048576
  %1795 = icmp ne i32 %1794, 0
  %1796 = add i32 %49, 508
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = add i32 %1798, 0
  %1800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1799, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1801 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1800, %dx.types.Handle %89, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1802 = extractvalue %dx.types.ResRet.f32 %1801, 0
  %1803 = add i32 %49, 112
  %1804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1803, i32 undef)  ; BufferLoad(srv,index,wot)
  %1805 = extractvalue %dx.types.ResRet.i32 %1804, 0
  %1806 = lshr i32 %1805, 24
  %1807 = uitofp i32 %1806 to float
  %1808 = fmul fast float %1802, 0x3F70101020000000
  %1809 = select i1 %1795, float 0x3F70101020000000, float %1808
  %1810 = fmul fast float %1809, %1807
  br label %1811

; <label>:1811                                    ; preds = %1793, %1788, %1780
  %1812 = phi float [ %1810, %1793 ], [ 0.000000e+00, %1788 ], [ 0.000000e+00, %1780 ]
  %1813 = add i32 %49, 112
  %1814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1813, i32 undef)  ; BufferLoad(srv,index,wot)
  %1815 = extractvalue %dx.types.ResRet.i32 %1814, 0
  %1816 = and i32 %1815, 255
  %1817 = uitofp i32 %1816 to float
  %1818 = lshr i32 %1815, 8
  %1819 = and i32 %1818, 255
  %1820 = uitofp i32 %1819 to float
  %1821 = call float @dx.op.dot3.f32(i32 55, float %1653, float %1654, float %1655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1822 = fmul fast float %1820, %1821
  %1823 = fadd fast float %1822, %1817
  %1824 = fmul fast float %1823, 0x3F70101020000000
  %1825 = call float @dx.op.unary.f32(i32 7, float %1824)  ; Saturate(value)
  br i1 %1137, label %1826, label %1834

; <label>:1826                                    ; preds = %1811
  %1827 = fsub fast float 1.000000e+00, %1433
  %1828 = fmul fast float %1827, %1124
  %1829 = fmul fast float %1827, %1125
  %1830 = fmul fast float %1827, %1126
  %1831 = fmul fast float %1827, %1127
  %1832 = fmul fast float %1827, %1128
  %1833 = fmul fast float %1827, %1129
  br label %1834

; <label>:1834                                    ; preds = %1826, %1811
  %1835 = phi float [ %1828, %1826 ], [ %1124, %1811 ]
  %1836 = phi float [ %1829, %1826 ], [ %1125, %1811 ]
  %1837 = phi float [ %1830, %1826 ], [ %1126, %1811 ]
  %1838 = phi float [ %1831, %1826 ], [ %1127, %1811 ]
  %1839 = phi float [ %1832, %1826 ], [ %1128, %1811 ]
  %1840 = phi float [ %1833, %1826 ], [ %1129, %1811 ]
  %1841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.i32 %1841, 0
  %1843 = and i32 %1842, 3
  %1844 = icmp eq i32 %1843, 3
  br i1 %1844, label %1923, label %1845

; <label>:1845                                    ; preds = %1834
  %1846 = and i32 %1842, 16
  %1847 = icmp ne i32 %1846, 0
  %1848 = select i1 %1847, float %1433, float 0.000000e+00
  %1849 = icmp eq i32 %1843, 0
  br i1 %1849, label %1850, label %1878

; <label>:1850                                    ; preds = %1845
  %1851 = and i32 %1842, 64
  %1852 = icmp ne i32 %1851, 0
  %1853 = select i1 %1852, float %1433, float 0.000000e+00
  %1854 = fsub fast float %1653, %1835
  %1855 = fsub fast float %1654, %1836
  %1856 = fsub fast float %1655, %1837
  %1857 = fmul fast float %1848, %1854
  %1858 = fmul fast float %1848, %1855
  %1859 = fmul fast float %1848, %1856
  %1860 = fadd fast float %1857, %1835
  %1861 = fadd fast float %1858, %1836
  %1862 = fadd fast float %1859, %1837
  %1863 = fsub fast float %1639, %1130
  %1864 = fmul fast float %1848, %1863
  %1865 = fadd fast float %1864, %1130
  %1866 = fsub fast float %1781, %1838
  %1867 = fsub fast float %1782, %1839
  %1868 = fsub fast float %1783, %1840
  %1869 = fmul fast float %1853, %1866
  %1870 = fmul fast float %1853, %1867
  %1871 = fmul fast float %1853, %1868
  %1872 = fadd fast float %1869, %1838
  %1873 = fadd fast float %1870, %1839
  %1874 = fadd fast float %1871, %1840
  %1875 = fsub fast float %1825, %1135
  %1876 = fmul fast float %1848, %1875
  %1877 = fadd fast float %1876, %1135
  br label %1923

; <label>:1878                                    ; preds = %1845
  %1879 = icmp eq i32 %1843, 1
  br i1 %1879, label %1880, label %1893

; <label>:1880                                    ; preds = %1878
  %1881 = fadd fast float %1653, -1.000000e+00
  %1882 = fadd fast float %1654, -1.000000e+00
  %1883 = fadd fast float %1655, -1.000000e+00
  %1884 = fmul fast float %1848, %1881
  %1885 = fmul fast float %1848, %1882
  %1886 = fmul fast float %1848, %1883
  %1887 = fadd fast float %1884, 1.000000e+00
  %1888 = fadd fast float %1885, 1.000000e+00
  %1889 = fadd fast float %1886, 1.000000e+00
  %1890 = fmul fast float %1887, %1835
  %1891 = fmul fast float %1888, %1836
  %1892 = fmul fast float %1889, %1837
  br label %1923

; <label>:1893                                    ; preds = %1878
  %1894 = icmp eq i32 %1843, 2
  br i1 %1894, label %1895, label %1923

; <label>:1895                                    ; preds = %1893
  %1896 = call float @dx.op.unary.f32(i32 24, float %1653)  ; Sqrt(value)
  %1897 = call float @dx.op.unary.f32(i32 24, float %1654)  ; Sqrt(value)
  %1898 = call float @dx.op.unary.f32(i32 24, float %1655)  ; Sqrt(value)
  %1899 = fadd fast float %1896, -5.000000e-01
  %1900 = fadd fast float %1897, -5.000000e-01
  %1901 = fadd fast float %1898, -5.000000e-01
  %1902 = fmul fast float %1899, %1848
  %1903 = fmul fast float %1900, %1848
  %1904 = fmul fast float %1901, %1848
  %1905 = fadd fast float %1902, 5.000000e-01
  %1906 = fadd fast float %1903, 5.000000e-01
  %1907 = fadd fast float %1904, 5.000000e-01
  %1908 = fmul fast float %1905, 2.000000e+00
  %1909 = fsub fast float 1.000000e+00, %1908
  %1910 = fmul fast float %1909, %1835
  %1911 = fadd fast float %1910, %1908
  %1912 = fmul fast float %1911, %1835
  %1913 = fmul fast float %1906, 2.000000e+00
  %1914 = fsub fast float 1.000000e+00, %1913
  %1915 = fmul fast float %1914, %1836
  %1916 = fadd fast float %1915, %1913
  %1917 = fmul fast float %1916, %1836
  %1918 = fmul fast float %1907, 2.000000e+00
  %1919 = fsub fast float 1.000000e+00, %1918
  %1920 = fmul fast float %1919, %1837
  %1921 = fadd fast float %1920, %1918
  %1922 = fmul fast float %1921, %1837
  br label %1923

; <label>:1923                                    ; preds = %1895, %1893, %1880, %1850, %1834
  %1924 = phi float [ %1835, %1834 ], [ %1912, %1895 ], [ %1835, %1893 ], [ %1890, %1880 ], [ %1860, %1850 ]
  %1925 = phi float [ %1836, %1834 ], [ %1917, %1895 ], [ %1836, %1893 ], [ %1891, %1880 ], [ %1861, %1850 ]
  %1926 = phi float [ %1837, %1834 ], [ %1922, %1895 ], [ %1837, %1893 ], [ %1892, %1880 ], [ %1862, %1850 ]
  %1927 = phi float [ %1838, %1834 ], [ %1838, %1895 ], [ %1838, %1893 ], [ %1838, %1880 ], [ %1872, %1850 ]
  %1928 = phi float [ %1839, %1834 ], [ %1839, %1895 ], [ %1839, %1893 ], [ %1839, %1880 ], [ %1873, %1850 ]
  %1929 = phi float [ %1840, %1834 ], [ %1840, %1895 ], [ %1840, %1893 ], [ %1840, %1880 ], [ %1874, %1850 ]
  %1930 = phi float [ %1130, %1834 ], [ %1130, %1895 ], [ %1130, %1893 ], [ %1130, %1880 ], [ %1865, %1850 ]
  %1931 = phi float [ %1135, %1834 ], [ %1135, %1895 ], [ %1135, %1893 ], [ %1135, %1880 ], [ %1877, %1850 ]
  %1932 = and i32 %1842, 12
  %1933 = icmp eq i32 %1932, 12
  br i1 %1933, label %2016, label %1934

; <label>:1934                                    ; preds = %1923
  %1935 = and i32 %1842, 2097184
  %1936 = icmp eq i32 %1935, 2097184
  %1937 = select i1 %1936, float %1433, float 0.000000e+00
  %1938 = and i32 %1842, 4194336
  %1939 = icmp eq i32 %1938, 4194336
  %1940 = select i1 %1939, float %1433, float 0.000000e+00
  %1941 = and i32 %1842, 8388640
  %1942 = icmp eq i32 %1941, 8388640
  %1943 = select i1 %1942, float %1433, float 0.000000e+00
  %1944 = and i32 %1842, 16384
  %1945 = icmp ne i32 %1944, 0
  %1946 = select i1 %1945, float %1433, float 0.000000e+00
  %1947 = icmp eq i32 %1932, 0
  br i1 %1947, label %1948, label %1964

; <label>:1948                                    ; preds = %1934
  %1949 = fsub fast float %1734, %1122
  %1950 = fsub fast float %1735, %1123
  %1951 = fmul fast float %1937, %1949
  %1952 = fmul fast float %1937, %1950
  %1953 = fadd fast float %1951, %1122
  %1954 = fadd fast float %1952, %1123
  %1955 = fsub fast float %1736, %1133
  %1956 = fmul fast float %1940, %1955
  %1957 = fadd fast float %1956, %1133
  %1958 = fsub fast float %1733, %1132
  %1959 = fmul fast float %1943, %1958
  %1960 = fadd fast float %1959, %1132
  %1961 = fsub fast float %1812, %1134
  %1962 = fmul fast float %1946, %1961
  %1963 = fadd fast float %1962, %1134
  br label %2016

; <label>:1964                                    ; preds = %1934
  %1965 = icmp eq i32 %1932, 4
  br i1 %1965, label %1966, label %2000

; <label>:1966                                    ; preds = %1964
  %1967 = fmul fast float %1937, %1734
  %1968 = fmul fast float %1937, %1735
  %1969 = fadd fast float %1967, %1122
  %1970 = fadd fast float %1968, %1123
  %1971 = call float @dx.op.binary.f32(i32 36, float %1133, float %1736)  ; FMin(a,b)
  %1972 = fsub fast float %1971, %1133
  %1973 = fmul fast float %1972, %1940
  %1974 = fadd fast float %1973, %1133
  %1975 = fadd fast float %1733, %1132
  %1976 = fmul fast float %1975, 0x3FF337FAE0000000
  %1977 = fmul fast float %1132, %1132
  %1978 = fmul fast float %1733, %1733
  %1979 = fadd fast float %1978, %1977
  %1980 = fmul fast float %1979, 0x3FE5152B00000000
  %1981 = fmul fast float %1132, 0xBFCC1F85E0000000
  %1982 = fmul fast float %1981, %1733
  %1983 = fadd fast float %1982, 0xBFE1363700000000
  %1984 = fadd fast float %1983, %1976
  %1985 = fsub fast float %1984, %1980
  %1986 = fmul fast float %1975, 0x3FBA6F0D00000000
  %1987 = fmul fast float %1979, 0x3FD0432880000000
  %1988 = fmul fast float %1132, 0xBFEF110800000000
  %1989 = fmul fast float %1988, %1733
  %1990 = fadd fast float %1989, 1.000000e+00
  %1991 = fsub fast float %1990, %1986
  %1992 = fadd fast float %1991, %1987
  %1993 = fdiv fast float %1985, %1992
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = fsub fast float %1994, %1132
  %1996 = fmul fast float %1995, %1943
  %1997 = fadd fast float %1996, %1132
  %1998 = fmul fast float %1946, %1812
  %1999 = fadd fast float %1998, %1134
  br label %2016

; <label>:2000                                    ; preds = %1964
  %2001 = icmp eq i32 %1932, 8
  br i1 %2001, label %2002, label %2016

; <label>:2002                                    ; preds = %2000
  %2003 = fmul fast float %1937, %1734
  %2004 = fmul fast float %1937, %1735
  %2005 = fadd fast float %2003, %1122
  %2006 = fadd fast float %2004, %1123
  %2007 = call float @dx.op.binary.f32(i32 36, float %1133, float %1736)  ; FMin(a,b)
  %2008 = fsub fast float %2007, %1133
  %2009 = fmul fast float %2008, %1940
  %2010 = fadd fast float %2009, %1133
  %2011 = fsub fast float %1733, %1132
  %2012 = fmul fast float %1943, %2011
  %2013 = fadd fast float %2012, %1132
  %2014 = fmul fast float %1946, %1812
  %2015 = fadd fast float %2014, %1134
  br label %2016

; <label>:2016                                    ; preds = %2002, %2000, %1966, %1948, %1923, %1432, %1136, %1121
  %2017 = phi float [ %1122, %1923 ], [ %1122, %1432 ], [ %1122, %1121 ], [ %2005, %2002 ], [ %1122, %2000 ], [ %1969, %1966 ], [ %1953, %1948 ], [ %1122, %1136 ]
  %2018 = phi float [ %1123, %1923 ], [ %1123, %1432 ], [ %1123, %1121 ], [ %2006, %2002 ], [ %1123, %2000 ], [ %1970, %1966 ], [ %1954, %1948 ], [ %1123, %1136 ]
  %2019 = phi float [ %1924, %1923 ], [ %1124, %1432 ], [ %1124, %1121 ], [ %1924, %2002 ], [ %1924, %2000 ], [ %1924, %1966 ], [ %1924, %1948 ], [ %1124, %1136 ]
  %2020 = phi float [ %1925, %1923 ], [ %1125, %1432 ], [ %1125, %1121 ], [ %1925, %2002 ], [ %1925, %2000 ], [ %1925, %1966 ], [ %1925, %1948 ], [ %1125, %1136 ]
  %2021 = phi float [ %1926, %1923 ], [ %1126, %1432 ], [ %1126, %1121 ], [ %1926, %2002 ], [ %1926, %2000 ], [ %1926, %1966 ], [ %1926, %1948 ], [ %1126, %1136 ]
  %2022 = phi float [ %1927, %1923 ], [ %1127, %1432 ], [ %1127, %1121 ], [ %1927, %2002 ], [ %1927, %2000 ], [ %1927, %1966 ], [ %1927, %1948 ], [ %1127, %1136 ]
  %2023 = phi float [ %1928, %1923 ], [ %1128, %1432 ], [ %1128, %1121 ], [ %1928, %2002 ], [ %1928, %2000 ], [ %1928, %1966 ], [ %1928, %1948 ], [ %1128, %1136 ]
  %2024 = phi float [ %1929, %1923 ], [ %1129, %1432 ], [ %1129, %1121 ], [ %1929, %2002 ], [ %1929, %2000 ], [ %1929, %1966 ], [ %1929, %1948 ], [ %1129, %1136 ]
  %2025 = phi float [ %1930, %1923 ], [ %1130, %1432 ], [ %1130, %1121 ], [ %1930, %2002 ], [ %1930, %2000 ], [ %1930, %1966 ], [ %1930, %1948 ], [ %1130, %1136 ]
  %2026 = phi float [ %1132, %1923 ], [ %1132, %1432 ], [ %1132, %1121 ], [ %2013, %2002 ], [ %1132, %2000 ], [ %1997, %1966 ], [ %1960, %1948 ], [ %1132, %1136 ]
  %2027 = phi float [ %1133, %1923 ], [ %1133, %1432 ], [ %1133, %1121 ], [ %2010, %2002 ], [ %1133, %2000 ], [ %1974, %1966 ], [ %1957, %1948 ], [ %1133, %1136 ]
  %2028 = phi float [ %1134, %1923 ], [ %1134, %1432 ], [ %1134, %1121 ], [ %2015, %2002 ], [ %1134, %2000 ], [ %1999, %1966 ], [ %1963, %1948 ], [ %1134, %1136 ]
  %2029 = phi float [ %1931, %1923 ], [ %1135, %1432 ], [ %1135, %1121 ], [ %1931, %2002 ], [ %1931, %2000 ], [ %1931, %1966 ], [ %1931, %1948 ], [ %1135, %1136 ]
  br i1 %572, label %2910, label %2030

; <label>:2030                                    ; preds = %2016
  %2031 = icmp ult i32 %625, 3
  %2032 = add i32 %49, 56
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = add i32 %49, 60
  %2036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2035, i32 undef)  ; BufferLoad(srv,index,wot)
  %2037 = extractvalue %dx.types.ResRet.i32 %2036, 0
  %2038 = or i32 %2037, %2034
  %2039 = icmp eq i32 %2038, 0
  br i1 %2039, label %2910, label %2040

; <label>:2040                                    ; preds = %2030
  %2041 = and i32 %2034, 262144
  %2042 = icmp ne i32 %2041, 0
  %2043 = select i1 %2042, float %52, float 1.000000e+00
  %2044 = select i1 %2042, float %53, float 0.000000e+00
  %2045 = select i1 %2042, float %54, float 0.000000e+00
  %2046 = select i1 %2042, float %55, float 1.000000e+00
  %2047 = select i1 %2042, float %56, float %65
  %2048 = select i1 %2042, float %57, float %66
  %2049 = add i32 %49, 316
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = lshr i32 %2051, 16
  %2053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2052)  ; LegacyF16ToF32(value)
  %2054 = fmul fast float %2053, 0x3F50624DE0000000
  %2055 = add i32 %49, 120
  %2056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2057 = extractvalue %dx.types.ResRet.i32 %2056, 0
  %2058 = lshr i32 %2057, 16
  %2059 = and i32 %2058, 255
  %2060 = lshr i32 %2057, 24
  %2061 = add i32 %49, 324
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2061, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 65535
  %2065 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2064)  ; LegacyF16ToF32(value)
  %2066 = lshr i32 %2063, 16
  %2067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2066)  ; LegacyF16ToF32(value)
  %2068 = add i32 %49, 64
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = lshr i32 %2070, 22
  %2072 = shl nuw nsw i32 %2071, 5
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = shl i32 %2070, 4
  %2075 = and i32 %2074, 32752
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = lshr i32 %2070, 7
  %2078 = and i32 %2077, 32752
  %2079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2078)  ; LegacyF16ToF32(value)
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 3
  %2082 = fmul fast float %2081, 1.000000e+03
  %2083 = fmul fast float %522, %2082
  %2084 = call float @dx.op.unary.f32(i32 22, float %2083)  ; Frc(value)
  %2085 = fadd fast float %2084, %512
  %2086 = fmul fast float %523, %2082
  %2087 = call float @dx.op.unary.f32(i32 22, float %2086)  ; Frc(value)
  %2088 = fadd fast float %2087, %514
  %2089 = fmul fast float %2054, %2082
  %2090 = call float @dx.op.unary.f32(i32 22, float %2089)  ; Frc(value)
  %2091 = fmul fast float %2090, 0x401921FB60000000
  %2092 = fadd fast float %2091, %2073
  %2093 = call float @dx.op.unary.f32(i32 13, float %2092)  ; Sin(value)
  %2094 = call float @dx.op.unary.f32(i32 12, float %2092)  ; Cos(value)
  %2095 = fsub fast float -0.000000e+00, %2093
  %2096 = fadd fast float %2047, -5.000000e-01
  %2097 = fadd fast float %2048, -5.000000e-01
  %2098 = fmul fast float %2065, %2096
  %2099 = fmul fast float %2067, %2097
  %2100 = fadd fast float %2098, 5.000000e-01
  %2101 = fadd fast float %2099, 5.000000e-01
  %2102 = fmul fast float %2076, %2100
  %2103 = fmul fast float %2079, %2101
  %2104 = fmul fast float %2094, %2102
  %2105 = call float @dx.op.tertiary.f32(i32 46, float %2095, float %2103, float %2104)  ; FMad(a,b,c)
  %2106 = fmul fast float %2093, %2102
  %2107 = call float @dx.op.tertiary.f32(i32 46, float %2094, float %2103, float %2106)  ; FMad(a,b,c)
  %2108 = fadd fast float %2085, %2105
  %2109 = fadd fast float %2088, %2107
  %2110 = icmp ugt i32 %2059, 1
  %2111 = icmp ugt i32 %2057, 33554431
  %2112 = or i1 %2111, %2110
  br i1 %2112, label %2113, label %2138

; <label>:2113                                    ; preds = %2040
  %2114 = add i32 %49, 260
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = lshr i32 %2116, 16
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = fmul fast float %2081, %2118
  %2120 = call float @dx.op.unary.f32(i32 22, float %2119)  ; Frc(value)
  %2121 = mul nuw nsw i32 %2059, %2060
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2120, %2122
  %2124 = call float @dx.op.unary.f32(i32 27, float %2123)  ; Round_ni(value)
  %2125 = fptoui float %2124 to i32
  %2126 = urem i32 %2125, %2059
  %2127 = udiv i32 %2125, %2060
  %2128 = call float @dx.op.unary.f32(i32 22, float %2108)  ; Frc(value)
  %2129 = call float @dx.op.unary.f32(i32 22, float %2109)  ; Frc(value)
  %2130 = uitofp i32 %2126 to float
  %2131 = uitofp i32 %2127 to float
  %2132 = fadd fast float %2128, %2130
  %2133 = fadd fast float %2129, %2131
  %2134 = uitofp i32 %2059 to float
  %2135 = uitofp i32 %2060 to float
  %2136 = fdiv fast float %2132, %2134
  %2137 = fdiv fast float %2133, %2135
  br label %2138

; <label>:2138                                    ; preds = %2113, %2040
  %2139 = phi float [ %2136, %2113 ], [ %2108, %2040 ]
  %2140 = phi float [ %2137, %2113 ], [ %2109, %2040 ]
  %2141 = and i32 %2034, 16777216
  %2142 = icmp eq i32 %2141, 0
  br i1 %2142, label %2252, label %2143

; <label>:2143                                    ; preds = %2138
  %2144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2145 = extractvalue %dx.types.CBufRet.f32 %2144, 0
  %2146 = extractvalue %dx.types.CBufRet.f32 %2144, 1
  %2147 = extractvalue %dx.types.CBufRet.f32 %2144, 2
  %2148 = fadd fast float %2145, %147
  %2149 = fadd fast float %2146, %148
  %2150 = fadd fast float %2147, %149
  %2151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2152 = extractvalue %dx.types.CBufRet.f32 %2151, 0
  %2153 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2154 = icmp eq i32 %50, 65535
  br i1 %2154, label %2249, label %2155

; <label>:2155                                    ; preds = %2143
  %2156 = lshr i32 %50, 1
  %2157 = shl i32 %2156, 2
  %2158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.i32 %2158, 0
  %2160 = and i32 %50, 1
  %2161 = icmp ne i32 %2160, 0
  %2162 = lshr i32 %2159, 16
  %2163 = and i32 %2159, 65535
  %2164 = select i1 %2161, i32 %2162, i32 %2163
  %2165 = icmp eq i32 %2164, 65535
  br i1 %2165, label %2245, label %2166

; <label>:2166                                    ; preds = %2155
  %2167 = mul nuw nsw i32 %2164, 40
  %2168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.ResRet.f32 %2168, 2
  %2172 = add nuw nsw i32 %2167, 12
  %2173 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.f32 %2173, 0
  %2175 = extractvalue %dx.types.ResRet.f32 %2173, 1
  %2176 = extractvalue %dx.types.ResRet.f32 %2173, 2
  %2177 = add nuw nsw i32 %2167, 24
  %2178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2177, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.f32 %2178, 0
  %2180 = extractvalue %dx.types.ResRet.f32 %2178, 1
  %2181 = extractvalue %dx.types.ResRet.f32 %2178, 2
  %2182 = add nuw nsw i32 %2167, 36
  %2183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2182, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.f32 %2183, 0
  %2185 = fsub fast float %2148, %2169
  %2186 = fsub fast float %2149, %2170
  %2187 = fsub fast float %2150, %2171
  %2188 = fmul fast float %2184, %2185
  %2189 = fmul fast float %2184, %2186
  %2190 = fmul fast float %2184, %2187
  %2191 = call float @dx.op.unary.f32(i32 27, float %2188)  ; Round_ni(value)
  %2192 = call float @dx.op.unary.f32(i32 27, float %2189)  ; Round_ni(value)
  %2193 = call float @dx.op.unary.f32(i32 27, float %2190)  ; Round_ni(value)
  %2194 = fadd fast float %2191, 5.000000e-01
  %2195 = fadd fast float %2192, 5.000000e-01
  %2196 = fadd fast float %2193, 5.000000e-01
  %2197 = fmul fast float %2194, %2174
  %2198 = fmul fast float %2195, %2175
  %2199 = fmul fast float %2196, %2176
  %2200 = shl i32 %50, 2
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = add i32 %2202, 0
  %2204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2205 = call float @dx.op.unary.f32(i32 22, float %2197)  ; Frc(value)
  %2206 = call float @dx.op.unary.f32(i32 22, float %2198)  ; Frc(value)
  %2207 = call float @dx.op.unary.f32(i32 22, float %2199)  ; Frc(value)
  %2208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2204, %dx.types.Handle %46, float %2205, float %2206, float %2207, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2209 = extractvalue %dx.types.ResRet.f32 %2208, 0
  %2210 = extractvalue %dx.types.ResRet.f32 %2208, 1
  %2211 = extractvalue %dx.types.ResRet.f32 %2208, 2
  %2212 = fmul fast float %2209, 1.023000e+03
  %2213 = fmul fast float %2210, 1.023000e+03
  %2214 = fmul fast float %2211, 1.023000e+03
  %2215 = fadd fast float %2212, 5.000000e-01
  %2216 = fadd fast float %2213, 5.000000e-01
  %2217 = fadd fast float %2214, 5.000000e-01
  %2218 = call float @dx.op.unary.f32(i32 27, float %2215)  ; Round_ni(value)
  %2219 = call float @dx.op.unary.f32(i32 27, float %2216)  ; Round_ni(value)
  %2220 = call float @dx.op.unary.f32(i32 27, float %2217)  ; Round_ni(value)
  %2221 = fsub fast float %2188, %2191
  %2222 = fsub fast float %2189, %2192
  %2223 = fsub fast float %2190, %2193
  %2224 = fmul fast float %2221, 7.500000e-01
  %2225 = fmul fast float %2222, 7.500000e-01
  %2226 = fmul fast float %2223, 7.500000e-01
  %2227 = fadd fast float %2191, 1.250000e-01
  %2228 = fadd fast float %2227, %2224
  %2229 = fadd fast float %2228, %2218
  %2230 = fadd fast float %2192, 1.250000e-01
  %2231 = fadd fast float %2230, %2225
  %2232 = fadd fast float %2231, %2219
  %2233 = fadd fast float %2193, 1.250000e-01
  %2234 = fadd fast float %2233, %2226
  %2235 = fadd fast float %2234, %2220
  %2236 = fmul fast float %2229, %2179
  %2237 = fmul fast float %2232, %2180
  %2238 = fmul fast float %2235, %2181
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = add i32 %2240, 0
  %2242 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2241, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2243 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2242, %dx.types.Handle %44, float %2236, float %2237, float %2238, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2244 = extractvalue %dx.types.ResRet.f32 %2243, 0
  br label %2245

; <label>:2245                                    ; preds = %2166, %2155
  %2246 = phi float [ %2244, %2166 ], [ -1.000000e+00, %2155 ]
  %2247 = fadd fast float %2246, %2153
  %2248 = call float @dx.op.unary.f32(i32 7, float %2247)  ; Saturate(value)
  br label %2249

; <label>:2249                                    ; preds = %2245, %2143
  %2250 = phi float [ %2248, %2245 ], [ %2153, %2143 ]
  %2251 = fmul fast float %2250, %621
  br label %2252

; <label>:2252                                    ; preds = %2249, %2138
  %2253 = phi float [ %2251, %2249 ], [ %621, %2138 ]
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2255, 256
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2304, label %2258

; <label>:2258                                    ; preds = %2252
  %2259 = add i32 %49, 480
  %2260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.i32 %2260, 0
  %2262 = add i32 %2261, 0
  %2263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2263, %dx.types.Handle %89, float %2139, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2265 = extractvalue %dx.types.ResRet.f32 %2264, 0
  %2266 = add i32 %49, 132
  %2267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2268 = extractvalue %dx.types.ResRet.i32 %2267, 0
  %2269 = shl i32 %2268, 4
  %2270 = and i32 %2269, 32752
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = lshr i32 %2268, 7
  %2273 = and i32 %2272, 32752
  %2274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2273)  ; LegacyF16ToF32(value)
  %2275 = fsub fast float 1.000000e+00, %2253
  %2276 = call float @dx.op.binary.f32(i32 35, float %2275, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2277 = bitcast float %2253 to i32
  %2278 = sitofp i32 %2277 to float
  %2279 = fadd fast float %2278, 0xC1CFBF8940000000
  %2280 = fmul fast float %2274, %2279
  %2281 = fadd fast float %2280, 0x41CFBF8940000000
  %2282 = fptosi float %2281 to i32
  %2283 = bitcast i32 %2282 to float
  %2284 = bitcast float %2276 to i32
  %2285 = sitofp i32 %2284 to float
  %2286 = fadd fast float %2285, 0xC1CFBF8940000000
  %2287 = fmul fast float %2286, %2274
  %2288 = fadd fast float %2287, 0x41CFBF8940000000
  %2289 = fptosi float %2288 to i32
  %2290 = bitcast i32 %2289 to float
  %2291 = fmul fast float %2283, %2271
  %2292 = fmul fast float %2290, %2271
  %2293 = fsub fast float %2276, %2291
  %2294 = fadd fast float %2292, %2276
  %2295 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  %2296 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2297 = fsub fast float %2265, %2295
  %2298 = fsub fast float %2296, %2295
  %2299 = bitcast float %2298 to i32
  %2300 = sub nsw i32 2129859010, %2299
  %2301 = bitcast i32 %2300 to float
  %2302 = fmul fast float %2301, %2297
  %2303 = call float @dx.op.unary.f32(i32 7, float %2302)  ; Saturate(value)
  br label %2304

; <label>:2304                                    ; preds = %2258, %2252
  %2305 = phi float [ %2303, %2258 ], [ %2253, %2252 ]
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = and i32 %2307, 128
  %2309 = icmp eq i32 %2308, 0
  br i1 %2309, label %2326, label %2310

; <label>:2310                                    ; preds = %2304
  %2311 = add i32 %49, 464
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2311, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = add i32 %2313, 0
  %2315 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2314, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2316 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2315, %dx.types.Handle %89, float %2139, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 524288
  %2321 = icmp ne i32 %2320, 0
  %2322 = fcmp fast ogt float %2317, 0x3FE0101020000000
  %2323 = select i1 %2322, float 1.000000e+00, float 0.000000e+00
  %2324 = select i1 %2321, float %2323, float %2317
  %2325 = fmul fast float %2324, %2305
  br label %2326

; <label>:2326                                    ; preds = %2310, %2304
  %2327 = phi float [ %2325, %2310 ], [ %2305, %2304 ]
  %2328 = fcmp fast ult float %2327, 0x3F70101020000000
  br i1 %2328, label %2910, label %2329

; <label>:2329                                    ; preds = %2326
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 16
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2532, label %2334

; <label>:2334                                    ; preds = %2329
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2055, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = add i32 %49, 416
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = add i32 %2339, 0
  %2341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2342 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2341, %dx.types.Handle %88, float %2139, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2343 = extractvalue %dx.types.ResRet.f32 %2342, 0
  %2344 = extractvalue %dx.types.ResRet.f32 %2342, 1
  %2345 = extractvalue %dx.types.ResRet.f32 %2342, 2
  %2346 = extractvalue %dx.types.ResRet.f32 %2342, 3
  %2347 = and i32 %2336, 255
  %2348 = uitofp i32 %2347 to float
  %2349 = lshr i32 %2336, 8
  %2350 = and i32 %2349, 255
  %2351 = uitofp i32 %2350 to float
  %2352 = fmul fast float %2346, %2348
  %2353 = fadd fast float %2352, %2351
  %2354 = fmul fast float %2353, 0x3F70101000000000
  %2355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2356 = extractvalue %dx.types.ResRet.i32 %2355, 0
  %2357 = and i32 %2356, 512
  %2358 = icmp eq i32 %2357, 0
  br i1 %2358, label %2367, label %2359

; <label>:2359                                    ; preds = %2334
  %2360 = add i32 %49, 496
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = add i32 %2362, 0
  %2364 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2363, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2365 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2364, %dx.types.Handle %89, float %2139, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2366 = extractvalue %dx.types.ResRet.f32 %2365, 0
  br label %2367

; <label>:2367                                    ; preds = %2359, %2334
  %2368 = phi float [ %2366, %2359 ], [ 1.000000e+00, %2334 ]
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 33554432
  %2372 = icmp eq i32 %2371, 0
  br i1 %2372, label %2479, label %2373

; <label>:2373                                    ; preds = %2367
  %2374 = add i32 %49, 256
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 65535
  %2378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2377)  ; LegacyF16ToF32(value)
  %2379 = lshr i32 %2376, 16
  %2380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2379)  ; LegacyF16ToF32(value)
  %2381 = add i32 %49, 260
  %2382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2381, i32 undef)  ; BufferLoad(srv,index,wot)
  %2383 = extractvalue %dx.types.ResRet.i32 %2382, 0
  %2384 = and i32 %2383, 65535
  %2385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2384)  ; LegacyF16ToF32(value)
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = lshr i32 %2387, 24
  %2389 = uitofp i32 %2388 to float
  %2390 = fmul fast float %2389, 0x3F70101020000000
  %2391 = and i32 %2387, 255
  %2392 = uitofp i32 %2391 to float
  %2393 = fmul fast float %2392, 0x3F70101020000000
  %2394 = lshr i32 %2387, 8
  %2395 = and i32 %2394, 255
  %2396 = uitofp i32 %2395 to float
  %2397 = fmul fast float %2396, 0x3F70101020000000
  %2398 = lshr i32 %2387, 16
  %2399 = and i32 %2398, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = fmul fast float %2400, 0x3F70101020000000
  %2402 = add i32 %49, 252
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = lshr i32 %2404, 24
  %2406 = uitofp i32 %2405 to float
  %2407 = fmul fast float %2406, 0x3F70101020000000
  %2408 = and i32 %2404, 255
  %2409 = uitofp i32 %2408 to float
  %2410 = fmul fast float %2409, 0x3F70101020000000
  %2411 = lshr i32 %2404, 8
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = fmul fast float %2413, 0x3F70101020000000
  %2415 = lshr i32 %2404, 16
  %2416 = and i32 %2415, 255
  %2417 = uitofp i32 %2416 to float
  %2418 = fmul fast float %2417, 0x3F70101020000000
  %2419 = bitcast float %2343 to i32
  %2420 = ashr i32 %2419, 1
  %2421 = sub nsw i32 1597463174, %2420
  %2422 = bitcast i32 %2421 to float
  %2423 = fmul fast float %2343, 5.000000e-01
  %2424 = fmul fast float %2422, %2422
  %2425 = fmul fast float %2424, %2423
  %2426 = fsub fast float 1.500000e+00, %2425
  %2427 = fmul fast float %2422, %2343
  %2428 = fmul fast float %2427, %2426
  %2429 = bitcast float %2344 to i32
  %2430 = ashr i32 %2429, 1
  %2431 = sub nsw i32 1597463174, %2430
  %2432 = bitcast i32 %2431 to float
  %2433 = fmul fast float %2344, 5.000000e-01
  %2434 = fmul fast float %2432, %2432
  %2435 = fmul fast float %2434, %2433
  %2436 = fsub fast float 1.500000e+00, %2435
  %2437 = fmul fast float %2432, %2344
  %2438 = fmul fast float %2437, %2436
  %2439 = bitcast float %2345 to i32
  %2440 = ashr i32 %2439, 1
  %2441 = sub nsw i32 1597463174, %2440
  %2442 = bitcast i32 %2441 to float
  %2443 = fmul fast float %2345, 5.000000e-01
  %2444 = fmul fast float %2442, %2442
  %2445 = fmul fast float %2444, %2443
  %2446 = fsub fast float 1.500000e+00, %2445
  %2447 = fmul fast float %2442, %2345
  %2448 = fmul fast float %2447, %2446
  %2449 = fsub fast float %2428, %2410
  %2450 = fsub fast float %2438, %2414
  %2451 = fsub fast float %2448, %2418
  %2452 = fmul fast float %2449, %2378
  %2453 = fmul fast float %2450, %2380
  %2454 = fmul fast float %2451, %2385
  %2455 = fadd fast float %2452, %2393
  %2456 = fadd fast float %2453, %2397
  %2457 = fadd fast float %2454, %2401
  %2458 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2459 = call float @dx.op.unary.f32(i32 7, float %2456)  ; Saturate(value)
  %2460 = call float @dx.op.unary.f32(i32 7, float %2457)  ; Saturate(value)
  %2461 = fmul fast float %2458, %2458
  %2462 = fmul fast float %2459, %2459
  %2463 = fmul fast float %2460, %2460
  %2464 = fsub fast float %2461, %2343
  %2465 = fsub fast float %2462, %2344
  %2466 = fsub fast float %2463, %2345
  %2467 = fmul fast float %2464, %2368
  %2468 = fmul fast float %2465, %2368
  %2469 = fmul fast float %2466, %2368
  %2470 = fadd fast float %2467, %2343
  %2471 = fadd fast float %2468, %2344
  %2472 = fadd fast float %2469, %2345
  %2473 = fadd fast float %2390, %2354
  %2474 = fsub fast float %2473, %2407
  %2475 = call float @dx.op.unary.f32(i32 7, float %2474)  ; Saturate(value)
  %2476 = fsub fast float %2475, %2354
  %2477 = fmul fast float %2476, %2368
  %2478 = fadd fast float %2477, %2354
  br label %2532

; <label>:2479                                    ; preds = %2367
  %2480 = and i32 %2370, 134217728
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2516, label %2482

; <label>:2482                                    ; preds = %2479
  %2483 = call float @dx.op.unary.f32(i32 24, float %499)  ; Sqrt(value)
  %2484 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %2485 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %2486 = fadd fast float %2483, -5.000000e-01
  %2487 = fadd fast float %2484, -5.000000e-01
  %2488 = fadd fast float %2485, -5.000000e-01
  %2489 = fmul fast float %2486, %2368
  %2490 = fmul fast float %2487, %2368
  %2491 = fmul fast float %2488, %2368
  %2492 = fadd fast float %2489, 5.000000e-01
  %2493 = fadd fast float %2490, 5.000000e-01
  %2494 = fadd fast float %2491, 5.000000e-01
  %2495 = call float @dx.op.unary.f32(i32 24, float %2343)  ; Sqrt(value)
  %2496 = call float @dx.op.unary.f32(i32 24, float %2344)  ; Sqrt(value)
  %2497 = call float @dx.op.unary.f32(i32 24, float %2345)  ; Sqrt(value)
  %2498 = fmul fast float %2492, 2.000000e+00
  %2499 = fsub fast float 1.000000e+00, %2498
  %2500 = fmul fast float %2499, %2495
  %2501 = fadd fast float %2500, %2498
  %2502 = fmul fast float %2501, %2495
  %2503 = fmul fast float %2493, 2.000000e+00
  %2504 = fsub fast float 1.000000e+00, %2503
  %2505 = fmul fast float %2504, %2496
  %2506 = fadd fast float %2505, %2503
  %2507 = fmul fast float %2506, %2496
  %2508 = fmul fast float %2494, 2.000000e+00
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %2509, %2497
  %2511 = fadd fast float %2510, %2508
  %2512 = fmul fast float %2511, %2497
  %2513 = fmul fast float %2502, %2502
  %2514 = fmul fast float %2507, %2507
  %2515 = fmul fast float %2512, %2512
  br label %2532

; <label>:2516                                    ; preds = %2479
  %2517 = fmul fast float %499, %499
  %2518 = fmul fast float %503, %503
  %2519 = fmul fast float %507, %507
  %2520 = fadd fast float %2517, -1.000000e+00
  %2521 = fadd fast float %2518, -1.000000e+00
  %2522 = fadd fast float %2519, -1.000000e+00
  %2523 = fmul fast float %2368, %2520
  %2524 = fmul fast float %2368, %2521
  %2525 = fmul fast float %2368, %2522
  %2526 = fadd fast float %2523, 1.000000e+00
  %2527 = fadd fast float %2524, 1.000000e+00
  %2528 = fadd fast float %2525, 1.000000e+00
  %2529 = fmul fast float %2526, %2343
  %2530 = fmul fast float %2527, %2344
  %2531 = fmul fast float %2528, %2345
  br label %2532

; <label>:2532                                    ; preds = %2516, %2482, %2373, %2329
  %2533 = phi float [ %2478, %2373 ], [ %2354, %2482 ], [ %2354, %2516 ], [ 0x3FA23C0BE0000000, %2329 ]
  %2534 = phi float [ %2470, %2373 ], [ %2513, %2482 ], [ %2529, %2516 ], [ 1.000000e+00, %2329 ]
  %2535 = phi float [ %2471, %2373 ], [ %2514, %2482 ], [ %2530, %2516 ], [ 1.000000e+00, %2329 ]
  %2536 = phi float [ %2472, %2373 ], [ %2515, %2482 ], [ %2531, %2516 ], [ 1.000000e+00, %2329 ]
  %2537 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2538 = extractvalue %dx.types.CBufRet.i32 %2537, 1
  %2539 = and i32 %2538, 1
  %2540 = icmp ne i32 %2539, 0
  %2541 = add i32 %49, 356
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 32
  %2545 = icmp ne i32 %2544, 0
  %2546 = and i1 %2540, %2545
  %2547 = select i1 %2546, float 1.000000e+00, float %2534
  %2548 = select i1 %2546, float 0x3FD3333340000000, float %2535
  %2549 = select i1 %2546, float 0x3FD3333340000000, float %2536
  %2550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2551 = extractvalue %dx.types.ResRet.i32 %2550, 0
  %2552 = and i32 %2551, 32
  %2553 = icmp eq i32 %2552, 0
  br i1 %2553, label %2626, label %2554

; <label>:2554                                    ; preds = %2532
  %2555 = add i32 %49, 124
  %2556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2555, i32 undef)  ; BufferLoad(srv,index,wot)
  %2557 = extractvalue %dx.types.ResRet.i32 %2556, 0
  %2558 = add i32 %49, 432
  %2559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.i32 %2559, 0
  %2561 = add i32 %2560, 0
  %2562 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2561, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2563 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2562, %dx.types.Handle %88, float %2139, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2564 = extractvalue %dx.types.ResRet.f32 %2563, 0
  %2565 = extractvalue %dx.types.ResRet.f32 %2563, 1
  %2566 = extractvalue %dx.types.ResRet.f32 %2563, 2
  %2567 = extractvalue %dx.types.ResRet.f32 %2563, 3
  %2568 = and i32 %2557, 255
  %2569 = uitofp i32 %2568 to float
  %2570 = lshr i32 %2557, 8
  %2571 = and i32 %2570, 255
  %2572 = uitofp i32 %2571 to float
  %2573 = lshr i32 %2557, 16
  %2574 = and i32 %2573, 255
  %2575 = uitofp i32 %2574 to float
  %2576 = fmul fast float %2575, 0x3F70101000000000
  %2577 = fmul fast float %2564, %2569
  %2578 = fadd fast float %2577, %2572
  %2579 = fmul fast float %2578, 0x3F70101000000000
  %2580 = fadd fast float %2565, -5.000000e-01
  %2581 = fadd fast float %2567, -5.000000e-01
  %2582 = fmul fast float %2580, %2576
  %2583 = fmul fast float %2581, %2576
  %2584 = fadd fast float %2582, 5.000000e-01
  %2585 = fadd fast float %2583, 5.000000e-01
  %2586 = fmul fast float %2584, 2.000000e+00
  %2587 = fadd fast float %2586, -1.000000e+00
  %2588 = fmul fast float %2585, 2.000000e+00
  %2589 = fadd fast float %2588, -1.000000e+00
  %2590 = fadd fast float %2587, %2589
  %2591 = fmul fast float %2590, 5.000000e-01
  %2592 = fsub fast float %2587, %2589
  %2593 = fmul fast float %2592, 5.000000e-01
  %2594 = call float @dx.op.unary.f32(i32 6, float %2591)  ; FAbs(value)
  %2595 = fsub fast float 1.000000e+00, %2594
  %2596 = call float @dx.op.unary.f32(i32 6, float %2593)  ; FAbs(value)
  %2597 = fsub fast float %2595, %2596
  %2598 = call float @dx.op.dot3.f32(i32 55, float %2591, float %2593, float %2597, float %2591, float %2593, float %2597)  ; Dot3(ax,ay,az,bx,by,bz)
  %2599 = call float @dx.op.unary.f32(i32 25, float %2598)  ; Rsqrt(value)
  %2600 = fmul fast float %2591, %2599
  %2601 = fmul fast float %2593, %2599
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = and i32 %2603, 67108864
  %2605 = icmp eq i32 %2604, 0
  br i1 %2605, label %2622, label %2606

; <label>:2606                                    ; preds = %2554
  %2607 = add i32 %49, 312
  %2608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2607, i32 undef)  ; BufferLoad(srv,index,wot)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 65535
  %2611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2610)  ; LegacyF16ToF32(value)
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2049, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 65535
  %2615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2614)  ; LegacyF16ToF32(value)
  %2616 = lshr i32 %2609, 16
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = fsub fast float %2579, %2617
  %2619 = fmul fast float %2618, %2611
  %2620 = fadd fast float %2619, %2615
  %2621 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  br label %2622

; <label>:2622                                    ; preds = %2606, %2554
  %2623 = phi float [ %2621, %2606 ], [ %2579, %2554 ]
  %2624 = call float @dx.op.dot2.f32(i32 54, float %2600, float %2601, float %2043, float %2044)  ; Dot2(ax,ay,bx,by)
  %2625 = call float @dx.op.dot2.f32(i32 54, float %2600, float %2601, float %2045, float %2046)  ; Dot2(ax,ay,bx,by)
  br label %2626

; <label>:2626                                    ; preds = %2622, %2532
  %2627 = phi float [ %2623, %2622 ], [ 0x3FD6666660000000, %2532 ]
  %2628 = phi float [ %2624, %2622 ], [ 0.000000e+00, %2532 ]
  %2629 = phi float [ %2625, %2622 ], [ 0.000000e+00, %2532 ]
  %2630 = phi float [ %2566, %2622 ], [ 1.000000e+00, %2532 ]
  %2631 = add i32 %49, 192
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 22
  %2635 = shl nuw nsw i32 %2634, 5
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = and i32 %2638, 64
  %2640 = icmp eq i32 %2639, 0
  br i1 %2640, label %2674, label %2641

; <label>:2641                                    ; preds = %2626
  %2642 = add i32 %49, 448
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = add i32 %2644, 0
  %2646 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2645, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2648 = extractvalue %dx.types.ResRet.i32 %2647, 0
  %2649 = and i32 %2648, 131072
  %2650 = icmp eq i32 %2649, 0
  %2651 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2646, %dx.types.Handle %88, float %2139, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2652 = extractvalue %dx.types.ResRet.f32 %2651, 0
  %2653 = extractvalue %dx.types.ResRet.f32 %2651, 1
  %2654 = extractvalue %dx.types.ResRet.f32 %2651, 2
  %2655 = fmul fast float %2652, %487
  %2656 = fmul fast float %2653, %490
  %2657 = fmul fast float %2654, %493
  br i1 %2650, label %2664, label %2658

; <label>:2658                                    ; preds = %2641
  %2659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2660 = extractvalue %dx.types.CBufRet.f32 %2659, 0
  %2661 = fmul fast float %2660, %2655
  %2662 = fmul fast float %2660, %2656
  %2663 = fmul fast float %2660, %2657
  br label %2664

; <label>:2664                                    ; preds = %2658, %2641
  %2665 = phi float [ %2661, %2658 ], [ %2655, %2641 ]
  %2666 = phi float [ %2662, %2658 ], [ %2656, %2641 ]
  %2667 = phi float [ %2663, %2658 ], [ %2657, %2641 ]
  %2668 = fmul fast float %2665, %2636
  %2669 = select i1 %397, float %2668, float %2665
  %2670 = call float @dx.op.dot3.f32(i32 55, float %2669, float %2666, float %2667, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2671 = select i1 %397, float 0.000000e+00, float %2665
  %2672 = select i1 %397, float %2670, float %2666
  %2673 = select i1 %397, float 0.000000e+00, float %2667
  br label %2674

; <label>:2674                                    ; preds = %2664, %2626
  %2675 = phi float [ %2671, %2664 ], [ 0.000000e+00, %2626 ]
  %2676 = phi float [ %2672, %2664 ], [ 0.000000e+00, %2626 ]
  %2677 = phi float [ %2673, %2664 ], [ 0.000000e+00, %2626 ]
  %2678 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2679 = extractvalue %dx.types.ResRet.i32 %2678, 0
  %2680 = and i32 %2679, 26624
  %2681 = icmp eq i32 %2680, 0
  br i1 %2681, label %2705, label %2682

; <label>:2682                                    ; preds = %2674
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = and i32 %2684, 16384
  %2686 = icmp eq i32 %2685, 0
  br i1 %2686, label %2705, label %2687

; <label>:2687                                    ; preds = %2682
  %2688 = and i32 %2684, 1048576
  %2689 = icmp ne i32 %2688, 0
  %2690 = add i32 %49, 512
  %2691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2690, i32 undef)  ; BufferLoad(srv,index,wot)
  %2692 = extractvalue %dx.types.ResRet.i32 %2691, 0
  %2693 = add i32 %2692, 0
  %2694 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2693, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2695 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2694, %dx.types.Handle %89, float %2139, float %2140, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2696 = extractvalue %dx.types.ResRet.f32 %2695, 0
  %2697 = add i32 %49, 128
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = lshr i32 %2699, 24
  %2701 = uitofp i32 %2700 to float
  %2702 = fmul fast float %2696, 0x3F70101020000000
  %2703 = select i1 %2689, float 0x3F70101020000000, float %2702
  %2704 = fmul fast float %2703, %2701
  br label %2705

; <label>:2705                                    ; preds = %2687, %2682, %2674
  %2706 = phi float [ %2704, %2687 ], [ 0.000000e+00, %2682 ], [ 0.000000e+00, %2674 ]
  %2707 = add i32 %49, 128
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %2709, 255
  %2711 = uitofp i32 %2710 to float
  %2712 = lshr i32 %2709, 8
  %2713 = and i32 %2712, 255
  %2714 = uitofp i32 %2713 to float
  %2715 = call float @dx.op.dot3.f32(i32 55, float %2547, float %2548, float %2549, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2716 = fmul fast float %2714, %2715
  %2717 = fadd fast float %2716, %2711
  %2718 = fmul fast float %2717, 0x3F70101020000000
  %2719 = call float @dx.op.unary.f32(i32 7, float %2718)  ; Saturate(value)
  br i1 %2031, label %2720, label %2728

; <label>:2720                                    ; preds = %2705
  %2721 = fsub fast float 1.000000e+00, %2327
  %2722 = fmul fast float %2721, %2019
  %2723 = fmul fast float %2721, %2020
  %2724 = fmul fast float %2721, %2021
  %2725 = fmul fast float %2721, %2022
  %2726 = fmul fast float %2721, %2023
  %2727 = fmul fast float %2721, %2024
  br label %2728

; <label>:2728                                    ; preds = %2720, %2705
  %2729 = phi float [ %2722, %2720 ], [ %2019, %2705 ]
  %2730 = phi float [ %2723, %2720 ], [ %2020, %2705 ]
  %2731 = phi float [ %2724, %2720 ], [ %2021, %2705 ]
  %2732 = phi float [ %2725, %2720 ], [ %2022, %2705 ]
  %2733 = phi float [ %2726, %2720 ], [ %2023, %2705 ]
  %2734 = phi float [ %2727, %2720 ], [ %2024, %2705 ]
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = and i32 %2736, 3
  %2738 = icmp eq i32 %2737, 3
  br i1 %2738, label %2817, label %2739

; <label>:2739                                    ; preds = %2728
  %2740 = and i32 %2736, 16
  %2741 = icmp ne i32 %2740, 0
  %2742 = select i1 %2741, float %2327, float 0.000000e+00
  %2743 = icmp eq i32 %2737, 0
  br i1 %2743, label %2744, label %2772

; <label>:2744                                    ; preds = %2739
  %2745 = and i32 %2736, 64
  %2746 = icmp ne i32 %2745, 0
  %2747 = select i1 %2746, float %2327, float 0.000000e+00
  %2748 = fsub fast float %2547, %2729
  %2749 = fsub fast float %2548, %2730
  %2750 = fsub fast float %2549, %2731
  %2751 = fmul fast float %2742, %2748
  %2752 = fmul fast float %2742, %2749
  %2753 = fmul fast float %2742, %2750
  %2754 = fadd fast float %2751, %2729
  %2755 = fadd fast float %2752, %2730
  %2756 = fadd fast float %2753, %2731
  %2757 = fsub fast float %2533, %2025
  %2758 = fmul fast float %2742, %2757
  %2759 = fadd fast float %2758, %2025
  %2760 = fsub fast float %2675, %2732
  %2761 = fsub fast float %2676, %2733
  %2762 = fsub fast float %2677, %2734
  %2763 = fmul fast float %2747, %2760
  %2764 = fmul fast float %2747, %2761
  %2765 = fmul fast float %2747, %2762
  %2766 = fadd fast float %2763, %2732
  %2767 = fadd fast float %2764, %2733
  %2768 = fadd fast float %2765, %2734
  %2769 = fsub fast float %2719, %2029
  %2770 = fmul fast float %2742, %2769
  %2771 = fadd fast float %2770, %2029
  br label %2817

; <label>:2772                                    ; preds = %2739
  %2773 = icmp eq i32 %2737, 1
  br i1 %2773, label %2774, label %2787

; <label>:2774                                    ; preds = %2772
  %2775 = fadd fast float %2547, -1.000000e+00
  %2776 = fadd fast float %2548, -1.000000e+00
  %2777 = fadd fast float %2549, -1.000000e+00
  %2778 = fmul fast float %2742, %2775
  %2779 = fmul fast float %2742, %2776
  %2780 = fmul fast float %2742, %2777
  %2781 = fadd fast float %2778, 1.000000e+00
  %2782 = fadd fast float %2779, 1.000000e+00
  %2783 = fadd fast float %2780, 1.000000e+00
  %2784 = fmul fast float %2781, %2729
  %2785 = fmul fast float %2782, %2730
  %2786 = fmul fast float %2783, %2731
  br label %2817

; <label>:2787                                    ; preds = %2772
  %2788 = icmp eq i32 %2737, 2
  br i1 %2788, label %2789, label %2817

; <label>:2789                                    ; preds = %2787
  %2790 = call float @dx.op.unary.f32(i32 24, float %2547)  ; Sqrt(value)
  %2791 = call float @dx.op.unary.f32(i32 24, float %2548)  ; Sqrt(value)
  %2792 = call float @dx.op.unary.f32(i32 24, float %2549)  ; Sqrt(value)
  %2793 = fadd fast float %2790, -5.000000e-01
  %2794 = fadd fast float %2791, -5.000000e-01
  %2795 = fadd fast float %2792, -5.000000e-01
  %2796 = fmul fast float %2793, %2742
  %2797 = fmul fast float %2794, %2742
  %2798 = fmul fast float %2795, %2742
  %2799 = fadd fast float %2796, 5.000000e-01
  %2800 = fadd fast float %2797, 5.000000e-01
  %2801 = fadd fast float %2798, 5.000000e-01
  %2802 = fmul fast float %2799, 2.000000e+00
  %2803 = fsub fast float 1.000000e+00, %2802
  %2804 = fmul fast float %2803, %2729
  %2805 = fadd fast float %2804, %2802
  %2806 = fmul fast float %2805, %2729
  %2807 = fmul fast float %2800, 2.000000e+00
  %2808 = fsub fast float 1.000000e+00, %2807
  %2809 = fmul fast float %2808, %2730
  %2810 = fadd fast float %2809, %2807
  %2811 = fmul fast float %2810, %2730
  %2812 = fmul fast float %2801, 2.000000e+00
  %2813 = fsub fast float 1.000000e+00, %2812
  %2814 = fmul fast float %2813, %2731
  %2815 = fadd fast float %2814, %2812
  %2816 = fmul fast float %2815, %2731
  br label %2817

; <label>:2817                                    ; preds = %2789, %2787, %2774, %2744, %2728
  %2818 = phi float [ %2729, %2728 ], [ %2806, %2789 ], [ %2729, %2787 ], [ %2784, %2774 ], [ %2754, %2744 ]
  %2819 = phi float [ %2730, %2728 ], [ %2811, %2789 ], [ %2730, %2787 ], [ %2785, %2774 ], [ %2755, %2744 ]
  %2820 = phi float [ %2731, %2728 ], [ %2816, %2789 ], [ %2731, %2787 ], [ %2786, %2774 ], [ %2756, %2744 ]
  %2821 = phi float [ %2732, %2728 ], [ %2732, %2789 ], [ %2732, %2787 ], [ %2732, %2774 ], [ %2766, %2744 ]
  %2822 = phi float [ %2733, %2728 ], [ %2733, %2789 ], [ %2733, %2787 ], [ %2733, %2774 ], [ %2767, %2744 ]
  %2823 = phi float [ %2734, %2728 ], [ %2734, %2789 ], [ %2734, %2787 ], [ %2734, %2774 ], [ %2768, %2744 ]
  %2824 = phi float [ %2025, %2728 ], [ %2025, %2789 ], [ %2025, %2787 ], [ %2025, %2774 ], [ %2759, %2744 ]
  %2825 = phi float [ %2029, %2728 ], [ %2029, %2789 ], [ %2029, %2787 ], [ %2029, %2774 ], [ %2771, %2744 ]
  %2826 = and i32 %2736, 12
  %2827 = icmp eq i32 %2826, 12
  br i1 %2827, label %2910, label %2828

; <label>:2828                                    ; preds = %2817
  %2829 = and i32 %2736, 2097184
  %2830 = icmp eq i32 %2829, 2097184
  %2831 = select i1 %2830, float %2327, float 0.000000e+00
  %2832 = and i32 %2736, 4194336
  %2833 = icmp eq i32 %2832, 4194336
  %2834 = select i1 %2833, float %2327, float 0.000000e+00
  %2835 = and i32 %2736, 8388640
  %2836 = icmp eq i32 %2835, 8388640
  %2837 = select i1 %2836, float %2327, float 0.000000e+00
  %2838 = and i32 %2736, 16384
  %2839 = icmp ne i32 %2838, 0
  %2840 = select i1 %2839, float %2327, float 0.000000e+00
  %2841 = icmp eq i32 %2826, 0
  br i1 %2841, label %2842, label %2858

; <label>:2842                                    ; preds = %2828
  %2843 = fsub fast float %2628, %2017
  %2844 = fsub fast float %2629, %2018
  %2845 = fmul fast float %2831, %2843
  %2846 = fmul fast float %2831, %2844
  %2847 = fadd fast float %2845, %2017
  %2848 = fadd fast float %2846, %2018
  %2849 = fsub fast float %2630, %2027
  %2850 = fmul fast float %2834, %2849
  %2851 = fadd fast float %2850, %2027
  %2852 = fsub fast float %2627, %2026
  %2853 = fmul fast float %2837, %2852
  %2854 = fadd fast float %2853, %2026
  %2855 = fsub fast float %2706, %2028
  %2856 = fmul fast float %2840, %2855
  %2857 = fadd fast float %2856, %2028
  br label %2910

; <label>:2858                                    ; preds = %2828
  %2859 = icmp eq i32 %2826, 4
  br i1 %2859, label %2860, label %2894

; <label>:2860                                    ; preds = %2858
  %2861 = fmul fast float %2831, %2628
  %2862 = fmul fast float %2831, %2629
  %2863 = fadd fast float %2861, %2017
  %2864 = fadd fast float %2862, %2018
  %2865 = call float @dx.op.binary.f32(i32 36, float %2027, float %2630)  ; FMin(a,b)
  %2866 = fsub fast float %2865, %2027
  %2867 = fmul fast float %2866, %2834
  %2868 = fadd fast float %2867, %2027
  %2869 = fadd fast float %2627, %2026
  %2870 = fmul fast float %2869, 0x3FF337FAE0000000
  %2871 = fmul fast float %2026, %2026
  %2872 = fmul fast float %2627, %2627
  %2873 = fadd fast float %2872, %2871
  %2874 = fmul fast float %2873, 0x3FE5152B00000000
  %2875 = fmul fast float %2026, 0xBFCC1F85E0000000
  %2876 = fmul fast float %2875, %2627
  %2877 = fadd fast float %2876, 0xBFE1363700000000
  %2878 = fadd fast float %2877, %2870
  %2879 = fsub fast float %2878, %2874
  %2880 = fmul fast float %2869, 0x3FBA6F0D00000000
  %2881 = fmul fast float %2873, 0x3FD0432880000000
  %2882 = fmul fast float %2026, 0xBFEF110800000000
  %2883 = fmul fast float %2882, %2627
  %2884 = fadd fast float %2883, 1.000000e+00
  %2885 = fsub fast float %2884, %2880
  %2886 = fadd fast float %2885, %2881
  %2887 = fdiv fast float %2879, %2886
  %2888 = call float @dx.op.unary.f32(i32 7, float %2887)  ; Saturate(value)
  %2889 = fsub fast float %2888, %2026
  %2890 = fmul fast float %2889, %2837
  %2891 = fadd fast float %2890, %2026
  %2892 = fmul fast float %2840, %2706
  %2893 = fadd fast float %2892, %2028
  br label %2910

; <label>:2894                                    ; preds = %2858
  %2895 = icmp eq i32 %2826, 8
  br i1 %2895, label %2896, label %2910

; <label>:2896                                    ; preds = %2894
  %2897 = fmul fast float %2831, %2628
  %2898 = fmul fast float %2831, %2629
  %2899 = fadd fast float %2897, %2017
  %2900 = fadd fast float %2898, %2018
  %2901 = call float @dx.op.binary.f32(i32 36, float %2027, float %2630)  ; FMin(a,b)
  %2902 = fsub fast float %2901, %2027
  %2903 = fmul fast float %2902, %2834
  %2904 = fadd fast float %2903, %2027
  %2905 = fsub fast float %2627, %2026
  %2906 = fmul fast float %2837, %2905
  %2907 = fadd fast float %2906, %2026
  %2908 = fmul fast float %2840, %2706
  %2909 = fadd fast float %2908, %2028
  br label %2910

; <label>:2910                                    ; preds = %2896, %2894, %2860, %2842, %2817, %2326, %2030, %2016
  %2911 = phi float [ %2017, %2817 ], [ %2017, %2326 ], [ %2017, %2016 ], [ %2899, %2896 ], [ %2017, %2894 ], [ %2863, %2860 ], [ %2847, %2842 ], [ %2017, %2030 ]
  %2912 = phi float [ %2018, %2817 ], [ %2018, %2326 ], [ %2018, %2016 ], [ %2900, %2896 ], [ %2018, %2894 ], [ %2864, %2860 ], [ %2848, %2842 ], [ %2018, %2030 ]
  %2913 = phi float [ %2818, %2817 ], [ %2019, %2326 ], [ %2019, %2016 ], [ %2818, %2896 ], [ %2818, %2894 ], [ %2818, %2860 ], [ %2818, %2842 ], [ %2019, %2030 ]
  %2914 = phi float [ %2819, %2817 ], [ %2020, %2326 ], [ %2020, %2016 ], [ %2819, %2896 ], [ %2819, %2894 ], [ %2819, %2860 ], [ %2819, %2842 ], [ %2020, %2030 ]
  %2915 = phi float [ %2820, %2817 ], [ %2021, %2326 ], [ %2021, %2016 ], [ %2820, %2896 ], [ %2820, %2894 ], [ %2820, %2860 ], [ %2820, %2842 ], [ %2021, %2030 ]
  %2916 = phi float [ %2821, %2817 ], [ %2022, %2326 ], [ %2022, %2016 ], [ %2821, %2896 ], [ %2821, %2894 ], [ %2821, %2860 ], [ %2821, %2842 ], [ %2022, %2030 ]
  %2917 = phi float [ %2822, %2817 ], [ %2023, %2326 ], [ %2023, %2016 ], [ %2822, %2896 ], [ %2822, %2894 ], [ %2822, %2860 ], [ %2822, %2842 ], [ %2023, %2030 ]
  %2918 = phi float [ %2823, %2817 ], [ %2024, %2326 ], [ %2024, %2016 ], [ %2823, %2896 ], [ %2823, %2894 ], [ %2823, %2860 ], [ %2823, %2842 ], [ %2024, %2030 ]
  %2919 = phi float [ %2824, %2817 ], [ %2025, %2326 ], [ %2025, %2016 ], [ %2824, %2896 ], [ %2824, %2894 ], [ %2824, %2860 ], [ %2824, %2842 ], [ %2025, %2030 ]
  %2920 = phi float [ %2026, %2817 ], [ %2026, %2326 ], [ %2026, %2016 ], [ %2907, %2896 ], [ %2026, %2894 ], [ %2891, %2860 ], [ %2854, %2842 ], [ %2026, %2030 ]
  %2921 = phi float [ %2027, %2817 ], [ %2027, %2326 ], [ %2027, %2016 ], [ %2904, %2896 ], [ %2027, %2894 ], [ %2868, %2860 ], [ %2851, %2842 ], [ %2027, %2030 ]
  %2922 = phi float [ %2028, %2817 ], [ %2028, %2326 ], [ %2028, %2016 ], [ %2909, %2896 ], [ %2028, %2894 ], [ %2893, %2860 ], [ %2857, %2842 ], [ %2028, %2030 ]
  %2923 = phi float [ %2825, %2817 ], [ %2029, %2326 ], [ %2029, %2016 ], [ %2825, %2896 ], [ %2825, %2894 ], [ %2825, %2860 ], [ %2825, %2842 ], [ %2029, %2030 ]
  br i1 %574, label %3804, label %2924

; <label>:2924                                    ; preds = %2910
  %2925 = icmp ult i32 %625, 4
  %2926 = add i32 %49, 72
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %49, 76
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = or i32 %2931, %2928
  %2933 = icmp eq i32 %2932, 0
  br i1 %2933, label %3804, label %2934

; <label>:2934                                    ; preds = %2924
  %2935 = and i32 %2928, 262144
  %2936 = icmp ne i32 %2935, 0
  %2937 = select i1 %2936, float %52, float 1.000000e+00
  %2938 = select i1 %2936, float %53, float 0.000000e+00
  %2939 = select i1 %2936, float %54, float 0.000000e+00
  %2940 = select i1 %2936, float %55, float 1.000000e+00
  %2941 = select i1 %2936, float %56, float %65
  %2942 = select i1 %2936, float %57, float %66
  %2943 = add i32 %49, 332
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = lshr i32 %2945, 16
  %2947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2946)  ; LegacyF16ToF32(value)
  %2948 = fmul fast float %2947, 0x3F50624DE0000000
  %2949 = add i32 %49, 136
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = lshr i32 %2951, 16
  %2953 = and i32 %2952, 255
  %2954 = lshr i32 %2951, 24
  %2955 = add i32 %49, 340
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, 65535
  %2959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2958)  ; LegacyF16ToF32(value)
  %2960 = lshr i32 %2957, 16
  %2961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2960)  ; LegacyF16ToF32(value)
  %2962 = add i32 %49, 80
  %2963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.i32 %2963, 0
  %2965 = lshr i32 %2964, 22
  %2966 = shl nuw nsw i32 %2965, 5
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = shl i32 %2964, 4
  %2969 = and i32 %2968, 32752
  %2970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2969)  ; LegacyF16ToF32(value)
  %2971 = lshr i32 %2964, 7
  %2972 = and i32 %2971, 32752
  %2973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2972)  ; LegacyF16ToF32(value)
  %2974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2975 = extractvalue %dx.types.CBufRet.f32 %2974, 3
  %2976 = fmul fast float %2975, 1.000000e+03
  %2977 = fmul fast float %564, %2976
  %2978 = call float @dx.op.unary.f32(i32 22, float %2977)  ; Frc(value)
  %2979 = fadd fast float %2978, %554
  %2980 = fmul fast float %565, %2976
  %2981 = call float @dx.op.unary.f32(i32 22, float %2980)  ; Frc(value)
  %2982 = fadd fast float %2981, %556
  %2983 = fmul fast float %2948, %2976
  %2984 = call float @dx.op.unary.f32(i32 22, float %2983)  ; Frc(value)
  %2985 = fmul fast float %2984, 0x401921FB60000000
  %2986 = fadd fast float %2985, %2967
  %2987 = call float @dx.op.unary.f32(i32 13, float %2986)  ; Sin(value)
  %2988 = call float @dx.op.unary.f32(i32 12, float %2986)  ; Cos(value)
  %2989 = fsub fast float -0.000000e+00, %2987
  %2990 = fadd fast float %2941, -5.000000e-01
  %2991 = fadd fast float %2942, -5.000000e-01
  %2992 = fmul fast float %2959, %2990
  %2993 = fmul fast float %2961, %2991
  %2994 = fadd fast float %2992, 5.000000e-01
  %2995 = fadd fast float %2993, 5.000000e-01
  %2996 = fmul fast float %2970, %2994
  %2997 = fmul fast float %2973, %2995
  %2998 = fmul fast float %2988, %2996
  %2999 = call float @dx.op.tertiary.f32(i32 46, float %2989, float %2997, float %2998)  ; FMad(a,b,c)
  %3000 = fmul fast float %2987, %2996
  %3001 = call float @dx.op.tertiary.f32(i32 46, float %2988, float %2997, float %3000)  ; FMad(a,b,c)
  %3002 = fadd fast float %2979, %2999
  %3003 = fadd fast float %2982, %3001
  %3004 = icmp ugt i32 %2953, 1
  %3005 = icmp ugt i32 %2951, 33554431
  %3006 = or i1 %3005, %3004
  br i1 %3006, label %3007, label %3032

; <label>:3007                                    ; preds = %2934
  %3008 = add i32 %49, 276
  %3009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3008, i32 undef)  ; BufferLoad(srv,index,wot)
  %3010 = extractvalue %dx.types.ResRet.i32 %3009, 0
  %3011 = lshr i32 %3010, 16
  %3012 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3011)  ; LegacyF16ToF32(value)
  %3013 = fmul fast float %2975, %3012
  %3014 = call float @dx.op.unary.f32(i32 22, float %3013)  ; Frc(value)
  %3015 = mul nuw nsw i32 %2953, %2954
  %3016 = uitofp i32 %3015 to float
  %3017 = fmul fast float %3014, %3016
  %3018 = call float @dx.op.unary.f32(i32 27, float %3017)  ; Round_ni(value)
  %3019 = fptoui float %3018 to i32
  %3020 = urem i32 %3019, %2953
  %3021 = udiv i32 %3019, %2954
  %3022 = call float @dx.op.unary.f32(i32 22, float %3002)  ; Frc(value)
  %3023 = call float @dx.op.unary.f32(i32 22, float %3003)  ; Frc(value)
  %3024 = uitofp i32 %3020 to float
  %3025 = uitofp i32 %3021 to float
  %3026 = fadd fast float %3022, %3024
  %3027 = fadd fast float %3023, %3025
  %3028 = uitofp i32 %2953 to float
  %3029 = uitofp i32 %2954 to float
  %3030 = fdiv fast float %3026, %3028
  %3031 = fdiv fast float %3027, %3029
  br label %3032

; <label>:3032                                    ; preds = %3007, %2934
  %3033 = phi float [ %3030, %3007 ], [ %3002, %2934 ]
  %3034 = phi float [ %3031, %3007 ], [ %3003, %2934 ]
  %3035 = and i32 %2928, 16777216
  %3036 = icmp eq i32 %3035, 0
  br i1 %3036, label %3146, label %3037

; <label>:3037                                    ; preds = %3032
  %3038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3039 = extractvalue %dx.types.CBufRet.f32 %3038, 0
  %3040 = extractvalue %dx.types.CBufRet.f32 %3038, 1
  %3041 = extractvalue %dx.types.CBufRet.f32 %3038, 2
  %3042 = fadd fast float %3039, %147
  %3043 = fadd fast float %3040, %148
  %3044 = fadd fast float %3041, %149
  %3045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3046 = extractvalue %dx.types.CBufRet.f32 %3045, 0
  %3047 = call float @dx.op.unary.f32(i32 7, float %3046)  ; Saturate(value)
  %3048 = icmp eq i32 %50, 65535
  br i1 %3048, label %3143, label %3049

; <label>:3049                                    ; preds = %3037
  %3050 = lshr i32 %50, 1
  %3051 = shl i32 %3050, 2
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = and i32 %50, 1
  %3055 = icmp ne i32 %3054, 0
  %3056 = lshr i32 %3053, 16
  %3057 = and i32 %3053, 65535
  %3058 = select i1 %3055, i32 %3056, i32 %3057
  %3059 = icmp eq i32 %3058, 65535
  br i1 %3059, label %3139, label %3060

; <label>:3060                                    ; preds = %3049
  %3061 = mul nuw nsw i32 %3058, 40
  %3062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.f32 %3062, 0
  %3064 = extractvalue %dx.types.ResRet.f32 %3062, 1
  %3065 = extractvalue %dx.types.ResRet.f32 %3062, 2
  %3066 = add nuw nsw i32 %3061, 12
  %3067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3066, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.f32 %3067, 0
  %3069 = extractvalue %dx.types.ResRet.f32 %3067, 1
  %3070 = extractvalue %dx.types.ResRet.f32 %3067, 2
  %3071 = add nuw nsw i32 %3061, 24
  %3072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3071, i32 undef)  ; BufferLoad(srv,index,wot)
  %3073 = extractvalue %dx.types.ResRet.f32 %3072, 0
  %3074 = extractvalue %dx.types.ResRet.f32 %3072, 1
  %3075 = extractvalue %dx.types.ResRet.f32 %3072, 2
  %3076 = add nuw nsw i32 %3061, 36
  %3077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3078 = extractvalue %dx.types.ResRet.f32 %3077, 0
  %3079 = fsub fast float %3042, %3063
  %3080 = fsub fast float %3043, %3064
  %3081 = fsub fast float %3044, %3065
  %3082 = fmul fast float %3078, %3079
  %3083 = fmul fast float %3078, %3080
  %3084 = fmul fast float %3078, %3081
  %3085 = call float @dx.op.unary.f32(i32 27, float %3082)  ; Round_ni(value)
  %3086 = call float @dx.op.unary.f32(i32 27, float %3083)  ; Round_ni(value)
  %3087 = call float @dx.op.unary.f32(i32 27, float %3084)  ; Round_ni(value)
  %3088 = fadd fast float %3085, 5.000000e-01
  %3089 = fadd fast float %3086, 5.000000e-01
  %3090 = fadd fast float %3087, 5.000000e-01
  %3091 = fmul fast float %3088, %3068
  %3092 = fmul fast float %3089, %3069
  %3093 = fmul fast float %3090, %3070
  %3094 = shl i32 %50, 2
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = add i32 %3096, 0
  %3098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3099 = call float @dx.op.unary.f32(i32 22, float %3091)  ; Frc(value)
  %3100 = call float @dx.op.unary.f32(i32 22, float %3092)  ; Frc(value)
  %3101 = call float @dx.op.unary.f32(i32 22, float %3093)  ; Frc(value)
  %3102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3098, %dx.types.Handle %46, float %3099, float %3100, float %3101, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3103 = extractvalue %dx.types.ResRet.f32 %3102, 0
  %3104 = extractvalue %dx.types.ResRet.f32 %3102, 1
  %3105 = extractvalue %dx.types.ResRet.f32 %3102, 2
  %3106 = fmul fast float %3103, 1.023000e+03
  %3107 = fmul fast float %3104, 1.023000e+03
  %3108 = fmul fast float %3105, 1.023000e+03
  %3109 = fadd fast float %3106, 5.000000e-01
  %3110 = fadd fast float %3107, 5.000000e-01
  %3111 = fadd fast float %3108, 5.000000e-01
  %3112 = call float @dx.op.unary.f32(i32 27, float %3109)  ; Round_ni(value)
  %3113 = call float @dx.op.unary.f32(i32 27, float %3110)  ; Round_ni(value)
  %3114 = call float @dx.op.unary.f32(i32 27, float %3111)  ; Round_ni(value)
  %3115 = fsub fast float %3082, %3085
  %3116 = fsub fast float %3083, %3086
  %3117 = fsub fast float %3084, %3087
  %3118 = fmul fast float %3115, 7.500000e-01
  %3119 = fmul fast float %3116, 7.500000e-01
  %3120 = fmul fast float %3117, 7.500000e-01
  %3121 = fadd fast float %3085, 1.250000e-01
  %3122 = fadd fast float %3121, %3118
  %3123 = fadd fast float %3122, %3112
  %3124 = fadd fast float %3086, 1.250000e-01
  %3125 = fadd fast float %3124, %3119
  %3126 = fadd fast float %3125, %3113
  %3127 = fadd fast float %3087, 1.250000e-01
  %3128 = fadd fast float %3127, %3120
  %3129 = fadd fast float %3128, %3114
  %3130 = fmul fast float %3123, %3073
  %3131 = fmul fast float %3126, %3074
  %3132 = fmul fast float %3129, %3075
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = add i32 %3134, 0
  %3136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3136, %dx.types.Handle %44, float %3130, float %3131, float %3132, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  br label %3139

; <label>:3139                                    ; preds = %3060, %3049
  %3140 = phi float [ %3138, %3060 ], [ -1.000000e+00, %3049 ]
  %3141 = fadd fast float %3140, %3047
  %3142 = call float @dx.op.unary.f32(i32 7, float %3141)  ; Saturate(value)
  br label %3143

; <label>:3143                                    ; preds = %3139, %3037
  %3144 = phi float [ %3142, %3139 ], [ %3047, %3037 ]
  %3145 = fmul fast float %3144, %620
  br label %3146

; <label>:3146                                    ; preds = %3143, %3032
  %3147 = phi float [ %3145, %3143 ], [ %620, %3032 ]
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 256
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3198, label %3152

; <label>:3152                                    ; preds = %3146
  %3153 = add i32 %49, 484
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = add i32 %3155, 0
  %3157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3157, %dx.types.Handle %89, float %3033, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  %3160 = add i32 %49, 148
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3160, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = shl i32 %3162, 4
  %3164 = and i32 %3163, 32752
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = lshr i32 %3162, 7
  %3167 = and i32 %3166, 32752
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = fsub fast float 1.000000e+00, %3147
  %3170 = call float @dx.op.binary.f32(i32 35, float %3169, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3171 = bitcast float %3147 to i32
  %3172 = sitofp i32 %3171 to float
  %3173 = fadd fast float %3172, 0xC1CFBF8940000000
  %3174 = fmul fast float %3168, %3173
  %3175 = fadd fast float %3174, 0x41CFBF8940000000
  %3176 = fptosi float %3175 to i32
  %3177 = bitcast i32 %3176 to float
  %3178 = bitcast float %3170 to i32
  %3179 = sitofp i32 %3178 to float
  %3180 = fadd fast float %3179, 0xC1CFBF8940000000
  %3181 = fmul fast float %3180, %3168
  %3182 = fadd fast float %3181, 0x41CFBF8940000000
  %3183 = fptosi float %3182 to i32
  %3184 = bitcast i32 %3183 to float
  %3185 = fmul fast float %3177, %3165
  %3186 = fmul fast float %3184, %3165
  %3187 = fsub fast float %3170, %3185
  %3188 = fadd fast float %3186, %3170
  %3189 = call float @dx.op.unary.f32(i32 7, float %3187)  ; Saturate(value)
  %3190 = call float @dx.op.unary.f32(i32 7, float %3188)  ; Saturate(value)
  %3191 = fsub fast float %3159, %3189
  %3192 = fsub fast float %3190, %3189
  %3193 = bitcast float %3192 to i32
  %3194 = sub nsw i32 2129859010, %3193
  %3195 = bitcast i32 %3194 to float
  %3196 = fmul fast float %3195, %3191
  %3197 = call float @dx.op.unary.f32(i32 7, float %3196)  ; Saturate(value)
  br label %3198

; <label>:3198                                    ; preds = %3152, %3146
  %3199 = phi float [ %3197, %3152 ], [ %3147, %3146 ]
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 128
  %3203 = icmp eq i32 %3202, 0
  br i1 %3203, label %3220, label %3204

; <label>:3204                                    ; preds = %3198
  %3205 = add i32 %49, 468
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3205, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = add i32 %3207, 0
  %3209 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3208, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3210 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3209, %dx.types.Handle %89, float %3033, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3211 = extractvalue %dx.types.ResRet.f32 %3210, 0
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = and i32 %3213, 524288
  %3215 = icmp ne i32 %3214, 0
  %3216 = fcmp fast ogt float %3211, 0x3FE0101020000000
  %3217 = select i1 %3216, float 1.000000e+00, float 0.000000e+00
  %3218 = select i1 %3215, float %3217, float %3211
  %3219 = fmul fast float %3218, %3199
  br label %3220

; <label>:3220                                    ; preds = %3204, %3198
  %3221 = phi float [ %3219, %3204 ], [ %3199, %3198 ]
  %3222 = fcmp fast ult float %3221, 0x3F70101020000000
  br i1 %3222, label %3804, label %3223

; <label>:3223                                    ; preds = %3220
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = and i32 %3225, 16
  %3227 = icmp eq i32 %3226, 0
  br i1 %3227, label %3426, label %3228

; <label>:3228                                    ; preds = %3223
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = add i32 %49, 420
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3231, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = add i32 %3233, 0
  %3235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3235, %dx.types.Handle %88, float %3033, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3237 = extractvalue %dx.types.ResRet.f32 %3236, 0
  %3238 = extractvalue %dx.types.ResRet.f32 %3236, 1
  %3239 = extractvalue %dx.types.ResRet.f32 %3236, 2
  %3240 = extractvalue %dx.types.ResRet.f32 %3236, 3
  %3241 = and i32 %3230, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = lshr i32 %3230, 8
  %3244 = and i32 %3243, 255
  %3245 = uitofp i32 %3244 to float
  %3246 = fmul fast float %3240, %3242
  %3247 = fadd fast float %3246, %3245
  %3248 = fmul fast float %3247, 0x3F70101000000000
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = and i32 %3250, 512
  %3252 = icmp eq i32 %3251, 0
  br i1 %3252, label %3261, label %3253

; <label>:3253                                    ; preds = %3228
  %3254 = add i32 %49, 500
  %3255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3254, i32 undef)  ; BufferLoad(srv,index,wot)
  %3256 = extractvalue %dx.types.ResRet.i32 %3255, 0
  %3257 = add i32 %3256, 0
  %3258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3258, %dx.types.Handle %89, float %3033, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3260 = extractvalue %dx.types.ResRet.f32 %3259, 0
  br label %3261

; <label>:3261                                    ; preds = %3253, %3228
  %3262 = phi float [ %3260, %3253 ], [ 1.000000e+00, %3228 ]
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = and i32 %3264, 33554432
  %3266 = icmp eq i32 %3265, 0
  br i1 %3266, label %3373, label %3267

; <label>:3267                                    ; preds = %3261
  %3268 = add i32 %49, 272
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = and i32 %3270, 65535
  %3272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3271)  ; LegacyF16ToF32(value)
  %3273 = lshr i32 %3270, 16
  %3274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3273)  ; LegacyF16ToF32(value)
  %3275 = add i32 %49, 276
  %3276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3275, i32 undef)  ; BufferLoad(srv,index,wot)
  %3277 = extractvalue %dx.types.ResRet.i32 %3276, 0
  %3278 = and i32 %3277, 65535
  %3279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3278)  ; LegacyF16ToF32(value)
  %3280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3281 = extractvalue %dx.types.ResRet.i32 %3280, 0
  %3282 = lshr i32 %3281, 24
  %3283 = uitofp i32 %3282 to float
  %3284 = fmul fast float %3283, 0x3F70101020000000
  %3285 = and i32 %3281, 255
  %3286 = uitofp i32 %3285 to float
  %3287 = fmul fast float %3286, 0x3F70101020000000
  %3288 = lshr i32 %3281, 8
  %3289 = and i32 %3288, 255
  %3290 = uitofp i32 %3289 to float
  %3291 = fmul fast float %3290, 0x3F70101020000000
  %3292 = lshr i32 %3281, 16
  %3293 = and i32 %3292, 255
  %3294 = uitofp i32 %3293 to float
  %3295 = fmul fast float %3294, 0x3F70101020000000
  %3296 = add i32 %49, 268
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = lshr i32 %3298, 24
  %3300 = uitofp i32 %3299 to float
  %3301 = fmul fast float %3300, 0x3F70101020000000
  %3302 = and i32 %3298, 255
  %3303 = uitofp i32 %3302 to float
  %3304 = fmul fast float %3303, 0x3F70101020000000
  %3305 = lshr i32 %3298, 8
  %3306 = and i32 %3305, 255
  %3307 = uitofp i32 %3306 to float
  %3308 = fmul fast float %3307, 0x3F70101020000000
  %3309 = lshr i32 %3298, 16
  %3310 = and i32 %3309, 255
  %3311 = uitofp i32 %3310 to float
  %3312 = fmul fast float %3311, 0x3F70101020000000
  %3313 = bitcast float %3237 to i32
  %3314 = ashr i32 %3313, 1
  %3315 = sub nsw i32 1597463174, %3314
  %3316 = bitcast i32 %3315 to float
  %3317 = fmul fast float %3237, 5.000000e-01
  %3318 = fmul fast float %3316, %3316
  %3319 = fmul fast float %3318, %3317
  %3320 = fsub fast float 1.500000e+00, %3319
  %3321 = fmul fast float %3316, %3237
  %3322 = fmul fast float %3321, %3320
  %3323 = bitcast float %3238 to i32
  %3324 = ashr i32 %3323, 1
  %3325 = sub nsw i32 1597463174, %3324
  %3326 = bitcast i32 %3325 to float
  %3327 = fmul fast float %3238, 5.000000e-01
  %3328 = fmul fast float %3326, %3326
  %3329 = fmul fast float %3328, %3327
  %3330 = fsub fast float 1.500000e+00, %3329
  %3331 = fmul fast float %3326, %3238
  %3332 = fmul fast float %3331, %3330
  %3333 = bitcast float %3239 to i32
  %3334 = ashr i32 %3333, 1
  %3335 = sub nsw i32 1597463174, %3334
  %3336 = bitcast i32 %3335 to float
  %3337 = fmul fast float %3239, 5.000000e-01
  %3338 = fmul fast float %3336, %3336
  %3339 = fmul fast float %3338, %3337
  %3340 = fsub fast float 1.500000e+00, %3339
  %3341 = fmul fast float %3336, %3239
  %3342 = fmul fast float %3341, %3340
  %3343 = fsub fast float %3322, %3304
  %3344 = fsub fast float %3332, %3308
  %3345 = fsub fast float %3342, %3312
  %3346 = fmul fast float %3343, %3272
  %3347 = fmul fast float %3344, %3274
  %3348 = fmul fast float %3345, %3279
  %3349 = fadd fast float %3346, %3287
  %3350 = fadd fast float %3347, %3291
  %3351 = fadd fast float %3348, %3295
  %3352 = call float @dx.op.unary.f32(i32 7, float %3349)  ; Saturate(value)
  %3353 = call float @dx.op.unary.f32(i32 7, float %3350)  ; Saturate(value)
  %3354 = call float @dx.op.unary.f32(i32 7, float %3351)  ; Saturate(value)
  %3355 = fmul fast float %3352, %3352
  %3356 = fmul fast float %3353, %3353
  %3357 = fmul fast float %3354, %3354
  %3358 = fsub fast float %3355, %3237
  %3359 = fsub fast float %3356, %3238
  %3360 = fsub fast float %3357, %3239
  %3361 = fmul fast float %3358, %3262
  %3362 = fmul fast float %3359, %3262
  %3363 = fmul fast float %3360, %3262
  %3364 = fadd fast float %3361, %3237
  %3365 = fadd fast float %3362, %3238
  %3366 = fadd fast float %3363, %3239
  %3367 = fadd fast float %3284, %3248
  %3368 = fsub fast float %3367, %3301
  %3369 = call float @dx.op.unary.f32(i32 7, float %3368)  ; Saturate(value)
  %3370 = fsub fast float %3369, %3248
  %3371 = fmul fast float %3370, %3262
  %3372 = fadd fast float %3371, %3248
  br label %3426

; <label>:3373                                    ; preds = %3261
  %3374 = and i32 %3264, 134217728
  %3375 = icmp eq i32 %3374, 0
  br i1 %3375, label %3410, label %3376

; <label>:3376                                    ; preds = %3373
  %3377 = call float @dx.op.unary.f32(i32 24, float %541)  ; Sqrt(value)
  %3378 = call float @dx.op.unary.f32(i32 24, float %545)  ; Sqrt(value)
  %3379 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %3380 = fadd fast float %3377, -5.000000e-01
  %3381 = fadd fast float %3378, -5.000000e-01
  %3382 = fadd fast float %3379, -5.000000e-01
  %3383 = fmul fast float %3380, %3262
  %3384 = fmul fast float %3381, %3262
  %3385 = fmul fast float %3382, %3262
  %3386 = fadd fast float %3383, 5.000000e-01
  %3387 = fadd fast float %3384, 5.000000e-01
  %3388 = fadd fast float %3385, 5.000000e-01
  %3389 = call float @dx.op.unary.f32(i32 24, float %3237)  ; Sqrt(value)
  %3390 = call float @dx.op.unary.f32(i32 24, float %3238)  ; Sqrt(value)
  %3391 = call float @dx.op.unary.f32(i32 24, float %3239)  ; Sqrt(value)
  %3392 = fmul fast float %3386, 2.000000e+00
  %3393 = fsub fast float 1.000000e+00, %3392
  %3394 = fmul fast float %3393, %3389
  %3395 = fadd fast float %3394, %3392
  %3396 = fmul fast float %3395, %3389
  %3397 = fmul fast float %3387, 2.000000e+00
  %3398 = fsub fast float 1.000000e+00, %3397
  %3399 = fmul fast float %3398, %3390
  %3400 = fadd fast float %3399, %3397
  %3401 = fmul fast float %3400, %3390
  %3402 = fmul fast float %3388, 2.000000e+00
  %3403 = fsub fast float 1.000000e+00, %3402
  %3404 = fmul fast float %3403, %3391
  %3405 = fadd fast float %3404, %3402
  %3406 = fmul fast float %3405, %3391
  %3407 = fmul fast float %3396, %3396
  %3408 = fmul fast float %3401, %3401
  %3409 = fmul fast float %3406, %3406
  br label %3426

; <label>:3410                                    ; preds = %3373
  %3411 = fmul fast float %541, %541
  %3412 = fmul fast float %545, %545
  %3413 = fmul fast float %549, %549
  %3414 = fadd fast float %3411, -1.000000e+00
  %3415 = fadd fast float %3412, -1.000000e+00
  %3416 = fadd fast float %3413, -1.000000e+00
  %3417 = fmul fast float %3262, %3414
  %3418 = fmul fast float %3262, %3415
  %3419 = fmul fast float %3262, %3416
  %3420 = fadd fast float %3417, 1.000000e+00
  %3421 = fadd fast float %3418, 1.000000e+00
  %3422 = fadd fast float %3419, 1.000000e+00
  %3423 = fmul fast float %3420, %3237
  %3424 = fmul fast float %3421, %3238
  %3425 = fmul fast float %3422, %3239
  br label %3426

; <label>:3426                                    ; preds = %3410, %3376, %3267, %3223
  %3427 = phi float [ %3372, %3267 ], [ %3248, %3376 ], [ %3248, %3410 ], [ 0x3FA23C0BE0000000, %3223 ]
  %3428 = phi float [ %3364, %3267 ], [ %3407, %3376 ], [ %3423, %3410 ], [ 1.000000e+00, %3223 ]
  %3429 = phi float [ %3365, %3267 ], [ %3408, %3376 ], [ %3424, %3410 ], [ 1.000000e+00, %3223 ]
  %3430 = phi float [ %3366, %3267 ], [ %3409, %3376 ], [ %3425, %3410 ], [ 1.000000e+00, %3223 ]
  %3431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3432 = extractvalue %dx.types.CBufRet.i32 %3431, 1
  %3433 = and i32 %3432, 1
  %3434 = icmp ne i32 %3433, 0
  %3435 = add i32 %49, 356
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = and i32 %3437, 32
  %3439 = icmp ne i32 %3438, 0
  %3440 = and i1 %3434, %3439
  %3441 = select i1 %3440, float 1.000000e+00, float %3428
  %3442 = select i1 %3440, float 0x3FD3333340000000, float %3429
  %3443 = select i1 %3440, float 0x3FD3333340000000, float %3430
  %3444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3445 = extractvalue %dx.types.ResRet.i32 %3444, 0
  %3446 = and i32 %3445, 32
  %3447 = icmp eq i32 %3446, 0
  br i1 %3447, label %3520, label %3448

; <label>:3448                                    ; preds = %3426
  %3449 = add i32 %49, 140
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3449, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = add i32 %49, 436
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = add i32 %3454, 0
  %3456 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3455, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3456, %dx.types.Handle %88, float %3033, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3461 = extractvalue %dx.types.ResRet.f32 %3457, 3
  %3462 = and i32 %3451, 255
  %3463 = uitofp i32 %3462 to float
  %3464 = lshr i32 %3451, 8
  %3465 = and i32 %3464, 255
  %3466 = uitofp i32 %3465 to float
  %3467 = lshr i32 %3451, 16
  %3468 = and i32 %3467, 255
  %3469 = uitofp i32 %3468 to float
  %3470 = fmul fast float %3469, 0x3F70101000000000
  %3471 = fmul fast float %3458, %3463
  %3472 = fadd fast float %3471, %3466
  %3473 = fmul fast float %3472, 0x3F70101000000000
  %3474 = fadd fast float %3459, -5.000000e-01
  %3475 = fadd fast float %3461, -5.000000e-01
  %3476 = fmul fast float %3474, %3470
  %3477 = fmul fast float %3475, %3470
  %3478 = fadd fast float %3476, 5.000000e-01
  %3479 = fadd fast float %3477, 5.000000e-01
  %3480 = fmul fast float %3478, 2.000000e+00
  %3481 = fadd fast float %3480, -1.000000e+00
  %3482 = fmul fast float %3479, 2.000000e+00
  %3483 = fadd fast float %3482, -1.000000e+00
  %3484 = fadd fast float %3481, %3483
  %3485 = fmul fast float %3484, 5.000000e-01
  %3486 = fsub fast float %3481, %3483
  %3487 = fmul fast float %3486, 5.000000e-01
  %3488 = call float @dx.op.unary.f32(i32 6, float %3485)  ; FAbs(value)
  %3489 = fsub fast float 1.000000e+00, %3488
  %3490 = call float @dx.op.unary.f32(i32 6, float %3487)  ; FAbs(value)
  %3491 = fsub fast float %3489, %3490
  %3492 = call float @dx.op.dot3.f32(i32 55, float %3485, float %3487, float %3491, float %3485, float %3487, float %3491)  ; Dot3(ax,ay,az,bx,by,bz)
  %3493 = call float @dx.op.unary.f32(i32 25, float %3492)  ; Rsqrt(value)
  %3494 = fmul fast float %3485, %3493
  %3495 = fmul fast float %3487, %3493
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = and i32 %3497, 67108864
  %3499 = icmp eq i32 %3498, 0
  br i1 %3499, label %3516, label %3500

; <label>:3500                                    ; preds = %3448
  %3501 = add i32 %49, 328
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3501, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = and i32 %3503, 65535
  %3505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3504)  ; LegacyF16ToF32(value)
  %3506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %3507 = extractvalue %dx.types.ResRet.i32 %3506, 0
  %3508 = and i32 %3507, 65535
  %3509 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3508)  ; LegacyF16ToF32(value)
  %3510 = lshr i32 %3503, 16
  %3511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3510)  ; LegacyF16ToF32(value)
  %3512 = fsub fast float %3473, %3511
  %3513 = fmul fast float %3512, %3505
  %3514 = fadd fast float %3513, %3509
  %3515 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  br label %3516

; <label>:3516                                    ; preds = %3500, %3448
  %3517 = phi float [ %3515, %3500 ], [ %3473, %3448 ]
  %3518 = call float @dx.op.dot2.f32(i32 54, float %3494, float %3495, float %2937, float %2938)  ; Dot2(ax,ay,bx,by)
  %3519 = call float @dx.op.dot2.f32(i32 54, float %3494, float %3495, float %2939, float %2940)  ; Dot2(ax,ay,bx,by)
  br label %3520

; <label>:3520                                    ; preds = %3516, %3426
  %3521 = phi float [ %3517, %3516 ], [ 0x3FD6666660000000, %3426 ]
  %3522 = phi float [ %3518, %3516 ], [ 0.000000e+00, %3426 ]
  %3523 = phi float [ %3519, %3516 ], [ 0.000000e+00, %3426 ]
  %3524 = phi float [ %3460, %3516 ], [ 1.000000e+00, %3426 ]
  %3525 = add i32 %49, 208
  %3526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3525, i32 undef)  ; BufferLoad(srv,index,wot)
  %3527 = extractvalue %dx.types.ResRet.i32 %3526, 0
  %3528 = lshr i32 %3527, 22
  %3529 = shl nuw nsw i32 %3528, 5
  %3530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3529)  ; LegacyF16ToF32(value)
  %3531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3532 = extractvalue %dx.types.ResRet.i32 %3531, 0
  %3533 = and i32 %3532, 64
  %3534 = icmp eq i32 %3533, 0
  br i1 %3534, label %3568, label %3535

; <label>:3535                                    ; preds = %3520
  %3536 = add i32 %49, 452
  %3537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3536, i32 undef)  ; BufferLoad(srv,index,wot)
  %3538 = extractvalue %dx.types.ResRet.i32 %3537, 0
  %3539 = add i32 %3538, 0
  %3540 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3539, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.i32 %3541, 0
  %3543 = and i32 %3542, 131072
  %3544 = icmp eq i32 %3543, 0
  %3545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3540, %dx.types.Handle %88, float %3033, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 0
  %3547 = extractvalue %dx.types.ResRet.f32 %3545, 1
  %3548 = extractvalue %dx.types.ResRet.f32 %3545, 2
  %3549 = fmul fast float %3546, %529
  %3550 = fmul fast float %3547, %532
  %3551 = fmul fast float %3548, %535
  br i1 %3544, label %3558, label %3552

; <label>:3552                                    ; preds = %3535
  %3553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3554 = extractvalue %dx.types.CBufRet.f32 %3553, 0
  %3555 = fmul fast float %3554, %3549
  %3556 = fmul fast float %3554, %3550
  %3557 = fmul fast float %3554, %3551
  br label %3558

; <label>:3558                                    ; preds = %3552, %3535
  %3559 = phi float [ %3555, %3552 ], [ %3549, %3535 ]
  %3560 = phi float [ %3556, %3552 ], [ %3550, %3535 ]
  %3561 = phi float [ %3557, %3552 ], [ %3551, %3535 ]
  %3562 = fmul fast float %3559, %3530
  %3563 = select i1 %397, float %3562, float %3559
  %3564 = call float @dx.op.dot3.f32(i32 55, float %3563, float %3560, float %3561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = select i1 %397, float 0.000000e+00, float %3559
  %3566 = select i1 %397, float %3564, float %3560
  %3567 = select i1 %397, float 0.000000e+00, float %3561
  br label %3568

; <label>:3568                                    ; preds = %3558, %3520
  %3569 = phi float [ %3565, %3558 ], [ 0.000000e+00, %3520 ]
  %3570 = phi float [ %3566, %3558 ], [ 0.000000e+00, %3520 ]
  %3571 = phi float [ %3567, %3558 ], [ 0.000000e+00, %3520 ]
  %3572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3573 = extractvalue %dx.types.ResRet.i32 %3572, 0
  %3574 = and i32 %3573, 26624
  %3575 = icmp eq i32 %3574, 0
  br i1 %3575, label %3599, label %3576

; <label>:3576                                    ; preds = %3568
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = and i32 %3578, 16384
  %3580 = icmp eq i32 %3579, 0
  br i1 %3580, label %3599, label %3581

; <label>:3581                                    ; preds = %3576
  %3582 = and i32 %3578, 1048576
  %3583 = icmp ne i32 %3582, 0
  %3584 = add i32 %49, 516
  %3585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.i32 %3585, 0
  %3587 = add i32 %3586, 0
  %3588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3588, %dx.types.Handle %89, float %3033, float %3034, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3591 = add i32 %49, 144
  %3592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3593 = extractvalue %dx.types.ResRet.i32 %3592, 0
  %3594 = lshr i32 %3593, 24
  %3595 = uitofp i32 %3594 to float
  %3596 = fmul fast float %3590, 0x3F70101020000000
  %3597 = select i1 %3583, float 0x3F70101020000000, float %3596
  %3598 = fmul fast float %3597, %3595
  br label %3599

; <label>:3599                                    ; preds = %3581, %3576, %3568
  %3600 = phi float [ %3598, %3581 ], [ 0.000000e+00, %3576 ], [ 0.000000e+00, %3568 ]
  %3601 = add i32 %49, 144
  %3602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %3601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3603 = extractvalue %dx.types.ResRet.i32 %3602, 0
  %3604 = and i32 %3603, 255
  %3605 = uitofp i32 %3604 to float
  %3606 = lshr i32 %3603, 8
  %3607 = and i32 %3606, 255
  %3608 = uitofp i32 %3607 to float
  %3609 = call float @dx.op.dot3.f32(i32 55, float %3441, float %3442, float %3443, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = fmul fast float %3608, %3609
  %3611 = fadd fast float %3610, %3605
  %3612 = fmul fast float %3611, 0x3F70101020000000
  %3613 = call float @dx.op.unary.f32(i32 7, float %3612)  ; Saturate(value)
  br i1 %2925, label %3614, label %3622

; <label>:3614                                    ; preds = %3599
  %3615 = fsub fast float 1.000000e+00, %3221
  %3616 = fmul fast float %3615, %2913
  %3617 = fmul fast float %3615, %2914
  %3618 = fmul fast float %3615, %2915
  %3619 = fmul fast float %3615, %2916
  %3620 = fmul fast float %3615, %2917
  %3621 = fmul fast float %3615, %2918
  br label %3622

; <label>:3622                                    ; preds = %3614, %3599
  %3623 = phi float [ %3616, %3614 ], [ %2913, %3599 ]
  %3624 = phi float [ %3617, %3614 ], [ %2914, %3599 ]
  %3625 = phi float [ %3618, %3614 ], [ %2915, %3599 ]
  %3626 = phi float [ %3619, %3614 ], [ %2916, %3599 ]
  %3627 = phi float [ %3620, %3614 ], [ %2917, %3599 ]
  %3628 = phi float [ %3621, %3614 ], [ %2918, %3599 ]
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = and i32 %3630, 3
  %3632 = icmp eq i32 %3631, 3
  br i1 %3632, label %3711, label %3633

; <label>:3633                                    ; preds = %3622
  %3634 = and i32 %3630, 16
  %3635 = icmp ne i32 %3634, 0
  %3636 = select i1 %3635, float %3221, float 0.000000e+00
  %3637 = icmp eq i32 %3631, 0
  br i1 %3637, label %3638, label %3666

; <label>:3638                                    ; preds = %3633
  %3639 = and i32 %3630, 64
  %3640 = icmp ne i32 %3639, 0
  %3641 = select i1 %3640, float %3221, float 0.000000e+00
  %3642 = fsub fast float %3441, %3623
  %3643 = fsub fast float %3442, %3624
  %3644 = fsub fast float %3443, %3625
  %3645 = fmul fast float %3636, %3642
  %3646 = fmul fast float %3636, %3643
  %3647 = fmul fast float %3636, %3644
  %3648 = fadd fast float %3645, %3623
  %3649 = fadd fast float %3646, %3624
  %3650 = fadd fast float %3647, %3625
  %3651 = fsub fast float %3427, %2919
  %3652 = fmul fast float %3636, %3651
  %3653 = fadd fast float %3652, %2919
  %3654 = fsub fast float %3569, %3626
  %3655 = fsub fast float %3570, %3627
  %3656 = fsub fast float %3571, %3628
  %3657 = fmul fast float %3641, %3654
  %3658 = fmul fast float %3641, %3655
  %3659 = fmul fast float %3641, %3656
  %3660 = fadd fast float %3657, %3626
  %3661 = fadd fast float %3658, %3627
  %3662 = fadd fast float %3659, %3628
  %3663 = fsub fast float %3613, %2923
  %3664 = fmul fast float %3636, %3663
  %3665 = fadd fast float %3664, %2923
  br label %3711

; <label>:3666                                    ; preds = %3633
  %3667 = icmp eq i32 %3631, 1
  br i1 %3667, label %3668, label %3681

; <label>:3668                                    ; preds = %3666
  %3669 = fadd fast float %3441, -1.000000e+00
  %3670 = fadd fast float %3442, -1.000000e+00
  %3671 = fadd fast float %3443, -1.000000e+00
  %3672 = fmul fast float %3636, %3669
  %3673 = fmul fast float %3636, %3670
  %3674 = fmul fast float %3636, %3671
  %3675 = fadd fast float %3672, 1.000000e+00
  %3676 = fadd fast float %3673, 1.000000e+00
  %3677 = fadd fast float %3674, 1.000000e+00
  %3678 = fmul fast float %3675, %3623
  %3679 = fmul fast float %3676, %3624
  %3680 = fmul fast float %3677, %3625
  br label %3711

; <label>:3681                                    ; preds = %3666
  %3682 = icmp eq i32 %3631, 2
  br i1 %3682, label %3683, label %3711

; <label>:3683                                    ; preds = %3681
  %3684 = call float @dx.op.unary.f32(i32 24, float %3441)  ; Sqrt(value)
  %3685 = call float @dx.op.unary.f32(i32 24, float %3442)  ; Sqrt(value)
  %3686 = call float @dx.op.unary.f32(i32 24, float %3443)  ; Sqrt(value)
  %3687 = fadd fast float %3684, -5.000000e-01
  %3688 = fadd fast float %3685, -5.000000e-01
  %3689 = fadd fast float %3686, -5.000000e-01
  %3690 = fmul fast float %3687, %3636
  %3691 = fmul fast float %3688, %3636
  %3692 = fmul fast float %3689, %3636
  %3693 = fadd fast float %3690, 5.000000e-01
  %3694 = fadd fast float %3691, 5.000000e-01
  %3695 = fadd fast float %3692, 5.000000e-01
  %3696 = fmul fast float %3693, 2.000000e+00
  %3697 = fsub fast float 1.000000e+00, %3696
  %3698 = fmul fast float %3697, %3623
  %3699 = fadd fast float %3698, %3696
  %3700 = fmul fast float %3699, %3623
  %3701 = fmul fast float %3694, 2.000000e+00
  %3702 = fsub fast float 1.000000e+00, %3701
  %3703 = fmul fast float %3702, %3624
  %3704 = fadd fast float %3703, %3701
  %3705 = fmul fast float %3704, %3624
  %3706 = fmul fast float %3695, 2.000000e+00
  %3707 = fsub fast float 1.000000e+00, %3706
  %3708 = fmul fast float %3707, %3625
  %3709 = fadd fast float %3708, %3706
  %3710 = fmul fast float %3709, %3625
  br label %3711

; <label>:3711                                    ; preds = %3683, %3681, %3668, %3638, %3622
  %3712 = phi float [ %3623, %3622 ], [ %3700, %3683 ], [ %3623, %3681 ], [ %3678, %3668 ], [ %3648, %3638 ]
  %3713 = phi float [ %3624, %3622 ], [ %3705, %3683 ], [ %3624, %3681 ], [ %3679, %3668 ], [ %3649, %3638 ]
  %3714 = phi float [ %3625, %3622 ], [ %3710, %3683 ], [ %3625, %3681 ], [ %3680, %3668 ], [ %3650, %3638 ]
  %3715 = phi float [ %3626, %3622 ], [ %3626, %3683 ], [ %3626, %3681 ], [ %3626, %3668 ], [ %3660, %3638 ]
  %3716 = phi float [ %3627, %3622 ], [ %3627, %3683 ], [ %3627, %3681 ], [ %3627, %3668 ], [ %3661, %3638 ]
  %3717 = phi float [ %3628, %3622 ], [ %3628, %3683 ], [ %3628, %3681 ], [ %3628, %3668 ], [ %3662, %3638 ]
  %3718 = phi float [ %2919, %3622 ], [ %2919, %3683 ], [ %2919, %3681 ], [ %2919, %3668 ], [ %3653, %3638 ]
  %3719 = phi float [ %2923, %3622 ], [ %2923, %3683 ], [ %2923, %3681 ], [ %2923, %3668 ], [ %3665, %3638 ]
  %3720 = and i32 %3630, 12
  %3721 = icmp eq i32 %3720, 12
  br i1 %3721, label %3804, label %3722

; <label>:3722                                    ; preds = %3711
  %3723 = and i32 %3630, 2097184
  %3724 = icmp eq i32 %3723, 2097184
  %3725 = select i1 %3724, float %3221, float 0.000000e+00
  %3726 = and i32 %3630, 4194336
  %3727 = icmp eq i32 %3726, 4194336
  %3728 = select i1 %3727, float %3221, float 0.000000e+00
  %3729 = and i32 %3630, 8388640
  %3730 = icmp eq i32 %3729, 8388640
  %3731 = select i1 %3730, float %3221, float 0.000000e+00
  %3732 = and i32 %3630, 16384
  %3733 = icmp ne i32 %3732, 0
  %3734 = select i1 %3733, float %3221, float 0.000000e+00
  %3735 = icmp eq i32 %3720, 0
  br i1 %3735, label %3736, label %3752

; <label>:3736                                    ; preds = %3722
  %3737 = fsub fast float %3522, %2911
  %3738 = fsub fast float %3523, %2912
  %3739 = fmul fast float %3725, %3737
  %3740 = fmul fast float %3725, %3738
  %3741 = fadd fast float %3739, %2911
  %3742 = fadd fast float %3740, %2912
  %3743 = fsub fast float %3524, %2921
  %3744 = fmul fast float %3728, %3743
  %3745 = fadd fast float %3744, %2921
  %3746 = fsub fast float %3521, %2920
  %3747 = fmul fast float %3731, %3746
  %3748 = fadd fast float %3747, %2920
  %3749 = fsub fast float %3600, %2922
  %3750 = fmul fast float %3734, %3749
  %3751 = fadd fast float %3750, %2922
  br label %3804

; <label>:3752                                    ; preds = %3722
  %3753 = icmp eq i32 %3720, 4
  br i1 %3753, label %3754, label %3788

; <label>:3754                                    ; preds = %3752
  %3755 = fmul fast float %3725, %3522
  %3756 = fmul fast float %3725, %3523
  %3757 = fadd fast float %3755, %2911
  %3758 = fadd fast float %3756, %2912
  %3759 = call float @dx.op.binary.f32(i32 36, float %2921, float %3524)  ; FMin(a,b)
  %3760 = fsub fast float %3759, %2921
  %3761 = fmul fast float %3760, %3728
  %3762 = fadd fast float %3761, %2921
  %3763 = fadd fast float %3521, %2920
  %3764 = fmul fast float %3763, 0x3FF337FAE0000000
  %3765 = fmul fast float %2920, %2920
  %3766 = fmul fast float %3521, %3521
  %3767 = fadd fast float %3766, %3765
  %3768 = fmul fast float %3767, 0x3FE5152B00000000
  %3769 = fmul fast float %2920, 0xBFCC1F85E0000000
  %3770 = fmul fast float %3769, %3521
  %3771 = fadd fast float %3770, 0xBFE1363700000000
  %3772 = fadd fast float %3771, %3764
  %3773 = fsub fast float %3772, %3768
  %3774 = fmul fast float %3763, 0x3FBA6F0D00000000
  %3775 = fmul fast float %3767, 0x3FD0432880000000
  %3776 = fmul fast float %2920, 0xBFEF110800000000
  %3777 = fmul fast float %3776, %3521
  %3778 = fadd fast float %3777, 1.000000e+00
  %3779 = fsub fast float %3778, %3774
  %3780 = fadd fast float %3779, %3775
  %3781 = fdiv fast float %3773, %3780
  %3782 = call float @dx.op.unary.f32(i32 7, float %3781)  ; Saturate(value)
  %3783 = fsub fast float %3782, %2920
  %3784 = fmul fast float %3783, %3731
  %3785 = fadd fast float %3784, %2920
  %3786 = fmul fast float %3734, %3600
  %3787 = fadd fast float %3786, %2922
  br label %3804

; <label>:3788                                    ; preds = %3752
  %3789 = icmp eq i32 %3720, 8
  br i1 %3789, label %3790, label %3804

; <label>:3790                                    ; preds = %3788
  %3791 = fmul fast float %3725, %3522
  %3792 = fmul fast float %3725, %3523
  %3793 = fadd fast float %3791, %2911
  %3794 = fadd fast float %3792, %2912
  %3795 = call float @dx.op.binary.f32(i32 36, float %2921, float %3524)  ; FMin(a,b)
  %3796 = fsub fast float %3795, %2921
  %3797 = fmul fast float %3796, %3728
  %3798 = fadd fast float %3797, %2921
  %3799 = fsub fast float %3521, %2920
  %3800 = fmul fast float %3731, %3799
  %3801 = fadd fast float %3800, %2920
  %3802 = fmul fast float %3734, %3600
  %3803 = fadd fast float %3802, %2922
  br label %3804

; <label>:3804                                    ; preds = %3790, %3788, %3754, %3736, %3711, %3220, %2924, %2910
  %3805 = phi float [ %2911, %3711 ], [ %2911, %3220 ], [ %2911, %2910 ], [ %2911, %2924 ], [ %3741, %3736 ], [ %3757, %3754 ], [ %2911, %3788 ], [ %3793, %3790 ]
  %3806 = phi float [ %2912, %3711 ], [ %2912, %3220 ], [ %2912, %2910 ], [ %2912, %2924 ], [ %3742, %3736 ], [ %3758, %3754 ], [ %2912, %3788 ], [ %3794, %3790 ]
  %3807 = phi float [ %3712, %3711 ], [ %2913, %3220 ], [ %2913, %2910 ], [ %2913, %2924 ], [ %3712, %3736 ], [ %3712, %3754 ], [ %3712, %3788 ], [ %3712, %3790 ]
  %3808 = phi float [ %3713, %3711 ], [ %2914, %3220 ], [ %2914, %2910 ], [ %2914, %2924 ], [ %3713, %3736 ], [ %3713, %3754 ], [ %3713, %3788 ], [ %3713, %3790 ]
  %3809 = phi float [ %3714, %3711 ], [ %2915, %3220 ], [ %2915, %2910 ], [ %2915, %2924 ], [ %3714, %3736 ], [ %3714, %3754 ], [ %3714, %3788 ], [ %3714, %3790 ]
  %3810 = phi float [ %3715, %3711 ], [ %2916, %3220 ], [ %2916, %2910 ], [ %2916, %2924 ], [ %3715, %3736 ], [ %3715, %3754 ], [ %3715, %3788 ], [ %3715, %3790 ]
  %3811 = phi float [ %3716, %3711 ], [ %2917, %3220 ], [ %2917, %2910 ], [ %2917, %2924 ], [ %3716, %3736 ], [ %3716, %3754 ], [ %3716, %3788 ], [ %3716, %3790 ]
  %3812 = phi float [ %3717, %3711 ], [ %2918, %3220 ], [ %2918, %2910 ], [ %2918, %2924 ], [ %3717, %3736 ], [ %3717, %3754 ], [ %3717, %3788 ], [ %3717, %3790 ]
  %3813 = phi float [ %3718, %3711 ], [ %2919, %3220 ], [ %2919, %2910 ], [ %2919, %2924 ], [ %3718, %3736 ], [ %3718, %3754 ], [ %3718, %3788 ], [ %3718, %3790 ]
  %3814 = phi float [ %2920, %3711 ], [ %2920, %3220 ], [ %2920, %2910 ], [ %2920, %2924 ], [ %3748, %3736 ], [ %3785, %3754 ], [ %2920, %3788 ], [ %3801, %3790 ]
  %3815 = phi float [ %2921, %3711 ], [ %2921, %3220 ], [ %2921, %2910 ], [ %2921, %2924 ], [ %3745, %3736 ], [ %3762, %3754 ], [ %2921, %3788 ], [ %3798, %3790 ]
  %3816 = phi float [ %2922, %3711 ], [ %2922, %3220 ], [ %2922, %2910 ], [ %2922, %2924 ], [ %3751, %3736 ], [ %3787, %3754 ], [ %2922, %3788 ], [ %3803, %3790 ]
  %3817 = phi float [ %3719, %3711 ], [ %2923, %3220 ], [ %2923, %2910 ], [ %2923, %2924 ], [ %3719, %3736 ], [ %3719, %3754 ], [ %3719, %3788 ], [ %3719, %3790 ]
  %3818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3819 = extractvalue %dx.types.CBufRet.f32 %3818, 0
  %3820 = call float @dx.op.dot2.f32(i32 54, float %3805, float %3806, float %3805, float %3806)  ; Dot2(ax,ay,bx,by)
  %3821 = fmul fast float %3820, 0x3FE3333340000000
  %3822 = fsub fast float 1.000000e+00, %3821
  %3823 = call float @dx.op.dot3.f32(i32 55, float %3805, float %3806, float %3822, float %3805, float %3806, float %3822)  ; Dot3(ax,ay,az,bx,by,bz)
  %3824 = call float @dx.op.unary.f32(i32 25, float %3823)  ; Rsqrt(value)
  %3825 = fmul fast float %3824, %3805
  %3826 = fmul fast float %3824, %3806
  %3827 = fmul fast float %3822, %3824
  %3828 = fmul fast float %3827, %99
  %3829 = fmul fast float %3827, %100
  %3830 = fmul fast float %3827, %101
  %3831 = fmul fast float %3825, %58
  %3832 = fmul fast float %3825, %59
  %3833 = fmul fast float %3825, %60
  %3834 = fadd fast float %3828, %3831
  %3835 = fadd fast float %3829, %3832
  %3836 = fadd fast float %3830, %3833
  %3837 = fmul fast float %111, %3826
  %3838 = fmul fast float %112, %3826
  %3839 = fmul fast float %113, %3826
  %3840 = fadd fast float %3834, %3837
  %3841 = fadd fast float %3835, %3838
  %3842 = fadd fast float %3836, %3839
  %3843 = call float @dx.op.dot3.f32(i32 55, float %3840, float %3841, float %3842, float %3840, float %3841, float %3842)  ; Dot3(ax,ay,az,bx,by,bz)
  %3844 = call float @dx.op.unary.f32(i32 25, float %3843)  ; Rsqrt(value)
  %3845 = fmul fast float %3840, %3844
  %3846 = fmul fast float %3841, %3844
  %3847 = fmul fast float %3842, %3844
  %3848 = and i32 %51, 4
  %3849 = icmp eq i32 %3848, 0
  br i1 %3849, label %3850, label %5112, !dx.controlflow.hints !87

; <label>:3850                                    ; preds = %3804
  %3851 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %3852 = extractvalue %dx.types.CBufRet.i32 %3851, 0
  %3853 = and i32 %3852, 32
  %3854 = icmp eq i32 %3853, 0
  br i1 %3854, label %3895, label %3855, !dx.controlflow.hints !88

; <label>:3855                                    ; preds = %3850
  %3856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3857 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %41, %dx.types.Handle %3856, float %354, float %355, float undef, float undef, i32 0, i32 0, i32 undef, float %352, float %353, float undef, float %350, float %351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3858 = extractvalue %dx.types.ResRet.f32 %3857, 0
  %3859 = extractvalue %dx.types.ResRet.f32 %3857, 1
  %3860 = extractvalue %dx.types.ResRet.f32 %3857, 2
  %3861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %3862 = extractvalue %dx.types.CBufRet.i32 %3861, 3
  %3863 = icmp eq i32 %3862, 5
  br i1 %3863, label %3911, label %3864, !dx.controlflow.hints !89

; <label>:3864                                    ; preds = %3855
  %3865 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %40, %dx.types.Handle %3856, float %354, float %355, float undef, float undef, i32 0, i32 0, i32 undef, float %352, float %353, float undef, float %350, float %351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = extractvalue %dx.types.ResRet.f32 %3865, 1
  %3868 = extractvalue %dx.types.ResRet.f32 %3865, 2
  %3869 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %39, %dx.types.Handle %3856, float %354, float %355, float undef, float undef, i32 0, i32 0, i32 undef, float %352, float %353, float undef, float %350, float %351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3870 = extractvalue %dx.types.ResRet.f32 %3869, 0
  %3871 = extractvalue %dx.types.ResRet.f32 %3869, 1
  %3872 = extractvalue %dx.types.ResRet.f32 %3869, 2
  %3873 = call float @dx.op.dot3.f32(i32 55, float %3858, float %3859, float %3860, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3874 = fmul fast float %3873, 1.875000e-01
  %3875 = fadd fast float %3874, 0x3FE77AE140000000
  %3876 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3877 = and i32 %3852, 64
  %3878 = icmp eq i32 %3877, 0
  %3879 = and i32 %3852, 256
  %3880 = icmp ne i32 %3879, 0
  br i1 %3878, label %3881, label %3911

; <label>:3881                                    ; preds = %3864
  %3882 = and i32 %3852, 128
  %3883 = icmp eq i32 %3882, 0
  br i1 %3883, label %3893, label %3884

; <label>:3884                                    ; preds = %3881
  %3885 = fcmp fast une float %3872, 0.000000e+00
  %3886 = fmul fast float %3872, 3.200000e+01
  %3887 = fadd fast float %3886, -1.600000e+01
  %3888 = call float @dx.op.unary.f32(i32 21, float %3887)  ; Exp(value)
  %3889 = select i1 %3885, float %3888, float 0.000000e+00
  %3890 = fmul fast float %3889, %3858
  %3891 = fmul fast float %3889, %3859
  %3892 = fmul fast float %3889, %3860
  br label %3911

; <label>:3893                                    ; preds = %3881
  %3894 = select i1 %3880, float %3872, float %3876
  br label %3911

; <label>:3895                                    ; preds = %3850
  %3896 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3897 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %41, %dx.types.Handle %3896, float %354, float %355, float undef, float undef, i32 0, i32 0, i32 undef, float %352, float %353, float undef, float %350, float %351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3898 = extractvalue %dx.types.ResRet.f32 %3897, 0
  %3899 = extractvalue %dx.types.ResRet.f32 %3897, 1
  %3900 = extractvalue %dx.types.ResRet.f32 %3897, 2
  %3901 = extractvalue %dx.types.ResRet.f32 %3897, 3
  %3902 = call float @dx.op.dot3.f32(i32 55, float %3898, float %3899, float %3900, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3903 = fmul fast float %3902, 1.875000e-01
  %3904 = fadd fast float %3903, 0x3FE77AE140000000
  %3905 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3906 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %40, %dx.types.Handle %3896, float %354, float %355, float undef, float undef, i32 0, i32 0, i32 undef, float %352, float %353, float undef, float %350, float %351, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %3908 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %3909 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3910 = extractvalue %dx.types.ResRet.f32 %3906, 3
  br label %3911

; <label>:3911                                    ; preds = %3895, %3893, %3884, %3864, %3855
  %3912 = phi float [ %3905, %3895 ], [ %3876, %3884 ], [ undef, %3855 ], [ %3894, %3893 ], [ %3876, %3864 ]
  %3913 = phi float [ %3901, %3895 ], [ %3870, %3884 ], [ undef, %3855 ], [ %3870, %3893 ], [ %3870, %3864 ]
  %3914 = phi float [ 0.000000e+00, %3895 ], [ %3890, %3884 ], [ undef, %3855 ], [ 0.000000e+00, %3893 ], [ 0.000000e+00, %3864 ]
  %3915 = phi float [ 0.000000e+00, %3895 ], [ %3891, %3884 ], [ undef, %3855 ], [ 0.000000e+00, %3893 ], [ 0.000000e+00, %3864 ]
  %3916 = phi float [ 0.000000e+00, %3895 ], [ %3892, %3884 ], [ undef, %3855 ], [ 0.000000e+00, %3893 ], [ 0.000000e+00, %3864 ]
  %3917 = phi float [ %3898, %3895 ], [ %3858, %3884 ], [ %3858, %3855 ], [ %3858, %3893 ], [ %3858, %3864 ]
  %3918 = phi float [ %3899, %3895 ], [ %3859, %3884 ], [ %3859, %3855 ], [ %3859, %3893 ], [ %3859, %3864 ]
  %3919 = phi float [ %3900, %3895 ], [ %3860, %3884 ], [ %3860, %3855 ], [ %3860, %3893 ], [ %3860, %3864 ]
  %3920 = phi float [ %3907, %3895 ], [ %3866, %3884 ], [ 0.000000e+00, %3855 ], [ %3866, %3893 ], [ %3866, %3864 ]
  %3921 = phi float [ %3908, %3895 ], [ %3867, %3884 ], [ 5.000000e-01, %3855 ], [ %3867, %3893 ], [ %3867, %3864 ]
  %3922 = phi float [ %3909, %3895 ], [ %3868, %3884 ], [ 0.000000e+00, %3855 ], [ %3868, %3893 ], [ %3868, %3864 ]
  %3923 = phi float [ %3910, %3895 ], [ %3871, %3884 ], [ 5.000000e-01, %3855 ], [ %3871, %3893 ], [ %3871, %3864 ]
  %3924 = fmul fast float %3921, 2.000000e+00
  %3925 = fadd fast float %3924, -1.000000e+00
  %3926 = fmul fast float %3923, 2.000000e+00
  %3927 = fadd fast float %3926, -1.000000e+00
  %3928 = fadd fast float %3927, %3925
  %3929 = fmul fast float %3928, 5.000000e-01
  %3930 = fsub fast float %3925, %3927
  %3931 = fmul fast float %3930, 5.000000e-01
  %3932 = call float @dx.op.unary.f32(i32 6, float %3929)  ; FAbs(value)
  %3933 = fsub fast float 1.000000e+00, %3932
  %3934 = call float @dx.op.unary.f32(i32 6, float %3931)  ; FAbs(value)
  %3935 = fsub fast float %3933, %3934
  %3936 = call float @dx.op.dot3.f32(i32 55, float %3929, float %3931, float %3935, float %3929, float %3931, float %3935)  ; Dot3(ax,ay,az,bx,by,bz)
  %3937 = call float @dx.op.unary.f32(i32 25, float %3936)  ; Rsqrt(value)
  %3938 = fmul fast float %3929, %3937
  %3939 = fmul fast float %3931, %3937
  %3940 = fmul fast float %3937, %3935
  %3941 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.i32 %3941, 0
  %3943 = and i32 %3942, 16
  %3944 = icmp eq i32 %3943, 0
  br i1 %3944, label %4192, label %3945, !dx.controlflow.hints !90

; <label>:3945                                    ; preds = %3911
  %3946 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %3947 = extractvalue %dx.types.CBufRet.i32 %3946, 0
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 3
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 3
  %3952 = uitofp i32 %3947 to float
  %3953 = fptosi float %3952 to i32
  %3954 = fmul fast float %356, 0x3F3A027520000000
  %3955 = fmul fast float %357, 0x3F3A027520000000
  %3956 = add nsw i32 %3953, -1
  %3957 = fptosi float %3955 to i32
  %3958 = call i32 @dx.op.binary.i32(i32 37, i32 %3957, i32 0)  ; IMax(a,b)
  %3959 = call i32 @dx.op.binary.i32(i32 38, i32 %3958, i32 %3956)  ; IMin(a,b)
  %3960 = fptosi float %3954 to i32
  %3961 = call i32 @dx.op.binary.i32(i32 37, i32 %3960, i32 0)  ; IMax(a,b)
  %3962 = call i32 @dx.op.binary.i32(i32 38, i32 %3961, i32 %3956)  ; IMin(a,b)
  %3963 = mul nsw i32 %3959, %3953
  %3964 = add nsw i32 %3962, %3963
  %3965 = sdiv i32 %3964, 4
  %3966 = shl nsw i32 %3965, 2
  %3967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %3966, i32 undef)  ; BufferLoad(srv,index,wot)
  %3968 = extractvalue %dx.types.ResRet.i32 %3967, 0
  %3969 = srem i32 %3964, 4
  %3970 = shl nsw i32 %3969, 3
  %3971 = and i32 %3970, 24
  %3972 = lshr i32 %3968, %3971
  %3973 = and i32 %3972, 255
  %3974 = mul nuw nsw i32 %3973, 12
  %3975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %35, i32 %3974, i32 undef)  ; BufferLoad(srv,index,wot)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = extractvalue %dx.types.ResRet.f32 %3975, 1
  %3978 = extractvalue %dx.types.ResRet.f32 %3975, 2
  %3979 = fsub fast float %356, %3976
  %3980 = fsub fast float %357, %3977
  %3981 = fdiv fast float %3979, %3978
  %3982 = fdiv fast float %3980, %3978
  %3983 = extractvalue %dx.types.CBufRet.i32 %3946, 1
  %3984 = shl i32 %3983, 5
  %3985 = uitofp i32 %3984 to float
  %3986 = shl nuw nsw i32 %3973, 3
  %3987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.i32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.i32 %3987, 1
  %3990 = lshr i32 %3989, 16
  %3991 = and i32 %3990, 1
  %3992 = icmp eq i32 %3991, 0
  br i1 %3992, label %3993, label %3998

; <label>:3993                                    ; preds = %3945
  %3994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %3995 = extractvalue %dx.types.ResRet.i32 %3994, 0
  %3996 = extractvalue %dx.types.ResRet.i32 %3994, 1
  %3997 = lshr i32 %3996, 16
  br label %3998

; <label>:3998                                    ; preds = %3993, %3945
  %3999 = phi i32 [ 0, %3993 ], [ %3973, %3945 ]
  %4000 = phi i32 [ %3995, %3993 ], [ %3988, %3945 ]
  %4001 = phi i32 [ %3996, %3993 ], [ %3989, %3945 ]
  %4002 = phi i32 [ %3997, %3993 ], [ %3990, %3945 ]
  %4003 = and i32 %4001, 65535
  %4004 = lshr i32 %4000, 16
  %4005 = and i32 %4000, 65535
  %4006 = lshr i32 %4002, 1
  %4007 = uitofp i32 %4006 to float
  %4008 = icmp eq i32 %3999, 0
  %4009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %4010 = extractvalue %dx.types.CBufRet.f32 %4009, 2
  %4011 = bitcast float %4010 to i32
  %4012 = fdiv fast float %356, %3951
  %4013 = fdiv fast float %357, %3951
  %4014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 301)  ; CBufferLoadLegacy(handle,regIndex)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4014, 0
  %4016 = extractvalue %dx.types.CBufRet.f32 %4014, 1
  %4017 = extractvalue %dx.types.CBufRet.f32 %4014, 2
  %4018 = extractvalue %dx.types.CBufRet.f32 %4014, 3
  %4019 = fmul fast float %147, %147
  %4020 = fmul fast float %148, %148
  %4021 = fadd fast float %4020, %4019
  %4022 = fmul fast float %149, %149
  %4023 = fadd fast float %4021, %4022
  %4024 = call float @dx.op.unary.f32(i32 24, float %4023)  ; Sqrt(value)
  %4025 = fadd fast float %4024, %4017
  %4026 = fcmp fast ogt float %149, 0.000000e+00
  %4027 = fcmp fast olt float %149, 0.000000e+00
  %4028 = zext i1 %4026 to i32
  %4029 = zext i1 %4027 to i32
  %4030 = sub nsw i32 %4028, %4029
  %4031 = sitofp i32 %4030 to float
  %4032 = fmul fast float %4018, %4031
  %4033 = fadd fast float %4032, %149
  %4034 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %4033, float %147, float %148, float %4033)  ; Dot3(ax,ay,az,bx,by,bz)
  %4035 = call float @dx.op.unary.f32(i32 25, float %4034)  ; Rsqrt(value)
  %4036 = fmul fast float %147, %4035
  %4037 = fsub fast float -0.000000e+00, %4036
  %4038 = fmul fast float %148, %4035
  %4039 = fsub fast float -0.000000e+00, %4038
  %4040 = fmul fast float %4035, %4033
  %4041 = fsub fast float -0.000000e+00, %4040
  %4042 = call float @dx.op.dot3.f32(i32 55, float %4037, float %4039, float %4041, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %4043 = call float @dx.op.unary.f32(i32 7, float %4042)  ; Saturate(value)
  %4044 = call float @dx.op.unary.f32(i32 7, float %4043)  ; Saturate(value)
  %4045 = fsub fast float 1.000000e+00, %4016
  %4046 = fmul fast float %4044, %4045
  %4047 = fadd fast float %4046, %4016
  %4048 = fmul fast float %4047, %4015
  %4049 = fdiv fast float %4025, %4048
  %4050 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4049)  ; FMax(a,b)
  %4051 = call float @dx.op.unary.f32(i32 23, float %4050)  ; Log(value)
  %4052 = fadd fast float %4051, %3949
  %4053 = select i1 %4008, float %4012, float %3981
  %4054 = select i1 %4008, float %4013, float %3982
  %4055 = call float @dx.op.unary.f32(i32 27, float %4052)  ; Round_ni(value)
  %4056 = fptosi float %4055 to i32
  %4057 = sub nsw i32 8, %4003
  %4058 = select i1 %4008, i32 %4011, i32 %4057
  %4059 = sub nsw i32 %4056, %4058
  %4060 = call i32 @dx.op.binary.i32(i32 37, i32 %4059, i32 0)  ; IMax(a,b)
  %4061 = call i32 @dx.op.binary.i32(i32 38, i32 %4060, i32 %4003)  ; IMin(a,b)
  %4062 = fptoui float %4007 to i32
  %4063 = and i32 %4061, 31
  %4064 = lshr i32 %4062, %4063
  %4065 = add i32 %4064, -1
  %4066 = uitofp i32 %4065 to float
  %4067 = uitofp i32 %4064 to float
  %4068 = fmul fast float %4067, %4053
  %4069 = fmul fast float %4067, %4054
  %4070 = call float @dx.op.unary.f32(i32 27, float %4068)  ; Round_ni(value)
  %4071 = call float @dx.op.unary.f32(i32 27, float %4069)  ; Round_ni(value)
  %4072 = call float @dx.op.binary.f32(i32 35, float %4070, float 0.000000e+00)  ; FMax(a,b)
  %4073 = call float @dx.op.binary.f32(i32 35, float %4071, float 0.000000e+00)  ; FMax(a,b)
  %4074 = call float @dx.op.binary.f32(i32 36, float %4072, float %4066)  ; FMin(a,b)
  %4075 = call float @dx.op.binary.f32(i32 36, float %4073, float %4066)  ; FMin(a,b)
  %4076 = fptoui float %4074 to i32
  %4077 = fptoui float %4075 to i32
  %4078 = lshr i32 %4005, %4063
  %4079 = lshr i32 %4004, %4063
  %4080 = add i32 %4076, %4078
  %4081 = add i32 %4077, %4079
  %4082 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %37, i32 %4061, i32 %4080, i32 %4081, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4083 = extractvalue %dx.types.ResRet.i32 %4082, 0
  %4084 = and i32 %4083, 255
  %4085 = uitofp i32 %4084 to float
  %4086 = lshr i32 %4083, 8
  %4087 = and i32 %4086, 255
  %4088 = uitofp i32 %4087 to float
  %4089 = lshr i32 %4083, 16
  %4090 = and i32 %4089, 255
  %4091 = uitofp i32 %4090 to float
  %4092 = fptoui float %4091 to i32
  %4093 = lshr i32 %4083, 24
  %4094 = uitofp i32 %4093 to float
  %4095 = fadd fast float %4094, 1.000000e+00
  %4096 = fptoui float %4095 to i32
  %4097 = uitofp i32 %4096 to float
  %4098 = fmul fast float %4097, %4053
  %4099 = fmul fast float %4097, %4054
  %4100 = add i32 %4096, -1
  %4101 = uitofp i32 %4100 to float
  %4102 = call float @dx.op.unary.f32(i32 27, float %4098)  ; Round_ni(value)
  %4103 = call float @dx.op.unary.f32(i32 27, float %4099)  ; Round_ni(value)
  %4104 = call float @dx.op.binary.f32(i32 35, float %4102, float 0.000000e+00)  ; FMax(a,b)
  %4105 = call float @dx.op.binary.f32(i32 35, float %4103, float 0.000000e+00)  ; FMax(a,b)
  %4106 = call float @dx.op.binary.f32(i32 36, float %4104, float %4101)  ; FMin(a,b)
  %4107 = call float @dx.op.binary.f32(i32 36, float %4105, float %4101)  ; FMin(a,b)
  %4108 = fsub fast float %4098, %4106
  %4109 = fsub fast float %4099, %4107
  %4110 = fmul fast float %4085, 3.200000e+01
  %4111 = fmul fast float %4088, 3.200000e+01
  %4112 = fmul fast float %4108, 3.000000e+01
  %4113 = fmul fast float %4109, 3.000000e+01
  %4114 = fadd fast float %4110, 1.500000e+00
  %4115 = fadd fast float %4114, %4112
  %4116 = fadd fast float %4111, 1.500000e+00
  %4117 = fadd fast float %4116, %4113
  %4118 = fdiv fast float %4115, %3985
  %4119 = fdiv fast float %4117, %3985
  %4120 = uitofp i32 %4092 to float
  %4121 = fsub fast float %4052, %4120
  %4122 = call float @dx.op.unary.f32(i32 7, float %4121)  ; Saturate(value)
  %4123 = sub i32 1, %4058
  %4124 = add i32 %4123, %4056
  %4125 = call i32 @dx.op.binary.i32(i32 37, i32 %4124, i32 0)  ; IMax(a,b)
  %4126 = call i32 @dx.op.binary.i32(i32 38, i32 %4125, i32 %4003)  ; IMin(a,b)
  %4127 = and i32 %4126, 31
  %4128 = lshr i32 %4062, %4127
  %4129 = add i32 %4128, -1
  %4130 = uitofp i32 %4129 to float
  %4131 = uitofp i32 %4128 to float
  %4132 = fmul fast float %4131, %4053
  %4133 = fmul fast float %4131, %4054
  %4134 = call float @dx.op.unary.f32(i32 27, float %4132)  ; Round_ni(value)
  %4135 = call float @dx.op.unary.f32(i32 27, float %4133)  ; Round_ni(value)
  %4136 = call float @dx.op.binary.f32(i32 35, float %4134, float 0.000000e+00)  ; FMax(a,b)
  %4137 = call float @dx.op.binary.f32(i32 35, float %4135, float 0.000000e+00)  ; FMax(a,b)
  %4138 = call float @dx.op.binary.f32(i32 36, float %4136, float %4130)  ; FMin(a,b)
  %4139 = call float @dx.op.binary.f32(i32 36, float %4137, float %4130)  ; FMin(a,b)
  %4140 = fptoui float %4138 to i32
  %4141 = fptoui float %4139 to i32
  %4142 = lshr i32 %4005, %4127
  %4143 = lshr i32 %4004, %4127
  %4144 = add i32 %4140, %4142
  %4145 = add i32 %4141, %4143
  %4146 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %37, i32 %4126, i32 %4144, i32 %4145, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4147 = extractvalue %dx.types.ResRet.i32 %4146, 0
  %4148 = and i32 %4147, 255
  %4149 = uitofp i32 %4148 to float
  %4150 = lshr i32 %4147, 8
  %4151 = and i32 %4150, 255
  %4152 = uitofp i32 %4151 to float
  %4153 = lshr i32 %4147, 24
  %4154 = uitofp i32 %4153 to float
  %4155 = fadd fast float %4154, 1.000000e+00
  %4156 = fptoui float %4155 to i32
  %4157 = uitofp i32 %4156 to float
  %4158 = fmul fast float %4157, %4053
  %4159 = fmul fast float %4157, %4054
  %4160 = add i32 %4156, -1
  %4161 = uitofp i32 %4160 to float
  %4162 = call float @dx.op.unary.f32(i32 27, float %4158)  ; Round_ni(value)
  %4163 = call float @dx.op.unary.f32(i32 27, float %4159)  ; Round_ni(value)
  %4164 = call float @dx.op.binary.f32(i32 35, float %4162, float 0.000000e+00)  ; FMax(a,b)
  %4165 = call float @dx.op.binary.f32(i32 35, float %4163, float 0.000000e+00)  ; FMax(a,b)
  %4166 = call float @dx.op.binary.f32(i32 36, float %4164, float %4161)  ; FMin(a,b)
  %4167 = call float @dx.op.binary.f32(i32 36, float %4165, float %4161)  ; FMin(a,b)
  %4168 = fsub fast float %4158, %4166
  %4169 = fsub fast float %4159, %4167
  %4170 = fmul fast float %4149, 3.200000e+01
  %4171 = fmul fast float %4152, 3.200000e+01
  %4172 = fmul fast float %4168, 3.000000e+01
  %4173 = fmul fast float %4169, 3.000000e+01
  %4174 = fadd fast float %4170, 1.500000e+00
  %4175 = fadd fast float %4174, %4172
  %4176 = fadd fast float %4171, 1.500000e+00
  %4177 = fadd fast float %4176, %4173
  %4178 = fdiv fast float %4175, %3985
  %4179 = fdiv fast float %4177, %3985
  %4180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %42, float %4118, float %4119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4181 = extractvalue %dx.types.ResRet.f32 %4180, 0
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %38, %dx.types.Handle %42, float %4178, float %4179, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = fsub fast float %4183, %4181
  %4185 = fmul fast float %4184, %4122
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 300)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4188 = fsub fast float %4181, %4187
  %4189 = fadd fast float %4188, %4185
  %4190 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4191 = fmul fast float %4189, %4190
  br label %4192

; <label>:4192                                    ; preds = %3998, %3911
  %4193 = phi float [ %4191, %3998 ], [ 0.000000e+00, %3911 ]
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 0
  %4196 = extractvalue %dx.types.CBufRet.f32 %4194, 1
  %4197 = extractvalue %dx.types.CBufRet.f32 %4194, 2
  %4198 = add i32 %49, 392
  %4199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4198, i32 undef)  ; BufferLoad(srv,index,wot)
  %4200 = extractvalue %dx.types.ResRet.i32 %4199, 2
  %4201 = bitcast i32 %4200 to float
  %4202 = extractvalue %dx.types.ResRet.i32 %4199, 3
  %4203 = bitcast i32 %4202 to float
  %4204 = fsub fast float %101, %4201
  %4205 = fdiv fast float %4204, %4203
  %4206 = call float @dx.op.unary.f32(i32 7, float %4205)  ; Saturate(value)
  %4207 = fcmp fast ogt float %4206, 0.000000e+00
  %4208 = and i32 %3942, 2
  %4209 = icmp ne i32 %4208, 0
  %4210 = and i1 %4209, %4207
  br i1 %4210, label %4211, label %5112

; <label>:4211                                    ; preds = %4192
  %4212 = add i32 %49, 360
  %4213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.i32 %4213, 0
  %4215 = bitcast i32 %4214 to float
  %4216 = extractvalue %dx.types.ResRet.i32 %4213, 1
  %4217 = bitcast i32 %4216 to float
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 3
  %4222 = fadd fast float %4195, %147
  %4223 = fadd fast float %4196, %148
  %4224 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.i32 %4224, 3
  %4226 = icmp eq i32 %4225, 0
  br i1 %4226, label %4343, label %4227, !dx.controlflow.hints !91

; <label>:4227                                    ; preds = %4211
  %4228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %4229 = extractvalue %dx.types.CBufRet.f32 %4228, 2
  %4230 = extractvalue %dx.types.CBufRet.f32 %4228, 3
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.CBufRet.f32 %4231, 1
  %4234 = extractvalue %dx.types.CBufRet.f32 %4228, 0
  %4235 = extractvalue %dx.types.CBufRet.f32 %4228, 1
  %4236 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.i32 %4236, 0
  %4238 = extractvalue %dx.types.CBufRet.i32 %4236, 1
  %4239 = extractvalue %dx.types.CBufRet.i32 %4236, 2
  %4240 = extractvalue %dx.types.CBufRet.i32 %4236, 3
  %4241 = fadd fast float %4229, 0xBF847AE140000000
  %4242 = fadd fast float %4230, 0xBF847AE140000000
  %4243 = fsub fast float %4222, %4232
  %4244 = fsub fast float %4223, %4233
  %4245 = call float @dx.op.binary.f32(i32 35, float %4243, float 0.000000e+00)  ; FMax(a,b)
  %4246 = call float @dx.op.binary.f32(i32 35, float %4244, float 0.000000e+00)  ; FMax(a,b)
  %4247 = call float @dx.op.binary.f32(i32 36, float %4245, float %4241)  ; FMin(a,b)
  %4248 = call float @dx.op.binary.f32(i32 36, float %4246, float %4242)  ; FMin(a,b)
  %4249 = fdiv fast float %4247, %4234
  %4250 = fdiv fast float %4248, %4235
  %4251 = fptoui float %4249 to i32
  %4252 = fptoui float %4250 to i32
  %4253 = mul i32 %4252, %4237
  %4254 = add i32 %4253, %4251
  %4255 = lshr i32 %4254, 1
  %4256 = shl i32 %4255, 2
  %4257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4256, i32 undef)  ; BufferLoad(srv,index,wot)
  %4258 = extractvalue %dx.types.ResRet.i32 %4257, 0
  %4259 = shl i32 %4254, 4
  %4260 = and i32 %4259, 16
  %4261 = lshr i32 %4258, %4260
  %4262 = and i32 %4261, 255
  %4263 = lshr i32 %4261, 8
  %4264 = and i32 %4263, 31
  %4265 = shl i32 1, %4264
  %4266 = uitofp i32 %4265 to float
  %4267 = fmul fast float %4266, %4247
  %4268 = fdiv fast float %4267, %4229
  %4269 = fmul fast float %4266, %4248
  %4270 = fdiv fast float %4269, %4230
  %4271 = call float @dx.op.unary.f32(i32 22, float %4268)  ; Frc(value)
  %4272 = call float @dx.op.unary.f32(i32 22, float %4270)  ; Frc(value)
  %4273 = uitofp i32 %4238 to float
  %4274 = fmul fast float %4271, %4273
  %4275 = fmul fast float %4272, %4273
  %4276 = uitofp i32 %4240 to float
  %4277 = fadd fast float %4274, %4276
  %4278 = fadd fast float %4275, %4276
  %4279 = mul i32 %4262, %4239
  %4280 = call float @dx.op.unary.f32(i32 22, float %4277)  ; Frc(value)
  %4281 = fptoui float %4277 to i32
  %4282 = fptoui float %4278 to i32
  %4283 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 0
  %4284 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 0
  store i32 %4281, i32* %4283, align 4
  store i32 %4282, i32* %4284, align 4
  %4285 = add i32 %4281, 1
  %4286 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 1
  %4287 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 1
  store i32 %4285, i32* %4286, align 4
  store i32 %4282, i32* %4287, align 4
  %4288 = add i32 %4282, 1
  %4289 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 2
  %4290 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 2
  store i32 %4281, i32* %4289, align 4
  store i32 %4288, i32* %4290, align 4
  %4291 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 3
  %4292 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 3
  store i32 %4285, i32* %4291, align 4
  store i32 %4288, i32* %4292, align 4
  br label %4293

; <label>:4293                                    ; preds = %4317, %4227
  %4294 = phi i32 [ %4282, %4227 ], [ %4321, %4317 ]
  %4295 = phi i32 [ %4281, %4227 ], [ %4319, %4317 ]
  %4296 = phi i32 [ 0, %4227 ], [ %4315, %4317 ]
  %4297 = add i32 %4239, -1
  %4298 = call i32 @dx.op.binary.i32(i32 40, i32 %4295, i32 %4297)  ; UMin(a,b)
  %4299 = call i32 @dx.op.binary.i32(i32 40, i32 %4294, i32 %4297)  ; UMin(a,b)
  %4300 = add i32 %4299, %4279
  %4301 = mul i32 %4300, %4239
  %4302 = add i32 %4301, %4298
  %4303 = lshr i32 %4302, 1
  %4304 = shl i32 %4303, 2
  %4305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4304, i32 undef)  ; BufferLoad(srv,index,wot)
  %4306 = extractvalue %dx.types.ResRet.i32 %4305, 0
  %4307 = shl i32 %4302, 4
  %4308 = and i32 %4307, 16
  %4309 = lshr i32 %4306, %4308
  %4310 = and i32 %4309, 65535
  %4311 = uitofp i32 %4310 to float
  %4312 = fmul fast float %4311, 0x3EF0002000000000
  %4313 = call float @dx.op.unary.f32(i32 7, float %4312)  ; Saturate(value)
  %4314 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 %4296
  store float %4313, float* %4314, align 4, !tbaa !92, !noalias !96
  %4315 = add nuw nsw i32 %4296, 1
  %4316 = icmp eq i32 %4315, 4
  br i1 %4316, label %4322, label %4317

; <label>:4317                                    ; preds = %4293
  %4318 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 %4315
  %4319 = load i32, i32* %4318, align 4
  %4320 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 %4315
  %4321 = load i32, i32* %4320, align 4
  br label %4293

; <label>:4322                                    ; preds = %4293
  %4323 = call float @dx.op.unary.f32(i32 22, float %4278)  ; Frc(value)
  %4324 = fsub fast float 1.000000e+00, %4280
  %4325 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  %4326 = load float, float* %4325, align 4, !tbaa !92, !noalias !96
  %4327 = fmul fast float %4326, %4324
  %4328 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  %4329 = load float, float* %4328, align 4, !tbaa !92, !noalias !96
  %4330 = fmul fast float %4329, %4280
  %4331 = fadd fast float %4330, %4327
  %4332 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  %4333 = load float, float* %4332, align 4, !tbaa !92, !noalias !96
  %4334 = fmul fast float %4333, %4324
  %4335 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  %4336 = load float, float* %4335, align 4, !tbaa !92, !noalias !96
  %4337 = fmul fast float %4336, %4280
  %4338 = fadd fast float %4337, %4334
  %4339 = fsub fast float 1.000000e+00, %4323
  %4340 = fmul fast float %4331, %4339
  %4341 = fmul fast float %4338, %4323
  %4342 = fadd fast float %4341, %4340
  br label %4370

; <label>:4343                                    ; preds = %4211
  %4344 = extractvalue %dx.types.CBufRet.f32 %4218, 1
  %4345 = fsub fast float %4223, %4344
  %4346 = extractvalue %dx.types.CBufRet.f32 %4218, 3
  %4347 = fdiv fast float %4345, %4346
  %4348 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4349 = fsub fast float %4222, %4348
  %4350 = extractvalue %dx.types.CBufRet.f32 %4218, 2
  %4351 = fdiv fast float %4349, %4350
  %4352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4353 = extractvalue %dx.types.CBufRet.i32 %4352, 0
  %4354 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %4355 = extractvalue %dx.types.CBufRet.f32 %4354, 0
  %4356 = extractvalue %dx.types.CBufRet.f32 %4354, 2
  %4357 = fdiv fast float 5.000000e-01, %4355
  %4358 = fmul fast float %4357, 2.000000e+00
  %4359 = fsub fast float 1.000000e+00, %4358
  %4360 = fmul fast float %4359, %4351
  %4361 = fmul fast float %4359, %4347
  %4362 = fadd fast float %4360, %4357
  %4363 = fadd fast float %4361, %4357
  %4364 = fmul fast float %4362, %4356
  %4365 = fmul fast float %4363, %4356
  %4366 = add i32 %4353, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4367, %dx.types.Handle %45, float %4364, float %4365, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  br label %4370

; <label>:4370                                    ; preds = %4343, %4322
  %4371 = phi float [ %4342, %4322 ], [ %4369, %4343 ]
  %4372 = fmul fast float %4371, %4221
  %4373 = fsub fast float %149, %4193
  %4374 = fadd fast float %4373, %4197
  %4375 = fsub fast float %4374, %4220
  %4376 = fsub fast float %4375, %4372
  %4377 = fcmp fast ult float %4376, -6.000000e+00
  br i1 %4377, label %4384, label %4378

; <label>:4378                                    ; preds = %4370
  %4379 = fsub fast float %4376, %4215
  %4380 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %4217)  ; FMax(a,b)
  %4381 = fdiv fast float %4379, %4380
  %4382 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4383 = fsub fast float 1.000000e+00, %4382
  br label %4384

; <label>:4384                                    ; preds = %4378, %4370
  %4385 = phi float [ %4383, %4378 ], [ 0.000000e+00, %4370 ]
  %4386 = fmul fast float %4385, %4206
  %4387 = fcmp fast olt float %4376, 1.600000e+01
  br i1 %4387, label %4388, label %5045

; <label>:4388                                    ; preds = %4384
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 2
  %4391 = extractvalue %dx.types.CBufRet.f32 %4389, 3
  %4392 = fsub fast float %147, %4390
  %4393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %4394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.f32 %4394, 2
  %4396 = extractvalue %dx.types.CBufRet.f32 %4394, 3
  %4397 = fadd fast float %4392, %4195
  %4398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.i32 %4398, 3
  %4400 = icmp eq i32 %4399, 0
  br i1 %4400, label %4517, label %4401, !dx.controlflow.hints !91

; <label>:4401                                    ; preds = %4388
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4404 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.f32 %4405, 0
  %4407 = extractvalue %dx.types.CBufRet.f32 %4405, 1
  %4408 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4409 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4410 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %4411 = extractvalue %dx.types.CBufRet.i32 %4410, 0
  %4412 = extractvalue %dx.types.CBufRet.i32 %4410, 1
  %4413 = extractvalue %dx.types.CBufRet.i32 %4410, 2
  %4414 = extractvalue %dx.types.CBufRet.i32 %4410, 3
  %4415 = fadd fast float %4403, 0xBF847AE140000000
  %4416 = fadd fast float %4404, 0xBF847AE140000000
  %4417 = fsub fast float %4397, %4406
  %4418 = fsub fast float %4223, %4407
  %4419 = call float @dx.op.binary.f32(i32 35, float %4417, float 0.000000e+00)  ; FMax(a,b)
  %4420 = call float @dx.op.binary.f32(i32 35, float %4418, float 0.000000e+00)  ; FMax(a,b)
  %4421 = call float @dx.op.binary.f32(i32 36, float %4419, float %4415)  ; FMin(a,b)
  %4422 = call float @dx.op.binary.f32(i32 36, float %4420, float %4416)  ; FMin(a,b)
  %4423 = fdiv fast float %4421, %4408
  %4424 = fdiv fast float %4422, %4409
  %4425 = fptoui float %4423 to i32
  %4426 = fptoui float %4424 to i32
  %4427 = mul i32 %4426, %4411
  %4428 = add i32 %4427, %4425
  %4429 = lshr i32 %4428, 1
  %4430 = shl i32 %4429, 2
  %4431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.i32 %4431, 0
  %4433 = shl i32 %4428, 4
  %4434 = and i32 %4433, 16
  %4435 = lshr i32 %4432, %4434
  %4436 = and i32 %4435, 255
  %4437 = lshr i32 %4435, 8
  %4438 = and i32 %4437, 31
  %4439 = shl i32 1, %4438
  %4440 = uitofp i32 %4439 to float
  %4441 = fmul fast float %4440, %4421
  %4442 = fdiv fast float %4441, %4403
  %4443 = fmul fast float %4440, %4422
  %4444 = fdiv fast float %4443, %4404
  %4445 = call float @dx.op.unary.f32(i32 22, float %4442)  ; Frc(value)
  %4446 = call float @dx.op.unary.f32(i32 22, float %4444)  ; Frc(value)
  %4447 = uitofp i32 %4412 to float
  %4448 = fmul fast float %4445, %4447
  %4449 = fmul fast float %4446, %4447
  %4450 = uitofp i32 %4414 to float
  %4451 = fadd fast float %4448, %4450
  %4452 = fadd fast float %4449, %4450
  %4453 = mul i32 %4436, %4413
  %4454 = call float @dx.op.unary.f32(i32 22, float %4451)  ; Frc(value)
  %4455 = fptoui float %4451 to i32
  %4456 = fptoui float %4452 to i32
  %4457 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 0
  %4458 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 0
  store i32 %4455, i32* %4457, align 4
  store i32 %4456, i32* %4458, align 4
  %4459 = add i32 %4455, 1
  %4460 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 1
  %4461 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 1
  store i32 %4459, i32* %4460, align 4
  store i32 %4456, i32* %4461, align 4
  %4462 = add i32 %4456, 1
  %4463 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 2
  %4464 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 2
  store i32 %4455, i32* %4463, align 4
  store i32 %4462, i32* %4464, align 4
  %4465 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 3
  %4466 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 3
  store i32 %4459, i32* %4465, align 4
  store i32 %4462, i32* %4466, align 4
  br label %4467

; <label>:4467                                    ; preds = %4491, %4401
  %4468 = phi i32 [ %4456, %4401 ], [ %4495, %4491 ]
  %4469 = phi i32 [ %4455, %4401 ], [ %4493, %4491 ]
  %4470 = phi i32 [ 0, %4401 ], [ %4489, %4491 ]
  %4471 = add i32 %4413, -1
  %4472 = call i32 @dx.op.binary.i32(i32 40, i32 %4469, i32 %4471)  ; UMin(a,b)
  %4473 = call i32 @dx.op.binary.i32(i32 40, i32 %4468, i32 %4471)  ; UMin(a,b)
  %4474 = add i32 %4473, %4453
  %4475 = mul i32 %4474, %4413
  %4476 = add i32 %4475, %4472
  %4477 = lshr i32 %4476, 1
  %4478 = shl i32 %4477, 2
  %4479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4478, i32 undef)  ; BufferLoad(srv,index,wot)
  %4480 = extractvalue %dx.types.ResRet.i32 %4479, 0
  %4481 = shl i32 %4476, 4
  %4482 = and i32 %4481, 16
  %4483 = lshr i32 %4480, %4482
  %4484 = and i32 %4483, 65535
  %4485 = uitofp i32 %4484 to float
  %4486 = fmul fast float %4485, 0x3EF0002000000000
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 %4470
  store float %4487, float* %4488, align 4, !tbaa !92, !noalias !96
  %4489 = add nuw nsw i32 %4470, 1
  %4490 = icmp eq i32 %4489, 4
  br i1 %4490, label %4496, label %4491

; <label>:4491                                    ; preds = %4467
  %4492 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 %4489
  %4493 = load i32, i32* %4492, align 4
  %4494 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 %4489
  %4495 = load i32, i32* %4494, align 4
  br label %4467

; <label>:4496                                    ; preds = %4467
  %4497 = call float @dx.op.unary.f32(i32 22, float %4452)  ; Frc(value)
  %4498 = fsub fast float 1.000000e+00, %4454
  %4499 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  %4500 = load float, float* %4499, align 4, !tbaa !92, !noalias !96
  %4501 = fmul fast float %4500, %4498
  %4502 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  %4503 = load float, float* %4502, align 4, !tbaa !92, !noalias !96
  %4504 = fmul fast float %4503, %4454
  %4505 = fadd fast float %4504, %4501
  %4506 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  %4507 = load float, float* %4506, align 4, !tbaa !92, !noalias !96
  %4508 = fmul fast float %4507, %4498
  %4509 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  %4510 = load float, float* %4509, align 4, !tbaa !92, !noalias !96
  %4511 = fmul fast float %4510, %4454
  %4512 = fadd fast float %4511, %4508
  %4513 = fsub fast float 1.000000e+00, %4497
  %4514 = fmul fast float %4505, %4513
  %4515 = fmul fast float %4512, %4497
  %4516 = fadd fast float %4515, %4514
  br label %4544

; <label>:4517                                    ; preds = %4388
  %4518 = extractvalue %dx.types.CBufRet.f32 %4393, 1
  %4519 = fsub fast float %4223, %4518
  %4520 = extractvalue %dx.types.CBufRet.f32 %4393, 3
  %4521 = fdiv fast float %4519, %4520
  %4522 = extractvalue %dx.types.CBufRet.f32 %4393, 0
  %4523 = fsub fast float %4397, %4522
  %4524 = extractvalue %dx.types.CBufRet.f32 %4393, 2
  %4525 = fdiv fast float %4523, %4524
  %4526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4527 = extractvalue %dx.types.CBufRet.i32 %4526, 0
  %4528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %4529 = extractvalue %dx.types.CBufRet.f32 %4528, 0
  %4530 = extractvalue %dx.types.CBufRet.f32 %4528, 2
  %4531 = fdiv fast float 5.000000e-01, %4529
  %4532 = fmul fast float %4531, 2.000000e+00
  %4533 = fsub fast float 1.000000e+00, %4532
  %4534 = fmul fast float %4533, %4525
  %4535 = fmul fast float %4533, %4521
  %4536 = fadd fast float %4534, %4531
  %4537 = fadd fast float %4535, %4531
  %4538 = fmul fast float %4536, %4530
  %4539 = fmul fast float %4537, %4530
  %4540 = add i32 %4527, 0
  %4541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4541, %dx.types.Handle %45, float %4538, float %4539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4543 = extractvalue %dx.types.ResRet.f32 %4542, 0
  br label %4544

; <label>:4544                                    ; preds = %4517, %4496
  %4545 = phi float [ %4516, %4496 ], [ %4543, %4517 ]
  %4546 = fmul fast float %4545, %4396
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %4549 = extractvalue %dx.types.CBufRet.f32 %4548, 2
  %4550 = extractvalue %dx.types.CBufRet.f32 %4548, 3
  %4551 = fadd fast float %4222, %4390
  %4552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.i32 %4552, 3
  %4554 = icmp eq i32 %4553, 0
  br i1 %4554, label %4671, label %4555, !dx.controlflow.hints !91

; <label>:4555                                    ; preds = %4544
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4558 = extractvalue %dx.types.CBufRet.f32 %4556, 3
  %4559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4560 = extractvalue %dx.types.CBufRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.CBufRet.f32 %4559, 1
  %4562 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4563 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %4565 = extractvalue %dx.types.CBufRet.i32 %4564, 0
  %4566 = extractvalue %dx.types.CBufRet.i32 %4564, 1
  %4567 = extractvalue %dx.types.CBufRet.i32 %4564, 2
  %4568 = extractvalue %dx.types.CBufRet.i32 %4564, 3
  %4569 = fadd fast float %4557, 0xBF847AE140000000
  %4570 = fadd fast float %4558, 0xBF847AE140000000
  %4571 = fsub fast float %4551, %4560
  %4572 = fsub fast float %4223, %4561
  %4573 = call float @dx.op.binary.f32(i32 35, float %4571, float 0.000000e+00)  ; FMax(a,b)
  %4574 = call float @dx.op.binary.f32(i32 35, float %4572, float 0.000000e+00)  ; FMax(a,b)
  %4575 = call float @dx.op.binary.f32(i32 36, float %4573, float %4569)  ; FMin(a,b)
  %4576 = call float @dx.op.binary.f32(i32 36, float %4574, float %4570)  ; FMin(a,b)
  %4577 = fdiv fast float %4575, %4562
  %4578 = fdiv fast float %4576, %4563
  %4579 = fptoui float %4577 to i32
  %4580 = fptoui float %4578 to i32
  %4581 = mul i32 %4580, %4565
  %4582 = add i32 %4581, %4579
  %4583 = lshr i32 %4582, 1
  %4584 = shl i32 %4583, 2
  %4585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4584, i32 undef)  ; BufferLoad(srv,index,wot)
  %4586 = extractvalue %dx.types.ResRet.i32 %4585, 0
  %4587 = shl i32 %4582, 4
  %4588 = and i32 %4587, 16
  %4589 = lshr i32 %4586, %4588
  %4590 = and i32 %4589, 255
  %4591 = lshr i32 %4589, 8
  %4592 = and i32 %4591, 31
  %4593 = shl i32 1, %4592
  %4594 = uitofp i32 %4593 to float
  %4595 = fmul fast float %4594, %4575
  %4596 = fdiv fast float %4595, %4557
  %4597 = fmul fast float %4594, %4576
  %4598 = fdiv fast float %4597, %4558
  %4599 = call float @dx.op.unary.f32(i32 22, float %4596)  ; Frc(value)
  %4600 = call float @dx.op.unary.f32(i32 22, float %4598)  ; Frc(value)
  %4601 = uitofp i32 %4566 to float
  %4602 = fmul fast float %4599, %4601
  %4603 = fmul fast float %4600, %4601
  %4604 = uitofp i32 %4568 to float
  %4605 = fadd fast float %4602, %4604
  %4606 = fadd fast float %4603, %4604
  %4607 = mul i32 %4590, %4567
  %4608 = call float @dx.op.unary.f32(i32 22, float %4605)  ; Frc(value)
  %4609 = fptoui float %4605 to i32
  %4610 = fptoui float %4606 to i32
  %4611 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 0
  %4612 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 0
  store i32 %4609, i32* %4611, align 4
  store i32 %4610, i32* %4612, align 4
  %4613 = add i32 %4609, 1
  %4614 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 1
  %4615 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 1
  store i32 %4613, i32* %4614, align 4
  store i32 %4610, i32* %4615, align 4
  %4616 = add i32 %4610, 1
  %4617 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 2
  %4618 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 2
  store i32 %4609, i32* %4617, align 4
  store i32 %4616, i32* %4618, align 4
  %4619 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 3
  %4620 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 3
  store i32 %4613, i32* %4619, align 4
  store i32 %4616, i32* %4620, align 4
  br label %4621

; <label>:4621                                    ; preds = %4645, %4555
  %4622 = phi i32 [ %4610, %4555 ], [ %4649, %4645 ]
  %4623 = phi i32 [ %4609, %4555 ], [ %4647, %4645 ]
  %4624 = phi i32 [ 0, %4555 ], [ %4643, %4645 ]
  %4625 = add i32 %4567, -1
  %4626 = call i32 @dx.op.binary.i32(i32 40, i32 %4623, i32 %4625)  ; UMin(a,b)
  %4627 = call i32 @dx.op.binary.i32(i32 40, i32 %4622, i32 %4625)  ; UMin(a,b)
  %4628 = add i32 %4627, %4607
  %4629 = mul i32 %4628, %4567
  %4630 = add i32 %4629, %4626
  %4631 = lshr i32 %4630, 1
  %4632 = shl i32 %4631, 2
  %4633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4632, i32 undef)  ; BufferLoad(srv,index,wot)
  %4634 = extractvalue %dx.types.ResRet.i32 %4633, 0
  %4635 = shl i32 %4630, 4
  %4636 = and i32 %4635, 16
  %4637 = lshr i32 %4634, %4636
  %4638 = and i32 %4637, 65535
  %4639 = uitofp i32 %4638 to float
  %4640 = fmul fast float %4639, 0x3EF0002000000000
  %4641 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4642 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 %4624
  store float %4641, float* %4642, align 4, !tbaa !92, !noalias !96
  %4643 = add nuw nsw i32 %4624, 1
  %4644 = icmp eq i32 %4643, 4
  br i1 %4644, label %4650, label %4645

; <label>:4645                                    ; preds = %4621
  %4646 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 %4643
  %4647 = load i32, i32* %4646, align 4
  %4648 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 %4643
  %4649 = load i32, i32* %4648, align 4
  br label %4621

; <label>:4650                                    ; preds = %4621
  %4651 = call float @dx.op.unary.f32(i32 22, float %4606)  ; Frc(value)
  %4652 = fsub fast float 1.000000e+00, %4608
  %4653 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 0
  %4654 = load float, float* %4653, align 4, !tbaa !92, !noalias !96
  %4655 = fmul fast float %4654, %4652
  %4656 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 1
  %4657 = load float, float* %4656, align 4, !tbaa !92, !noalias !96
  %4658 = fmul fast float %4657, %4608
  %4659 = fadd fast float %4658, %4655
  %4660 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 2
  %4661 = load float, float* %4660, align 4, !tbaa !92, !noalias !96
  %4662 = fmul fast float %4661, %4652
  %4663 = getelementptr inbounds [4 x float], [4 x float]* %85, i32 0, i32 3
  %4664 = load float, float* %4663, align 4, !tbaa !92, !noalias !96
  %4665 = fmul fast float %4664, %4608
  %4666 = fadd fast float %4665, %4662
  %4667 = fsub fast float 1.000000e+00, %4651
  %4668 = fmul fast float %4659, %4667
  %4669 = fmul fast float %4666, %4651
  %4670 = fadd fast float %4669, %4668
  br label %4698

; <label>:4671                                    ; preds = %4544
  %4672 = extractvalue %dx.types.CBufRet.f32 %4547, 1
  %4673 = fsub fast float %4223, %4672
  %4674 = extractvalue %dx.types.CBufRet.f32 %4547, 3
  %4675 = fdiv fast float %4673, %4674
  %4676 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4677 = fsub fast float %4551, %4676
  %4678 = extractvalue %dx.types.CBufRet.f32 %4547, 2
  %4679 = fdiv fast float %4677, %4678
  %4680 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4681 = extractvalue %dx.types.CBufRet.i32 %4680, 0
  %4682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %4683 = extractvalue %dx.types.CBufRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.CBufRet.f32 %4682, 2
  %4685 = fdiv fast float 5.000000e-01, %4683
  %4686 = fmul fast float %4685, 2.000000e+00
  %4687 = fsub fast float 1.000000e+00, %4686
  %4688 = fmul fast float %4687, %4679
  %4689 = fmul fast float %4687, %4675
  %4690 = fadd fast float %4688, %4685
  %4691 = fadd fast float %4689, %4685
  %4692 = fmul fast float %4690, %4684
  %4693 = fmul fast float %4691, %4684
  %4694 = add i32 %4681, 0
  %4695 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4694, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4696 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4695, %dx.types.Handle %45, float %4692, float %4693, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4697 = extractvalue %dx.types.ResRet.f32 %4696, 0
  br label %4698

; <label>:4698                                    ; preds = %4671, %4650
  %4699 = phi float [ %4670, %4650 ], [ %4697, %4671 ]
  %4700 = fmul fast float %4699, %4550
  %4701 = fsub fast float %148, %4391
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 3
  %4706 = fadd fast float %4701, %4196
  %4707 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4708 = extractvalue %dx.types.CBufRet.i32 %4707, 3
  %4709 = icmp eq i32 %4708, 0
  br i1 %4709, label %4826, label %4710, !dx.controlflow.hints !91

; <label>:4710                                    ; preds = %4698
  %4711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %4712 = extractvalue %dx.types.CBufRet.f32 %4711, 2
  %4713 = extractvalue %dx.types.CBufRet.f32 %4711, 3
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 0
  %4716 = extractvalue %dx.types.CBufRet.f32 %4714, 1
  %4717 = extractvalue %dx.types.CBufRet.f32 %4711, 0
  %4718 = extractvalue %dx.types.CBufRet.f32 %4711, 1
  %4719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.i32 %4719, 0
  %4721 = extractvalue %dx.types.CBufRet.i32 %4719, 1
  %4722 = extractvalue %dx.types.CBufRet.i32 %4719, 2
  %4723 = extractvalue %dx.types.CBufRet.i32 %4719, 3
  %4724 = fadd fast float %4712, 0xBF847AE140000000
  %4725 = fadd fast float %4713, 0xBF847AE140000000
  %4726 = fsub fast float %4222, %4715
  %4727 = fsub fast float %4706, %4716
  %4728 = call float @dx.op.binary.f32(i32 35, float %4726, float 0.000000e+00)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 35, float %4727, float 0.000000e+00)  ; FMax(a,b)
  %4730 = call float @dx.op.binary.f32(i32 36, float %4728, float %4724)  ; FMin(a,b)
  %4731 = call float @dx.op.binary.f32(i32 36, float %4729, float %4725)  ; FMin(a,b)
  %4732 = fdiv fast float %4730, %4717
  %4733 = fdiv fast float %4731, %4718
  %4734 = fptoui float %4732 to i32
  %4735 = fptoui float %4733 to i32
  %4736 = mul i32 %4735, %4720
  %4737 = add i32 %4736, %4734
  %4738 = lshr i32 %4737, 1
  %4739 = shl i32 %4738, 2
  %4740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4739, i32 undef)  ; BufferLoad(srv,index,wot)
  %4741 = extractvalue %dx.types.ResRet.i32 %4740, 0
  %4742 = shl i32 %4737, 4
  %4743 = and i32 %4742, 16
  %4744 = lshr i32 %4741, %4743
  %4745 = and i32 %4744, 255
  %4746 = lshr i32 %4744, 8
  %4747 = and i32 %4746, 31
  %4748 = shl i32 1, %4747
  %4749 = uitofp i32 %4748 to float
  %4750 = fmul fast float %4749, %4730
  %4751 = fdiv fast float %4750, %4712
  %4752 = fmul fast float %4749, %4731
  %4753 = fdiv fast float %4752, %4713
  %4754 = call float @dx.op.unary.f32(i32 22, float %4751)  ; Frc(value)
  %4755 = call float @dx.op.unary.f32(i32 22, float %4753)  ; Frc(value)
  %4756 = uitofp i32 %4721 to float
  %4757 = fmul fast float %4754, %4756
  %4758 = fmul fast float %4755, %4756
  %4759 = uitofp i32 %4723 to float
  %4760 = fadd fast float %4757, %4759
  %4761 = fadd fast float %4758, %4759
  %4762 = mul i32 %4745, %4722
  %4763 = call float @dx.op.unary.f32(i32 22, float %4760)  ; Frc(value)
  %4764 = fptoui float %4760 to i32
  %4765 = fptoui float %4761 to i32
  %4766 = getelementptr [4 x i32], [4 x i32]* %75, i32 0, i32 0
  %4767 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 0
  store i32 %4764, i32* %4766, align 4
  store i32 %4765, i32* %4767, align 4
  %4768 = add i32 %4764, 1
  %4769 = getelementptr [4 x i32], [4 x i32]* %75, i32 0, i32 1
  %4770 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 1
  store i32 %4768, i32* %4769, align 4
  store i32 %4765, i32* %4770, align 4
  %4771 = add i32 %4765, 1
  %4772 = getelementptr [4 x i32], [4 x i32]* %75, i32 0, i32 2
  %4773 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 2
  store i32 %4764, i32* %4772, align 4
  store i32 %4771, i32* %4773, align 4
  %4774 = getelementptr [4 x i32], [4 x i32]* %75, i32 0, i32 3
  %4775 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 3
  store i32 %4768, i32* %4774, align 4
  store i32 %4771, i32* %4775, align 4
  br label %4776

; <label>:4776                                    ; preds = %4800, %4710
  %4777 = phi i32 [ %4765, %4710 ], [ %4804, %4800 ]
  %4778 = phi i32 [ %4764, %4710 ], [ %4802, %4800 ]
  %4779 = phi i32 [ 0, %4710 ], [ %4798, %4800 ]
  %4780 = add i32 %4722, -1
  %4781 = call i32 @dx.op.binary.i32(i32 40, i32 %4778, i32 %4780)  ; UMin(a,b)
  %4782 = call i32 @dx.op.binary.i32(i32 40, i32 %4777, i32 %4780)  ; UMin(a,b)
  %4783 = add i32 %4782, %4762
  %4784 = mul i32 %4783, %4722
  %4785 = add i32 %4784, %4781
  %4786 = lshr i32 %4785, 1
  %4787 = shl i32 %4786, 2
  %4788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4787, i32 undef)  ; BufferLoad(srv,index,wot)
  %4789 = extractvalue %dx.types.ResRet.i32 %4788, 0
  %4790 = shl i32 %4785, 4
  %4791 = and i32 %4790, 16
  %4792 = lshr i32 %4789, %4791
  %4793 = and i32 %4792, 65535
  %4794 = uitofp i32 %4793 to float
  %4795 = fmul fast float %4794, 0x3EF0002000000000
  %4796 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4797 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 %4779
  store float %4796, float* %4797, align 4, !tbaa !92, !noalias !96
  %4798 = add nuw nsw i32 %4779, 1
  %4799 = icmp eq i32 %4798, 4
  br i1 %4799, label %4805, label %4800

; <label>:4800                                    ; preds = %4776
  %4801 = getelementptr [4 x i32], [4 x i32]* %75, i32 0, i32 %4798
  %4802 = load i32, i32* %4801, align 4
  %4803 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 %4798
  %4804 = load i32, i32* %4803, align 4
  br label %4776

; <label>:4805                                    ; preds = %4776
  %4806 = call float @dx.op.unary.f32(i32 22, float %4761)  ; Frc(value)
  %4807 = fsub fast float 1.000000e+00, %4763
  %4808 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 0
  %4809 = load float, float* %4808, align 4, !tbaa !92, !noalias !96
  %4810 = fmul fast float %4809, %4807
  %4811 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 1
  %4812 = load float, float* %4811, align 4, !tbaa !92, !noalias !96
  %4813 = fmul fast float %4812, %4763
  %4814 = fadd fast float %4813, %4810
  %4815 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 2
  %4816 = load float, float* %4815, align 4, !tbaa !92, !noalias !96
  %4817 = fmul fast float %4816, %4807
  %4818 = getelementptr inbounds [4 x float], [4 x float]* %84, i32 0, i32 3
  %4819 = load float, float* %4818, align 4, !tbaa !92, !noalias !96
  %4820 = fmul fast float %4819, %4763
  %4821 = fadd fast float %4820, %4817
  %4822 = fsub fast float 1.000000e+00, %4806
  %4823 = fmul fast float %4814, %4822
  %4824 = fmul fast float %4821, %4806
  %4825 = fadd fast float %4824, %4823
  br label %4853

; <label>:4826                                    ; preds = %4698
  %4827 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4828 = fsub fast float %4706, %4827
  %4829 = extractvalue %dx.types.CBufRet.f32 %4702, 3
  %4830 = fdiv fast float %4828, %4829
  %4831 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4832 = fsub fast float %4222, %4831
  %4833 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4834 = fdiv fast float %4832, %4833
  %4835 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4836 = extractvalue %dx.types.CBufRet.i32 %4835, 0
  %4837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %4838 = extractvalue %dx.types.CBufRet.f32 %4837, 0
  %4839 = extractvalue %dx.types.CBufRet.f32 %4837, 2
  %4840 = fdiv fast float 5.000000e-01, %4838
  %4841 = fmul fast float %4840, 2.000000e+00
  %4842 = fsub fast float 1.000000e+00, %4841
  %4843 = fmul fast float %4842, %4834
  %4844 = fmul fast float %4842, %4830
  %4845 = fadd fast float %4843, %4840
  %4846 = fadd fast float %4844, %4840
  %4847 = fmul fast float %4845, %4839
  %4848 = fmul fast float %4846, %4839
  %4849 = add i32 %4836, 0
  %4850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4850, %dx.types.Handle %45, float %4847, float %4848, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4852 = extractvalue %dx.types.ResRet.f32 %4851, 0
  br label %4853

; <label>:4853                                    ; preds = %4826, %4805
  %4854 = phi float [ %4825, %4805 ], [ %4852, %4826 ]
  %4855 = fmul fast float %4854, %4705
  %4856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %4857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %4858 = extractvalue %dx.types.CBufRet.f32 %4857, 2
  %4859 = extractvalue %dx.types.CBufRet.f32 %4857, 3
  %4860 = fadd fast float %4223, %4391
  %4861 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.i32 %4861, 3
  %4863 = icmp eq i32 %4862, 0
  br i1 %4863, label %4980, label %4864, !dx.controlflow.hints !91

; <label>:4864                                    ; preds = %4853
  %4865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %4866 = extractvalue %dx.types.CBufRet.f32 %4865, 2
  %4867 = extractvalue %dx.types.CBufRet.f32 %4865, 3
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 0
  %4870 = extractvalue %dx.types.CBufRet.f32 %4868, 1
  %4871 = extractvalue %dx.types.CBufRet.f32 %4865, 0
  %4872 = extractvalue %dx.types.CBufRet.f32 %4865, 1
  %4873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.i32 %4873, 0
  %4875 = extractvalue %dx.types.CBufRet.i32 %4873, 1
  %4876 = extractvalue %dx.types.CBufRet.i32 %4873, 2
  %4877 = extractvalue %dx.types.CBufRet.i32 %4873, 3
  %4878 = fadd fast float %4866, 0xBF847AE140000000
  %4879 = fadd fast float %4867, 0xBF847AE140000000
  %4880 = fsub fast float %4222, %4869
  %4881 = fsub fast float %4860, %4870
  %4882 = call float @dx.op.binary.f32(i32 35, float %4880, float 0.000000e+00)  ; FMax(a,b)
  %4883 = call float @dx.op.binary.f32(i32 35, float %4881, float 0.000000e+00)  ; FMax(a,b)
  %4884 = call float @dx.op.binary.f32(i32 36, float %4882, float %4878)  ; FMin(a,b)
  %4885 = call float @dx.op.binary.f32(i32 36, float %4883, float %4879)  ; FMin(a,b)
  %4886 = fdiv fast float %4884, %4871
  %4887 = fdiv fast float %4885, %4872
  %4888 = fptoui float %4886 to i32
  %4889 = fptoui float %4887 to i32
  %4890 = mul i32 %4889, %4874
  %4891 = add i32 %4890, %4888
  %4892 = lshr i32 %4891, 1
  %4893 = shl i32 %4892, 2
  %4894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4893, i32 undef)  ; BufferLoad(srv,index,wot)
  %4895 = extractvalue %dx.types.ResRet.i32 %4894, 0
  %4896 = shl i32 %4891, 4
  %4897 = and i32 %4896, 16
  %4898 = lshr i32 %4895, %4897
  %4899 = and i32 %4898, 255
  %4900 = lshr i32 %4898, 8
  %4901 = and i32 %4900, 31
  %4902 = shl i32 1, %4901
  %4903 = uitofp i32 %4902 to float
  %4904 = fmul fast float %4903, %4884
  %4905 = fdiv fast float %4904, %4866
  %4906 = fmul fast float %4903, %4885
  %4907 = fdiv fast float %4906, %4867
  %4908 = call float @dx.op.unary.f32(i32 22, float %4905)  ; Frc(value)
  %4909 = call float @dx.op.unary.f32(i32 22, float %4907)  ; Frc(value)
  %4910 = uitofp i32 %4875 to float
  %4911 = fmul fast float %4908, %4910
  %4912 = fmul fast float %4909, %4910
  %4913 = uitofp i32 %4877 to float
  %4914 = fadd fast float %4911, %4913
  %4915 = fadd fast float %4912, %4913
  %4916 = mul i32 %4899, %4876
  %4917 = call float @dx.op.unary.f32(i32 22, float %4914)  ; Frc(value)
  %4918 = fptoui float %4914 to i32
  %4919 = fptoui float %4915 to i32
  %4920 = getelementptr [4 x i32], [4 x i32]* %73, i32 0, i32 0
  %4921 = getelementptr [4 x i32], [4 x i32]* %74, i32 0, i32 0
  store i32 %4918, i32* %4920, align 4
  store i32 %4919, i32* %4921, align 4
  %4922 = add i32 %4918, 1
  %4923 = getelementptr [4 x i32], [4 x i32]* %73, i32 0, i32 1
  %4924 = getelementptr [4 x i32], [4 x i32]* %74, i32 0, i32 1
  store i32 %4922, i32* %4923, align 4
  store i32 %4919, i32* %4924, align 4
  %4925 = add i32 %4919, 1
  %4926 = getelementptr [4 x i32], [4 x i32]* %73, i32 0, i32 2
  %4927 = getelementptr [4 x i32], [4 x i32]* %74, i32 0, i32 2
  store i32 %4918, i32* %4926, align 4
  store i32 %4925, i32* %4927, align 4
  %4928 = getelementptr [4 x i32], [4 x i32]* %73, i32 0, i32 3
  %4929 = getelementptr [4 x i32], [4 x i32]* %74, i32 0, i32 3
  store i32 %4922, i32* %4928, align 4
  store i32 %4925, i32* %4929, align 4
  br label %4930

; <label>:4930                                    ; preds = %4954, %4864
  %4931 = phi i32 [ %4919, %4864 ], [ %4958, %4954 ]
  %4932 = phi i32 [ %4918, %4864 ], [ %4956, %4954 ]
  %4933 = phi i32 [ 0, %4864 ], [ %4952, %4954 ]
  %4934 = add i32 %4876, -1
  %4935 = call i32 @dx.op.binary.i32(i32 40, i32 %4932, i32 %4934)  ; UMin(a,b)
  %4936 = call i32 @dx.op.binary.i32(i32 40, i32 %4931, i32 %4934)  ; UMin(a,b)
  %4937 = add i32 %4936, %4916
  %4938 = mul i32 %4937, %4876
  %4939 = add i32 %4938, %4935
  %4940 = lshr i32 %4939, 1
  %4941 = shl i32 %4940, 2
  %4942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %4941, i32 undef)  ; BufferLoad(srv,index,wot)
  %4943 = extractvalue %dx.types.ResRet.i32 %4942, 0
  %4944 = shl i32 %4939, 4
  %4945 = and i32 %4944, 16
  %4946 = lshr i32 %4943, %4945
  %4947 = and i32 %4946, 65535
  %4948 = uitofp i32 %4947 to float
  %4949 = fmul fast float %4948, 0x3EF0002000000000
  %4950 = call float @dx.op.unary.f32(i32 7, float %4949)  ; Saturate(value)
  %4951 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 %4933
  store float %4950, float* %4951, align 4, !tbaa !92, !noalias !96
  %4952 = add nuw nsw i32 %4933, 1
  %4953 = icmp eq i32 %4952, 4
  br i1 %4953, label %4959, label %4954

; <label>:4954                                    ; preds = %4930
  %4955 = getelementptr [4 x i32], [4 x i32]* %73, i32 0, i32 %4952
  %4956 = load i32, i32* %4955, align 4
  %4957 = getelementptr [4 x i32], [4 x i32]* %74, i32 0, i32 %4952
  %4958 = load i32, i32* %4957, align 4
  br label %4930

; <label>:4959                                    ; preds = %4930
  %4960 = call float @dx.op.unary.f32(i32 22, float %4915)  ; Frc(value)
  %4961 = fsub fast float 1.000000e+00, %4917
  %4962 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 0
  %4963 = load float, float* %4962, align 4, !tbaa !92, !noalias !96
  %4964 = fmul fast float %4963, %4961
  %4965 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 1
  %4966 = load float, float* %4965, align 4, !tbaa !92, !noalias !96
  %4967 = fmul fast float %4966, %4917
  %4968 = fadd fast float %4967, %4964
  %4969 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 2
  %4970 = load float, float* %4969, align 4, !tbaa !92, !noalias !96
  %4971 = fmul fast float %4970, %4961
  %4972 = getelementptr inbounds [4 x float], [4 x float]* %83, i32 0, i32 3
  %4973 = load float, float* %4972, align 4, !tbaa !92, !noalias !96
  %4974 = fmul fast float %4973, %4917
  %4975 = fadd fast float %4974, %4971
  %4976 = fsub fast float 1.000000e+00, %4960
  %4977 = fmul fast float %4968, %4976
  %4978 = fmul fast float %4975, %4960
  %4979 = fadd fast float %4978, %4977
  br label %5007

; <label>:4980                                    ; preds = %4853
  %4981 = extractvalue %dx.types.CBufRet.f32 %4856, 1
  %4982 = fsub fast float %4860, %4981
  %4983 = extractvalue %dx.types.CBufRet.f32 %4856, 3
  %4984 = fdiv fast float %4982, %4983
  %4985 = extractvalue %dx.types.CBufRet.f32 %4856, 0
  %4986 = fsub fast float %4222, %4985
  %4987 = extractvalue %dx.types.CBufRet.f32 %4856, 2
  %4988 = fdiv fast float %4986, %4987
  %4989 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.i32 %4989, 0
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4991, 2
  %4994 = fdiv fast float 5.000000e-01, %4992
  %4995 = fmul fast float %4994, 2.000000e+00
  %4996 = fsub fast float 1.000000e+00, %4995
  %4997 = fmul fast float %4996, %4988
  %4998 = fmul fast float %4996, %4984
  %4999 = fadd fast float %4997, %4994
  %5000 = fadd fast float %4998, %4994
  %5001 = fmul fast float %4999, %4993
  %5002 = fmul fast float %5000, %4993
  %5003 = add i32 %4990, 0
  %5004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5004, %dx.types.Handle %45, float %5001, float %5002, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5006 = extractvalue %dx.types.ResRet.f32 %5005, 0
  br label %5007

; <label>:5007                                    ; preds = %4980, %4959
  %5008 = phi float [ %4979, %4959 ], [ %5006, %4980 ]
  %5009 = fmul fast float %5008, %4859
  %5010 = fsub fast float -0.000000e+00, %4704
  %5011 = fsub fast float %5010, %4855
  %5012 = fadd fast float %5011, %4858
  %5013 = fadd fast float %5012, %5009
  %5014 = fsub fast float -0.000000e+00, %4395
  %5015 = fsub fast float %5014, %4546
  %5016 = fadd fast float %5015, %4549
  %5017 = fadd fast float %5016, %4700
  %5018 = fmul fast float %4391, -2.000000e+00
  %5019 = fmul fast float %5018, %5017
  %5020 = fmul fast float %4390, -2.000000e+00
  %5021 = fmul fast float %5020, %5013
  %5022 = fmul fast float %4390, %4391
  %5023 = fmul fast float %5022, 4.000000e+00
  %5024 = call float @dx.op.dot3.f32(i32 55, float %5019, float %5021, float %5023, float %5019, float %5021, float %5023)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = call float @dx.op.unary.f32(i32 25, float %5024)  ; Rsqrt(value)
  %5026 = fmul fast float %5025, %5019
  %5027 = fmul fast float %5021, %5025
  %5028 = fmul fast float %5025, %5023
  %5029 = fmul fast float %4376, 6.250000e-02
  %5030 = call float @dx.op.unary.f32(i32 7, float %5029)  ; Saturate(value)
  %5031 = fsub fast float %99, %5026
  %5032 = fsub fast float %100, %5027
  %5033 = fsub fast float %101, %5028
  %5034 = fmul fast float %5031, %5030
  %5035 = fmul fast float %5032, %5030
  %5036 = fmul fast float %5033, %5030
  %5037 = fadd fast float %5034, %5026
  %5038 = fadd fast float %5035, %5027
  %5039 = fadd fast float %5036, %5028
  %5040 = call float @dx.op.dot3.f32(i32 55, float %5037, float %5038, float %5039, float %5037, float %5038, float %5039)  ; Dot3(ax,ay,az,bx,by,bz)
  %5041 = call float @dx.op.unary.f32(i32 25, float %5040)  ; Rsqrt(value)
  %5042 = fmul fast float %5037, %5041
  %5043 = fmul fast float %5038, %5041
  %5044 = fmul fast float %5039, %5041
  br label %5045

; <label>:5045                                    ; preds = %5007, %4384
  %5046 = phi float [ %5042, %5007 ], [ %99, %4384 ]
  %5047 = phi float [ %5043, %5007 ], [ %100, %4384 ]
  %5048 = phi float [ %5044, %5007 ], [ %101, %4384 ]
  %5049 = fsub fast float -0.000000e+00, %5046
  %5050 = call float @dx.op.dot3.f32(i32 55, float %5048, float 0.000000e+00, float %5049, float %5048, float 0.000000e+00, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.unary.f32(i32 25, float %5050)  ; Rsqrt(value)
  %5052 = fmul fast float %5051, %5048
  %5053 = fmul fast float %5051, %5049
  %5054 = fmul fast float %5053, %5047
  %5055 = fmul fast float %5052, %5048
  %5056 = fmul fast float %5053, %5046
  %5057 = fsub fast float %5055, %5056
  %5058 = fmul fast float %5047, %5052
  %5059 = fsub fast float -0.000000e+00, %5058
  %5060 = fmul fast float %5052, %3938
  %5061 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %5054, float %5060)  ; FMad(a,b,c)
  %5062 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %5046, float %5061)  ; FMad(a,b,c)
  %5063 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %5057, float 0.000000e+00)  ; FMad(a,b,c)
  %5064 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %5047, float %5063)  ; FMad(a,b,c)
  %5065 = fmul fast float %5053, %3938
  %5066 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %5059, float %5065)  ; FMad(a,b,c)
  %5067 = call float @dx.op.tertiary.f32(i32 46, float %3940, float %5048, float %5066)  ; FMad(a,b,c)
  %5068 = fsub fast float %3917, %3807
  %5069 = fsub fast float %3918, %3808
  %5070 = fsub fast float %3919, %3809
  %5071 = fmul fast float %4386, %5068
  %5072 = fmul fast float %4386, %5069
  %5073 = fmul fast float %4386, %5070
  %5074 = fadd fast float %5071, %3807
  %5075 = fadd fast float %5072, %3808
  %5076 = fadd fast float %5073, %3809
  %5077 = fsub fast float %3913, %3813
  %5078 = fmul fast float %4386, %5077
  %5079 = fadd fast float %5078, %3813
  %5080 = fsub fast float %3922, %3815
  %5081 = fmul fast float %4386, %5080
  %5082 = fadd fast float %5081, %3815
  %5083 = fsub fast float %3920, %3814
  %5084 = fmul fast float %4386, %5083
  %5085 = fadd fast float %5084, %3814
  %5086 = fsub fast float %3914, %3810
  %5087 = fsub fast float %3915, %3811
  %5088 = fsub fast float %3916, %3812
  %5089 = fmul fast float %4386, %5086
  %5090 = fmul fast float %4386, %5087
  %5091 = fmul fast float %4386, %5088
  %5092 = fadd fast float %5089, %3810
  %5093 = fadd fast float %5090, %3811
  %5094 = fadd fast float %5091, %3812
  %5095 = fsub fast float %3912, %3817
  %5096 = fmul fast float %4386, %5095
  %5097 = fadd fast float %5096, %3817
  %5098 = fsub fast float %5062, %3845
  %5099 = fsub fast float %5064, %3846
  %5100 = fsub fast float %5067, %3847
  %5101 = fmul fast float %5098, %4386
  %5102 = fmul fast float %5099, %4386
  %5103 = fmul fast float %5100, %4386
  %5104 = fadd fast float %5101, %3845
  %5105 = fadd fast float %5102, %3846
  %5106 = fadd fast float %5103, %3847
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5104, float %5105, float %5106, float %5104, float %5105, float %5106)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = call float @dx.op.unary.f32(i32 25, float %5107)  ; Rsqrt(value)
  %5109 = fmul fast float %5108, %5104
  %5110 = fmul fast float %5108, %5105
  %5111 = fmul fast float %5106, %5108
  br label %5112

; <label>:5112                                    ; preds = %5045, %4192, %3804
  %5113 = phi float [ %3845, %3804 ], [ %5109, %5045 ], [ %3845, %4192 ]
  %5114 = phi float [ %3846, %3804 ], [ %5110, %5045 ], [ %3846, %4192 ]
  %5115 = phi float [ %3847, %3804 ], [ %5111, %5045 ], [ %3847, %4192 ]
  %5116 = phi float [ %3807, %3804 ], [ %5074, %5045 ], [ %3807, %4192 ]
  %5117 = phi float [ %3808, %3804 ], [ %5075, %5045 ], [ %3808, %4192 ]
  %5118 = phi float [ %3809, %3804 ], [ %5076, %5045 ], [ %3809, %4192 ]
  %5119 = phi float [ %3810, %3804 ], [ %5092, %5045 ], [ %3810, %4192 ]
  %5120 = phi float [ %3811, %3804 ], [ %5093, %5045 ], [ %3811, %4192 ]
  %5121 = phi float [ %3812, %3804 ], [ %5094, %5045 ], [ %3812, %4192 ]
  %5122 = phi float [ %3813, %3804 ], [ %5079, %5045 ], [ %3813, %4192 ]
  %5123 = phi float [ %3814, %3804 ], [ %5085, %5045 ], [ %3814, %4192 ]
  %5124 = phi float [ %3815, %3804 ], [ %5082, %5045 ], [ %3815, %4192 ]
  %5125 = phi float [ %3817, %3804 ], [ %5097, %5045 ], [ %3817, %4192 ]
  %5126 = and i32 %51, 1
  %5127 = icmp eq i32 %5126, 0
  br i1 %5127, label %5128, label %5636

; <label>:5128                                    ; preds = %5112
  %5129 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %5130 = call float @dx.op.unary.f32(i32 83, float %148)  ; DerivCoarseX(value)
  %5131 = call float @dx.op.unary.f32(i32 83, float %149)  ; DerivCoarseX(value)
  %5132 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %5133 = call float @dx.op.unary.f32(i32 84, float %148)  ; DerivCoarseY(value)
  %5134 = call float @dx.op.unary.f32(i32 84, float %149)  ; DerivCoarseY(value)
  %5135 = fadd fast float %5129, %147
  %5136 = fadd fast float %5130, %148
  %5137 = fadd fast float %5131, %149
  %5138 = fadd fast float %5132, %147
  %5139 = fadd fast float %5133, %148
  %5140 = fadd fast float %5134, %149
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5143 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5144 = extractvalue %dx.types.CBufRet.f32 %5141, 2
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5147 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5148 = fmul fast float %5142, %92
  %5149 = fmul fast float %5148, %5146
  %5150 = fmul fast float %5143, %93
  %5151 = fmul fast float %5150, %5147
  %5152 = fptoui float %5149 to i32
  %5153 = fptoui float %5151 to i32
  %5154 = fadd fast float %5142, -1.000000e+00
  %5155 = fadd fast float %5143, -1.000000e+00
  %5156 = fptoui float %5154 to i32
  %5157 = fptoui float %5155 to i32
  %5158 = call i32 @dx.op.binary.i32(i32 40, i32 %5152, i32 %5156)  ; UMin(a,b)
  %5159 = call i32 @dx.op.binary.i32(i32 40, i32 %5153, i32 %5157)  ; UMin(a,b)
  %5160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %5161 = extractvalue %dx.types.CBufRet.f32 %5160, 2
  %5162 = extractvalue %dx.types.CBufRet.f32 %5160, 3
  %5163 = fmul fast float %5161, %72
  %5164 = fsub fast float %5163, %5162
  %5165 = fadd fast float %5144, -1.000000e+00
  %5166 = call float @dx.op.binary.f32(i32 36, float %5164, float %5165)  ; FMin(a,b)
  %5167 = fptoui float %5166 to i32
  %5168 = fptoui float %5142 to i32
  %5169 = fptoui float %5143 to i32
  %5170 = mul i32 %5167, %5169
  %5171 = add i32 %5170, %5159
  %5172 = mul i32 %5171, %5168
  %5173 = add i32 %5172, %5158
  %5174 = shl i32 %5173, 2
  %5175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %5174, i32 undef)  ; BufferLoad(srv,index,wot)
  %5176 = extractvalue %dx.types.ResRet.i32 %5175, 0
  %5177 = and i32 %5176, 1023
  %5178 = lshr i32 %5176, 10
  %5179 = icmp eq i32 %5177, 0
  br i1 %5179, label %5605, label %5180

; <label>:5180                                    ; preds = %5128
  %5181 = and i32 %5176, 1023
  br label %5182

; <label>:5182                                    ; preds = %5308, %5180
  %5183 = phi float [ %5309, %5308 ], [ 0.000000e+00, %5180 ]
  %5184 = phi float [ %5310, %5308 ], [ %3819, %5180 ]
  %5185 = phi float [ %5311, %5308 ], [ %5125, %5180 ]
  %5186 = phi float [ %5312, %5308 ], [ %3816, %5180 ]
  %5187 = phi float [ %5313, %5308 ], [ 0.000000e+00, %5180 ]
  %5188 = phi float [ %5314, %5308 ], [ %5119, %5180 ]
  %5189 = phi float [ %5315, %5308 ], [ %5120, %5180 ]
  %5190 = phi float [ %5316, %5308 ], [ %5121, %5180 ]
  %5191 = phi float [ %5317, %5308 ], [ %5113, %5180 ]
  %5192 = phi float [ %5318, %5308 ], [ %5114, %5180 ]
  %5193 = phi float [ %5319, %5308 ], [ %5115, %5180 ]
  %5194 = phi float [ %5320, %5308 ], [ %5124, %5180 ]
  %5195 = phi float [ %5321, %5308 ], [ %5123, %5180 ]
  %5196 = phi float [ %5322, %5308 ], [ 0.000000e+00, %5180 ]
  %5197 = phi float [ %5323, %5308 ], [ %5122, %5180 ]
  %5198 = phi float [ %5324, %5308 ], [ %5116, %5180 ]
  %5199 = phi float [ %5325, %5308 ], [ %5117, %5180 ]
  %5200 = phi float [ %5326, %5308 ], [ %5118, %5180 ]
  %5201 = phi i32 [ %5258, %5308 ], [ 0, %5180 ]
  %5202 = add nuw nsw i32 %5201, %5178
  %5203 = shl i32 %5202, 2
  %5204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %5203, i32 undef)  ; BufferLoad(srv,index,wot)
  %5205 = extractvalue %dx.types.ResRet.i32 %5204, 0
  %5206 = shl i32 %5205, 8
  %5207 = or i32 %5206, 48
  %5208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5207, i32 undef)  ; BufferLoad(srv,index,wot)
  %5209 = extractvalue %dx.types.ResRet.f32 %5208, 0
  %5210 = extractvalue %dx.types.ResRet.f32 %5208, 1
  %5211 = extractvalue %dx.types.ResRet.f32 %5208, 2
  %5212 = extractvalue %dx.types.ResRet.f32 %5208, 3
  %5213 = or i32 %5206, 64
  %5214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %5213, i32 undef)  ; BufferLoad(srv,index,wot)
  %5215 = extractvalue %dx.types.ResRet.i32 %5214, 0
  %5216 = extractvalue %dx.types.ResRet.i32 %5214, 1
  %5217 = or i32 %5206, 80
  %5218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5217, i32 undef)  ; BufferLoad(srv,index,wot)
  %5219 = extractvalue %dx.types.ResRet.f32 %5218, 2
  %5220 = extractvalue %dx.types.ResRet.f32 %5218, 3
  %5221 = or i32 %5206, 96
  %5222 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5221, i32 undef)  ; BufferLoad(srv,index,wot)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 0
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 1
  %5225 = extractvalue %dx.types.ResRet.f32 %5222, 2
  %5226 = extractvalue %dx.types.ResRet.f32 %5222, 3
  %5227 = or i32 %5206, 112
  %5228 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5227, i32 undef)  ; BufferLoad(srv,index,wot)
  %5229 = extractvalue %dx.types.ResRet.f32 %5228, 2
  %5230 = or i32 %5206, 128
  %5231 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5230, i32 undef)  ; BufferLoad(srv,index,wot)
  %5232 = extractvalue %dx.types.ResRet.f32 %5231, 0
  %5233 = extractvalue %dx.types.ResRet.f32 %5231, 1
  %5234 = extractvalue %dx.types.ResRet.f32 %5231, 2
  %5235 = extractvalue %dx.types.ResRet.f32 %5231, 3
  %5236 = or i32 %5206, 144
  %5237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.ResRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.ResRet.f32 %5237, 2
  %5241 = extractvalue %dx.types.ResRet.f32 %5237, 3
  %5242 = or i32 %5206, 160
  %5243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5242, i32 undef)  ; BufferLoad(srv,index,wot)
  %5244 = extractvalue %dx.types.ResRet.f32 %5243, 0
  %5245 = extractvalue %dx.types.ResRet.f32 %5243, 1
  %5246 = extractvalue %dx.types.ResRet.f32 %5243, 2
  %5247 = extractvalue %dx.types.ResRet.f32 %5243, 3
  %5248 = or i32 %5206, 192
  %5249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %5248, i32 undef)  ; BufferLoad(srv,index,wot)
  %5250 = extractvalue %dx.types.ResRet.i32 %5249, 0
  %5251 = or i32 %5206, 208
  %5252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5251, i32 undef)  ; BufferLoad(srv,index,wot)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = or i32 %5206, 248
  %5255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5254, i32 undef)  ; BufferLoad(srv,index,wot)
  %5256 = extractvalue %dx.types.ResRet.f32 %5255, 0
  %5257 = extractvalue %dx.types.ResRet.f32 %5255, 1
  %5258 = add nuw nsw i32 %5201, 1
  %5259 = bitcast float %5212 to i32
  %5260 = and i32 %5259, 512
  %5261 = icmp eq i32 %5260, 0
  %5262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5206, i32 undef)  ; BufferLoad(srv,index,wot)
  %5263 = extractvalue %dx.types.ResRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.ResRet.f32 %5262, 1
  %5265 = extractvalue %dx.types.ResRet.f32 %5262, 2
  %5266 = extractvalue %dx.types.ResRet.f32 %5262, 3
  %5267 = call float @dx.op.dot4.f32(i32 56, float %5263, float %5264, float %5265, float %5266, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5268 = or i32 %5206, 16
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.ResRet.f32 %5269, 2
  %5273 = extractvalue %dx.types.ResRet.f32 %5269, 3
  %5274 = call float @dx.op.dot4.f32(i32 56, float %5270, float %5271, float %5272, float %5273, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5275 = or i32 %5206, 32
  %5276 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %5275, i32 undef)  ; BufferLoad(srv,index,wot)
  %5277 = extractvalue %dx.types.ResRet.f32 %5276, 0
  %5278 = extractvalue %dx.types.ResRet.f32 %5276, 1
  %5279 = extractvalue %dx.types.ResRet.f32 %5276, 2
  %5280 = extractvalue %dx.types.ResRet.f32 %5276, 3
  %5281 = call float @dx.op.dot4.f32(i32 56, float %5277, float %5278, float %5279, float %5280, float %147, float %148, float %149, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5282 = call float @dx.op.unary.f32(i32 27, float %5267)  ; Round_ni(value)
  %5283 = call float @dx.op.unary.f32(i32 6, float %5282)  ; FAbs(value)
  %5284 = call float @dx.op.unary.f32(i32 27, float %5274)  ; Round_ni(value)
  %5285 = call float @dx.op.unary.f32(i32 6, float %5284)  ; FAbs(value)
  %5286 = call float @dx.op.unary.f32(i32 6, float %5281)  ; FAbs(value)
  %5287 = call float @dx.op.unary.f32(i32 27, float %5286)  ; Round_ni(value)
  %5288 = fadd fast float %5285, %5283
  %5289 = fadd fast float %5288, %5287
  %5290 = fcmp fast oeq float %5289, 0.000000e+00
  %5291 = call float @dx.op.dot4.f32(i32 56, float %5263, float %5264, float %5265, float %5266, float %5135, float %5136, float %5137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5292 = call float @dx.op.dot4.f32(i32 56, float %5270, float %5271, float %5272, float %5273, float %5135, float %5136, float %5137, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5293 = call float @dx.op.dot4.f32(i32 56, float %5263, float %5264, float %5265, float %5266, float %5138, float %5139, float %5140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5294 = call float @dx.op.dot4.f32(i32 56, float %5270, float %5271, float %5272, float %5273, float %5138, float %5139, float %5140, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %5295 = fsub fast float %5291, %5267
  %5296 = fsub fast float %5293, %5267
  %5297 = fsub fast float %5292, %5274
  %5298 = fsub fast float %5294, %5274
  %5299 = call float @dx.op.dot3.f32(i32 55, float %5209, float %5210, float %5211, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 2
  %5302 = fadd fast float %5301, %5299
  %5303 = call float @dx.op.unary.f32(i32 7, float %5302)  ; Saturate(value)
  %5304 = extractvalue %dx.types.CBufRet.f32 %5300, 0
  %5305 = fcmp fast ogt float %5303, %5304
  %5306 = and i1 %5290, %5305
  %5307 = and i1 %5261, %5306
  br i1 %5307, label %5328, label %5308

; <label>:5308                                    ; preds = %5591, %5409, %5328, %5182
  %5309 = phi float [ %5183, %5328 ], [ %5412, %5409 ], [ %5412, %5591 ], [ %5183, %5182 ]
  %5310 = phi float [ %5184, %5328 ], [ %5184, %5409 ], [ %5566, %5591 ], [ %5184, %5182 ]
  %5311 = phi float [ %5185, %5328 ], [ %5185, %5409 ], [ %5564, %5591 ], [ %5185, %5182 ]
  %5312 = phi float [ %5186, %5328 ], [ %5186, %5409 ], [ %5536, %5591 ], [ %5186, %5182 ]
  %5313 = phi float [ %5187, %5328 ], [ %5187, %5409 ], [ %5534, %5591 ], [ %5187, %5182 ]
  %5314 = phi float [ %5188, %5328 ], [ %5188, %5409 ], [ %5601, %5591 ], [ %5188, %5182 ]
  %5315 = phi float [ %5189, %5328 ], [ %5189, %5409 ], [ %5602, %5591 ], [ %5189, %5182 ]
  %5316 = phi float [ %5190, %5328 ], [ %5190, %5409 ], [ %5603, %5591 ], [ %5190, %5182 ]
  %5317 = phi float [ %5191, %5328 ], [ %5191, %5409 ], [ %5515, %5591 ], [ %5191, %5182 ]
  %5318 = phi float [ %5192, %5328 ], [ %5192, %5409 ], [ %5516, %5591 ], [ %5192, %5182 ]
  %5319 = phi float [ %5193, %5328 ], [ %5193, %5409 ], [ %5517, %5591 ], [ %5193, %5182 ]
  %5320 = phi float [ %5194, %5328 ], [ %5194, %5409 ], [ %5544, %5591 ], [ %5194, %5182 ]
  %5321 = phi float [ %5195, %5328 ], [ %5195, %5409 ], [ %5541, %5591 ], [ %5195, %5182 ]
  %5322 = phi float [ %5196, %5328 ], [ %5196, %5409 ], [ %5538, %5591 ], [ %5196, %5182 ]
  %5323 = phi float [ %5197, %5328 ], [ %5197, %5409 ], [ %5532, %5591 ], [ %5197, %5182 ]
  %5324 = phi float [ %5198, %5328 ], [ %5198, %5409 ], [ %5527, %5591 ], [ %5198, %5182 ]
  %5325 = phi float [ %5199, %5328 ], [ %5199, %5409 ], [ %5528, %5591 ], [ %5199, %5182 ]
  %5326 = phi float [ %5200, %5328 ], [ %5200, %5409 ], [ %5529, %5591 ], [ %5200, %5182 ]
  %5327 = icmp eq i32 %5258, %5181
  br i1 %5327, label %5604, label %5182

; <label>:5328                                    ; preds = %5182
  %5329 = extractvalue %dx.types.ResRet.f32 %5228, 3
  %5330 = extractvalue %dx.types.ResRet.f32 %5228, 1
  %5331 = extractvalue %dx.types.ResRet.f32 %5228, 0
  %5332 = extractvalue %dx.types.ResRet.f32 %5218, 1
  %5333 = extractvalue %dx.types.ResRet.f32 %5218, 0
  %5334 = extractvalue %dx.types.ResRet.i32 %5214, 3
  %5335 = extractvalue %dx.types.ResRet.i32 %5214, 2
  %5336 = add i32 %5334, 0
  %5337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5336, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5338 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5339 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5337, %dx.types.Handle %5338, float %5267, float %5274, float undef, float undef, i32 0, i32 0, i32 undef, float %5295, float %5297, float undef, float %5296, float %5298, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5340 = extractvalue %dx.types.ResRet.f32 %5339, 0
  %5341 = fmul fast float %5340, %5333
  %5342 = fadd fast float %5341, %5332
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fmul fast float %5267, %5223
  %5345 = call float @dx.op.tertiary.f32(i32 46, float %5224, float %5274, float %5344)  ; FMad(a,b,c)
  %5346 = fadd fast float %5345, %5331
  %5347 = fmul fast float %5267, %5225
  %5348 = call float @dx.op.tertiary.f32(i32 46, float %5226, float %5274, float %5347)  ; FMad(a,b,c)
  %5349 = fadd fast float %5348, %5330
  %5350 = fmul fast float %5295, %5223
  %5351 = call float @dx.op.tertiary.f32(i32 46, float %5224, float %5297, float %5350)  ; FMad(a,b,c)
  %5352 = fmul fast float %5295, %5225
  %5353 = call float @dx.op.tertiary.f32(i32 46, float %5226, float %5297, float %5352)  ; FMad(a,b,c)
  %5354 = fmul fast float %5296, %5223
  %5355 = call float @dx.op.tertiary.f32(i32 46, float %5224, float %5298, float %5354)  ; FMad(a,b,c)
  %5356 = fmul fast float %5296, %5225
  %5357 = call float @dx.op.tertiary.f32(i32 46, float %5226, float %5298, float %5356)  ; FMad(a,b,c)
  %5358 = add i32 %5335, 0
  %5359 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5358, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5360 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5359, %dx.types.Handle %5338, float %5346, float %5349, float undef, float undef, i32 0, i32 0, i32 undef, float %5351, float %5353, float undef, float %5355, float %5357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5361 = extractvalue %dx.types.ResRet.f32 %5360, 0
  %5362 = and i32 %5259, 1024
  %5363 = icmp ne i32 %5362, 0
  %5364 = fcmp fast ogt float %5361, 0x3FE0101020000000
  %5365 = uitofp i1 %5364 to float
  %5366 = select i1 %5363, float %5365, float %5361
  %5367 = and i32 %5259, 8192
  %5368 = icmp ne i32 %5367, 0
  %5369 = select i1 %5368, float %5329, float 1.000000e+00
  %5370 = fmul fast float %5267, 2.000000e+00
  %5371 = fadd fast float %5370, -1.000000e+00
  %5372 = call float @dx.op.unary.f32(i32 6, float %5371)  ; FAbs(value)
  %5373 = fmul fast float %5372, %5256
  %5374 = fsub fast float %5373, %5256
  %5375 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5376 = fmul fast float %5274, 2.000000e+00
  %5377 = fadd fast float %5376, -1.000000e+00
  %5378 = call float @dx.op.unary.f32(i32 6, float %5377)  ; FAbs(value)
  %5379 = fmul fast float %5378, %5257
  %5380 = fsub fast float %5379, %5257
  %5381 = call float @dx.op.unary.f32(i32 7, float %5380)  ; Saturate(value)
  %5382 = fmul fast float %5286, %5219
  %5383 = fsub fast float %5382, %5219
  %5384 = call float @dx.op.unary.f32(i32 7, float %5383)  ; Saturate(value)
  %5385 = fmul fast float %5343, %5369
  %5386 = fmul fast float %5385, %5340
  %5387 = fmul fast float %5386, %5375
  %5388 = fmul fast float %5387, %5366
  %5389 = fmul fast float %5388, %5381
  %5390 = fmul fast float %5389, %5384
  %5391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %5392 = extractvalue %dx.types.CBufRet.f32 %5391, 1
  %5393 = extractvalue %dx.types.CBufRet.f32 %5391, 0
  %5394 = fsub fast float %5303, %5393
  %5395 = fmul fast float %5394, %5392
  %5396 = call float @dx.op.unary.f32(i32 7, float %5395)  ; Saturate(value)
  %5397 = fmul fast float %5390, %5220
  %5398 = fadd fast float %5390, %5220
  %5399 = fmul fast float %5398, %5229
  %5400 = fsub fast float %5399, %5229
  %5401 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5402 = and i32 %5259, 128
  %5403 = icmp ne i32 %5402, 0
  %5404 = select i1 %5403, float %5401, float %5397
  %5405 = fmul fast float %5404, %5396
  %5406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %5407 = extractvalue %dx.types.CBufRet.f32 %5406, 0
  %5408 = fcmp fast ugt float %5405, %5407
  br i1 %5408, label %5409, label %5308

; <label>:5409                                    ; preds = %5328
  %5410 = select i1 %5368, float %5405, float 0.000000e+00
  %5411 = fadd fast float %5410, %5183
  %5412 = call float @dx.op.unary.f32(i32 7, float %5411)  ; Saturate(value)
  br i1 %5368, label %5308, label %5413

; <label>:5413                                    ; preds = %5409
  %5414 = and i32 %5259, 4
  %5415 = and i32 %5259, 8
  %5416 = add i32 %5215, 0
  %5417 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5416, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5419 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5417, %dx.types.Handle %5418, float %5346, float %5349, float undef, float undef, i32 0, i32 0, i32 undef, float %5351, float %5353, float undef, float %5355, float %5357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.ResRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.ResRet.f32 %5419, 2
  %5423 = extractvalue %dx.types.ResRet.f32 %5419, 3
  %5424 = bitcast float %5241 to i32
  %5425 = and i32 %5424, 255
  %5426 = uitofp i32 %5425 to float
  %5427 = lshr i32 %5424, 8
  %5428 = and i32 %5427, 255
  %5429 = uitofp i32 %5428 to float
  %5430 = fmul fast float %5423, %5426
  %5431 = fadd fast float %5430, %5429
  %5432 = fmul fast float %5431, 0x3F70101000000000
  %5433 = add i32 %5216, 0
  %5434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5433, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5435 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5434, %dx.types.Handle %5418, float %5346, float %5349, float undef, float undef, i32 0, i32 0, i32 undef, float %5351, float %5353, float undef, float %5355, float %5357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5436 = extractvalue %dx.types.ResRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.ResRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.ResRet.f32 %5435, 2
  %5439 = extractvalue %dx.types.ResRet.f32 %5435, 3
  %5440 = bitcast float %5235 to i32
  %5441 = and i32 %5440, 255
  %5442 = uitofp i32 %5441 to float
  %5443 = lshr i32 %5440, 8
  %5444 = and i32 %5443, 255
  %5445 = uitofp i32 %5444 to float
  %5446 = lshr i32 %5440, 16
  %5447 = and i32 %5446, 255
  %5448 = uitofp i32 %5447 to float
  %5449 = fmul fast float %5448, 0x3F70101000000000
  %5450 = fmul fast float %5436, %5442
  %5451 = fadd fast float %5450, %5445
  %5452 = fmul fast float %5451, 0x3F70101000000000
  %5453 = fadd fast float %5437, -5.000000e-01
  %5454 = fadd fast float %5439, -5.000000e-01
  %5455 = fmul fast float %5453, %5449
  %5456 = fmul fast float %5454, %5449
  %5457 = fadd fast float %5455, 5.000000e-01
  %5458 = fadd fast float %5456, 5.000000e-01
  %5459 = fmul fast float %5420, %5244
  %5460 = fmul fast float %5421, %5245
  %5461 = fmul fast float %5422, %5246
  %5462 = fmul fast float %5457, 2.000000e+00
  %5463 = fadd fast float %5462, -1.000000e+00
  %5464 = fmul fast float %5458, 2.000000e+00
  %5465 = fadd fast float %5464, -1.000000e+00
  %5466 = fadd fast float %5463, %5465
  %5467 = fmul fast float %5466, 5.000000e-01
  %5468 = fsub fast float %5463, %5465
  %5469 = fmul fast float %5468, 5.000000e-01
  %5470 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %5471 = fsub fast float 1.000000e+00, %5470
  %5472 = call float @dx.op.unary.f32(i32 6, float %5469)  ; FAbs(value)
  %5473 = fsub fast float %5471, %5472
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5467, float %5469, float %5473, float %5467, float %5469, float %5473)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = call float @dx.op.unary.f32(i32 25, float %5474)  ; Rsqrt(value)
  %5476 = fmul fast float %5467, %5475
  %5477 = fmul fast float %5469, %5475
  %5478 = fmul fast float %5475, %5473
  %5479 = fmul fast float %5478, %5209
  %5480 = fmul fast float %5478, %5210
  %5481 = fmul fast float %5478, %5211
  %5482 = fmul fast float %5476, %5232
  %5483 = fmul fast float %5476, %5233
  %5484 = fmul fast float %5476, %5234
  %5485 = fadd fast float %5482, %5479
  %5486 = fadd fast float %5483, %5480
  %5487 = fadd fast float %5484, %5481
  %5488 = fmul fast float %5477, %5238
  %5489 = fmul fast float %5477, %5239
  %5490 = fmul fast float %5477, %5240
  %5491 = fadd fast float %5485, %5488
  %5492 = fadd fast float %5486, %5489
  %5493 = fadd fast float %5487, %5490
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5491, float %5492, float %5493, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = call float @dx.op.unary.f32(i32 25, float %5494)  ; Rsqrt(value)
  %5496 = fmul fast float %5491, %5495
  %5497 = fmul fast float %5492, %5495
  %5498 = fmul fast float %5493, %5495
  %5499 = icmp ne i32 %5415, 0
  %5500 = select i1 %5499, float 1.000000e+00, float 0.000000e+00
  %5501 = fmul fast float %5405, %5500
  %5502 = and i32 %5259, 1
  %5503 = icmp eq i32 %5502, 0
  br i1 %5503, label %5504, label %5508

; <label>:5504                                    ; preds = %5413
  %5505 = fsub fast float %5496, %5191
  %5506 = fsub fast float %5497, %5192
  %5507 = fsub fast float %5498, %5193
  br label %5508

; <label>:5508                                    ; preds = %5504, %5413
  %5509 = phi float [ %5505, %5504 ], [ %5496, %5413 ]
  %5510 = phi float [ %5506, %5504 ], [ %5497, %5413 ]
  %5511 = phi float [ %5507, %5504 ], [ %5498, %5413 ]
  %5512 = fmul float %5511, %5501
  %5513 = fmul float %5510, %5501
  %5514 = fmul float %5509, %5501
  %5515 = fadd fast float %5514, %5191
  %5516 = fadd fast float %5513, %5192
  %5517 = fadd fast float %5512, %5193
  %5518 = icmp ne i32 %5414, 0
  %5519 = select i1 %5518, float 1.000000e+00, float 0.000000e+00
  %5520 = fmul fast float %5405, %5519
  %5521 = fsub fast float %5459, %5198
  %5522 = fsub fast float %5460, %5199
  %5523 = fsub fast float %5461, %5200
  %5524 = fmul fast float %5521, %5520
  %5525 = fmul fast float %5522, %5520
  %5526 = fmul fast float %5523, %5520
  %5527 = fadd fast float %5524, %5198
  %5528 = fadd fast float %5525, %5199
  %5529 = fadd fast float %5526, %5200
  %5530 = fsub fast float %5432, %5197
  %5531 = fmul fast float %5530, %5520
  %5532 = fadd fast float %5531, %5197
  %5533 = fmul fast float %5520, %5187
  %5534 = fsub fast float %5187, %5533
  %5535 = fmul fast float %5520, %5186
  %5536 = fsub fast float %5186, %5535
  %5537 = fadd fast float %5405, %5196
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fsub fast float %5452, %5195
  %5540 = fmul fast float %5539, %5501
  %5541 = fadd fast float %5540, %5195
  %5542 = fsub fast float %5438, %5194
  %5543 = fmul fast float %5542, %5501
  %5544 = fadd fast float %5543, %5194
  %5545 = call float @dx.op.dot3.f32(i32 55, float %5459, float %5460, float %5461, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 0
  %5548 = extractvalue %dx.types.CBufRet.f32 %5546, 1
  %5549 = fmul fast float %5548, %5545
  %5550 = fadd fast float %5549, %5547
  %5551 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5552 = bitcast float %5247 to i32
  %5553 = and i32 %5552, 65535
  %5554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5553)  ; LegacyF16ToF32(value)
  %5555 = lshr i32 %5552, 16
  %5556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5555)  ; LegacyF16ToF32(value)
  %5557 = fcmp fast oge float %5554, 0.000000e+00
  %5558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5559 = extractvalue %dx.types.CBufRet.f32 %5558, 0
  %5560 = select i1 %5557, float %5554, float %5559
  %5561 = fadd fast float %5560, %5556
  %5562 = fsub fast float %5551, %5185
  %5563 = fmul fast float %5562, %5405
  %5564 = fadd fast float %5563, %5185
  %5565 = fmul fast float %5561, %5405
  %5566 = call float @dx.op.binary.f32(i32 35, float %5184, float %5565)  ; FMax(a,b)
  %5567 = and i32 %5259, 16
  %5568 = icmp eq i32 %5567, 0
  br i1 %5568, label %5591, label %5569

; <label>:5569                                    ; preds = %5508
  %5570 = bitcast float %5253 to i32
  %5571 = add i32 %5250, 0
  %5572 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5571, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5573 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %5572, %dx.types.Handle %5418, float %5346, float %5349, float undef, float undef, i32 0, i32 0, i32 undef, float %5351, float %5353, float undef, float %5355, float %5357, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %5574 = extractvalue %dx.types.ResRet.f32 %5573, 0
  %5575 = extractvalue %dx.types.ResRet.f32 %5573, 1
  %5576 = extractvalue %dx.types.ResRet.f32 %5573, 2
  %5577 = and i32 %5570, 65535
  %5578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %5577)  ; LegacyF16ToF32(value)
  %5579 = fmul fast float %5574, %5244
  %5580 = fmul fast float %5575, %5245
  %5581 = fmul fast float %5576, %5246
  %5582 = and i32 %5259, 16384
  %5583 = icmp ne i32 %5582, 0
  %5584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5585 = extractvalue %dx.types.CBufRet.f32 %5584, 0
  %5586 = select i1 %5583, float %5585, float 1.000000e+00
  %5587 = fmul fast float %5586, %5578
  %5588 = fmul fast float %5579, %5587
  %5589 = fmul fast float %5580, %5587
  %5590 = fmul fast float %5581, %5587
  br label %5591

; <label>:5591                                    ; preds = %5569, %5508
  %5592 = phi float [ %5588, %5569 ], [ 0.000000e+00, %5508 ]
  %5593 = phi float [ %5589, %5569 ], [ 0.000000e+00, %5508 ]
  %5594 = phi float [ %5590, %5569 ], [ 0.000000e+00, %5508 ]
  %5595 = fsub fast float %5592, %5188
  %5596 = fsub fast float %5593, %5189
  %5597 = fsub fast float %5594, %5190
  %5598 = fmul fast float %5595, %5405
  %5599 = fmul fast float %5596, %5405
  %5600 = fmul fast float %5597, %5405
  %5601 = fadd fast float %5598, %5188
  %5602 = fadd fast float %5599, %5189
  %5603 = fadd fast float %5600, %5190
  br label %5308

; <label>:5604                                    ; preds = %5308
  br label %5605

; <label>:5605                                    ; preds = %5604, %5128
  %5606 = phi float [ 0.000000e+00, %5128 ], [ %5309, %5604 ]
  %5607 = phi float [ %3819, %5128 ], [ %5310, %5604 ]
  %5608 = phi float [ %5125, %5128 ], [ %5311, %5604 ]
  %5609 = phi float [ %3816, %5128 ], [ %5312, %5604 ]
  %5610 = phi float [ 0.000000e+00, %5128 ], [ %5313, %5604 ]
  %5611 = phi float [ %5119, %5128 ], [ %5314, %5604 ]
  %5612 = phi float [ %5120, %5128 ], [ %5315, %5604 ]
  %5613 = phi float [ %5121, %5128 ], [ %5316, %5604 ]
  %5614 = phi float [ %5113, %5128 ], [ %5317, %5604 ]
  %5615 = phi float [ %5114, %5128 ], [ %5318, %5604 ]
  %5616 = phi float [ %5115, %5128 ], [ %5319, %5604 ]
  %5617 = phi float [ %5124, %5128 ], [ %5320, %5604 ]
  %5618 = phi float [ %5123, %5128 ], [ %5321, %5604 ]
  %5619 = phi float [ 0.000000e+00, %5128 ], [ %5322, %5604 ]
  %5620 = phi float [ %5122, %5128 ], [ %5323, %5604 ]
  %5621 = phi float [ %5116, %5128 ], [ %5324, %5604 ]
  %5622 = phi float [ %5117, %5128 ], [ %5325, %5604 ]
  %5623 = phi float [ %5118, %5128 ], [ %5326, %5604 ]
  %5624 = call float @dx.op.dot3.f32(i32 55, float %5614, float %5615, float %5616, float %5614, float %5615, float %5616)  ; Dot3(ax,ay,az,bx,by,bz)
  %5625 = call float @dx.op.unary.f32(i32 25, float %5624)  ; Rsqrt(value)
  %5626 = fmul fast float %5625, %5614
  %5627 = fmul fast float %5625, %5615
  %5628 = fmul fast float %5625, %5616
  %5629 = fadd fast float %5619, %1131
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = call float @dx.op.dot3.f32(i32 55, float %5626, float %5627, float %5628, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5632 = call float @dx.op.unary.f32(i32 25, float %5631)  ; Rsqrt(value)
  %5633 = fmul fast float %5632, %5626
  %5634 = fmul fast float %5632, %5627
  %5635 = fmul fast float %5632, %5628
  br label %5636

; <label>:5636                                    ; preds = %5605, %5112
  %5637 = phi float [ %5633, %5605 ], [ %5113, %5112 ]
  %5638 = phi float [ %5634, %5605 ], [ %5114, %5112 ]
  %5639 = phi float [ %5635, %5605 ], [ %5115, %5112 ]
  %5640 = phi float [ %5621, %5605 ], [ %5116, %5112 ]
  %5641 = phi float [ %5622, %5605 ], [ %5117, %5112 ]
  %5642 = phi float [ %5623, %5605 ], [ %5118, %5112 ]
  %5643 = phi float [ %5611, %5605 ], [ %5119, %5112 ]
  %5644 = phi float [ %5612, %5605 ], [ %5120, %5112 ]
  %5645 = phi float [ %5613, %5605 ], [ %5121, %5112 ]
  %5646 = phi float [ %5620, %5605 ], [ %5122, %5112 ]
  %5647 = phi float [ %5630, %5605 ], [ %1131, %5112 ]
  %5648 = phi float [ %5618, %5605 ], [ %5123, %5112 ]
  %5649 = phi float [ %5617, %5605 ], [ %5124, %5112 ]
  %5650 = phi float [ %5610, %5605 ], [ 0.000000e+00, %5112 ]
  %5651 = phi float [ %5609, %5605 ], [ %3816, %5112 ]
  %5652 = phi float [ %5606, %5605 ], [ 0.000000e+00, %5112 ]
  %5653 = phi float [ %5607, %5605 ], [ %3819, %5112 ]
  %5654 = phi float [ %5608, %5605 ], [ %5125, %5112 ]
  %5655 = fadd fast float %5646, 0xBFB99999A0000000
  %5656 = call float @dx.op.unary.f32(i32 7, float %5655)  ; Saturate(value)
  %5657 = fmul fast float %5656, 0x3FF1C71C80000000
  %5658 = call float @dx.op.binary.f32(i32 36, float %5646, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5659 = fsub fast float 1.000000e+00, %5657
  %5660 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5661 = fmul fast float %5660, %5640
  %5662 = fmul fast float %5660, %5641
  %5663 = fmul fast float %5660, %5642
  %5664 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5665 = call float @dx.op.unary.f32(i32 7, float %5662)  ; Saturate(value)
  %5666 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5667 = fmul fast float %5657, %5640
  %5668 = fmul fast float %5657, %5641
  %5669 = fmul fast float %5657, %5642
  %5670 = fadd fast float %5667, %5658
  %5671 = fadd fast float %5668, %5658
  %5672 = fadd fast float %5669, %5658
  %5673 = call float @dx.op.unary.f32(i32 7, float %5670)  ; Saturate(value)
  %5674 = call float @dx.op.unary.f32(i32 7, float %5671)  ; Saturate(value)
  %5675 = call float @dx.op.unary.f32(i32 7, float %5672)  ; Saturate(value)
  %5676 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5678 = extractvalue %dx.types.CBufRet.i32 %5677, 3
  %5679 = and i32 %5678, 8
  %5680 = icmp ne i32 %5679, 0
  %5681 = call float @dx.op.binary.f32(i32 35, float %5664, float %5640)  ; FMax(a,b)
  %5682 = call float @dx.op.binary.f32(i32 35, float %5665, float %5640)  ; FMax(a,b)
  %5683 = call float @dx.op.binary.f32(i32 35, float %5666, float %5640)  ; FMax(a,b)
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5664, float %5665, float %5666, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = select i1 %397, float %5640, float %5664
  %5686 = select i1 %397, float %5684, float %5665
  %5687 = select i1 %397, float 1.000000e+00, float %5666
  %5688 = select i1 %5680, float %5681, float %5685
  %5689 = select i1 %5680, float %5682, float %5686
  %5690 = select i1 %5680, float %5683, float %5687
  %5691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5692 = extractvalue %dx.types.CBufRet.f32 %5691, 0
  %5693 = extractvalue %dx.types.CBufRet.f32 %5691, 1
  %5694 = extractvalue %dx.types.CBufRet.f32 %5691, 2
  %5695 = fadd fast float %5692, %147
  %5696 = fadd fast float %5693, %148
  %5697 = fadd fast float %5694, %149
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.CBufRet.f32 %5698, 1
  %5701 = fsub fast float %5695, %5699
  %5702 = fsub fast float %5696, %5700
  %5703 = fmul fast float %5701, %5701
  %5704 = fmul fast float %5702, %5702
  %5705 = fadd fast float %5703, %5704
  %5706 = call float @dx.op.unary.f32(i32 24, float %5705)  ; Sqrt(value)
  %5707 = extractvalue %dx.types.CBufRet.f32 %5698, 2
  %5708 = fcmp fast olt float %5706, %5707
  br i1 %5708, label %5709, label %5776

; <label>:5709                                    ; preds = %5636
  %5710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5711 = extractvalue %dx.types.CBufRet.f32 %5710, 0
  %5712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5713 = extractvalue %dx.types.CBufRet.f32 %5712, 0
  %5714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5715 = extractvalue %dx.types.CBufRet.f32 %5714, 0
  %5716 = extractvalue %dx.types.CBufRet.f32 %5710, 1
  %5717 = extractvalue %dx.types.CBufRet.f32 %5712, 1
  %5718 = extractvalue %dx.types.CBufRet.f32 %5714, 1
  %5719 = extractvalue %dx.types.CBufRet.f32 %5710, 3
  %5720 = extractvalue %dx.types.CBufRet.f32 %5712, 3
  %5721 = extractvalue %dx.types.CBufRet.f32 %5714, 3
  %5722 = fadd fast float %5719, %5695
  %5723 = fadd fast float %5720, %5696
  %5724 = fadd fast float %5721, %5697
  %5725 = fmul fast float %5722, %5711
  %5726 = call float @dx.op.tertiary.f32(i32 46, float %5723, float %5713, float %5725)  ; FMad(a,b,c)
  %5727 = call float @dx.op.tertiary.f32(i32 46, float %5724, float %5715, float %5726)  ; FMad(a,b,c)
  %5728 = fmul fast float %5722, %5716
  %5729 = call float @dx.op.tertiary.f32(i32 46, float %5723, float %5717, float %5728)  ; FMad(a,b,c)
  %5730 = call float @dx.op.tertiary.f32(i32 46, float %5724, float %5718, float %5729)  ; FMad(a,b,c)
  %5731 = fsub fast float %5727, %5719
  %5732 = fsub fast float %5730, %5720
  %5733 = fsub fast float %5731, %5699
  %5734 = fadd fast float %5733, %5707
  %5735 = fsub fast float %5732, %5700
  %5736 = fadd fast float %5735, %5707
  %5737 = extractvalue %dx.types.CBufRet.f32 %5698, 3
  %5738 = fmul fast float %5734, %5737
  %5739 = fmul fast float %5736, %5737
  %5740 = call float @dx.op.unary.f32(i32 7, float %5738)  ; Saturate(value)
  %5741 = call float @dx.op.unary.f32(i32 7, float %5739)  ; Saturate(value)
  %5742 = fsub fast float 1.000000e+00, %5740
  %5743 = fsub fast float 1.000000e+00, %5741
  %5744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %45, float %5742, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5745 = extractvalue %dx.types.ResRet.f32 %5744, 0
  %5746 = fcmp fast ugt float %5745, 0.000000e+00
  br i1 %5746, label %5747, label %6050

; <label>:5747                                    ; preds = %5709
  %5748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5749 = extractvalue %dx.types.CBufRet.f32 %5748, 2
  %5750 = fmul fast float %5749, %5745
  %5751 = extractvalue %dx.types.CBufRet.f32 %5748, 3
  %5752 = fadd fast float %5751, %5750
  %5753 = extractvalue %dx.types.CBufRet.f32 %5714, 2
  %5754 = fadd fast float %5752, %5721
  %5755 = fmul fast float %5727, %5715
  %5756 = call float @dx.op.tertiary.f32(i32 46, float %5730, float %5718, float %5755)  ; FMad(a,b,c)
  %5757 = call float @dx.op.tertiary.f32(i32 46, float %5754, float %5753, float %5756)  ; FMad(a,b,c)
  %5758 = fsub fast float %5757, %5721
  %5759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5760 = extractvalue %dx.types.CBufRet.f32 %5759, 2
  %5761 = fsub fast float %5758, %5760
  %5762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %45, float %5742, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5763 = extractvalue %dx.types.ResRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.ResRet.f32 %5762, 1
  %5765 = extractvalue %dx.types.ResRet.f32 %5762, 2
  %5766 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %45, float %5742, float %5743, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5767 = extractvalue %dx.types.ResRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.ResRet.f32 %5766, 1
  %5769 = extractvalue %dx.types.ResRet.f32 %5766, 2
  %5770 = fadd fast float %5767, %5763
  %5771 = fmul fast float %5770, 0x3F847AE140000000
  %5772 = fadd fast float %5768, %5764
  %5773 = fmul fast float %5772, 0x3F847AE140000000
  %5774 = fadd fast float %5769, %5765
  %5775 = fmul fast float %5774, 0x3F847AE140000000
  br label %6050

; <label>:5776                                    ; preds = %5636
  %5777 = and i32 %373, 1
  %5778 = icmp eq i32 %5777, 0
  br i1 %5778, label %6050, label %5779

; <label>:5779                                    ; preds = %5776
  %5780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5781 = extractvalue %dx.types.CBufRet.f32 %5780, 0
  %5782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5783 = extractvalue %dx.types.CBufRet.f32 %5782, 0
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5780, 1
  %5787 = extractvalue %dx.types.CBufRet.f32 %5782, 1
  %5788 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5789 = extractvalue %dx.types.CBufRet.f32 %5780, 3
  %5790 = extractvalue %dx.types.CBufRet.f32 %5782, 3
  %5791 = extractvalue %dx.types.CBufRet.f32 %5784, 3
  %5792 = fadd fast float %5789, %5695
  %5793 = fadd fast float %5790, %5696
  %5794 = fadd fast float %5791, %5697
  %5795 = fmul fast float %5792, %5781
  %5796 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %5783, float %5795)  ; FMad(a,b,c)
  %5797 = call float @dx.op.tertiary.f32(i32 46, float %5794, float %5785, float %5796)  ; FMad(a,b,c)
  %5798 = fmul fast float %5792, %5786
  %5799 = call float @dx.op.tertiary.f32(i32 46, float %5793, float %5787, float %5798)  ; FMad(a,b,c)
  %5800 = call float @dx.op.tertiary.f32(i32 46, float %5794, float %5788, float %5799)  ; FMad(a,b,c)
  %5801 = fsub fast float %5797, %5789
  %5802 = fsub fast float %5800, %5790
  %5803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5804 = extractvalue %dx.types.CBufRet.f32 %5803, 0
  %5805 = extractvalue %dx.types.CBufRet.f32 %5803, 1
  %5806 = extractvalue %dx.types.CBufRet.f32 %5803, 2
  %5807 = extractvalue %dx.types.CBufRet.f32 %5803, 3
  %5808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5809 = extractvalue %dx.types.CBufRet.f32 %5808, 3
  %5810 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5811 = extractvalue %dx.types.CBufRet.i32 %5810, 0
  %5812 = extractvalue %dx.types.CBufRet.i32 %5810, 1
  %5813 = udiv i32 %5812, %5811
  %5814 = fsub fast float %5801, %5804
  %5815 = fsub fast float %5802, %5805
  %5816 = call float @dx.op.binary.f32(i32 35, float %5814, float 0.000000e+00)  ; FMax(a,b)
  %5817 = call float @dx.op.binary.f32(i32 35, float %5815, float 0.000000e+00)  ; FMax(a,b)
  %5818 = call float @dx.op.binary.f32(i32 36, float %5816, float %5806)  ; FMin(a,b)
  %5819 = call float @dx.op.binary.f32(i32 36, float %5817, float %5807)  ; FMin(a,b)
  %5820 = add i32 %5811, -1
  %5821 = add i32 %5813, -1
  %5822 = fmul fast float %5818, %5809
  %5823 = fmul fast float %5819, %5809
  %5824 = fptoui float %5822 to i32
  %5825 = fptoui float %5823 to i32
  %5826 = call i32 @dx.op.binary.i32(i32 40, i32 %5824, i32 %5820)  ; UMin(a,b)
  %5827 = call i32 @dx.op.binary.i32(i32 40, i32 %5825, i32 %5821)  ; UMin(a,b)
  %5828 = mul i32 %5827, %5811
  %5829 = add i32 %5828, %5826
  %5830 = shl i32 %5829, 2
  %5831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5830, i32 undef)  ; BufferLoad(srv,index,wot)
  %5832 = extractvalue %dx.types.ResRet.i32 %5831, 0
  %5833 = icmp eq i32 %5832, -1
  br i1 %5833, label %6050, label %5834

; <label>:5834                                    ; preds = %5779
  %5835 = mul i32 %5832, 148
  %5836 = add i32 %5835, 4
  %5837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5836, i32 undef)  ; BufferLoad(srv,index,wot)
  %5838 = extractvalue %dx.types.ResRet.f32 %5837, 0
  %5839 = add i32 %5835, 8
  %5840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5839, i32 undef)  ; BufferLoad(srv,index,wot)
  %5841 = extractvalue %dx.types.ResRet.f32 %5840, 0
  %5842 = add i32 %5835, 36
  %5843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5842, i32 undef)  ; BufferLoad(srv,index,wot)
  %5844 = extractvalue %dx.types.ResRet.f32 %5843, 0
  %5845 = add i32 %5835, 60
  %5846 = add i32 %5835, 92
  %5847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5846, i32 undef)  ; BufferLoad(srv,index,wot)
  %5848 = extractvalue %dx.types.ResRet.i32 %5847, 0
  %5849 = add i32 %5835, 116
  %5850 = fsub fast float %5801, %5838
  %5851 = fsub fast float %5802, %5841
  %5852 = fmul fast float %5809, %5850
  %5853 = fmul fast float %5809, %5851
  %5854 = call float @dx.op.unary.f32(i32 7, float %5852)  ; Saturate(value)
  %5855 = call float @dx.op.unary.f32(i32 7, float %5853)  ; Saturate(value)
  %5856 = fsub fast float 1.000000e+00, %5855
  %5857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5858 = extractvalue %dx.types.CBufRet.f32 %5857, 2
  %5859 = call float @dx.op.unary.f32(i32 83, float %5854)  ; DerivCoarseX(value)
  %5860 = call float @dx.op.unary.f32(i32 83, float %5856)  ; DerivCoarseX(value)
  %5861 = call float @dx.op.unary.f32(i32 84, float %5854)  ; DerivCoarseY(value)
  %5862 = call float @dx.op.unary.f32(i32 84, float %5856)  ; DerivCoarseY(value)
  %5863 = fmul fast float %5859, %5858
  %5864 = fmul fast float %5860, %5858
  %5865 = fmul fast float %5861, %5858
  %5866 = fmul fast float %5862, %5858
  %5867 = call float @dx.op.dot2.f32(i32 54, float %5865, float %5866, float %5865, float %5866)  ; Dot2(ax,ay,bx,by)
  %5868 = call float @dx.op.dot2.f32(i32 54, float %5863, float %5864, float %5863, float %5864)  ; Dot2(ax,ay,bx,by)
  %5869 = call float @dx.op.binary.f32(i32 35, float %5868, float %5867)  ; FMax(a,b)
  %5870 = call float @dx.op.unary.f32(i32 23, float %5869)  ; Log(value)
  %5871 = fmul fast float %5870, 5.000000e-01
  %5872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %5873 = extractvalue %dx.types.CBufRet.f32 %5872, 1
  %5874 = fadd fast float %5873, %5871
  %5875 = call float @dx.op.binary.f32(i32 35, float %5874, float 0.000000e+00)  ; FMax(a,b)
  %5876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5877 = extractvalue %dx.types.CBufRet.f32 %5876, 3
  %5878 = fadd fast float %5877, %5875
  %5879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5880 = extractvalue %dx.types.CBufRet.f32 %5879, 3
  %5881 = fadd fast float %5878, %5880
  %5882 = add i32 %5848, 0
  %5883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5882, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5884 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5883, i32 0)  ; GetDimensions(handle,mipLevel)
  %5885 = extractvalue %dx.types.Dimensions %5884, 0
  %5886 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5885)  ; FirstbitLo(value)
  %5887 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.i32 %5887, 1
  %5889 = sub nsw i32 %5888, %5886
  %5890 = sitofp i32 %5889 to float
  %5891 = fsub fast float %5881, %5890
  %5892 = call float @dx.op.binary.f32(i32 35, float %5891, float 0.000000e+00)  ; FMax(a,b)
  %5893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5883, %dx.types.Handle %43, float %5854, float %5856, float %5844, float undef, i32 0, i32 0, i32 undef, float %5892)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = fcmp ule float %5894, 0x3FE0101020000000
  %5896 = extractvalue %dx.types.CBufRet.i32 %5887, 0
  %5897 = and i32 %5896, 128
  %5898 = icmp ne i32 %5897, 0
  %5899 = and i1 %5895, %5898
  br i1 %5899, label %6050, label %5900

; <label>:5900                                    ; preds = %5834
  %5901 = add i32 %5835, 20
  %5902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5901, i32 undef)  ; BufferLoad(srv,index,wot)
  %5903 = extractvalue %dx.types.ResRet.f32 %5902, 0
  %5904 = add i32 %5835, 24
  %5905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5904, i32 undef)  ; BufferLoad(srv,index,wot)
  %5906 = extractvalue %dx.types.ResRet.f32 %5905, 0
  %5907 = add i32 %5835, 40
  %5908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5907, i32 undef)  ; BufferLoad(srv,index,wot)
  %5909 = extractvalue %dx.types.ResRet.f32 %5908, 0
  %5910 = add i32 %5835, 96
  %5911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5910, i32 undef)  ; BufferLoad(srv,index,wot)
  %5912 = extractvalue %dx.types.ResRet.i32 %5911, 0
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5915 = fmul fast float %5914, %5854
  %5916 = fmul fast float %5914, %5856
  %5917 = extractvalue %dx.types.CBufRet.f32 %5913, 3
  %5918 = fadd fast float %5915, %5917
  %5919 = fadd fast float %5916, %5917
  %5920 = add i32 %5912, 0
  %5921 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5920, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5922 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5921, i32 0)  ; GetDimensions(handle,mipLevel)
  %5923 = extractvalue %dx.types.Dimensions %5922, 0
  %5924 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5923)  ; FirstbitLo(value)
  %5925 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.i32 %5925, 1
  %5927 = sub nsw i32 %5926, %5924
  %5928 = sitofp i32 %5927 to float
  %5929 = fsub fast float %5878, %5928
  %5930 = call float @dx.op.binary.f32(i32 35, float %5929, float 0.000000e+00)  ; FMax(a,b)
  %5931 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5921, %dx.types.Handle %43, float %5918, float %5919, float %5909, float undef, i32 0, i32 0, i32 undef, float %5930)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5932 = extractvalue %dx.types.ResRet.f32 %5931, 0
  %5933 = fmul fast float %5932, %5903
  %5934 = fadd fast float %5933, %5906
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5940 = extractvalue %dx.types.CBufRet.f32 %5939, 3
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 3
  %5943 = extractvalue %dx.types.CBufRet.f32 %5935, 3
  %5944 = fadd fast float %5940, %5801
  %5945 = fadd fast float %5942, %5802
  %5946 = fadd fast float %5934, %5943
  %5947 = fmul fast float %5944, %5936
  %5948 = call float @dx.op.tertiary.f32(i32 46, float %5945, float %5937, float %5947)  ; FMad(a,b,c)
  %5949 = call float @dx.op.tertiary.f32(i32 46, float %5946, float %5938, float %5948)  ; FMad(a,b,c)
  %5950 = fsub fast float %5949, %5943
  %5951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5952 = extractvalue %dx.types.CBufRet.f32 %5951, 2
  %5953 = fsub fast float %5950, %5952
  %5954 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5955 = extractvalue %dx.types.CBufRet.i32 %5954, 0
  %5956 = call i32 @dx.op.binary.i32(i32 40, i32 %5832, i32 %5955)  ; UMin(a,b)
  %5957 = mul i32 %5956, 36
  %5958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5957, i32 undef)  ; BufferLoad(srv,index,wot)
  %5959 = extractvalue %dx.types.ResRet.i32 %5958, 0
  %5960 = add i32 %5957, 4
  %5961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5962 = extractvalue %dx.types.CBufRet.f32 %5961, 0
  %5963 = fmul fast float %5962, %5854
  %5964 = fmul fast float %5962, %5856
  %5965 = extractvalue %dx.types.CBufRet.f32 %5961, 1
  %5966 = fadd fast float %5963, %5965
  %5967 = fadd fast float %5964, %5965
  %5968 = icmp eq i32 %5959, 0
  br i1 %5968, label %6037, label %5969

; <label>:5969                                    ; preds = %5900
  br label %5970

; <label>:5970                                    ; preds = %6027, %5969
  %5971 = phi float [ %6028, %6027 ], [ 0.000000e+00, %5969 ]
  %5972 = phi float [ %6029, %6027 ], [ 0.000000e+00, %5969 ]
  %5973 = phi float [ %6030, %6027 ], [ 0.000000e+00, %5969 ]
  %5974 = phi float [ %6031, %6027 ], [ 0.000000e+00, %5969 ]
  %5975 = phi float [ %6032, %6027 ], [ 0.000000e+00, %5969 ]
  %5976 = phi float [ %6033, %6027 ], [ 0.000000e+00, %5969 ]
  %5977 = phi i32 [ %6034, %6027 ], [ 0, %5969 ]
  %5978 = shl i32 %5977, 2
  %5979 = add i32 %5845, %5978
  %5980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5979, i32 undef)  ; BufferLoad(srv,index,wot)
  %5981 = extractvalue %dx.types.ResRet.f32 %5980, 0
  %5982 = add i32 %5849, %5978
  %5983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %5982, i32 undef)  ; BufferLoad(srv,index,wot)
  %5984 = extractvalue %dx.types.ResRet.i32 %5983, 0
  %5985 = add i32 %5984, 0
  %5986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5985, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5987 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5986, i32 0)  ; GetDimensions(handle,mipLevel)
  %5988 = extractvalue %dx.types.Dimensions %5987, 0
  %5989 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5988)  ; FirstbitLo(value)
  %5990 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5991 = extractvalue %dx.types.CBufRet.i32 %5990, 1
  %5992 = sub nsw i32 %5991, %5989
  %5993 = sitofp i32 %5992 to float
  %5994 = fsub fast float %5878, %5993
  %5995 = call float @dx.op.binary.f32(i32 35, float %5994, float 0.000000e+00)  ; FMax(a,b)
  %5996 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5986, %dx.types.Handle %43, float %5966, float %5967, float %5981, float undef, i32 0, i32 0, i32 undef, float %5995)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5997 = extractvalue %dx.types.ResRet.f32 %5996, 0
  %5998 = fcmp fast ogt float %5997, 0.000000e+00
  br i1 %5998, label %5999, label %6027

; <label>:5999                                    ; preds = %5970
  %6000 = add i32 %5960, %5978
  %6001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %6000, i32 undef)  ; BufferLoad(srv,index,wot)
  %6002 = extractvalue %dx.types.ResRet.i32 %6001, 0
  %6003 = and i32 %6002, 32767
  %6004 = mul nuw nsw i32 %6003, 928
  %6005 = add nuw nsw i32 %6004, 48
  %6006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %6005, i32 undef)  ; BufferLoad(srv,index,wot)
  %6007 = extractvalue %dx.types.ResRet.f32 %6006, 0
  %6008 = extractvalue %dx.types.ResRet.f32 %6006, 1
  %6009 = extractvalue %dx.types.ResRet.f32 %6006, 2
  %6010 = add nuw nsw i32 %6004, 60
  %6011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %6010, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.f32 %6011, 0
  %6013 = extractvalue %dx.types.ResRet.f32 %6011, 1
  %6014 = extractvalue %dx.types.ResRet.f32 %6011, 2
  %6015 = fmul fast float %6007, %5997
  %6016 = fmul fast float %6008, %5997
  %6017 = fmul fast float %6009, %5997
  %6018 = fadd fast float %6015, %5971
  %6019 = fadd fast float %6016, %5972
  %6020 = fadd fast float %6017, %5973
  %6021 = fmul fast float %6012, %5997
  %6022 = fmul fast float %6013, %5997
  %6023 = fmul fast float %6014, %5997
  %6024 = fadd fast float %6021, %5974
  %6025 = fadd fast float %6022, %5975
  %6026 = fadd fast float %6023, %5976
  br label %6027

; <label>:6027                                    ; preds = %5999, %5970
  %6028 = phi float [ %6018, %5999 ], [ %5971, %5970 ]
  %6029 = phi float [ %6019, %5999 ], [ %5972, %5970 ]
  %6030 = phi float [ %6020, %5999 ], [ %5973, %5970 ]
  %6031 = phi float [ %6024, %5999 ], [ %5974, %5970 ]
  %6032 = phi float [ %6025, %5999 ], [ %5975, %5970 ]
  %6033 = phi float [ %6026, %5999 ], [ %5976, %5970 ]
  %6034 = add nuw i32 %5977, 1
  %6035 = icmp eq i32 %6034, %5959
  br i1 %6035, label %6036, label %5970

; <label>:6036                                    ; preds = %6027
  br label %6037

; <label>:6037                                    ; preds = %6036, %5900
  %6038 = phi float [ 0.000000e+00, %5900 ], [ %6028, %6036 ]
  %6039 = phi float [ 0.000000e+00, %5900 ], [ %6029, %6036 ]
  %6040 = phi float [ 0.000000e+00, %5900 ], [ %6030, %6036 ]
  %6041 = phi float [ 0.000000e+00, %5900 ], [ %6031, %6036 ]
  %6042 = phi float [ 0.000000e+00, %5900 ], [ %6032, %6036 ]
  %6043 = phi float [ 0.000000e+00, %5900 ], [ %6033, %6036 ]
  %6044 = fadd fast float %6041, %6038
  %6045 = fmul fast float %6044, 0x3F847AE140000000
  %6046 = fadd fast float %6042, %6039
  %6047 = fmul fast float %6046, 0x3F847AE140000000
  %6048 = fadd fast float %6043, %6040
  %6049 = fmul fast float %6048, 0x3F847AE140000000
  br label %6050

; <label>:6050                                    ; preds = %6037, %5834, %5779, %5776, %5747, %5709
  %6051 = phi float [ %5761, %5747 ], [ -1.310720e+05, %5709 ], [ %5953, %6037 ], [ -1.310720e+05, %5779 ], [ -1.310720e+05, %5834 ], [ -1.310720e+05, %5776 ]
  %6052 = phi float [ %5771, %5747 ], [ 0.000000e+00, %5709 ], [ %6045, %6037 ], [ 0.000000e+00, %5779 ], [ 0.000000e+00, %5834 ], [ 0.000000e+00, %5776 ]
  %6053 = phi float [ %5773, %5747 ], [ 0.000000e+00, %5709 ], [ %6047, %6037 ], [ 0.000000e+00, %5779 ], [ 0.000000e+00, %5834 ], [ 0.000000e+00, %5776 ]
  %6054 = phi float [ %5775, %5747 ], [ 0.000000e+00, %5709 ], [ %6049, %6037 ], [ 0.000000e+00, %5779 ], [ 0.000000e+00, %5834 ], [ 0.000000e+00, %5776 ]
  %6055 = phi i1 [ true, %5747 ], [ false, %5709 ], [ true, %6037 ], [ false, %5779 ], [ false, %5834 ], [ false, %5776 ]
  %6056 = and i32 %373, 3
  %6057 = icmp eq i32 %6056, 1
  %6058 = select i1 %6057, float 1.000000e+00, float 0.000000e+00
  %6059 = fsub fast float %6051, %149
  %6060 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6061 = select i1 %6055, float %6060, float 1.000000e+00
  %6062 = fmul fast float %6061, %6058
  %6063 = icmp eq i32 %6056, 3
  %6064 = select i1 %6063, float 1.000000e+00, float %6062
  %6065 = call float @dx.op.binary.f32(i32 35, float %5652, float %6064)  ; FMax(a,b)
  %6066 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6067 = fcmp fast une float %6066, 0.000000e+00
  %6068 = call float @dx.op.dot3.f32(i32 55, float %147, float %148, float %149, float %147, float %148, float %149)  ; Dot3(ax,ay,az,bx,by,bz)
  %6069 = call float @dx.op.unary.f32(i32 25, float %6068)  ; Rsqrt(value)
  br i1 %6067, label %6077, label %6070

; <label>:6070                                    ; preds = %6050
  %6071 = fmul fast float %6069, %147
  %6072 = fmul fast float %6069, %148
  %6073 = fmul fast float %6069, %149
  %6074 = fsub fast float -0.000000e+00, %6071
  %6075 = fsub fast float -0.000000e+00, %6072
  %6076 = fsub fast float -0.000000e+00, %6073
  br label %6245

; <label>:6077                                    ; preds = %6050
  %6078 = fmul fast float %147, %6069
  %6079 = fsub fast float -0.000000e+00, %6078
  %6080 = fmul fast float %148, %6069
  %6081 = fsub fast float -0.000000e+00, %6080
  %6082 = fmul fast float %149, %6069
  %6083 = fsub fast float -0.000000e+00, %6082
  %6084 = call float @dx.op.dot3.f32(i32 55, float %6079, float %6081, float %6083, float %99, float %100, float %101)  ; Dot3(ax,ay,az,bx,by,bz)
  %6085 = fmul fast float %6066, 2.500000e+00
  %6086 = call float @dx.op.unary.f32(i32 7, float %6085)  ; Saturate(value)
  %6087 = fmul fast float %6066, 0x4013FFFFE0000000
  %6088 = fadd fast float %6087, 0xBFFFFFFFE0000000
  %6089 = call float @dx.op.unary.f32(i32 7, float %6088)  ; Saturate(value)
  %6090 = fmul fast float %6066, 0x4004000020000000
  %6091 = fadd fast float %6090, 0xBFF8000040000000
  %6092 = call float @dx.op.unary.f32(i32 7, float %6091)  ; Saturate(value)
  %6093 = call float @dx.op.unary.f32(i32 7, float %6086)  ; Saturate(value)
  %6094 = fmul fast float %5655, 1.000000e+01
  %6095 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  %6096 = fmul fast float %6095, 2.000000e+00
  %6097 = fsub fast float 3.000000e+00, %6096
  %6098 = fmul fast float %6095, %6095
  %6099 = fmul fast float %6098, %6097
  %6100 = fsub fast float 1.000000e+00, %6099
  %6101 = fsub fast float 0x3FE3333340000000, %5676
  %6102 = fmul fast float %6101, 0x400AAAAAA0000000
  %6103 = call float @dx.op.unary.f32(i32 7, float %6102)  ; Saturate(value)
  %6104 = fmul fast float %6100, %6103
  %6105 = fmul fast float %5688, 0x3FEA2B8620000000
  %6106 = fmul fast float %5689, 0x3FEA2B8620000000
  %6107 = fmul fast float %5690, 0x3FEA2B8620000000
  %6108 = fadd fast float %6105, 0x3FC81DFBA0000000
  %6109 = fmul fast float %6108, %5688
  %6110 = fadd fast float %6109, 0x3F910E6020000000
  %6111 = fadd fast float %6106, 0x3FC81DFBA0000000
  %6112 = fmul fast float %6111, %5689
  %6113 = fadd fast float %6112, 0x3F910E6020000000
  %6114 = fadd fast float %6107, 0x3FC81DFBA0000000
  %6115 = fmul fast float %6114, %5690
  %6116 = fadd fast float %6115, 0x3F910E6020000000
  %6117 = call float @dx.op.unary.f32(i32 7, float %6110)  ; Saturate(value)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6119 = call float @dx.op.unary.f32(i32 7, float %6116)  ; Saturate(value)
  %6120 = fsub fast float %6117, %5688
  %6121 = fsub fast float %6118, %5689
  %6122 = fsub fast float %6119, %5690
  %6123 = fmul fast float %6120, %6093
  %6124 = fmul fast float %6123, %6104
  %6125 = fmul fast float %6121, %6093
  %6126 = fmul fast float %6125, %6104
  %6127 = fmul fast float %6122, %6093
  %6128 = fmul fast float %6127, %6104
  %6129 = fadd fast float %6124, %5688
  %6130 = fadd fast float %6126, %5689
  %6131 = fadd fast float %6128, %5690
  %6132 = fmul fast float %5649, %5649
  %6133 = fmul fast float %6132, %6132
  %6134 = fadd fast float %6089, 1.000000e+00
  %6135 = fsub fast float %6134, %6104
  %6136 = call float @dx.op.unary.f32(i32 7, float %6135)  ; Saturate(value)
  %6137 = call float @dx.op.dot3.f32(i32 55, float %99, float %100, float %101, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6138 = call float @dx.op.unary.f32(i32 7, float %6137)  ; Saturate(value)
  %6139 = fsub fast float 1.000000e+00, %6133
  %6140 = call float @dx.op.binary.f32(i32 36, float %6136, float %6139)  ; FMin(a,b)
  %6141 = call float @dx.op.unary.f32(i32 7, float %6092)  ; Saturate(value)
  %6142 = call float @dx.op.binary.f32(i32 35, float %6140, float %6141)  ; FMax(a,b)
  %6143 = fadd fast float %6138, 0xBFE4CCCCC0000000
  %6144 = fmul fast float %6143, 0x4006DB6DA0000000
  %6145 = call float @dx.op.unary.f32(i32 7, float %6144)  ; Saturate(value)
  %6146 = fmul fast float %6145, 2.000000e+00
  %6147 = fsub fast float 3.000000e+00, %6146
  %6148 = bitcast float %5673 to i32
  %6149 = ashr i32 %6148, 1
  %6150 = add nsw i32 %6149, 532487669
  %6151 = bitcast i32 %6150 to float
  %6152 = fsub fast float 1.000000e+00, %6151
  %6153 = bitcast float %6152 to i32
  %6154 = sub nsw i32 2129859010, %6153
  %6155 = bitcast i32 %6154 to float
  %6156 = fmul fast float %6155, 2.000000e+00
  %6157 = bitcast float %5674 to i32
  %6158 = ashr i32 %6157, 1
  %6159 = add nsw i32 %6158, 532487669
  %6160 = bitcast i32 %6159 to float
  %6161 = fsub fast float 1.000000e+00, %6160
  %6162 = bitcast float %6161 to i32
  %6163 = sub nsw i32 2129859010, %6162
  %6164 = bitcast i32 %6163 to float
  %6165 = fmul fast float %6164, 2.000000e+00
  %6166 = bitcast float %5675 to i32
  %6167 = ashr i32 %6166, 1
  %6168 = add nsw i32 %6167, 532487669
  %6169 = bitcast i32 %6168 to float
  %6170 = fsub fast float 1.000000e+00, %6169
  %6171 = bitcast float %6170 to i32
  %6172 = sub nsw i32 2129859010, %6171
  %6173 = bitcast i32 %6172 to float
  %6174 = fmul fast float %6173, 2.000000e+00
  %6175 = fsub fast float 0x4002A9FBE0000000, %6156
  %6176 = fadd fast float %6156, 0x3FD54FDF00000000
  %6177 = bitcast float %6176 to i32
  %6178 = sub nsw i32 2129859010, %6177
  %6179 = bitcast i32 %6178 to float
  %6180 = fmul fast float %6179, %6175
  %6181 = fmul fast float %6180, %6180
  %6182 = fsub fast float 0x4002A9FBE0000000, %6165
  %6183 = fadd fast float %6165, 0x3FD54FDF00000000
  %6184 = bitcast float %6183 to i32
  %6185 = sub nsw i32 2129859010, %6184
  %6186 = bitcast i32 %6185 to float
  %6187 = fmul fast float %6186, %6182
  %6188 = fmul fast float %6187, %6187
  %6189 = fsub fast float 0x4002A9FBE0000000, %6174
  %6190 = fadd fast float %6174, 0x3FD54FDF00000000
  %6191 = bitcast float %6190 to i32
  %6192 = sub nsw i32 2129859010, %6191
  %6193 = bitcast i32 %6192 to float
  %6194 = fmul fast float %6193, %6189
  %6195 = fmul fast float %6194, %6194
  %6196 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6181)  ; FMax(a,b)
  %6197 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6188)  ; FMax(a,b)
  %6198 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %6195)  ; FMax(a,b)
  %6199 = fsub fast float 1.000000e+00, %6084
  %6200 = fadd fast float %6199, %6100
  %6201 = call float @dx.op.unary.f32(i32 7, float %6200)  ; Saturate(value)
  %6202 = fsub fast float 1.000000e+00, %6064
  %6203 = fmul fast float %6142, %6202
  %6204 = fmul fast float %6145, %6145
  %6205 = fmul fast float %6204, %6203
  %6206 = fmul fast float %6205, %6147
  %6207 = fmul fast float %6202, 0xBFE99999A0000000
  %6208 = fmul fast float %6207, %6093
  %6209 = fmul fast float %6208, %6104
  %6210 = fadd fast float %6209, 1.000000e+00
  %6211 = fadd fast float %5676, -1.000000e+00
  %6212 = fmul fast float %6210, %6211
  %6213 = fadd fast float %6212, 1.000000e+00
  %6214 = fsub fast float %6196, %5673
  %6215 = fsub fast float %6197, %5674
  %6216 = fsub fast float %6198, %5675
  %6217 = fmul fast float %6206, %6214
  %6218 = fmul fast float %6206, %6215
  %6219 = fmul fast float %6206, %6216
  %6220 = fadd fast float %6217, %5673
  %6221 = fadd fast float %6218, %5674
  %6222 = fadd fast float %6219, %5675
  %6223 = fsub fast float %99, %5637
  %6224 = fsub fast float %100, %5638
  %6225 = fsub fast float %101, %5639
  %6226 = fmul fast float %6206, %6223
  %6227 = fmul fast float %6206, %6224
  %6228 = fmul fast float %6206, %6225
  %6229 = fadd fast float %6226, %5637
  %6230 = fadd fast float %6227, %5638
  %6231 = fadd fast float %6228, %5639
  %6232 = fmul fast float %6206, %6201
  %6233 = call float @dx.op.unary.f32(i32 7, float %6213)  ; Saturate(value)
  %6234 = fsub fast float 1.000000e+00, %6233
  %6235 = fmul fast float %6232, %6234
  %6236 = fadd fast float %6235, %6233
  %6237 = fsub fast float 1.000000e+00, %5649
  %6238 = fmul fast float %6206, %6237
  %6239 = fadd fast float %6238, %5649
  %6240 = call float @dx.op.dot3.f32(i32 55, float %6229, float %6230, float %6231, float %6229, float %6230, float %6231)  ; Dot3(ax,ay,az,bx,by,bz)
  %6241 = call float @dx.op.unary.f32(i32 25, float %6240)  ; Rsqrt(value)
  %6242 = fmul fast float %6229, %6241
  %6243 = fmul fast float %6230, %6241
  %6244 = fmul fast float %6231, %6241
  br label %6245

; <label>:6245                                    ; preds = %6077, %6070
  %6246 = phi float [ %6076, %6070 ], [ %6083, %6077 ]
  %6247 = phi float [ %6075, %6070 ], [ %6081, %6077 ]
  %6248 = phi float [ %6074, %6070 ], [ %6079, %6077 ]
  %6249 = phi float [ %6073, %6070 ], [ %6082, %6077 ]
  %6250 = phi float [ %6072, %6070 ], [ %6080, %6077 ]
  %6251 = phi float [ %6071, %6070 ], [ %6078, %6077 ]
  %6252 = phi float [ %5673, %6070 ], [ %6220, %6077 ]
  %6253 = phi float [ %5674, %6070 ], [ %6221, %6077 ]
  %6254 = phi float [ %5675, %6070 ], [ %6222, %6077 ]
  %6255 = phi float [ %5637, %6070 ], [ %6242, %6077 ]
  %6256 = phi float [ %5638, %6070 ], [ %6243, %6077 ]
  %6257 = phi float [ %5639, %6070 ], [ %6244, %6077 ]
  %6258 = phi float [ %5688, %6070 ], [ %6129, %6077 ]
  %6259 = phi float [ %5689, %6070 ], [ %6130, %6077 ]
  %6260 = phi float [ %5690, %6070 ], [ %6131, %6077 ]
  %6261 = phi float [ %5676, %6070 ], [ %6236, %6077 ]
  %6262 = phi float [ %5649, %6070 ], [ %6239, %6077 ]
  %6263 = select i1 %397, float 0.000000e+00, float %6254
  %6264 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float %6248, float %6247, float %6246)  ; Dot3(ax,ay,az,bx,by,bz)
  %6265 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  %6266 = call float @dx.op.dot3.f32(i32 55, float %6251, float %6250, float %6249, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %6267 = fmul fast float %6266, 2.000000e+00
  %6268 = fmul fast float %6267, %6255
  %6269 = fmul fast float %6267, %6256
  %6270 = fmul fast float %6267, %6257
  %6271 = fsub fast float %6251, %6268
  %6272 = fsub fast float %6250, %6269
  %6273 = fsub fast float %6249, %6270
  %6274 = call float @dx.op.binary.f32(i32 36, float %6262, float 1.000000e+00)  ; FMin(a,b)
  %6275 = fsub fast float 1.000000e+00, %6262
  %6276 = bitcast float %6275 to i32
  %6277 = sub nsw i32 2129859010, %6276
  %6278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %6279 = extractvalue %dx.types.CBufRet.f32 %6278, 0
  %6280 = extractvalue %dx.types.CBufRet.f32 %6278, 1
  %6281 = extractvalue %dx.types.CBufRet.f32 %6278, 2
  %6282 = fadd fast float %6279, %147
  %6283 = fadd fast float %6280, %148
  %6284 = fadd fast float %6281, %149
  %6285 = fmul fast float %6255, 3.200000e+01
  %6286 = fmul fast float %6256, 3.200000e+01
  %6287 = fadd fast float %6282, %6285
  %6288 = fadd fast float %6283, %6286
  %6289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %6290 = extractvalue %dx.types.CBufRet.f32 %6289, 0
  %6291 = extractvalue %dx.types.CBufRet.f32 %6289, 1
  %6292 = fsub fast float %6287, %6290
  %6293 = fsub fast float %6288, %6291
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6297 = fmul fast float %6292, %6295
  %6298 = fmul fast float %6293, %6296
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 0
  %6301 = fmul fast float %6297, %6300
  %6302 = extractvalue %dx.types.CBufRet.f32 %6299, 1
  %6303 = fadd fast float %6301, %6302
  %6304 = extractvalue %dx.types.CBufRet.f32 %6299, 2
  %6305 = fmul fast float %6304, %6298
  %6306 = extractvalue %dx.types.CBufRet.f32 %6299, 3
  %6307 = fadd fast float %6305, %6306
  %6308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %45, float %6303, float %6307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6309 = extractvalue %dx.types.ResRet.f32 %6308, 0
  %6310 = extractvalue %dx.types.ResRet.f32 %6308, 1
  %6311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %6312 = extractvalue %dx.types.CBufRet.f32 %6311, 1
  %6313 = extractvalue %dx.types.CBufRet.f32 %6311, 0
  %6314 = fsub fast float %6312, %6313
  %6315 = fmul fast float %6314, %6309
  %6316 = fadd fast float %6315, %6313
  %6317 = extractvalue %dx.types.CBufRet.f32 %6311, 3
  %6318 = extractvalue %dx.types.CBufRet.f32 %6311, 2
  %6319 = fsub fast float %6317, %6318
  %6320 = fmul fast float %6319, %6310
  %6321 = fadd fast float %6320, %6318
  %6322 = fsub fast float %6284, %6316
  %6323 = fsub fast float %6321, %6316
  %6324 = fdiv fast float %6322, %6323
  %6325 = call float @dx.op.unary.f32(i32 7, float %6324)  ; Saturate(value)
  %6326 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %6327 = extractvalue %dx.types.CBufRet.f32 %6326, 0
  %6328 = fmul fast float %6327, %6325
  %6329 = extractvalue %dx.types.CBufRet.f32 %6326, 1
  %6330 = fadd fast float %6328, %6329
  %6331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %45, float %6303, float %6307, float %6330, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6332 = extractvalue %dx.types.ResRet.f32 %6331, 0
  %6333 = extractvalue %dx.types.ResRet.f32 %6331, 1
  %6334 = extractvalue %dx.types.ResRet.f32 %6331, 2
  %6335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %6336 = extractvalue %dx.types.CBufRet.f32 %6335, 0
  %6337 = extractvalue %dx.types.CBufRet.f32 %6335, 1
  %6338 = extractvalue %dx.types.CBufRet.f32 %6335, 2
  %6339 = fmul fast float %6336, %6332
  %6340 = fmul fast float %6337, %6333
  %6341 = fmul fast float %6338, %6334
  %6342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %6343 = extractvalue %dx.types.CBufRet.f32 %6342, 0
  %6344 = extractvalue %dx.types.CBufRet.f32 %6342, 1
  %6345 = extractvalue %dx.types.CBufRet.f32 %6342, 2
  %6346 = fadd fast float %6339, %6343
  %6347 = fadd fast float %6340, %6344
  %6348 = fadd fast float %6341, %6345
  %6349 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %6350 = extractvalue %dx.types.CBufRet.f32 %6349, 0
  %6351 = fmul fast float %6350, %6297
  %6352 = extractvalue %dx.types.CBufRet.f32 %6349, 1
  %6353 = fadd fast float %6351, %6352
  %6354 = extractvalue %dx.types.CBufRet.f32 %6349, 2
  %6355 = fmul fast float %6354, %6298
  %6356 = extractvalue %dx.types.CBufRet.f32 %6349, 3
  %6357 = fadd fast float %6355, %6356
  %6358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.f32 %6358, 0
  %6360 = extractvalue %dx.types.CBufRet.f32 %6358, 1
  %6361 = extractvalue %dx.types.CBufRet.f32 %6358, 2
  %6362 = extractvalue %dx.types.CBufRet.f32 %6358, 3
  %6363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %6364 = extractvalue %dx.types.CBufRet.f32 %6363, 0
  %6365 = extractvalue %dx.types.CBufRet.f32 %6363, 1
  %6366 = extractvalue %dx.types.CBufRet.f32 %6363, 2
  %6367 = extractvalue %dx.types.CBufRet.f32 %6363, 3
  %6368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %6353, float %6357, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6369 = extractvalue %dx.types.ResRet.f32 %6368, 0
  %6370 = extractvalue %dx.types.ResRet.f32 %6368, 1
  %6371 = extractvalue %dx.types.ResRet.f32 %6368, 2
  %6372 = extractvalue %dx.types.ResRet.f32 %6368, 3
  %6373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %6353, float %6357, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6374 = extractvalue %dx.types.ResRet.f32 %6373, 0
  %6375 = extractvalue %dx.types.ResRet.f32 %6373, 1
  %6376 = extractvalue %dx.types.ResRet.f32 %6373, 2
  %6377 = extractvalue %dx.types.ResRet.f32 %6373, 3
  %6378 = fmul fast float %6369, %6346
  %6379 = fmul fast float %6374, %6346
  %6380 = fmul fast float %6376, %6346
  %6381 = fmul fast float %6372, %6346
  %6382 = fadd fast float %6378, %6359
  %6383 = fadd fast float %6379, %6360
  %6384 = fadd fast float %6380, %6361
  %6385 = fadd fast float %6381, %6362
  %6386 = fmul fast float %6370, %6346
  %6387 = fmul fast float %6375, %6346
  %6388 = fadd fast float %6386, %6364
  %6389 = fadd fast float %6387, %6365
  %6390 = fmul fast float %6371, %6346
  %6391 = fmul fast float %6377, %6346
  %6392 = fadd fast float %6390, %6366
  %6393 = fadd fast float %6391, %6367
  %6394 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %6353, float %6357, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6395 = extractvalue %dx.types.ResRet.f32 %6394, 0
  %6396 = extractvalue %dx.types.ResRet.f32 %6394, 1
  %6397 = extractvalue %dx.types.ResRet.f32 %6394, 2
  %6398 = extractvalue %dx.types.ResRet.f32 %6394, 3
  %6399 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %6353, float %6357, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6400 = extractvalue %dx.types.ResRet.f32 %6399, 0
  %6401 = extractvalue %dx.types.ResRet.f32 %6399, 1
  %6402 = extractvalue %dx.types.ResRet.f32 %6399, 2
  %6403 = extractvalue %dx.types.ResRet.f32 %6399, 3
  %6404 = fmul fast float %6395, %6347
  %6405 = fmul fast float %6400, %6347
  %6406 = fmul fast float %6402, %6347
  %6407 = fmul fast float %6398, %6347
  %6408 = fadd fast float %6382, %6404
  %6409 = fadd fast float %6383, %6405
  %6410 = fadd fast float %6384, %6406
  %6411 = fadd fast float %6385, %6407
  %6412 = fmul fast float %6396, %6347
  %6413 = fmul fast float %6401, %6347
  %6414 = fadd fast float %6388, %6412
  %6415 = fadd fast float %6389, %6413
  %6416 = fmul fast float %6397, %6347
  %6417 = fmul fast float %6403, %6347
  %6418 = fadd fast float %6392, %6416
  %6419 = fadd fast float %6393, %6417
  %6420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %6353, float %6357, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6421 = extractvalue %dx.types.ResRet.f32 %6420, 0
  %6422 = extractvalue %dx.types.ResRet.f32 %6420, 1
  %6423 = extractvalue %dx.types.ResRet.f32 %6420, 2
  %6424 = extractvalue %dx.types.ResRet.f32 %6420, 3
  %6425 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %45, float %6353, float %6357, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6426 = extractvalue %dx.types.ResRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.ResRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.ResRet.f32 %6425, 2
  %6429 = extractvalue %dx.types.ResRet.f32 %6425, 3
  %6430 = fmul fast float %6421, %6348
  %6431 = fmul fast float %6426, %6348
  %6432 = fmul fast float %6428, %6348
  %6433 = fmul fast float %6424, %6348
  %6434 = fadd fast float %6408, %6430
  %6435 = fadd fast float %6409, %6431
  %6436 = fadd fast float %6410, %6432
  %6437 = fadd fast float %6411, %6433
  %6438 = fmul fast float %6422, %6348
  %6439 = fmul fast float %6427, %6348
  %6440 = fadd fast float %6414, %6438
  %6441 = fadd fast float %6415, %6439
  %6442 = fmul fast float %6423, %6348
  %6443 = fmul fast float %6429, %6348
  %6444 = fadd fast float %6418, %6442
  %6445 = fadd fast float %6419, %6443
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  %6448 = fsub fast float %6282, %6447
  %6449 = fsub fast float %6290, %6282
  %6450 = call float @dx.op.binary.f32(i32 35, float %6449, float %6448)  ; FMax(a,b)
  %6451 = extractvalue %dx.types.CBufRet.f32 %6446, 1
  %6452 = fsub fast float %6283, %6451
  %6453 = fsub fast float %6291, %6283
  %6454 = call float @dx.op.binary.f32(i32 35, float %6453, float %6452)  ; FMax(a,b)
  %6455 = call float @dx.op.binary.f32(i32 35, float %6450, float %6454)  ; FMax(a,b)
  %6456 = extractvalue %dx.types.CBufRet.f32 %6294, 3
  %6457 = fmul fast float %6456, %6455
  %6458 = call float @dx.op.unary.f32(i32 7, float %6457)  ; Saturate(value)
  %6459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %6460 = extractvalue %dx.types.CBufRet.f32 %6459, 0
  %6461 = extractvalue %dx.types.CBufRet.f32 %6459, 1
  %6462 = extractvalue %dx.types.CBufRet.f32 %6459, 2
  %6463 = extractvalue %dx.types.CBufRet.f32 %6459, 3
  %6464 = fsub fast float %6460, %6434
  %6465 = fsub fast float %6461, %6435
  %6466 = fsub fast float %6462, %6436
  %6467 = fsub fast float %6463, %6437
  %6468 = fmul fast float %6464, %6458
  %6469 = fmul fast float %6465, %6458
  %6470 = fmul fast float %6466, %6458
  %6471 = fmul fast float %6467, %6458
  %6472 = fadd fast float %6468, %6434
  %6473 = fadd fast float %6469, %6435
  %6474 = fadd fast float %6470, %6436
  %6475 = fadd fast float %6471, %6437
  %6476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %6477 = extractvalue %dx.types.CBufRet.f32 %6476, 0
  %6478 = extractvalue %dx.types.CBufRet.f32 %6476, 1
  %6479 = fsub fast float %6477, %6440
  %6480 = fsub fast float %6478, %6441
  %6481 = fmul fast float %6479, %6458
  %6482 = fmul fast float %6480, %6458
  %6483 = fadd fast float %6481, %6440
  %6484 = fadd fast float %6482, %6441
  %6485 = extractvalue %dx.types.CBufRet.f32 %6476, 2
  %6486 = extractvalue %dx.types.CBufRet.f32 %6476, 3
  %6487 = fsub fast float %6485, %6444
  %6488 = fsub fast float %6486, %6445
  %6489 = fmul fast float %6487, %6458
  %6490 = fmul fast float %6488, %6458
  %6491 = fadd fast float %6489, %6444
  %6492 = fadd fast float %6490, %6445
  %6493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %6494 = extractvalue %dx.types.CBufRet.f32 %6493, 0
  %6495 = fmul fast float %6494, %6472
  %6496 = fmul fast float %6494, %6473
  %6497 = fmul fast float %6494, %6474
  %6498 = fmul fast float %6494, %6475
  %6499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %6500 = extractvalue %dx.types.CBufRet.f32 %6499, 0
  %6501 = fmul fast float %6500, %6483
  %6502 = fmul fast float %6500, %6484
  %6503 = fadd fast float %6501, %6495
  %6504 = fadd fast float %6502, %6497
  %6505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %6506 = extractvalue %dx.types.CBufRet.f32 %6505, 0
  %6507 = fmul fast float %6506, %6491
  %6508 = fmul fast float %6506, %6492
  %6509 = fadd fast float %6503, %6507
  %6510 = fadd fast float %6504, %6508
  %6511 = extractvalue %dx.types.CBufRet.f32 %6493, 1
  %6512 = fmul fast float %6511, %6472
  %6513 = fmul fast float %6511, %6473
  %6514 = fmul fast float %6511, %6474
  %6515 = fmul fast float %6511, %6475
  %6516 = extractvalue %dx.types.CBufRet.f32 %6499, 1
  %6517 = fmul fast float %6516, %6483
  %6518 = fmul fast float %6516, %6484
  %6519 = fadd fast float %6517, %6512
  %6520 = fadd fast float %6518, %6514
  %6521 = extractvalue %dx.types.CBufRet.f32 %6505, 1
  %6522 = fmul fast float %6521, %6491
  %6523 = fmul fast float %6521, %6492
  %6524 = fadd fast float %6519, %6522
  %6525 = fadd fast float %6520, %6523
  %6526 = extractvalue %dx.types.CBufRet.f32 %6493, 2
  %6527 = fmul fast float %6526, %6472
  %6528 = fmul fast float %6526, %6473
  %6529 = fmul fast float %6526, %6474
  %6530 = fmul fast float %6526, %6475
  %6531 = extractvalue %dx.types.CBufRet.f32 %6499, 2
  %6532 = fmul fast float %6531, %6483
  %6533 = fmul fast float %6531, %6484
  %6534 = fadd fast float %6532, %6527
  %6535 = fadd fast float %6533, %6529
  %6536 = extractvalue %dx.types.CBufRet.f32 %6505, 2
  %6537 = fmul fast float %6536, %6491
  %6538 = fmul fast float %6536, %6492
  %6539 = fadd fast float %6534, %6537
  %6540 = fadd fast float %6535, %6538
  %6541 = fmul fast float %6528, %6528
  %6542 = fmul fast float %6540, %6540
  %6543 = fmul fast float %6530, %6530
  %6544 = fadd fast float %6543, %6541
  %6545 = fadd fast float %6544, %6542
  %6546 = call float @dx.op.unary.f32(i32 24, float %6545)  ; Sqrt(value)
  %6547 = fcmp fast ugt float %6546, 0.000000e+00
  br i1 %6547, label %6548, label %6563

; <label>:6548                                    ; preds = %6245
  %6549 = fsub fast float -0.000000e+00, %6530
  %6550 = fdiv fast float %6549, %6546
  %6551 = fsub fast float -0.000000e+00, %6528
  %6552 = fdiv fast float %6551, %6546
  %6553 = fdiv fast float %6540, %6546
  %6554 = fmul fast float %6539, 0x3FE279A760000000
  %6555 = fmul fast float %6552, %6528
  %6556 = fmul fast float %6553, %6540
  %6557 = fmul fast float %6550, %6530
  %6558 = fadd fast float %6555, %6557
  %6559 = fsub fast float %6558, %6556
  %6560 = call float @dx.op.unary.f32(i32 6, float %6559)  ; FAbs(value)
  %6561 = fadd fast float %6560, 0x3DDB7CDFE0000000
  %6562 = fdiv fast float %6554, %6561
  br label %6563

; <label>:6563                                    ; preds = %6548, %6245
  %6564 = phi float [ %6562, %6548 ], [ 1.000000e+00, %6245 ]
  %6565 = fmul fast float %6513, %6513
  %6566 = fmul fast float %6525, %6525
  %6567 = fmul fast float %6515, %6515
  %6568 = fadd fast float %6567, %6565
  %6569 = fadd fast float %6568, %6566
  %6570 = call float @dx.op.unary.f32(i32 24, float %6569)  ; Sqrt(value)
  %6571 = fcmp fast ugt float %6570, 0.000000e+00
  br i1 %6571, label %6572, label %6587

; <label>:6572                                    ; preds = %6563
  %6573 = fsub fast float -0.000000e+00, %6515
  %6574 = fdiv fast float %6573, %6570
  %6575 = fsub fast float -0.000000e+00, %6513
  %6576 = fdiv fast float %6575, %6570
  %6577 = fdiv fast float %6525, %6570
  %6578 = fmul fast float %6524, 0x3FE279A760000000
  %6579 = fmul fast float %6576, %6513
  %6580 = fmul fast float %6577, %6525
  %6581 = fmul fast float %6574, %6515
  %6582 = fadd fast float %6579, %6581
  %6583 = fsub fast float %6582, %6580
  %6584 = call float @dx.op.unary.f32(i32 6, float %6583)  ; FAbs(value)
  %6585 = fadd fast float %6584, 0x3DDB7CDFE0000000
  %6586 = fdiv fast float %6578, %6585
  br label %6587

; <label>:6587                                    ; preds = %6572, %6563
  %6588 = phi float [ %6586, %6572 ], [ 1.000000e+00, %6563 ]
  %6589 = call float @dx.op.binary.f32(i32 36, float %6588, float %6564)  ; FMin(a,b)
  %6590 = fmul fast float %6496, %6496
  %6591 = fmul fast float %6510, %6510
  %6592 = fmul fast float %6498, %6498
  %6593 = fadd fast float %6592, %6590
  %6594 = fadd fast float %6593, %6591
  %6595 = call float @dx.op.unary.f32(i32 24, float %6594)  ; Sqrt(value)
  %6596 = fcmp fast ugt float %6595, 0.000000e+00
  br i1 %6596, label %6597, label %6612

; <label>:6597                                    ; preds = %6587
  %6598 = fsub fast float -0.000000e+00, %6498
  %6599 = fdiv fast float %6598, %6595
  %6600 = fsub fast float -0.000000e+00, %6496
  %6601 = fdiv fast float %6600, %6595
  %6602 = fdiv fast float %6510, %6595
  %6603 = fmul fast float %6509, 0x3FE279A760000000
  %6604 = fmul fast float %6601, %6496
  %6605 = fmul fast float %6602, %6510
  %6606 = fmul fast float %6599, %6498
  %6607 = fadd fast float %6604, %6606
  %6608 = fsub fast float %6607, %6605
  %6609 = call float @dx.op.unary.f32(i32 6, float %6608)  ; FAbs(value)
  %6610 = fadd fast float %6609, 0x3DDB7CDFE0000000
  %6611 = fdiv fast float %6603, %6610
  br label %6612

; <label>:6612                                    ; preds = %6597, %6587
  %6613 = phi float [ %6611, %6597 ], [ 1.000000e+00, %6587 ]
  %6614 = call float @dx.op.binary.f32(i32 36, float %6613, float %6589)  ; FMin(a,b)
  %6615 = call float @dx.op.unary.f32(i32 7, float %6614)  ; Saturate(value)
  %6616 = fcmp fast olt float %6615, 1.000000e+00
  br i1 %6616, label %6617, label %6627

; <label>:6617                                    ; preds = %6612
  %6618 = fmul fast float %6615, %6496
  %6619 = fmul fast float %6615, %6510
  %6620 = fmul fast float %6615, %6498
  %6621 = fmul fast float %6615, %6513
  %6622 = fmul fast float %6615, %6525
  %6623 = fmul fast float %6615, %6515
  %6624 = fmul fast float %6615, %6528
  %6625 = fmul fast float %6615, %6540
  %6626 = fmul fast float %6615, %6530
  br label %6627

; <label>:6627                                    ; preds = %6617, %6612
  %6628 = phi float [ %6624, %6617 ], [ %6528, %6612 ]
  %6629 = phi float [ %6625, %6617 ], [ %6540, %6612 ]
  %6630 = phi float [ %6626, %6617 ], [ %6530, %6612 ]
  %6631 = phi float [ %6621, %6617 ], [ %6513, %6612 ]
  %6632 = phi float [ %6622, %6617 ], [ %6525, %6612 ]
  %6633 = phi float [ %6623, %6617 ], [ %6515, %6612 ]
  %6634 = phi float [ %6618, %6617 ], [ %6496, %6612 ]
  %6635 = phi float [ %6619, %6617 ], [ %6510, %6612 ]
  %6636 = phi float [ %6620, %6617 ], [ %6498, %6612 ]
  %6637 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6509)  ; FMax(a,b)
  %6638 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6524)  ; FMax(a,b)
  %6639 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6539)  ; FMax(a,b)
  %6640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %6641 = extractvalue %dx.types.CBufRet.f32 %6640, 0
  %6642 = fcmp fast ogt float %6641, 0.000000e+00
  %6643 = fcmp fast oge float %6297, 0.000000e+00
  %6644 = and i1 %6643, %6642
  %6645 = fcmp fast ole float %6297, 1.000000e+00
  %6646 = and i1 %6645, %6644
  %6647 = fcmp fast oge float %6298, 0.000000e+00
  %6648 = and i1 %6647, %6646
  %6649 = fcmp fast ole float %6298, 1.000000e+00
  %6650 = and i1 %6649, %6648
  br i1 %6650, label %6651, label %6796, !dx.controlflow.hints !99

; <label>:6651                                    ; preds = %6627
  %6652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %6653 = extractvalue %dx.types.CBufRet.f32 %6652, 2
  %6654 = extractvalue %dx.types.CBufRet.f32 %6652, 3
  %6655 = fmul fast float %6653, %6297
  %6656 = fmul fast float %6654, %6298
  %6657 = call float @dx.op.unary.f32(i32 27, float %6655)  ; Round_ni(value)
  %6658 = call float @dx.op.unary.f32(i32 27, float %6656)  ; Round_ni(value)
  %6659 = fptosi float %6657 to i32
  %6660 = fptosi float %6658 to i32
  %6661 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %6659, i32 %6660, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6662 = extractvalue %dx.types.ResRet.i32 %6661, 0
  %6663 = and i32 %6662, 65535
  %6664 = lshr i32 %6662, 16
  %6665 = icmp eq i32 %6663, 65535
  br i1 %6665, label %6702, label %6666

; <label>:6666                                    ; preds = %6651
  %6667 = extractvalue %dx.types.CBufRet.f32 %6640, 1
  %6668 = extractvalue %dx.types.CBufRet.f32 %6652, 0
  %6669 = extractvalue %dx.types.CBufRet.f32 %6652, 1
  %6670 = fmul fast float %6668, %6297
  %6671 = fmul fast float %6669, %6298
  %6672 = fmul fast float %6670, 1.250000e-01
  %6673 = fmul fast float %6671, 1.250000e-01
  %6674 = call float @dx.op.unary.f32(i32 27, float %6672)  ; Round_ni(value)
  %6675 = call float @dx.op.unary.f32(i32 27, float %6673)  ; Round_ni(value)
  %6676 = fmul fast float %6674, 8.000000e+00
  %6677 = fmul fast float %6675, 8.000000e+00
  %6678 = and i32 %6662, 255
  %6679 = lshr i32 %6662, 8
  %6680 = and i32 %6679, 255
  %6681 = mul nuw nsw i32 %6678, 9
  %6682 = uitofp i32 %6681 to float
  %6683 = mul nuw nsw i32 %6680, 9
  %6684 = uitofp i32 %6683 to float
  %6685 = fadd fast float %6682, 5.000000e-01
  %6686 = fadd fast float %6685, %6670
  %6687 = fsub fast float %6686, %6676
  %6688 = fadd fast float %6684, 5.000000e-01
  %6689 = fadd fast float %6688, %6671
  %6690 = fsub fast float %6689, %6677
  %6691 = fdiv fast float %6687, %6641
  %6692 = fdiv fast float %6690, %6667
  %6693 = fmul fast float %6325, 4.375000e-01
  %6694 = fadd fast float %6693, 3.125000e-02
  %6695 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %6691, float %6692, float %6694, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6696 = extractvalue %dx.types.ResRet.f32 %6695, 0
  %6697 = extractvalue %dx.types.ResRet.f32 %6695, 1
  %6698 = extractvalue %dx.types.ResRet.f32 %6695, 2
  %6699 = fadd fast float %6696, %6637
  %6700 = fadd fast float %6697, %6638
  %6701 = fadd fast float %6698, %6639
  br label %6702

; <label>:6702                                    ; preds = %6666, %6651
  %6703 = phi float [ %6701, %6666 ], [ %6639, %6651 ]
  %6704 = phi float [ %6700, %6666 ], [ %6638, %6651 ]
  %6705 = phi float [ %6699, %6666 ], [ %6637, %6651 ]
  %6706 = icmp eq i32 %6664, 65535
  br i1 %6706, label %6796, label %6707

; <label>:6707                                    ; preds = %6702
  %6708 = extractvalue %dx.types.CBufRet.f32 %6640, 1
  %6709 = extractvalue %dx.types.CBufRet.f32 %6652, 0
  %6710 = extractvalue %dx.types.CBufRet.f32 %6652, 1
  %6711 = fmul fast float %6709, %6297
  %6712 = fmul fast float %6710, %6298
  %6713 = fmul fast float %6711, 1.250000e-01
  %6714 = fmul fast float %6712, 1.250000e-01
  %6715 = call float @dx.op.unary.f32(i32 27, float %6713)  ; Round_ni(value)
  %6716 = call float @dx.op.unary.f32(i32 27, float %6714)  ; Round_ni(value)
  %6717 = fmul fast float %6715, 8.000000e+00
  %6718 = fmul fast float %6716, 8.000000e+00
  %6719 = fsub fast float %6711, %6717
  %6720 = fsub fast float %6712, %6718
  %6721 = fadd fast float %6719, 5.000000e-01
  %6722 = fadd fast float %6720, 5.000000e-01
  %6723 = and i32 %6664, 255
  %6724 = lshr i32 %6662, 24
  %6725 = mul nuw nsw i32 %6723, 9
  %6726 = uitofp i32 %6725 to float
  %6727 = mul nuw nsw i32 %6724, 9
  %6728 = uitofp i32 %6727 to float
  %6729 = fadd fast float %6721, %6726
  %6730 = fadd fast float %6722, %6728
  %6731 = fdiv fast float %6729, %6641
  %6732 = fdiv fast float %6730, %6708
  %6733 = fmul fast float %6325, 4.375000e-01
  %6734 = fadd fast float %6733, 3.125000e-02
  %6735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %6731, float %6732, float %6734, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6736 = extractvalue %dx.types.ResRet.f32 %6735, 0
  %6737 = extractvalue %dx.types.ResRet.f32 %6735, 1
  %6738 = extractvalue %dx.types.ResRet.f32 %6735, 2
  %6739 = fadd fast float %6733, 5.312500e-01
  %6740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %45, float %6731, float %6732, float %6739, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6741 = extractvalue %dx.types.ResRet.f32 %6740, 0
  %6742 = extractvalue %dx.types.ResRet.f32 %6740, 1
  %6743 = extractvalue %dx.types.ResRet.f32 %6740, 2
  %6744 = fmul fast float %6741, 2.000000e+00
  %6745 = fmul fast float %6742, 2.000000e+00
  %6746 = fmul fast float %6743, 2.000000e+00
  %6747 = fadd fast float %6744, -1.000000e+00
  %6748 = fadd fast float %6745, -1.000000e+00
  %6749 = fadd fast float %6746, -1.000000e+00
  %6750 = fmul fast float %6747, %6747
  %6751 = fmul fast float %6748, %6748
  %6752 = fadd fast float %6750, %6751
  %6753 = fmul fast float %6749, %6749
  %6754 = fadd fast float %6752, %6753
  %6755 = call float @dx.op.unary.f32(i32 24, float %6754)  ; Sqrt(value)
  %6756 = fcmp fast ogt float %6755, 0.000000e+00
  br i1 %6756, label %6757, label %6761

; <label>:6757                                    ; preds = %6707
  %6758 = fdiv fast float %6747, %6755
  %6759 = fdiv fast float %6748, %6755
  %6760 = fdiv fast float %6749, %6755
  br label %6761

; <label>:6761                                    ; preds = %6757, %6707
  %6762 = phi float [ %6758, %6757 ], [ 0.000000e+00, %6707 ]
  %6763 = phi float [ %6759, %6757 ], [ 0.000000e+00, %6707 ]
  %6764 = phi float [ %6760, %6757 ], [ 0.000000e+00, %6707 ]
  %6765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6766 = extractvalue %dx.types.CBufRet.f32 %6765, 0
  %6767 = extractvalue %dx.types.CBufRet.f32 %6765, 1
  %6768 = fsub fast float %6282, %6766
  %6769 = fsub fast float %6283, %6767
  %6770 = fmul fast float %6768, %6768
  %6771 = fmul fast float %6769, %6769
  %6772 = fadd fast float %6770, %6771
  %6773 = call float @dx.op.unary.f32(i32 24, float %6772)  ; Sqrt(value)
  %6774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %6775 = extractvalue %dx.types.CBufRet.f32 %6774, 0
  %6776 = extractvalue %dx.types.CBufRet.f32 %6774, 1
  %6777 = fsub fast float %6773, %6775
  %6778 = fdiv fast float %6777, %6776
  %6779 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6780 = fmul fast float %6779, 2.000000e+00
  %6781 = fsub fast float 3.000000e+00, %6780
  %6782 = fmul fast float %6779, %6779
  %6783 = fmul fast float %6782, %6781
  %6784 = call float @dx.op.dot3.f32(i32 55, float %6762, float %6763, float %6764, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %6785 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6784)  ; FMax(a,b)
  %6786 = fmul fast float %6785, 0x400C5BF8A0000000
  %6787 = fmul fast float %6783, %6736
  %6788 = fmul fast float %6787, %6786
  %6789 = fadd fast float %6788, %6705
  %6790 = fmul fast float %6783, %6737
  %6791 = fmul fast float %6790, %6786
  %6792 = fadd fast float %6791, %6704
  %6793 = fmul fast float %6783, %6738
  %6794 = fmul fast float %6793, %6786
  %6795 = fadd fast float %6794, %6703
  br label %6796

; <label>:6796                                    ; preds = %6761, %6702, %6627
  %6797 = phi float [ %6795, %6761 ], [ %6703, %6702 ], [ %6639, %6627 ]
  %6798 = phi float [ %6792, %6761 ], [ %6704, %6702 ], [ %6638, %6627 ]
  %6799 = phi float [ %6789, %6761 ], [ %6705, %6702 ], [ %6637, %6627 ]
  %6800 = fcmp fast ogt float %6284, %6321
  %6801 = and i1 %6643, %6800
  %6802 = and i1 %6645, %6801
  %6803 = and i1 %6647, %6802
  %6804 = and i1 %6649, %6803
  br i1 %6804, label %6805, label %6862, !dx.controlflow.hints !100

; <label>:6805                                    ; preds = %6796
  %6806 = fmul fast float %6323, 0x3FC24924A0000000
  %6807 = fsub fast float %6284, %6321
  %6808 = fdiv fast float %6807, %6806
  %6809 = call float @dx.op.unary.f32(i32 7, float %6808)  ; Saturate(value)
  %6810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %6811 = extractvalue %dx.types.CBufRet.f32 %6810, 0
  %6812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %6813 = extractvalue %dx.types.CBufRet.f32 %6812, 0
  %6814 = extractvalue %dx.types.CBufRet.f32 %6812, 1
  %6815 = extractvalue %dx.types.CBufRet.f32 %6812, 2
  %6816 = fsub fast float %6811, %6799
  %6817 = fsub fast float %6813, %6634
  %6818 = fsub fast float %6814, %6635
  %6819 = fsub fast float %6815, %6636
  %6820 = fmul fast float %6816, %6809
  %6821 = fmul fast float %6817, %6809
  %6822 = fmul fast float %6818, %6809
  %6823 = fmul fast float %6819, %6809
  %6824 = fadd fast float %6820, %6799
  %6825 = fadd fast float %6821, %6634
  %6826 = fadd fast float %6822, %6635
  %6827 = fadd fast float %6823, %6636
  %6828 = extractvalue %dx.types.CBufRet.f32 %6810, 1
  %6829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %6830 = extractvalue %dx.types.CBufRet.f32 %6829, 0
  %6831 = extractvalue %dx.types.CBufRet.f32 %6829, 1
  %6832 = extractvalue %dx.types.CBufRet.f32 %6829, 2
  %6833 = fsub fast float %6828, %6798
  %6834 = fsub fast float %6830, %6631
  %6835 = fsub fast float %6831, %6632
  %6836 = fsub fast float %6832, %6633
  %6837 = fmul fast float %6833, %6809
  %6838 = fmul fast float %6834, %6809
  %6839 = fmul fast float %6835, %6809
  %6840 = fmul fast float %6836, %6809
  %6841 = fadd fast float %6837, %6798
  %6842 = fadd fast float %6838, %6631
  %6843 = fadd fast float %6839, %6632
  %6844 = fadd fast float %6840, %6633
  %6845 = extractvalue %dx.types.CBufRet.f32 %6810, 2
  %6846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %6847 = extractvalue %dx.types.CBufRet.f32 %6846, 0
  %6848 = extractvalue %dx.types.CBufRet.f32 %6846, 1
  %6849 = extractvalue %dx.types.CBufRet.f32 %6846, 2
  %6850 = fsub fast float %6845, %6797
  %6851 = fsub fast float %6847, %6628
  %6852 = fsub fast float %6848, %6629
  %6853 = fsub fast float %6849, %6630
  %6854 = fmul fast float %6850, %6809
  %6855 = fmul fast float %6851, %6809
  %6856 = fmul fast float %6852, %6809
  %6857 = fmul fast float %6853, %6809
  %6858 = fadd fast float %6854, %6797
  %6859 = fadd fast float %6855, %6628
  %6860 = fadd fast float %6856, %6629
  %6861 = fadd fast float %6857, %6630
  br label %6862

; <label>:6862                                    ; preds = %6805, %6796
  %6863 = phi float [ %6858, %6805 ], [ %6797, %6796 ]
  %6864 = phi float [ %6859, %6805 ], [ %6628, %6796 ]
  %6865 = phi float [ %6860, %6805 ], [ %6629, %6796 ]
  %6866 = phi float [ %6861, %6805 ], [ %6630, %6796 ]
  %6867 = phi float [ %6841, %6805 ], [ %6798, %6796 ]
  %6868 = phi float [ %6842, %6805 ], [ %6631, %6796 ]
  %6869 = phi float [ %6843, %6805 ], [ %6632, %6796 ]
  %6870 = phi float [ %6844, %6805 ], [ %6633, %6796 ]
  %6871 = phi float [ %6824, %6805 ], [ %6799, %6796 ]
  %6872 = phi float [ %6825, %6805 ], [ %6634, %6796 ]
  %6873 = phi float [ %6826, %6805 ], [ %6635, %6796 ]
  %6874 = phi float [ %6827, %6805 ], [ %6636, %6796 ]
  %6875 = extractvalue %dx.types.CBufRet.f32 %6446, 3
  %6876 = fmul fast float %6875, %6871
  %6877 = fmul fast float %6875, %6867
  %6878 = fmul fast float %6875, %6863
  %6879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6880 = extractvalue %dx.types.CBufRet.f32 %6879, 3
  %6881 = fmul fast float %6876, %6880
  %6882 = fmul fast float %6877, %6880
  %6883 = fmul fast float %6878, %6880
  %6884 = fmul fast float %6872, 1.500000e+00
  %6885 = fmul fast float %6884, %6875
  %6886 = fmul fast float %6885, %6880
  %6887 = fmul fast float %6873, 1.500000e+00
  %6888 = fmul fast float %6887, %6875
  %6889 = fmul fast float %6888, %6880
  %6890 = fmul fast float %6874, 1.500000e+00
  %6891 = fmul fast float %6890, %6875
  %6892 = fmul fast float %6891, %6880
  %6893 = fmul fast float %6868, 1.500000e+00
  %6894 = fmul fast float %6893, %6875
  %6895 = fmul fast float %6894, %6880
  %6896 = fmul fast float %6869, 1.500000e+00
  %6897 = fmul fast float %6896, %6875
  %6898 = fmul fast float %6897, %6880
  %6899 = fmul fast float %6870, 1.500000e+00
  %6900 = fmul fast float %6899, %6875
  %6901 = fmul fast float %6900, %6880
  %6902 = fmul fast float %6864, 1.500000e+00
  %6903 = fmul fast float %6902, %6875
  %6904 = fmul fast float %6903, %6880
  %6905 = fmul fast float %6865, 1.500000e+00
  %6906 = fmul fast float %6905, %6875
  %6907 = fmul fast float %6906, %6880
  %6908 = fmul fast float %6866, 1.500000e+00
  %6909 = fmul fast float %6908, %6875
  %6910 = fmul fast float %6909, %6880
  %6911 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6881)  ; FMax(a,b)
  %6912 = call float @dx.op.dot3.f32(i32 55, float %6886, float %6889, float %6892, float %6886, float %6889, float %6892)  ; Dot3(ax,ay,az,bx,by,bz)
  %6913 = fcmp fast oeq float %6912, 0.000000e+00
  %6914 = fcmp fast oeq float %6911, 0.000000e+00
  %6915 = or i1 %6914, %6913
  br i1 %6915, label %6945, label %6916

; <label>:6916                                    ; preds = %6862
  %6917 = fsub fast float -0.000000e+00, %6892
  %6918 = fsub fast float -0.000000e+00, %6886
  %6919 = call float @dx.op.unary.f32(i32 24, float %6912)  ; Sqrt(value)
  %6920 = fdiv fast float %6919, %6911
  %6921 = fcmp fast ogt float %6920, 0x3FFB6F8900000000
  %6922 = select i1 %6921, float 0x3FFB6F8900000000, float %6920
  %6923 = fmul fast float %6922, 0x3FE8A23460000000
  %6924 = call float @dx.op.unary.f32(i32 7, float %6923)  ; Saturate(value)
  %6925 = call float @dx.op.binary.f32(i32 35, float %6922, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6926 = fmul fast float %6924, %6911
  %6927 = fmul fast float %6925, 0x3FF279A740000000
  %6928 = fadd fast float %6927, -1.000000e+00
  %6929 = call float @dx.op.dot3.f32(i32 55, float %6917, float %6918, float %6889, float %6917, float %6918, float %6889)  ; Dot3(ax,ay,az,bx,by,bz)
  %6930 = call float @dx.op.unary.f32(i32 25, float %6929)  ; Rsqrt(value)
  %6931 = fmul fast float %6930, %6917
  %6932 = fmul fast float %6930, %6918
  %6933 = fmul fast float %6930, %6889
  %6934 = fmul fast float %6928, %6928
  %6935 = fsub fast float 1.000000e+00, %6934
  %6936 = fmul fast float %6925, 0x40005F8BE0000000
  %6937 = fsub fast float 0x400C5BF8A0000000, %6936
  %6938 = fdiv fast float %6926, %6937
  %6939 = fmul fast float %6938, 0x3FEE31C3C0000000
  %6940 = fmul fast float %6939, %6935
  %6941 = fmul fast float %6925, 0x3FDACB7480000000
  %6942 = fadd fast float %6941, 0xBFD7347680000000
  %6943 = fmul fast float %6942, %6938
  %6944 = fmul fast float %6943, %6935
  br label %6945

; <label>:6945                                    ; preds = %6916, %6862
  %6946 = phi float [ %6931, %6916 ], [ 0.000000e+00, %6862 ]
  %6947 = phi float [ %6932, %6916 ], [ 0.000000e+00, %6862 ]
  %6948 = phi float [ %6933, %6916 ], [ 0.000000e+00, %6862 ]
  %6949 = phi float [ %6940, %6916 ], [ 0.000000e+00, %6862 ]
  %6950 = phi float [ %6944, %6916 ], [ 0.000000e+00, %6862 ]
  %6951 = call float @dx.op.dot3.f32(i32 55, float %6946, float %6947, float %6948, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %6952 = fmul fast float %6951, %6951
  %6953 = fmul fast float %6952, 0x3FEE471020000000
  %6954 = fadd fast float %6953, 0xBFD42F6020000000
  %6955 = fmul fast float %6911, 0x3FD20DD760000000
  %6956 = fmul fast float %6954, %6950
  %6957 = fmul fast float %6949, 0x3FDF454380000000
  %6958 = fmul fast float %6957, %6951
  %6959 = fadd fast float %6958, %6955
  %6960 = fadd fast float %6959, %6956
  %6961 = call float @dx.op.dot3.f32(i32 55, float %6946, float %6947, float %6948, float %6271, float %6272, float %6273)  ; Dot3(ax,ay,az,bx,by,bz)
  %6962 = fmul fast float %6961, 0x3FDF454380000000
  %6963 = fmul fast float %6961, %6961
  %6964 = fmul fast float %6963, 0x3FEE471020000000
  %6965 = fadd fast float %6964, 0xBFD42F6020000000
  %6966 = call float @dx.op.dot3.f32(i32 55, float %6911, float %6949, float %6950, float 0x3FD20DD760000000, float %6962, float %6965)  ; Dot3(ax,ay,az,bx,by,bz)
  %6967 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6882)  ; FMax(a,b)
  %6968 = call float @dx.op.dot3.f32(i32 55, float %6895, float %6898, float %6901, float %6895, float %6898, float %6901)  ; Dot3(ax,ay,az,bx,by,bz)
  %6969 = fcmp fast oeq float %6968, 0.000000e+00
  %6970 = fcmp fast oeq float %6967, 0.000000e+00
  %6971 = or i1 %6970, %6969
  br i1 %6971, label %7001, label %6972

; <label>:6972                                    ; preds = %6945
  %6973 = fsub fast float -0.000000e+00, %6901
  %6974 = fsub fast float -0.000000e+00, %6895
  %6975 = call float @dx.op.unary.f32(i32 24, float %6968)  ; Sqrt(value)
  %6976 = fdiv fast float %6975, %6967
  %6977 = fcmp fast ogt float %6976, 0x3FFB6F8900000000
  %6978 = select i1 %6977, float 0x3FFB6F8900000000, float %6976
  %6979 = fmul fast float %6978, 0x3FE8A23460000000
  %6980 = call float @dx.op.unary.f32(i32 7, float %6979)  ; Saturate(value)
  %6981 = call float @dx.op.binary.f32(i32 35, float %6978, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6982 = fmul fast float %6980, %6967
  %6983 = fmul fast float %6981, 0x3FF279A740000000
  %6984 = fadd fast float %6983, -1.000000e+00
  %6985 = call float @dx.op.dot3.f32(i32 55, float %6973, float %6974, float %6898, float %6973, float %6974, float %6898)  ; Dot3(ax,ay,az,bx,by,bz)
  %6986 = call float @dx.op.unary.f32(i32 25, float %6985)  ; Rsqrt(value)
  %6987 = fmul fast float %6986, %6973
  %6988 = fmul fast float %6986, %6974
  %6989 = fmul fast float %6986, %6898
  %6990 = fmul fast float %6984, %6984
  %6991 = fsub fast float 1.000000e+00, %6990
  %6992 = fmul fast float %6981, 0x40005F8BE0000000
  %6993 = fsub fast float 0x400C5BF8A0000000, %6992
  %6994 = fdiv fast float %6982, %6993
  %6995 = fmul fast float %6994, 0x3FEE31C3C0000000
  %6996 = fmul fast float %6995, %6991
  %6997 = fmul fast float %6981, 0x3FDACB7480000000
  %6998 = fadd fast float %6997, 0xBFD7347680000000
  %6999 = fmul fast float %6998, %6994
  %7000 = fmul fast float %6999, %6991
  br label %7001

; <label>:7001                                    ; preds = %6972, %6945
  %7002 = phi float [ %6987, %6972 ], [ 0.000000e+00, %6945 ]
  %7003 = phi float [ %6988, %6972 ], [ 0.000000e+00, %6945 ]
  %7004 = phi float [ %6989, %6972 ], [ 0.000000e+00, %6945 ]
  %7005 = phi float [ %6996, %6972 ], [ 0.000000e+00, %6945 ]
  %7006 = phi float [ %7000, %6972 ], [ 0.000000e+00, %6945 ]
  %7007 = call float @dx.op.dot3.f32(i32 55, float %7002, float %7003, float %7004, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %7008 = fmul fast float %7007, %7007
  %7009 = fmul fast float %7008, 0x3FEE471020000000
  %7010 = fadd fast float %7009, 0xBFD42F6020000000
  %7011 = fmul fast float %6967, 0x3FD20DD760000000
  %7012 = fmul fast float %7010, %7006
  %7013 = fmul fast float %7005, 0x3FDF454380000000
  %7014 = fmul fast float %7013, %7007
  %7015 = fadd fast float %7014, %7011
  %7016 = fadd fast float %7015, %7012
  %7017 = call float @dx.op.dot3.f32(i32 55, float %7002, float %7003, float %7004, float %6271, float %6272, float %6273)  ; Dot3(ax,ay,az,bx,by,bz)
  %7018 = fmul fast float %7017, 0x3FDF454380000000
  %7019 = fmul fast float %7017, %7017
  %7020 = fmul fast float %7019, 0x3FEE471020000000
  %7021 = fadd fast float %7020, 0xBFD42F6020000000
  %7022 = call float @dx.op.dot3.f32(i32 55, float %6967, float %7005, float %7006, float 0x3FD20DD760000000, float %7018, float %7021)  ; Dot3(ax,ay,az,bx,by,bz)
  %7023 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6883)  ; FMax(a,b)
  %7024 = call float @dx.op.dot3.f32(i32 55, float %6904, float %6907, float %6910, float %6904, float %6907, float %6910)  ; Dot3(ax,ay,az,bx,by,bz)
  %7025 = fcmp fast oeq float %7024, 0.000000e+00
  %7026 = fcmp fast oeq float %7023, 0.000000e+00
  %7027 = or i1 %7026, %7025
  br i1 %7027, label %7057, label %7028

; <label>:7028                                    ; preds = %7001
  %7029 = fsub fast float -0.000000e+00, %6910
  %7030 = fsub fast float -0.000000e+00, %6904
  %7031 = call float @dx.op.unary.f32(i32 24, float %7024)  ; Sqrt(value)
  %7032 = fdiv fast float %7031, %7023
  %7033 = fcmp fast ogt float %7032, 0x3FFB6F8900000000
  %7034 = select i1 %7033, float 0x3FFB6F8900000000, float %7032
  %7035 = fmul fast float %7034, 0x3FE8A23460000000
  %7036 = call float @dx.op.unary.f32(i32 7, float %7035)  ; Saturate(value)
  %7037 = call float @dx.op.binary.f32(i32 35, float %7034, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %7038 = fmul fast float %7036, %7023
  %7039 = fmul fast float %7037, 0x3FF279A740000000
  %7040 = fadd fast float %7039, -1.000000e+00
  %7041 = call float @dx.op.dot3.f32(i32 55, float %7029, float %7030, float %6907, float %7029, float %7030, float %6907)  ; Dot3(ax,ay,az,bx,by,bz)
  %7042 = call float @dx.op.unary.f32(i32 25, float %7041)  ; Rsqrt(value)
  %7043 = fmul fast float %7042, %7029
  %7044 = fmul fast float %7042, %7030
  %7045 = fmul fast float %7042, %6907
  %7046 = fmul fast float %7040, %7040
  %7047 = fsub fast float 1.000000e+00, %7046
  %7048 = fmul fast float %7037, 0x40005F8BE0000000
  %7049 = fsub fast float 0x400C5BF8A0000000, %7048
  %7050 = fdiv fast float %7038, %7049
  %7051 = fmul fast float %7050, 0x3FEE31C3C0000000
  %7052 = fmul fast float %7051, %7047
  %7053 = fmul fast float %7037, 0x3FDACB7480000000
  %7054 = fadd fast float %7053, 0xBFD7347680000000
  %7055 = fmul fast float %7054, %7050
  %7056 = fmul fast float %7055, %7047
  br label %7057

; <label>:7057                                    ; preds = %7028, %7001
  %7058 = phi float [ %7043, %7028 ], [ 0.000000e+00, %7001 ]
  %7059 = phi float [ %7044, %7028 ], [ 0.000000e+00, %7001 ]
  %7060 = phi float [ %7045, %7028 ], [ 0.000000e+00, %7001 ]
  %7061 = phi float [ %7052, %7028 ], [ 0.000000e+00, %7001 ]
  %7062 = phi float [ %7056, %7028 ], [ 0.000000e+00, %7001 ]
  %7063 = call float @dx.op.dot3.f32(i32 55, float %7058, float %7059, float %7060, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %7064 = fmul fast float %7063, %7063
  %7065 = fmul fast float %7064, 0x3FEE471020000000
  %7066 = fadd fast float %7065, 0xBFD42F6020000000
  %7067 = fmul fast float %7023, 0x3FD20DD760000000
  %7068 = fmul fast float %7066, %7062
  %7069 = fmul fast float %7061, 0x3FDF454380000000
  %7070 = fmul fast float %7069, %7063
  %7071 = fadd fast float %7070, %7067
  %7072 = fadd fast float %7071, %7068
  %7073 = call float @dx.op.dot3.f32(i32 55, float %7058, float %7059, float %7060, float %6271, float %6272, float %6273)  ; Dot3(ax,ay,az,bx,by,bz)
  %7074 = fmul fast float %7073, 0x3FDF454380000000
  %7075 = fmul fast float %7073, %7073
  %7076 = fmul fast float %7075, 0x3FEE471020000000
  %7077 = fadd fast float %7076, 0xBFD42F6020000000
  %7078 = call float @dx.op.dot3.f32(i32 55, float %7023, float %7061, float %7062, float 0x3FD20DD760000000, float %7074, float %7077)  ; Dot3(ax,ay,az,bx,by,bz)
  %7079 = call float @dx.op.binary.f32(i32 35, float %6960, float 0.000000e+00)  ; FMax(a,b)
  %7080 = call float @dx.op.binary.f32(i32 35, float %7016, float 0.000000e+00)  ; FMax(a,b)
  %7081 = call float @dx.op.binary.f32(i32 35, float %7072, float 0.000000e+00)  ; FMax(a,b)
  %7082 = call float @dx.op.binary.f32(i32 35, float %6966, float 0.000000e+00)  ; FMax(a,b)
  %7083 = call float @dx.op.binary.f32(i32 35, float %7022, float 0.000000e+00)  ; FMax(a,b)
  %7084 = call float @dx.op.binary.f32(i32 35, float %7078, float 0.000000e+00)  ; FMax(a,b)
  %7085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %7086 = extractvalue %dx.types.CBufRet.f32 %7085, 0
  %7087 = call float @dx.op.binary.f32(i32 36, float %6258, float %7086)  ; FMin(a,b)
  %7088 = fsub fast float 1.000000e+00, %6274
  %7089 = fmul fast float %7087, %7088
  %7090 = fsub fast float 1.000000e+00, %7089
  %7091 = bitcast float %7090 to i32
  %7092 = sub nsw i32 2129859010, %7091
  %7093 = bitcast i32 %7092 to float
  %7094 = call float @dx.op.binary.f32(i32 36, float %6259, float %7086)  ; FMin(a,b)
  %7095 = fmul fast float %7094, %7088
  %7096 = fsub fast float 1.000000e+00, %7095
  %7097 = bitcast float %7096 to i32
  %7098 = sub nsw i32 2129859010, %7097
  %7099 = bitcast i32 %7098 to float
  %7100 = call float @dx.op.binary.f32(i32 36, float %6260, float %7086)  ; FMin(a,b)
  %7101 = fmul fast float %7100, %7088
  %7102 = fsub fast float 1.000000e+00, %7101
  %7103 = bitcast float %7102 to i32
  %7104 = sub nsw i32 2129859010, %7103
  %7105 = bitcast i32 %7104 to float
  %7106 = fmul fast float %7079, %6274
  %7107 = fmul fast float %7106, %7093
  %7108 = fmul fast float %7080, %6274
  %7109 = fmul fast float %7108, %7099
  %7110 = fmul fast float %7081, %6274
  %7111 = fmul fast float %7110, %7105
  %7112 = call float @dx.op.binary.f32(i32 36, float %6252, float %7086)  ; FMin(a,b)
  %7113 = fmul fast float %7112, %7088
  %7114 = fsub fast float 1.000000e+00, %7113
  %7115 = bitcast float %7114 to i32
  %7116 = sub nsw i32 2129859010, %7115
  %7117 = bitcast i32 %7116 to float
  %7118 = call float @dx.op.binary.f32(i32 36, float %6253, float %7086)  ; FMin(a,b)
  %7119 = fmul fast float %7118, %7088
  %7120 = fsub fast float 1.000000e+00, %7119
  %7121 = bitcast float %7120 to i32
  %7122 = sub nsw i32 2129859010, %7121
  %7123 = bitcast i32 %7122 to float
  %7124 = call float @dx.op.binary.f32(i32 36, float %6263, float %7086)  ; FMin(a,b)
  %7125 = fmul fast float %7124, %7088
  %7126 = fsub fast float 1.000000e+00, %7125
  %7127 = bitcast float %7126 to i32
  %7128 = sub nsw i32 2129859010, %7127
  %7129 = bitcast i32 %7128 to float
  %7130 = fmul fast float %7082, %6274
  %7131 = fmul fast float %7130, %7117
  %7132 = fmul fast float %7083, %6274
  %7133 = fmul fast float %7132, %7123
  %7134 = fmul fast float %7084, %6274
  %7135 = fmul fast float %7134, %7129
  %7136 = call float @dx.op.dot3.f32(i32 55, float %7107, float %7109, float %7111, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7137 = select i1 %397, float 0.000000e+00, float %7107
  %7138 = select i1 %397, float %7136, float %7109
  %7139 = select i1 %397, float 0.000000e+00, float %7111
  %7140 = call float @dx.op.dot3.f32(i32 55, float %7131, float %7133, float %7135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7141 = select i1 %397, float 0.000000e+00, float %7131
  %7142 = select i1 %397, float %7140, float %7133
  %7143 = select i1 %397, float 0.000000e+00, float %7135
  %7144 = fmul fast float %6265, 9.843750e-01
  %7145 = fmul fast float %6261, 9.843750e-01
  %7146 = fadd fast float %7144, 7.812500e-03
  %7147 = fadd fast float %7145, 7.812500e-03
  %7148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %7146, float %7147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7149 = extractvalue %dx.types.ResRet.f32 %7148, 2
  %7150 = extractvalue %dx.types.ResRet.f32 %7148, 3
  %7151 = fmul fast float %7149, %6252
  %7152 = fmul fast float %7149, %6253
  %7153 = fmul fast float %7149, %6263
  %7154 = fadd fast float %7151, %7150
  %7155 = fadd fast float %7152, %7150
  %7156 = fadd fast float %7153, %7150
  %7157 = fcmp fast ogt float %5650, 0.000000e+00
  br i1 %7157, label %7158, label %7184

; <label>:7158                                    ; preds = %7057
  %7159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %5650, float %6265, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7160 = extractvalue %dx.types.ResRet.f32 %7159, 0
  %7161 = extractvalue %dx.types.ResRet.f32 %7159, 1
  %7162 = extractvalue %dx.types.ResRet.f32 %7159, 2
  %7163 = fadd fast float %7160, -5.000000e-01
  %7164 = fadd fast float %7161, -5.000000e-01
  %7165 = fadd fast float %7162, -5.000000e-01
  %7166 = fsub fast float 1.000000e+00, %6252
  %7167 = fsub fast float 1.000000e+00, %6253
  %7168 = fsub fast float 1.000000e+00, %6263
  %7169 = fmul fast float %6252, 4.000000e+00
  %7170 = fmul fast float %7169, %7166
  %7171 = fmul fast float %7170, %7163
  %7172 = fmul fast float %6253, 4.000000e+00
  %7173 = fmul fast float %7172, %7167
  %7174 = fmul fast float %7173, %7164
  %7175 = fmul fast float %6263, 4.000000e+00
  %7176 = fmul fast float %7175, %7168
  %7177 = fmul fast float %7176, %7165
  %7178 = fadd fast float %7171, %7154
  %7179 = fadd fast float %7174, %7155
  %7180 = fadd fast float %7177, %7156
  %7181 = call float @dx.op.unary.f32(i32 7, float %7178)  ; Saturate(value)
  %7182 = call float @dx.op.unary.f32(i32 7, float %7179)  ; Saturate(value)
  %7183 = call float @dx.op.unary.f32(i32 7, float %7180)  ; Saturate(value)
  br label %7184

; <label>:7184                                    ; preds = %7158, %7057
  %7185 = phi float [ %7181, %7158 ], [ %7154, %7057 ]
  %7186 = phi float [ %7182, %7158 ], [ %7155, %7057 ]
  %7187 = phi float [ %7183, %7158 ], [ %7156, %7057 ]
  %7188 = call float @dx.op.binary.f32(i32 35, float %7186, float %7187)  ; FMax(a,b)
  %7189 = call float @dx.op.binary.f32(i32 35, float %7185, float %7188)  ; FMax(a,b)
  %7190 = fsub fast float 1.000000e+00, %7189
  %7191 = fmul fast float %7190, %7137
  %7192 = fmul fast float %7190, %7138
  %7193 = fmul fast float %7190, %7139
  %7194 = call float @dx.op.dot3.f32(i32 55, float %6258, float %6259, float %6260, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7195 = fcmp fast ogt float %7194, 0x3E7FF19E20000000
  %7196 = fdiv fast float 1.000000e+00, %7194
  %7197 = select i1 %7195, float %7196, float 0.000000e+00
  %7198 = fmul fast float %7197, %6258
  %7199 = fmul fast float %7197, %6259
  %7200 = fmul fast float %7197, %6260
  %7201 = fadd fast float %7198, -1.000000e+00
  %7202 = fadd fast float %7199, -1.000000e+00
  %7203 = fadd fast float %7200, -1.000000e+00
  %7204 = fmul fast float %7201, 5.000000e-01
  %7205 = fmul fast float %7202, 5.000000e-01
  %7206 = fmul fast float %7203, 5.000000e-01
  %7207 = fadd fast float %7204, 1.000000e+00
  %7208 = fadd fast float %7205, 1.000000e+00
  %7209 = fadd fast float %7206, 1.000000e+00
  %7210 = fmul fast float %7185, %7141
  %7211 = fmul fast float %7186, %7142
  %7212 = fmul fast float %7187, %7143
  %7213 = fsub fast float 1.000000e+00, %6265
  %7214 = bitcast float %7213 to i32
  %7215 = sitofp i32 %7214 to float
  %7216 = fmul fast float %7215, 5.000000e+00
  %7217 = fadd fast float %7216, 0xC1EFBF8940000000
  %7218 = fptosi float %7217 to i32
  %7219 = bitcast i32 %7218 to float
  %7220 = fmul fast float %7219, %5651
  %7221 = fmul fast float %7137, %7220
  %7222 = fmul fast float %7221, %7190
  %7223 = fmul fast float %7222, %7207
  %7224 = fmul fast float %7138, %7220
  %7225 = fmul fast float %7224, %7190
  %7226 = fmul fast float %7225, %7208
  %7227 = fmul fast float %7139, %7220
  %7228 = fmul fast float %7227, %7190
  %7229 = fmul fast float %7228, %7209
  %7230 = fmul fast float %7191, %5647
  %7231 = fmul fast float %7192, %5647
  %7232 = fmul fast float %7193, %5647
  %7233 = fadd fast float %7210, %5643
  %7234 = fadd fast float %7233, %7223
  %7235 = fmul fast float %7234, %5647
  %7236 = fadd fast float %7211, %5644
  %7237 = fadd fast float %7236, %7226
  %7238 = fmul fast float %7237, %5647
  %7239 = fadd fast float %7212, %5645
  %7240 = fadd fast float %7239, %7229
  %7241 = fmul fast float %7240, %5647
  %7242 = bitcast i32 %6277 to float
  %7243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %7244 = extractvalue %dx.types.CBufRet.f32 %7243, 3
  %7245 = fcmp fast oeq float %7244, 0.000000e+00
  br i1 %7245, label %7473, label %7246

; <label>:7246                                    ; preds = %7184
  %7247 = extractvalue %dx.types.CBufRet.f32 %7243, 0
  %7248 = extractvalue %dx.types.CBufRet.f32 %7243, 1
  %7249 = extractvalue %dx.types.CBufRet.f32 %7243, 2
  %7250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7251 = extractvalue %dx.types.CBufRet.f32 %7250, 0
  %7252 = extractvalue %dx.types.CBufRet.f32 %7250, 1
  %7253 = extractvalue %dx.types.CBufRet.f32 %7250, 2
  %7254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7255 = extractvalue %dx.types.CBufRet.f32 %7254, 0
  %7256 = extractvalue %dx.types.CBufRet.f32 %7254, 1
  %7257 = call float @dx.op.dot3.f32(i32 55, float %7251, float %7252, float %7253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7258 = select i1 %397, float %7255, float %7251
  %7259 = select i1 %397, float %7257, float %7252
  %7260 = select i1 %397, float %7256, float %7253
  %7261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7262 = extractvalue %dx.types.CBufRet.f32 %7261, 1
  %7263 = fcmp fast une float %7262, 0.000000e+00
  br i1 %7263, label %7264, label %7281

; <label>:7264                                    ; preds = %7246
  %7265 = fptoui float %92 to i32
  %7266 = fptoui float %93 to i32
  %7267 = lshr i32 %7265, 4
  %7268 = lshr i32 %7266, 4
  %7269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7270 = extractvalue %dx.types.CBufRet.f32 %7269, 0
  %7271 = fptoui float %7270 to i32
  %7272 = add i32 %7271, 15
  %7273 = lshr i32 %7272, 4
  %7274 = mul i32 %7273, %7268
  %7275 = add i32 %7274, %7267
  %7276 = shl i32 %7275, 3
  %7277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %7276, i32 undef)  ; BufferLoad(srv,index,wot)
  %7278 = extractvalue %dx.types.ResRet.i32 %7277, 0
  %7279 = and i32 %7278, -268435456
  %7280 = icmp eq i32 %7279, -1342177280
  br i1 %7280, label %7291, label %7281

; <label>:7281                                    ; preds = %7264, %7246
  %7282 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %47, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %7283 = extractvalue %dx.types.CBufRet.f32 %7282, 2
  %7284 = extractvalue %dx.types.CBufRet.f32 %7282, 3
  %7285 = fmul fast float %7283, %92
  %7286 = fmul fast float %7284, %93
  %7287 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %46, float %7285, float %7286, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7288 = extractvalue %dx.types.ResRet.f32 %7287, 0
  %7289 = extractvalue %dx.types.ResRet.f32 %7287, 1
  %7290 = extractvalue %dx.types.ResRet.f32 %7287, 2
  br label %7291

; <label>:7291                                    ; preds = %7281, %7264
  %7292 = phi float [ %7288, %7281 ], [ 0.000000e+00, %7264 ]
  %7293 = phi float [ %7289, %7281 ], [ 0.000000e+00, %7264 ]
  %7294 = phi float [ %7290, %7281 ], [ 0.000000e+00, %7264 ]
  %7295 = call float @dx.op.binary.f32(i32 36, float %7293, float %7294)  ; FMin(a,b)
  %7296 = call float @dx.op.binary.f32(i32 36, float %7292, float %7295)  ; FMin(a,b)
  %7297 = fcmp fast ogt float %7296, 0.000000e+00
  br i1 %7297, label %7298, label %7473, !dx.controlflow.hints !101

; <label>:7298                                    ; preds = %7291
  %7299 = fmul fast float %7292, %7258
  %7300 = fmul fast float %7293, %7259
  %7301 = fmul fast float %7294, %7260
  %7302 = fsub fast float %7247, %6251
  %7303 = fsub fast float %7248, %6250
  %7304 = fsub fast float %7249, %6249
  %7305 = call float @dx.op.dot3.f32(i32 55, float %7302, float %7303, float %7304, float %7302, float %7303, float %7304)  ; Dot3(ax,ay,az,bx,by,bz)
  %7306 = call float @dx.op.unary.f32(i32 25, float %7305)  ; Rsqrt(value)
  %7307 = fmul fast float %7306, %7302
  %7308 = fmul fast float %7306, %7303
  %7309 = fmul fast float %7306, %7304
  %7310 = call float @dx.op.dot3.f32(i32 55, float %7247, float %7248, float %7249, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %7311 = call float @dx.op.dot3.f32(i32 55, float %6248, float %6247, float %6246, float %7307, float %7308, float %7309)  ; Dot3(ax,ay,az,bx,by,bz)
  %7312 = call float @dx.op.unary.f32(i32 7, float %7310)  ; Saturate(value)
  %7313 = fmul fast float %7312, %7312
  %7314 = fmul fast float %7313, %7242
  %7315 = call float @dx.op.unary.f32(i32 7, float %7314)  ; Saturate(value)
  %7316 = fmul fast float %7315, %7312
  %7317 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float %7307, float %7308, float %7309)  ; Dot3(ax,ay,az,bx,by,bz)
  %7318 = fmul fast float %7317, %7317
  %7319 = call float @dx.op.unary.f32(i32 6, float %7310)  ; FAbs(value)
  %7320 = fsub fast float 1.000000e+00, %6261
  %7321 = call float @dx.op.binary.f32(i32 35, float %7320, float 0x3F847AE140000000)  ; FMax(a,b)
  %7322 = fmul fast float %7321, %7321
  %7323 = fmul fast float %7322, %7322
  %7324 = fsub fast float 1.000000e+00, %7323
  %7325 = fmul fast float %6265, %6265
  %7326 = fmul fast float %7325, %7324
  %7327 = fadd fast float %7326, %7323
  %7328 = bitcast float %7327 to i32
  %7329 = ashr i32 %7328, 1
  %7330 = add nsw i32 %7329, 532487669
  %7331 = bitcast i32 %7330 to float
  %7332 = fadd fast float %7331, %6265
  %7333 = fmul fast float %7323, %7318
  %7334 = fsub fast float 1.000000e+00, %7318
  %7335 = fadd fast float %7334, %7333
  %7336 = fmul fast float %7319, %7319
  %7337 = fmul fast float %7336, %7324
  %7338 = fadd fast float %7337, %7323
  %7339 = bitcast float %7338 to i32
  %7340 = ashr i32 %7339, 1
  %7341 = add nsw i32 %7340, 532487669
  %7342 = bitcast i32 %7341 to float
  %7343 = fadd fast float %7342, %7319
  %7344 = fmul fast float %7335, %7335
  %7345 = fmul fast float %7344, %7332
  %7346 = fmul fast float %7345, %7343
  %7347 = fdiv fast float 0x3FF0A00000000000, %7346
  %7348 = fmul fast float %7347, %7323
  %7349 = call float @dx.op.unary.f32(i32 6, float %7311)  ; FAbs(value)
  %7350 = fsub fast float 1.000000e+00, %7349
  %7351 = bitcast float %7350 to i32
  %7352 = sitofp i32 %7351 to float
  %7353 = fmul fast float %7352, 5.000000e+00
  %7354 = fadd fast float %7353, 0xC1EFBF8940000000
  %7355 = fptosi float %7354 to i32
  %7356 = bitcast i32 %7355 to float
  %7357 = fsub fast float 1.000000e+00, %6252
  %7358 = fsub fast float 1.000000e+00, %6253
  %7359 = fsub fast float 1.000000e+00, %6263
  %7360 = fmul fast float %7356, %7357
  %7361 = fmul fast float %7356, %7358
  %7362 = fmul fast float %7356, %7359
  %7363 = fadd fast float %7360, %6252
  %7364 = fadd fast float %7361, %6253
  %7365 = fadd fast float %7362, %6263
  br i1 %7157, label %7366, label %7389

; <label>:7366                                    ; preds = %7298
  %7367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %5650, float %7349, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7368 = extractvalue %dx.types.ResRet.f32 %7367, 0
  %7369 = extractvalue %dx.types.ResRet.f32 %7367, 1
  %7370 = extractvalue %dx.types.ResRet.f32 %7367, 2
  %7371 = fadd fast float %7368, -5.000000e-01
  %7372 = fadd fast float %7369, -5.000000e-01
  %7373 = fadd fast float %7370, -5.000000e-01
  %7374 = fmul fast float %6252, 4.000000e+00
  %7375 = fmul fast float %7374, %7357
  %7376 = fmul fast float %7375, %7371
  %7377 = fmul fast float %6253, 4.000000e+00
  %7378 = fmul fast float %7377, %7358
  %7379 = fmul fast float %7378, %7372
  %7380 = fmul fast float %6263, 4.000000e+00
  %7381 = fmul fast float %7380, %7359
  %7382 = fmul fast float %7381, %7373
  %7383 = fadd fast float %7376, %7363
  %7384 = fadd fast float %7379, %7364
  %7385 = fadd fast float %7382, %7365
  %7386 = call float @dx.op.unary.f32(i32 7, float %7383)  ; Saturate(value)
  %7387 = call float @dx.op.unary.f32(i32 7, float %7384)  ; Saturate(value)
  %7388 = call float @dx.op.unary.f32(i32 7, float %7385)  ; Saturate(value)
  br label %7389

; <label>:7389                                    ; preds = %7366, %7298
  %7390 = phi float [ %7386, %7366 ], [ %7363, %7298 ]
  %7391 = phi float [ %7387, %7366 ], [ %7364, %7298 ]
  %7392 = phi float [ %7388, %7366 ], [ %7365, %7298 ]
  %7393 = fmul fast float %7310, 9.843750e-01
  %7394 = fadd fast float %7393, 7.812500e-03
  %7395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %7394, float %7147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7396 = extractvalue %dx.types.ResRet.f32 %7395, 2
  %7397 = extractvalue %dx.types.ResRet.f32 %7395, 3
  %7398 = fmul fast float %7396, %6252
  %7399 = fmul fast float %7396, %6253
  %7400 = fmul fast float %7396, %6263
  %7401 = fadd fast float %7398, %7397
  %7402 = fadd fast float %7399, %7397
  %7403 = fadd fast float %7400, %7397
  br i1 %7157, label %7404, label %7427

; <label>:7404                                    ; preds = %7389
  %7405 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %5650, float %7310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7406 = extractvalue %dx.types.ResRet.f32 %7405, 0
  %7407 = extractvalue %dx.types.ResRet.f32 %7405, 1
  %7408 = extractvalue %dx.types.ResRet.f32 %7405, 2
  %7409 = fadd fast float %7406, -5.000000e-01
  %7410 = fadd fast float %7407, -5.000000e-01
  %7411 = fadd fast float %7408, -5.000000e-01
  %7412 = fmul fast float %6252, 4.000000e+00
  %7413 = fmul fast float %7412, %7357
  %7414 = fmul fast float %7413, %7409
  %7415 = fmul fast float %6253, 4.000000e+00
  %7416 = fmul fast float %7415, %7358
  %7417 = fmul fast float %7416, %7410
  %7418 = fmul fast float %6263, 4.000000e+00
  %7419 = fmul fast float %7418, %7359
  %7420 = fmul fast float %7419, %7411
  %7421 = fadd fast float %7414, %7401
  %7422 = fadd fast float %7417, %7402
  %7423 = fadd fast float %7420, %7403
  %7424 = call float @dx.op.unary.f32(i32 7, float %7421)  ; Saturate(value)
  %7425 = call float @dx.op.unary.f32(i32 7, float %7422)  ; Saturate(value)
  %7426 = call float @dx.op.unary.f32(i32 7, float %7423)  ; Saturate(value)
  br label %7427

; <label>:7427                                    ; preds = %7404, %7389
  %7428 = phi float [ %7424, %7404 ], [ %7401, %7389 ]
  %7429 = phi float [ %7425, %7404 ], [ %7402, %7389 ]
  %7430 = phi float [ %7426, %7404 ], [ %7403, %7389 ]
  %7431 = call float @dx.op.binary.f32(i32 35, float %7429, float %7430)  ; FMax(a,b)
  %7432 = call float @dx.op.binary.f32(i32 35, float %7428, float %7431)  ; FMax(a,b)
  %7433 = fsub fast float 1.000000e+00, %7432
  %7434 = fmul fast float %7390, %7348
  %7435 = fmul fast float %7391, %7348
  %7436 = fmul fast float %7392, %7348
  %7437 = fsub fast float 1.000000e+00, %7311
  %7438 = bitcast float %7437 to i32
  %7439 = sitofp i32 %7438 to float
  %7440 = fmul fast float %7439, 5.000000e+00
  %7441 = fadd fast float %7440, 0xC1EFBF8940000000
  %7442 = fptosi float %7441 to i32
  %7443 = bitcast i32 %7442 to float
  %7444 = fmul fast float %7443, %5651
  %7445 = fmul fast float %7433, %7444
  %7446 = fmul fast float %7445, %7207
  %7447 = fmul fast float %7445, %7208
  %7448 = fmul fast float %7445, %7209
  %7449 = fadd fast float %7446, %7434
  %7450 = fadd fast float %7447, %7435
  %7451 = fadd fast float %7448, %7436
  %7452 = fmul fast float %7316, %7299
  %7453 = fmul fast float %7452, %7433
  %7454 = fmul fast float %7316, %7300
  %7455 = fmul fast float %7454, %7433
  %7456 = fmul fast float %7316, %7301
  %7457 = fmul fast float %7456, %7433
  %7458 = fmul fast float %7452, %7449
  %7459 = fmul fast float %7454, %7450
  %7460 = fmul fast float %7456, %7451
  %7461 = fadd fast float %7453, %7191
  %7462 = fmul fast float %7461, %5647
  %7463 = fadd fast float %7455, %7192
  %7464 = fmul fast float %7463, %5647
  %7465 = fadd fast float %7457, %7193
  %7466 = fmul fast float %7465, %5647
  %7467 = fadd fast float %7458, %7234
  %7468 = fmul fast float %7467, %5647
  %7469 = fadd fast float %7459, %7237
  %7470 = fmul fast float %7469, %5647
  %7471 = fadd fast float %7460, %7240
  %7472 = fmul fast float %7471, %5647
  br label %7473

; <label>:7473                                    ; preds = %7427, %7291, %7184
  %7474 = phi float [ %7235, %7184 ], [ %7235, %7291 ], [ %7468, %7427 ]
  %7475 = phi float [ %7238, %7184 ], [ %7238, %7291 ], [ %7470, %7427 ]
  %7476 = phi float [ %7241, %7184 ], [ %7241, %7291 ], [ %7472, %7427 ]
  %7477 = phi float [ %7230, %7184 ], [ %7230, %7291 ], [ %7462, %7427 ]
  %7478 = phi float [ %7231, %7184 ], [ %7231, %7291 ], [ %7464, %7427 ]
  %7479 = phi float [ %7232, %7184 ], [ %7232, %7291 ], [ %7466, %7427 ]
  %7480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7481 = extractvalue %dx.types.CBufRet.i32 %7480, 0
  %7482 = icmp eq i32 %7481, 0
  br i1 %7482, label %7917, label %7483

; <label>:7483                                    ; preds = %7473
  %7484 = fptoui float %92 to i32
  %7485 = fptoui float %93 to i32
  %7486 = lshr i32 %7484, 4
  %7487 = lshr i32 %7485, 4
  %7488 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7489 = extractvalue %dx.types.CBufRet.i32 %7488, 0
  %7490 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7487, i32 %7489, i32 %7486)  ; UMad(a,b,c)
  %7491 = add nsw i32 %7481, -1
  %7492 = call i32 @dx.op.binary.i32(i32 37, i32 %7491, i32 0)  ; IMax(a,b)
  %7493 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %7494 = fptoui float %7493 to i32
  %7495 = lshr i32 %7494, 5
  %7496 = call i32 @dx.op.binary.i32(i32 40, i32 %7495, i32 8191)  ; UMin(a,b)
  %7497 = shl i32 %7496, 2
  %7498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %7497, i32 undef)  ; BufferLoad(srv,index,wot)
  %7499 = extractvalue %dx.types.ResRet.i32 %7498, 0
  %7500 = lshr i32 %7499, 16
  %7501 = and i32 %7499, 65535
  %7502 = lshr i32 %7499, 21
  %7503 = lshr i32 %7501, 5
  %7504 = call i32 @dx.op.binary.i32(i32 40, i32 %7503, i32 %7492)  ; UMin(a,b)
  %7505 = icmp ugt i32 %7502, %7504
  br i1 %7505, label %7917, label %7506

; <label>:7506                                    ; preds = %7483
  br label %7507

; <label>:7507                                    ; preds = %7907, %7506
  %7508 = phi i32 [ %7914, %7907 ], [ %7502, %7506 ]
  %7509 = phi float [ %7908, %7907 ], [ %7474, %7506 ]
  %7510 = phi float [ %7909, %7907 ], [ %7475, %7506 ]
  %7511 = phi float [ %7910, %7907 ], [ %7476, %7506 ]
  %7512 = phi float [ %7911, %7907 ], [ %7477, %7506 ]
  %7513 = phi float [ %7912, %7907 ], [ %7478, %7506 ]
  %7514 = phi float [ %7913, %7907 ], [ %7479, %7506 ]
  %7515 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %48, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7516 = extractvalue %dx.types.CBufRet.i32 %7515, 0
  %7517 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7490, i32 %7516, i32 %7508)  ; UMad(a,b,c)
  %7518 = shl i32 %7517, 2
  %7519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %7518, i32 undef)  ; BufferLoad(srv,index,wot)
  %7520 = extractvalue %dx.types.ResRet.i32 %7519, 0
  %7521 = shl i32 %7508, 5
  %7522 = sub nsw i32 %7500, %7521
  %7523 = call i32 @dx.op.binary.i32(i32 37, i32 %7522, i32 0)  ; IMax(a,b)
  %7524 = call i32 @dx.op.binary.i32(i32 38, i32 %7523, i32 31)  ; IMin(a,b)
  %7525 = sub nsw i32 1, %7500
  %7526 = add nsw i32 %7525, %7501
  %7527 = call i32 @dx.op.binary.i32(i32 37, i32 %7526, i32 0)  ; IMax(a,b)
  %7528 = call i32 @dx.op.binary.i32(i32 38, i32 %7527, i32 32)  ; IMin(a,b)
  %7529 = and i32 %7528, 31
  %7530 = shl i32 -1, %7529
  %7531 = xor i32 %7530, -1
  %7532 = and i32 %7524, 31
  %7533 = shl i32 %7531, %7532
  %7534 = icmp eq i32 %7528, 32
  %7535 = select i1 %7534, i32 -1, i32 %7533
  %7536 = and i32 %7535, %7520
  %7537 = icmp eq i32 %7536, 0
  br i1 %7537, label %7907, label %7538

; <label>:7538                                    ; preds = %7507
  br label %7539

; <label>:7539                                    ; preds = %7619, %7538
  %7540 = phi i32 [ %7551, %7619 ], [ %7536, %7538 ]
  %7541 = phi float [ %7620, %7619 ], [ %7509, %7538 ]
  %7542 = phi float [ %7621, %7619 ], [ %7510, %7538 ]
  %7543 = phi float [ %7622, %7619 ], [ %7511, %7538 ]
  %7544 = phi float [ %7623, %7619 ], [ %7512, %7538 ]
  %7545 = phi float [ %7624, %7619 ], [ %7513, %7538 ]
  %7546 = phi float [ %7625, %7619 ], [ %7514, %7538 ]
  %7547 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7540)  ; FirstbitLo(value)
  %7548 = add i32 %7547, %7521
  %7549 = and i32 %7547, 31
  %7550 = shl i32 1, %7549
  %7551 = xor i32 %7550, %7540
  %7552 = mul i32 %7548, 112
  %7553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7552, i32 undef)  ; BufferLoad(srv,index,wot)
  %7554 = extractvalue %dx.types.ResRet.f32 %7553, 0
  %7555 = extractvalue %dx.types.ResRet.f32 %7553, 1
  %7556 = extractvalue %dx.types.ResRet.f32 %7553, 2
  %7557 = or i32 %7552, 12
  %7558 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7557, i32 undef)  ; BufferLoad(srv,index,wot)
  %7559 = extractvalue %dx.types.ResRet.f32 %7558, 0
  %7560 = add i32 %7552, 44
  %7561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7560, i32 undef)  ; BufferLoad(srv,index,wot)
  %7562 = extractvalue %dx.types.ResRet.f32 %7561, 0
  %7563 = add i32 %7552, 48
  %7564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7563, i32 undef)  ; BufferLoad(srv,index,wot)
  %7565 = extractvalue %dx.types.ResRet.f32 %7564, 0
  %7566 = extractvalue %dx.types.ResRet.f32 %7564, 1
  %7567 = extractvalue %dx.types.ResRet.f32 %7564, 2
  %7568 = add i32 %7552, 80
  %7569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7568, i32 undef)  ; BufferLoad(srv,index,wot)
  %7570 = extractvalue %dx.types.ResRet.f32 %7569, 1
  %7571 = extractvalue %dx.types.ResRet.f32 %7569, 2
  %7572 = call float @dx.op.dot3.f32(i32 55, float %7554, float %7555, float %7556, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7573 = select i1 %397, float %7570, float %7554
  %7574 = select i1 %397, float %7572, float %7555
  %7575 = select i1 %397, float %7571, float %7556
  %7576 = fsub fast float %7565, %147
  %7577 = fsub fast float %7566, %148
  %7578 = fsub fast float %7567, %149
  %7579 = call float @dx.op.dot3.f32(i32 55, float %7576, float %7577, float %7578, float %7576, float %7577, float %7578)  ; Dot3(ax,ay,az,bx,by,bz)
  %7580 = call float @dx.op.unary.f32(i32 24, float %7579)  ; Sqrt(value)
  %7581 = fdiv fast float 1.000000e+00, %7580
  %7582 = fmul fast float %7581, %7576
  %7583 = fmul fast float %7581, %7577
  %7584 = fmul fast float %7581, %7578
  %7585 = fadd fast float %7580, %7559
  %7586 = fdiv fast float 1.000000e+00, %7585
  %7587 = fmul float %7562, %7586
  %7588 = fmul float %7587, %7587
  %7589 = call float @dx.op.unary.f32(i32 7, float %7588)  ; Saturate(value)
  %7590 = and i32 %7550, %7536
  %7591 = icmp eq i32 %7590, 0
  br i1 %7591, label %7614, label %7592, !dx.controlflow.hints !102

; <label>:7592                                    ; preds = %7539
  %7593 = lshr i32 %7484, 5
  %7594 = lshr i32 %7485, 5
  %7595 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %7593, i32 %7594, i32 %7548, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7596 = extractvalue %dx.types.ResRet.i32 %7595, 0
  %7597 = and i32 %7596, 3
  %7598 = icmp eq i32 %7597, 0
  %7599 = select i1 %7598, float 1.000000e+00, float 0.000000e+00
  %7600 = icmp eq i32 %7597, 3
  br i1 %7600, label %7601, label %7614

; <label>:7601                                    ; preds = %7592
  %7602 = lshr i32 %7596, 10
  %7603 = and i32 %7602, 8160
  %7604 = and i32 %7485, 31
  %7605 = or i32 %7603, %7604
  %7606 = lshr i32 %7596, 1
  %7607 = and i32 %7606, 16352
  %7608 = and i32 %7484, 31
  %7609 = or i32 %7607, %7608
  %7610 = lshr i32 %7596, 23
  %7611 = and i32 %7610, 255
  %7612 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %7609, i32 %7605, i32 %7611, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7613 = extractvalue %dx.types.ResRet.f32 %7612, 0
  br label %7614

; <label>:7614                                    ; preds = %7601, %7592, %7539
  %7615 = phi float [ %7613, %7601 ], [ %7599, %7592 ], [ 0.000000e+00, %7539 ]
  %7616 = call float @dx.op.binary.f32(i32 36, float %7615, float %7615)  ; FMin(a,b)
  %7617 = call float @dx.op.binary.f32(i32 36, float %7615, float %7616)  ; FMin(a,b)
  %7618 = fcmp fast ogt float %7617, 0.000000e+00
  br i1 %7618, label %7627, label %7619, !dx.controlflow.hints !103

; <label>:7619                                    ; preds = %7863, %7614
  %7620 = phi float [ %7541, %7614 ], [ %7903, %7863 ]
  %7621 = phi float [ %7542, %7614 ], [ %7904, %7863 ]
  %7622 = phi float [ %7543, %7614 ], [ %7905, %7863 ]
  %7623 = phi float [ %7544, %7614 ], [ %7897, %7863 ]
  %7624 = phi float [ %7545, %7614 ], [ %7898, %7863 ]
  %7625 = phi float [ %7546, %7614 ], [ %7899, %7863 ]
  %7626 = icmp eq i32 %7540, %7550
  br i1 %7626, label %7906, label %7539

; <label>:7627                                    ; preds = %7614
  %7628 = fmul fast float %7615, %7573
  %7629 = fmul fast float %7615, %7574
  %7630 = fmul fast float %7615, %7575
  %7631 = fsub fast float %7567, %6051
  %7632 = fcmp fast ogt float %7631, 0.000000e+00
  %7633 = fsub fast float %149, %6051
  %7634 = fcmp fast ogt float %7633, 0.000000e+00
  %7635 = xor i1 %7634, %7632
  %7636 = fsub fast float %6051, %7567
  %7637 = fmul fast float %7636, 2.000000e+00
  %7638 = fadd fast float %7637, %7567
  %7639 = select i1 %7635, float %7567, float %7638
  %7640 = fsub fast float %7639, %149
  %7641 = call float @dx.op.dot3.f32(i32 55, float %7576, float %7577, float %7640, float %7576, float %7577, float %7640)  ; Dot3(ax,ay,az,bx,by,bz)
  %7642 = call float @dx.op.unary.f32(i32 25, float %7641)  ; Rsqrt(value)
  %7643 = fmul fast float %7642, %7576
  %7644 = fmul fast float %7642, %7577
  %7645 = fmul fast float %7642, %7640
  %7646 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %6059)  ; Dot3(ax,ay,az,bx,by,bz)
  %7647 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7643, float %7644, float %7645)  ; Dot3(ax,ay,az,bx,by,bz)
  %7648 = fdiv fast float 1.000000e+00, %7647
  %7649 = fmul fast float %7648, %7646
  %7650 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7633, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7651 = fcmp fast ogt float %7650, 0.000000e+00
  %7652 = fcmp fast olt float %7650, 0.000000e+00
  %7653 = zext i1 %7651 to i32
  %7654 = zext i1 %7652 to i32
  %7655 = sub nsw i32 %7653, %7654
  %7656 = sitofp i32 %7655 to float
  %7657 = fsub fast float %7639, %6051
  %7658 = call float @dx.op.dot3.f32(i32 55, float %7576, float %7577, float %7657, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7659 = fcmp fast ogt float %7658, 0.000000e+00
  %7660 = fcmp fast olt float %7658, 0.000000e+00
  %7661 = zext i1 %7659 to i32
  %7662 = zext i1 %7660 to i32
  %7663 = sub nsw i32 %7661, %7662
  %7664 = sitofp i32 %7663 to float
  %7665 = fcmp fast une float %7656, %7664
  br i1 %7665, label %7666, label %7676

; <label>:7666                                    ; preds = %7627
  %7667 = fmul fast float %7649, %7645
  %7668 = fmul fast float %7649, %7644
  %7669 = fmul fast float %7649, %7643
  %7670 = fmul fast float %7669, %7669
  %7671 = fmul fast float %7668, %7668
  %7672 = fadd fast float %7670, %7671
  %7673 = fmul fast float %7667, %7667
  %7674 = fadd fast float %7672, %7673
  %7675 = call float @dx.op.unary.f32(i32 24, float %7674)  ; Sqrt(value)
  br label %7688

; <label>:7676                                    ; preds = %7627
  %7677 = icmp slt i32 %7655, 0
  br i1 %7677, label %7678, label %7688

; <label>:7678                                    ; preds = %7676
  %7679 = fsub fast float %147, %7565
  %7680 = fsub fast float %148, %7566
  %7681 = fsub fast float %149, %7639
  %7682 = fmul fast float %7679, %7679
  %7683 = fmul fast float %7680, %7680
  %7684 = fadd fast float %7682, %7683
  %7685 = fmul fast float %7681, %7681
  %7686 = fadd fast float %7684, %7685
  %7687 = call float @dx.op.unary.f32(i32 24, float %7686)  ; Sqrt(value)
  br label %7688

; <label>:7688                                    ; preds = %7678, %7676, %7666
  %7689 = phi float [ %7675, %7666 ], [ %7687, %7678 ], [ 0.000000e+00, %7676 ]
  %7690 = and i1 %7634, %7632
  %7691 = fsub fast float -0.000000e+00, %7689
  %7692 = select i1 %7690, float -0.000000e+00, float %7691
  %7693 = fmul fast float %6052, 0x3FF7154760000000
  %7694 = fmul fast float %7693, %7692
  %7695 = fmul fast float %6053, 0x3FF7154760000000
  %7696 = fmul fast float %7695, %7692
  %7697 = fmul fast float %6054, 0x3FF7154760000000
  %7698 = fmul fast float %7697, %7692
  %7699 = call float @dx.op.unary.f32(i32 21, float %7694)  ; Exp(value)
  %7700 = call float @dx.op.unary.f32(i32 21, float %7696)  ; Exp(value)
  %7701 = call float @dx.op.unary.f32(i32 21, float %7698)  ; Exp(value)
  %7702 = call float @dx.op.unary.f32(i32 7, float %7699)  ; Saturate(value)
  %7703 = call float @dx.op.unary.f32(i32 7, float %7700)  ; Saturate(value)
  %7704 = call float @dx.op.unary.f32(i32 7, float %7701)  ; Saturate(value)
  %7705 = fmul fast float %7628, %7702
  %7706 = fmul fast float %7629, %7703
  %7707 = fmul fast float %7630, %7704
  %7708 = fsub fast float %7582, %6251
  %7709 = fsub fast float %7583, %6250
  %7710 = fsub fast float %7584, %6249
  %7711 = call float @dx.op.dot3.f32(i32 55, float %7708, float %7709, float %7710, float %7708, float %7709, float %7710)  ; Dot3(ax,ay,az,bx,by,bz)
  %7712 = call float @dx.op.unary.f32(i32 25, float %7711)  ; Rsqrt(value)
  %7713 = fmul fast float %7712, %7708
  %7714 = fmul fast float %7712, %7709
  %7715 = fmul fast float %7712, %7710
  %7716 = call float @dx.op.dot3.f32(i32 55, float %7582, float %7583, float %7584, float %6255, float %6256, float %6257)  ; Dot3(ax,ay,az,bx,by,bz)
  %7717 = call float @dx.op.dot3.f32(i32 55, float %6248, float %6247, float %6246, float %7713, float %7714, float %7715)  ; Dot3(ax,ay,az,bx,by,bz)
  %7718 = call float @dx.op.unary.f32(i32 7, float %7716)  ; Saturate(value)
  %7719 = fmul fast float %7718, %7589
  %7720 = fmul fast float %7718, %7718
  %7721 = fmul fast float %7720, %7242
  %7722 = call float @dx.op.unary.f32(i32 7, float %7721)  ; Saturate(value)
  %7723 = fmul fast float %7719, %7722
  %7724 = bitcast float %7579 to i32
  %7725 = ashr i32 %7724, 1
  %7726 = sub nsw i32 1597463007, %7725
  %7727 = bitcast i32 %7726 to float
  %7728 = fmul fast float %7727, %7576
  %7729 = fmul fast float %7727, %7577
  %7730 = fmul fast float %7727, %7578
  %7731 = fsub fast float %7728, %6251
  %7732 = fsub fast float %7729, %6250
  %7733 = fsub fast float %7730, %6249
  %7734 = call float @dx.op.dot3.f32(i32 55, float %7731, float %7732, float %7733, float %7731, float %7732, float %7733)  ; Dot3(ax,ay,az,bx,by,bz)
  %7735 = call float @dx.op.unary.f32(i32 25, float %7734)  ; Rsqrt(value)
  %7736 = fmul fast float %7731, %7735
  %7737 = fmul fast float %7732, %7735
  %7738 = fmul fast float %7733, %7735
  %7739 = call float @dx.op.dot3.f32(i32 55, float %6255, float %6256, float %6257, float %7736, float %7737, float %7738)  ; Dot3(ax,ay,az,bx,by,bz)
  %7740 = fmul fast float %7739, %7739
  %7741 = call float @dx.op.unary.f32(i32 6, float %7716)  ; FAbs(value)
  %7742 = fsub fast float 1.000000e+00, %6261
  %7743 = call float @dx.op.binary.f32(i32 35, float %7742, float 0x3F847AE140000000)  ; FMax(a,b)
  %7744 = fmul fast float %7743, %7743
  %7745 = fmul fast float %7744, %7744
  %7746 = fsub fast float 1.000000e+00, %7745
  %7747 = fmul fast float %6265, %6265
  %7748 = fmul fast float %7747, %7746
  %7749 = fadd fast float %7748, %7745
  %7750 = bitcast float %7749 to i32
  %7751 = ashr i32 %7750, 1
  %7752 = add nsw i32 %7751, 532487669
  %7753 = bitcast i32 %7752 to float
  %7754 = fadd fast float %7753, %6265
  %7755 = fmul fast float %7745, %7740
  %7756 = fsub fast float 1.000000e+00, %7740
  %7757 = fadd fast float %7756, %7755
  %7758 = fmul fast float %7741, %7741
  %7759 = fmul fast float %7758, %7746
  %7760 = fadd fast float %7759, %7745
  %7761 = bitcast float %7760 to i32
  %7762 = ashr i32 %7761, 1
  %7763 = add nsw i32 %7762, 532487669
  %7764 = bitcast i32 %7763 to float
  %7765 = fadd fast float %7764, %7741
  %7766 = fmul fast float %7757, %7757
  %7767 = fmul fast float %7766, %7754
  %7768 = fmul fast float %7767, %7765
  %7769 = fdiv fast float 1.000000e+00, %7768
  %7770 = bitcast float %7745 to i32
  %7771 = sitofp i32 %7770 to float
  %7772 = fmul fast float %7771, 0x3FE7F73180000000
  %7773 = fadd fast float %7772, 0x41AFE27C40000000
  %7774 = fptosi float %7773 to i32
  %7775 = bitcast i32 %7774 to float
  %7776 = fmul fast float %7562, 0x3FD80E9D60000000
  %7777 = fmul fast float %7776, %7727
  %7778 = fadd fast float %7775, %7777
  %7779 = bitcast float %7778 to i32
  %7780 = sub nsw i32 2129859010, %7779
  %7781 = bitcast i32 %7780 to float
  %7782 = fmul fast float %7745, %7769
  %7783 = fmul fast float %7782, %7775
  %7784 = fmul fast float %7783, %7781
  %7785 = call float @dx.op.unary.f32(i32 6, float %7717)  ; FAbs(value)
  %7786 = fsub fast float 1.000000e+00, %7785
  %7787 = bitcast float %7786 to i32
  %7788 = sitofp i32 %7787 to float
  %7789 = fmul fast float %7788, 5.000000e+00
  %7790 = fadd fast float %7789, 0xC1EFBF8940000000
  %7791 = fptosi float %7790 to i32
  %7792 = bitcast i32 %7791 to float
  %7793 = fsub fast float 1.000000e+00, %6252
  %7794 = fsub fast float 1.000000e+00, %6253
  %7795 = fsub fast float 1.000000e+00, %6263
  %7796 = fmul fast float %7792, %7793
  %7797 = fmul fast float %7792, %7794
  %7798 = fmul fast float %7792, %7795
  %7799 = fadd fast float %7796, %6252
  %7800 = fadd fast float %7797, %6253
  %7801 = fadd fast float %7798, %6263
  br i1 %7157, label %7802, label %7825

; <label>:7802                                    ; preds = %7688
  %7803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %5650, float %7785, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7804 = extractvalue %dx.types.ResRet.f32 %7803, 0
  %7805 = extractvalue %dx.types.ResRet.f32 %7803, 1
  %7806 = extractvalue %dx.types.ResRet.f32 %7803, 2
  %7807 = fadd fast float %7804, -5.000000e-01
  %7808 = fadd fast float %7805, -5.000000e-01
  %7809 = fadd fast float %7806, -5.000000e-01
  %7810 = fmul fast float %6252, 4.000000e+00
  %7811 = fmul fast float %7810, %7793
  %7812 = fmul fast float %7811, %7807
  %7813 = fmul fast float %6253, 4.000000e+00
  %7814 = fmul fast float %7813, %7794
  %7815 = fmul fast float %7814, %7808
  %7816 = fmul fast float %6263, 4.000000e+00
  %7817 = fmul fast float %7816, %7795
  %7818 = fmul fast float %7817, %7809
  %7819 = fadd fast float %7812, %7799
  %7820 = fadd fast float %7815, %7800
  %7821 = fadd fast float %7818, %7801
  %7822 = call float @dx.op.unary.f32(i32 7, float %7819)  ; Saturate(value)
  %7823 = call float @dx.op.unary.f32(i32 7, float %7820)  ; Saturate(value)
  %7824 = call float @dx.op.unary.f32(i32 7, float %7821)  ; Saturate(value)
  br label %7825

; <label>:7825                                    ; preds = %7802, %7688
  %7826 = phi float [ %7822, %7802 ], [ %7799, %7688 ]
  %7827 = phi float [ %7823, %7802 ], [ %7800, %7688 ]
  %7828 = phi float [ %7824, %7802 ], [ %7801, %7688 ]
  %7829 = fmul fast float %7716, 9.843750e-01
  %7830 = fadd fast float %7829, 7.812500e-03
  %7831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %45, float %7830, float %7147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7832 = extractvalue %dx.types.ResRet.f32 %7831, 2
  %7833 = extractvalue %dx.types.ResRet.f32 %7831, 3
  %7834 = fmul fast float %7832, %6252
  %7835 = fmul fast float %7832, %6253
  %7836 = fmul fast float %7832, %6263
  %7837 = fadd fast float %7834, %7833
  %7838 = fadd fast float %7835, %7833
  %7839 = fadd fast float %7836, %7833
  br i1 %7157, label %7840, label %7863

; <label>:7840                                    ; preds = %7825
  %7841 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %45, float %5650, float %7716, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7842 = extractvalue %dx.types.ResRet.f32 %7841, 0
  %7843 = extractvalue %dx.types.ResRet.f32 %7841, 1
  %7844 = extractvalue %dx.types.ResRet.f32 %7841, 2
  %7845 = fadd fast float %7842, -5.000000e-01
  %7846 = fadd fast float %7843, -5.000000e-01
  %7847 = fadd fast float %7844, -5.000000e-01
  %7848 = fmul fast float %6252, 4.000000e+00
  %7849 = fmul fast float %7848, %7793
  %7850 = fmul fast float %7849, %7845
  %7851 = fmul fast float %6253, 4.000000e+00
  %7852 = fmul fast float %7851, %7794
  %7853 = fmul fast float %7852, %7846
  %7854 = fmul fast float %6263, 4.000000e+00
  %7855 = fmul fast float %7854, %7795
  %7856 = fmul fast float %7855, %7847
  %7857 = fadd fast float %7850, %7837
  %7858 = fadd fast float %7853, %7838
  %7859 = fadd fast float %7856, %7839
  %7860 = call float @dx.op.unary.f32(i32 7, float %7857)  ; Saturate(value)
  %7861 = call float @dx.op.unary.f32(i32 7, float %7858)  ; Saturate(value)
  %7862 = call float @dx.op.unary.f32(i32 7, float %7859)  ; Saturate(value)
  br label %7863

; <label>:7863                                    ; preds = %7840, %7825
  %7864 = phi float [ %7860, %7840 ], [ %7837, %7825 ]
  %7865 = phi float [ %7861, %7840 ], [ %7838, %7825 ]
  %7866 = phi float [ %7862, %7840 ], [ %7839, %7825 ]
  %7867 = call float @dx.op.binary.f32(i32 35, float %7865, float %7866)  ; FMax(a,b)
  %7868 = call float @dx.op.binary.f32(i32 35, float %7864, float %7867)  ; FMax(a,b)
  %7869 = fsub fast float 1.000000e+00, %7868
  %7870 = fmul fast float %7826, %7784
  %7871 = fmul fast float %7827, %7784
  %7872 = fmul fast float %7828, %7784
  %7873 = fsub fast float 1.000000e+00, %7717
  %7874 = bitcast float %7873 to i32
  %7875 = sitofp i32 %7874 to float
  %7876 = fmul fast float %7875, 5.000000e+00
  %7877 = fadd fast float %7876, 0xC1EFBF8940000000
  %7878 = fptosi float %7877 to i32
  %7879 = bitcast i32 %7878 to float
  %7880 = fmul fast float %7879, %5651
  %7881 = fmul fast float %7869, %7880
  %7882 = fmul fast float %7881, %7207
  %7883 = fmul fast float %7881, %7208
  %7884 = fmul fast float %7881, %7209
  %7885 = fadd fast float %7882, %7870
  %7886 = fadd fast float %7883, %7871
  %7887 = fadd fast float %7884, %7872
  %7888 = fmul fast float %7705, %5647
  %7889 = fmul fast float %7888, %7723
  %7890 = fmul fast float %7889, %7869
  %7891 = fmul fast float %7706, %5647
  %7892 = fmul fast float %7891, %7723
  %7893 = fmul fast float %7892, %7869
  %7894 = fmul fast float %7707, %5647
  %7895 = fmul fast float %7894, %7723
  %7896 = fmul fast float %7895, %7869
  %7897 = fadd fast float %7890, %7544
  %7898 = fadd fast float %7893, %7545
  %7899 = fadd fast float %7896, %7546
  %7900 = fmul fast float %7889, %7885
  %7901 = fmul fast float %7892, %7886
  %7902 = fmul fast float %7895, %7887
  %7903 = fadd fast float %7900, %7541
  %7904 = fadd fast float %7901, %7542
  %7905 = fadd fast float %7902, %7543
  br label %7619

; <label>:7906                                    ; preds = %7619
  br label %7907

; <label>:7907                                    ; preds = %7906, %7507
  %7908 = phi float [ %7509, %7507 ], [ %7620, %7906 ]
  %7909 = phi float [ %7510, %7507 ], [ %7621, %7906 ]
  %7910 = phi float [ %7511, %7507 ], [ %7622, %7906 ]
  %7911 = phi float [ %7512, %7507 ], [ %7623, %7906 ]
  %7912 = phi float [ %7513, %7507 ], [ %7624, %7906 ]
  %7913 = phi float [ %7514, %7507 ], [ %7625, %7906 ]
  %7914 = add i32 %7508, 1
  %7915 = icmp ugt i32 %7914, %7504
  br i1 %7915, label %7916, label %7507

; <label>:7916                                    ; preds = %7907
  br label %7917

; <label>:7917                                    ; preds = %7916, %7483, %7473
  %7918 = phi float [ %7474, %7473 ], [ %7474, %7483 ], [ %7908, %7916 ]
  %7919 = phi float [ %7475, %7473 ], [ %7475, %7483 ], [ %7909, %7916 ]
  %7920 = phi float [ %7476, %7473 ], [ %7476, %7483 ], [ %7910, %7916 ]
  %7921 = phi float [ %7477, %7473 ], [ %7477, %7483 ], [ %7911, %7916 ]
  %7922 = phi float [ %7478, %7473 ], [ %7478, %7483 ], [ %7912, %7916 ]
  %7923 = phi float [ %7479, %7473 ], [ %7479, %7483 ], [ %7913, %7916 ]
  %7924 = call float @dx.op.unary.f32(i32 24, float %6258)  ; Sqrt(value)
  %7925 = call float @dx.op.unary.f32(i32 24, float %6259)  ; Sqrt(value)
  %7926 = call float @dx.op.unary.f32(i32 24, float %6260)  ; Sqrt(value)
  %7927 = fmul fast float %7924, %7921
  %7928 = fmul fast float %7925, %7922
  %7929 = extractvalue %dx.types.CBufRet.f32 %6879, 0
  br i1 %397, label %7930, label %7950

; <label>:7930                                    ; preds = %7917
  %7931 = fadd fast float %7923, %5653
  %7932 = fmul fast float %7931, %5654
  %7933 = fsub fast float 1.000000e+00, %5654
  %7934 = call float @dx.op.unary.f32(i32 7, float %7933)  ; Saturate(value)
  %7935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7936 = extractvalue %dx.types.CBufRet.f32 %7935, 3
  %7937 = fmul fast float %7936, %7934
  %7938 = fadd fast float %7937, %7932
  %7939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7940 = extractvalue %dx.types.CBufRet.f32 %7939, 0
  %7941 = fmul fast float %7940, %7213
  %7942 = fsub fast float %7938, %7941
  %7943 = fadd fast float %7928, %7927
  %7944 = fmul fast float %7929, %7943
  %7945 = extractvalue %dx.types.CBufRet.f32 %7935, 1
  %7946 = fsub fast float %7942, %7945
  %7947 = extractvalue %dx.types.CBufRet.f32 %7935, 2
  %7948 = fmul fast float %7946, %7947
  %7949 = call float @dx.op.unary.f32(i32 7, float %7948)  ; Saturate(value)
  br label %7966

; <label>:7950                                    ; preds = %7917
  %7951 = fmul fast float %7926, %7923
  %7952 = fmul fast float %7929, %7927
  %7953 = fmul fast float %7929, %7928
  %7954 = fmul fast float %7951, %7929
  %7955 = add i32 %49, 356
  %7956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %7955, i32 undef)  ; BufferLoad(srv,index,wot)
  %7957 = extractvalue %dx.types.ResRet.i32 %7956, 0
  %7958 = and i32 %7957, 32
  %7959 = icmp eq i32 %7958, 0
  br i1 %7959, label %7966, label %7960

; <label>:7960                                    ; preds = %7950
  %7961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %48, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7962 = extractvalue %dx.types.CBufRet.f32 %7961, 0
  %7963 = fmul fast float %7962, 0x3FE99999A0000000
  %7964 = fadd fast float %7962, %7952
  %7965 = fadd fast float %7963, %7954
  br label %7966

; <label>:7966                                    ; preds = %7960, %7950, %7930
  %7967 = phi float [ %7944, %7930 ], [ %7964, %7960 ], [ %7952, %7950 ]
  %7968 = phi float [ %7949, %7930 ], [ %7953, %7960 ], [ %7953, %7950 ]
  %7969 = phi float [ 1.000000e+00, %7930 ], [ %7965, %7960 ], [ %7954, %7950 ]
  %7970 = fmul fast float %7929, %7919
  %7971 = fmul fast float %7929, %7920
  %7972 = fadd fast float %7919, %7918
  %7973 = select i1 %397, float %7972, float %7918
  %7974 = fmul float %7973, %7929
  %7975 = select i1 %397, float 0.000000e+00, float %7970
  %7976 = select i1 %397, float 0.000000e+00, float %7971
  %7977 = fmul fast float %7967, %7924
  %7978 = fmul fast float %7968, %7925
  %7979 = fmul fast float %7969, %7926
  %7980 = fadd fast float %7974, %7977
  %7981 = fadd fast float %7975, %7978
  %7982 = fadd fast float %7976, %7979
  %7983 = select i1 %397, float %7968, float %7981
  %7984 = select i1 %397, float %7969, float %7982
  %7985 = call float @dx.op.binary.f32(i32 36, float %7980, float 3.225500e+04)  ; FMin(a,b)
  %7986 = call float @dx.op.binary.f32(i32 36, float %7983, float 3.225500e+04)  ; FMin(a,b)
  %7987 = call float @dx.op.binary.f32(i32 36, float %7984, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7985)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7986)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7987)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.viewIdState = !{!63}
!dx.entryPoints = !{!64}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !53, !56}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 65, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 66, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 67, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 2, i32 68, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 64, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 38, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 39, i32 1, i32 11, i32 0, null}
!19 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 40, i32 1, i32 11, i32 0, null}
!20 = !{i32 12, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 41, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 42, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!24 = !{i32 16, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!25 = !{i32 17, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !16}
!28 = !{i32 20, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !16}
!30 = !{i32 22, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!48 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!49 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!50 = !{i32 42, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!51 = !{i32 43, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!52 = !{i32 44, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!53 = !{!54, !55}
!54 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!55 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!56 = !{!57, !58, !59, !60, !61, !62}
!57 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!58 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!59 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!60 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!61 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!62 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!63 = !{[34 x i32] [i32 32, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!64 = !{void ()* @ps_main, !"ps_main", !65, !4, !85}
!65 = !{!66, !83, null}
!66 = !{!67, !70, !72, !74, !76, !78, !79, !80, !82}
!67 = !{i32 0, !"SV_Position", i8 9, i8 3, !68, i8 4, i32 1, i8 4, i32 0, i8 0, !69}
!68 = !{i32 0}
!69 = !{i32 3, i32 11}
!70 = !{i32 1, !"COLOR", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 1, i8 0, !71}
!71 = !{i32 3, i32 14}
!72 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 2, i8 0, !73}
!73 = !{i32 3, i32 3}
!74 = !{i32 3, !"NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 3, i32 3, i8 0, !75}
!75 = !{i32 3, i32 7}
!76 = !{i32 4, !"TANGENT", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 4, i8 0, !77}
!77 = !{i32 3, i32 15}
!78 = !{i32 5, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !68, i8 2, i32 1, i8 2, i32 5, i8 0, !73}
!79 = !{i32 6, !"SCEONDARY_NORMAL", i8 9, i8 0, !68, i8 2, i32 1, i8 4, i32 6, i8 0, !77}
!80 = !{i32 7, !"PACKED_TRI_DATA", i8 5, i8 0, !68, i8 1, i32 1, i8 4, i32 7, i8 0, !81}
!81 = !{i32 3, i32 13}
!82 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !68, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!83 = !{!84}
!84 = !{i32 0, !"SV_Target", i8 9, i8 16, !68, i8 0, i32 1, i8 4, i32 0, i8 0, !77}
!85 = !{i32 0, i64 24}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = !{!93, !93, i64 0}
!93 = !{!"float", !94, i64 0}
!94 = !{!"omnipotent char", !95, i64 0}
!95 = !{!"Simple C/C++ TBAA"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"\01?VT_SkirtBlendMaterial@@YA?AUVTMaterialData@@V?$vector@M$02@@0V?$vector@M$01@@MU1@2@Z: %agg.result"}
!98 = distinct !{!98, !"\01?VT_SkirtBlendMaterial@@YA?AUVTMaterialData@@V?$vector@M$02@@0V?$vector@M$01@@MU1@2@Z"}
!99 = distinct !{!99, !"dx.controlflow.hints", i32 1}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}

