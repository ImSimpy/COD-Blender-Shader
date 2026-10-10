;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float       
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           5     NONE    uint   x   
; TRANSIENT_INDEX          0    y          5     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0ea5c62cf616759cbe685e1d3828d13e
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
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
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture    byte         r/o      T5     t16,space1     1
;                                   texture    byte         r/o      T6     t17,space1     1
;                                   texture     u32     2darray      T7     t11,space2     1
;                                   texture     f32     2darray      T8     t10,space2     1
;                                   texture     f32          2d      T9     t69,space2     1
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
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 12, 13, 14, 16, 17, 18, 19, 20 }
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = fmul fast float %44, %38
  %46 = fmul fast float %44, %39
  %47 = fmul fast float %34, %31
  %48 = fmul fast float %35, %30
  %49 = fsub fast float %47, %48
  %50 = fmul fast float %35, %29
  %51 = fmul fast float %33, %31
  %52 = fsub fast float %50, %51
  %53 = fmul fast float %33, %30
  %54 = fmul fast float %34, %29
  %55 = fsub fast float %53, %54
  %56 = fmul fast float %49, %32
  %57 = fmul fast float %52, %32
  %58 = fmul fast float %55, %32
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 2
  %61 = extractvalue %dx.types.CBufRet.f32 %59, 3
  %62 = fmul fast float %60, 2.000000e+00
  %63 = fmul fast float %62, %45
  %64 = fmul fast float %61, 2.000000e+00
  %65 = fmul fast float %64, %46
  %66 = fsub fast float 1.000000e+00, %63
  %67 = fsub fast float 1.000000e+00, %65
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %72 = fmul fast float %66, %69
  %73 = fmul fast float %66, %70
  %74 = fmul fast float %66, %71
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = extractvalue %dx.types.CBufRet.f32 %75, 1
  %78 = extractvalue %dx.types.CBufRet.f32 %75, 2
  %79 = fmul fast float %67, %76
  %80 = fmul fast float %67, %77
  %81 = fmul fast float %67, %78
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 0
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 1
  %85 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %86 = fadd fast float %79, %83
  %87 = fadd fast float %86, %72
  %88 = fadd fast float %80, %84
  %89 = fadd fast float %88, %73
  %90 = fadd fast float %81, %85
  %91 = fadd fast float %90, %74
  %92 = fmul fast float %87, %40
  %93 = fmul fast float %89, %40
  %94 = fmul fast float %91, %40
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 3
  %98 = fmul fast float %96, %45
  %99 = fmul fast float %97, %46
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = and i32 %101, 114688
  %103 = icmp ne i32 %102, 0
  %104 = select i1 %103, float %98, float 0.000000e+00
  %105 = select i1 %103, float %99, float 0.000000e+00
  %106 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %104, float %105, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = fmul fast float %107, 2.550000e+02
  %109 = fptoui float %108 to i32
  %110 = select i1 %103, i32 %109, i32 0
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.i32 %112, 3
  %114 = and i32 %113, 3
  %115 = icmp ne i32 %114, 0
  %116 = and i32 %113, 4
  %117 = icmp ne i32 %116, 0
  %118 = and i1 %115, %117
  br i1 %118, label %119, label %130

; <label>:119                                     ; preds = %0
  %120 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %121 = fmul fast float %120, %46
  %122 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %123 = fmul fast float %122, %45
  %124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %24, float %123, float %121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = fsub fast float 1.000000e+00, %125
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = fcmp fast olt float %126, %128
  br label %133

; <label>:130                                     ; preds = %0
  %131 = icmp eq i32 %116, 0
  %132 = and i1 %115, %131
  br label %133

; <label>:133                                     ; preds = %130, %119
  %134 = phi i1 [ %129, %119 ], [ %132, %130 ]
  %135 = add i32 %28, 60
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %135, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = shl i32 %137, 4
  %139 = and i32 %138, 32752
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = lshr i32 %137, 7
  %142 = and i32 %141, 32752
  %143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %142)  ; LegacyF16ToF32(value)
  %144 = lshr i32 %137, 22
  %145 = shl nuw nsw i32 %144, 5
  %146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %145)  ; LegacyF16ToF32(value)
  %147 = add i32 %28, 72
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = and i32 %149, 255
  %151 = uitofp i32 %150 to float
  %152 = fmul fast float %151, 0x3F70101020000000
  %153 = lshr i32 %149, 8
  %154 = and i32 %153, 255
  %155 = uitofp i32 %154 to float
  %156 = fmul fast float %155, 0x3F70101020000000
  %157 = lshr i32 %149, 16
  %158 = and i32 %157, 255
  %159 = uitofp i32 %158 to float
  %160 = fmul fast float %159, 0x3F70101020000000
  %161 = add i32 %28, 36
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = add i32 %28, 96
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = add i32 %28, 24
  %168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %169 = extractvalue %dx.types.ResRet.i32 %168, 0
  %170 = add i32 %28, 28
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = or i32 %172, %169
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %635, label %175

; <label>:175                                     ; preds = %133
  %176 = lshr i32 %166, 16
  %177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %176)  ; LegacyF16ToF32(value)
  %178 = fmul fast float %177, 0x3F50624DE0000000
  %179 = and i32 %166, 65535
  %180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %179)  ; LegacyF16ToF32(value)
  %181 = fmul fast float %180, 0x3F50624DE0000000
  %182 = lshr i32 %163, 16
  %183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %182)  ; LegacyF16ToF32(value)
  %184 = and i32 %163, 65535
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = add i32 %28, 92
  %187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %188 = extractvalue %dx.types.ResRet.i32 %187, 0
  %189 = lshr i32 %188, 16
  %190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %189)  ; LegacyF16ToF32(value)
  %191 = fmul fast float %190, 0x3F50624DE0000000
  %192 = add i32 %28, 40
  %193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.i32 %193, 0
  %195 = lshr i32 %194, 16
  %196 = and i32 %195, 255
  %197 = lshr i32 %194, 24
  %198 = add i32 %28, 100
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 65535
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = lshr i32 %200, 16
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = add i32 %28, 32
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = lshr i32 %207, 22
  %209 = shl nuw nsw i32 %208, 5
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = shl i32 %207, 4
  %212 = and i32 %211, 32752
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %207, 7
  %215 = and i32 %214, 32752
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %219 = fmul fast float %218, 1.000000e+03
  %220 = fmul fast float %181, %219
  %221 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %222 = fadd fast float %221, %185
  %223 = fmul fast float %178, %219
  %224 = call float @dx.op.unary.f32(i32 22, float %223)  ; Frc(value)
  %225 = fadd fast float %224, %183
  %226 = fmul fast float %191, %219
  %227 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %228 = fmul fast float %227, 0x401921FB60000000
  %229 = fadd fast float %228, %210
  %230 = call float @dx.op.unary.f32(i32 13, float %229)  ; Sin(value)
  %231 = call float @dx.op.unary.f32(i32 12, float %229)  ; Cos(value)
  %232 = fsub fast float -0.000000e+00, %230
  %233 = fadd fast float %36, -5.000000e-01
  %234 = fadd fast float %37, -5.000000e-01
  %235 = fmul fast float %202, %233
  %236 = fmul fast float %204, %234
  %237 = fadd fast float %235, 5.000000e-01
  %238 = fadd fast float %236, 5.000000e-01
  %239 = fmul fast float %213, %237
  %240 = fmul fast float %216, %238
  %241 = fmul fast float %231, %239
  %242 = call float @dx.op.tertiary.f32(i32 46, float %232, float %240, float %241)  ; FMad(a,b,c)
  %243 = fmul fast float %230, %239
  %244 = call float @dx.op.tertiary.f32(i32 46, float %231, float %240, float %243)  ; FMad(a,b,c)
  %245 = fadd fast float %222, %242
  %246 = fadd fast float %225, %244
  %247 = icmp ugt i32 %196, 1
  %248 = icmp ugt i32 %194, 33554431
  %249 = or i1 %248, %247
  br i1 %249, label %250, label %275

; <label>:250                                     ; preds = %175
  %251 = add i32 %28, 84
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = lshr i32 %253, 16
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = fmul fast float %218, %255
  %257 = call float @dx.op.unary.f32(i32 22, float %256)  ; Frc(value)
  %258 = mul nuw nsw i32 %196, %197
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %257, %259
  %261 = call float @dx.op.unary.f32(i32 27, float %260)  ; Round_ni(value)
  %262 = fptoui float %261 to i32
  %263 = urem i32 %262, %196
  %264 = udiv i32 %262, %197
  %265 = call float @dx.op.unary.f32(i32 22, float %245)  ; Frc(value)
  %266 = call float @dx.op.unary.f32(i32 22, float %246)  ; Frc(value)
  %267 = uitofp i32 %263 to float
  %268 = uitofp i32 %264 to float
  %269 = fadd fast float %265, %267
  %270 = fadd fast float %266, %268
  %271 = uitofp i32 %196 to float
  %272 = uitofp i32 %197 to float
  %273 = fdiv fast float %269, %271
  %274 = fdiv fast float %270, %272
  br label %275

; <label>:275                                     ; preds = %250, %175
  %276 = phi float [ %273, %250 ], [ %245, %175 ]
  %277 = phi float [ %274, %250 ], [ %246, %175 ]
  %278 = and i32 %169, 16
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %476, label %280

; <label>:280                                     ; preds = %275
  %281 = add i32 %28, 120
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = add i32 %283, 0
  %285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %286 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %285, %dx.types.Handle %41, float %276, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = extractvalue %dx.types.ResRet.f32 %286, 3
  %291 = and i32 %194, 255
  %292 = uitofp i32 %291 to float
  %293 = lshr i32 %194, 8
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %290, %292
  %297 = fadd fast float %296, %295
  %298 = fmul fast float %297, 0x3F70101000000000
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 512
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %311, label %303

; <label>:303                                     ; preds = %280
  %304 = add i32 %28, 140
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = add i32 %306, 0
  %308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %308, %dx.types.Handle %42, float %276, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %310 = extractvalue %dx.types.ResRet.f32 %309, 0
  br label %311

; <label>:311                                     ; preds = %303, %280
  %312 = phi float [ %310, %303 ], [ 1.000000e+00, %280 ]
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 33554432
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %423, label %317

; <label>:317                                     ; preds = %311
  %318 = add i32 %28, 80
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %28, 84
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 65535
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %147, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = lshr i32 %331, 24
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = and i32 %331, 255
  %336 = uitofp i32 %335 to float
  %337 = fmul fast float %336, 0x3F70101020000000
  %338 = lshr i32 %331, 8
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %331, 16
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = add i32 %28, 76
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = lshr i32 %348, 24
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = and i32 %348, 255
  %353 = uitofp i32 %352 to float
  %354 = fmul fast float %353, 0x3F70101020000000
  %355 = lshr i32 %348, 8
  %356 = and i32 %355, 255
  %357 = uitofp i32 %356 to float
  %358 = fmul fast float %357, 0x3F70101020000000
  %359 = lshr i32 %348, 16
  %360 = and i32 %359, 255
  %361 = uitofp i32 %360 to float
  %362 = fmul fast float %361, 0x3F70101020000000
  %363 = bitcast float %287 to i32
  %364 = ashr i32 %363, 1
  %365 = sub nsw i32 1597463174, %364
  %366 = bitcast i32 %365 to float
  %367 = fmul fast float %287, 5.000000e-01
  %368 = fmul fast float %366, %366
  %369 = fmul fast float %368, %367
  %370 = fsub fast float 1.500000e+00, %369
  %371 = fmul fast float %366, %287
  %372 = fmul fast float %371, %370
  %373 = bitcast float %288 to i32
  %374 = ashr i32 %373, 1
  %375 = sub nsw i32 1597463174, %374
  %376 = bitcast i32 %375 to float
  %377 = fmul fast float %288, 5.000000e-01
  %378 = fmul fast float %376, %376
  %379 = fmul fast float %378, %377
  %380 = fsub fast float 1.500000e+00, %379
  %381 = fmul fast float %376, %288
  %382 = fmul fast float %381, %380
  %383 = bitcast float %289 to i32
  %384 = ashr i32 %383, 1
  %385 = sub nsw i32 1597463174, %384
  %386 = bitcast i32 %385 to float
  %387 = fmul fast float %289, 5.000000e-01
  %388 = fmul fast float %386, %386
  %389 = fmul fast float %388, %387
  %390 = fsub fast float 1.500000e+00, %389
  %391 = fmul fast float %386, %289
  %392 = fmul fast float %391, %390
  %393 = fsub fast float %372, %354
  %394 = fsub fast float %382, %358
  %395 = fsub fast float %392, %362
  %396 = fmul fast float %393, %322
  %397 = fmul fast float %394, %324
  %398 = fmul fast float %395, %329
  %399 = fadd fast float %396, %337
  %400 = fadd fast float %397, %341
  %401 = fadd fast float %398, %345
  %402 = call float @dx.op.unary.f32(i32 7, float %399)  ; Saturate(value)
  %403 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %404 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %405 = fmul fast float %402, %402
  %406 = fmul fast float %403, %403
  %407 = fmul fast float %404, %404
  %408 = fsub fast float %405, %287
  %409 = fsub fast float %406, %288
  %410 = fsub fast float %407, %289
  %411 = fmul fast float %408, %312
  %412 = fmul fast float %409, %312
  %413 = fmul fast float %410, %312
  %414 = fadd fast float %411, %287
  %415 = fadd fast float %412, %288
  %416 = fadd fast float %413, %289
  %417 = fadd fast float %334, %298
  %418 = fsub fast float %417, %351
  %419 = call float @dx.op.unary.f32(i32 7, float %418)  ; Saturate(value)
  %420 = fsub fast float %419, %298
  %421 = fmul fast float %420, %312
  %422 = fadd fast float %421, %298
  br label %476

; <label>:423                                     ; preds = %311
  %424 = and i32 %314, 134217728
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %460, label %426

; <label>:426                                     ; preds = %423
  %427 = call float @dx.op.unary.f32(i32 24, float %152)  ; Sqrt(value)
  %428 = call float @dx.op.unary.f32(i32 24, float %156)  ; Sqrt(value)
  %429 = call float @dx.op.unary.f32(i32 24, float %160)  ; Sqrt(value)
  %430 = fadd fast float %427, -5.000000e-01
  %431 = fadd fast float %428, -5.000000e-01
  %432 = fadd fast float %429, -5.000000e-01
  %433 = fmul fast float %430, %312
  %434 = fmul fast float %431, %312
  %435 = fmul fast float %432, %312
  %436 = fadd fast float %433, 5.000000e-01
  %437 = fadd fast float %434, 5.000000e-01
  %438 = fadd fast float %435, 5.000000e-01
  %439 = call float @dx.op.unary.f32(i32 24, float %287)  ; Sqrt(value)
  %440 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %441 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %442 = fmul fast float %436, 2.000000e+00
  %443 = fsub fast float 1.000000e+00, %442
  %444 = fmul fast float %443, %439
  %445 = fadd fast float %444, %442
  %446 = fmul fast float %445, %439
  %447 = fmul fast float %437, 2.000000e+00
  %448 = fsub fast float 1.000000e+00, %447
  %449 = fmul fast float %448, %440
  %450 = fadd fast float %449, %447
  %451 = fmul fast float %450, %440
  %452 = fmul fast float %438, 2.000000e+00
  %453 = fsub fast float 1.000000e+00, %452
  %454 = fmul fast float %453, %441
  %455 = fadd fast float %454, %452
  %456 = fmul fast float %455, %441
  %457 = fmul fast float %446, %446
  %458 = fmul fast float %451, %451
  %459 = fmul fast float %456, %456
  br label %476

; <label>:460                                     ; preds = %423
  %461 = fmul fast float %152, %152
  %462 = fmul fast float %156, %156
  %463 = fmul fast float %160, %160
  %464 = fadd fast float %461, -1.000000e+00
  %465 = fadd fast float %462, -1.000000e+00
  %466 = fadd fast float %463, -1.000000e+00
  %467 = fmul fast float %312, %464
  %468 = fmul fast float %312, %465
  %469 = fmul fast float %312, %466
  %470 = fadd fast float %467, 1.000000e+00
  %471 = fadd fast float %468, 1.000000e+00
  %472 = fadd fast float %469, 1.000000e+00
  %473 = fmul fast float %470, %287
  %474 = fmul fast float %471, %288
  %475 = fmul fast float %472, %289
  br label %476

; <label>:476                                     ; preds = %460, %426, %317, %275
  %477 = phi float [ %422, %317 ], [ %298, %426 ], [ %298, %460 ], [ 0x3FA23C0BE0000000, %275 ]
  %478 = phi float [ %414, %317 ], [ %457, %426 ], [ %473, %460 ], [ 1.000000e+00, %275 ]
  %479 = phi float [ %415, %317 ], [ %458, %426 ], [ %474, %460 ], [ 1.000000e+00, %275 ]
  %480 = phi float [ %416, %317 ], [ %459, %426 ], [ %475, %460 ], [ 1.000000e+00, %275 ]
  %481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %482 = extractvalue %dx.types.CBufRet.i32 %481, 1
  %483 = and i32 %482, 1
  %484 = icmp ne i32 %483, 0
  %485 = add i32 %28, 116
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %485, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 32
  %489 = icmp ne i32 %488, 0
  %490 = and i1 %484, %489
  %491 = select i1 %490, float 1.000000e+00, float %478
  %492 = select i1 %490, float 0x3FD3333340000000, float %479
  %493 = select i1 %490, float 0x3FD3333340000000, float %480
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 32
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %570, label %498

