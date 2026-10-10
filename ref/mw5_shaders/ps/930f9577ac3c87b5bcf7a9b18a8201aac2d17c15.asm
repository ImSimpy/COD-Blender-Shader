;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; TEXCOORDS                0   xy          1     NONE   float   xy  
; NORMAL                   0   xyz         2     NONE   float   xyz 
; TANGENT                  0   xyzw        3     NONE   float   xyzw
; AMBIENT_COLOR            0   xyz         4     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        5     NONE   float   xyzw
; SV_IsFrontFace           0   x           6    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 38fef8d351759582d3afd7b0bda257b5
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
; Number of inputs: 25, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 3, 4, 5, 8, 9, 10, 12, 13, 14, 15, 18, 20, 21, 22, 23, 24 }
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
  %28 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = icmp ne i32 %28, 0
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %50 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = fmul fast float %52, %46
  %54 = fmul fast float %52, %47
  %55 = select i1 %29, float 1.000000e+00, float -1.000000e+00
  %56 = fmul fast float %41, %55
  %57 = fmul fast float %42, %55
  %58 = fmul fast float %43, %55
  %59 = fmul fast float %42, %39
  %60 = fmul fast float %43, %38
  %61 = fsub fast float %59, %60
  %62 = fmul fast float %43, %37
  %63 = fmul fast float %41, %39
  %64 = fsub fast float %62, %63
  %65 = fmul fast float %41, %38
  %66 = fmul fast float %42, %37
  %67 = fsub fast float %65, %66
  %68 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %69 = bitcast float %68 to i32
  %70 = ashr i32 %69, 1
  %71 = sub nsw i32 1597250115, %70
  %72 = bitcast i32 %71 to float
  %73 = fmul fast float %72, %30
  %74 = fmul fast float %72, %31
  %75 = fmul fast float %72, %32
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %78 = extractvalue %dx.types.CBufRet.f32 %76, 3
  %79 = fmul fast float %53, 2.000000e+00
  %80 = fmul fast float %79, %77
  %81 = fmul fast float %54, 2.000000e+00
  %82 = fmul fast float %81, %78
  %83 = fsub fast float 1.000000e+00, %80
  %84 = fsub fast float 1.000000e+00, %82
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 1
  %88 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %89 = fmul fast float %83, %86
  %90 = fmul fast float %83, %87
  %91 = fmul fast float %83, %88
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %84, %93
  %97 = fmul fast float %84, %94
  %98 = fmul fast float %84, %95
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fadd fast float %96, %100
  %104 = fadd fast float %103, %89
  %105 = fadd fast float %97, %101
  %106 = fadd fast float %105, %90
  %107 = fadd fast float %98, %102
  %108 = fadd fast float %107, %91
  %109 = fmul fast float %104, %48
  %110 = fmul fast float %106, %48
  %111 = fmul fast float %108, %48
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %113, %53
  %116 = fmul fast float %114, %54
  %117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %118 = extractvalue %dx.types.ResRet.i32 %117, 0
  %119 = and i32 %118, 114688
  %120 = icmp ne i32 %119, 0
  %121 = select i1 %120, float %115, float 0.000000e+00
  %122 = select i1 %120, float %116, float 0.000000e+00
  %123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %25, float %121, float %122, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fmul fast float %124, 2.550000e+02
  %126 = fptoui float %125 to i32
  %127 = select i1 %120, i32 %126, i32 0
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.i32 %129, 3
  %131 = and i32 %130, 3
  %132 = icmp ne i32 %131, 0
  %133 = and i32 %130, 4
  %134 = icmp ne i32 %133, 0
  %135 = and i1 %132, %134
  br i1 %135, label %136, label %147

; <label>:136                                     ; preds = %0
  %137 = extractvalue %dx.types.CBufRet.f32 %128, 3
  %138 = fmul fast float %137, %54
  %139 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %140 = fmul fast float %139, %53
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %24, float %140, float %138, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = fsub fast float 1.000000e+00, %142
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 0
  %146 = fcmp fast olt float %143, %145
  br label %150

; <label>:147                                     ; preds = %0
  %148 = icmp eq i32 %133, 0
  %149 = and i1 %132, %148
  br label %150

; <label>:150                                     ; preds = %147, %136
  %151 = phi i1 [ %146, %136 ], [ %149, %147 ]
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = shl i32 %153, 4
  %155 = and i32 %154, 32752
  %156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %155)  ; LegacyF16ToF32(value)
  %157 = lshr i32 %153, 7
  %158 = and i32 %157, 32752
  %159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %158)  ; LegacyF16ToF32(value)
  %160 = lshr i32 %153, 22
  %161 = shl nuw nsw i32 %160, 5
  %162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %161)  ; LegacyF16ToF32(value)
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = and i32 %164, 255
  %166 = uitofp i32 %165 to float
  %167 = fmul fast float %166, 0x3F70101020000000
  %168 = lshr i32 %164, 8
  %169 = and i32 %168, 255
  %170 = uitofp i32 %169 to float
  %171 = fmul fast float %170, 0x3F70101020000000
  %172 = lshr i32 %164, 16
  %173 = and i32 %172, 255
  %174 = uitofp i32 %173 to float
  %175 = fmul fast float %174, 0x3F70101020000000
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 36, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = or i32 %183, %181
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %629, label %186

; <label>:186                                     ; preds = %150
  %187 = lshr i32 %179, 16
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = fmul fast float %188, 0x3F50624DE0000000
  %190 = and i32 %179, 65535
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = fmul fast float %191, 0x3F50624DE0000000
  %193 = lshr i32 %177, 16
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = and i32 %177, 65535
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = lshr i32 %198, 16
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = fmul fast float %200, 0x3F50624DE0000000
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = lshr i32 %203, 16
  %205 = and i32 %204, 255
  %206 = lshr i32 %203, 24
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 100, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = and i32 %208, 65535
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %208, 16
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = lshr i32 %214, 22
  %216 = shl nuw nsw i32 %215, 5
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = shl i32 %214, 4
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %214, 7
  %222 = and i32 %221, 32752
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %225 = extractvalue %dx.types.CBufRet.f32 %224, 3
  %226 = fmul fast float %225, 1.000000e+03
  %227 = fmul fast float %192, %226
  %228 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %229 = fadd fast float %228, %196
  %230 = fmul fast float %189, %226
  %231 = call float @dx.op.unary.f32(i32 22, float %230)  ; Frc(value)
  %232 = fadd fast float %231, %194
  %233 = fmul fast float %201, %226
  %234 = call float @dx.op.unary.f32(i32 22, float %233)  ; Frc(value)
  %235 = fmul fast float %234, 0x401921FB60000000
  %236 = fadd fast float %235, %217
  %237 = call float @dx.op.unary.f32(i32 13, float %236)  ; Sin(value)
  %238 = call float @dx.op.unary.f32(i32 12, float %236)  ; Cos(value)
  %239 = fsub fast float -0.000000e+00, %237
  %240 = fadd fast float %44, -5.000000e-01
  %241 = fadd fast float %45, -5.000000e-01
  %242 = fmul fast float %210, %240
  %243 = fmul fast float %212, %241
  %244 = fadd fast float %242, 5.000000e-01
  %245 = fadd fast float %243, 5.000000e-01
  %246 = fmul fast float %220, %244
  %247 = fmul fast float %223, %245
  %248 = fmul fast float %238, %246
  %249 = call float @dx.op.tertiary.f32(i32 46, float %239, float %247, float %248)  ; FMad(a,b,c)
  %250 = fmul fast float %237, %246
  %251 = call float @dx.op.tertiary.f32(i32 46, float %238, float %247, float %250)  ; FMad(a,b,c)
  %252 = fadd fast float %229, %249
  %253 = fadd fast float %232, %251
  %254 = icmp ugt i32 %205, 1
  %255 = icmp ugt i32 %203, 33554431
  %256 = or i1 %255, %254
  br i1 %256, label %257, label %281

; <label>:257                                     ; preds = %186
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = lshr i32 %259, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = fmul fast float %225, %261
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = mul nuw nsw i32 %205, %206
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %263, %265
  %267 = call float @dx.op.unary.f32(i32 27, float %266)  ; Round_ni(value)
  %268 = fptoui float %267 to i32
  %269 = urem i32 %268, %205
  %270 = udiv i32 %268, %206
  %271 = call float @dx.op.unary.f32(i32 22, float %252)  ; Frc(value)
  %272 = call float @dx.op.unary.f32(i32 22, float %253)  ; Frc(value)
  %273 = uitofp i32 %269 to float
  %274 = uitofp i32 %270 to float
  %275 = fadd fast float %271, %273
  %276 = fadd fast float %272, %274
  %277 = uitofp i32 %205 to float
  %278 = uitofp i32 %206 to float
  %279 = fdiv fast float %275, %277
  %280 = fdiv fast float %276, %278
  br label %281

; <label>:281                                     ; preds = %257, %186
  %282 = phi float [ %279, %257 ], [ %252, %186 ]
  %283 = phi float [ %280, %257 ], [ %253, %186 ]
  %284 = and i32 %181, 16
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %477, label %286

; <label>:286                                     ; preds = %281
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = add i32 %288, 0
  %290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %289, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %291 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %290, %dx.types.Handle %49, float %282, float %283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = extractvalue %dx.types.ResRet.f32 %291, 1
  %294 = extractvalue %dx.types.ResRet.f32 %291, 2
  %295 = extractvalue %dx.types.ResRet.f32 %291, 3
  %296 = and i32 %203, 255
  %297 = uitofp i32 %296 to float
  %298 = lshr i32 %203, 8
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %295, %297
  %302 = fadd fast float %301, %300
  %303 = fmul fast float %302, 0x3F70101000000000
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 512
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %315, label %308

; <label>:308                                     ; preds = %286
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = add i32 %310, 0
  %312 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %311, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %313 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %312, %dx.types.Handle %50, float %282, float %283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %314 = extractvalue %dx.types.ResRet.f32 %313, 0
  br label %315

; <label>:315                                     ; preds = %308, %286
  %316 = phi float [ %314, %308 ], [ 1.000000e+00, %286 ]
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 33554432
  %320 = icmp eq i32 %319, 0
  br i1 %320, label %424, label %321

; <label>:321                                     ; preds = %315
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 65535
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %323, 16
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = lshr i32 %333, 24
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %335, 0x3F70101020000000
  %337 = and i32 %333, 255
  %338 = uitofp i32 %337 to float
  %339 = fmul fast float %338, 0x3F70101020000000
  %340 = lshr i32 %333, 8
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %333, 16
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %364 = bitcast float %292 to i32
  %365 = ashr i32 %364, 1
  %366 = sub nsw i32 1597463174, %365
  %367 = bitcast i32 %366 to float
  %368 = fmul fast float %292, 5.000000e-01
  %369 = fmul fast float %367, %367
  %370 = fmul fast float %369, %368
  %371 = fsub fast float 1.500000e+00, %370
  %372 = fmul fast float %367, %292
  %373 = fmul fast float %372, %371
  %374 = bitcast float %293 to i32
  %375 = ashr i32 %374, 1
  %376 = sub nsw i32 1597463174, %375
  %377 = bitcast i32 %376 to float
  %378 = fmul fast float %293, 5.000000e-01
  %379 = fmul fast float %377, %377
  %380 = fmul fast float %379, %378
  %381 = fsub fast float 1.500000e+00, %380
  %382 = fmul fast float %377, %293
  %383 = fmul fast float %382, %381
  %384 = bitcast float %294 to i32
  %385 = ashr i32 %384, 1
  %386 = sub nsw i32 1597463174, %385
  %387 = bitcast i32 %386 to float
  %388 = fmul fast float %294, 5.000000e-01
  %389 = fmul fast float %387, %387
  %390 = fmul fast float %389, %388
  %391 = fsub fast float 1.500000e+00, %390
  %392 = fmul fast float %387, %294
  %393 = fmul fast float %392, %391
  %394 = fsub fast float %373, %355
  %395 = fsub fast float %383, %359
  %396 = fsub fast float %393, %363
  %397 = fmul fast float %394, %325
  %398 = fmul fast float %395, %327
  %399 = fmul fast float %396, %331
  %400 = fadd fast float %397, %339
  %401 = fadd fast float %398, %343
  %402 = fadd fast float %399, %347
  %403 = call float @dx.op.unary.f32(i32 7, float %400)  ; Saturate(value)
  %404 = call float @dx.op.unary.f32(i32 7, float %401)  ; Saturate(value)
  %405 = call float @dx.op.unary.f32(i32 7, float %402)  ; Saturate(value)
  %406 = fmul fast float %403, %403
  %407 = fmul fast float %404, %404
  %408 = fmul fast float %405, %405
  %409 = fsub fast float %406, %292
  %410 = fsub fast float %407, %293
  %411 = fsub fast float %408, %294
  %412 = fmul fast float %409, %316
  %413 = fmul fast float %410, %316
  %414 = fmul fast float %411, %316
  %415 = fadd fast float %412, %292
  %416 = fadd fast float %413, %293
  %417 = fadd fast float %414, %294
  %418 = fadd fast float %336, %303
  %419 = fsub fast float %418, %352
  %420 = call float @dx.op.unary.f32(i32 7, float %419)  ; Saturate(value)
  %421 = fsub fast float %420, %303
  %422 = fmul fast float %421, %316
  %423 = fadd fast float %422, %303
  br label %477

; <label>:424                                     ; preds = %315
  %425 = and i32 %318, 134217728
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %461, label %427

; <label>:427                                     ; preds = %424
  %428 = call float @dx.op.unary.f32(i32 24, float %167)  ; Sqrt(value)
  %429 = call float @dx.op.unary.f32(i32 24, float %171)  ; Sqrt(value)
  %430 = call float @dx.op.unary.f32(i32 24, float %175)  ; Sqrt(value)
  %431 = fadd fast float %428, -5.000000e-01
  %432 = fadd fast float %429, -5.000000e-01
  %433 = fadd fast float %430, -5.000000e-01
  %434 = fmul fast float %431, %316
  %435 = fmul fast float %432, %316
  %436 = fmul fast float %433, %316
  %437 = fadd fast float %434, 5.000000e-01
  %438 = fadd fast float %435, 5.000000e-01
  %439 = fadd fast float %436, 5.000000e-01
  %440 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %441 = call float @dx.op.unary.f32(i32 24, float %293)  ; Sqrt(value)
  %442 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
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
  %462 = fmul fast float %167, %167
  %463 = fmul fast float %171, %171
  %464 = fmul fast float %175, %175
  %465 = fadd fast float %462, -1.000000e+00
  %466 = fadd fast float %463, -1.000000e+00
  %467 = fadd fast float %464, -1.000000e+00
  %468 = fmul fast float %316, %465
  %469 = fmul fast float %316, %466
  %470 = fmul fast float %316, %467
  %471 = fadd fast float %468, 1.000000e+00
  %472 = fadd fast float %469, 1.000000e+00
  %473 = fadd fast float %470, 1.000000e+00
  %474 = fmul fast float %471, %292
  %475 = fmul fast float %472, %293
  %476 = fmul fast float %473, %294
  br label %477

; <label>:477                                     ; preds = %461, %427, %321, %281
  %478 = phi float [ %423, %321 ], [ %303, %427 ], [ %303, %461 ], [ 0x3FA23C0BE0000000, %281 ]
  %479 = phi float [ %415, %321 ], [ %458, %427 ], [ %474, %461 ], [ 1.000000e+00, %281 ]
  %480 = phi float [ %416, %321 ], [ %459, %427 ], [ %475, %461 ], [ 1.000000e+00, %281 ]
  %481 = phi float [ %417, %321 ], [ %460, %427 ], [ %476, %461 ], [ 1.000000e+00, %281 ]
  %482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %483 = extractvalue %dx.types.CBufRet.i32 %482, 1
  %484 = and i32 %483, 1
  %485 = icmp ne i32 %484, 0
  %486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %487 = extractvalue %dx.types.ResRet.i32 %486, 0
  %488 = and i32 %487, 32
  %489 = icmp ne i32 %488, 0
  %490 = and i1 %485, %489
  %491 = select i1 %490, float 1.000000e+00, float %479
  %492 = select i1 %490, float 0x3FD3333340000000, float %480
  %493 = select i1 %490, float 0x3FD3333340000000, float %481
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = and i32 %495, 32
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %567, label %498

; <label>:498                                     ; preds = %477
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %502 = extractvalue %dx.types.ResRet.i32 %501, 0
  %503 = add i32 %502, 0
  %504 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %503, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %505 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %504, %dx.types.Handle %49, float %282, float %283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %506 = extractvalue %dx.types.ResRet.f32 %505, 0
  %507 = extractvalue %dx.types.ResRet.f32 %505, 1
  %508 = extractvalue %dx.types.ResRet.f32 %505, 2
  %509 = extractvalue %dx.types.ResRet.f32 %505, 3
  %510 = and i32 %500, 255
  %511 = uitofp i32 %510 to float
  %512 = lshr i32 %500, 8
  %513 = and i32 %512, 255
  %514 = uitofp i32 %513 to float
  %515 = lshr i32 %500, 16
  %516 = and i32 %515, 255
  %517 = uitofp i32 %516 to float
  %518 = fmul fast float %517, 0x3F70101000000000
  %519 = fmul fast float %506, %511
  %520 = fadd fast float %519, %514
  %521 = fmul fast float %520, 0x3F70101000000000
  %522 = fadd fast float %507, -5.000000e-01
  %523 = fadd fast float %509, -5.000000e-01
  %524 = fmul fast float %522, %518
  %525 = fmul fast float %523, %518
  %526 = fadd fast float %524, 5.000000e-01
  %527 = fadd fast float %525, 5.000000e-01
  %528 = fmul fast float %526, 2.000000e+00
  %529 = fadd fast float %528, -1.000000e+00
  %530 = fmul fast float %527, 2.000000e+00
  %531 = fadd fast float %530, -1.000000e+00
  %532 = fadd fast float %529, %531
  %533 = fmul fast float %532, 5.000000e-01
  %534 = fsub fast float %529, %531
  %535 = fmul fast float %534, 5.000000e-01
  %536 = call float @dx.op.unary.f32(i32 6, float %533)  ; FAbs(value)
  %537 = fsub fast float 1.000000e+00, %536
  %538 = call float @dx.op.unary.f32(i32 6, float %535)  ; FAbs(value)
  %539 = fsub fast float %537, %538
  %540 = call float @dx.op.dot3.f32(i32 55, float %533, float %535, float %539, float %533, float %535, float %539)  ; Dot3(ax,ay,az,bx,by,bz)
  %541 = call float @dx.op.unary.f32(i32 25, float %540)  ; Rsqrt(value)
  %542 = fmul fast float %533, %541
  %543 = fmul fast float %535, %541
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = and i32 %545, 67108864
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %563, label %548

