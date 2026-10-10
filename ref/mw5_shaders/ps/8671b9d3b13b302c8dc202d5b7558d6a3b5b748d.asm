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
; shader hash: 2dea96cf18ddd5469fc6f1fd78baf8a8
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
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 92, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %178 = and i32 %177, 65535
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = lshr i32 %177, 16
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 160, i32 undef)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.i32 %182, 0
  %184 = and i32 %183, 65535
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = lshr i32 %183, 16
  %187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %186)  ; LegacyF16ToF32(value)
  %188 = fmul fast float %185, 0x3F50624DE0000000
  %189 = fmul fast float %187, 0x3F50624DE0000000
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 108, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = shl i32 %191, 4
  %193 = and i32 %192, 32752
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = lshr i32 %191, 7
  %196 = and i32 %195, 32752
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = lshr i32 %191, 22
  %199 = shl nuw nsw i32 %198, 5
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = and i32 %202, 255
  %204 = uitofp i32 %203 to float
  %205 = fmul fast float %204, 0x3F70101020000000
  %206 = lshr i32 %202, 8
  %207 = and i32 %206, 255
  %208 = uitofp i32 %207 to float
  %209 = fmul fast float %208, 0x3F70101020000000
  %210 = lshr i32 %202, 16
  %211 = and i32 %210, 255
  %212 = uitofp i32 %211 to float
  %213 = fmul fast float %212, 0x3F70101020000000
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 52, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 65535
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %215, 16
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 176, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 65535
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = lshr i32 %221, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = fmul fast float %223, 0x3F50624DE0000000
  %227 = fmul fast float %225, 0x3F50624DE0000000
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 32
  %231 = icmp eq i32 %230, 0
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 2
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %243, label %236

; <label>:236                                     ; preds = %150
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 280, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = add i32 %238, 0
  %240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %240, %dx.types.Handle %50, float %44, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  br label %243

; <label>:243                                     ; preds = %236, %150
  %244 = phi float [ 1.000000e+00, %150 ], [ %242, %236 ]
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 188, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = and i32 %246, 2
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %255, label %249

; <label>:249                                     ; preds = %243
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = and i32 %251, 1
  %253 = icmp ne i32 %252, 0
  %254 = select i1 %253, float %244, float 1.000000e+00
  br label %255

; <label>:255                                     ; preds = %249, %243
  %256 = phi float [ %244, %243 ], [ %254, %249 ]
  %257 = lshr i32 %246, 20
  %258 = and i32 %257, 3
  %259 = add nuw nsw i32 %258, 1
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 28, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = or i32 %263, %261
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %699, label %266

; <label>:266                                     ; preds = %255
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = lshr i32 %268, 16
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = fmul fast float %270, 0x3F50624DE0000000
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 56, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = lshr i32 %273, 16
  %275 = and i32 %274, 255
  %276 = lshr i32 %273, 24
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 164, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = lshr i32 %284, 22
  %286 = shl nuw nsw i32 %285, 5
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = shl i32 %284, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %284, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %295 = extractvalue %dx.types.CBufRet.f32 %294, 3
  %296 = fmul fast float %295, 1.000000e+03
  %297 = fmul fast float %188, %296
  %298 = call float @dx.op.unary.f32(i32 22, float %297)  ; Frc(value)
  %299 = fadd fast float %298, %179
  %300 = fmul fast float %189, %296
  %301 = call float @dx.op.unary.f32(i32 22, float %300)  ; Frc(value)
  %302 = fadd fast float %301, %181
  %303 = fmul fast float %271, %296
  %304 = call float @dx.op.unary.f32(i32 22, float %303)  ; Frc(value)
  %305 = fmul fast float %304, 0x401921FB60000000
  %306 = fadd fast float %305, %287
  %307 = call float @dx.op.unary.f32(i32 13, float %306)  ; Sin(value)
  %308 = call float @dx.op.unary.f32(i32 12, float %306)  ; Cos(value)
  %309 = fsub fast float -0.000000e+00, %307
  %310 = fadd fast float %44, -5.000000e-01
  %311 = fadd fast float %45, -5.000000e-01
  %312 = fmul fast float %280, %310
  %313 = fmul fast float %282, %311
  %314 = fadd fast float %312, 5.000000e-01
  %315 = fadd fast float %313, 5.000000e-01
  %316 = fmul fast float %290, %314
  %317 = fmul fast float %293, %315
  %318 = fmul fast float %308, %316
  %319 = call float @dx.op.tertiary.f32(i32 46, float %309, float %317, float %318)  ; FMad(a,b,c)
  %320 = fmul fast float %307, %316
  %321 = call float @dx.op.tertiary.f32(i32 46, float %308, float %317, float %320)  ; FMad(a,b,c)
  %322 = fadd fast float %299, %319
  %323 = fadd fast float %302, %321
  %324 = icmp ugt i32 %275, 1
  %325 = icmp ugt i32 %273, 33554431
  %326 = or i1 %325, %324
  br i1 %326, label %327, label %351

; <label>:327                                     ; preds = %266
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = lshr i32 %329, 16
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = fmul fast float %295, %331
  %333 = call float @dx.op.unary.f32(i32 22, float %332)  ; Frc(value)
  %334 = mul nuw nsw i32 %275, %276
  %335 = uitofp i32 %334 to float
  %336 = fmul fast float %333, %335
  %337 = call float @dx.op.unary.f32(i32 27, float %336)  ; Round_ni(value)
  %338 = fptoui float %337 to i32
  %339 = urem i32 %338, %275
  %340 = udiv i32 %338, %276
  %341 = call float @dx.op.unary.f32(i32 22, float %322)  ; Frc(value)
  %342 = call float @dx.op.unary.f32(i32 22, float %323)  ; Frc(value)
  %343 = uitofp i32 %339 to float
  %344 = uitofp i32 %340 to float
  %345 = fadd fast float %341, %343
  %346 = fadd fast float %342, %344
  %347 = uitofp i32 %275 to float
  %348 = uitofp i32 %276 to float
  %349 = fdiv fast float %345, %347
  %350 = fdiv fast float %346, %348
  br label %351

; <label>:351                                     ; preds = %327, %266
  %352 = phi float [ %349, %327 ], [ %322, %266 ]
  %353 = phi float [ %350, %327 ], [ %323, %266 ]
  %354 = and i32 %261, 16
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %547, label %356

; <label>:356                                     ; preds = %351
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 216, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = add i32 %358, 0
  %360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %360, %dx.types.Handle %49, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  %363 = extractvalue %dx.types.ResRet.f32 %361, 1
  %364 = extractvalue %dx.types.ResRet.f32 %361, 2
  %365 = extractvalue %dx.types.ResRet.f32 %361, 3
  %366 = and i32 %273, 255
  %367 = uitofp i32 %366 to float
  %368 = lshr i32 %273, 8
  %369 = and i32 %368, 255
  %370 = uitofp i32 %369 to float
  %371 = fmul fast float %365, %367
  %372 = fadd fast float %371, %370
  %373 = fmul fast float %372, 0x3F70101000000000
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 512
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %385, label %378

; <label>:378                                     ; preds = %356
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 256, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = add i32 %380, 0
  %382 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %381, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %383 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %382, %dx.types.Handle %50, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %384 = extractvalue %dx.types.ResRet.f32 %383, 0
  br label %385

; <label>:385                                     ; preds = %378, %356
  %386 = phi float [ %384, %378 ], [ 1.000000e+00, %356 ]
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 33554432
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %494, label %391

; <label>:391                                     ; preds = %385
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 128, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = and i32 %393, 65535
  %395 = call float @dx.op.legacyF16ToF32(i32 131, i32 %394)  ; LegacyF16ToF32(value)
  %396 = lshr i32 %393, 16
  %397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %396)  ; LegacyF16ToF32(value)
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 132, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 65535
  %401 = call float @dx.op.legacyF16ToF32(i32 131, i32 %400)  ; LegacyF16ToF32(value)
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 120, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = lshr i32 %403, 24
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F70101020000000
  %407 = and i32 %403, 255
  %408 = uitofp i32 %407 to float
  %409 = fmul fast float %408, 0x3F70101020000000
  %410 = lshr i32 %403, 8
  %411 = and i32 %410, 255
  %412 = uitofp i32 %411 to float
  %413 = fmul fast float %412, 0x3F70101020000000
  %414 = lshr i32 %403, 16
  %415 = and i32 %414, 255
  %416 = uitofp i32 %415 to float
  %417 = fmul fast float %416, 0x3F70101020000000
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 124, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = lshr i32 %419, 24
  %421 = uitofp i32 %420 to float
  %422 = fmul fast float %421, 0x3F70101020000000
  %423 = and i32 %419, 255
  %424 = uitofp i32 %423 to float
  %425 = fmul fast float %424, 0x3F70101020000000
  %426 = lshr i32 %419, 8
  %427 = and i32 %426, 255
  %428 = uitofp i32 %427 to float
  %429 = fmul fast float %428, 0x3F70101020000000
  %430 = lshr i32 %419, 16
  %431 = and i32 %430, 255
  %432 = uitofp i32 %431 to float
  %433 = fmul fast float %432, 0x3F70101020000000
  %434 = bitcast float %362 to i32
  %435 = ashr i32 %434, 1
  %436 = sub nsw i32 1597463174, %435
  %437 = bitcast i32 %436 to float
  %438 = fmul fast float %362, 5.000000e-01
  %439 = fmul fast float %437, %437
  %440 = fmul fast float %439, %438
  %441 = fsub fast float 1.500000e+00, %440
  %442 = fmul fast float %437, %362
  %443 = fmul fast float %442, %441
  %444 = bitcast float %363 to i32
  %445 = ashr i32 %444, 1
  %446 = sub nsw i32 1597463174, %445
  %447 = bitcast i32 %446 to float
  %448 = fmul fast float %363, 5.000000e-01
  %449 = fmul fast float %447, %447
  %450 = fmul fast float %449, %448
  %451 = fsub fast float 1.500000e+00, %450
  %452 = fmul fast float %447, %363
  %453 = fmul fast float %452, %451
  %454 = bitcast float %364 to i32
  %455 = ashr i32 %454, 1
  %456 = sub nsw i32 1597463174, %455
  %457 = bitcast i32 %456 to float
  %458 = fmul fast float %364, 5.000000e-01
  %459 = fmul fast float %457, %457
  %460 = fmul fast float %459, %458
  %461 = fsub fast float 1.500000e+00, %460
  %462 = fmul fast float %457, %364
  %463 = fmul fast float %462, %461
  %464 = fsub fast float %443, %425
  %465 = fsub fast float %453, %429
  %466 = fsub fast float %463, %433
  %467 = fmul fast float %464, %395
  %468 = fmul fast float %465, %397
  %469 = fmul fast float %466, %401
  %470 = fadd fast float %467, %409
  %471 = fadd fast float %468, %413
  %472 = fadd fast float %469, %417
  %473 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %474 = call float @dx.op.unary.f32(i32 7, float %471)  ; Saturate(value)
  %475 = call float @dx.op.unary.f32(i32 7, float %472)  ; Saturate(value)
  %476 = fmul fast float %473, %473
  %477 = fmul fast float %474, %474
  %478 = fmul fast float %475, %475
  %479 = fsub fast float %476, %362
  %480 = fsub fast float %477, %363
  %481 = fsub fast float %478, %364
  %482 = fmul fast float %479, %386
  %483 = fmul fast float %480, %386
  %484 = fmul fast float %481, %386
  %485 = fadd fast float %482, %362
  %486 = fadd fast float %483, %363
  %487 = fadd fast float %484, %364
  %488 = fadd fast float %406, %373
  %489 = fsub fast float %488, %422
  %490 = call float @dx.op.unary.f32(i32 7, float %489)  ; Saturate(value)
  %491 = fsub fast float %490, %373
  %492 = fmul fast float %491, %386
  %493 = fadd fast float %492, %373
  br label %547

; <label>:494                                     ; preds = %385
  %495 = and i32 %388, 134217728
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %531, label %497

; <label>:497                                     ; preds = %494
  %498 = call float @dx.op.unary.f32(i32 24, float %167)  ; Sqrt(value)
  %499 = call float @dx.op.unary.f32(i32 24, float %171)  ; Sqrt(value)
  %500 = call float @dx.op.unary.f32(i32 24, float %175)  ; Sqrt(value)
  %501 = fadd fast float %498, -5.000000e-01
  %502 = fadd fast float %499, -5.000000e-01
  %503 = fadd fast float %500, -5.000000e-01
  %504 = fmul fast float %501, %386
  %505 = fmul fast float %502, %386
  %506 = fmul fast float %503, %386
  %507 = fadd fast float %504, 5.000000e-01
  %508 = fadd fast float %505, 5.000000e-01
  %509 = fadd fast float %506, 5.000000e-01
  %510 = call float @dx.op.unary.f32(i32 24, float %362)  ; Sqrt(value)
  %511 = call float @dx.op.unary.f32(i32 24, float %363)  ; Sqrt(value)
  %512 = call float @dx.op.unary.f32(i32 24, float %364)  ; Sqrt(value)
  %513 = fmul fast float %507, 2.000000e+00
  %514 = fsub fast float 1.000000e+00, %513
  %515 = fmul fast float %514, %510
  %516 = fadd fast float %515, %513
  %517 = fmul fast float %516, %510
  %518 = fmul fast float %508, 2.000000e+00
  %519 = fsub fast float 1.000000e+00, %518
  %520 = fmul fast float %519, %511
  %521 = fadd fast float %520, %518
  %522 = fmul fast float %521, %511
  %523 = fmul fast float %509, 2.000000e+00
  %524 = fsub fast float 1.000000e+00, %523
  %525 = fmul fast float %524, %512
  %526 = fadd fast float %525, %523
  %527 = fmul fast float %526, %512
  %528 = fmul fast float %517, %517
  %529 = fmul fast float %522, %522
  %530 = fmul fast float %527, %527
  br label %547

; <label>:531                                     ; preds = %494
  %532 = fmul fast float %167, %167
  %533 = fmul fast float %171, %171
  %534 = fmul fast float %175, %175
  %535 = fadd fast float %532, -1.000000e+00
  %536 = fadd fast float %533, -1.000000e+00
  %537 = fadd fast float %534, -1.000000e+00
  %538 = fmul fast float %386, %535
  %539 = fmul fast float %386, %536
  %540 = fmul fast float %386, %537
  %541 = fadd fast float %538, 1.000000e+00
  %542 = fadd fast float %539, 1.000000e+00
  %543 = fadd fast float %540, 1.000000e+00
  %544 = fmul fast float %541, %362
  %545 = fmul fast float %542, %363
  %546 = fmul fast float %543, %364
  br label %547

; <label>:547                                     ; preds = %531, %497, %391, %351
  %548 = phi float [ %493, %391 ], [ %373, %497 ], [ %373, %531 ], [ 0x3FA23C0BE0000000, %351 ]
  %549 = phi float [ %485, %391 ], [ %528, %497 ], [ %544, %531 ], [ 1.000000e+00, %351 ]
  %550 = phi float [ %486, %391 ], [ %529, %497 ], [ %545, %531 ], [ 1.000000e+00, %351 ]
  %551 = phi float [ %487, %391 ], [ %530, %497 ], [ %546, %531 ], [ 1.000000e+00, %351 ]
  %552 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.i32 %552, 1
  %554 = and i32 %553, 1
  %555 = icmp ne i32 %554, 0
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 32
  %559 = icmp ne i32 %558, 0
  %560 = and i1 %555, %559
  %561 = select i1 %560, float 1.000000e+00, float %549
  %562 = select i1 %560, float 0x3FD3333340000000, float %550
  %563 = select i1 %560, float 0x3FD3333340000000, float %551
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = and i32 %565, 32
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %637, label %568

; <label>:568                                     ; preds = %547
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 60, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 224, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = add i32 %572, 0
  %574 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %573, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %575 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %574, %dx.types.Handle %49, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %576 = extractvalue %dx.types.ResRet.f32 %575, 0
  %577 = extractvalue %dx.types.ResRet.f32 %575, 1
  %578 = extractvalue %dx.types.ResRet.f32 %575, 2
  %579 = extractvalue %dx.types.ResRet.f32 %575, 3
  %580 = and i32 %570, 255
  %581 = uitofp i32 %580 to float
  %582 = lshr i32 %570, 8
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = lshr i32 %570, 16
  %586 = and i32 %585, 255
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %587, 0x3F70101000000000
  %589 = fmul fast float %576, %581
  %590 = fadd fast float %589, %584
  %591 = fmul fast float %590, 0x3F70101000000000
  %592 = fadd fast float %577, -5.000000e-01
  %593 = fadd fast float %579, -5.000000e-01
  %594 = fmul fast float %592, %588
  %595 = fmul fast float %593, %588
  %596 = fadd fast float %594, 5.000000e-01
  %597 = fadd fast float %595, 5.000000e-01
  %598 = fmul fast float %596, 2.000000e+00
  %599 = fadd fast float %598, -1.000000e+00
  %600 = fmul fast float %597, 2.000000e+00
  %601 = fadd fast float %600, -1.000000e+00
  %602 = fadd fast float %599, %601
  %603 = fmul fast float %602, 5.000000e-01
  %604 = fsub fast float %599, %601
  %605 = fmul fast float %604, 5.000000e-01
  %606 = call float @dx.op.unary.f32(i32 6, float %603)  ; FAbs(value)
  %607 = fsub fast float 1.000000e+00, %606
  %608 = call float @dx.op.unary.f32(i32 6, float %605)  ; FAbs(value)
  %609 = fsub fast float %607, %608
  %610 = call float @dx.op.dot3.f32(i32 55, float %603, float %605, float %609, float %603, float %605, float %609)  ; Dot3(ax,ay,az,bx,by,bz)
  %611 = call float @dx.op.unary.f32(i32 25, float %610)  ; Rsqrt(value)
  %612 = fmul fast float %603, %611
  %613 = fmul fast float %605, %611
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 67108864
  %617 = icmp eq i32 %616, 0
  br i1 %617, label %633, label %618

; <label>:618                                     ; preds = %568
  %619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 152, i32 undef)  ; BufferLoad(srv,index,wot)
  %620 = extractvalue %dx.types.ResRet.i32 %619, 0
  %621 = and i32 %620, 65535
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 156, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 65535
  %626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %625)  ; LegacyF16ToF32(value)
  %627 = lshr i32 %620, 16
  %628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %627)  ; LegacyF16ToF32(value)
  %629 = fsub fast float %591, %628
  %630 = fmul fast float %629, %622
  %631 = fadd fast float %630, %626
  %632 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  br label %633

; <label>:633                                     ; preds = %618, %568
  %634 = phi float [ %632, %618 ], [ %591, %568 ]
  %635 = call float @dx.op.dot2.f32(i32 54, float %612, float %613, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %636 = call float @dx.op.dot2.f32(i32 54, float %612, float %613, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %637

; <label>:637                                     ; preds = %633, %547
  %638 = phi float [ %634, %633 ], [ 0x3FD6666660000000, %547 ]
  %639 = phi float [ %635, %633 ], [ 0.000000e+00, %547 ]
  %640 = phi float [ %636, %633 ], [ 0.000000e+00, %547 ]
  %641 = phi float [ %578, %633 ], [ 1.000000e+00, %547 ]
  %642 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 96, i32 undef)  ; BufferLoad(srv,index,wot)
  %643 = extractvalue %dx.types.ResRet.i32 %642, 0
  %644 = lshr i32 %643, 22
  %645 = shl nuw nsw i32 %644, 5
  %646 = call float @dx.op.legacyF16ToF32(i32 131, i32 %645)  ; LegacyF16ToF32(value)
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = and i32 %648, 64
  %650 = icmp eq i32 %649, 0
  br i1 %650, label %683, label %651

; <label>:651                                     ; preds = %637
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 232, i32 undef)  ; BufferLoad(srv,index,wot)
  %653 = extractvalue %dx.types.ResRet.i32 %652, 0
  %654 = add i32 %653, 0
  %655 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %654, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 24, i32 undef)  ; BufferLoad(srv,index,wot)
  %657 = extractvalue %dx.types.ResRet.i32 %656, 0
  %658 = and i32 %657, 131072
  %659 = icmp eq i32 %658, 0
  %660 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %655, %dx.types.Handle %49, float %352, float %353, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %661 = extractvalue %dx.types.ResRet.f32 %660, 0
  %662 = extractvalue %dx.types.ResRet.f32 %660, 1
  %663 = extractvalue %dx.types.ResRet.f32 %660, 2
  %664 = fmul fast float %661, %156
  %665 = fmul fast float %662, %159
  %666 = fmul fast float %663, %162
  br i1 %659, label %673, label %667

; <label>:667                                     ; preds = %651
  %668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %669 = extractvalue %dx.types.CBufRet.f32 %668, 0
  %670 = fmul fast float %669, %664
  %671 = fmul fast float %669, %665
  %672 = fmul fast float %669, %666
  br label %673

; <label>:673                                     ; preds = %667, %651
  %674 = phi float [ %670, %667 ], [ %664, %651 ]
  %675 = phi float [ %671, %667 ], [ %665, %651 ]
  %676 = phi float [ %672, %667 ], [ %666, %651 ]
  %677 = fmul fast float %674, %646
  %678 = select i1 %151, float %677, float %674
  %679 = call float @dx.op.dot3.f32(i32 55, float %678, float %675, float %676, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %680 = select i1 %151, float 0.000000e+00, float %674
  %681 = select i1 %151, float %679, float %675
  %682 = select i1 %151, float 0.000000e+00, float %676
  br label %683

; <label>:683                                     ; preds = %673, %637
  %684 = phi float [ %680, %673 ], [ 0.000000e+00, %637 ]
  %685 = phi float [ %681, %673 ], [ 0.000000e+00, %637 ]
  %686 = phi float [ %682, %673 ], [ 0.000000e+00, %637 ]
  %687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 64, i32 undef)  ; BufferLoad(srv,index,wot)
  %688 = extractvalue %dx.types.ResRet.i32 %687, 0
  %689 = and i32 %688, 255
  %690 = uitofp i32 %689 to float
  %691 = lshr i32 %688, 8
  %692 = and i32 %691, 255
  %693 = uitofp i32 %692 to float
  %694 = call float @dx.op.dot3.f32(i32 55, float %561, float %562, float %563, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = fmul fast float %693, %694
  %696 = fadd fast float %695, %690
  %697 = fmul fast float %696, 0x3F70101020000000
  %698 = call float @dx.op.unary.f32(i32 7, float %697)  ; Saturate(value)
  br label %699

; <label>:699                                     ; preds = %683, %255
  %700 = phi float [ 0.000000e+00, %255 ], [ %639, %683 ]
  %701 = phi float [ 0.000000e+00, %255 ], [ %640, %683 ]
  %702 = phi float [ 0.000000e+00, %255 ], [ %561, %683 ]
  %703 = phi float [ 0.000000e+00, %255 ], [ %562, %683 ]
  %704 = phi float [ 0.000000e+00, %255 ], [ %563, %683 ]
  %705 = phi float [ 0.000000e+00, %255 ], [ %684, %683 ]
  %706 = phi float [ 0.000000e+00, %255 ], [ %685, %683 ]
  %707 = phi float [ 0.000000e+00, %255 ], [ %686, %683 ]
  %708 = phi float [ 0.000000e+00, %255 ], [ %548, %683 ]
  %709 = phi float [ 0.000000e+00, %255 ], [ 1.000000e+00, %683 ]
  %710 = phi float [ 0.000000e+00, %255 ], [ %638, %683 ]
  %711 = phi float [ 0.000000e+00, %255 ], [ %641, %683 ]
  %712 = phi float [ 0.000000e+00, %255 ], [ %698, %683 ]
  br i1 %231, label %1517, label %713

; <label>:713                                     ; preds = %699
  %714 = icmp ult i32 %259, 2
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = or i32 %718, %716
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %1517, label %721

; <label>:721                                     ; preds = %713
  %722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %723 = extractvalue %dx.types.ResRet.i32 %722, 0
  %724 = lshr i32 %723, 16
  %725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %724)  ; LegacyF16ToF32(value)
  %726 = fmul fast float %725, 0x3F50624DE0000000
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = lshr i32 %728, 16
  %730 = and i32 %729, 255
  %731 = lshr i32 %728, 24
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 180, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = and i32 %733, 65535
  %735 = call float @dx.op.legacyF16ToF32(i32 131, i32 %734)  ; LegacyF16ToF32(value)
  %736 = lshr i32 %733, 16
  %737 = call float @dx.op.legacyF16ToF32(i32 131, i32 %736)  ; LegacyF16ToF32(value)
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = lshr i32 %739, 22
  %741 = shl nuw nsw i32 %740, 5
  %742 = call float @dx.op.legacyF16ToF32(i32 131, i32 %741)  ; LegacyF16ToF32(value)
  %743 = shl i32 %739, 4
  %744 = and i32 %743, 32752
  %745 = call float @dx.op.legacyF16ToF32(i32 131, i32 %744)  ; LegacyF16ToF32(value)
  %746 = lshr i32 %739, 7
  %747 = and i32 %746, 32752
  %748 = call float @dx.op.legacyF16ToF32(i32 131, i32 %747)  ; LegacyF16ToF32(value)
  %749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %750 = extractvalue %dx.types.CBufRet.f32 %749, 3
  %751 = fmul fast float %750, 1.000000e+03
  %752 = fmul fast float %226, %751
  %753 = call float @dx.op.unary.f32(i32 22, float %752)  ; Frc(value)
  %754 = fadd fast float %753, %217
  %755 = fmul fast float %227, %751
  %756 = call float @dx.op.unary.f32(i32 22, float %755)  ; Frc(value)
  %757 = fadd fast float %756, %219
  %758 = fmul fast float %726, %751
  %759 = call float @dx.op.unary.f32(i32 22, float %758)  ; Frc(value)
  %760 = fmul fast float %759, 0x401921FB60000000
  %761 = fadd fast float %760, %742
  %762 = call float @dx.op.unary.f32(i32 13, float %761)  ; Sin(value)
  %763 = call float @dx.op.unary.f32(i32 12, float %761)  ; Cos(value)
  %764 = fsub fast float -0.000000e+00, %762
  %765 = fadd fast float %44, -5.000000e-01
  %766 = fadd fast float %45, -5.000000e-01
  %767 = fmul fast float %735, %765
  %768 = fmul fast float %737, %766
  %769 = fadd fast float %767, 5.000000e-01
  %770 = fadd fast float %768, 5.000000e-01
  %771 = fmul fast float %745, %769
  %772 = fmul fast float %748, %770
  %773 = fmul fast float %763, %771
  %774 = call float @dx.op.tertiary.f32(i32 46, float %764, float %772, float %773)  ; FMad(a,b,c)
  %775 = fmul fast float %762, %771
  %776 = call float @dx.op.tertiary.f32(i32 46, float %763, float %772, float %775)  ; FMad(a,b,c)
  %777 = fadd fast float %754, %774
  %778 = fadd fast float %757, %776
  %779 = icmp ugt i32 %730, 1
  %780 = icmp ugt i32 %728, 33554431
  %781 = or i1 %780, %779
  br i1 %781, label %782, label %806

