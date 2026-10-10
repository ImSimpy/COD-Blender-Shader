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
; PACKED_TRI_DATA          0   xyzw        7     NONE    uint   x z 
; SV_IsFrontFace           0   x           8    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: ca207b7a0267cfbab176273ff86e2aaf
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
;                                   texture     f32          2d      T3     t65,space2     1
;                                   texture     u32          2d      T4     t64,space2     1
;                                   texture    byte         r/o      T5     t38,space1     1
;                                   texture    byte         r/o      T6     t39,space1     1
;                                   texture    byte         r/o      T7     t40,space1     1
;                                   texture    byte         r/o      T8     t37,space1     1
;                                   texture     f32          2d      T9     t33,space2     1
;                                   texture     f32     2darray     T10     t16,space2     1
;                                   texture     f32          3d     T11     t15,space2     1
;                                   texture     f32          2d     T12     t13,space2     1
;                                   texture     u32          2d     T13     t17,space2     1
;                                   texture     f32          3d     T14     t18,space2     1
;                                   texture     u32     2darray     T15     t11,space2     1
;                                   texture     f32     2darray     T16     t10,space2     1
;                                   texture     f32          2d     T17     t69,space2     1
;                                   texture    byte         r/o     T18     t49,space1     1
;                                   texture    byte         r/o     T19     t50,space1     1
;                                   texture    byte         r/o     T20     t51,space1     1
;                                   texture    byte         r/o     T21     t52,space1     1
;                                   texture     f32          2d     T22     t58,space2     1
;                                   texture     f32          2d     T23     t59,space2     1
;                                   texture     f32          2d     T24     t60,space2     1
;                                   texture    byte         r/o     T25     t45,space1     1
;                                   texture    byte         r/o     T26     t46,space1     1
;                                   texture    byte         r/o     T27     t47,space1     1
;                                   texture    byte         r/o     T28     t48,space1     1
;                                   texture     f32          2d     T29     t57,space2     1
;                                   texture    byte         r/o     T30     t69,space1     1
;                                   texture    byte         r/o     T31     t10,space1     1
;                                   texture    byte         r/o     T32     t68,space1     1
;                                   texture     f32          2d     T33      t0,space2     1
;                                   texture    byte         r/o     T34     t11,space1     1
;                                   texture    byte         r/o     T35     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 33, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 32 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 32 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 38, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 64, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 65, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = icmp ne i32 %40, 0
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = fmul fast float %69, %63
  %71 = fmul fast float %69, %64
  %72 = select i1 %41, float 1.000000e+00, float -1.000000e+00
  %73 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %74 = bitcast float %73 to i32
  %75 = ashr i32 %74, 1
  %76 = sub nsw i32 1597250115, %75
  %77 = bitcast i32 %76 to float
  %78 = fmul fast float %55, %72
  %79 = fmul fast float %78, %77
  %80 = fmul fast float %56, %72
  %81 = fmul fast float %80, %77
  %82 = fmul fast float %57, %72
  %83 = fmul fast float %82, %77
  %84 = fmul fast float %56, %53
  %85 = fmul fast float %57, %52
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %57, %51
  %88 = fmul fast float %55, %53
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %55, %52
  %91 = fmul fast float %56, %51
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %86, %54
  %94 = fmul fast float %89, %54
  %95 = fmul fast float %92, %54
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %99 = fmul fast float %70, 2.000000e+00
  %100 = fmul fast float %99, %97
  %101 = fmul fast float %71, 2.000000e+00
  %102 = fmul fast float %101, %98
  %103 = fsub fast float 1.000000e+00, %100
  %104 = fsub fast float 1.000000e+00, %102
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %103, %106
  %110 = fmul fast float %103, %107
  %111 = fmul fast float %103, %108
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fmul fast float %104, %113
  %117 = fmul fast float %104, %114
  %118 = fmul fast float %104, %115
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 1
  %122 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %123 = fadd fast float %116, %120
  %124 = fadd fast float %123, %109
  %125 = fadd fast float %117, %121
  %126 = fadd fast float %125, %110
  %127 = fadd fast float %118, %122
  %128 = fadd fast float %127, %111
  %129 = fmul fast float %124, %65
  %130 = fmul fast float %126, %65
  %131 = fmul fast float %128, %65
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 3
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 130)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.f32 %138, 3
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 3
  br i1 %135, label %142, label %327, !dx.controlflow.hints !79

; <label>:142                                     ; preds = %0
  %143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 131)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.i32 %143, 2
  %145 = uitofp i32 %144 to float
  %146 = extractvalue %dx.types.CBufRet.i32 %132, 0
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = fadd fast float %148, %129
  %151 = fadd fast float %149, %130
  %152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 129)  ; CBufferLoadLegacy(handle,regIndex)
  %153 = extractvalue %dx.types.CBufRet.f32 %152, 0
  %154 = extractvalue %dx.types.CBufRet.f32 %152, 1
  %155 = fsub fast float %150, %153
  %156 = fsub fast float %151, %154
  %157 = fptoui float %145 to i32
  %158 = uitofp i32 %146 to float
  %159 = fptosi float %158 to i32
  %160 = fmul fast float %155, 0x3F3A027520000000
  %161 = fmul fast float %156, 0x3F3A027520000000
  %162 = add nsw i32 %159, -1
  %163 = fptosi float %161 to i32
  %164 = call i32 @dx.op.binary.i32(i32 37, i32 %163, i32 0)  ; IMax(a,b)
  %165 = call i32 @dx.op.binary.i32(i32 38, i32 %164, i32 %162)  ; IMin(a,b)
  %166 = fptosi float %160 to i32
  %167 = call i32 @dx.op.binary.i32(i32 37, i32 %166, i32 0)  ; IMax(a,b)
  %168 = call i32 @dx.op.binary.i32(i32 38, i32 %167, i32 %162)  ; IMin(a,b)
  %169 = mul nsw i32 %165, %159
  %170 = add nsw i32 %168, %169
  %171 = sdiv i32 %170, 4
  %172 = shl nsw i32 %171, 2
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %29, i32 %172, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = srem i32 %170, 4
  %176 = shl nsw i32 %175, 3
  %177 = and i32 %176, 24
  %178 = lshr i32 %174, %177
  %179 = and i32 %178, 255
  %180 = mul nuw nsw i32 %179, 12
  %181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %30, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.f32 %181, 0
  %183 = extractvalue %dx.types.ResRet.f32 %181, 1
  %184 = extractvalue %dx.types.ResRet.f32 %181, 2
  %185 = fsub fast float %155, %182
  %186 = fsub fast float %156, %183
  %187 = fdiv fast float %185, %184
  %188 = fdiv fast float %186, %184
  %189 = fmul fast float %141, 2.500000e+01
  %190 = extractvalue %dx.types.CBufRet.i32 %143, 1
  %191 = uitofp i32 %190 to float
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 1
  %194 = extractvalue %dx.types.CBufRet.i32 %143, 0
  %195 = mul i32 %194, %193
  %196 = uitofp i32 %195 to float
  %197 = uitofp i32 %157 to float
  %198 = shl nuw nsw i32 %179, 3
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = extractvalue %dx.types.ResRet.i32 %199, 1
  %202 = lshr i32 %201, 16
  %203 = and i32 %202, 1
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %210

; <label>:205                                     ; preds = %142
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = extractvalue %dx.types.ResRet.i32 %206, 1
  %209 = lshr i32 %208, 16
  br label %210

; <label>:210                                     ; preds = %205, %142
  %211 = phi i32 [ 0, %205 ], [ %179, %142 ]
  %212 = phi i32 [ %207, %205 ], [ %200, %142 ]
  %213 = phi i32 [ %208, %205 ], [ %201, %142 ]
  %214 = phi i32 [ %209, %205 ], [ %202, %142 ]
  %215 = and i32 %213, 65535
  %216 = lshr i32 %212, 16
  %217 = and i32 %212, 65535
  %218 = lshr i32 %214, 1
  %219 = uitofp i32 %218 to float
  %220 = icmp eq i32 %211, 0
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 127)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 2
  %223 = bitcast float %222 to i32
  %224 = fdiv fast float %155, %141
  %225 = fdiv fast float %156, %141
  %226 = fptoui float %197 to i32
  %227 = fmul fast float %224, %189
  %228 = fmul fast float %225, %189
  %229 = extractvalue %dx.types.CBufRet.i32 %192, 3
  %230 = and i32 %229, 2
  %231 = icmp ne i32 %230, 0
  %232 = select i1 %231, float 5.000000e-01, float 1.000000e+00
  %233 = call float @dx.op.unary.f32(i32 83, float %227)  ; DerivCoarseX(value)
  %234 = call float @dx.op.unary.f32(i32 83, float %228)  ; DerivCoarseX(value)
  %235 = fmul fast float %232, %233
  %236 = fmul fast float %232, %234
  %237 = call float @dx.op.unary.f32(i32 84, float %227)  ; DerivCoarseY(value)
  %238 = call float @dx.op.unary.f32(i32 84, float %228)  ; DerivCoarseY(value)
  %239 = fmul fast float %232, %237
  %240 = fmul fast float %238, %232
  %241 = call float @dx.op.dot2.f32(i32 54, float %235, float %236, float %235, float %236)  ; Dot2(ax,ay,bx,by)
  %242 = call float @dx.op.dot2.f32(i32 54, float %239, float %240, float %239, float %240)  ; Dot2(ax,ay,bx,by)
  %243 = call float @dx.op.binary.f32(i32 35, float %241, float %242)  ; FMax(a,b)
  %244 = call float @dx.op.unary.f32(i32 23, float %243)  ; Log(value)
  %245 = fmul fast float %244, 5.000000e-01
  %246 = call float @dx.op.binary.f32(i32 36, float %241, float %242)  ; FMin(a,b)
  %247 = call float @dx.op.unary.f32(i32 23, float %246)  ; Log(value)
  %248 = uitofp i32 %226 to float
  %249 = fsub fast float %244, %247
  %250 = fmul fast float %249, 5.000000e-01
  %251 = call float @dx.op.binary.f32(i32 36, float %250, float %248)  ; FMin(a,b)
  %252 = fmul fast float %251, %139
  %253 = fsub fast float %245, %252
  %254 = call float @dx.op.binary.f32(i32 35, float %253, float 0.000000e+00)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 36, float %254, float 2.400000e+01)  ; FMin(a,b)
  %256 = fadd fast float %255, %137
  %257 = select i1 %220, float %224, float %187
  %258 = select i1 %220, float %225, float %188
  %259 = call float @dx.op.unary.f32(i32 27, float %256)  ; Round_ni(value)
  %260 = fptosi float %259 to i32
  %261 = sub nsw i32 8, %215
  %262 = select i1 %220, i32 %223, i32 %261
  %263 = sub nsw i32 %260, %262
  %264 = call i32 @dx.op.binary.i32(i32 37, i32 %263, i32 0)  ; IMax(a,b)
  %265 = call i32 @dx.op.binary.i32(i32 38, i32 %264, i32 %215)  ; IMin(a,b)
  %266 = fptoui float %219 to i32
  %267 = and i32 %265, 31
  %268 = lshr i32 %266, %267
  %269 = add i32 %268, -1
  %270 = uitofp i32 %269 to float
  %271 = uitofp i32 %268 to float
  %272 = fmul fast float %271, %257
  %273 = fmul fast float %271, %258
  %274 = call float @dx.op.unary.f32(i32 27, float %272)  ; Round_ni(value)
  %275 = call float @dx.op.unary.f32(i32 27, float %273)  ; Round_ni(value)
  %276 = call float @dx.op.binary.f32(i32 35, float %274, float 0.000000e+00)  ; FMax(a,b)
  %277 = call float @dx.op.binary.f32(i32 35, float %275, float 0.000000e+00)  ; FMax(a,b)
  %278 = call float @dx.op.binary.f32(i32 36, float %276, float %270)  ; FMin(a,b)
  %279 = call float @dx.op.binary.f32(i32 36, float %277, float %270)  ; FMin(a,b)
  %280 = fptoui float %278 to i32
  %281 = fptoui float %279 to i32
  %282 = lshr i32 %217, %267
  %283 = lshr i32 %216, %267
  %284 = add i32 %280, %282
  %285 = add i32 %281, %283
  %286 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %32, i32 %265, i32 %284, i32 %285, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 255
  %289 = uitofp i32 %288 to float
  %290 = lshr i32 %287, 8
  %291 = and i32 %290, 255
  %292 = uitofp i32 %291 to float
  %293 = lshr i32 %287, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fptoui float %295 to i32
  %297 = lshr i32 %287, 24
  %298 = uitofp i32 %297 to float
  %299 = fadd fast float %298, 1.000000e+00
  %300 = fptoui float %299 to i32
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, %257
  %303 = fmul fast float %301, %258
  %304 = add i32 %300, -1
  %305 = uitofp i32 %304 to float
  %306 = call float @dx.op.unary.f32(i32 27, float %302)  ; Round_ni(value)
  %307 = call float @dx.op.unary.f32(i32 27, float %303)  ; Round_ni(value)
  %308 = call float @dx.op.binary.f32(i32 35, float %306, float 0.000000e+00)  ; FMax(a,b)
  %309 = call float @dx.op.binary.f32(i32 35, float %307, float 0.000000e+00)  ; FMax(a,b)
  %310 = call float @dx.op.binary.f32(i32 36, float %308, float %305)  ; FMin(a,b)
  %311 = call float @dx.op.binary.f32(i32 36, float %309, float %305)  ; FMin(a,b)
  %312 = fsub fast float %302, %310
  %313 = fsub fast float %303, %311
  %314 = fadd fast float %191, 8.000000e+00
  %315 = fmul fast float %289, %314
  %316 = fmul fast float %292, %314
  %317 = fmul fast float %312, %191
  %318 = fmul fast float %313, %191
  %319 = fadd fast float %315, 4.500000e+00
  %320 = fadd fast float %319, %317
  %321 = fadd fast float %316, 4.500000e+00
  %322 = fadd fast float %321, %318
  %323 = fdiv fast float %320, %196
  %324 = fdiv fast float %322, %196
  %325 = uitofp i32 %296 to float
  %326 = fsub fast float %256, %325
  br label %327

; <label>:327                                     ; preds = %210, %0
  %328 = phi float [ %326, %210 ], [ 0.000000e+00, %0 ]
  %329 = phi float [ %323, %210 ], [ 0.000000e+00, %0 ]
  %330 = phi float [ %324, %210 ], [ 0.000000e+00, %0 ]
  %331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %332 = extractvalue %dx.types.CBufRet.f32 %331, 2
  %333 = extractvalue %dx.types.CBufRet.f32 %331, 3
  %334 = fmul fast float %332, %70
  %335 = fmul fast float %333, %71
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 114688
  %339 = icmp ne i32 %338, 0
  %340 = select i1 %339, float %334, float 0.000000e+00
  %341 = select i1 %339, float %335, float 0.000000e+00
  %342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %37, float %340, float %341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %343 = extractvalue %dx.types.ResRet.f32 %342, 0
  %344 = fmul fast float %343, 2.550000e+02
  %345 = fptoui float %344 to i32
  %346 = select i1 %339, i32 %345, i32 0
  %347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.i32 %348, 3
  %350 = and i32 %349, 3
  %351 = icmp ne i32 %350, 0
  %352 = and i32 %349, 4
  %353 = icmp ne i32 %352, 0
  %354 = and i1 %351, %353
  br i1 %354, label %355, label %366

; <label>:355                                     ; preds = %327
  %356 = extractvalue %dx.types.CBufRet.f32 %347, 3
  %357 = fmul fast float %356, %71
  %358 = extractvalue %dx.types.CBufRet.f32 %347, 2
  %359 = fmul fast float %358, %70
  %360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %36, float %359, float %357, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = fsub fast float 1.000000e+00, %361
  %363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %364 = extractvalue %dx.types.CBufRet.f32 %363, 0
  %365 = fcmp fast olt float %362, %364
  br label %369

; <label>:366                                     ; preds = %327
  %367 = icmp eq i32 %352, 0
  %368 = and i1 %351, %367
  br label %369

; <label>:369                                     ; preds = %366, %355
  %370 = phi i1 [ %365, %355 ], [ %368, %366 ]
  %371 = add i32 %42, 156
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = shl i32 %373, 4
  %375 = and i32 %374, 32752
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = lshr i32 %373, 7
  %378 = and i32 %377, 32752
  %379 = call float @dx.op.legacyF16ToF32(i32 131, i32 %378)  ; LegacyF16ToF32(value)
  %380 = lshr i32 %373, 22
  %381 = shl nuw nsw i32 %380, 5
  %382 = call float @dx.op.legacyF16ToF32(i32 131, i32 %381)  ; LegacyF16ToF32(value)
  %383 = add i32 %42, 216
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 255
  %387 = uitofp i32 %386 to float
  %388 = fmul fast float %387, 0x3F70101020000000
  %389 = lshr i32 %385, 8
  %390 = and i32 %389, 255
  %391 = uitofp i32 %390 to float
  %392 = fmul fast float %391, 0x3F70101020000000
  %393 = lshr i32 %385, 16
  %394 = and i32 %393, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = add i32 %42, 36
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = lshr i32 %399, 16
  %403 = call float @dx.op.legacyF16ToF32(i32 131, i32 %402)  ; LegacyF16ToF32(value)
  %404 = add i32 %42, 288
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 65535
  %408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %407)  ; LegacyF16ToF32(value)
  %409 = lshr i32 %406, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = fmul fast float %408, 0x3F50624DE0000000
  %412 = fmul fast float %410, 0x3F50624DE0000000
  %413 = add i32 %42, 172
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = shl i32 %415, 4
  %417 = and i32 %416, 32752
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %415, 7
  %420 = and i32 %419, 32752
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = lshr i32 %415, 22
  %423 = shl nuw nsw i32 %422, 5
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = add i32 %42, 232
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 255
  %429 = uitofp i32 %428 to float
  %430 = fmul fast float %429, 0x3F70101020000000
  %431 = lshr i32 %427, 8
  %432 = and i32 %431, 255
  %433 = uitofp i32 %432 to float
  %434 = fmul fast float %433, 0x3F70101020000000
  %435 = lshr i32 %427, 16
  %436 = and i32 %435, 255
  %437 = uitofp i32 %436 to float
  %438 = fmul fast float %437, 0x3F70101020000000
  %439 = add i32 %42, 52
  %440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %439, i32 undef)  ; BufferLoad(srv,index,wot)
  %441 = extractvalue %dx.types.ResRet.i32 %440, 0
  %442 = and i32 %441, 65535
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %441, 16
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = add i32 %42, 304
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = and i32 %448, 65535
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = lshr i32 %448, 16
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = fmul fast float %450, 0x3F50624DE0000000
  %454 = fmul fast float %452, 0x3F50624DE0000000
  %455 = add i32 %42, 188
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = shl i32 %457, 4
  %459 = and i32 %458, 32752
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = lshr i32 %457, 7
  %462 = and i32 %461, 32752
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = lshr i32 %457, 22
  %465 = shl nuw nsw i32 %464, 5
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = add i32 %42, 248
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = and i32 %469, 255
  %471 = uitofp i32 %470 to float
  %472 = fmul fast float %471, 0x3F70101020000000
  %473 = lshr i32 %469, 8
  %474 = and i32 %473, 255
  %475 = uitofp i32 %474 to float
  %476 = fmul fast float %475, 0x3F70101020000000
  %477 = lshr i32 %469, 16
  %478 = and i32 %477, 255
  %479 = uitofp i32 %478 to float
  %480 = fmul fast float %479, 0x3F70101020000000
  %481 = add i32 %42, 68
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = and i32 %483, 65535
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = lshr i32 %483, 16
  %487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %486)  ; LegacyF16ToF32(value)
  %488 = add i32 %42, 320
  %489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %488, i32 undef)  ; BufferLoad(srv,index,wot)
  %490 = extractvalue %dx.types.ResRet.i32 %489, 0
  %491 = and i32 %490, 65535
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = lshr i32 %490, 16
  %494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %493)  ; LegacyF16ToF32(value)
  %495 = fmul fast float %492, 0x3F50624DE0000000
  %496 = fmul fast float %494, 0x3F50624DE0000000
  %497 = add i32 %42, 204
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = shl i32 %499, 4
  %501 = and i32 %500, 32752
  %502 = call float @dx.op.legacyF16ToF32(i32 131, i32 %501)  ; LegacyF16ToF32(value)
  %503 = lshr i32 %499, 7
  %504 = and i32 %503, 32752
  %505 = call float @dx.op.legacyF16ToF32(i32 131, i32 %504)  ; LegacyF16ToF32(value)
  %506 = lshr i32 %499, 22
  %507 = shl nuw nsw i32 %506, 5
  %508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %507)  ; LegacyF16ToF32(value)
  %509 = add i32 %42, 264
  %510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %511 = extractvalue %dx.types.ResRet.i32 %510, 0
  %512 = and i32 %511, 255
  %513 = uitofp i32 %512 to float
  %514 = fmul fast float %513, 0x3F70101020000000
  %515 = lshr i32 %511, 8
  %516 = and i32 %515, 255
  %517 = uitofp i32 %516 to float
  %518 = fmul fast float %517, 0x3F70101020000000
  %519 = lshr i32 %511, 16
  %520 = and i32 %519, 255
  %521 = uitofp i32 %520 to float
  %522 = fmul fast float %521, 0x3F70101020000000
  %523 = add i32 %42, 84
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = and i32 %525, 65535
  %527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %526)  ; LegacyF16ToF32(value)
  %528 = lshr i32 %525, 16
  %529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %528)  ; LegacyF16ToF32(value)
  %530 = add i32 %42, 336
  %531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %530, i32 undef)  ; BufferLoad(srv,index,wot)
  %532 = extractvalue %dx.types.ResRet.i32 %531, 0
  %533 = and i32 %532, 65535
  %534 = call float @dx.op.legacyF16ToF32(i32 131, i32 %533)  ; LegacyF16ToF32(value)
  %535 = lshr i32 %532, 16
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = fmul fast float %534, 0x3F50624DE0000000
  %538 = fmul fast float %536, 0x3F50624DE0000000
  %539 = add i32 %42, 348
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 32
  %543 = icmp eq i32 %542, 0
  %544 = and i32 %541, 64
  %545 = icmp eq i32 %544, 0
  %546 = and i32 %541, 128
  %547 = icmp eq i32 %546, 0
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 2
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %565, label %552

; <label>:552                                     ; preds = %369
  %553 = add i32 %42, 552
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %553, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = add i32 %555, 0
  %557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %558 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %557, %dx.types.Handle %67, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %559 = extractvalue %dx.types.ResRet.f32 %558, 0
  %560 = extractvalue %dx.types.ResRet.f32 %558, 1
  %561 = extractvalue %dx.types.ResRet.f32 %558, 2
  %562 = fmul fast float %559, %60
  %563 = fmul fast float %560, %61
  %564 = fmul fast float %561, %62
  br label %565

; <label>:565                                     ; preds = %552, %369
  %566 = phi float [ %62, %369 ], [ %564, %552 ]
  %567 = phi float [ %61, %369 ], [ %563, %552 ]
  %568 = phi float [ %60, %369 ], [ %562, %552 ]
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 2
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %592, label %573

; <label>:573                                     ; preds = %565
  %574 = add i32 %42, 44
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 1
  %578 = icmp ne i32 %577, 0
  %579 = select i1 %578, float %568, float 1.000000e+00
  %580 = add i32 %42, 60
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 1
  %584 = icmp ne i32 %583, 0
  %585 = select i1 %584, float %567, float 1.000000e+00
  %586 = add i32 %42, 76
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 1
  %590 = icmp ne i32 %589, 0
  %591 = select i1 %590, float %566, float 1.000000e+00
  br label %592

; <label>:592                                     ; preds = %573, %565
  %593 = phi float [ %566, %565 ], [ %591, %573 ]
  %594 = phi float [ %567, %565 ], [ %585, %573 ]
  %595 = phi float [ %568, %565 ], [ %579, %573 ]
  %596 = lshr i32 %570, 20
  %597 = and i32 %596, 3
  %598 = add nuw nsw i32 %597, 1
  %599 = add i32 %42, 24
  %600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.i32 %600, 0
  %602 = add i32 %42, 28
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = or i32 %604, %601
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %1118, label %607

; <label>:607                                     ; preds = %592
  %608 = and i32 %601, 262144
  %609 = icmp ne i32 %608, 0
  %610 = select i1 %609, float %45, float 1.000000e+00
  %611 = select i1 %609, float %46, float 0.000000e+00
  %612 = select i1 %609, float %47, float 0.000000e+00
  %613 = select i1 %609, float %48, float 1.000000e+00
  %614 = select i1 %609, float %49, float %58
  %615 = select i1 %609, float %50, float %59
  %616 = add i32 %42, 284
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = lshr i32 %618, 16
  %620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %619)  ; LegacyF16ToF32(value)
  %621 = fmul fast float %620, 0x3F50624DE0000000
  %622 = add i32 %42, 88
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = lshr i32 %624, 16
  %626 = and i32 %625, 255
  %627 = lshr i32 %624, 24
  %628 = add i32 %42, 292
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = and i32 %630, 65535
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = lshr i32 %630, 16
  %634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %633)  ; LegacyF16ToF32(value)
  %635 = add i32 %42, 32
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %635, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = lshr i32 %637, 22
  %639 = shl nuw nsw i32 %638, 5
  %640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %639)  ; LegacyF16ToF32(value)
  %641 = shl i32 %637, 4
  %642 = and i32 %641, 32752
  %643 = call float @dx.op.legacyF16ToF32(i32 131, i32 %642)  ; LegacyF16ToF32(value)
  %644 = lshr i32 %637, 7
  %645 = and i32 %644, 32752
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %648 = extractvalue %dx.types.CBufRet.f32 %647, 3
  %649 = fmul fast float %648, 1.000000e+03
  %650 = fmul fast float %411, %649
  %651 = call float @dx.op.unary.f32(i32 22, float %650)  ; Frc(value)
  %652 = fadd fast float %651, %401
  %653 = fmul fast float %412, %649
  %654 = call float @dx.op.unary.f32(i32 22, float %653)  ; Frc(value)
  %655 = fadd fast float %654, %403
  %656 = fmul fast float %621, %649
  %657 = call float @dx.op.unary.f32(i32 22, float %656)  ; Frc(value)
  %658 = fmul fast float %657, 0x401921FB60000000
  %659 = fadd fast float %658, %640
  %660 = call float @dx.op.unary.f32(i32 13, float %659)  ; Sin(value)
  %661 = call float @dx.op.unary.f32(i32 12, float %659)  ; Cos(value)
  %662 = fsub fast float -0.000000e+00, %660
  %663 = fadd fast float %614, -5.000000e-01
  %664 = fadd fast float %615, -5.000000e-01
  %665 = fmul fast float %632, %663
  %666 = fmul fast float %634, %664
  %667 = fadd fast float %665, 5.000000e-01
  %668 = fadd fast float %666, 5.000000e-01
  %669 = fmul fast float %643, %667
  %670 = fmul fast float %646, %668
  %671 = fmul fast float %661, %669
  %672 = call float @dx.op.tertiary.f32(i32 46, float %662, float %670, float %671)  ; FMad(a,b,c)
  %673 = fmul fast float %660, %669
  %674 = call float @dx.op.tertiary.f32(i32 46, float %661, float %670, float %673)  ; FMad(a,b,c)
  %675 = fadd fast float %652, %672
  %676 = fadd fast float %655, %674
  %677 = icmp ugt i32 %626, 1
  %678 = icmp ugt i32 %624, 33554431
  %679 = or i1 %678, %677
  br i1 %679, label %680, label %705

; <label>:680                                     ; preds = %607
  %681 = add i32 %42, 228
  %682 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %681, i32 undef)  ; BufferLoad(srv,index,wot)
  %683 = extractvalue %dx.types.ResRet.i32 %682, 0
  %684 = lshr i32 %683, 16
  %685 = call float @dx.op.legacyF16ToF32(i32 131, i32 %684)  ; LegacyF16ToF32(value)
  %686 = fmul fast float %648, %685
  %687 = call float @dx.op.unary.f32(i32 22, float %686)  ; Frc(value)
  %688 = mul nuw nsw i32 %626, %627
  %689 = uitofp i32 %688 to float
  %690 = fmul fast float %687, %689
  %691 = call float @dx.op.unary.f32(i32 27, float %690)  ; Round_ni(value)
  %692 = fptoui float %691 to i32
  %693 = urem i32 %692, %626
  %694 = udiv i32 %692, %627
  %695 = call float @dx.op.unary.f32(i32 22, float %675)  ; Frc(value)
  %696 = call float @dx.op.unary.f32(i32 22, float %676)  ; Frc(value)
  %697 = uitofp i32 %693 to float
  %698 = uitofp i32 %694 to float
  %699 = fadd fast float %695, %697
  %700 = fadd fast float %696, %698
  %701 = uitofp i32 %626 to float
  %702 = uitofp i32 %627 to float
  %703 = fdiv fast float %699, %701
  %704 = fdiv fast float %700, %702
  br label %705

; <label>:705                                     ; preds = %680, %607
  %706 = phi float [ %703, %680 ], [ %675, %607 ]
  %707 = phi float [ %704, %680 ], [ %676, %607 ]
  %708 = and i32 %601, 16
  %709 = icmp eq i32 %708, 0
  br i1 %709, label %906, label %710

; <label>:710                                     ; preds = %705
  %711 = add i32 %42, 440
  %712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %711, i32 undef)  ; BufferLoad(srv,index,wot)
  %713 = extractvalue %dx.types.ResRet.i32 %712, 0
  %714 = add i32 %713, 0
  %715 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %714, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %716 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %715, %dx.types.Handle %66, float %706, float %707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %717 = extractvalue %dx.types.ResRet.f32 %716, 0
  %718 = extractvalue %dx.types.ResRet.f32 %716, 1
  %719 = extractvalue %dx.types.ResRet.f32 %716, 2
  %720 = extractvalue %dx.types.ResRet.f32 %716, 3
  %721 = and i32 %624, 255
  %722 = uitofp i32 %721 to float
  %723 = lshr i32 %624, 8
  %724 = and i32 %723, 255
  %725 = uitofp i32 %724 to float
  %726 = fmul fast float %720, %722
  %727 = fadd fast float %726, %725
  %728 = fmul fast float %727, 0x3F70101000000000
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = and i32 %730, 512
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %741, label %733

; <label>:733                                     ; preds = %710
  %734 = add i32 %42, 520
  %735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %734, i32 undef)  ; BufferLoad(srv,index,wot)
  %736 = extractvalue %dx.types.ResRet.i32 %735, 0
  %737 = add i32 %736, 0
  %738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %738, %dx.types.Handle %67, float %706, float %707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %740 = extractvalue %dx.types.ResRet.f32 %739, 0
  br label %741

; <label>:741                                     ; preds = %733, %710
  %742 = phi float [ %740, %733 ], [ 1.000000e+00, %710 ]
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 33554432
  %746 = icmp eq i32 %745, 0
  br i1 %746, label %853, label %747

; <label>:747                                     ; preds = %741
  %748 = add i32 %42, 224
  %749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %748, i32 undef)  ; BufferLoad(srv,index,wot)
  %750 = extractvalue %dx.types.ResRet.i32 %749, 0
  %751 = and i32 %750, 65535
  %752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %751)  ; LegacyF16ToF32(value)
  %753 = lshr i32 %750, 16
  %754 = call float @dx.op.legacyF16ToF32(i32 131, i32 %753)  ; LegacyF16ToF32(value)
  %755 = add i32 %42, 228
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = and i32 %757, 65535
  %759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %758)  ; LegacyF16ToF32(value)
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = lshr i32 %761, 24
  %763 = uitofp i32 %762 to float
  %764 = fmul fast float %763, 0x3F70101020000000
  %765 = and i32 %761, 255
  %766 = uitofp i32 %765 to float
  %767 = fmul fast float %766, 0x3F70101020000000
  %768 = lshr i32 %761, 8
  %769 = and i32 %768, 255
  %770 = uitofp i32 %769 to float
  %771 = fmul fast float %770, 0x3F70101020000000
  %772 = lshr i32 %761, 16
  %773 = and i32 %772, 255
  %774 = uitofp i32 %773 to float
  %775 = fmul fast float %774, 0x3F70101020000000
  %776 = add i32 %42, 220
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = lshr i32 %778, 24
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101020000000
  %782 = and i32 %778, 255
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3F70101020000000
  %785 = lshr i32 %778, 8
  %786 = and i32 %785, 255
  %787 = uitofp i32 %786 to float
  %788 = fmul fast float %787, 0x3F70101020000000
  %789 = lshr i32 %778, 16
  %790 = and i32 %789, 255
  %791 = uitofp i32 %790 to float
  %792 = fmul fast float %791, 0x3F70101020000000
  %793 = bitcast float %717 to i32
  %794 = ashr i32 %793, 1
  %795 = sub nsw i32 1597463174, %794
  %796 = bitcast i32 %795 to float
  %797 = fmul fast float %717, 5.000000e-01
  %798 = fmul fast float %796, %796
  %799 = fmul fast float %798, %797
  %800 = fsub fast float 1.500000e+00, %799
  %801 = fmul fast float %796, %717
  %802 = fmul fast float %801, %800
  %803 = bitcast float %718 to i32
  %804 = ashr i32 %803, 1
  %805 = sub nsw i32 1597463174, %804
  %806 = bitcast i32 %805 to float
  %807 = fmul fast float %718, 5.000000e-01
  %808 = fmul fast float %806, %806
  %809 = fmul fast float %808, %807
  %810 = fsub fast float 1.500000e+00, %809
  %811 = fmul fast float %806, %718
  %812 = fmul fast float %811, %810
  %813 = bitcast float %719 to i32
  %814 = ashr i32 %813, 1
  %815 = sub nsw i32 1597463174, %814
  %816 = bitcast i32 %815 to float
  %817 = fmul fast float %719, 5.000000e-01
  %818 = fmul fast float %816, %816
  %819 = fmul fast float %818, %817
  %820 = fsub fast float 1.500000e+00, %819
  %821 = fmul fast float %816, %719
  %822 = fmul fast float %821, %820
  %823 = fsub fast float %802, %784
  %824 = fsub fast float %812, %788
  %825 = fsub fast float %822, %792
  %826 = fmul fast float %823, %752
  %827 = fmul fast float %824, %754
  %828 = fmul fast float %825, %759
  %829 = fadd fast float %826, %767
  %830 = fadd fast float %827, %771
  %831 = fadd fast float %828, %775
  %832 = call float @dx.op.unary.f32(i32 7, float %829)  ; Saturate(value)
  %833 = call float @dx.op.unary.f32(i32 7, float %830)  ; Saturate(value)
  %834 = call float @dx.op.unary.f32(i32 7, float %831)  ; Saturate(value)
  %835 = fmul fast float %832, %832
  %836 = fmul fast float %833, %833
  %837 = fmul fast float %834, %834
  %838 = fsub fast float %835, %717
  %839 = fsub fast float %836, %718
  %840 = fsub fast float %837, %719
  %841 = fmul fast float %838, %742
  %842 = fmul fast float %839, %742
  %843 = fmul fast float %840, %742
  %844 = fadd fast float %841, %717
  %845 = fadd fast float %842, %718
  %846 = fadd fast float %843, %719
  %847 = fadd fast float %764, %728
  %848 = fsub fast float %847, %781
  %849 = call float @dx.op.unary.f32(i32 7, float %848)  ; Saturate(value)
  %850 = fsub fast float %849, %728
  %851 = fmul fast float %850, %742
  %852 = fadd fast float %851, %728
  br label %906

; <label>:853                                     ; preds = %741
  %854 = and i32 %744, 134217728
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %890, label %856

; <label>:856                                     ; preds = %853
  %857 = call float @dx.op.unary.f32(i32 24, float %388)  ; Sqrt(value)
  %858 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %859 = call float @dx.op.unary.f32(i32 24, float %396)  ; Sqrt(value)
  %860 = fadd fast float %857, -5.000000e-01
  %861 = fadd fast float %858, -5.000000e-01
  %862 = fadd fast float %859, -5.000000e-01
  %863 = fmul fast float %860, %742
  %864 = fmul fast float %861, %742
  %865 = fmul fast float %862, %742
  %866 = fadd fast float %863, 5.000000e-01
  %867 = fadd fast float %864, 5.000000e-01
  %868 = fadd fast float %865, 5.000000e-01
  %869 = call float @dx.op.unary.f32(i32 24, float %717)  ; Sqrt(value)
  %870 = call float @dx.op.unary.f32(i32 24, float %718)  ; Sqrt(value)
  %871 = call float @dx.op.unary.f32(i32 24, float %719)  ; Sqrt(value)
  %872 = fmul fast float %866, 2.000000e+00
  %873 = fsub fast float 1.000000e+00, %872
  %874 = fmul fast float %873, %869
  %875 = fadd fast float %874, %872
  %876 = fmul fast float %875, %869
  %877 = fmul fast float %867, 2.000000e+00
  %878 = fsub fast float 1.000000e+00, %877
  %879 = fmul fast float %878, %870
  %880 = fadd fast float %879, %877
  %881 = fmul fast float %880, %870
  %882 = fmul fast float %868, 2.000000e+00
  %883 = fsub fast float 1.000000e+00, %882
  %884 = fmul fast float %883, %871
  %885 = fadd fast float %884, %882
  %886 = fmul fast float %885, %871
  %887 = fmul fast float %876, %876
  %888 = fmul fast float %881, %881
  %889 = fmul fast float %886, %886
  br label %906

; <label>:890                                     ; preds = %853
  %891 = fmul fast float %388, %388
  %892 = fmul fast float %392, %392
  %893 = fmul fast float %396, %396
  %894 = fadd fast float %891, -1.000000e+00
  %895 = fadd fast float %892, -1.000000e+00
  %896 = fadd fast float %893, -1.000000e+00
  %897 = fmul fast float %742, %894
  %898 = fmul fast float %742, %895
  %899 = fmul fast float %742, %896
  %900 = fadd fast float %897, 1.000000e+00
  %901 = fadd fast float %898, 1.000000e+00
  %902 = fadd fast float %899, 1.000000e+00
  %903 = fmul fast float %900, %717
  %904 = fmul fast float %901, %718
  %905 = fmul fast float %902, %719
  br label %906

; <label>:906                                     ; preds = %890, %856, %747, %705
  %907 = phi float [ %852, %747 ], [ %728, %856 ], [ %728, %890 ], [ 0x3FA23C0BE0000000, %705 ]
  %908 = phi float [ %844, %747 ], [ %887, %856 ], [ %903, %890 ], [ 1.000000e+00, %705 ]
  %909 = phi float [ %845, %747 ], [ %888, %856 ], [ %904, %890 ], [ 1.000000e+00, %705 ]
  %910 = phi float [ %846, %747 ], [ %889, %856 ], [ %905, %890 ], [ 1.000000e+00, %705 ]
  %911 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.i32 %911, 1
  %913 = and i32 %912, 1
  %914 = icmp ne i32 %913, 0
  %915 = add i32 %42, 356
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %915, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 32
  %919 = icmp ne i32 %918, 0
  %920 = and i1 %914, %919
  %921 = select i1 %920, float 1.000000e+00, float %908
  %922 = select i1 %920, float 0x3FD3333340000000, float %909
  %923 = select i1 %920, float 0x3FD3333340000000, float %910
  %924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %925 = extractvalue %dx.types.ResRet.i32 %924, 0
  %926 = and i32 %925, 32
  %927 = icmp eq i32 %926, 0
  br i1 %927, label %1000, label %928

; <label>:928                                     ; preds = %906
  %929 = add i32 %42, 92
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = add i32 %42, 456
  %933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %932, i32 undef)  ; BufferLoad(srv,index,wot)
  %934 = extractvalue %dx.types.ResRet.i32 %933, 0
  %935 = add i32 %934, 0
  %936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %936, %dx.types.Handle %66, float %706, float %707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %938 = extractvalue %dx.types.ResRet.f32 %937, 0
  %939 = extractvalue %dx.types.ResRet.f32 %937, 1
  %940 = extractvalue %dx.types.ResRet.f32 %937, 2
  %941 = extractvalue %dx.types.ResRet.f32 %937, 3
  %942 = and i32 %931, 255
  %943 = uitofp i32 %942 to float
  %944 = lshr i32 %931, 8
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = lshr i32 %931, 16
  %948 = and i32 %947, 255
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %949, 0x3F70101000000000
  %951 = fmul fast float %938, %943
  %952 = fadd fast float %951, %946
  %953 = fmul fast float %952, 0x3F70101000000000
  %954 = fadd fast float %939, -5.000000e-01
  %955 = fadd fast float %941, -5.000000e-01
  %956 = fmul fast float %954, %950
  %957 = fmul fast float %955, %950
  %958 = fadd fast float %956, 5.000000e-01
  %959 = fadd fast float %957, 5.000000e-01
  %960 = fmul fast float %958, 2.000000e+00
  %961 = fadd fast float %960, -1.000000e+00
  %962 = fmul fast float %959, 2.000000e+00
  %963 = fadd fast float %962, -1.000000e+00
  %964 = fadd fast float %961, %963
  %965 = fmul fast float %964, 5.000000e-01
  %966 = fsub fast float %961, %963
  %967 = fmul fast float %966, 5.000000e-01
  %968 = call float @dx.op.unary.f32(i32 6, float %965)  ; FAbs(value)
  %969 = fsub fast float 1.000000e+00, %968
  %970 = call float @dx.op.unary.f32(i32 6, float %967)  ; FAbs(value)
  %971 = fsub fast float %969, %970
  %972 = call float @dx.op.dot3.f32(i32 55, float %965, float %967, float %971, float %965, float %967, float %971)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = call float @dx.op.unary.f32(i32 25, float %972)  ; Rsqrt(value)
  %974 = fmul fast float %965, %973
  %975 = fmul fast float %967, %973
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = and i32 %977, 67108864
  %979 = icmp eq i32 %978, 0
  br i1 %979, label %996, label %980

; <label>:980                                     ; preds = %928
  %981 = add i32 %42, 280
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %983, 65535
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %616, i32 undef)  ; BufferLoad(srv,index,wot)
  %987 = extractvalue %dx.types.ResRet.i32 %986, 0
  %988 = and i32 %987, 65535
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = lshr i32 %983, 16
  %991 = call float @dx.op.legacyF16ToF32(i32 131, i32 %990)  ; LegacyF16ToF32(value)
  %992 = fsub fast float %953, %991
  %993 = fmul fast float %992, %985
  %994 = fadd fast float %993, %989
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  br label %996

; <label>:996                                     ; preds = %980, %928
  %997 = phi float [ %995, %980 ], [ %953, %928 ]
  %998 = call float @dx.op.dot2.f32(i32 54, float %974, float %975, float %610, float %611)  ; Dot2(ax,ay,bx,by)
  %999 = call float @dx.op.dot2.f32(i32 54, float %974, float %975, float %612, float %613)  ; Dot2(ax,ay,bx,by)
  br label %1000

; <label>:1000                                    ; preds = %996, %906
  %1001 = phi float [ %997, %996 ], [ 0x3FD6666660000000, %906 ]
  %1002 = phi float [ %998, %996 ], [ 0.000000e+00, %906 ]
  %1003 = phi float [ %999, %996 ], [ 0.000000e+00, %906 ]
  %1004 = phi float [ %940, %996 ], [ 1.000000e+00, %906 ]
  %1005 = add i32 %42, 160
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = lshr i32 %1007, 22
  %1009 = shl nuw nsw i32 %1008, 5
  %1010 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1009)  ; LegacyF16ToF32(value)
  %1011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.i32 %1011, 0
  %1013 = and i32 %1012, 64
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1048, label %1015

; <label>:1015                                    ; preds = %1000
  %1016 = add i32 %42, 472
  %1017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.i32 %1017, 0
  %1019 = add i32 %1018, 0
  %1020 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1019, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = and i32 %1022, 131072
  %1024 = icmp eq i32 %1023, 0
  %1025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1020, %dx.types.Handle %66, float %706, float %707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = extractvalue %dx.types.ResRet.f32 %1025, 1
  %1028 = extractvalue %dx.types.ResRet.f32 %1025, 2
  %1029 = fmul fast float %1026, %376
  %1030 = fmul fast float %1027, %379
  %1031 = fmul fast float %1028, %382
  br i1 %1024, label %1038, label %1032

; <label>:1032                                    ; preds = %1015
  %1033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1034 = extractvalue %dx.types.CBufRet.f32 %1033, 0
  %1035 = fmul fast float %1034, %1029
  %1036 = fmul fast float %1034, %1030
  %1037 = fmul fast float %1034, %1031
  br label %1038

; <label>:1038                                    ; preds = %1032, %1015
  %1039 = phi float [ %1035, %1032 ], [ %1029, %1015 ]
  %1040 = phi float [ %1036, %1032 ], [ %1030, %1015 ]
  %1041 = phi float [ %1037, %1032 ], [ %1031, %1015 ]
  %1042 = fmul fast float %1039, %1010
  %1043 = select i1 %370, float %1042, float %1039
  %1044 = call float @dx.op.dot3.f32(i32 55, float %1043, float %1040, float %1041, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = select i1 %370, float 0.000000e+00, float %1039
  %1046 = select i1 %370, float %1044, float %1040
  %1047 = select i1 %370, float 0.000000e+00, float %1041
  br label %1048

; <label>:1048                                    ; preds = %1038, %1000
  %1049 = phi float [ %1045, %1038 ], [ 0.000000e+00, %1000 ]
  %1050 = phi float [ %1046, %1038 ], [ 0.000000e+00, %1000 ]
  %1051 = phi float [ %1047, %1038 ], [ 0.000000e+00, %1000 ]
  %1052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.i32 %1052, 0
  %1054 = and i32 %1053, 10240
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1100, label %1056

; <label>:1056                                    ; preds = %1048
  %1057 = add i32 %42, 536
  %1058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.i32 %1058, 0
  %1060 = add i32 %1059, 0
  %1061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1061, %dx.types.Handle %67, float %706, float %707, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1062, 3
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = and i32 %1066, 1048576
  %1068 = icmp ne i32 %1067, 0
  %1069 = and i32 %1066, 8192
  %1070 = icmp eq i32 %1069, 0
  br i1 %1070, label %1086, label %1071

; <label>:1071                                    ; preds = %1056
  %1072 = extractvalue %dx.types.ResRet.f32 %1062, 2
  %1073 = select i1 %1068, float %1072, float %1063
  %1074 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1075 = select i1 %1068, float %1074, float %1063
  %1076 = add i32 %42, 96
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = lshr i32 %1078, 16
  %1080 = and i32 %1079, 255
  %1081 = uitofp i32 %1080 to float
  %1082 = fmul fast float %1081, 0x3F80101020000000
  %1083 = fmul fast float %1082, %1075
  %1084 = fmul fast float %1082, %1063
  %1085 = fmul fast float %1082, %1073
  br label %1086

; <label>:1086                                    ; preds = %1071, %1056
  %1087 = phi float [ %1083, %1071 ], [ 0.000000e+00, %1056 ]
  %1088 = phi float [ %1084, %1071 ], [ 0.000000e+00, %1056 ]
  %1089 = phi float [ %1085, %1071 ], [ 0.000000e+00, %1056 ]
  %1090 = and i32 %1066, 2048
  %1091 = icmp eq i32 %1090, 0
  br i1 %1091, label %1100, label %1092

; <label>:1092                                    ; preds = %1086
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = shl i32 %1094, 4
  %1096 = and i32 %1095, 32752
  %1097 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1096)  ; LegacyF16ToF32(value)
  %1098 = fmul fast float %1097, %1064
  %1099 = call float @dx.op.binary.f32(i32 35, float %1098, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1100

; <label>:1100                                    ; preds = %1092, %1086, %1048
  %1101 = phi float [ %1087, %1092 ], [ %1087, %1086 ], [ 0.000000e+00, %1048 ]
  %1102 = phi float [ %1088, %1092 ], [ %1088, %1086 ], [ 0.000000e+00, %1048 ]
  %1103 = phi float [ %1089, %1092 ], [ %1089, %1086 ], [ 0.000000e+00, %1048 ]
  %1104 = phi float [ %1099, %1092 ], [ 0x3F70101020000000, %1086 ], [ 0x3F70101020000000, %1048 ]
  %1105 = add i32 %42, 96
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = and i32 %1107, 255
  %1109 = uitofp i32 %1108 to float
  %1110 = lshr i32 %1107, 8
  %1111 = and i32 %1110, 255
  %1112 = uitofp i32 %1111 to float
  %1113 = call float @dx.op.dot3.f32(i32 55, float %921, float %922, float %923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1114 = fmul fast float %1112, %1113
  %1115 = fadd fast float %1114, %1109
  %1116 = fmul fast float %1115, 0x3F70101020000000
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  br label %1118

; <label>:1118                                    ; preds = %1100, %592
  %1119 = phi float [ 0.000000e+00, %592 ], [ %1002, %1100 ]
  %1120 = phi float [ 0.000000e+00, %592 ], [ %1003, %1100 ]
  %1121 = phi float [ 0.000000e+00, %592 ], [ %1049, %1100 ]
  %1122 = phi float [ 0.000000e+00, %592 ], [ %1050, %1100 ]
  %1123 = phi float [ 0.000000e+00, %592 ], [ %1051, %1100 ]
  %1124 = phi float [ 0.000000e+00, %592 ], [ %921, %1100 ]
  %1125 = phi float [ 0.000000e+00, %592 ], [ %922, %1100 ]
  %1126 = phi float [ 0.000000e+00, %592 ], [ %923, %1100 ]
  %1127 = phi float [ 0.000000e+00, %592 ], [ %1101, %1100 ]
  %1128 = phi float [ 0.000000e+00, %592 ], [ %1102, %1100 ]
  %1129 = phi float [ 0.000000e+00, %592 ], [ %1103, %1100 ]
  %1130 = phi float [ 0.000000e+00, %592 ], [ %907, %1100 ]
  %1131 = phi float [ 0.000000e+00, %592 ], [ 1.000000e+00, %1100 ]
  %1132 = phi float [ 0.000000e+00, %592 ], [ %1001, %1100 ]
  %1133 = phi float [ 0.000000e+00, %592 ], [ %1004, %1100 ]
  %1134 = phi float [ 0.000000e+00, %592 ], [ %1104, %1100 ]
  %1135 = phi float [ 0.000000e+00, %592 ], [ %1117, %1100 ]
  br i1 %543, label %2064, label %1136

; <label>:1136                                    ; preds = %1118
  %1137 = icmp ult i32 %598, 2
  %1138 = add i32 %42, 40
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = add i32 %42, 44
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = or i32 %1143, %1140
  %1145 = icmp eq i32 %1144, 0
  br i1 %1145, label %2064, label %1146

; <label>:1146                                    ; preds = %1136
  %1147 = and i32 %1140, 262144
  %1148 = icmp ne i32 %1147, 0
  %1149 = select i1 %1148, float %45, float 1.000000e+00
  %1150 = select i1 %1148, float %46, float 0.000000e+00
  %1151 = select i1 %1148, float %47, float 0.000000e+00
  %1152 = select i1 %1148, float %48, float 1.000000e+00
  %1153 = select i1 %1148, float %49, float %58
  %1154 = select i1 %1148, float %50, float %59
  %1155 = add i32 %42, 300
  %1156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
  %1157 = extractvalue %dx.types.ResRet.i32 %1156, 0
  %1158 = lshr i32 %1157, 16
  %1159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1158)  ; LegacyF16ToF32(value)
  %1160 = fmul fast float %1159, 0x3F50624DE0000000
  %1161 = add i32 %42, 104
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = lshr i32 %1163, 16
  %1165 = and i32 %1164, 255
  %1166 = lshr i32 %1163, 24
  %1167 = add i32 %42, 308
  %1168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1167, i32 undef)  ; BufferLoad(srv,index,wot)
  %1169 = extractvalue %dx.types.ResRet.i32 %1168, 0
  %1170 = and i32 %1169, 65535
  %1171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1170)  ; LegacyF16ToF32(value)
  %1172 = lshr i32 %1169, 16
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = add i32 %42, 48
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1174, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1187 = extractvalue %dx.types.CBufRet.f32 %1186, 3
  %1188 = fmul fast float %1187, 1.000000e+03
  %1189 = fmul fast float %453, %1188
  %1190 = call float @dx.op.unary.f32(i32 22, float %1189)  ; Frc(value)
  %1191 = fadd fast float %1190, %443
  %1192 = fmul fast float %454, %1188
  %1193 = call float @dx.op.unary.f32(i32 22, float %1192)  ; Frc(value)
  %1194 = fadd fast float %1193, %445
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
  %1220 = add i32 %42, 244
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1253 = extractvalue %dx.types.CBufRet.f32 %1250, 2
  %1254 = fadd fast float %1251, %129
  %1255 = fadd fast float %1252, %130
  %1256 = fadd fast float %1253, %131
  %1257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1258 = extractvalue %dx.types.CBufRet.f32 %1257, 0
  %1259 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1260 = icmp eq i32 %43, 65535
  br i1 %1260, label %1355, label %1261

; <label>:1261                                    ; preds = %1249
  %1262 = lshr i32 %43, 1
  %1263 = shl i32 %1262, 2
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = and i32 %43, 1
  %1267 = icmp ne i32 %1266, 0
  %1268 = lshr i32 %1265, 16
  %1269 = and i32 %1265, 65535
  %1270 = select i1 %1267, i32 %1268, i32 %1269
  %1271 = icmp eq i32 %1270, 65535
  br i1 %1271, label %1351, label %1272

; <label>:1272                                    ; preds = %1261
  %1273 = mul nuw nsw i32 %1270, 40
  %1274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.f32 %1274, 0
  %1276 = extractvalue %dx.types.ResRet.f32 %1274, 1
  %1277 = extractvalue %dx.types.ResRet.f32 %1274, 2
  %1278 = add nuw nsw i32 %1273, 12
  %1279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.f32 %1279, 0
  %1281 = extractvalue %dx.types.ResRet.f32 %1279, 1
  %1282 = extractvalue %dx.types.ResRet.f32 %1279, 2
  %1283 = add nuw nsw i32 %1273, 24
  %1284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1285 = extractvalue %dx.types.ResRet.f32 %1284, 0
  %1286 = extractvalue %dx.types.ResRet.f32 %1284, 1
  %1287 = extractvalue %dx.types.ResRet.f32 %1284, 2
  %1288 = add nuw nsw i32 %1273, 36
  %1289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1306 = shl i32 %43, 2
  %1307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1308 = extractvalue %dx.types.ResRet.i32 %1307, 0
  %1309 = add i32 %1308, 0
  %1310 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1309, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1311 = call float @dx.op.unary.f32(i32 22, float %1303)  ; Frc(value)
  %1312 = call float @dx.op.unary.f32(i32 22, float %1304)  ; Frc(value)
  %1313 = call float @dx.op.unary.f32(i32 22, float %1305)  ; Frc(value)
  %1314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1310, %dx.types.Handle %37, float %1311, float %1312, float %1313, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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
  %1345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1306, i32 undef)  ; BufferLoad(srv,index,wot)
  %1346 = extractvalue %dx.types.ResRet.i32 %1345, 0
  %1347 = add i32 %1346, 0
  %1348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1348, %dx.types.Handle %35, float %1342, float %1343, float %1344, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  br label %1351

; <label>:1351                                    ; preds = %1272, %1261
  %1352 = phi float [ %1350, %1272 ], [ -1.000000e+00, %1261 ]
  %1353 = fadd fast float %1352, %1259
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  br label %1355

; <label>:1355                                    ; preds = %1351, %1249
  %1356 = phi float [ %1354, %1351 ], [ %1259, %1249 ]
  %1357 = fmul fast float %1356, %595
  br label %1358

; <label>:1358                                    ; preds = %1355, %1244
  %1359 = phi float [ %1357, %1355 ], [ %595, %1244 ]
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  %1362 = and i32 %1361, 256
  %1363 = icmp eq i32 %1362, 0
  br i1 %1363, label %1410, label %1364

; <label>:1364                                    ; preds = %1358
  %1365 = add i32 %42, 508
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = add i32 %1367, 0
  %1369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1369, %dx.types.Handle %67, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1371 = extractvalue %dx.types.ResRet.f32 %1370, 0
  %1372 = add i32 %42, 116
  %1373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1413 = extractvalue %dx.types.ResRet.i32 %1412, 0
  %1414 = and i32 %1413, 128
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1432, label %1416

; <label>:1416                                    ; preds = %1410
  %1417 = add i32 %42, 492
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = add i32 %1419, 0
  %1421 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1420, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1422 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1421, %dx.types.Handle %67, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1423 = extractvalue %dx.types.ResRet.f32 %1422, 0
  %1424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %1434, label %2064, label %1435

; <label>:1435                                    ; preds = %1432
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 16
  %1439 = icmp eq i32 %1438, 0
  br i1 %1439, label %1638, label %1440

; <label>:1440                                    ; preds = %1435
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = add i32 %42, 444
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = add i32 %1445, 0
  %1447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1446, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1448 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1447, %dx.types.Handle %66, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 512
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1473, label %1465

; <label>:1465                                    ; preds = %1440
  %1466 = add i32 %42, 524
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %67, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1472 = extractvalue %dx.types.ResRet.f32 %1471, 0
  br label %1473

; <label>:1473                                    ; preds = %1465, %1440
  %1474 = phi float [ %1472, %1465 ], [ 1.000000e+00, %1440 ]
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = and i32 %1476, 33554432
  %1478 = icmp eq i32 %1477, 0
  br i1 %1478, label %1585, label %1479

; <label>:1479                                    ; preds = %1473
  %1480 = add i32 %42, 240
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1480, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 65535
  %1484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1483)  ; LegacyF16ToF32(value)
  %1485 = lshr i32 %1482, 16
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = add i32 %42, 244
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1487, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 65535
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1508 = add i32 %42, 236
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1589 = call float @dx.op.unary.f32(i32 24, float %430)  ; Sqrt(value)
  %1590 = call float @dx.op.unary.f32(i32 24, float %434)  ; Sqrt(value)
  %1591 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
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
  %1623 = fmul fast float %430, %430
  %1624 = fmul fast float %434, %434
  %1625 = fmul fast float %438, %438
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
  %1643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.i32 %1643, 1
  %1645 = and i32 %1644, 1
  %1646 = icmp ne i32 %1645, 0
  %1647 = add i32 %42, 356
  %1648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1647, i32 undef)  ; BufferLoad(srv,index,wot)
  %1649 = extractvalue %dx.types.ResRet.i32 %1648, 0
  %1650 = and i32 %1649, 32
  %1651 = icmp ne i32 %1650, 0
  %1652 = and i1 %1646, %1651
  %1653 = select i1 %1652, float 1.000000e+00, float %1640
  %1654 = select i1 %1652, float 0x3FD3333340000000, float %1641
  %1655 = select i1 %1652, float 0x3FD3333340000000, float %1642
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 32
  %1659 = icmp eq i32 %1658, 0
  br i1 %1659, label %1732, label %1660

; <label>:1660                                    ; preds = %1638
  %1661 = add i32 %42, 108
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1661, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = add i32 %42, 460
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1664, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = add i32 %1666, 0
  %1668 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1667, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1669 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1668, %dx.types.Handle %66, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
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
  %1708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.i32 %1708, 0
  %1710 = and i32 %1709, 67108864
  %1711 = icmp eq i32 %1710, 0
  br i1 %1711, label %1728, label %1712

; <label>:1712                                    ; preds = %1660
  %1713 = add i32 %42, 296
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = and i32 %1715, 65535
  %1717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1716)  ; LegacyF16ToF32(value)
  %1718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1155, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1737 = add i32 %42, 176
  %1738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1739 = extractvalue %dx.types.ResRet.i32 %1738, 0
  %1740 = lshr i32 %1739, 22
  %1741 = shl nuw nsw i32 %1740, 5
  %1742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1741)  ; LegacyF16ToF32(value)
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = and i32 %1744, 64
  %1746 = icmp eq i32 %1745, 0
  br i1 %1746, label %1780, label %1747

; <label>:1747                                    ; preds = %1732
  %1748 = add i32 %42, 476
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = add i32 %1750, 0
  %1752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = and i32 %1754, 131072
  %1756 = icmp eq i32 %1755, 0
  %1757 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1752, %dx.types.Handle %66, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1758 = extractvalue %dx.types.ResRet.f32 %1757, 0
  %1759 = extractvalue %dx.types.ResRet.f32 %1757, 1
  %1760 = extractvalue %dx.types.ResRet.f32 %1757, 2
  %1761 = fmul fast float %1758, %418
  %1762 = fmul fast float %1759, %421
  %1763 = fmul fast float %1760, %424
  br i1 %1756, label %1770, label %1764

; <label>:1764                                    ; preds = %1747
  %1765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1775 = select i1 %370, float %1774, float %1771
  %1776 = call float @dx.op.dot3.f32(i32 55, float %1775, float %1772, float %1773, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1777 = select i1 %370, float 0.000000e+00, float %1771
  %1778 = select i1 %370, float %1776, float %1772
  %1779 = select i1 %370, float 0.000000e+00, float %1773
  br label %1780

; <label>:1780                                    ; preds = %1770, %1732
  %1781 = phi float [ %1777, %1770 ], [ 0.000000e+00, %1732 ]
  %1782 = phi float [ %1778, %1770 ], [ 0.000000e+00, %1732 ]
  %1783 = phi float [ %1779, %1770 ], [ 0.000000e+00, %1732 ]
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = and i32 %1785, 10240
  %1787 = icmp eq i32 %1786, 0
  br i1 %1787, label %1832, label %1788

; <label>:1788                                    ; preds = %1780
  %1789 = add i32 %42, 540
  %1790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.i32 %1790, 0
  %1792 = add i32 %1791, 0
  %1793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1794 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1793, %dx.types.Handle %67, float %1245, float %1246, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1795 = extractvalue %dx.types.ResRet.f32 %1794, 1
  %1796 = extractvalue %dx.types.ResRet.f32 %1794, 3
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = and i32 %1798, 1048576
  %1800 = icmp ne i32 %1799, 0
  %1801 = and i32 %1798, 8192
  %1802 = icmp eq i32 %1801, 0
  br i1 %1802, label %1818, label %1803

; <label>:1803                                    ; preds = %1788
  %1804 = extractvalue %dx.types.ResRet.f32 %1794, 2
  %1805 = select i1 %1800, float %1804, float %1795
  %1806 = extractvalue %dx.types.ResRet.f32 %1794, 0
  %1807 = select i1 %1800, float %1806, float %1795
  %1808 = add i32 %42, 112
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = lshr i32 %1810, 16
  %1812 = and i32 %1811, 255
  %1813 = uitofp i32 %1812 to float
  %1814 = fmul fast float %1813, 0x3F80101020000000
  %1815 = fmul fast float %1814, %1807
  %1816 = fmul fast float %1814, %1795
  %1817 = fmul fast float %1814, %1805
  br label %1818

; <label>:1818                                    ; preds = %1803, %1788
  %1819 = phi float [ %1815, %1803 ], [ 0.000000e+00, %1788 ]
  %1820 = phi float [ %1816, %1803 ], [ 0.000000e+00, %1788 ]
  %1821 = phi float [ %1817, %1803 ], [ 0.000000e+00, %1788 ]
  %1822 = and i32 %1798, 2048
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1832, label %1824

; <label>:1824                                    ; preds = %1818
  %1825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1737, i32 undef)  ; BufferLoad(srv,index,wot)
  %1826 = extractvalue %dx.types.ResRet.i32 %1825, 0
  %1827 = shl i32 %1826, 4
  %1828 = and i32 %1827, 32752
  %1829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1828)  ; LegacyF16ToF32(value)
  %1830 = fmul fast float %1829, %1796
  %1831 = call float @dx.op.binary.f32(i32 35, float %1830, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1832

; <label>:1832                                    ; preds = %1824, %1818, %1780
  %1833 = phi float [ %1819, %1824 ], [ %1819, %1818 ], [ 0.000000e+00, %1780 ]
  %1834 = phi float [ %1820, %1824 ], [ %1820, %1818 ], [ 0.000000e+00, %1780 ]
  %1835 = phi float [ %1821, %1824 ], [ %1821, %1818 ], [ 0.000000e+00, %1780 ]
  %1836 = phi float [ %1831, %1824 ], [ 0x3F70101020000000, %1818 ], [ 0x3F70101020000000, %1780 ]
  %1837 = add i32 %42, 112
  %1838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.i32 %1838, 0
  %1840 = and i32 %1839, 255
  %1841 = uitofp i32 %1840 to float
  %1842 = lshr i32 %1839, 8
  %1843 = and i32 %1842, 255
  %1844 = uitofp i32 %1843 to float
  %1845 = call float @dx.op.dot3.f32(i32 55, float %1653, float %1654, float %1655, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1846 = fmul fast float %1844, %1845
  %1847 = fadd fast float %1846, %1841
  %1848 = fmul fast float %1847, 0x3F70101020000000
  %1849 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  br i1 %1137, label %1850, label %1858

; <label>:1850                                    ; preds = %1832
  %1851 = fsub fast float 1.000000e+00, %1433
  %1852 = fmul fast float %1851, %1124
  %1853 = fmul fast float %1851, %1125
  %1854 = fmul fast float %1851, %1126
  %1855 = fmul fast float %1851, %1121
  %1856 = fmul fast float %1851, %1122
  %1857 = fmul fast float %1851, %1123
  br label %1858

; <label>:1858                                    ; preds = %1850, %1832
  %1859 = phi float [ %1855, %1850 ], [ %1121, %1832 ]
  %1860 = phi float [ %1856, %1850 ], [ %1122, %1832 ]
  %1861 = phi float [ %1857, %1850 ], [ %1123, %1832 ]
  %1862 = phi float [ %1852, %1850 ], [ %1124, %1832 ]
  %1863 = phi float [ %1853, %1850 ], [ %1125, %1832 ]
  %1864 = phi float [ %1854, %1850 ], [ %1126, %1832 ]
  %1865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.i32 %1865, 0
  %1867 = and i32 %1866, 3
  %1868 = icmp eq i32 %1867, 3
  br i1 %1868, label %1947, label %1869

; <label>:1869                                    ; preds = %1858
  %1870 = and i32 %1866, 16
  %1871 = icmp ne i32 %1870, 0
  %1872 = select i1 %1871, float %1433, float 0.000000e+00
  %1873 = icmp eq i32 %1867, 0
  br i1 %1873, label %1874, label %1902

; <label>:1874                                    ; preds = %1869
  %1875 = and i32 %1866, 64
  %1876 = icmp ne i32 %1875, 0
  %1877 = select i1 %1876, float %1433, float 0.000000e+00
  %1878 = fsub fast float %1653, %1862
  %1879 = fsub fast float %1654, %1863
  %1880 = fsub fast float %1655, %1864
  %1881 = fmul fast float %1872, %1878
  %1882 = fmul fast float %1872, %1879
  %1883 = fmul fast float %1872, %1880
  %1884 = fadd fast float %1881, %1862
  %1885 = fadd fast float %1882, %1863
  %1886 = fadd fast float %1883, %1864
  %1887 = fsub fast float %1639, %1130
  %1888 = fmul fast float %1872, %1887
  %1889 = fadd fast float %1888, %1130
  %1890 = fsub fast float %1781, %1859
  %1891 = fsub fast float %1782, %1860
  %1892 = fsub fast float %1783, %1861
  %1893 = fmul fast float %1877, %1890
  %1894 = fmul fast float %1877, %1891
  %1895 = fmul fast float %1877, %1892
  %1896 = fadd fast float %1893, %1859
  %1897 = fadd fast float %1894, %1860
  %1898 = fadd fast float %1895, %1861
  %1899 = fsub fast float %1849, %1135
  %1900 = fmul fast float %1872, %1899
  %1901 = fadd fast float %1900, %1135
  br label %1947

; <label>:1902                                    ; preds = %1869
  %1903 = icmp eq i32 %1867, 1
  br i1 %1903, label %1904, label %1917

; <label>:1904                                    ; preds = %1902
  %1905 = fadd fast float %1653, -1.000000e+00
  %1906 = fadd fast float %1654, -1.000000e+00
  %1907 = fadd fast float %1655, -1.000000e+00
  %1908 = fmul fast float %1872, %1905
  %1909 = fmul fast float %1872, %1906
  %1910 = fmul fast float %1872, %1907
  %1911 = fadd fast float %1908, 1.000000e+00
  %1912 = fadd fast float %1909, 1.000000e+00
  %1913 = fadd fast float %1910, 1.000000e+00
  %1914 = fmul fast float %1911, %1862
  %1915 = fmul fast float %1912, %1863
  %1916 = fmul fast float %1913, %1864
  br label %1947

; <label>:1917                                    ; preds = %1902
  %1918 = icmp eq i32 %1867, 2
  br i1 %1918, label %1919, label %1947

; <label>:1919                                    ; preds = %1917
  %1920 = call float @dx.op.unary.f32(i32 24, float %1653)  ; Sqrt(value)
  %1921 = call float @dx.op.unary.f32(i32 24, float %1654)  ; Sqrt(value)
  %1922 = call float @dx.op.unary.f32(i32 24, float %1655)  ; Sqrt(value)
  %1923 = fadd fast float %1920, -5.000000e-01
  %1924 = fadd fast float %1921, -5.000000e-01
  %1925 = fadd fast float %1922, -5.000000e-01
  %1926 = fmul fast float %1923, %1872
  %1927 = fmul fast float %1924, %1872
  %1928 = fmul fast float %1925, %1872
  %1929 = fadd fast float %1926, 5.000000e-01
  %1930 = fadd fast float %1927, 5.000000e-01
  %1931 = fadd fast float %1928, 5.000000e-01
  %1932 = fmul fast float %1929, 2.000000e+00
  %1933 = fsub fast float 1.000000e+00, %1932
  %1934 = fmul fast float %1933, %1862
  %1935 = fadd fast float %1934, %1932
  %1936 = fmul fast float %1935, %1862
  %1937 = fmul fast float %1930, 2.000000e+00
  %1938 = fsub fast float 1.000000e+00, %1937
  %1939 = fmul fast float %1938, %1863
  %1940 = fadd fast float %1939, %1937
  %1941 = fmul fast float %1940, %1863
  %1942 = fmul fast float %1931, 2.000000e+00
  %1943 = fsub fast float 1.000000e+00, %1942
  %1944 = fmul fast float %1943, %1864
  %1945 = fadd fast float %1944, %1942
  %1946 = fmul fast float %1945, %1864
  br label %1947

; <label>:1947                                    ; preds = %1919, %1917, %1904, %1874, %1858
  %1948 = phi float [ %1859, %1858 ], [ %1859, %1919 ], [ %1859, %1917 ], [ %1859, %1904 ], [ %1896, %1874 ]
  %1949 = phi float [ %1860, %1858 ], [ %1860, %1919 ], [ %1860, %1917 ], [ %1860, %1904 ], [ %1897, %1874 ]
  %1950 = phi float [ %1861, %1858 ], [ %1861, %1919 ], [ %1861, %1917 ], [ %1861, %1904 ], [ %1898, %1874 ]
  %1951 = phi float [ %1862, %1858 ], [ %1936, %1919 ], [ %1862, %1917 ], [ %1914, %1904 ], [ %1884, %1874 ]
  %1952 = phi float [ %1863, %1858 ], [ %1941, %1919 ], [ %1863, %1917 ], [ %1915, %1904 ], [ %1885, %1874 ]
  %1953 = phi float [ %1864, %1858 ], [ %1946, %1919 ], [ %1864, %1917 ], [ %1916, %1904 ], [ %1886, %1874 ]
  %1954 = phi float [ %1130, %1858 ], [ %1130, %1919 ], [ %1130, %1917 ], [ %1130, %1904 ], [ %1889, %1874 ]
  %1955 = phi float [ %1135, %1858 ], [ %1135, %1919 ], [ %1135, %1917 ], [ %1135, %1904 ], [ %1901, %1874 ]
  %1956 = and i32 %1866, 12
  %1957 = icmp eq i32 %1956, 12
  br i1 %1957, label %2064, label %1958

; <label>:1958                                    ; preds = %1947
  %1959 = and i32 %1866, 2097184
  %1960 = icmp eq i32 %1959, 2097184
  %1961 = select i1 %1960, float %1433, float 0.000000e+00
  %1962 = and i32 %1866, 4194336
  %1963 = icmp eq i32 %1962, 4194336
  %1964 = select i1 %1963, float %1433, float 0.000000e+00
  %1965 = and i32 %1866, 8388640
  %1966 = icmp eq i32 %1965, 8388640
  %1967 = select i1 %1966, float %1433, float 0.000000e+00
  %1968 = and i32 %1866, 2048
  %1969 = icmp ne i32 %1968, 0
  %1970 = select i1 %1969, float %1433, float 0.000000e+00
  %1971 = and i32 %1866, 8192
  %1972 = icmp ne i32 %1971, 0
  %1973 = select i1 %1972, float %1433, float 0.000000e+00
  %1974 = icmp eq i32 %1956, 0
  br i1 %1974, label %1975, label %2000

; <label>:1975                                    ; preds = %1958
  %1976 = fsub fast float %1734, %1119
  %1977 = fsub fast float %1735, %1120
  %1978 = fmul fast float %1961, %1976
  %1979 = fmul fast float %1961, %1977
  %1980 = fadd fast float %1978, %1119
  %1981 = fadd fast float %1979, %1120
  %1982 = fsub fast float %1736, %1133
  %1983 = fmul fast float %1964, %1982
  %1984 = fadd fast float %1983, %1133
  %1985 = fsub fast float %1733, %1132
  %1986 = fmul fast float %1967, %1985
  %1987 = fadd fast float %1986, %1132
  %1988 = fsub fast float %1836, %1134
  %1989 = fmul fast float %1970, %1988
  %1990 = fadd fast float %1989, %1134
  %1991 = fsub fast float %1833, %1127
  %1992 = fsub fast float %1834, %1128
  %1993 = fsub fast float %1835, %1129
  %1994 = fmul fast float %1973, %1991
  %1995 = fmul fast float %1973, %1992
  %1996 = fmul fast float %1973, %1993
  %1997 = fadd fast float %1994, %1127
  %1998 = fadd fast float %1995, %1128
  %1999 = fadd fast float %1996, %1129
  br label %2064

; <label>:2000                                    ; preds = %1958
  %2001 = icmp eq i32 %1956, 4
  br i1 %2001, label %2002, label %2042

; <label>:2002                                    ; preds = %2000
  %2003 = fmul fast float %1961, %1734
  %2004 = fmul fast float %1961, %1735
  %2005 = fadd fast float %2003, %1119
  %2006 = fadd fast float %2004, %1120
  %2007 = call float @dx.op.binary.f32(i32 36, float %1133, float %1736)  ; FMin(a,b)
  %2008 = fsub fast float %2007, %1133
  %2009 = fmul fast float %2008, %1964
  %2010 = fadd fast float %2009, %1133
  %2011 = fadd fast float %1733, %1132
  %2012 = fmul fast float %2011, 0x3FF337FAE0000000
  %2013 = fmul fast float %1132, %1132
  %2014 = fmul fast float %1733, %1733
  %2015 = fadd fast float %2014, %2013
  %2016 = fmul fast float %2015, 0x3FE5152B00000000
  %2017 = fmul fast float %1132, 0xBFCC1F85E0000000
  %2018 = fmul fast float %2017, %1733
  %2019 = fadd fast float %2018, 0xBFE1363700000000
  %2020 = fadd fast float %2019, %2012
  %2021 = fsub fast float %2020, %2016
  %2022 = fmul fast float %2011, 0x3FBA6F0D00000000
  %2023 = fmul fast float %2015, 0x3FD0432880000000
  %2024 = fmul fast float %1132, 0xBFEF110800000000
  %2025 = fmul fast float %2024, %1733
  %2026 = fadd fast float %2025, 1.000000e+00
  %2027 = fsub fast float %2026, %2022
  %2028 = fadd fast float %2027, %2023
  %2029 = fdiv fast float %2021, %2028
  %2030 = call float @dx.op.unary.f32(i32 7, float %2029)  ; Saturate(value)
  %2031 = fsub fast float %2030, %1132
  %2032 = fmul fast float %2031, %1967
  %2033 = fadd fast float %2032, %1132
  %2034 = fmul fast float %1970, %1836
  %2035 = fadd fast float %2034, %1134
  %2036 = fmul fast float %1973, %1833
  %2037 = fmul fast float %1973, %1834
  %2038 = fmul fast float %1973, %1835
  %2039 = fadd fast float %2036, %1127
  %2040 = fadd fast float %2037, %1128
  %2041 = fadd fast float %2038, %1129
  br label %2064

; <label>:2042                                    ; preds = %2000
  %2043 = icmp eq i32 %1956, 8
  br i1 %2043, label %2044, label %2064

; <label>:2044                                    ; preds = %2042
  %2045 = fmul fast float %1961, %1734
  %2046 = fmul fast float %1961, %1735
  %2047 = fadd fast float %2045, %1119
  %2048 = fadd fast float %2046, %1120
  %2049 = call float @dx.op.binary.f32(i32 36, float %1133, float %1736)  ; FMin(a,b)
  %2050 = fsub fast float %2049, %1133
  %2051 = fmul fast float %2050, %1964
  %2052 = fadd fast float %2051, %1133
  %2053 = fsub fast float %1733, %1132
  %2054 = fmul fast float %1967, %2053
  %2055 = fadd fast float %2054, %1132
  %2056 = fmul fast float %1970, %1836
  %2057 = fadd fast float %2056, %1134
  %2058 = fmul fast float %1973, %1833
  %2059 = fmul fast float %1973, %1834
  %2060 = fmul fast float %1973, %1835
  %2061 = fadd fast float %2058, %1127
  %2062 = fadd fast float %2059, %1128
  %2063 = fadd fast float %2060, %1129
  br label %2064

; <label>:2064                                    ; preds = %2044, %2042, %2002, %1975, %1947, %1432, %1136, %1118
  %2065 = phi float [ %1119, %1947 ], [ %1119, %1432 ], [ %1119, %1118 ], [ %2047, %2044 ], [ %1119, %2042 ], [ %2005, %2002 ], [ %1980, %1975 ], [ %1119, %1136 ]
  %2066 = phi float [ %1120, %1947 ], [ %1120, %1432 ], [ %1120, %1118 ], [ %2048, %2044 ], [ %1120, %2042 ], [ %2006, %2002 ], [ %1981, %1975 ], [ %1120, %1136 ]
  %2067 = phi float [ %1948, %1947 ], [ %1121, %1432 ], [ %1121, %1118 ], [ %1948, %2044 ], [ %1948, %2042 ], [ %1948, %2002 ], [ %1948, %1975 ], [ %1121, %1136 ]
  %2068 = phi float [ %1949, %1947 ], [ %1122, %1432 ], [ %1122, %1118 ], [ %1949, %2044 ], [ %1949, %2042 ], [ %1949, %2002 ], [ %1949, %1975 ], [ %1122, %1136 ]
  %2069 = phi float [ %1950, %1947 ], [ %1123, %1432 ], [ %1123, %1118 ], [ %1950, %2044 ], [ %1950, %2042 ], [ %1950, %2002 ], [ %1950, %1975 ], [ %1123, %1136 ]
  %2070 = phi float [ %1951, %1947 ], [ %1124, %1432 ], [ %1124, %1118 ], [ %1951, %2044 ], [ %1951, %2042 ], [ %1951, %2002 ], [ %1951, %1975 ], [ %1124, %1136 ]
  %2071 = phi float [ %1952, %1947 ], [ %1125, %1432 ], [ %1125, %1118 ], [ %1952, %2044 ], [ %1952, %2042 ], [ %1952, %2002 ], [ %1952, %1975 ], [ %1125, %1136 ]
  %2072 = phi float [ %1953, %1947 ], [ %1126, %1432 ], [ %1126, %1118 ], [ %1953, %2044 ], [ %1953, %2042 ], [ %1953, %2002 ], [ %1953, %1975 ], [ %1126, %1136 ]
  %2073 = phi float [ %1127, %1947 ], [ %1127, %1432 ], [ %1127, %1118 ], [ %2061, %2044 ], [ %1127, %2042 ], [ %2039, %2002 ], [ %1997, %1975 ], [ %1127, %1136 ]
  %2074 = phi float [ %1128, %1947 ], [ %1128, %1432 ], [ %1128, %1118 ], [ %2062, %2044 ], [ %1128, %2042 ], [ %2040, %2002 ], [ %1998, %1975 ], [ %1128, %1136 ]
  %2075 = phi float [ %1129, %1947 ], [ %1129, %1432 ], [ %1129, %1118 ], [ %2063, %2044 ], [ %1129, %2042 ], [ %2041, %2002 ], [ %1999, %1975 ], [ %1129, %1136 ]
  %2076 = phi float [ %1954, %1947 ], [ %1130, %1432 ], [ %1130, %1118 ], [ %1954, %2044 ], [ %1954, %2042 ], [ %1954, %2002 ], [ %1954, %1975 ], [ %1130, %1136 ]
  %2077 = phi float [ %1132, %1947 ], [ %1132, %1432 ], [ %1132, %1118 ], [ %2055, %2044 ], [ %1132, %2042 ], [ %2033, %2002 ], [ %1987, %1975 ], [ %1132, %1136 ]
  %2078 = phi float [ %1133, %1947 ], [ %1133, %1432 ], [ %1133, %1118 ], [ %2052, %2044 ], [ %1133, %2042 ], [ %2010, %2002 ], [ %1984, %1975 ], [ %1133, %1136 ]
  %2079 = phi float [ %1134, %1947 ], [ %1134, %1432 ], [ %1134, %1118 ], [ %2057, %2044 ], [ %1134, %2042 ], [ %2035, %2002 ], [ %1990, %1975 ], [ %1134, %1136 ]
  %2080 = phi float [ %1955, %1947 ], [ %1135, %1432 ], [ %1135, %1118 ], [ %1955, %2044 ], [ %1955, %2042 ], [ %1955, %2002 ], [ %1955, %1975 ], [ %1135, %1136 ]
  br i1 %545, label %3009, label %2081

; <label>:2081                                    ; preds = %2064
  %2082 = icmp ult i32 %598, 3
  %2083 = add i32 %42, 56
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = add i32 %42, 60
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2086, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = or i32 %2088, %2085
  %2090 = icmp eq i32 %2089, 0
  br i1 %2090, label %3009, label %2091

; <label>:2091                                    ; preds = %2081
  %2092 = and i32 %2085, 262144
  %2093 = icmp ne i32 %2092, 0
  %2094 = select i1 %2093, float %45, float 1.000000e+00
  %2095 = select i1 %2093, float %46, float 0.000000e+00
  %2096 = select i1 %2093, float %47, float 0.000000e+00
  %2097 = select i1 %2093, float %48, float 1.000000e+00
  %2098 = select i1 %2093, float %49, float %58
  %2099 = select i1 %2093, float %50, float %59
  %2100 = add i32 %42, 316
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = lshr i32 %2102, 16
  %2104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2103)  ; LegacyF16ToF32(value)
  %2105 = fmul fast float %2104, 0x3F50624DE0000000
  %2106 = add i32 %42, 120
  %2107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2108 = extractvalue %dx.types.ResRet.i32 %2107, 0
  %2109 = lshr i32 %2108, 16
  %2110 = and i32 %2109, 255
  %2111 = lshr i32 %2108, 24
  %2112 = add i32 %42, 324
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = and i32 %2114, 65535
  %2116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2115)  ; LegacyF16ToF32(value)
  %2117 = lshr i32 %2114, 16
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = add i32 %42, 64
  %2120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2119, i32 undef)  ; BufferLoad(srv,index,wot)
  %2121 = extractvalue %dx.types.ResRet.i32 %2120, 0
  %2122 = lshr i32 %2121, 22
  %2123 = shl nuw nsw i32 %2122, 5
  %2124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2123)  ; LegacyF16ToF32(value)
  %2125 = shl i32 %2121, 4
  %2126 = and i32 %2125, 32752
  %2127 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2126)  ; LegacyF16ToF32(value)
  %2128 = lshr i32 %2121, 7
  %2129 = and i32 %2128, 32752
  %2130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2129)  ; LegacyF16ToF32(value)
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 3
  %2133 = fmul fast float %2132, 1.000000e+03
  %2134 = fmul fast float %495, %2133
  %2135 = call float @dx.op.unary.f32(i32 22, float %2134)  ; Frc(value)
  %2136 = fadd fast float %2135, %485
  %2137 = fmul fast float %496, %2133
  %2138 = call float @dx.op.unary.f32(i32 22, float %2137)  ; Frc(value)
  %2139 = fadd fast float %2138, %487
  %2140 = fmul fast float %2105, %2133
  %2141 = call float @dx.op.unary.f32(i32 22, float %2140)  ; Frc(value)
  %2142 = fmul fast float %2141, 0x401921FB60000000
  %2143 = fadd fast float %2142, %2124
  %2144 = call float @dx.op.unary.f32(i32 13, float %2143)  ; Sin(value)
  %2145 = call float @dx.op.unary.f32(i32 12, float %2143)  ; Cos(value)
  %2146 = fsub fast float -0.000000e+00, %2144
  %2147 = fadd fast float %2098, -5.000000e-01
  %2148 = fadd fast float %2099, -5.000000e-01
  %2149 = fmul fast float %2116, %2147
  %2150 = fmul fast float %2118, %2148
  %2151 = fadd fast float %2149, 5.000000e-01
  %2152 = fadd fast float %2150, 5.000000e-01
  %2153 = fmul fast float %2127, %2151
  %2154 = fmul fast float %2130, %2152
  %2155 = fmul fast float %2145, %2153
  %2156 = call float @dx.op.tertiary.f32(i32 46, float %2146, float %2154, float %2155)  ; FMad(a,b,c)
  %2157 = fmul fast float %2144, %2153
  %2158 = call float @dx.op.tertiary.f32(i32 46, float %2145, float %2154, float %2157)  ; FMad(a,b,c)
  %2159 = fadd fast float %2136, %2156
  %2160 = fadd fast float %2139, %2158
  %2161 = icmp ugt i32 %2110, 1
  %2162 = icmp ugt i32 %2108, 33554431
  %2163 = or i1 %2162, %2161
  br i1 %2163, label %2164, label %2189

; <label>:2164                                    ; preds = %2091
  %2165 = add i32 %42, 260
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2165, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = lshr i32 %2167, 16
  %2169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2168)  ; LegacyF16ToF32(value)
  %2170 = fmul fast float %2132, %2169
  %2171 = call float @dx.op.unary.f32(i32 22, float %2170)  ; Frc(value)
  %2172 = mul nuw nsw i32 %2110, %2111
  %2173 = uitofp i32 %2172 to float
  %2174 = fmul fast float %2171, %2173
  %2175 = call float @dx.op.unary.f32(i32 27, float %2174)  ; Round_ni(value)
  %2176 = fptoui float %2175 to i32
  %2177 = urem i32 %2176, %2110
  %2178 = udiv i32 %2176, %2111
  %2179 = call float @dx.op.unary.f32(i32 22, float %2159)  ; Frc(value)
  %2180 = call float @dx.op.unary.f32(i32 22, float %2160)  ; Frc(value)
  %2181 = uitofp i32 %2177 to float
  %2182 = uitofp i32 %2178 to float
  %2183 = fadd fast float %2179, %2181
  %2184 = fadd fast float %2180, %2182
  %2185 = uitofp i32 %2110 to float
  %2186 = uitofp i32 %2111 to float
  %2187 = fdiv fast float %2183, %2185
  %2188 = fdiv fast float %2184, %2186
  br label %2189

; <label>:2189                                    ; preds = %2164, %2091
  %2190 = phi float [ %2187, %2164 ], [ %2159, %2091 ]
  %2191 = phi float [ %2188, %2164 ], [ %2160, %2091 ]
  %2192 = and i32 %2085, 16777216
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2303, label %2194

; <label>:2194                                    ; preds = %2189
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = extractvalue %dx.types.CBufRet.f32 %2195, 1
  %2198 = extractvalue %dx.types.CBufRet.f32 %2195, 2
  %2199 = fadd fast float %2196, %129
  %2200 = fadd fast float %2197, %130
  %2201 = fadd fast float %2198, %131
  %2202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2203 = extractvalue %dx.types.CBufRet.f32 %2202, 0
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = icmp eq i32 %43, 65535
  br i1 %2205, label %2300, label %2206

; <label>:2206                                    ; preds = %2194
  %2207 = lshr i32 %43, 1
  %2208 = shl i32 %2207, 2
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = and i32 %43, 1
  %2212 = icmp ne i32 %2211, 0
  %2213 = lshr i32 %2210, 16
  %2214 = and i32 %2210, 65535
  %2215 = select i1 %2212, i32 %2213, i32 %2214
  %2216 = icmp eq i32 %2215, 65535
  br i1 %2216, label %2296, label %2217

; <label>:2217                                    ; preds = %2206
  %2218 = mul nuw nsw i32 %2215, 40
  %2219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.f32 %2219, 0
  %2221 = extractvalue %dx.types.ResRet.f32 %2219, 1
  %2222 = extractvalue %dx.types.ResRet.f32 %2219, 2
  %2223 = add nuw nsw i32 %2218, 12
  %2224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2223, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.f32 %2224, 0
  %2226 = extractvalue %dx.types.ResRet.f32 %2224, 1
  %2227 = extractvalue %dx.types.ResRet.f32 %2224, 2
  %2228 = add nuw nsw i32 %2218, 24
  %2229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.f32 %2229, 0
  %2231 = extractvalue %dx.types.ResRet.f32 %2229, 1
  %2232 = extractvalue %dx.types.ResRet.f32 %2229, 2
  %2233 = add nuw nsw i32 %2218, 36
  %2234 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2233, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  %2236 = fsub fast float %2199, %2220
  %2237 = fsub fast float %2200, %2221
  %2238 = fsub fast float %2201, %2222
  %2239 = fmul fast float %2235, %2236
  %2240 = fmul fast float %2235, %2237
  %2241 = fmul fast float %2235, %2238
  %2242 = call float @dx.op.unary.f32(i32 27, float %2239)  ; Round_ni(value)
  %2243 = call float @dx.op.unary.f32(i32 27, float %2240)  ; Round_ni(value)
  %2244 = call float @dx.op.unary.f32(i32 27, float %2241)  ; Round_ni(value)
  %2245 = fadd fast float %2242, 5.000000e-01
  %2246 = fadd fast float %2243, 5.000000e-01
  %2247 = fadd fast float %2244, 5.000000e-01
  %2248 = fmul fast float %2245, %2225
  %2249 = fmul fast float %2246, %2226
  %2250 = fmul fast float %2247, %2227
  %2251 = shl i32 %43, 2
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = add i32 %2253, 0
  %2255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2256 = call float @dx.op.unary.f32(i32 22, float %2248)  ; Frc(value)
  %2257 = call float @dx.op.unary.f32(i32 22, float %2249)  ; Frc(value)
  %2258 = call float @dx.op.unary.f32(i32 22, float %2250)  ; Frc(value)
  %2259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2255, %dx.types.Handle %37, float %2256, float %2257, float %2258, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2260 = extractvalue %dx.types.ResRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.ResRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.ResRet.f32 %2259, 2
  %2263 = fmul fast float %2260, 1.023000e+03
  %2264 = fmul fast float %2261, 1.023000e+03
  %2265 = fmul fast float %2262, 1.023000e+03
  %2266 = fadd fast float %2263, 5.000000e-01
  %2267 = fadd fast float %2264, 5.000000e-01
  %2268 = fadd fast float %2265, 5.000000e-01
  %2269 = call float @dx.op.unary.f32(i32 27, float %2266)  ; Round_ni(value)
  %2270 = call float @dx.op.unary.f32(i32 27, float %2267)  ; Round_ni(value)
  %2271 = call float @dx.op.unary.f32(i32 27, float %2268)  ; Round_ni(value)
  %2272 = fsub fast float %2239, %2242
  %2273 = fsub fast float %2240, %2243
  %2274 = fsub fast float %2241, %2244
  %2275 = fmul fast float %2272, 7.500000e-01
  %2276 = fmul fast float %2273, 7.500000e-01
  %2277 = fmul fast float %2274, 7.500000e-01
  %2278 = fadd fast float %2242, 1.250000e-01
  %2279 = fadd fast float %2278, %2275
  %2280 = fadd fast float %2279, %2269
  %2281 = fadd fast float %2243, 1.250000e-01
  %2282 = fadd fast float %2281, %2276
  %2283 = fadd fast float %2282, %2270
  %2284 = fadd fast float %2244, 1.250000e-01
  %2285 = fadd fast float %2284, %2277
  %2286 = fadd fast float %2285, %2271
  %2287 = fmul fast float %2280, %2230
  %2288 = fmul fast float %2283, %2231
  %2289 = fmul fast float %2286, %2232
  %2290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = add i32 %2291, 0
  %2293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2292, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2293, %dx.types.Handle %35, float %2287, float %2288, float %2289, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2295 = extractvalue %dx.types.ResRet.f32 %2294, 0
  br label %2296

; <label>:2296                                    ; preds = %2217, %2206
  %2297 = phi float [ %2295, %2217 ], [ -1.000000e+00, %2206 ]
  %2298 = fadd fast float %2297, %2204
  %2299 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  br label %2300

; <label>:2300                                    ; preds = %2296, %2194
  %2301 = phi float [ %2299, %2296 ], [ %2204, %2194 ]
  %2302 = fmul fast float %2301, %594
  br label %2303

; <label>:2303                                    ; preds = %2300, %2189
  %2304 = phi float [ %2302, %2300 ], [ %594, %2189 ]
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 256
  %2308 = icmp eq i32 %2307, 0
  br i1 %2308, label %2355, label %2309

; <label>:2309                                    ; preds = %2303
  %2310 = add i32 %42, 512
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = add i32 %2312, 0
  %2314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2314, %dx.types.Handle %67, float %2190, float %2191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2316 = extractvalue %dx.types.ResRet.f32 %2315, 0
  %2317 = add i32 %42, 132
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2317, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = shl i32 %2319, 4
  %2321 = and i32 %2320, 32752
  %2322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2321)  ; LegacyF16ToF32(value)
  %2323 = lshr i32 %2319, 7
  %2324 = and i32 %2323, 32752
  %2325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2324)  ; LegacyF16ToF32(value)
  %2326 = fsub fast float 1.000000e+00, %2304
  %2327 = call float @dx.op.binary.f32(i32 35, float %2326, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2328 = bitcast float %2304 to i32
  %2329 = sitofp i32 %2328 to float
  %2330 = fadd fast float %2329, 0xC1CFBF8940000000
  %2331 = fmul fast float %2325, %2330
  %2332 = fadd fast float %2331, 0x41CFBF8940000000
  %2333 = fptosi float %2332 to i32
  %2334 = bitcast i32 %2333 to float
  %2335 = bitcast float %2327 to i32
  %2336 = sitofp i32 %2335 to float
  %2337 = fadd fast float %2336, 0xC1CFBF8940000000
  %2338 = fmul fast float %2337, %2325
  %2339 = fadd fast float %2338, 0x41CFBF8940000000
  %2340 = fptosi float %2339 to i32
  %2341 = bitcast i32 %2340 to float
  %2342 = fmul fast float %2334, %2322
  %2343 = fmul fast float %2341, %2322
  %2344 = fsub fast float %2327, %2342
  %2345 = fadd fast float %2343, %2327
  %2346 = call float @dx.op.unary.f32(i32 7, float %2344)  ; Saturate(value)
  %2347 = call float @dx.op.unary.f32(i32 7, float %2345)  ; Saturate(value)
  %2348 = fsub fast float %2316, %2346
  %2349 = fsub fast float %2347, %2346
  %2350 = bitcast float %2349 to i32
  %2351 = sub nsw i32 2129859010, %2350
  %2352 = bitcast i32 %2351 to float
  %2353 = fmul fast float %2352, %2348
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  br label %2355

; <label>:2355                                    ; preds = %2309, %2303
  %2356 = phi float [ %2354, %2309 ], [ %2304, %2303 ]
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = and i32 %2358, 128
  %2360 = icmp eq i32 %2359, 0
  br i1 %2360, label %2377, label %2361

; <label>:2361                                    ; preds = %2355
  %2362 = add i32 %42, 496
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = add i32 %2364, 0
  %2366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2366, %dx.types.Handle %67, float %2190, float %2191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2368 = extractvalue %dx.types.ResRet.f32 %2367, 0
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 524288
  %2372 = icmp ne i32 %2371, 0
  %2373 = fcmp fast ogt float %2368, 0x3FE0101020000000
  %2374 = select i1 %2373, float 1.000000e+00, float 0.000000e+00
  %2375 = select i1 %2372, float %2374, float %2368
  %2376 = fmul fast float %2375, %2356
  br label %2377

; <label>:2377                                    ; preds = %2361, %2355
  %2378 = phi float [ %2376, %2361 ], [ %2356, %2355 ]
  %2379 = fcmp fast ult float %2378, 0x3F70101020000000
  br i1 %2379, label %3009, label %2380

; <label>:2380                                    ; preds = %2377
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 16
  %2384 = icmp eq i32 %2383, 0
  br i1 %2384, label %2583, label %2385

; <label>:2385                                    ; preds = %2380
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2106, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = add i32 %42, 448
  %2389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2388, i32 undef)  ; BufferLoad(srv,index,wot)
  %2390 = extractvalue %dx.types.ResRet.i32 %2389, 0
  %2391 = add i32 %2390, 0
  %2392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2392, %dx.types.Handle %66, float %2190, float %2191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  %2395 = extractvalue %dx.types.ResRet.f32 %2393, 1
  %2396 = extractvalue %dx.types.ResRet.f32 %2393, 2
  %2397 = extractvalue %dx.types.ResRet.f32 %2393, 3
  %2398 = and i32 %2387, 255
  %2399 = uitofp i32 %2398 to float
  %2400 = lshr i32 %2387, 8
  %2401 = and i32 %2400, 255
  %2402 = uitofp i32 %2401 to float
  %2403 = fmul fast float %2397, %2399
  %2404 = fadd fast float %2403, %2402
  %2405 = fmul fast float %2404, 0x3F70101000000000
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 512
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2418, label %2410

; <label>:2410                                    ; preds = %2385
  %2411 = add i32 %42, 528
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = add i32 %2413, 0
  %2415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2415, %dx.types.Handle %67, float %2190, float %2191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2417 = extractvalue %dx.types.ResRet.f32 %2416, 0
  br label %2418

; <label>:2418                                    ; preds = %2410, %2385
  %2419 = phi float [ %2417, %2410 ], [ 1.000000e+00, %2385 ]
  %2420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2421 = extractvalue %dx.types.ResRet.i32 %2420, 0
  %2422 = and i32 %2421, 33554432
  %2423 = icmp eq i32 %2422, 0
  br i1 %2423, label %2530, label %2424

; <label>:2424                                    ; preds = %2418
  %2425 = add i32 %42, 256
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = and i32 %2427, 65535
  %2429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2428)  ; LegacyF16ToF32(value)
  %2430 = lshr i32 %2427, 16
  %2431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2430)  ; LegacyF16ToF32(value)
  %2432 = add i32 %42, 260
  %2433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2432, i32 undef)  ; BufferLoad(srv,index,wot)
  %2434 = extractvalue %dx.types.ResRet.i32 %2433, 0
  %2435 = and i32 %2434, 65535
  %2436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2435)  ; LegacyF16ToF32(value)
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = lshr i32 %2438, 24
  %2440 = uitofp i32 %2439 to float
  %2441 = fmul fast float %2440, 0x3F70101020000000
  %2442 = and i32 %2438, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = fmul fast float %2443, 0x3F70101020000000
  %2445 = lshr i32 %2438, 8
  %2446 = and i32 %2445, 255
  %2447 = uitofp i32 %2446 to float
  %2448 = fmul fast float %2447, 0x3F70101020000000
  %2449 = lshr i32 %2438, 16
  %2450 = and i32 %2449, 255
  %2451 = uitofp i32 %2450 to float
  %2452 = fmul fast float %2451, 0x3F70101020000000
  %2453 = add i32 %42, 252
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2453, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = lshr i32 %2455, 24
  %2457 = uitofp i32 %2456 to float
  %2458 = fmul fast float %2457, 0x3F70101020000000
  %2459 = and i32 %2455, 255
  %2460 = uitofp i32 %2459 to float
  %2461 = fmul fast float %2460, 0x3F70101020000000
  %2462 = lshr i32 %2455, 8
  %2463 = and i32 %2462, 255
  %2464 = uitofp i32 %2463 to float
  %2465 = fmul fast float %2464, 0x3F70101020000000
  %2466 = lshr i32 %2455, 16
  %2467 = and i32 %2466, 255
  %2468 = uitofp i32 %2467 to float
  %2469 = fmul fast float %2468, 0x3F70101020000000
  %2470 = bitcast float %2394 to i32
  %2471 = ashr i32 %2470, 1
  %2472 = sub nsw i32 1597463174, %2471
  %2473 = bitcast i32 %2472 to float
  %2474 = fmul fast float %2394, 5.000000e-01
  %2475 = fmul fast float %2473, %2473
  %2476 = fmul fast float %2475, %2474
  %2477 = fsub fast float 1.500000e+00, %2476
  %2478 = fmul fast float %2473, %2394
  %2479 = fmul fast float %2478, %2477
  %2480 = bitcast float %2395 to i32
  %2481 = ashr i32 %2480, 1
  %2482 = sub nsw i32 1597463174, %2481
  %2483 = bitcast i32 %2482 to float
  %2484 = fmul fast float %2395, 5.000000e-01
  %2485 = fmul fast float %2483, %2483
  %2486 = fmul fast float %2485, %2484
  %2487 = fsub fast float 1.500000e+00, %2486
  %2488 = fmul fast float %2483, %2395
  %2489 = fmul fast float %2488, %2487
  %2490 = bitcast float %2396 to i32
  %2491 = ashr i32 %2490, 1
  %2492 = sub nsw i32 1597463174, %2491
  %2493 = bitcast i32 %2492 to float
  %2494 = fmul fast float %2396, 5.000000e-01
  %2495 = fmul fast float %2493, %2493
  %2496 = fmul fast float %2495, %2494
  %2497 = fsub fast float 1.500000e+00, %2496
  %2498 = fmul fast float %2493, %2396
  %2499 = fmul fast float %2498, %2497
  %2500 = fsub fast float %2479, %2461
  %2501 = fsub fast float %2489, %2465
  %2502 = fsub fast float %2499, %2469
  %2503 = fmul fast float %2500, %2429
  %2504 = fmul fast float %2501, %2431
  %2505 = fmul fast float %2502, %2436
  %2506 = fadd fast float %2503, %2444
  %2507 = fadd fast float %2504, %2448
  %2508 = fadd fast float %2505, %2452
  %2509 = call float @dx.op.unary.f32(i32 7, float %2506)  ; Saturate(value)
  %2510 = call float @dx.op.unary.f32(i32 7, float %2507)  ; Saturate(value)
  %2511 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2512 = fmul fast float %2509, %2509
  %2513 = fmul fast float %2510, %2510
  %2514 = fmul fast float %2511, %2511
  %2515 = fsub fast float %2512, %2394
  %2516 = fsub fast float %2513, %2395
  %2517 = fsub fast float %2514, %2396
  %2518 = fmul fast float %2515, %2419
  %2519 = fmul fast float %2516, %2419
  %2520 = fmul fast float %2517, %2419
  %2521 = fadd fast float %2518, %2394
  %2522 = fadd fast float %2519, %2395
  %2523 = fadd fast float %2520, %2396
  %2524 = fadd fast float %2441, %2405
  %2525 = fsub fast float %2524, %2458
  %2526 = call float @dx.op.unary.f32(i32 7, float %2525)  ; Saturate(value)
  %2527 = fsub fast float %2526, %2405
  %2528 = fmul fast float %2527, %2419
  %2529 = fadd fast float %2528, %2405
  br label %2583

; <label>:2530                                    ; preds = %2418
  %2531 = and i32 %2421, 134217728
  %2532 = icmp eq i32 %2531, 0
  br i1 %2532, label %2567, label %2533

; <label>:2533                                    ; preds = %2530
  %2534 = call float @dx.op.unary.f32(i32 24, float %472)  ; Sqrt(value)
  %2535 = call float @dx.op.unary.f32(i32 24, float %476)  ; Sqrt(value)
  %2536 = call float @dx.op.unary.f32(i32 24, float %480)  ; Sqrt(value)
  %2537 = fadd fast float %2534, -5.000000e-01
  %2538 = fadd fast float %2535, -5.000000e-01
  %2539 = fadd fast float %2536, -5.000000e-01
  %2540 = fmul fast float %2537, %2419
  %2541 = fmul fast float %2538, %2419
  %2542 = fmul fast float %2539, %2419
  %2543 = fadd fast float %2540, 5.000000e-01
  %2544 = fadd fast float %2541, 5.000000e-01
  %2545 = fadd fast float %2542, 5.000000e-01
  %2546 = call float @dx.op.unary.f32(i32 24, float %2394)  ; Sqrt(value)
  %2547 = call float @dx.op.unary.f32(i32 24, float %2395)  ; Sqrt(value)
  %2548 = call float @dx.op.unary.f32(i32 24, float %2396)  ; Sqrt(value)
  %2549 = fmul fast float %2543, 2.000000e+00
  %2550 = fsub fast float 1.000000e+00, %2549
  %2551 = fmul fast float %2550, %2546
  %2552 = fadd fast float %2551, %2549
  %2553 = fmul fast float %2552, %2546
  %2554 = fmul fast float %2544, 2.000000e+00
  %2555 = fsub fast float 1.000000e+00, %2554
  %2556 = fmul fast float %2555, %2547
  %2557 = fadd fast float %2556, %2554
  %2558 = fmul fast float %2557, %2547
  %2559 = fmul fast float %2545, 2.000000e+00
  %2560 = fsub fast float 1.000000e+00, %2559
  %2561 = fmul fast float %2560, %2548
  %2562 = fadd fast float %2561, %2559
  %2563 = fmul fast float %2562, %2548
  %2564 = fmul fast float %2553, %2553
  %2565 = fmul fast float %2558, %2558
  %2566 = fmul fast float %2563, %2563
  br label %2583

; <label>:2567                                    ; preds = %2530
  %2568 = fmul fast float %472, %472
  %2569 = fmul fast float %476, %476
  %2570 = fmul fast float %480, %480
  %2571 = fadd fast float %2568, -1.000000e+00
  %2572 = fadd fast float %2569, -1.000000e+00
  %2573 = fadd fast float %2570, -1.000000e+00
  %2574 = fmul fast float %2419, %2571
  %2575 = fmul fast float %2419, %2572
  %2576 = fmul fast float %2419, %2573
  %2577 = fadd fast float %2574, 1.000000e+00
  %2578 = fadd fast float %2575, 1.000000e+00
  %2579 = fadd fast float %2576, 1.000000e+00
  %2580 = fmul fast float %2577, %2394
  %2581 = fmul fast float %2578, %2395
  %2582 = fmul fast float %2579, %2396
  br label %2583

; <label>:2583                                    ; preds = %2567, %2533, %2424, %2380
  %2584 = phi float [ %2529, %2424 ], [ %2405, %2533 ], [ %2405, %2567 ], [ 0x3FA23C0BE0000000, %2380 ]
  %2585 = phi float [ %2521, %2424 ], [ %2564, %2533 ], [ %2580, %2567 ], [ 1.000000e+00, %2380 ]
  %2586 = phi float [ %2522, %2424 ], [ %2565, %2533 ], [ %2581, %2567 ], [ 1.000000e+00, %2380 ]
  %2587 = phi float [ %2523, %2424 ], [ %2566, %2533 ], [ %2582, %2567 ], [ 1.000000e+00, %2380 ]
  %2588 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.i32 %2588, 1
  %2590 = and i32 %2589, 1
  %2591 = icmp ne i32 %2590, 0
  %2592 = add i32 %42, 356
  %2593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2592, i32 undef)  ; BufferLoad(srv,index,wot)
  %2594 = extractvalue %dx.types.ResRet.i32 %2593, 0
  %2595 = and i32 %2594, 32
  %2596 = icmp ne i32 %2595, 0
  %2597 = and i1 %2591, %2596
  %2598 = select i1 %2597, float 1.000000e+00, float %2585
  %2599 = select i1 %2597, float 0x3FD3333340000000, float %2586
  %2600 = select i1 %2597, float 0x3FD3333340000000, float %2587
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = and i32 %2602, 32
  %2604 = icmp eq i32 %2603, 0
  br i1 %2604, label %2677, label %2605

; <label>:2605                                    ; preds = %2583
  %2606 = add i32 %42, 124
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = add i32 %42, 464
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = add i32 %2611, 0
  %2613 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2612, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2614 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2613, %dx.types.Handle %66, float %2190, float %2191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2615 = extractvalue %dx.types.ResRet.f32 %2614, 0
  %2616 = extractvalue %dx.types.ResRet.f32 %2614, 1
  %2617 = extractvalue %dx.types.ResRet.f32 %2614, 2
  %2618 = extractvalue %dx.types.ResRet.f32 %2614, 3
  %2619 = and i32 %2608, 255
  %2620 = uitofp i32 %2619 to float
  %2621 = lshr i32 %2608, 8
  %2622 = and i32 %2621, 255
  %2623 = uitofp i32 %2622 to float
  %2624 = lshr i32 %2608, 16
  %2625 = and i32 %2624, 255
  %2626 = uitofp i32 %2625 to float
  %2627 = fmul fast float %2626, 0x3F70101000000000
  %2628 = fmul fast float %2615, %2620
  %2629 = fadd fast float %2628, %2623
  %2630 = fmul fast float %2629, 0x3F70101000000000
  %2631 = fadd fast float %2616, -5.000000e-01
  %2632 = fadd fast float %2618, -5.000000e-01
  %2633 = fmul fast float %2631, %2627
  %2634 = fmul fast float %2632, %2627
  %2635 = fadd fast float %2633, 5.000000e-01
  %2636 = fadd fast float %2634, 5.000000e-01
  %2637 = fmul fast float %2635, 2.000000e+00
  %2638 = fadd fast float %2637, -1.000000e+00
  %2639 = fmul fast float %2636, 2.000000e+00
  %2640 = fadd fast float %2639, -1.000000e+00
  %2641 = fadd fast float %2638, %2640
  %2642 = fmul fast float %2641, 5.000000e-01
  %2643 = fsub fast float %2638, %2640
  %2644 = fmul fast float %2643, 5.000000e-01
  %2645 = call float @dx.op.unary.f32(i32 6, float %2642)  ; FAbs(value)
  %2646 = fsub fast float 1.000000e+00, %2645
  %2647 = call float @dx.op.unary.f32(i32 6, float %2644)  ; FAbs(value)
  %2648 = fsub fast float %2646, %2647
  %2649 = call float @dx.op.dot3.f32(i32 55, float %2642, float %2644, float %2648, float %2642, float %2644, float %2648)  ; Dot3(ax,ay,az,bx,by,bz)
  %2650 = call float @dx.op.unary.f32(i32 25, float %2649)  ; Rsqrt(value)
  %2651 = fmul fast float %2642, %2650
  %2652 = fmul fast float %2644, %2650
  %2653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2654 = extractvalue %dx.types.ResRet.i32 %2653, 0
  %2655 = and i32 %2654, 67108864
  %2656 = icmp eq i32 %2655, 0
  br i1 %2656, label %2673, label %2657

; <label>:2657                                    ; preds = %2605
  %2658 = add i32 %42, 312
  %2659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2658, i32 undef)  ; BufferLoad(srv,index,wot)
  %2660 = extractvalue %dx.types.ResRet.i32 %2659, 0
  %2661 = and i32 %2660, 65535
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = and i32 %2664, 65535
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = lshr i32 %2660, 16
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = fsub fast float %2630, %2668
  %2670 = fmul fast float %2669, %2662
  %2671 = fadd fast float %2670, %2666
  %2672 = call float @dx.op.unary.f32(i32 7, float %2671)  ; Saturate(value)
  br label %2673

; <label>:2673                                    ; preds = %2657, %2605
  %2674 = phi float [ %2672, %2657 ], [ %2630, %2605 ]
  %2675 = call float @dx.op.dot2.f32(i32 54, float %2651, float %2652, float %2094, float %2095)  ; Dot2(ax,ay,bx,by)
  %2676 = call float @dx.op.dot2.f32(i32 54, float %2651, float %2652, float %2096, float %2097)  ; Dot2(ax,ay,bx,by)
  br label %2677

; <label>:2677                                    ; preds = %2673, %2583
  %2678 = phi float [ %2674, %2673 ], [ 0x3FD6666660000000, %2583 ]
  %2679 = phi float [ %2675, %2673 ], [ 0.000000e+00, %2583 ]
  %2680 = phi float [ %2676, %2673 ], [ 0.000000e+00, %2583 ]
  %2681 = phi float [ %2617, %2673 ], [ 1.000000e+00, %2583 ]
  %2682 = add i32 %42, 192
  %2683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2684 = extractvalue %dx.types.ResRet.i32 %2683, 0
  %2685 = lshr i32 %2684, 22
  %2686 = shl nuw nsw i32 %2685, 5
  %2687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2686)  ; LegacyF16ToF32(value)
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = and i32 %2689, 64
  %2691 = icmp eq i32 %2690, 0
  br i1 %2691, label %2725, label %2692

; <label>:2692                                    ; preds = %2677
  %2693 = add i32 %42, 480
  %2694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2693, i32 undef)  ; BufferLoad(srv,index,wot)
  %2695 = extractvalue %dx.types.ResRet.i32 %2694, 0
  %2696 = add i32 %2695, 0
  %2697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2696, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = and i32 %2699, 131072
  %2701 = icmp eq i32 %2700, 0
  %2702 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2697, %dx.types.Handle %66, float %2190, float %2191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2703 = extractvalue %dx.types.ResRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.ResRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.ResRet.f32 %2702, 2
  %2706 = fmul fast float %2703, %460
  %2707 = fmul fast float %2704, %463
  %2708 = fmul fast float %2705, %466
  br i1 %2701, label %2715, label %2709

; <label>:2709                                    ; preds = %2692
  %2710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2711 = extractvalue %dx.types.CBufRet.f32 %2710, 0
  %2712 = fmul fast float %2711, %2706
  %2713 = fmul fast float %2711, %2707
  %2714 = fmul fast float %2711, %2708
  br label %2715

; <label>:2715                                    ; preds = %2709, %2692
  %2716 = phi float [ %2712, %2709 ], [ %2706, %2692 ]
  %2717 = phi float [ %2713, %2709 ], [ %2707, %2692 ]
  %2718 = phi float [ %2714, %2709 ], [ %2708, %2692 ]
  %2719 = fmul fast float %2716, %2687
  %2720 = select i1 %370, float %2719, float %2716
  %2721 = call float @dx.op.dot3.f32(i32 55, float %2720, float %2717, float %2718, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2722 = select i1 %370, float 0.000000e+00, float %2716
  %2723 = select i1 %370, float %2721, float %2717
  %2724 = select i1 %370, float 0.000000e+00, float %2718
  br label %2725

; <label>:2725                                    ; preds = %2715, %2677
  %2726 = phi float [ %2722, %2715 ], [ 0.000000e+00, %2677 ]
  %2727 = phi float [ %2723, %2715 ], [ 0.000000e+00, %2677 ]
  %2728 = phi float [ %2724, %2715 ], [ 0.000000e+00, %2677 ]
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = and i32 %2730, 10240
  %2732 = icmp eq i32 %2731, 0
  br i1 %2732, label %2777, label %2733

; <label>:2733                                    ; preds = %2725
  %2734 = add i32 %42, 544
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2734, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = add i32 %2736, 0
  %2738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2739 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2738, %dx.types.Handle %67, float %2190, float %2191, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 1
  %2741 = extractvalue %dx.types.ResRet.f32 %2739, 3
  %2742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.i32 %2742, 0
  %2744 = and i32 %2743, 1048576
  %2745 = icmp ne i32 %2744, 0
  %2746 = and i32 %2743, 8192
  %2747 = icmp eq i32 %2746, 0
  br i1 %2747, label %2763, label %2748

; <label>:2748                                    ; preds = %2733
  %2749 = extractvalue %dx.types.ResRet.f32 %2739, 2
  %2750 = select i1 %2745, float %2749, float %2740
  %2751 = extractvalue %dx.types.ResRet.f32 %2739, 0
  %2752 = select i1 %2745, float %2751, float %2740
  %2753 = add i32 %42, 128
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = lshr i32 %2755, 16
  %2757 = and i32 %2756, 255
  %2758 = uitofp i32 %2757 to float
  %2759 = fmul fast float %2758, 0x3F80101020000000
  %2760 = fmul fast float %2759, %2752
  %2761 = fmul fast float %2759, %2740
  %2762 = fmul fast float %2759, %2750
  br label %2763

; <label>:2763                                    ; preds = %2748, %2733
  %2764 = phi float [ %2760, %2748 ], [ 0.000000e+00, %2733 ]
  %2765 = phi float [ %2761, %2748 ], [ 0.000000e+00, %2733 ]
  %2766 = phi float [ %2762, %2748 ], [ 0.000000e+00, %2733 ]
  %2767 = and i32 %2743, 2048
  %2768 = icmp eq i32 %2767, 0
  br i1 %2768, label %2777, label %2769

; <label>:2769                                    ; preds = %2763
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2682, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = shl i32 %2771, 4
  %2773 = and i32 %2772, 32752
  %2774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2773)  ; LegacyF16ToF32(value)
  %2775 = fmul fast float %2774, %2741
  %2776 = call float @dx.op.binary.f32(i32 35, float %2775, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2777

; <label>:2777                                    ; preds = %2769, %2763, %2725
  %2778 = phi float [ %2764, %2769 ], [ %2764, %2763 ], [ 0.000000e+00, %2725 ]
  %2779 = phi float [ %2765, %2769 ], [ %2765, %2763 ], [ 0.000000e+00, %2725 ]
  %2780 = phi float [ %2766, %2769 ], [ %2766, %2763 ], [ 0.000000e+00, %2725 ]
  %2781 = phi float [ %2776, %2769 ], [ 0x3F70101020000000, %2763 ], [ 0x3F70101020000000, %2725 ]
  %2782 = add i32 %42, 128
  %2783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.i32 %2783, 0
  %2785 = and i32 %2784, 255
  %2786 = uitofp i32 %2785 to float
  %2787 = lshr i32 %2784, 8
  %2788 = and i32 %2787, 255
  %2789 = uitofp i32 %2788 to float
  %2790 = call float @dx.op.dot3.f32(i32 55, float %2598, float %2599, float %2600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2791 = fmul fast float %2789, %2790
  %2792 = fadd fast float %2791, %2786
  %2793 = fmul fast float %2792, 0x3F70101020000000
  %2794 = call float @dx.op.unary.f32(i32 7, float %2793)  ; Saturate(value)
  br i1 %2082, label %2795, label %2803

; <label>:2795                                    ; preds = %2777
  %2796 = fsub fast float 1.000000e+00, %2378
  %2797 = fmul fast float %2796, %2070
  %2798 = fmul fast float %2796, %2071
  %2799 = fmul fast float %2796, %2072
  %2800 = fmul fast float %2796, %2067
  %2801 = fmul fast float %2796, %2068
  %2802 = fmul fast float %2796, %2069
  br label %2803

; <label>:2803                                    ; preds = %2795, %2777
  %2804 = phi float [ %2800, %2795 ], [ %2067, %2777 ]
  %2805 = phi float [ %2801, %2795 ], [ %2068, %2777 ]
  %2806 = phi float [ %2802, %2795 ], [ %2069, %2777 ]
  %2807 = phi float [ %2797, %2795 ], [ %2070, %2777 ]
  %2808 = phi float [ %2798, %2795 ], [ %2071, %2777 ]
  %2809 = phi float [ %2799, %2795 ], [ %2072, %2777 ]
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2083, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = and i32 %2811, 3
  %2813 = icmp eq i32 %2812, 3
  br i1 %2813, label %2892, label %2814

; <label>:2814                                    ; preds = %2803
  %2815 = and i32 %2811, 16
  %2816 = icmp ne i32 %2815, 0
  %2817 = select i1 %2816, float %2378, float 0.000000e+00
  %2818 = icmp eq i32 %2812, 0
  br i1 %2818, label %2819, label %2847

; <label>:2819                                    ; preds = %2814
  %2820 = and i32 %2811, 64
  %2821 = icmp ne i32 %2820, 0
  %2822 = select i1 %2821, float %2378, float 0.000000e+00
  %2823 = fsub fast float %2598, %2807
  %2824 = fsub fast float %2599, %2808
  %2825 = fsub fast float %2600, %2809
  %2826 = fmul fast float %2817, %2823
  %2827 = fmul fast float %2817, %2824
  %2828 = fmul fast float %2817, %2825
  %2829 = fadd fast float %2826, %2807
  %2830 = fadd fast float %2827, %2808
  %2831 = fadd fast float %2828, %2809
  %2832 = fsub fast float %2584, %2076
  %2833 = fmul fast float %2817, %2832
  %2834 = fadd fast float %2833, %2076
  %2835 = fsub fast float %2726, %2804
  %2836 = fsub fast float %2727, %2805
  %2837 = fsub fast float %2728, %2806
  %2838 = fmul fast float %2822, %2835
  %2839 = fmul fast float %2822, %2836
  %2840 = fmul fast float %2822, %2837
  %2841 = fadd fast float %2838, %2804
  %2842 = fadd fast float %2839, %2805
  %2843 = fadd fast float %2840, %2806
  %2844 = fsub fast float %2794, %2080
  %2845 = fmul fast float %2817, %2844
  %2846 = fadd fast float %2845, %2080
  br label %2892

; <label>:2847                                    ; preds = %2814
  %2848 = icmp eq i32 %2812, 1
  br i1 %2848, label %2849, label %2862

; <label>:2849                                    ; preds = %2847
  %2850 = fadd fast float %2598, -1.000000e+00
  %2851 = fadd fast float %2599, -1.000000e+00
  %2852 = fadd fast float %2600, -1.000000e+00
  %2853 = fmul fast float %2817, %2850
  %2854 = fmul fast float %2817, %2851
  %2855 = fmul fast float %2817, %2852
  %2856 = fadd fast float %2853, 1.000000e+00
  %2857 = fadd fast float %2854, 1.000000e+00
  %2858 = fadd fast float %2855, 1.000000e+00
  %2859 = fmul fast float %2856, %2807
  %2860 = fmul fast float %2857, %2808
  %2861 = fmul fast float %2858, %2809
  br label %2892

; <label>:2862                                    ; preds = %2847
  %2863 = icmp eq i32 %2812, 2
  br i1 %2863, label %2864, label %2892

; <label>:2864                                    ; preds = %2862
  %2865 = call float @dx.op.unary.f32(i32 24, float %2598)  ; Sqrt(value)
  %2866 = call float @dx.op.unary.f32(i32 24, float %2599)  ; Sqrt(value)
  %2867 = call float @dx.op.unary.f32(i32 24, float %2600)  ; Sqrt(value)
  %2868 = fadd fast float %2865, -5.000000e-01
  %2869 = fadd fast float %2866, -5.000000e-01
  %2870 = fadd fast float %2867, -5.000000e-01
  %2871 = fmul fast float %2868, %2817
  %2872 = fmul fast float %2869, %2817
  %2873 = fmul fast float %2870, %2817
  %2874 = fadd fast float %2871, 5.000000e-01
  %2875 = fadd fast float %2872, 5.000000e-01
  %2876 = fadd fast float %2873, 5.000000e-01
  %2877 = fmul fast float %2874, 2.000000e+00
  %2878 = fsub fast float 1.000000e+00, %2877
  %2879 = fmul fast float %2878, %2807
  %2880 = fadd fast float %2879, %2877
  %2881 = fmul fast float %2880, %2807
  %2882 = fmul fast float %2875, 2.000000e+00
  %2883 = fsub fast float 1.000000e+00, %2882
  %2884 = fmul fast float %2883, %2808
  %2885 = fadd fast float %2884, %2882
  %2886 = fmul fast float %2885, %2808
  %2887 = fmul fast float %2876, 2.000000e+00
  %2888 = fsub fast float 1.000000e+00, %2887
  %2889 = fmul fast float %2888, %2809
  %2890 = fadd fast float %2889, %2887
  %2891 = fmul fast float %2890, %2809
  br label %2892

; <label>:2892                                    ; preds = %2864, %2862, %2849, %2819, %2803
  %2893 = phi float [ %2804, %2803 ], [ %2804, %2864 ], [ %2804, %2862 ], [ %2804, %2849 ], [ %2841, %2819 ]
  %2894 = phi float [ %2805, %2803 ], [ %2805, %2864 ], [ %2805, %2862 ], [ %2805, %2849 ], [ %2842, %2819 ]
  %2895 = phi float [ %2806, %2803 ], [ %2806, %2864 ], [ %2806, %2862 ], [ %2806, %2849 ], [ %2843, %2819 ]
  %2896 = phi float [ %2807, %2803 ], [ %2881, %2864 ], [ %2807, %2862 ], [ %2859, %2849 ], [ %2829, %2819 ]
  %2897 = phi float [ %2808, %2803 ], [ %2886, %2864 ], [ %2808, %2862 ], [ %2860, %2849 ], [ %2830, %2819 ]
  %2898 = phi float [ %2809, %2803 ], [ %2891, %2864 ], [ %2809, %2862 ], [ %2861, %2849 ], [ %2831, %2819 ]
  %2899 = phi float [ %2076, %2803 ], [ %2076, %2864 ], [ %2076, %2862 ], [ %2076, %2849 ], [ %2834, %2819 ]
  %2900 = phi float [ %2080, %2803 ], [ %2080, %2864 ], [ %2080, %2862 ], [ %2080, %2849 ], [ %2846, %2819 ]
  %2901 = and i32 %2811, 12
  %2902 = icmp eq i32 %2901, 12
  br i1 %2902, label %3009, label %2903

; <label>:2903                                    ; preds = %2892
  %2904 = and i32 %2811, 2097184
  %2905 = icmp eq i32 %2904, 2097184
  %2906 = select i1 %2905, float %2378, float 0.000000e+00
  %2907 = and i32 %2811, 4194336
  %2908 = icmp eq i32 %2907, 4194336
  %2909 = select i1 %2908, float %2378, float 0.000000e+00
  %2910 = and i32 %2811, 8388640
  %2911 = icmp eq i32 %2910, 8388640
  %2912 = select i1 %2911, float %2378, float 0.000000e+00
  %2913 = and i32 %2811, 2048
  %2914 = icmp ne i32 %2913, 0
  %2915 = select i1 %2914, float %2378, float 0.000000e+00
  %2916 = and i32 %2811, 8192
  %2917 = icmp ne i32 %2916, 0
  %2918 = select i1 %2917, float %2378, float 0.000000e+00
  %2919 = icmp eq i32 %2901, 0
  br i1 %2919, label %2920, label %2945

; <label>:2920                                    ; preds = %2903
  %2921 = fsub fast float %2679, %2065
  %2922 = fsub fast float %2680, %2066
  %2923 = fmul fast float %2906, %2921
  %2924 = fmul fast float %2906, %2922
  %2925 = fadd fast float %2923, %2065
  %2926 = fadd fast float %2924, %2066
  %2927 = fsub fast float %2681, %2078
  %2928 = fmul fast float %2909, %2927
  %2929 = fadd fast float %2928, %2078
  %2930 = fsub fast float %2678, %2077
  %2931 = fmul fast float %2912, %2930
  %2932 = fadd fast float %2931, %2077
  %2933 = fsub fast float %2781, %2079
  %2934 = fmul fast float %2915, %2933
  %2935 = fadd fast float %2934, %2079
  %2936 = fsub fast float %2778, %2073
  %2937 = fsub fast float %2779, %2074
  %2938 = fsub fast float %2780, %2075
  %2939 = fmul fast float %2918, %2936
  %2940 = fmul fast float %2918, %2937
  %2941 = fmul fast float %2918, %2938
  %2942 = fadd fast float %2939, %2073
  %2943 = fadd fast float %2940, %2074
  %2944 = fadd fast float %2941, %2075
  br label %3009

; <label>:2945                                    ; preds = %2903
  %2946 = icmp eq i32 %2901, 4
  br i1 %2946, label %2947, label %2987

; <label>:2947                                    ; preds = %2945
  %2948 = fmul fast float %2906, %2679
  %2949 = fmul fast float %2906, %2680
  %2950 = fadd fast float %2948, %2065
  %2951 = fadd fast float %2949, %2066
  %2952 = call float @dx.op.binary.f32(i32 36, float %2078, float %2681)  ; FMin(a,b)
  %2953 = fsub fast float %2952, %2078
  %2954 = fmul fast float %2953, %2909
  %2955 = fadd fast float %2954, %2078
  %2956 = fadd fast float %2678, %2077
  %2957 = fmul fast float %2956, 0x3FF337FAE0000000
  %2958 = fmul fast float %2077, %2077
  %2959 = fmul fast float %2678, %2678
  %2960 = fadd fast float %2959, %2958
  %2961 = fmul fast float %2960, 0x3FE5152B00000000
  %2962 = fmul fast float %2077, 0xBFCC1F85E0000000
  %2963 = fmul fast float %2962, %2678
  %2964 = fadd fast float %2963, 0xBFE1363700000000
  %2965 = fadd fast float %2964, %2957
  %2966 = fsub fast float %2965, %2961
  %2967 = fmul fast float %2956, 0x3FBA6F0D00000000
  %2968 = fmul fast float %2960, 0x3FD0432880000000
  %2969 = fmul fast float %2077, 0xBFEF110800000000
  %2970 = fmul fast float %2969, %2678
  %2971 = fadd fast float %2970, 1.000000e+00
  %2972 = fsub fast float %2971, %2967
  %2973 = fadd fast float %2972, %2968
  %2974 = fdiv fast float %2966, %2973
  %2975 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2976 = fsub fast float %2975, %2077
  %2977 = fmul fast float %2976, %2912
  %2978 = fadd fast float %2977, %2077
  %2979 = fmul fast float %2915, %2781
  %2980 = fadd fast float %2979, %2079
  %2981 = fmul fast float %2918, %2778
  %2982 = fmul fast float %2918, %2779
  %2983 = fmul fast float %2918, %2780
  %2984 = fadd fast float %2981, %2073
  %2985 = fadd fast float %2982, %2074
  %2986 = fadd fast float %2983, %2075
  br label %3009

; <label>:2987                                    ; preds = %2945
  %2988 = icmp eq i32 %2901, 8
  br i1 %2988, label %2989, label %3009

; <label>:2989                                    ; preds = %2987
  %2990 = fmul fast float %2906, %2679
  %2991 = fmul fast float %2906, %2680
  %2992 = fadd fast float %2990, %2065
  %2993 = fadd fast float %2991, %2066
  %2994 = call float @dx.op.binary.f32(i32 36, float %2078, float %2681)  ; FMin(a,b)
  %2995 = fsub fast float %2994, %2078
  %2996 = fmul fast float %2995, %2909
  %2997 = fadd fast float %2996, %2078
  %2998 = fsub fast float %2678, %2077
  %2999 = fmul fast float %2912, %2998
  %3000 = fadd fast float %2999, %2077
  %3001 = fmul fast float %2915, %2781
  %3002 = fadd fast float %3001, %2079
  %3003 = fmul fast float %2918, %2778
  %3004 = fmul fast float %2918, %2779
  %3005 = fmul fast float %2918, %2780
  %3006 = fadd fast float %3003, %2073
  %3007 = fadd fast float %3004, %2074
  %3008 = fadd fast float %3005, %2075
  br label %3009

; <label>:3009                                    ; preds = %2989, %2987, %2947, %2920, %2892, %2377, %2081, %2064
  %3010 = phi float [ %2065, %2892 ], [ %2065, %2377 ], [ %2065, %2064 ], [ %2992, %2989 ], [ %2065, %2987 ], [ %2950, %2947 ], [ %2925, %2920 ], [ %2065, %2081 ]
  %3011 = phi float [ %2066, %2892 ], [ %2066, %2377 ], [ %2066, %2064 ], [ %2993, %2989 ], [ %2066, %2987 ], [ %2951, %2947 ], [ %2926, %2920 ], [ %2066, %2081 ]
  %3012 = phi float [ %2893, %2892 ], [ %2067, %2377 ], [ %2067, %2064 ], [ %2893, %2989 ], [ %2893, %2987 ], [ %2893, %2947 ], [ %2893, %2920 ], [ %2067, %2081 ]
  %3013 = phi float [ %2894, %2892 ], [ %2068, %2377 ], [ %2068, %2064 ], [ %2894, %2989 ], [ %2894, %2987 ], [ %2894, %2947 ], [ %2894, %2920 ], [ %2068, %2081 ]
  %3014 = phi float [ %2895, %2892 ], [ %2069, %2377 ], [ %2069, %2064 ], [ %2895, %2989 ], [ %2895, %2987 ], [ %2895, %2947 ], [ %2895, %2920 ], [ %2069, %2081 ]
  %3015 = phi float [ %2896, %2892 ], [ %2070, %2377 ], [ %2070, %2064 ], [ %2896, %2989 ], [ %2896, %2987 ], [ %2896, %2947 ], [ %2896, %2920 ], [ %2070, %2081 ]
  %3016 = phi float [ %2897, %2892 ], [ %2071, %2377 ], [ %2071, %2064 ], [ %2897, %2989 ], [ %2897, %2987 ], [ %2897, %2947 ], [ %2897, %2920 ], [ %2071, %2081 ]
  %3017 = phi float [ %2898, %2892 ], [ %2072, %2377 ], [ %2072, %2064 ], [ %2898, %2989 ], [ %2898, %2987 ], [ %2898, %2947 ], [ %2898, %2920 ], [ %2072, %2081 ]
  %3018 = phi float [ %2073, %2892 ], [ %2073, %2377 ], [ %2073, %2064 ], [ %3006, %2989 ], [ %2073, %2987 ], [ %2984, %2947 ], [ %2942, %2920 ], [ %2073, %2081 ]
  %3019 = phi float [ %2074, %2892 ], [ %2074, %2377 ], [ %2074, %2064 ], [ %3007, %2989 ], [ %2074, %2987 ], [ %2985, %2947 ], [ %2943, %2920 ], [ %2074, %2081 ]
  %3020 = phi float [ %2075, %2892 ], [ %2075, %2377 ], [ %2075, %2064 ], [ %3008, %2989 ], [ %2075, %2987 ], [ %2986, %2947 ], [ %2944, %2920 ], [ %2075, %2081 ]
  %3021 = phi float [ %2899, %2892 ], [ %2076, %2377 ], [ %2076, %2064 ], [ %2899, %2989 ], [ %2899, %2987 ], [ %2899, %2947 ], [ %2899, %2920 ], [ %2076, %2081 ]
  %3022 = phi float [ %2077, %2892 ], [ %2077, %2377 ], [ %2077, %2064 ], [ %3000, %2989 ], [ %2077, %2987 ], [ %2978, %2947 ], [ %2932, %2920 ], [ %2077, %2081 ]
  %3023 = phi float [ %2078, %2892 ], [ %2078, %2377 ], [ %2078, %2064 ], [ %2997, %2989 ], [ %2078, %2987 ], [ %2955, %2947 ], [ %2929, %2920 ], [ %2078, %2081 ]
  %3024 = phi float [ %2079, %2892 ], [ %2079, %2377 ], [ %2079, %2064 ], [ %3002, %2989 ], [ %2079, %2987 ], [ %2980, %2947 ], [ %2935, %2920 ], [ %2079, %2081 ]
  %3025 = phi float [ %2900, %2892 ], [ %2080, %2377 ], [ %2080, %2064 ], [ %2900, %2989 ], [ %2900, %2987 ], [ %2900, %2947 ], [ %2900, %2920 ], [ %2080, %2081 ]
  br i1 %547, label %3954, label %3026

; <label>:3026                                    ; preds = %3009
  %3027 = icmp ult i32 %598, 4
  %3028 = add i32 %42, 72
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = add i32 %42, 76
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = or i32 %3033, %3030
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3954, label %3036

; <label>:3036                                    ; preds = %3026
  %3037 = and i32 %3030, 262144
  %3038 = icmp ne i32 %3037, 0
  %3039 = select i1 %3038, float %45, float 1.000000e+00
  %3040 = select i1 %3038, float %46, float 0.000000e+00
  %3041 = select i1 %3038, float %47, float 0.000000e+00
  %3042 = select i1 %3038, float %48, float 1.000000e+00
  %3043 = select i1 %3038, float %49, float %58
  %3044 = select i1 %3038, float %50, float %59
  %3045 = add i32 %42, 332
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = lshr i32 %3047, 16
  %3049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3048)  ; LegacyF16ToF32(value)
  %3050 = fmul fast float %3049, 0x3F50624DE0000000
  %3051 = add i32 %42, 136
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = lshr i32 %3053, 16
  %3055 = and i32 %3054, 255
  %3056 = lshr i32 %3053, 24
  %3057 = add i32 %42, 340
  %3058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3057, i32 undef)  ; BufferLoad(srv,index,wot)
  %3059 = extractvalue %dx.types.ResRet.i32 %3058, 0
  %3060 = and i32 %3059, 65535
  %3061 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3060)  ; LegacyF16ToF32(value)
  %3062 = lshr i32 %3059, 16
  %3063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3062)  ; LegacyF16ToF32(value)
  %3064 = add i32 %42, 80
  %3065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3064, i32 undef)  ; BufferLoad(srv,index,wot)
  %3066 = extractvalue %dx.types.ResRet.i32 %3065, 0
  %3067 = lshr i32 %3066, 22
  %3068 = shl nuw nsw i32 %3067, 5
  %3069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3068)  ; LegacyF16ToF32(value)
  %3070 = shl i32 %3066, 4
  %3071 = and i32 %3070, 32752
  %3072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3071)  ; LegacyF16ToF32(value)
  %3073 = lshr i32 %3066, 7
  %3074 = and i32 %3073, 32752
  %3075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3074)  ; LegacyF16ToF32(value)
  %3076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %3077 = extractvalue %dx.types.CBufRet.f32 %3076, 3
  %3078 = fmul fast float %3077, 1.000000e+03
  %3079 = fmul fast float %537, %3078
  %3080 = call float @dx.op.unary.f32(i32 22, float %3079)  ; Frc(value)
  %3081 = fadd fast float %3080, %527
  %3082 = fmul fast float %538, %3078
  %3083 = call float @dx.op.unary.f32(i32 22, float %3082)  ; Frc(value)
  %3084 = fadd fast float %3083, %529
  %3085 = fmul fast float %3050, %3078
  %3086 = call float @dx.op.unary.f32(i32 22, float %3085)  ; Frc(value)
  %3087 = fmul fast float %3086, 0x401921FB60000000
  %3088 = fadd fast float %3087, %3069
  %3089 = call float @dx.op.unary.f32(i32 13, float %3088)  ; Sin(value)
  %3090 = call float @dx.op.unary.f32(i32 12, float %3088)  ; Cos(value)
  %3091 = fsub fast float -0.000000e+00, %3089
  %3092 = fadd fast float %3043, -5.000000e-01
  %3093 = fadd fast float %3044, -5.000000e-01
  %3094 = fmul fast float %3061, %3092
  %3095 = fmul fast float %3063, %3093
  %3096 = fadd fast float %3094, 5.000000e-01
  %3097 = fadd fast float %3095, 5.000000e-01
  %3098 = fmul fast float %3072, %3096
  %3099 = fmul fast float %3075, %3097
  %3100 = fmul fast float %3090, %3098
  %3101 = call float @dx.op.tertiary.f32(i32 46, float %3091, float %3099, float %3100)  ; FMad(a,b,c)
  %3102 = fmul fast float %3089, %3098
  %3103 = call float @dx.op.tertiary.f32(i32 46, float %3090, float %3099, float %3102)  ; FMad(a,b,c)
  %3104 = fadd fast float %3081, %3101
  %3105 = fadd fast float %3084, %3103
  %3106 = icmp ugt i32 %3055, 1
  %3107 = icmp ugt i32 %3053, 33554431
  %3108 = or i1 %3107, %3106
  br i1 %3108, label %3109, label %3134

; <label>:3109                                    ; preds = %3036
  %3110 = add i32 %42, 276
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = lshr i32 %3112, 16
  %3114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3113)  ; LegacyF16ToF32(value)
  %3115 = fmul fast float %3077, %3114
  %3116 = call float @dx.op.unary.f32(i32 22, float %3115)  ; Frc(value)
  %3117 = mul nuw nsw i32 %3055, %3056
  %3118 = uitofp i32 %3117 to float
  %3119 = fmul fast float %3116, %3118
  %3120 = call float @dx.op.unary.f32(i32 27, float %3119)  ; Round_ni(value)
  %3121 = fptoui float %3120 to i32
  %3122 = urem i32 %3121, %3055
  %3123 = udiv i32 %3121, %3056
  %3124 = call float @dx.op.unary.f32(i32 22, float %3104)  ; Frc(value)
  %3125 = call float @dx.op.unary.f32(i32 22, float %3105)  ; Frc(value)
  %3126 = uitofp i32 %3122 to float
  %3127 = uitofp i32 %3123 to float
  %3128 = fadd fast float %3124, %3126
  %3129 = fadd fast float %3125, %3127
  %3130 = uitofp i32 %3055 to float
  %3131 = uitofp i32 %3056 to float
  %3132 = fdiv fast float %3128, %3130
  %3133 = fdiv fast float %3129, %3131
  br label %3134

; <label>:3134                                    ; preds = %3109, %3036
  %3135 = phi float [ %3132, %3109 ], [ %3104, %3036 ]
  %3136 = phi float [ %3133, %3109 ], [ %3105, %3036 ]
  %3137 = and i32 %3030, 16777216
  %3138 = icmp eq i32 %3137, 0
  br i1 %3138, label %3248, label %3139

; <label>:3139                                    ; preds = %3134
  %3140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %3141 = extractvalue %dx.types.CBufRet.f32 %3140, 0
  %3142 = extractvalue %dx.types.CBufRet.f32 %3140, 1
  %3143 = extractvalue %dx.types.CBufRet.f32 %3140, 2
  %3144 = fadd fast float %3141, %129
  %3145 = fadd fast float %3142, %130
  %3146 = fadd fast float %3143, %131
  %3147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %3148 = extractvalue %dx.types.CBufRet.f32 %3147, 0
  %3149 = call float @dx.op.unary.f32(i32 7, float %3148)  ; Saturate(value)
  %3150 = icmp eq i32 %43, 65535
  br i1 %3150, label %3245, label %3151

; <label>:3151                                    ; preds = %3139
  %3152 = lshr i32 %43, 1
  %3153 = shl i32 %3152, 2
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = and i32 %43, 1
  %3157 = icmp ne i32 %3156, 0
  %3158 = lshr i32 %3155, 16
  %3159 = and i32 %3155, 65535
  %3160 = select i1 %3157, i32 %3158, i32 %3159
  %3161 = icmp eq i32 %3160, 65535
  br i1 %3161, label %3241, label %3162

; <label>:3162                                    ; preds = %3151
  %3163 = mul nuw nsw i32 %3160, 40
  %3164 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.f32 %3164, 0
  %3166 = extractvalue %dx.types.ResRet.f32 %3164, 1
  %3167 = extractvalue %dx.types.ResRet.f32 %3164, 2
  %3168 = add nuw nsw i32 %3163, 12
  %3169 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3168, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.f32 %3169, 0
  %3171 = extractvalue %dx.types.ResRet.f32 %3169, 1
  %3172 = extractvalue %dx.types.ResRet.f32 %3169, 2
  %3173 = add nuw nsw i32 %3163, 24
  %3174 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3173, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.f32 %3174, 0
  %3176 = extractvalue %dx.types.ResRet.f32 %3174, 1
  %3177 = extractvalue %dx.types.ResRet.f32 %3174, 2
  %3178 = add nuw nsw i32 %3163, 36
  %3179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.f32 %3179, 0
  %3181 = fsub fast float %3144, %3165
  %3182 = fsub fast float %3145, %3166
  %3183 = fsub fast float %3146, %3167
  %3184 = fmul fast float %3180, %3181
  %3185 = fmul fast float %3180, %3182
  %3186 = fmul fast float %3180, %3183
  %3187 = call float @dx.op.unary.f32(i32 27, float %3184)  ; Round_ni(value)
  %3188 = call float @dx.op.unary.f32(i32 27, float %3185)  ; Round_ni(value)
  %3189 = call float @dx.op.unary.f32(i32 27, float %3186)  ; Round_ni(value)
  %3190 = fadd fast float %3187, 5.000000e-01
  %3191 = fadd fast float %3188, 5.000000e-01
  %3192 = fadd fast float %3189, 5.000000e-01
  %3193 = fmul fast float %3190, %3170
  %3194 = fmul fast float %3191, %3171
  %3195 = fmul fast float %3192, %3172
  %3196 = shl i32 %43, 2
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = add i32 %3198, 0
  %3200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3201 = call float @dx.op.unary.f32(i32 22, float %3193)  ; Frc(value)
  %3202 = call float @dx.op.unary.f32(i32 22, float %3194)  ; Frc(value)
  %3203 = call float @dx.op.unary.f32(i32 22, float %3195)  ; Frc(value)
  %3204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3200, %dx.types.Handle %37, float %3201, float %3202, float %3203, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3205 = extractvalue %dx.types.ResRet.f32 %3204, 0
  %3206 = extractvalue %dx.types.ResRet.f32 %3204, 1
  %3207 = extractvalue %dx.types.ResRet.f32 %3204, 2
  %3208 = fmul fast float %3205, 1.023000e+03
  %3209 = fmul fast float %3206, 1.023000e+03
  %3210 = fmul fast float %3207, 1.023000e+03
  %3211 = fadd fast float %3208, 5.000000e-01
  %3212 = fadd fast float %3209, 5.000000e-01
  %3213 = fadd fast float %3210, 5.000000e-01
  %3214 = call float @dx.op.unary.f32(i32 27, float %3211)  ; Round_ni(value)
  %3215 = call float @dx.op.unary.f32(i32 27, float %3212)  ; Round_ni(value)
  %3216 = call float @dx.op.unary.f32(i32 27, float %3213)  ; Round_ni(value)
  %3217 = fsub fast float %3184, %3187
  %3218 = fsub fast float %3185, %3188
  %3219 = fsub fast float %3186, %3189
  %3220 = fmul fast float %3217, 7.500000e-01
  %3221 = fmul fast float %3218, 7.500000e-01
  %3222 = fmul fast float %3219, 7.500000e-01
  %3223 = fadd fast float %3187, 1.250000e-01
  %3224 = fadd fast float %3223, %3220
  %3225 = fadd fast float %3224, %3214
  %3226 = fadd fast float %3188, 1.250000e-01
  %3227 = fadd fast float %3226, %3221
  %3228 = fadd fast float %3227, %3215
  %3229 = fadd fast float %3189, 1.250000e-01
  %3230 = fadd fast float %3229, %3222
  %3231 = fadd fast float %3230, %3216
  %3232 = fmul fast float %3225, %3175
  %3233 = fmul fast float %3228, %3176
  %3234 = fmul fast float %3231, %3177
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = add i32 %3236, 0
  %3238 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3237, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3238, %dx.types.Handle %35, float %3232, float %3233, float %3234, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3240 = extractvalue %dx.types.ResRet.f32 %3239, 0
  br label %3241

; <label>:3241                                    ; preds = %3162, %3151
  %3242 = phi float [ %3240, %3162 ], [ -1.000000e+00, %3151 ]
  %3243 = fadd fast float %3242, %3149
  %3244 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  br label %3245

; <label>:3245                                    ; preds = %3241, %3139
  %3246 = phi float [ %3244, %3241 ], [ %3149, %3139 ]
  %3247 = fmul fast float %3246, %593
  br label %3248

; <label>:3248                                    ; preds = %3245, %3134
  %3249 = phi float [ %3247, %3245 ], [ %593, %3134 ]
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 256
  %3253 = icmp eq i32 %3252, 0
  br i1 %3253, label %3300, label %3254

; <label>:3254                                    ; preds = %3248
  %3255 = add i32 %42, 516
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3255, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = add i32 %3257, 0
  %3259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3259, %dx.types.Handle %67, float %3135, float %3136, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3261 = extractvalue %dx.types.ResRet.f32 %3260, 0
  %3262 = add i32 %42, 148
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3262, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = shl i32 %3264, 4
  %3266 = and i32 %3265, 32752
  %3267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3266)  ; LegacyF16ToF32(value)
  %3268 = lshr i32 %3264, 7
  %3269 = and i32 %3268, 32752
  %3270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3269)  ; LegacyF16ToF32(value)
  %3271 = fsub fast float 1.000000e+00, %3249
  %3272 = call float @dx.op.binary.f32(i32 35, float %3271, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3273 = bitcast float %3249 to i32
  %3274 = sitofp i32 %3273 to float
  %3275 = fadd fast float %3274, 0xC1CFBF8940000000
  %3276 = fmul fast float %3270, %3275
  %3277 = fadd fast float %3276, 0x41CFBF8940000000
  %3278 = fptosi float %3277 to i32
  %3279 = bitcast i32 %3278 to float
  %3280 = bitcast float %3272 to i32
  %3281 = sitofp i32 %3280 to float
  %3282 = fadd fast float %3281, 0xC1CFBF8940000000
  %3283 = fmul fast float %3282, %3270
  %3284 = fadd fast float %3283, 0x41CFBF8940000000
  %3285 = fptosi float %3284 to i32
  %3286 = bitcast i32 %3285 to float
  %3287 = fmul fast float %3279, %3267
  %3288 = fmul fast float %3286, %3267
  %3289 = fsub fast float %3272, %3287
  %3290 = fadd fast float %3288, %3272
  %3291 = call float @dx.op.unary.f32(i32 7, float %3289)  ; Saturate(value)
  %3292 = call float @dx.op.unary.f32(i32 7, float %3290)  ; Saturate(value)
  %3293 = fsub fast float %3261, %3291
  %3294 = fsub fast float %3292, %3291
  %3295 = bitcast float %3294 to i32
  %3296 = sub nsw i32 2129859010, %3295
  %3297 = bitcast i32 %3296 to float
  %3298 = fmul fast float %3297, %3293
  %3299 = call float @dx.op.unary.f32(i32 7, float %3298)  ; Saturate(value)
  br label %3300

; <label>:3300                                    ; preds = %3254, %3248
  %3301 = phi float [ %3299, %3254 ], [ %3249, %3248 ]
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 128
  %3305 = icmp eq i32 %3304, 0
  br i1 %3305, label %3322, label %3306

; <label>:3306                                    ; preds = %3300
  %3307 = add i32 %42, 500
  %3308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3307, i32 undef)  ; BufferLoad(srv,index,wot)
  %3309 = extractvalue %dx.types.ResRet.i32 %3308, 0
  %3310 = add i32 %3309, 0
  %3311 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3310, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3312 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3311, %dx.types.Handle %67, float %3135, float %3136, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3313 = extractvalue %dx.types.ResRet.f32 %3312, 0
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 524288
  %3317 = icmp ne i32 %3316, 0
  %3318 = fcmp fast ogt float %3313, 0x3FE0101020000000
  %3319 = select i1 %3318, float 1.000000e+00, float 0.000000e+00
  %3320 = select i1 %3317, float %3319, float %3313
  %3321 = fmul fast float %3320, %3301
  br label %3322

; <label>:3322                                    ; preds = %3306, %3300
  %3323 = phi float [ %3321, %3306 ], [ %3301, %3300 ]
  %3324 = fcmp fast ult float %3323, 0x3F70101020000000
  br i1 %3324, label %3954, label %3325

; <label>:3325                                    ; preds = %3322
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = and i32 %3327, 16
  %3329 = icmp eq i32 %3328, 0
  br i1 %3329, label %3528, label %3330

; <label>:3330                                    ; preds = %3325
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = add i32 %42, 452
  %3334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3333, i32 undef)  ; BufferLoad(srv,index,wot)
  %3335 = extractvalue %dx.types.ResRet.i32 %3334, 0
  %3336 = add i32 %3335, 0
  %3337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3337, %dx.types.Handle %66, float %3135, float %3136, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3339 = extractvalue %dx.types.ResRet.f32 %3338, 0
  %3340 = extractvalue %dx.types.ResRet.f32 %3338, 1
  %3341 = extractvalue %dx.types.ResRet.f32 %3338, 2
  %3342 = extractvalue %dx.types.ResRet.f32 %3338, 3
  %3343 = and i32 %3332, 255
  %3344 = uitofp i32 %3343 to float
  %3345 = lshr i32 %3332, 8
  %3346 = and i32 %3345, 255
  %3347 = uitofp i32 %3346 to float
  %3348 = fmul fast float %3342, %3344
  %3349 = fadd fast float %3348, %3347
  %3350 = fmul fast float %3349, 0x3F70101000000000
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = and i32 %3352, 512
  %3354 = icmp eq i32 %3353, 0
  br i1 %3354, label %3363, label %3355

; <label>:3355                                    ; preds = %3330
  %3356 = add i32 %42, 532
  %3357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3356, i32 undef)  ; BufferLoad(srv,index,wot)
  %3358 = extractvalue %dx.types.ResRet.i32 %3357, 0
  %3359 = add i32 %3358, 0
  %3360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3360, %dx.types.Handle %67, float %3135, float %3136, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3362 = extractvalue %dx.types.ResRet.f32 %3361, 0
  br label %3363

; <label>:3363                                    ; preds = %3355, %3330
  %3364 = phi float [ %3362, %3355 ], [ 1.000000e+00, %3330 ]
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = and i32 %3366, 33554432
  %3368 = icmp eq i32 %3367, 0
  br i1 %3368, label %3475, label %3369

; <label>:3369                                    ; preds = %3363
  %3370 = add i32 %42, 272
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3370, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = and i32 %3372, 65535
  %3374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3373)  ; LegacyF16ToF32(value)
  %3375 = lshr i32 %3372, 16
  %3376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3375)  ; LegacyF16ToF32(value)
  %3377 = add i32 %42, 276
  %3378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3377, i32 undef)  ; BufferLoad(srv,index,wot)
  %3379 = extractvalue %dx.types.ResRet.i32 %3378, 0
  %3380 = and i32 %3379, 65535
  %3381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3380)  ; LegacyF16ToF32(value)
  %3382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3383 = extractvalue %dx.types.ResRet.i32 %3382, 0
  %3384 = lshr i32 %3383, 24
  %3385 = uitofp i32 %3384 to float
  %3386 = fmul fast float %3385, 0x3F70101020000000
  %3387 = and i32 %3383, 255
  %3388 = uitofp i32 %3387 to float
  %3389 = fmul fast float %3388, 0x3F70101020000000
  %3390 = lshr i32 %3383, 8
  %3391 = and i32 %3390, 255
  %3392 = uitofp i32 %3391 to float
  %3393 = fmul fast float %3392, 0x3F70101020000000
  %3394 = lshr i32 %3383, 16
  %3395 = and i32 %3394, 255
  %3396 = uitofp i32 %3395 to float
  %3397 = fmul fast float %3396, 0x3F70101020000000
  %3398 = add i32 %42, 268
  %3399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3398, i32 undef)  ; BufferLoad(srv,index,wot)
  %3400 = extractvalue %dx.types.ResRet.i32 %3399, 0
  %3401 = lshr i32 %3400, 24
  %3402 = uitofp i32 %3401 to float
  %3403 = fmul fast float %3402, 0x3F70101020000000
  %3404 = and i32 %3400, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = fmul fast float %3405, 0x3F70101020000000
  %3407 = lshr i32 %3400, 8
  %3408 = and i32 %3407, 255
  %3409 = uitofp i32 %3408 to float
  %3410 = fmul fast float %3409, 0x3F70101020000000
  %3411 = lshr i32 %3400, 16
  %3412 = and i32 %3411, 255
  %3413 = uitofp i32 %3412 to float
  %3414 = fmul fast float %3413, 0x3F70101020000000
  %3415 = bitcast float %3339 to i32
  %3416 = ashr i32 %3415, 1
  %3417 = sub nsw i32 1597463174, %3416
  %3418 = bitcast i32 %3417 to float
  %3419 = fmul fast float %3339, 5.000000e-01
  %3420 = fmul fast float %3418, %3418
  %3421 = fmul fast float %3420, %3419
  %3422 = fsub fast float 1.500000e+00, %3421
  %3423 = fmul fast float %3418, %3339
  %3424 = fmul fast float %3423, %3422
  %3425 = bitcast float %3340 to i32
  %3426 = ashr i32 %3425, 1
  %3427 = sub nsw i32 1597463174, %3426
  %3428 = bitcast i32 %3427 to float
  %3429 = fmul fast float %3340, 5.000000e-01
  %3430 = fmul fast float %3428, %3428
  %3431 = fmul fast float %3430, %3429
  %3432 = fsub fast float 1.500000e+00, %3431
  %3433 = fmul fast float %3428, %3340
  %3434 = fmul fast float %3433, %3432
  %3435 = bitcast float %3341 to i32
  %3436 = ashr i32 %3435, 1
  %3437 = sub nsw i32 1597463174, %3436
  %3438 = bitcast i32 %3437 to float
  %3439 = fmul fast float %3341, 5.000000e-01
  %3440 = fmul fast float %3438, %3438
  %3441 = fmul fast float %3440, %3439
  %3442 = fsub fast float 1.500000e+00, %3441
  %3443 = fmul fast float %3438, %3341
  %3444 = fmul fast float %3443, %3442
  %3445 = fsub fast float %3424, %3406
  %3446 = fsub fast float %3434, %3410
  %3447 = fsub fast float %3444, %3414
  %3448 = fmul fast float %3445, %3374
  %3449 = fmul fast float %3446, %3376
  %3450 = fmul fast float %3447, %3381
  %3451 = fadd fast float %3448, %3389
  %3452 = fadd fast float %3449, %3393
  %3453 = fadd fast float %3450, %3397
  %3454 = call float @dx.op.unary.f32(i32 7, float %3451)  ; Saturate(value)
  %3455 = call float @dx.op.unary.f32(i32 7, float %3452)  ; Saturate(value)
  %3456 = call float @dx.op.unary.f32(i32 7, float %3453)  ; Saturate(value)
  %3457 = fmul fast float %3454, %3454
  %3458 = fmul fast float %3455, %3455
  %3459 = fmul fast float %3456, %3456
  %3460 = fsub fast float %3457, %3339
  %3461 = fsub fast float %3458, %3340
  %3462 = fsub fast float %3459, %3341
  %3463 = fmul fast float %3460, %3364
  %3464 = fmul fast float %3461, %3364
  %3465 = fmul fast float %3462, %3364
  %3466 = fadd fast float %3463, %3339
  %3467 = fadd fast float %3464, %3340
  %3468 = fadd fast float %3465, %3341
  %3469 = fadd fast float %3386, %3350
  %3470 = fsub fast float %3469, %3403
  %3471 = call float @dx.op.unary.f32(i32 7, float %3470)  ; Saturate(value)
  %3472 = fsub fast float %3471, %3350
  %3473 = fmul fast float %3472, %3364
  %3474 = fadd fast float %3473, %3350
  br label %3528

; <label>:3475                                    ; preds = %3363
  %3476 = and i32 %3366, 134217728
  %3477 = icmp eq i32 %3476, 0
  br i1 %3477, label %3512, label %3478

; <label>:3478                                    ; preds = %3475
  %3479 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %3480 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %3481 = call float @dx.op.unary.f32(i32 24, float %522)  ; Sqrt(value)
  %3482 = fadd fast float %3479, -5.000000e-01
  %3483 = fadd fast float %3480, -5.000000e-01
  %3484 = fadd fast float %3481, -5.000000e-01
  %3485 = fmul fast float %3482, %3364
  %3486 = fmul fast float %3483, %3364
  %3487 = fmul fast float %3484, %3364
  %3488 = fadd fast float %3485, 5.000000e-01
  %3489 = fadd fast float %3486, 5.000000e-01
  %3490 = fadd fast float %3487, 5.000000e-01
  %3491 = call float @dx.op.unary.f32(i32 24, float %3339)  ; Sqrt(value)
  %3492 = call float @dx.op.unary.f32(i32 24, float %3340)  ; Sqrt(value)
  %3493 = call float @dx.op.unary.f32(i32 24, float %3341)  ; Sqrt(value)
  %3494 = fmul fast float %3488, 2.000000e+00
  %3495 = fsub fast float 1.000000e+00, %3494
  %3496 = fmul fast float %3495, %3491
  %3497 = fadd fast float %3496, %3494
  %3498 = fmul fast float %3497, %3491
  %3499 = fmul fast float %3489, 2.000000e+00
  %3500 = fsub fast float 1.000000e+00, %3499
  %3501 = fmul fast float %3500, %3492
  %3502 = fadd fast float %3501, %3499
  %3503 = fmul fast float %3502, %3492
  %3504 = fmul fast float %3490, 2.000000e+00
  %3505 = fsub fast float 1.000000e+00, %3504
  %3506 = fmul fast float %3505, %3493
  %3507 = fadd fast float %3506, %3504
  %3508 = fmul fast float %3507, %3493
  %3509 = fmul fast float %3498, %3498
  %3510 = fmul fast float %3503, %3503
  %3511 = fmul fast float %3508, %3508
  br label %3528

; <label>:3512                                    ; preds = %3475
  %3513 = fmul fast float %514, %514
  %3514 = fmul fast float %518, %518
  %3515 = fmul fast float %522, %522
  %3516 = fadd fast float %3513, -1.000000e+00
  %3517 = fadd fast float %3514, -1.000000e+00
  %3518 = fadd fast float %3515, -1.000000e+00
  %3519 = fmul fast float %3364, %3516
  %3520 = fmul fast float %3364, %3517
  %3521 = fmul fast float %3364, %3518
  %3522 = fadd fast float %3519, 1.000000e+00
  %3523 = fadd fast float %3520, 1.000000e+00
  %3524 = fadd fast float %3521, 1.000000e+00
  %3525 = fmul fast float %3522, %3339
  %3526 = fmul fast float %3523, %3340
  %3527 = fmul fast float %3524, %3341
  br label %3528

; <label>:3528                                    ; preds = %3512, %3478, %3369, %3325
  %3529 = phi float [ %3474, %3369 ], [ %3350, %3478 ], [ %3350, %3512 ], [ 0x3FA23C0BE0000000, %3325 ]
  %3530 = phi float [ %3466, %3369 ], [ %3509, %3478 ], [ %3525, %3512 ], [ 1.000000e+00, %3325 ]
  %3531 = phi float [ %3467, %3369 ], [ %3510, %3478 ], [ %3526, %3512 ], [ 1.000000e+00, %3325 ]
  %3532 = phi float [ %3468, %3369 ], [ %3511, %3478 ], [ %3527, %3512 ], [ 1.000000e+00, %3325 ]
  %3533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3534 = extractvalue %dx.types.CBufRet.i32 %3533, 1
  %3535 = and i32 %3534, 1
  %3536 = icmp ne i32 %3535, 0
  %3537 = add i32 %42, 356
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = and i32 %3539, 32
  %3541 = icmp ne i32 %3540, 0
  %3542 = and i1 %3536, %3541
  %3543 = select i1 %3542, float 1.000000e+00, float %3530
  %3544 = select i1 %3542, float 0x3FD3333340000000, float %3531
  %3545 = select i1 %3542, float 0x3FD3333340000000, float %3532
  %3546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.i32 %3546, 0
  %3548 = and i32 %3547, 32
  %3549 = icmp eq i32 %3548, 0
  br i1 %3549, label %3622, label %3550

; <label>:3550                                    ; preds = %3528
  %3551 = add i32 %42, 140
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = add i32 %42, 468
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3554, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = add i32 %3556, 0
  %3558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3558, %dx.types.Handle %66, float %3135, float %3136, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3560 = extractvalue %dx.types.ResRet.f32 %3559, 0
  %3561 = extractvalue %dx.types.ResRet.f32 %3559, 1
  %3562 = extractvalue %dx.types.ResRet.f32 %3559, 2
  %3563 = extractvalue %dx.types.ResRet.f32 %3559, 3
  %3564 = and i32 %3553, 255
  %3565 = uitofp i32 %3564 to float
  %3566 = lshr i32 %3553, 8
  %3567 = and i32 %3566, 255
  %3568 = uitofp i32 %3567 to float
  %3569 = lshr i32 %3553, 16
  %3570 = and i32 %3569, 255
  %3571 = uitofp i32 %3570 to float
  %3572 = fmul fast float %3571, 0x3F70101000000000
  %3573 = fmul fast float %3560, %3565
  %3574 = fadd fast float %3573, %3568
  %3575 = fmul fast float %3574, 0x3F70101000000000
  %3576 = fadd fast float %3561, -5.000000e-01
  %3577 = fadd fast float %3563, -5.000000e-01
  %3578 = fmul fast float %3576, %3572
  %3579 = fmul fast float %3577, %3572
  %3580 = fadd fast float %3578, 5.000000e-01
  %3581 = fadd fast float %3579, 5.000000e-01
  %3582 = fmul fast float %3580, 2.000000e+00
  %3583 = fadd fast float %3582, -1.000000e+00
  %3584 = fmul fast float %3581, 2.000000e+00
  %3585 = fadd fast float %3584, -1.000000e+00
  %3586 = fadd fast float %3583, %3585
  %3587 = fmul fast float %3586, 5.000000e-01
  %3588 = fsub fast float %3583, %3585
  %3589 = fmul fast float %3588, 5.000000e-01
  %3590 = call float @dx.op.unary.f32(i32 6, float %3587)  ; FAbs(value)
  %3591 = fsub fast float 1.000000e+00, %3590
  %3592 = call float @dx.op.unary.f32(i32 6, float %3589)  ; FAbs(value)
  %3593 = fsub fast float %3591, %3592
  %3594 = call float @dx.op.dot3.f32(i32 55, float %3587, float %3589, float %3593, float %3587, float %3589, float %3593)  ; Dot3(ax,ay,az,bx,by,bz)
  %3595 = call float @dx.op.unary.f32(i32 25, float %3594)  ; Rsqrt(value)
  %3596 = fmul fast float %3587, %3595
  %3597 = fmul fast float %3589, %3595
  %3598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3599 = extractvalue %dx.types.ResRet.i32 %3598, 0
  %3600 = and i32 %3599, 67108864
  %3601 = icmp eq i32 %3600, 0
  br i1 %3601, label %3618, label %3602

; <label>:3602                                    ; preds = %3550
  %3603 = add i32 %42, 328
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = and i32 %3605, 65535
  %3607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3606)  ; LegacyF16ToF32(value)
  %3608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3045, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.i32 %3608, 0
  %3610 = and i32 %3609, 65535
  %3611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3610)  ; LegacyF16ToF32(value)
  %3612 = lshr i32 %3605, 16
  %3613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3612)  ; LegacyF16ToF32(value)
  %3614 = fsub fast float %3575, %3613
  %3615 = fmul fast float %3614, %3607
  %3616 = fadd fast float %3615, %3611
  %3617 = call float @dx.op.unary.f32(i32 7, float %3616)  ; Saturate(value)
  br label %3618

; <label>:3618                                    ; preds = %3602, %3550
  %3619 = phi float [ %3617, %3602 ], [ %3575, %3550 ]
  %3620 = call float @dx.op.dot2.f32(i32 54, float %3596, float %3597, float %3039, float %3040)  ; Dot2(ax,ay,bx,by)
  %3621 = call float @dx.op.dot2.f32(i32 54, float %3596, float %3597, float %3041, float %3042)  ; Dot2(ax,ay,bx,by)
  br label %3622

; <label>:3622                                    ; preds = %3618, %3528
  %3623 = phi float [ %3619, %3618 ], [ 0x3FD6666660000000, %3528 ]
  %3624 = phi float [ %3620, %3618 ], [ 0.000000e+00, %3528 ]
  %3625 = phi float [ %3621, %3618 ], [ 0.000000e+00, %3528 ]
  %3626 = phi float [ %3562, %3618 ], [ 1.000000e+00, %3528 ]
  %3627 = add i32 %42, 208
  %3628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.i32 %3628, 0
  %3630 = lshr i32 %3629, 22
  %3631 = shl nuw nsw i32 %3630, 5
  %3632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3631)  ; LegacyF16ToF32(value)
  %3633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3634 = extractvalue %dx.types.ResRet.i32 %3633, 0
  %3635 = and i32 %3634, 64
  %3636 = icmp eq i32 %3635, 0
  br i1 %3636, label %3670, label %3637

; <label>:3637                                    ; preds = %3622
  %3638 = add i32 %42, 484
  %3639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.i32 %3639, 0
  %3641 = add i32 %3640, 0
  %3642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3644 = extractvalue %dx.types.ResRet.i32 %3643, 0
  %3645 = and i32 %3644, 131072
  %3646 = icmp eq i32 %3645, 0
  %3647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3642, %dx.types.Handle %66, float %3135, float %3136, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = fmul fast float %3648, %502
  %3652 = fmul fast float %3649, %505
  %3653 = fmul fast float %3650, %508
  br i1 %3646, label %3660, label %3654

; <label>:3654                                    ; preds = %3637
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 0
  %3657 = fmul fast float %3656, %3651
  %3658 = fmul fast float %3656, %3652
  %3659 = fmul fast float %3656, %3653
  br label %3660

; <label>:3660                                    ; preds = %3654, %3637
  %3661 = phi float [ %3657, %3654 ], [ %3651, %3637 ]
  %3662 = phi float [ %3658, %3654 ], [ %3652, %3637 ]
  %3663 = phi float [ %3659, %3654 ], [ %3653, %3637 ]
  %3664 = fmul fast float %3661, %3632
  %3665 = select i1 %370, float %3664, float %3661
  %3666 = call float @dx.op.dot3.f32(i32 55, float %3665, float %3662, float %3663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3667 = select i1 %370, float 0.000000e+00, float %3661
  %3668 = select i1 %370, float %3666, float %3662
  %3669 = select i1 %370, float 0.000000e+00, float %3663
  br label %3670

; <label>:3670                                    ; preds = %3660, %3622
  %3671 = phi float [ %3667, %3660 ], [ 0.000000e+00, %3622 ]
  %3672 = phi float [ %3668, %3660 ], [ 0.000000e+00, %3622 ]
  %3673 = phi float [ %3669, %3660 ], [ 0.000000e+00, %3622 ]
  %3674 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3675 = extractvalue %dx.types.ResRet.i32 %3674, 0
  %3676 = and i32 %3675, 10240
  %3677 = icmp eq i32 %3676, 0
  br i1 %3677, label %3722, label %3678

; <label>:3678                                    ; preds = %3670
  %3679 = add i32 %42, 548
  %3680 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3679, i32 undef)  ; BufferLoad(srv,index,wot)
  %3681 = extractvalue %dx.types.ResRet.i32 %3680, 0
  %3682 = add i32 %3681, 0
  %3683 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3682, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3684 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3683, %dx.types.Handle %67, float %3135, float %3136, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 1
  %3686 = extractvalue %dx.types.ResRet.f32 %3684, 3
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = and i32 %3688, 1048576
  %3690 = icmp ne i32 %3689, 0
  %3691 = and i32 %3688, 8192
  %3692 = icmp eq i32 %3691, 0
  br i1 %3692, label %3708, label %3693

; <label>:3693                                    ; preds = %3678
  %3694 = extractvalue %dx.types.ResRet.f32 %3684, 2
  %3695 = select i1 %3690, float %3694, float %3685
  %3696 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3697 = select i1 %3690, float %3696, float %3685
  %3698 = add i32 %42, 144
  %3699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3698, i32 undef)  ; BufferLoad(srv,index,wot)
  %3700 = extractvalue %dx.types.ResRet.i32 %3699, 0
  %3701 = lshr i32 %3700, 16
  %3702 = and i32 %3701, 255
  %3703 = uitofp i32 %3702 to float
  %3704 = fmul fast float %3703, 0x3F80101020000000
  %3705 = fmul fast float %3704, %3697
  %3706 = fmul fast float %3704, %3685
  %3707 = fmul fast float %3704, %3695
  br label %3708

; <label>:3708                                    ; preds = %3693, %3678
  %3709 = phi float [ %3705, %3693 ], [ 0.000000e+00, %3678 ]
  %3710 = phi float [ %3706, %3693 ], [ 0.000000e+00, %3678 ]
  %3711 = phi float [ %3707, %3693 ], [ 0.000000e+00, %3678 ]
  %3712 = and i32 %3688, 2048
  %3713 = icmp eq i32 %3712, 0
  br i1 %3713, label %3722, label %3714

; <label>:3714                                    ; preds = %3708
  %3715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.i32 %3715, 0
  %3717 = shl i32 %3716, 4
  %3718 = and i32 %3717, 32752
  %3719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3718)  ; LegacyF16ToF32(value)
  %3720 = fmul fast float %3719, %3686
  %3721 = call float @dx.op.binary.f32(i32 35, float %3720, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3722

; <label>:3722                                    ; preds = %3714, %3708, %3670
  %3723 = phi float [ %3709, %3714 ], [ %3709, %3708 ], [ 0.000000e+00, %3670 ]
  %3724 = phi float [ %3710, %3714 ], [ %3710, %3708 ], [ 0.000000e+00, %3670 ]
  %3725 = phi float [ %3711, %3714 ], [ %3711, %3708 ], [ 0.000000e+00, %3670 ]
  %3726 = phi float [ %3721, %3714 ], [ 0x3F70101020000000, %3708 ], [ 0x3F70101020000000, %3670 ]
  %3727 = add i32 %42, 144
  %3728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3727, i32 undef)  ; BufferLoad(srv,index,wot)
  %3729 = extractvalue %dx.types.ResRet.i32 %3728, 0
  %3730 = and i32 %3729, 255
  %3731 = uitofp i32 %3730 to float
  %3732 = lshr i32 %3729, 8
  %3733 = and i32 %3732, 255
  %3734 = uitofp i32 %3733 to float
  %3735 = call float @dx.op.dot3.f32(i32 55, float %3543, float %3544, float %3545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3736 = fmul fast float %3734, %3735
  %3737 = fadd fast float %3736, %3731
  %3738 = fmul fast float %3737, 0x3F70101020000000
  %3739 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  br i1 %3027, label %3740, label %3748

; <label>:3740                                    ; preds = %3722
  %3741 = fsub fast float 1.000000e+00, %3323
  %3742 = fmul fast float %3741, %3015
  %3743 = fmul fast float %3741, %3016
  %3744 = fmul fast float %3741, %3017
  %3745 = fmul fast float %3741, %3012
  %3746 = fmul fast float %3741, %3013
  %3747 = fmul fast float %3741, %3014
  br label %3748

; <label>:3748                                    ; preds = %3740, %3722
  %3749 = phi float [ %3745, %3740 ], [ %3012, %3722 ]
  %3750 = phi float [ %3746, %3740 ], [ %3013, %3722 ]
  %3751 = phi float [ %3747, %3740 ], [ %3014, %3722 ]
  %3752 = phi float [ %3742, %3740 ], [ %3015, %3722 ]
  %3753 = phi float [ %3743, %3740 ], [ %3016, %3722 ]
  %3754 = phi float [ %3744, %3740 ], [ %3017, %3722 ]
  %3755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3756 = extractvalue %dx.types.ResRet.i32 %3755, 0
  %3757 = and i32 %3756, 3
  %3758 = icmp eq i32 %3757, 3
  br i1 %3758, label %3837, label %3759

; <label>:3759                                    ; preds = %3748
  %3760 = and i32 %3756, 16
  %3761 = icmp ne i32 %3760, 0
  %3762 = select i1 %3761, float %3323, float 0.000000e+00
  %3763 = icmp eq i32 %3757, 0
  br i1 %3763, label %3764, label %3792

; <label>:3764                                    ; preds = %3759
  %3765 = and i32 %3756, 64
  %3766 = icmp ne i32 %3765, 0
  %3767 = select i1 %3766, float %3323, float 0.000000e+00
  %3768 = fsub fast float %3543, %3752
  %3769 = fsub fast float %3544, %3753
  %3770 = fsub fast float %3545, %3754
  %3771 = fmul fast float %3762, %3768
  %3772 = fmul fast float %3762, %3769
  %3773 = fmul fast float %3762, %3770
  %3774 = fadd fast float %3771, %3752
  %3775 = fadd fast float %3772, %3753
  %3776 = fadd fast float %3773, %3754
  %3777 = fsub fast float %3529, %3021
  %3778 = fmul fast float %3762, %3777
  %3779 = fadd fast float %3778, %3021
  %3780 = fsub fast float %3671, %3749
  %3781 = fsub fast float %3672, %3750
  %3782 = fsub fast float %3673, %3751
  %3783 = fmul fast float %3767, %3780
  %3784 = fmul fast float %3767, %3781
  %3785 = fmul fast float %3767, %3782
  %3786 = fadd fast float %3783, %3749
  %3787 = fadd fast float %3784, %3750
  %3788 = fadd fast float %3785, %3751
  %3789 = fsub fast float %3739, %3025
  %3790 = fmul fast float %3762, %3789
  %3791 = fadd fast float %3790, %3025
  br label %3837

; <label>:3792                                    ; preds = %3759
  %3793 = icmp eq i32 %3757, 1
  br i1 %3793, label %3794, label %3807

; <label>:3794                                    ; preds = %3792
  %3795 = fadd fast float %3543, -1.000000e+00
  %3796 = fadd fast float %3544, -1.000000e+00
  %3797 = fadd fast float %3545, -1.000000e+00
  %3798 = fmul fast float %3762, %3795
  %3799 = fmul fast float %3762, %3796
  %3800 = fmul fast float %3762, %3797
  %3801 = fadd fast float %3798, 1.000000e+00
  %3802 = fadd fast float %3799, 1.000000e+00
  %3803 = fadd fast float %3800, 1.000000e+00
  %3804 = fmul fast float %3801, %3752
  %3805 = fmul fast float %3802, %3753
  %3806 = fmul fast float %3803, %3754
  br label %3837

; <label>:3807                                    ; preds = %3792
  %3808 = icmp eq i32 %3757, 2
  br i1 %3808, label %3809, label %3837

; <label>:3809                                    ; preds = %3807
  %3810 = call float @dx.op.unary.f32(i32 24, float %3543)  ; Sqrt(value)
  %3811 = call float @dx.op.unary.f32(i32 24, float %3544)  ; Sqrt(value)
  %3812 = call float @dx.op.unary.f32(i32 24, float %3545)  ; Sqrt(value)
  %3813 = fadd fast float %3810, -5.000000e-01
  %3814 = fadd fast float %3811, -5.000000e-01
  %3815 = fadd fast float %3812, -5.000000e-01
  %3816 = fmul fast float %3813, %3762
  %3817 = fmul fast float %3814, %3762
  %3818 = fmul fast float %3815, %3762
  %3819 = fadd fast float %3816, 5.000000e-01
  %3820 = fadd fast float %3817, 5.000000e-01
  %3821 = fadd fast float %3818, 5.000000e-01
  %3822 = fmul fast float %3819, 2.000000e+00
  %3823 = fsub fast float 1.000000e+00, %3822
  %3824 = fmul fast float %3823, %3752
  %3825 = fadd fast float %3824, %3822
  %3826 = fmul fast float %3825, %3752
  %3827 = fmul fast float %3820, 2.000000e+00
  %3828 = fsub fast float 1.000000e+00, %3827
  %3829 = fmul fast float %3828, %3753
  %3830 = fadd fast float %3829, %3827
  %3831 = fmul fast float %3830, %3753
  %3832 = fmul fast float %3821, 2.000000e+00
  %3833 = fsub fast float 1.000000e+00, %3832
  %3834 = fmul fast float %3833, %3754
  %3835 = fadd fast float %3834, %3832
  %3836 = fmul fast float %3835, %3754
  br label %3837

; <label>:3837                                    ; preds = %3809, %3807, %3794, %3764, %3748
  %3838 = phi float [ %3749, %3748 ], [ %3749, %3809 ], [ %3749, %3807 ], [ %3749, %3794 ], [ %3786, %3764 ]
  %3839 = phi float [ %3750, %3748 ], [ %3750, %3809 ], [ %3750, %3807 ], [ %3750, %3794 ], [ %3787, %3764 ]
  %3840 = phi float [ %3751, %3748 ], [ %3751, %3809 ], [ %3751, %3807 ], [ %3751, %3794 ], [ %3788, %3764 ]
  %3841 = phi float [ %3752, %3748 ], [ %3826, %3809 ], [ %3752, %3807 ], [ %3804, %3794 ], [ %3774, %3764 ]
  %3842 = phi float [ %3753, %3748 ], [ %3831, %3809 ], [ %3753, %3807 ], [ %3805, %3794 ], [ %3775, %3764 ]
  %3843 = phi float [ %3754, %3748 ], [ %3836, %3809 ], [ %3754, %3807 ], [ %3806, %3794 ], [ %3776, %3764 ]
  %3844 = phi float [ %3021, %3748 ], [ %3021, %3809 ], [ %3021, %3807 ], [ %3021, %3794 ], [ %3779, %3764 ]
  %3845 = phi float [ %3025, %3748 ], [ %3025, %3809 ], [ %3025, %3807 ], [ %3025, %3794 ], [ %3791, %3764 ]
  %3846 = and i32 %3756, 12
  %3847 = icmp eq i32 %3846, 12
  br i1 %3847, label %3954, label %3848

; <label>:3848                                    ; preds = %3837
  %3849 = and i32 %3756, 2097184
  %3850 = icmp eq i32 %3849, 2097184
  %3851 = select i1 %3850, float %3323, float 0.000000e+00
  %3852 = and i32 %3756, 4194336
  %3853 = icmp eq i32 %3852, 4194336
  %3854 = select i1 %3853, float %3323, float 0.000000e+00
  %3855 = and i32 %3756, 8388640
  %3856 = icmp eq i32 %3855, 8388640
  %3857 = select i1 %3856, float %3323, float 0.000000e+00
  %3858 = and i32 %3756, 2048
  %3859 = icmp ne i32 %3858, 0
  %3860 = select i1 %3859, float %3323, float 0.000000e+00
  %3861 = and i32 %3756, 8192
  %3862 = icmp ne i32 %3861, 0
  %3863 = select i1 %3862, float %3323, float 0.000000e+00
  %3864 = icmp eq i32 %3846, 0
  br i1 %3864, label %3865, label %3890

; <label>:3865                                    ; preds = %3848
  %3866 = fsub fast float %3624, %3010
  %3867 = fsub fast float %3625, %3011
  %3868 = fmul fast float %3851, %3866
  %3869 = fmul fast float %3851, %3867
  %3870 = fadd fast float %3868, %3010
  %3871 = fadd fast float %3869, %3011
  %3872 = fsub fast float %3626, %3023
  %3873 = fmul fast float %3854, %3872
  %3874 = fadd fast float %3873, %3023
  %3875 = fsub fast float %3623, %3022
  %3876 = fmul fast float %3857, %3875
  %3877 = fadd fast float %3876, %3022
  %3878 = fsub fast float %3726, %3024
  %3879 = fmul fast float %3860, %3878
  %3880 = fadd fast float %3879, %3024
  %3881 = fsub fast float %3723, %3018
  %3882 = fsub fast float %3724, %3019
  %3883 = fsub fast float %3725, %3020
  %3884 = fmul fast float %3863, %3881
  %3885 = fmul fast float %3863, %3882
  %3886 = fmul fast float %3863, %3883
  %3887 = fadd fast float %3884, %3018
  %3888 = fadd fast float %3885, %3019
  %3889 = fadd fast float %3886, %3020
  br label %3954

; <label>:3890                                    ; preds = %3848
  %3891 = icmp eq i32 %3846, 4
  br i1 %3891, label %3892, label %3932

; <label>:3892                                    ; preds = %3890
  %3893 = fmul fast float %3851, %3624
  %3894 = fmul fast float %3851, %3625
  %3895 = fadd fast float %3893, %3010
  %3896 = fadd fast float %3894, %3011
  %3897 = call float @dx.op.binary.f32(i32 36, float %3023, float %3626)  ; FMin(a,b)
  %3898 = fsub fast float %3897, %3023
  %3899 = fmul fast float %3898, %3854
  %3900 = fadd fast float %3899, %3023
  %3901 = fadd fast float %3623, %3022
  %3902 = fmul fast float %3901, 0x3FF337FAE0000000
  %3903 = fmul fast float %3022, %3022
  %3904 = fmul fast float %3623, %3623
  %3905 = fadd fast float %3904, %3903
  %3906 = fmul fast float %3905, 0x3FE5152B00000000
  %3907 = fmul fast float %3022, 0xBFCC1F85E0000000
  %3908 = fmul fast float %3907, %3623
  %3909 = fadd fast float %3908, 0xBFE1363700000000
  %3910 = fadd fast float %3909, %3902
  %3911 = fsub fast float %3910, %3906
  %3912 = fmul fast float %3901, 0x3FBA6F0D00000000
  %3913 = fmul fast float %3905, 0x3FD0432880000000
  %3914 = fmul fast float %3022, 0xBFEF110800000000
  %3915 = fmul fast float %3914, %3623
  %3916 = fadd fast float %3915, 1.000000e+00
  %3917 = fsub fast float %3916, %3912
  %3918 = fadd fast float %3917, %3913
  %3919 = fdiv fast float %3911, %3918
  %3920 = call float @dx.op.unary.f32(i32 7, float %3919)  ; Saturate(value)
  %3921 = fsub fast float %3920, %3022
  %3922 = fmul fast float %3921, %3857
  %3923 = fadd fast float %3922, %3022
  %3924 = fmul fast float %3860, %3726
  %3925 = fadd fast float %3924, %3024
  %3926 = fmul fast float %3863, %3723
  %3927 = fmul fast float %3863, %3724
  %3928 = fmul fast float %3863, %3725
  %3929 = fadd fast float %3926, %3018
  %3930 = fadd fast float %3927, %3019
  %3931 = fadd fast float %3928, %3020
  br label %3954

; <label>:3932                                    ; preds = %3890
  %3933 = icmp eq i32 %3846, 8
  br i1 %3933, label %3934, label %3954

; <label>:3934                                    ; preds = %3932
  %3935 = fmul fast float %3851, %3624
  %3936 = fmul fast float %3851, %3625
  %3937 = fadd fast float %3935, %3010
  %3938 = fadd fast float %3936, %3011
  %3939 = call float @dx.op.binary.f32(i32 36, float %3023, float %3626)  ; FMin(a,b)
  %3940 = fsub fast float %3939, %3023
  %3941 = fmul fast float %3940, %3854
  %3942 = fadd fast float %3941, %3023
  %3943 = fsub fast float %3623, %3022
  %3944 = fmul fast float %3857, %3943
  %3945 = fadd fast float %3944, %3022
  %3946 = fmul fast float %3860, %3726
  %3947 = fadd fast float %3946, %3024
  %3948 = fmul fast float %3863, %3723
  %3949 = fmul fast float %3863, %3724
  %3950 = fmul fast float %3863, %3725
  %3951 = fadd fast float %3948, %3018
  %3952 = fadd fast float %3949, %3019
  %3953 = fadd fast float %3950, %3020
  br label %3954

; <label>:3954                                    ; preds = %3934, %3932, %3892, %3865, %3837, %3322, %3026, %3009
  %3955 = phi float [ %3010, %3837 ], [ %3010, %3322 ], [ %3010, %3009 ], [ %3010, %3026 ], [ %3870, %3865 ], [ %3895, %3892 ], [ %3010, %3932 ], [ %3937, %3934 ]
  %3956 = phi float [ %3011, %3837 ], [ %3011, %3322 ], [ %3011, %3009 ], [ %3011, %3026 ], [ %3871, %3865 ], [ %3896, %3892 ], [ %3011, %3932 ], [ %3938, %3934 ]
  %3957 = phi float [ %3838, %3837 ], [ %3012, %3322 ], [ %3012, %3009 ], [ %3012, %3026 ], [ %3838, %3865 ], [ %3838, %3892 ], [ %3838, %3932 ], [ %3838, %3934 ]
  %3958 = phi float [ %3839, %3837 ], [ %3013, %3322 ], [ %3013, %3009 ], [ %3013, %3026 ], [ %3839, %3865 ], [ %3839, %3892 ], [ %3839, %3932 ], [ %3839, %3934 ]
  %3959 = phi float [ %3840, %3837 ], [ %3014, %3322 ], [ %3014, %3009 ], [ %3014, %3026 ], [ %3840, %3865 ], [ %3840, %3892 ], [ %3840, %3932 ], [ %3840, %3934 ]
  %3960 = phi float [ %3841, %3837 ], [ %3015, %3322 ], [ %3015, %3009 ], [ %3015, %3026 ], [ %3841, %3865 ], [ %3841, %3892 ], [ %3841, %3932 ], [ %3841, %3934 ]
  %3961 = phi float [ %3842, %3837 ], [ %3016, %3322 ], [ %3016, %3009 ], [ %3016, %3026 ], [ %3842, %3865 ], [ %3842, %3892 ], [ %3842, %3932 ], [ %3842, %3934 ]
  %3962 = phi float [ %3843, %3837 ], [ %3017, %3322 ], [ %3017, %3009 ], [ %3017, %3026 ], [ %3843, %3865 ], [ %3843, %3892 ], [ %3843, %3932 ], [ %3843, %3934 ]
  %3963 = phi float [ %3018, %3837 ], [ %3018, %3322 ], [ %3018, %3009 ], [ %3018, %3026 ], [ %3887, %3865 ], [ %3929, %3892 ], [ %3018, %3932 ], [ %3951, %3934 ]
  %3964 = phi float [ %3019, %3837 ], [ %3019, %3322 ], [ %3019, %3009 ], [ %3019, %3026 ], [ %3888, %3865 ], [ %3930, %3892 ], [ %3019, %3932 ], [ %3952, %3934 ]
  %3965 = phi float [ %3020, %3837 ], [ %3020, %3322 ], [ %3020, %3009 ], [ %3020, %3026 ], [ %3889, %3865 ], [ %3931, %3892 ], [ %3020, %3932 ], [ %3953, %3934 ]
  %3966 = phi float [ %3844, %3837 ], [ %3021, %3322 ], [ %3021, %3009 ], [ %3021, %3026 ], [ %3844, %3865 ], [ %3844, %3892 ], [ %3844, %3932 ], [ %3844, %3934 ]
  %3967 = phi float [ %3022, %3837 ], [ %3022, %3322 ], [ %3022, %3009 ], [ %3022, %3026 ], [ %3877, %3865 ], [ %3923, %3892 ], [ %3022, %3932 ], [ %3945, %3934 ]
  %3968 = phi float [ %3023, %3837 ], [ %3023, %3322 ], [ %3023, %3009 ], [ %3023, %3026 ], [ %3874, %3865 ], [ %3900, %3892 ], [ %3023, %3932 ], [ %3942, %3934 ]
  %3969 = phi float [ %3024, %3837 ], [ %3024, %3322 ], [ %3024, %3009 ], [ %3024, %3026 ], [ %3880, %3865 ], [ %3925, %3892 ], [ %3024, %3932 ], [ %3947, %3934 ]
  %3970 = phi float [ %3845, %3837 ], [ %3025, %3322 ], [ %3025, %3009 ], [ %3025, %3026 ], [ %3845, %3865 ], [ %3845, %3892 ], [ %3845, %3932 ], [ %3845, %3934 ]
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 0
  %3973 = call float @dx.op.dot2.f32(i32 54, float %3955, float %3956, float %3955, float %3956)  ; Dot2(ax,ay,bx,by)
  %3974 = fmul fast float %3973, 0x3FE3333340000000
  %3975 = fsub fast float 1.000000e+00, %3974
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3955, float %3956, float %3975, float %3955, float %3956, float %3975)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = call float @dx.op.unary.f32(i32 25, float %3976)  ; Rsqrt(value)
  %3978 = fmul fast float %3977, %3955
  %3979 = fmul fast float %3977, %3956
  %3980 = fmul fast float %3975, %3977
  %3981 = fmul fast float %3980, %79
  %3982 = fmul fast float %3980, %81
  %3983 = fmul fast float %3980, %83
  %3984 = fmul fast float %3978, %51
  %3985 = fmul fast float %3978, %52
  %3986 = fmul fast float %3978, %53
  %3987 = fadd fast float %3981, %3984
  %3988 = fadd fast float %3982, %3985
  %3989 = fadd fast float %3983, %3986
  %3990 = fmul fast float %93, %3979
  %3991 = fmul fast float %94, %3979
  %3992 = fmul fast float %95, %3979
  %3993 = fadd fast float %3987, %3990
  %3994 = fadd fast float %3988, %3991
  %3995 = fadd fast float %3989, %3992
  %3996 = call float @dx.op.dot3.f32(i32 55, float %3993, float %3994, float %3995, float %3993, float %3994, float %3995)  ; Dot3(ax,ay,az,bx,by,bz)
  %3997 = call float @dx.op.unary.f32(i32 25, float %3996)  ; Rsqrt(value)
  %3998 = fmul fast float %3993, %3997
  %3999 = fmul fast float %3994, %3997
  %4000 = fmul fast float %3995, %3997
  br i1 %135, label %4001, label %4069, !dx.controlflow.hints !80

; <label>:4001                                    ; preds = %3954
  %4002 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %36, float %329, float %330, float undef, float undef, i32 0, i32 0, i32 undef, float %328)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4003 = extractvalue %dx.types.ResRet.f32 %4002, 0
  %4004 = extractvalue %dx.types.ResRet.f32 %4002, 1
  %4005 = extractvalue %dx.types.ResRet.f32 %4002, 2
  %4006 = add i32 %42, 360
  %4007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4008 = extractvalue %dx.types.ResRet.i32 %4007, 0
  %4009 = bitcast i32 %4008 to float
  %4010 = add i32 %42, 556
  %4011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4010, i32 undef)  ; BufferLoad(srv,index,wot)
  %4012 = extractvalue %dx.types.ResRet.i32 %4011, 0
  %4013 = add i32 %4012, 0
  %4014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %4013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4015 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %4014, %dx.types.Handle %67, float %58, float %59, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %4016 = extractvalue %dx.types.ResRet.f32 %4015, 0
  %4017 = fmul fast float %4016, %4009
  %4018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4006, i32 undef)  ; BufferLoad(srv,index,wot)
  %4019 = extractvalue %dx.types.ResRet.i32 %4018, 1
  %4020 = bitcast i32 %4019 to float
  %4021 = extractvalue %dx.types.ResRet.i32 %4018, 2
  %4022 = bitcast i32 %4021 to float
  %4023 = fsub fast float %4022, %4020
  %4024 = call float @dx.op.binary.f32(i32 35, float %4023, float 0x3FB99999A0000000)  ; FMax(a,b)
  %4025 = fsub fast float %44, %4020
  %4026 = fdiv fast float %4025, %4024
  %4027 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4028 = fsub fast float 1.000000e+00, %4027
  %4029 = fmul fast float %4017, %4028
  %4030 = add i32 %42, 376
  %4031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %4030, i32 undef)  ; BufferLoad(srv,index,wot)
  %4032 = extractvalue %dx.types.ResRet.i32 %4031, 0
  %4033 = bitcast i32 %4032 to float
  %4034 = fcmp fast une float %4033, -1.000000e+00
  br i1 %4034, label %4035, label %4051, !dx.controlflow.hints !81

; <label>:4035                                    ; preds = %4001
  %4036 = extractvalue %dx.types.ResRet.i32 %4031, 1
  %4037 = bitcast i32 %4036 to float
  %4038 = fmul fast float %129, %129
  %4039 = fmul fast float %130, %130
  %4040 = fadd fast float %4039, %4038
  %4041 = fmul fast float %131, %131
  %4042 = fadd fast float %4040, %4041
  %4043 = call float @dx.op.unary.f32(i32 24, float %4042)  ; Sqrt(value)
  %4044 = fsub fast float %4043, %4033
  %4045 = fsub fast float %4037, %4033
  %4046 = fdiv fast float %4044, %4045
  %4047 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4048 = fsub fast float 1.000000e+00, %4029
  %4049 = fmul fast float %4047, %4048
  %4050 = fadd fast float %4049, %4029
  br label %4051

; <label>:4051                                    ; preds = %4035, %4001
  %4052 = phi float [ %4050, %4035 ], [ %4029, %4001 ]
  %4053 = call float @dx.op.dot3.f32(i32 55, float %3960, float %3961, float %3962, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4054 = fmul fast float %4003, 2.500000e+00
  %4055 = fmul fast float %4054, %4053
  %4056 = fmul fast float %4004, 2.500000e+00
  %4057 = fmul fast float %4056, %4053
  %4058 = fmul fast float %4005, 2.500000e+00
  %4059 = fmul fast float %4058, %4053
  %4060 = fsub fast float %4055, %3960
  %4061 = fsub fast float %4057, %3961
  %4062 = fsub fast float %4059, %3962
  %4063 = fmul fast float %4060, %4052
  %4064 = fmul fast float %4061, %4052
  %4065 = fmul fast float %4062, %4052
  %4066 = fadd fast float %4063, %3960
  %4067 = fadd fast float %4064, %3961
  %4068 = fadd fast float %4065, %3962
  br label %4069

; <label>:4069                                    ; preds = %4051, %3954
  %4070 = phi float [ %4066, %4051 ], [ %3960, %3954 ]
  %4071 = phi float [ %4067, %4051 ], [ %3961, %3954 ]
  %4072 = phi float [ %4068, %4051 ], [ %3962, %3954 ]
  %4073 = fadd fast float %3966, 0xBFB99999A0000000
  %4074 = call float @dx.op.unary.f32(i32 7, float %4073)  ; Saturate(value)
  %4075 = fmul fast float %4074, 0x3FF1C71C80000000
  %4076 = call float @dx.op.binary.f32(i32 36, float %3966, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4077 = fsub fast float 1.000000e+00, %4075
  %4078 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4079 = fmul fast float %4078, %4070
  %4080 = fmul fast float %4078, %4071
  %4081 = fmul fast float %4078, %4072
  %4082 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4083 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4084 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4085 = fmul fast float %4075, %4070
  %4086 = fmul fast float %4075, %4071
  %4087 = fmul fast float %4075, %4072
  %4088 = fadd fast float %4085, %4076
  %4089 = fadd fast float %4086, %4076
  %4090 = fadd fast float %4087, %4076
  %4091 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4092 = call float @dx.op.unary.f32(i32 7, float %4089)  ; Saturate(value)
  %4093 = call float @dx.op.unary.f32(i32 7, float %4090)  ; Saturate(value)
  %4094 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  %4095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %4096 = extractvalue %dx.types.ResRet.i32 %4095, 0
  %4097 = and i32 %4096, 1
  %4098 = icmp eq i32 %4097, 0
  br i1 %4098, label %4113, label %4099

; <label>:4099                                    ; preds = %4069
  %4100 = call float @dx.op.binary.f32(i32 35, float %4083, float %4084)  ; FMax(a,b)
  %4101 = call float @dx.op.binary.f32(i32 35, float %4082, float %4100)  ; FMax(a,b)
  %4102 = fcmp fast ogt float %4101, 0.000000e+00
  %4103 = bitcast float %4101 to i32
  %4104 = sub nsw i32 2129859010, %4103
  %4105 = bitcast i32 %4104 to float
  %4106 = select i1 %4102, float %4105, float 0.000000e+00
  %4107 = fmul fast float %4082, %3963
  %4108 = fmul fast float %4083, %3964
  %4109 = fmul fast float %4084, %3965
  %4110 = fmul fast float %4107, %4106
  %4111 = fmul fast float %4108, %4106
  %4112 = fmul fast float %4109, %4106
  br label %4113

; <label>:4113                                    ; preds = %4099, %4069
  %4114 = phi float [ %4110, %4099 ], [ %3963, %4069 ]
  %4115 = phi float [ %4111, %4099 ], [ %3964, %4069 ]
  %4116 = phi float [ %4112, %4099 ], [ %3965, %4069 ]
  %4117 = fadd fast float %4082, 0xBFD51EB860000000
  %4118 = fadd fast float %4083, 0xBFD51EB860000000
  %4119 = fadd fast float %4084, 0xBFD51EB860000000
  %4120 = fmul fast float %4117, %4117
  %4121 = fmul fast float %4118, %4118
  %4122 = fmul fast float %4119, %4119
  %4123 = fmul fast float %4120, %4120
  %4124 = fmul fast float %4123, 1.000000e+02
  %4125 = fmul fast float %4121, %4121
  %4126 = fmul fast float %4125, 1.000000e+02
  %4127 = fmul fast float %4122, %4122
  %4128 = fmul fast float %4127, 1.000000e+02
  %4129 = fadd fast float %4124, 3.500000e+00
  %4130 = fadd fast float %4126, 3.500000e+00
  %4131 = fadd fast float %4128, 3.500000e+00
  %4132 = call float @dx.op.binary.f32(i32 35, float %4114, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4133 = call float @dx.op.binary.f32(i32 35, float %4115, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4134 = call float @dx.op.binary.f32(i32 35, float %4116, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4135 = fdiv fast float %4129, %4132
  %4136 = fdiv fast float %4130, %4133
  %4137 = fdiv fast float %4131, %4134
  %4138 = fmul fast float %3969, 0xBFF7154760000000
  %4139 = fmul fast float %4138, %4135
  %4140 = call float @dx.op.unary.f32(i32 21, float %4139)  ; Exp(value)
  %4141 = fmul fast float %4140, 2.500000e-01
  %4142 = fmul fast float %3969, 0xBFDEC709E0000000
  %4143 = fmul fast float %4142, %4135
  %4144 = call float @dx.op.unary.f32(i32 21, float %4143)  ; Exp(value)
  %4145 = fmul fast float %4144, 7.500000e-01
  %4146 = fmul fast float %4138, %4136
  %4147 = call float @dx.op.unary.f32(i32 21, float %4146)  ; Exp(value)
  %4148 = fmul fast float %4147, 2.500000e-01
  %4149 = fmul fast float %4142, %4136
  %4150 = call float @dx.op.unary.f32(i32 21, float %4149)  ; Exp(value)
  %4151 = fmul fast float %4150, 7.500000e-01
  %4152 = fmul fast float %4138, %4137
  %4153 = call float @dx.op.unary.f32(i32 21, float %4152)  ; Exp(value)
  %4154 = fmul fast float %4153, 2.500000e-01
  %4155 = fmul fast float %4142, %4137
  %4156 = call float @dx.op.unary.f32(i32 21, float %4155)  ; Exp(value)
  %4157 = fmul fast float %4156, 7.500000e-01
  %4158 = fadd fast float %4141, %4145
  %4159 = fadd fast float %4148, %4151
  %4160 = fadd fast float %4154, %4157
  %4161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4162 = extractvalue %dx.types.CBufRet.i32 %4161, 3
  %4163 = and i32 %4162, 8
  %4164 = icmp ne i32 %4163, 0
  %4165 = call float @dx.op.binary.f32(i32 35, float %4082, float %4070)  ; FMax(a,b)
  %4166 = call float @dx.op.binary.f32(i32 35, float %4083, float %4070)  ; FMax(a,b)
  %4167 = call float @dx.op.binary.f32(i32 35, float %4084, float %4070)  ; FMax(a,b)
  %4168 = call float @dx.op.dot3.f32(i32 55, float %4082, float %4083, float %4084, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4169 = select i1 %370, float %4070, float %4082
  %4170 = select i1 %370, float %4168, float %4083
  %4171 = select i1 %370, float 1.000000e+00, float %4084
  %4172 = select i1 %4164, float %4165, float %4169
  %4173 = select i1 %4164, float %4166, float %4170
  %4174 = select i1 %4164, float %4167, float %4171
  %4175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4176 = extractvalue %dx.types.CBufRet.f32 %4175, 0
  %4177 = extractvalue %dx.types.CBufRet.f32 %4175, 1
  %4178 = extractvalue %dx.types.CBufRet.f32 %4175, 2
  %4179 = fadd fast float %4176, %129
  %4180 = fadd fast float %4177, %130
  %4181 = fadd fast float %4178, %131
  %4182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4183 = extractvalue %dx.types.CBufRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.CBufRet.f32 %4182, 1
  %4185 = fsub fast float %4179, %4183
  %4186 = fsub fast float %4180, %4184
  %4187 = fmul fast float %4185, %4185
  %4188 = fmul fast float %4186, %4186
  %4189 = fadd fast float %4187, %4188
  %4190 = call float @dx.op.unary.f32(i32 24, float %4189)  ; Sqrt(value)
  %4191 = extractvalue %dx.types.CBufRet.f32 %4182, 2
  %4192 = fcmp fast olt float %4190, %4191
  br i1 %4192, label %4193, label %4260

; <label>:4193                                    ; preds = %4113
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 0
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 0
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.CBufRet.f32 %4194, 1
  %4201 = extractvalue %dx.types.CBufRet.f32 %4196, 1
  %4202 = extractvalue %dx.types.CBufRet.f32 %4198, 1
  %4203 = extractvalue %dx.types.CBufRet.f32 %4194, 3
  %4204 = extractvalue %dx.types.CBufRet.f32 %4196, 3
  %4205 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4206 = fadd fast float %4203, %4179
  %4207 = fadd fast float %4204, %4180
  %4208 = fadd fast float %4205, %4181
  %4209 = fmul fast float %4206, %4195
  %4210 = call float @dx.op.tertiary.f32(i32 46, float %4207, float %4197, float %4209)  ; FMad(a,b,c)
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4208, float %4199, float %4210)  ; FMad(a,b,c)
  %4212 = fmul fast float %4206, %4200
  %4213 = call float @dx.op.tertiary.f32(i32 46, float %4207, float %4201, float %4212)  ; FMad(a,b,c)
  %4214 = call float @dx.op.tertiary.f32(i32 46, float %4208, float %4202, float %4213)  ; FMad(a,b,c)
  %4215 = fsub fast float %4211, %4203
  %4216 = fsub fast float %4214, %4204
  %4217 = fsub fast float %4215, %4183
  %4218 = fadd fast float %4217, %4191
  %4219 = fsub fast float %4216, %4184
  %4220 = fadd fast float %4219, %4191
  %4221 = extractvalue %dx.types.CBufRet.f32 %4182, 3
  %4222 = fmul fast float %4218, %4221
  %4223 = fmul fast float %4220, %4221
  %4224 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4225 = call float @dx.op.unary.f32(i32 7, float %4223)  ; Saturate(value)
  %4226 = fsub fast float 1.000000e+00, %4224
  %4227 = fsub fast float 1.000000e+00, %4225
  %4228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %36, float %4226, float %4227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = fcmp fast ugt float %4229, 0.000000e+00
  br i1 %4230, label %4231, label %4534

; <label>:4231                                    ; preds = %4193
  %4232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4232, 2
  %4234 = fmul fast float %4233, %4229
  %4235 = extractvalue %dx.types.CBufRet.f32 %4232, 3
  %4236 = fadd fast float %4235, %4234
  %4237 = extractvalue %dx.types.CBufRet.f32 %4198, 2
  %4238 = fadd fast float %4236, %4205
  %4239 = fmul fast float %4211, %4199
  %4240 = call float @dx.op.tertiary.f32(i32 46, float %4214, float %4202, float %4239)  ; FMad(a,b,c)
  %4241 = call float @dx.op.tertiary.f32(i32 46, float %4238, float %4237, float %4240)  ; FMad(a,b,c)
  %4242 = fsub fast float %4241, %4205
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4245 = fsub fast float %4242, %4244
  %4246 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %36, float %4226, float %4227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4247 = extractvalue %dx.types.ResRet.f32 %4246, 0
  %4248 = extractvalue %dx.types.ResRet.f32 %4246, 1
  %4249 = extractvalue %dx.types.ResRet.f32 %4246, 2
  %4250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %36, float %4226, float %4227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.ResRet.f32 %4250, 2
  %4254 = fadd fast float %4251, %4247
  %4255 = fmul fast float %4254, 0x3F847AE140000000
  %4256 = fadd fast float %4252, %4248
  %4257 = fmul fast float %4256, 0x3F847AE140000000
  %4258 = fadd fast float %4253, %4249
  %4259 = fmul fast float %4258, 0x3F847AE140000000
  br label %4534

; <label>:4260                                    ; preds = %4113
  %4261 = and i32 %346, 1
  %4262 = icmp eq i32 %4261, 0
  br i1 %4262, label %4534, label %4263

; <label>:4263                                    ; preds = %4260
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 0
  %4266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4267 = extractvalue %dx.types.CBufRet.f32 %4266, 0
  %4268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4268, 0
  %4270 = extractvalue %dx.types.CBufRet.f32 %4264, 1
  %4271 = extractvalue %dx.types.CBufRet.f32 %4266, 1
  %4272 = extractvalue %dx.types.CBufRet.f32 %4268, 1
  %4273 = extractvalue %dx.types.CBufRet.f32 %4264, 3
  %4274 = extractvalue %dx.types.CBufRet.f32 %4266, 3
  %4275 = extractvalue %dx.types.CBufRet.f32 %4268, 3
  %4276 = fadd fast float %4273, %4179
  %4277 = fadd fast float %4274, %4180
  %4278 = fadd fast float %4275, %4181
  %4279 = fmul fast float %4276, %4265
  %4280 = call float @dx.op.tertiary.f32(i32 46, float %4277, float %4267, float %4279)  ; FMad(a,b,c)
  %4281 = call float @dx.op.tertiary.f32(i32 46, float %4278, float %4269, float %4280)  ; FMad(a,b,c)
  %4282 = fmul fast float %4276, %4270
  %4283 = call float @dx.op.tertiary.f32(i32 46, float %4277, float %4271, float %4282)  ; FMad(a,b,c)
  %4284 = call float @dx.op.tertiary.f32(i32 46, float %4278, float %4272, float %4283)  ; FMad(a,b,c)
  %4285 = fsub fast float %4281, %4273
  %4286 = fsub fast float %4284, %4274
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 0
  %4289 = extractvalue %dx.types.CBufRet.f32 %4287, 1
  %4290 = extractvalue %dx.types.CBufRet.f32 %4287, 2
  %4291 = extractvalue %dx.types.CBufRet.f32 %4287, 3
  %4292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.f32 %4292, 3
  %4294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.i32 %4294, 0
  %4296 = extractvalue %dx.types.CBufRet.i32 %4294, 1
  %4297 = udiv i32 %4296, %4295
  %4298 = fsub fast float %4285, %4288
  %4299 = fsub fast float %4286, %4289
  %4300 = call float @dx.op.binary.f32(i32 35, float %4298, float 0.000000e+00)  ; FMax(a,b)
  %4301 = call float @dx.op.binary.f32(i32 35, float %4299, float 0.000000e+00)  ; FMax(a,b)
  %4302 = call float @dx.op.binary.f32(i32 36, float %4300, float %4290)  ; FMin(a,b)
  %4303 = call float @dx.op.binary.f32(i32 36, float %4301, float %4291)  ; FMin(a,b)
  %4304 = add i32 %4295, -1
  %4305 = add i32 %4297, -1
  %4306 = fmul fast float %4302, %4293
  %4307 = fmul fast float %4303, %4293
  %4308 = fptoui float %4306 to i32
  %4309 = fptoui float %4307 to i32
  %4310 = call i32 @dx.op.binary.i32(i32 40, i32 %4308, i32 %4304)  ; UMin(a,b)
  %4311 = call i32 @dx.op.binary.i32(i32 40, i32 %4309, i32 %4305)  ; UMin(a,b)
  %4312 = mul i32 %4311, %4295
  %4313 = add i32 %4312, %4310
  %4314 = shl i32 %4313, 2
  %4315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.i32 %4315, 0
  %4317 = icmp eq i32 %4316, -1
  br i1 %4317, label %4534, label %4318

; <label>:4318                                    ; preds = %4263
  %4319 = mul i32 %4316, 148
  %4320 = add i32 %4319, 4
  %4321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.f32 %4321, 0
  %4323 = add i32 %4319, 8
  %4324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4323, i32 undef)  ; BufferLoad(srv,index,wot)
  %4325 = extractvalue %dx.types.ResRet.f32 %4324, 0
  %4326 = add i32 %4319, 36
  %4327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4328 = extractvalue %dx.types.ResRet.f32 %4327, 0
  %4329 = add i32 %4319, 60
  %4330 = add i32 %4319, 92
  %4331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4330, i32 undef)  ; BufferLoad(srv,index,wot)
  %4332 = extractvalue %dx.types.ResRet.i32 %4331, 0
  %4333 = add i32 %4319, 116
  %4334 = fsub fast float %4285, %4322
  %4335 = fsub fast float %4286, %4325
  %4336 = fmul fast float %4293, %4334
  %4337 = fmul fast float %4293, %4335
  %4338 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4339 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4340 = fsub fast float 1.000000e+00, %4339
  %4341 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4342 = extractvalue %dx.types.CBufRet.f32 %4341, 2
  %4343 = call float @dx.op.unary.f32(i32 83, float %4338)  ; DerivCoarseX(value)
  %4344 = call float @dx.op.unary.f32(i32 83, float %4340)  ; DerivCoarseX(value)
  %4345 = call float @dx.op.unary.f32(i32 84, float %4338)  ; DerivCoarseY(value)
  %4346 = call float @dx.op.unary.f32(i32 84, float %4340)  ; DerivCoarseY(value)
  %4347 = fmul fast float %4343, %4342
  %4348 = fmul fast float %4344, %4342
  %4349 = fmul fast float %4345, %4342
  %4350 = fmul fast float %4346, %4342
  %4351 = call float @dx.op.dot2.f32(i32 54, float %4349, float %4350, float %4349, float %4350)  ; Dot2(ax,ay,bx,by)
  %4352 = call float @dx.op.dot2.f32(i32 54, float %4347, float %4348, float %4347, float %4348)  ; Dot2(ax,ay,bx,by)
  %4353 = call float @dx.op.binary.f32(i32 35, float %4352, float %4351)  ; FMax(a,b)
  %4354 = call float @dx.op.unary.f32(i32 23, float %4353)  ; Log(value)
  %4355 = fmul fast float %4354, 5.000000e-01
  %4356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.f32 %4356, 1
  %4358 = fadd fast float %4357, %4355
  %4359 = call float @dx.op.binary.f32(i32 35, float %4358, float 0.000000e+00)  ; FMax(a,b)
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 3
  %4362 = fadd fast float %4361, %4359
  %4363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4364 = extractvalue %dx.types.CBufRet.f32 %4363, 3
  %4365 = fadd fast float %4362, %4364
  %4366 = add i32 %4332, 0
  %4367 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4366, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4368 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4367, i32 0)  ; GetDimensions(handle,mipLevel)
  %4369 = extractvalue %dx.types.Dimensions %4368, 0
  %4370 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4369)  ; FirstbitLo(value)
  %4371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.i32 %4371, 1
  %4373 = sub nsw i32 %4372, %4370
  %4374 = sitofp i32 %4373 to float
  %4375 = fsub fast float %4365, %4374
  %4376 = call float @dx.op.binary.f32(i32 35, float %4375, float 0.000000e+00)  ; FMax(a,b)
  %4377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4367, %dx.types.Handle %34, float %4338, float %4340, float %4328, float undef, i32 0, i32 0, i32 undef, float %4376)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = fcmp ule float %4378, 0x3FE0101020000000
  %4380 = extractvalue %dx.types.CBufRet.i32 %4371, 0
  %4381 = and i32 %4380, 128
  %4382 = icmp ne i32 %4381, 0
  %4383 = and i1 %4379, %4382
  br i1 %4383, label %4534, label %4384

; <label>:4384                                    ; preds = %4318
  %4385 = add i32 %4319, 20
  %4386 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4385, i32 undef)  ; BufferLoad(srv,index,wot)
  %4387 = extractvalue %dx.types.ResRet.f32 %4386, 0
  %4388 = add i32 %4319, 24
  %4389 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4388, i32 undef)  ; BufferLoad(srv,index,wot)
  %4390 = extractvalue %dx.types.ResRet.f32 %4389, 0
  %4391 = add i32 %4319, 40
  %4392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = add i32 %4319, 96
  %4395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4394, i32 undef)  ; BufferLoad(srv,index,wot)
  %4396 = extractvalue %dx.types.ResRet.i32 %4395, 0
  %4397 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.f32 %4397, 2
  %4399 = fmul fast float %4398, %4338
  %4400 = fmul fast float %4398, %4340
  %4401 = extractvalue %dx.types.CBufRet.f32 %4397, 3
  %4402 = fadd fast float %4399, %4401
  %4403 = fadd fast float %4400, %4401
  %4404 = add i32 %4396, 0
  %4405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4404, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4406 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4405, i32 0)  ; GetDimensions(handle,mipLevel)
  %4407 = extractvalue %dx.types.Dimensions %4406, 0
  %4408 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4407)  ; FirstbitLo(value)
  %4409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.i32 %4409, 1
  %4411 = sub nsw i32 %4410, %4408
  %4412 = sitofp i32 %4411 to float
  %4413 = fsub fast float %4362, %4412
  %4414 = call float @dx.op.binary.f32(i32 35, float %4413, float 0.000000e+00)  ; FMax(a,b)
  %4415 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4405, %dx.types.Handle %34, float %4402, float %4403, float %4393, float undef, i32 0, i32 0, i32 undef, float %4414)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4416 = extractvalue %dx.types.ResRet.f32 %4415, 0
  %4417 = fmul fast float %4416, %4387
  %4418 = fadd fast float %4417, %4390
  %4419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4420 = extractvalue %dx.types.CBufRet.f32 %4419, 0
  %4421 = extractvalue %dx.types.CBufRet.f32 %4419, 1
  %4422 = extractvalue %dx.types.CBufRet.f32 %4419, 2
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 3
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 3
  %4427 = extractvalue %dx.types.CBufRet.f32 %4419, 3
  %4428 = fadd fast float %4424, %4285
  %4429 = fadd fast float %4426, %4286
  %4430 = fadd fast float %4418, %4427
  %4431 = fmul fast float %4428, %4420
  %4432 = call float @dx.op.tertiary.f32(i32 46, float %4429, float %4421, float %4431)  ; FMad(a,b,c)
  %4433 = call float @dx.op.tertiary.f32(i32 46, float %4430, float %4422, float %4432)  ; FMad(a,b,c)
  %4434 = fsub fast float %4433, %4427
  %4435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4436 = extractvalue %dx.types.CBufRet.f32 %4435, 2
  %4437 = fsub fast float %4434, %4436
  %4438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.i32 %4438, 0
  %4440 = call i32 @dx.op.binary.i32(i32 40, i32 %4316, i32 %4439)  ; UMin(a,b)
  %4441 = mul i32 %4440, 36
  %4442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4441, i32 undef)  ; BufferLoad(srv,index,wot)
  %4443 = extractvalue %dx.types.ResRet.i32 %4442, 0
  %4444 = add i32 %4441, 4
  %4445 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4446 = extractvalue %dx.types.CBufRet.f32 %4445, 0
  %4447 = fmul fast float %4446, %4338
  %4448 = fmul fast float %4446, %4340
  %4449 = extractvalue %dx.types.CBufRet.f32 %4445, 1
  %4450 = fadd fast float %4447, %4449
  %4451 = fadd fast float %4448, %4449
  %4452 = icmp eq i32 %4443, 0
  br i1 %4452, label %4521, label %4453

; <label>:4453                                    ; preds = %4384
  br label %4454

; <label>:4454                                    ; preds = %4511, %4453
  %4455 = phi float [ %4512, %4511 ], [ 0.000000e+00, %4453 ]
  %4456 = phi float [ %4513, %4511 ], [ 0.000000e+00, %4453 ]
  %4457 = phi float [ %4514, %4511 ], [ 0.000000e+00, %4453 ]
  %4458 = phi float [ %4515, %4511 ], [ 0.000000e+00, %4453 ]
  %4459 = phi float [ %4516, %4511 ], [ 0.000000e+00, %4453 ]
  %4460 = phi float [ %4517, %4511 ], [ 0.000000e+00, %4453 ]
  %4461 = phi i32 [ %4518, %4511 ], [ 0, %4453 ]
  %4462 = shl i32 %4461, 2
  %4463 = add i32 %4329, %4462
  %4464 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4463, i32 undef)  ; BufferLoad(srv,index,wot)
  %4465 = extractvalue %dx.types.ResRet.f32 %4464, 0
  %4466 = add i32 %4333, %4462
  %4467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4466, i32 undef)  ; BufferLoad(srv,index,wot)
  %4468 = extractvalue %dx.types.ResRet.i32 %4467, 0
  %4469 = add i32 %4468, 0
  %4470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4469, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4471 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4470, i32 0)  ; GetDimensions(handle,mipLevel)
  %4472 = extractvalue %dx.types.Dimensions %4471, 0
  %4473 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4472)  ; FirstbitLo(value)
  %4474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.i32 %4474, 1
  %4476 = sub nsw i32 %4475, %4473
  %4477 = sitofp i32 %4476 to float
  %4478 = fsub fast float %4362, %4477
  %4479 = call float @dx.op.binary.f32(i32 35, float %4478, float 0.000000e+00)  ; FMax(a,b)
  %4480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4470, %dx.types.Handle %34, float %4450, float %4451, float %4465, float undef, i32 0, i32 0, i32 undef, float %4479)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4481 = extractvalue %dx.types.ResRet.f32 %4480, 0
  %4482 = fcmp fast ogt float %4481, 0.000000e+00
  br i1 %4482, label %4483, label %4511

; <label>:4483                                    ; preds = %4454
  %4484 = add i32 %4444, %4462
  %4485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4484, i32 undef)  ; BufferLoad(srv,index,wot)
  %4486 = extractvalue %dx.types.ResRet.i32 %4485, 0
  %4487 = and i32 %4486, 32767
  %4488 = mul nuw nsw i32 %4487, 928
  %4489 = add nuw nsw i32 %4488, 48
  %4490 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4489, i32 undef)  ; BufferLoad(srv,index,wot)
  %4491 = extractvalue %dx.types.ResRet.f32 %4490, 0
  %4492 = extractvalue %dx.types.ResRet.f32 %4490, 1
  %4493 = extractvalue %dx.types.ResRet.f32 %4490, 2
  %4494 = add nuw nsw i32 %4488, 60
  %4495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4494, i32 undef)  ; BufferLoad(srv,index,wot)
  %4496 = extractvalue %dx.types.ResRet.f32 %4495, 0
  %4497 = extractvalue %dx.types.ResRet.f32 %4495, 1
  %4498 = extractvalue %dx.types.ResRet.f32 %4495, 2
  %4499 = fmul fast float %4491, %4481
  %4500 = fmul fast float %4492, %4481
  %4501 = fmul fast float %4493, %4481
  %4502 = fadd fast float %4499, %4455
  %4503 = fadd fast float %4500, %4456
  %4504 = fadd fast float %4501, %4457
  %4505 = fmul fast float %4496, %4481
  %4506 = fmul fast float %4497, %4481
  %4507 = fmul fast float %4498, %4481
  %4508 = fadd fast float %4505, %4458
  %4509 = fadd fast float %4506, %4459
  %4510 = fadd fast float %4507, %4460
  br label %4511

; <label>:4511                                    ; preds = %4483, %4454
  %4512 = phi float [ %4502, %4483 ], [ %4455, %4454 ]
  %4513 = phi float [ %4503, %4483 ], [ %4456, %4454 ]
  %4514 = phi float [ %4504, %4483 ], [ %4457, %4454 ]
  %4515 = phi float [ %4508, %4483 ], [ %4458, %4454 ]
  %4516 = phi float [ %4509, %4483 ], [ %4459, %4454 ]
  %4517 = phi float [ %4510, %4483 ], [ %4460, %4454 ]
  %4518 = add nuw i32 %4461, 1
  %4519 = icmp eq i32 %4518, %4443
  br i1 %4519, label %4520, label %4454

; <label>:4520                                    ; preds = %4511
  br label %4521

; <label>:4521                                    ; preds = %4520, %4384
  %4522 = phi float [ 0.000000e+00, %4384 ], [ %4512, %4520 ]
  %4523 = phi float [ 0.000000e+00, %4384 ], [ %4513, %4520 ]
  %4524 = phi float [ 0.000000e+00, %4384 ], [ %4514, %4520 ]
  %4525 = phi float [ 0.000000e+00, %4384 ], [ %4515, %4520 ]
  %4526 = phi float [ 0.000000e+00, %4384 ], [ %4516, %4520 ]
  %4527 = phi float [ 0.000000e+00, %4384 ], [ %4517, %4520 ]
  %4528 = fadd fast float %4525, %4522
  %4529 = fmul fast float %4528, 0x3F847AE140000000
  %4530 = fadd fast float %4526, %4523
  %4531 = fmul fast float %4530, 0x3F847AE140000000
  %4532 = fadd fast float %4527, %4524
  %4533 = fmul fast float %4532, 0x3F847AE140000000
  br label %4534

; <label>:4534                                    ; preds = %4521, %4318, %4263, %4260, %4231, %4193
  %4535 = phi float [ %4245, %4231 ], [ -1.310720e+05, %4193 ], [ %4437, %4521 ], [ -1.310720e+05, %4263 ], [ -1.310720e+05, %4318 ], [ -1.310720e+05, %4260 ]
  %4536 = phi float [ %4255, %4231 ], [ 0.000000e+00, %4193 ], [ %4529, %4521 ], [ 0.000000e+00, %4263 ], [ 0.000000e+00, %4318 ], [ 0.000000e+00, %4260 ]
  %4537 = phi float [ %4257, %4231 ], [ 0.000000e+00, %4193 ], [ %4531, %4521 ], [ 0.000000e+00, %4263 ], [ 0.000000e+00, %4318 ], [ 0.000000e+00, %4260 ]
  %4538 = phi float [ %4259, %4231 ], [ 0.000000e+00, %4193 ], [ %4533, %4521 ], [ 0.000000e+00, %4263 ], [ 0.000000e+00, %4318 ], [ 0.000000e+00, %4260 ]
  %4539 = phi i1 [ true, %4231 ], [ false, %4193 ], [ true, %4521 ], [ false, %4263 ], [ false, %4318 ], [ false, %4260 ]
  %4540 = and i32 %346, 3
  %4541 = icmp eq i32 %4540, 1
  %4542 = select i1 %4541, float 1.000000e+00, float 0.000000e+00
  %4543 = fsub fast float %4535, %131
  %4544 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4545 = select i1 %4539, float %4544, float 1.000000e+00
  %4546 = fmul fast float %4545, %4542
  %4547 = icmp eq i32 %4540, 3
  %4548 = select i1 %4547, float 1.000000e+00, float %4546
  %4549 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4548)  ; FMax(a,b)
  %4550 = call float @dx.op.unary.f32(i32 7, float %4549)  ; Saturate(value)
  %4551 = fcmp fast une float %4550, 0.000000e+00
  %4552 = call float @dx.op.dot3.f32(i32 55, float %129, float %130, float %131, float %129, float %130, float %131)  ; Dot3(ax,ay,az,bx,by,bz)
  %4553 = call float @dx.op.unary.f32(i32 25, float %4552)  ; Rsqrt(value)
  br i1 %4551, label %4561, label %4554

; <label>:4554                                    ; preds = %4534
  %4555 = fmul fast float %4553, %129
  %4556 = fmul fast float %4553, %130
  %4557 = fmul fast float %4553, %131
  %4558 = fsub fast float -0.000000e+00, %4555
  %4559 = fsub fast float -0.000000e+00, %4556
  %4560 = fsub fast float -0.000000e+00, %4557
  br label %4729

; <label>:4561                                    ; preds = %4534
  %4562 = fmul fast float %129, %4553
  %4563 = fsub fast float -0.000000e+00, %4562
  %4564 = fmul fast float %130, %4553
  %4565 = fsub fast float -0.000000e+00, %4564
  %4566 = fmul fast float %131, %4553
  %4567 = fsub fast float -0.000000e+00, %4566
  %4568 = call float @dx.op.dot3.f32(i32 55, float %4563, float %4565, float %4567, float %79, float %81, float %83)  ; Dot3(ax,ay,az,bx,by,bz)
  %4569 = fmul fast float %4550, 2.500000e+00
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = fmul fast float %4550, 0x4013FFFFE0000000
  %4572 = fadd fast float %4571, 0xBFFFFFFFE0000000
  %4573 = call float @dx.op.unary.f32(i32 7, float %4572)  ; Saturate(value)
  %4574 = fmul fast float %4550, 0x4004000020000000
  %4575 = fadd fast float %4574, 0xBFF8000040000000
  %4576 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4577 = call float @dx.op.unary.f32(i32 7, float %4570)  ; Saturate(value)
  %4578 = fmul fast float %4073, 1.000000e+01
  %4579 = call float @dx.op.unary.f32(i32 7, float %4578)  ; Saturate(value)
  %4580 = fmul fast float %4579, 2.000000e+00
  %4581 = fsub fast float 3.000000e+00, %4580
  %4582 = fmul fast float %4579, %4579
  %4583 = fmul fast float %4582, %4581
  %4584 = fsub fast float 1.000000e+00, %4583
  %4585 = fsub fast float 0x3FE3333340000000, %4094
  %4586 = fmul fast float %4585, 0x400AAAAAA0000000
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fmul fast float %4584, %4587
  %4589 = fmul fast float %4172, 0x3FEA2B8620000000
  %4590 = fmul fast float %4173, 0x3FEA2B8620000000
  %4591 = fmul fast float %4174, 0x3FEA2B8620000000
  %4592 = fadd fast float %4589, 0x3FC81DFBA0000000
  %4593 = fmul fast float %4592, %4172
  %4594 = fadd fast float %4593, 0x3F910E6020000000
  %4595 = fadd fast float %4590, 0x3FC81DFBA0000000
  %4596 = fmul fast float %4595, %4173
  %4597 = fadd fast float %4596, 0x3F910E6020000000
  %4598 = fadd fast float %4591, 0x3FC81DFBA0000000
  %4599 = fmul fast float %4598, %4174
  %4600 = fadd fast float %4599, 0x3F910E6020000000
  %4601 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4602 = call float @dx.op.unary.f32(i32 7, float %4597)  ; Saturate(value)
  %4603 = call float @dx.op.unary.f32(i32 7, float %4600)  ; Saturate(value)
  %4604 = fsub fast float %4601, %4172
  %4605 = fsub fast float %4602, %4173
  %4606 = fsub fast float %4603, %4174
  %4607 = fmul fast float %4604, %4577
  %4608 = fmul fast float %4607, %4588
  %4609 = fmul fast float %4605, %4577
  %4610 = fmul fast float %4609, %4588
  %4611 = fmul fast float %4606, %4577
  %4612 = fmul fast float %4611, %4588
  %4613 = fadd fast float %4608, %4172
  %4614 = fadd fast float %4610, %4173
  %4615 = fadd fast float %4612, %4174
  %4616 = fmul fast float %3968, %3968
  %4617 = fmul fast float %4616, %4616
  %4618 = fadd fast float %4573, 1.000000e+00
  %4619 = fsub fast float %4618, %4588
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = call float @dx.op.dot3.f32(i32 55, float %79, float %81, float %83, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4622 = call float @dx.op.unary.f32(i32 7, float %4621)  ; Saturate(value)
  %4623 = fsub fast float 1.000000e+00, %4617
  %4624 = call float @dx.op.binary.f32(i32 36, float %4620, float %4623)  ; FMin(a,b)
  %4625 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4626 = call float @dx.op.binary.f32(i32 35, float %4624, float %4625)  ; FMax(a,b)
  %4627 = fadd fast float %4622, 0xBFE4CCCCC0000000
  %4628 = fmul fast float %4627, 0x4006DB6DA0000000
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = fmul fast float %4629, 2.000000e+00
  %4631 = fsub fast float 3.000000e+00, %4630
  %4632 = bitcast float %4091 to i32
  %4633 = ashr i32 %4632, 1
  %4634 = add nsw i32 %4633, 532487669
  %4635 = bitcast i32 %4634 to float
  %4636 = fsub fast float 1.000000e+00, %4635
  %4637 = bitcast float %4636 to i32
  %4638 = sub nsw i32 2129859010, %4637
  %4639 = bitcast i32 %4638 to float
  %4640 = fmul fast float %4639, 2.000000e+00
  %4641 = bitcast float %4092 to i32
  %4642 = ashr i32 %4641, 1
  %4643 = add nsw i32 %4642, 532487669
  %4644 = bitcast i32 %4643 to float
  %4645 = fsub fast float 1.000000e+00, %4644
  %4646 = bitcast float %4645 to i32
  %4647 = sub nsw i32 2129859010, %4646
  %4648 = bitcast i32 %4647 to float
  %4649 = fmul fast float %4648, 2.000000e+00
  %4650 = bitcast float %4093 to i32
  %4651 = ashr i32 %4650, 1
  %4652 = add nsw i32 %4651, 532487669
  %4653 = bitcast i32 %4652 to float
  %4654 = fsub fast float 1.000000e+00, %4653
  %4655 = bitcast float %4654 to i32
  %4656 = sub nsw i32 2129859010, %4655
  %4657 = bitcast i32 %4656 to float
  %4658 = fmul fast float %4657, 2.000000e+00
  %4659 = fsub fast float 0x4002A9FBE0000000, %4640
  %4660 = fadd fast float %4640, 0x3FD54FDF00000000
  %4661 = bitcast float %4660 to i32
  %4662 = sub nsw i32 2129859010, %4661
  %4663 = bitcast i32 %4662 to float
  %4664 = fmul fast float %4663, %4659
  %4665 = fmul fast float %4664, %4664
  %4666 = fsub fast float 0x4002A9FBE0000000, %4649
  %4667 = fadd fast float %4649, 0x3FD54FDF00000000
  %4668 = bitcast float %4667 to i32
  %4669 = sub nsw i32 2129859010, %4668
  %4670 = bitcast i32 %4669 to float
  %4671 = fmul fast float %4670, %4666
  %4672 = fmul fast float %4671, %4671
  %4673 = fsub fast float 0x4002A9FBE0000000, %4658
  %4674 = fadd fast float %4658, 0x3FD54FDF00000000
  %4675 = bitcast float %4674 to i32
  %4676 = sub nsw i32 2129859010, %4675
  %4677 = bitcast i32 %4676 to float
  %4678 = fmul fast float %4677, %4673
  %4679 = fmul fast float %4678, %4678
  %4680 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4665)  ; FMax(a,b)
  %4681 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4672)  ; FMax(a,b)
  %4682 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4679)  ; FMax(a,b)
  %4683 = fsub fast float 1.000000e+00, %4568
  %4684 = fadd fast float %4683, %4584
  %4685 = call float @dx.op.unary.f32(i32 7, float %4684)  ; Saturate(value)
  %4686 = fsub fast float 1.000000e+00, %4548
  %4687 = fmul fast float %4626, %4686
  %4688 = fmul fast float %4629, %4629
  %4689 = fmul fast float %4688, %4687
  %4690 = fmul fast float %4689, %4631
  %4691 = fmul fast float %4686, 0xBFE99999A0000000
  %4692 = fmul fast float %4691, %4577
  %4693 = fmul fast float %4692, %4588
  %4694 = fadd fast float %4693, 1.000000e+00
  %4695 = fadd fast float %4094, -1.000000e+00
  %4696 = fmul fast float %4694, %4695
  %4697 = fadd fast float %4696, 1.000000e+00
  %4698 = fsub fast float %4680, %4091
  %4699 = fsub fast float %4681, %4092
  %4700 = fsub fast float %4682, %4093
  %4701 = fmul fast float %4690, %4698
  %4702 = fmul fast float %4690, %4699
  %4703 = fmul fast float %4690, %4700
  %4704 = fadd fast float %4701, %4091
  %4705 = fadd fast float %4702, %4092
  %4706 = fadd fast float %4703, %4093
  %4707 = fsub fast float %79, %3998
  %4708 = fsub fast float %81, %3999
  %4709 = fsub fast float %83, %4000
  %4710 = fmul fast float %4690, %4707
  %4711 = fmul fast float %4690, %4708
  %4712 = fmul fast float %4690, %4709
  %4713 = fadd fast float %4710, %3998
  %4714 = fadd fast float %4711, %3999
  %4715 = fadd fast float %4712, %4000
  %4716 = fmul fast float %4690, %4685
  %4717 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4718 = fsub fast float 1.000000e+00, %4717
  %4719 = fmul fast float %4716, %4718
  %4720 = fadd fast float %4719, %4717
  %4721 = fsub fast float 1.000000e+00, %3968
  %4722 = fmul fast float %4690, %4721
  %4723 = fadd fast float %4722, %3968
  %4724 = call float @dx.op.dot3.f32(i32 55, float %4713, float %4714, float %4715, float %4713, float %4714, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4725 = call float @dx.op.unary.f32(i32 25, float %4724)  ; Rsqrt(value)
  %4726 = fmul fast float %4713, %4725
  %4727 = fmul fast float %4714, %4725
  %4728 = fmul fast float %4715, %4725
  br label %4729

; <label>:4729                                    ; preds = %4561, %4554
  %4730 = phi float [ %4560, %4554 ], [ %4567, %4561 ]
  %4731 = phi float [ %4559, %4554 ], [ %4565, %4561 ]
  %4732 = phi float [ %4558, %4554 ], [ %4563, %4561 ]
  %4733 = phi float [ %4557, %4554 ], [ %4566, %4561 ]
  %4734 = phi float [ %4556, %4554 ], [ %4564, %4561 ]
  %4735 = phi float [ %4555, %4554 ], [ %4562, %4561 ]
  %4736 = phi float [ %4172, %4554 ], [ %4613, %4561 ]
  %4737 = phi float [ %4173, %4554 ], [ %4614, %4561 ]
  %4738 = phi float [ %4174, %4554 ], [ %4615, %4561 ]
  %4739 = phi float [ %4091, %4554 ], [ %4704, %4561 ]
  %4740 = phi float [ %4092, %4554 ], [ %4705, %4561 ]
  %4741 = phi float [ %4093, %4554 ], [ %4706, %4561 ]
  %4742 = phi float [ %3998, %4554 ], [ %4726, %4561 ]
  %4743 = phi float [ %3999, %4554 ], [ %4727, %4561 ]
  %4744 = phi float [ %4000, %4554 ], [ %4728, %4561 ]
  %4745 = phi float [ %4094, %4554 ], [ %4720, %4561 ]
  %4746 = phi float [ %3968, %4554 ], [ %4723, %4561 ]
  %4747 = select i1 %370, float 0.000000e+00, float %4741
  %4748 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4743, float %4744, float %4732, float %4731, float %4730)  ; Dot3(ax,ay,az,bx,by,bz)
  %4749 = call float @dx.op.unary.f32(i32 7, float %4748)  ; Saturate(value)
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4735, float %4734, float %4733, float %4742, float %4743, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = fmul fast float %4750, 2.000000e+00
  %4752 = fmul fast float %4751, %4742
  %4753 = fmul fast float %4751, %4743
  %4754 = fmul fast float %4751, %4744
  %4755 = fsub fast float %4735, %4752
  %4756 = fsub fast float %4734, %4753
  %4757 = fsub fast float %4733, %4754
  %4758 = call float @dx.op.binary.f32(i32 36, float %4746, float 1.000000e+00)  ; FMin(a,b)
  %4759 = fsub fast float 1.000000e+00, %4746
  %4760 = bitcast float %4759 to i32
  %4761 = sub nsw i32 2129859010, %4760
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4765 = extractvalue %dx.types.CBufRet.f32 %4762, 2
  %4766 = fadd fast float %4763, %129
  %4767 = fadd fast float %4764, %130
  %4768 = fadd fast float %4765, %131
  %4769 = fmul fast float %4742, 3.200000e+01
  %4770 = fmul fast float %4743, 3.200000e+01
  %4771 = fadd fast float %4766, %4769
  %4772 = fadd fast float %4767, %4770
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  %4775 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4776 = fsub fast float %4771, %4774
  %4777 = fsub fast float %4772, %4775
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.CBufRet.f32 %4778, 1
  %4781 = fmul fast float %4776, %4779
  %4782 = fmul fast float %4777, %4780
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = fmul fast float %4781, %4784
  %4786 = extractvalue %dx.types.CBufRet.f32 %4783, 1
  %4787 = fadd fast float %4785, %4786
  %4788 = extractvalue %dx.types.CBufRet.f32 %4783, 2
  %4789 = fmul fast float %4788, %4782
  %4790 = extractvalue %dx.types.CBufRet.f32 %4783, 3
  %4791 = fadd fast float %4789, %4790
  %4792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %36, float %4787, float %4791, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4793 = extractvalue %dx.types.ResRet.f32 %4792, 0
  %4794 = extractvalue %dx.types.ResRet.f32 %4792, 1
  %4795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4796 = extractvalue %dx.types.CBufRet.f32 %4795, 1
  %4797 = extractvalue %dx.types.CBufRet.f32 %4795, 0
  %4798 = fsub fast float %4796, %4797
  %4799 = fmul fast float %4798, %4793
  %4800 = fadd fast float %4799, %4797
  %4801 = extractvalue %dx.types.CBufRet.f32 %4795, 3
  %4802 = extractvalue %dx.types.CBufRet.f32 %4795, 2
  %4803 = fsub fast float %4801, %4802
  %4804 = fmul fast float %4803, %4794
  %4805 = fadd fast float %4804, %4802
  %4806 = fsub fast float %4768, %4800
  %4807 = fsub fast float %4805, %4800
  %4808 = fdiv fast float %4806, %4807
  %4809 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4810 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4811 = extractvalue %dx.types.CBufRet.f32 %4810, 0
  %4812 = fmul fast float %4811, %4809
  %4813 = extractvalue %dx.types.CBufRet.f32 %4810, 1
  %4814 = fadd fast float %4812, %4813
  %4815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %36, float %4787, float %4791, float %4814, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4816 = extractvalue %dx.types.ResRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.ResRet.f32 %4815, 1
  %4818 = extractvalue %dx.types.ResRet.f32 %4815, 2
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4822 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4823 = fmul fast float %4820, %4816
  %4824 = fmul fast float %4821, %4817
  %4825 = fmul fast float %4822, %4818
  %4826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4826, 0
  %4828 = extractvalue %dx.types.CBufRet.f32 %4826, 1
  %4829 = extractvalue %dx.types.CBufRet.f32 %4826, 2
  %4830 = fadd fast float %4823, %4827
  %4831 = fadd fast float %4824, %4828
  %4832 = fadd fast float %4825, %4829
  %4833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4834 = extractvalue %dx.types.CBufRet.f32 %4833, 0
  %4835 = fmul fast float %4834, %4781
  %4836 = extractvalue %dx.types.CBufRet.f32 %4833, 1
  %4837 = fadd fast float %4835, %4836
  %4838 = extractvalue %dx.types.CBufRet.f32 %4833, 2
  %4839 = fmul fast float %4838, %4782
  %4840 = extractvalue %dx.types.CBufRet.f32 %4833, 3
  %4841 = fadd fast float %4839, %4840
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.CBufRet.f32 %4842, 1
  %4845 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4846 = extractvalue %dx.types.CBufRet.f32 %4842, 3
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4851 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4852 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %4837, float %4841, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4853 = extractvalue %dx.types.ResRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.ResRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.ResRet.f32 %4852, 2
  %4856 = extractvalue %dx.types.ResRet.f32 %4852, 3
  %4857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %4837, float %4841, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4858 = extractvalue %dx.types.ResRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.ResRet.f32 %4857, 1
  %4860 = extractvalue %dx.types.ResRet.f32 %4857, 2
  %4861 = extractvalue %dx.types.ResRet.f32 %4857, 3
  %4862 = fmul fast float %4853, %4830
  %4863 = fmul fast float %4858, %4830
  %4864 = fmul fast float %4860, %4830
  %4865 = fmul fast float %4856, %4830
  %4866 = fadd fast float %4862, %4843
  %4867 = fadd fast float %4863, %4844
  %4868 = fadd fast float %4864, %4845
  %4869 = fadd fast float %4865, %4846
  %4870 = fmul fast float %4854, %4830
  %4871 = fmul fast float %4859, %4830
  %4872 = fadd fast float %4870, %4848
  %4873 = fadd fast float %4871, %4849
  %4874 = fmul fast float %4855, %4830
  %4875 = fmul fast float %4861, %4830
  %4876 = fadd fast float %4874, %4850
  %4877 = fadd fast float %4875, %4851
  %4878 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %4837, float %4841, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4879 = extractvalue %dx.types.ResRet.f32 %4878, 0
  %4880 = extractvalue %dx.types.ResRet.f32 %4878, 1
  %4881 = extractvalue %dx.types.ResRet.f32 %4878, 2
  %4882 = extractvalue %dx.types.ResRet.f32 %4878, 3
  %4883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %4837, float %4841, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4884 = extractvalue %dx.types.ResRet.f32 %4883, 0
  %4885 = extractvalue %dx.types.ResRet.f32 %4883, 1
  %4886 = extractvalue %dx.types.ResRet.f32 %4883, 2
  %4887 = extractvalue %dx.types.ResRet.f32 %4883, 3
  %4888 = fmul fast float %4879, %4831
  %4889 = fmul fast float %4884, %4831
  %4890 = fmul fast float %4886, %4831
  %4891 = fmul fast float %4882, %4831
  %4892 = fadd fast float %4866, %4888
  %4893 = fadd fast float %4867, %4889
  %4894 = fadd fast float %4868, %4890
  %4895 = fadd fast float %4869, %4891
  %4896 = fmul fast float %4880, %4831
  %4897 = fmul fast float %4885, %4831
  %4898 = fadd fast float %4872, %4896
  %4899 = fadd fast float %4873, %4897
  %4900 = fmul fast float %4881, %4831
  %4901 = fmul fast float %4887, %4831
  %4902 = fadd fast float %4876, %4900
  %4903 = fadd fast float %4877, %4901
  %4904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %4837, float %4841, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4905 = extractvalue %dx.types.ResRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.ResRet.f32 %4904, 1
  %4907 = extractvalue %dx.types.ResRet.f32 %4904, 2
  %4908 = extractvalue %dx.types.ResRet.f32 %4904, 3
  %4909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %36, float %4837, float %4841, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.ResRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.ResRet.f32 %4909, 2
  %4913 = extractvalue %dx.types.ResRet.f32 %4909, 3
  %4914 = fmul fast float %4905, %4832
  %4915 = fmul fast float %4910, %4832
  %4916 = fmul fast float %4912, %4832
  %4917 = fmul fast float %4908, %4832
  %4918 = fadd fast float %4892, %4914
  %4919 = fadd fast float %4893, %4915
  %4920 = fadd fast float %4894, %4916
  %4921 = fadd fast float %4895, %4917
  %4922 = fmul fast float %4906, %4832
  %4923 = fmul fast float %4911, %4832
  %4924 = fadd fast float %4898, %4922
  %4925 = fadd fast float %4899, %4923
  %4926 = fmul fast float %4907, %4832
  %4927 = fmul fast float %4913, %4832
  %4928 = fadd fast float %4902, %4926
  %4929 = fadd fast float %4903, %4927
  %4930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4931 = extractvalue %dx.types.CBufRet.f32 %4930, 0
  %4932 = fsub fast float %4766, %4931
  %4933 = fsub fast float %4774, %4766
  %4934 = call float @dx.op.binary.f32(i32 35, float %4933, float %4932)  ; FMax(a,b)
  %4935 = extractvalue %dx.types.CBufRet.f32 %4930, 1
  %4936 = fsub fast float %4767, %4935
  %4937 = fsub fast float %4775, %4767
  %4938 = call float @dx.op.binary.f32(i32 35, float %4937, float %4936)  ; FMax(a,b)
  %4939 = call float @dx.op.binary.f32(i32 35, float %4934, float %4938)  ; FMax(a,b)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4778, 3
  %4941 = fmul fast float %4940, %4939
  %4942 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4944 = extractvalue %dx.types.CBufRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.CBufRet.f32 %4943, 1
  %4946 = extractvalue %dx.types.CBufRet.f32 %4943, 2
  %4947 = extractvalue %dx.types.CBufRet.f32 %4943, 3
  %4948 = fsub fast float %4944, %4918
  %4949 = fsub fast float %4945, %4919
  %4950 = fsub fast float %4946, %4920
  %4951 = fsub fast float %4947, %4921
  %4952 = fmul fast float %4948, %4942
  %4953 = fmul fast float %4949, %4942
  %4954 = fmul fast float %4950, %4942
  %4955 = fmul fast float %4951, %4942
  %4956 = fadd fast float %4952, %4918
  %4957 = fadd fast float %4953, %4919
  %4958 = fadd fast float %4954, %4920
  %4959 = fadd fast float %4955, %4921
  %4960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4961 = extractvalue %dx.types.CBufRet.f32 %4960, 0
  %4962 = extractvalue %dx.types.CBufRet.f32 %4960, 1
  %4963 = fsub fast float %4961, %4924
  %4964 = fsub fast float %4962, %4925
  %4965 = fmul fast float %4963, %4942
  %4966 = fmul fast float %4964, %4942
  %4967 = fadd fast float %4965, %4924
  %4968 = fadd fast float %4966, %4925
  %4969 = extractvalue %dx.types.CBufRet.f32 %4960, 2
  %4970 = extractvalue %dx.types.CBufRet.f32 %4960, 3
  %4971 = fsub fast float %4969, %4928
  %4972 = fsub fast float %4970, %4929
  %4973 = fmul fast float %4971, %4942
  %4974 = fmul fast float %4972, %4942
  %4975 = fadd fast float %4973, %4928
  %4976 = fadd fast float %4974, %4929
  %4977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4978 = extractvalue %dx.types.CBufRet.f32 %4977, 0
  %4979 = fmul fast float %4978, %4956
  %4980 = fmul fast float %4978, %4957
  %4981 = fmul fast float %4978, %4958
  %4982 = fmul fast float %4978, %4959
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 0
  %4985 = fmul fast float %4984, %4967
  %4986 = fmul fast float %4984, %4968
  %4987 = fadd fast float %4985, %4979
  %4988 = fadd fast float %4986, %4981
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 0
  %4991 = fmul fast float %4990, %4975
  %4992 = fmul fast float %4990, %4976
  %4993 = fadd fast float %4987, %4991
  %4994 = fadd fast float %4988, %4992
  %4995 = extractvalue %dx.types.CBufRet.f32 %4977, 1
  %4996 = fmul fast float %4995, %4956
  %4997 = fmul fast float %4995, %4957
  %4998 = fmul fast float %4995, %4958
  %4999 = fmul fast float %4995, %4959
  %5000 = extractvalue %dx.types.CBufRet.f32 %4983, 1
  %5001 = fmul fast float %5000, %4967
  %5002 = fmul fast float %5000, %4968
  %5003 = fadd fast float %5001, %4996
  %5004 = fadd fast float %5002, %4998
  %5005 = extractvalue %dx.types.CBufRet.f32 %4989, 1
  %5006 = fmul fast float %5005, %4975
  %5007 = fmul fast float %5005, %4976
  %5008 = fadd fast float %5003, %5006
  %5009 = fadd fast float %5004, %5007
  %5010 = extractvalue %dx.types.CBufRet.f32 %4977, 2
  %5011 = fmul fast float %5010, %4956
  %5012 = fmul fast float %5010, %4957
  %5013 = fmul fast float %5010, %4958
  %5014 = fmul fast float %5010, %4959
  %5015 = extractvalue %dx.types.CBufRet.f32 %4983, 2
  %5016 = fmul fast float %5015, %4967
  %5017 = fmul fast float %5015, %4968
  %5018 = fadd fast float %5016, %5011
  %5019 = fadd fast float %5017, %5013
  %5020 = extractvalue %dx.types.CBufRet.f32 %4989, 2
  %5021 = fmul fast float %5020, %4975
  %5022 = fmul fast float %5020, %4976
  %5023 = fadd fast float %5018, %5021
  %5024 = fadd fast float %5019, %5022
  %5025 = fmul fast float %5012, %5012
  %5026 = fmul fast float %5024, %5024
  %5027 = fmul fast float %5014, %5014
  %5028 = fadd fast float %5027, %5025
  %5029 = fadd fast float %5028, %5026
  %5030 = call float @dx.op.unary.f32(i32 24, float %5029)  ; Sqrt(value)
  %5031 = fcmp fast ugt float %5030, 0.000000e+00
  br i1 %5031, label %5032, label %5047

; <label>:5032                                    ; preds = %4729
  %5033 = fsub fast float -0.000000e+00, %5014
  %5034 = fdiv fast float %5033, %5030
  %5035 = fsub fast float -0.000000e+00, %5012
  %5036 = fdiv fast float %5035, %5030
  %5037 = fdiv fast float %5024, %5030
  %5038 = fmul fast float %5023, 0x3FE279A760000000
  %5039 = fmul fast float %5036, %5012
  %5040 = fmul fast float %5037, %5024
  %5041 = fmul fast float %5034, %5014
  %5042 = fadd fast float %5039, %5041
  %5043 = fsub fast float %5042, %5040
  %5044 = call float @dx.op.unary.f32(i32 6, float %5043)  ; FAbs(value)
  %5045 = fadd fast float %5044, 0x3DDB7CDFE0000000
  %5046 = fdiv fast float %5038, %5045
  br label %5047

; <label>:5047                                    ; preds = %5032, %4729
  %5048 = phi float [ %5046, %5032 ], [ 1.000000e+00, %4729 ]
  %5049 = fmul fast float %4997, %4997
  %5050 = fmul fast float %5009, %5009
  %5051 = fmul fast float %4999, %4999
  %5052 = fadd fast float %5051, %5049
  %5053 = fadd fast float %5052, %5050
  %5054 = call float @dx.op.unary.f32(i32 24, float %5053)  ; Sqrt(value)
  %5055 = fcmp fast ugt float %5054, 0.000000e+00
  br i1 %5055, label %5056, label %5071

; <label>:5056                                    ; preds = %5047
  %5057 = fsub fast float -0.000000e+00, %4999
  %5058 = fdiv fast float %5057, %5054
  %5059 = fsub fast float -0.000000e+00, %4997
  %5060 = fdiv fast float %5059, %5054
  %5061 = fdiv fast float %5009, %5054
  %5062 = fmul fast float %5008, 0x3FE279A760000000
  %5063 = fmul fast float %5060, %4997
  %5064 = fmul fast float %5061, %5009
  %5065 = fmul fast float %5058, %4999
  %5066 = fadd fast float %5063, %5065
  %5067 = fsub fast float %5066, %5064
  %5068 = call float @dx.op.unary.f32(i32 6, float %5067)  ; FAbs(value)
  %5069 = fadd fast float %5068, 0x3DDB7CDFE0000000
  %5070 = fdiv fast float %5062, %5069
  br label %5071

; <label>:5071                                    ; preds = %5056, %5047
  %5072 = phi float [ %5070, %5056 ], [ 1.000000e+00, %5047 ]
  %5073 = call float @dx.op.binary.f32(i32 36, float %5072, float %5048)  ; FMin(a,b)
  %5074 = fmul fast float %4980, %4980
  %5075 = fmul fast float %4994, %4994
  %5076 = fmul fast float %4982, %4982
  %5077 = fadd fast float %5076, %5074
  %5078 = fadd fast float %5077, %5075
  %5079 = call float @dx.op.unary.f32(i32 24, float %5078)  ; Sqrt(value)
  %5080 = fcmp fast ugt float %5079, 0.000000e+00
  br i1 %5080, label %5081, label %5096

; <label>:5081                                    ; preds = %5071
  %5082 = fsub fast float -0.000000e+00, %4982
  %5083 = fdiv fast float %5082, %5079
  %5084 = fsub fast float -0.000000e+00, %4980
  %5085 = fdiv fast float %5084, %5079
  %5086 = fdiv fast float %4994, %5079
  %5087 = fmul fast float %4993, 0x3FE279A760000000
  %5088 = fmul fast float %5085, %4980
  %5089 = fmul fast float %5086, %4994
  %5090 = fmul fast float %5083, %4982
  %5091 = fadd fast float %5088, %5090
  %5092 = fsub fast float %5091, %5089
  %5093 = call float @dx.op.unary.f32(i32 6, float %5092)  ; FAbs(value)
  %5094 = fadd fast float %5093, 0x3DDB7CDFE0000000
  %5095 = fdiv fast float %5087, %5094
  br label %5096

; <label>:5096                                    ; preds = %5081, %5071
  %5097 = phi float [ %5095, %5081 ], [ 1.000000e+00, %5071 ]
  %5098 = call float @dx.op.binary.f32(i32 36, float %5097, float %5073)  ; FMin(a,b)
  %5099 = call float @dx.op.unary.f32(i32 7, float %5098)  ; Saturate(value)
  %5100 = fcmp fast olt float %5099, 1.000000e+00
  br i1 %5100, label %5101, label %5111

; <label>:5101                                    ; preds = %5096
  %5102 = fmul fast float %5099, %4980
  %5103 = fmul fast float %5099, %4994
  %5104 = fmul fast float %5099, %4982
  %5105 = fmul fast float %5099, %4997
  %5106 = fmul fast float %5099, %5009
  %5107 = fmul fast float %5099, %4999
  %5108 = fmul fast float %5099, %5012
  %5109 = fmul fast float %5099, %5024
  %5110 = fmul fast float %5099, %5014
  br label %5111

; <label>:5111                                    ; preds = %5101, %5096
  %5112 = phi float [ %5108, %5101 ], [ %5012, %5096 ]
  %5113 = phi float [ %5109, %5101 ], [ %5024, %5096 ]
  %5114 = phi float [ %5110, %5101 ], [ %5014, %5096 ]
  %5115 = phi float [ %5105, %5101 ], [ %4997, %5096 ]
  %5116 = phi float [ %5106, %5101 ], [ %5009, %5096 ]
  %5117 = phi float [ %5107, %5101 ], [ %4999, %5096 ]
  %5118 = phi float [ %5102, %5101 ], [ %4980, %5096 ]
  %5119 = phi float [ %5103, %5101 ], [ %4994, %5096 ]
  %5120 = phi float [ %5104, %5101 ], [ %4982, %5096 ]
  %5121 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4993)  ; FMax(a,b)
  %5122 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5008)  ; FMax(a,b)
  %5123 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5023)  ; FMax(a,b)
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = fcmp fast ogt float %5125, 0.000000e+00
  %5127 = fcmp fast oge float %4781, 0.000000e+00
  %5128 = and i1 %5127, %5126
  %5129 = fcmp fast ole float %4781, 1.000000e+00
  %5130 = and i1 %5129, %5128
  %5131 = fcmp fast oge float %4782, 0.000000e+00
  %5132 = and i1 %5131, %5130
  %5133 = fcmp fast ole float %4782, 1.000000e+00
  %5134 = and i1 %5133, %5132
  br i1 %5134, label %5135, label %5280, !dx.controlflow.hints !82

; <label>:5135                                    ; preds = %5111
  %5136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %5137 = extractvalue %dx.types.CBufRet.f32 %5136, 2
  %5138 = extractvalue %dx.types.CBufRet.f32 %5136, 3
  %5139 = fmul fast float %5137, %4781
  %5140 = fmul fast float %5138, %4782
  %5141 = call float @dx.op.unary.f32(i32 27, float %5139)  ; Round_ni(value)
  %5142 = call float @dx.op.unary.f32(i32 27, float %5140)  ; Round_ni(value)
  %5143 = fptosi float %5141 to i32
  %5144 = fptosi float %5142 to i32
  %5145 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %5143, i32 %5144, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5146 = extractvalue %dx.types.ResRet.i32 %5145, 0
  %5147 = and i32 %5146, 65535
  %5148 = lshr i32 %5146, 16
  %5149 = icmp eq i32 %5147, 65535
  br i1 %5149, label %5186, label %5150

; <label>:5150                                    ; preds = %5135
  %5151 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5152 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5136, 1
  %5154 = fmul fast float %5152, %4781
  %5155 = fmul fast float %5153, %4782
  %5156 = fmul fast float %5154, 1.250000e-01
  %5157 = fmul fast float %5155, 1.250000e-01
  %5158 = call float @dx.op.unary.f32(i32 27, float %5156)  ; Round_ni(value)
  %5159 = call float @dx.op.unary.f32(i32 27, float %5157)  ; Round_ni(value)
  %5160 = fmul fast float %5158, 8.000000e+00
  %5161 = fmul fast float %5159, 8.000000e+00
  %5162 = and i32 %5146, 255
  %5163 = lshr i32 %5146, 8
  %5164 = and i32 %5163, 255
  %5165 = mul nuw nsw i32 %5162, 9
  %5166 = uitofp i32 %5165 to float
  %5167 = mul nuw nsw i32 %5164, 9
  %5168 = uitofp i32 %5167 to float
  %5169 = fadd fast float %5166, 5.000000e-01
  %5170 = fadd fast float %5169, %5154
  %5171 = fsub fast float %5170, %5160
  %5172 = fadd fast float %5168, 5.000000e-01
  %5173 = fadd fast float %5172, %5155
  %5174 = fsub fast float %5173, %5161
  %5175 = fdiv fast float %5171, %5125
  %5176 = fdiv fast float %5174, %5151
  %5177 = fmul fast float %4809, 4.375000e-01
  %5178 = fadd fast float %5177, 3.125000e-02
  %5179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %5175, float %5176, float %5178, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5180 = extractvalue %dx.types.ResRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.ResRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.ResRet.f32 %5179, 2
  %5183 = fadd fast float %5180, %5121
  %5184 = fadd fast float %5181, %5122
  %5185 = fadd fast float %5182, %5123
  br label %5186

; <label>:5186                                    ; preds = %5150, %5135
  %5187 = phi float [ %5185, %5150 ], [ %5123, %5135 ]
  %5188 = phi float [ %5184, %5150 ], [ %5122, %5135 ]
  %5189 = phi float [ %5183, %5150 ], [ %5121, %5135 ]
  %5190 = icmp eq i32 %5148, 65535
  br i1 %5190, label %5280, label %5191

; <label>:5191                                    ; preds = %5186
  %5192 = extractvalue %dx.types.CBufRet.f32 %5124, 1
  %5193 = extractvalue %dx.types.CBufRet.f32 %5136, 0
  %5194 = extractvalue %dx.types.CBufRet.f32 %5136, 1
  %5195 = fmul fast float %5193, %4781
  %5196 = fmul fast float %5194, %4782
  %5197 = fmul fast float %5195, 1.250000e-01
  %5198 = fmul fast float %5196, 1.250000e-01
  %5199 = call float @dx.op.unary.f32(i32 27, float %5197)  ; Round_ni(value)
  %5200 = call float @dx.op.unary.f32(i32 27, float %5198)  ; Round_ni(value)
  %5201 = fmul fast float %5199, 8.000000e+00
  %5202 = fmul fast float %5200, 8.000000e+00
  %5203 = fsub fast float %5195, %5201
  %5204 = fsub fast float %5196, %5202
  %5205 = fadd fast float %5203, 5.000000e-01
  %5206 = fadd fast float %5204, 5.000000e-01
  %5207 = and i32 %5148, 255
  %5208 = lshr i32 %5146, 24
  %5209 = mul nuw nsw i32 %5207, 9
  %5210 = uitofp i32 %5209 to float
  %5211 = mul nuw nsw i32 %5208, 9
  %5212 = uitofp i32 %5211 to float
  %5213 = fadd fast float %5205, %5210
  %5214 = fadd fast float %5206, %5212
  %5215 = fdiv fast float %5213, %5125
  %5216 = fdiv fast float %5214, %5192
  %5217 = fmul fast float %4809, 4.375000e-01
  %5218 = fadd fast float %5217, 3.125000e-02
  %5219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %5215, float %5216, float %5218, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5220 = extractvalue %dx.types.ResRet.f32 %5219, 0
  %5221 = extractvalue %dx.types.ResRet.f32 %5219, 1
  %5222 = extractvalue %dx.types.ResRet.f32 %5219, 2
  %5223 = fadd fast float %5217, 5.312500e-01
  %5224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %36, float %5215, float %5216, float %5223, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5228 = fmul fast float %5225, 2.000000e+00
  %5229 = fmul fast float %5226, 2.000000e+00
  %5230 = fmul fast float %5227, 2.000000e+00
  %5231 = fadd fast float %5228, -1.000000e+00
  %5232 = fadd fast float %5229, -1.000000e+00
  %5233 = fadd fast float %5230, -1.000000e+00
  %5234 = fmul fast float %5231, %5231
  %5235 = fmul fast float %5232, %5232
  %5236 = fadd fast float %5234, %5235
  %5237 = fmul fast float %5233, %5233
  %5238 = fadd fast float %5236, %5237
  %5239 = call float @dx.op.unary.f32(i32 24, float %5238)  ; Sqrt(value)
  %5240 = fcmp fast ogt float %5239, 0.000000e+00
  br i1 %5240, label %5241, label %5245

; <label>:5241                                    ; preds = %5191
  %5242 = fdiv fast float %5231, %5239
  %5243 = fdiv fast float %5232, %5239
  %5244 = fdiv fast float %5233, %5239
  br label %5245

; <label>:5245                                    ; preds = %5241, %5191
  %5246 = phi float [ %5242, %5241 ], [ 0.000000e+00, %5191 ]
  %5247 = phi float [ %5243, %5241 ], [ 0.000000e+00, %5191 ]
  %5248 = phi float [ %5244, %5241 ], [ 0.000000e+00, %5191 ]
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 0
  %5251 = extractvalue %dx.types.CBufRet.f32 %5249, 1
  %5252 = fsub fast float %4766, %5250
  %5253 = fsub fast float %4767, %5251
  %5254 = fmul fast float %5252, %5252
  %5255 = fmul fast float %5253, %5253
  %5256 = fadd fast float %5254, %5255
  %5257 = call float @dx.op.unary.f32(i32 24, float %5256)  ; Sqrt(value)
  %5258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5259 = extractvalue %dx.types.CBufRet.f32 %5258, 0
  %5260 = extractvalue %dx.types.CBufRet.f32 %5258, 1
  %5261 = fsub fast float %5257, %5259
  %5262 = fdiv fast float %5261, %5260
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = fmul fast float %5263, 2.000000e+00
  %5265 = fsub fast float 3.000000e+00, %5264
  %5266 = fmul fast float %5263, %5263
  %5267 = fmul fast float %5266, %5265
  %5268 = call float @dx.op.dot3.f32(i32 55, float %5246, float %5247, float %5248, float %4742, float %4743, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5269 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5268)  ; FMax(a,b)
  %5270 = fmul fast float %5269, 0x400C5BF8A0000000
  %5271 = fmul fast float %5267, %5220
  %5272 = fmul fast float %5271, %5270
  %5273 = fadd fast float %5272, %5189
  %5274 = fmul fast float %5267, %5221
  %5275 = fmul fast float %5274, %5270
  %5276 = fadd fast float %5275, %5188
  %5277 = fmul fast float %5267, %5222
  %5278 = fmul fast float %5277, %5270
  %5279 = fadd fast float %5278, %5187
  br label %5280

; <label>:5280                                    ; preds = %5245, %5186, %5111
  %5281 = phi float [ %5279, %5245 ], [ %5187, %5186 ], [ %5123, %5111 ]
  %5282 = phi float [ %5276, %5245 ], [ %5188, %5186 ], [ %5122, %5111 ]
  %5283 = phi float [ %5273, %5245 ], [ %5189, %5186 ], [ %5121, %5111 ]
  %5284 = fcmp fast ogt float %4768, %4805
  %5285 = and i1 %5127, %5284
  %5286 = and i1 %5129, %5285
  %5287 = and i1 %5131, %5286
  %5288 = and i1 %5133, %5287
  br i1 %5288, label %5289, label %5346, !dx.controlflow.hints !83

; <label>:5289                                    ; preds = %5280
  %5290 = fmul fast float %4807, 0x3FC24924A0000000
  %5291 = fsub fast float %4768, %4805
  %5292 = fdiv fast float %5291, %5290
  %5293 = call float @dx.op.unary.f32(i32 7, float %5292)  ; Saturate(value)
  %5294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5295 = extractvalue %dx.types.CBufRet.f32 %5294, 0
  %5296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5297 = extractvalue %dx.types.CBufRet.f32 %5296, 0
  %5298 = extractvalue %dx.types.CBufRet.f32 %5296, 1
  %5299 = extractvalue %dx.types.CBufRet.f32 %5296, 2
  %5300 = fsub fast float %5295, %5283
  %5301 = fsub fast float %5297, %5118
  %5302 = fsub fast float %5298, %5119
  %5303 = fsub fast float %5299, %5120
  %5304 = fmul fast float %5300, %5293
  %5305 = fmul fast float %5301, %5293
  %5306 = fmul fast float %5302, %5293
  %5307 = fmul fast float %5303, %5293
  %5308 = fadd fast float %5304, %5283
  %5309 = fadd fast float %5305, %5118
  %5310 = fadd fast float %5306, %5119
  %5311 = fadd fast float %5307, %5120
  %5312 = extractvalue %dx.types.CBufRet.f32 %5294, 1
  %5313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5314 = extractvalue %dx.types.CBufRet.f32 %5313, 0
  %5315 = extractvalue %dx.types.CBufRet.f32 %5313, 1
  %5316 = extractvalue %dx.types.CBufRet.f32 %5313, 2
  %5317 = fsub fast float %5312, %5282
  %5318 = fsub fast float %5314, %5115
  %5319 = fsub fast float %5315, %5116
  %5320 = fsub fast float %5316, %5117
  %5321 = fmul fast float %5317, %5293
  %5322 = fmul fast float %5318, %5293
  %5323 = fmul fast float %5319, %5293
  %5324 = fmul fast float %5320, %5293
  %5325 = fadd fast float %5321, %5282
  %5326 = fadd fast float %5322, %5115
  %5327 = fadd fast float %5323, %5116
  %5328 = fadd fast float %5324, %5117
  %5329 = extractvalue %dx.types.CBufRet.f32 %5294, 2
  %5330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5331 = extractvalue %dx.types.CBufRet.f32 %5330, 0
  %5332 = extractvalue %dx.types.CBufRet.f32 %5330, 1
  %5333 = extractvalue %dx.types.CBufRet.f32 %5330, 2
  %5334 = fsub fast float %5329, %5281
  %5335 = fsub fast float %5331, %5112
  %5336 = fsub fast float %5332, %5113
  %5337 = fsub fast float %5333, %5114
  %5338 = fmul fast float %5334, %5293
  %5339 = fmul fast float %5335, %5293
  %5340 = fmul fast float %5336, %5293
  %5341 = fmul fast float %5337, %5293
  %5342 = fadd fast float %5338, %5281
  %5343 = fadd fast float %5339, %5112
  %5344 = fadd fast float %5340, %5113
  %5345 = fadd fast float %5341, %5114
  br label %5346

; <label>:5346                                    ; preds = %5289, %5280
  %5347 = phi float [ %5342, %5289 ], [ %5281, %5280 ]
  %5348 = phi float [ %5343, %5289 ], [ %5112, %5280 ]
  %5349 = phi float [ %5344, %5289 ], [ %5113, %5280 ]
  %5350 = phi float [ %5345, %5289 ], [ %5114, %5280 ]
  %5351 = phi float [ %5325, %5289 ], [ %5282, %5280 ]
  %5352 = phi float [ %5326, %5289 ], [ %5115, %5280 ]
  %5353 = phi float [ %5327, %5289 ], [ %5116, %5280 ]
  %5354 = phi float [ %5328, %5289 ], [ %5117, %5280 ]
  %5355 = phi float [ %5308, %5289 ], [ %5283, %5280 ]
  %5356 = phi float [ %5309, %5289 ], [ %5118, %5280 ]
  %5357 = phi float [ %5310, %5289 ], [ %5119, %5280 ]
  %5358 = phi float [ %5311, %5289 ], [ %5120, %5280 ]
  %5359 = extractvalue %dx.types.CBufRet.f32 %4930, 3
  %5360 = fmul fast float %5359, %5355
  %5361 = fmul fast float %5359, %5351
  %5362 = fmul fast float %5359, %5347
  %5363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.f32 %5363, 3
  %5365 = fmul fast float %5360, %5364
  %5366 = fmul fast float %5361, %5364
  %5367 = fmul fast float %5362, %5364
  %5368 = fmul fast float %5356, 1.500000e+00
  %5369 = fmul fast float %5368, %5359
  %5370 = fmul fast float %5369, %5364
  %5371 = fmul fast float %5357, 1.500000e+00
  %5372 = fmul fast float %5371, %5359
  %5373 = fmul fast float %5372, %5364
  %5374 = fmul fast float %5358, 1.500000e+00
  %5375 = fmul fast float %5374, %5359
  %5376 = fmul fast float %5375, %5364
  %5377 = fmul fast float %5352, 1.500000e+00
  %5378 = fmul fast float %5377, %5359
  %5379 = fmul fast float %5378, %5364
  %5380 = fmul fast float %5353, 1.500000e+00
  %5381 = fmul fast float %5380, %5359
  %5382 = fmul fast float %5381, %5364
  %5383 = fmul fast float %5354, 1.500000e+00
  %5384 = fmul fast float %5383, %5359
  %5385 = fmul fast float %5384, %5364
  %5386 = fmul fast float %5348, 1.500000e+00
  %5387 = fmul fast float %5386, %5359
  %5388 = fmul fast float %5387, %5364
  %5389 = fmul fast float %5349, 1.500000e+00
  %5390 = fmul fast float %5389, %5359
  %5391 = fmul fast float %5390, %5364
  %5392 = fmul fast float %5350, 1.500000e+00
  %5393 = fmul fast float %5392, %5359
  %5394 = fmul fast float %5393, %5364
  %5395 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5365)  ; FMax(a,b)
  %5396 = call float @dx.op.dot3.f32(i32 55, float %5370, float %5373, float %5376, float %5370, float %5373, float %5376)  ; Dot3(ax,ay,az,bx,by,bz)
  %5397 = fcmp fast oeq float %5396, 0.000000e+00
  %5398 = fcmp fast oeq float %5395, 0.000000e+00
  %5399 = or i1 %5398, %5397
  br i1 %5399, label %5429, label %5400

; <label>:5400                                    ; preds = %5346
  %5401 = fsub fast float -0.000000e+00, %5376
  %5402 = fsub fast float -0.000000e+00, %5370
  %5403 = call float @dx.op.unary.f32(i32 24, float %5396)  ; Sqrt(value)
  %5404 = fdiv fast float %5403, %5395
  %5405 = fcmp fast ogt float %5404, 0x3FFB6F8900000000
  %5406 = select i1 %5405, float 0x3FFB6F8900000000, float %5404
  %5407 = fmul fast float %5406, 0x3FE8A23460000000
  %5408 = call float @dx.op.unary.f32(i32 7, float %5407)  ; Saturate(value)
  %5409 = call float @dx.op.binary.f32(i32 35, float %5406, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5410 = fmul fast float %5408, %5395
  %5411 = fmul fast float %5409, 0x3FF279A740000000
  %5412 = fadd fast float %5411, -1.000000e+00
  %5413 = call float @dx.op.dot3.f32(i32 55, float %5401, float %5402, float %5373, float %5401, float %5402, float %5373)  ; Dot3(ax,ay,az,bx,by,bz)
  %5414 = call float @dx.op.unary.f32(i32 25, float %5413)  ; Rsqrt(value)
  %5415 = fmul fast float %5414, %5401
  %5416 = fmul fast float %5414, %5402
  %5417 = fmul fast float %5414, %5373
  %5418 = fmul fast float %5412, %5412
  %5419 = fsub fast float 1.000000e+00, %5418
  %5420 = fmul fast float %5409, 0x40005F8BE0000000
  %5421 = fsub fast float 0x400C5BF8A0000000, %5420
  %5422 = fdiv fast float %5410, %5421
  %5423 = fmul fast float %5422, 0x3FEE31C3C0000000
  %5424 = fmul fast float %5423, %5419
  %5425 = fmul fast float %5409, 0x3FDACB7480000000
  %5426 = fadd fast float %5425, 0xBFD7347680000000
  %5427 = fmul fast float %5426, %5422
  %5428 = fmul fast float %5427, %5419
  br label %5429

; <label>:5429                                    ; preds = %5400, %5346
  %5430 = phi float [ %5415, %5400 ], [ 0.000000e+00, %5346 ]
  %5431 = phi float [ %5416, %5400 ], [ 0.000000e+00, %5346 ]
  %5432 = phi float [ %5417, %5400 ], [ 0.000000e+00, %5346 ]
  %5433 = phi float [ %5424, %5400 ], [ 0.000000e+00, %5346 ]
  %5434 = phi float [ %5428, %5400 ], [ 0.000000e+00, %5346 ]
  %5435 = call float @dx.op.dot3.f32(i32 55, float %5430, float %5431, float %5432, float %4742, float %4743, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5436 = fmul fast float %5435, 0x3FDF454380000000
  %5437 = fmul fast float %5435, %5435
  %5438 = fmul fast float %5437, 0x3FEE471020000000
  %5439 = fadd fast float %5438, 0xBFD42F6020000000
  %5440 = fmul fast float %5395, 0x3FD20DD760000000
  %5441 = fmul fast float %5439, %5434
  %5442 = fadd fast float %5441, %5440
  %5443 = fmul fast float %5436, %5433
  %5444 = fadd fast float %5442, %5443
  %5445 = fsub fast float %5442, %5443
  %5446 = call float @dx.op.dot3.f32(i32 55, float %5430, float %5431, float %5432, float %4755, float %4756, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5447 = fmul fast float %5446, 0x3FDF454380000000
  %5448 = fmul fast float %5446, %5446
  %5449 = fmul fast float %5448, 0x3FEE471020000000
  %5450 = fadd fast float %5449, 0xBFD42F6020000000
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5395, float %5433, float %5434, float 0x3FD20DD760000000, float %5447, float %5450)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5366)  ; FMax(a,b)
  %5453 = call float @dx.op.dot3.f32(i32 55, float %5379, float %5382, float %5385, float %5379, float %5382, float %5385)  ; Dot3(ax,ay,az,bx,by,bz)
  %5454 = fcmp fast oeq float %5453, 0.000000e+00
  %5455 = fcmp fast oeq float %5452, 0.000000e+00
  %5456 = or i1 %5455, %5454
  br i1 %5456, label %5486, label %5457

; <label>:5457                                    ; preds = %5429
  %5458 = fsub fast float -0.000000e+00, %5385
  %5459 = fsub fast float -0.000000e+00, %5379
  %5460 = call float @dx.op.unary.f32(i32 24, float %5453)  ; Sqrt(value)
  %5461 = fdiv fast float %5460, %5452
  %5462 = fcmp fast ogt float %5461, 0x3FFB6F8900000000
  %5463 = select i1 %5462, float 0x3FFB6F8900000000, float %5461
  %5464 = fmul fast float %5463, 0x3FE8A23460000000
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  %5466 = call float @dx.op.binary.f32(i32 35, float %5463, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5467 = fmul fast float %5465, %5452
  %5468 = fmul fast float %5466, 0x3FF279A740000000
  %5469 = fadd fast float %5468, -1.000000e+00
  %5470 = call float @dx.op.dot3.f32(i32 55, float %5458, float %5459, float %5382, float %5458, float %5459, float %5382)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.unary.f32(i32 25, float %5470)  ; Rsqrt(value)
  %5472 = fmul fast float %5471, %5458
  %5473 = fmul fast float %5471, %5459
  %5474 = fmul fast float %5471, %5382
  %5475 = fmul fast float %5469, %5469
  %5476 = fsub fast float 1.000000e+00, %5475
  %5477 = fmul fast float %5466, 0x40005F8BE0000000
  %5478 = fsub fast float 0x400C5BF8A0000000, %5477
  %5479 = fdiv fast float %5467, %5478
  %5480 = fmul fast float %5479, 0x3FEE31C3C0000000
  %5481 = fmul fast float %5480, %5476
  %5482 = fmul fast float %5466, 0x3FDACB7480000000
  %5483 = fadd fast float %5482, 0xBFD7347680000000
  %5484 = fmul fast float %5483, %5479
  %5485 = fmul fast float %5484, %5476
  br label %5486

; <label>:5486                                    ; preds = %5457, %5429
  %5487 = phi float [ %5472, %5457 ], [ 0.000000e+00, %5429 ]
  %5488 = phi float [ %5473, %5457 ], [ 0.000000e+00, %5429 ]
  %5489 = phi float [ %5474, %5457 ], [ 0.000000e+00, %5429 ]
  %5490 = phi float [ %5481, %5457 ], [ 0.000000e+00, %5429 ]
  %5491 = phi float [ %5485, %5457 ], [ 0.000000e+00, %5429 ]
  %5492 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5488, float %5489, float %4742, float %4743, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5493 = fmul fast float %5492, 0x3FDF454380000000
  %5494 = fmul fast float %5492, %5492
  %5495 = fmul fast float %5494, 0x3FEE471020000000
  %5496 = fadd fast float %5495, 0xBFD42F6020000000
  %5497 = fmul fast float %5452, 0x3FD20DD760000000
  %5498 = fmul fast float %5496, %5491
  %5499 = fadd fast float %5498, %5497
  %5500 = fmul fast float %5493, %5490
  %5501 = fadd fast float %5499, %5500
  %5502 = fsub fast float %5499, %5500
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5487, float %5488, float %5489, float %4755, float %4756, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = fmul fast float %5503, 0x3FDF454380000000
  %5505 = fmul fast float %5503, %5503
  %5506 = fmul fast float %5505, 0x3FEE471020000000
  %5507 = fadd fast float %5506, 0xBFD42F6020000000
  %5508 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5490, float %5491, float 0x3FD20DD760000000, float %5504, float %5507)  ; Dot3(ax,ay,az,bx,by,bz)
  %5509 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5367)  ; FMax(a,b)
  %5510 = call float @dx.op.dot3.f32(i32 55, float %5388, float %5391, float %5394, float %5388, float %5391, float %5394)  ; Dot3(ax,ay,az,bx,by,bz)
  %5511 = fcmp fast oeq float %5510, 0.000000e+00
  %5512 = fcmp fast oeq float %5509, 0.000000e+00
  %5513 = or i1 %5512, %5511
  br i1 %5513, label %5543, label %5514

; <label>:5514                                    ; preds = %5486
  %5515 = fsub fast float -0.000000e+00, %5394
  %5516 = fsub fast float -0.000000e+00, %5388
  %5517 = call float @dx.op.unary.f32(i32 24, float %5510)  ; Sqrt(value)
  %5518 = fdiv fast float %5517, %5509
  %5519 = fcmp fast ogt float %5518, 0x3FFB6F8900000000
  %5520 = select i1 %5519, float 0x3FFB6F8900000000, float %5518
  %5521 = fmul fast float %5520, 0x3FE8A23460000000
  %5522 = call float @dx.op.unary.f32(i32 7, float %5521)  ; Saturate(value)
  %5523 = call float @dx.op.binary.f32(i32 35, float %5520, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5524 = fmul fast float %5522, %5509
  %5525 = fmul fast float %5523, 0x3FF279A740000000
  %5526 = fadd fast float %5525, -1.000000e+00
  %5527 = call float @dx.op.dot3.f32(i32 55, float %5515, float %5516, float %5391, float %5515, float %5516, float %5391)  ; Dot3(ax,ay,az,bx,by,bz)
  %5528 = call float @dx.op.unary.f32(i32 25, float %5527)  ; Rsqrt(value)
  %5529 = fmul fast float %5528, %5515
  %5530 = fmul fast float %5528, %5516
  %5531 = fmul fast float %5528, %5391
  %5532 = fmul fast float %5526, %5526
  %5533 = fsub fast float 1.000000e+00, %5532
  %5534 = fmul fast float %5523, 0x40005F8BE0000000
  %5535 = fsub fast float 0x400C5BF8A0000000, %5534
  %5536 = fdiv fast float %5524, %5535
  %5537 = fmul fast float %5536, 0x3FEE31C3C0000000
  %5538 = fmul fast float %5537, %5533
  %5539 = fmul fast float %5523, 0x3FDACB7480000000
  %5540 = fadd fast float %5539, 0xBFD7347680000000
  %5541 = fmul fast float %5540, %5536
  %5542 = fmul fast float %5541, %5533
  br label %5543

; <label>:5543                                    ; preds = %5514, %5486
  %5544 = phi float [ %5529, %5514 ], [ 0.000000e+00, %5486 ]
  %5545 = phi float [ %5530, %5514 ], [ 0.000000e+00, %5486 ]
  %5546 = phi float [ %5531, %5514 ], [ 0.000000e+00, %5486 ]
  %5547 = phi float [ %5538, %5514 ], [ 0.000000e+00, %5486 ]
  %5548 = phi float [ %5542, %5514 ], [ 0.000000e+00, %5486 ]
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float %4742, float %4743, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = fmul fast float %5549, 0x3FDF454380000000
  %5551 = fmul fast float %5549, %5549
  %5552 = fmul fast float %5551, 0x3FEE471020000000
  %5553 = fadd fast float %5552, 0xBFD42F6020000000
  %5554 = fmul fast float %5509, 0x3FD20DD760000000
  %5555 = fmul fast float %5553, %5548
  %5556 = fadd fast float %5555, %5554
  %5557 = fmul fast float %5550, %5547
  %5558 = fadd fast float %5556, %5557
  %5559 = fsub fast float %5556, %5557
  %5560 = call float @dx.op.dot3.f32(i32 55, float %5544, float %5545, float %5546, float %4755, float %4756, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %5561 = fmul fast float %5560, 0x3FDF454380000000
  %5562 = fmul fast float %5560, %5560
  %5563 = fmul fast float %5562, 0x3FEE471020000000
  %5564 = fadd fast float %5563, 0xBFD42F6020000000
  %5565 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5547, float %5548, float 0x3FD20DD760000000, float %5561, float %5564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5566 = call float @dx.op.binary.f32(i32 35, float %5444, float 0.000000e+00)  ; FMax(a,b)
  %5567 = call float @dx.op.binary.f32(i32 35, float %5501, float 0.000000e+00)  ; FMax(a,b)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5558, float 0.000000e+00)  ; FMax(a,b)
  %5569 = call float @dx.op.binary.f32(i32 35, float %5445, float 0.000000e+00)  ; FMax(a,b)
  %5570 = call float @dx.op.binary.f32(i32 35, float %5502, float 0.000000e+00)  ; FMax(a,b)
  %5571 = call float @dx.op.binary.f32(i32 35, float %5559, float 0.000000e+00)  ; FMax(a,b)
  %5572 = call float @dx.op.binary.f32(i32 35, float %5451, float 0.000000e+00)  ; FMax(a,b)
  %5573 = call float @dx.op.binary.f32(i32 35, float %5508, float 0.000000e+00)  ; FMax(a,b)
  %5574 = call float @dx.op.binary.f32(i32 35, float %5565, float 0.000000e+00)  ; FMax(a,b)
  %5575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5576 = extractvalue %dx.types.CBufRet.f32 %5575, 0
  %5577 = call float @dx.op.binary.f32(i32 36, float %4736, float %5576)  ; FMin(a,b)
  %5578 = fsub fast float 1.000000e+00, %4758
  %5579 = fmul fast float %5577, %5578
  %5580 = fsub fast float 1.000000e+00, %5579
  %5581 = bitcast float %5580 to i32
  %5582 = sub nsw i32 2129859010, %5581
  %5583 = bitcast i32 %5582 to float
  %5584 = call float @dx.op.binary.f32(i32 36, float %4737, float %5576)  ; FMin(a,b)
  %5585 = fmul fast float %5584, %5578
  %5586 = fsub fast float 1.000000e+00, %5585
  %5587 = bitcast float %5586 to i32
  %5588 = sub nsw i32 2129859010, %5587
  %5589 = bitcast i32 %5588 to float
  %5590 = call float @dx.op.binary.f32(i32 36, float %4738, float %5576)  ; FMin(a,b)
  %5591 = fmul fast float %5590, %5578
  %5592 = fsub fast float 1.000000e+00, %5591
  %5593 = bitcast float %5592 to i32
  %5594 = sub nsw i32 2129859010, %5593
  %5595 = bitcast i32 %5594 to float
  %5596 = fmul fast float %5566, %4758
  %5597 = fmul fast float %5596, %5583
  %5598 = fmul fast float %5567, %4758
  %5599 = fmul fast float %5598, %5589
  %5600 = fmul fast float %5568, %4758
  %5601 = fmul fast float %5600, %5595
  %5602 = call float @dx.op.binary.f32(i32 36, float %4739, float %5576)  ; FMin(a,b)
  %5603 = fmul fast float %5602, %5578
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = bitcast float %5604 to i32
  %5606 = sub nsw i32 2129859010, %5605
  %5607 = bitcast i32 %5606 to float
  %5608 = call float @dx.op.binary.f32(i32 36, float %4740, float %5576)  ; FMin(a,b)
  %5609 = fmul fast float %5608, %5578
  %5610 = fsub fast float 1.000000e+00, %5609
  %5611 = bitcast float %5610 to i32
  %5612 = sub nsw i32 2129859010, %5611
  %5613 = bitcast i32 %5612 to float
  %5614 = call float @dx.op.binary.f32(i32 36, float %4747, float %5576)  ; FMin(a,b)
  %5615 = fmul fast float %5614, %5578
  %5616 = fsub fast float 1.000000e+00, %5615
  %5617 = bitcast float %5616 to i32
  %5618 = sub nsw i32 2129859010, %5617
  %5619 = bitcast i32 %5618 to float
  %5620 = fmul fast float %5572, %4758
  %5621 = fmul fast float %5620, %5607
  %5622 = fmul fast float %5573, %4758
  %5623 = fmul fast float %5622, %5613
  %5624 = fmul fast float %5574, %4758
  %5625 = fmul fast float %5624, %5619
  %5626 = call float @dx.op.dot3.f32(i32 55, float %5597, float %5599, float %5601, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5627 = select i1 %370, float 0.000000e+00, float %5597
  %5628 = select i1 %370, float %5626, float %5599
  %5629 = select i1 %370, float 0.000000e+00, float %5601
  %5630 = call float @dx.op.dot3.f32(i32 55, float %5569, float %5570, float %5571, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = select i1 %370, float 0.000000e+00, float %5569
  %5632 = select i1 %370, float %5630, float %5570
  %5633 = select i1 %370, float 0.000000e+00, float %5571
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5623, float %5625, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = select i1 %370, float 0.000000e+00, float %5621
  %5636 = select i1 %370, float %5634, float %5623
  %5637 = select i1 %370, float 0.000000e+00, float %5625
  %5638 = fmul fast float %4749, 9.843750e-01
  %5639 = fmul fast float %4745, 9.843750e-01
  %5640 = fadd fast float %5638, 7.812500e-03
  %5641 = fadd fast float %5639, 7.812500e-03
  %5642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %36, float %5640, float %5641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5643 = extractvalue %dx.types.ResRet.f32 %5642, 2
  %5644 = extractvalue %dx.types.ResRet.f32 %5642, 3
  %5645 = fmul fast float %5643, %4739
  %5646 = fmul fast float %5643, %4740
  %5647 = fmul fast float %5643, %4747
  %5648 = fadd fast float %5645, %5644
  %5649 = fadd fast float %5646, %5644
  %5650 = fadd fast float %5647, %5644
  %5651 = call float @dx.op.binary.f32(i32 35, float %5649, float %5650)  ; FMax(a,b)
  %5652 = call float @dx.op.binary.f32(i32 35, float %5648, float %5651)  ; FMax(a,b)
  %5653 = fsub fast float 1.000000e+00, %5652
  %5654 = fmul fast float %5648, %5635
  %5655 = fmul fast float %5649, %5636
  %5656 = fmul fast float %5650, %5637
  %5657 = fadd fast float %5654, %3957
  %5658 = fmul fast float %5657, %1131
  %5659 = fadd fast float %5655, %3958
  %5660 = fmul fast float %5659, %1131
  %5661 = fadd fast float %5656, %3959
  %5662 = fmul fast float %5661, %1131
  %5663 = fmul fast float %5653, %5629
  %5664 = fmul fast float %5653, %5628
  %5665 = fmul fast float %5653, %5627
  %5666 = fmul fast float %5653, %4160
  %5667 = fadd fast float %5666, -1.000000e+00
  %5668 = fmul fast float %5667, %1131
  %5669 = fadd fast float %5668, 1.000000e+00
  %5670 = fmul fast float %5653, %4159
  %5671 = fadd fast float %5670, -1.000000e+00
  %5672 = fmul fast float %5671, %1131
  %5673 = fadd fast float %5672, 1.000000e+00
  %5674 = fmul fast float %5653, %4158
  %5675 = fadd fast float %5674, -1.000000e+00
  %5676 = fmul fast float %5675, %1131
  %5677 = fadd fast float %5676, 1.000000e+00
  %5678 = fmul fast float %5677, %5631
  %5679 = fmul fast float %5673, %5632
  %5680 = fmul fast float %5669, %5633
  %5681 = fadd fast float %5678, %5665
  %5682 = fmul fast float %5681, %1131
  %5683 = fadd fast float %5679, %5664
  %5684 = fmul fast float %5683, %1131
  %5685 = fadd fast float %5680, %5663
  %5686 = fmul fast float %5685, %1131
  %5687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5688 = extractvalue %dx.types.CBufRet.f32 %5687, 3
  %5689 = fcmp fast oeq float %5688, 0.000000e+00
  br i1 %5689, label %5876, label %5690

; <label>:5690                                    ; preds = %5543
  %5691 = extractvalue %dx.types.CBufRet.f32 %5687, 0
  %5692 = extractvalue %dx.types.CBufRet.f32 %5687, 1
  %5693 = extractvalue %dx.types.CBufRet.f32 %5687, 2
  %5694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5695 = extractvalue %dx.types.CBufRet.f32 %5694, 0
  %5696 = extractvalue %dx.types.CBufRet.f32 %5694, 1
  %5697 = extractvalue %dx.types.CBufRet.f32 %5694, 2
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 0
  %5700 = extractvalue %dx.types.CBufRet.f32 %5698, 1
  %5701 = call float @dx.op.dot3.f32(i32 55, float %5695, float %5696, float %5697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5702 = select i1 %370, float %5699, float %5695
  %5703 = select i1 %370, float %5701, float %5696
  %5704 = select i1 %370, float %5700, float %5697
  %5705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5706 = extractvalue %dx.types.CBufRet.f32 %5705, 1
  %5707 = fcmp fast une float %5706, 0.000000e+00
  br i1 %5707, label %5708, label %5725

; <label>:5708                                    ; preds = %5690
  %5709 = fptoui float %70 to i32
  %5710 = fptoui float %71 to i32
  %5711 = lshr i32 %5709, 4
  %5712 = lshr i32 %5710, 4
  %5713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5714 = extractvalue %dx.types.CBufRet.f32 %5713, 0
  %5715 = fptoui float %5714 to i32
  %5716 = add i32 %5715, 15
  %5717 = lshr i32 %5716, 4
  %5718 = mul i32 %5717, %5712
  %5719 = add i32 %5718, %5711
  %5720 = shl i32 %5719, 3
  %5721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5720, i32 undef)  ; BufferLoad(srv,index,wot)
  %5722 = extractvalue %dx.types.ResRet.i32 %5721, 0
  %5723 = and i32 %5722, -268435456
  %5724 = icmp eq i32 %5723, -1342177280
  br i1 %5724, label %5735, label %5725

; <label>:5725                                    ; preds = %5708, %5690
  %5726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.f32 %5726, 2
  %5728 = extractvalue %dx.types.CBufRet.f32 %5726, 3
  %5729 = fmul fast float %5727, %70
  %5730 = fmul fast float %5728, %71
  %5731 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %37, float %5729, float %5730, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5732 = extractvalue %dx.types.ResRet.f32 %5731, 0
  %5733 = extractvalue %dx.types.ResRet.f32 %5731, 1
  %5734 = extractvalue %dx.types.ResRet.f32 %5731, 2
  br label %5735

; <label>:5735                                    ; preds = %5725, %5708
  %5736 = phi float [ %5732, %5725 ], [ 0.000000e+00, %5708 ]
  %5737 = phi float [ %5733, %5725 ], [ 0.000000e+00, %5708 ]
  %5738 = phi float [ %5734, %5725 ], [ 0.000000e+00, %5708 ]
  %5739 = call float @dx.op.binary.f32(i32 36, float %5737, float %5738)  ; FMin(a,b)
  %5740 = call float @dx.op.binary.f32(i32 36, float %5736, float %5739)  ; FMin(a,b)
  %5741 = fcmp fast ogt float %5740, 0.000000e+00
  br i1 %5741, label %5742, label %5876, !dx.controlflow.hints !84

; <label>:5742                                    ; preds = %5735
  %5743 = bitcast i32 %4761 to float
  %5744 = fmul fast float %5736, %5702
  %5745 = fmul fast float %5737, %5703
  %5746 = fmul fast float %5738, %5704
  %5747 = fsub fast float %5691, %4735
  %5748 = fsub fast float %5692, %4734
  %5749 = fsub fast float %5693, %4733
  %5750 = call float @dx.op.dot3.f32(i32 55, float %5747, float %5748, float %5749, float %5747, float %5748, float %5749)  ; Dot3(ax,ay,az,bx,by,bz)
  %5751 = call float @dx.op.unary.f32(i32 25, float %5750)  ; Rsqrt(value)
  %5752 = fmul fast float %5751, %5747
  %5753 = fmul fast float %5751, %5748
  %5754 = fmul fast float %5751, %5749
  %5755 = call float @dx.op.dot3.f32(i32 55, float %5691, float %5692, float %5693, float %4742, float %4743, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5756 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4731, float %4730, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5757 = call float @dx.op.unary.f32(i32 7, float %5755)  ; Saturate(value)
  %5758 = fmul fast float %5757, %5757
  %5759 = fmul fast float %5758, %5743
  %5760 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5761 = fmul fast float %5760, %5757
  %5762 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4743, float %4744, float %5752, float %5753, float %5754)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = fmul fast float %5762, %5762
  %5764 = call float @dx.op.unary.f32(i32 6, float %5755)  ; FAbs(value)
  %5765 = fsub fast float 1.000000e+00, %4745
  %5766 = call float @dx.op.binary.f32(i32 35, float %5765, float 0x3F847AE140000000)  ; FMax(a,b)
  %5767 = fmul fast float %5766, %5766
  %5768 = fmul fast float %5767, %5767
  %5769 = fsub fast float 1.000000e+00, %5768
  %5770 = fmul fast float %4749, %4749
  %5771 = fmul fast float %5770, %5769
  %5772 = fadd fast float %5771, %5768
  %5773 = bitcast float %5772 to i32
  %5774 = ashr i32 %5773, 1
  %5775 = add nsw i32 %5774, 532487669
  %5776 = bitcast i32 %5775 to float
  %5777 = fadd fast float %5776, %4749
  %5778 = fmul fast float %5768, %5763
  %5779 = fsub fast float 1.000000e+00, %5763
  %5780 = fadd fast float %5779, %5778
  %5781 = fmul fast float %5764, %5764
  %5782 = fmul fast float %5781, %5769
  %5783 = fadd fast float %5782, %5768
  %5784 = bitcast float %5783 to i32
  %5785 = ashr i32 %5784, 1
  %5786 = add nsw i32 %5785, 532487669
  %5787 = bitcast i32 %5786 to float
  %5788 = fadd fast float %5787, %5764
  %5789 = fmul fast float %5780, %5780
  %5790 = fmul fast float %5789, %5777
  %5791 = fmul fast float %5790, %5788
  %5792 = fdiv fast float 0x3FF0A00000000000, %5791
  %5793 = fmul fast float %5792, %5768
  %5794 = call float @dx.op.unary.f32(i32 6, float %5756)  ; FAbs(value)
  %5795 = fsub fast float 1.000000e+00, %5794
  %5796 = bitcast float %5795 to i32
  %5797 = sitofp i32 %5796 to float
  %5798 = fmul fast float %5797, 5.000000e+00
  %5799 = fadd fast float %5798, 0xC1EFBF8940000000
  %5800 = fptosi float %5799 to i32
  %5801 = bitcast i32 %5800 to float
  %5802 = fsub fast float 1.000000e+00, %4739
  %5803 = fsub fast float 1.000000e+00, %4740
  %5804 = fsub fast float 1.000000e+00, %4747
  %5805 = fmul fast float %5801, %5802
  %5806 = fmul fast float %5801, %5803
  %5807 = fmul fast float %5801, %5804
  %5808 = fadd fast float %5805, %4739
  %5809 = fadd fast float %5806, %4740
  %5810 = fadd fast float %5807, %4747
  %5811 = fmul fast float %5755, 9.843750e-01
  %5812 = fadd fast float %5811, 7.812500e-03
  %5813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %36, float %5812, float %5641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5814 = extractvalue %dx.types.ResRet.f32 %5813, 2
  %5815 = extractvalue %dx.types.ResRet.f32 %5813, 3
  %5816 = fmul fast float %5814, %4739
  %5817 = fmul fast float %5814, %4740
  %5818 = fmul fast float %5814, %4747
  %5819 = fadd fast float %5816, %5815
  %5820 = fadd fast float %5817, %5815
  %5821 = fadd fast float %5818, %5815
  %5822 = call float @dx.op.binary.f32(i32 35, float %5820, float %5821)  ; FMax(a,b)
  %5823 = call float @dx.op.binary.f32(i32 35, float %5819, float %5822)  ; FMax(a,b)
  %5824 = fsub fast float 1.000000e+00, %5823
  %5825 = fsub fast float -0.000000e+00, %4742
  %5826 = fsub fast float -0.000000e+00, %4743
  %5827 = fsub fast float -0.000000e+00, %4744
  %5828 = call float @dx.op.dot3.f32(i32 55, float %5691, float %5692, float %5693, float %5825, float %5826, float %5827)  ; Dot3(ax,ay,az,bx,by,bz)
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = fmul fast float %5829, 9.843750e-01
  %5831 = fadd fast float %5830, 7.812500e-03
  %5832 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %36, float %5831, float %5641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5833 = extractvalue %dx.types.ResRet.f32 %5832, 2
  %5834 = extractvalue %dx.types.ResRet.f32 %5832, 3
  %5835 = fmul fast float %5833, %4739
  %5836 = fmul fast float %5833, %4740
  %5837 = fmul fast float %5833, %4747
  %5838 = fadd fast float %5835, %5834
  %5839 = fadd fast float %5836, %5834
  %5840 = fadd fast float %5837, %5834
  %5841 = call float @dx.op.binary.f32(i32 35, float %5839, float %5840)  ; FMax(a,b)
  %5842 = call float @dx.op.binary.f32(i32 35, float %5838, float %5841)  ; FMax(a,b)
  %5843 = fsub fast float 1.000000e+00, %5842
  %5844 = fmul fast float %5843, %5829
  %5845 = fmul fast float %5844, %4158
  %5846 = fmul fast float %5844, %4159
  %5847 = fmul fast float %5844, %4160
  %5848 = fmul fast float %5824, %5761
  %5849 = fadd fast float %5845, %5848
  %5850 = fadd fast float %5846, %5848
  %5851 = fadd fast float %5847, %5848
  %5852 = fmul fast float %5849, %5744
  %5853 = fmul fast float %5850, %5745
  %5854 = fmul fast float %5851, %5746
  %5855 = fmul fast float %5761, %5744
  %5856 = fmul fast float %5855, %5793
  %5857 = fmul fast float %5856, %5808
  %5858 = fmul fast float %5761, %5745
  %5859 = fmul fast float %5858, %5793
  %5860 = fmul fast float %5859, %5809
  %5861 = fmul fast float %5761, %5746
  %5862 = fmul fast float %5861, %5793
  %5863 = fmul fast float %5862, %5810
  %5864 = fadd fast float %5852, %5681
  %5865 = fmul fast float %5864, %1131
  %5866 = fadd fast float %5853, %5683
  %5867 = fmul fast float %5866, %1131
  %5868 = fadd fast float %5854, %5685
  %5869 = fmul fast float %5868, %1131
  %5870 = fadd fast float %5857, %5657
  %5871 = fmul fast float %5870, %1131
  %5872 = fadd fast float %5860, %5659
  %5873 = fmul fast float %5872, %1131
  %5874 = fadd fast float %5863, %5661
  %5875 = fmul fast float %5874, %1131
  br label %5876

; <label>:5876                                    ; preds = %5742, %5735, %5543
  %5877 = phi float [ %5658, %5543 ], [ %5658, %5735 ], [ %5871, %5742 ]
  %5878 = phi float [ %5660, %5543 ], [ %5660, %5735 ], [ %5873, %5742 ]
  %5879 = phi float [ %5662, %5543 ], [ %5662, %5735 ], [ %5875, %5742 ]
  %5880 = phi float [ %5682, %5543 ], [ %5682, %5735 ], [ %5865, %5742 ]
  %5881 = phi float [ %5684, %5543 ], [ %5684, %5735 ], [ %5867, %5742 ]
  %5882 = phi float [ %5686, %5543 ], [ %5686, %5735 ], [ %5869, %5742 ]
  %5883 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5884 = extractvalue %dx.types.CBufRet.i32 %5883, 0
  %5885 = icmp eq i32 %5884, 0
  br i1 %5885, label %6280, label %5886

; <label>:5886                                    ; preds = %5876
  %5887 = fptoui float %70 to i32
  %5888 = fptoui float %71 to i32
  %5889 = lshr i32 %5887, 4
  %5890 = lshr i32 %5888, 4
  %5891 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5892 = extractvalue %dx.types.CBufRet.i32 %5891, 0
  %5893 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5890, i32 %5892, i32 %5889)  ; UMad(a,b,c)
  %5894 = add nsw i32 %5884, -1
  %5895 = call i32 @dx.op.binary.i32(i32 37, i32 %5894, i32 0)  ; IMax(a,b)
  %5896 = call float @dx.op.binary.f32(i32 35, float %65, float 0.000000e+00)  ; FMax(a,b)
  %5897 = fptoui float %5896 to i32
  %5898 = lshr i32 %5897, 5
  %5899 = call i32 @dx.op.binary.i32(i32 40, i32 %5898, i32 8191)  ; UMin(a,b)
  %5900 = shl i32 %5899, 2
  %5901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5900, i32 undef)  ; BufferLoad(srv,index,wot)
  %5902 = extractvalue %dx.types.ResRet.i32 %5901, 0
  %5903 = lshr i32 %5902, 16
  %5904 = and i32 %5902, 65535
  %5905 = lshr i32 %5902, 21
  %5906 = lshr i32 %5904, 5
  %5907 = call i32 @dx.op.binary.i32(i32 40, i32 %5906, i32 %5895)  ; UMin(a,b)
  %5908 = icmp ugt i32 %5905, %5907
  br i1 %5908, label %6280, label %5909

; <label>:5909                                    ; preds = %5886
  br label %5910

; <label>:5910                                    ; preds = %6270, %5909
  %5911 = phi i32 [ %6277, %6270 ], [ %5905, %5909 ]
  %5912 = phi float [ %6271, %6270 ], [ %5877, %5909 ]
  %5913 = phi float [ %6272, %6270 ], [ %5878, %5909 ]
  %5914 = phi float [ %6273, %6270 ], [ %5879, %5909 ]
  %5915 = phi float [ %6274, %6270 ], [ %5880, %5909 ]
  %5916 = phi float [ %6275, %6270 ], [ %5881, %5909 ]
  %5917 = phi float [ %6276, %6270 ], [ %5882, %5909 ]
  %5918 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %39, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.i32 %5918, 0
  %5920 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5893, i32 %5919, i32 %5911)  ; UMad(a,b,c)
  %5921 = shl i32 %5920, 2
  %5922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5921, i32 undef)  ; BufferLoad(srv,index,wot)
  %5923 = extractvalue %dx.types.ResRet.i32 %5922, 0
  %5924 = shl i32 %5911, 5
  %5925 = sub nsw i32 %5903, %5924
  %5926 = call i32 @dx.op.binary.i32(i32 37, i32 %5925, i32 0)  ; IMax(a,b)
  %5927 = call i32 @dx.op.binary.i32(i32 38, i32 %5926, i32 31)  ; IMin(a,b)
  %5928 = sub nsw i32 1, %5903
  %5929 = add nsw i32 %5928, %5904
  %5930 = call i32 @dx.op.binary.i32(i32 37, i32 %5929, i32 0)  ; IMax(a,b)
  %5931 = call i32 @dx.op.binary.i32(i32 38, i32 %5930, i32 32)  ; IMin(a,b)
  %5932 = and i32 %5931, 31
  %5933 = shl i32 -1, %5932
  %5934 = xor i32 %5933, -1
  %5935 = and i32 %5927, 31
  %5936 = shl i32 %5934, %5935
  %5937 = icmp eq i32 %5931, 32
  %5938 = select i1 %5937, i32 -1, i32 %5936
  %5939 = and i32 %5938, %5923
  %5940 = icmp eq i32 %5939, 0
  br i1 %5940, label %6270, label %5941

; <label>:5941                                    ; preds = %5910
  br label %5942

; <label>:5942                                    ; preds = %6022, %5941
  %5943 = phi i32 [ %5954, %6022 ], [ %5939, %5941 ]
  %5944 = phi float [ %6023, %6022 ], [ %5912, %5941 ]
  %5945 = phi float [ %6024, %6022 ], [ %5913, %5941 ]
  %5946 = phi float [ %6025, %6022 ], [ %5914, %5941 ]
  %5947 = phi float [ %6026, %6022 ], [ %5915, %5941 ]
  %5948 = phi float [ %6027, %6022 ], [ %5916, %5941 ]
  %5949 = phi float [ %6028, %6022 ], [ %5917, %5941 ]
  %5950 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5943)  ; FirstbitLo(value)
  %5951 = add i32 %5950, %5924
  %5952 = and i32 %5950, 31
  %5953 = shl i32 1, %5952
  %5954 = xor i32 %5953, %5943
  %5955 = mul i32 %5951, 112
  %5956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5955, i32 undef)  ; BufferLoad(srv,index,wot)
  %5957 = extractvalue %dx.types.ResRet.f32 %5956, 0
  %5958 = extractvalue %dx.types.ResRet.f32 %5956, 1
  %5959 = extractvalue %dx.types.ResRet.f32 %5956, 2
  %5960 = or i32 %5955, 12
  %5961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5960, i32 undef)  ; BufferLoad(srv,index,wot)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 0
  %5963 = add i32 %5955, 44
  %5964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5963, i32 undef)  ; BufferLoad(srv,index,wot)
  %5965 = extractvalue %dx.types.ResRet.f32 %5964, 0
  %5966 = add i32 %5955, 48
  %5967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5966, i32 undef)  ; BufferLoad(srv,index,wot)
  %5968 = extractvalue %dx.types.ResRet.f32 %5967, 0
  %5969 = extractvalue %dx.types.ResRet.f32 %5967, 1
  %5970 = extractvalue %dx.types.ResRet.f32 %5967, 2
  %5971 = add i32 %5955, 80
  %5972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5971, i32 undef)  ; BufferLoad(srv,index,wot)
  %5973 = extractvalue %dx.types.ResRet.f32 %5972, 1
  %5974 = extractvalue %dx.types.ResRet.f32 %5972, 2
  %5975 = call float @dx.op.dot3.f32(i32 55, float %5957, float %5958, float %5959, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5976 = select i1 %370, float %5973, float %5957
  %5977 = select i1 %370, float %5975, float %5958
  %5978 = select i1 %370, float %5974, float %5959
  %5979 = fsub fast float %5968, %129
  %5980 = fsub fast float %5969, %130
  %5981 = fsub fast float %5970, %131
  %5982 = call float @dx.op.dot3.f32(i32 55, float %5979, float %5980, float %5981, float %5979, float %5980, float %5981)  ; Dot3(ax,ay,az,bx,by,bz)
  %5983 = call float @dx.op.unary.f32(i32 24, float %5982)  ; Sqrt(value)
  %5984 = fdiv fast float 1.000000e+00, %5983
  %5985 = fmul fast float %5984, %5979
  %5986 = fmul fast float %5984, %5980
  %5987 = fmul fast float %5984, %5981
  %5988 = fadd fast float %5983, %5962
  %5989 = fdiv fast float 1.000000e+00, %5988
  %5990 = fmul float %5965, %5989
  %5991 = fmul float %5990, %5990
  %5992 = call float @dx.op.unary.f32(i32 7, float %5991)  ; Saturate(value)
  %5993 = and i32 %5953, %5939
  %5994 = icmp eq i32 %5993, 0
  br i1 %5994, label %6017, label %5995, !dx.controlflow.hints !85

; <label>:5995                                    ; preds = %5942
  %5996 = lshr i32 %5887, 5
  %5997 = lshr i32 %5888, 5
  %5998 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5996, i32 %5997, i32 %5951, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5999 = extractvalue %dx.types.ResRet.i32 %5998, 0
  %6000 = and i32 %5999, 3
  %6001 = icmp eq i32 %6000, 0
  %6002 = select i1 %6001, float 1.000000e+00, float 0.000000e+00
  %6003 = icmp eq i32 %6000, 3
  br i1 %6003, label %6004, label %6017

; <label>:6004                                    ; preds = %5995
  %6005 = lshr i32 %5999, 10
  %6006 = and i32 %6005, 8160
  %6007 = and i32 %5888, 31
  %6008 = or i32 %6006, %6007
  %6009 = lshr i32 %5999, 1
  %6010 = and i32 %6009, 16352
  %6011 = and i32 %5887, 31
  %6012 = or i32 %6010, %6011
  %6013 = lshr i32 %5999, 23
  %6014 = and i32 %6013, 255
  %6015 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %6012, i32 %6008, i32 %6014, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  br label %6017

; <label>:6017                                    ; preds = %6004, %5995, %5942
  %6018 = phi float [ %6016, %6004 ], [ %6002, %5995 ], [ 0.000000e+00, %5942 ]
  %6019 = call float @dx.op.binary.f32(i32 36, float %6018, float %6018)  ; FMin(a,b)
  %6020 = call float @dx.op.binary.f32(i32 36, float %6018, float %6019)  ; FMin(a,b)
  %6021 = fcmp fast ogt float %6020, 0.000000e+00
  br i1 %6021, label %6030, label %6022, !dx.controlflow.hints !86

; <label>:6022                                    ; preds = %6092, %6017
  %6023 = phi float [ %5944, %6017 ], [ %6266, %6092 ]
  %6024 = phi float [ %5945, %6017 ], [ %6267, %6092 ]
  %6025 = phi float [ %5946, %6017 ], [ %6268, %6092 ]
  %6026 = phi float [ %5947, %6017 ], [ %6254, %6092 ]
  %6027 = phi float [ %5948, %6017 ], [ %6255, %6092 ]
  %6028 = phi float [ %5949, %6017 ], [ %6256, %6092 ]
  %6029 = icmp eq i32 %5943, %5953
  br i1 %6029, label %6269, label %5942

; <label>:6030                                    ; preds = %6017
  %6031 = bitcast i32 %4761 to float
  %6032 = fmul fast float %6018, %5976
  %6033 = fmul fast float %6018, %5977
  %6034 = fmul fast float %6018, %5978
  %6035 = fsub fast float %5970, %4535
  %6036 = fcmp fast ogt float %6035, 0.000000e+00
  %6037 = fsub fast float %131, %4535
  %6038 = fcmp fast ogt float %6037, 0.000000e+00
  %6039 = xor i1 %6038, %6036
  %6040 = fsub fast float %4535, %5970
  %6041 = fmul fast float %6040, 2.000000e+00
  %6042 = fadd fast float %6041, %5970
  %6043 = select i1 %6039, float %5970, float %6042
  %6044 = fsub fast float %6043, %131
  %6045 = call float @dx.op.dot3.f32(i32 55, float %5979, float %5980, float %6044, float %5979, float %5980, float %6044)  ; Dot3(ax,ay,az,bx,by,bz)
  %6046 = call float @dx.op.unary.f32(i32 25, float %6045)  ; Rsqrt(value)
  %6047 = fmul fast float %6046, %5979
  %6048 = fmul fast float %6046, %5980
  %6049 = fmul fast float %6046, %6044
  %6050 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %6051 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6047, float %6048, float %6049)  ; Dot3(ax,ay,az,bx,by,bz)
  %6052 = fdiv fast float 1.000000e+00, %6051
  %6053 = fmul fast float %6052, %6050
  %6054 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6037, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6055 = fcmp fast ogt float %6054, 0.000000e+00
  %6056 = fcmp fast olt float %6054, 0.000000e+00
  %6057 = zext i1 %6055 to i32
  %6058 = zext i1 %6056 to i32
  %6059 = sub nsw i32 %6057, %6058
  %6060 = sitofp i32 %6059 to float
  %6061 = fsub fast float %6043, %4535
  %6062 = call float @dx.op.dot3.f32(i32 55, float %5979, float %5980, float %6061, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6063 = fcmp fast ogt float %6062, 0.000000e+00
  %6064 = fcmp fast olt float %6062, 0.000000e+00
  %6065 = zext i1 %6063 to i32
  %6066 = zext i1 %6064 to i32
  %6067 = sub nsw i32 %6065, %6066
  %6068 = sitofp i32 %6067 to float
  %6069 = fcmp fast une float %6060, %6068
  br i1 %6069, label %6070, label %6080

; <label>:6070                                    ; preds = %6030
  %6071 = fmul fast float %6053, %6049
  %6072 = fmul fast float %6053, %6048
  %6073 = fmul fast float %6053, %6047
  %6074 = fmul fast float %6073, %6073
  %6075 = fmul fast float %6072, %6072
  %6076 = fadd fast float %6074, %6075
  %6077 = fmul fast float %6071, %6071
  %6078 = fadd fast float %6076, %6077
  %6079 = call float @dx.op.unary.f32(i32 24, float %6078)  ; Sqrt(value)
  br label %6092

; <label>:6080                                    ; preds = %6030
  %6081 = icmp slt i32 %6059, 0
  br i1 %6081, label %6082, label %6092

; <label>:6082                                    ; preds = %6080
  %6083 = fsub fast float %129, %5968
  %6084 = fsub fast float %130, %5969
  %6085 = fsub fast float %131, %6043
  %6086 = fmul fast float %6083, %6083
  %6087 = fmul fast float %6084, %6084
  %6088 = fadd fast float %6086, %6087
  %6089 = fmul fast float %6085, %6085
  %6090 = fadd fast float %6088, %6089
  %6091 = call float @dx.op.unary.f32(i32 24, float %6090)  ; Sqrt(value)
  br label %6092

; <label>:6092                                    ; preds = %6082, %6080, %6070
  %6093 = phi float [ %6079, %6070 ], [ %6091, %6082 ], [ 0.000000e+00, %6080 ]
  %6094 = and i1 %6038, %6036
  %6095 = fsub fast float -0.000000e+00, %6093
  %6096 = select i1 %6094, float -0.000000e+00, float %6095
  %6097 = fmul fast float %4536, 0x3FF7154760000000
  %6098 = fmul fast float %6097, %6096
  %6099 = fmul fast float %4537, 0x3FF7154760000000
  %6100 = fmul fast float %6099, %6096
  %6101 = fmul fast float %4538, 0x3FF7154760000000
  %6102 = fmul fast float %6101, %6096
  %6103 = call float @dx.op.unary.f32(i32 21, float %6098)  ; Exp(value)
  %6104 = call float @dx.op.unary.f32(i32 21, float %6100)  ; Exp(value)
  %6105 = call float @dx.op.unary.f32(i32 21, float %6102)  ; Exp(value)
  %6106 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6108 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  %6109 = fmul fast float %6032, %6106
  %6110 = fmul fast float %6033, %6107
  %6111 = fmul fast float %6034, %6108
  %6112 = fsub fast float %5985, %4735
  %6113 = fsub fast float %5986, %4734
  %6114 = fsub fast float %5987, %4733
  %6115 = call float @dx.op.dot3.f32(i32 55, float %6112, float %6113, float %6114, float %6112, float %6113, float %6114)  ; Dot3(ax,ay,az,bx,by,bz)
  %6116 = call float @dx.op.unary.f32(i32 25, float %6115)  ; Rsqrt(value)
  %6117 = fmul fast float %6116, %6112
  %6118 = fmul fast float %6116, %6113
  %6119 = fmul fast float %6116, %6114
  %6120 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %4742, float %4743, float %4744)  ; Dot3(ax,ay,az,bx,by,bz)
  %6121 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4731, float %4730, float %6117, float %6118, float %6119)  ; Dot3(ax,ay,az,bx,by,bz)
  %6122 = call float @dx.op.unary.f32(i32 7, float %6120)  ; Saturate(value)
  %6123 = fmul fast float %6122, %5992
  %6124 = fmul fast float %6122, %6122
  %6125 = fmul fast float %6124, %6031
  %6126 = call float @dx.op.unary.f32(i32 7, float %6125)  ; Saturate(value)
  %6127 = fmul fast float %6123, %6126
  %6128 = bitcast float %5982 to i32
  %6129 = ashr i32 %6128, 1
  %6130 = sub nsw i32 1597463007, %6129
  %6131 = bitcast i32 %6130 to float
  %6132 = fmul fast float %6131, %5979
  %6133 = fmul fast float %6131, %5980
  %6134 = fmul fast float %6131, %5981
  %6135 = fsub fast float %6132, %4735
  %6136 = fsub fast float %6133, %4734
  %6137 = fsub fast float %6134, %4733
  %6138 = call float @dx.op.dot3.f32(i32 55, float %6135, float %6136, float %6137, float %6135, float %6136, float %6137)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = call float @dx.op.unary.f32(i32 25, float %6138)  ; Rsqrt(value)
  %6140 = fmul fast float %6135, %6139
  %6141 = fmul fast float %6136, %6139
  %6142 = fmul fast float %6137, %6139
  %6143 = call float @dx.op.dot3.f32(i32 55, float %4742, float %4743, float %4744, float %6140, float %6141, float %6142)  ; Dot3(ax,ay,az,bx,by,bz)
  %6144 = fmul fast float %6143, %6143
  %6145 = call float @dx.op.unary.f32(i32 6, float %6120)  ; FAbs(value)
  %6146 = fsub fast float 1.000000e+00, %4745
  %6147 = call float @dx.op.binary.f32(i32 35, float %6146, float 0x3F847AE140000000)  ; FMax(a,b)
  %6148 = fmul fast float %6147, %6147
  %6149 = fmul fast float %6148, %6148
  %6150 = fsub fast float 1.000000e+00, %6149
  %6151 = fmul fast float %4749, %4749
  %6152 = fmul fast float %6151, %6150
  %6153 = fadd fast float %6152, %6149
  %6154 = bitcast float %6153 to i32
  %6155 = ashr i32 %6154, 1
  %6156 = add nsw i32 %6155, 532487669
  %6157 = bitcast i32 %6156 to float
  %6158 = fadd fast float %6157, %4749
  %6159 = fmul fast float %6149, %6144
  %6160 = fsub fast float 1.000000e+00, %6144
  %6161 = fadd fast float %6160, %6159
  %6162 = fmul fast float %6145, %6145
  %6163 = fmul fast float %6162, %6150
  %6164 = fadd fast float %6163, %6149
  %6165 = bitcast float %6164 to i32
  %6166 = ashr i32 %6165, 1
  %6167 = add nsw i32 %6166, 532487669
  %6168 = bitcast i32 %6167 to float
  %6169 = fadd fast float %6168, %6145
  %6170 = fmul fast float %6161, %6161
  %6171 = fmul fast float %6170, %6158
  %6172 = fmul fast float %6171, %6169
  %6173 = fdiv fast float 1.000000e+00, %6172
  %6174 = bitcast float %6149 to i32
  %6175 = sitofp i32 %6174 to float
  %6176 = fmul fast float %6175, 0x3FE7F73180000000
  %6177 = fadd fast float %6176, 0x41AFE27C40000000
  %6178 = fptosi float %6177 to i32
  %6179 = bitcast i32 %6178 to float
  %6180 = fmul fast float %5965, 0x3FD80E9D60000000
  %6181 = fmul fast float %6180, %6131
  %6182 = fadd fast float %6179, %6181
  %6183 = bitcast float %6182 to i32
  %6184 = sub nsw i32 2129859010, %6183
  %6185 = bitcast i32 %6184 to float
  %6186 = fmul fast float %6149, %6173
  %6187 = fmul fast float %6186, %6179
  %6188 = fmul fast float %6187, %6185
  %6189 = call float @dx.op.unary.f32(i32 6, float %6121)  ; FAbs(value)
  %6190 = fsub fast float 1.000000e+00, %6189
  %6191 = bitcast float %6190 to i32
  %6192 = sitofp i32 %6191 to float
  %6193 = fmul fast float %6192, 5.000000e+00
  %6194 = fadd fast float %6193, 0xC1EFBF8940000000
  %6195 = fptosi float %6194 to i32
  %6196 = bitcast i32 %6195 to float
  %6197 = fsub fast float 1.000000e+00, %4739
  %6198 = fsub fast float 1.000000e+00, %4740
  %6199 = fsub fast float 1.000000e+00, %4747
  %6200 = fmul fast float %6196, %6197
  %6201 = fmul fast float %6196, %6198
  %6202 = fmul fast float %6196, %6199
  %6203 = fadd fast float %6200, %4739
  %6204 = fadd fast float %6201, %4740
  %6205 = fadd fast float %6202, %4747
  %6206 = fmul fast float %6120, 9.843750e-01
  %6207 = fadd fast float %6206, 7.812500e-03
  %6208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %36, float %6207, float %5641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6209 = extractvalue %dx.types.ResRet.f32 %6208, 2
  %6210 = extractvalue %dx.types.ResRet.f32 %6208, 3
  %6211 = fmul fast float %6209, %4739
  %6212 = fmul fast float %6209, %4740
  %6213 = fmul fast float %6209, %4747
  %6214 = fadd fast float %6211, %6210
  %6215 = fadd fast float %6212, %6210
  %6216 = fadd fast float %6213, %6210
  %6217 = call float @dx.op.binary.f32(i32 35, float %6215, float %6216)  ; FMax(a,b)
  %6218 = call float @dx.op.binary.f32(i32 35, float %6214, float %6217)  ; FMax(a,b)
  %6219 = fsub fast float 1.000000e+00, %6218
  %6220 = fsub fast float -0.000000e+00, %4742
  %6221 = fsub fast float -0.000000e+00, %4743
  %6222 = fsub fast float -0.000000e+00, %4744
  %6223 = call float @dx.op.dot3.f32(i32 55, float %5985, float %5986, float %5987, float %6220, float %6221, float %6222)  ; Dot3(ax,ay,az,bx,by,bz)
  %6224 = call float @dx.op.unary.f32(i32 7, float %6223)  ; Saturate(value)
  %6225 = fmul fast float %6224, %5992
  %6226 = fmul fast float %6224, 9.843750e-01
  %6227 = fadd fast float %6226, 7.812500e-03
  %6228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %36, float %6227, float %5641, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6229 = extractvalue %dx.types.ResRet.f32 %6228, 2
  %6230 = extractvalue %dx.types.ResRet.f32 %6228, 3
  %6231 = fmul fast float %6229, %4739
  %6232 = fmul fast float %6229, %4740
  %6233 = fmul fast float %6229, %4747
  %6234 = fadd fast float %6231, %6230
  %6235 = fadd fast float %6232, %6230
  %6236 = fadd fast float %6233, %6230
  %6237 = call float @dx.op.binary.f32(i32 35, float %6235, float %6236)  ; FMax(a,b)
  %6238 = call float @dx.op.binary.f32(i32 35, float %6234, float %6237)  ; FMax(a,b)
  %6239 = fsub fast float 1.000000e+00, %6238
  %6240 = fmul fast float %6225, %6239
  %6241 = fmul fast float %6240, %4158
  %6242 = fmul fast float %6240, %4159
  %6243 = fmul fast float %6240, %4160
  %6244 = fmul fast float %6219, %6127
  %6245 = fadd fast float %6241, %6244
  %6246 = fadd fast float %6242, %6244
  %6247 = fadd fast float %6243, %6244
  %6248 = fmul fast float %6109, %1131
  %6249 = fmul fast float %6248, %6245
  %6250 = fmul fast float %6110, %1131
  %6251 = fmul fast float %6250, %6246
  %6252 = fmul fast float %6111, %1131
  %6253 = fmul fast float %6252, %6247
  %6254 = fadd fast float %6249, %5947
  %6255 = fadd fast float %6251, %5948
  %6256 = fadd fast float %6253, %5949
  %6257 = fmul fast float %6248, %6127
  %6258 = fmul fast float %6257, %6203
  %6259 = fmul fast float %6258, %6188
  %6260 = fmul fast float %6250, %6127
  %6261 = fmul fast float %6260, %6204
  %6262 = fmul fast float %6261, %6188
  %6263 = fmul fast float %6252, %6127
  %6264 = fmul fast float %6263, %6205
  %6265 = fmul fast float %6264, %6188
  %6266 = fadd fast float %6259, %5944
  %6267 = fadd fast float %6262, %5945
  %6268 = fadd fast float %6265, %5946
  br label %6022

; <label>:6269                                    ; preds = %6022
  br label %6270

; <label>:6270                                    ; preds = %6269, %5910
  %6271 = phi float [ %5912, %5910 ], [ %6023, %6269 ]
  %6272 = phi float [ %5913, %5910 ], [ %6024, %6269 ]
  %6273 = phi float [ %5914, %5910 ], [ %6025, %6269 ]
  %6274 = phi float [ %5915, %5910 ], [ %6026, %6269 ]
  %6275 = phi float [ %5916, %5910 ], [ %6027, %6269 ]
  %6276 = phi float [ %5917, %5910 ], [ %6028, %6269 ]
  %6277 = add i32 %5911, 1
  %6278 = icmp ugt i32 %6277, %5907
  br i1 %6278, label %6279, label %5910

; <label>:6279                                    ; preds = %6270
  br label %6280

; <label>:6280                                    ; preds = %6279, %5886, %5876
  %6281 = phi float [ %5877, %5876 ], [ %5877, %5886 ], [ %6271, %6279 ]
  %6282 = phi float [ %5878, %5876 ], [ %5878, %5886 ], [ %6272, %6279 ]
  %6283 = phi float [ %5879, %5876 ], [ %5879, %5886 ], [ %6273, %6279 ]
  %6284 = phi float [ %5880, %5876 ], [ %5880, %5886 ], [ %6274, %6279 ]
  %6285 = phi float [ %5881, %5876 ], [ %5881, %5886 ], [ %6275, %6279 ]
  %6286 = phi float [ %5882, %5876 ], [ %5882, %5886 ], [ %6276, %6279 ]
  %6287 = call float @dx.op.unary.f32(i32 24, float %4736)  ; Sqrt(value)
  %6288 = call float @dx.op.unary.f32(i32 24, float %4737)  ; Sqrt(value)
  %6289 = call float @dx.op.unary.f32(i32 24, float %4738)  ; Sqrt(value)
  %6290 = fmul fast float %6287, %6284
  %6291 = fmul fast float %6288, %6285
  %6292 = extractvalue %dx.types.CBufRet.f32 %5363, 0
  br i1 %370, label %6293, label %6314

; <label>:6293                                    ; preds = %6280
  %6294 = fadd fast float %6286, %3972
  %6295 = fmul fast float %6294, %3970
  %6296 = fsub fast float 1.000000e+00, %3970
  %6297 = call float @dx.op.unary.f32(i32 7, float %6296)  ; Saturate(value)
  %6298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6299 = extractvalue %dx.types.CBufRet.f32 %6298, 3
  %6300 = fmul fast float %6299, %6297
  %6301 = fadd fast float %6300, %6295
  %6302 = fsub fast float 1.000000e+00, %4749
  %6303 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6304 = extractvalue %dx.types.CBufRet.f32 %6303, 0
  %6305 = fmul fast float %6304, %6302
  %6306 = fsub fast float %6301, %6305
  %6307 = fadd fast float %6291, %6290
  %6308 = fmul fast float %6292, %6307
  %6309 = extractvalue %dx.types.CBufRet.f32 %6298, 1
  %6310 = fsub fast float %6306, %6309
  %6311 = extractvalue %dx.types.CBufRet.f32 %6298, 2
  %6312 = fmul fast float %6310, %6311
  %6313 = call float @dx.op.unary.f32(i32 7, float %6312)  ; Saturate(value)
  br label %6330

; <label>:6314                                    ; preds = %6280
  %6315 = fmul fast float %6289, %6286
  %6316 = fmul fast float %6292, %6290
  %6317 = fmul fast float %6292, %6291
  %6318 = fmul fast float %6315, %6292
  %6319 = add i32 %42, 356
  %6320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %6319, i32 undef)  ; BufferLoad(srv,index,wot)
  %6321 = extractvalue %dx.types.ResRet.i32 %6320, 0
  %6322 = and i32 %6321, 32
  %6323 = icmp eq i32 %6322, 0
  br i1 %6323, label %6330, label %6324

; <label>:6324                                    ; preds = %6314
  %6325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %39, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.f32 %6325, 0
  %6327 = fmul fast float %6326, 0x3FE99999A0000000
  %6328 = fadd fast float %6326, %6316
  %6329 = fadd fast float %6327, %6318
  br label %6330

; <label>:6330                                    ; preds = %6324, %6314, %6293
  %6331 = phi float [ %6308, %6293 ], [ %6328, %6324 ], [ %6316, %6314 ]
  %6332 = phi float [ %6313, %6293 ], [ %6317, %6324 ], [ %6317, %6314 ]
  %6333 = phi float [ 1.000000e+00, %6293 ], [ %6329, %6324 ], [ %6318, %6314 ]
  %6334 = fmul fast float %6292, %6282
  %6335 = fmul fast float %6292, %6283
  %6336 = fadd fast float %6282, %6281
  %6337 = select i1 %370, float %6336, float %6281
  %6338 = fmul float %6337, %6292
  %6339 = select i1 %370, float 0.000000e+00, float %6334
  %6340 = select i1 %370, float 0.000000e+00, float %6335
  %6341 = fmul fast float %6331, %6287
  %6342 = fmul fast float %6332, %6288
  %6343 = fmul fast float %6333, %6289
  %6344 = fadd fast float %6338, %6341
  %6345 = fadd fast float %6339, %6342
  %6346 = fadd fast float %6340, %6343
  %6347 = select i1 %370, float %6332, float %6345
  %6348 = select i1 %370, float %6333, float %6346
  %6349 = call float @dx.op.binary.f32(i32 36, float %6344, float 3.225500e+04)  ; FMin(a,b)
  %6350 = call float @dx.op.binary.f32(i32 36, float %6347, float 3.225500e+04)  ; FMin(a,b)
  %6351 = call float @dx.op.binary.f32(i32 36, float %6348, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6349)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6350)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6351)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!53}
!dx.entryPoints = !{!54}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !44, !47}
!5 = !{!6, !8, !9, !10, !11, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 65, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 64, i32 1, i32 2, i32 0, !12}
!12 = !{i32 0, i32 5}
!13 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 38, i32 1, i32 11, i32 0, null}
!14 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 39, i32 1, i32 11, i32 0, null}
!15 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 40, i32 1, i32 11, i32 0, null}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !12}
!22 = !{i32 14, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!23 = !{i32 15, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !12}
!24 = !{i32 16, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!44 = !{!45, !46}
!45 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!46 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!47 = !{!48, !49, !50, !51, !52}
!48 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!49 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!50 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!51 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!52 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!53 = !{[35 x i32] [i32 33, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
!54 = !{void ()* @ps_main, !"ps_main", !55, !4, !78}
!55 = !{!56, !76, null}
!56 = !{!57, !60, !62, !64, !66, !68, !69, !70, !72, !74, !75}
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
!68 = !{i32 5, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !58, i8 2, i32 1, i8 2, i32 5, i8 0, !63}
!69 = !{i32 6, !"SCEONDARY_NORMAL", i8 9, i8 0, !58, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!70 = !{i32 7, !"LOCAL_HEIGHT", i8 9, i8 0, !58, i8 2, i32 1, i8 1, i32 3, i8 3, !71}
!71 = !{i32 3, i32 1}
!72 = !{i32 8, !"PACKED_TRI_DATA", i8 5, i8 0, !58, i8 1, i32 1, i8 4, i32 7, i8 0, !73}
!73 = !{i32 3, i32 5}
!74 = !{i32 9, !"SV_IsFrontFace", i8 5, i8 13, !58, i8 1, i32 1, i8 1, i32 8, i8 0, !71}
!75 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !58, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!76 = !{!77}
!77 = !{i32 0, !"SV_Target", i8 9, i8 16, !58, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!78 = !{i32 0, i64 24}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}