; <label>:548                                     ; preds = %498
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = lshr i32 %550, 16
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = fsub fast float %521, %558
  %560 = fmul fast float %559, %552
  %561 = fadd fast float %560, %556
  %562 = call float @dx.op.unary.f32(i32 7, float %561)  ; Saturate(value)
  br label %563

; <label>:563                                     ; preds = %548, %498
  %564 = phi float [ %562, %548 ], [ %521, %498 ]
  %565 = call float @dx.op.dot2.f32(i32 54, float %542, float %543, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %566 = call float @dx.op.dot2.f32(i32 54, float %542, float %543, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %567

; <label>:567                                     ; preds = %563, %477
  %568 = phi float [ %564, %563 ], [ 0x3FD6666660000000, %477 ]
  %569 = phi float [ %565, %563 ], [ 0.000000e+00, %477 ]
  %570 = phi float [ %566, %563 ], [ 0.000000e+00, %477 ]
  %571 = phi float [ %508, %563 ], [ 1.000000e+00, %477 ]
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = lshr i32 %573, 22
  %575 = shl nuw nsw i32 %574, 5
  %576 = call float @dx.op.legacyF16ToF32(i32 131, i32 %575)  ; LegacyF16ToF32(value)
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = and i32 %578, 64
  %580 = icmp eq i32 %579, 0
  br i1 %580, label %613, label %581

; <label>:581                                     ; preds = %567
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = add i32 %583, 0
  %585 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %584, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 131072
  %589 = icmp eq i32 %588, 0
  %590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %585, %dx.types.Handle %49, float %282, float %283, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %591 = extractvalue %dx.types.ResRet.f32 %590, 0
  %592 = extractvalue %dx.types.ResRet.f32 %590, 1
  %593 = extractvalue %dx.types.ResRet.f32 %590, 2
  %594 = fmul fast float %591, %156
  %595 = fmul fast float %592, %159
  %596 = fmul fast float %593, %162
  br i1 %589, label %603, label %597

; <label>:597                                     ; preds = %581
  %598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %599 = extractvalue %dx.types.CBufRet.f32 %598, 0
  %600 = fmul fast float %599, %594
  %601 = fmul fast float %599, %595
  %602 = fmul fast float %599, %596
  br label %603

; <label>:603                                     ; preds = %597, %581
  %604 = phi float [ %600, %597 ], [ %594, %581 ]
  %605 = phi float [ %601, %597 ], [ %595, %581 ]
  %606 = phi float [ %602, %597 ], [ %596, %581 ]
  %607 = fmul fast float %604, %576
  %608 = select i1 %151, float %607, float %604
  %609 = call float @dx.op.dot3.f32(i32 55, float %608, float %605, float %606, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %610 = select i1 %151, float 0.000000e+00, float %604
  %611 = select i1 %151, float %609, float %605
  %612 = select i1 %151, float 0.000000e+00, float %606
  br label %613

; <label>:613                                     ; preds = %603, %567
  %614 = phi float [ %610, %603 ], [ 0.000000e+00, %567 ]
  %615 = phi float [ %611, %603 ], [ 0.000000e+00, %567 ]
  %616 = phi float [ %612, %603 ], [ 0.000000e+00, %567 ]
  %617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %618 = extractvalue %dx.types.ResRet.i32 %617, 0
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = lshr i32 %618, 8
  %622 = and i32 %621, 255
  %623 = uitofp i32 %622 to float
  %624 = call float @dx.op.dot3.f32(i32 55, float %491, float %492, float %493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = fmul fast float %623, %624
  %626 = fadd fast float %625, %620
  %627 = fmul fast float %626, 0x3F70101020000000
  %628 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  br label %629

; <label>:629                                     ; preds = %613, %150
  %630 = phi float [ 0.000000e+00, %150 ], [ %569, %613 ]
  %631 = phi float [ 0.000000e+00, %150 ], [ %570, %613 ]
  %632 = phi float [ 0.000000e+00, %150 ], [ %491, %613 ]
  %633 = phi float [ 0.000000e+00, %150 ], [ %492, %613 ]
  %634 = phi float [ 0.000000e+00, %150 ], [ %493, %613 ]
  %635 = phi float [ 0.000000e+00, %150 ], [ %614, %613 ]
  %636 = phi float [ 0.000000e+00, %150 ], [ %615, %613 ]
  %637 = phi float [ 0.000000e+00, %150 ], [ %616, %613 ]
  %638 = phi float [ 0.000000e+00, %150 ], [ %478, %613 ]
  %639 = phi float [ 0.000000e+00, %150 ], [ 1.000000e+00, %613 ]
  %640 = phi float [ 0.000000e+00, %150 ], [ %568, %613 ]
  %641 = phi float [ 0.000000e+00, %150 ], [ %571, %613 ]
  %642 = phi float [ 0.000000e+00, %150 ], [ %628, %613 ]
  %643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %644 = extractvalue %dx.types.CBufRet.f32 %643, 0
  %645 = call float @dx.op.dot2.f32(i32 54, float %630, float %631, float %630, float %631)  ; Dot2(ax,ay,bx,by)
  %646 = fmul fast float %645, 0x3FE3333340000000
  %647 = fsub fast float 1.000000e+00, %646
  %648 = call float @dx.op.dot3.f32(i32 55, float %630, float %631, float %647, float %630, float %631, float %647)  ; Dot3(ax,ay,az,bx,by,bz)
  %649 = call float @dx.op.unary.f32(i32 25, float %648)  ; Rsqrt(value)
  %650 = fmul fast float %649, %630
  %651 = fmul fast float %649, %631
  %652 = fmul fast float %647, %649
  %653 = fmul fast float %652, %56
  %654 = fmul fast float %652, %57
  %655 = fmul fast float %652, %58
  %656 = fmul fast float %650, %37
  %657 = fmul fast float %650, %38
  %658 = fmul fast float %650, %39
  %659 = fmul fast float %61, %40
  %660 = fmul fast float %659, %651
  %661 = fmul fast float %64, %40
  %662 = fmul fast float %661, %651
  %663 = fmul fast float %67, %40
  %664 = fmul fast float %663, %651
  %665 = fadd fast float %660, %656
  %666 = fmul fast float %665, %55
  %667 = fadd fast float %666, %653
  %668 = fadd fast float %662, %657
  %669 = fmul fast float %668, %55
  %670 = fadd fast float %669, %654
  %671 = fadd fast float %664, %658
  %672 = fmul fast float %671, %55
  %673 = fadd fast float %672, %655
  %674 = call float @dx.op.dot3.f32(i32 55, float %667, float %670, float %673, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %675 = call float @dx.op.unary.f32(i32 25, float %674)  ; Rsqrt(value)
  %676 = fmul fast float %667, %675
  %677 = fmul fast float %670, %675
  %678 = fmul fast float %673, %675
  %679 = call float @dx.op.unary.f32(i32 83, float %109)  ; DerivCoarseX(value)
  %680 = call float @dx.op.unary.f32(i32 83, float %110)  ; DerivCoarseX(value)
  %681 = call float @dx.op.unary.f32(i32 83, float %111)  ; DerivCoarseX(value)
  %682 = call float @dx.op.unary.f32(i32 84, float %109)  ; DerivCoarseY(value)
  %683 = call float @dx.op.unary.f32(i32 84, float %110)  ; DerivCoarseY(value)
  %684 = call float @dx.op.unary.f32(i32 84, float %111)  ; DerivCoarseY(value)
  %685 = fadd fast float %679, %109
  %686 = fadd fast float %680, %110
  %687 = fadd fast float %681, %111
  %688 = fadd fast float %682, %109
  %689 = fadd fast float %683, %110
  %690 = fadd fast float %684, %111
  %691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %692 = extractvalue %dx.types.CBufRet.f32 %691, 0
  %693 = extractvalue %dx.types.CBufRet.f32 %691, 1
  %694 = extractvalue %dx.types.CBufRet.f32 %691, 2
  %695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.f32 %695, 2
  %697 = extractvalue %dx.types.CBufRet.f32 %695, 3
  %698 = fmul fast float %692, %53
  %699 = fmul fast float %698, %696
  %700 = fmul fast float %693, %54
  %701 = fmul fast float %700, %697
  %702 = fptoui float %699 to i32
  %703 = fptoui float %701 to i32
  %704 = fadd fast float %692, -1.000000e+00
  %705 = fadd fast float %693, -1.000000e+00
  %706 = fptoui float %704 to i32
  %707 = fptoui float %705 to i32
  %708 = call i32 @dx.op.binary.i32(i32 40, i32 %702, i32 %706)  ; UMin(a,b)
  %709 = call i32 @dx.op.binary.i32(i32 40, i32 %703, i32 %707)  ; UMin(a,b)
  %710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.f32 %710, 2
  %712 = extractvalue %dx.types.CBufRet.f32 %710, 3
  %713 = fmul fast float %711, %48
  %714 = fsub fast float %713, %712
  %715 = fadd fast float %694, -1.000000e+00
  %716 = call float @dx.op.binary.f32(i32 36, float %714, float %715)  ; FMin(a,b)
  %717 = fptoui float %716 to i32
  %718 = fptoui float %692 to i32
  %719 = fptoui float %693 to i32
  %720 = mul i32 %717, %719
  %721 = add i32 %720, %709
  %722 = mul i32 %721, %718
  %723 = add i32 %722, %708
  %724 = shl i32 %723, 2
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %724, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 1023
  %728 = lshr i32 %726, 10
  %729 = icmp eq i32 %727, 0
  br i1 %729, label %1155, label %730

; <label>:730                                     ; preds = %629
  %731 = and i32 %726, 1023
  br label %732

; <label>:732                                     ; preds = %858, %730
  %733 = phi float [ %859, %858 ], [ 0.000000e+00, %730 ]
  %734 = phi float [ %860, %858 ], [ %644, %730 ]
  %735 = phi float [ %861, %858 ], [ %642, %730 ]
  %736 = phi float [ %862, %858 ], [ 0.000000e+00, %730 ]
  %737 = phi float [ %863, %858 ], [ 0.000000e+00, %730 ]
  %738 = phi float [ %864, %858 ], [ %635, %730 ]
  %739 = phi float [ %865, %858 ], [ %636, %730 ]
  %740 = phi float [ %866, %858 ], [ %637, %730 ]
  %741 = phi float [ %867, %858 ], [ %676, %730 ]
  %742 = phi float [ %868, %858 ], [ %677, %730 ]
  %743 = phi float [ %869, %858 ], [ %678, %730 ]
  %744 = phi float [ %870, %858 ], [ %641, %730 ]
  %745 = phi float [ %871, %858 ], [ %640, %730 ]
  %746 = phi float [ %872, %858 ], [ 0.000000e+00, %730 ]
  %747 = phi float [ %873, %858 ], [ %638, %730 ]
  %748 = phi float [ %874, %858 ], [ %632, %730 ]
  %749 = phi float [ %875, %858 ], [ %633, %730 ]
  %750 = phi float [ %876, %858 ], [ %634, %730 ]
  %751 = phi i32 [ %808, %858 ], [ 0, %730 ]
  %752 = add nuw nsw i32 %751, %728
  %753 = shl i32 %752, 2
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %753, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = shl i32 %755, 8
  %757 = or i32 %756, 48
  %758 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %757, i32 undef)  ; BufferLoad(srv,index,wot)
  %759 = extractvalue %dx.types.ResRet.f32 %758, 0
  %760 = extractvalue %dx.types.ResRet.f32 %758, 1
  %761 = extractvalue %dx.types.ResRet.f32 %758, 2
  %762 = extractvalue %dx.types.ResRet.f32 %758, 3
  %763 = or i32 %756, 64
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = extractvalue %dx.types.ResRet.i32 %764, 1
  %767 = or i32 %756, 80
  %768 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 2
  %770 = extractvalue %dx.types.ResRet.f32 %768, 3
  %771 = or i32 %756, 96
  %772 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.f32 %772, 0
  %774 = extractvalue %dx.types.ResRet.f32 %772, 1
  %775 = extractvalue %dx.types.ResRet.f32 %772, 2
  %776 = extractvalue %dx.types.ResRet.f32 %772, 3
  %777 = or i32 %756, 112
  %778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %777, i32 undef)  ; BufferLoad(srv,index,wot)
  %779 = extractvalue %dx.types.ResRet.f32 %778, 2
  %780 = or i32 %756, 128
  %781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.f32 %781, 0
  %783 = extractvalue %dx.types.ResRet.f32 %781, 1
  %784 = extractvalue %dx.types.ResRet.f32 %781, 2
  %785 = extractvalue %dx.types.ResRet.f32 %781, 3
  %786 = or i32 %756, 144
  %787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %786, i32 undef)  ; BufferLoad(srv,index,wot)
  %788 = extractvalue %dx.types.ResRet.f32 %787, 0
  %789 = extractvalue %dx.types.ResRet.f32 %787, 1
  %790 = extractvalue %dx.types.ResRet.f32 %787, 2
  %791 = extractvalue %dx.types.ResRet.f32 %787, 3
  %792 = or i32 %756, 160
  %793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.f32 %793, 0
  %795 = extractvalue %dx.types.ResRet.f32 %793, 1
  %796 = extractvalue %dx.types.ResRet.f32 %793, 2
  %797 = extractvalue %dx.types.ResRet.f32 %793, 3
  %798 = or i32 %756, 192
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = or i32 %756, 208
  %802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %801, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.f32 %802, 0
  %804 = or i32 %756, 248
  %805 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.f32 %805, 0
  %807 = extractvalue %dx.types.ResRet.f32 %805, 1
  %808 = add nuw nsw i32 %751, 1
  %809 = bitcast float %762 to i32
  %810 = and i32 %809, 512
  %811 = icmp eq i32 %810, 0
  %812 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = extractvalue %dx.types.ResRet.f32 %812, 3
  %817 = call float @dx.op.dot4.f32(i32 56, float %813, float %814, float %815, float %816, float %109, float %110, float %111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %818 = or i32 %756, 16
  %819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %818, i32 undef)  ; BufferLoad(srv,index,wot)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = extractvalue %dx.types.ResRet.f32 %819, 3
  %824 = call float @dx.op.dot4.f32(i32 56, float %820, float %821, float %822, float %823, float %109, float %110, float %111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %825 = or i32 %756, 32
  %826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %825, i32 undef)  ; BufferLoad(srv,index,wot)
  %827 = extractvalue %dx.types.ResRet.f32 %826, 0
  %828 = extractvalue %dx.types.ResRet.f32 %826, 1
  %829 = extractvalue %dx.types.ResRet.f32 %826, 2
  %830 = extractvalue %dx.types.ResRet.f32 %826, 3
  %831 = call float @dx.op.dot4.f32(i32 56, float %827, float %828, float %829, float %830, float %109, float %110, float %111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %832 = call float @dx.op.unary.f32(i32 27, float %817)  ; Round_ni(value)
  %833 = call float @dx.op.unary.f32(i32 6, float %832)  ; FAbs(value)
  %834 = call float @dx.op.unary.f32(i32 27, float %824)  ; Round_ni(value)
  %835 = call float @dx.op.unary.f32(i32 6, float %834)  ; FAbs(value)
  %836 = call float @dx.op.unary.f32(i32 6, float %831)  ; FAbs(value)
  %837 = call float @dx.op.unary.f32(i32 27, float %836)  ; Round_ni(value)
  %838 = fadd fast float %835, %833
  %839 = fadd fast float %838, %837
  %840 = fcmp fast oeq float %839, 0.000000e+00
  %841 = call float @dx.op.dot4.f32(i32 56, float %813, float %814, float %815, float %816, float %685, float %686, float %687, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %842 = call float @dx.op.dot4.f32(i32 56, float %820, float %821, float %822, float %823, float %685, float %686, float %687, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %843 = call float @dx.op.dot4.f32(i32 56, float %813, float %814, float %815, float %816, float %688, float %689, float %690, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %844 = call float @dx.op.dot4.f32(i32 56, float %820, float %821, float %822, float %823, float %688, float %689, float %690, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %845 = fsub fast float %841, %817
  %846 = fsub fast float %843, %817
  %847 = fsub fast float %842, %824
  %848 = fsub fast float %844, %824
  %849 = call float @dx.op.dot3.f32(i32 55, float %759, float %760, float %761, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %850 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %851 = extractvalue %dx.types.CBufRet.f32 %850, 2
  %852 = fadd fast float %851, %849
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  %854 = extractvalue %dx.types.CBufRet.f32 %850, 0
  %855 = fcmp fast ogt float %853, %854
  %856 = and i1 %840, %855
  %857 = and i1 %811, %856
  br i1 %857, label %878, label %858

; <label>:858                                     ; preds = %1141, %959, %878, %732
  %859 = phi float [ %733, %878 ], [ %962, %959 ], [ %962, %1141 ], [ %733, %732 ]
  %860 = phi float [ %734, %878 ], [ %734, %959 ], [ %1116, %1141 ], [ %734, %732 ]
  %861 = phi float [ %735, %878 ], [ %735, %959 ], [ %1114, %1141 ], [ %735, %732 ]
  %862 = phi float [ %736, %878 ], [ %736, %959 ], [ %1086, %1141 ], [ %736, %732 ]
  %863 = phi float [ %737, %878 ], [ %737, %959 ], [ %1084, %1141 ], [ %737, %732 ]
  %864 = phi float [ %738, %878 ], [ %738, %959 ], [ %1151, %1141 ], [ %738, %732 ]
  %865 = phi float [ %739, %878 ], [ %739, %959 ], [ %1152, %1141 ], [ %739, %732 ]
  %866 = phi float [ %740, %878 ], [ %740, %959 ], [ %1153, %1141 ], [ %740, %732 ]
  %867 = phi float [ %741, %878 ], [ %741, %959 ], [ %1065, %1141 ], [ %741, %732 ]
  %868 = phi float [ %742, %878 ], [ %742, %959 ], [ %1066, %1141 ], [ %742, %732 ]
  %869 = phi float [ %743, %878 ], [ %743, %959 ], [ %1067, %1141 ], [ %743, %732 ]
  %870 = phi float [ %744, %878 ], [ %744, %959 ], [ %1094, %1141 ], [ %744, %732 ]
  %871 = phi float [ %745, %878 ], [ %745, %959 ], [ %1091, %1141 ], [ %745, %732 ]
  %872 = phi float [ %746, %878 ], [ %746, %959 ], [ %1088, %1141 ], [ %746, %732 ]
  %873 = phi float [ %747, %878 ], [ %747, %959 ], [ %1082, %1141 ], [ %747, %732 ]
  %874 = phi float [ %748, %878 ], [ %748, %959 ], [ %1077, %1141 ], [ %748, %732 ]
  %875 = phi float [ %749, %878 ], [ %749, %959 ], [ %1078, %1141 ], [ %749, %732 ]
  %876 = phi float [ %750, %878 ], [ %750, %959 ], [ %1079, %1141 ], [ %750, %732 ]
  %877 = icmp eq i32 %808, %731
  br i1 %877, label %1154, label %732

; <label>:878                                     ; preds = %732
  %879 = extractvalue %dx.types.ResRet.f32 %778, 3
  %880 = extractvalue %dx.types.ResRet.f32 %778, 1
  %881 = extractvalue %dx.types.ResRet.f32 %778, 0
  %882 = extractvalue %dx.types.ResRet.f32 %768, 1
  %883 = extractvalue %dx.types.ResRet.f32 %768, 0
  %884 = extractvalue %dx.types.ResRet.i32 %764, 3
  %885 = extractvalue %dx.types.ResRet.i32 %764, 2
  %886 = add i32 %884, 0
  %887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %886, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %889 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %887, %dx.types.Handle %888, float %817, float %824, float undef, float undef, i32 0, i32 0, i32 undef, float %845, float %847, float undef, float %846, float %848, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %890 = extractvalue %dx.types.ResRet.f32 %889, 0
  %891 = fmul fast float %890, %883
  %892 = fadd fast float %891, %882
  %893 = call float @dx.op.unary.f32(i32 7, float %892)  ; Saturate(value)
  %894 = fmul fast float %817, %773
  %895 = call float @dx.op.tertiary.f32(i32 46, float %774, float %824, float %894)  ; FMad(a,b,c)
  %896 = fadd fast float %895, %881
  %897 = fmul fast float %817, %775
  %898 = call float @dx.op.tertiary.f32(i32 46, float %776, float %824, float %897)  ; FMad(a,b,c)
  %899 = fadd fast float %898, %880
  %900 = fmul fast float %845, %773
  %901 = call float @dx.op.tertiary.f32(i32 46, float %774, float %847, float %900)  ; FMad(a,b,c)
  %902 = fmul fast float %845, %775
  %903 = call float @dx.op.tertiary.f32(i32 46, float %776, float %847, float %902)  ; FMad(a,b,c)
  %904 = fmul fast float %846, %773
  %905 = call float @dx.op.tertiary.f32(i32 46, float %774, float %848, float %904)  ; FMad(a,b,c)
  %906 = fmul fast float %846, %775
  %907 = call float @dx.op.tertiary.f32(i32 46, float %776, float %848, float %906)  ; FMad(a,b,c)
  %908 = add i32 %885, 0
  %909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %908, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %910 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %909, %dx.types.Handle %888, float %896, float %899, float undef, float undef, i32 0, i32 0, i32 undef, float %901, float %903, float undef, float %905, float %907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %911 = extractvalue %dx.types.ResRet.f32 %910, 0
  %912 = and i32 %809, 1024
  %913 = icmp ne i32 %912, 0
  %914 = fcmp fast ogt float %911, 0x3FE0101020000000
  %915 = uitofp i1 %914 to float
  %916 = select i1 %913, float %915, float %911
  %917 = and i32 %809, 8192
  %918 = icmp ne i32 %917, 0
  %919 = select i1 %918, float %879, float 1.000000e+00
  %920 = fmul fast float %817, 2.000000e+00
  %921 = fadd fast float %920, -1.000000e+00
  %922 = call float @dx.op.unary.f32(i32 6, float %921)  ; FAbs(value)
  %923 = fmul fast float %922, %806
  %924 = fsub fast float %923, %806
  %925 = call float @dx.op.unary.f32(i32 7, float %924)  ; Saturate(value)
  %926 = fmul fast float %824, 2.000000e+00
  %927 = fadd fast float %926, -1.000000e+00
  %928 = call float @dx.op.unary.f32(i32 6, float %927)  ; FAbs(value)
  %929 = fmul fast float %928, %807
  %930 = fsub fast float %929, %807
  %931 = call float @dx.op.unary.f32(i32 7, float %930)  ; Saturate(value)
  %932 = fmul fast float %836, %769
  %933 = fsub fast float %932, %769
  %934 = call float @dx.op.unary.f32(i32 7, float %933)  ; Saturate(value)
  %935 = fmul fast float %893, %919
  %936 = fmul fast float %935, %890
  %937 = fmul fast float %936, %925
  %938 = fmul fast float %937, %916
  %939 = fmul fast float %938, %931
  %940 = fmul fast float %939, %934
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 1
  %943 = extractvalue %dx.types.CBufRet.f32 %941, 0
  %944 = fsub fast float %853, %943
  %945 = fmul fast float %944, %942
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  %947 = fmul fast float %940, %770
  %948 = fadd fast float %940, %770
  %949 = fmul fast float %948, %779
  %950 = fsub fast float %949, %779
  %951 = call float @dx.op.unary.f32(i32 7, float %950)  ; Saturate(value)
  %952 = and i32 %809, 128
  %953 = icmp ne i32 %952, 0
  %954 = select i1 %953, float %951, float %947
  %955 = fmul fast float %954, %946
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 0
  %958 = fcmp fast ugt float %955, %957
  br i1 %958, label %959, label %858

; <label>:959                                     ; preds = %878
  %960 = select i1 %918, float %955, float 0.000000e+00
  %961 = fadd fast float %960, %733
  %962 = call float @dx.op.unary.f32(i32 7, float %961)  ; Saturate(value)
  br i1 %918, label %858, label %963

; <label>:963                                     ; preds = %959
  %964 = and i32 %809, 4
  %965 = and i32 %809, 8
  %966 = add i32 %765, 0
  %967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %966, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %968 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %969 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %967, %dx.types.Handle %968, float %896, float %899, float undef, float undef, i32 0, i32 0, i32 undef, float %901, float %903, float undef, float %905, float %907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %970 = extractvalue %dx.types.ResRet.f32 %969, 0
  %971 = extractvalue %dx.types.ResRet.f32 %969, 1
  %972 = extractvalue %dx.types.ResRet.f32 %969, 2
  %973 = extractvalue %dx.types.ResRet.f32 %969, 3
  %974 = bitcast float %791 to i32
  %975 = and i32 %974, 255
  %976 = uitofp i32 %975 to float
  %977 = lshr i32 %974, 8
  %978 = and i32 %977, 255
  %979 = uitofp i32 %978 to float
  %980 = fmul fast float %973, %976
  %981 = fadd fast float %980, %979
  %982 = fmul fast float %981, 0x3F70101000000000
  %983 = add i32 %766, 0
  %984 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %983, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %985 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %984, %dx.types.Handle %968, float %896, float %899, float undef, float undef, i32 0, i32 0, i32 undef, float %901, float %903, float undef, float %905, float %907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %986 = extractvalue %dx.types.ResRet.f32 %985, 0
  %987 = extractvalue %dx.types.ResRet.f32 %985, 1
  %988 = extractvalue %dx.types.ResRet.f32 %985, 2
  %989 = extractvalue %dx.types.ResRet.f32 %985, 3
  %990 = bitcast float %785 to i32
  %991 = and i32 %990, 255
  %992 = uitofp i32 %991 to float
  %993 = lshr i32 %990, 8
  %994 = and i32 %993, 255
  %995 = uitofp i32 %994 to float
  %996 = lshr i32 %990, 16
  %997 = and i32 %996, 255
  %998 = uitofp i32 %997 to float
  %999 = fmul fast float %998, 0x3F70101000000000
  %1000 = fmul fast float %986, %992
  %1001 = fadd fast float %1000, %995
  %1002 = fmul fast float %1001, 0x3F70101000000000
  %1003 = fadd fast float %987, -5.000000e-01
  %1004 = fadd fast float %989, -5.000000e-01
  %1005 = fmul fast float %1003, %999
  %1006 = fmul fast float %1004, %999
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fadd fast float %1006, 5.000000e-01
  %1009 = fmul fast float %970, %794
  %1010 = fmul fast float %971, %795
  %1011 = fmul fast float %972, %796
  %1012 = fmul fast float %1007, 2.000000e+00
  %1013 = fadd fast float %1012, -1.000000e+00
  %1014 = fmul fast float %1008, 2.000000e+00
  %1015 = fadd fast float %1014, -1.000000e+00
  %1016 = fadd fast float %1013, %1015
  %1017 = fmul fast float %1016, 5.000000e-01
  %1018 = fsub fast float %1013, %1015
  %1019 = fmul fast float %1018, 5.000000e-01
  %1020 = call float @dx.op.unary.f32(i32 6, float %1017)  ; FAbs(value)
  %1021 = fsub fast float 1.000000e+00, %1020
  %1022 = call float @dx.op.unary.f32(i32 6, float %1019)  ; FAbs(value)
  %1023 = fsub fast float %1021, %1022
  %1024 = call float @dx.op.dot3.f32(i32 55, float %1017, float %1019, float %1023, float %1017, float %1019, float %1023)  ; Dot3(ax,ay,az,bx,by,bz)
  %1025 = call float @dx.op.unary.f32(i32 25, float %1024)  ; Rsqrt(value)
  %1026 = fmul fast float %1017, %1025
  %1027 = fmul fast float %1019, %1025
  %1028 = fmul fast float %1025, %1023
  %1029 = fmul fast float %1028, %759
  %1030 = fmul fast float %1028, %760
  %1031 = fmul fast float %1028, %761
  %1032 = fmul fast float %1026, %782
  %1033 = fmul fast float %1026, %783
  %1034 = fmul fast float %1026, %784
  %1035 = fadd fast float %1032, %1029
  %1036 = fadd fast float %1033, %1030
  %1037 = fadd fast float %1034, %1031
  %1038 = fmul fast float %1027, %788
  %1039 = fmul fast float %1027, %789
  %1040 = fmul fast float %1027, %790
  %1041 = fadd fast float %1035, %1038
  %1042 = fadd fast float %1036, %1039
  %1043 = fadd fast float %1037, %1040
  %1044 = call float @dx.op.dot3.f32(i32 55, float %1041, float %1042, float %1043, float %1041, float %1042, float %1043)  ; Dot3(ax,ay,az,bx,by,bz)
  %1045 = call float @dx.op.unary.f32(i32 25, float %1044)  ; Rsqrt(value)
  %1046 = fmul fast float %1041, %1045
  %1047 = fmul fast float %1042, %1045
  %1048 = fmul fast float %1043, %1045
  %1049 = icmp ne i32 %965, 0
  %1050 = select i1 %1049, float 1.000000e+00, float 0.000000e+00
  %1051 = fmul fast float %955, %1050
  %1052 = and i32 %809, 1
  %1053 = icmp eq i32 %1052, 0
  br i1 %1053, label %1054, label %1058

; <label>:1054                                    ; preds = %963
  %1055 = fsub fast float %1046, %741
  %1056 = fsub fast float %1047, %742
  %1057 = fsub fast float %1048, %743
  br label %1058

; <label>:1058                                    ; preds = %1054, %963
  %1059 = phi float [ %1055, %1054 ], [ %1046, %963 ]
  %1060 = phi float [ %1056, %1054 ], [ %1047, %963 ]
  %1061 = phi float [ %1057, %1054 ], [ %1048, %963 ]
  %1062 = fmul float %1061, %1051
  %1063 = fmul float %1060, %1051
  %1064 = fmul float %1059, %1051
  %1065 = fadd fast float %1064, %741
  %1066 = fadd fast float %1063, %742
  %1067 = fadd fast float %1062, %743
  %1068 = icmp ne i32 %964, 0
  %1069 = select i1 %1068, float 1.000000e+00, float 0.000000e+00
  %1070 = fmul fast float %955, %1069
  %1071 = fsub fast float %1009, %748
  %1072 = fsub fast float %1010, %749
  %1073 = fsub fast float %1011, %750
  %1074 = fmul fast float %1071, %1070
  %1075 = fmul fast float %1072, %1070
  %1076 = fmul fast float %1073, %1070
  %1077 = fadd fast float %1074, %748
  %1078 = fadd fast float %1075, %749
  %1079 = fadd fast float %1076, %750
  %1080 = fsub fast float %982, %747
  %1081 = fmul fast float %1080, %1070
  %1082 = fadd fast float %1081, %747
  %1083 = fmul fast float %1070, %737
  %1084 = fsub fast float %737, %1083
  %1085 = fmul fast float %1070, %736
  %1086 = fsub fast float %736, %1085
  %1087 = fadd fast float %955, %746
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = fsub fast float %1002, %745
  %1090 = fmul fast float %1089, %1051
  %1091 = fadd fast float %1090, %745
  %1092 = fsub fast float %988, %744
  %1093 = fmul fast float %1092, %1051
  %1094 = fadd fast float %1093, %744
  %1095 = call float @dx.op.dot3.f32(i32 55, float %1009, float %1010, float %1011, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = extractvalue %dx.types.CBufRet.f32 %1096, 1
  %1099 = fmul fast float %1098, %1095
  %1100 = fadd fast float %1099, %1097
  %1101 = call float @dx.op.unary.f32(i32 7, float %1100)  ; Saturate(value)
  %1102 = bitcast float %797 to i32
  %1103 = and i32 %1102, 65535
  %1104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1103)  ; LegacyF16ToF32(value)
  %1105 = lshr i32 %1102, 16
  %1106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1105)  ; LegacyF16ToF32(value)
  %1107 = fcmp fast oge float %1104, 0.000000e+00
  %1108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1109 = extractvalue %dx.types.CBufRet.f32 %1108, 0
  %1110 = select i1 %1107, float %1104, float %1109
  %1111 = fadd fast float %1110, %1106
  %1112 = fsub fast float %1101, %735
  %1113 = fmul fast float %1112, %955
  %1114 = fadd fast float %1113, %735
  %1115 = fmul fast float %1111, %955
  %1116 = call float @dx.op.binary.f32(i32 35, float %734, float %1115)  ; FMax(a,b)
  %1117 = and i32 %809, 16
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1141, label %1119

; <label>:1119                                    ; preds = %1058
  %1120 = bitcast float %803 to i32
  %1121 = add i32 %800, 0
  %1122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1121, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1123 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1122, %dx.types.Handle %968, float %896, float %899, float undef, float undef, i32 0, i32 0, i32 undef, float %901, float %903, float undef, float %905, float %907, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1124 = extractvalue %dx.types.ResRet.f32 %1123, 0
  %1125 = extractvalue %dx.types.ResRet.f32 %1123, 1
  %1126 = extractvalue %dx.types.ResRet.f32 %1123, 2
  %1127 = and i32 %1120, 65535
  %1128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1127)  ; LegacyF16ToF32(value)
  %1129 = fmul fast float %1124, %794
  %1130 = fmul fast float %1125, %795
  %1131 = fmul fast float %1126, %796
  %1132 = and i32 %809, 16384
  %1133 = icmp ne i32 %1132, 0
  %1134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1135 = extractvalue %dx.types.CBufRet.f32 %1134, 0
  %1136 = select i1 %1133, float %1135, float 1.000000e+00
  %1137 = fmul fast float %1136, %1128
  %1138 = fmul fast float %1129, %1137
  %1139 = fmul fast float %1130, %1137
  %1140 = fmul fast float %1131, %1137
  br label %1141

; <label>:1141                                    ; preds = %1119, %1058
  %1142 = phi float [ %1138, %1119 ], [ 0.000000e+00, %1058 ]
  %1143 = phi float [ %1139, %1119 ], [ 0.000000e+00, %1058 ]
  %1144 = phi float [ %1140, %1119 ], [ 0.000000e+00, %1058 ]
  %1145 = fsub fast float %1142, %738
  %1146 = fsub fast float %1143, %739
  %1147 = fsub fast float %1144, %740
  %1148 = fmul fast float %1145, %955
  %1149 = fmul fast float %1146, %955
  %1150 = fmul fast float %1147, %955
  %1151 = fadd fast float %1148, %738
  %1152 = fadd fast float %1149, %739
  %1153 = fadd fast float %1150, %740
  br label %858

; <label>:1154                                    ; preds = %858
  br label %1155

; <label>:1155                                    ; preds = %1154, %629
  %1156 = phi float [ 0.000000e+00, %629 ], [ %859, %1154 ]
  %1157 = phi float [ %644, %629 ], [ %860, %1154 ]
  %1158 = phi float [ %642, %629 ], [ %861, %1154 ]
  %1159 = phi float [ 0.000000e+00, %629 ], [ %862, %1154 ]
  %1160 = phi float [ 0.000000e+00, %629 ], [ %863, %1154 ]
  %1161 = phi float [ %635, %629 ], [ %864, %1154 ]
  %1162 = phi float [ %636, %629 ], [ %865, %1154 ]
  %1163 = phi float [ %637, %629 ], [ %866, %1154 ]
  %1164 = phi float [ %676, %629 ], [ %867, %1154 ]
  %1165 = phi float [ %677, %629 ], [ %868, %1154 ]
  %1166 = phi float [ %678, %629 ], [ %869, %1154 ]
  %1167 = phi float [ %641, %629 ], [ %870, %1154 ]
  %1168 = phi float [ %640, %629 ], [ %871, %1154 ]
  %1169 = phi float [ 0.000000e+00, %629 ], [ %872, %1154 ]
  %1170 = phi float [ %638, %629 ], [ %873, %1154 ]
  %1171 = phi float [ %632, %629 ], [ %874, %1154 ]
  %1172 = phi float [ %633, %629 ], [ %875, %1154 ]
  %1173 = phi float [ %634, %629 ], [ %876, %1154 ]
  %1174 = call float @dx.op.dot3.f32(i32 55, float %1164, float %1165, float %1166, float %1164, float %1165, float %1166)  ; Dot3(ax,ay,az,bx,by,bz)
  %1175 = call float @dx.op.unary.f32(i32 25, float %1174)  ; Rsqrt(value)
  %1176 = fmul fast float %1175, %1164
  %1177 = fmul fast float %1175, %1165
  %1178 = fmul fast float %1175, %1166
  %1179 = fadd fast float %1169, %639
  %1180 = call float @dx.op.unary.f32(i32 7, float %1179)  ; Saturate(value)
  %1181 = call float @dx.op.dot3.f32(i32 55, float %1176, float %1177, float %1178, float %1176, float %1177, float %1178)  ; Dot3(ax,ay,az,bx,by,bz)
  %1182 = call float @dx.op.unary.f32(i32 25, float %1181)  ; Rsqrt(value)
  %1183 = fmul fast float %1182, %1176
  %1184 = fmul fast float %1182, %1177
  %1185 = fmul fast float %1182, %1178
  %1186 = fadd fast float %1170, 0xBFB99999A0000000
  %1187 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1188 = fmul fast float %1187, 0x3FF1C71C80000000
  %1189 = call float @dx.op.binary.f32(i32 36, float %1170, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1190 = fsub fast float 1.000000e+00, %1188
  %1191 = call float @dx.op.unary.f32(i32 7, float %1190)  ; Saturate(value)
  %1192 = fmul fast float %1191, %1171
  %1193 = fmul fast float %1191, %1172
  %1194 = fmul fast float %1191, %1173
  %1195 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1196 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1197 = call float @dx.op.unary.f32(i32 7, float %1194)  ; Saturate(value)
  %1198 = fmul fast float %1188, %1171
  %1199 = fmul fast float %1188, %1172
  %1200 = fmul fast float %1188, %1173
  %1201 = fadd fast float %1198, %1189
  %1202 = fadd fast float %1199, %1189
  %1203 = fadd fast float %1200, %1189
  %1204 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1205 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1206 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1207 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.i32 %1208, 3
  %1210 = and i32 %1209, 8
  %1211 = icmp ne i32 %1210, 0
  %1212 = call float @dx.op.binary.f32(i32 35, float %1195, float %1171)  ; FMax(a,b)
  %1213 = call float @dx.op.binary.f32(i32 35, float %1196, float %1171)  ; FMax(a,b)
  %1214 = call float @dx.op.binary.f32(i32 35, float %1197, float %1171)  ; FMax(a,b)
  %1215 = call float @dx.op.dot3.f32(i32 55, float %1195, float %1196, float %1197, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1216 = select i1 %151, float %1171, float %1195
  %1217 = select i1 %151, float %1215, float %1196
  %1218 = select i1 %151, float 1.000000e+00, float %1197
  %1219 = select i1 %1211, float %1212, float %1216
  %1220 = select i1 %1211, float %1213, float %1217
  %1221 = select i1 %1211, float %1214, float %1218
  %1222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1223 = extractvalue %dx.types.CBufRet.f32 %1222, 0
  %1224 = extractvalue %dx.types.CBufRet.f32 %1222, 1
  %1225 = extractvalue %dx.types.CBufRet.f32 %1222, 2
  %1226 = fadd fast float %1223, %109
  %1227 = fadd fast float %1224, %110
  %1228 = fadd fast float %1225, %111
  %1229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1230 = extractvalue %dx.types.CBufRet.f32 %1229, 0
  %1231 = extractvalue %dx.types.CBufRet.f32 %1229, 1
  %1232 = fsub fast float %1226, %1230
  %1233 = fsub fast float %1227, %1231
  %1234 = fmul fast float %1232, %1232
  %1235 = fmul fast float %1233, %1233
  %1236 = fadd fast float %1234, %1235
  %1237 = call float @dx.op.unary.f32(i32 24, float %1236)  ; Sqrt(value)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1229, 2
  %1239 = fcmp fast olt float %1237, %1238
  br i1 %1239, label %1240, label %1307

; <label>:1240                                    ; preds = %1155
  %1241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1242 = extractvalue %dx.types.CBufRet.f32 %1241, 0
  %1243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1244 = extractvalue %dx.types.CBufRet.f32 %1243, 0
  %1245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1246 = extractvalue %dx.types.CBufRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.CBufRet.f32 %1241, 1
  %1248 = extractvalue %dx.types.CBufRet.f32 %1243, 1
  %1249 = extractvalue %dx.types.CBufRet.f32 %1245, 1
  %1250 = extractvalue %dx.types.CBufRet.f32 %1241, 3
  %1251 = extractvalue %dx.types.CBufRet.f32 %1243, 3
  %1252 = extractvalue %dx.types.CBufRet.f32 %1245, 3
  %1253 = fadd fast float %1250, %1226
  %1254 = fadd fast float %1251, %1227
  %1255 = fadd fast float %1252, %1228
  %1256 = fmul fast float %1253, %1242
  %1257 = call float @dx.op.tertiary.f32(i32 46, float %1254, float %1244, float %1256)  ; FMad(a,b,c)
  %1258 = call float @dx.op.tertiary.f32(i32 46, float %1255, float %1246, float %1257)  ; FMad(a,b,c)
  %1259 = fmul fast float %1253, %1247
  %1260 = call float @dx.op.tertiary.f32(i32 46, float %1254, float %1248, float %1259)  ; FMad(a,b,c)
  %1261 = call float @dx.op.tertiary.f32(i32 46, float %1255, float %1249, float %1260)  ; FMad(a,b,c)
  %1262 = fsub fast float %1258, %1250
  %1263 = fsub fast float %1261, %1251
  %1264 = fsub fast float %1262, %1230
  %1265 = fadd fast float %1264, %1238
  %1266 = fsub fast float %1263, %1231
  %1267 = fadd fast float %1266, %1238
  %1268 = extractvalue %dx.types.CBufRet.f32 %1229, 3
  %1269 = fmul fast float %1265, %1268
  %1270 = fmul fast float %1267, %1268
  %1271 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1272 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1273 = fsub fast float 1.000000e+00, %1271
  %1274 = fsub fast float 1.000000e+00, %1272
  %1275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  %1277 = fcmp fast ugt float %1276, 0.000000e+00
  br i1 %1277, label %1278, label %1581

; <label>:1278                                    ; preds = %1240
  %1279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1280 = extractvalue %dx.types.CBufRet.f32 %1279, 2
  %1281 = fmul fast float %1280, %1276
  %1282 = extractvalue %dx.types.CBufRet.f32 %1279, 3
  %1283 = fadd fast float %1282, %1281
  %1284 = extractvalue %dx.types.CBufRet.f32 %1245, 2
  %1285 = fadd fast float %1283, %1252
  %1286 = fmul fast float %1258, %1246
  %1287 = call float @dx.op.tertiary.f32(i32 46, float %1261, float %1249, float %1286)  ; FMad(a,b,c)
  %1288 = call float @dx.op.tertiary.f32(i32 46, float %1285, float %1284, float %1287)  ; FMad(a,b,c)
  %1289 = fsub fast float %1288, %1252
  %1290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1291 = extractvalue %dx.types.CBufRet.f32 %1290, 2
  %1292 = fsub fast float %1289, %1291
  %1293 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1294 = extractvalue %dx.types.ResRet.f32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.f32 %1293, 1
  %1296 = extractvalue %dx.types.ResRet.f32 %1293, 2
  %1297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %1273, float %1274, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1298 = extractvalue %dx.types.ResRet.f32 %1297, 0
  %1299 = extractvalue %dx.types.ResRet.f32 %1297, 1
  %1300 = extractvalue %dx.types.ResRet.f32 %1297, 2
  %1301 = fadd fast float %1298, %1294
  %1302 = fmul fast float %1301, 0x3F847AE140000000
  %1303 = fadd fast float %1299, %1295
  %1304 = fmul fast float %1303, 0x3F847AE140000000
  %1305 = fadd fast float %1300, %1296
  %1306 = fmul fast float %1305, 0x3F847AE140000000
  br label %1581

; <label>:1307                                    ; preds = %1155
  %1308 = and i32 %127, 1
  %1309 = icmp eq i32 %1308, 0
  br i1 %1309, label %1581, label %1310

; <label>:1310                                    ; preds = %1307
  %1311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1312 = extractvalue %dx.types.CBufRet.f32 %1311, 0
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1316 = extractvalue %dx.types.CBufRet.f32 %1315, 0
  %1317 = extractvalue %dx.types.CBufRet.f32 %1311, 1
  %1318 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1319 = extractvalue %dx.types.CBufRet.f32 %1315, 1
  %1320 = extractvalue %dx.types.CBufRet.f32 %1311, 3
  %1321 = extractvalue %dx.types.CBufRet.f32 %1313, 3
  %1322 = extractvalue %dx.types.CBufRet.f32 %1315, 3
  %1323 = fadd fast float %1320, %1226
  %1324 = fadd fast float %1321, %1227
  %1325 = fadd fast float %1322, %1228
  %1326 = fmul fast float %1323, %1312
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1324, float %1314, float %1326)  ; FMad(a,b,c)
  %1328 = call float @dx.op.tertiary.f32(i32 46, float %1325, float %1316, float %1327)  ; FMad(a,b,c)
  %1329 = fmul fast float %1323, %1317
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1324, float %1318, float %1329)  ; FMad(a,b,c)
  %1331 = call float @dx.op.tertiary.f32(i32 46, float %1325, float %1319, float %1330)  ; FMad(a,b,c)
  %1332 = fsub fast float %1328, %1320
  %1333 = fsub fast float %1331, %1321
  %1334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1335 = extractvalue %dx.types.CBufRet.f32 %1334, 0
  %1336 = extractvalue %dx.types.CBufRet.f32 %1334, 1
  %1337 = extractvalue %dx.types.CBufRet.f32 %1334, 2
  %1338 = extractvalue %dx.types.CBufRet.f32 %1334, 3
  %1339 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1340 = extractvalue %dx.types.CBufRet.f32 %1339, 3
  %1341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1342 = extractvalue %dx.types.CBufRet.i32 %1341, 0
  %1343 = extractvalue %dx.types.CBufRet.i32 %1341, 1
  %1344 = udiv i32 %1343, %1342
  %1345 = fsub fast float %1332, %1335
  %1346 = fsub fast float %1333, %1336
  %1347 = call float @dx.op.binary.f32(i32 35, float %1345, float 0.000000e+00)  ; FMax(a,b)
  %1348 = call float @dx.op.binary.f32(i32 35, float %1346, float 0.000000e+00)  ; FMax(a,b)
  %1349 = call float @dx.op.binary.f32(i32 36, float %1347, float %1337)  ; FMin(a,b)
  %1350 = call float @dx.op.binary.f32(i32 36, float %1348, float %1338)  ; FMin(a,b)
  %1351 = add i32 %1342, -1
  %1352 = add i32 %1344, -1
  %1353 = fmul fast float %1349, %1340
  %1354 = fmul fast float %1350, %1340
  %1355 = fptoui float %1353 to i32
  %1356 = fptoui float %1354 to i32
  %1357 = call i32 @dx.op.binary.i32(i32 40, i32 %1355, i32 %1351)  ; UMin(a,b)
  %1358 = call i32 @dx.op.binary.i32(i32 40, i32 %1356, i32 %1352)  ; UMin(a,b)
  %1359 = mul i32 %1358, %1342
  %1360 = add i32 %1359, %1357
  %1361 = shl i32 %1360, 2
  %1362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1361, i32 undef)  ; BufferLoad(srv,index,wot)
  %1363 = extractvalue %dx.types.ResRet.i32 %1362, 0
  %1364 = icmp eq i32 %1363, -1
  br i1 %1364, label %1581, label %1365

; <label>:1365                                    ; preds = %1310
  %1366 = mul i32 %1363, 148
  %1367 = add i32 %1366, 4
  %1368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1367, i32 undef)  ; BufferLoad(srv,index,wot)
  %1369 = extractvalue %dx.types.ResRet.f32 %1368, 0
  %1370 = add i32 %1366, 8
  %1371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1370, i32 undef)  ; BufferLoad(srv,index,wot)
  %1372 = extractvalue %dx.types.ResRet.f32 %1371, 0
  %1373 = add i32 %1366, 36
  %1374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1373, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.f32 %1374, 0
  %1376 = add i32 %1366, 60
  %1377 = add i32 %1366, 92
  %1378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1377, i32 undef)  ; BufferLoad(srv,index,wot)
  %1379 = extractvalue %dx.types.ResRet.i32 %1378, 0
  %1380 = add i32 %1366, 116
  %1381 = fsub fast float %1332, %1369
  %1382 = fsub fast float %1333, %1372
  %1383 = fmul fast float %1340, %1381
  %1384 = fmul fast float %1340, %1382
  %1385 = call float @dx.op.unary.f32(i32 7, float %1383)  ; Saturate(value)
  %1386 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1387 = fsub fast float 1.000000e+00, %1386
  %1388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1389 = extractvalue %dx.types.CBufRet.f32 %1388, 2
  %1390 = call float @dx.op.unary.f32(i32 83, float %1385)  ; DerivCoarseX(value)
  %1391 = call float @dx.op.unary.f32(i32 83, float %1387)  ; DerivCoarseX(value)
  %1392 = call float @dx.op.unary.f32(i32 84, float %1385)  ; DerivCoarseY(value)
  %1393 = call float @dx.op.unary.f32(i32 84, float %1387)  ; DerivCoarseY(value)
  %1394 = fmul fast float %1390, %1389
  %1395 = fmul fast float %1391, %1389
  %1396 = fmul fast float %1392, %1389
  %1397 = fmul fast float %1393, %1389
  %1398 = call float @dx.op.dot2.f32(i32 54, float %1396, float %1397, float %1396, float %1397)  ; Dot2(ax,ay,bx,by)
  %1399 = call float @dx.op.dot2.f32(i32 54, float %1394, float %1395, float %1394, float %1395)  ; Dot2(ax,ay,bx,by)
  %1400 = call float @dx.op.binary.f32(i32 35, float %1399, float %1398)  ; FMax(a,b)
  %1401 = call float @dx.op.unary.f32(i32 23, float %1400)  ; Log(value)
  %1402 = fmul fast float %1401, 5.000000e-01
  %1403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1404 = extractvalue %dx.types.CBufRet.f32 %1403, 1
  %1405 = fadd fast float %1404, %1402
  %1406 = call float @dx.op.binary.f32(i32 35, float %1405, float 0.000000e+00)  ; FMax(a,b)
  %1407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1408 = extractvalue %dx.types.CBufRet.f32 %1407, 3
  %1409 = fadd fast float %1408, %1406
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 3
  %1412 = fadd fast float %1409, %1411
  %1413 = add i32 %1379, 0
  %1414 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1413, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1415 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1414, i32 0)  ; GetDimensions(handle,mipLevel)
  %1416 = extractvalue %dx.types.Dimensions %1415, 0
  %1417 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1416)  ; FirstbitLo(value)
  %1418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1419 = extractvalue %dx.types.CBufRet.i32 %1418, 1
  %1420 = sub nsw i32 %1419, %1417
  %1421 = sitofp i32 %1420 to float
  %1422 = fsub fast float %1412, %1421
  %1423 = call float @dx.op.binary.f32(i32 35, float %1422, float 0.000000e+00)  ; FMax(a,b)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1414, %dx.types.Handle %23, float %1385, float %1387, float %1375, float undef, i32 0, i32 0, i32 undef, float %1423)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = fcmp ule float %1425, 0x3FE0101020000000
  %1427 = extractvalue %dx.types.CBufRet.i32 %1418, 0
  %1428 = and i32 %1427, 128
  %1429 = icmp ne i32 %1428, 0
  %1430 = and i1 %1426, %1429
  br i1 %1430, label %1581, label %1431

