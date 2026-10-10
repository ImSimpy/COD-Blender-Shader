;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; SH_RED                   0   xyzw        4     NONE   float   xyzw
; SH_GREEN                 0   xyzw        5     NONE   float   xyzw
; SH_BLUE                  0   xyzw        6     NONE   float   xyzw
; SV_IsFrontFace           0   x           7    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: fa6bab985a80f4221a0cba5f57b82b04
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
; TEXCOORDS                0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
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
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3             t0     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     u32     2darray      T5     t11,space2     1
;                                   texture     f32     2darray      T6     t10,space2     1
;                                   texture     f32          2d      T7     t69,space2     1
;                                   texture    byte         r/o      T8     t16,space1     1
;                                   texture    byte         r/o      T9     t17,space1     1
;                                   texture     f32          2d     T10     t58,space2     1
;                                   texture     f32          2d     T11     t59,space2     1
;                                   texture     f32          2d     T12     t60,space2     1
;                                   texture    byte         r/o     T13     t45,space1     1
;                                   texture    byte         r/o     T14     t46,space1     1
;                                   texture    byte         r/o     T15     t47,space1     1
;                                   texture    byte         r/o     T16     t48,space1     1
;                                   texture     f32          2d     T17     t57,space2     1
;                                   texture    byte         r/o     T18     t69,space1     1
;                                   texture     f32          2d     T19     t34,space2     1
;                                   texture    byte         r/o     T20     t10,space1     1
;                                   texture    byte         r/o     T21     t68,space1     1
;                                   texture     f32          2d     T22      t0,space2     1
;                                   texture    byte         r/o     T23     t11,space1     1
;                                   texture    byte         r/o     T24     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 29, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 24, 25, 26, 27, 28 }
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
%struct.ByteAddressBuffer = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = icmp ne i32 %28, 0
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = fmul fast float %57, %51
  %59 = fmul fast float %57, %52
  %60 = select i1 %29, float 1.000000e+00, float -1.000000e+00
  %61 = fmul fast float %46, %60
  %62 = fmul fast float %47, %60
  %63 = fmul fast float %48, %60
  %64 = fmul fast float %47, %44
  %65 = fmul fast float %48, %43
  %66 = fsub fast float %64, %65
  %67 = fmul fast float %48, %42
  %68 = fmul fast float %46, %44
  %69 = fsub fast float %67, %68
  %70 = fmul fast float %46, %43
  %71 = fmul fast float %47, %42
  %72 = fsub fast float %70, %71
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 3
  %76 = fmul fast float %74, 2.000000e+00
  %77 = fmul fast float %76, %58
  %78 = fmul fast float %75, 2.000000e+00
  %79 = fmul fast float %78, %59
  %80 = fsub fast float 1.000000e+00, %77
  %81 = fsub fast float 1.000000e+00, %79
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fmul fast float %80, %83
  %87 = fmul fast float %80, %84
  %88 = fmul fast float %80, %85
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 1
  %92 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %93 = fmul fast float %81, %90
  %94 = fmul fast float %81, %91
  %95 = fmul fast float %81, %92
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 0
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 1
  %99 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %100 = fadd fast float %93, %97
  %101 = fadd fast float %100, %86
  %102 = fadd fast float %94, %98
  %103 = fadd fast float %102, %87
  %104 = fadd fast float %95, %99
  %105 = fadd fast float %104, %88
  %106 = fmul fast float %101, %53
  %107 = fmul fast float %103, %53
  %108 = fmul fast float %105, %53
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 3
  %112 = fmul fast float %110, %58
  %113 = fmul fast float %111, %59
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %115, 114688
  %117 = icmp ne i32 %116, 0
  %118 = select i1 %117, float %112, float 0.000000e+00
  %119 = select i1 %117, float %113, float 0.000000e+00
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = fmul fast float %121, 2.550000e+02
  %123 = fptoui float %122 to i32
  %124 = select i1 %117, i32 %123, i32 0
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.i32 %126, 3
  %128 = and i32 %127, 3
  %129 = icmp ne i32 %128, 0
  %130 = and i32 %127, 4
  %131 = icmp ne i32 %130, 0
  %132 = and i1 %129, %131
  br i1 %132, label %133, label %144

; <label>:133                                     ; preds = %0
  %134 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %135 = fmul fast float %134, %59
  %136 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %137 = fmul fast float %136, %58
  %138 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %137, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %139 = extractvalue %dx.types.ResRet.f32 %138, 0
  %140 = fsub fast float 1.000000e+00, %139
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = fcmp fast olt float %140, %142
  br label %147

; <label>:144                                     ; preds = %0
  %145 = icmp eq i32 %130, 0
  %146 = and i1 %129, %145
  br label %147

; <label>:147                                     ; preds = %144, %133
  %148 = phi i1 [ %143, %133 ], [ %146, %144 ]
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = shl i32 %150, 4
  %152 = and i32 %151, 32752
  %153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %152)  ; LegacyF16ToF32(value)
  %154 = lshr i32 %150, 7
  %155 = and i32 %154, 32752
  %156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %155)  ; LegacyF16ToF32(value)
  %157 = lshr i32 %150, 22
  %158 = shl nuw nsw i32 %157, 5
  %159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %158)  ; LegacyF16ToF32(value)
  %160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %161 = extractvalue %dx.types.ResRet.i32 %160, 0
  %162 = and i32 %161, 255
  %163 = uitofp i32 %162 to float
  %164 = fmul fast float %163, 0x3F70101020000000
  %165 = lshr i32 %161, 8
  %166 = and i32 %165, 255
  %167 = uitofp i32 %166 to float
  %168 = fmul fast float %167, 0x3F70101020000000
  %169 = lshr i32 %161, 16
  %170 = and i32 %169, 255
  %171 = uitofp i32 %170 to float
  %172 = fmul fast float %171, 0x3F70101020000000
  %173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %174 = extractvalue %dx.types.ResRet.i32 %173, 0
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = or i32 %180, %178
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %677, label %183

; <label>:183                                     ; preds = %147
  %184 = lshr i32 %176, 16
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = fmul fast float %185, 0x3F50624DE0000000
  %187 = and i32 %176, 65535
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = fmul fast float %188, 0x3F50624DE0000000
  %190 = lshr i32 %174, 16
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = and i32 %174, 65535
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192)  ; LegacyF16ToF32(value)
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = lshr i32 %195, 16
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = fmul fast float %197, 0x3F50624DE0000000
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = lshr i32 %200, 16
  %202 = and i32 %201, 255
  %203 = lshr i32 %200, 24
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = and i32 %205, 65535
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %205, 16
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = lshr i32 %211, 22
  %213 = shl nuw nsw i32 %212, 5
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = shl i32 %211, 4
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %211, 7
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %222 = extractvalue %dx.types.CBufRet.f32 %221, 3
  %223 = fmul fast float %222, 1.000000e+03
  %224 = fmul fast float %189, %223
  %225 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %226 = fadd fast float %225, %193
  %227 = fmul fast float %186, %223
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = fadd fast float %228, %191
  %230 = fmul fast float %198, %223
  %231 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %232 = fmul fast float %231, 0x401921FB60000000
  %233 = fadd fast float %232, %214
  %234 = call float @dx.op.unary.f32(i32 13, float %233)  ; Sin(value)
  %235 = call float @dx.op.unary.f32(i32 12, float %233)  ; Cos(value)
  %236 = fsub fast float -0.000000e+00, %234
  %237 = fadd fast float %49, -5.000000e-01
  %238 = fadd fast float %50, -5.000000e-01
  %239 = fmul fast float %207, %237
  %240 = fmul fast float %209, %238
  %241 = fadd fast float %239, 5.000000e-01
  %242 = fadd fast float %240, 5.000000e-01
  %243 = fmul fast float %217, %241
  %244 = fmul fast float %220, %242
  %245 = fmul fast float %235, %243
  %246 = call float @dx.op.tertiary.f32(i32 46, float %236, float %244, float %245)  ; FMad(a,b,c)
  %247 = fmul fast float %234, %243
  %248 = call float @dx.op.tertiary.f32(i32 46, float %235, float %244, float %247)  ; FMad(a,b,c)
  %249 = fadd fast float %226, %246
  %250 = fadd fast float %229, %248
  %251 = icmp ugt i32 %202, 1
  %252 = icmp ugt i32 %200, 33554431
  %253 = or i1 %252, %251
  br i1 %253, label %254, label %278

; <label>:254                                     ; preds = %183
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = lshr i32 %256, 16
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = fmul fast float %222, %258
  %260 = call float @dx.op.unary.f32(i32 22, float %259)  ; Frc(value)
  %261 = mul nuw nsw i32 %202, %203
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %260, %262
  %264 = call float @dx.op.unary.f32(i32 27, float %263)  ; Round_ni(value)
  %265 = fptoui float %264 to i32
  %266 = urem i32 %265, %202
  %267 = udiv i32 %265, %203
  %268 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %269 = call float @dx.op.unary.f32(i32 22, float %250)  ; Frc(value)
  %270 = uitofp i32 %266 to float
  %271 = uitofp i32 %267 to float
  %272 = fadd fast float %268, %270
  %273 = fadd fast float %269, %271
  %274 = uitofp i32 %202 to float
  %275 = uitofp i32 %203 to float
  %276 = fdiv fast float %272, %274
  %277 = fdiv fast float %273, %275
  br label %278

; <label>:278                                     ; preds = %254, %183
  %279 = phi float [ %276, %254 ], [ %249, %183 ]
  %280 = phi float [ %277, %254 ], [ %250, %183 ]
  %281 = and i32 %178, 16
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %474, label %283

; <label>:283                                     ; preds = %278
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = add i32 %285, 0
  %287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %286, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %288 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %287, %dx.types.Handle %54, float %279, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = extractvalue %dx.types.ResRet.f32 %288, 1
  %291 = extractvalue %dx.types.ResRet.f32 %288, 2
  %292 = extractvalue %dx.types.ResRet.f32 %288, 3
  %293 = and i32 %200, 255
  %294 = uitofp i32 %293 to float
  %295 = lshr i32 %200, 8
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %292, %294
  %299 = fadd fast float %298, %297
  %300 = fmul fast float %299, 0x3F70101000000000
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 512
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %312, label %305

; <label>:305                                     ; preds = %283
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = add i32 %307, 0
  %309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %309, %dx.types.Handle %55, float %279, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  br label %312

; <label>:312                                     ; preds = %305, %283
  %313 = phi float [ %311, %305 ], [ 1.000000e+00, %283 ]
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 33554432
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %421, label %318

; <label>:318                                     ; preds = %312
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = lshr i32 %330, 24
  %332 = uitofp i32 %331 to float
  %333 = fmul fast float %332, 0x3F70101020000000
  %334 = and i32 %330, 255
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = lshr i32 %330, 8
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %330, 16
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = lshr i32 %346, 24
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = and i32 %346, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = lshr i32 %346, 8
  %354 = and i32 %353, 255
  %355 = uitofp i32 %354 to float
  %356 = fmul fast float %355, 0x3F70101020000000
  %357 = lshr i32 %346, 16
  %358 = and i32 %357, 255
  %359 = uitofp i32 %358 to float
  %360 = fmul fast float %359, 0x3F70101020000000
  %361 = bitcast float %289 to i32
  %362 = ashr i32 %361, 1
  %363 = sub nsw i32 1597463174, %362
  %364 = bitcast i32 %363 to float
  %365 = fmul fast float %289, 5.000000e-01
  %366 = fmul fast float %364, %364
  %367 = fmul fast float %366, %365
  %368 = fsub fast float 1.500000e+00, %367
  %369 = fmul fast float %364, %289
  %370 = fmul fast float %369, %368
  %371 = bitcast float %290 to i32
  %372 = ashr i32 %371, 1
  %373 = sub nsw i32 1597463174, %372
  %374 = bitcast i32 %373 to float
  %375 = fmul fast float %290, 5.000000e-01
  %376 = fmul fast float %374, %374
  %377 = fmul fast float %376, %375
  %378 = fsub fast float 1.500000e+00, %377
  %379 = fmul fast float %374, %290
  %380 = fmul fast float %379, %378
  %381 = bitcast float %291 to i32
  %382 = ashr i32 %381, 1
  %383 = sub nsw i32 1597463174, %382
  %384 = bitcast i32 %383 to float
  %385 = fmul fast float %291, 5.000000e-01
  %386 = fmul fast float %384, %384
  %387 = fmul fast float %386, %385
  %388 = fsub fast float 1.500000e+00, %387
  %389 = fmul fast float %384, %291
  %390 = fmul fast float %389, %388
  %391 = fsub fast float %370, %352
  %392 = fsub fast float %380, %356
  %393 = fsub fast float %390, %360
  %394 = fmul fast float %391, %322
  %395 = fmul fast float %392, %324
  %396 = fmul fast float %393, %328
  %397 = fadd fast float %394, %336
  %398 = fadd fast float %395, %340
  %399 = fadd fast float %396, %344
  %400 = call float @dx.op.unary.f32(i32 7, float %397)  ; Saturate(value)
  %401 = call float @dx.op.unary.f32(i32 7, float %398)  ; Saturate(value)
  %402 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %403 = fmul fast float %400, %400
  %404 = fmul fast float %401, %401
  %405 = fmul fast float %402, %402
  %406 = fsub fast float %403, %289
  %407 = fsub fast float %404, %290
  %408 = fsub fast float %405, %291
  %409 = fmul fast float %406, %313
  %410 = fmul fast float %407, %313
  %411 = fmul fast float %408, %313
  %412 = fadd fast float %409, %289
  %413 = fadd fast float %410, %290
  %414 = fadd fast float %411, %291
  %415 = fadd fast float %333, %300
  %416 = fsub fast float %415, %349
  %417 = call float @dx.op.unary.f32(i32 7, float %416)  ; Saturate(value)
  %418 = fsub fast float %417, %300
  %419 = fmul fast float %418, %313
  %420 = fadd fast float %419, %300
  br label %474

; <label>:421                                     ; preds = %312
  %422 = and i32 %315, 134217728
  %423 = icmp eq i32 %422, 0
  br i1 %423, label %458, label %424

; <label>:424                                     ; preds = %421
  %425 = call float @dx.op.unary.f32(i32 24, float %164)  ; Sqrt(value)
  %426 = call float @dx.op.unary.f32(i32 24, float %168)  ; Sqrt(value)
  %427 = call float @dx.op.unary.f32(i32 24, float %172)  ; Sqrt(value)
  %428 = fadd fast float %425, -5.000000e-01
  %429 = fadd fast float %426, -5.000000e-01
  %430 = fadd fast float %427, -5.000000e-01
  %431 = fmul fast float %428, %313
  %432 = fmul fast float %429, %313
  %433 = fmul fast float %430, %313
  %434 = fadd fast float %431, 5.000000e-01
  %435 = fadd fast float %432, 5.000000e-01
  %436 = fadd fast float %433, 5.000000e-01
  %437 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %438 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %439 = call float @dx.op.unary.f32(i32 24, float %291)  ; Sqrt(value)
  %440 = fmul fast float %434, 2.000000e+00
  %441 = fsub fast float 1.000000e+00, %440
  %442 = fmul fast float %441, %437
  %443 = fadd fast float %442, %440
  %444 = fmul fast float %443, %437
  %445 = fmul fast float %435, 2.000000e+00
  %446 = fsub fast float 1.000000e+00, %445
  %447 = fmul fast float %446, %438
  %448 = fadd fast float %447, %445
  %449 = fmul fast float %448, %438
  %450 = fmul fast float %436, 2.000000e+00
  %451 = fsub fast float 1.000000e+00, %450
  %452 = fmul fast float %451, %439
  %453 = fadd fast float %452, %450
  %454 = fmul fast float %453, %439
  %455 = fmul fast float %444, %444
  %456 = fmul fast float %449, %449
  %457 = fmul fast float %454, %454
  br label %474

; <label>:458                                     ; preds = %421
  %459 = fmul fast float %164, %164
  %460 = fmul fast float %168, %168
  %461 = fmul fast float %172, %172
  %462 = fadd fast float %459, -1.000000e+00
  %463 = fadd fast float %460, -1.000000e+00
  %464 = fadd fast float %461, -1.000000e+00
  %465 = fmul fast float %313, %462
  %466 = fmul fast float %313, %463
  %467 = fmul fast float %313, %464
  %468 = fadd fast float %465, 1.000000e+00
  %469 = fadd fast float %466, 1.000000e+00
  %470 = fadd fast float %467, 1.000000e+00
  %471 = fmul fast float %468, %289
  %472 = fmul fast float %469, %290
  %473 = fmul fast float %470, %291
  br label %474

; <label>:474                                     ; preds = %458, %424, %318, %278
  %475 = phi float [ %420, %318 ], [ %300, %424 ], [ %300, %458 ], [ 0x3FA23C0BE0000000, %278 ]
  %476 = phi float [ %412, %318 ], [ %455, %424 ], [ %471, %458 ], [ 1.000000e+00, %278 ]
  %477 = phi float [ %413, %318 ], [ %456, %424 ], [ %472, %458 ], [ 1.000000e+00, %278 ]
  %478 = phi float [ %414, %318 ], [ %457, %424 ], [ %473, %458 ], [ 1.000000e+00, %278 ]
  %479 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %480 = extractvalue %dx.types.CBufRet.i32 %479, 1
  %481 = and i32 %480, 1
  %482 = icmp ne i32 %481, 0
  %483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %484 = extractvalue %dx.types.ResRet.i32 %483, 0
  %485 = and i32 %484, 32
  %486 = icmp ne i32 %485, 0
  %487 = and i1 %482, %486
  %488 = select i1 %487, float 1.000000e+00, float %476
  %489 = select i1 %487, float 0x3FD3333340000000, float %477
  %490 = select i1 %487, float 0x3FD3333340000000, float %478
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = and i32 %492, 32
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %564, label %495

; <label>:495                                     ; preds = %474
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = add i32 %499, 0
  %501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %501, %dx.types.Handle %54, float %279, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = and i32 %497, 255
  %508 = uitofp i32 %507 to float
  %509 = lshr i32 %497, 8
  %510 = and i32 %509, 255
  %511 = uitofp i32 %510 to float
  %512 = lshr i32 %497, 16
  %513 = and i32 %512, 255
  %514 = uitofp i32 %513 to float
  %515 = fmul fast float %514, 0x3F70101000000000
  %516 = fmul fast float %503, %508
  %517 = fadd fast float %516, %511
  %518 = fmul fast float %517, 0x3F70101000000000
  %519 = fadd fast float %504, -5.000000e-01
  %520 = fadd fast float %506, -5.000000e-01
  %521 = fmul fast float %519, %515
  %522 = fmul fast float %520, %515
  %523 = fadd fast float %521, 5.000000e-01
  %524 = fadd fast float %522, 5.000000e-01
  %525 = fmul fast float %523, 2.000000e+00
  %526 = fadd fast float %525, -1.000000e+00
  %527 = fmul fast float %524, 2.000000e+00
  %528 = fadd fast float %527, -1.000000e+00
  %529 = fadd fast float %526, %528
  %530 = fmul fast float %529, 5.000000e-01
  %531 = fsub fast float %526, %528
  %532 = fmul fast float %531, 5.000000e-01
  %533 = call float @dx.op.unary.f32(i32 6, float %530)  ; FAbs(value)
  %534 = fsub fast float 1.000000e+00, %533
  %535 = call float @dx.op.unary.f32(i32 6, float %532)  ; FAbs(value)
  %536 = fsub fast float %534, %535
  %537 = call float @dx.op.dot3.f32(i32 55, float %530, float %532, float %536, float %530, float %532, float %536)  ; Dot3(ax,ay,az,bx,by,bz)
  %538 = call float @dx.op.unary.f32(i32 25, float %537)  ; Rsqrt(value)
  %539 = fmul fast float %530, %538
  %540 = fmul fast float %532, %538
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 67108864
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %560, label %545

; <label>:545                                     ; preds = %495
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 65535
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 65535
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = lshr i32 %547, 16
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = fsub fast float %518, %555
  %557 = fmul fast float %556, %549
  %558 = fadd fast float %557, %553
  %559 = call float @dx.op.unary.f32(i32 7, float %558)  ; Saturate(value)
  br label %560

