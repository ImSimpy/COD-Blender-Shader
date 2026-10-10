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
; PACKED_TRI_DATA          0   xyzw        8     NONE    uint   x z 
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
; shader hash: 8bc47d3572fe70792adedf9cd0ca11ff
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t13,space2     1
;                                   texture     u32          2d      T8     t17,space2     1
;                                   texture     f32          3d      T9     t18,space2     1
;                                   texture     u32     2darray     T10     t11,space2     1
;                                   texture     f32     2darray     T11     t10,space2     1
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture    byte         r/o     T13     t49,space1     1
;                                   texture    byte         r/o     T14     t50,space1     1
;                                   texture    byte         r/o     T15     t51,space1     1
;                                   texture    byte         r/o     T16     t52,space1     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t59,space2     1
;                                   texture     f32          2d     T19     t60,space2     1
;                                   texture    byte         r/o     T20     t45,space1     1
;                                   texture    byte         r/o     T21     t46,space1     1
;                                   texture    byte         r/o     T22     t47,space1     1
;                                   texture    byte         r/o     T23     t48,space1     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27     t68,space1     1
;                                   texture     f32          2d     T28      t0,space2     1
;                                   texture    byte         r/o     T29     t11,space1     1
;                                   texture    byte         r/o     T30     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 37, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 32, 34, 36 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 32, 34, 36 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 29, 30, 32, 34, 36 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = icmp ne i32 %35, 0
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = fmul fast float %67, %61
  %69 = fmul fast float %67, %62
  %70 = select i1 %36, float 1.000000e+00, float -1.000000e+00
  %71 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %72 = bitcast float %71 to i32
  %73 = ashr i32 %72, 1
  %74 = sub nsw i32 1597250115, %73
  %75 = bitcast i32 %74 to float
  %76 = fmul fast float %53, %70
  %77 = fmul fast float %76, %75
  %78 = fmul fast float %54, %70
  %79 = fmul fast float %78, %75
  %80 = fmul fast float %55, %70
  %81 = fmul fast float %80, %75
  %82 = fmul fast float %54, %51
  %83 = fmul fast float %55, %50
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %55, %49
  %86 = fmul fast float %53, %51
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %53, %50
  %89 = fmul fast float %54, %49
  %90 = fsub fast float %88, %89
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 3
  %94 = fmul fast float %68, 2.000000e+00
  %95 = fmul fast float %94, %92
  %96 = fmul fast float %69, 2.000000e+00
  %97 = fmul fast float %96, %93
  %98 = fsub fast float 1.000000e+00, %95
  %99 = fsub fast float 1.000000e+00, %97
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fmul fast float %98, %101
  %105 = fmul fast float %98, %102
  %106 = fmul fast float %98, %103
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fmul fast float %99, %108
  %112 = fmul fast float %99, %109
  %113 = fmul fast float %99, %110
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 0
  %116 = extractvalue %dx.types.CBufRet.f32 %114, 1
  %117 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %118 = fadd fast float %111, %115
  %119 = fadd fast float %118, %104
  %120 = fadd fast float %112, %116
  %121 = fadd fast float %120, %105
  %122 = fadd fast float %113, %117
  %123 = fadd fast float %122, %106
  %124 = fmul fast float %119, %63
  %125 = fmul fast float %121, %63
  %126 = fmul fast float %123, %63
  %127 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 128)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.i32 %127, 3
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %134 = fmul fast float %132, %68
  %135 = fmul fast float %133, %69
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = and i32 %137, 114688
  %139 = icmp ne i32 %138, 0
  %140 = select i1 %139, float %134, float 0.000000e+00
  %141 = select i1 %139, float %135, float 0.000000e+00
  %142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %32, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = fmul fast float %143, 2.550000e+02
  %145 = fptoui float %144 to i32
  %146 = select i1 %139, i32 %145, i32 0
  %147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.i32 %147, 3
  %149 = and i32 %148, 3
  %150 = icmp ne i32 %149, 0
  %151 = and i32 %148, 4
  %152 = icmp ne i32 %151, 0
  %153 = and i1 %150, %152
  br i1 %153, label %154, label %163

; <label>:154                                     ; preds = %0
  %155 = fmul fast float %93, %69
  %156 = fmul fast float %92, %68
  %157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %156, float %155, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %158 = extractvalue %dx.types.ResRet.f32 %157, 0
  %159 = fsub fast float 1.000000e+00, %158
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = fcmp fast olt float %159, %161
  br label %166

; <label>:163                                     ; preds = %0
  %164 = icmp eq i32 %151, 0
  %165 = and i1 %150, %164
  br label %166

; <label>:166                                     ; preds = %163, %154
  %167 = phi i1 [ %162, %154 ], [ %165, %163 ]
  %168 = add i32 %37, 156
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = shl i32 %170, 4
  %172 = and i32 %171, 32752
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172)  ; LegacyF16ToF32(value)
  %174 = lshr i32 %170, 7
  %175 = and i32 %174, 32752
  %176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %175)  ; LegacyF16ToF32(value)
  %177 = lshr i32 %170, 22
  %178 = shl nuw nsw i32 %177, 5
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = add i32 %37, 216
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = and i32 %182, 255
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3F70101020000000
  %186 = lshr i32 %182, 8
  %187 = and i32 %186, 255
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F70101020000000
  %190 = lshr i32 %182, 16
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = add i32 %37, 36
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 65535
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %196, 16
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = add i32 %37, 288
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 65535
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %203, 16
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = fmul fast float %205, 0x3F50624DE0000000
  %209 = fmul fast float %207, 0x3F50624DE0000000
  %210 = add i32 %37, 172
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = shl i32 %212, 4
  %214 = and i32 %213, 32752
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %212, 7
  %217 = and i32 %216, 32752
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = lshr i32 %212, 22
  %220 = shl nuw nsw i32 %219, 5
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = add i32 %37, 232
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = lshr i32 %224, 8
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %224, 16
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = add i32 %37, 52
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %238, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = add i32 %37, 304
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = fmul fast float %247, 0x3F50624DE0000000
  %251 = fmul fast float %249, 0x3F50624DE0000000
  %252 = add i32 %37, 188
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = shl i32 %254, 4
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %254, 7
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %254, 22
  %262 = shl nuw nsw i32 %261, 5
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %37, 248
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %266, 8
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %266, 16
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = add i32 %37, 68
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %37, 320
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = fmul fast float %289, 0x3F50624DE0000000
  %293 = fmul fast float %291, 0x3F50624DE0000000
  %294 = add i32 %37, 204
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = shl i32 %296, 4
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %296, 7
  %301 = and i32 %300, 32752
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %296, 22
  %304 = shl nuw nsw i32 %303, 5
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %37, 264
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %308, 8
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %308, 16
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = add i32 %37, 84
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %37, 336
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = fmul fast float %331, 0x3F50624DE0000000
  %335 = fmul fast float %333, 0x3F50624DE0000000
  %336 = add i32 %37, 348
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 32
  %340 = icmp eq i32 %339, 0
  %341 = and i32 %338, 64
  %342 = icmp eq i32 %341, 0
  %343 = and i32 %338, 128
  %344 = icmp eq i32 %343, 0
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 2
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %362, label %349

; <label>:349                                     ; preds = %166
  %350 = add i32 %37, 568
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = add i32 %352, 0
  %354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %354, %dx.types.Handle %65, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = fmul fast float %356, %58
  %360 = fmul fast float %357, %59
  %361 = fmul fast float %358, %60
  br label %362

; <label>:362                                     ; preds = %349, %166
  %363 = phi float [ %60, %166 ], [ %361, %349 ]
  %364 = phi float [ %59, %166 ], [ %360, %349 ]
  %365 = phi float [ %58, %166 ], [ %359, %349 ]
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 2
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %389, label %370

; <label>:370                                     ; preds = %362
  %371 = add i32 %37, 44
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 1
  %375 = icmp ne i32 %374, 0
  %376 = select i1 %375, float %365, float 1.000000e+00
  %377 = add i32 %37, 60
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %381, float %364, float 1.000000e+00
  %383 = add i32 %37, 76
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 1
  %387 = icmp ne i32 %386, 0
  %388 = select i1 %387, float %363, float 1.000000e+00
  br label %389

; <label>:389                                     ; preds = %370, %362
  %390 = phi float [ %363, %362 ], [ %388, %370 ]
  %391 = phi float [ %364, %362 ], [ %382, %370 ]
  %392 = phi float [ %365, %362 ], [ %376, %370 ]
  %393 = lshr i32 %367, 20
  %394 = and i32 %393, 3
  %395 = add nuw nsw i32 %394, 1
  %396 = add i32 %37, 24
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = add i32 %37, 28
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = or i32 %401, %398
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %915, label %404

; <label>:404                                     ; preds = %389
  %405 = and i32 %398, 262144
  %406 = icmp ne i32 %405, 0
  %407 = select i1 %406, float %43, float 1.000000e+00
  %408 = select i1 %406, float %44, float 0.000000e+00
  %409 = select i1 %406, float %45, float 0.000000e+00
  %410 = select i1 %406, float %46, float 1.000000e+00
  %411 = select i1 %406, float %47, float %56
  %412 = select i1 %406, float %48, float %57
  %413 = add i32 %37, 284
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = lshr i32 %415, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = fmul fast float %417, 0x3F50624DE0000000
  %419 = add i32 %37, 88
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = lshr i32 %421, 16
  %423 = and i32 %422, 255
  %424 = lshr i32 %421, 24
  %425 = add i32 %37, 292
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 65535
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %427, 16
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = add i32 %37, 32
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = lshr i32 %434, 22
  %436 = shl nuw nsw i32 %435, 5
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = shl i32 %434, 4
  %439 = and i32 %438, 32752
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %434, 7
  %442 = and i32 %441, 32752
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %446 = fmul fast float %445, 1.000000e+03
  %447 = fmul fast float %208, %446
  %448 = call float @dx.op.unary.f32(i32 22, float %447)  ; Frc(value)
  %449 = fadd fast float %448, %198
  %450 = fmul fast float %209, %446
  %451 = call float @dx.op.unary.f32(i32 22, float %450)  ; Frc(value)
  %452 = fadd fast float %451, %200
  %453 = fmul fast float %418, %446
  %454 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  %455 = fmul fast float %454, 0x401921FB60000000
  %456 = fadd fast float %455, %437
  %457 = call float @dx.op.unary.f32(i32 13, float %456)  ; Sin(value)
  %458 = call float @dx.op.unary.f32(i32 12, float %456)  ; Cos(value)
  %459 = fsub fast float -0.000000e+00, %457
  %460 = fadd fast float %411, -5.000000e-01
  %461 = fadd fast float %412, -5.000000e-01
  %462 = fmul fast float %429, %460
  %463 = fmul fast float %431, %461
  %464 = fadd fast float %462, 5.000000e-01
  %465 = fadd fast float %463, 5.000000e-01
  %466 = fmul fast float %440, %464
  %467 = fmul fast float %443, %465
  %468 = fmul fast float %458, %466
  %469 = call float @dx.op.tertiary.f32(i32 46, float %459, float %467, float %468)  ; FMad(a,b,c)
  %470 = fmul fast float %457, %466
  %471 = call float @dx.op.tertiary.f32(i32 46, float %458, float %467, float %470)  ; FMad(a,b,c)
  %472 = fadd fast float %449, %469
  %473 = fadd fast float %452, %471
  %474 = icmp ugt i32 %423, 1
  %475 = icmp ugt i32 %421, 33554431
  %476 = or i1 %475, %474
  br i1 %476, label %477, label %502

; <label>:477                                     ; preds = %404
  %478 = add i32 %37, 228
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 16
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = fmul fast float %445, %482
  %484 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %485 = mul nuw nsw i32 %423, %424
  %486 = uitofp i32 %485 to float
  %487 = fmul fast float %484, %486
  %488 = call float @dx.op.unary.f32(i32 27, float %487)  ; Round_ni(value)
  %489 = fptoui float %488 to i32
  %490 = urem i32 %489, %423
  %491 = udiv i32 %489, %424
  %492 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %493 = call float @dx.op.unary.f32(i32 22, float %473)  ; Frc(value)
  %494 = uitofp i32 %490 to float
  %495 = uitofp i32 %491 to float
  %496 = fadd fast float %492, %494
  %497 = fadd fast float %493, %495
  %498 = uitofp i32 %423 to float
  %499 = uitofp i32 %424 to float
  %500 = fdiv fast float %496, %498
  %501 = fdiv fast float %497, %499
  br label %502

; <label>:502                                     ; preds = %477, %404
  %503 = phi float [ %500, %477 ], [ %472, %404 ]
  %504 = phi float [ %501, %477 ], [ %473, %404 ]
  %505 = and i32 %398, 16
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %703, label %507

; <label>:507                                     ; preds = %502
  %508 = add i32 %37, 456
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = add i32 %510, 0
  %512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %512, %dx.types.Handle %64, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = extractvalue %dx.types.ResRet.f32 %513, 2
  %517 = extractvalue %dx.types.ResRet.f32 %513, 3
  %518 = and i32 %421, 255
  %519 = uitofp i32 %518 to float
  %520 = lshr i32 %421, 8
  %521 = and i32 %520, 255
  %522 = uitofp i32 %521 to float
  %523 = fmul fast float %517, %519
  %524 = fadd fast float %523, %522
  %525 = fmul fast float %524, 0x3F70101000000000
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 512
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %538, label %530

; <label>:530                                     ; preds = %507
  %531 = add i32 %37, 536
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = add i32 %533, 0
  %535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %535, %dx.types.Handle %65, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  br label %538

; <label>:538                                     ; preds = %530, %507
  %539 = phi float [ %537, %530 ], [ 1.000000e+00, %507 ]
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 33554432
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %650, label %544

; <label>:544                                     ; preds = %538
  %545 = add i32 %37, 224
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 65535
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %547, 16
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = add i32 %37, 228
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = lshr i32 %558, 24
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = and i32 %558, 255
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %563, 0x3F70101020000000
  %565 = lshr i32 %558, 8
  %566 = and i32 %565, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = lshr i32 %558, 16
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = add i32 %37, 220
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = lshr i32 %575, 24
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = and i32 %575, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = lshr i32 %575, 8
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %575, 16
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = bitcast float %514 to i32
  %591 = ashr i32 %590, 1
  %592 = sub nsw i32 1597463174, %591
  %593 = bitcast i32 %592 to float
  %594 = fmul fast float %514, 5.000000e-01
  %595 = fmul fast float %593, %593
  %596 = fmul fast float %595, %594
  %597 = fsub fast float 1.500000e+00, %596
  %598 = fmul fast float %593, %514
  %599 = fmul fast float %598, %597
  %600 = bitcast float %515 to i32
  %601 = ashr i32 %600, 1
  %602 = sub nsw i32 1597463174, %601
  %603 = bitcast i32 %602 to float
  %604 = fmul fast float %515, 5.000000e-01
  %605 = fmul fast float %603, %603
  %606 = fmul fast float %605, %604
  %607 = fsub fast float 1.500000e+00, %606
  %608 = fmul fast float %603, %515
  %609 = fmul fast float %608, %607
  %610 = bitcast float %516 to i32
  %611 = ashr i32 %610, 1
  %612 = sub nsw i32 1597463174, %611
  %613 = bitcast i32 %612 to float
  %614 = fmul fast float %516, 5.000000e-01
  %615 = fmul fast float %613, %613
  %616 = fmul fast float %615, %614
  %617 = fsub fast float 1.500000e+00, %616
  %618 = fmul fast float %613, %516
  %619 = fmul fast float %618, %617
  %620 = fsub fast float %599, %581
  %621 = fsub fast float %609, %585
  %622 = fsub fast float %619, %589
  %623 = fmul fast float %620, %549
  %624 = fmul fast float %621, %551
  %625 = fmul fast float %622, %556
  %626 = fadd fast float %623, %564
  %627 = fadd fast float %624, %568
  %628 = fadd fast float %625, %572
  %629 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %630 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %631 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %632 = fmul fast float %629, %629
  %633 = fmul fast float %630, %630
  %634 = fmul fast float %631, %631
  %635 = fsub fast float %632, %514
  %636 = fsub fast float %633, %515
  %637 = fsub fast float %634, %516
  %638 = fmul fast float %635, %539
  %639 = fmul fast float %636, %539
  %640 = fmul fast float %637, %539
  %641 = fadd fast float %638, %514
  %642 = fadd fast float %639, %515
  %643 = fadd fast float %640, %516
  %644 = fadd fast float %561, %525
  %645 = fsub fast float %644, %578
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %647 = fsub fast float %646, %525
  %648 = fmul fast float %647, %539
  %649 = fadd fast float %648, %525
  br label %703

; <label>:650                                     ; preds = %538
  %651 = and i32 %541, 134217728
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %687, label %653

; <label>:653                                     ; preds = %650
  %654 = call float @dx.op.unary.f32(i32 24, float %185)  ; Sqrt(value)
  %655 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %656 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %657 = fadd fast float %654, -5.000000e-01
  %658 = fadd fast float %655, -5.000000e-01
  %659 = fadd fast float %656, -5.000000e-01
  %660 = fmul fast float %657, %539
  %661 = fmul fast float %658, %539
  %662 = fmul fast float %659, %539
  %663 = fadd fast float %660, 5.000000e-01
  %664 = fadd fast float %661, 5.000000e-01
  %665 = fadd fast float %662, 5.000000e-01
  %666 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %667 = call float @dx.op.unary.f32(i32 24, float %515)  ; Sqrt(value)
  %668 = call float @dx.op.unary.f32(i32 24, float %516)  ; Sqrt(value)
  %669 = fmul fast float %663, 2.000000e+00
  %670 = fsub fast float 1.000000e+00, %669
  %671 = fmul fast float %670, %666
  %672 = fadd fast float %671, %669
  %673 = fmul fast float %672, %666
  %674 = fmul fast float %664, 2.000000e+00
  %675 = fsub fast float 1.000000e+00, %674
  %676 = fmul fast float %675, %667
  %677 = fadd fast float %676, %674
  %678 = fmul fast float %677, %667
  %679 = fmul fast float %665, 2.000000e+00
  %680 = fsub fast float 1.000000e+00, %679
  %681 = fmul fast float %680, %668
  %682 = fadd fast float %681, %679
  %683 = fmul fast float %682, %668
  %684 = fmul fast float %673, %673
  %685 = fmul fast float %678, %678
  %686 = fmul fast float %683, %683
  br label %703

; <label>:687                                     ; preds = %650
  %688 = fmul fast float %185, %185
  %689 = fmul fast float %189, %189
  %690 = fmul fast float %193, %193
  %691 = fadd fast float %688, -1.000000e+00
  %692 = fadd fast float %689, -1.000000e+00
  %693 = fadd fast float %690, -1.000000e+00
  %694 = fmul fast float %539, %691
  %695 = fmul fast float %539, %692
  %696 = fmul fast float %539, %693
  %697 = fadd fast float %694, 1.000000e+00
  %698 = fadd fast float %695, 1.000000e+00
  %699 = fadd fast float %696, 1.000000e+00
  %700 = fmul fast float %697, %514
  %701 = fmul fast float %698, %515
  %702 = fmul fast float %699, %516
  br label %703

; <label>:703                                     ; preds = %687, %653, %544, %502
  %704 = phi float [ %649, %544 ], [ %525, %653 ], [ %525, %687 ], [ 0x3FA23C0BE0000000, %502 ]
  %705 = phi float [ %641, %544 ], [ %684, %653 ], [ %700, %687 ], [ 1.000000e+00, %502 ]
  %706 = phi float [ %642, %544 ], [ %685, %653 ], [ %701, %687 ], [ 1.000000e+00, %502 ]
  %707 = phi float [ %643, %544 ], [ %686, %653 ], [ %702, %687 ], [ 1.000000e+00, %502 ]
  %708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.i32 %708, 1
  %710 = and i32 %709, 1
  %711 = icmp ne i32 %710, 0
  %712 = add i32 %37, 356
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 32
  %716 = icmp ne i32 %715, 0
  %717 = and i1 %711, %716
  %718 = select i1 %717, float 1.000000e+00, float %705
  %719 = select i1 %717, float 0x3FD3333340000000, float %706
  %720 = select i1 %717, float 0x3FD3333340000000, float %707
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 32
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %797, label %725

; <label>:725                                     ; preds = %703
  %726 = add i32 %37, 92
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = add i32 %37, 472
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = add i32 %731, 0
  %733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %733, %dx.types.Handle %64, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = extractvalue %dx.types.ResRet.f32 %734, 3
  %739 = and i32 %728, 255
  %740 = uitofp i32 %739 to float
  %741 = lshr i32 %728, 8
  %742 = and i32 %741, 255
  %743 = uitofp i32 %742 to float
  %744 = lshr i32 %728, 16
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101000000000
  %748 = fmul fast float %735, %740
  %749 = fadd fast float %748, %743
  %750 = fmul fast float %749, 0x3F70101000000000
  %751 = fadd fast float %736, -5.000000e-01
  %752 = fadd fast float %738, -5.000000e-01
  %753 = fmul fast float %751, %747
  %754 = fmul fast float %752, %747
  %755 = fadd fast float %753, 5.000000e-01
  %756 = fadd fast float %754, 5.000000e-01
  %757 = fmul fast float %755, 2.000000e+00
  %758 = fadd fast float %757, -1.000000e+00
  %759 = fmul fast float %756, 2.000000e+00
  %760 = fadd fast float %759, -1.000000e+00
  %761 = fadd fast float %758, %760
  %762 = fmul fast float %761, 5.000000e-01
  %763 = fsub fast float %758, %760
  %764 = fmul fast float %763, 5.000000e-01
  %765 = call float @dx.op.unary.f32(i32 6, float %762)  ; FAbs(value)
  %766 = fsub fast float 1.000000e+00, %765
  %767 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %768 = fsub fast float %766, %767
  %769 = call float @dx.op.dot3.f32(i32 55, float %762, float %764, float %768, float %762, float %764, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = call float @dx.op.unary.f32(i32 25, float %769)  ; Rsqrt(value)
  %771 = fmul fast float %762, %770
  %772 = fmul fast float %764, %770
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 67108864
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %793, label %777

; <label>:777                                     ; preds = %725
  %778 = add i32 %37, 280
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 65535
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 65535
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = lshr i32 %780, 16
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = fsub fast float %750, %788
  %790 = fmul fast float %789, %782
  %791 = fadd fast float %790, %786
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  br label %793

; <label>:793                                     ; preds = %777, %725
  %794 = phi float [ %792, %777 ], [ %750, %725 ]
  %795 = call float @dx.op.dot2.f32(i32 54, float %771, float %772, float %407, float %408)  ; Dot2(ax,ay,bx,by)
  %796 = call float @dx.op.dot2.f32(i32 54, float %771, float %772, float %409, float %410)  ; Dot2(ax,ay,bx,by)
  br label %797

; <label>:797                                     ; preds = %793, %703
  %798 = phi float [ %794, %793 ], [ 0x3FD6666660000000, %703 ]
  %799 = phi float [ %795, %793 ], [ 0.000000e+00, %703 ]
  %800 = phi float [ %796, %793 ], [ 0.000000e+00, %703 ]
  %801 = phi float [ %737, %793 ], [ 1.000000e+00, %703 ]
  %802 = add i32 %37, 160
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = lshr i32 %804, 22
  %806 = shl nuw nsw i32 %805, 5
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 64
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %845, label %812

; <label>:812                                     ; preds = %797
  %813 = add i32 %37, 488
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = add i32 %815, 0
  %817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 131072
  %821 = icmp eq i32 %820, 0
  %822 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %817, %dx.types.Handle %64, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = extractvalue %dx.types.ResRet.f32 %822, 1
  %825 = extractvalue %dx.types.ResRet.f32 %822, 2
  %826 = fmul fast float %823, %173
  %827 = fmul fast float %824, %176
  %828 = fmul fast float %825, %179
  br i1 %821, label %835, label %829

; <label>:829                                     ; preds = %812
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = fmul fast float %831, %826
  %833 = fmul fast float %831, %827
  %834 = fmul fast float %831, %828
  br label %835

; <label>:835                                     ; preds = %829, %812
  %836 = phi float [ %832, %829 ], [ %826, %812 ]
  %837 = phi float [ %833, %829 ], [ %827, %812 ]
  %838 = phi float [ %834, %829 ], [ %828, %812 ]
  %839 = fmul fast float %836, %807
  %840 = select i1 %167, float %839, float %836
  %841 = call float @dx.op.dot3.f32(i32 55, float %840, float %837, float %838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %842 = select i1 %167, float 0.000000e+00, float %836
  %843 = select i1 %167, float %841, float %837
  %844 = select i1 %167, float 0.000000e+00, float %838
  br label %845

; <label>:845                                     ; preds = %835, %797
  %846 = phi float [ %842, %835 ], [ 0.000000e+00, %797 ]
  %847 = phi float [ %843, %835 ], [ 0.000000e+00, %797 ]
  %848 = phi float [ %844, %835 ], [ 0.000000e+00, %797 ]
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = and i32 %850, 10240
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %897, label %853

; <label>:853                                     ; preds = %845
  %854 = add i32 %37, 552
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = add i32 %856, 0
  %858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %65, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 1
  %861 = extractvalue %dx.types.ResRet.f32 %859, 3
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 1048576
  %865 = icmp ne i32 %864, 0
  %866 = and i32 %863, 8192
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %883, label %868

; <label>:868                                     ; preds = %853
  %869 = extractvalue %dx.types.ResRet.f32 %859, 2
  %870 = select i1 %865, float %869, float %860
  %871 = extractvalue %dx.types.ResRet.f32 %859, 0
  %872 = select i1 %865, float %871, float %860
  %873 = add i32 %37, 96
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = lshr i32 %875, 16
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %878, 0x3F80101020000000
  %880 = fmul fast float %879, %872
  %881 = fmul fast float %879, %860
  %882 = fmul fast float %879, %870
  br label %883

; <label>:883                                     ; preds = %868, %853
  %884 = phi float [ %880, %868 ], [ 0.000000e+00, %853 ]
  %885 = phi float [ %881, %868 ], [ 0.000000e+00, %853 ]
  %886 = phi float [ %882, %868 ], [ 0.000000e+00, %853 ]
  %887 = and i32 %863, 2048
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %897, label %889

; <label>:889                                     ; preds = %883
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = shl i32 %891, 4
  %893 = and i32 %892, 32752
  %894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %893)  ; LegacyF16ToF32(value)
  %895 = fmul fast float %894, %861
  %896 = call float @dx.op.binary.f32(i32 35, float %895, float 0x3F70101020000000)  ; FMax(a,b)
  br label %897

; <label>:897                                     ; preds = %889, %883, %845
  %898 = phi float [ %884, %889 ], [ %884, %883 ], [ 0.000000e+00, %845 ]
  %899 = phi float [ %885, %889 ], [ %885, %883 ], [ 0.000000e+00, %845 ]
  %900 = phi float [ %886, %889 ], [ %886, %883 ], [ 0.000000e+00, %845 ]
  %901 = phi float [ %896, %889 ], [ 0x3F70101020000000, %883 ], [ 0x3F70101020000000, %845 ]
  %902 = add i32 %37, 96
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = lshr i32 %904, 8
  %908 = and i32 %907, 255
  %909 = uitofp i32 %908 to float
  %910 = call float @dx.op.dot3.f32(i32 55, float %718, float %719, float %720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = fmul fast float %909, %910
  %912 = fadd fast float %911, %906
  %913 = fmul fast float %912, 0x3F70101020000000
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  br label %915

; <label>:915                                     ; preds = %897, %389
  %916 = phi float [ 0.000000e+00, %389 ], [ %799, %897 ]
  %917 = phi float [ 0.000000e+00, %389 ], [ %800, %897 ]
  %918 = phi float [ 0.000000e+00, %389 ], [ %718, %897 ]
  %919 = phi float [ 0.000000e+00, %389 ], [ %719, %897 ]
  %920 = phi float [ 0.000000e+00, %389 ], [ %720, %897 ]
  %921 = phi float [ 0.000000e+00, %389 ], [ %898, %897 ]
  %922 = phi float [ 0.000000e+00, %389 ], [ %899, %897 ]
  %923 = phi float [ 0.000000e+00, %389 ], [ %900, %897 ]
  %924 = phi float [ 0.000000e+00, %389 ], [ %846, %897 ]
  %925 = phi float [ 0.000000e+00, %389 ], [ %847, %897 ]
  %926 = phi float [ 0.000000e+00, %389 ], [ %848, %897 ]
  %927 = phi float [ 0.000000e+00, %389 ], [ %704, %897 ]
  %928 = phi float [ 0.000000e+00, %389 ], [ 1.000000e+00, %897 ]
  %929 = phi float [ 0.000000e+00, %389 ], [ %798, %897 ]
  %930 = phi float [ 0.000000e+00, %389 ], [ %801, %897 ]
  %931 = phi float [ 0.000000e+00, %389 ], [ %901, %897 ]
  %932 = phi float [ 0.000000e+00, %389 ], [ %914, %897 ]
  br i1 %340, label %1861, label %933

; <label>:933                                     ; preds = %915
  %934 = icmp ult i32 %395, 2
  %935 = add i32 %37, 40
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = add i32 %37, 44
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = or i32 %940, %937
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %1861, label %943

; <label>:943                                     ; preds = %933
  %944 = and i32 %937, 262144
  %945 = icmp ne i32 %944, 0
  %946 = select i1 %945, float %43, float 1.000000e+00
  %947 = select i1 %945, float %44, float 0.000000e+00
  %948 = select i1 %945, float %45, float 0.000000e+00
  %949 = select i1 %945, float %46, float 1.000000e+00
  %950 = select i1 %945, float %47, float %56
  %951 = select i1 %945, float %48, float %57
  %952 = add i32 %37, 300
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = lshr i32 %954, 16
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = fmul fast float %956, 0x3F50624DE0000000
  %958 = add i32 %37, 104
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = lshr i32 %960, 16
  %962 = and i32 %961, 255
  %963 = lshr i32 %960, 24
  %964 = add i32 %37, 308
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 65535
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = lshr i32 %966, 16
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = add i32 %37, 48
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = lshr i32 %973, 22
  %975 = shl nuw nsw i32 %974, 5
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = shl i32 %973, 4
  %978 = and i32 %977, 32752
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = lshr i32 %973, 7
  %981 = and i32 %980, 32752
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 3
  %985 = fmul fast float %984, 1.000000e+03
  %986 = fmul fast float %250, %985
  %987 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %988 = fadd fast float %987, %240
  %989 = fmul fast float %251, %985
  %990 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %991 = fadd fast float %990, %242
  %992 = fmul fast float %957, %985
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = fmul fast float %993, 0x401921FB60000000
  %995 = fadd fast float %994, %976
  %996 = call float @dx.op.unary.f32(i32 13, float %995)  ; Sin(value)
  %997 = call float @dx.op.unary.f32(i32 12, float %995)  ; Cos(value)
  %998 = fsub fast float -0.000000e+00, %996
  %999 = fadd fast float %950, -5.000000e-01
  %1000 = fadd fast float %951, -5.000000e-01
  %1001 = fmul fast float %968, %999
  %1002 = fmul fast float %970, %1000
  %1003 = fadd fast float %1001, 5.000000e-01
  %1004 = fadd fast float %1002, 5.000000e-01
  %1005 = fmul fast float %979, %1003
  %1006 = fmul fast float %982, %1004
  %1007 = fmul fast float %997, %1005
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %998, float %1006, float %1007)  ; FMad(a,b,c)
  %1009 = fmul fast float %996, %1005
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %997, float %1006, float %1009)  ; FMad(a,b,c)
  %1011 = fadd fast float %988, %1008
  %1012 = fadd fast float %991, %1010
  %1013 = icmp ugt i32 %962, 1
  %1014 = icmp ugt i32 %960, 33554431
  %1015 = or i1 %1014, %1013
  br i1 %1015, label %1016, label %1041

; <label>:1016                                    ; preds = %943
  %1017 = add i32 %37, 244
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = lshr i32 %1019, 16
  %1021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1020)  ; LegacyF16ToF32(value)
  %1022 = fmul fast float %984, %1021
  %1023 = call float @dx.op.unary.f32(i32 22, float %1022)  ; Frc(value)
  %1024 = mul nuw nsw i32 %962, %963
  %1025 = uitofp i32 %1024 to float
  %1026 = fmul fast float %1023, %1025
  %1027 = call float @dx.op.unary.f32(i32 27, float %1026)  ; Round_ni(value)
  %1028 = fptoui float %1027 to i32
  %1029 = urem i32 %1028, %962
  %1030 = udiv i32 %1028, %963
  %1031 = call float @dx.op.unary.f32(i32 22, float %1011)  ; Frc(value)
  %1032 = call float @dx.op.unary.f32(i32 22, float %1012)  ; Frc(value)
  %1033 = uitofp i32 %1029 to float
  %1034 = uitofp i32 %1030 to float
  %1035 = fadd fast float %1031, %1033
  %1036 = fadd fast float %1032, %1034
  %1037 = uitofp i32 %962 to float
  %1038 = uitofp i32 %963 to float
  %1039 = fdiv fast float %1035, %1037
  %1040 = fdiv fast float %1036, %1038
  br label %1041

; <label>:1041                                    ; preds = %1016, %943
  %1042 = phi float [ %1039, %1016 ], [ %1011, %943 ]
  %1043 = phi float [ %1040, %1016 ], [ %1012, %943 ]
  %1044 = and i32 %937, 16777216
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1155, label %1046

; <label>:1046                                    ; preds = %1041
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1051 = fadd fast float %1048, %124
  %1052 = fadd fast float %1049, %125
  %1053 = fadd fast float %1050, %126
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  %1057 = icmp eq i32 %38, 65535
  br i1 %1057, label %1152, label %1058

; <label>:1058                                    ; preds = %1046
  %1059 = lshr i32 %38, 1
  %1060 = shl i32 %1059, 2
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %38, 1
  %1064 = icmp ne i32 %1063, 0
  %1065 = lshr i32 %1062, 16
  %1066 = and i32 %1062, 65535
  %1067 = select i1 %1064, i32 %1065, i32 %1066
  %1068 = icmp eq i32 %1067, 65535
  br i1 %1068, label %1148, label %1069

; <label>:1069                                    ; preds = %1058
  %1070 = mul nuw nsw i32 %1067, 40
  %1071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = add nuw nsw i32 %1070, 12
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = add nuw nsw i32 %1070, 24
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = add nuw nsw i32 %1070, 36
  %1086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = fsub fast float %1051, %1072
  %1089 = fsub fast float %1052, %1073
  %1090 = fsub fast float %1053, %1074
  %1091 = fmul fast float %1087, %1088
  %1092 = fmul fast float %1087, %1089
  %1093 = fmul fast float %1087, %1090
  %1094 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = fadd fast float %1094, 5.000000e-01
  %1098 = fadd fast float %1095, 5.000000e-01
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = fmul fast float %1097, %1077
  %1101 = fmul fast float %1098, %1078
  %1102 = fmul fast float %1099, %1079
  %1103 = shl i32 %38, 2
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call float @dx.op.unary.f32(i32 22, float %1100)  ; Frc(value)
  %1109 = call float @dx.op.unary.f32(i32 22, float %1101)  ; Frc(value)
  %1110 = call float @dx.op.unary.f32(i32 22, float %1102)  ; Frc(value)
  %1111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1107, %dx.types.Handle %32, float %1108, float %1109, float %1110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = fmul fast float %1112, 1.023000e+03
  %1116 = fmul fast float %1113, 1.023000e+03
  %1117 = fmul fast float %1114, 1.023000e+03
  %1118 = fadd fast float %1115, 5.000000e-01
  %1119 = fadd fast float %1116, 5.000000e-01
  %1120 = fadd fast float %1117, 5.000000e-01
  %1121 = call float @dx.op.unary.f32(i32 27, float %1118)  ; Round_ni(value)
  %1122 = call float @dx.op.unary.f32(i32 27, float %1119)  ; Round_ni(value)
  %1123 = call float @dx.op.unary.f32(i32 27, float %1120)  ; Round_ni(value)
  %1124 = fsub fast float %1091, %1094
  %1125 = fsub fast float %1092, %1095
  %1126 = fsub fast float %1093, %1096
  %1127 = fmul fast float %1124, 7.500000e-01
  %1128 = fmul fast float %1125, 7.500000e-01
  %1129 = fmul fast float %1126, 7.500000e-01
  %1130 = fadd fast float %1094, 1.250000e-01
  %1131 = fadd fast float %1130, %1127
  %1132 = fadd fast float %1131, %1121
  %1133 = fadd fast float %1095, 1.250000e-01
  %1134 = fadd fast float %1133, %1128
  %1135 = fadd fast float %1134, %1122
  %1136 = fadd fast float %1096, 1.250000e-01
  %1137 = fadd fast float %1136, %1129
  %1138 = fadd fast float %1137, %1123
  %1139 = fmul fast float %1132, %1082
  %1140 = fmul fast float %1135, %1083
  %1141 = fmul fast float %1138, %1084
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %1143, 0
  %1145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1145, %dx.types.Handle %30, float %1139, float %1140, float %1141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  br label %1148

; <label>:1148                                    ; preds = %1069, %1058
  %1149 = phi float [ %1147, %1069 ], [ -1.000000e+00, %1058 ]
  %1150 = fadd fast float %1149, %1056
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  br label %1152

; <label>:1152                                    ; preds = %1148, %1046
  %1153 = phi float [ %1151, %1148 ], [ %1056, %1046 ]
  %1154 = fmul fast float %1153, %392
  br label %1155

; <label>:1155                                    ; preds = %1152, %1041
  %1156 = phi float [ %1154, %1152 ], [ %392, %1041 ]
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = and i32 %1158, 256
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1207, label %1161