; <label>:1431                                    ; preds = %1365
  %1432 = add i32 %1366, 20
  %1433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = add i32 %1366, 24
  %1436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.f32 %1436, 0
  %1438 = add i32 %1366, 40
  %1439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1438, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = add i32 %1366, 96
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1441, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 2
  %1446 = fmul fast float %1445, %1385
  %1447 = fmul fast float %1445, %1387
  %1448 = extractvalue %dx.types.CBufRet.f32 %1444, 3
  %1449 = fadd fast float %1446, %1448
  %1450 = fadd fast float %1447, %1448
  %1451 = add i32 %1443, 0
  %1452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1451, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1453 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1452, i32 0)  ; GetDimensions(handle,mipLevel)
  %1454 = extractvalue %dx.types.Dimensions %1453, 0
  %1455 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1454)  ; FirstbitLo(value)
  %1456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.i32 %1456, 1
  %1458 = sub nsw i32 %1457, %1455
  %1459 = sitofp i32 %1458 to float
  %1460 = fsub fast float %1409, %1459
  %1461 = call float @dx.op.binary.f32(i32 35, float %1460, float 0.000000e+00)  ; FMax(a,b)
  %1462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1452, %dx.types.Handle %23, float %1449, float %1450, float %1440, float undef, i32 0, i32 0, i32 undef, float %1461)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = fmul fast float %1463, %1434
  %1465 = fadd fast float %1464, %1437
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.CBufRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.CBufRet.f32 %1466, 2
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 3
  %1472 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.f32 %1472, 3
  %1474 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1475 = fadd fast float %1471, %1332
  %1476 = fadd fast float %1473, %1333
  %1477 = fadd fast float %1465, %1474
  %1478 = fmul fast float %1475, %1467
  %1479 = call float @dx.op.tertiary.f32(i32 46, float %1476, float %1468, float %1478)  ; FMad(a,b,c)
  %1480 = call float @dx.op.tertiary.f32(i32 46, float %1477, float %1469, float %1479)  ; FMad(a,b,c)
  %1481 = fsub fast float %1480, %1474
  %1482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1483 = extractvalue %dx.types.CBufRet.f32 %1482, 2
  %1484 = fsub fast float %1481, %1483
  %1485 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1486 = extractvalue %dx.types.CBufRet.i32 %1485, 0
  %1487 = call i32 @dx.op.binary.i32(i32 40, i32 %1363, i32 %1486)  ; UMin(a,b)
  %1488 = mul i32 %1487, 36
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = add i32 %1488, 4
  %1492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1493 = extractvalue %dx.types.CBufRet.f32 %1492, 0
  %1494 = fmul fast float %1493, %1385
  %1495 = fmul fast float %1493, %1387
  %1496 = extractvalue %dx.types.CBufRet.f32 %1492, 1
  %1497 = fadd fast float %1494, %1496
  %1498 = fadd fast float %1495, %1496
  %1499 = icmp eq i32 %1490, 0
  br i1 %1499, label %1568, label %1500