; <label>:498                                     ; preds = %476
  %499 = add i32 %28, 44
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %499, i32 undef)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = add i32 %28, 124
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = add i32 %504, 0
  %506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %506, %dx.types.Handle %41, float %276, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  %512 = and i32 %501, 255
  %513 = uitofp i32 %512 to float
  %514 = lshr i32 %501, 8
  %515 = and i32 %514, 255
  %516 = uitofp i32 %515 to float
  %517 = lshr i32 %501, 16
  %518 = and i32 %517, 255
  %519 = uitofp i32 %518 to float
  %520 = fmul fast float %519, 0x3F70101000000000
  %521 = fmul fast float %508, %513
  %522 = fadd fast float %521, %516
  %523 = fmul fast float %522, 0x3F70101000000000
  %524 = fadd fast float %509, -5.000000e-01
  %525 = fadd fast float %511, -5.000000e-01
  %526 = fmul fast float %524, %520
  %527 = fmul fast float %525, %520
  %528 = fadd fast float %526, 5.000000e-01
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fmul fast float %528, 2.000000e+00
  %531 = fadd fast float %530, -1.000000e+00
  %532 = fmul fast float %529, 2.000000e+00
  %533 = fadd fast float %532, -1.000000e+00
  %534 = fadd fast float %531, %533
  %535 = fmul fast float %534, 5.000000e-01
  %536 = fsub fast float %531, %533
  %537 = fmul fast float %536, 5.000000e-01
  %538 = call float @dx.op.unary.f32(i32 6, float %535)  ; FAbs(value)
  %539 = fsub fast float 1.000000e+00, %538
  %540 = call float @dx.op.unary.f32(i32 6, float %537)  ; FAbs(value)
  %541 = fsub fast float %539, %540
  %542 = call float @dx.op.dot3.f32(i32 55, float %535, float %537, float %541, float %535, float %537, float %541)  ; Dot3(ax,ay,az,bx,by,bz)
  %543 = call float @dx.op.unary.f32(i32 25, float %542)  ; Rsqrt(value)
  %544 = fmul fast float %535, %543
  %545 = fmul fast float %537, %543
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 67108864
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %566, label %550

; <label>:550                                     ; preds = %498
  %551 = add i32 %28, 88
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = and i32 %553, 65535
  %555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %554)  ; LegacyF16ToF32(value)
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %186, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 65535
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = lshr i32 %553, 16
  %561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %560)  ; LegacyF16ToF32(value)
  %562 = fsub fast float %523, %561
  %563 = fmul fast float %562, %555
  %564 = fadd fast float %563, %559
  %565 = call float @dx.op.unary.f32(i32 7, float %564)  ; Saturate(value)
  br label %566

