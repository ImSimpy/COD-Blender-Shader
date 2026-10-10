;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xy          1     NONE   float   xy  
; LMAPCOORDS               0   xyz         2     NONE   float   xyz 
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
; shader hash: 7fb0c7b0b2f18823f9852c40e96c79e1
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture    byte         r/o      T2     t37,space1     1
;                                   texture     f32          2d      T3     t33,space2     1
;                                   texture     f32     2darray      T4     t16,space2     1
;                                   texture     f32          3d      T5     t15,space2     1
;                                   texture     f32          2d      T6     t14,space2     1
;                                   texture     f32          2d      T7     t13,space2     1
;                                   texture     u32          2d      T8     t17,space2     1
;                                   texture     f32          3d      T9     t18,space2     1
;                                   texture     f32     2darray     T10     t23,space2     1
;                                   texture     f32     2darray     T11     t24,space2     1
;                                   texture     f32     2darray     T12     t25,space2     1
;                                   texture    byte         r/o     T13     t66,space1     1
;                                   texture    byte         r/o     T14     t16,space1     1
;                                   texture    byte         r/o     T15     t17,space1     1
;                                   texture     f32          2d     T16     t69,space2     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t57,space2     1
;                                   texture    byte         r/o     T19     t69,space1     1
;                                   texture     f32          2d     T20     t34,space2     1
;                                   texture    byte         r/o     T21     t68,space1     1
;                                   texture     f32          2d     T22      t0,space2     1
;
;
; ViewId state:
;
; Number of inputs: 22, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 16, 17, 18, 19, 20 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = fmul fast float %45, %39
  %47 = fmul fast float %45, %40
  %48 = fmul fast float %32, %29
  %49 = fmul fast float %33, %28
  %50 = fsub fast float %48, %49
  %51 = fmul fast float %33, %27
  %52 = fmul fast float %31, %29
  %53 = fsub fast float %51, %52
  %54 = fmul fast float %31, %28
  %55 = fmul fast float %32, %27
  %56 = fsub fast float %54, %55
  %57 = fmul fast float %50, %30
  %58 = fmul fast float %53, %30
  %59 = fmul fast float %56, %30
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 2
  %62 = extractvalue %dx.types.CBufRet.f32 %60, 3
  %63 = fmul fast float %61, 2.000000e+00
  %64 = fmul fast float %63, %46
  %65 = fmul fast float %62, 2.000000e+00
  %66 = fmul fast float %65, %47
  %67 = fsub fast float 1.000000e+00, %64
  %68 = fsub fast float 1.000000e+00, %66
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = extractvalue %dx.types.CBufRet.f32 %69, 1
  %72 = extractvalue %dx.types.CBufRet.f32 %69, 2
  %73 = fmul fast float %67, %70
  %74 = fmul fast float %67, %71
  %75 = fmul fast float %67, %72
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 1
  %79 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %80 = fmul fast float %68, %77
  %81 = fmul fast float %68, %78
  %82 = fmul fast float %68, %79
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
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
  %96 = fadd fast float %36, 5.000000e-01
  %97 = fptoui float %96 to i32
  %98 = shl i32 %97, 3
  %99 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %98, i32 undef)  ; BufferLoad(srv,index,wot)
  %100 = extractvalue %dx.types.ResRet.i32 %99, 0
  %101 = or i32 %98, 4
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = and i32 %100, 8191
  %105 = lshr i32 %100, 13
  %106 = and i32 %105, 8191
  %107 = lshr i32 %100, 26
  %108 = and i32 %103, 65535
  %109 = lshr i32 %103, 16
  %110 = uitofp i32 %108 to float
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %113 = uitofp i32 %109 to float
  %114 = uitofp i32 %104 to float
  %115 = fmul fast float %112, %114
  %116 = uitofp i32 %106 to float
  %117 = fmul fast float %112, %116
  %118 = fmul fast float %112, %34
  %119 = fmul fast float %118, %110
  %120 = fmul fast float %112, %35
  %121 = fmul fast float %120, %113
  %122 = fadd fast float %119, %115
  %123 = fadd fast float %117, %121
  %124 = uitofp i32 %107 to float
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %126, %46
  %129 = fmul fast float %127, %47
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %131, 114688
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %133, float %128, float 0.000000e+00
  %135 = select i1 %133, float %129, float 0.000000e+00
  %136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %23, float %134, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = fmul fast float %137, 2.550000e+02
  %139 = fptoui float %138 to i32
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 3
  %143 = and i32 %142, 3
  %144 = icmp ne i32 %143, 0
  %145 = and i32 %142, 4
  %146 = icmp ne i32 %145, 0
  %147 = and i1 %144, %146
  br i1 %147, label %148, label %159

; <label>:148                                     ; preds = %0
  %149 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %150 = fmul fast float %149, %47
  %151 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %152 = fmul fast float %151, %46
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %22, float %152, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = fsub fast float 1.000000e+00, %154
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = fcmp fast olt float %155, %157
  br label %162

; <label>:159                                     ; preds = %0
  %160 = icmp eq i32 %145, 0
  %161 = and i1 %144, %160
  br label %162

; <label>:162                                     ; preds = %159, %148
  %163 = phi i1 [ %158, %148 ], [ %161, %159 ]
  %164 = add i32 %26, 60
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = shl i32 %166, 4
  %168 = and i32 %167, 32752
  %169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %168)  ; LegacyF16ToF32(value)
  %170 = lshr i32 %166, 7
  %171 = and i32 %170, 32752
  %172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %171)  ; LegacyF16ToF32(value)
  %173 = lshr i32 %166, 22
  %174 = shl nuw nsw i32 %173, 5
  %175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %174)  ; LegacyF16ToF32(value)
  %176 = add i32 %26, 72
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = and i32 %178, 255
  %180 = uitofp i32 %179 to float
  %181 = fmul fast float %180, 0x3F70101020000000
  %182 = lshr i32 %178, 8
  %183 = and i32 %182, 255
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3F70101020000000
  %186 = lshr i32 %178, 16
  %187 = and i32 %186, 255
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F70101020000000
  %190 = add i32 %26, 36
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = add i32 %26, 96
  %194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %193, i32 undef)  ; BufferLoad(srv,index,wot)
  %195 = extractvalue %dx.types.ResRet.i32 %194, 0
  %196 = add i32 %26, 24
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = add i32 %26, 28
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = or i32 %201, %198
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %664, label %204

; <label>:204                                     ; preds = %162
  %205 = lshr i32 %195, 16
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = fmul fast float %206, 0x3F50624DE0000000
  %208 = and i32 %195, 65535
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = fmul fast float %209, 0x3F50624DE0000000
  %211 = lshr i32 %192, 16
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = and i32 %192, 65535
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = add i32 %26, 92
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = lshr i32 %217, 16
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = fmul fast float %219, 0x3F50624DE0000000
  %221 = add i32 %26, 40
  %222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %221, i32 undef)  ; BufferLoad(srv,index,wot)
  %223 = extractvalue %dx.types.ResRet.i32 %222, 0
  %224 = lshr i32 %223, 16
  %225 = and i32 %224, 255
  %226 = lshr i32 %223, 24
  %227 = add i32 %26, 100
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %229, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %26, 32
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 22
  %238 = shl nuw nsw i32 %237, 5
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = shl i32 %236, 4
  %241 = and i32 %240, 32752
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %236, 7
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %248 = fmul fast float %247, 1.000000e+03
  %249 = fmul fast float %210, %248
  %250 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %251 = fadd fast float %250, %214
  %252 = fmul fast float %207, %248
  %253 = call float @dx.op.unary.f32(i32 22, float %252)  ; Frc(value)
  %254 = fadd fast float %253, %212
  %255 = fmul fast float %220, %248
  %256 = call float @dx.op.unary.f32(i32 22, float %255)  ; Frc(value)
  %257 = fmul fast float %256, 0x401921FB60000000
  %258 = fadd fast float %257, %239
  %259 = call float @dx.op.unary.f32(i32 13, float %258)  ; Sin(value)
  %260 = call float @dx.op.unary.f32(i32 12, float %258)  ; Cos(value)
  %261 = fsub fast float -0.000000e+00, %259
  %262 = fadd fast float %37, -5.000000e-01
  %263 = fadd fast float %38, -5.000000e-01
  %264 = fmul fast float %231, %262
  %265 = fmul fast float %233, %263
  %266 = fadd fast float %264, 5.000000e-01
  %267 = fadd fast float %265, 5.000000e-01
  %268 = fmul fast float %242, %266
  %269 = fmul fast float %245, %267
  %270 = fmul fast float %260, %268
  %271 = call float @dx.op.tertiary.f32(i32 46, float %261, float %269, float %270)  ; FMad(a,b,c)
  %272 = fmul fast float %259, %268
  %273 = call float @dx.op.tertiary.f32(i32 46, float %260, float %269, float %272)  ; FMad(a,b,c)
  %274 = fadd fast float %251, %271
  %275 = fadd fast float %254, %273
  %276 = icmp ugt i32 %225, 1
  %277 = icmp ugt i32 %223, 33554431
  %278 = or i1 %277, %276
  br i1 %278, label %279, label %304

; <label>:279                                     ; preds = %204
  %280 = add i32 %26, 84
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = lshr i32 %282, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = fmul fast float %247, %284
  %286 = call float @dx.op.unary.f32(i32 22, float %285)  ; Frc(value)
  %287 = mul nuw nsw i32 %225, %226
  %288 = uitofp i32 %287 to float
  %289 = fmul fast float %286, %288
  %290 = call float @dx.op.unary.f32(i32 27, float %289)  ; Round_ni(value)
  %291 = fptoui float %290 to i32
  %292 = urem i32 %291, %225
  %293 = udiv i32 %291, %226
  %294 = call float @dx.op.unary.f32(i32 22, float %274)  ; Frc(value)
  %295 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %296 = uitofp i32 %292 to float
  %297 = uitofp i32 %293 to float
  %298 = fadd fast float %294, %296
  %299 = fadd fast float %295, %297
  %300 = uitofp i32 %225 to float
  %301 = uitofp i32 %226 to float
  %302 = fdiv fast float %298, %300
  %303 = fdiv fast float %299, %301
  br label %304

; <label>:304                                     ; preds = %279, %204
  %305 = phi float [ %302, %279 ], [ %274, %204 ]
  %306 = phi float [ %303, %279 ], [ %275, %204 ]
  %307 = and i32 %198, 16
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %505, label %309

; <label>:309                                     ; preds = %304
  %310 = add i32 %26, 120
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = add i32 %312, 0
  %314 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %313, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %315 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %314, %dx.types.Handle %42, float %305, float %306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %316 = extractvalue %dx.types.ResRet.f32 %315, 0
  %317 = extractvalue %dx.types.ResRet.f32 %315, 1
  %318 = extractvalue %dx.types.ResRet.f32 %315, 2
  %319 = extractvalue %dx.types.ResRet.f32 %315, 3
  %320 = and i32 %223, 255
  %321 = uitofp i32 %320 to float
  %322 = lshr i32 %223, 8
  %323 = and i32 %322, 255
  %324 = uitofp i32 %323 to float
  %325 = fmul fast float %319, %321
  %326 = fadd fast float %325, %324
  %327 = fmul fast float %326, 0x3F70101000000000
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 512
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %340, label %332

; <label>:332                                     ; preds = %309
  %333 = add i32 %26, 140
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = add i32 %335, 0
  %337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %337, %dx.types.Handle %43, float %305, float %306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  br label %340

; <label>:340                                     ; preds = %332, %309
  %341 = phi float [ %339, %332 ], [ 1.000000e+00, %309 ]
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 33554432
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %452, label %346

; <label>:346                                     ; preds = %340
  %347 = add i32 %26, 80
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 65535
  %351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %350)  ; LegacyF16ToF32(value)
  %352 = lshr i32 %349, 16
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = add i32 %26, 84
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = lshr i32 %360, 24
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %362, 0x3F70101020000000
  %364 = and i32 %360, 255
  %365 = uitofp i32 %364 to float
  %366 = fmul fast float %365, 0x3F70101020000000
  %367 = lshr i32 %360, 8
  %368 = and i32 %367, 255
  %369 = uitofp i32 %368 to float
  %370 = fmul fast float %369, 0x3F70101020000000
  %371 = lshr i32 %360, 16
  %372 = and i32 %371, 255
  %373 = uitofp i32 %372 to float
  %374 = fmul fast float %373, 0x3F70101020000000
  %375 = add i32 %26, 76
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = lshr i32 %377, 24
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = and i32 %377, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = lshr i32 %377, 8
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = lshr i32 %377, 16
  %389 = and i32 %388, 255
  %390 = uitofp i32 %389 to float
  %391 = fmul fast float %390, 0x3F70101020000000
  %392 = bitcast float %316 to i32
  %393 = ashr i32 %392, 1
  %394 = sub nsw i32 1597463174, %393
  %395 = bitcast i32 %394 to float
  %396 = fmul fast float %316, 5.000000e-01
  %397 = fmul fast float %395, %395
  %398 = fmul fast float %397, %396
  %399 = fsub fast float 1.500000e+00, %398
  %400 = fmul fast float %395, %316
  %401 = fmul fast float %400, %399
  %402 = bitcast float %317 to i32
  %403 = ashr i32 %402, 1
  %404 = sub nsw i32 1597463174, %403
  %405 = bitcast i32 %404 to float
  %406 = fmul fast float %317, 5.000000e-01
  %407 = fmul fast float %405, %405
  %408 = fmul fast float %407, %406
  %409 = fsub fast float 1.500000e+00, %408
  %410 = fmul fast float %405, %317
  %411 = fmul fast float %410, %409
  %412 = bitcast float %318 to i32
  %413 = ashr i32 %412, 1
  %414 = sub nsw i32 1597463174, %413
  %415 = bitcast i32 %414 to float
  %416 = fmul fast float %318, 5.000000e-01
  %417 = fmul fast float %415, %415
  %418 = fmul fast float %417, %416
  %419 = fsub fast float 1.500000e+00, %418
  %420 = fmul fast float %415, %318
  %421 = fmul fast float %420, %419
  %422 = fsub fast float %401, %383
  %423 = fsub fast float %411, %387
  %424 = fsub fast float %421, %391
  %425 = fmul fast float %422, %351
  %426 = fmul fast float %423, %353
  %427 = fmul fast float %424, %358
  %428 = fadd fast float %425, %366
  %429 = fadd fast float %426, %370
  %430 = fadd fast float %427, %374
  %431 = call float @dx.op.unary.f32(i32 7, float %428)  ; Saturate(value)
  %432 = call float @dx.op.unary.f32(i32 7, float %429)  ; Saturate(value)
  %433 = call float @dx.op.unary.f32(i32 7, float %430)  ; Saturate(value)
  %434 = fmul fast float %431, %431
  %435 = fmul fast float %432, %432
  %436 = fmul fast float %433, %433
  %437 = fsub fast float %434, %316
  %438 = fsub fast float %435, %317
  %439 = fsub fast float %436, %318
  %440 = fmul fast float %437, %341
  %441 = fmul fast float %438, %341
  %442 = fmul fast float %439, %341
  %443 = fadd fast float %440, %316
  %444 = fadd fast float %441, %317
  %445 = fadd fast float %442, %318
  %446 = fadd fast float %363, %327
  %447 = fsub fast float %446, %380
  %448 = call float @dx.op.unary.f32(i32 7, float %447)  ; Saturate(value)
  %449 = fsub fast float %448, %327
  %450 = fmul fast float %449, %341
  %451 = fadd fast float %450, %327
  br label %505

; <label>:452                                     ; preds = %340
  %453 = and i32 %343, 134217728
  %454 = icmp eq i32 %453, 0
  br i1 %454, label %489, label %455

; <label>:455                                     ; preds = %452
  %456 = call float @dx.op.unary.f32(i32 24, float %181)  ; Sqrt(value)
  %457 = call float @dx.op.unary.f32(i32 24, float %185)  ; Sqrt(value)
  %458 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %459 = fadd fast float %456, -5.000000e-01
  %460 = fadd fast float %457, -5.000000e-01
  %461 = fadd fast float %458, -5.000000e-01
  %462 = fmul fast float %459, %341
  %463 = fmul fast float %460, %341
  %464 = fmul fast float %461, %341
  %465 = fadd fast float %462, 5.000000e-01
  %466 = fadd fast float %463, 5.000000e-01
  %467 = fadd fast float %464, 5.000000e-01
  %468 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %469 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %470 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %471 = fmul fast float %465, 2.000000e+00
  %472 = fsub fast float 1.000000e+00, %471
  %473 = fmul fast float %472, %468
  %474 = fadd fast float %473, %471
  %475 = fmul fast float %474, %468
  %476 = fmul fast float %466, 2.000000e+00
  %477 = fsub fast float 1.000000e+00, %476
  %478 = fmul fast float %477, %469
  %479 = fadd fast float %478, %476
  %480 = fmul fast float %479, %469
  %481 = fmul fast float %467, 2.000000e+00
  %482 = fsub fast float 1.000000e+00, %481
  %483 = fmul fast float %482, %470
  %484 = fadd fast float %483, %481
  %485 = fmul fast float %484, %470
  %486 = fmul fast float %475, %475
  %487 = fmul fast float %480, %480
  %488 = fmul fast float %485, %485
  br label %505

; <label>:489                                     ; preds = %452
  %490 = fmul fast float %181, %181
  %491 = fmul fast float %185, %185
  %492 = fmul fast float %189, %189
  %493 = fadd fast float %490, -1.000000e+00
  %494 = fadd fast float %491, -1.000000e+00
  %495 = fadd fast float %492, -1.000000e+00
  %496 = fmul fast float %341, %493
  %497 = fmul fast float %341, %494
  %498 = fmul fast float %341, %495
  %499 = fadd fast float %496, 1.000000e+00
  %500 = fadd fast float %497, 1.000000e+00
  %501 = fadd fast float %498, 1.000000e+00
  %502 = fmul fast float %499, %316
  %503 = fmul fast float %500, %317
  %504 = fmul fast float %501, %318
  br label %505

; <label>:505                                     ; preds = %489, %455, %346, %304
  %506 = phi float [ %451, %346 ], [ %327, %455 ], [ %327, %489 ], [ 0x3FA23C0BE0000000, %304 ]
  %507 = phi float [ %443, %346 ], [ %486, %455 ], [ %502, %489 ], [ 1.000000e+00, %304 ]
  %508 = phi float [ %444, %346 ], [ %487, %455 ], [ %503, %489 ], [ 1.000000e+00, %304 ]
  %509 = phi float [ %445, %346 ], [ %488, %455 ], [ %504, %489 ], [ 1.000000e+00, %304 ]
  %510 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %511 = extractvalue %dx.types.CBufRet.i32 %510, 1
  %512 = and i32 %511, 1
  %513 = icmp ne i32 %512, 0
  %514 = add i32 %26, 116
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %514, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 32
  %518 = icmp ne i32 %517, 0
  %519 = and i1 %513, %518
  %520 = select i1 %519, float 1.000000e+00, float %507
  %521 = select i1 %519, float 0x3FD3333340000000, float %508
  %522 = select i1 %519, float 0x3FD3333340000000, float %509
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 32
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %599, label %527

; <label>:527                                     ; preds = %505
  %528 = add i32 %26, 44
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = add i32 %26, 124
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = add i32 %533, 0
  %535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %535, %dx.types.Handle %42, float %305, float %306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  %538 = extractvalue %dx.types.ResRet.f32 %536, 1
  %539 = extractvalue %dx.types.ResRet.f32 %536, 2
  %540 = extractvalue %dx.types.ResRet.f32 %536, 3
  %541 = and i32 %530, 255
  %542 = uitofp i32 %541 to float
  %543 = lshr i32 %530, 8
  %544 = and i32 %543, 255
  %545 = uitofp i32 %544 to float
  %546 = lshr i32 %530, 16
  %547 = and i32 %546, 255
  %548 = uitofp i32 %547 to float
  %549 = fmul fast float %548, 0x3F70101000000000
  %550 = fmul fast float %537, %542
  %551 = fadd fast float %550, %545
  %552 = fmul fast float %551, 0x3F70101000000000
  %553 = fadd fast float %538, -5.000000e-01
  %554 = fadd fast float %540, -5.000000e-01
  %555 = fmul fast float %553, %549
  %556 = fmul fast float %554, %549
  %557 = fadd fast float %555, 5.000000e-01
  %558 = fadd fast float %556, 5.000000e-01
  %559 = fmul fast float %557, 2.000000e+00
  %560 = fadd fast float %559, -1.000000e+00
  %561 = fmul fast float %558, 2.000000e+00
  %562 = fadd fast float %561, -1.000000e+00
  %563 = fadd fast float %560, %562
  %564 = fmul fast float %563, 5.000000e-01
  %565 = fsub fast float %560, %562
  %566 = fmul fast float %565, 5.000000e-01
  %567 = call float @dx.op.unary.f32(i32 6, float %564)  ; FAbs(value)
  %568 = fsub fast float 1.000000e+00, %567
  %569 = call float @dx.op.unary.f32(i32 6, float %566)  ; FAbs(value)
  %570 = fsub fast float %568, %569
  %571 = call float @dx.op.dot3.f32(i32 55, float %564, float %566, float %570, float %564, float %566, float %570)  ; Dot3(ax,ay,az,bx,by,bz)
  %572 = call float @dx.op.unary.f32(i32 25, float %571)  ; Rsqrt(value)
  %573 = fmul fast float %564, %572
  %574 = fmul fast float %566, %572
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 67108864
  %578 = icmp eq i32 %577, 0
  br i1 %578, label %595, label %579

; <label>:579                                     ; preds = %527
  %580 = add i32 %26, 88
  %581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.i32 %581, 0
  %583 = and i32 %582, 65535
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = lshr i32 %582, 16
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = fsub fast float %552, %590
  %592 = fmul fast float %591, %584
  %593 = fadd fast float %592, %588
  %594 = call float @dx.op.unary.f32(i32 7, float %593)  ; Saturate(value)
  br label %595

