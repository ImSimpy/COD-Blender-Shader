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
; shader hash: 9bf38df0cce605229d059b43bb5fba06
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
;                                   texture     f32          2d     T25     t48,space2     1
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = fmul fast float %45, %39
  %47 = fmul fast float %45, %40
  %48 = fmul fast float %35, %32
  %49 = fmul fast float %36, %31
  %50 = fsub fast float %48, %49
  %51 = fmul fast float %36, %30
  %52 = fmul fast float %34, %32
  %53 = fsub fast float %51, %52
  %54 = fmul fast float %34, %31
  %55 = fmul fast float %35, %30
  %56 = fsub fast float %54, %55
  %57 = fmul fast float %50, %33
  %58 = fmul fast float %53, %33
  %59 = fmul fast float %56, %33
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %63 = fmul fast float %61, 2.000000e+00
  %64 = fmul fast float %63, %46
  %65 = fmul fast float %62, 2.000000e+00
  %66 = fmul fast float %65, %47
  %67 = fsub fast float 1.000000e+00, %64
  %68 = fsub fast float 1.000000e+00, %66
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fmul fast float %67, %70
  %74 = fmul fast float %67, %71
  %75 = fmul fast float %67, %72
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fmul fast float %68, %77
  %81 = fmul fast float %68, %78
  %82 = fmul fast float %68, %79
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fadd fast float %80, %84
  %88 = fadd fast float %87, %73
  %89 = fadd fast float %81, %85
  %90 = fadd fast float %89, %74
  %91 = fadd fast float %82, %86
  %92 = fadd fast float %91, %75
  %93 = fmul fast float %88, %41
  %94 = fmul fast float %90, %41
  %95 = fmul fast float %92, %41
  %96 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %97 = extractvalue %dx.types.CBufRet.f32 %96, 2
  %98 = extractvalue %dx.types.CBufRet.f32 %96, 3
  %99 = fmul fast float %97, %46
  %100 = fmul fast float %98, %47
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = and i32 %102, 114688
  %104 = icmp ne i32 %103, 0
  %105 = select i1 %104, float %99, float 0.000000e+00
  %106 = select i1 %104, float %100, float 0.000000e+00
  %107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %26, float %105, float %106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = fmul fast float %108, 2.550000e+02
  %110 = fptoui float %109 to i32
  %111 = select i1 %104, i32 %110, i32 0
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.i32 %113, 3
  %115 = and i32 %114, 3
  %116 = icmp ne i32 %115, 0
  %117 = and i32 %114, 4
  %118 = icmp ne i32 %117, 0
  %119 = and i1 %116, %118
  br i1 %119, label %120, label %131

; <label>:120                                     ; preds = %0
  %121 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %122 = fmul fast float %121, %47
  %123 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %124 = fmul fast float %123, %46
  %125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %25, float %124, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %126 = extractvalue %dx.types.ResRet.f32 %125, 0
  %127 = fsub fast float 1.000000e+00, %126
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = fcmp fast olt float %127, %129
  br label %134

; <label>:131                                     ; preds = %0
  %132 = icmp eq i32 %117, 0
  %133 = and i1 %116, %132
  br label %134

; <label>:134                                     ; preds = %131, %120
  %135 = phi i1 [ %130, %120 ], [ %133, %131 ]
  %136 = add i32 %29, 60
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = shl i32 %138, 4
  %140 = and i32 %139, 32752
  %141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %140)  ; LegacyF16ToF32(value)
  %142 = lshr i32 %138, 7
  %143 = and i32 %142, 32752
  %144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %143)  ; LegacyF16ToF32(value)
  %145 = lshr i32 %138, 22
  %146 = shl nuw nsw i32 %145, 5
  %147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %146)  ; LegacyF16ToF32(value)
  %148 = add i32 %29, 72
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = and i32 %150, 255
  %152 = uitofp i32 %151 to float
  %153 = fmul fast float %152, 0x3F70101020000000
  %154 = lshr i32 %150, 8
  %155 = and i32 %154, 255
  %156 = uitofp i32 %155 to float
  %157 = fmul fast float %156, 0x3F70101020000000
  %158 = lshr i32 %150, 16
  %159 = and i32 %158, 255
  %160 = uitofp i32 %159 to float
  %161 = fmul fast float %160, 0x3F70101020000000
  %162 = add i32 %29, 36
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = add i32 %29, 96
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = add i32 %29, 24
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = add i32 %29, 28
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = or i32 %173, %170
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %689, label %176

; <label>:176                                     ; preds = %134
  %177 = lshr i32 %167, 16
  %178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %177)  ; LegacyF16ToF32(value)
  %179 = fmul fast float %178, 0x3F50624DE0000000
  %180 = and i32 %167, 65535
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = fmul fast float %181, 0x3F50624DE0000000
  %183 = lshr i32 %164, 16
  %184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %183)  ; LegacyF16ToF32(value)
  %185 = and i32 %164, 65535
  %186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %185)  ; LegacyF16ToF32(value)
  %187 = add i32 %29, 92
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = lshr i32 %189, 16
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = fmul fast float %191, 0x3F50624DE0000000
  %193 = add i32 %29, 40
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = lshr i32 %195, 16
  %197 = and i32 %196, 255
  %198 = lshr i32 %195, 24
  %199 = add i32 %29, 100
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 65535
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = lshr i32 %201, 16
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = add i32 %29, 32
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = lshr i32 %208, 22
  %210 = shl nuw nsw i32 %209, 5
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = shl i32 %208, 4
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %208, 7
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %220 = fmul fast float %219, 1.000000e+03
  %221 = fmul fast float %182, %220
  %222 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %223 = fadd fast float %222, %186
  %224 = fmul fast float %179, %220
  %225 = call float @dx.op.unary.f32(i32 22, float %224)  ; Frc(value)
  %226 = fadd fast float %225, %184
  %227 = fmul fast float %192, %220
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = fmul fast float %228, 0x401921FB60000000
  %230 = fadd fast float %229, %211
  %231 = call float @dx.op.unary.f32(i32 13, float %230)  ; Sin(value)
  %232 = call float @dx.op.unary.f32(i32 12, float %230)  ; Cos(value)
  %233 = fsub fast float -0.000000e+00, %231
  %234 = fadd fast float %37, -5.000000e-01
  %235 = fadd fast float %38, -5.000000e-01
  %236 = fmul fast float %203, %234
  %237 = fmul fast float %205, %235
  %238 = fadd fast float %236, 5.000000e-01
  %239 = fadd fast float %237, 5.000000e-01
  %240 = fmul fast float %214, %238
  %241 = fmul fast float %217, %239
  %242 = fmul fast float %232, %240
  %243 = call float @dx.op.tertiary.f32(i32 46, float %233, float %241, float %242)  ; FMad(a,b,c)
  %244 = fmul fast float %231, %240
  %245 = call float @dx.op.tertiary.f32(i32 46, float %232, float %241, float %244)  ; FMad(a,b,c)
  %246 = fadd fast float %223, %243
  %247 = fadd fast float %226, %245
  %248 = icmp ugt i32 %197, 1
  %249 = icmp ugt i32 %195, 33554431
  %250 = or i1 %249, %248
  br i1 %250, label %251, label %276

; <label>:251                                     ; preds = %176
  %252 = add i32 %29, 84
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = lshr i32 %254, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = fmul fast float %219, %256
  %258 = call float @dx.op.unary.f32(i32 22, float %257)  ; Frc(value)
  %259 = mul nuw nsw i32 %197, %198
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %258, %260
  %262 = call float @dx.op.unary.f32(i32 27, float %261)  ; Round_ni(value)
  %263 = fptoui float %262 to i32
  %264 = urem i32 %263, %197
  %265 = udiv i32 %263, %198
  %266 = call float @dx.op.unary.f32(i32 22, float %246)  ; Frc(value)
  %267 = call float @dx.op.unary.f32(i32 22, float %247)  ; Frc(value)
  %268 = uitofp i32 %264 to float
  %269 = uitofp i32 %265 to float
  %270 = fadd fast float %266, %268
  %271 = fadd fast float %267, %269
  %272 = uitofp i32 %197 to float
  %273 = uitofp i32 %198 to float
  %274 = fdiv fast float %270, %272
  %275 = fdiv fast float %271, %273
  br label %276

; <label>:276                                     ; preds = %251, %176
  %277 = phi float [ %274, %251 ], [ %246, %176 ]
  %278 = phi float [ %275, %251 ], [ %247, %176 ]
  %279 = and i32 %170, 16
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %477, label %281

; <label>:281                                     ; preds = %276
  %282 = add i32 %29, 120
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = add i32 %284, 0
  %286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %286, %dx.types.Handle %42, float %277, float %278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = extractvalue %dx.types.ResRet.f32 %287, 1
  %290 = extractvalue %dx.types.ResRet.f32 %287, 2
  %291 = extractvalue %dx.types.ResRet.f32 %287, 3
  %292 = and i32 %195, 255
  %293 = uitofp i32 %292 to float
  %294 = lshr i32 %195, 8
  %295 = and i32 %294, 255
  %296 = uitofp i32 %295 to float
  %297 = fmul fast float %291, %293
  %298 = fadd fast float %297, %296
  %299 = fmul fast float %298, 0x3F70101000000000
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 512
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %312, label %304

; <label>:304                                     ; preds = %281
  %305 = add i32 %29, 140
  %306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.i32 %306, 0
  %308 = add i32 %307, 0
  %309 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %308, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %310 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %309, %dx.types.Handle %43, float %277, float %278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  br label %312

; <label>:312                                     ; preds = %304, %281
  %313 = phi float [ %311, %304 ], [ 1.000000e+00, %281 ]
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 33554432
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %424, label %318

; <label>:318                                     ; preds = %312
  %319 = add i32 %29, 80
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = add i32 %29, 84
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 65535
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %148, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = lshr i32 %332, 24
  %334 = uitofp i32 %333 to float
  %335 = fmul fast float %334, 0x3F70101020000000
  %336 = and i32 %332, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = lshr i32 %332, 8
  %340 = and i32 %339, 255
  %341 = uitofp i32 %340 to float
  %342 = fmul fast float %341, 0x3F70101020000000
  %343 = lshr i32 %332, 16
  %344 = and i32 %343, 255
  %345 = uitofp i32 %344 to float
  %346 = fmul fast float %345, 0x3F70101020000000
  %347 = add i32 %29, 76
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = lshr i32 %349, 24
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = and i32 %349, 255
  %354 = uitofp i32 %353 to float
  %355 = fmul fast float %354, 0x3F70101020000000
  %356 = lshr i32 %349, 8
  %357 = and i32 %356, 255
  %358 = uitofp i32 %357 to float
  %359 = fmul fast float %358, 0x3F70101020000000
  %360 = lshr i32 %349, 16
  %361 = and i32 %360, 255
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = bitcast float %288 to i32
  %365 = ashr i32 %364, 1
  %366 = sub nsw i32 1597463174, %365
  %367 = bitcast i32 %366 to float
  %368 = fmul fast float %288, 5.000000e-01
  %369 = fmul fast float %367, %367
  %370 = fmul fast float %369, %368
  %371 = fsub fast float 1.500000e+00, %370
  %372 = fmul fast float %367, %288
  %373 = fmul fast float %372, %371
  %374 = bitcast float %289 to i32
  %375 = ashr i32 %374, 1
  %376 = sub nsw i32 1597463174, %375
  %377 = bitcast i32 %376 to float
  %378 = fmul fast float %289, 5.000000e-01
  %379 = fmul fast float %377, %377
  %380 = fmul fast float %379, %378
  %381 = fsub fast float 1.500000e+00, %380
  %382 = fmul fast float %377, %289
  %383 = fmul fast float %382, %381
  %384 = bitcast float %290 to i32
  %385 = ashr i32 %384, 1
  %386 = sub nsw i32 1597463174, %385
  %387 = bitcast i32 %386 to float
  %388 = fmul fast float %290, 5.000000e-01
  %389 = fmul fast float %387, %387
  %390 = fmul fast float %389, %388
  %391 = fsub fast float 1.500000e+00, %390
  %392 = fmul fast float %387, %290
  %393 = fmul fast float %392, %391
  %394 = fsub fast float %373, %355
  %395 = fsub fast float %383, %359
  %396 = fsub fast float %393, %363
  %397 = fmul fast float %394, %323
  %398 = fmul fast float %395, %325
  %399 = fmul fast float %396, %330
  %400 = fadd fast float %397, %338
  %401 = fadd fast float %398, %342
  %402 = fadd fast float %399, %346
  %403 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %404 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %405 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %406 = fmul fast float %403, %403
  %407 = fmul fast float %404, %404
  %408 = fmul fast float %405, %405
  %409 = fsub fast float %406, %288
  %410 = fsub fast float %407, %289
  %411 = fsub fast float %408, %290
  %412 = fmul fast float %409, %313
  %413 = fmul fast float %410, %313
  %414 = fmul fast float %411, %313
  %415 = fadd fast float %412, %288
  %416 = fadd fast float %413, %289
  %417 = fadd fast float %414, %290
  %418 = fadd fast float %335, %299
  %419 = fsub fast float %418, %352
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = fsub fast float %420, %299
  %422 = fmul fast float %421, %313
  %423 = fadd fast float %422, %299
  br label %477

; <label>:424                                     ; preds = %312
  %425 = and i32 %315, 134217728
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %461, label %427

; <label>:427                                     ; preds = %424
  %428 = call float @dx.op.unary.f32(i32 24, float %153)  ; Sqrt(value)
  %429 = call float @dx.op.unary.f32(i32 24, float %157)  ; Sqrt(value)
  %430 = call float @dx.op.unary.f32(i32 24, float %161)  ; Sqrt(value)
  %431 = fadd fast float %428, -5.000000e-01
  %432 = fadd fast float %429, -5.000000e-01
  %433 = fadd fast float %430, -5.000000e-01
  %434 = fmul fast float %431, %313
  %435 = fmul fast float %432, %313
  %436 = fmul fast float %433, %313
  %437 = fadd fast float %434, 5.000000e-01
  %438 = fadd fast float %435, 5.000000e-01
  %439 = fadd fast float %436, 5.000000e-01
  %440 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %441 = call float @dx.op.unary.f32(i32 24, float %289)  ; Sqrt(value)
  %442 = call float @dx.op.unary.f32(i32 24, float %290)  ; Sqrt(value)
  %443 = fmul fast float %437, 2.000000e+00
  %444 = fsub fast float 1.000000e+00, %443
  %445 = fmul fast float %444, %440
  %446 = fadd fast float %445, %443
  %447 = fmul fast float %446, %440
  %448 = fmul fast float %438, 2.000000e+00
  %449 = fsub fast float 1.000000e+00, %448
  %450 = fmul fast float %449, %441
  %451 = fadd fast float %450, %448
  %452 = fmul fast float %451, %441
  %453 = fmul fast float %439, 2.000000e+00
  %454 = fsub fast float 1.000000e+00, %453
  %455 = fmul fast float %454, %442
  %456 = fadd fast float %455, %453
  %457 = fmul fast float %456, %442
  %458 = fmul fast float %447, %447
  %459 = fmul fast float %452, %452
  %460 = fmul fast float %457, %457
  br label %477

; <label>:461                                     ; preds = %424
  %462 = fmul fast float %153, %153
  %463 = fmul fast float %157, %157
  %464 = fmul fast float %161, %161
  %465 = fadd fast float %462, -1.000000e+00
  %466 = fadd fast float %463, -1.000000e+00
  %467 = fadd fast float %464, -1.000000e+00
  %468 = fmul fast float %313, %465
  %469 = fmul fast float %313, %466
  %470 = fmul fast float %313, %467
  %471 = fadd fast float %468, 1.000000e+00
  %472 = fadd fast float %469, 1.000000e+00
  %473 = fadd fast float %470, 1.000000e+00
  %474 = fmul fast float %471, %288
  %475 = fmul fast float %472, %289
  %476 = fmul fast float %473, %290
  br label %477

; <label>:477                                     ; preds = %461, %427, %318, %276
  %478 = phi float [ %423, %318 ], [ %299, %427 ], [ %299, %461 ], [ 0x3FA23C0BE0000000, %276 ]
  %479 = phi float [ %415, %318 ], [ %458, %427 ], [ %474, %461 ], [ 1.000000e+00, %276 ]
  %480 = phi float [ %416, %318 ], [ %459, %427 ], [ %475, %461 ], [ 1.000000e+00, %276 ]
  %481 = phi float [ %417, %318 ], [ %460, %427 ], [ %476, %461 ], [ 1.000000e+00, %276 ]
  %482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.i32 %482, 1
  %484 = and i32 %483, 1
  %485 = icmp ne i32 %484, 0
  %486 = add i32 %29, 116
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 32
  %490 = icmp ne i32 %489, 0
  %491 = and i1 %485, %490
  %492 = select i1 %491, float 1.000000e+00, float %479
  %493 = select i1 %491, float 0x3FD3333340000000, float %480
  %494 = select i1 %491, float 0x3FD3333340000000, float %481
  %495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %496 = extractvalue %dx.types.ResRet.i32 %495, 0
  %497 = and i32 %496, 32
  %498 = icmp eq i32 %497, 0
  br i1 %498, label %571, label %499

; <label>:499                                     ; preds = %477
  %500 = add i32 %29, 44
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %500, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = add i32 %29, 124
  %504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %503, i32 undef)  ; BufferLoad(srv,index,wot)
  %505 = extractvalue %dx.types.ResRet.i32 %504, 0
  %506 = add i32 %505, 0
  %507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %508 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %507, %dx.types.Handle %42, float %277, float %278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = and i32 %502, 255
  %514 = uitofp i32 %513 to float
  %515 = lshr i32 %502, 8
  %516 = and i32 %515, 255
  %517 = uitofp i32 %516 to float
  %518 = lshr i32 %502, 16
  %519 = and i32 %518, 255
  %520 = uitofp i32 %519 to float
  %521 = fmul fast float %520, 0x3F70101000000000
  %522 = fmul fast float %509, %514
  %523 = fadd fast float %522, %517
  %524 = fmul fast float %523, 0x3F70101000000000
  %525 = fadd fast float %510, -5.000000e-01
  %526 = fadd fast float %512, -5.000000e-01
  %527 = fmul fast float %525, %521
  %528 = fmul fast float %526, %521
  %529 = fadd fast float %527, 5.000000e-01
  %530 = fadd fast float %528, 5.000000e-01
  %531 = fmul fast float %529, 2.000000e+00
  %532 = fadd fast float %531, -1.000000e+00
  %533 = fmul fast float %530, 2.000000e+00
  %534 = fadd fast float %533, -1.000000e+00
  %535 = fadd fast float %532, %534
  %536 = fmul fast float %535, 5.000000e-01
  %537 = fsub fast float %532, %534
  %538 = fmul fast float %537, 5.000000e-01
  %539 = call float @dx.op.unary.f32(i32 6, float %536)  ; FAbs(value)
  %540 = fsub fast float 1.000000e+00, %539
  %541 = call float @dx.op.unary.f32(i32 6, float %538)  ; FAbs(value)
  %542 = fsub fast float %540, %541
  %543 = call float @dx.op.dot3.f32(i32 55, float %536, float %538, float %542, float %536, float %538, float %542)  ; Dot3(ax,ay,az,bx,by,bz)
  %544 = call float @dx.op.unary.f32(i32 25, float %543)  ; Rsqrt(value)
  %545 = fmul fast float %536, %544
  %546 = fmul fast float %538, %544
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 67108864
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %567, label %551

; <label>:551                                     ; preds = %499
  %552 = add i32 %29, 88
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = and i32 %558, 65535
  %560 = call float @dx.op.legacyF16ToF32(i32 131, i32 %559)  ; LegacyF16ToF32(value)
  %561 = lshr i32 %554, 16
  %562 = call float @dx.op.legacyF16ToF32(i32 131, i32 %561)  ; LegacyF16ToF32(value)
  %563 = fsub fast float %524, %562
  %564 = fmul fast float %563, %556
  %565 = fadd fast float %564, %560
  %566 = call float @dx.op.unary.f32(i32 7, float %565)  ; Saturate(value)
  br label %567