; <label>:566                                     ; preds = %550, %498
  %567 = phi float [ %565, %550 ], [ %523, %498 ]
  %568 = call float @dx.op.dot2.f32(i32 54, float %544, float %545, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %569 = call float @dx.op.dot2.f32(i32 54, float %544, float %545, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %570

; <label>:570                                     ; preds = %566, %476
  %571 = phi float [ %567, %566 ], [ 0x3FD6666660000000, %476 ]
  %572 = phi float [ %568, %566 ], [ 0.000000e+00, %476 ]
  %573 = phi float [ %569, %566 ], [ 0.000000e+00, %476 ]
  %574 = phi float [ %510, %566 ], [ 1.000000e+00, %476 ]
  %575 = add i32 %28, 64
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = lshr i32 %577, 22
  %579 = shl nuw nsw i32 %578, 5
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 64
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %618, label %585

; <label>:585                                     ; preds = %570
  %586 = add i32 %28, 128
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = add i32 %588, 0
  %590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %167, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = and i32 %592, 131072
  %594 = icmp eq i32 %593, 0
  %595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %590, %dx.types.Handle %41, float %276, float %277, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = fmul fast float %596, %140
  %600 = fmul fast float %597, %143
  %601 = fmul fast float %598, %146
  br i1 %594, label %608, label %602

; <label>:602                                     ; preds = %585
  %603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %604 = extractvalue %dx.types.CBufRet.f32 %603, 0
  %605 = fmul fast float %604, %599
  %606 = fmul fast float %604, %600
  %607 = fmul fast float %604, %601
  br label %608

; <label>:608                                     ; preds = %602, %585
  %609 = phi float [ %605, %602 ], [ %599, %585 ]
  %610 = phi float [ %606, %602 ], [ %600, %585 ]
  %611 = phi float [ %607, %602 ], [ %601, %585 ]
  %612 = fmul fast float %609, %580
  %613 = select i1 %134, float %612, float %609
  %614 = call float @dx.op.dot3.f32(i32 55, float %613, float %610, float %611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %615 = select i1 %134, float 0.000000e+00, float %609
  %616 = select i1 %134, float %614, float %610
  %617 = select i1 %134, float 0.000000e+00, float %611
  br label %618

; <label>:618                                     ; preds = %608, %570
  %619 = phi float [ %615, %608 ], [ 0.000000e+00, %570 ]
  %620 = phi float [ %616, %608 ], [ 0.000000e+00, %570 ]
  %621 = phi float [ %617, %608 ], [ 0.000000e+00, %570 ]
  %622 = add i32 %28, 48
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %622, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 255
  %626 = uitofp i32 %625 to float
  %627 = lshr i32 %624, 8
  %628 = and i32 %627, 255
  %629 = uitofp i32 %628 to float
  %630 = call float @dx.op.dot3.f32(i32 55, float %491, float %492, float %493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %631 = fmul fast float %629, %630
  %632 = fadd fast float %631, %626
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = call float @dx.op.unary.f32(i32 7, float %633)  ; Saturate(value)
  br label %635

; <label>:635                                     ; preds = %618, %133
  %636 = phi float [ 0.000000e+00, %133 ], [ %572, %618 ]
  %637 = phi float [ 0.000000e+00, %133 ], [ %573, %618 ]
  %638 = phi float [ 0.000000e+00, %133 ], [ %491, %618 ]
  %639 = phi float [ 0.000000e+00, %133 ], [ %492, %618 ]
  %640 = phi float [ 0.000000e+00, %133 ], [ %493, %618 ]
  %641 = phi float [ 0.000000e+00, %133 ], [ %619, %618 ]
  %642 = phi float [ 0.000000e+00, %133 ], [ %620, %618 ]
  %643 = phi float [ 0.000000e+00, %133 ], [ %621, %618 ]
  %644 = phi float [ 0.000000e+00, %133 ], [ %477, %618 ]
  %645 = phi float [ 0.000000e+00, %133 ], [ 1.000000e+00, %618 ]
  %646 = phi float [ 0.000000e+00, %133 ], [ %571, %618 ]
  %647 = phi float [ 0.000000e+00, %133 ], [ %574, %618 ]
  %648 = phi float [ 0.000000e+00, %133 ], [ %634, %618 ]
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %652 = extractvalue %dx.types.CBufRet.f32 %651, 0
  %653 = fmul fast float %652, %641
  %654 = fmul fast float %652, %642
  %655 = fmul fast float %652, %643
  %656 = call float @dx.op.dot2.f32(i32 54, float %636, float %637, float %636, float %637)  ; Dot2(ax,ay,bx,by)
  %657 = fmul fast float %656, 0x3FE3333340000000
  %658 = fsub fast float 1.000000e+00, %657
  %659 = call float @dx.op.dot3.f32(i32 55, float %636, float %637, float %658, float %636, float %637, float %658)  ; Dot3(ax,ay,az,bx,by,bz)
  %660 = call float @dx.op.unary.f32(i32 25, float %659)  ; Rsqrt(value)
  %661 = fmul fast float %660, %636
  %662 = fmul fast float %660, %637
  %663 = fmul fast float %658, %660
  %664 = fmul fast float %663, %33
  %665 = fmul fast float %663, %34
  %666 = fmul fast float %663, %35
  %667 = fmul fast float %661, %29
  %668 = fmul fast float %661, %30
  %669 = fmul fast float %661, %31
  %670 = fadd fast float %664, %667
  %671 = fadd fast float %665, %668
  %672 = fadd fast float %666, %669
  %673 = fmul fast float %56, %662
  %674 = fmul fast float %57, %662
  %675 = fmul fast float %58, %662
  %676 = fadd fast float %670, %673
  %677 = fadd fast float %671, %674
  %678 = fadd fast float %672, %675
  %679 = call float @dx.op.dot3.f32(i32 55, float %676, float %677, float %678, float %676, float %677, float %678)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = call float @dx.op.unary.f32(i32 25, float %679)  ; Rsqrt(value)
  %681 = fmul fast float %676, %680
  %682 = fmul fast float %677, %680
  %683 = fmul fast float %678, %680
  %684 = call float @dx.op.unary.f32(i32 83, float %92)  ; DerivCoarseX(value)
  %685 = call float @dx.op.unary.f32(i32 83, float %93)  ; DerivCoarseX(value)
  %686 = call float @dx.op.unary.f32(i32 83, float %94)  ; DerivCoarseX(value)
  %687 = call float @dx.op.unary.f32(i32 84, float %92)  ; DerivCoarseY(value)
  %688 = call float @dx.op.unary.f32(i32 84, float %93)  ; DerivCoarseY(value)
  %689 = call float @dx.op.unary.f32(i32 84, float %94)  ; DerivCoarseY(value)
  %690 = fadd fast float %684, %92
  %691 = fadd fast float %685, %93
  %692 = fadd fast float %686, %94
  %693 = fadd fast float %687, %92
  %694 = fadd fast float %688, %93
  %695 = fadd fast float %689, %94
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 0
  %698 = extractvalue %dx.types.CBufRet.f32 %696, 1
  %699 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %700 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %701 = extractvalue %dx.types.CBufRet.f32 %700, 2
  %702 = extractvalue %dx.types.CBufRet.f32 %700, 3
  %703 = fmul fast float %697, %45
  %704 = fmul fast float %703, %701
  %705 = fmul fast float %698, %46
  %706 = fmul fast float %705, %702
  %707 = fptoui float %704 to i32
  %708 = fptoui float %706 to i32
  %709 = fadd fast float %697, -1.000000e+00
  %710 = fadd fast float %698, -1.000000e+00
  %711 = fptoui float %709 to i32
  %712 = fptoui float %710 to i32
  %713 = call i32 @dx.op.binary.i32(i32 40, i32 %707, i32 %711)  ; UMin(a,b)
  %714 = call i32 @dx.op.binary.i32(i32 40, i32 %708, i32 %712)  ; UMin(a,b)
  %715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %716 = extractvalue %dx.types.CBufRet.f32 %715, 2
  %717 = extractvalue %dx.types.CBufRet.f32 %715, 3
  %718 = fmul fast float %716, %40
  %719 = fsub fast float %718, %717
  %720 = fadd fast float %699, -1.000000e+00
  %721 = call float @dx.op.binary.f32(i32 36, float %719, float %720)  ; FMin(a,b)
  %722 = fptoui float %721 to i32
  %723 = fptoui float %697 to i32
  %724 = fptoui float %698 to i32
  %725 = mul i32 %722, %724
  %726 = add i32 %725, %714
  %727 = mul i32 %726, %723
  %728 = add i32 %727, %713
  %729 = shl i32 %728, 2
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 1023
  %733 = lshr i32 %731, 10
  %734 = icmp eq i32 %732, 0
  br i1 %734, label %1160, label %735

; <label>:735                                     ; preds = %635
  %736 = and i32 %731, 1023
  br label %737

; <label>:737                                     ; preds = %863, %735
  %738 = phi float [ %864, %863 ], [ 0.000000e+00, %735 ]
  %739 = phi float [ %865, %863 ], [ %650, %735 ]
  %740 = phi float [ %866, %863 ], [ %648, %735 ]
  %741 = phi float [ %867, %863 ], [ 0.000000e+00, %735 ]
  %742 = phi float [ %868, %863 ], [ 0.000000e+00, %735 ]
  %743 = phi float [ %869, %863 ], [ %653, %735 ]
  %744 = phi float [ %870, %863 ], [ %654, %735 ]
  %745 = phi float [ %871, %863 ], [ %655, %735 ]
  %746 = phi float [ %872, %863 ], [ %681, %735 ]
  %747 = phi float [ %873, %863 ], [ %682, %735 ]
  %748 = phi float [ %874, %863 ], [ %683, %735 ]
  %749 = phi float [ %875, %863 ], [ %647, %735 ]
  %750 = phi float [ %876, %863 ], [ %646, %735 ]
  %751 = phi float [ %877, %863 ], [ 0.000000e+00, %735 ]
  %752 = phi float [ %878, %863 ], [ %644, %735 ]
  %753 = phi float [ %879, %863 ], [ %638, %735 ]
  %754 = phi float [ %880, %863 ], [ %639, %735 ]
  %755 = phi float [ %881, %863 ], [ %640, %735 ]
  %756 = phi i32 [ %813, %863 ], [ 0, %735 ]
  %757 = add nuw nsw i32 %756, %733
  %758 = shl i32 %757, 2
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = shl i32 %760, 8
  %762 = or i32 %761, 48
  %763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  %766 = extractvalue %dx.types.ResRet.f32 %763, 2
  %767 = extractvalue %dx.types.ResRet.f32 %763, 3
  %768 = or i32 %761, 64
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = extractvalue %dx.types.ResRet.i32 %769, 1
  %772 = or i32 %761, 80
  %773 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.f32 %773, 2
  %775 = extractvalue %dx.types.ResRet.f32 %773, 3
  %776 = or i32 %761, 96
  %777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.f32 %777, 0
  %779 = extractvalue %dx.types.ResRet.f32 %777, 1
  %780 = extractvalue %dx.types.ResRet.f32 %777, 2
  %781 = extractvalue %dx.types.ResRet.f32 %777, 3
  %782 = or i32 %761, 112
  %783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 2
  %785 = or i32 %761, 128
  %786 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.f32 %786, 0
  %788 = extractvalue %dx.types.ResRet.f32 %786, 1
  %789 = extractvalue %dx.types.ResRet.f32 %786, 2
  %790 = extractvalue %dx.types.ResRet.f32 %786, 3
  %791 = or i32 %761, 144
  %792 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.f32 %792, 0
  %794 = extractvalue %dx.types.ResRet.f32 %792, 1
  %795 = extractvalue %dx.types.ResRet.f32 %792, 2
  %796 = extractvalue %dx.types.ResRet.f32 %792, 3
  %797 = or i32 %761, 160
  %798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %797, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.f32 %798, 0
  %800 = extractvalue %dx.types.ResRet.f32 %798, 1
  %801 = extractvalue %dx.types.ResRet.f32 %798, 2
  %802 = extractvalue %dx.types.ResRet.f32 %798, 3
  %803 = or i32 %761, 192
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = or i32 %761, 208
  %807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = or i32 %761, 248
  %810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = add nuw nsw i32 %756, 1
  %814 = bitcast float %767 to i32
  %815 = and i32 %814, 2560
  %816 = icmp eq i32 %815, 0
  %817 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.f32 %817, 0
  %819 = extractvalue %dx.types.ResRet.f32 %817, 1
  %820 = extractvalue %dx.types.ResRet.f32 %817, 2
  %821 = extractvalue %dx.types.ResRet.f32 %817, 3
  %822 = call float @dx.op.dot4.f32(i32 56, float %818, float %819, float %820, float %821, float %92, float %93, float %94, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %823 = or i32 %761, 16
  %824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %823, i32 undef)  ; BufferLoad(srv,index,wot)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = extractvalue %dx.types.ResRet.f32 %824, 3
  %829 = call float @dx.op.dot4.f32(i32 56, float %825, float %826, float %827, float %828, float %92, float %93, float %94, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %830 = or i32 %761, 32
  %831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = extractvalue %dx.types.ResRet.f32 %831, 3
  %836 = call float @dx.op.dot4.f32(i32 56, float %832, float %833, float %834, float %835, float %92, float %93, float %94, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %837 = call float @dx.op.unary.f32(i32 27, float %822)  ; Round_ni(value)
  %838 = call float @dx.op.unary.f32(i32 6, float %837)  ; FAbs(value)
  %839 = call float @dx.op.unary.f32(i32 27, float %829)  ; Round_ni(value)
  %840 = call float @dx.op.unary.f32(i32 6, float %839)  ; FAbs(value)
  %841 = call float @dx.op.unary.f32(i32 6, float %836)  ; FAbs(value)
  %842 = call float @dx.op.unary.f32(i32 27, float %841)  ; Round_ni(value)
  %843 = fadd fast float %840, %838
  %844 = fadd fast float %843, %842
  %845 = fcmp fast oeq float %844, 0.000000e+00
  %846 = call float @dx.op.dot4.f32(i32 56, float %818, float %819, float %820, float %821, float %690, float %691, float %692, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %847 = call float @dx.op.dot4.f32(i32 56, float %825, float %826, float %827, float %828, float %690, float %691, float %692, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %848 = call float @dx.op.dot4.f32(i32 56, float %818, float %819, float %820, float %821, float %693, float %694, float %695, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %849 = call float @dx.op.dot4.f32(i32 56, float %825, float %826, float %827, float %828, float %693, float %694, float %695, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %850 = fsub fast float %846, %822
  %851 = fsub fast float %848, %822
  %852 = fsub fast float %847, %829
  %853 = fsub fast float %849, %829
  %854 = call float @dx.op.dot3.f32(i32 55, float %764, float %765, float %766, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %857 = fadd fast float %856, %854
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  %859 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %860 = fcmp fast ogt float %858, %859
  %861 = and i1 %845, %860
  %862 = and i1 %816, %861
  br i1 %862, label %883, label %863

; <label>:863                                     ; preds = %1146, %964, %883, %737
  %864 = phi float [ %738, %883 ], [ %967, %964 ], [ %967, %1146 ], [ %738, %737 ]
  %865 = phi float [ %739, %883 ], [ %739, %964 ], [ %1121, %1146 ], [ %739, %737 ]
  %866 = phi float [ %740, %883 ], [ %740, %964 ], [ %1119, %1146 ], [ %740, %737 ]
  %867 = phi float [ %741, %883 ], [ %741, %964 ], [ %1091, %1146 ], [ %741, %737 ]
  %868 = phi float [ %742, %883 ], [ %742, %964 ], [ %1089, %1146 ], [ %742, %737 ]
  %869 = phi float [ %743, %883 ], [ %743, %964 ], [ %1156, %1146 ], [ %743, %737 ]
  %870 = phi float [ %744, %883 ], [ %744, %964 ], [ %1157, %1146 ], [ %744, %737 ]
  %871 = phi float [ %745, %883 ], [ %745, %964 ], [ %1158, %1146 ], [ %745, %737 ]
  %872 = phi float [ %746, %883 ], [ %746, %964 ], [ %1070, %1146 ], [ %746, %737 ]
  %873 = phi float [ %747, %883 ], [ %747, %964 ], [ %1071, %1146 ], [ %747, %737 ]
  %874 = phi float [ %748, %883 ], [ %748, %964 ], [ %1072, %1146 ], [ %748, %737 ]
  %875 = phi float [ %749, %883 ], [ %749, %964 ], [ %1099, %1146 ], [ %749, %737 ]
  %876 = phi float [ %750, %883 ], [ %750, %964 ], [ %1096, %1146 ], [ %750, %737 ]
  %877 = phi float [ %751, %883 ], [ %751, %964 ], [ %1093, %1146 ], [ %751, %737 ]
  %878 = phi float [ %752, %883 ], [ %752, %964 ], [ %1087, %1146 ], [ %752, %737 ]
  %879 = phi float [ %753, %883 ], [ %753, %964 ], [ %1082, %1146 ], [ %753, %737 ]
  %880 = phi float [ %754, %883 ], [ %754, %964 ], [ %1083, %1146 ], [ %754, %737 ]
  %881 = phi float [ %755, %883 ], [ %755, %964 ], [ %1084, %1146 ], [ %755, %737 ]
  %882 = icmp eq i32 %813, %736
  br i1 %882, label %1159, label %737

; <label>:883                                     ; preds = %737
  %884 = extractvalue %dx.types.ResRet.f32 %783, 3
  %885 = extractvalue %dx.types.ResRet.f32 %783, 1
  %886 = extractvalue %dx.types.ResRet.f32 %783, 0
  %887 = extractvalue %dx.types.ResRet.f32 %773, 1
  %888 = extractvalue %dx.types.ResRet.f32 %773, 0
  %889 = extractvalue %dx.types.ResRet.i32 %769, 3
  %890 = extractvalue %dx.types.ResRet.i32 %769, 2
  %891 = add i32 %889, 0
  %892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %891, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %893 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %894 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %892, %dx.types.Handle %893, float %822, float %829, float undef, float undef, i32 0, i32 0, i32 undef, float %850, float %852, float undef, float %851, float %853, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %895 = extractvalue %dx.types.ResRet.f32 %894, 0
  %896 = fmul fast float %895, %888
  %897 = fadd fast float %896, %887
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %899 = fmul fast float %822, %778
  %900 = call float @dx.op.tertiary.f32(i32 46, float %779, float %829, float %899)  ; FMad(a,b,c)
  %901 = fadd fast float %900, %886
  %902 = fmul fast float %822, %780
  %903 = call float @dx.op.tertiary.f32(i32 46, float %781, float %829, float %902)  ; FMad(a,b,c)
  %904 = fadd fast float %903, %885
  %905 = fmul fast float %850, %778
  %906 = call float @dx.op.tertiary.f32(i32 46, float %779, float %852, float %905)  ; FMad(a,b,c)
  %907 = fmul fast float %850, %780
  %908 = call float @dx.op.tertiary.f32(i32 46, float %781, float %852, float %907)  ; FMad(a,b,c)
  %909 = fmul fast float %851, %778
  %910 = call float @dx.op.tertiary.f32(i32 46, float %779, float %853, float %909)  ; FMad(a,b,c)
  %911 = fmul fast float %851, %780
  %912 = call float @dx.op.tertiary.f32(i32 46, float %781, float %853, float %911)  ; FMad(a,b,c)
  %913 = add i32 %890, 0
  %914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %913, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %915 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %914, %dx.types.Handle %893, float %901, float %904, float undef, float undef, i32 0, i32 0, i32 undef, float %906, float %908, float undef, float %910, float %912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %916 = extractvalue %dx.types.ResRet.f32 %915, 0
  %917 = and i32 %814, 1024
  %918 = icmp ne i32 %917, 0
  %919 = fcmp fast ogt float %916, 0x3FE0101020000000
  %920 = uitofp i1 %919 to float
  %921 = select i1 %918, float %920, float %916
  %922 = and i32 %814, 8192
  %923 = icmp ne i32 %922, 0
  %924 = select i1 %923, float %884, float 1.000000e+00
  %925 = fmul fast float %822, 2.000000e+00
  %926 = fadd fast float %925, -1.000000e+00
  %927 = call float @dx.op.unary.f32(i32 6, float %926)  ; FAbs(value)
  %928 = fmul fast float %927, %811
  %929 = fsub fast float %928, %811
  %930 = call float @dx.op.unary.f32(i32 7, float %929)  ; Saturate(value)
  %931 = fmul fast float %829, 2.000000e+00
  %932 = fadd fast float %931, -1.000000e+00
  %933 = call float @dx.op.unary.f32(i32 6, float %932)  ; FAbs(value)
  %934 = fmul fast float %933, %812
  %935 = fsub fast float %934, %812
  %936 = call float @dx.op.unary.f32(i32 7, float %935)  ; Saturate(value)
  %937 = fmul fast float %841, %774
  %938 = fsub fast float %937, %774
  %939 = call float @dx.op.unary.f32(i32 7, float %938)  ; Saturate(value)
  %940 = fmul fast float %898, %924
  %941 = fmul fast float %940, %895
  %942 = fmul fast float %941, %930
  %943 = fmul fast float %942, %921
  %944 = fmul fast float %943, %936
  %945 = fmul fast float %944, %939
  %946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %947 = extractvalue %dx.types.CBufRet.f32 %946, 1
  %948 = extractvalue %dx.types.CBufRet.f32 %946, 0
  %949 = fsub fast float %858, %948
  %950 = fmul fast float %949, %947
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = fmul fast float %945, %775
  %953 = fadd fast float %945, %775
  %954 = fmul fast float %953, %784
  %955 = fsub fast float %954, %784
  %956 = call float @dx.op.unary.f32(i32 7, float %955)  ; Saturate(value)
  %957 = and i32 %814, 128
  %958 = icmp ne i32 %957, 0
  %959 = select i1 %958, float %956, float %952
  %960 = fmul fast float %959, %951
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %963 = fcmp fast ugt float %960, %962
  br i1 %963, label %964, label %863

; <label>:964                                     ; preds = %883
  %965 = select i1 %923, float %960, float 0.000000e+00
  %966 = fadd fast float %965, %738
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  br i1 %923, label %863, label %968

; <label>:968                                     ; preds = %964
  %969 = and i32 %814, 4
  %970 = and i32 %814, 8
  %971 = add i32 %770, 0
  %972 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %971, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %974 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %972, %dx.types.Handle %973, float %901, float %904, float undef, float undef, i32 0, i32 0, i32 undef, float %906, float %908, float undef, float %910, float %912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = extractvalue %dx.types.ResRet.f32 %974, 1
  %977 = extractvalue %dx.types.ResRet.f32 %974, 2
  %978 = extractvalue %dx.types.ResRet.f32 %974, 3
  %979 = bitcast float %796 to i32
  %980 = and i32 %979, 255
  %981 = uitofp i32 %980 to float
  %982 = lshr i32 %979, 8
  %983 = and i32 %982, 255
  %984 = uitofp i32 %983 to float
  %985 = fmul fast float %978, %981
  %986 = fadd fast float %985, %984
  %987 = fmul fast float %986, 0x3F70101000000000
  %988 = add i32 %771, 0
  %989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %988, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %990 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %989, %dx.types.Handle %973, float %901, float %904, float undef, float undef, i32 0, i32 0, i32 undef, float %906, float %908, float undef, float %910, float %912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %991 = extractvalue %dx.types.ResRet.f32 %990, 0
  %992 = extractvalue %dx.types.ResRet.f32 %990, 1
  %993 = extractvalue %dx.types.ResRet.f32 %990, 2
  %994 = extractvalue %dx.types.ResRet.f32 %990, 3
  %995 = bitcast float %790 to i32
  %996 = and i32 %995, 255
  %997 = uitofp i32 %996 to float
  %998 = lshr i32 %995, 8
  %999 = and i32 %998, 255
  %1000 = uitofp i32 %999 to float
  %1001 = lshr i32 %995, 16
  %1002 = and i32 %1001, 255
  %1003 = uitofp i32 %1002 to float
  %1004 = fmul fast float %1003, 0x3F70101000000000
  %1005 = fmul fast float %991, %997
  %1006 = fadd fast float %1005, %1000
  %1007 = fmul fast float %1006, 0x3F70101000000000
  %1008 = fadd fast float %992, -5.000000e-01
  %1009 = fadd fast float %994, -5.000000e-01
  %1010 = fmul fast float %1008, %1004
  %1011 = fmul fast float %1009, %1004
  %1012 = fadd fast float %1010, 5.000000e-01
  %1013 = fadd fast float %1011, 5.000000e-01
  %1014 = fmul fast float %975, %799
  %1015 = fmul fast float %976, %800
  %1016 = fmul fast float %977, %801
  %1017 = fmul fast float %1012, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fmul fast float %1013, 2.000000e+00
  %1020 = fadd fast float %1019, -1.000000e+00
  %1021 = fadd fast float %1018, %1020
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = fsub fast float %1018, %1020
  %1024 = fmul fast float %1023, 5.000000e-01
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float 1.000000e+00, %1025
  %1027 = call float @dx.op.unary.f32(i32 6, float %1024)  ; FAbs(value)
  %1028 = fsub fast float %1026, %1027
  %1029 = call float @dx.op.dot3.f32(i32 55, float %1022, float %1024, float %1028, float %1022, float %1024, float %1028)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = call float @dx.op.unary.f32(i32 25, float %1029)  ; Rsqrt(value)
  %1031 = fmul fast float %1022, %1030
  %1032 = fmul fast float %1024, %1030
  %1033 = fmul fast float %1030, %1028
  %1034 = fmul fast float %1033, %764
  %1035 = fmul fast float %1033, %765
  %1036 = fmul fast float %1033, %766
  %1037 = fmul fast float %1031, %787
  %1038 = fmul fast float %1031, %788
  %1039 = fmul fast float %1031, %789
  %1040 = fadd fast float %1037, %1034
  %1041 = fadd fast float %1038, %1035
  %1042 = fadd fast float %1039, %1036
  %1043 = fmul fast float %1032, %793
  %1044 = fmul fast float %1032, %794
  %1045 = fmul fast float %1032, %795
  %1046 = fadd fast float %1040, %1043
  %1047 = fadd fast float %1041, %1044
  %1048 = fadd fast float %1042, %1045
  %1049 = call float @dx.op.dot3.f32(i32 55, float %1046, float %1047, float %1048, float %1046, float %1047, float %1048)  ; Dot3(ax,ay,az,bx,by,bz)
  %1050 = call float @dx.op.unary.f32(i32 25, float %1049)  ; Rsqrt(value)
  %1051 = fmul fast float %1046, %1050
  %1052 = fmul fast float %1047, %1050
  %1053 = fmul fast float %1048, %1050
  %1054 = icmp ne i32 %970, 0
  %1055 = select i1 %1054, float 1.000000e+00, float 0.000000e+00
  %1056 = fmul fast float %960, %1055
  %1057 = and i32 %814, 1
  %1058 = icmp eq i32 %1057, 0
  br i1 %1058, label %1059, label %1063

; <label>:1059                                    ; preds = %968
  %1060 = fsub fast float %1051, %746
  %1061 = fsub fast float %1052, %747
  %1062 = fsub fast float %1053, %748
  br label %1063

; <label>:1063                                    ; preds = %1059, %968
  %1064 = phi float [ %1060, %1059 ], [ %1051, %968 ]
  %1065 = phi float [ %1061, %1059 ], [ %1052, %968 ]
  %1066 = phi float [ %1062, %1059 ], [ %1053, %968 ]
  %1067 = fmul float %1066, %1056
  %1068 = fmul float %1065, %1056
  %1069 = fmul float %1064, %1056
  %1070 = fadd fast float %1069, %746
  %1071 = fadd fast float %1068, %747
  %1072 = fadd fast float %1067, %748
  %1073 = icmp ne i32 %969, 0
  %1074 = select i1 %1073, float 1.000000e+00, float 0.000000e+00
  %1075 = fmul fast float %960, %1074
  %1076 = fsub fast float %1014, %753
  %1077 = fsub fast float %1015, %754
  %1078 = fsub fast float %1016, %755
  %1079 = fmul fast float %1076, %1075
  %1080 = fmul fast float %1077, %1075
  %1081 = fmul fast float %1078, %1075
  %1082 = fadd fast float %1079, %753
  %1083 = fadd fast float %1080, %754
  %1084 = fadd fast float %1081, %755
  %1085 = fsub fast float %987, %752
  %1086 = fmul fast float %1085, %1075
  %1087 = fadd fast float %1086, %752
  %1088 = fmul fast float %1075, %742
  %1089 = fsub fast float %742, %1088
  %1090 = fmul fast float %1075, %741
  %1091 = fsub fast float %741, %1090
  %1092 = fadd fast float %960, %751
  %1093 = call float @dx.op.unary.f32(i32 7, float %1092)  ; Saturate(value)
  %1094 = fsub fast float %1007, %750
  %1095 = fmul fast float %1094, %1056
  %1096 = fadd fast float %1095, %750
  %1097 = fsub fast float %993, %749
  %1098 = fmul fast float %1097, %1056
  %1099 = fadd fast float %1098, %749
  %1100 = call float @dx.op.dot3.f32(i32 55, float %1014, float %1015, float %1016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1102 = extractvalue %dx.types.CBufRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.CBufRet.f32 %1101, 1
  %1104 = fmul fast float %1103, %1100
  %1105 = fadd fast float %1104, %1102
  %1106 = call float @dx.op.unary.f32(i32 7, float %1105)  ; Saturate(value)
  %1107 = bitcast float %802 to i32
  %1108 = and i32 %1107, 65535
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = lshr i32 %1107, 16
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = fcmp fast oge float %1109, 0.000000e+00
  %1113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1114 = extractvalue %dx.types.CBufRet.f32 %1113, 0
  %1115 = select i1 %1112, float %1109, float %1114
  %1116 = fadd fast float %1115, %1111
  %1117 = fsub fast float %1106, %740
  %1118 = fmul fast float %1117, %960
  %1119 = fadd fast float %1118, %740
  %1120 = fmul fast float %1116, %960
  %1121 = call float @dx.op.binary.f32(i32 35, float %739, float %1120)  ; FMax(a,b)
  %1122 = and i32 %814, 16
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1146, label %1124

; <label>:1124                                    ; preds = %1063
  %1125 = bitcast float %808 to i32
  %1126 = add i32 %805, 0
  %1127 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1126, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1128 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1127, %dx.types.Handle %973, float %901, float %904, float undef, float undef, i32 0, i32 0, i32 undef, float %906, float %908, float undef, float %910, float %912, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1129 = extractvalue %dx.types.ResRet.f32 %1128, 0
  %1130 = extractvalue %dx.types.ResRet.f32 %1128, 1
  %1131 = extractvalue %dx.types.ResRet.f32 %1128, 2
  %1132 = and i32 %1125, 65535
  %1133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1132)  ; LegacyF16ToF32(value)
  %1134 = fmul fast float %1129, %799
  %1135 = fmul fast float %1130, %800
  %1136 = fmul fast float %1131, %801
  %1137 = and i32 %814, 16384
  %1138 = icmp ne i32 %1137, 0
  %1139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1140 = extractvalue %dx.types.CBufRet.f32 %1139, 0
  %1141 = select i1 %1138, float %1140, float 1.000000e+00
  %1142 = fmul fast float %1141, %1133
  %1143 = fmul fast float %1134, %1142
  %1144 = fmul fast float %1135, %1142
  %1145 = fmul fast float %1136, %1142
  br label %1146

; <label>:1146                                    ; preds = %1124, %1063
  %1147 = phi float [ %1143, %1124 ], [ 0.000000e+00, %1063 ]
  %1148 = phi float [ %1144, %1124 ], [ 0.000000e+00, %1063 ]
  %1149 = phi float [ %1145, %1124 ], [ 0.000000e+00, %1063 ]
  %1150 = fsub fast float %1147, %743
  %1151 = fsub fast float %1148, %744
  %1152 = fsub fast float %1149, %745
  %1153 = fmul fast float %1150, %960
  %1154 = fmul fast float %1151, %960
  %1155 = fmul fast float %1152, %960
  %1156 = fadd fast float %1153, %743
  %1157 = fadd fast float %1154, %744
  %1158 = fadd fast float %1155, %745
  br label %863

; <label>:1159                                    ; preds = %863
  br label %1160

; <label>:1160                                    ; preds = %1159, %635
  %1161 = phi float [ 0.000000e+00, %635 ], [ %864, %1159 ]
  %1162 = phi float [ %650, %635 ], [ %865, %1159 ]
  %1163 = phi float [ %648, %635 ], [ %866, %1159 ]
  %1164 = phi float [ 0.000000e+00, %635 ], [ %867, %1159 ]
  %1165 = phi float [ 0.000000e+00, %635 ], [ %868, %1159 ]
  %1166 = phi float [ %653, %635 ], [ %869, %1159 ]
  %1167 = phi float [ %654, %635 ], [ %870, %1159 ]
  %1168 = phi float [ %655, %635 ], [ %871, %1159 ]
  %1169 = phi float [ %681, %635 ], [ %872, %1159 ]
  %1170 = phi float [ %682, %635 ], [ %873, %1159 ]
  %1171 = phi float [ %683, %635 ], [ %874, %1159 ]
  %1172 = phi float [ %647, %635 ], [ %875, %1159 ]
  %1173 = phi float [ %646, %635 ], [ %876, %1159 ]
  %1174 = phi float [ 0.000000e+00, %635 ], [ %877, %1159 ]
  %1175 = phi float [ %644, %635 ], [ %878, %1159 ]
  %1176 = phi float [ %638, %635 ], [ %879, %1159 ]
  %1177 = phi float [ %639, %635 ], [ %880, %1159 ]
  %1178 = phi float [ %640, %635 ], [ %881, %1159 ]
  %1179 = call float @dx.op.dot3.f32(i32 55, float %1169, float %1170, float %1171, float %1169, float %1170, float %1171)  ; Dot3(ax,ay,az,bx,by,bz)
  %1180 = call float @dx.op.unary.f32(i32 25, float %1179)  ; Rsqrt(value)
  %1181 = fmul fast float %1180, %1169
  %1182 = fmul fast float %1180, %1170
  %1183 = fmul fast float %1180, %1171
  %1184 = fadd fast float %1174, %645
  %1185 = call float @dx.op.unary.f32(i32 7, float %1184)  ; Saturate(value)
  %1186 = call float @dx.op.dot3.f32(i32 55, float %1181, float %1182, float %1183, float %1181, float %1182, float %1183)  ; Dot3(ax,ay,az,bx,by,bz)
  %1187 = call float @dx.op.unary.f32(i32 25, float %1186)  ; Rsqrt(value)
  %1188 = fmul fast float %1187, %1181
  %1189 = fmul fast float %1187, %1182
  %1190 = fmul fast float %1187, %1183
  %1191 = fadd fast float %1175, 0xBFB99999A0000000
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  %1193 = fmul fast float %1192, 0x3FF1C71C80000000
  %1194 = call float @dx.op.binary.f32(i32 36, float %1175, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1195 = fsub fast float 1.000000e+00, %1193
  %1196 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  %1197 = fmul fast float %1196, %1176
  %1198 = fmul fast float %1196, %1177
  %1199 = fmul fast float %1196, %1178
  %1200 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1201 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1202 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1203 = fmul fast float %1193, %1176
  %1204 = fmul fast float %1193, %1177
  %1205 = fmul fast float %1193, %1178
  %1206 = fadd fast float %1203, %1194
  %1207 = fadd fast float %1204, %1194
  %1208 = fadd fast float %1205, %1194
  %1209 = call float @dx.op.unary.f32(i32 7, float %1206)  ; Saturate(value)
  %1210 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  %1211 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1212 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.i32 %1213, 3
  %1215 = and i32 %1214, 8
  %1216 = icmp ne i32 %1215, 0
  %1217 = call float @dx.op.binary.f32(i32 35, float %1200, float %1176)  ; FMax(a,b)
  %1218 = call float @dx.op.binary.f32(i32 35, float %1201, float %1176)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 35, float %1202, float %1176)  ; FMax(a,b)
  %1220 = call float @dx.op.dot3.f32(i32 55, float %1200, float %1201, float %1202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = select i1 %134, float %1176, float %1200
  %1222 = select i1 %134, float %1220, float %1201
  %1223 = select i1 %134, float 1.000000e+00, float %1202
  %1224 = select i1 %1216, float %1217, float %1221
  %1225 = select i1 %1216, float %1218, float %1222
  %1226 = select i1 %1216, float %1219, float %1223
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = fadd fast float %1228, %92
  %1232 = fadd fast float %1229, %93
  %1233 = fadd fast float %1230, %94
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1235 = extractvalue %dx.types.CBufRet.f32 %1234, 0
  %1236 = extractvalue %dx.types.CBufRet.f32 %1234, 1
  %1237 = fsub fast float %1231, %1235
  %1238 = fsub fast float %1232, %1236
  %1239 = fmul fast float %1237, %1237
  %1240 = fmul fast float %1238, %1238
  %1241 = fadd fast float %1239, %1240
  %1242 = call float @dx.op.unary.f32(i32 24, float %1241)  ; Sqrt(value)
  %1243 = extractvalue %dx.types.CBufRet.f32 %1234, 2
  %1244 = fcmp fast olt float %1242, %1243
  br i1 %1244, label %1245, label %1312

; <label>:1245                                    ; preds = %1160
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 0
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1251 = extractvalue %dx.types.CBufRet.f32 %1250, 0
  %1252 = extractvalue %dx.types.CBufRet.f32 %1246, 1
  %1253 = extractvalue %dx.types.CBufRet.f32 %1248, 1
  %1254 = extractvalue %dx.types.CBufRet.f32 %1250, 1
  %1255 = extractvalue %dx.types.CBufRet.f32 %1246, 3
  %1256 = extractvalue %dx.types.CBufRet.f32 %1248, 3
  %1257 = extractvalue %dx.types.CBufRet.f32 %1250, 3
  %1258 = fadd fast float %1255, %1231
  %1259 = fadd fast float %1256, %1232
  %1260 = fadd fast float %1257, %1233
  %1261 = fmul fast float %1258, %1247
  %1262 = call float @dx.op.tertiary.f32(i32 46, float %1259, float %1249, float %1261)  ; FMad(a,b,c)
  %1263 = call float @dx.op.tertiary.f32(i32 46, float %1260, float %1251, float %1262)  ; FMad(a,b,c)
  %1264 = fmul fast float %1258, %1252
  %1265 = call float @dx.op.tertiary.f32(i32 46, float %1259, float %1253, float %1264)  ; FMad(a,b,c)
  %1266 = call float @dx.op.tertiary.f32(i32 46, float %1260, float %1254, float %1265)  ; FMad(a,b,c)
  %1267 = fsub fast float %1263, %1255
  %1268 = fsub fast float %1266, %1256
  %1269 = fsub fast float %1267, %1235
  %1270 = fadd fast float %1269, %1243
  %1271 = fsub fast float %1268, %1236
  %1272 = fadd fast float %1271, %1243
  %1273 = extractvalue %dx.types.CBufRet.f32 %1234, 3
  %1274 = fmul fast float %1270, %1273
  %1275 = fmul fast float %1272, %1273
  %1276 = call float @dx.op.unary.f32(i32 7, float %1274)  ; Saturate(value)
  %1277 = call float @dx.op.unary.f32(i32 7, float %1275)  ; Saturate(value)
  %1278 = fsub fast float 1.000000e+00, %1276
  %1279 = fsub fast float 1.000000e+00, %1277
  %1280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = fcmp fast ugt float %1281, 0.000000e+00
  br i1 %1282, label %1283, label %1586

; <label>:1283                                    ; preds = %1245
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.f32 %1284, 2
  %1286 = fmul fast float %1285, %1281
  %1287 = extractvalue %dx.types.CBufRet.f32 %1284, 3
  %1288 = fadd fast float %1287, %1286
  %1289 = extractvalue %dx.types.CBufRet.f32 %1250, 2
  %1290 = fadd fast float %1288, %1257
  %1291 = fmul fast float %1263, %1251
  %1292 = call float @dx.op.tertiary.f32(i32 46, float %1266, float %1254, float %1291)  ; FMad(a,b,c)
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1290, float %1289, float %1292)  ; FMad(a,b,c)
  %1294 = fsub fast float %1293, %1257
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1297 = fsub fast float %1294, %1296
  %1298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1303 = extractvalue %dx.types.ResRet.f32 %1302, 0
  %1304 = extractvalue %dx.types.ResRet.f32 %1302, 1
  %1305 = extractvalue %dx.types.ResRet.f32 %1302, 2
  %1306 = fadd fast float %1303, %1299
  %1307 = fmul fast float %1306, 0x3F847AE140000000
  %1308 = fadd fast float %1304, %1300
  %1309 = fmul fast float %1308, 0x3F847AE140000000
  %1310 = fadd fast float %1305, %1301
  %1311 = fmul fast float %1310, 0x3F847AE140000000
  br label %1586

; <label>:1312                                    ; preds = %1160
  %1313 = and i32 %110, 1
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1586, label %1315

; <label>:1315                                    ; preds = %1312
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1318, 0
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1321 = extractvalue %dx.types.CBufRet.f32 %1320, 0
  %1322 = extractvalue %dx.types.CBufRet.f32 %1316, 1
  %1323 = extractvalue %dx.types.CBufRet.f32 %1318, 1
  %1324 = extractvalue %dx.types.CBufRet.f32 %1320, 1
  %1325 = extractvalue %dx.types.CBufRet.f32 %1316, 3
  %1326 = extractvalue %dx.types.CBufRet.f32 %1318, 3
  %1327 = extractvalue %dx.types.CBufRet.f32 %1320, 3
  %1328 = fadd fast float %1325, %1231
  %1329 = fadd fast float %1326, %1232
  %1330 = fadd fast float %1327, %1233
  %1331 = fmul fast float %1328, %1317
  %1332 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1319, float %1331)  ; FMad(a,b,c)
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1321, float %1332)  ; FMad(a,b,c)
  %1334 = fmul fast float %1328, %1322
  %1335 = call float @dx.op.tertiary.f32(i32 46, float %1329, float %1323, float %1334)  ; FMad(a,b,c)
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1324, float %1335)  ; FMad(a,b,c)
  %1337 = fsub fast float %1333, %1325
  %1338 = fsub fast float %1336, %1326
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1343 = extractvalue %dx.types.CBufRet.f32 %1339, 3
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.i32 %1346, 0
  %1348 = extractvalue %dx.types.CBufRet.i32 %1346, 1
  %1349 = udiv i32 %1348, %1347
  %1350 = fsub fast float %1337, %1340
  %1351 = fsub fast float %1338, %1341
  %1352 = call float @dx.op.binary.f32(i32 35, float %1350, float 0.000000e+00)  ; FMax(a,b)
  %1353 = call float @dx.op.binary.f32(i32 35, float %1351, float 0.000000e+00)  ; FMax(a,b)
  %1354 = call float @dx.op.binary.f32(i32 36, float %1352, float %1342)  ; FMin(a,b)
  %1355 = call float @dx.op.binary.f32(i32 36, float %1353, float %1343)  ; FMin(a,b)
  %1356 = add i32 %1347, -1
  %1357 = add i32 %1349, -1
  %1358 = fmul fast float %1354, %1345
  %1359 = fmul fast float %1355, %1345
  %1360 = fptoui float %1358 to i32
  %1361 = fptoui float %1359 to i32
  %1362 = call i32 @dx.op.binary.i32(i32 40, i32 %1360, i32 %1356)  ; UMin(a,b)
  %1363 = call i32 @dx.op.binary.i32(i32 40, i32 %1361, i32 %1357)  ; UMin(a,b)
  %1364 = mul i32 %1363, %1347
  %1365 = add i32 %1364, %1362
  %1366 = shl i32 %1365, 2
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = icmp eq i32 %1368, -1
  br i1 %1369, label %1586, label %1370

; <label>:1370                                    ; preds = %1315
  %1371 = mul i32 %1368, 148
  %1372 = add i32 %1371, 4
  %1373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = add i32 %1371, 8
  %1376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = add i32 %1371, 36
  %1379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = add i32 %1371, 60
  %1382 = add i32 %1371, 92
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %1371, 116
  %1386 = fsub fast float %1337, %1374
  %1387 = fsub fast float %1338, %1377
  %1388 = fmul fast float %1345, %1386
  %1389 = fmul fast float %1345, %1387
  %1390 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1391 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1392 = fsub fast float 1.000000e+00, %1391
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1394 = extractvalue %dx.types.CBufRet.f32 %1393, 2
  %1395 = call float @dx.op.unary.f32(i32 83, float %1390)  ; DerivCoarseX(value)
  %1396 = call float @dx.op.unary.f32(i32 83, float %1392)  ; DerivCoarseX(value)
  %1397 = call float @dx.op.unary.f32(i32 84, float %1390)  ; DerivCoarseY(value)
  %1398 = call float @dx.op.unary.f32(i32 84, float %1392)  ; DerivCoarseY(value)
  %1399 = fmul fast float %1395, %1394
  %1400 = fmul fast float %1396, %1394
  %1401 = fmul fast float %1397, %1394
  %1402 = fmul fast float %1398, %1394
  %1403 = call float @dx.op.dot2.f32(i32 54, float %1401, float %1402, float %1401, float %1402)  ; Dot2(ax,ay,bx,by)
  %1404 = call float @dx.op.dot2.f32(i32 54, float %1399, float %1400, float %1399, float %1400)  ; Dot2(ax,ay,bx,by)
  %1405 = call float @dx.op.binary.f32(i32 35, float %1404, float %1403)  ; FMax(a,b)
  %1406 = call float @dx.op.unary.f32(i32 23, float %1405)  ; Log(value)
  %1407 = fmul fast float %1406, 5.000000e-01
  %1408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1408, 1
  %1410 = fadd fast float %1409, %1407
  %1411 = call float @dx.op.binary.f32(i32 35, float %1410, float 0.000000e+00)  ; FMax(a,b)
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 3
  %1414 = fadd fast float %1413, %1411
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 3
  %1417 = fadd fast float %1414, %1416
  %1418 = add i32 %1384, 0
  %1419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1418, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1420 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1419, i32 0)  ; GetDimensions(handle,mipLevel)
  %1421 = extractvalue %dx.types.Dimensions %1420, 0
  %1422 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1421)  ; FirstbitLo(value)
  %1423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.i32 %1423, 1
  %1425 = sub nsw i32 %1424, %1422
  %1426 = sitofp i32 %1425 to float
  %1427 = fsub fast float %1417, %1426
  %1428 = call float @dx.op.binary.f32(i32 35, float %1427, float 0.000000e+00)  ; FMax(a,b)
  %1429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1419, %dx.types.Handle %23, float %1390, float %1392, float %1380, float undef, i32 0, i32 0, i32 undef, float %1428)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = fcmp ule float %1430, 0x3FE0101020000000
  %1432 = extractvalue %dx.types.CBufRet.i32 %1423, 0
  %1433 = and i32 %1432, 128
  %1434 = icmp ne i32 %1433, 0
  %1435 = and i1 %1431, %1434
  br i1 %1435, label %1586, label %1436

; <label>:1436                                    ; preds = %1370
  %1437 = add i32 %1371, 20
  %1438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = add i32 %1371, 24
  %1441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = add i32 %1371, 40
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = add i32 %1371, 96
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1450 = extractvalue %dx.types.CBufRet.f32 %1449, 2
  %1451 = fmul fast float %1450, %1390
  %1452 = fmul fast float %1450, %1392
  %1453 = extractvalue %dx.types.CBufRet.f32 %1449, 3
  %1454 = fadd fast float %1451, %1453
  %1455 = fadd fast float %1452, %1453
  %1456 = add i32 %1448, 0
  %1457 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1456, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1458 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1457, i32 0)  ; GetDimensions(handle,mipLevel)
  %1459 = extractvalue %dx.types.Dimensions %1458, 0
  %1460 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1459)  ; FirstbitLo(value)
  %1461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.i32 %1461, 1
  %1463 = sub nsw i32 %1462, %1460
  %1464 = sitofp i32 %1463 to float
  %1465 = fsub fast float %1414, %1464
  %1466 = call float @dx.op.binary.f32(i32 35, float %1465, float 0.000000e+00)  ; FMax(a,b)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1457, %dx.types.Handle %23, float %1454, float %1455, float %1445, float undef, i32 0, i32 0, i32 undef, float %1466)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = fmul fast float %1468, %1439
  %1470 = fadd fast float %1469, %1442
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.CBufRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.CBufRet.f32 %1471, 2
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 3
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 3
  %1479 = extractvalue %dx.types.CBufRet.f32 %1471, 3
  %1480 = fadd fast float %1476, %1337
  %1481 = fadd fast float %1478, %1338
  %1482 = fadd fast float %1470, %1479
  %1483 = fmul fast float %1480, %1472
  %1484 = call float @dx.op.tertiary.f32(i32 46, float %1481, float %1473, float %1483)  ; FMad(a,b,c)
  %1485 = call float @dx.op.tertiary.f32(i32 46, float %1482, float %1474, float %1484)  ; FMad(a,b,c)
  %1486 = fsub fast float %1485, %1479
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1489 = fsub fast float %1486, %1488
  %1490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.i32 %1490, 0
  %1492 = call i32 @dx.op.binary.i32(i32 40, i32 %1368, i32 %1491)  ; UMin(a,b)
  %1493 = mul i32 %1492, 36
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = add i32 %1493, 4
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1498 = extractvalue %dx.types.CBufRet.f32 %1497, 0
  %1499 = fmul fast float %1498, %1390
  %1500 = fmul fast float %1498, %1392
  %1501 = extractvalue %dx.types.CBufRet.f32 %1497, 1
  %1502 = fadd fast float %1499, %1501
  %1503 = fadd fast float %1500, %1501
  %1504 = icmp eq i32 %1495, 0
  br i1 %1504, label %1573, label %1505

; <label>:1505                                    ; preds = %1436
  br label %1506

; <label>:1506                                    ; preds = %1563, %1505
  %1507 = phi float [ %1564, %1563 ], [ 0.000000e+00, %1505 ]
  %1508 = phi float [ %1565, %1563 ], [ 0.000000e+00, %1505 ]
  %1509 = phi float [ %1566, %1563 ], [ 0.000000e+00, %1505 ]
  %1510 = phi float [ %1567, %1563 ], [ 0.000000e+00, %1505 ]
  %1511 = phi float [ %1568, %1563 ], [ 0.000000e+00, %1505 ]
  %1512 = phi float [ %1569, %1563 ], [ 0.000000e+00, %1505 ]
  %1513 = phi i32 [ %1570, %1563 ], [ 0, %1505 ]
  %1514 = shl i32 %1513, 2
  %1515 = add i32 %1381, %1514
  %1516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = add i32 %1385, %1514
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %1520, 0
  %1522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1521, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1523 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1522, i32 0)  ; GetDimensions(handle,mipLevel)
  %1524 = extractvalue %dx.types.Dimensions %1523, 0
  %1525 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1524)  ; FirstbitLo(value)
  %1526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.i32 %1526, 1
  %1528 = sub nsw i32 %1527, %1525
  %1529 = sitofp i32 %1528 to float
  %1530 = fsub fast float %1414, %1529
  %1531 = call float @dx.op.binary.f32(i32 35, float %1530, float 0.000000e+00)  ; FMax(a,b)
  %1532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1522, %dx.types.Handle %23, float %1502, float %1503, float %1517, float undef, i32 0, i32 0, i32 undef, float %1531)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = fcmp fast ogt float %1533, 0.000000e+00
  br i1 %1534, label %1535, label %1563