; <label>:560                                     ; preds = %545, %495
  %561 = phi float [ %559, %545 ], [ %518, %495 ]
  %562 = call float @dx.op.dot2.f32(i32 54, float %539, float %540, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %563 = call float @dx.op.dot2.f32(i32 54, float %539, float %540, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %564

; <label>:564                                     ; preds = %560, %474
  %565 = phi float [ %561, %560 ], [ 0x3FD6666660000000, %474 ]
  %566 = phi float [ %562, %560 ], [ 0.000000e+00, %474 ]
  %567 = phi float [ %563, %560 ], [ 0.000000e+00, %474 ]
  %568 = phi float [ %505, %560 ], [ 1.000000e+00, %474 ]
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = lshr i32 %570, 22
  %572 = shl nuw nsw i32 %571, 5
  %573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %572)  ; LegacyF16ToF32(value)
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 64
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %610, label %578

; <label>:578                                     ; preds = %564
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = add i32 %580, 0
  %582 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %581, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 131072
  %586 = icmp eq i32 %585, 0
  %587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %582, %dx.types.Handle %54, float %279, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = extractvalue %dx.types.ResRet.f32 %587, 1
  %590 = extractvalue %dx.types.ResRet.f32 %587, 2
  %591 = fmul fast float %588, %153
  %592 = fmul fast float %589, %156
  %593 = fmul fast float %590, %159
  br i1 %586, label %600, label %594

; <label>:594                                     ; preds = %578
  %595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %596 = extractvalue %dx.types.CBufRet.f32 %595, 0
  %597 = fmul fast float %596, %591
  %598 = fmul fast float %596, %592
  %599 = fmul fast float %596, %593
  br label %600

; <label>:600                                     ; preds = %594, %578
  %601 = phi float [ %597, %594 ], [ %591, %578 ]
  %602 = phi float [ %598, %594 ], [ %592, %578 ]
  %603 = phi float [ %599, %594 ], [ %593, %578 ]
  %604 = fmul fast float %601, %573
  %605 = select i1 %148, float %604, float %601
  %606 = call float @dx.op.dot3.f32(i32 55, float %605, float %602, float %603, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %607 = select i1 %148, float 0.000000e+00, float %601
  %608 = select i1 %148, float %606, float %602
  %609 = select i1 %148, float 0.000000e+00, float %603
  br label %610

; <label>:610                                     ; preds = %600, %564
  %611 = phi float [ %607, %600 ], [ 0.000000e+00, %564 ]
  %612 = phi float [ %608, %600 ], [ 0.000000e+00, %564 ]
  %613 = phi float [ %609, %600 ], [ 0.000000e+00, %564 ]
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 10240
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %660, label %618

; <label>:618                                     ; preds = %610
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = add i32 %620, 0
  %622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %622, %dx.types.Handle %55, float %279, float %280, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %624 = extractvalue %dx.types.ResRet.f32 %623, 1
  %625 = extractvalue %dx.types.ResRet.f32 %623, 3
  %626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %627 = extractvalue %dx.types.ResRet.i32 %626, 0
  %628 = and i32 %627, 1048576
  %629 = icmp ne i32 %628, 0
  %630 = and i32 %627, 8192
  %631 = icmp eq i32 %630, 0
  br i1 %631, label %646, label %632

; <label>:632                                     ; preds = %618
  %633 = extractvalue %dx.types.ResRet.f32 %623, 2
  %634 = select i1 %629, float %633, float %624
  %635 = extractvalue %dx.types.ResRet.f32 %623, 0
  %636 = select i1 %629, float %635, float %624
  %637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %638 = extractvalue %dx.types.ResRet.i32 %637, 0
  %639 = lshr i32 %638, 16
  %640 = and i32 %639, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F80101020000000
  %643 = fmul fast float %642, %636
  %644 = fmul fast float %642, %624
  %645 = fmul fast float %642, %634
  br label %646

; <label>:646                                     ; preds = %632, %618
  %647 = phi float [ %643, %632 ], [ 0.000000e+00, %618 ]
  %648 = phi float [ %644, %632 ], [ 0.000000e+00, %618 ]
  %649 = phi float [ %645, %632 ], [ 0.000000e+00, %618 ]
  %650 = and i32 %627, 2048
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %660, label %652

; <label>:652                                     ; preds = %646
  %653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %654 = extractvalue %dx.types.ResRet.i32 %653, 0
  %655 = shl i32 %654, 4
  %656 = and i32 %655, 32752
  %657 = call float @dx.op.legacyF16ToF32(i32 131, i32 %656)  ; LegacyF16ToF32(value)
  %658 = fmul fast float %657, %625
  %659 = call float @dx.op.binary.f32(i32 35, float %658, float 0x3F70101020000000)  ; FMax(a,b)
  br label %660

; <label>:660                                     ; preds = %652, %646, %610
  %661 = phi float [ %647, %652 ], [ %647, %646 ], [ 0.000000e+00, %610 ]
  %662 = phi float [ %648, %652 ], [ %648, %646 ], [ 0.000000e+00, %610 ]
  %663 = phi float [ %649, %652 ], [ %649, %646 ], [ 0.000000e+00, %610 ]
  %664 = phi float [ %659, %652 ], [ 0x3F70101020000000, %646 ], [ 0x3F70101020000000, %610 ]
  %665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %666 = extractvalue %dx.types.ResRet.i32 %665, 0
  %667 = and i32 %666, 255
  %668 = uitofp i32 %667 to float
  %669 = lshr i32 %666, 8
  %670 = and i32 %669, 255
  %671 = uitofp i32 %670 to float
  %672 = call float @dx.op.dot3.f32(i32 55, float %488, float %489, float %490, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %673 = fmul fast float %671, %672
  %674 = fadd fast float %673, %668
  %675 = fmul fast float %674, 0x3F70101020000000
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  br label %677

; <label>:677                                     ; preds = %660, %147
  %678 = phi float [ 0.000000e+00, %147 ], [ %566, %660 ]
  %679 = phi float [ 0.000000e+00, %147 ], [ %567, %660 ]
  %680 = phi float [ 0.000000e+00, %147 ], [ %488, %660 ]
  %681 = phi float [ 0.000000e+00, %147 ], [ %489, %660 ]
  %682 = phi float [ 0.000000e+00, %147 ], [ %490, %660 ]
  %683 = phi float [ 0.000000e+00, %147 ], [ %611, %660 ]
  %684 = phi float [ 0.000000e+00, %147 ], [ %612, %660 ]
  %685 = phi float [ 0.000000e+00, %147 ], [ %613, %660 ]
  %686 = phi float [ 0.000000e+00, %147 ], [ %661, %660 ]
  %687 = phi float [ 0.000000e+00, %147 ], [ %662, %660 ]
  %688 = phi float [ 0.000000e+00, %147 ], [ %663, %660 ]
  %689 = phi float [ 0.000000e+00, %147 ], [ %475, %660 ]
  %690 = phi float [ 0.000000e+00, %147 ], [ 1.000000e+00, %660 ]
  %691 = phi float [ 0.000000e+00, %147 ], [ %565, %660 ]
  %692 = phi float [ 0.000000e+00, %147 ], [ %568, %660 ]
  %693 = phi float [ 0.000000e+00, %147 ], [ %664, %660 ]
  %694 = phi float [ 0.000000e+00, %147 ], [ %676, %660 ]
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 0
  %697 = call float @dx.op.dot2.f32(i32 54, float %678, float %679, float %678, float %679)  ; Dot2(ax,ay,bx,by)
  %698 = fmul fast float %697, 0x3FE3333340000000
  %699 = fsub fast float 1.000000e+00, %698
  %700 = call float @dx.op.dot3.f32(i32 55, float %678, float %679, float %699, float %678, float %679, float %699)  ; Dot3(ax,ay,az,bx,by,bz)
  %701 = call float @dx.op.unary.f32(i32 25, float %700)  ; Rsqrt(value)
  %702 = fmul fast float %701, %678
  %703 = fmul fast float %701, %679
  %704 = fmul fast float %699, %701
  %705 = fmul fast float %704, %61
  %706 = fmul fast float %704, %62
  %707 = fmul fast float %704, %63
  %708 = fmul fast float %702, %42
  %709 = fmul fast float %702, %43
  %710 = fmul fast float %702, %44
  %711 = fmul fast float %66, %45
  %712 = fmul fast float %711, %703
  %713 = fmul fast float %69, %45
  %714 = fmul fast float %713, %703
  %715 = fmul fast float %72, %45
  %716 = fmul fast float %715, %703
  %717 = fadd fast float %712, %708
  %718 = fmul fast float %717, %60
  %719 = fadd fast float %718, %705
  %720 = fadd fast float %714, %709
  %721 = fmul fast float %720, %60
  %722 = fadd fast float %721, %706
  %723 = fadd fast float %716, %710
  %724 = fmul fast float %723, %60
  %725 = fadd fast float %724, %707
  %726 = call float @dx.op.dot3.f32(i32 55, float %719, float %722, float %725, float %719, float %722, float %725)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = call float @dx.op.unary.f32(i32 25, float %726)  ; Rsqrt(value)
  %728 = fmul fast float %719, %727
  %729 = fmul fast float %722, %727
  %730 = fmul fast float %725, %727
  %731 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %732 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %733 = call float @dx.op.unary.f32(i32 83, float %108)  ; DerivCoarseX(value)
  %734 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %735 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %736 = call float @dx.op.unary.f32(i32 84, float %108)  ; DerivCoarseY(value)
  %737 = fadd fast float %731, %106
  %738 = fadd fast float %732, %107
  %739 = fadd fast float %733, %108
  %740 = fadd fast float %734, %106
  %741 = fadd fast float %735, %107
  %742 = fadd fast float %736, %108
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %745 = extractvalue %dx.types.CBufRet.f32 %743, 1
  %746 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %750 = fmul fast float %744, %58
  %751 = fmul fast float %750, %748
  %752 = fmul fast float %745, %59
  %753 = fmul fast float %752, %749
  %754 = fptoui float %751 to i32
  %755 = fptoui float %753 to i32
  %756 = fadd fast float %744, -1.000000e+00
  %757 = fadd fast float %745, -1.000000e+00
  %758 = fptoui float %756 to i32
  %759 = fptoui float %757 to i32
  %760 = call i32 @dx.op.binary.i32(i32 40, i32 %754, i32 %758)  ; UMin(a,b)
  %761 = call i32 @dx.op.binary.i32(i32 40, i32 %755, i32 %759)  ; UMin(a,b)
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %764 = extractvalue %dx.types.CBufRet.f32 %762, 3
  %765 = fmul fast float %763, %53
  %766 = fsub fast float %765, %764
  %767 = fadd fast float %746, -1.000000e+00
  %768 = call float @dx.op.binary.f32(i32 36, float %766, float %767)  ; FMin(a,b)
  %769 = fptoui float %768 to i32
  %770 = fptoui float %744 to i32
  %771 = fptoui float %745 to i32
  %772 = mul i32 %769, %771
  %773 = add i32 %772, %761
  %774 = mul i32 %773, %770
  %775 = add i32 %774, %760
  %776 = shl i32 %775, 2
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 1023
  %780 = lshr i32 %778, 10
  %781 = icmp eq i32 %779, 0
  br i1 %781, label %1257, label %782

; <label>:782                                     ; preds = %677
  %783 = and i32 %778, 1023
  br label %784

; <label>:784                                     ; preds = %913, %782
  %785 = phi float [ %914, %913 ], [ 0.000000e+00, %782 ]
  %786 = phi float [ %915, %913 ], [ %696, %782 ]
  %787 = phi float [ %916, %913 ], [ %694, %782 ]
  %788 = phi float [ %917, %913 ], [ 0.000000e+00, %782 ]
  %789 = phi float [ %918, %913 ], [ 0.000000e+00, %782 ]
  %790 = phi float [ %919, %913 ], [ %686, %782 ]
  %791 = phi float [ %920, %913 ], [ %687, %782 ]
  %792 = phi float [ %921, %913 ], [ %688, %782 ]
  %793 = phi float [ %922, %913 ], [ %683, %782 ]
  %794 = phi float [ %923, %913 ], [ %684, %782 ]
  %795 = phi float [ %924, %913 ], [ %685, %782 ]
  %796 = phi float [ %925, %913 ], [ %728, %782 ]
  %797 = phi float [ %926, %913 ], [ %729, %782 ]
  %798 = phi float [ %927, %913 ], [ %730, %782 ]
  %799 = phi float [ %928, %913 ], [ %692, %782 ]
  %800 = phi float [ %929, %913 ], [ %691, %782 ]
  %801 = phi float [ %930, %913 ], [ 0.000000e+00, %782 ]
  %802 = phi float [ %931, %913 ], [ %689, %782 ]
  %803 = phi float [ %932, %913 ], [ %680, %782 ]
  %804 = phi float [ %933, %913 ], [ %681, %782 ]
  %805 = phi float [ %934, %913 ], [ %682, %782 ]
  %806 = phi i32 [ %863, %913 ], [ 0, %782 ]
  %807 = add nuw nsw i32 %806, %780
  %808 = shl i32 %807, 2
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = shl i32 %810, 8
  %812 = or i32 %811, 48
  %813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.f32 %813, 0
  %815 = extractvalue %dx.types.ResRet.f32 %813, 1
  %816 = extractvalue %dx.types.ResRet.f32 %813, 2
  %817 = extractvalue %dx.types.ResRet.f32 %813, 3
  %818 = or i32 %811, 64
  %819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.i32 %819, 0
  %821 = extractvalue %dx.types.ResRet.i32 %819, 1
  %822 = or i32 %811, 80
  %823 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 2
  %825 = extractvalue %dx.types.ResRet.f32 %823, 3
  %826 = or i32 %811, 96
  %827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.f32 %827, 0
  %829 = extractvalue %dx.types.ResRet.f32 %827, 1
  %830 = extractvalue %dx.types.ResRet.f32 %827, 2
  %831 = extractvalue %dx.types.ResRet.f32 %827, 3
  %832 = or i32 %811, 112
  %833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 2
  %835 = or i32 %811, 128
  %836 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.f32 %836, 0
  %838 = extractvalue %dx.types.ResRet.f32 %836, 1
  %839 = extractvalue %dx.types.ResRet.f32 %836, 2
  %840 = extractvalue %dx.types.ResRet.f32 %836, 3
  %841 = or i32 %811, 144
  %842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = extractvalue %dx.types.ResRet.f32 %842, 3
  %847 = or i32 %811, 160
  %848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = extractvalue %dx.types.ResRet.f32 %848, 3
  %853 = or i32 %811, 192
  %854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.i32 %854, 0
  %856 = or i32 %811, 208
  %857 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.f32 %857, 0
  %859 = or i32 %811, 248
  %860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = add nuw nsw i32 %806, 1
  %864 = bitcast float %817 to i32
  %865 = and i32 %864, 512
  %866 = icmp eq i32 %865, 0
  %867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %868 = extractvalue %dx.types.ResRet.f32 %867, 0
  %869 = extractvalue %dx.types.ResRet.f32 %867, 1
  %870 = extractvalue %dx.types.ResRet.f32 %867, 2
  %871 = extractvalue %dx.types.ResRet.f32 %867, 3
  %872 = call float @dx.op.dot4.f32(i32 56, float %868, float %869, float %870, float %871, float %106, float %107, float %108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %873 = or i32 %811, 16
  %874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.f32 %874, 0
  %876 = extractvalue %dx.types.ResRet.f32 %874, 1
  %877 = extractvalue %dx.types.ResRet.f32 %874, 2
  %878 = extractvalue %dx.types.ResRet.f32 %874, 3
  %879 = call float @dx.op.dot4.f32(i32 56, float %875, float %876, float %877, float %878, float %106, float %107, float %108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %880 = or i32 %811, 32
  %881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.f32 %881, 0
  %883 = extractvalue %dx.types.ResRet.f32 %881, 1
  %884 = extractvalue %dx.types.ResRet.f32 %881, 2
  %885 = extractvalue %dx.types.ResRet.f32 %881, 3
  %886 = call float @dx.op.dot4.f32(i32 56, float %882, float %883, float %884, float %885, float %106, float %107, float %108, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %887 = call float @dx.op.unary.f32(i32 27, float %872)  ; Round_ni(value)
  %888 = call float @dx.op.unary.f32(i32 6, float %887)  ; FAbs(value)
  %889 = call float @dx.op.unary.f32(i32 27, float %879)  ; Round_ni(value)
  %890 = call float @dx.op.unary.f32(i32 6, float %889)  ; FAbs(value)
  %891 = call float @dx.op.unary.f32(i32 6, float %886)  ; FAbs(value)
  %892 = call float @dx.op.unary.f32(i32 27, float %891)  ; Round_ni(value)
  %893 = fadd fast float %890, %888
  %894 = fadd fast float %893, %892
  %895 = fcmp fast oeq float %894, 0.000000e+00
  %896 = call float @dx.op.dot4.f32(i32 56, float %868, float %869, float %870, float %871, float %737, float %738, float %739, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %897 = call float @dx.op.dot4.f32(i32 56, float %875, float %876, float %877, float %878, float %737, float %738, float %739, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %898 = call float @dx.op.dot4.f32(i32 56, float %868, float %869, float %870, float %871, float %740, float %741, float %742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %899 = call float @dx.op.dot4.f32(i32 56, float %875, float %876, float %877, float %878, float %740, float %741, float %742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %900 = fsub fast float %896, %872
  %901 = fsub fast float %898, %872
  %902 = fsub fast float %897, %879
  %903 = fsub fast float %899, %879
  %904 = call float @dx.op.dot3.f32(i32 55, float %814, float %815, float %816, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 2
  %907 = fadd fast float %906, %904
  %908 = call float @dx.op.unary.f32(i32 7, float %907)  ; Saturate(value)
  %909 = extractvalue %dx.types.CBufRet.f32 %905, 0
  %910 = fcmp fast ogt float %908, %909
  %911 = and i1 %895, %910
  %912 = and i1 %866, %911
  br i1 %912, label %936, label %913

; <label>:913                                     ; preds = %1243, %1017, %936, %784
  %914 = phi float [ %785, %936 ], [ %1020, %1017 ], [ %1020, %1243 ], [ %785, %784 ]
  %915 = phi float [ %786, %936 ], [ %786, %1017 ], [ %1219, %1243 ], [ %786, %784 ]
  %916 = phi float [ %787, %936 ], [ %787, %1017 ], [ %1217, %1243 ], [ %787, %784 ]
  %917 = phi float [ %788, %936 ], [ %788, %1017 ], [ %1144, %1243 ], [ %788, %784 ]
  %918 = phi float [ %789, %936 ], [ %789, %1017 ], [ %1142, %1243 ], [ %789, %784 ]
  %919 = phi float [ %790, %936 ], [ %790, %1017 ], [ %1187, %1243 ], [ %790, %784 ]
  %920 = phi float [ %791, %936 ], [ %791, %1017 ], [ %1188, %1243 ], [ %791, %784 ]
  %921 = phi float [ %792, %936 ], [ %792, %1017 ], [ %1189, %1243 ], [ %792, %784 ]
  %922 = phi float [ %793, %936 ], [ %793, %1017 ], [ %1253, %1243 ], [ %793, %784 ]
  %923 = phi float [ %794, %936 ], [ %794, %1017 ], [ %1254, %1243 ], [ %794, %784 ]
  %924 = phi float [ %795, %936 ], [ %795, %1017 ], [ %1255, %1243 ], [ %795, %784 ]
  %925 = phi float [ %796, %936 ], [ %796, %1017 ], [ %1123, %1243 ], [ %796, %784 ]
  %926 = phi float [ %797, %936 ], [ %797, %1017 ], [ %1124, %1243 ], [ %797, %784 ]
  %927 = phi float [ %798, %936 ], [ %798, %1017 ], [ %1125, %1243 ], [ %798, %784 ]
  %928 = phi float [ %799, %936 ], [ %799, %1017 ], [ %1197, %1243 ], [ %799, %784 ]
  %929 = phi float [ %800, %936 ], [ %800, %1017 ], [ %1194, %1243 ], [ %800, %784 ]
  %930 = phi float [ %801, %936 ], [ %801, %1017 ], [ %1191, %1243 ], [ %801, %784 ]
  %931 = phi float [ %802, %936 ], [ %802, %1017 ], [ %1140, %1243 ], [ %802, %784 ]
  %932 = phi float [ %803, %936 ], [ %803, %1017 ], [ %1135, %1243 ], [ %803, %784 ]
  %933 = phi float [ %804, %936 ], [ %804, %1017 ], [ %1136, %1243 ], [ %804, %784 ]
  %934 = phi float [ %805, %936 ], [ %805, %1017 ], [ %1137, %1243 ], [ %805, %784 ]
  %935 = icmp eq i32 %863, %783
  br i1 %935, label %1256, label %784

; <label>:936                                     ; preds = %784
  %937 = extractvalue %dx.types.ResRet.f32 %833, 3
  %938 = extractvalue %dx.types.ResRet.f32 %833, 1
  %939 = extractvalue %dx.types.ResRet.f32 %833, 0
  %940 = extractvalue %dx.types.ResRet.f32 %823, 1
  %941 = extractvalue %dx.types.ResRet.f32 %823, 0
  %942 = extractvalue %dx.types.ResRet.i32 %819, 3
  %943 = extractvalue %dx.types.ResRet.i32 %819, 2
  %944 = add i32 %942, 0
  %945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %944, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %947 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %945, %dx.types.Handle %946, float %872, float %879, float undef, float undef, i32 0, i32 0, i32 undef, float %900, float %902, float undef, float %901, float %903, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %948 = extractvalue %dx.types.ResRet.f32 %947, 0
  %949 = fmul fast float %948, %941
  %950 = fadd fast float %949, %940
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = fmul fast float %872, %828
  %953 = call float @dx.op.tertiary.f32(i32 46, float %829, float %879, float %952)  ; FMad(a,b,c)
  %954 = fadd fast float %953, %939
  %955 = fmul fast float %872, %830
  %956 = call float @dx.op.tertiary.f32(i32 46, float %831, float %879, float %955)  ; FMad(a,b,c)
  %957 = fadd fast float %956, %938
  %958 = fmul fast float %900, %828
  %959 = call float @dx.op.tertiary.f32(i32 46, float %829, float %902, float %958)  ; FMad(a,b,c)
  %960 = fmul fast float %900, %830
  %961 = call float @dx.op.tertiary.f32(i32 46, float %831, float %902, float %960)  ; FMad(a,b,c)
  %962 = fmul fast float %901, %828
  %963 = call float @dx.op.tertiary.f32(i32 46, float %829, float %903, float %962)  ; FMad(a,b,c)
  %964 = fmul fast float %901, %830
  %965 = call float @dx.op.tertiary.f32(i32 46, float %831, float %903, float %964)  ; FMad(a,b,c)
  %966 = add i32 %943, 0
  %967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %966, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %968 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %967, %dx.types.Handle %946, float %954, float %957, float undef, float undef, i32 0, i32 0, i32 undef, float %959, float %961, float undef, float %963, float %965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %969 = extractvalue %dx.types.ResRet.f32 %968, 0
  %970 = and i32 %864, 1024
  %971 = icmp ne i32 %970, 0
  %972 = fcmp fast ogt float %969, 0x3FE0101020000000
  %973 = uitofp i1 %972 to float
  %974 = select i1 %971, float %973, float %969
  %975 = and i32 %864, 8192
  %976 = icmp ne i32 %975, 0
  %977 = select i1 %976, float %937, float 1.000000e+00
  %978 = fmul fast float %872, 2.000000e+00
  %979 = fadd fast float %978, -1.000000e+00
  %980 = call float @dx.op.unary.f32(i32 6, float %979)  ; FAbs(value)
  %981 = fmul fast float %980, %861
  %982 = fsub fast float %981, %861
  %983 = call float @dx.op.unary.f32(i32 7, float %982)  ; Saturate(value)
  %984 = fmul fast float %879, 2.000000e+00
  %985 = fadd fast float %984, -1.000000e+00
  %986 = call float @dx.op.unary.f32(i32 6, float %985)  ; FAbs(value)
  %987 = fmul fast float %986, %862
  %988 = fsub fast float %987, %862
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %990 = fmul fast float %891, %824
  %991 = fsub fast float %990, %824
  %992 = call float @dx.op.unary.f32(i32 7, float %991)  ; Saturate(value)
  %993 = fmul fast float %951, %977
  %994 = fmul fast float %993, %948
  %995 = fmul fast float %994, %983
  %996 = fmul fast float %995, %974
  %997 = fmul fast float %996, %989
  %998 = fmul fast float %997, %992
  %999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1000 = extractvalue %dx.types.CBufRet.f32 %999, 1
  %1001 = extractvalue %dx.types.CBufRet.f32 %999, 0
  %1002 = fsub fast float %908, %1001
  %1003 = fmul fast float %1002, %1000
  %1004 = call float @dx.op.unary.f32(i32 7, float %1003)  ; Saturate(value)
  %1005 = fmul fast float %998, %825
  %1006 = fadd fast float %998, %825
  %1007 = fmul fast float %1006, %834
  %1008 = fsub fast float %1007, %834
  %1009 = call float @dx.op.unary.f32(i32 7, float %1008)  ; Saturate(value)
  %1010 = and i32 %864, 128
  %1011 = icmp ne i32 %1010, 0
  %1012 = select i1 %1011, float %1009, float %1005
  %1013 = fmul fast float %1012, %1004
  %1014 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1015 = extractvalue %dx.types.CBufRet.f32 %1014, 0
  %1016 = fcmp fast ugt float %1013, %1015
  br i1 %1016, label %1017, label %913

; <label>:1017                                    ; preds = %936
  %1018 = select i1 %976, float %1013, float 0.000000e+00
  %1019 = fadd fast float %1018, %785
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  br i1 %976, label %913, label %1021

; <label>:1021                                    ; preds = %1017
  %1022 = and i32 %864, 4
  %1023 = and i32 %864, 8
  %1024 = add i32 %820, 0
  %1025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1024, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1026 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1027 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1025, %dx.types.Handle %1026, float %954, float %957, float undef, float undef, i32 0, i32 0, i32 undef, float %959, float %961, float undef, float %963, float %965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1028 = extractvalue %dx.types.ResRet.f32 %1027, 0
  %1029 = extractvalue %dx.types.ResRet.f32 %1027, 1
  %1030 = extractvalue %dx.types.ResRet.f32 %1027, 2
  %1031 = extractvalue %dx.types.ResRet.f32 %1027, 3
  %1032 = bitcast float %846 to i32
  %1033 = and i32 %1032, 255
  %1034 = uitofp i32 %1033 to float
  %1035 = lshr i32 %1032, 8
  %1036 = and i32 %1035, 255
  %1037 = uitofp i32 %1036 to float
  %1038 = fmul fast float %1031, %1034
  %1039 = fadd fast float %1038, %1037
  %1040 = fmul fast float %1039, 0x3F70101000000000
  %1041 = add i32 %821, 0
  %1042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1041, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1043 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1042, %dx.types.Handle %1026, float %954, float %957, float undef, float undef, i32 0, i32 0, i32 undef, float %959, float %961, float undef, float %963, float %965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.ResRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.ResRet.f32 %1043, 2
  %1047 = extractvalue %dx.types.ResRet.f32 %1043, 3
  %1048 = bitcast float %840 to i32
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = lshr i32 %1048, 8
  %1052 = and i32 %1051, 255
  %1053 = uitofp i32 %1052 to float
  %1054 = lshr i32 %1048, 16
  %1055 = and i32 %1054, 255
  %1056 = uitofp i32 %1055 to float
  %1057 = fmul fast float %1056, 0x3F70101000000000
  %1058 = fmul fast float %1044, %1050
  %1059 = fadd fast float %1058, %1053
  %1060 = fmul fast float %1059, 0x3F70101000000000
  %1061 = fadd fast float %1045, -5.000000e-01
  %1062 = fadd fast float %1047, -5.000000e-01
  %1063 = fmul fast float %1061, %1057
  %1064 = fmul fast float %1062, %1057
  %1065 = fadd fast float %1063, 5.000000e-01
  %1066 = fadd fast float %1064, 5.000000e-01
  %1067 = fmul fast float %1028, %849
  %1068 = fmul fast float %1029, %850
  %1069 = fmul fast float %1030, %851
  %1070 = fmul fast float %1065, 2.000000e+00
  %1071 = fadd fast float %1070, -1.000000e+00
  %1072 = fmul fast float %1066, 2.000000e+00
  %1073 = fadd fast float %1072, -1.000000e+00
  %1074 = fadd fast float %1071, %1073
  %1075 = fmul fast float %1074, 5.000000e-01
  %1076 = fsub fast float %1071, %1073
  %1077 = fmul fast float %1076, 5.000000e-01
  %1078 = call float @dx.op.unary.f32(i32 6, float %1075)  ; FAbs(value)
  %1079 = fsub fast float 1.000000e+00, %1078
  %1080 = call float @dx.op.unary.f32(i32 6, float %1077)  ; FAbs(value)
  %1081 = fsub fast float %1079, %1080
  %1082 = call float @dx.op.dot3.f32(i32 55, float %1075, float %1077, float %1081, float %1075, float %1077, float %1081)  ; Dot3(ax,ay,az,bx,by,bz)
  %1083 = call float @dx.op.unary.f32(i32 25, float %1082)  ; Rsqrt(value)
  %1084 = fmul fast float %1075, %1083
  %1085 = fmul fast float %1077, %1083
  %1086 = fmul fast float %1083, %1081
  %1087 = fmul fast float %1086, %814
  %1088 = fmul fast float %1086, %815
  %1089 = fmul fast float %1086, %816
  %1090 = fmul fast float %1084, %837
  %1091 = fmul fast float %1084, %838
  %1092 = fmul fast float %1084, %839
  %1093 = fadd fast float %1090, %1087
  %1094 = fadd fast float %1091, %1088
  %1095 = fadd fast float %1092, %1089
  %1096 = fmul fast float %1085, %843
  %1097 = fmul fast float %1085, %844
  %1098 = fmul fast float %1085, %845
  %1099 = fadd fast float %1093, %1096
  %1100 = fadd fast float %1094, %1097
  %1101 = fadd fast float %1095, %1098
  %1102 = call float @dx.op.dot3.f32(i32 55, float %1099, float %1100, float %1101, float %1099, float %1100, float %1101)  ; Dot3(ax,ay,az,bx,by,bz)
  %1103 = call float @dx.op.unary.f32(i32 25, float %1102)  ; Rsqrt(value)
  %1104 = fmul fast float %1099, %1103
  %1105 = fmul fast float %1100, %1103
  %1106 = fmul fast float %1101, %1103
  %1107 = icmp ne i32 %1023, 0
  %1108 = select i1 %1107, float 1.000000e+00, float 0.000000e+00
  %1109 = fmul fast float %1013, %1108
  %1110 = and i32 %864, 1
  %1111 = icmp eq i32 %1110, 0
  br i1 %1111, label %1112, label %1116

; <label>:1112                                    ; preds = %1021
  %1113 = fsub fast float %1104, %796
  %1114 = fsub fast float %1105, %797
  %1115 = fsub fast float %1106, %798
  br label %1116

; <label>:1116                                    ; preds = %1112, %1021
  %1117 = phi float [ %1113, %1112 ], [ %1104, %1021 ]
  %1118 = phi float [ %1114, %1112 ], [ %1105, %1021 ]
  %1119 = phi float [ %1115, %1112 ], [ %1106, %1021 ]
  %1120 = fmul float %1119, %1109
  %1121 = fmul float %1118, %1109
  %1122 = fmul float %1117, %1109
  %1123 = fadd fast float %1122, %796
  %1124 = fadd fast float %1121, %797
  %1125 = fadd fast float %1120, %798
  %1126 = icmp ne i32 %1022, 0
  %1127 = select i1 %1126, float 1.000000e+00, float 0.000000e+00
  %1128 = fmul fast float %1013, %1127
  %1129 = fsub fast float %1067, %803
  %1130 = fsub fast float %1068, %804
  %1131 = fsub fast float %1069, %805
  %1132 = fmul fast float %1129, %1128
  %1133 = fmul fast float %1130, %1128
  %1134 = fmul fast float %1131, %1128
  %1135 = fadd fast float %1132, %803
  %1136 = fadd fast float %1133, %804
  %1137 = fadd fast float %1134, %805
  %1138 = fsub fast float %1040, %802
  %1139 = fmul fast float %1138, %1128
  %1140 = fadd fast float %1139, %802
  %1141 = fmul fast float %1128, %789
  %1142 = fsub fast float %789, %1141
  %1143 = fmul fast float %1128, %788
  %1144 = fsub fast float %788, %1143
  %1145 = bitcast float %858 to i32
  %1146 = lshr i32 %1145, 16
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = and i32 %1149, 1
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1152, label %1177

; <label>:1152                                    ; preds = %1116
  %1153 = fadd fast float %1040, 0xBFB99999A0000000
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  %1155 = fmul fast float %1154, 0x3FF1C71C80000000
  %1156 = fsub fast float 1.000000e+00, %1155
  %1157 = call float @dx.op.unary.f32(i32 7, float %1156)  ; Saturate(value)
  %1158 = fmul fast float %1157, %1067
  %1159 = fmul fast float %1157, %1068
  %1160 = fmul fast float %1157, %1069
  %1161 = call float @dx.op.unary.f32(i32 7, float %1158)  ; Saturate(value)
  %1162 = call float @dx.op.unary.f32(i32 7, float %1159)  ; Saturate(value)
  %1163 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1164 = call float @dx.op.binary.f32(i32 35, float %1162, float %1163)  ; FMax(a,b)
  %1165 = call float @dx.op.binary.f32(i32 35, float %1161, float %1164)  ; FMax(a,b)
  %1166 = fcmp fast ogt float %1165, 0.000000e+00
  %1167 = bitcast float %1165 to i32
  %1168 = sub nsw i32 2129859010, %1167
  %1169 = bitcast i32 %1168 to float
  %1170 = select i1 %1166, float %1169, float 0.000000e+00
  %1171 = fmul fast float %1161, %1147
  %1172 = fmul fast float %1162, %1147
  %1173 = fmul fast float %1163, %1147
  %1174 = fmul fast float %1171, %1170
  %1175 = fmul fast float %1172, %1170
  %1176 = fmul fast float %1173, %1170
  br label %1177

; <label>:1177                                    ; preds = %1152, %1116
  %1178 = phi float [ %1147, %1116 ], [ %1174, %1152 ]
  %1179 = phi float [ %1147, %1116 ], [ %1175, %1152 ]
  %1180 = phi float [ %1147, %1116 ], [ %1176, %1152 ]
  %1181 = fsub fast float %1178, %790
  %1182 = fsub fast float %1179, %791
  %1183 = fsub fast float %1180, %792
  %1184 = fmul fast float %1181, %1128
  %1185 = fmul fast float %1182, %1128
  %1186 = fmul fast float %1183, %1128
  %1187 = fadd fast float %1184, %790
  %1188 = fadd fast float %1185, %791
  %1189 = fadd fast float %1186, %792
  %1190 = fadd fast float %1013, %801
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = fsub fast float %1060, %800
  %1193 = fmul fast float %1192, %1109
  %1194 = fadd fast float %1193, %800
  %1195 = fsub fast float %1046, %799
  %1196 = fmul fast float %1195, %1109
  %1197 = fadd fast float %1196, %799
  %1198 = call float @dx.op.dot3.f32(i32 55, float %1067, float %1068, float %1069, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1200 = extractvalue %dx.types.CBufRet.f32 %1199, 0
  %1201 = extractvalue %dx.types.CBufRet.f32 %1199, 1
  %1202 = fmul fast float %1201, %1198
  %1203 = fadd fast float %1202, %1200
  %1204 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1205 = bitcast float %852 to i32
  %1206 = and i32 %1205, 65535
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = lshr i32 %1205, 16
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = fcmp fast oge float %1207, 0.000000e+00
  %1211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1212 = extractvalue %dx.types.CBufRet.f32 %1211, 0
  %1213 = select i1 %1210, float %1207, float %1212
  %1214 = fadd fast float %1213, %1209
  %1215 = fsub fast float %1204, %787
  %1216 = fmul fast float %1215, %1013
  %1217 = fadd fast float %1216, %787
  %1218 = fmul fast float %1214, %1013
  %1219 = call float @dx.op.binary.f32(i32 35, float %786, float %1218)  ; FMax(a,b)
  %1220 = and i32 %864, 16
  %1221 = icmp eq i32 %1220, 0
  br i1 %1221, label %1243, label %1222

; <label>:1222                                    ; preds = %1177
  %1223 = add i32 %855, 0
  %1224 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1223, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1225 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1224, %dx.types.Handle %1026, float %954, float %957, float undef, float undef, i32 0, i32 0, i32 undef, float %959, float %961, float undef, float %963, float %965, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1226 = extractvalue %dx.types.ResRet.f32 %1225, 0
  %1227 = extractvalue %dx.types.ResRet.f32 %1225, 1
  %1228 = extractvalue %dx.types.ResRet.f32 %1225, 2
  %1229 = and i32 %1145, 65535
  %1230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1229)  ; LegacyF16ToF32(value)
  %1231 = fmul fast float %1226, %849
  %1232 = fmul fast float %1227, %850
  %1233 = fmul fast float %1228, %851
  %1234 = and i32 %864, 16384
  %1235 = icmp ne i32 %1234, 0
  %1236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1237 = extractvalue %dx.types.CBufRet.f32 %1236, 0
  %1238 = select i1 %1235, float %1237, float 1.000000e+00
  %1239 = fmul fast float %1238, %1230
  %1240 = fmul fast float %1231, %1239
  %1241 = fmul fast float %1232, %1239
  %1242 = fmul fast float %1233, %1239
  br label %1243

; <label>:1243                                    ; preds = %1222, %1177
  %1244 = phi float [ %1240, %1222 ], [ 0.000000e+00, %1177 ]
  %1245 = phi float [ %1241, %1222 ], [ 0.000000e+00, %1177 ]
  %1246 = phi float [ %1242, %1222 ], [ 0.000000e+00, %1177 ]
  %1247 = fsub fast float %1244, %793
  %1248 = fsub fast float %1245, %794
  %1249 = fsub fast float %1246, %795
  %1250 = fmul fast float %1247, %1013
  %1251 = fmul fast float %1248, %1013
  %1252 = fmul fast float %1249, %1013
  %1253 = fadd fast float %1250, %793
  %1254 = fadd fast float %1251, %794
  %1255 = fadd fast float %1252, %795
  br label %913

; <label>:1256                                    ; preds = %913
  br label %1257

; <label>:1257                                    ; preds = %1256, %677
  %1258 = phi float [ 0.000000e+00, %677 ], [ %914, %1256 ]
  %1259 = phi float [ %696, %677 ], [ %915, %1256 ]
  %1260 = phi float [ %694, %677 ], [ %916, %1256 ]
  %1261 = phi float [ 0.000000e+00, %677 ], [ %917, %1256 ]
  %1262 = phi float [ 0.000000e+00, %677 ], [ %918, %1256 ]
  %1263 = phi float [ %686, %677 ], [ %919, %1256 ]
  %1264 = phi float [ %687, %677 ], [ %920, %1256 ]
  %1265 = phi float [ %688, %677 ], [ %921, %1256 ]
  %1266 = phi float [ %683, %677 ], [ %922, %1256 ]
  %1267 = phi float [ %684, %677 ], [ %923, %1256 ]
  %1268 = phi float [ %685, %677 ], [ %924, %1256 ]
  %1269 = phi float [ %728, %677 ], [ %925, %1256 ]
  %1270 = phi float [ %729, %677 ], [ %926, %1256 ]
  %1271 = phi float [ %730, %677 ], [ %927, %1256 ]
  %1272 = phi float [ %692, %677 ], [ %928, %1256 ]
  %1273 = phi float [ %691, %677 ], [ %929, %1256 ]
  %1274 = phi float [ 0.000000e+00, %677 ], [ %930, %1256 ]
  %1275 = phi float [ %689, %677 ], [ %931, %1256 ]
  %1276 = phi float [ %680, %677 ], [ %932, %1256 ]
  %1277 = phi float [ %681, %677 ], [ %933, %1256 ]
  %1278 = phi float [ %682, %677 ], [ %934, %1256 ]
  %1279 = call float @dx.op.dot3.f32(i32 55, float %1269, float %1270, float %1271, float %1269, float %1270, float %1271)  ; Dot3(ax,ay,az,bx,by,bz)
  %1280 = call float @dx.op.unary.f32(i32 25, float %1279)  ; Rsqrt(value)
  %1281 = fmul fast float %1280, %1269
  %1282 = fmul fast float %1280, %1270
  %1283 = fmul fast float %1280, %1271
  %1284 = fadd fast float %1274, %690
  %1285 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1286 = call float @dx.op.dot3.f32(i32 55, float %1281, float %1282, float %1283, float %1281, float %1282, float %1283)  ; Dot3(ax,ay,az,bx,by,bz)
  %1287 = call float @dx.op.unary.f32(i32 25, float %1286)  ; Rsqrt(value)
  %1288 = fmul fast float %1287, %1281
  %1289 = fmul fast float %1287, %1282
  %1290 = fmul fast float %1287, %1283
  %1291 = fadd fast float %1275, 0xBFB99999A0000000
  %1292 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1293 = fmul fast float %1292, 0x3FF1C71C80000000
  %1294 = call float @dx.op.binary.f32(i32 36, float %1275, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1295 = fsub fast float 1.000000e+00, %1293
  %1296 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1297 = fmul fast float %1296, %1276
  %1298 = fmul fast float %1296, %1277
  %1299 = fmul fast float %1296, %1278
  %1300 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1301 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1302 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1303 = fmul fast float %1293, %1276
  %1304 = fmul fast float %1293, %1277
  %1305 = fmul fast float %1293, %1278
  %1306 = fadd fast float %1303, %1294
  %1307 = fadd fast float %1304, %1294
  %1308 = fadd fast float %1305, %1294
  %1309 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1310 = call float @dx.op.unary.f32(i32 7, float %1307)  ; Saturate(value)
  %1311 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  %1312 = call float @dx.op.unary.f32(i32 7, float %1273)  ; Saturate(value)
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 1
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1331, label %1317

; <label>:1317                                    ; preds = %1257
  %1318 = call float @dx.op.binary.f32(i32 35, float %1301, float %1302)  ; FMax(a,b)
  %1319 = call float @dx.op.binary.f32(i32 35, float %1300, float %1318)  ; FMax(a,b)
  %1320 = fcmp fast ogt float %1319, 0.000000e+00
  %1321 = bitcast float %1319 to i32
  %1322 = sub nsw i32 2129859010, %1321
  %1323 = bitcast i32 %1322 to float
  %1324 = select i1 %1320, float %1323, float 0.000000e+00
  %1325 = fmul fast float %1300, %1263
  %1326 = fmul fast float %1301, %1264
  %1327 = fmul fast float %1302, %1265
  %1328 = fmul fast float %1325, %1324
  %1329 = fmul fast float %1326, %1324
  %1330 = fmul fast float %1327, %1324
  br label %1331

; <label>:1331                                    ; preds = %1317, %1257
  %1332 = phi float [ %1328, %1317 ], [ %1263, %1257 ]
  %1333 = phi float [ %1329, %1317 ], [ %1264, %1257 ]
  %1334 = phi float [ %1330, %1317 ], [ %1265, %1257 ]
  %1335 = fadd fast float %1300, 0xBFD51EB860000000
  %1336 = fadd fast float %1301, 0xBFD51EB860000000
  %1337 = fadd fast float %1302, 0xBFD51EB860000000
  %1338 = fmul fast float %1335, %1335
  %1339 = fmul fast float %1336, %1336
  %1340 = fmul fast float %1337, %1337
  %1341 = fmul fast float %1338, %1338
  %1342 = fmul fast float %1341, 1.000000e+02
  %1343 = fmul fast float %1339, %1339
  %1344 = fmul fast float %1343, 1.000000e+02
  %1345 = fmul fast float %1340, %1340
  %1346 = fmul fast float %1345, 1.000000e+02
  %1347 = fadd fast float %1342, 3.500000e+00
  %1348 = fadd fast float %1344, 3.500000e+00
  %1349 = fadd fast float %1346, 3.500000e+00
  %1350 = call float @dx.op.binary.f32(i32 35, float %1332, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %1351 = call float @dx.op.binary.f32(i32 35, float %1333, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %1352 = call float @dx.op.binary.f32(i32 35, float %1334, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %1353 = fdiv fast float %1347, %1350
  %1354 = fdiv fast float %1348, %1351
  %1355 = fdiv fast float %1349, %1352
  %1356 = fmul fast float %693, 0xBFF7154760000000
  %1357 = fmul fast float %1356, %1353
  %1358 = call float @dx.op.unary.f32(i32 21, float %1357)  ; Exp(value)
  %1359 = fmul fast float %1358, 2.500000e-01
  %1360 = fmul fast float %693, 0xBFDEC709E0000000
  %1361 = fmul fast float %1360, %1353
  %1362 = call float @dx.op.unary.f32(i32 21, float %1361)  ; Exp(value)
  %1363 = fmul fast float %1362, 7.500000e-01
  %1364 = fmul fast float %1356, %1354
  %1365 = call float @dx.op.unary.f32(i32 21, float %1364)  ; Exp(value)
  %1366 = fmul fast float %1365, 2.500000e-01
  %1367 = fmul fast float %1360, %1354
  %1368 = call float @dx.op.unary.f32(i32 21, float %1367)  ; Exp(value)
  %1369 = fmul fast float %1368, 7.500000e-01
  %1370 = fmul fast float %1356, %1355
  %1371 = call float @dx.op.unary.f32(i32 21, float %1370)  ; Exp(value)
  %1372 = fmul fast float %1371, 2.500000e-01
  %1373 = fmul fast float %1360, %1355
  %1374 = call float @dx.op.unary.f32(i32 21, float %1373)  ; Exp(value)
  %1375 = fmul fast float %1374, 7.500000e-01
  %1376 = fadd fast float %1359, %1363
  %1377 = fadd fast float %1366, %1369
  %1378 = fadd fast float %1372, %1375
  %1379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.i32 %1379, 3
  %1381 = and i32 %1380, 8
  %1382 = icmp ne i32 %1381, 0
  %1383 = call float @dx.op.binary.f32(i32 35, float %1300, float %1276)  ; FMax(a,b)
  %1384 = call float @dx.op.binary.f32(i32 35, float %1301, float %1276)  ; FMax(a,b)
  %1385 = call float @dx.op.binary.f32(i32 35, float %1302, float %1276)  ; FMax(a,b)
  %1386 = call float @dx.op.dot3.f32(i32 55, float %1300, float %1301, float %1302, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1387 = select i1 %148, float %1276, float %1300
  %1388 = select i1 %148, float %1386, float %1301
  %1389 = select i1 %148, float 1.000000e+00, float %1302
  %1390 = select i1 %1382, float %1383, float %1387
  %1391 = select i1 %1382, float %1384, float %1388
  %1392 = select i1 %1382, float %1385, float %1389
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 0
  %1395 = extractvalue %dx.types.CBufRet.f32 %1393, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1397 = fadd fast float %1394, %106
  %1398 = fadd fast float %1395, %107
  %1399 = fadd fast float %1396, %108
  %1400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1401 = extractvalue %dx.types.CBufRet.f32 %1400, 0
  %1402 = extractvalue %dx.types.CBufRet.f32 %1400, 1
  %1403 = fsub fast float %1397, %1401
  %1404 = fsub fast float %1398, %1402
  %1405 = fmul fast float %1403, %1403
  %1406 = fmul fast float %1404, %1404
  %1407 = fadd fast float %1405, %1406
  %1408 = call float @dx.op.unary.f32(i32 24, float %1407)  ; Sqrt(value)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1400, 2
  %1410 = fcmp fast olt float %1408, %1409
  br i1 %1410, label %1411, label %1478

; <label>:1411                                    ; preds = %1331
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 0
  %1414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1415 = extractvalue %dx.types.CBufRet.f32 %1414, 0
  %1416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1416, 0
  %1418 = extractvalue %dx.types.CBufRet.f32 %1412, 1
  %1419 = extractvalue %dx.types.CBufRet.f32 %1414, 1
  %1420 = extractvalue %dx.types.CBufRet.f32 %1416, 1
  %1421 = extractvalue %dx.types.CBufRet.f32 %1412, 3
  %1422 = extractvalue %dx.types.CBufRet.f32 %1414, 3
  %1423 = extractvalue %dx.types.CBufRet.f32 %1416, 3
  %1424 = fadd fast float %1421, %1397
  %1425 = fadd fast float %1422, %1398
  %1426 = fadd fast float %1423, %1399
  %1427 = fmul fast float %1424, %1413
  %1428 = call float @dx.op.tertiary.f32(i32 46, float %1425, float %1415, float %1427)  ; FMad(a,b,c)
  %1429 = call float @dx.op.tertiary.f32(i32 46, float %1426, float %1417, float %1428)  ; FMad(a,b,c)
  %1430 = fmul fast float %1424, %1418
  %1431 = call float @dx.op.tertiary.f32(i32 46, float %1425, float %1419, float %1430)  ; FMad(a,b,c)
  %1432 = call float @dx.op.tertiary.f32(i32 46, float %1426, float %1420, float %1431)  ; FMad(a,b,c)
  %1433 = fsub fast float %1429, %1421
  %1434 = fsub fast float %1432, %1422
  %1435 = fsub fast float %1433, %1401
  %1436 = fadd fast float %1435, %1409
  %1437 = fsub fast float %1434, %1402
  %1438 = fadd fast float %1437, %1409
  %1439 = extractvalue %dx.types.CBufRet.f32 %1400, 3
  %1440 = fmul fast float %1436, %1439
  %1441 = fmul fast float %1438, %1439
  %1442 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1443 = call float @dx.op.unary.f32(i32 7, float %1441)  ; Saturate(value)
  %1444 = fsub fast float 1.000000e+00, %1442
  %1445 = fsub fast float 1.000000e+00, %1443
  %1446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1447 = extractvalue %dx.types.ResRet.f32 %1446, 0
  %1448 = fcmp fast ugt float %1447, 0.000000e+00
  br i1 %1448, label %1449, label %1752

; <label>:1449                                    ; preds = %1411
  %1450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1451 = extractvalue %dx.types.CBufRet.f32 %1450, 2
  %1452 = fmul fast float %1451, %1447
  %1453 = extractvalue %dx.types.CBufRet.f32 %1450, 3
  %1454 = fadd fast float %1453, %1452
  %1455 = extractvalue %dx.types.CBufRet.f32 %1416, 2
  %1456 = fadd fast float %1454, %1423
  %1457 = fmul fast float %1429, %1417
  %1458 = call float @dx.op.tertiary.f32(i32 46, float %1432, float %1420, float %1457)  ; FMad(a,b,c)
  %1459 = call float @dx.op.tertiary.f32(i32 46, float %1456, float %1455, float %1458)  ; FMad(a,b,c)
  %1460 = fsub fast float %1459, %1423
  %1461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.f32 %1461, 2
  %1463 = fsub fast float %1460, %1462
  %1464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1465 = extractvalue %dx.types.ResRet.f32 %1464, 0
  %1466 = extractvalue %dx.types.ResRet.f32 %1464, 1
  %1467 = extractvalue %dx.types.ResRet.f32 %1464, 2
  %1468 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1444, float %1445, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1468, 2
  %1472 = fadd fast float %1469, %1465
  %1473 = fmul fast float %1472, 0x3F847AE140000000
  %1474 = fadd fast float %1470, %1466
  %1475 = fmul fast float %1474, 0x3F847AE140000000
  %1476 = fadd fast float %1471, %1467
  %1477 = fmul fast float %1476, 0x3F847AE140000000
  br label %1752

; <label>:1478                                    ; preds = %1331
  %1479 = and i32 %124, 1
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1752, label %1481

; <label>:1481                                    ; preds = %1478
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 0
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 0
  %1488 = extractvalue %dx.types.CBufRet.f32 %1482, 1
  %1489 = extractvalue %dx.types.CBufRet.f32 %1484, 1
  %1490 = extractvalue %dx.types.CBufRet.f32 %1486, 1
  %1491 = extractvalue %dx.types.CBufRet.f32 %1482, 3
  %1492 = extractvalue %dx.types.CBufRet.f32 %1484, 3
  %1493 = extractvalue %dx.types.CBufRet.f32 %1486, 3
  %1494 = fadd fast float %1491, %1397
  %1495 = fadd fast float %1492, %1398
  %1496 = fadd fast float %1493, %1399
  %1497 = fmul fast float %1494, %1483
  %1498 = call float @dx.op.tertiary.f32(i32 46, float %1495, float %1485, float %1497)  ; FMad(a,b,c)
  %1499 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %1487, float %1498)  ; FMad(a,b,c)
  %1500 = fmul fast float %1494, %1488
  %1501 = call float @dx.op.tertiary.f32(i32 46, float %1495, float %1489, float %1500)  ; FMad(a,b,c)
  %1502 = call float @dx.op.tertiary.f32(i32 46, float %1496, float %1490, float %1501)  ; FMad(a,b,c)
  %1503 = fsub fast float %1499, %1491
  %1504 = fsub fast float %1502, %1492
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.CBufRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.CBufRet.f32 %1505, 2
  %1509 = extractvalue %dx.types.CBufRet.f32 %1505, 3
  %1510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1511 = extractvalue %dx.types.CBufRet.f32 %1510, 3
  %1512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.i32 %1512, 0
  %1514 = extractvalue %dx.types.CBufRet.i32 %1512, 1
  %1515 = udiv i32 %1514, %1513
  %1516 = fsub fast float %1503, %1506
  %1517 = fsub fast float %1504, %1507
  %1518 = call float @dx.op.binary.f32(i32 35, float %1516, float 0.000000e+00)  ; FMax(a,b)
  %1519 = call float @dx.op.binary.f32(i32 35, float %1517, float 0.000000e+00)  ; FMax(a,b)
  %1520 = call float @dx.op.binary.f32(i32 36, float %1518, float %1508)  ; FMin(a,b)
  %1521 = call float @dx.op.binary.f32(i32 36, float %1519, float %1509)  ; FMin(a,b)
  %1522 = add i32 %1513, -1
  %1523 = add i32 %1515, -1
  %1524 = fmul fast float %1520, %1511
  %1525 = fmul fast float %1521, %1511
  %1526 = fptoui float %1524 to i32
  %1527 = fptoui float %1525 to i32
  %1528 = call i32 @dx.op.binary.i32(i32 40, i32 %1526, i32 %1522)  ; UMin(a,b)
  %1529 = call i32 @dx.op.binary.i32(i32 40, i32 %1527, i32 %1523)  ; UMin(a,b)
  %1530 = mul i32 %1529, %1513
  %1531 = add i32 %1530, %1528
  %1532 = shl i32 %1531, 2
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = icmp eq i32 %1534, -1
  br i1 %1535, label %1752, label %1536

; <label>:1536                                    ; preds = %1481
  %1537 = mul i32 %1534, 148
  %1538 = add i32 %1537, 4
  %1539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.f32 %1539, 0
  %1541 = add i32 %1537, 8
  %1542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.f32 %1542, 0
  %1544 = add i32 %1537, 36
  %1545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.f32 %1545, 0
  %1547 = add i32 %1537, 60
  %1548 = add i32 %1537, 92
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %1537, 116
  %1552 = fsub fast float %1503, %1540
  %1553 = fsub fast float %1504, %1543
  %1554 = fmul fast float %1511, %1552
  %1555 = fmul fast float %1511, %1553
  %1556 = call float @dx.op.unary.f32(i32 7, float %1554)  ; Saturate(value)
  %1557 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  %1558 = fsub fast float 1.000000e+00, %1557
  %1559 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1560 = extractvalue %dx.types.CBufRet.f32 %1559, 2
  %1561 = call float @dx.op.unary.f32(i32 83, float %1556)  ; DerivCoarseX(value)
  %1562 = call float @dx.op.unary.f32(i32 83, float %1558)  ; DerivCoarseX(value)
  %1563 = call float @dx.op.unary.f32(i32 84, float %1556)  ; DerivCoarseY(value)
  %1564 = call float @dx.op.unary.f32(i32 84, float %1558)  ; DerivCoarseY(value)
  %1565 = fmul fast float %1561, %1560
  %1566 = fmul fast float %1562, %1560
  %1567 = fmul fast float %1563, %1560
  %1568 = fmul fast float %1564, %1560
  %1569 = call float @dx.op.dot2.f32(i32 54, float %1567, float %1568, float %1567, float %1568)  ; Dot2(ax,ay,bx,by)
  %1570 = call float @dx.op.dot2.f32(i32 54, float %1565, float %1566, float %1565, float %1566)  ; Dot2(ax,ay,bx,by)
  %1571 = call float @dx.op.binary.f32(i32 35, float %1570, float %1569)  ; FMax(a,b)
  %1572 = call float @dx.op.unary.f32(i32 23, float %1571)  ; Log(value)
  %1573 = fmul fast float %1572, 5.000000e-01
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 1
  %1576 = fadd fast float %1575, %1573
  %1577 = call float @dx.op.binary.f32(i32 35, float %1576, float 0.000000e+00)  ; FMax(a,b)
  %1578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1579 = extractvalue %dx.types.CBufRet.f32 %1578, 3
  %1580 = fadd fast float %1579, %1577
  %1581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1582 = extractvalue %dx.types.CBufRet.f32 %1581, 3
  %1583 = fadd fast float %1580, %1582
  %1584 = add i32 %1550, 0
  %1585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1584, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1586 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1585, i32 0)  ; GetDimensions(handle,mipLevel)
  %1587 = extractvalue %dx.types.Dimensions %1586, 0
  %1588 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1587)  ; FirstbitLo(value)
  %1589 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.i32 %1589, 1
  %1591 = sub nsw i32 %1590, %1588
  %1592 = sitofp i32 %1591 to float
  %1593 = fsub fast float %1583, %1592
  %1594 = call float @dx.op.binary.f32(i32 35, float %1593, float 0.000000e+00)  ; FMax(a,b)
  %1595 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1585, %dx.types.Handle %23, float %1556, float %1558, float %1546, float undef, i32 0, i32 0, i32 undef, float %1594)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1596 = extractvalue %dx.types.ResRet.f32 %1595, 0
  %1597 = fcmp ule float %1596, 0x3FE0101020000000
  %1598 = extractvalue %dx.types.CBufRet.i32 %1589, 0
  %1599 = and i32 %1598, 128
  %1600 = icmp ne i32 %1599, 0
  %1601 = and i1 %1597, %1600
  br i1 %1601, label %1752, label %1602

; <label>:1602                                    ; preds = %1536
  %1603 = add i32 %1537, 20
  %1604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.f32 %1604, 0
  %1606 = add i32 %1537, 24
  %1607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1606, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.f32 %1607, 0
  %1609 = add i32 %1537, 40
  %1610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1609, i32 undef)  ; BufferLoad(srv,index,wot)
  %1611 = extractvalue %dx.types.ResRet.f32 %1610, 0
  %1612 = add i32 %1537, 96
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1616 = extractvalue %dx.types.CBufRet.f32 %1615, 2
  %1617 = fmul fast float %1616, %1556
  %1618 = fmul fast float %1616, %1558
  %1619 = extractvalue %dx.types.CBufRet.f32 %1615, 3
  %1620 = fadd fast float %1617, %1619
  %1621 = fadd fast float %1618, %1619
  %1622 = add i32 %1614, 0
  %1623 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1622, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1624 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1623, i32 0)  ; GetDimensions(handle,mipLevel)
  %1625 = extractvalue %dx.types.Dimensions %1624, 0
  %1626 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1625)  ; FirstbitLo(value)
  %1627 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1628 = extractvalue %dx.types.CBufRet.i32 %1627, 1
  %1629 = sub nsw i32 %1628, %1626
  %1630 = sitofp i32 %1629 to float
  %1631 = fsub fast float %1580, %1630
  %1632 = call float @dx.op.binary.f32(i32 35, float %1631, float 0.000000e+00)  ; FMax(a,b)
  %1633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1623, %dx.types.Handle %23, float %1620, float %1621, float %1611, float undef, i32 0, i32 0, i32 undef, float %1632)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1634 = extractvalue %dx.types.ResRet.f32 %1633, 0
  %1635 = fmul fast float %1634, %1605
  %1636 = fadd fast float %1635, %1608
  %1637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1638 = extractvalue %dx.types.CBufRet.f32 %1637, 0
  %1639 = extractvalue %dx.types.CBufRet.f32 %1637, 1
  %1640 = extractvalue %dx.types.CBufRet.f32 %1637, 2
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 3
  %1643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1644 = extractvalue %dx.types.CBufRet.f32 %1643, 3
  %1645 = extractvalue %dx.types.CBufRet.f32 %1637, 3
  %1646 = fadd fast float %1642, %1503
  %1647 = fadd fast float %1644, %1504
  %1648 = fadd fast float %1636, %1645
  %1649 = fmul fast float %1646, %1638
  %1650 = call float @dx.op.tertiary.f32(i32 46, float %1647, float %1639, float %1649)  ; FMad(a,b,c)
  %1651 = call float @dx.op.tertiary.f32(i32 46, float %1648, float %1640, float %1650)  ; FMad(a,b,c)
  %1652 = fsub fast float %1651, %1645
  %1653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1654 = extractvalue %dx.types.CBufRet.f32 %1653, 2
  %1655 = fsub fast float %1652, %1654
  %1656 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1657 = extractvalue %dx.types.CBufRet.i32 %1656, 0
  %1658 = call i32 @dx.op.binary.i32(i32 40, i32 %1534, i32 %1657)  ; UMin(a,b)
  %1659 = mul i32 %1658, 36
  %1660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.i32 %1660, 0
  %1662 = add i32 %1659, 4
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1665 = fmul fast float %1664, %1556
  %1666 = fmul fast float %1664, %1558
  %1667 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1668 = fadd fast float %1665, %1667
  %1669 = fadd fast float %1666, %1667
  %1670 = icmp eq i32 %1661, 0
  br i1 %1670, label %1739, label %1671

; <label>:1671                                    ; preds = %1602
  br label %1672

; <label>:1672                                    ; preds = %1729, %1671
  %1673 = phi float [ %1730, %1729 ], [ 0.000000e+00, %1671 ]
  %1674 = phi float [ %1731, %1729 ], [ 0.000000e+00, %1671 ]
  %1675 = phi float [ %1732, %1729 ], [ 0.000000e+00, %1671 ]
  %1676 = phi float [ %1733, %1729 ], [ 0.000000e+00, %1671 ]
  %1677 = phi float [ %1734, %1729 ], [ 0.000000e+00, %1671 ]
  %1678 = phi float [ %1735, %1729 ], [ 0.000000e+00, %1671 ]
  %1679 = phi i32 [ %1736, %1729 ], [ 0, %1671 ]
  %1680 = shl i32 %1679, 2
  %1681 = add i32 %1547, %1680
  %1682 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1681, i32 undef)  ; BufferLoad(srv,index,wot)
  %1683 = extractvalue %dx.types.ResRet.f32 %1682, 0
  %1684 = add i32 %1551, %1680
  %1685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1684, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.i32 %1685, 0
  %1687 = add i32 %1686, 0
  %1688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1689 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1688, i32 0)  ; GetDimensions(handle,mipLevel)
  %1690 = extractvalue %dx.types.Dimensions %1689, 0
  %1691 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1690)  ; FirstbitLo(value)
  %1692 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1693 = extractvalue %dx.types.CBufRet.i32 %1692, 1
  %1694 = sub nsw i32 %1693, %1691
  %1695 = sitofp i32 %1694 to float
  %1696 = fsub fast float %1580, %1695
  %1697 = call float @dx.op.binary.f32(i32 35, float %1696, float 0.000000e+00)  ; FMax(a,b)
  %1698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1688, %dx.types.Handle %23, float %1668, float %1669, float %1683, float undef, i32 0, i32 0, i32 undef, float %1697)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1699 = extractvalue %dx.types.ResRet.f32 %1698, 0
  %1700 = fcmp fast ogt float %1699, 0.000000e+00
  br i1 %1700, label %1701, label %1729

; <label>:1701                                    ; preds = %1672
  %1702 = add i32 %1662, %1680
  %1703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1702, i32 undef)  ; BufferLoad(srv,index,wot)
  %1704 = extractvalue %dx.types.ResRet.i32 %1703, 0
  %1705 = and i32 %1704, 32767
  %1706 = mul nuw nsw i32 %1705, 928
  %1707 = add nuw nsw i32 %1706, 48
  %1708 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1707, i32 undef)  ; BufferLoad(srv,index,wot)
  %1709 = extractvalue %dx.types.ResRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.ResRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.ResRet.f32 %1708, 2
  %1712 = add nuw nsw i32 %1706, 60
  %1713 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1712, i32 undef)  ; BufferLoad(srv,index,wot)
  %1714 = extractvalue %dx.types.ResRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.ResRet.f32 %1713, 1
  %1716 = extractvalue %dx.types.ResRet.f32 %1713, 2
  %1717 = fmul fast float %1709, %1699
  %1718 = fmul fast float %1710, %1699
  %1719 = fmul fast float %1711, %1699
  %1720 = fadd fast float %1717, %1673
  %1721 = fadd fast float %1718, %1674
  %1722 = fadd fast float %1719, %1675
  %1723 = fmul fast float %1714, %1699
  %1724 = fmul fast float %1715, %1699
  %1725 = fmul fast float %1716, %1699
  %1726 = fadd fast float %1723, %1676
  %1727 = fadd fast float %1724, %1677
  %1728 = fadd fast float %1725, %1678
  br label %1729

; <label>:1729                                    ; preds = %1701, %1672
  %1730 = phi float [ %1720, %1701 ], [ %1673, %1672 ]
  %1731 = phi float [ %1721, %1701 ], [ %1674, %1672 ]
  %1732 = phi float [ %1722, %1701 ], [ %1675, %1672 ]
  %1733 = phi float [ %1726, %1701 ], [ %1676, %1672 ]
  %1734 = phi float [ %1727, %1701 ], [ %1677, %1672 ]
  %1735 = phi float [ %1728, %1701 ], [ %1678, %1672 ]
  %1736 = add nuw i32 %1679, 1
  %1737 = icmp eq i32 %1736, %1661
  br i1 %1737, label %1738, label %1672

; <label>:1738                                    ; preds = %1729
  br label %1739

; <label>:1739                                    ; preds = %1738, %1602
  %1740 = phi float [ 0.000000e+00, %1602 ], [ %1730, %1738 ]
  %1741 = phi float [ 0.000000e+00, %1602 ], [ %1731, %1738 ]
  %1742 = phi float [ 0.000000e+00, %1602 ], [ %1732, %1738 ]
  %1743 = phi float [ 0.000000e+00, %1602 ], [ %1733, %1738 ]
  %1744 = phi float [ 0.000000e+00, %1602 ], [ %1734, %1738 ]
  %1745 = phi float [ 0.000000e+00, %1602 ], [ %1735, %1738 ]
  %1746 = fadd fast float %1743, %1740
  %1747 = fmul fast float %1746, 0x3F847AE140000000
  %1748 = fadd fast float %1744, %1741
  %1749 = fmul fast float %1748, 0x3F847AE140000000
  %1750 = fadd fast float %1745, %1742
  %1751 = fmul fast float %1750, 0x3F847AE140000000
  br label %1752

; <label>:1752                                    ; preds = %1739, %1536, %1481, %1478, %1449, %1411
  %1753 = phi float [ %1463, %1449 ], [ -1.310720e+05, %1411 ], [ %1655, %1739 ], [ -1.310720e+05, %1481 ], [ -1.310720e+05, %1536 ], [ -1.310720e+05, %1478 ]
  %1754 = phi float [ %1473, %1449 ], [ 0.000000e+00, %1411 ], [ %1747, %1739 ], [ 0.000000e+00, %1481 ], [ 0.000000e+00, %1536 ], [ 0.000000e+00, %1478 ]
  %1755 = phi float [ %1475, %1449 ], [ 0.000000e+00, %1411 ], [ %1749, %1739 ], [ 0.000000e+00, %1481 ], [ 0.000000e+00, %1536 ], [ 0.000000e+00, %1478 ]
  %1756 = phi float [ %1477, %1449 ], [ 0.000000e+00, %1411 ], [ %1751, %1739 ], [ 0.000000e+00, %1481 ], [ 0.000000e+00, %1536 ], [ 0.000000e+00, %1478 ]
  %1757 = phi i1 [ true, %1449 ], [ false, %1411 ], [ true, %1739 ], [ false, %1481 ], [ false, %1536 ], [ false, %1478 ]
  %1758 = and i32 %124, 3
  %1759 = icmp eq i32 %1758, 1
  %1760 = select i1 %1759, float 1.000000e+00, float 0.000000e+00
  %1761 = fsub fast float %1753, %108
  %1762 = call float @dx.op.unary.f32(i32 7, float %1761)  ; Saturate(value)
  %1763 = select i1 %1757, float %1762, float 1.000000e+00
  %1764 = fmul fast float %1763, %1760
  %1765 = icmp eq i32 %1758, 3
  %1766 = select i1 %1765, float 1.000000e+00, float %1764
  %1767 = call float @dx.op.binary.f32(i32 35, float %1258, float %1766)  ; FMax(a,b)
  %1768 = call float @dx.op.unary.f32(i32 7, float %1767)  ; Saturate(value)
  %1769 = fcmp fast une float %1768, 0.000000e+00
  %1770 = call float @dx.op.dot3.f32(i32 55, float %106, float %107, float %108, float %106, float %107, float %108)  ; Dot3(ax,ay,az,bx,by,bz)
  %1771 = call float @dx.op.unary.f32(i32 25, float %1770)  ; Rsqrt(value)
  br i1 %1769, label %1779, label %1772

; <label>:1772                                    ; preds = %1752
  %1773 = fmul fast float %1771, %106
  %1774 = fmul fast float %1771, %107
  %1775 = fmul fast float %1771, %108
  %1776 = fsub fast float -0.000000e+00, %1773
  %1777 = fsub fast float -0.000000e+00, %1774
  %1778 = fsub fast float -0.000000e+00, %1775
  br label %1947

; <label>:1779                                    ; preds = %1752
  %1780 = fmul fast float %106, %1771
  %1781 = fsub fast float -0.000000e+00, %1780
  %1782 = fmul fast float %107, %1771
  %1783 = fsub fast float -0.000000e+00, %1782
  %1784 = fmul fast float %108, %1771
  %1785 = fsub fast float -0.000000e+00, %1784
  %1786 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1783, float %1785, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %1787 = fmul fast float %1768, 2.500000e+00
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1789 = fmul fast float %1768, 0x4013FFFFE0000000
  %1790 = fadd fast float %1789, 0xBFFFFFFFE0000000
  %1791 = call float @dx.op.unary.f32(i32 7, float %1790)  ; Saturate(value)
  %1792 = fmul fast float %1768, 0x4004000020000000
  %1793 = fadd fast float %1792, 0xBFF8000040000000
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  %1795 = call float @dx.op.unary.f32(i32 7, float %1788)  ; Saturate(value)
  %1796 = fmul fast float %1291, 1.000000e+01
  %1797 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  %1798 = fmul fast float %1797, 2.000000e+00
  %1799 = fsub fast float 3.000000e+00, %1798
  %1800 = fmul fast float %1797, %1797
  %1801 = fmul fast float %1800, %1799
  %1802 = fsub fast float 1.000000e+00, %1801
  %1803 = fsub fast float 0x3FE3333340000000, %1312
  %1804 = fmul fast float %1803, 0x400AAAAAA0000000
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1806 = fmul fast float %1802, %1805
  %1807 = fmul fast float %1390, 0x3FEA2B8620000000
  %1808 = fmul fast float %1391, 0x3FEA2B8620000000
  %1809 = fmul fast float %1392, 0x3FEA2B8620000000
  %1810 = fadd fast float %1807, 0x3FC81DFBA0000000
  %1811 = fmul fast float %1810, %1390
  %1812 = fadd fast float %1811, 0x3F910E6020000000
  %1813 = fadd fast float %1808, 0x3FC81DFBA0000000
  %1814 = fmul fast float %1813, %1391
  %1815 = fadd fast float %1814, 0x3F910E6020000000
  %1816 = fadd fast float %1809, 0x3FC81DFBA0000000
  %1817 = fmul fast float %1816, %1392
  %1818 = fadd fast float %1817, 0x3F910E6020000000
  %1819 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  %1820 = call float @dx.op.unary.f32(i32 7, float %1815)  ; Saturate(value)
  %1821 = call float @dx.op.unary.f32(i32 7, float %1818)  ; Saturate(value)
  %1822 = fsub fast float %1819, %1390
  %1823 = fsub fast float %1820, %1391
  %1824 = fsub fast float %1821, %1392
  %1825 = fmul fast float %1822, %1795
  %1826 = fmul fast float %1825, %1806
  %1827 = fmul fast float %1823, %1795
  %1828 = fmul fast float %1827, %1806
  %1829 = fmul fast float %1824, %1795
  %1830 = fmul fast float %1829, %1806
  %1831 = fadd fast float %1826, %1390
  %1832 = fadd fast float %1828, %1391
  %1833 = fadd fast float %1830, %1392
  %1834 = fmul fast float %1272, %1272
  %1835 = fmul fast float %1834, %1834
  %1836 = fadd fast float %1791, 1.000000e+00
  %1837 = fsub fast float %1836, %1806
  %1838 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1839 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  %1841 = fsub fast float 1.000000e+00, %1835
  %1842 = call float @dx.op.binary.f32(i32 36, float %1838, float %1841)  ; FMin(a,b)
  %1843 = call float @dx.op.unary.f32(i32 7, float %1794)  ; Saturate(value)
  %1844 = call float @dx.op.binary.f32(i32 35, float %1842, float %1843)  ; FMax(a,b)
  %1845 = fadd fast float %1840, 0xBFE4CCCCC0000000
  %1846 = fmul fast float %1845, 0x4006DB6DA0000000
  %1847 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  %1848 = fmul fast float %1847, 2.000000e+00
  %1849 = fsub fast float 3.000000e+00, %1848
  %1850 = bitcast float %1309 to i32
  %1851 = ashr i32 %1850, 1
  %1852 = add nsw i32 %1851, 532487669
  %1853 = bitcast i32 %1852 to float
  %1854 = fsub fast float 1.000000e+00, %1853
  %1855 = bitcast float %1854 to i32
  %1856 = sub nsw i32 2129859010, %1855
  %1857 = bitcast i32 %1856 to float
  %1858 = fmul fast float %1857, 2.000000e+00
  %1859 = bitcast float %1310 to i32
  %1860 = ashr i32 %1859, 1
  %1861 = add nsw i32 %1860, 532487669
  %1862 = bitcast i32 %1861 to float
  %1863 = fsub fast float 1.000000e+00, %1862
  %1864 = bitcast float %1863 to i32
  %1865 = sub nsw i32 2129859010, %1864
  %1866 = bitcast i32 %1865 to float
  %1867 = fmul fast float %1866, 2.000000e+00
  %1868 = bitcast float %1311 to i32
  %1869 = ashr i32 %1868, 1
  %1870 = add nsw i32 %1869, 532487669
  %1871 = bitcast i32 %1870 to float
  %1872 = fsub fast float 1.000000e+00, %1871
  %1873 = bitcast float %1872 to i32
  %1874 = sub nsw i32 2129859010, %1873
  %1875 = bitcast i32 %1874 to float
  %1876 = fmul fast float %1875, 2.000000e+00
  %1877 = fsub fast float 0x4002A9FBE0000000, %1858
  %1878 = fadd fast float %1858, 0x3FD54FDF00000000
  %1879 = bitcast float %1878 to i32
  %1880 = sub nsw i32 2129859010, %1879
  %1881 = bitcast i32 %1880 to float
  %1882 = fmul fast float %1881, %1877
  %1883 = fmul fast float %1882, %1882
  %1884 = fsub fast float 0x4002A9FBE0000000, %1867
  %1885 = fadd fast float %1867, 0x3FD54FDF00000000
  %1886 = bitcast float %1885 to i32
  %1887 = sub nsw i32 2129859010, %1886
  %1888 = bitcast i32 %1887 to float
  %1889 = fmul fast float %1888, %1884
  %1890 = fmul fast float %1889, %1889
  %1891 = fsub fast float 0x4002A9FBE0000000, %1876
  %1892 = fadd fast float %1876, 0x3FD54FDF00000000
  %1893 = bitcast float %1892 to i32
  %1894 = sub nsw i32 2129859010, %1893
  %1895 = bitcast i32 %1894 to float
  %1896 = fmul fast float %1895, %1891
  %1897 = fmul fast float %1896, %1896
  %1898 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1883)  ; FMax(a,b)
  %1899 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1890)  ; FMax(a,b)
  %1900 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1897)  ; FMax(a,b)
  %1901 = fsub fast float 1.000000e+00, %1786
  %1902 = fadd fast float %1901, %1802
  %1903 = call float @dx.op.unary.f32(i32 7, float %1902)  ; Saturate(value)
  %1904 = fsub fast float 1.000000e+00, %1766
  %1905 = fmul fast float %1844, %1904
  %1906 = fmul fast float %1847, %1847
  %1907 = fmul fast float %1906, %1905
  %1908 = fmul fast float %1907, %1849
  %1909 = fmul fast float %1904, 0xBFE99999A0000000
  %1910 = fmul fast float %1909, %1795
  %1911 = fmul fast float %1910, %1806
  %1912 = fadd fast float %1911, 1.000000e+00
  %1913 = fadd fast float %1312, -1.000000e+00
  %1914 = fmul fast float %1912, %1913
  %1915 = fadd fast float %1914, 1.000000e+00
  %1916 = fsub fast float %1898, %1309
  %1917 = fsub fast float %1899, %1310
  %1918 = fsub fast float %1900, %1311
  %1919 = fmul fast float %1908, %1916
  %1920 = fmul fast float %1908, %1917
  %1921 = fmul fast float %1908, %1918
  %1922 = fadd fast float %1919, %1309
  %1923 = fadd fast float %1920, %1310
  %1924 = fadd fast float %1921, %1311
  %1925 = fsub fast float %61, %1288
  %1926 = fsub fast float %62, %1289
  %1927 = fsub fast float %63, %1290
  %1928 = fmul fast float %1908, %1925
  %1929 = fmul fast float %1908, %1926
  %1930 = fmul fast float %1908, %1927
  %1931 = fadd fast float %1928, %1288
  %1932 = fadd fast float %1929, %1289
  %1933 = fadd fast float %1930, %1290
  %1934 = fmul fast float %1908, %1903
  %1935 = call float @dx.op.unary.f32(i32 7, float %1915)  ; Saturate(value)
  %1936 = fsub fast float 1.000000e+00, %1935
  %1937 = fmul fast float %1934, %1936
  %1938 = fadd fast float %1937, %1935
  %1939 = fsub fast float 1.000000e+00, %1272
  %1940 = fmul fast float %1908, %1939
  %1941 = fadd fast float %1940, %1272
  %1942 = call float @dx.op.dot3.f32(i32 55, float %1931, float %1932, float %1933, float %1931, float %1932, float %1933)  ; Dot3(ax,ay,az,bx,by,bz)
  %1943 = call float @dx.op.unary.f32(i32 25, float %1942)  ; Rsqrt(value)
  %1944 = fmul fast float %1931, %1943
  %1945 = fmul fast float %1932, %1943
  %1946 = fmul fast float %1933, %1943
  br label %1947

