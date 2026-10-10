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
; shader hash: 342aae63c9017ca397eac9d6e2dcd87a
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
  br i1 %175, label %636, label %176

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
  %623 = add i32 %29, 48
  %624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %623, i32 undef)  ; BufferLoad(srv,index,wot)
  %625 = extractvalue %dx.types.ResRet.i32 %624, 0
  %626 = and i32 %625, 255
  %627 = uitofp i32 %626 to float
  %628 = lshr i32 %625, 8
  %629 = and i32 %628, 255
  %630 = uitofp i32 %629 to float
  %631 = call float @dx.op.dot3.f32(i32 55, float %492, float %493, float %494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = fmul fast float %630, %631
  %633 = fadd fast float %632, %627
  %634 = fmul fast float %633, 0x3F70101020000000
  %635 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  br label %636

; <label>:636                                     ; preds = %619, %134
  %637 = phi float [ 0.000000e+00, %134 ], [ %573, %619 ]
  %638 = phi float [ 0.000000e+00, %134 ], [ %574, %619 ]
  %639 = phi float [ 0.000000e+00, %134 ], [ %492, %619 ]
  %640 = phi float [ 0.000000e+00, %134 ], [ %493, %619 ]
  %641 = phi float [ 0.000000e+00, %134 ], [ %494, %619 ]
  %642 = phi float [ 0.000000e+00, %134 ], [ %620, %619 ]
  %643 = phi float [ 0.000000e+00, %134 ], [ %621, %619 ]
  %644 = phi float [ 0.000000e+00, %134 ], [ %622, %619 ]
  %645 = phi float [ 0.000000e+00, %134 ], [ %478, %619 ]
  %646 = phi float [ 0.000000e+00, %134 ], [ 1.000000e+00, %619 ]
  %647 = phi float [ 0.000000e+00, %134 ], [ %572, %619 ]
  %648 = phi float [ 0.000000e+00, %134 ], [ %575, %619 ]
  %649 = phi float [ 0.000000e+00, %134 ], [ %635, %619 ]
  %650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %651 = extractvalue %dx.types.CBufRet.f32 %650, 0
  %652 = call float @dx.op.dot2.f32(i32 54, float %637, float %638, float %637, float %638)  ; Dot2(ax,ay,bx,by)
  %653 = fmul fast float %652, 0x3FE3333340000000
  %654 = fsub fast float 1.000000e+00, %653
  %655 = call float @dx.op.dot3.f32(i32 55, float %637, float %638, float %654, float %637, float %638, float %654)  ; Dot3(ax,ay,az,bx,by,bz)
  %656 = call float @dx.op.unary.f32(i32 25, float %655)  ; Rsqrt(value)
  %657 = fmul fast float %656, %637
  %658 = fmul fast float %656, %638
  %659 = fmul fast float %654, %656
  %660 = fmul fast float %659, %34
  %661 = fmul fast float %659, %35
  %662 = fmul fast float %659, %36
  %663 = fmul fast float %657, %30
  %664 = fmul fast float %657, %31
  %665 = fmul fast float %657, %32
  %666 = fadd fast float %660, %663
  %667 = fadd fast float %661, %664
  %668 = fadd fast float %662, %665
  %669 = fmul fast float %57, %658
  %670 = fmul fast float %58, %658
  %671 = fmul fast float %59, %658
  %672 = fadd fast float %666, %669
  %673 = fadd fast float %667, %670
  %674 = fadd fast float %668, %671
  %675 = call float @dx.op.dot3.f32(i32 55, float %672, float %673, float %674, float %672, float %673, float %674)  ; Dot3(ax,ay,az,bx,by,bz)
  %676 = call float @dx.op.unary.f32(i32 25, float %675)  ; Rsqrt(value)
  %677 = fmul fast float %672, %676
  %678 = fmul fast float %673, %676
  %679 = fmul fast float %674, %676
  %680 = call float @dx.op.unary.f32(i32 83, float %93)  ; DerivCoarseX(value)
  %681 = call float @dx.op.unary.f32(i32 83, float %94)  ; DerivCoarseX(value)
  %682 = call float @dx.op.unary.f32(i32 83, float %95)  ; DerivCoarseX(value)
  %683 = call float @dx.op.unary.f32(i32 84, float %93)  ; DerivCoarseY(value)
  %684 = call float @dx.op.unary.f32(i32 84, float %94)  ; DerivCoarseY(value)
  %685 = call float @dx.op.unary.f32(i32 84, float %95)  ; DerivCoarseY(value)
  %686 = fadd fast float %680, %93
  %687 = fadd fast float %681, %94
  %688 = fadd fast float %682, %95
  %689 = fadd fast float %683, %93
  %690 = fadd fast float %684, %94
  %691 = fadd fast float %685, %95
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = extractvalue %dx.types.CBufRet.f32 %692, 1
  %695 = extractvalue %dx.types.CBufRet.f32 %692, 2
  %696 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %697 = extractvalue %dx.types.CBufRet.f32 %696, 2
  %698 = extractvalue %dx.types.CBufRet.f32 %696, 3
  %699 = fmul fast float %693, %46
  %700 = fmul fast float %699, %697
  %701 = fmul fast float %694, %47
  %702 = fmul fast float %701, %698
  %703 = fptoui float %700 to i32
  %704 = fptoui float %702 to i32
  %705 = fadd fast float %693, -1.000000e+00
  %706 = fadd fast float %694, -1.000000e+00
  %707 = fptoui float %705 to i32
  %708 = fptoui float %706 to i32
  %709 = call i32 @dx.op.binary.i32(i32 40, i32 %703, i32 %707)  ; UMin(a,b)
  %710 = call i32 @dx.op.binary.i32(i32 40, i32 %704, i32 %708)  ; UMin(a,b)
  %711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.f32 %711, 2
  %713 = extractvalue %dx.types.CBufRet.f32 %711, 3
  %714 = fmul fast float %712, %41
  %715 = fsub fast float %714, %713
  %716 = fadd fast float %695, -1.000000e+00
  %717 = call float @dx.op.binary.f32(i32 36, float %715, float %716)  ; FMin(a,b)
  %718 = fptoui float %717 to i32
  %719 = fptoui float %693 to i32
  %720 = fptoui float %694 to i32
  %721 = mul i32 %718, %720
  %722 = add i32 %721, %710
  %723 = mul i32 %722, %719
  %724 = add i32 %723, %709
  %725 = shl i32 %724, 2
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = and i32 %727, 1023
  %729 = lshr i32 %727, 10
  %730 = icmp eq i32 %728, 0
  br i1 %730, label %1159, label %731

; <label>:731                                     ; preds = %636
  %732 = and i32 %727, 1023
  br label %733

; <label>:733                                     ; preds = %860, %731
  %734 = phi float [ %861, %860 ], [ 0.000000e+00, %731 ]
  %735 = phi float [ %862, %860 ], [ %646, %731 ]
  %736 = phi float [ %863, %860 ], [ %651, %731 ]
  %737 = phi float [ %864, %860 ], [ %649, %731 ]
  %738 = phi float [ %865, %860 ], [ 0.000000e+00, %731 ]
  %739 = phi float [ %866, %860 ], [ 0.000000e+00, %731 ]
  %740 = phi float [ %867, %860 ], [ %642, %731 ]
  %741 = phi float [ %868, %860 ], [ %643, %731 ]
  %742 = phi float [ %869, %860 ], [ %644, %731 ]
  %743 = phi float [ %870, %860 ], [ %677, %731 ]
  %744 = phi float [ %871, %860 ], [ %678, %731 ]
  %745 = phi float [ %872, %860 ], [ %679, %731 ]
  %746 = phi float [ %873, %860 ], [ %648, %731 ]
  %747 = phi float [ %874, %860 ], [ %647, %731 ]
  %748 = phi float [ %875, %860 ], [ 0.000000e+00, %731 ]
  %749 = phi float [ %876, %860 ], [ %645, %731 ]
  %750 = phi float [ %877, %860 ], [ %639, %731 ]
  %751 = phi float [ %878, %860 ], [ %640, %731 ]
  %752 = phi float [ %879, %860 ], [ %641, %731 ]
  %753 = phi i32 [ %810, %860 ], [ 0, %731 ]
  %754 = add nuw nsw i32 %753, %729
  %755 = shl i32 %754, 2
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = shl i32 %757, 8
  %759 = or i32 %758, 48
  %760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.f32 %760, 0
  %762 = extractvalue %dx.types.ResRet.f32 %760, 1
  %763 = extractvalue %dx.types.ResRet.f32 %760, 2
  %764 = extractvalue %dx.types.ResRet.f32 %760, 3
  %765 = or i32 %758, 64
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = extractvalue %dx.types.ResRet.i32 %766, 1
  %769 = or i32 %758, 80
  %770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %769, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.f32 %770, 2
  %772 = extractvalue %dx.types.ResRet.f32 %770, 3
  %773 = or i32 %758, 96
  %774 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.f32 %774, 0
  %776 = extractvalue %dx.types.ResRet.f32 %774, 1
  %777 = extractvalue %dx.types.ResRet.f32 %774, 2
  %778 = extractvalue %dx.types.ResRet.f32 %774, 3
  %779 = or i32 %758, 112
  %780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %779, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.f32 %780, 2
  %782 = or i32 %758, 128
  %783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.f32 %783, 0
  %785 = extractvalue %dx.types.ResRet.f32 %783, 1
  %786 = extractvalue %dx.types.ResRet.f32 %783, 2
  %787 = extractvalue %dx.types.ResRet.f32 %783, 3
  %788 = or i32 %758, 144
  %789 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.f32 %789, 0
  %791 = extractvalue %dx.types.ResRet.f32 %789, 1
  %792 = extractvalue %dx.types.ResRet.f32 %789, 2
  %793 = extractvalue %dx.types.ResRet.f32 %789, 3
  %794 = or i32 %758, 160
  %795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = or i32 %758, 192
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = or i32 %758, 208
  %804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.f32 %804, 0
  %806 = or i32 %758, 248
  %807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 0
  %809 = extractvalue %dx.types.ResRet.f32 %807, 1
  %810 = add nuw nsw i32 %753, 1
  %811 = bitcast float %764 to i32
  %812 = and i32 %811, 2560
  %813 = icmp eq i32 %812, 0
  %814 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.f32 %814, 0
  %816 = extractvalue %dx.types.ResRet.f32 %814, 1
  %817 = extractvalue %dx.types.ResRet.f32 %814, 2
  %818 = extractvalue %dx.types.ResRet.f32 %814, 3
  %819 = call float @dx.op.dot4.f32(i32 56, float %815, float %816, float %817, float %818, float %93, float %94, float %95, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %820 = or i32 %758, 16
  %821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 0
  %823 = extractvalue %dx.types.ResRet.f32 %821, 1
  %824 = extractvalue %dx.types.ResRet.f32 %821, 2
  %825 = extractvalue %dx.types.ResRet.f32 %821, 3
  %826 = call float @dx.op.dot4.f32(i32 56, float %822, float %823, float %824, float %825, float %93, float %94, float %95, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %827 = or i32 %758, 32
  %828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.f32 %828, 0
  %830 = extractvalue %dx.types.ResRet.f32 %828, 1
  %831 = extractvalue %dx.types.ResRet.f32 %828, 2
  %832 = extractvalue %dx.types.ResRet.f32 %828, 3
  %833 = call float @dx.op.dot4.f32(i32 56, float %829, float %830, float %831, float %832, float %93, float %94, float %95, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %834 = call float @dx.op.unary.f32(i32 27, float %819)  ; Round_ni(value)
  %835 = call float @dx.op.unary.f32(i32 6, float %834)  ; FAbs(value)
  %836 = call float @dx.op.unary.f32(i32 27, float %826)  ; Round_ni(value)
  %837 = call float @dx.op.unary.f32(i32 6, float %836)  ; FAbs(value)
  %838 = call float @dx.op.unary.f32(i32 6, float %833)  ; FAbs(value)
  %839 = call float @dx.op.unary.f32(i32 27, float %838)  ; Round_ni(value)
  %840 = fadd fast float %837, %835
  %841 = fadd fast float %840, %839
  %842 = fcmp fast oeq float %841, 0.000000e+00
  %843 = call float @dx.op.dot4.f32(i32 56, float %815, float %816, float %817, float %818, float %686, float %687, float %688, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %844 = call float @dx.op.dot4.f32(i32 56, float %822, float %823, float %824, float %825, float %686, float %687, float %688, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %845 = call float @dx.op.dot4.f32(i32 56, float %815, float %816, float %817, float %818, float %689, float %690, float %691, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %846 = call float @dx.op.dot4.f32(i32 56, float %822, float %823, float %824, float %825, float %689, float %690, float %691, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %847 = fsub fast float %843, %819
  %848 = fsub fast float %845, %819
  %849 = fsub fast float %844, %826
  %850 = fsub fast float %846, %826
  %851 = call float @dx.op.dot3.f32(i32 55, float %761, float %762, float %763, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %853 = extractvalue %dx.types.CBufRet.f32 %852, 2
  %854 = fadd fast float %853, %851
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  %856 = extractvalue %dx.types.CBufRet.f32 %852, 0
  %857 = fcmp fast ogt float %855, %856
  %858 = and i1 %842, %857
  %859 = and i1 %813, %858
  br i1 %859, label %881, label %860

; <label>:860                                     ; preds = %1145, %962, %881, %733
  %861 = phi float [ %734, %881 ], [ %965, %962 ], [ %965, %1145 ], [ %734, %733 ]
  %862 = phi float [ %735, %881 ], [ %735, %962 ], [ %1120, %1145 ], [ %735, %733 ]
  %863 = phi float [ %736, %881 ], [ %736, %962 ], [ %1119, %1145 ], [ %736, %733 ]
  %864 = phi float [ %737, %881 ], [ %737, %962 ], [ %1117, %1145 ], [ %737, %733 ]
  %865 = phi float [ %738, %881 ], [ %738, %962 ], [ %1089, %1145 ], [ %738, %733 ]
  %866 = phi float [ %739, %881 ], [ %739, %962 ], [ %1087, %1145 ], [ %739, %733 ]
  %867 = phi float [ %740, %881 ], [ %740, %962 ], [ %1155, %1145 ], [ %740, %733 ]
  %868 = phi float [ %741, %881 ], [ %741, %962 ], [ %1156, %1145 ], [ %741, %733 ]
  %869 = phi float [ %742, %881 ], [ %742, %962 ], [ %1157, %1145 ], [ %742, %733 ]
  %870 = phi float [ %743, %881 ], [ %743, %962 ], [ %1068, %1145 ], [ %743, %733 ]
  %871 = phi float [ %744, %881 ], [ %744, %962 ], [ %1069, %1145 ], [ %744, %733 ]
  %872 = phi float [ %745, %881 ], [ %745, %962 ], [ %1070, %1145 ], [ %745, %733 ]
  %873 = phi float [ %746, %881 ], [ %746, %962 ], [ %1097, %1145 ], [ %746, %733 ]
  %874 = phi float [ %747, %881 ], [ %747, %962 ], [ %1094, %1145 ], [ %747, %733 ]
  %875 = phi float [ %748, %881 ], [ %748, %962 ], [ %1091, %1145 ], [ %748, %733 ]
  %876 = phi float [ %749, %881 ], [ %749, %962 ], [ %1085, %1145 ], [ %749, %733 ]
  %877 = phi float [ %750, %881 ], [ %750, %962 ], [ %1080, %1145 ], [ %750, %733 ]
  %878 = phi float [ %751, %881 ], [ %751, %962 ], [ %1081, %1145 ], [ %751, %733 ]
  %879 = phi float [ %752, %881 ], [ %752, %962 ], [ %1082, %1145 ], [ %752, %733 ]
  %880 = icmp eq i32 %810, %732
  br i1 %880, label %1158, label %733

; <label>:881                                     ; preds = %733
  %882 = extractvalue %dx.types.ResRet.f32 %780, 3
  %883 = extractvalue %dx.types.ResRet.f32 %780, 1
  %884 = extractvalue %dx.types.ResRet.f32 %780, 0
  %885 = extractvalue %dx.types.ResRet.f32 %770, 1
  %886 = extractvalue %dx.types.ResRet.f32 %770, 0
  %887 = extractvalue %dx.types.ResRet.i32 %766, 3
  %888 = extractvalue %dx.types.ResRet.i32 %766, 2
  %889 = add i32 %887, 0
  %890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %889, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %892 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %890, %dx.types.Handle %891, float %819, float %826, float undef, float undef, i32 0, i32 0, i32 undef, float %847, float %849, float undef, float %848, float %850, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = fmul fast float %893, %886
  %895 = fadd fast float %894, %885
  %896 = call float @dx.op.unary.f32(i32 7, float %895)  ; Saturate(value)
  %897 = fmul fast float %819, %775
  %898 = call float @dx.op.tertiary.f32(i32 46, float %776, float %826, float %897)  ; FMad(a,b,c)
  %899 = fadd fast float %898, %884
  %900 = fmul fast float %819, %777
  %901 = call float @dx.op.tertiary.f32(i32 46, float %778, float %826, float %900)  ; FMad(a,b,c)
  %902 = fadd fast float %901, %883
  %903 = fmul fast float %847, %775
  %904 = call float @dx.op.tertiary.f32(i32 46, float %776, float %849, float %903)  ; FMad(a,b,c)
  %905 = fmul fast float %847, %777
  %906 = call float @dx.op.tertiary.f32(i32 46, float %778, float %849, float %905)  ; FMad(a,b,c)
  %907 = fmul fast float %848, %775
  %908 = call float @dx.op.tertiary.f32(i32 46, float %776, float %850, float %907)  ; FMad(a,b,c)
  %909 = fmul fast float %848, %777
  %910 = call float @dx.op.tertiary.f32(i32 46, float %778, float %850, float %909)  ; FMad(a,b,c)
  %911 = add i32 %888, 0
  %912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %911, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %913 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %912, %dx.types.Handle %891, float %899, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float %904, float %906, float undef, float %908, float %910, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = and i32 %811, 1024
  %916 = icmp ne i32 %915, 0
  %917 = fcmp fast ogt float %914, 0x3FE0101020000000
  %918 = uitofp i1 %917 to float
  %919 = select i1 %916, float %918, float %914
  %920 = and i32 %811, 8192
  %921 = icmp ne i32 %920, 0
  %922 = select i1 %921, float %882, float 1.000000e+00
  %923 = fmul fast float %819, 2.000000e+00
  %924 = fadd fast float %923, -1.000000e+00
  %925 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %926 = fmul fast float %925, %808
  %927 = fsub fast float %926, %808
  %928 = call float @dx.op.unary.f32(i32 7, float %927)  ; Saturate(value)
  %929 = fmul fast float %826, 2.000000e+00
  %930 = fadd fast float %929, -1.000000e+00
  %931 = call float @dx.op.unary.f32(i32 6, float %930)  ; FAbs(value)
  %932 = fmul fast float %931, %809
  %933 = fsub fast float %932, %809
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = fmul fast float %838, %771
  %936 = fsub fast float %935, %771
  %937 = call float @dx.op.unary.f32(i32 7, float %936)  ; Saturate(value)
  %938 = fmul fast float %896, %922
  %939 = fmul fast float %938, %893
  %940 = fmul fast float %939, %928
  %941 = fmul fast float %940, %919
  %942 = fmul fast float %941, %934
  %943 = fmul fast float %942, %937
  %944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %945 = extractvalue %dx.types.CBufRet.f32 %944, 1
  %946 = extractvalue %dx.types.CBufRet.f32 %944, 0
  %947 = fsub fast float %855, %946
  %948 = fmul fast float %947, %945
  %949 = call float @dx.op.unary.f32(i32 7, float %948)  ; Saturate(value)
  %950 = fmul fast float %943, %772
  %951 = fadd fast float %943, %772
  %952 = fmul fast float %951, %781
  %953 = fsub fast float %952, %781
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = and i32 %811, 128
  %956 = icmp ne i32 %955, 0
  %957 = select i1 %956, float %954, float %950
  %958 = fmul fast float %957, %949
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 0
  %961 = fcmp fast ugt float %958, %960
  br i1 %961, label %962, label %860

; <label>:962                                     ; preds = %881
  %963 = select i1 %921, float %958, float 0.000000e+00
  %964 = fadd fast float %963, %734
  %965 = call float @dx.op.unary.f32(i32 7, float %964)  ; Saturate(value)
  br i1 %921, label %860, label %966

; <label>:966                                     ; preds = %962
  %967 = and i32 %811, 4
  %968 = and i32 %811, 8
  %969 = add i32 %767, 0
  %970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %969, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %972 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %970, %dx.types.Handle %971, float %899, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float %904, float %906, float undef, float %908, float %910, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %973 = extractvalue %dx.types.ResRet.f32 %972, 0
  %974 = extractvalue %dx.types.ResRet.f32 %972, 1
  %975 = extractvalue %dx.types.ResRet.f32 %972, 2
  %976 = extractvalue %dx.types.ResRet.f32 %972, 3
  %977 = bitcast float %793 to i32
  %978 = and i32 %977, 255
  %979 = uitofp i32 %978 to float
  %980 = lshr i32 %977, 8
  %981 = and i32 %980, 255
  %982 = uitofp i32 %981 to float
  %983 = fmul fast float %976, %979
  %984 = fadd fast float %983, %982
  %985 = fmul fast float %984, 0x3F70101000000000
  %986 = add i32 %768, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %986, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %987, %dx.types.Handle %971, float %899, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float %904, float %906, float undef, float %908, float %910, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  %990 = extractvalue %dx.types.ResRet.f32 %988, 1
  %991 = extractvalue %dx.types.ResRet.f32 %988, 2
  %992 = extractvalue %dx.types.ResRet.f32 %988, 3
  %993 = bitcast float %787 to i32
  %994 = and i32 %993, 255
  %995 = uitofp i32 %994 to float
  %996 = lshr i32 %993, 8
  %997 = and i32 %996, 255
  %998 = uitofp i32 %997 to float
  %999 = lshr i32 %993, 16
  %1000 = and i32 %999, 255
  %1001 = uitofp i32 %1000 to float
  %1002 = fmul fast float %1001, 0x3F70101000000000
  %1003 = fmul fast float %989, %995
  %1004 = fadd fast float %1003, %998
  %1005 = fmul fast float %1004, 0x3F70101000000000
  %1006 = fadd fast float %990, -5.000000e-01
  %1007 = fadd fast float %992, -5.000000e-01
  %1008 = fmul fast float %1006, %1002
  %1009 = fmul fast float %1007, %1002
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fmul fast float %973, %796
  %1013 = fmul fast float %974, %797
  %1014 = fmul fast float %975, %798
  %1015 = fmul fast float %1010, 2.000000e+00
  %1016 = fadd fast float %1015, -1.000000e+00
  %1017 = fmul fast float %1011, 2.000000e+00
  %1018 = fadd fast float %1017, -1.000000e+00
  %1019 = fadd fast float %1016, %1018
  %1020 = fmul fast float %1019, 5.000000e-01
  %1021 = fsub fast float %1016, %1018
  %1022 = fmul fast float %1021, 5.000000e-01
  %1023 = call float @dx.op.unary.f32(i32 6, float %1020)  ; FAbs(value)
  %1024 = fsub fast float 1.000000e+00, %1023
  %1025 = call float @dx.op.unary.f32(i32 6, float %1022)  ; FAbs(value)
  %1026 = fsub fast float %1024, %1025
  %1027 = call float @dx.op.dot3.f32(i32 55, float %1020, float %1022, float %1026, float %1020, float %1022, float %1026)  ; Dot3(ax,ay,az,bx,by,bz)
  %1028 = call float @dx.op.unary.f32(i32 25, float %1027)  ; Rsqrt(value)
  %1029 = fmul fast float %1020, %1028
  %1030 = fmul fast float %1022, %1028
  %1031 = fmul fast float %1028, %1026
  %1032 = fmul fast float %1031, %761
  %1033 = fmul fast float %1031, %762
  %1034 = fmul fast float %1031, %763
  %1035 = fmul fast float %1029, %784
  %1036 = fmul fast float %1029, %785
  %1037 = fmul fast float %1029, %786
  %1038 = fadd fast float %1035, %1032
  %1039 = fadd fast float %1036, %1033
  %1040 = fadd fast float %1037, %1034
  %1041 = fmul fast float %1030, %790
  %1042 = fmul fast float %1030, %791
  %1043 = fmul fast float %1030, %792
  %1044 = fadd fast float %1038, %1041
  %1045 = fadd fast float %1039, %1042
  %1046 = fadd fast float %1040, %1043
  %1047 = call float @dx.op.dot3.f32(i32 55, float %1044, float %1045, float %1046, float %1044, float %1045, float %1046)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = call float @dx.op.unary.f32(i32 25, float %1047)  ; Rsqrt(value)
  %1049 = fmul fast float %1044, %1048
  %1050 = fmul fast float %1045, %1048
  %1051 = fmul fast float %1046, %1048
  %1052 = icmp ne i32 %968, 0
  %1053 = select i1 %1052, float 1.000000e+00, float 0.000000e+00
  %1054 = fmul fast float %958, %1053
  %1055 = and i32 %811, 1
  %1056 = icmp eq i32 %1055, 0
  br i1 %1056, label %1057, label %1061

; <label>:1057                                    ; preds = %966
  %1058 = fsub fast float %1049, %743
  %1059 = fsub fast float %1050, %744
  %1060 = fsub fast float %1051, %745
  br label %1061

; <label>:1061                                    ; preds = %1057, %966
  %1062 = phi float [ %1058, %1057 ], [ %1049, %966 ]
  %1063 = phi float [ %1059, %1057 ], [ %1050, %966 ]
  %1064 = phi float [ %1060, %1057 ], [ %1051, %966 ]
  %1065 = fmul float %1064, %1054
  %1066 = fmul float %1063, %1054
  %1067 = fmul float %1062, %1054
  %1068 = fadd fast float %1067, %743
  %1069 = fadd fast float %1066, %744
  %1070 = fadd fast float %1065, %745
  %1071 = icmp ne i32 %967, 0
  %1072 = select i1 %1071, float 1.000000e+00, float 0.000000e+00
  %1073 = fmul fast float %958, %1072
  %1074 = fsub fast float %1012, %750
  %1075 = fsub fast float %1013, %751
  %1076 = fsub fast float %1014, %752
  %1077 = fmul fast float %1074, %1073
  %1078 = fmul fast float %1075, %1073
  %1079 = fmul fast float %1076, %1073
  %1080 = fadd fast float %1077, %750
  %1081 = fadd fast float %1078, %751
  %1082 = fadd fast float %1079, %752
  %1083 = fsub fast float %985, %749
  %1084 = fmul fast float %1083, %1073
  %1085 = fadd fast float %1084, %749
  %1086 = fmul fast float %1073, %739
  %1087 = fsub fast float %739, %1086
  %1088 = fmul fast float %1073, %738
  %1089 = fsub fast float %738, %1088
  %1090 = fadd fast float %958, %748
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  %1092 = fsub fast float %1005, %747
  %1093 = fmul fast float %1092, %1054
  %1094 = fadd fast float %1093, %747
  %1095 = fsub fast float %991, %746
  %1096 = fmul fast float %1095, %1054
  %1097 = fadd fast float %1096, %746
  %1098 = call float @dx.op.dot3.f32(i32 55, float %1012, float %1013, float %1014, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1100 = extractvalue %dx.types.CBufRet.f32 %1099, 0
  %1101 = extractvalue %dx.types.CBufRet.f32 %1099, 1
  %1102 = fmul fast float %1101, %1098
  %1103 = fadd fast float %1102, %1100
  %1104 = call float @dx.op.unary.f32(i32 7, float %1103)  ; Saturate(value)
  %1105 = bitcast float %799 to i32
  %1106 = and i32 %1105, 65535
  %1107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1106)  ; LegacyF16ToF32(value)
  %1108 = lshr i32 %1105, 16
  %1109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1108)  ; LegacyF16ToF32(value)
  %1110 = fcmp fast oge float %1107, 0.000000e+00
  %1111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1112 = extractvalue %dx.types.CBufRet.f32 %1111, 0
  %1113 = select i1 %1110, float %1107, float %1112
  %1114 = fadd fast float %1113, %1109
  %1115 = fsub fast float %1104, %737
  %1116 = fmul fast float %1115, %958
  %1117 = fadd fast float %1116, %737
  %1118 = fmul fast float %1114, %958
  %1119 = call float @dx.op.binary.f32(i32 35, float %736, float %1118)  ; FMax(a,b)
  %1120 = call float @dx.op.binary.f32(i32 35, float %735, float %958)  ; FMax(a,b)
  %1121 = and i32 %811, 16
  %1122 = icmp eq i32 %1121, 0
  br i1 %1122, label %1145, label %1123

; <label>:1123                                    ; preds = %1061
  %1124 = bitcast float %805 to i32
  %1125 = add i32 %802, 0
  %1126 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1125, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1127 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1126, %dx.types.Handle %971, float %899, float %902, float undef, float undef, i32 0, i32 0, i32 undef, float %904, float %906, float undef, float %908, float %910, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = extractvalue %dx.types.ResRet.f32 %1127, 1
  %1130 = extractvalue %dx.types.ResRet.f32 %1127, 2
  %1131 = and i32 %1124, 65535
  %1132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1131)  ; LegacyF16ToF32(value)
  %1133 = fmul fast float %1128, %796
  %1134 = fmul fast float %1129, %797
  %1135 = fmul fast float %1130, %798
  %1136 = and i32 %811, 16384
  %1137 = icmp ne i32 %1136, 0
  %1138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1139 = extractvalue %dx.types.CBufRet.f32 %1138, 0
  %1140 = select i1 %1137, float %1139, float 1.000000e+00
  %1141 = fmul fast float %1140, %1132
  %1142 = fmul fast float %1133, %1141
  %1143 = fmul fast float %1134, %1141
  %1144 = fmul fast float %1135, %1141
  br label %1145

; <label>:1145                                    ; preds = %1123, %1061
  %1146 = phi float [ %1142, %1123 ], [ 0.000000e+00, %1061 ]
  %1147 = phi float [ %1143, %1123 ], [ 0.000000e+00, %1061 ]
  %1148 = phi float [ %1144, %1123 ], [ 0.000000e+00, %1061 ]
  %1149 = fsub fast float %1146, %740
  %1150 = fsub fast float %1147, %741
  %1151 = fsub fast float %1148, %742
  %1152 = fmul fast float %1149, %958
  %1153 = fmul fast float %1150, %958
  %1154 = fmul fast float %1151, %958
  %1155 = fadd fast float %1152, %740
  %1156 = fadd fast float %1153, %741
  %1157 = fadd fast float %1154, %742
  br label %860

; <label>:1158                                    ; preds = %860
  br label %1159

; <label>:1159                                    ; preds = %1158, %636
  %1160 = phi float [ 0.000000e+00, %636 ], [ %861, %1158 ]
  %1161 = phi float [ %646, %636 ], [ %862, %1158 ]
  %1162 = phi float [ %651, %636 ], [ %863, %1158 ]
  %1163 = phi float [ %649, %636 ], [ %864, %1158 ]
  %1164 = phi float [ 0.000000e+00, %636 ], [ %865, %1158 ]
  %1165 = phi float [ 0.000000e+00, %636 ], [ %866, %1158 ]
  %1166 = phi float [ %642, %636 ], [ %867, %1158 ]
  %1167 = phi float [ %643, %636 ], [ %868, %1158 ]
  %1168 = phi float [ %644, %636 ], [ %869, %1158 ]
  %1169 = phi float [ %677, %636 ], [ %870, %1158 ]
  %1170 = phi float [ %678, %636 ], [ %871, %1158 ]
  %1171 = phi float [ %679, %636 ], [ %872, %1158 ]
  %1172 = phi float [ %648, %636 ], [ %873, %1158 ]
  %1173 = phi float [ %647, %636 ], [ %874, %1158 ]
  %1174 = phi float [ 0.000000e+00, %636 ], [ %875, %1158 ]
  %1175 = phi float [ %645, %636 ], [ %876, %1158 ]
  %1176 = phi float [ %639, %636 ], [ %877, %1158 ]
  %1177 = phi float [ %640, %636 ], [ %878, %1158 ]
  %1178 = phi float [ %641, %636 ], [ %879, %1158 ]
  %1179 = call float @dx.op.dot3.f32(i32 55, float %1169, float %1170, float %1171, float %1169, float %1170, float %1171)  ; Dot3(ax,ay,az,bx,by,bz)
  %1180 = call float @dx.op.unary.f32(i32 25, float %1179)  ; Rsqrt(value)
  %1181 = fmul fast float %1180, %1169
  %1182 = fmul fast float %1180, %1170
  %1183 = fmul fast float %1180, %1171
  %1184 = fadd fast float %1174, %646
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
  %1213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1214 = extractvalue %dx.types.CBufRet.i32 %1213, 3
  %1215 = and i32 %1214, 8
  %1216 = icmp ne i32 %1215, 0
  %1217 = call float @dx.op.binary.f32(i32 35, float %1200, float %1176)  ; FMax(a,b)
  %1218 = call float @dx.op.binary.f32(i32 35, float %1201, float %1176)  ; FMax(a,b)
  %1219 = call float @dx.op.binary.f32(i32 35, float %1202, float %1176)  ; FMax(a,b)
  %1220 = call float @dx.op.dot3.f32(i32 55, float %1200, float %1201, float %1202, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1221 = select i1 %135, float %1176, float %1200
  %1222 = select i1 %135, float %1220, float %1201
  %1223 = select i1 %135, float 1.000000e+00, float %1202
  %1224 = select i1 %1216, float %1217, float %1221
  %1225 = select i1 %1216, float %1218, float %1222
  %1226 = select i1 %1216, float %1219, float %1223
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = fadd fast float %1228, %93
  %1232 = fadd fast float %1229, %94
  %1233 = fadd fast float %1230, %95
  %1234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
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

; <label>:1245                                    ; preds = %1159
  %1246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1247 = extractvalue %dx.types.CBufRet.f32 %1246, 0
  %1248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1249 = extractvalue %dx.types.CBufRet.f32 %1248, 0
  %1250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1280 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %25, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1281 = extractvalue %dx.types.ResRet.f32 %1280, 0
  %1282 = fcmp fast ugt float %1281, 0.000000e+00
  br i1 %1282, label %1283, label %1586

; <label>:1283                                    ; preds = %1245
  %1284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1297 = fsub fast float %1294, %1296
  %1298 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %25, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1299 = extractvalue %dx.types.ResRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.ResRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.ResRet.f32 %1298, 2
  %1302 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %25, float %1278, float %1279, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
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

; <label>:1312                                    ; preds = %1159
  %1313 = and i32 %111, 1
  %1314 = icmp eq i32 %1313, 0
  br i1 %1314, label %1586, label %1315

; <label>:1315                                    ; preds = %1312
  %1316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1317 = extractvalue %dx.types.CBufRet.f32 %1316, 0
  %1318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1319 = extractvalue %dx.types.CBufRet.f32 %1318, 0
  %1320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 0
  %1341 = extractvalue %dx.types.CBufRet.f32 %1339, 1
  %1342 = extractvalue %dx.types.CBufRet.f32 %1339, 2
  %1343 = extractvalue %dx.types.CBufRet.f32 %1339, 3
  %1344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1345 = extractvalue %dx.types.CBufRet.f32 %1344, 3
  %1346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = icmp eq i32 %1368, -1
  br i1 %1369, label %1586, label %1370

; <label>:1370                                    ; preds = %1315
  %1371 = mul i32 %1368, 148
  %1372 = add i32 %1371, 4
  %1373 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1372, i32 undef)  ; BufferLoad(srv,index,wot)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = add i32 %1371, 8
  %1376 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1375, i32 undef)  ; BufferLoad(srv,index,wot)
  %1377 = extractvalue %dx.types.ResRet.f32 %1376, 0
  %1378 = add i32 %1371, 36
  %1379 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1378, i32 undef)  ; BufferLoad(srv,index,wot)
  %1380 = extractvalue %dx.types.ResRet.f32 %1379, 0
  %1381 = add i32 %1371, 60
  %1382 = add i32 %1371, 92
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %1371, 116
  %1386 = fsub fast float %1337, %1374
  %1387 = fsub fast float %1338, %1377
  %1388 = fmul fast float %1345, %1386
  %1389 = fmul fast float %1345, %1387
  %1390 = call float @dx.op.unary.f32(i32 7, float %1388)  ; Saturate(value)
  %1391 = call float @dx.op.unary.f32(i32 7, float %1389)  ; Saturate(value)
  %1392 = fsub fast float 1.000000e+00, %1391
  %1393 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1408 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1409 = extractvalue %dx.types.CBufRet.f32 %1408, 1
  %1410 = fadd fast float %1409, %1407
  %1411 = call float @dx.op.binary.f32(i32 35, float %1410, float 0.000000e+00)  ; FMax(a,b)
  %1412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.f32 %1412, 3
  %1414 = fadd fast float %1413, %1411
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 3
  %1417 = fadd fast float %1414, %1416
  %1418 = add i32 %1384, 0
  %1419 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1418, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1420 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1419, i32 0)  ; GetDimensions(handle,mipLevel)
  %1421 = extractvalue %dx.types.Dimensions %1420, 0
  %1422 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1421)  ; FirstbitLo(value)
  %1423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1424 = extractvalue %dx.types.CBufRet.i32 %1423, 1
  %1425 = sub nsw i32 %1424, %1422
  %1426 = sitofp i32 %1425 to float
  %1427 = fsub fast float %1417, %1426
  %1428 = call float @dx.op.binary.f32(i32 35, float %1427, float 0.000000e+00)  ; FMax(a,b)
  %1429 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1419, %dx.types.Handle %24, float %1390, float %1392, float %1380, float undef, i32 0, i32 0, i32 undef, float %1428)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1430 = extractvalue %dx.types.ResRet.f32 %1429, 0
  %1431 = fcmp ule float %1430, 0x3FE0101020000000
  %1432 = extractvalue %dx.types.CBufRet.i32 %1423, 0
  %1433 = and i32 %1432, 128
  %1434 = icmp ne i32 %1433, 0
  %1435 = and i1 %1431, %1434
  br i1 %1435, label %1586, label %1436

; <label>:1436                                    ; preds = %1370
  %1437 = add i32 %1371, 20
  %1438 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = add i32 %1371, 24
  %1441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.f32 %1441, 0
  %1443 = add i32 %1371, 40
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = add i32 %1371, 96
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1461 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1462 = extractvalue %dx.types.CBufRet.i32 %1461, 1
  %1463 = sub nsw i32 %1462, %1460
  %1464 = sitofp i32 %1463 to float
  %1465 = fsub fast float %1414, %1464
  %1466 = call float @dx.op.binary.f32(i32 35, float %1465, float 0.000000e+00)  ; FMax(a,b)
  %1467 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1457, %dx.types.Handle %24, float %1454, float %1455, float %1445, float undef, i32 0, i32 0, i32 undef, float %1466)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1468 = extractvalue %dx.types.ResRet.f32 %1467, 0
  %1469 = fmul fast float %1468, %1439
  %1470 = fadd fast float %1469, %1442
  %1471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1472 = extractvalue %dx.types.CBufRet.f32 %1471, 0
  %1473 = extractvalue %dx.types.CBufRet.f32 %1471, 1
  %1474 = extractvalue %dx.types.CBufRet.f32 %1471, 2
  %1475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1476 = extractvalue %dx.types.CBufRet.f32 %1475, 3
  %1477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1478 = extractvalue %dx.types.CBufRet.f32 %1477, 3
  %1479 = extractvalue %dx.types.CBufRet.f32 %1471, 3
  %1480 = fadd fast float %1476, %1337
  %1481 = fadd fast float %1478, %1338
  %1482 = fadd fast float %1470, %1479
  %1483 = fmul fast float %1480, %1472
  %1484 = call float @dx.op.tertiary.f32(i32 46, float %1481, float %1473, float %1483)  ; FMad(a,b,c)
  %1485 = call float @dx.op.tertiary.f32(i32 46, float %1482, float %1474, float %1484)  ; FMad(a,b,c)
  %1486 = fsub fast float %1485, %1479
  %1487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1488 = extractvalue %dx.types.CBufRet.f32 %1487, 2
  %1489 = fsub fast float %1486, %1488
  %1490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1491 = extractvalue %dx.types.CBufRet.i32 %1490, 0
  %1492 = call i32 @dx.op.binary.i32(i32 40, i32 %1368, i32 %1491)  ; UMin(a,b)
  %1493 = mul i32 %1492, 36
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = add i32 %1493, 4
  %1497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
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
  %1516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1515, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.f32 %1516, 0
  %1518 = add i32 %1385, %1514
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %1520, 0
  %1522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1521, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1523 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1522, i32 0)  ; GetDimensions(handle,mipLevel)
  %1524 = extractvalue %dx.types.Dimensions %1523, 0
  %1525 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1524)  ; FirstbitLo(value)
  %1526 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.i32 %1526, 1
  %1528 = sub nsw i32 %1527, %1525
  %1529 = sitofp i32 %1528 to float
  %1530 = fsub fast float %1414, %1529
  %1531 = call float @dx.op.binary.f32(i32 35, float %1530, float 0.000000e+00)  ; FMax(a,b)
  %1532 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1522, %dx.types.Handle %24, float %1502, float %1503, float %1517, float undef, i32 0, i32 0, i32 undef, float %1531)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1533 = extractvalue %dx.types.ResRet.f32 %1532, 0
  %1534 = fcmp fast ogt float %1533, 0.000000e+00
  br i1 %1534, label %1535, label %1563