; <label>:567                                     ; preds = %551, %499
  %568 = phi float [ %566, %551 ], [ %524, %499 ]
  %569 = call float @dx.op.dot2.f32(i32 54, float %545, float %546, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %570 = call float @dx.op.dot2.f32(i32 54, float %545, float %546, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %571

; <label>:571                                     ; preds = %567, %477
  %572 = phi float [ %568, %567 ], [ 0x3FD6666660000000, %477 ]
  %573 = phi float [ %569, %567 ], [ 0.000000e+00, %477 ]
  %574 = phi float [ %570, %567 ], [ 0.000000e+00, %477 ]
  %575 = phi float [ %511, %567 ], [ 1.000000e+00, %477 ]
  %576 = add i32 %29, 64
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = lshr i32 %578, 22
  %580 = shl nuw nsw i32 %579, 5
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %583, 64
  %585 = icmp eq i32 %584, 0
  br i1 %585, label %619, label %586

; <label>:586                                     ; preds = %571
  %587 = add i32 %29, 128
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = add i32 %589, 0
  %591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.i32 %592, 0
  %594 = and i32 %593, 131072
  %595 = icmp eq i32 %594, 0
  %596 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %591, %dx.types.Handle %42, float %277, float %278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %597 = extractvalue %dx.types.ResRet.f32 %596, 0
  %598 = extractvalue %dx.types.ResRet.f32 %596, 1
  %599 = extractvalue %dx.types.ResRet.f32 %596, 2
  %600 = fmul fast float %597, %141
  %601 = fmul fast float %598, %144
  %602 = fmul fast float %599, %147
  br i1 %595, label %609, label %603

; <label>:603                                     ; preds = %586
  %604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %605 = extractvalue %dx.types.CBufRet.f32 %604, 0
  %606 = fmul fast float %605, %600
  %607 = fmul fast float %605, %601
  %608 = fmul fast float %605, %602
  br label %609

; <label>:609                                     ; preds = %603, %586
  %610 = phi float [ %606, %603 ], [ %600, %586 ]
  %611 = phi float [ %607, %603 ], [ %601, %586 ]
  %612 = phi float [ %608, %603 ], [ %602, %586 ]
  %613 = fmul fast float %610, %581
  %614 = select i1 %135, float %613, float %610
  %615 = call float @dx.op.dot3.f32(i32 55, float %614, float %611, float %612, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %616 = select i1 %135, float 0.000000e+00, float %610
  %617 = select i1 %135, float %615, float %611
  %618 = select i1 %135, float 0.000000e+00, float %612
  br label %619

; <label>:619                                     ; preds = %609, %571
  %620 = phi float [ %616, %609 ], [ 0.000000e+00, %571 ]
  %621 = phi float [ %617, %609 ], [ 0.000000e+00, %571 ]
  %622 = phi float [ %618, %609 ], [ 0.000000e+00, %571 ]
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 10240
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %671, label %627

; <label>:627                                     ; preds = %619
  %628 = add i32 %29, 144
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %632, %dx.types.Handle %43, float %277, float %278, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %634 = extractvalue %dx.types.ResRet.f32 %633, 1
  %635 = extractvalue %dx.types.ResRet.f32 %633, 3
  %636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %637 = extractvalue %dx.types.ResRet.i32 %636, 0
  %638 = and i32 %637, 1048576
  %639 = icmp ne i32 %638, 0
  %640 = and i32 %637, 8192
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %657, label %642

; <label>:642                                     ; preds = %627
  %643 = extractvalue %dx.types.ResRet.f32 %633, 2
  %644 = select i1 %639, float %643, float %634
  %645 = extractvalue %dx.types.ResRet.f32 %633, 0
  %646 = select i1 %639, float %645, float %634
  %647 = add i32 %29, 48
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = lshr i32 %649, 16
  %651 = and i32 %650, 255
  %652 = uitofp i32 %651 to float
  %653 = fmul fast float %652, 0x3F80101020000000
  %654 = fmul fast float %653, %646
  %655 = fmul fast float %653, %634
  %656 = fmul fast float %653, %644
  br label %657

; <label>:657                                     ; preds = %642, %627
  %658 = phi float [ %654, %642 ], [ 0.000000e+00, %627 ]
  %659 = phi float [ %655, %642 ], [ 0.000000e+00, %627 ]
  %660 = phi float [ %656, %642 ], [ 0.000000e+00, %627 ]
  %661 = and i32 %637, 2048
  %662 = icmp eq i32 %661, 0
  br i1 %662, label %671, label %663

; <label>:663                                     ; preds = %657
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = shl i32 %665, 4
  %667 = and i32 %666, 32752
  %668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %667)  ; LegacyF16ToF32(value)
  %669 = fmul fast float %668, %635
  %670 = call float @dx.op.binary.f32(i32 35, float %669, float 0x3F70101020000000)  ; FMax(a,b)
  br label %671

; <label>:671                                     ; preds = %663, %657, %619
  %672 = phi float [ %658, %663 ], [ %658, %657 ], [ 0.000000e+00, %619 ]
  %673 = phi float [ %659, %663 ], [ %659, %657 ], [ 0.000000e+00, %619 ]
  %674 = phi float [ %660, %663 ], [ %660, %657 ], [ 0.000000e+00, %619 ]
  %675 = phi float [ %670, %663 ], [ 0x3F70101020000000, %657 ], [ 0x3F70101020000000, %619 ]
  %676 = add i32 %29, 48
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = and i32 %678, 255
  %680 = uitofp i32 %679 to float
  %681 = lshr i32 %678, 8
  %682 = and i32 %681, 255
  %683 = uitofp i32 %682 to float
  %684 = call float @dx.op.dot3.f32(i32 55, float %492, float %493, float %494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %685 = fmul fast float %683, %684
  %686 = fadd fast float %685, %680
  %687 = fmul fast float %686, 0x3F70101020000000
  %688 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  br label %689

; <label>:689                                     ; preds = %671, %134
  %690 = phi float [ 0.000000e+00, %134 ], [ %573, %671 ]
  %691 = phi float [ 0.000000e+00, %134 ], [ %574, %671 ]
  %692 = phi float [ 0.000000e+00, %134 ], [ %492, %671 ]
  %693 = phi float [ 0.000000e+00, %134 ], [ %493, %671 ]
  %694 = phi float [ 0.000000e+00, %134 ], [ %494, %671 ]
  %695 = phi float [ 0.000000e+00, %134 ], [ %620, %671 ]
  %696 = phi float [ 0.000000e+00, %134 ], [ %621, %671 ]
  %697 = phi float [ 0.000000e+00, %134 ], [ %622, %671 ]
  %698 = phi float [ 0.000000e+00, %134 ], [ %672, %671 ]
  %699 = phi float [ 0.000000e+00, %134 ], [ %673, %671 ]
  %700 = phi float [ 0.000000e+00, %134 ], [ %674, %671 ]
  %701 = phi float [ 0.000000e+00, %134 ], [ %478, %671 ]
  %702 = phi float [ 0.000000e+00, %134 ], [ 1.000000e+00, %671 ]
  %703 = phi float [ 0.000000e+00, %134 ], [ %572, %671 ]
  %704 = phi float [ 0.000000e+00, %134 ], [ %575, %671 ]
  %705 = phi float [ 0.000000e+00, %134 ], [ %675, %671 ]
  %706 = phi float [ 0.000000e+00, %134 ], [ %688, %671 ]
  %707 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %708 = extractvalue %dx.types.CBufRet.f32 %707, 0
  %709 = call float @dx.op.dot2.f32(i32 54, float %690, float %691, float %690, float %691)  ; Dot2(ax,ay,bx,by)
  %710 = fmul fast float %709, 0x3FE3333340000000
  %711 = fsub fast float 1.000000e+00, %710
  %712 = call float @dx.op.dot3.f32(i32 55, float %690, float %691, float %711, float %690, float %691, float %711)  ; Dot3(ax,ay,az,bx,by,bz)
  %713 = call float @dx.op.unary.f32(i32 25, float %712)  ; Rsqrt(value)
  %714 = fmul fast float %713, %690
  %715 = fmul fast float %713, %691
  %716 = fmul fast float %711, %713
  %717 = fmul fast float %716, %34
  %718 = fmul fast float %716, %35
  %719 = fmul fast float %716, %36
  %720 = fmul fast float %714, %30
  %721 = fmul fast float %714, %31
  %722 = fmul fast float %714, %32
  %723 = fadd fast float %717, %720
  %724 = fadd fast float %718, %721
  %725 = fadd fast float %719, %722
  %726 = fmul fast float %57, %715
  %727 = fmul fast float %58, %715
  %728 = fmul fast float %59, %715
  %729 = fadd fast float %723, %726
  %730 = fadd fast float %724, %727
  %731 = fadd fast float %725, %728
  %732 = call float @dx.op.dot3.f32(i32 55, float %729, float %730, float %731, float %729, float %730, float %731)  ; Dot3(ax,ay,az,bx,by,bz)
  %733 = call float @dx.op.unary.f32(i32 25, float %732)  ; Rsqrt(value)
  %734 = fmul fast float %729, %733
  %735 = fmul fast float %730, %733
  %736 = fmul fast float %731, %733
  %737 = call float @dx.op.unary.f32(i32 83, float %93)  ; DerivCoarseX(value)
  %738 = call float @dx.op.unary.f32(i32 83, float %94)  ; DerivCoarseX(value)
  %739 = call float @dx.op.unary.f32(i32 83, float %95)  ; DerivCoarseX(value)
  %740 = call float @dx.op.unary.f32(i32 84, float %93)  ; DerivCoarseY(value)
  %741 = call float @dx.op.unary.f32(i32 84, float %94)  ; DerivCoarseY(value)
  %742 = call float @dx.op.unary.f32(i32 84, float %95)  ; DerivCoarseY(value)
  %743 = fadd fast float %737, %93
  %744 = fadd fast float %738, %94
  %745 = fadd fast float %739, %95
  %746 = fadd fast float %740, %93
  %747 = fadd fast float %741, %94
  %748 = fadd fast float %742, %95
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 0
  %751 = extractvalue %dx.types.CBufRet.f32 %749, 1
  %752 = extractvalue %dx.types.CBufRet.f32 %749, 2
  %753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %754 = extractvalue %dx.types.CBufRet.f32 %753, 2
  %755 = extractvalue %dx.types.CBufRet.f32 %753, 3
  %756 = fmul fast float %750, %46
  %757 = fmul fast float %756, %754
  %758 = fmul fast float %751, %47
  %759 = fmul fast float %758, %755
  %760 = fptoui float %757 to i32
  %761 = fptoui float %759 to i32
  %762 = fadd fast float %750, -1.000000e+00
  %763 = fadd fast float %751, -1.000000e+00
  %764 = fptoui float %762 to i32
  %765 = fptoui float %763 to i32
  %766 = call i32 @dx.op.binary.i32(i32 40, i32 %760, i32 %764)  ; UMin(a,b)
  %767 = call i32 @dx.op.binary.i32(i32 40, i32 %761, i32 %765)  ; UMin(a,b)
  %768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %769 = extractvalue %dx.types.CBufRet.f32 %768, 2
  %770 = extractvalue %dx.types.CBufRet.f32 %768, 3
  %771 = fmul fast float %769, %41
  %772 = fsub fast float %771, %770
  %773 = fadd fast float %752, -1.000000e+00
  %774 = call float @dx.op.binary.f32(i32 36, float %772, float %773)  ; FMin(a,b)
  %775 = fptoui float %774 to i32
  %776 = fptoui float %750 to i32
  %777 = fptoui float %751 to i32
  %778 = mul i32 %775, %777
  %779 = add i32 %778, %767
  %780 = mul i32 %779, %776
  %781 = add i32 %780, %766
  %782 = shl i32 %781, 2
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 1023
  %786 = lshr i32 %784, 10
  %787 = icmp eq i32 %785, 0
  br i1 %787, label %1264, label %788

; <label>:788                                     ; preds = %689
  %789 = and i32 %784, 1023
  br label %790

; <label>:790                                     ; preds = %919, %788
  %791 = phi float [ %920, %919 ], [ 0.000000e+00, %788 ]
  %792 = phi float [ %921, %919 ], [ %708, %788 ]
  %793 = phi float [ %922, %919 ], [ %706, %788 ]
  %794 = phi float [ %923, %919 ], [ 0.000000e+00, %788 ]
  %795 = phi float [ %924, %919 ], [ 0.000000e+00, %788 ]
  %796 = phi float [ %925, %919 ], [ %698, %788 ]
  %797 = phi float [ %926, %919 ], [ %699, %788 ]
  %798 = phi float [ %927, %919 ], [ %700, %788 ]
  %799 = phi float [ %928, %919 ], [ %695, %788 ]
  %800 = phi float [ %929, %919 ], [ %696, %788 ]
  %801 = phi float [ %930, %919 ], [ %697, %788 ]
  %802 = phi float [ %931, %919 ], [ %734, %788 ]
  %803 = phi float [ %932, %919 ], [ %735, %788 ]
  %804 = phi float [ %933, %919 ], [ %736, %788 ]
  %805 = phi float [ %934, %919 ], [ %704, %788 ]
  %806 = phi float [ %935, %919 ], [ %703, %788 ]
  %807 = phi float [ %936, %919 ], [ 0.000000e+00, %788 ]
  %808 = phi float [ %937, %919 ], [ %701, %788 ]
  %809 = phi float [ %938, %919 ], [ %692, %788 ]
  %810 = phi float [ %939, %919 ], [ %693, %788 ]
  %811 = phi float [ %940, %919 ], [ %694, %788 ]
  %812 = phi i32 [ %869, %919 ], [ 0, %788 ]
  %813 = add nuw nsw i32 %812, %786
  %814 = shl i32 %813, 2
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = shl i32 %816, 8
  %818 = or i32 %817, 48
  %819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = extractvalue %dx.types.ResRet.f32 %819, 3
  %824 = or i32 %817, 64
  %825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.i32 %825, 0
  %827 = extractvalue %dx.types.ResRet.i32 %825, 1
  %828 = or i32 %817, 80
  %829 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.f32 %829, 2
  %831 = extractvalue %dx.types.ResRet.f32 %829, 3
  %832 = or i32 %817, 96
  %833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.f32 %833, 0
  %835 = extractvalue %dx.types.ResRet.f32 %833, 1
  %836 = extractvalue %dx.types.ResRet.f32 %833, 2
  %837 = extractvalue %dx.types.ResRet.f32 %833, 3
  %838 = or i32 %817, 112
  %839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.f32 %839, 2
  %841 = or i32 %817, 128
  %842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %841, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.f32 %842, 0
  %844 = extractvalue %dx.types.ResRet.f32 %842, 1
  %845 = extractvalue %dx.types.ResRet.f32 %842, 2
  %846 = extractvalue %dx.types.ResRet.f32 %842, 3
  %847 = or i32 %817, 144
  %848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = extractvalue %dx.types.ResRet.f32 %848, 3
  %853 = or i32 %817, 160
  %854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = extractvalue %dx.types.ResRet.f32 %854, 3
  %859 = or i32 %817, 192
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = or i32 %817, 208
  %863 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %862, i32 undef)  ; BufferLoad(srv,index,wot)
  %864 = extractvalue %dx.types.ResRet.f32 %863, 0
  %865 = or i32 %817, 248
  %866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = add nuw nsw i32 %812, 1
  %870 = bitcast float %823 to i32
  %871 = and i32 %870, 2560
  %872 = icmp eq i32 %871, 0
  %873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.f32 %873, 0
  %875 = extractvalue %dx.types.ResRet.f32 %873, 1
  %876 = extractvalue %dx.types.ResRet.f32 %873, 2
  %877 = extractvalue %dx.types.ResRet.f32 %873, 3
  %878 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float %93, float %94, float %95, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %879 = or i32 %817, 16
  %880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.f32 %880, 0
  %882 = extractvalue %dx.types.ResRet.f32 %880, 1
  %883 = extractvalue %dx.types.ResRet.f32 %880, 2
  %884 = extractvalue %dx.types.ResRet.f32 %880, 3
  %885 = call float @dx.op.dot4.f32(i32 56, float %881, float %882, float %883, float %884, float %93, float %94, float %95, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %886 = or i32 %817, 32
  %887 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.f32 %887, 0
  %889 = extractvalue %dx.types.ResRet.f32 %887, 1
  %890 = extractvalue %dx.types.ResRet.f32 %887, 2
  %891 = extractvalue %dx.types.ResRet.f32 %887, 3
  %892 = call float @dx.op.dot4.f32(i32 56, float %888, float %889, float %890, float %891, float %93, float %94, float %95, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %893 = call float @dx.op.unary.f32(i32 27, float %878)  ; Round_ni(value)
  %894 = call float @dx.op.unary.f32(i32 6, float %893)  ; FAbs(value)
  %895 = call float @dx.op.unary.f32(i32 27, float %885)  ; Round_ni(value)
  %896 = call float @dx.op.unary.f32(i32 6, float %895)  ; FAbs(value)
  %897 = call float @dx.op.unary.f32(i32 6, float %892)  ; FAbs(value)
  %898 = call float @dx.op.unary.f32(i32 27, float %897)  ; Round_ni(value)
  %899 = fadd fast float %896, %894
  %900 = fadd fast float %899, %898
  %901 = fcmp fast oeq float %900, 0.000000e+00
  %902 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float %743, float %744, float %745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %903 = call float @dx.op.dot4.f32(i32 56, float %881, float %882, float %883, float %884, float %743, float %744, float %745, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %904 = call float @dx.op.dot4.f32(i32 56, float %874, float %875, float %876, float %877, float %746, float %747, float %748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %905 = call float @dx.op.dot4.f32(i32 56, float %881, float %882, float %883, float %884, float %746, float %747, float %748, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %906 = fsub fast float %902, %878
  %907 = fsub fast float %904, %878
  %908 = fsub fast float %903, %885
  %909 = fsub fast float %905, %885
  %910 = call float @dx.op.dot3.f32(i32 55, float %820, float %821, float %822, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %912 = extractvalue %dx.types.CBufRet.f32 %911, 2
  %913 = fadd fast float %912, %910
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  %915 = extractvalue %dx.types.CBufRet.f32 %911, 0
  %916 = fcmp fast ogt float %914, %915
  %917 = and i1 %901, %916
  %918 = and i1 %872, %917
  br i1 %918, label %942, label %919

; <label>:919                                     ; preds = %1250, %1023, %942, %790
  %920 = phi float [ %791, %942 ], [ %1026, %1023 ], [ %1026, %1250 ], [ %791, %790 ]
  %921 = phi float [ %792, %942 ], [ %792, %1023 ], [ %1226, %1250 ], [ %792, %790 ]
  %922 = phi float [ %793, %942 ], [ %793, %1023 ], [ %1224, %1250 ], [ %793, %790 ]
  %923 = phi float [ %794, %942 ], [ %794, %1023 ], [ %1150, %1250 ], [ %794, %790 ]
  %924 = phi float [ %795, %942 ], [ %795, %1023 ], [ %1148, %1250 ], [ %795, %790 ]
  %925 = phi float [ %796, %942 ], [ %796, %1023 ], [ %1194, %1250 ], [ %796, %790 ]
  %926 = phi float [ %797, %942 ], [ %797, %1023 ], [ %1195, %1250 ], [ %797, %790 ]
  %927 = phi float [ %798, %942 ], [ %798, %1023 ], [ %1196, %1250 ], [ %798, %790 ]
  %928 = phi float [ %799, %942 ], [ %799, %1023 ], [ %1260, %1250 ], [ %799, %790 ]
  %929 = phi float [ %800, %942 ], [ %800, %1023 ], [ %1261, %1250 ], [ %800, %790 ]
  %930 = phi float [ %801, %942 ], [ %801, %1023 ], [ %1262, %1250 ], [ %801, %790 ]
  %931 = phi float [ %802, %942 ], [ %802, %1023 ], [ %1129, %1250 ], [ %802, %790 ]
  %932 = phi float [ %803, %942 ], [ %803, %1023 ], [ %1130, %1250 ], [ %803, %790 ]
  %933 = phi float [ %804, %942 ], [ %804, %1023 ], [ %1131, %1250 ], [ %804, %790 ]
  %934 = phi float [ %805, %942 ], [ %805, %1023 ], [ %1204, %1250 ], [ %805, %790 ]
  %935 = phi float [ %806, %942 ], [ %806, %1023 ], [ %1201, %1250 ], [ %806, %790 ]
  %936 = phi float [ %807, %942 ], [ %807, %1023 ], [ %1198, %1250 ], [ %807, %790 ]
  %937 = phi float [ %808, %942 ], [ %808, %1023 ], [ %1146, %1250 ], [ %808, %790 ]
  %938 = phi float [ %809, %942 ], [ %809, %1023 ], [ %1141, %1250 ], [ %809, %790 ]
  %939 = phi float [ %810, %942 ], [ %810, %1023 ], [ %1142, %1250 ], [ %810, %790 ]
  %940 = phi float [ %811, %942 ], [ %811, %1023 ], [ %1143, %1250 ], [ %811, %790 ]
  %941 = icmp eq i32 %869, %789
  br i1 %941, label %1263, label %790

; <label>:942                                     ; preds = %790
  %943 = extractvalue %dx.types.ResRet.f32 %839, 3
  %944 = extractvalue %dx.types.ResRet.f32 %839, 1
  %945 = extractvalue %dx.types.ResRet.f32 %839, 0
  %946 = extractvalue %dx.types.ResRet.f32 %829, 1
  %947 = extractvalue %dx.types.ResRet.f32 %829, 0
  %948 = extractvalue %dx.types.ResRet.i32 %825, 3
  %949 = extractvalue %dx.types.ResRet.i32 %825, 2
  %950 = add i32 %948, 0
  %951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %950, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %952 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %953 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %951, %dx.types.Handle %952, float %878, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float %906, float %908, float undef, float %907, float %909, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = fmul fast float %954, %947
  %956 = fadd fast float %955, %946
  %957 = call float @dx.op.unary.f32(i32 7, float %956)  ; Saturate(value)
  %958 = fmul fast float %878, %834
  %959 = call float @dx.op.tertiary.f32(i32 46, float %835, float %885, float %958)  ; FMad(a,b,c)
  %960 = fadd fast float %959, %945
  %961 = fmul fast float %878, %836
  %962 = call float @dx.op.tertiary.f32(i32 46, float %837, float %885, float %961)  ; FMad(a,b,c)
  %963 = fadd fast float %962, %944
  %964 = fmul fast float %906, %834
  %965 = call float @dx.op.tertiary.f32(i32 46, float %835, float %908, float %964)  ; FMad(a,b,c)
  %966 = fmul fast float %906, %836
  %967 = call float @dx.op.tertiary.f32(i32 46, float %837, float %908, float %966)  ; FMad(a,b,c)
  %968 = fmul fast float %907, %834
  %969 = call float @dx.op.tertiary.f32(i32 46, float %835, float %909, float %968)  ; FMad(a,b,c)
  %970 = fmul fast float %907, %836
  %971 = call float @dx.op.tertiary.f32(i32 46, float %837, float %909, float %970)  ; FMad(a,b,c)
  %972 = add i32 %949, 0
  %973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %972, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %974 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %973, %dx.types.Handle %952, float %960, float %963, float undef, float undef, i32 0, i32 0, i32 undef, float %965, float %967, float undef, float %969, float %971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %975 = extractvalue %dx.types.ResRet.f32 %974, 0
  %976 = and i32 %870, 1024
  %977 = icmp ne i32 %976, 0
  %978 = fcmp fast ogt float %975, 0x3FE0101020000000
  %979 = uitofp i1 %978 to float
  %980 = select i1 %977, float %979, float %975
  %981 = and i32 %870, 8192
  %982 = icmp ne i32 %981, 0
  %983 = select i1 %982, float %943, float 1.000000e+00
  %984 = fmul fast float %878, 2.000000e+00
  %985 = fadd fast float %984, -1.000000e+00
  %986 = call float @dx.op.unary.f32(i32 6, float %985)  ; FAbs(value)
  %987 = fmul fast float %986, %867
  %988 = fsub fast float %987, %867
  %989 = call float @dx.op.unary.f32(i32 7, float %988)  ; Saturate(value)
  %990 = fmul fast float %885, 2.000000e+00
  %991 = fadd fast float %990, -1.000000e+00
  %992 = call float @dx.op.unary.f32(i32 6, float %991)  ; FAbs(value)
  %993 = fmul fast float %992, %868
  %994 = fsub fast float %993, %868
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = fmul fast float %897, %830
  %997 = fsub fast float %996, %830
  %998 = call float @dx.op.unary.f32(i32 7, float %997)  ; Saturate(value)
  %999 = fmul fast float %957, %983
  %1000 = fmul fast float %999, %954
  %1001 = fmul fast float %1000, %989
  %1002 = fmul fast float %1001, %980
  %1003 = fmul fast float %1002, %995
  %1004 = fmul fast float %1003, %998
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1008 = fsub fast float %914, %1007
  %1009 = fmul fast float %1008, %1006
  %1010 = call float @dx.op.unary.f32(i32 7, float %1009)  ; Saturate(value)
  %1011 = fmul fast float %1004, %831
  %1012 = fadd fast float %1004, %831
  %1013 = fmul fast float %1012, %840
  %1014 = fsub fast float %1013, %840
  %1015 = call float @dx.op.unary.f32(i32 7, float %1014)  ; Saturate(value)
  %1016 = and i32 %870, 128
  %1017 = icmp ne i32 %1016, 0
  %1018 = select i1 %1017, float %1015, float %1011
  %1019 = fmul fast float %1018, %1010
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = fcmp fast ugt float %1019, %1021
  br i1 %1022, label %1023, label %919

; <label>:1023                                    ; preds = %942
  %1024 = select i1 %982, float %1019, float 0.000000e+00
  %1025 = fadd fast float %1024, %791
  %1026 = call float @dx.op.unary.f32(i32 7, float %1025)  ; Saturate(value)
  br i1 %982, label %919, label %1027

; <label>:1027                                    ; preds = %1023
  %1028 = and i32 %870, 4
  %1029 = and i32 %870, 8
  %1030 = add i32 %826, 0
  %1031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1030, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1033 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1031, %dx.types.Handle %1032, float %960, float %963, float undef, float undef, i32 0, i32 0, i32 undef, float %965, float %967, float undef, float %969, float %971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = extractvalue %dx.types.ResRet.f32 %1033, 3
  %1038 = bitcast float %852 to i32
  %1039 = and i32 %1038, 255
  %1040 = uitofp i32 %1039 to float
  %1041 = lshr i32 %1038, 8
  %1042 = and i32 %1041, 255
  %1043 = uitofp i32 %1042 to float
  %1044 = fmul fast float %1037, %1040
  %1045 = fadd fast float %1044, %1043
  %1046 = fmul fast float %1045, 0x3F70101000000000
  %1047 = add i32 %827, 0
  %1048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1047, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1049 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1048, %dx.types.Handle %1032, float %960, float %963, float undef, float undef, i32 0, i32 0, i32 undef, float %965, float %967, float undef, float %969, float %971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = extractvalue %dx.types.ResRet.f32 %1049, 3
  %1054 = bitcast float %846 to i32
  %1055 = and i32 %1054, 255
  %1056 = uitofp i32 %1055 to float
  %1057 = lshr i32 %1054, 8
  %1058 = and i32 %1057, 255
  %1059 = uitofp i32 %1058 to float
  %1060 = lshr i32 %1054, 16
  %1061 = and i32 %1060, 255
  %1062 = uitofp i32 %1061 to float
  %1063 = fmul fast float %1062, 0x3F70101000000000
  %1064 = fmul fast float %1050, %1056
  %1065 = fadd fast float %1064, %1059
  %1066 = fmul fast float %1065, 0x3F70101000000000
  %1067 = fadd fast float %1051, -5.000000e-01
  %1068 = fadd fast float %1053, -5.000000e-01
  %1069 = fmul fast float %1067, %1063
  %1070 = fmul fast float %1068, %1063
  %1071 = fadd fast float %1069, 5.000000e-01
  %1072 = fadd fast float %1070, 5.000000e-01
  %1073 = fmul fast float %1034, %855
  %1074 = fmul fast float %1035, %856
  %1075 = fmul fast float %1036, %857
  %1076 = fmul fast float %1071, 2.000000e+00
  %1077 = fadd fast float %1076, -1.000000e+00
  %1078 = fmul fast float %1072, 2.000000e+00
  %1079 = fadd fast float %1078, -1.000000e+00
  %1080 = fadd fast float %1077, %1079
  %1081 = fmul fast float %1080, 5.000000e-01
  %1082 = fsub fast float %1077, %1079
  %1083 = fmul fast float %1082, 5.000000e-01
  %1084 = call float @dx.op.unary.f32(i32 6, float %1081)  ; FAbs(value)
  %1085 = fsub fast float 1.000000e+00, %1084
  %1086 = call float @dx.op.unary.f32(i32 6, float %1083)  ; FAbs(value)
  %1087 = fsub fast float %1085, %1086
  %1088 = call float @dx.op.dot3.f32(i32 55, float %1081, float %1083, float %1087, float %1081, float %1083, float %1087)  ; Dot3(ax,ay,az,bx,by,bz)
  %1089 = call float @dx.op.unary.f32(i32 25, float %1088)  ; Rsqrt(value)
  %1090 = fmul fast float %1081, %1089
  %1091 = fmul fast float %1083, %1089
  %1092 = fmul fast float %1089, %1087
  %1093 = fmul fast float %1092, %820
  %1094 = fmul fast float %1092, %821
  %1095 = fmul fast float %1092, %822
  %1096 = fmul fast float %1090, %843
  %1097 = fmul fast float %1090, %844
  %1098 = fmul fast float %1090, %845
  %1099 = fadd fast float %1096, %1093
  %1100 = fadd fast float %1097, %1094
  %1101 = fadd fast float %1098, %1095
  %1102 = fmul fast float %1091, %849
  %1103 = fmul fast float %1091, %850
  %1104 = fmul fast float %1091, %851
  %1105 = fadd fast float %1099, %1102
  %1106 = fadd fast float %1100, %1103
  %1107 = fadd fast float %1101, %1104
  %1108 = call float @dx.op.dot3.f32(i32 55, float %1105, float %1106, float %1107, float %1105, float %1106, float %1107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1109 = call float @dx.op.unary.f32(i32 25, float %1108)  ; Rsqrt(value)
  %1110 = fmul fast float %1105, %1109
  %1111 = fmul fast float %1106, %1109
  %1112 = fmul fast float %1107, %1109
  %1113 = icmp ne i32 %1029, 0
  %1114 = select i1 %1113, float 1.000000e+00, float 0.000000e+00
  %1115 = fmul fast float %1019, %1114
  %1116 = and i32 %870, 1
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1118, label %1122

; <label>:1118                                    ; preds = %1027
  %1119 = fsub fast float %1110, %802
  %1120 = fsub fast float %1111, %803
  %1121 = fsub fast float %1112, %804
  br label %1122

; <label>:1122                                    ; preds = %1118, %1027
  %1123 = phi float [ %1119, %1118 ], [ %1110, %1027 ]
  %1124 = phi float [ %1120, %1118 ], [ %1111, %1027 ]
  %1125 = phi float [ %1121, %1118 ], [ %1112, %1027 ]
  %1126 = fmul float %1125, %1115
  %1127 = fmul float %1124, %1115
  %1128 = fmul float %1123, %1115
  %1129 = fadd fast float %1128, %802
  %1130 = fadd fast float %1127, %803
  %1131 = fadd fast float %1126, %804
  %1132 = icmp ne i32 %1028, 0
  %1133 = select i1 %1132, float 1.000000e+00, float 0.000000e+00
  %1134 = fmul fast float %1019, %1133
  %1135 = fsub fast float %1073, %809
  %1136 = fsub fast float %1074, %810
  %1137 = fsub fast float %1075, %811
  %1138 = fmul fast float %1135, %1134
  %1139 = fmul fast float %1136, %1134
  %1140 = fmul fast float %1137, %1134
  %1141 = fadd fast float %1138, %809
  %1142 = fadd fast float %1139, %810
  %1143 = fadd fast float %1140, %811
  %1144 = fsub fast float %1046, %808
  %1145 = fmul fast float %1144, %1134
  %1146 = fadd fast float %1145, %808
  %1147 = fmul fast float %1134, %795
  %1148 = fsub fast float %795, %1147
  %1149 = fmul fast float %1134, %794
  %1150 = fsub fast float %794, %1149
  %1151 = bitcast float %864 to i32
  %1152 = lshr i32 %1151, 16
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = add i32 %29, 108
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 1
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1159, label %1184

; <label>:1159                                    ; preds = %1122
  %1160 = fadd fast float %1046, 0xBFB99999A0000000
  %1161 = call float @dx.op.unary.f32(i32 7, float %1160)  ; Saturate(value)
  %1162 = fmul fast float %1161, 0x3FF1C71C80000000
  %1163 = fsub fast float 1.000000e+00, %1162
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  %1165 = fmul fast float %1164, %1073
  %1166 = fmul fast float %1164, %1074
  %1167 = fmul fast float %1164, %1075
  %1168 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1169 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1170 = call float @dx.op.unary.f32(i32 7, float %1167)  ; Saturate(value)
  %1171 = call float @dx.op.binary.f32(i32 35, float %1169, float %1170)  ; FMax(a,b)
  %1172 = call float @dx.op.binary.f32(i32 35, float %1168, float %1171)  ; FMax(a,b)
  %1173 = fcmp fast ogt float %1172, 0.000000e+00
  %1174 = bitcast float %1172 to i32
  %1175 = sub nsw i32 2129859010, %1174
  %1176 = bitcast i32 %1175 to float
  %1177 = select i1 %1173, float %1176, float 0.000000e+00
  %1178 = fmul fast float %1168, %1153
  %1179 = fmul fast float %1169, %1153
  %1180 = fmul fast float %1170, %1153
  %1181 = fmul fast float %1178, %1177
  %1182 = fmul fast float %1179, %1177
  %1183 = fmul fast float %1180, %1177
  br label %1184

; <label>:1184                                    ; preds = %1159, %1122
  %1185 = phi float [ %1153, %1122 ], [ %1181, %1159 ]
  %1186 = phi float [ %1153, %1122 ], [ %1182, %1159 ]
  %1187 = phi float [ %1153, %1122 ], [ %1183, %1159 ]
  %1188 = fsub fast float %1185, %796
  %1189 = fsub fast float %1186, %797
  %1190 = fsub fast float %1187, %798
  %1191 = fmul fast float %1188, %1134
  %1192 = fmul fast float %1189, %1134
  %1193 = fmul fast float %1190, %1134
  %1194 = fadd fast float %1191, %796
  %1195 = fadd fast float %1192, %797
  %1196 = fadd fast float %1193, %798
  %1197 = fadd fast float %1019, %807
  %1198 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1199 = fsub fast float %1066, %806
  %1200 = fmul fast float %1199, %1115
  %1201 = fadd fast float %1200, %806
  %1202 = fsub fast float %1052, %805
  %1203 = fmul fast float %1202, %1115
  %1204 = fadd fast float %1203, %805
  %1205 = call float @dx.op.dot3.f32(i32 55, float %1073, float %1074, float %1075, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1207 = extractvalue %dx.types.CBufRet.f32 %1206, 0
  %1208 = extractvalue %dx.types.CBufRet.f32 %1206, 1
  %1209 = fmul fast float %1208, %1205
  %1210 = fadd fast float %1209, %1207
  %1211 = call float @dx.op.unary.f32(i32 7, float %1210)  ; Saturate(value)
  %1212 = bitcast float %858 to i32
  %1213 = and i32 %1212, 65535
  %1214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1213)  ; LegacyF16ToF32(value)
  %1215 = lshr i32 %1212, 16
  %1216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1215)  ; LegacyF16ToF32(value)
  %1217 = fcmp fast oge float %1214, 0.000000e+00
  %1218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1219 = extractvalue %dx.types.CBufRet.f32 %1218, 0
  %1220 = select i1 %1217, float %1214, float %1219
  %1221 = fadd fast float %1220, %1216
  %1222 = fsub fast float %1211, %793
  %1223 = fmul fast float %1222, %1019
  %1224 = fadd fast float %1223, %793
  %1225 = fmul fast float %1221, %1019
  %1226 = call float @dx.op.binary.f32(i32 35, float %792, float %1225)  ; FMax(a,b)
  %1227 = and i32 %870, 16
  %1228 = icmp eq i32 %1227, 0
  br i1 %1228, label %1250, label %1229

; <label>:1229                                    ; preds = %1184
  %1230 = add i32 %861, 0
  %1231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1230, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1232 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1231, %dx.types.Handle %1032, float %960, float %963, float undef, float undef, i32 0, i32 0, i32 undef, float %965, float %967, float undef, float %969, float %971, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1233 = extractvalue %dx.types.ResRet.f32 %1232, 0
  %1234 = extractvalue %dx.types.ResRet.f32 %1232, 1
  %1235 = extractvalue %dx.types.ResRet.f32 %1232, 2
  %1236 = and i32 %1151, 65535
  %1237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1236)  ; LegacyF16ToF32(value)
  %1238 = fmul fast float %1233, %855
  %1239 = fmul fast float %1234, %856
  %1240 = fmul fast float %1235, %857
  %1241 = and i32 %870, 16384
  %1242 = icmp ne i32 %1241, 0
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1245 = select i1 %1242, float %1244, float 1.000000e+00
  %1246 = fmul fast float %1245, %1237
  %1247 = fmul fast float %1238, %1246
  %1248 = fmul fast float %1239, %1246
  %1249 = fmul fast float %1240, %1246
  br label %1250

; <label>:1250                                    ; preds = %1229, %1184
  %1251 = phi float [ %1247, %1229 ], [ 0.000000e+00, %1184 ]
  %1252 = phi float [ %1248, %1229 ], [ 0.000000e+00, %1184 ]
  %1253 = phi float [ %1249, %1229 ], [ 0.000000e+00, %1184 ]
  %1254 = fsub fast float %1251, %799
  %1255 = fsub fast float %1252, %800
  %1256 = fsub fast float %1253, %801
  %1257 = fmul fast float %1254, %1019
  %1258 = fmul fast float %1255, %1019
  %1259 = fmul fast float %1256, %1019
  %1260 = fadd fast float %1257, %799
  %1261 = fadd fast float %1258, %800
  %1262 = fadd fast float %1259, %801
  br label %919

; <label>:1263                                    ; preds = %919
  br label %1264

; <label>:1264                                    ; preds = %1263, %689
  %1265 = phi float [ 0.000000e+00, %689 ], [ %920, %1263 ]
  %1266 = phi float [ %708, %689 ], [ %921, %1263 ]
  %1267 = phi float [ %706, %689 ], [ %922, %1263 ]
  %1268 = phi float [ 0.000000e+00, %689 ], [ %923, %1263 ]
  %1269 = phi float [ 0.000000e+00, %689 ], [ %924, %1263 ]
  %1270 = phi float [ %698, %689 ], [ %925, %1263 ]
  %1271 = phi float [ %699, %689 ], [ %926, %1263 ]
  %1272 = phi float [ %700, %689 ], [ %927, %1263 ]
  %1273 = phi float [ %695, %689 ], [ %928, %1263 ]
  %1274 = phi float [ %696, %689 ], [ %929, %1263 ]
  %1275 = phi float [ %697, %689 ], [ %930, %1263 ]
  %1276 = phi float [ %734, %689 ], [ %931, %1263 ]
  %1277 = phi float [ %735, %689 ], [ %932, %1263 ]
  %1278 = phi float [ %736, %689 ], [ %933, %1263 ]
  %1279 = phi float [ %704, %689 ], [ %934, %1263 ]
  %1280 = phi float [ %703, %689 ], [ %935, %1263 ]
  %1281 = phi float [ 0.000000e+00, %689 ], [ %936, %1263 ]
  %1282 = phi float [ %701, %689 ], [ %937, %1263 ]
  %1283 = phi float [ %692, %689 ], [ %938, %1263 ]
  %1284 = phi float [ %693, %689 ], [ %939, %1263 ]
  %1285 = phi float [ %694, %689 ], [ %940, %1263 ]
  %1286 = call float @dx.op.dot3.f32(i32 55, float %1276, float %1277, float %1278, float %1276, float %1277, float %1278)  ; Dot3(ax,ay,az,bx,by,bz)
  %1287 = call float @dx.op.unary.f32(i32 25, float %1286)  ; Rsqrt(value)
  %1288 = fmul fast float %1287, %1276
  %1289 = fmul fast float %1287, %1277
  %1290 = fmul fast float %1287, %1278
  %1291 = fadd fast float %1281, %702
  %1292 = call float @dx.op.unary.f32(i32 7, float %1291)  ; Saturate(value)
  %1293 = call float @dx.op.dot3.f32(i32 55, float %1288, float %1289, float %1290, float %1288, float %1289, float %1290)  ; Dot3(ax,ay,az,bx,by,bz)
  %1294 = call float @dx.op.unary.f32(i32 25, float %1293)  ; Rsqrt(value)
  %1295 = fmul fast float %1294, %1288
  %1296 = fmul fast float %1294, %1289
  %1297 = fmul fast float %1294, %1290
  %1298 = fadd fast float %1282, 0xBFB99999A0000000
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = fmul fast float %1299, 0x3FF1C71C80000000
  %1301 = call float @dx.op.binary.f32(i32 36, float %1282, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1302 = fsub fast float 1.000000e+00, %1300
  %1303 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1304 = fmul fast float %1303, %1283
  %1305 = fmul fast float %1303, %1284
  %1306 = fmul fast float %1303, %1285
  %1307 = call float @dx.op.unary.f32(i32 7, float %1304)  ; Saturate(value)
  %1308 = call float @dx.op.unary.f32(i32 7, float %1305)  ; Saturate(value)
  %1309 = call float @dx.op.unary.f32(i32 7, float %1306)  ; Saturate(value)
  %1310 = fmul fast float %1300, %1283
  %1311 = fmul fast float %1300, %1284
  %1312 = fmul fast float %1300, %1285
  %1313 = fadd fast float %1310, %1301
  %1314 = fadd fast float %1311, %1301
  %1315 = fadd fast float %1312, %1301
  %1316 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1317 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1318 = call float @dx.op.unary.f32(i32 7, float %1315)  ; Saturate(value)
  %1319 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1320 = add i32 %29, 108
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1320, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = and i32 %1322, 1
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1339, label %1325

; <label>:1325                                    ; preds = %1264
  %1326 = call float @dx.op.binary.f32(i32 35, float %1308, float %1309)  ; FMax(a,b)
  %1327 = call float @dx.op.binary.f32(i32 35, float %1307, float %1326)  ; FMax(a,b)
  %1328 = fcmp fast ogt float %1327, 0.000000e+00
  %1329 = bitcast float %1327 to i32
  %1330 = sub nsw i32 2129859010, %1329
  %1331 = bitcast i32 %1330 to float
  %1332 = select i1 %1328, float %1331, float 0.000000e+00
  %1333 = fmul fast float %1307, %1270
  %1334 = fmul fast float %1308, %1271
  %1335 = fmul fast float %1309, %1272
  %1336 = fmul fast float %1333, %1332
  %1337 = fmul fast float %1334, %1332
  %1338 = fmul fast float %1335, %1332
  br label %1339

; <label>:1339                                    ; preds = %1325, %1264
  %1340 = phi float [ %1336, %1325 ], [ %1270, %1264 ]
  %1341 = phi float [ %1337, %1325 ], [ %1271, %1264 ]
  %1342 = phi float [ %1338, %1325 ], [ %1272, %1264 ]
  %1343 = fadd fast float %1307, 0xBFD51EB860000000
  %1344 = fadd fast float %1308, 0xBFD51EB860000000
  %1345 = fadd fast float %1309, 0xBFD51EB860000000
  %1346 = fmul fast float %1343, %1343
  %1347 = fmul fast float %1344, %1344
  %1348 = fmul fast float %1345, %1345
  %1349 = fmul fast float %1346, %1346
  %1350 = fmul fast float %1349, 1.000000e+02
  %1351 = fmul fast float %1347, %1347
  %1352 = fmul fast float %1351, 1.000000e+02
  %1353 = fmul fast float %1348, %1348
  %1354 = fmul fast float %1353, 1.000000e+02
  %1355 = fadd fast float %1350, 3.500000e+00
  %1356 = fadd fast float %1352, 3.500000e+00
  %1357 = fadd fast float %1354, 3.500000e+00
  %1358 = call float @dx.op.binary.f32(i32 35, float %1340, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %1359 = call float @dx.op.binary.f32(i32 35, float %1341, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %1360 = call float @dx.op.binary.f32(i32 35, float %1342, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %1361 = fdiv fast float %1355, %1358
  %1362 = fdiv fast float %1356, %1359
  %1363 = fdiv fast float %1357, %1360
  %1364 = fmul fast float %705, 0xBFF7154760000000
  %1365 = fmul fast float %1364, %1361
  %1366 = call float @dx.op.unary.f32(i32 21, float %1365)  ; Exp(value)
  %1367 = fmul fast float %1366, 2.500000e-01
  %1368 = fmul fast float %705, 0xBFDEC709E0000000
  %1369 = fmul fast float %1368, %1361
  %1370 = call float @dx.op.unary.f32(i32 21, float %1369)  ; Exp(value)
  %1371 = fmul fast float %1370, 7.500000e-01
  %1372 = fmul fast float %1364, %1362
  %1373 = call float @dx.op.unary.f32(i32 21, float %1372)  ; Exp(value)
  %1374 = fmul fast float %1373, 2.500000e-01
  %1375 = fmul fast float %1368, %1362
  %1376 = call float @dx.op.unary.f32(i32 21, float %1375)  ; Exp(value)
  %1377 = fmul fast float %1376, 7.500000e-01
  %1378 = fmul fast float %1364, %1363
  %1379 = call float @dx.op.unary.f32(i32 21, float %1378)  ; Exp(value)
  %1380 = fmul fast float %1379, 2.500000e-01
  %1381 = fmul fast float %1368, %1363
  %1382 = call float @dx.op.unary.f32(i32 21, float %1381)  ; Exp(value)
  %1383 = fmul fast float %1382, 7.500000e-01
  %1384 = fadd fast float %1367, %1371
  %1385 = fadd fast float %1374, %1377
  %1386 = fadd fast float %1380, %1383
  %1387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.i32 %1387, 3
  %1389 = and i32 %1388, 8
  %1390 = icmp ne i32 %1389, 0
  %1391 = call float @dx.op.binary.f32(i32 35, float %1307, float %1283)  ; FMax(a,b)
  %1392 = call float @dx.op.binary.f32(i32 35, float %1308, float %1283)  ; FMax(a,b)
  %1393 = call float @dx.op.binary.f32(i32 35, float %1309, float %1283)  ; FMax(a,b)
  %1394 = call float @dx.op.dot3.f32(i32 55, float %1307, float %1308, float %1309, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1395 = select i1 %135, float %1283, float %1307
  %1396 = select i1 %135, float %1394, float %1308
  %1397 = select i1 %135, float 1.000000e+00, float %1309
  %1398 = select i1 %1390, float %1391, float %1395
  %1399 = select i1 %1390, float %1392, float %1396
  %1400 = select i1 %1390, float %1393, float %1397
  %1401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1402 = extractvalue %dx.types.CBufRet.f32 %1401, 0
  %1403 = extractvalue %dx.types.CBufRet.f32 %1401, 1
  %1404 = extractvalue %dx.types.CBufRet.f32 %1401, 2
  %1405 = fadd fast float %1402, %93
  %1406 = fadd fast float %1403, %94
  %1407 = fadd fast float %1404, %95
  %1408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1408, 0
  %1410 = extractvalue %dx.types.CBufRet.f32 %1408, 1
  %1411 = fsub fast float %1405, %1409
  %1412 = fsub fast float %1406, %1410
  %1413 = fmul fast float %1411, %1411
  %1414 = fmul fast float %1412, %1412
  %1415 = fadd fast float %1413, %1414
  %1416 = call float @dx.op.unary.f32(i32 24, float %1415)  ; Sqrt(value)
  %1417 = extractvalue %dx.types.CBufRet.f32 %1408, 2
  %1418 = fcmp fast olt float %1416, %1417
  br i1 %1418, label %1419, label %1486

; <label>:1419                                    ; preds = %1339
  %1420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1421 = extractvalue %dx.types.CBufRet.f32 %1420, 0
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1425 = extractvalue %dx.types.CBufRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.CBufRet.f32 %1420, 1
  %1427 = extractvalue %dx.types.CBufRet.f32 %1422, 1
  %1428 = extractvalue %dx.types.CBufRet.f32 %1424, 1
  %1429 = extractvalue %dx.types.CBufRet.f32 %1420, 3
  %1430 = extractvalue %dx.types.CBufRet.f32 %1422, 3
  %1431 = extractvalue %dx.types.CBufRet.f32 %1424, 3
  %1432 = fadd fast float %1429, %1405
  %1433 = fadd fast float %1430, %1406
  %1434 = fadd fast float %1431, %1407
  %1435 = fmul fast float %1432, %1421
  %1436 = call float @dx.op.tertiary.f32(i32 46, float %1433, float %1423, float %1435)  ; FMad(a,b,c)
  %1437 = call float @dx.op.tertiary.f32(i32 46, float %1434, float %1425, float %1436)  ; FMad(a,b,c)
  %1438 = fmul fast float %1432, %1426
  %1439 = call float @dx.op.tertiary.f32(i32 46, float %1433, float %1427, float %1438)  ; FMad(a,b,c)
  %1440 = call float @dx.op.tertiary.f32(i32 46, float %1434, float %1428, float %1439)  ; FMad(a,b,c)
  %1441 = fsub fast float %1437, %1429
  %1442 = fsub fast float %1440, %1430
  %1443 = fsub fast float %1441, %1409
  %1444 = fadd fast float %1443, %1417
  %1445 = fsub fast float %1442, %1410
  %1446 = fadd fast float %1445, %1417
  %1447 = extractvalue %dx.types.CBufRet.f32 %1408, 3
  %1448 = fmul fast float %1444, %1447
  %1449 = fmul fast float %1446, %1447
  %1450 = call float @dx.op.unary.f32(i32 7, float %1448)  ; Saturate(value)
  %1451 = call float @dx.op.unary.f32(i32 7, float %1449)  ; Saturate(value)
  %1452 = fsub fast float 1.000000e+00, %1450
  %1453 = fsub fast float 1.000000e+00, %1451
  %1454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %1452, float %1453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1455 = extractvalue %dx.types.ResRet.f32 %1454, 0
  %1456 = fcmp fast ugt float %1455, 0.000000e+00
  br i1 %1456, label %1457, label %1760

; <label>:1457                                    ; preds = %1419
  %1458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1459 = extractvalue %dx.types.CBufRet.f32 %1458, 2
  %1460 = fmul fast float %1459, %1455
  %1461 = extractvalue %dx.types.CBufRet.f32 %1458, 3
  %1462 = fadd fast float %1461, %1460
  %1463 = extractvalue %dx.types.CBufRet.f32 %1424, 2
  %1464 = fadd fast float %1462, %1431
  %1465 = fmul fast float %1437, %1425
  %1466 = call float @dx.op.tertiary.f32(i32 46, float %1440, float %1428, float %1465)  ; FMad(a,b,c)
  %1467 = call float @dx.op.tertiary.f32(i32 46, float %1464, float %1463, float %1466)  ; FMad(a,b,c)
  %1468 = fsub fast float %1467, %1431
  %1469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1470 = extractvalue %dx.types.CBufRet.f32 %1469, 2
  %1471 = fsub fast float %1468, %1470
  %1472 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %1452, float %1453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1473 = extractvalue %dx.types.ResRet.f32 %1472, 0
  %1474 = extractvalue %dx.types.ResRet.f32 %1472, 1
  %1475 = extractvalue %dx.types.ResRet.f32 %1472, 2
  %1476 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1452, float %1453, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = fadd fast float %1477, %1473
  %1481 = fmul fast float %1480, 0x3F847AE140000000
  %1482 = fadd fast float %1478, %1474
  %1483 = fmul fast float %1482, 0x3F847AE140000000
  %1484 = fadd fast float %1479, %1475
  %1485 = fmul fast float %1484, 0x3F847AE140000000
  br label %1760

; <label>:1486                                    ; preds = %1339
  %1487 = and i32 %111, 1
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1760, label %1489

; <label>:1489                                    ; preds = %1486
  %1490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.f32 %1490, 0
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 0
  %1494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.f32 %1494, 0
  %1496 = extractvalue %dx.types.CBufRet.f32 %1490, 1
  %1497 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1498 = extractvalue %dx.types.CBufRet.f32 %1494, 1
  %1499 = extractvalue %dx.types.CBufRet.f32 %1490, 3
  %1500 = extractvalue %dx.types.CBufRet.f32 %1492, 3
  %1501 = extractvalue %dx.types.CBufRet.f32 %1494, 3
  %1502 = fadd fast float %1499, %1405
  %1503 = fadd fast float %1500, %1406
  %1504 = fadd fast float %1501, %1407
  %1505 = fmul fast float %1502, %1491
  %1506 = call float @dx.op.tertiary.f32(i32 46, float %1503, float %1493, float %1505)  ; FMad(a,b,c)
  %1507 = call float @dx.op.tertiary.f32(i32 46, float %1504, float %1495, float %1506)  ; FMad(a,b,c)
  %1508 = fmul fast float %1502, %1496
  %1509 = call float @dx.op.tertiary.f32(i32 46, float %1503, float %1497, float %1508)  ; FMad(a,b,c)
  %1510 = call float @dx.op.tertiary.f32(i32 46, float %1504, float %1498, float %1509)  ; FMad(a,b,c)
  %1511 = fsub fast float %1507, %1499
  %1512 = fsub fast float %1510, %1500
  %1513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1514 = extractvalue %dx.types.CBufRet.f32 %1513, 0
  %1515 = extractvalue %dx.types.CBufRet.f32 %1513, 1
  %1516 = extractvalue %dx.types.CBufRet.f32 %1513, 2
  %1517 = extractvalue %dx.types.CBufRet.f32 %1513, 3
  %1518 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1519 = extractvalue %dx.types.CBufRet.f32 %1518, 3
  %1520 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.i32 %1520, 0
  %1522 = extractvalue %dx.types.CBufRet.i32 %1520, 1
  %1523 = udiv i32 %1522, %1521
  %1524 = fsub fast float %1511, %1514
  %1525 = fsub fast float %1512, %1515
  %1526 = call float @dx.op.binary.f32(i32 35, float %1524, float 0.000000e+00)  ; FMax(a,b)
  %1527 = call float @dx.op.binary.f32(i32 35, float %1525, float 0.000000e+00)  ; FMax(a,b)
  %1528 = call float @dx.op.binary.f32(i32 36, float %1526, float %1516)  ; FMin(a,b)
  %1529 = call float @dx.op.binary.f32(i32 36, float %1527, float %1517)  ; FMin(a,b)
  %1530 = add i32 %1521, -1
  %1531 = add i32 %1523, -1
  %1532 = fmul fast float %1528, %1519
  %1533 = fmul fast float %1529, %1519
  %1534 = fptoui float %1532 to i32
  %1535 = fptoui float %1533 to i32
  %1536 = call i32 @dx.op.binary.i32(i32 40, i32 %1534, i32 %1530)  ; UMin(a,b)
  %1537 = call i32 @dx.op.binary.i32(i32 40, i32 %1535, i32 %1531)  ; UMin(a,b)
  %1538 = mul i32 %1537, %1521
  %1539 = add i32 %1538, %1536
  %1540 = shl i32 %1539, 2
  %1541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1540, i32 undef)  ; BufferLoad(srv,index,wot)
  %1542 = extractvalue %dx.types.ResRet.i32 %1541, 0
  %1543 = icmp eq i32 %1542, -1
  br i1 %1543, label %1760, label %1544

; <label>:1544                                    ; preds = %1489
  %1545 = mul i32 %1542, 148
  %1546 = add i32 %1545, 4
  %1547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = add i32 %1545, 8
  %1550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.f32 %1550, 0
  %1552 = add i32 %1545, 36
  %1553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.f32 %1553, 0
  %1555 = add i32 %1545, 60
  %1556 = add i32 %1545, 92
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = add i32 %1545, 116
  %1560 = fsub fast float %1511, %1548
  %1561 = fsub fast float %1512, %1551
  %1562 = fmul fast float %1519, %1560
  %1563 = fmul fast float %1519, %1561
  %1564 = call float @dx.op.unary.f32(i32 7, float %1562)  ; Saturate(value)
  %1565 = call float @dx.op.unary.f32(i32 7, float %1563)  ; Saturate(value)
  %1566 = fsub fast float 1.000000e+00, %1565
  %1567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1568 = extractvalue %dx.types.CBufRet.f32 %1567, 2
  %1569 = call float @dx.op.unary.f32(i32 83, float %1564)  ; DerivCoarseX(value)
  %1570 = call float @dx.op.unary.f32(i32 83, float %1566)  ; DerivCoarseX(value)
  %1571 = call float @dx.op.unary.f32(i32 84, float %1564)  ; DerivCoarseY(value)
  %1572 = call float @dx.op.unary.f32(i32 84, float %1566)  ; DerivCoarseY(value)
  %1573 = fmul fast float %1569, %1568
  %1574 = fmul fast float %1570, %1568
  %1575 = fmul fast float %1571, %1568
  %1576 = fmul fast float %1572, %1568
  %1577 = call float @dx.op.dot2.f32(i32 54, float %1575, float %1576, float %1575, float %1576)  ; Dot2(ax,ay,bx,by)
  %1578 = call float @dx.op.dot2.f32(i32 54, float %1573, float %1574, float %1573, float %1574)  ; Dot2(ax,ay,bx,by)
  %1579 = call float @dx.op.binary.f32(i32 35, float %1578, float %1577)  ; FMax(a,b)
  %1580 = call float @dx.op.unary.f32(i32 23, float %1579)  ; Log(value)
  %1581 = fmul fast float %1580, 5.000000e-01
  %1582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1583 = extractvalue %dx.types.CBufRet.f32 %1582, 1
  %1584 = fadd fast float %1583, %1581
  %1585 = call float @dx.op.binary.f32(i32 35, float %1584, float 0.000000e+00)  ; FMax(a,b)
  %1586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1587 = extractvalue %dx.types.CBufRet.f32 %1586, 3
  %1588 = fadd fast float %1587, %1585
  %1589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1590 = extractvalue %dx.types.CBufRet.f32 %1589, 3
  %1591 = fadd fast float %1588, %1590
  %1592 = add i32 %1558, 0
  %1593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1592, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1594 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1593, i32 0)  ; GetDimensions(handle,mipLevel)
  %1595 = extractvalue %dx.types.Dimensions %1594, 0
  %1596 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1595)  ; FirstbitLo(value)
  %1597 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.i32 %1597, 1
  %1599 = sub nsw i32 %1598, %1596
  %1600 = sitofp i32 %1599 to float
  %1601 = fsub fast float %1591, %1600
  %1602 = call float @dx.op.binary.f32(i32 35, float %1601, float 0.000000e+00)  ; FMax(a,b)
  %1603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1593, %dx.types.Handle %24, float %1564, float %1566, float %1554, float undef, i32 0, i32 0, i32 undef, float %1602)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 0
  %1605 = fcmp ule float %1604, 0x3FE0101020000000
  %1606 = extractvalue %dx.types.CBufRet.i32 %1597, 0
  %1607 = and i32 %1606, 128
  %1608 = icmp ne i32 %1607, 0
  %1609 = and i1 %1605, %1608
  br i1 %1609, label %1760, label %1610

; <label>:1610                                    ; preds = %1544
  %1611 = add i32 %1545, 20
  %1612 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1611, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.f32 %1612, 0
  %1614 = add i32 %1545, 24
  %1615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1614, i32 undef)  ; BufferLoad(srv,index,wot)
  %1616 = extractvalue %dx.types.ResRet.f32 %1615, 0
  %1617 = add i32 %1545, 40
  %1618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.f32 %1618, 0
  %1620 = add i32 %1545, 96
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1620, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1624 = extractvalue %dx.types.CBufRet.f32 %1623, 2
  %1625 = fmul fast float %1624, %1564
  %1626 = fmul fast float %1624, %1566
  %1627 = extractvalue %dx.types.CBufRet.f32 %1623, 3
  %1628 = fadd fast float %1625, %1627
  %1629 = fadd fast float %1626, %1627
  %1630 = add i32 %1622, 0
  %1631 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1630, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1632 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1631, i32 0)  ; GetDimensions(handle,mipLevel)
  %1633 = extractvalue %dx.types.Dimensions %1632, 0
  %1634 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1633)  ; FirstbitLo(value)
  %1635 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1636 = extractvalue %dx.types.CBufRet.i32 %1635, 1
  %1637 = sub nsw i32 %1636, %1634
  %1638 = sitofp i32 %1637 to float
  %1639 = fsub fast float %1588, %1638
  %1640 = call float @dx.op.binary.f32(i32 35, float %1639, float 0.000000e+00)  ; FMax(a,b)
  %1641 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1631, %dx.types.Handle %24, float %1628, float %1629, float %1619, float undef, i32 0, i32 0, i32 undef, float %1640)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1642 = extractvalue %dx.types.ResRet.f32 %1641, 0
  %1643 = fmul fast float %1642, %1613
  %1644 = fadd fast float %1643, %1616
  %1645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1646 = extractvalue %dx.types.CBufRet.f32 %1645, 0
  %1647 = extractvalue %dx.types.CBufRet.f32 %1645, 1
  %1648 = extractvalue %dx.types.CBufRet.f32 %1645, 2
  %1649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1650 = extractvalue %dx.types.CBufRet.f32 %1649, 3
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 3
  %1653 = extractvalue %dx.types.CBufRet.f32 %1645, 3
  %1654 = fadd fast float %1650, %1511
  %1655 = fadd fast float %1652, %1512
  %1656 = fadd fast float %1644, %1653
  %1657 = fmul fast float %1654, %1646
  %1658 = call float @dx.op.tertiary.f32(i32 46, float %1655, float %1647, float %1657)  ; FMad(a,b,c)
  %1659 = call float @dx.op.tertiary.f32(i32 46, float %1656, float %1648, float %1658)  ; FMad(a,b,c)
  %1660 = fsub fast float %1659, %1653
  %1661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1662 = extractvalue %dx.types.CBufRet.f32 %1661, 2
  %1663 = fsub fast float %1660, %1662
  %1664 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1665 = extractvalue %dx.types.CBufRet.i32 %1664, 0
  %1666 = call i32 @dx.op.binary.i32(i32 40, i32 %1542, i32 %1665)  ; UMin(a,b)
  %1667 = mul i32 %1666, 36
  %1668 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1667, i32 undef)  ; BufferLoad(srv,index,wot)
  %1669 = extractvalue %dx.types.ResRet.i32 %1668, 0
  %1670 = add i32 %1667, 4
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 0
  %1673 = fmul fast float %1672, %1564
  %1674 = fmul fast float %1672, %1566
  %1675 = extractvalue %dx.types.CBufRet.f32 %1671, 1
  %1676 = fadd fast float %1673, %1675
  %1677 = fadd fast float %1674, %1675
  %1678 = icmp eq i32 %1669, 0
  br i1 %1678, label %1747, label %1679

; <label>:1679                                    ; preds = %1610
  br label %1680

; <label>:1680                                    ; preds = %1737, %1679
  %1681 = phi float [ %1738, %1737 ], [ 0.000000e+00, %1679 ]
  %1682 = phi float [ %1739, %1737 ], [ 0.000000e+00, %1679 ]
  %1683 = phi float [ %1740, %1737 ], [ 0.000000e+00, %1679 ]
  %1684 = phi float [ %1741, %1737 ], [ 0.000000e+00, %1679 ]
  %1685 = phi float [ %1742, %1737 ], [ 0.000000e+00, %1679 ]
  %1686 = phi float [ %1743, %1737 ], [ 0.000000e+00, %1679 ]
  %1687 = phi i32 [ %1744, %1737 ], [ 0, %1679 ]
  %1688 = shl i32 %1687, 2
  %1689 = add i32 %1555, %1688
  %1690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1689, i32 undef)  ; BufferLoad(srv,index,wot)
  %1691 = extractvalue %dx.types.ResRet.f32 %1690, 0
  %1692 = add i32 %1559, %1688
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = add i32 %1694, 0
  %1696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1695, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1697 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1696, i32 0)  ; GetDimensions(handle,mipLevel)
  %1698 = extractvalue %dx.types.Dimensions %1697, 0
  %1699 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1698)  ; FirstbitLo(value)
  %1700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1701 = extractvalue %dx.types.CBufRet.i32 %1700, 1
  %1702 = sub nsw i32 %1701, %1699
  %1703 = sitofp i32 %1702 to float
  %1704 = fsub fast float %1588, %1703
  %1705 = call float @dx.op.binary.f32(i32 35, float %1704, float 0.000000e+00)  ; FMax(a,b)
  %1706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1696, %dx.types.Handle %24, float %1676, float %1677, float %1691, float undef, i32 0, i32 0, i32 undef, float %1705)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1707 = extractvalue %dx.types.ResRet.f32 %1706, 0
  %1708 = fcmp fast ogt float %1707, 0.000000e+00
  br i1 %1708, label %1709, label %1737