; <label>:595                                     ; preds = %579, %527
  %596 = phi float [ %594, %579 ], [ %552, %527 ]
  %597 = call float @dx.op.dot2.f32(i32 54, float %573, float %574, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %598 = call float @dx.op.dot2.f32(i32 54, float %573, float %574, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %599

; <label>:599                                     ; preds = %595, %505
  %600 = phi float [ %596, %595 ], [ 0x3FD6666660000000, %505 ]
  %601 = phi float [ %597, %595 ], [ 0.000000e+00, %505 ]
  %602 = phi float [ %598, %595 ], [ 0.000000e+00, %505 ]
  %603 = phi float [ %539, %595 ], [ 1.000000e+00, %505 ]
  %604 = add i32 %26, 64
  %605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.i32 %605, 0
  %607 = lshr i32 %606, 22
  %608 = shl nuw nsw i32 %607, 5
  %609 = call float @dx.op.legacyF16ToF32(i32 131, i32 %608)  ; LegacyF16ToF32(value)
  %610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.i32 %610, 0
  %612 = and i32 %611, 64
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %647, label %614

; <label>:614                                     ; preds = %599
  %615 = add i32 %26, 128
  %616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.i32 %616, 0
  %618 = add i32 %617, 0
  %619 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %618, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %621 = extractvalue %dx.types.ResRet.i32 %620, 0
  %622 = and i32 %621, 131072
  %623 = icmp eq i32 %622, 0
  %624 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %619, %dx.types.Handle %42, float %305, float %306, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %625 = extractvalue %dx.types.ResRet.f32 %624, 0
  %626 = extractvalue %dx.types.ResRet.f32 %624, 1
  %627 = extractvalue %dx.types.ResRet.f32 %624, 2
  %628 = fmul fast float %625, %169
  %629 = fmul fast float %626, %172
  %630 = fmul fast float %627, %175
  br i1 %623, label %637, label %631

; <label>:631                                     ; preds = %614
  %632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %633 = extractvalue %dx.types.CBufRet.f32 %632, 0
  %634 = fmul fast float %633, %628
  %635 = fmul fast float %633, %629
  %636 = fmul fast float %633, %630
  br label %637

; <label>:637                                     ; preds = %631, %614
  %638 = phi float [ %634, %631 ], [ %628, %614 ]
  %639 = phi float [ %635, %631 ], [ %629, %614 ]
  %640 = phi float [ %636, %631 ], [ %630, %614 ]
  %641 = fmul fast float %638, %609
  %642 = select i1 %163, float %641, float %638
  %643 = call float @dx.op.dot3.f32(i32 55, float %642, float %639, float %640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %644 = select i1 %163, float 0.000000e+00, float %638
  %645 = select i1 %163, float %643, float %639
  %646 = select i1 %163, float 0.000000e+00, float %640
  br label %647

; <label>:647                                     ; preds = %637, %599
  %648 = phi float [ %644, %637 ], [ 0.000000e+00, %599 ]
  %649 = phi float [ %645, %637 ], [ 0.000000e+00, %599 ]
  %650 = phi float [ %646, %637 ], [ 0.000000e+00, %599 ]
  %651 = add i32 %26, 48
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %651, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = and i32 %653, 255
  %655 = uitofp i32 %654 to float
  %656 = lshr i32 %653, 8
  %657 = and i32 %656, 255
  %658 = uitofp i32 %657 to float
  %659 = call float @dx.op.dot3.f32(i32 55, float %520, float %521, float %522, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %660 = fmul fast float %658, %659
  %661 = fadd fast float %660, %655
  %662 = fmul fast float %661, 0x3F70101020000000
  %663 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  br label %664

; <label>:664                                     ; preds = %647, %162
  %665 = phi float [ 0.000000e+00, %162 ], [ %601, %647 ]
  %666 = phi float [ 0.000000e+00, %162 ], [ %602, %647 ]
  %667 = phi float [ 0.000000e+00, %162 ], [ %520, %647 ]
  %668 = phi float [ 0.000000e+00, %162 ], [ %521, %647 ]
  %669 = phi float [ 0.000000e+00, %162 ], [ %522, %647 ]
  %670 = phi float [ 0.000000e+00, %162 ], [ %648, %647 ]
  %671 = phi float [ 0.000000e+00, %162 ], [ %649, %647 ]
  %672 = phi float [ 0.000000e+00, %162 ], [ %650, %647 ]
  %673 = phi float [ 0.000000e+00, %162 ], [ %506, %647 ]
  %674 = phi float [ 0.000000e+00, %162 ], [ 1.000000e+00, %647 ]
  %675 = phi float [ 0.000000e+00, %162 ], [ %600, %647 ]
  %676 = phi float [ 0.000000e+00, %162 ], [ %603, %647 ]
  %677 = phi float [ 0.000000e+00, %162 ], [ %663, %647 ]
  %678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %679 = extractvalue %dx.types.CBufRet.f32 %678, 0
  %680 = call float @dx.op.dot2.f32(i32 54, float %665, float %666, float %665, float %666)  ; Dot2(ax,ay,bx,by)
  %681 = fmul fast float %680, 0x3FE3333340000000
  %682 = fsub fast float 1.000000e+00, %681
  %683 = call float @dx.op.dot3.f32(i32 55, float %665, float %666, float %682, float %665, float %666, float %682)  ; Dot3(ax,ay,az,bx,by,bz)
  %684 = call float @dx.op.unary.f32(i32 25, float %683)  ; Rsqrt(value)
  %685 = fmul fast float %684, %665
  %686 = fmul fast float %684, %666
  %687 = fmul fast float %682, %684
  %688 = fmul fast float %687, %31
  %689 = fmul fast float %687, %32
  %690 = fmul fast float %687, %33
  %691 = fmul fast float %685, %27
  %692 = fmul fast float %685, %28
  %693 = fmul fast float %685, %29
  %694 = fadd fast float %688, %691
  %695 = fadd fast float %689, %692
  %696 = fadd fast float %690, %693
  %697 = fmul fast float %686, %57
  %698 = fmul fast float %686, %58
  %699 = fmul fast float %686, %59
  %700 = fadd fast float %694, %697
  %701 = fadd fast float %695, %698
  %702 = fadd fast float %696, %699
  %703 = call float @dx.op.dot3.f32(i32 55, float %700, float %701, float %702, float %700, float %701, float %702)  ; Dot3(ax,ay,az,bx,by,bz)
  %704 = call float @dx.op.unary.f32(i32 25, float %703)  ; Rsqrt(value)
  %705 = fmul fast float %700, %704
  %706 = fmul fast float %701, %704
  %707 = fmul fast float %702, %704
  %708 = call float @dx.op.unary.f32(i32 83, float %93)  ; DerivCoarseX(value)
  %709 = call float @dx.op.unary.f32(i32 83, float %94)  ; DerivCoarseX(value)
  %710 = call float @dx.op.unary.f32(i32 83, float %95)  ; DerivCoarseX(value)
  %711 = call float @dx.op.unary.f32(i32 84, float %93)  ; DerivCoarseY(value)
  %712 = call float @dx.op.unary.f32(i32 84, float %94)  ; DerivCoarseY(value)
  %713 = call float @dx.op.unary.f32(i32 84, float %95)  ; DerivCoarseY(value)
  %714 = fadd fast float %708, %93
  %715 = fadd fast float %709, %94
  %716 = fadd fast float %710, %95
  %717 = fadd fast float %711, %93
  %718 = fadd fast float %712, %94
  %719 = fadd fast float %713, %95
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %723 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %725 = extractvalue %dx.types.CBufRet.f32 %724, 2
  %726 = extractvalue %dx.types.CBufRet.f32 %724, 3
  %727 = fmul fast float %721, %46
  %728 = fmul fast float %727, %725
  %729 = fmul fast float %722, %47
  %730 = fmul fast float %729, %726
  %731 = fptoui float %728 to i32
  %732 = fptoui float %730 to i32
  %733 = fadd fast float %721, -1.000000e+00
  %734 = fadd fast float %722, -1.000000e+00
  %735 = fptoui float %733 to i32
  %736 = fptoui float %734 to i32
  %737 = call i32 @dx.op.binary.i32(i32 40, i32 %731, i32 %735)  ; UMin(a,b)
  %738 = call i32 @dx.op.binary.i32(i32 40, i32 %732, i32 %736)  ; UMin(a,b)
  %739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %740 = extractvalue %dx.types.CBufRet.f32 %739, 2
  %741 = extractvalue %dx.types.CBufRet.f32 %739, 3
  %742 = fmul fast float %740, %41
  %743 = fsub fast float %742, %741
  %744 = fadd fast float %723, -1.000000e+00
  %745 = call float @dx.op.binary.f32(i32 36, float %743, float %744)  ; FMin(a,b)
  %746 = fptoui float %745 to i32
  %747 = fptoui float %721 to i32
  %748 = fptoui float %722 to i32
  %749 = mul i32 %746, %748
  %750 = add i32 %749, %738
  %751 = mul i32 %750, %747
  %752 = add i32 %751, %737
  %753 = shl i32 %752, 2
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 1023
  %757 = lshr i32 %755, 10
  %758 = icmp eq i32 %756, 0
  br i1 %758, label %1184, label %759

; <label>:759                                     ; preds = %664
  %760 = and i32 %755, 1023
  br label %761

; <label>:761                                     ; preds = %887, %759
  %762 = phi float [ %888, %887 ], [ 0.000000e+00, %759 ]
  %763 = phi float [ %889, %887 ], [ %679, %759 ]
  %764 = phi float [ %890, %887 ], [ %677, %759 ]
  %765 = phi float [ %891, %887 ], [ 0.000000e+00, %759 ]
  %766 = phi float [ %892, %887 ], [ 0.000000e+00, %759 ]
  %767 = phi float [ %893, %887 ], [ %670, %759 ]
  %768 = phi float [ %894, %887 ], [ %671, %759 ]
  %769 = phi float [ %895, %887 ], [ %672, %759 ]
  %770 = phi float [ %896, %887 ], [ %705, %759 ]
  %771 = phi float [ %897, %887 ], [ %706, %759 ]
  %772 = phi float [ %898, %887 ], [ %707, %759 ]
  %773 = phi float [ %899, %887 ], [ %676, %759 ]
  %774 = phi float [ %900, %887 ], [ %675, %759 ]
  %775 = phi float [ %901, %887 ], [ 0.000000e+00, %759 ]
  %776 = phi float [ %902, %887 ], [ %673, %759 ]
  %777 = phi float [ %903, %887 ], [ %667, %759 ]
  %778 = phi float [ %904, %887 ], [ %668, %759 ]
  %779 = phi float [ %905, %887 ], [ %669, %759 ]
  %780 = phi i32 [ %837, %887 ], [ 0, %759 ]
  %781 = add nuw nsw i32 %780, %757
  %782 = shl i32 %781, 2
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %782, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = shl i32 %784, 8
  %786 = or i32 %785, 48
  %787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = extractvalue %dx.types.ResRet.f32 %787, 1
  %790 = extractvalue %dx.types.ResRet.f32 %787, 2
  %791 = extractvalue %dx.types.ResRet.f32 %787, 3
  %792 = or i32 %785, 64
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = extractvalue %dx.types.ResRet.i32 %793, 1
  %796 = or i32 %785, 80
  %797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.f32 %797, 2
  %799 = extractvalue %dx.types.ResRet.f32 %797, 3
  %800 = or i32 %785, 96
  %801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = extractvalue %dx.types.ResRet.f32 %801, 3
  %806 = or i32 %785, 112
  %807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.f32 %807, 2
  %809 = or i32 %785, 128
  %810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.f32 %810, 0
  %812 = extractvalue %dx.types.ResRet.f32 %810, 1
  %813 = extractvalue %dx.types.ResRet.f32 %810, 2
  %814 = extractvalue %dx.types.ResRet.f32 %810, 3
  %815 = or i32 %785, 144
  %816 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = extractvalue %dx.types.ResRet.f32 %816, 2
  %820 = extractvalue %dx.types.ResRet.f32 %816, 3
  %821 = or i32 %785, 160
  %822 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %821, i32 undef)  ; BufferLoad(srv,index,wot)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = extractvalue %dx.types.ResRet.f32 %822, 1
  %825 = extractvalue %dx.types.ResRet.f32 %822, 2
  %826 = extractvalue %dx.types.ResRet.f32 %822, 3
  %827 = or i32 %785, 192
  %828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %827, i32 undef)  ; BufferLoad(srv,index,wot)
  %829 = extractvalue %dx.types.ResRet.i32 %828, 0
  %830 = or i32 %785, 208
  %831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = or i32 %785, 248
  %834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = add nuw nsw i32 %780, 1
  %838 = bitcast float %791 to i32
  %839 = and i32 %838, 2560
  %840 = icmp eq i32 %839, 0
  %841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.f32 %841, 0
  %843 = extractvalue %dx.types.ResRet.f32 %841, 1
  %844 = extractvalue %dx.types.ResRet.f32 %841, 2
  %845 = extractvalue %dx.types.ResRet.f32 %841, 3
  %846 = call float @dx.op.dot4.f32(i32 56, float %842, float %843, float %844, float %845, float %93, float %94, float %95, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %847 = or i32 %785, 16
  %848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.f32 %848, 0
  %850 = extractvalue %dx.types.ResRet.f32 %848, 1
  %851 = extractvalue %dx.types.ResRet.f32 %848, 2
  %852 = extractvalue %dx.types.ResRet.f32 %848, 3
  %853 = call float @dx.op.dot4.f32(i32 56, float %849, float %850, float %851, float %852, float %93, float %94, float %95, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %854 = or i32 %785, 32
  %855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = extractvalue %dx.types.ResRet.f32 %855, 3
  %860 = call float @dx.op.dot4.f32(i32 56, float %856, float %857, float %858, float %859, float %93, float %94, float %95, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %861 = call float @dx.op.unary.f32(i32 27, float %846)  ; Round_ni(value)
  %862 = call float @dx.op.unary.f32(i32 6, float %861)  ; FAbs(value)
  %863 = call float @dx.op.unary.f32(i32 27, float %853)  ; Round_ni(value)
  %864 = call float @dx.op.unary.f32(i32 6, float %863)  ; FAbs(value)
  %865 = call float @dx.op.unary.f32(i32 6, float %860)  ; FAbs(value)
  %866 = call float @dx.op.unary.f32(i32 27, float %865)  ; Round_ni(value)
  %867 = fadd fast float %864, %862
  %868 = fadd fast float %867, %866
  %869 = fcmp fast oeq float %868, 0.000000e+00
  %870 = call float @dx.op.dot4.f32(i32 56, float %842, float %843, float %844, float %845, float %714, float %715, float %716, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %871 = call float @dx.op.dot4.f32(i32 56, float %849, float %850, float %851, float %852, float %714, float %715, float %716, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %872 = call float @dx.op.dot4.f32(i32 56, float %842, float %843, float %844, float %845, float %717, float %718, float %719, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %873 = call float @dx.op.dot4.f32(i32 56, float %849, float %850, float %851, float %852, float %717, float %718, float %719, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %874 = fsub fast float %870, %846
  %875 = fsub fast float %872, %846
  %876 = fsub fast float %871, %853
  %877 = fsub fast float %873, %853
  %878 = call float @dx.op.dot3.f32(i32 55, float %788, float %789, float %790, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %880 = extractvalue %dx.types.CBufRet.f32 %879, 2
  %881 = fadd fast float %880, %878
  %882 = call float @dx.op.unary.f32(i32 7, float %881)  ; Saturate(value)
  %883 = extractvalue %dx.types.CBufRet.f32 %879, 0
  %884 = fcmp fast ogt float %882, %883
  %885 = and i1 %869, %884
  %886 = and i1 %840, %885
  br i1 %886, label %907, label %887

; <label>:887                                     ; preds = %1170, %988, %907, %761
  %888 = phi float [ %762, %907 ], [ %991, %988 ], [ %991, %1170 ], [ %762, %761 ]
  %889 = phi float [ %763, %907 ], [ %763, %988 ], [ %1145, %1170 ], [ %763, %761 ]
  %890 = phi float [ %764, %907 ], [ %764, %988 ], [ %1143, %1170 ], [ %764, %761 ]
  %891 = phi float [ %765, %907 ], [ %765, %988 ], [ %1115, %1170 ], [ %765, %761 ]
  %892 = phi float [ %766, %907 ], [ %766, %988 ], [ %1113, %1170 ], [ %766, %761 ]
  %893 = phi float [ %767, %907 ], [ %767, %988 ], [ %1180, %1170 ], [ %767, %761 ]
  %894 = phi float [ %768, %907 ], [ %768, %988 ], [ %1181, %1170 ], [ %768, %761 ]
  %895 = phi float [ %769, %907 ], [ %769, %988 ], [ %1182, %1170 ], [ %769, %761 ]
  %896 = phi float [ %770, %907 ], [ %770, %988 ], [ %1094, %1170 ], [ %770, %761 ]
  %897 = phi float [ %771, %907 ], [ %771, %988 ], [ %1095, %1170 ], [ %771, %761 ]
  %898 = phi float [ %772, %907 ], [ %772, %988 ], [ %1096, %1170 ], [ %772, %761 ]
  %899 = phi float [ %773, %907 ], [ %773, %988 ], [ %1123, %1170 ], [ %773, %761 ]
  %900 = phi float [ %774, %907 ], [ %774, %988 ], [ %1120, %1170 ], [ %774, %761 ]
  %901 = phi float [ %775, %907 ], [ %775, %988 ], [ %1117, %1170 ], [ %775, %761 ]
  %902 = phi float [ %776, %907 ], [ %776, %988 ], [ %1111, %1170 ], [ %776, %761 ]
  %903 = phi float [ %777, %907 ], [ %777, %988 ], [ %1106, %1170 ], [ %777, %761 ]
  %904 = phi float [ %778, %907 ], [ %778, %988 ], [ %1107, %1170 ], [ %778, %761 ]
  %905 = phi float [ %779, %907 ], [ %779, %988 ], [ %1108, %1170 ], [ %779, %761 ]
  %906 = icmp eq i32 %837, %760
  br i1 %906, label %1183, label %761

; <label>:907                                     ; preds = %761
  %908 = extractvalue %dx.types.ResRet.f32 %807, 3
  %909 = extractvalue %dx.types.ResRet.f32 %807, 1
  %910 = extractvalue %dx.types.ResRet.f32 %807, 0
  %911 = extractvalue %dx.types.ResRet.f32 %797, 1
  %912 = extractvalue %dx.types.ResRet.f32 %797, 0
  %913 = extractvalue %dx.types.ResRet.i32 %793, 3
  %914 = extractvalue %dx.types.ResRet.i32 %793, 2
  %915 = add i32 %913, 0
  %916 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %915, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %917 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %918 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %916, %dx.types.Handle %917, float %846, float %853, float undef, float undef, i32 0, i32 0, i32 undef, float %874, float %876, float undef, float %875, float %877, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  %920 = fmul fast float %919, %912
  %921 = fadd fast float %920, %911
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  %923 = fmul fast float %846, %802
  %924 = call float @dx.op.tertiary.f32(i32 46, float %803, float %853, float %923)  ; FMad(a,b,c)
  %925 = fadd fast float %924, %910
  %926 = fmul fast float %846, %804
  %927 = call float @dx.op.tertiary.f32(i32 46, float %805, float %853, float %926)  ; FMad(a,b,c)
  %928 = fadd fast float %927, %909
  %929 = fmul fast float %874, %802
  %930 = call float @dx.op.tertiary.f32(i32 46, float %803, float %876, float %929)  ; FMad(a,b,c)
  %931 = fmul fast float %874, %804
  %932 = call float @dx.op.tertiary.f32(i32 46, float %805, float %876, float %931)  ; FMad(a,b,c)
  %933 = fmul fast float %875, %802
  %934 = call float @dx.op.tertiary.f32(i32 46, float %803, float %877, float %933)  ; FMad(a,b,c)
  %935 = fmul fast float %875, %804
  %936 = call float @dx.op.tertiary.f32(i32 46, float %805, float %877, float %935)  ; FMad(a,b,c)
  %937 = add i32 %914, 0
  %938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %937, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %939 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %938, %dx.types.Handle %917, float %925, float %928, float undef, float undef, i32 0, i32 0, i32 undef, float %930, float %932, float undef, float %934, float %936, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %940 = extractvalue %dx.types.ResRet.f32 %939, 0
  %941 = and i32 %838, 1024
  %942 = icmp ne i32 %941, 0
  %943 = fcmp fast ogt float %940, 0x3FE0101020000000
  %944 = uitofp i1 %943 to float
  %945 = select i1 %942, float %944, float %940
  %946 = and i32 %838, 8192
  %947 = icmp ne i32 %946, 0
  %948 = select i1 %947, float %908, float 1.000000e+00
  %949 = fmul fast float %846, 2.000000e+00
  %950 = fadd fast float %949, -1.000000e+00
  %951 = call float @dx.op.unary.f32(i32 6, float %950)  ; FAbs(value)
  %952 = fmul fast float %951, %835
  %953 = fsub fast float %952, %835
  %954 = call float @dx.op.unary.f32(i32 7, float %953)  ; Saturate(value)
  %955 = fmul fast float %853, 2.000000e+00
  %956 = fadd fast float %955, -1.000000e+00
  %957 = call float @dx.op.unary.f32(i32 6, float %956)  ; FAbs(value)
  %958 = fmul fast float %957, %836
  %959 = fsub fast float %958, %836
  %960 = call float @dx.op.unary.f32(i32 7, float %959)  ; Saturate(value)
  %961 = fmul fast float %865, %798
  %962 = fsub fast float %961, %798
  %963 = call float @dx.op.unary.f32(i32 7, float %962)  ; Saturate(value)
  %964 = fmul fast float %922, %948
  %965 = fmul fast float %964, %919
  %966 = fmul fast float %965, %954
  %967 = fmul fast float %966, %945
  %968 = fmul fast float %967, %960
  %969 = fmul fast float %968, %963
  %970 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %971 = extractvalue %dx.types.CBufRet.f32 %970, 1
  %972 = extractvalue %dx.types.CBufRet.f32 %970, 0
  %973 = fsub fast float %882, %972
  %974 = fmul fast float %973, %971
  %975 = call float @dx.op.unary.f32(i32 7, float %974)  ; Saturate(value)
  %976 = fmul fast float %969, %799
  %977 = fadd fast float %969, %799
  %978 = fmul fast float %977, %808
  %979 = fsub fast float %978, %808
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %981 = and i32 %838, 128
  %982 = icmp ne i32 %981, 0
  %983 = select i1 %982, float %980, float %976
  %984 = fmul fast float %983, %975
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 0
  %987 = fcmp fast ugt float %984, %986
  br i1 %987, label %988, label %887

; <label>:988                                     ; preds = %907
  %989 = select i1 %947, float %984, float 0.000000e+00
  %990 = fadd fast float %989, %762
  %991 = call float @dx.op.unary.f32(i32 7, float %990)  ; Saturate(value)
  br i1 %947, label %887, label %992

; <label>:992                                     ; preds = %988
  %993 = and i32 %838, 4
  %994 = and i32 %838, 8
  %995 = add i32 %794, 0
  %996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %995, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %998 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %996, %dx.types.Handle %997, float %925, float %928, float undef, float undef, i32 0, i32 0, i32 undef, float %930, float %932, float undef, float %934, float %936, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1002 = extractvalue %dx.types.ResRet.f32 %998, 3
  %1003 = bitcast float %820 to i32
  %1004 = and i32 %1003, 255
  %1005 = uitofp i32 %1004 to float
  %1006 = lshr i32 %1003, 8
  %1007 = and i32 %1006, 255
  %1008 = uitofp i32 %1007 to float
  %1009 = fmul fast float %1002, %1005
  %1010 = fadd fast float %1009, %1008
  %1011 = fmul fast float %1010, 0x3F70101000000000
  %1012 = add i32 %795, 0
  %1013 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1012, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1014 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1013, %dx.types.Handle %997, float %925, float %928, float undef, float undef, i32 0, i32 0, i32 undef, float %930, float %932, float undef, float %934, float %936, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = extractvalue %dx.types.ResRet.f32 %1014, 3
  %1019 = bitcast float %814 to i32
  %1020 = and i32 %1019, 255
  %1021 = uitofp i32 %1020 to float
  %1022 = lshr i32 %1019, 8
  %1023 = and i32 %1022, 255
  %1024 = uitofp i32 %1023 to float
  %1025 = lshr i32 %1019, 16
  %1026 = and i32 %1025, 255
  %1027 = uitofp i32 %1026 to float
  %1028 = fmul fast float %1027, 0x3F70101000000000
  %1029 = fmul fast float %1015, %1021
  %1030 = fadd fast float %1029, %1024
  %1031 = fmul fast float %1030, 0x3F70101000000000
  %1032 = fadd fast float %1016, -5.000000e-01
  %1033 = fadd fast float %1018, -5.000000e-01
  %1034 = fmul fast float %1032, %1028
  %1035 = fmul fast float %1033, %1028
  %1036 = fadd fast float %1034, 5.000000e-01
  %1037 = fadd fast float %1035, 5.000000e-01
  %1038 = fmul fast float %999, %823
  %1039 = fmul fast float %1000, %824
  %1040 = fmul fast float %1001, %825
  %1041 = fmul fast float %1036, 2.000000e+00
  %1042 = fadd fast float %1041, -1.000000e+00
  %1043 = fmul fast float %1037, 2.000000e+00
  %1044 = fadd fast float %1043, -1.000000e+00
  %1045 = fadd fast float %1042, %1044
  %1046 = fmul fast float %1045, 5.000000e-01
  %1047 = fsub fast float %1042, %1044
  %1048 = fmul fast float %1047, 5.000000e-01
  %1049 = call float @dx.op.unary.f32(i32 6, float %1046)  ; FAbs(value)
  %1050 = fsub fast float 1.000000e+00, %1049
  %1051 = call float @dx.op.unary.f32(i32 6, float %1048)  ; FAbs(value)
  %1052 = fsub fast float %1050, %1051
  %1053 = call float @dx.op.dot3.f32(i32 55, float %1046, float %1048, float %1052, float %1046, float %1048, float %1052)  ; Dot3(ax,ay,az,bx,by,bz)
  %1054 = call float @dx.op.unary.f32(i32 25, float %1053)  ; Rsqrt(value)
  %1055 = fmul fast float %1046, %1054
  %1056 = fmul fast float %1048, %1054
  %1057 = fmul fast float %1054, %1052
  %1058 = fmul fast float %1057, %788
  %1059 = fmul fast float %1057, %789
  %1060 = fmul fast float %1057, %790
  %1061 = fmul fast float %1055, %811
  %1062 = fmul fast float %1055, %812
  %1063 = fmul fast float %1055, %813
  %1064 = fadd fast float %1061, %1058
  %1065 = fadd fast float %1062, %1059
  %1066 = fadd fast float %1063, %1060
  %1067 = fmul fast float %1056, %817
  %1068 = fmul fast float %1056, %818
  %1069 = fmul fast float %1056, %819
  %1070 = fadd fast float %1064, %1067
  %1071 = fadd fast float %1065, %1068
  %1072 = fadd fast float %1066, %1069
  %1073 = call float @dx.op.dot3.f32(i32 55, float %1070, float %1071, float %1072, float %1070, float %1071, float %1072)  ; Dot3(ax,ay,az,bx,by,bz)
  %1074 = call float @dx.op.unary.f32(i32 25, float %1073)  ; Rsqrt(value)
  %1075 = fmul fast float %1070, %1074
  %1076 = fmul fast float %1071, %1074
  %1077 = fmul fast float %1072, %1074
  %1078 = icmp ne i32 %994, 0
  %1079 = select i1 %1078, float 1.000000e+00, float 0.000000e+00
  %1080 = fmul fast float %984, %1079
  %1081 = and i32 %838, 1
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1083, label %1087

; <label>:1083                                    ; preds = %992
  %1084 = fsub fast float %1075, %770
  %1085 = fsub fast float %1076, %771
  %1086 = fsub fast float %1077, %772
  br label %1087

; <label>:1087                                    ; preds = %1083, %992
  %1088 = phi float [ %1084, %1083 ], [ %1075, %992 ]
  %1089 = phi float [ %1085, %1083 ], [ %1076, %992 ]
  %1090 = phi float [ %1086, %1083 ], [ %1077, %992 ]
  %1091 = fmul float %1090, %1080
  %1092 = fmul float %1089, %1080
  %1093 = fmul float %1088, %1080
  %1094 = fadd fast float %1093, %770
  %1095 = fadd fast float %1092, %771
  %1096 = fadd fast float %1091, %772
  %1097 = icmp ne i32 %993, 0
  %1098 = select i1 %1097, float 1.000000e+00, float 0.000000e+00
  %1099 = fmul fast float %984, %1098
  %1100 = fsub fast float %1038, %777
  %1101 = fsub fast float %1039, %778
  %1102 = fsub fast float %1040, %779
  %1103 = fmul fast float %1100, %1099
  %1104 = fmul fast float %1101, %1099
  %1105 = fmul fast float %1102, %1099
  %1106 = fadd fast float %1103, %777
  %1107 = fadd fast float %1104, %778
  %1108 = fadd fast float %1105, %779
  %1109 = fsub fast float %1011, %776
  %1110 = fmul fast float %1109, %1099
  %1111 = fadd fast float %1110, %776
  %1112 = fmul fast float %1099, %766
  %1113 = fsub fast float %766, %1112
  %1114 = fmul fast float %1099, %765
  %1115 = fsub fast float %765, %1114
  %1116 = fadd fast float %984, %775
  %1117 = call float @dx.op.unary.f32(i32 7, float %1116)  ; Saturate(value)
  %1118 = fsub fast float %1031, %774
  %1119 = fmul fast float %1118, %1080
  %1120 = fadd fast float %1119, %774
  %1121 = fsub fast float %1017, %773
  %1122 = fmul fast float %1121, %1080
  %1123 = fadd fast float %1122, %773
  %1124 = call float @dx.op.dot3.f32(i32 55, float %1038, float %1039, float %1040, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1126 = extractvalue %dx.types.CBufRet.f32 %1125, 0
  %1127 = extractvalue %dx.types.CBufRet.f32 %1125, 1
  %1128 = fmul fast float %1127, %1124
  %1129 = fadd fast float %1128, %1126
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  %1131 = bitcast float %826 to i32
  %1132 = and i32 %1131, 65535
  %1133 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1132)  ; LegacyF16ToF32(value)
  %1134 = lshr i32 %1131, 16
  %1135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1134)  ; LegacyF16ToF32(value)
  %1136 = fcmp fast oge float %1133, 0.000000e+00
  %1137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1138 = extractvalue %dx.types.CBufRet.f32 %1137, 0
  %1139 = select i1 %1136, float %1133, float %1138
  %1140 = fadd fast float %1139, %1135
  %1141 = fsub fast float %1130, %764
  %1142 = fmul fast float %1141, %984
  %1143 = fadd fast float %1142, %764
  %1144 = fmul fast float %1140, %984
  %1145 = call float @dx.op.binary.f32(i32 35, float %763, float %1144)  ; FMax(a,b)
  %1146 = and i32 %838, 16
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1170, label %1148

; <label>:1148                                    ; preds = %1087
  %1149 = bitcast float %832 to i32
  %1150 = add i32 %829, 0
  %1151 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1150, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1151, %dx.types.Handle %997, float %925, float %928, float undef, float undef, i32 0, i32 0, i32 undef, float %930, float %932, float undef, float %934, float %936, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = and i32 %1149, 65535
  %1157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1156)  ; LegacyF16ToF32(value)
  %1158 = fmul fast float %1153, %823
  %1159 = fmul fast float %1154, %824
  %1160 = fmul fast float %1155, %825
  %1161 = and i32 %838, 16384
  %1162 = icmp ne i32 %1161, 0
  %1163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1164 = extractvalue %dx.types.CBufRet.f32 %1163, 0
  %1165 = select i1 %1162, float %1164, float 1.000000e+00
  %1166 = fmul fast float %1165, %1157
  %1167 = fmul fast float %1158, %1166
  %1168 = fmul fast float %1159, %1166
  %1169 = fmul fast float %1160, %1166
  br label %1170

; <label>:1170                                    ; preds = %1148, %1087
  %1171 = phi float [ %1167, %1148 ], [ 0.000000e+00, %1087 ]
  %1172 = phi float [ %1168, %1148 ], [ 0.000000e+00, %1087 ]
  %1173 = phi float [ %1169, %1148 ], [ 0.000000e+00, %1087 ]
  %1174 = fsub fast float %1171, %767
  %1175 = fsub fast float %1172, %768
  %1176 = fsub fast float %1173, %769
  %1177 = fmul fast float %1174, %984
  %1178 = fmul fast float %1175, %984
  %1179 = fmul fast float %1176, %984
  %1180 = fadd fast float %1177, %767
  %1181 = fadd fast float %1178, %768
  %1182 = fadd fast float %1179, %769
  br label %887

; <label>:1183                                    ; preds = %887
  br label %1184

; <label>:1184                                    ; preds = %1183, %664
  %1185 = phi float [ 0.000000e+00, %664 ], [ %888, %1183 ]
  %1186 = phi float [ %679, %664 ], [ %889, %1183 ]
  %1187 = phi float [ %677, %664 ], [ %890, %1183 ]
  %1188 = phi float [ 0.000000e+00, %664 ], [ %891, %1183 ]
  %1189 = phi float [ 0.000000e+00, %664 ], [ %892, %1183 ]
  %1190 = phi float [ %670, %664 ], [ %893, %1183 ]
  %1191 = phi float [ %671, %664 ], [ %894, %1183 ]
  %1192 = phi float [ %672, %664 ], [ %895, %1183 ]
  %1193 = phi float [ %705, %664 ], [ %896, %1183 ]
  %1194 = phi float [ %706, %664 ], [ %897, %1183 ]
  %1195 = phi float [ %707, %664 ], [ %898, %1183 ]
  %1196 = phi float [ %676, %664 ], [ %899, %1183 ]
  %1197 = phi float [ %675, %664 ], [ %900, %1183 ]
  %1198 = phi float [ 0.000000e+00, %664 ], [ %901, %1183 ]
  %1199 = phi float [ %673, %664 ], [ %902, %1183 ]
  %1200 = phi float [ %667, %664 ], [ %903, %1183 ]
  %1201 = phi float [ %668, %664 ], [ %904, %1183 ]
  %1202 = phi float [ %669, %664 ], [ %905, %1183 ]
  %1203 = call float @dx.op.dot3.f32(i32 55, float %1193, float %1194, float %1195, float %1193, float %1194, float %1195)  ; Dot3(ax,ay,az,bx,by,bz)
  %1204 = call float @dx.op.unary.f32(i32 25, float %1203)  ; Rsqrt(value)
  %1205 = fmul fast float %1204, %1193
  %1206 = fmul fast float %1204, %1194
  %1207 = fmul fast float %1204, %1195
  %1208 = fadd fast float %1198, %674
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  %1210 = call float @dx.op.dot3.f32(i32 55, float %1205, float %1206, float %1207, float %1205, float %1206, float %1207)  ; Dot3(ax,ay,az,bx,by,bz)
  %1211 = call float @dx.op.unary.f32(i32 25, float %1210)  ; Rsqrt(value)
  %1212 = fmul fast float %1211, %1205
  %1213 = fmul fast float %1211, %1206
  %1214 = fmul fast float %1211, %1207
  %1215 = fadd fast float %1199, 0xBFB99999A0000000
  %1216 = call float @dx.op.unary.f32(i32 7, float %1215)  ; Saturate(value)
  %1217 = fmul fast float %1216, 0x3FF1C71C80000000
  %1218 = call float @dx.op.binary.f32(i32 36, float %1199, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1219 = fsub fast float 1.000000e+00, %1217
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = fmul fast float %1220, %1200
  %1222 = fmul fast float %1220, %1201
  %1223 = fmul fast float %1220, %1202
  %1224 = call float @dx.op.unary.f32(i32 7, float %1221)  ; Saturate(value)
  %1225 = call float @dx.op.unary.f32(i32 7, float %1222)  ; Saturate(value)
  %1226 = call float @dx.op.unary.f32(i32 7, float %1223)  ; Saturate(value)
  %1227 = fmul fast float %1217, %1200
  %1228 = fmul fast float %1217, %1201
  %1229 = fmul fast float %1217, %1202
  %1230 = fadd fast float %1227, %1218
  %1231 = fadd fast float %1228, %1218
  %1232 = fadd fast float %1229, %1218
  %1233 = call float @dx.op.unary.f32(i32 7, float %1230)  ; Saturate(value)
  %1234 = call float @dx.op.unary.f32(i32 7, float %1231)  ; Saturate(value)
  %1235 = call float @dx.op.unary.f32(i32 7, float %1232)  ; Saturate(value)
  %1236 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.i32 %1237, 3
  %1239 = and i32 %1238, 8
  %1240 = icmp ne i32 %1239, 0
  %1241 = call float @dx.op.binary.f32(i32 35, float %1224, float %1200)  ; FMax(a,b)
  %1242 = call float @dx.op.binary.f32(i32 35, float %1225, float %1200)  ; FMax(a,b)
  %1243 = call float @dx.op.binary.f32(i32 35, float %1226, float %1200)  ; FMax(a,b)
  %1244 = call float @dx.op.dot3.f32(i32 55, float %1224, float %1225, float %1226, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1245 = select i1 %163, float %1200, float %1224
  %1246 = select i1 %163, float %1244, float %1225
  %1247 = select i1 %163, float 1.000000e+00, float %1226
  %1248 = select i1 %1240, float %1241, float %1245
  %1249 = select i1 %1240, float %1242, float %1246
  %1250 = select i1 %1240, float %1243, float %1247
  %1251 = and i32 %139, 3
  %1252 = select i1 %133, i32 %1251, i32 0
  %1253 = icmp eq i32 %1252, 1
  br i1 %1253, label %1254, label %1330

; <label>:1254                                    ; preds = %1184
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = fadd fast float %1256, %93
  %1259 = fadd fast float %1257, %94
  %1260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1261 = extractvalue %dx.types.CBufRet.f32 %1260, 0
  %1262 = extractvalue %dx.types.CBufRet.f32 %1260, 1
  %1263 = fsub fast float %1258, %1261
  %1264 = fsub fast float %1259, %1262
  %1265 = fmul fast float %1263, %1263
  %1266 = fmul fast float %1264, %1264
  %1267 = fadd fast float %1265, %1266
  %1268 = call float @dx.op.unary.f32(i32 24, float %1267)  ; Sqrt(value)
  %1269 = extractvalue %dx.types.CBufRet.f32 %1260, 2
  %1270 = fcmp fast olt float %1268, %1269
  br i1 %1270, label %1271, label %1324

; <label>:1271                                    ; preds = %1254
  %1272 = extractvalue %dx.types.CBufRet.f32 %1255, 2
  %1273 = fadd fast float %1272, %95
  %1274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1275 = extractvalue %dx.types.CBufRet.f32 %1274, 0
  %1276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1277 = extractvalue %dx.types.CBufRet.f32 %1276, 0
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.CBufRet.f32 %1274, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1276, 1
  %1282 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1283 = extractvalue %dx.types.CBufRet.f32 %1274, 3
  %1284 = extractvalue %dx.types.CBufRet.f32 %1276, 3
  %1285 = extractvalue %dx.types.CBufRet.f32 %1278, 3
  %1286 = fadd fast float %1283, %1258
  %1287 = fadd fast float %1284, %1259
  %1288 = fadd fast float %1273, %1285
  %1289 = fmul fast float %1286, %1275
  %1290 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1277, float %1289)  ; FMad(a,b,c)
  %1291 = call float @dx.op.tertiary.f32(i32 46, float %1288, float %1279, float %1290)  ; FMad(a,b,c)
  %1292 = fmul fast float %1286, %1280
  %1293 = call float @dx.op.tertiary.f32(i32 46, float %1287, float %1281, float %1292)  ; FMad(a,b,c)
  %1294 = call float @dx.op.tertiary.f32(i32 46, float %1288, float %1282, float %1293)  ; FMad(a,b,c)
  %1295 = fsub fast float %1291, %1283
  %1296 = fsub fast float %1294, %1284
  %1297 = fsub fast float %1295, %1261
  %1298 = fadd fast float %1297, %1269
  %1299 = fsub fast float %1296, %1262
  %1300 = fadd fast float %1299, %1269
  %1301 = extractvalue %dx.types.CBufRet.f32 %1260, 3
  %1302 = fmul fast float %1298, %1301
  %1303 = fmul fast float %1300, %1301
  %1304 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1305 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1306 = fsub fast float 1.000000e+00, %1304
  %1307 = fsub fast float 1.000000e+00, %1305
  %1308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %22, float %1306, float %1307, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = fcmp fast ugt float %1309, 0.000000e+00
  br i1 %1310, label %1311, label %1324

; <label>:1311                                    ; preds = %1271
  %1312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1313 = extractvalue %dx.types.CBufRet.f32 %1312, 2
  %1314 = fmul fast float %1313, %1309
  %1315 = extractvalue %dx.types.CBufRet.f32 %1312, 3
  %1316 = fadd fast float %1315, %1314
  %1317 = extractvalue %dx.types.CBufRet.f32 %1278, 2
  %1318 = fadd fast float %1316, %1285
  %1319 = fmul fast float %1291, %1279
  %1320 = call float @dx.op.tertiary.f32(i32 46, float %1294, float %1282, float %1319)  ; FMad(a,b,c)
  %1321 = call float @dx.op.tertiary.f32(i32 46, float %1318, float %1317, float %1320)  ; FMad(a,b,c)
  %1322 = fsub fast float %1321, %1285
  %1323 = fsub fast float %1322, %1272
  br label %1324

; <label>:1324                                    ; preds = %1311, %1271, %1254
  %1325 = phi i1 [ true, %1311 ], [ false, %1271 ], [ false, %1254 ]
  %1326 = phi float [ %1323, %1311 ], [ -1.310720e+05, %1271 ], [ -1.310720e+05, %1254 ]
  %1327 = fsub fast float %1326, %95
  %1328 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1329 = select i1 %1325, float %1328, float 1.000000e+00
  br label %1330

; <label>:1330                                    ; preds = %1324, %1184
  %1331 = phi float [ %1329, %1324 ], [ 0.000000e+00, %1184 ]
  %1332 = icmp eq i32 %1252, 3
  %1333 = select i1 %1332, float 1.000000e+00, float %1331
  %1334 = call float @dx.op.binary.f32(i32 35, float %1185, float %1333)  ; FMax(a,b)
  %1335 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1336 = fcmp fast une float %1335, 0.000000e+00
  %1337 = call float @dx.op.dot3.f32(i32 55, float %93, float %94, float %95, float %93, float %94, float %95)  ; Dot3(ax,ay,az,bx,by,bz)
  %1338 = call float @dx.op.unary.f32(i32 25, float %1337)  ; Rsqrt(value)
  br i1 %1336, label %1346, label %1339

; <label>:1339                                    ; preds = %1330
  %1340 = fmul fast float %1338, %93
  %1341 = fmul fast float %1338, %94
  %1342 = fmul fast float %1338, %95
  %1343 = fsub fast float -0.000000e+00, %1340
  %1344 = fsub fast float -0.000000e+00, %1341
  %1345 = fsub fast float -0.000000e+00, %1342
  br label %1514

; <label>:1346                                    ; preds = %1330
  %1347 = fmul fast float %93, %1338
  %1348 = fsub fast float -0.000000e+00, %1347
  %1349 = fmul fast float %94, %1338
  %1350 = fsub fast float -0.000000e+00, %1349
  %1351 = fmul fast float %95, %1338
  %1352 = fsub fast float -0.000000e+00, %1351
  %1353 = call float @dx.op.dot3.f32(i32 55, float %1348, float %1350, float %1352, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %1354 = fmul fast float %1335, 2.500000e+00
  %1355 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1356 = fmul fast float %1335, 0x4013FFFFE0000000
  %1357 = fadd fast float %1356, 0xBFFFFFFFE0000000
  %1358 = call float @dx.op.unary.f32(i32 7, float %1357)  ; Saturate(value)
  %1359 = fmul fast float %1335, 0x4004000020000000
  %1360 = fadd fast float %1359, 0xBFF8000040000000
  %1361 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1362 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1363 = fmul fast float %1215, 1.000000e+01
  %1364 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1365 = fmul fast float %1364, 2.000000e+00
  %1366 = fsub fast float 3.000000e+00, %1365
  %1367 = fmul fast float %1364, %1364
  %1368 = fmul fast float %1367, %1366
  %1369 = fsub fast float 1.000000e+00, %1368
  %1370 = fsub fast float 0x3FE3333340000000, %1236
  %1371 = fmul fast float %1370, 0x400AAAAAA0000000
  %1372 = call float @dx.op.unary.f32(i32 7, float %1371)  ; Saturate(value)
  %1373 = fmul fast float %1369, %1372
  %1374 = fmul fast float %1248, 0x3FEA2B8620000000
  %1375 = fmul fast float %1249, 0x3FEA2B8620000000
  %1376 = fmul fast float %1250, 0x3FEA2B8620000000
  %1377 = fadd fast float %1374, 0x3FC81DFBA0000000
  %1378 = fmul fast float %1377, %1248
  %1379 = fadd fast float %1378, 0x3F910E6020000000
  %1380 = fadd fast float %1375, 0x3FC81DFBA0000000
  %1381 = fmul fast float %1380, %1249
  %1382 = fadd fast float %1381, 0x3F910E6020000000
  %1383 = fadd fast float %1376, 0x3FC81DFBA0000000
  %1384 = fmul fast float %1383, %1250
  %1385 = fadd fast float %1384, 0x3F910E6020000000
  %1386 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1387 = call float @dx.op.unary.f32(i32 7, float %1382)  ; Saturate(value)
  %1388 = call float @dx.op.unary.f32(i32 7, float %1385)  ; Saturate(value)
  %1389 = fsub fast float %1386, %1248
  %1390 = fsub fast float %1387, %1249
  %1391 = fsub fast float %1388, %1250
  %1392 = fmul fast float %1389, %1362
  %1393 = fmul fast float %1392, %1373
  %1394 = fmul fast float %1390, %1362
  %1395 = fmul fast float %1394, %1373
  %1396 = fmul fast float %1391, %1362
  %1397 = fmul fast float %1396, %1373
  %1398 = fadd fast float %1393, %1248
  %1399 = fadd fast float %1395, %1249
  %1400 = fadd fast float %1397, %1250
  %1401 = fmul fast float %1196, %1196
  %1402 = fmul fast float %1401, %1401
  %1403 = fadd fast float %1358, 1.000000e+00
  %1404 = fsub fast float %1403, %1373
  %1405 = call float @dx.op.unary.f32(i32 7, float %1404)  ; Saturate(value)
  %1406 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1407 = call float @dx.op.unary.f32(i32 7, float %1406)  ; Saturate(value)
  %1408 = fsub fast float 1.000000e+00, %1402
  %1409 = call float @dx.op.binary.f32(i32 36, float %1405, float %1408)  ; FMin(a,b)
  %1410 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1411 = call float @dx.op.binary.f32(i32 35, float %1409, float %1410)  ; FMax(a,b)
  %1412 = fadd fast float %1407, 0xBFE4CCCCC0000000
  %1413 = fmul fast float %1412, 0x4006DB6DA0000000
  %1414 = call float @dx.op.unary.f32(i32 7, float %1413)  ; Saturate(value)
  %1415 = fmul fast float %1414, 2.000000e+00
  %1416 = fsub fast float 3.000000e+00, %1415
  %1417 = bitcast float %1233 to i32
  %1418 = ashr i32 %1417, 1
  %1419 = add nsw i32 %1418, 532487669
  %1420 = bitcast i32 %1419 to float
  %1421 = fsub fast float 1.000000e+00, %1420
  %1422 = bitcast float %1421 to i32
  %1423 = sub nsw i32 2129859010, %1422
  %1424 = bitcast i32 %1423 to float
  %1425 = fmul fast float %1424, 2.000000e+00
  %1426 = bitcast float %1234 to i32
  %1427 = ashr i32 %1426, 1
  %1428 = add nsw i32 %1427, 532487669
  %1429 = bitcast i32 %1428 to float
  %1430 = fsub fast float 1.000000e+00, %1429
  %1431 = bitcast float %1430 to i32
  %1432 = sub nsw i32 2129859010, %1431
  %1433 = bitcast i32 %1432 to float
  %1434 = fmul fast float %1433, 2.000000e+00
  %1435 = bitcast float %1235 to i32
  %1436 = ashr i32 %1435, 1
  %1437 = add nsw i32 %1436, 532487669
  %1438 = bitcast i32 %1437 to float
  %1439 = fsub fast float 1.000000e+00, %1438
  %1440 = bitcast float %1439 to i32
  %1441 = sub nsw i32 2129859010, %1440
  %1442 = bitcast i32 %1441 to float
  %1443 = fmul fast float %1442, 2.000000e+00
  %1444 = fsub fast float 0x4002A9FBE0000000, %1425
  %1445 = fadd fast float %1425, 0x3FD54FDF00000000
  %1446 = bitcast float %1445 to i32
  %1447 = sub nsw i32 2129859010, %1446
  %1448 = bitcast i32 %1447 to float
  %1449 = fmul fast float %1448, %1444
  %1450 = fmul fast float %1449, %1449
  %1451 = fsub fast float 0x4002A9FBE0000000, %1434
  %1452 = fadd fast float %1434, 0x3FD54FDF00000000
  %1453 = bitcast float %1452 to i32
  %1454 = sub nsw i32 2129859010, %1453
  %1455 = bitcast i32 %1454 to float
  %1456 = fmul fast float %1455, %1451
  %1457 = fmul fast float %1456, %1456
  %1458 = fsub fast float 0x4002A9FBE0000000, %1443
  %1459 = fadd fast float %1443, 0x3FD54FDF00000000
  %1460 = bitcast float %1459 to i32
  %1461 = sub nsw i32 2129859010, %1460
  %1462 = bitcast i32 %1461 to float
  %1463 = fmul fast float %1462, %1458
  %1464 = fmul fast float %1463, %1463
  %1465 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1450)  ; FMax(a,b)
  %1466 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1457)  ; FMax(a,b)
  %1467 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1464)  ; FMax(a,b)
  %1468 = fsub fast float 1.000000e+00, %1353
  %1469 = fadd fast float %1468, %1369
  %1470 = call float @dx.op.unary.f32(i32 7, float %1469)  ; Saturate(value)
  %1471 = fsub fast float 1.000000e+00, %1333
  %1472 = fmul fast float %1411, %1471
  %1473 = fmul fast float %1414, %1414
  %1474 = fmul fast float %1473, %1472
  %1475 = fmul fast float %1474, %1416
  %1476 = fmul fast float %1471, 0xBFE99999A0000000
  %1477 = fmul fast float %1476, %1362
  %1478 = fmul fast float %1477, %1373
  %1479 = fadd fast float %1478, 1.000000e+00
  %1480 = fadd fast float %1236, -1.000000e+00
  %1481 = fmul fast float %1479, %1480
  %1482 = fadd fast float %1481, 1.000000e+00
  %1483 = fsub fast float %1465, %1233
  %1484 = fsub fast float %1466, %1234
  %1485 = fsub fast float %1467, %1235
  %1486 = fmul fast float %1475, %1483
  %1487 = fmul fast float %1475, %1484
  %1488 = fmul fast float %1475, %1485
  %1489 = fadd fast float %1486, %1233
  %1490 = fadd fast float %1487, %1234
  %1491 = fadd fast float %1488, %1235
  %1492 = fsub fast float %31, %1212
  %1493 = fsub fast float %32, %1213
  %1494 = fsub fast float %33, %1214
  %1495 = fmul fast float %1475, %1492
  %1496 = fmul fast float %1475, %1493
  %1497 = fmul fast float %1475, %1494
  %1498 = fadd fast float %1495, %1212
  %1499 = fadd fast float %1496, %1213
  %1500 = fadd fast float %1497, %1214
  %1501 = fmul fast float %1475, %1470
  %1502 = call float @dx.op.unary.f32(i32 7, float %1482)  ; Saturate(value)
  %1503 = fsub fast float 1.000000e+00, %1502
  %1504 = fmul fast float %1501, %1503
  %1505 = fadd fast float %1504, %1502
  %1506 = fsub fast float 1.000000e+00, %1196
  %1507 = fmul fast float %1475, %1506
  %1508 = fadd fast float %1507, %1196
  %1509 = call float @dx.op.dot3.f32(i32 55, float %1498, float %1499, float %1500, float %1498, float %1499, float %1500)  ; Dot3(ax,ay,az,bx,by,bz)
  %1510 = call float @dx.op.unary.f32(i32 25, float %1509)  ; Rsqrt(value)
  %1511 = fmul fast float %1498, %1510
  %1512 = fmul fast float %1499, %1510
  %1513 = fmul fast float %1500, %1510
  br label %1514

; <label>:1514                                    ; preds = %1346, %1339
  %1515 = phi float [ %1345, %1339 ], [ %1352, %1346 ]
  %1516 = phi float [ %1344, %1339 ], [ %1350, %1346 ]
  %1517 = phi float [ %1343, %1339 ], [ %1348, %1346 ]
  %1518 = phi float [ %1342, %1339 ], [ %1351, %1346 ]
  %1519 = phi float [ %1341, %1339 ], [ %1349, %1346 ]
  %1520 = phi float [ %1340, %1339 ], [ %1347, %1346 ]
  %1521 = phi float [ %1248, %1339 ], [ %1398, %1346 ]
  %1522 = phi float [ %1249, %1339 ], [ %1399, %1346 ]
  %1523 = phi float [ %1250, %1339 ], [ %1400, %1346 ]
  %1524 = phi float [ %1233, %1339 ], [ %1489, %1346 ]
  %1525 = phi float [ %1234, %1339 ], [ %1490, %1346 ]
  %1526 = phi float [ %1235, %1339 ], [ %1491, %1346 ]
  %1527 = phi float [ %1212, %1339 ], [ %1511, %1346 ]
  %1528 = phi float [ %1213, %1339 ], [ %1512, %1346 ]
  %1529 = phi float [ %1214, %1339 ], [ %1513, %1346 ]
  %1530 = phi float [ %1236, %1339 ], [ %1505, %1346 ]
  %1531 = phi float [ %1196, %1339 ], [ %1508, %1346 ]
  %1532 = select i1 %163, float 0.000000e+00, float %1526
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1528, float %1529, float %1517, float %1516, float %1515)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = call float @dx.op.unary.f32(i32 7, float %1533)  ; Saturate(value)
  %1535 = call float @dx.op.dot3.f32(i32 55, float %1520, float %1519, float %1518, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %1536 = fmul fast float %1535, 2.000000e+00
  %1537 = fmul fast float %1536, %1527
  %1538 = fmul fast float %1536, %1528
  %1539 = fmul fast float %1536, %1529
  %1540 = fsub fast float %1520, %1537
  %1541 = fsub fast float %1519, %1538
  %1542 = fsub fast float %1518, %1539
  %1543 = call float @dx.op.binary.f32(i32 36, float %1531, float 1.000000e+00)  ; FMin(a,b)
  %1544 = fsub fast float 1.000000e+00, %1531
  %1545 = bitcast float %1544 to i32
  %1546 = sub nsw i32 2129859010, %1545
  %1547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1548 = extractvalue %dx.types.CBufRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.CBufRet.f32 %1547, 1
  %1550 = fadd fast float %1548, %93
  %1551 = fadd fast float %1549, %94
  %1552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %25, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.i32 %1552, 0
  %1554 = icmp eq i32 %1553, 1
  br i1 %1554, label %1555, label %1590

; <label>:1555                                    ; preds = %1514
  %1556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1557 = extractvalue %dx.types.CBufRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.CBufRet.f32 %1556, 1
  %1559 = fsub fast float %1550, %1557
  %1560 = fsub fast float %1551, %1558
  %1561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.CBufRet.f32 %1561, 1
  %1564 = fmul fast float %1559, %1562
  %1565 = fmul fast float %1560, %1563
  %1566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %22, float %1564, float %1565, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = fcmp fast ogt float %1567, 0.000000e+00
  %1569 = extractvalue %dx.types.CBufRet.i32 %1552, 3
  %1570 = icmp ne i32 %1569, 0
  %1571 = and i1 %1568, %1570
  br i1 %1571, label %1572, label %1590, !dx.controlflow.hints !59

; <label>:1572                                    ; preds = %1555
  %1573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1574 = extractvalue %dx.types.CBufRet.f32 %1573, 0
  %1575 = extractvalue %dx.types.CBufRet.f32 %1573, 1
  %1576 = fsub fast float %1550, %1574
  %1577 = fsub fast float %1551, %1575
  %1578 = fmul fast float %1576, %1576
  %1579 = fmul fast float %1577, %1577
  %1580 = fadd fast float %1578, %1579
  %1581 = uitofp i32 %1569 to float
  %1582 = fmul fast float %1581, %1581
  %1583 = fcmp fast ogt float %1580, %1582
  br i1 %1583, label %1590, label %1584

; <label>:1584                                    ; preds = %1572
  %1585 = call float @dx.op.unary.f32(i32 24, float %1580)  ; Sqrt(value)
  %1586 = fsub fast float %1581, %1585
  %1587 = fmul fast float %1586, 0x3F75555560000000
  %1588 = call float @dx.op.unary.f32(i32 7, float %1587)  ; Saturate(value)
  %1589 = call float @dx.op.binary.f32(i32 36, float %1588, float %1567)  ; FMin(a,b)
  br label %1590

; <label>:1590                                    ; preds = %1584, %1572, %1555, %1514
  %1591 = phi float [ 1.000000e+00, %1514 ], [ %1589, %1584 ], [ %1567, %1555 ], [ 0.000000e+00, %1572 ]
  %1592 = fcmp fast ogt float %1591, 0.000000e+00
  br i1 %1592, label %1593, label %1691, !dx.controlflow.hints !60

; <label>:1593                                    ; preds = %1590
  %1594 = fadd fast float %124, 5.000000e-01
  %1595 = call float @dx.op.unary.f32(i32 27, float %1594)  ; Round_ni(value)
  %1596 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %22, float %122, float %123, float %1595, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1597 = extractvalue %dx.types.ResRet.f32 %1596, 0
  %1598 = extractvalue %dx.types.ResRet.f32 %1596, 1
  %1599 = extractvalue %dx.types.ResRet.f32 %1596, 2
  %1600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1601 = extractvalue %dx.types.CBufRet.f32 %1600, 3
  %1602 = fmul fast float %1601, %1597
  %1603 = fmul fast float %1601, %1598
  %1604 = fmul fast float %1601, %1599
  %1605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %22, float %122, float %123, float %1595, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %22, float %122, float %123, float %1595, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1608 = extractvalue %dx.types.ResRet.f32 %1607, 0
  %1609 = extractvalue %dx.types.ResRet.f32 %1607, 1
  %1610 = fmul fast float %1608, 2.000000e+00
  %1611 = fmul fast float %1609, 2.000000e+00
  %1612 = fadd fast float %1610, -1.000000e+00
  %1613 = fadd fast float %1611, -1.000000e+00
  %1614 = fadd fast float %1612, %1613
  %1615 = fmul fast float %1614, 5.000000e-01
  %1616 = fsub fast float %1612, %1613
  %1617 = fmul fast float %1616, 5.000000e-01
  %1618 = call float @dx.op.unary.f32(i32 6, float %1615)  ; FAbs(value)
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = call float @dx.op.unary.f32(i32 6, float %1617)  ; FAbs(value)
  %1621 = fsub fast float %1619, %1620
  %1622 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1621)  ; FMax(a,b)
  %1623 = call float @dx.op.dot3.f32(i32 55, float %1615, float %1617, float %1622, float %1615, float %1617, float %1622)  ; Dot3(ax,ay,az,bx,by,bz)
  %1624 = bitcast float %1623 to i32
  %1625 = ashr i32 %1624, 1
  %1626 = sub nsw i32 1597250115, %1625
  %1627 = bitcast i32 %1626 to float
  %1628 = fmul fast float %1627, %1615
  %1629 = fmul fast float %1627, %1617
  %1630 = fmul fast float %1627, %1622
  %1631 = fsub fast float 1.000000e+00, %1606
  %1632 = fdiv fast float %1631, %1630
  %1633 = fmul fast float %1630, %31
  %1634 = fmul fast float %1630, %32
  %1635 = fmul fast float %1630, %33
  %1636 = fmul fast float %1628, %27
  %1637 = fmul fast float %1628, %28
  %1638 = fmul fast float %1628, %29
  %1639 = fadd fast float %1633, %1636
  %1640 = fadd fast float %1634, %1637
  %1641 = fadd fast float %1635, %1638
  %1642 = fmul fast float %1629, %57
  %1643 = fmul fast float %1629, %58
  %1644 = fmul fast float %1629, %59
  %1645 = fadd fast float %1639, %1642
  %1646 = fadd fast float %1640, %1643
  %1647 = fadd fast float %1641, %1644
  %1648 = call float @dx.op.dot3.f32(i32 55, float %1645, float %1646, float %1647, float %1645, float %1646, float %1647)  ; Dot3(ax,ay,az,bx,by,bz)
  %1649 = call float @dx.op.unary.f32(i32 25, float %1648)  ; Rsqrt(value)
  %1650 = fmul fast float %1645, %1649
  %1651 = fmul fast float %1646, %1649
  %1652 = fmul fast float %1647, %1649
  %1653 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1528, float %1529, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %1654 = call float @dx.op.unary.f32(i32 7, float %1653)  ; Saturate(value)
  %1655 = fmul fast float %1654, 5.000000e-01
  %1656 = fadd fast float %1655, 5.000000e-01
  %1657 = fmul fast float %1656, %1606
  %1658 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1528, float %1529, float %1650, float %1651, float %1652)  ; Dot3(ax,ay,az,bx,by,bz)
  %1659 = call float @dx.op.unary.f32(i32 7, float %1658)  ; Saturate(value)
  %1660 = fmul fast float %1659, %1632
  %1661 = fadd fast float %1657, %1660
  %1662 = fsub fast float 5.000000e-01, %1655
  %1663 = fmul fast float %1662, %1521
  %1664 = fmul fast float %1662, %1522
  %1665 = fmul fast float %1662, %1523
  %1666 = fadd fast float %1661, %1663
  %1667 = fmul fast float %1666, %1602
  %1668 = fadd fast float %1661, %1664
  %1669 = fmul fast float %1668, %1603
  %1670 = fadd fast float %1661, %1665
  %1671 = fmul fast float %1670, %1604
  %1672 = call float @dx.op.dot3.f32(i32 55, float %1540, float %1541, float %1542, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = fmul fast float %1673, 5.000000e-01
  %1675 = fadd fast float %1674, 5.000000e-01
  %1676 = fmul fast float %1675, %1606
  %1677 = call float @dx.op.dot3.f32(i32 55, float %1540, float %1541, float %1542, float %1650, float %1651, float %1652)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = fmul fast float %1678, %1632
  %1680 = fadd fast float %1676, %1679
  %1681 = fsub fast float 5.000000e-01, %1674
  %1682 = fmul fast float %1681, %1521
  %1683 = fmul fast float %1681, %1522
  %1684 = fmul fast float %1681, %1523
  %1685 = fadd fast float %1680, %1682
  %1686 = fmul fast float %1685, %1602
  %1687 = fadd fast float %1680, %1683
  %1688 = fmul fast float %1687, %1603
  %1689 = fadd fast float %1680, %1684
  %1690 = fmul fast float %1689, %1604
  br label %1691

; <label>:1691                                    ; preds = %1593, %1590
  %1692 = phi float [ %1686, %1593 ], [ 0.000000e+00, %1590 ]
  %1693 = phi float [ %1688, %1593 ], [ 0.000000e+00, %1590 ]
  %1694 = phi float [ %1690, %1593 ], [ 0.000000e+00, %1590 ]
  %1695 = phi float [ %1667, %1593 ], [ 0.000000e+00, %1590 ]
  %1696 = phi float [ %1669, %1593 ], [ 0.000000e+00, %1590 ]
  %1697 = phi float [ %1671, %1593 ], [ 0.000000e+00, %1590 ]
  %1698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %1699 = extractvalue %dx.types.CBufRet.f32 %1698, 0
  %1700 = fcmp fast ogt float %1699, 0.000000e+00
  %1701 = and i1 %1592, %1700
  br i1 %1701, label %1702, label %1906, !dx.controlflow.hints !61

; <label>:1702                                    ; preds = %1691
  %1703 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1704 = fadd fast float %1703, %95
  %1705 = fmul fast float %1527, 3.200000e+01
  %1706 = fmul fast float %1528, 3.200000e+01
  %1707 = fadd fast float %1550, %1705
  %1708 = fadd fast float %1551, %1706
  %1709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1710 = extractvalue %dx.types.CBufRet.f32 %1709, 0
  %1711 = extractvalue %dx.types.CBufRet.f32 %1709, 1
  %1712 = fsub fast float %1707, %1710
  %1713 = fsub fast float %1708, %1711
  %1714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1715 = extractvalue %dx.types.CBufRet.f32 %1714, 0
  %1716 = extractvalue %dx.types.CBufRet.f32 %1714, 1
  %1717 = fmul fast float %1712, %1715
  %1718 = fmul fast float %1713, %1716
  %1719 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1720 = extractvalue %dx.types.CBufRet.f32 %1719, 0
  %1721 = extractvalue %dx.types.CBufRet.f32 %1719, 1
  %1722 = fsub fast float %1550, %1720
  %1723 = fsub fast float %1551, %1721
  %1724 = fmul fast float %1722, %1722
  %1725 = fmul fast float %1723, %1723
  %1726 = fadd fast float %1724, %1725
  %1727 = call float @dx.op.unary.f32(i32 24, float %1726)  ; Sqrt(value)
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = fsub fast float %1727, %1729
  %1732 = fdiv fast float %1731, %1730
  %1733 = call float @dx.op.unary.f32(i32 7, float %1732)  ; Saturate(value)
  %1734 = fmul fast float %1733, 2.000000e+00
  %1735 = fsub fast float 3.000000e+00, %1734
  %1736 = fmul fast float %1733, %1733
  %1737 = fmul fast float %1736, %1735
  %1738 = fcmp fast oge float %1717, 0.000000e+00
  %1739 = fcmp fast ole float %1717, 1.000000e+00
  %1740 = and i1 %1739, %1738
  %1741 = fcmp fast oge float %1718, 0.000000e+00
  %1742 = and i1 %1741, %1740
  %1743 = fcmp fast ole float %1718, 1.000000e+00
  %1744 = and i1 %1743, %1742
  %1745 = fcmp fast ogt float %1737, 0.000000e+00
  %1746 = and i1 %1745, %1744
  br i1 %1746, label %1747, label %1870, !dx.controlflow.hints !62

; <label>:1747                                    ; preds = %1702
  %1748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %1749 = extractvalue %dx.types.CBufRet.f32 %1748, 2
  %1750 = extractvalue %dx.types.CBufRet.f32 %1748, 3
  %1751 = fmul fast float %1749, %1717
  %1752 = fmul fast float %1750, %1718
  %1753 = call float @dx.op.unary.f32(i32 27, float %1751)  ; Round_ni(value)
  %1754 = call float @dx.op.unary.f32(i32 27, float %1752)  ; Round_ni(value)
  %1755 = fptosi float %1753 to i32
  %1756 = fptosi float %1754 to i32
  %1757 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %1755, i32 %1756, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1758 = extractvalue %dx.types.ResRet.i32 %1757, 0
  %1759 = lshr i32 %1758, 16
  %1760 = icmp eq i32 %1759, 65535
  br i1 %1760, label %1870, label %1761

; <label>:1761                                    ; preds = %1747
  %1762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1763 = extractvalue %dx.types.CBufRet.f32 %1762, 0
  %1764 = fmul fast float %1763, %1717
  %1765 = extractvalue %dx.types.CBufRet.f32 %1762, 1
  %1766 = fadd fast float %1764, %1765
  %1767 = extractvalue %dx.types.CBufRet.f32 %1762, 2
  %1768 = fmul fast float %1767, %1718
  %1769 = extractvalue %dx.types.CBufRet.f32 %1762, 3
  %1770 = fadd fast float %1768, %1769
  %1771 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %22, float %1766, float %1770, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1772 = extractvalue %dx.types.ResRet.f32 %1771, 0
  %1773 = extractvalue %dx.types.ResRet.f32 %1771, 1
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 1
  %1776 = extractvalue %dx.types.CBufRet.f32 %1774, 0
  %1777 = fsub fast float %1775, %1776
  %1778 = fmul fast float %1777, %1772
  %1779 = fadd fast float %1778, %1776
  %1780 = extractvalue %dx.types.CBufRet.f32 %1774, 3
  %1781 = extractvalue %dx.types.CBufRet.f32 %1774, 2
  %1782 = fsub fast float %1780, %1781
  %1783 = fmul fast float %1782, %1773
  %1784 = fadd fast float %1783, %1781
  %1785 = fsub fast float %1704, %1779
  %1786 = fsub fast float %1784, %1779
  %1787 = fdiv fast float %1785, %1786
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1789 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %1790 = extractvalue %dx.types.CBufRet.f32 %1748, 0
  %1791 = extractvalue %dx.types.CBufRet.f32 %1748, 1
  %1792 = fmul fast float %1790, %1717
  %1793 = fmul fast float %1791, %1718
  %1794 = fmul fast float %1792, 1.250000e-01
  %1795 = fmul fast float %1793, 1.250000e-01
  %1796 = call float @dx.op.unary.f32(i32 27, float %1794)  ; Round_ni(value)
  %1797 = call float @dx.op.unary.f32(i32 27, float %1795)  ; Round_ni(value)
  %1798 = fmul fast float %1796, 8.000000e+00
  %1799 = fmul fast float %1797, 8.000000e+00
  %1800 = fsub fast float %1792, %1798
  %1801 = fsub fast float %1793, %1799
  %1802 = fadd fast float %1800, 5.000000e-01
  %1803 = fadd fast float %1801, 5.000000e-01
  %1804 = and i32 %1759, 255
  %1805 = lshr i32 %1758, 24
  %1806 = mul nuw nsw i32 %1804, 9
  %1807 = uitofp i32 %1806 to float
  %1808 = mul nuw nsw i32 %1805, 9
  %1809 = uitofp i32 %1808 to float
  %1810 = fadd fast float %1802, %1807
  %1811 = fadd fast float %1803, %1809
  %1812 = fdiv fast float %1810, %1699
  %1813 = fdiv fast float %1811, %1789
  %1814 = fmul fast float %1788, 4.375000e-01
  %1815 = fadd fast float %1814, 3.125000e-02
  %1816 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %1812, float %1813, float %1815, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1817 = extractvalue %dx.types.ResRet.f32 %1816, 0
  %1818 = extractvalue %dx.types.ResRet.f32 %1816, 1
  %1819 = extractvalue %dx.types.ResRet.f32 %1816, 2
  %1820 = fadd fast float %1814, 5.312500e-01
  %1821 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %1812, float %1813, float %1820, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1822 = extractvalue %dx.types.ResRet.f32 %1821, 0
  %1823 = extractvalue %dx.types.ResRet.f32 %1821, 1
  %1824 = extractvalue %dx.types.ResRet.f32 %1821, 2
  %1825 = fmul fast float %1822, 2.000000e+00
  %1826 = fmul fast float %1823, 2.000000e+00
  %1827 = fmul fast float %1824, 2.000000e+00
  %1828 = fadd fast float %1825, -1.000000e+00
  %1829 = fadd fast float %1826, -1.000000e+00
  %1830 = fadd fast float %1827, -1.000000e+00
  %1831 = fmul fast float %1828, %1828
  %1832 = fmul fast float %1829, %1829
  %1833 = fadd fast float %1831, %1832
  %1834 = fmul fast float %1830, %1830
  %1835 = fadd fast float %1833, %1834
  %1836 = call float @dx.op.unary.f32(i32 24, float %1835)  ; Sqrt(value)
  %1837 = fcmp fast ogt float %1836, 0.000000e+00
  br i1 %1837, label %1838, label %1842

; <label>:1838                                    ; preds = %1761
  %1839 = fdiv fast float %1828, %1836
  %1840 = fdiv fast float %1829, %1836
  %1841 = fdiv fast float %1830, %1836
  br label %1842

; <label>:1842                                    ; preds = %1838, %1761
  %1843 = phi float [ %1839, %1838 ], [ 0.000000e+00, %1761 ]
  %1844 = phi float [ %1840, %1838 ], [ 0.000000e+00, %1761 ]
  %1845 = phi float [ %1841, %1838 ], [ 0.000000e+00, %1761 ]
  %1846 = call float @dx.op.dot3.f32(i32 55, float %1843, float %1844, float %1845, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %1847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1846)  ; FMax(a,b)
  %1848 = fmul fast float %1847, 0x400C5BF8A0000000
  %1849 = fmul fast float %1817, %1737
  %1850 = fmul fast float %1849, %1848
  %1851 = fmul fast float %1818, %1737
  %1852 = fmul fast float %1851, %1848
  %1853 = fmul fast float %1819, %1737
  %1854 = fmul fast float %1853, %1848
  %1855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1856 = extractvalue %dx.types.CBufRet.f32 %1855, 3
  %1857 = fmul fast float %1850, %1856
  %1858 = fmul fast float %1852, %1856
  %1859 = fmul fast float %1854, %1856
  %1860 = fcmp fast ogt float %1704, %1784
  br i1 %1860, label %1861, label %1870

; <label>:1861                                    ; preds = %1842
  %1862 = fmul fast float %1786, 0x3FC24924A0000000
  %1863 = fsub fast float %1704, %1784
  %1864 = fdiv fast float %1863, %1862
  %1865 = call float @dx.op.unary.f32(i32 7, float %1864)  ; Saturate(value)
  %1866 = fsub fast float 1.000000e+00, %1865
  %1867 = fmul fast float %1866, %1857
  %1868 = fmul fast float %1866, %1858
  %1869 = fmul fast float %1866, %1859
  br label %1870

; <label>:1870                                    ; preds = %1861, %1842, %1747, %1702
  %1871 = phi float [ %1869, %1861 ], [ %1859, %1842 ], [ 0.000000e+00, %1747 ], [ 0.000000e+00, %1702 ]
  %1872 = phi float [ %1868, %1861 ], [ %1858, %1842 ], [ 0.000000e+00, %1747 ], [ 0.000000e+00, %1702 ]
  %1873 = phi float [ %1867, %1861 ], [ %1857, %1842 ], [ 0.000000e+00, %1747 ], [ 0.000000e+00, %1702 ]
  %1874 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1873)  ; FMax(a,b)
  %1875 = fmul fast float %1874, 0x3FD20DD760000000
  %1876 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1540, float %1541, float %1542)  ; Dot3(ax,ay,az,bx,by,bz)
  %1877 = fmul fast float %1876, 0x3FDF454380000000
  %1878 = fmul fast float %1876, %1876
  %1879 = fmul fast float %1878, 0x3FEE471020000000
  %1880 = fadd fast float %1879, 0xBFD42F6020000000
  %1881 = call float @dx.op.dot3.f32(i32 55, float %1874, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1877, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %1882 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1872)  ; FMax(a,b)
  %1883 = fmul fast float %1882, 0x3FD20DD760000000
  %1884 = call float @dx.op.dot3.f32(i32 55, float %1882, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1877, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %1885 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %1871)  ; FMax(a,b)
  %1886 = fmul fast float %1885, 0x3FD20DD760000000
  %1887 = call float @dx.op.dot3.f32(i32 55, float %1885, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %1877, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %1888 = call float @dx.op.binary.f32(i32 35, float %1875, float 0.000000e+00)  ; FMax(a,b)
  %1889 = call float @dx.op.binary.f32(i32 35, float %1883, float 0.000000e+00)  ; FMax(a,b)
  %1890 = call float @dx.op.binary.f32(i32 35, float %1886, float 0.000000e+00)  ; FMax(a,b)
  %1891 = call float @dx.op.binary.f32(i32 35, float %1881, float 0.000000e+00)  ; FMax(a,b)
  %1892 = call float @dx.op.binary.f32(i32 35, float %1884, float 0.000000e+00)  ; FMax(a,b)
  %1893 = call float @dx.op.binary.f32(i32 35, float %1887, float 0.000000e+00)  ; FMax(a,b)
  %1894 = fmul fast float %1888, %1591
  %1895 = fmul fast float %1889, %1591
  %1896 = fmul fast float %1890, %1591
  %1897 = fadd fast float %1894, %1695
  %1898 = fadd fast float %1895, %1696
  %1899 = fadd fast float %1896, %1697
  %1900 = fmul fast float %1891, %1591
  %1901 = fmul fast float %1892, %1591
  %1902 = fmul fast float %1893, %1591
  %1903 = fadd fast float %1900, %1692
  %1904 = fadd fast float %1901, %1693
  %1905 = fadd fast float %1902, %1694
  br label %1906

; <label>:1906                                    ; preds = %1870, %1691
  %1907 = phi float [ %1903, %1870 ], [ %1692, %1691 ]
  %1908 = phi float [ %1904, %1870 ], [ %1693, %1691 ]
  %1909 = phi float [ %1905, %1870 ], [ %1694, %1691 ]
  %1910 = phi float [ %1897, %1870 ], [ %1695, %1691 ]
  %1911 = phi float [ %1898, %1870 ], [ %1696, %1691 ]
  %1912 = phi float [ %1899, %1870 ], [ %1697, %1691 ]
  %1913 = fcmp fast olt float %1591, 1.000000e+00
  br i1 %1913, label %1914, label %2732, !dx.controlflow.hints !63

; <label>:1914                                    ; preds = %1906
  %1915 = extractvalue %dx.types.CBufRet.f32 %1547, 2
  %1916 = fadd fast float %1915, %95
  %1917 = fmul fast float %1527, 3.200000e+01
  %1918 = fmul fast float %1528, 3.200000e+01
  %1919 = fadd fast float %1550, %1917
  %1920 = fadd fast float %1551, %1918
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 0
  %1923 = extractvalue %dx.types.CBufRet.f32 %1921, 1
  %1924 = fsub fast float %1919, %1922
  %1925 = fsub fast float %1920, %1923
  %1926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1927 = extractvalue %dx.types.CBufRet.f32 %1926, 0
  %1928 = extractvalue %dx.types.CBufRet.f32 %1926, 1
  %1929 = fmul fast float %1924, %1927
  %1930 = fmul fast float %1925, %1928
  %1931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1931, 0
  %1933 = fmul fast float %1929, %1932
  %1934 = extractvalue %dx.types.CBufRet.f32 %1931, 1
  %1935 = fadd fast float %1933, %1934
  %1936 = extractvalue %dx.types.CBufRet.f32 %1931, 2
  %1937 = fmul fast float %1936, %1930
  %1938 = extractvalue %dx.types.CBufRet.f32 %1931, 3
  %1939 = fadd fast float %1937, %1938
  %1940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %22, float %1935, float %1939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  %1942 = extractvalue %dx.types.ResRet.f32 %1940, 1
  %1943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %1944 = extractvalue %dx.types.CBufRet.f32 %1943, 1
  %1945 = extractvalue %dx.types.CBufRet.f32 %1943, 0
  %1946 = fsub fast float %1944, %1945
  %1947 = fmul fast float %1946, %1941
  %1948 = fadd fast float %1947, %1945
  %1949 = extractvalue %dx.types.CBufRet.f32 %1943, 3
  %1950 = extractvalue %dx.types.CBufRet.f32 %1943, 2
  %1951 = fsub fast float %1949, %1950
  %1952 = fmul fast float %1951, %1942
  %1953 = fadd fast float %1952, %1950
  %1954 = fsub fast float %1916, %1948
  %1955 = fsub fast float %1953, %1948
  %1956 = fdiv fast float %1954, %1955
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 0
  %1960 = fmul fast float %1959, %1957
  %1961 = extractvalue %dx.types.CBufRet.f32 %1958, 1
  %1962 = fadd fast float %1960, %1961
  %1963 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %22, float %1935, float %1939, float %1962, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1964 = extractvalue %dx.types.ResRet.f32 %1963, 0
  %1965 = extractvalue %dx.types.ResRet.f32 %1963, 1
  %1966 = extractvalue %dx.types.ResRet.f32 %1963, 2
  %1967 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %1968 = extractvalue %dx.types.CBufRet.f32 %1967, 0
  %1969 = extractvalue %dx.types.CBufRet.f32 %1967, 1
  %1970 = extractvalue %dx.types.CBufRet.f32 %1967, 2
  %1971 = fmul fast float %1968, %1964
  %1972 = fmul fast float %1969, %1965
  %1973 = fmul fast float %1970, %1966
  %1974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %1975 = extractvalue %dx.types.CBufRet.f32 %1974, 0
  %1976 = extractvalue %dx.types.CBufRet.f32 %1974, 1
  %1977 = extractvalue %dx.types.CBufRet.f32 %1974, 2
  %1978 = fadd fast float %1971, %1975
  %1979 = fadd fast float %1972, %1976
  %1980 = fadd fast float %1973, %1977
  %1981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %1982 = extractvalue %dx.types.CBufRet.f32 %1981, 0
  %1983 = fmul fast float %1982, %1929
  %1984 = extractvalue %dx.types.CBufRet.f32 %1981, 1
  %1985 = fadd fast float %1983, %1984
  %1986 = extractvalue %dx.types.CBufRet.f32 %1981, 2
  %1987 = fmul fast float %1986, %1930
  %1988 = extractvalue %dx.types.CBufRet.f32 %1981, 3
  %1989 = fadd fast float %1987, %1988
  %1990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %1991 = extractvalue %dx.types.CBufRet.f32 %1990, 0
  %1992 = extractvalue %dx.types.CBufRet.f32 %1990, 1
  %1993 = extractvalue %dx.types.CBufRet.f32 %1990, 2
  %1994 = extractvalue %dx.types.CBufRet.f32 %1990, 3
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %1999 = extractvalue %dx.types.CBufRet.f32 %1995, 3
  %2000 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %1985, float %1989, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2001 = extractvalue %dx.types.ResRet.f32 %2000, 0
  %2002 = extractvalue %dx.types.ResRet.f32 %2000, 1
  %2003 = extractvalue %dx.types.ResRet.f32 %2000, 2
  %2004 = extractvalue %dx.types.ResRet.f32 %2000, 3
  %2005 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %1985, float %1989, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2006 = extractvalue %dx.types.ResRet.f32 %2005, 0
  %2007 = extractvalue %dx.types.ResRet.f32 %2005, 1
  %2008 = extractvalue %dx.types.ResRet.f32 %2005, 2
  %2009 = extractvalue %dx.types.ResRet.f32 %2005, 3
  %2010 = fmul fast float %2001, %1978
  %2011 = fmul fast float %2006, %1978
  %2012 = fmul fast float %2008, %1978
  %2013 = fmul fast float %2004, %1978
  %2014 = fadd fast float %2010, %1991
  %2015 = fadd fast float %2011, %1992
  %2016 = fadd fast float %2012, %1993
  %2017 = fadd fast float %2013, %1994
  %2018 = fmul fast float %2002, %1978
  %2019 = fmul fast float %2007, %1978
  %2020 = fadd fast float %2018, %1996
  %2021 = fadd fast float %2019, %1997
  %2022 = fmul fast float %2003, %1978
  %2023 = fmul fast float %2009, %1978
  %2024 = fadd fast float %2022, %1998
  %2025 = fadd fast float %2023, %1999
  %2026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %1985, float %1989, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = extractvalue %dx.types.ResRet.f32 %2026, 1
  %2029 = extractvalue %dx.types.ResRet.f32 %2026, 2
  %2030 = extractvalue %dx.types.ResRet.f32 %2026, 3
  %2031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %1985, float %1989, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = extractvalue %dx.types.ResRet.f32 %2031, 1
  %2034 = extractvalue %dx.types.ResRet.f32 %2031, 2
  %2035 = extractvalue %dx.types.ResRet.f32 %2031, 3
  %2036 = fmul fast float %2027, %1979
  %2037 = fmul fast float %2032, %1979
  %2038 = fmul fast float %2034, %1979
  %2039 = fmul fast float %2030, %1979
  %2040 = fadd fast float %2014, %2036
  %2041 = fadd fast float %2015, %2037
  %2042 = fadd fast float %2016, %2038
  %2043 = fadd fast float %2017, %2039
  %2044 = fmul fast float %2028, %1979
  %2045 = fmul fast float %2033, %1979
  %2046 = fadd fast float %2020, %2044
  %2047 = fadd fast float %2021, %2045
  %2048 = fmul fast float %2029, %1979
  %2049 = fmul fast float %2035, %1979
  %2050 = fadd fast float %2024, %2048
  %2051 = fadd fast float %2025, %2049
  %2052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %1985, float %1989, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.ResRet.f32 %2052, 2
  %2056 = extractvalue %dx.types.ResRet.f32 %2052, 3
  %2057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %22, float %1985, float %1989, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.ResRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.ResRet.f32 %2057, 2
  %2061 = extractvalue %dx.types.ResRet.f32 %2057, 3
  %2062 = fmul fast float %2053, %1980
  %2063 = fmul fast float %2058, %1980
  %2064 = fmul fast float %2060, %1980
  %2065 = fmul fast float %2056, %1980
  %2066 = fadd fast float %2040, %2062
  %2067 = fadd fast float %2041, %2063
  %2068 = fadd fast float %2042, %2064
  %2069 = fadd fast float %2043, %2065
  %2070 = fmul fast float %2054, %1980
  %2071 = fmul fast float %2059, %1980
  %2072 = fadd fast float %2046, %2070
  %2073 = fadd fast float %2047, %2071
  %2074 = fmul fast float %2055, %1980
  %2075 = fmul fast float %2061, %1980
  %2076 = fadd fast float %2050, %2074
  %2077 = fadd fast float %2051, %2075
  %2078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2079 = extractvalue %dx.types.CBufRet.f32 %2078, 0
  %2080 = fsub fast float %1550, %2079
  %2081 = fsub fast float %1922, %1550
  %2082 = call float @dx.op.binary.f32(i32 35, float %2081, float %2080)  ; FMax(a,b)
  %2083 = extractvalue %dx.types.CBufRet.f32 %2078, 1
  %2084 = fsub fast float %1551, %2083
  %2085 = fsub fast float %1923, %1551
  %2086 = call float @dx.op.binary.f32(i32 35, float %2085, float %2084)  ; FMax(a,b)
  %2087 = call float @dx.op.binary.f32(i32 35, float %2082, float %2086)  ; FMax(a,b)
  %2088 = extractvalue %dx.types.CBufRet.f32 %1926, 3
  %2089 = fmul fast float %2088, %2087
  %2090 = call float @dx.op.unary.f32(i32 7, float %2089)  ; Saturate(value)
  %2091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2092 = extractvalue %dx.types.CBufRet.f32 %2091, 0
  %2093 = extractvalue %dx.types.CBufRet.f32 %2091, 1
  %2094 = extractvalue %dx.types.CBufRet.f32 %2091, 2
  %2095 = extractvalue %dx.types.CBufRet.f32 %2091, 3
  %2096 = fsub fast float %2092, %2066
  %2097 = fsub fast float %2093, %2067
  %2098 = fsub fast float %2094, %2068
  %2099 = fsub fast float %2095, %2069
  %2100 = fmul fast float %2096, %2090
  %2101 = fmul fast float %2097, %2090
  %2102 = fmul fast float %2098, %2090
  %2103 = fmul fast float %2099, %2090
  %2104 = fadd fast float %2100, %2066
  %2105 = fadd fast float %2101, %2067
  %2106 = fadd fast float %2102, %2068
  %2107 = fadd fast float %2103, %2069
  %2108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2109 = extractvalue %dx.types.CBufRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.CBufRet.f32 %2108, 1
  %2111 = fsub fast float %2109, %2072
  %2112 = fsub fast float %2110, %2073
  %2113 = fmul fast float %2111, %2090
  %2114 = fmul fast float %2112, %2090
  %2115 = fadd fast float %2113, %2072
  %2116 = fadd fast float %2114, %2073
  %2117 = extractvalue %dx.types.CBufRet.f32 %2108, 2
  %2118 = extractvalue %dx.types.CBufRet.f32 %2108, 3
  %2119 = fsub fast float %2117, %2076
  %2120 = fsub fast float %2118, %2077
  %2121 = fmul fast float %2119, %2090
  %2122 = fmul fast float %2120, %2090
  %2123 = fadd fast float %2121, %2076
  %2124 = fadd fast float %2122, %2077
  %2125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2126 = extractvalue %dx.types.CBufRet.f32 %2125, 0
  %2127 = fmul fast float %2126, %2104
  %2128 = fmul fast float %2126, %2105
  %2129 = fmul fast float %2126, %2106
  %2130 = fmul fast float %2126, %2107
  %2131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2132 = extractvalue %dx.types.CBufRet.f32 %2131, 0
  %2133 = fmul fast float %2132, %2115
  %2134 = fmul fast float %2132, %2116
  %2135 = fadd fast float %2133, %2127
  %2136 = fadd fast float %2134, %2129
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = fmul fast float %2138, %2123
  %2140 = fmul fast float %2138, %2124
  %2141 = fadd fast float %2135, %2139
  %2142 = fadd fast float %2136, %2140
  %2143 = extractvalue %dx.types.CBufRet.f32 %2125, 1
  %2144 = fmul fast float %2143, %2104
  %2145 = fmul fast float %2143, %2105
  %2146 = fmul fast float %2143, %2106
  %2147 = fmul fast float %2143, %2107
  %2148 = extractvalue %dx.types.CBufRet.f32 %2131, 1
  %2149 = fmul fast float %2148, %2115
  %2150 = fmul fast float %2148, %2116
  %2151 = fadd fast float %2149, %2144
  %2152 = fadd fast float %2150, %2146
  %2153 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2154 = fmul fast float %2153, %2123
  %2155 = fmul fast float %2153, %2124
  %2156 = fadd fast float %2151, %2154
  %2157 = fadd fast float %2152, %2155
  %2158 = extractvalue %dx.types.CBufRet.f32 %2125, 2
  %2159 = fmul fast float %2158, %2104
  %2160 = fmul fast float %2158, %2105
  %2161 = fmul fast float %2158, %2106
  %2162 = fmul fast float %2158, %2107
  %2163 = extractvalue %dx.types.CBufRet.f32 %2131, 2
  %2164 = fmul fast float %2163, %2115
  %2165 = fmul fast float %2163, %2116
  %2166 = fadd fast float %2164, %2159
  %2167 = fadd fast float %2165, %2161
  %2168 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2169 = fmul fast float %2168, %2123
  %2170 = fmul fast float %2168, %2124
  %2171 = fadd fast float %2166, %2169
  %2172 = fadd fast float %2167, %2170
  %2173 = fmul fast float %2160, %2160
  %2174 = fmul fast float %2172, %2172
  %2175 = fmul fast float %2162, %2162
  %2176 = fadd fast float %2175, %2173
  %2177 = fadd fast float %2176, %2174
  %2178 = call float @dx.op.unary.f32(i32 24, float %2177)  ; Sqrt(value)
  %2179 = fcmp fast ugt float %2178, 0.000000e+00
  br i1 %2179, label %2180, label %2195

; <label>:2180                                    ; preds = %1914
  %2181 = fsub fast float -0.000000e+00, %2162
  %2182 = fdiv fast float %2181, %2178
  %2183 = fsub fast float -0.000000e+00, %2160
  %2184 = fdiv fast float %2183, %2178
  %2185 = fdiv fast float %2172, %2178
  %2186 = fmul fast float %2171, 0x3FE279A760000000
  %2187 = fmul fast float %2184, %2160
  %2188 = fmul fast float %2185, %2172
  %2189 = fmul fast float %2182, %2162
  %2190 = fadd fast float %2187, %2189
  %2191 = fsub fast float %2190, %2188
  %2192 = call float @dx.op.unary.f32(i32 6, float %2191)  ; FAbs(value)
  %2193 = fadd fast float %2192, 0x3DDB7CDFE0000000
  %2194 = fdiv fast float %2186, %2193
  br label %2195

; <label>:2195                                    ; preds = %2180, %1914
  %2196 = phi float [ %2194, %2180 ], [ 1.000000e+00, %1914 ]
  %2197 = fmul fast float %2145, %2145
  %2198 = fmul fast float %2157, %2157
  %2199 = fmul fast float %2147, %2147
  %2200 = fadd fast float %2199, %2197
  %2201 = fadd fast float %2200, %2198
  %2202 = call float @dx.op.unary.f32(i32 24, float %2201)  ; Sqrt(value)
  %2203 = fcmp fast ugt float %2202, 0.000000e+00
  br i1 %2203, label %2204, label %2219

; <label>:2204                                    ; preds = %2195
  %2205 = fsub fast float -0.000000e+00, %2147
  %2206 = fdiv fast float %2205, %2202
  %2207 = fsub fast float -0.000000e+00, %2145
  %2208 = fdiv fast float %2207, %2202
  %2209 = fdiv fast float %2157, %2202
  %2210 = fmul fast float %2156, 0x3FE279A760000000
  %2211 = fmul fast float %2208, %2145
  %2212 = fmul fast float %2209, %2157
  %2213 = fmul fast float %2206, %2147
  %2214 = fadd fast float %2211, %2213
  %2215 = fsub fast float %2214, %2212
  %2216 = call float @dx.op.unary.f32(i32 6, float %2215)  ; FAbs(value)
  %2217 = fadd fast float %2216, 0x3DDB7CDFE0000000
  %2218 = fdiv fast float %2210, %2217
  br label %2219

; <label>:2219                                    ; preds = %2204, %2195
  %2220 = phi float [ %2218, %2204 ], [ 1.000000e+00, %2195 ]
  %2221 = call float @dx.op.binary.f32(i32 36, float %2220, float %2196)  ; FMin(a,b)
  %2222 = fmul fast float %2128, %2128
  %2223 = fmul fast float %2142, %2142
  %2224 = fmul fast float %2130, %2130
  %2225 = fadd fast float %2224, %2222
  %2226 = fadd fast float %2225, %2223
  %2227 = call float @dx.op.unary.f32(i32 24, float %2226)  ; Sqrt(value)
  %2228 = fcmp fast ugt float %2227, 0.000000e+00
  br i1 %2228, label %2229, label %2244

; <label>:2229                                    ; preds = %2219
  %2230 = fsub fast float -0.000000e+00, %2130
  %2231 = fdiv fast float %2230, %2227
  %2232 = fsub fast float -0.000000e+00, %2128
  %2233 = fdiv fast float %2232, %2227
  %2234 = fdiv fast float %2142, %2227
  %2235 = fmul fast float %2141, 0x3FE279A760000000
  %2236 = fmul fast float %2233, %2128
  %2237 = fmul fast float %2234, %2142
  %2238 = fmul fast float %2231, %2130
  %2239 = fadd fast float %2236, %2238
  %2240 = fsub fast float %2239, %2237
  %2241 = call float @dx.op.unary.f32(i32 6, float %2240)  ; FAbs(value)
  %2242 = fadd fast float %2241, 0x3DDB7CDFE0000000
  %2243 = fdiv fast float %2235, %2242
  br label %2244

; <label>:2244                                    ; preds = %2229, %2219
  %2245 = phi float [ %2243, %2229 ], [ 1.000000e+00, %2219 ]
  %2246 = call float @dx.op.binary.f32(i32 36, float %2245, float %2221)  ; FMin(a,b)
  %2247 = call float @dx.op.unary.f32(i32 7, float %2246)  ; Saturate(value)
  %2248 = fcmp fast olt float %2247, 1.000000e+00
  br i1 %2248, label %2249, label %2259

; <label>:2249                                    ; preds = %2244
  %2250 = fmul fast float %2247, %2128
  %2251 = fmul fast float %2247, %2142
  %2252 = fmul fast float %2247, %2130
  %2253 = fmul fast float %2247, %2145
  %2254 = fmul fast float %2247, %2157
  %2255 = fmul fast float %2247, %2147
  %2256 = fmul fast float %2247, %2160
  %2257 = fmul fast float %2247, %2172
  %2258 = fmul fast float %2247, %2162
  br label %2259

; <label>:2259                                    ; preds = %2249, %2244
  %2260 = phi float [ %2256, %2249 ], [ %2160, %2244 ]
  %2261 = phi float [ %2257, %2249 ], [ %2172, %2244 ]
  %2262 = phi float [ %2258, %2249 ], [ %2162, %2244 ]
  %2263 = phi float [ %2253, %2249 ], [ %2145, %2244 ]
  %2264 = phi float [ %2254, %2249 ], [ %2157, %2244 ]
  %2265 = phi float [ %2255, %2249 ], [ %2147, %2244 ]
  %2266 = phi float [ %2250, %2249 ], [ %2128, %2244 ]
  %2267 = phi float [ %2251, %2249 ], [ %2142, %2244 ]
  %2268 = phi float [ %2252, %2249 ], [ %2130, %2244 ]
  %2269 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2141)  ; FMax(a,b)
  %2270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2156)  ; FMax(a,b)
  %2271 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2171)  ; FMax(a,b)
  %2272 = fcmp fast oge float %1929, 0.000000e+00
  %2273 = and i1 %2272, %1700
  %2274 = fcmp fast ole float %1929, 1.000000e+00
  %2275 = and i1 %2274, %2273
  %2276 = fcmp fast oge float %1930, 0.000000e+00
  %2277 = and i1 %2276, %2275
  %2278 = fcmp fast ole float %1930, 1.000000e+00
  %2279 = and i1 %2278, %2277
  br i1 %2279, label %2280, label %2425, !dx.controlflow.hints !64

; <label>:2280                                    ; preds = %2259
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 2
  %2283 = extractvalue %dx.types.CBufRet.f32 %2281, 3
  %2284 = fmul fast float %2282, %1929
  %2285 = fmul fast float %2283, %1930
  %2286 = call float @dx.op.unary.f32(i32 27, float %2284)  ; Round_ni(value)
  %2287 = call float @dx.op.unary.f32(i32 27, float %2285)  ; Round_ni(value)
  %2288 = fptosi float %2286 to i32
  %2289 = fptosi float %2287 to i32
  %2290 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %15, i32 0, i32 %2288, i32 %2289, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2291 = extractvalue %dx.types.ResRet.i32 %2290, 0
  %2292 = and i32 %2291, 65535
  %2293 = lshr i32 %2291, 16
  %2294 = icmp eq i32 %2292, 65535
  br i1 %2294, label %2331, label %2295

; <label>:2295                                    ; preds = %2280
  %2296 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %2297 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2298 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2299 = fmul fast float %2297, %1929
  %2300 = fmul fast float %2298, %1930
  %2301 = fmul fast float %2299, 1.250000e-01
  %2302 = fmul fast float %2300, 1.250000e-01
  %2303 = call float @dx.op.unary.f32(i32 27, float %2301)  ; Round_ni(value)
  %2304 = call float @dx.op.unary.f32(i32 27, float %2302)  ; Round_ni(value)
  %2305 = fmul fast float %2303, 8.000000e+00
  %2306 = fmul fast float %2304, 8.000000e+00
  %2307 = and i32 %2291, 255
  %2308 = lshr i32 %2291, 8
  %2309 = and i32 %2308, 255
  %2310 = mul nuw nsw i32 %2307, 9
  %2311 = uitofp i32 %2310 to float
  %2312 = mul nuw nsw i32 %2309, 9
  %2313 = uitofp i32 %2312 to float
  %2314 = fadd fast float %2311, 5.000000e-01
  %2315 = fadd fast float %2314, %2299
  %2316 = fsub fast float %2315, %2305
  %2317 = fadd fast float %2313, 5.000000e-01
  %2318 = fadd fast float %2317, %2300
  %2319 = fsub fast float %2318, %2306
  %2320 = fdiv fast float %2316, %1699
  %2321 = fdiv fast float %2319, %2296
  %2322 = fmul fast float %1957, 4.375000e-01
  %2323 = fadd fast float %2322, 3.125000e-02
  %2324 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %2320, float %2321, float %2323, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.ResRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.ResRet.f32 %2324, 2
  %2328 = fadd fast float %2325, %2269
  %2329 = fadd fast float %2326, %2270
  %2330 = fadd fast float %2327, %2271
  br label %2331

; <label>:2331                                    ; preds = %2295, %2280
  %2332 = phi float [ %2330, %2295 ], [ %2271, %2280 ]
  %2333 = phi float [ %2329, %2295 ], [ %2270, %2280 ]
  %2334 = phi float [ %2328, %2295 ], [ %2269, %2280 ]
  %2335 = icmp eq i32 %2293, 65535
  br i1 %2335, label %2425, label %2336

; <label>:2336                                    ; preds = %2331
  %2337 = extractvalue %dx.types.CBufRet.f32 %1698, 1
  %2338 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2339 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2340 = fmul fast float %2338, %1929
  %2341 = fmul fast float %2339, %1930
  %2342 = fmul fast float %2340, 1.250000e-01
  %2343 = fmul fast float %2341, 1.250000e-01
  %2344 = call float @dx.op.unary.f32(i32 27, float %2342)  ; Round_ni(value)
  %2345 = call float @dx.op.unary.f32(i32 27, float %2343)  ; Round_ni(value)
  %2346 = fmul fast float %2344, 8.000000e+00
  %2347 = fmul fast float %2345, 8.000000e+00
  %2348 = fsub fast float %2340, %2346
  %2349 = fsub fast float %2341, %2347
  %2350 = fadd fast float %2348, 5.000000e-01
  %2351 = fadd fast float %2349, 5.000000e-01
  %2352 = and i32 %2293, 255
  %2353 = lshr i32 %2291, 24
  %2354 = mul nuw nsw i32 %2352, 9
  %2355 = uitofp i32 %2354 to float
  %2356 = mul nuw nsw i32 %2353, 9
  %2357 = uitofp i32 %2356 to float
  %2358 = fadd fast float %2350, %2355
  %2359 = fadd fast float %2351, %2357
  %2360 = fdiv fast float %2358, %1699
  %2361 = fdiv fast float %2359, %2337
  %2362 = fmul fast float %1957, 4.375000e-01
  %2363 = fadd fast float %2362, 3.125000e-02
  %2364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %2360, float %2361, float %2363, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.ResRet.f32 %2364, 1
  %2367 = extractvalue %dx.types.ResRet.f32 %2364, 2
  %2368 = fadd fast float %2362, 5.312500e-01
  %2369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %22, float %2360, float %2361, float %2368, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.ResRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.ResRet.f32 %2369, 2
  %2373 = fmul fast float %2370, 2.000000e+00
  %2374 = fmul fast float %2371, 2.000000e+00
  %2375 = fmul fast float %2372, 2.000000e+00
  %2376 = fadd fast float %2373, -1.000000e+00
  %2377 = fadd fast float %2374, -1.000000e+00
  %2378 = fadd fast float %2375, -1.000000e+00
  %2379 = fmul fast float %2376, %2376
  %2380 = fmul fast float %2377, %2377
  %2381 = fadd fast float %2379, %2380
  %2382 = fmul fast float %2378, %2378
  %2383 = fadd fast float %2381, %2382
  %2384 = call float @dx.op.unary.f32(i32 24, float %2383)  ; Sqrt(value)
  %2385 = fcmp fast ogt float %2384, 0.000000e+00
  br i1 %2385, label %2386, label %2390

; <label>:2386                                    ; preds = %2336
  %2387 = fdiv fast float %2376, %2384
  %2388 = fdiv fast float %2377, %2384
  %2389 = fdiv fast float %2378, %2384
  br label %2390

; <label>:2390                                    ; preds = %2386, %2336
  %2391 = phi float [ %2387, %2386 ], [ 0.000000e+00, %2336 ]
  %2392 = phi float [ %2388, %2386 ], [ 0.000000e+00, %2336 ]
  %2393 = phi float [ %2389, %2386 ], [ 0.000000e+00, %2336 ]
  %2394 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2395 = extractvalue %dx.types.CBufRet.f32 %2394, 0
  %2396 = extractvalue %dx.types.CBufRet.f32 %2394, 1
  %2397 = fsub fast float %1550, %2395
  %2398 = fsub fast float %1551, %2396
  %2399 = fmul fast float %2397, %2397
  %2400 = fmul fast float %2398, %2398
  %2401 = fadd fast float %2399, %2400
  %2402 = call float @dx.op.unary.f32(i32 24, float %2401)  ; Sqrt(value)
  %2403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2404 = extractvalue %dx.types.CBufRet.f32 %2403, 0
  %2405 = extractvalue %dx.types.CBufRet.f32 %2403, 1
  %2406 = fsub fast float %2402, %2404
  %2407 = fdiv fast float %2406, %2405
  %2408 = call float @dx.op.unary.f32(i32 7, float %2407)  ; Saturate(value)
  %2409 = fmul fast float %2408, 2.000000e+00
  %2410 = fsub fast float 3.000000e+00, %2409
  %2411 = fmul fast float %2408, %2408
  %2412 = fmul fast float %2411, %2410
  %2413 = call float @dx.op.dot3.f32(i32 55, float %2391, float %2392, float %2393, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %2414 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2413)  ; FMax(a,b)
  %2415 = fmul fast float %2414, 0x400C5BF8A0000000
  %2416 = fmul fast float %2412, %2365
  %2417 = fmul fast float %2416, %2415
  %2418 = fadd fast float %2417, %2334
  %2419 = fmul fast float %2412, %2366
  %2420 = fmul fast float %2419, %2415
  %2421 = fadd fast float %2420, %2333
  %2422 = fmul fast float %2412, %2367
  %2423 = fmul fast float %2422, %2415
  %2424 = fadd fast float %2423, %2332
  br label %2425

; <label>:2425                                    ; preds = %2390, %2331, %2259
  %2426 = phi float [ %2424, %2390 ], [ %2332, %2331 ], [ %2271, %2259 ]
  %2427 = phi float [ %2421, %2390 ], [ %2333, %2331 ], [ %2270, %2259 ]
  %2428 = phi float [ %2418, %2390 ], [ %2334, %2331 ], [ %2269, %2259 ]
  %2429 = fcmp fast ogt float %1916, %1953
  %2430 = and i1 %2272, %2429
  %2431 = and i1 %2274, %2430
  %2432 = and i1 %2276, %2431
  %2433 = and i1 %2278, %2432
  br i1 %2433, label %2434, label %2491, !dx.controlflow.hints !65

; <label>:2434                                    ; preds = %2425
  %2435 = fmul fast float %1955, 0x3FC24924A0000000
  %2436 = fsub fast float %1916, %1953
  %2437 = fdiv fast float %2436, %2435
  %2438 = call float @dx.op.unary.f32(i32 7, float %2437)  ; Saturate(value)
  %2439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2440 = extractvalue %dx.types.CBufRet.f32 %2439, 0
  %2441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2442 = extractvalue %dx.types.CBufRet.f32 %2441, 0
  %2443 = extractvalue %dx.types.CBufRet.f32 %2441, 1
  %2444 = extractvalue %dx.types.CBufRet.f32 %2441, 2
  %2445 = fsub fast float %2440, %2428
  %2446 = fsub fast float %2442, %2266
  %2447 = fsub fast float %2443, %2267
  %2448 = fsub fast float %2444, %2268
  %2449 = fmul fast float %2445, %2438
  %2450 = fmul fast float %2446, %2438
  %2451 = fmul fast float %2447, %2438
  %2452 = fmul fast float %2448, %2438
  %2453 = fadd fast float %2449, %2428
  %2454 = fadd fast float %2450, %2266
  %2455 = fadd fast float %2451, %2267
  %2456 = fadd fast float %2452, %2268
  %2457 = extractvalue %dx.types.CBufRet.f32 %2439, 1
  %2458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2459 = extractvalue %dx.types.CBufRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.CBufRet.f32 %2458, 1
  %2461 = extractvalue %dx.types.CBufRet.f32 %2458, 2
  %2462 = fsub fast float %2457, %2427
  %2463 = fsub fast float %2459, %2263
  %2464 = fsub fast float %2460, %2264
  %2465 = fsub fast float %2461, %2265
  %2466 = fmul fast float %2462, %2438
  %2467 = fmul fast float %2463, %2438
  %2468 = fmul fast float %2464, %2438
  %2469 = fmul fast float %2465, %2438
  %2470 = fadd fast float %2466, %2427
  %2471 = fadd fast float %2467, %2263
  %2472 = fadd fast float %2468, %2264
  %2473 = fadd fast float %2469, %2265
  %2474 = extractvalue %dx.types.CBufRet.f32 %2439, 2
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 0
  %2477 = extractvalue %dx.types.CBufRet.f32 %2475, 1
  %2478 = extractvalue %dx.types.CBufRet.f32 %2475, 2
  %2479 = fsub fast float %2474, %2426
  %2480 = fsub fast float %2476, %2260
  %2481 = fsub fast float %2477, %2261
  %2482 = fsub fast float %2478, %2262
  %2483 = fmul fast float %2479, %2438
  %2484 = fmul fast float %2480, %2438
  %2485 = fmul fast float %2481, %2438
  %2486 = fmul fast float %2482, %2438
  %2487 = fadd fast float %2483, %2426
  %2488 = fadd fast float %2484, %2260
  %2489 = fadd fast float %2485, %2261
  %2490 = fadd fast float %2486, %2262
  br label %2491

; <label>:2491                                    ; preds = %2434, %2425
  %2492 = phi float [ %2487, %2434 ], [ %2426, %2425 ]
  %2493 = phi float [ %2488, %2434 ], [ %2260, %2425 ]
  %2494 = phi float [ %2489, %2434 ], [ %2261, %2425 ]
  %2495 = phi float [ %2490, %2434 ], [ %2262, %2425 ]
  %2496 = phi float [ %2470, %2434 ], [ %2427, %2425 ]
  %2497 = phi float [ %2471, %2434 ], [ %2263, %2425 ]
  %2498 = phi float [ %2472, %2434 ], [ %2264, %2425 ]
  %2499 = phi float [ %2473, %2434 ], [ %2265, %2425 ]
  %2500 = phi float [ %2453, %2434 ], [ %2428, %2425 ]
  %2501 = phi float [ %2454, %2434 ], [ %2266, %2425 ]
  %2502 = phi float [ %2455, %2434 ], [ %2267, %2425 ]
  %2503 = phi float [ %2456, %2434 ], [ %2268, %2425 ]
  %2504 = extractvalue %dx.types.CBufRet.f32 %2078, 3
  %2505 = fmul fast float %2504, %2500
  %2506 = fmul fast float %2504, %2496
  %2507 = fmul fast float %2504, %2492
  %2508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2509 = extractvalue %dx.types.CBufRet.f32 %2508, 3
  %2510 = fmul fast float %2505, %2509
  %2511 = fmul fast float %2506, %2509
  %2512 = fmul fast float %2507, %2509
  %2513 = fmul fast float %2501, 1.500000e+00
  %2514 = fmul fast float %2513, %2504
  %2515 = fmul fast float %2514, %2509
  %2516 = fmul fast float %2502, 1.500000e+00
  %2517 = fmul fast float %2516, %2504
  %2518 = fmul fast float %2517, %2509
  %2519 = fmul fast float %2503, 1.500000e+00
  %2520 = fmul fast float %2519, %2504
  %2521 = fmul fast float %2520, %2509
  %2522 = fmul fast float %2497, 1.500000e+00
  %2523 = fmul fast float %2522, %2504
  %2524 = fmul fast float %2523, %2509
  %2525 = fmul fast float %2498, 1.500000e+00
  %2526 = fmul fast float %2525, %2504
  %2527 = fmul fast float %2526, %2509
  %2528 = fmul fast float %2499, 1.500000e+00
  %2529 = fmul fast float %2528, %2504
  %2530 = fmul fast float %2529, %2509
  %2531 = fmul fast float %2493, 1.500000e+00
  %2532 = fmul fast float %2531, %2504
  %2533 = fmul fast float %2532, %2509
  %2534 = fmul fast float %2494, 1.500000e+00
  %2535 = fmul fast float %2534, %2504
  %2536 = fmul fast float %2535, %2509
  %2537 = fmul fast float %2495, 1.500000e+00
  %2538 = fmul fast float %2537, %2504
  %2539 = fmul fast float %2538, %2509
  %2540 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2510)  ; FMax(a,b)
  %2541 = call float @dx.op.dot3.f32(i32 55, float %2515, float %2518, float %2521, float %2515, float %2518, float %2521)  ; Dot3(ax,ay,az,bx,by,bz)
  %2542 = fcmp fast oeq float %2541, 0.000000e+00
  %2543 = fcmp fast oeq float %2540, 0.000000e+00
  %2544 = or i1 %2543, %2542
  br i1 %2544, label %2574, label %2545

; <label>:2545                                    ; preds = %2491
  %2546 = fsub fast float -0.000000e+00, %2521
  %2547 = fsub fast float -0.000000e+00, %2515
  %2548 = call float @dx.op.unary.f32(i32 24, float %2541)  ; Sqrt(value)
  %2549 = fdiv fast float %2548, %2540
  %2550 = fcmp fast ogt float %2549, 0x3FFB6F8900000000
  %2551 = select i1 %2550, float 0x3FFB6F8900000000, float %2549
  %2552 = fmul fast float %2551, 0x3FE8A23460000000
  %2553 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2554 = call float @dx.op.binary.f32(i32 35, float %2551, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2555 = fmul fast float %2553, %2540
  %2556 = fmul fast float %2554, 0x3FF279A740000000
  %2557 = fadd fast float %2556, -1.000000e+00
  %2558 = call float @dx.op.dot3.f32(i32 55, float %2546, float %2547, float %2518, float %2546, float %2547, float %2518)  ; Dot3(ax,ay,az,bx,by,bz)
  %2559 = call float @dx.op.unary.f32(i32 25, float %2558)  ; Rsqrt(value)
  %2560 = fmul fast float %2559, %2546
  %2561 = fmul fast float %2559, %2547
  %2562 = fmul fast float %2559, %2518
  %2563 = fmul fast float %2557, %2557
  %2564 = fsub fast float 1.000000e+00, %2563
  %2565 = fmul fast float %2554, 0x40005F8BE0000000
  %2566 = fsub fast float 0x400C5BF8A0000000, %2565
  %2567 = fdiv fast float %2555, %2566
  %2568 = fmul fast float %2567, 0x3FEE31C3C0000000
  %2569 = fmul fast float %2568, %2564
  %2570 = fmul fast float %2554, 0x3FDACB7480000000
  %2571 = fadd fast float %2570, 0xBFD7347680000000
  %2572 = fmul fast float %2571, %2567
  %2573 = fmul fast float %2572, %2564
  br label %2574

; <label>:2574                                    ; preds = %2545, %2491
  %2575 = phi float [ %2560, %2545 ], [ 0.000000e+00, %2491 ]
  %2576 = phi float [ %2561, %2545 ], [ 0.000000e+00, %2491 ]
  %2577 = phi float [ %2562, %2545 ], [ 0.000000e+00, %2491 ]
  %2578 = phi float [ %2569, %2545 ], [ 0.000000e+00, %2491 ]
  %2579 = phi float [ %2573, %2545 ], [ 0.000000e+00, %2491 ]
  %2580 = call float @dx.op.dot3.f32(i32 55, float %2575, float %2576, float %2577, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %2581 = fmul fast float %2580, %2580
  %2582 = fmul fast float %2581, 0x3FEE471020000000
  %2583 = fadd fast float %2582, 0xBFD42F6020000000
  %2584 = fmul fast float %2540, 0x3FD20DD760000000
  %2585 = fmul fast float %2583, %2579
  %2586 = fmul fast float %2578, 0x3FDF454380000000
  %2587 = fmul fast float %2586, %2580
  %2588 = fadd fast float %2587, %2584
  %2589 = fadd fast float %2588, %2585
  %2590 = call float @dx.op.dot3.f32(i32 55, float %2575, float %2576, float %2577, float %1540, float %1541, float %1542)  ; Dot3(ax,ay,az,bx,by,bz)
  %2591 = fmul fast float %2590, 0x3FDF454380000000
  %2592 = fmul fast float %2590, %2590
  %2593 = fmul fast float %2592, 0x3FEE471020000000
  %2594 = fadd fast float %2593, 0xBFD42F6020000000
  %2595 = call float @dx.op.dot3.f32(i32 55, float %2540, float %2578, float %2579, float 0x3FD20DD760000000, float %2591, float %2594)  ; Dot3(ax,ay,az,bx,by,bz)
  %2596 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2511)  ; FMax(a,b)
  %2597 = call float @dx.op.dot3.f32(i32 55, float %2524, float %2527, float %2530, float %2524, float %2527, float %2530)  ; Dot3(ax,ay,az,bx,by,bz)
  %2598 = fcmp fast oeq float %2597, 0.000000e+00
  %2599 = fcmp fast oeq float %2596, 0.000000e+00
  %2600 = or i1 %2599, %2598
  br i1 %2600, label %2630, label %2601

; <label>:2601                                    ; preds = %2574
  %2602 = fsub fast float -0.000000e+00, %2530
  %2603 = fsub fast float -0.000000e+00, %2524
  %2604 = call float @dx.op.unary.f32(i32 24, float %2597)  ; Sqrt(value)
  %2605 = fdiv fast float %2604, %2596
  %2606 = fcmp fast ogt float %2605, 0x3FFB6F8900000000
  %2607 = select i1 %2606, float 0x3FFB6F8900000000, float %2605
  %2608 = fmul fast float %2607, 0x3FE8A23460000000
  %2609 = call float @dx.op.unary.f32(i32 7, float %2608)  ; Saturate(value)
  %2610 = call float @dx.op.binary.f32(i32 35, float %2607, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2611 = fmul fast float %2609, %2596
  %2612 = fmul fast float %2610, 0x3FF279A740000000
  %2613 = fadd fast float %2612, -1.000000e+00
  %2614 = call float @dx.op.dot3.f32(i32 55, float %2602, float %2603, float %2527, float %2602, float %2603, float %2527)  ; Dot3(ax,ay,az,bx,by,bz)
  %2615 = call float @dx.op.unary.f32(i32 25, float %2614)  ; Rsqrt(value)
  %2616 = fmul fast float %2615, %2602
  %2617 = fmul fast float %2615, %2603
  %2618 = fmul fast float %2615, %2527
  %2619 = fmul fast float %2613, %2613
  %2620 = fsub fast float 1.000000e+00, %2619
  %2621 = fmul fast float %2610, 0x40005F8BE0000000
  %2622 = fsub fast float 0x400C5BF8A0000000, %2621
  %2623 = fdiv fast float %2611, %2622
  %2624 = fmul fast float %2623, 0x3FEE31C3C0000000
  %2625 = fmul fast float %2624, %2620
  %2626 = fmul fast float %2610, 0x3FDACB7480000000
  %2627 = fadd fast float %2626, 0xBFD7347680000000
  %2628 = fmul fast float %2627, %2623
  %2629 = fmul fast float %2628, %2620
  br label %2630

; <label>:2630                                    ; preds = %2601, %2574
  %2631 = phi float [ %2616, %2601 ], [ 0.000000e+00, %2574 ]
  %2632 = phi float [ %2617, %2601 ], [ 0.000000e+00, %2574 ]
  %2633 = phi float [ %2618, %2601 ], [ 0.000000e+00, %2574 ]
  %2634 = phi float [ %2625, %2601 ], [ 0.000000e+00, %2574 ]
  %2635 = phi float [ %2629, %2601 ], [ 0.000000e+00, %2574 ]
  %2636 = call float @dx.op.dot3.f32(i32 55, float %2631, float %2632, float %2633, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %2637 = fmul fast float %2636, %2636
  %2638 = fmul fast float %2637, 0x3FEE471020000000
  %2639 = fadd fast float %2638, 0xBFD42F6020000000
  %2640 = fmul fast float %2596, 0x3FD20DD760000000
  %2641 = fmul fast float %2639, %2635
  %2642 = fmul fast float %2634, 0x3FDF454380000000
  %2643 = fmul fast float %2642, %2636
  %2644 = fadd fast float %2643, %2640
  %2645 = fadd fast float %2644, %2641
  %2646 = call float @dx.op.dot3.f32(i32 55, float %2631, float %2632, float %2633, float %1540, float %1541, float %1542)  ; Dot3(ax,ay,az,bx,by,bz)
  %2647 = fmul fast float %2646, 0x3FDF454380000000
  %2648 = fmul fast float %2646, %2646
  %2649 = fmul fast float %2648, 0x3FEE471020000000
  %2650 = fadd fast float %2649, 0xBFD42F6020000000
  %2651 = call float @dx.op.dot3.f32(i32 55, float %2596, float %2634, float %2635, float 0x3FD20DD760000000, float %2647, float %2650)  ; Dot3(ax,ay,az,bx,by,bz)
  %2652 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2512)  ; FMax(a,b)
  %2653 = call float @dx.op.dot3.f32(i32 55, float %2533, float %2536, float %2539, float %2533, float %2536, float %2539)  ; Dot3(ax,ay,az,bx,by,bz)
  %2654 = fcmp fast oeq float %2653, 0.000000e+00
  %2655 = fcmp fast oeq float %2652, 0.000000e+00
  %2656 = or i1 %2655, %2654
  br i1 %2656, label %2686, label %2657

; <label>:2657                                    ; preds = %2630
  %2658 = fsub fast float -0.000000e+00, %2539
  %2659 = fsub fast float -0.000000e+00, %2533
  %2660 = call float @dx.op.unary.f32(i32 24, float %2653)  ; Sqrt(value)
  %2661 = fdiv fast float %2660, %2652
  %2662 = fcmp fast ogt float %2661, 0x3FFB6F8900000000
  %2663 = select i1 %2662, float 0x3FFB6F8900000000, float %2661
  %2664 = fmul fast float %2663, 0x3FE8A23460000000
  %2665 = call float @dx.op.unary.f32(i32 7, float %2664)  ; Saturate(value)
  %2666 = call float @dx.op.binary.f32(i32 35, float %2663, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2667 = fmul fast float %2665, %2652
  %2668 = fmul fast float %2666, 0x3FF279A740000000
  %2669 = fadd fast float %2668, -1.000000e+00
  %2670 = call float @dx.op.dot3.f32(i32 55, float %2658, float %2659, float %2536, float %2658, float %2659, float %2536)  ; Dot3(ax,ay,az,bx,by,bz)
  %2671 = call float @dx.op.unary.f32(i32 25, float %2670)  ; Rsqrt(value)
  %2672 = fmul fast float %2671, %2658
  %2673 = fmul fast float %2671, %2659
  %2674 = fmul fast float %2671, %2536
  %2675 = fmul fast float %2669, %2669
  %2676 = fsub fast float 1.000000e+00, %2675
  %2677 = fmul fast float %2666, 0x40005F8BE0000000
  %2678 = fsub fast float 0x400C5BF8A0000000, %2677
  %2679 = fdiv fast float %2667, %2678
  %2680 = fmul fast float %2679, 0x3FEE31C3C0000000
  %2681 = fmul fast float %2680, %2676
  %2682 = fmul fast float %2666, 0x3FDACB7480000000
  %2683 = fadd fast float %2682, 0xBFD7347680000000
  %2684 = fmul fast float %2683, %2679
  %2685 = fmul fast float %2684, %2676
  br label %2686

; <label>:2686                                    ; preds = %2657, %2630
  %2687 = phi float [ %2672, %2657 ], [ 0.000000e+00, %2630 ]
  %2688 = phi float [ %2673, %2657 ], [ 0.000000e+00, %2630 ]
  %2689 = phi float [ %2674, %2657 ], [ 0.000000e+00, %2630 ]
  %2690 = phi float [ %2681, %2657 ], [ 0.000000e+00, %2630 ]
  %2691 = phi float [ %2685, %2657 ], [ 0.000000e+00, %2630 ]
  %2692 = call float @dx.op.dot3.f32(i32 55, float %2687, float %2688, float %2689, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %2693 = fmul fast float %2692, %2692
  %2694 = fmul fast float %2693, 0x3FEE471020000000
  %2695 = fadd fast float %2694, 0xBFD42F6020000000
  %2696 = fmul fast float %2652, 0x3FD20DD760000000
  %2697 = fmul fast float %2695, %2691
  %2698 = fmul fast float %2690, 0x3FDF454380000000
  %2699 = fmul fast float %2698, %2692
  %2700 = fadd fast float %2699, %2696
  %2701 = fadd fast float %2700, %2697
  %2702 = call float @dx.op.dot3.f32(i32 55, float %2687, float %2688, float %2689, float %1540, float %1541, float %1542)  ; Dot3(ax,ay,az,bx,by,bz)
  %2703 = fmul fast float %2702, 0x3FDF454380000000
  %2704 = fmul fast float %2702, %2702
  %2705 = fmul fast float %2704, 0x3FEE471020000000
  %2706 = fadd fast float %2705, 0xBFD42F6020000000
  %2707 = call float @dx.op.dot3.f32(i32 55, float %2652, float %2690, float %2691, float 0x3FD20DD760000000, float %2703, float %2706)  ; Dot3(ax,ay,az,bx,by,bz)
  %2708 = call float @dx.op.binary.f32(i32 35, float %2589, float 0.000000e+00)  ; FMax(a,b)
  %2709 = call float @dx.op.binary.f32(i32 35, float %2645, float 0.000000e+00)  ; FMax(a,b)
  %2710 = call float @dx.op.binary.f32(i32 35, float %2701, float 0.000000e+00)  ; FMax(a,b)
  %2711 = call float @dx.op.binary.f32(i32 35, float %2595, float 0.000000e+00)  ; FMax(a,b)
  %2712 = call float @dx.op.binary.f32(i32 35, float %2651, float 0.000000e+00)  ; FMax(a,b)
  %2713 = call float @dx.op.binary.f32(i32 35, float %2707, float 0.000000e+00)  ; FMax(a,b)
  %2714 = fsub fast float %1910, %2708
  %2715 = fsub fast float %1911, %2709
  %2716 = fsub fast float %1912, %2710
  %2717 = fmul fast float %2714, %1591
  %2718 = fmul fast float %2715, %1591
  %2719 = fmul fast float %2716, %1591
  %2720 = fadd fast float %2717, %2708
  %2721 = fadd fast float %2718, %2709
  %2722 = fadd fast float %2719, %2710
  %2723 = fsub fast float %1907, %2711
  %2724 = fsub fast float %1908, %2712
  %2725 = fsub fast float %1909, %2713
  %2726 = fmul fast float %2723, %1591
  %2727 = fmul fast float %2724, %1591
  %2728 = fmul fast float %2725, %1591
  %2729 = fadd fast float %2726, %2711
  %2730 = fadd fast float %2727, %2712
  %2731 = fadd fast float %2728, %2713
  br label %2732

; <label>:2732                                    ; preds = %2686, %1906
  %2733 = phi float [ %2729, %2686 ], [ %1907, %1906 ]
  %2734 = phi float [ %2730, %2686 ], [ %1908, %1906 ]
  %2735 = phi float [ %2731, %2686 ], [ %1909, %1906 ]
  %2736 = phi float [ %2720, %2686 ], [ %1910, %1906 ]
  %2737 = phi float [ %2721, %2686 ], [ %1911, %1906 ]
  %2738 = phi float [ %2722, %2686 ], [ %1912, %1906 ]
  %2739 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2740 = extractvalue %dx.types.CBufRet.f32 %2739, 0
  %2741 = call float @dx.op.binary.f32(i32 36, float %1521, float %2740)  ; FMin(a,b)
  %2742 = fsub fast float 1.000000e+00, %1543
  %2743 = fmul fast float %2741, %2742
  %2744 = fsub fast float 1.000000e+00, %2743
  %2745 = bitcast float %2744 to i32
  %2746 = sub nsw i32 2129859010, %2745
  %2747 = bitcast i32 %2746 to float
  %2748 = call float @dx.op.binary.f32(i32 36, float %1522, float %2740)  ; FMin(a,b)
  %2749 = fmul fast float %2748, %2742
  %2750 = fsub fast float 1.000000e+00, %2749
  %2751 = bitcast float %2750 to i32
  %2752 = sub nsw i32 2129859010, %2751
  %2753 = bitcast i32 %2752 to float
  %2754 = call float @dx.op.binary.f32(i32 36, float %1523, float %2740)  ; FMin(a,b)
  %2755 = fmul fast float %2754, %2742
  %2756 = fsub fast float 1.000000e+00, %2755
  %2757 = bitcast float %2756 to i32
  %2758 = sub nsw i32 2129859010, %2757
  %2759 = bitcast i32 %2758 to float
  %2760 = fmul fast float %2736, %1543
  %2761 = fmul fast float %2760, %2747
  %2762 = fmul fast float %2737, %1543
  %2763 = fmul fast float %2762, %2753
  %2764 = fmul fast float %2738, %1543
  %2765 = fmul fast float %2764, %2759
  %2766 = call float @dx.op.binary.f32(i32 36, float %1524, float %2740)  ; FMin(a,b)
  %2767 = fmul fast float %2766, %2742
  %2768 = fsub fast float 1.000000e+00, %2767
  %2769 = bitcast float %2768 to i32
  %2770 = sub nsw i32 2129859010, %2769
  %2771 = bitcast i32 %2770 to float
  %2772 = call float @dx.op.binary.f32(i32 36, float %1525, float %2740)  ; FMin(a,b)
  %2773 = fmul fast float %2772, %2742
  %2774 = fsub fast float 1.000000e+00, %2773
  %2775 = bitcast float %2774 to i32
  %2776 = sub nsw i32 2129859010, %2775
  %2777 = bitcast i32 %2776 to float
  %2778 = call float @dx.op.binary.f32(i32 36, float %1532, float %2740)  ; FMin(a,b)
  %2779 = fmul fast float %2778, %2742
  %2780 = fsub fast float 1.000000e+00, %2779
  %2781 = bitcast float %2780 to i32
  %2782 = sub nsw i32 2129859010, %2781
  %2783 = bitcast i32 %2782 to float
  %2784 = fmul fast float %2733, %1543
  %2785 = fmul fast float %2784, %2771
  %2786 = fmul fast float %2734, %1543
  %2787 = fmul fast float %2786, %2777
  %2788 = fmul fast float %2735, %1543
  %2789 = fmul fast float %2788, %2783
  %2790 = call float @dx.op.dot3.f32(i32 55, float %2761, float %2763, float %2765, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2791 = select i1 %163, float 0.000000e+00, float %2761
  %2792 = select i1 %163, float %2790, float %2763
  %2793 = select i1 %163, float 0.000000e+00, float %2765
  %2794 = call float @dx.op.dot3.f32(i32 55, float %2785, float %2787, float %2789, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2795 = select i1 %163, float 0.000000e+00, float %2785
  %2796 = select i1 %163, float %2794, float %2787
  %2797 = select i1 %163, float 0.000000e+00, float %2789
  %2798 = fmul fast float %1534, 9.843750e-01
  %2799 = fmul fast float %1530, 9.843750e-01
  %2800 = fadd fast float %2798, 7.812500e-03
  %2801 = fadd fast float %2799, 7.812500e-03
  %2802 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %2800, float %2801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2803 = extractvalue %dx.types.ResRet.f32 %2802, 2
  %2804 = extractvalue %dx.types.ResRet.f32 %2802, 3
  %2805 = fmul fast float %2803, %1524
  %2806 = fmul fast float %2803, %1525
  %2807 = fmul fast float %2803, %1532
  %2808 = fadd fast float %2805, %2804
  %2809 = fadd fast float %2806, %2804
  %2810 = fadd fast float %2807, %2804
  %2811 = fcmp fast ogt float %1189, 0.000000e+00
  br i1 %2811, label %2812, label %2838

; <label>:2812                                    ; preds = %2732
  %2813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %22, float %1189, float %1534, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2814 = extractvalue %dx.types.ResRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.ResRet.f32 %2813, 1
  %2816 = extractvalue %dx.types.ResRet.f32 %2813, 2
  %2817 = fadd fast float %2814, -5.000000e-01
  %2818 = fadd fast float %2815, -5.000000e-01
  %2819 = fadd fast float %2816, -5.000000e-01
  %2820 = fsub fast float 1.000000e+00, %1524
  %2821 = fsub fast float 1.000000e+00, %1525
  %2822 = fsub fast float 1.000000e+00, %1532
  %2823 = fmul fast float %1524, 4.000000e+00
  %2824 = fmul fast float %2823, %2820
  %2825 = fmul fast float %2824, %2817
  %2826 = fmul fast float %1525, 4.000000e+00
  %2827 = fmul fast float %2826, %2821
  %2828 = fmul fast float %2827, %2818
  %2829 = fmul fast float %1532, 4.000000e+00
  %2830 = fmul fast float %2829, %2822
  %2831 = fmul fast float %2830, %2819
  %2832 = fadd fast float %2825, %2808
  %2833 = fadd fast float %2828, %2809
  %2834 = fadd fast float %2831, %2810
  %2835 = call float @dx.op.unary.f32(i32 7, float %2832)  ; Saturate(value)
  %2836 = call float @dx.op.unary.f32(i32 7, float %2833)  ; Saturate(value)
  %2837 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  br label %2838

; <label>:2838                                    ; preds = %2812, %2732
  %2839 = phi float [ %2835, %2812 ], [ %2808, %2732 ]
  %2840 = phi float [ %2836, %2812 ], [ %2809, %2732 ]
  %2841 = phi float [ %2837, %2812 ], [ %2810, %2732 ]
  %2842 = call float @dx.op.binary.f32(i32 35, float %2840, float %2841)  ; FMax(a,b)
  %2843 = call float @dx.op.binary.f32(i32 35, float %2839, float %2842)  ; FMax(a,b)
  %2844 = fsub fast float 1.000000e+00, %2843
  %2845 = fmul fast float %2844, %2791
  %2846 = fmul fast float %2844, %2792
  %2847 = fmul fast float %2844, %2793
  %2848 = call float @dx.op.dot3.f32(i32 55, float %1521, float %1522, float %1523, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2849 = fcmp fast ogt float %2848, 0x3E7FF19E20000000
  %2850 = fdiv fast float 1.000000e+00, %2848
  %2851 = select i1 %2849, float %2850, float 0.000000e+00
  %2852 = fmul fast float %2851, %1521
  %2853 = fmul fast float %2851, %1522
  %2854 = fmul fast float %2851, %1523
  %2855 = fadd fast float %2852, -1.000000e+00
  %2856 = fadd fast float %2853, -1.000000e+00
  %2857 = fadd fast float %2854, -1.000000e+00
  %2858 = fmul fast float %2855, 5.000000e-01
  %2859 = fmul fast float %2856, 5.000000e-01
  %2860 = fmul fast float %2857, 5.000000e-01
  %2861 = fadd fast float %2858, 1.000000e+00
  %2862 = fadd fast float %2859, 1.000000e+00
  %2863 = fadd fast float %2860, 1.000000e+00
  %2864 = fmul fast float %2839, %2795
  %2865 = fmul fast float %2840, %2796
  %2866 = fmul fast float %2841, %2797
  %2867 = fsub fast float 1.000000e+00, %1534
  %2868 = bitcast float %2867 to i32
  %2869 = sitofp i32 %2868 to float
  %2870 = fmul fast float %2869, 5.000000e+00
  %2871 = fadd fast float %2870, 0xC1EFBF8940000000
  %2872 = fptosi float %2871 to i32
  %2873 = bitcast i32 %2872 to float
  %2874 = fmul fast float %2873, %1188
  %2875 = fmul fast float %2791, %2874
  %2876 = fmul fast float %2875, %2844
  %2877 = fmul fast float %2876, %2861
  %2878 = fmul fast float %2792, %2874
  %2879 = fmul fast float %2878, %2844
  %2880 = fmul fast float %2879, %2862
  %2881 = fmul fast float %2793, %2874
  %2882 = fmul fast float %2881, %2844
  %2883 = fmul fast float %2882, %2863
  %2884 = fmul fast float %2845, %1209
  %2885 = fmul fast float %2846, %1209
  %2886 = fmul fast float %2847, %1209
  %2887 = fadd fast float %2864, %1190
  %2888 = fadd fast float %2887, %2877
  %2889 = fmul fast float %2888, %1209
  %2890 = fadd fast float %2865, %1191
  %2891 = fadd fast float %2890, %2880
  %2892 = fmul fast float %2891, %1209
  %2893 = fadd fast float %2866, %1192
  %2894 = fadd fast float %2893, %2883
  %2895 = fmul fast float %2894, %1209
  %2896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2897 = extractvalue %dx.types.CBufRet.f32 %2896, 3
  %2898 = fcmp fast oeq float %2897, 0.000000e+00
  br i1 %2898, label %3127, label %2899

; <label>:2899                                    ; preds = %2838
  %2900 = extractvalue %dx.types.CBufRet.f32 %2896, 0
  %2901 = extractvalue %dx.types.CBufRet.f32 %2896, 1
  %2902 = extractvalue %dx.types.CBufRet.f32 %2896, 2
  %2903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2904 = extractvalue %dx.types.CBufRet.f32 %2903, 0
  %2905 = extractvalue %dx.types.CBufRet.f32 %2903, 1
  %2906 = extractvalue %dx.types.CBufRet.f32 %2903, 2
  %2907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2908 = extractvalue %dx.types.CBufRet.f32 %2907, 0
  %2909 = extractvalue %dx.types.CBufRet.f32 %2907, 1
  %2910 = call float @dx.op.dot3.f32(i32 55, float %2904, float %2905, float %2906, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2911 = select i1 %163, float %2908, float %2904
  %2912 = select i1 %163, float %2910, float %2905
  %2913 = select i1 %163, float %2909, float %2906
  %2914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2915 = extractvalue %dx.types.CBufRet.f32 %2914, 1
  %2916 = fcmp fast une float %2915, 0.000000e+00
  br i1 %2916, label %2917, label %2934

; <label>:2917                                    ; preds = %2899
  %2918 = fptoui float %46 to i32
  %2919 = fptoui float %47 to i32
  %2920 = lshr i32 %2918, 4
  %2921 = lshr i32 %2919, 4
  %2922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2923 = extractvalue %dx.types.CBufRet.f32 %2922, 0
  %2924 = fptoui float %2923 to i32
  %2925 = add i32 %2924, 15
  %2926 = lshr i32 %2925, 4
  %2927 = mul i32 %2926, %2921
  %2928 = add i32 %2927, %2920
  %2929 = shl i32 %2928, 3
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, -268435456
  %2933 = icmp eq i32 %2932, -1342177280
  br i1 %2933, label %2944, label %2934

; <label>:2934                                    ; preds = %2917, %2899
  %2935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %24, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2936 = extractvalue %dx.types.CBufRet.f32 %2935, 2
  %2937 = extractvalue %dx.types.CBufRet.f32 %2935, 3
  %2938 = fmul fast float %2936, %46
  %2939 = fmul fast float %2937, %47
  %2940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %23, float %2938, float %2939, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.ResRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.ResRet.f32 %2940, 2
  br label %2944

; <label>:2944                                    ; preds = %2934, %2917
  %2945 = phi float [ %2941, %2934 ], [ 0.000000e+00, %2917 ]
  %2946 = phi float [ %2942, %2934 ], [ 0.000000e+00, %2917 ]
  %2947 = phi float [ %2943, %2934 ], [ 0.000000e+00, %2917 ]
  %2948 = call float @dx.op.binary.f32(i32 36, float %2946, float %2947)  ; FMin(a,b)
  %2949 = call float @dx.op.binary.f32(i32 36, float %2945, float %2948)  ; FMin(a,b)
  %2950 = fcmp fast ogt float %2949, 0.000000e+00
  br i1 %2950, label %2951, label %3127, !dx.controlflow.hints !66

; <label>:2951                                    ; preds = %2944
  %2952 = fmul fast float %2945, %2911
  %2953 = fmul fast float %2946, %2912
  %2954 = fmul fast float %2947, %2913
  %2955 = fsub fast float %2900, %1520
  %2956 = fsub fast float %2901, %1519
  %2957 = fsub fast float %2902, %1518
  %2958 = call float @dx.op.dot3.f32(i32 55, float %2955, float %2956, float %2957, float %2955, float %2956, float %2957)  ; Dot3(ax,ay,az,bx,by,bz)
  %2959 = call float @dx.op.unary.f32(i32 25, float %2958)  ; Rsqrt(value)
  %2960 = fmul fast float %2959, %2955
  %2961 = fmul fast float %2959, %2956
  %2962 = fmul fast float %2959, %2957
  %2963 = call float @dx.op.dot3.f32(i32 55, float %2900, float %2901, float %2902, float %1527, float %1528, float %1529)  ; Dot3(ax,ay,az,bx,by,bz)
  %2964 = call float @dx.op.dot3.f32(i32 55, float %1517, float %1516, float %1515, float %2960, float %2961, float %2962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2965 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2966 = bitcast i32 %1546 to float
  %2967 = fmul fast float %2965, %2965
  %2968 = fmul fast float %2967, %2966
  %2969 = call float @dx.op.unary.f32(i32 7, float %2968)  ; Saturate(value)
  %2970 = fmul fast float %2969, %2965
  %2971 = call float @dx.op.dot3.f32(i32 55, float %1527, float %1528, float %1529, float %2960, float %2961, float %2962)  ; Dot3(ax,ay,az,bx,by,bz)
  %2972 = fmul fast float %2971, %2971
  %2973 = call float @dx.op.unary.f32(i32 6, float %2963)  ; FAbs(value)
  %2974 = fsub fast float 1.000000e+00, %1530
  %2975 = call float @dx.op.binary.f32(i32 35, float %2974, float 0x3F847AE140000000)  ; FMax(a,b)
  %2976 = fmul fast float %2975, %2975
  %2977 = fmul fast float %2976, %2976
  %2978 = fsub fast float 1.000000e+00, %2977
  %2979 = fmul fast float %1534, %1534
  %2980 = fmul fast float %2979, %2978
  %2981 = fadd fast float %2980, %2977
  %2982 = bitcast float %2981 to i32
  %2983 = ashr i32 %2982, 1
  %2984 = add nsw i32 %2983, 532487669
  %2985 = bitcast i32 %2984 to float
  %2986 = fadd fast float %2985, %1534
  %2987 = fmul fast float %2977, %2972
  %2988 = fsub fast float 1.000000e+00, %2972
  %2989 = fadd fast float %2988, %2987
  %2990 = fmul fast float %2973, %2973
  %2991 = fmul fast float %2990, %2978
  %2992 = fadd fast float %2991, %2977
  %2993 = bitcast float %2992 to i32
  %2994 = ashr i32 %2993, 1
  %2995 = add nsw i32 %2994, 532487669
  %2996 = bitcast i32 %2995 to float
  %2997 = fadd fast float %2996, %2973
  %2998 = fmul fast float %2989, %2989
  %2999 = fmul fast float %2998, %2986
  %3000 = fmul fast float %2999, %2997
  %3001 = fdiv fast float 0x3FF0A00000000000, %3000
  %3002 = fmul fast float %3001, %2977
  %3003 = call float @dx.op.unary.f32(i32 6, float %2964)  ; FAbs(value)
  %3004 = fsub fast float 1.000000e+00, %3003
  %3005 = bitcast float %3004 to i32
  %3006 = sitofp i32 %3005 to float
  %3007 = fmul fast float %3006, 5.000000e+00
  %3008 = fadd fast float %3007, 0xC1EFBF8940000000
  %3009 = fptosi float %3008 to i32
  %3010 = bitcast i32 %3009 to float
  %3011 = fsub fast float 1.000000e+00, %1524
  %3012 = fsub fast float 1.000000e+00, %1525
  %3013 = fsub fast float 1.000000e+00, %1532
  %3014 = fmul fast float %3010, %3011
  %3015 = fmul fast float %3010, %3012
  %3016 = fmul fast float %3010, %3013
  %3017 = fadd fast float %3014, %1524
  %3018 = fadd fast float %3015, %1525
  %3019 = fadd fast float %3016, %1532
  br i1 %2811, label %3020, label %3043

; <label>:3020                                    ; preds = %2951
  %3021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %22, float %1189, float %3003, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3022 = extractvalue %dx.types.ResRet.f32 %3021, 0
  %3023 = extractvalue %dx.types.ResRet.f32 %3021, 1
  %3024 = extractvalue %dx.types.ResRet.f32 %3021, 2
  %3025 = fadd fast float %3022, -5.000000e-01
  %3026 = fadd fast float %3023, -5.000000e-01
  %3027 = fadd fast float %3024, -5.000000e-01
  %3028 = fmul fast float %1524, 4.000000e+00
  %3029 = fmul fast float %3028, %3011
  %3030 = fmul fast float %3029, %3025
  %3031 = fmul fast float %1525, 4.000000e+00
  %3032 = fmul fast float %3031, %3012
  %3033 = fmul fast float %3032, %3026
  %3034 = fmul fast float %1532, 4.000000e+00
  %3035 = fmul fast float %3034, %3013
  %3036 = fmul fast float %3035, %3027
  %3037 = fadd fast float %3030, %3017
  %3038 = fadd fast float %3033, %3018
  %3039 = fadd fast float %3036, %3019
  %3040 = call float @dx.op.unary.f32(i32 7, float %3037)  ; Saturate(value)
  %3041 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  br label %3043

; <label>:3043                                    ; preds = %3020, %2951
  %3044 = phi float [ %3040, %3020 ], [ %3017, %2951 ]
  %3045 = phi float [ %3041, %3020 ], [ %3018, %2951 ]
  %3046 = phi float [ %3042, %3020 ], [ %3019, %2951 ]
  %3047 = fmul fast float %2963, 9.843750e-01
  %3048 = fadd fast float %3047, 7.812500e-03
  %3049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %22, float %3048, float %2801, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 2
  %3051 = extractvalue %dx.types.ResRet.f32 %3049, 3
  %3052 = fmul fast float %3050, %1524
  %3053 = fmul fast float %3050, %1525
  %3054 = fmul fast float %3050, %1532
  %3055 = fadd fast float %3052, %3051
  %3056 = fadd fast float %3053, %3051
  %3057 = fadd fast float %3054, %3051
  br i1 %2811, label %3058, label %3081

; <label>:3058                                    ; preds = %3043
  %3059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %22, float %1189, float %2963, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3061 = extractvalue %dx.types.ResRet.f32 %3059, 1
  %3062 = extractvalue %dx.types.ResRet.f32 %3059, 2
  %3063 = fadd fast float %3060, -5.000000e-01
  %3064 = fadd fast float %3061, -5.000000e-01
  %3065 = fadd fast float %3062, -5.000000e-01
  %3066 = fmul fast float %1524, 4.000000e+00
  %3067 = fmul fast float %3066, %3011
  %3068 = fmul fast float %3067, %3063
  %3069 = fmul fast float %1525, 4.000000e+00
  %3070 = fmul fast float %3069, %3012
  %3071 = fmul fast float %3070, %3064
  %3072 = fmul fast float %1532, 4.000000e+00
  %3073 = fmul fast float %3072, %3013
  %3074 = fmul fast float %3073, %3065
  %3075 = fadd fast float %3068, %3055
  %3076 = fadd fast float %3071, %3056
  %3077 = fadd fast float %3074, %3057
  %3078 = call float @dx.op.unary.f32(i32 7, float %3075)  ; Saturate(value)
  %3079 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3080 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  br label %3081

; <label>:3081                                    ; preds = %3058, %3043
  %3082 = phi float [ %3078, %3058 ], [ %3055, %3043 ]
  %3083 = phi float [ %3079, %3058 ], [ %3056, %3043 ]
  %3084 = phi float [ %3080, %3058 ], [ %3057, %3043 ]
  %3085 = call float @dx.op.binary.f32(i32 35, float %3083, float %3084)  ; FMax(a,b)
  %3086 = call float @dx.op.binary.f32(i32 35, float %3082, float %3085)  ; FMax(a,b)
  %3087 = fsub fast float 1.000000e+00, %3086
  %3088 = fmul fast float %3044, %3002
  %3089 = fmul fast float %3045, %3002
  %3090 = fmul fast float %3046, %3002
  %3091 = fsub fast float 1.000000e+00, %2964
  %3092 = bitcast float %3091 to i32
  %3093 = sitofp i32 %3092 to float
  %3094 = fmul fast float %3093, 5.000000e+00
  %3095 = fadd fast float %3094, 0xC1EFBF8940000000
  %3096 = fptosi float %3095 to i32
  %3097 = bitcast i32 %3096 to float
  %3098 = fmul fast float %3097, %1188
  %3099 = fmul fast float %3087, %3098
  %3100 = fmul fast float %3099, %2861
  %3101 = fmul fast float %3099, %2862
  %3102 = fmul fast float %3099, %2863
  %3103 = fadd fast float %3100, %3088
  %3104 = fadd fast float %3101, %3089
  %3105 = fadd fast float %3102, %3090
  %3106 = fmul fast float %2970, %2952
  %3107 = fmul fast float %3106, %3087
  %3108 = fmul fast float %2970, %2953
  %3109 = fmul fast float %3108, %3087
  %3110 = fmul fast float %2970, %2954
  %3111 = fmul fast float %3110, %3087
  %3112 = fmul fast float %3106, %3103
  %3113 = fmul fast float %3108, %3104
  %3114 = fmul fast float %3110, %3105
  %3115 = fadd fast float %3107, %2845
  %3116 = fmul fast float %3115, %1209
  %3117 = fadd fast float %3109, %2846
  %3118 = fmul fast float %3117, %1209
  %3119 = fadd fast float %3111, %2847
  %3120 = fmul fast float %3119, %1209
  %3121 = fadd fast float %3112, %2888
  %3122 = fmul fast float %3121, %1209
  %3123 = fadd fast float %3113, %2891
  %3124 = fmul fast float %3123, %1209
  %3125 = fadd fast float %3114, %2894
  %3126 = fmul fast float %3125, %1209
  br label %3127

; <label>:3127                                    ; preds = %3081, %2944, %2838
  %3128 = phi float [ %2889, %2838 ], [ %2889, %2944 ], [ %3122, %3081 ]
  %3129 = phi float [ %2892, %2838 ], [ %2892, %2944 ], [ %3124, %3081 ]
  %3130 = phi float [ %2895, %2838 ], [ %2895, %2944 ], [ %3126, %3081 ]
  %3131 = phi float [ %2884, %2838 ], [ %2884, %2944 ], [ %3116, %3081 ]
  %3132 = phi float [ %2885, %2838 ], [ %2885, %2944 ], [ %3118, %3081 ]
  %3133 = phi float [ %2886, %2838 ], [ %2886, %2944 ], [ %3120, %3081 ]
  %3134 = call float @dx.op.unary.f32(i32 24, float %1521)  ; Sqrt(value)
  %3135 = call float @dx.op.unary.f32(i32 24, float %1522)  ; Sqrt(value)
  %3136 = call float @dx.op.unary.f32(i32 24, float %1523)  ; Sqrt(value)
  %3137 = fmul fast float %3134, %3131
  %3138 = fmul fast float %3135, %3132
  %3139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3140 = extractvalue %dx.types.CBufRet.f32 %3139, 0
  br i1 %163, label %3141, label %3161

; <label>:3141                                    ; preds = %3127
  %3142 = fadd fast float %3133, %1186
  %3143 = fmul fast float %3142, %1187
  %3144 = fsub fast float 1.000000e+00, %1187
  %3145 = call float @dx.op.unary.f32(i32 7, float %3144)  ; Saturate(value)
  %3146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3147 = extractvalue %dx.types.CBufRet.f32 %3146, 3
  %3148 = fmul fast float %3147, %3145
  %3149 = fadd fast float %3148, %3143
  %3150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3151 = extractvalue %dx.types.CBufRet.f32 %3150, 0
  %3152 = fmul fast float %3151, %2867
  %3153 = fsub fast float %3149, %3152
  %3154 = fadd fast float %3138, %3137
  %3155 = fmul fast float %3140, %3154
  %3156 = extractvalue %dx.types.CBufRet.f32 %3146, 1
  %3157 = fsub fast float %3153, %3156
  %3158 = extractvalue %dx.types.CBufRet.f32 %3146, 2
  %3159 = fmul fast float %3157, %3158
  %3160 = call float @dx.op.unary.f32(i32 7, float %3159)  ; Saturate(value)
  br label %3177

; <label>:3161                                    ; preds = %3127
  %3162 = fmul fast float %3136, %3133
  %3163 = fmul fast float %3140, %3137
  %3164 = fmul fast float %3140, %3138
  %3165 = fmul fast float %3162, %3140
  %3166 = add i32 %26, 116
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = and i32 %3168, 32
  %3170 = icmp eq i32 %3169, 0
  br i1 %3170, label %3177, label %3171

; <label>:3171                                    ; preds = %3161
  %3172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3173 = extractvalue %dx.types.CBufRet.f32 %3172, 0
  %3174 = fmul fast float %3173, 0x3FE99999A0000000
  %3175 = fadd fast float %3173, %3163
  %3176 = fadd fast float %3174, %3165
  br label %3177

; <label>:3177                                    ; preds = %3171, %3161, %3141
  %3178 = phi float [ %3155, %3141 ], [ %3175, %3171 ], [ %3163, %3161 ]
  %3179 = phi float [ %3160, %3141 ], [ %3164, %3171 ], [ %3164, %3161 ]
  %3180 = phi float [ 1.000000e+00, %3141 ], [ %3176, %3171 ], [ %3165, %3161 ]
  %3181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %25, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3182 = extractvalue %dx.types.CBufRet.f32 %3181, 0
  %3183 = fmul fast float %3182, %3129
  %3184 = fmul fast float %3182, %3130
  %3185 = fadd fast float %3129, %3128
  %3186 = select i1 %163, float %3185, float %3128
  %3187 = fmul float %3186, %3182
  %3188 = select i1 %163, float 0.000000e+00, float %3183
  %3189 = select i1 %163, float 0.000000e+00, float %3184
  %3190 = fmul fast float %3178, %3134
  %3191 = fmul fast float %3179, %3135
  %3192 = fmul fast float %3180, %3136
  %3193 = fadd fast float %3187, %3190
  %3194 = fadd fast float %3188, %3191
  %3195 = fadd fast float %3189, %3192
  %3196 = select i1 %163, float %3179, float %3194
  %3197 = select i1 %163, float %3180, float %3195
  %3198 = call float @dx.op.binary.f32(i32 36, float %3193, float 3.225500e+04)  ; FMin(a,b)
  %3199 = call float @dx.op.binary.f32(i32 36, float %3196, float 3.225500e+04)  ; FMin(a,b)
  %3200 = call float @dx.op.binary.f32(i32 36, float %3197, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3198)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3199)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3200)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

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
!dx.viewIdState = !{!38}
!dx.entryPoints = !{!39}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !31, !34}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!11 = !{i32 4, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!31 = !{!32, !33}
!32 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!33 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!34 = !{!35, !36, !37}
!35 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!36 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!37 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!38 = !{[24 x i32] [i32 22, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
!39 = !{void ()* @ps_main, !"ps_main", !40, !4, !58}
!40 = !{!41, !56, null}
!41 = !{!42, !45, !47, !49, !50, !52, !54, !55}
!42 = !{i32 0, !"SV_Position", i8 9, i8 3, !43, i8 4, i32 1, i8 4, i32 0, i8 0, !44}
!43 = !{i32 0}
!44 = !{i32 3, i32 11}
!45 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !43, i8 2, i32 1, i8 2, i32 1, i8 0, !46}
!46 = !{i32 3, i32 3}
!47 = !{i32 2, !"LMAPCOORDS", i8 9, i8 0, !43, i8 2, i32 1, i8 3, i32 2, i8 0, !48}
!48 = !{i32 3, i32 7}
!49 = !{i32 3, !"NORMAL", i8 9, i8 0, !43, i8 2, i32 1, i8 3, i32 3, i8 0, !48}
!50 = !{i32 4, !"TANGENT", i8 9, i8 0, !43, i8 2, i32 1, i8 4, i32 4, i8 0, !51}
!51 = !{i32 3, i32 15}
!52 = !{i32 5, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !43, i8 1, i32 1, i8 1, i32 5, i8 0, !53}
!53 = !{i32 3, i32 1}
!54 = !{i32 6, !"TRANSIENT_INDEX", i8 5, i8 0, !43, i8 1, i32 1, i8 1, i32 5, i8 1, null}
!55 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !43, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !43, i8 0, i32 1, i8 4, i32 0, i8 0, !51}
!58 = !{i32 0, i64 24}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 1}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 1}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 1}