; <label>:1161                                    ; preds = %1155
  %1162 = add i32 %37, 524
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = add i32 %1164, 0
  %1166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1166, %dx.types.Handle %65, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = add i32 %37, 116
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = shl i32 %1171, 4
  %1173 = and i32 %1172, 32752
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = lshr i32 %1171, 7
  %1176 = and i32 %1175, 32752
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = fsub fast float 1.000000e+00, %1156
  %1179 = call float @dx.op.binary.f32(i32 35, float %1178, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1180 = bitcast float %1156 to i32
  %1181 = sitofp i32 %1180 to float
  %1182 = fadd fast float %1181, 0xC1CFBF8940000000
  %1183 = fmul fast float %1177, %1182
  %1184 = fadd fast float %1183, 0x41CFBF8940000000
  %1185 = fptosi float %1184 to i32
  %1186 = bitcast i32 %1185 to float
  %1187 = bitcast float %1179 to i32
  %1188 = sitofp i32 %1187 to float
  %1189 = fadd fast float %1188, 0xC1CFBF8940000000
  %1190 = fmul fast float %1189, %1177
  %1191 = fadd fast float %1190, 0x41CFBF8940000000
  %1192 = fptosi float %1191 to i32
  %1193 = bitcast i32 %1192 to float
  %1194 = fmul fast float %1186, %1174
  %1195 = fmul fast float %1193, %1174
  %1196 = fsub fast float %1179, %1194
  %1197 = fadd fast float %1195, %1179
  %1198 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1199 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1200 = fsub fast float %1168, %1198
  %1201 = fsub fast float %1199, %1198
  %1202 = bitcast float %1201 to i32
  %1203 = sub nsw i32 2129859010, %1202
  %1204 = bitcast i32 %1203 to float
  %1205 = fmul fast float %1204, %1200
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  br label %1207

; <label>:1207                                    ; preds = %1161, %1155
  %1208 = phi float [ %1206, %1161 ], [ %1156, %1155 ]
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 128
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1229, label %1213

; <label>:1213                                    ; preds = %1207
  %1214 = add i32 %37, 508
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = add i32 %1216, 0
  %1218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1218, %dx.types.Handle %65, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 524288
  %1224 = icmp ne i32 %1223, 0
  %1225 = fcmp fast ogt float %1220, 0x3FE0101020000000
  %1226 = select i1 %1225, float 1.000000e+00, float 0.000000e+00
  %1227 = select i1 %1224, float %1226, float %1220
  %1228 = fmul fast float %1227, %1208
  br label %1229

; <label>:1229                                    ; preds = %1213, %1207
  %1230 = phi float [ %1228, %1213 ], [ %1208, %1207 ]
  %1231 = fcmp fast ult float %1230, 0x3F70101020000000
  br i1 %1231, label %1861, label %1232

; <label>:1232                                    ; preds = %1229
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 16
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1435, label %1237

; <label>:1237                                    ; preds = %1232
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = add i32 %37, 460
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %1242, 0
  %1244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1244, %dx.types.Handle %64, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = extractvalue %dx.types.ResRet.f32 %1245, 3
  %1250 = and i32 %1239, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = lshr i32 %1239, 8
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1249, %1251
  %1256 = fadd fast float %1255, %1254
  %1257 = fmul fast float %1256, 0x3F70101000000000
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 512
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1270, label %1262

; <label>:1262                                    ; preds = %1237
  %1263 = add i32 %37, 540
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = add i32 %1265, 0
  %1267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1267, %dx.types.Handle %65, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  br label %1270

; <label>:1270                                    ; preds = %1262, %1237
  %1271 = phi float [ %1269, %1262 ], [ 1.000000e+00, %1237 ]
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = and i32 %1273, 33554432
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1382, label %1276

; <label>:1276                                    ; preds = %1270
  %1277 = add i32 %37, 240
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 65535
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = lshr i32 %1279, 16
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = add i32 %37, 244
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 65535
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = lshr i32 %1290, 24
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1292, 0x3F70101020000000
  %1294 = and i32 %1290, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = lshr i32 %1290, 8
  %1298 = and i32 %1297, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = lshr i32 %1290, 16
  %1302 = and i32 %1301, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = add i32 %37, 236
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = lshr i32 %1307, 24
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F70101020000000
  %1311 = and i32 %1307, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = lshr i32 %1307, 8
  %1315 = and i32 %1314, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = lshr i32 %1307, 16
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = bitcast float %1246 to i32
  %1323 = ashr i32 %1322, 1
  %1324 = sub nsw i32 1597463174, %1323
  %1325 = bitcast i32 %1324 to float
  %1326 = fmul fast float %1246, 5.000000e-01
  %1327 = fmul fast float %1325, %1325
  %1328 = fmul fast float %1327, %1326
  %1329 = fsub fast float 1.500000e+00, %1328
  %1330 = fmul fast float %1325, %1246
  %1331 = fmul fast float %1330, %1329
  %1332 = bitcast float %1247 to i32
  %1333 = ashr i32 %1332, 1
  %1334 = sub nsw i32 1597463174, %1333
  %1335 = bitcast i32 %1334 to float
  %1336 = fmul fast float %1247, 5.000000e-01
  %1337 = fmul fast float %1335, %1335
  %1338 = fmul fast float %1337, %1336
  %1339 = fsub fast float 1.500000e+00, %1338
  %1340 = fmul fast float %1335, %1247
  %1341 = fmul fast float %1340, %1339
  %1342 = bitcast float %1248 to i32
  %1343 = ashr i32 %1342, 1
  %1344 = sub nsw i32 1597463174, %1343
  %1345 = bitcast i32 %1344 to float
  %1346 = fmul fast float %1248, 5.000000e-01
  %1347 = fmul fast float %1345, %1345
  %1348 = fmul fast float %1347, %1346
  %1349 = fsub fast float 1.500000e+00, %1348
  %1350 = fmul fast float %1345, %1248
  %1351 = fmul fast float %1350, %1349
  %1352 = fsub fast float %1331, %1313
  %1353 = fsub fast float %1341, %1317
  %1354 = fsub fast float %1351, %1321
  %1355 = fmul fast float %1352, %1281
  %1356 = fmul fast float %1353, %1283
  %1357 = fmul fast float %1354, %1288
  %1358 = fadd fast float %1355, %1296
  %1359 = fadd fast float %1356, %1300
  %1360 = fadd fast float %1357, %1304
  %1361 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1362 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1363 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1364 = fmul fast float %1361, %1361
  %1365 = fmul fast float %1362, %1362
  %1366 = fmul fast float %1363, %1363
  %1367 = fsub fast float %1364, %1246
  %1368 = fsub fast float %1365, %1247
  %1369 = fsub fast float %1366, %1248
  %1370 = fmul fast float %1367, %1271
  %1371 = fmul fast float %1368, %1271
  %1372 = fmul fast float %1369, %1271
  %1373 = fadd fast float %1370, %1246
  %1374 = fadd fast float %1371, %1247
  %1375 = fadd fast float %1372, %1248
  %1376 = fadd fast float %1293, %1257
  %1377 = fsub fast float %1376, %1310
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = fsub fast float %1378, %1257
  %1380 = fmul fast float %1379, %1271
  %1381 = fadd fast float %1380, %1257
  br label %1435

; <label>:1382                                    ; preds = %1270
  %1383 = and i32 %1273, 134217728
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1419, label %1385

; <label>:1385                                    ; preds = %1382
  %1386 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %1387 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1388 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1389 = fadd fast float %1386, -5.000000e-01
  %1390 = fadd fast float %1387, -5.000000e-01
  %1391 = fadd fast float %1388, -5.000000e-01
  %1392 = fmul fast float %1389, %1271
  %1393 = fmul fast float %1390, %1271
  %1394 = fmul fast float %1391, %1271
  %1395 = fadd fast float %1392, 5.000000e-01
  %1396 = fadd fast float %1393, 5.000000e-01
  %1397 = fadd fast float %1394, 5.000000e-01
  %1398 = call float @dx.op.unary.f32(i32 24, float %1246)  ; Sqrt(value)
  %1399 = call float @dx.op.unary.f32(i32 24, float %1247)  ; Sqrt(value)
  %1400 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1401 = fmul fast float %1395, 2.000000e+00
  %1402 = fsub fast float 1.000000e+00, %1401
  %1403 = fmul fast float %1402, %1398
  %1404 = fadd fast float %1403, %1401
  %1405 = fmul fast float %1404, %1398
  %1406 = fmul fast float %1396, 2.000000e+00
  %1407 = fsub fast float 1.000000e+00, %1406
  %1408 = fmul fast float %1407, %1399
  %1409 = fadd fast float %1408, %1406
  %1410 = fmul fast float %1409, %1399
  %1411 = fmul fast float %1397, 2.000000e+00
  %1412 = fsub fast float 1.000000e+00, %1411
  %1413 = fmul fast float %1412, %1400
  %1414 = fadd fast float %1413, %1411
  %1415 = fmul fast float %1414, %1400
  %1416 = fmul fast float %1405, %1405
  %1417 = fmul fast float %1410, %1410
  %1418 = fmul fast float %1415, %1415
  br label %1435

; <label>:1419                                    ; preds = %1382
  %1420 = fmul fast float %227, %227
  %1421 = fmul fast float %231, %231
  %1422 = fmul fast float %235, %235
  %1423 = fadd fast float %1420, -1.000000e+00
  %1424 = fadd fast float %1421, -1.000000e+00
  %1425 = fadd fast float %1422, -1.000000e+00
  %1426 = fmul fast float %1271, %1423
  %1427 = fmul fast float %1271, %1424
  %1428 = fmul fast float %1271, %1425
  %1429 = fadd fast float %1426, 1.000000e+00
  %1430 = fadd fast float %1427, 1.000000e+00
  %1431 = fadd fast float %1428, 1.000000e+00
  %1432 = fmul fast float %1429, %1246
  %1433 = fmul fast float %1430, %1247
  %1434 = fmul fast float %1431, %1248
  br label %1435

; <label>:1435                                    ; preds = %1419, %1385, %1276, %1232
  %1436 = phi float [ %1381, %1276 ], [ %1257, %1385 ], [ %1257, %1419 ], [ 0x3FA23C0BE0000000, %1232 ]
  %1437 = phi float [ %1373, %1276 ], [ %1416, %1385 ], [ %1432, %1419 ], [ 1.000000e+00, %1232 ]
  %1438 = phi float [ %1374, %1276 ], [ %1417, %1385 ], [ %1433, %1419 ], [ 1.000000e+00, %1232 ]
  %1439 = phi float [ %1375, %1276 ], [ %1418, %1385 ], [ %1434, %1419 ], [ 1.000000e+00, %1232 ]
  %1440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.i32 %1440, 1
  %1442 = and i32 %1441, 1
  %1443 = icmp ne i32 %1442, 0
  %1444 = add i32 %37, 356
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 32
  %1448 = icmp ne i32 %1447, 0
  %1449 = and i1 %1443, %1448
  %1450 = select i1 %1449, float 1.000000e+00, float %1437
  %1451 = select i1 %1449, float 0x3FD3333340000000, float %1438
  %1452 = select i1 %1449, float 0x3FD3333340000000, float %1439
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 32
  %1456 = icmp eq i32 %1455, 0
  br i1 %1456, label %1529, label %1457

; <label>:1457                                    ; preds = %1435
  %1458 = add i32 %37, 108
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = add i32 %37, 476
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = add i32 %1463, 0
  %1465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1465, %dx.types.Handle %64, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1470 = extractvalue %dx.types.ResRet.f32 %1466, 3
  %1471 = and i32 %1460, 255
  %1472 = uitofp i32 %1471 to float
  %1473 = lshr i32 %1460, 8
  %1474 = and i32 %1473, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = lshr i32 %1460, 16
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = fmul fast float %1478, 0x3F70101000000000
  %1480 = fmul fast float %1467, %1472
  %1481 = fadd fast float %1480, %1475
  %1482 = fmul fast float %1481, 0x3F70101000000000
  %1483 = fadd fast float %1468, -5.000000e-01
  %1484 = fadd fast float %1470, -5.000000e-01
  %1485 = fmul fast float %1483, %1479
  %1486 = fmul fast float %1484, %1479
  %1487 = fadd fast float %1485, 5.000000e-01
  %1488 = fadd fast float %1486, 5.000000e-01
  %1489 = fmul fast float %1487, 2.000000e+00
  %1490 = fadd fast float %1489, -1.000000e+00
  %1491 = fmul fast float %1488, 2.000000e+00
  %1492 = fadd fast float %1491, -1.000000e+00
  %1493 = fadd fast float %1490, %1492
  %1494 = fmul fast float %1493, 5.000000e-01
  %1495 = fsub fast float %1490, %1492
  %1496 = fmul fast float %1495, 5.000000e-01
  %1497 = call float @dx.op.unary.f32(i32 6, float %1494)  ; FAbs(value)
  %1498 = fsub fast float 1.000000e+00, %1497
  %1499 = call float @dx.op.unary.f32(i32 6, float %1496)  ; FAbs(value)
  %1500 = fsub fast float %1498, %1499
  %1501 = call float @dx.op.dot3.f32(i32 55, float %1494, float %1496, float %1500, float %1494, float %1496, float %1500)  ; Dot3(ax,ay,az,bx,by,bz)
  %1502 = call float @dx.op.unary.f32(i32 25, float %1501)  ; Rsqrt(value)
  %1503 = fmul fast float %1494, %1502
  %1504 = fmul fast float %1496, %1502
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 67108864
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1525, label %1509

; <label>:1509                                    ; preds = %1457
  %1510 = add i32 %37, 296
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 65535
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 65535
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = lshr i32 %1512, 16
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = fsub fast float %1482, %1520
  %1522 = fmul fast float %1521, %1514
  %1523 = fadd fast float %1522, %1518
  %1524 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  br label %1525

; <label>:1525                                    ; preds = %1509, %1457
  %1526 = phi float [ %1524, %1509 ], [ %1482, %1457 ]
  %1527 = call float @dx.op.dot2.f32(i32 54, float %1503, float %1504, float %946, float %947)  ; Dot2(ax,ay,bx,by)
  %1528 = call float @dx.op.dot2.f32(i32 54, float %1503, float %1504, float %948, float %949)  ; Dot2(ax,ay,bx,by)
  br label %1529

; <label>:1529                                    ; preds = %1525, %1435
  %1530 = phi float [ %1526, %1525 ], [ 0x3FD6666660000000, %1435 ]
  %1531 = phi float [ %1527, %1525 ], [ 0.000000e+00, %1435 ]
  %1532 = phi float [ %1528, %1525 ], [ 0.000000e+00, %1435 ]
  %1533 = phi float [ %1469, %1525 ], [ 1.000000e+00, %1435 ]
  %1534 = add i32 %37, 176
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = lshr i32 %1536, 22
  %1538 = shl nuw nsw i32 %1537, 5
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 64
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1577, label %1544

; <label>:1544                                    ; preds = %1529
  %1545 = add i32 %37, 492
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = add i32 %1547, 0
  %1549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1548, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 131072
  %1553 = icmp eq i32 %1552, 0
  %1554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1549, %dx.types.Handle %64, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 0
  %1556 = extractvalue %dx.types.ResRet.f32 %1554, 1
  %1557 = extractvalue %dx.types.ResRet.f32 %1554, 2
  %1558 = fmul fast float %1555, %215
  %1559 = fmul fast float %1556, %218
  %1560 = fmul fast float %1557, %221
  br i1 %1553, label %1567, label %1561

; <label>:1561                                    ; preds = %1544
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = fmul fast float %1563, %1558
  %1565 = fmul fast float %1563, %1559
  %1566 = fmul fast float %1563, %1560
  br label %1567

; <label>:1567                                    ; preds = %1561, %1544
  %1568 = phi float [ %1564, %1561 ], [ %1558, %1544 ]
  %1569 = phi float [ %1565, %1561 ], [ %1559, %1544 ]
  %1570 = phi float [ %1566, %1561 ], [ %1560, %1544 ]
  %1571 = fmul fast float %1568, %1539
  %1572 = select i1 %167, float %1571, float %1568
  %1573 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1569, float %1570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1574 = select i1 %167, float 0.000000e+00, float %1568
  %1575 = select i1 %167, float %1573, float %1569
  %1576 = select i1 %167, float 0.000000e+00, float %1570
  br label %1577

; <label>:1577                                    ; preds = %1567, %1529
  %1578 = phi float [ %1574, %1567 ], [ 0.000000e+00, %1529 ]
  %1579 = phi float [ %1575, %1567 ], [ 0.000000e+00, %1529 ]
  %1580 = phi float [ %1576, %1567 ], [ 0.000000e+00, %1529 ]
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 10240
  %1584 = icmp eq i32 %1583, 0
  br i1 %1584, label %1629, label %1585

; <label>:1585                                    ; preds = %1577
  %1586 = add i32 %37, 556
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = add i32 %1588, 0
  %1590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1590, %dx.types.Handle %65, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1591, 3
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 1048576
  %1597 = icmp ne i32 %1596, 0
  %1598 = and i32 %1595, 8192
  %1599 = icmp eq i32 %1598, 0
  br i1 %1599, label %1615, label %1600

; <label>:1600                                    ; preds = %1585
  %1601 = extractvalue %dx.types.ResRet.f32 %1591, 2
  %1602 = select i1 %1597, float %1601, float %1592
  %1603 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1604 = select i1 %1597, float %1603, float %1592
  %1605 = add i32 %37, 112
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = lshr i32 %1607, 16
  %1609 = and i32 %1608, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = fmul fast float %1610, 0x3F80101020000000
  %1612 = fmul fast float %1611, %1604
  %1613 = fmul fast float %1611, %1592
  %1614 = fmul fast float %1611, %1602
  br label %1615

; <label>:1615                                    ; preds = %1600, %1585
  %1616 = phi float [ %1612, %1600 ], [ 0.000000e+00, %1585 ]
  %1617 = phi float [ %1613, %1600 ], [ 0.000000e+00, %1585 ]
  %1618 = phi float [ %1614, %1600 ], [ 0.000000e+00, %1585 ]
  %1619 = and i32 %1595, 2048
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1629, label %1621

; <label>:1621                                    ; preds = %1615
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = shl i32 %1623, 4
  %1625 = and i32 %1624, 32752
  %1626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1625)  ; LegacyF16ToF32(value)
  %1627 = fmul fast float %1626, %1593
  %1628 = call float @dx.op.binary.f32(i32 35, float %1627, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1629

; <label>:1629                                    ; preds = %1621, %1615, %1577
  %1630 = phi float [ %1616, %1621 ], [ %1616, %1615 ], [ 0.000000e+00, %1577 ]
  %1631 = phi float [ %1617, %1621 ], [ %1617, %1615 ], [ 0.000000e+00, %1577 ]
  %1632 = phi float [ %1618, %1621 ], [ %1618, %1615 ], [ 0.000000e+00, %1577 ]
  %1633 = phi float [ %1628, %1621 ], [ 0x3F70101020000000, %1615 ], [ 0x3F70101020000000, %1577 ]
  %1634 = add i32 %37, 112
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = and i32 %1636, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = lshr i32 %1636, 8
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1451, float %1452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1643 = fmul fast float %1641, %1642
  %1644 = fadd fast float %1643, %1638
  %1645 = fmul fast float %1644, 0x3F70101020000000
  %1646 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  br i1 %934, label %1647, label %1655

; <label>:1647                                    ; preds = %1629
  %1648 = fsub fast float 1.000000e+00, %1230
  %1649 = fmul fast float %1648, %918
  %1650 = fmul fast float %1648, %919
  %1651 = fmul fast float %1648, %920
  %1652 = fmul fast float %1648, %924
  %1653 = fmul fast float %1648, %925
  %1654 = fmul fast float %1648, %926
  br label %1655

; <label>:1655                                    ; preds = %1647, %1629
  %1656 = phi float [ %1649, %1647 ], [ %918, %1629 ]
  %1657 = phi float [ %1650, %1647 ], [ %919, %1629 ]
  %1658 = phi float [ %1651, %1647 ], [ %920, %1629 ]
  %1659 = phi float [ %1652, %1647 ], [ %924, %1629 ]
  %1660 = phi float [ %1653, %1647 ], [ %925, %1629 ]
  %1661 = phi float [ %1654, %1647 ], [ %926, %1629 ]
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 3
  %1665 = icmp eq i32 %1664, 3
  br i1 %1665, label %1744, label %1666

; <label>:1666                                    ; preds = %1655
  %1667 = and i32 %1663, 16
  %1668 = icmp ne i32 %1667, 0
  %1669 = select i1 %1668, float %1230, float 0.000000e+00
  %1670 = icmp eq i32 %1664, 0
  br i1 %1670, label %1671, label %1699

; <label>:1671                                    ; preds = %1666
  %1672 = and i32 %1663, 64
  %1673 = icmp ne i32 %1672, 0
  %1674 = select i1 %1673, float %1230, float 0.000000e+00
  %1675 = fsub fast float %1450, %1656
  %1676 = fsub fast float %1451, %1657
  %1677 = fsub fast float %1452, %1658
  %1678 = fmul fast float %1669, %1675
  %1679 = fmul fast float %1669, %1676
  %1680 = fmul fast float %1669, %1677
  %1681 = fadd fast float %1678, %1656
  %1682 = fadd fast float %1679, %1657
  %1683 = fadd fast float %1680, %1658
  %1684 = fsub fast float %1436, %927
  %1685 = fmul fast float %1669, %1684
  %1686 = fadd fast float %1685, %927
  %1687 = fsub fast float %1578, %1659
  %1688 = fsub fast float %1579, %1660
  %1689 = fsub fast float %1580, %1661
  %1690 = fmul fast float %1674, %1687
  %1691 = fmul fast float %1674, %1688
  %1692 = fmul fast float %1674, %1689
  %1693 = fadd fast float %1690, %1659
  %1694 = fadd fast float %1691, %1660
  %1695 = fadd fast float %1692, %1661
  %1696 = fsub fast float %1646, %932
  %1697 = fmul fast float %1669, %1696
  %1698 = fadd fast float %1697, %932
  br label %1744

; <label>:1699                                    ; preds = %1666
  %1700 = icmp eq i32 %1664, 1
  br i1 %1700, label %1701, label %1714

; <label>:1701                                    ; preds = %1699
  %1702 = fadd fast float %1450, -1.000000e+00
  %1703 = fadd fast float %1451, -1.000000e+00
  %1704 = fadd fast float %1452, -1.000000e+00
  %1705 = fmul fast float %1669, %1702
  %1706 = fmul fast float %1669, %1703
  %1707 = fmul fast float %1669, %1704
  %1708 = fadd fast float %1705, 1.000000e+00
  %1709 = fadd fast float %1706, 1.000000e+00
  %1710 = fadd fast float %1707, 1.000000e+00
  %1711 = fmul fast float %1708, %1656
  %1712 = fmul fast float %1709, %1657
  %1713 = fmul fast float %1710, %1658
  br label %1744

; <label>:1714                                    ; preds = %1699
  %1715 = icmp eq i32 %1664, 2
  br i1 %1715, label %1716, label %1744

; <label>:1716                                    ; preds = %1714
  %1717 = call float @dx.op.unary.f32(i32 24, float %1450)  ; Sqrt(value)
  %1718 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1719 = call float @dx.op.unary.f32(i32 24, float %1452)  ; Sqrt(value)
  %1720 = fadd fast float %1717, -5.000000e-01
  %1721 = fadd fast float %1718, -5.000000e-01
  %1722 = fadd fast float %1719, -5.000000e-01
  %1723 = fmul fast float %1720, %1669
  %1724 = fmul fast float %1721, %1669
  %1725 = fmul fast float %1722, %1669
  %1726 = fadd fast float %1723, 5.000000e-01
  %1727 = fadd fast float %1724, 5.000000e-01
  %1728 = fadd fast float %1725, 5.000000e-01
  %1729 = fmul fast float %1726, 2.000000e+00
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fmul fast float %1730, %1656
  %1732 = fadd fast float %1731, %1729
  %1733 = fmul fast float %1732, %1656
  %1734 = fmul fast float %1727, 2.000000e+00
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = fmul fast float %1735, %1657
  %1737 = fadd fast float %1736, %1734
  %1738 = fmul fast float %1737, %1657
  %1739 = fmul fast float %1728, 2.000000e+00
  %1740 = fsub fast float 1.000000e+00, %1739
  %1741 = fmul fast float %1740, %1658
  %1742 = fadd fast float %1741, %1739
  %1743 = fmul fast float %1742, %1658
  br label %1744

; <label>:1744                                    ; preds = %1716, %1714, %1701, %1671, %1655
  %1745 = phi float [ %1656, %1655 ], [ %1733, %1716 ], [ %1656, %1714 ], [ %1711, %1701 ], [ %1681, %1671 ]
  %1746 = phi float [ %1657, %1655 ], [ %1738, %1716 ], [ %1657, %1714 ], [ %1712, %1701 ], [ %1682, %1671 ]
  %1747 = phi float [ %1658, %1655 ], [ %1743, %1716 ], [ %1658, %1714 ], [ %1713, %1701 ], [ %1683, %1671 ]
  %1748 = phi float [ %1659, %1655 ], [ %1659, %1716 ], [ %1659, %1714 ], [ %1659, %1701 ], [ %1693, %1671 ]
  %1749 = phi float [ %1660, %1655 ], [ %1660, %1716 ], [ %1660, %1714 ], [ %1660, %1701 ], [ %1694, %1671 ]
  %1750 = phi float [ %1661, %1655 ], [ %1661, %1716 ], [ %1661, %1714 ], [ %1661, %1701 ], [ %1695, %1671 ]
  %1751 = phi float [ %927, %1655 ], [ %927, %1716 ], [ %927, %1714 ], [ %927, %1701 ], [ %1686, %1671 ]
  %1752 = phi float [ %932, %1655 ], [ %932, %1716 ], [ %932, %1714 ], [ %932, %1701 ], [ %1698, %1671 ]
  %1753 = and i32 %1663, 12
  %1754 = icmp eq i32 %1753, 12
  br i1 %1754, label %1861, label %1755

; <label>:1755                                    ; preds = %1744
  %1756 = and i32 %1663, 2097184
  %1757 = icmp eq i32 %1756, 2097184
  %1758 = select i1 %1757, float %1230, float 0.000000e+00
  %1759 = and i32 %1663, 4194336
  %1760 = icmp eq i32 %1759, 4194336
  %1761 = select i1 %1760, float %1230, float 0.000000e+00
  %1762 = and i32 %1663, 8388640
  %1763 = icmp eq i32 %1762, 8388640
  %1764 = select i1 %1763, float %1230, float 0.000000e+00
  %1765 = and i32 %1663, 2048
  %1766 = icmp ne i32 %1765, 0
  %1767 = select i1 %1766, float %1230, float 0.000000e+00
  %1768 = and i32 %1663, 8192
  %1769 = icmp ne i32 %1768, 0
  %1770 = select i1 %1769, float %1230, float 0.000000e+00
  %1771 = icmp eq i32 %1753, 0
  br i1 %1771, label %1772, label %1797

; <label>:1772                                    ; preds = %1755
  %1773 = fsub fast float %1531, %916
  %1774 = fsub fast float %1532, %917
  %1775 = fmul fast float %1758, %1773
  %1776 = fmul fast float %1758, %1774
  %1777 = fadd fast float %1775, %916
  %1778 = fadd fast float %1776, %917
  %1779 = fsub fast float %1533, %930
  %1780 = fmul fast float %1761, %1779
  %1781 = fadd fast float %1780, %930
  %1782 = fsub fast float %1530, %929
  %1783 = fmul fast float %1764, %1782
  %1784 = fadd fast float %1783, %929
  %1785 = fsub fast float %1633, %931
  %1786 = fmul fast float %1767, %1785
  %1787 = fadd fast float %1786, %931
  %1788 = fsub fast float %1630, %921
  %1789 = fsub fast float %1631, %922
  %1790 = fsub fast float %1632, %923
  %1791 = fmul fast float %1770, %1788
  %1792 = fmul fast float %1770, %1789
  %1793 = fmul fast float %1770, %1790
  %1794 = fadd fast float %1791, %921
  %1795 = fadd fast float %1792, %922
  %1796 = fadd fast float %1793, %923
  br label %1861

; <label>:1797                                    ; preds = %1755
  %1798 = icmp eq i32 %1753, 4
  br i1 %1798, label %1799, label %1839

; <label>:1799                                    ; preds = %1797
  %1800 = fmul fast float %1758, %1531
  %1801 = fmul fast float %1758, %1532
  %1802 = fadd fast float %1800, %916
  %1803 = fadd fast float %1801, %917
  %1804 = call float @dx.op.binary.f32(i32 36, float %930, float %1533)  ; FMin(a,b)
  %1805 = fsub fast float %1804, %930
  %1806 = fmul fast float %1805, %1761
  %1807 = fadd fast float %1806, %930
  %1808 = fadd fast float %1530, %929
  %1809 = fmul fast float %1808, 0x3FF337FAE0000000
  %1810 = fmul fast float %929, %929
  %1811 = fmul fast float %1530, %1530
  %1812 = fadd fast float %1811, %1810
  %1813 = fmul fast float %1812, 0x3FE5152B00000000
  %1814 = fmul fast float %929, 0xBFCC1F85E0000000
  %1815 = fmul fast float %1814, %1530
  %1816 = fadd fast float %1815, 0xBFE1363700000000
  %1817 = fadd fast float %1816, %1809
  %1818 = fsub fast float %1817, %1813
  %1819 = fmul fast float %1808, 0x3FBA6F0D00000000
  %1820 = fmul fast float %1812, 0x3FD0432880000000
  %1821 = fmul fast float %929, 0xBFEF110800000000
  %1822 = fmul fast float %1821, %1530
  %1823 = fadd fast float %1822, 1.000000e+00
  %1824 = fsub fast float %1823, %1819
  %1825 = fadd fast float %1824, %1820
  %1826 = fdiv fast float %1818, %1825
  %1827 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1828 = fsub fast float %1827, %929
  %1829 = fmul fast float %1828, %1764
  %1830 = fadd fast float %1829, %929
  %1831 = fmul fast float %1767, %1633
  %1832 = fadd fast float %1831, %931
  %1833 = fmul fast float %1770, %1630
  %1834 = fmul fast float %1770, %1631
  %1835 = fmul fast float %1770, %1632
  %1836 = fadd fast float %1833, %921
  %1837 = fadd fast float %1834, %922
  %1838 = fadd fast float %1835, %923
  br label %1861

; <label>:1839                                    ; preds = %1797
  %1840 = icmp eq i32 %1753, 8
  br i1 %1840, label %1841, label %1861

; <label>:1841                                    ; preds = %1839
  %1842 = fmul fast float %1758, %1531
  %1843 = fmul fast float %1758, %1532
  %1844 = fadd fast float %1842, %916
  %1845 = fadd fast float %1843, %917
  %1846 = call float @dx.op.binary.f32(i32 36, float %930, float %1533)  ; FMin(a,b)
  %1847 = fsub fast float %1846, %930
  %1848 = fmul fast float %1847, %1761
  %1849 = fadd fast float %1848, %930
  %1850 = fsub fast float %1530, %929
  %1851 = fmul fast float %1764, %1850
  %1852 = fadd fast float %1851, %929
  %1853 = fmul fast float %1767, %1633
  %1854 = fadd fast float %1853, %931
  %1855 = fmul fast float %1770, %1630
  %1856 = fmul fast float %1770, %1631
  %1857 = fmul fast float %1770, %1632
  %1858 = fadd fast float %1855, %921
  %1859 = fadd fast float %1856, %922
  %1860 = fadd fast float %1857, %923
  br label %1861

; <label>:1861                                    ; preds = %1841, %1839, %1799, %1772, %1744, %1229, %933, %915
  %1862 = phi float [ %916, %1744 ], [ %916, %1229 ], [ %916, %915 ], [ %1844, %1841 ], [ %916, %1839 ], [ %1802, %1799 ], [ %1777, %1772 ], [ %916, %933 ]
  %1863 = phi float [ %917, %1744 ], [ %917, %1229 ], [ %917, %915 ], [ %1845, %1841 ], [ %917, %1839 ], [ %1803, %1799 ], [ %1778, %1772 ], [ %917, %933 ]
  %1864 = phi float [ %1745, %1744 ], [ %918, %1229 ], [ %918, %915 ], [ %1745, %1841 ], [ %1745, %1839 ], [ %1745, %1799 ], [ %1745, %1772 ], [ %918, %933 ]
  %1865 = phi float [ %1746, %1744 ], [ %919, %1229 ], [ %919, %915 ], [ %1746, %1841 ], [ %1746, %1839 ], [ %1746, %1799 ], [ %1746, %1772 ], [ %919, %933 ]
  %1866 = phi float [ %1747, %1744 ], [ %920, %1229 ], [ %920, %915 ], [ %1747, %1841 ], [ %1747, %1839 ], [ %1747, %1799 ], [ %1747, %1772 ], [ %920, %933 ]
  %1867 = phi float [ %921, %1744 ], [ %921, %1229 ], [ %921, %915 ], [ %1858, %1841 ], [ %921, %1839 ], [ %1836, %1799 ], [ %1794, %1772 ], [ %921, %933 ]
  %1868 = phi float [ %922, %1744 ], [ %922, %1229 ], [ %922, %915 ], [ %1859, %1841 ], [ %922, %1839 ], [ %1837, %1799 ], [ %1795, %1772 ], [ %922, %933 ]
  %1869 = phi float [ %923, %1744 ], [ %923, %1229 ], [ %923, %915 ], [ %1860, %1841 ], [ %923, %1839 ], [ %1838, %1799 ], [ %1796, %1772 ], [ %923, %933 ]
  %1870 = phi float [ %1748, %1744 ], [ %924, %1229 ], [ %924, %915 ], [ %1748, %1841 ], [ %1748, %1839 ], [ %1748, %1799 ], [ %1748, %1772 ], [ %924, %933 ]
  %1871 = phi float [ %1749, %1744 ], [ %925, %1229 ], [ %925, %915 ], [ %1749, %1841 ], [ %1749, %1839 ], [ %1749, %1799 ], [ %1749, %1772 ], [ %925, %933 ]
  %1872 = phi float [ %1750, %1744 ], [ %926, %1229 ], [ %926, %915 ], [ %1750, %1841 ], [ %1750, %1839 ], [ %1750, %1799 ], [ %1750, %1772 ], [ %926, %933 ]
  %1873 = phi float [ %1751, %1744 ], [ %927, %1229 ], [ %927, %915 ], [ %1751, %1841 ], [ %1751, %1839 ], [ %1751, %1799 ], [ %1751, %1772 ], [ %927, %933 ]
  %1874 = phi float [ %929, %1744 ], [ %929, %1229 ], [ %929, %915 ], [ %1852, %1841 ], [ %929, %1839 ], [ %1830, %1799 ], [ %1784, %1772 ], [ %929, %933 ]
  %1875 = phi float [ %930, %1744 ], [ %930, %1229 ], [ %930, %915 ], [ %1849, %1841 ], [ %930, %1839 ], [ %1807, %1799 ], [ %1781, %1772 ], [ %930, %933 ]
  %1876 = phi float [ %931, %1744 ], [ %931, %1229 ], [ %931, %915 ], [ %1854, %1841 ], [ %931, %1839 ], [ %1832, %1799 ], [ %1787, %1772 ], [ %931, %933 ]
  %1877 = phi float [ %1752, %1744 ], [ %932, %1229 ], [ %932, %915 ], [ %1752, %1841 ], [ %1752, %1839 ], [ %1752, %1799 ], [ %1752, %1772 ], [ %932, %933 ]
  br i1 %342, label %2806, label %1878

; <label>:1878                                    ; preds = %1861
  %1879 = icmp ult i32 %395, 3
  %1880 = add i32 %37, 56
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = add i32 %37, 60
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = or i32 %1885, %1882
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %2806, label %1888

; <label>:1888                                    ; preds = %1878
  %1889 = and i32 %1882, 262144
  %1890 = icmp ne i32 %1889, 0
  %1891 = select i1 %1890, float %43, float 1.000000e+00
  %1892 = select i1 %1890, float %44, float 0.000000e+00
  %1893 = select i1 %1890, float %45, float 0.000000e+00
  %1894 = select i1 %1890, float %46, float 1.000000e+00
  %1895 = select i1 %1890, float %47, float %56
  %1896 = select i1 %1890, float %48, float %57
  %1897 = add i32 %37, 316
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = lshr i32 %1899, 16
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = fmul fast float %1901, 0x3F50624DE0000000
  %1903 = add i32 %37, 120
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = lshr i32 %1905, 16
  %1907 = and i32 %1906, 255
  %1908 = lshr i32 %1905, 24
  %1909 = add i32 %37, 324
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = and i32 %1911, 65535
  %1913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1912)  ; LegacyF16ToF32(value)
  %1914 = lshr i32 %1911, 16
  %1915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1914)  ; LegacyF16ToF32(value)
  %1916 = add i32 %37, 64
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = lshr i32 %1918, 22
  %1920 = shl nuw nsw i32 %1919, 5
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = shl i32 %1918, 4
  %1923 = and i32 %1922, 32752
  %1924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1923)  ; LegacyF16ToF32(value)
  %1925 = lshr i32 %1918, 7
  %1926 = and i32 %1925, 32752
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 3
  %1930 = fmul fast float %1929, 1.000000e+03
  %1931 = fmul fast float %292, %1930
  %1932 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1933 = fadd fast float %1932, %282
  %1934 = fmul fast float %293, %1930
  %1935 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1936 = fadd fast float %1935, %284
  %1937 = fmul fast float %1902, %1930
  %1938 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1939 = fmul fast float %1938, 0x401921FB60000000
  %1940 = fadd fast float %1939, %1921
  %1941 = call float @dx.op.unary.f32(i32 13, float %1940)  ; Sin(value)
  %1942 = call float @dx.op.unary.f32(i32 12, float %1940)  ; Cos(value)
  %1943 = fsub fast float -0.000000e+00, %1941
  %1944 = fadd fast float %1895, -5.000000e-01
  %1945 = fadd fast float %1896, -5.000000e-01
  %1946 = fmul fast float %1913, %1944
  %1947 = fmul fast float %1915, %1945
  %1948 = fadd fast float %1946, 5.000000e-01
  %1949 = fadd fast float %1947, 5.000000e-01
  %1950 = fmul fast float %1924, %1948
  %1951 = fmul fast float %1927, %1949
  %1952 = fmul fast float %1942, %1950
  %1953 = call float @dx.op.tertiary.f32(i32 46, float %1943, float %1951, float %1952)  ; FMad(a,b,c)
  %1954 = fmul fast float %1941, %1950
  %1955 = call float @dx.op.tertiary.f32(i32 46, float %1942, float %1951, float %1954)  ; FMad(a,b,c)
  %1956 = fadd fast float %1933, %1953
  %1957 = fadd fast float %1936, %1955
  %1958 = icmp ugt i32 %1907, 1
  %1959 = icmp ugt i32 %1905, 33554431
  %1960 = or i1 %1959, %1958
  br i1 %1960, label %1961, label %1986

; <label>:1961                                    ; preds = %1888
  %1962 = add i32 %37, 260
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = lshr i32 %1964, 16
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = fmul fast float %1929, %1966
  %1968 = call float @dx.op.unary.f32(i32 22, float %1967)  ; Frc(value)
  %1969 = mul nuw nsw i32 %1907, %1908
  %1970 = uitofp i32 %1969 to float
  %1971 = fmul fast float %1968, %1970
  %1972 = call float @dx.op.unary.f32(i32 27, float %1971)  ; Round_ni(value)
  %1973 = fptoui float %1972 to i32
  %1974 = urem i32 %1973, %1907
  %1975 = udiv i32 %1973, %1908
  %1976 = call float @dx.op.unary.f32(i32 22, float %1956)  ; Frc(value)
  %1977 = call float @dx.op.unary.f32(i32 22, float %1957)  ; Frc(value)
  %1978 = uitofp i32 %1974 to float
  %1979 = uitofp i32 %1975 to float
  %1980 = fadd fast float %1976, %1978
  %1981 = fadd fast float %1977, %1979
  %1982 = uitofp i32 %1907 to float
  %1983 = uitofp i32 %1908 to float
  %1984 = fdiv fast float %1980, %1982
  %1985 = fdiv fast float %1981, %1983
  br label %1986

; <label>:1986                                    ; preds = %1961, %1888
  %1987 = phi float [ %1984, %1961 ], [ %1956, %1888 ]
  %1988 = phi float [ %1985, %1961 ], [ %1957, %1888 ]
  %1989 = and i32 %1882, 16777216
  %1990 = icmp eq i32 %1989, 0
  br i1 %1990, label %2100, label %1991