; <label>:1709                                    ; preds = %1680
  %1710 = add i32 %1670, %1688
  %1711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.i32 %1711, 0
  %1713 = and i32 %1712, 32767
  %1714 = mul nuw nsw i32 %1713, 928
  %1715 = add nuw nsw i32 %1714, 48
  %1716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.f32 %1716, 0
  %1718 = extractvalue %dx.types.ResRet.f32 %1716, 1
  %1719 = extractvalue %dx.types.ResRet.f32 %1716, 2
  %1720 = add nuw nsw i32 %1714, 60
  %1721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.f32 %1721, 0
  %1723 = extractvalue %dx.types.ResRet.f32 %1721, 1
  %1724 = extractvalue %dx.types.ResRet.f32 %1721, 2
  %1725 = fmul fast float %1717, %1707
  %1726 = fmul fast float %1718, %1707
  %1727 = fmul fast float %1719, %1707
  %1728 = fadd fast float %1725, %1681
  %1729 = fadd fast float %1726, %1682
  %1730 = fadd fast float %1727, %1683
  %1731 = fmul fast float %1722, %1707
  %1732 = fmul fast float %1723, %1707
  %1733 = fmul fast float %1724, %1707
  %1734 = fadd fast float %1731, %1684
  %1735 = fadd fast float %1732, %1685
  %1736 = fadd fast float %1733, %1686
  br label %1737

