;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; LOCAL_HEIGHT             0      w        3     NONE   float      w
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          5     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        6     NONE   float   xyzw
; TINT_COLOR               0   xyz         7     NONE   float   xyz 
; PACKED_TRI_DATA          0   xyzw        8     NONE    uint   x zw
; SV_IsFrontFace           0   x           9    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: ac14be98ee53de9818e3ce6f96cc6442
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
; TINT_COLOR               0                 linear       
; LOCAL_HEIGHT             0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
; SV_IsFrontFace           0        nointerpolation       
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
;   [208 x i8] (type annotation not present)
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
;                                   texture     f32          2d     T28     t58,space2     1
;                                   texture     f32          2d     T29     t59,space2     1
;                                   texture     f32          2d     T30     t60,space2     1
;                                   texture    byte         r/o     T31     t45,space1     1
;                                   texture    byte         r/o     T32     t46,space1     1
;                                   texture    byte         r/o     T33     t47,space1     1
;                                   texture    byte         r/o     T34     t48,space1     1
;                                   texture     f32          2d     T35     t57,space2     1
;                                   texture    byte         r/o     T36     t69,space1     1
;                                   texture    byte         r/o     T37     t10,space1     1
;                                   texture    byte         r/o     T38     t68,space1     1
;                                   texture     f32          2d     T39      t0,space2     1
;                                   texture    byte         r/o     T40     t11,space1     1
;                                   texture    byte         r/o     T41     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 37, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 32, 34, 35, 36 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 41, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 40, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 42, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 41, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 67, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 65, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %45 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = icmp ne i32 %46, 0
  %48 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %76 = alloca [4 x i32], align 4
  %77 = alloca [4 x i32], align 4
  %78 = alloca [4 x i32], align 4
  %79 = alloca [4 x i32], align 4
  %80 = alloca [4 x i32], align 4
  %81 = alloca [4 x i32], align 4
  %82 = alloca [4 x i32], align 4
  %83 = alloca [4 x i32], align 4
  %84 = alloca [4 x i32], align 4
  %85 = alloca [4 x i32], align 4
  %86 = alloca [4 x float], align 4
  %87 = alloca [4 x float], align 4
  %88 = alloca [4 x float], align 4
  %89 = alloca [4 x float], align 4
  %90 = alloca [4 x float], align 4
  %91 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %92 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = fmul fast float %94, %73
  %96 = fmul fast float %94, %74
  %97 = select i1 %47, float 1.000000e+00, float -1.000000e+00
  %98 = call float @dx.op.dot3.f32(i32 55, float %65, float %66, float %67, float %65, float %66, float %67)  ; Dot3(ax,ay,az,bx,by,bz)
  %99 = bitcast float %98 to i32
  %100 = ashr i32 %99, 1
  %101 = sub nsw i32 1597250115, %100
  %102 = bitcast i32 %101 to float
  %103 = fmul fast float %65, %97
  %104 = fmul fast float %103, %102
  %105 = fmul fast float %66, %97
  %106 = fmul fast float %105, %102
  %107 = fmul fast float %67, %97
  %108 = fmul fast float %107, %102
  %109 = fmul fast float %66, %63
  %110 = fmul fast float %67, %62
  %111 = fsub fast float %109, %110
  %112 = fmul fast float %67, %61
  %113 = fmul fast float %65, %63
  %114 = fsub fast float %112, %113
  %115 = fmul fast float %65, %62
  %116 = fmul fast float %66, %61
  %117 = fsub fast float %115, %116
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %121 = fmul fast float %95, 2.000000e+00
  %122 = fmul fast float %121, %119
  %123 = fmul fast float %96, 2.000000e+00
  %124 = fmul fast float %123, %120
  %125 = fsub fast float 1.000000e+00, %122
  %126 = fsub fast float 1.000000e+00, %124
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %125, %128
  %132 = fmul fast float %125, %129
  %133 = fmul fast float %125, %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fmul fast float %126, %135
  %139 = fmul fast float %126, %136
  %140 = fmul fast float %126, %137
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %145 = fadd fast float %138, %142
  %146 = fadd fast float %145, %131
  %147 = fadd fast float %139, %143
  %148 = fadd fast float %147, %132
  %149 = fadd fast float %140, %144
  %150 = fadd fast float %149, %133
  %151 = fmul fast float %146, %75
  %152 = fmul fast float %148, %75
  %153 = fmul fast float %150, %75
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 3
  %156 = and i32 %155, 1
  %157 = icmp ne i32 %156, 0
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 3
  br i1 %157, label %162, label %353, !dx.controlflow.hints !87

; <label>:162                                     ; preds = %0
  %163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.i32 %163, 2
  %165 = uitofp i32 %164 to float
  %166 = extractvalue %dx.types.CBufRet.i32 %154, 0
  %167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.f32 %167, 0
  %169 = extractvalue %dx.types.CBufRet.f32 %167, 1
  %170 = fadd fast float %168, %151
  %171 = fadd fast float %169, %152
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  %174 = extractvalue %dx.types.CBufRet.f32 %172, 1
  %175 = fsub fast float %170, %173
  %176 = fsub fast float %171, %174
  %177 = fptoui float %165 to i32
  %178 = uitofp i32 %166 to float
  %179 = fptosi float %178 to i32
  %180 = fmul fast float %175, 0x3F3A027520000000
  %181 = fmul fast float %176, 0x3F3A027520000000
  %182 = add nsw i32 %179, -1
  %183 = fptosi float %181 to i32
  %184 = call i32 @dx.op.binary.i32(i32 37, i32 %183, i32 0)  ; IMax(a,b)
  %185 = call i32 @dx.op.binary.i32(i32 38, i32 %184, i32 %182)  ; IMin(a,b)
  %186 = fptosi float %180 to i32
  %187 = call i32 @dx.op.binary.i32(i32 37, i32 %186, i32 0)  ; IMax(a,b)
  %188 = call i32 @dx.op.binary.i32(i32 38, i32 %187, i32 %182)  ; IMin(a,b)
  %189 = mul nsw i32 %185, %179
  %190 = add nsw i32 %188, %189
  %191 = sdiv i32 %190, 4
  %192 = shl nsw i32 %191, 2
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = srem i32 %190, 4
  %196 = shl nsw i32 %195, 3
  %197 = and i32 %196, 24
  %198 = lshr i32 %194, %197
  %199 = and i32 %198, 255
  %200 = mul nuw nsw i32 %199, 12
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = extractvalue %dx.types.ResRet.f32 %201, 1
  %204 = extractvalue %dx.types.ResRet.f32 %201, 2
  %205 = fsub fast float %175, %202
  %206 = fsub fast float %176, %203
  %207 = fdiv fast float %205, %204
  %208 = fdiv fast float %206, %204
  %209 = fmul fast float %161, 2.500000e+01
  %210 = extractvalue %dx.types.CBufRet.i32 %163, 1
  %211 = uitofp i32 %210 to float
  %212 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.i32 %212, 1
  %214 = extractvalue %dx.types.CBufRet.i32 %163, 0
  %215 = mul i32 %214, %213
  %216 = uitofp i32 %215 to float
  %217 = uitofp i32 %177 to float
  %218 = shl nuw nsw i32 %199, 3
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = extractvalue %dx.types.ResRet.i32 %219, 1
  %222 = lshr i32 %221, 16
  %223 = and i32 %222, 1
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %230

; <label>:225                                     ; preds = %162
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = extractvalue %dx.types.ResRet.i32 %226, 1
  %229 = lshr i32 %228, 16
  br label %230

; <label>:230                                     ; preds = %225, %162
  %231 = phi i32 [ 0, %225 ], [ %199, %162 ]
  %232 = phi i32 [ %227, %225 ], [ %220, %162 ]
  %233 = phi i32 [ %228, %225 ], [ %221, %162 ]
  %234 = phi i32 [ %229, %225 ], [ %222, %162 ]
  %235 = and i32 %233, 65535
  %236 = lshr i32 %232, 16
  %237 = and i32 %232, 65535
  %238 = lshr i32 %234, 1
  %239 = uitofp i32 %238 to float
  %240 = icmp eq i32 %231, 0
  %241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %242 = extractvalue %dx.types.CBufRet.f32 %241, 2
  %243 = bitcast float %242 to i32
  %244 = fdiv fast float %175, %161
  %245 = fdiv fast float %176, %161
  %246 = fptoui float %217 to i32
  %247 = fmul fast float %244, %209
  %248 = fmul fast float %245, %209
  %249 = extractvalue %dx.types.CBufRet.i32 %212, 3
  %250 = and i32 %249, 2
  %251 = icmp ne i32 %250, 0
  %252 = select i1 %251, float 5.000000e-01, float 1.000000e+00
  %253 = call float @dx.op.unary.f32(i32 83, float %247)  ; DerivCoarseX(value)
  %254 = call float @dx.op.unary.f32(i32 83, float %248)  ; DerivCoarseX(value)
  %255 = fmul fast float %252, %253
  %256 = fmul fast float %252, %254
  %257 = call float @dx.op.unary.f32(i32 84, float %247)  ; DerivCoarseY(value)
  %258 = call float @dx.op.unary.f32(i32 84, float %248)  ; DerivCoarseY(value)
  %259 = fmul fast float %252, %257
  %260 = fmul fast float %258, %252
  %261 = call float @dx.op.dot2.f32(i32 54, float %255, float %256, float %255, float %256)  ; Dot2(ax,ay,bx,by)
  %262 = call float @dx.op.dot2.f32(i32 54, float %259, float %260, float %259, float %260)  ; Dot2(ax,ay,bx,by)
  %263 = call float @dx.op.binary.f32(i32 35, float %261, float %262)  ; FMax(a,b)
  %264 = call float @dx.op.unary.f32(i32 23, float %263)  ; Log(value)
  %265 = fmul fast float %264, 5.000000e-01
  %266 = call float @dx.op.binary.f32(i32 36, float %261, float %262)  ; FMin(a,b)
  %267 = call float @dx.op.unary.f32(i32 23, float %266)  ; Log(value)
  %268 = uitofp i32 %246 to float
  %269 = fsub fast float %264, %267
  %270 = fmul fast float %269, 5.000000e-01
  %271 = call float @dx.op.binary.f32(i32 36, float %270, float %268)  ; FMin(a,b)
  %272 = fmul fast float %271, %159
  %273 = fsub fast float %265, %272
  %274 = call float @dx.op.binary.f32(i32 35, float %273, float 0.000000e+00)  ; FMax(a,b)
  %275 = call float @dx.op.binary.f32(i32 36, float %274, float 2.400000e+01)  ; FMin(a,b)
  %276 = select i1 %240, float %244, float %207
  %277 = select i1 %240, float %245, float %208
  %278 = call float @dx.op.unary.f32(i32 27, float %275)  ; Round_ni(value)
  %279 = fptosi float %278 to i32
  %280 = sub nsw i32 8, %235
  %281 = select i1 %240, i32 %243, i32 %280
  %282 = sub nsw i32 %279, %281
  %283 = call i32 @dx.op.binary.i32(i32 37, i32 %282, i32 0)  ; IMax(a,b)
  %284 = call i32 @dx.op.binary.i32(i32 38, i32 %283, i32 %235)  ; IMin(a,b)
  %285 = fptoui float %239 to i32
  %286 = and i32 %284, 31
  %287 = lshr i32 %285, %286
  %288 = add i32 %287, -1
  %289 = uitofp i32 %288 to float
  %290 = uitofp i32 %287 to float
  %291 = fmul fast float %290, %276
  %292 = fmul fast float %290, %277
  %293 = call float @dx.op.unary.f32(i32 27, float %291)  ; Round_ni(value)
  %294 = call float @dx.op.unary.f32(i32 27, float %292)  ; Round_ni(value)
  %295 = call float @dx.op.binary.f32(i32 35, float %293, float 0.000000e+00)  ; FMax(a,b)
  %296 = call float @dx.op.binary.f32(i32 35, float %294, float 0.000000e+00)  ; FMax(a,b)
  %297 = call float @dx.op.binary.f32(i32 36, float %295, float %289)  ; FMin(a,b)
  %298 = call float @dx.op.binary.f32(i32 36, float %296, float %289)  ; FMin(a,b)
  %299 = fptoui float %297 to i32
  %300 = fptoui float %298 to i32
  %301 = lshr i32 %237, %286
  %302 = lshr i32 %236, %286
  %303 = add i32 %299, %301
  %304 = add i32 %300, %302
  %305 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %34, i32 %284, i32 %303, i32 %304, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = lshr i32 %306, 8
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = lshr i32 %306, 16
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fptoui float %314 to i32
  %316 = lshr i32 %306, 24
  %317 = uitofp i32 %316 to float
  %318 = fadd fast float %317, 1.000000e+00
  %319 = fptoui float %318 to i32
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, %276
  %322 = fmul fast float %320, %277
  %323 = add i32 %319, -1
  %324 = uitofp i32 %323 to float
  %325 = call float @dx.op.unary.f32(i32 27, float %321)  ; Round_ni(value)
  %326 = call float @dx.op.unary.f32(i32 27, float %322)  ; Round_ni(value)
  %327 = call float @dx.op.binary.f32(i32 35, float %325, float 0.000000e+00)  ; FMax(a,b)
  %328 = call float @dx.op.binary.f32(i32 35, float %326, float 0.000000e+00)  ; FMax(a,b)
  %329 = call float @dx.op.binary.f32(i32 36, float %327, float %324)  ; FMin(a,b)
  %330 = call float @dx.op.binary.f32(i32 36, float %328, float %324)  ; FMin(a,b)
  %331 = fsub fast float %321, %329
  %332 = fsub fast float %322, %330
  %333 = fadd fast float %211, 8.000000e+00
  %334 = fmul fast float %308, %333
  %335 = fmul fast float %311, %333
  %336 = fmul fast float %331, %211
  %337 = fmul fast float %332, %211
  %338 = fadd fast float %334, 4.500000e+00
  %339 = fadd fast float %338, %336
  %340 = fadd fast float %335, 4.500000e+00
  %341 = fadd fast float %340, %337
  %342 = fdiv fast float %339, %216
  %343 = fdiv fast float %341, %216
  %344 = and i32 %315, 31
  %345 = shl i32 1, %344
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, %216
  %348 = fdiv fast float 1.000000e+00, %347
  %349 = fmul fast float %348, %255
  %350 = fmul fast float %348, %256
  %351 = fmul fast float %348, %259
  %352 = fmul fast float %348, %260
  br label %353

; <label>:353                                     ; preds = %230, %0
  %354 = phi float [ %351, %230 ], [ 0.000000e+00, %0 ]
  %355 = phi float [ %352, %230 ], [ 0.000000e+00, %0 ]
  %356 = phi float [ %349, %230 ], [ 0.000000e+00, %0 ]
  %357 = phi float [ %350, %230 ], [ 0.000000e+00, %0 ]
  %358 = phi float [ %342, %230 ], [ 0.000000e+00, %0 ]
  %359 = phi float [ %343, %230 ], [ 0.000000e+00, %0 ]
  %360 = phi float [ %175, %230 ], [ 0.000000e+00, %0 ]
  %361 = phi float [ %176, %230 ], [ 0.000000e+00, %0 ]
  %362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %363 = extractvalue %dx.types.CBufRet.f32 %362, 2
  %364 = extractvalue %dx.types.CBufRet.f32 %362, 3
  %365 = fmul fast float %363, %95
  %366 = fmul fast float %364, %96
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 114688
  %370 = icmp ne i32 %369, 0
  %371 = select i1 %370, float %365, float 0.000000e+00
  %372 = select i1 %370, float %366, float 0.000000e+00
  %373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %43, float %371, float %372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %374 = extractvalue %dx.types.ResRet.f32 %373, 0
  %375 = fmul fast float %374, 2.550000e+02
  %376 = fptoui float %375 to i32
  %377 = select i1 %370, i32 %376, i32 0
  %378 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %380 = extractvalue %dx.types.CBufRet.i32 %379, 3
  %381 = and i32 %380, 3
  %382 = icmp ne i32 %381, 0
  %383 = and i32 %380, 4
  %384 = icmp ne i32 %383, 0
  %385 = and i1 %382, %384
  br i1 %385, label %386, label %397

; <label>:386                                     ; preds = %353
  %387 = extractvalue %dx.types.CBufRet.f32 %378, 3
  %388 = fmul fast float %387, %96
  %389 = extractvalue %dx.types.CBufRet.f32 %378, 2
  %390 = fmul fast float %389, %95
  %391 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %42, float %390, float %388, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %392 = extractvalue %dx.types.ResRet.f32 %391, 0
  %393 = fsub fast float 1.000000e+00, %392
  %394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %395 = extractvalue %dx.types.CBufRet.f32 %394, 0
  %396 = fcmp fast olt float %393, %395
  br label %400

; <label>:397                                     ; preds = %353
  %398 = icmp eq i32 %383, 0
  %399 = and i1 %382, %398
  br label %400

; <label>:400                                     ; preds = %397, %386
  %401 = phi i1 [ %396, %386 ], [ %399, %397 ]
  %402 = add i32 %48, 156
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = shl i32 %404, 4
  %406 = and i32 %405, 32752
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = lshr i32 %404, 7
  %409 = and i32 %408, 32752
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = lshr i32 %404, 22
  %412 = shl nuw nsw i32 %411, 5
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = add i32 %48, 216
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 255
  %418 = uitofp i32 %417 to float
  %419 = fmul fast float %418, 0x3F70101020000000
  %420 = lshr i32 %416, 8
  %421 = and i32 %420, 255
  %422 = uitofp i32 %421 to float
  %423 = fmul fast float %422, 0x3F70101020000000
  %424 = lshr i32 %416, 16
  %425 = and i32 %424, 255
  %426 = uitofp i32 %425 to float
  %427 = fmul fast float %426, 0x3F70101020000000
  %428 = add i32 %48, 36
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = add i32 %48, 288
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = and i32 %437, 65535
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = lshr i32 %437, 16
  %441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %440)  ; LegacyF16ToF32(value)
  %442 = fmul fast float %439, 0x3F50624DE0000000
  %443 = fmul fast float %441, 0x3F50624DE0000000
  %444 = add i32 %48, 172
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = shl i32 %446, 4
  %448 = and i32 %447, 32752
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = lshr i32 %446, 7
  %451 = and i32 %450, 32752
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = lshr i32 %446, 22
  %454 = shl nuw nsw i32 %453, 5
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = add i32 %48, 232
  %457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %458 = extractvalue %dx.types.ResRet.i32 %457, 0
  %459 = and i32 %458, 255
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = lshr i32 %458, 8
  %463 = and i32 %462, 255
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = lshr i32 %458, 16
  %467 = and i32 %466, 255
  %468 = uitofp i32 %467 to float
  %469 = fmul fast float %468, 0x3F70101020000000
  %470 = add i32 %48, 52
  %471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %470, i32 undef)  ; BufferLoad(srv,index,wot)
  %472 = extractvalue %dx.types.ResRet.i32 %471, 0
  %473 = and i32 %472, 65535
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %472, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = add i32 %48, 304
  %478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %477, i32 undef)  ; BufferLoad(srv,index,wot)
  %479 = extractvalue %dx.types.ResRet.i32 %478, 0
  %480 = and i32 %479, 65535
  %481 = call float @dx.op.legacyF16ToF32(i32 131, i32 %480)  ; LegacyF16ToF32(value)
  %482 = lshr i32 %479, 16
  %483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %482)  ; LegacyF16ToF32(value)
  %484 = fmul fast float %481, 0x3F50624DE0000000
  %485 = fmul fast float %483, 0x3F50624DE0000000
  %486 = add i32 %48, 188
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = shl i32 %488, 4
  %490 = and i32 %489, 32752
  %491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %490)  ; LegacyF16ToF32(value)
  %492 = lshr i32 %488, 7
  %493 = and i32 %492, 32752
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = lshr i32 %488, 22
  %496 = shl nuw nsw i32 %495, 5
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = add i32 %48, 248
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = and i32 %500, 255
  %502 = uitofp i32 %501 to float
  %503 = fmul fast float %502, 0x3F70101020000000
  %504 = lshr i32 %500, 8
  %505 = and i32 %504, 255
  %506 = uitofp i32 %505 to float
  %507 = fmul fast float %506, 0x3F70101020000000
  %508 = lshr i32 %500, 16
  %509 = and i32 %508, 255
  %510 = uitofp i32 %509 to float
  %511 = fmul fast float %510, 0x3F70101020000000
  %512 = add i32 %48, 68
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 65535
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = lshr i32 %514, 16
  %518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %517)  ; LegacyF16ToF32(value)
  %519 = add i32 %48, 320
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %519, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 65535
  %523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %522)  ; LegacyF16ToF32(value)
  %524 = lshr i32 %521, 16
  %525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %524)  ; LegacyF16ToF32(value)
  %526 = fmul fast float %523, 0x3F50624DE0000000
  %527 = fmul fast float %525, 0x3F50624DE0000000
  %528 = add i32 %48, 204
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = shl i32 %530, 4
  %532 = and i32 %531, 32752
  %533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %532)  ; LegacyF16ToF32(value)
  %534 = lshr i32 %530, 7
  %535 = and i32 %534, 32752
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %530, 22
  %538 = shl nuw nsw i32 %537, 5
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = add i32 %48, 264
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 255
  %544 = uitofp i32 %543 to float
  %545 = fmul fast float %544, 0x3F70101020000000
  %546 = lshr i32 %542, 8
  %547 = and i32 %546, 255
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %548, 0x3F70101020000000
  %550 = lshr i32 %542, 16
  %551 = and i32 %550, 255
  %552 = uitofp i32 %551 to float
  %553 = fmul fast float %552, 0x3F70101020000000
  %554 = add i32 %48, 84
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 65535
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = lshr i32 %556, 16
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = add i32 %48, 336
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = and i32 %563, 65535
  %565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %564)  ; LegacyF16ToF32(value)
  %566 = lshr i32 %563, 16
  %567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %566)  ; LegacyF16ToF32(value)
  %568 = fmul fast float %565, 0x3F50624DE0000000
  %569 = fmul fast float %567, 0x3F50624DE0000000
  %570 = add i32 %48, 348
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = and i32 %572, 32
  %574 = icmp eq i32 %573, 0
  %575 = and i32 %572, 64
  %576 = icmp eq i32 %575, 0
  %577 = and i32 %572, 128
  %578 = icmp eq i32 %577, 0
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 2
  %582 = icmp eq i32 %581, 0
  br i1 %582, label %596, label %583

; <label>:583                                     ; preds = %400
  %584 = add i32 %48, 568
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = add i32 %586, 0
  %588 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %587, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %589 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %588, %dx.types.Handle %92, float %68, float %69, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %590 = extractvalue %dx.types.ResRet.f32 %589, 0
  %591 = extractvalue %dx.types.ResRet.f32 %589, 1
  %592 = extractvalue %dx.types.ResRet.f32 %589, 2
  %593 = fmul fast float %590, %70
  %594 = fmul fast float %591, %71
  %595 = fmul fast float %592, %72
  br label %596

; <label>:596                                     ; preds = %583, %400
  %597 = phi float [ %72, %400 ], [ %595, %583 ]
  %598 = phi float [ %71, %400 ], [ %594, %583 ]
  %599 = phi float [ %70, %400 ], [ %593, %583 ]
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = and i32 %601, 2
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %623, label %604

; <label>:604                                     ; preds = %596
  %605 = add i32 %48, 44
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = and i32 %607, 1
  %609 = icmp ne i32 %608, 0
  %610 = select i1 %609, float %599, float 1.000000e+00
  %611 = add i32 %48, 60
  %612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %611, i32 undef)  ; BufferLoad(srv,index,wot)
  %613 = extractvalue %dx.types.ResRet.i32 %612, 0
  %614 = and i32 %613, 1
  %615 = icmp ne i32 %614, 0
  %616 = select i1 %615, float %598, float 1.000000e+00
  %617 = add i32 %48, 76
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = and i32 %619, 1
  %621 = icmp ne i32 %620, 0
  %622 = select i1 %621, float %597, float 1.000000e+00
  br label %623

; <label>:623                                     ; preds = %604, %596
  %624 = phi float [ %597, %596 ], [ %622, %604 ]
  %625 = phi float [ %598, %596 ], [ %616, %604 ]
  %626 = phi float [ %599, %596 ], [ %610, %604 ]
  %627 = lshr i32 %601, 20
  %628 = and i32 %627, 3
  %629 = add nuw nsw i32 %628, 1
  %630 = add i32 %48, 24
  %631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %632 = extractvalue %dx.types.ResRet.i32 %631, 0
  %633 = add i32 %48, 28
  %634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %633, i32 undef)  ; BufferLoad(srv,index,wot)
  %635 = extractvalue %dx.types.ResRet.i32 %634, 0
  %636 = or i32 %635, %632
  %637 = icmp eq i32 %636, 0
  br i1 %637, label %1149, label %638

; <label>:638                                     ; preds = %623
  %639 = and i32 %632, 262144
  %640 = icmp ne i32 %639, 0
  %641 = select i1 %640, float %55, float 1.000000e+00
  %642 = select i1 %640, float %56, float 0.000000e+00
  %643 = select i1 %640, float %57, float 0.000000e+00
  %644 = select i1 %640, float %58, float 1.000000e+00
  %645 = select i1 %640, float %59, float %68
  %646 = select i1 %640, float %60, float %69
  %647 = add i32 %48, 284
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = lshr i32 %649, 16
  %651 = call float @dx.op.legacyF16ToF32(i32 131, i32 %650)  ; LegacyF16ToF32(value)
  %652 = fmul fast float %651, 0x3F50624DE0000000
  %653 = add i32 %48, 88
  %654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %653, i32 undef)  ; BufferLoad(srv,index,wot)
  %655 = extractvalue %dx.types.ResRet.i32 %654, 0
  %656 = lshr i32 %655, 16
  %657 = and i32 %656, 255
  %658 = lshr i32 %655, 24
  %659 = add i32 %48, 292
  %660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %659, i32 undef)  ; BufferLoad(srv,index,wot)
  %661 = extractvalue %dx.types.ResRet.i32 %660, 0
  %662 = and i32 %661, 65535
  %663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %662)  ; LegacyF16ToF32(value)
  %664 = lshr i32 %661, 16
  %665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %664)  ; LegacyF16ToF32(value)
  %666 = add i32 %48, 32
  %667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %666, i32 undef)  ; BufferLoad(srv,index,wot)
  %668 = extractvalue %dx.types.ResRet.i32 %667, 0
  %669 = lshr i32 %668, 22
  %670 = shl nuw nsw i32 %669, 5
  %671 = call float @dx.op.legacyF16ToF32(i32 131, i32 %670)  ; LegacyF16ToF32(value)
  %672 = shl i32 %668, 4
  %673 = and i32 %672, 32752
  %674 = call float @dx.op.legacyF16ToF32(i32 131, i32 %673)  ; LegacyF16ToF32(value)
  %675 = lshr i32 %668, 7
  %676 = and i32 %675, 32752
  %677 = call float @dx.op.legacyF16ToF32(i32 131, i32 %676)  ; LegacyF16ToF32(value)
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 3
  %680 = fmul fast float %679, 1.000000e+03
  %681 = fmul fast float %442, %680
  %682 = call float @dx.op.unary.f32(i32 22, float %681)  ; Frc(value)
  %683 = fadd fast float %682, %432
  %684 = fmul fast float %443, %680
  %685 = call float @dx.op.unary.f32(i32 22, float %684)  ; Frc(value)
  %686 = fadd fast float %685, %434
  %687 = fmul fast float %652, %680
  %688 = call float @dx.op.unary.f32(i32 22, float %687)  ; Frc(value)
  %689 = fmul fast float %688, 0x401921FB60000000
  %690 = fadd fast float %689, %671
  %691 = call float @dx.op.unary.f32(i32 13, float %690)  ; Sin(value)
  %692 = call float @dx.op.unary.f32(i32 12, float %690)  ; Cos(value)
  %693 = fsub fast float -0.000000e+00, %691
  %694 = fadd fast float %645, -5.000000e-01
  %695 = fadd fast float %646, -5.000000e-01
  %696 = fmul fast float %663, %694
  %697 = fmul fast float %665, %695
  %698 = fadd fast float %696, 5.000000e-01
  %699 = fadd fast float %697, 5.000000e-01
  %700 = fmul fast float %674, %698
  %701 = fmul fast float %677, %699
  %702 = fmul fast float %692, %700
  %703 = call float @dx.op.tertiary.f32(i32 46, float %693, float %701, float %702)  ; FMad(a,b,c)
  %704 = fmul fast float %691, %700
  %705 = call float @dx.op.tertiary.f32(i32 46, float %692, float %701, float %704)  ; FMad(a,b,c)
  %706 = fadd fast float %683, %703
  %707 = fadd fast float %686, %705
  %708 = icmp ugt i32 %657, 1
  %709 = icmp ugt i32 %655, 33554431
  %710 = or i1 %709, %708
  br i1 %710, label %711, label %736

; <label>:711                                     ; preds = %638
  %712 = add i32 %48, 228
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = lshr i32 %714, 16
  %716 = call float @dx.op.legacyF16ToF32(i32 131, i32 %715)  ; LegacyF16ToF32(value)
  %717 = fmul fast float %679, %716
  %718 = call float @dx.op.unary.f32(i32 22, float %717)  ; Frc(value)
  %719 = mul nuw nsw i32 %657, %658
  %720 = uitofp i32 %719 to float
  %721 = fmul fast float %718, %720
  %722 = call float @dx.op.unary.f32(i32 27, float %721)  ; Round_ni(value)
  %723 = fptoui float %722 to i32
  %724 = urem i32 %723, %657
  %725 = udiv i32 %723, %658
  %726 = call float @dx.op.unary.f32(i32 22, float %706)  ; Frc(value)
  %727 = call float @dx.op.unary.f32(i32 22, float %707)  ; Frc(value)
  %728 = uitofp i32 %724 to float
  %729 = uitofp i32 %725 to float
  %730 = fadd fast float %726, %728
  %731 = fadd fast float %727, %729
  %732 = uitofp i32 %657 to float
  %733 = uitofp i32 %658 to float
  %734 = fdiv fast float %730, %732
  %735 = fdiv fast float %731, %733
  br label %736

; <label>:736                                     ; preds = %711, %638
  %737 = phi float [ %734, %711 ], [ %706, %638 ]
  %738 = phi float [ %735, %711 ], [ %707, %638 ]
  %739 = and i32 %632, 16
  %740 = icmp eq i32 %739, 0
  br i1 %740, label %937, label %741

; <label>:741                                     ; preds = %736
  %742 = add i32 %48, 456
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = add i32 %744, 0
  %746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %745, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %747 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %746, %dx.types.Handle %91, float %737, float %738, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %748 = extractvalue %dx.types.ResRet.f32 %747, 0
  %749 = extractvalue %dx.types.ResRet.f32 %747, 1
  %750 = extractvalue %dx.types.ResRet.f32 %747, 2
  %751 = extractvalue %dx.types.ResRet.f32 %747, 3
  %752 = and i32 %655, 255
  %753 = uitofp i32 %752 to float
  %754 = lshr i32 %655, 8
  %755 = and i32 %754, 255
  %756 = uitofp i32 %755 to float
  %757 = fmul fast float %751, %753
  %758 = fadd fast float %757, %756
  %759 = fmul fast float %758, 0x3F70101000000000
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 512
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %772, label %764

; <label>:764                                     ; preds = %741
  %765 = add i32 %48, 536
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = add i32 %767, 0
  %769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %769, %dx.types.Handle %92, float %737, float %738, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 0
  br label %772

; <label>:772                                     ; preds = %764, %741
  %773 = phi float [ %771, %764 ], [ 1.000000e+00, %741 ]
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 33554432
  %777 = icmp eq i32 %776, 0
  br i1 %777, label %884, label %778

; <label>:778                                     ; preds = %772
  %779 = add i32 %48, 224
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 65535
  %783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %782)  ; LegacyF16ToF32(value)
  %784 = lshr i32 %781, 16
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = add i32 %48, 228
  %787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.i32 %787, 0
  %789 = and i32 %788, 65535
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = lshr i32 %792, 24
  %794 = uitofp i32 %793 to float
  %795 = fmul fast float %794, 0x3F70101020000000
  %796 = and i32 %792, 255
  %797 = uitofp i32 %796 to float
  %798 = fmul fast float %797, 0x3F70101020000000
  %799 = lshr i32 %792, 8
  %800 = and i32 %799, 255
  %801 = uitofp i32 %800 to float
  %802 = fmul fast float %801, 0x3F70101020000000
  %803 = lshr i32 %792, 16
  %804 = and i32 %803, 255
  %805 = uitofp i32 %804 to float
  %806 = fmul fast float %805, 0x3F70101020000000
  %807 = add i32 %48, 220
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = lshr i32 %809, 24
  %811 = uitofp i32 %810 to float
  %812 = fmul fast float %811, 0x3F70101020000000
  %813 = and i32 %809, 255
  %814 = uitofp i32 %813 to float
  %815 = fmul fast float %814, 0x3F70101020000000
  %816 = lshr i32 %809, 8
  %817 = and i32 %816, 255
  %818 = uitofp i32 %817 to float
  %819 = fmul fast float %818, 0x3F70101020000000
  %820 = lshr i32 %809, 16
  %821 = and i32 %820, 255
  %822 = uitofp i32 %821 to float
  %823 = fmul fast float %822, 0x3F70101020000000
  %824 = bitcast float %748 to i32
  %825 = ashr i32 %824, 1
  %826 = sub nsw i32 1597463174, %825
  %827 = bitcast i32 %826 to float
  %828 = fmul fast float %748, 5.000000e-01
  %829 = fmul fast float %827, %827
  %830 = fmul fast float %829, %828
  %831 = fsub fast float 1.500000e+00, %830
  %832 = fmul fast float %827, %748
  %833 = fmul fast float %832, %831
  %834 = bitcast float %749 to i32
  %835 = ashr i32 %834, 1
  %836 = sub nsw i32 1597463174, %835
  %837 = bitcast i32 %836 to float
  %838 = fmul fast float %749, 5.000000e-01
  %839 = fmul fast float %837, %837
  %840 = fmul fast float %839, %838
  %841 = fsub fast float 1.500000e+00, %840
  %842 = fmul fast float %837, %749
  %843 = fmul fast float %842, %841
  %844 = bitcast float %750 to i32
  %845 = ashr i32 %844, 1
  %846 = sub nsw i32 1597463174, %845
  %847 = bitcast i32 %846 to float
  %848 = fmul fast float %750, 5.000000e-01
  %849 = fmul fast float %847, %847
  %850 = fmul fast float %849, %848
  %851 = fsub fast float 1.500000e+00, %850
  %852 = fmul fast float %847, %750
  %853 = fmul fast float %852, %851
  %854 = fsub fast float %833, %815
  %855 = fsub fast float %843, %819
  %856 = fsub fast float %853, %823
  %857 = fmul fast float %854, %783
  %858 = fmul fast float %855, %785
  %859 = fmul fast float %856, %790
  %860 = fadd fast float %857, %798
  %861 = fadd fast float %858, %802
  %862 = fadd fast float %859, %806
  %863 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  %864 = call float @dx.op.unary.f32(i32 7, float %861)  ; Saturate(value)
  %865 = call float @dx.op.unary.f32(i32 7, float %862)  ; Saturate(value)
  %866 = fmul fast float %863, %863
  %867 = fmul fast float %864, %864
  %868 = fmul fast float %865, %865
  %869 = fsub fast float %866, %748
  %870 = fsub fast float %867, %749
  %871 = fsub fast float %868, %750
  %872 = fmul fast float %869, %773
  %873 = fmul fast float %870, %773
  %874 = fmul fast float %871, %773
  %875 = fadd fast float %872, %748
  %876 = fadd fast float %873, %749
  %877 = fadd fast float %874, %750
  %878 = fadd fast float %795, %759
  %879 = fsub fast float %878, %812
  %880 = call float @dx.op.unary.f32(i32 7, float %879)  ; Saturate(value)
  %881 = fsub fast float %880, %759
  %882 = fmul fast float %881, %773
  %883 = fadd fast float %882, %759
  br label %937

; <label>:884                                     ; preds = %772
  %885 = and i32 %775, 134217728
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %921, label %887

; <label>:887                                     ; preds = %884
  %888 = call float @dx.op.unary.f32(i32 24, float %419)  ; Sqrt(value)
  %889 = call float @dx.op.unary.f32(i32 24, float %423)  ; Sqrt(value)
  %890 = call float @dx.op.unary.f32(i32 24, float %427)  ; Sqrt(value)
  %891 = fadd fast float %888, -5.000000e-01
  %892 = fadd fast float %889, -5.000000e-01
  %893 = fadd fast float %890, -5.000000e-01
  %894 = fmul fast float %891, %773
  %895 = fmul fast float %892, %773
  %896 = fmul fast float %893, %773
  %897 = fadd fast float %894, 5.000000e-01
  %898 = fadd fast float %895, 5.000000e-01
  %899 = fadd fast float %896, 5.000000e-01
  %900 = call float @dx.op.unary.f32(i32 24, float %748)  ; Sqrt(value)
  %901 = call float @dx.op.unary.f32(i32 24, float %749)  ; Sqrt(value)
  %902 = call float @dx.op.unary.f32(i32 24, float %750)  ; Sqrt(value)
  %903 = fmul fast float %897, 2.000000e+00
  %904 = fsub fast float 1.000000e+00, %903
  %905 = fmul fast float %904, %900
  %906 = fadd fast float %905, %903
  %907 = fmul fast float %906, %900
  %908 = fmul fast float %898, 2.000000e+00
  %909 = fsub fast float 1.000000e+00, %908
  %910 = fmul fast float %909, %901
  %911 = fadd fast float %910, %908
  %912 = fmul fast float %911, %901
  %913 = fmul fast float %899, 2.000000e+00
  %914 = fsub fast float 1.000000e+00, %913
  %915 = fmul fast float %914, %902
  %916 = fadd fast float %915, %913
  %917 = fmul fast float %916, %902
  %918 = fmul fast float %907, %907
  %919 = fmul fast float %912, %912
  %920 = fmul fast float %917, %917
  br label %937

; <label>:921                                     ; preds = %884
  %922 = fmul fast float %419, %419
  %923 = fmul fast float %423, %423
  %924 = fmul fast float %427, %427
  %925 = fadd fast float %922, -1.000000e+00
  %926 = fadd fast float %923, -1.000000e+00
  %927 = fadd fast float %924, -1.000000e+00
  %928 = fmul fast float %773, %925
  %929 = fmul fast float %773, %926
  %930 = fmul fast float %773, %927
  %931 = fadd fast float %928, 1.000000e+00
  %932 = fadd fast float %929, 1.000000e+00
  %933 = fadd fast float %930, 1.000000e+00
  %934 = fmul fast float %931, %748
  %935 = fmul fast float %932, %749
  %936 = fmul fast float %933, %750
  br label %937

; <label>:937                                     ; preds = %921, %887, %778, %736
  %938 = phi float [ %883, %778 ], [ %759, %887 ], [ %759, %921 ], [ 0x3FA23C0BE0000000, %736 ]
  %939 = phi float [ %875, %778 ], [ %918, %887 ], [ %934, %921 ], [ 1.000000e+00, %736 ]
  %940 = phi float [ %876, %778 ], [ %919, %887 ], [ %935, %921 ], [ 1.000000e+00, %736 ]
  %941 = phi float [ %877, %778 ], [ %920, %887 ], [ %936, %921 ], [ 1.000000e+00, %736 ]
  %942 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.i32 %942, 1
  %944 = and i32 %943, 1
  %945 = icmp ne i32 %944, 0
  %946 = add i32 %48, 356
  %947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %946, i32 undef)  ; BufferLoad(srv,index,wot)
  %948 = extractvalue %dx.types.ResRet.i32 %947, 0
  %949 = and i32 %948, 32
  %950 = icmp ne i32 %949, 0
  %951 = and i1 %945, %950
  %952 = select i1 %951, float 1.000000e+00, float %939
  %953 = select i1 %951, float 0x3FD3333340000000, float %940
  %954 = select i1 %951, float 0x3FD3333340000000, float %941
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 32
  %958 = icmp eq i32 %957, 0
  br i1 %958, label %1031, label %959

; <label>:959                                     ; preds = %937
  %960 = add i32 %48, 92
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = add i32 %48, 472
  %964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %963, i32 undef)  ; BufferLoad(srv,index,wot)
  %965 = extractvalue %dx.types.ResRet.i32 %964, 0
  %966 = add i32 %965, 0
  %967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %967, %dx.types.Handle %91, float %737, float %738, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = extractvalue %dx.types.ResRet.f32 %968, 1
  %971 = extractvalue %dx.types.ResRet.f32 %968, 2
  %972 = extractvalue %dx.types.ResRet.f32 %968, 3
  %973 = and i32 %962, 255
  %974 = uitofp i32 %973 to float
  %975 = lshr i32 %962, 8
  %976 = and i32 %975, 255
  %977 = uitofp i32 %976 to float
  %978 = lshr i32 %962, 16
  %979 = and i32 %978, 255
  %980 = uitofp i32 %979 to float
  %981 = fmul fast float %980, 0x3F70101000000000
  %982 = fmul fast float %969, %974
  %983 = fadd fast float %982, %977
  %984 = fmul fast float %983, 0x3F70101000000000
  %985 = fadd fast float %970, -5.000000e-01
  %986 = fadd fast float %972, -5.000000e-01
  %987 = fmul fast float %985, %981
  %988 = fmul fast float %986, %981
  %989 = fadd fast float %987, 5.000000e-01
  %990 = fadd fast float %988, 5.000000e-01
  %991 = fmul fast float %989, 2.000000e+00
  %992 = fadd fast float %991, -1.000000e+00
  %993 = fmul fast float %990, 2.000000e+00
  %994 = fadd fast float %993, -1.000000e+00
  %995 = fadd fast float %992, %994
  %996 = fmul fast float %995, 5.000000e-01
  %997 = fsub fast float %992, %994
  %998 = fmul fast float %997, 5.000000e-01
  %999 = call float @dx.op.unary.f32(i32 6, float %996)  ; FAbs(value)
  %1000 = fsub fast float 1.000000e+00, %999
  %1001 = call float @dx.op.unary.f32(i32 6, float %998)  ; FAbs(value)
  %1002 = fsub fast float %1000, %1001
  %1003 = call float @dx.op.dot3.f32(i32 55, float %996, float %998, float %1002, float %996, float %998, float %1002)  ; Dot3(ax,ay,az,bx,by,bz)
  %1004 = call float @dx.op.unary.f32(i32 25, float %1003)  ; Rsqrt(value)
  %1005 = fmul fast float %996, %1004
  %1006 = fmul fast float %998, %1004
  %1007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.i32 %1007, 0
  %1009 = and i32 %1008, 67108864
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1027, label %1011

; <label>:1011                                    ; preds = %959
  %1012 = add i32 %48, 280
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = and i32 %1014, 65535
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = and i32 %1018, 65535
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = lshr i32 %1014, 16
  %1022 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1021)  ; LegacyF16ToF32(value)
  %1023 = fsub fast float %984, %1022
  %1024 = fmul fast float %1023, %1016
  %1025 = fadd fast float %1024, %1020
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  br label %1027

; <label>:1027                                    ; preds = %1011, %959
  %1028 = phi float [ %1026, %1011 ], [ %984, %959 ]
  %1029 = call float @dx.op.dot2.f32(i32 54, float %1005, float %1006, float %641, float %642)  ; Dot2(ax,ay,bx,by)
  %1030 = call float @dx.op.dot2.f32(i32 54, float %1005, float %1006, float %643, float %644)  ; Dot2(ax,ay,bx,by)
  br label %1031

; <label>:1031                                    ; preds = %1027, %937
  %1032 = phi float [ %1028, %1027 ], [ 0x3FD6666660000000, %937 ]
  %1033 = phi float [ %1029, %1027 ], [ 0.000000e+00, %937 ]
  %1034 = phi float [ %1030, %1027 ], [ 0.000000e+00, %937 ]
  %1035 = phi float [ %971, %1027 ], [ 1.000000e+00, %937 ]
  %1036 = add i32 %48, 160
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = lshr i32 %1038, 22
  %1040 = shl nuw nsw i32 %1039, 5
  %1041 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1040)  ; LegacyF16ToF32(value)
  %1042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1043 = extractvalue %dx.types.ResRet.i32 %1042, 0
  %1044 = and i32 %1043, 64
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1079, label %1046

; <label>:1046                                    ; preds = %1031
  %1047 = add i32 %48, 488
  %1048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.i32 %1048, 0
  %1050 = add i32 %1049, 0
  %1051 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1050, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 131072
  %1055 = icmp eq i32 %1054, 0
  %1056 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1051, %dx.types.Handle %91, float %737, float %738, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1057 = extractvalue %dx.types.ResRet.f32 %1056, 0
  %1058 = extractvalue %dx.types.ResRet.f32 %1056, 1
  %1059 = extractvalue %dx.types.ResRet.f32 %1056, 2
  %1060 = fmul fast float %1057, %407
  %1061 = fmul fast float %1058, %410
  %1062 = fmul fast float %1059, %413
  br i1 %1055, label %1069, label %1063

; <label>:1063                                    ; preds = %1046
  %1064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1065 = extractvalue %dx.types.CBufRet.f32 %1064, 0
  %1066 = fmul fast float %1065, %1060
  %1067 = fmul fast float %1065, %1061
  %1068 = fmul fast float %1065, %1062
  br label %1069

; <label>:1069                                    ; preds = %1063, %1046
  %1070 = phi float [ %1066, %1063 ], [ %1060, %1046 ]
  %1071 = phi float [ %1067, %1063 ], [ %1061, %1046 ]
  %1072 = phi float [ %1068, %1063 ], [ %1062, %1046 ]
  %1073 = fmul fast float %1070, %1041
  %1074 = select i1 %401, float %1073, float %1070
  %1075 = call float @dx.op.dot3.f32(i32 55, float %1074, float %1071, float %1072, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1076 = select i1 %401, float 0.000000e+00, float %1070
  %1077 = select i1 %401, float %1075, float %1071
  %1078 = select i1 %401, float 0.000000e+00, float %1072
  br label %1079

; <label>:1079                                    ; preds = %1069, %1031
  %1080 = phi float [ %1076, %1069 ], [ 0.000000e+00, %1031 ]
  %1081 = phi float [ %1077, %1069 ], [ 0.000000e+00, %1031 ]
  %1082 = phi float [ %1078, %1069 ], [ 0.000000e+00, %1031 ]
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = and i32 %1084, 10240
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1131, label %1087

; <label>:1087                                    ; preds = %1079
  %1088 = add i32 %48, 552
  %1089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.i32 %1089, 0
  %1091 = add i32 %1090, 0
  %1092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1093 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1092, %dx.types.Handle %92, float %737, float %738, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 1
  %1095 = extractvalue %dx.types.ResRet.f32 %1093, 3
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 1048576
  %1099 = icmp ne i32 %1098, 0
  %1100 = and i32 %1097, 8192
  %1101 = icmp eq i32 %1100, 0
  br i1 %1101, label %1117, label %1102

; <label>:1102                                    ; preds = %1087
  %1103 = extractvalue %dx.types.ResRet.f32 %1093, 2
  %1104 = select i1 %1099, float %1103, float %1094
  %1105 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1106 = select i1 %1099, float %1105, float %1094
  %1107 = add i32 %48, 96
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = lshr i32 %1109, 16
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = fmul fast float %1112, 0x3F80101020000000
  %1114 = fmul fast float %1113, %1106
  %1115 = fmul fast float %1113, %1094
  %1116 = fmul fast float %1113, %1104
  br label %1117

; <label>:1117                                    ; preds = %1102, %1087
  %1118 = phi float [ %1114, %1102 ], [ 0.000000e+00, %1087 ]
  %1119 = phi float [ %1115, %1102 ], [ 0.000000e+00, %1087 ]
  %1120 = phi float [ %1116, %1102 ], [ 0.000000e+00, %1087 ]
  %1121 = and i32 %1097, 2048
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1131, label %1123

; <label>:1123                                    ; preds = %1117
  %1124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1125 = extractvalue %dx.types.ResRet.i32 %1124, 0
  %1126 = shl i32 %1125, 4
  %1127 = and i32 %1126, 32752
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = fmul fast float %1128, %1095
  %1130 = call float @dx.op.binary.f32(i32 35, float %1129, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1131

; <label>:1131                                    ; preds = %1123, %1117, %1079
  %1132 = phi float [ %1118, %1123 ], [ %1118, %1117 ], [ 0.000000e+00, %1079 ]
  %1133 = phi float [ %1119, %1123 ], [ %1119, %1117 ], [ 0.000000e+00, %1079 ]
  %1134 = phi float [ %1120, %1123 ], [ %1120, %1117 ], [ 0.000000e+00, %1079 ]
  %1135 = phi float [ %1130, %1123 ], [ 0x3F70101020000000, %1117 ], [ 0x3F70101020000000, %1079 ]
  %1136 = add i32 %48, 96
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = and i32 %1138, 255
  %1140 = uitofp i32 %1139 to float
  %1141 = lshr i32 %1138, 8
  %1142 = and i32 %1141, 255
  %1143 = uitofp i32 %1142 to float
  %1144 = call float @dx.op.dot3.f32(i32 55, float %952, float %953, float %954, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1145 = fmul fast float %1143, %1144
  %1146 = fadd fast float %1145, %1140
  %1147 = fmul fast float %1146, 0x3F70101020000000
  %1148 = call float @dx.op.unary.f32(i32 7, float %1147)  ; Saturate(value)
  br label %1149

; <label>:1149                                    ; preds = %1131, %623
  %1150 = phi float [ 0.000000e+00, %623 ], [ %1033, %1131 ]
  %1151 = phi float [ 0.000000e+00, %623 ], [ %1034, %1131 ]
  %1152 = phi float [ 0.000000e+00, %623 ], [ %952, %1131 ]
  %1153 = phi float [ 0.000000e+00, %623 ], [ %953, %1131 ]
  %1154 = phi float [ 0.000000e+00, %623 ], [ %954, %1131 ]
  %1155 = phi float [ 0.000000e+00, %623 ], [ %1080, %1131 ]
  %1156 = phi float [ 0.000000e+00, %623 ], [ %1081, %1131 ]
  %1157 = phi float [ 0.000000e+00, %623 ], [ %1082, %1131 ]
  %1158 = phi float [ 0.000000e+00, %623 ], [ %1132, %1131 ]
  %1159 = phi float [ 0.000000e+00, %623 ], [ %1133, %1131 ]
  %1160 = phi float [ 0.000000e+00, %623 ], [ %1134, %1131 ]
  %1161 = phi float [ 0.000000e+00, %623 ], [ %938, %1131 ]
  %1162 = phi float [ 0.000000e+00, %623 ], [ 1.000000e+00, %1131 ]
  %1163 = phi float [ 0.000000e+00, %623 ], [ %1032, %1131 ]
  %1164 = phi float [ 0.000000e+00, %623 ], [ %1035, %1131 ]
  %1165 = phi float [ 0.000000e+00, %623 ], [ %1135, %1131 ]
  %1166 = phi float [ 0.000000e+00, %623 ], [ %1148, %1131 ]
  br i1 %574, label %2095, label %1167

; <label>:1167                                    ; preds = %1149
  %1168 = icmp ult i32 %629, 2
  %1169 = add i32 %48, 40
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = add i32 %48, 44
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = or i32 %1174, %1171
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %2095, label %1177

; <label>:1177                                    ; preds = %1167
  %1178 = and i32 %1171, 262144
  %1179 = icmp ne i32 %1178, 0
  %1180 = select i1 %1179, float %55, float 1.000000e+00
  %1181 = select i1 %1179, float %56, float 0.000000e+00
  %1182 = select i1 %1179, float %57, float 0.000000e+00
  %1183 = select i1 %1179, float %58, float 1.000000e+00
  %1184 = select i1 %1179, float %59, float %68
  %1185 = select i1 %1179, float %60, float %69
  %1186 = add i32 %48, 300
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = lshr i32 %1188, 16
  %1190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1189)  ; LegacyF16ToF32(value)
  %1191 = fmul fast float %1190, 0x3F50624DE0000000
  %1192 = add i32 %48, 104
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = lshr i32 %1194, 16
  %1196 = and i32 %1195, 255
  %1197 = lshr i32 %1194, 24
  %1198 = add i32 %48, 308
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 65535
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = lshr i32 %1200, 16
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = add i32 %48, 48
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = lshr i32 %1207, 22
  %1209 = shl nuw nsw i32 %1208, 5
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = shl i32 %1207, 4
  %1212 = and i32 %1211, 32752
  %1213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1212)  ; LegacyF16ToF32(value)
  %1214 = lshr i32 %1207, 7
  %1215 = and i32 %1214, 32752
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1218 = extractvalue %dx.types.CBufRet.f32 %1217, 3
  %1219 = fmul fast float %1218, 1.000000e+03
  %1220 = fmul fast float %484, %1219
  %1221 = call float @dx.op.unary.f32(i32 22, float %1220)  ; Frc(value)
  %1222 = fadd fast float %1221, %474
  %1223 = fmul fast float %485, %1219
  %1224 = call float @dx.op.unary.f32(i32 22, float %1223)  ; Frc(value)
  %1225 = fadd fast float %1224, %476
  %1226 = fmul fast float %1191, %1219
  %1227 = call float @dx.op.unary.f32(i32 22, float %1226)  ; Frc(value)
  %1228 = fmul fast float %1227, 0x401921FB60000000
  %1229 = fadd fast float %1228, %1210
  %1230 = call float @dx.op.unary.f32(i32 13, float %1229)  ; Sin(value)
  %1231 = call float @dx.op.unary.f32(i32 12, float %1229)  ; Cos(value)
  %1232 = fsub fast float -0.000000e+00, %1230
  %1233 = fadd fast float %1184, -5.000000e-01
  %1234 = fadd fast float %1185, -5.000000e-01
  %1235 = fmul fast float %1202, %1233
  %1236 = fmul fast float %1204, %1234
  %1237 = fadd fast float %1235, 5.000000e-01
  %1238 = fadd fast float %1236, 5.000000e-01
  %1239 = fmul fast float %1213, %1237
  %1240 = fmul fast float %1216, %1238
  %1241 = fmul fast float %1231, %1239
  %1242 = call float @dx.op.tertiary.f32(i32 46, float %1232, float %1240, float %1241)  ; FMad(a,b,c)
  %1243 = fmul fast float %1230, %1239
  %1244 = call float @dx.op.tertiary.f32(i32 46, float %1231, float %1240, float %1243)  ; FMad(a,b,c)
  %1245 = fadd fast float %1222, %1242
  %1246 = fadd fast float %1225, %1244
  %1247 = icmp ugt i32 %1196, 1
  %1248 = icmp ugt i32 %1194, 33554431
  %1249 = or i1 %1248, %1247
  br i1 %1249, label %1250, label %1275

; <label>:1250                                    ; preds = %1177
  %1251 = add i32 %48, 244
  %1252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1253 = extractvalue %dx.types.ResRet.i32 %1252, 0
  %1254 = lshr i32 %1253, 16
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = fmul fast float %1218, %1255
  %1257 = call float @dx.op.unary.f32(i32 22, float %1256)  ; Frc(value)
  %1258 = mul nuw nsw i32 %1196, %1197
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1257, %1259
  %1261 = call float @dx.op.unary.f32(i32 27, float %1260)  ; Round_ni(value)
  %1262 = fptoui float %1261 to i32
  %1263 = urem i32 %1262, %1196
  %1264 = udiv i32 %1262, %1197
  %1265 = call float @dx.op.unary.f32(i32 22, float %1245)  ; Frc(value)
  %1266 = call float @dx.op.unary.f32(i32 22, float %1246)  ; Frc(value)
  %1267 = uitofp i32 %1263 to float
  %1268 = uitofp i32 %1264 to float
  %1269 = fadd fast float %1265, %1267
  %1270 = fadd fast float %1266, %1268
  %1271 = uitofp i32 %1196 to float
  %1272 = uitofp i32 %1197 to float
  %1273 = fdiv fast float %1269, %1271
  %1274 = fdiv fast float %1270, %1272
  br label %1275

; <label>:1275                                    ; preds = %1250, %1177
  %1276 = phi float [ %1273, %1250 ], [ %1245, %1177 ]
  %1277 = phi float [ %1274, %1250 ], [ %1246, %1177 ]
  %1278 = and i32 %1171, 16777216
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1389, label %1280

; <label>:1280                                    ; preds = %1275
  %1281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1282 = extractvalue %dx.types.CBufRet.f32 %1281, 0
  %1283 = extractvalue %dx.types.CBufRet.f32 %1281, 1
  %1284 = extractvalue %dx.types.CBufRet.f32 %1281, 2
  %1285 = fadd fast float %1282, %151
  %1286 = fadd fast float %1283, %152
  %1287 = fadd fast float %1284, %153
  %1288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1289 = extractvalue %dx.types.CBufRet.f32 %1288, 0
  %1290 = call float @dx.op.unary.f32(i32 7, float %1289)  ; Saturate(value)
  %1291 = icmp eq i32 %49, 65535
  br i1 %1291, label %1386, label %1292

; <label>:1292                                    ; preds = %1280
  %1293 = lshr i32 %49, 1
  %1294 = shl i32 %1293, 2
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1294, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = and i32 %49, 1
  %1298 = icmp ne i32 %1297, 0
  %1299 = lshr i32 %1296, 16
  %1300 = and i32 %1296, 65535
  %1301 = select i1 %1298, i32 %1299, i32 %1300
  %1302 = icmp eq i32 %1301, 65535
  br i1 %1302, label %1382, label %1303

; <label>:1303                                    ; preds = %1292
  %1304 = mul nuw nsw i32 %1301, 40
  %1305 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.ResRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.ResRet.f32 %1305, 2
  %1309 = add nuw nsw i32 %1304, 12
  %1310 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.f32 %1310, 0
  %1312 = extractvalue %dx.types.ResRet.f32 %1310, 1
  %1313 = extractvalue %dx.types.ResRet.f32 %1310, 2
  %1314 = add nuw nsw i32 %1304, 24
  %1315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1314, i32 undef)  ; BufferLoad(srv,index,wot)
  %1316 = extractvalue %dx.types.ResRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.ResRet.f32 %1315, 1
  %1318 = extractvalue %dx.types.ResRet.f32 %1315, 2
  %1319 = add nuw nsw i32 %1304, 36
  %1320 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1319, i32 undef)  ; BufferLoad(srv,index,wot)
  %1321 = extractvalue %dx.types.ResRet.f32 %1320, 0
  %1322 = fsub fast float %1285, %1306
  %1323 = fsub fast float %1286, %1307
  %1324 = fsub fast float %1287, %1308
  %1325 = fmul fast float %1321, %1322
  %1326 = fmul fast float %1321, %1323
  %1327 = fmul fast float %1321, %1324
  %1328 = call float @dx.op.unary.f32(i32 27, float %1325)  ; Round_ni(value)
  %1329 = call float @dx.op.unary.f32(i32 27, float %1326)  ; Round_ni(value)
  %1330 = call float @dx.op.unary.f32(i32 27, float %1327)  ; Round_ni(value)
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = fadd fast float %1330, 5.000000e-01
  %1334 = fmul fast float %1331, %1311
  %1335 = fmul fast float %1332, %1312
  %1336 = fmul fast float %1333, %1313
  %1337 = shl i32 %49, 2
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = add i32 %1339, 0
  %1341 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1340, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1342 = call float @dx.op.unary.f32(i32 22, float %1334)  ; Frc(value)
  %1343 = call float @dx.op.unary.f32(i32 22, float %1335)  ; Frc(value)
  %1344 = call float @dx.op.unary.f32(i32 22, float %1336)  ; Frc(value)
  %1345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1341, %dx.types.Handle %43, float %1342, float %1343, float %1344, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1346 = extractvalue %dx.types.ResRet.f32 %1345, 0
  %1347 = extractvalue %dx.types.ResRet.f32 %1345, 1
  %1348 = extractvalue %dx.types.ResRet.f32 %1345, 2
  %1349 = fmul fast float %1346, 1.023000e+03
  %1350 = fmul fast float %1347, 1.023000e+03
  %1351 = fmul fast float %1348, 1.023000e+03
  %1352 = fadd fast float %1349, 5.000000e-01
  %1353 = fadd fast float %1350, 5.000000e-01
  %1354 = fadd fast float %1351, 5.000000e-01
  %1355 = call float @dx.op.unary.f32(i32 27, float %1352)  ; Round_ni(value)
  %1356 = call float @dx.op.unary.f32(i32 27, float %1353)  ; Round_ni(value)
  %1357 = call float @dx.op.unary.f32(i32 27, float %1354)  ; Round_ni(value)
  %1358 = fsub fast float %1325, %1328
  %1359 = fsub fast float %1326, %1329
  %1360 = fsub fast float %1327, %1330
  %1361 = fmul fast float %1358, 7.500000e-01
  %1362 = fmul fast float %1359, 7.500000e-01
  %1363 = fmul fast float %1360, 7.500000e-01
  %1364 = fadd fast float %1328, 1.250000e-01
  %1365 = fadd fast float %1364, %1361
  %1366 = fadd fast float %1365, %1355
  %1367 = fadd fast float %1329, 1.250000e-01
  %1368 = fadd fast float %1367, %1362
  %1369 = fadd fast float %1368, %1356
  %1370 = fadd fast float %1330, 1.250000e-01
  %1371 = fadd fast float %1370, %1363
  %1372 = fadd fast float %1371, %1357
  %1373 = fmul fast float %1366, %1316
  %1374 = fmul fast float %1369, %1317
  %1375 = fmul fast float %1372, %1318
  %1376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.i32 %1376, 0
  %1378 = add i32 %1377, 0
  %1379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1380 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1379, %dx.types.Handle %41, float %1373, float %1374, float %1375, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1381 = extractvalue %dx.types.ResRet.f32 %1380, 0
  br label %1382

; <label>:1382                                    ; preds = %1303, %1292
  %1383 = phi float [ %1381, %1303 ], [ -1.000000e+00, %1292 ]
  %1384 = fadd fast float %1383, %1290
  %1385 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  br label %1386

; <label>:1386                                    ; preds = %1382, %1280
  %1387 = phi float [ %1385, %1382 ], [ %1290, %1280 ]
  %1388 = fmul fast float %1387, %626
  br label %1389

; <label>:1389                                    ; preds = %1386, %1275
  %1390 = phi float [ %1388, %1386 ], [ %626, %1275 ]
  %1391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1392 = extractvalue %dx.types.ResRet.i32 %1391, 0
  %1393 = and i32 %1392, 256
  %1394 = icmp eq i32 %1393, 0
  br i1 %1394, label %1441, label %1395

; <label>:1395                                    ; preds = %1389
  %1396 = add i32 %48, 524
  %1397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1396, i32 undef)  ; BufferLoad(srv,index,wot)
  %1398 = extractvalue %dx.types.ResRet.i32 %1397, 0
  %1399 = add i32 %1398, 0
  %1400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1400, %dx.types.Handle %92, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1402 = extractvalue %dx.types.ResRet.f32 %1401, 0
  %1403 = add i32 %48, 116
  %1404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1403, i32 undef)  ; BufferLoad(srv,index,wot)
  %1405 = extractvalue %dx.types.ResRet.i32 %1404, 0
  %1406 = shl i32 %1405, 4
  %1407 = and i32 %1406, 32752
  %1408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1407)  ; LegacyF16ToF32(value)
  %1409 = lshr i32 %1405, 7
  %1410 = and i32 %1409, 32752
  %1411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1410)  ; LegacyF16ToF32(value)
  %1412 = fsub fast float 1.000000e+00, %1390
  %1413 = call float @dx.op.binary.f32(i32 35, float %1412, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1414 = bitcast float %1390 to i32
  %1415 = sitofp i32 %1414 to float
  %1416 = fadd fast float %1415, 0xC1CFBF8940000000
  %1417 = fmul fast float %1411, %1416
  %1418 = fadd fast float %1417, 0x41CFBF8940000000
  %1419 = fptosi float %1418 to i32
  %1420 = bitcast i32 %1419 to float
  %1421 = bitcast float %1413 to i32
  %1422 = sitofp i32 %1421 to float
  %1423 = fadd fast float %1422, 0xC1CFBF8940000000
  %1424 = fmul fast float %1423, %1411
  %1425 = fadd fast float %1424, 0x41CFBF8940000000
  %1426 = fptosi float %1425 to i32
  %1427 = bitcast i32 %1426 to float
  %1428 = fmul fast float %1420, %1408
  %1429 = fmul fast float %1427, %1408
  %1430 = fsub fast float %1413, %1428
  %1431 = fadd fast float %1429, %1413
  %1432 = call float @dx.op.unary.f32(i32 7, float %1430)  ; Saturate(value)
  %1433 = call float @dx.op.unary.f32(i32 7, float %1431)  ; Saturate(value)
  %1434 = fsub fast float %1402, %1432
  %1435 = fsub fast float %1433, %1432
  %1436 = bitcast float %1435 to i32
  %1437 = sub nsw i32 2129859010, %1436
  %1438 = bitcast i32 %1437 to float
  %1439 = fmul fast float %1438, %1434
  %1440 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  br label %1441

; <label>:1441                                    ; preds = %1395, %1389
  %1442 = phi float [ %1440, %1395 ], [ %1390, %1389 ]
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = and i32 %1444, 128
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1463, label %1447

; <label>:1447                                    ; preds = %1441
  %1448 = add i32 %48, 508
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = add i32 %1450, 0
  %1452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1453 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1452, %dx.types.Handle %92, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1454 = extractvalue %dx.types.ResRet.f32 %1453, 0
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 524288
  %1458 = icmp ne i32 %1457, 0
  %1459 = fcmp fast ogt float %1454, 0x3FE0101020000000
  %1460 = select i1 %1459, float 1.000000e+00, float 0.000000e+00
  %1461 = select i1 %1458, float %1460, float %1454
  %1462 = fmul fast float %1461, %1442
  br label %1463

; <label>:1463                                    ; preds = %1447, %1441
  %1464 = phi float [ %1462, %1447 ], [ %1442, %1441 ]
  %1465 = fcmp fast ult float %1464, 0x3F70101020000000
  br i1 %1465, label %2095, label %1466

; <label>:1466                                    ; preds = %1463
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = and i32 %1468, 16
  %1470 = icmp eq i32 %1469, 0
  br i1 %1470, label %1669, label %1471

; <label>:1471                                    ; preds = %1466
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1192, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = add i32 %48, 460
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = add i32 %1476, 0
  %1478 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1477, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1479 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1478, %dx.types.Handle %91, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1480 = extractvalue %dx.types.ResRet.f32 %1479, 0
  %1481 = extractvalue %dx.types.ResRet.f32 %1479, 1
  %1482 = extractvalue %dx.types.ResRet.f32 %1479, 2
  %1483 = extractvalue %dx.types.ResRet.f32 %1479, 3
  %1484 = and i32 %1473, 255
  %1485 = uitofp i32 %1484 to float
  %1486 = lshr i32 %1473, 8
  %1487 = and i32 %1486, 255
  %1488 = uitofp i32 %1487 to float
  %1489 = fmul fast float %1483, %1485
  %1490 = fadd fast float %1489, %1488
  %1491 = fmul fast float %1490, 0x3F70101000000000
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.i32 %1492, 0
  %1494 = and i32 %1493, 512
  %1495 = icmp eq i32 %1494, 0
  br i1 %1495, label %1504, label %1496

; <label>:1496                                    ; preds = %1471
  %1497 = add i32 %48, 540
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = add i32 %1499, 0
  %1501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1501, %dx.types.Handle %92, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1503 = extractvalue %dx.types.ResRet.f32 %1502, 0
  br label %1504

; <label>:1504                                    ; preds = %1496, %1471
  %1505 = phi float [ %1503, %1496 ], [ 1.000000e+00, %1471 ]
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 33554432
  %1509 = icmp eq i32 %1508, 0
  br i1 %1509, label %1616, label %1510

; <label>:1510                                    ; preds = %1504
  %1511 = add i32 %48, 240
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 65535
  %1515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1514)  ; LegacyF16ToF32(value)
  %1516 = lshr i32 %1513, 16
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = add i32 %48, 244
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 65535
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = lshr i32 %1524, 24
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101020000000
  %1528 = and i32 %1524, 255
  %1529 = uitofp i32 %1528 to float
  %1530 = fmul fast float %1529, 0x3F70101020000000
  %1531 = lshr i32 %1524, 8
  %1532 = and i32 %1531, 255
  %1533 = uitofp i32 %1532 to float
  %1534 = fmul fast float %1533, 0x3F70101020000000
  %1535 = lshr i32 %1524, 16
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = fmul fast float %1537, 0x3F70101020000000
  %1539 = add i32 %48, 236
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = lshr i32 %1541, 24
  %1543 = uitofp i32 %1542 to float
  %1544 = fmul fast float %1543, 0x3F70101020000000
  %1545 = and i32 %1541, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = fmul fast float %1546, 0x3F70101020000000
  %1548 = lshr i32 %1541, 8
  %1549 = and i32 %1548, 255
  %1550 = uitofp i32 %1549 to float
  %1551 = fmul fast float %1550, 0x3F70101020000000
  %1552 = lshr i32 %1541, 16
  %1553 = and i32 %1552, 255
  %1554 = uitofp i32 %1553 to float
  %1555 = fmul fast float %1554, 0x3F70101020000000
  %1556 = bitcast float %1480 to i32
  %1557 = ashr i32 %1556, 1
  %1558 = sub nsw i32 1597463174, %1557
  %1559 = bitcast i32 %1558 to float
  %1560 = fmul fast float %1480, 5.000000e-01
  %1561 = fmul fast float %1559, %1559
  %1562 = fmul fast float %1561, %1560
  %1563 = fsub fast float 1.500000e+00, %1562
  %1564 = fmul fast float %1559, %1480
  %1565 = fmul fast float %1564, %1563
  %1566 = bitcast float %1481 to i32
  %1567 = ashr i32 %1566, 1
  %1568 = sub nsw i32 1597463174, %1567
  %1569 = bitcast i32 %1568 to float
  %1570 = fmul fast float %1481, 5.000000e-01
  %1571 = fmul fast float %1569, %1569
  %1572 = fmul fast float %1571, %1570
  %1573 = fsub fast float 1.500000e+00, %1572
  %1574 = fmul fast float %1569, %1481
  %1575 = fmul fast float %1574, %1573
  %1576 = bitcast float %1482 to i32
  %1577 = ashr i32 %1576, 1
  %1578 = sub nsw i32 1597463174, %1577
  %1579 = bitcast i32 %1578 to float
  %1580 = fmul fast float %1482, 5.000000e-01
  %1581 = fmul fast float %1579, %1579
  %1582 = fmul fast float %1581, %1580
  %1583 = fsub fast float 1.500000e+00, %1582
  %1584 = fmul fast float %1579, %1482
  %1585 = fmul fast float %1584, %1583
  %1586 = fsub fast float %1565, %1547
  %1587 = fsub fast float %1575, %1551
  %1588 = fsub fast float %1585, %1555
  %1589 = fmul fast float %1586, %1515
  %1590 = fmul fast float %1587, %1517
  %1591 = fmul fast float %1588, %1522
  %1592 = fadd fast float %1589, %1530
  %1593 = fadd fast float %1590, %1534
  %1594 = fadd fast float %1591, %1538
  %1595 = call float @dx.op.unary.f32(i32 7, float %1592)  ; Saturate(value)
  %1596 = call float @dx.op.unary.f32(i32 7, float %1593)  ; Saturate(value)
  %1597 = call float @dx.op.unary.f32(i32 7, float %1594)  ; Saturate(value)
  %1598 = fmul fast float %1595, %1595
  %1599 = fmul fast float %1596, %1596
  %1600 = fmul fast float %1597, %1597
  %1601 = fsub fast float %1598, %1480
  %1602 = fsub fast float %1599, %1481
  %1603 = fsub fast float %1600, %1482
  %1604 = fmul fast float %1601, %1505
  %1605 = fmul fast float %1602, %1505
  %1606 = fmul fast float %1603, %1505
  %1607 = fadd fast float %1604, %1480
  %1608 = fadd fast float %1605, %1481
  %1609 = fadd fast float %1606, %1482
  %1610 = fadd fast float %1527, %1491
  %1611 = fsub fast float %1610, %1544
  %1612 = call float @dx.op.unary.f32(i32 7, float %1611)  ; Saturate(value)
  %1613 = fsub fast float %1612, %1491
  %1614 = fmul fast float %1613, %1505
  %1615 = fadd fast float %1614, %1491
  br label %1669

; <label>:1616                                    ; preds = %1504
  %1617 = and i32 %1507, 134217728
  %1618 = icmp eq i32 %1617, 0
  br i1 %1618, label %1653, label %1619

; <label>:1619                                    ; preds = %1616
  %1620 = call float @dx.op.unary.f32(i32 24, float %461)  ; Sqrt(value)
  %1621 = call float @dx.op.unary.f32(i32 24, float %465)  ; Sqrt(value)
  %1622 = call float @dx.op.unary.f32(i32 24, float %469)  ; Sqrt(value)
  %1623 = fadd fast float %1620, -5.000000e-01
  %1624 = fadd fast float %1621, -5.000000e-01
  %1625 = fadd fast float %1622, -5.000000e-01
  %1626 = fmul fast float %1623, %1505
  %1627 = fmul fast float %1624, %1505
  %1628 = fmul fast float %1625, %1505
  %1629 = fadd fast float %1626, 5.000000e-01
  %1630 = fadd fast float %1627, 5.000000e-01
  %1631 = fadd fast float %1628, 5.000000e-01
  %1632 = call float @dx.op.unary.f32(i32 24, float %1480)  ; Sqrt(value)
  %1633 = call float @dx.op.unary.f32(i32 24, float %1481)  ; Sqrt(value)
  %1634 = call float @dx.op.unary.f32(i32 24, float %1482)  ; Sqrt(value)
  %1635 = fmul fast float %1629, 2.000000e+00
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = fmul fast float %1636, %1632
  %1638 = fadd fast float %1637, %1635
  %1639 = fmul fast float %1638, %1632
  %1640 = fmul fast float %1630, 2.000000e+00
  %1641 = fsub fast float 1.000000e+00, %1640
  %1642 = fmul fast float %1641, %1633
  %1643 = fadd fast float %1642, %1640
  %1644 = fmul fast float %1643, %1633
  %1645 = fmul fast float %1631, 2.000000e+00
  %1646 = fsub fast float 1.000000e+00, %1645
  %1647 = fmul fast float %1646, %1634
  %1648 = fadd fast float %1647, %1645
  %1649 = fmul fast float %1648, %1634
  %1650 = fmul fast float %1639, %1639
  %1651 = fmul fast float %1644, %1644
  %1652 = fmul fast float %1649, %1649
  br label %1669

; <label>:1653                                    ; preds = %1616
  %1654 = fmul fast float %461, %461
  %1655 = fmul fast float %465, %465
  %1656 = fmul fast float %469, %469
  %1657 = fadd fast float %1654, -1.000000e+00
  %1658 = fadd fast float %1655, -1.000000e+00
  %1659 = fadd fast float %1656, -1.000000e+00
  %1660 = fmul fast float %1505, %1657
  %1661 = fmul fast float %1505, %1658
  %1662 = fmul fast float %1505, %1659
  %1663 = fadd fast float %1660, 1.000000e+00
  %1664 = fadd fast float %1661, 1.000000e+00
  %1665 = fadd fast float %1662, 1.000000e+00
  %1666 = fmul fast float %1663, %1480
  %1667 = fmul fast float %1664, %1481
  %1668 = fmul fast float %1665, %1482
  br label %1669

; <label>:1669                                    ; preds = %1653, %1619, %1510, %1466
  %1670 = phi float [ %1615, %1510 ], [ %1491, %1619 ], [ %1491, %1653 ], [ 0x3FA23C0BE0000000, %1466 ]
  %1671 = phi float [ %1607, %1510 ], [ %1650, %1619 ], [ %1666, %1653 ], [ 1.000000e+00, %1466 ]
  %1672 = phi float [ %1608, %1510 ], [ %1651, %1619 ], [ %1667, %1653 ], [ 1.000000e+00, %1466 ]
  %1673 = phi float [ %1609, %1510 ], [ %1652, %1619 ], [ %1668, %1653 ], [ 1.000000e+00, %1466 ]
  %1674 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1675 = extractvalue %dx.types.CBufRet.i32 %1674, 1
  %1676 = and i32 %1675, 1
  %1677 = icmp ne i32 %1676, 0
  %1678 = add i32 %48, 356
  %1679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.i32 %1679, 0
  %1681 = and i32 %1680, 32
  %1682 = icmp ne i32 %1681, 0
  %1683 = and i1 %1677, %1682
  %1684 = select i1 %1683, float 1.000000e+00, float %1671
  %1685 = select i1 %1683, float 0x3FD3333340000000, float %1672
  %1686 = select i1 %1683, float 0x3FD3333340000000, float %1673
  %1687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1688 = extractvalue %dx.types.ResRet.i32 %1687, 0
  %1689 = and i32 %1688, 32
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1763, label %1691

; <label>:1691                                    ; preds = %1669
  %1692 = add i32 %48, 108
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = add i32 %48, 476
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = add i32 %1697, 0
  %1699 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1698, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1700 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1699, %dx.types.Handle %91, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1701 = extractvalue %dx.types.ResRet.f32 %1700, 0
  %1702 = extractvalue %dx.types.ResRet.f32 %1700, 1
  %1703 = extractvalue %dx.types.ResRet.f32 %1700, 2
  %1704 = extractvalue %dx.types.ResRet.f32 %1700, 3
  %1705 = and i32 %1694, 255
  %1706 = uitofp i32 %1705 to float
  %1707 = lshr i32 %1694, 8
  %1708 = and i32 %1707, 255
  %1709 = uitofp i32 %1708 to float
  %1710 = lshr i32 %1694, 16
  %1711 = and i32 %1710, 255
  %1712 = uitofp i32 %1711 to float
  %1713 = fmul fast float %1712, 0x3F70101000000000
  %1714 = fmul fast float %1701, %1706
  %1715 = fadd fast float %1714, %1709
  %1716 = fmul fast float %1715, 0x3F70101000000000
  %1717 = fadd fast float %1702, -5.000000e-01
  %1718 = fadd fast float %1704, -5.000000e-01
  %1719 = fmul fast float %1717, %1713
  %1720 = fmul fast float %1718, %1713
  %1721 = fadd fast float %1719, 5.000000e-01
  %1722 = fadd fast float %1720, 5.000000e-01
  %1723 = fmul fast float %1721, 2.000000e+00
  %1724 = fadd fast float %1723, -1.000000e+00
  %1725 = fmul fast float %1722, 2.000000e+00
  %1726 = fadd fast float %1725, -1.000000e+00
  %1727 = fadd fast float %1724, %1726
  %1728 = fmul fast float %1727, 5.000000e-01
  %1729 = fsub fast float %1724, %1726
  %1730 = fmul fast float %1729, 5.000000e-01
  %1731 = call float @dx.op.unary.f32(i32 6, float %1728)  ; FAbs(value)
  %1732 = fsub fast float 1.000000e+00, %1731
  %1733 = call float @dx.op.unary.f32(i32 6, float %1730)  ; FAbs(value)
  %1734 = fsub fast float %1732, %1733
  %1735 = call float @dx.op.dot3.f32(i32 55, float %1728, float %1730, float %1734, float %1728, float %1730, float %1734)  ; Dot3(ax,ay,az,bx,by,bz)
  %1736 = call float @dx.op.unary.f32(i32 25, float %1735)  ; Rsqrt(value)
  %1737 = fmul fast float %1728, %1736
  %1738 = fmul fast float %1730, %1736
  %1739 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1740 = extractvalue %dx.types.ResRet.i32 %1739, 0
  %1741 = and i32 %1740, 67108864
  %1742 = icmp eq i32 %1741, 0
  br i1 %1742, label %1759, label %1743

; <label>:1743                                    ; preds = %1691
  %1744 = add i32 %48, 296
  %1745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1744, i32 undef)  ; BufferLoad(srv,index,wot)
  %1746 = extractvalue %dx.types.ResRet.i32 %1745, 0
  %1747 = and i32 %1746, 65535
  %1748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1747)  ; LegacyF16ToF32(value)
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = and i32 %1750, 65535
  %1752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1751)  ; LegacyF16ToF32(value)
  %1753 = lshr i32 %1746, 16
  %1754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1753)  ; LegacyF16ToF32(value)
  %1755 = fsub fast float %1716, %1754
  %1756 = fmul fast float %1755, %1748
  %1757 = fadd fast float %1756, %1752
  %1758 = call float @dx.op.unary.f32(i32 7, float %1757)  ; Saturate(value)
  br label %1759

; <label>:1759                                    ; preds = %1743, %1691
  %1760 = phi float [ %1758, %1743 ], [ %1716, %1691 ]
  %1761 = call float @dx.op.dot2.f32(i32 54, float %1737, float %1738, float %1180, float %1181)  ; Dot2(ax,ay,bx,by)
  %1762 = call float @dx.op.dot2.f32(i32 54, float %1737, float %1738, float %1182, float %1183)  ; Dot2(ax,ay,bx,by)
  br label %1763

; <label>:1763                                    ; preds = %1759, %1669
  %1764 = phi float [ %1760, %1759 ], [ 0x3FD6666660000000, %1669 ]
  %1765 = phi float [ %1761, %1759 ], [ 0.000000e+00, %1669 ]
  %1766 = phi float [ %1762, %1759 ], [ 0.000000e+00, %1669 ]
  %1767 = phi float [ %1703, %1759 ], [ 1.000000e+00, %1669 ]
  %1768 = add i32 %48, 176
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = lshr i32 %1770, 22
  %1772 = shl nuw nsw i32 %1771, 5
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1775 = extractvalue %dx.types.ResRet.i32 %1774, 0
  %1776 = and i32 %1775, 64
  %1777 = icmp eq i32 %1776, 0
  br i1 %1777, label %1811, label %1778

; <label>:1778                                    ; preds = %1763
  %1779 = add i32 %48, 492
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = add i32 %1781, 0
  %1783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1782, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = and i32 %1785, 131072
  %1787 = icmp eq i32 %1786, 0
  %1788 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1783, %dx.types.Handle %91, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1789 = extractvalue %dx.types.ResRet.f32 %1788, 0
  %1790 = extractvalue %dx.types.ResRet.f32 %1788, 1
  %1791 = extractvalue %dx.types.ResRet.f32 %1788, 2
  %1792 = fmul fast float %1789, %449
  %1793 = fmul fast float %1790, %452
  %1794 = fmul fast float %1791, %455
  br i1 %1787, label %1801, label %1795

; <label>:1795                                    ; preds = %1778
  %1796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1797 = extractvalue %dx.types.CBufRet.f32 %1796, 0
  %1798 = fmul fast float %1797, %1792
  %1799 = fmul fast float %1797, %1793
  %1800 = fmul fast float %1797, %1794
  br label %1801

; <label>:1801                                    ; preds = %1795, %1778
  %1802 = phi float [ %1798, %1795 ], [ %1792, %1778 ]
  %1803 = phi float [ %1799, %1795 ], [ %1793, %1778 ]
  %1804 = phi float [ %1800, %1795 ], [ %1794, %1778 ]
  %1805 = fmul fast float %1802, %1773
  %1806 = select i1 %401, float %1805, float %1802
  %1807 = call float @dx.op.dot3.f32(i32 55, float %1806, float %1803, float %1804, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1808 = select i1 %401, float 0.000000e+00, float %1802
  %1809 = select i1 %401, float %1807, float %1803
  %1810 = select i1 %401, float 0.000000e+00, float %1804
  br label %1811

; <label>:1811                                    ; preds = %1801, %1763
  %1812 = phi float [ %1808, %1801 ], [ 0.000000e+00, %1763 ]
  %1813 = phi float [ %1809, %1801 ], [ 0.000000e+00, %1763 ]
  %1814 = phi float [ %1810, %1801 ], [ 0.000000e+00, %1763 ]
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = and i32 %1816, 10240
  %1818 = icmp eq i32 %1817, 0
  br i1 %1818, label %1863, label %1819

; <label>:1819                                    ; preds = %1811
  %1820 = add i32 %48, 556
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = add i32 %1822, 0
  %1824 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1823, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1824, %dx.types.Handle %92, float %1276, float %1277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1826 = extractvalue %dx.types.ResRet.f32 %1825, 1
  %1827 = extractvalue %dx.types.ResRet.f32 %1825, 3
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 1048576
  %1831 = icmp ne i32 %1830, 0
  %1832 = and i32 %1829, 8192
  %1833 = icmp eq i32 %1832, 0
  br i1 %1833, label %1849, label %1834

; <label>:1834                                    ; preds = %1819
  %1835 = extractvalue %dx.types.ResRet.f32 %1825, 2
  %1836 = select i1 %1831, float %1835, float %1826
  %1837 = extractvalue %dx.types.ResRet.f32 %1825, 0
  %1838 = select i1 %1831, float %1837, float %1826
  %1839 = add i32 %48, 112
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = lshr i32 %1841, 16
  %1843 = and i32 %1842, 255
  %1844 = uitofp i32 %1843 to float
  %1845 = fmul fast float %1844, 0x3F80101020000000
  %1846 = fmul fast float %1845, %1838
  %1847 = fmul fast float %1845, %1826
  %1848 = fmul fast float %1845, %1836
  br label %1849

; <label>:1849                                    ; preds = %1834, %1819
  %1850 = phi float [ %1846, %1834 ], [ 0.000000e+00, %1819 ]
  %1851 = phi float [ %1847, %1834 ], [ 0.000000e+00, %1819 ]
  %1852 = phi float [ %1848, %1834 ], [ 0.000000e+00, %1819 ]
  %1853 = and i32 %1829, 2048
  %1854 = icmp eq i32 %1853, 0
  br i1 %1854, label %1863, label %1855

; <label>:1855                                    ; preds = %1849
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = shl i32 %1857, 4
  %1859 = and i32 %1858, 32752
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = fmul fast float %1860, %1827
  %1862 = call float @dx.op.binary.f32(i32 35, float %1861, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1863

; <label>:1863                                    ; preds = %1855, %1849, %1811
  %1864 = phi float [ %1850, %1855 ], [ %1850, %1849 ], [ 0.000000e+00, %1811 ]
  %1865 = phi float [ %1851, %1855 ], [ %1851, %1849 ], [ 0.000000e+00, %1811 ]
  %1866 = phi float [ %1852, %1855 ], [ %1852, %1849 ], [ 0.000000e+00, %1811 ]
  %1867 = phi float [ %1862, %1855 ], [ 0x3F70101020000000, %1849 ], [ 0x3F70101020000000, %1811 ]
  %1868 = add i32 %48, 112
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = and i32 %1870, 255
  %1872 = uitofp i32 %1871 to float
  %1873 = lshr i32 %1870, 8
  %1874 = and i32 %1873, 255
  %1875 = uitofp i32 %1874 to float
  %1876 = call float @dx.op.dot3.f32(i32 55, float %1684, float %1685, float %1686, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1877 = fmul fast float %1875, %1876
  %1878 = fadd fast float %1877, %1872
  %1879 = fmul fast float %1878, 0x3F70101020000000
  %1880 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  br i1 %1168, label %1881, label %1889

; <label>:1881                                    ; preds = %1863
  %1882 = fsub fast float 1.000000e+00, %1464
  %1883 = fmul fast float %1882, %1152
  %1884 = fmul fast float %1882, %1153
  %1885 = fmul fast float %1882, %1154
  %1886 = fmul fast float %1882, %1155
  %1887 = fmul fast float %1882, %1156
  %1888 = fmul fast float %1882, %1157
  br label %1889

; <label>:1889                                    ; preds = %1881, %1863
  %1890 = phi float [ %1883, %1881 ], [ %1152, %1863 ]
  %1891 = phi float [ %1884, %1881 ], [ %1153, %1863 ]
  %1892 = phi float [ %1885, %1881 ], [ %1154, %1863 ]
  %1893 = phi float [ %1886, %1881 ], [ %1155, %1863 ]
  %1894 = phi float [ %1887, %1881 ], [ %1156, %1863 ]
  %1895 = phi float [ %1888, %1881 ], [ %1157, %1863 ]
  %1896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1897 = extractvalue %dx.types.ResRet.i32 %1896, 0
  %1898 = and i32 %1897, 3
  %1899 = icmp eq i32 %1898, 3
  br i1 %1899, label %1978, label %1900

; <label>:1900                                    ; preds = %1889
  %1901 = and i32 %1897, 16
  %1902 = icmp ne i32 %1901, 0
  %1903 = select i1 %1902, float %1464, float 0.000000e+00
  %1904 = icmp eq i32 %1898, 0
  br i1 %1904, label %1905, label %1933

; <label>:1905                                    ; preds = %1900
  %1906 = and i32 %1897, 64
  %1907 = icmp ne i32 %1906, 0
  %1908 = select i1 %1907, float %1464, float 0.000000e+00
  %1909 = fsub fast float %1684, %1890
  %1910 = fsub fast float %1685, %1891
  %1911 = fsub fast float %1686, %1892
  %1912 = fmul fast float %1903, %1909
  %1913 = fmul fast float %1903, %1910
  %1914 = fmul fast float %1903, %1911
  %1915 = fadd fast float %1912, %1890
  %1916 = fadd fast float %1913, %1891
  %1917 = fadd fast float %1914, %1892
  %1918 = fsub fast float %1670, %1161
  %1919 = fmul fast float %1903, %1918
  %1920 = fadd fast float %1919, %1161
  %1921 = fsub fast float %1812, %1893
  %1922 = fsub fast float %1813, %1894
  %1923 = fsub fast float %1814, %1895
  %1924 = fmul fast float %1908, %1921
  %1925 = fmul fast float %1908, %1922
  %1926 = fmul fast float %1908, %1923
  %1927 = fadd fast float %1924, %1893
  %1928 = fadd fast float %1925, %1894
  %1929 = fadd fast float %1926, %1895
  %1930 = fsub fast float %1880, %1166
  %1931 = fmul fast float %1903, %1930
  %1932 = fadd fast float %1931, %1166
  br label %1978

; <label>:1933                                    ; preds = %1900
  %1934 = icmp eq i32 %1898, 1
  br i1 %1934, label %1935, label %1948

; <label>:1935                                    ; preds = %1933
  %1936 = fadd fast float %1684, -1.000000e+00
  %1937 = fadd fast float %1685, -1.000000e+00
  %1938 = fadd fast float %1686, -1.000000e+00
  %1939 = fmul fast float %1903, %1936
  %1940 = fmul fast float %1903, %1937
  %1941 = fmul fast float %1903, %1938
  %1942 = fadd fast float %1939, 1.000000e+00
  %1943 = fadd fast float %1940, 1.000000e+00
  %1944 = fadd fast float %1941, 1.000000e+00
  %1945 = fmul fast float %1942, %1890
  %1946 = fmul fast float %1943, %1891
  %1947 = fmul fast float %1944, %1892
  br label %1978

; <label>:1948                                    ; preds = %1933
  %1949 = icmp eq i32 %1898, 2
  br i1 %1949, label %1950, label %1978

; <label>:1950                                    ; preds = %1948
  %1951 = call float @dx.op.unary.f32(i32 24, float %1684)  ; Sqrt(value)
  %1952 = call float @dx.op.unary.f32(i32 24, float %1685)  ; Sqrt(value)
  %1953 = call float @dx.op.unary.f32(i32 24, float %1686)  ; Sqrt(value)
  %1954 = fadd fast float %1951, -5.000000e-01
  %1955 = fadd fast float %1952, -5.000000e-01
  %1956 = fadd fast float %1953, -5.000000e-01
  %1957 = fmul fast float %1954, %1903
  %1958 = fmul fast float %1955, %1903
  %1959 = fmul fast float %1956, %1903
  %1960 = fadd fast float %1957, 5.000000e-01
  %1961 = fadd fast float %1958, 5.000000e-01
  %1962 = fadd fast float %1959, 5.000000e-01
  %1963 = fmul fast float %1960, 2.000000e+00
  %1964 = fsub fast float 1.000000e+00, %1963
  %1965 = fmul fast float %1964, %1890
  %1966 = fadd fast float %1965, %1963
  %1967 = fmul fast float %1966, %1890
  %1968 = fmul fast float %1961, 2.000000e+00
  %1969 = fsub fast float 1.000000e+00, %1968
  %1970 = fmul fast float %1969, %1891
  %1971 = fadd fast float %1970, %1968
  %1972 = fmul fast float %1971, %1891
  %1973 = fmul fast float %1962, 2.000000e+00
  %1974 = fsub fast float 1.000000e+00, %1973
  %1975 = fmul fast float %1974, %1892
  %1976 = fadd fast float %1975, %1973
  %1977 = fmul fast float %1976, %1892
  br label %1978

; <label>:1978                                    ; preds = %1950, %1948, %1935, %1905, %1889
  %1979 = phi float [ %1890, %1889 ], [ %1967, %1950 ], [ %1890, %1948 ], [ %1945, %1935 ], [ %1915, %1905 ]
  %1980 = phi float [ %1891, %1889 ], [ %1972, %1950 ], [ %1891, %1948 ], [ %1946, %1935 ], [ %1916, %1905 ]
  %1981 = phi float [ %1892, %1889 ], [ %1977, %1950 ], [ %1892, %1948 ], [ %1947, %1935 ], [ %1917, %1905 ]
  %1982 = phi float [ %1893, %1889 ], [ %1893, %1950 ], [ %1893, %1948 ], [ %1893, %1935 ], [ %1927, %1905 ]
  %1983 = phi float [ %1894, %1889 ], [ %1894, %1950 ], [ %1894, %1948 ], [ %1894, %1935 ], [ %1928, %1905 ]
  %1984 = phi float [ %1895, %1889 ], [ %1895, %1950 ], [ %1895, %1948 ], [ %1895, %1935 ], [ %1929, %1905 ]
  %1985 = phi float [ %1161, %1889 ], [ %1161, %1950 ], [ %1161, %1948 ], [ %1161, %1935 ], [ %1920, %1905 ]
  %1986 = phi float [ %1166, %1889 ], [ %1166, %1950 ], [ %1166, %1948 ], [ %1166, %1935 ], [ %1932, %1905 ]
  %1987 = and i32 %1897, 12
  %1988 = icmp eq i32 %1987, 12
  br i1 %1988, label %2095, label %1989

; <label>:1989                                    ; preds = %1978
  %1990 = and i32 %1897, 2097184
  %1991 = icmp eq i32 %1990, 2097184
  %1992 = select i1 %1991, float %1464, float 0.000000e+00
  %1993 = and i32 %1897, 4194336
  %1994 = icmp eq i32 %1993, 4194336
  %1995 = select i1 %1994, float %1464, float 0.000000e+00
  %1996 = and i32 %1897, 8388640
  %1997 = icmp eq i32 %1996, 8388640
  %1998 = select i1 %1997, float %1464, float 0.000000e+00
  %1999 = and i32 %1897, 2048
  %2000 = icmp ne i32 %1999, 0
  %2001 = select i1 %2000, float %1464, float 0.000000e+00
  %2002 = and i32 %1897, 8192
  %2003 = icmp ne i32 %2002, 0
  %2004 = select i1 %2003, float %1464, float 0.000000e+00
  %2005 = icmp eq i32 %1987, 0
  br i1 %2005, label %2006, label %2031

; <label>:2006                                    ; preds = %1989
  %2007 = fsub fast float %1765, %1150
  %2008 = fsub fast float %1766, %1151
  %2009 = fmul fast float %1992, %2007
  %2010 = fmul fast float %1992, %2008
  %2011 = fadd fast float %2009, %1150
  %2012 = fadd fast float %2010, %1151
  %2013 = fsub fast float %1767, %1164
  %2014 = fmul fast float %1995, %2013
  %2015 = fadd fast float %2014, %1164
  %2016 = fsub fast float %1764, %1163
  %2017 = fmul fast float %1998, %2016
  %2018 = fadd fast float %2017, %1163
  %2019 = fsub fast float %1867, %1165
  %2020 = fmul fast float %2001, %2019
  %2021 = fadd fast float %2020, %1165
  %2022 = fsub fast float %1864, %1158
  %2023 = fsub fast float %1865, %1159
  %2024 = fsub fast float %1866, %1160
  %2025 = fmul fast float %2004, %2022
  %2026 = fmul fast float %2004, %2023
  %2027 = fmul fast float %2004, %2024
  %2028 = fadd fast float %2025, %1158
  %2029 = fadd fast float %2026, %1159
  %2030 = fadd fast float %2027, %1160
  br label %2095

; <label>:2031                                    ; preds = %1989
  %2032 = icmp eq i32 %1987, 4
  br i1 %2032, label %2033, label %2073

; <label>:2033                                    ; preds = %2031
  %2034 = fmul fast float %1992, %1765
  %2035 = fmul fast float %1992, %1766
  %2036 = fadd fast float %2034, %1150
  %2037 = fadd fast float %2035, %1151
  %2038 = call float @dx.op.binary.f32(i32 36, float %1164, float %1767)  ; FMin(a,b)
  %2039 = fsub fast float %2038, %1164
  %2040 = fmul fast float %2039, %1995
  %2041 = fadd fast float %2040, %1164
  %2042 = fadd fast float %1764, %1163
  %2043 = fmul fast float %2042, 0x3FF337FAE0000000
  %2044 = fmul fast float %1163, %1163
  %2045 = fmul fast float %1764, %1764
  %2046 = fadd fast float %2045, %2044
  %2047 = fmul fast float %2046, 0x3FE5152B00000000
  %2048 = fmul fast float %1163, 0xBFCC1F85E0000000
  %2049 = fmul fast float %2048, %1764
  %2050 = fadd fast float %2049, 0xBFE1363700000000
  %2051 = fadd fast float %2050, %2043
  %2052 = fsub fast float %2051, %2047
  %2053 = fmul fast float %2042, 0x3FBA6F0D00000000
  %2054 = fmul fast float %2046, 0x3FD0432880000000
  %2055 = fmul fast float %1163, 0xBFEF110800000000
  %2056 = fmul fast float %2055, %1764
  %2057 = fadd fast float %2056, 1.000000e+00
  %2058 = fsub fast float %2057, %2053
  %2059 = fadd fast float %2058, %2054
  %2060 = fdiv fast float %2052, %2059
  %2061 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2062 = fsub fast float %2061, %1163
  %2063 = fmul fast float %2062, %1998
  %2064 = fadd fast float %2063, %1163
  %2065 = fmul fast float %2001, %1867
  %2066 = fadd fast float %2065, %1165
  %2067 = fmul fast float %2004, %1864
  %2068 = fmul fast float %2004, %1865
  %2069 = fmul fast float %2004, %1866
  %2070 = fadd fast float %2067, %1158
  %2071 = fadd fast float %2068, %1159
  %2072 = fadd fast float %2069, %1160
  br label %2095

; <label>:2073                                    ; preds = %2031
  %2074 = icmp eq i32 %1987, 8
  br i1 %2074, label %2075, label %2095

; <label>:2075                                    ; preds = %2073
  %2076 = fmul fast float %1992, %1765
  %2077 = fmul fast float %1992, %1766
  %2078 = fadd fast float %2076, %1150
  %2079 = fadd fast float %2077, %1151
  %2080 = call float @dx.op.binary.f32(i32 36, float %1164, float %1767)  ; FMin(a,b)
  %2081 = fsub fast float %2080, %1164
  %2082 = fmul fast float %2081, %1995
  %2083 = fadd fast float %2082, %1164
  %2084 = fsub fast float %1764, %1163
  %2085 = fmul fast float %1998, %2084
  %2086 = fadd fast float %2085, %1163
  %2087 = fmul fast float %2001, %1867
  %2088 = fadd fast float %2087, %1165
  %2089 = fmul fast float %2004, %1864
  %2090 = fmul fast float %2004, %1865
  %2091 = fmul fast float %2004, %1866
  %2092 = fadd fast float %2089, %1158
  %2093 = fadd fast float %2090, %1159
  %2094 = fadd fast float %2091, %1160
  br label %2095

; <label>:2095                                    ; preds = %2075, %2073, %2033, %2006, %1978, %1463, %1167, %1149
  %2096 = phi float [ %1150, %1978 ], [ %1150, %1463 ], [ %1150, %1149 ], [ %2078, %2075 ], [ %1150, %2073 ], [ %2036, %2033 ], [ %2011, %2006 ], [ %1150, %1167 ]
  %2097 = phi float [ %1151, %1978 ], [ %1151, %1463 ], [ %1151, %1149 ], [ %2079, %2075 ], [ %1151, %2073 ], [ %2037, %2033 ], [ %2012, %2006 ], [ %1151, %1167 ]
  %2098 = phi float [ %1979, %1978 ], [ %1152, %1463 ], [ %1152, %1149 ], [ %1979, %2075 ], [ %1979, %2073 ], [ %1979, %2033 ], [ %1979, %2006 ], [ %1152, %1167 ]
  %2099 = phi float [ %1980, %1978 ], [ %1153, %1463 ], [ %1153, %1149 ], [ %1980, %2075 ], [ %1980, %2073 ], [ %1980, %2033 ], [ %1980, %2006 ], [ %1153, %1167 ]
  %2100 = phi float [ %1981, %1978 ], [ %1154, %1463 ], [ %1154, %1149 ], [ %1981, %2075 ], [ %1981, %2073 ], [ %1981, %2033 ], [ %1981, %2006 ], [ %1154, %1167 ]
  %2101 = phi float [ %1982, %1978 ], [ %1155, %1463 ], [ %1155, %1149 ], [ %1982, %2075 ], [ %1982, %2073 ], [ %1982, %2033 ], [ %1982, %2006 ], [ %1155, %1167 ]
  %2102 = phi float [ %1983, %1978 ], [ %1156, %1463 ], [ %1156, %1149 ], [ %1983, %2075 ], [ %1983, %2073 ], [ %1983, %2033 ], [ %1983, %2006 ], [ %1156, %1167 ]
  %2103 = phi float [ %1984, %1978 ], [ %1157, %1463 ], [ %1157, %1149 ], [ %1984, %2075 ], [ %1984, %2073 ], [ %1984, %2033 ], [ %1984, %2006 ], [ %1157, %1167 ]
  %2104 = phi float [ %1158, %1978 ], [ %1158, %1463 ], [ %1158, %1149 ], [ %2092, %2075 ], [ %1158, %2073 ], [ %2070, %2033 ], [ %2028, %2006 ], [ %1158, %1167 ]
  %2105 = phi float [ %1159, %1978 ], [ %1159, %1463 ], [ %1159, %1149 ], [ %2093, %2075 ], [ %1159, %2073 ], [ %2071, %2033 ], [ %2029, %2006 ], [ %1159, %1167 ]
  %2106 = phi float [ %1160, %1978 ], [ %1160, %1463 ], [ %1160, %1149 ], [ %2094, %2075 ], [ %1160, %2073 ], [ %2072, %2033 ], [ %2030, %2006 ], [ %1160, %1167 ]
  %2107 = phi float [ %1985, %1978 ], [ %1161, %1463 ], [ %1161, %1149 ], [ %1985, %2075 ], [ %1985, %2073 ], [ %1985, %2033 ], [ %1985, %2006 ], [ %1161, %1167 ]
  %2108 = phi float [ %1163, %1978 ], [ %1163, %1463 ], [ %1163, %1149 ], [ %2086, %2075 ], [ %1163, %2073 ], [ %2064, %2033 ], [ %2018, %2006 ], [ %1163, %1167 ]
  %2109 = phi float [ %1164, %1978 ], [ %1164, %1463 ], [ %1164, %1149 ], [ %2083, %2075 ], [ %1164, %2073 ], [ %2041, %2033 ], [ %2015, %2006 ], [ %1164, %1167 ]
  %2110 = phi float [ %1165, %1978 ], [ %1165, %1463 ], [ %1165, %1149 ], [ %2088, %2075 ], [ %1165, %2073 ], [ %2066, %2033 ], [ %2021, %2006 ], [ %1165, %1167 ]
  %2111 = phi float [ %1986, %1978 ], [ %1166, %1463 ], [ %1166, %1149 ], [ %1986, %2075 ], [ %1986, %2073 ], [ %1986, %2033 ], [ %1986, %2006 ], [ %1166, %1167 ]
  br i1 %576, label %3040, label %2112

; <label>:2112                                    ; preds = %2095
  %2113 = icmp ult i32 %629, 3
  %2114 = add i32 %48, 56
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = add i32 %48, 60
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = or i32 %2119, %2116
  %2121 = icmp eq i32 %2120, 0
  br i1 %2121, label %3040, label %2122

; <label>:2122                                    ; preds = %2112
  %2123 = and i32 %2116, 262144
  %2124 = icmp ne i32 %2123, 0
  %2125 = select i1 %2124, float %55, float 1.000000e+00
  %2126 = select i1 %2124, float %56, float 0.000000e+00
  %2127 = select i1 %2124, float %57, float 0.000000e+00
  %2128 = select i1 %2124, float %58, float 1.000000e+00
  %2129 = select i1 %2124, float %59, float %68
  %2130 = select i1 %2124, float %60, float %69
  %2131 = add i32 %48, 316
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = lshr i32 %2133, 16
  %2135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2134)  ; LegacyF16ToF32(value)
  %2136 = fmul fast float %2135, 0x3F50624DE0000000
  %2137 = add i32 %48, 120
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = lshr i32 %2139, 16
  %2141 = and i32 %2140, 255
  %2142 = lshr i32 %2139, 24
  %2143 = add i32 %48, 324
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2143, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = and i32 %2145, 65535
  %2147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2146)  ; LegacyF16ToF32(value)
  %2148 = lshr i32 %2145, 16
  %2149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2148)  ; LegacyF16ToF32(value)
  %2150 = add i32 %48, 64
  %2151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2150, i32 undef)  ; BufferLoad(srv,index,wot)
  %2152 = extractvalue %dx.types.ResRet.i32 %2151, 0
  %2153 = lshr i32 %2152, 22
  %2154 = shl nuw nsw i32 %2153, 5
  %2155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2154)  ; LegacyF16ToF32(value)
  %2156 = shl i32 %2152, 4
  %2157 = and i32 %2156, 32752
  %2158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2157)  ; LegacyF16ToF32(value)
  %2159 = lshr i32 %2152, 7
  %2160 = and i32 %2159, 32752
  %2161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2160)  ; LegacyF16ToF32(value)
  %2162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2163 = extractvalue %dx.types.CBufRet.f32 %2162, 3
  %2164 = fmul fast float %2163, 1.000000e+03
  %2165 = fmul fast float %526, %2164
  %2166 = call float @dx.op.unary.f32(i32 22, float %2165)  ; Frc(value)
  %2167 = fadd fast float %2166, %516
  %2168 = fmul fast float %527, %2164
  %2169 = call float @dx.op.unary.f32(i32 22, float %2168)  ; Frc(value)
  %2170 = fadd fast float %2169, %518
  %2171 = fmul fast float %2136, %2164
  %2172 = call float @dx.op.unary.f32(i32 22, float %2171)  ; Frc(value)
  %2173 = fmul fast float %2172, 0x401921FB60000000
  %2174 = fadd fast float %2173, %2155
  %2175 = call float @dx.op.unary.f32(i32 13, float %2174)  ; Sin(value)
  %2176 = call float @dx.op.unary.f32(i32 12, float %2174)  ; Cos(value)
  %2177 = fsub fast float -0.000000e+00, %2175
  %2178 = fadd fast float %2129, -5.000000e-01
  %2179 = fadd fast float %2130, -5.000000e-01
  %2180 = fmul fast float %2147, %2178
  %2181 = fmul fast float %2149, %2179
  %2182 = fadd fast float %2180, 5.000000e-01
  %2183 = fadd fast float %2181, 5.000000e-01
  %2184 = fmul fast float %2158, %2182
  %2185 = fmul fast float %2161, %2183
  %2186 = fmul fast float %2176, %2184
  %2187 = call float @dx.op.tertiary.f32(i32 46, float %2177, float %2185, float %2186)  ; FMad(a,b,c)
  %2188 = fmul fast float %2175, %2184
  %2189 = call float @dx.op.tertiary.f32(i32 46, float %2176, float %2185, float %2188)  ; FMad(a,b,c)
  %2190 = fadd fast float %2167, %2187
  %2191 = fadd fast float %2170, %2189
  %2192 = icmp ugt i32 %2141, 1
  %2193 = icmp ugt i32 %2139, 33554431
  %2194 = or i1 %2193, %2192
  br i1 %2194, label %2195, label %2220

; <label>:2195                                    ; preds = %2122
  %2196 = add i32 %48, 260
  %2197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2196, i32 undef)  ; BufferLoad(srv,index,wot)
  %2198 = extractvalue %dx.types.ResRet.i32 %2197, 0
  %2199 = lshr i32 %2198, 16
  %2200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2199)  ; LegacyF16ToF32(value)
  %2201 = fmul fast float %2163, %2200
  %2202 = call float @dx.op.unary.f32(i32 22, float %2201)  ; Frc(value)
  %2203 = mul nuw nsw i32 %2141, %2142
  %2204 = uitofp i32 %2203 to float
  %2205 = fmul fast float %2202, %2204
  %2206 = call float @dx.op.unary.f32(i32 27, float %2205)  ; Round_ni(value)
  %2207 = fptoui float %2206 to i32
  %2208 = urem i32 %2207, %2141
  %2209 = udiv i32 %2207, %2142
  %2210 = call float @dx.op.unary.f32(i32 22, float %2190)  ; Frc(value)
  %2211 = call float @dx.op.unary.f32(i32 22, float %2191)  ; Frc(value)
  %2212 = uitofp i32 %2208 to float
  %2213 = uitofp i32 %2209 to float
  %2214 = fadd fast float %2210, %2212
  %2215 = fadd fast float %2211, %2213
  %2216 = uitofp i32 %2141 to float
  %2217 = uitofp i32 %2142 to float
  %2218 = fdiv fast float %2214, %2216
  %2219 = fdiv fast float %2215, %2217
  br label %2220

; <label>:2220                                    ; preds = %2195, %2122
  %2221 = phi float [ %2218, %2195 ], [ %2190, %2122 ]
  %2222 = phi float [ %2219, %2195 ], [ %2191, %2122 ]
  %2223 = and i32 %2116, 16777216
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2334, label %2225

; <label>:2225                                    ; preds = %2220
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.CBufRet.f32 %2226, 1
  %2229 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2230 = fadd fast float %2227, %151
  %2231 = fadd fast float %2228, %152
  %2232 = fadd fast float %2229, %153
  %2233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.f32 %2233, 0
  %2235 = call float @dx.op.unary.f32(i32 7, float %2234)  ; Saturate(value)
  %2236 = icmp eq i32 %49, 65535
  br i1 %2236, label %2331, label %2237

; <label>:2237                                    ; preds = %2225
  %2238 = lshr i32 %49, 1
  %2239 = shl i32 %2238, 2
  %2240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2239, i32 undef)  ; BufferLoad(srv,index,wot)
  %2241 = extractvalue %dx.types.ResRet.i32 %2240, 0
  %2242 = and i32 %49, 1
  %2243 = icmp ne i32 %2242, 0
  %2244 = lshr i32 %2241, 16
  %2245 = and i32 %2241, 65535
  %2246 = select i1 %2243, i32 %2244, i32 %2245
  %2247 = icmp eq i32 %2246, 65535
  br i1 %2247, label %2327, label %2248

; <label>:2248                                    ; preds = %2237
  %2249 = mul nuw nsw i32 %2246, 40
  %2250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.f32 %2250, 0
  %2252 = extractvalue %dx.types.ResRet.f32 %2250, 1
  %2253 = extractvalue %dx.types.ResRet.f32 %2250, 2
  %2254 = add nuw nsw i32 %2249, 12
  %2255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.f32 %2255, 0
  %2257 = extractvalue %dx.types.ResRet.f32 %2255, 1
  %2258 = extractvalue %dx.types.ResRet.f32 %2255, 2
  %2259 = add nuw nsw i32 %2249, 24
  %2260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = extractvalue %dx.types.ResRet.f32 %2260, 1
  %2263 = extractvalue %dx.types.ResRet.f32 %2260, 2
  %2264 = add nuw nsw i32 %2249, 36
  %2265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.f32 %2265, 0
  %2267 = fsub fast float %2230, %2251
  %2268 = fsub fast float %2231, %2252
  %2269 = fsub fast float %2232, %2253
  %2270 = fmul fast float %2266, %2267
  %2271 = fmul fast float %2266, %2268
  %2272 = fmul fast float %2266, %2269
  %2273 = call float @dx.op.unary.f32(i32 27, float %2270)  ; Round_ni(value)
  %2274 = call float @dx.op.unary.f32(i32 27, float %2271)  ; Round_ni(value)
  %2275 = call float @dx.op.unary.f32(i32 27, float %2272)  ; Round_ni(value)
  %2276 = fadd fast float %2273, 5.000000e-01
  %2277 = fadd fast float %2274, 5.000000e-01
  %2278 = fadd fast float %2275, 5.000000e-01
  %2279 = fmul fast float %2276, %2256
  %2280 = fmul fast float %2277, %2257
  %2281 = fmul fast float %2278, %2258
  %2282 = shl i32 %49, 2
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = add i32 %2284, 0
  %2286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2287 = call float @dx.op.unary.f32(i32 22, float %2279)  ; Frc(value)
  %2288 = call float @dx.op.unary.f32(i32 22, float %2280)  ; Frc(value)
  %2289 = call float @dx.op.unary.f32(i32 22, float %2281)  ; Frc(value)
  %2290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2286, %dx.types.Handle %43, float %2287, float %2288, float %2289, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = extractvalue %dx.types.ResRet.f32 %2290, 1
  %2293 = extractvalue %dx.types.ResRet.f32 %2290, 2
  %2294 = fmul fast float %2291, 1.023000e+03
  %2295 = fmul fast float %2292, 1.023000e+03
  %2296 = fmul fast float %2293, 1.023000e+03
  %2297 = fadd fast float %2294, 5.000000e-01
  %2298 = fadd fast float %2295, 5.000000e-01
  %2299 = fadd fast float %2296, 5.000000e-01
  %2300 = call float @dx.op.unary.f32(i32 27, float %2297)  ; Round_ni(value)
  %2301 = call float @dx.op.unary.f32(i32 27, float %2298)  ; Round_ni(value)
  %2302 = call float @dx.op.unary.f32(i32 27, float %2299)  ; Round_ni(value)
  %2303 = fsub fast float %2270, %2273
  %2304 = fsub fast float %2271, %2274
  %2305 = fsub fast float %2272, %2275
  %2306 = fmul fast float %2303, 7.500000e-01
  %2307 = fmul fast float %2304, 7.500000e-01
  %2308 = fmul fast float %2305, 7.500000e-01
  %2309 = fadd fast float %2273, 1.250000e-01
  %2310 = fadd fast float %2309, %2306
  %2311 = fadd fast float %2310, %2300
  %2312 = fadd fast float %2274, 1.250000e-01
  %2313 = fadd fast float %2312, %2307
  %2314 = fadd fast float %2313, %2301
  %2315 = fadd fast float %2275, 1.250000e-01
  %2316 = fadd fast float %2315, %2308
  %2317 = fadd fast float %2316, %2302
  %2318 = fmul fast float %2311, %2261
  %2319 = fmul fast float %2314, %2262
  %2320 = fmul fast float %2317, %2263
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = add i32 %2322, 0
  %2324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2323, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2325 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2324, %dx.types.Handle %41, float %2318, float %2319, float %2320, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  br label %2327

; <label>:2327                                    ; preds = %2248, %2237
  %2328 = phi float [ %2326, %2248 ], [ -1.000000e+00, %2237 ]
  %2329 = fadd fast float %2328, %2235
  %2330 = call float @dx.op.unary.f32(i32 7, float %2329)  ; Saturate(value)
  br label %2331

; <label>:2331                                    ; preds = %2327, %2225
  %2332 = phi float [ %2330, %2327 ], [ %2235, %2225 ]
  %2333 = fmul fast float %2332, %625
  br label %2334

; <label>:2334                                    ; preds = %2331, %2220
  %2335 = phi float [ %2333, %2331 ], [ %625, %2220 ]
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = and i32 %2337, 256
  %2339 = icmp eq i32 %2338, 0
  br i1 %2339, label %2386, label %2340

; <label>:2340                                    ; preds = %2334
  %2341 = add i32 %48, 528
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = add i32 %2343, 0
  %2345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2345, %dx.types.Handle %92, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2347 = extractvalue %dx.types.ResRet.f32 %2346, 0
  %2348 = add i32 %48, 132
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = shl i32 %2350, 4
  %2352 = and i32 %2351, 32752
  %2353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2352)  ; LegacyF16ToF32(value)
  %2354 = lshr i32 %2350, 7
  %2355 = and i32 %2354, 32752
  %2356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2355)  ; LegacyF16ToF32(value)
  %2357 = fsub fast float 1.000000e+00, %2335
  %2358 = call float @dx.op.binary.f32(i32 35, float %2357, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2359 = bitcast float %2335 to i32
  %2360 = sitofp i32 %2359 to float
  %2361 = fadd fast float %2360, 0xC1CFBF8940000000
  %2362 = fmul fast float %2356, %2361
  %2363 = fadd fast float %2362, 0x41CFBF8940000000
  %2364 = fptosi float %2363 to i32
  %2365 = bitcast i32 %2364 to float
  %2366 = bitcast float %2358 to i32
  %2367 = sitofp i32 %2366 to float
  %2368 = fadd fast float %2367, 0xC1CFBF8940000000
  %2369 = fmul fast float %2368, %2356
  %2370 = fadd fast float %2369, 0x41CFBF8940000000
  %2371 = fptosi float %2370 to i32
  %2372 = bitcast i32 %2371 to float
  %2373 = fmul fast float %2365, %2353
  %2374 = fmul fast float %2372, %2353
  %2375 = fsub fast float %2358, %2373
  %2376 = fadd fast float %2374, %2358
  %2377 = call float @dx.op.unary.f32(i32 7, float %2375)  ; Saturate(value)
  %2378 = call float @dx.op.unary.f32(i32 7, float %2376)  ; Saturate(value)
  %2379 = fsub fast float %2347, %2377
  %2380 = fsub fast float %2378, %2377
  %2381 = bitcast float %2380 to i32
  %2382 = sub nsw i32 2129859010, %2381
  %2383 = bitcast i32 %2382 to float
  %2384 = fmul fast float %2383, %2379
  %2385 = call float @dx.op.unary.f32(i32 7, float %2384)  ; Saturate(value)
  br label %2386

; <label>:2386                                    ; preds = %2340, %2334
  %2387 = phi float [ %2385, %2340 ], [ %2335, %2334 ]
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 128
  %2391 = icmp eq i32 %2390, 0
  br i1 %2391, label %2408, label %2392

; <label>:2392                                    ; preds = %2386
  %2393 = add i32 %48, 512
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = add i32 %2395, 0
  %2397 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2396, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2398 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2397, %dx.types.Handle %92, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2399 = extractvalue %dx.types.ResRet.f32 %2398, 0
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 524288
  %2403 = icmp ne i32 %2402, 0
  %2404 = fcmp fast ogt float %2399, 0x3FE0101020000000
  %2405 = select i1 %2404, float 1.000000e+00, float 0.000000e+00
  %2406 = select i1 %2403, float %2405, float %2399
  %2407 = fmul fast float %2406, %2387
  br label %2408

; <label>:2408                                    ; preds = %2392, %2386
  %2409 = phi float [ %2407, %2392 ], [ %2387, %2386 ]
  %2410 = fcmp fast ult float %2409, 0x3F70101020000000
  br i1 %2410, label %3040, label %2411

; <label>:2411                                    ; preds = %2408
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 16
  %2415 = icmp eq i32 %2414, 0
  br i1 %2415, label %2614, label %2416

; <label>:2416                                    ; preds = %2411
  %2417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2418 = extractvalue %dx.types.ResRet.i32 %2417, 0
  %2419 = add i32 %48, 464
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2419, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = add i32 %2421, 0
  %2423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2423, %dx.types.Handle %91, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2425 = extractvalue %dx.types.ResRet.f32 %2424, 0
  %2426 = extractvalue %dx.types.ResRet.f32 %2424, 1
  %2427 = extractvalue %dx.types.ResRet.f32 %2424, 2
  %2428 = extractvalue %dx.types.ResRet.f32 %2424, 3
  %2429 = and i32 %2418, 255
  %2430 = uitofp i32 %2429 to float
  %2431 = lshr i32 %2418, 8
  %2432 = and i32 %2431, 255
  %2433 = uitofp i32 %2432 to float
  %2434 = fmul fast float %2428, %2430
  %2435 = fadd fast float %2434, %2433
  %2436 = fmul fast float %2435, 0x3F70101000000000
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 512
  %2440 = icmp eq i32 %2439, 0
  br i1 %2440, label %2449, label %2441

; <label>:2441                                    ; preds = %2416
  %2442 = add i32 %48, 544
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = add i32 %2444, 0
  %2446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2446, %dx.types.Handle %92, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2448 = extractvalue %dx.types.ResRet.f32 %2447, 0
  br label %2449

; <label>:2449                                    ; preds = %2441, %2416
  %2450 = phi float [ %2448, %2441 ], [ 1.000000e+00, %2416 ]
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = and i32 %2452, 33554432
  %2454 = icmp eq i32 %2453, 0
  br i1 %2454, label %2561, label %2455

; <label>:2455                                    ; preds = %2449
  %2456 = add i32 %48, 256
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = and i32 %2458, 65535
  %2460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2459)  ; LegacyF16ToF32(value)
  %2461 = lshr i32 %2458, 16
  %2462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2461)  ; LegacyF16ToF32(value)
  %2463 = add i32 %48, 260
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = and i32 %2465, 65535
  %2467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2466)  ; LegacyF16ToF32(value)
  %2468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %2469 = extractvalue %dx.types.ResRet.i32 %2468, 0
  %2470 = lshr i32 %2469, 24
  %2471 = uitofp i32 %2470 to float
  %2472 = fmul fast float %2471, 0x3F70101020000000
  %2473 = and i32 %2469, 255
  %2474 = uitofp i32 %2473 to float
  %2475 = fmul fast float %2474, 0x3F70101020000000
  %2476 = lshr i32 %2469, 8
  %2477 = and i32 %2476, 255
  %2478 = uitofp i32 %2477 to float
  %2479 = fmul fast float %2478, 0x3F70101020000000
  %2480 = lshr i32 %2469, 16
  %2481 = and i32 %2480, 255
  %2482 = uitofp i32 %2481 to float
  %2483 = fmul fast float %2482, 0x3F70101020000000
  %2484 = add i32 %48, 252
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2484, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = lshr i32 %2486, 24
  %2488 = uitofp i32 %2487 to float
  %2489 = fmul fast float %2488, 0x3F70101020000000
  %2490 = and i32 %2486, 255
  %2491 = uitofp i32 %2490 to float
  %2492 = fmul fast float %2491, 0x3F70101020000000
  %2493 = lshr i32 %2486, 8
  %2494 = and i32 %2493, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = lshr i32 %2486, 16
  %2498 = and i32 %2497, 255
  %2499 = uitofp i32 %2498 to float
  %2500 = fmul fast float %2499, 0x3F70101020000000
  %2501 = bitcast float %2425 to i32
  %2502 = ashr i32 %2501, 1
  %2503 = sub nsw i32 1597463174, %2502
  %2504 = bitcast i32 %2503 to float
  %2505 = fmul fast float %2425, 5.000000e-01
  %2506 = fmul fast float %2504, %2504
  %2507 = fmul fast float %2506, %2505
  %2508 = fsub fast float 1.500000e+00, %2507
  %2509 = fmul fast float %2504, %2425
  %2510 = fmul fast float %2509, %2508
  %2511 = bitcast float %2426 to i32
  %2512 = ashr i32 %2511, 1
  %2513 = sub nsw i32 1597463174, %2512
  %2514 = bitcast i32 %2513 to float
  %2515 = fmul fast float %2426, 5.000000e-01
  %2516 = fmul fast float %2514, %2514
  %2517 = fmul fast float %2516, %2515
  %2518 = fsub fast float 1.500000e+00, %2517
  %2519 = fmul fast float %2514, %2426
  %2520 = fmul fast float %2519, %2518
  %2521 = bitcast float %2427 to i32
  %2522 = ashr i32 %2521, 1
  %2523 = sub nsw i32 1597463174, %2522
  %2524 = bitcast i32 %2523 to float
  %2525 = fmul fast float %2427, 5.000000e-01
  %2526 = fmul fast float %2524, %2524
  %2527 = fmul fast float %2526, %2525
  %2528 = fsub fast float 1.500000e+00, %2527
  %2529 = fmul fast float %2524, %2427
  %2530 = fmul fast float %2529, %2528
  %2531 = fsub fast float %2510, %2492
  %2532 = fsub fast float %2520, %2496
  %2533 = fsub fast float %2530, %2500
  %2534 = fmul fast float %2531, %2460
  %2535 = fmul fast float %2532, %2462
  %2536 = fmul fast float %2533, %2467
  %2537 = fadd fast float %2534, %2475
  %2538 = fadd fast float %2535, %2479
  %2539 = fadd fast float %2536, %2483
  %2540 = call float @dx.op.unary.f32(i32 7, float %2537)  ; Saturate(value)
  %2541 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2542 = call float @dx.op.unary.f32(i32 7, float %2539)  ; Saturate(value)
  %2543 = fmul fast float %2540, %2540
  %2544 = fmul fast float %2541, %2541
  %2545 = fmul fast float %2542, %2542
  %2546 = fsub fast float %2543, %2425
  %2547 = fsub fast float %2544, %2426
  %2548 = fsub fast float %2545, %2427
  %2549 = fmul fast float %2546, %2450
  %2550 = fmul fast float %2547, %2450
  %2551 = fmul fast float %2548, %2450
  %2552 = fadd fast float %2549, %2425
  %2553 = fadd fast float %2550, %2426
  %2554 = fadd fast float %2551, %2427
  %2555 = fadd fast float %2472, %2436
  %2556 = fsub fast float %2555, %2489
  %2557 = call float @dx.op.unary.f32(i32 7, float %2556)  ; Saturate(value)
  %2558 = fsub fast float %2557, %2436
  %2559 = fmul fast float %2558, %2450
  %2560 = fadd fast float %2559, %2436
  br label %2614

; <label>:2561                                    ; preds = %2449
  %2562 = and i32 %2452, 134217728
  %2563 = icmp eq i32 %2562, 0
  br i1 %2563, label %2598, label %2564

; <label>:2564                                    ; preds = %2561
  %2565 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %2566 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %2567 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %2568 = fadd fast float %2565, -5.000000e-01
  %2569 = fadd fast float %2566, -5.000000e-01
  %2570 = fadd fast float %2567, -5.000000e-01
  %2571 = fmul fast float %2568, %2450
  %2572 = fmul fast float %2569, %2450
  %2573 = fmul fast float %2570, %2450
  %2574 = fadd fast float %2571, 5.000000e-01
  %2575 = fadd fast float %2572, 5.000000e-01
  %2576 = fadd fast float %2573, 5.000000e-01
  %2577 = call float @dx.op.unary.f32(i32 24, float %2425)  ; Sqrt(value)
  %2578 = call float @dx.op.unary.f32(i32 24, float %2426)  ; Sqrt(value)
  %2579 = call float @dx.op.unary.f32(i32 24, float %2427)  ; Sqrt(value)
  %2580 = fmul fast float %2574, 2.000000e+00
  %2581 = fsub fast float 1.000000e+00, %2580
  %2582 = fmul fast float %2581, %2577
  %2583 = fadd fast float %2582, %2580
  %2584 = fmul fast float %2583, %2577
  %2585 = fmul fast float %2575, 2.000000e+00
  %2586 = fsub fast float 1.000000e+00, %2585
  %2587 = fmul fast float %2586, %2578
  %2588 = fadd fast float %2587, %2585
  %2589 = fmul fast float %2588, %2578
  %2590 = fmul fast float %2576, 2.000000e+00
  %2591 = fsub fast float 1.000000e+00, %2590
  %2592 = fmul fast float %2591, %2579
  %2593 = fadd fast float %2592, %2590
  %2594 = fmul fast float %2593, %2579
  %2595 = fmul fast float %2584, %2584
  %2596 = fmul fast float %2589, %2589
  %2597 = fmul fast float %2594, %2594
  br label %2614

; <label>:2598                                    ; preds = %2561
  %2599 = fmul fast float %503, %503
  %2600 = fmul fast float %507, %507
  %2601 = fmul fast float %511, %511
  %2602 = fadd fast float %2599, -1.000000e+00
  %2603 = fadd fast float %2600, -1.000000e+00
  %2604 = fadd fast float %2601, -1.000000e+00
  %2605 = fmul fast float %2450, %2602
  %2606 = fmul fast float %2450, %2603
  %2607 = fmul fast float %2450, %2604
  %2608 = fadd fast float %2605, 1.000000e+00
  %2609 = fadd fast float %2606, 1.000000e+00
  %2610 = fadd fast float %2607, 1.000000e+00
  %2611 = fmul fast float %2608, %2425
  %2612 = fmul fast float %2609, %2426
  %2613 = fmul fast float %2610, %2427
  br label %2614

; <label>:2614                                    ; preds = %2598, %2564, %2455, %2411
  %2615 = phi float [ %2560, %2455 ], [ %2436, %2564 ], [ %2436, %2598 ], [ 0x3FA23C0BE0000000, %2411 ]
  %2616 = phi float [ %2552, %2455 ], [ %2595, %2564 ], [ %2611, %2598 ], [ 1.000000e+00, %2411 ]
  %2617 = phi float [ %2553, %2455 ], [ %2596, %2564 ], [ %2612, %2598 ], [ 1.000000e+00, %2411 ]
  %2618 = phi float [ %2554, %2455 ], [ %2597, %2564 ], [ %2613, %2598 ], [ 1.000000e+00, %2411 ]
  %2619 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.i32 %2619, 1
  %2621 = and i32 %2620, 1
  %2622 = icmp ne i32 %2621, 0
  %2623 = add i32 %48, 356
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2623, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 32
  %2627 = icmp ne i32 %2626, 0
  %2628 = and i1 %2622, %2627
  %2629 = select i1 %2628, float 1.000000e+00, float %2616
  %2630 = select i1 %2628, float 0x3FD3333340000000, float %2617
  %2631 = select i1 %2628, float 0x3FD3333340000000, float %2618
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2633, 32
  %2635 = icmp eq i32 %2634, 0
  br i1 %2635, label %2708, label %2636

; <label>:2636                                    ; preds = %2614
  %2637 = add i32 %48, 124
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = add i32 %48, 480
  %2641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2640, i32 undef)  ; BufferLoad(srv,index,wot)
  %2642 = extractvalue %dx.types.ResRet.i32 %2641, 0
  %2643 = add i32 %2642, 0
  %2644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2643, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2645 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2644, %dx.types.Handle %91, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2646 = extractvalue %dx.types.ResRet.f32 %2645, 0
  %2647 = extractvalue %dx.types.ResRet.f32 %2645, 1
  %2648 = extractvalue %dx.types.ResRet.f32 %2645, 2
  %2649 = extractvalue %dx.types.ResRet.f32 %2645, 3
  %2650 = and i32 %2639, 255
  %2651 = uitofp i32 %2650 to float
  %2652 = lshr i32 %2639, 8
  %2653 = and i32 %2652, 255
  %2654 = uitofp i32 %2653 to float
  %2655 = lshr i32 %2639, 16
  %2656 = and i32 %2655, 255
  %2657 = uitofp i32 %2656 to float
  %2658 = fmul fast float %2657, 0x3F70101000000000
  %2659 = fmul fast float %2646, %2651
  %2660 = fadd fast float %2659, %2654
  %2661 = fmul fast float %2660, 0x3F70101000000000
  %2662 = fadd fast float %2647, -5.000000e-01
  %2663 = fadd fast float %2649, -5.000000e-01
  %2664 = fmul fast float %2662, %2658
  %2665 = fmul fast float %2663, %2658
  %2666 = fadd fast float %2664, 5.000000e-01
  %2667 = fadd fast float %2665, 5.000000e-01
  %2668 = fmul fast float %2666, 2.000000e+00
  %2669 = fadd fast float %2668, -1.000000e+00
  %2670 = fmul fast float %2667, 2.000000e+00
  %2671 = fadd fast float %2670, -1.000000e+00
  %2672 = fadd fast float %2669, %2671
  %2673 = fmul fast float %2672, 5.000000e-01
  %2674 = fsub fast float %2669, %2671
  %2675 = fmul fast float %2674, 5.000000e-01
  %2676 = call float @dx.op.unary.f32(i32 6, float %2673)  ; FAbs(value)
  %2677 = fsub fast float 1.000000e+00, %2676
  %2678 = call float @dx.op.unary.f32(i32 6, float %2675)  ; FAbs(value)
  %2679 = fsub fast float %2677, %2678
  %2680 = call float @dx.op.dot3.f32(i32 55, float %2673, float %2675, float %2679, float %2673, float %2675, float %2679)  ; Dot3(ax,ay,az,bx,by,bz)
  %2681 = call float @dx.op.unary.f32(i32 25, float %2680)  ; Rsqrt(value)
  %2682 = fmul fast float %2673, %2681
  %2683 = fmul fast float %2675, %2681
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = and i32 %2685, 67108864
  %2687 = icmp eq i32 %2686, 0
  br i1 %2687, label %2704, label %2688

; <label>:2688                                    ; preds = %2636
  %2689 = add i32 %48, 312
  %2690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.i32 %2690, 0
  %2692 = and i32 %2691, 65535
  %2693 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2692)  ; LegacyF16ToF32(value)
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = and i32 %2695, 65535
  %2697 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2696)  ; LegacyF16ToF32(value)
  %2698 = lshr i32 %2691, 16
  %2699 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2698)  ; LegacyF16ToF32(value)
  %2700 = fsub fast float %2661, %2699
  %2701 = fmul fast float %2700, %2693
  %2702 = fadd fast float %2701, %2697
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  br label %2704

; <label>:2704                                    ; preds = %2688, %2636
  %2705 = phi float [ %2703, %2688 ], [ %2661, %2636 ]
  %2706 = call float @dx.op.dot2.f32(i32 54, float %2682, float %2683, float %2125, float %2126)  ; Dot2(ax,ay,bx,by)
  %2707 = call float @dx.op.dot2.f32(i32 54, float %2682, float %2683, float %2127, float %2128)  ; Dot2(ax,ay,bx,by)
  br label %2708

; <label>:2708                                    ; preds = %2704, %2614
  %2709 = phi float [ %2705, %2704 ], [ 0x3FD6666660000000, %2614 ]
  %2710 = phi float [ %2706, %2704 ], [ 0.000000e+00, %2614 ]
  %2711 = phi float [ %2707, %2704 ], [ 0.000000e+00, %2614 ]
  %2712 = phi float [ %2648, %2704 ], [ 1.000000e+00, %2614 ]
  %2713 = add i32 %48, 192
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = lshr i32 %2715, 22
  %2717 = shl nuw nsw i32 %2716, 5
  %2718 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2717)  ; LegacyF16ToF32(value)
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = and i32 %2720, 64
  %2722 = icmp eq i32 %2721, 0
  br i1 %2722, label %2756, label %2723

; <label>:2723                                    ; preds = %2708
  %2724 = add i32 %48, 496
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = add i32 %2726, 0
  %2728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2727, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = and i32 %2730, 131072
  %2732 = icmp eq i32 %2731, 0
  %2733 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2728, %dx.types.Handle %91, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = extractvalue %dx.types.ResRet.f32 %2733, 1
  %2736 = extractvalue %dx.types.ResRet.f32 %2733, 2
  %2737 = fmul fast float %2734, %491
  %2738 = fmul fast float %2735, %494
  %2739 = fmul fast float %2736, %497
  br i1 %2732, label %2746, label %2740

; <label>:2740                                    ; preds = %2723
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 0
  %2743 = fmul fast float %2742, %2737
  %2744 = fmul fast float %2742, %2738
  %2745 = fmul fast float %2742, %2739
  br label %2746

; <label>:2746                                    ; preds = %2740, %2723
  %2747 = phi float [ %2743, %2740 ], [ %2737, %2723 ]
  %2748 = phi float [ %2744, %2740 ], [ %2738, %2723 ]
  %2749 = phi float [ %2745, %2740 ], [ %2739, %2723 ]
  %2750 = fmul fast float %2747, %2718
  %2751 = select i1 %401, float %2750, float %2747
  %2752 = call float @dx.op.dot3.f32(i32 55, float %2751, float %2748, float %2749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2753 = select i1 %401, float 0.000000e+00, float %2747
  %2754 = select i1 %401, float %2752, float %2748
  %2755 = select i1 %401, float 0.000000e+00, float %2749
  br label %2756

; <label>:2756                                    ; preds = %2746, %2708
  %2757 = phi float [ %2753, %2746 ], [ 0.000000e+00, %2708 ]
  %2758 = phi float [ %2754, %2746 ], [ 0.000000e+00, %2708 ]
  %2759 = phi float [ %2755, %2746 ], [ 0.000000e+00, %2708 ]
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = and i32 %2761, 10240
  %2763 = icmp eq i32 %2762, 0
  br i1 %2763, label %2808, label %2764

; <label>:2764                                    ; preds = %2756
  %2765 = add i32 %48, 560
  %2766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.i32 %2766, 0
  %2768 = add i32 %2767, 0
  %2769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2768, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2770 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2769, %dx.types.Handle %92, float %2221, float %2222, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 1
  %2772 = extractvalue %dx.types.ResRet.f32 %2770, 3
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, 1048576
  %2776 = icmp ne i32 %2775, 0
  %2777 = and i32 %2774, 8192
  %2778 = icmp eq i32 %2777, 0
  br i1 %2778, label %2794, label %2779

; <label>:2779                                    ; preds = %2764
  %2780 = extractvalue %dx.types.ResRet.f32 %2770, 2
  %2781 = select i1 %2776, float %2780, float %2771
  %2782 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2783 = select i1 %2776, float %2782, float %2771
  %2784 = add i32 %48, 128
  %2785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2786 = extractvalue %dx.types.ResRet.i32 %2785, 0
  %2787 = lshr i32 %2786, 16
  %2788 = and i32 %2787, 255
  %2789 = uitofp i32 %2788 to float
  %2790 = fmul fast float %2789, 0x3F80101020000000
  %2791 = fmul fast float %2790, %2783
  %2792 = fmul fast float %2790, %2771
  %2793 = fmul fast float %2790, %2781
  br label %2794

; <label>:2794                                    ; preds = %2779, %2764
  %2795 = phi float [ %2791, %2779 ], [ 0.000000e+00, %2764 ]
  %2796 = phi float [ %2792, %2779 ], [ 0.000000e+00, %2764 ]
  %2797 = phi float [ %2793, %2779 ], [ 0.000000e+00, %2764 ]
  %2798 = and i32 %2774, 2048
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2808, label %2800

; <label>:2800                                    ; preds = %2794
  %2801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.i32 %2801, 0
  %2803 = shl i32 %2802, 4
  %2804 = and i32 %2803, 32752
  %2805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2804)  ; LegacyF16ToF32(value)
  %2806 = fmul fast float %2805, %2772
  %2807 = call float @dx.op.binary.f32(i32 35, float %2806, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2808

; <label>:2808                                    ; preds = %2800, %2794, %2756
  %2809 = phi float [ %2795, %2800 ], [ %2795, %2794 ], [ 0.000000e+00, %2756 ]
  %2810 = phi float [ %2796, %2800 ], [ %2796, %2794 ], [ 0.000000e+00, %2756 ]
  %2811 = phi float [ %2797, %2800 ], [ %2797, %2794 ], [ 0.000000e+00, %2756 ]
  %2812 = phi float [ %2807, %2800 ], [ 0x3F70101020000000, %2794 ], [ 0x3F70101020000000, %2756 ]
  %2813 = add i32 %48, 128
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 255
  %2817 = uitofp i32 %2816 to float
  %2818 = lshr i32 %2815, 8
  %2819 = and i32 %2818, 255
  %2820 = uitofp i32 %2819 to float
  %2821 = call float @dx.op.dot3.f32(i32 55, float %2629, float %2630, float %2631, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2822 = fmul fast float %2820, %2821
  %2823 = fadd fast float %2822, %2817
  %2824 = fmul fast float %2823, 0x3F70101020000000
  %2825 = call float @dx.op.unary.f32(i32 7, float %2824)  ; Saturate(value)
  br i1 %2113, label %2826, label %2834

; <label>:2826                                    ; preds = %2808
  %2827 = fsub fast float 1.000000e+00, %2409
  %2828 = fmul fast float %2827, %2098
  %2829 = fmul fast float %2827, %2099
  %2830 = fmul fast float %2827, %2100
  %2831 = fmul fast float %2827, %2101
  %2832 = fmul fast float %2827, %2102
  %2833 = fmul fast float %2827, %2103
  br label %2834

; <label>:2834                                    ; preds = %2826, %2808
  %2835 = phi float [ %2828, %2826 ], [ %2098, %2808 ]
  %2836 = phi float [ %2829, %2826 ], [ %2099, %2808 ]
  %2837 = phi float [ %2830, %2826 ], [ %2100, %2808 ]
  %2838 = phi float [ %2831, %2826 ], [ %2101, %2808 ]
  %2839 = phi float [ %2832, %2826 ], [ %2102, %2808 ]
  %2840 = phi float [ %2833, %2826 ], [ %2103, %2808 ]
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = and i32 %2842, 3
  %2844 = icmp eq i32 %2843, 3
  br i1 %2844, label %2923, label %2845

; <label>:2845                                    ; preds = %2834
  %2846 = and i32 %2842, 16
  %2847 = icmp ne i32 %2846, 0
  %2848 = select i1 %2847, float %2409, float 0.000000e+00
  %2849 = icmp eq i32 %2843, 0
  br i1 %2849, label %2850, label %2878

; <label>:2850                                    ; preds = %2845
  %2851 = and i32 %2842, 64
  %2852 = icmp ne i32 %2851, 0
  %2853 = select i1 %2852, float %2409, float 0.000000e+00
  %2854 = fsub fast float %2629, %2835
  %2855 = fsub fast float %2630, %2836
  %2856 = fsub fast float %2631, %2837
  %2857 = fmul fast float %2848, %2854
  %2858 = fmul fast float %2848, %2855
  %2859 = fmul fast float %2848, %2856
  %2860 = fadd fast float %2857, %2835
  %2861 = fadd fast float %2858, %2836
  %2862 = fadd fast float %2859, %2837
  %2863 = fsub fast float %2615, %2107
  %2864 = fmul fast float %2848, %2863
  %2865 = fadd fast float %2864, %2107
  %2866 = fsub fast float %2757, %2838
  %2867 = fsub fast float %2758, %2839
  %2868 = fsub fast float %2759, %2840
  %2869 = fmul fast float %2853, %2866
  %2870 = fmul fast float %2853, %2867
  %2871 = fmul fast float %2853, %2868
  %2872 = fadd fast float %2869, %2838
  %2873 = fadd fast float %2870, %2839
  %2874 = fadd fast float %2871, %2840
  %2875 = fsub fast float %2825, %2111
  %2876 = fmul fast float %2848, %2875
  %2877 = fadd fast float %2876, %2111
  br label %2923

; <label>:2878                                    ; preds = %2845
  %2879 = icmp eq i32 %2843, 1
  br i1 %2879, label %2880, label %2893

; <label>:2880                                    ; preds = %2878
  %2881 = fadd fast float %2629, -1.000000e+00
  %2882 = fadd fast float %2630, -1.000000e+00
  %2883 = fadd fast float %2631, -1.000000e+00
  %2884 = fmul fast float %2848, %2881
  %2885 = fmul fast float %2848, %2882
  %2886 = fmul fast float %2848, %2883
  %2887 = fadd fast float %2884, 1.000000e+00
  %2888 = fadd fast float %2885, 1.000000e+00
  %2889 = fadd fast float %2886, 1.000000e+00
  %2890 = fmul fast float %2887, %2835
  %2891 = fmul fast float %2888, %2836
  %2892 = fmul fast float %2889, %2837
  br label %2923

; <label>:2893                                    ; preds = %2878
  %2894 = icmp eq i32 %2843, 2
  br i1 %2894, label %2895, label %2923

; <label>:2895                                    ; preds = %2893
  %2896 = call float @dx.op.unary.f32(i32 24, float %2629)  ; Sqrt(value)
  %2897 = call float @dx.op.unary.f32(i32 24, float %2630)  ; Sqrt(value)
  %2898 = call float @dx.op.unary.f32(i32 24, float %2631)  ; Sqrt(value)
  %2899 = fadd fast float %2896, -5.000000e-01
  %2900 = fadd fast float %2897, -5.000000e-01
  %2901 = fadd fast float %2898, -5.000000e-01
  %2902 = fmul fast float %2899, %2848
  %2903 = fmul fast float %2900, %2848
  %2904 = fmul fast float %2901, %2848
  %2905 = fadd fast float %2902, 5.000000e-01
  %2906 = fadd fast float %2903, 5.000000e-01
  %2907 = fadd fast float %2904, 5.000000e-01
  %2908 = fmul fast float %2905, 2.000000e+00
  %2909 = fsub fast float 1.000000e+00, %2908
  %2910 = fmul fast float %2909, %2835
  %2911 = fadd fast float %2910, %2908
  %2912 = fmul fast float %2911, %2835
  %2913 = fmul fast float %2906, 2.000000e+00
  %2914 = fsub fast float 1.000000e+00, %2913
  %2915 = fmul fast float %2914, %2836
  %2916 = fadd fast float %2915, %2913
  %2917 = fmul fast float %2916, %2836
  %2918 = fmul fast float %2907, 2.000000e+00
  %2919 = fsub fast float 1.000000e+00, %2918
  %2920 = fmul fast float %2919, %2837
  %2921 = fadd fast float %2920, %2918
  %2922 = fmul fast float %2921, %2837
  br label %2923

; <label>:2923                                    ; preds = %2895, %2893, %2880, %2850, %2834
  %2924 = phi float [ %2835, %2834 ], [ %2912, %2895 ], [ %2835, %2893 ], [ %2890, %2880 ], [ %2860, %2850 ]
  %2925 = phi float [ %2836, %2834 ], [ %2917, %2895 ], [ %2836, %2893 ], [ %2891, %2880 ], [ %2861, %2850 ]
  %2926 = phi float [ %2837, %2834 ], [ %2922, %2895 ], [ %2837, %2893 ], [ %2892, %2880 ], [ %2862, %2850 ]
  %2927 = phi float [ %2838, %2834 ], [ %2838, %2895 ], [ %2838, %2893 ], [ %2838, %2880 ], [ %2872, %2850 ]
  %2928 = phi float [ %2839, %2834 ], [ %2839, %2895 ], [ %2839, %2893 ], [ %2839, %2880 ], [ %2873, %2850 ]
  %2929 = phi float [ %2840, %2834 ], [ %2840, %2895 ], [ %2840, %2893 ], [ %2840, %2880 ], [ %2874, %2850 ]
  %2930 = phi float [ %2107, %2834 ], [ %2107, %2895 ], [ %2107, %2893 ], [ %2107, %2880 ], [ %2865, %2850 ]
  %2931 = phi float [ %2111, %2834 ], [ %2111, %2895 ], [ %2111, %2893 ], [ %2111, %2880 ], [ %2877, %2850 ]
  %2932 = and i32 %2842, 12
  %2933 = icmp eq i32 %2932, 12
  br i1 %2933, label %3040, label %2934

; <label>:2934                                    ; preds = %2923
  %2935 = and i32 %2842, 2097184
  %2936 = icmp eq i32 %2935, 2097184
  %2937 = select i1 %2936, float %2409, float 0.000000e+00
  %2938 = and i32 %2842, 4194336
  %2939 = icmp eq i32 %2938, 4194336
  %2940 = select i1 %2939, float %2409, float 0.000000e+00
  %2941 = and i32 %2842, 8388640
  %2942 = icmp eq i32 %2941, 8388640
  %2943 = select i1 %2942, float %2409, float 0.000000e+00
  %2944 = and i32 %2842, 2048
  %2945 = icmp ne i32 %2944, 0
  %2946 = select i1 %2945, float %2409, float 0.000000e+00
  %2947 = and i32 %2842, 8192
  %2948 = icmp ne i32 %2947, 0
  %2949 = select i1 %2948, float %2409, float 0.000000e+00
  %2950 = icmp eq i32 %2932, 0
  br i1 %2950, label %2951, label %2976

; <label>:2951                                    ; preds = %2934
  %2952 = fsub fast float %2710, %2096
  %2953 = fsub fast float %2711, %2097
  %2954 = fmul fast float %2937, %2952
  %2955 = fmul fast float %2937, %2953
  %2956 = fadd fast float %2954, %2096
  %2957 = fadd fast float %2955, %2097
  %2958 = fsub fast float %2712, %2109
  %2959 = fmul fast float %2940, %2958
  %2960 = fadd fast float %2959, %2109
  %2961 = fsub fast float %2709, %2108
  %2962 = fmul fast float %2943, %2961
  %2963 = fadd fast float %2962, %2108
  %2964 = fsub fast float %2812, %2110
  %2965 = fmul fast float %2946, %2964
  %2966 = fadd fast float %2965, %2110
  %2967 = fsub fast float %2809, %2104
  %2968 = fsub fast float %2810, %2105
  %2969 = fsub fast float %2811, %2106
  %2970 = fmul fast float %2949, %2967
  %2971 = fmul fast float %2949, %2968
  %2972 = fmul fast float %2949, %2969
  %2973 = fadd fast float %2970, %2104
  %2974 = fadd fast float %2971, %2105
  %2975 = fadd fast float %2972, %2106
  br label %3040

; <label>:2976                                    ; preds = %2934
  %2977 = icmp eq i32 %2932, 4
  br i1 %2977, label %2978, label %3018

; <label>:2978                                    ; preds = %2976
  %2979 = fmul fast float %2937, %2710
  %2980 = fmul fast float %2937, %2711
  %2981 = fadd fast float %2979, %2096
  %2982 = fadd fast float %2980, %2097
  %2983 = call float @dx.op.binary.f32(i32 36, float %2109, float %2712)  ; FMin(a,b)
  %2984 = fsub fast float %2983, %2109
  %2985 = fmul fast float %2984, %2940
  %2986 = fadd fast float %2985, %2109
  %2987 = fadd fast float %2709, %2108
  %2988 = fmul fast float %2987, 0x3FF337FAE0000000
  %2989 = fmul fast float %2108, %2108
  %2990 = fmul fast float %2709, %2709
  %2991 = fadd fast float %2990, %2989
  %2992 = fmul fast float %2991, 0x3FE5152B00000000
  %2993 = fmul fast float %2108, 0xBFCC1F85E0000000
  %2994 = fmul fast float %2993, %2709
  %2995 = fadd fast float %2994, 0xBFE1363700000000
  %2996 = fadd fast float %2995, %2988
  %2997 = fsub fast float %2996, %2992
  %2998 = fmul fast float %2987, 0x3FBA6F0D00000000
  %2999 = fmul fast float %2991, 0x3FD0432880000000
  %3000 = fmul fast float %2108, 0xBFEF110800000000
  %3001 = fmul fast float %3000, %2709
  %3002 = fadd fast float %3001, 1.000000e+00
  %3003 = fsub fast float %3002, %2998
  %3004 = fadd fast float %3003, %2999
  %3005 = fdiv fast float %2997, %3004
  %3006 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3007 = fsub fast float %3006, %2108
  %3008 = fmul fast float %3007, %2943
  %3009 = fadd fast float %3008, %2108
  %3010 = fmul fast float %2946, %2812
  %3011 = fadd fast float %3010, %2110
  %3012 = fmul fast float %2949, %2809
  %3013 = fmul fast float %2949, %2810
  %3014 = fmul fast float %2949, %2811
  %3015 = fadd fast float %3012, %2104
  %3016 = fadd fast float %3013, %2105
  %3017 = fadd fast float %3014, %2106
  br label %3040

; <label>:3018                                    ; preds = %2976
  %3019 = icmp eq i32 %2932, 8
  br i1 %3019, label %3020, label %3040

; <label>:3020                                    ; preds = %3018
  %3021 = fmul fast float %2937, %2710
  %3022 = fmul fast float %2937, %2711
  %3023 = fadd fast float %3021, %2096
  %3024 = fadd fast float %3022, %2097
  %3025 = call float @dx.op.binary.f32(i32 36, float %2109, float %2712)  ; FMin(a,b)
  %3026 = fsub fast float %3025, %2109
  %3027 = fmul fast float %3026, %2940
  %3028 = fadd fast float %3027, %2109
  %3029 = fsub fast float %2709, %2108
  %3030 = fmul fast float %2943, %3029
  %3031 = fadd fast float %3030, %2108
  %3032 = fmul fast float %2946, %2812
  %3033 = fadd fast float %3032, %2110
  %3034 = fmul fast float %2949, %2809
  %3035 = fmul fast float %2949, %2810
  %3036 = fmul fast float %2949, %2811
  %3037 = fadd fast float %3034, %2104
  %3038 = fadd fast float %3035, %2105
  %3039 = fadd fast float %3036, %2106
  br label %3040

; <label>:3040                                    ; preds = %3020, %3018, %2978, %2951, %2923, %2408, %2112, %2095
  %3041 = phi float [ %2096, %2923 ], [ %2096, %2408 ], [ %2096, %2095 ], [ %3023, %3020 ], [ %2096, %3018 ], [ %2981, %2978 ], [ %2956, %2951 ], [ %2096, %2112 ]
  %3042 = phi float [ %2097, %2923 ], [ %2097, %2408 ], [ %2097, %2095 ], [ %3024, %3020 ], [ %2097, %3018 ], [ %2982, %2978 ], [ %2957, %2951 ], [ %2097, %2112 ]
  %3043 = phi float [ %2924, %2923 ], [ %2098, %2408 ], [ %2098, %2095 ], [ %2924, %3020 ], [ %2924, %3018 ], [ %2924, %2978 ], [ %2924, %2951 ], [ %2098, %2112 ]
  %3044 = phi float [ %2925, %2923 ], [ %2099, %2408 ], [ %2099, %2095 ], [ %2925, %3020 ], [ %2925, %3018 ], [ %2925, %2978 ], [ %2925, %2951 ], [ %2099, %2112 ]
  %3045 = phi float [ %2926, %2923 ], [ %2100, %2408 ], [ %2100, %2095 ], [ %2926, %3020 ], [ %2926, %3018 ], [ %2926, %2978 ], [ %2926, %2951 ], [ %2100, %2112 ]
  %3046 = phi float [ %2927, %2923 ], [ %2101, %2408 ], [ %2101, %2095 ], [ %2927, %3020 ], [ %2927, %3018 ], [ %2927, %2978 ], [ %2927, %2951 ], [ %2101, %2112 ]
  %3047 = phi float [ %2928, %2923 ], [ %2102, %2408 ], [ %2102, %2095 ], [ %2928, %3020 ], [ %2928, %3018 ], [ %2928, %2978 ], [ %2928, %2951 ], [ %2102, %2112 ]
  %3048 = phi float [ %2929, %2923 ], [ %2103, %2408 ], [ %2103, %2095 ], [ %2929, %3020 ], [ %2929, %3018 ], [ %2929, %2978 ], [ %2929, %2951 ], [ %2103, %2112 ]
  %3049 = phi float [ %2104, %2923 ], [ %2104, %2408 ], [ %2104, %2095 ], [ %3037, %3020 ], [ %2104, %3018 ], [ %3015, %2978 ], [ %2973, %2951 ], [ %2104, %2112 ]
  %3050 = phi float [ %2105, %2923 ], [ %2105, %2408 ], [ %2105, %2095 ], [ %3038, %3020 ], [ %2105, %3018 ], [ %3016, %2978 ], [ %2974, %2951 ], [ %2105, %2112 ]
  %3051 = phi float [ %2106, %2923 ], [ %2106, %2408 ], [ %2106, %2095 ], [ %3039, %3020 ], [ %2106, %3018 ], [ %3017, %2978 ], [ %2975, %2951 ], [ %2106, %2112 ]
  %3052 = phi float [ %2930, %2923 ], [ %2107, %2408 ], [ %2107, %2095 ], [ %2930, %3020 ], [ %2930, %3018 ], [ %2930, %2978 ], [ %2930, %2951 ], [ %2107, %2112 ]
  %3053 = phi float [ %2108, %2923 ], [ %2108, %2408 ], [ %2108, %2095 ], [ %3031, %3020 ], [ %2108, %3018 ], [ %3009, %2978 ], [ %2963, %2951 ], [ %2108, %2112 ]
  %3054 = phi float [ %2109, %2923 ], [ %2109, %2408 ], [ %2109, %2095 ], [ %3028, %3020 ], [ %2109, %3018 ], [ %2986, %2978 ], [ %2960, %2951 ], [ %2109, %2112 ]
  %3055 = phi float [ %2110, %2923 ], [ %2110, %2408 ], [ %2110, %2095 ], [ %3033, %3020 ], [ %2110, %3018 ], [ %3011, %2978 ], [ %2966, %2951 ], [ %2110, %2112 ]
  %3056 = phi float [ %2931, %2923 ], [ %2111, %2408 ], [ %2111, %2095 ], [ %2931, %3020 ], [ %2931, %3018 ], [ %2931, %2978 ], [ %2931, %2951 ], [ %2111, %2112 ]
  br i1 %578, label %3985, label %3057

; <label>:3057                                    ; preds = %3040
  %3058 = icmp ult i32 %629, 4
  %3059 = add i32 %48, 72
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = add i32 %48, 76
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = or i32 %3064, %3061
  %3066 = icmp eq i32 %3065, 0
  br i1 %3066, label %3985, label %3067

; <label>:3067                                    ; preds = %3057
  %3068 = and i32 %3061, 262144
  %3069 = icmp ne i32 %3068, 0
  %3070 = select i1 %3069, float %55, float 1.000000e+00
  %3071 = select i1 %3069, float %56, float 0.000000e+00
  %3072 = select i1 %3069, float %57, float 0.000000e+00
  %3073 = select i1 %3069, float %58, float 1.000000e+00
  %3074 = select i1 %3069, float %59, float %68
  %3075 = select i1 %3069, float %60, float %69
  %3076 = add i32 %48, 332
  %3077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3078 = extractvalue %dx.types.ResRet.i32 %3077, 0
  %3079 = lshr i32 %3078, 16
  %3080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3079)  ; LegacyF16ToF32(value)
  %3081 = fmul fast float %3080, 0x3F50624DE0000000
  %3082 = add i32 %48, 136
  %3083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3084 = extractvalue %dx.types.ResRet.i32 %3083, 0
  %3085 = lshr i32 %3084, 16
  %3086 = and i32 %3085, 255
  %3087 = lshr i32 %3084, 24
  %3088 = add i32 %48, 340
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 65535
  %3092 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3091)  ; LegacyF16ToF32(value)
  %3093 = lshr i32 %3090, 16
  %3094 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3093)  ; LegacyF16ToF32(value)
  %3095 = add i32 %48, 80
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = lshr i32 %3097, 22
  %3099 = shl nuw nsw i32 %3098, 5
  %3100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3099)  ; LegacyF16ToF32(value)
  %3101 = shl i32 %3097, 4
  %3102 = and i32 %3101, 32752
  %3103 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3102)  ; LegacyF16ToF32(value)
  %3104 = lshr i32 %3097, 7
  %3105 = and i32 %3104, 32752
  %3106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3105)  ; LegacyF16ToF32(value)
  %3107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3108 = extractvalue %dx.types.CBufRet.f32 %3107, 3
  %3109 = fmul fast float %3108, 1.000000e+03
  %3110 = fmul fast float %568, %3109
  %3111 = call float @dx.op.unary.f32(i32 22, float %3110)  ; Frc(value)
  %3112 = fadd fast float %3111, %558
  %3113 = fmul fast float %569, %3109
  %3114 = call float @dx.op.unary.f32(i32 22, float %3113)  ; Frc(value)
  %3115 = fadd fast float %3114, %560
  %3116 = fmul fast float %3081, %3109
  %3117 = call float @dx.op.unary.f32(i32 22, float %3116)  ; Frc(value)
  %3118 = fmul fast float %3117, 0x401921FB60000000
  %3119 = fadd fast float %3118, %3100
  %3120 = call float @dx.op.unary.f32(i32 13, float %3119)  ; Sin(value)
  %3121 = call float @dx.op.unary.f32(i32 12, float %3119)  ; Cos(value)
  %3122 = fsub fast float -0.000000e+00, %3120
  %3123 = fadd fast float %3074, -5.000000e-01
  %3124 = fadd fast float %3075, -5.000000e-01
  %3125 = fmul fast float %3092, %3123
  %3126 = fmul fast float %3094, %3124
  %3127 = fadd fast float %3125, 5.000000e-01
  %3128 = fadd fast float %3126, 5.000000e-01
  %3129 = fmul fast float %3103, %3127
  %3130 = fmul fast float %3106, %3128
  %3131 = fmul fast float %3121, %3129
  %3132 = call float @dx.op.tertiary.f32(i32 46, float %3122, float %3130, float %3131)  ; FMad(a,b,c)
  %3133 = fmul fast float %3120, %3129
  %3134 = call float @dx.op.tertiary.f32(i32 46, float %3121, float %3130, float %3133)  ; FMad(a,b,c)
  %3135 = fadd fast float %3112, %3132
  %3136 = fadd fast float %3115, %3134
  %3137 = icmp ugt i32 %3086, 1
  %3138 = icmp ugt i32 %3084, 33554431
  %3139 = or i1 %3138, %3137
  br i1 %3139, label %3140, label %3165

; <label>:3140                                    ; preds = %3067
  %3141 = add i32 %48, 276
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = lshr i32 %3143, 16
  %3145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3144)  ; LegacyF16ToF32(value)
  %3146 = fmul fast float %3108, %3145
  %3147 = call float @dx.op.unary.f32(i32 22, float %3146)  ; Frc(value)
  %3148 = mul nuw nsw i32 %3086, %3087
  %3149 = uitofp i32 %3148 to float
  %3150 = fmul fast float %3147, %3149
  %3151 = call float @dx.op.unary.f32(i32 27, float %3150)  ; Round_ni(value)
  %3152 = fptoui float %3151 to i32
  %3153 = urem i32 %3152, %3086
  %3154 = udiv i32 %3152, %3087
  %3155 = call float @dx.op.unary.f32(i32 22, float %3135)  ; Frc(value)
  %3156 = call float @dx.op.unary.f32(i32 22, float %3136)  ; Frc(value)
  %3157 = uitofp i32 %3153 to float
  %3158 = uitofp i32 %3154 to float
  %3159 = fadd fast float %3155, %3157
  %3160 = fadd fast float %3156, %3158
  %3161 = uitofp i32 %3086 to float
  %3162 = uitofp i32 %3087 to float
  %3163 = fdiv fast float %3159, %3161
  %3164 = fdiv fast float %3160, %3162
  br label %3165

; <label>:3165                                    ; preds = %3140, %3067
  %3166 = phi float [ %3163, %3140 ], [ %3135, %3067 ]
  %3167 = phi float [ %3164, %3140 ], [ %3136, %3067 ]
  %3168 = and i32 %3061, 16777216
  %3169 = icmp eq i32 %3168, 0
  br i1 %3169, label %3279, label %3170

; <label>:3170                                    ; preds = %3165
  %3171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %3172 = extractvalue %dx.types.CBufRet.f32 %3171, 0
  %3173 = extractvalue %dx.types.CBufRet.f32 %3171, 1
  %3174 = extractvalue %dx.types.CBufRet.f32 %3171, 2
  %3175 = fadd fast float %3172, %151
  %3176 = fadd fast float %3173, %152
  %3177 = fadd fast float %3174, %153
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 0
  %3180 = call float @dx.op.unary.f32(i32 7, float %3179)  ; Saturate(value)
  %3181 = icmp eq i32 %49, 65535
  br i1 %3181, label %3276, label %3182

; <label>:3182                                    ; preds = %3170
  %3183 = lshr i32 %49, 1
  %3184 = shl i32 %3183, 2
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3184, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = and i32 %49, 1
  %3188 = icmp ne i32 %3187, 0
  %3189 = lshr i32 %3186, 16
  %3190 = and i32 %3186, 65535
  %3191 = select i1 %3188, i32 %3189, i32 %3190
  %3192 = icmp eq i32 %3191, 65535
  br i1 %3192, label %3272, label %3193

; <label>:3193                                    ; preds = %3182
  %3194 = mul nuw nsw i32 %3191, 40
  %3195 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.f32 %3195, 0
  %3197 = extractvalue %dx.types.ResRet.f32 %3195, 1
  %3198 = extractvalue %dx.types.ResRet.f32 %3195, 2
  %3199 = add nuw nsw i32 %3194, 12
  %3200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.f32 %3200, 0
  %3202 = extractvalue %dx.types.ResRet.f32 %3200, 1
  %3203 = extractvalue %dx.types.ResRet.f32 %3200, 2
  %3204 = add nuw nsw i32 %3194, 24
  %3205 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3204, i32 undef)  ; BufferLoad(srv,index,wot)
  %3206 = extractvalue %dx.types.ResRet.f32 %3205, 0
  %3207 = extractvalue %dx.types.ResRet.f32 %3205, 1
  %3208 = extractvalue %dx.types.ResRet.f32 %3205, 2
  %3209 = add nuw nsw i32 %3194, 36
  %3210 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3209, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.f32 %3210, 0
  %3212 = fsub fast float %3175, %3196
  %3213 = fsub fast float %3176, %3197
  %3214 = fsub fast float %3177, %3198
  %3215 = fmul fast float %3211, %3212
  %3216 = fmul fast float %3211, %3213
  %3217 = fmul fast float %3211, %3214
  %3218 = call float @dx.op.unary.f32(i32 27, float %3215)  ; Round_ni(value)
  %3219 = call float @dx.op.unary.f32(i32 27, float %3216)  ; Round_ni(value)
  %3220 = call float @dx.op.unary.f32(i32 27, float %3217)  ; Round_ni(value)
  %3221 = fadd fast float %3218, 5.000000e-01
  %3222 = fadd fast float %3219, 5.000000e-01
  %3223 = fadd fast float %3220, 5.000000e-01
  %3224 = fmul fast float %3221, %3201
  %3225 = fmul fast float %3222, %3202
  %3226 = fmul fast float %3223, %3203
  %3227 = shl i32 %49, 2
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = add i32 %3229, 0
  %3231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3230, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3232 = call float @dx.op.unary.f32(i32 22, float %3224)  ; Frc(value)
  %3233 = call float @dx.op.unary.f32(i32 22, float %3225)  ; Frc(value)
  %3234 = call float @dx.op.unary.f32(i32 22, float %3226)  ; Frc(value)
  %3235 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3231, %dx.types.Handle %43, float %3232, float %3233, float %3234, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3236 = extractvalue %dx.types.ResRet.f32 %3235, 0
  %3237 = extractvalue %dx.types.ResRet.f32 %3235, 1
  %3238 = extractvalue %dx.types.ResRet.f32 %3235, 2
  %3239 = fmul fast float %3236, 1.023000e+03
  %3240 = fmul fast float %3237, 1.023000e+03
  %3241 = fmul fast float %3238, 1.023000e+03
  %3242 = fadd fast float %3239, 5.000000e-01
  %3243 = fadd fast float %3240, 5.000000e-01
  %3244 = fadd fast float %3241, 5.000000e-01
  %3245 = call float @dx.op.unary.f32(i32 27, float %3242)  ; Round_ni(value)
  %3246 = call float @dx.op.unary.f32(i32 27, float %3243)  ; Round_ni(value)
  %3247 = call float @dx.op.unary.f32(i32 27, float %3244)  ; Round_ni(value)
  %3248 = fsub fast float %3215, %3218
  %3249 = fsub fast float %3216, %3219
  %3250 = fsub fast float %3217, %3220
  %3251 = fmul fast float %3248, 7.500000e-01
  %3252 = fmul fast float %3249, 7.500000e-01
  %3253 = fmul fast float %3250, 7.500000e-01
  %3254 = fadd fast float %3218, 1.250000e-01
  %3255 = fadd fast float %3254, %3251
  %3256 = fadd fast float %3255, %3245
  %3257 = fadd fast float %3219, 1.250000e-01
  %3258 = fadd fast float %3257, %3252
  %3259 = fadd fast float %3258, %3246
  %3260 = fadd fast float %3220, 1.250000e-01
  %3261 = fadd fast float %3260, %3253
  %3262 = fadd fast float %3261, %3247
  %3263 = fmul fast float %3256, %3206
  %3264 = fmul fast float %3259, %3207
  %3265 = fmul fast float %3262, %3208
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = add i32 %3267, 0
  %3269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3269, %dx.types.Handle %41, float %3263, float %3264, float %3265, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3271 = extractvalue %dx.types.ResRet.f32 %3270, 0
  br label %3272

; <label>:3272                                    ; preds = %3193, %3182
  %3273 = phi float [ %3271, %3193 ], [ -1.000000e+00, %3182 ]
  %3274 = fadd fast float %3273, %3180
  %3275 = call float @dx.op.unary.f32(i32 7, float %3274)  ; Saturate(value)
  br label %3276

; <label>:3276                                    ; preds = %3272, %3170
  %3277 = phi float [ %3275, %3272 ], [ %3180, %3170 ]
  %3278 = fmul fast float %3277, %624
  br label %3279

; <label>:3279                                    ; preds = %3276, %3165
  %3280 = phi float [ %3278, %3276 ], [ %624, %3165 ]
  %3281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3282 = extractvalue %dx.types.ResRet.i32 %3281, 0
  %3283 = and i32 %3282, 256
  %3284 = icmp eq i32 %3283, 0
  br i1 %3284, label %3331, label %3285

; <label>:3285                                    ; preds = %3279
  %3286 = add i32 %48, 532
  %3287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3286, i32 undef)  ; BufferLoad(srv,index,wot)
  %3288 = extractvalue %dx.types.ResRet.i32 %3287, 0
  %3289 = add i32 %3288, 0
  %3290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3290, %dx.types.Handle %92, float %3166, float %3167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3292 = extractvalue %dx.types.ResRet.f32 %3291, 0
  %3293 = add i32 %48, 148
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = shl i32 %3295, 4
  %3297 = and i32 %3296, 32752
  %3298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3297)  ; LegacyF16ToF32(value)
  %3299 = lshr i32 %3295, 7
  %3300 = and i32 %3299, 32752
  %3301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3300)  ; LegacyF16ToF32(value)
  %3302 = fsub fast float 1.000000e+00, %3280
  %3303 = call float @dx.op.binary.f32(i32 35, float %3302, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3304 = bitcast float %3280 to i32
  %3305 = sitofp i32 %3304 to float
  %3306 = fadd fast float %3305, 0xC1CFBF8940000000
  %3307 = fmul fast float %3301, %3306
  %3308 = fadd fast float %3307, 0x41CFBF8940000000
  %3309 = fptosi float %3308 to i32
  %3310 = bitcast i32 %3309 to float
  %3311 = bitcast float %3303 to i32
  %3312 = sitofp i32 %3311 to float
  %3313 = fadd fast float %3312, 0xC1CFBF8940000000
  %3314 = fmul fast float %3313, %3301
  %3315 = fadd fast float %3314, 0x41CFBF8940000000
  %3316 = fptosi float %3315 to i32
  %3317 = bitcast i32 %3316 to float
  %3318 = fmul fast float %3310, %3298
  %3319 = fmul fast float %3317, %3298
  %3320 = fsub fast float %3303, %3318
  %3321 = fadd fast float %3319, %3303
  %3322 = call float @dx.op.unary.f32(i32 7, float %3320)  ; Saturate(value)
  %3323 = call float @dx.op.unary.f32(i32 7, float %3321)  ; Saturate(value)
  %3324 = fsub fast float %3292, %3322
  %3325 = fsub fast float %3323, %3322
  %3326 = bitcast float %3325 to i32
  %3327 = sub nsw i32 2129859010, %3326
  %3328 = bitcast i32 %3327 to float
  %3329 = fmul fast float %3328, %3324
  %3330 = call float @dx.op.unary.f32(i32 7, float %3329)  ; Saturate(value)
  br label %3331

; <label>:3331                                    ; preds = %3285, %3279
  %3332 = phi float [ %3330, %3285 ], [ %3280, %3279 ]
  %3333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.i32 %3333, 0
  %3335 = and i32 %3334, 128
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3353, label %3337

; <label>:3337                                    ; preds = %3331
  %3338 = add i32 %48, 516
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = add i32 %3340, 0
  %3342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3343 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3342, %dx.types.Handle %92, float %3166, float %3167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3344 = extractvalue %dx.types.ResRet.f32 %3343, 0
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = and i32 %3346, 524288
  %3348 = icmp ne i32 %3347, 0
  %3349 = fcmp fast ogt float %3344, 0x3FE0101020000000
  %3350 = select i1 %3349, float 1.000000e+00, float 0.000000e+00
  %3351 = select i1 %3348, float %3350, float %3344
  %3352 = fmul fast float %3351, %3332
  br label %3353

; <label>:3353                                    ; preds = %3337, %3331
  %3354 = phi float [ %3352, %3337 ], [ %3332, %3331 ]
  %3355 = fcmp fast ult float %3354, 0x3F70101020000000
  br i1 %3355, label %3985, label %3356

; <label>:3356                                    ; preds = %3353
  %3357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3358 = extractvalue %dx.types.ResRet.i32 %3357, 0
  %3359 = and i32 %3358, 16
  %3360 = icmp eq i32 %3359, 0
  br i1 %3360, label %3559, label %3361

; <label>:3361                                    ; preds = %3356
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3082, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = add i32 %48, 468
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = add i32 %3366, 0
  %3368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3367, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3369 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3368, %dx.types.Handle %91, float %3166, float %3167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3370 = extractvalue %dx.types.ResRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.ResRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.ResRet.f32 %3369, 2
  %3373 = extractvalue %dx.types.ResRet.f32 %3369, 3
  %3374 = and i32 %3363, 255
  %3375 = uitofp i32 %3374 to float
  %3376 = lshr i32 %3363, 8
  %3377 = and i32 %3376, 255
  %3378 = uitofp i32 %3377 to float
  %3379 = fmul fast float %3373, %3375
  %3380 = fadd fast float %3379, %3378
  %3381 = fmul fast float %3380, 0x3F70101000000000
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = and i32 %3383, 512
  %3385 = icmp eq i32 %3384, 0
  br i1 %3385, label %3394, label %3386

; <label>:3386                                    ; preds = %3361
  %3387 = add i32 %48, 548
  %3388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3387, i32 undef)  ; BufferLoad(srv,index,wot)
  %3389 = extractvalue %dx.types.ResRet.i32 %3388, 0
  %3390 = add i32 %3389, 0
  %3391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3392 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3391, %dx.types.Handle %92, float %3166, float %3167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3393 = extractvalue %dx.types.ResRet.f32 %3392, 0
  br label %3394

; <label>:3394                                    ; preds = %3386, %3361
  %3395 = phi float [ %3393, %3386 ], [ 1.000000e+00, %3361 ]
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = and i32 %3397, 33554432
  %3399 = icmp eq i32 %3398, 0
  br i1 %3399, label %3506, label %3400

; <label>:3400                                    ; preds = %3394
  %3401 = add i32 %48, 272
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 65535
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = lshr i32 %3403, 16
  %3407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3406)  ; LegacyF16ToF32(value)
  %3408 = add i32 %48, 276
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3408, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = and i32 %3410, 65535
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3414 = extractvalue %dx.types.ResRet.i32 %3413, 0
  %3415 = lshr i32 %3414, 24
  %3416 = uitofp i32 %3415 to float
  %3417 = fmul fast float %3416, 0x3F70101020000000
  %3418 = and i32 %3414, 255
  %3419 = uitofp i32 %3418 to float
  %3420 = fmul fast float %3419, 0x3F70101020000000
  %3421 = lshr i32 %3414, 8
  %3422 = and i32 %3421, 255
  %3423 = uitofp i32 %3422 to float
  %3424 = fmul fast float %3423, 0x3F70101020000000
  %3425 = lshr i32 %3414, 16
  %3426 = and i32 %3425, 255
  %3427 = uitofp i32 %3426 to float
  %3428 = fmul fast float %3427, 0x3F70101020000000
  %3429 = add i32 %48, 268
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3429, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = lshr i32 %3431, 24
  %3433 = uitofp i32 %3432 to float
  %3434 = fmul fast float %3433, 0x3F70101020000000
  %3435 = and i32 %3431, 255
  %3436 = uitofp i32 %3435 to float
  %3437 = fmul fast float %3436, 0x3F70101020000000
  %3438 = lshr i32 %3431, 8
  %3439 = and i32 %3438, 255
  %3440 = uitofp i32 %3439 to float
  %3441 = fmul fast float %3440, 0x3F70101020000000
  %3442 = lshr i32 %3431, 16
  %3443 = and i32 %3442, 255
  %3444 = uitofp i32 %3443 to float
  %3445 = fmul fast float %3444, 0x3F70101020000000
  %3446 = bitcast float %3370 to i32
  %3447 = ashr i32 %3446, 1
  %3448 = sub nsw i32 1597463174, %3447
  %3449 = bitcast i32 %3448 to float
  %3450 = fmul fast float %3370, 5.000000e-01
  %3451 = fmul fast float %3449, %3449
  %3452 = fmul fast float %3451, %3450
  %3453 = fsub fast float 1.500000e+00, %3452
  %3454 = fmul fast float %3449, %3370
  %3455 = fmul fast float %3454, %3453
  %3456 = bitcast float %3371 to i32
  %3457 = ashr i32 %3456, 1
  %3458 = sub nsw i32 1597463174, %3457
  %3459 = bitcast i32 %3458 to float
  %3460 = fmul fast float %3371, 5.000000e-01
  %3461 = fmul fast float %3459, %3459
  %3462 = fmul fast float %3461, %3460
  %3463 = fsub fast float 1.500000e+00, %3462
  %3464 = fmul fast float %3459, %3371
  %3465 = fmul fast float %3464, %3463
  %3466 = bitcast float %3372 to i32
  %3467 = ashr i32 %3466, 1
  %3468 = sub nsw i32 1597463174, %3467
  %3469 = bitcast i32 %3468 to float
  %3470 = fmul fast float %3372, 5.000000e-01
  %3471 = fmul fast float %3469, %3469
  %3472 = fmul fast float %3471, %3470
  %3473 = fsub fast float 1.500000e+00, %3472
  %3474 = fmul fast float %3469, %3372
  %3475 = fmul fast float %3474, %3473
  %3476 = fsub fast float %3455, %3437
  %3477 = fsub fast float %3465, %3441
  %3478 = fsub fast float %3475, %3445
  %3479 = fmul fast float %3476, %3405
  %3480 = fmul fast float %3477, %3407
  %3481 = fmul fast float %3478, %3412
  %3482 = fadd fast float %3479, %3420
  %3483 = fadd fast float %3480, %3424
  %3484 = fadd fast float %3481, %3428
  %3485 = call float @dx.op.unary.f32(i32 7, float %3482)  ; Saturate(value)
  %3486 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3487 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3488 = fmul fast float %3485, %3485
  %3489 = fmul fast float %3486, %3486
  %3490 = fmul fast float %3487, %3487
  %3491 = fsub fast float %3488, %3370
  %3492 = fsub fast float %3489, %3371
  %3493 = fsub fast float %3490, %3372
  %3494 = fmul fast float %3491, %3395
  %3495 = fmul fast float %3492, %3395
  %3496 = fmul fast float %3493, %3395
  %3497 = fadd fast float %3494, %3370
  %3498 = fadd fast float %3495, %3371
  %3499 = fadd fast float %3496, %3372
  %3500 = fadd fast float %3417, %3381
  %3501 = fsub fast float %3500, %3434
  %3502 = call float @dx.op.unary.f32(i32 7, float %3501)  ; Saturate(value)
  %3503 = fsub fast float %3502, %3381
  %3504 = fmul fast float %3503, %3395
  %3505 = fadd fast float %3504, %3381
  br label %3559

; <label>:3506                                    ; preds = %3394
  %3507 = and i32 %3397, 134217728
  %3508 = icmp eq i32 %3507, 0
  br i1 %3508, label %3543, label %3509

; <label>:3509                                    ; preds = %3506
  %3510 = call float @dx.op.unary.f32(i32 24, float %545)  ; Sqrt(value)
  %3511 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %3512 = call float @dx.op.unary.f32(i32 24, float %553)  ; Sqrt(value)
  %3513 = fadd fast float %3510, -5.000000e-01
  %3514 = fadd fast float %3511, -5.000000e-01
  %3515 = fadd fast float %3512, -5.000000e-01
  %3516 = fmul fast float %3513, %3395
  %3517 = fmul fast float %3514, %3395
  %3518 = fmul fast float %3515, %3395
  %3519 = fadd fast float %3516, 5.000000e-01
  %3520 = fadd fast float %3517, 5.000000e-01
  %3521 = fadd fast float %3518, 5.000000e-01
  %3522 = call float @dx.op.unary.f32(i32 24, float %3370)  ; Sqrt(value)
  %3523 = call float @dx.op.unary.f32(i32 24, float %3371)  ; Sqrt(value)
  %3524 = call float @dx.op.unary.f32(i32 24, float %3372)  ; Sqrt(value)
  %3525 = fmul fast float %3519, 2.000000e+00
  %3526 = fsub fast float 1.000000e+00, %3525
  %3527 = fmul fast float %3526, %3522
  %3528 = fadd fast float %3527, %3525
  %3529 = fmul fast float %3528, %3522
  %3530 = fmul fast float %3520, 2.000000e+00
  %3531 = fsub fast float 1.000000e+00, %3530
  %3532 = fmul fast float %3531, %3523
  %3533 = fadd fast float %3532, %3530
  %3534 = fmul fast float %3533, %3523
  %3535 = fmul fast float %3521, 2.000000e+00
  %3536 = fsub fast float 1.000000e+00, %3535
  %3537 = fmul fast float %3536, %3524
  %3538 = fadd fast float %3537, %3535
  %3539 = fmul fast float %3538, %3524
  %3540 = fmul fast float %3529, %3529
  %3541 = fmul fast float %3534, %3534
  %3542 = fmul fast float %3539, %3539
  br label %3559

; <label>:3543                                    ; preds = %3506
  %3544 = fmul fast float %545, %545
  %3545 = fmul fast float %549, %549
  %3546 = fmul fast float %553, %553
  %3547 = fadd fast float %3544, -1.000000e+00
  %3548 = fadd fast float %3545, -1.000000e+00
  %3549 = fadd fast float %3546, -1.000000e+00
  %3550 = fmul fast float %3395, %3547
  %3551 = fmul fast float %3395, %3548
  %3552 = fmul fast float %3395, %3549
  %3553 = fadd fast float %3550, 1.000000e+00
  %3554 = fadd fast float %3551, 1.000000e+00
  %3555 = fadd fast float %3552, 1.000000e+00
  %3556 = fmul fast float %3553, %3370
  %3557 = fmul fast float %3554, %3371
  %3558 = fmul fast float %3555, %3372
  br label %3559

; <label>:3559                                    ; preds = %3543, %3509, %3400, %3356
  %3560 = phi float [ %3505, %3400 ], [ %3381, %3509 ], [ %3381, %3543 ], [ 0x3FA23C0BE0000000, %3356 ]
  %3561 = phi float [ %3497, %3400 ], [ %3540, %3509 ], [ %3556, %3543 ], [ 1.000000e+00, %3356 ]
  %3562 = phi float [ %3498, %3400 ], [ %3541, %3509 ], [ %3557, %3543 ], [ 1.000000e+00, %3356 ]
  %3563 = phi float [ %3499, %3400 ], [ %3542, %3509 ], [ %3558, %3543 ], [ 1.000000e+00, %3356 ]
  %3564 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3565 = extractvalue %dx.types.CBufRet.i32 %3564, 1
  %3566 = and i32 %3565, 1
  %3567 = icmp ne i32 %3566, 0
  %3568 = add i32 %48, 356
  %3569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.i32 %3569, 0
  %3571 = and i32 %3570, 32
  %3572 = icmp ne i32 %3571, 0
  %3573 = and i1 %3567, %3572
  %3574 = select i1 %3573, float 1.000000e+00, float %3561
  %3575 = select i1 %3573, float 0x3FD3333340000000, float %3562
  %3576 = select i1 %3573, float 0x3FD3333340000000, float %3563
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = and i32 %3578, 32
  %3580 = icmp eq i32 %3579, 0
  br i1 %3580, label %3653, label %3581

; <label>:3581                                    ; preds = %3559
  %3582 = add i32 %48, 140
  %3583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.i32 %3583, 0
  %3585 = add i32 %48, 484
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = add i32 %3587, 0
  %3589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3589, %dx.types.Handle %91, float %3166, float %3167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.ResRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.ResRet.f32 %3590, 2
  %3594 = extractvalue %dx.types.ResRet.f32 %3590, 3
  %3595 = and i32 %3584, 255
  %3596 = uitofp i32 %3595 to float
  %3597 = lshr i32 %3584, 8
  %3598 = and i32 %3597, 255
  %3599 = uitofp i32 %3598 to float
  %3600 = lshr i32 %3584, 16
  %3601 = and i32 %3600, 255
  %3602 = uitofp i32 %3601 to float
  %3603 = fmul fast float %3602, 0x3F70101000000000
  %3604 = fmul fast float %3591, %3596
  %3605 = fadd fast float %3604, %3599
  %3606 = fmul fast float %3605, 0x3F70101000000000
  %3607 = fadd fast float %3592, -5.000000e-01
  %3608 = fadd fast float %3594, -5.000000e-01
  %3609 = fmul fast float %3607, %3603
  %3610 = fmul fast float %3608, %3603
  %3611 = fadd fast float %3609, 5.000000e-01
  %3612 = fadd fast float %3610, 5.000000e-01
  %3613 = fmul fast float %3611, 2.000000e+00
  %3614 = fadd fast float %3613, -1.000000e+00
  %3615 = fmul fast float %3612, 2.000000e+00
  %3616 = fadd fast float %3615, -1.000000e+00
  %3617 = fadd fast float %3614, %3616
  %3618 = fmul fast float %3617, 5.000000e-01
  %3619 = fsub fast float %3614, %3616
  %3620 = fmul fast float %3619, 5.000000e-01
  %3621 = call float @dx.op.unary.f32(i32 6, float %3618)  ; FAbs(value)
  %3622 = fsub fast float 1.000000e+00, %3621
  %3623 = call float @dx.op.unary.f32(i32 6, float %3620)  ; FAbs(value)
  %3624 = fsub fast float %3622, %3623
  %3625 = call float @dx.op.dot3.f32(i32 55, float %3618, float %3620, float %3624, float %3618, float %3620, float %3624)  ; Dot3(ax,ay,az,bx,by,bz)
  %3626 = call float @dx.op.unary.f32(i32 25, float %3625)  ; Rsqrt(value)
  %3627 = fmul fast float %3618, %3626
  %3628 = fmul fast float %3620, %3626
  %3629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.i32 %3629, 0
  %3631 = and i32 %3630, 67108864
  %3632 = icmp eq i32 %3631, 0
  br i1 %3632, label %3649, label %3633

; <label>:3633                                    ; preds = %3581
  %3634 = add i32 %48, 328
  %3635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.i32 %3635, 0
  %3637 = and i32 %3636, 65535
  %3638 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3637)  ; LegacyF16ToF32(value)
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3076, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = and i32 %3640, 65535
  %3642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3641)  ; LegacyF16ToF32(value)
  %3643 = lshr i32 %3636, 16
  %3644 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3643)  ; LegacyF16ToF32(value)
  %3645 = fsub fast float %3606, %3644
  %3646 = fmul fast float %3645, %3638
  %3647 = fadd fast float %3646, %3642
  %3648 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  br label %3649

; <label>:3649                                    ; preds = %3633, %3581
  %3650 = phi float [ %3648, %3633 ], [ %3606, %3581 ]
  %3651 = call float @dx.op.dot2.f32(i32 54, float %3627, float %3628, float %3070, float %3071)  ; Dot2(ax,ay,bx,by)
  %3652 = call float @dx.op.dot2.f32(i32 54, float %3627, float %3628, float %3072, float %3073)  ; Dot2(ax,ay,bx,by)
  br label %3653

; <label>:3653                                    ; preds = %3649, %3559
  %3654 = phi float [ %3650, %3649 ], [ 0x3FD6666660000000, %3559 ]
  %3655 = phi float [ %3651, %3649 ], [ 0.000000e+00, %3559 ]
  %3656 = phi float [ %3652, %3649 ], [ 0.000000e+00, %3559 ]
  %3657 = phi float [ %3593, %3649 ], [ 1.000000e+00, %3559 ]
  %3658 = add i32 %48, 208
  %3659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3660 = extractvalue %dx.types.ResRet.i32 %3659, 0
  %3661 = lshr i32 %3660, 22
  %3662 = shl nuw nsw i32 %3661, 5
  %3663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3662)  ; LegacyF16ToF32(value)
  %3664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3665 = extractvalue %dx.types.ResRet.i32 %3664, 0
  %3666 = and i32 %3665, 64
  %3667 = icmp eq i32 %3666, 0
  br i1 %3667, label %3701, label %3668

; <label>:3668                                    ; preds = %3653
  %3669 = add i32 %48, 500
  %3670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.i32 %3670, 0
  %3672 = add i32 %3671, 0
  %3673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3672, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = and i32 %3675, 131072
  %3677 = icmp eq i32 %3676, 0
  %3678 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3673, %dx.types.Handle %91, float %3166, float %3167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.ResRet.f32 %3678, 1
  %3681 = extractvalue %dx.types.ResRet.f32 %3678, 2
  %3682 = fmul fast float %3679, %533
  %3683 = fmul fast float %3680, %536
  %3684 = fmul fast float %3681, %539
  br i1 %3677, label %3691, label %3685

; <label>:3685                                    ; preds = %3668
  %3686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.f32 %3686, 0
  %3688 = fmul fast float %3687, %3682
  %3689 = fmul fast float %3687, %3683
  %3690 = fmul fast float %3687, %3684
  br label %3691

; <label>:3691                                    ; preds = %3685, %3668
  %3692 = phi float [ %3688, %3685 ], [ %3682, %3668 ]
  %3693 = phi float [ %3689, %3685 ], [ %3683, %3668 ]
  %3694 = phi float [ %3690, %3685 ], [ %3684, %3668 ]
  %3695 = fmul fast float %3692, %3663
  %3696 = select i1 %401, float %3695, float %3692
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3696, float %3693, float %3694, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = select i1 %401, float 0.000000e+00, float %3692
  %3699 = select i1 %401, float %3697, float %3693
  %3700 = select i1 %401, float 0.000000e+00, float %3694
  br label %3701

; <label>:3701                                    ; preds = %3691, %3653
  %3702 = phi float [ %3698, %3691 ], [ 0.000000e+00, %3653 ]
  %3703 = phi float [ %3699, %3691 ], [ 0.000000e+00, %3653 ]
  %3704 = phi float [ %3700, %3691 ], [ 0.000000e+00, %3653 ]
  %3705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3706 = extractvalue %dx.types.ResRet.i32 %3705, 0
  %3707 = and i32 %3706, 10240
  %3708 = icmp eq i32 %3707, 0
  br i1 %3708, label %3753, label %3709

; <label>:3709                                    ; preds = %3701
  %3710 = add i32 %48, 564
  %3711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3710, i32 undef)  ; BufferLoad(srv,index,wot)
  %3712 = extractvalue %dx.types.ResRet.i32 %3711, 0
  %3713 = add i32 %3712, 0
  %3714 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3713, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3715 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3714, %dx.types.Handle %92, float %3166, float %3167, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3716 = extractvalue %dx.types.ResRet.f32 %3715, 1
  %3717 = extractvalue %dx.types.ResRet.f32 %3715, 3
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = and i32 %3719, 1048576
  %3721 = icmp ne i32 %3720, 0
  %3722 = and i32 %3719, 8192
  %3723 = icmp eq i32 %3722, 0
  br i1 %3723, label %3739, label %3724

; <label>:3724                                    ; preds = %3709
  %3725 = extractvalue %dx.types.ResRet.f32 %3715, 2
  %3726 = select i1 %3721, float %3725, float %3716
  %3727 = extractvalue %dx.types.ResRet.f32 %3715, 0
  %3728 = select i1 %3721, float %3727, float %3716
  %3729 = add i32 %48, 144
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = lshr i32 %3731, 16
  %3733 = and i32 %3732, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = fmul fast float %3734, 0x3F80101020000000
  %3736 = fmul fast float %3735, %3728
  %3737 = fmul fast float %3735, %3716
  %3738 = fmul fast float %3735, %3726
  br label %3739

; <label>:3739                                    ; preds = %3724, %3709
  %3740 = phi float [ %3736, %3724 ], [ 0.000000e+00, %3709 ]
  %3741 = phi float [ %3737, %3724 ], [ 0.000000e+00, %3709 ]
  %3742 = phi float [ %3738, %3724 ], [ 0.000000e+00, %3709 ]
  %3743 = and i32 %3719, 2048
  %3744 = icmp eq i32 %3743, 0
  br i1 %3744, label %3753, label %3745

; <label>:3745                                    ; preds = %3739
  %3746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3658, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.i32 %3746, 0
  %3748 = shl i32 %3747, 4
  %3749 = and i32 %3748, 32752
  %3750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3749)  ; LegacyF16ToF32(value)
  %3751 = fmul fast float %3750, %3717
  %3752 = call float @dx.op.binary.f32(i32 35, float %3751, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3753

; <label>:3753                                    ; preds = %3745, %3739, %3701
  %3754 = phi float [ %3740, %3745 ], [ %3740, %3739 ], [ 0.000000e+00, %3701 ]
  %3755 = phi float [ %3741, %3745 ], [ %3741, %3739 ], [ 0.000000e+00, %3701 ]
  %3756 = phi float [ %3742, %3745 ], [ %3742, %3739 ], [ 0.000000e+00, %3701 ]
  %3757 = phi float [ %3752, %3745 ], [ 0x3F70101020000000, %3739 ], [ 0x3F70101020000000, %3701 ]
  %3758 = add i32 %48, 144
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = and i32 %3760, 255
  %3762 = uitofp i32 %3761 to float
  %3763 = lshr i32 %3760, 8
  %3764 = and i32 %3763, 255
  %3765 = uitofp i32 %3764 to float
  %3766 = call float @dx.op.dot3.f32(i32 55, float %3574, float %3575, float %3576, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3767 = fmul fast float %3765, %3766
  %3768 = fadd fast float %3767, %3762
  %3769 = fmul fast float %3768, 0x3F70101020000000
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  br i1 %3058, label %3771, label %3779

; <label>:3771                                    ; preds = %3753
  %3772 = fsub fast float 1.000000e+00, %3354
  %3773 = fmul fast float %3772, %3043
  %3774 = fmul fast float %3772, %3044
  %3775 = fmul fast float %3772, %3045
  %3776 = fmul fast float %3772, %3046
  %3777 = fmul fast float %3772, %3047
  %3778 = fmul fast float %3772, %3048
  br label %3779

; <label>:3779                                    ; preds = %3771, %3753
  %3780 = phi float [ %3773, %3771 ], [ %3043, %3753 ]
  %3781 = phi float [ %3774, %3771 ], [ %3044, %3753 ]
  %3782 = phi float [ %3775, %3771 ], [ %3045, %3753 ]
  %3783 = phi float [ %3776, %3771 ], [ %3046, %3753 ]
  %3784 = phi float [ %3777, %3771 ], [ %3047, %3753 ]
  %3785 = phi float [ %3778, %3771 ], [ %3048, %3753 ]
  %3786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3787 = extractvalue %dx.types.ResRet.i32 %3786, 0
  %3788 = and i32 %3787, 3
  %3789 = icmp eq i32 %3788, 3
  br i1 %3789, label %3868, label %3790

; <label>:3790                                    ; preds = %3779
  %3791 = and i32 %3787, 16
  %3792 = icmp ne i32 %3791, 0
  %3793 = select i1 %3792, float %3354, float 0.000000e+00
  %3794 = icmp eq i32 %3788, 0
  br i1 %3794, label %3795, label %3823

; <label>:3795                                    ; preds = %3790
  %3796 = and i32 %3787, 64
  %3797 = icmp ne i32 %3796, 0
  %3798 = select i1 %3797, float %3354, float 0.000000e+00
  %3799 = fsub fast float %3574, %3780
  %3800 = fsub fast float %3575, %3781
  %3801 = fsub fast float %3576, %3782
  %3802 = fmul fast float %3793, %3799
  %3803 = fmul fast float %3793, %3800
  %3804 = fmul fast float %3793, %3801
  %3805 = fadd fast float %3802, %3780
  %3806 = fadd fast float %3803, %3781
  %3807 = fadd fast float %3804, %3782
  %3808 = fsub fast float %3560, %3052
  %3809 = fmul fast float %3793, %3808
  %3810 = fadd fast float %3809, %3052
  %3811 = fsub fast float %3702, %3783
  %3812 = fsub fast float %3703, %3784
  %3813 = fsub fast float %3704, %3785
  %3814 = fmul fast float %3798, %3811
  %3815 = fmul fast float %3798, %3812
  %3816 = fmul fast float %3798, %3813
  %3817 = fadd fast float %3814, %3783
  %3818 = fadd fast float %3815, %3784
  %3819 = fadd fast float %3816, %3785
  %3820 = fsub fast float %3770, %3056
  %3821 = fmul fast float %3793, %3820
  %3822 = fadd fast float %3821, %3056
  br label %3868

; <label>:3823                                    ; preds = %3790
  %3824 = icmp eq i32 %3788, 1
  br i1 %3824, label %3825, label %3838

; <label>:3825                                    ; preds = %3823
  %3826 = fadd fast float %3574, -1.000000e+00
  %3827 = fadd fast float %3575, -1.000000e+00
  %3828 = fadd fast float %3576, -1.000000e+00
  %3829 = fmul fast float %3793, %3826
  %3830 = fmul fast float %3793, %3827
  %3831 = fmul fast float %3793, %3828
  %3832 = fadd fast float %3829, 1.000000e+00
  %3833 = fadd fast float %3830, 1.000000e+00
  %3834 = fadd fast float %3831, 1.000000e+00
  %3835 = fmul fast float %3832, %3780
  %3836 = fmul fast float %3833, %3781
  %3837 = fmul fast float %3834, %3782
  br label %3868

; <label>:3838                                    ; preds = %3823
  %3839 = icmp eq i32 %3788, 2
  br i1 %3839, label %3840, label %3868

; <label>:3840                                    ; preds = %3838
  %3841 = call float @dx.op.unary.f32(i32 24, float %3574)  ; Sqrt(value)
  %3842 = call float @dx.op.unary.f32(i32 24, float %3575)  ; Sqrt(value)
  %3843 = call float @dx.op.unary.f32(i32 24, float %3576)  ; Sqrt(value)
  %3844 = fadd fast float %3841, -5.000000e-01
  %3845 = fadd fast float %3842, -5.000000e-01
  %3846 = fadd fast float %3843, -5.000000e-01
  %3847 = fmul fast float %3844, %3793
  %3848 = fmul fast float %3845, %3793
  %3849 = fmul fast float %3846, %3793
  %3850 = fadd fast float %3847, 5.000000e-01
  %3851 = fadd fast float %3848, 5.000000e-01
  %3852 = fadd fast float %3849, 5.000000e-01
  %3853 = fmul fast float %3850, 2.000000e+00
  %3854 = fsub fast float 1.000000e+00, %3853
  %3855 = fmul fast float %3854, %3780
  %3856 = fadd fast float %3855, %3853
  %3857 = fmul fast float %3856, %3780
  %3858 = fmul fast float %3851, 2.000000e+00
  %3859 = fsub fast float 1.000000e+00, %3858
  %3860 = fmul fast float %3859, %3781
  %3861 = fadd fast float %3860, %3858
  %3862 = fmul fast float %3861, %3781
  %3863 = fmul fast float %3852, 2.000000e+00
  %3864 = fsub fast float 1.000000e+00, %3863
  %3865 = fmul fast float %3864, %3782
  %3866 = fadd fast float %3865, %3863
  %3867 = fmul fast float %3866, %3782
  br label %3868

; <label>:3868                                    ; preds = %3840, %3838, %3825, %3795, %3779
  %3869 = phi float [ %3780, %3779 ], [ %3857, %3840 ], [ %3780, %3838 ], [ %3835, %3825 ], [ %3805, %3795 ]
  %3870 = phi float [ %3781, %3779 ], [ %3862, %3840 ], [ %3781, %3838 ], [ %3836, %3825 ], [ %3806, %3795 ]
  %3871 = phi float [ %3782, %3779 ], [ %3867, %3840 ], [ %3782, %3838 ], [ %3837, %3825 ], [ %3807, %3795 ]
  %3872 = phi float [ %3783, %3779 ], [ %3783, %3840 ], [ %3783, %3838 ], [ %3783, %3825 ], [ %3817, %3795 ]
  %3873 = phi float [ %3784, %3779 ], [ %3784, %3840 ], [ %3784, %3838 ], [ %3784, %3825 ], [ %3818, %3795 ]
  %3874 = phi float [ %3785, %3779 ], [ %3785, %3840 ], [ %3785, %3838 ], [ %3785, %3825 ], [ %3819, %3795 ]
  %3875 = phi float [ %3052, %3779 ], [ %3052, %3840 ], [ %3052, %3838 ], [ %3052, %3825 ], [ %3810, %3795 ]
  %3876 = phi float [ %3056, %3779 ], [ %3056, %3840 ], [ %3056, %3838 ], [ %3056, %3825 ], [ %3822, %3795 ]
  %3877 = and i32 %3787, 12
  %3878 = icmp eq i32 %3877, 12
  br i1 %3878, label %3985, label %3879

; <label>:3879                                    ; preds = %3868
  %3880 = and i32 %3787, 2097184
  %3881 = icmp eq i32 %3880, 2097184
  %3882 = select i1 %3881, float %3354, float 0.000000e+00
  %3883 = and i32 %3787, 4194336
  %3884 = icmp eq i32 %3883, 4194336
  %3885 = select i1 %3884, float %3354, float 0.000000e+00
  %3886 = and i32 %3787, 8388640
  %3887 = icmp eq i32 %3886, 8388640
  %3888 = select i1 %3887, float %3354, float 0.000000e+00
  %3889 = and i32 %3787, 2048
  %3890 = icmp ne i32 %3889, 0
  %3891 = select i1 %3890, float %3354, float 0.000000e+00
  %3892 = and i32 %3787, 8192
  %3893 = icmp ne i32 %3892, 0
  %3894 = select i1 %3893, float %3354, float 0.000000e+00
  %3895 = icmp eq i32 %3877, 0
  br i1 %3895, label %3896, label %3921

; <label>:3896                                    ; preds = %3879
  %3897 = fsub fast float %3655, %3041
  %3898 = fsub fast float %3656, %3042
  %3899 = fmul fast float %3882, %3897
  %3900 = fmul fast float %3882, %3898
  %3901 = fadd fast float %3899, %3041
  %3902 = fadd fast float %3900, %3042
  %3903 = fsub fast float %3657, %3054
  %3904 = fmul fast float %3885, %3903
  %3905 = fadd fast float %3904, %3054
  %3906 = fsub fast float %3654, %3053
  %3907 = fmul fast float %3888, %3906
  %3908 = fadd fast float %3907, %3053
  %3909 = fsub fast float %3757, %3055
  %3910 = fmul fast float %3891, %3909
  %3911 = fadd fast float %3910, %3055
  %3912 = fsub fast float %3754, %3049
  %3913 = fsub fast float %3755, %3050
  %3914 = fsub fast float %3756, %3051
  %3915 = fmul fast float %3894, %3912
  %3916 = fmul fast float %3894, %3913
  %3917 = fmul fast float %3894, %3914
  %3918 = fadd fast float %3915, %3049
  %3919 = fadd fast float %3916, %3050
  %3920 = fadd fast float %3917, %3051
  br label %3985

; <label>:3921                                    ; preds = %3879
  %3922 = icmp eq i32 %3877, 4
  br i1 %3922, label %3923, label %3963

; <label>:3923                                    ; preds = %3921
  %3924 = fmul fast float %3882, %3655
  %3925 = fmul fast float %3882, %3656
  %3926 = fadd fast float %3924, %3041
  %3927 = fadd fast float %3925, %3042
  %3928 = call float @dx.op.binary.f32(i32 36, float %3054, float %3657)  ; FMin(a,b)
  %3929 = fsub fast float %3928, %3054
  %3930 = fmul fast float %3929, %3885
  %3931 = fadd fast float %3930, %3054
  %3932 = fadd fast float %3654, %3053
  %3933 = fmul fast float %3932, 0x3FF337FAE0000000
  %3934 = fmul fast float %3053, %3053
  %3935 = fmul fast float %3654, %3654
  %3936 = fadd fast float %3935, %3934
  %3937 = fmul fast float %3936, 0x3FE5152B00000000
  %3938 = fmul fast float %3053, 0xBFCC1F85E0000000
  %3939 = fmul fast float %3938, %3654
  %3940 = fadd fast float %3939, 0xBFE1363700000000
  %3941 = fadd fast float %3940, %3933
  %3942 = fsub fast float %3941, %3937
  %3943 = fmul fast float %3932, 0x3FBA6F0D00000000
  %3944 = fmul fast float %3936, 0x3FD0432880000000
  %3945 = fmul fast float %3053, 0xBFEF110800000000
  %3946 = fmul fast float %3945, %3654
  %3947 = fadd fast float %3946, 1.000000e+00
  %3948 = fsub fast float %3947, %3943
  %3949 = fadd fast float %3948, %3944
  %3950 = fdiv fast float %3942, %3949
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3952 = fsub fast float %3951, %3053
  %3953 = fmul fast float %3952, %3888
  %3954 = fadd fast float %3953, %3053
  %3955 = fmul fast float %3891, %3757
  %3956 = fadd fast float %3955, %3055
  %3957 = fmul fast float %3894, %3754
  %3958 = fmul fast float %3894, %3755
  %3959 = fmul fast float %3894, %3756
  %3960 = fadd fast float %3957, %3049
  %3961 = fadd fast float %3958, %3050
  %3962 = fadd fast float %3959, %3051
  br label %3985

; <label>:3963                                    ; preds = %3921
  %3964 = icmp eq i32 %3877, 8
  br i1 %3964, label %3965, label %3985

; <label>:3965                                    ; preds = %3963
  %3966 = fmul fast float %3882, %3655
  %3967 = fmul fast float %3882, %3656
  %3968 = fadd fast float %3966, %3041
  %3969 = fadd fast float %3967, %3042
  %3970 = call float @dx.op.binary.f32(i32 36, float %3054, float %3657)  ; FMin(a,b)
  %3971 = fsub fast float %3970, %3054
  %3972 = fmul fast float %3971, %3885
  %3973 = fadd fast float %3972, %3054
  %3974 = fsub fast float %3654, %3053
  %3975 = fmul fast float %3888, %3974
  %3976 = fadd fast float %3975, %3053
  %3977 = fmul fast float %3891, %3757
  %3978 = fadd fast float %3977, %3055
  %3979 = fmul fast float %3894, %3754
  %3980 = fmul fast float %3894, %3755
  %3981 = fmul fast float %3894, %3756
  %3982 = fadd fast float %3979, %3049
  %3983 = fadd fast float %3980, %3050
  %3984 = fadd fast float %3981, %3051
  br label %3985

; <label>:3985                                    ; preds = %3965, %3963, %3923, %3896, %3868, %3353, %3057, %3040
  %3986 = phi float [ %3041, %3868 ], [ %3041, %3353 ], [ %3041, %3040 ], [ %3041, %3057 ], [ %3901, %3896 ], [ %3926, %3923 ], [ %3041, %3963 ], [ %3968, %3965 ]
  %3987 = phi float [ %3042, %3868 ], [ %3042, %3353 ], [ %3042, %3040 ], [ %3042, %3057 ], [ %3902, %3896 ], [ %3927, %3923 ], [ %3042, %3963 ], [ %3969, %3965 ]
  %3988 = phi float [ %3869, %3868 ], [ %3043, %3353 ], [ %3043, %3040 ], [ %3043, %3057 ], [ %3869, %3896 ], [ %3869, %3923 ], [ %3869, %3963 ], [ %3869, %3965 ]
  %3989 = phi float [ %3870, %3868 ], [ %3044, %3353 ], [ %3044, %3040 ], [ %3044, %3057 ], [ %3870, %3896 ], [ %3870, %3923 ], [ %3870, %3963 ], [ %3870, %3965 ]
  %3990 = phi float [ %3871, %3868 ], [ %3045, %3353 ], [ %3045, %3040 ], [ %3045, %3057 ], [ %3871, %3896 ], [ %3871, %3923 ], [ %3871, %3963 ], [ %3871, %3965 ]
  %3991 = phi float [ %3872, %3868 ], [ %3046, %3353 ], [ %3046, %3040 ], [ %3046, %3057 ], [ %3872, %3896 ], [ %3872, %3923 ], [ %3872, %3963 ], [ %3872, %3965 ]
  %3992 = phi float [ %3873, %3868 ], [ %3047, %3353 ], [ %3047, %3040 ], [ %3047, %3057 ], [ %3873, %3896 ], [ %3873, %3923 ], [ %3873, %3963 ], [ %3873, %3965 ]
  %3993 = phi float [ %3874, %3868 ], [ %3048, %3353 ], [ %3048, %3040 ], [ %3048, %3057 ], [ %3874, %3896 ], [ %3874, %3923 ], [ %3874, %3963 ], [ %3874, %3965 ]
  %3994 = phi float [ %3049, %3868 ], [ %3049, %3353 ], [ %3049, %3040 ], [ %3049, %3057 ], [ %3918, %3896 ], [ %3960, %3923 ], [ %3049, %3963 ], [ %3982, %3965 ]
  %3995 = phi float [ %3050, %3868 ], [ %3050, %3353 ], [ %3050, %3040 ], [ %3050, %3057 ], [ %3919, %3896 ], [ %3961, %3923 ], [ %3050, %3963 ], [ %3983, %3965 ]
  %3996 = phi float [ %3051, %3868 ], [ %3051, %3353 ], [ %3051, %3040 ], [ %3051, %3057 ], [ %3920, %3896 ], [ %3962, %3923 ], [ %3051, %3963 ], [ %3984, %3965 ]
  %3997 = phi float [ %3875, %3868 ], [ %3052, %3353 ], [ %3052, %3040 ], [ %3052, %3057 ], [ %3875, %3896 ], [ %3875, %3923 ], [ %3875, %3963 ], [ %3875, %3965 ]
  %3998 = phi float [ %3053, %3868 ], [ %3053, %3353 ], [ %3053, %3040 ], [ %3053, %3057 ], [ %3908, %3896 ], [ %3954, %3923 ], [ %3053, %3963 ], [ %3976, %3965 ]
  %3999 = phi float [ %3054, %3868 ], [ %3054, %3353 ], [ %3054, %3040 ], [ %3054, %3057 ], [ %3905, %3896 ], [ %3931, %3923 ], [ %3054, %3963 ], [ %3973, %3965 ]
  %4000 = phi float [ %3055, %3868 ], [ %3055, %3353 ], [ %3055, %3040 ], [ %3055, %3057 ], [ %3911, %3896 ], [ %3956, %3923 ], [ %3055, %3963 ], [ %3978, %3965 ]
  %4001 = phi float [ %3876, %3868 ], [ %3056, %3353 ], [ %3056, %3040 ], [ %3056, %3057 ], [ %3876, %3896 ], [ %3876, %3923 ], [ %3876, %3963 ], [ %3876, %3965 ]
  %4002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4003 = extractvalue %dx.types.CBufRet.f32 %4002, 0
  %4004 = call float @dx.op.dot2.f32(i32 54, float %3986, float %3987, float %3986, float %3987)  ; Dot2(ax,ay,bx,by)
  %4005 = fmul fast float %4004, 0x3FE3333340000000
  %4006 = fsub fast float 1.000000e+00, %4005
  %4007 = call float @dx.op.dot3.f32(i32 55, float %3986, float %3987, float %4006, float %3986, float %3987, float %4006)  ; Dot3(ax,ay,az,bx,by,bz)
  %4008 = call float @dx.op.unary.f32(i32 25, float %4007)  ; Rsqrt(value)
  %4009 = fmul fast float %4008, %3986
  %4010 = fmul fast float %4008, %3987
  %4011 = fmul fast float %4006, %4008
  %4012 = fmul fast float %4011, %104
  %4013 = fmul fast float %4011, %106
  %4014 = fmul fast float %4011, %108
  %4015 = fmul fast float %4009, %61
  %4016 = fmul fast float %4009, %62
  %4017 = fmul fast float %4009, %63
  %4018 = fmul fast float %111, %64
  %4019 = fmul fast float %4018, %4010
  %4020 = fmul fast float %114, %64
  %4021 = fmul fast float %4020, %4010
  %4022 = fmul fast float %117, %64
  %4023 = fmul fast float %4022, %4010
  %4024 = fadd fast float %4019, %4015
  %4025 = fmul fast float %4024, %97
  %4026 = fadd fast float %4025, %4012
  %4027 = fadd fast float %4021, %4016
  %4028 = fmul fast float %4027, %97
  %4029 = fadd fast float %4028, %4013
  %4030 = fadd fast float %4023, %4017
  %4031 = fmul fast float %4030, %97
  %4032 = fadd fast float %4031, %4014
  %4033 = call float @dx.op.dot3.f32(i32 55, float %4026, float %4029, float %4032, float %4026, float %4029, float %4032)  ; Dot3(ax,ay,az,bx,by,bz)
  %4034 = call float @dx.op.unary.f32(i32 25, float %4033)  ; Rsqrt(value)
  %4035 = fmul fast float %4026, %4034
  %4036 = fmul fast float %4029, %4034
  %4037 = fmul fast float %4032, %4034
  %4038 = and i32 %50, 4
  %4039 = icmp eq i32 %4038, 0
  br i1 %4039, label %4040, label %5308, !dx.controlflow.hints !88

; <label>:4040                                    ; preds = %3985
  %4041 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %4042 = extractvalue %dx.types.CBufRet.i32 %4041, 0
  %4043 = and i32 %4042, 32
  %4044 = icmp eq i32 %4043, 0
  br i1 %4044, label %4087, label %4045, !dx.controlflow.hints !89

; <label>:4045                                    ; preds = %4040
  %4046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4047 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %38, %dx.types.Handle %4046, float %358, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float %356, float %357, float undef, float %354, float %355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4048 = extractvalue %dx.types.ResRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.ResRet.f32 %4047, 1
  %4050 = extractvalue %dx.types.ResRet.f32 %4047, 2
  %4051 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.i32 %4051, 3
  %4053 = icmp eq i32 %4052, 5
  br i1 %4053, label %4103, label %4054, !dx.controlflow.hints !90

; <label>:4054                                    ; preds = %4045
  %4055 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %37, %dx.types.Handle %4046, float %358, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float %356, float %357, float undef, float %354, float %355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4056 = extractvalue %dx.types.ResRet.f32 %4055, 0
  %4057 = extractvalue %dx.types.ResRet.f32 %4055, 1
  %4058 = extractvalue %dx.types.ResRet.f32 %4055, 2
  %4059 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %36, %dx.types.Handle %4046, float %358, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float %356, float %357, float undef, float %354, float %355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4060 = extractvalue %dx.types.ResRet.f32 %4059, 0
  %4061 = extractvalue %dx.types.ResRet.f32 %4059, 1
  %4062 = extractvalue %dx.types.ResRet.f32 %4059, 2
  %4063 = call float @dx.op.dot3.f32(i32 55, float %4048, float %4049, float %4050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4064 = fmul fast float %4063, 1.875000e-01
  %4065 = fadd fast float %4064, 0x3FE77AE140000000
  %4066 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4067 = and i32 %4042, 64
  %4068 = icmp eq i32 %4067, 0
  %4069 = and i32 %4042, 256
  %4070 = icmp ne i32 %4069, 0
  br i1 %4068, label %4073, label %4071

; <label>:4071                                    ; preds = %4054
  %4072 = fmul fast float %4062, 2.000000e+00
  br label %4103

; <label>:4073                                    ; preds = %4054
  %4074 = and i32 %4042, 128
  %4075 = icmp eq i32 %4074, 0
  br i1 %4075, label %4085, label %4076

; <label>:4076                                    ; preds = %4073
  %4077 = fcmp fast une float %4062, 0.000000e+00
  %4078 = fmul fast float %4062, 3.200000e+01
  %4079 = fadd fast float %4078, -1.600000e+01
  %4080 = call float @dx.op.unary.f32(i32 21, float %4079)  ; Exp(value)
  %4081 = select i1 %4077, float %4080, float 0.000000e+00
  %4082 = fmul fast float %4081, %4048
  %4083 = fmul fast float %4081, %4049
  %4084 = fmul fast float %4081, %4050
  br label %4103

; <label>:4085                                    ; preds = %4073
  %4086 = select i1 %4070, float %4062, float %4066
  br label %4103

; <label>:4087                                    ; preds = %4040
  %4088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4089 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %38, %dx.types.Handle %4088, float %358, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float %356, float %357, float undef, float %354, float %355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4090 = extractvalue %dx.types.ResRet.f32 %4089, 0
  %4091 = extractvalue %dx.types.ResRet.f32 %4089, 1
  %4092 = extractvalue %dx.types.ResRet.f32 %4089, 2
  %4093 = extractvalue %dx.types.ResRet.f32 %4089, 3
  %4094 = call float @dx.op.dot3.f32(i32 55, float %4090, float %4091, float %4092, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4095 = fmul fast float %4094, 1.875000e-01
  %4096 = fadd fast float %4095, 0x3FE77AE140000000
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  %4098 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %37, %dx.types.Handle %4088, float %358, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float %356, float %357, float undef, float %354, float %355, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4099 = extractvalue %dx.types.ResRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.ResRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.ResRet.f32 %4098, 2
  %4102 = extractvalue %dx.types.ResRet.f32 %4098, 3
  br label %4103

; <label>:4103                                    ; preds = %4087, %4085, %4076, %4071, %4045
  %4104 = phi float [ %4097, %4087 ], [ %4066, %4071 ], [ %4066, %4076 ], [ undef, %4045 ], [ %4086, %4085 ]
  %4105 = phi float [ 0.000000e+00, %4087 ], [ %4072, %4071 ], [ 0.000000e+00, %4076 ], [ undef, %4045 ], [ 0.000000e+00, %4085 ]
  %4106 = phi float [ %4093, %4087 ], [ %4060, %4071 ], [ %4060, %4076 ], [ undef, %4045 ], [ %4060, %4085 ]
  %4107 = phi float [ 0.000000e+00, %4087 ], [ 0.000000e+00, %4071 ], [ %4082, %4076 ], [ undef, %4045 ], [ 0.000000e+00, %4085 ]
  %4108 = phi float [ 0.000000e+00, %4087 ], [ 0.000000e+00, %4071 ], [ %4083, %4076 ], [ undef, %4045 ], [ 0.000000e+00, %4085 ]
  %4109 = phi float [ 0.000000e+00, %4087 ], [ 0.000000e+00, %4071 ], [ %4084, %4076 ], [ undef, %4045 ], [ 0.000000e+00, %4085 ]
  %4110 = phi float [ %4090, %4087 ], [ %4048, %4071 ], [ %4048, %4076 ], [ %4048, %4045 ], [ %4048, %4085 ]
  %4111 = phi float [ %4091, %4087 ], [ %4049, %4071 ], [ %4049, %4076 ], [ %4049, %4045 ], [ %4049, %4085 ]
  %4112 = phi float [ %4092, %4087 ], [ %4050, %4071 ], [ %4050, %4076 ], [ %4050, %4045 ], [ %4050, %4085 ]
  %4113 = phi float [ %4099, %4087 ], [ %4056, %4071 ], [ %4056, %4076 ], [ 0.000000e+00, %4045 ], [ %4056, %4085 ]
  %4114 = phi float [ %4100, %4087 ], [ %4057, %4071 ], [ %4057, %4076 ], [ 5.000000e-01, %4045 ], [ %4057, %4085 ]
  %4115 = phi float [ %4101, %4087 ], [ %4058, %4071 ], [ %4058, %4076 ], [ 0.000000e+00, %4045 ], [ %4058, %4085 ]
  %4116 = phi float [ %4102, %4087 ], [ %4061, %4071 ], [ %4061, %4076 ], [ 5.000000e-01, %4045 ], [ %4061, %4085 ]
  %4117 = fmul fast float %4114, 2.000000e+00
  %4118 = fadd fast float %4117, -1.000000e+00
  %4119 = fmul fast float %4116, 2.000000e+00
  %4120 = fadd fast float %4119, -1.000000e+00
  %4121 = fadd fast float %4120, %4118
  %4122 = fmul fast float %4121, 5.000000e-01
  %4123 = fsub fast float %4118, %4120
  %4124 = fmul fast float %4123, 5.000000e-01
  %4125 = call float @dx.op.unary.f32(i32 6, float %4122)  ; FAbs(value)
  %4126 = fsub fast float 1.000000e+00, %4125
  %4127 = call float @dx.op.unary.f32(i32 6, float %4124)  ; FAbs(value)
  %4128 = fsub fast float %4126, %4127
  %4129 = call float @dx.op.dot3.f32(i32 55, float %4122, float %4124, float %4128, float %4122, float %4124, float %4128)  ; Dot3(ax,ay,az,bx,by,bz)
  %4130 = call float @dx.op.unary.f32(i32 25, float %4129)  ; Rsqrt(value)
  %4131 = fmul fast float %4122, %4130
  %4132 = fmul fast float %4124, %4130
  %4133 = fmul fast float %4130, %4128
  %4134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.i32 %4134, 0
  %4136 = and i32 %4135, 16
  %4137 = icmp eq i32 %4136, 0
  br i1 %4137, label %4385, label %4138, !dx.controlflow.hints !91

; <label>:4138                                    ; preds = %4103
  %4139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.i32 %4139, 0
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 3
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4145 = uitofp i32 %4140 to float
  %4146 = fptosi float %4145 to i32
  %4147 = fmul fast float %360, 0x3F3A027520000000
  %4148 = fmul fast float %361, 0x3F3A027520000000
  %4149 = add nsw i32 %4146, -1
  %4150 = fptosi float %4148 to i32
  %4151 = call i32 @dx.op.binary.i32(i32 37, i32 %4150, i32 0)  ; IMax(a,b)
  %4152 = call i32 @dx.op.binary.i32(i32 38, i32 %4151, i32 %4149)  ; IMin(a,b)
  %4153 = fptosi float %4147 to i32
  %4154 = call i32 @dx.op.binary.i32(i32 37, i32 %4153, i32 0)  ; IMax(a,b)
  %4155 = call i32 @dx.op.binary.i32(i32 38, i32 %4154, i32 %4149)  ; IMin(a,b)
  %4156 = mul nsw i32 %4152, %4146
  %4157 = add nsw i32 %4155, %4156
  %4158 = sdiv i32 %4157, 4
  %4159 = shl nsw i32 %4158, 2
  %4160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %4159, i32 undef)  ; BufferLoad(srv,index,wot)
  %4161 = extractvalue %dx.types.ResRet.i32 %4160, 0
  %4162 = srem i32 %4157, 4
  %4163 = shl nsw i32 %4162, 3
  %4164 = and i32 %4163, 24
  %4165 = lshr i32 %4161, %4164
  %4166 = and i32 %4165, 255
  %4167 = mul nuw nsw i32 %4166, 12
  %4168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %32, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = extractvalue %dx.types.ResRet.f32 %4168, 1
  %4171 = extractvalue %dx.types.ResRet.f32 %4168, 2
  %4172 = fsub fast float %360, %4169
  %4173 = fsub fast float %361, %4170
  %4174 = fdiv fast float %4172, %4171
  %4175 = fdiv fast float %4173, %4171
  %4176 = extractvalue %dx.types.CBufRet.i32 %4139, 1
  %4177 = shl i32 %4176, 5
  %4178 = uitofp i32 %4177 to float
  %4179 = shl nuw nsw i32 %4166, 3
  %4180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 %4179, i32 undef)  ; BufferLoad(srv,index,wot)
  %4181 = extractvalue %dx.types.ResRet.i32 %4180, 0
  %4182 = extractvalue %dx.types.ResRet.i32 %4180, 1
  %4183 = lshr i32 %4182, 16
  %4184 = and i32 %4183, 1
  %4185 = icmp eq i32 %4184, 0
  br i1 %4185, label %4186, label %4191

; <label>:4186                                    ; preds = %4138
  %4187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %33, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %4188 = extractvalue %dx.types.ResRet.i32 %4187, 0
  %4189 = extractvalue %dx.types.ResRet.i32 %4187, 1
  %4190 = lshr i32 %4189, 16
  br label %4191

; <label>:4191                                    ; preds = %4186, %4138
  %4192 = phi i32 [ 0, %4186 ], [ %4166, %4138 ]
  %4193 = phi i32 [ %4188, %4186 ], [ %4181, %4138 ]
  %4194 = phi i32 [ %4189, %4186 ], [ %4182, %4138 ]
  %4195 = phi i32 [ %4190, %4186 ], [ %4183, %4138 ]
  %4196 = and i32 %4194, 65535
  %4197 = lshr i32 %4193, 16
  %4198 = and i32 %4193, 65535
  %4199 = lshr i32 %4195, 1
  %4200 = uitofp i32 %4199 to float
  %4201 = icmp eq i32 %4192, 0
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 2
  %4204 = bitcast float %4203 to i32
  %4205 = fdiv fast float %360, %4144
  %4206 = fdiv fast float %361, %4144
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 301)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.CBufRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.CBufRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.CBufRet.f32 %4207, 3
  %4212 = fmul fast float %151, %151
  %4213 = fmul fast float %152, %152
  %4214 = fadd fast float %4213, %4212
  %4215 = fmul fast float %153, %153
  %4216 = fadd fast float %4214, %4215
  %4217 = call float @dx.op.unary.f32(i32 24, float %4216)  ; Sqrt(value)
  %4218 = fadd fast float %4217, %4210
  %4219 = fcmp fast ogt float %153, 0.000000e+00
  %4220 = fcmp fast olt float %153, 0.000000e+00
  %4221 = zext i1 %4219 to i32
  %4222 = zext i1 %4220 to i32
  %4223 = sub nsw i32 %4221, %4222
  %4224 = sitofp i32 %4223 to float
  %4225 = fmul fast float %4211, %4224
  %4226 = fadd fast float %4225, %153
  %4227 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %4226, float %151, float %152, float %4226)  ; Dot3(ax,ay,az,bx,by,bz)
  %4228 = call float @dx.op.unary.f32(i32 25, float %4227)  ; Rsqrt(value)
  %4229 = fmul fast float %151, %4228
  %4230 = fsub fast float -0.000000e+00, %4229
  %4231 = fmul fast float %152, %4228
  %4232 = fsub fast float -0.000000e+00, %4231
  %4233 = fmul fast float %4228, %4226
  %4234 = fsub fast float -0.000000e+00, %4233
  %4235 = call float @dx.op.dot3.f32(i32 55, float %4230, float %4232, float %4234, float %104, float %106, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4237 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4238 = fsub fast float 1.000000e+00, %4209
  %4239 = fmul fast float %4237, %4238
  %4240 = fadd fast float %4239, %4209
  %4241 = fmul fast float %4240, %4208
  %4242 = fdiv fast float %4218, %4241
  %4243 = call float @dx.op.binary.f32(i32 35, float 1.000000e+00, float %4242)  ; FMax(a,b)
  %4244 = call float @dx.op.unary.f32(i32 23, float %4243)  ; Log(value)
  %4245 = fadd fast float %4244, %4142
  %4246 = select i1 %4201, float %4205, float %4174
  %4247 = select i1 %4201, float %4206, float %4175
  %4248 = call float @dx.op.unary.f32(i32 27, float %4245)  ; Round_ni(value)
  %4249 = fptosi float %4248 to i32
  %4250 = sub nsw i32 8, %4196
  %4251 = select i1 %4201, i32 %4204, i32 %4250
  %4252 = sub nsw i32 %4249, %4251
  %4253 = call i32 @dx.op.binary.i32(i32 37, i32 %4252, i32 0)  ; IMax(a,b)
  %4254 = call i32 @dx.op.binary.i32(i32 38, i32 %4253, i32 %4196)  ; IMin(a,b)
  %4255 = fptoui float %4200 to i32
  %4256 = and i32 %4254, 31
  %4257 = lshr i32 %4255, %4256
  %4258 = add i32 %4257, -1
  %4259 = uitofp i32 %4258 to float
  %4260 = uitofp i32 %4257 to float
  %4261 = fmul fast float %4260, %4246
  %4262 = fmul fast float %4260, %4247
  %4263 = call float @dx.op.unary.f32(i32 27, float %4261)  ; Round_ni(value)
  %4264 = call float @dx.op.unary.f32(i32 27, float %4262)  ; Round_ni(value)
  %4265 = call float @dx.op.binary.f32(i32 35, float %4263, float 0.000000e+00)  ; FMax(a,b)
  %4266 = call float @dx.op.binary.f32(i32 35, float %4264, float 0.000000e+00)  ; FMax(a,b)
  %4267 = call float @dx.op.binary.f32(i32 36, float %4265, float %4259)  ; FMin(a,b)
  %4268 = call float @dx.op.binary.f32(i32 36, float %4266, float %4259)  ; FMin(a,b)
  %4269 = fptoui float %4267 to i32
  %4270 = fptoui float %4268 to i32
  %4271 = lshr i32 %4198, %4256
  %4272 = lshr i32 %4197, %4256
  %4273 = add i32 %4269, %4271
  %4274 = add i32 %4270, %4272
  %4275 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %34, i32 %4254, i32 %4273, i32 %4274, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4276 = extractvalue %dx.types.ResRet.i32 %4275, 0
  %4277 = and i32 %4276, 255
  %4278 = uitofp i32 %4277 to float
  %4279 = lshr i32 %4276, 8
  %4280 = and i32 %4279, 255
  %4281 = uitofp i32 %4280 to float
  %4282 = lshr i32 %4276, 16
  %4283 = and i32 %4282, 255
  %4284 = uitofp i32 %4283 to float
  %4285 = fptoui float %4284 to i32
  %4286 = lshr i32 %4276, 24
  %4287 = uitofp i32 %4286 to float
  %4288 = fadd fast float %4287, 1.000000e+00
  %4289 = fptoui float %4288 to i32
  %4290 = uitofp i32 %4289 to float
  %4291 = fmul fast float %4290, %4246
  %4292 = fmul fast float %4290, %4247
  %4293 = add i32 %4289, -1
  %4294 = uitofp i32 %4293 to float
  %4295 = call float @dx.op.unary.f32(i32 27, float %4291)  ; Round_ni(value)
  %4296 = call float @dx.op.unary.f32(i32 27, float %4292)  ; Round_ni(value)
  %4297 = call float @dx.op.binary.f32(i32 35, float %4295, float 0.000000e+00)  ; FMax(a,b)
  %4298 = call float @dx.op.binary.f32(i32 35, float %4296, float 0.000000e+00)  ; FMax(a,b)
  %4299 = call float @dx.op.binary.f32(i32 36, float %4297, float %4294)  ; FMin(a,b)
  %4300 = call float @dx.op.binary.f32(i32 36, float %4298, float %4294)  ; FMin(a,b)
  %4301 = fsub fast float %4291, %4299
  %4302 = fsub fast float %4292, %4300
  %4303 = fmul fast float %4278, 3.200000e+01
  %4304 = fmul fast float %4281, 3.200000e+01
  %4305 = fmul fast float %4301, 3.000000e+01
  %4306 = fmul fast float %4302, 3.000000e+01
  %4307 = fadd fast float %4303, 1.500000e+00
  %4308 = fadd fast float %4307, %4305
  %4309 = fadd fast float %4304, 1.500000e+00
  %4310 = fadd fast float %4309, %4306
  %4311 = fdiv fast float %4308, %4178
  %4312 = fdiv fast float %4310, %4178
  %4313 = uitofp i32 %4285 to float
  %4314 = fsub fast float %4245, %4313
  %4315 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4316 = sub i32 1, %4251
  %4317 = add i32 %4316, %4249
  %4318 = call i32 @dx.op.binary.i32(i32 37, i32 %4317, i32 0)  ; IMax(a,b)
  %4319 = call i32 @dx.op.binary.i32(i32 38, i32 %4318, i32 %4196)  ; IMin(a,b)
  %4320 = and i32 %4319, 31
  %4321 = lshr i32 %4255, %4320
  %4322 = add i32 %4321, -1
  %4323 = uitofp i32 %4322 to float
  %4324 = uitofp i32 %4321 to float
  %4325 = fmul fast float %4324, %4246
  %4326 = fmul fast float %4324, %4247
  %4327 = call float @dx.op.unary.f32(i32 27, float %4325)  ; Round_ni(value)
  %4328 = call float @dx.op.unary.f32(i32 27, float %4326)  ; Round_ni(value)
  %4329 = call float @dx.op.binary.f32(i32 35, float %4327, float 0.000000e+00)  ; FMax(a,b)
  %4330 = call float @dx.op.binary.f32(i32 35, float %4328, float 0.000000e+00)  ; FMax(a,b)
  %4331 = call float @dx.op.binary.f32(i32 36, float %4329, float %4323)  ; FMin(a,b)
  %4332 = call float @dx.op.binary.f32(i32 36, float %4330, float %4323)  ; FMin(a,b)
  %4333 = fptoui float %4331 to i32
  %4334 = fptoui float %4332 to i32
  %4335 = lshr i32 %4198, %4320
  %4336 = lshr i32 %4197, %4320
  %4337 = add i32 %4333, %4335
  %4338 = add i32 %4334, %4336
  %4339 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %34, i32 %4319, i32 %4337, i32 %4338, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4340 = extractvalue %dx.types.ResRet.i32 %4339, 0
  %4341 = and i32 %4340, 255
  %4342 = uitofp i32 %4341 to float
  %4343 = lshr i32 %4340, 8
  %4344 = and i32 %4343, 255
  %4345 = uitofp i32 %4344 to float
  %4346 = lshr i32 %4340, 24
  %4347 = uitofp i32 %4346 to float
  %4348 = fadd fast float %4347, 1.000000e+00
  %4349 = fptoui float %4348 to i32
  %4350 = uitofp i32 %4349 to float
  %4351 = fmul fast float %4350, %4246
  %4352 = fmul fast float %4350, %4247
  %4353 = add i32 %4349, -1
  %4354 = uitofp i32 %4353 to float
  %4355 = call float @dx.op.unary.f32(i32 27, float %4351)  ; Round_ni(value)
  %4356 = call float @dx.op.unary.f32(i32 27, float %4352)  ; Round_ni(value)
  %4357 = call float @dx.op.binary.f32(i32 35, float %4355, float 0.000000e+00)  ; FMax(a,b)
  %4358 = call float @dx.op.binary.f32(i32 35, float %4356, float 0.000000e+00)  ; FMax(a,b)
  %4359 = call float @dx.op.binary.f32(i32 36, float %4357, float %4354)  ; FMin(a,b)
  %4360 = call float @dx.op.binary.f32(i32 36, float %4358, float %4354)  ; FMin(a,b)
  %4361 = fsub fast float %4351, %4359
  %4362 = fsub fast float %4352, %4360
  %4363 = fmul fast float %4342, 3.200000e+01
  %4364 = fmul fast float %4345, 3.200000e+01
  %4365 = fmul fast float %4361, 3.000000e+01
  %4366 = fmul fast float %4362, 3.000000e+01
  %4367 = fadd fast float %4363, 1.500000e+00
  %4368 = fadd fast float %4367, %4365
  %4369 = fadd fast float %4364, 1.500000e+00
  %4370 = fadd fast float %4369, %4366
  %4371 = fdiv fast float %4368, %4178
  %4372 = fdiv fast float %4370, %4178
  %4373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4311, float %4312, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4374 = extractvalue %dx.types.ResRet.f32 %4373, 0
  %4375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4371, float %4372, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4376 = extractvalue %dx.types.ResRet.f32 %4375, 0
  %4377 = fsub fast float %4376, %4374
  %4378 = fmul fast float %4377, %4315
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 300)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4381 = fsub fast float %4374, %4380
  %4382 = fadd fast float %4381, %4378
  %4383 = extractvalue %dx.types.CBufRet.f32 %4379, 2
  %4384 = fmul fast float %4382, %4383
  br label %4385

; <label>:4385                                    ; preds = %4191, %4103
  %4386 = phi float [ %4384, %4191 ], [ 0.000000e+00, %4103 ]
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 0
  %4389 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4390 = extractvalue %dx.types.CBufRet.f32 %4387, 2
  %4391 = add i32 %48, 440
  %4392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.i32 %4392, 2
  %4394 = bitcast i32 %4393 to float
  %4395 = extractvalue %dx.types.ResRet.i32 %4392, 3
  %4396 = bitcast i32 %4395 to float
  %4397 = fsub fast float %108, %4394
  %4398 = fdiv fast float %4397, %4396
  %4399 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4400 = fcmp fast ogt float %4399, 0.000000e+00
  %4401 = and i32 %4135, 2
  %4402 = icmp ne i32 %4401, 0
  %4403 = and i1 %4402, %4400
  br i1 %4403, label %4404, label %5308

; <label>:4404                                    ; preds = %4385
  %4405 = add i32 %48, 408
  %4406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %4405, i32 undef)  ; BufferLoad(srv,index,wot)
  %4407 = extractvalue %dx.types.ResRet.i32 %4406, 0
  %4408 = bitcast i32 %4407 to float
  %4409 = extractvalue %dx.types.ResRet.i32 %4406, 1
  %4410 = bitcast i32 %4409 to float
  %4411 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %4412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %4413 = extractvalue %dx.types.CBufRet.f32 %4412, 2
  %4414 = extractvalue %dx.types.CBufRet.f32 %4412, 3
  %4415 = fadd fast float %4388, %151
  %4416 = fadd fast float %4389, %152
  %4417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4418 = extractvalue %dx.types.CBufRet.i32 %4417, 3
  %4419 = icmp eq i32 %4418, 0
  br i1 %4419, label %4536, label %4420, !dx.controlflow.hints !92

; <label>:4420                                    ; preds = %4404
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 2
  %4423 = extractvalue %dx.types.CBufRet.f32 %4421, 3
  %4424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4425 = extractvalue %dx.types.CBufRet.f32 %4424, 0
  %4426 = extractvalue %dx.types.CBufRet.f32 %4424, 1
  %4427 = extractvalue %dx.types.CBufRet.f32 %4421, 0
  %4428 = extractvalue %dx.types.CBufRet.f32 %4421, 1
  %4429 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.i32 %4429, 0
  %4431 = extractvalue %dx.types.CBufRet.i32 %4429, 1
  %4432 = extractvalue %dx.types.CBufRet.i32 %4429, 2
  %4433 = extractvalue %dx.types.CBufRet.i32 %4429, 3
  %4434 = fadd fast float %4422, 0xBF847AE140000000
  %4435 = fadd fast float %4423, 0xBF847AE140000000
  %4436 = fsub fast float %4415, %4425
  %4437 = fsub fast float %4416, %4426
  %4438 = call float @dx.op.binary.f32(i32 35, float %4436, float 0.000000e+00)  ; FMax(a,b)
  %4439 = call float @dx.op.binary.f32(i32 35, float %4437, float 0.000000e+00)  ; FMax(a,b)
  %4440 = call float @dx.op.binary.f32(i32 36, float %4438, float %4434)  ; FMin(a,b)
  %4441 = call float @dx.op.binary.f32(i32 36, float %4439, float %4435)  ; FMin(a,b)
  %4442 = fdiv fast float %4440, %4427
  %4443 = fdiv fast float %4441, %4428
  %4444 = fptoui float %4442 to i32
  %4445 = fptoui float %4443 to i32
  %4446 = mul i32 %4445, %4430
  %4447 = add i32 %4446, %4444
  %4448 = lshr i32 %4447, 1
  %4449 = shl i32 %4448, 2
  %4450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4449, i32 undef)  ; BufferLoad(srv,index,wot)
  %4451 = extractvalue %dx.types.ResRet.i32 %4450, 0
  %4452 = shl i32 %4447, 4
  %4453 = and i32 %4452, 16
  %4454 = lshr i32 %4451, %4453
  %4455 = and i32 %4454, 255
  %4456 = lshr i32 %4454, 8
  %4457 = and i32 %4456, 31
  %4458 = shl i32 1, %4457
  %4459 = uitofp i32 %4458 to float
  %4460 = fmul fast float %4459, %4440
  %4461 = fdiv fast float %4460, %4422
  %4462 = fmul fast float %4459, %4441
  %4463 = fdiv fast float %4462, %4423
  %4464 = call float @dx.op.unary.f32(i32 22, float %4461)  ; Frc(value)
  %4465 = call float @dx.op.unary.f32(i32 22, float %4463)  ; Frc(value)
  %4466 = uitofp i32 %4431 to float
  %4467 = fmul fast float %4464, %4466
  %4468 = fmul fast float %4465, %4466
  %4469 = uitofp i32 %4433 to float
  %4470 = fadd fast float %4467, %4469
  %4471 = fadd fast float %4468, %4469
  %4472 = mul i32 %4455, %4432
  %4473 = call float @dx.op.unary.f32(i32 22, float %4470)  ; Frc(value)
  %4474 = fptoui float %4470 to i32
  %4475 = fptoui float %4471 to i32
  %4476 = getelementptr [4 x i32], [4 x i32]* %84, i32 0, i32 0
  %4477 = getelementptr [4 x i32], [4 x i32]* %85, i32 0, i32 0
  store i32 %4474, i32* %4476, align 4
  store i32 %4475, i32* %4477, align 4
  %4478 = add i32 %4474, 1
  %4479 = getelementptr [4 x i32], [4 x i32]* %84, i32 0, i32 1
  %4480 = getelementptr [4 x i32], [4 x i32]* %85, i32 0, i32 1
  store i32 %4478, i32* %4479, align 4
  store i32 %4475, i32* %4480, align 4
  %4481 = add i32 %4475, 1
  %4482 = getelementptr [4 x i32], [4 x i32]* %84, i32 0, i32 2
  %4483 = getelementptr [4 x i32], [4 x i32]* %85, i32 0, i32 2
  store i32 %4474, i32* %4482, align 4
  store i32 %4481, i32* %4483, align 4
  %4484 = getelementptr [4 x i32], [4 x i32]* %84, i32 0, i32 3
  %4485 = getelementptr [4 x i32], [4 x i32]* %85, i32 0, i32 3
  store i32 %4478, i32* %4484, align 4
  store i32 %4481, i32* %4485, align 4
  br label %4486

; <label>:4486                                    ; preds = %4510, %4420
  %4487 = phi i32 [ %4475, %4420 ], [ %4514, %4510 ]
  %4488 = phi i32 [ %4474, %4420 ], [ %4512, %4510 ]
  %4489 = phi i32 [ 0, %4420 ], [ %4508, %4510 ]
  %4490 = add i32 %4432, -1
  %4491 = call i32 @dx.op.binary.i32(i32 40, i32 %4488, i32 %4490)  ; UMin(a,b)
  %4492 = call i32 @dx.op.binary.i32(i32 40, i32 %4487, i32 %4490)  ; UMin(a,b)
  %4493 = add i32 %4492, %4472
  %4494 = mul i32 %4493, %4432
  %4495 = add i32 %4494, %4491
  %4496 = lshr i32 %4495, 1
  %4497 = shl i32 %4496, 2
  %4498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4497, i32 undef)  ; BufferLoad(srv,index,wot)
  %4499 = extractvalue %dx.types.ResRet.i32 %4498, 0
  %4500 = shl i32 %4495, 4
  %4501 = and i32 %4500, 16
  %4502 = lshr i32 %4499, %4501
  %4503 = and i32 %4502, 65535
  %4504 = uitofp i32 %4503 to float
  %4505 = fmul fast float %4504, 0x3EF0002000000000
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 %4489
  store float %4506, float* %4507, align 4, !tbaa !93, !noalias !97
  %4508 = add nuw nsw i32 %4489, 1
  %4509 = icmp eq i32 %4508, 4
  br i1 %4509, label %4515, label %4510

; <label>:4510                                    ; preds = %4486
  %4511 = getelementptr [4 x i32], [4 x i32]* %84, i32 0, i32 %4508
  %4512 = load i32, i32* %4511, align 4
  %4513 = getelementptr [4 x i32], [4 x i32]* %85, i32 0, i32 %4508
  %4514 = load i32, i32* %4513, align 4
  br label %4486

; <label>:4515                                    ; preds = %4486
  %4516 = call float @dx.op.unary.f32(i32 22, float %4471)  ; Frc(value)
  %4517 = fsub fast float 1.000000e+00, %4473
  %4518 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 0
  %4519 = load float, float* %4518, align 4, !tbaa !93, !noalias !97
  %4520 = fmul fast float %4519, %4517
  %4521 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 1
  %4522 = load float, float* %4521, align 4, !tbaa !93, !noalias !97
  %4523 = fmul fast float %4522, %4473
  %4524 = fadd fast float %4523, %4520
  %4525 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 2
  %4526 = load float, float* %4525, align 4, !tbaa !93, !noalias !97
  %4527 = fmul fast float %4526, %4517
  %4528 = getelementptr inbounds [4 x float], [4 x float]* %90, i32 0, i32 3
  %4529 = load float, float* %4528, align 4, !tbaa !93, !noalias !97
  %4530 = fmul fast float %4529, %4473
  %4531 = fadd fast float %4530, %4527
  %4532 = fsub fast float 1.000000e+00, %4516
  %4533 = fmul fast float %4524, %4532
  %4534 = fmul fast float %4531, %4516
  %4535 = fadd fast float %4534, %4533
  br label %4563

; <label>:4536                                    ; preds = %4404
  %4537 = extractvalue %dx.types.CBufRet.f32 %4411, 1
  %4538 = fsub fast float %4416, %4537
  %4539 = extractvalue %dx.types.CBufRet.f32 %4411, 3
  %4540 = fdiv fast float %4538, %4539
  %4541 = extractvalue %dx.types.CBufRet.f32 %4411, 0
  %4542 = fsub fast float %4415, %4541
  %4543 = extractvalue %dx.types.CBufRet.f32 %4411, 2
  %4544 = fdiv fast float %4542, %4543
  %4545 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.i32 %4545, 0
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = extractvalue %dx.types.CBufRet.f32 %4547, 2
  %4550 = fdiv fast float 5.000000e-01, %4548
  %4551 = fmul fast float %4550, 2.000000e+00
  %4552 = fsub fast float 1.000000e+00, %4551
  %4553 = fmul fast float %4552, %4544
  %4554 = fmul fast float %4552, %4540
  %4555 = fadd fast float %4553, %4550
  %4556 = fadd fast float %4554, %4550
  %4557 = fmul fast float %4555, %4549
  %4558 = fmul fast float %4556, %4549
  %4559 = add i32 %4546, 0
  %4560 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4559, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4560, %dx.types.Handle %42, float %4557, float %4558, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4562 = extractvalue %dx.types.ResRet.f32 %4561, 0
  br label %4563

; <label>:4563                                    ; preds = %4536, %4515
  %4564 = phi float [ %4535, %4515 ], [ %4562, %4536 ]
  %4565 = fmul fast float %4564, %4414
  %4566 = fsub fast float %153, %4386
  %4567 = fadd fast float %4566, %4390
  %4568 = fsub fast float %4567, %4413
  %4569 = fsub fast float %4568, %4565
  %4570 = fcmp fast ult float %4569, -6.000000e+00
  br i1 %4570, label %4577, label %4571

; <label>:4571                                    ; preds = %4563
  %4572 = fsub fast float %4569, %4408
  %4573 = call float @dx.op.binary.f32(i32 35, float 0x3F50624DE0000000, float %4410)  ; FMax(a,b)
  %4574 = fdiv fast float %4572, %4573
  %4575 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4576 = fsub fast float 1.000000e+00, %4575
  br label %4577

; <label>:4577                                    ; preds = %4571, %4563
  %4578 = phi float [ %4576, %4571 ], [ 0.000000e+00, %4563 ]
  %4579 = fmul fast float %4578, %4399
  %4580 = fcmp fast olt float %4569, 1.600000e+01
  br i1 %4580, label %4581, label %5238

; <label>:4581                                    ; preds = %4577
  %4582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4582, 2
  %4584 = extractvalue %dx.types.CBufRet.f32 %4582, 3
  %4585 = fsub fast float %151, %4583
  %4586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 2
  %4589 = extractvalue %dx.types.CBufRet.f32 %4587, 3
  %4590 = fadd fast float %4585, %4388
  %4591 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4592 = extractvalue %dx.types.CBufRet.i32 %4591, 3
  %4593 = icmp eq i32 %4592, 0
  br i1 %4593, label %4710, label %4594, !dx.controlflow.hints !92

; <label>:4594                                    ; preds = %4581
  %4595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %4596 = extractvalue %dx.types.CBufRet.f32 %4595, 2
  %4597 = extractvalue %dx.types.CBufRet.f32 %4595, 3
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.CBufRet.f32 %4595, 0
  %4602 = extractvalue %dx.types.CBufRet.f32 %4595, 1
  %4603 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.i32 %4603, 0
  %4605 = extractvalue %dx.types.CBufRet.i32 %4603, 1
  %4606 = extractvalue %dx.types.CBufRet.i32 %4603, 2
  %4607 = extractvalue %dx.types.CBufRet.i32 %4603, 3
  %4608 = fadd fast float %4596, 0xBF847AE140000000
  %4609 = fadd fast float %4597, 0xBF847AE140000000
  %4610 = fsub fast float %4590, %4599
  %4611 = fsub fast float %4416, %4600
  %4612 = call float @dx.op.binary.f32(i32 35, float %4610, float 0.000000e+00)  ; FMax(a,b)
  %4613 = call float @dx.op.binary.f32(i32 35, float %4611, float 0.000000e+00)  ; FMax(a,b)
  %4614 = call float @dx.op.binary.f32(i32 36, float %4612, float %4608)  ; FMin(a,b)
  %4615 = call float @dx.op.binary.f32(i32 36, float %4613, float %4609)  ; FMin(a,b)
  %4616 = fdiv fast float %4614, %4601
  %4617 = fdiv fast float %4615, %4602
  %4618 = fptoui float %4616 to i32
  %4619 = fptoui float %4617 to i32
  %4620 = mul i32 %4619, %4604
  %4621 = add i32 %4620, %4618
  %4622 = lshr i32 %4621, 1
  %4623 = shl i32 %4622, 2
  %4624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4623, i32 undef)  ; BufferLoad(srv,index,wot)
  %4625 = extractvalue %dx.types.ResRet.i32 %4624, 0
  %4626 = shl i32 %4621, 4
  %4627 = and i32 %4626, 16
  %4628 = lshr i32 %4625, %4627
  %4629 = and i32 %4628, 255
  %4630 = lshr i32 %4628, 8
  %4631 = and i32 %4630, 31
  %4632 = shl i32 1, %4631
  %4633 = uitofp i32 %4632 to float
  %4634 = fmul fast float %4633, %4614
  %4635 = fdiv fast float %4634, %4596
  %4636 = fmul fast float %4633, %4615
  %4637 = fdiv fast float %4636, %4597
  %4638 = call float @dx.op.unary.f32(i32 22, float %4635)  ; Frc(value)
  %4639 = call float @dx.op.unary.f32(i32 22, float %4637)  ; Frc(value)
  %4640 = uitofp i32 %4605 to float
  %4641 = fmul fast float %4638, %4640
  %4642 = fmul fast float %4639, %4640
  %4643 = uitofp i32 %4607 to float
  %4644 = fadd fast float %4641, %4643
  %4645 = fadd fast float %4642, %4643
  %4646 = mul i32 %4629, %4606
  %4647 = call float @dx.op.unary.f32(i32 22, float %4644)  ; Frc(value)
  %4648 = fptoui float %4644 to i32
  %4649 = fptoui float %4645 to i32
  %4650 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 0
  %4651 = getelementptr [4 x i32], [4 x i32]* %83, i32 0, i32 0
  store i32 %4648, i32* %4650, align 4
  store i32 %4649, i32* %4651, align 4
  %4652 = add i32 %4648, 1
  %4653 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 1
  %4654 = getelementptr [4 x i32], [4 x i32]* %83, i32 0, i32 1
  store i32 %4652, i32* %4653, align 4
  store i32 %4649, i32* %4654, align 4
  %4655 = add i32 %4649, 1
  %4656 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 2
  %4657 = getelementptr [4 x i32], [4 x i32]* %83, i32 0, i32 2
  store i32 %4648, i32* %4656, align 4
  store i32 %4655, i32* %4657, align 4
  %4658 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 3
  %4659 = getelementptr [4 x i32], [4 x i32]* %83, i32 0, i32 3
  store i32 %4652, i32* %4658, align 4
  store i32 %4655, i32* %4659, align 4
  br label %4660

; <label>:4660                                    ; preds = %4684, %4594
  %4661 = phi i32 [ %4649, %4594 ], [ %4688, %4684 ]
  %4662 = phi i32 [ %4648, %4594 ], [ %4686, %4684 ]
  %4663 = phi i32 [ 0, %4594 ], [ %4682, %4684 ]
  %4664 = add i32 %4606, -1
  %4665 = call i32 @dx.op.binary.i32(i32 40, i32 %4662, i32 %4664)  ; UMin(a,b)
  %4666 = call i32 @dx.op.binary.i32(i32 40, i32 %4661, i32 %4664)  ; UMin(a,b)
  %4667 = add i32 %4666, %4646
  %4668 = mul i32 %4667, %4606
  %4669 = add i32 %4668, %4665
  %4670 = lshr i32 %4669, 1
  %4671 = shl i32 %4670, 2
  %4672 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4671, i32 undef)  ; BufferLoad(srv,index,wot)
  %4673 = extractvalue %dx.types.ResRet.i32 %4672, 0
  %4674 = shl i32 %4669, 4
  %4675 = and i32 %4674, 16
  %4676 = lshr i32 %4673, %4675
  %4677 = and i32 %4676, 65535
  %4678 = uitofp i32 %4677 to float
  %4679 = fmul fast float %4678, 0x3EF0002000000000
  %4680 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4681 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 %4663
  store float %4680, float* %4681, align 4, !tbaa !93, !noalias !97
  %4682 = add nuw nsw i32 %4663, 1
  %4683 = icmp eq i32 %4682, 4
  br i1 %4683, label %4689, label %4684

; <label>:4684                                    ; preds = %4660
  %4685 = getelementptr [4 x i32], [4 x i32]* %82, i32 0, i32 %4682
  %4686 = load i32, i32* %4685, align 4
  %4687 = getelementptr [4 x i32], [4 x i32]* %83, i32 0, i32 %4682
  %4688 = load i32, i32* %4687, align 4
  br label %4660

; <label>:4689                                    ; preds = %4660
  %4690 = call float @dx.op.unary.f32(i32 22, float %4645)  ; Frc(value)
  %4691 = fsub fast float 1.000000e+00, %4647
  %4692 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 0
  %4693 = load float, float* %4692, align 4, !tbaa !93, !noalias !97
  %4694 = fmul fast float %4693, %4691
  %4695 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 1
  %4696 = load float, float* %4695, align 4, !tbaa !93, !noalias !97
  %4697 = fmul fast float %4696, %4647
  %4698 = fadd fast float %4697, %4694
  %4699 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 2
  %4700 = load float, float* %4699, align 4, !tbaa !93, !noalias !97
  %4701 = fmul fast float %4700, %4691
  %4702 = getelementptr inbounds [4 x float], [4 x float]* %89, i32 0, i32 3
  %4703 = load float, float* %4702, align 4, !tbaa !93, !noalias !97
  %4704 = fmul fast float %4703, %4647
  %4705 = fadd fast float %4704, %4701
  %4706 = fsub fast float 1.000000e+00, %4690
  %4707 = fmul fast float %4698, %4706
  %4708 = fmul fast float %4705, %4690
  %4709 = fadd fast float %4708, %4707
  br label %4737

; <label>:4710                                    ; preds = %4581
  %4711 = extractvalue %dx.types.CBufRet.f32 %4586, 1
  %4712 = fsub fast float %4416, %4711
  %4713 = extractvalue %dx.types.CBufRet.f32 %4586, 3
  %4714 = fdiv fast float %4712, %4713
  %4715 = extractvalue %dx.types.CBufRet.f32 %4586, 0
  %4716 = fsub fast float %4590, %4715
  %4717 = extractvalue %dx.types.CBufRet.f32 %4586, 2
  %4718 = fdiv fast float %4716, %4717
  %4719 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4720 = extractvalue %dx.types.CBufRet.i32 %4719, 0
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 0
  %4723 = extractvalue %dx.types.CBufRet.f32 %4721, 2
  %4724 = fdiv fast float 5.000000e-01, %4722
  %4725 = fmul fast float %4724, 2.000000e+00
  %4726 = fsub fast float 1.000000e+00, %4725
  %4727 = fmul fast float %4726, %4718
  %4728 = fmul fast float %4726, %4714
  %4729 = fadd fast float %4727, %4724
  %4730 = fadd fast float %4728, %4724
  %4731 = fmul fast float %4729, %4723
  %4732 = fmul fast float %4730, %4723
  %4733 = add i32 %4720, 0
  %4734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4733, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4734, %dx.types.Handle %42, float %4731, float %4732, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4736 = extractvalue %dx.types.ResRet.f32 %4735, 0
  br label %4737

; <label>:4737                                    ; preds = %4710, %4689
  %4738 = phi float [ %4709, %4689 ], [ %4736, %4710 ]
  %4739 = fmul fast float %4738, %4589
  %4740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 2
  %4743 = extractvalue %dx.types.CBufRet.f32 %4741, 3
  %4744 = fadd fast float %4415, %4583
  %4745 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4746 = extractvalue %dx.types.CBufRet.i32 %4745, 3
  %4747 = icmp eq i32 %4746, 0
  br i1 %4747, label %4864, label %4748, !dx.controlflow.hints !92

; <label>:4748                                    ; preds = %4737
  %4749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %4750 = extractvalue %dx.types.CBufRet.f32 %4749, 2
  %4751 = extractvalue %dx.types.CBufRet.f32 %4749, 3
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.CBufRet.f32 %4752, 1
  %4755 = extractvalue %dx.types.CBufRet.f32 %4749, 0
  %4756 = extractvalue %dx.types.CBufRet.f32 %4749, 1
  %4757 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.i32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.i32 %4757, 1
  %4760 = extractvalue %dx.types.CBufRet.i32 %4757, 2
  %4761 = extractvalue %dx.types.CBufRet.i32 %4757, 3
  %4762 = fadd fast float %4750, 0xBF847AE140000000
  %4763 = fadd fast float %4751, 0xBF847AE140000000
  %4764 = fsub fast float %4744, %4753
  %4765 = fsub fast float %4416, %4754
  %4766 = call float @dx.op.binary.f32(i32 35, float %4764, float 0.000000e+00)  ; FMax(a,b)
  %4767 = call float @dx.op.binary.f32(i32 35, float %4765, float 0.000000e+00)  ; FMax(a,b)
  %4768 = call float @dx.op.binary.f32(i32 36, float %4766, float %4762)  ; FMin(a,b)
  %4769 = call float @dx.op.binary.f32(i32 36, float %4767, float %4763)  ; FMin(a,b)
  %4770 = fdiv fast float %4768, %4755
  %4771 = fdiv fast float %4769, %4756
  %4772 = fptoui float %4770 to i32
  %4773 = fptoui float %4771 to i32
  %4774 = mul i32 %4773, %4758
  %4775 = add i32 %4774, %4772
  %4776 = lshr i32 %4775, 1
  %4777 = shl i32 %4776, 2
  %4778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4777, i32 undef)  ; BufferLoad(srv,index,wot)
  %4779 = extractvalue %dx.types.ResRet.i32 %4778, 0
  %4780 = shl i32 %4775, 4
  %4781 = and i32 %4780, 16
  %4782 = lshr i32 %4779, %4781
  %4783 = and i32 %4782, 255
  %4784 = lshr i32 %4782, 8
  %4785 = and i32 %4784, 31
  %4786 = shl i32 1, %4785
  %4787 = uitofp i32 %4786 to float
  %4788 = fmul fast float %4787, %4768
  %4789 = fdiv fast float %4788, %4750
  %4790 = fmul fast float %4787, %4769
  %4791 = fdiv fast float %4790, %4751
  %4792 = call float @dx.op.unary.f32(i32 22, float %4789)  ; Frc(value)
  %4793 = call float @dx.op.unary.f32(i32 22, float %4791)  ; Frc(value)
  %4794 = uitofp i32 %4759 to float
  %4795 = fmul fast float %4792, %4794
  %4796 = fmul fast float %4793, %4794
  %4797 = uitofp i32 %4761 to float
  %4798 = fadd fast float %4795, %4797
  %4799 = fadd fast float %4796, %4797
  %4800 = mul i32 %4783, %4760
  %4801 = call float @dx.op.unary.f32(i32 22, float %4798)  ; Frc(value)
  %4802 = fptoui float %4798 to i32
  %4803 = fptoui float %4799 to i32
  %4804 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 0
  %4805 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 0
  store i32 %4802, i32* %4804, align 4
  store i32 %4803, i32* %4805, align 4
  %4806 = add i32 %4802, 1
  %4807 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 1
  %4808 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 1
  store i32 %4806, i32* %4807, align 4
  store i32 %4803, i32* %4808, align 4
  %4809 = add i32 %4803, 1
  %4810 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 2
  %4811 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 2
  store i32 %4802, i32* %4810, align 4
  store i32 %4809, i32* %4811, align 4
  %4812 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 3
  %4813 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 3
  store i32 %4806, i32* %4812, align 4
  store i32 %4809, i32* %4813, align 4
  br label %4814

; <label>:4814                                    ; preds = %4838, %4748
  %4815 = phi i32 [ %4803, %4748 ], [ %4842, %4838 ]
  %4816 = phi i32 [ %4802, %4748 ], [ %4840, %4838 ]
  %4817 = phi i32 [ 0, %4748 ], [ %4836, %4838 ]
  %4818 = add i32 %4760, -1
  %4819 = call i32 @dx.op.binary.i32(i32 40, i32 %4816, i32 %4818)  ; UMin(a,b)
  %4820 = call i32 @dx.op.binary.i32(i32 40, i32 %4815, i32 %4818)  ; UMin(a,b)
  %4821 = add i32 %4820, %4800
  %4822 = mul i32 %4821, %4760
  %4823 = add i32 %4822, %4819
  %4824 = lshr i32 %4823, 1
  %4825 = shl i32 %4824, 2
  %4826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4825, i32 undef)  ; BufferLoad(srv,index,wot)
  %4827 = extractvalue %dx.types.ResRet.i32 %4826, 0
  %4828 = shl i32 %4823, 4
  %4829 = and i32 %4828, 16
  %4830 = lshr i32 %4827, %4829
  %4831 = and i32 %4830, 65535
  %4832 = uitofp i32 %4831 to float
  %4833 = fmul fast float %4832, 0x3EF0002000000000
  %4834 = call float @dx.op.unary.f32(i32 7, float %4833)  ; Saturate(value)
  %4835 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 %4817
  store float %4834, float* %4835, align 4, !tbaa !93, !noalias !97
  %4836 = add nuw nsw i32 %4817, 1
  %4837 = icmp eq i32 %4836, 4
  br i1 %4837, label %4843, label %4838

; <label>:4838                                    ; preds = %4814
  %4839 = getelementptr [4 x i32], [4 x i32]* %80, i32 0, i32 %4836
  %4840 = load i32, i32* %4839, align 4
  %4841 = getelementptr [4 x i32], [4 x i32]* %81, i32 0, i32 %4836
  %4842 = load i32, i32* %4841, align 4
  br label %4814

; <label>:4843                                    ; preds = %4814
  %4844 = call float @dx.op.unary.f32(i32 22, float %4799)  ; Frc(value)
  %4845 = fsub fast float 1.000000e+00, %4801
  %4846 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 0
  %4847 = load float, float* %4846, align 4, !tbaa !93, !noalias !97
  %4848 = fmul fast float %4847, %4845
  %4849 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 1
  %4850 = load float, float* %4849, align 4, !tbaa !93, !noalias !97
  %4851 = fmul fast float %4850, %4801
  %4852 = fadd fast float %4851, %4848
  %4853 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 2
  %4854 = load float, float* %4853, align 4, !tbaa !93, !noalias !97
  %4855 = fmul fast float %4854, %4845
  %4856 = getelementptr inbounds [4 x float], [4 x float]* %88, i32 0, i32 3
  %4857 = load float, float* %4856, align 4, !tbaa !93, !noalias !97
  %4858 = fmul fast float %4857, %4801
  %4859 = fadd fast float %4858, %4855
  %4860 = fsub fast float 1.000000e+00, %4844
  %4861 = fmul fast float %4852, %4860
  %4862 = fmul fast float %4859, %4844
  %4863 = fadd fast float %4862, %4861
  br label %4891

; <label>:4864                                    ; preds = %4737
  %4865 = extractvalue %dx.types.CBufRet.f32 %4740, 1
  %4866 = fsub fast float %4416, %4865
  %4867 = extractvalue %dx.types.CBufRet.f32 %4740, 3
  %4868 = fdiv fast float %4866, %4867
  %4869 = extractvalue %dx.types.CBufRet.f32 %4740, 0
  %4870 = fsub fast float %4744, %4869
  %4871 = extractvalue %dx.types.CBufRet.f32 %4740, 2
  %4872 = fdiv fast float %4870, %4871
  %4873 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %4874 = extractvalue %dx.types.CBufRet.i32 %4873, 0
  %4875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %4876 = extractvalue %dx.types.CBufRet.f32 %4875, 0
  %4877 = extractvalue %dx.types.CBufRet.f32 %4875, 2
  %4878 = fdiv fast float 5.000000e-01, %4876
  %4879 = fmul fast float %4878, 2.000000e+00
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = fmul fast float %4880, %4872
  %4882 = fmul fast float %4880, %4868
  %4883 = fadd fast float %4881, %4878
  %4884 = fadd fast float %4882, %4878
  %4885 = fmul fast float %4883, %4877
  %4886 = fmul fast float %4884, %4877
  %4887 = add i32 %4874, 0
  %4888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4887, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4888, %dx.types.Handle %42, float %4885, float %4886, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4890 = extractvalue %dx.types.ResRet.f32 %4889, 0
  br label %4891

; <label>:4891                                    ; preds = %4864, %4843
  %4892 = phi float [ %4863, %4843 ], [ %4890, %4864 ]
  %4893 = fmul fast float %4892, %4743
  %4894 = fsub fast float %152, %4584
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %4897 = extractvalue %dx.types.CBufRet.f32 %4896, 2
  %4898 = extractvalue %dx.types.CBufRet.f32 %4896, 3
  %4899 = fadd fast float %4894, %4389
  %4900 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.i32 %4900, 3
  %4902 = icmp eq i32 %4901, 0
  br i1 %4902, label %5019, label %4903, !dx.controlflow.hints !92

; <label>:4903                                    ; preds = %4891
  %4904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %4905 = extractvalue %dx.types.CBufRet.f32 %4904, 2
  %4906 = extractvalue %dx.types.CBufRet.f32 %4904, 3
  %4907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %4908 = extractvalue %dx.types.CBufRet.f32 %4907, 0
  %4909 = extractvalue %dx.types.CBufRet.f32 %4907, 1
  %4910 = extractvalue %dx.types.CBufRet.f32 %4904, 0
  %4911 = extractvalue %dx.types.CBufRet.f32 %4904, 1
  %4912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %4913 = extractvalue %dx.types.CBufRet.i32 %4912, 0
  %4914 = extractvalue %dx.types.CBufRet.i32 %4912, 1
  %4915 = extractvalue %dx.types.CBufRet.i32 %4912, 2
  %4916 = extractvalue %dx.types.CBufRet.i32 %4912, 3
  %4917 = fadd fast float %4905, 0xBF847AE140000000
  %4918 = fadd fast float %4906, 0xBF847AE140000000
  %4919 = fsub fast float %4415, %4908
  %4920 = fsub fast float %4899, %4909
  %4921 = call float @dx.op.binary.f32(i32 35, float %4919, float 0.000000e+00)  ; FMax(a,b)
  %4922 = call float @dx.op.binary.f32(i32 35, float %4920, float 0.000000e+00)  ; FMax(a,b)
  %4923 = call float @dx.op.binary.f32(i32 36, float %4921, float %4917)  ; FMin(a,b)
  %4924 = call float @dx.op.binary.f32(i32 36, float %4922, float %4918)  ; FMin(a,b)
  %4925 = fdiv fast float %4923, %4910
  %4926 = fdiv fast float %4924, %4911
  %4927 = fptoui float %4925 to i32
  %4928 = fptoui float %4926 to i32
  %4929 = mul i32 %4928, %4913
  %4930 = add i32 %4929, %4927
  %4931 = lshr i32 %4930, 1
  %4932 = shl i32 %4931, 2
  %4933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4932, i32 undef)  ; BufferLoad(srv,index,wot)
  %4934 = extractvalue %dx.types.ResRet.i32 %4933, 0
  %4935 = shl i32 %4930, 4
  %4936 = and i32 %4935, 16
  %4937 = lshr i32 %4934, %4936
  %4938 = and i32 %4937, 255
  %4939 = lshr i32 %4937, 8
  %4940 = and i32 %4939, 31
  %4941 = shl i32 1, %4940
  %4942 = uitofp i32 %4941 to float
  %4943 = fmul fast float %4942, %4923
  %4944 = fdiv fast float %4943, %4905
  %4945 = fmul fast float %4942, %4924
  %4946 = fdiv fast float %4945, %4906
  %4947 = call float @dx.op.unary.f32(i32 22, float %4944)  ; Frc(value)
  %4948 = call float @dx.op.unary.f32(i32 22, float %4946)  ; Frc(value)
  %4949 = uitofp i32 %4914 to float
  %4950 = fmul fast float %4947, %4949
  %4951 = fmul fast float %4948, %4949
  %4952 = uitofp i32 %4916 to float
  %4953 = fadd fast float %4950, %4952
  %4954 = fadd fast float %4951, %4952
  %4955 = mul i32 %4938, %4915
  %4956 = call float @dx.op.unary.f32(i32 22, float %4953)  ; Frc(value)
  %4957 = fptoui float %4953 to i32
  %4958 = fptoui float %4954 to i32
  %4959 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 0
  %4960 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 0
  store i32 %4957, i32* %4959, align 4
  store i32 %4958, i32* %4960, align 4
  %4961 = add i32 %4957, 1
  %4962 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 1
  %4963 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 1
  store i32 %4961, i32* %4962, align 4
  store i32 %4958, i32* %4963, align 4
  %4964 = add i32 %4958, 1
  %4965 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 2
  %4966 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 2
  store i32 %4957, i32* %4965, align 4
  store i32 %4964, i32* %4966, align 4
  %4967 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 3
  %4968 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 3
  store i32 %4961, i32* %4967, align 4
  store i32 %4964, i32* %4968, align 4
  br label %4969

; <label>:4969                                    ; preds = %4993, %4903
  %4970 = phi i32 [ %4958, %4903 ], [ %4997, %4993 ]
  %4971 = phi i32 [ %4957, %4903 ], [ %4995, %4993 ]
  %4972 = phi i32 [ 0, %4903 ], [ %4991, %4993 ]
  %4973 = add i32 %4915, -1
  %4974 = call i32 @dx.op.binary.i32(i32 40, i32 %4971, i32 %4973)  ; UMin(a,b)
  %4975 = call i32 @dx.op.binary.i32(i32 40, i32 %4970, i32 %4973)  ; UMin(a,b)
  %4976 = add i32 %4975, %4955
  %4977 = mul i32 %4976, %4915
  %4978 = add i32 %4977, %4974
  %4979 = lshr i32 %4978, 1
  %4980 = shl i32 %4979, 2
  %4981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %4980, i32 undef)  ; BufferLoad(srv,index,wot)
  %4982 = extractvalue %dx.types.ResRet.i32 %4981, 0
  %4983 = shl i32 %4978, 4
  %4984 = and i32 %4983, 16
  %4985 = lshr i32 %4982, %4984
  %4986 = and i32 %4985, 65535
  %4987 = uitofp i32 %4986 to float
  %4988 = fmul fast float %4987, 0x3EF0002000000000
  %4989 = call float @dx.op.unary.f32(i32 7, float %4988)  ; Saturate(value)
  %4990 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 %4972
  store float %4989, float* %4990, align 4, !tbaa !93, !noalias !97
  %4991 = add nuw nsw i32 %4972, 1
  %4992 = icmp eq i32 %4991, 4
  br i1 %4992, label %4998, label %4993

; <label>:4993                                    ; preds = %4969
  %4994 = getelementptr [4 x i32], [4 x i32]* %78, i32 0, i32 %4991
  %4995 = load i32, i32* %4994, align 4
  %4996 = getelementptr [4 x i32], [4 x i32]* %79, i32 0, i32 %4991
  %4997 = load i32, i32* %4996, align 4
  br label %4969

; <label>:4998                                    ; preds = %4969
  %4999 = call float @dx.op.unary.f32(i32 22, float %4954)  ; Frc(value)
  %5000 = fsub fast float 1.000000e+00, %4956
  %5001 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 0
  %5002 = load float, float* %5001, align 4, !tbaa !93, !noalias !97
  %5003 = fmul fast float %5002, %5000
  %5004 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 1
  %5005 = load float, float* %5004, align 4, !tbaa !93, !noalias !97
  %5006 = fmul fast float %5005, %4956
  %5007 = fadd fast float %5006, %5003
  %5008 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 2
  %5009 = load float, float* %5008, align 4, !tbaa !93, !noalias !97
  %5010 = fmul fast float %5009, %5000
  %5011 = getelementptr inbounds [4 x float], [4 x float]* %87, i32 0, i32 3
  %5012 = load float, float* %5011, align 4, !tbaa !93, !noalias !97
  %5013 = fmul fast float %5012, %4956
  %5014 = fadd fast float %5013, %5010
  %5015 = fsub fast float 1.000000e+00, %4999
  %5016 = fmul fast float %5007, %5015
  %5017 = fmul fast float %5014, %4999
  %5018 = fadd fast float %5017, %5016
  br label %5046

; <label>:5019                                    ; preds = %4891
  %5020 = extractvalue %dx.types.CBufRet.f32 %4895, 1
  %5021 = fsub fast float %4899, %5020
  %5022 = extractvalue %dx.types.CBufRet.f32 %4895, 3
  %5023 = fdiv fast float %5021, %5022
  %5024 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %5025 = fsub fast float %4415, %5024
  %5026 = extractvalue %dx.types.CBufRet.f32 %4895, 2
  %5027 = fdiv fast float %5025, %5026
  %5028 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.i32 %5028, 0
  %5030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %5031 = extractvalue %dx.types.CBufRet.f32 %5030, 0
  %5032 = extractvalue %dx.types.CBufRet.f32 %5030, 2
  %5033 = fdiv fast float 5.000000e-01, %5031
  %5034 = fmul fast float %5033, 2.000000e+00
  %5035 = fsub fast float 1.000000e+00, %5034
  %5036 = fmul fast float %5035, %5027
  %5037 = fmul fast float %5035, %5023
  %5038 = fadd fast float %5036, %5033
  %5039 = fadd fast float %5037, %5033
  %5040 = fmul fast float %5038, %5032
  %5041 = fmul fast float %5039, %5032
  %5042 = add i32 %5029, 0
  %5043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5044 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5043, %dx.types.Handle %42, float %5040, float %5041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5045 = extractvalue %dx.types.ResRet.f32 %5044, 0
  br label %5046

; <label>:5046                                    ; preds = %5019, %4998
  %5047 = phi float [ %5018, %4998 ], [ %5045, %5019 ]
  %5048 = fmul fast float %5047, %4898
  %5049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 133)  ; CBufferLoadLegacy(handle,regIndex)
  %5050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 132)  ; CBufferLoadLegacy(handle,regIndex)
  %5051 = extractvalue %dx.types.CBufRet.f32 %5050, 2
  %5052 = extractvalue %dx.types.CBufRet.f32 %5050, 3
  %5053 = fadd fast float %4416, %4584
  %5054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.i32 %5054, 3
  %5056 = icmp eq i32 %5055, 0
  br i1 %5056, label %5173, label %5057, !dx.controlflow.hints !92

; <label>:5057                                    ; preds = %5046
  %5058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 135)  ; CBufferLoadLegacy(handle,regIndex)
  %5059 = extractvalue %dx.types.CBufRet.f32 %5058, 2
  %5060 = extractvalue %dx.types.CBufRet.f32 %5058, 3
  %5061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 136)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.f32 %5061, 0
  %5063 = extractvalue %dx.types.CBufRet.f32 %5061, 1
  %5064 = extractvalue %dx.types.CBufRet.f32 %5058, 0
  %5065 = extractvalue %dx.types.CBufRet.f32 %5058, 1
  %5066 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 137)  ; CBufferLoadLegacy(handle,regIndex)
  %5067 = extractvalue %dx.types.CBufRet.i32 %5066, 0
  %5068 = extractvalue %dx.types.CBufRet.i32 %5066, 1
  %5069 = extractvalue %dx.types.CBufRet.i32 %5066, 2
  %5070 = extractvalue %dx.types.CBufRet.i32 %5066, 3
  %5071 = fadd fast float %5059, 0xBF847AE140000000
  %5072 = fadd fast float %5060, 0xBF847AE140000000
  %5073 = fsub fast float %4415, %5062
  %5074 = fsub fast float %5053, %5063
  %5075 = call float @dx.op.binary.f32(i32 35, float %5073, float 0.000000e+00)  ; FMax(a,b)
  %5076 = call float @dx.op.binary.f32(i32 35, float %5074, float 0.000000e+00)  ; FMax(a,b)
  %5077 = call float @dx.op.binary.f32(i32 36, float %5075, float %5071)  ; FMin(a,b)
  %5078 = call float @dx.op.binary.f32(i32 36, float %5076, float %5072)  ; FMin(a,b)
  %5079 = fdiv fast float %5077, %5064
  %5080 = fdiv fast float %5078, %5065
  %5081 = fptoui float %5079 to i32
  %5082 = fptoui float %5080 to i32
  %5083 = mul i32 %5082, %5067
  %5084 = add i32 %5083, %5081
  %5085 = lshr i32 %5084, 1
  %5086 = shl i32 %5085, 2
  %5087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5086, i32 undef)  ; BufferLoad(srv,index,wot)
  %5088 = extractvalue %dx.types.ResRet.i32 %5087, 0
  %5089 = shl i32 %5084, 4
  %5090 = and i32 %5089, 16
  %5091 = lshr i32 %5088, %5090
  %5092 = and i32 %5091, 255
  %5093 = lshr i32 %5091, 8
  %5094 = and i32 %5093, 31
  %5095 = shl i32 1, %5094
  %5096 = uitofp i32 %5095 to float
  %5097 = fmul fast float %5096, %5077
  %5098 = fdiv fast float %5097, %5059
  %5099 = fmul fast float %5096, %5078
  %5100 = fdiv fast float %5099, %5060
  %5101 = call float @dx.op.unary.f32(i32 22, float %5098)  ; Frc(value)
  %5102 = call float @dx.op.unary.f32(i32 22, float %5100)  ; Frc(value)
  %5103 = uitofp i32 %5068 to float
  %5104 = fmul fast float %5101, %5103
  %5105 = fmul fast float %5102, %5103
  %5106 = uitofp i32 %5070 to float
  %5107 = fadd fast float %5104, %5106
  %5108 = fadd fast float %5105, %5106
  %5109 = mul i32 %5092, %5069
  %5110 = call float @dx.op.unary.f32(i32 22, float %5107)  ; Frc(value)
  %5111 = fptoui float %5107 to i32
  %5112 = fptoui float %5108 to i32
  %5113 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 0
  %5114 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 0
  store i32 %5111, i32* %5113, align 4
  store i32 %5112, i32* %5114, align 4
  %5115 = add i32 %5111, 1
  %5116 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 1
  %5117 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 1
  store i32 %5115, i32* %5116, align 4
  store i32 %5112, i32* %5117, align 4
  %5118 = add i32 %5112, 1
  %5119 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 2
  %5120 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 2
  store i32 %5111, i32* %5119, align 4
  store i32 %5118, i32* %5120, align 4
  %5121 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 3
  %5122 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 3
  store i32 %5115, i32* %5121, align 4
  store i32 %5118, i32* %5122, align 4
  br label %5123

; <label>:5123                                    ; preds = %5147, %5057
  %5124 = phi i32 [ %5112, %5057 ], [ %5151, %5147 ]
  %5125 = phi i32 [ %5111, %5057 ], [ %5149, %5147 ]
  %5126 = phi i32 [ 0, %5057 ], [ %5145, %5147 ]
  %5127 = add i32 %5069, -1
  %5128 = call i32 @dx.op.binary.i32(i32 40, i32 %5125, i32 %5127)  ; UMin(a,b)
  %5129 = call i32 @dx.op.binary.i32(i32 40, i32 %5124, i32 %5127)  ; UMin(a,b)
  %5130 = add i32 %5129, %5109
  %5131 = mul i32 %5130, %5069
  %5132 = add i32 %5131, %5128
  %5133 = lshr i32 %5132, 1
  %5134 = shl i32 %5133, 2
  %5135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %5134, i32 undef)  ; BufferLoad(srv,index,wot)
  %5136 = extractvalue %dx.types.ResRet.i32 %5135, 0
  %5137 = shl i32 %5132, 4
  %5138 = and i32 %5137, 16
  %5139 = lshr i32 %5136, %5138
  %5140 = and i32 %5139, 65535
  %5141 = uitofp i32 %5140 to float
  %5142 = fmul fast float %5141, 0x3EF0002000000000
  %5143 = call float @dx.op.unary.f32(i32 7, float %5142)  ; Saturate(value)
  %5144 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 %5126
  store float %5143, float* %5144, align 4, !tbaa !93, !noalias !97
  %5145 = add nuw nsw i32 %5126, 1
  %5146 = icmp eq i32 %5145, 4
  br i1 %5146, label %5152, label %5147

; <label>:5147                                    ; preds = %5123
  %5148 = getelementptr [4 x i32], [4 x i32]* %76, i32 0, i32 %5145
  %5149 = load i32, i32* %5148, align 4
  %5150 = getelementptr [4 x i32], [4 x i32]* %77, i32 0, i32 %5145
  %5151 = load i32, i32* %5150, align 4
  br label %5123

; <label>:5152                                    ; preds = %5123
  %5153 = call float @dx.op.unary.f32(i32 22, float %5108)  ; Frc(value)
  %5154 = fsub fast float 1.000000e+00, %5110
  %5155 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 0
  %5156 = load float, float* %5155, align 4, !tbaa !93, !noalias !97
  %5157 = fmul fast float %5156, %5154
  %5158 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 1
  %5159 = load float, float* %5158, align 4, !tbaa !93, !noalias !97
  %5160 = fmul fast float %5159, %5110
  %5161 = fadd fast float %5160, %5157
  %5162 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 2
  %5163 = load float, float* %5162, align 4, !tbaa !93, !noalias !97
  %5164 = fmul fast float %5163, %5154
  %5165 = getelementptr inbounds [4 x float], [4 x float]* %86, i32 0, i32 3
  %5166 = load float, float* %5165, align 4, !tbaa !93, !noalias !97
  %5167 = fmul fast float %5166, %5110
  %5168 = fadd fast float %5167, %5164
  %5169 = fsub fast float 1.000000e+00, %5153
  %5170 = fmul fast float %5161, %5169
  %5171 = fmul fast float %5168, %5153
  %5172 = fadd fast float %5171, %5170
  br label %5200

; <label>:5173                                    ; preds = %5046
  %5174 = extractvalue %dx.types.CBufRet.f32 %5049, 1
  %5175 = fsub fast float %5053, %5174
  %5176 = extractvalue %dx.types.CBufRet.f32 %5049, 3
  %5177 = fdiv fast float %5175, %5176
  %5178 = extractvalue %dx.types.CBufRet.f32 %5049, 0
  %5179 = fsub fast float %4415, %5178
  %5180 = extractvalue %dx.types.CBufRet.f32 %5049, 2
  %5181 = fdiv fast float %5179, %5180
  %5182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 134)  ; CBufferLoadLegacy(handle,regIndex)
  %5183 = extractvalue %dx.types.CBufRet.i32 %5182, 0
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 282)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.CBufRet.f32 %5184, 2
  %5187 = fdiv fast float 5.000000e-01, %5185
  %5188 = fmul fast float %5187, 2.000000e+00
  %5189 = fsub fast float 1.000000e+00, %5188
  %5190 = fmul fast float %5189, %5181
  %5191 = fmul fast float %5189, %5177
  %5192 = fadd fast float %5190, %5187
  %5193 = fadd fast float %5191, %5187
  %5194 = fmul fast float %5192, %5186
  %5195 = fmul fast float %5193, %5186
  %5196 = add i32 %5183, 0
  %5197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %5196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5198 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5197, %dx.types.Handle %42, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5199 = extractvalue %dx.types.ResRet.f32 %5198, 0
  br label %5200

; <label>:5200                                    ; preds = %5173, %5152
  %5201 = phi float [ %5172, %5152 ], [ %5199, %5173 ]
  %5202 = fmul fast float %5201, %5052
  %5203 = fsub fast float -0.000000e+00, %4897
  %5204 = fsub fast float %5203, %5048
  %5205 = fadd fast float %5204, %5051
  %5206 = fadd fast float %5205, %5202
  %5207 = fsub fast float -0.000000e+00, %4588
  %5208 = fsub fast float %5207, %4739
  %5209 = fadd fast float %5208, %4742
  %5210 = fadd fast float %5209, %4893
  %5211 = fmul fast float %4584, -2.000000e+00
  %5212 = fmul fast float %5211, %5210
  %5213 = fmul fast float %4583, -2.000000e+00
  %5214 = fmul fast float %5213, %5206
  %5215 = fmul fast float %4583, %4584
  %5216 = fmul fast float %5215, 4.000000e+00
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5214, float %5216, float %5212, float %5214, float %5216)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = call float @dx.op.unary.f32(i32 25, float %5217)  ; Rsqrt(value)
  %5219 = fmul fast float %5218, %5212
  %5220 = fmul fast float %5214, %5218
  %5221 = fmul fast float %5218, %5216
  %5222 = fmul fast float %4569, 6.250000e-02
  %5223 = call float @dx.op.unary.f32(i32 7, float %5222)  ; Saturate(value)
  %5224 = fsub fast float %104, %5219
  %5225 = fsub fast float %106, %5220
  %5226 = fsub fast float %108, %5221
  %5227 = fmul fast float %5224, %5223
  %5228 = fmul fast float %5225, %5223
  %5229 = fmul fast float %5226, %5223
  %5230 = fadd fast float %5227, %5219
  %5231 = fadd fast float %5228, %5220
  %5232 = fadd fast float %5229, %5221
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5230, float %5231, float %5232, float %5230, float %5231, float %5232)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = call float @dx.op.unary.f32(i32 25, float %5233)  ; Rsqrt(value)
  %5235 = fmul fast float %5230, %5234
  %5236 = fmul fast float %5231, %5234
  %5237 = fmul fast float %5232, %5234
  br label %5238

; <label>:5238                                    ; preds = %5200, %4577
  %5239 = phi float [ %5235, %5200 ], [ %104, %4577 ]
  %5240 = phi float [ %5236, %5200 ], [ %106, %4577 ]
  %5241 = phi float [ %5237, %5200 ], [ %108, %4577 ]
  %5242 = fsub fast float -0.000000e+00, %5239
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5241, float 0.000000e+00, float %5242, float %5241, float 0.000000e+00, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = call float @dx.op.unary.f32(i32 25, float %5243)  ; Rsqrt(value)
  %5245 = fmul fast float %5244, %5241
  %5246 = fmul fast float %5244, %5242
  %5247 = fmul fast float %5246, %5240
  %5248 = fmul fast float %5245, %5241
  %5249 = fmul fast float %5246, %5239
  %5250 = fsub fast float %5248, %5249
  %5251 = fmul fast float %5240, %5245
  %5252 = fsub fast float -0.000000e+00, %5251
  %5253 = fmul fast float %5245, %4131
  %5254 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %5247, float %5253)  ; FMad(a,b,c)
  %5255 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %5239, float %5254)  ; FMad(a,b,c)
  %5256 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %5250, float 0.000000e+00)  ; FMad(a,b,c)
  %5257 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %5240, float %5256)  ; FMad(a,b,c)
  %5258 = fmul fast float %5246, %4131
  %5259 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %5252, float %5258)  ; FMad(a,b,c)
  %5260 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %5241, float %5259)  ; FMad(a,b,c)
  %5261 = fsub fast float %4110, %3988
  %5262 = fsub fast float %4111, %3989
  %5263 = fsub fast float %4112, %3990
  %5264 = fmul fast float %4579, %5261
  %5265 = fmul fast float %4579, %5262
  %5266 = fmul fast float %4579, %5263
  %5267 = fadd fast float %5264, %3988
  %5268 = fadd fast float %5265, %3989
  %5269 = fadd fast float %5266, %3990
  %5270 = fsub fast float %4106, %3997
  %5271 = fmul fast float %4579, %5270
  %5272 = fadd fast float %5271, %3997
  %5273 = fsub fast float %4115, %3999
  %5274 = fmul fast float %4579, %5273
  %5275 = fadd fast float %5274, %3999
  %5276 = fsub fast float %4113, %3998
  %5277 = fmul fast float %4579, %5276
  %5278 = fadd fast float %5277, %3998
  %5279 = fsub fast float %4105, %3994
  %5280 = fmul fast float %4579, %5279
  %5281 = fadd fast float %5280, %3994
  %5282 = fsub fast float %4107, %3991
  %5283 = fsub fast float %4108, %3992
  %5284 = fsub fast float %4109, %3993
  %5285 = fmul fast float %4579, %5282
  %5286 = fmul fast float %4579, %5283
  %5287 = fmul fast float %4579, %5284
  %5288 = fadd fast float %5285, %3991
  %5289 = fadd fast float %5286, %3992
  %5290 = fadd fast float %5287, %3993
  %5291 = fsub fast float %4104, %4001
  %5292 = fmul fast float %4579, %5291
  %5293 = fadd fast float %5292, %4001
  %5294 = fsub fast float %5255, %4035
  %5295 = fsub fast float %5257, %4036
  %5296 = fsub fast float %5260, %4037
  %5297 = fmul fast float %5294, %4579
  %5298 = fmul fast float %5295, %4579
  %5299 = fmul fast float %5296, %4579
  %5300 = fadd fast float %5297, %4035
  %5301 = fadd fast float %5298, %4036
  %5302 = fadd fast float %5299, %4037
  %5303 = call float @dx.op.dot3.f32(i32 55, float %5300, float %5301, float %5302, float %5300, float %5301, float %5302)  ; Dot3(ax,ay,az,bx,by,bz)
  %5304 = call float @dx.op.unary.f32(i32 25, float %5303)  ; Rsqrt(value)
  %5305 = fmul fast float %5304, %5300
  %5306 = fmul fast float %5304, %5301
  %5307 = fmul fast float %5302, %5304
  br label %5308

; <label>:5308                                    ; preds = %5238, %4385, %3985
  %5309 = phi float [ %4035, %3985 ], [ %5305, %5238 ], [ %4035, %4385 ]
  %5310 = phi float [ %4036, %3985 ], [ %5306, %5238 ], [ %4036, %4385 ]
  %5311 = phi float [ %4037, %3985 ], [ %5307, %5238 ], [ %4037, %4385 ]
  %5312 = phi float [ %3988, %3985 ], [ %5267, %5238 ], [ %3988, %4385 ]
  %5313 = phi float [ %3989, %3985 ], [ %5268, %5238 ], [ %3989, %4385 ]
  %5314 = phi float [ %3990, %3985 ], [ %5269, %5238 ], [ %3990, %4385 ]
  %5315 = phi float [ %3991, %3985 ], [ %5288, %5238 ], [ %3991, %4385 ]
  %5316 = phi float [ %3992, %3985 ], [ %5289, %5238 ], [ %3992, %4385 ]
  %5317 = phi float [ %3993, %3985 ], [ %5290, %5238 ], [ %3993, %4385 ]
  %5318 = phi float [ %3994, %3985 ], [ %5281, %5238 ], [ %3994, %4385 ]
  %5319 = phi float [ %3995, %3985 ], [ %5281, %5238 ], [ %3994, %4385 ]
  %5320 = phi float [ %3996, %3985 ], [ %5281, %5238 ], [ %3994, %4385 ]
  %5321 = phi float [ %3997, %3985 ], [ %5272, %5238 ], [ %3997, %4385 ]
  %5322 = phi float [ %3998, %3985 ], [ %5278, %5238 ], [ %3998, %4385 ]
  %5323 = phi float [ %3999, %3985 ], [ %5275, %5238 ], [ %3999, %4385 ]
  %5324 = phi float [ %4001, %3985 ], [ %5293, %5238 ], [ %4001, %4385 ]
  br i1 %157, label %5325, label %5380, !dx.controlflow.hints !100

; <label>:5325                                    ; preds = %5308
  %5326 = add i32 %48, 376
  %5327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5326, i32 undef)  ; BufferLoad(srv,index,wot)
  %5328 = extractvalue %dx.types.ResRet.i32 %5327, 0
  %5329 = bitcast i32 %5328 to float
  %5330 = extractvalue %dx.types.ResRet.i32 %5327, 1
  %5331 = bitcast i32 %5330 to float
  %5332 = extractvalue %dx.types.ResRet.i32 %5327, 2
  %5333 = bitcast i32 %5332 to float
  %5334 = fsub fast float %5333, %5331
  %5335 = call float @dx.op.binary.f32(i32 35, float %5334, float 0x3FB99999A0000000)  ; FMax(a,b)
  %5336 = fsub fast float %51, %5331
  %5337 = fdiv fast float %5336, %5335
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = fsub fast float 1.000000e+00, %5338
  %5340 = fmul fast float %5339, %5329
  %5341 = add i32 %48, 392
  %5342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %5341, i32 undef)  ; BufferLoad(srv,index,wot)
  %5343 = extractvalue %dx.types.ResRet.i32 %5342, 0
  %5344 = bitcast i32 %5343 to float
  %5345 = fcmp fast une float %5344, -1.000000e+00
  br i1 %5345, label %5346, label %5362, !dx.controlflow.hints !101

; <label>:5346                                    ; preds = %5325
  %5347 = extractvalue %dx.types.ResRet.i32 %5342, 1
  %5348 = bitcast i32 %5347 to float
  %5349 = fmul fast float %151, %151
  %5350 = fmul fast float %152, %152
  %5351 = fadd fast float %5350, %5349
  %5352 = fmul fast float %153, %153
  %5353 = fadd fast float %5351, %5352
  %5354 = call float @dx.op.unary.f32(i32 24, float %5353)  ; Sqrt(value)
  %5355 = fsub fast float %5354, %5344
  %5356 = fsub fast float %5348, %5344
  %5357 = fdiv fast float %5355, %5356
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  %5359 = fsub fast float 1.000000e+00, %5340
  %5360 = fmul fast float %5358, %5359
  %5361 = fadd fast float %5360, %5340
  br label %5362

; <label>:5362                                    ; preds = %5346, %5325
  %5363 = phi float [ %5361, %5346 ], [ %5340, %5325 ]
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5314, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = fmul fast float %52, 2.500000e+00
  %5366 = fmul fast float %5365, %5364
  %5367 = fmul fast float %53, 2.500000e+00
  %5368 = fmul fast float %5367, %5364
  %5369 = fmul fast float %54, 2.500000e+00
  %5370 = fmul fast float %5369, %5364
  %5371 = fsub fast float %5366, %5312
  %5372 = fsub fast float %5368, %5313
  %5373 = fsub fast float %5370, %5314
  %5374 = fmul fast float %5371, %5363
  %5375 = fmul fast float %5372, %5363
  %5376 = fmul fast float %5373, %5363
  %5377 = fadd fast float %5374, %5312
  %5378 = fadd fast float %5375, %5313
  %5379 = fadd fast float %5376, %5314
  br label %5380

; <label>:5380                                    ; preds = %5362, %5308
  %5381 = phi float [ %5377, %5362 ], [ %5312, %5308 ]
  %5382 = phi float [ %5378, %5362 ], [ %5313, %5308 ]
  %5383 = phi float [ %5379, %5362 ], [ %5314, %5308 ]
  %5384 = fadd fast float %5321, 0xBFB99999A0000000
  %5385 = call float @dx.op.unary.f32(i32 7, float %5384)  ; Saturate(value)
  %5386 = fmul fast float %5385, 0x3FF1C71C80000000
  %5387 = call float @dx.op.binary.f32(i32 36, float %5321, float 0x3FB99999A0000000)  ; FMin(a,b)
  %5388 = fsub fast float 1.000000e+00, %5386
  %5389 = call float @dx.op.unary.f32(i32 7, float %5388)  ; Saturate(value)
  %5390 = fmul fast float %5389, %5381
  %5391 = fmul fast float %5389, %5382
  %5392 = fmul fast float %5389, %5383
  %5393 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5394 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  %5395 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5396 = fmul fast float %5386, %5381
  %5397 = fmul fast float %5386, %5382
  %5398 = fmul fast float %5386, %5383
  %5399 = fadd fast float %5396, %5387
  %5400 = fadd fast float %5397, %5387
  %5401 = fadd fast float %5398, %5387
  %5402 = call float @dx.op.unary.f32(i32 7, float %5399)  ; Saturate(value)
  %5403 = call float @dx.op.unary.f32(i32 7, float %5400)  ; Saturate(value)
  %5404 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5405 = call float @dx.op.unary.f32(i32 7, float %5322)  ; Saturate(value)
  %5406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.i32 %5406, 0
  %5408 = and i32 %5407, 1
  %5409 = icmp eq i32 %5408, 0
  br i1 %5409, label %5424, label %5410

; <label>:5410                                    ; preds = %5380
  %5411 = call float @dx.op.binary.f32(i32 35, float %5394, float %5395)  ; FMax(a,b)
  %5412 = call float @dx.op.binary.f32(i32 35, float %5393, float %5411)  ; FMax(a,b)
  %5413 = fcmp fast ogt float %5412, 0.000000e+00
  %5414 = bitcast float %5412 to i32
  %5415 = sub nsw i32 2129859010, %5414
  %5416 = bitcast i32 %5415 to float
  %5417 = select i1 %5413, float %5416, float 0.000000e+00
  %5418 = fmul fast float %5393, %5318
  %5419 = fmul fast float %5394, %5319
  %5420 = fmul fast float %5395, %5320
  %5421 = fmul fast float %5418, %5417
  %5422 = fmul fast float %5419, %5417
  %5423 = fmul fast float %5420, %5417
  br label %5424

; <label>:5424                                    ; preds = %5410, %5380
  %5425 = phi float [ %5421, %5410 ], [ %5318, %5380 ]
  %5426 = phi float [ %5422, %5410 ], [ %5319, %5380 ]
  %5427 = phi float [ %5423, %5410 ], [ %5320, %5380 ]
  %5428 = fadd fast float %5393, 0xBFD51EB860000000
  %5429 = fadd fast float %5394, 0xBFD51EB860000000
  %5430 = fadd fast float %5395, 0xBFD51EB860000000
  %5431 = fmul fast float %5428, %5428
  %5432 = fmul fast float %5429, %5429
  %5433 = fmul fast float %5430, %5430
  %5434 = fmul fast float %5431, %5431
  %5435 = fmul fast float %5434, 1.000000e+02
  %5436 = fmul fast float %5432, %5432
  %5437 = fmul fast float %5436, 1.000000e+02
  %5438 = fmul fast float %5433, %5433
  %5439 = fmul fast float %5438, 1.000000e+02
  %5440 = fadd fast float %5435, 3.500000e+00
  %5441 = fadd fast float %5437, 3.500000e+00
  %5442 = fadd fast float %5439, 3.500000e+00
  %5443 = call float @dx.op.binary.f32(i32 35, float %5425, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %5444 = call float @dx.op.binary.f32(i32 35, float %5426, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %5445 = call float @dx.op.binary.f32(i32 35, float %5427, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %5446 = fdiv fast float %5440, %5443
  %5447 = fdiv fast float %5441, %5444
  %5448 = fdiv fast float %5442, %5445
  %5449 = fmul fast float %4000, 0xBFF7154760000000
  %5450 = fmul fast float %5449, %5446
  %5451 = call float @dx.op.unary.f32(i32 21, float %5450)  ; Exp(value)
  %5452 = fmul fast float %5451, 2.500000e-01
  %5453 = fmul fast float %4000, 0xBFDEC709E0000000
  %5454 = fmul fast float %5453, %5446
  %5455 = call float @dx.op.unary.f32(i32 21, float %5454)  ; Exp(value)
  %5456 = fmul fast float %5455, 7.500000e-01
  %5457 = fmul fast float %5449, %5447
  %5458 = call float @dx.op.unary.f32(i32 21, float %5457)  ; Exp(value)
  %5459 = fmul fast float %5458, 2.500000e-01
  %5460 = fmul fast float %5453, %5447
  %5461 = call float @dx.op.unary.f32(i32 21, float %5460)  ; Exp(value)
  %5462 = fmul fast float %5461, 7.500000e-01
  %5463 = fmul fast float %5449, %5448
  %5464 = call float @dx.op.unary.f32(i32 21, float %5463)  ; Exp(value)
  %5465 = fmul fast float %5464, 2.500000e-01
  %5466 = fmul fast float %5453, %5448
  %5467 = call float @dx.op.unary.f32(i32 21, float %5466)  ; Exp(value)
  %5468 = fmul fast float %5467, 7.500000e-01
  %5469 = fadd fast float %5452, %5456
  %5470 = fadd fast float %5459, %5462
  %5471 = fadd fast float %5465, %5468
  %5472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5473 = extractvalue %dx.types.CBufRet.i32 %5472, 3
  %5474 = and i32 %5473, 8
  %5475 = icmp ne i32 %5474, 0
  %5476 = call float @dx.op.binary.f32(i32 35, float %5393, float %5381)  ; FMax(a,b)
  %5477 = call float @dx.op.binary.f32(i32 35, float %5394, float %5381)  ; FMax(a,b)
  %5478 = call float @dx.op.binary.f32(i32 35, float %5395, float %5381)  ; FMax(a,b)
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5394, float %5395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = select i1 %401, float %5381, float %5393
  %5481 = select i1 %401, float %5479, float %5394
  %5482 = select i1 %401, float 1.000000e+00, float %5395
  %5483 = select i1 %5475, float %5476, float %5480
  %5484 = select i1 %5475, float %5477, float %5481
  %5485 = select i1 %5475, float %5478, float %5482
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5489 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5490 = fadd fast float %5487, %151
  %5491 = fadd fast float %5488, %152
  %5492 = fadd fast float %5489, %153
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5496 = fsub fast float %5490, %5494
  %5497 = fsub fast float %5491, %5495
  %5498 = fmul fast float %5496, %5496
  %5499 = fmul fast float %5497, %5497
  %5500 = fadd fast float %5498, %5499
  %5501 = call float @dx.op.unary.f32(i32 24, float %5500)  ; Sqrt(value)
  %5502 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5503 = fcmp fast olt float %5501, %5502
  br i1 %5503, label %5504, label %5571

; <label>:5504                                    ; preds = %5424
  %5505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.f32 %5505, 0
  %5507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5508 = extractvalue %dx.types.CBufRet.f32 %5507, 0
  %5509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5510 = extractvalue %dx.types.CBufRet.f32 %5509, 0
  %5511 = extractvalue %dx.types.CBufRet.f32 %5505, 1
  %5512 = extractvalue %dx.types.CBufRet.f32 %5507, 1
  %5513 = extractvalue %dx.types.CBufRet.f32 %5509, 1
  %5514 = extractvalue %dx.types.CBufRet.f32 %5505, 3
  %5515 = extractvalue %dx.types.CBufRet.f32 %5507, 3
  %5516 = extractvalue %dx.types.CBufRet.f32 %5509, 3
  %5517 = fadd fast float %5514, %5490
  %5518 = fadd fast float %5515, %5491
  %5519 = fadd fast float %5516, %5492
  %5520 = fmul fast float %5517, %5506
  %5521 = call float @dx.op.tertiary.f32(i32 46, float %5518, float %5508, float %5520)  ; FMad(a,b,c)
  %5522 = call float @dx.op.tertiary.f32(i32 46, float %5519, float %5510, float %5521)  ; FMad(a,b,c)
  %5523 = fmul fast float %5517, %5511
  %5524 = call float @dx.op.tertiary.f32(i32 46, float %5518, float %5512, float %5523)  ; FMad(a,b,c)
  %5525 = call float @dx.op.tertiary.f32(i32 46, float %5519, float %5513, float %5524)  ; FMad(a,b,c)
  %5526 = fsub fast float %5522, %5514
  %5527 = fsub fast float %5525, %5515
  %5528 = fsub fast float %5526, %5494
  %5529 = fadd fast float %5528, %5502
  %5530 = fsub fast float %5527, %5495
  %5531 = fadd fast float %5530, %5502
  %5532 = extractvalue %dx.types.CBufRet.f32 %5493, 3
  %5533 = fmul fast float %5529, %5532
  %5534 = fmul fast float %5531, %5532
  %5535 = call float @dx.op.unary.f32(i32 7, float %5533)  ; Saturate(value)
  %5536 = call float @dx.op.unary.f32(i32 7, float %5534)  ; Saturate(value)
  %5537 = fsub fast float 1.000000e+00, %5535
  %5538 = fsub fast float 1.000000e+00, %5536
  %5539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %42, float %5537, float %5538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5540 = extractvalue %dx.types.ResRet.f32 %5539, 0
  %5541 = fcmp fast ugt float %5540, 0.000000e+00
  br i1 %5541, label %5542, label %5845

; <label>:5542                                    ; preds = %5504
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 2
  %5545 = fmul fast float %5544, %5540
  %5546 = extractvalue %dx.types.CBufRet.f32 %5543, 3
  %5547 = fadd fast float %5546, %5545
  %5548 = extractvalue %dx.types.CBufRet.f32 %5509, 2
  %5549 = fadd fast float %5547, %5516
  %5550 = fmul fast float %5522, %5510
  %5551 = call float @dx.op.tertiary.f32(i32 46, float %5525, float %5513, float %5550)  ; FMad(a,b,c)
  %5552 = call float @dx.op.tertiary.f32(i32 46, float %5549, float %5548, float %5551)  ; FMad(a,b,c)
  %5553 = fsub fast float %5552, %5516
  %5554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5555 = extractvalue %dx.types.CBufRet.f32 %5554, 2
  %5556 = fsub fast float %5553, %5555
  %5557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %42, float %5537, float %5538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5558 = extractvalue %dx.types.ResRet.f32 %5557, 0
  %5559 = extractvalue %dx.types.ResRet.f32 %5557, 1
  %5560 = extractvalue %dx.types.ResRet.f32 %5557, 2
  %5561 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %42, float %5537, float %5538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5562 = extractvalue %dx.types.ResRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.ResRet.f32 %5561, 1
  %5564 = extractvalue %dx.types.ResRet.f32 %5561, 2
  %5565 = fadd fast float %5562, %5558
  %5566 = fmul fast float %5565, 0x3F847AE140000000
  %5567 = fadd fast float %5563, %5559
  %5568 = fmul fast float %5567, 0x3F847AE140000000
  %5569 = fadd fast float %5564, %5560
  %5570 = fmul fast float %5569, 0x3F847AE140000000
  br label %5845

; <label>:5571                                    ; preds = %5424
  %5572 = and i32 %377, 1
  %5573 = icmp eq i32 %5572, 0
  br i1 %5573, label %5845, label %5574

; <label>:5574                                    ; preds = %5571
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5578 = extractvalue %dx.types.CBufRet.f32 %5577, 0
  %5579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5580 = extractvalue %dx.types.CBufRet.f32 %5579, 0
  %5581 = extractvalue %dx.types.CBufRet.f32 %5575, 1
  %5582 = extractvalue %dx.types.CBufRet.f32 %5577, 1
  %5583 = extractvalue %dx.types.CBufRet.f32 %5579, 1
  %5584 = extractvalue %dx.types.CBufRet.f32 %5575, 3
  %5585 = extractvalue %dx.types.CBufRet.f32 %5577, 3
  %5586 = extractvalue %dx.types.CBufRet.f32 %5579, 3
  %5587 = fadd fast float %5584, %5490
  %5588 = fadd fast float %5585, %5491
  %5589 = fadd fast float %5586, %5492
  %5590 = fmul fast float %5587, %5576
  %5591 = call float @dx.op.tertiary.f32(i32 46, float %5588, float %5578, float %5590)  ; FMad(a,b,c)
  %5592 = call float @dx.op.tertiary.f32(i32 46, float %5589, float %5580, float %5591)  ; FMad(a,b,c)
  %5593 = fmul fast float %5587, %5581
  %5594 = call float @dx.op.tertiary.f32(i32 46, float %5588, float %5582, float %5593)  ; FMad(a,b,c)
  %5595 = call float @dx.op.tertiary.f32(i32 46, float %5589, float %5583, float %5594)  ; FMad(a,b,c)
  %5596 = fsub fast float %5592, %5584
  %5597 = fsub fast float %5595, %5585
  %5598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %5599 = extractvalue %dx.types.CBufRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.CBufRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.CBufRet.f32 %5598, 2
  %5602 = extractvalue %dx.types.CBufRet.f32 %5598, 3
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5603, 3
  %5605 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %5606 = extractvalue %dx.types.CBufRet.i32 %5605, 0
  %5607 = extractvalue %dx.types.CBufRet.i32 %5605, 1
  %5608 = udiv i32 %5607, %5606
  %5609 = fsub fast float %5596, %5599
  %5610 = fsub fast float %5597, %5600
  %5611 = call float @dx.op.binary.f32(i32 35, float %5609, float 0.000000e+00)  ; FMax(a,b)
  %5612 = call float @dx.op.binary.f32(i32 35, float %5610, float 0.000000e+00)  ; FMax(a,b)
  %5613 = call float @dx.op.binary.f32(i32 36, float %5611, float %5601)  ; FMin(a,b)
  %5614 = call float @dx.op.binary.f32(i32 36, float %5612, float %5602)  ; FMin(a,b)
  %5615 = add i32 %5606, -1
  %5616 = add i32 %5608, -1
  %5617 = fmul fast float %5613, %5604
  %5618 = fmul fast float %5614, %5604
  %5619 = fptoui float %5617 to i32
  %5620 = fptoui float %5618 to i32
  %5621 = call i32 @dx.op.binary.i32(i32 40, i32 %5619, i32 %5615)  ; UMin(a,b)
  %5622 = call i32 @dx.op.binary.i32(i32 40, i32 %5620, i32 %5616)  ; UMin(a,b)
  %5623 = mul i32 %5622, %5606
  %5624 = add i32 %5623, %5621
  %5625 = shl i32 %5624, 2
  %5626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %5625, i32 undef)  ; BufferLoad(srv,index,wot)
  %5627 = extractvalue %dx.types.ResRet.i32 %5626, 0
  %5628 = icmp eq i32 %5627, -1
  br i1 %5628, label %5845, label %5629

; <label>:5629                                    ; preds = %5574
  %5630 = mul i32 %5627, 148
  %5631 = add i32 %5630, 4
  %5632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %5631, i32 undef)  ; BufferLoad(srv,index,wot)
  %5633 = extractvalue %dx.types.ResRet.f32 %5632, 0
  %5634 = add i32 %5630, 8
  %5635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %5634, i32 undef)  ; BufferLoad(srv,index,wot)
  %5636 = extractvalue %dx.types.ResRet.f32 %5635, 0
  %5637 = add i32 %5630, 36
  %5638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %5637, i32 undef)  ; BufferLoad(srv,index,wot)
  %5639 = extractvalue %dx.types.ResRet.f32 %5638, 0
  %5640 = add i32 %5630, 60
  %5641 = add i32 %5630, 92
  %5642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5641, i32 undef)  ; BufferLoad(srv,index,wot)
  %5643 = extractvalue %dx.types.ResRet.i32 %5642, 0
  %5644 = add i32 %5630, 116
  %5645 = fsub fast float %5596, %5633
  %5646 = fsub fast float %5597, %5636
  %5647 = fmul fast float %5604, %5645
  %5648 = fmul fast float %5604, %5646
  %5649 = call float @dx.op.unary.f32(i32 7, float %5647)  ; Saturate(value)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5651 = fsub fast float 1.000000e+00, %5650
  %5652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.f32 %5652, 2
  %5654 = call float @dx.op.unary.f32(i32 83, float %5649)  ; DerivCoarseX(value)
  %5655 = call float @dx.op.unary.f32(i32 83, float %5651)  ; DerivCoarseX(value)
  %5656 = call float @dx.op.unary.f32(i32 84, float %5649)  ; DerivCoarseY(value)
  %5657 = call float @dx.op.unary.f32(i32 84, float %5651)  ; DerivCoarseY(value)
  %5658 = fmul fast float %5654, %5653
  %5659 = fmul fast float %5655, %5653
  %5660 = fmul fast float %5656, %5653
  %5661 = fmul fast float %5657, %5653
  %5662 = call float @dx.op.dot2.f32(i32 54, float %5660, float %5661, float %5660, float %5661)  ; Dot2(ax,ay,bx,by)
  %5663 = call float @dx.op.dot2.f32(i32 54, float %5658, float %5659, float %5658, float %5659)  ; Dot2(ax,ay,bx,by)
  %5664 = call float @dx.op.binary.f32(i32 35, float %5663, float %5662)  ; FMax(a,b)
  %5665 = call float @dx.op.unary.f32(i32 23, float %5664)  ; Log(value)
  %5666 = fmul fast float %5665, 5.000000e-01
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 1
  %5669 = fadd fast float %5668, %5666
  %5670 = call float @dx.op.binary.f32(i32 35, float %5669, float 0.000000e+00)  ; FMax(a,b)
  %5671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5671, 3
  %5673 = fadd fast float %5672, %5670
  %5674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %5675 = extractvalue %dx.types.CBufRet.f32 %5674, 3
  %5676 = fadd fast float %5673, %5675
  %5677 = add i32 %5643, 0
  %5678 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5677, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5679 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5678, i32 0)  ; GetDimensions(handle,mipLevel)
  %5680 = extractvalue %dx.types.Dimensions %5679, 0
  %5681 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5680)  ; FirstbitLo(value)
  %5682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.i32 %5682, 1
  %5684 = sub nsw i32 %5683, %5681
  %5685 = sitofp i32 %5684 to float
  %5686 = fsub fast float %5676, %5685
  %5687 = call float @dx.op.binary.f32(i32 35, float %5686, float 0.000000e+00)  ; FMax(a,b)
  %5688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5678, %dx.types.Handle %40, float %5649, float %5651, float %5639, float undef, i32 0, i32 0, i32 undef, float %5687)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5689 = extractvalue %dx.types.ResRet.f32 %5688, 0
  %5690 = fcmp ule float %5689, 0x3FE0101020000000
  %5691 = extractvalue %dx.types.CBufRet.i32 %5682, 0
  %5692 = and i32 %5691, 128
  %5693 = icmp ne i32 %5692, 0
  %5694 = and i1 %5690, %5693
  br i1 %5694, label %5845, label %5695

; <label>:5695                                    ; preds = %5629
  %5696 = add i32 %5630, 20
  %5697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %5696, i32 undef)  ; BufferLoad(srv,index,wot)
  %5698 = extractvalue %dx.types.ResRet.f32 %5697, 0
  %5699 = add i32 %5630, 24
  %5700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %5699, i32 undef)  ; BufferLoad(srv,index,wot)
  %5701 = extractvalue %dx.types.ResRet.f32 %5700, 0
  %5702 = add i32 %5630, 40
  %5703 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %5702, i32 undef)  ; BufferLoad(srv,index,wot)
  %5704 = extractvalue %dx.types.ResRet.f32 %5703, 0
  %5705 = add i32 %5630, 96
  %5706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5705, i32 undef)  ; BufferLoad(srv,index,wot)
  %5707 = extractvalue %dx.types.ResRet.i32 %5706, 0
  %5708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5709 = extractvalue %dx.types.CBufRet.f32 %5708, 2
  %5710 = fmul fast float %5709, %5649
  %5711 = fmul fast float %5709, %5651
  %5712 = extractvalue %dx.types.CBufRet.f32 %5708, 3
  %5713 = fadd fast float %5710, %5712
  %5714 = fadd fast float %5711, %5712
  %5715 = add i32 %5707, 0
  %5716 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5715, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5717 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5716, i32 0)  ; GetDimensions(handle,mipLevel)
  %5718 = extractvalue %dx.types.Dimensions %5717, 0
  %5719 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5718)  ; FirstbitLo(value)
  %5720 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5721 = extractvalue %dx.types.CBufRet.i32 %5720, 1
  %5722 = sub nsw i32 %5721, %5719
  %5723 = sitofp i32 %5722 to float
  %5724 = fsub fast float %5673, %5723
  %5725 = call float @dx.op.binary.f32(i32 35, float %5724, float 0.000000e+00)  ; FMax(a,b)
  %5726 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5716, %dx.types.Handle %40, float %5713, float %5714, float %5704, float undef, i32 0, i32 0, i32 undef, float %5725)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5727 = extractvalue %dx.types.ResRet.f32 %5726, 0
  %5728 = fmul fast float %5727, %5698
  %5729 = fadd fast float %5728, %5701
  %5730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %5731 = extractvalue %dx.types.CBufRet.f32 %5730, 0
  %5732 = extractvalue %dx.types.CBufRet.f32 %5730, 1
  %5733 = extractvalue %dx.types.CBufRet.f32 %5730, 2
  %5734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.f32 %5734, 3
  %5736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %5737 = extractvalue %dx.types.CBufRet.f32 %5736, 3
  %5738 = extractvalue %dx.types.CBufRet.f32 %5730, 3
  %5739 = fadd fast float %5735, %5596
  %5740 = fadd fast float %5737, %5597
  %5741 = fadd fast float %5729, %5738
  %5742 = fmul fast float %5739, %5731
  %5743 = call float @dx.op.tertiary.f32(i32 46, float %5740, float %5732, float %5742)  ; FMad(a,b,c)
  %5744 = call float @dx.op.tertiary.f32(i32 46, float %5741, float %5733, float %5743)  ; FMad(a,b,c)
  %5745 = fsub fast float %5744, %5738
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5748 = fsub fast float %5745, %5747
  %5749 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.i32 %5749, 0
  %5751 = call i32 @dx.op.binary.i32(i32 40, i32 %5627, i32 %5750)  ; UMin(a,b)
  %5752 = mul i32 %5751, 36
  %5753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5752, i32 undef)  ; BufferLoad(srv,index,wot)
  %5754 = extractvalue %dx.types.ResRet.i32 %5753, 0
  %5755 = add i32 %5752, 4
  %5756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5756, 0
  %5758 = fmul fast float %5757, %5649
  %5759 = fmul fast float %5757, %5651
  %5760 = extractvalue %dx.types.CBufRet.f32 %5756, 1
  %5761 = fadd fast float %5758, %5760
  %5762 = fadd fast float %5759, %5760
  %5763 = icmp eq i32 %5754, 0
  br i1 %5763, label %5832, label %5764

; <label>:5764                                    ; preds = %5695
  br label %5765

; <label>:5765                                    ; preds = %5822, %5764
  %5766 = phi float [ %5823, %5822 ], [ 0.000000e+00, %5764 ]
  %5767 = phi float [ %5824, %5822 ], [ 0.000000e+00, %5764 ]
  %5768 = phi float [ %5825, %5822 ], [ 0.000000e+00, %5764 ]
  %5769 = phi float [ %5826, %5822 ], [ 0.000000e+00, %5764 ]
  %5770 = phi float [ %5827, %5822 ], [ 0.000000e+00, %5764 ]
  %5771 = phi float [ %5828, %5822 ], [ 0.000000e+00, %5764 ]
  %5772 = phi i32 [ %5829, %5822 ], [ 0, %5764 ]
  %5773 = shl i32 %5772, 2
  %5774 = add i32 %5640, %5773
  %5775 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %5774, i32 undef)  ; BufferLoad(srv,index,wot)
  %5776 = extractvalue %dx.types.ResRet.f32 %5775, 0
  %5777 = add i32 %5644, %5773
  %5778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %5777, i32 undef)  ; BufferLoad(srv,index,wot)
  %5779 = extractvalue %dx.types.ResRet.i32 %5778, 0
  %5780 = add i32 %5779, 0
  %5781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %5780, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5782 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %5781, i32 0)  ; GetDimensions(handle,mipLevel)
  %5783 = extractvalue %dx.types.Dimensions %5782, 0
  %5784 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5783)  ; FirstbitLo(value)
  %5785 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.i32 %5785, 1
  %5787 = sub nsw i32 %5786, %5784
  %5788 = sitofp i32 %5787 to float
  %5789 = fsub fast float %5673, %5788
  %5790 = call float @dx.op.binary.f32(i32 35, float %5789, float 0.000000e+00)  ; FMax(a,b)
  %5791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5781, %dx.types.Handle %40, float %5761, float %5762, float %5776, float undef, i32 0, i32 0, i32 undef, float %5790)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5792 = extractvalue %dx.types.ResRet.f32 %5791, 0
  %5793 = fcmp fast ogt float %5792, 0.000000e+00
  br i1 %5793, label %5794, label %5822

; <label>:5794                                    ; preds = %5765
  %5795 = add i32 %5755, %5773
  %5796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %5795, i32 undef)  ; BufferLoad(srv,index,wot)
  %5797 = extractvalue %dx.types.ResRet.i32 %5796, 0
  %5798 = and i32 %5797, 32767
  %5799 = mul nuw nsw i32 %5798, 928
  %5800 = add nuw nsw i32 %5799, 48
  %5801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5800, i32 undef)  ; BufferLoad(srv,index,wot)
  %5802 = extractvalue %dx.types.ResRet.f32 %5801, 0
  %5803 = extractvalue %dx.types.ResRet.f32 %5801, 1
  %5804 = extractvalue %dx.types.ResRet.f32 %5801, 2
  %5805 = add nuw nsw i32 %5799, 60
  %5806 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %5805, i32 undef)  ; BufferLoad(srv,index,wot)
  %5807 = extractvalue %dx.types.ResRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.ResRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.ResRet.f32 %5806, 2
  %5810 = fmul fast float %5802, %5792
  %5811 = fmul fast float %5803, %5792
  %5812 = fmul fast float %5804, %5792
  %5813 = fadd fast float %5810, %5766
  %5814 = fadd fast float %5811, %5767
  %5815 = fadd fast float %5812, %5768
  %5816 = fmul fast float %5807, %5792
  %5817 = fmul fast float %5808, %5792
  %5818 = fmul fast float %5809, %5792
  %5819 = fadd fast float %5816, %5769
  %5820 = fadd fast float %5817, %5770
  %5821 = fadd fast float %5818, %5771
  br label %5822

; <label>:5822                                    ; preds = %5794, %5765
  %5823 = phi float [ %5813, %5794 ], [ %5766, %5765 ]
  %5824 = phi float [ %5814, %5794 ], [ %5767, %5765 ]
  %5825 = phi float [ %5815, %5794 ], [ %5768, %5765 ]
  %5826 = phi float [ %5819, %5794 ], [ %5769, %5765 ]
  %5827 = phi float [ %5820, %5794 ], [ %5770, %5765 ]
  %5828 = phi float [ %5821, %5794 ], [ %5771, %5765 ]
  %5829 = add nuw i32 %5772, 1
  %5830 = icmp eq i32 %5829, %5754
  br i1 %5830, label %5831, label %5765

; <label>:5831                                    ; preds = %5822
  br label %5832

; <label>:5832                                    ; preds = %5831, %5695
  %5833 = phi float [ 0.000000e+00, %5695 ], [ %5823, %5831 ]
  %5834 = phi float [ 0.000000e+00, %5695 ], [ %5824, %5831 ]
  %5835 = phi float [ 0.000000e+00, %5695 ], [ %5825, %5831 ]
  %5836 = phi float [ 0.000000e+00, %5695 ], [ %5826, %5831 ]
  %5837 = phi float [ 0.000000e+00, %5695 ], [ %5827, %5831 ]
  %5838 = phi float [ 0.000000e+00, %5695 ], [ %5828, %5831 ]
  %5839 = fadd fast float %5836, %5833
  %5840 = fmul fast float %5839, 0x3F847AE140000000
  %5841 = fadd fast float %5837, %5834
  %5842 = fmul fast float %5841, 0x3F847AE140000000
  %5843 = fadd fast float %5838, %5835
  %5844 = fmul fast float %5843, 0x3F847AE140000000
  br label %5845

; <label>:5845                                    ; preds = %5832, %5629, %5574, %5571, %5542, %5504
  %5846 = phi float [ %5556, %5542 ], [ -1.310720e+05, %5504 ], [ %5748, %5832 ], [ -1.310720e+05, %5574 ], [ -1.310720e+05, %5629 ], [ -1.310720e+05, %5571 ]
  %5847 = phi float [ %5566, %5542 ], [ 0.000000e+00, %5504 ], [ %5840, %5832 ], [ 0.000000e+00, %5574 ], [ 0.000000e+00, %5629 ], [ 0.000000e+00, %5571 ]
  %5848 = phi float [ %5568, %5542 ], [ 0.000000e+00, %5504 ], [ %5842, %5832 ], [ 0.000000e+00, %5574 ], [ 0.000000e+00, %5629 ], [ 0.000000e+00, %5571 ]
  %5849 = phi float [ %5570, %5542 ], [ 0.000000e+00, %5504 ], [ %5844, %5832 ], [ 0.000000e+00, %5574 ], [ 0.000000e+00, %5629 ], [ 0.000000e+00, %5571 ]
  %5850 = phi i1 [ true, %5542 ], [ false, %5504 ], [ true, %5832 ], [ false, %5574 ], [ false, %5629 ], [ false, %5571 ]
  %5851 = and i32 %377, 3
  %5852 = icmp eq i32 %5851, 1
  %5853 = select i1 %5852, float 1.000000e+00, float 0.000000e+00
  %5854 = fsub fast float %5846, %153
  %5855 = call float @dx.op.unary.f32(i32 7, float %5854)  ; Saturate(value)
  %5856 = select i1 %5850, float %5855, float 1.000000e+00
  %5857 = fmul fast float %5856, %5853
  %5858 = icmp eq i32 %5851, 3
  %5859 = select i1 %5858, float 1.000000e+00, float %5857
  %5860 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5859)  ; FMax(a,b)
  %5861 = call float @dx.op.unary.f32(i32 7, float %5860)  ; Saturate(value)
  %5862 = fcmp fast une float %5861, 0.000000e+00
  %5863 = call float @dx.op.dot3.f32(i32 55, float %151, float %152, float %153, float %151, float %152, float %153)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = call float @dx.op.unary.f32(i32 25, float %5863)  ; Rsqrt(value)
  br i1 %5862, label %5872, label %5865

; <label>:5865                                    ; preds = %5845
  %5866 = fmul fast float %5864, %151
  %5867 = fmul fast float %5864, %152
  %5868 = fmul fast float %5864, %153
  %5869 = fsub fast float -0.000000e+00, %5866
  %5870 = fsub fast float -0.000000e+00, %5867
  %5871 = fsub fast float -0.000000e+00, %5868
  br label %6040

; <label>:5872                                    ; preds = %5845
  %5873 = fmul fast float %151, %5864
  %5874 = fsub fast float -0.000000e+00, %5873
  %5875 = fmul fast float %152, %5864
  %5876 = fsub fast float -0.000000e+00, %5875
  %5877 = fmul fast float %153, %5864
  %5878 = fsub fast float -0.000000e+00, %5877
  %5879 = call float @dx.op.dot3.f32(i32 55, float %5874, float %5876, float %5878, float %104, float %106, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %5880 = fmul fast float %5861, 2.500000e+00
  %5881 = call float @dx.op.unary.f32(i32 7, float %5880)  ; Saturate(value)
  %5882 = fmul fast float %5861, 0x4013FFFFE0000000
  %5883 = fadd fast float %5882, 0xBFFFFFFFE0000000
  %5884 = call float @dx.op.unary.f32(i32 7, float %5883)  ; Saturate(value)
  %5885 = fmul fast float %5861, 0x4004000020000000
  %5886 = fadd fast float %5885, 0xBFF8000040000000
  %5887 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  %5888 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5889 = fmul fast float %5384, 1.000000e+01
  %5890 = call float @dx.op.unary.f32(i32 7, float %5889)  ; Saturate(value)
  %5891 = fmul fast float %5890, 2.000000e+00
  %5892 = fsub fast float 3.000000e+00, %5891
  %5893 = fmul fast float %5890, %5890
  %5894 = fmul fast float %5893, %5892
  %5895 = fsub fast float 1.000000e+00, %5894
  %5896 = fsub fast float 0x3FE3333340000000, %5405
  %5897 = fmul fast float %5896, 0x400AAAAAA0000000
  %5898 = call float @dx.op.unary.f32(i32 7, float %5897)  ; Saturate(value)
  %5899 = fmul fast float %5895, %5898
  %5900 = fmul fast float %5483, 0x3FEA2B8620000000
  %5901 = fmul fast float %5484, 0x3FEA2B8620000000
  %5902 = fmul fast float %5485, 0x3FEA2B8620000000
  %5903 = fadd fast float %5900, 0x3FC81DFBA0000000
  %5904 = fmul fast float %5903, %5483
  %5905 = fadd fast float %5904, 0x3F910E6020000000
  %5906 = fadd fast float %5901, 0x3FC81DFBA0000000
  %5907 = fmul fast float %5906, %5484
  %5908 = fadd fast float %5907, 0x3F910E6020000000
  %5909 = fadd fast float %5902, 0x3FC81DFBA0000000
  %5910 = fmul fast float %5909, %5485
  %5911 = fadd fast float %5910, 0x3F910E6020000000
  %5912 = call float @dx.op.unary.f32(i32 7, float %5905)  ; Saturate(value)
  %5913 = call float @dx.op.unary.f32(i32 7, float %5908)  ; Saturate(value)
  %5914 = call float @dx.op.unary.f32(i32 7, float %5911)  ; Saturate(value)
  %5915 = fsub fast float %5912, %5483
  %5916 = fsub fast float %5913, %5484
  %5917 = fsub fast float %5914, %5485
  %5918 = fmul fast float %5915, %5888
  %5919 = fmul fast float %5918, %5899
  %5920 = fmul fast float %5916, %5888
  %5921 = fmul fast float %5920, %5899
  %5922 = fmul fast float %5917, %5888
  %5923 = fmul fast float %5922, %5899
  %5924 = fadd fast float %5919, %5483
  %5925 = fadd fast float %5921, %5484
  %5926 = fadd fast float %5923, %5485
  %5927 = fmul fast float %5323, %5323
  %5928 = fmul fast float %5927, %5927
  %5929 = fadd fast float %5884, 1.000000e+00
  %5930 = fsub fast float %5929, %5899
  %5931 = call float @dx.op.unary.f32(i32 7, float %5930)  ; Saturate(value)
  %5932 = call float @dx.op.dot3.f32(i32 55, float %104, float %106, float %108, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = call float @dx.op.unary.f32(i32 7, float %5932)  ; Saturate(value)
  %5934 = fsub fast float 1.000000e+00, %5928
  %5935 = call float @dx.op.binary.f32(i32 36, float %5931, float %5934)  ; FMin(a,b)
  %5936 = call float @dx.op.unary.f32(i32 7, float %5887)  ; Saturate(value)
  %5937 = call float @dx.op.binary.f32(i32 35, float %5935, float %5936)  ; FMax(a,b)
  %5938 = fadd fast float %5933, 0xBFE4CCCCC0000000
  %5939 = fmul fast float %5938, 0x4006DB6DA0000000
  %5940 = call float @dx.op.unary.f32(i32 7, float %5939)  ; Saturate(value)
  %5941 = fmul fast float %5940, 2.000000e+00
  %5942 = fsub fast float 3.000000e+00, %5941
  %5943 = bitcast float %5402 to i32
  %5944 = ashr i32 %5943, 1
  %5945 = add nsw i32 %5944, 532487669
  %5946 = bitcast i32 %5945 to float
  %5947 = fsub fast float 1.000000e+00, %5946
  %5948 = bitcast float %5947 to i32
  %5949 = sub nsw i32 2129859010, %5948
  %5950 = bitcast i32 %5949 to float
  %5951 = fmul fast float %5950, 2.000000e+00
  %5952 = bitcast float %5403 to i32
  %5953 = ashr i32 %5952, 1
  %5954 = add nsw i32 %5953, 532487669
  %5955 = bitcast i32 %5954 to float
  %5956 = fsub fast float 1.000000e+00, %5955
  %5957 = bitcast float %5956 to i32
  %5958 = sub nsw i32 2129859010, %5957
  %5959 = bitcast i32 %5958 to float
  %5960 = fmul fast float %5959, 2.000000e+00
  %5961 = bitcast float %5404 to i32
  %5962 = ashr i32 %5961, 1
  %5963 = add nsw i32 %5962, 532487669
  %5964 = bitcast i32 %5963 to float
  %5965 = fsub fast float 1.000000e+00, %5964
  %5966 = bitcast float %5965 to i32
  %5967 = sub nsw i32 2129859010, %5966
  %5968 = bitcast i32 %5967 to float
  %5969 = fmul fast float %5968, 2.000000e+00
  %5970 = fsub fast float 0x4002A9FBE0000000, %5951
  %5971 = fadd fast float %5951, 0x3FD54FDF00000000
  %5972 = bitcast float %5971 to i32
  %5973 = sub nsw i32 2129859010, %5972
  %5974 = bitcast i32 %5973 to float
  %5975 = fmul fast float %5974, %5970
  %5976 = fmul fast float %5975, %5975
  %5977 = fsub fast float 0x4002A9FBE0000000, %5960
  %5978 = fadd fast float %5960, 0x3FD54FDF00000000
  %5979 = bitcast float %5978 to i32
  %5980 = sub nsw i32 2129859010, %5979
  %5981 = bitcast i32 %5980 to float
  %5982 = fmul fast float %5981, %5977
  %5983 = fmul fast float %5982, %5982
  %5984 = fsub fast float 0x4002A9FBE0000000, %5969
  %5985 = fadd fast float %5969, 0x3FD54FDF00000000
  %5986 = bitcast float %5985 to i32
  %5987 = sub nsw i32 2129859010, %5986
  %5988 = bitcast i32 %5987 to float
  %5989 = fmul fast float %5988, %5984
  %5990 = fmul fast float %5989, %5989
  %5991 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5976)  ; FMax(a,b)
  %5992 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5983)  ; FMax(a,b)
  %5993 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %5990)  ; FMax(a,b)
  %5994 = fsub fast float 1.000000e+00, %5879
  %5995 = fadd fast float %5994, %5895
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = fsub fast float 1.000000e+00, %5859
  %5998 = fmul fast float %5937, %5997
  %5999 = fmul fast float %5940, %5940
  %6000 = fmul fast float %5999, %5998
  %6001 = fmul fast float %6000, %5942
  %6002 = fmul fast float %5997, 0xBFE99999A0000000
  %6003 = fmul fast float %6002, %5888
  %6004 = fmul fast float %6003, %5899
  %6005 = fadd fast float %6004, 1.000000e+00
  %6006 = fadd fast float %5405, -1.000000e+00
  %6007 = fmul fast float %6005, %6006
  %6008 = fadd fast float %6007, 1.000000e+00
  %6009 = fsub fast float %5991, %5402
  %6010 = fsub fast float %5992, %5403
  %6011 = fsub fast float %5993, %5404
  %6012 = fmul fast float %6001, %6009
  %6013 = fmul fast float %6001, %6010
  %6014 = fmul fast float %6001, %6011
  %6015 = fadd fast float %6012, %5402
  %6016 = fadd fast float %6013, %5403
  %6017 = fadd fast float %6014, %5404
  %6018 = fsub fast float %104, %5309
  %6019 = fsub fast float %106, %5310
  %6020 = fsub fast float %108, %5311
  %6021 = fmul fast float %6001, %6018
  %6022 = fmul fast float %6001, %6019
  %6023 = fmul fast float %6001, %6020
  %6024 = fadd fast float %6021, %5309
  %6025 = fadd fast float %6022, %5310
  %6026 = fadd fast float %6023, %5311
  %6027 = fmul fast float %6001, %5996
  %6028 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6029 = fsub fast float 1.000000e+00, %6028
  %6030 = fmul fast float %6027, %6029
  %6031 = fadd fast float %6030, %6028
  %6032 = fsub fast float 1.000000e+00, %5323
  %6033 = fmul fast float %6001, %6032
  %6034 = fadd fast float %6033, %5323
  %6035 = call float @dx.op.dot3.f32(i32 55, float %6024, float %6025, float %6026, float %6024, float %6025, float %6026)  ; Dot3(ax,ay,az,bx,by,bz)
  %6036 = call float @dx.op.unary.f32(i32 25, float %6035)  ; Rsqrt(value)
  %6037 = fmul fast float %6024, %6036
  %6038 = fmul fast float %6025, %6036
  %6039 = fmul fast float %6026, %6036
  br label %6040

; <label>:6040                                    ; preds = %5872, %5865
  %6041 = phi float [ %5871, %5865 ], [ %5878, %5872 ]
  %6042 = phi float [ %5870, %5865 ], [ %5876, %5872 ]
  %6043 = phi float [ %5869, %5865 ], [ %5874, %5872 ]
  %6044 = phi float [ %5868, %5865 ], [ %5877, %5872 ]
  %6045 = phi float [ %5867, %5865 ], [ %5875, %5872 ]
  %6046 = phi float [ %5866, %5865 ], [ %5873, %5872 ]
  %6047 = phi float [ %5402, %5865 ], [ %6015, %5872 ]
  %6048 = phi float [ %5403, %5865 ], [ %6016, %5872 ]
  %6049 = phi float [ %5404, %5865 ], [ %6017, %5872 ]
  %6050 = phi float [ %5483, %5865 ], [ %5924, %5872 ]
  %6051 = phi float [ %5484, %5865 ], [ %5925, %5872 ]
  %6052 = phi float [ %5485, %5865 ], [ %5926, %5872 ]
  %6053 = phi float [ %5309, %5865 ], [ %6037, %5872 ]
  %6054 = phi float [ %5310, %5865 ], [ %6038, %5872 ]
  %6055 = phi float [ %5311, %5865 ], [ %6039, %5872 ]
  %6056 = phi float [ %5405, %5865 ], [ %6031, %5872 ]
  %6057 = phi float [ %5323, %5865 ], [ %6034, %5872 ]
  %6058 = select i1 %401, float 0.000000e+00, float %6049
  %6059 = call float @dx.op.dot3.f32(i32 55, float %6053, float %6054, float %6055, float %6043, float %6042, float %6041)  ; Dot3(ax,ay,az,bx,by,bz)
  %6060 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6061 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6045, float %6044, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %6062 = fmul fast float %6061, 2.000000e+00
  %6063 = fmul fast float %6062, %6053
  %6064 = fmul fast float %6062, %6054
  %6065 = fmul fast float %6062, %6055
  %6066 = fsub fast float %6046, %6063
  %6067 = fsub fast float %6045, %6064
  %6068 = fsub fast float %6044, %6065
  %6069 = call float @dx.op.binary.f32(i32 36, float %6057, float 1.000000e+00)  ; FMin(a,b)
  %6070 = fsub fast float 1.000000e+00, %6057
  %6071 = bitcast float %6070 to i32
  %6072 = sub nsw i32 2129859010, %6071
  %6073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6073, 0
  %6075 = extractvalue %dx.types.CBufRet.f32 %6073, 1
  %6076 = extractvalue %dx.types.CBufRet.f32 %6073, 2
  %6077 = fadd fast float %6074, %151
  %6078 = fadd fast float %6075, %152
  %6079 = fadd fast float %6076, %153
  %6080 = fmul fast float %6053, 3.200000e+01
  %6081 = fmul fast float %6054, 3.200000e+01
  %6082 = fadd fast float %6077, %6080
  %6083 = fadd fast float %6078, %6081
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 0
  %6086 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6087 = fsub fast float %6082, %6085
  %6088 = fsub fast float %6083, %6086
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6091 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6092 = fmul fast float %6087, %6090
  %6093 = fmul fast float %6088, %6091
  %6094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %6095 = extractvalue %dx.types.CBufRet.f32 %6094, 0
  %6096 = fmul fast float %6092, %6095
  %6097 = extractvalue %dx.types.CBufRet.f32 %6094, 1
  %6098 = fadd fast float %6096, %6097
  %6099 = extractvalue %dx.types.CBufRet.f32 %6094, 2
  %6100 = fmul fast float %6099, %6093
  %6101 = extractvalue %dx.types.CBufRet.f32 %6094, 3
  %6102 = fadd fast float %6100, %6101
  %6103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %42, float %6098, float %6102, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6104 = extractvalue %dx.types.ResRet.f32 %6103, 0
  %6105 = extractvalue %dx.types.ResRet.f32 %6103, 1
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 1
  %6108 = extractvalue %dx.types.CBufRet.f32 %6106, 0
  %6109 = fsub fast float %6107, %6108
  %6110 = fmul fast float %6109, %6104
  %6111 = fadd fast float %6110, %6108
  %6112 = extractvalue %dx.types.CBufRet.f32 %6106, 3
  %6113 = extractvalue %dx.types.CBufRet.f32 %6106, 2
  %6114 = fsub fast float %6112, %6113
  %6115 = fmul fast float %6114, %6105
  %6116 = fadd fast float %6115, %6113
  %6117 = fsub fast float %6079, %6111
  %6118 = fsub fast float %6116, %6111
  %6119 = fdiv fast float %6117, %6118
  %6120 = call float @dx.op.unary.f32(i32 7, float %6119)  ; Saturate(value)
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 0
  %6123 = fmul fast float %6122, %6120
  %6124 = extractvalue %dx.types.CBufRet.f32 %6121, 1
  %6125 = fadd fast float %6123, %6124
  %6126 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %42, float %6098, float %6102, float %6125, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6127 = extractvalue %dx.types.ResRet.f32 %6126, 0
  %6128 = extractvalue %dx.types.ResRet.f32 %6126, 1
  %6129 = extractvalue %dx.types.ResRet.f32 %6126, 2
  %6130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %6131 = extractvalue %dx.types.CBufRet.f32 %6130, 0
  %6132 = extractvalue %dx.types.CBufRet.f32 %6130, 1
  %6133 = extractvalue %dx.types.CBufRet.f32 %6130, 2
  %6134 = fmul fast float %6131, %6127
  %6135 = fmul fast float %6132, %6128
  %6136 = fmul fast float %6133, %6129
  %6137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %6138 = extractvalue %dx.types.CBufRet.f32 %6137, 0
  %6139 = extractvalue %dx.types.CBufRet.f32 %6137, 1
  %6140 = extractvalue %dx.types.CBufRet.f32 %6137, 2
  %6141 = fadd fast float %6134, %6138
  %6142 = fadd fast float %6135, %6139
  %6143 = fadd fast float %6136, %6140
  %6144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %6145 = extractvalue %dx.types.CBufRet.f32 %6144, 0
  %6146 = fmul fast float %6145, %6092
  %6147 = extractvalue %dx.types.CBufRet.f32 %6144, 1
  %6148 = fadd fast float %6146, %6147
  %6149 = extractvalue %dx.types.CBufRet.f32 %6144, 2
  %6150 = fmul fast float %6149, %6093
  %6151 = extractvalue %dx.types.CBufRet.f32 %6144, 3
  %6152 = fadd fast float %6150, %6151
  %6153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %6154 = extractvalue %dx.types.CBufRet.f32 %6153, 0
  %6155 = extractvalue %dx.types.CBufRet.f32 %6153, 1
  %6156 = extractvalue %dx.types.CBufRet.f32 %6153, 2
  %6157 = extractvalue %dx.types.CBufRet.f32 %6153, 3
  %6158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %6159 = extractvalue %dx.types.CBufRet.f32 %6158, 0
  %6160 = extractvalue %dx.types.CBufRet.f32 %6158, 1
  %6161 = extractvalue %dx.types.CBufRet.f32 %6158, 2
  %6162 = extractvalue %dx.types.CBufRet.f32 %6158, 3
  %6163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %42, float %6148, float %6152, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6164 = extractvalue %dx.types.ResRet.f32 %6163, 0
  %6165 = extractvalue %dx.types.ResRet.f32 %6163, 1
  %6166 = extractvalue %dx.types.ResRet.f32 %6163, 2
  %6167 = extractvalue %dx.types.ResRet.f32 %6163, 3
  %6168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %42, float %6148, float %6152, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6169 = extractvalue %dx.types.ResRet.f32 %6168, 0
  %6170 = extractvalue %dx.types.ResRet.f32 %6168, 1
  %6171 = extractvalue %dx.types.ResRet.f32 %6168, 2
  %6172 = extractvalue %dx.types.ResRet.f32 %6168, 3
  %6173 = fmul fast float %6164, %6141
  %6174 = fmul fast float %6169, %6141
  %6175 = fmul fast float %6171, %6141
  %6176 = fmul fast float %6167, %6141
  %6177 = fadd fast float %6173, %6154
  %6178 = fadd fast float %6174, %6155
  %6179 = fadd fast float %6175, %6156
  %6180 = fadd fast float %6176, %6157
  %6181 = fmul fast float %6165, %6141
  %6182 = fmul fast float %6170, %6141
  %6183 = fadd fast float %6181, %6159
  %6184 = fadd fast float %6182, %6160
  %6185 = fmul fast float %6166, %6141
  %6186 = fmul fast float %6172, %6141
  %6187 = fadd fast float %6185, %6161
  %6188 = fadd fast float %6186, %6162
  %6189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %42, float %6148, float %6152, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6190 = extractvalue %dx.types.ResRet.f32 %6189, 0
  %6191 = extractvalue %dx.types.ResRet.f32 %6189, 1
  %6192 = extractvalue %dx.types.ResRet.f32 %6189, 2
  %6193 = extractvalue %dx.types.ResRet.f32 %6189, 3
  %6194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %42, float %6148, float %6152, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6195 = extractvalue %dx.types.ResRet.f32 %6194, 0
  %6196 = extractvalue %dx.types.ResRet.f32 %6194, 1
  %6197 = extractvalue %dx.types.ResRet.f32 %6194, 2
  %6198 = extractvalue %dx.types.ResRet.f32 %6194, 3
  %6199 = fmul fast float %6190, %6142
  %6200 = fmul fast float %6195, %6142
  %6201 = fmul fast float %6197, %6142
  %6202 = fmul fast float %6193, %6142
  %6203 = fadd fast float %6177, %6199
  %6204 = fadd fast float %6178, %6200
  %6205 = fadd fast float %6179, %6201
  %6206 = fadd fast float %6180, %6202
  %6207 = fmul fast float %6191, %6142
  %6208 = fmul fast float %6196, %6142
  %6209 = fadd fast float %6183, %6207
  %6210 = fadd fast float %6184, %6208
  %6211 = fmul fast float %6192, %6142
  %6212 = fmul fast float %6198, %6142
  %6213 = fadd fast float %6187, %6211
  %6214 = fadd fast float %6188, %6212
  %6215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %42, float %6148, float %6152, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 0
  %6217 = extractvalue %dx.types.ResRet.f32 %6215, 1
  %6218 = extractvalue %dx.types.ResRet.f32 %6215, 2
  %6219 = extractvalue %dx.types.ResRet.f32 %6215, 3
  %6220 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %42, float %6148, float %6152, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6221 = extractvalue %dx.types.ResRet.f32 %6220, 0
  %6222 = extractvalue %dx.types.ResRet.f32 %6220, 1
  %6223 = extractvalue %dx.types.ResRet.f32 %6220, 2
  %6224 = extractvalue %dx.types.ResRet.f32 %6220, 3
  %6225 = fmul fast float %6216, %6143
  %6226 = fmul fast float %6221, %6143
  %6227 = fmul fast float %6223, %6143
  %6228 = fmul fast float %6219, %6143
  %6229 = fadd fast float %6203, %6225
  %6230 = fadd fast float %6204, %6226
  %6231 = fadd fast float %6205, %6227
  %6232 = fadd fast float %6206, %6228
  %6233 = fmul fast float %6217, %6143
  %6234 = fmul fast float %6222, %6143
  %6235 = fadd fast float %6209, %6233
  %6236 = fadd fast float %6210, %6234
  %6237 = fmul fast float %6218, %6143
  %6238 = fmul fast float %6224, %6143
  %6239 = fadd fast float %6213, %6237
  %6240 = fadd fast float %6214, %6238
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = fsub fast float %6077, %6242
  %6244 = fsub fast float %6085, %6077
  %6245 = call float @dx.op.binary.f32(i32 35, float %6244, float %6243)  ; FMax(a,b)
  %6246 = extractvalue %dx.types.CBufRet.f32 %6241, 1
  %6247 = fsub fast float %6078, %6246
  %6248 = fsub fast float %6086, %6078
  %6249 = call float @dx.op.binary.f32(i32 35, float %6248, float %6247)  ; FMax(a,b)
  %6250 = call float @dx.op.binary.f32(i32 35, float %6245, float %6249)  ; FMax(a,b)
  %6251 = extractvalue %dx.types.CBufRet.f32 %6089, 3
  %6252 = fmul fast float %6251, %6250
  %6253 = call float @dx.op.unary.f32(i32 7, float %6252)  ; Saturate(value)
  %6254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %6255 = extractvalue %dx.types.CBufRet.f32 %6254, 0
  %6256 = extractvalue %dx.types.CBufRet.f32 %6254, 1
  %6257 = extractvalue %dx.types.CBufRet.f32 %6254, 2
  %6258 = extractvalue %dx.types.CBufRet.f32 %6254, 3
  %6259 = fsub fast float %6255, %6229
  %6260 = fsub fast float %6256, %6230
  %6261 = fsub fast float %6257, %6231
  %6262 = fsub fast float %6258, %6232
  %6263 = fmul fast float %6259, %6253
  %6264 = fmul fast float %6260, %6253
  %6265 = fmul fast float %6261, %6253
  %6266 = fmul fast float %6262, %6253
  %6267 = fadd fast float %6263, %6229
  %6268 = fadd fast float %6264, %6230
  %6269 = fadd fast float %6265, %6231
  %6270 = fadd fast float %6266, %6232
  %6271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %6272 = extractvalue %dx.types.CBufRet.f32 %6271, 0
  %6273 = extractvalue %dx.types.CBufRet.f32 %6271, 1
  %6274 = fsub fast float %6272, %6235
  %6275 = fsub fast float %6273, %6236
  %6276 = fmul fast float %6274, %6253
  %6277 = fmul fast float %6275, %6253
  %6278 = fadd fast float %6276, %6235
  %6279 = fadd fast float %6277, %6236
  %6280 = extractvalue %dx.types.CBufRet.f32 %6271, 2
  %6281 = extractvalue %dx.types.CBufRet.f32 %6271, 3
  %6282 = fsub fast float %6280, %6239
  %6283 = fsub fast float %6281, %6240
  %6284 = fmul fast float %6282, %6253
  %6285 = fmul fast float %6283, %6253
  %6286 = fadd fast float %6284, %6239
  %6287 = fadd fast float %6285, %6240
  %6288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %6289 = extractvalue %dx.types.CBufRet.f32 %6288, 0
  %6290 = fmul fast float %6289, %6267
  %6291 = fmul fast float %6289, %6268
  %6292 = fmul fast float %6289, %6269
  %6293 = fmul fast float %6289, %6270
  %6294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %6295 = extractvalue %dx.types.CBufRet.f32 %6294, 0
  %6296 = fmul fast float %6295, %6278
  %6297 = fmul fast float %6295, %6279
  %6298 = fadd fast float %6296, %6290
  %6299 = fadd fast float %6297, %6292
  %6300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %6301 = extractvalue %dx.types.CBufRet.f32 %6300, 0
  %6302 = fmul fast float %6301, %6286
  %6303 = fmul fast float %6301, %6287
  %6304 = fadd fast float %6298, %6302
  %6305 = fadd fast float %6299, %6303
  %6306 = extractvalue %dx.types.CBufRet.f32 %6288, 1
  %6307 = fmul fast float %6306, %6267
  %6308 = fmul fast float %6306, %6268
  %6309 = fmul fast float %6306, %6269
  %6310 = fmul fast float %6306, %6270
  %6311 = extractvalue %dx.types.CBufRet.f32 %6294, 1
  %6312 = fmul fast float %6311, %6278
  %6313 = fmul fast float %6311, %6279
  %6314 = fadd fast float %6312, %6307
  %6315 = fadd fast float %6313, %6309
  %6316 = extractvalue %dx.types.CBufRet.f32 %6300, 1
  %6317 = fmul fast float %6316, %6286
  %6318 = fmul fast float %6316, %6287
  %6319 = fadd fast float %6314, %6317
  %6320 = fadd fast float %6315, %6318
  %6321 = extractvalue %dx.types.CBufRet.f32 %6288, 2
  %6322 = fmul fast float %6321, %6267
  %6323 = fmul fast float %6321, %6268
  %6324 = fmul fast float %6321, %6269
  %6325 = fmul fast float %6321, %6270
  %6326 = extractvalue %dx.types.CBufRet.f32 %6294, 2
  %6327 = fmul fast float %6326, %6278
  %6328 = fmul fast float %6326, %6279
  %6329 = fadd fast float %6327, %6322
  %6330 = fadd fast float %6328, %6324
  %6331 = extractvalue %dx.types.CBufRet.f32 %6300, 2
  %6332 = fmul fast float %6331, %6286
  %6333 = fmul fast float %6331, %6287
  %6334 = fadd fast float %6329, %6332
  %6335 = fadd fast float %6330, %6333
  %6336 = fmul fast float %6323, %6323
  %6337 = fmul fast float %6335, %6335
  %6338 = fmul fast float %6325, %6325
  %6339 = fadd fast float %6338, %6336
  %6340 = fadd fast float %6339, %6337
  %6341 = call float @dx.op.unary.f32(i32 24, float %6340)  ; Sqrt(value)
  %6342 = fcmp fast ugt float %6341, 0.000000e+00
  br i1 %6342, label %6343, label %6358

; <label>:6343                                    ; preds = %6040
  %6344 = fsub fast float -0.000000e+00, %6325
  %6345 = fdiv fast float %6344, %6341
  %6346 = fsub fast float -0.000000e+00, %6323
  %6347 = fdiv fast float %6346, %6341
  %6348 = fdiv fast float %6335, %6341
  %6349 = fmul fast float %6334, 0x3FE279A760000000
  %6350 = fmul fast float %6347, %6323
  %6351 = fmul fast float %6348, %6335
  %6352 = fmul fast float %6345, %6325
  %6353 = fadd fast float %6350, %6352
  %6354 = fsub fast float %6353, %6351
  %6355 = call float @dx.op.unary.f32(i32 6, float %6354)  ; FAbs(value)
  %6356 = fadd fast float %6355, 0x3DDB7CDFE0000000
  %6357 = fdiv fast float %6349, %6356
  br label %6358

; <label>:6358                                    ; preds = %6343, %6040
  %6359 = phi float [ %6357, %6343 ], [ 1.000000e+00, %6040 ]
  %6360 = fmul fast float %6308, %6308
  %6361 = fmul fast float %6320, %6320
  %6362 = fmul fast float %6310, %6310
  %6363 = fadd fast float %6362, %6360
  %6364 = fadd fast float %6363, %6361
  %6365 = call float @dx.op.unary.f32(i32 24, float %6364)  ; Sqrt(value)
  %6366 = fcmp fast ugt float %6365, 0.000000e+00
  br i1 %6366, label %6367, label %6382

; <label>:6367                                    ; preds = %6358
  %6368 = fsub fast float -0.000000e+00, %6310
  %6369 = fdiv fast float %6368, %6365
  %6370 = fsub fast float -0.000000e+00, %6308
  %6371 = fdiv fast float %6370, %6365
  %6372 = fdiv fast float %6320, %6365
  %6373 = fmul fast float %6319, 0x3FE279A760000000
  %6374 = fmul fast float %6371, %6308
  %6375 = fmul fast float %6372, %6320
  %6376 = fmul fast float %6369, %6310
  %6377 = fadd fast float %6374, %6376
  %6378 = fsub fast float %6377, %6375
  %6379 = call float @dx.op.unary.f32(i32 6, float %6378)  ; FAbs(value)
  %6380 = fadd fast float %6379, 0x3DDB7CDFE0000000
  %6381 = fdiv fast float %6373, %6380
  br label %6382

; <label>:6382                                    ; preds = %6367, %6358
  %6383 = phi float [ %6381, %6367 ], [ 1.000000e+00, %6358 ]
  %6384 = call float @dx.op.binary.f32(i32 36, float %6383, float %6359)  ; FMin(a,b)
  %6385 = fmul fast float %6291, %6291
  %6386 = fmul fast float %6305, %6305
  %6387 = fmul fast float %6293, %6293
  %6388 = fadd fast float %6387, %6385
  %6389 = fadd fast float %6388, %6386
  %6390 = call float @dx.op.unary.f32(i32 24, float %6389)  ; Sqrt(value)
  %6391 = fcmp fast ugt float %6390, 0.000000e+00
  br i1 %6391, label %6392, label %6407

; <label>:6392                                    ; preds = %6382
  %6393 = fsub fast float -0.000000e+00, %6293
  %6394 = fdiv fast float %6393, %6390
  %6395 = fsub fast float -0.000000e+00, %6291
  %6396 = fdiv fast float %6395, %6390
  %6397 = fdiv fast float %6305, %6390
  %6398 = fmul fast float %6304, 0x3FE279A760000000
  %6399 = fmul fast float %6396, %6291
  %6400 = fmul fast float %6397, %6305
  %6401 = fmul fast float %6394, %6293
  %6402 = fadd fast float %6399, %6401
  %6403 = fsub fast float %6402, %6400
  %6404 = call float @dx.op.unary.f32(i32 6, float %6403)  ; FAbs(value)
  %6405 = fadd fast float %6404, 0x3DDB7CDFE0000000
  %6406 = fdiv fast float %6398, %6405
  br label %6407

; <label>:6407                                    ; preds = %6392, %6382
  %6408 = phi float [ %6406, %6392 ], [ 1.000000e+00, %6382 ]
  %6409 = call float @dx.op.binary.f32(i32 36, float %6408, float %6384)  ; FMin(a,b)
  %6410 = call float @dx.op.unary.f32(i32 7, float %6409)  ; Saturate(value)
  %6411 = fcmp fast olt float %6410, 1.000000e+00
  br i1 %6411, label %6412, label %6422

; <label>:6412                                    ; preds = %6407
  %6413 = fmul fast float %6410, %6291
  %6414 = fmul fast float %6410, %6305
  %6415 = fmul fast float %6410, %6293
  %6416 = fmul fast float %6410, %6308
  %6417 = fmul fast float %6410, %6320
  %6418 = fmul fast float %6410, %6310
  %6419 = fmul fast float %6410, %6323
  %6420 = fmul fast float %6410, %6335
  %6421 = fmul fast float %6410, %6325
  br label %6422

; <label>:6422                                    ; preds = %6412, %6407
  %6423 = phi float [ %6419, %6412 ], [ %6323, %6407 ]
  %6424 = phi float [ %6420, %6412 ], [ %6335, %6407 ]
  %6425 = phi float [ %6421, %6412 ], [ %6325, %6407 ]
  %6426 = phi float [ %6416, %6412 ], [ %6308, %6407 ]
  %6427 = phi float [ %6417, %6412 ], [ %6320, %6407 ]
  %6428 = phi float [ %6418, %6412 ], [ %6310, %6407 ]
  %6429 = phi float [ %6413, %6412 ], [ %6291, %6407 ]
  %6430 = phi float [ %6414, %6412 ], [ %6305, %6407 ]
  %6431 = phi float [ %6415, %6412 ], [ %6293, %6407 ]
  %6432 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6304)  ; FMax(a,b)
  %6433 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6319)  ; FMax(a,b)
  %6434 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6334)  ; FMax(a,b)
  %6435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %6436 = extractvalue %dx.types.CBufRet.f32 %6435, 0
  %6437 = fcmp fast ogt float %6436, 0.000000e+00
  %6438 = fcmp fast oge float %6092, 0.000000e+00
  %6439 = and i1 %6438, %6437
  %6440 = fcmp fast ole float %6092, 1.000000e+00
  %6441 = and i1 %6440, %6439
  %6442 = fcmp fast oge float %6093, 0.000000e+00
  %6443 = and i1 %6442, %6441
  %6444 = fcmp fast ole float %6093, 1.000000e+00
  %6445 = and i1 %6444, %6443
  br i1 %6445, label %6446, label %6591, !dx.controlflow.hints !102

; <label>:6446                                    ; preds = %6422
  %6447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %6448 = extractvalue %dx.types.CBufRet.f32 %6447, 2
  %6449 = extractvalue %dx.types.CBufRet.f32 %6447, 3
  %6450 = fmul fast float %6448, %6092
  %6451 = fmul fast float %6449, %6093
  %6452 = call float @dx.op.unary.f32(i32 27, float %6450)  ; Round_ni(value)
  %6453 = call float @dx.op.unary.f32(i32 27, float %6451)  ; Round_ni(value)
  %6454 = fptosi float %6452 to i32
  %6455 = fptosi float %6453 to i32
  %6456 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %6454, i32 %6455, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6457 = extractvalue %dx.types.ResRet.i32 %6456, 0
  %6458 = and i32 %6457, 65535
  %6459 = lshr i32 %6457, 16
  %6460 = icmp eq i32 %6458, 65535
  br i1 %6460, label %6497, label %6461

; <label>:6461                                    ; preds = %6446
  %6462 = extractvalue %dx.types.CBufRet.f32 %6435, 1
  %6463 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  %6464 = extractvalue %dx.types.CBufRet.f32 %6447, 1
  %6465 = fmul fast float %6463, %6092
  %6466 = fmul fast float %6464, %6093
  %6467 = fmul fast float %6465, 1.250000e-01
  %6468 = fmul fast float %6466, 1.250000e-01
  %6469 = call float @dx.op.unary.f32(i32 27, float %6467)  ; Round_ni(value)
  %6470 = call float @dx.op.unary.f32(i32 27, float %6468)  ; Round_ni(value)
  %6471 = fmul fast float %6469, 8.000000e+00
  %6472 = fmul fast float %6470, 8.000000e+00
  %6473 = and i32 %6457, 255
  %6474 = lshr i32 %6457, 8
  %6475 = and i32 %6474, 255
  %6476 = mul nuw nsw i32 %6473, 9
  %6477 = uitofp i32 %6476 to float
  %6478 = mul nuw nsw i32 %6475, 9
  %6479 = uitofp i32 %6478 to float
  %6480 = fadd fast float %6477, 5.000000e-01
  %6481 = fadd fast float %6480, %6465
  %6482 = fsub fast float %6481, %6471
  %6483 = fadd fast float %6479, 5.000000e-01
  %6484 = fadd fast float %6483, %6466
  %6485 = fsub fast float %6484, %6472
  %6486 = fdiv fast float %6482, %6436
  %6487 = fdiv fast float %6485, %6462
  %6488 = fmul fast float %6120, 4.375000e-01
  %6489 = fadd fast float %6488, 3.125000e-02
  %6490 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %42, float %6486, float %6487, float %6489, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6491 = extractvalue %dx.types.ResRet.f32 %6490, 0
  %6492 = extractvalue %dx.types.ResRet.f32 %6490, 1
  %6493 = extractvalue %dx.types.ResRet.f32 %6490, 2
  %6494 = fadd fast float %6491, %6432
  %6495 = fadd fast float %6492, %6433
  %6496 = fadd fast float %6493, %6434
  br label %6497

; <label>:6497                                    ; preds = %6461, %6446
  %6498 = phi float [ %6496, %6461 ], [ %6434, %6446 ]
  %6499 = phi float [ %6495, %6461 ], [ %6433, %6446 ]
  %6500 = phi float [ %6494, %6461 ], [ %6432, %6446 ]
  %6501 = icmp eq i32 %6459, 65535
  br i1 %6501, label %6591, label %6502

; <label>:6502                                    ; preds = %6497
  %6503 = extractvalue %dx.types.CBufRet.f32 %6435, 1
  %6504 = extractvalue %dx.types.CBufRet.f32 %6447, 0
  %6505 = extractvalue %dx.types.CBufRet.f32 %6447, 1
  %6506 = fmul fast float %6504, %6092
  %6507 = fmul fast float %6505, %6093
  %6508 = fmul fast float %6506, 1.250000e-01
  %6509 = fmul fast float %6507, 1.250000e-01
  %6510 = call float @dx.op.unary.f32(i32 27, float %6508)  ; Round_ni(value)
  %6511 = call float @dx.op.unary.f32(i32 27, float %6509)  ; Round_ni(value)
  %6512 = fmul fast float %6510, 8.000000e+00
  %6513 = fmul fast float %6511, 8.000000e+00
  %6514 = fsub fast float %6506, %6512
  %6515 = fsub fast float %6507, %6513
  %6516 = fadd fast float %6514, 5.000000e-01
  %6517 = fadd fast float %6515, 5.000000e-01
  %6518 = and i32 %6459, 255
  %6519 = lshr i32 %6457, 24
  %6520 = mul nuw nsw i32 %6518, 9
  %6521 = uitofp i32 %6520 to float
  %6522 = mul nuw nsw i32 %6519, 9
  %6523 = uitofp i32 %6522 to float
  %6524 = fadd fast float %6516, %6521
  %6525 = fadd fast float %6517, %6523
  %6526 = fdiv fast float %6524, %6436
  %6527 = fdiv fast float %6525, %6503
  %6528 = fmul fast float %6120, 4.375000e-01
  %6529 = fadd fast float %6528, 3.125000e-02
  %6530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %42, float %6526, float %6527, float %6529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6531 = extractvalue %dx.types.ResRet.f32 %6530, 0
  %6532 = extractvalue %dx.types.ResRet.f32 %6530, 1
  %6533 = extractvalue %dx.types.ResRet.f32 %6530, 2
  %6534 = fadd fast float %6528, 5.312500e-01
  %6535 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %42, float %6526, float %6527, float %6534, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6536 = extractvalue %dx.types.ResRet.f32 %6535, 0
  %6537 = extractvalue %dx.types.ResRet.f32 %6535, 1
  %6538 = extractvalue %dx.types.ResRet.f32 %6535, 2
  %6539 = fmul fast float %6536, 2.000000e+00
  %6540 = fmul fast float %6537, 2.000000e+00
  %6541 = fmul fast float %6538, 2.000000e+00
  %6542 = fadd fast float %6539, -1.000000e+00
  %6543 = fadd fast float %6540, -1.000000e+00
  %6544 = fadd fast float %6541, -1.000000e+00
  %6545 = fmul fast float %6542, %6542
  %6546 = fmul fast float %6543, %6543
  %6547 = fadd fast float %6545, %6546
  %6548 = fmul fast float %6544, %6544
  %6549 = fadd fast float %6547, %6548
  %6550 = call float @dx.op.unary.f32(i32 24, float %6549)  ; Sqrt(value)
  %6551 = fcmp fast ogt float %6550, 0.000000e+00
  br i1 %6551, label %6552, label %6556

; <label>:6552                                    ; preds = %6502
  %6553 = fdiv fast float %6542, %6550
  %6554 = fdiv fast float %6543, %6550
  %6555 = fdiv fast float %6544, %6550
  br label %6556

; <label>:6556                                    ; preds = %6552, %6502
  %6557 = phi float [ %6553, %6552 ], [ 0.000000e+00, %6502 ]
  %6558 = phi float [ %6554, %6552 ], [ 0.000000e+00, %6502 ]
  %6559 = phi float [ %6555, %6552 ], [ 0.000000e+00, %6502 ]
  %6560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %6561 = extractvalue %dx.types.CBufRet.f32 %6560, 0
  %6562 = extractvalue %dx.types.CBufRet.f32 %6560, 1
  %6563 = fsub fast float %6077, %6561
  %6564 = fsub fast float %6078, %6562
  %6565 = fmul fast float %6563, %6563
  %6566 = fmul fast float %6564, %6564
  %6567 = fadd fast float %6565, %6566
  %6568 = call float @dx.op.unary.f32(i32 24, float %6567)  ; Sqrt(value)
  %6569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %6570 = extractvalue %dx.types.CBufRet.f32 %6569, 0
  %6571 = extractvalue %dx.types.CBufRet.f32 %6569, 1
  %6572 = fsub fast float %6568, %6570
  %6573 = fdiv fast float %6572, %6571
  %6574 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6575 = fmul fast float %6574, 2.000000e+00
  %6576 = fsub fast float 3.000000e+00, %6575
  %6577 = fmul fast float %6574, %6574
  %6578 = fmul fast float %6577, %6576
  %6579 = call float @dx.op.dot3.f32(i32 55, float %6557, float %6558, float %6559, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %6580 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6579)  ; FMax(a,b)
  %6581 = fmul fast float %6580, 0x400C5BF8A0000000
  %6582 = fmul fast float %6578, %6531
  %6583 = fmul fast float %6582, %6581
  %6584 = fadd fast float %6583, %6500
  %6585 = fmul fast float %6578, %6532
  %6586 = fmul fast float %6585, %6581
  %6587 = fadd fast float %6586, %6499
  %6588 = fmul fast float %6578, %6533
  %6589 = fmul fast float %6588, %6581
  %6590 = fadd fast float %6589, %6498
  br label %6591

; <label>:6591                                    ; preds = %6556, %6497, %6422
  %6592 = phi float [ %6590, %6556 ], [ %6498, %6497 ], [ %6434, %6422 ]
  %6593 = phi float [ %6587, %6556 ], [ %6499, %6497 ], [ %6433, %6422 ]
  %6594 = phi float [ %6584, %6556 ], [ %6500, %6497 ], [ %6432, %6422 ]
  %6595 = fcmp fast ogt float %6079, %6116
  %6596 = and i1 %6438, %6595
  %6597 = and i1 %6440, %6596
  %6598 = and i1 %6442, %6597
  %6599 = and i1 %6444, %6598
  br i1 %6599, label %6600, label %6657, !dx.controlflow.hints !103

; <label>:6600                                    ; preds = %6591
  %6601 = fmul fast float %6118, 0x3FC24924A0000000
  %6602 = fsub fast float %6079, %6116
  %6603 = fdiv fast float %6602, %6601
  %6604 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  %6605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %6606 = extractvalue %dx.types.CBufRet.f32 %6605, 0
  %6607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %6608 = extractvalue %dx.types.CBufRet.f32 %6607, 0
  %6609 = extractvalue %dx.types.CBufRet.f32 %6607, 1
  %6610 = extractvalue %dx.types.CBufRet.f32 %6607, 2
  %6611 = fsub fast float %6606, %6594
  %6612 = fsub fast float %6608, %6429
  %6613 = fsub fast float %6609, %6430
  %6614 = fsub fast float %6610, %6431
  %6615 = fmul fast float %6611, %6604
  %6616 = fmul fast float %6612, %6604
  %6617 = fmul fast float %6613, %6604
  %6618 = fmul fast float %6614, %6604
  %6619 = fadd fast float %6615, %6594
  %6620 = fadd fast float %6616, %6429
  %6621 = fadd fast float %6617, %6430
  %6622 = fadd fast float %6618, %6431
  %6623 = extractvalue %dx.types.CBufRet.f32 %6605, 1
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = extractvalue %dx.types.CBufRet.f32 %6624, 1
  %6627 = extractvalue %dx.types.CBufRet.f32 %6624, 2
  %6628 = fsub fast float %6623, %6593
  %6629 = fsub fast float %6625, %6426
  %6630 = fsub fast float %6626, %6427
  %6631 = fsub fast float %6627, %6428
  %6632 = fmul fast float %6628, %6604
  %6633 = fmul fast float %6629, %6604
  %6634 = fmul fast float %6630, %6604
  %6635 = fmul fast float %6631, %6604
  %6636 = fadd fast float %6632, %6593
  %6637 = fadd fast float %6633, %6426
  %6638 = fadd fast float %6634, %6427
  %6639 = fadd fast float %6635, %6428
  %6640 = extractvalue %dx.types.CBufRet.f32 %6605, 2
  %6641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %6642 = extractvalue %dx.types.CBufRet.f32 %6641, 0
  %6643 = extractvalue %dx.types.CBufRet.f32 %6641, 1
  %6644 = extractvalue %dx.types.CBufRet.f32 %6641, 2
  %6645 = fsub fast float %6640, %6592
  %6646 = fsub fast float %6642, %6423
  %6647 = fsub fast float %6643, %6424
  %6648 = fsub fast float %6644, %6425
  %6649 = fmul fast float %6645, %6604
  %6650 = fmul fast float %6646, %6604
  %6651 = fmul fast float %6647, %6604
  %6652 = fmul fast float %6648, %6604
  %6653 = fadd fast float %6649, %6592
  %6654 = fadd fast float %6650, %6423
  %6655 = fadd fast float %6651, %6424
  %6656 = fadd fast float %6652, %6425
  br label %6657

; <label>:6657                                    ; preds = %6600, %6591
  %6658 = phi float [ %6653, %6600 ], [ %6592, %6591 ]
  %6659 = phi float [ %6654, %6600 ], [ %6423, %6591 ]
  %6660 = phi float [ %6655, %6600 ], [ %6424, %6591 ]
  %6661 = phi float [ %6656, %6600 ], [ %6425, %6591 ]
  %6662 = phi float [ %6636, %6600 ], [ %6593, %6591 ]
  %6663 = phi float [ %6637, %6600 ], [ %6426, %6591 ]
  %6664 = phi float [ %6638, %6600 ], [ %6427, %6591 ]
  %6665 = phi float [ %6639, %6600 ], [ %6428, %6591 ]
  %6666 = phi float [ %6619, %6600 ], [ %6594, %6591 ]
  %6667 = phi float [ %6620, %6600 ], [ %6429, %6591 ]
  %6668 = phi float [ %6621, %6600 ], [ %6430, %6591 ]
  %6669 = phi float [ %6622, %6600 ], [ %6431, %6591 ]
  %6670 = extractvalue %dx.types.CBufRet.f32 %6241, 3
  %6671 = fmul fast float %6670, %6666
  %6672 = fmul fast float %6670, %6662
  %6673 = fmul fast float %6670, %6658
  %6674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6675 = extractvalue %dx.types.CBufRet.f32 %6674, 3
  %6676 = fmul fast float %6671, %6675
  %6677 = fmul fast float %6672, %6675
  %6678 = fmul fast float %6673, %6675
  %6679 = fmul fast float %6667, 1.500000e+00
  %6680 = fmul fast float %6679, %6670
  %6681 = fmul fast float %6680, %6675
  %6682 = fmul fast float %6668, 1.500000e+00
  %6683 = fmul fast float %6682, %6670
  %6684 = fmul fast float %6683, %6675
  %6685 = fmul fast float %6669, 1.500000e+00
  %6686 = fmul fast float %6685, %6670
  %6687 = fmul fast float %6686, %6675
  %6688 = fmul fast float %6663, 1.500000e+00
  %6689 = fmul fast float %6688, %6670
  %6690 = fmul fast float %6689, %6675
  %6691 = fmul fast float %6664, 1.500000e+00
  %6692 = fmul fast float %6691, %6670
  %6693 = fmul fast float %6692, %6675
  %6694 = fmul fast float %6665, 1.500000e+00
  %6695 = fmul fast float %6694, %6670
  %6696 = fmul fast float %6695, %6675
  %6697 = fmul fast float %6659, 1.500000e+00
  %6698 = fmul fast float %6697, %6670
  %6699 = fmul fast float %6698, %6675
  %6700 = fmul fast float %6660, 1.500000e+00
  %6701 = fmul fast float %6700, %6670
  %6702 = fmul fast float %6701, %6675
  %6703 = fmul fast float %6661, 1.500000e+00
  %6704 = fmul fast float %6703, %6670
  %6705 = fmul fast float %6704, %6675
  %6706 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6676)  ; FMax(a,b)
  %6707 = call float @dx.op.dot3.f32(i32 55, float %6681, float %6684, float %6687, float %6681, float %6684, float %6687)  ; Dot3(ax,ay,az,bx,by,bz)
  %6708 = fcmp fast oeq float %6707, 0.000000e+00
  %6709 = fcmp fast oeq float %6706, 0.000000e+00
  %6710 = or i1 %6709, %6708
  br i1 %6710, label %6740, label %6711

; <label>:6711                                    ; preds = %6657
  %6712 = fsub fast float -0.000000e+00, %6687
  %6713 = fsub fast float -0.000000e+00, %6681
  %6714 = call float @dx.op.unary.f32(i32 24, float %6707)  ; Sqrt(value)
  %6715 = fdiv fast float %6714, %6706
  %6716 = fcmp fast ogt float %6715, 0x3FFB6F8900000000
  %6717 = select i1 %6716, float 0x3FFB6F8900000000, float %6715
  %6718 = fmul fast float %6717, 0x3FE8A23460000000
  %6719 = call float @dx.op.unary.f32(i32 7, float %6718)  ; Saturate(value)
  %6720 = call float @dx.op.binary.f32(i32 35, float %6717, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6721 = fmul fast float %6719, %6706
  %6722 = fmul fast float %6720, 0x3FF279A740000000
  %6723 = fadd fast float %6722, -1.000000e+00
  %6724 = call float @dx.op.dot3.f32(i32 55, float %6712, float %6713, float %6684, float %6712, float %6713, float %6684)  ; Dot3(ax,ay,az,bx,by,bz)
  %6725 = call float @dx.op.unary.f32(i32 25, float %6724)  ; Rsqrt(value)
  %6726 = fmul fast float %6725, %6712
  %6727 = fmul fast float %6725, %6713
  %6728 = fmul fast float %6725, %6684
  %6729 = fmul fast float %6723, %6723
  %6730 = fsub fast float 1.000000e+00, %6729
  %6731 = fmul fast float %6720, 0x40005F8BE0000000
  %6732 = fsub fast float 0x400C5BF8A0000000, %6731
  %6733 = fdiv fast float %6721, %6732
  %6734 = fmul fast float %6733, 0x3FEE31C3C0000000
  %6735 = fmul fast float %6734, %6730
  %6736 = fmul fast float %6720, 0x3FDACB7480000000
  %6737 = fadd fast float %6736, 0xBFD7347680000000
  %6738 = fmul fast float %6737, %6733
  %6739 = fmul fast float %6738, %6730
  br label %6740

; <label>:6740                                    ; preds = %6711, %6657
  %6741 = phi float [ %6726, %6711 ], [ 0.000000e+00, %6657 ]
  %6742 = phi float [ %6727, %6711 ], [ 0.000000e+00, %6657 ]
  %6743 = phi float [ %6728, %6711 ], [ 0.000000e+00, %6657 ]
  %6744 = phi float [ %6735, %6711 ], [ 0.000000e+00, %6657 ]
  %6745 = phi float [ %6739, %6711 ], [ 0.000000e+00, %6657 ]
  %6746 = call float @dx.op.dot3.f32(i32 55, float %6741, float %6742, float %6743, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %6747 = fmul fast float %6746, 0x3FDF454380000000
  %6748 = fmul fast float %6746, %6746
  %6749 = fmul fast float %6748, 0x3FEE471020000000
  %6750 = fadd fast float %6749, 0xBFD42F6020000000
  %6751 = fmul fast float %6706, 0x3FD20DD760000000
  %6752 = fmul fast float %6750, %6745
  %6753 = fadd fast float %6752, %6751
  %6754 = fmul fast float %6747, %6744
  %6755 = fadd fast float %6753, %6754
  %6756 = fsub fast float %6753, %6754
  %6757 = call float @dx.op.dot3.f32(i32 55, float %6741, float %6742, float %6743, float %6066, float %6067, float %6068)  ; Dot3(ax,ay,az,bx,by,bz)
  %6758 = fmul fast float %6757, 0x3FDF454380000000
  %6759 = fmul fast float %6757, %6757
  %6760 = fmul fast float %6759, 0x3FEE471020000000
  %6761 = fadd fast float %6760, 0xBFD42F6020000000
  %6762 = call float @dx.op.dot3.f32(i32 55, float %6706, float %6744, float %6745, float 0x3FD20DD760000000, float %6758, float %6761)  ; Dot3(ax,ay,az,bx,by,bz)
  %6763 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6677)  ; FMax(a,b)
  %6764 = call float @dx.op.dot3.f32(i32 55, float %6690, float %6693, float %6696, float %6690, float %6693, float %6696)  ; Dot3(ax,ay,az,bx,by,bz)
  %6765 = fcmp fast oeq float %6764, 0.000000e+00
  %6766 = fcmp fast oeq float %6763, 0.000000e+00
  %6767 = or i1 %6766, %6765
  br i1 %6767, label %6797, label %6768

; <label>:6768                                    ; preds = %6740
  %6769 = fsub fast float -0.000000e+00, %6696
  %6770 = fsub fast float -0.000000e+00, %6690
  %6771 = call float @dx.op.unary.f32(i32 24, float %6764)  ; Sqrt(value)
  %6772 = fdiv fast float %6771, %6763
  %6773 = fcmp fast ogt float %6772, 0x3FFB6F8900000000
  %6774 = select i1 %6773, float 0x3FFB6F8900000000, float %6772
  %6775 = fmul fast float %6774, 0x3FE8A23460000000
  %6776 = call float @dx.op.unary.f32(i32 7, float %6775)  ; Saturate(value)
  %6777 = call float @dx.op.binary.f32(i32 35, float %6774, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6778 = fmul fast float %6776, %6763
  %6779 = fmul fast float %6777, 0x3FF279A740000000
  %6780 = fadd fast float %6779, -1.000000e+00
  %6781 = call float @dx.op.dot3.f32(i32 55, float %6769, float %6770, float %6693, float %6769, float %6770, float %6693)  ; Dot3(ax,ay,az,bx,by,bz)
  %6782 = call float @dx.op.unary.f32(i32 25, float %6781)  ; Rsqrt(value)
  %6783 = fmul fast float %6782, %6769
  %6784 = fmul fast float %6782, %6770
  %6785 = fmul fast float %6782, %6693
  %6786 = fmul fast float %6780, %6780
  %6787 = fsub fast float 1.000000e+00, %6786
  %6788 = fmul fast float %6777, 0x40005F8BE0000000
  %6789 = fsub fast float 0x400C5BF8A0000000, %6788
  %6790 = fdiv fast float %6778, %6789
  %6791 = fmul fast float %6790, 0x3FEE31C3C0000000
  %6792 = fmul fast float %6791, %6787
  %6793 = fmul fast float %6777, 0x3FDACB7480000000
  %6794 = fadd fast float %6793, 0xBFD7347680000000
  %6795 = fmul fast float %6794, %6790
  %6796 = fmul fast float %6795, %6787
  br label %6797

; <label>:6797                                    ; preds = %6768, %6740
  %6798 = phi float [ %6783, %6768 ], [ 0.000000e+00, %6740 ]
  %6799 = phi float [ %6784, %6768 ], [ 0.000000e+00, %6740 ]
  %6800 = phi float [ %6785, %6768 ], [ 0.000000e+00, %6740 ]
  %6801 = phi float [ %6792, %6768 ], [ 0.000000e+00, %6740 ]
  %6802 = phi float [ %6796, %6768 ], [ 0.000000e+00, %6740 ]
  %6803 = call float @dx.op.dot3.f32(i32 55, float %6798, float %6799, float %6800, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %6804 = fmul fast float %6803, 0x3FDF454380000000
  %6805 = fmul fast float %6803, %6803
  %6806 = fmul fast float %6805, 0x3FEE471020000000
  %6807 = fadd fast float %6806, 0xBFD42F6020000000
  %6808 = fmul fast float %6763, 0x3FD20DD760000000
  %6809 = fmul fast float %6807, %6802
  %6810 = fadd fast float %6809, %6808
  %6811 = fmul fast float %6804, %6801
  %6812 = fadd fast float %6810, %6811
  %6813 = fsub fast float %6810, %6811
  %6814 = call float @dx.op.dot3.f32(i32 55, float %6798, float %6799, float %6800, float %6066, float %6067, float %6068)  ; Dot3(ax,ay,az,bx,by,bz)
  %6815 = fmul fast float %6814, 0x3FDF454380000000
  %6816 = fmul fast float %6814, %6814
  %6817 = fmul fast float %6816, 0x3FEE471020000000
  %6818 = fadd fast float %6817, 0xBFD42F6020000000
  %6819 = call float @dx.op.dot3.f32(i32 55, float %6763, float %6801, float %6802, float 0x3FD20DD760000000, float %6815, float %6818)  ; Dot3(ax,ay,az,bx,by,bz)
  %6820 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %6678)  ; FMax(a,b)
  %6821 = call float @dx.op.dot3.f32(i32 55, float %6699, float %6702, float %6705, float %6699, float %6702, float %6705)  ; Dot3(ax,ay,az,bx,by,bz)
  %6822 = fcmp fast oeq float %6821, 0.000000e+00
  %6823 = fcmp fast oeq float %6820, 0.000000e+00
  %6824 = or i1 %6823, %6822
  br i1 %6824, label %6854, label %6825

; <label>:6825                                    ; preds = %6797
  %6826 = fsub fast float -0.000000e+00, %6705
  %6827 = fsub fast float -0.000000e+00, %6699
  %6828 = call float @dx.op.unary.f32(i32 24, float %6821)  ; Sqrt(value)
  %6829 = fdiv fast float %6828, %6820
  %6830 = fcmp fast ogt float %6829, 0x3FFB6F8900000000
  %6831 = select i1 %6830, float 0x3FFB6F8900000000, float %6829
  %6832 = fmul fast float %6831, 0x3FE8A23460000000
  %6833 = call float @dx.op.unary.f32(i32 7, float %6832)  ; Saturate(value)
  %6834 = call float @dx.op.binary.f32(i32 35, float %6831, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %6835 = fmul fast float %6833, %6820
  %6836 = fmul fast float %6834, 0x3FF279A740000000
  %6837 = fadd fast float %6836, -1.000000e+00
  %6838 = call float @dx.op.dot3.f32(i32 55, float %6826, float %6827, float %6702, float %6826, float %6827, float %6702)  ; Dot3(ax,ay,az,bx,by,bz)
  %6839 = call float @dx.op.unary.f32(i32 25, float %6838)  ; Rsqrt(value)
  %6840 = fmul fast float %6839, %6826
  %6841 = fmul fast float %6839, %6827
  %6842 = fmul fast float %6839, %6702
  %6843 = fmul fast float %6837, %6837
  %6844 = fsub fast float 1.000000e+00, %6843
  %6845 = fmul fast float %6834, 0x40005F8BE0000000
  %6846 = fsub fast float 0x400C5BF8A0000000, %6845
  %6847 = fdiv fast float %6835, %6846
  %6848 = fmul fast float %6847, 0x3FEE31C3C0000000
  %6849 = fmul fast float %6848, %6844
  %6850 = fmul fast float %6834, 0x3FDACB7480000000
  %6851 = fadd fast float %6850, 0xBFD7347680000000
  %6852 = fmul fast float %6851, %6847
  %6853 = fmul fast float %6852, %6844
  br label %6854

; <label>:6854                                    ; preds = %6825, %6797
  %6855 = phi float [ %6840, %6825 ], [ 0.000000e+00, %6797 ]
  %6856 = phi float [ %6841, %6825 ], [ 0.000000e+00, %6797 ]
  %6857 = phi float [ %6842, %6825 ], [ 0.000000e+00, %6797 ]
  %6858 = phi float [ %6849, %6825 ], [ 0.000000e+00, %6797 ]
  %6859 = phi float [ %6853, %6825 ], [ 0.000000e+00, %6797 ]
  %6860 = call float @dx.op.dot3.f32(i32 55, float %6855, float %6856, float %6857, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %6861 = fmul fast float %6860, 0x3FDF454380000000
  %6862 = fmul fast float %6860, %6860
  %6863 = fmul fast float %6862, 0x3FEE471020000000
  %6864 = fadd fast float %6863, 0xBFD42F6020000000
  %6865 = fmul fast float %6820, 0x3FD20DD760000000
  %6866 = fmul fast float %6864, %6859
  %6867 = fadd fast float %6866, %6865
  %6868 = fmul fast float %6861, %6858
  %6869 = fadd fast float %6867, %6868
  %6870 = fsub fast float %6867, %6868
  %6871 = call float @dx.op.dot3.f32(i32 55, float %6855, float %6856, float %6857, float %6066, float %6067, float %6068)  ; Dot3(ax,ay,az,bx,by,bz)
  %6872 = fmul fast float %6871, 0x3FDF454380000000
  %6873 = fmul fast float %6871, %6871
  %6874 = fmul fast float %6873, 0x3FEE471020000000
  %6875 = fadd fast float %6874, 0xBFD42F6020000000
  %6876 = call float @dx.op.dot3.f32(i32 55, float %6820, float %6858, float %6859, float 0x3FD20DD760000000, float %6872, float %6875)  ; Dot3(ax,ay,az,bx,by,bz)
  %6877 = call float @dx.op.binary.f32(i32 35, float %6755, float 0.000000e+00)  ; FMax(a,b)
  %6878 = call float @dx.op.binary.f32(i32 35, float %6812, float 0.000000e+00)  ; FMax(a,b)
  %6879 = call float @dx.op.binary.f32(i32 35, float %6869, float 0.000000e+00)  ; FMax(a,b)
  %6880 = call float @dx.op.binary.f32(i32 35, float %6756, float 0.000000e+00)  ; FMax(a,b)
  %6881 = call float @dx.op.binary.f32(i32 35, float %6813, float 0.000000e+00)  ; FMax(a,b)
  %6882 = call float @dx.op.binary.f32(i32 35, float %6870, float 0.000000e+00)  ; FMax(a,b)
  %6883 = call float @dx.op.binary.f32(i32 35, float %6762, float 0.000000e+00)  ; FMax(a,b)
  %6884 = call float @dx.op.binary.f32(i32 35, float %6819, float 0.000000e+00)  ; FMax(a,b)
  %6885 = call float @dx.op.binary.f32(i32 35, float %6876, float 0.000000e+00)  ; FMax(a,b)
  %6886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %6887 = extractvalue %dx.types.CBufRet.f32 %6886, 0
  %6888 = call float @dx.op.binary.f32(i32 36, float %6050, float %6887)  ; FMin(a,b)
  %6889 = fsub fast float 1.000000e+00, %6069
  %6890 = fmul fast float %6888, %6889
  %6891 = fsub fast float 1.000000e+00, %6890
  %6892 = bitcast float %6891 to i32
  %6893 = sub nsw i32 2129859010, %6892
  %6894 = bitcast i32 %6893 to float
  %6895 = call float @dx.op.binary.f32(i32 36, float %6051, float %6887)  ; FMin(a,b)
  %6896 = fmul fast float %6895, %6889
  %6897 = fsub fast float 1.000000e+00, %6896
  %6898 = bitcast float %6897 to i32
  %6899 = sub nsw i32 2129859010, %6898
  %6900 = bitcast i32 %6899 to float
  %6901 = call float @dx.op.binary.f32(i32 36, float %6052, float %6887)  ; FMin(a,b)
  %6902 = fmul fast float %6901, %6889
  %6903 = fsub fast float 1.000000e+00, %6902
  %6904 = bitcast float %6903 to i32
  %6905 = sub nsw i32 2129859010, %6904
  %6906 = bitcast i32 %6905 to float
  %6907 = fmul fast float %6877, %6069
  %6908 = fmul fast float %6907, %6894
  %6909 = fmul fast float %6878, %6069
  %6910 = fmul fast float %6909, %6900
  %6911 = fmul fast float %6879, %6069
  %6912 = fmul fast float %6911, %6906
  %6913 = call float @dx.op.binary.f32(i32 36, float %6047, float %6887)  ; FMin(a,b)
  %6914 = fmul fast float %6913, %6889
  %6915 = fsub fast float 1.000000e+00, %6914
  %6916 = bitcast float %6915 to i32
  %6917 = sub nsw i32 2129859010, %6916
  %6918 = bitcast i32 %6917 to float
  %6919 = call float @dx.op.binary.f32(i32 36, float %6048, float %6887)  ; FMin(a,b)
  %6920 = fmul fast float %6919, %6889
  %6921 = fsub fast float 1.000000e+00, %6920
  %6922 = bitcast float %6921 to i32
  %6923 = sub nsw i32 2129859010, %6922
  %6924 = bitcast i32 %6923 to float
  %6925 = call float @dx.op.binary.f32(i32 36, float %6058, float %6887)  ; FMin(a,b)
  %6926 = fmul fast float %6925, %6889
  %6927 = fsub fast float 1.000000e+00, %6926
  %6928 = bitcast float %6927 to i32
  %6929 = sub nsw i32 2129859010, %6928
  %6930 = bitcast i32 %6929 to float
  %6931 = fmul fast float %6883, %6069
  %6932 = fmul fast float %6931, %6918
  %6933 = fmul fast float %6884, %6069
  %6934 = fmul fast float %6933, %6924
  %6935 = fmul fast float %6885, %6069
  %6936 = fmul fast float %6935, %6930
  %6937 = call float @dx.op.dot3.f32(i32 55, float %6908, float %6910, float %6912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6938 = select i1 %401, float 0.000000e+00, float %6908
  %6939 = select i1 %401, float %6937, float %6910
  %6940 = select i1 %401, float 0.000000e+00, float %6912
  %6941 = call float @dx.op.dot3.f32(i32 55, float %6880, float %6881, float %6882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6942 = select i1 %401, float 0.000000e+00, float %6880
  %6943 = select i1 %401, float %6941, float %6881
  %6944 = select i1 %401, float 0.000000e+00, float %6882
  %6945 = call float @dx.op.dot3.f32(i32 55, float %6932, float %6934, float %6936, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6946 = select i1 %401, float 0.000000e+00, float %6932
  %6947 = select i1 %401, float %6945, float %6934
  %6948 = select i1 %401, float 0.000000e+00, float %6936
  %6949 = fmul fast float %6060, 9.843750e-01
  %6950 = fmul fast float %6056, 9.843750e-01
  %6951 = fadd fast float %6949, 7.812500e-03
  %6952 = fadd fast float %6950, 7.812500e-03
  %6953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %42, float %6951, float %6952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6954 = extractvalue %dx.types.ResRet.f32 %6953, 2
  %6955 = extractvalue %dx.types.ResRet.f32 %6953, 3
  %6956 = fmul fast float %6954, %6047
  %6957 = fmul fast float %6954, %6048
  %6958 = fmul fast float %6954, %6058
  %6959 = fadd fast float %6956, %6955
  %6960 = fadd fast float %6957, %6955
  %6961 = fadd fast float %6958, %6955
  %6962 = call float @dx.op.binary.f32(i32 35, float %6960, float %6961)  ; FMax(a,b)
  %6963 = call float @dx.op.binary.f32(i32 35, float %6959, float %6962)  ; FMax(a,b)
  %6964 = fsub fast float 1.000000e+00, %6963
  %6965 = fmul fast float %6959, %6946
  %6966 = fmul fast float %6960, %6947
  %6967 = fmul fast float %6961, %6948
  %6968 = fadd fast float %6965, %5315
  %6969 = fmul fast float %6968, %1162
  %6970 = fadd fast float %6966, %5316
  %6971 = fmul fast float %6970, %1162
  %6972 = fadd fast float %6967, %5317
  %6973 = fmul fast float %6972, %1162
  %6974 = fmul fast float %6964, %6940
  %6975 = fmul fast float %6964, %6939
  %6976 = fmul fast float %6964, %6938
  %6977 = fmul fast float %6964, %5471
  %6978 = fadd fast float %6977, -1.000000e+00
  %6979 = fmul fast float %6978, %1162
  %6980 = fadd fast float %6979, 1.000000e+00
  %6981 = fmul fast float %6964, %5470
  %6982 = fadd fast float %6981, -1.000000e+00
  %6983 = fmul fast float %6982, %1162
  %6984 = fadd fast float %6983, 1.000000e+00
  %6985 = fmul fast float %6964, %5469
  %6986 = fadd fast float %6985, -1.000000e+00
  %6987 = fmul fast float %6986, %1162
  %6988 = fadd fast float %6987, 1.000000e+00
  %6989 = fmul fast float %6988, %6942
  %6990 = fmul fast float %6984, %6943
  %6991 = fmul fast float %6980, %6944
  %6992 = fadd fast float %6989, %6976
  %6993 = fmul fast float %6992, %1162
  %6994 = fadd fast float %6990, %6975
  %6995 = fmul fast float %6994, %1162
  %6996 = fadd fast float %6991, %6974
  %6997 = fmul fast float %6996, %1162
  %6998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6999 = extractvalue %dx.types.CBufRet.f32 %6998, 3
  %7000 = fcmp fast oeq float %6999, 0.000000e+00
  br i1 %7000, label %7187, label %7001

; <label>:7001                                    ; preds = %6854
  %7002 = extractvalue %dx.types.CBufRet.f32 %6998, 0
  %7003 = extractvalue %dx.types.CBufRet.f32 %6998, 1
  %7004 = extractvalue %dx.types.CBufRet.f32 %6998, 2
  %7005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %7006 = extractvalue %dx.types.CBufRet.f32 %7005, 0
  %7007 = extractvalue %dx.types.CBufRet.f32 %7005, 1
  %7008 = extractvalue %dx.types.CBufRet.f32 %7005, 2
  %7009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %7010 = extractvalue %dx.types.CBufRet.f32 %7009, 0
  %7011 = extractvalue %dx.types.CBufRet.f32 %7009, 1
  %7012 = call float @dx.op.dot3.f32(i32 55, float %7006, float %7007, float %7008, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7013 = select i1 %401, float %7010, float %7006
  %7014 = select i1 %401, float %7012, float %7007
  %7015 = select i1 %401, float %7011, float %7008
  %7016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %7017 = extractvalue %dx.types.CBufRet.f32 %7016, 1
  %7018 = fcmp fast une float %7017, 0.000000e+00
  br i1 %7018, label %7019, label %7036

; <label>:7019                                    ; preds = %7001
  %7020 = fptoui float %95 to i32
  %7021 = fptoui float %96 to i32
  %7022 = lshr i32 %7020, 4
  %7023 = lshr i32 %7021, 4
  %7024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %7025 = extractvalue %dx.types.CBufRet.f32 %7024, 0
  %7026 = fptoui float %7025 to i32
  %7027 = add i32 %7026, 15
  %7028 = lshr i32 %7027, 4
  %7029 = mul i32 %7028, %7023
  %7030 = add i32 %7029, %7022
  %7031 = shl i32 %7030, 3
  %7032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %7031, i32 undef)  ; BufferLoad(srv,index,wot)
  %7033 = extractvalue %dx.types.ResRet.i32 %7032, 0
  %7034 = and i32 %7033, -268435456
  %7035 = icmp eq i32 %7034, -1342177280
  br i1 %7035, label %7046, label %7036

; <label>:7036                                    ; preds = %7019, %7001
  %7037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %44, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7038 = extractvalue %dx.types.CBufRet.f32 %7037, 2
  %7039 = extractvalue %dx.types.CBufRet.f32 %7037, 3
  %7040 = fmul fast float %7038, %95
  %7041 = fmul fast float %7039, %96
  %7042 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %43, float %7040, float %7041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7043 = extractvalue %dx.types.ResRet.f32 %7042, 0
  %7044 = extractvalue %dx.types.ResRet.f32 %7042, 1
  %7045 = extractvalue %dx.types.ResRet.f32 %7042, 2
  br label %7046

; <label>:7046                                    ; preds = %7036, %7019
  %7047 = phi float [ %7043, %7036 ], [ 0.000000e+00, %7019 ]
  %7048 = phi float [ %7044, %7036 ], [ 0.000000e+00, %7019 ]
  %7049 = phi float [ %7045, %7036 ], [ 0.000000e+00, %7019 ]
  %7050 = call float @dx.op.binary.f32(i32 36, float %7048, float %7049)  ; FMin(a,b)
  %7051 = call float @dx.op.binary.f32(i32 36, float %7047, float %7050)  ; FMin(a,b)
  %7052 = fcmp fast ogt float %7051, 0.000000e+00
  br i1 %7052, label %7053, label %7187, !dx.controlflow.hints !104

; <label>:7053                                    ; preds = %7046
  %7054 = bitcast i32 %6072 to float
  %7055 = fmul fast float %7047, %7013
  %7056 = fmul fast float %7048, %7014
  %7057 = fmul fast float %7049, %7015
  %7058 = fsub fast float %7002, %6046
  %7059 = fsub fast float %7003, %6045
  %7060 = fsub fast float %7004, %6044
  %7061 = call float @dx.op.dot3.f32(i32 55, float %7058, float %7059, float %7060, float %7058, float %7059, float %7060)  ; Dot3(ax,ay,az,bx,by,bz)
  %7062 = call float @dx.op.unary.f32(i32 25, float %7061)  ; Rsqrt(value)
  %7063 = fmul fast float %7062, %7058
  %7064 = fmul fast float %7062, %7059
  %7065 = fmul fast float %7062, %7060
  %7066 = call float @dx.op.dot3.f32(i32 55, float %7002, float %7003, float %7004, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %7067 = call float @dx.op.dot3.f32(i32 55, float %6043, float %6042, float %6041, float %7063, float %7064, float %7065)  ; Dot3(ax,ay,az,bx,by,bz)
  %7068 = call float @dx.op.unary.f32(i32 7, float %7066)  ; Saturate(value)
  %7069 = fmul fast float %7068, %7068
  %7070 = fmul fast float %7069, %7054
  %7071 = call float @dx.op.unary.f32(i32 7, float %7070)  ; Saturate(value)
  %7072 = fmul fast float %7071, %7068
  %7073 = call float @dx.op.dot3.f32(i32 55, float %6053, float %6054, float %6055, float %7063, float %7064, float %7065)  ; Dot3(ax,ay,az,bx,by,bz)
  %7074 = fmul fast float %7073, %7073
  %7075 = call float @dx.op.unary.f32(i32 6, float %7066)  ; FAbs(value)
  %7076 = fsub fast float 1.000000e+00, %6056
  %7077 = call float @dx.op.binary.f32(i32 35, float %7076, float 0x3F847AE140000000)  ; FMax(a,b)
  %7078 = fmul fast float %7077, %7077
  %7079 = fmul fast float %7078, %7078
  %7080 = fsub fast float 1.000000e+00, %7079
  %7081 = fmul fast float %6060, %6060
  %7082 = fmul fast float %7081, %7080
  %7083 = fadd fast float %7082, %7079
  %7084 = bitcast float %7083 to i32
  %7085 = ashr i32 %7084, 1
  %7086 = add nsw i32 %7085, 532487669
  %7087 = bitcast i32 %7086 to float
  %7088 = fadd fast float %7087, %6060
  %7089 = fmul fast float %7079, %7074
  %7090 = fsub fast float 1.000000e+00, %7074
  %7091 = fadd fast float %7090, %7089
  %7092 = fmul fast float %7075, %7075
  %7093 = fmul fast float %7092, %7080
  %7094 = fadd fast float %7093, %7079
  %7095 = bitcast float %7094 to i32
  %7096 = ashr i32 %7095, 1
  %7097 = add nsw i32 %7096, 532487669
  %7098 = bitcast i32 %7097 to float
  %7099 = fadd fast float %7098, %7075
  %7100 = fmul fast float %7091, %7091
  %7101 = fmul fast float %7100, %7088
  %7102 = fmul fast float %7101, %7099
  %7103 = fdiv fast float 0x3FF0A00000000000, %7102
  %7104 = fmul fast float %7103, %7079
  %7105 = call float @dx.op.unary.f32(i32 6, float %7067)  ; FAbs(value)
  %7106 = fsub fast float 1.000000e+00, %7105
  %7107 = bitcast float %7106 to i32
  %7108 = sitofp i32 %7107 to float
  %7109 = fmul fast float %7108, 5.000000e+00
  %7110 = fadd fast float %7109, 0xC1EFBF8940000000
  %7111 = fptosi float %7110 to i32
  %7112 = bitcast i32 %7111 to float
  %7113 = fsub fast float 1.000000e+00, %6047
  %7114 = fsub fast float 1.000000e+00, %6048
  %7115 = fsub fast float 1.000000e+00, %6058
  %7116 = fmul fast float %7112, %7113
  %7117 = fmul fast float %7112, %7114
  %7118 = fmul fast float %7112, %7115
  %7119 = fadd fast float %7116, %6047
  %7120 = fadd fast float %7117, %6048
  %7121 = fadd fast float %7118, %6058
  %7122 = fmul fast float %7066, 9.843750e-01
  %7123 = fadd fast float %7122, 7.812500e-03
  %7124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %42, float %7123, float %6952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7125 = extractvalue %dx.types.ResRet.f32 %7124, 2
  %7126 = extractvalue %dx.types.ResRet.f32 %7124, 3
  %7127 = fmul fast float %7125, %6047
  %7128 = fmul fast float %7125, %6048
  %7129 = fmul fast float %7125, %6058
  %7130 = fadd fast float %7127, %7126
  %7131 = fadd fast float %7128, %7126
  %7132 = fadd fast float %7129, %7126
  %7133 = call float @dx.op.binary.f32(i32 35, float %7131, float %7132)  ; FMax(a,b)
  %7134 = call float @dx.op.binary.f32(i32 35, float %7130, float %7133)  ; FMax(a,b)
  %7135 = fsub fast float 1.000000e+00, %7134
  %7136 = fsub fast float -0.000000e+00, %6053
  %7137 = fsub fast float -0.000000e+00, %6054
  %7138 = fsub fast float -0.000000e+00, %6055
  %7139 = call float @dx.op.dot3.f32(i32 55, float %7002, float %7003, float %7004, float %7136, float %7137, float %7138)  ; Dot3(ax,ay,az,bx,by,bz)
  %7140 = call float @dx.op.unary.f32(i32 7, float %7139)  ; Saturate(value)
  %7141 = fmul fast float %7140, 9.843750e-01
  %7142 = fadd fast float %7141, 7.812500e-03
  %7143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %42, float %7142, float %6952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7144 = extractvalue %dx.types.ResRet.f32 %7143, 2
  %7145 = extractvalue %dx.types.ResRet.f32 %7143, 3
  %7146 = fmul fast float %7144, %6047
  %7147 = fmul fast float %7144, %6048
  %7148 = fmul fast float %7144, %6058
  %7149 = fadd fast float %7146, %7145
  %7150 = fadd fast float %7147, %7145
  %7151 = fadd fast float %7148, %7145
  %7152 = call float @dx.op.binary.f32(i32 35, float %7150, float %7151)  ; FMax(a,b)
  %7153 = call float @dx.op.binary.f32(i32 35, float %7149, float %7152)  ; FMax(a,b)
  %7154 = fsub fast float 1.000000e+00, %7153
  %7155 = fmul fast float %7154, %7140
  %7156 = fmul fast float %7155, %5469
  %7157 = fmul fast float %7155, %5470
  %7158 = fmul fast float %7155, %5471
  %7159 = fmul fast float %7135, %7072
  %7160 = fadd fast float %7156, %7159
  %7161 = fadd fast float %7157, %7159
  %7162 = fadd fast float %7158, %7159
  %7163 = fmul fast float %7160, %7055
  %7164 = fmul fast float %7161, %7056
  %7165 = fmul fast float %7162, %7057
  %7166 = fmul fast float %7072, %7055
  %7167 = fmul fast float %7166, %7104
  %7168 = fmul fast float %7167, %7119
  %7169 = fmul fast float %7072, %7056
  %7170 = fmul fast float %7169, %7104
  %7171 = fmul fast float %7170, %7120
  %7172 = fmul fast float %7072, %7057
  %7173 = fmul fast float %7172, %7104
  %7174 = fmul fast float %7173, %7121
  %7175 = fadd fast float %7163, %6992
  %7176 = fmul fast float %7175, %1162
  %7177 = fadd fast float %7164, %6994
  %7178 = fmul fast float %7177, %1162
  %7179 = fadd fast float %7165, %6996
  %7180 = fmul fast float %7179, %1162
  %7181 = fadd fast float %7168, %6968
  %7182 = fmul fast float %7181, %1162
  %7183 = fadd fast float %7171, %6970
  %7184 = fmul fast float %7183, %1162
  %7185 = fadd fast float %7174, %6972
  %7186 = fmul fast float %7185, %1162
  br label %7187

; <label>:7187                                    ; preds = %7053, %7046, %6854
  %7188 = phi float [ %6969, %6854 ], [ %6969, %7046 ], [ %7182, %7053 ]
  %7189 = phi float [ %6971, %6854 ], [ %6971, %7046 ], [ %7184, %7053 ]
  %7190 = phi float [ %6973, %6854 ], [ %6973, %7046 ], [ %7186, %7053 ]
  %7191 = phi float [ %6993, %6854 ], [ %6993, %7046 ], [ %7176, %7053 ]
  %7192 = phi float [ %6995, %6854 ], [ %6995, %7046 ], [ %7178, %7053 ]
  %7193 = phi float [ %6997, %6854 ], [ %6997, %7046 ], [ %7180, %7053 ]
  %7194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7195 = extractvalue %dx.types.CBufRet.i32 %7194, 0
  %7196 = icmp eq i32 %7195, 0
  br i1 %7196, label %7591, label %7197

; <label>:7197                                    ; preds = %7187
  %7198 = fptoui float %95 to i32
  %7199 = fptoui float %96 to i32
  %7200 = lshr i32 %7198, 4
  %7201 = lshr i32 %7199, 4
  %7202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %7203 = extractvalue %dx.types.CBufRet.i32 %7202, 0
  %7204 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7201, i32 %7203, i32 %7200)  ; UMad(a,b,c)
  %7205 = add nsw i32 %7195, -1
  %7206 = call i32 @dx.op.binary.i32(i32 37, i32 %7205, i32 0)  ; IMax(a,b)
  %7207 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %7208 = fptoui float %7207 to i32
  %7209 = lshr i32 %7208, 5
  %7210 = call i32 @dx.op.binary.i32(i32 40, i32 %7209, i32 8191)  ; UMin(a,b)
  %7211 = shl i32 %7210, 2
  %7212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %7211, i32 undef)  ; BufferLoad(srv,index,wot)
  %7213 = extractvalue %dx.types.ResRet.i32 %7212, 0
  %7214 = lshr i32 %7213, 16
  %7215 = and i32 %7213, 65535
  %7216 = lshr i32 %7213, 21
  %7217 = lshr i32 %7215, 5
  %7218 = call i32 @dx.op.binary.i32(i32 40, i32 %7217, i32 %7206)  ; UMin(a,b)
  %7219 = icmp ugt i32 %7216, %7218
  br i1 %7219, label %7591, label %7220

; <label>:7220                                    ; preds = %7197
  br label %7221

; <label>:7221                                    ; preds = %7581, %7220
  %7222 = phi i32 [ %7588, %7581 ], [ %7216, %7220 ]
  %7223 = phi float [ %7582, %7581 ], [ %7188, %7220 ]
  %7224 = phi float [ %7583, %7581 ], [ %7189, %7220 ]
  %7225 = phi float [ %7584, %7581 ], [ %7190, %7220 ]
  %7226 = phi float [ %7585, %7581 ], [ %7191, %7220 ]
  %7227 = phi float [ %7586, %7581 ], [ %7192, %7220 ]
  %7228 = phi float [ %7587, %7581 ], [ %7193, %7220 ]
  %7229 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %45, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %7230 = extractvalue %dx.types.CBufRet.i32 %7229, 0
  %7231 = call i32 @dx.op.tertiary.i32(i32 49, i32 %7204, i32 %7230, i32 %7222)  ; UMad(a,b,c)
  %7232 = shl i32 %7231, 2
  %7233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %7232, i32 undef)  ; BufferLoad(srv,index,wot)
  %7234 = extractvalue %dx.types.ResRet.i32 %7233, 0
  %7235 = shl i32 %7222, 5
  %7236 = sub nsw i32 %7214, %7235
  %7237 = call i32 @dx.op.binary.i32(i32 37, i32 %7236, i32 0)  ; IMax(a,b)
  %7238 = call i32 @dx.op.binary.i32(i32 38, i32 %7237, i32 31)  ; IMin(a,b)
  %7239 = sub nsw i32 1, %7214
  %7240 = add nsw i32 %7239, %7215
  %7241 = call i32 @dx.op.binary.i32(i32 37, i32 %7240, i32 0)  ; IMax(a,b)
  %7242 = call i32 @dx.op.binary.i32(i32 38, i32 %7241, i32 32)  ; IMin(a,b)
  %7243 = and i32 %7242, 31
  %7244 = shl i32 -1, %7243
  %7245 = xor i32 %7244, -1
  %7246 = and i32 %7238, 31
  %7247 = shl i32 %7245, %7246
  %7248 = icmp eq i32 %7242, 32
  %7249 = select i1 %7248, i32 -1, i32 %7247
  %7250 = and i32 %7249, %7234
  %7251 = icmp eq i32 %7250, 0
  br i1 %7251, label %7581, label %7252

; <label>:7252                                    ; preds = %7221
  br label %7253

; <label>:7253                                    ; preds = %7333, %7252
  %7254 = phi i32 [ %7265, %7333 ], [ %7250, %7252 ]
  %7255 = phi float [ %7334, %7333 ], [ %7223, %7252 ]
  %7256 = phi float [ %7335, %7333 ], [ %7224, %7252 ]
  %7257 = phi float [ %7336, %7333 ], [ %7225, %7252 ]
  %7258 = phi float [ %7337, %7333 ], [ %7226, %7252 ]
  %7259 = phi float [ %7338, %7333 ], [ %7227, %7252 ]
  %7260 = phi float [ %7339, %7333 ], [ %7228, %7252 ]
  %7261 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %7254)  ; FirstbitLo(value)
  %7262 = add i32 %7261, %7235
  %7263 = and i32 %7261, 31
  %7264 = shl i32 1, %7263
  %7265 = xor i32 %7264, %7254
  %7266 = mul i32 %7262, 112
  %7267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7266, i32 undef)  ; BufferLoad(srv,index,wot)
  %7268 = extractvalue %dx.types.ResRet.f32 %7267, 0
  %7269 = extractvalue %dx.types.ResRet.f32 %7267, 1
  %7270 = extractvalue %dx.types.ResRet.f32 %7267, 2
  %7271 = or i32 %7266, 12
  %7272 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7271, i32 undef)  ; BufferLoad(srv,index,wot)
  %7273 = extractvalue %dx.types.ResRet.f32 %7272, 0
  %7274 = add i32 %7266, 44
  %7275 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7274, i32 undef)  ; BufferLoad(srv,index,wot)
  %7276 = extractvalue %dx.types.ResRet.f32 %7275, 0
  %7277 = add i32 %7266, 48
  %7278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7277, i32 undef)  ; BufferLoad(srv,index,wot)
  %7279 = extractvalue %dx.types.ResRet.f32 %7278, 0
  %7280 = extractvalue %dx.types.ResRet.f32 %7278, 1
  %7281 = extractvalue %dx.types.ResRet.f32 %7278, 2
  %7282 = add i32 %7266, 80
  %7283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %7282, i32 undef)  ; BufferLoad(srv,index,wot)
  %7284 = extractvalue %dx.types.ResRet.f32 %7283, 1
  %7285 = extractvalue %dx.types.ResRet.f32 %7283, 2
  %7286 = call float @dx.op.dot3.f32(i32 55, float %7268, float %7269, float %7270, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %7287 = select i1 %401, float %7284, float %7268
  %7288 = select i1 %401, float %7286, float %7269
  %7289 = select i1 %401, float %7285, float %7270
  %7290 = fsub fast float %7279, %151
  %7291 = fsub fast float %7280, %152
  %7292 = fsub fast float %7281, %153
  %7293 = call float @dx.op.dot3.f32(i32 55, float %7290, float %7291, float %7292, float %7290, float %7291, float %7292)  ; Dot3(ax,ay,az,bx,by,bz)
  %7294 = call float @dx.op.unary.f32(i32 24, float %7293)  ; Sqrt(value)
  %7295 = fdiv fast float 1.000000e+00, %7294
  %7296 = fmul fast float %7295, %7290
  %7297 = fmul fast float %7295, %7291
  %7298 = fmul fast float %7295, %7292
  %7299 = fadd fast float %7294, %7273
  %7300 = fdiv fast float 1.000000e+00, %7299
  %7301 = fmul float %7276, %7300
  %7302 = fmul float %7301, %7301
  %7303 = call float @dx.op.unary.f32(i32 7, float %7302)  ; Saturate(value)
  %7304 = and i32 %7264, %7250
  %7305 = icmp eq i32 %7304, 0
  br i1 %7305, label %7328, label %7306, !dx.controlflow.hints !105

; <label>:7306                                    ; preds = %7253
  %7307 = lshr i32 %7198, 5
  %7308 = lshr i32 %7199, 5
  %7309 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %7307, i32 %7308, i32 %7262, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7310 = extractvalue %dx.types.ResRet.i32 %7309, 0
  %7311 = and i32 %7310, 3
  %7312 = icmp eq i32 %7311, 0
  %7313 = select i1 %7312, float 1.000000e+00, float 0.000000e+00
  %7314 = icmp eq i32 %7311, 3
  br i1 %7314, label %7315, label %7328

; <label>:7315                                    ; preds = %7306
  %7316 = lshr i32 %7310, 10
  %7317 = and i32 %7316, 8160
  %7318 = and i32 %7199, 31
  %7319 = or i32 %7317, %7318
  %7320 = lshr i32 %7310, 1
  %7321 = and i32 %7320, 16352
  %7322 = and i32 %7198, 31
  %7323 = or i32 %7321, %7322
  %7324 = lshr i32 %7310, 23
  %7325 = and i32 %7324, 255
  %7326 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %7323, i32 %7319, i32 %7325, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7327 = extractvalue %dx.types.ResRet.f32 %7326, 0
  br label %7328

; <label>:7328                                    ; preds = %7315, %7306, %7253
  %7329 = phi float [ %7327, %7315 ], [ %7313, %7306 ], [ 0.000000e+00, %7253 ]
  %7330 = call float @dx.op.binary.f32(i32 36, float %7329, float %7329)  ; FMin(a,b)
  %7331 = call float @dx.op.binary.f32(i32 36, float %7329, float %7330)  ; FMin(a,b)
  %7332 = fcmp fast ogt float %7331, 0.000000e+00
  br i1 %7332, label %7341, label %7333, !dx.controlflow.hints !106

; <label>:7333                                    ; preds = %7403, %7328
  %7334 = phi float [ %7255, %7328 ], [ %7577, %7403 ]
  %7335 = phi float [ %7256, %7328 ], [ %7578, %7403 ]
  %7336 = phi float [ %7257, %7328 ], [ %7579, %7403 ]
  %7337 = phi float [ %7258, %7328 ], [ %7565, %7403 ]
  %7338 = phi float [ %7259, %7328 ], [ %7566, %7403 ]
  %7339 = phi float [ %7260, %7328 ], [ %7567, %7403 ]
  %7340 = icmp eq i32 %7254, %7264
  br i1 %7340, label %7580, label %7253

; <label>:7341                                    ; preds = %7328
  %7342 = bitcast i32 %6072 to float
  %7343 = fmul fast float %7329, %7287
  %7344 = fmul fast float %7329, %7288
  %7345 = fmul fast float %7329, %7289
  %7346 = fsub fast float %7281, %5846
  %7347 = fcmp fast ogt float %7346, 0.000000e+00
  %7348 = fsub fast float %153, %5846
  %7349 = fcmp fast ogt float %7348, 0.000000e+00
  %7350 = xor i1 %7349, %7347
  %7351 = fsub fast float %5846, %7281
  %7352 = fmul fast float %7351, 2.000000e+00
  %7353 = fadd fast float %7352, %7281
  %7354 = select i1 %7350, float %7281, float %7353
  %7355 = fsub fast float %7354, %153
  %7356 = call float @dx.op.dot3.f32(i32 55, float %7290, float %7291, float %7355, float %7290, float %7291, float %7355)  ; Dot3(ax,ay,az,bx,by,bz)
  %7357 = call float @dx.op.unary.f32(i32 25, float %7356)  ; Rsqrt(value)
  %7358 = fmul fast float %7357, %7290
  %7359 = fmul fast float %7357, %7291
  %7360 = fmul fast float %7357, %7355
  %7361 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %5854)  ; Dot3(ax,ay,az,bx,by,bz)
  %7362 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %7358, float %7359, float %7360)  ; Dot3(ax,ay,az,bx,by,bz)
  %7363 = fdiv fast float 1.000000e+00, %7362
  %7364 = fmul fast float %7363, %7361
  %7365 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %7348, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7366 = fcmp fast ogt float %7365, 0.000000e+00
  %7367 = fcmp fast olt float %7365, 0.000000e+00
  %7368 = zext i1 %7366 to i32
  %7369 = zext i1 %7367 to i32
  %7370 = sub nsw i32 %7368, %7369
  %7371 = sitofp i32 %7370 to float
  %7372 = fsub fast float %7354, %5846
  %7373 = call float @dx.op.dot3.f32(i32 55, float %7290, float %7291, float %7372, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %7374 = fcmp fast ogt float %7373, 0.000000e+00
  %7375 = fcmp fast olt float %7373, 0.000000e+00
  %7376 = zext i1 %7374 to i32
  %7377 = zext i1 %7375 to i32
  %7378 = sub nsw i32 %7376, %7377
  %7379 = sitofp i32 %7378 to float
  %7380 = fcmp fast une float %7371, %7379
  br i1 %7380, label %7381, label %7391

; <label>:7381                                    ; preds = %7341
  %7382 = fmul fast float %7364, %7360
  %7383 = fmul fast float %7364, %7359
  %7384 = fmul fast float %7364, %7358
  %7385 = fmul fast float %7384, %7384
  %7386 = fmul fast float %7383, %7383
  %7387 = fadd fast float %7385, %7386
  %7388 = fmul fast float %7382, %7382
  %7389 = fadd fast float %7387, %7388
  %7390 = call float @dx.op.unary.f32(i32 24, float %7389)  ; Sqrt(value)
  br label %7403

; <label>:7391                                    ; preds = %7341
  %7392 = icmp slt i32 %7370, 0
  br i1 %7392, label %7393, label %7403

; <label>:7393                                    ; preds = %7391
  %7394 = fsub fast float %151, %7279
  %7395 = fsub fast float %152, %7280
  %7396 = fsub fast float %153, %7354
  %7397 = fmul fast float %7394, %7394
  %7398 = fmul fast float %7395, %7395
  %7399 = fadd fast float %7397, %7398
  %7400 = fmul fast float %7396, %7396
  %7401 = fadd fast float %7399, %7400
  %7402 = call float @dx.op.unary.f32(i32 24, float %7401)  ; Sqrt(value)
  br label %7403

; <label>:7403                                    ; preds = %7393, %7391, %7381
  %7404 = phi float [ %7390, %7381 ], [ %7402, %7393 ], [ 0.000000e+00, %7391 ]
  %7405 = and i1 %7349, %7347
  %7406 = fsub fast float -0.000000e+00, %7404
  %7407 = select i1 %7405, float -0.000000e+00, float %7406
  %7408 = fmul fast float %5847, 0x3FF7154760000000
  %7409 = fmul fast float %7408, %7407
  %7410 = fmul fast float %5848, 0x3FF7154760000000
  %7411 = fmul fast float %7410, %7407
  %7412 = fmul fast float %5849, 0x3FF7154760000000
  %7413 = fmul fast float %7412, %7407
  %7414 = call float @dx.op.unary.f32(i32 21, float %7409)  ; Exp(value)
  %7415 = call float @dx.op.unary.f32(i32 21, float %7411)  ; Exp(value)
  %7416 = call float @dx.op.unary.f32(i32 21, float %7413)  ; Exp(value)
  %7417 = call float @dx.op.unary.f32(i32 7, float %7414)  ; Saturate(value)
  %7418 = call float @dx.op.unary.f32(i32 7, float %7415)  ; Saturate(value)
  %7419 = call float @dx.op.unary.f32(i32 7, float %7416)  ; Saturate(value)
  %7420 = fmul fast float %7343, %7417
  %7421 = fmul fast float %7344, %7418
  %7422 = fmul fast float %7345, %7419
  %7423 = fsub fast float %7296, %6046
  %7424 = fsub fast float %7297, %6045
  %7425 = fsub fast float %7298, %6044
  %7426 = call float @dx.op.dot3.f32(i32 55, float %7423, float %7424, float %7425, float %7423, float %7424, float %7425)  ; Dot3(ax,ay,az,bx,by,bz)
  %7427 = call float @dx.op.unary.f32(i32 25, float %7426)  ; Rsqrt(value)
  %7428 = fmul fast float %7427, %7423
  %7429 = fmul fast float %7427, %7424
  %7430 = fmul fast float %7427, %7425
  %7431 = call float @dx.op.dot3.f32(i32 55, float %7296, float %7297, float %7298, float %6053, float %6054, float %6055)  ; Dot3(ax,ay,az,bx,by,bz)
  %7432 = call float @dx.op.dot3.f32(i32 55, float %6043, float %6042, float %6041, float %7428, float %7429, float %7430)  ; Dot3(ax,ay,az,bx,by,bz)
  %7433 = call float @dx.op.unary.f32(i32 7, float %7431)  ; Saturate(value)
  %7434 = fmul fast float %7433, %7303
  %7435 = fmul fast float %7433, %7433
  %7436 = fmul fast float %7435, %7342
  %7437 = call float @dx.op.unary.f32(i32 7, float %7436)  ; Saturate(value)
  %7438 = fmul fast float %7434, %7437
  %7439 = bitcast float %7293 to i32
  %7440 = ashr i32 %7439, 1
  %7441 = sub nsw i32 1597463007, %7440
  %7442 = bitcast i32 %7441 to float
  %7443 = fmul fast float %7442, %7290
  %7444 = fmul fast float %7442, %7291
  %7445 = fmul fast float %7442, %7292
  %7446 = fsub fast float %7443, %6046
  %7447 = fsub fast float %7444, %6045
  %7448 = fsub fast float %7445, %6044
  %7449 = call float @dx.op.dot3.f32(i32 55, float %7446, float %7447, float %7448, float %7446, float %7447, float %7448)  ; Dot3(ax,ay,az,bx,by,bz)
  %7450 = call float @dx.op.unary.f32(i32 25, float %7449)  ; Rsqrt(value)
  %7451 = fmul fast float %7446, %7450
  %7452 = fmul fast float %7447, %7450
  %7453 = fmul fast float %7448, %7450
  %7454 = call float @dx.op.dot3.f32(i32 55, float %6053, float %6054, float %6055, float %7451, float %7452, float %7453)  ; Dot3(ax,ay,az,bx,by,bz)
  %7455 = fmul fast float %7454, %7454
  %7456 = call float @dx.op.unary.f32(i32 6, float %7431)  ; FAbs(value)
  %7457 = fsub fast float 1.000000e+00, %6056
  %7458 = call float @dx.op.binary.f32(i32 35, float %7457, float 0x3F847AE140000000)  ; FMax(a,b)
  %7459 = fmul fast float %7458, %7458
  %7460 = fmul fast float %7459, %7459
  %7461 = fsub fast float 1.000000e+00, %7460
  %7462 = fmul fast float %6060, %6060
  %7463 = fmul fast float %7462, %7461
  %7464 = fadd fast float %7463, %7460
  %7465 = bitcast float %7464 to i32
  %7466 = ashr i32 %7465, 1
  %7467 = add nsw i32 %7466, 532487669
  %7468 = bitcast i32 %7467 to float
  %7469 = fadd fast float %7468, %6060
  %7470 = fmul fast float %7460, %7455
  %7471 = fsub fast float 1.000000e+00, %7455
  %7472 = fadd fast float %7471, %7470
  %7473 = fmul fast float %7456, %7456
  %7474 = fmul fast float %7473, %7461
  %7475 = fadd fast float %7474, %7460
  %7476 = bitcast float %7475 to i32
  %7477 = ashr i32 %7476, 1
  %7478 = add nsw i32 %7477, 532487669
  %7479 = bitcast i32 %7478 to float
  %7480 = fadd fast float %7479, %7456
  %7481 = fmul fast float %7472, %7472
  %7482 = fmul fast float %7481, %7469
  %7483 = fmul fast float %7482, %7480
  %7484 = fdiv fast float 1.000000e+00, %7483
  %7485 = bitcast float %7460 to i32
  %7486 = sitofp i32 %7485 to float
  %7487 = fmul fast float %7486, 0x3FE7F73180000000
  %7488 = fadd fast float %7487, 0x41AFE27C40000000
  %7489 = fptosi float %7488 to i32
  %7490 = bitcast i32 %7489 to float
  %7491 = fmul fast float %7276, 0x3FD80E9D60000000
  %7492 = fmul fast float %7491, %7442
  %7493 = fadd fast float %7490, %7492
  %7494 = bitcast float %7493 to i32
  %7495 = sub nsw i32 2129859010, %7494
  %7496 = bitcast i32 %7495 to float
  %7497 = fmul fast float %7460, %7484
  %7498 = fmul fast float %7497, %7490
  %7499 = fmul fast float %7498, %7496
  %7500 = call float @dx.op.unary.f32(i32 6, float %7432)  ; FAbs(value)
  %7501 = fsub fast float 1.000000e+00, %7500
  %7502 = bitcast float %7501 to i32
  %7503 = sitofp i32 %7502 to float
  %7504 = fmul fast float %7503, 5.000000e+00
  %7505 = fadd fast float %7504, 0xC1EFBF8940000000
  %7506 = fptosi float %7505 to i32
  %7507 = bitcast i32 %7506 to float
  %7508 = fsub fast float 1.000000e+00, %6047
  %7509 = fsub fast float 1.000000e+00, %6048
  %7510 = fsub fast float 1.000000e+00, %6058
  %7511 = fmul fast float %7507, %7508
  %7512 = fmul fast float %7507, %7509
  %7513 = fmul fast float %7507, %7510
  %7514 = fadd fast float %7511, %6047
  %7515 = fadd fast float %7512, %6048
  %7516 = fadd fast float %7513, %6058
  %7517 = fmul fast float %7431, 9.843750e-01
  %7518 = fadd fast float %7517, 7.812500e-03
  %7519 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %42, float %7518, float %6952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7520 = extractvalue %dx.types.ResRet.f32 %7519, 2
  %7521 = extractvalue %dx.types.ResRet.f32 %7519, 3
  %7522 = fmul fast float %7520, %6047
  %7523 = fmul fast float %7520, %6048
  %7524 = fmul fast float %7520, %6058
  %7525 = fadd fast float %7522, %7521
  %7526 = fadd fast float %7523, %7521
  %7527 = fadd fast float %7524, %7521
  %7528 = call float @dx.op.binary.f32(i32 35, float %7526, float %7527)  ; FMax(a,b)
  %7529 = call float @dx.op.binary.f32(i32 35, float %7525, float %7528)  ; FMax(a,b)
  %7530 = fsub fast float 1.000000e+00, %7529
  %7531 = fsub fast float -0.000000e+00, %6053
  %7532 = fsub fast float -0.000000e+00, %6054
  %7533 = fsub fast float -0.000000e+00, %6055
  %7534 = call float @dx.op.dot3.f32(i32 55, float %7296, float %7297, float %7298, float %7531, float %7532, float %7533)  ; Dot3(ax,ay,az,bx,by,bz)
  %7535 = call float @dx.op.unary.f32(i32 7, float %7534)  ; Saturate(value)
  %7536 = fmul fast float %7535, %7303
  %7537 = fmul fast float %7535, 9.843750e-01
  %7538 = fadd fast float %7537, 7.812500e-03
  %7539 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %42, float %7538, float %6952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %7540 = extractvalue %dx.types.ResRet.f32 %7539, 2
  %7541 = extractvalue %dx.types.ResRet.f32 %7539, 3
  %7542 = fmul fast float %7540, %6047
  %7543 = fmul fast float %7540, %6048
  %7544 = fmul fast float %7540, %6058
  %7545 = fadd fast float %7542, %7541
  %7546 = fadd fast float %7543, %7541
  %7547 = fadd fast float %7544, %7541
  %7548 = call float @dx.op.binary.f32(i32 35, float %7546, float %7547)  ; FMax(a,b)
  %7549 = call float @dx.op.binary.f32(i32 35, float %7545, float %7548)  ; FMax(a,b)
  %7550 = fsub fast float 1.000000e+00, %7549
  %7551 = fmul fast float %7536, %7550
  %7552 = fmul fast float %7551, %5469
  %7553 = fmul fast float %7551, %5470
  %7554 = fmul fast float %7551, %5471
  %7555 = fmul fast float %7530, %7438
  %7556 = fadd fast float %7552, %7555
  %7557 = fadd fast float %7553, %7555
  %7558 = fadd fast float %7554, %7555
  %7559 = fmul fast float %7420, %1162
  %7560 = fmul fast float %7559, %7556
  %7561 = fmul fast float %7421, %1162
  %7562 = fmul fast float %7561, %7557
  %7563 = fmul fast float %7422, %1162
  %7564 = fmul fast float %7563, %7558
  %7565 = fadd fast float %7560, %7258
  %7566 = fadd fast float %7562, %7259
  %7567 = fadd fast float %7564, %7260
  %7568 = fmul fast float %7559, %7438
  %7569 = fmul fast float %7568, %7514
  %7570 = fmul fast float %7569, %7499
  %7571 = fmul fast float %7561, %7438
  %7572 = fmul fast float %7571, %7515
  %7573 = fmul fast float %7572, %7499
  %7574 = fmul fast float %7563, %7438
  %7575 = fmul fast float %7574, %7516
  %7576 = fmul fast float %7575, %7499
  %7577 = fadd fast float %7570, %7255
  %7578 = fadd fast float %7573, %7256
  %7579 = fadd fast float %7576, %7257
  br label %7333

; <label>:7580                                    ; preds = %7333
  br label %7581

; <label>:7581                                    ; preds = %7580, %7221
  %7582 = phi float [ %7223, %7221 ], [ %7334, %7580 ]
  %7583 = phi float [ %7224, %7221 ], [ %7335, %7580 ]
  %7584 = phi float [ %7225, %7221 ], [ %7336, %7580 ]
  %7585 = phi float [ %7226, %7221 ], [ %7337, %7580 ]
  %7586 = phi float [ %7227, %7221 ], [ %7338, %7580 ]
  %7587 = phi float [ %7228, %7221 ], [ %7339, %7580 ]
  %7588 = add i32 %7222, 1
  %7589 = icmp ugt i32 %7588, %7218
  br i1 %7589, label %7590, label %7221

; <label>:7590                                    ; preds = %7581
  br label %7591

; <label>:7591                                    ; preds = %7590, %7197, %7187
  %7592 = phi float [ %7188, %7187 ], [ %7188, %7197 ], [ %7582, %7590 ]
  %7593 = phi float [ %7189, %7187 ], [ %7189, %7197 ], [ %7583, %7590 ]
  %7594 = phi float [ %7190, %7187 ], [ %7190, %7197 ], [ %7584, %7590 ]
  %7595 = phi float [ %7191, %7187 ], [ %7191, %7197 ], [ %7585, %7590 ]
  %7596 = phi float [ %7192, %7187 ], [ %7192, %7197 ], [ %7586, %7590 ]
  %7597 = phi float [ %7193, %7187 ], [ %7193, %7197 ], [ %7587, %7590 ]
  %7598 = call float @dx.op.unary.f32(i32 24, float %6050)  ; Sqrt(value)
  %7599 = call float @dx.op.unary.f32(i32 24, float %6051)  ; Sqrt(value)
  %7600 = call float @dx.op.unary.f32(i32 24, float %6052)  ; Sqrt(value)
  %7601 = fmul fast float %7598, %7595
  %7602 = fmul fast float %7599, %7596
  %7603 = extractvalue %dx.types.CBufRet.f32 %6674, 0
  br i1 %401, label %7604, label %7625

; <label>:7604                                    ; preds = %7591
  %7605 = fadd fast float %7597, %4003
  %7606 = fmul fast float %7605, %5324
  %7607 = fsub fast float 1.000000e+00, %5324
  %7608 = call float @dx.op.unary.f32(i32 7, float %7607)  ; Saturate(value)
  %7609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %7610 = extractvalue %dx.types.CBufRet.f32 %7609, 3
  %7611 = fmul fast float %7610, %7608
  %7612 = fadd fast float %7611, %7606
  %7613 = fsub fast float 1.000000e+00, %6060
  %7614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %7615 = extractvalue %dx.types.CBufRet.f32 %7614, 0
  %7616 = fmul fast float %7615, %7613
  %7617 = fsub fast float %7612, %7616
  %7618 = fadd fast float %7602, %7601
  %7619 = fmul fast float %7603, %7618
  %7620 = extractvalue %dx.types.CBufRet.f32 %7609, 1
  %7621 = fsub fast float %7617, %7620
  %7622 = extractvalue %dx.types.CBufRet.f32 %7609, 2
  %7623 = fmul fast float %7621, %7622
  %7624 = call float @dx.op.unary.f32(i32 7, float %7623)  ; Saturate(value)
  br label %7641

; <label>:7625                                    ; preds = %7591
  %7626 = fmul fast float %7600, %7597
  %7627 = fmul fast float %7603, %7601
  %7628 = fmul fast float %7603, %7602
  %7629 = fmul fast float %7626, %7603
  %7630 = add i32 %48, 356
  %7631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %30, i32 %7630, i32 undef)  ; BufferLoad(srv,index,wot)
  %7632 = extractvalue %dx.types.ResRet.i32 %7631, 0
  %7633 = and i32 %7632, 32
  %7634 = icmp eq i32 %7633, 0
  br i1 %7634, label %7641, label %7635

; <label>:7635                                    ; preds = %7625
  %7636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %45, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %7637 = extractvalue %dx.types.CBufRet.f32 %7636, 0
  %7638 = fmul fast float %7637, 0x3FE99999A0000000
  %7639 = fadd fast float %7637, %7627
  %7640 = fadd fast float %7638, %7629
  br label %7641

; <label>:7641                                    ; preds = %7635, %7625, %7604
  %7642 = phi float [ %7619, %7604 ], [ %7639, %7635 ], [ %7627, %7625 ]
  %7643 = phi float [ %7624, %7604 ], [ %7628, %7635 ], [ %7628, %7625 ]
  %7644 = phi float [ 1.000000e+00, %7604 ], [ %7640, %7635 ], [ %7629, %7625 ]
  %7645 = fmul fast float %7603, %7593
  %7646 = fmul fast float %7603, %7594
  %7647 = fadd fast float %7593, %7592
  %7648 = select i1 %401, float %7647, float %7592
  %7649 = fmul float %7648, %7603
  %7650 = select i1 %401, float 0.000000e+00, float %7645
  %7651 = select i1 %401, float 0.000000e+00, float %7646
  %7652 = fmul fast float %7642, %7598
  %7653 = fmul fast float %7643, %7599
  %7654 = fmul fast float %7644, %7600
  %7655 = fadd fast float %7649, %7652
  %7656 = fadd fast float %7650, %7653
  %7657 = fadd fast float %7651, %7654
  %7658 = select i1 %401, float %7643, float %7656
  %7659 = select i1 %401, float %7644, float %7657
  %7660 = call float @dx.op.binary.f32(i32 36, float %7655, float 3.225500e+04)  ; FMin(a,b)
  %7661 = call float @dx.op.binary.f32(i32 36, float %7658, float 3.225500e+04)  ; FMin(a,b)
  %7662 = call float @dx.op.binary.f32(i32 36, float %7659, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %7660)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %7661)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %7662)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!dx.viewIdState = !{!60}
!dx.entryPoints = !{!61}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !50, !53}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
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
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!48 = !{i32 40, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!49 = !{i32 41, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!50 = !{!51, !52}
!51 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!52 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!53 = !{!54, !55, !56, !57, !58, !59}
!54 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!55 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!56 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!57 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!58 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!59 = !{i32 5, %struct.SamplerState* undef, !"", i32 0, i32 5, i32 1, i32 0, null}
!60 = !{[39 x i32] [i32 37, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7]}
!61 = !{void ()* @ps_main, !"ps_main", !62, !4, !86}
!62 = !{!63, !84, null}
!63 = !{!64, !67, !69, !71, !73, !75, !76, !77, !78, !80, !82, !83}
!64 = !{i32 0, !"SV_Position", i8 9, i8 3, !65, i8 4, i32 1, i8 4, i32 0, i8 0, !66}
!65 = !{i32 0}
!66 = !{i32 3, i32 11}
!67 = !{i32 1, !"COLOR", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 1, i8 0, !68}
!68 = !{i32 3, i32 14}
!69 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 2, i8 0, !70}
!70 = !{i32 3, i32 3}
!71 = !{i32 3, !"NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 3, i8 0, !72}
!72 = !{i32 3, i32 7}
!73 = !{i32 4, !"TANGENT", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 4, i8 0, !74}
!74 = !{i32 3, i32 15}
!75 = !{i32 5, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !65, i8 2, i32 1, i8 2, i32 5, i8 0, !70}
!76 = !{i32 6, !"SCEONDARY_NORMAL", i8 9, i8 0, !65, i8 2, i32 1, i8 4, i32 6, i8 0, !74}
!77 = !{i32 7, !"TINT_COLOR", i8 9, i8 0, !65, i8 2, i32 1, i8 3, i32 7, i8 0, !72}
!78 = !{i32 8, !"LOCAL_HEIGHT", i8 9, i8 0, !65, i8 2, i32 1, i8 1, i32 3, i8 3, !79}
!79 = !{i32 3, i32 1}
!80 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !65, i8 1, i32 1, i8 4, i32 8, i8 0, !81}
!81 = !{i32 3, i32 13}
!82 = !{i32 10, !"SV_IsFrontFace", i8 5, i8 13, !65, i8 1, i32 1, i8 1, i32 9, i8 0, !79}
!83 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !65, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!84 = !{!85}
!85 = !{i32 0, !"SV_Target", i8 9, i8 16, !65, i8 0, i32 1, i8 4, i32 0, i8 0, !74}
!86 = !{i32 0, i64 24}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = !{!94, !94, i64 0}
!94 = !{!"float", !95, i64 0}
!95 = !{!"omnipotent char", !96, i64 0}
!96 = !{!"Simple C/C++ TBAA"}
!97 = !{!98}
!98 = distinct !{!98, !99, !"\01?VT_SkirtBlendMaterial@@YA?AUVTMaterialData@@V?$vector@M$02@@0V?$vector@M$01@@MU1@2@Z: %agg.result"}
!99 = distinct !{!99, !"\01?VT_SkirtBlendMaterial@@YA?AUVTMaterialData@@V?$vector@M$02@@0V?$vector@M$01@@MU1@2@Z"}
!100 = distinct !{!100, !"dx.controlflow.hints", i32 1}
!101 = distinct !{!101, !"dx.controlflow.hints", i32 1}
!102 = distinct !{!102, !"dx.controlflow.hints", i32 1}
!103 = distinct !{!103, !"dx.controlflow.hints", i32 1}
!104 = distinct !{!104, !"dx.controlflow.hints", i32 1}
!105 = distinct !{!105, !"dx.controlflow.hints", i32 1}
!106 = distinct !{!106, !"dx.controlflow.hints", i32 1}