; <label>:1991                                    ; preds = %1986
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.CBufRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.CBufRet.f32 %1992, 2
  %1996 = fadd fast float %1993, %124
  %1997 = fadd fast float %1994, %125
  %1998 = fadd fast float %1995, %126
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = icmp eq i32 %38, 65535
  br i1 %2002, label %2097, label %2003

; <label>:2003                                    ; preds = %1991
  %2004 = lshr i32 %38, 1
  %2005 = shl i32 %2004, 2
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %38, 1
  %2009 = icmp ne i32 %2008, 0
  %2010 = lshr i32 %2007, 16
  %2011 = and i32 %2007, 65535
  %2012 = select i1 %2009, i32 %2010, i32 %2011
  %2013 = icmp eq i32 %2012, 65535
  br i1 %2013, label %2093, label %2014

; <label>:2014                                    ; preds = %2003
  %2015 = mul nuw nsw i32 %2012, 40
  %2016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = extractvalue %dx.types.ResRet.f32 %2016, 1
  %2019 = extractvalue %dx.types.ResRet.f32 %2016, 2
  %2020 = add nuw nsw i32 %2015, 12
  %2021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = extractvalue %dx.types.ResRet.f32 %2021, 1
  %2024 = extractvalue %dx.types.ResRet.f32 %2021, 2
  %2025 = add nuw nsw i32 %2015, 24
  %2026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = extractvalue %dx.types.ResRet.f32 %2026, 1
  %2029 = extractvalue %dx.types.ResRet.f32 %2026, 2
  %2030 = add nuw nsw i32 %2015, 36
  %2031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = fsub fast float %1996, %2017
  %2034 = fsub fast float %1997, %2018
  %2035 = fsub fast float %1998, %2019
  %2036 = fmul fast float %2032, %2033
  %2037 = fmul fast float %2032, %2034
  %2038 = fmul fast float %2032, %2035
  %2039 = call float @dx.op.unary.f32(i32 27, float %2036)  ; Round_ni(value)
  %2040 = call float @dx.op.unary.f32(i32 27, float %2037)  ; Round_ni(value)
  %2041 = call float @dx.op.unary.f32(i32 27, float %2038)  ; Round_ni(value)
  %2042 = fadd fast float %2039, 5.000000e-01
  %2043 = fadd fast float %2040, 5.000000e-01
  %2044 = fadd fast float %2041, 5.000000e-01
  %2045 = fmul fast float %2042, %2022
  %2046 = fmul fast float %2043, %2023
  %2047 = fmul fast float %2044, %2024
  %2048 = shl i32 %38, 2
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = add i32 %2050, 0
  %2052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2051, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2053 = call float @dx.op.unary.f32(i32 22, float %2045)  ; Frc(value)
  %2054 = call float @dx.op.unary.f32(i32 22, float %2046)  ; Frc(value)
  %2055 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2052, %dx.types.Handle %32, float %2053, float %2054, float %2055, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2057 = extractvalue %dx.types.ResRet.f32 %2056, 0
  %2058 = extractvalue %dx.types.ResRet.f32 %2056, 1
  %2059 = extractvalue %dx.types.ResRet.f32 %2056, 2
  %2060 = fmul fast float %2057, 1.023000e+03
  %2061 = fmul fast float %2058, 1.023000e+03
  %2062 = fmul fast float %2059, 1.023000e+03
  %2063 = fadd fast float %2060, 5.000000e-01
  %2064 = fadd fast float %2061, 5.000000e-01
  %2065 = fadd fast float %2062, 5.000000e-01
  %2066 = call float @dx.op.unary.f32(i32 27, float %2063)  ; Round_ni(value)
  %2067 = call float @dx.op.unary.f32(i32 27, float %2064)  ; Round_ni(value)
  %2068 = call float @dx.op.unary.f32(i32 27, float %2065)  ; Round_ni(value)
  %2069 = fsub fast float %2036, %2039
  %2070 = fsub fast float %2037, %2040
  %2071 = fsub fast float %2038, %2041
  %2072 = fmul fast float %2069, 7.500000e-01
  %2073 = fmul fast float %2070, 7.500000e-01
  %2074 = fmul fast float %2071, 7.500000e-01
  %2075 = fadd fast float %2039, 1.250000e-01
  %2076 = fadd fast float %2075, %2072
  %2077 = fadd fast float %2076, %2066
  %2078 = fadd fast float %2040, 1.250000e-01
  %2079 = fadd fast float %2078, %2073
  %2080 = fadd fast float %2079, %2067
  %2081 = fadd fast float %2041, 1.250000e-01
  %2082 = fadd fast float %2081, %2074
  %2083 = fadd fast float %2082, %2068
  %2084 = fmul fast float %2077, %2027
  %2085 = fmul fast float %2080, %2028
  %2086 = fmul fast float %2083, %2029
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = add i32 %2088, 0
  %2090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2090, %dx.types.Handle %30, float %2084, float %2085, float %2086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2092 = extractvalue %dx.types.ResRet.f32 %2091, 0
  br label %2093

; <label>:2093                                    ; preds = %2014, %2003
  %2094 = phi float [ %2092, %2014 ], [ -1.000000e+00, %2003 ]
  %2095 = fadd fast float %2094, %2001
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  br label %2097

; <label>:2097                                    ; preds = %2093, %1991
  %2098 = phi float [ %2096, %2093 ], [ %2001, %1991 ]
  %2099 = fmul fast float %2098, %391
  br label %2100

; <label>:2100                                    ; preds = %2097, %1986
  %2101 = phi float [ %2099, %2097 ], [ %391, %1986 ]
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = and i32 %2103, 256
  %2105 = icmp eq i32 %2104, 0
  br i1 %2105, label %2152, label %2106

; <label>:2106                                    ; preds = %2100
  %2107 = add i32 %37, 528
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = add i32 %2109, 0
  %2111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2112 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2111, %dx.types.Handle %65, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2113 = extractvalue %dx.types.ResRet.f32 %2112, 0
  %2114 = add i32 %37, 132
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = shl i32 %2116, 4
  %2118 = and i32 %2117, 32752
  %2119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2118)  ; LegacyF16ToF32(value)
  %2120 = lshr i32 %2116, 7
  %2121 = and i32 %2120, 32752
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = fsub fast float 1.000000e+00, %2101
  %2124 = call float @dx.op.binary.f32(i32 35, float %2123, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2125 = bitcast float %2101 to i32
  %2126 = sitofp i32 %2125 to float
  %2127 = fadd fast float %2126, 0xC1CFBF8940000000
  %2128 = fmul fast float %2122, %2127
  %2129 = fadd fast float %2128, 0x41CFBF8940000000
  %2130 = fptosi float %2129 to i32
  %2131 = bitcast i32 %2130 to float
  %2132 = bitcast float %2124 to i32
  %2133 = sitofp i32 %2132 to float
  %2134 = fadd fast float %2133, 0xC1CFBF8940000000
  %2135 = fmul fast float %2134, %2122
  %2136 = fadd fast float %2135, 0x41CFBF8940000000
  %2137 = fptosi float %2136 to i32
  %2138 = bitcast i32 %2137 to float
  %2139 = fmul fast float %2131, %2119
  %2140 = fmul fast float %2138, %2119
  %2141 = fsub fast float %2124, %2139
  %2142 = fadd fast float %2140, %2124
  %2143 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  %2144 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2145 = fsub fast float %2113, %2143
  %2146 = fsub fast float %2144, %2143
  %2147 = bitcast float %2146 to i32
  %2148 = sub nsw i32 2129859010, %2147
  %2149 = bitcast i32 %2148 to float
  %2150 = fmul fast float %2149, %2145
  %2151 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  br label %2152

; <label>:2152                                    ; preds = %2106, %2100
  %2153 = phi float [ %2151, %2106 ], [ %2101, %2100 ]
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = and i32 %2155, 128
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %2174, label %2158

; <label>:2158                                    ; preds = %2152
  %2159 = add i32 %37, 512
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = add i32 %2161, 0
  %2163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2163, %dx.types.Handle %65, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = and i32 %2167, 524288
  %2169 = icmp ne i32 %2168, 0
  %2170 = fcmp fast ogt float %2165, 0x3FE0101020000000
  %2171 = select i1 %2170, float 1.000000e+00, float 0.000000e+00
  %2172 = select i1 %2169, float %2171, float %2165
  %2173 = fmul fast float %2172, %2153
  br label %2174

; <label>:2174                                    ; preds = %2158, %2152
  %2175 = phi float [ %2173, %2158 ], [ %2153, %2152 ]
  %2176 = fcmp fast ult float %2175, 0x3F70101020000000
  br i1 %2176, label %2806, label %2177

; <label>:2177                                    ; preds = %2174
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 16
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2380, label %2182

; <label>:2182                                    ; preds = %2177
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = add i32 %37, 464
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = add i32 %2187, 0
  %2189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2189, %dx.types.Handle %64, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2191 = extractvalue %dx.types.ResRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.ResRet.f32 %2190, 1
  %2193 = extractvalue %dx.types.ResRet.f32 %2190, 2
  %2194 = extractvalue %dx.types.ResRet.f32 %2190, 3
  %2195 = and i32 %2184, 255
  %2196 = uitofp i32 %2195 to float
  %2197 = lshr i32 %2184, 8
  %2198 = and i32 %2197, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2194, %2196
  %2201 = fadd fast float %2200, %2199
  %2202 = fmul fast float %2201, 0x3F70101000000000
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 512
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2215, label %2207

; <label>:2207                                    ; preds = %2182
  %2208 = add i32 %37, 544
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = add i32 %2210, 0
  %2212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2212, %dx.types.Handle %65, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 0
  br label %2215

; <label>:2215                                    ; preds = %2207, %2182
  %2216 = phi float [ %2214, %2207 ], [ 1.000000e+00, %2182 ]
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 33554432
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2327, label %2221

; <label>:2221                                    ; preds = %2215
  %2222 = add i32 %37, 256
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 65535
  %2226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2225)  ; LegacyF16ToF32(value)
  %2227 = lshr i32 %2224, 16
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = add i32 %37, 260
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = and i32 %2231, 65535
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = lshr i32 %2235, 24
  %2237 = uitofp i32 %2236 to float
  %2238 = fmul fast float %2237, 0x3F70101020000000
  %2239 = and i32 %2235, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2240, 0x3F70101020000000
  %2242 = lshr i32 %2235, 8
  %2243 = and i32 %2242, 255
  %2244 = uitofp i32 %2243 to float
  %2245 = fmul fast float %2244, 0x3F70101020000000
  %2246 = lshr i32 %2235, 16
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101020000000
  %2250 = add i32 %37, 252
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = lshr i32 %2252, 24
  %2254 = uitofp i32 %2253 to float
  %2255 = fmul fast float %2254, 0x3F70101020000000
  %2256 = and i32 %2252, 255
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 0x3F70101020000000
  %2259 = lshr i32 %2252, 8
  %2260 = and i32 %2259, 255
  %2261 = uitofp i32 %2260 to float
  %2262 = fmul fast float %2261, 0x3F70101020000000
  %2263 = lshr i32 %2252, 16
  %2264 = and i32 %2263, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = bitcast float %2191 to i32
  %2268 = ashr i32 %2267, 1
  %2269 = sub nsw i32 1597463174, %2268
  %2270 = bitcast i32 %2269 to float
  %2271 = fmul fast float %2191, 5.000000e-01
  %2272 = fmul fast float %2270, %2270
  %2273 = fmul fast float %2272, %2271
  %2274 = fsub fast float 1.500000e+00, %2273
  %2275 = fmul fast float %2270, %2191
  %2276 = fmul fast float %2275, %2274
  %2277 = bitcast float %2192 to i32
  %2278 = ashr i32 %2277, 1
  %2279 = sub nsw i32 1597463174, %2278
  %2280 = bitcast i32 %2279 to float
  %2281 = fmul fast float %2192, 5.000000e-01
  %2282 = fmul fast float %2280, %2280
  %2283 = fmul fast float %2282, %2281
  %2284 = fsub fast float 1.500000e+00, %2283
  %2285 = fmul fast float %2280, %2192
  %2286 = fmul fast float %2285, %2284
  %2287 = bitcast float %2193 to i32
  %2288 = ashr i32 %2287, 1
  %2289 = sub nsw i32 1597463174, %2288
  %2290 = bitcast i32 %2289 to float
  %2291 = fmul fast float %2193, 5.000000e-01
  %2292 = fmul fast float %2290, %2290
  %2293 = fmul fast float %2292, %2291
  %2294 = fsub fast float 1.500000e+00, %2293
  %2295 = fmul fast float %2290, %2193
  %2296 = fmul fast float %2295, %2294
  %2297 = fsub fast float %2276, %2258
  %2298 = fsub fast float %2286, %2262
  %2299 = fsub fast float %2296, %2266
  %2300 = fmul fast float %2297, %2226
  %2301 = fmul fast float %2298, %2228
  %2302 = fmul fast float %2299, %2233
  %2303 = fadd fast float %2300, %2241
  %2304 = fadd fast float %2301, %2245
  %2305 = fadd fast float %2302, %2249
  %2306 = call float @dx.op.unary.f32(i32 7, float %2303)  ; Saturate(value)
  %2307 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  %2308 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2309 = fmul fast float %2306, %2306
  %2310 = fmul fast float %2307, %2307
  %2311 = fmul fast float %2308, %2308
  %2312 = fsub fast float %2309, %2191
  %2313 = fsub fast float %2310, %2192
  %2314 = fsub fast float %2311, %2193
  %2315 = fmul fast float %2312, %2216
  %2316 = fmul fast float %2313, %2216
  %2317 = fmul fast float %2314, %2216
  %2318 = fadd fast float %2315, %2191
  %2319 = fadd fast float %2316, %2192
  %2320 = fadd fast float %2317, %2193
  %2321 = fadd fast float %2238, %2202
  %2322 = fsub fast float %2321, %2255
  %2323 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  %2324 = fsub fast float %2323, %2202
  %2325 = fmul fast float %2324, %2216
  %2326 = fadd fast float %2325, %2202
  br label %2380

; <label>:2327                                    ; preds = %2215
  %2328 = and i32 %2218, 134217728
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %2364, label %2330

; <label>:2330                                    ; preds = %2327
  %2331 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %2332 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2333 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2334 = fadd fast float %2331, -5.000000e-01
  %2335 = fadd fast float %2332, -5.000000e-01
  %2336 = fadd fast float %2333, -5.000000e-01
  %2337 = fmul fast float %2334, %2216
  %2338 = fmul fast float %2335, %2216
  %2339 = fmul fast float %2336, %2216
  %2340 = fadd fast float %2337, 5.000000e-01
  %2341 = fadd fast float %2338, 5.000000e-01
  %2342 = fadd fast float %2339, 5.000000e-01
  %2343 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2344 = call float @dx.op.unary.f32(i32 24, float %2192)  ; Sqrt(value)
  %2345 = call float @dx.op.unary.f32(i32 24, float %2193)  ; Sqrt(value)
  %2346 = fmul fast float %2340, 2.000000e+00
  %2347 = fsub fast float 1.000000e+00, %2346
  %2348 = fmul fast float %2347, %2343
  %2349 = fadd fast float %2348, %2346
  %2350 = fmul fast float %2349, %2343
  %2351 = fmul fast float %2341, 2.000000e+00
  %2352 = fsub fast float 1.000000e+00, %2351
  %2353 = fmul fast float %2352, %2344
  %2354 = fadd fast float %2353, %2351
  %2355 = fmul fast float %2354, %2344
  %2356 = fmul fast float %2342, 2.000000e+00
  %2357 = fsub fast float 1.000000e+00, %2356
  %2358 = fmul fast float %2357, %2345
  %2359 = fadd fast float %2358, %2356
  %2360 = fmul fast float %2359, %2345
  %2361 = fmul fast float %2350, %2350
  %2362 = fmul fast float %2355, %2355
  %2363 = fmul fast float %2360, %2360
  br label %2380

; <label>:2364                                    ; preds = %2327
  %2365 = fmul fast float %269, %269
  %2366 = fmul fast float %273, %273
  %2367 = fmul fast float %277, %277
  %2368 = fadd fast float %2365, -1.000000e+00
  %2369 = fadd fast float %2366, -1.000000e+00
  %2370 = fadd fast float %2367, -1.000000e+00
  %2371 = fmul fast float %2216, %2368
  %2372 = fmul fast float %2216, %2369
  %2373 = fmul fast float %2216, %2370
  %2374 = fadd fast float %2371, 1.000000e+00
  %2375 = fadd fast float %2372, 1.000000e+00
  %2376 = fadd fast float %2373, 1.000000e+00
  %2377 = fmul fast float %2374, %2191
  %2378 = fmul fast float %2375, %2192
  %2379 = fmul fast float %2376, %2193
  br label %2380

; <label>:2380                                    ; preds = %2364, %2330, %2221, %2177
  %2381 = phi float [ %2326, %2221 ], [ %2202, %2330 ], [ %2202, %2364 ], [ 0x3FA23C0BE0000000, %2177 ]
  %2382 = phi float [ %2318, %2221 ], [ %2361, %2330 ], [ %2377, %2364 ], [ 1.000000e+00, %2177 ]
  %2383 = phi float [ %2319, %2221 ], [ %2362, %2330 ], [ %2378, %2364 ], [ 1.000000e+00, %2177 ]
  %2384 = phi float [ %2320, %2221 ], [ %2363, %2330 ], [ %2379, %2364 ], [ 1.000000e+00, %2177 ]
  %2385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.i32 %2385, 1
  %2387 = and i32 %2386, 1
  %2388 = icmp ne i32 %2387, 0
  %2389 = add i32 %37, 356
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 32
  %2393 = icmp ne i32 %2392, 0
  %2394 = and i1 %2388, %2393
  %2395 = select i1 %2394, float 1.000000e+00, float %2382
  %2396 = select i1 %2394, float 0x3FD3333340000000, float %2383
  %2397 = select i1 %2394, float 0x3FD3333340000000, float %2384
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 32
  %2401 = icmp eq i32 %2400, 0
  br i1 %2401, label %2474, label %2402

; <label>:2402                                    ; preds = %2380
  %2403 = add i32 %37, 124
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = add i32 %37, 480
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %2408, 0
  %2410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2410, %dx.types.Handle %64, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2412 = extractvalue %dx.types.ResRet.f32 %2411, 0
  %2413 = extractvalue %dx.types.ResRet.f32 %2411, 1
  %2414 = extractvalue %dx.types.ResRet.f32 %2411, 2
  %2415 = extractvalue %dx.types.ResRet.f32 %2411, 3
  %2416 = and i32 %2405, 255
  %2417 = uitofp i32 %2416 to float
  %2418 = lshr i32 %2405, 8
  %2419 = and i32 %2418, 255
  %2420 = uitofp i32 %2419 to float
  %2421 = lshr i32 %2405, 16
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = fmul fast float %2423, 0x3F70101000000000
  %2425 = fmul fast float %2412, %2417
  %2426 = fadd fast float %2425, %2420
  %2427 = fmul fast float %2426, 0x3F70101000000000
  %2428 = fadd fast float %2413, -5.000000e-01
  %2429 = fadd fast float %2415, -5.000000e-01
  %2430 = fmul fast float %2428, %2424
  %2431 = fmul fast float %2429, %2424
  %2432 = fadd fast float %2430, 5.000000e-01
  %2433 = fadd fast float %2431, 5.000000e-01
  %2434 = fmul fast float %2432, 2.000000e+00
  %2435 = fadd fast float %2434, -1.000000e+00
  %2436 = fmul fast float %2433, 2.000000e+00
  %2437 = fadd fast float %2436, -1.000000e+00
  %2438 = fadd fast float %2435, %2437
  %2439 = fmul fast float %2438, 5.000000e-01
  %2440 = fsub fast float %2435, %2437
  %2441 = fmul fast float %2440, 5.000000e-01
  %2442 = call float @dx.op.unary.f32(i32 6, float %2439)  ; FAbs(value)
  %2443 = fsub fast float 1.000000e+00, %2442
  %2444 = call float @dx.op.unary.f32(i32 6, float %2441)  ; FAbs(value)
  %2445 = fsub fast float %2443, %2444
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2439, float %2441, float %2445, float %2439, float %2441, float %2445)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = call float @dx.op.unary.f32(i32 25, float %2446)  ; Rsqrt(value)
  %2448 = fmul fast float %2439, %2447
  %2449 = fmul fast float %2441, %2447
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 67108864
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2470, label %2454

; <label>:2454                                    ; preds = %2402
  %2455 = add i32 %37, 312
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = and i32 %2457, 65535
  %2459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2458)  ; LegacyF16ToF32(value)
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = and i32 %2461, 65535
  %2463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2462)  ; LegacyF16ToF32(value)
  %2464 = lshr i32 %2457, 16
  %2465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2464)  ; LegacyF16ToF32(value)
  %2466 = fsub fast float %2427, %2465
  %2467 = fmul fast float %2466, %2459
  %2468 = fadd fast float %2467, %2463
  %2469 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  br label %2470

; <label>:2470                                    ; preds = %2454, %2402
  %2471 = phi float [ %2469, %2454 ], [ %2427, %2402 ]
  %2472 = call float @dx.op.dot2.f32(i32 54, float %2448, float %2449, float %1891, float %1892)  ; Dot2(ax,ay,bx,by)
  %2473 = call float @dx.op.dot2.f32(i32 54, float %2448, float %2449, float %1893, float %1894)  ; Dot2(ax,ay,bx,by)
  br label %2474

; <label>:2474                                    ; preds = %2470, %2380
  %2475 = phi float [ %2471, %2470 ], [ 0x3FD6666660000000, %2380 ]
  %2476 = phi float [ %2472, %2470 ], [ 0.000000e+00, %2380 ]
  %2477 = phi float [ %2473, %2470 ], [ 0.000000e+00, %2380 ]
  %2478 = phi float [ %2414, %2470 ], [ 1.000000e+00, %2380 ]
  %2479 = add i32 %37, 192
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = lshr i32 %2481, 22
  %2483 = shl nuw nsw i32 %2482, 5
  %2484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2483)  ; LegacyF16ToF32(value)
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = and i32 %2486, 64
  %2488 = icmp eq i32 %2487, 0
  br i1 %2488, label %2522, label %2489

; <label>:2489                                    ; preds = %2474
  %2490 = add i32 %37, 496
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = add i32 %2492, 0
  %2494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = and i32 %2496, 131072
  %2498 = icmp eq i32 %2497, 0
  %2499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2494, %dx.types.Handle %64, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.ResRet.f32 %2499, 2
  %2503 = fmul fast float %2500, %257
  %2504 = fmul fast float %2501, %260
  %2505 = fmul fast float %2502, %263
  br i1 %2498, label %2512, label %2506

; <label>:2506                                    ; preds = %2489
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 0
  %2509 = fmul fast float %2508, %2503
  %2510 = fmul fast float %2508, %2504
  %2511 = fmul fast float %2508, %2505
  br label %2512