; <label>:1947                                    ; preds = %1779, %1772
  %1948 = phi float [ %1778, %1772 ], [ %1785, %1779 ]
  %1949 = phi float [ %1777, %1772 ], [ %1783, %1779 ]
  %1950 = phi float [ %1776, %1772 ], [ %1781, %1779 ]
  %1951 = phi float [ %1775, %1772 ], [ %1784, %1779 ]
  %1952 = phi float [ %1774, %1772 ], [ %1782, %1779 ]
  %1953 = phi float [ %1773, %1772 ], [ %1780, %1779 ]
  %1954 = phi float [ %1390, %1772 ], [ %1831, %1779 ]
  %1955 = phi float [ %1391, %1772 ], [ %1832, %1779 ]
  %1956 = phi float [ %1392, %1772 ], [ %1833, %1779 ]
  %1957 = phi float [ %1309, %1772 ], [ %1922, %1779 ]
  %1958 = phi float [ %1310, %1772 ], [ %1923, %1779 ]
  %1959 = phi float [ %1311, %1772 ], [ %1924, %1779 ]
  %1960 = phi float [ %1288, %1772 ], [ %1944, %1779 ]
  %1961 = phi float [ %1289, %1772 ], [ %1945, %1779 ]
  %1962 = phi float [ %1290, %1772 ], [ %1946, %1779 ]
  %1963 = phi float [ %1312, %1772 ], [ %1938, %1779 ]
  %1964 = phi float [ %1272, %1772 ], [ %1941, %1779 ]
  %1965 = select i1 %148, float 0.000000e+00, float %1959
  %1966 = call float @dx.op.dot3.f32(i32 55, float %1960, float %1961, float %1962, float %1950, float %1949, float %1948)  ; Dot3(ax,ay,az,bx,by,bz)
  %1967 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1968 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1952, float %1951, float %1960, float %1961, float %1962)  ; Dot3(ax,ay,az,bx,by,bz)
  %1969 = fmul fast float %1968, 2.000000e+00
  %1970 = fmul fast float %1969, %1960
  %1971 = fmul fast float %1969, %1961
  %1972 = fmul fast float %1969, %1962
  %1973 = fsub fast float %1953, %1970
  %1974 = fsub fast float %1952, %1971
  %1975 = fsub fast float %1951, %1972
  %1976 = call float @dx.op.binary.f32(i32 36, float %1964, float 1.000000e+00)  ; FMin(a,b)
  %1977 = fsub fast float 1.000000e+00, %1964
  %1978 = bitcast float %1977 to i32
  %1979 = sub nsw i32 2129859010, %1978
  %1980 = bitcast i32 %1979 to float
  %1981 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %38)  ; FMax(a,b)
  %1982 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %1983 = fcmp fast oeq float %1982, 0.000000e+00
  %1984 = fcmp fast oeq float %1981, 0.000000e+00
  %1985 = or i1 %1984, %1983
  br i1 %1985, label %2015, label %1986