; <label>:782                                     ; preds = %721
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = lshr i32 %784, 16
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = fmul fast float %750, %786
  %788 = call float @dx.op.unary.f32(i32 22, float %787)  ; Frc(value)
  %789 = mul nuw nsw i32 %730, %731
  %790 = uitofp i32 %789 to float
  %791 = fmul fast float %788, %790
  %792 = call float @dx.op.unary.f32(i32 27, float %791)  ; Round_ni(value)
  %793 = fptoui float %792 to i32
  %794 = urem i32 %793, %730
  %795 = udiv i32 %793, %731
  %796 = call float @dx.op.unary.f32(i32 22, float %777)  ; Frc(value)
  %797 = call float @dx.op.unary.f32(i32 22, float %778)  ; Frc(value)
  %798 = uitofp i32 %794 to float
  %799 = uitofp i32 %795 to float
  %800 = fadd fast float %796, %798
  %801 = fadd fast float %797, %799
  %802 = uitofp i32 %730 to float
  %803 = uitofp i32 %731 to float
  %804 = fdiv fast float %800, %802
  %805 = fdiv fast float %801, %803
  br label %806

; <label>:806                                     ; preds = %782, %721
  %807 = phi float [ %804, %782 ], [ %777, %721 ]
  %808 = phi float [ %805, %782 ], [ %778, %721 ]
  %809 = and i32 %716, 256
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %855, label %811

; <label>:811                                     ; preds = %806
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 252, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = add i32 %813, 0
  %815 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %814, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %816 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %815, %dx.types.Handle %50, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 84, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = shl i32 %819, 4
  %821 = and i32 %820, 32752
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = lshr i32 %819, 7
  %824 = and i32 %823, 32752
  %825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %824)  ; LegacyF16ToF32(value)
  %826 = fsub fast float 1.000000e+00, %256
  %827 = call float @dx.op.binary.f32(i32 35, float %826, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %828 = bitcast float %256 to i32
  %829 = sitofp i32 %828 to float
  %830 = fadd fast float %829, 0xC1CFBF8940000000
  %831 = fmul fast float %825, %830
  %832 = fadd fast float %831, 0x41CFBF8940000000
  %833 = fptosi float %832 to i32
  %834 = bitcast i32 %833 to float
  %835 = bitcast float %827 to i32
  %836 = sitofp i32 %835 to float
  %837 = fadd fast float %836, 0xC1CFBF8940000000
  %838 = fmul fast float %837, %825
  %839 = fadd fast float %838, 0x41CFBF8940000000
  %840 = fptosi float %839 to i32
  %841 = bitcast i32 %840 to float
  %842 = fmul fast float %834, %822
  %843 = fmul fast float %841, %822
  %844 = fsub fast float %827, %842
  %845 = fadd fast float %843, %827
  %846 = call float @dx.op.unary.f32(i32 7, float %844)  ; Saturate(value)
  %847 = call float @dx.op.unary.f32(i32 7, float %845)  ; Saturate(value)
  %848 = fsub fast float %817, %846
  %849 = fsub fast float %847, %846
  %850 = bitcast float %849 to i32
  %851 = sub nsw i32 2129859010, %850
  %852 = bitcast i32 %851 to float
  %853 = fmul fast float %852, %848
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  br label %855

; <label>:855                                     ; preds = %811, %806
  %856 = phi float [ %854, %811 ], [ %256, %806 ]
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = and i32 %858, 128
  %860 = icmp eq i32 %859, 0
  br i1 %860, label %876, label %861

; <label>:861                                     ; preds = %855
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = add i32 %863, 0
  %865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %864, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %866 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %865, %dx.types.Handle %50, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = and i32 %869, 524288
  %871 = icmp ne i32 %870, 0
  %872 = fcmp fast ogt float %867, 0x3FE0101020000000
  %873 = select i1 %872, float 1.000000e+00, float 0.000000e+00
  %874 = select i1 %871, float %873, float %867
  %875 = fmul fast float %874, %856
  br label %876

; <label>:876                                     ; preds = %861, %855
  %877 = phi float [ %875, %861 ], [ %856, %855 ]
  %878 = fcmp fast ult float %877, 0x3F70101020000000
  br i1 %878, label %1517, label %879

; <label>:879                                     ; preds = %876
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 16
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %1077, label %884

; <label>:884                                     ; preds = %879
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = add i32 %888, 0
  %890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %890, %dx.types.Handle %49, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 0
  %893 = extractvalue %dx.types.ResRet.f32 %891, 1
  %894 = extractvalue %dx.types.ResRet.f32 %891, 2
  %895 = extractvalue %dx.types.ResRet.f32 %891, 3
  %896 = and i32 %886, 255
  %897 = uitofp i32 %896 to float
  %898 = lshr i32 %886, 8
  %899 = and i32 %898, 255
  %900 = uitofp i32 %899 to float
  %901 = fmul fast float %895, %897
  %902 = fadd fast float %901, %900
  %903 = fmul fast float %902, 0x3F70101000000000
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 512
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %915, label %908

; <label>:908                                     ; preds = %884
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 260, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = add i32 %910, 0
  %912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %913 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %912, %dx.types.Handle %50, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  br label %915

; <label>:915                                     ; preds = %908, %884
  %916 = phi float [ %914, %908 ], [ 1.000000e+00, %884 ]
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = and i32 %918, 33554432
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %1024, label %921

; <label>:921                                     ; preds = %915
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 144, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = and i32 %923, 65535
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = lshr i32 %923, 16
  %927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %926)  ; LegacyF16ToF32(value)
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 148, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = and i32 %929, 65535
  %931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %930)  ; LegacyF16ToF32(value)
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 136, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 24
  %935 = uitofp i32 %934 to float
  %936 = fmul fast float %935, 0x3F70101020000000
  %937 = and i32 %933, 255
  %938 = uitofp i32 %937 to float
  %939 = fmul fast float %938, 0x3F70101020000000
  %940 = lshr i32 %933, 8
  %941 = and i32 %940, 255
  %942 = uitofp i32 %941 to float
  %943 = fmul fast float %942, 0x3F70101020000000
  %944 = lshr i32 %933, 16
  %945 = and i32 %944, 255
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %946, 0x3F70101020000000
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 140, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = lshr i32 %949, 24
  %951 = uitofp i32 %950 to float
  %952 = fmul fast float %951, 0x3F70101020000000
  %953 = and i32 %949, 255
  %954 = uitofp i32 %953 to float
  %955 = fmul fast float %954, 0x3F70101020000000
  %956 = lshr i32 %949, 8
  %957 = and i32 %956, 255
  %958 = uitofp i32 %957 to float
  %959 = fmul fast float %958, 0x3F70101020000000
  %960 = lshr i32 %949, 16
  %961 = and i32 %960, 255
  %962 = uitofp i32 %961 to float
  %963 = fmul fast float %962, 0x3F70101020000000
  %964 = bitcast float %892 to i32
  %965 = ashr i32 %964, 1
  %966 = sub nsw i32 1597463174, %965
  %967 = bitcast i32 %966 to float
  %968 = fmul fast float %892, 5.000000e-01
  %969 = fmul fast float %967, %967
  %970 = fmul fast float %969, %968
  %971 = fsub fast float 1.500000e+00, %970
  %972 = fmul fast float %967, %892
  %973 = fmul fast float %972, %971
  %974 = bitcast float %893 to i32
  %975 = ashr i32 %974, 1
  %976 = sub nsw i32 1597463174, %975
  %977 = bitcast i32 %976 to float
  %978 = fmul fast float %893, 5.000000e-01
  %979 = fmul fast float %977, %977
  %980 = fmul fast float %979, %978
  %981 = fsub fast float 1.500000e+00, %980
  %982 = fmul fast float %977, %893
  %983 = fmul fast float %982, %981
  %984 = bitcast float %894 to i32
  %985 = ashr i32 %984, 1
  %986 = sub nsw i32 1597463174, %985
  %987 = bitcast i32 %986 to float
  %988 = fmul fast float %894, 5.000000e-01
  %989 = fmul fast float %987, %987
  %990 = fmul fast float %989, %988
  %991 = fsub fast float 1.500000e+00, %990
  %992 = fmul fast float %987, %894
  %993 = fmul fast float %992, %991
  %994 = fsub fast float %973, %955
  %995 = fsub fast float %983, %959
  %996 = fsub fast float %993, %963
  %997 = fmul fast float %994, %925
  %998 = fmul fast float %995, %927
  %999 = fmul fast float %996, %931
  %1000 = fadd fast float %997, %939
  %1001 = fadd fast float %998, %943
  %1002 = fadd fast float %999, %947
  %1003 = call float @dx.op.unary.f32(i32 7, float %1000)  ; Saturate(value)
  %1004 = call float @dx.op.unary.f32(i32 7, float %1001)  ; Saturate(value)
  %1005 = call float @dx.op.unary.f32(i32 7, float %1002)  ; Saturate(value)
  %1006 = fmul fast float %1003, %1003
  %1007 = fmul fast float %1004, %1004
  %1008 = fmul fast float %1005, %1005
  %1009 = fsub fast float %1006, %892
  %1010 = fsub fast float %1007, %893
  %1011 = fsub fast float %1008, %894
  %1012 = fmul fast float %1009, %916
  %1013 = fmul fast float %1010, %916
  %1014 = fmul fast float %1011, %916
  %1015 = fadd fast float %1012, %892
  %1016 = fadd fast float %1013, %893
  %1017 = fadd fast float %1014, %894
  %1018 = fadd fast float %936, %903
  %1019 = fsub fast float %1018, %952
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = fsub fast float %1020, %903
  %1022 = fmul fast float %1021, %916
  %1023 = fadd fast float %1022, %903
  br label %1077

; <label>:1024                                    ; preds = %915
  %1025 = and i32 %918, 134217728
  %1026 = icmp eq i32 %1025, 0
  br i1 %1026, label %1061, label %1027

; <label>:1027                                    ; preds = %1024
  %1028 = call float @dx.op.unary.f32(i32 24, float %205)  ; Sqrt(value)
  %1029 = call float @dx.op.unary.f32(i32 24, float %209)  ; Sqrt(value)
  %1030 = call float @dx.op.unary.f32(i32 24, float %213)  ; Sqrt(value)
  %1031 = fadd fast float %1028, -5.000000e-01
  %1032 = fadd fast float %1029, -5.000000e-01
  %1033 = fadd fast float %1030, -5.000000e-01
  %1034 = fmul fast float %1031, %916
  %1035 = fmul fast float %1032, %916
  %1036 = fmul fast float %1033, %916
  %1037 = fadd fast float %1034, 5.000000e-01
  %1038 = fadd fast float %1035, 5.000000e-01
  %1039 = fadd fast float %1036, 5.000000e-01
  %1040 = call float @dx.op.unary.f32(i32 24, float %892)  ; Sqrt(value)
  %1041 = call float @dx.op.unary.f32(i32 24, float %893)  ; Sqrt(value)
  %1042 = call float @dx.op.unary.f32(i32 24, float %894)  ; Sqrt(value)
  %1043 = fmul fast float %1037, 2.000000e+00
  %1044 = fsub fast float 1.000000e+00, %1043
  %1045 = fmul fast float %1044, %1040
  %1046 = fadd fast float %1045, %1043
  %1047 = fmul fast float %1046, %1040
  %1048 = fmul fast float %1038, 2.000000e+00
  %1049 = fsub fast float 1.000000e+00, %1048
  %1050 = fmul fast float %1049, %1041
  %1051 = fadd fast float %1050, %1048
  %1052 = fmul fast float %1051, %1041
  %1053 = fmul fast float %1039, 2.000000e+00
  %1054 = fsub fast float 1.000000e+00, %1053
  %1055 = fmul fast float %1054, %1042
  %1056 = fadd fast float %1055, %1053
  %1057 = fmul fast float %1056, %1042
  %1058 = fmul fast float %1047, %1047
  %1059 = fmul fast float %1052, %1052
  %1060 = fmul fast float %1057, %1057
  br label %1077

; <label>:1061                                    ; preds = %1024
  %1062 = fmul fast float %205, %205
  %1063 = fmul fast float %209, %209
  %1064 = fmul fast float %213, %213
  %1065 = fadd fast float %1062, -1.000000e+00
  %1066 = fadd fast float %1063, -1.000000e+00
  %1067 = fadd fast float %1064, -1.000000e+00
  %1068 = fmul fast float %916, %1065
  %1069 = fmul fast float %916, %1066
  %1070 = fmul fast float %916, %1067
  %1071 = fadd fast float %1068, 1.000000e+00
  %1072 = fadd fast float %1069, 1.000000e+00
  %1073 = fadd fast float %1070, 1.000000e+00
  %1074 = fmul fast float %1071, %892
  %1075 = fmul fast float %1072, %893
  %1076 = fmul fast float %1073, %894
  br label %1077

; <label>:1077                                    ; preds = %1061, %1027, %921, %879
  %1078 = phi float [ %1023, %921 ], [ %903, %1027 ], [ %903, %1061 ], [ 0x3FA23C0BE0000000, %879 ]
  %1079 = phi float [ %1015, %921 ], [ %1058, %1027 ], [ %1074, %1061 ], [ 1.000000e+00, %879 ]
  %1080 = phi float [ %1016, %921 ], [ %1059, %1027 ], [ %1075, %1061 ], [ 1.000000e+00, %879 ]
  %1081 = phi float [ %1017, %921 ], [ %1060, %1027 ], [ %1076, %1061 ], [ 1.000000e+00, %879 ]
  %1082 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1083 = extractvalue %dx.types.CBufRet.i32 %1082, 1
  %1084 = and i32 %1083, 1
  %1085 = icmp ne i32 %1084, 0
  %1086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.i32 %1086, 0
  %1088 = and i32 %1087, 32
  %1089 = icmp ne i32 %1088, 0
  %1090 = and i1 %1085, %1089
  %1091 = select i1 %1090, float 1.000000e+00, float %1079
  %1092 = select i1 %1090, float 0x3FD3333340000000, float %1080
  %1093 = select i1 %1090, float 0x3FD3333340000000, float %1081
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 32
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1167, label %1098

; <label>:1098                                    ; preds = %1077
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 76, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
  %1102 = extractvalue %dx.types.ResRet.i32 %1101, 0
  %1103 = add i32 %1102, 0
  %1104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1104, %dx.types.Handle %49, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1106 = extractvalue %dx.types.ResRet.f32 %1105, 0
  %1107 = extractvalue %dx.types.ResRet.f32 %1105, 1
  %1108 = extractvalue %dx.types.ResRet.f32 %1105, 2
  %1109 = extractvalue %dx.types.ResRet.f32 %1105, 3
  %1110 = and i32 %1100, 255
  %1111 = uitofp i32 %1110 to float
  %1112 = lshr i32 %1100, 8
  %1113 = and i32 %1112, 255
  %1114 = uitofp i32 %1113 to float
  %1115 = lshr i32 %1100, 16
  %1116 = and i32 %1115, 255
  %1117 = uitofp i32 %1116 to float
  %1118 = fmul fast float %1117, 0x3F70101000000000
  %1119 = fmul fast float %1106, %1111
  %1120 = fadd fast float %1119, %1114
  %1121 = fmul fast float %1120, 0x3F70101000000000
  %1122 = fadd fast float %1107, -5.000000e-01
  %1123 = fadd fast float %1109, -5.000000e-01
  %1124 = fmul fast float %1122, %1118
  %1125 = fmul fast float %1123, %1118
  %1126 = fadd fast float %1124, 5.000000e-01
  %1127 = fadd fast float %1125, 5.000000e-01
  %1128 = fmul fast float %1126, 2.000000e+00
  %1129 = fadd fast float %1128, -1.000000e+00
  %1130 = fmul fast float %1127, 2.000000e+00
  %1131 = fadd fast float %1130, -1.000000e+00
  %1132 = fadd fast float %1129, %1131
  %1133 = fmul fast float %1132, 5.000000e-01
  %1134 = fsub fast float %1129, %1131
  %1135 = fmul fast float %1134, 5.000000e-01
  %1136 = call float @dx.op.unary.f32(i32 6, float %1133)  ; FAbs(value)
  %1137 = fsub fast float 1.000000e+00, %1136
  %1138 = call float @dx.op.unary.f32(i32 6, float %1135)  ; FAbs(value)
  %1139 = fsub fast float %1137, %1138
  %1140 = call float @dx.op.dot3.f32(i32 55, float %1133, float %1135, float %1139, float %1133, float %1135, float %1139)  ; Dot3(ax,ay,az,bx,by,bz)
  %1141 = call float @dx.op.unary.f32(i32 25, float %1140)  ; Rsqrt(value)
  %1142 = fmul fast float %1133, %1141
  %1143 = fmul fast float %1135, %1141
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = and i32 %1145, 67108864
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1163, label %1148

; <label>:1148                                    ; preds = %1098
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 168, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = and i32 %1150, 65535
  %1152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1151)  ; LegacyF16ToF32(value)
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 65535
  %1156 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1155)  ; LegacyF16ToF32(value)
  %1157 = lshr i32 %1150, 16
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = fsub fast float %1121, %1158
  %1160 = fmul fast float %1159, %1152
  %1161 = fadd fast float %1160, %1156
  %1162 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  br label %1163