; <label>:1535                                    ; preds = %1506
  %1536 = add i32 %1496, %1514
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 32767
  %1540 = mul nuw nsw i32 %1539, 928
  %1541 = add nuw nsw i32 %1540, 48
  %1542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.ResRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.ResRet.f32 %1542, 2
  %1546 = add nuw nsw i32 %1540, 60
  %1547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.ResRet.f32 %1547, 1
  %1550 = extractvalue %dx.types.ResRet.f32 %1547, 2
  %1551 = fmul fast float %1543, %1533
  %1552 = fmul fast float %1544, %1533
  %1553 = fmul fast float %1545, %1533
  %1554 = fadd fast float %1551, %1507
  %1555 = fadd fast float %1552, %1508
  %1556 = fadd fast float %1553, %1509
  %1557 = fmul fast float %1548, %1533
  %1558 = fmul fast float %1549, %1533
  %1559 = fmul fast float %1550, %1533
  %1560 = fadd fast float %1557, %1510
  %1561 = fadd fast float %1558, %1511
  %1562 = fadd fast float %1559, %1512
  br label %1563

; <label>:1563                                    ; preds = %1535, %1506
  %1564 = phi float [ %1554, %1535 ], [ %1507, %1506 ]
  %1565 = phi float [ %1555, %1535 ], [ %1508, %1506 ]
  %1566 = phi float [ %1556, %1535 ], [ %1509, %1506 ]
  %1567 = phi float [ %1560, %1535 ], [ %1510, %1506 ]
  %1568 = phi float [ %1561, %1535 ], [ %1511, %1506 ]
  %1569 = phi float [ %1562, %1535 ], [ %1512, %1506 ]
  %1570 = add nuw i32 %1513, 1
  %1571 = icmp eq i32 %1570, %1495
  br i1 %1571, label %1572, label %1506