; <label>:1986                                    ; preds = %1947
  %1987 = fsub fast float -0.000000e+00, %41
  %1988 = fsub fast float -0.000000e+00, %39
  %1989 = call float @dx.op.unary.f32(i32 24, float %1982)  ; Sqrt(value)
  %1990 = fdiv fast float %1989, %1981
  %1991 = fcmp fast ogt float %1990, 0x3FFB6F8900000000
  %1992 = select i1 %1991, float 0x3FFB6F8900000000, float %1990
  %1993 = fmul fast float %1992, 0x3FE8A23460000000
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = call float @dx.op.binary.f32(i32 35, float %1992, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %1996 = fmul fast float %1994, %1981
  %1997 = fmul fast float %1995, 0x3FF279A740000000
  %1998 = fadd fast float %1997, -1.000000e+00
  %1999 = call float @dx.op.dot3.f32(i32 55, float %1987, float %1988, float %40, float %1987, float %1988, float %40)  ; Dot3(ax,ay,az,bx,by,bz)
  %2000 = call float @dx.op.unary.f32(i32 25, float %1999)  ; Rsqrt(value)
  %2001 = fmul fast float %2000, %1987
  %2002 = fmul fast float %2000, %1988
  %2003 = fmul fast float %2000, %40
  %2004 = fmul fast float %1998, %1998
  %2005 = fsub fast float 1.000000e+00, %2004
  %2006 = fmul fast float %1995, 0x40005F8BE0000000
  %2007 = fsub fast float 0x400C5BF8A0000000, %2006
  %2008 = fdiv fast float %1996, %2007
  %2009 = fmul fast float %2008, 0x3FEE31C3C0000000
  %2010 = fmul fast float %2009, %2005
  %2011 = fmul fast float %1995, 0x3FDACB7480000000
  %2012 = fadd fast float %2011, 0xBFD7347680000000
  %2013 = fmul fast float %2012, %2008
  %2014 = fmul fast float %2013, %2005
  br label %2015

; <label>:2015                                    ; preds = %1986, %1947
  %2016 = phi float [ %2001, %1986 ], [ 0.000000e+00, %1947 ]
  %2017 = phi float [ %2002, %1986 ], [ 0.000000e+00, %1947 ]
  %2018 = phi float [ %2003, %1986 ], [ 0.000000e+00, %1947 ]
  %2019 = phi float [ %2010, %1986 ], [ 0.000000e+00, %1947 ]
  %2020 = phi float [ %2014, %1986 ], [ 0.000000e+00, %1947 ]
  %2021 = call float @dx.op.dot3.f32(i32 55, float %2016, float %2017, float %2018, float %1960, float %1961, float %1962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2022 = fmul fast float %2021, 0x3FDF454380000000
  %2023 = fmul fast float %2021, %2021
  %2024 = fmul fast float %2023, 0x3FEE471020000000
  %2025 = fadd fast float %2024, 0xBFD42F6020000000
  %2026 = fmul fast float %1981, 0x3FD20DD760000000
  %2027 = fmul fast float %2025, %2020
  %2028 = fadd fast float %2027, %2026
  %2029 = fmul fast float %2022, %2019
  %2030 = fadd fast float %2028, %2029
  %2031 = fsub fast float %2028, %2029
  %2032 = call float @dx.op.dot3.f32(i32 55, float %2016, float %2017, float %2018, float %1973, float %1974, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %2033 = fmul fast float %2032, 0x3FDF454380000000
  %2034 = fmul fast float %2032, %2032
  %2035 = fmul fast float %2034, 0x3FEE471020000000
  %2036 = fadd fast float %2035, 0xBFD42F6020000000
  %2037 = call float @dx.op.dot3.f32(i32 55, float %1981, float %2019, float %2020, float 0x3FD20DD760000000, float %2033, float %2036)  ; Dot3(ax,ay,az,bx,by,bz)
  %2038 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %34)  ; FMax(a,b)
  %2039 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %2040 = fcmp fast oeq float %2039, 0.000000e+00
  %2041 = fcmp fast oeq float %2038, 0.000000e+00
  %2042 = or i1 %2041, %2040
  br i1 %2042, label %2072, label %2043

; <label>:2043                                    ; preds = %2015
  %2044 = fsub fast float -0.000000e+00, %37
  %2045 = fsub fast float -0.000000e+00, %35
  %2046 = call float @dx.op.unary.f32(i32 24, float %2039)  ; Sqrt(value)
  %2047 = fdiv fast float %2046, %2038
  %2048 = fcmp fast ogt float %2047, 0x3FFB6F8900000000
  %2049 = select i1 %2048, float 0x3FFB6F8900000000, float %2047
  %2050 = fmul fast float %2049, 0x3FE8A23460000000
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = call float @dx.op.binary.f32(i32 35, float %2049, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2053 = fmul fast float %2051, %2038
  %2054 = fmul fast float %2052, 0x3FF279A740000000
  %2055 = fadd fast float %2054, -1.000000e+00
  %2056 = call float @dx.op.dot3.f32(i32 55, float %2044, float %2045, float %36, float %2044, float %2045, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %2057 = call float @dx.op.unary.f32(i32 25, float %2056)  ; Rsqrt(value)
  %2058 = fmul fast float %2057, %2044
  %2059 = fmul fast float %2057, %2045
  %2060 = fmul fast float %2057, %36
  %2061 = fmul fast float %2055, %2055
  %2062 = fsub fast float 1.000000e+00, %2061
  %2063 = fmul fast float %2052, 0x40005F8BE0000000
  %2064 = fsub fast float 0x400C5BF8A0000000, %2063
  %2065 = fdiv fast float %2053, %2064
  %2066 = fmul fast float %2065, 0x3FEE31C3C0000000
  %2067 = fmul fast float %2066, %2062
  %2068 = fmul fast float %2052, 0x3FDACB7480000000
  %2069 = fadd fast float %2068, 0xBFD7347680000000
  %2070 = fmul fast float %2069, %2065
  %2071 = fmul fast float %2070, %2062
  br label %2072

; <label>:2072                                    ; preds = %2043, %2015
  %2073 = phi float [ %2058, %2043 ], [ 0.000000e+00, %2015 ]
  %2074 = phi float [ %2059, %2043 ], [ 0.000000e+00, %2015 ]
  %2075 = phi float [ %2060, %2043 ], [ 0.000000e+00, %2015 ]
  %2076 = phi float [ %2067, %2043 ], [ 0.000000e+00, %2015 ]
  %2077 = phi float [ %2071, %2043 ], [ 0.000000e+00, %2015 ]
  %2078 = call float @dx.op.dot3.f32(i32 55, float %2073, float %2074, float %2075, float %1960, float %1961, float %1962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2079 = fmul fast float %2078, 0x3FDF454380000000
  %2080 = fmul fast float %2078, %2078
  %2081 = fmul fast float %2080, 0x3FEE471020000000
  %2082 = fadd fast float %2081, 0xBFD42F6020000000
  %2083 = fmul fast float %2038, 0x3FD20DD760000000
  %2084 = fmul fast float %2082, %2077
  %2085 = fadd fast float %2084, %2083
  %2086 = fmul fast float %2079, %2076
  %2087 = fadd fast float %2085, %2086
  %2088 = fsub fast float %2085, %2086
  %2089 = call float @dx.op.dot3.f32(i32 55, float %2073, float %2074, float %2075, float %1973, float %1974, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %2090 = fmul fast float %2089, 0x3FDF454380000000
  %2091 = fmul fast float %2089, %2089
  %2092 = fmul fast float %2091, 0x3FEE471020000000
  %2093 = fadd fast float %2092, 0xBFD42F6020000000
  %2094 = call float @dx.op.dot3.f32(i32 55, float %2038, float %2076, float %2077, float 0x3FD20DD760000000, float %2090, float %2093)  ; Dot3(ax,ay,az,bx,by,bz)
  %2095 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %30)  ; FMax(a,b)
  %2096 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %2097 = fcmp fast oeq float %2096, 0.000000e+00
  %2098 = fcmp fast oeq float %2095, 0.000000e+00
  %2099 = or i1 %2098, %2097
  br i1 %2099, label %2129, label %2100

; <label>:2100                                    ; preds = %2072
  %2101 = fsub fast float -0.000000e+00, %33
  %2102 = fsub fast float -0.000000e+00, %31
  %2103 = call float @dx.op.unary.f32(i32 24, float %2096)  ; Sqrt(value)
  %2104 = fdiv fast float %2103, %2095
  %2105 = fcmp fast ogt float %2104, 0x3FFB6F8900000000
  %2106 = select i1 %2105, float 0x3FFB6F8900000000, float %2104
  %2107 = fmul fast float %2106, 0x3FE8A23460000000
  %2108 = call float @dx.op.unary.f32(i32 7, float %2107)  ; Saturate(value)
  %2109 = call float @dx.op.binary.f32(i32 35, float %2106, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2110 = fmul fast float %2108, %2095
  %2111 = fmul fast float %2109, 0x3FF279A740000000
  %2112 = fadd fast float %2111, -1.000000e+00
  %2113 = call float @dx.op.dot3.f32(i32 55, float %2101, float %2102, float %32, float %2101, float %2102, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %2114 = call float @dx.op.unary.f32(i32 25, float %2113)  ; Rsqrt(value)
  %2115 = fmul fast float %2114, %2101
  %2116 = fmul fast float %2114, %2102
  %2117 = fmul fast float %2114, %32
  %2118 = fmul fast float %2112, %2112
  %2119 = fsub fast float 1.000000e+00, %2118
  %2120 = fmul fast float %2109, 0x40005F8BE0000000
  %2121 = fsub fast float 0x400C5BF8A0000000, %2120
  %2122 = fdiv fast float %2110, %2121
  %2123 = fmul fast float %2122, 0x3FEE31C3C0000000
  %2124 = fmul fast float %2123, %2119
  %2125 = fmul fast float %2109, 0x3FDACB7480000000
  %2126 = fadd fast float %2125, 0xBFD7347680000000
  %2127 = fmul fast float %2126, %2122
  %2128 = fmul fast float %2127, %2119
  br label %2129

; <label>:2129                                    ; preds = %2100, %2072
  %2130 = phi float [ %2115, %2100 ], [ 0.000000e+00, %2072 ]
  %2131 = phi float [ %2116, %2100 ], [ 0.000000e+00, %2072 ]
  %2132 = phi float [ %2117, %2100 ], [ 0.000000e+00, %2072 ]
  %2133 = phi float [ %2124, %2100 ], [ 0.000000e+00, %2072 ]
  %2134 = phi float [ %2128, %2100 ], [ 0.000000e+00, %2072 ]
  %2135 = call float @dx.op.dot3.f32(i32 55, float %2130, float %2131, float %2132, float %1960, float %1961, float %1962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2136 = fmul fast float %2135, 0x3FDF454380000000
  %2137 = fmul fast float %2135, %2135
  %2138 = fmul fast float %2137, 0x3FEE471020000000
  %2139 = fadd fast float %2138, 0xBFD42F6020000000
  %2140 = fmul fast float %2095, 0x3FD20DD760000000
  %2141 = fmul fast float %2139, %2134
  %2142 = fadd fast float %2141, %2140
  %2143 = fmul fast float %2136, %2133
  %2144 = fadd fast float %2142, %2143
  %2145 = fsub fast float %2142, %2143
  %2146 = call float @dx.op.dot3.f32(i32 55, float %2130, float %2131, float %2132, float %1973, float %1974, float %1975)  ; Dot3(ax,ay,az,bx,by,bz)
  %2147 = fmul fast float %2146, 0x3FDF454380000000
  %2148 = fmul fast float %2146, %2146
  %2149 = fmul fast float %2148, 0x3FEE471020000000
  %2150 = fadd fast float %2149, 0xBFD42F6020000000
  %2151 = call float @dx.op.dot3.f32(i32 55, float %2095, float %2133, float %2134, float 0x3FD20DD760000000, float %2147, float %2150)  ; Dot3(ax,ay,az,bx,by,bz)
  %2152 = call float @dx.op.binary.f32(i32 35, float %2030, float 0.000000e+00)  ; FMax(a,b)
  %2153 = call float @dx.op.binary.f32(i32 35, float %2087, float 0.000000e+00)  ; FMax(a,b)
  %2154 = call float @dx.op.binary.f32(i32 35, float %2144, float 0.000000e+00)  ; FMax(a,b)
  %2155 = call float @dx.op.binary.f32(i32 35, float %2031, float 0.000000e+00)  ; FMax(a,b)
  %2156 = call float @dx.op.binary.f32(i32 35, float %2088, float 0.000000e+00)  ; FMax(a,b)
  %2157 = call float @dx.op.binary.f32(i32 35, float %2145, float 0.000000e+00)  ; FMax(a,b)
  %2158 = call float @dx.op.binary.f32(i32 35, float %2037, float 0.000000e+00)  ; FMax(a,b)
  %2159 = call float @dx.op.binary.f32(i32 35, float %2094, float 0.000000e+00)  ; FMax(a,b)
  %2160 = call float @dx.op.binary.f32(i32 35, float %2151, float 0.000000e+00)  ; FMax(a,b)
  %2161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2162 = extractvalue %dx.types.CBufRet.f32 %2161, 0
  %2163 = call float @dx.op.binary.f32(i32 36, float %1954, float %2162)  ; FMin(a,b)
  %2164 = fsub fast float 1.000000e+00, %1976
  %2165 = fmul fast float %2163, %2164
  %2166 = fsub fast float 1.000000e+00, %2165
  %2167 = bitcast float %2166 to i32
  %2168 = sub nsw i32 2129859010, %2167
  %2169 = bitcast i32 %2168 to float
  %2170 = call float @dx.op.binary.f32(i32 36, float %1955, float %2162)  ; FMin(a,b)
  %2171 = fmul fast float %2170, %2164
  %2172 = fsub fast float 1.000000e+00, %2171
  %2173 = bitcast float %2172 to i32
  %2174 = sub nsw i32 2129859010, %2173
  %2175 = bitcast i32 %2174 to float
  %2176 = call float @dx.op.binary.f32(i32 36, float %1956, float %2162)  ; FMin(a,b)
  %2177 = fmul fast float %2176, %2164
  %2178 = fsub fast float 1.000000e+00, %2177
  %2179 = bitcast float %2178 to i32
  %2180 = sub nsw i32 2129859010, %2179
  %2181 = bitcast i32 %2180 to float
  %2182 = fmul fast float %2152, %1976
  %2183 = fmul fast float %2182, %2169
  %2184 = fmul fast float %2153, %1976
  %2185 = fmul fast float %2184, %2175
  %2186 = fmul fast float %2154, %1976
  %2187 = fmul fast float %2186, %2181
  %2188 = call float @dx.op.binary.f32(i32 36, float %1957, float %2162)  ; FMin(a,b)
  %2189 = fmul fast float %2188, %2164
  %2190 = fsub fast float 1.000000e+00, %2189
  %2191 = bitcast float %2190 to i32
  %2192 = sub nsw i32 2129859010, %2191
  %2193 = bitcast i32 %2192 to float
  %2194 = call float @dx.op.binary.f32(i32 36, float %1958, float %2162)  ; FMin(a,b)
  %2195 = fmul fast float %2194, %2164
  %2196 = fsub fast float 1.000000e+00, %2195
  %2197 = bitcast float %2196 to i32
  %2198 = sub nsw i32 2129859010, %2197
  %2199 = bitcast i32 %2198 to float
  %2200 = call float @dx.op.binary.f32(i32 36, float %1965, float %2162)  ; FMin(a,b)
  %2201 = fmul fast float %2200, %2164
  %2202 = fsub fast float 1.000000e+00, %2201
  %2203 = bitcast float %2202 to i32
  %2204 = sub nsw i32 2129859010, %2203
  %2205 = bitcast i32 %2204 to float
  %2206 = fmul fast float %2158, %1976
  %2207 = fmul fast float %2206, %2193
  %2208 = fmul fast float %2159, %1976
  %2209 = fmul fast float %2208, %2199
  %2210 = fmul fast float %2160, %1976
  %2211 = fmul fast float %2210, %2205
  %2212 = call float @dx.op.dot3.f32(i32 55, float %2183, float %2185, float %2187, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2213 = select i1 %148, float 0.000000e+00, float %2183
  %2214 = select i1 %148, float %2212, float %2185
  %2215 = select i1 %148, float 0.000000e+00, float %2187
  %2216 = call float @dx.op.dot3.f32(i32 55, float %2155, float %2156, float %2157, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2217 = select i1 %148, float 0.000000e+00, float %2155
  %2218 = select i1 %148, float %2216, float %2156
  %2219 = select i1 %148, float 0.000000e+00, float %2157
  %2220 = call float @dx.op.dot3.f32(i32 55, float %2207, float %2209, float %2211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2221 = select i1 %148, float 0.000000e+00, float %2207
  %2222 = select i1 %148, float %2220, float %2209
  %2223 = select i1 %148, float 0.000000e+00, float %2211
  %2224 = fmul fast float %1967, 9.843750e-01
  %2225 = fmul fast float %1963, 9.843750e-01
  %2226 = fadd fast float %2224, 7.812500e-03
  %2227 = fadd fast float %2225, 7.812500e-03
  %2228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2226, float %2227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2229 = extractvalue %dx.types.ResRet.f32 %2228, 2
  %2230 = extractvalue %dx.types.ResRet.f32 %2228, 3
  %2231 = fmul fast float %2229, %1957
  %2232 = fmul fast float %2229, %1958
  %2233 = fmul fast float %2229, %1965
  %2234 = fadd fast float %2231, %2230
  %2235 = fadd fast float %2232, %2230
  %2236 = fadd fast float %2233, %2230
  %2237 = fcmp fast ogt float %1262, 0.000000e+00
  br i1 %2237, label %2238, label %2264

; <label>:2238                                    ; preds = %2129
  %2239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1262, float %1967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2240 = extractvalue %dx.types.ResRet.f32 %2239, 0
  %2241 = extractvalue %dx.types.ResRet.f32 %2239, 1
  %2242 = extractvalue %dx.types.ResRet.f32 %2239, 2
  %2243 = fadd fast float %2240, -5.000000e-01
  %2244 = fadd fast float %2241, -5.000000e-01
  %2245 = fadd fast float %2242, -5.000000e-01
  %2246 = fsub fast float 1.000000e+00, %1957
  %2247 = fsub fast float 1.000000e+00, %1958
  %2248 = fsub fast float 1.000000e+00, %1965
  %2249 = fmul fast float %1957, 4.000000e+00
  %2250 = fmul fast float %2249, %2246
  %2251 = fmul fast float %2250, %2243
  %2252 = fmul fast float %1958, 4.000000e+00
  %2253 = fmul fast float %2252, %2247
  %2254 = fmul fast float %2253, %2244
  %2255 = fmul fast float %1965, 4.000000e+00
  %2256 = fmul fast float %2255, %2248
  %2257 = fmul fast float %2256, %2245
  %2258 = fadd fast float %2251, %2234
  %2259 = fadd fast float %2254, %2235
  %2260 = fadd fast float %2257, %2236
  %2261 = call float @dx.op.unary.f32(i32 7, float %2258)  ; Saturate(value)
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  br label %2264

; <label>:2264                                    ; preds = %2238, %2129
  %2265 = phi float [ %2261, %2238 ], [ %2234, %2129 ]
  %2266 = phi float [ %2262, %2238 ], [ %2235, %2129 ]
  %2267 = phi float [ %2263, %2238 ], [ %2236, %2129 ]
  %2268 = call float @dx.op.binary.f32(i32 35, float %2266, float %2267)  ; FMax(a,b)
  %2269 = call float @dx.op.binary.f32(i32 35, float %2265, float %2268)  ; FMax(a,b)
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = call float @dx.op.dot3.f32(i32 55, float %1954, float %1955, float %1956, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2272 = fcmp fast ogt float %2271, 0x3E7FF19E20000000
  %2273 = fdiv fast float 1.000000e+00, %2271
  %2274 = select i1 %2272, float %2273, float 0.000000e+00
  %2275 = fmul fast float %2274, %1954
  %2276 = fmul fast float %2274, %1955
  %2277 = fmul fast float %2274, %1956
  %2278 = fadd fast float %2275, -1.000000e+00
  %2279 = fadd fast float %2276, -1.000000e+00
  %2280 = fadd fast float %2277, -1.000000e+00
  %2281 = fmul fast float %2278, 5.000000e-01
  %2282 = fmul fast float %2279, 5.000000e-01
  %2283 = fmul fast float %2280, 5.000000e-01
  %2284 = fadd fast float %2281, 1.000000e+00
  %2285 = fadd fast float %2282, 1.000000e+00
  %2286 = fadd fast float %2283, 1.000000e+00
  %2287 = fmul fast float %2265, %2221
  %2288 = fmul fast float %2266, %2222
  %2289 = fmul fast float %2267, %2223
  %2290 = fsub fast float 1.000000e+00, %1967
  %2291 = bitcast float %2290 to i32
  %2292 = sitofp i32 %2291 to float
  %2293 = fmul fast float %2292, 5.000000e+00
  %2294 = fadd fast float %2293, 0xC1EFBF8940000000
  %2295 = fptosi float %2294 to i32
  %2296 = bitcast i32 %2295 to float
  %2297 = fmul fast float %2296, %1261
  %2298 = fmul fast float %2213, %2297
  %2299 = fmul fast float %2298, %2270
  %2300 = fmul fast float %2299, %2284
  %2301 = fmul fast float %2214, %2297
  %2302 = fmul fast float %2301, %2270
  %2303 = fmul fast float %2302, %2285
  %2304 = fmul fast float %2215, %2297
  %2305 = fmul fast float %2304, %2270
  %2306 = fmul fast float %2305, %2286
  %2307 = fadd fast float %2287, %1266
  %2308 = fadd fast float %2307, %2300
  %2309 = fmul fast float %2308, %1285
  %2310 = fadd fast float %2288, %1267
  %2311 = fadd fast float %2310, %2303
  %2312 = fmul fast float %2311, %1285
  %2313 = fadd fast float %2289, %1268
  %2314 = fadd fast float %2313, %2306
  %2315 = fmul fast float %2314, %1285
  %2316 = fmul fast float %2270, %2215
  %2317 = fmul fast float %2270, %2214
  %2318 = fmul fast float %2270, %2213
  %2319 = fmul fast float %2270, %1378
  %2320 = fadd fast float %2319, -1.000000e+00
  %2321 = fmul fast float %2320, %1285
  %2322 = fadd fast float %2321, 1.000000e+00
  %2323 = fmul fast float %2270, %1377
  %2324 = fadd fast float %2323, -1.000000e+00
  %2325 = fmul fast float %2324, %1285
  %2326 = fadd fast float %2325, 1.000000e+00
  %2327 = fmul fast float %2270, %1376
  %2328 = fadd fast float %2327, -1.000000e+00
  %2329 = fmul fast float %2328, %1285
  %2330 = fadd fast float %2329, 1.000000e+00
  %2331 = fmul fast float %2330, %2217
  %2332 = fmul fast float %2326, %2218
  %2333 = fmul fast float %2322, %2219
  %2334 = fadd fast float %2331, %2318
  %2335 = fmul fast float %2334, %1285
  %2336 = fadd fast float %2332, %2317
  %2337 = fmul fast float %2336, %1285
  %2338 = fadd fast float %2333, %2316
  %2339 = fmul fast float %2338, %1285
  %2340 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2341 = extractvalue %dx.types.CBufRet.f32 %2340, 3
  %2342 = fcmp fast oeq float %2341, 0.000000e+00
  br i1 %2342, label %2624, label %2343

; <label>:2343                                    ; preds = %2264
  %2344 = extractvalue %dx.types.CBufRet.f32 %2340, 0
  %2345 = extractvalue %dx.types.CBufRet.f32 %2340, 1
  %2346 = extractvalue %dx.types.CBufRet.f32 %2340, 2
  %2347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2348 = extractvalue %dx.types.CBufRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.CBufRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.CBufRet.f32 %2347, 2
  %2351 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2352 = extractvalue %dx.types.CBufRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.CBufRet.f32 %2351, 1
  %2354 = call float @dx.op.dot3.f32(i32 55, float %2348, float %2349, float %2350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2355 = select i1 %148, float %2352, float %2348
  %2356 = select i1 %148, float %2354, float %2349
  %2357 = select i1 %148, float %2353, float %2350
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2360 = fcmp fast une float %2359, 0.000000e+00
  br i1 %2360, label %2361, label %2378

; <label>:2361                                    ; preds = %2343
  %2362 = fptoui float %58 to i32
  %2363 = fptoui float %59 to i32
  %2364 = lshr i32 %2362, 4
  %2365 = lshr i32 %2363, 4
  %2366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2367 = extractvalue %dx.types.CBufRet.f32 %2366, 0
  %2368 = fptoui float %2367 to i32
  %2369 = add i32 %2368, 15
  %2370 = lshr i32 %2369, 4
  %2371 = mul i32 %2370, %2365
  %2372 = add i32 %2371, %2364
  %2373 = shl i32 %2372, 3
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, -268435456
  %2377 = icmp eq i32 %2376, -1342177280
  br i1 %2377, label %2388, label %2378

; <label>:2378                                    ; preds = %2361, %2343
  %2379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2380 = extractvalue %dx.types.CBufRet.f32 %2379, 2
  %2381 = extractvalue %dx.types.CBufRet.f32 %2379, 3
  %2382 = fmul fast float %2380, %58
  %2383 = fmul fast float %2381, %59
  %2384 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %2382, float %2383, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.ResRet.f32 %2384, 2
  br label %2388

; <label>:2388                                    ; preds = %2378, %2361
  %2389 = phi float [ %2385, %2378 ], [ 0.000000e+00, %2361 ]
  %2390 = phi float [ %2386, %2378 ], [ 0.000000e+00, %2361 ]
  %2391 = phi float [ %2387, %2378 ], [ 0.000000e+00, %2361 ]
  %2392 = call float @dx.op.binary.f32(i32 36, float %2390, float %2391)  ; FMin(a,b)
  %2393 = call float @dx.op.binary.f32(i32 36, float %2389, float %2392)  ; FMin(a,b)
  %2394 = fcmp fast ogt float %2393, 0.000000e+00
  br i1 %2394, label %2395, label %2624, !dx.controlflow.hints !63

; <label>:2395                                    ; preds = %2388
  %2396 = fmul fast float %2389, %2355
  %2397 = fmul fast float %2390, %2356
  %2398 = fmul fast float %2391, %2357
  %2399 = fsub fast float %2344, %1953
  %2400 = fsub fast float %2345, %1952
  %2401 = fsub fast float %2346, %1951
  %2402 = call float @dx.op.dot3.f32(i32 55, float %2399, float %2400, float %2401, float %2399, float %2400, float %2401)  ; Dot3(ax,ay,az,bx,by,bz)
  %2403 = call float @dx.op.unary.f32(i32 25, float %2402)  ; Rsqrt(value)
  %2404 = fmul fast float %2403, %2399
  %2405 = fmul fast float %2403, %2400
  %2406 = fmul fast float %2403, %2401
  %2407 = call float @dx.op.dot3.f32(i32 55, float %2344, float %2345, float %2346, float %1960, float %1961, float %1962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2408 = call float @dx.op.dot3.f32(i32 55, float %1950, float %1949, float %1948, float %2404, float %2405, float %2406)  ; Dot3(ax,ay,az,bx,by,bz)
  %2409 = call float @dx.op.unary.f32(i32 7, float %2407)  ; Saturate(value)
  %2410 = fmul fast float %2409, %2409
  %2411 = fmul fast float %2410, %1980
  %2412 = call float @dx.op.unary.f32(i32 7, float %2411)  ; Saturate(value)
  %2413 = fmul fast float %2412, %2409
  %2414 = call float @dx.op.dot3.f32(i32 55, float %1960, float %1961, float %1962, float %2404, float %2405, float %2406)  ; Dot3(ax,ay,az,bx,by,bz)
  %2415 = fmul fast float %2414, %2414
  %2416 = call float @dx.op.unary.f32(i32 6, float %2407)  ; FAbs(value)
  %2417 = fsub fast float 1.000000e+00, %1963
  %2418 = call float @dx.op.binary.f32(i32 35, float %2417, float 0x3F847AE140000000)  ; FMax(a,b)
  %2419 = fmul fast float %2418, %2418
  %2420 = fmul fast float %2419, %2419
  %2421 = fsub fast float 1.000000e+00, %2420
  %2422 = fmul fast float %1967, %1967
  %2423 = fmul fast float %2422, %2421
  %2424 = fadd fast float %2423, %2420
  %2425 = bitcast float %2424 to i32
  %2426 = ashr i32 %2425, 1
  %2427 = add nsw i32 %2426, 532487669
  %2428 = bitcast i32 %2427 to float
  %2429 = fadd fast float %2428, %1967
  %2430 = fmul fast float %2420, %2415
  %2431 = fsub fast float 1.000000e+00, %2415
  %2432 = fadd fast float %2431, %2430
  %2433 = fmul fast float %2416, %2416
  %2434 = fmul fast float %2433, %2421
  %2435 = fadd fast float %2434, %2420
  %2436 = bitcast float %2435 to i32
  %2437 = ashr i32 %2436, 1
  %2438 = add nsw i32 %2437, 532487669
  %2439 = bitcast i32 %2438 to float
  %2440 = fadd fast float %2439, %2416
  %2441 = fmul fast float %2432, %2432
  %2442 = fmul fast float %2441, %2429
  %2443 = fmul fast float %2442, %2440
  %2444 = fdiv fast float 0x3FF0A00000000000, %2443
  %2445 = fmul fast float %2444, %2420
  %2446 = call float @dx.op.unary.f32(i32 6, float %2408)  ; FAbs(value)
  %2447 = fsub fast float 1.000000e+00, %2446
  %2448 = bitcast float %2447 to i32
  %2449 = sitofp i32 %2448 to float
  %2450 = fmul fast float %2449, 5.000000e+00
  %2451 = fadd fast float %2450, 0xC1EFBF8940000000
  %2452 = fptosi float %2451 to i32
  %2453 = bitcast i32 %2452 to float
  %2454 = fsub fast float 1.000000e+00, %1957
  %2455 = fsub fast float 1.000000e+00, %1958
  %2456 = fsub fast float 1.000000e+00, %1965
  %2457 = fmul fast float %2453, %2454
  %2458 = fmul fast float %2453, %2455
  %2459 = fmul fast float %2453, %2456
  %2460 = fadd fast float %2457, %1957
  %2461 = fadd fast float %2458, %1958
  %2462 = fadd fast float %2459, %1965
  br i1 %2237, label %2463, label %2486

; <label>:2463                                    ; preds = %2395
  %2464 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1262, float %2446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2465 = extractvalue %dx.types.ResRet.f32 %2464, 0
  %2466 = extractvalue %dx.types.ResRet.f32 %2464, 1
  %2467 = extractvalue %dx.types.ResRet.f32 %2464, 2
  %2468 = fadd fast float %2465, -5.000000e-01
  %2469 = fadd fast float %2466, -5.000000e-01
  %2470 = fadd fast float %2467, -5.000000e-01
  %2471 = fmul fast float %1957, 4.000000e+00
  %2472 = fmul fast float %2471, %2454
  %2473 = fmul fast float %2472, %2468
  %2474 = fmul fast float %1958, 4.000000e+00
  %2475 = fmul fast float %2474, %2455
  %2476 = fmul fast float %2475, %2469
  %2477 = fmul fast float %1965, 4.000000e+00
  %2478 = fmul fast float %2477, %2456
  %2479 = fmul fast float %2478, %2470
  %2480 = fadd fast float %2473, %2460
  %2481 = fadd fast float %2476, %2461
  %2482 = fadd fast float %2479, %2462
  %2483 = call float @dx.op.unary.f32(i32 7, float %2480)  ; Saturate(value)
  %2484 = call float @dx.op.unary.f32(i32 7, float %2481)  ; Saturate(value)
  %2485 = call float @dx.op.unary.f32(i32 7, float %2482)  ; Saturate(value)
  br label %2486

; <label>:2486                                    ; preds = %2463, %2395
  %2487 = phi float [ %2483, %2463 ], [ %2460, %2395 ]
  %2488 = phi float [ %2484, %2463 ], [ %2461, %2395 ]
  %2489 = phi float [ %2485, %2463 ], [ %2462, %2395 ]
  %2490 = fmul fast float %2407, 9.843750e-01
  %2491 = fadd fast float %2490, 7.812500e-03
  %2492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2491, float %2227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 2
  %2494 = extractvalue %dx.types.ResRet.f32 %2492, 3
  %2495 = fmul fast float %2493, %1957
  %2496 = fmul fast float %2493, %1958
  %2497 = fmul fast float %2493, %1965
  %2498 = fadd fast float %2495, %2494
  %2499 = fadd fast float %2496, %2494
  %2500 = fadd fast float %2497, %2494
  br i1 %2237, label %2501, label %2524

; <label>:2501                                    ; preds = %2486
  %2502 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1262, float %2407, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.ResRet.f32 %2502, 2
  %2506 = fadd fast float %2503, -5.000000e-01
  %2507 = fadd fast float %2504, -5.000000e-01
  %2508 = fadd fast float %2505, -5.000000e-01
  %2509 = fmul fast float %1957, 4.000000e+00
  %2510 = fmul fast float %2509, %2454
  %2511 = fmul fast float %2510, %2506
  %2512 = fmul fast float %1958, 4.000000e+00
  %2513 = fmul fast float %2512, %2455
  %2514 = fmul fast float %2513, %2507
  %2515 = fmul fast float %1965, 4.000000e+00
  %2516 = fmul fast float %2515, %2456
  %2517 = fmul fast float %2516, %2508
  %2518 = fadd fast float %2511, %2498
  %2519 = fadd fast float %2514, %2499
  %2520 = fadd fast float %2517, %2500
  %2521 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2522 = call float @dx.op.unary.f32(i32 7, float %2519)  ; Saturate(value)
  %2523 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  br label %2524

; <label>:2524                                    ; preds = %2501, %2486
  %2525 = phi float [ %2521, %2501 ], [ %2498, %2486 ]
  %2526 = phi float [ %2522, %2501 ], [ %2499, %2486 ]
  %2527 = phi float [ %2523, %2501 ], [ %2500, %2486 ]
  %2528 = call float @dx.op.binary.f32(i32 35, float %2526, float %2527)  ; FMax(a,b)
  %2529 = call float @dx.op.binary.f32(i32 35, float %2525, float %2528)  ; FMax(a,b)
  %2530 = fsub fast float 1.000000e+00, %2529
  %2531 = fsub fast float -0.000000e+00, %1960
  %2532 = fsub fast float -0.000000e+00, %1961
  %2533 = fsub fast float -0.000000e+00, %1962
  %2534 = call float @dx.op.dot3.f32(i32 55, float %2344, float %2345, float %2346, float %2531, float %2532, float %2533)  ; Dot3(ax,ay,az,bx,by,bz)
  %2535 = call float @dx.op.unary.f32(i32 7, float %2534)  ; Saturate(value)
  %2536 = fmul fast float %2535, 9.843750e-01
  %2537 = fadd fast float %2536, 7.812500e-03
  %2538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2537, float %2227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 2
  %2540 = extractvalue %dx.types.ResRet.f32 %2538, 3
  %2541 = fmul fast float %2539, %1957
  %2542 = fmul fast float %2539, %1958
  %2543 = fmul fast float %2539, %1965
  %2544 = fadd fast float %2541, %2540
  %2545 = fadd fast float %2542, %2540
  %2546 = fadd fast float %2543, %2540
  br i1 %2237, label %2547, label %2570

; <label>:2547                                    ; preds = %2524
  %2548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1262, float %2535, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2549 = extractvalue %dx.types.ResRet.f32 %2548, 0
  %2550 = extractvalue %dx.types.ResRet.f32 %2548, 1
  %2551 = extractvalue %dx.types.ResRet.f32 %2548, 2
  %2552 = fadd fast float %2549, -5.000000e-01
  %2553 = fadd fast float %2550, -5.000000e-01
  %2554 = fadd fast float %2551, -5.000000e-01
  %2555 = fmul fast float %1957, 4.000000e+00
  %2556 = fmul fast float %2555, %2454
  %2557 = fmul fast float %2556, %2552
  %2558 = fmul fast float %1958, 4.000000e+00
  %2559 = fmul fast float %2558, %2455
  %2560 = fmul fast float %2559, %2553
  %2561 = fmul fast float %1965, 4.000000e+00
  %2562 = fmul fast float %2561, %2456
  %2563 = fmul fast float %2562, %2554
  %2564 = fadd fast float %2557, %2544
  %2565 = fadd fast float %2560, %2545
  %2566 = fadd fast float %2563, %2546
  %2567 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2568 = call float @dx.op.unary.f32(i32 7, float %2565)  ; Saturate(value)
  %2569 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  br label %2570

; <label>:2570                                    ; preds = %2547, %2524
  %2571 = phi float [ %2567, %2547 ], [ %2544, %2524 ]
  %2572 = phi float [ %2568, %2547 ], [ %2545, %2524 ]
  %2573 = phi float [ %2569, %2547 ], [ %2546, %2524 ]
  %2574 = call float @dx.op.binary.f32(i32 35, float %2572, float %2573)  ; FMax(a,b)
  %2575 = call float @dx.op.binary.f32(i32 35, float %2571, float %2574)  ; FMax(a,b)
  %2576 = fsub fast float 1.000000e+00, %2575
  %2577 = fmul fast float %2576, %2535
  %2578 = fmul fast float %2577, %1376
  %2579 = fmul fast float %2577, %1377
  %2580 = fmul fast float %2577, %1378
  %2581 = fmul fast float %2487, %2445
  %2582 = fmul fast float %2488, %2445
  %2583 = fmul fast float %2489, %2445
  %2584 = fsub fast float 1.000000e+00, %2408
  %2585 = bitcast float %2584 to i32
  %2586 = sitofp i32 %2585 to float
  %2587 = fmul fast float %2586, 5.000000e+00
  %2588 = fadd fast float %2587, 0xC1EFBF8940000000
  %2589 = fptosi float %2588 to i32
  %2590 = bitcast i32 %2589 to float
  %2591 = fmul fast float %2590, %1261
  %2592 = fmul fast float %2530, %2591
  %2593 = fmul fast float %2592, %2284
  %2594 = fmul fast float %2592, %2285
  %2595 = fmul fast float %2592, %2286
  %2596 = fmul fast float %2530, %2413
  %2597 = fadd fast float %2593, %2581
  %2598 = fadd fast float %2594, %2582
  %2599 = fadd fast float %2595, %2583
  %2600 = fadd fast float %2578, %2596
  %2601 = fadd fast float %2579, %2596
  %2602 = fadd fast float %2580, %2596
  %2603 = fmul fast float %2600, %2396
  %2604 = fmul fast float %2601, %2397
  %2605 = fmul fast float %2602, %2398
  %2606 = fmul fast float %2413, %2396
  %2607 = fmul fast float %2606, %2597
  %2608 = fmul fast float %2413, %2397
  %2609 = fmul fast float %2608, %2598
  %2610 = fmul fast float %2413, %2398
  %2611 = fmul fast float %2610, %2599
  %2612 = fadd fast float %2603, %2334
  %2613 = fmul fast float %2612, %1285
  %2614 = fadd fast float %2604, %2336
  %2615 = fmul fast float %2614, %1285
  %2616 = fadd fast float %2605, %2338
  %2617 = fmul fast float %2616, %1285
  %2618 = fadd fast float %2607, %2308
  %2619 = fmul fast float %2618, %1285
  %2620 = fadd fast float %2609, %2311
  %2621 = fmul fast float %2620, %1285
  %2622 = fadd fast float %2611, %2314
  %2623 = fmul fast float %2622, %1285
  br label %2624

; <label>:2624                                    ; preds = %2570, %2388, %2264
  %2625 = phi float [ %2309, %2264 ], [ %2309, %2388 ], [ %2619, %2570 ]
  %2626 = phi float [ %2312, %2264 ], [ %2312, %2388 ], [ %2621, %2570 ]
  %2627 = phi float [ %2315, %2264 ], [ %2315, %2388 ], [ %2623, %2570 ]
  %2628 = phi float [ %2335, %2264 ], [ %2335, %2388 ], [ %2613, %2570 ]
  %2629 = phi float [ %2337, %2264 ], [ %2337, %2388 ], [ %2615, %2570 ]
  %2630 = phi float [ %2339, %2264 ], [ %2339, %2388 ], [ %2617, %2570 ]
  %2631 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.i32 %2631, 0
  %2633 = icmp eq i32 %2632, 0
  br i1 %2633, label %3123, label %2634

; <label>:2634                                    ; preds = %2624
  %2635 = fptoui float %58 to i32
  %2636 = fptoui float %59 to i32
  %2637 = lshr i32 %2635, 4
  %2638 = lshr i32 %2636, 4
  %2639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2640 = extractvalue %dx.types.CBufRet.i32 %2639, 0
  %2641 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2638, i32 %2640, i32 %2637)  ; UMad(a,b,c)
  %2642 = add nsw i32 %2632, -1
  %2643 = call i32 @dx.op.binary.i32(i32 37, i32 %2642, i32 0)  ; IMax(a,b)
  %2644 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %2645 = fptoui float %2644 to i32
  %2646 = lshr i32 %2645, 5
  %2647 = call i32 @dx.op.binary.i32(i32 40, i32 %2646, i32 8191)  ; UMin(a,b)
  %2648 = shl i32 %2647, 2
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = lshr i32 %2650, 16
  %2652 = and i32 %2650, 65535
  %2653 = lshr i32 %2650, 21
  %2654 = lshr i32 %2652, 5
  %2655 = call i32 @dx.op.binary.i32(i32 40, i32 %2654, i32 %2643)  ; UMin(a,b)
  %2656 = icmp ugt i32 %2653, %2655
  br i1 %2656, label %3123, label %2657

; <label>:2657                                    ; preds = %2634
  br label %2658

; <label>:2658                                    ; preds = %3113, %2657
  %2659 = phi i32 [ %3120, %3113 ], [ %2653, %2657 ]
  %2660 = phi float [ %3114, %3113 ], [ %2625, %2657 ]
  %2661 = phi float [ %3115, %3113 ], [ %2626, %2657 ]
  %2662 = phi float [ %3116, %3113 ], [ %2627, %2657 ]
  %2663 = phi float [ %3117, %3113 ], [ %2628, %2657 ]
  %2664 = phi float [ %3118, %3113 ], [ %2629, %2657 ]
  %2665 = phi float [ %3119, %3113 ], [ %2630, %2657 ]
  %2666 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2667 = extractvalue %dx.types.CBufRet.i32 %2666, 0
  %2668 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2641, i32 %2667, i32 %2659)  ; UMad(a,b,c)
  %2669 = shl i32 %2668, 2
  %2670 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2669, i32 undef)  ; BufferLoad(srv,index,wot)
  %2671 = extractvalue %dx.types.ResRet.i32 %2670, 0
  %2672 = shl i32 %2659, 5
  %2673 = sub nsw i32 %2651, %2672
  %2674 = call i32 @dx.op.binary.i32(i32 37, i32 %2673, i32 0)  ; IMax(a,b)
  %2675 = call i32 @dx.op.binary.i32(i32 38, i32 %2674, i32 31)  ; IMin(a,b)
  %2676 = sub nsw i32 1, %2651
  %2677 = add nsw i32 %2676, %2652
  %2678 = call i32 @dx.op.binary.i32(i32 37, i32 %2677, i32 0)  ; IMax(a,b)
  %2679 = call i32 @dx.op.binary.i32(i32 38, i32 %2678, i32 32)  ; IMin(a,b)
  %2680 = and i32 %2679, 31
  %2681 = shl i32 -1, %2680
  %2682 = xor i32 %2681, -1
  %2683 = and i32 %2675, 31
  %2684 = shl i32 %2682, %2683
  %2685 = icmp eq i32 %2679, 32
  %2686 = select i1 %2685, i32 -1, i32 %2684
  %2687 = and i32 %2686, %2671
  %2688 = icmp eq i32 %2687, 0
  br i1 %2688, label %3113, label %2689

; <label>:2689                                    ; preds = %2658
  br label %2690

; <label>:2690                                    ; preds = %2770, %2689
  %2691 = phi i32 [ %2702, %2770 ], [ %2687, %2689 ]
  %2692 = phi float [ %2771, %2770 ], [ %2660, %2689 ]
  %2693 = phi float [ %2772, %2770 ], [ %2661, %2689 ]
  %2694 = phi float [ %2773, %2770 ], [ %2662, %2689 ]
  %2695 = phi float [ %2774, %2770 ], [ %2663, %2689 ]
  %2696 = phi float [ %2775, %2770 ], [ %2664, %2689 ]
  %2697 = phi float [ %2776, %2770 ], [ %2665, %2689 ]
  %2698 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2691)  ; FirstbitLo(value)
  %2699 = add i32 %2698, %2672
  %2700 = and i32 %2698, 31
  %2701 = shl i32 1, %2700
  %2702 = xor i32 %2701, %2691
  %2703 = mul i32 %2699, 112
  %2704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2703, i32 undef)  ; BufferLoad(srv,index,wot)
  %2705 = extractvalue %dx.types.ResRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.ResRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.ResRet.f32 %2704, 2
  %2708 = or i32 %2703, 12
  %2709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.f32 %2709, 0
  %2711 = add i32 %2703, 44
  %2712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.f32 %2712, 0
  %2714 = add i32 %2703, 48
  %2715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2714, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.ResRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.ResRet.f32 %2715, 2
  %2719 = add i32 %2703, 80
  %2720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.f32 %2720, 1
  %2722 = extractvalue %dx.types.ResRet.f32 %2720, 2
  %2723 = call float @dx.op.dot3.f32(i32 55, float %2705, float %2706, float %2707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2724 = select i1 %148, float %2721, float %2705
  %2725 = select i1 %148, float %2723, float %2706
  %2726 = select i1 %148, float %2722, float %2707
  %2727 = fsub fast float %2716, %106
  %2728 = fsub fast float %2717, %107
  %2729 = fsub fast float %2718, %108
  %2730 = call float @dx.op.dot3.f32(i32 55, float %2727, float %2728, float %2729, float %2727, float %2728, float %2729)  ; Dot3(ax,ay,az,bx,by,bz)
  %2731 = call float @dx.op.unary.f32(i32 24, float %2730)  ; Sqrt(value)
  %2732 = fdiv fast float 1.000000e+00, %2731
  %2733 = fmul fast float %2732, %2727
  %2734 = fmul fast float %2732, %2728
  %2735 = fmul fast float %2732, %2729
  %2736 = fadd fast float %2731, %2710
  %2737 = fdiv fast float 1.000000e+00, %2736
  %2738 = fmul float %2713, %2737
  %2739 = fmul float %2738, %2738
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = and i32 %2701, %2687
  %2742 = icmp eq i32 %2741, 0
  br i1 %2742, label %2765, label %2743, !dx.controlflow.hints !64

; <label>:2743                                    ; preds = %2690
  %2744 = lshr i32 %2635, 5
  %2745 = lshr i32 %2636, 5
  %2746 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %2744, i32 %2745, i32 %2699, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2747 = extractvalue %dx.types.ResRet.i32 %2746, 0
  %2748 = and i32 %2747, 3
  %2749 = icmp eq i32 %2748, 0
  %2750 = select i1 %2749, float 1.000000e+00, float 0.000000e+00
  %2751 = icmp eq i32 %2748, 3
  br i1 %2751, label %2752, label %2765

; <label>:2752                                    ; preds = %2743
  %2753 = lshr i32 %2747, 10
  %2754 = and i32 %2753, 8160
  %2755 = and i32 %2636, 31
  %2756 = or i32 %2754, %2755
  %2757 = lshr i32 %2747, 1
  %2758 = and i32 %2757, 16352
  %2759 = and i32 %2635, 31
  %2760 = or i32 %2758, %2759
  %2761 = lshr i32 %2747, 23
  %2762 = and i32 %2761, 255
  %2763 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %2760, i32 %2756, i32 %2762, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2764 = extractvalue %dx.types.ResRet.f32 %2763, 0
  br label %2765

; <label>:2765                                    ; preds = %2752, %2743, %2690
  %2766 = phi float [ %2764, %2752 ], [ %2750, %2743 ], [ 0.000000e+00, %2690 ]
  %2767 = call float @dx.op.binary.f32(i32 36, float %2766, float %2766)  ; FMin(a,b)
  %2768 = call float @dx.op.binary.f32(i32 36, float %2766, float %2767)  ; FMin(a,b)
  %2769 = fcmp fast ogt float %2768, 0.000000e+00
  br i1 %2769, label %2778, label %2770, !dx.controlflow.hints !65

; <label>:2770                                    ; preds = %3061, %2765
  %2771 = phi float [ %2692, %2765 ], [ %3109, %3061 ]
  %2772 = phi float [ %2693, %2765 ], [ %3110, %3061 ]
  %2773 = phi float [ %2694, %2765 ], [ %3111, %3061 ]
  %2774 = phi float [ %2695, %2765 ], [ %3100, %3061 ]
  %2775 = phi float [ %2696, %2765 ], [ %3101, %3061 ]
  %2776 = phi float [ %2697, %2765 ], [ %3102, %3061 ]
  %2777 = icmp eq i32 %2691, %2701
  br i1 %2777, label %3112, label %2690

; <label>:2778                                    ; preds = %2765
  %2779 = fmul fast float %2766, %2724
  %2780 = fmul fast float %2766, %2725
  %2781 = fmul fast float %2766, %2726
  %2782 = fsub fast float %2718, %1753
  %2783 = fcmp fast ogt float %2782, 0.000000e+00
  %2784 = fsub fast float %108, %1753
  %2785 = fcmp fast ogt float %2784, 0.000000e+00
  %2786 = xor i1 %2785, %2783
  %2787 = fsub fast float %1753, %2718
  %2788 = fmul fast float %2787, 2.000000e+00
  %2789 = fadd fast float %2788, %2718
  %2790 = select i1 %2786, float %2718, float %2789
  %2791 = fsub fast float %2790, %108
  %2792 = call float @dx.op.dot3.f32(i32 55, float %2727, float %2728, float %2791, float %2727, float %2728, float %2791)  ; Dot3(ax,ay,az,bx,by,bz)
  %2793 = call float @dx.op.unary.f32(i32 25, float %2792)  ; Rsqrt(value)
  %2794 = fmul fast float %2793, %2727
  %2795 = fmul fast float %2793, %2728
  %2796 = fmul fast float %2793, %2791
  %2797 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1761)  ; Dot3(ax,ay,az,bx,by,bz)
  %2798 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2794, float %2795, float %2796)  ; Dot3(ax,ay,az,bx,by,bz)
  %2799 = fdiv fast float 1.000000e+00, %2798
  %2800 = fmul fast float %2799, %2797
  %2801 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2784, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2802 = fcmp fast ogt float %2801, 0.000000e+00
  %2803 = fcmp fast olt float %2801, 0.000000e+00
  %2804 = zext i1 %2802 to i32
  %2805 = zext i1 %2803 to i32
  %2806 = sub nsw i32 %2804, %2805
  %2807 = sitofp i32 %2806 to float
  %2808 = fsub fast float %2790, %1753
  %2809 = call float @dx.op.dot3.f32(i32 55, float %2727, float %2728, float %2808, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2810 = fcmp fast ogt float %2809, 0.000000e+00
  %2811 = fcmp fast olt float %2809, 0.000000e+00
  %2812 = zext i1 %2810 to i32
  %2813 = zext i1 %2811 to i32
  %2814 = sub nsw i32 %2812, %2813
  %2815 = sitofp i32 %2814 to float
  %2816 = fcmp fast une float %2807, %2815
  br i1 %2816, label %2817, label %2827

; <label>:2817                                    ; preds = %2778
  %2818 = fmul fast float %2800, %2796
  %2819 = fmul fast float %2800, %2795
  %2820 = fmul fast float %2800, %2794
  %2821 = fmul fast float %2820, %2820
  %2822 = fmul fast float %2819, %2819
  %2823 = fadd fast float %2821, %2822
  %2824 = fmul fast float %2818, %2818
  %2825 = fadd fast float %2823, %2824
  %2826 = call float @dx.op.unary.f32(i32 24, float %2825)  ; Sqrt(value)
  br label %2839

; <label>:2827                                    ; preds = %2778
  %2828 = icmp slt i32 %2806, 0
  br i1 %2828, label %2829, label %2839

; <label>:2829                                    ; preds = %2827
  %2830 = fsub fast float %106, %2716
  %2831 = fsub fast float %107, %2717
  %2832 = fsub fast float %108, %2790
  %2833 = fmul fast float %2830, %2830
  %2834 = fmul fast float %2831, %2831
  %2835 = fadd fast float %2833, %2834
  %2836 = fmul fast float %2832, %2832
  %2837 = fadd fast float %2835, %2836
  %2838 = call float @dx.op.unary.f32(i32 24, float %2837)  ; Sqrt(value)
  br label %2839

; <label>:2839                                    ; preds = %2829, %2827, %2817
  %2840 = phi float [ %2826, %2817 ], [ %2838, %2829 ], [ 0.000000e+00, %2827 ]
  %2841 = and i1 %2785, %2783
  %2842 = fsub fast float -0.000000e+00, %2840
  %2843 = select i1 %2841, float -0.000000e+00, float %2842
  %2844 = fmul fast float %1754, 0x3FF7154760000000
  %2845 = fmul fast float %2844, %2843
  %2846 = fmul fast float %1755, 0x3FF7154760000000
  %2847 = fmul fast float %2846, %2843
  %2848 = fmul fast float %1756, 0x3FF7154760000000
  %2849 = fmul fast float %2848, %2843
  %2850 = call float @dx.op.unary.f32(i32 21, float %2845)  ; Exp(value)
  %2851 = call float @dx.op.unary.f32(i32 21, float %2847)  ; Exp(value)
  %2852 = call float @dx.op.unary.f32(i32 21, float %2849)  ; Exp(value)
  %2853 = call float @dx.op.unary.f32(i32 7, float %2850)  ; Saturate(value)
  %2854 = call float @dx.op.unary.f32(i32 7, float %2851)  ; Saturate(value)
  %2855 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %2856 = fmul fast float %2779, %2853
  %2857 = fmul fast float %2780, %2854
  %2858 = fmul fast float %2781, %2855
  %2859 = fsub fast float %2733, %1953
  %2860 = fsub fast float %2734, %1952
  %2861 = fsub fast float %2735, %1951
  %2862 = call float @dx.op.dot3.f32(i32 55, float %2859, float %2860, float %2861, float %2859, float %2860, float %2861)  ; Dot3(ax,ay,az,bx,by,bz)
  %2863 = call float @dx.op.unary.f32(i32 25, float %2862)  ; Rsqrt(value)
  %2864 = fmul fast float %2863, %2859
  %2865 = fmul fast float %2863, %2860
  %2866 = fmul fast float %2863, %2861
  %2867 = call float @dx.op.dot3.f32(i32 55, float %2733, float %2734, float %2735, float %1960, float %1961, float %1962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2868 = call float @dx.op.dot3.f32(i32 55, float %1950, float %1949, float %1948, float %2864, float %2865, float %2866)  ; Dot3(ax,ay,az,bx,by,bz)
  %2869 = call float @dx.op.unary.f32(i32 7, float %2867)  ; Saturate(value)
  %2870 = fmul fast float %2869, %2740
  %2871 = fmul fast float %2869, %2869
  %2872 = fmul fast float %2871, %1980
  %2873 = call float @dx.op.unary.f32(i32 7, float %2872)  ; Saturate(value)
  %2874 = fmul fast float %2870, %2873
  %2875 = bitcast float %2730 to i32
  %2876 = ashr i32 %2875, 1
  %2877 = sub nsw i32 1597463007, %2876
  %2878 = bitcast i32 %2877 to float
  %2879 = fmul fast float %2878, %2727
  %2880 = fmul fast float %2878, %2728
  %2881 = fmul fast float %2878, %2729
  %2882 = fsub fast float %2879, %1953
  %2883 = fsub fast float %2880, %1952
  %2884 = fsub fast float %2881, %1951
  %2885 = call float @dx.op.dot3.f32(i32 55, float %2882, float %2883, float %2884, float %2882, float %2883, float %2884)  ; Dot3(ax,ay,az,bx,by,bz)
  %2886 = call float @dx.op.unary.f32(i32 25, float %2885)  ; Rsqrt(value)
  %2887 = fmul fast float %2882, %2886
  %2888 = fmul fast float %2883, %2886
  %2889 = fmul fast float %2884, %2886
  %2890 = call float @dx.op.dot3.f32(i32 55, float %1960, float %1961, float %1962, float %2887, float %2888, float %2889)  ; Dot3(ax,ay,az,bx,by,bz)
  %2891 = fmul fast float %2890, %2890
  %2892 = call float @dx.op.unary.f32(i32 6, float %2867)  ; FAbs(value)
  %2893 = fsub fast float 1.000000e+00, %1963
  %2894 = call float @dx.op.binary.f32(i32 35, float %2893, float 0x3F847AE140000000)  ; FMax(a,b)
  %2895 = fmul fast float %2894, %2894
  %2896 = fmul fast float %2895, %2895
  %2897 = fsub fast float 1.000000e+00, %2896
  %2898 = fmul fast float %1967, %1967
  %2899 = fmul fast float %2898, %2897
  %2900 = fadd fast float %2899, %2896
  %2901 = bitcast float %2900 to i32
  %2902 = ashr i32 %2901, 1
  %2903 = add nsw i32 %2902, 532487669
  %2904 = bitcast i32 %2903 to float
  %2905 = fadd fast float %2904, %1967
  %2906 = fmul fast float %2896, %2891
  %2907 = fsub fast float 1.000000e+00, %2891
  %2908 = fadd fast float %2907, %2906
  %2909 = fmul fast float %2892, %2892
  %2910 = fmul fast float %2909, %2897
  %2911 = fadd fast float %2910, %2896
  %2912 = bitcast float %2911 to i32
  %2913 = ashr i32 %2912, 1
  %2914 = add nsw i32 %2913, 532487669
  %2915 = bitcast i32 %2914 to float
  %2916 = fadd fast float %2915, %2892
  %2917 = fmul fast float %2908, %2908
  %2918 = fmul fast float %2917, %2905
  %2919 = fmul fast float %2918, %2916
  %2920 = fdiv fast float 1.000000e+00, %2919
  %2921 = bitcast float %2896 to i32
  %2922 = sitofp i32 %2921 to float
  %2923 = fmul fast float %2922, 0x3FE7F73180000000
  %2924 = fadd fast float %2923, 0x41AFE27C40000000
  %2925 = fptosi float %2924 to i32
  %2926 = bitcast i32 %2925 to float
  %2927 = fmul fast float %2713, 0x3FD80E9D60000000
  %2928 = fmul fast float %2927, %2878
  %2929 = fadd fast float %2926, %2928
  %2930 = bitcast float %2929 to i32
  %2931 = sub nsw i32 2129859010, %2930
  %2932 = bitcast i32 %2931 to float
  %2933 = fmul fast float %2896, %2920
  %2934 = fmul fast float %2933, %2926
  %2935 = fmul fast float %2934, %2932
  %2936 = call float @dx.op.unary.f32(i32 6, float %2868)  ; FAbs(value)
  %2937 = fsub fast float 1.000000e+00, %2936
  %2938 = bitcast float %2937 to i32
  %2939 = sitofp i32 %2938 to float
  %2940 = fmul fast float %2939, 5.000000e+00
  %2941 = fadd fast float %2940, 0xC1EFBF8940000000
  %2942 = fptosi float %2941 to i32
  %2943 = bitcast i32 %2942 to float
  %2944 = fsub fast float 1.000000e+00, %1957
  %2945 = fsub fast float 1.000000e+00, %1958
  %2946 = fsub fast float 1.000000e+00, %1965
  %2947 = fmul fast float %2943, %2944
  %2948 = fmul fast float %2943, %2945
  %2949 = fmul fast float %2943, %2946
  %2950 = fadd fast float %2947, %1957
  %2951 = fadd fast float %2948, %1958
  %2952 = fadd fast float %2949, %1965
  br i1 %2237, label %2953, label %2976

; <label>:2953                                    ; preds = %2839
  %2954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1262, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2955 = extractvalue %dx.types.ResRet.f32 %2954, 0
  %2956 = extractvalue %dx.types.ResRet.f32 %2954, 1
  %2957 = extractvalue %dx.types.ResRet.f32 %2954, 2
  %2958 = fadd fast float %2955, -5.000000e-01
  %2959 = fadd fast float %2956, -5.000000e-01
  %2960 = fadd fast float %2957, -5.000000e-01
  %2961 = fmul fast float %1957, 4.000000e+00
  %2962 = fmul fast float %2961, %2944
  %2963 = fmul fast float %2962, %2958
  %2964 = fmul fast float %1958, 4.000000e+00
  %2965 = fmul fast float %2964, %2945
  %2966 = fmul fast float %2965, %2959
  %2967 = fmul fast float %1965, 4.000000e+00
  %2968 = fmul fast float %2967, %2946
  %2969 = fmul fast float %2968, %2960
  %2970 = fadd fast float %2963, %2950
  %2971 = fadd fast float %2966, %2951
  %2972 = fadd fast float %2969, %2952
  %2973 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2974 = call float @dx.op.unary.f32(i32 7, float %2971)  ; Saturate(value)
  %2975 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  br label %2976

; <label>:2976                                    ; preds = %2953, %2839
  %2977 = phi float [ %2973, %2953 ], [ %2950, %2839 ]
  %2978 = phi float [ %2974, %2953 ], [ %2951, %2839 ]
  %2979 = phi float [ %2975, %2953 ], [ %2952, %2839 ]
  %2980 = fmul fast float %2867, 9.843750e-01
  %2981 = fadd fast float %2980, 7.812500e-03
  %2982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2981, float %2227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2983 = extractvalue %dx.types.ResRet.f32 %2982, 2
  %2984 = extractvalue %dx.types.ResRet.f32 %2982, 3
  %2985 = fmul fast float %2983, %1957
  %2986 = fmul fast float %2983, %1958
  %2987 = fmul fast float %2983, %1965
  %2988 = fadd fast float %2985, %2984
  %2989 = fadd fast float %2986, %2984
  %2990 = fadd fast float %2987, %2984
  br i1 %2237, label %2991, label %3014

; <label>:2991                                    ; preds = %2976
  %2992 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1262, float %2867, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2993 = extractvalue %dx.types.ResRet.f32 %2992, 0
  %2994 = extractvalue %dx.types.ResRet.f32 %2992, 1
  %2995 = extractvalue %dx.types.ResRet.f32 %2992, 2
  %2996 = fadd fast float %2993, -5.000000e-01
  %2997 = fadd fast float %2994, -5.000000e-01
  %2998 = fadd fast float %2995, -5.000000e-01
  %2999 = fmul fast float %1957, 4.000000e+00
  %3000 = fmul fast float %2999, %2944
  %3001 = fmul fast float %3000, %2996
  %3002 = fmul fast float %1958, 4.000000e+00
  %3003 = fmul fast float %3002, %2945
  %3004 = fmul fast float %3003, %2997
  %3005 = fmul fast float %1965, 4.000000e+00
  %3006 = fmul fast float %3005, %2946
  %3007 = fmul fast float %3006, %2998
  %3008 = fadd fast float %3001, %2988
  %3009 = fadd fast float %3004, %2989
  %3010 = fadd fast float %3007, %2990
  %3011 = call float @dx.op.unary.f32(i32 7, float %3008)  ; Saturate(value)
  %3012 = call float @dx.op.unary.f32(i32 7, float %3009)  ; Saturate(value)
  %3013 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  br label %3014

; <label>:3014                                    ; preds = %2991, %2976
  %3015 = phi float [ %3011, %2991 ], [ %2988, %2976 ]
  %3016 = phi float [ %3012, %2991 ], [ %2989, %2976 ]
  %3017 = phi float [ %3013, %2991 ], [ %2990, %2976 ]
  %3018 = call float @dx.op.binary.f32(i32 35, float %3016, float %3017)  ; FMax(a,b)
  %3019 = call float @dx.op.binary.f32(i32 35, float %3015, float %3018)  ; FMax(a,b)
  %3020 = fsub fast float 1.000000e+00, %3019
  %3021 = fsub fast float -0.000000e+00, %1960
  %3022 = fsub fast float -0.000000e+00, %1961
  %3023 = fsub fast float -0.000000e+00, %1962
  %3024 = call float @dx.op.dot3.f32(i32 55, float %2733, float %2734, float %2735, float %3021, float %3022, float %3023)  ; Dot3(ax,ay,az,bx,by,bz)
  %3025 = call float @dx.op.unary.f32(i32 7, float %3024)  ; Saturate(value)
  %3026 = fmul fast float %3025, %2740
  %3027 = fmul fast float %3025, 9.843750e-01
  %3028 = fadd fast float %3027, 7.812500e-03
  %3029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %3028, float %2227, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3030 = extractvalue %dx.types.ResRet.f32 %3029, 2
  %3031 = extractvalue %dx.types.ResRet.f32 %3029, 3
  %3032 = fmul fast float %3030, %1957
  %3033 = fmul fast float %3030, %1958
  %3034 = fmul fast float %3030, %1965
  %3035 = fadd fast float %3032, %3031
  %3036 = fadd fast float %3033, %3031
  %3037 = fadd fast float %3034, %3031
  br i1 %2237, label %3038, label %3061

; <label>:3038                                    ; preds = %3014
  %3039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1262, float %3025, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3040 = extractvalue %dx.types.ResRet.f32 %3039, 0
  %3041 = extractvalue %dx.types.ResRet.f32 %3039, 1
  %3042 = extractvalue %dx.types.ResRet.f32 %3039, 2
  %3043 = fadd fast float %3040, -5.000000e-01
  %3044 = fadd fast float %3041, -5.000000e-01
  %3045 = fadd fast float %3042, -5.000000e-01
  %3046 = fmul fast float %1957, 4.000000e+00
  %3047 = fmul fast float %3046, %2944
  %3048 = fmul fast float %3047, %3043
  %3049 = fmul fast float %1958, 4.000000e+00
  %3050 = fmul fast float %3049, %2945
  %3051 = fmul fast float %3050, %3044
  %3052 = fmul fast float %1965, 4.000000e+00
  %3053 = fmul fast float %3052, %2946
  %3054 = fmul fast float %3053, %3045
  %3055 = fadd fast float %3048, %3035
  %3056 = fadd fast float %3051, %3036
  %3057 = fadd fast float %3054, %3037
  %3058 = call float @dx.op.unary.f32(i32 7, float %3055)  ; Saturate(value)
  %3059 = call float @dx.op.unary.f32(i32 7, float %3056)  ; Saturate(value)
  %3060 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  br label %3061

; <label>:3061                                    ; preds = %3038, %3014
  %3062 = phi float [ %3058, %3038 ], [ %3035, %3014 ]
  %3063 = phi float [ %3059, %3038 ], [ %3036, %3014 ]
  %3064 = phi float [ %3060, %3038 ], [ %3037, %3014 ]
  %3065 = call float @dx.op.binary.f32(i32 35, float %3063, float %3064)  ; FMax(a,b)
  %3066 = call float @dx.op.binary.f32(i32 35, float %3062, float %3065)  ; FMax(a,b)
  %3067 = fsub fast float 1.000000e+00, %3066
  %3068 = fmul fast float %3026, %3067
  %3069 = fmul fast float %3068, %1376
  %3070 = fmul fast float %3068, %1377
  %3071 = fmul fast float %3068, %1378
  %3072 = fmul fast float %2977, %2935
  %3073 = fmul fast float %2978, %2935
  %3074 = fmul fast float %2979, %2935
  %3075 = fsub fast float 1.000000e+00, %2868
  %3076 = bitcast float %3075 to i32
  %3077 = sitofp i32 %3076 to float
  %3078 = fmul fast float %3077, 5.000000e+00
  %3079 = fadd fast float %3078, 0xC1EFBF8940000000
  %3080 = fptosi float %3079 to i32
  %3081 = bitcast i32 %3080 to float
  %3082 = fmul fast float %3081, %1261
  %3083 = fmul fast float %3020, %3082
  %3084 = fmul fast float %3083, %2284
  %3085 = fmul fast float %3083, %2285
  %3086 = fmul fast float %3083, %2286
  %3087 = fmul fast float %3020, %2874
  %3088 = fadd fast float %3084, %3072
  %3089 = fadd fast float %3085, %3073
  %3090 = fadd fast float %3086, %3074
  %3091 = fadd fast float %3069, %3087
  %3092 = fadd fast float %3070, %3087
  %3093 = fadd fast float %3071, %3087
  %3094 = fmul fast float %2856, %1285
  %3095 = fmul fast float %3094, %3091
  %3096 = fmul fast float %2857, %1285
  %3097 = fmul fast float %3096, %3092
  %3098 = fmul fast float %2858, %1285
  %3099 = fmul fast float %3098, %3093
  %3100 = fadd fast float %3095, %2695
  %3101 = fadd fast float %3097, %2696
  %3102 = fadd fast float %3099, %2697
  %3103 = fmul fast float %3094, %2874
  %3104 = fmul fast float %3103, %3088
  %3105 = fmul fast float %3096, %2874
  %3106 = fmul fast float %3105, %3089
  %3107 = fmul fast float %3098, %2874
  %3108 = fmul fast float %3107, %3090
  %3109 = fadd fast float %3104, %2692
  %3110 = fadd fast float %3106, %2693
  %3111 = fadd fast float %3108, %2694
  br label %2770

; <label>:3112                                    ; preds = %2770
  br label %3113

; <label>:3113                                    ; preds = %3112, %2658
  %3114 = phi float [ %2660, %2658 ], [ %2771, %3112 ]
  %3115 = phi float [ %2661, %2658 ], [ %2772, %3112 ]
  %3116 = phi float [ %2662, %2658 ], [ %2773, %3112 ]
  %3117 = phi float [ %2663, %2658 ], [ %2774, %3112 ]
  %3118 = phi float [ %2664, %2658 ], [ %2775, %3112 ]
  %3119 = phi float [ %2665, %2658 ], [ %2776, %3112 ]
  %3120 = add i32 %2659, 1
  %3121 = icmp ugt i32 %3120, %2655
  br i1 %3121, label %3122, label %2658

; <label>:3122                                    ; preds = %3113
  br label %3123

; <label>:3123                                    ; preds = %3122, %2634, %2624
  %3124 = phi float [ %2625, %2624 ], [ %2625, %2634 ], [ %3114, %3122 ]
  %3125 = phi float [ %2626, %2624 ], [ %2626, %2634 ], [ %3115, %3122 ]
  %3126 = phi float [ %2627, %2624 ], [ %2627, %2634 ], [ %3116, %3122 ]
  %3127 = phi float [ %2628, %2624 ], [ %2628, %2634 ], [ %3117, %3122 ]
  %3128 = phi float [ %2629, %2624 ], [ %2629, %2634 ], [ %3118, %3122 ]
  %3129 = phi float [ %2630, %2624 ], [ %2630, %2634 ], [ %3119, %3122 ]
  %3130 = call float @dx.op.unary.f32(i32 24, float %1954)  ; Sqrt(value)
  %3131 = call float @dx.op.unary.f32(i32 24, float %1955)  ; Sqrt(value)
  %3132 = call float @dx.op.unary.f32(i32 24, float %1956)  ; Sqrt(value)
  %3133 = fmul fast float %3130, %3127
  %3134 = fmul fast float %3131, %3128
  %3135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.f32 %3135, 0
  br i1 %148, label %3137, label %3157

; <label>:3137                                    ; preds = %3123
  %3138 = fadd fast float %3129, %1259
  %3139 = fmul fast float %3138, %1260
  %3140 = fsub fast float 1.000000e+00, %1260
  %3141 = call float @dx.op.unary.f32(i32 7, float %3140)  ; Saturate(value)
  %3142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3143 = extractvalue %dx.types.CBufRet.f32 %3142, 3
  %3144 = fmul fast float %3143, %3141
  %3145 = fadd fast float %3144, %3139
  %3146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3147 = extractvalue %dx.types.CBufRet.f32 %3146, 0
  %3148 = fmul fast float %3147, %2290
  %3149 = fsub fast float %3145, %3148
  %3150 = fadd fast float %3134, %3133
  %3151 = fmul fast float %3136, %3150
  %3152 = extractvalue %dx.types.CBufRet.f32 %3142, 1
  %3153 = fsub fast float %3149, %3152
  %3154 = extractvalue %dx.types.CBufRet.f32 %3142, 2
  %3155 = fmul fast float %3153, %3154
  %3156 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  br label %3172

; <label>:3157                                    ; preds = %3123
  %3158 = fmul fast float %3132, %3129
  %3159 = fmul fast float %3136, %3133
  %3160 = fmul fast float %3136, %3134
  %3161 = fmul fast float %3158, %3136
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 32
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3172, label %3166

; <label>:3166                                    ; preds = %3157
  %3167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3168 = extractvalue %dx.types.CBufRet.f32 %3167, 0
  %3169 = fmul fast float %3168, 0x3FE99999A0000000
  %3170 = fadd fast float %3168, %3159
  %3171 = fadd fast float %3169, %3161
  br label %3172

; <label>:3172                                    ; preds = %3166, %3157, %3137
  %3173 = phi float [ %3151, %3137 ], [ %3170, %3166 ], [ %3159, %3157 ]
  %3174 = phi float [ %3156, %3137 ], [ %3160, %3166 ], [ %3160, %3157 ]
  %3175 = phi float [ 1.000000e+00, %3137 ], [ %3171, %3166 ], [ %3161, %3157 ]
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 0
  %3178 = fmul fast float %3177, %3125
  %3179 = fmul fast float %3177, %3126
  %3180 = fadd fast float %3125, %3124
  %3181 = select i1 %148, float %3180, float %3124
  %3182 = fmul float %3181, %3177
  %3183 = select i1 %148, float 0.000000e+00, float %3178
  %3184 = select i1 %148, float 0.000000e+00, float %3179
  %3185 = fmul fast float %3173, %3130
  %3186 = fmul fast float %3174, %3131
  %3187 = fmul fast float %3175, %3132
  %3188 = fadd fast float %3182, %3185
  %3189 = fadd fast float %3183, %3186
  %3190 = fadd fast float %3184, %3187
  %3191 = select i1 %148, float %3174, float %3189
  %3192 = select i1 %148, float %3175, float %3190
  %3193 = call float @dx.op.binary.f32(i32 36, float %3188, float 3.225500e+04)  ; FMin(a,b)
  %3194 = call float @dx.op.binary.f32(i32 36, float %3191, float 3.225500e+04)  ; FMin(a,b)
  %3195 = call float @dx.op.binary.f32(i32 36, float %3192, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3193)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3194)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3195)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!41}
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !33, !36}
!5 = !{!6, !8, !9, !10, !11, !12, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !13}
!13 = !{i32 0, i32 5}
!14 = !{i32 6, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!15 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!16 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!17 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!18 = !{i32 10, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!19 = !{i32 11, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!33 = !{!34, !35}
!34 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!35 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!36 = !{!37, !38, !39, !40}
!37 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!38 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!39 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!40 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!41 = !{[31 x i32] [i32 29, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7]}
!42 = !{void ()* @ps_main, !"ps_main", !43, !4, !62}
!43 = !{!44, !60, null}
!44 = !{!45, !48, !50, !52, !54, !55, !56, !57, !59}
!45 = !{i32 0, !"SV_Position", i8 9, i8 3, !46, i8 4, i32 1, i8 4, i32 0, i8 0, !47}
!46 = !{i32 0}
!47 = !{i32 3, i32 11}
!48 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 1, i8 0, !49}
!49 = !{i32 3, i32 3}
!50 = !{i32 2, !"NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 2, i8 0, !51}
!51 = !{i32 3, i32 7}
!52 = !{i32 3, !"TANGENT", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 3, i8 0, !53}
!53 = !{i32 3, i32 15}
!54 = !{i32 4, !"SH_RED", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 4, i8 0, !53}
!55 = !{i32 5, !"SH_GREEN", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 5, i8 0, !53}
!56 = !{i32 6, !"SH_BLUE", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 6, i8 0, !53}
!57 = !{i32 7, !"SV_IsFrontFace", i8 5, i8 13, !46, i8 1, i32 1, i8 1, i32 7, i8 0, !58}
!58 = !{i32 3, i32 1}
!59 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !46, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!60 = !{!61}
!61 = !{i32 0, !"SV_Target", i8 9, i8 16, !46, i8 0, i32 1, i8 4, i32 0, i8 0, !53}
!62 = !{i32 0, i64 24}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}