; <label>:1163                                    ; preds = %1148, %1098
  %1164 = phi float [ %1162, %1148 ], [ %1121, %1098 ]
  %1165 = call float @dx.op.dot2.f32(i32 54, float %1142, float %1143, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %1166 = call float @dx.op.dot2.f32(i32 54, float %1142, float %1143, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %1167

; <label>:1167                                    ; preds = %1163, %1077
  %1168 = phi float [ %1164, %1163 ], [ 0x3FD6666660000000, %1077 ]
  %1169 = phi float [ %1165, %1163 ], [ 0.000000e+00, %1077 ]
  %1170 = phi float [ %1166, %1163 ], [ 0.000000e+00, %1077 ]
  %1171 = phi float [ %1108, %1163 ], [ 1.000000e+00, %1077 ]
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = lshr i32 %1173, 22
  %1175 = shl nuw nsw i32 %1174, 5
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = and i32 %1178, 64
  %1180 = icmp eq i32 %1179, 0
  br i1 %1180, label %1213, label %1181

; <label>:1181                                    ; preds = %1167
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = add i32 %1183, 0
  %1185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = and i32 %1187, 131072
  %1189 = icmp eq i32 %1188, 0
  %1190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1185, %dx.types.Handle %49, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  %1192 = extractvalue %dx.types.ResRet.f32 %1190, 1
  %1193 = extractvalue %dx.types.ResRet.f32 %1190, 2
  %1194 = fmul fast float %1191, %194
  %1195 = fmul fast float %1192, %197
  %1196 = fmul fast float %1193, %200
  br i1 %1189, label %1203, label %1197

; <label>:1197                                    ; preds = %1181
  %1198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1199 = extractvalue %dx.types.CBufRet.f32 %1198, 0
  %1200 = fmul fast float %1199, %1194
  %1201 = fmul fast float %1199, %1195
  %1202 = fmul fast float %1199, %1196
  br label %1203

; <label>:1203                                    ; preds = %1197, %1181
  %1204 = phi float [ %1200, %1197 ], [ %1194, %1181 ]
  %1205 = phi float [ %1201, %1197 ], [ %1195, %1181 ]
  %1206 = phi float [ %1202, %1197 ], [ %1196, %1181 ]
  %1207 = fmul fast float %1204, %1176
  %1208 = select i1 %151, float %1207, float %1204
  %1209 = call float @dx.op.dot3.f32(i32 55, float %1208, float %1205, float %1206, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1210 = select i1 %151, float 0.000000e+00, float %1204
  %1211 = select i1 %151, float %1209, float %1205
  %1212 = select i1 %151, float 0.000000e+00, float %1206
  br label %1213

; <label>:1213                                    ; preds = %1203, %1167
  %1214 = phi float [ %1210, %1203 ], [ 0.000000e+00, %1167 ]
  %1215 = phi float [ %1211, %1203 ], [ 0.000000e+00, %1167 ]
  %1216 = phi float [ %1212, %1203 ], [ 0.000000e+00, %1167 ]
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 1024
  %1220 = icmp eq i32 %1219, 0
  br i1 %1220, label %1249, label %1221

; <label>:1221                                    ; preds = %1213
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 104, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = fmul fast float %1225, 0x3F70101020000000
  %1227 = lshr i32 %1223, 8
  %1228 = and i32 %1227, 255
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = lshr i32 %1223, 16
  %1232 = and i32 %1231, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = fmul fast float %1226, %1226
  %1236 = fmul fast float %1230, %1230
  %1237 = fmul fast float %1234, %1234
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 268, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = add i32 %1239, 0
  %1241 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1240, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1242 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1241, %dx.types.Handle %50, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1243 = extractvalue %dx.types.ResRet.f32 %1242, 0
  %1244 = extractvalue %dx.types.ResRet.f32 %1242, 1
  %1245 = extractvalue %dx.types.ResRet.f32 %1242, 2
  %1246 = fmul fast float %1235, %1243
  %1247 = fmul fast float %1236, %1244
  %1248 = fmul fast float %1237, %1245
  br label %1249

; <label>:1249                                    ; preds = %1221, %1213
  %1250 = phi float [ %1246, %1221 ], [ 0.000000e+00, %1213 ]
  %1251 = phi float [ %1247, %1221 ], [ 0.000000e+00, %1213 ]
  %1252 = phi float [ %1248, %1221 ], [ 0.000000e+00, %1213 ]
  %1253 = fcmp fast ogt float %1250, 0.000000e+00
  %1254 = fcmp fast ogt float %1251, 0.000000e+00
  %1255 = fcmp fast ogt float %1252, 0.000000e+00
  %1256 = call float @dx.op.unary.f32(i32 23, float %1250)  ; Log(value)
  %1257 = call float @dx.op.unary.f32(i32 23, float %1251)  ; Log(value)
  %1258 = call float @dx.op.unary.f32(i32 23, float %1252)  ; Log(value)
  %1259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1260 = extractvalue %dx.types.ResRet.i32 %1259, 0
  %1261 = lshr i32 %1260, 7
  %1262 = and i32 %1261, 32752
  %1263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1262)  ; LegacyF16ToF32(value)
  %1264 = fmul fast float %1256, 0xBFE62E4300000000
  %1265 = fmul fast float %1264, %1263
  %1266 = fmul fast float %1257, 0xBFE62E4300000000
  %1267 = fmul fast float %1266, %1263
  %1268 = fmul fast float %1258, 0xBFE62E4300000000
  %1269 = fmul fast float %1268, %1263
  %1270 = select i1 %1253, float %1265, float 1.270000e+02
  %1271 = select i1 %1254, float %1267, float 1.270000e+02
  %1272 = select i1 %1255, float %1269, float 1.270000e+02
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = and i32 %1274, 10240
  %1276 = icmp eq i32 %1275, 0
  br i1 %1276, label %1296, label %1277

; <label>:1277                                    ; preds = %1249
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 2048
  %1281 = icmp eq i32 %1280, 0
  br i1 %1281, label %1296, label %1282

; <label>:1282                                    ; preds = %1277
  %1283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 276, i32 undef)  ; BufferLoad(srv,index,wot)
  %1284 = extractvalue %dx.types.ResRet.i32 %1283, 0
  %1285 = add i32 %1284, 0
  %1286 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1285, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1287 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1286, %dx.types.Handle %50, float %807, float %808, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1288 = extractvalue %dx.types.ResRet.f32 %1287, 3
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = shl i32 %1290, 4
  %1292 = and i32 %1291, 32752
  %1293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1292)  ; LegacyF16ToF32(value)
  %1294 = fmul fast float %1293, %1288
  %1295 = call float @dx.op.binary.f32(i32 35, float %1294, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1296

; <label>:1296                                    ; preds = %1282, %1277, %1249
  %1297 = phi float [ %1295, %1282 ], [ 0x3F70101020000000, %1277 ], [ 0x3F70101020000000, %1249 ]
  %1298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %1299 = extractvalue %dx.types.ResRet.i32 %1298, 0
  %1300 = and i32 %1299, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = lshr i32 %1299, 8
  %1303 = and i32 %1302, 255
  %1304 = uitofp i32 %1303 to float
  %1305 = call float @dx.op.dot3.f32(i32 55, float %1091, float %1092, float %1093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1306 = fmul fast float %1304, %1305
  %1307 = fadd fast float %1306, %1301
  %1308 = fmul fast float %1307, 0x3F70101020000000
  %1309 = call float @dx.op.unary.f32(i32 7, float %1308)  ; Saturate(value)
  br i1 %714, label %1310, label %1345

; <label>:1310                                    ; preds = %1296
  %1311 = fmul fast float %1297, 2.000000e+00
  %1312 = fcmp fast olt float %1270, 1.270000e+02
  %1313 = fcmp fast olt float %1271, 1.270000e+02
  %1314 = fcmp fast olt float %1272, 1.270000e+02
  %1315 = fmul fast float %1270, 0xBFF7154760000000
  %1316 = fmul fast float %1315, %1311
  %1317 = fmul fast float %1271, 0xBFF7154760000000
  %1318 = fmul fast float %1317, %1311
  %1319 = fmul fast float %1272, 0xBFF7154760000000
  %1320 = fmul fast float %1319, %1311
  %1321 = call float @dx.op.unary.f32(i32 21, float %1316)  ; Exp(value)
  %1322 = call float @dx.op.unary.f32(i32 21, float %1318)  ; Exp(value)
  %1323 = call float @dx.op.unary.f32(i32 21, float %1320)  ; Exp(value)
  %1324 = call float @dx.op.unary.f32(i32 7, float %1321)  ; Saturate(value)
  %1325 = call float @dx.op.unary.f32(i32 7, float %1322)  ; Saturate(value)
  %1326 = call float @dx.op.unary.f32(i32 7, float %1323)  ; Saturate(value)
  %1327 = fadd fast float %1324, -1.000000e+00
  %1328 = select i1 %1312, float %1327, float -1.000000e+00
  %1329 = fadd fast float %1325, -1.000000e+00
  %1330 = select i1 %1313, float %1329, float -1.000000e+00
  %1331 = fadd fast float %1326, -1.000000e+00
  %1332 = select i1 %1314, float %1331, float -1.000000e+00
  %1333 = fmul fast float %1328, %877
  %1334 = fmul fast float %1330, %877
  %1335 = fmul fast float %1332, %877
  %1336 = fadd fast float %1333, 1.000000e+00
  %1337 = fadd fast float %1334, 1.000000e+00
  %1338 = fadd fast float %1335, 1.000000e+00
  %1339 = fmul fast float %1336, %702
  %1340 = fmul fast float %1337, %703
  %1341 = fmul fast float %1338, %704
  %1342 = fmul fast float %1336, %705
  %1343 = fmul fast float %1337, %706
  %1344 = fmul fast float %1338, %707
  br label %1345

; <label>:1345                                    ; preds = %1310, %1296
  %1346 = phi float [ %1339, %1310 ], [ %702, %1296 ]
  %1347 = phi float [ %1340, %1310 ], [ %703, %1296 ]
  %1348 = phi float [ %1341, %1310 ], [ %704, %1296 ]
  %1349 = phi float [ %1342, %1310 ], [ %705, %1296 ]
  %1350 = phi float [ %1343, %1310 ], [ %706, %1296 ]
  %1351 = phi float [ %1344, %1310 ], [ %707, %1296 ]
  %1352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1353 = extractvalue %dx.types.ResRet.i32 %1352, 0
  %1354 = and i32 %1353, 3
  %1355 = icmp eq i32 %1354, 3
  br i1 %1355, label %1434, label %1356

; <label>:1356                                    ; preds = %1345
  %1357 = and i32 %1353, 16
  %1358 = icmp ne i32 %1357, 0
  %1359 = select i1 %1358, float %877, float 0.000000e+00
  %1360 = icmp eq i32 %1354, 0
  br i1 %1360, label %1361, label %1389

; <label>:1361                                    ; preds = %1356
  %1362 = and i32 %1353, 64
  %1363 = icmp ne i32 %1362, 0
  %1364 = select i1 %1363, float %877, float 0.000000e+00
  %1365 = fsub fast float %1091, %1346
  %1366 = fsub fast float %1092, %1347
  %1367 = fsub fast float %1093, %1348
  %1368 = fmul fast float %1359, %1365
  %1369 = fmul fast float %1359, %1366
  %1370 = fmul fast float %1359, %1367
  %1371 = fadd fast float %1368, %1346
  %1372 = fadd fast float %1369, %1347
  %1373 = fadd fast float %1370, %1348
  %1374 = fsub fast float %1078, %708
  %1375 = fmul fast float %1359, %1374
  %1376 = fadd fast float %1375, %708
  %1377 = fsub fast float %1214, %1349
  %1378 = fsub fast float %1215, %1350
  %1379 = fsub fast float %1216, %1351
  %1380 = fmul fast float %1364, %1377
  %1381 = fmul fast float %1364, %1378
  %1382 = fmul fast float %1364, %1379
  %1383 = fadd fast float %1380, %1349
  %1384 = fadd fast float %1381, %1350
  %1385 = fadd fast float %1382, %1351
  %1386 = fsub fast float %1309, %712
  %1387 = fmul fast float %1359, %1386
  %1388 = fadd fast float %1387, %712
  br label %1434

; <label>:1389                                    ; preds = %1356
  %1390 = icmp eq i32 %1354, 1
  br i1 %1390, label %1391, label %1404

; <label>:1391                                    ; preds = %1389
  %1392 = fadd fast float %1091, -1.000000e+00
  %1393 = fadd fast float %1092, -1.000000e+00
  %1394 = fadd fast float %1093, -1.000000e+00
  %1395 = fmul fast float %1359, %1392
  %1396 = fmul fast float %1359, %1393
  %1397 = fmul fast float %1359, %1394
  %1398 = fadd fast float %1395, 1.000000e+00
  %1399 = fadd fast float %1396, 1.000000e+00
  %1400 = fadd fast float %1397, 1.000000e+00
  %1401 = fmul fast float %1398, %1346
  %1402 = fmul fast float %1399, %1347
  %1403 = fmul fast float %1400, %1348
  br label %1434

; <label>:1404                                    ; preds = %1389
  %1405 = icmp eq i32 %1354, 2
  br i1 %1405, label %1406, label %1434

; <label>:1406                                    ; preds = %1404
  %1407 = call float @dx.op.unary.f32(i32 24, float %1091)  ; Sqrt(value)
  %1408 = call float @dx.op.unary.f32(i32 24, float %1092)  ; Sqrt(value)
  %1409 = call float @dx.op.unary.f32(i32 24, float %1093)  ; Sqrt(value)
  %1410 = fadd fast float %1407, -5.000000e-01
  %1411 = fadd fast float %1408, -5.000000e-01
  %1412 = fadd fast float %1409, -5.000000e-01
  %1413 = fmul fast float %1410, %1359
  %1414 = fmul fast float %1411, %1359
  %1415 = fmul fast float %1412, %1359
  %1416 = fadd fast float %1413, 5.000000e-01
  %1417 = fadd fast float %1414, 5.000000e-01
  %1418 = fadd fast float %1415, 5.000000e-01
  %1419 = fmul fast float %1416, 2.000000e+00
  %1420 = fsub fast float 1.000000e+00, %1419
  %1421 = fmul fast float %1420, %1346
  %1422 = fadd fast float %1421, %1419
  %1423 = fmul fast float %1422, %1346
  %1424 = fmul fast float %1417, 2.000000e+00
  %1425 = fsub fast float 1.000000e+00, %1424
  %1426 = fmul fast float %1425, %1347
  %1427 = fadd fast float %1426, %1424
  %1428 = fmul fast float %1427, %1347
  %1429 = fmul fast float %1418, 2.000000e+00
  %1430 = fsub fast float 1.000000e+00, %1429
  %1431 = fmul fast float %1430, %1348
  %1432 = fadd fast float %1431, %1429
  %1433 = fmul fast float %1432, %1348
  br label %1434

; <label>:1434                                    ; preds = %1406, %1404, %1391, %1361, %1345
  %1435 = phi float [ %1346, %1345 ], [ %1423, %1406 ], [ %1346, %1404 ], [ %1401, %1391 ], [ %1371, %1361 ]
  %1436 = phi float [ %1347, %1345 ], [ %1428, %1406 ], [ %1347, %1404 ], [ %1402, %1391 ], [ %1372, %1361 ]
  %1437 = phi float [ %1348, %1345 ], [ %1433, %1406 ], [ %1348, %1404 ], [ %1403, %1391 ], [ %1373, %1361 ]
  %1438 = phi float [ %1349, %1345 ], [ %1349, %1406 ], [ %1349, %1404 ], [ %1349, %1391 ], [ %1383, %1361 ]
  %1439 = phi float [ %1350, %1345 ], [ %1350, %1406 ], [ %1350, %1404 ], [ %1350, %1391 ], [ %1384, %1361 ]
  %1440 = phi float [ %1351, %1345 ], [ %1351, %1406 ], [ %1351, %1404 ], [ %1351, %1391 ], [ %1385, %1361 ]
  %1441 = phi float [ %708, %1345 ], [ %708, %1406 ], [ %708, %1404 ], [ %708, %1391 ], [ %1376, %1361 ]
  %1442 = phi float [ %712, %1345 ], [ %712, %1406 ], [ %712, %1404 ], [ %712, %1391 ], [ %1388, %1361 ]
  %1443 = and i32 %1353, 12
  %1444 = icmp eq i32 %1443, 12
  br i1 %1444, label %1517, label %1445

; <label>:1445                                    ; preds = %1434
  %1446 = and i32 %1353, 2097184
  %1447 = icmp eq i32 %1446, 2097184
  %1448 = select i1 %1447, float %877, float 0.000000e+00
  %1449 = and i32 %1353, 4194336
  %1450 = icmp eq i32 %1449, 4194336
  %1451 = select i1 %1450, float %877, float 0.000000e+00
  %1452 = and i32 %1353, 8388640
  %1453 = icmp eq i32 %1452, 8388640
  %1454 = select i1 %1453, float %877, float 0.000000e+00
  %1455 = icmp eq i32 %1443, 0
  br i1 %1455, label %1456, label %1469

; <label>:1456                                    ; preds = %1445
  %1457 = fsub fast float %1169, %700
  %1458 = fsub fast float %1170, %701
  %1459 = fmul fast float %1448, %1457
  %1460 = fmul fast float %1448, %1458
  %1461 = fadd fast float %1459, %700
  %1462 = fadd fast float %1460, %701
  %1463 = fsub fast float %1171, %711
  %1464 = fmul fast float %1451, %1463
  %1465 = fadd fast float %1464, %711
  %1466 = fsub fast float %1168, %710
  %1467 = fmul fast float %1454, %1466
  %1468 = fadd fast float %1467, %710
  br label %1517

; <label>:1469                                    ; preds = %1445
  %1470 = icmp eq i32 %1443, 4
  br i1 %1470, label %1471, label %1503

; <label>:1471                                    ; preds = %1469
  %1472 = fmul fast float %1448, %1169
  %1473 = fmul fast float %1448, %1170
  %1474 = fadd fast float %1472, %700
  %1475 = fadd fast float %1473, %701
  %1476 = call float @dx.op.binary.f32(i32 36, float %711, float %1171)  ; FMin(a,b)
  %1477 = fsub fast float %1476, %711
  %1478 = fmul fast float %1477, %1451
  %1479 = fadd fast float %1478, %711
  %1480 = fadd fast float %1168, %710
  %1481 = fmul fast float %1480, 0x3FF337FAE0000000
  %1482 = fmul fast float %710, %710
  %1483 = fmul fast float %1168, %1168
  %1484 = fadd fast float %1483, %1482
  %1485 = fmul fast float %1484, 0x3FE5152B00000000
  %1486 = fmul fast float %710, 0xBFCC1F85E0000000
  %1487 = fmul fast float %1486, %1168
  %1488 = fadd fast float %1487, 0xBFE1363700000000
  %1489 = fadd fast float %1488, %1481
  %1490 = fsub fast float %1489, %1485
  %1491 = fmul fast float %1480, 0x3FBA6F0D00000000
  %1492 = fmul fast float %1484, 0x3FD0432880000000
  %1493 = fmul fast float %710, 0xBFEF110800000000
  %1494 = fmul fast float %1493, %1168
  %1495 = fadd fast float %1494, 1.000000e+00
  %1496 = fsub fast float %1495, %1491
  %1497 = fadd fast float %1496, %1492
  %1498 = fdiv fast float %1490, %1497
  %1499 = call float @dx.op.unary.f32(i32 7, float %1498)  ; Saturate(value)
  %1500 = fsub fast float %1499, %710
  %1501 = fmul fast float %1500, %1454
  %1502 = fadd fast float %1501, %710
  br label %1517

; <label>:1503                                    ; preds = %1469
  %1504 = icmp eq i32 %1443, 8
  br i1 %1504, label %1505, label %1517

; <label>:1505                                    ; preds = %1503
  %1506 = fmul fast float %1448, %1169
  %1507 = fmul fast float %1448, %1170
  %1508 = fadd fast float %1506, %700
  %1509 = fadd fast float %1507, %701
  %1510 = call float @dx.op.binary.f32(i32 36, float %711, float %1171)  ; FMin(a,b)
  %1511 = fsub fast float %1510, %711
  %1512 = fmul fast float %1511, %1451
  %1513 = fadd fast float %1512, %711
  %1514 = fsub fast float %1168, %710
  %1515 = fmul fast float %1454, %1514
  %1516 = fadd fast float %1515, %710
  br label %1517

; <label>:1517                                    ; preds = %1505, %1503, %1471, %1456, %1434, %876, %713, %699
  %1518 = phi float [ %700, %1434 ], [ %700, %876 ], [ %700, %699 ], [ %700, %713 ], [ %1461, %1456 ], [ %1474, %1471 ], [ %700, %1503 ], [ %1508, %1505 ]
  %1519 = phi float [ %701, %1434 ], [ %701, %876 ], [ %701, %699 ], [ %701, %713 ], [ %1462, %1456 ], [ %1475, %1471 ], [ %701, %1503 ], [ %1509, %1505 ]
  %1520 = phi float [ %1435, %1434 ], [ %702, %876 ], [ %702, %699 ], [ %702, %713 ], [ %1435, %1456 ], [ %1435, %1471 ], [ %1435, %1503 ], [ %1435, %1505 ]
  %1521 = phi float [ %1436, %1434 ], [ %703, %876 ], [ %703, %699 ], [ %703, %713 ], [ %1436, %1456 ], [ %1436, %1471 ], [ %1436, %1503 ], [ %1436, %1505 ]
  %1522 = phi float [ %1437, %1434 ], [ %704, %876 ], [ %704, %699 ], [ %704, %713 ], [ %1437, %1456 ], [ %1437, %1471 ], [ %1437, %1503 ], [ %1437, %1505 ]
  %1523 = phi float [ %1438, %1434 ], [ %705, %876 ], [ %705, %699 ], [ %705, %713 ], [ %1438, %1456 ], [ %1438, %1471 ], [ %1438, %1503 ], [ %1438, %1505 ]
  %1524 = phi float [ %1439, %1434 ], [ %706, %876 ], [ %706, %699 ], [ %706, %713 ], [ %1439, %1456 ], [ %1439, %1471 ], [ %1439, %1503 ], [ %1439, %1505 ]
  %1525 = phi float [ %1440, %1434 ], [ %707, %876 ], [ %707, %699 ], [ %707, %713 ], [ %1440, %1456 ], [ %1440, %1471 ], [ %1440, %1503 ], [ %1440, %1505 ]
  %1526 = phi float [ %1441, %1434 ], [ %708, %876 ], [ %708, %699 ], [ %708, %713 ], [ %1441, %1456 ], [ %1441, %1471 ], [ %1441, %1503 ], [ %1441, %1505 ]
  %1527 = phi float [ %710, %1434 ], [ %710, %876 ], [ %710, %699 ], [ %710, %713 ], [ %1468, %1456 ], [ %1502, %1471 ], [ %710, %1503 ], [ %1516, %1505 ]
  %1528 = phi float [ %711, %1434 ], [ %711, %876 ], [ %711, %699 ], [ %711, %713 ], [ %1465, %1456 ], [ %1479, %1471 ], [ %711, %1503 ], [ %1513, %1505 ]
  %1529 = phi float [ %1442, %1434 ], [ %712, %876 ], [ %712, %699 ], [ %712, %713 ], [ %1442, %1456 ], [ %1442, %1471 ], [ %1442, %1503 ], [ %1442, %1505 ]
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = bitcast i32 %1531 to float
  %1533 = fcmp fast oge float %1532, 0.000000e+00
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = select i1 %1533, float %1532, float %1535
  %1537 = call float @dx.op.dot2.f32(i32 54, float %1518, float %1519, float %1518, float %1519)  ; Dot2(ax,ay,bx,by)
  %1538 = fmul fast float %1537, 0x3FE3333340000000
  %1539 = fsub fast float 1.000000e+00, %1538
  %1540 = call float @dx.op.dot3.f32(i32 55, float %1518, float %1519, float %1539, float %1518, float %1519, float %1539)  ; Dot3(ax,ay,az,bx,by,bz)
  %1541 = call float @dx.op.unary.f32(i32 25, float %1540)  ; Rsqrt(value)
  %1542 = fmul fast float %1541, %1518
  %1543 = fmul fast float %1541, %1519
  %1544 = fmul fast float %1539, %1541
  %1545 = fmul fast float %1544, %56
  %1546 = fmul fast float %1544, %57
  %1547 = fmul fast float %1544, %58
  %1548 = fmul fast float %1542, %37
  %1549 = fmul fast float %1542, %38
  %1550 = fmul fast float %1542, %39
  %1551 = fmul fast float %61, %40
  %1552 = fmul fast float %1551, %1543
  %1553 = fmul fast float %64, %40
  %1554 = fmul fast float %1553, %1543
  %1555 = fmul fast float %67, %40
  %1556 = fmul fast float %1555, %1543
  %1557 = fadd fast float %1552, %1548
  %1558 = fmul fast float %1557, %55
  %1559 = fadd fast float %1558, %1545
  %1560 = fadd fast float %1554, %1549
  %1561 = fmul fast float %1560, %55
  %1562 = fadd fast float %1561, %1546
  %1563 = fadd fast float %1556, %1550
  %1564 = fmul fast float %1563, %55
  %1565 = fadd fast float %1564, %1547
  %1566 = call float @dx.op.dot3.f32(i32 55, float %1559, float %1562, float %1565, float %1559, float %1562, float %1565)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = call float @dx.op.unary.f32(i32 25, float %1566)  ; Rsqrt(value)
  %1568 = fmul fast float %1559, %1567
  %1569 = fmul fast float %1562, %1567
  %1570 = fmul fast float %1565, %1567
  %1571 = call float @dx.op.unary.f32(i32 83, float %109)  ; DerivCoarseX(value)
  %1572 = call float @dx.op.unary.f32(i32 83, float %110)  ; DerivCoarseX(value)
  %1573 = call float @dx.op.unary.f32(i32 83, float %111)  ; DerivCoarseX(value)
  %1574 = call float @dx.op.unary.f32(i32 84, float %109)  ; DerivCoarseY(value)
  %1575 = call float @dx.op.unary.f32(i32 84, float %110)  ; DerivCoarseY(value)
  %1576 = call float @dx.op.unary.f32(i32 84, float %111)  ; DerivCoarseY(value)
  %1577 = fadd fast float %1571, %109
  %1578 = fadd fast float %1572, %110
  %1579 = fadd fast float %1573, %111
  %1580 = fadd fast float %1574, %109
  %1581 = fadd fast float %1575, %110
  %1582 = fadd fast float %1576, %111
  %1583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1584 = extractvalue %dx.types.CBufRet.f32 %1583, 0
  %1585 = extractvalue %dx.types.CBufRet.f32 %1583, 1
  %1586 = extractvalue %dx.types.CBufRet.f32 %1583, 2
  %1587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1588 = extractvalue %dx.types.CBufRet.f32 %1587, 2
  %1589 = extractvalue %dx.types.CBufRet.f32 %1587, 3
  %1590 = fmul fast float %1584, %53
  %1591 = fmul fast float %1590, %1588
  %1592 = fmul fast float %1585, %54
  %1593 = fmul fast float %1592, %1589
  %1594 = fptoui float %1591 to i32
  %1595 = fptoui float %1593 to i32
  %1596 = fadd fast float %1584, -1.000000e+00
  %1597 = fadd fast float %1585, -1.000000e+00
  %1598 = fptoui float %1596 to i32
  %1599 = fptoui float %1597 to i32
  %1600 = call i32 @dx.op.binary.i32(i32 40, i32 %1594, i32 %1598)  ; UMin(a,b)
  %1601 = call i32 @dx.op.binary.i32(i32 40, i32 %1595, i32 %1599)  ; UMin(a,b)
  %1602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1603 = extractvalue %dx.types.CBufRet.f32 %1602, 2
  %1604 = extractvalue %dx.types.CBufRet.f32 %1602, 3
  %1605 = fmul fast float %1603, %48
  %1606 = fsub fast float %1605, %1604
  %1607 = fadd fast float %1586, -1.000000e+00
  %1608 = call float @dx.op.binary.f32(i32 36, float %1606, float %1607)  ; FMin(a,b)
  %1609 = fptoui float %1608 to i32
  %1610 = fptoui float %1584 to i32
  %1611 = fptoui float %1585 to i32
  %1612 = mul i32 %1609, %1611
  %1613 = add i32 %1612, %1601
  %1614 = mul i32 %1613, %1610
  %1615 = add i32 %1614, %1600
  %1616 = shl i32 %1615, 2
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1616, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 1023
  %1620 = lshr i32 %1618, 10
  %1621 = icmp eq i32 %1619, 0
  br i1 %1621, label %2047, label %1622

; <label>:1622                                    ; preds = %1517
  %1623 = and i32 %1618, 1023
  br label %1624

; <label>:1624                                    ; preds = %1750, %1622
  %1625 = phi float [ %1751, %1750 ], [ 0.000000e+00, %1622 ]
  %1626 = phi float [ %1752, %1750 ], [ %1536, %1622 ]
  %1627 = phi float [ %1753, %1750 ], [ %1529, %1622 ]
  %1628 = phi float [ %1754, %1750 ], [ 0.000000e+00, %1622 ]
  %1629 = phi float [ %1755, %1750 ], [ 0.000000e+00, %1622 ]
  %1630 = phi float [ %1756, %1750 ], [ %1523, %1622 ]
  %1631 = phi float [ %1757, %1750 ], [ %1524, %1622 ]
  %1632 = phi float [ %1758, %1750 ], [ %1525, %1622 ]
  %1633 = phi float [ %1759, %1750 ], [ %1568, %1622 ]
  %1634 = phi float [ %1760, %1750 ], [ %1569, %1622 ]
  %1635 = phi float [ %1761, %1750 ], [ %1570, %1622 ]
  %1636 = phi float [ %1762, %1750 ], [ %1528, %1622 ]
  %1637 = phi float [ %1763, %1750 ], [ %1527, %1622 ]
  %1638 = phi float [ %1764, %1750 ], [ 0.000000e+00, %1622 ]
  %1639 = phi float [ %1765, %1750 ], [ %1526, %1622 ]
  %1640 = phi float [ %1766, %1750 ], [ %1520, %1622 ]
  %1641 = phi float [ %1767, %1750 ], [ %1521, %1622 ]
  %1642 = phi float [ %1768, %1750 ], [ %1522, %1622 ]
  %1643 = phi i32 [ %1700, %1750 ], [ 0, %1622 ]
  %1644 = add nuw nsw i32 %1643, %1620
  %1645 = shl i32 %1644, 2
  %1646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1645, i32 undef)  ; BufferLoad(srv,index,wot)
  %1647 = extractvalue %dx.types.ResRet.i32 %1646, 0
  %1648 = shl i32 %1647, 8
  %1649 = or i32 %1648, 48
  %1650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1649, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.f32 %1650, 0
  %1652 = extractvalue %dx.types.ResRet.f32 %1650, 1
  %1653 = extractvalue %dx.types.ResRet.f32 %1650, 2
  %1654 = extractvalue %dx.types.ResRet.f32 %1650, 3
  %1655 = or i32 %1648, 64
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1655, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = extractvalue %dx.types.ResRet.i32 %1656, 1
  %1659 = or i32 %1648, 80
  %1660 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1659, i32 undef)  ; BufferLoad(srv,index,wot)
  %1661 = extractvalue %dx.types.ResRet.f32 %1660, 2
  %1662 = extractvalue %dx.types.ResRet.f32 %1660, 3
  %1663 = or i32 %1648, 96
  %1664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1663, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.f32 %1664, 0
  %1666 = extractvalue %dx.types.ResRet.f32 %1664, 1
  %1667 = extractvalue %dx.types.ResRet.f32 %1664, 2
  %1668 = extractvalue %dx.types.ResRet.f32 %1664, 3
  %1669 = or i32 %1648, 112
  %1670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1669, i32 undef)  ; BufferLoad(srv,index,wot)
  %1671 = extractvalue %dx.types.ResRet.f32 %1670, 2
  %1672 = or i32 %1648, 128
  %1673 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1672, i32 undef)  ; BufferLoad(srv,index,wot)
  %1674 = extractvalue %dx.types.ResRet.f32 %1673, 0
  %1675 = extractvalue %dx.types.ResRet.f32 %1673, 1
  %1676 = extractvalue %dx.types.ResRet.f32 %1673, 2
  %1677 = extractvalue %dx.types.ResRet.f32 %1673, 3
  %1678 = or i32 %1648, 144
  %1679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1678, i32 undef)  ; BufferLoad(srv,index,wot)
  %1680 = extractvalue %dx.types.ResRet.f32 %1679, 0
  %1681 = extractvalue %dx.types.ResRet.f32 %1679, 1
  %1682 = extractvalue %dx.types.ResRet.f32 %1679, 2
  %1683 = extractvalue %dx.types.ResRet.f32 %1679, 3
  %1684 = or i32 %1648, 160
  %1685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1684, i32 undef)  ; BufferLoad(srv,index,wot)
  %1686 = extractvalue %dx.types.ResRet.f32 %1685, 0
  %1687 = extractvalue %dx.types.ResRet.f32 %1685, 1
  %1688 = extractvalue %dx.types.ResRet.f32 %1685, 2
  %1689 = extractvalue %dx.types.ResRet.f32 %1685, 3
  %1690 = or i32 %1648, 192
  %1691 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1690, i32 undef)  ; BufferLoad(srv,index,wot)
  %1692 = extractvalue %dx.types.ResRet.i32 %1691, 0
  %1693 = or i32 %1648, 208
  %1694 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1693, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.f32 %1694, 0
  %1696 = or i32 %1648, 248
  %1697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1696, i32 undef)  ; BufferLoad(srv,index,wot)
  %1698 = extractvalue %dx.types.ResRet.f32 %1697, 0
  %1699 = extractvalue %dx.types.ResRet.f32 %1697, 1
  %1700 = add nuw nsw i32 %1643, 1
  %1701 = bitcast float %1654 to i32
  %1702 = and i32 %1701, 512
  %1703 = icmp eq i32 %1702, 0
  %1704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1648, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.f32 %1704, 0
  %1706 = extractvalue %dx.types.ResRet.f32 %1704, 1
  %1707 = extractvalue %dx.types.ResRet.f32 %1704, 2
  %1708 = extractvalue %dx.types.ResRet.f32 %1704, 3
  %1709 = call float @dx.op.dot4.f32(i32 56, float %1705, float %1706, float %1707, float %1708, float %109, float %110, float %111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1710 = or i32 %1648, 16
  %1711 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1710, i32 undef)  ; BufferLoad(srv,index,wot)
  %1712 = extractvalue %dx.types.ResRet.f32 %1711, 0
  %1713 = extractvalue %dx.types.ResRet.f32 %1711, 1
  %1714 = extractvalue %dx.types.ResRet.f32 %1711, 2
  %1715 = extractvalue %dx.types.ResRet.f32 %1711, 3
  %1716 = call float @dx.op.dot4.f32(i32 56, float %1712, float %1713, float %1714, float %1715, float %109, float %110, float %111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1717 = or i32 %1648, 32
  %1718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1717, i32 undef)  ; BufferLoad(srv,index,wot)
  %1719 = extractvalue %dx.types.ResRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.ResRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.ResRet.f32 %1718, 2
  %1722 = extractvalue %dx.types.ResRet.f32 %1718, 3
  %1723 = call float @dx.op.dot4.f32(i32 56, float %1719, float %1720, float %1721, float %1722, float %109, float %110, float %111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1724 = call float @dx.op.unary.f32(i32 27, float %1709)  ; Round_ni(value)
  %1725 = call float @dx.op.unary.f32(i32 6, float %1724)  ; FAbs(value)
  %1726 = call float @dx.op.unary.f32(i32 27, float %1716)  ; Round_ni(value)
  %1727 = call float @dx.op.unary.f32(i32 6, float %1726)  ; FAbs(value)
  %1728 = call float @dx.op.unary.f32(i32 6, float %1723)  ; FAbs(value)
  %1729 = call float @dx.op.unary.f32(i32 27, float %1728)  ; Round_ni(value)
  %1730 = fadd fast float %1727, %1725
  %1731 = fadd fast float %1730, %1729
  %1732 = fcmp fast oeq float %1731, 0.000000e+00
  %1733 = call float @dx.op.dot4.f32(i32 56, float %1705, float %1706, float %1707, float %1708, float %1577, float %1578, float %1579, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1734 = call float @dx.op.dot4.f32(i32 56, float %1712, float %1713, float %1714, float %1715, float %1577, float %1578, float %1579, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1735 = call float @dx.op.dot4.f32(i32 56, float %1705, float %1706, float %1707, float %1708, float %1580, float %1581, float %1582, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1736 = call float @dx.op.dot4.f32(i32 56, float %1712, float %1713, float %1714, float %1715, float %1580, float %1581, float %1582, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1737 = fsub fast float %1733, %1709
  %1738 = fsub fast float %1735, %1709
  %1739 = fsub fast float %1734, %1716
  %1740 = fsub fast float %1736, %1716
  %1741 = call float @dx.op.dot3.f32(i32 55, float %1651, float %1652, float %1653, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %1742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1743 = extractvalue %dx.types.CBufRet.f32 %1742, 2
  %1744 = fadd fast float %1743, %1741
  %1745 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1742, 0
  %1747 = fcmp fast ogt float %1745, %1746
  %1748 = and i1 %1732, %1747
  %1749 = and i1 %1703, %1748
  br i1 %1749, label %1770, label %1750

; <label>:1750                                    ; preds = %2033, %1851, %1770, %1624
  %1751 = phi float [ %1625, %1770 ], [ %1854, %1851 ], [ %1854, %2033 ], [ %1625, %1624 ]
  %1752 = phi float [ %1626, %1770 ], [ %1626, %1851 ], [ %2008, %2033 ], [ %1626, %1624 ]
  %1753 = phi float [ %1627, %1770 ], [ %1627, %1851 ], [ %2006, %2033 ], [ %1627, %1624 ]
  %1754 = phi float [ %1628, %1770 ], [ %1628, %1851 ], [ %1978, %2033 ], [ %1628, %1624 ]
  %1755 = phi float [ %1629, %1770 ], [ %1629, %1851 ], [ %1976, %2033 ], [ %1629, %1624 ]
  %1756 = phi float [ %1630, %1770 ], [ %1630, %1851 ], [ %2043, %2033 ], [ %1630, %1624 ]
  %1757 = phi float [ %1631, %1770 ], [ %1631, %1851 ], [ %2044, %2033 ], [ %1631, %1624 ]
  %1758 = phi float [ %1632, %1770 ], [ %1632, %1851 ], [ %2045, %2033 ], [ %1632, %1624 ]
  %1759 = phi float [ %1633, %1770 ], [ %1633, %1851 ], [ %1957, %2033 ], [ %1633, %1624 ]
  %1760 = phi float [ %1634, %1770 ], [ %1634, %1851 ], [ %1958, %2033 ], [ %1634, %1624 ]
  %1761 = phi float [ %1635, %1770 ], [ %1635, %1851 ], [ %1959, %2033 ], [ %1635, %1624 ]
  %1762 = phi float [ %1636, %1770 ], [ %1636, %1851 ], [ %1986, %2033 ], [ %1636, %1624 ]
  %1763 = phi float [ %1637, %1770 ], [ %1637, %1851 ], [ %1983, %2033 ], [ %1637, %1624 ]
  %1764 = phi float [ %1638, %1770 ], [ %1638, %1851 ], [ %1980, %2033 ], [ %1638, %1624 ]
  %1765 = phi float [ %1639, %1770 ], [ %1639, %1851 ], [ %1974, %2033 ], [ %1639, %1624 ]
  %1766 = phi float [ %1640, %1770 ], [ %1640, %1851 ], [ %1969, %2033 ], [ %1640, %1624 ]
  %1767 = phi float [ %1641, %1770 ], [ %1641, %1851 ], [ %1970, %2033 ], [ %1641, %1624 ]
  %1768 = phi float [ %1642, %1770 ], [ %1642, %1851 ], [ %1971, %2033 ], [ %1642, %1624 ]
  %1769 = icmp eq i32 %1700, %1623
  br i1 %1769, label %2046, label %1624

; <label>:1770                                    ; preds = %1624
  %1771 = extractvalue %dx.types.ResRet.f32 %1670, 3
  %1772 = extractvalue %dx.types.ResRet.f32 %1670, 1
  %1773 = extractvalue %dx.types.ResRet.f32 %1670, 0
  %1774 = extractvalue %dx.types.ResRet.f32 %1660, 1
  %1775 = extractvalue %dx.types.ResRet.f32 %1660, 0
  %1776 = extractvalue %dx.types.ResRet.i32 %1656, 3
  %1777 = extractvalue %dx.types.ResRet.i32 %1656, 2
  %1778 = add i32 %1776, 0
  %1779 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1778, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1781 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1779, %dx.types.Handle %1780, float %1709, float %1716, float undef, float undef, i32 0, i32 0, i32 undef, float %1737, float %1739, float undef, float %1738, float %1740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1782 = extractvalue %dx.types.ResRet.f32 %1781, 0
  %1783 = fmul fast float %1782, %1775
  %1784 = fadd fast float %1783, %1774
  %1785 = call float @dx.op.unary.f32(i32 7, float %1784)  ; Saturate(value)
  %1786 = fmul fast float %1709, %1665
  %1787 = call float @dx.op.tertiary.f32(i32 46, float %1666, float %1716, float %1786)  ; FMad(a,b,c)
  %1788 = fadd fast float %1787, %1773
  %1789 = fmul fast float %1709, %1667
  %1790 = call float @dx.op.tertiary.f32(i32 46, float %1668, float %1716, float %1789)  ; FMad(a,b,c)
  %1791 = fadd fast float %1790, %1772
  %1792 = fmul fast float %1737, %1665
  %1793 = call float @dx.op.tertiary.f32(i32 46, float %1666, float %1739, float %1792)  ; FMad(a,b,c)
  %1794 = fmul fast float %1737, %1667
  %1795 = call float @dx.op.tertiary.f32(i32 46, float %1668, float %1739, float %1794)  ; FMad(a,b,c)
  %1796 = fmul fast float %1738, %1665
  %1797 = call float @dx.op.tertiary.f32(i32 46, float %1666, float %1740, float %1796)  ; FMad(a,b,c)
  %1798 = fmul fast float %1738, %1667
  %1799 = call float @dx.op.tertiary.f32(i32 46, float %1668, float %1740, float %1798)  ; FMad(a,b,c)
  %1800 = add i32 %1777, 0
  %1801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1800, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1802 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1801, %dx.types.Handle %1780, float %1788, float %1791, float undef, float undef, i32 0, i32 0, i32 undef, float %1793, float %1795, float undef, float %1797, float %1799, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1803 = extractvalue %dx.types.ResRet.f32 %1802, 0
  %1804 = and i32 %1701, 1024
  %1805 = icmp ne i32 %1804, 0
  %1806 = fcmp fast ogt float %1803, 0x3FE0101020000000
  %1807 = uitofp i1 %1806 to float
  %1808 = select i1 %1805, float %1807, float %1803
  %1809 = and i32 %1701, 8192
  %1810 = icmp ne i32 %1809, 0
  %1811 = select i1 %1810, float %1771, float 1.000000e+00
  %1812 = fmul fast float %1709, 2.000000e+00
  %1813 = fadd fast float %1812, -1.000000e+00
  %1814 = call float @dx.op.unary.f32(i32 6, float %1813)  ; FAbs(value)
  %1815 = fmul fast float %1814, %1698
  %1816 = fsub fast float %1815, %1698
  %1817 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1818 = fmul fast float %1716, 2.000000e+00
  %1819 = fadd fast float %1818, -1.000000e+00
  %1820 = call float @dx.op.unary.f32(i32 6, float %1819)  ; FAbs(value)
  %1821 = fmul fast float %1820, %1699
  %1822 = fsub fast float %1821, %1699
  %1823 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1824 = fmul fast float %1728, %1661
  %1825 = fsub fast float %1824, %1661
  %1826 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1827 = fmul fast float %1785, %1811
  %1828 = fmul fast float %1827, %1782
  %1829 = fmul fast float %1828, %1817
  %1830 = fmul fast float %1829, %1808
  %1831 = fmul fast float %1830, %1823
  %1832 = fmul fast float %1831, %1826
  %1833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1834 = extractvalue %dx.types.CBufRet.f32 %1833, 1
  %1835 = extractvalue %dx.types.CBufRet.f32 %1833, 0
  %1836 = fsub fast float %1745, %1835
  %1837 = fmul fast float %1836, %1834
  %1838 = call float @dx.op.unary.f32(i32 7, float %1837)  ; Saturate(value)
  %1839 = fmul fast float %1832, %1662
  %1840 = fadd fast float %1832, %1662
  %1841 = fmul fast float %1840, %1671
  %1842 = fsub fast float %1841, %1671
  %1843 = call float @dx.op.unary.f32(i32 7, float %1842)  ; Saturate(value)
  %1844 = and i32 %1701, 128
  %1845 = icmp ne i32 %1844, 0
  %1846 = select i1 %1845, float %1843, float %1839
  %1847 = fmul fast float %1846, %1838
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1850 = fcmp fast ugt float %1847, %1849
  br i1 %1850, label %1851, label %1750

; <label>:1851                                    ; preds = %1770
  %1852 = select i1 %1810, float %1847, float 0.000000e+00
  %1853 = fadd fast float %1852, %1625
  %1854 = call float @dx.op.unary.f32(i32 7, float %1853)  ; Saturate(value)
  br i1 %1810, label %1750, label %1855

; <label>:1855                                    ; preds = %1851
  %1856 = and i32 %1701, 4
  %1857 = and i32 %1701, 8
  %1858 = add i32 %1657, 0
  %1859 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1858, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1861 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1859, %dx.types.Handle %1860, float %1788, float %1791, float undef, float undef, i32 0, i32 0, i32 undef, float %1793, float %1795, float undef, float %1797, float %1799, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.ResRet.f32 %1861, 1
  %1864 = extractvalue %dx.types.ResRet.f32 %1861, 2
  %1865 = extractvalue %dx.types.ResRet.f32 %1861, 3
  %1866 = bitcast float %1683 to i32
  %1867 = and i32 %1866, 255
  %1868 = uitofp i32 %1867 to float
  %1869 = lshr i32 %1866, 8
  %1870 = and i32 %1869, 255
  %1871 = uitofp i32 %1870 to float
  %1872 = fmul fast float %1865, %1868
  %1873 = fadd fast float %1872, %1871
  %1874 = fmul fast float %1873, 0x3F70101000000000
  %1875 = add i32 %1658, 0
  %1876 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1875, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1877 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1876, %dx.types.Handle %1860, float %1788, float %1791, float undef, float undef, i32 0, i32 0, i32 undef, float %1793, float %1795, float undef, float %1797, float %1799, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.ResRet.f32 %1877, 1
  %1880 = extractvalue %dx.types.ResRet.f32 %1877, 2
  %1881 = extractvalue %dx.types.ResRet.f32 %1877, 3
  %1882 = bitcast float %1677 to i32
  %1883 = and i32 %1882, 255
  %1884 = uitofp i32 %1883 to float
  %1885 = lshr i32 %1882, 8
  %1886 = and i32 %1885, 255
  %1887 = uitofp i32 %1886 to float
  %1888 = lshr i32 %1882, 16
  %1889 = and i32 %1888, 255
  %1890 = uitofp i32 %1889 to float
  %1891 = fmul fast float %1890, 0x3F70101000000000
  %1892 = fmul fast float %1878, %1884
  %1893 = fadd fast float %1892, %1887
  %1894 = fmul fast float %1893, 0x3F70101000000000
  %1895 = fadd fast float %1879, -5.000000e-01
  %1896 = fadd fast float %1881, -5.000000e-01
  %1897 = fmul fast float %1895, %1891
  %1898 = fmul fast float %1896, %1891
  %1899 = fadd fast float %1897, 5.000000e-01
  %1900 = fadd fast float %1898, 5.000000e-01
  %1901 = fmul fast float %1862, %1686
  %1902 = fmul fast float %1863, %1687
  %1903 = fmul fast float %1864, %1688
  %1904 = fmul fast float %1899, 2.000000e+00
  %1905 = fadd fast float %1904, -1.000000e+00
  %1906 = fmul fast float %1900, 2.000000e+00
  %1907 = fadd fast float %1906, -1.000000e+00
  %1908 = fadd fast float %1905, %1907
  %1909 = fmul fast float %1908, 5.000000e-01
  %1910 = fsub fast float %1905, %1907
  %1911 = fmul fast float %1910, 5.000000e-01
  %1912 = call float @dx.op.unary.f32(i32 6, float %1909)  ; FAbs(value)
  %1913 = fsub fast float 1.000000e+00, %1912
  %1914 = call float @dx.op.unary.f32(i32 6, float %1911)  ; FAbs(value)
  %1915 = fsub fast float %1913, %1914
  %1916 = call float @dx.op.dot3.f32(i32 55, float %1909, float %1911, float %1915, float %1909, float %1911, float %1915)  ; Dot3(ax,ay,az,bx,by,bz)
  %1917 = call float @dx.op.unary.f32(i32 25, float %1916)  ; Rsqrt(value)
  %1918 = fmul fast float %1909, %1917
  %1919 = fmul fast float %1911, %1917
  %1920 = fmul fast float %1917, %1915
  %1921 = fmul fast float %1920, %1651
  %1922 = fmul fast float %1920, %1652
  %1923 = fmul fast float %1920, %1653
  %1924 = fmul fast float %1918, %1674
  %1925 = fmul fast float %1918, %1675
  %1926 = fmul fast float %1918, %1676
  %1927 = fadd fast float %1924, %1921
  %1928 = fadd fast float %1925, %1922
  %1929 = fadd fast float %1926, %1923
  %1930 = fmul fast float %1919, %1680
  %1931 = fmul fast float %1919, %1681
  %1932 = fmul fast float %1919, %1682
  %1933 = fadd fast float %1927, %1930
  %1934 = fadd fast float %1928, %1931
  %1935 = fadd fast float %1929, %1932
  %1936 = call float @dx.op.dot3.f32(i32 55, float %1933, float %1934, float %1935, float %1933, float %1934, float %1935)  ; Dot3(ax,ay,az,bx,by,bz)
  %1937 = call float @dx.op.unary.f32(i32 25, float %1936)  ; Rsqrt(value)
  %1938 = fmul fast float %1933, %1937
  %1939 = fmul fast float %1934, %1937
  %1940 = fmul fast float %1935, %1937
  %1941 = icmp ne i32 %1857, 0
  %1942 = select i1 %1941, float 1.000000e+00, float 0.000000e+00
  %1943 = fmul fast float %1847, %1942
  %1944 = and i32 %1701, 1
  %1945 = icmp eq i32 %1944, 0
  br i1 %1945, label %1946, label %1950

; <label>:1946                                    ; preds = %1855
  %1947 = fsub fast float %1938, %1633
  %1948 = fsub fast float %1939, %1634
  %1949 = fsub fast float %1940, %1635
  br label %1950

; <label>:1950                                    ; preds = %1946, %1855
  %1951 = phi float [ %1947, %1946 ], [ %1938, %1855 ]
  %1952 = phi float [ %1948, %1946 ], [ %1939, %1855 ]
  %1953 = phi float [ %1949, %1946 ], [ %1940, %1855 ]
  %1954 = fmul float %1953, %1943
  %1955 = fmul float %1952, %1943
  %1956 = fmul float %1951, %1943
  %1957 = fadd fast float %1956, %1633
  %1958 = fadd fast float %1955, %1634
  %1959 = fadd fast float %1954, %1635
  %1960 = icmp ne i32 %1856, 0
  %1961 = select i1 %1960, float 1.000000e+00, float 0.000000e+00
  %1962 = fmul fast float %1847, %1961
  %1963 = fsub fast float %1901, %1640
  %1964 = fsub fast float %1902, %1641
  %1965 = fsub fast float %1903, %1642
  %1966 = fmul fast float %1963, %1962
  %1967 = fmul fast float %1964, %1962
  %1968 = fmul fast float %1965, %1962
  %1969 = fadd fast float %1966, %1640
  %1970 = fadd fast float %1967, %1641
  %1971 = fadd fast float %1968, %1642
  %1972 = fsub fast float %1874, %1639
  %1973 = fmul fast float %1972, %1962
  %1974 = fadd fast float %1973, %1639
  %1975 = fmul fast float %1962, %1629
  %1976 = fsub fast float %1629, %1975
  %1977 = fmul fast float %1962, %1628
  %1978 = fsub fast float %1628, %1977
  %1979 = fadd fast float %1847, %1638
  %1980 = call float @dx.op.unary.f32(i32 7, float %1979)  ; Saturate(value)
  %1981 = fsub fast float %1894, %1637
  %1982 = fmul fast float %1981, %1943
  %1983 = fadd fast float %1982, %1637
  %1984 = fsub fast float %1880, %1636
  %1985 = fmul fast float %1984, %1943
  %1986 = fadd fast float %1985, %1636
  %1987 = call float @dx.op.dot3.f32(i32 55, float %1901, float %1902, float %1903, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = fmul fast float %1990, %1987
  %1992 = fadd fast float %1991, %1989
  %1993 = call float @dx.op.unary.f32(i32 7, float %1992)  ; Saturate(value)
  %1994 = bitcast float %1689 to i32
  %1995 = and i32 %1994, 65535
  %1996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1995)  ; LegacyF16ToF32(value)
  %1997 = lshr i32 %1994, 16
  %1998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1997)  ; LegacyF16ToF32(value)
  %1999 = fcmp fast oge float %1996, 0.000000e+00
  %2000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2001 = extractvalue %dx.types.CBufRet.f32 %2000, 0
  %2002 = select i1 %1999, float %1996, float %2001
  %2003 = fadd fast float %2002, %1998
  %2004 = fsub fast float %1993, %1627
  %2005 = fmul fast float %2004, %1847
  %2006 = fadd fast float %2005, %1627
  %2007 = fmul fast float %2003, %1847
  %2008 = call float @dx.op.binary.f32(i32 35, float %1626, float %2007)  ; FMax(a,b)
  %2009 = and i32 %1701, 16
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2033, label %2011

; <label>:2011                                    ; preds = %1950
  %2012 = bitcast float %1695 to i32
  %2013 = add i32 %1692, 0
  %2014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2013, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2015 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2014, %dx.types.Handle %1860, float %1788, float %1791, float undef, float undef, i32 0, i32 0, i32 undef, float %1793, float %1795, float undef, float %1797, float %1799, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.ResRet.f32 %2015, 1
  %2018 = extractvalue %dx.types.ResRet.f32 %2015, 2
  %2019 = and i32 %2012, 65535
  %2020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2019)  ; LegacyF16ToF32(value)
  %2021 = fmul fast float %2016, %1686
  %2022 = fmul fast float %2017, %1687
  %2023 = fmul fast float %2018, %1688
  %2024 = and i32 %1701, 16384
  %2025 = icmp ne i32 %2024, 0
  %2026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2027 = extractvalue %dx.types.CBufRet.f32 %2026, 0
  %2028 = select i1 %2025, float %2027, float 1.000000e+00
  %2029 = fmul fast float %2028, %2020
  %2030 = fmul fast float %2021, %2029
  %2031 = fmul fast float %2022, %2029
  %2032 = fmul fast float %2023, %2029
  br label %2033

; <label>:2033                                    ; preds = %2011, %1950
  %2034 = phi float [ %2030, %2011 ], [ 0.000000e+00, %1950 ]
  %2035 = phi float [ %2031, %2011 ], [ 0.000000e+00, %1950 ]
  %2036 = phi float [ %2032, %2011 ], [ 0.000000e+00, %1950 ]
  %2037 = fsub fast float %2034, %1630
  %2038 = fsub fast float %2035, %1631
  %2039 = fsub fast float %2036, %1632
  %2040 = fmul fast float %2037, %1847
  %2041 = fmul fast float %2038, %1847
  %2042 = fmul fast float %2039, %1847
  %2043 = fadd fast float %2040, %1630
  %2044 = fadd fast float %2041, %1631
  %2045 = fadd fast float %2042, %1632
  br label %1750

; <label>:2046                                    ; preds = %1750
  br label %2047

; <label>:2047                                    ; preds = %2046, %1517
  %2048 = phi float [ 0.000000e+00, %1517 ], [ %1751, %2046 ]
  %2049 = phi float [ %1536, %1517 ], [ %1752, %2046 ]
  %2050 = phi float [ %1529, %1517 ], [ %1753, %2046 ]
  %2051 = phi float [ 0.000000e+00, %1517 ], [ %1754, %2046 ]
  %2052 = phi float [ 0.000000e+00, %1517 ], [ %1755, %2046 ]
  %2053 = phi float [ %1523, %1517 ], [ %1756, %2046 ]
  %2054 = phi float [ %1524, %1517 ], [ %1757, %2046 ]
  %2055 = phi float [ %1525, %1517 ], [ %1758, %2046 ]
  %2056 = phi float [ %1568, %1517 ], [ %1759, %2046 ]
  %2057 = phi float [ %1569, %1517 ], [ %1760, %2046 ]
  %2058 = phi float [ %1570, %1517 ], [ %1761, %2046 ]
  %2059 = phi float [ %1528, %1517 ], [ %1762, %2046 ]
  %2060 = phi float [ %1527, %1517 ], [ %1763, %2046 ]
  %2061 = phi float [ 0.000000e+00, %1517 ], [ %1764, %2046 ]
  %2062 = phi float [ %1526, %1517 ], [ %1765, %2046 ]
  %2063 = phi float [ %1520, %1517 ], [ %1766, %2046 ]
  %2064 = phi float [ %1521, %1517 ], [ %1767, %2046 ]
  %2065 = phi float [ %1522, %1517 ], [ %1768, %2046 ]
  %2066 = call float @dx.op.dot3.f32(i32 55, float %2056, float %2057, float %2058, float %2056, float %2057, float %2058)  ; Dot3(ax,ay,az,bx,by,bz)
  %2067 = call float @dx.op.unary.f32(i32 25, float %2066)  ; Rsqrt(value)
  %2068 = fmul fast float %2067, %2056
  %2069 = fmul fast float %2067, %2057
  %2070 = fmul fast float %2067, %2058
  %2071 = fadd fast float %2061, %709
  %2072 = call float @dx.op.unary.f32(i32 7, float %2071)  ; Saturate(value)
  %2073 = call float @dx.op.dot3.f32(i32 55, float %2068, float %2069, float %2070, float %2068, float %2069, float %2070)  ; Dot3(ax,ay,az,bx,by,bz)
  %2074 = call float @dx.op.unary.f32(i32 25, float %2073)  ; Rsqrt(value)
  %2075 = fmul fast float %2074, %2068
  %2076 = fmul fast float %2074, %2069
  %2077 = fmul fast float %2074, %2070
  %2078 = fadd fast float %2062, 0xBFB99999A0000000
  %2079 = call float @dx.op.unary.f32(i32 7, float %2078)  ; Saturate(value)
  %2080 = fmul fast float %2079, 0x3FF1C71C80000000
  %2081 = call float @dx.op.binary.f32(i32 36, float %2062, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2082 = fsub fast float 1.000000e+00, %2080
  %2083 = call float @dx.op.unary.f32(i32 7, float %2082)  ; Saturate(value)
  %2084 = fmul fast float %2083, %2063
  %2085 = fmul fast float %2083, %2064
  %2086 = fmul fast float %2083, %2065
  %2087 = call float @dx.op.unary.f32(i32 7, float %2084)  ; Saturate(value)
  %2088 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  %2089 = call float @dx.op.unary.f32(i32 7, float %2086)  ; Saturate(value)
  %2090 = fmul fast float %2080, %2063
  %2091 = fmul fast float %2080, %2064
  %2092 = fmul fast float %2080, %2065
  %2093 = fadd fast float %2090, %2081
  %2094 = fadd fast float %2091, %2081
  %2095 = fadd fast float %2092, %2081
  %2096 = call float @dx.op.unary.f32(i32 7, float %2093)  ; Saturate(value)
  %2097 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2098 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  %2099 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2100 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.i32 %2100, 3
  %2102 = and i32 %2101, 8
  %2103 = icmp ne i32 %2102, 0
  %2104 = call float @dx.op.binary.f32(i32 35, float %2087, float %2063)  ; FMax(a,b)
  %2105 = call float @dx.op.binary.f32(i32 35, float %2088, float %2063)  ; FMax(a,b)
  %2106 = call float @dx.op.binary.f32(i32 35, float %2089, float %2063)  ; FMax(a,b)
  %2107 = call float @dx.op.dot3.f32(i32 55, float %2087, float %2088, float %2089, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2108 = select i1 %151, float %2063, float %2087
  %2109 = select i1 %151, float %2107, float %2088
  %2110 = select i1 %151, float 1.000000e+00, float %2089
  %2111 = select i1 %2103, float %2104, float %2108
  %2112 = select i1 %2103, float %2105, float %2109
  %2113 = select i1 %2103, float %2106, float %2110
  %2114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2115 = extractvalue %dx.types.CBufRet.f32 %2114, 0
  %2116 = extractvalue %dx.types.CBufRet.f32 %2114, 1
  %2117 = extractvalue %dx.types.CBufRet.f32 %2114, 2
  %2118 = fadd fast float %2115, %109
  %2119 = fadd fast float %2116, %110
  %2120 = fadd fast float %2117, %111
  %2121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2122 = extractvalue %dx.types.CBufRet.f32 %2121, 0
  %2123 = extractvalue %dx.types.CBufRet.f32 %2121, 1
  %2124 = fsub fast float %2118, %2122
  %2125 = fsub fast float %2119, %2123
  %2126 = fmul fast float %2124, %2124
  %2127 = fmul fast float %2125, %2125
  %2128 = fadd fast float %2126, %2127
  %2129 = call float @dx.op.unary.f32(i32 24, float %2128)  ; Sqrt(value)
  %2130 = extractvalue %dx.types.CBufRet.f32 %2121, 2
  %2131 = fcmp fast olt float %2129, %2130
  br i1 %2131, label %2132, label %2199

; <label>:2132                                    ; preds = %2047
  %2133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2134 = extractvalue %dx.types.CBufRet.f32 %2133, 0
  %2135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2136 = extractvalue %dx.types.CBufRet.f32 %2135, 0
  %2137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2138 = extractvalue %dx.types.CBufRet.f32 %2137, 0
  %2139 = extractvalue %dx.types.CBufRet.f32 %2133, 1
  %2140 = extractvalue %dx.types.CBufRet.f32 %2135, 1
  %2141 = extractvalue %dx.types.CBufRet.f32 %2137, 1
  %2142 = extractvalue %dx.types.CBufRet.f32 %2133, 3
  %2143 = extractvalue %dx.types.CBufRet.f32 %2135, 3
  %2144 = extractvalue %dx.types.CBufRet.f32 %2137, 3
  %2145 = fadd fast float %2142, %2118
  %2146 = fadd fast float %2143, %2119
  %2147 = fadd fast float %2144, %2120
  %2148 = fmul fast float %2145, %2134
  %2149 = call float @dx.op.tertiary.f32(i32 46, float %2146, float %2136, float %2148)  ; FMad(a,b,c)
  %2150 = call float @dx.op.tertiary.f32(i32 46, float %2147, float %2138, float %2149)  ; FMad(a,b,c)
  %2151 = fmul fast float %2145, %2139
  %2152 = call float @dx.op.tertiary.f32(i32 46, float %2146, float %2140, float %2151)  ; FMad(a,b,c)
  %2153 = call float @dx.op.tertiary.f32(i32 46, float %2147, float %2141, float %2152)  ; FMad(a,b,c)
  %2154 = fsub fast float %2150, %2142
  %2155 = fsub fast float %2153, %2143
  %2156 = fsub fast float %2154, %2122
  %2157 = fadd fast float %2156, %2130
  %2158 = fsub fast float %2155, %2123
  %2159 = fadd fast float %2158, %2130
  %2160 = extractvalue %dx.types.CBufRet.f32 %2121, 3
  %2161 = fmul fast float %2157, %2160
  %2162 = fmul fast float %2159, %2160
  %2163 = call float @dx.op.unary.f32(i32 7, float %2161)  ; Saturate(value)
  %2164 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2165 = fsub fast float 1.000000e+00, %2163
  %2166 = fsub fast float 1.000000e+00, %2164
  %2167 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2165, float %2166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = fcmp fast ugt float %2168, 0.000000e+00
  br i1 %2169, label %2170, label %2473

; <label>:2170                                    ; preds = %2132
  %2171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2172 = extractvalue %dx.types.CBufRet.f32 %2171, 2
  %2173 = fmul fast float %2172, %2168
  %2174 = extractvalue %dx.types.CBufRet.f32 %2171, 3
  %2175 = fadd fast float %2174, %2173
  %2176 = extractvalue %dx.types.CBufRet.f32 %2137, 2
  %2177 = fadd fast float %2175, %2144
  %2178 = fmul fast float %2150, %2138
  %2179 = call float @dx.op.tertiary.f32(i32 46, float %2153, float %2141, float %2178)  ; FMad(a,b,c)
  %2180 = call float @dx.op.tertiary.f32(i32 46, float %2177, float %2176, float %2179)  ; FMad(a,b,c)
  %2181 = fsub fast float %2180, %2144
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 2
  %2184 = fsub fast float %2181, %2183
  %2185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %2165, float %2166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2186 = extractvalue %dx.types.ResRet.f32 %2185, 0
  %2187 = extractvalue %dx.types.ResRet.f32 %2185, 1
  %2188 = extractvalue %dx.types.ResRet.f32 %2185, 2
  %2189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %2165, float %2166, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2190 = extractvalue %dx.types.ResRet.f32 %2189, 0
  %2191 = extractvalue %dx.types.ResRet.f32 %2189, 1
  %2192 = extractvalue %dx.types.ResRet.f32 %2189, 2
  %2193 = fadd fast float %2190, %2186
  %2194 = fmul fast float %2193, 0x3F847AE140000000
  %2195 = fadd fast float %2191, %2187
  %2196 = fmul fast float %2195, 0x3F847AE140000000
  %2197 = fadd fast float %2192, %2188
  %2198 = fmul fast float %2197, 0x3F847AE140000000
  br label %2473

; <label>:2199                                    ; preds = %2047
  %2200 = and i32 %127, 1
  %2201 = icmp eq i32 %2200, 0
  br i1 %2201, label %2473, label %2202

; <label>:2202                                    ; preds = %2199
  %2203 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2204 = extractvalue %dx.types.CBufRet.f32 %2203, 0
  %2205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2206 = extractvalue %dx.types.CBufRet.f32 %2205, 0
  %2207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2208 = extractvalue %dx.types.CBufRet.f32 %2207, 0
  %2209 = extractvalue %dx.types.CBufRet.f32 %2203, 1
  %2210 = extractvalue %dx.types.CBufRet.f32 %2205, 1
  %2211 = extractvalue %dx.types.CBufRet.f32 %2207, 1
  %2212 = extractvalue %dx.types.CBufRet.f32 %2203, 3
  %2213 = extractvalue %dx.types.CBufRet.f32 %2205, 3
  %2214 = extractvalue %dx.types.CBufRet.f32 %2207, 3
  %2215 = fadd fast float %2212, %2118
  %2216 = fadd fast float %2213, %2119
  %2217 = fadd fast float %2214, %2120
  %2218 = fmul fast float %2215, %2204
  %2219 = call float @dx.op.tertiary.f32(i32 46, float %2216, float %2206, float %2218)  ; FMad(a,b,c)
  %2220 = call float @dx.op.tertiary.f32(i32 46, float %2217, float %2208, float %2219)  ; FMad(a,b,c)
  %2221 = fmul fast float %2215, %2209
  %2222 = call float @dx.op.tertiary.f32(i32 46, float %2216, float %2210, float %2221)  ; FMad(a,b,c)
  %2223 = call float @dx.op.tertiary.f32(i32 46, float %2217, float %2211, float %2222)  ; FMad(a,b,c)
  %2224 = fsub fast float %2220, %2212
  %2225 = fsub fast float %2223, %2213
  %2226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2227 = extractvalue %dx.types.CBufRet.f32 %2226, 0
  %2228 = extractvalue %dx.types.CBufRet.f32 %2226, 1
  %2229 = extractvalue %dx.types.CBufRet.f32 %2226, 2
  %2230 = extractvalue %dx.types.CBufRet.f32 %2226, 3
  %2231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.f32 %2231, 3
  %2233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.i32 %2233, 0
  %2235 = extractvalue %dx.types.CBufRet.i32 %2233, 1
  %2236 = udiv i32 %2235, %2234
  %2237 = fsub fast float %2224, %2227
  %2238 = fsub fast float %2225, %2228
  %2239 = call float @dx.op.binary.f32(i32 35, float %2237, float 0.000000e+00)  ; FMax(a,b)
  %2240 = call float @dx.op.binary.f32(i32 35, float %2238, float 0.000000e+00)  ; FMax(a,b)
  %2241 = call float @dx.op.binary.f32(i32 36, float %2239, float %2229)  ; FMin(a,b)
  %2242 = call float @dx.op.binary.f32(i32 36, float %2240, float %2230)  ; FMin(a,b)
  %2243 = add i32 %2234, -1
  %2244 = add i32 %2236, -1
  %2245 = fmul fast float %2241, %2232
  %2246 = fmul fast float %2242, %2232
  %2247 = fptoui float %2245 to i32
  %2248 = fptoui float %2246 to i32
  %2249 = call i32 @dx.op.binary.i32(i32 40, i32 %2247, i32 %2243)  ; UMin(a,b)
  %2250 = call i32 @dx.op.binary.i32(i32 40, i32 %2248, i32 %2244)  ; UMin(a,b)
  %2251 = mul i32 %2250, %2234
  %2252 = add i32 %2251, %2249
  %2253 = shl i32 %2252, 2
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = icmp eq i32 %2255, -1
  br i1 %2256, label %2473, label %2257

; <label>:2257                                    ; preds = %2202
  %2258 = mul i32 %2255, 148
  %2259 = add i32 %2258, 4
  %2260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = add i32 %2258, 8
  %2263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2262, i32 undef)  ; BufferLoad(srv,index,wot)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = add i32 %2258, 36
  %2266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2265, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.f32 %2266, 0
  %2268 = add i32 %2258, 60
  %2269 = add i32 %2258, 92
  %2270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2269, i32 undef)  ; BufferLoad(srv,index,wot)
  %2271 = extractvalue %dx.types.ResRet.i32 %2270, 0
  %2272 = add i32 %2258, 116
  %2273 = fsub fast float %2224, %2261
  %2274 = fsub fast float %2225, %2264
  %2275 = fmul fast float %2232, %2273
  %2276 = fmul fast float %2232, %2274
  %2277 = call float @dx.op.unary.f32(i32 7, float %2275)  ; Saturate(value)
  %2278 = call float @dx.op.unary.f32(i32 7, float %2276)  ; Saturate(value)
  %2279 = fsub fast float 1.000000e+00, %2278
  %2280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2281 = extractvalue %dx.types.CBufRet.f32 %2280, 2
  %2282 = call float @dx.op.unary.f32(i32 83, float %2277)  ; DerivCoarseX(value)
  %2283 = call float @dx.op.unary.f32(i32 83, float %2279)  ; DerivCoarseX(value)
  %2284 = call float @dx.op.unary.f32(i32 84, float %2277)  ; DerivCoarseY(value)
  %2285 = call float @dx.op.unary.f32(i32 84, float %2279)  ; DerivCoarseY(value)
  %2286 = fmul fast float %2282, %2281
  %2287 = fmul fast float %2283, %2281
  %2288 = fmul fast float %2284, %2281
  %2289 = fmul fast float %2285, %2281
  %2290 = call float @dx.op.dot2.f32(i32 54, float %2288, float %2289, float %2288, float %2289)  ; Dot2(ax,ay,bx,by)
  %2291 = call float @dx.op.dot2.f32(i32 54, float %2286, float %2287, float %2286, float %2287)  ; Dot2(ax,ay,bx,by)
  %2292 = call float @dx.op.binary.f32(i32 35, float %2291, float %2290)  ; FMax(a,b)
  %2293 = call float @dx.op.unary.f32(i32 23, float %2292)  ; Log(value)
  %2294 = fmul fast float %2293, 5.000000e-01
  %2295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2296 = extractvalue %dx.types.CBufRet.f32 %2295, 1
  %2297 = fadd fast float %2296, %2294
  %2298 = call float @dx.op.binary.f32(i32 35, float %2297, float 0.000000e+00)  ; FMax(a,b)
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 3
  %2301 = fadd fast float %2300, %2298
  %2302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2303 = extractvalue %dx.types.CBufRet.f32 %2302, 3
  %2304 = fadd fast float %2301, %2303
  %2305 = add i32 %2271, 0
  %2306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2305, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2307 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2306, i32 0)  ; GetDimensions(handle,mipLevel)
  %2308 = extractvalue %dx.types.Dimensions %2307, 0
  %2309 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2308)  ; FirstbitLo(value)
  %2310 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2311 = extractvalue %dx.types.CBufRet.i32 %2310, 1
  %2312 = sub nsw i32 %2311, %2309
  %2313 = sitofp i32 %2312 to float
  %2314 = fsub fast float %2304, %2313
  %2315 = call float @dx.op.binary.f32(i32 35, float %2314, float 0.000000e+00)  ; FMax(a,b)
  %2316 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2306, %dx.types.Handle %23, float %2277, float %2279, float %2267, float undef, i32 0, i32 0, i32 undef, float %2315)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = fcmp ule float %2317, 0x3FE0101020000000
  %2319 = extractvalue %dx.types.CBufRet.i32 %2310, 0
  %2320 = and i32 %2319, 128
  %2321 = icmp ne i32 %2320, 0
  %2322 = and i1 %2318, %2321
  br i1 %2322, label %2473, label %2323

; <label>:2323                                    ; preds = %2257
  %2324 = add i32 %2258, 20
  %2325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.f32 %2325, 0
  %2327 = add i32 %2258, 24
  %2328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.f32 %2328, 0
  %2330 = add i32 %2258, 40
  %2331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2330, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.f32 %2331, 0
  %2333 = add i32 %2258, 96
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2333, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2337 = extractvalue %dx.types.CBufRet.f32 %2336, 2
  %2338 = fmul fast float %2337, %2277
  %2339 = fmul fast float %2337, %2279
  %2340 = extractvalue %dx.types.CBufRet.f32 %2336, 3
  %2341 = fadd fast float %2338, %2340
  %2342 = fadd fast float %2339, %2340
  %2343 = add i32 %2335, 0
  %2344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2343, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2345 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2344, i32 0)  ; GetDimensions(handle,mipLevel)
  %2346 = extractvalue %dx.types.Dimensions %2345, 0
  %2347 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2346)  ; FirstbitLo(value)
  %2348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2349 = extractvalue %dx.types.CBufRet.i32 %2348, 1
  %2350 = sub nsw i32 %2349, %2347
  %2351 = sitofp i32 %2350 to float
  %2352 = fsub fast float %2301, %2351
  %2353 = call float @dx.op.binary.f32(i32 35, float %2352, float 0.000000e+00)  ; FMax(a,b)
  %2354 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2344, %dx.types.Handle %23, float %2341, float %2342, float %2332, float undef, i32 0, i32 0, i32 undef, float %2353)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2355 = extractvalue %dx.types.ResRet.f32 %2354, 0
  %2356 = fmul fast float %2355, %2326
  %2357 = fadd fast float %2356, %2329
  %2358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2359 = extractvalue %dx.types.CBufRet.f32 %2358, 0
  %2360 = extractvalue %dx.types.CBufRet.f32 %2358, 1
  %2361 = extractvalue %dx.types.CBufRet.f32 %2358, 2
  %2362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2363 = extractvalue %dx.types.CBufRet.f32 %2362, 3
  %2364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2365 = extractvalue %dx.types.CBufRet.f32 %2364, 3
  %2366 = extractvalue %dx.types.CBufRet.f32 %2358, 3
  %2367 = fadd fast float %2363, %2224
  %2368 = fadd fast float %2365, %2225
  %2369 = fadd fast float %2357, %2366
  %2370 = fmul fast float %2367, %2359
  %2371 = call float @dx.op.tertiary.f32(i32 46, float %2368, float %2360, float %2370)  ; FMad(a,b,c)
  %2372 = call float @dx.op.tertiary.f32(i32 46, float %2369, float %2361, float %2371)  ; FMad(a,b,c)
  %2373 = fsub fast float %2372, %2366
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 2
  %2376 = fsub fast float %2373, %2375
  %2377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2378 = extractvalue %dx.types.CBufRet.i32 %2377, 0
  %2379 = call i32 @dx.op.binary.i32(i32 40, i32 %2255, i32 %2378)  ; UMin(a,b)
  %2380 = mul i32 %2379, 36
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = add i32 %2380, 4
  %2384 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.f32 %2384, 0
  %2386 = fmul fast float %2385, %2277
  %2387 = fmul fast float %2385, %2279
  %2388 = extractvalue %dx.types.CBufRet.f32 %2384, 1
  %2389 = fadd fast float %2386, %2388
  %2390 = fadd fast float %2387, %2388
  %2391 = icmp eq i32 %2382, 0
  br i1 %2391, label %2460, label %2392