; <label>:1572                                    ; preds = %1563
  br label %1573

; <label>:1573                                    ; preds = %1572, %1436
  %1574 = phi float [ 0.000000e+00, %1436 ], [ %1564, %1572 ]
  %1575 = phi float [ 0.000000e+00, %1436 ], [ %1565, %1572 ]
  %1576 = phi float [ 0.000000e+00, %1436 ], [ %1566, %1572 ]
  %1577 = phi float [ 0.000000e+00, %1436 ], [ %1567, %1572 ]
  %1578 = phi float [ 0.000000e+00, %1436 ], [ %1568, %1572 ]
  %1579 = phi float [ 0.000000e+00, %1436 ], [ %1569, %1572 ]
  %1580 = fadd fast float %1577, %1574
  %1581 = fmul fast float %1580, 0x3F847AE140000000
  %1582 = fadd fast float %1578, %1575
  %1583 = fmul fast float %1582, 0x3F847AE140000000
  %1584 = fadd fast float %1579, %1576
  %1585 = fmul fast float %1584, 0x3F847AE140000000
  br label %1586

; <label>:1586                                    ; preds = %1573, %1370, %1315, %1312, %1283, %1245
  %1587 = phi float [ %1297, %1283 ], [ -1.310720e+05, %1245 ], [ %1489, %1573 ], [ -1.310720e+05, %1315 ], [ -1.310720e+05, %1370 ], [ -1.310720e+05, %1312 ]
  %1588 = phi float [ %1307, %1283 ], [ 0.000000e+00, %1245 ], [ %1581, %1573 ], [ 0.000000e+00, %1315 ], [ 0.000000e+00, %1370 ], [ 0.000000e+00, %1312 ]
  %1589 = phi float [ %1309, %1283 ], [ 0.000000e+00, %1245 ], [ %1583, %1573 ], [ 0.000000e+00, %1315 ], [ 0.000000e+00, %1370 ], [ 0.000000e+00, %1312 ]
  %1590 = phi float [ %1311, %1283 ], [ 0.000000e+00, %1245 ], [ %1585, %1573 ], [ 0.000000e+00, %1315 ], [ 0.000000e+00, %1370 ], [ 0.000000e+00, %1312 ]
  %1591 = phi i1 [ true, %1283 ], [ false, %1245 ], [ true, %1573 ], [ false, %1315 ], [ false, %1370 ], [ false, %1312 ]
  %1592 = and i32 %110, 3
  %1593 = icmp eq i32 %1592, 1
  %1594 = select i1 %1593, float 1.000000e+00, float 0.000000e+00
  %1595 = fsub fast float %1587, %94
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = select i1 %1591, float %1596, float 1.000000e+00
  %1598 = fmul fast float %1597, %1594
  %1599 = icmp eq i32 %1592, 3
  %1600 = select i1 %1599, float 1.000000e+00, float %1598
  %1601 = call float @dx.op.binary.f32(i32 35, float %1161, float %1600)  ; FMax(a,b)
  %1602 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1603 = fcmp fast une float %1602, 0.000000e+00
  %1604 = call float @dx.op.dot3.f32(i32 55, float %92, float %93, float %94, float %92, float %93, float %94)  ; Dot3(ax,ay,az,bx,by,bz)
  %1605 = call float @dx.op.unary.f32(i32 25, float %1604)  ; Rsqrt(value)
  br i1 %1603, label %1613, label %1606

; <label>:1606                                    ; preds = %1586
  %1607 = fmul fast float %1605, %92
  %1608 = fmul fast float %1605, %93
  %1609 = fmul fast float %1605, %94
  %1610 = fsub fast float -0.000000e+00, %1607
  %1611 = fsub fast float -0.000000e+00, %1608
  %1612 = fsub fast float -0.000000e+00, %1609
  br label %1781

; <label>:1613                                    ; preds = %1586
  %1614 = fmul fast float %92, %1605
  %1615 = fsub fast float -0.000000e+00, %1614
  %1616 = fmul fast float %93, %1605
  %1617 = fsub fast float -0.000000e+00, %1616
  %1618 = fmul fast float %94, %1605
  %1619 = fsub fast float -0.000000e+00, %1618
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1615, float %1617, float %1619, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %1621 = fmul fast float %1602, 2.500000e+00
  %1622 = call float @dx.op.unary.f32(i32 7, float %1621)  ; Saturate(value)
  %1623 = fmul fast float %1602, 0x4013FFFFE0000000
  %1624 = fadd fast float %1623, 0xBFFFFFFFE0000000
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  %1626 = fmul fast float %1602, 0x4004000020000000
  %1627 = fadd fast float %1626, 0xBFF8000040000000
  %1628 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1629 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1630 = fmul fast float %1191, 1.000000e+01
  %1631 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1632 = fmul fast float %1631, 2.000000e+00
  %1633 = fsub fast float 3.000000e+00, %1632
  %1634 = fmul fast float %1631, %1631
  %1635 = fmul fast float %1634, %1633
  %1636 = fsub fast float 1.000000e+00, %1635
  %1637 = fsub fast float 0x3FE3333340000000, %1212
  %1638 = fmul fast float %1637, 0x400AAAAAA0000000
  %1639 = call float @dx.op.unary.f32(i32 7, float %1638)  ; Saturate(value)
  %1640 = fmul fast float %1636, %1639
  %1641 = fmul fast float %1224, 0x3FEA2B8620000000
  %1642 = fmul fast float %1225, 0x3FEA2B8620000000
  %1643 = fmul fast float %1226, 0x3FEA2B8620000000
  %1644 = fadd fast float %1641, 0x3FC81DFBA0000000
  %1645 = fmul fast float %1644, %1224
  %1646 = fadd fast float %1645, 0x3F910E6020000000
  %1647 = fadd fast float %1642, 0x3FC81DFBA0000000
  %1648 = fmul fast float %1647, %1225
  %1649 = fadd fast float %1648, 0x3F910E6020000000
  %1650 = fadd fast float %1643, 0x3FC81DFBA0000000
  %1651 = fmul fast float %1650, %1226
  %1652 = fadd fast float %1651, 0x3F910E6020000000
  %1653 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  %1655 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1656 = fsub fast float %1653, %1224
  %1657 = fsub fast float %1654, %1225
  %1658 = fsub fast float %1655, %1226
  %1659 = fmul fast float %1656, %1629
  %1660 = fmul fast float %1659, %1640
  %1661 = fmul fast float %1657, %1629
  %1662 = fmul fast float %1661, %1640
  %1663 = fmul fast float %1658, %1629
  %1664 = fmul fast float %1663, %1640
  %1665 = fadd fast float %1660, %1224
  %1666 = fadd fast float %1662, %1225
  %1667 = fadd fast float %1664, %1226
  %1668 = fmul fast float %1172, %1172
  %1669 = fmul fast float %1668, %1668
  %1670 = fadd fast float %1625, 1.000000e+00
  %1671 = fsub fast float %1670, %1640
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1673 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1674 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1675 = fsub fast float 1.000000e+00, %1669
  %1676 = call float @dx.op.binary.f32(i32 36, float %1672, float %1675)  ; FMin(a,b)
  %1677 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1678 = call float @dx.op.binary.f32(i32 35, float %1676, float %1677)  ; FMax(a,b)
  %1679 = fadd fast float %1674, 0xBFE4CCCCC0000000
  %1680 = fmul fast float %1679, 0x4006DB6DA0000000
  %1681 = call float @dx.op.unary.f32(i32 7, float %1680)  ; Saturate(value)
  %1682 = fmul fast float %1681, 2.000000e+00
  %1683 = fsub fast float 3.000000e+00, %1682
  %1684 = bitcast float %1209 to i32
  %1685 = ashr i32 %1684, 1
  %1686 = add nsw i32 %1685, 532487669
  %1687 = bitcast i32 %1686 to float
  %1688 = fsub fast float 1.000000e+00, %1687
  %1689 = bitcast float %1688 to i32
  %1690 = sub nsw i32 2129859010, %1689
  %1691 = bitcast i32 %1690 to float
  %1692 = fmul fast float %1691, 2.000000e+00
  %1693 = bitcast float %1210 to i32
  %1694 = ashr i32 %1693, 1
  %1695 = add nsw i32 %1694, 532487669
  %1696 = bitcast i32 %1695 to float
  %1697 = fsub fast float 1.000000e+00, %1696
  %1698 = bitcast float %1697 to i32
  %1699 = sub nsw i32 2129859010, %1698
  %1700 = bitcast i32 %1699 to float
  %1701 = fmul fast float %1700, 2.000000e+00
  %1702 = bitcast float %1211 to i32
  %1703 = ashr i32 %1702, 1
  %1704 = add nsw i32 %1703, 532487669
  %1705 = bitcast i32 %1704 to float
  %1706 = fsub fast float 1.000000e+00, %1705
  %1707 = bitcast float %1706 to i32
  %1708 = sub nsw i32 2129859010, %1707
  %1709 = bitcast i32 %1708 to float
  %1710 = fmul fast float %1709, 2.000000e+00
  %1711 = fsub fast float 0x4002A9FBE0000000, %1692
  %1712 = fadd fast float %1692, 0x3FD54FDF00000000
  %1713 = bitcast float %1712 to i32
  %1714 = sub nsw i32 2129859010, %1713
  %1715 = bitcast i32 %1714 to float
  %1716 = fmul fast float %1715, %1711
  %1717 = fmul fast float %1716, %1716
  %1718 = fsub fast float 0x4002A9FBE0000000, %1701
  %1719 = fadd fast float %1701, 0x3FD54FDF00000000
  %1720 = bitcast float %1719 to i32
  %1721 = sub nsw i32 2129859010, %1720
  %1722 = bitcast i32 %1721 to float
  %1723 = fmul fast float %1722, %1718
  %1724 = fmul fast float %1723, %1723
  %1725 = fsub fast float 0x4002A9FBE0000000, %1710
  %1726 = fadd fast float %1710, 0x3FD54FDF00000000
  %1727 = bitcast float %1726 to i32
  %1728 = sub nsw i32 2129859010, %1727
  %1729 = bitcast i32 %1728 to float
  %1730 = fmul fast float %1729, %1725
  %1731 = fmul fast float %1730, %1730
  %1732 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1717)  ; FMax(a,b)
  %1733 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1724)  ; FMax(a,b)
  %1734 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1731)  ; FMax(a,b)
  %1735 = fsub fast float 1.000000e+00, %1620
  %1736 = fadd fast float %1735, %1636
  %1737 = call float @dx.op.unary.f32(i32 7, float %1736)  ; Saturate(value)
  %1738 = fsub fast float 1.000000e+00, %1600
  %1739 = fmul fast float %1678, %1738
  %1740 = fmul fast float %1681, %1681
  %1741 = fmul fast float %1740, %1739
  %1742 = fmul fast float %1741, %1683
  %1743 = fmul fast float %1738, 0xBFE99999A0000000
  %1744 = fmul fast float %1743, %1629
  %1745 = fmul fast float %1744, %1640
  %1746 = fadd fast float %1745, 1.000000e+00
  %1747 = fadd fast float %1212, -1.000000e+00
  %1748 = fmul fast float %1746, %1747
  %1749 = fadd fast float %1748, 1.000000e+00
  %1750 = fsub fast float %1732, %1209
  %1751 = fsub fast float %1733, %1210
  %1752 = fsub fast float %1734, %1211
  %1753 = fmul fast float %1742, %1750
  %1754 = fmul fast float %1742, %1751
  %1755 = fmul fast float %1742, %1752
  %1756 = fadd fast float %1753, %1209
  %1757 = fadd fast float %1754, %1210
  %1758 = fadd fast float %1755, %1211
  %1759 = fsub fast float %33, %1188
  %1760 = fsub fast float %34, %1189
  %1761 = fsub fast float %35, %1190
  %1762 = fmul fast float %1742, %1759
  %1763 = fmul fast float %1742, %1760
  %1764 = fmul fast float %1742, %1761
  %1765 = fadd fast float %1762, %1188
  %1766 = fadd fast float %1763, %1189
  %1767 = fadd fast float %1764, %1190
  %1768 = fmul fast float %1742, %1737
  %1769 = call float @dx.op.unary.f32(i32 7, float %1749)  ; Saturate(value)
  %1770 = fsub fast float 1.000000e+00, %1769
  %1771 = fmul fast float %1768, %1770
  %1772 = fadd fast float %1771, %1769
  %1773 = fsub fast float 1.000000e+00, %1172
  %1774 = fmul fast float %1742, %1773
  %1775 = fadd fast float %1774, %1172
  %1776 = call float @dx.op.dot3.f32(i32 55, float %1765, float %1766, float %1767, float %1765, float %1766, float %1767)  ; Dot3(ax,ay,az,bx,by,bz)
  %1777 = call float @dx.op.unary.f32(i32 25, float %1776)  ; Rsqrt(value)
  %1778 = fmul fast float %1765, %1777
  %1779 = fmul fast float %1766, %1777
  %1780 = fmul fast float %1767, %1777
  br label %1781