; <label>:1500                                    ; preds = %1431
  br label %1501

; <label>:1501                                    ; preds = %1558, %1500
  %1502 = phi float [ %1559, %1558 ], [ 0.000000e+00, %1500 ]
  %1503 = phi float [ %1560, %1558 ], [ 0.000000e+00, %1500 ]
  %1504 = phi float [ %1561, %1558 ], [ 0.000000e+00, %1500 ]
  %1505 = phi float [ %1562, %1558 ], [ 0.000000e+00, %1500 ]
  %1506 = phi float [ %1563, %1558 ], [ 0.000000e+00, %1500 ]
  %1507 = phi float [ %1564, %1558 ], [ 0.000000e+00, %1500 ]
  %1508 = phi i32 [ %1565, %1558 ], [ 0, %1500 ]
  %1509 = shl i32 %1508, 2
  %1510 = add i32 %1376, %1509
  %1511 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.f32 %1511, 0
  %1513 = add i32 %1380, %1509
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = add i32 %1515, 0
  %1517 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1516, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1518 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1517, i32 0)  ; GetDimensions(handle,mipLevel)
  %1519 = extractvalue %dx.types.Dimensions %1518, 0
  %1520 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1519)  ; FirstbitLo(value)
  %1521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1522 = extractvalue %dx.types.CBufRet.i32 %1521, 1
  %1523 = sub nsw i32 %1522, %1520
  %1524 = sitofp i32 %1523 to float
  %1525 = fsub fast float %1409, %1524
  %1526 = call float @dx.op.binary.f32(i32 35, float %1525, float 0.000000e+00)  ; FMax(a,b)
  %1527 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1517, %dx.types.Handle %23, float %1497, float %1498, float %1512, float undef, i32 0, i32 0, i32 undef, float %1526)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = fcmp fast ogt float %1528, 0.000000e+00
  br i1 %1529, label %1530, label %1558