; <label>:2392                                    ; preds = %2323
  br label %2393

; <label>:2393                                    ; preds = %2450, %2392
  %2394 = phi float [ %2451, %2450 ], [ 0.000000e+00, %2392 ]
  %2395 = phi float [ %2452, %2450 ], [ 0.000000e+00, %2392 ]
  %2396 = phi float [ %2453, %2450 ], [ 0.000000e+00, %2392 ]
  %2397 = phi float [ %2454, %2450 ], [ 0.000000e+00, %2392 ]
  %2398 = phi float [ %2455, %2450 ], [ 0.000000e+00, %2392 ]
  %2399 = phi float [ %2456, %2450 ], [ 0.000000e+00, %2392 ]
  %2400 = phi i32 [ %2457, %2450 ], [ 0, %2392 ]
  %2401 = shl i32 %2400, 2
  %2402 = add i32 %2268, %2401
  %2403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.f32 %2403, 0
  %2405 = add i32 %2272, %2401
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = add i32 %2407, 0
  %2409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2410 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2409, i32 0)  ; GetDimensions(handle,mipLevel)
  %2411 = extractvalue %dx.types.Dimensions %2410, 0
  %2412 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2411)  ; FirstbitLo(value)
  %2413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2414 = extractvalue %dx.types.CBufRet.i32 %2413, 1
  %2415 = sub nsw i32 %2414, %2412
  %2416 = sitofp i32 %2415 to float
  %2417 = fsub fast float %2301, %2416
  %2418 = call float @dx.op.binary.f32(i32 35, float %2417, float 0.000000e+00)  ; FMax(a,b)
  %2419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2409, %dx.types.Handle %23, float %2389, float %2390, float %2404, float undef, i32 0, i32 0, i32 undef, float %2418)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2420 = extractvalue %dx.types.ResRet.f32 %2419, 0
  %2421 = fcmp fast ogt float %2420, 0.000000e+00
  br i1 %2421, label %2422, label %2450