; <label>:2512                                    ; preds = %2506, %2489
  %2513 = phi float [ %2509, %2506 ], [ %2503, %2489 ]
  %2514 = phi float [ %2510, %2506 ], [ %2504, %2489 ]
  %2515 = phi float [ %2511, %2506 ], [ %2505, %2489 ]
  %2516 = fmul fast float %2513, %2484
  %2517 = select i1 %167, float %2516, float %2513
  %2518 = call float @dx.op.dot3.f32(i32 55, float %2517, float %2514, float %2515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2519 = select i1 %167, float 0.000000e+00, float %2513
  %2520 = select i1 %167, float %2518, float %2514
  %2521 = select i1 %167, float 0.000000e+00, float %2515
  br label %2522

; <label>:2522                                    ; preds = %2512, %2474
  %2523 = phi float [ %2519, %2512 ], [ 0.000000e+00, %2474 ]
  %2524 = phi float [ %2520, %2512 ], [ 0.000000e+00, %2474 ]
  %2525 = phi float [ %2521, %2512 ], [ 0.000000e+00, %2474 ]
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = and i32 %2527, 10240
  %2529 = icmp eq i32 %2528, 0
  br i1 %2529, label %2574, label %2530

; <label>:2530                                    ; preds = %2522
  %2531 = add i32 %37, 560
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = add i32 %2533, 0
  %2535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2535, %dx.types.Handle %65, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2537 = extractvalue %dx.types.ResRet.f32 %2536, 1
  %2538 = extractvalue %dx.types.ResRet.f32 %2536, 3
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 1048576
  %2542 = icmp ne i32 %2541, 0
  %2543 = and i32 %2540, 8192
  %2544 = icmp eq i32 %2543, 0
  br i1 %2544, label %2560, label %2545

; <label>:2545                                    ; preds = %2530
  %2546 = extractvalue %dx.types.ResRet.f32 %2536, 2
  %2547 = select i1 %2542, float %2546, float %2537
  %2548 = extractvalue %dx.types.ResRet.f32 %2536, 0
  %2549 = select i1 %2542, float %2548, float %2537
  %2550 = add i32 %37, 128
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = lshr i32 %2552, 16
  %2554 = and i32 %2553, 255
  %2555 = uitofp i32 %2554 to float
  %2556 = fmul fast float %2555, 0x3F80101020000000
  %2557 = fmul fast float %2556, %2549
  %2558 = fmul fast float %2556, %2537
  %2559 = fmul fast float %2556, %2547
  br label %2560

; <label>:2560                                    ; preds = %2545, %2530
  %2561 = phi float [ %2557, %2545 ], [ 0.000000e+00, %2530 ]
  %2562 = phi float [ %2558, %2545 ], [ 0.000000e+00, %2530 ]
  %2563 = phi float [ %2559, %2545 ], [ 0.000000e+00, %2530 ]
  %2564 = and i32 %2540, 2048
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2574, label %2566

; <label>:2566                                    ; preds = %2560
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = shl i32 %2568, 4
  %2570 = and i32 %2569, 32752
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = fmul fast float %2571, %2538
  %2573 = call float @dx.op.binary.f32(i32 35, float %2572, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2574

; <label>:2574                                    ; preds = %2566, %2560, %2522
  %2575 = phi float [ %2561, %2566 ], [ %2561, %2560 ], [ 0.000000e+00, %2522 ]
  %2576 = phi float [ %2562, %2566 ], [ %2562, %2560 ], [ 0.000000e+00, %2522 ]
  %2577 = phi float [ %2563, %2566 ], [ %2563, %2560 ], [ 0.000000e+00, %2522 ]
  %2578 = phi float [ %2573, %2566 ], [ 0x3F70101020000000, %2560 ], [ 0x3F70101020000000, %2522 ]
  %2579 = add i32 %37, 128
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = lshr i32 %2581, 8
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = call float @dx.op.dot3.f32(i32 55, float %2395, float %2396, float %2397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2588 = fmul fast float %2586, %2587
  %2589 = fadd fast float %2588, %2583
  %2590 = fmul fast float %2589, 0x3F70101020000000
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  br i1 %1879, label %2592, label %2600

; <label>:2592                                    ; preds = %2574
  %2593 = fsub fast float 1.000000e+00, %2175
  %2594 = fmul fast float %2593, %1864
  %2595 = fmul fast float %2593, %1865
  %2596 = fmul fast float %2593, %1866
  %2597 = fmul fast float %2593, %1870
  %2598 = fmul fast float %2593, %1871
  %2599 = fmul fast float %2593, %1872
  br label %2600

; <label>:2600                                    ; preds = %2592, %2574
  %2601 = phi float [ %2594, %2592 ], [ %1864, %2574 ]
  %2602 = phi float [ %2595, %2592 ], [ %1865, %2574 ]
  %2603 = phi float [ %2596, %2592 ], [ %1866, %2574 ]
  %2604 = phi float [ %2597, %2592 ], [ %1870, %2574 ]
  %2605 = phi float [ %2598, %2592 ], [ %1871, %2574 ]
  %2606 = phi float [ %2599, %2592 ], [ %1872, %2574 ]
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 3
  %2610 = icmp eq i32 %2609, 3
  br i1 %2610, label %2689, label %2611

; <label>:2611                                    ; preds = %2600
  %2612 = and i32 %2608, 16
  %2613 = icmp ne i32 %2612, 0
  %2614 = select i1 %2613, float %2175, float 0.000000e+00
  %2615 = icmp eq i32 %2609, 0
  br i1 %2615, label %2616, label %2644

; <label>:2616                                    ; preds = %2611
  %2617 = and i32 %2608, 64
  %2618 = icmp ne i32 %2617, 0
  %2619 = select i1 %2618, float %2175, float 0.000000e+00
  %2620 = fsub fast float %2395, %2601
  %2621 = fsub fast float %2396, %2602
  %2622 = fsub fast float %2397, %2603
  %2623 = fmul fast float %2614, %2620
  %2624 = fmul fast float %2614, %2621
  %2625 = fmul fast float %2614, %2622
  %2626 = fadd fast float %2623, %2601
  %2627 = fadd fast float %2624, %2602
  %2628 = fadd fast float %2625, %2603
  %2629 = fsub fast float %2381, %1873
  %2630 = fmul fast float %2614, %2629
  %2631 = fadd fast float %2630, %1873
  %2632 = fsub fast float %2523, %2604
  %2633 = fsub fast float %2524, %2605
  %2634 = fsub fast float %2525, %2606
  %2635 = fmul fast float %2619, %2632
  %2636 = fmul fast float %2619, %2633
  %2637 = fmul fast float %2619, %2634
  %2638 = fadd fast float %2635, %2604
  %2639 = fadd fast float %2636, %2605
  %2640 = fadd fast float %2637, %2606
  %2641 = fsub fast float %2591, %1877
  %2642 = fmul fast float %2614, %2641
  %2643 = fadd fast float %2642, %1877
  br label %2689

; <label>:2644                                    ; preds = %2611
  %2645 = icmp eq i32 %2609, 1
  br i1 %2645, label %2646, label %2659

; <label>:2646                                    ; preds = %2644
  %2647 = fadd fast float %2395, -1.000000e+00
  %2648 = fadd fast float %2396, -1.000000e+00
  %2649 = fadd fast float %2397, -1.000000e+00
  %2650 = fmul fast float %2614, %2647
  %2651 = fmul fast float %2614, %2648
  %2652 = fmul fast float %2614, %2649
  %2653 = fadd fast float %2650, 1.000000e+00
  %2654 = fadd fast float %2651, 1.000000e+00
  %2655 = fadd fast float %2652, 1.000000e+00
  %2656 = fmul fast float %2653, %2601
  %2657 = fmul fast float %2654, %2602
  %2658 = fmul fast float %2655, %2603
  br label %2689

; <label>:2659                                    ; preds = %2644
  %2660 = icmp eq i32 %2609, 2
  br i1 %2660, label %2661, label %2689

; <label>:2661                                    ; preds = %2659
  %2662 = call float @dx.op.unary.f32(i32 24, float %2395)  ; Sqrt(value)
  %2663 = call float @dx.op.unary.f32(i32 24, float %2396)  ; Sqrt(value)
  %2664 = call float @dx.op.unary.f32(i32 24, float %2397)  ; Sqrt(value)
  %2665 = fadd fast float %2662, -5.000000e-01
  %2666 = fadd fast float %2663, -5.000000e-01
  %2667 = fadd fast float %2664, -5.000000e-01
  %2668 = fmul fast float %2665, %2614
  %2669 = fmul fast float %2666, %2614
  %2670 = fmul fast float %2667, %2614
  %2671 = fadd fast float %2668, 5.000000e-01
  %2672 = fadd fast float %2669, 5.000000e-01
  %2673 = fadd fast float %2670, 5.000000e-01
  %2674 = fmul fast float %2671, 2.000000e+00
  %2675 = fsub fast float 1.000000e+00, %2674
  %2676 = fmul fast float %2675, %2601
  %2677 = fadd fast float %2676, %2674
  %2678 = fmul fast float %2677, %2601
  %2679 = fmul fast float %2672, 2.000000e+00
  %2680 = fsub fast float 1.000000e+00, %2679
  %2681 = fmul fast float %2680, %2602
  %2682 = fadd fast float %2681, %2679
  %2683 = fmul fast float %2682, %2602
  %2684 = fmul fast float %2673, 2.000000e+00
  %2685 = fsub fast float 1.000000e+00, %2684
  %2686 = fmul fast float %2685, %2603
  %2687 = fadd fast float %2686, %2684
  %2688 = fmul fast float %2687, %2603
  br label %2689

; <label>:2689                                    ; preds = %2661, %2659, %2646, %2616, %2600
  %2690 = phi float [ %2601, %2600 ], [ %2678, %2661 ], [ %2601, %2659 ], [ %2656, %2646 ], [ %2626, %2616 ]
  %2691 = phi float [ %2602, %2600 ], [ %2683, %2661 ], [ %2602, %2659 ], [ %2657, %2646 ], [ %2627, %2616 ]
  %2692 = phi float [ %2603, %2600 ], [ %2688, %2661 ], [ %2603, %2659 ], [ %2658, %2646 ], [ %2628, %2616 ]
  %2693 = phi float [ %2604, %2600 ], [ %2604, %2661 ], [ %2604, %2659 ], [ %2604, %2646 ], [ %2638, %2616 ]
  %2694 = phi float [ %2605, %2600 ], [ %2605, %2661 ], [ %2605, %2659 ], [ %2605, %2646 ], [ %2639, %2616 ]
  %2695 = phi float [ %2606, %2600 ], [ %2606, %2661 ], [ %2606, %2659 ], [ %2606, %2646 ], [ %2640, %2616 ]
  %2696 = phi float [ %1873, %2600 ], [ %1873, %2661 ], [ %1873, %2659 ], [ %1873, %2646 ], [ %2631, %2616 ]
  %2697 = phi float [ %1877, %2600 ], [ %1877, %2661 ], [ %1877, %2659 ], [ %1877, %2646 ], [ %2643, %2616 ]
  %2698 = and i32 %2608, 12
  %2699 = icmp eq i32 %2698, 12
  br i1 %2699, label %2806, label %2700

; <label>:2700                                    ; preds = %2689
  %2701 = and i32 %2608, 2097184
  %2702 = icmp eq i32 %2701, 2097184
  %2703 = select i1 %2702, float %2175, float 0.000000e+00
  %2704 = and i32 %2608, 4194336
  %2705 = icmp eq i32 %2704, 4194336
  %2706 = select i1 %2705, float %2175, float 0.000000e+00
  %2707 = and i32 %2608, 8388640
  %2708 = icmp eq i32 %2707, 8388640
  %2709 = select i1 %2708, float %2175, float 0.000000e+00
  %2710 = and i32 %2608, 2048
  %2711 = icmp ne i32 %2710, 0
  %2712 = select i1 %2711, float %2175, float 0.000000e+00
  %2713 = and i32 %2608, 8192
  %2714 = icmp ne i32 %2713, 0
  %2715 = select i1 %2714, float %2175, float 0.000000e+00
  %2716 = icmp eq i32 %2698, 0
  br i1 %2716, label %2717, label %2742

; <label>:2717                                    ; preds = %2700
  %2718 = fsub fast float %2476, %1862
  %2719 = fsub fast float %2477, %1863
  %2720 = fmul fast float %2703, %2718
  %2721 = fmul fast float %2703, %2719
  %2722 = fadd fast float %2720, %1862
  %2723 = fadd fast float %2721, %1863
  %2724 = fsub fast float %2478, %1875
  %2725 = fmul fast float %2706, %2724
  %2726 = fadd fast float %2725, %1875
  %2727 = fsub fast float %2475, %1874
  %2728 = fmul fast float %2709, %2727
  %2729 = fadd fast float %2728, %1874
  %2730 = fsub fast float %2578, %1876
  %2731 = fmul fast float %2712, %2730
  %2732 = fadd fast float %2731, %1876
  %2733 = fsub fast float %2575, %1867
  %2734 = fsub fast float %2576, %1868
  %2735 = fsub fast float %2577, %1869
  %2736 = fmul fast float %2715, %2733
  %2737 = fmul fast float %2715, %2734
  %2738 = fmul fast float %2715, %2735
  %2739 = fadd fast float %2736, %1867
  %2740 = fadd fast float %2737, %1868
  %2741 = fadd fast float %2738, %1869
  br label %2806

; <label>:2742                                    ; preds = %2700
  %2743 = icmp eq i32 %2698, 4
  br i1 %2743, label %2744, label %2784

; <label>:2744                                    ; preds = %2742
  %2745 = fmul fast float %2703, %2476
  %2746 = fmul fast float %2703, %2477
  %2747 = fadd fast float %2745, %1862
  %2748 = fadd fast float %2746, %1863
  %2749 = call float @dx.op.binary.f32(i32 36, float %1875, float %2478)  ; FMin(a,b)
  %2750 = fsub fast float %2749, %1875
  %2751 = fmul fast float %2750, %2706
  %2752 = fadd fast float %2751, %1875
  %2753 = fadd fast float %2475, %1874
  %2754 = fmul fast float %2753, 0x3FF337FAE0000000
  %2755 = fmul fast float %1874, %1874
  %2756 = fmul fast float %2475, %2475
  %2757 = fadd fast float %2756, %2755
  %2758 = fmul fast float %2757, 0x3FE5152B00000000
  %2759 = fmul fast float %1874, 0xBFCC1F85E0000000
  %2760 = fmul fast float %2759, %2475
  %2761 = fadd fast float %2760, 0xBFE1363700000000
  %2762 = fadd fast float %2761, %2754
  %2763 = fsub fast float %2762, %2758
  %2764 = fmul fast float %2753, 0x3FBA6F0D00000000
  %2765 = fmul fast float %2757, 0x3FD0432880000000
  %2766 = fmul fast float %1874, 0xBFEF110800000000
  %2767 = fmul fast float %2766, %2475
  %2768 = fadd fast float %2767, 1.000000e+00
  %2769 = fsub fast float %2768, %2764
  %2770 = fadd fast float %2769, %2765
  %2771 = fdiv fast float %2763, %2770
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = fsub fast float %2772, %1874
  %2774 = fmul fast float %2773, %2709
  %2775 = fadd fast float %2774, %1874
  %2776 = fmul fast float %2712, %2578
  %2777 = fadd fast float %2776, %1876
  %2778 = fmul fast float %2715, %2575
  %2779 = fmul fast float %2715, %2576
  %2780 = fmul fast float %2715, %2577
  %2781 = fadd fast float %2778, %1867
  %2782 = fadd fast float %2779, %1868
  %2783 = fadd fast float %2780, %1869
  br label %2806

; <label>:2784                                    ; preds = %2742
  %2785 = icmp eq i32 %2698, 8
  br i1 %2785, label %2786, label %2806

; <label>:2786                                    ; preds = %2784
  %2787 = fmul fast float %2703, %2476
  %2788 = fmul fast float %2703, %2477
  %2789 = fadd fast float %2787, %1862
  %2790 = fadd fast float %2788, %1863
  %2791 = call float @dx.op.binary.f32(i32 36, float %1875, float %2478)  ; FMin(a,b)
  %2792 = fsub fast float %2791, %1875
  %2793 = fmul fast float %2792, %2706
  %2794 = fadd fast float %2793, %1875
  %2795 = fsub fast float %2475, %1874
  %2796 = fmul fast float %2709, %2795
  %2797 = fadd fast float %2796, %1874
  %2798 = fmul fast float %2712, %2578
  %2799 = fadd fast float %2798, %1876
  %2800 = fmul fast float %2715, %2575
  %2801 = fmul fast float %2715, %2576
  %2802 = fmul fast float %2715, %2577
  %2803 = fadd fast float %2800, %1867
  %2804 = fadd fast float %2801, %1868
  %2805 = fadd fast float %2802, %1869
  br label %2806

; <label>:2806                                    ; preds = %2786, %2784, %2744, %2717, %2689, %2174, %1878, %1861
  %2807 = phi float [ %1862, %2689 ], [ %1862, %2174 ], [ %1862, %1861 ], [ %2789, %2786 ], [ %1862, %2784 ], [ %2747, %2744 ], [ %2722, %2717 ], [ %1862, %1878 ]
  %2808 = phi float [ %1863, %2689 ], [ %1863, %2174 ], [ %1863, %1861 ], [ %2790, %2786 ], [ %1863, %2784 ], [ %2748, %2744 ], [ %2723, %2717 ], [ %1863, %1878 ]
  %2809 = phi float [ %2690, %2689 ], [ %1864, %2174 ], [ %1864, %1861 ], [ %2690, %2786 ], [ %2690, %2784 ], [ %2690, %2744 ], [ %2690, %2717 ], [ %1864, %1878 ]
  %2810 = phi float [ %2691, %2689 ], [ %1865, %2174 ], [ %1865, %1861 ], [ %2691, %2786 ], [ %2691, %2784 ], [ %2691, %2744 ], [ %2691, %2717 ], [ %1865, %1878 ]
  %2811 = phi float [ %2692, %2689 ], [ %1866, %2174 ], [ %1866, %1861 ], [ %2692, %2786 ], [ %2692, %2784 ], [ %2692, %2744 ], [ %2692, %2717 ], [ %1866, %1878 ]
  %2812 = phi float [ %1867, %2689 ], [ %1867, %2174 ], [ %1867, %1861 ], [ %2803, %2786 ], [ %1867, %2784 ], [ %2781, %2744 ], [ %2739, %2717 ], [ %1867, %1878 ]
  %2813 = phi float [ %1868, %2689 ], [ %1868, %2174 ], [ %1868, %1861 ], [ %2804, %2786 ], [ %1868, %2784 ], [ %2782, %2744 ], [ %2740, %2717 ], [ %1868, %1878 ]
  %2814 = phi float [ %1869, %2689 ], [ %1869, %2174 ], [ %1869, %1861 ], [ %2805, %2786 ], [ %1869, %2784 ], [ %2783, %2744 ], [ %2741, %2717 ], [ %1869, %1878 ]
  %2815 = phi float [ %2693, %2689 ], [ %1870, %2174 ], [ %1870, %1861 ], [ %2693, %2786 ], [ %2693, %2784 ], [ %2693, %2744 ], [ %2693, %2717 ], [ %1870, %1878 ]
  %2816 = phi float [ %2694, %2689 ], [ %1871, %2174 ], [ %1871, %1861 ], [ %2694, %2786 ], [ %2694, %2784 ], [ %2694, %2744 ], [ %2694, %2717 ], [ %1871, %1878 ]
  %2817 = phi float [ %2695, %2689 ], [ %1872, %2174 ], [ %1872, %1861 ], [ %2695, %2786 ], [ %2695, %2784 ], [ %2695, %2744 ], [ %2695, %2717 ], [ %1872, %1878 ]
  %2818 = phi float [ %2696, %2689 ], [ %1873, %2174 ], [ %1873, %1861 ], [ %2696, %2786 ], [ %2696, %2784 ], [ %2696, %2744 ], [ %2696, %2717 ], [ %1873, %1878 ]
  %2819 = phi float [ %1874, %2689 ], [ %1874, %2174 ], [ %1874, %1861 ], [ %2797, %2786 ], [ %1874, %2784 ], [ %2775, %2744 ], [ %2729, %2717 ], [ %1874, %1878 ]
  %2820 = phi float [ %1875, %2689 ], [ %1875, %2174 ], [ %1875, %1861 ], [ %2794, %2786 ], [ %1875, %2784 ], [ %2752, %2744 ], [ %2726, %2717 ], [ %1875, %1878 ]
  %2821 = phi float [ %1876, %2689 ], [ %1876, %2174 ], [ %1876, %1861 ], [ %2799, %2786 ], [ %1876, %2784 ], [ %2777, %2744 ], [ %2732, %2717 ], [ %1876, %1878 ]
  %2822 = phi float [ %2697, %2689 ], [ %1877, %2174 ], [ %1877, %1861 ], [ %2697, %2786 ], [ %2697, %2784 ], [ %2697, %2744 ], [ %2697, %2717 ], [ %1877, %1878 ]
  br i1 %344, label %3751, label %2823

; <label>:2823                                    ; preds = %2806
  %2824 = icmp ult i32 %395, 4
  %2825 = add i32 %37, 72
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %37, 76
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = or i32 %2830, %2827
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %3751, label %2833

; <label>:2833                                    ; preds = %2823
  %2834 = and i32 %2827, 262144
  %2835 = icmp ne i32 %2834, 0
  %2836 = select i1 %2835, float %43, float 1.000000e+00
  %2837 = select i1 %2835, float %44, float 0.000000e+00
  %2838 = select i1 %2835, float %45, float 0.000000e+00
  %2839 = select i1 %2835, float %46, float 1.000000e+00
  %2840 = select i1 %2835, float %47, float %56
  %2841 = select i1 %2835, float %48, float %57
  %2842 = add i32 %37, 332
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = lshr i32 %2844, 16
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = fmul fast float %2846, 0x3F50624DE0000000
  %2848 = add i32 %37, 136
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = lshr i32 %2850, 16
  %2852 = and i32 %2851, 255
  %2853 = lshr i32 %2850, 24
  %2854 = add i32 %37, 340
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = and i32 %2856, 65535
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = lshr i32 %2856, 16
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = add i32 %37, 80
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = lshr i32 %2863, 22
  %2865 = shl nuw nsw i32 %2864, 5
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = shl i32 %2863, 4
  %2868 = and i32 %2867, 32752
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = lshr i32 %2863, 7
  %2871 = and i32 %2870, 32752
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 3
  %2875 = fmul fast float %2874, 1.000000e+03
  %2876 = fmul fast float %334, %2875
  %2877 = call float @dx.op.unary.f32(i32 22, float %2876)  ; Frc(value)
  %2878 = fadd fast float %2877, %324
  %2879 = fmul fast float %335, %2875
  %2880 = call float @dx.op.unary.f32(i32 22, float %2879)  ; Frc(value)
  %2881 = fadd fast float %2880, %326
  %2882 = fmul fast float %2847, %2875
  %2883 = call float @dx.op.unary.f32(i32 22, float %2882)  ; Frc(value)
  %2884 = fmul fast float %2883, 0x401921FB60000000
  %2885 = fadd fast float %2884, %2866
  %2886 = call float @dx.op.unary.f32(i32 13, float %2885)  ; Sin(value)
  %2887 = call float @dx.op.unary.f32(i32 12, float %2885)  ; Cos(value)
  %2888 = fsub fast float -0.000000e+00, %2886
  %2889 = fadd fast float %2840, -5.000000e-01
  %2890 = fadd fast float %2841, -5.000000e-01
  %2891 = fmul fast float %2858, %2889
  %2892 = fmul fast float %2860, %2890
  %2893 = fadd fast float %2891, 5.000000e-01
  %2894 = fadd fast float %2892, 5.000000e-01
  %2895 = fmul fast float %2869, %2893
  %2896 = fmul fast float %2872, %2894
  %2897 = fmul fast float %2887, %2895
  %2898 = call float @dx.op.tertiary.f32(i32 46, float %2888, float %2896, float %2897)  ; FMad(a,b,c)
  %2899 = fmul fast float %2886, %2895
  %2900 = call float @dx.op.tertiary.f32(i32 46, float %2887, float %2896, float %2899)  ; FMad(a,b,c)
  %2901 = fadd fast float %2878, %2898
  %2902 = fadd fast float %2881, %2900
  %2903 = icmp ugt i32 %2852, 1
  %2904 = icmp ugt i32 %2850, 33554431
  %2905 = or i1 %2904, %2903
  br i1 %2905, label %2906, label %2931

; <label>:2906                                    ; preds = %2833
  %2907 = add i32 %37, 276
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = lshr i32 %2909, 16
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = fmul fast float %2874, %2911
  %2913 = call float @dx.op.unary.f32(i32 22, float %2912)  ; Frc(value)
  %2914 = mul nuw nsw i32 %2852, %2853
  %2915 = uitofp i32 %2914 to float
  %2916 = fmul fast float %2913, %2915
  %2917 = call float @dx.op.unary.f32(i32 27, float %2916)  ; Round_ni(value)
  %2918 = fptoui float %2917 to i32
  %2919 = urem i32 %2918, %2852
  %2920 = udiv i32 %2918, %2853
  %2921 = call float @dx.op.unary.f32(i32 22, float %2901)  ; Frc(value)
  %2922 = call float @dx.op.unary.f32(i32 22, float %2902)  ; Frc(value)
  %2923 = uitofp i32 %2919 to float
  %2924 = uitofp i32 %2920 to float
  %2925 = fadd fast float %2921, %2923
  %2926 = fadd fast float %2922, %2924
  %2927 = uitofp i32 %2852 to float
  %2928 = uitofp i32 %2853 to float
  %2929 = fdiv fast float %2925, %2927
  %2930 = fdiv fast float %2926, %2928
  br label %2931

; <label>:2931                                    ; preds = %2906, %2833
  %2932 = phi float [ %2929, %2906 ], [ %2901, %2833 ]
  %2933 = phi float [ %2930, %2906 ], [ %2902, %2833 ]
  %2934 = and i32 %2827, 16777216
  %2935 = icmp eq i32 %2934, 0
  br i1 %2935, label %3045, label %2936

; <label>:2936                                    ; preds = %2931
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.CBufRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.CBufRet.f32 %2937, 2
  %2941 = fadd fast float %2938, %124
  %2942 = fadd fast float %2939, %125
  %2943 = fadd fast float %2940, %126
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2946 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  %2947 = icmp eq i32 %38, 65535
  br i1 %2947, label %3042, label %2948

; <label>:2948                                    ; preds = %2936
  %2949 = lshr i32 %38, 1
  %2950 = shl i32 %2949, 2
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %38, 1
  %2954 = icmp ne i32 %2953, 0
  %2955 = lshr i32 %2952, 16
  %2956 = and i32 %2952, 65535
  %2957 = select i1 %2954, i32 %2955, i32 %2956
  %2958 = icmp eq i32 %2957, 65535
  br i1 %2958, label %3038, label %2959

; <label>:2959                                    ; preds = %2948
  %2960 = mul nuw nsw i32 %2957, 40
  %2961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.f32 %2961, 0
  %2963 = extractvalue %dx.types.ResRet.f32 %2961, 1
  %2964 = extractvalue %dx.types.ResRet.f32 %2961, 2
  %2965 = add nuw nsw i32 %2960, 12
  %2966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 0
  %2968 = extractvalue %dx.types.ResRet.f32 %2966, 1
  %2969 = extractvalue %dx.types.ResRet.f32 %2966, 2
  %2970 = add nuw nsw i32 %2960, 24
  %2971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.f32 %2971, 0
  %2973 = extractvalue %dx.types.ResRet.f32 %2971, 1
  %2974 = extractvalue %dx.types.ResRet.f32 %2971, 2
  %2975 = add nuw nsw i32 %2960, 36
  %2976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = fsub fast float %2941, %2962
  %2979 = fsub fast float %2942, %2963
  %2980 = fsub fast float %2943, %2964
  %2981 = fmul fast float %2977, %2978
  %2982 = fmul fast float %2977, %2979
  %2983 = fmul fast float %2977, %2980
  %2984 = call float @dx.op.unary.f32(i32 27, float %2981)  ; Round_ni(value)
  %2985 = call float @dx.op.unary.f32(i32 27, float %2982)  ; Round_ni(value)
  %2986 = call float @dx.op.unary.f32(i32 27, float %2983)  ; Round_ni(value)
  %2987 = fadd fast float %2984, 5.000000e-01
  %2988 = fadd fast float %2985, 5.000000e-01
  %2989 = fadd fast float %2986, 5.000000e-01
  %2990 = fmul fast float %2987, %2967
  %2991 = fmul fast float %2988, %2968
  %2992 = fmul fast float %2989, %2969
  %2993 = shl i32 %38, 2
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = add i32 %2995, 0
  %2997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2998 = call float @dx.op.unary.f32(i32 22, float %2990)  ; Frc(value)
  %2999 = call float @dx.op.unary.f32(i32 22, float %2991)  ; Frc(value)
  %3000 = call float @dx.op.unary.f32(i32 22, float %2992)  ; Frc(value)
  %3001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2997, %dx.types.Handle %32, float %2998, float %2999, float %3000, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3002 = extractvalue %dx.types.ResRet.f32 %3001, 0
  %3003 = extractvalue %dx.types.ResRet.f32 %3001, 1
  %3004 = extractvalue %dx.types.ResRet.f32 %3001, 2
  %3005 = fmul fast float %3002, 1.023000e+03
  %3006 = fmul fast float %3003, 1.023000e+03
  %3007 = fmul fast float %3004, 1.023000e+03
  %3008 = fadd fast float %3005, 5.000000e-01
  %3009 = fadd fast float %3006, 5.000000e-01
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = call float @dx.op.unary.f32(i32 27, float %3008)  ; Round_ni(value)
  %3012 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = fsub fast float %2981, %2984
  %3015 = fsub fast float %2982, %2985
  %3016 = fsub fast float %2983, %2986
  %3017 = fmul fast float %3014, 7.500000e-01
  %3018 = fmul fast float %3015, 7.500000e-01
  %3019 = fmul fast float %3016, 7.500000e-01
  %3020 = fadd fast float %2984, 1.250000e-01
  %3021 = fadd fast float %3020, %3017
  %3022 = fadd fast float %3021, %3011
  %3023 = fadd fast float %2985, 1.250000e-01
  %3024 = fadd fast float %3023, %3018
  %3025 = fadd fast float %3024, %3012
  %3026 = fadd fast float %2986, 1.250000e-01
  %3027 = fadd fast float %3026, %3019
  %3028 = fadd fast float %3027, %3013
  %3029 = fmul fast float %3022, %2972
  %3030 = fmul fast float %3025, %2973
  %3031 = fmul fast float %3028, %2974
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = add i32 %3033, 0
  %3035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3035, %dx.types.Handle %30, float %3029, float %3030, float %3031, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  br label %3038

; <label>:3038                                    ; preds = %2959, %2948
  %3039 = phi float [ %3037, %2959 ], [ -1.000000e+00, %2948 ]
  %3040 = fadd fast float %3039, %2946
  %3041 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  br label %3042

; <label>:3042                                    ; preds = %3038, %2936
  %3043 = phi float [ %3041, %3038 ], [ %2946, %2936 ]
  %3044 = fmul fast float %3043, %390
  br label %3045

; <label>:3045                                    ; preds = %3042, %2931
  %3046 = phi float [ %3044, %3042 ], [ %390, %2931 ]
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 256
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3097, label %3051

; <label>:3051                                    ; preds = %3045
  %3052 = add i32 %37, 532
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = add i32 %3054, 0
  %3056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3056, %dx.types.Handle %65, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = add i32 %37, 148
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = shl i32 %3061, 4
  %3063 = and i32 %3062, 32752
  %3064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3063)  ; LegacyF16ToF32(value)
  %3065 = lshr i32 %3061, 7
  %3066 = and i32 %3065, 32752
  %3067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3066)  ; LegacyF16ToF32(value)
  %3068 = fsub fast float 1.000000e+00, %3046
  %3069 = call float @dx.op.binary.f32(i32 35, float %3068, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3070 = bitcast float %3046 to i32
  %3071 = sitofp i32 %3070 to float
  %3072 = fadd fast float %3071, 0xC1CFBF8940000000
  %3073 = fmul fast float %3067, %3072
  %3074 = fadd fast float %3073, 0x41CFBF8940000000
  %3075 = fptosi float %3074 to i32
  %3076 = bitcast i32 %3075 to float
  %3077 = bitcast float %3069 to i32
  %3078 = sitofp i32 %3077 to float
  %3079 = fadd fast float %3078, 0xC1CFBF8940000000
  %3080 = fmul fast float %3079, %3067
  %3081 = fadd fast float %3080, 0x41CFBF8940000000
  %3082 = fptosi float %3081 to i32
  %3083 = bitcast i32 %3082 to float
  %3084 = fmul fast float %3076, %3064
  %3085 = fmul fast float %3083, %3064
  %3086 = fsub fast float %3069, %3084
  %3087 = fadd fast float %3085, %3069
  %3088 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3089 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  %3090 = fsub fast float %3058, %3088
  %3091 = fsub fast float %3089, %3088
  %3092 = bitcast float %3091 to i32
  %3093 = sub nsw i32 2129859010, %3092
  %3094 = bitcast i32 %3093 to float
  %3095 = fmul fast float %3094, %3090
  %3096 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  br label %3097

; <label>:3097                                    ; preds = %3051, %3045
  %3098 = phi float [ %3096, %3051 ], [ %3046, %3045 ]
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = and i32 %3100, 128
  %3102 = icmp eq i32 %3101, 0
  br i1 %3102, label %3119, label %3103

; <label>:3103                                    ; preds = %3097
  %3104 = add i32 %37, 516
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = add i32 %3106, 0
  %3108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3108, %dx.types.Handle %65, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3110 = extractvalue %dx.types.ResRet.f32 %3109, 0
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = and i32 %3112, 524288
  %3114 = icmp ne i32 %3113, 0
  %3115 = fcmp fast ogt float %3110, 0x3FE0101020000000
  %3116 = select i1 %3115, float 1.000000e+00, float 0.000000e+00
  %3117 = select i1 %3114, float %3116, float %3110
  %3118 = fmul fast float %3117, %3098
  br label %3119

; <label>:3119                                    ; preds = %3103, %3097
  %3120 = phi float [ %3118, %3103 ], [ %3098, %3097 ]
  %3121 = fcmp fast ult float %3120, 0x3F70101020000000
  br i1 %3121, label %3751, label %3122

; <label>:3122                                    ; preds = %3119
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = and i32 %3124, 16
  %3126 = icmp eq i32 %3125, 0
  br i1 %3126, label %3325, label %3127

; <label>:3127                                    ; preds = %3122
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %37, 468
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %3132, 0
  %3134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3134, %dx.types.Handle %64, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.ResRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.ResRet.f32 %3135, 2
  %3139 = extractvalue %dx.types.ResRet.f32 %3135, 3
  %3140 = and i32 %3129, 255
  %3141 = uitofp i32 %3140 to float
  %3142 = lshr i32 %3129, 8
  %3143 = and i32 %3142, 255
  %3144 = uitofp i32 %3143 to float
  %3145 = fmul fast float %3139, %3141
  %3146 = fadd fast float %3145, %3144
  %3147 = fmul fast float %3146, 0x3F70101000000000
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 512
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3160, label %3152

; <label>:3152                                    ; preds = %3127
  %3153 = add i32 %37, 548
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = add i32 %3155, 0
  %3157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3157, %dx.types.Handle %65, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  br label %3160

; <label>:3160                                    ; preds = %3152, %3127
  %3161 = phi float [ %3159, %3152 ], [ 1.000000e+00, %3127 ]
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 33554432
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3272, label %3166

; <label>:3166                                    ; preds = %3160
  %3167 = add i32 %37, 272
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = lshr i32 %3169, 16
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = add i32 %37, 276
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 65535
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = lshr i32 %3180, 24
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101020000000
  %3184 = and i32 %3180, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = lshr i32 %3180, 8
  %3188 = and i32 %3187, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = lshr i32 %3180, 16
  %3192 = and i32 %3191, 255
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = add i32 %37, 268
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = lshr i32 %3197, 24
  %3199 = uitofp i32 %3198 to float
  %3200 = fmul fast float %3199, 0x3F70101020000000
  %3201 = and i32 %3197, 255
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 0x3F70101020000000
  %3204 = lshr i32 %3197, 8
  %3205 = and i32 %3204, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = lshr i32 %3197, 16
  %3209 = and i32 %3208, 255
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = bitcast float %3136 to i32
  %3213 = ashr i32 %3212, 1
  %3214 = sub nsw i32 1597463174, %3213
  %3215 = bitcast i32 %3214 to float
  %3216 = fmul fast float %3136, 5.000000e-01
  %3217 = fmul fast float %3215, %3215
  %3218 = fmul fast float %3217, %3216
  %3219 = fsub fast float 1.500000e+00, %3218
  %3220 = fmul fast float %3215, %3136
  %3221 = fmul fast float %3220, %3219
  %3222 = bitcast float %3137 to i32
  %3223 = ashr i32 %3222, 1
  %3224 = sub nsw i32 1597463174, %3223
  %3225 = bitcast i32 %3224 to float
  %3226 = fmul fast float %3137, 5.000000e-01
  %3227 = fmul fast float %3225, %3225
  %3228 = fmul fast float %3227, %3226
  %3229 = fsub fast float 1.500000e+00, %3228
  %3230 = fmul fast float %3225, %3137
  %3231 = fmul fast float %3230, %3229
  %3232 = bitcast float %3138 to i32
  %3233 = ashr i32 %3232, 1
  %3234 = sub nsw i32 1597463174, %3233
  %3235 = bitcast i32 %3234 to float
  %3236 = fmul fast float %3138, 5.000000e-01
  %3237 = fmul fast float %3235, %3235
  %3238 = fmul fast float %3237, %3236
  %3239 = fsub fast float 1.500000e+00, %3238
  %3240 = fmul fast float %3235, %3138
  %3241 = fmul fast float %3240, %3239
  %3242 = fsub fast float %3221, %3203
  %3243 = fsub fast float %3231, %3207
  %3244 = fsub fast float %3241, %3211
  %3245 = fmul fast float %3242, %3171
  %3246 = fmul fast float %3243, %3173
  %3247 = fmul fast float %3244, %3178
  %3248 = fadd fast float %3245, %3186
  %3249 = fadd fast float %3246, %3190
  %3250 = fadd fast float %3247, %3194
  %3251 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3252 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3253 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3254 = fmul fast float %3251, %3251
  %3255 = fmul fast float %3252, %3252
  %3256 = fmul fast float %3253, %3253
  %3257 = fsub fast float %3254, %3136
  %3258 = fsub fast float %3255, %3137
  %3259 = fsub fast float %3256, %3138
  %3260 = fmul fast float %3257, %3161
  %3261 = fmul fast float %3258, %3161
  %3262 = fmul fast float %3259, %3161
  %3263 = fadd fast float %3260, %3136
  %3264 = fadd fast float %3261, %3137
  %3265 = fadd fast float %3262, %3138
  %3266 = fadd fast float %3183, %3147
  %3267 = fsub fast float %3266, %3200
  %3268 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3269 = fsub fast float %3268, %3147
  %3270 = fmul fast float %3269, %3161
  %3271 = fadd fast float %3270, %3147
  br label %3325

; <label>:3272                                    ; preds = %3160
  %3273 = and i32 %3163, 134217728
  %3274 = icmp eq i32 %3273, 0
  br i1 %3274, label %3309, label %3275

; <label>:3275                                    ; preds = %3272
  %3276 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %3277 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %3278 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %3279 = fadd fast float %3276, -5.000000e-01
  %3280 = fadd fast float %3277, -5.000000e-01
  %3281 = fadd fast float %3278, -5.000000e-01
  %3282 = fmul fast float %3279, %3161
  %3283 = fmul fast float %3280, %3161
  %3284 = fmul fast float %3281, %3161
  %3285 = fadd fast float %3282, 5.000000e-01
  %3286 = fadd fast float %3283, 5.000000e-01
  %3287 = fadd fast float %3284, 5.000000e-01
  %3288 = call float @dx.op.unary.f32(i32 24, float %3136)  ; Sqrt(value)
  %3289 = call float @dx.op.unary.f32(i32 24, float %3137)  ; Sqrt(value)
  %3290 = call float @dx.op.unary.f32(i32 24, float %3138)  ; Sqrt(value)
  %3291 = fmul fast float %3285, 2.000000e+00
  %3292 = fsub fast float 1.000000e+00, %3291
  %3293 = fmul fast float %3292, %3288
  %3294 = fadd fast float %3293, %3291
  %3295 = fmul fast float %3294, %3288
  %3296 = fmul fast float %3286, 2.000000e+00
  %3297 = fsub fast float 1.000000e+00, %3296
  %3298 = fmul fast float %3297, %3289
  %3299 = fadd fast float %3298, %3296
  %3300 = fmul fast float %3299, %3289
  %3301 = fmul fast float %3287, 2.000000e+00
  %3302 = fsub fast float 1.000000e+00, %3301
  %3303 = fmul fast float %3302, %3290
  %3304 = fadd fast float %3303, %3301
  %3305 = fmul fast float %3304, %3290
  %3306 = fmul fast float %3295, %3295
  %3307 = fmul fast float %3300, %3300
  %3308 = fmul fast float %3305, %3305
  br label %3325

; <label>:3309                                    ; preds = %3272
  %3310 = fmul fast float %311, %311
  %3311 = fmul fast float %315, %315
  %3312 = fmul fast float %319, %319
  %3313 = fadd fast float %3310, -1.000000e+00
  %3314 = fadd fast float %3311, -1.000000e+00
  %3315 = fadd fast float %3312, -1.000000e+00
  %3316 = fmul fast float %3161, %3313
  %3317 = fmul fast float %3161, %3314
  %3318 = fmul fast float %3161, %3315
  %3319 = fadd fast float %3316, 1.000000e+00
  %3320 = fadd fast float %3317, 1.000000e+00
  %3321 = fadd fast float %3318, 1.000000e+00
  %3322 = fmul fast float %3319, %3136
  %3323 = fmul fast float %3320, %3137
  %3324 = fmul fast float %3321, %3138
  br label %3325

; <label>:3325                                    ; preds = %3309, %3275, %3166, %3122
  %3326 = phi float [ %3271, %3166 ], [ %3147, %3275 ], [ %3147, %3309 ], [ 0x3FA23C0BE0000000, %3122 ]
  %3327 = phi float [ %3263, %3166 ], [ %3306, %3275 ], [ %3322, %3309 ], [ 1.000000e+00, %3122 ]
  %3328 = phi float [ %3264, %3166 ], [ %3307, %3275 ], [ %3323, %3309 ], [ 1.000000e+00, %3122 ]
  %3329 = phi float [ %3265, %3166 ], [ %3308, %3275 ], [ %3324, %3309 ], [ 1.000000e+00, %3122 ]
  %3330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3331 = extractvalue %dx.types.CBufRet.i32 %3330, 1
  %3332 = and i32 %3331, 1
  %3333 = icmp ne i32 %3332, 0
  %3334 = add i32 %37, 356
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 32
  %3338 = icmp ne i32 %3337, 0
  %3339 = and i1 %3333, %3338
  %3340 = select i1 %3339, float 1.000000e+00, float %3327
  %3341 = select i1 %3339, float 0x3FD3333340000000, float %3328
  %3342 = select i1 %3339, float 0x3FD3333340000000, float %3329
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 32
  %3346 = icmp eq i32 %3345, 0
  br i1 %3346, label %3419, label %3347

; <label>:3347                                    ; preds = %3325
  %3348 = add i32 %37, 140
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = add i32 %37, 484
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = add i32 %3353, 0
  %3355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3355, %dx.types.Handle %64, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = extractvalue %dx.types.ResRet.f32 %3356, 3
  %3361 = and i32 %3350, 255
  %3362 = uitofp i32 %3361 to float
  %3363 = lshr i32 %3350, 8
  %3364 = and i32 %3363, 255
  %3365 = uitofp i32 %3364 to float
  %3366 = lshr i32 %3350, 16
  %3367 = and i32 %3366, 255
  %3368 = uitofp i32 %3367 to float
  %3369 = fmul fast float %3368, 0x3F70101000000000
  %3370 = fmul fast float %3357, %3362
  %3371 = fadd fast float %3370, %3365
  %3372 = fmul fast float %3371, 0x3F70101000000000
  %3373 = fadd fast float %3358, -5.000000e-01
  %3374 = fadd fast float %3360, -5.000000e-01
  %3375 = fmul fast float %3373, %3369
  %3376 = fmul fast float %3374, %3369
  %3377 = fadd fast float %3375, 5.000000e-01
  %3378 = fadd fast float %3376, 5.000000e-01
  %3379 = fmul fast float %3377, 2.000000e+00
  %3380 = fadd fast float %3379, -1.000000e+00
  %3381 = fmul fast float %3378, 2.000000e+00
  %3382 = fadd fast float %3381, -1.000000e+00
  %3383 = fadd fast float %3380, %3382
  %3384 = fmul fast float %3383, 5.000000e-01
  %3385 = fsub fast float %3380, %3382
  %3386 = fmul fast float %3385, 5.000000e-01
  %3387 = call float @dx.op.unary.f32(i32 6, float %3384)  ; FAbs(value)
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = call float @dx.op.unary.f32(i32 6, float %3386)  ; FAbs(value)
  %3390 = fsub fast float %3388, %3389
  %3391 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3386, float %3390, float %3384, float %3386, float %3390)  ; Dot3(ax,ay,az,bx,by,bz)
  %3392 = call float @dx.op.unary.f32(i32 25, float %3391)  ; Rsqrt(value)
  %3393 = fmul fast float %3384, %3392
  %3394 = fmul fast float %3386, %3392
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 67108864
  %3398 = icmp eq i32 %3397, 0
  br i1 %3398, label %3415, label %3399

; <label>:3399                                    ; preds = %3347
  %3400 = add i32 %37, 328
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = and i32 %3402, 65535
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 65535
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = lshr i32 %3402, 16
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = fsub fast float %3372, %3410
  %3412 = fmul fast float %3411, %3404
  %3413 = fadd fast float %3412, %3408
  %3414 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  br label %3415

; <label>:3415                                    ; preds = %3399, %3347
  %3416 = phi float [ %3414, %3399 ], [ %3372, %3347 ]
  %3417 = call float @dx.op.dot2.f32(i32 54, float %3393, float %3394, float %2836, float %2837)  ; Dot2(ax,ay,bx,by)
  %3418 = call float @dx.op.dot2.f32(i32 54, float %3393, float %3394, float %2838, float %2839)  ; Dot2(ax,ay,bx,by)
  br label %3419

; <label>:3419                                    ; preds = %3415, %3325
  %3420 = phi float [ %3416, %3415 ], [ 0x3FD6666660000000, %3325 ]
  %3421 = phi float [ %3417, %3415 ], [ 0.000000e+00, %3325 ]
  %3422 = phi float [ %3418, %3415 ], [ 0.000000e+00, %3325 ]
  %3423 = phi float [ %3359, %3415 ], [ 1.000000e+00, %3325 ]
  %3424 = add i32 %37, 208
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = lshr i32 %3426, 22
  %3428 = shl nuw nsw i32 %3427, 5
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = and i32 %3431, 64
  %3433 = icmp eq i32 %3432, 0
  br i1 %3433, label %3467, label %3434

; <label>:3434                                    ; preds = %3419
  %3435 = add i32 %37, 500
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = add i32 %3437, 0
  %3439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = and i32 %3441, 131072
  %3443 = icmp eq i32 %3442, 0
  %3444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3439, %dx.types.Handle %64, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3444, 1
  %3447 = extractvalue %dx.types.ResRet.f32 %3444, 2
  %3448 = fmul fast float %3445, %299
  %3449 = fmul fast float %3446, %302
  %3450 = fmul fast float %3447, %305
  br i1 %3443, label %3457, label %3451

; <label>:3451                                    ; preds = %3434
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 0
  %3454 = fmul fast float %3453, %3448
  %3455 = fmul fast float %3453, %3449
  %3456 = fmul fast float %3453, %3450
  br label %3457

; <label>:3457                                    ; preds = %3451, %3434
  %3458 = phi float [ %3454, %3451 ], [ %3448, %3434 ]
  %3459 = phi float [ %3455, %3451 ], [ %3449, %3434 ]
  %3460 = phi float [ %3456, %3451 ], [ %3450, %3434 ]
  %3461 = fmul fast float %3458, %3429
  %3462 = select i1 %167, float %3461, float %3458
  %3463 = call float @dx.op.dot3.f32(i32 55, float %3462, float %3459, float %3460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3464 = select i1 %167, float 0.000000e+00, float %3458
  %3465 = select i1 %167, float %3463, float %3459
  %3466 = select i1 %167, float 0.000000e+00, float %3460
  br label %3467

; <label>:3467                                    ; preds = %3457, %3419
  %3468 = phi float [ %3464, %3457 ], [ 0.000000e+00, %3419 ]
  %3469 = phi float [ %3465, %3457 ], [ 0.000000e+00, %3419 ]
  %3470 = phi float [ %3466, %3457 ], [ 0.000000e+00, %3419 ]
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = and i32 %3472, 10240
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %3519, label %3475

; <label>:3475                                    ; preds = %3467
  %3476 = add i32 %37, 564
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = add i32 %3478, 0
  %3480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3480, %dx.types.Handle %65, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 1
  %3483 = extractvalue %dx.types.ResRet.f32 %3481, 3
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = and i32 %3485, 1048576
  %3487 = icmp ne i32 %3486, 0
  %3488 = and i32 %3485, 8192
  %3489 = icmp eq i32 %3488, 0
  br i1 %3489, label %3505, label %3490

; <label>:3490                                    ; preds = %3475
  %3491 = extractvalue %dx.types.ResRet.f32 %3481, 2
  %3492 = select i1 %3487, float %3491, float %3482
  %3493 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3494 = select i1 %3487, float %3493, float %3482
  %3495 = add i32 %37, 144
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = lshr i32 %3497, 16
  %3499 = and i32 %3498, 255
  %3500 = uitofp i32 %3499 to float
  %3501 = fmul fast float %3500, 0x3F80101020000000
  %3502 = fmul fast float %3501, %3494
  %3503 = fmul fast float %3501, %3482
  %3504 = fmul fast float %3501, %3492
  br label %3505

; <label>:3505                                    ; preds = %3490, %3475
  %3506 = phi float [ %3502, %3490 ], [ 0.000000e+00, %3475 ]
  %3507 = phi float [ %3503, %3490 ], [ 0.000000e+00, %3475 ]
  %3508 = phi float [ %3504, %3490 ], [ 0.000000e+00, %3475 ]
  %3509 = and i32 %3485, 2048
  %3510 = icmp eq i32 %3509, 0
  br i1 %3510, label %3519, label %3511

; <label>:3511                                    ; preds = %3505
  %3512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.i32 %3512, 0
  %3514 = shl i32 %3513, 4
  %3515 = and i32 %3514, 32752
  %3516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3515)  ; LegacyF16ToF32(value)
  %3517 = fmul fast float %3516, %3483
  %3518 = call float @dx.op.binary.f32(i32 35, float %3517, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3519

; <label>:3519                                    ; preds = %3511, %3505, %3467
  %3520 = phi float [ %3506, %3511 ], [ %3506, %3505 ], [ 0.000000e+00, %3467 ]
  %3521 = phi float [ %3507, %3511 ], [ %3507, %3505 ], [ 0.000000e+00, %3467 ]
  %3522 = phi float [ %3508, %3511 ], [ %3508, %3505 ], [ 0.000000e+00, %3467 ]
  %3523 = phi float [ %3518, %3511 ], [ 0x3F70101020000000, %3505 ], [ 0x3F70101020000000, %3467 ]
  %3524 = add i32 %37, 144
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, 255
  %3528 = uitofp i32 %3527 to float
  %3529 = lshr i32 %3526, 8
  %3530 = and i32 %3529, 255
  %3531 = uitofp i32 %3530 to float
  %3532 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3533 = fmul fast float %3531, %3532
  %3534 = fadd fast float %3533, %3528
  %3535 = fmul fast float %3534, 0x3F70101020000000
  %3536 = call float @dx.op.unary.f32(i32 7, float %3535)  ; Saturate(value)
  br i1 %2824, label %3537, label %3545

; <label>:3537                                    ; preds = %3519
  %3538 = fsub fast float 1.000000e+00, %3120
  %3539 = fmul fast float %3538, %2809
  %3540 = fmul fast float %3538, %2810
  %3541 = fmul fast float %3538, %2811
  %3542 = fmul fast float %3538, %2815
  %3543 = fmul fast float %3538, %2816
  %3544 = fmul fast float %3538, %2817
  br label %3545

; <label>:3545                                    ; preds = %3537, %3519
  %3546 = phi float [ %3539, %3537 ], [ %2809, %3519 ]
  %3547 = phi float [ %3540, %3537 ], [ %2810, %3519 ]
  %3548 = phi float [ %3541, %3537 ], [ %2811, %3519 ]
  %3549 = phi float [ %3542, %3537 ], [ %2815, %3519 ]
  %3550 = phi float [ %3543, %3537 ], [ %2816, %3519 ]
  %3551 = phi float [ %3544, %3537 ], [ %2817, %3519 ]
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = and i32 %3553, 3
  %3555 = icmp eq i32 %3554, 3
  br i1 %3555, label %3634, label %3556

; <label>:3556                                    ; preds = %3545
  %3557 = and i32 %3553, 16
  %3558 = icmp ne i32 %3557, 0
  %3559 = select i1 %3558, float %3120, float 0.000000e+00
  %3560 = icmp eq i32 %3554, 0
  br i1 %3560, label %3561, label %3589

; <label>:3561                                    ; preds = %3556
  %3562 = and i32 %3553, 64
  %3563 = icmp ne i32 %3562, 0
  %3564 = select i1 %3563, float %3120, float 0.000000e+00
  %3565 = fsub fast float %3340, %3546
  %3566 = fsub fast float %3341, %3547
  %3567 = fsub fast float %3342, %3548
  %3568 = fmul fast float %3559, %3565
  %3569 = fmul fast float %3559, %3566
  %3570 = fmul fast float %3559, %3567
  %3571 = fadd fast float %3568, %3546
  %3572 = fadd fast float %3569, %3547
  %3573 = fadd fast float %3570, %3548
  %3574 = fsub fast float %3326, %2818
  %3575 = fmul fast float %3559, %3574
  %3576 = fadd fast float %3575, %2818
  %3577 = fsub fast float %3468, %3549
  %3578 = fsub fast float %3469, %3550
  %3579 = fsub fast float %3470, %3551
  %3580 = fmul fast float %3564, %3577
  %3581 = fmul fast float %3564, %3578
  %3582 = fmul fast float %3564, %3579
  %3583 = fadd fast float %3580, %3549
  %3584 = fadd fast float %3581, %3550
  %3585 = fadd fast float %3582, %3551
  %3586 = fsub fast float %3536, %2822
  %3587 = fmul fast float %3559, %3586
  %3588 = fadd fast float %3587, %2822
  br label %3634

; <label>:3589                                    ; preds = %3556
  %3590 = icmp eq i32 %3554, 1
  br i1 %3590, label %3591, label %3604

; <label>:3591                                    ; preds = %3589
  %3592 = fadd fast float %3340, -1.000000e+00
  %3593 = fadd fast float %3341, -1.000000e+00
  %3594 = fadd fast float %3342, -1.000000e+00
  %3595 = fmul fast float %3559, %3592
  %3596 = fmul fast float %3559, %3593
  %3597 = fmul fast float %3559, %3594
  %3598 = fadd fast float %3595, 1.000000e+00
  %3599 = fadd fast float %3596, 1.000000e+00
  %3600 = fadd fast float %3597, 1.000000e+00
  %3601 = fmul fast float %3598, %3546
  %3602 = fmul fast float %3599, %3547
  %3603 = fmul fast float %3600, %3548
  br label %3634

; <label>:3604                                    ; preds = %3589
  %3605 = icmp eq i32 %3554, 2
  br i1 %3605, label %3606, label %3634

; <label>:3606                                    ; preds = %3604
  %3607 = call float @dx.op.unary.f32(i32 24, float %3340)  ; Sqrt(value)
  %3608 = call float @dx.op.unary.f32(i32 24, float %3341)  ; Sqrt(value)
  %3609 = call float @dx.op.unary.f32(i32 24, float %3342)  ; Sqrt(value)
  %3610 = fadd fast float %3607, -5.000000e-01
  %3611 = fadd fast float %3608, -5.000000e-01
  %3612 = fadd fast float %3609, -5.000000e-01
  %3613 = fmul fast float %3610, %3559
  %3614 = fmul fast float %3611, %3559
  %3615 = fmul fast float %3612, %3559
  %3616 = fadd fast float %3613, 5.000000e-01
  %3617 = fadd fast float %3614, 5.000000e-01
  %3618 = fadd fast float %3615, 5.000000e-01
  %3619 = fmul fast float %3616, 2.000000e+00
  %3620 = fsub fast float 1.000000e+00, %3619
  %3621 = fmul fast float %3620, %3546
  %3622 = fadd fast float %3621, %3619
  %3623 = fmul fast float %3622, %3546
  %3624 = fmul fast float %3617, 2.000000e+00
  %3625 = fsub fast float 1.000000e+00, %3624
  %3626 = fmul fast float %3625, %3547
  %3627 = fadd fast float %3626, %3624
  %3628 = fmul fast float %3627, %3547
  %3629 = fmul fast float %3618, 2.000000e+00
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = fmul fast float %3630, %3548
  %3632 = fadd fast float %3631, %3629
  %3633 = fmul fast float %3632, %3548
  br label %3634

; <label>:3634                                    ; preds = %3606, %3604, %3591, %3561, %3545
  %3635 = phi float [ %3546, %3545 ], [ %3623, %3606 ], [ %3546, %3604 ], [ %3601, %3591 ], [ %3571, %3561 ]
  %3636 = phi float [ %3547, %3545 ], [ %3628, %3606 ], [ %3547, %3604 ], [ %3602, %3591 ], [ %3572, %3561 ]
  %3637 = phi float [ %3548, %3545 ], [ %3633, %3606 ], [ %3548, %3604 ], [ %3603, %3591 ], [ %3573, %3561 ]
  %3638 = phi float [ %3549, %3545 ], [ %3549, %3606 ], [ %3549, %3604 ], [ %3549, %3591 ], [ %3583, %3561 ]
  %3639 = phi float [ %3550, %3545 ], [ %3550, %3606 ], [ %3550, %3604 ], [ %3550, %3591 ], [ %3584, %3561 ]
  %3640 = phi float [ %3551, %3545 ], [ %3551, %3606 ], [ %3551, %3604 ], [ %3551, %3591 ], [ %3585, %3561 ]
  %3641 = phi float [ %2818, %3545 ], [ %2818, %3606 ], [ %2818, %3604 ], [ %2818, %3591 ], [ %3576, %3561 ]
  %3642 = phi float [ %2822, %3545 ], [ %2822, %3606 ], [ %2822, %3604 ], [ %2822, %3591 ], [ %3588, %3561 ]
  %3643 = and i32 %3553, 12
  %3644 = icmp eq i32 %3643, 12
  br i1 %3644, label %3751, label %3645

; <label>:3645                                    ; preds = %3634
  %3646 = and i32 %3553, 2097184
  %3647 = icmp eq i32 %3646, 2097184
  %3648 = select i1 %3647, float %3120, float 0.000000e+00
  %3649 = and i32 %3553, 4194336
  %3650 = icmp eq i32 %3649, 4194336
  %3651 = select i1 %3650, float %3120, float 0.000000e+00
  %3652 = and i32 %3553, 8388640
  %3653 = icmp eq i32 %3652, 8388640
  %3654 = select i1 %3653, float %3120, float 0.000000e+00
  %3655 = and i32 %3553, 2048
  %3656 = icmp ne i32 %3655, 0
  %3657 = select i1 %3656, float %3120, float 0.000000e+00
  %3658 = and i32 %3553, 8192
  %3659 = icmp ne i32 %3658, 0
  %3660 = select i1 %3659, float %3120, float 0.000000e+00
  %3661 = icmp eq i32 %3643, 0
  br i1 %3661, label %3662, label %3687

; <label>:3662                                    ; preds = %3645
  %3663 = fsub fast float %3421, %2807
  %3664 = fsub fast float %3422, %2808
  %3665 = fmul fast float %3648, %3663
  %3666 = fmul fast float %3648, %3664
  %3667 = fadd fast float %3665, %2807
  %3668 = fadd fast float %3666, %2808
  %3669 = fsub fast float %3423, %2820
  %3670 = fmul fast float %3651, %3669
  %3671 = fadd fast float %3670, %2820
  %3672 = fsub fast float %3420, %2819
  %3673 = fmul fast float %3654, %3672
  %3674 = fadd fast float %3673, %2819
  %3675 = fsub fast float %3523, %2821
  %3676 = fmul fast float %3657, %3675
  %3677 = fadd fast float %3676, %2821
  %3678 = fsub fast float %3520, %2812
  %3679 = fsub fast float %3521, %2813
  %3680 = fsub fast float %3522, %2814
  %3681 = fmul fast float %3660, %3678
  %3682 = fmul fast float %3660, %3679
  %3683 = fmul fast float %3660, %3680
  %3684 = fadd fast float %3681, %2812
  %3685 = fadd fast float %3682, %2813
  %3686 = fadd fast float %3683, %2814
  br label %3751

; <label>:3687                                    ; preds = %3645
  %3688 = icmp eq i32 %3643, 4
  br i1 %3688, label %3689, label %3729

; <label>:3689                                    ; preds = %3687
  %3690 = fmul fast float %3648, %3421
  %3691 = fmul fast float %3648, %3422
  %3692 = fadd fast float %3690, %2807
  %3693 = fadd fast float %3691, %2808
  %3694 = call float @dx.op.binary.f32(i32 36, float %2820, float %3423)  ; FMin(a,b)
  %3695 = fsub fast float %3694, %2820
  %3696 = fmul fast float %3695, %3651
  %3697 = fadd fast float %3696, %2820
  %3698 = fadd fast float %3420, %2819
  %3699 = fmul fast float %3698, 0x3FF337FAE0000000
  %3700 = fmul fast float %2819, %2819
  %3701 = fmul fast float %3420, %3420
  %3702 = fadd fast float %3701, %3700
  %3703 = fmul fast float %3702, 0x3FE5152B00000000
  %3704 = fmul fast float %2819, 0xBFCC1F85E0000000
  %3705 = fmul fast float %3704, %3420
  %3706 = fadd fast float %3705, 0xBFE1363700000000
  %3707 = fadd fast float %3706, %3699
  %3708 = fsub fast float %3707, %3703
  %3709 = fmul fast float %3698, 0x3FBA6F0D00000000
  %3710 = fmul fast float %3702, 0x3FD0432880000000
  %3711 = fmul fast float %2819, 0xBFEF110800000000
  %3712 = fmul fast float %3711, %3420
  %3713 = fadd fast float %3712, 1.000000e+00
  %3714 = fsub fast float %3713, %3709
  %3715 = fadd fast float %3714, %3710
  %3716 = fdiv fast float %3708, %3715
  %3717 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3718 = fsub fast float %3717, %2819
  %3719 = fmul fast float %3718, %3654
  %3720 = fadd fast float %3719, %2819
  %3721 = fmul fast float %3657, %3523
  %3722 = fadd fast float %3721, %2821
  %3723 = fmul fast float %3660, %3520
  %3724 = fmul fast float %3660, %3521
  %3725 = fmul fast float %3660, %3522
  %3726 = fadd fast float %3723, %2812
  %3727 = fadd fast float %3724, %2813
  %3728 = fadd fast float %3725, %2814
  br label %3751

; <label>:3729                                    ; preds = %3687
  %3730 = icmp eq i32 %3643, 8
  br i1 %3730, label %3731, label %3751

; <label>:3731                                    ; preds = %3729
  %3732 = fmul fast float %3648, %3421
  %3733 = fmul fast float %3648, %3422
  %3734 = fadd fast float %3732, %2807
  %3735 = fadd fast float %3733, %2808
  %3736 = call float @dx.op.binary.f32(i32 36, float %2820, float %3423)  ; FMin(a,b)
  %3737 = fsub fast float %3736, %2820
  %3738 = fmul fast float %3737, %3651
  %3739 = fadd fast float %3738, %2820
  %3740 = fsub fast float %3420, %2819
  %3741 = fmul fast float %3654, %3740
  %3742 = fadd fast float %3741, %2819
  %3743 = fmul fast float %3657, %3523
  %3744 = fadd fast float %3743, %2821
  %3745 = fmul fast float %3660, %3520
  %3746 = fmul fast float %3660, %3521
  %3747 = fmul fast float %3660, %3522
  %3748 = fadd fast float %3745, %2812
  %3749 = fadd fast float %3746, %2813
  %3750 = fadd fast float %3747, %2814
  br label %3751

; <label>:3751                                    ; preds = %3731, %3729, %3689, %3662, %3634, %3119, %2823, %2806
  %3752 = phi float [ %2807, %3634 ], [ %2807, %3119 ], [ %2807, %2806 ], [ %2807, %2823 ], [ %3667, %3662 ], [ %3692, %3689 ], [ %2807, %3729 ], [ %3734, %3731 ]
  %3753 = phi float [ %2808, %3634 ], [ %2808, %3119 ], [ %2808, %2806 ], [ %2808, %2823 ], [ %3668, %3662 ], [ %3693, %3689 ], [ %2808, %3729 ], [ %3735, %3731 ]
  %3754 = phi float [ %3635, %3634 ], [ %2809, %3119 ], [ %2809, %2806 ], [ %2809, %2823 ], [ %3635, %3662 ], [ %3635, %3689 ], [ %3635, %3729 ], [ %3635, %3731 ]
  %3755 = phi float [ %3636, %3634 ], [ %2810, %3119 ], [ %2810, %2806 ], [ %2810, %2823 ], [ %3636, %3662 ], [ %3636, %3689 ], [ %3636, %3729 ], [ %3636, %3731 ]
  %3756 = phi float [ %3637, %3634 ], [ %2811, %3119 ], [ %2811, %2806 ], [ %2811, %2823 ], [ %3637, %3662 ], [ %3637, %3689 ], [ %3637, %3729 ], [ %3637, %3731 ]
  %3757 = phi float [ %2812, %3634 ], [ %2812, %3119 ], [ %2812, %2806 ], [ %2812, %2823 ], [ %3684, %3662 ], [ %3726, %3689 ], [ %2812, %3729 ], [ %3748, %3731 ]
  %3758 = phi float [ %2813, %3634 ], [ %2813, %3119 ], [ %2813, %2806 ], [ %2813, %2823 ], [ %3685, %3662 ], [ %3727, %3689 ], [ %2813, %3729 ], [ %3749, %3731 ]
  %3759 = phi float [ %2814, %3634 ], [ %2814, %3119 ], [ %2814, %2806 ], [ %2814, %2823 ], [ %3686, %3662 ], [ %3728, %3689 ], [ %2814, %3729 ], [ %3750, %3731 ]
  %3760 = phi float [ %3638, %3634 ], [ %2815, %3119 ], [ %2815, %2806 ], [ %2815, %2823 ], [ %3638, %3662 ], [ %3638, %3689 ], [ %3638, %3729 ], [ %3638, %3731 ]
  %3761 = phi float [ %3639, %3634 ], [ %2816, %3119 ], [ %2816, %2806 ], [ %2816, %2823 ], [ %3639, %3662 ], [ %3639, %3689 ], [ %3639, %3729 ], [ %3639, %3731 ]
  %3762 = phi float [ %3640, %3634 ], [ %2817, %3119 ], [ %2817, %2806 ], [ %2817, %2823 ], [ %3640, %3662 ], [ %3640, %3689 ], [ %3640, %3729 ], [ %3640, %3731 ]
  %3763 = phi float [ %3641, %3634 ], [ %2818, %3119 ], [ %2818, %2806 ], [ %2818, %2823 ], [ %3641, %3662 ], [ %3641, %3689 ], [ %3641, %3729 ], [ %3641, %3731 ]
  %3764 = phi float [ %2819, %3634 ], [ %2819, %3119 ], [ %2819, %2806 ], [ %2819, %2823 ], [ %3674, %3662 ], [ %3720, %3689 ], [ %2819, %3729 ], [ %3742, %3731 ]
  %3765 = phi float [ %2820, %3634 ], [ %2820, %3119 ], [ %2820, %2806 ], [ %2820, %2823 ], [ %3671, %3662 ], [ %3697, %3689 ], [ %2820, %3729 ], [ %3739, %3731 ]
  %3766 = phi float [ %2821, %3634 ], [ %2821, %3119 ], [ %2821, %2806 ], [ %2821, %2823 ], [ %3677, %3662 ], [ %3722, %3689 ], [ %2821, %3729 ], [ %3744, %3731 ]
  %3767 = phi float [ %3642, %3634 ], [ %2822, %3119 ], [ %2822, %2806 ], [ %2822, %2823 ], [ %3642, %3662 ], [ %3642, %3689 ], [ %3642, %3729 ], [ %3642, %3731 ]
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = call float @dx.op.dot2.f32(i32 54, float %3752, float %3753, float %3752, float %3753)  ; Dot2(ax,ay,bx,by)
  %3771 = fmul fast float %3770, 0x3FE3333340000000
  %3772 = fsub fast float 1.000000e+00, %3771
  %3773 = call float @dx.op.dot3.f32(i32 55, float %3752, float %3753, float %3772, float %3752, float %3753, float %3772)  ; Dot3(ax,ay,az,bx,by,bz)
  %3774 = call float @dx.op.unary.f32(i32 25, float %3773)  ; Rsqrt(value)
  %3775 = fmul fast float %3774, %3752
  %3776 = fmul fast float %3774, %3753
  %3777 = fmul fast float %3772, %3774
  %3778 = fmul fast float %3777, %77
  %3779 = fmul fast float %3777, %79
  %3780 = fmul fast float %3777, %81
  %3781 = fmul fast float %3775, %49
  %3782 = fmul fast float %3775, %50
  %3783 = fmul fast float %3775, %51
  %3784 = fmul fast float %84, %52
  %3785 = fmul fast float %3784, %3776
  %3786 = fmul fast float %87, %52
  %3787 = fmul fast float %3786, %3776
  %3788 = fmul fast float %90, %52
  %3789 = fmul fast float %3788, %3776
  %3790 = fadd fast float %3785, %3781
  %3791 = fmul fast float %3790, %70
  %3792 = fadd fast float %3791, %3778
  %3793 = fadd fast float %3787, %3782
  %3794 = fmul fast float %3793, %70
  %3795 = fadd fast float %3794, %3779
  %3796 = fadd fast float %3789, %3783
  %3797 = fmul fast float %3796, %70
  %3798 = fadd fast float %3797, %3780
  %3799 = call float @dx.op.dot3.f32(i32 55, float %3792, float %3795, float %3798, float %3792, float %3795, float %3798)  ; Dot3(ax,ay,az,bx,by,bz)
  %3800 = call float @dx.op.unary.f32(i32 25, float %3799)  ; Rsqrt(value)
  %3801 = fmul fast float %3792, %3800
  %3802 = fmul fast float %3795, %3800
  %3803 = fmul fast float %3798, %3800
  br i1 %130, label %3868, label %3804, !dx.controlflow.hints !75

; <label>:3804                                    ; preds = %3751
  %3805 = add i32 %37, 376
  %3806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3807 = extractvalue %dx.types.ResRet.i32 %3806, 0
  %3808 = bitcast i32 %3807 to float
  %3809 = add i32 %37, 572
  %3810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3809, i32 undef)  ; BufferLoad(srv,index,wot)
  %3811 = extractvalue %dx.types.ResRet.i32 %3810, 0
  %3812 = add i32 %3811, 0
  %3813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3813, %dx.types.Handle %65, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3815 = extractvalue %dx.types.ResRet.f32 %3814, 0
  %3816 = fmul fast float %3815, %3808
  %3817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3805, i32 undef)  ; BufferLoad(srv,index,wot)
  %3818 = extractvalue %dx.types.ResRet.i32 %3817, 1
  %3819 = bitcast i32 %3818 to float
  %3820 = extractvalue %dx.types.ResRet.i32 %3817, 2
  %3821 = bitcast i32 %3820 to float
  %3822 = fsub fast float %3821, %3819
  %3823 = call float @dx.op.binary.f32(i32 35, float %3822, float 0x3FB99999A0000000)  ; FMax(a,b)
  %3824 = fsub fast float %39, %3819
  %3825 = fdiv fast float %3824, %3823
  %3826 = call float @dx.op.unary.f32(i32 7, float %3825)  ; Saturate(value)
  %3827 = fsub fast float 1.000000e+00, %3826
  %3828 = fmul fast float %3816, %3827
  %3829 = add i32 %37, 392
  %3830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3829, i32 undef)  ; BufferLoad(srv,index,wot)
  %3831 = extractvalue %dx.types.ResRet.i32 %3830, 0
  %3832 = bitcast i32 %3831 to float
  %3833 = fcmp fast une float %3832, -1.000000e+00
  br i1 %3833, label %3834, label %3850, !dx.controlflow.hints !76