; <label>:1530                                    ; preds = %1501
  %1531 = add i32 %1491, %1509
  %1532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1531, i32 undef)  ; BufferLoad(srv,index,wot)
  %1533 = extractvalue %dx.types.ResRet.i32 %1532, 0
  %1534 = and i32 %1533, 32767
  %1535 = mul nuw nsw i32 %1534, 928
  %1536 = add nuw nsw i32 %1535, 48
  %1537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.ResRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.ResRet.f32 %1537, 2
  %1541 = add nuw nsw i32 %1535, 60
  %1542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.ResRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.ResRet.f32 %1542, 2
  %1546 = fmul fast float %1538, %1528
  %1547 = fmul fast float %1539, %1528
  %1548 = fmul fast float %1540, %1528
  %1549 = fadd fast float %1546, %1502
  %1550 = fadd fast float %1547, %1503
  %1551 = fadd fast float %1548, %1504
  %1552 = fmul fast float %1543, %1528
  %1553 = fmul fast float %1544, %1528
  %1554 = fmul fast float %1545, %1528
  %1555 = fadd fast float %1552, %1505
  %1556 = fadd fast float %1553, %1506
  %1557 = fadd fast float %1554, %1507
  br label %1558

; <label>:1558                                    ; preds = %1530, %1501
  %1559 = phi float [ %1549, %1530 ], [ %1502, %1501 ]
  %1560 = phi float [ %1550, %1530 ], [ %1503, %1501 ]
  %1561 = phi float [ %1551, %1530 ], [ %1504, %1501 ]
  %1562 = phi float [ %1555, %1530 ], [ %1505, %1501 ]
  %1563 = phi float [ %1556, %1530 ], [ %1506, %1501 ]
  %1564 = phi float [ %1557, %1530 ], [ %1507, %1501 ]
  %1565 = add nuw i32 %1508, 1
  %1566 = icmp eq i32 %1565, %1490
  br i1 %1566, label %1567, label %1501

; <label>:1567                                    ; preds = %1558
  br label %1568

; <label>:1568                                    ; preds = %1567, %1431
  %1569 = phi float [ 0.000000e+00, %1431 ], [ %1559, %1567 ]
  %1570 = phi float [ 0.000000e+00, %1431 ], [ %1560, %1567 ]
  %1571 = phi float [ 0.000000e+00, %1431 ], [ %1561, %1567 ]
  %1572 = phi float [ 0.000000e+00, %1431 ], [ %1562, %1567 ]
  %1573 = phi float [ 0.000000e+00, %1431 ], [ %1563, %1567 ]
  %1574 = phi float [ 0.000000e+00, %1431 ], [ %1564, %1567 ]
  %1575 = fadd fast float %1572, %1569
  %1576 = fmul fast float %1575, 0x3F847AE140000000
  %1577 = fadd fast float %1573, %1570
  %1578 = fmul fast float %1577, 0x3F847AE140000000
  %1579 = fadd fast float %1574, %1571
  %1580 = fmul fast float %1579, 0x3F847AE140000000
  br label %1581

; <label>:1581                                    ; preds = %1568, %1365, %1310, %1307, %1278, %1240
  %1582 = phi float [ %1292, %1278 ], [ -1.310720e+05, %1240 ], [ %1484, %1568 ], [ -1.310720e+05, %1310 ], [ -1.310720e+05, %1365 ], [ -1.310720e+05, %1307 ]
  %1583 = phi float [ %1302, %1278 ], [ 0.000000e+00, %1240 ], [ %1576, %1568 ], [ 0.000000e+00, %1310 ], [ 0.000000e+00, %1365 ], [ 0.000000e+00, %1307 ]
  %1584 = phi float [ %1304, %1278 ], [ 0.000000e+00, %1240 ], [ %1578, %1568 ], [ 0.000000e+00, %1310 ], [ 0.000000e+00, %1365 ], [ 0.000000e+00, %1307 ]
  %1585 = phi float [ %1306, %1278 ], [ 0.000000e+00, %1240 ], [ %1580, %1568 ], [ 0.000000e+00, %1310 ], [ 0.000000e+00, %1365 ], [ 0.000000e+00, %1307 ]
  %1586 = phi i1 [ true, %1278 ], [ false, %1240 ], [ true, %1568 ], [ false, %1310 ], [ false, %1365 ], [ false, %1307 ]
  %1587 = and i32 %127, 3
  %1588 = icmp eq i32 %1587, 1
  %1589 = select i1 %1588, float 1.000000e+00, float 0.000000e+00
  %1590 = fsub fast float %1582, %111
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  %1592 = select i1 %1586, float %1591, float 1.000000e+00
  %1593 = fmul fast float %1592, %1589
  %1594 = icmp eq i32 %1587, 3
  %1595 = select i1 %1594, float 1.000000e+00, float %1593
  %1596 = call float @dx.op.binary.f32(i32 35, float %1156, float %1595)  ; FMax(a,b)
  %1597 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  %1598 = fcmp fast une float %1597, 0.000000e+00
  %1599 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %1600 = call float @dx.op.unary.f32(i32 25, float %1599)  ; Rsqrt(value)
  br i1 %1598, label %1608, label %1601

; <label>:1601                                    ; preds = %1581
  %1602 = fmul fast float %1600, %109
  %1603 = fmul fast float %1600, %110
  %1604 = fmul fast float %1600, %111
  %1605 = fsub fast float -0.000000e+00, %1602
  %1606 = fsub fast float -0.000000e+00, %1603
  %1607 = fsub fast float -0.000000e+00, %1604
  br label %1776

; <label>:1608                                    ; preds = %1581
  %1609 = fmul fast float %109, %1600
  %1610 = fsub fast float -0.000000e+00, %1609
  %1611 = fmul fast float %110, %1600
  %1612 = fsub fast float -0.000000e+00, %1611
  %1613 = fmul fast float %111, %1600
  %1614 = fsub fast float -0.000000e+00, %1613
  %1615 = call float @dx.op.dot3.f32(i32 55, float %1610, float %1612, float %1614, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %1616 = fmul fast float %1597, 2.500000e+00
  %1617 = call float @dx.op.unary.f32(i32 7, float %1616)  ; Saturate(value)
  %1618 = fmul fast float %1597, 0x4013FFFFE0000000
  %1619 = fadd fast float %1618, 0xBFFFFFFFE0000000
  %1620 = call float @dx.op.unary.f32(i32 7, float %1619)  ; Saturate(value)
  %1621 = fmul fast float %1597, 0x4004000020000000
  %1622 = fadd fast float %1621, 0xBFF8000040000000
  %1623 = call float @dx.op.unary.f32(i32 7, float %1622)  ; Saturate(value)
  %1624 = call float @dx.op.unary.f32(i32 7, float %1617)  ; Saturate(value)
  %1625 = fmul fast float %1186, 1.000000e+01
  %1626 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1627 = fmul fast float %1626, 2.000000e+00
  %1628 = fsub fast float 3.000000e+00, %1627
  %1629 = fmul fast float %1626, %1626
  %1630 = fmul fast float %1629, %1628
  %1631 = fsub fast float 1.000000e+00, %1630
  %1632 = fsub fast float 0x3FE3333340000000, %1207
  %1633 = fmul fast float %1632, 0x400AAAAAA0000000
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  %1635 = fmul fast float %1631, %1634
  %1636 = fmul fast float %1219, 0x3FEA2B8620000000
  %1637 = fmul fast float %1220, 0x3FEA2B8620000000
  %1638 = fmul fast float %1221, 0x3FEA2B8620000000
  %1639 = fadd fast float %1636, 0x3FC81DFBA0000000
  %1640 = fmul fast float %1639, %1219
  %1641 = fadd fast float %1640, 0x3F910E6020000000
  %1642 = fadd fast float %1637, 0x3FC81DFBA0000000
  %1643 = fmul fast float %1642, %1220
  %1644 = fadd fast float %1643, 0x3F910E6020000000
  %1645 = fadd fast float %1638, 0x3FC81DFBA0000000
  %1646 = fmul fast float %1645, %1221
  %1647 = fadd fast float %1646, 0x3F910E6020000000
  %1648 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  %1649 = call float @dx.op.unary.f32(i32 7, float %1644)  ; Saturate(value)
  %1650 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  %1651 = fsub fast float %1648, %1219
  %1652 = fsub fast float %1649, %1220
  %1653 = fsub fast float %1650, %1221
  %1654 = fmul fast float %1651, %1624
  %1655 = fmul fast float %1654, %1635
  %1656 = fmul fast float %1652, %1624
  %1657 = fmul fast float %1656, %1635
  %1658 = fmul fast float %1653, %1624
  %1659 = fmul fast float %1658, %1635
  %1660 = fadd fast float %1655, %1219
  %1661 = fadd fast float %1657, %1220
  %1662 = fadd fast float %1659, %1221
  %1663 = fmul fast float %1167, %1167
  %1664 = fmul fast float %1663, %1663
  %1665 = fadd fast float %1620, 1.000000e+00
  %1666 = fsub fast float %1665, %1635
  %1667 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1668 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1669 = call float @dx.op.unary.f32(i32 7, float %1668)  ; Saturate(value)
  %1670 = fsub fast float 1.000000e+00, %1664
  %1671 = call float @dx.op.binary.f32(i32 36, float %1667, float %1670)  ; FMin(a,b)
  %1672 = call float @dx.op.unary.f32(i32 7, float %1623)  ; Saturate(value)
  %1673 = call float @dx.op.binary.f32(i32 35, float %1671, float %1672)  ; FMax(a,b)
  %1674 = fadd fast float %1669, 0xBFE4CCCCC0000000
  %1675 = fmul fast float %1674, 0x4006DB6DA0000000
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = fmul fast float %1676, 2.000000e+00
  %1678 = fsub fast float 3.000000e+00, %1677
  %1679 = bitcast float %1204 to i32
  %1680 = ashr i32 %1679, 1
  %1681 = add nsw i32 %1680, 532487669
  %1682 = bitcast i32 %1681 to float
  %1683 = fsub fast float 1.000000e+00, %1682
  %1684 = bitcast float %1683 to i32
  %1685 = sub nsw i32 2129859010, %1684
  %1686 = bitcast i32 %1685 to float
  %1687 = fmul fast float %1686, 2.000000e+00
  %1688 = bitcast float %1205 to i32
  %1689 = ashr i32 %1688, 1
  %1690 = add nsw i32 %1689, 532487669
  %1691 = bitcast i32 %1690 to float
  %1692 = fsub fast float 1.000000e+00, %1691
  %1693 = bitcast float %1692 to i32
  %1694 = sub nsw i32 2129859010, %1693
  %1695 = bitcast i32 %1694 to float
  %1696 = fmul fast float %1695, 2.000000e+00
  %1697 = bitcast float %1206 to i32
  %1698 = ashr i32 %1697, 1
  %1699 = add nsw i32 %1698, 532487669
  %1700 = bitcast i32 %1699 to float
  %1701 = fsub fast float 1.000000e+00, %1700
  %1702 = bitcast float %1701 to i32
  %1703 = sub nsw i32 2129859010, %1702
  %1704 = bitcast i32 %1703 to float
  %1705 = fmul fast float %1704, 2.000000e+00
  %1706 = fsub fast float 0x4002A9FBE0000000, %1687
  %1707 = fadd fast float %1687, 0x3FD54FDF00000000
  %1708 = bitcast float %1707 to i32
  %1709 = sub nsw i32 2129859010, %1708
  %1710 = bitcast i32 %1709 to float
  %1711 = fmul fast float %1710, %1706
  %1712 = fmul fast float %1711, %1711
  %1713 = fsub fast float 0x4002A9FBE0000000, %1696
  %1714 = fadd fast float %1696, 0x3FD54FDF00000000
  %1715 = bitcast float %1714 to i32
  %1716 = sub nsw i32 2129859010, %1715
  %1717 = bitcast i32 %1716 to float
  %1718 = fmul fast float %1717, %1713
  %1719 = fmul fast float %1718, %1718
  %1720 = fsub fast float 0x4002A9FBE0000000, %1705
  %1721 = fadd fast float %1705, 0x3FD54FDF00000000
  %1722 = bitcast float %1721 to i32
  %1723 = sub nsw i32 2129859010, %1722
  %1724 = bitcast i32 %1723 to float
  %1725 = fmul fast float %1724, %1720
  %1726 = fmul fast float %1725, %1725
  %1727 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1712)  ; FMax(a,b)
  %1728 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1719)  ; FMax(a,b)
  %1729 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1726)  ; FMax(a,b)
  %1730 = fsub fast float 1.000000e+00, %1615
  %1731 = fadd fast float %1730, %1631
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = fsub fast float 1.000000e+00, %1595
  %1734 = fmul fast float %1673, %1733
  %1735 = fmul fast float %1676, %1676
  %1736 = fmul fast float %1735, %1734
  %1737 = fmul fast float %1736, %1678
  %1738 = fmul fast float %1733, 0xBFE99999A0000000
  %1739 = fmul fast float %1738, %1624
  %1740 = fmul fast float %1739, %1635
  %1741 = fadd fast float %1740, 1.000000e+00
  %1742 = fadd fast float %1207, -1.000000e+00
  %1743 = fmul fast float %1741, %1742
  %1744 = fadd fast float %1743, 1.000000e+00
  %1745 = fsub fast float %1727, %1204
  %1746 = fsub fast float %1728, %1205
  %1747 = fsub fast float %1729, %1206
  %1748 = fmul fast float %1737, %1745
  %1749 = fmul fast float %1737, %1746
  %1750 = fmul fast float %1737, %1747
  %1751 = fadd fast float %1748, %1204
  %1752 = fadd fast float %1749, %1205
  %1753 = fadd fast float %1750, %1206
  %1754 = fsub fast float %56, %1183
  %1755 = fsub fast float %57, %1184
  %1756 = fsub fast float %58, %1185
  %1757 = fmul fast float %1737, %1754
  %1758 = fmul fast float %1737, %1755
  %1759 = fmul fast float %1737, %1756
  %1760 = fadd fast float %1757, %1183
  %1761 = fadd fast float %1758, %1184
  %1762 = fadd fast float %1759, %1185
  %1763 = fmul fast float %1737, %1732
  %1764 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1765 = fsub fast float 1.000000e+00, %1764
  %1766 = fmul fast float %1763, %1765
  %1767 = fadd fast float %1766, %1764
  %1768 = fsub fast float 1.000000e+00, %1167
  %1769 = fmul fast float %1737, %1768
  %1770 = fadd fast float %1769, %1167
  %1771 = call float @dx.op.dot3.f32(i32 55, float %1760, float %1761, float %1762, float %1760, float %1761, float %1762)  ; Dot3(ax,ay,az,bx,by,bz)
  %1772 = call float @dx.op.unary.f32(i32 25, float %1771)  ; Rsqrt(value)
  %1773 = fmul fast float %1760, %1772
  %1774 = fmul fast float %1761, %1772
  %1775 = fmul fast float %1762, %1772
  br label %1776