; <label>:1781                                    ; preds = %1613, %1606
  %1782 = phi float [ %1612, %1606 ], [ %1619, %1613 ]
  %1783 = phi float [ %1611, %1606 ], [ %1617, %1613 ]
  %1784 = phi float [ %1610, %1606 ], [ %1615, %1613 ]
  %1785 = phi float [ %1609, %1606 ], [ %1618, %1613 ]
  %1786 = phi float [ %1608, %1606 ], [ %1616, %1613 ]
  %1787 = phi float [ %1607, %1606 ], [ %1614, %1613 ]
  %1788 = phi float [ %1209, %1606 ], [ %1756, %1613 ]
  %1789 = phi float [ %1210, %1606 ], [ %1757, %1613 ]
  %1790 = phi float [ %1211, %1606 ], [ %1758, %1613 ]
  %1791 = phi float [ %1224, %1606 ], [ %1665, %1613 ]
  %1792 = phi float [ %1225, %1606 ], [ %1666, %1613 ]
  %1793 = phi float [ %1226, %1606 ], [ %1667, %1613 ]
  %1794 = phi float [ %1188, %1606 ], [ %1778, %1613 ]
  %1795 = phi float [ %1189, %1606 ], [ %1779, %1613 ]
  %1796 = phi float [ %1190, %1606 ], [ %1780, %1613 ]
  %1797 = phi float [ %1212, %1606 ], [ %1772, %1613 ]
  %1798 = phi float [ %1172, %1606 ], [ %1775, %1613 ]
  %1799 = select i1 %134, float 0.000000e+00, float %1790
  %1800 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1795, float %1796, float %1784, float %1783, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = call float @dx.op.unary.f32(i32 7, float %1800)  ; Saturate(value)
  %1802 = fsub fast float 1.000000e+00, %1798
  %1803 = bitcast float %1802 to i32
  %1804 = sub nsw i32 2129859010, %1803
  %1805 = fmul fast float %1185, %1166
  %1806 = fmul fast float %1185, %1167
  %1807 = fmul fast float %1185, %1168
  %1808 = bitcast i32 %1804 to float
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 3
  %1811 = fcmp fast oeq float %1810, 0.000000e+00
  br i1 %1811, label %2058, label %1812

; <label>:1812                                    ; preds = %1781
  %1813 = extractvalue %dx.types.CBufRet.f32 %1809, 0
  %1814 = extractvalue %dx.types.CBufRet.f32 %1809, 1
  %1815 = extractvalue %dx.types.CBufRet.f32 %1809, 2
  %1816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1817 = extractvalue %dx.types.CBufRet.f32 %1816, 0
  %1818 = extractvalue %dx.types.CBufRet.f32 %1816, 1
  %1819 = extractvalue %dx.types.CBufRet.f32 %1816, 2
  %1820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1821 = extractvalue %dx.types.CBufRet.f32 %1820, 0
  %1822 = extractvalue %dx.types.CBufRet.f32 %1820, 1
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1817, float %1818, float %1819, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = select i1 %134, float %1821, float %1817
  %1825 = select i1 %134, float %1823, float %1818
  %1826 = select i1 %134, float %1822, float %1819
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 1
  %1829 = fcmp fast une float %1828, 0.000000e+00
  br i1 %1829, label %1830, label %1847

; <label>:1830                                    ; preds = %1812
  %1831 = fptoui float %45 to i32
  %1832 = fptoui float %46 to i32
  %1833 = lshr i32 %1831, 4
  %1834 = lshr i32 %1832, 4
  %1835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1836 = extractvalue %dx.types.CBufRet.f32 %1835, 0
  %1837 = fptoui float %1836 to i32
  %1838 = add i32 %1837, 15
  %1839 = lshr i32 %1838, 4
  %1840 = mul i32 %1839, %1834
  %1841 = add i32 %1840, %1833
  %1842 = shl i32 %1841, 3
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = and i32 %1844, -268435456
  %1846 = icmp eq i32 %1845, -1342177280
  br i1 %1846, label %1857, label %1847

; <label>:1847                                    ; preds = %1830, %1812
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 2
  %1850 = extractvalue %dx.types.CBufRet.f32 %1848, 3
  %1851 = fmul fast float %1849, %45
  %1852 = fmul fast float %1850, %46
  %1853 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %1851, float %1852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1854 = extractvalue %dx.types.ResRet.f32 %1853, 0
  %1855 = extractvalue %dx.types.ResRet.f32 %1853, 1
  %1856 = extractvalue %dx.types.ResRet.f32 %1853, 2
  br label %1857

; <label>:1857                                    ; preds = %1847, %1830
  %1858 = phi float [ %1854, %1847 ], [ 0.000000e+00, %1830 ]
  %1859 = phi float [ %1855, %1847 ], [ 0.000000e+00, %1830 ]
  %1860 = phi float [ %1856, %1847 ], [ 0.000000e+00, %1830 ]
  %1861 = call float @dx.op.binary.f32(i32 36, float %1859, float %1860)  ; FMin(a,b)
  %1862 = call float @dx.op.binary.f32(i32 36, float %1858, float %1861)  ; FMin(a,b)
  %1863 = fcmp fast ogt float %1862, 0.000000e+00
  br i1 %1863, label %1864, label %2058, !dx.controlflow.hints !62

; <label>:1864                                    ; preds = %1857
  %1865 = fmul fast float %1858, %1824
  %1866 = fmul fast float %1859, %1825
  %1867 = fmul fast float %1860, %1826
  %1868 = fsub fast float %1813, %1787
  %1869 = fsub fast float %1814, %1786
  %1870 = fsub fast float %1815, %1785
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1868, float %1869, float %1870, float %1868, float %1869, float %1870)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = call float @dx.op.unary.f32(i32 25, float %1871)  ; Rsqrt(value)
  %1873 = fmul fast float %1872, %1868
  %1874 = fmul fast float %1872, %1869
  %1875 = fmul fast float %1872, %1870
  %1876 = call float @dx.op.dot3.f32(i32 55, float %1813, float %1814, float %1815, float %1794, float %1795, float %1796)  ; Dot3(ax,ay,az,bx,by,bz)
  %1877 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1783, float %1782, float %1873, float %1874, float %1875)  ; Dot3(ax,ay,az,bx,by,bz)
  %1878 = call float @dx.op.unary.f32(i32 7, float %1876)  ; Saturate(value)
  %1879 = fmul fast float %1878, %1878
  %1880 = fmul fast float %1879, %1808
  %1881 = call float @dx.op.unary.f32(i32 7, float %1880)  ; Saturate(value)
  %1882 = fmul fast float %1881, %1878
  %1883 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1795, float %1796, float %1873, float %1874, float %1875)  ; Dot3(ax,ay,az,bx,by,bz)
  %1884 = fmul fast float %1883, %1883
  %1885 = call float @dx.op.unary.f32(i32 6, float %1876)  ; FAbs(value)
  %1886 = fsub fast float 1.000000e+00, %1797
  %1887 = call float @dx.op.binary.f32(i32 35, float %1886, float 0x3F847AE140000000)  ; FMax(a,b)
  %1888 = fmul fast float %1887, %1887
  %1889 = fmul fast float %1888, %1888
  %1890 = fsub fast float 1.000000e+00, %1889
  %1891 = fmul fast float %1801, %1801
  %1892 = fmul fast float %1891, %1890
  %1893 = fadd fast float %1892, %1889
  %1894 = bitcast float %1893 to i32
  %1895 = ashr i32 %1894, 1
  %1896 = add nsw i32 %1895, 532487669
  %1897 = bitcast i32 %1896 to float
  %1898 = fadd fast float %1897, %1801
  %1899 = fmul fast float %1889, %1884
  %1900 = fsub fast float 1.000000e+00, %1884
  %1901 = fadd fast float %1900, %1899
  %1902 = fmul fast float %1885, %1885
  %1903 = fmul fast float %1902, %1890
  %1904 = fadd fast float %1903, %1889
  %1905 = bitcast float %1904 to i32
  %1906 = ashr i32 %1905, 1
  %1907 = add nsw i32 %1906, 532487669
  %1908 = bitcast i32 %1907 to float
  %1909 = fadd fast float %1908, %1885
  %1910 = fmul fast float %1901, %1901
  %1911 = fmul fast float %1910, %1898
  %1912 = fmul fast float %1911, %1909
  %1913 = fdiv fast float 0x3FF0A00000000000, %1912
  %1914 = fmul fast float %1913, %1889
  %1915 = call float @dx.op.unary.f32(i32 6, float %1877)  ; FAbs(value)
  %1916 = fsub fast float 1.000000e+00, %1915
  %1917 = bitcast float %1916 to i32
  %1918 = sitofp i32 %1917 to float
  %1919 = fmul fast float %1918, 5.000000e+00
  %1920 = fadd fast float %1919, 0xC1EFBF8940000000
  %1921 = fptosi float %1920 to i32
  %1922 = bitcast i32 %1921 to float
  %1923 = fsub fast float 1.000000e+00, %1788
  %1924 = fsub fast float 1.000000e+00, %1789
  %1925 = fsub fast float 1.000000e+00, %1799
  %1926 = fmul fast float %1922, %1923
  %1927 = fmul fast float %1922, %1924
  %1928 = fmul fast float %1922, %1925
  %1929 = fadd fast float %1926, %1788
  %1930 = fadd fast float %1927, %1789
  %1931 = fadd fast float %1928, %1799
  %1932 = fcmp fast ogt float %1165, 0.000000e+00
  br i1 %1932, label %1933, label %1956

; <label>:1933                                    ; preds = %1864
  %1934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1165, float %1915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.ResRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.ResRet.f32 %1934, 2
  %1938 = fadd fast float %1935, -5.000000e-01
  %1939 = fadd fast float %1936, -5.000000e-01
  %1940 = fadd fast float %1937, -5.000000e-01
  %1941 = fmul fast float %1788, 4.000000e+00
  %1942 = fmul fast float %1941, %1923
  %1943 = fmul fast float %1942, %1938
  %1944 = fmul fast float %1789, 4.000000e+00
  %1945 = fmul fast float %1944, %1924
  %1946 = fmul fast float %1945, %1939
  %1947 = fmul fast float %1799, 4.000000e+00
  %1948 = fmul fast float %1947, %1925
  %1949 = fmul fast float %1948, %1940
  %1950 = fadd fast float %1943, %1929
  %1951 = fadd fast float %1946, %1930
  %1952 = fadd fast float %1949, %1931
  %1953 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1954 = call float @dx.op.unary.f32(i32 7, float %1951)  ; Saturate(value)
  %1955 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  br label %1956

; <label>:1956                                    ; preds = %1933, %1864
  %1957 = phi float [ %1953, %1933 ], [ %1929, %1864 ]
  %1958 = phi float [ %1954, %1933 ], [ %1930, %1864 ]
  %1959 = phi float [ %1955, %1933 ], [ %1931, %1864 ]
  %1960 = fmul fast float %1876, 9.843750e-01
  %1961 = fmul fast float %1797, 9.843750e-01
  %1962 = fadd fast float %1960, 7.812500e-03
  %1963 = fadd fast float %1961, 7.812500e-03
  %1964 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %1962, float %1963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 2
  %1966 = extractvalue %dx.types.ResRet.f32 %1964, 3
  %1967 = fmul fast float %1965, %1788
  %1968 = fmul fast float %1965, %1789
  %1969 = fmul fast float %1965, %1799
  %1970 = fadd fast float %1967, %1966
  %1971 = fadd fast float %1968, %1966
  %1972 = fadd fast float %1969, %1966
  br i1 %1932, label %1973, label %1996

; <label>:1973                                    ; preds = %1956
  %1974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1165, float %1876, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = extractvalue %dx.types.ResRet.f32 %1974, 1
  %1977 = extractvalue %dx.types.ResRet.f32 %1974, 2
  %1978 = fadd fast float %1975, -5.000000e-01
  %1979 = fadd fast float %1976, -5.000000e-01
  %1980 = fadd fast float %1977, -5.000000e-01
  %1981 = fmul fast float %1788, 4.000000e+00
  %1982 = fmul fast float %1981, %1923
  %1983 = fmul fast float %1982, %1978
  %1984 = fmul fast float %1789, 4.000000e+00
  %1985 = fmul fast float %1984, %1924
  %1986 = fmul fast float %1985, %1979
  %1987 = fmul fast float %1799, 4.000000e+00
  %1988 = fmul fast float %1987, %1925
  %1989 = fmul fast float %1988, %1980
  %1990 = fadd fast float %1983, %1970
  %1991 = fadd fast float %1986, %1971
  %1992 = fadd fast float %1989, %1972
  %1993 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1994 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1995 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  br label %1996

; <label>:1996                                    ; preds = %1973, %1956
  %1997 = phi float [ %1993, %1973 ], [ %1970, %1956 ]
  %1998 = phi float [ %1994, %1973 ], [ %1971, %1956 ]
  %1999 = phi float [ %1995, %1973 ], [ %1972, %1956 ]
  %2000 = call float @dx.op.binary.f32(i32 35, float %1998, float %1999)  ; FMax(a,b)
  %2001 = call float @dx.op.binary.f32(i32 35, float %1997, float %2000)  ; FMax(a,b)
  %2002 = fsub fast float 1.000000e+00, %2001
  %2003 = fmul fast float %1957, %1914
  %2004 = fmul fast float %1958, %1914
  %2005 = fmul fast float %1959, %1914
  %2006 = call float @dx.op.dot3.f32(i32 55, float %1791, float %1792, float %1793, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2007 = fcmp fast ogt float %2006, 0x3E7FF19E20000000
  %2008 = fdiv fast float 1.000000e+00, %2006
  %2009 = select i1 %2007, float %2008, float 0.000000e+00
  %2010 = fmul fast float %2009, %1791
  %2011 = fmul fast float %2009, %1792
  %2012 = fmul fast float %2009, %1793
  %2013 = fadd fast float %2010, -1.000000e+00
  %2014 = fadd fast float %2011, -1.000000e+00
  %2015 = fadd fast float %2012, -1.000000e+00
  %2016 = fmul fast float %2013, 5.000000e-01
  %2017 = fmul fast float %2014, 5.000000e-01
  %2018 = fmul fast float %2015, 5.000000e-01
  %2019 = fadd fast float %2016, 1.000000e+00
  %2020 = fadd fast float %2017, 1.000000e+00
  %2021 = fadd fast float %2018, 1.000000e+00
  %2022 = fsub fast float 1.000000e+00, %1877
  %2023 = bitcast float %2022 to i32
  %2024 = sitofp i32 %2023 to float
  %2025 = fmul fast float %2024, 5.000000e+00
  %2026 = fadd fast float %2025, 0xC1EFBF8940000000
  %2027 = fptosi float %2026 to i32
  %2028 = bitcast i32 %2027 to float
  %2029 = fmul fast float %2028, %1164
  %2030 = fmul fast float %2002, %2029
  %2031 = fmul fast float %2030, %2019
  %2032 = fmul fast float %2030, %2020
  %2033 = fmul fast float %2030, %2021
  %2034 = fadd fast float %2031, %2003
  %2035 = fadd fast float %2032, %2004
  %2036 = fadd fast float %2033, %2005
  %2037 = fmul fast float %1882, %1865
  %2038 = fmul fast float %2037, %2034
  %2039 = fmul fast float %1882, %1866
  %2040 = fmul fast float %2039, %2035
  %2041 = fmul fast float %1882, %1867
  %2042 = fmul fast float %2041, %2036
  %2043 = fmul fast float %1865, %1185
  %2044 = fmul fast float %2043, %1882
  %2045 = fmul fast float %2044, %2002
  %2046 = fmul fast float %1866, %1185
  %2047 = fmul fast float %2046, %1882
  %2048 = fmul fast float %2047, %2002
  %2049 = fmul fast float %1867, %1185
  %2050 = fmul fast float %2049, %1882
  %2051 = fmul fast float %2050, %2002
  %2052 = fadd fast float %2038, %1166
  %2053 = fmul fast float %2052, %1185
  %2054 = fadd fast float %2040, %1167
  %2055 = fmul fast float %2054, %1185
  %2056 = fadd fast float %2042, %1168
  %2057 = fmul fast float %2056, %1185
  br label %2058

; <label>:2058                                    ; preds = %1996, %1857, %1781
  %2059 = phi float [ %1805, %1781 ], [ %1805, %1857 ], [ %2053, %1996 ]
  %2060 = phi float [ %1806, %1781 ], [ %1806, %1857 ], [ %2055, %1996 ]
  %2061 = phi float [ %1807, %1781 ], [ %1807, %1857 ], [ %2057, %1996 ]
  %2062 = phi float [ 0.000000e+00, %1781 ], [ 0.000000e+00, %1857 ], [ %2045, %1996 ]
  %2063 = phi float [ 0.000000e+00, %1781 ], [ 0.000000e+00, %1857 ], [ %2048, %1996 ]
  %2064 = phi float [ 0.000000e+00, %1781 ], [ 0.000000e+00, %1857 ], [ %2051, %1996 ]
  %2065 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2066 = extractvalue %dx.types.CBufRet.i32 %2065, 0
  %2067 = icmp eq i32 %2066, 0
  br i1 %2067, label %2521, label %2068

; <label>:2068                                    ; preds = %2058
  %2069 = fptoui float %45 to i32
  %2070 = fptoui float %46 to i32
  %2071 = lshr i32 %2069, 4
  %2072 = lshr i32 %2070, 4
  %2073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2074 = extractvalue %dx.types.CBufRet.i32 %2073, 0
  %2075 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2072, i32 %2074, i32 %2071)  ; UMad(a,b,c)
  %2076 = add nsw i32 %2066, -1
  %2077 = call i32 @dx.op.binary.i32(i32 37, i32 %2076, i32 0)  ; IMax(a,b)
  %2078 = call float @dx.op.binary.f32(i32 35, float %40, float 0.000000e+00)  ; FMax(a,b)
  %2079 = fptoui float %2078 to i32
  %2080 = lshr i32 %2079, 5
  %2081 = call i32 @dx.op.binary.i32(i32 40, i32 %2080, i32 8191)  ; UMin(a,b)
  %2082 = shl i32 %2081, 2
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %2082, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = lshr i32 %2084, 16
  %2086 = and i32 %2084, 65535
  %2087 = lshr i32 %2084, 21
  %2088 = lshr i32 %2086, 5
  %2089 = call i32 @dx.op.binary.i32(i32 40, i32 %2088, i32 %2077)  ; UMin(a,b)
  %2090 = icmp ugt i32 %2087, %2089
  br i1 %2090, label %2521, label %2091