; <label>:3834                                    ; preds = %3804
  %3835 = extractvalue %dx.types.ResRet.i32 %3830, 1
  %3836 = bitcast i32 %3835 to float
  %3837 = fmul fast float %124, %124
  %3838 = fmul fast float %125, %125
  %3839 = fadd fast float %3837, %3838
  %3840 = fmul fast float %126, %126
  %3841 = fadd fast float %3839, %3840
  %3842 = call float @dx.op.unary.f32(i32 24, float %3841)  ; Sqrt(value)
  %3843 = fsub fast float %3842, %3832
  %3844 = fsub fast float %3836, %3832
  %3845 = fdiv fast float %3843, %3844
  %3846 = call float @dx.op.unary.f32(i32 7, float %3845)  ; Saturate(value)
  %3847 = fsub fast float 1.000000e+00, %3828
  %3848 = fmul fast float %3846, %3847
  %3849 = fadd fast float %3848, %3828
  br label %3850

; <label>:3850                                    ; preds = %3834, %3804
  %3851 = phi float [ %3849, %3834 ], [ %3828, %3804 ]
  %3852 = call float @dx.op.dot3.f32(i32 55, float %3754, float %3755, float %3756, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3853 = fmul fast float %40, 2.500000e+00
  %3854 = fmul fast float %3853, %3852
  %3855 = fmul fast float %41, 2.500000e+00
  %3856 = fmul fast float %3855, %3852
  %3857 = fmul fast float %42, 2.500000e+00
  %3858 = fmul fast float %3857, %3852
  %3859 = fsub fast float %3854, %3754
  %3860 = fsub fast float %3856, %3755
  %3861 = fsub fast float %3858, %3756
  %3862 = fmul fast float %3859, %3851
  %3863 = fmul fast float %3860, %3851
  %3864 = fmul fast float %3861, %3851
  %3865 = fadd fast float %3862, %3754
  %3866 = fadd fast float %3863, %3755
  %3867 = fadd fast float %3864, %3756
  br label %3868

; <label>:3868                                    ; preds = %3850, %3751
  %3869 = phi float [ %3754, %3751 ], [ %3865, %3850 ]
  %3870 = phi float [ %3755, %3751 ], [ %3866, %3850 ]
  %3871 = phi float [ %3756, %3751 ], [ %3867, %3850 ]
  %3872 = fadd fast float %3763, 0xBFB99999A0000000
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = fmul fast float %3873, 0x3FF1C71C80000000
  %3875 = call float @dx.op.binary.f32(i32 36, float %3763, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3876 = fsub fast float 1.000000e+00, %3874
  %3877 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3878 = fmul fast float %3877, %3869
  %3879 = fmul fast float %3877, %3870
  %3880 = fmul fast float %3877, %3871
  %3881 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3882 = call float @dx.op.unary.f32(i32 7, float %3879)  ; Saturate(value)
  %3883 = call float @dx.op.unary.f32(i32 7, float %3880)  ; Saturate(value)
  %3884 = fmul fast float %3874, %3869
  %3885 = fmul fast float %3874, %3870
  %3886 = fmul fast float %3874, %3871
  %3887 = fadd fast float %3884, %3875
  %3888 = fadd fast float %3885, %3875
  %3889 = fadd fast float %3886, %3875
  %3890 = call float @dx.op.unary.f32(i32 7, float %3887)  ; Saturate(value)
  %3891 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3892 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3893 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3895 = extractvalue %dx.types.ResRet.i32 %3894, 0
  %3896 = and i32 %3895, 1
  %3897 = icmp eq i32 %3896, 0
  br i1 %3897, label %3912, label %3898

; <label>:3898                                    ; preds = %3868
  %3899 = call float @dx.op.binary.f32(i32 35, float %3882, float %3883)  ; FMax(a,b)
  %3900 = call float @dx.op.binary.f32(i32 35, float %3881, float %3899)  ; FMax(a,b)
  %3901 = fcmp fast ogt float %3900, 0.000000e+00
  %3902 = bitcast float %3900 to i32
  %3903 = sub nsw i32 2129859010, %3902
  %3904 = bitcast i32 %3903 to float
  %3905 = select i1 %3901, float %3904, float 0.000000e+00
  %3906 = fmul fast float %3881, %3757
  %3907 = fmul fast float %3882, %3758
  %3908 = fmul fast float %3883, %3759
  %3909 = fmul fast float %3906, %3905
  %3910 = fmul fast float %3907, %3905
  %3911 = fmul fast float %3908, %3905
  br label %3912

; <label>:3912                                    ; preds = %3898, %3868
  %3913 = phi float [ %3909, %3898 ], [ %3757, %3868 ]
  %3914 = phi float [ %3910, %3898 ], [ %3758, %3868 ]
  %3915 = phi float [ %3911, %3898 ], [ %3759, %3868 ]
  %3916 = fadd fast float %3881, 0xBFD51EB860000000
  %3917 = fadd fast float %3882, 0xBFD51EB860000000
  %3918 = fadd fast float %3883, 0xBFD51EB860000000
  %3919 = fmul fast float %3916, %3916
  %3920 = fmul fast float %3917, %3917
  %3921 = fmul fast float %3918, %3918
  %3922 = fmul fast float %3919, %3919
  %3923 = fmul fast float %3922, 1.000000e+02
  %3924 = fmul fast float %3920, %3920
  %3925 = fmul fast float %3924, 1.000000e+02
  %3926 = fmul fast float %3921, %3921
  %3927 = fmul fast float %3926, 1.000000e+02
  %3928 = fadd fast float %3923, 3.500000e+00
  %3929 = fadd fast float %3925, 3.500000e+00
  %3930 = fadd fast float %3927, 3.500000e+00
  %3931 = call float @dx.op.binary.f32(i32 35, float %3913, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3932 = call float @dx.op.binary.f32(i32 35, float %3914, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3933 = call float @dx.op.binary.f32(i32 35, float %3915, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3934 = fdiv fast float %3928, %3931
  %3935 = fdiv fast float %3929, %3932
  %3936 = fdiv fast float %3930, %3933
  %3937 = fmul fast float %3766, 0xBFF7154760000000
  %3938 = fmul fast float %3937, %3934
  %3939 = call float @dx.op.unary.f32(i32 21, float %3938)  ; Exp(value)
  %3940 = fmul fast float %3939, 2.500000e-01
  %3941 = fmul fast float %3766, 0xBFDEC709E0000000
  %3942 = fmul fast float %3941, %3934
  %3943 = call float @dx.op.unary.f32(i32 21, float %3942)  ; Exp(value)
  %3944 = fmul fast float %3943, 7.500000e-01
  %3945 = fmul fast float %3937, %3935
  %3946 = call float @dx.op.unary.f32(i32 21, float %3945)  ; Exp(value)
  %3947 = fmul fast float %3946, 2.500000e-01
  %3948 = fmul fast float %3941, %3935
  %3949 = call float @dx.op.unary.f32(i32 21, float %3948)  ; Exp(value)
  %3950 = fmul fast float %3949, 7.500000e-01
  %3951 = fmul fast float %3937, %3936
  %3952 = call float @dx.op.unary.f32(i32 21, float %3951)  ; Exp(value)
  %3953 = fmul fast float %3952, 2.500000e-01
  %3954 = fmul fast float %3941, %3936
  %3955 = call float @dx.op.unary.f32(i32 21, float %3954)  ; Exp(value)
  %3956 = fmul fast float %3955, 7.500000e-01
  %3957 = fadd fast float %3940, %3944
  %3958 = fadd fast float %3947, %3950
  %3959 = fadd fast float %3953, %3956
  %3960 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.i32 %3960, 3
  %3962 = and i32 %3961, 8
  %3963 = icmp ne i32 %3962, 0
  %3964 = call float @dx.op.binary.f32(i32 35, float %3881, float %3869)  ; FMax(a,b)
  %3965 = call float @dx.op.binary.f32(i32 35, float %3882, float %3869)  ; FMax(a,b)
  %3966 = call float @dx.op.binary.f32(i32 35, float %3883, float %3869)  ; FMax(a,b)
  %3967 = call float @dx.op.dot3.f32(i32 55, float %3881, float %3882, float %3883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3968 = select i1 %167, float %3869, float %3881
  %3969 = select i1 %167, float %3967, float %3882
  %3970 = select i1 %167, float 1.000000e+00, float %3883
  %3971 = select i1 %3963, float %3964, float %3968
  %3972 = select i1 %3963, float %3965, float %3969
  %3973 = select i1 %3963, float %3966, float %3970
  %3974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3974, 0
  %3976 = extractvalue %dx.types.CBufRet.f32 %3974, 1
  %3977 = extractvalue %dx.types.CBufRet.f32 %3974, 2
  %3978 = fadd fast float %3975, %124
  %3979 = fadd fast float %3976, %125
  %3980 = fadd fast float %3977, %126
  %3981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3981, 0
  %3983 = extractvalue %dx.types.CBufRet.f32 %3981, 1
  %3984 = fsub fast float %3978, %3982
  %3985 = fsub fast float %3979, %3983
  %3986 = fmul fast float %3984, %3984
  %3987 = fmul fast float %3985, %3985
  %3988 = fadd fast float %3986, %3987
  %3989 = call float @dx.op.unary.f32(i32 24, float %3988)  ; Sqrt(value)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3981, 2
  %3991 = fcmp fast olt float %3989, %3990
  br i1 %3991, label %3992, label %4059

; <label>:3992                                    ; preds = %3912
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3996 = extractvalue %dx.types.CBufRet.f32 %3995, 0
  %3997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3998 = extractvalue %dx.types.CBufRet.f32 %3997, 0
  %3999 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %4000 = extractvalue %dx.types.CBufRet.f32 %3995, 1
  %4001 = extractvalue %dx.types.CBufRet.f32 %3997, 1
  %4002 = extractvalue %dx.types.CBufRet.f32 %3993, 3
  %4003 = extractvalue %dx.types.CBufRet.f32 %3995, 3
  %4004 = extractvalue %dx.types.CBufRet.f32 %3997, 3
  %4005 = fadd fast float %4002, %3978
  %4006 = fadd fast float %4003, %3979
  %4007 = fadd fast float %4004, %3980
  %4008 = fmul fast float %4005, %3994
  %4009 = call float @dx.op.tertiary.f32(i32 46, float %4006, float %3996, float %4008)  ; FMad(a,b,c)
  %4010 = call float @dx.op.tertiary.f32(i32 46, float %4007, float %3998, float %4009)  ; FMad(a,b,c)
  %4011 = fmul fast float %4005, %3999
  %4012 = call float @dx.op.tertiary.f32(i32 46, float %4006, float %4000, float %4011)  ; FMad(a,b,c)
  %4013 = call float @dx.op.tertiary.f32(i32 46, float %4007, float %4001, float %4012)  ; FMad(a,b,c)
  %4014 = fsub fast float %4010, %4002
  %4015 = fsub fast float %4013, %4003
  %4016 = fsub fast float %4014, %3982
  %4017 = fadd fast float %4016, %3990
  %4018 = fsub fast float %4015, %3983
  %4019 = fadd fast float %4018, %3990
  %4020 = extractvalue %dx.types.CBufRet.f32 %3981, 3
  %4021 = fmul fast float %4017, %4020
  %4022 = fmul fast float %4019, %4020
  %4023 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4024 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4025 = fsub fast float 1.000000e+00, %4023
  %4026 = fsub fast float 1.000000e+00, %4024
  %4027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %31, float %4025, float %4026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4028 = extractvalue %dx.types.ResRet.f32 %4027, 0
  %4029 = fcmp fast ugt float %4028, 0.000000e+00
  br i1 %4029, label %4030, label %4333

; <label>:4030                                    ; preds = %3992
  %4031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4032 = extractvalue %dx.types.CBufRet.f32 %4031, 2
  %4033 = fmul fast float %4032, %4028
  %4034 = extractvalue %dx.types.CBufRet.f32 %4031, 3
  %4035 = fadd fast float %4034, %4033
  %4036 = extractvalue %dx.types.CBufRet.f32 %3997, 2
  %4037 = fadd fast float %4035, %4004
  %4038 = fmul fast float %4010, %3998
  %4039 = call float @dx.op.tertiary.f32(i32 46, float %4013, float %4001, float %4038)  ; FMad(a,b,c)
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %4037, float %4036, float %4039)  ; FMad(a,b,c)
  %4041 = fsub fast float %4040, %4004
  %4042 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4043 = extractvalue %dx.types.CBufRet.f32 %4042, 2
  %4044 = fsub fast float %4041, %4043
  %4045 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %4025, float %4026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = extractvalue %dx.types.ResRet.f32 %4045, 1
  %4048 = extractvalue %dx.types.ResRet.f32 %4045, 2
  %4049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %31, float %4025, float %4026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = extractvalue %dx.types.ResRet.f32 %4049, 1
  %4052 = extractvalue %dx.types.ResRet.f32 %4049, 2
  %4053 = fadd fast float %4050, %4046
  %4054 = fmul fast float %4053, 0x3F847AE140000000
  %4055 = fadd fast float %4051, %4047
  %4056 = fmul fast float %4055, 0x3F847AE140000000
  %4057 = fadd fast float %4052, %4048
  %4058 = fmul fast float %4057, 0x3F847AE140000000
  br label %4333

; <label>:4059                                    ; preds = %3912
  %4060 = and i32 %146, 1
  %4061 = icmp eq i32 %4060, 0
  br i1 %4061, label %4333, label %4062

; <label>:4062                                    ; preds = %4059
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4068 = extractvalue %dx.types.CBufRet.f32 %4067, 0
  %4069 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4070 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4071 = extractvalue %dx.types.CBufRet.f32 %4067, 1
  %4072 = extractvalue %dx.types.CBufRet.f32 %4063, 3
  %4073 = extractvalue %dx.types.CBufRet.f32 %4065, 3
  %4074 = extractvalue %dx.types.CBufRet.f32 %4067, 3
  %4075 = fadd fast float %4072, %3978
  %4076 = fadd fast float %4073, %3979
  %4077 = fadd fast float %4074, %3980
  %4078 = fmul fast float %4075, %4064
  %4079 = call float @dx.op.tertiary.f32(i32 46, float %4076, float %4066, float %4078)  ; FMad(a,b,c)
  %4080 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4068, float %4079)  ; FMad(a,b,c)
  %4081 = fmul fast float %4075, %4069
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %4076, float %4070, float %4081)  ; FMad(a,b,c)
  %4083 = call float @dx.op.tertiary.f32(i32 46, float %4077, float %4071, float %4082)  ; FMad(a,b,c)
  %4084 = fsub fast float %4080, %4072
  %4085 = fsub fast float %4083, %4073
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4089 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4090 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4093 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4094 = extractvalue %dx.types.CBufRet.i32 %4093, 0
  %4095 = extractvalue %dx.types.CBufRet.i32 %4093, 1
  %4096 = udiv i32 %4095, %4094
  %4097 = fsub fast float %4084, %4087
  %4098 = fsub fast float %4085, %4088
  %4099 = call float @dx.op.binary.f32(i32 35, float %4097, float 0.000000e+00)  ; FMax(a,b)
  %4100 = call float @dx.op.binary.f32(i32 35, float %4098, float 0.000000e+00)  ; FMax(a,b)
  %4101 = call float @dx.op.binary.f32(i32 36, float %4099, float %4089)  ; FMin(a,b)
  %4102 = call float @dx.op.binary.f32(i32 36, float %4100, float %4090)  ; FMin(a,b)
  %4103 = add i32 %4094, -1
  %4104 = add i32 %4096, -1
  %4105 = fmul fast float %4101, %4092
  %4106 = fmul fast float %4102, %4092
  %4107 = fptoui float %4105 to i32
  %4108 = fptoui float %4106 to i32
  %4109 = call i32 @dx.op.binary.i32(i32 40, i32 %4107, i32 %4103)  ; UMin(a,b)
  %4110 = call i32 @dx.op.binary.i32(i32 40, i32 %4108, i32 %4104)  ; UMin(a,b)
  %4111 = mul i32 %4110, %4094
  %4112 = add i32 %4111, %4109
  %4113 = shl i32 %4112, 2
  %4114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4113, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.i32 %4114, 0
  %4116 = icmp eq i32 %4115, -1
  br i1 %4116, label %4333, label %4117

; <label>:4117                                    ; preds = %4062
  %4118 = mul i32 %4115, 148
  %4119 = add i32 %4118, 4
  %4120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = add i32 %4118, 8
  %4123 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4122, i32 undef)  ; BufferLoad(srv,index,wot)
  %4124 = extractvalue %dx.types.ResRet.f32 %4123, 0
  %4125 = add i32 %4118, 36
  %4126 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4125, i32 undef)  ; BufferLoad(srv,index,wot)
  %4127 = extractvalue %dx.types.ResRet.f32 %4126, 0
  %4128 = add i32 %4118, 60
  %4129 = add i32 %4118, 92
  %4130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4129, i32 undef)  ; BufferLoad(srv,index,wot)
  %4131 = extractvalue %dx.types.ResRet.i32 %4130, 0
  %4132 = add i32 %4118, 116
  %4133 = fsub fast float %4084, %4121
  %4134 = fsub fast float %4085, %4124
  %4135 = fmul fast float %4092, %4133
  %4136 = fmul fast float %4092, %4134
  %4137 = call float @dx.op.unary.f32(i32 7, float %4135)  ; Saturate(value)
  %4138 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4139 = fsub fast float 1.000000e+00, %4138
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4142 = call float @dx.op.unary.f32(i32 83, float %4137)  ; DerivCoarseX(value)
  %4143 = call float @dx.op.unary.f32(i32 83, float %4139)  ; DerivCoarseX(value)
  %4144 = call float @dx.op.unary.f32(i32 84, float %4137)  ; DerivCoarseY(value)
  %4145 = call float @dx.op.unary.f32(i32 84, float %4139)  ; DerivCoarseY(value)
  %4146 = fmul fast float %4142, %4141
  %4147 = fmul fast float %4143, %4141
  %4148 = fmul fast float %4144, %4141
  %4149 = fmul fast float %4145, %4141
  %4150 = call float @dx.op.dot2.f32(i32 54, float %4148, float %4149, float %4148, float %4149)  ; Dot2(ax,ay,bx,by)
  %4151 = call float @dx.op.dot2.f32(i32 54, float %4146, float %4147, float %4146, float %4147)  ; Dot2(ax,ay,bx,by)
  %4152 = call float @dx.op.binary.f32(i32 35, float %4151, float %4150)  ; FMax(a,b)
  %4153 = call float @dx.op.unary.f32(i32 23, float %4152)  ; Log(value)
  %4154 = fmul fast float %4153, 5.000000e-01
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 1
  %4157 = fadd fast float %4156, %4154
  %4158 = call float @dx.op.binary.f32(i32 35, float %4157, float 0.000000e+00)  ; FMax(a,b)
  %4159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4160 = extractvalue %dx.types.CBufRet.f32 %4159, 3
  %4161 = fadd fast float %4160, %4158
  %4162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4163 = extractvalue %dx.types.CBufRet.f32 %4162, 3
  %4164 = fadd fast float %4161, %4163
  %4165 = add i32 %4131, 0
  %4166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4165, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4167 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4166, i32 0)  ; GetDimensions(handle,mipLevel)
  %4168 = extractvalue %dx.types.Dimensions %4167, 0
  %4169 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4168)  ; FirstbitLo(value)
  %4170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.i32 %4170, 1
  %4172 = sub nsw i32 %4171, %4169
  %4173 = sitofp i32 %4172 to float
  %4174 = fsub fast float %4164, %4173
  %4175 = call float @dx.op.binary.f32(i32 35, float %4174, float 0.000000e+00)  ; FMax(a,b)
  %4176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4166, %dx.types.Handle %29, float %4137, float %4139, float %4127, float undef, i32 0, i32 0, i32 undef, float %4175)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = fcmp ule float %4177, 0x3FE0101020000000
  %4179 = extractvalue %dx.types.CBufRet.i32 %4170, 0
  %4180 = and i32 %4179, 128
  %4181 = icmp ne i32 %4180, 0
  %4182 = and i1 %4178, %4181
  br i1 %4182, label %4333, label %4183