; <label>:1535                                    ; preds = %1506
  %1536 = add i32 %1496, %1514
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 32767
  %1540 = mul nuw nsw i32 %1539, 928
  %1541 = add nuw nsw i32 %1540, 48
  %1542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.ResRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.ResRet.f32 %1542, 2
  %1546 = add nuw nsw i32 %1540, 60
  %1547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %13, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1592 = and i32 %111, 3
  %1593 = icmp eq i32 %1592, 1
  %1594 = select i1 %1593, float 1.000000e+00, float 0.000000e+00
  %1595 = fsub fast float %1587, %95
  %1596 = call float @dx.op.unary.f32(i32 7, float %1595)  ; Saturate(value)
  %1597 = select i1 %1591, float %1596, float 1.000000e+00
  %1598 = fmul fast float %1597, %1594
  %1599 = icmp eq i32 %1592, 3
  %1600 = select i1 %1599, float 1.000000e+00, float %1598
  %1601 = call float @dx.op.binary.f32(i32 35, float %1160, float %1600)  ; FMax(a,b)
  %1602 = call float @dx.op.unary.f32(i32 7, float %1601)  ; Saturate(value)
  %1603 = fcmp fast une float %1602, 0.000000e+00
  %1604 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %1605 = call float @dx.op.unary.f32(i32 25, float %1604)  ; Rsqrt(value)
  br i1 %1603, label %1613, label %1606