; <label>:1737                                    ; preds = %1709, %1680
  %1738 = phi float [ %1728, %1709 ], [ %1681, %1680 ]
  %1739 = phi float [ %1729, %1709 ], [ %1682, %1680 ]
  %1740 = phi float [ %1730, %1709 ], [ %1683, %1680 ]
  %1741 = phi float [ %1734, %1709 ], [ %1684, %1680 ]
  %1742 = phi float [ %1735, %1709 ], [ %1685, %1680 ]
  %1743 = phi float [ %1736, %1709 ], [ %1686, %1680 ]
  %1744 = add nuw i32 %1687, 1
  %1745 = icmp eq i32 %1744, %1669
  br i1 %1745, label %1746, label %1680

; <label>:1746                                    ; preds = %1737
  br label %1747

; <label>:1747                                    ; preds = %1746, %1610
  %1748 = phi float [ 0.000000e+00, %1610 ], [ %1738, %1746 ]
  %1749 = phi float [ 0.000000e+00, %1610 ], [ %1739, %1746 ]
  %1750 = phi float [ 0.000000e+00, %1610 ], [ %1740, %1746 ]
  %1751 = phi float [ 0.000000e+00, %1610 ], [ %1741, %1746 ]
  %1752 = phi float [ 0.000000e+00, %1610 ], [ %1742, %1746 ]
  %1753 = phi float [ 0.000000e+00, %1610 ], [ %1743, %1746 ]
  %1754 = fadd fast float %1751, %1748
  %1755 = fmul fast float %1754, 0x3F847AE140000000
  %1756 = fadd fast float %1752, %1749
  %1757 = fmul fast float %1756, 0x3F847AE140000000
  %1758 = fadd fast float %1753, %1750
  %1759 = fmul fast float %1758, 0x3F847AE140000000
  br label %1760