; <label>:4183                                    ; preds = %4117
  %4184 = add i32 %4118, 20
  %4185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.f32 %4185, 0
  %4187 = add i32 %4118, 24
  %4188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4187, i32 undef)  ; BufferLoad(srv,index,wot)
  %4189 = extractvalue %dx.types.ResRet.f32 %4188, 0
  %4190 = add i32 %4118, 40
  %4191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4190, i32 undef)  ; BufferLoad(srv,index,wot)
  %4192 = extractvalue %dx.types.ResRet.f32 %4191, 0
  %4193 = add i32 %4118, 96
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 2
  %4198 = fmul fast float %4197, %4137
  %4199 = fmul fast float %4197, %4139
  %4200 = extractvalue %dx.types.CBufRet.f32 %4196, 3
  %4201 = fadd fast float %4198, %4200
  %4202 = fadd fast float %4199, %4200
  %4203 = add i32 %4195, 0
  %4204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4203, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4205 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4204, i32 0)  ; GetDimensions(handle,mipLevel)
  %4206 = extractvalue %dx.types.Dimensions %4205, 0
  %4207 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4206)  ; FirstbitLo(value)
  %4208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.i32 %4208, 1
  %4210 = sub nsw i32 %4209, %4207
  %4211 = sitofp i32 %4210 to float
  %4212 = fsub fast float %4161, %4211
  %4213 = call float @dx.op.binary.f32(i32 35, float %4212, float 0.000000e+00)  ; FMax(a,b)
  %4214 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4204, %dx.types.Handle %29, float %4201, float %4202, float %4192, float undef, i32 0, i32 0, i32 undef, float %4213)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4215 = extractvalue %dx.types.ResRet.f32 %4214, 0
  %4216 = fmul fast float %4215, %4186
  %4217 = fadd fast float %4216, %4189
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 0
  %4220 = extractvalue %dx.types.CBufRet.f32 %4218, 1
  %4221 = extractvalue %dx.types.CBufRet.f32 %4218, 2
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4226 = extractvalue %dx.types.CBufRet.f32 %4218, 3
  %4227 = fadd fast float %4223, %4084
  %4228 = fadd fast float %4225, %4085
  %4229 = fadd fast float %4217, %4226
  %4230 = fmul fast float %4227, %4219
  %4231 = call float @dx.op.tertiary.f32(i32 46, float %4228, float %4220, float %4230)  ; FMad(a,b,c)
  %4232 = call float @dx.op.tertiary.f32(i32 46, float %4229, float %4221, float %4231)  ; FMad(a,b,c)
  %4233 = fsub fast float %4232, %4226
  %4234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4234, 2
  %4236 = fsub fast float %4233, %4235
  %4237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4238 = extractvalue %dx.types.CBufRet.i32 %4237, 0
  %4239 = call i32 @dx.op.binary.i32(i32 40, i32 %4115, i32 %4238)  ; UMin(a,b)
  %4240 = mul i32 %4239, 36
  %4241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.i32 %4241, 0
  %4243 = add i32 %4240, 4
  %4244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4245 = extractvalue %dx.types.CBufRet.f32 %4244, 0
  %4246 = fmul fast float %4245, %4137
  %4247 = fmul fast float %4245, %4139
  %4248 = extractvalue %dx.types.CBufRet.f32 %4244, 1
  %4249 = fadd fast float %4246, %4248
  %4250 = fadd fast float %4247, %4248
  %4251 = icmp eq i32 %4242, 0
  br i1 %4251, label %4320, label %4252

; <label>:4252                                    ; preds = %4183
  br label %4253

; <label>:4253                                    ; preds = %4310, %4252
  %4254 = phi float [ %4311, %4310 ], [ 0.000000e+00, %4252 ]
  %4255 = phi float [ %4312, %4310 ], [ 0.000000e+00, %4252 ]
  %4256 = phi float [ %4313, %4310 ], [ 0.000000e+00, %4252 ]
  %4257 = phi float [ %4314, %4310 ], [ 0.000000e+00, %4252 ]
  %4258 = phi float [ %4315, %4310 ], [ 0.000000e+00, %4252 ]
  %4259 = phi float [ %4316, %4310 ], [ 0.000000e+00, %4252 ]
  %4260 = phi i32 [ %4317, %4310 ], [ 0, %4252 ]
  %4261 = shl i32 %4260, 2
  %4262 = add i32 %4128, %4261
  %4263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4262, i32 undef)  ; BufferLoad(srv,index,wot)
  %4264 = extractvalue %dx.types.ResRet.f32 %4263, 0
  %4265 = add i32 %4132, %4261
  %4266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4265, i32 undef)  ; BufferLoad(srv,index,wot)
  %4267 = extractvalue %dx.types.ResRet.i32 %4266, 0
  %4268 = add i32 %4267, 0
  %4269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4268, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4270 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4269, i32 0)  ; GetDimensions(handle,mipLevel)
  %4271 = extractvalue %dx.types.Dimensions %4270, 0
  %4272 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4271)  ; FirstbitLo(value)
  %4273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.i32 %4273, 1
  %4275 = sub nsw i32 %4274, %4272
  %4276 = sitofp i32 %4275 to float
  %4277 = fsub fast float %4161, %4276
  %4278 = call float @dx.op.binary.f32(i32 35, float %4277, float 0.000000e+00)  ; FMax(a,b)
  %4279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4269, %dx.types.Handle %29, float %4249, float %4250, float %4264, float undef, i32 0, i32 0, i32 undef, float %4278)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = fcmp fast ogt float %4280, 0.000000e+00
  br i1 %4281, label %4282, label %4310

; <label>:4282                                    ; preds = %4253
  %4283 = add i32 %4243, %4261
  %4284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4283, i32 undef)  ; BufferLoad(srv,index,wot)
  %4285 = extractvalue %dx.types.ResRet.i32 %4284, 0
  %4286 = and i32 %4285, 32767
  %4287 = mul nuw nsw i32 %4286, 928
  %4288 = add nuw nsw i32 %4287, 48
  %4289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4288, i32 undef)  ; BufferLoad(srv,index,wot)
  %4290 = extractvalue %dx.types.ResRet.f32 %4289, 0
  %4291 = extractvalue %dx.types.ResRet.f32 %4289, 1
  %4292 = extractvalue %dx.types.ResRet.f32 %4289, 2
  %4293 = add nuw nsw i32 %4287, 60
  %4294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = extractvalue %dx.types.ResRet.f32 %4294, 1
  %4297 = extractvalue %dx.types.ResRet.f32 %4294, 2
  %4298 = fmul fast float %4290, %4280
  %4299 = fmul fast float %4291, %4280
  %4300 = fmul fast float %4292, %4280
  %4301 = fadd fast float %4298, %4254
  %4302 = fadd fast float %4299, %4255
  %4303 = fadd fast float %4300, %4256
  %4304 = fmul fast float %4295, %4280
  %4305 = fmul fast float %4296, %4280
  %4306 = fmul fast float %4297, %4280
  %4307 = fadd fast float %4304, %4257
  %4308 = fadd fast float %4305, %4258
  %4309 = fadd fast float %4306, %4259
  br label %4310

; <label>:4310                                    ; preds = %4282, %4253
  %4311 = phi float [ %4301, %4282 ], [ %4254, %4253 ]
  %4312 = phi float [ %4302, %4282 ], [ %4255, %4253 ]
  %4313 = phi float [ %4303, %4282 ], [ %4256, %4253 ]
  %4314 = phi float [ %4307, %4282 ], [ %4257, %4253 ]
  %4315 = phi float [ %4308, %4282 ], [ %4258, %4253 ]
  %4316 = phi float [ %4309, %4282 ], [ %4259, %4253 ]
  %4317 = add nuw i32 %4260, 1
  %4318 = icmp eq i32 %4317, %4242
  br i1 %4318, label %4319, label %4253

; <label>:4319                                    ; preds = %4310
  br label %4320

; <label>:4320                                    ; preds = %4319, %4183
  %4321 = phi float [ 0.000000e+00, %4183 ], [ %4311, %4319 ]
  %4322 = phi float [ 0.000000e+00, %4183 ], [ %4312, %4319 ]
  %4323 = phi float [ 0.000000e+00, %4183 ], [ %4313, %4319 ]
  %4324 = phi float [ 0.000000e+00, %4183 ], [ %4314, %4319 ]
  %4325 = phi float [ 0.000000e+00, %4183 ], [ %4315, %4319 ]
  %4326 = phi float [ 0.000000e+00, %4183 ], [ %4316, %4319 ]
  %4327 = fadd fast float %4324, %4321
  %4328 = fmul fast float %4327, 0x3F847AE140000000
  %4329 = fadd fast float %4325, %4322
  %4330 = fmul fast float %4329, 0x3F847AE140000000
  %4331 = fadd fast float %4326, %4323
  %4332 = fmul fast float %4331, 0x3F847AE140000000
  br label %4333

; <label>:4333                                    ; preds = %4320, %4117, %4062, %4059, %4030, %3992
  %4334 = phi float [ %4044, %4030 ], [ -1.310720e+05, %3992 ], [ %4236, %4320 ], [ -1.310720e+05, %4062 ], [ -1.310720e+05, %4117 ], [ -1.310720e+05, %4059 ]
  %4335 = phi float [ %4054, %4030 ], [ 0.000000e+00, %3992 ], [ %4328, %4320 ], [ 0.000000e+00, %4062 ], [ 0.000000e+00, %4117 ], [ 0.000000e+00, %4059 ]
  %4336 = phi float [ %4056, %4030 ], [ 0.000000e+00, %3992 ], [ %4330, %4320 ], [ 0.000000e+00, %4062 ], [ 0.000000e+00, %4117 ], [ 0.000000e+00, %4059 ]
  %4337 = phi float [ %4058, %4030 ], [ 0.000000e+00, %3992 ], [ %4332, %4320 ], [ 0.000000e+00, %4062 ], [ 0.000000e+00, %4117 ], [ 0.000000e+00, %4059 ]
  %4338 = phi i1 [ true, %4030 ], [ false, %3992 ], [ true, %4320 ], [ false, %4062 ], [ false, %4117 ], [ false, %4059 ]
  %4339 = and i32 %146, 3
  %4340 = icmp eq i32 %4339, 1
  %4341 = select i1 %4340, float 1.000000e+00, float 0.000000e+00
  %4342 = fsub fast float %4334, %126
  %4343 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4344 = select i1 %4338, float %4343, float 1.000000e+00
  %4345 = fmul fast float %4344, %4341
  %4346 = icmp eq i32 %4339, 3
  %4347 = select i1 %4346, float 1.000000e+00, float %4345
  %4348 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4347)  ; FMax(a,b)
  %4349 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4350 = fcmp fast une float %4349, 0.000000e+00
  %4351 = call float @dx.op.dot3.f32(i32 55, float %124, float %125, float %126, float %124, float %125, float %126)  ; Dot3(ax,ay,az,bx,by,bz)
  %4352 = call float @dx.op.unary.f32(i32 25, float %4351)  ; Rsqrt(value)
  br i1 %4350, label %4360, label %4353

; <label>:4353                                    ; preds = %4333
  %4354 = fmul fast float %4352, %124
  %4355 = fmul fast float %4352, %125
  %4356 = fmul fast float %4352, %126
  %4357 = fsub fast float -0.000000e+00, %4354
  %4358 = fsub fast float -0.000000e+00, %4355
  %4359 = fsub fast float -0.000000e+00, %4356
  br label %4528

; <label>:4360                                    ; preds = %4333
  %4361 = fmul fast float %124, %4352
  %4362 = fsub fast float -0.000000e+00, %4361
  %4363 = fmul fast float %125, %4352
  %4364 = fsub fast float -0.000000e+00, %4363
  %4365 = fmul fast float %126, %4352
  %4366 = fsub fast float -0.000000e+00, %4365
  %4367 = call float @dx.op.dot3.f32(i32 55, float %4362, float %4364, float %4366, float %77, float %79, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4368 = fmul fast float %4349, 2.500000e+00
  %4369 = call float @dx.op.unary.f32(i32 7, float %4368)  ; Saturate(value)
  %4370 = fmul fast float %4349, 0x4013FFFFE0000000
  %4371 = fadd fast float %4370, 0xBFFFFFFFE0000000
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fmul fast float %4349, 0x4004000020000000
  %4374 = fadd fast float %4373, 0xBFF8000040000000
  %4375 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4376 = call float @dx.op.unary.f32(i32 7, float %4369)  ; Saturate(value)
  %4377 = fmul fast float %3872, 1.000000e+01
  %4378 = call float @dx.op.unary.f32(i32 7, float %4377)  ; Saturate(value)
  %4379 = fmul fast float %4378, 2.000000e+00
  %4380 = fsub fast float 3.000000e+00, %4379
  %4381 = fmul fast float %4378, %4378
  %4382 = fmul fast float %4381, %4380
  %4383 = fsub fast float 1.000000e+00, %4382
  %4384 = fsub fast float 0x3FE3333340000000, %3893
  %4385 = fmul fast float %4384, 0x400AAAAAA0000000
  %4386 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4387 = fmul fast float %4383, %4386
  %4388 = fmul fast float %3971, 0x3FEA2B8620000000
  %4389 = fmul fast float %3972, 0x3FEA2B8620000000
  %4390 = fmul fast float %3973, 0x3FEA2B8620000000
  %4391 = fadd fast float %4388, 0x3FC81DFBA0000000
  %4392 = fmul fast float %4391, %3971
  %4393 = fadd fast float %4392, 0x3F910E6020000000
  %4394 = fadd fast float %4389, 0x3FC81DFBA0000000
  %4395 = fmul fast float %4394, %3972
  %4396 = fadd fast float %4395, 0x3F910E6020000000
  %4397 = fadd fast float %4390, 0x3FC81DFBA0000000
  %4398 = fmul fast float %4397, %3973
  %4399 = fadd fast float %4398, 0x3F910E6020000000
  %4400 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4402 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4403 = fsub fast float %4400, %3971
  %4404 = fsub fast float %4401, %3972
  %4405 = fsub fast float %4402, %3973
  %4406 = fmul fast float %4403, %4376
  %4407 = fmul fast float %4406, %4387
  %4408 = fmul fast float %4404, %4376
  %4409 = fmul fast float %4408, %4387
  %4410 = fmul fast float %4405, %4376
  %4411 = fmul fast float %4410, %4387
  %4412 = fadd fast float %4407, %3971
  %4413 = fadd fast float %4409, %3972
  %4414 = fadd fast float %4411, %3973
  %4415 = fmul fast float %3765, %3765
  %4416 = fmul fast float %4415, %4415
  %4417 = fadd fast float %4372, 1.000000e+00
  %4418 = fsub fast float %4417, %4387
  %4419 = call float @dx.op.unary.f32(i32 7, float %4418)  ; Saturate(value)
  %4420 = call float @dx.op.dot3.f32(i32 55, float %77, float %79, float %81, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4421 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4422 = fsub fast float 1.000000e+00, %4416
  %4423 = call float @dx.op.binary.f32(i32 36, float %4419, float %4422)  ; FMin(a,b)
  %4424 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4425 = call float @dx.op.binary.f32(i32 35, float %4423, float %4424)  ; FMax(a,b)
  %4426 = fadd fast float %4421, 0xBFE4CCCCC0000000
  %4427 = fmul fast float %4426, 0x4006DB6DA0000000
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = fmul fast float %4428, 2.000000e+00
  %4430 = fsub fast float 3.000000e+00, %4429
  %4431 = bitcast float %3890 to i32
  %4432 = ashr i32 %4431, 1
  %4433 = add nsw i32 %4432, 532487669
  %4434 = bitcast i32 %4433 to float
  %4435 = fsub fast float 1.000000e+00, %4434
  %4436 = bitcast float %4435 to i32
  %4437 = sub nsw i32 2129859010, %4436
  %4438 = bitcast i32 %4437 to float
  %4439 = fmul fast float %4438, 2.000000e+00
  %4440 = bitcast float %3891 to i32
  %4441 = ashr i32 %4440, 1
  %4442 = add nsw i32 %4441, 532487669
  %4443 = bitcast i32 %4442 to float
  %4444 = fsub fast float 1.000000e+00, %4443
  %4445 = bitcast float %4444 to i32
  %4446 = sub nsw i32 2129859010, %4445
  %4447 = bitcast i32 %4446 to float
  %4448 = fmul fast float %4447, 2.000000e+00
  %4449 = bitcast float %3892 to i32
  %4450 = ashr i32 %4449, 1
  %4451 = add nsw i32 %4450, 532487669
  %4452 = bitcast i32 %4451 to float
  %4453 = fsub fast float 1.000000e+00, %4452
  %4454 = bitcast float %4453 to i32
  %4455 = sub nsw i32 2129859010, %4454
  %4456 = bitcast i32 %4455 to float
  %4457 = fmul fast float %4456, 2.000000e+00
  %4458 = fsub fast float 0x4002A9FBE0000000, %4439
  %4459 = fadd fast float %4439, 0x3FD54FDF00000000
  %4460 = bitcast float %4459 to i32
  %4461 = sub nsw i32 2129859010, %4460
  %4462 = bitcast i32 %4461 to float
  %4463 = fmul fast float %4462, %4458
  %4464 = fmul fast float %4463, %4463
  %4465 = fsub fast float 0x4002A9FBE0000000, %4448
  %4466 = fadd fast float %4448, 0x3FD54FDF00000000
  %4467 = bitcast float %4466 to i32
  %4468 = sub nsw i32 2129859010, %4467
  %4469 = bitcast i32 %4468 to float
  %4470 = fmul fast float %4469, %4465
  %4471 = fmul fast float %4470, %4470
  %4472 = fsub fast float 0x4002A9FBE0000000, %4457
  %4473 = fadd fast float %4457, 0x3FD54FDF00000000
  %4474 = bitcast float %4473 to i32
  %4475 = sub nsw i32 2129859010, %4474
  %4476 = bitcast i32 %4475 to float
  %4477 = fmul fast float %4476, %4472
  %4478 = fmul fast float %4477, %4477
  %4479 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4464)  ; FMax(a,b)
  %4480 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4471)  ; FMax(a,b)
  %4481 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4478)  ; FMax(a,b)
  %4482 = fsub fast float 1.000000e+00, %4367
  %4483 = fadd fast float %4482, %4383
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = fsub fast float 1.000000e+00, %4347
  %4486 = fmul fast float %4425, %4485
  %4487 = fmul fast float %4428, %4428
  %4488 = fmul fast float %4487, %4486
  %4489 = fmul fast float %4488, %4430
  %4490 = fmul fast float %4485, 0xBFE99999A0000000
  %4491 = fmul fast float %4490, %4376
  %4492 = fmul fast float %4491, %4387
  %4493 = fadd fast float %4492, 1.000000e+00
  %4494 = fadd fast float %3893, -1.000000e+00
  %4495 = fmul fast float %4493, %4494
  %4496 = fadd fast float %4495, 1.000000e+00
  %4497 = fsub fast float %4479, %3890
  %4498 = fsub fast float %4480, %3891
  %4499 = fsub fast float %4481, %3892
  %4500 = fmul fast float %4489, %4497
  %4501 = fmul fast float %4489, %4498
  %4502 = fmul fast float %4489, %4499
  %4503 = fadd fast float %4500, %3890
  %4504 = fadd fast float %4501, %3891
  %4505 = fadd fast float %4502, %3892
  %4506 = fsub fast float %77, %3801
  %4507 = fsub fast float %79, %3802
  %4508 = fsub fast float %81, %3803
  %4509 = fmul fast float %4489, %4506
  %4510 = fmul fast float %4489, %4507
  %4511 = fmul fast float %4489, %4508
  %4512 = fadd fast float %4509, %3801
  %4513 = fadd fast float %4510, %3802
  %4514 = fadd fast float %4511, %3803
  %4515 = fmul fast float %4489, %4484
  %4516 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4517 = fsub fast float 1.000000e+00, %4516
  %4518 = fmul fast float %4515, %4517
  %4519 = fadd fast float %4518, %4516
  %4520 = fsub fast float 1.000000e+00, %3765
  %4521 = fmul fast float %4489, %4520
  %4522 = fadd fast float %4521, %3765
  %4523 = call float @dx.op.dot3.f32(i32 55, float %4512, float %4513, float %4514, float %4512, float %4513, float %4514)  ; Dot3(ax,ay,az,bx,by,bz)
  %4524 = call float @dx.op.unary.f32(i32 25, float %4523)  ; Rsqrt(value)
  %4525 = fmul fast float %4512, %4524
  %4526 = fmul fast float %4513, %4524
  %4527 = fmul fast float %4514, %4524
  br label %4528

; <label>:4528                                    ; preds = %4360, %4353
  %4529 = phi float [ %4359, %4353 ], [ %4366, %4360 ]
  %4530 = phi float [ %4358, %4353 ], [ %4364, %4360 ]
  %4531 = phi float [ %4357, %4353 ], [ %4362, %4360 ]
  %4532 = phi float [ %4356, %4353 ], [ %4365, %4360 ]
  %4533 = phi float [ %4355, %4353 ], [ %4363, %4360 ]
  %4534 = phi float [ %4354, %4353 ], [ %4361, %4360 ]
  %4535 = phi float [ %3890, %4353 ], [ %4503, %4360 ]
  %4536 = phi float [ %3891, %4353 ], [ %4504, %4360 ]
  %4537 = phi float [ %3892, %4353 ], [ %4505, %4360 ]
  %4538 = phi float [ %3971, %4353 ], [ %4412, %4360 ]
  %4539 = phi float [ %3972, %4353 ], [ %4413, %4360 ]
  %4540 = phi float [ %3973, %4353 ], [ %4414, %4360 ]
  %4541 = phi float [ %3801, %4353 ], [ %4525, %4360 ]
  %4542 = phi float [ %3802, %4353 ], [ %4526, %4360 ]
  %4543 = phi float [ %3803, %4353 ], [ %4527, %4360 ]
  %4544 = phi float [ %3893, %4353 ], [ %4519, %4360 ]
  %4545 = phi float [ %3765, %4353 ], [ %4522, %4360 ]
  %4546 = select i1 %167, float 0.000000e+00, float %4537
  %4547 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float %4531, float %4530, float %4529)  ; Dot3(ax,ay,az,bx,by,bz)
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = call float @dx.op.dot3.f32(i32 55, float %4534, float %4533, float %4532, float %4541, float %4542, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %4550 = fmul fast float %4549, 2.000000e+00
  %4551 = fmul fast float %4550, %4541
  %4552 = fmul fast float %4550, %4542
  %4553 = fmul fast float %4550, %4543
  %4554 = fsub fast float %4534, %4551
  %4555 = fsub fast float %4533, %4552
  %4556 = fsub fast float %4532, %4553
  %4557 = call float @dx.op.binary.f32(i32 36, float %4545, float 1.000000e+00)  ; FMin(a,b)
  %4558 = fsub fast float 1.000000e+00, %4545
  %4559 = bitcast float %4558 to i32
  %4560 = sub nsw i32 2129859010, %4559
  %4561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4562 = extractvalue %dx.types.CBufRet.f32 %4561, 0
  %4563 = extractvalue %dx.types.CBufRet.f32 %4561, 1
  %4564 = extractvalue %dx.types.CBufRet.f32 %4561, 2
  %4565 = fadd fast float %4562, %124
  %4566 = fadd fast float %4563, %125
  %4567 = fadd fast float %4564, %126
  %4568 = fmul fast float %4541, 3.200000e+01
  %4569 = fmul fast float %4542, 3.200000e+01
  %4570 = fadd fast float %4565, %4568
  %4571 = fadd fast float %4566, %4569
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.CBufRet.f32 %4572, 1
  %4575 = fsub fast float %4570, %4573
  %4576 = fsub fast float %4571, %4574
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.CBufRet.f32 %4577, 1
  %4580 = fmul fast float %4575, %4578
  %4581 = fmul fast float %4576, %4579
  %4582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4582, 0
  %4584 = fmul fast float %4580, %4583
  %4585 = extractvalue %dx.types.CBufRet.f32 %4582, 1
  %4586 = fadd fast float %4584, %4585
  %4587 = extractvalue %dx.types.CBufRet.f32 %4582, 2
  %4588 = fmul fast float %4587, %4581
  %4589 = extractvalue %dx.types.CBufRet.f32 %4582, 3
  %4590 = fadd fast float %4588, %4589
  %4591 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %4586, float %4590, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4592 = extractvalue %dx.types.ResRet.f32 %4591, 0
  %4593 = extractvalue %dx.types.ResRet.f32 %4591, 1
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4596 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4597 = fsub fast float %4595, %4596
  %4598 = fmul fast float %4597, %4592
  %4599 = fadd fast float %4598, %4596
  %4600 = extractvalue %dx.types.CBufRet.f32 %4594, 3
  %4601 = extractvalue %dx.types.CBufRet.f32 %4594, 2
  %4602 = fsub fast float %4600, %4601
  %4603 = fmul fast float %4602, %4593
  %4604 = fadd fast float %4603, %4601
  %4605 = fsub fast float %4567, %4599
  %4606 = fsub fast float %4604, %4599
  %4607 = fdiv fast float %4605, %4606
  %4608 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 0
  %4611 = fmul fast float %4610, %4608
  %4612 = extractvalue %dx.types.CBufRet.f32 %4609, 1
  %4613 = fadd fast float %4611, %4612
  %4614 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %4586, float %4590, float %4613, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4615 = extractvalue %dx.types.ResRet.f32 %4614, 0
  %4616 = extractvalue %dx.types.ResRet.f32 %4614, 1
  %4617 = extractvalue %dx.types.ResRet.f32 %4614, 2
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4621 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4622 = fmul fast float %4619, %4615
  %4623 = fmul fast float %4620, %4616
  %4624 = fmul fast float %4621, %4617
  %4625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4626 = extractvalue %dx.types.CBufRet.f32 %4625, 0
  %4627 = extractvalue %dx.types.CBufRet.f32 %4625, 1
  %4628 = extractvalue %dx.types.CBufRet.f32 %4625, 2
  %4629 = fadd fast float %4622, %4626
  %4630 = fadd fast float %4623, %4627
  %4631 = fadd fast float %4624, %4628
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = fmul fast float %4633, %4580
  %4635 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4636 = fadd fast float %4634, %4635
  %4637 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4638 = fmul fast float %4637, %4581
  %4639 = extractvalue %dx.types.CBufRet.f32 %4632, 3
  %4640 = fadd fast float %4638, %4639
  %4641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4642 = extractvalue %dx.types.CBufRet.f32 %4641, 0
  %4643 = extractvalue %dx.types.CBufRet.f32 %4641, 1
  %4644 = extractvalue %dx.types.CBufRet.f32 %4641, 2
  %4645 = extractvalue %dx.types.CBufRet.f32 %4641, 3
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4649 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4650 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4651 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4636, float %4640, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4652 = extractvalue %dx.types.ResRet.f32 %4651, 0
  %4653 = extractvalue %dx.types.ResRet.f32 %4651, 1
  %4654 = extractvalue %dx.types.ResRet.f32 %4651, 2
  %4655 = extractvalue %dx.types.ResRet.f32 %4651, 3
  %4656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4636, float %4640, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.ResRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4656, 2
  %4660 = extractvalue %dx.types.ResRet.f32 %4656, 3
  %4661 = fmul fast float %4652, %4629
  %4662 = fmul fast float %4657, %4629
  %4663 = fmul fast float %4659, %4629
  %4664 = fmul fast float %4655, %4629
  %4665 = fadd fast float %4661, %4642
  %4666 = fadd fast float %4662, %4643
  %4667 = fadd fast float %4663, %4644
  %4668 = fadd fast float %4664, %4645
  %4669 = fmul fast float %4653, %4629
  %4670 = fmul fast float %4658, %4629
  %4671 = fadd fast float %4669, %4647
  %4672 = fadd fast float %4670, %4648
  %4673 = fmul fast float %4654, %4629
  %4674 = fmul fast float %4660, %4629
  %4675 = fadd fast float %4673, %4649
  %4676 = fadd fast float %4674, %4650
  %4677 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4636, float %4640, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4678 = extractvalue %dx.types.ResRet.f32 %4677, 0
  %4679 = extractvalue %dx.types.ResRet.f32 %4677, 1
  %4680 = extractvalue %dx.types.ResRet.f32 %4677, 2
  %4681 = extractvalue %dx.types.ResRet.f32 %4677, 3
  %4682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4636, float %4640, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4683 = extractvalue %dx.types.ResRet.f32 %4682, 0
  %4684 = extractvalue %dx.types.ResRet.f32 %4682, 1
  %4685 = extractvalue %dx.types.ResRet.f32 %4682, 2
  %4686 = extractvalue %dx.types.ResRet.f32 %4682, 3
  %4687 = fmul fast float %4678, %4630
  %4688 = fmul fast float %4683, %4630
  %4689 = fmul fast float %4685, %4630
  %4690 = fmul fast float %4681, %4630
  %4691 = fadd fast float %4665, %4687
  %4692 = fadd fast float %4666, %4688
  %4693 = fadd fast float %4667, %4689
  %4694 = fadd fast float %4668, %4690
  %4695 = fmul fast float %4679, %4630
  %4696 = fmul fast float %4684, %4630
  %4697 = fadd fast float %4671, %4695
  %4698 = fadd fast float %4672, %4696
  %4699 = fmul fast float %4680, %4630
  %4700 = fmul fast float %4686, %4630
  %4701 = fadd fast float %4675, %4699
  %4702 = fadd fast float %4676, %4700
  %4703 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4636, float %4640, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4704 = extractvalue %dx.types.ResRet.f32 %4703, 0
  %4705 = extractvalue %dx.types.ResRet.f32 %4703, 1
  %4706 = extractvalue %dx.types.ResRet.f32 %4703, 2
  %4707 = extractvalue %dx.types.ResRet.f32 %4703, 3
  %4708 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4636, float %4640, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4709 = extractvalue %dx.types.ResRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.ResRet.f32 %4708, 1
  %4711 = extractvalue %dx.types.ResRet.f32 %4708, 2
  %4712 = extractvalue %dx.types.ResRet.f32 %4708, 3
  %4713 = fmul fast float %4704, %4631
  %4714 = fmul fast float %4709, %4631
  %4715 = fmul fast float %4711, %4631
  %4716 = fmul fast float %4707, %4631
  %4717 = fadd fast float %4691, %4713
  %4718 = fadd fast float %4692, %4714
  %4719 = fadd fast float %4693, %4715
  %4720 = fadd fast float %4694, %4716
  %4721 = fmul fast float %4705, %4631
  %4722 = fmul fast float %4710, %4631
  %4723 = fadd fast float %4697, %4721
  %4724 = fadd fast float %4698, %4722
  %4725 = fmul fast float %4706, %4631
  %4726 = fmul fast float %4712, %4631
  %4727 = fadd fast float %4701, %4725
  %4728 = fadd fast float %4702, %4726
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 0
  %4731 = fsub fast float %4565, %4730
  %4732 = fsub fast float %4573, %4565
  %4733 = call float @dx.op.binary.f32(i32 35, float %4732, float %4731)  ; FMax(a,b)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4729, 1
  %4735 = fsub fast float %4566, %4734
  %4736 = fsub fast float %4574, %4566
  %4737 = call float @dx.op.binary.f32(i32 35, float %4736, float %4735)  ; FMax(a,b)
  %4738 = call float @dx.op.binary.f32(i32 35, float %4733, float %4737)  ; FMax(a,b)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4577, 3
  %4740 = fmul fast float %4739, %4738
  %4741 = call float @dx.op.unary.f32(i32 7, float %4740)  ; Saturate(value)
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4744 = extractvalue %dx.types.CBufRet.f32 %4742, 1
  %4745 = extractvalue %dx.types.CBufRet.f32 %4742, 2
  %4746 = extractvalue %dx.types.CBufRet.f32 %4742, 3
  %4747 = fsub fast float %4743, %4717
  %4748 = fsub fast float %4744, %4718
  %4749 = fsub fast float %4745, %4719
  %4750 = fsub fast float %4746, %4720
  %4751 = fmul fast float %4747, %4741
  %4752 = fmul fast float %4748, %4741
  %4753 = fmul fast float %4749, %4741
  %4754 = fmul fast float %4750, %4741
  %4755 = fadd fast float %4751, %4717
  %4756 = fadd fast float %4752, %4718
  %4757 = fadd fast float %4753, %4719
  %4758 = fadd fast float %4754, %4720
  %4759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4760 = extractvalue %dx.types.CBufRet.f32 %4759, 0
  %4761 = extractvalue %dx.types.CBufRet.f32 %4759, 1
  %4762 = fsub fast float %4760, %4723
  %4763 = fsub fast float %4761, %4724
  %4764 = fmul fast float %4762, %4741
  %4765 = fmul fast float %4763, %4741
  %4766 = fadd fast float %4764, %4723
  %4767 = fadd fast float %4765, %4724
  %4768 = extractvalue %dx.types.CBufRet.f32 %4759, 2
  %4769 = extractvalue %dx.types.CBufRet.f32 %4759, 3
  %4770 = fsub fast float %4768, %4727
  %4771 = fsub fast float %4769, %4728
  %4772 = fmul fast float %4770, %4741
  %4773 = fmul fast float %4771, %4741
  %4774 = fadd fast float %4772, %4727
  %4775 = fadd fast float %4773, %4728
  %4776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4777 = extractvalue %dx.types.CBufRet.f32 %4776, 0
  %4778 = fmul fast float %4777, %4755
  %4779 = fmul fast float %4777, %4756
  %4780 = fmul fast float %4777, %4757
  %4781 = fmul fast float %4777, %4758
  %4782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4783 = extractvalue %dx.types.CBufRet.f32 %4782, 0
  %4784 = fmul fast float %4783, %4766
  %4785 = fmul fast float %4783, %4767
  %4786 = fadd fast float %4784, %4778
  %4787 = fadd fast float %4785, %4780
  %4788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4789 = extractvalue %dx.types.CBufRet.f32 %4788, 0
  %4790 = fmul fast float %4789, %4774
  %4791 = fmul fast float %4789, %4775
  %4792 = fadd fast float %4786, %4790
  %4793 = fadd fast float %4787, %4791
  %4794 = extractvalue %dx.types.CBufRet.f32 %4776, 1
  %4795 = fmul fast float %4794, %4755
  %4796 = fmul fast float %4794, %4756
  %4797 = fmul fast float %4794, %4757
  %4798 = fmul fast float %4794, %4758
  %4799 = extractvalue %dx.types.CBufRet.f32 %4782, 1
  %4800 = fmul fast float %4799, %4766
  %4801 = fmul fast float %4799, %4767
  %4802 = fadd fast float %4800, %4795
  %4803 = fadd fast float %4801, %4797
  %4804 = extractvalue %dx.types.CBufRet.f32 %4788, 1
  %4805 = fmul fast float %4804, %4774
  %4806 = fmul fast float %4804, %4775
  %4807 = fadd fast float %4802, %4805
  %4808 = fadd fast float %4803, %4806
  %4809 = extractvalue %dx.types.CBufRet.f32 %4776, 2
  %4810 = fmul fast float %4809, %4755
  %4811 = fmul fast float %4809, %4756
  %4812 = fmul fast float %4809, %4757
  %4813 = fmul fast float %4809, %4758
  %4814 = extractvalue %dx.types.CBufRet.f32 %4782, 2
  %4815 = fmul fast float %4814, %4766
  %4816 = fmul fast float %4814, %4767
  %4817 = fadd fast float %4815, %4810
  %4818 = fadd fast float %4816, %4812
  %4819 = extractvalue %dx.types.CBufRet.f32 %4788, 2
  %4820 = fmul fast float %4819, %4774
  %4821 = fmul fast float %4819, %4775
  %4822 = fadd fast float %4817, %4820
  %4823 = fadd fast float %4818, %4821
  %4824 = fmul fast float %4811, %4811
  %4825 = fmul fast float %4823, %4823
  %4826 = fmul fast float %4813, %4813
  %4827 = fadd fast float %4826, %4824
  %4828 = fadd fast float %4827, %4825
  %4829 = call float @dx.op.unary.f32(i32 24, float %4828)  ; Sqrt(value)
  %4830 = fcmp fast ugt float %4829, 0.000000e+00
  br i1 %4830, label %4831, label %4846

; <label>:4831                                    ; preds = %4528
  %4832 = fsub fast float -0.000000e+00, %4813
  %4833 = fdiv fast float %4832, %4829
  %4834 = fsub fast float -0.000000e+00, %4811
  %4835 = fdiv fast float %4834, %4829
  %4836 = fdiv fast float %4823, %4829
  %4837 = fmul fast float %4822, 0x3FE279A760000000
  %4838 = fmul fast float %4835, %4811
  %4839 = fmul fast float %4836, %4823
  %4840 = fmul fast float %4833, %4813
  %4841 = fadd fast float %4838, %4840
  %4842 = fsub fast float %4841, %4839
  %4843 = call float @dx.op.unary.f32(i32 6, float %4842)  ; FAbs(value)
  %4844 = fadd fast float %4843, 0x3DDB7CDFE0000000
  %4845 = fdiv fast float %4837, %4844
  br label %4846

; <label>:4846                                    ; preds = %4831, %4528
  %4847 = phi float [ %4845, %4831 ], [ 1.000000e+00, %4528 ]
  %4848 = fmul fast float %4796, %4796
  %4849 = fmul fast float %4808, %4808
  %4850 = fmul fast float %4798, %4798
  %4851 = fadd fast float %4850, %4848
  %4852 = fadd fast float %4851, %4849
  %4853 = call float @dx.op.unary.f32(i32 24, float %4852)  ; Sqrt(value)
  %4854 = fcmp fast ugt float %4853, 0.000000e+00
  br i1 %4854, label %4855, label %4870

; <label>:4855                                    ; preds = %4846
  %4856 = fsub fast float -0.000000e+00, %4798
  %4857 = fdiv fast float %4856, %4853
  %4858 = fsub fast float -0.000000e+00, %4796
  %4859 = fdiv fast float %4858, %4853
  %4860 = fdiv fast float %4808, %4853
  %4861 = fmul fast float %4807, 0x3FE279A760000000
  %4862 = fmul fast float %4859, %4796
  %4863 = fmul fast float %4860, %4808
  %4864 = fmul fast float %4857, %4798
  %4865 = fadd fast float %4862, %4864
  %4866 = fsub fast float %4865, %4863
  %4867 = call float @dx.op.unary.f32(i32 6, float %4866)  ; FAbs(value)
  %4868 = fadd fast float %4867, 0x3DDB7CDFE0000000
  %4869 = fdiv fast float %4861, %4868
  br label %4870

; <label>:4870                                    ; preds = %4855, %4846
  %4871 = phi float [ %4869, %4855 ], [ 1.000000e+00, %4846 ]
  %4872 = call float @dx.op.binary.f32(i32 36, float %4871, float %4847)  ; FMin(a,b)
  %4873 = fmul fast float %4779, %4779
  %4874 = fmul fast float %4793, %4793
  %4875 = fmul fast float %4781, %4781
  %4876 = fadd fast float %4875, %4873
  %4877 = fadd fast float %4876, %4874
  %4878 = call float @dx.op.unary.f32(i32 24, float %4877)  ; Sqrt(value)
  %4879 = fcmp fast ugt float %4878, 0.000000e+00
  br i1 %4879, label %4880, label %4895

; <label>:4880                                    ; preds = %4870
  %4881 = fsub fast float -0.000000e+00, %4781
  %4882 = fdiv fast float %4881, %4878
  %4883 = fsub fast float -0.000000e+00, %4779
  %4884 = fdiv fast float %4883, %4878
  %4885 = fdiv fast float %4793, %4878
  %4886 = fmul fast float %4792, 0x3FE279A760000000
  %4887 = fmul fast float %4884, %4779
  %4888 = fmul fast float %4885, %4793
  %4889 = fmul fast float %4882, %4781
  %4890 = fadd fast float %4887, %4889
  %4891 = fsub fast float %4890, %4888
  %4892 = call float @dx.op.unary.f32(i32 6, float %4891)  ; FAbs(value)
  %4893 = fadd fast float %4892, 0x3DDB7CDFE0000000
  %4894 = fdiv fast float %4886, %4893
  br label %4895

; <label>:4895                                    ; preds = %4880, %4870
  %4896 = phi float [ %4894, %4880 ], [ 1.000000e+00, %4870 ]
  %4897 = call float @dx.op.binary.f32(i32 36, float %4896, float %4872)  ; FMin(a,b)
  %4898 = call float @dx.op.unary.f32(i32 7, float %4897)  ; Saturate(value)
  %4899 = fcmp fast olt float %4898, 1.000000e+00
  br i1 %4899, label %4900, label %4910

; <label>:4900                                    ; preds = %4895
  %4901 = fmul fast float %4898, %4779
  %4902 = fmul fast float %4898, %4793
  %4903 = fmul fast float %4898, %4781
  %4904 = fmul fast float %4898, %4796
  %4905 = fmul fast float %4898, %4808
  %4906 = fmul fast float %4898, %4798
  %4907 = fmul fast float %4898, %4811
  %4908 = fmul fast float %4898, %4823
  %4909 = fmul fast float %4898, %4813
  br label %4910

; <label>:4910                                    ; preds = %4900, %4895
  %4911 = phi float [ %4907, %4900 ], [ %4811, %4895 ]
  %4912 = phi float [ %4908, %4900 ], [ %4823, %4895 ]
  %4913 = phi float [ %4909, %4900 ], [ %4813, %4895 ]
  %4914 = phi float [ %4904, %4900 ], [ %4796, %4895 ]
  %4915 = phi float [ %4905, %4900 ], [ %4808, %4895 ]
  %4916 = phi float [ %4906, %4900 ], [ %4798, %4895 ]
  %4917 = phi float [ %4901, %4900 ], [ %4779, %4895 ]
  %4918 = phi float [ %4902, %4900 ], [ %4793, %4895 ]
  %4919 = phi float [ %4903, %4900 ], [ %4781, %4895 ]
  %4920 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4792)  ; FMax(a,b)
  %4921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4807)  ; FMax(a,b)
  %4922 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4822)  ; FMax(a,b)
  %4923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4924 = extractvalue %dx.types.CBufRet.f32 %4923, 0
  %4925 = fcmp fast ogt float %4924, 0.000000e+00
  %4926 = fcmp fast oge float %4580, 0.000000e+00
  %4927 = and i1 %4926, %4925
  %4928 = fcmp fast ole float %4580, 1.000000e+00
  %4929 = and i1 %4928, %4927
  %4930 = fcmp fast oge float %4581, 0.000000e+00
  %4931 = and i1 %4930, %4929
  %4932 = fcmp fast ole float %4581, 1.000000e+00
  %4933 = and i1 %4932, %4931
  br i1 %4933, label %4934, label %5079, !dx.controlflow.hints !77