; <label>:1606                                    ; preds = %1586
  %1607 = fmul fast float %1605, %93
  %1608 = fmul fast float %1605, %94
  %1609 = fmul fast float %1605, %95
  %1610 = fsub fast float -0.000000e+00, %1607
  %1611 = fsub fast float -0.000000e+00, %1608
  %1612 = fsub fast float -0.000000e+00, %1609
  br label %1781

; <label>:1613                                    ; preds = %1586
  %1614 = fmul fast float %93, %1605
  %1615 = fsub fast float -0.000000e+00, %1614
  %1616 = fmul fast float %94, %1605
  %1617 = fsub fast float -0.000000e+00, %1616
  %1618 = fmul fast float %95, %1605
  %1619 = fsub fast float -0.000000e+00, %1618
  %1620 = call float @dx.op.dot3.f32(i32 55, float %1615, float %1617, float %1619, float %34, float %35, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1673 = call float @dx.op.dot3.f32(i32 55, float %34, float %35, float %36, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %1759 = fsub fast float %34, %1188
  %1760 = fsub fast float %35, %1189
  %1761 = fsub fast float %36, %1190
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
  %1788 = phi float [ %1224, %1606 ], [ %1665, %1613 ]
  %1789 = phi float [ %1225, %1606 ], [ %1666, %1613 ]
  %1790 = phi float [ %1226, %1606 ], [ %1667, %1613 ]
  %1791 = phi float [ %1209, %1606 ], [ %1756, %1613 ]
  %1792 = phi float [ %1210, %1606 ], [ %1757, %1613 ]
  %1793 = phi float [ %1211, %1606 ], [ %1758, %1613 ]
  %1794 = phi float [ %1188, %1606 ], [ %1778, %1613 ]
  %1795 = phi float [ %1189, %1606 ], [ %1779, %1613 ]
  %1796 = phi float [ %1190, %1606 ], [ %1780, %1613 ]
  %1797 = phi float [ %1212, %1606 ], [ %1772, %1613 ]
  %1798 = phi float [ %1172, %1606 ], [ %1775, %1613 ]
  %1799 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1800 = extractvalue %dx.types.CBufRet.f32 %1799, 2
  %1801 = extractvalue %dx.types.CBufRet.f32 %1799, 3
  %1802 = fmul fast float %1800, %46
  %1803 = fmul fast float %1801, %47
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1807 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %25, float %1802, float %1803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1808 = extractvalue %dx.types.ResRet.f32 %1807, 0
  %1809 = fmul fast float %1808, %1806
  %1810 = call float @dx.op.unary.f32(i32 7, float %1809)  ; Saturate(value)
  %1811 = fadd fast float %1810, -1.000000e+00
  %1812 = fmul fast float %1811, %1805
  %1813 = select i1 %135, float 0.000000e+00, float %1793
  %1814 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1795, float %1796, float %1784, float %1783, float %1782)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  %1816 = fsub fast float 1.000000e+00, %1798
  %1817 = bitcast float %1816 to i32
  %1818 = sub nsw i32 2129859010, %1817
  %1819 = fmul fast float %1185, %1166
  %1820 = fmul fast float %1185, %1167
  %1821 = fmul fast float %1185, %1168
  %1822 = bitcast i32 %1818 to float
  %1823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %1824 = extractvalue %dx.types.CBufRet.f32 %1823, 3
  %1825 = fcmp fast oeq float %1824, 0.000000e+00
  br i1 %1825, label %2067, label %1826

; <label>:1826                                    ; preds = %1781
  %1827 = extractvalue %dx.types.CBufRet.f32 %1823, 0
  %1828 = extractvalue %dx.types.CBufRet.f32 %1823, 1
  %1829 = extractvalue %dx.types.CBufRet.f32 %1823, 2
  %1830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %1831 = extractvalue %dx.types.CBufRet.f32 %1830, 0
  %1832 = extractvalue %dx.types.CBufRet.f32 %1830, 1
  %1833 = extractvalue %dx.types.CBufRet.f32 %1830, 2
  %1834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %1835 = extractvalue %dx.types.CBufRet.f32 %1834, 0
  %1836 = extractvalue %dx.types.CBufRet.f32 %1834, 1
  %1837 = call float @dx.op.dot3.f32(i32 55, float %1831, float %1832, float %1833, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1838 = select i1 %135, float %1835, float %1831
  %1839 = select i1 %135, float %1837, float %1832
  %1840 = select i1 %135, float %1836, float %1833
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1843 = fcmp fast une float %1842, 0.000000e+00
  br i1 %1843, label %1844, label %1861

; <label>:1844                                    ; preds = %1826
  %1845 = fptoui float %46 to i32
  %1846 = fptoui float %47 to i32
  %1847 = lshr i32 %1845, 4
  %1848 = lshr i32 %1846, 4
  %1849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %1850 = extractvalue %dx.types.CBufRet.f32 %1849, 0
  %1851 = fptoui float %1850 to i32
  %1852 = add i32 %1851, 15
  %1853 = lshr i32 %1852, 4
  %1854 = mul i32 %1853, %1848
  %1855 = add i32 %1854, %1847
  %1856 = shl i32 %1855, 3
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = and i32 %1858, -268435456
  %1860 = icmp eq i32 %1859, -1342177280
  br i1 %1860, label %1866, label %1861

; <label>:1861                                    ; preds = %1844, %1826
  %1862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %26, float %1802, float %1803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.ResRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.ResRet.f32 %1862, 2
  br label %1866

; <label>:1866                                    ; preds = %1861, %1844
  %1867 = phi float [ %1863, %1861 ], [ 0.000000e+00, %1844 ]
  %1868 = phi float [ %1864, %1861 ], [ 0.000000e+00, %1844 ]
  %1869 = phi float [ %1865, %1861 ], [ 0.000000e+00, %1844 ]
  %1870 = call float @dx.op.binary.f32(i32 36, float %1868, float %1869)  ; FMin(a,b)
  %1871 = call float @dx.op.binary.f32(i32 36, float %1867, float %1870)  ; FMin(a,b)
  %1872 = fcmp fast ogt float %1871, 0.000000e+00
  br i1 %1872, label %1873, label %2067, !dx.controlflow.hints !63

; <label>:1873                                    ; preds = %1866
  %1874 = fmul fast float %1867, %1838
  %1875 = fmul fast float %1868, %1839
  %1876 = fmul fast float %1869, %1840
  %1877 = fsub fast float %1827, %1787
  %1878 = fsub fast float %1828, %1786
  %1879 = fsub fast float %1829, %1785
  %1880 = call float @dx.op.dot3.f32(i32 55, float %1877, float %1878, float %1879, float %1877, float %1878, float %1879)  ; Dot3(ax,ay,az,bx,by,bz)
  %1881 = call float @dx.op.unary.f32(i32 25, float %1880)  ; Rsqrt(value)
  %1882 = fmul fast float %1881, %1877
  %1883 = fmul fast float %1881, %1878
  %1884 = fmul fast float %1881, %1879
  %1885 = call float @dx.op.dot3.f32(i32 55, float %1827, float %1828, float %1829, float %1794, float %1795, float %1796)  ; Dot3(ax,ay,az,bx,by,bz)
  %1886 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1783, float %1782, float %1882, float %1883, float %1884)  ; Dot3(ax,ay,az,bx,by,bz)
  %1887 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1888 = fmul fast float %1887, %1887
  %1889 = fmul fast float %1888, %1822
  %1890 = call float @dx.op.unary.f32(i32 7, float %1889)  ; Saturate(value)
  %1891 = fmul fast float %1890, %1887
  %1892 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1795, float %1796, float %1882, float %1883, float %1884)  ; Dot3(ax,ay,az,bx,by,bz)
  %1893 = fmul fast float %1892, %1892
  %1894 = call float @dx.op.unary.f32(i32 6, float %1885)  ; FAbs(value)
  %1895 = fsub fast float 1.000000e+00, %1797
  %1896 = call float @dx.op.binary.f32(i32 35, float %1895, float 0x3F847AE140000000)  ; FMax(a,b)
  %1897 = fmul fast float %1896, %1896
  %1898 = fmul fast float %1897, %1897
  %1899 = fsub fast float 1.000000e+00, %1898
  %1900 = fmul fast float %1815, %1815
  %1901 = fmul fast float %1900, %1899
  %1902 = fadd fast float %1901, %1898
  %1903 = bitcast float %1902 to i32
  %1904 = ashr i32 %1903, 1
  %1905 = add nsw i32 %1904, 532487669
  %1906 = bitcast i32 %1905 to float
  %1907 = fadd fast float %1906, %1815
  %1908 = fmul fast float %1898, %1893
  %1909 = fsub fast float 1.000000e+00, %1893
  %1910 = fadd fast float %1909, %1908
  %1911 = fmul fast float %1894, %1894
  %1912 = fmul fast float %1911, %1899
  %1913 = fadd fast float %1912, %1898
  %1914 = bitcast float %1913 to i32
  %1915 = ashr i32 %1914, 1
  %1916 = add nsw i32 %1915, 532487669
  %1917 = bitcast i32 %1916 to float
  %1918 = fadd fast float %1917, %1894
  %1919 = fmul fast float %1910, %1910
  %1920 = fmul fast float %1919, %1907
  %1921 = fmul fast float %1920, %1918
  %1922 = fdiv fast float 0x3FF0A00000000000, %1921
  %1923 = fmul fast float %1922, %1898
  %1924 = call float @dx.op.unary.f32(i32 6, float %1886)  ; FAbs(value)
  %1925 = fsub fast float 1.000000e+00, %1924
  %1926 = bitcast float %1925 to i32
  %1927 = sitofp i32 %1926 to float
  %1928 = fmul fast float %1927, 5.000000e+00
  %1929 = fadd fast float %1928, 0xC1EFBF8940000000
  %1930 = fptosi float %1929 to i32
  %1931 = bitcast i32 %1930 to float
  %1932 = fsub fast float 1.000000e+00, %1791
  %1933 = fsub fast float 1.000000e+00, %1792
  %1934 = fsub fast float 1.000000e+00, %1813
  %1935 = fmul fast float %1931, %1932
  %1936 = fmul fast float %1931, %1933
  %1937 = fmul fast float %1931, %1934
  %1938 = fadd fast float %1935, %1791
  %1939 = fadd fast float %1936, %1792
  %1940 = fadd fast float %1937, %1813
  %1941 = fcmp fast ogt float %1165, 0.000000e+00
  br i1 %1941, label %1942, label %1965