; <label>:2091                                    ; preds = %2068
  br label %2092

; <label>:2092                                    ; preds = %2511, %2091
  %2093 = phi i32 [ %2518, %2511 ], [ %2087, %2091 ]
  %2094 = phi float [ %2512, %2511 ], [ %2059, %2091 ]
  %2095 = phi float [ %2513, %2511 ], [ %2060, %2091 ]
  %2096 = phi float [ %2514, %2511 ], [ %2061, %2091 ]
  %2097 = phi float [ %2515, %2511 ], [ %2062, %2091 ]
  %2098 = phi float [ %2516, %2511 ], [ %2063, %2091 ]
  %2099 = phi float [ %2517, %2511 ], [ %2064, %2091 ]
  %2100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.i32 %2100, 0
  %2102 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2075, i32 %2101, i32 %2093)  ; UMad(a,b,c)
  %2103 = shl i32 %2102, 2
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = shl i32 %2093, 5
  %2107 = sub nsw i32 %2085, %2106
  %2108 = call i32 @dx.op.binary.i32(i32 37, i32 %2107, i32 0)  ; IMax(a,b)
  %2109 = call i32 @dx.op.binary.i32(i32 38, i32 %2108, i32 31)  ; IMin(a,b)
  %2110 = sub nsw i32 1, %2085
  %2111 = add nsw i32 %2110, %2086
  %2112 = call i32 @dx.op.binary.i32(i32 37, i32 %2111, i32 0)  ; IMax(a,b)
  %2113 = call i32 @dx.op.binary.i32(i32 38, i32 %2112, i32 32)  ; IMin(a,b)
  %2114 = and i32 %2113, 31
  %2115 = shl i32 -1, %2114
  %2116 = xor i32 %2115, -1
  %2117 = and i32 %2109, 31
  %2118 = shl i32 %2116, %2117
  %2119 = icmp eq i32 %2113, 32
  %2120 = select i1 %2119, i32 -1, i32 %2118
  %2121 = and i32 %2120, %2105
  %2122 = icmp eq i32 %2121, 0
  br i1 %2122, label %2511, label %2123

; <label>:2123                                    ; preds = %2092
  br label %2124

; <label>:2124                                    ; preds = %2204, %2123
  %2125 = phi i32 [ %2136, %2204 ], [ %2121, %2123 ]
  %2126 = phi float [ %2205, %2204 ], [ %2094, %2123 ]
  %2127 = phi float [ %2206, %2204 ], [ %2095, %2123 ]
  %2128 = phi float [ %2207, %2204 ], [ %2096, %2123 ]
  %2129 = phi float [ %2208, %2204 ], [ %2097, %2123 ]
  %2130 = phi float [ %2209, %2204 ], [ %2098, %2123 ]
  %2131 = phi float [ %2210, %2204 ], [ %2099, %2123 ]
  %2132 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2125)  ; FirstbitLo(value)
  %2133 = add i32 %2132, %2106
  %2134 = and i32 %2132, 31
  %2135 = shl i32 1, %2134
  %2136 = xor i32 %2135, %2125
  %2137 = mul i32 %2133, 112
  %2138 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.f32 %2138, 0
  %2140 = extractvalue %dx.types.ResRet.f32 %2138, 1
  %2141 = extractvalue %dx.types.ResRet.f32 %2138, 2
  %2142 = or i32 %2137, 12
  %2143 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.f32 %2143, 0
  %2145 = add i32 %2137, 44
  %2146 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2145, i32 undef)  ; BufferLoad(srv,index,wot)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = add i32 %2137, 48
  %2149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2148, i32 undef)  ; BufferLoad(srv,index,wot)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = add i32 %2137, 80
  %2154 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2153, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 1
  %2156 = extractvalue %dx.types.ResRet.f32 %2154, 2
  %2157 = call float @dx.op.dot3.f32(i32 55, float %2139, float %2140, float %2141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2158 = select i1 %134, float %2155, float %2139
  %2159 = select i1 %134, float %2157, float %2140
  %2160 = select i1 %134, float %2156, float %2141
  %2161 = fsub fast float %2150, %92
  %2162 = fsub fast float %2151, %93
  %2163 = fsub fast float %2152, %94
  %2164 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float %2161, float %2162, float %2163)  ; Dot3(ax,ay,az,bx,by,bz)
  %2165 = call float @dx.op.unary.f32(i32 24, float %2164)  ; Sqrt(value)
  %2166 = fdiv fast float 1.000000e+00, %2165
  %2167 = fmul fast float %2166, %2161
  %2168 = fmul fast float %2166, %2162
  %2169 = fmul fast float %2166, %2163
  %2170 = fadd fast float %2165, %2144
  %2171 = fdiv fast float 1.000000e+00, %2170
  %2172 = fmul float %2147, %2171
  %2173 = fmul float %2172, %2172
  %2174 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2175 = and i32 %2135, %2121
  %2176 = icmp eq i32 %2175, 0
  br i1 %2176, label %2199, label %2177, !dx.controlflow.hints !63

; <label>:2177                                    ; preds = %2124
  %2178 = lshr i32 %2069, 5
  %2179 = lshr i32 %2070, 5
  %2180 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %2178, i32 %2179, i32 %2133, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 3
  %2183 = icmp eq i32 %2182, 0
  %2184 = select i1 %2183, float 1.000000e+00, float 0.000000e+00
  %2185 = icmp eq i32 %2182, 3
  br i1 %2185, label %2186, label %2199

; <label>:2186                                    ; preds = %2177
  %2187 = lshr i32 %2181, 10
  %2188 = and i32 %2187, 8160
  %2189 = and i32 %2070, 31
  %2190 = or i32 %2188, %2189
  %2191 = lshr i32 %2181, 1
  %2192 = and i32 %2191, 16352
  %2193 = and i32 %2069, 31
  %2194 = or i32 %2192, %2193
  %2195 = lshr i32 %2181, 23
  %2196 = and i32 %2195, 255
  %2197 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %2194, i32 %2190, i32 %2196, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2198 = extractvalue %dx.types.ResRet.f32 %2197, 0
  br label %2199

; <label>:2199                                    ; preds = %2186, %2177, %2124
  %2200 = phi float [ %2198, %2186 ], [ %2184, %2177 ], [ 0.000000e+00, %2124 ]
  %2201 = call float @dx.op.binary.f32(i32 36, float %2200, float %2200)  ; FMin(a,b)
  %2202 = call float @dx.op.binary.f32(i32 36, float %2200, float %2201)  ; FMin(a,b)
  %2203 = fcmp fast ogt float %2202, 0.000000e+00
  br i1 %2203, label %2212, label %2204, !dx.controlflow.hints !64

; <label>:2204                                    ; preds = %2451, %2199
  %2205 = phi float [ %2126, %2199 ], [ %2507, %2451 ]
  %2206 = phi float [ %2127, %2199 ], [ %2508, %2451 ]
  %2207 = phi float [ %2128, %2199 ], [ %2509, %2451 ]
  %2208 = phi float [ %2129, %2199 ], [ %2501, %2451 ]
  %2209 = phi float [ %2130, %2199 ], [ %2502, %2451 ]
  %2210 = phi float [ %2131, %2199 ], [ %2503, %2451 ]
  %2211 = icmp eq i32 %2125, %2135
  br i1 %2211, label %2510, label %2124

; <label>:2212                                    ; preds = %2199
  %2213 = fmul fast float %2200, %2158
  %2214 = fmul fast float %2200, %2159
  %2215 = fmul fast float %2200, %2160
  %2216 = fsub fast float %2152, %1587
  %2217 = fcmp fast ogt float %2216, 0.000000e+00
  %2218 = fsub fast float %94, %1587
  %2219 = fcmp fast ogt float %2218, 0.000000e+00
  %2220 = xor i1 %2219, %2217
  %2221 = fsub fast float %1587, %2152
  %2222 = fmul fast float %2221, 2.000000e+00
  %2223 = fadd fast float %2222, %2152
  %2224 = select i1 %2220, float %2152, float %2223
  %2225 = fsub fast float %2224, %94
  %2226 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2225, float %2161, float %2162, float %2225)  ; Dot3(ax,ay,az,bx,by,bz)
  %2227 = call float @dx.op.unary.f32(i32 25, float %2226)  ; Rsqrt(value)
  %2228 = fmul fast float %2227, %2161
  %2229 = fmul fast float %2227, %2162
  %2230 = fmul fast float %2227, %2225
  %2231 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %2232 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2228, float %2229, float %2230)  ; Dot3(ax,ay,az,bx,by,bz)
  %2233 = fdiv fast float 1.000000e+00, %2232
  %2234 = fmul fast float %2233, %2231
  %2235 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2218, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2236 = fcmp fast ogt float %2235, 0.000000e+00
  %2237 = fcmp fast olt float %2235, 0.000000e+00
  %2238 = zext i1 %2236 to i32
  %2239 = zext i1 %2237 to i32
  %2240 = sub nsw i32 %2238, %2239
  %2241 = sitofp i32 %2240 to float
  %2242 = fsub fast float %2224, %1587
  %2243 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2242, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2244 = fcmp fast ogt float %2243, 0.000000e+00
  %2245 = fcmp fast olt float %2243, 0.000000e+00
  %2246 = zext i1 %2244 to i32
  %2247 = zext i1 %2245 to i32
  %2248 = sub nsw i32 %2246, %2247
  %2249 = sitofp i32 %2248 to float
  %2250 = fcmp fast une float %2241, %2249
  br i1 %2250, label %2251, label %2261

; <label>:2251                                    ; preds = %2212
  %2252 = fmul fast float %2234, %2230
  %2253 = fmul fast float %2234, %2229
  %2254 = fmul fast float %2234, %2228
  %2255 = fmul fast float %2254, %2254
  %2256 = fmul fast float %2253, %2253
  %2257 = fadd fast float %2255, %2256
  %2258 = fmul fast float %2252, %2252
  %2259 = fadd fast float %2257, %2258
  %2260 = call float @dx.op.unary.f32(i32 24, float %2259)  ; Sqrt(value)
  br label %2273

; <label>:2261                                    ; preds = %2212
  %2262 = icmp slt i32 %2240, 0
  br i1 %2262, label %2263, label %2273

; <label>:2263                                    ; preds = %2261
  %2264 = fsub fast float %92, %2150
  %2265 = fsub fast float %93, %2151
  %2266 = fsub fast float %94, %2224
  %2267 = fmul fast float %2264, %2264
  %2268 = fmul fast float %2265, %2265
  %2269 = fadd fast float %2267, %2268
  %2270 = fmul fast float %2266, %2266
  %2271 = fadd fast float %2269, %2270
  %2272 = call float @dx.op.unary.f32(i32 24, float %2271)  ; Sqrt(value)
  br label %2273

; <label>:2273                                    ; preds = %2263, %2261, %2251
  %2274 = phi float [ %2260, %2251 ], [ %2272, %2263 ], [ 0.000000e+00, %2261 ]
  %2275 = and i1 %2219, %2217
  %2276 = fsub fast float -0.000000e+00, %2274
  %2277 = select i1 %2275, float -0.000000e+00, float %2276
  %2278 = fmul fast float %1588, 0x3FF7154760000000
  %2279 = fmul fast float %2278, %2277
  %2280 = fmul fast float %1589, 0x3FF7154760000000
  %2281 = fmul fast float %2280, %2277
  %2282 = fmul fast float %1590, 0x3FF7154760000000
  %2283 = fmul fast float %2282, %2277
  %2284 = call float @dx.op.unary.f32(i32 21, float %2279)  ; Exp(value)
  %2285 = call float @dx.op.unary.f32(i32 21, float %2281)  ; Exp(value)
  %2286 = call float @dx.op.unary.f32(i32 21, float %2283)  ; Exp(value)
  %2287 = call float @dx.op.unary.f32(i32 7, float %2284)  ; Saturate(value)
  %2288 = call float @dx.op.unary.f32(i32 7, float %2285)  ; Saturate(value)
  %2289 = call float @dx.op.unary.f32(i32 7, float %2286)  ; Saturate(value)
  %2290 = fmul fast float %2213, %2287
  %2291 = fmul fast float %2214, %2288
  %2292 = fmul fast float %2215, %2289
  %2293 = fsub fast float %2167, %1787
  %2294 = fsub fast float %2168, %1786
  %2295 = fsub fast float %2169, %1785
  %2296 = call float @dx.op.dot3.f32(i32 55, float %2293, float %2294, float %2295, float %2293, float %2294, float %2295)  ; Dot3(ax,ay,az,bx,by,bz)
  %2297 = call float @dx.op.unary.f32(i32 25, float %2296)  ; Rsqrt(value)
  %2298 = fmul fast float %2297, %2293
  %2299 = fmul fast float %2297, %2294
  %2300 = fmul fast float %2297, %2295
  %2301 = call float @dx.op.dot3.f32(i32 55, float %2167, float %2168, float %2169, float %1794, float %1795, float %1796)  ; Dot3(ax,ay,az,bx,by,bz)
  %2302 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1783, float %1782, float %2298, float %2299, float %2300)  ; Dot3(ax,ay,az,bx,by,bz)
  %2303 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2304 = fmul fast float %2303, %2174
  %2305 = fmul fast float %2303, %2303
  %2306 = fmul fast float %2305, %1808
  %2307 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2308 = fmul fast float %2304, %2307
  %2309 = bitcast float %2164 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = sub nsw i32 1597463007, %2310
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2312, %2161
  %2314 = fmul fast float %2312, %2162
  %2315 = fmul fast float %2312, %2163
  %2316 = fsub fast float %2313, %1787
  %2317 = fsub fast float %2314, %1786
  %2318 = fsub fast float %2315, %1785
  %2319 = call float @dx.op.dot3.f32(i32 55, float %2316, float %2317, float %2318, float %2316, float %2317, float %2318)  ; Dot3(ax,ay,az,bx,by,bz)
  %2320 = call float @dx.op.unary.f32(i32 25, float %2319)  ; Rsqrt(value)
  %2321 = fmul fast float %2316, %2320
  %2322 = fmul fast float %2317, %2320
  %2323 = fmul fast float %2318, %2320
  %2324 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1795, float %1796, float %2321, float %2322, float %2323)  ; Dot3(ax,ay,az,bx,by,bz)
  %2325 = fmul fast float %2324, %2324
  %2326 = call float @dx.op.unary.f32(i32 6, float %2301)  ; FAbs(value)
  %2327 = fsub fast float 1.000000e+00, %1797
  %2328 = call float @dx.op.binary.f32(i32 35, float %2327, float 0x3F847AE140000000)  ; FMax(a,b)
  %2329 = fmul fast float %2328, %2328
  %2330 = fmul fast float %2329, %2329
  %2331 = fsub fast float 1.000000e+00, %2330
  %2332 = fmul fast float %1801, %1801
  %2333 = fmul fast float %2332, %2331
  %2334 = fadd fast float %2333, %2330
  %2335 = bitcast float %2334 to i32
  %2336 = ashr i32 %2335, 1
  %2337 = add nsw i32 %2336, 532487669
  %2338 = bitcast i32 %2337 to float
  %2339 = fadd fast float %2338, %1801
  %2340 = fmul fast float %2330, %2325
  %2341 = fsub fast float 1.000000e+00, %2325
  %2342 = fadd fast float %2341, %2340
  %2343 = fmul fast float %2326, %2326
  %2344 = fmul fast float %2343, %2331
  %2345 = fadd fast float %2344, %2330
  %2346 = bitcast float %2345 to i32
  %2347 = ashr i32 %2346, 1
  %2348 = add nsw i32 %2347, 532487669
  %2349 = bitcast i32 %2348 to float
  %2350 = fadd fast float %2349, %2326
  %2351 = fmul fast float %2342, %2342
  %2352 = fmul fast float %2351, %2339
  %2353 = fmul fast float %2352, %2350
  %2354 = fdiv fast float 1.000000e+00, %2353
  %2355 = bitcast float %2330 to i32
  %2356 = sitofp i32 %2355 to float
  %2357 = fmul fast float %2356, 0x3FE7F73180000000
  %2358 = fadd fast float %2357, 0x41AFE27C40000000
  %2359 = fptosi float %2358 to i32
  %2360 = bitcast i32 %2359 to float
  %2361 = fmul fast float %2147, 0x3FD80E9D60000000
  %2362 = fmul fast float %2361, %2312
  %2363 = fadd fast float %2360, %2362
  %2364 = bitcast float %2363 to i32
  %2365 = sub nsw i32 2129859010, %2364
  %2366 = bitcast i32 %2365 to float
  %2367 = fmul fast float %2330, %2354
  %2368 = fmul fast float %2367, %2360
  %2369 = fmul fast float %2368, %2366
  %2370 = call float @dx.op.unary.f32(i32 6, float %2302)  ; FAbs(value)
  %2371 = fsub fast float 1.000000e+00, %2370
  %2372 = bitcast float %2371 to i32
  %2373 = sitofp i32 %2372 to float
  %2374 = fmul fast float %2373, 5.000000e+00
  %2375 = fadd fast float %2374, 0xC1EFBF8940000000
  %2376 = fptosi float %2375 to i32
  %2377 = bitcast i32 %2376 to float
  %2378 = fsub fast float 1.000000e+00, %1788
  %2379 = fsub fast float 1.000000e+00, %1789
  %2380 = fsub fast float 1.000000e+00, %1799
  %2381 = fmul fast float %2377, %2378
  %2382 = fmul fast float %2377, %2379
  %2383 = fmul fast float %2377, %2380
  %2384 = fadd fast float %2381, %1788
  %2385 = fadd fast float %2382, %1789
  %2386 = fadd fast float %2383, %1799
  %2387 = fcmp fast ogt float %1165, 0.000000e+00
  br i1 %2387, label %2388, label %2411