; <label>:1776                                    ; preds = %1608, %1601
  %1777 = phi float [ %1607, %1601 ], [ %1614, %1608 ]
  %1778 = phi float [ %1606, %1601 ], [ %1612, %1608 ]
  %1779 = phi float [ %1605, %1601 ], [ %1610, %1608 ]
  %1780 = phi float [ %1604, %1601 ], [ %1613, %1608 ]
  %1781 = phi float [ %1603, %1601 ], [ %1611, %1608 ]
  %1782 = phi float [ %1602, %1601 ], [ %1609, %1608 ]
  %1783 = phi float [ %1204, %1601 ], [ %1751, %1608 ]
  %1784 = phi float [ %1205, %1601 ], [ %1752, %1608 ]
  %1785 = phi float [ %1206, %1601 ], [ %1753, %1608 ]
  %1786 = phi float [ %1183, %1601 ], [ %1773, %1608 ]
  %1787 = phi float [ %1184, %1601 ], [ %1774, %1608 ]
  %1788 = phi float [ %1185, %1601 ], [ %1775, %1608 ]
  %1789 = phi float [ %1219, %1601 ], [ %1660, %1608 ]
  %1790 = phi float [ %1220, %1601 ], [ %1661, %1608 ]
  %1791 = phi float [ %1221, %1601 ], [ %1662, %1608 ]
  %1792 = phi float [ %1207, %1601 ], [ %1767, %1608 ]
  %1793 = phi float [ %1167, %1601 ], [ %1770, %1608 ]
  %1794 = select i1 %151, float 0.000000e+00, float %1785
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float %1779, float %1778, float %1777)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = call float @dx.op.unary.f32(i32 7, float %1795)  ; Saturate(value)
  %1797 = call float @dx.op.dot3.f32(i32 55, float %1782, float %1781, float %1780, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1798 = fmul fast float %1797, 2.000000e+00
  %1799 = fmul fast float %1798, %1786
  %1800 = fmul fast float %1798, %1787
  %1801 = fmul fast float %1798, %1788
  %1802 = fsub fast float %1782, %1799
  %1803 = fsub fast float %1781, %1800
  %1804 = fsub fast float %1780, %1801
  %1805 = call float @dx.op.binary.f32(i32 36, float %1793, float 1.000000e+00)  ; FMin(a,b)
  %1806 = fsub fast float 1.000000e+00, %1793
  %1807 = bitcast float %1806 to i32
  %1808 = sub nsw i32 2129859010, %1807
  %1809 = bitcast i32 %1808 to float
  %1810 = fsub fast float 1.000000e+00, %33
  %1811 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %1812 = call float @dx.op.binary.f32(i32 35, float %1811, float 0x3FA99999A0000000)  ; FMax(a,b)
  %1813 = fdiv fast float %1810, %1812
  %1814 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %1815 = call float @dx.op.unary.f32(i32 7, float %1814)  ; Saturate(value)
  %1816 = fmul fast float %1815, 5.000000e-01
  %1817 = fadd fast float %1816, 5.000000e-01
  %1818 = fmul fast float %1817, %33
  %1819 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %1820 = call float @dx.op.unary.f32(i32 7, float %1819)  ; Saturate(value)
  %1821 = fmul fast float %1820, %1813
  %1822 = fadd fast float %1818, %1821
  %1823 = fsub fast float 5.000000e-01, %1816
  %1824 = fmul fast float %1823, %1789
  %1825 = fmul fast float %1823, %1790
  %1826 = fmul fast float %1823, %1791
  %1827 = fadd fast float %1822, %1824
  %1828 = fadd fast float %1822, %1825
  %1829 = fadd fast float %1822, %1826
  %1830 = call float @dx.op.dot3.f32(i32 55, float %1802, float %1803, float %1804, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %1831 = call float @dx.op.unary.f32(i32 7, float %1830)  ; Saturate(value)
  %1832 = fmul fast float %1831, 5.000000e-01
  %1833 = fadd fast float %1832, 5.000000e-01
  %1834 = fmul fast float %1833, %33
  %1835 = call float @dx.op.dot3.f32(i32 55, float %1802, float %1803, float %1804, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %1836 = call float @dx.op.unary.f32(i32 7, float %1835)  ; Saturate(value)
  %1837 = fmul fast float %1836, %1813
  %1838 = fadd fast float %1834, %1837
  %1839 = fsub fast float 5.000000e-01, %1832
  %1840 = fmul fast float %1839, %1789
  %1841 = fmul fast float %1839, %1790
  %1842 = fmul fast float %1839, %1791
  %1843 = fadd fast float %1838, %1840
  %1844 = fadd fast float %1838, %1841
  %1845 = fadd fast float %1838, %1842
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 0
  %1848 = call float @dx.op.binary.f32(i32 36, float %1789, float %1847)  ; FMin(a,b)
  %1849 = fsub fast float 1.000000e+00, %1805
  %1850 = fmul fast float %1848, %1849
  %1851 = fsub fast float 1.000000e+00, %1850
  %1852 = bitcast float %1851 to i32
  %1853 = sub nsw i32 2129859010, %1852
  %1854 = bitcast i32 %1853 to float
  %1855 = call float @dx.op.binary.f32(i32 36, float %1790, float %1847)  ; FMin(a,b)
  %1856 = fmul fast float %1855, %1849
  %1857 = fsub fast float 1.000000e+00, %1856
  %1858 = bitcast float %1857 to i32
  %1859 = sub nsw i32 2129859010, %1858
  %1860 = bitcast i32 %1859 to float
  %1861 = call float @dx.op.binary.f32(i32 36, float %1791, float %1847)  ; FMin(a,b)
  %1862 = fmul fast float %1861, %1849
  %1863 = fsub fast float 1.000000e+00, %1862
  %1864 = bitcast float %1863 to i32
  %1865 = sub nsw i32 2129859010, %1864
  %1866 = bitcast i32 %1865 to float
  %1867 = fmul fast float %1805, %34
  %1868 = fmul fast float %1867, %1827
  %1869 = fmul fast float %1868, %1854
  %1870 = fmul fast float %1805, %35
  %1871 = fmul fast float %1870, %1828
  %1872 = fmul fast float %1871, %1860
  %1873 = fmul fast float %1805, %36
  %1874 = fmul fast float %1873, %1829
  %1875 = fmul fast float %1874, %1866
  %1876 = call float @dx.op.binary.f32(i32 36, float %1783, float %1847)  ; FMin(a,b)
  %1877 = fmul fast float %1876, %1849
  %1878 = fsub fast float 1.000000e+00, %1877
  %1879 = bitcast float %1878 to i32
  %1880 = sub nsw i32 2129859010, %1879
  %1881 = bitcast i32 %1880 to float
  %1882 = call float @dx.op.binary.f32(i32 36, float %1784, float %1847)  ; FMin(a,b)
  %1883 = fmul fast float %1882, %1849
  %1884 = fsub fast float 1.000000e+00, %1883
  %1885 = bitcast float %1884 to i32
  %1886 = sub nsw i32 2129859010, %1885
  %1887 = bitcast i32 %1886 to float
  %1888 = call float @dx.op.binary.f32(i32 36, float %1794, float %1847)  ; FMin(a,b)
  %1889 = fmul fast float %1888, %1849
  %1890 = fsub fast float 1.000000e+00, %1889
  %1891 = bitcast float %1890 to i32
  %1892 = sub nsw i32 2129859010, %1891
  %1893 = bitcast i32 %1892 to float
  %1894 = fmul fast float %1867, %1843
  %1895 = fmul fast float %1894, %1881
  %1896 = fmul fast float %1870, %1844
  %1897 = fmul fast float %1896, %1887
  %1898 = fmul fast float %1873, %1845
  %1899 = fmul fast float %1898, %1893
  %1900 = call float @dx.op.dot3.f32(i32 55, float %1869, float %1872, float %1875, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1901 = select i1 %151, float 0.000000e+00, float %1869
  %1902 = select i1 %151, float %1900, float %1872
  %1903 = select i1 %151, float 0.000000e+00, float %1875
  %1904 = call float @dx.op.dot3.f32(i32 55, float %1895, float %1897, float %1899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1905 = select i1 %151, float 0.000000e+00, float %1895
  %1906 = select i1 %151, float %1904, float %1897
  %1907 = select i1 %151, float 0.000000e+00, float %1899
  %1908 = fmul fast float %1796, 9.843750e-01
  %1909 = fmul fast float %1792, 9.843750e-01
  %1910 = fadd fast float %1908, 7.812500e-03
  %1911 = fadd fast float %1909, 7.812500e-03
  %1912 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %1910, float %1911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 2
  %1914 = extractvalue %dx.types.ResRet.f32 %1912, 3
  %1915 = fmul fast float %1913, %1783
  %1916 = fmul fast float %1913, %1784
  %1917 = fmul fast float %1913, %1794
  %1918 = fadd fast float %1915, %1914
  %1919 = fadd fast float %1916, %1914
  %1920 = fadd fast float %1917, %1914
  %1921 = fcmp fast ogt float %1160, 0.000000e+00
  br i1 %1921, label %1922, label %1948

; <label>:1922                                    ; preds = %1776
  %1923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1160, float %1796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.ResRet.f32 %1923, 1
  %1926 = extractvalue %dx.types.ResRet.f32 %1923, 2
  %1927 = fadd fast float %1924, -5.000000e-01
  %1928 = fadd fast float %1925, -5.000000e-01
  %1929 = fadd fast float %1926, -5.000000e-01
  %1930 = fsub fast float 1.000000e+00, %1783
  %1931 = fsub fast float 1.000000e+00, %1784
  %1932 = fsub fast float 1.000000e+00, %1794
  %1933 = fmul fast float %1783, 4.000000e+00
  %1934 = fmul fast float %1933, %1930
  %1935 = fmul fast float %1934, %1927
  %1936 = fmul fast float %1784, 4.000000e+00
  %1937 = fmul fast float %1936, %1931
  %1938 = fmul fast float %1937, %1928
  %1939 = fmul fast float %1794, 4.000000e+00
  %1940 = fmul fast float %1939, %1932
  %1941 = fmul fast float %1940, %1929
  %1942 = fadd fast float %1935, %1918
  %1943 = fadd fast float %1938, %1919
  %1944 = fadd fast float %1941, %1920
  %1945 = call float @dx.op.unary.f32(i32 7, float %1942)  ; Saturate(value)
  %1946 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  %1947 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  br label %1948

; <label>:1948                                    ; preds = %1922, %1776
  %1949 = phi float [ %1945, %1922 ], [ %1918, %1776 ]
  %1950 = phi float [ %1946, %1922 ], [ %1919, %1776 ]
  %1951 = phi float [ %1947, %1922 ], [ %1920, %1776 ]
  %1952 = call float @dx.op.binary.f32(i32 35, float %1950, float %1951)  ; FMax(a,b)
  %1953 = call float @dx.op.binary.f32(i32 35, float %1949, float %1952)  ; FMax(a,b)
  %1954 = fsub fast float 1.000000e+00, %1953
  %1955 = fmul fast float %1954, %1901
  %1956 = fmul fast float %1954, %1902
  %1957 = fmul fast float %1954, %1903
  %1958 = call float @dx.op.dot3.f32(i32 55, float %1789, float %1790, float %1791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1959 = fcmp fast ogt float %1958, 0x3E7FF19E20000000
  %1960 = fdiv fast float 1.000000e+00, %1958
  %1961 = select i1 %1959, float %1960, float 0.000000e+00
  %1962 = fmul fast float %1961, %1789
  %1963 = fmul fast float %1961, %1790
  %1964 = fmul fast float %1961, %1791
  %1965 = fadd fast float %1962, -1.000000e+00
  %1966 = fadd fast float %1963, -1.000000e+00
  %1967 = fadd fast float %1964, -1.000000e+00
  %1968 = fmul fast float %1965, 5.000000e-01
  %1969 = fmul fast float %1966, 5.000000e-01
  %1970 = fmul fast float %1967, 5.000000e-01
  %1971 = fadd fast float %1968, 1.000000e+00
  %1972 = fadd fast float %1969, 1.000000e+00
  %1973 = fadd fast float %1970, 1.000000e+00
  %1974 = fmul fast float %1949, %1905
  %1975 = fmul fast float %1950, %1906
  %1976 = fmul fast float %1951, %1907
  %1977 = fsub fast float 1.000000e+00, %1796
  %1978 = bitcast float %1977 to i32
  %1979 = sitofp i32 %1978 to float
  %1980 = fmul fast float %1979, 5.000000e+00
  %1981 = fadd fast float %1980, 0xC1EFBF8940000000
  %1982 = fptosi float %1981 to i32
  %1983 = bitcast i32 %1982 to float
  %1984 = fmul fast float %1983, %1159
  %1985 = fmul fast float %1901, %1984
  %1986 = fmul fast float %1985, %1954
  %1987 = fmul fast float %1986, %1971
  %1988 = fmul fast float %1902, %1984
  %1989 = fmul fast float %1988, %1954
  %1990 = fmul fast float %1989, %1972
  %1991 = fmul fast float %1903, %1984
  %1992 = fmul fast float %1991, %1954
  %1993 = fmul fast float %1992, %1973
  %1994 = fmul fast float %1955, %1180
  %1995 = fmul fast float %1956, %1180
  %1996 = fmul fast float %1957, %1180
  %1997 = fadd fast float %1974, %1161
  %1998 = fadd fast float %1997, %1987
  %1999 = fmul fast float %1998, %1180
  %2000 = fadd fast float %1975, %1162
  %2001 = fadd fast float %2000, %1990
  %2002 = fmul fast float %2001, %1180
  %2003 = fadd fast float %1976, %1163
  %2004 = fadd fast float %2003, %1993
  %2005 = fmul fast float %2004, %1180
  %2006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2007 = extractvalue %dx.types.CBufRet.f32 %2006, 3
  %2008 = fcmp fast oeq float %2007, 0.000000e+00
  br i1 %2008, label %2236, label %2009

; <label>:2009                                    ; preds = %1948
  %2010 = extractvalue %dx.types.CBufRet.f32 %2006, 0
  %2011 = extractvalue %dx.types.CBufRet.f32 %2006, 1
  %2012 = extractvalue %dx.types.CBufRet.f32 %2006, 2
  %2013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2014 = extractvalue %dx.types.CBufRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.CBufRet.f32 %2013, 1
  %2016 = extractvalue %dx.types.CBufRet.f32 %2013, 2
  %2017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2018 = extractvalue %dx.types.CBufRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.CBufRet.f32 %2017, 1
  %2020 = call float @dx.op.dot3.f32(i32 55, float %2014, float %2015, float %2016, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2021 = select i1 %151, float %2018, float %2014
  %2022 = select i1 %151, float %2020, float %2015
  %2023 = select i1 %151, float %2019, float %2016
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2026 = fcmp fast une float %2025, 0.000000e+00
  br i1 %2026, label %2027, label %2044

; <label>:2027                                    ; preds = %2009
  %2028 = fptoui float %53 to i32
  %2029 = fptoui float %54 to i32
  %2030 = lshr i32 %2028, 4
  %2031 = lshr i32 %2029, 4
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 0
  %2034 = fptoui float %2033 to i32
  %2035 = add i32 %2034, 15
  %2036 = lshr i32 %2035, 4
  %2037 = mul i32 %2036, %2031
  %2038 = add i32 %2037, %2030
  %2039 = shl i32 %2038, 3
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2039, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = and i32 %2041, -268435456
  %2043 = icmp eq i32 %2042, -1342177280
  br i1 %2043, label %2054, label %2044

; <label>:2044                                    ; preds = %2027, %2009
  %2045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2046 = extractvalue %dx.types.CBufRet.f32 %2045, 2
  %2047 = extractvalue %dx.types.CBufRet.f32 %2045, 3
  %2048 = fmul fast float %2046, %53
  %2049 = fmul fast float %2047, %54
  %2050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %2048, float %2049, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 0
  %2052 = extractvalue %dx.types.ResRet.f32 %2050, 1
  %2053 = extractvalue %dx.types.ResRet.f32 %2050, 2
  br label %2054

; <label>:2054                                    ; preds = %2044, %2027
  %2055 = phi float [ %2051, %2044 ], [ 0.000000e+00, %2027 ]
  %2056 = phi float [ %2052, %2044 ], [ 0.000000e+00, %2027 ]
  %2057 = phi float [ %2053, %2044 ], [ 0.000000e+00, %2027 ]
  %2058 = call float @dx.op.binary.f32(i32 36, float %2056, float %2057)  ; FMin(a,b)
  %2059 = call float @dx.op.binary.f32(i32 36, float %2055, float %2058)  ; FMin(a,b)
  %2060 = fcmp fast ogt float %2059, 0.000000e+00
  br i1 %2060, label %2061, label %2236, !dx.controlflow.hints !62

; <label>:2061                                    ; preds = %2054
  %2062 = fmul fast float %2055, %2021
  %2063 = fmul fast float %2056, %2022
  %2064 = fmul fast float %2057, %2023
  %2065 = fsub fast float %2010, %1782
  %2066 = fsub fast float %2011, %1781
  %2067 = fsub fast float %2012, %1780
  %2068 = call float @dx.op.dot3.f32(i32 55, float %2065, float %2066, float %2067, float %2065, float %2066, float %2067)  ; Dot3(ax,ay,az,bx,by,bz)
  %2069 = call float @dx.op.unary.f32(i32 25, float %2068)  ; Rsqrt(value)
  %2070 = fmul fast float %2069, %2065
  %2071 = fmul fast float %2069, %2066
  %2072 = fmul fast float %2069, %2067
  %2073 = call float @dx.op.dot3.f32(i32 55, float %2010, float %2011, float %2012, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %2074 = call float @dx.op.dot3.f32(i32 55, float %1779, float %1778, float %1777, float %2070, float %2071, float %2072)  ; Dot3(ax,ay,az,bx,by,bz)
  %2075 = call float @dx.op.unary.f32(i32 7, float %2073)  ; Saturate(value)
  %2076 = fmul fast float %2075, %2075
  %2077 = fmul fast float %2076, %1809
  %2078 = call float @dx.op.unary.f32(i32 7, float %2077)  ; Saturate(value)
  %2079 = fmul fast float %2078, %2075
  %2080 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float %2070, float %2071, float %2072)  ; Dot3(ax,ay,az,bx,by,bz)
  %2081 = fmul fast float %2080, %2080
  %2082 = call float @dx.op.unary.f32(i32 6, float %2073)  ; FAbs(value)
  %2083 = fsub fast float 1.000000e+00, %1792
  %2084 = call float @dx.op.binary.f32(i32 35, float %2083, float 0x3F847AE140000000)  ; FMax(a,b)
  %2085 = fmul fast float %2084, %2084
  %2086 = fmul fast float %2085, %2085
  %2087 = fsub fast float 1.000000e+00, %2086
  %2088 = fmul fast float %1796, %1796
  %2089 = fmul fast float %2088, %2087
  %2090 = fadd fast float %2089, %2086
  %2091 = bitcast float %2090 to i32
  %2092 = ashr i32 %2091, 1
  %2093 = add nsw i32 %2092, 532487669
  %2094 = bitcast i32 %2093 to float
  %2095 = fadd fast float %2094, %1796
  %2096 = fmul fast float %2086, %2081
  %2097 = fsub fast float 1.000000e+00, %2081
  %2098 = fadd fast float %2097, %2096
  %2099 = fmul fast float %2082, %2082
  %2100 = fmul fast float %2099, %2087
  %2101 = fadd fast float %2100, %2086
  %2102 = bitcast float %2101 to i32
  %2103 = ashr i32 %2102, 1
  %2104 = add nsw i32 %2103, 532487669
  %2105 = bitcast i32 %2104 to float
  %2106 = fadd fast float %2105, %2082
  %2107 = fmul fast float %2098, %2098
  %2108 = fmul fast float %2107, %2095
  %2109 = fmul fast float %2108, %2106
  %2110 = fdiv fast float 0x3FF0A00000000000, %2109
  %2111 = fmul fast float %2110, %2086
  %2112 = call float @dx.op.unary.f32(i32 6, float %2074)  ; FAbs(value)
  %2113 = fsub fast float 1.000000e+00, %2112
  %2114 = bitcast float %2113 to i32
  %2115 = sitofp i32 %2114 to float
  %2116 = fmul fast float %2115, 5.000000e+00
  %2117 = fadd fast float %2116, 0xC1EFBF8940000000
  %2118 = fptosi float %2117 to i32
  %2119 = bitcast i32 %2118 to float
  %2120 = fsub fast float 1.000000e+00, %1783
  %2121 = fsub fast float 1.000000e+00, %1784
  %2122 = fsub fast float 1.000000e+00, %1794
  %2123 = fmul fast float %2119, %2120
  %2124 = fmul fast float %2119, %2121
  %2125 = fmul fast float %2119, %2122
  %2126 = fadd fast float %2123, %1783
  %2127 = fadd fast float %2124, %1784
  %2128 = fadd fast float %2125, %1794
  br i1 %1921, label %2129, label %2152

; <label>:2129                                    ; preds = %2061
  %2130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1160, float %2112, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2131 = extractvalue %dx.types.ResRet.f32 %2130, 0
  %2132 = extractvalue %dx.types.ResRet.f32 %2130, 1
  %2133 = extractvalue %dx.types.ResRet.f32 %2130, 2
  %2134 = fadd fast float %2131, -5.000000e-01
  %2135 = fadd fast float %2132, -5.000000e-01
  %2136 = fadd fast float %2133, -5.000000e-01
  %2137 = fmul fast float %1783, 4.000000e+00
  %2138 = fmul fast float %2137, %2120
  %2139 = fmul fast float %2138, %2134
  %2140 = fmul fast float %1784, 4.000000e+00
  %2141 = fmul fast float %2140, %2121
  %2142 = fmul fast float %2141, %2135
  %2143 = fmul fast float %1794, 4.000000e+00
  %2144 = fmul fast float %2143, %2122
  %2145 = fmul fast float %2144, %2136
  %2146 = fadd fast float %2139, %2126
  %2147 = fadd fast float %2142, %2127
  %2148 = fadd fast float %2145, %2128
  %2149 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  %2150 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2151 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  br label %2152

; <label>:2152                                    ; preds = %2129, %2061
  %2153 = phi float [ %2149, %2129 ], [ %2126, %2061 ]
  %2154 = phi float [ %2150, %2129 ], [ %2127, %2061 ]
  %2155 = phi float [ %2151, %2129 ], [ %2128, %2061 ]
  %2156 = fmul fast float %2073, 9.843750e-01
  %2157 = fadd fast float %2156, 7.812500e-03
  %2158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2157, float %1911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2159 = extractvalue %dx.types.ResRet.f32 %2158, 2
  %2160 = extractvalue %dx.types.ResRet.f32 %2158, 3
  %2161 = fmul fast float %2159, %1783
  %2162 = fmul fast float %2159, %1784
  %2163 = fmul fast float %2159, %1794
  %2164 = fadd fast float %2161, %2160
  %2165 = fadd fast float %2162, %2160
  %2166 = fadd fast float %2163, %2160
  br i1 %1921, label %2167, label %2190

; <label>:2167                                    ; preds = %2152
  %2168 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1160, float %2073, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2169 = extractvalue %dx.types.ResRet.f32 %2168, 0
  %2170 = extractvalue %dx.types.ResRet.f32 %2168, 1
  %2171 = extractvalue %dx.types.ResRet.f32 %2168, 2
  %2172 = fadd fast float %2169, -5.000000e-01
  %2173 = fadd fast float %2170, -5.000000e-01
  %2174 = fadd fast float %2171, -5.000000e-01
  %2175 = fmul fast float %1783, 4.000000e+00
  %2176 = fmul fast float %2175, %2120
  %2177 = fmul fast float %2176, %2172
  %2178 = fmul fast float %1784, 4.000000e+00
  %2179 = fmul fast float %2178, %2121
  %2180 = fmul fast float %2179, %2173
  %2181 = fmul fast float %1794, 4.000000e+00
  %2182 = fmul fast float %2181, %2122
  %2183 = fmul fast float %2182, %2174
  %2184 = fadd fast float %2177, %2164
  %2185 = fadd fast float %2180, %2165
  %2186 = fadd fast float %2183, %2166
  %2187 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2188 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2189 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  br label %2190

; <label>:2190                                    ; preds = %2167, %2152
  %2191 = phi float [ %2187, %2167 ], [ %2164, %2152 ]
  %2192 = phi float [ %2188, %2167 ], [ %2165, %2152 ]
  %2193 = phi float [ %2189, %2167 ], [ %2166, %2152 ]
  %2194 = call float @dx.op.binary.f32(i32 35, float %2192, float %2193)  ; FMax(a,b)
  %2195 = call float @dx.op.binary.f32(i32 35, float %2191, float %2194)  ; FMax(a,b)
  %2196 = fsub fast float 1.000000e+00, %2195
  %2197 = fmul fast float %2153, %2111
  %2198 = fmul fast float %2154, %2111
  %2199 = fmul fast float %2155, %2111
  %2200 = fsub fast float 1.000000e+00, %2074
  %2201 = bitcast float %2200 to i32
  %2202 = sitofp i32 %2201 to float
  %2203 = fmul fast float %2202, 5.000000e+00
  %2204 = fadd fast float %2203, 0xC1EFBF8940000000
  %2205 = fptosi float %2204 to i32
  %2206 = bitcast i32 %2205 to float
  %2207 = fmul fast float %2206, %1159
  %2208 = fmul fast float %2196, %2207
  %2209 = fmul fast float %2208, %1971
  %2210 = fmul fast float %2208, %1972
  %2211 = fmul fast float %2208, %1973
  %2212 = fadd fast float %2209, %2197
  %2213 = fadd fast float %2210, %2198
  %2214 = fadd fast float %2211, %2199
  %2215 = fmul fast float %2079, %2062
  %2216 = fmul fast float %2215, %2196
  %2217 = fmul fast float %2079, %2063
  %2218 = fmul fast float %2217, %2196
  %2219 = fmul fast float %2079, %2064
  %2220 = fmul fast float %2219, %2196
  %2221 = fmul fast float %2215, %2212
  %2222 = fmul fast float %2217, %2213
  %2223 = fmul fast float %2219, %2214
  %2224 = fadd fast float %2216, %1955
  %2225 = fmul fast float %2224, %1180
  %2226 = fadd fast float %2218, %1956
  %2227 = fmul fast float %2226, %1180
  %2228 = fadd fast float %2220, %1957
  %2229 = fmul fast float %2228, %1180
  %2230 = fadd fast float %2221, %1998
  %2231 = fmul fast float %2230, %1180
  %2232 = fadd fast float %2222, %2001
  %2233 = fmul fast float %2232, %1180
  %2234 = fadd fast float %2223, %2004
  %2235 = fmul fast float %2234, %1180
  br label %2236

; <label>:2236                                    ; preds = %2190, %2054, %1948
  %2237 = phi float [ %1999, %1948 ], [ %1999, %2054 ], [ %2231, %2190 ]
  %2238 = phi float [ %2002, %1948 ], [ %2002, %2054 ], [ %2233, %2190 ]
  %2239 = phi float [ %2005, %1948 ], [ %2005, %2054 ], [ %2235, %2190 ]
  %2240 = phi float [ %1994, %1948 ], [ %1994, %2054 ], [ %2225, %2190 ]
  %2241 = phi float [ %1995, %1948 ], [ %1995, %2054 ], [ %2227, %2190 ]
  %2242 = phi float [ %1996, %1948 ], [ %1996, %2054 ], [ %2229, %2190 ]
  %2243 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2244 = extractvalue %dx.types.CBufRet.i32 %2243, 0
  %2245 = icmp eq i32 %2244, 0
  br i1 %2245, label %2680, label %2246

; <label>:2246                                    ; preds = %2236
  %2247 = fptoui float %53 to i32
  %2248 = fptoui float %54 to i32
  %2249 = lshr i32 %2247, 4
  %2250 = lshr i32 %2248, 4
  %2251 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.i32 %2251, 0
  %2253 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2250, i32 %2252, i32 %2249)  ; UMad(a,b,c)
  %2254 = add nsw i32 %2244, -1
  %2255 = call i32 @dx.op.binary.i32(i32 37, i32 %2254, i32 0)  ; IMax(a,b)
  %2256 = call float @dx.op.binary.f32(i32 35, float %48, float 0.000000e+00)  ; FMax(a,b)
  %2257 = fptoui float %2256 to i32
  %2258 = lshr i32 %2257, 5
  %2259 = call i32 @dx.op.binary.i32(i32 40, i32 %2258, i32 8191)  ; UMin(a,b)
  %2260 = shl i32 %2259, 2
  %2261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %2260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2262 = extractvalue %dx.types.ResRet.i32 %2261, 0
  %2263 = lshr i32 %2262, 16
  %2264 = and i32 %2262, 65535
  %2265 = lshr i32 %2262, 21
  %2266 = lshr i32 %2264, 5
  %2267 = call i32 @dx.op.binary.i32(i32 40, i32 %2266, i32 %2255)  ; UMin(a,b)
  %2268 = icmp ugt i32 %2265, %2267
  br i1 %2268, label %2680, label %2269

; <label>:2269                                    ; preds = %2246
  br label %2270

; <label>:2270                                    ; preds = %2670, %2269
  %2271 = phi i32 [ %2677, %2670 ], [ %2265, %2269 ]
  %2272 = phi float [ %2671, %2670 ], [ %2237, %2269 ]
  %2273 = phi float [ %2672, %2670 ], [ %2238, %2269 ]
  %2274 = phi float [ %2673, %2670 ], [ %2239, %2269 ]
  %2275 = phi float [ %2674, %2670 ], [ %2240, %2269 ]
  %2276 = phi float [ %2675, %2670 ], [ %2241, %2269 ]
  %2277 = phi float [ %2676, %2670 ], [ %2242, %2269 ]
  %2278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %2279 = extractvalue %dx.types.CBufRet.i32 %2278, 0
  %2280 = call i32 @dx.op.tertiary.i32(i32 49, i32 %2253, i32 %2279, i32 %2271)  ; UMad(a,b,c)
  %2281 = shl i32 %2280, 2
  %2282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %2281, i32 undef)  ; BufferLoad(srv,index,wot)
  %2283 = extractvalue %dx.types.ResRet.i32 %2282, 0
  %2284 = shl i32 %2271, 5
  %2285 = sub nsw i32 %2263, %2284
  %2286 = call i32 @dx.op.binary.i32(i32 37, i32 %2285, i32 0)  ; IMax(a,b)
  %2287 = call i32 @dx.op.binary.i32(i32 38, i32 %2286, i32 31)  ; IMin(a,b)
  %2288 = sub nsw i32 1, %2263
  %2289 = add nsw i32 %2288, %2264
  %2290 = call i32 @dx.op.binary.i32(i32 37, i32 %2289, i32 0)  ; IMax(a,b)
  %2291 = call i32 @dx.op.binary.i32(i32 38, i32 %2290, i32 32)  ; IMin(a,b)
  %2292 = and i32 %2291, 31
  %2293 = shl i32 -1, %2292
  %2294 = xor i32 %2293, -1
  %2295 = and i32 %2287, 31
  %2296 = shl i32 %2294, %2295
  %2297 = icmp eq i32 %2291, 32
  %2298 = select i1 %2297, i32 -1, i32 %2296
  %2299 = and i32 %2298, %2283
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2670, label %2301

; <label>:2301                                    ; preds = %2270
  br label %2302

; <label>:2302                                    ; preds = %2382, %2301
  %2303 = phi i32 [ %2314, %2382 ], [ %2299, %2301 ]
  %2304 = phi float [ %2383, %2382 ], [ %2272, %2301 ]
  %2305 = phi float [ %2384, %2382 ], [ %2273, %2301 ]
  %2306 = phi float [ %2385, %2382 ], [ %2274, %2301 ]
  %2307 = phi float [ %2386, %2382 ], [ %2275, %2301 ]
  %2308 = phi float [ %2387, %2382 ], [ %2276, %2301 ]
  %2309 = phi float [ %2388, %2382 ], [ %2277, %2301 ]
  %2310 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2303)  ; FirstbitLo(value)
  %2311 = add i32 %2310, %2284
  %2312 = and i32 %2310, 31
  %2313 = shl i32 1, %2312
  %2314 = xor i32 %2313, %2303
  %2315 = mul i32 %2311, 112
  %2316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = extractvalue %dx.types.ResRet.f32 %2316, 1
  %2319 = extractvalue %dx.types.ResRet.f32 %2316, 2
  %2320 = or i32 %2315, 12
  %2321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = add i32 %2315, 44
  %2324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2323, i32 undef)  ; BufferLoad(srv,index,wot)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = add i32 %2315, 48
  %2327 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2326, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.f32 %2327, 0
  %2329 = extractvalue %dx.types.ResRet.f32 %2327, 1
  %2330 = extractvalue %dx.types.ResRet.f32 %2327, 2
  %2331 = add i32 %2315, 80
  %2332 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.f32 %2332, 1
  %2334 = extractvalue %dx.types.ResRet.f32 %2332, 2
  %2335 = call float @dx.op.dot3.f32(i32 55, float %2317, float %2318, float %2319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2336 = select i1 %151, float %2333, float %2317
  %2337 = select i1 %151, float %2335, float %2318
  %2338 = select i1 %151, float %2334, float %2319
  %2339 = fsub fast float %2328, %109
  %2340 = fsub fast float %2329, %110
  %2341 = fsub fast float %2330, %111
  %2342 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2340, float %2341, float %2339, float %2340, float %2341)  ; Dot3(ax,ay,az,bx,by,bz)
  %2343 = call float @dx.op.unary.f32(i32 24, float %2342)  ; Sqrt(value)
  %2344 = fdiv fast float 1.000000e+00, %2343
  %2345 = fmul fast float %2344, %2339
  %2346 = fmul fast float %2344, %2340
  %2347 = fmul fast float %2344, %2341
  %2348 = fadd fast float %2343, %2322
  %2349 = fdiv fast float 1.000000e+00, %2348
  %2350 = fmul float %2325, %2349
  %2351 = fmul float %2350, %2350
  %2352 = call float @dx.op.unary.f32(i32 7, float %2351)  ; Saturate(value)
  %2353 = and i32 %2313, %2299
  %2354 = icmp eq i32 %2353, 0
  br i1 %2354, label %2377, label %2355, !dx.controlflow.hints !63

; <label>:2355                                    ; preds = %2302
  %2356 = lshr i32 %2247, 5
  %2357 = lshr i32 %2248, 5
  %2358 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %2356, i32 %2357, i32 %2311, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = and i32 %2359, 3
  %2361 = icmp eq i32 %2360, 0
  %2362 = select i1 %2361, float 1.000000e+00, float 0.000000e+00
  %2363 = icmp eq i32 %2360, 3
  br i1 %2363, label %2364, label %2377

; <label>:2364                                    ; preds = %2355
  %2365 = lshr i32 %2359, 10
  %2366 = and i32 %2365, 8160
  %2367 = and i32 %2248, 31
  %2368 = or i32 %2366, %2367
  %2369 = lshr i32 %2359, 1
  %2370 = and i32 %2369, 16352
  %2371 = and i32 %2247, 31
  %2372 = or i32 %2370, %2371
  %2373 = lshr i32 %2359, 23
  %2374 = and i32 %2373, 255
  %2375 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %2372, i32 %2368, i32 %2374, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  br label %2377

; <label>:2377                                    ; preds = %2364, %2355, %2302
  %2378 = phi float [ %2376, %2364 ], [ %2362, %2355 ], [ 0.000000e+00, %2302 ]
  %2379 = call float @dx.op.binary.f32(i32 36, float %2378, float %2378)  ; FMin(a,b)
  %2380 = call float @dx.op.binary.f32(i32 36, float %2378, float %2379)  ; FMin(a,b)
  %2381 = fcmp fast ogt float %2380, 0.000000e+00
  br i1 %2381, label %2390, label %2382, !dx.controlflow.hints !64

; <label>:2382                                    ; preds = %2626, %2377
  %2383 = phi float [ %2304, %2377 ], [ %2666, %2626 ]
  %2384 = phi float [ %2305, %2377 ], [ %2667, %2626 ]
  %2385 = phi float [ %2306, %2377 ], [ %2668, %2626 ]
  %2386 = phi float [ %2307, %2377 ], [ %2660, %2626 ]
  %2387 = phi float [ %2308, %2377 ], [ %2661, %2626 ]
  %2388 = phi float [ %2309, %2377 ], [ %2662, %2626 ]
  %2389 = icmp eq i32 %2303, %2313
  br i1 %2389, label %2669, label %2302

; <label>:2390                                    ; preds = %2377
  %2391 = fmul fast float %2378, %2336
  %2392 = fmul fast float %2378, %2337
  %2393 = fmul fast float %2378, %2338
  %2394 = fsub fast float %2330, %1582
  %2395 = fcmp fast ogt float %2394, 0.000000e+00
  %2396 = fsub fast float %111, %1582
  %2397 = fcmp fast ogt float %2396, 0.000000e+00
  %2398 = xor i1 %2397, %2395
  %2399 = fsub fast float %1582, %2330
  %2400 = fmul fast float %2399, 2.000000e+00
  %2401 = fadd fast float %2400, %2330
  %2402 = select i1 %2398, float %2330, float %2401
  %2403 = fsub fast float %2402, %111
  %2404 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2340, float %2403, float %2339, float %2340, float %2403)  ; Dot3(ax,ay,az,bx,by,bz)
  %2405 = call float @dx.op.unary.f32(i32 25, float %2404)  ; Rsqrt(value)
  %2406 = fmul fast float %2405, %2339
  %2407 = fmul fast float %2405, %2340
  %2408 = fmul fast float %2405, %2403
  %2409 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1590)  ; Dot3(ax,ay,az,bx,by,bz)
  %2410 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %2406, float %2407, float %2408)  ; Dot3(ax,ay,az,bx,by,bz)
  %2411 = fdiv fast float 1.000000e+00, %2410
  %2412 = fmul fast float %2411, %2409
  %2413 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %2396, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2414 = fcmp fast ogt float %2413, 0.000000e+00
  %2415 = fcmp fast olt float %2413, 0.000000e+00
  %2416 = zext i1 %2414 to i32
  %2417 = zext i1 %2415 to i32
  %2418 = sub nsw i32 %2416, %2417
  %2419 = sitofp i32 %2418 to float
  %2420 = fsub fast float %2402, %1582
  %2421 = call float @dx.op.dot3.f32(i32 55, float %2339, float %2340, float %2420, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2422 = fcmp fast ogt float %2421, 0.000000e+00
  %2423 = fcmp fast olt float %2421, 0.000000e+00
  %2424 = zext i1 %2422 to i32
  %2425 = zext i1 %2423 to i32
  %2426 = sub nsw i32 %2424, %2425
  %2427 = sitofp i32 %2426 to float
  %2428 = fcmp fast une float %2419, %2427
  br i1 %2428, label %2429, label %2439

; <label>:2429                                    ; preds = %2390
  %2430 = fmul fast float %2412, %2408
  %2431 = fmul fast float %2412, %2407
  %2432 = fmul fast float %2412, %2406
  %2433 = fmul fast float %2432, %2432
  %2434 = fmul fast float %2431, %2431
  %2435 = fadd fast float %2433, %2434
  %2436 = fmul fast float %2430, %2430
  %2437 = fadd fast float %2435, %2436
  %2438 = call float @dx.op.unary.f32(i32 24, float %2437)  ; Sqrt(value)
  br label %2451

; <label>:2439                                    ; preds = %2390
  %2440 = icmp slt i32 %2418, 0
  br i1 %2440, label %2441, label %2451

; <label>:2441                                    ; preds = %2439
  %2442 = fsub fast float %109, %2328
  %2443 = fsub fast float %110, %2329
  %2444 = fsub fast float %111, %2402
  %2445 = fmul fast float %2442, %2442
  %2446 = fmul fast float %2443, %2443
  %2447 = fadd fast float %2445, %2446
  %2448 = fmul fast float %2444, %2444
  %2449 = fadd fast float %2447, %2448
  %2450 = call float @dx.op.unary.f32(i32 24, float %2449)  ; Sqrt(value)
  br label %2451

; <label>:2451                                    ; preds = %2441, %2439, %2429
  %2452 = phi float [ %2438, %2429 ], [ %2450, %2441 ], [ 0.000000e+00, %2439 ]
  %2453 = and i1 %2397, %2395
  %2454 = fsub fast float -0.000000e+00, %2452
  %2455 = select i1 %2453, float -0.000000e+00, float %2454
  %2456 = fmul fast float %1583, 0x3FF7154760000000
  %2457 = fmul fast float %2456, %2455
  %2458 = fmul fast float %1584, 0x3FF7154760000000
  %2459 = fmul fast float %2458, %2455
  %2460 = fmul fast float %1585, 0x3FF7154760000000
  %2461 = fmul fast float %2460, %2455
  %2462 = call float @dx.op.unary.f32(i32 21, float %2457)  ; Exp(value)
  %2463 = call float @dx.op.unary.f32(i32 21, float %2459)  ; Exp(value)
  %2464 = call float @dx.op.unary.f32(i32 21, float %2461)  ; Exp(value)
  %2465 = call float @dx.op.unary.f32(i32 7, float %2462)  ; Saturate(value)
  %2466 = call float @dx.op.unary.f32(i32 7, float %2463)  ; Saturate(value)
  %2467 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  %2468 = fmul fast float %2391, %2465
  %2469 = fmul fast float %2392, %2466
  %2470 = fmul fast float %2393, %2467
  %2471 = fsub fast float %2345, %1782
  %2472 = fsub fast float %2346, %1781
  %2473 = fsub fast float %2347, %1780
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2472, float %2473, float %2471, float %2472, float %2473)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = call float @dx.op.unary.f32(i32 25, float %2474)  ; Rsqrt(value)
  %2476 = fmul fast float %2475, %2471
  %2477 = fmul fast float %2475, %2472
  %2478 = fmul fast float %2475, %2473
  %2479 = call float @dx.op.dot3.f32(i32 55, float %2345, float %2346, float %2347, float %1786, float %1787, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %2480 = call float @dx.op.dot3.f32(i32 55, float %1779, float %1778, float %1777, float %2476, float %2477, float %2478)  ; Dot3(ax,ay,az,bx,by,bz)
  %2481 = call float @dx.op.unary.f32(i32 7, float %2479)  ; Saturate(value)
  %2482 = fmul fast float %2481, %2352
  %2483 = fmul fast float %2481, %2481
  %2484 = fmul fast float %2483, %1809
  %2485 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  %2486 = fmul fast float %2482, %2485
  %2487 = bitcast float %2342 to i32
  %2488 = ashr i32 %2487, 1
  %2489 = sub nsw i32 1597463007, %2488
  %2490 = bitcast i32 %2489 to float
  %2491 = fmul fast float %2490, %2339
  %2492 = fmul fast float %2490, %2340
  %2493 = fmul fast float %2490, %2341
  %2494 = fsub fast float %2491, %1782
  %2495 = fsub fast float %2492, %1781
  %2496 = fsub fast float %2493, %1780
  %2497 = call float @dx.op.dot3.f32(i32 55, float %2494, float %2495, float %2496, float %2494, float %2495, float %2496)  ; Dot3(ax,ay,az,bx,by,bz)
  %2498 = call float @dx.op.unary.f32(i32 25, float %2497)  ; Rsqrt(value)
  %2499 = fmul fast float %2494, %2498
  %2500 = fmul fast float %2495, %2498
  %2501 = fmul fast float %2496, %2498
  %2502 = call float @dx.op.dot3.f32(i32 55, float %1786, float %1787, float %1788, float %2499, float %2500, float %2501)  ; Dot3(ax,ay,az,bx,by,bz)
  %2503 = fmul fast float %2502, %2502
  %2504 = call float @dx.op.unary.f32(i32 6, float %2479)  ; FAbs(value)
  %2505 = fsub fast float 1.000000e+00, %1792
  %2506 = call float @dx.op.binary.f32(i32 35, float %2505, float 0x3F847AE140000000)  ; FMax(a,b)
  %2507 = fmul fast float %2506, %2506
  %2508 = fmul fast float %2507, %2507
  %2509 = fsub fast float 1.000000e+00, %2508
  %2510 = fmul fast float %1796, %1796
  %2511 = fmul fast float %2510, %2509
  %2512 = fadd fast float %2511, %2508
  %2513 = bitcast float %2512 to i32
  %2514 = ashr i32 %2513, 1
  %2515 = add nsw i32 %2514, 532487669
  %2516 = bitcast i32 %2515 to float
  %2517 = fadd fast float %2516, %1796
  %2518 = fmul fast float %2508, %2503
  %2519 = fsub fast float 1.000000e+00, %2503
  %2520 = fadd fast float %2519, %2518
  %2521 = fmul fast float %2504, %2504
  %2522 = fmul fast float %2521, %2509
  %2523 = fadd fast float %2522, %2508
  %2524 = bitcast float %2523 to i32
  %2525 = ashr i32 %2524, 1
  %2526 = add nsw i32 %2525, 532487669
  %2527 = bitcast i32 %2526 to float
  %2528 = fadd fast float %2527, %2504
  %2529 = fmul fast float %2520, %2520
  %2530 = fmul fast float %2529, %2517
  %2531 = fmul fast float %2530, %2528
  %2532 = fdiv fast float 1.000000e+00, %2531
  %2533 = bitcast float %2508 to i32
  %2534 = sitofp i32 %2533 to float
  %2535 = fmul fast float %2534, 0x3FE7F73180000000
  %2536 = fadd fast float %2535, 0x41AFE27C40000000
  %2537 = fptosi float %2536 to i32
  %2538 = bitcast i32 %2537 to float
  %2539 = fmul fast float %2325, 0x3FD80E9D60000000
  %2540 = fmul fast float %2539, %2490
  %2541 = fadd fast float %2538, %2540
  %2542 = bitcast float %2541 to i32
  %2543 = sub nsw i32 2129859010, %2542
  %2544 = bitcast i32 %2543 to float
  %2545 = fmul fast float %2508, %2532
  %2546 = fmul fast float %2545, %2538
  %2547 = fmul fast float %2546, %2544
  %2548 = call float @dx.op.unary.f32(i32 6, float %2480)  ; FAbs(value)
  %2549 = fsub fast float 1.000000e+00, %2548
  %2550 = bitcast float %2549 to i32
  %2551 = sitofp i32 %2550 to float
  %2552 = fmul fast float %2551, 5.000000e+00
  %2553 = fadd fast float %2552, 0xC1EFBF8940000000
  %2554 = fptosi float %2553 to i32
  %2555 = bitcast i32 %2554 to float
  %2556 = fsub fast float 1.000000e+00, %1783
  %2557 = fsub fast float 1.000000e+00, %1784
  %2558 = fsub fast float 1.000000e+00, %1794
  %2559 = fmul fast float %2555, %2556
  %2560 = fmul fast float %2555, %2557
  %2561 = fmul fast float %2555, %2558
  %2562 = fadd fast float %2559, %1783
  %2563 = fadd fast float %2560, %1784
  %2564 = fadd fast float %2561, %1794
  br i1 %1921, label %2565, label %2588

; <label>:2565                                    ; preds = %2451
  %2566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1160, float %2548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2567 = extractvalue %dx.types.ResRet.f32 %2566, 0
  %2568 = extractvalue %dx.types.ResRet.f32 %2566, 1
  %2569 = extractvalue %dx.types.ResRet.f32 %2566, 2
  %2570 = fadd fast float %2567, -5.000000e-01
  %2571 = fadd fast float %2568, -5.000000e-01
  %2572 = fadd fast float %2569, -5.000000e-01
  %2573 = fmul fast float %1783, 4.000000e+00
  %2574 = fmul fast float %2573, %2556
  %2575 = fmul fast float %2574, %2570
  %2576 = fmul fast float %1784, 4.000000e+00
  %2577 = fmul fast float %2576, %2557
  %2578 = fmul fast float %2577, %2571
  %2579 = fmul fast float %1794, 4.000000e+00
  %2580 = fmul fast float %2579, %2558
  %2581 = fmul fast float %2580, %2572
  %2582 = fadd fast float %2575, %2562
  %2583 = fadd fast float %2578, %2563
  %2584 = fadd fast float %2581, %2564
  %2585 = call float @dx.op.unary.f32(i32 7, float %2582)  ; Saturate(value)
  %2586 = call float @dx.op.unary.f32(i32 7, float %2583)  ; Saturate(value)
  %2587 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  br label %2588

; <label>:2588                                    ; preds = %2565, %2451
  %2589 = phi float [ %2585, %2565 ], [ %2562, %2451 ]
  %2590 = phi float [ %2586, %2565 ], [ %2563, %2451 ]
  %2591 = phi float [ %2587, %2565 ], [ %2564, %2451 ]
  %2592 = fmul fast float %2479, 9.843750e-01
  %2593 = fadd fast float %2592, 7.812500e-03
  %2594 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2593, float %1911, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2595 = extractvalue %dx.types.ResRet.f32 %2594, 2
  %2596 = extractvalue %dx.types.ResRet.f32 %2594, 3
  %2597 = fmul fast float %2595, %1783
  %2598 = fmul fast float %2595, %1784
  %2599 = fmul fast float %2595, %1794
  %2600 = fadd fast float %2597, %2596
  %2601 = fadd fast float %2598, %2596
  %2602 = fadd fast float %2599, %2596
  br i1 %1921, label %2603, label %2626

; <label>:2603                                    ; preds = %2588
  %2604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1160, float %2479, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2605 = extractvalue %dx.types.ResRet.f32 %2604, 0
  %2606 = extractvalue %dx.types.ResRet.f32 %2604, 1
  %2607 = extractvalue %dx.types.ResRet.f32 %2604, 2
  %2608 = fadd fast float %2605, -5.000000e-01
  %2609 = fadd fast float %2606, -5.000000e-01
  %2610 = fadd fast float %2607, -5.000000e-01
  %2611 = fmul fast float %1783, 4.000000e+00
  %2612 = fmul fast float %2611, %2556
  %2613 = fmul fast float %2612, %2608
  %2614 = fmul fast float %1784, 4.000000e+00
  %2615 = fmul fast float %2614, %2557
  %2616 = fmul fast float %2615, %2609
  %2617 = fmul fast float %1794, 4.000000e+00
  %2618 = fmul fast float %2617, %2558
  %2619 = fmul fast float %2618, %2610
  %2620 = fadd fast float %2613, %2600
  %2621 = fadd fast float %2616, %2601
  %2622 = fadd fast float %2619, %2602
  %2623 = call float @dx.op.unary.f32(i32 7, float %2620)  ; Saturate(value)
  %2624 = call float @dx.op.unary.f32(i32 7, float %2621)  ; Saturate(value)
  %2625 = call float @dx.op.unary.f32(i32 7, float %2622)  ; Saturate(value)
  br label %2626

; <label>:2626                                    ; preds = %2603, %2588
  %2627 = phi float [ %2623, %2603 ], [ %2600, %2588 ]
  %2628 = phi float [ %2624, %2603 ], [ %2601, %2588 ]
  %2629 = phi float [ %2625, %2603 ], [ %2602, %2588 ]
  %2630 = call float @dx.op.binary.f32(i32 35, float %2628, float %2629)  ; FMax(a,b)
  %2631 = call float @dx.op.binary.f32(i32 35, float %2627, float %2630)  ; FMax(a,b)
  %2632 = fsub fast float 1.000000e+00, %2631
  %2633 = fmul fast float %2589, %2547
  %2634 = fmul fast float %2590, %2547
  %2635 = fmul fast float %2591, %2547
  %2636 = fsub fast float 1.000000e+00, %2480
  %2637 = bitcast float %2636 to i32
  %2638 = sitofp i32 %2637 to float
  %2639 = fmul fast float %2638, 5.000000e+00
  %2640 = fadd fast float %2639, 0xC1EFBF8940000000
  %2641 = fptosi float %2640 to i32
  %2642 = bitcast i32 %2641 to float
  %2643 = fmul fast float %2642, %1159
  %2644 = fmul fast float %2632, %2643
  %2645 = fmul fast float %2644, %1971
  %2646 = fmul fast float %2644, %1972
  %2647 = fmul fast float %2644, %1973
  %2648 = fadd fast float %2645, %2633
  %2649 = fadd fast float %2646, %2634
  %2650 = fadd fast float %2647, %2635
  %2651 = fmul fast float %2468, %1180
  %2652 = fmul fast float %2651, %2486
  %2653 = fmul fast float %2652, %2632
  %2654 = fmul fast float %2469, %1180
  %2655 = fmul fast float %2654, %2486
  %2656 = fmul fast float %2655, %2632
  %2657 = fmul fast float %2470, %1180
  %2658 = fmul fast float %2657, %2486
  %2659 = fmul fast float %2658, %2632
  %2660 = fadd fast float %2653, %2307
  %2661 = fadd fast float %2656, %2308
  %2662 = fadd fast float %2659, %2309
  %2663 = fmul fast float %2652, %2648
  %2664 = fmul fast float %2655, %2649
  %2665 = fmul fast float %2658, %2650
  %2666 = fadd fast float %2663, %2304
  %2667 = fadd fast float %2664, %2305
  %2668 = fadd fast float %2665, %2306
  br label %2382

; <label>:2669                                    ; preds = %2382
  br label %2670

; <label>:2670                                    ; preds = %2669, %2270
  %2671 = phi float [ %2272, %2270 ], [ %2383, %2669 ]
  %2672 = phi float [ %2273, %2270 ], [ %2384, %2669 ]
  %2673 = phi float [ %2274, %2270 ], [ %2385, %2669 ]
  %2674 = phi float [ %2275, %2270 ], [ %2386, %2669 ]
  %2675 = phi float [ %2276, %2270 ], [ %2387, %2669 ]
  %2676 = phi float [ %2277, %2270 ], [ %2388, %2669 ]
  %2677 = add i32 %2271, 1
  %2678 = icmp ugt i32 %2677, %2267
  br i1 %2678, label %2679, label %2270

; <label>:2679                                    ; preds = %2670
  br label %2680

; <label>:2680                                    ; preds = %2679, %2246, %2236
  %2681 = phi float [ %2237, %2236 ], [ %2237, %2246 ], [ %2671, %2679 ]
  %2682 = phi float [ %2238, %2236 ], [ %2238, %2246 ], [ %2672, %2679 ]
  %2683 = phi float [ %2239, %2236 ], [ %2239, %2246 ], [ %2673, %2679 ]
  %2684 = phi float [ %2240, %2236 ], [ %2240, %2246 ], [ %2674, %2679 ]
  %2685 = phi float [ %2241, %2236 ], [ %2241, %2246 ], [ %2675, %2679 ]
  %2686 = phi float [ %2242, %2236 ], [ %2242, %2246 ], [ %2676, %2679 ]
  %2687 = call float @dx.op.unary.f32(i32 24, float %1789)  ; Sqrt(value)
  %2688 = call float @dx.op.unary.f32(i32 24, float %1790)  ; Sqrt(value)
  %2689 = call float @dx.op.unary.f32(i32 24, float %1791)  ; Sqrt(value)
  %2690 = fmul fast float %2687, %2684
  %2691 = fmul fast float %2688, %2685
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  br i1 %151, label %2694, label %2714

; <label>:2694                                    ; preds = %2680
  %2695 = fadd fast float %2686, %1157
  %2696 = fmul fast float %2695, %1158
  %2697 = fsub fast float 1.000000e+00, %1158
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 3
  %2701 = fmul fast float %2700, %2698
  %2702 = fadd fast float %2701, %2696
  %2703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2704 = extractvalue %dx.types.CBufRet.f32 %2703, 0
  %2705 = fmul fast float %2704, %1977
  %2706 = fsub fast float %2702, %2705
  %2707 = fadd fast float %2691, %2690
  %2708 = fmul fast float %2693, %2707
  %2709 = extractvalue %dx.types.CBufRet.f32 %2699, 1
  %2710 = fsub fast float %2706, %2709
  %2711 = extractvalue %dx.types.CBufRet.f32 %2699, 2
  %2712 = fmul fast float %2710, %2711
  %2713 = call float @dx.op.unary.f32(i32 7, float %2712)  ; Saturate(value)
  br label %2729

; <label>:2714                                    ; preds = %2680
  %2715 = fmul fast float %2689, %2686
  %2716 = fmul fast float %2693, %2690
  %2717 = fmul fast float %2693, %2691
  %2718 = fmul fast float %2715, %2693
  %2719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.i32 %2719, 0
  %2721 = and i32 %2720, 32
  %2722 = icmp eq i32 %2721, 0
  br i1 %2722, label %2729, label %2723

; <label>:2723                                    ; preds = %2714
  %2724 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2725 = extractvalue %dx.types.CBufRet.f32 %2724, 0
  %2726 = fmul fast float %2725, 0x3FE99999A0000000
  %2727 = fadd fast float %2725, %2716
  %2728 = fadd fast float %2726, %2718
  br label %2729

; <label>:2729                                    ; preds = %2723, %2714, %2694
  %2730 = phi float [ %2708, %2694 ], [ %2727, %2723 ], [ %2716, %2714 ]
  %2731 = phi float [ %2713, %2694 ], [ %2717, %2723 ], [ %2717, %2714 ]
  %2732 = phi float [ 1.000000e+00, %2694 ], [ %2728, %2723 ], [ %2718, %2714 ]
  %2733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2734 = extractvalue %dx.types.CBufRet.f32 %2733, 0
  %2735 = fmul fast float %2734, %2682
  %2736 = fmul fast float %2734, %2683
  %2737 = fadd fast float %2682, %2681
  %2738 = select i1 %151, float %2737, float %2681
  %2739 = fmul float %2738, %2734
  %2740 = select i1 %151, float 0.000000e+00, float %2735
  %2741 = select i1 %151, float 0.000000e+00, float %2736
  %2742 = fmul fast float %2730, %2687
  %2743 = fmul fast float %2731, %2688
  %2744 = fmul fast float %2732, %2689
  %2745 = fadd fast float %2739, %2742
  %2746 = fadd fast float %2740, %2743
  %2747 = fadd fast float %2741, %2744
  %2748 = select i1 %151, float %2731, float %2746
  %2749 = select i1 %151, float %2732, float %2747
  %2750 = call float @dx.op.binary.f32(i32 36, float %2745, float 3.225500e+04)  ; FMin(a,b)
  %2751 = call float @dx.op.binary.f32(i32 36, float %2748, float 3.225500e+04)  ; FMin(a,b)
  %2752 = call float @dx.op.binary.f32(i32 36, float %2749, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %2750)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %2751)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %2752)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!41 = !{[27 x i32] [i32 25, i32 4, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7]}