; <label>:2422                                    ; preds = %2393
  %2423 = add i32 %2383, %2401
  %2424 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2423, i32 undef)  ; BufferLoad(srv,index,wot)
  %2425 = extractvalue %dx.types.ResRet.i32 %2424, 0
  %2426 = and i32 %2425, 32767
  %2427 = mul nuw nsw i32 %2426, 928
  %2428 = add nuw nsw i32 %2427, 48
  %2429 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2428, i32 undef)  ; BufferLoad(srv,index,wot)
  %2430 = extractvalue %dx.types.ResRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.ResRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.ResRet.f32 %2429, 2
  %2433 = add nuw nsw i32 %2427, 60
  %2434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2433, i32 undef)  ; BufferLoad(srv,index,wot)
  %2435 = extractvalue %dx.types.ResRet.f32 %2434, 0
  %2436 = extractvalue %dx.types.ResRet.f32 %2434, 1
  %2437 = extractvalue %dx.types.ResRet.f32 %2434, 2
  %2438 = fmul fast float %2430, %2420
  %2439 = fmul fast float %2431, %2420
  %2440 = fmul fast float %2432, %2420
  %2441 = fadd fast float %2438, %2394
  %2442 = fadd fast float %2439, %2395
  %2443 = fadd fast float %2440, %2396
  %2444 = fmul fast float %2435, %2420
  %2445 = fmul fast float %2436, %2420
  %2446 = fmul fast float %2437, %2420
  %2447 = fadd fast float %2444, %2397
  %2448 = fadd fast float %2445, %2398
  %2449 = fadd fast float %2446, %2399
  br label %2450