; <label>:4934                                    ; preds = %4910
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 2
  %4937 = extractvalue %dx.types.CBufRet.f32 %4935, 3
  %4938 = fmul fast float %4936, %4580
  %4939 = fmul fast float %4937, %4581
  %4940 = call float @dx.op.unary.f32(i32 27, float %4938)  ; Round_ni(value)
  %4941 = call float @dx.op.unary.f32(i32 27, float %4939)  ; Round_ni(value)
  %4942 = fptosi float %4940 to i32
  %4943 = fptosi float %4941 to i32
  %4944 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %4942, i32 %4943, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4945 = extractvalue %dx.types.ResRet.i32 %4944, 0
  %4946 = and i32 %4945, 65535
  %4947 = lshr i32 %4945, 16
  %4948 = icmp eq i32 %4946, 65535
  br i1 %4948, label %4985, label %4949

; <label>:4949                                    ; preds = %4934
  %4950 = extractvalue %dx.types.CBufRet.f32 %4923, 1
  %4951 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4952 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4953 = fmul fast float %4951, %4580
  %4954 = fmul fast float %4952, %4581
  %4955 = fmul fast float %4953, 1.250000e-01
  %4956 = fmul fast float %4954, 1.250000e-01
  %4957 = call float @dx.op.unary.f32(i32 27, float %4955)  ; Round_ni(value)
  %4958 = call float @dx.op.unary.f32(i32 27, float %4956)  ; Round_ni(value)
  %4959 = fmul fast float %4957, 8.000000e+00
  %4960 = fmul fast float %4958, 8.000000e+00
  %4961 = and i32 %4945, 255
  %4962 = lshr i32 %4945, 8
  %4963 = and i32 %4962, 255
  %4964 = mul nuw nsw i32 %4961, 9
  %4965 = uitofp i32 %4964 to float
  %4966 = mul nuw nsw i32 %4963, 9
  %4967 = uitofp i32 %4966 to float
  %4968 = fadd fast float %4965, 5.000000e-01
  %4969 = fadd fast float %4968, %4953
  %4970 = fsub fast float %4969, %4959
  %4971 = fadd fast float %4967, 5.000000e-01
  %4972 = fadd fast float %4971, %4954
  %4973 = fsub fast float %4972, %4960
  %4974 = fdiv fast float %4970, %4924
  %4975 = fdiv fast float %4973, %4950
  %4976 = fmul fast float %4608, 4.375000e-01
  %4977 = fadd fast float %4976, 3.125000e-02
  %4978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4974, float %4975, float %4977, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4979 = extractvalue %dx.types.ResRet.f32 %4978, 0
  %4980 = extractvalue %dx.types.ResRet.f32 %4978, 1
  %4981 = extractvalue %dx.types.ResRet.f32 %4978, 2
  %4982 = fadd fast float %4979, %4920
  %4983 = fadd fast float %4980, %4921
  %4984 = fadd fast float %4981, %4922
  br label %4985

; <label>:4985                                    ; preds = %4949, %4934
  %4986 = phi float [ %4984, %4949 ], [ %4922, %4934 ]
  %4987 = phi float [ %4983, %4949 ], [ %4921, %4934 ]
  %4988 = phi float [ %4982, %4949 ], [ %4920, %4934 ]
  %4989 = icmp eq i32 %4947, 65535
  br i1 %4989, label %5079, label %4990

; <label>:4990                                    ; preds = %4985
  %4991 = extractvalue %dx.types.CBufRet.f32 %4923, 1
  %4992 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4994 = fmul fast float %4992, %4580
  %4995 = fmul fast float %4993, %4581
  %4996 = fmul fast float %4994, 1.250000e-01
  %4997 = fmul fast float %4995, 1.250000e-01
  %4998 = call float @dx.op.unary.f32(i32 27, float %4996)  ; Round_ni(value)
  %4999 = call float @dx.op.unary.f32(i32 27, float %4997)  ; Round_ni(value)
  %5000 = fmul fast float %4998, 8.000000e+00
  %5001 = fmul fast float %4999, 8.000000e+00
  %5002 = fsub fast float %4994, %5000
  %5003 = fsub fast float %4995, %5001
  %5004 = fadd fast float %5002, 5.000000e-01
  %5005 = fadd fast float %5003, 5.000000e-01
  %5006 = and i32 %4947, 255
  %5007 = lshr i32 %4945, 24
  %5008 = mul nuw nsw i32 %5006, 9
  %5009 = uitofp i32 %5008 to float
  %5010 = mul nuw nsw i32 %5007, 9
  %5011 = uitofp i32 %5010 to float
  %5012 = fadd fast float %5004, %5009
  %5013 = fadd fast float %5005, %5011
  %5014 = fdiv fast float %5012, %4924
  %5015 = fdiv fast float %5013, %4991
  %5016 = fmul fast float %4608, 4.375000e-01
  %5017 = fadd fast float %5016, 3.125000e-02
  %5018 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %5014, float %5015, float %5017, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5019 = extractvalue %dx.types.ResRet.f32 %5018, 0
  %5020 = extractvalue %dx.types.ResRet.f32 %5018, 1
  %5021 = extractvalue %dx.types.ResRet.f32 %5018, 2
  %5022 = fadd fast float %5016, 5.312500e-01
  %5023 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %5014, float %5015, float %5022, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5024 = extractvalue %dx.types.ResRet.f32 %5023, 0
  %5025 = extractvalue %dx.types.ResRet.f32 %5023, 1
  %5026 = extractvalue %dx.types.ResRet.f32 %5023, 2
  %5027 = fmul fast float %5024, 2.000000e+00
  %5028 = fmul fast float %5025, 2.000000e+00
  %5029 = fmul fast float %5026, 2.000000e+00
  %5030 = fadd fast float %5027, -1.000000e+00
  %5031 = fadd fast float %5028, -1.000000e+00
  %5032 = fadd fast float %5029, -1.000000e+00
  %5033 = fmul fast float %5030, %5030
  %5034 = fmul fast float %5031, %5031
  %5035 = fadd fast float %5033, %5034
  %5036 = fmul fast float %5032, %5032
  %5037 = fadd fast float %5035, %5036
  %5038 = call float @dx.op.unary.f32(i32 24, float %5037)  ; Sqrt(value)
  %5039 = fcmp fast ogt float %5038, 0.000000e+00
  br i1 %5039, label %5040, label %5044

; <label>:5040                                    ; preds = %4990
  %5041 = fdiv fast float %5030, %5038
  %5042 = fdiv fast float %5031, %5038
  %5043 = fdiv fast float %5032, %5038
  br label %5044

; <label>:5044                                    ; preds = %5040, %4990
  %5045 = phi float [ %5041, %5040 ], [ 0.000000e+00, %4990 ]
  %5046 = phi float [ %5042, %5040 ], [ 0.000000e+00, %4990 ]
  %5047 = phi float [ %5043, %5040 ], [ 0.000000e+00, %4990 ]
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.CBufRet.f32 %5048, 1
  %5051 = fsub fast float %4565, %5049
  %5052 = fsub fast float %4566, %5050
  %5053 = fmul fast float %5051, %5051
  %5054 = fmul fast float %5052, %5052
  %5055 = fadd fast float %5053, %5054
  %5056 = call float @dx.op.unary.f32(i32 24, float %5055)  ; Sqrt(value)
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.CBufRet.f32 %5057, 1
  %5060 = fsub fast float %5056, %5058
  %5061 = fdiv fast float %5060, %5059
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fmul fast float %5062, 2.000000e+00
  %5064 = fsub fast float 3.000000e+00, %5063
  %5065 = fmul fast float %5062, %5062
  %5066 = fmul fast float %5065, %5064
  %5067 = call float @dx.op.dot3.f32(i32 55, float %5045, float %5046, float %5047, float %4541, float %4542, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5068 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5067)  ; FMax(a,b)
  %5069 = fmul fast float %5068, 0x400C5BF8A0000000
  %5070 = fmul fast float %5066, %5019
  %5071 = fmul fast float %5070, %5069
  %5072 = fadd fast float %5071, %4988
  %5073 = fmul fast float %5066, %5020
  %5074 = fmul fast float %5073, %5069
  %5075 = fadd fast float %5074, %4987
  %5076 = fmul fast float %5066, %5021
  %5077 = fmul fast float %5076, %5069
  %5078 = fadd fast float %5077, %4986
  br label %5079

; <label>:5079                                    ; preds = %5044, %4985, %4910
  %5080 = phi float [ %5078, %5044 ], [ %4986, %4985 ], [ %4922, %4910 ]
  %5081 = phi float [ %5075, %5044 ], [ %4987, %4985 ], [ %4921, %4910 ]
  %5082 = phi float [ %5072, %5044 ], [ %4988, %4985 ], [ %4920, %4910 ]
  %5083 = fcmp fast ogt float %4567, %4604
  %5084 = and i1 %4926, %5083
  %5085 = and i1 %4928, %5084
  %5086 = and i1 %4930, %5085
  %5087 = and i1 %4932, %5086
  br i1 %5087, label %5088, label %5145, !dx.controlflow.hints !78

; <label>:5088                                    ; preds = %5079
  %5089 = fmul fast float %4606, 0x3FC24924A0000000
  %5090 = fsub fast float %4567, %4604
  %5091 = fdiv fast float %5090, %5089
  %5092 = call float @dx.op.unary.f32(i32 7, float %5091)  ; Saturate(value)
  %5093 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5094 = extractvalue %dx.types.CBufRet.f32 %5093, 0
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.CBufRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.CBufRet.f32 %5095, 2
  %5099 = fsub fast float %5094, %5082
  %5100 = fsub fast float %5096, %4917
  %5101 = fsub fast float %5097, %4918
  %5102 = fsub fast float %5098, %4919
  %5103 = fmul fast float %5099, %5092
  %5104 = fmul fast float %5100, %5092
  %5105 = fmul fast float %5101, %5092
  %5106 = fmul fast float %5102, %5092
  %5107 = fadd fast float %5103, %5082
  %5108 = fadd fast float %5104, %4917
  %5109 = fadd fast float %5105, %4918
  %5110 = fadd fast float %5106, %4919
  %5111 = extractvalue %dx.types.CBufRet.f32 %5093, 1
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.CBufRet.f32 %5112, 1
  %5115 = extractvalue %dx.types.CBufRet.f32 %5112, 2
  %5116 = fsub fast float %5111, %5081
  %5117 = fsub fast float %5113, %4914
  %5118 = fsub fast float %5114, %4915
  %5119 = fsub fast float %5115, %4916
  %5120 = fmul fast float %5116, %5092
  %5121 = fmul fast float %5117, %5092
  %5122 = fmul fast float %5118, %5092
  %5123 = fmul fast float %5119, %5092
  %5124 = fadd fast float %5120, %5081
  %5125 = fadd fast float %5121, %4914
  %5126 = fadd fast float %5122, %4915
  %5127 = fadd fast float %5123, %4916
  %5128 = extractvalue %dx.types.CBufRet.f32 %5093, 2
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 0
  %5131 = extractvalue %dx.types.CBufRet.f32 %5129, 1
  %5132 = extractvalue %dx.types.CBufRet.f32 %5129, 2
  %5133 = fsub fast float %5128, %5080
  %5134 = fsub fast float %5130, %4911
  %5135 = fsub fast float %5131, %4912
  %5136 = fsub fast float %5132, %4913
  %5137 = fmul fast float %5133, %5092
  %5138 = fmul fast float %5134, %5092
  %5139 = fmul fast float %5135, %5092
  %5140 = fmul fast float %5136, %5092
  %5141 = fadd fast float %5137, %5080
  %5142 = fadd fast float %5138, %4911
  %5143 = fadd fast float %5139, %4912
  %5144 = fadd fast float %5140, %4913
  br label %5145

; <label>:5145                                    ; preds = %5088, %5079
  %5146 = phi float [ %5141, %5088 ], [ %5080, %5079 ]
  %5147 = phi float [ %5142, %5088 ], [ %4911, %5079 ]
  %5148 = phi float [ %5143, %5088 ], [ %4912, %5079 ]
  %5149 = phi float [ %5144, %5088 ], [ %4913, %5079 ]
  %5150 = phi float [ %5124, %5088 ], [ %5081, %5079 ]
  %5151 = phi float [ %5125, %5088 ], [ %4914, %5079 ]
  %5152 = phi float [ %5126, %5088 ], [ %4915, %5079 ]
  %5153 = phi float [ %5127, %5088 ], [ %4916, %5079 ]
  %5154 = phi float [ %5107, %5088 ], [ %5082, %5079 ]
  %5155 = phi float [ %5108, %5088 ], [ %4917, %5079 ]
  %5156 = phi float [ %5109, %5088 ], [ %4918, %5079 ]
  %5157 = phi float [ %5110, %5088 ], [ %4919, %5079 ]
  %5158 = extractvalue %dx.types.CBufRet.f32 %4729, 3
  %5159 = fmul fast float %5158, %5154
  %5160 = fmul fast float %5158, %5150
  %5161 = fmul fast float %5158, %5146
  %5162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5163 = extractvalue %dx.types.CBufRet.f32 %5162, 3
  %5164 = fmul fast float %5159, %5163
  %5165 = fmul fast float %5160, %5163
  %5166 = fmul fast float %5161, %5163
  %5167 = fmul fast float %5155, 1.500000e+00
  %5168 = fmul fast float %5167, %5158
  %5169 = fmul fast float %5168, %5163
  %5170 = fmul fast float %5156, 1.500000e+00
  %5171 = fmul fast float %5170, %5158
  %5172 = fmul fast float %5171, %5163
  %5173 = fmul fast float %5157, 1.500000e+00
  %5174 = fmul fast float %5173, %5158
  %5175 = fmul fast float %5174, %5163
  %5176 = fmul fast float %5151, 1.500000e+00
  %5177 = fmul fast float %5176, %5158
  %5178 = fmul fast float %5177, %5163
  %5179 = fmul fast float %5152, 1.500000e+00
  %5180 = fmul fast float %5179, %5158
  %5181 = fmul fast float %5180, %5163
  %5182 = fmul fast float %5153, 1.500000e+00
  %5183 = fmul fast float %5182, %5158
  %5184 = fmul fast float %5183, %5163
  %5185 = fmul fast float %5147, 1.500000e+00
  %5186 = fmul fast float %5185, %5158
  %5187 = fmul fast float %5186, %5163
  %5188 = fmul fast float %5148, 1.500000e+00
  %5189 = fmul fast float %5188, %5158
  %5190 = fmul fast float %5189, %5163
  %5191 = fmul fast float %5149, 1.500000e+00
  %5192 = fmul fast float %5191, %5158
  %5193 = fmul fast float %5192, %5163
  %5194 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5164)  ; FMax(a,b)
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5169, float %5172, float %5175, float %5169, float %5172, float %5175)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = fcmp fast oeq float %5195, 0.000000e+00
  %5197 = fcmp fast oeq float %5194, 0.000000e+00
  %5198 = or i1 %5197, %5196
  br i1 %5198, label %5228, label %5199

; <label>:5199                                    ; preds = %5145
  %5200 = fsub fast float -0.000000e+00, %5175
  %5201 = fsub fast float -0.000000e+00, %5169
  %5202 = call float @dx.op.unary.f32(i32 24, float %5195)  ; Sqrt(value)
  %5203 = fdiv fast float %5202, %5194
  %5204 = fcmp fast ogt float %5203, 0x3FFB6F8900000000
  %5205 = select i1 %5204, float 0x3FFB6F8900000000, float %5203
  %5206 = fmul fast float %5205, 0x3FE8A23460000000
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = call float @dx.op.binary.f32(i32 35, float %5205, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5209 = fmul fast float %5207, %5194
  %5210 = fmul fast float %5208, 0x3FF279A740000000
  %5211 = fadd fast float %5210, -1.000000e+00
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5200, float %5201, float %5172, float %5200, float %5201, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = call float @dx.op.unary.f32(i32 25, float %5212)  ; Rsqrt(value)
  %5214 = fmul fast float %5213, %5200
  %5215 = fmul fast float %5213, %5201
  %5216 = fmul fast float %5213, %5172
  %5217 = fmul fast float %5211, %5211
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = fmul fast float %5208, 0x40005F8BE0000000
  %5220 = fsub fast float 0x400C5BF8A0000000, %5219
  %5221 = fdiv fast float %5209, %5220
  %5222 = fmul fast float %5221, 0x3FEE31C3C0000000
  %5223 = fmul fast float %5222, %5218
  %5224 = fmul fast float %5208, 0x3FDACB7480000000
  %5225 = fadd fast float %5224, 0xBFD7347680000000
  %5226 = fmul fast float %5225, %5221
  %5227 = fmul fast float %5226, %5218
  br label %5228

; <label>:5228                                    ; preds = %5199, %5145
  %5229 = phi float [ %5214, %5199 ], [ 0.000000e+00, %5145 ]
  %5230 = phi float [ %5215, %5199 ], [ 0.000000e+00, %5145 ]
  %5231 = phi float [ %5216, %5199 ], [ 0.000000e+00, %5145 ]
  %5232 = phi float [ %5223, %5199 ], [ 0.000000e+00, %5145 ]
  %5233 = phi float [ %5227, %5199 ], [ 0.000000e+00, %5145 ]
  %5234 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5230, float %5231, float %4541, float %4542, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5235 = fmul fast float %5234, 0x3FDF454380000000
  %5236 = fmul fast float %5234, %5234
  %5237 = fmul fast float %5236, 0x3FEE471020000000
  %5238 = fadd fast float %5237, 0xBFD42F6020000000
  %5239 = fmul fast float %5194, 0x3FD20DD760000000
  %5240 = fmul fast float %5238, %5233
  %5241 = fadd fast float %5240, %5239
  %5242 = fmul fast float %5235, %5232
  %5243 = fadd fast float %5241, %5242
  %5244 = fsub fast float %5241, %5242
  %5245 = call float @dx.op.dot3.f32(i32 55, float %5229, float %5230, float %5231, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = fmul fast float %5245, 0x3FDF454380000000
  %5247 = fmul fast float %5245, %5245
  %5248 = fmul fast float %5247, 0x3FEE471020000000
  %5249 = fadd fast float %5248, 0xBFD42F6020000000
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5232, float %5233, float 0x3FD20DD760000000, float %5246, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5165)  ; FMax(a,b)
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5178, float %5181, float %5184, float %5178, float %5181, float %5184)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = fcmp fast oeq float %5252, 0.000000e+00
  %5254 = fcmp fast oeq float %5251, 0.000000e+00
  %5255 = or i1 %5254, %5253
  br i1 %5255, label %5285, label %5256

; <label>:5256                                    ; preds = %5228
  %5257 = fsub fast float -0.000000e+00, %5184
  %5258 = fsub fast float -0.000000e+00, %5178
  %5259 = call float @dx.op.unary.f32(i32 24, float %5252)  ; Sqrt(value)
  %5260 = fdiv fast float %5259, %5251
  %5261 = fcmp fast ogt float %5260, 0x3FFB6F8900000000
  %5262 = select i1 %5261, float 0x3FFB6F8900000000, float %5260
  %5263 = fmul fast float %5262, 0x3FE8A23460000000
  %5264 = call float @dx.op.unary.f32(i32 7, float %5263)  ; Saturate(value)
  %5265 = call float @dx.op.binary.f32(i32 35, float %5262, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5266 = fmul fast float %5264, %5251
  %5267 = fmul fast float %5265, 0x3FF279A740000000
  %5268 = fadd fast float %5267, -1.000000e+00
  %5269 = call float @dx.op.dot3.f32(i32 55, float %5257, float %5258, float %5181, float %5257, float %5258, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5270 = call float @dx.op.unary.f32(i32 25, float %5269)  ; Rsqrt(value)
  %5271 = fmul fast float %5270, %5257
  %5272 = fmul fast float %5270, %5258
  %5273 = fmul fast float %5270, %5181
  %5274 = fmul fast float %5268, %5268
  %5275 = fsub fast float 1.000000e+00, %5274
  %5276 = fmul fast float %5265, 0x40005F8BE0000000
  %5277 = fsub fast float 0x400C5BF8A0000000, %5276
  %5278 = fdiv fast float %5266, %5277
  %5279 = fmul fast float %5278, 0x3FEE31C3C0000000
  %5280 = fmul fast float %5279, %5275
  %5281 = fmul fast float %5265, 0x3FDACB7480000000
  %5282 = fadd fast float %5281, 0xBFD7347680000000
  %5283 = fmul fast float %5282, %5278
  %5284 = fmul fast float %5283, %5275
  br label %5285

; <label>:5285                                    ; preds = %5256, %5228
  %5286 = phi float [ %5271, %5256 ], [ 0.000000e+00, %5228 ]
  %5287 = phi float [ %5272, %5256 ], [ 0.000000e+00, %5228 ]
  %5288 = phi float [ %5273, %5256 ], [ 0.000000e+00, %5228 ]
  %5289 = phi float [ %5280, %5256 ], [ 0.000000e+00, %5228 ]
  %5290 = phi float [ %5284, %5256 ], [ 0.000000e+00, %5228 ]
  %5291 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %4541, float %4542, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = fmul fast float %5291, 0x3FDF454380000000
  %5293 = fmul fast float %5291, %5291
  %5294 = fmul fast float %5293, 0x3FEE471020000000
  %5295 = fadd fast float %5294, 0xBFD42F6020000000
  %5296 = fmul fast float %5251, 0x3FD20DD760000000
  %5297 = fmul fast float %5295, %5290
  %5298 = fadd fast float %5297, %5296
  %5299 = fmul fast float %5292, %5289
  %5300 = fadd fast float %5298, %5299
  %5301 = fsub fast float %5298, %5299
  %5302 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %5303 = fmul fast float %5302, 0x3FDF454380000000
  %5304 = fmul fast float %5302, %5302
  %5305 = fmul fast float %5304, 0x3FEE471020000000
  %5306 = fadd fast float %5305, 0xBFD42F6020000000
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5251, float %5289, float %5290, float 0x3FD20DD760000000, float %5303, float %5306)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5166)  ; FMax(a,b)
  %5309 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5190, float %5193, float %5187, float %5190, float %5193)  ; Dot3(ax,ay,az,bx,by,bz)
  %5310 = fcmp fast oeq float %5309, 0.000000e+00
  %5311 = fcmp fast oeq float %5308, 0.000000e+00
  %5312 = or i1 %5311, %5310
  br i1 %5312, label %5342, label %5313

; <label>:5313                                    ; preds = %5285
  %5314 = fsub fast float -0.000000e+00, %5193
  %5315 = fsub fast float -0.000000e+00, %5187
  %5316 = call float @dx.op.unary.f32(i32 24, float %5309)  ; Sqrt(value)
  %5317 = fdiv fast float %5316, %5308
  %5318 = fcmp fast ogt float %5317, 0x3FFB6F8900000000
  %5319 = select i1 %5318, float 0x3FFB6F8900000000, float %5317
  %5320 = fmul fast float %5319, 0x3FE8A23460000000
  %5321 = call float @dx.op.unary.f32(i32 7, float %5320)  ; Saturate(value)
  %5322 = call float @dx.op.binary.f32(i32 35, float %5319, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5323 = fmul fast float %5321, %5308
  %5324 = fmul fast float %5322, 0x3FF279A740000000
  %5325 = fadd fast float %5324, -1.000000e+00
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5314, float %5315, float %5190, float %5314, float %5315, float %5190)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.unary.f32(i32 25, float %5326)  ; Rsqrt(value)
  %5328 = fmul fast float %5327, %5314
  %5329 = fmul fast float %5327, %5315
  %5330 = fmul fast float %5327, %5190
  %5331 = fmul fast float %5325, %5325
  %5332 = fsub fast float 1.000000e+00, %5331
  %5333 = fmul fast float %5322, 0x40005F8BE0000000
  %5334 = fsub fast float 0x400C5BF8A0000000, %5333
  %5335 = fdiv fast float %5323, %5334
  %5336 = fmul fast float %5335, 0x3FEE31C3C0000000
  %5337 = fmul fast float %5336, %5332
  %5338 = fmul fast float %5322, 0x3FDACB7480000000
  %5339 = fadd fast float %5338, 0xBFD7347680000000
  %5340 = fmul fast float %5339, %5335
  %5341 = fmul fast float %5340, %5332
  br label %5342

; <label>:5342                                    ; preds = %5313, %5285
  %5343 = phi float [ %5328, %5313 ], [ 0.000000e+00, %5285 ]
  %5344 = phi float [ %5329, %5313 ], [ 0.000000e+00, %5285 ]
  %5345 = phi float [ %5330, %5313 ], [ 0.000000e+00, %5285 ]
  %5346 = phi float [ %5337, %5313 ], [ 0.000000e+00, %5285 ]
  %5347 = phi float [ %5341, %5313 ], [ 0.000000e+00, %5285 ]
  %5348 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5345, float %4541, float %4542, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5349 = fmul fast float %5348, 0x3FDF454380000000
  %5350 = fmul fast float %5348, %5348
  %5351 = fmul fast float %5350, 0x3FEE471020000000
  %5352 = fadd fast float %5351, 0xBFD42F6020000000
  %5353 = fmul fast float %5308, 0x3FD20DD760000000
  %5354 = fmul fast float %5352, %5347
  %5355 = fadd fast float %5354, %5353
  %5356 = fmul fast float %5349, %5346
  %5357 = fadd fast float %5355, %5356
  %5358 = fsub fast float %5355, %5356
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5343, float %5344, float %5345, float %4554, float %4555, float %4556)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = fmul fast float %5359, 0x3FDF454380000000
  %5361 = fmul fast float %5359, %5359
  %5362 = fmul fast float %5361, 0x3FEE471020000000
  %5363 = fadd fast float %5362, 0xBFD42F6020000000
  %5364 = call float @dx.op.dot3.f32(i32 55, float %5308, float %5346, float %5347, float 0x3FD20DD760000000, float %5360, float %5363)  ; Dot3(ax,ay,az,bx,by,bz)
  %5365 = call float @dx.op.binary.f32(i32 35, float %5243, float 0.000000e+00)  ; FMax(a,b)
  %5366 = call float @dx.op.binary.f32(i32 35, float %5300, float 0.000000e+00)  ; FMax(a,b)
  %5367 = call float @dx.op.binary.f32(i32 35, float %5357, float 0.000000e+00)  ; FMax(a,b)
  %5368 = call float @dx.op.binary.f32(i32 35, float %5244, float 0.000000e+00)  ; FMax(a,b)
  %5369 = call float @dx.op.binary.f32(i32 35, float %5301, float 0.000000e+00)  ; FMax(a,b)
  %5370 = call float @dx.op.binary.f32(i32 35, float %5358, float 0.000000e+00)  ; FMax(a,b)
  %5371 = call float @dx.op.binary.f32(i32 35, float %5250, float 0.000000e+00)  ; FMax(a,b)
  %5372 = call float @dx.op.binary.f32(i32 35, float %5307, float 0.000000e+00)  ; FMax(a,b)
  %5373 = call float @dx.op.binary.f32(i32 35, float %5364, float 0.000000e+00)  ; FMax(a,b)
  %5374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5375 = extractvalue %dx.types.CBufRet.f32 %5374, 0
  %5376 = call float @dx.op.binary.f32(i32 36, float %4538, float %5375)  ; FMin(a,b)
  %5377 = fsub fast float 1.000000e+00, %4557
  %5378 = fmul fast float %5376, %5377
  %5379 = fsub fast float 1.000000e+00, %5378
  %5380 = bitcast float %5379 to i32
  %5381 = sub nsw i32 2129859010, %5380
  %5382 = bitcast i32 %5381 to float
  %5383 = call float @dx.op.binary.f32(i32 36, float %4539, float %5375)  ; FMin(a,b)
  %5384 = fmul fast float %5383, %5377
  %5385 = fsub fast float 1.000000e+00, %5384
  %5386 = bitcast float %5385 to i32
  %5387 = sub nsw i32 2129859010, %5386
  %5388 = bitcast i32 %5387 to float
  %5389 = call float @dx.op.binary.f32(i32 36, float %4540, float %5375)  ; FMin(a,b)
  %5390 = fmul fast float %5389, %5377
  %5391 = fsub fast float 1.000000e+00, %5390
  %5392 = bitcast float %5391 to i32
  %5393 = sub nsw i32 2129859010, %5392
  %5394 = bitcast i32 %5393 to float
  %5395 = fmul fast float %5365, %4557
  %5396 = fmul fast float %5395, %5382
  %5397 = fmul fast float %5366, %4557
  %5398 = fmul fast float %5397, %5388
  %5399 = fmul fast float %5367, %4557
  %5400 = fmul fast float %5399, %5394
  %5401 = call float @dx.op.binary.f32(i32 36, float %4535, float %5375)  ; FMin(a,b)
  %5402 = fmul fast float %5401, %5377
  %5403 = fsub fast float 1.000000e+00, %5402
  %5404 = bitcast float %5403 to i32
  %5405 = sub nsw i32 2129859010, %5404
  %5406 = bitcast i32 %5405 to float
  %5407 = call float @dx.op.binary.f32(i32 36, float %4536, float %5375)  ; FMin(a,b)
  %5408 = fmul fast float %5407, %5377
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = bitcast float %5409 to i32
  %5411 = sub nsw i32 2129859010, %5410
  %5412 = bitcast i32 %5411 to float
  %5413 = call float @dx.op.binary.f32(i32 36, float %4546, float %5375)  ; FMin(a,b)
  %5414 = fmul fast float %5413, %5377
  %5415 = fsub fast float 1.000000e+00, %5414
  %5416 = bitcast float %5415 to i32
  %5417 = sub nsw i32 2129859010, %5416
  %5418 = bitcast i32 %5417 to float
  %5419 = fmul fast float %5371, %4557
  %5420 = fmul fast float %5419, %5406
  %5421 = fmul fast float %5372, %4557
  %5422 = fmul fast float %5421, %5412
  %5423 = fmul fast float %5373, %4557
  %5424 = fmul fast float %5423, %5418
  %5425 = call float @dx.op.dot3.f32(i32 55, float %5396, float %5398, float %5400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5426 = select i1 %167, float 0.000000e+00, float %5396
  %5427 = select i1 %167, float %5425, float %5398
  %5428 = select i1 %167, float 0.000000e+00, float %5400
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5368, float %5369, float %5370, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = select i1 %167, float 0.000000e+00, float %5368
  %5431 = select i1 %167, float %5429, float %5369
  %5432 = select i1 %167, float 0.000000e+00, float %5370
  %5433 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5422, float %5424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5434 = select i1 %167, float 0.000000e+00, float %5420
  %5435 = select i1 %167, float %5433, float %5422
  %5436 = select i1 %167, float 0.000000e+00, float %5424
  %5437 = fmul fast float %4548, 9.843750e-01
  %5438 = fmul fast float %4544, 9.843750e-01
  %5439 = fadd fast float %5437, 7.812500e-03
  %5440 = fadd fast float %5438, 7.812500e-03
  %5441 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5439, float %5440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5442 = extractvalue %dx.types.ResRet.f32 %5441, 2
  %5443 = extractvalue %dx.types.ResRet.f32 %5441, 3
  %5444 = fmul fast float %5442, %4535
  %5445 = fmul fast float %5442, %4536
  %5446 = fmul fast float %5442, %4546
  %5447 = fadd fast float %5444, %5443
  %5448 = fadd fast float %5445, %5443
  %5449 = fadd fast float %5446, %5443
  %5450 = call float @dx.op.binary.f32(i32 35, float %5448, float %5449)  ; FMax(a,b)
  %5451 = call float @dx.op.binary.f32(i32 35, float %5447, float %5450)  ; FMax(a,b)
  %5452 = fsub fast float 1.000000e+00, %5451
  %5453 = fmul fast float %5447, %5434
  %5454 = fmul fast float %5448, %5435
  %5455 = fmul fast float %5449, %5436
  %5456 = fadd fast float %5453, %3760
  %5457 = fmul fast float %5456, %928
  %5458 = fadd fast float %5454, %3761
  %5459 = fmul fast float %5458, %928
  %5460 = fadd fast float %5455, %3762
  %5461 = fmul fast float %5460, %928
  %5462 = fmul fast float %5452, %5428
  %5463 = fmul fast float %5452, %5427
  %5464 = fmul fast float %5452, %5426
  %5465 = fmul fast float %5452, %3959
  %5466 = fadd fast float %5465, -1.000000e+00
  %5467 = fmul fast float %5466, %928
  %5468 = fadd fast float %5467, 1.000000e+00
  %5469 = fmul fast float %5452, %3958
  %5470 = fadd fast float %5469, -1.000000e+00
  %5471 = fmul fast float %5470, %928
  %5472 = fadd fast float %5471, 1.000000e+00
  %5473 = fmul fast float %5452, %3957
  %5474 = fadd fast float %5473, -1.000000e+00
  %5475 = fmul fast float %5474, %928
  %5476 = fadd fast float %5475, 1.000000e+00
  %5477 = fmul fast float %5476, %5430
  %5478 = fmul fast float %5472, %5431
  %5479 = fmul fast float %5468, %5432
  %5480 = fadd fast float %5477, %5464
  %5481 = fmul fast float %5480, %928
  %5482 = fadd fast float %5478, %5463
  %5483 = fmul fast float %5482, %928
  %5484 = fadd fast float %5479, %5462
  %5485 = fmul fast float %5484, %928
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 3
  %5488 = fcmp fast oeq float %5487, 0.000000e+00
  br i1 %5488, label %5675, label %5489

; <label>:5489                                    ; preds = %5342
  %5490 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5491 = extractvalue %dx.types.CBufRet.f32 %5486, 1
  %5492 = extractvalue %dx.types.CBufRet.f32 %5486, 2
  %5493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5494 = extractvalue %dx.types.CBufRet.f32 %5493, 0
  %5495 = extractvalue %dx.types.CBufRet.f32 %5493, 1
  %5496 = extractvalue %dx.types.CBufRet.f32 %5493, 2
  %5497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5498 = extractvalue %dx.types.CBufRet.f32 %5497, 0
  %5499 = extractvalue %dx.types.CBufRet.f32 %5497, 1
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5496, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = select i1 %167, float %5498, float %5494
  %5502 = select i1 %167, float %5500, float %5495
  %5503 = select i1 %167, float %5499, float %5496
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5506 = fcmp fast une float %5505, 0.000000e+00
  br i1 %5506, label %5507, label %5524

; <label>:5507                                    ; preds = %5489
  %5508 = fptoui float %68 to i32
  %5509 = fptoui float %69 to i32
  %5510 = lshr i32 %5508, 4
  %5511 = lshr i32 %5509, 4
  %5512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.f32 %5512, 0
  %5514 = fptoui float %5513 to i32
  %5515 = add i32 %5514, 15
  %5516 = lshr i32 %5515, 4
  %5517 = mul i32 %5516, %5511
  %5518 = add i32 %5517, %5510
  %5519 = shl i32 %5518, 3
  %5520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5519, i32 undef)  ; BufferLoad(srv,index,wot)
  %5521 = extractvalue %dx.types.ResRet.i32 %5520, 0
  %5522 = and i32 %5521, -268435456
  %5523 = icmp eq i32 %5522, -1342177280
  br i1 %5523, label %5534, label %5524

; <label>:5524                                    ; preds = %5507, %5489
  %5525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.f32 %5525, 2
  %5527 = extractvalue %dx.types.CBufRet.f32 %5525, 3
  %5528 = fmul fast float %5526, %68
  %5529 = fmul fast float %5527, %69
  %5530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %32, float %5528, float %5529, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  br label %5534

; <label>:5534                                    ; preds = %5524, %5507
  %5535 = phi float [ %5531, %5524 ], [ 0.000000e+00, %5507 ]
  %5536 = phi float [ %5532, %5524 ], [ 0.000000e+00, %5507 ]
  %5537 = phi float [ %5533, %5524 ], [ 0.000000e+00, %5507 ]
  %5538 = call float @dx.op.binary.f32(i32 36, float %5536, float %5537)  ; FMin(a,b)
  %5539 = call float @dx.op.binary.f32(i32 36, float %5535, float %5538)  ; FMin(a,b)
  %5540 = fcmp fast ogt float %5539, 0.000000e+00
  br i1 %5540, label %5541, label %5675, !dx.controlflow.hints !79