; <label>:1760                                    ; preds = %1747, %1544, %1489, %1486, %1457, %1419
  %1761 = phi float [ %1471, %1457 ], [ -1.310720e+05, %1419 ], [ %1663, %1747 ], [ -1.310720e+05, %1489 ], [ -1.310720e+05, %1544 ], [ -1.310720e+05, %1486 ]
  %1762 = phi float [ %1481, %1457 ], [ 0.000000e+00, %1419 ], [ %1755, %1747 ], [ 0.000000e+00, %1489 ], [ 0.000000e+00, %1544 ], [ 0.000000e+00, %1486 ]
  %1763 = phi float [ %1483, %1457 ], [ 0.000000e+00, %1419 ], [ %1757, %1747 ], [ 0.000000e+00, %1489 ], [ 0.000000e+00, %1544 ], [ 0.000000e+00, %1486 ]
  %1764 = phi float [ %1485, %1457 ], [ 0.000000e+00, %1419 ], [ %1759, %1747 ], [ 0.000000e+00, %1489 ], [ 0.000000e+00, %1544 ], [ 0.000000e+00, %1486 ]
  %1765 = phi i1 [ true, %1457 ], [ false, %1419 ], [ true, %1747 ], [ false, %1489 ], [ false, %1544 ], [ false, %1486 ]
  %1766 = and i32 %111, 3
  %1767 = icmp eq i32 %1766, 1
  %1768 = select i1 %1767, float 1.000000e+00, float 0.000000e+00
  %1769 = fsub fast float %1761, %95
  %1770 = call float @dx.op.unary.f32(i32 7, float %1769)  ; Saturate(value)
  %1771 = select i1 %1765, float %1770, float 1.000000e+00
  %1772 = fmul fast float %1771, %1768
  %1773 = icmp eq i32 %1766, 3
  %1774 = select i1 %1773, float 1.000000e+00, float %1772
  %1775 = call float @dx.op.binary.f32(i32 35, float %1265, float %1774)  ; FMax(a,b)
  %1776 = call float @dx.op.unary.f32(i32 7, float %1775)  ; Saturate(value)
  %1777 = fcmp fast une float %1776, 0.000000e+00
  %1778 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %1779 = call float @dx.op.unary.f32(i32 25, float %1778)  ; Rsqrt(value)
  br i1 %1777, label %1787, label %1780

; <label>:1780                                    ; preds = %1760
  %1781 = fmul fast float %1779, %93
  %1782 = fmul fast float %1779, %94
  %1783 = fmul fast float %1779, %95
  %1784 = fsub fast float -0.000000e+00, %1781
  %1785 = fsub fast float -0.000000e+00, %1782
  %1786 = fsub fast float -0.000000e+00, %1783
  br label %1955

; <label>:1787                                    ; preds = %1760
  %1788 = fmul fast float %93, %1779
  %1789 = fsub fast float -0.000000e+00, %1788
  %1790 = fmul fast float %94, %1779
  %1791 = fsub fast float -0.000000e+00, %1790
  %1792 = fmul fast float %95, %1779
  %1793 = fsub fast float -0.000000e+00, %1792
  %1794 = call float @dx.op.dot3.f32(i32 55, float %1789, float %1791, float %1793, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %1795 = fmul fast float %1776, 2.500000e+00
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1797 = fmul fast float %1776, 0x4013FFFFE0000000
  %1798 = fadd fast float %1797, 0xBFFFFFFFE0000000
  %1799 = call float @dx.op.unary.f32(i32 7, float %1798)  ; Saturate(value)
  %1800 = fmul fast float %1776, 0x4004000020000000
  %1801 = fadd fast float %1800, 0xBFF8000040000000
  %1802 = call float @dx.op.unary.f32(i32 7, float %1801)  ; Saturate(value)
  %1803 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  %1804 = fmul fast float %1298, 1.000000e+01
  %1805 = call float @dx.op.unary.f32(i32 7, float %1804)  ; Saturate(value)
  %1806 = fmul fast float %1805, 2.000000e+00
  %1807 = fsub fast float 3.000000e+00, %1806
  %1808 = fmul fast float %1805, %1805
  %1809 = fmul fast float %1808, %1807
  %1810 = fsub fast float 1.000000e+00, %1809
  %1811 = fsub fast float 0x3FE3333340000000, %1319
  %1812 = fmul fast float %1811, 0x400AAAAAA0000000
  %1813 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  %1814 = fmul fast float %1810, %1813
  %1815 = fmul fast float %1398, 0x3FEA2B8620000000
  %1816 = fmul fast float %1399, 0x3FEA2B8620000000
  %1817 = fmul fast float %1400, 0x3FEA2B8620000000
  %1818 = fadd fast float %1815, 0x3FC81DFBA0000000
  %1819 = fmul fast float %1818, %1398
  %1820 = fadd fast float %1819, 0x3F910E6020000000
  %1821 = fadd fast float %1816, 0x3FC81DFBA0000000
  %1822 = fmul fast float %1821, %1399
  %1823 = fadd fast float %1822, 0x3F910E6020000000
  %1824 = fadd fast float %1817, 0x3FC81DFBA0000000
  %1825 = fmul fast float %1824, %1400
  %1826 = fadd fast float %1825, 0x3F910E6020000000
  %1827 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  %1828 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1829 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1830 = fsub fast float %1827, %1398
  %1831 = fsub fast float %1828, %1399
  %1832 = fsub fast float %1829, %1400
  %1833 = fmul fast float %1830, %1803
  %1834 = fmul fast float %1833, %1814
  %1835 = fmul fast float %1831, %1803
  %1836 = fmul fast float %1835, %1814
  %1837 = fmul fast float %1832, %1803
  %1838 = fmul fast float %1837, %1814
  %1839 = fadd fast float %1834, %1398
  %1840 = fadd fast float %1836, %1399
  %1841 = fadd fast float %1838, %1400
  %1842 = fmul fast float %1279, %1279
  %1843 = fmul fast float %1842, %1842
  %1844 = fadd fast float %1799, 1.000000e+00
  %1845 = fsub fast float %1844, %1814
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1847 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = call float @dx.op.unary.f32(i32 7, float %1847)  ; Saturate(value)
  %1849 = fsub fast float 1.000000e+00, %1843
  %1850 = call float @dx.op.binary.f32(i32 36, float %1846, float %1849)  ; FMin(a,b)
  %1851 = call float @dx.op.unary.f32(i32 7, float %1802)  ; Saturate(value)
  %1852 = call float @dx.op.binary.f32(i32 35, float %1850, float %1851)  ; FMax(a,b)
  %1853 = fadd fast float %1848, 0xBFE4CCCCC0000000
  %1854 = fmul fast float %1853, 0x4006DB6DA0000000
  %1855 = call float @dx.op.unary.f32(i32 7, float %1854)  ; Saturate(value)
  %1856 = fmul fast float %1855, 2.000000e+00
  %1857 = fsub fast float 3.000000e+00, %1856
  %1858 = bitcast float %1316 to i32
  %1859 = ashr i32 %1858, 1
  %1860 = add nsw i32 %1859, 532487669
  %1861 = bitcast i32 %1860 to float
  %1862 = fsub fast float 1.000000e+00, %1861
  %1863 = bitcast float %1862 to i32
  %1864 = sub nsw i32 2129859010, %1863
  %1865 = bitcast i32 %1864 to float
  %1866 = fmul fast float %1865, 2.000000e+00
  %1867 = bitcast float %1317 to i32
  %1868 = ashr i32 %1867, 1
  %1869 = add nsw i32 %1868, 532487669
  %1870 = bitcast i32 %1869 to float
  %1871 = fsub fast float 1.000000e+00, %1870
  %1872 = bitcast float %1871 to i32
  %1873 = sub nsw i32 2129859010, %1872
  %1874 = bitcast i32 %1873 to float
  %1875 = fmul fast float %1874, 2.000000e+00
  %1876 = bitcast float %1318 to i32
  %1877 = ashr i32 %1876, 1
  %1878 = add nsw i32 %1877, 532487669
  %1879 = bitcast i32 %1878 to float
  %1880 = fsub fast float 1.000000e+00, %1879
  %1881 = bitcast float %1880 to i32
  %1882 = sub nsw i32 2129859010, %1881
  %1883 = bitcast i32 %1882 to float
  %1884 = fmul fast float %1883, 2.000000e+00
  %1885 = fsub fast float 0x4002A9FBE0000000, %1866
  %1886 = fadd fast float %1866, 0x3FD54FDF00000000
  %1887 = bitcast float %1886 to i32
  %1888 = sub nsw i32 2129859010, %1887
  %1889 = bitcast i32 %1888 to float
  %1890 = fmul fast float %1889, %1885
  %1891 = fmul fast float %1890, %1890
  %1892 = fsub fast float 0x4002A9FBE0000000, %1875
  %1893 = fadd fast float %1875, 0x3FD54FDF00000000
  %1894 = bitcast float %1893 to i32
  %1895 = sub nsw i32 2129859010, %1894
  %1896 = bitcast i32 %1895 to float
  %1897 = fmul fast float %1896, %1892
  %1898 = fmul fast float %1897, %1897
  %1899 = fsub fast float 0x4002A9FBE0000000, %1884
  %1900 = fadd fast float %1884, 0x3FD54FDF00000000
  %1901 = bitcast float %1900 to i32
  %1902 = sub nsw i32 2129859010, %1901
  %1903 = bitcast i32 %1902 to float
  %1904 = fmul fast float %1903, %1899
  %1905 = fmul fast float %1904, %1904
  %1906 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1891)  ; FMax(a,b)
  %1907 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1898)  ; FMax(a,b)
  %1908 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1905)  ; FMax(a,b)
  %1909 = fsub fast float 1.000000e+00, %1794
  %1910 = fadd fast float %1909, %1810
  %1911 = call float @dx.op.unary.f32(i32 7, float %1910)  ; Saturate(value)
  %1912 = fsub fast float 1.000000e+00, %1774
  %1913 = fmul fast float %1852, %1912
  %1914 = fmul fast float %1855, %1855
  %1915 = fmul fast float %1914, %1913
  %1916 = fmul fast float %1915, %1857
  %1917 = fmul fast float %1912, 0xBFE99999A0000000
  %1918 = fmul fast float %1917, %1803
  %1919 = fmul fast float %1918, %1814
  %1920 = fadd fast float %1919, 1.000000e+00
  %1921 = fadd fast float %1319, -1.000000e+00
  %1922 = fmul fast float %1920, %1921
  %1923 = fadd fast float %1922, 1.000000e+00
  %1924 = fsub fast float %1906, %1316
  %1925 = fsub fast float %1907, %1317
  %1926 = fsub fast float %1908, %1318
  %1927 = fmul fast float %1916, %1924
  %1928 = fmul fast float %1916, %1925
  %1929 = fmul fast float %1916, %1926
  %1930 = fadd fast float %1927, %1316
  %1931 = fadd fast float %1928, %1317
  %1932 = fadd fast float %1929, %1318
  %1933 = fsub fast float %34, %1295
  %1934 = fsub fast float %35, %1296
  %1935 = fsub fast float %36, %1297
  %1936 = fmul fast float %1916, %1933
  %1937 = fmul fast float %1916, %1934
  %1938 = fmul fast float %1916, %1935
  %1939 = fadd fast float %1936, %1295
  %1940 = fadd fast float %1937, %1296
  %1941 = fadd fast float %1938, %1297
  %1942 = fmul fast float %1916, %1911
  %1943 = call float @dx.op.unary.f32(i32 7, float %1923)  ; Saturate(value)
  %1944 = fsub fast float 1.000000e+00, %1943
  %1945 = fmul fast float %1942, %1944
  %1946 = fadd fast float %1945, %1943
  %1947 = fsub fast float 1.000000e+00, %1279
  %1948 = fmul fast float %1916, %1947
  %1949 = fadd fast float %1948, %1279
  %1950 = call float @dx.op.dot3.f32(i32 55, float %1939, float %1940, float %1941, float %1939, float %1940, float %1941)  ; Dot3(ax,ay,az,bx,by,bz)
  %1951 = call float @dx.op.unary.f32(i32 25, float %1950)  ; Rsqrt(value)
  %1952 = fmul fast float %1939, %1951
  %1953 = fmul fast float %1940, %1951
  %1954 = fmul fast float %1941, %1951
  br label %1955