; <label>:1942                                    ; preds = %1873
  %1943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1165, float %1924, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = extractvalue %dx.types.ResRet.f32 %1943, 1
  %1946 = extractvalue %dx.types.ResRet.f32 %1943, 2
  %1947 = fadd fast float %1944, -5.000000e-01
  %1948 = fadd fast float %1945, -5.000000e-01
  %1949 = fadd fast float %1946, -5.000000e-01
  %1950 = fmul fast float %1791, 4.000000e+00
  %1951 = fmul fast float %1950, %1932
  %1952 = fmul fast float %1951, %1947
  %1953 = fmul fast float %1792, 4.000000e+00
  %1954 = fmul fast float %1953, %1933
  %1955 = fmul fast float %1954, %1948
  %1956 = fmul fast float %1813, 4.000000e+00
  %1957 = fmul fast float %1956, %1934
  %1958 = fmul fast float %1957, %1949
  %1959 = fadd fast float %1952, %1938
  %1960 = fadd fast float %1955, %1939
  %1961 = fadd fast float %1958, %1940
  %1962 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1963 = call float @dx.op.unary.f32(i32 7, float %1960)  ; Saturate(value)
  %1964 = call float @dx.op.unary.f32(i32 7, float %1961)  ; Saturate(value)
  br label %1965