; <label>:2450                                    ; preds = %2422, %2393
  %2451 = phi float [ %2441, %2422 ], [ %2394, %2393 ]
  %2452 = phi float [ %2442, %2422 ], [ %2395, %2393 ]
  %2453 = phi float [ %2443, %2422 ], [ %2396, %2393 ]
  %2454 = phi float [ %2447, %2422 ], [ %2397, %2393 ]
  %2455 = phi float [ %2448, %2422 ], [ %2398, %2393 ]
  %2456 = phi float [ %2449, %2422 ], [ %2399, %2393 ]
  %2457 = add nuw i32 %2400, 1
  %2458 = icmp eq i32 %2457, %2382
  br i1 %2458, label %2459, label %2393

; <label>:2459                                    ; preds = %2450
  br label %2460

; <label>:2460                                    ; preds = %2459, %2323
  %2461 = phi float [ 0.000000e+00, %2323 ], [ %2451, %2459 ]
  %2462 = phi float [ 0.000000e+00, %2323 ], [ %2452, %2459 ]
  %2463 = phi float [ 0.000000e+00, %2323 ], [ %2453, %2459 ]
  %2464 = phi float [ 0.000000e+00, %2323 ], [ %2454, %2459 ]
  %2465 = phi float [ 0.000000e+00, %2323 ], [ %2455, %2459 ]
  %2466 = phi float [ 0.000000e+00, %2323 ], [ %2456, %2459 ]
  %2467 = fadd fast float %2464, %2461
  %2468 = fmul fast float %2467, 0x3F847AE140000000
  %2469 = fadd fast float %2465, %2462
  %2470 = fmul fast float %2469, 0x3F847AE140000000
  %2471 = fadd fast float %2466, %2463
  %2472 = fmul fast float %2471, 0x3F847AE140000000
  br label %2473

; <label>:2473                                    ; preds = %2460, %2257, %2202, %2199, %2170, %2132
  %2474 = phi float [ %2184, %2170 ], [ -1.310720e+05, %2132 ], [ %2376, %2460 ], [ -1.310720e+05, %2202 ], [ -1.310720e+05, %2257 ], [ -1.310720e+05, %2199 ]
  %2475 = phi float [ %2194, %2170 ], [ 0.000000e+00, %2132 ], [ %2468, %2460 ], [ 0.000000e+00, %2202 ], [ 0.000000e+00, %2257 ], [ 0.000000e+00, %2199 ]
  %2476 = phi float [ %2196, %2170 ], [ 0.000000e+00, %2132 ], [ %2470, %2460 ], [ 0.000000e+00, %2202 ], [ 0.000000e+00, %2257 ], [ 0.000000e+00, %2199 ]
  %2477 = phi float [ %2198, %2170 ], [ 0.000000e+00, %2132 ], [ %2472, %2460 ], [ 0.000000e+00, %2202 ], [ 0.000000e+00, %2257 ], [ 0.000000e+00, %2199 ]
  %2478 = phi i1 [ true, %2170 ], [ false, %2132 ], [ true, %2460 ], [ false, %2202 ], [ false, %2257 ], [ false, %2199 ]
  %2479 = and i32 %127, 3
  %2480 = icmp eq i32 %2479, 1
  %2481 = select i1 %2480, float 1.000000e+00, float 0.000000e+00
  %2482 = fsub fast float %2474, %111
  %2483 = call float @dx.op.unary.f32(i32 7, float %2482)  ; Saturate(value)
  %2484 = select i1 %2478, float %2483, float 1.000000e+00
  %2485 = fmul fast float %2484, %2481
  %2486 = icmp eq i32 %2479, 3
  %2487 = select i1 %2486, float 1.000000e+00, float %2485
  %2488 = call float @dx.op.binary.f32(i32 35, float %2048, float %2487)  ; FMax(a,b)
  %2489 = call float @dx.op.unary.f32(i32 7, float %2488)  ; Saturate(value)
  %2490 = fcmp fast une float %2489, 0.000000e+00
  %2491 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %2492 = call float @dx.op.unary.f32(i32 25, float %2491)  ; Rsqrt(value)
  br i1 %2490, label %2500, label %2493

; <label>:2493                                    ; preds = %2473
  %2494 = fmul fast float %2492, %109
  %2495 = fmul fast float %2492, %110
  %2496 = fmul fast float %2492, %111
  %2497 = fsub fast float -0.000000e+00, %2494
  %2498 = fsub fast float -0.000000e+00, %2495
  %2499 = fsub fast float -0.000000e+00, %2496
  br label %2668

; <label>:2500                                    ; preds = %2473
  %2501 = fmul fast float %109, %2492
  %2502 = fsub fast float -0.000000e+00, %2501
  %2503 = fmul fast float %110, %2492
  %2504 = fsub fast float -0.000000e+00, %2503
  %2505 = fmul fast float %111, %2492
  %2506 = fsub fast float -0.000000e+00, %2505
  %2507 = call float @dx.op.dot3.f32(i32 55, float %2502, float %2504, float %2506, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2508 = fmul fast float %2489, 2.500000e+00
  %2509 = call float @dx.op.unary.f32(i32 7, float %2508)  ; Saturate(value)
  %2510 = fmul fast float %2489, 0x4013FFFFE0000000
  %2511 = fadd fast float %2510, 0xBFFFFFFFE0000000
  %2512 = call float @dx.op.unary.f32(i32 7, float %2511)  ; Saturate(value)
  %2513 = fmul fast float %2489, 0x4004000020000000
  %2514 = fadd fast float %2513, 0xBFF8000040000000
  %2515 = call float @dx.op.unary.f32(i32 7, float %2514)  ; Saturate(value)
  %2516 = call float @dx.op.unary.f32(i32 7, float %2509)  ; Saturate(value)
  %2517 = fmul fast float %2078, 1.000000e+01
  %2518 = call float @dx.op.unary.f32(i32 7, float %2517)  ; Saturate(value)
  %2519 = fmul fast float %2518, 2.000000e+00
  %2520 = fsub fast float 3.000000e+00, %2519
  %2521 = fmul fast float %2518, %2518
  %2522 = fmul fast float %2521, %2520
  %2523 = fsub fast float 1.000000e+00, %2522
  %2524 = fsub fast float 0x3FE3333340000000, %2099
  %2525 = fmul fast float %2524, 0x400AAAAAA0000000
  %2526 = call float @dx.op.unary.f32(i32 7, float %2525)  ; Saturate(value)
  %2527 = fmul fast float %2523, %2526
  %2528 = fmul fast float %2111, 0x3FEA2B8620000000
  %2529 = fmul fast float %2112, 0x3FEA2B8620000000
  %2530 = fmul fast float %2113, 0x3FEA2B8620000000
  %2531 = fadd fast float %2528, 0x3FC81DFBA0000000
  %2532 = fmul fast float %2531, %2111
  %2533 = fadd fast float %2532, 0x3F910E6020000000
  %2534 = fadd fast float %2529, 0x3FC81DFBA0000000
  %2535 = fmul fast float %2534, %2112
  %2536 = fadd fast float %2535, 0x3F910E6020000000
  %2537 = fadd fast float %2530, 0x3FC81DFBA0000000
  %2538 = fmul fast float %2537, %2113
  %2539 = fadd fast float %2538, 0x3F910E6020000000
  %2540 = call float @dx.op.unary.f32(i32 7, float %2533)  ; Saturate(value)
  %2541 = call float @dx.op.unary.f32(i32 7, float %2536)  ; Saturate(value)
  %2542 = call float @dx.op.unary.f32(i32 7, float %2539)  ; Saturate(value)
  %2543 = fsub fast float %2540, %2111
  %2544 = fsub fast float %2541, %2112
  %2545 = fsub fast float %2542, %2113
  %2546 = fmul fast float %2543, %2516
  %2547 = fmul fast float %2546, %2527
  %2548 = fmul fast float %2544, %2516
  %2549 = fmul fast float %2548, %2527
  %2550 = fmul fast float %2545, %2516
  %2551 = fmul fast float %2550, %2527
  %2552 = fadd fast float %2547, %2111
  %2553 = fadd fast float %2549, %2112
  %2554 = fadd fast float %2551, %2113
  %2555 = fmul fast float %2059, %2059
  %2556 = fmul fast float %2555, %2555
  %2557 = fadd fast float %2512, 1.000000e+00
  %2558 = fsub fast float %2557, %2527
  %2559 = call float @dx.op.unary.f32(i32 7, float %2558)  ; Saturate(value)
  %2560 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2561 = call float @dx.op.unary.f32(i32 7, float %2560)  ; Saturate(value)
  %2562 = fsub fast float 1.000000e+00, %2556
  %2563 = call float @dx.op.binary.f32(i32 36, float %2559, float %2562)  ; FMin(a,b)
  %2564 = call float @dx.op.unary.f32(i32 7, float %2515)  ; Saturate(value)
  %2565 = call float @dx.op.binary.f32(i32 35, float %2563, float %2564)  ; FMax(a,b)
  %2566 = fadd fast float %2561, 0xBFE4CCCCC0000000
  %2567 = fmul fast float %2566, 0x4006DB6DA0000000
  %2568 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2569 = fmul fast float %2568, 2.000000e+00
  %2570 = fsub fast float 3.000000e+00, %2569
  %2571 = bitcast float %2096 to i32
  %2572 = ashr i32 %2571, 1
  %2573 = add nsw i32 %2572, 532487669
  %2574 = bitcast i32 %2573 to float
  %2575 = fsub fast float 1.000000e+00, %2574
  %2576 = bitcast float %2575 to i32
  %2577 = sub nsw i32 2129859010, %2576
  %2578 = bitcast i32 %2577 to float
  %2579 = fmul fast float %2578, 2.000000e+00
  %2580 = bitcast float %2097 to i32
  %2581 = ashr i32 %2580, 1
  %2582 = add nsw i32 %2581, 532487669
  %2583 = bitcast i32 %2582 to float
  %2584 = fsub fast float 1.000000e+00, %2583
  %2585 = bitcast float %2584 to i32
  %2586 = sub nsw i32 2129859010, %2585
  %2587 = bitcast i32 %2586 to float
  %2588 = fmul fast float %2587, 2.000000e+00
  %2589 = bitcast float %2098 to i32
  %2590 = ashr i32 %2589, 1
  %2591 = add nsw i32 %2590, 532487669
  %2592 = bitcast i32 %2591 to float
  %2593 = fsub fast float 1.000000e+00, %2592
  %2594 = bitcast float %2593 to i32
  %2595 = sub nsw i32 2129859010, %2594
  %2596 = bitcast i32 %2595 to float
  %2597 = fmul fast float %2596, 2.000000e+00
  %2598 = fsub fast float 0x4002A9FBE0000000, %2579
  %2599 = fadd fast float %2579, 0x3FD54FDF00000000
  %2600 = bitcast float %2599 to i32
  %2601 = sub nsw i32 2129859010, %2600
  %2602 = bitcast i32 %2601 to float
  %2603 = fmul fast float %2602, %2598
  %2604 = fmul fast float %2603, %2603
  %2605 = fsub fast float 0x4002A9FBE0000000, %2588
  %2606 = fadd fast float %2588, 0x3FD54FDF00000000
  %2607 = bitcast float %2606 to i32
  %2608 = sub nsw i32 2129859010, %2607
  %2609 = bitcast i32 %2608 to float
  %2610 = fmul fast float %2609, %2605
  %2611 = fmul fast float %2610, %2610
  %2612 = fsub fast float 0x4002A9FBE0000000, %2597
  %2613 = fadd fast float %2597, 0x3FD54FDF00000000
  %2614 = bitcast float %2613 to i32
  %2615 = sub nsw i32 2129859010, %2614
  %2616 = bitcast i32 %2615 to float
  %2617 = fmul fast float %2616, %2612
  %2618 = fmul fast float %2617, %2617
  %2619 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2604)  ; FMax(a,b)
  %2620 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2611)  ; FMax(a,b)
  %2621 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2618)  ; FMax(a,b)
  %2622 = fsub fast float 1.000000e+00, %2507
  %2623 = fadd fast float %2622, %2523
  %2624 = call float @dx.op.unary.f32(i32 7, float %2623)  ; Saturate(value)
  %2625 = fsub fast float 1.000000e+00, %2487
  %2626 = fmul fast float %2565, %2625
  %2627 = fmul fast float %2568, %2568
  %2628 = fmul fast float %2627, %2626
  %2629 = fmul fast float %2628, %2570
  %2630 = fmul fast float %2625, 0xBFE99999A0000000
  %2631 = fmul fast float %2630, %2516
  %2632 = fmul fast float %2631, %2527
  %2633 = fadd fast float %2632, 1.000000e+00
  %2634 = fadd fast float %2099, -1.000000e+00
  %2635 = fmul fast float %2633, %2634
  %2636 = fadd fast float %2635, 1.000000e+00
  %2637 = fsub fast float %2619, %2096
  %2638 = fsub fast float %2620, %2097
  %2639 = fsub fast float %2621, %2098
  %2640 = fmul fast float %2629, %2637
  %2641 = fmul fast float %2629, %2638
  %2642 = fmul fast float %2629, %2639
  %2643 = fadd fast float %2640, %2096
  %2644 = fadd fast float %2641, %2097
  %2645 = fadd fast float %2642, %2098
  %2646 = fsub fast float %56, %2075
  %2647 = fsub fast float %57, %2076
  %2648 = fsub fast float %58, %2077
  %2649 = fmul fast float %2629, %2646
  %2650 = fmul fast float %2629, %2647
  %2651 = fmul fast float %2629, %2648
  %2652 = fadd fast float %2649, %2075
  %2653 = fadd fast float %2650, %2076
  %2654 = fadd fast float %2651, %2077
  %2655 = fmul fast float %2629, %2624
  %2656 = call float @dx.op.unary.f32(i32 7, float %2636)  ; Saturate(value)
  %2657 = fsub fast float 1.000000e+00, %2656
  %2658 = fmul fast float %2655, %2657
  %2659 = fadd fast float %2658, %2656
  %2660 = fsub fast float 1.000000e+00, %2059
  %2661 = fmul fast float %2629, %2660
  %2662 = fadd fast float %2661, %2059
  %2663 = call float @dx.op.dot3.f32(i32 55, float %2652, float %2653, float %2654, float %2652, float %2653, float %2654)  ; Dot3(ax,ay,az,bx,by,bz)
  %2664 = call float @dx.op.unary.f32(i32 25, float %2663)  ; Rsqrt(value)
  %2665 = fmul fast float %2652, %2664
  %2666 = fmul fast float %2653, %2664
  %2667 = fmul fast float %2654, %2664
  br label %2668