; <label>:2388                                    ; preds = %2273
  %2389 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1165, float %2370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2390 = extractvalue %dx.types.ResRet.f32 %2389, 0
  %2391 = extractvalue %dx.types.ResRet.f32 %2389, 1
  %2392 = extractvalue %dx.types.ResRet.f32 %2389, 2
  %2393 = fadd fast float %2390, -5.000000e-01
  %2394 = fadd fast float %2391, -5.000000e-01
  %2395 = fadd fast float %2392, -5.000000e-01
  %2396 = fmul fast float %1788, 4.000000e+00
  %2397 = fmul fast float %2396, %2378
  %2398 = fmul fast float %2397, %2393
  %2399 = fmul fast float %1789, 4.000000e+00
  %2400 = fmul fast float %2399, %2379
  %2401 = fmul fast float %2400, %2394
  %2402 = fmul fast float %1799, 4.000000e+00
  %2403 = fmul fast float %2402, %2380
  %2404 = fmul fast float %2403, %2395
  %2405 = fadd fast float %2398, %2384
  %2406 = fadd fast float %2401, %2385
  %2407 = fadd fast float %2404, %2386
  %2408 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2409 = call float @dx.op.unary.f32(i32 7, float %2406)  ; Saturate(value)
  %2410 = call float @dx.op.unary.f32(i32 7, float %2407)  ; Saturate(value)
  br label %2411

; <label>:2411                                    ; preds = %2388, %2273
  %2412 = phi float [ %2408, %2388 ], [ %2384, %2273 ]
  %2413 = phi float [ %2409, %2388 ], [ %2385, %2273 ]
  %2414 = phi float [ %2410, %2388 ], [ %2386, %2273 ]
  %2415 = fmul fast float %2301, 9.843750e-01
  %2416 = fmul fast float %1797, 9.843750e-01
  %2417 = fadd fast float %2415, 7.812500e-03
  %2418 = fadd fast float %2416, 7.812500e-03
  %2419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2417, float %2418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 2
  %2421 = extractvalue %dx.types.ResRet.f32 %2419, 3
  %2422 = fmul fast float %2420, %1788
  %2423 = fmul fast float %2420, %1789
  %2424 = fmul fast float %2420, %1799
  %2425 = fadd fast float %2422, %2421
  %2426 = fadd fast float %2423, %2421
  %2427 = fadd fast float %2424, %2421
  br i1 %2387, label %2428, label %2451

; <label>:2428                                    ; preds = %2411
  %2429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1165, float %2301, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2430 = extractvalue %dx.types.ResRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.ResRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.ResRet.f32 %2429, 2
  %2433 = fadd fast float %2430, -5.000000e-01
  %2434 = fadd fast float %2431, -5.000000e-01
  %2435 = fadd fast float %2432, -5.000000e-01
  %2436 = fmul fast float %1788, 4.000000e+00
  %2437 = fmul fast float %2436, %2378
  %2438 = fmul fast float %2437, %2433
  %2439 = fmul fast float %1789, 4.000000e+00
  %2440 = fmul fast float %2439, %2379
  %2441 = fmul fast float %2440, %2434
  %2442 = fmul fast float %1799, 4.000000e+00
  %2443 = fmul fast float %2442, %2380
  %2444 = fmul fast float %2443, %2435
  %2445 = fadd fast float %2438, %2425
  %2446 = fadd fast float %2441, %2426
  %2447 = fadd fast float %2444, %2427
  %2448 = call float @dx.op.unary.f32(i32 7, float %2445)  ; Saturate(value)
  %2449 = call float @dx.op.unary.f32(i32 7, float %2446)  ; Saturate(value)
  %2450 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  br label %2451

; <label>:2451                                    ; preds = %2428, %2411
  %2452 = phi float [ %2448, %2428 ], [ %2425, %2411 ]
  %2453 = phi float [ %2449, %2428 ], [ %2426, %2411 ]
  %2454 = phi float [ %2450, %2428 ], [ %2427, %2411 ]
  %2455 = call float @dx.op.binary.f32(i32 35, float %2453, float %2454)  ; FMax(a,b)
  %2456 = call float @dx.op.binary.f32(i32 35, float %2452, float %2455)  ; FMax(a,b)
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = fmul fast float %2412, %2369
  %2459 = fmul fast float %2413, %2369
  %2460 = fmul fast float %2414, %2369
  %2461 = call float @dx.op.dot3.f32(i32 55, float %1791, float %1792, float %1793, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2462 = fcmp fast ogt float %2461, 0x3E7FF19E20000000
  %2463 = fdiv fast float 1.000000e+00, %2461
  %2464 = select i1 %2462, float %2463, float 0.000000e+00
  %2465 = fmul fast float %2464, %1791
  %2466 = fmul fast float %2464, %1792
  %2467 = fmul fast float %2464, %1793
  %2468 = fadd fast float %2465, -1.000000e+00
  %2469 = fadd fast float %2466, -1.000000e+00
  %2470 = fadd fast float %2467, -1.000000e+00
  %2471 = fmul fast float %2468, 5.000000e-01
  %2472 = fmul fast float %2469, 5.000000e-01
  %2473 = fmul fast float %2470, 5.000000e-01
  %2474 = fadd fast float %2471, 1.000000e+00
  %2475 = fadd fast float %2472, 1.000000e+00
  %2476 = fadd fast float %2473, 1.000000e+00
  %2477 = fsub fast float 1.000000e+00, %2302
  %2478 = bitcast float %2477 to i32
  %2479 = sitofp i32 %2478 to float
  %2480 = fmul fast float %2479, 5.000000e+00
  %2481 = fadd fast float %2480, 0xC1EFBF8940000000
  %2482 = fptosi float %2481 to i32
  %2483 = bitcast i32 %2482 to float
  %2484 = fmul fast float %2483, %1164
  %2485 = fmul fast float %2457, %2484
  %2486 = fmul fast float %2485, %2474
  %2487 = fmul fast float %2485, %2475
  %2488 = fmul fast float %2485, %2476
  %2489 = fadd fast float %2486, %2458
  %2490 = fadd fast float %2487, %2459
  %2491 = fadd fast float %2488, %2460
  %2492 = fmul fast float %2290, %1185
  %2493 = fmul fast float %2492, %2308
  %2494 = fmul fast float %2493, %2457
  %2495 = fmul fast float %2291, %1185
  %2496 = fmul fast float %2495, %2308
  %2497 = fmul fast float %2496, %2457
  %2498 = fmul fast float %2292, %1185
  %2499 = fmul fast float %2498, %2308
  %2500 = fmul fast float %2499, %2457
  %2501 = fadd fast float %2494, %2129
  %2502 = fadd fast float %2497, %2130
  %2503 = fadd fast float %2500, %2131
  %2504 = fmul fast float %2493, %2489
  %2505 = fmul fast float %2496, %2490
  %2506 = fmul fast float %2499, %2491
  %2507 = fadd fast float %2504, %2126
  %2508 = fadd fast float %2505, %2127
  %2509 = fadd fast float %2506, %2128
  br label %2204

; <label>:2510                                    ; preds = %2204
  br label %2511

; <label>:2511                                    ; preds = %2510, %2092
  %2512 = phi float [ %2094, %2092 ], [ %2205, %2510 ]
  %2513 = phi float [ %2095, %2092 ], [ %2206, %2510 ]
  %2514 = phi float [ %2096, %2092 ], [ %2207, %2510 ]
  %2515 = phi float [ %2097, %2092 ], [ %2208, %2510 ]
  %2516 = phi float [ %2098, %2092 ], [ %2209, %2510 ]
  %2517 = phi float [ %2099, %2092 ], [ %2210, %2510 ]
  %2518 = add i32 %2093, 1
  %2519 = icmp ugt i32 %2518, %2089
  br i1 %2519, label %2520, label %2092

; <label>:2520                                    ; preds = %2511
  br label %2521

; <label>:2521                                    ; preds = %2520, %2068, %2058
  %2522 = phi float [ %2059, %2058 ], [ %2059, %2068 ], [ %2512, %2520 ]
  %2523 = phi float [ %2060, %2058 ], [ %2060, %2068 ], [ %2513, %2520 ]
  %2524 = phi float [ %2061, %2058 ], [ %2061, %2068 ], [ %2514, %2520 ]
  %2525 = phi float [ %2062, %2058 ], [ %2062, %2068 ], [ %2515, %2520 ]
  %2526 = phi float [ %2063, %2058 ], [ %2063, %2068 ], [ %2516, %2520 ]
  %2527 = phi float [ %2064, %2058 ], [ %2064, %2068 ], [ %2517, %2520 ]
  %2528 = call float @dx.op.unary.f32(i32 24, float %1791)  ; Sqrt(value)
  %2529 = call float @dx.op.unary.f32(i32 24, float %1792)  ; Sqrt(value)
  %2530 = call float @dx.op.unary.f32(i32 24, float %1793)  ; Sqrt(value)
  %2531 = fmul fast float %2528, %2525
  %2532 = fmul fast float %2529, %2526
  %2533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2534 = extractvalue %dx.types.CBufRet.f32 %2533, 0
  br i1 %134, label %2535, label %2556

; <label>:2535                                    ; preds = %2521
  %2536 = fadd fast float %2527, %1162
  %2537 = fmul fast float %2536, %1163
  %2538 = fsub fast float 1.000000e+00, %1163
  %2539 = call float @dx.op.unary.f32(i32 7, float %2538)  ; Saturate(value)
  %2540 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2541 = extractvalue %dx.types.CBufRet.f32 %2540, 3
  %2542 = fmul fast float %2541, %2539
  %2543 = fadd fast float %2542, %2537
  %2544 = fsub fast float 1.000000e+00, %1801
  %2545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2546 = extractvalue %dx.types.CBufRet.f32 %2545, 0
  %2547 = fmul fast float %2546, %2544
  %2548 = fsub fast float %2543, %2547
  %2549 = fadd fast float %2532, %2531
  %2550 = fmul fast float %2534, %2549
  %2551 = extractvalue %dx.types.CBufRet.f32 %2540, 1
  %2552 = fsub fast float %2548, %2551
  %2553 = extractvalue %dx.types.CBufRet.f32 %2540, 2
  %2554 = fmul fast float %2552, %2553
  %2555 = call float @dx.op.unary.f32(i32 7, float %2554)  ; Saturate(value)
  br label %2572

; <label>:2556                                    ; preds = %2521
  %2557 = fmul fast float %2530, %2527
  %2558 = fmul fast float %2534, %2531
  %2559 = fmul fast float %2534, %2532
  %2560 = fmul fast float %2557, %2534
  %2561 = add i32 %28, 116
  %2562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %2561, i32 undef)  ; BufferLoad(srv,index,wot)
  %2563 = extractvalue %dx.types.ResRet.i32 %2562, 0
  %2564 = and i32 %2563, 32
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2572, label %2566

; <label>:2566                                    ; preds = %2556
  %2567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2568 = extractvalue %dx.types.CBufRet.f32 %2567, 0
  %2569 = fmul fast float %2568, 0x3FE99999A0000000
  %2570 = fadd fast float %2568, %2558
  %2571 = fadd fast float %2569, %2560
  br label %2572

; <label>:2572                                    ; preds = %2566, %2556, %2535
  %2573 = phi float [ %2550, %2535 ], [ %2570, %2566 ], [ %2558, %2556 ]
  %2574 = phi float [ %2555, %2535 ], [ %2559, %2566 ], [ %2559, %2556 ]
  %2575 = phi float [ 1.000000e+00, %2535 ], [ %2571, %2566 ], [ %2560, %2556 ]
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 0
  %2578 = fmul fast float %2577, %2523
  %2579 = fmul fast float %2577, %2524
  %2580 = fadd fast float %2523, %2522
  %2581 = select i1 %134, float %2580, float %2522
  %2582 = fmul float %2581, %2577
  %2583 = select i1 %134, float 0.000000e+00, float %2578
  %2584 = select i1 %134, float 0.000000e+00, float %2579
  %2585 = fmul fast float %2573, %2528
  %2586 = fmul fast float %2574, %2529
  %2587 = fmul fast float %2575, %2530
  %2588 = fadd fast float %2582, %2585
  %2589 = fadd fast float %2583, %2586
  %2590 = fadd fast float %2584, %2587
  %2591 = select i1 %134, float %2574, float %2589
  %2592 = select i1 %134, float %2575, float %2590
  %2593 = call float @dx.op.binary.f32(i32 36, float %2588, float 3.225500e+04)  ; FMin(a,b)
  %2594 = call float @dx.op.binary.f32(i32 36, float %2591, float 3.225500e+04)  ; FMin(a,b)
  %2595 = call float @dx.op.binary.f32(i32 36, float %2592, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2593)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2594)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2595)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!41}
!dx.entryPoints = !{!42}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !33, !36}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !15}
!15 = !{i32 0, i32 5}
!16 = !{i32 8, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!17 = !{i32 9, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
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
!41 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
!42 = !{void ()* @ps_main, !"ps_main", !43, !4, !61}
!43 = !{!44, !59, null}
!44 = !{!45, !48, !50, !51, !53, !55, !57, !58}
!45 = !{i32 0, !"SV_Position", i8 9, i8 3, !46, i8 4, i32 1, i8 4, i32 0, i8 0, !47}
!46 = !{i32 0}
!47 = !{i32 3, i32 11}
!48 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 1, i8 0, !49}
!49 = !{i32 3, i32 3}
!50 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!51 = !{i32 3, !"NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 3, i8 0, !52}
!52 = !{i32 3, i32 7}
!53 = !{i32 4, !"TANGENT", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 4, i8 0, !54}
!54 = !{i32 3, i32 15}
!55 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !46, i8 1, i32 1, i8 1, i32 5, i8 0, !56}
!56 = !{i32 3, i32 1}
!57 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !46, i8 1, i32 1, i8 1, i32 5, i8 1, null}
!58 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !46, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!59 = !{!60}
!60 = !{i32 0, !"SV_Target", i8 9, i8 16, !46, i8 0, i32 1, i8 4, i32 0, i8 0, !54}
!61 = !{i32 0, i64 24}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}