; <label>:5541                                    ; preds = %5534
  %5542 = bitcast i32 %4560 to float
  %5543 = fmul fast float %5535, %5501
  %5544 = fmul fast float %5536, %5502
  %5545 = fmul fast float %5537, %5503
  %5546 = fsub fast float %5490, %4534
  %5547 = fsub fast float %5491, %4533
  %5548 = fsub fast float %5492, %4532
  %5549 = call float @dx.op.dot3.f32(i32 55, float %5546, float %5547, float %5548, float %5546, float %5547, float %5548)  ; Dot3(ax,ay,az,bx,by,bz)
  %5550 = call float @dx.op.unary.f32(i32 25, float %5549)  ; Rsqrt(value)
  %5551 = fmul fast float %5550, %5546
  %5552 = fmul fast float %5550, %5547
  %5553 = fmul fast float %5550, %5548
  %5554 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5491, float %5492, float %4541, float %4542, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5555 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4530, float %4529, float %5551, float %5552, float %5553)  ; Dot3(ax,ay,az,bx,by,bz)
  %5556 = call float @dx.op.unary.f32(i32 7, float %5554)  ; Saturate(value)
  %5557 = fmul fast float %5556, %5556
  %5558 = fmul fast float %5557, %5542
  %5559 = call float @dx.op.unary.f32(i32 7, float %5558)  ; Saturate(value)
  %5560 = fmul fast float %5559, %5556
  %5561 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float %5551, float %5552, float %5553)  ; Dot3(ax,ay,az,bx,by,bz)
  %5562 = fmul fast float %5561, %5561
  %5563 = call float @dx.op.unary.f32(i32 6, float %5554)  ; FAbs(value)
  %5564 = fsub fast float 1.000000e+00, %4544
  %5565 = call float @dx.op.binary.f32(i32 35, float %5564, float 0x3F847AE140000000)  ; FMax(a,b)
  %5566 = fmul fast float %5565, %5565
  %5567 = fmul fast float %5566, %5566
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = fmul fast float %4548, %4548
  %5570 = fmul fast float %5569, %5568
  %5571 = fadd fast float %5570, %5567
  %5572 = bitcast float %5571 to i32
  %5573 = ashr i32 %5572, 1
  %5574 = add nsw i32 %5573, 532487669
  %5575 = bitcast i32 %5574 to float
  %5576 = fadd fast float %5575, %4548
  %5577 = fmul fast float %5567, %5562
  %5578 = fsub fast float 1.000000e+00, %5562
  %5579 = fadd fast float %5578, %5577
  %5580 = fmul fast float %5563, %5563
  %5581 = fmul fast float %5580, %5568
  %5582 = fadd fast float %5581, %5567
  %5583 = bitcast float %5582 to i32
  %5584 = ashr i32 %5583, 1
  %5585 = add nsw i32 %5584, 532487669
  %5586 = bitcast i32 %5585 to float
  %5587 = fadd fast float %5586, %5563
  %5588 = fmul fast float %5579, %5579
  %5589 = fmul fast float %5588, %5576
  %5590 = fmul fast float %5589, %5587
  %5591 = fdiv fast float 0x3FF0A00000000000, %5590
  %5592 = fmul fast float %5591, %5567
  %5593 = call float @dx.op.unary.f32(i32 6, float %5555)  ; FAbs(value)
  %5594 = fsub fast float 1.000000e+00, %5593
  %5595 = bitcast float %5594 to i32
  %5596 = sitofp i32 %5595 to float
  %5597 = fmul fast float %5596, 5.000000e+00
  %5598 = fadd fast float %5597, 0xC1EFBF8940000000
  %5599 = fptosi float %5598 to i32
  %5600 = bitcast i32 %5599 to float
  %5601 = fsub fast float 1.000000e+00, %4535
  %5602 = fsub fast float 1.000000e+00, %4536
  %5603 = fsub fast float 1.000000e+00, %4546
  %5604 = fmul fast float %5600, %5601
  %5605 = fmul fast float %5600, %5602
  %5606 = fmul fast float %5600, %5603
  %5607 = fadd fast float %5604, %4535
  %5608 = fadd fast float %5605, %4536
  %5609 = fadd fast float %5606, %4546
  %5610 = fmul fast float %5554, 9.843750e-01
  %5611 = fadd fast float %5610, 7.812500e-03
  %5612 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5611, float %5440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5613 = extractvalue %dx.types.ResRet.f32 %5612, 2
  %5614 = extractvalue %dx.types.ResRet.f32 %5612, 3
  %5615 = fmul fast float %5613, %4535
  %5616 = fmul fast float %5613, %4536
  %5617 = fmul fast float %5613, %4546
  %5618 = fadd fast float %5615, %5614
  %5619 = fadd fast float %5616, %5614
  %5620 = fadd fast float %5617, %5614
  %5621 = call float @dx.op.binary.f32(i32 35, float %5619, float %5620)  ; FMax(a,b)
  %5622 = call float @dx.op.binary.f32(i32 35, float %5618, float %5621)  ; FMax(a,b)
  %5623 = fsub fast float 1.000000e+00, %5622
  %5624 = fsub fast float -0.000000e+00, %4541
  %5625 = fsub fast float -0.000000e+00, %4542
  %5626 = fsub fast float -0.000000e+00, %4543
  %5627 = call float @dx.op.dot3.f32(i32 55, float %5490, float %5491, float %5492, float %5624, float %5625, float %5626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5628 = call float @dx.op.unary.f32(i32 7, float %5627)  ; Saturate(value)
  %5629 = fmul fast float %5628, 9.843750e-01
  %5630 = fadd fast float %5629, 7.812500e-03
  %5631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5630, float %5440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5632 = extractvalue %dx.types.ResRet.f32 %5631, 2
  %5633 = extractvalue %dx.types.ResRet.f32 %5631, 3
  %5634 = fmul fast float %5632, %4535
  %5635 = fmul fast float %5632, %4536
  %5636 = fmul fast float %5632, %4546
  %5637 = fadd fast float %5634, %5633
  %5638 = fadd fast float %5635, %5633
  %5639 = fadd fast float %5636, %5633
  %5640 = call float @dx.op.binary.f32(i32 35, float %5638, float %5639)  ; FMax(a,b)
  %5641 = call float @dx.op.binary.f32(i32 35, float %5637, float %5640)  ; FMax(a,b)
  %5642 = fsub fast float 1.000000e+00, %5641
  %5643 = fmul fast float %5642, %5628
  %5644 = fmul fast float %5643, %3957
  %5645 = fmul fast float %5643, %3958
  %5646 = fmul fast float %5643, %3959
  %5647 = fmul fast float %5623, %5560
  %5648 = fadd fast float %5644, %5647
  %5649 = fadd fast float %5645, %5647
  %5650 = fadd fast float %5646, %5647
  %5651 = fmul fast float %5648, %5543
  %5652 = fmul fast float %5649, %5544
  %5653 = fmul fast float %5650, %5545
  %5654 = fmul fast float %5560, %5543
  %5655 = fmul fast float %5654, %5592
  %5656 = fmul fast float %5655, %5607
  %5657 = fmul fast float %5560, %5544
  %5658 = fmul fast float %5657, %5592
  %5659 = fmul fast float %5658, %5608
  %5660 = fmul fast float %5560, %5545
  %5661 = fmul fast float %5660, %5592
  %5662 = fmul fast float %5661, %5609
  %5663 = fadd fast float %5651, %5480
  %5664 = fmul fast float %5663, %928
  %5665 = fadd fast float %5652, %5482
  %5666 = fmul fast float %5665, %928
  %5667 = fadd fast float %5653, %5484
  %5668 = fmul fast float %5667, %928
  %5669 = fadd fast float %5656, %5456
  %5670 = fmul fast float %5669, %928
  %5671 = fadd fast float %5659, %5458
  %5672 = fmul fast float %5671, %928
  %5673 = fadd fast float %5662, %5460
  %5674 = fmul fast float %5673, %928
  br label %5675

; <label>:5675                                    ; preds = %5541, %5534, %5342
  %5676 = phi float [ %5457, %5342 ], [ %5457, %5534 ], [ %5670, %5541 ]
  %5677 = phi float [ %5459, %5342 ], [ %5459, %5534 ], [ %5672, %5541 ]
  %5678 = phi float [ %5461, %5342 ], [ %5461, %5534 ], [ %5674, %5541 ]
  %5679 = phi float [ %5481, %5342 ], [ %5481, %5534 ], [ %5664, %5541 ]
  %5680 = phi float [ %5483, %5342 ], [ %5483, %5534 ], [ %5666, %5541 ]
  %5681 = phi float [ %5485, %5342 ], [ %5485, %5534 ], [ %5668, %5541 ]
  %5682 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5683 = extractvalue %dx.types.CBufRet.i32 %5682, 0
  %5684 = icmp eq i32 %5683, 0
  br i1 %5684, label %6079, label %5685

; <label>:5685                                    ; preds = %5675
  %5686 = fptoui float %68 to i32
  %5687 = fptoui float %69 to i32
  %5688 = lshr i32 %5686, 4
  %5689 = lshr i32 %5687, 4
  %5690 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.i32 %5690, 0
  %5692 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5689, i32 %5691, i32 %5688)  ; UMad(a,b,c)
  %5693 = add nsw i32 %5683, -1
  %5694 = call i32 @dx.op.binary.i32(i32 37, i32 %5693, i32 0)  ; IMax(a,b)
  %5695 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %5696 = fptoui float %5695 to i32
  %5697 = lshr i32 %5696, 5
  %5698 = call i32 @dx.op.binary.i32(i32 40, i32 %5697, i32 8191)  ; UMin(a,b)
  %5699 = shl i32 %5698, 2
  %5700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5699, i32 undef)  ; BufferLoad(srv,index,wot)
  %5701 = extractvalue %dx.types.ResRet.i32 %5700, 0
  %5702 = lshr i32 %5701, 16
  %5703 = and i32 %5701, 65535
  %5704 = lshr i32 %5701, 21
  %5705 = lshr i32 %5703, 5
  %5706 = call i32 @dx.op.binary.i32(i32 40, i32 %5705, i32 %5694)  ; UMin(a,b)
  %5707 = icmp ugt i32 %5704, %5706
  br i1 %5707, label %6079, label %5708

; <label>:5708                                    ; preds = %5685
  br label %5709

; <label>:5709                                    ; preds = %6069, %5708
  %5710 = phi i32 [ %6076, %6069 ], [ %5704, %5708 ]
  %5711 = phi float [ %6070, %6069 ], [ %5676, %5708 ]
  %5712 = phi float [ %6071, %6069 ], [ %5677, %5708 ]
  %5713 = phi float [ %6072, %6069 ], [ %5678, %5708 ]
  %5714 = phi float [ %6073, %6069 ], [ %5679, %5708 ]
  %5715 = phi float [ %6074, %6069 ], [ %5680, %5708 ]
  %5716 = phi float [ %6075, %6069 ], [ %5681, %5708 ]
  %5717 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5718 = extractvalue %dx.types.CBufRet.i32 %5717, 0
  %5719 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5692, i32 %5718, i32 %5710)  ; UMad(a,b,c)
  %5720 = shl i32 %5719, 2
  %5721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5720, i32 undef)  ; BufferLoad(srv,index,wot)
  %5722 = extractvalue %dx.types.ResRet.i32 %5721, 0
  %5723 = shl i32 %5710, 5
  %5724 = sub nsw i32 %5702, %5723
  %5725 = call i32 @dx.op.binary.i32(i32 37, i32 %5724, i32 0)  ; IMax(a,b)
  %5726 = call i32 @dx.op.binary.i32(i32 38, i32 %5725, i32 31)  ; IMin(a,b)
  %5727 = sub nsw i32 1, %5702
  %5728 = add nsw i32 %5727, %5703
  %5729 = call i32 @dx.op.binary.i32(i32 37, i32 %5728, i32 0)  ; IMax(a,b)
  %5730 = call i32 @dx.op.binary.i32(i32 38, i32 %5729, i32 32)  ; IMin(a,b)
  %5731 = and i32 %5730, 31
  %5732 = shl i32 -1, %5731
  %5733 = xor i32 %5732, -1
  %5734 = and i32 %5726, 31
  %5735 = shl i32 %5733, %5734
  %5736 = icmp eq i32 %5730, 32
  %5737 = select i1 %5736, i32 -1, i32 %5735
  %5738 = and i32 %5737, %5722
  %5739 = icmp eq i32 %5738, 0
  br i1 %5739, label %6069, label %5740

; <label>:5740                                    ; preds = %5709
  br label %5741

; <label>:5741                                    ; preds = %5821, %5740
  %5742 = phi i32 [ %5753, %5821 ], [ %5738, %5740 ]
  %5743 = phi float [ %5822, %5821 ], [ %5711, %5740 ]
  %5744 = phi float [ %5823, %5821 ], [ %5712, %5740 ]
  %5745 = phi float [ %5824, %5821 ], [ %5713, %5740 ]
  %5746 = phi float [ %5825, %5821 ], [ %5714, %5740 ]
  %5747 = phi float [ %5826, %5821 ], [ %5715, %5740 ]
  %5748 = phi float [ %5827, %5821 ], [ %5716, %5740 ]
  %5749 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5742)  ; FirstbitLo(value)
  %5750 = add i32 %5749, %5723
  %5751 = and i32 %5749, 31
  %5752 = shl i32 1, %5751
  %5753 = xor i32 %5752, %5742
  %5754 = mul i32 %5750, 112
  %5755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5754, i32 undef)  ; BufferLoad(srv,index,wot)
  %5756 = extractvalue %dx.types.ResRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.ResRet.f32 %5755, 1
  %5758 = extractvalue %dx.types.ResRet.f32 %5755, 2
  %5759 = or i32 %5754, 12
  %5760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5759, i32 undef)  ; BufferLoad(srv,index,wot)
  %5761 = extractvalue %dx.types.ResRet.f32 %5760, 0
  %5762 = add i32 %5754, 44
  %5763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5762, i32 undef)  ; BufferLoad(srv,index,wot)
  %5764 = extractvalue %dx.types.ResRet.f32 %5763, 0
  %5765 = add i32 %5754, 48
  %5766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5765, i32 undef)  ; BufferLoad(srv,index,wot)
  %5767 = extractvalue %dx.types.ResRet.f32 %5766, 0
  %5768 = extractvalue %dx.types.ResRet.f32 %5766, 1
  %5769 = extractvalue %dx.types.ResRet.f32 %5766, 2
  %5770 = add i32 %5754, 80
  %5771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5770, i32 undef)  ; BufferLoad(srv,index,wot)
  %5772 = extractvalue %dx.types.ResRet.f32 %5771, 1
  %5773 = extractvalue %dx.types.ResRet.f32 %5771, 2
  %5774 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5775 = select i1 %167, float %5772, float %5756
  %5776 = select i1 %167, float %5774, float %5757
  %5777 = select i1 %167, float %5773, float %5758
  %5778 = fsub fast float %5767, %124
  %5779 = fsub fast float %5768, %125
  %5780 = fsub fast float %5769, %126
  %5781 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %5780, float %5778, float %5779, float %5780)  ; Dot3(ax,ay,az,bx,by,bz)
  %5782 = call float @dx.op.unary.f32(i32 24, float %5781)  ; Sqrt(value)
  %5783 = fdiv fast float 1.000000e+00, %5782
  %5784 = fmul fast float %5783, %5778
  %5785 = fmul fast float %5783, %5779
  %5786 = fmul fast float %5783, %5780
  %5787 = fadd fast float %5782, %5761
  %5788 = fdiv fast float 1.000000e+00, %5787
  %5789 = fmul float %5764, %5788
  %5790 = fmul float %5789, %5789
  %5791 = call float @dx.op.unary.f32(i32 7, float %5790)  ; Saturate(value)
  %5792 = and i32 %5752, %5738
  %5793 = icmp eq i32 %5792, 0
  br i1 %5793, label %5816, label %5794, !dx.controlflow.hints !80

; <label>:5794                                    ; preds = %5741
  %5795 = lshr i32 %5686, 5
  %5796 = lshr i32 %5687, 5
  %5797 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5795, i32 %5796, i32 %5750, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5798 = extractvalue %dx.types.ResRet.i32 %5797, 0
  %5799 = and i32 %5798, 3
  %5800 = icmp eq i32 %5799, 0
  %5801 = select i1 %5800, float 1.000000e+00, float 0.000000e+00
  %5802 = icmp eq i32 %5799, 3
  br i1 %5802, label %5803, label %5816

; <label>:5803                                    ; preds = %5794
  %5804 = lshr i32 %5798, 10
  %5805 = and i32 %5804, 8160
  %5806 = and i32 %5687, 31
  %5807 = or i32 %5805, %5806
  %5808 = lshr i32 %5798, 1
  %5809 = and i32 %5808, 16352
  %5810 = and i32 %5686, 31
  %5811 = or i32 %5809, %5810
  %5812 = lshr i32 %5798, 23
  %5813 = and i32 %5812, 255
  %5814 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5811, i32 %5807, i32 %5813, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5815 = extractvalue %dx.types.ResRet.f32 %5814, 0
  br label %5816

; <label>:5816                                    ; preds = %5803, %5794, %5741
  %5817 = phi float [ %5815, %5803 ], [ %5801, %5794 ], [ 0.000000e+00, %5741 ]
  %5818 = call float @dx.op.binary.f32(i32 36, float %5817, float %5817)  ; FMin(a,b)
  %5819 = call float @dx.op.binary.f32(i32 36, float %5817, float %5818)  ; FMin(a,b)
  %5820 = fcmp fast ogt float %5819, 0.000000e+00
  br i1 %5820, label %5829, label %5821, !dx.controlflow.hints !81

; <label>:5821                                    ; preds = %5891, %5816
  %5822 = phi float [ %5743, %5816 ], [ %6065, %5891 ]
  %5823 = phi float [ %5744, %5816 ], [ %6066, %5891 ]
  %5824 = phi float [ %5745, %5816 ], [ %6067, %5891 ]
  %5825 = phi float [ %5746, %5816 ], [ %6053, %5891 ]
  %5826 = phi float [ %5747, %5816 ], [ %6054, %5891 ]
  %5827 = phi float [ %5748, %5816 ], [ %6055, %5891 ]
  %5828 = icmp eq i32 %5742, %5752
  br i1 %5828, label %6068, label %5741

; <label>:5829                                    ; preds = %5816
  %5830 = bitcast i32 %4560 to float
  %5831 = fmul fast float %5817, %5775
  %5832 = fmul fast float %5817, %5776
  %5833 = fmul fast float %5817, %5777
  %5834 = fsub fast float %5769, %4334
  %5835 = fcmp fast ogt float %5834, 0.000000e+00
  %5836 = fsub fast float %126, %4334
  %5837 = fcmp fast ogt float %5836, 0.000000e+00
  %5838 = xor i1 %5837, %5835
  %5839 = fsub fast float %4334, %5769
  %5840 = fmul fast float %5839, 2.000000e+00
  %5841 = fadd fast float %5840, %5769
  %5842 = select i1 %5838, float %5769, float %5841
  %5843 = fsub fast float %5842, %126
  %5844 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %5843, float %5778, float %5779, float %5843)  ; Dot3(ax,ay,az,bx,by,bz)
  %5845 = call float @dx.op.unary.f32(i32 25, float %5844)  ; Rsqrt(value)
  %5846 = fmul fast float %5845, %5778
  %5847 = fmul fast float %5845, %5779
  %5848 = fmul fast float %5845, %5843
  %5849 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4342)  ; Dot3(ax,ay,az,bx,by,bz)
  %5850 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5846, float %5847, float %5848)  ; Dot3(ax,ay,az,bx,by,bz)
  %5851 = fdiv fast float 1.000000e+00, %5850
  %5852 = fmul fast float %5851, %5849
  %5853 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5836, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5854 = fcmp fast ogt float %5853, 0.000000e+00
  %5855 = fcmp fast olt float %5853, 0.000000e+00
  %5856 = zext i1 %5854 to i32
  %5857 = zext i1 %5855 to i32
  %5858 = sub nsw i32 %5856, %5857
  %5859 = sitofp i32 %5858 to float
  %5860 = fsub fast float %5842, %4334
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5778, float %5779, float %5860, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = fcmp fast ogt float %5861, 0.000000e+00
  %5863 = fcmp fast olt float %5861, 0.000000e+00
  %5864 = zext i1 %5862 to i32
  %5865 = zext i1 %5863 to i32
  %5866 = sub nsw i32 %5864, %5865
  %5867 = sitofp i32 %5866 to float
  %5868 = fcmp fast une float %5859, %5867
  br i1 %5868, label %5869, label %5879

; <label>:5869                                    ; preds = %5829
  %5870 = fmul fast float %5852, %5848
  %5871 = fmul fast float %5852, %5847
  %5872 = fmul fast float %5852, %5846
  %5873 = fmul fast float %5872, %5872
  %5874 = fmul fast float %5871, %5871
  %5875 = fadd fast float %5873, %5874
  %5876 = fmul fast float %5870, %5870
  %5877 = fadd fast float %5875, %5876
  %5878 = call float @dx.op.unary.f32(i32 24, float %5877)  ; Sqrt(value)
  br label %5891

; <label>:5879                                    ; preds = %5829
  %5880 = icmp slt i32 %5858, 0
  br i1 %5880, label %5881, label %5891

; <label>:5881                                    ; preds = %5879
  %5882 = fsub fast float %124, %5767
  %5883 = fsub fast float %125, %5768
  %5884 = fsub fast float %126, %5842
  %5885 = fmul fast float %5882, %5882
  %5886 = fmul fast float %5883, %5883
  %5887 = fadd fast float %5885, %5886
  %5888 = fmul fast float %5884, %5884
  %5889 = fadd fast float %5887, %5888
  %5890 = call float @dx.op.unary.f32(i32 24, float %5889)  ; Sqrt(value)
  br label %5891

; <label>:5891                                    ; preds = %5881, %5879, %5869
  %5892 = phi float [ %5878, %5869 ], [ %5890, %5881 ], [ 0.000000e+00, %5879 ]
  %5893 = and i1 %5837, %5835
  %5894 = fsub fast float -0.000000e+00, %5892
  %5895 = select i1 %5893, float -0.000000e+00, float %5894
  %5896 = fmul fast float %4335, 0x3FF7154760000000
  %5897 = fmul fast float %5896, %5895
  %5898 = fmul fast float %4336, 0x3FF7154760000000
  %5899 = fmul fast float %5898, %5895
  %5900 = fmul fast float %4337, 0x3FF7154760000000
  %5901 = fmul fast float %5900, %5895
  %5902 = call float @dx.op.unary.f32(i32 21, float %5897)  ; Exp(value)
  %5903 = call float @dx.op.unary.f32(i32 21, float %5899)  ; Exp(value)
  %5904 = call float @dx.op.unary.f32(i32 21, float %5901)  ; Exp(value)
  %5905 = call float @dx.op.unary.f32(i32 7, float %5902)  ; Saturate(value)
  %5906 = call float @dx.op.unary.f32(i32 7, float %5903)  ; Saturate(value)
  %5907 = call float @dx.op.unary.f32(i32 7, float %5904)  ; Saturate(value)
  %5908 = fmul fast float %5831, %5905
  %5909 = fmul fast float %5832, %5906
  %5910 = fmul fast float %5833, %5907
  %5911 = fsub fast float %5784, %4534
  %5912 = fsub fast float %5785, %4533
  %5913 = fsub fast float %5786, %4532
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5911, float %5912, float %5913, float %5911, float %5912, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = call float @dx.op.unary.f32(i32 25, float %5914)  ; Rsqrt(value)
  %5916 = fmul fast float %5915, %5911
  %5917 = fmul fast float %5915, %5912
  %5918 = fmul fast float %5915, %5913
  %5919 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %5786, float %4541, float %4542, float %4543)  ; Dot3(ax,ay,az,bx,by,bz)
  %5920 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4530, float %4529, float %5916, float %5917, float %5918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5921 = call float @dx.op.unary.f32(i32 7, float %5919)  ; Saturate(value)
  %5922 = fmul fast float %5921, %5791
  %5923 = fmul fast float %5921, %5921
  %5924 = fmul fast float %5923, %5830
  %5925 = call float @dx.op.unary.f32(i32 7, float %5924)  ; Saturate(value)
  %5926 = fmul fast float %5922, %5925
  %5927 = bitcast float %5781 to i32
  %5928 = ashr i32 %5927, 1
  %5929 = sub nsw i32 1597463007, %5928
  %5930 = bitcast i32 %5929 to float
  %5931 = fmul fast float %5930, %5778
  %5932 = fmul fast float %5930, %5779
  %5933 = fmul fast float %5930, %5780
  %5934 = fsub fast float %5931, %4534
  %5935 = fsub fast float %5932, %4533
  %5936 = fsub fast float %5933, %4532
  %5937 = call float @dx.op.dot3.f32(i32 55, float %5934, float %5935, float %5936, float %5934, float %5935, float %5936)  ; Dot3(ax,ay,az,bx,by,bz)
  %5938 = call float @dx.op.unary.f32(i32 25, float %5937)  ; Rsqrt(value)
  %5939 = fmul fast float %5934, %5938
  %5940 = fmul fast float %5935, %5938
  %5941 = fmul fast float %5936, %5938
  %5942 = call float @dx.op.dot3.f32(i32 55, float %4541, float %4542, float %4543, float %5939, float %5940, float %5941)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = fmul fast float %5942, %5942
  %5944 = call float @dx.op.unary.f32(i32 6, float %5919)  ; FAbs(value)
  %5945 = fsub fast float 1.000000e+00, %4544
  %5946 = call float @dx.op.binary.f32(i32 35, float %5945, float 0x3F847AE140000000)  ; FMax(a,b)
  %5947 = fmul fast float %5946, %5946
  %5948 = fmul fast float %5947, %5947
  %5949 = fsub fast float 1.000000e+00, %5948
  %5950 = fmul fast float %4548, %4548
  %5951 = fmul fast float %5950, %5949
  %5952 = fadd fast float %5951, %5948
  %5953 = bitcast float %5952 to i32
  %5954 = ashr i32 %5953, 1
  %5955 = add nsw i32 %5954, 532487669
  %5956 = bitcast i32 %5955 to float
  %5957 = fadd fast float %5956, %4548
  %5958 = fmul fast float %5948, %5943
  %5959 = fsub fast float 1.000000e+00, %5943
  %5960 = fadd fast float %5959, %5958
  %5961 = fmul fast float %5944, %5944
  %5962 = fmul fast float %5961, %5949
  %5963 = fadd fast float %5962, %5948
  %5964 = bitcast float %5963 to i32
  %5965 = ashr i32 %5964, 1
  %5966 = add nsw i32 %5965, 532487669
  %5967 = bitcast i32 %5966 to float
  %5968 = fadd fast float %5967, %5944
  %5969 = fmul fast float %5960, %5960
  %5970 = fmul fast float %5969, %5957
  %5971 = fmul fast float %5970, %5968
  %5972 = fdiv fast float 1.000000e+00, %5971
  %5973 = bitcast float %5948 to i32
  %5974 = sitofp i32 %5973 to float
  %5975 = fmul fast float %5974, 0x3FE7F73180000000
  %5976 = fadd fast float %5975, 0x41AFE27C40000000
  %5977 = fptosi float %5976 to i32
  %5978 = bitcast i32 %5977 to float
  %5979 = fmul fast float %5764, 0x3FD80E9D60000000
  %5980 = fmul fast float %5979, %5930
  %5981 = fadd fast float %5978, %5980
  %5982 = bitcast float %5981 to i32
  %5983 = sub nsw i32 2129859010, %5982
  %5984 = bitcast i32 %5983 to float
  %5985 = fmul fast float %5948, %5972
  %5986 = fmul fast float %5985, %5978
  %5987 = fmul fast float %5986, %5984
  %5988 = call float @dx.op.unary.f32(i32 6, float %5920)  ; FAbs(value)
  %5989 = fsub fast float 1.000000e+00, %5988
  %5990 = bitcast float %5989 to i32
  %5991 = sitofp i32 %5990 to float
  %5992 = fmul fast float %5991, 5.000000e+00
  %5993 = fadd fast float %5992, 0xC1EFBF8940000000
  %5994 = fptosi float %5993 to i32
  %5995 = bitcast i32 %5994 to float
  %5996 = fsub fast float 1.000000e+00, %4535
  %5997 = fsub fast float 1.000000e+00, %4536
  %5998 = fsub fast float 1.000000e+00, %4546
  %5999 = fmul fast float %5995, %5996
  %6000 = fmul fast float %5995, %5997
  %6001 = fmul fast float %5995, %5998
  %6002 = fadd fast float %5999, %4535
  %6003 = fadd fast float %6000, %4536
  %6004 = fadd fast float %6001, %4546
  %6005 = fmul fast float %5919, 9.843750e-01
  %6006 = fadd fast float %6005, 7.812500e-03
  %6007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %6006, float %5440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6008 = extractvalue %dx.types.ResRet.f32 %6007, 2
  %6009 = extractvalue %dx.types.ResRet.f32 %6007, 3
  %6010 = fmul fast float %6008, %4535
  %6011 = fmul fast float %6008, %4536
  %6012 = fmul fast float %6008, %4546
  %6013 = fadd fast float %6010, %6009
  %6014 = fadd fast float %6011, %6009
  %6015 = fadd fast float %6012, %6009
  %6016 = call float @dx.op.binary.f32(i32 35, float %6014, float %6015)  ; FMax(a,b)
  %6017 = call float @dx.op.binary.f32(i32 35, float %6013, float %6016)  ; FMax(a,b)
  %6018 = fsub fast float 1.000000e+00, %6017
  %6019 = fsub fast float -0.000000e+00, %4541
  %6020 = fsub fast float -0.000000e+00, %4542
  %6021 = fsub fast float -0.000000e+00, %4543
  %6022 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %5786, float %6019, float %6020, float %6021)  ; Dot3(ax,ay,az,bx,by,bz)
  %6023 = call float @dx.op.unary.f32(i32 7, float %6022)  ; Saturate(value)
  %6024 = fmul fast float %6023, %5791
  %6025 = fmul fast float %6023, 9.843750e-01
  %6026 = fadd fast float %6025, 7.812500e-03
  %6027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %6026, float %5440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6028 = extractvalue %dx.types.ResRet.f32 %6027, 2
  %6029 = extractvalue %dx.types.ResRet.f32 %6027, 3
  %6030 = fmul fast float %6028, %4535
  %6031 = fmul fast float %6028, %4536
  %6032 = fmul fast float %6028, %4546
  %6033 = fadd fast float %6030, %6029
  %6034 = fadd fast float %6031, %6029
  %6035 = fadd fast float %6032, %6029
  %6036 = call float @dx.op.binary.f32(i32 35, float %6034, float %6035)  ; FMax(a,b)
  %6037 = call float @dx.op.binary.f32(i32 35, float %6033, float %6036)  ; FMax(a,b)
  %6038 = fsub fast float 1.000000e+00, %6037
  %6039 = fmul fast float %6024, %6038
  %6040 = fmul fast float %6039, %3957
  %6041 = fmul fast float %6039, %3958
  %6042 = fmul fast float %6039, %3959
  %6043 = fmul fast float %6018, %5926
  %6044 = fadd fast float %6040, %6043
  %6045 = fadd fast float %6041, %6043
  %6046 = fadd fast float %6042, %6043
  %6047 = fmul fast float %5908, %928
  %6048 = fmul fast float %6047, %6044
  %6049 = fmul fast float %5909, %928
  %6050 = fmul fast float %6049, %6045
  %6051 = fmul fast float %5910, %928
  %6052 = fmul fast float %6051, %6046
  %6053 = fadd fast float %6048, %5746
  %6054 = fadd fast float %6050, %5747
  %6055 = fadd fast float %6052, %5748
  %6056 = fmul fast float %6047, %5926
  %6057 = fmul fast float %6056, %6002
  %6058 = fmul fast float %6057, %5987
  %6059 = fmul fast float %6049, %5926
  %6060 = fmul fast float %6059, %6003
  %6061 = fmul fast float %6060, %5987
  %6062 = fmul fast float %6051, %5926
  %6063 = fmul fast float %6062, %6004
  %6064 = fmul fast float %6063, %5987
  %6065 = fadd fast float %6058, %5743
  %6066 = fadd fast float %6061, %5744
  %6067 = fadd fast float %6064, %5745
  br label %5821

; <label>:6068                                    ; preds = %5821
  br label %6069

; <label>:6069                                    ; preds = %6068, %5709
  %6070 = phi float [ %5711, %5709 ], [ %5822, %6068 ]
  %6071 = phi float [ %5712, %5709 ], [ %5823, %6068 ]
  %6072 = phi float [ %5713, %5709 ], [ %5824, %6068 ]
  %6073 = phi float [ %5714, %5709 ], [ %5825, %6068 ]
  %6074 = phi float [ %5715, %5709 ], [ %5826, %6068 ]
  %6075 = phi float [ %5716, %5709 ], [ %5827, %6068 ]
  %6076 = add i32 %5710, 1
  %6077 = icmp ugt i32 %6076, %5706
  br i1 %6077, label %6078, label %5709

; <label>:6078                                    ; preds = %6069
  br label %6079

; <label>:6079                                    ; preds = %6078, %5685, %5675
  %6080 = phi float [ %5676, %5675 ], [ %5676, %5685 ], [ %6070, %6078 ]
  %6081 = phi float [ %5677, %5675 ], [ %5677, %5685 ], [ %6071, %6078 ]
  %6082 = phi float [ %5678, %5675 ], [ %5678, %5685 ], [ %6072, %6078 ]
  %6083 = phi float [ %5679, %5675 ], [ %5679, %5685 ], [ %6073, %6078 ]
  %6084 = phi float [ %5680, %5675 ], [ %5680, %5685 ], [ %6074, %6078 ]
  %6085 = phi float [ %5681, %5675 ], [ %5681, %5685 ], [ %6075, %6078 ]
  %6086 = call float @dx.op.unary.f32(i32 24, float %4538)  ; Sqrt(value)
  %6087 = call float @dx.op.unary.f32(i32 24, float %4539)  ; Sqrt(value)
  %6088 = call float @dx.op.unary.f32(i32 24, float %4540)  ; Sqrt(value)
  %6089 = fmul fast float %6086, %6083
  %6090 = fmul fast float %6087, %6084
  %6091 = extractvalue %dx.types.CBufRet.f32 %5162, 0
  br i1 %167, label %6092, label %6113

; <label>:6092                                    ; preds = %6079
  %6093 = fadd fast float %6085, %3769
  %6094 = fmul fast float %6093, %3767
  %6095 = fsub fast float 1.000000e+00, %3767
  %6096 = call float @dx.op.unary.f32(i32 7, float %6095)  ; Saturate(value)
  %6097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6098 = extractvalue %dx.types.CBufRet.f32 %6097, 3
  %6099 = fmul fast float %6098, %6096
  %6100 = fadd fast float %6099, %6094
  %6101 = fsub fast float 1.000000e+00, %4548
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 0
  %6104 = fmul fast float %6103, %6101
  %6105 = fsub fast float %6100, %6104
  %6106 = fadd fast float %6090, %6089
  %6107 = fmul fast float %6091, %6106
  %6108 = extractvalue %dx.types.CBufRet.f32 %6097, 1
  %6109 = fsub fast float %6105, %6108
  %6110 = extractvalue %dx.types.CBufRet.f32 %6097, 2
  %6111 = fmul fast float %6109, %6110
  %6112 = call float @dx.op.unary.f32(i32 7, float %6111)  ; Saturate(value)
  br label %6129

; <label>:6113                                    ; preds = %6079
  %6114 = fmul fast float %6088, %6085
  %6115 = fmul fast float %6091, %6089
  %6116 = fmul fast float %6091, %6090
  %6117 = fmul fast float %6114, %6091
  %6118 = add i32 %37, 356
  %6119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %6118, i32 undef)  ; BufferLoad(srv,index,wot)
  %6120 = extractvalue %dx.types.ResRet.i32 %6119, 0
  %6121 = and i32 %6120, 32
  %6122 = icmp eq i32 %6121, 0
  br i1 %6122, label %6129, label %6123

; <label>:6123                                    ; preds = %6113
  %6124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6125 = extractvalue %dx.types.CBufRet.f32 %6124, 0
  %6126 = fmul fast float %6125, 0x3FE99999A0000000
  %6127 = fadd fast float %6125, %6115
  %6128 = fadd fast float %6126, %6117
  br label %6129

; <label>:6129                                    ; preds = %6123, %6113, %6092
  %6130 = phi float [ %6107, %6092 ], [ %6127, %6123 ], [ %6115, %6113 ]
  %6131 = phi float [ %6112, %6092 ], [ %6116, %6123 ], [ %6116, %6113 ]
  %6132 = phi float [ 1.000000e+00, %6092 ], [ %6128, %6123 ], [ %6117, %6113 ]
  %6133 = fmul fast float %6091, %6081
  %6134 = fmul fast float %6091, %6082
  %6135 = fadd fast float %6081, %6080
  %6136 = select i1 %167, float %6135, float %6080
  %6137 = fmul float %6136, %6091
  %6138 = select i1 %167, float 0.000000e+00, float %6133
  %6139 = select i1 %167, float 0.000000e+00, float %6134
  %6140 = fmul fast float %6130, %6086
  %6141 = fmul fast float %6131, %6087
  %6142 = fmul fast float %6132, %6088
  %6143 = fadd fast float %6137, %6140
  %6144 = fadd fast float %6138, %6141
  %6145 = fadd fast float %6139, %6142
  %6146 = select i1 %167, float %6131, float %6144
  %6147 = select i1 %167, float %6132, float %6145
  %6148 = call float @dx.op.binary.f32(i32 36, float %6143, float 3.225500e+04)  ; FMin(a,b)
  %6149 = call float @dx.op.binary.f32(i32 36, float %6146, float 3.225500e+04)  ; FMin(a,b)
  %6150 = call float @dx.op.binary.f32(i32 36, float %6147, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6148)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6149)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6150)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!48}
!dx.entryPoints = !{!49}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !39, !42}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !16}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!39 = !{!40, !41}
!40 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!41 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!42 = !{!43, !44, !45, !46, !47}
!43 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!44 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{[39 x i32] [i32 37, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 7]}
!49 = !{void ()* @ps_main, !"ps_main", !50, !4, !74}
!50 = !{!51, !72, null}
!51 = !{!52, !55, !57, !59, !61, !63, !64, !65, !66, !68, !70, !71}
!52 = !{i32 0, !"SV_Position", i8 9, i8 3, !53, i8 4, i32 1, i8 4, i32 0, i8 0, !54}
!53 = !{i32 0}
!54 = !{i32 3, i32 11}
!55 = !{i32 1, !"COLOR", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 1, i8 0, !56}
!56 = !{i32 3, i32 14}
!57 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 2, i8 0, !58}
!58 = !{i32 3, i32 3}
!59 = !{i32 3, !"NORMAL", i8 9, i8 0, !53, i8 2, i32 1, i8 3, i32 3, i8 0, !60}
!60 = !{i32 3, i32 7}
!61 = !{i32 4, !"TANGENT", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 4, i8 0, !62}
!62 = !{i32 3, i32 15}
!63 = !{i32 5, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !53, i8 2, i32 1, i8 2, i32 5, i8 0, !58}
!64 = !{i32 6, !"SCEONDARY_NORMAL", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 6, i8 0, !62}
!65 = !{i32 7, !"TINT_COLOR", i8 9, i8 0, !53, i8 2, i32 1, i8 3, i32 7, i8 0, !60}
!66 = !{i32 8, !"LOCAL_HEIGHT", i8 9, i8 0, !53, i8 2, i32 1, i8 1, i32 3, i8 3, !67}
!67 = !{i32 3, i32 1}
!68 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !53, i8 1, i32 1, i8 4, i32 8, i8 0, !69}
!69 = !{i32 3, i32 5}
!70 = !{i32 10, !"SV_IsFrontFace", i8 5, i8 13, !53, i8 1, i32 1, i8 1, i32 9, i8 0, !67}
!71 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !53, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !53, i8 0, i32 1, i8 4, i32 0, i8 0, !62}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}