; <label>:2668                                    ; preds = %2500, %2493
  %2669 = phi float [ %2499, %2493 ], [ %2506, %2500 ]
  %2670 = phi float [ %2498, %2493 ], [ %2504, %2500 ]
  %2671 = phi float [ %2497, %2493 ], [ %2502, %2500 ]
  %2672 = phi float [ %2496, %2493 ], [ %2505, %2500 ]
  %2673 = phi float [ %2495, %2493 ], [ %2503, %2500 ]
  %2674 = phi float [ %2494, %2493 ], [ %2501, %2500 ]
  %2675 = phi float [ %2096, %2493 ], [ %2643, %2500 ]
  %2676 = phi float [ %2097, %2493 ], [ %2644, %2500 ]
  %2677 = phi float [ %2098, %2493 ], [ %2645, %2500 ]
  %2678 = phi float [ %2111, %2493 ], [ %2552, %2500 ]
  %2679 = phi float [ %2112, %2493 ], [ %2553, %2500 ]
  %2680 = phi float [ %2113, %2493 ], [ %2554, %2500 ]
  %2681 = phi float [ %2075, %2493 ], [ %2665, %2500 ]
  %2682 = phi float [ %2076, %2493 ], [ %2666, %2500 ]
  %2683 = phi float [ %2077, %2493 ], [ %2667, %2500 ]
  %2684 = phi float [ %2099, %2493 ], [ %2659, %2500 ]
  %2685 = phi float [ %2059, %2493 ], [ %2662, %2500 ]
  %2686 = select i1 %151, float 0.000000e+00, float %2677
  %2687 = call float @dx.op.dot3.f32(i32 55, float %2681, float %2682, float %2683, float %2671, float %2670, float %2669)  ; Dot3(ax,ay,az,bx,by,bz)
  %2688 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  %2689 = call float @dx.op.dot3.f32(i32 55, float %2674, float %2673, float %2672, float %2681, float %2682, float %2683)  ; Dot3(ax,ay,az,bx,by,bz)
  %2690 = fmul fast float %2689, 2.000000e+00
  %2691 = fmul fast float %2690, %2681
  %2692 = fmul fast float %2690, %2682
  %2693 = fmul fast float %2690, %2683
  %2694 = fsub fast float %2674, %2691
  %2695 = fsub fast float %2673, %2692
  %2696 = fsub fast float %2672, %2693
  %2697 = call float @dx.op.binary.f32(i32 36, float %2685, float 1.000000e+00)  ; FMin(a,b)
  %2698 = fsub fast float 1.000000e+00, %2685
  %2699 = bitcast float %2698 to i32
  %2700 = sub nsw i32 2129859010, %2699
  %2701 = bitcast i32 %2700 to float
  %2702 = fsub fast float 1.000000e+00, %33
  %2703 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2704 = call float @dx.op.binary.f32(i32 35, float %2703, float 0x3FA99999A0000000)  ; FMax(a,b)
  %2705 = fdiv fast float %2702, %2704
  %2706 = call float @dx.op.dot3.f32(i32 55, float %2681, float %2682, float %2683, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2707 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2708 = fmul fast float %2707, 5.000000e-01
  %2709 = fadd fast float %2708, 5.000000e-01
  %2710 = fmul fast float %2709, %33
  %2711 = call float @dx.op.dot3.f32(i32 55, float %2681, float %2682, float %2683, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %2712 = call float @dx.op.unary.f32(i32 7, float %2711)  ; Saturate(value)
  %2713 = fmul fast float %2712, %2705
  %2714 = fadd fast float %2710, %2713
  %2715 = fsub fast float 5.000000e-01, %2708
  %2716 = fmul fast float %2715, %2678
  %2717 = fmul fast float %2715, %2679
  %2718 = fmul fast float %2715, %2680
  %2719 = fadd fast float %2714, %2716
  %2720 = fadd fast float %2714, %2717
  %2721 = fadd fast float %2714, %2718
  %2722 = call float @dx.op.dot3.f32(i32 55, float %2694, float %2695, float %2696, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2723 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2724 = fmul fast float %2723, 5.000000e-01
  %2725 = fadd fast float %2724, 5.000000e-01
  %2726 = fmul fast float %2725, %33
  %2727 = call float @dx.op.dot3.f32(i32 55, float %2694, float %2695, float %2696, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %2728 = call float @dx.op.unary.f32(i32 7, float %2727)  ; Saturate(value)
  %2729 = fmul fast float %2728, %2705
  %2730 = fadd fast float %2726, %2729
  %2731 = fsub fast float 5.000000e-01, %2724
  %2732 = fmul fast float %2731, %2678
  %2733 = fmul fast float %2731, %2679
  %2734 = fmul fast float %2731, %2680
  %2735 = fadd fast float %2730, %2732
  %2736 = fadd fast float %2730, %2733
  %2737 = fadd fast float %2730, %2734
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = call float @dx.op.binary.f32(i32 36, float %2678, float %2739)  ; FMin(a,b)
  %2741 = fsub fast float 1.000000e+00, %2697
  %2742 = fmul fast float %2740, %2741
  %2743 = fsub fast float 1.000000e+00, %2742
  %2744 = bitcast float %2743 to i32
  %2745 = sub nsw i32 2129859010, %2744
  %2746 = bitcast i32 %2745 to float
  %2747 = call float @dx.op.binary.f32(i32 36, float %2679, float %2739)  ; FMin(a,b)
  %2748 = fmul fast float %2747, %2741
  %2749 = fsub fast float 1.000000e+00, %2748
  %2750 = bitcast float %2749 to i32
  %2751 = sub nsw i32 2129859010, %2750
  %2752 = bitcast i32 %2751 to float
  %2753 = call float @dx.op.binary.f32(i32 36, float %2680, float %2739)  ; FMin(a,b)
  %2754 = fmul fast float %2753, %2741
  %2755 = fsub fast float 1.000000e+00, %2754
  %2756 = bitcast float %2755 to i32
  %2757 = sub nsw i32 2129859010, %2756
  %2758 = bitcast i32 %2757 to float
  %2759 = fmul fast float %2697, %34
  %2760 = fmul fast float %2759, %2719
  %2761 = fmul fast float %2760, %2746
  %2762 = fmul fast float %2697, %35
  %2763 = fmul fast float %2762, %2720
  %2764 = fmul fast float %2763, %2752
  %2765 = fmul fast float %2697, %36
  %2766 = fmul fast float %2765, %2721
  %2767 = fmul fast float %2766, %2758
  %2768 = call float @dx.op.binary.f32(i32 36, float %2675, float %2739)  ; FMin(a,b)
  %2769 = fmul fast float %2768, %2741
  %2770 = fsub fast float 1.000000e+00, %2769
  %2771 = bitcast float %2770 to i32
  %2772 = sub nsw i32 2129859010, %2771
  %2773 = bitcast i32 %2772 to float
  %2774 = call float @dx.op.binary.f32(i32 36, float %2676, float %2739)  ; FMin(a,b)
  %2775 = fmul fast float %2774, %2741
  %2776 = fsub fast float 1.000000e+00, %2775
  %2777 = bitcast float %2776 to i32
  %2778 = sub nsw i32 2129859010, %2777
  %2779 = bitcast i32 %2778 to float
  %2780 = call float @dx.op.binary.f32(i32 36, float %2686, float %2739)  ; FMin(a,b)
  %2781 = fmul fast float %2780, %2741
  %2782 = fsub fast float 1.000000e+00, %2781
  %2783 = bitcast float %2782 to i32
  %2784 = sub nsw i32 2129859010, %2783
  %2785 = bitcast i32 %2784 to float
  %2786 = fmul fast float %2759, %2735
  %2787 = fmul fast float %2786, %2773
  %2788 = fmul fast float %2762, %2736
  %2789 = fmul fast float %2788, %2779
  %2790 = fmul fast float %2765, %2737
  %2791 = fmul fast float %2790, %2785
  %2792 = call float @dx.op.dot3.f32(i32 55, float %2761, float %2764, float %2767, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2793 = select i1 %151, float 0.000000e+00, float %2761
  %2794 = select i1 %151, float %2792, float %2764
  %2795 = select i1 %151, float 0.000000e+00, float %2767
  %2796 = call float @dx.op.dot3.f32(i32 55, float %2787, float %2789, float %2791, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2797 = select i1 %151, float 0.000000e+00, float %2787
  %2798 = select i1 %151, float %2796, float %2789
  %2799 = select i1 %151, float 0.000000e+00, float %2791
  %2800 = fmul fast float %2688, 9.843750e-01
  %2801 = fmul fast float %2684, 9.843750e-01
  %2802 = fadd fast float %2800, 7.812500e-03
  %2803 = fadd fast float %2801, 7.812500e-03
  %2804 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2802, float %2803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2805 = extractvalue %dx.types.ResRet.f32 %2804, 2
  %2806 = extractvalue %dx.types.ResRet.f32 %2804, 3
  %2807 = fmul fast float %2805, %2675
  %2808 = fmul fast float %2805, %2676
  %2809 = fmul fast float %2805, %2686
  %2810 = fadd fast float %2807, %2806
  %2811 = fadd fast float %2808, %2806
  %2812 = fadd fast float %2809, %2806
  %2813 = fcmp fast ogt float %2052, 0.000000e+00
  br i1 %2813, label %2814, label %2840

; <label>:2814                                    ; preds = %2668
  %2815 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %2052, float %2688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  %2817 = extractvalue %dx.types.ResRet.f32 %2815, 1
  %2818 = extractvalue %dx.types.ResRet.f32 %2815, 2
  %2819 = fadd fast float %2816, -5.000000e-01
  %2820 = fadd fast float %2817, -5.000000e-01
  %2821 = fadd fast float %2818, -5.000000e-01
  %2822 = fsub fast float 1.000000e+00, %2675
  %2823 = fsub fast float 1.000000e+00, %2676
  %2824 = fsub fast float 1.000000e+00, %2686
  %2825 = fmul fast float %2675, 4.000000e+00
  %2826 = fmul fast float %2825, %2822
  %2827 = fmul fast float %2826, %2819
  %2828 = fmul fast float %2676, 4.000000e+00
  %2829 = fmul fast float %2828, %2823
  %2830 = fmul fast float %2829, %2820
  %2831 = fmul fast float %2686, 4.000000e+00
  %2832 = fmul fast float %2831, %2824
  %2833 = fmul fast float %2832, %2821
  %2834 = fadd fast float %2827, %2810
  %2835 = fadd fast float %2830, %2811
  %2836 = fadd fast float %2833, %2812
  %2837 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  %2838 = call float @dx.op.unary.f32(i32 7, float %2835)  ; Saturate(value)
  %2839 = call float @dx.op.unary.f32(i32 7, float %2836)  ; Saturate(value)
  br label %2840

; <label>:2840                                    ; preds = %2814, %2668
  %2841 = phi float [ %2837, %2814 ], [ %2810, %2668 ]
  %2842 = phi float [ %2838, %2814 ], [ %2811, %2668 ]
  %2843 = phi float [ %2839, %2814 ], [ %2812, %2668 ]
  %2844 = call float @dx.op.binary.f32(i32 35, float %2842, float %2843)  ; FMax(a,b)
  %2845 = call float @dx.op.binary.f32(i32 35, float %2841, float %2844)  ; FMax(a,b)
  %2846 = fsub fast float 1.000000e+00, %2845
  %2847 = fmul fast float %2846, %2793
  %2848 = fmul fast float %2846, %2794
  %2849 = fmul fast float %2846, %2795
  %2850 = call float @dx.op.dot3.f32(i32 55, float %2678, float %2679, float %2680, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2851 = fcmp fast ogt float %2850, 0x3E7FF19E20000000
  %2852 = fdiv fast float 1.000000e+00, %2850
  %2853 = select i1 %2851, float %2852, float 0.000000e+00
  %2854 = fmul fast float %2853, %2678
  %2855 = fmul fast float %2853, %2679
  %2856 = fmul fast float %2853, %2680
  %2857 = fadd fast float %2854, -1.000000e+00
  %2858 = fadd fast float %2855, -1.000000e+00
  %2859 = fadd fast float %2856, -1.000000e+00
  %2860 = fmul fast float %2857, 5.000000e-01
  %2861 = fmul fast float %2858, 5.000000e-01
  %2862 = fmul fast float %2859, 5.000000e-01
  %2863 = fadd fast float %2860, 1.000000e+00
  %2864 = fadd fast float %2861, 1.000000e+00
  %2865 = fadd fast float %2862, 1.000000e+00
  %2866 = fmul fast float %2841, %2797
  %2867 = fmul fast float %2842, %2798
  %2868 = fmul fast float %2843, %2799
  %2869 = fsub fast float 1.000000e+00, %2688
  %2870 = bitcast float %2869 to i32
  %2871 = sitofp i32 %2870 to float
  %2872 = fmul fast float %2871, 5.000000e+00
  %2873 = fadd fast float %2872, 0xC1EFBF8940000000
  %2874 = fptosi float %2873 to i32
  %2875 = bitcast i32 %2874 to float
  %2876 = fmul fast float %2875, %2051
  %2877 = fmul fast float %2793, %2876
  %2878 = fmul fast float %2877, %2846
  %2879 = fmul fast float %2878, %2863
  %2880 = fmul fast float %2794, %2876
  %2881 = fmul fast float %2880, %2846
  %2882 = fmul fast float %2881, %2864
  %2883 = fmul fast float %2795, %2876
  %2884 = fmul fast float %2883, %2846
  %2885 = fmul fast float %2884, %2865
  %2886 = fmul fast float %2847, %2072
  %2887 = fmul fast float %2848, %2072
  %2888 = fmul fast float %2849, %2072
  %2889 = fadd fast float %2866, %2053
  %2890 = fadd fast float %2889, %2879
  %2891 = fmul fast float %2890, %2072
  %2892 = fadd fast float %2867, %2054
  %2893 = fadd fast float %2892, %2882
  %2894 = fmul fast float %2893, %2072
  %2895 = fadd fast float %2868, %2055
  %2896 = fadd fast float %2895, %2885
  %2897 = fmul fast float %2896, %2072
  %2898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2899 = extractvalue %dx.types.CBufRet.f32 %2898, 3
  %2900 = fcmp fast oeq float %2899, 0.000000e+00
  br i1 %2900, label %3128, label %2901

; <label>:2901                                    ; preds = %2840
  %2902 = extractvalue %dx.types.CBufRet.f32 %2898, 0
  %2903 = extractvalue %dx.types.CBufRet.f32 %2898, 1
  %2904 = extractvalue %dx.types.CBufRet.f32 %2898, 2
  %2905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.f32 %2905, 0
  %2907 = extractvalue %dx.types.CBufRet.f32 %2905, 1
  %2908 = extractvalue %dx.types.CBufRet.f32 %2905, 2
  %2909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2910 = extractvalue %dx.types.CBufRet.f32 %2909, 0
  %2911 = extractvalue %dx.types.CBufRet.f32 %2909, 1
  %2912 = call float @dx.op.dot3.f32(i32 55, float %2906, float %2907, float %2908, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2913 = select i1 %151, float %2910, float %2906
  %2914 = select i1 %151, float %2912, float %2907
  %2915 = select i1 %151, float %2911, float %2908
  %2916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.f32 %2916, 1
  %2918 = fcmp fast une float %2917, 0.000000e+00
  br i1 %2918, label %2919, label %2936

; <label>:2919                                    ; preds = %2901
  %2920 = fptoui float %53 to i32
  %2921 = fptoui float %54 to i32
  %2922 = lshr i32 %2920, 4
  %2923 = lshr i32 %2921, 4
  %2924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2925 = extractvalue %dx.types.CBufRet.f32 %2924, 0
  %2926 = fptoui float %2925 to i32
  %2927 = add i32 %2926, 15
  %2928 = lshr i32 %2927, 4
  %2929 = mul i32 %2928, %2923
  %2930 = add i32 %2929, %2922
  %2931 = shl i32 %2930, 3
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = and i32 %2933, -268435456
  %2935 = icmp eq i32 %2934, -1342177280
  br i1 %2935, label %2946, label %2936

; <label>:2936                                    ; preds = %2919, %2901
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 2
  %2939 = extractvalue %dx.types.CBufRet.f32 %2937, 3
  %2940 = fmul fast float %2938, %53
  %2941 = fmul fast float %2939, %54
  %2942 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %2940, float %2941, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2943 = extractvalue %dx.types.ResRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.ResRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2942, 2
  br label %2946

; <label>:2946                                    ; preds = %2936, %2919
  %2947 = phi float [ %2943, %2936 ], [ 0.000000e+00, %2919 ]
  %2948 = phi float [ %2944, %2936 ], [ 0.000000e+00, %2919 ]
  %2949 = phi float [ %2945, %2936 ], [ 0.000000e+00, %2919 ]
  %2950 = call float @dx.op.binary.f32(i32 36, float %2948, float %2949)  ; FMin(a,b)
  %2951 = call float @dx.op.binary.f32(i32 36, float %2947, float %2950)  ; FMin(a,b)
  %2952 = fcmp fast ogt float %2951, 0.000000e+00
  br i1 %2952, label %2953, label %3128, !dx.controlflow.hints !62

; <label>:2953                                    ; preds = %2946
  %2954 = fmul fast float %2947, %2913
  %2955 = fmul fast float %2948, %2914
  %2956 = fmul fast float %2949, %2915
  %2957 = fsub fast float %2902, %2674
  %2958 = fsub fast float %2903, %2673
  %2959 = fsub fast float %2904, %2672
  %2960 = call float @dx.op.dot3.f32(i32 55, float %2957, float %2958, float %2959, float %2957, float %2958, float %2959)  ; Dot3(ax,ay,az,bx,by,bz)
  %2961 = call float @dx.op.unary.f32(i32 25, float %2960)  ; Rsqrt(value)
  %2962 = fmul fast float %2961, %2957
  %2963 = fmul fast float %2961, %2958
  %2964 = fmul fast float %2961, %2959
  %2965 = call float @dx.op.dot3.f32(i32 55, float %2902, float %2903, float %2904, float %2681, float %2682, float %2683)  ; Dot3(ax,ay,az,bx,by,bz)
  %2966 = call float @dx.op.dot3.f32(i32 55, float %2671, float %2670, float %2669, float %2962, float %2963, float %2964)  ; Dot3(ax,ay,az,bx,by,bz)
  %2967 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  %2968 = fmul fast float %2967, %2967
  %2969 = fmul fast float %2968, %2701
  %2970 = call float @dx.op.unary.f32(i32 7, float %2969)  ; Saturate(value)
  %2971 = fmul fast float %2970, %2967
  %2972 = call float @dx.op.dot3.f32(i32 55, float %2681, float %2682, float %2683, float %2962, float %2963, float %2964)  ; Dot3(ax,ay,az,bx,by,bz)
  %2973 = fmul fast float %2972, %2972
  %2974 = call float @dx.op.unary.f32(i32 6, float %2965)  ; FAbs(value)
  %2975 = fsub fast float 1.000000e+00, %2684
  %2976 = call float @dx.op.binary.f32(i32 35, float %2975, float 0x3F847AE140000000)  ; FMax(a,b)
  %2977 = fmul fast float %2976, %2976
  %2978 = fmul fast float %2977, %2977
  %2979 = fsub fast float 1.000000e+00, %2978
  %2980 = fmul fast float %2688, %2688
  %2981 = fmul fast float %2980, %2979
  %2982 = fadd fast float %2981, %2978
  %2983 = bitcast float %2982 to i32
  %2984 = ashr i32 %2983, 1
  %2985 = add nsw i32 %2984, 532487669
  %2986 = bitcast i32 %2985 to float
  %2987 = fadd fast float %2986, %2688
  %2988 = fmul fast float %2978, %2973
  %2989 = fsub fast float 1.000000e+00, %2973
  %2990 = fadd fast float %2989, %2988
  %2991 = fmul fast float %2974, %2974
  %2992 = fmul fast float %2991, %2979
  %2993 = fadd fast float %2992, %2978
  %2994 = bitcast float %2993 to i32
  %2995 = ashr i32 %2994, 1
  %2996 = add nsw i32 %2995, 532487669
  %2997 = bitcast i32 %2996 to float
  %2998 = fadd fast float %2997, %2974
  %2999 = fmul fast float %2990, %2990
  %3000 = fmul fast float %2999, %2987
  %3001 = fmul fast float %3000, %2998
  %3002 = fdiv fast float 0x3FF0A00000000000, %3001
  %3003 = fmul fast float %3002, %2978
  %3004 = call float @dx.op.unary.f32(i32 6, float %2966)  ; FAbs(value)
  %3005 = fsub fast float 1.000000e+00, %3004
  %3006 = bitcast float %3005 to i32
  %3007 = sitofp i32 %3006 to float
  %3008 = fmul fast float %3007, 5.000000e+00
  %3009 = fadd fast float %3008, 0xC1EFBF8940000000
  %3010 = fptosi float %3009 to i32
  %3011 = bitcast i32 %3010 to float
  %3012 = fsub fast float 1.000000e+00, %2675
  %3013 = fsub fast float 1.000000e+00, %2676
  %3014 = fsub fast float 1.000000e+00, %2686
  %3015 = fmul fast float %3011, %3012
  %3016 = fmul fast float %3011, %3013
  %3017 = fmul fast float %3011, %3014
  %3018 = fadd fast float %3015, %2675
  %3019 = fadd fast float %3016, %2676
  %3020 = fadd fast float %3017, %2686
  br i1 %2813, label %3021, label %3044

; <label>:3021                                    ; preds = %2953
  %3022 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %2052, float %3004, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3023 = extractvalue %dx.types.ResRet.f32 %3022, 0
  %3024 = extractvalue %dx.types.ResRet.f32 %3022, 1
  %3025 = extractvalue %dx.types.ResRet.f32 %3022, 2
  %3026 = fadd fast float %3023, -5.000000e-01
  %3027 = fadd fast float %3024, -5.000000e-01
  %3028 = fadd fast float %3025, -5.000000e-01
  %3029 = fmul fast float %2675, 4.000000e+00
  %3030 = fmul fast float %3029, %3012
  %3031 = fmul fast float %3030, %3026
  %3032 = fmul fast float %2676, 4.000000e+00
  %3033 = fmul fast float %3032, %3013
  %3034 = fmul fast float %3033, %3027
  %3035 = fmul fast float %2686, 4.000000e+00
  %3036 = fmul fast float %3035, %3014
  %3037 = fmul fast float %3036, %3028
  %3038 = fadd fast float %3031, %3018
  %3039 = fadd fast float %3034, %3019
  %3040 = fadd fast float %3037, %3020
  %3041 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3043 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  br label %3044

; <label>:3044                                    ; preds = %3021, %2953
  %3045 = phi float [ %3041, %3021 ], [ %3018, %2953 ]
  %3046 = phi float [ %3042, %3021 ], [ %3019, %2953 ]
  %3047 = phi float [ %3043, %3021 ], [ %3020, %2953 ]
  %3048 = fmul fast float %2965, 9.843750e-01
  %3049 = fadd fast float %3048, 7.812500e-03
  %3050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %3049, float %2803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3051 = extractvalue %dx.types.ResRet.f32 %3050, 2
  %3052 = extractvalue %dx.types.ResRet.f32 %3050, 3
  %3053 = fmul fast float %3051, %2675
  %3054 = fmul fast float %3051, %2676
  %3055 = fmul fast float %3051, %2686
  %3056 = fadd fast float %3053, %3052
  %3057 = fadd fast float %3054, %3052
  %3058 = fadd fast float %3055, %3052
  br i1 %2813, label %3059, label %3082

; <label>:3059                                    ; preds = %3044
  %3060 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %2052, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 0
  %3062 = extractvalue %dx.types.ResRet.f32 %3060, 1
  %3063 = extractvalue %dx.types.ResRet.f32 %3060, 2
  %3064 = fadd fast float %3061, -5.000000e-01
  %3065 = fadd fast float %3062, -5.000000e-01
  %3066 = fadd fast float %3063, -5.000000e-01
  %3067 = fmul fast float %2675, 4.000000e+00
  %3068 = fmul fast float %3067, %3012
  %3069 = fmul fast float %3068, %3064
  %3070 = fmul fast float %2676, 4.000000e+00
  %3071 = fmul fast float %3070, %3013
  %3072 = fmul fast float %3071, %3065
  %3073 = fmul fast float %2686, 4.000000e+00
  %3074 = fmul fast float %3073, %3014
  %3075 = fmul fast float %3074, %3066
  %3076 = fadd fast float %3069, %3056
  %3077 = fadd fast float %3072, %3057
  %3078 = fadd fast float %3075, %3058
  %3079 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3080 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3081 = call float @dx.op.unary.f32(i32 7, float %3078)  ; Saturate(value)
  br label %3082

; <label>:3082                                    ; preds = %3059, %3044
  %3083 = phi float [ %3079, %3059 ], [ %3056, %3044 ]
  %3084 = phi float [ %3080, %3059 ], [ %3057, %3044 ]
  %3085 = phi float [ %3081, %3059 ], [ %3058, %3044 ]
  %3086 = call float @dx.op.binary.f32(i32 35, float %3084, float %3085)  ; FMax(a,b)
  %3087 = call float @dx.op.binary.f32(i32 35, float %3083, float %3086)  ; FMax(a,b)
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = fmul fast float %3045, %3003
  %3090 = fmul fast float %3046, %3003
  %3091 = fmul fast float %3047, %3003
  %3092 = fsub fast float 1.000000e+00, %2966
  %3093 = bitcast float %3092 to i32
  %3094 = sitofp i32 %3093 to float
  %3095 = fmul fast float %3094, 5.000000e+00
  %3096 = fadd fast float %3095, 0xC1EFBF8940000000
  %3097 = fptosi float %3096 to i32
  %3098 = bitcast i32 %3097 to float
  %3099 = fmul fast float %3098, %2051
  %3100 = fmul fast float %3088, %3099
  %3101 = fmul fast float %3100, %2863
  %3102 = fmul fast float %3100, %2864
  %3103 = fmul fast float %3100, %2865
  %3104 = fadd fast float %3101, %3089
  %3105 = fadd fast float %3102, %3090
  %3106 = fadd fast float %3103, %3091
  %3107 = fmul fast float %2971, %2954
  %3108 = fmul fast float %3107, %3088
  %3109 = fmul fast float %2971, %2955
  %3110 = fmul fast float %3109, %3088
  %3111 = fmul fast float %2971, %2956
  %3112 = fmul fast float %3111, %3088
  %3113 = fmul fast float %3107, %3104
  %3114 = fmul fast float %3109, %3105
  %3115 = fmul fast float %3111, %3106
  %3116 = fadd fast float %3108, %2847
  %3117 = fmul fast float %3116, %2072
  %3118 = fadd fast float %3110, %2848
  %3119 = fmul fast float %3118, %2072
  %3120 = fadd fast float %3112, %2849
  %3121 = fmul fast float %3120, %2072
  %3122 = fadd fast float %3113, %2890
  %3123 = fmul fast float %3122, %2072
  %3124 = fadd fast float %3114, %2893
  %3125 = fmul fast float %3124, %2072
  %3126 = fadd fast float %3115, %2896
  %3127 = fmul fast float %3126, %2072
  br label %3128

; <label>:3128                                    ; preds = %3082, %2946, %2840
  %3129 = phi float [ %2891, %2840 ], [ %2891, %2946 ], [ %3123, %3082 ]
  %3130 = phi float [ %2894, %2840 ], [ %2894, %2946 ], [ %3125, %3082 ]
  %3131 = phi float [ %2897, %2840 ], [ %2897, %2946 ], [ %3127, %3082 ]
  %3132 = phi float [ %2886, %2840 ], [ %2886, %2946 ], [ %3117, %3082 ]
  %3133 = phi float [ %2887, %2840 ], [ %2887, %2946 ], [ %3119, %3082 ]
  %3134 = phi float [ %2888, %2840 ], [ %2888, %2946 ], [ %3121, %3082 ]
  %3135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3136 = extractvalue %dx.types.CBufRet.i32 %3135, 0
  %3137 = icmp eq i32 %3136, 0
  br i1 %3137, label %3572, label %3138

; <label>:3138                                    ; preds = %3128
  %3139 = fptoui float %53 to i32
  %3140 = fptoui float %54 to i32
  %3141 = lshr i32 %3139, 4
  %3142 = lshr i32 %3140, 4
  %3143 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3144 = extractvalue %dx.types.CBufRet.i32 %3143, 0
  %3145 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3142, i32 %3144, i32 %3141)  ; UMad(a,b,c)
  %3146 = add nsw i32 %3136, -1
  %3147 = call i32 @dx.op.binary.i32(i32 37, i32 %3146, i32 0)  ; IMax(a,b)
  %3148 = call float @dx.op.binary.f32(i32 35, float %48, float 0.000000e+00)  ; FMax(a,b)
  %3149 = fptoui float %3148 to i32
  %3150 = lshr i32 %3149, 5
  %3151 = call i32 @dx.op.binary.i32(i32 40, i32 %3150, i32 8191)  ; UMin(a,b)
  %3152 = shl i32 %3151, 2
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3152, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = lshr i32 %3154, 16
  %3156 = and i32 %3154, 65535
  %3157 = lshr i32 %3154, 21
  %3158 = lshr i32 %3156, 5
  %3159 = call i32 @dx.op.binary.i32(i32 40, i32 %3158, i32 %3147)  ; UMin(a,b)
  %3160 = icmp ugt i32 %3157, %3159
  br i1 %3160, label %3572, label %3161

; <label>:3161                                    ; preds = %3138
  br label %3162

; <label>:3162                                    ; preds = %3562, %3161
  %3163 = phi i32 [ %3569, %3562 ], [ %3157, %3161 ]
  %3164 = phi float [ %3563, %3562 ], [ %3129, %3161 ]
  %3165 = phi float [ %3564, %3562 ], [ %3130, %3161 ]
  %3166 = phi float [ %3565, %3562 ], [ %3131, %3161 ]
  %3167 = phi float [ %3566, %3562 ], [ %3132, %3161 ]
  %3168 = phi float [ %3567, %3562 ], [ %3133, %3161 ]
  %3169 = phi float [ %3568, %3562 ], [ %3134, %3161 ]
  %3170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3171 = extractvalue %dx.types.CBufRet.i32 %3170, 0
  %3172 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3145, i32 %3171, i32 %3163)  ; UMad(a,b,c)
  %3173 = shl i32 %3172, 2
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3173, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = shl i32 %3163, 5
  %3177 = sub nsw i32 %3155, %3176
  %3178 = call i32 @dx.op.binary.i32(i32 37, i32 %3177, i32 0)  ; IMax(a,b)
  %3179 = call i32 @dx.op.binary.i32(i32 38, i32 %3178, i32 31)  ; IMin(a,b)
  %3180 = sub nsw i32 1, %3155
  %3181 = add nsw i32 %3180, %3156
  %3182 = call i32 @dx.op.binary.i32(i32 37, i32 %3181, i32 0)  ; IMax(a,b)
  %3183 = call i32 @dx.op.binary.i32(i32 38, i32 %3182, i32 32)  ; IMin(a,b)
  %3184 = and i32 %3183, 31
  %3185 = shl i32 -1, %3184
  %3186 = xor i32 %3185, -1
  %3187 = and i32 %3179, 31
  %3188 = shl i32 %3186, %3187
  %3189 = icmp eq i32 %3183, 32
  %3190 = select i1 %3189, i32 -1, i32 %3188
  %3191 = and i32 %3190, %3175
  %3192 = icmp eq i32 %3191, 0
  br i1 %3192, label %3562, label %3193

; <label>:3193                                    ; preds = %3162
  br label %3194

; <label>:3194                                    ; preds = %3274, %3193
  %3195 = phi i32 [ %3206, %3274 ], [ %3191, %3193 ]
  %3196 = phi float [ %3275, %3274 ], [ %3164, %3193 ]
  %3197 = phi float [ %3276, %3274 ], [ %3165, %3193 ]
  %3198 = phi float [ %3277, %3274 ], [ %3166, %3193 ]
  %3199 = phi float [ %3278, %3274 ], [ %3167, %3193 ]
  %3200 = phi float [ %3279, %3274 ], [ %3168, %3193 ]
  %3201 = phi float [ %3280, %3274 ], [ %3169, %3193 ]
  %3202 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3195)  ; FirstbitLo(value)
  %3203 = add i32 %3202, %3176
  %3204 = and i32 %3202, 31
  %3205 = shl i32 1, %3204
  %3206 = xor i32 %3205, %3195
  %3207 = mul i32 %3203, 112
  %3208 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.f32 %3208, 0
  %3210 = extractvalue %dx.types.ResRet.f32 %3208, 1
  %3211 = extractvalue %dx.types.ResRet.f32 %3208, 2
  %3212 = or i32 %3207, 12
  %3213 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3212, i32 undef)  ; BufferLoad(srv,index,wot)
  %3214 = extractvalue %dx.types.ResRet.f32 %3213, 0
  %3215 = add i32 %3207, 44
  %3216 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.f32 %3216, 0
  %3218 = add i32 %3207, 48
  %3219 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.f32 %3219, 0
  %3221 = extractvalue %dx.types.ResRet.f32 %3219, 1
  %3222 = extractvalue %dx.types.ResRet.f32 %3219, 2
  %3223 = add i32 %3207, 80
  %3224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3223, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.f32 %3224, 1
  %3226 = extractvalue %dx.types.ResRet.f32 %3224, 2
  %3227 = call float @dx.op.dot3.f32(i32 55, float %3209, float %3210, float %3211, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3228 = select i1 %151, float %3225, float %3209
  %3229 = select i1 %151, float %3227, float %3210
  %3230 = select i1 %151, float %3226, float %3211
  %3231 = fsub fast float %3220, %109
  %3232 = fsub fast float %3221, %110
  %3233 = fsub fast float %3222, %111
  %3234 = call float @dx.op.dot3.f32(i32 55, float %3231, float %3232, float %3233, float %3231, float %3232, float %3233)  ; Dot3(ax,ay,az,bx,by,bz)
  %3235 = call float @dx.op.unary.f32(i32 24, float %3234)  ; Sqrt(value)
  %3236 = fdiv fast float 1.000000e+00, %3235
  %3237 = fmul fast float %3236, %3231
  %3238 = fmul fast float %3236, %3232
  %3239 = fmul fast float %3236, %3233
  %3240 = fadd fast float %3235, %3214
  %3241 = fdiv fast float 1.000000e+00, %3240
  %3242 = fmul float %3217, %3241
  %3243 = fmul float %3242, %3242
  %3244 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3245 = and i32 %3205, %3191
  %3246 = icmp eq i32 %3245, 0
  br i1 %3246, label %3269, label %3247, !dx.controlflow.hints !63

; <label>:3247                                    ; preds = %3194
  %3248 = lshr i32 %3139, 5
  %3249 = lshr i32 %3140, 5
  %3250 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %3248, i32 %3249, i32 %3203, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = and i32 %3251, 3
  %3253 = icmp eq i32 %3252, 0
  %3254 = select i1 %3253, float 1.000000e+00, float 0.000000e+00
  %3255 = icmp eq i32 %3252, 3
  br i1 %3255, label %3256, label %3269

; <label>:3256                                    ; preds = %3247
  %3257 = lshr i32 %3251, 10
  %3258 = and i32 %3257, 8160
  %3259 = and i32 %3140, 31
  %3260 = or i32 %3258, %3259
  %3261 = lshr i32 %3251, 1
  %3262 = and i32 %3261, 16352
  %3263 = and i32 %3139, 31
  %3264 = or i32 %3262, %3263
  %3265 = lshr i32 %3251, 23
  %3266 = and i32 %3265, 255
  %3267 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %3264, i32 %3260, i32 %3266, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3268 = extractvalue %dx.types.ResRet.f32 %3267, 0
  br label %3269

; <label>:3269                                    ; preds = %3256, %3247, %3194
  %3270 = phi float [ %3268, %3256 ], [ %3254, %3247 ], [ 0.000000e+00, %3194 ]
  %3271 = call float @dx.op.binary.f32(i32 36, float %3270, float %3270)  ; FMin(a,b)
  %3272 = call float @dx.op.binary.f32(i32 36, float %3270, float %3271)  ; FMin(a,b)
  %3273 = fcmp fast ogt float %3272, 0.000000e+00
  br i1 %3273, label %3282, label %3274, !dx.controlflow.hints !64

; <label>:3274                                    ; preds = %3518, %3269
  %3275 = phi float [ %3196, %3269 ], [ %3558, %3518 ]
  %3276 = phi float [ %3197, %3269 ], [ %3559, %3518 ]
  %3277 = phi float [ %3198, %3269 ], [ %3560, %3518 ]
  %3278 = phi float [ %3199, %3269 ], [ %3552, %3518 ]
  %3279 = phi float [ %3200, %3269 ], [ %3553, %3518 ]
  %3280 = phi float [ %3201, %3269 ], [ %3554, %3518 ]
  %3281 = icmp eq i32 %3195, %3205
  br i1 %3281, label %3561, label %3194

; <label>:3282                                    ; preds = %3269
  %3283 = fmul fast float %3270, %3228
  %3284 = fmul fast float %3270, %3229
  %3285 = fmul fast float %3270, %3230
  %3286 = fsub fast float %3222, %2474
  %3287 = fcmp fast ogt float %3286, 0.000000e+00
  %3288 = fsub fast float %111, %2474
  %3289 = fcmp fast ogt float %3288, 0.000000e+00
  %3290 = xor i1 %3289, %3287
  %3291 = fsub fast float %2474, %3222
  %3292 = fmul fast float %3291, 2.000000e+00
  %3293 = fadd fast float %3292, %3222
  %3294 = select i1 %3290, float %3222, float %3293
  %3295 = fsub fast float %3294, %111
  %3296 = call float @dx.op.dot3.f32(i32 55, float %3231, float %3232, float %3295, float %3231, float %3232, float %3295)  ; Dot3(ax,ay,az,bx,by,bz)
  %3297 = call float @dx.op.unary.f32(i32 25, float %3296)  ; Rsqrt(value)
  %3298 = fmul fast float %3297, %3231
  %3299 = fmul fast float %3297, %3232
  %3300 = fmul fast float %3297, %3295
  %3301 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2482)  ; Dot3(ax,ay,az,bx,by,bz)
  %3302 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3298, float %3299, float %3300)  ; Dot3(ax,ay,az,bx,by,bz)
  %3303 = fdiv fast float 1.000000e+00, %3302
  %3304 = fmul fast float %3303, %3301
  %3305 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3288, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3306 = fcmp fast ogt float %3305, 0.000000e+00
  %3307 = fcmp fast olt float %3305, 0.000000e+00
  %3308 = zext i1 %3306 to i32
  %3309 = zext i1 %3307 to i32
  %3310 = sub nsw i32 %3308, %3309
  %3311 = sitofp i32 %3310 to float
  %3312 = fsub fast float %3294, %2474
  %3313 = call float @dx.op.dot3.f32(i32 55, float %3231, float %3232, float %3312, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3314 = fcmp fast ogt float %3313, 0.000000e+00
  %3315 = fcmp fast olt float %3313, 0.000000e+00
  %3316 = zext i1 %3314 to i32
  %3317 = zext i1 %3315 to i32
  %3318 = sub nsw i32 %3316, %3317
  %3319 = sitofp i32 %3318 to float
  %3320 = fcmp fast une float %3311, %3319
  br i1 %3320, label %3321, label %3331

; <label>:3321                                    ; preds = %3282
  %3322 = fmul fast float %3304, %3300
  %3323 = fmul fast float %3304, %3299
  %3324 = fmul fast float %3304, %3298
  %3325 = fmul fast float %3324, %3324
  %3326 = fmul fast float %3323, %3323
  %3327 = fadd fast float %3325, %3326
  %3328 = fmul fast float %3322, %3322
  %3329 = fadd fast float %3327, %3328
  %3330 = call float @dx.op.unary.f32(i32 24, float %3329)  ; Sqrt(value)
  br label %3343

; <label>:3331                                    ; preds = %3282
  %3332 = icmp slt i32 %3310, 0
  br i1 %3332, label %3333, label %3343

; <label>:3333                                    ; preds = %3331
  %3334 = fsub fast float %109, %3220
  %3335 = fsub fast float %110, %3221
  %3336 = fsub fast float %111, %3294
  %3337 = fmul fast float %3334, %3334
  %3338 = fmul fast float %3335, %3335
  %3339 = fadd fast float %3337, %3338
  %3340 = fmul fast float %3336, %3336
  %3341 = fadd fast float %3339, %3340
  %3342 = call float @dx.op.unary.f32(i32 24, float %3341)  ; Sqrt(value)
  br label %3343

; <label>:3343                                    ; preds = %3333, %3331, %3321
  %3344 = phi float [ %3330, %3321 ], [ %3342, %3333 ], [ 0.000000e+00, %3331 ]
  %3345 = and i1 %3289, %3287
  %3346 = fsub fast float -0.000000e+00, %3344
  %3347 = select i1 %3345, float -0.000000e+00, float %3346
  %3348 = fmul fast float %2475, 0x3FF7154760000000
  %3349 = fmul fast float %3348, %3347
  %3350 = fmul fast float %2476, 0x3FF7154760000000
  %3351 = fmul fast float %3350, %3347
  %3352 = fmul fast float %2477, 0x3FF7154760000000
  %3353 = fmul fast float %3352, %3347
  %3354 = call float @dx.op.unary.f32(i32 21, float %3349)  ; Exp(value)
  %3355 = call float @dx.op.unary.f32(i32 21, float %3351)  ; Exp(value)
  %3356 = call float @dx.op.unary.f32(i32 21, float %3353)  ; Exp(value)
  %3357 = call float @dx.op.unary.f32(i32 7, float %3354)  ; Saturate(value)
  %3358 = call float @dx.op.unary.f32(i32 7, float %3355)  ; Saturate(value)
  %3359 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3360 = fmul fast float %3283, %3357
  %3361 = fmul fast float %3284, %3358
  %3362 = fmul fast float %3285, %3359
  %3363 = fsub fast float %3237, %2674
  %3364 = fsub fast float %3238, %2673
  %3365 = fsub fast float %3239, %2672
  %3366 = call float @dx.op.dot3.f32(i32 55, float %3363, float %3364, float %3365, float %3363, float %3364, float %3365)  ; Dot3(ax,ay,az,bx,by,bz)
  %3367 = call float @dx.op.unary.f32(i32 25, float %3366)  ; Rsqrt(value)
  %3368 = fmul fast float %3367, %3363
  %3369 = fmul fast float %3367, %3364
  %3370 = fmul fast float %3367, %3365
  %3371 = call float @dx.op.dot3.f32(i32 55, float %3237, float %3238, float %3239, float %2681, float %2682, float %2683)  ; Dot3(ax,ay,az,bx,by,bz)
  %3372 = call float @dx.op.dot3.f32(i32 55, float %2671, float %2670, float %2669, float %3368, float %3369, float %3370)  ; Dot3(ax,ay,az,bx,by,bz)
  %3373 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3374 = fmul fast float %3373, %3244
  %3375 = fmul fast float %3373, %3373
  %3376 = fmul fast float %3375, %2701
  %3377 = call float @dx.op.unary.f32(i32 7, float %3376)  ; Saturate(value)
  %3378 = fmul fast float %3374, %3377
  %3379 = bitcast float %3234 to i32
  %3380 = ashr i32 %3379, 1
  %3381 = sub nsw i32 1597463007, %3380
  %3382 = bitcast i32 %3381 to float
  %3383 = fmul fast float %3382, %3231
  %3384 = fmul fast float %3382, %3232
  %3385 = fmul fast float %3382, %3233
  %3386 = fsub fast float %3383, %2674
  %3387 = fsub fast float %3384, %2673
  %3388 = fsub fast float %3385, %2672
  %3389 = call float @dx.op.dot3.f32(i32 55, float %3386, float %3387, float %3388, float %3386, float %3387, float %3388)  ; Dot3(ax,ay,az,bx,by,bz)
  %3390 = call float @dx.op.unary.f32(i32 25, float %3389)  ; Rsqrt(value)
  %3391 = fmul fast float %3386, %3390
  %3392 = fmul fast float %3387, %3390
  %3393 = fmul fast float %3388, %3390
  %3394 = call float @dx.op.dot3.f32(i32 55, float %2681, float %2682, float %2683, float %3391, float %3392, float %3393)  ; Dot3(ax,ay,az,bx,by,bz)
  %3395 = fmul fast float %3394, %3394
  %3396 = call float @dx.op.unary.f32(i32 6, float %3371)  ; FAbs(value)
  %3397 = fsub fast float 1.000000e+00, %2684
  %3398 = call float @dx.op.binary.f32(i32 35, float %3397, float 0x3F847AE140000000)  ; FMax(a,b)
  %3399 = fmul fast float %3398, %3398
  %3400 = fmul fast float %3399, %3399
  %3401 = fsub fast float 1.000000e+00, %3400
  %3402 = fmul fast float %2688, %2688
  %3403 = fmul fast float %3402, %3401
  %3404 = fadd fast float %3403, %3400
  %3405 = bitcast float %3404 to i32
  %3406 = ashr i32 %3405, 1
  %3407 = add nsw i32 %3406, 532487669
  %3408 = bitcast i32 %3407 to float
  %3409 = fadd fast float %3408, %2688
  %3410 = fmul fast float %3400, %3395
  %3411 = fsub fast float 1.000000e+00, %3395
  %3412 = fadd fast float %3411, %3410
  %3413 = fmul fast float %3396, %3396
  %3414 = fmul fast float %3413, %3401
  %3415 = fadd fast float %3414, %3400
  %3416 = bitcast float %3415 to i32
  %3417 = ashr i32 %3416, 1
  %3418 = add nsw i32 %3417, 532487669
  %3419 = bitcast i32 %3418 to float
  %3420 = fadd fast float %3419, %3396
  %3421 = fmul fast float %3412, %3412
  %3422 = fmul fast float %3421, %3409
  %3423 = fmul fast float %3422, %3420
  %3424 = fdiv fast float 1.000000e+00, %3423
  %3425 = bitcast float %3400 to i32
  %3426 = sitofp i32 %3425 to float
  %3427 = fmul fast float %3426, 0x3FE7F73180000000
  %3428 = fadd fast float %3427, 0x41AFE27C40000000
  %3429 = fptosi float %3428 to i32
  %3430 = bitcast i32 %3429 to float
  %3431 = fmul fast float %3217, 0x3FD80E9D60000000
  %3432 = fmul fast float %3431, %3382
  %3433 = fadd fast float %3430, %3432
  %3434 = bitcast float %3433 to i32
  %3435 = sub nsw i32 2129859010, %3434
  %3436 = bitcast i32 %3435 to float
  %3437 = fmul fast float %3400, %3424
  %3438 = fmul fast float %3437, %3430
  %3439 = fmul fast float %3438, %3436
  %3440 = call float @dx.op.unary.f32(i32 6, float %3372)  ; FAbs(value)
  %3441 = fsub fast float 1.000000e+00, %3440
  %3442 = bitcast float %3441 to i32
  %3443 = sitofp i32 %3442 to float
  %3444 = fmul fast float %3443, 5.000000e+00
  %3445 = fadd fast float %3444, 0xC1EFBF8940000000
  %3446 = fptosi float %3445 to i32
  %3447 = bitcast i32 %3446 to float
  %3448 = fsub fast float 1.000000e+00, %2675
  %3449 = fsub fast float 1.000000e+00, %2676
  %3450 = fsub fast float 1.000000e+00, %2686
  %3451 = fmul fast float %3447, %3448
  %3452 = fmul fast float %3447, %3449
  %3453 = fmul fast float %3447, %3450
  %3454 = fadd fast float %3451, %2675
  %3455 = fadd fast float %3452, %2676
  %3456 = fadd fast float %3453, %2686
  br i1 %2813, label %3457, label %3480

; <label>:3457                                    ; preds = %3343
  %3458 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %2052, float %3440, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3459 = extractvalue %dx.types.ResRet.f32 %3458, 0
  %3460 = extractvalue %dx.types.ResRet.f32 %3458, 1
  %3461 = extractvalue %dx.types.ResRet.f32 %3458, 2
  %3462 = fadd fast float %3459, -5.000000e-01
  %3463 = fadd fast float %3460, -5.000000e-01
  %3464 = fadd fast float %3461, -5.000000e-01
  %3465 = fmul fast float %2675, 4.000000e+00
  %3466 = fmul fast float %3465, %3448
  %3467 = fmul fast float %3466, %3462
  %3468 = fmul fast float %2676, 4.000000e+00
  %3469 = fmul fast float %3468, %3449
  %3470 = fmul fast float %3469, %3463
  %3471 = fmul fast float %2686, 4.000000e+00
  %3472 = fmul fast float %3471, %3450
  %3473 = fmul fast float %3472, %3464
  %3474 = fadd fast float %3467, %3454
  %3475 = fadd fast float %3470, %3455
  %3476 = fadd fast float %3473, %3456
  %3477 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3478 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3479 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  br label %3480

; <label>:3480                                    ; preds = %3457, %3343
  %3481 = phi float [ %3477, %3457 ], [ %3454, %3343 ]
  %3482 = phi float [ %3478, %3457 ], [ %3455, %3343 ]
  %3483 = phi float [ %3479, %3457 ], [ %3456, %3343 ]
  %3484 = fmul fast float %3371, 9.843750e-01
  %3485 = fadd fast float %3484, 7.812500e-03
  %3486 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %3485, float %2803, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 2
  %3488 = extractvalue %dx.types.ResRet.f32 %3486, 3
  %3489 = fmul fast float %3487, %2675
  %3490 = fmul fast float %3487, %2676
  %3491 = fmul fast float %3487, %2686
  %3492 = fadd fast float %3489, %3488
  %3493 = fadd fast float %3490, %3488
  %3494 = fadd fast float %3491, %3488
  br i1 %2813, label %3495, label %3518

; <label>:3495                                    ; preds = %3480
  %3496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %2052, float %3371, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3497 = extractvalue %dx.types.ResRet.f32 %3496, 0
  %3498 = extractvalue %dx.types.ResRet.f32 %3496, 1
  %3499 = extractvalue %dx.types.ResRet.f32 %3496, 2
  %3500 = fadd fast float %3497, -5.000000e-01
  %3501 = fadd fast float %3498, -5.000000e-01
  %3502 = fadd fast float %3499, -5.000000e-01
  %3503 = fmul fast float %2675, 4.000000e+00
  %3504 = fmul fast float %3503, %3448
  %3505 = fmul fast float %3504, %3500
  %3506 = fmul fast float %2676, 4.000000e+00
  %3507 = fmul fast float %3506, %3449
  %3508 = fmul fast float %3507, %3501
  %3509 = fmul fast float %2686, 4.000000e+00
  %3510 = fmul fast float %3509, %3450
  %3511 = fmul fast float %3510, %3502
  %3512 = fadd fast float %3505, %3492
  %3513 = fadd fast float %3508, %3493
  %3514 = fadd fast float %3511, %3494
  %3515 = call float @dx.op.unary.f32(i32 7, float %3512)  ; Saturate(value)
  %3516 = call float @dx.op.unary.f32(i32 7, float %3513)  ; Saturate(value)
  %3517 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  br label %3518

; <label>:3518                                    ; preds = %3495, %3480
  %3519 = phi float [ %3515, %3495 ], [ %3492, %3480 ]
  %3520 = phi float [ %3516, %3495 ], [ %3493, %3480 ]
  %3521 = phi float [ %3517, %3495 ], [ %3494, %3480 ]
  %3522 = call float @dx.op.binary.f32(i32 35, float %3520, float %3521)  ; FMax(a,b)
  %3523 = call float @dx.op.binary.f32(i32 35, float %3519, float %3522)  ; FMax(a,b)
  %3524 = fsub fast float 1.000000e+00, %3523
  %3525 = fmul fast float %3481, %3439
  %3526 = fmul fast float %3482, %3439
  %3527 = fmul fast float %3483, %3439
  %3528 = fsub fast float 1.000000e+00, %3372
  %3529 = bitcast float %3528 to i32
  %3530 = sitofp i32 %3529 to float
  %3531 = fmul fast float %3530, 5.000000e+00
  %3532 = fadd fast float %3531, 0xC1EFBF8940000000
  %3533 = fptosi float %3532 to i32
  %3534 = bitcast i32 %3533 to float
  %3535 = fmul fast float %3534, %2051
  %3536 = fmul fast float %3524, %3535
  %3537 = fmul fast float %3536, %2863
  %3538 = fmul fast float %3536, %2864
  %3539 = fmul fast float %3536, %2865
  %3540 = fadd fast float %3537, %3525
  %3541 = fadd fast float %3538, %3526
  %3542 = fadd fast float %3539, %3527
  %3543 = fmul fast float %3360, %2072
  %3544 = fmul fast float %3543, %3378
  %3545 = fmul fast float %3544, %3524
  %3546 = fmul fast float %3361, %2072
  %3547 = fmul fast float %3546, %3378
  %3548 = fmul fast float %3547, %3524
  %3549 = fmul fast float %3362, %2072
  %3550 = fmul fast float %3549, %3378
  %3551 = fmul fast float %3550, %3524
  %3552 = fadd fast float %3545, %3199
  %3553 = fadd fast float %3548, %3200
  %3554 = fadd fast float %3551, %3201
  %3555 = fmul fast float %3544, %3540
  %3556 = fmul fast float %3547, %3541
  %3557 = fmul fast float %3550, %3542
  %3558 = fadd fast float %3555, %3196
  %3559 = fadd fast float %3556, %3197
  %3560 = fadd fast float %3557, %3198
  br label %3274

; <label>:3561                                    ; preds = %3274
  br label %3562

; <label>:3562                                    ; preds = %3561, %3162
  %3563 = phi float [ %3164, %3162 ], [ %3275, %3561 ]
  %3564 = phi float [ %3165, %3162 ], [ %3276, %3561 ]
  %3565 = phi float [ %3166, %3162 ], [ %3277, %3561 ]
  %3566 = phi float [ %3167, %3162 ], [ %3278, %3561 ]
  %3567 = phi float [ %3168, %3162 ], [ %3279, %3561 ]
  %3568 = phi float [ %3169, %3162 ], [ %3280, %3561 ]
  %3569 = add i32 %3163, 1
  %3570 = icmp ugt i32 %3569, %3159
  br i1 %3570, label %3571, label %3162

; <label>:3571                                    ; preds = %3562
  br label %3572

; <label>:3572                                    ; preds = %3571, %3138, %3128
  %3573 = phi float [ %3129, %3128 ], [ %3129, %3138 ], [ %3563, %3571 ]
  %3574 = phi float [ %3130, %3128 ], [ %3130, %3138 ], [ %3564, %3571 ]
  %3575 = phi float [ %3131, %3128 ], [ %3131, %3138 ], [ %3565, %3571 ]
  %3576 = phi float [ %3132, %3128 ], [ %3132, %3138 ], [ %3566, %3571 ]
  %3577 = phi float [ %3133, %3128 ], [ %3133, %3138 ], [ %3567, %3571 ]
  %3578 = phi float [ %3134, %3128 ], [ %3134, %3138 ], [ %3568, %3571 ]
  %3579 = call float @dx.op.unary.f32(i32 24, float %2678)  ; Sqrt(value)
  %3580 = call float @dx.op.unary.f32(i32 24, float %2679)  ; Sqrt(value)
  %3581 = call float @dx.op.unary.f32(i32 24, float %2680)  ; Sqrt(value)
  %3582 = fmul fast float %3579, %3576
  %3583 = fmul fast float %3580, %3577
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 0
  br i1 %151, label %3586, label %3606

; <label>:3586                                    ; preds = %3572
  %3587 = fadd fast float %3578, %2049
  %3588 = fmul fast float %3587, %2050
  %3589 = fsub fast float 1.000000e+00, %2050
  %3590 = call float @dx.op.unary.f32(i32 7, float %3589)  ; Saturate(value)
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 3
  %3593 = fmul fast float %3592, %3590
  %3594 = fadd fast float %3593, %3588
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = fmul fast float %3596, %2869
  %3598 = fsub fast float %3594, %3597
  %3599 = fadd fast float %3583, %3582
  %3600 = fmul fast float %3585, %3599
  %3601 = extractvalue %dx.types.CBufRet.f32 %3591, 1
  %3602 = fsub fast float %3598, %3601
  %3603 = extractvalue %dx.types.CBufRet.f32 %3591, 2
  %3604 = fmul fast float %3602, %3603
  %3605 = call float @dx.op.unary.f32(i32 7, float %3604)  ; Saturate(value)
  br label %3621

; <label>:3606                                    ; preds = %3572
  %3607 = fmul fast float %3581, %3578
  %3608 = fmul fast float %3585, %3582
  %3609 = fmul fast float %3585, %3583
  %3610 = fmul fast float %3607, %3585
  %3611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3612 = extractvalue %dx.types.ResRet.i32 %3611, 0
  %3613 = and i32 %3612, 32
  %3614 = icmp eq i32 %3613, 0
  br i1 %3614, label %3621, label %3615

; <label>:3615                                    ; preds = %3606
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = fmul fast float %3617, 0x3FE99999A0000000
  %3619 = fadd fast float %3617, %3608
  %3620 = fadd fast float %3618, %3610
  br label %3621

; <label>:3621                                    ; preds = %3615, %3606, %3586
  %3622 = phi float [ %3600, %3586 ], [ %3619, %3615 ], [ %3608, %3606 ]
  %3623 = phi float [ %3605, %3586 ], [ %3609, %3615 ], [ %3609, %3606 ]
  %3624 = phi float [ 1.000000e+00, %3586 ], [ %3620, %3615 ], [ %3610, %3606 ]
  %3625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3626 = extractvalue %dx.types.CBufRet.f32 %3625, 0
  %3627 = fmul fast float %3626, %3574
  %3628 = fmul fast float %3626, %3575
  %3629 = fadd fast float %3574, %3573
  %3630 = select i1 %151, float %3629, float %3573
  %3631 = fmul float %3630, %3626
  %3632 = select i1 %151, float 0.000000e+00, float %3627
  %3633 = select i1 %151, float 0.000000e+00, float %3628
  %3634 = fmul fast float %3622, %3579
  %3635 = fmul fast float %3623, %3580
  %3636 = fmul fast float %3624, %3581
  %3637 = fadd fast float %3631, %3634
  %3638 = fadd fast float %3632, %3635
  %3639 = fadd fast float %3633, %3636
  %3640 = select i1 %151, float %3623, float %3638
  %3641 = select i1 %151, float %3624, float %3639
  %3642 = call float @dx.op.binary.f32(i32 36, float %3637, float 3.225500e+04)  ; FMin(a,b)
  %3643 = call float @dx.op.binary.f32(i32 36, float %3640, float 3.225500e+04)  ; FMin(a,b)
  %3644 = call float @dx.op.binary.f32(i32 36, float %3641, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