!42 = !{void ()* @ps_main, !"ps_main", !43, !4, !61}
!43 = !{!44, !59, null}
!44 = !{!45, !48, !50, !52, !54, !55, !56, !58}
!45 = !{i32 0, !"SV_Position", i8 9, i8 3, !46, i8 4, i32 1, i8 4, i32 0, i8 0, !47}
!46 = !{i32 0}
!47 = !{i32 3, i32 11}
!48 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !46, i8 2, i32 1, i8 2, i32 1, i8 0, !49}
!49 = !{i32 3, i32 3}
!50 = !{i32 2, !"NORMAL", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 2, i8 0, !51}
!51 = !{i32 3, i32 7}
!52 = !{i32 3, !"TANGENT", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 3, i8 0, !53}
!53 = !{i32 3, i32 15}
!54 = !{i32 4, !"AMBIENT_COLOR", i8 9, i8 0, !46, i8 2, i32 1, i8 3, i32 4, i8 0, !51}
!55 = !{i32 5, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !46, i8 2, i32 1, i8 4, i32 5, i8 0, !53}
!56 = !{i32 6, !"SV_IsFrontFace", i8 5, i8 13, !46, i8 1, i32 1, i8 1, i32 6, i8 0, !57}
!57 = !{i32 3, i32 1}
!58 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !46, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!59 = !{!60}
!60 = !{i32 0, !"SV_Target", i8 9, i8 16, !46, i8 0, i32 1, i8 4, i32 0, i8 0, !53}
!61 = !{i32 0, i64 24}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 1}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 1}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 1}