; <label>:1955                                    ; preds = %1787, %1780
  %1956 = phi float [ %1786, %1780 ], [ %1793, %1787 ]
  %1957 = phi float [ %1785, %1780 ], [ %1791, %1787 ]
  %1958 = phi float [ %1784, %1780 ], [ %1789, %1787 ]
  %1959 = phi float [ %1783, %1780 ], [ %1792, %1787 ]
  %1960 = phi float [ %1782, %1780 ], [ %1790, %1787 ]
  %1961 = phi float [ %1781, %1780 ], [ %1788, %1787 ]
  %1962 = phi float [ %1398, %1780 ], [ %1839, %1787 ]
  %1963 = phi float [ %1399, %1780 ], [ %1840, %1787 ]
  %1964 = phi float [ %1400, %1780 ], [ %1841, %1787 ]
  %1965 = phi float [ %1316, %1780 ], [ %1930, %1787 ]
  %1966 = phi float [ %1317, %1780 ], [ %1931, %1787 ]
  %1967 = phi float [ %1318, %1780 ], [ %1932, %1787 ]
  %1968 = phi float [ %1295, %1780 ], [ %1952, %1787 ]
  %1969 = phi float [ %1296, %1780 ], [ %1953, %1787 ]
  %1970 = phi float [ %1297, %1780 ], [ %1954, %1787 ]
  %1971 = phi float [ %1319, %1780 ], [ %1946, %1787 ]
  %1972 = phi float [ %1279, %1780 ], [ %1949, %1787 ]
  %1973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1974 = extractvalue %dx.types.CBufRet.f32 %1973, 2
  %1975 = extractvalue %dx.types.CBufRet.f32 %1973, 3
  %1976 = fmul fast float %1974, %46
  %1977 = fmul fast float %1975, %47
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.CBufRet.f32 %1978, 1
  %1981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1976, float %1977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = fmul fast float %1982, %1980
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  %1985 = fadd fast float %1984, -1.000000e+00
  %1986 = fmul fast float %1985, %1979
  %1987 = select i1 %135, float 0.000000e+00, float %1967
  %1988 = call float @dx.op.dot3.f32(i32 55, float %1968, float %1969, float %1970, float %1958, float %1957, float %1956)  ; Dot3(ax,ay,az,bx,by,bz)
  %1989 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1990 = fsub fast float 1.000000e+00, %1972
  %1991 = bitcast float %1990 to i32
  %1992 = sub nsw i32 2129859010, %1991
  %1993 = bitcast i32 %1992 to float
  %1994 = fmul fast float %1292, %1273
  %1995 = fmul fast float %1292, %1274
  %1996 = fmul fast float %1292, %1275
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 3
  %1999 = fcmp fast oeq float %1998, 0.000000e+00
  br i1 %1999, label %2292, label %2000

; <label>:2000                                    ; preds = %1955
  %2001 = extractvalue %dx.types.CBufRet.f32 %1997, 0
  %2002 = extractvalue %dx.types.CBufRet.f32 %1997, 1
  %2003 = extractvalue %dx.types.CBufRet.f32 %1997, 2
  %2004 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2005 = extractvalue %dx.types.CBufRet.f32 %2004, 0
  %2006 = extractvalue %dx.types.CBufRet.f32 %2004, 1
  %2007 = extractvalue %dx.types.CBufRet.f32 %2004, 2
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  %2010 = extractvalue %dx.types.CBufRet.f32 %2008, 1
  %2011 = call float @dx.op.dot3.f32(i32 55, float %2005, float %2006, float %2007, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2012 = select i1 %135, float %2009, float %2005
  %2013 = select i1 %135, float %2011, float %2006
  %2014 = select i1 %135, float %2010, float %2007
  %2015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2016 = extractvalue %dx.types.CBufRet.f32 %2015, 1
  %2017 = fcmp fast une float %2016, 0.000000e+00
  br i1 %2017, label %2018, label %2035

; <label>:2018                                    ; preds = %2000
  %2019 = fptoui float %46 to i32
  %2020 = fptoui float %47 to i32
  %2021 = lshr i32 %2019, 4
  %2022 = lshr i32 %2020, 4
  %2023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2024 = extractvalue %dx.types.CBufRet.f32 %2023, 0
  %2025 = fptoui float %2024 to i32
  %2026 = add i32 %2025, 15
  %2027 = lshr i32 %2026, 4
  %2028 = mul i32 %2027, %2022
  %2029 = add i32 %2028, %2021
  %2030 = shl i32 %2029, 3
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = and i32 %2032, -268435456
  %2034 = icmp eq i32 %2033, -1342177280
  br i1 %2034, label %2040, label %2035

; <label>:2035                                    ; preds = %2018, %2000
  %2036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %1976, float %1977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.ResRet.f32 %2036, 1
  %2039 = extractvalue %dx.types.ResRet.f32 %2036, 2
  br label %2040

; <label>:2040                                    ; preds = %2035, %2018
  %2041 = phi float [ %2037, %2035 ], [ 0.000000e+00, %2018 ]
  %2042 = phi float [ %2038, %2035 ], [ 0.000000e+00, %2018 ]
  %2043 = phi float [ %2039, %2035 ], [ 0.000000e+00, %2018 ]
  %2044 = call float @dx.op.binary.f32(i32 36, float %2042, float %2043)  ; FMin(a,b)
  %2045 = call float @dx.op.binary.f32(i32 36, float %2041, float %2044)  ; FMin(a,b)
  %2046 = fcmp fast ogt float %2045, 0.000000e+00
  br i1 %2046, label %2047, label %2292, !dx.controlflow.hints !63

; <label>:2047                                    ; preds = %2040
  %2048 = fmul fast float %2041, %2012
  %2049 = fmul fast float %2042, %2013
  %2050 = fmul fast float %2043, %2014
  %2051 = fsub fast float %2001, %1961
  %2052 = fsub fast float %2002, %1960
  %2053 = fsub fast float %2003, %1959
  %2054 = call float @dx.op.dot3.f32(i32 55, float %2051, float %2052, float %2053, float %2051, float %2052, float %2053)  ; Dot3(ax,ay,az,bx,by,bz)
  %2055 = call float @dx.op.unary.f32(i32 25, float %2054)  ; Rsqrt(value)
  %2056 = fmul fast float %2055, %2051
  %2057 = fmul fast float %2055, %2052
  %2058 = fmul fast float %2055, %2053
  %2059 = call float @dx.op.dot3.f32(i32 55, float %2001, float %2002, float %2003, float %1968, float %1969, float %1970)  ; Dot3(ax,ay,az,bx,by,bz)
  %2060 = call float @dx.op.dot3.f32(i32 55, float %1958, float %1957, float %1956, float %2056, float %2057, float %2058)  ; Dot3(ax,ay,az,bx,by,bz)
  %2061 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2062 = fmul fast float %2061, %2061
  %2063 = fmul fast float %2062, %1993
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  %2065 = fmul fast float %2064, %2061
  %2066 = call float @dx.op.dot3.f32(i32 55, float %1968, float %1969, float %1970, float %2056, float %2057, float %2058)  ; Dot3(ax,ay,az,bx,by,bz)
  %2067 = fmul fast float %2066, %2066
  %2068 = call float @dx.op.unary.f32(i32 6, float %2059)  ; FAbs(value)
  %2069 = fsub fast float 1.000000e+00, %1971
  %2070 = call float @dx.op.binary.f32(i32 35, float %2069, float 0x3F847AE140000000)  ; FMax(a,b)
  %2071 = fmul fast float %2070, %2070
  %2072 = fmul fast float %2071, %2071
  %2073 = fsub fast float 1.000000e+00, %2072
  %2074 = fmul fast float %1989, %1989
  %2075 = fmul fast float %2074, %2073
  %2076 = fadd fast float %2075, %2072
  %2077 = bitcast float %2076 to i32
  %2078 = ashr i32 %2077, 1
  %2079 = add nsw i32 %2078, 532487669
  %2080 = bitcast i32 %2079 to float
  %2081 = fadd fast float %2080, %1989
  %2082 = fmul fast float %2072, %2067
  %2083 = fsub fast float 1.000000e+00, %2067
  %2084 = fadd fast float %2083, %2082
  %2085 = fmul fast float %2068, %2068
  %2086 = fmul fast float %2085, %2073
  %2087 = fadd fast float %2086, %2072
  %2088 = bitcast float %2087 to i32
  %2089 = ashr i32 %2088, 1
  %2090 = add nsw i32 %2089, 532487669
  %2091 = bitcast i32 %2090 to float
  %2092 = fadd fast float %2091, %2068
  %2093 = fmul fast float %2084, %2084
  %2094 = fmul fast float %2093, %2081
  %2095 = fmul fast float %2094, %2092
  %2096 = fdiv fast float 0x3FF0A00000000000, %2095
  %2097 = fmul fast float %2096, %2072
  %2098 = call float @dx.op.unary.f32(i32 6, float %2060)  ; FAbs(value)
  %2099 = fsub fast float 1.000000e+00, %2098
  %2100 = bitcast float %2099 to i32
  %2101 = sitofp i32 %2100 to float
  %2102 = fmul fast float %2101, 5.000000e+00
  %2103 = fadd fast float %2102, 0xC1EFBF8940000000
  %2104 = fptosi float %2103 to i32
  %2105 = bitcast i32 %2104 to float
  %2106 = fsub fast float 1.000000e+00, %1965
  %2107 = fsub fast float 1.000000e+00, %1966
  %2108 = fsub fast float 1.000000e+00, %1987
  %2109 = fmul fast float %2105, %2106
  %2110 = fmul fast float %2105, %2107
  %2111 = fmul fast float %2105, %2108
  %2112 = fadd fast float %2109, %1965
  %2113 = fadd fast float %2110, %1966
  %2114 = fadd fast float %2111, %1987
  %2115 = fcmp fast ogt float %1269, 0.000000e+00
  br i1 %2115, label %2116, label %2139

; <label>:2116                                    ; preds = %2047
  %2117 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1269, float %2098, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2118 = extractvalue %dx.types.ResRet.f32 %2117, 0
  %2119 = extractvalue %dx.types.ResRet.f32 %2117, 1
  %2120 = extractvalue %dx.types.ResRet.f32 %2117, 2
  %2121 = fadd fast float %2118, -5.000000e-01
  %2122 = fadd fast float %2119, -5.000000e-01
  %2123 = fadd fast float %2120, -5.000000e-01
  %2124 = fmul fast float %1965, 4.000000e+00
  %2125 = fmul fast float %2124, %2106
  %2126 = fmul fast float %2125, %2121
  %2127 = fmul fast float %1966, 4.000000e+00
  %2128 = fmul fast float %2127, %2107
  %2129 = fmul fast float %2128, %2122
  %2130 = fmul fast float %1987, 4.000000e+00
  %2131 = fmul fast float %2130, %2108
  %2132 = fmul fast float %2131, %2123
  %2133 = fadd fast float %2126, %2112
  %2134 = fadd fast float %2129, %2113
  %2135 = fadd fast float %2132, %2114
  %2136 = call float @dx.op.unary.f32(i32 7, float %2133)  ; Saturate(value)
  %2137 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2138 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  br label %2139

; <label>:2139                                    ; preds = %2116, %2047
  %2140 = phi float [ %2136, %2116 ], [ %2112, %2047 ]
  %2141 = phi float [ %2137, %2116 ], [ %2113, %2047 ]
  %2142 = phi float [ %2138, %2116 ], [ %2114, %2047 ]
  %2143 = fmul fast float %2059, 9.843750e-01
  %2144 = fmul fast float %1971, 9.843750e-01
  %2145 = fadd fast float %2143, 7.812500e-03
  %2146 = fadd fast float %2144, 7.812500e-03
  %2147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %25, float %2145, float %2146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2148 = extractvalue %dx.types.ResRet.f32 %2147, 2
  %2149 = extractvalue %dx.types.ResRet.f32 %2147, 3
  %2150 = fmul fast float %2148, %1965
  %2151 = fmul fast float %2148, %1966
  %2152 = fmul fast float %2148, %1987
  %2153 = fadd fast float %2150, %2149
  %2154 = fadd fast float %2151, %2149
  %2155 = fadd fast float %2152, %2149
  br i1 %2115, label %2156, label %2179

; <label>:2156                                    ; preds = %2139
  %2157 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1269, float %2059, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = extractvalue %dx.types.ResRet.f32 %2157, 1
  %2160 = extractvalue %dx.types.ResRet.f32 %2157, 2
  %2161 = fadd fast float %2158, -5.000000e-01
  %2162 = fadd fast float %2159, -5.000000e-01
  %2163 = fadd fast float %2160, -5.000000e-01
  %2164 = fmul fast float %1965, 4.000000e+00
  %2165 = fmul fast float %2164, %2106
  %2166 = fmul fast float %2165, %2161
  %2167 = fmul fast float %1966, 4.000000e+00
  %2168 = fmul fast float %2167, %2107
  %2169 = fmul fast float %2168, %2162
  %2170 = fmul fast float %1987, 4.000000e+00
  %2171 = fmul fast float %2170, %2108
  %2172 = fmul fast float %2171, %2163
  %2173 = fadd fast float %2166, %2153
  %2174 = fadd fast float %2169, %2154
  %2175 = fadd fast float %2172, %2155
  %2176 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2177 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2178 = call float @dx.op.unary.f32(i32 7, float %2175)  ; Saturate(value)
  br label %2179

; <label>:2179                                    ; preds = %2156, %2139
  %2180 = phi float [ %2176, %2156 ], [ %2153, %2139 ]
  %2181 = phi float [ %2177, %2156 ], [ %2154, %2139 ]
  %2182 = phi float [ %2178, %2156 ], [ %2155, %2139 ]
  %2183 = call float @dx.op.binary.f32(i32 35, float %2181, float %2182)  ; FMax(a,b)
  %2184 = call float @dx.op.binary.f32(i32 35, float %2180, float %2183)  ; FMax(a,b)
  %2185 = fsub fast float 1.000000e+00, %2184
  %2186 = fsub fast float -0.000000e+00, %1968
  %2187 = fsub fast float -0.000000e+00, %1969
  %2188 = fsub fast float -0.000000e+00, %1970
  %2189 = call float @dx.op.dot3.f32(i32 55, float %2001, float %2002, float %2003, float %2186, float %2187, float %2188)  ; Dot3(ax,ay,az,bx,by,bz)
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = fmul fast float %2190, 9.843750e-01
  %2192 = fadd fast float %2191, 7.812500e-03
  %2193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %25, float %2192, float %2146, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2194 = extractvalue %dx.types.ResRet.f32 %2193, 2
  %2195 = extractvalue %dx.types.ResRet.f32 %2193, 3
  %2196 = fmul fast float %2194, %1965
  %2197 = fmul fast float %2194, %1966
  %2198 = fmul fast float %2194, %1987
  %2199 = fadd fast float %2196, %2195
  %2200 = fadd fast float %2197, %2195
  %2201 = fadd fast float %2198, %2195
  br i1 %2115, label %2202, label %2225

; <label>:2202                                    ; preds = %2179
  %2203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1269, float %2190, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  %2205 = extractvalue %dx.types.ResRet.f32 %2203, 1
  %2206 = extractvalue %dx.types.ResRet.f32 %2203, 2
  %2207 = fadd fast float %2204, -5.000000e-01
  %2208 = fadd fast float %2205, -5.000000e-01
  %2209 = fadd fast float %2206, -5.000000e-01
  %2210 = fmul fast float %1965, 4.000000e+00
  %2211 = fmul fast float %2210, %2106
  %2212 = fmul fast float %2211, %2207
  %2213 = fmul fast float %1966, 4.000000e+00
  %2214 = fmul fast float %2213, %2107
  %2215 = fmul fast float %2214, %2208
  %2216 = fmul fast float %1987, 4.000000e+00
  %2217 = fmul fast float %2216, %2108
  %2218 = fmul fast float %2217, %2209
  %2219 = fadd fast float %2212, %2199
  %2220 = fadd fast float %2215, %2200
  %2221 = fadd fast float %2218, %2201
  %2222 = call float @dx.op.unary.f32(i32 7, float %2219)  ; Saturate(value)
  %2223 = call float @dx.op.unary.f32(i32 7, float %2220)  ; Saturate(value)
  %2224 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  br label %2225

; <label>:2225                                    ; preds = %2202, %2179
  %2226 = phi float [ %2222, %2202 ], [ %2199, %2179 ]
  %2227 = phi float [ %2223, %2202 ], [ %2200, %2179 ]
  %2228 = phi float [ %2224, %2202 ], [ %2201, %2179 ]
  %2229 = call float @dx.op.binary.f32(i32 35, float %2227, float %2228)  ; FMax(a,b)
  %2230 = call float @dx.op.binary.f32(i32 35, float %2226, float %2229)  ; FMax(a,b)
  %2231 = fsub fast float 1.000000e+00, %2230
  %2232 = fmul fast float %2231, %2190
  %2233 = fmul fast float %2232, %1384
  %2234 = fmul fast float %2232, %1385
  %2235 = fmul fast float %2232, %1386
  %2236 = fmul fast float %2140, %2097
  %2237 = fmul fast float %2141, %2097
  %2238 = fmul fast float %2142, %2097
  %2239 = call float @dx.op.dot3.f32(i32 55, float %1962, float %1963, float %1964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2240 = fcmp fast ogt float %2239, 0x3E7FF19E20000000
  %2241 = fdiv fast float 1.000000e+00, %2239
  %2242 = select i1 %2240, float %2241, float 0.000000e+00
  %2243 = fmul fast float %2242, %1962
  %2244 = fmul fast float %2242, %1963
  %2245 = fmul fast float %2242, %1964
  %2246 = fadd fast float %2243, -1.000000e+00
  %2247 = fadd fast float %2244, -1.000000e+00
  %2248 = fadd fast float %2245, -1.000000e+00
  %2249 = fmul fast float %2246, 5.000000e-01
  %2250 = fmul fast float %2247, 5.000000e-01
  %2251 = fmul fast float %2248, 5.000000e-01
  %2252 = fadd fast float %2249, 1.000000e+00
  %2253 = fadd fast float %2250, 1.000000e+00
  %2254 = fadd fast float %2251, 1.000000e+00
  %2255 = fsub fast float 1.000000e+00, %2060
  %2256 = bitcast float %2255 to i32
  %2257 = sitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 5.000000e+00
  %2259 = fadd fast float %2258, 0xC1EFBF8940000000
  %2260 = fptosi float %2259 to i32
  %2261 = bitcast i32 %2260 to float
  %2262 = fmul fast float %2261, %1268
  %2263 = fmul fast float %2185, %2262
  %2264 = fmul fast float %2263, %2252
  %2265 = fmul fast float %2263, %2253
  %2266 = fmul fast float %2263, %2254
  %2267 = fmul fast float %2185, %2065
  %2268 = fadd fast float %2264, %2236
  %2269 = fadd fast float %2265, %2237
  %2270 = fadd fast float %2266, %2238
  %2271 = fadd fast float %2233, %2267
  %2272 = fadd fast float %2234, %2267
  %2273 = fadd fast float %2235, %2267
  %2274 = fmul fast float %2065, %2048
  %2275 = fmul fast float %2274, %2268
  %2276 = fmul fast float %2065, %2049
  %2277 = fmul fast float %2276, %2269
  %2278 = fmul fast float %2065, %2050
  %2279 = fmul fast float %2278, %2270
  %2280 = fmul fast float %2048, %1292
  %2281 = fmul fast float %2280, %2271
  %2282 = fmul fast float %2049, %1292
  %2283 = fmul fast float %2282, %2272
  %2284 = fmul fast float %2050, %1292
  %2285 = fmul fast float %2284, %2273
  %2286 = fadd fast float %2275, %1273
  %2287 = fmul fast float %2286, %1292
  %2288 = fadd fast float %2277, %1274
  %2289 = fmul fast float %2288, %1292
  %2290 = fadd fast float %2279, %1275
  %2291 = fmul fast float %2290, %1292
  br label %2292

; <label>:2292                                    ; preds = %2225, %2040, %1955
  %2293 = phi float [ %1994, %1955 ], [ %1994, %2040 ], [ %2287, %2225 ]
  %2294 = phi float [ %1995, %1955 ], [ %1995, %2040 ], [ %2289, %2225 ]
  %2295 = phi float [ %1996, %1955 ], [ %1996, %2040 ], [ %2291, %2225 ]
  %2296 = phi float [ 0.000000e+00, %1955 ], [ 0.000000e+00, %2040 ], [ %2281, %2225 ]
  %2297 = phi float [ 0.000000e+00, %1955 ], [ 0.000000e+00, %2040 ], [ %2283, %2225 ]
  %2298 = phi float [ 0.000000e+00, %1955 ], [ 0.000000e+00, %2040 ], [ %2285, %2225 ]
  %2299 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.i32 %2299, 0
  %2301 = icmp eq i32 %2300, 0
  br i1 %2301, label %2810, label %2302

; <label>:2302                                    ; preds = %2292
  %2303 = fptoui float %46 to i32
  %2304 = fptoui float %47 to i32
  %2305 = lshr i32 %2303, 4
  %2306 = lshr i32 %2304, 4
  %2307 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2308 = extractvalue %dx.types.CBufRet.i32 %2307, 0
  %2309 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2306, i32 %2308, i32 %2305)  ; UMad(a,b,c)
  %2310 = add nsw i32 %2300, -1
  %2311 = call i32 @dx.op.binary.i32(i32 37, i32 %2310, i32 0)  ; IMax(a,b)
  %2312 = call float @dx.op.binary.f32(i32 35, float %41, float 0.000000e+00)  ; FMax(a,b)
  %2313 = fptoui float %2312 to i32
  %2314 = lshr i32 %2313, 5
  %2315 = call i32 @dx.op.binary.i32(i32 40, i32 %2314, i32 8191)  ; UMin(a,b)
  %2316 = shl i32 %2315, 2
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = lshr i32 %2318, 16
  %2320 = and i32 %2318, 65535
  %2321 = lshr i32 %2318, 21
  %2322 = lshr i32 %2320, 5
  %2323 = call i32 @dx.op.binary.i32(i32 40, i32 %2322, i32 %2311)  ; UMin(a,b)
  %2324 = icmp ugt i32 %2321, %2323
  br i1 %2324, label %2810, label %2325

; <label>:2325                                    ; preds = %2302
  br label %2326

; <label>:2326                                    ; preds = %2800, %2325
  %2327 = phi i32 [ %2807, %2800 ], [ %2321, %2325 ]
  %2328 = phi float [ %2801, %2800 ], [ %2293, %2325 ]
  %2329 = phi float [ %2802, %2800 ], [ %2294, %2325 ]
  %2330 = phi float [ %2803, %2800 ], [ %2295, %2325 ]
  %2331 = phi float [ %2804, %2800 ], [ %2296, %2325 ]
  %2332 = phi float [ %2805, %2800 ], [ %2297, %2325 ]
  %2333 = phi float [ %2806, %2800 ], [ %2298, %2325 ]
  %2334 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2335 = extractvalue %dx.types.CBufRet.i32 %2334, 0
  %2336 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2309, i32 %2335, i32 %2327)  ; UMad(a,b,c)
  %2337 = shl i32 %2336, 2
  %2338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2337, i32 undef)  ; BufferLoad(srv,index,wot)
  %2339 = extractvalue %dx.types.ResRet.i32 %2338, 0
  %2340 = shl i32 %2327, 5
  %2341 = sub nsw i32 %2319, %2340
  %2342 = call i32 @dx.op.binary.i32(i32 37, i32 %2341, i32 0)  ; IMax(a,b)
  %2343 = call i32 @dx.op.binary.i32(i32 38, i32 %2342, i32 31)  ; IMin(a,b)
  %2344 = sub nsw i32 1, %2319
  %2345 = add nsw i32 %2344, %2320
  %2346 = call i32 @dx.op.binary.i32(i32 37, i32 %2345, i32 0)  ; IMax(a,b)
  %2347 = call i32 @dx.op.binary.i32(i32 38, i32 %2346, i32 32)  ; IMin(a,b)
  %2348 = and i32 %2347, 31
  %2349 = shl i32 -1, %2348
  %2350 = xor i32 %2349, -1
  %2351 = and i32 %2343, 31
  %2352 = shl i32 %2350, %2351
  %2353 = icmp eq i32 %2347, 32
  %2354 = select i1 %2353, i32 -1, i32 %2352
  %2355 = and i32 %2354, %2339
  %2356 = icmp eq i32 %2355, 0
  br i1 %2356, label %2800, label %2357