; <label>:1965                                    ; preds = %1942, %1873
  %1966 = phi float [ %1962, %1942 ], [ %1938, %1873 ]
  %1967 = phi float [ %1963, %1942 ], [ %1939, %1873 ]
  %1968 = phi float [ %1964, %1942 ], [ %1940, %1873 ]
  %1969 = fmul fast float %1885, 9.843750e-01
  %1970 = fmul fast float %1797, 9.843750e-01
  %1971 = fadd fast float %1969, 7.812500e-03
  %1972 = fadd fast float %1970, 7.812500e-03
  %1973 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %25, float %1971, float %1972, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 2
  %1975 = extractvalue %dx.types.ResRet.f32 %1973, 3
  %1976 = fmul fast float %1974, %1791
  %1977 = fmul fast float %1974, %1792
  %1978 = fmul fast float %1974, %1813
  %1979 = fadd fast float %1976, %1975
  %1980 = fadd fast float %1977, %1975
  %1981 = fadd fast float %1978, %1975
  br i1 %1941, label %1982, label %2005

; <label>:1982                                    ; preds = %1965
  %1983 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1165, float %1885, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = extractvalue %dx.types.ResRet.f32 %1983, 1
  %1986 = extractvalue %dx.types.ResRet.f32 %1983, 2
  %1987 = fadd fast float %1984, -5.000000e-01
  %1988 = fadd fast float %1985, -5.000000e-01
  %1989 = fadd fast float %1986, -5.000000e-01
  %1990 = fmul fast float %1791, 4.000000e+00
  %1991 = fmul fast float %1990, %1932
  %1992 = fmul fast float %1991, %1987
  %1993 = fmul fast float %1792, 4.000000e+00
  %1994 = fmul fast float %1993, %1933
  %1995 = fmul fast float %1994, %1988
  %1996 = fmul fast float %1813, 4.000000e+00
  %1997 = fmul fast float %1996, %1934
  %1998 = fmul fast float %1997, %1989
  %1999 = fadd fast float %1992, %1979
  %2000 = fadd fast float %1995, %1980
  %2001 = fadd fast float %1998, %1981
  %2002 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  %2003 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2004 = call float @dx.op.unary.f32(i32 7, float %2001)  ; Saturate(value)
  br label %2005

; <label>:2005                                    ; preds = %1982, %1965
  %2006 = phi float [ %2002, %1982 ], [ %1979, %1965 ]
  %2007 = phi float [ %2003, %1982 ], [ %1980, %1965 ]
  %2008 = phi float [ %2004, %1982 ], [ %1981, %1965 ]
  %2009 = call float @dx.op.binary.f32(i32 35, float %2007, float %2008)  ; FMax(a,b)
  %2010 = call float @dx.op.binary.f32(i32 35, float %2006, float %2009)  ; FMax(a,b)
  %2011 = fsub fast float 1.000000e+00, %2010
  %2012 = fmul fast float %1966, %1923
  %2013 = fmul fast float %1967, %1923
  %2014 = fmul fast float %1968, %1923
  %2015 = call float @dx.op.dot3.f32(i32 55, float %1788, float %1789, float %1790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = fcmp fast ogt float %2015, 0x3E7FF19E20000000
  %2017 = fdiv fast float 1.000000e+00, %2015
  %2018 = select i1 %2016, float %2017, float 0.000000e+00
  %2019 = fmul fast float %2018, %1788
  %2020 = fmul fast float %2018, %1789
  %2021 = fmul fast float %2018, %1790
  %2022 = fadd fast float %2019, -1.000000e+00
  %2023 = fadd fast float %2020, -1.000000e+00
  %2024 = fadd fast float %2021, -1.000000e+00
  %2025 = fmul fast float %2022, 5.000000e-01
  %2026 = fmul fast float %2023, 5.000000e-01
  %2027 = fmul fast float %2024, 5.000000e-01
  %2028 = fadd fast float %2025, 1.000000e+00
  %2029 = fadd fast float %2026, 1.000000e+00
  %2030 = fadd fast float %2027, 1.000000e+00
  %2031 = fsub fast float 1.000000e+00, %1886
  %2032 = bitcast float %2031 to i32
  %2033 = sitofp i32 %2032 to float
  %2034 = fmul fast float %2033, 5.000000e+00
  %2035 = fadd fast float %2034, 0xC1EFBF8940000000
  %2036 = fptosi float %2035 to i32
  %2037 = bitcast i32 %2036 to float
  %2038 = fmul fast float %2037, %1164
  %2039 = fmul fast float %2011, %2038
  %2040 = fmul fast float %2039, %2028
  %2041 = fmul fast float %2039, %2029
  %2042 = fmul fast float %2039, %2030
  %2043 = fadd fast float %2040, %2012
  %2044 = fadd fast float %2041, %2013
  %2045 = fadd fast float %2042, %2014
  %2046 = fmul fast float %1891, %1874
  %2047 = fmul fast float %2046, %2043
  %2048 = fmul fast float %1891, %1875
  %2049 = fmul fast float %2048, %2044
  %2050 = fmul fast float %1891, %1876
  %2051 = fmul fast float %2050, %2045
  %2052 = fmul fast float %1874, %1185
  %2053 = fmul fast float %2052, %1891
  %2054 = fmul fast float %2053, %2011
  %2055 = fmul fast float %1875, %1185
  %2056 = fmul fast float %2055, %1891
  %2057 = fmul fast float %2056, %2011
  %2058 = fmul fast float %1876, %1185
  %2059 = fmul fast float %2058, %1891
  %2060 = fmul fast float %2059, %2011
  %2061 = fadd fast float %2047, %1166
  %2062 = fmul fast float %2061, %1185
  %2063 = fadd fast float %2049, %1167
  %2064 = fmul fast float %2063, %1185
  %2065 = fadd fast float %2051, %1168
  %2066 = fmul fast float %2065, %1185
  br label %2067

; <label>:2067                                    ; preds = %2005, %1866, %1781
  %2068 = phi float [ %1819, %1781 ], [ %1819, %1866 ], [ %2062, %2005 ]
  %2069 = phi float [ %1820, %1781 ], [ %1820, %1866 ], [ %2064, %2005 ]
  %2070 = phi float [ %1821, %1781 ], [ %1821, %1866 ], [ %2066, %2005 ]
  %2071 = phi float [ 0.000000e+00, %1781 ], [ 0.000000e+00, %1866 ], [ %2054, %2005 ]
  %2072 = phi float [ 0.000000e+00, %1781 ], [ 0.000000e+00, %1866 ], [ %2057, %2005 ]
  %2073 = phi float [ 0.000000e+00, %1781 ], [ 0.000000e+00, %1866 ], [ %2060, %2005 ]
  %2074 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2075 = extractvalue %dx.types.CBufRet.i32 %2074, 0
  %2076 = icmp eq i32 %2075, 0
  br i1 %2076, label %2530, label %2077

; <label>:2077                                    ; preds = %2067
  %2078 = fptoui float %46 to i32
  %2079 = fptoui float %47 to i32
  %2080 = lshr i32 %2078, 4
  %2081 = lshr i32 %2079, 4
  %2082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2083 = extractvalue %dx.types.CBufRet.i32 %2082, 0
  %2084 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2081, i32 %2083, i32 %2080)  ; UMad(a,b,c)
  %2085 = add nsw i32 %2075, -1
  %2086 = call i32 @dx.op.binary.i32(i32 37, i32 %2085, i32 0)  ; IMax(a,b)
  %2087 = call float @dx.op.binary.f32(i32 35, float %41, float 0.000000e+00)  ; FMax(a,b)
  %2088 = fptoui float %2087 to i32
  %2089 = lshr i32 %2088, 5
  %2090 = call i32 @dx.op.binary.i32(i32 40, i32 %2089, i32 8191)  ; UMin(a,b)
  %2091 = shl i32 %2090, 2
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = lshr i32 %2093, 16
  %2095 = and i32 %2093, 65535
  %2096 = lshr i32 %2093, 21
  %2097 = lshr i32 %2095, 5
  %2098 = call i32 @dx.op.binary.i32(i32 40, i32 %2097, i32 %2086)  ; UMin(a,b)
  %2099 = icmp ugt i32 %2096, %2098
  br i1 %2099, label %2530, label %2100

; <label>:2100                                    ; preds = %2077
  br label %2101

; <label>:2101                                    ; preds = %2520, %2100
  %2102 = phi i32 [ %2527, %2520 ], [ %2096, %2100 ]
  %2103 = phi float [ %2521, %2520 ], [ %2068, %2100 ]
  %2104 = phi float [ %2522, %2520 ], [ %2069, %2100 ]
  %2105 = phi float [ %2523, %2520 ], [ %2070, %2100 ]
  %2106 = phi float [ %2524, %2520 ], [ %2071, %2100 ]
  %2107 = phi float [ %2525, %2520 ], [ %2072, %2100 ]
  %2108 = phi float [ %2526, %2520 ], [ %2073, %2100 ]
  %2109 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %28, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2110 = extractvalue %dx.types.CBufRet.i32 %2109, 0
  %2111 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2084, i32 %2110, i32 %2102)  ; UMad(a,b,c)
  %2112 = shl i32 %2111, 2
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %2112, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = shl i32 %2102, 5
  %2116 = sub nsw i32 %2094, %2115
  %2117 = call i32 @dx.op.binary.i32(i32 37, i32 %2116, i32 0)  ; IMax(a,b)
  %2118 = call i32 @dx.op.binary.i32(i32 38, i32 %2117, i32 31)  ; IMin(a,b)
  %2119 = sub nsw i32 1, %2094
  %2120 = add nsw i32 %2119, %2095
  %2121 = call i32 @dx.op.binary.i32(i32 37, i32 %2120, i32 0)  ; IMax(a,b)
  %2122 = call i32 @dx.op.binary.i32(i32 38, i32 %2121, i32 32)  ; IMin(a,b)
  %2123 = and i32 %2122, 31
  %2124 = shl i32 -1, %2123
  %2125 = xor i32 %2124, -1
  %2126 = and i32 %2118, 31
  %2127 = shl i32 %2125, %2126
  %2128 = icmp eq i32 %2122, 32
  %2129 = select i1 %2128, i32 -1, i32 %2127
  %2130 = and i32 %2129, %2114
  %2131 = icmp eq i32 %2130, 0
  br i1 %2131, label %2520, label %2132

; <label>:2132                                    ; preds = %2101
  br label %2133

; <label>:2133                                    ; preds = %2213, %2132
  %2134 = phi i32 [ %2145, %2213 ], [ %2130, %2132 ]
  %2135 = phi float [ %2214, %2213 ], [ %2103, %2132 ]
  %2136 = phi float [ %2215, %2213 ], [ %2104, %2132 ]
  %2137 = phi float [ %2216, %2213 ], [ %2105, %2132 ]
  %2138 = phi float [ %2217, %2213 ], [ %2106, %2132 ]
  %2139 = phi float [ %2218, %2213 ], [ %2107, %2132 ]
  %2140 = phi float [ %2219, %2213 ], [ %2108, %2132 ]
  %2141 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2134)  ; FirstbitLo(value)
  %2142 = add i32 %2141, %2115
  %2143 = and i32 %2141, 31
  %2144 = shl i32 1, %2143
  %2145 = xor i32 %2144, %2134
  %2146 = mul i32 %2142, 112
  %2147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.f32 %2147, 0
  %2149 = extractvalue %dx.types.ResRet.f32 %2147, 1
  %2150 = extractvalue %dx.types.ResRet.f32 %2147, 2
  %2151 = or i32 %2146, 12
  %2152 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2151, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.f32 %2152, 0
  %2154 = add i32 %2146, 44
  %2155 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2154, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.f32 %2155, 0
  %2157 = add i32 %2146, 48
  %2158 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2157, i32 undef)  ; BufferLoad(srv,index,wot)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 0
  %2160 = extractvalue %dx.types.ResRet.f32 %2158, 1
  %2161 = extractvalue %dx.types.ResRet.f32 %2158, 2
  %2162 = add i32 %2146, 80
  %2163 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 1
  %2165 = extractvalue %dx.types.ResRet.f32 %2163, 2
  %2166 = call float @dx.op.dot3.f32(i32 55, float %2148, float %2149, float %2150, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2167 = select i1 %135, float %2164, float %2148
  %2168 = select i1 %135, float %2166, float %2149
  %2169 = select i1 %135, float %2165, float %2150
  %2170 = fsub fast float %2159, %93
  %2171 = fsub fast float %2160, %94
  %2172 = fsub fast float %2161, %95
  %2173 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2172, float %2170, float %2171, float %2172)  ; Dot3(ax,ay,az,bx,by,bz)
  %2174 = call float @dx.op.unary.f32(i32 24, float %2173)  ; Sqrt(value)
  %2175 = fdiv fast float 1.000000e+00, %2174
  %2176 = fmul fast float %2175, %2170
  %2177 = fmul fast float %2175, %2171
  %2178 = fmul fast float %2175, %2172
  %2179 = fadd fast float %2174, %2153
  %2180 = fdiv fast float 1.000000e+00, %2179
  %2181 = fmul float %2156, %2180
  %2182 = fmul float %2181, %2181
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = and i32 %2144, %2130
  %2185 = icmp eq i32 %2184, 0
  br i1 %2185, label %2208, label %2186, !dx.controlflow.hints !64

; <label>:2186                                    ; preds = %2133
  %2187 = lshr i32 %2078, 5
  %2188 = lshr i32 %2079, 5
  %2189 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %19, i32 0, i32 %2187, i32 %2188, i32 %2142, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = and i32 %2190, 3
  %2192 = icmp eq i32 %2191, 0
  %2193 = select i1 %2192, float 1.000000e+00, float 0.000000e+00
  %2194 = icmp eq i32 %2191, 3
  br i1 %2194, label %2195, label %2208

; <label>:2195                                    ; preds = %2186
  %2196 = lshr i32 %2190, 10
  %2197 = and i32 %2196, 8160
  %2198 = and i32 %2079, 31
  %2199 = or i32 %2197, %2198
  %2200 = lshr i32 %2190, 1
  %2201 = and i32 %2200, 16352
  %2202 = and i32 %2078, 31
  %2203 = or i32 %2201, %2202
  %2204 = lshr i32 %2190, 23
  %2205 = and i32 %2204, 255
  %2206 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %18, i32 0, i32 %2203, i32 %2199, i32 %2205, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  br label %2208

; <label>:2208                                    ; preds = %2195, %2186, %2133
  %2209 = phi float [ %2207, %2195 ], [ %2193, %2186 ], [ 0.000000e+00, %2133 ]
  %2210 = call float @dx.op.binary.f32(i32 36, float %2209, float %2209)  ; FMin(a,b)
  %2211 = call float @dx.op.binary.f32(i32 36, float %2209, float %2210)  ; FMin(a,b)
  %2212 = fcmp fast ogt float %2211, 0.000000e+00
  br i1 %2212, label %2221, label %2213, !dx.controlflow.hints !65

; <label>:2213                                    ; preds = %2460, %2208
  %2214 = phi float [ %2135, %2208 ], [ %2516, %2460 ]
  %2215 = phi float [ %2136, %2208 ], [ %2517, %2460 ]
  %2216 = phi float [ %2137, %2208 ], [ %2518, %2460 ]
  %2217 = phi float [ %2138, %2208 ], [ %2510, %2460 ]
  %2218 = phi float [ %2139, %2208 ], [ %2511, %2460 ]
  %2219 = phi float [ %2140, %2208 ], [ %2512, %2460 ]
  %2220 = icmp eq i32 %2134, %2144
  br i1 %2220, label %2519, label %2133