; <label>:2357                                    ; preds = %2326
  br label %2358

; <label>:2358                                    ; preds = %2438, %2357
  %2359 = phi i32 [ %2370, %2438 ], [ %2355, %2357 ]
  %2360 = phi float [ %2439, %2438 ], [ %2328, %2357 ]
  %2361 = phi float [ %2440, %2438 ], [ %2329, %2357 ]
  %2362 = phi float [ %2441, %2438 ], [ %2330, %2357 ]
  %2363 = phi float [ %2442, %2438 ], [ %2331, %2357 ]
  %2364 = phi float [ %2443, %2438 ], [ %2332, %2357 ]
  %2365 = phi float [ %2444, %2438 ], [ %2333, %2357 ]
  %2366 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2359)  ; FirstbitLo(value)
  %2367 = add i32 %2366, %2340
  %2368 = and i32 %2366, 31
  %2369 = shl i32 1, %2368
  %2370 = xor i32 %2369, %2359
  %2371 = mul i32 %2367, 112
  %2372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.f32 %2372, 0
  %2374 = extractvalue %dx.types.ResRet.f32 %2372, 1
  %2375 = extractvalue %dx.types.ResRet.f32 %2372, 2
  %2376 = or i32 %2371, 12
  %2377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2376, i32 undef)  ; BufferLoad(srv,index,wot)
  %2378 = extractvalue %dx.types.ResRet.f32 %2377, 0
  %2379 = add i32 %2371, 44
  %2380 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = add i32 %2371, 48
  %2383 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.f32 %2383, 0
  %2385 = extractvalue %dx.types.ResRet.f32 %2383, 1
  %2386 = extractvalue %dx.types.ResRet.f32 %2383, 2
  %2387 = add i32 %2371, 80
  %2388 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2387, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.f32 %2388, 1
  %2390 = extractvalue %dx.types.ResRet.f32 %2388, 2
  %2391 = call float @dx.op.dot3.f32(i32 55, float %2373, float %2374, float %2375, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2392 = select i1 %135, float %2389, float %2373
  %2393 = select i1 %135, float %2391, float %2374
  %2394 = select i1 %135, float %2390, float %2375
  %2395 = fsub fast float %2384, %93
  %2396 = fsub fast float %2385, %94
  %2397 = fsub fast float %2386, %95
  %2398 = call float @dx.op.dot3.f32(i32 55, float %2395, float %2396, float %2397, float %2395, float %2396, float %2397)  ; Dot3(ax,ay,az,bx,by,bz)
  %2399 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2400 = fdiv fast float 1.000000e+00, %2399
  %2401 = fmul fast float %2400, %2395
  %2402 = fmul fast float %2400, %2396
  %2403 = fmul fast float %2400, %2397
  %2404 = fadd fast float %2399, %2378
  %2405 = fdiv fast float 1.000000e+00, %2404
  %2406 = fmul float %2381, %2405
  %2407 = fmul float %2406, %2406
  %2408 = call float @dx.op.unary.f32(i32 7, float %2407)  ; Saturate(value)
  %2409 = and i32 %2369, %2355
  %2410 = icmp eq i32 %2409, 0
  br i1 %2410, label %2433, label %2411, !dx.controlflow.hints !64

; <label>:2411                                    ; preds = %2358
  %2412 = lshr i32 %2303, 5
  %2413 = lshr i32 %2304, 5
  %2414 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %2412, i32 %2413, i32 %2367, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2415 = extractvalue %dx.types.ResRet.i32 %2414, 0
  %2416 = and i32 %2415, 3
  %2417 = icmp eq i32 %2416, 0
  %2418 = select i1 %2417, float 1.000000e+00, float 0.000000e+00
  %2419 = icmp eq i32 %2416, 3
  br i1 %2419, label %2420, label %2433

; <label>:2420                                    ; preds = %2411
  %2421 = lshr i32 %2415, 10
  %2422 = and i32 %2421, 8160
  %2423 = and i32 %2304, 31
  %2424 = or i32 %2422, %2423
  %2425 = lshr i32 %2415, 1
  %2426 = and i32 %2425, 16352
  %2427 = and i32 %2303, 31
  %2428 = or i32 %2426, %2427
  %2429 = lshr i32 %2415, 23
  %2430 = and i32 %2429, 255
  %2431 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %2428, i32 %2424, i32 %2430, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2432 = extractvalue %dx.types.ResRet.f32 %2431, 0
  br label %2433

; <label>:2433                                    ; preds = %2420, %2411, %2358
  %2434 = phi float [ %2432, %2420 ], [ %2418, %2411 ], [ 0.000000e+00, %2358 ]
  %2435 = call float @dx.op.binary.f32(i32 36, float %2434, float %2434)  ; FMin(a,b)
  %2436 = call float @dx.op.binary.f32(i32 36, float %2434, float %2435)  ; FMin(a,b)
  %2437 = fcmp fast ogt float %2436, 0.000000e+00
  br i1 %2437, label %2446, label %2438, !dx.controlflow.hints !65

; <label>:2438                                    ; preds = %2732, %2433
  %2439 = phi float [ %2360, %2433 ], [ %2796, %2732 ]
  %2440 = phi float [ %2361, %2433 ], [ %2797, %2732 ]
  %2441 = phi float [ %2362, %2433 ], [ %2798, %2732 ]
  %2442 = phi float [ %2363, %2433 ], [ %2787, %2732 ]
  %2443 = phi float [ %2364, %2433 ], [ %2788, %2732 ]
  %2444 = phi float [ %2365, %2433 ], [ %2789, %2732 ]
  %2445 = icmp eq i32 %2359, %2369
  br i1 %2445, label %2799, label %2358

; <label>:2446                                    ; preds = %2433
  %2447 = fmul fast float %2434, %2392
  %2448 = fmul fast float %2434, %2393
  %2449 = fmul fast float %2434, %2394
  %2450 = fsub fast float %2386, %1761
  %2451 = fcmp fast ogt float %2450, 0.000000e+00
  %2452 = fsub fast float %95, %1761
  %2453 = fcmp fast ogt float %2452, 0.000000e+00
  %2454 = xor i1 %2453, %2451
  %2455 = fsub fast float %1761, %2386
  %2456 = fmul fast float %2455, 2.000000e+00
  %2457 = fadd fast float %2456, %2386
  %2458 = select i1 %2454, float %2386, float %2457
  %2459 = fsub fast float %2458, %95
  %2460 = call float @dx.op.dot3.f32(i32 55, float %2395, float %2396, float %2459, float %2395, float %2396, float %2459)  ; Dot3(ax,ay,az,bx,by,bz)
  %2461 = call float @dx.op.unary.f32(i32 25, float %2460)  ; Rsqrt(value)
  %2462 = fmul fast float %2461, %2395
  %2463 = fmul fast float %2461, %2396
  %2464 = fmul fast float %2461, %2459
  %2465 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1769)  ; Dot3(ax,ay,az,bx,by,bz)
  %2466 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2462, float %2463, float %2464)  ; Dot3(ax,ay,az,bx,by,bz)
  %2467 = fdiv fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2467, %2465
  %2469 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2452, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2470 = fcmp fast ogt float %2469, 0.000000e+00
  %2471 = fcmp fast olt float %2469, 0.000000e+00
  %2472 = zext i1 %2470 to i32
  %2473 = zext i1 %2471 to i32
  %2474 = sub nsw i32 %2472, %2473
  %2475 = sitofp i32 %2474 to float
  %2476 = fsub fast float %2458, %1761
  %2477 = call float @dx.op.dot3.f32(i32 55, float %2395, float %2396, float %2476, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = fcmp fast ogt float %2477, 0.000000e+00
  %2479 = fcmp fast olt float %2477, 0.000000e+00
  %2480 = zext i1 %2478 to i32
  %2481 = zext i1 %2479 to i32
  %2482 = sub nsw i32 %2480, %2481
  %2483 = sitofp i32 %2482 to float
  %2484 = fcmp fast une float %2475, %2483
  br i1 %2484, label %2485, label %2495

; <label>:2485                                    ; preds = %2446
  %2486 = fmul fast float %2468, %2464
  %2487 = fmul fast float %2468, %2463
  %2488 = fmul fast float %2468, %2462
  %2489 = fmul fast float %2488, %2488
  %2490 = fmul fast float %2487, %2487
  %2491 = fadd fast float %2489, %2490
  %2492 = fmul fast float %2486, %2486
  %2493 = fadd fast float %2491, %2492
  %2494 = call float @dx.op.unary.f32(i32 24, float %2493)  ; Sqrt(value)
  br label %2507

; <label>:2495                                    ; preds = %2446
  %2496 = icmp slt i32 %2474, 0
  br i1 %2496, label %2497, label %2507

; <label>:2497                                    ; preds = %2495
  %2498 = fsub fast float %93, %2384
  %2499 = fsub fast float %94, %2385
  %2500 = fsub fast float %95, %2458
  %2501 = fmul fast float %2498, %2498
  %2502 = fmul fast float %2499, %2499
  %2503 = fadd fast float %2501, %2502
  %2504 = fmul fast float %2500, %2500
  %2505 = fadd fast float %2503, %2504
  %2506 = call float @dx.op.unary.f32(i32 24, float %2505)  ; Sqrt(value)
  br label %2507

; <label>:2507                                    ; preds = %2497, %2495, %2485
  %2508 = phi float [ %2494, %2485 ], [ %2506, %2497 ], [ 0.000000e+00, %2495 ]
  %2509 = and i1 %2453, %2451
  %2510 = fsub fast float -0.000000e+00, %2508
  %2511 = select i1 %2509, float -0.000000e+00, float %2510
  %2512 = fmul fast float %1762, 0x3FF7154760000000
  %2513 = fmul fast float %2512, %2511
  %2514 = fmul fast float %1763, 0x3FF7154760000000
  %2515 = fmul fast float %2514, %2511
  %2516 = fmul fast float %1764, 0x3FF7154760000000
  %2517 = fmul fast float %2516, %2511
  %2518 = call float @dx.op.unary.f32(i32 21, float %2513)  ; Exp(value)
  %2519 = call float @dx.op.unary.f32(i32 21, float %2515)  ; Exp(value)
  %2520 = call float @dx.op.unary.f32(i32 21, float %2517)  ; Exp(value)
  %2521 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  %2522 = call float @dx.op.unary.f32(i32 7, float %2519)  ; Saturate(value)
  %2523 = call float @dx.op.unary.f32(i32 7, float %2520)  ; Saturate(value)
  %2524 = fmul fast float %2447, %2521
  %2525 = fmul fast float %2448, %2522
  %2526 = fmul fast float %2449, %2523
  %2527 = fsub fast float %2401, %1961
  %2528 = fsub fast float %2402, %1960
  %2529 = fsub fast float %2403, %1959
  %2530 = call float @dx.op.dot3.f32(i32 55, float %2527, float %2528, float %2529, float %2527, float %2528, float %2529)  ; Dot3(ax,ay,az,bx,by,bz)
  %2531 = call float @dx.op.unary.f32(i32 25, float %2530)  ; Rsqrt(value)
  %2532 = fmul fast float %2531, %2527
  %2533 = fmul fast float %2531, %2528
  %2534 = fmul fast float %2531, %2529
  %2535 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2402, float %2403, float %1968, float %1969, float %1970)  ; Dot3(ax,ay,az,bx,by,bz)
  %2536 = call float @dx.op.dot3.f32(i32 55, float %1958, float %1957, float %1956, float %2532, float %2533, float %2534)  ; Dot3(ax,ay,az,bx,by,bz)
  %2537 = call float @dx.op.unary.f32(i32 7, float %2535)  ; Saturate(value)
  %2538 = fmul fast float %2537, %2408
  %2539 = fmul fast float %2537, %2537
  %2540 = fmul fast float %2539, %1993
  %2541 = call float @dx.op.unary.f32(i32 7, float %2540)  ; Saturate(value)
  %2542 = fmul fast float %2538, %2541
  %2543 = bitcast float %2398 to i32
  %2544 = ashr i32 %2543, 1
  %2545 = sub nsw i32 1597463007, %2544
  %2546 = bitcast i32 %2545 to float
  %2547 = fmul fast float %2546, %2395
  %2548 = fmul fast float %2546, %2396
  %2549 = fmul fast float %2546, %2397
  %2550 = fsub fast float %2547, %1961
  %2551 = fsub fast float %2548, %1960
  %2552 = fsub fast float %2549, %1959
  %2553 = call float @dx.op.dot3.f32(i32 55, float %2550, float %2551, float %2552, float %2550, float %2551, float %2552)  ; Dot3(ax,ay,az,bx,by,bz)
  %2554 = call float @dx.op.unary.f32(i32 25, float %2553)  ; Rsqrt(value)
  %2555 = fmul fast float %2550, %2554
  %2556 = fmul fast float %2551, %2554
  %2557 = fmul fast float %2552, %2554
  %2558 = call float @dx.op.dot3.f32(i32 55, float %1968, float %1969, float %1970, float %2555, float %2556, float %2557)  ; Dot3(ax,ay,az,bx,by,bz)
  %2559 = fmul fast float %2558, %2558
  %2560 = call float @dx.op.unary.f32(i32 6, float %2535)  ; FAbs(value)
  %2561 = fsub fast float 1.000000e+00, %1971
  %2562 = call float @dx.op.binary.f32(i32 35, float %2561, float 0x3F847AE140000000)  ; FMax(a,b)
  %2563 = fmul fast float %2562, %2562
  %2564 = fmul fast float %2563, %2563
  %2565 = fsub fast float 1.000000e+00, %2564
  %2566 = fmul fast float %1989, %1989
  %2567 = fmul fast float %2566, %2565
  %2568 = fadd fast float %2567, %2564
  %2569 = bitcast float %2568 to i32
  %2570 = ashr i32 %2569, 1
  %2571 = add nsw i32 %2570, 532487669
  %2572 = bitcast i32 %2571 to float
  %2573 = fadd fast float %2572, %1989
  %2574 = fmul fast float %2564, %2559
  %2575 = fsub fast float 1.000000e+00, %2559
  %2576 = fadd fast float %2575, %2574
  %2577 = fmul fast float %2560, %2560
  %2578 = fmul fast float %2577, %2565
  %2579 = fadd fast float %2578, %2564
  %2580 = bitcast float %2579 to i32
  %2581 = ashr i32 %2580, 1
  %2582 = add nsw i32 %2581, 532487669
  %2583 = bitcast i32 %2582 to float
  %2584 = fadd fast float %2583, %2560
  %2585 = fmul fast float %2576, %2576
  %2586 = fmul fast float %2585, %2573
  %2587 = fmul fast float %2586, %2584
  %2588 = fdiv fast float 1.000000e+00, %2587
  %2589 = bitcast float %2564 to i32
  %2590 = sitofp i32 %2589 to float
  %2591 = fmul fast float %2590, 0x3FE7F73180000000
  %2592 = fadd fast float %2591, 0x41AFE27C40000000
  %2593 = fptosi float %2592 to i32
  %2594 = bitcast i32 %2593 to float
  %2595 = fmul fast float %2381, 0x3FD80E9D60000000
  %2596 = fmul fast float %2595, %2546
  %2597 = fadd fast float %2594, %2596
  %2598 = bitcast float %2597 to i32
  %2599 = sub nsw i32 2129859010, %2598
  %2600 = bitcast i32 %2599 to float
  %2601 = fmul fast float %2564, %2588
  %2602 = fmul fast float %2601, %2594
  %2603 = fmul fast float %2602, %2600
  %2604 = call float @dx.op.unary.f32(i32 6, float %2536)  ; FAbs(value)
  %2605 = fsub fast float 1.000000e+00, %2604
  %2606 = bitcast float %2605 to i32
  %2607 = sitofp i32 %2606 to float
  %2608 = fmul fast float %2607, 5.000000e+00
  %2609 = fadd fast float %2608, 0xC1EFBF8940000000
  %2610 = fptosi float %2609 to i32
  %2611 = bitcast i32 %2610 to float
  %2612 = fsub fast float 1.000000e+00, %1965
  %2613 = fsub fast float 1.000000e+00, %1966
  %2614 = fsub fast float 1.000000e+00, %1987
  %2615 = fmul fast float %2611, %2612
  %2616 = fmul fast float %2611, %2613
  %2617 = fmul fast float %2611, %2614
  %2618 = fadd fast float %2615, %1965
  %2619 = fadd fast float %2616, %1966
  %2620 = fadd fast float %2617, %1987
  %2621 = fcmp fast ogt float %1269, 0.000000e+00
  br i1 %2621, label %2622, label %2645