; <label>:2221                                    ; preds = %2208
  %2222 = fmul fast float %2209, %2167
  %2223 = fmul fast float %2209, %2168
  %2224 = fmul fast float %2209, %2169
  %2225 = fsub fast float %2161, %1587
  %2226 = fcmp fast ogt float %2225, 0.000000e+00
  %2227 = fsub fast float %95, %1587
  %2228 = fcmp fast ogt float %2227, 0.000000e+00
  %2229 = xor i1 %2228, %2226
  %2230 = fsub fast float %1587, %2161
  %2231 = fmul fast float %2230, 2.000000e+00
  %2232 = fadd fast float %2231, %2161
  %2233 = select i1 %2229, float %2161, float %2232
  %2234 = fsub fast float %2233, %95
  %2235 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2234, float %2170, float %2171, float %2234)  ; Dot3(ax,ay,az,bx,by,bz)
  %2236 = call float @dx.op.unary.f32(i32 25, float %2235)  ; Rsqrt(value)
  %2237 = fmul fast float %2236, %2170
  %2238 = fmul fast float %2236, %2171
  %2239 = fmul fast float %2236, %2234
  %2240 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1595)  ; Dot3(ax,ay,az,bx,by,bz)
  %2241 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2237, float %2238, float %2239)  ; Dot3(ax,ay,az,bx,by,bz)
  %2242 = fdiv fast float 1.000000e+00, %2241
  %2243 = fmul fast float %2242, %2240
  %2244 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2227, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2245 = fcmp fast ogt float %2244, 0.000000e+00
  %2246 = fcmp fast olt float %2244, 0.000000e+00
  %2247 = zext i1 %2245 to i32
  %2248 = zext i1 %2246 to i32
  %2249 = sub nsw i32 %2247, %2248
  %2250 = sitofp i32 %2249 to float
  %2251 = fsub fast float %2233, %1587
  %2252 = call float @dx.op.dot3.f32(i32 55, float %2170, float %2171, float %2251, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2253 = fcmp fast ogt float %2252, 0.000000e+00
  %2254 = fcmp fast olt float %2252, 0.000000e+00
  %2255 = zext i1 %2253 to i32
  %2256 = zext i1 %2254 to i32
  %2257 = sub nsw i32 %2255, %2256
  %2258 = sitofp i32 %2257 to float
  %2259 = fcmp fast une float %2250, %2258
  br i1 %2259, label %2260, label %2270

; <label>:2260                                    ; preds = %2221
  %2261 = fmul fast float %2243, %2239
  %2262 = fmul fast float %2243, %2238
  %2263 = fmul fast float %2243, %2237
  %2264 = fmul fast float %2263, %2263
  %2265 = fmul fast float %2262, %2262
  %2266 = fadd fast float %2264, %2265
  %2267 = fmul fast float %2261, %2261
  %2268 = fadd fast float %2266, %2267
  %2269 = call float @dx.op.unary.f32(i32 24, float %2268)  ; Sqrt(value)
  br label %2282

; <label>:2270                                    ; preds = %2221
  %2271 = icmp slt i32 %2249, 0
  br i1 %2271, label %2272, label %2282

; <label>:2272                                    ; preds = %2270
  %2273 = fsub fast float %93, %2159
  %2274 = fsub fast float %94, %2160
  %2275 = fsub fast float %95, %2233
  %2276 = fmul fast float %2273, %2273
  %2277 = fmul fast float %2274, %2274
  %2278 = fadd fast float %2276, %2277
  %2279 = fmul fast float %2275, %2275
  %2280 = fadd fast float %2278, %2279
  %2281 = call float @dx.op.unary.f32(i32 24, float %2280)  ; Sqrt(value)
  br label %2282

; <label>:2282                                    ; preds = %2272, %2270, %2260
  %2283 = phi float [ %2269, %2260 ], [ %2281, %2272 ], [ 0.000000e+00, %2270 ]
  %2284 = and i1 %2228, %2226
  %2285 = fsub fast float -0.000000e+00, %2283
  %2286 = select i1 %2284, float -0.000000e+00, float %2285
  %2287 = fmul fast float %1588, 0x3FF7154760000000
  %2288 = fmul fast float %2287, %2286
  %2289 = fmul fast float %1589, 0x3FF7154760000000
  %2290 = fmul fast float %2289, %2286
  %2291 = fmul fast float %1590, 0x3FF7154760000000
  %2292 = fmul fast float %2291, %2286
  %2293 = call float @dx.op.unary.f32(i32 21, float %2288)  ; Exp(value)
  %2294 = call float @dx.op.unary.f32(i32 21, float %2290)  ; Exp(value)
  %2295 = call float @dx.op.unary.f32(i32 21, float %2292)  ; Exp(value)
  %2296 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  %2297 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2298 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  %2299 = fmul fast float %2222, %2296
  %2300 = fmul fast float %2223, %2297
  %2301 = fmul fast float %2224, %2298
  %2302 = fsub fast float %2176, %1787
  %2303 = fsub fast float %2177, %1786
  %2304 = fsub fast float %2178, %1785
  %2305 = call float @dx.op.dot3.f32(i32 55, float %2302, float %2303, float %2304, float %2302, float %2303, float %2304)  ; Dot3(ax,ay,az,bx,by,bz)
  %2306 = call float @dx.op.unary.f32(i32 25, float %2305)  ; Rsqrt(value)
  %2307 = fmul fast float %2306, %2302
  %2308 = fmul fast float %2306, %2303
  %2309 = fmul fast float %2306, %2304
  %2310 = call float @dx.op.dot3.f32(i32 55, float %2176, float %2177, float %2178, float %1794, float %1795, float %1796)  ; Dot3(ax,ay,az,bx,by,bz)
  %2311 = call float @dx.op.dot3.f32(i32 55, float %1784, float %1783, float %1782, float %2307, float %2308, float %2309)  ; Dot3(ax,ay,az,bx,by,bz)
  %2312 = call float @dx.op.unary.f32(i32 7, float %2310)  ; Saturate(value)
  %2313 = fmul fast float %2312, %2183
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2314, %1822
  %2316 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2317 = fmul fast float %2313, %2316
  %2318 = bitcast float %2173 to i32
  %2319 = ashr i32 %2318, 1
  %2320 = sub nsw i32 1597463007, %2319
  %2321 = bitcast i32 %2320 to float
  %2322 = fmul fast float %2321, %2170
  %2323 = fmul fast float %2321, %2171
  %2324 = fmul fast float %2321, %2172
  %2325 = fsub fast float %2322, %1787
  %2326 = fsub fast float %2323, %1786
  %2327 = fsub fast float %2324, %1785
  %2328 = call float @dx.op.dot3.f32(i32 55, float %2325, float %2326, float %2327, float %2325, float %2326, float %2327)  ; Dot3(ax,ay,az,bx,by,bz)
  %2329 = call float @dx.op.unary.f32(i32 25, float %2328)  ; Rsqrt(value)
  %2330 = fmul fast float %2325, %2329
  %2331 = fmul fast float %2326, %2329
  %2332 = fmul fast float %2327, %2329
  %2333 = call float @dx.op.dot3.f32(i32 55, float %1794, float %1795, float %1796, float %2330, float %2331, float %2332)  ; Dot3(ax,ay,az,bx,by,bz)
  %2334 = fmul fast float %2333, %2333
  %2335 = call float @dx.op.unary.f32(i32 6, float %2310)  ; FAbs(value)
  %2336 = fsub fast float 1.000000e+00, %1797
  %2337 = call float @dx.op.binary.f32(i32 35, float %2336, float 0x3F847AE140000000)  ; FMax(a,b)
  %2338 = fmul fast float %2337, %2337
  %2339 = fmul fast float %2338, %2338
  %2340 = fsub fast float 1.000000e+00, %2339
  %2341 = fmul fast float %1815, %1815
  %2342 = fmul fast float %2341, %2340
  %2343 = fadd fast float %2342, %2339
  %2344 = bitcast float %2343 to i32
  %2345 = ashr i32 %2344, 1
  %2346 = add nsw i32 %2345, 532487669
  %2347 = bitcast i32 %2346 to float
  %2348 = fadd fast float %2347, %1815
  %2349 = fmul fast float %2339, %2334
  %2350 = fsub fast float 1.000000e+00, %2334
  %2351 = fadd fast float %2350, %2349
  %2352 = fmul fast float %2335, %2335
  %2353 = fmul fast float %2352, %2340
  %2354 = fadd fast float %2353, %2339
  %2355 = bitcast float %2354 to i32
  %2356 = ashr i32 %2355, 1
  %2357 = add nsw i32 %2356, 532487669
  %2358 = bitcast i32 %2357 to float
  %2359 = fadd fast float %2358, %2335
  %2360 = fmul fast float %2351, %2351
  %2361 = fmul fast float %2360, %2348
  %2362 = fmul fast float %2361, %2359
  %2363 = fdiv fast float 1.000000e+00, %2362
  %2364 = bitcast float %2339 to i32
  %2365 = sitofp i32 %2364 to float
  %2366 = fmul fast float %2365, 0x3FE7F73180000000
  %2367 = fadd fast float %2366, 0x41AFE27C40000000
  %2368 = fptosi float %2367 to i32
  %2369 = bitcast i32 %2368 to float
  %2370 = fmul fast float %2156, 0x3FD80E9D60000000
  %2371 = fmul fast float %2370, %2321
  %2372 = fadd fast float %2369, %2371
  %2373 = bitcast float %2372 to i32
  %2374 = sub nsw i32 2129859010, %2373
  %2375 = bitcast i32 %2374 to float
  %2376 = fmul fast float %2339, %2363
  %2377 = fmul fast float %2376, %2369
  %2378 = fmul fast float %2377, %2375
  %2379 = call float @dx.op.unary.f32(i32 6, float %2311)  ; FAbs(value)
  %2380 = fsub fast float 1.000000e+00, %2379
  %2381 = bitcast float %2380 to i32
  %2382 = sitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 5.000000e+00
  %2384 = fadd fast float %2383, 0xC1EFBF8940000000
  %2385 = fptosi float %2384 to i32
  %2386 = bitcast i32 %2385 to float
  %2387 = fsub fast float 1.000000e+00, %1791
  %2388 = fsub fast float 1.000000e+00, %1792
  %2389 = fsub fast float 1.000000e+00, %1813
  %2390 = fmul fast float %2386, %2387
  %2391 = fmul fast float %2386, %2388
  %2392 = fmul fast float %2386, %2389
  %2393 = fadd fast float %2390, %1791
  %2394 = fadd fast float %2391, %1792
  %2395 = fadd fast float %2392, %1813
  %2396 = fcmp fast ogt float %1165, 0.000000e+00
  br i1 %2396, label %2397, label %2420

; <label>:2397                                    ; preds = %2282
  %2398 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1165, float %2379, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2399 = extractvalue %dx.types.ResRet.f32 %2398, 0
  %2400 = extractvalue %dx.types.ResRet.f32 %2398, 1
  %2401 = extractvalue %dx.types.ResRet.f32 %2398, 2
  %2402 = fadd fast float %2399, -5.000000e-01
  %2403 = fadd fast float %2400, -5.000000e-01
  %2404 = fadd fast float %2401, -5.000000e-01
  %2405 = fmul fast float %1791, 4.000000e+00
  %2406 = fmul fast float %2405, %2387
  %2407 = fmul fast float %2406, %2402
  %2408 = fmul fast float %1792, 4.000000e+00
  %2409 = fmul fast float %2408, %2388
  %2410 = fmul fast float %2409, %2403
  %2411 = fmul fast float %1813, 4.000000e+00
  %2412 = fmul fast float %2411, %2389
  %2413 = fmul fast float %2412, %2404
  %2414 = fadd fast float %2407, %2393
  %2415 = fadd fast float %2410, %2394
  %2416 = fadd fast float %2413, %2395
  %2417 = call float @dx.op.unary.f32(i32 7, float %2414)  ; Saturate(value)
  %2418 = call float @dx.op.unary.f32(i32 7, float %2415)  ; Saturate(value)
  %2419 = call float @dx.op.unary.f32(i32 7, float %2416)  ; Saturate(value)
  br label %2420

; <label>:2420                                    ; preds = %2397, %2282
  %2421 = phi float [ %2417, %2397 ], [ %2393, %2282 ]
  %2422 = phi float [ %2418, %2397 ], [ %2394, %2282 ]
  %2423 = phi float [ %2419, %2397 ], [ %2395, %2282 ]
  %2424 = fmul fast float %2310, 9.843750e-01
  %2425 = fmul fast float %1797, 9.843750e-01
  %2426 = fadd fast float %2424, 7.812500e-03
  %2427 = fadd fast float %2425, 7.812500e-03
  %2428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %25, float %2426, float %2427, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2429 = extractvalue %dx.types.ResRet.f32 %2428, 2
  %2430 = extractvalue %dx.types.ResRet.f32 %2428, 3
  %2431 = fmul fast float %2429, %1791
  %2432 = fmul fast float %2429, %1792
  %2433 = fmul fast float %2429, %1813
  %2434 = fadd fast float %2431, %2430
  %2435 = fadd fast float %2432, %2430
  %2436 = fadd fast float %2433, %2430
  br i1 %2396, label %2437, label %2460

; <label>:2437                                    ; preds = %2420
  %2438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %25, float %1165, float %2310, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2439 = extractvalue %dx.types.ResRet.f32 %2438, 0
  %2440 = extractvalue %dx.types.ResRet.f32 %2438, 1
  %2441 = extractvalue %dx.types.ResRet.f32 %2438, 2
  %2442 = fadd fast float %2439, -5.000000e-01
  %2443 = fadd fast float %2440, -5.000000e-01
  %2444 = fadd fast float %2441, -5.000000e-01
  %2445 = fmul fast float %1791, 4.000000e+00
  %2446 = fmul fast float %2445, %2387
  %2447 = fmul fast float %2446, %2442
  %2448 = fmul fast float %1792, 4.000000e+00
  %2449 = fmul fast float %2448, %2388
  %2450 = fmul fast float %2449, %2443
  %2451 = fmul fast float %1813, 4.000000e+00
  %2452 = fmul fast float %2451, %2389
  %2453 = fmul fast float %2452, %2444
  %2454 = fadd fast float %2447, %2434
  %2455 = fadd fast float %2450, %2435
  %2456 = fadd fast float %2453, %2436
  %2457 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2458 = call float @dx.op.unary.f32(i32 7, float %2455)  ; Saturate(value)
  %2459 = call float @dx.op.unary.f32(i32 7, float %2456)  ; Saturate(value)
  br label %2460

; <label>:2460                                    ; preds = %2437, %2420
  %2461 = phi float [ %2457, %2437 ], [ %2434, %2420 ]
  %2462 = phi float [ %2458, %2437 ], [ %2435, %2420 ]
  %2463 = phi float [ %2459, %2437 ], [ %2436, %2420 ]
  %2464 = call float @dx.op.binary.f32(i32 35, float %2462, float %2463)  ; FMax(a,b)
  %2465 = call float @dx.op.binary.f32(i32 35, float %2461, float %2464)  ; FMax(a,b)
  %2466 = fsub fast float 1.000000e+00, %2465
  %2467 = fmul fast float %2421, %2378
  %2468 = fmul fast float %2422, %2378
  %2469 = fmul fast float %2423, %2378
  %2470 = call float @dx.op.dot3.f32(i32 55, float %1788, float %1789, float %1790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2471 = fcmp fast ogt float %2470, 0x3E7FF19E20000000
  %2472 = fdiv fast float 1.000000e+00, %2470
  %2473 = select i1 %2471, float %2472, float 0.000000e+00
  %2474 = fmul fast float %2473, %1788
  %2475 = fmul fast float %2473, %1789
  %2476 = fmul fast float %2473, %1790
  %2477 = fadd fast float %2474, -1.000000e+00
  %2478 = fadd fast float %2475, -1.000000e+00
  %2479 = fadd fast float %2476, -1.000000e+00
  %2480 = fmul fast float %2477, 5.000000e-01
  %2481 = fmul fast float %2478, 5.000000e-01
  %2482 = fmul fast float %2479, 5.000000e-01
  %2483 = fadd fast float %2480, 1.000000e+00
  %2484 = fadd fast float %2481, 1.000000e+00
  %2485 = fadd fast float %2482, 1.000000e+00
  %2486 = fsub fast float 1.000000e+00, %2311
  %2487 = bitcast float %2486 to i32
  %2488 = sitofp i32 %2487 to float
  %2489 = fmul fast float %2488, 5.000000e+00
  %2490 = fadd fast float %2489, 0xC1EFBF8940000000
  %2491 = fptosi float %2490 to i32
  %2492 = bitcast i32 %2491 to float
  %2493 = fmul fast float %2492, %1164
  %2494 = fmul fast float %2466, %2493
  %2495 = fmul fast float %2494, %2483
  %2496 = fmul fast float %2494, %2484
  %2497 = fmul fast float %2494, %2485
  %2498 = fadd fast float %2495, %2467
  %2499 = fadd fast float %2496, %2468
  %2500 = fadd fast float %2497, %2469
  %2501 = fmul fast float %2299, %1185
  %2502 = fmul fast float %2501, %2317
  %2503 = fmul fast float %2502, %2466
  %2504 = fmul fast float %2300, %1185
  %2505 = fmul fast float %2504, %2317
  %2506 = fmul fast float %2505, %2466
  %2507 = fmul fast float %2301, %1185
  %2508 = fmul fast float %2507, %2317
  %2509 = fmul fast float %2508, %2466
  %2510 = fadd fast float %2503, %2138
  %2511 = fadd fast float %2506, %2139
  %2512 = fadd fast float %2509, %2140
  %2513 = fmul fast float %2502, %2498
  %2514 = fmul fast float %2505, %2499
  %2515 = fmul fast float %2508, %2500
  %2516 = fadd fast float %2513, %2135
  %2517 = fadd fast float %2514, %2136
  %2518 = fadd fast float %2515, %2137
  br label %2213

; <label>:2519                                    ; preds = %2213
  br label %2520

; <label>:2520                                    ; preds = %2519, %2101
  %2521 = phi float [ %2103, %2101 ], [ %2214, %2519 ]
  %2522 = phi float [ %2104, %2101 ], [ %2215, %2519 ]
  %2523 = phi float [ %2105, %2101 ], [ %2216, %2519 ]
  %2524 = phi float [ %2106, %2101 ], [ %2217, %2519 ]
  %2525 = phi float [ %2107, %2101 ], [ %2218, %2519 ]
  %2526 = phi float [ %2108, %2101 ], [ %2219, %2519 ]
  %2527 = add i32 %2102, 1
  %2528 = icmp ugt i32 %2527, %2098
  br i1 %2528, label %2529, label %2101

; <label>:2529                                    ; preds = %2520
  br label %2530

; <label>:2530                                    ; preds = %2529, %2077, %2067
  %2531 = phi float [ %2068, %2067 ], [ %2068, %2077 ], [ %2521, %2529 ]
  %2532 = phi float [ %2069, %2067 ], [ %2069, %2077 ], [ %2522, %2529 ]
  %2533 = phi float [ %2070, %2067 ], [ %2070, %2077 ], [ %2523, %2529 ]
  %2534 = phi float [ %2071, %2067 ], [ %2071, %2077 ], [ %2524, %2529 ]
  %2535 = phi float [ %2072, %2067 ], [ %2072, %2077 ], [ %2525, %2529 ]
  %2536 = phi float [ %2073, %2067 ], [ %2073, %2077 ], [ %2526, %2529 ]
  %2537 = call float @dx.op.unary.f32(i32 24, float %1788)  ; Sqrt(value)
  %2538 = call float @dx.op.unary.f32(i32 24, float %1789)  ; Sqrt(value)
  %2539 = call float @dx.op.unary.f32(i32 24, float %1790)  ; Sqrt(value)
  %2540 = fmul fast float %2537, %2534
  %2541 = fmul fast float %2538, %2535
  %2542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2543 = extractvalue %dx.types.CBufRet.f32 %2542, 0
  br i1 %135, label %2544, label %2577

; <label>:2544                                    ; preds = %2530
  %2545 = fadd fast float %2536, %1162
  %2546 = fmul fast float %2545, %1163
  %2547 = fsub fast float 1.000000e+00, %1163
  %2548 = call float @dx.op.unary.f32(i32 7, float %2547)  ; Saturate(value)
  %2549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2550 = extractvalue %dx.types.CBufRet.f32 %2549, 3
  %2551 = fmul fast float %2550, %2548
  %2552 = fsub fast float 1.000000e+00, %1815
  %2553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2554 = extractvalue %dx.types.CBufRet.f32 %2553, 0
  %2555 = fmul fast float %2554, %2552
  %2556 = extractvalue %dx.types.CBufRet.f32 %2553, 2
  %2557 = fmul fast float %1812, %2556
  %2558 = fadd fast float %2541, %2540
  %2559 = fmul fast float %2543, %2558
  %2560 = extractvalue %dx.types.CBufRet.f32 %2549, 1
  %2561 = fadd fast float %2551, %2546
  %2562 = fsub fast float %2561, %2555
  %2563 = fadd fast float %2562, %2557
  %2564 = fsub fast float %2563, %2560
  %2565 = extractvalue %dx.types.CBufRet.f32 %2549, 2
  %2566 = fmul fast float %2564, %2565
  %2567 = call float @dx.op.unary.f32(i32 7, float %2566)  ; Saturate(value)
  %2568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %2569 = extractvalue %dx.types.CBufRet.f32 %2568, 0
  %2570 = fsub fast float %2567, %2569
  %2571 = fmul fast float %2570, 1.000000e+01
  %2572 = call float @dx.op.unary.f32(i32 7, float %2571)  ; Saturate(value)
  %2573 = fadd fast float %1161, -1.000000e+00
  %2574 = fmul fast float %2572, %2573
  %2575 = fadd fast float %2574, 1.000000e+00
  %2576 = fmul fast float %2575, %2567
  br label %2593

; <label>:2577                                    ; preds = %2530
  %2578 = fmul fast float %2539, %2536
  %2579 = fmul fast float %2543, %2540
  %2580 = fmul fast float %2543, %2541
  %2581 = fmul fast float %2578, %2543
  %2582 = add i32 %29, 116
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 32
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %2593, label %2587

; <label>:2587                                    ; preds = %2577
  %2588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2589 = extractvalue %dx.types.CBufRet.f32 %2588, 0
  %2590 = fmul fast float %2589, 0x3FE99999A0000000
  %2591 = fadd fast float %2589, %2579
  %2592 = fadd fast float %2590, %2581
  br label %2593

; <label>:2593                                    ; preds = %2587, %2577, %2544
  %2594 = phi float [ %2559, %2544 ], [ %2591, %2587 ], [ %2579, %2577 ]
  %2595 = phi float [ %2576, %2544 ], [ %2580, %2587 ], [ %2580, %2577 ]
  %2596 = phi float [ %2575, %2544 ], [ %2592, %2587 ], [ %2581, %2577 ]
  %2597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %28, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2598 = extractvalue %dx.types.CBufRet.f32 %2597, 0
  %2599 = fmul fast float %2598, %2532
  %2600 = fmul fast float %2598, %2533
  %2601 = fadd fast float %2532, %2531
  %2602 = select i1 %135, float %2601, float %2531
  %2603 = fmul float %2602, %2598
  %2604 = select i1 %135, float 0.000000e+00, float %2599
  %2605 = select i1 %135, float 0.000000e+00, float %2600
  %2606 = fmul fast float %2594, %2537
  %2607 = fmul fast float %2595, %2538
  %2608 = fmul fast float %2596, %2539
  %2609 = fadd fast float %2603, %2606
  %2610 = fadd fast float %2604, %2607
  %2611 = fadd fast float %2605, %2608
  %2612 = select i1 %135, float %2595, float %2610
  %2613 = select i1 %135, float %2596, float %2611
  %2614 = call float @dx.op.binary.f32(i32 36, float %2609, float 3.225500e+04)  ; FMin(a,b)
  %2615 = call float @dx.op.binary.f32(i32 36, float %2612, float 3.225500e+04)  ; FMin(a,b)
  %2616 = call float @dx.op.binary.f32(i32 36, float %2613, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2614)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2615)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2616)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