; <label>:2622                                    ; preds = %2507
  %2623 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1269, float %2604, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2624 = extractvalue %dx.types.ResRet.f32 %2623, 0
  %2625 = extractvalue %dx.types.ResRet.f32 %2623, 1
  %2626 = extractvalue %dx.types.ResRet.f32 %2623, 2
  %2627 = fadd fast float %2624, -5.000000e-01
  %2628 = fadd fast float %2625, -5.000000e-01
  %2629 = fadd fast float %2626, -5.000000e-01
  %2630 = fmul fast float %1965, 4.000000e+00
  %2631 = fmul fast float %2630, %2612
  %2632 = fmul fast float %2631, %2627
  %2633 = fmul fast float %1966, 4.000000e+00
  %2634 = fmul fast float %2633, %2613
  %2635 = fmul fast float %2634, %2628
  %2636 = fmul fast float %1987, 4.000000e+00
  %2637 = fmul fast float %2636, %2614
  %2638 = fmul fast float %2637, %2629
  %2639 = fadd fast float %2632, %2618
  %2640 = fadd fast float %2635, %2619
  %2641 = fadd fast float %2638, %2620
  %2642 = call float @dx.op.unary.f32(i32 7, float %2639)  ; Saturate(value)
  %2643 = call float @dx.op.unary.f32(i32 7, float %2640)  ; Saturate(value)
  %2644 = call float @dx.op.unary.f32(i32 7, float %2641)  ; Saturate(value)
  br label %2645

; <label>:2645                                    ; preds = %2622, %2507
  %2646 = phi float [ %2642, %2622 ], [ %2618, %2507 ]
  %2647 = phi float [ %2643, %2622 ], [ %2619, %2507 ]
  %2648 = phi float [ %2644, %2622 ], [ %2620, %2507 ]
  %2649 = fmul fast float %2535, 9.843750e-01
  %2650 = fmul fast float %1971, 9.843750e-01
  %2651 = fadd fast float %2649, 7.812500e-03
  %2652 = fadd fast float %2650, 7.812500e-03
  %2653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %25, float %2651, float %2652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2654 = extractvalue %dx.types.ResRet.f32 %2653, 2
  %2655 = extractvalue %dx.types.ResRet.f32 %2653, 3
  %2656 = fmul fast float %2654, %1965
  %2657 = fmul fast float %2654, %1966
  %2658 = fmul fast float %2654, %1987
  %2659 = fadd fast float %2656, %2655
  %2660 = fadd fast float %2657, %2655
  %2661 = fadd fast float %2658, %2655
  br i1 %2621, label %2662, label %2685

; <label>:2662                                    ; preds = %2645
  %2663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1269, float %2535, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2664 = extractvalue %dx.types.ResRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.ResRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.ResRet.f32 %2663, 2
  %2667 = fadd fast float %2664, -5.000000e-01
  %2668 = fadd fast float %2665, -5.000000e-01
  %2669 = fadd fast float %2666, -5.000000e-01
  %2670 = fmul fast float %1965, 4.000000e+00
  %2671 = fmul fast float %2670, %2612
  %2672 = fmul fast float %2671, %2667
  %2673 = fmul fast float %1966, 4.000000e+00
  %2674 = fmul fast float %2673, %2613
  %2675 = fmul fast float %2674, %2668
  %2676 = fmul fast float %1987, 4.000000e+00
  %2677 = fmul fast float %2676, %2614
  %2678 = fmul fast float %2677, %2669
  %2679 = fadd fast float %2672, %2659
  %2680 = fadd fast float %2675, %2660
  %2681 = fadd fast float %2678, %2661
  %2682 = call float @dx.op.unary.f32(i32 7, float %2679)  ; Saturate(value)
  %2683 = call float @dx.op.unary.f32(i32 7, float %2680)  ; Saturate(value)
  %2684 = call float @dx.op.unary.f32(i32 7, float %2681)  ; Saturate(value)
  br label %2685

; <label>:2685                                    ; preds = %2662, %2645
  %2686 = phi float [ %2682, %2662 ], [ %2659, %2645 ]
  %2687 = phi float [ %2683, %2662 ], [ %2660, %2645 ]
  %2688 = phi float [ %2684, %2662 ], [ %2661, %2645 ]
  %2689 = call float @dx.op.binary.f32(i32 35, float %2687, float %2688)  ; FMax(a,b)
  %2690 = call float @dx.op.binary.f32(i32 35, float %2686, float %2689)  ; FMax(a,b)
  %2691 = fsub fast float 1.000000e+00, %2690
  %2692 = fsub fast float -0.000000e+00, %1968
  %2693 = fsub fast float -0.000000e+00, %1969
  %2694 = fsub fast float -0.000000e+00, %1970
  %2695 = call float @dx.op.dot3.f32(i32 55, float %2401, float %2402, float %2403, float %2692, float %2693, float %2694)  ; Dot3(ax,ay,az,bx,by,bz)
  %2696 = call float @dx.op.unary.f32(i32 7, float %2695)  ; Saturate(value)
  %2697 = fmul fast float %2696, %2408
  %2698 = fmul fast float %2696, 9.843750e-01
  %2699 = fadd fast float %2698, 7.812500e-03
  %2700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %25, float %2699, float %2652, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2701 = extractvalue %dx.types.ResRet.f32 %2700, 2
  %2702 = extractvalue %dx.types.ResRet.f32 %2700, 3
  %2703 = fmul fast float %2701, %1965
  %2704 = fmul fast float %2701, %1966
  %2705 = fmul fast float %2701, %1987
  %2706 = fadd fast float %2703, %2702
  %2707 = fadd fast float %2704, %2702
  %2708 = fadd fast float %2705, %2702
  br i1 %2621, label %2709, label %2732

; <label>:2709                                    ; preds = %2685
  %2710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1269, float %2696, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2711 = extractvalue %dx.types.ResRet.f32 %2710, 0
  %2712 = extractvalue %dx.types.ResRet.f32 %2710, 1
  %2713 = extractvalue %dx.types.ResRet.f32 %2710, 2
  %2714 = fadd fast float %2711, -5.000000e-01
  %2715 = fadd fast float %2712, -5.000000e-01
  %2716 = fadd fast float %2713, -5.000000e-01
  %2717 = fmul fast float %1965, 4.000000e+00
  %2718 = fmul fast float %2717, %2612
  %2719 = fmul fast float %2718, %2714
  %2720 = fmul fast float %1966, 4.000000e+00
  %2721 = fmul fast float %2720, %2613
  %2722 = fmul fast float %2721, %2715
  %2723 = fmul fast float %1987, 4.000000e+00
  %2724 = fmul fast float %2723, %2614
  %2725 = fmul fast float %2724, %2716
  %2726 = fadd fast float %2719, %2706
  %2727 = fadd fast float %2722, %2707
  %2728 = fadd fast float %2725, %2708
  %2729 = call float @dx.op.unary.f32(i32 7, float %2726)  ; Saturate(value)
  %2730 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2731 = call float @dx.op.unary.f32(i32 7, float %2728)  ; Saturate(value)
  br label %2732

; <label>:2732                                    ; preds = %2709, %2685
  %2733 = phi float [ %2729, %2709 ], [ %2706, %2685 ]
  %2734 = phi float [ %2730, %2709 ], [ %2707, %2685 ]
  %2735 = phi float [ %2731, %2709 ], [ %2708, %2685 ]
  %2736 = call float @dx.op.binary.f32(i32 35, float %2734, float %2735)  ; FMax(a,b)
  %2737 = call float @dx.op.binary.f32(i32 35, float %2733, float %2736)  ; FMax(a,b)
  %2738 = fsub fast float 1.000000e+00, %2737
  %2739 = fmul fast float %2697, %2738
  %2740 = fmul fast float %2739, %1384
  %2741 = fmul fast float %2739, %1385
  %2742 = fmul fast float %2739, %1386
  %2743 = fmul fast float %2646, %2603
  %2744 = fmul fast float %2647, %2603
  %2745 = fmul fast float %2648, %2603
  %2746 = call float @dx.op.dot3.f32(i32 55, float %1962, float %1963, float %1964, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2747 = fcmp fast ogt float %2746, 0x3E7FF19E20000000
  %2748 = fdiv fast float 1.000000e+00, %2746
  %2749 = select i1 %2747, float %2748, float 0.000000e+00
  %2750 = fmul fast float %2749, %1962
  %2751 = fmul fast float %2749, %1963
  %2752 = fmul fast float %2749, %1964
  %2753 = fadd fast float %2750, -1.000000e+00
  %2754 = fadd fast float %2751, -1.000000e+00
  %2755 = fadd fast float %2752, -1.000000e+00
  %2756 = fmul fast float %2753, 5.000000e-01
  %2757 = fmul fast float %2754, 5.000000e-01
  %2758 = fmul fast float %2755, 5.000000e-01
  %2759 = fadd fast float %2756, 1.000000e+00
  %2760 = fadd fast float %2757, 1.000000e+00
  %2761 = fadd fast float %2758, 1.000000e+00
  %2762 = fsub fast float 1.000000e+00, %2536
  %2763 = bitcast float %2762 to i32
  %2764 = sitofp i32 %2763 to float
  %2765 = fmul fast float %2764, 5.000000e+00
  %2766 = fadd fast float %2765, 0xC1EFBF8940000000
  %2767 = fptosi float %2766 to i32
  %2768 = bitcast i32 %2767 to float
  %2769 = fmul fast float %2768, %1268
  %2770 = fmul fast float %2691, %2769
  %2771 = fmul fast float %2770, %2759
  %2772 = fmul fast float %2770, %2760
  %2773 = fmul fast float %2770, %2761
  %2774 = fmul fast float %2691, %2542
  %2775 = fadd fast float %2771, %2743
  %2776 = fadd fast float %2772, %2744
  %2777 = fadd fast float %2773, %2745
  %2778 = fadd fast float %2740, %2774
  %2779 = fadd fast float %2741, %2774
  %2780 = fadd fast float %2742, %2774
  %2781 = fmul fast float %2524, %1292
  %2782 = fmul fast float %2781, %2778
  %2783 = fmul fast float %2525, %1292
  %2784 = fmul fast float %2783, %2779
  %2785 = fmul fast float %2526, %1292
  %2786 = fmul fast float %2785, %2780
  %2787 = fadd fast float %2782, %2363
  %2788 = fadd fast float %2784, %2364
  %2789 = fadd fast float %2786, %2365
  %2790 = fmul fast float %2781, %2542
  %2791 = fmul fast float %2790, %2775
  %2792 = fmul fast float %2783, %2542
  %2793 = fmul fast float %2792, %2776
  %2794 = fmul fast float %2785, %2542
  %2795 = fmul fast float %2794, %2777
  %2796 = fadd fast float %2791, %2360
  %2797 = fadd fast float %2793, %2361
  %2798 = fadd fast float %2795, %2362
  br label %2438

; <label>:2799                                    ; preds = %2438
  br label %2800

; <label>:2800                                    ; preds = %2799, %2326
  %2801 = phi float [ %2328, %2326 ], [ %2439, %2799 ]
  %2802 = phi float [ %2329, %2326 ], [ %2440, %2799 ]
  %2803 = phi float [ %2330, %2326 ], [ %2441, %2799 ]
  %2804 = phi float [ %2331, %2326 ], [ %2442, %2799 ]
  %2805 = phi float [ %2332, %2326 ], [ %2443, %2799 ]
  %2806 = phi float [ %2333, %2326 ], [ %2444, %2799 ]
  %2807 = add i32 %2327, 1
  %2808 = icmp ugt i32 %2807, %2323
  br i1 %2808, label %2809, label %2326

; <label>:2809                                    ; preds = %2800
  br label %2810

; <label>:2810                                    ; preds = %2809, %2302, %2292
  %2811 = phi float [ %2293, %2292 ], [ %2293, %2302 ], [ %2801, %2809 ]
  %2812 = phi float [ %2294, %2292 ], [ %2294, %2302 ], [ %2802, %2809 ]
  %2813 = phi float [ %2295, %2292 ], [ %2295, %2302 ], [ %2803, %2809 ]
  %2814 = phi float [ %2296, %2292 ], [ %2296, %2302 ], [ %2804, %2809 ]
  %2815 = phi float [ %2297, %2292 ], [ %2297, %2302 ], [ %2805, %2809 ]
  %2816 = phi float [ %2298, %2292 ], [ %2298, %2302 ], [ %2806, %2809 ]
  %2817 = call float @dx.op.unary.f32(i32 24, float %1962)  ; Sqrt(value)
  %2818 = call float @dx.op.unary.f32(i32 24, float %1963)  ; Sqrt(value)
  %2819 = call float @dx.op.unary.f32(i32 24, float %1964)  ; Sqrt(value)
  %2820 = fmul fast float %2817, %2814
  %2821 = fmul fast float %2818, %2815
  %2822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2823 = extractvalue %dx.types.CBufRet.f32 %2822, 0
  br i1 %135, label %2824, label %2848

; <label>:2824                                    ; preds = %2810
  %2825 = fadd fast float %2816, %1266
  %2826 = fmul fast float %2825, %1267
  %2827 = fsub fast float 1.000000e+00, %1267
  %2828 = call float @dx.op.unary.f32(i32 7, float %2827)  ; Saturate(value)
  %2829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2830 = extractvalue %dx.types.CBufRet.f32 %2829, 3
  %2831 = fmul fast float %2830, %2828
  %2832 = fsub fast float 1.000000e+00, %1989
  %2833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2834 = extractvalue %dx.types.CBufRet.f32 %2833, 0
  %2835 = fmul fast float %2834, %2832
  %2836 = extractvalue %dx.types.CBufRet.f32 %2833, 2
  %2837 = fmul fast float %1986, %2836
  %2838 = fadd fast float %2821, %2820
  %2839 = fmul fast float %2823, %2838
  %2840 = extractvalue %dx.types.CBufRet.f32 %2829, 1
  %2841 = fadd fast float %2831, %2826
  %2842 = fsub fast float %2841, %2835
  %2843 = fadd fast float %2842, %2837
  %2844 = fsub fast float %2843, %2840
  %2845 = extractvalue %dx.types.CBufRet.f32 %2829, 2
  %2846 = fmul fast float %2844, %2845
  %2847 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  br label %2864

; <label>:2848                                    ; preds = %2810
  %2849 = fmul fast float %2819, %2816
  %2850 = fmul fast float %2823, %2820
  %2851 = fmul fast float %2823, %2821
  %2852 = fmul fast float %2849, %2823
  %2853 = add i32 %29, 116
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 32
  %2857 = icmp eq i32 %2856, 0
  br i1 %2857, label %2864, label %2858

; <label>:2858                                    ; preds = %2848
  %2859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2860 = extractvalue %dx.types.CBufRet.f32 %2859, 0
  %2861 = fmul fast float %2860, 0x3FE99999A0000000
  %2862 = fadd fast float %2860, %2850
  %2863 = fadd fast float %2861, %2852
  br label %2864

; <label>:2864                                    ; preds = %2858, %2848, %2824
  %2865 = phi float [ %2839, %2824 ], [ %2862, %2858 ], [ %2850, %2848 ]
  %2866 = phi float [ %2847, %2824 ], [ %2851, %2858 ], [ %2851, %2848 ]
  %2867 = phi float [ 1.000000e+00, %2824 ], [ %2863, %2858 ], [ %2852, %2848 ]
  %2868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2869 = extractvalue %dx.types.CBufRet.f32 %2868, 0
  %2870 = fmul fast float %2869, %2812
  %2871 = fmul fast float %2869, %2813
  %2872 = fadd fast float %2812, %2811
  %2873 = select i1 %135, float %2872, float %2811
  %2874 = fmul float %2873, %2869
  %2875 = select i1 %135, float 0.000000e+00, float %2870
  %2876 = select i1 %135, float 0.000000e+00, float %2871
  %2877 = fmul fast float %2865, %2817
  %2878 = fmul fast float %2866, %2818
  %2879 = fmul fast float %2867, %2819
  %2880 = fadd fast float %2874, %2877
  %2881 = fadd fast float %2875, %2878
  %2882 = fadd fast float %2876, %2879
  %2883 = select i1 %135, float %2866, float %2881
  %2884 = select i1 %135, float %2867, float %2882
  %2885 = call float @dx.op.binary.f32(i32 36, float %2880, float 3.225500e+04)  ; FMin(a,b)
  %2886 = call float @dx.op.binary.f32(i32 36, float %2883, float 3.225500e+04)  ; FMin(a,b)
  %2887 = call float @dx.op.binary.f32(i32 36, float %2884, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2885)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2886)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2887)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!42}
!dx.entryPoints = !{!43}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !34, !37}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
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
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!34 = !{!35, !36}
!35 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!36 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!37 = !{!38, !39, !40, !41}
!38 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!39 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!40 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!41 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!42 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
!43 = !{void ()* @ps_main, !"ps_main", !44, !4, !62}
!44 = !{!45, !60, null}
!45 = !{!46, !49, !51, !52, !54, !56, !58, !59}
!46 = !{i32 0, !"SV_Position", i8 9, i8 3, !47, i8 4, i32 1, i8 4, i32 0, i8 0, !48}
!47 = !{i32 0}
!48 = !{i32 3, i32 11}
!49 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !47, i8 2, i32 1, i8 2, i32 1, i8 0, !50}
!50 = !{i32 3, i32 3}
!51 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 2, i8 0, null}
!52 = !{i32 3, !"NORMAL", i8 9, i8 0, !47, i8 2, i32 1, i8 3, i32 3, i8 0, !53}
!53 = !{i32 3, i32 7}
!54 = !{i32 4, !"TANGENT", i8 9, i8 0, !47, i8 2, i32 1, i8 4, i32 4, i8 0, !55}
!55 = !{i32 3, i32 15}
!56 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !47, i8 1, i32 1, i8 1, i32 5, i8 0, !57}
!57 = !{i32 3, i32 1}
!58 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !47, i8 1, i32 1, i8 1, i32 5, i8 1, null}
!59 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !47, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!60 = !{!61}
!61 = !{i32 0, !"SV_Target", i8 9, i8 16, !47, i8 0, i32 1, i8 4, i32 0, i8 0, !55}
!62 = !{i32 0, i64 24}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}

