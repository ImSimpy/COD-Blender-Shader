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
; shader hash: 847bfc6f65a07802b8322ceba48eaa7f
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
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 256, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 200, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 240, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 208, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 216, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %231, label %1409, label %713

; <label>:713                                     ; preds = %699
  %714 = icmp ult i32 %259, 2
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = or i32 %718, %716
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %1409, label %721

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
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 236, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 228, i32 undef)  ; BufferLoad(srv,index,wot)
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
  br i1 %878, label %1409, label %879

; <label>:879                                     ; preds = %876
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 16
  %883 = icmp eq i32 %882, 0
  br i1 %883, label %1077, label %884

; <label>:884                                     ; preds = %879
  %885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.i32 %885, 0
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 204, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 244, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 212, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 220, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 80, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = lshr i32 %1218, 8
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = call float @dx.op.dot3.f32(i32 55, float %1091, float %1092, float %1093, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1225 = fmul fast float %1223, %1224
  %1226 = fadd fast float %1225, %1220
  %1227 = fmul fast float %1226, 0x3F70101020000000
  %1228 = call float @dx.op.unary.f32(i32 7, float %1227)  ; Saturate(value)
  br i1 %714, label %1229, label %1237

; <label>:1229                                    ; preds = %1213
  %1230 = fsub fast float 1.000000e+00, %877
  %1231 = fmul fast float %1230, %702
  %1232 = fmul fast float %1230, %703
  %1233 = fmul fast float %1230, %704
  %1234 = fmul fast float %1230, %705
  %1235 = fmul fast float %1230, %706
  %1236 = fmul fast float %1230, %707
  br label %1237

; <label>:1237                                    ; preds = %1229, %1213
  %1238 = phi float [ %1231, %1229 ], [ %702, %1213 ]
  %1239 = phi float [ %1232, %1229 ], [ %703, %1213 ]
  %1240 = phi float [ %1233, %1229 ], [ %704, %1213 ]
  %1241 = phi float [ %1234, %1229 ], [ %705, %1213 ]
  %1242 = phi float [ %1235, %1229 ], [ %706, %1213 ]
  %1243 = phi float [ %1236, %1229 ], [ %707, %1213 ]
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 40, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 3
  %1247 = icmp eq i32 %1246, 3
  br i1 %1247, label %1326, label %1248

; <label>:1248                                    ; preds = %1237
  %1249 = and i32 %1245, 16
  %1250 = icmp ne i32 %1249, 0
  %1251 = select i1 %1250, float %877, float 0.000000e+00
  %1252 = icmp eq i32 %1246, 0
  br i1 %1252, label %1253, label %1281

; <label>:1253                                    ; preds = %1248
  %1254 = and i32 %1245, 64
  %1255 = icmp ne i32 %1254, 0
  %1256 = select i1 %1255, float %877, float 0.000000e+00
  %1257 = fsub fast float %1091, %1238
  %1258 = fsub fast float %1092, %1239
  %1259 = fsub fast float %1093, %1240
  %1260 = fmul fast float %1251, %1257
  %1261 = fmul fast float %1251, %1258
  %1262 = fmul fast float %1251, %1259
  %1263 = fadd fast float %1260, %1238
  %1264 = fadd fast float %1261, %1239
  %1265 = fadd fast float %1262, %1240
  %1266 = fsub fast float %1078, %708
  %1267 = fmul fast float %1251, %1266
  %1268 = fadd fast float %1267, %708
  %1269 = fsub fast float %1214, %1241
  %1270 = fsub fast float %1215, %1242
  %1271 = fsub fast float %1216, %1243
  %1272 = fmul fast float %1256, %1269
  %1273 = fmul fast float %1256, %1270
  %1274 = fmul fast float %1256, %1271
  %1275 = fadd fast float %1272, %1241
  %1276 = fadd fast float %1273, %1242
  %1277 = fadd fast float %1274, %1243
  %1278 = fsub fast float %1228, %712
  %1279 = fmul fast float %1251, %1278
  %1280 = fadd fast float %1279, %712
  br label %1326

; <label>:1281                                    ; preds = %1248
  %1282 = icmp eq i32 %1246, 1
  br i1 %1282, label %1283, label %1296

; <label>:1283                                    ; preds = %1281
  %1284 = fadd fast float %1091, -1.000000e+00
  %1285 = fadd fast float %1092, -1.000000e+00
  %1286 = fadd fast float %1093, -1.000000e+00
  %1287 = fmul fast float %1251, %1284
  %1288 = fmul fast float %1251, %1285
  %1289 = fmul fast float %1251, %1286
  %1290 = fadd fast float %1287, 1.000000e+00
  %1291 = fadd fast float %1288, 1.000000e+00
  %1292 = fadd fast float %1289, 1.000000e+00
  %1293 = fmul fast float %1290, %1238
  %1294 = fmul fast float %1291, %1239
  %1295 = fmul fast float %1292, %1240
  br label %1326

; <label>:1296                                    ; preds = %1281
  %1297 = icmp eq i32 %1246, 2
  br i1 %1297, label %1298, label %1326

; <label>:1298                                    ; preds = %1296
  %1299 = call float @dx.op.unary.f32(i32 24, float %1091)  ; Sqrt(value)
  %1300 = call float @dx.op.unary.f32(i32 24, float %1092)  ; Sqrt(value)
  %1301 = call float @dx.op.unary.f32(i32 24, float %1093)  ; Sqrt(value)
  %1302 = fadd fast float %1299, -5.000000e-01
  %1303 = fadd fast float %1300, -5.000000e-01
  %1304 = fadd fast float %1301, -5.000000e-01
  %1305 = fmul fast float %1302, %1251
  %1306 = fmul fast float %1303, %1251
  %1307 = fmul fast float %1304, %1251
  %1308 = fadd fast float %1305, 5.000000e-01
  %1309 = fadd fast float %1306, 5.000000e-01
  %1310 = fadd fast float %1307, 5.000000e-01
  %1311 = fmul fast float %1308, 2.000000e+00
  %1312 = fsub fast float 1.000000e+00, %1311
  %1313 = fmul fast float %1312, %1238
  %1314 = fadd fast float %1313, %1311
  %1315 = fmul fast float %1314, %1238
  %1316 = fmul fast float %1309, 2.000000e+00
  %1317 = fsub fast float 1.000000e+00, %1316
  %1318 = fmul fast float %1317, %1239
  %1319 = fadd fast float %1318, %1316
  %1320 = fmul fast float %1319, %1239
  %1321 = fmul fast float %1310, 2.000000e+00
  %1322 = fsub fast float 1.000000e+00, %1321
  %1323 = fmul fast float %1322, %1240
  %1324 = fadd fast float %1323, %1321
  %1325 = fmul fast float %1324, %1240
  br label %1326

; <label>:1326                                    ; preds = %1298, %1296, %1283, %1253, %1237
  %1327 = phi float [ %1238, %1237 ], [ %1315, %1298 ], [ %1238, %1296 ], [ %1293, %1283 ], [ %1263, %1253 ]
  %1328 = phi float [ %1239, %1237 ], [ %1320, %1298 ], [ %1239, %1296 ], [ %1294, %1283 ], [ %1264, %1253 ]
  %1329 = phi float [ %1240, %1237 ], [ %1325, %1298 ], [ %1240, %1296 ], [ %1295, %1283 ], [ %1265, %1253 ]
  %1330 = phi float [ %1241, %1237 ], [ %1241, %1298 ], [ %1241, %1296 ], [ %1241, %1283 ], [ %1275, %1253 ]
  %1331 = phi float [ %1242, %1237 ], [ %1242, %1298 ], [ %1242, %1296 ], [ %1242, %1283 ], [ %1276, %1253 ]
  %1332 = phi float [ %1243, %1237 ], [ %1243, %1298 ], [ %1243, %1296 ], [ %1243, %1283 ], [ %1277, %1253 ]
  %1333 = phi float [ %708, %1237 ], [ %708, %1298 ], [ %708, %1296 ], [ %708, %1283 ], [ %1268, %1253 ]
  %1334 = phi float [ %712, %1237 ], [ %712, %1298 ], [ %712, %1296 ], [ %712, %1283 ], [ %1280, %1253 ]
  %1335 = and i32 %1245, 12
  %1336 = icmp eq i32 %1335, 12
  br i1 %1336, label %1409, label %1337

; <label>:1337                                    ; preds = %1326
  %1338 = and i32 %1245, 2097184
  %1339 = icmp eq i32 %1338, 2097184
  %1340 = select i1 %1339, float %877, float 0.000000e+00
  %1341 = and i32 %1245, 4194336
  %1342 = icmp eq i32 %1341, 4194336
  %1343 = select i1 %1342, float %877, float 0.000000e+00
  %1344 = and i32 %1245, 8388640
  %1345 = icmp eq i32 %1344, 8388640
  %1346 = select i1 %1345, float %877, float 0.000000e+00
  %1347 = icmp eq i32 %1335, 0
  br i1 %1347, label %1348, label %1361

; <label>:1348                                    ; preds = %1337
  %1349 = fsub fast float %1169, %700
  %1350 = fsub fast float %1170, %701
  %1351 = fmul fast float %1340, %1349
  %1352 = fmul fast float %1340, %1350
  %1353 = fadd fast float %1351, %700
  %1354 = fadd fast float %1352, %701
  %1355 = fsub fast float %1171, %711
  %1356 = fmul fast float %1343, %1355
  %1357 = fadd fast float %1356, %711
  %1358 = fsub fast float %1168, %710
  %1359 = fmul fast float %1346, %1358
  %1360 = fadd fast float %1359, %710
  br label %1409

; <label>:1361                                    ; preds = %1337
  %1362 = icmp eq i32 %1335, 4
  br i1 %1362, label %1363, label %1395

; <label>:1363                                    ; preds = %1361
  %1364 = fmul fast float %1340, %1169
  %1365 = fmul fast float %1340, %1170
  %1366 = fadd fast float %1364, %700
  %1367 = fadd fast float %1365, %701
  %1368 = call float @dx.op.binary.f32(i32 36, float %711, float %1171)  ; FMin(a,b)
  %1369 = fsub fast float %1368, %711
  %1370 = fmul fast float %1369, %1343
  %1371 = fadd fast float %1370, %711
  %1372 = fadd fast float %1168, %710
  %1373 = fmul fast float %1372, 0x3FF337FAE0000000
  %1374 = fmul fast float %710, %710
  %1375 = fmul fast float %1168, %1168
  %1376 = fadd fast float %1375, %1374
  %1377 = fmul fast float %1376, 0x3FE5152B00000000
  %1378 = fmul fast float %710, 0xBFCC1F85E0000000
  %1379 = fmul fast float %1378, %1168
  %1380 = fadd fast float %1379, 0xBFE1363700000000
  %1381 = fadd fast float %1380, %1373
  %1382 = fsub fast float %1381, %1377
  %1383 = fmul fast float %1372, 0x3FBA6F0D00000000
  %1384 = fmul fast float %1376, 0x3FD0432880000000
  %1385 = fmul fast float %710, 0xBFEF110800000000
  %1386 = fmul fast float %1385, %1168
  %1387 = fadd fast float %1386, 1.000000e+00
  %1388 = fsub fast float %1387, %1383
  %1389 = fadd fast float %1388, %1384
  %1390 = fdiv fast float %1382, %1389
  %1391 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1392 = fsub fast float %1391, %710
  %1393 = fmul fast float %1392, %1346
  %1394 = fadd fast float %1393, %710
  br label %1409

; <label>:1395                                    ; preds = %1361
  %1396 = icmp eq i32 %1335, 8
  br i1 %1396, label %1397, label %1409

; <label>:1397                                    ; preds = %1395
  %1398 = fmul fast float %1340, %1169
  %1399 = fmul fast float %1340, %1170
  %1400 = fadd fast float %1398, %700
  %1401 = fadd fast float %1399, %701
  %1402 = call float @dx.op.binary.f32(i32 36, float %711, float %1171)  ; FMin(a,b)
  %1403 = fsub fast float %1402, %711
  %1404 = fmul fast float %1403, %1343
  %1405 = fadd fast float %1404, %711
  %1406 = fsub fast float %1168, %710
  %1407 = fmul fast float %1346, %1406
  %1408 = fadd fast float %1407, %710
  br label %1409

; <label>:1409                                    ; preds = %1397, %1395, %1363, %1348, %1326, %876, %713, %699
  %1410 = phi float [ %700, %1326 ], [ %700, %876 ], [ %700, %699 ], [ %700, %713 ], [ %1353, %1348 ], [ %1366, %1363 ], [ %700, %1395 ], [ %1400, %1397 ]
  %1411 = phi float [ %701, %1326 ], [ %701, %876 ], [ %701, %699 ], [ %701, %713 ], [ %1354, %1348 ], [ %1367, %1363 ], [ %701, %1395 ], [ %1401, %1397 ]
  %1412 = phi float [ %1327, %1326 ], [ %702, %876 ], [ %702, %699 ], [ %702, %713 ], [ %1327, %1348 ], [ %1327, %1363 ], [ %1327, %1395 ], [ %1327, %1397 ]
  %1413 = phi float [ %1328, %1326 ], [ %703, %876 ], [ %703, %699 ], [ %703, %713 ], [ %1328, %1348 ], [ %1328, %1363 ], [ %1328, %1395 ], [ %1328, %1397 ]
  %1414 = phi float [ %1329, %1326 ], [ %704, %876 ], [ %704, %699 ], [ %704, %713 ], [ %1329, %1348 ], [ %1329, %1363 ], [ %1329, %1395 ], [ %1329, %1397 ]
  %1415 = phi float [ %1330, %1326 ], [ %705, %876 ], [ %705, %699 ], [ %705, %713 ], [ %1330, %1348 ], [ %1330, %1363 ], [ %1330, %1395 ], [ %1330, %1397 ]
  %1416 = phi float [ %1331, %1326 ], [ %706, %876 ], [ %706, %699 ], [ %706, %713 ], [ %1331, %1348 ], [ %1331, %1363 ], [ %1331, %1395 ], [ %1331, %1397 ]
  %1417 = phi float [ %1332, %1326 ], [ %707, %876 ], [ %707, %699 ], [ %707, %713 ], [ %1332, %1348 ], [ %1332, %1363 ], [ %1332, %1395 ], [ %1332, %1397 ]
  %1418 = phi float [ %1333, %1326 ], [ %708, %876 ], [ %708, %699 ], [ %708, %713 ], [ %1333, %1348 ], [ %1333, %1363 ], [ %1333, %1395 ], [ %1333, %1397 ]
  %1419 = phi float [ %710, %1326 ], [ %710, %876 ], [ %710, %699 ], [ %710, %713 ], [ %1360, %1348 ], [ %1394, %1363 ], [ %710, %1395 ], [ %1408, %1397 ]
  %1420 = phi float [ %711, %1326 ], [ %711, %876 ], [ %711, %699 ], [ %711, %713 ], [ %1357, %1348 ], [ %1371, %1363 ], [ %711, %1395 ], [ %1405, %1397 ]
  %1421 = phi float [ %1334, %1326 ], [ %712, %876 ], [ %712, %699 ], [ %712, %713 ], [ %1334, %1348 ], [ %1334, %1363 ], [ %1334, %1395 ], [ %1334, %1397 ]
  %1422 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1423 = extractvalue %dx.types.CBufRet.f32 %1422, 0
  %1424 = call float @dx.op.dot2.f32(i32 54, float %1410, float %1411, float %1410, float %1411)  ; Dot2(ax,ay,bx,by)
  %1425 = fmul fast float %1424, 0x3FE3333340000000
  %1426 = fsub fast float 1.000000e+00, %1425
  %1427 = call float @dx.op.dot3.f32(i32 55, float %1410, float %1411, float %1426, float %1410, float %1411, float %1426)  ; Dot3(ax,ay,az,bx,by,bz)
  %1428 = call float @dx.op.unary.f32(i32 25, float %1427)  ; Rsqrt(value)
  %1429 = fmul fast float %1428, %1410
  %1430 = fmul fast float %1428, %1411
  %1431 = fmul fast float %1426, %1428
  %1432 = fmul fast float %1431, %56
  %1433 = fmul fast float %1431, %57
  %1434 = fmul fast float %1431, %58
  %1435 = fmul fast float %1429, %37
  %1436 = fmul fast float %1429, %38
  %1437 = fmul fast float %1429, %39
  %1438 = fmul fast float %61, %40
  %1439 = fmul fast float %1438, %1430
  %1440 = fmul fast float %64, %40
  %1441 = fmul fast float %1440, %1430
  %1442 = fmul fast float %67, %40
  %1443 = fmul fast float %1442, %1430
  %1444 = fadd fast float %1439, %1435
  %1445 = fmul fast float %1444, %55
  %1446 = fadd fast float %1445, %1432
  %1447 = fadd fast float %1441, %1436
  %1448 = fmul fast float %1447, %55
  %1449 = fadd fast float %1448, %1433
  %1450 = fadd fast float %1443, %1437
  %1451 = fmul fast float %1450, %55
  %1452 = fadd fast float %1451, %1434
  %1453 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1449, float %1452, float %1446, float %1449, float %1452)  ; Dot3(ax,ay,az,bx,by,bz)
  %1454 = call float @dx.op.unary.f32(i32 25, float %1453)  ; Rsqrt(value)
  %1455 = fmul fast float %1446, %1454
  %1456 = fmul fast float %1449, %1454
  %1457 = fmul fast float %1452, %1454
  %1458 = call float @dx.op.unary.f32(i32 83, float %109)  ; DerivCoarseX(value)
  %1459 = call float @dx.op.unary.f32(i32 83, float %110)  ; DerivCoarseX(value)
  %1460 = call float @dx.op.unary.f32(i32 83, float %111)  ; DerivCoarseX(value)
  %1461 = call float @dx.op.unary.f32(i32 84, float %109)  ; DerivCoarseY(value)
  %1462 = call float @dx.op.unary.f32(i32 84, float %110)  ; DerivCoarseY(value)
  %1463 = call float @dx.op.unary.f32(i32 84, float %111)  ; DerivCoarseY(value)
  %1464 = fadd fast float %1458, %109
  %1465 = fadd fast float %1459, %110
  %1466 = fadd fast float %1460, %111
  %1467 = fadd fast float %1461, %109
  %1468 = fadd fast float %1462, %110
  %1469 = fadd fast float %1463, %111
  %1470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1471 = extractvalue %dx.types.CBufRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.CBufRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.CBufRet.f32 %1470, 2
  %1474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.f32 %1474, 2
  %1476 = extractvalue %dx.types.CBufRet.f32 %1474, 3
  %1477 = fmul fast float %1471, %53
  %1478 = fmul fast float %1477, %1475
  %1479 = fmul fast float %1472, %54
  %1480 = fmul fast float %1479, %1476
  %1481 = fptoui float %1478 to i32
  %1482 = fptoui float %1480 to i32
  %1483 = fadd fast float %1471, -1.000000e+00
  %1484 = fadd fast float %1472, -1.000000e+00
  %1485 = fptoui float %1483 to i32
  %1486 = fptoui float %1484 to i32
  %1487 = call i32 @dx.op.binary.i32(i32 40, i32 %1481, i32 %1485)  ; UMin(a,b)
  %1488 = call i32 @dx.op.binary.i32(i32 40, i32 %1482, i32 %1486)  ; UMin(a,b)
  %1489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1490 = extractvalue %dx.types.CBufRet.f32 %1489, 2
  %1491 = extractvalue %dx.types.CBufRet.f32 %1489, 3
  %1492 = fmul fast float %1490, %48
  %1493 = fsub fast float %1492, %1491
  %1494 = fadd fast float %1473, -1.000000e+00
  %1495 = call float @dx.op.binary.f32(i32 36, float %1493, float %1494)  ; FMin(a,b)
  %1496 = fptoui float %1495 to i32
  %1497 = fptoui float %1471 to i32
  %1498 = fptoui float %1472 to i32
  %1499 = mul i32 %1496, %1498
  %1500 = add i32 %1499, %1488
  %1501 = mul i32 %1500, %1497
  %1502 = add i32 %1501, %1487
  %1503 = shl i32 %1502, 2
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = and i32 %1505, 1023
  %1507 = lshr i32 %1505, 10
  %1508 = icmp eq i32 %1506, 0
  br i1 %1508, label %1934, label %1509

; <label>:1509                                    ; preds = %1409
  %1510 = and i32 %1505, 1023
  br label %1511

; <label>:1511                                    ; preds = %1637, %1509
  %1512 = phi float [ %1638, %1637 ], [ 0.000000e+00, %1509 ]
  %1513 = phi float [ %1639, %1637 ], [ %1423, %1509 ]
  %1514 = phi float [ %1640, %1637 ], [ %1421, %1509 ]
  %1515 = phi float [ %1641, %1637 ], [ 0.000000e+00, %1509 ]
  %1516 = phi float [ %1642, %1637 ], [ 0.000000e+00, %1509 ]
  %1517 = phi float [ %1643, %1637 ], [ %1415, %1509 ]
  %1518 = phi float [ %1644, %1637 ], [ %1416, %1509 ]
  %1519 = phi float [ %1645, %1637 ], [ %1417, %1509 ]
  %1520 = phi float [ %1646, %1637 ], [ %1455, %1509 ]
  %1521 = phi float [ %1647, %1637 ], [ %1456, %1509 ]
  %1522 = phi float [ %1648, %1637 ], [ %1457, %1509 ]
  %1523 = phi float [ %1649, %1637 ], [ %1420, %1509 ]
  %1524 = phi float [ %1650, %1637 ], [ %1419, %1509 ]
  %1525 = phi float [ %1651, %1637 ], [ 0.000000e+00, %1509 ]
  %1526 = phi float [ %1652, %1637 ], [ %1418, %1509 ]
  %1527 = phi float [ %1653, %1637 ], [ %1412, %1509 ]
  %1528 = phi float [ %1654, %1637 ], [ %1413, %1509 ]
  %1529 = phi float [ %1655, %1637 ], [ %1414, %1509 ]
  %1530 = phi i32 [ %1587, %1637 ], [ 0, %1509 ]
  %1531 = add nuw nsw i32 %1530, %1507
  %1532 = shl i32 %1531, 2
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1532, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = shl i32 %1534, 8
  %1536 = or i32 %1535, 48
  %1537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.f32 %1537, 0
  %1539 = extractvalue %dx.types.ResRet.f32 %1537, 1
  %1540 = extractvalue %dx.types.ResRet.f32 %1537, 2
  %1541 = extractvalue %dx.types.ResRet.f32 %1537, 3
  %1542 = or i32 %1535, 64
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = extractvalue %dx.types.ResRet.i32 %1543, 1
  %1546 = or i32 %1535, 80
  %1547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1546, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 2
  %1549 = extractvalue %dx.types.ResRet.f32 %1547, 3
  %1550 = or i32 %1535, 96
  %1551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1550, i32 undef)  ; BufferLoad(srv,index,wot)
  %1552 = extractvalue %dx.types.ResRet.f32 %1551, 0
  %1553 = extractvalue %dx.types.ResRet.f32 %1551, 1
  %1554 = extractvalue %dx.types.ResRet.f32 %1551, 2
  %1555 = extractvalue %dx.types.ResRet.f32 %1551, 3
  %1556 = or i32 %1535, 112
  %1557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1556, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1559 = or i32 %1535, 128
  %1560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.f32 %1560, 0
  %1562 = extractvalue %dx.types.ResRet.f32 %1560, 1
  %1563 = extractvalue %dx.types.ResRet.f32 %1560, 2
  %1564 = extractvalue %dx.types.ResRet.f32 %1560, 3
  %1565 = or i32 %1535, 144
  %1566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1565, i32 undef)  ; BufferLoad(srv,index,wot)
  %1567 = extractvalue %dx.types.ResRet.f32 %1566, 0
  %1568 = extractvalue %dx.types.ResRet.f32 %1566, 1
  %1569 = extractvalue %dx.types.ResRet.f32 %1566, 2
  %1570 = extractvalue %dx.types.ResRet.f32 %1566, 3
  %1571 = or i32 %1535, 160
  %1572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1571, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.f32 %1572, 0
  %1574 = extractvalue %dx.types.ResRet.f32 %1572, 1
  %1575 = extractvalue %dx.types.ResRet.f32 %1572, 2
  %1576 = extractvalue %dx.types.ResRet.f32 %1572, 3
  %1577 = or i32 %1535, 192
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = or i32 %1535, 208
  %1581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1580, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = or i32 %1535, 248
  %1584 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1583, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.f32 %1584, 0
  %1586 = extractvalue %dx.types.ResRet.f32 %1584, 1
  %1587 = add nuw nsw i32 %1530, 1
  %1588 = bitcast float %1541 to i32
  %1589 = and i32 %1588, 512
  %1590 = icmp eq i32 %1589, 0
  %1591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1593 = extractvalue %dx.types.ResRet.f32 %1591, 1
  %1594 = extractvalue %dx.types.ResRet.f32 %1591, 2
  %1595 = extractvalue %dx.types.ResRet.f32 %1591, 3
  %1596 = call float @dx.op.dot4.f32(i32 56, float %1592, float %1593, float %1594, float %1595, float %109, float %110, float %111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1597 = or i32 %1535, 16
  %1598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1600 = extractvalue %dx.types.ResRet.f32 %1598, 1
  %1601 = extractvalue %dx.types.ResRet.f32 %1598, 2
  %1602 = extractvalue %dx.types.ResRet.f32 %1598, 3
  %1603 = call float @dx.op.dot4.f32(i32 56, float %1599, float %1600, float %1601, float %1602, float %109, float %110, float %111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1604 = or i32 %1535, 32
  %1605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.ResRet.f32 %1605, 1
  %1608 = extractvalue %dx.types.ResRet.f32 %1605, 2
  %1609 = extractvalue %dx.types.ResRet.f32 %1605, 3
  %1610 = call float @dx.op.dot4.f32(i32 56, float %1606, float %1607, float %1608, float %1609, float %109, float %110, float %111, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1611 = call float @dx.op.unary.f32(i32 27, float %1596)  ; Round_ni(value)
  %1612 = call float @dx.op.unary.f32(i32 6, float %1611)  ; FAbs(value)
  %1613 = call float @dx.op.unary.f32(i32 27, float %1603)  ; Round_ni(value)
  %1614 = call float @dx.op.unary.f32(i32 6, float %1613)  ; FAbs(value)
  %1615 = call float @dx.op.unary.f32(i32 6, float %1610)  ; FAbs(value)
  %1616 = call float @dx.op.unary.f32(i32 27, float %1615)  ; Round_ni(value)
  %1617 = fadd fast float %1614, %1612
  %1618 = fadd fast float %1617, %1616
  %1619 = fcmp fast oeq float %1618, 0.000000e+00
  %1620 = call float @dx.op.dot4.f32(i32 56, float %1592, float %1593, float %1594, float %1595, float %1464, float %1465, float %1466, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1621 = call float @dx.op.dot4.f32(i32 56, float %1599, float %1600, float %1601, float %1602, float %1464, float %1465, float %1466, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1622 = call float @dx.op.dot4.f32(i32 56, float %1592, float %1593, float %1594, float %1595, float %1467, float %1468, float %1469, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1623 = call float @dx.op.dot4.f32(i32 56, float %1599, float %1600, float %1601, float %1602, float %1467, float %1468, float %1469, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1624 = fsub fast float %1620, %1596
  %1625 = fsub fast float %1622, %1596
  %1626 = fsub fast float %1621, %1603
  %1627 = fsub fast float %1623, %1603
  %1628 = call float @dx.op.dot3.f32(i32 55, float %1538, float %1539, float %1540, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %1629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1630 = extractvalue %dx.types.CBufRet.f32 %1629, 2
  %1631 = fadd fast float %1630, %1628
  %1632 = call float @dx.op.unary.f32(i32 7, float %1631)  ; Saturate(value)
  %1633 = extractvalue %dx.types.CBufRet.f32 %1629, 0
  %1634 = fcmp fast ogt float %1632, %1633
  %1635 = and i1 %1619, %1634
  %1636 = and i1 %1590, %1635
  br i1 %1636, label %1657, label %1637

; <label>:1637                                    ; preds = %1920, %1738, %1657, %1511
  %1638 = phi float [ %1512, %1657 ], [ %1741, %1738 ], [ %1741, %1920 ], [ %1512, %1511 ]
  %1639 = phi float [ %1513, %1657 ], [ %1513, %1738 ], [ %1895, %1920 ], [ %1513, %1511 ]
  %1640 = phi float [ %1514, %1657 ], [ %1514, %1738 ], [ %1893, %1920 ], [ %1514, %1511 ]
  %1641 = phi float [ %1515, %1657 ], [ %1515, %1738 ], [ %1865, %1920 ], [ %1515, %1511 ]
  %1642 = phi float [ %1516, %1657 ], [ %1516, %1738 ], [ %1863, %1920 ], [ %1516, %1511 ]
  %1643 = phi float [ %1517, %1657 ], [ %1517, %1738 ], [ %1930, %1920 ], [ %1517, %1511 ]
  %1644 = phi float [ %1518, %1657 ], [ %1518, %1738 ], [ %1931, %1920 ], [ %1518, %1511 ]
  %1645 = phi float [ %1519, %1657 ], [ %1519, %1738 ], [ %1932, %1920 ], [ %1519, %1511 ]
  %1646 = phi float [ %1520, %1657 ], [ %1520, %1738 ], [ %1844, %1920 ], [ %1520, %1511 ]
  %1647 = phi float [ %1521, %1657 ], [ %1521, %1738 ], [ %1845, %1920 ], [ %1521, %1511 ]
  %1648 = phi float [ %1522, %1657 ], [ %1522, %1738 ], [ %1846, %1920 ], [ %1522, %1511 ]
  %1649 = phi float [ %1523, %1657 ], [ %1523, %1738 ], [ %1873, %1920 ], [ %1523, %1511 ]
  %1650 = phi float [ %1524, %1657 ], [ %1524, %1738 ], [ %1870, %1920 ], [ %1524, %1511 ]
  %1651 = phi float [ %1525, %1657 ], [ %1525, %1738 ], [ %1867, %1920 ], [ %1525, %1511 ]
  %1652 = phi float [ %1526, %1657 ], [ %1526, %1738 ], [ %1861, %1920 ], [ %1526, %1511 ]
  %1653 = phi float [ %1527, %1657 ], [ %1527, %1738 ], [ %1856, %1920 ], [ %1527, %1511 ]
  %1654 = phi float [ %1528, %1657 ], [ %1528, %1738 ], [ %1857, %1920 ], [ %1528, %1511 ]
  %1655 = phi float [ %1529, %1657 ], [ %1529, %1738 ], [ %1858, %1920 ], [ %1529, %1511 ]
  %1656 = icmp eq i32 %1587, %1510
  br i1 %1656, label %1933, label %1511

; <label>:1657                                    ; preds = %1511
  %1658 = extractvalue %dx.types.ResRet.f32 %1557, 3
  %1659 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1660 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1661 = extractvalue %dx.types.ResRet.f32 %1547, 1
  %1662 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1663 = extractvalue %dx.types.ResRet.i32 %1543, 3
  %1664 = extractvalue %dx.types.ResRet.i32 %1543, 2
  %1665 = add i32 %1663, 0
  %1666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1665, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1667 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1668 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1666, %dx.types.Handle %1667, float %1596, float %1603, float undef, float undef, i32 0, i32 0, i32 undef, float %1624, float %1626, float undef, float %1625, float %1627, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1669 = extractvalue %dx.types.ResRet.f32 %1668, 0
  %1670 = fmul fast float %1669, %1662
  %1671 = fadd fast float %1670, %1661
  %1672 = call float @dx.op.unary.f32(i32 7, float %1671)  ; Saturate(value)
  %1673 = fmul fast float %1596, %1552
  %1674 = call float @dx.op.tertiary.f32(i32 46, float %1553, float %1603, float %1673)  ; FMad(a,b,c)
  %1675 = fadd fast float %1674, %1660
  %1676 = fmul fast float %1596, %1554
  %1677 = call float @dx.op.tertiary.f32(i32 46, float %1555, float %1603, float %1676)  ; FMad(a,b,c)
  %1678 = fadd fast float %1677, %1659
  %1679 = fmul fast float %1624, %1552
  %1680 = call float @dx.op.tertiary.f32(i32 46, float %1553, float %1626, float %1679)  ; FMad(a,b,c)
  %1681 = fmul fast float %1624, %1554
  %1682 = call float @dx.op.tertiary.f32(i32 46, float %1555, float %1626, float %1681)  ; FMad(a,b,c)
  %1683 = fmul fast float %1625, %1552
  %1684 = call float @dx.op.tertiary.f32(i32 46, float %1553, float %1627, float %1683)  ; FMad(a,b,c)
  %1685 = fmul fast float %1625, %1554
  %1686 = call float @dx.op.tertiary.f32(i32 46, float %1555, float %1627, float %1685)  ; FMad(a,b,c)
  %1687 = add i32 %1664, 0
  %1688 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1687, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1689 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1688, %dx.types.Handle %1667, float %1675, float %1678, float undef, float undef, i32 0, i32 0, i32 undef, float %1680, float %1682, float undef, float %1684, float %1686, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1690 = extractvalue %dx.types.ResRet.f32 %1689, 0
  %1691 = and i32 %1588, 1024
  %1692 = icmp ne i32 %1691, 0
  %1693 = fcmp fast ogt float %1690, 0x3FE0101020000000
  %1694 = uitofp i1 %1693 to float
  %1695 = select i1 %1692, float %1694, float %1690
  %1696 = and i32 %1588, 8192
  %1697 = icmp ne i32 %1696, 0
  %1698 = select i1 %1697, float %1658, float 1.000000e+00
  %1699 = fmul fast float %1596, 2.000000e+00
  %1700 = fadd fast float %1699, -1.000000e+00
  %1701 = call float @dx.op.unary.f32(i32 6, float %1700)  ; FAbs(value)
  %1702 = fmul fast float %1701, %1585
  %1703 = fsub fast float %1702, %1585
  %1704 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1705 = fmul fast float %1603, 2.000000e+00
  %1706 = fadd fast float %1705, -1.000000e+00
  %1707 = call float @dx.op.unary.f32(i32 6, float %1706)  ; FAbs(value)
  %1708 = fmul fast float %1707, %1586
  %1709 = fsub fast float %1708, %1586
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fmul fast float %1615, %1548
  %1712 = fsub fast float %1711, %1548
  %1713 = call float @dx.op.unary.f32(i32 7, float %1712)  ; Saturate(value)
  %1714 = fmul fast float %1672, %1698
  %1715 = fmul fast float %1714, %1669
  %1716 = fmul fast float %1715, %1704
  %1717 = fmul fast float %1716, %1695
  %1718 = fmul fast float %1717, %1710
  %1719 = fmul fast float %1718, %1713
  %1720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1721 = extractvalue %dx.types.CBufRet.f32 %1720, 1
  %1722 = extractvalue %dx.types.CBufRet.f32 %1720, 0
  %1723 = fsub fast float %1632, %1722
  %1724 = fmul fast float %1723, %1721
  %1725 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  %1726 = fmul fast float %1719, %1549
  %1727 = fadd fast float %1719, %1549
  %1728 = fmul fast float %1727, %1558
  %1729 = fsub fast float %1728, %1558
  %1730 = call float @dx.op.unary.f32(i32 7, float %1729)  ; Saturate(value)
  %1731 = and i32 %1588, 128
  %1732 = icmp ne i32 %1731, 0
  %1733 = select i1 %1732, float %1730, float %1726
  %1734 = fmul fast float %1733, %1725
  %1735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1736 = extractvalue %dx.types.CBufRet.f32 %1735, 0
  %1737 = fcmp fast ugt float %1734, %1736
  br i1 %1737, label %1738, label %1637

; <label>:1738                                    ; preds = %1657
  %1739 = select i1 %1697, float %1734, float 0.000000e+00
  %1740 = fadd fast float %1739, %1512
  %1741 = call float @dx.op.unary.f32(i32 7, float %1740)  ; Saturate(value)
  br i1 %1697, label %1637, label %1742

; <label>:1742                                    ; preds = %1738
  %1743 = and i32 %1588, 4
  %1744 = and i32 %1588, 8
  %1745 = add i32 %1544, 0
  %1746 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1745, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1747 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1748 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1746, %dx.types.Handle %1747, float %1675, float %1678, float undef, float undef, i32 0, i32 0, i32 undef, float %1680, float %1682, float undef, float %1684, float %1686, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1749 = extractvalue %dx.types.ResRet.f32 %1748, 0
  %1750 = extractvalue %dx.types.ResRet.f32 %1748, 1
  %1751 = extractvalue %dx.types.ResRet.f32 %1748, 2
  %1752 = extractvalue %dx.types.ResRet.f32 %1748, 3
  %1753 = bitcast float %1570 to i32
  %1754 = and i32 %1753, 255
  %1755 = uitofp i32 %1754 to float
  %1756 = lshr i32 %1753, 8
  %1757 = and i32 %1756, 255
  %1758 = uitofp i32 %1757 to float
  %1759 = fmul fast float %1752, %1755
  %1760 = fadd fast float %1759, %1758
  %1761 = fmul fast float %1760, 0x3F70101000000000
  %1762 = add i32 %1545, 0
  %1763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1762, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1764 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1763, %dx.types.Handle %1747, float %1675, float %1678, float undef, float undef, i32 0, i32 0, i32 undef, float %1680, float %1682, float undef, float %1684, float %1686, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1765 = extractvalue %dx.types.ResRet.f32 %1764, 0
  %1766 = extractvalue %dx.types.ResRet.f32 %1764, 1
  %1767 = extractvalue %dx.types.ResRet.f32 %1764, 2
  %1768 = extractvalue %dx.types.ResRet.f32 %1764, 3
  %1769 = bitcast float %1564 to i32
  %1770 = and i32 %1769, 255
  %1771 = uitofp i32 %1770 to float
  %1772 = lshr i32 %1769, 8
  %1773 = and i32 %1772, 255
  %1774 = uitofp i32 %1773 to float
  %1775 = lshr i32 %1769, 16
  %1776 = and i32 %1775, 255
  %1777 = uitofp i32 %1776 to float
  %1778 = fmul fast float %1777, 0x3F70101000000000
  %1779 = fmul fast float %1765, %1771
  %1780 = fadd fast float %1779, %1774
  %1781 = fmul fast float %1780, 0x3F70101000000000
  %1782 = fadd fast float %1766, -5.000000e-01
  %1783 = fadd fast float %1768, -5.000000e-01
  %1784 = fmul fast float %1782, %1778
  %1785 = fmul fast float %1783, %1778
  %1786 = fadd fast float %1784, 5.000000e-01
  %1787 = fadd fast float %1785, 5.000000e-01
  %1788 = fmul fast float %1749, %1573
  %1789 = fmul fast float %1750, %1574
  %1790 = fmul fast float %1751, %1575
  %1791 = fmul fast float %1786, 2.000000e+00
  %1792 = fadd fast float %1791, -1.000000e+00
  %1793 = fmul fast float %1787, 2.000000e+00
  %1794 = fadd fast float %1793, -1.000000e+00
  %1795 = fadd fast float %1792, %1794
  %1796 = fmul fast float %1795, 5.000000e-01
  %1797 = fsub fast float %1792, %1794
  %1798 = fmul fast float %1797, 5.000000e-01
  %1799 = call float @dx.op.unary.f32(i32 6, float %1796)  ; FAbs(value)
  %1800 = fsub fast float 1.000000e+00, %1799
  %1801 = call float @dx.op.unary.f32(i32 6, float %1798)  ; FAbs(value)
  %1802 = fsub fast float %1800, %1801
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1796, float %1798, float %1802, float %1796, float %1798, float %1802)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = call float @dx.op.unary.f32(i32 25, float %1803)  ; Rsqrt(value)
  %1805 = fmul fast float %1796, %1804
  %1806 = fmul fast float %1798, %1804
  %1807 = fmul fast float %1804, %1802
  %1808 = fmul fast float %1807, %1538
  %1809 = fmul fast float %1807, %1539
  %1810 = fmul fast float %1807, %1540
  %1811 = fmul fast float %1805, %1561
  %1812 = fmul fast float %1805, %1562
  %1813 = fmul fast float %1805, %1563
  %1814 = fadd fast float %1811, %1808
  %1815 = fadd fast float %1812, %1809
  %1816 = fadd fast float %1813, %1810
  %1817 = fmul fast float %1806, %1567
  %1818 = fmul fast float %1806, %1568
  %1819 = fmul fast float %1806, %1569
  %1820 = fadd fast float %1814, %1817
  %1821 = fadd fast float %1815, %1818
  %1822 = fadd fast float %1816, %1819
  %1823 = call float @dx.op.dot3.f32(i32 55, float %1820, float %1821, float %1822, float %1820, float %1821, float %1822)  ; Dot3(ax,ay,az,bx,by,bz)
  %1824 = call float @dx.op.unary.f32(i32 25, float %1823)  ; Rsqrt(value)
  %1825 = fmul fast float %1820, %1824
  %1826 = fmul fast float %1821, %1824
  %1827 = fmul fast float %1822, %1824
  %1828 = icmp ne i32 %1744, 0
  %1829 = select i1 %1828, float 1.000000e+00, float 0.000000e+00
  %1830 = fmul fast float %1734, %1829
  %1831 = and i32 %1588, 1
  %1832 = icmp eq i32 %1831, 0
  br i1 %1832, label %1833, label %1837

; <label>:1833                                    ; preds = %1742
  %1834 = fsub fast float %1825, %1520
  %1835 = fsub fast float %1826, %1521
  %1836 = fsub fast float %1827, %1522
  br label %1837

; <label>:1837                                    ; preds = %1833, %1742
  %1838 = phi float [ %1834, %1833 ], [ %1825, %1742 ]
  %1839 = phi float [ %1835, %1833 ], [ %1826, %1742 ]
  %1840 = phi float [ %1836, %1833 ], [ %1827, %1742 ]
  %1841 = fmul float %1840, %1830
  %1842 = fmul float %1839, %1830
  %1843 = fmul float %1838, %1830
  %1844 = fadd fast float %1843, %1520
  %1845 = fadd fast float %1842, %1521
  %1846 = fadd fast float %1841, %1522
  %1847 = icmp ne i32 %1743, 0
  %1848 = select i1 %1847, float 1.000000e+00, float 0.000000e+00
  %1849 = fmul fast float %1734, %1848
  %1850 = fsub fast float %1788, %1527
  %1851 = fsub fast float %1789, %1528
  %1852 = fsub fast float %1790, %1529
  %1853 = fmul fast float %1850, %1849
  %1854 = fmul fast float %1851, %1849
  %1855 = fmul fast float %1852, %1849
  %1856 = fadd fast float %1853, %1527
  %1857 = fadd fast float %1854, %1528
  %1858 = fadd fast float %1855, %1529
  %1859 = fsub fast float %1761, %1526
  %1860 = fmul fast float %1859, %1849
  %1861 = fadd fast float %1860, %1526
  %1862 = fmul fast float %1849, %1516
  %1863 = fsub fast float %1516, %1862
  %1864 = fmul fast float %1849, %1515
  %1865 = fsub fast float %1515, %1864
  %1866 = fadd fast float %1734, %1525
  %1867 = call float @dx.op.unary.f32(i32 7, float %1866)  ; Saturate(value)
  %1868 = fsub fast float %1781, %1524
  %1869 = fmul fast float %1868, %1830
  %1870 = fadd fast float %1869, %1524
  %1871 = fsub fast float %1767, %1523
  %1872 = fmul fast float %1871, %1830
  %1873 = fadd fast float %1872, %1523
  %1874 = call float @dx.op.dot3.f32(i32 55, float %1788, float %1789, float %1790, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.CBufRet.f32 %1875, 1
  %1878 = fmul fast float %1877, %1874
  %1879 = fadd fast float %1878, %1876
  %1880 = call float @dx.op.unary.f32(i32 7, float %1879)  ; Saturate(value)
  %1881 = bitcast float %1576 to i32
  %1882 = and i32 %1881, 65535
  %1883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1882)  ; LegacyF16ToF32(value)
  %1884 = lshr i32 %1881, 16
  %1885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1884)  ; LegacyF16ToF32(value)
  %1886 = fcmp fast oge float %1883, 0.000000e+00
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 0
  %1889 = select i1 %1886, float %1883, float %1888
  %1890 = fadd fast float %1889, %1885
  %1891 = fsub fast float %1880, %1514
  %1892 = fmul fast float %1891, %1734
  %1893 = fadd fast float %1892, %1514
  %1894 = fmul fast float %1890, %1734
  %1895 = call float @dx.op.binary.f32(i32 35, float %1513, float %1894)  ; FMax(a,b)
  %1896 = and i32 %1588, 16
  %1897 = icmp eq i32 %1896, 0
  br i1 %1897, label %1920, label %1898

; <label>:1898                                    ; preds = %1837
  %1899 = bitcast float %1582 to i32
  %1900 = add i32 %1579, 0
  %1901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1900, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1902 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1901, %dx.types.Handle %1747, float %1675, float %1678, float undef, float undef, i32 0, i32 0, i32 undef, float %1680, float %1682, float undef, float %1684, float %1686, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = and i32 %1899, 65535
  %1907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1906)  ; LegacyF16ToF32(value)
  %1908 = fmul fast float %1903, %1573
  %1909 = fmul fast float %1904, %1574
  %1910 = fmul fast float %1905, %1575
  %1911 = and i32 %1588, 16384
  %1912 = icmp ne i32 %1911, 0
  %1913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1914 = extractvalue %dx.types.CBufRet.f32 %1913, 0
  %1915 = select i1 %1912, float %1914, float 1.000000e+00
  %1916 = fmul fast float %1915, %1907
  %1917 = fmul fast float %1908, %1916
  %1918 = fmul fast float %1909, %1916
  %1919 = fmul fast float %1910, %1916
  br label %1920

; <label>:1920                                    ; preds = %1898, %1837
  %1921 = phi float [ %1917, %1898 ], [ 0.000000e+00, %1837 ]
  %1922 = phi float [ %1918, %1898 ], [ 0.000000e+00, %1837 ]
  %1923 = phi float [ %1919, %1898 ], [ 0.000000e+00, %1837 ]
  %1924 = fsub fast float %1921, %1517
  %1925 = fsub fast float %1922, %1518
  %1926 = fsub fast float %1923, %1519
  %1927 = fmul fast float %1924, %1734
  %1928 = fmul fast float %1925, %1734
  %1929 = fmul fast float %1926, %1734
  %1930 = fadd fast float %1927, %1517
  %1931 = fadd fast float %1928, %1518
  %1932 = fadd fast float %1929, %1519
  br label %1637

; <label>:1933                                    ; preds = %1637
  br label %1934

; <label>:1934                                    ; preds = %1933, %1409
  %1935 = phi float [ 0.000000e+00, %1409 ], [ %1638, %1933 ]
  %1936 = phi float [ %1423, %1409 ], [ %1639, %1933 ]
  %1937 = phi float [ %1421, %1409 ], [ %1640, %1933 ]
  %1938 = phi float [ 0.000000e+00, %1409 ], [ %1641, %1933 ]
  %1939 = phi float [ 0.000000e+00, %1409 ], [ %1642, %1933 ]
  %1940 = phi float [ %1415, %1409 ], [ %1643, %1933 ]
  %1941 = phi float [ %1416, %1409 ], [ %1644, %1933 ]
  %1942 = phi float [ %1417, %1409 ], [ %1645, %1933 ]
  %1943 = phi float [ %1455, %1409 ], [ %1646, %1933 ]
  %1944 = phi float [ %1456, %1409 ], [ %1647, %1933 ]
  %1945 = phi float [ %1457, %1409 ], [ %1648, %1933 ]
  %1946 = phi float [ %1420, %1409 ], [ %1649, %1933 ]
  %1947 = phi float [ %1419, %1409 ], [ %1650, %1933 ]
  %1948 = phi float [ 0.000000e+00, %1409 ], [ %1651, %1933 ]
  %1949 = phi float [ %1418, %1409 ], [ %1652, %1933 ]
  %1950 = phi float [ %1412, %1409 ], [ %1653, %1933 ]
  %1951 = phi float [ %1413, %1409 ], [ %1654, %1933 ]
  %1952 = phi float [ %1414, %1409 ], [ %1655, %1933 ]
  %1953 = call float @dx.op.dot3.f32(i32 55, float %1943, float %1944, float %1945, float %1943, float %1944, float %1945)  ; Dot3(ax,ay,az,bx,by,bz)
  %1954 = call float @dx.op.unary.f32(i32 25, float %1953)  ; Rsqrt(value)
  %1955 = fmul fast float %1954, %1943
  %1956 = fmul fast float %1954, %1944
  %1957 = fmul fast float %1954, %1945
  %1958 = fadd fast float %1948, %709
  %1959 = call float @dx.op.unary.f32(i32 7, float %1958)  ; Saturate(value)
  %1960 = call float @dx.op.dot3.f32(i32 55, float %1955, float %1956, float %1957, float %1955, float %1956, float %1957)  ; Dot3(ax,ay,az,bx,by,bz)
  %1961 = call float @dx.op.unary.f32(i32 25, float %1960)  ; Rsqrt(value)
  %1962 = fmul fast float %1961, %1955
  %1963 = fmul fast float %1961, %1956
  %1964 = fmul fast float %1961, %1957
  %1965 = fadd fast float %1949, 0xBFB99999A0000000
  %1966 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1967 = fmul fast float %1966, 0x3FF1C71C80000000
  %1968 = call float @dx.op.binary.f32(i32 36, float %1949, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1969 = fsub fast float 1.000000e+00, %1967
  %1970 = call float @dx.op.unary.f32(i32 7, float %1969)  ; Saturate(value)
  %1971 = fmul fast float %1970, %1950
  %1972 = fmul fast float %1970, %1951
  %1973 = fmul fast float %1970, %1952
  %1974 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1975 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1976 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  %1977 = fmul fast float %1967, %1950
  %1978 = fmul fast float %1967, %1951
  %1979 = fmul fast float %1967, %1952
  %1980 = fadd fast float %1977, %1968
  %1981 = fadd fast float %1978, %1968
  %1982 = fadd fast float %1979, %1968
  %1983 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  %1984 = call float @dx.op.unary.f32(i32 7, float %1981)  ; Saturate(value)
  %1985 = call float @dx.op.unary.f32(i32 7, float %1982)  ; Saturate(value)
  %1986 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  %1987 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1988 = extractvalue %dx.types.CBufRet.i32 %1987, 3
  %1989 = and i32 %1988, 8
  %1990 = icmp ne i32 %1989, 0
  %1991 = call float @dx.op.binary.f32(i32 35, float %1974, float %1950)  ; FMax(a,b)
  %1992 = call float @dx.op.binary.f32(i32 35, float %1975, float %1950)  ; FMax(a,b)
  %1993 = call float @dx.op.binary.f32(i32 35, float %1976, float %1950)  ; FMax(a,b)
  %1994 = call float @dx.op.dot3.f32(i32 55, float %1974, float %1975, float %1976, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1995 = select i1 %151, float %1950, float %1974
  %1996 = select i1 %151, float %1994, float %1975
  %1997 = select i1 %151, float 1.000000e+00, float %1976
  %1998 = select i1 %1990, float %1991, float %1995
  %1999 = select i1 %1990, float %1992, float %1996
  %2000 = select i1 %1990, float %1993, float %1997
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2003 = extractvalue %dx.types.CBufRet.f32 %2001, 1
  %2004 = extractvalue %dx.types.CBufRet.f32 %2001, 2
  %2005 = fadd fast float %2002, %109
  %2006 = fadd fast float %2003, %110
  %2007 = fadd fast float %2004, %111
  %2008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2009 = extractvalue %dx.types.CBufRet.f32 %2008, 0
  %2010 = extractvalue %dx.types.CBufRet.f32 %2008, 1
  %2011 = fsub fast float %2005, %2009
  %2012 = fsub fast float %2006, %2010
  %2013 = fmul fast float %2011, %2011
  %2014 = fmul fast float %2012, %2012
  %2015 = fadd fast float %2013, %2014
  %2016 = call float @dx.op.unary.f32(i32 24, float %2015)  ; Sqrt(value)
  %2017 = extractvalue %dx.types.CBufRet.f32 %2008, 2
  %2018 = fcmp fast olt float %2016, %2017
  br i1 %2018, label %2019, label %2086

; <label>:2019                                    ; preds = %1934
  %2020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2021 = extractvalue %dx.types.CBufRet.f32 %2020, 0
  %2022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2023 = extractvalue %dx.types.CBufRet.f32 %2022, 0
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.CBufRet.f32 %2020, 1
  %2027 = extractvalue %dx.types.CBufRet.f32 %2022, 1
  %2028 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2029 = extractvalue %dx.types.CBufRet.f32 %2020, 3
  %2030 = extractvalue %dx.types.CBufRet.f32 %2022, 3
  %2031 = extractvalue %dx.types.CBufRet.f32 %2024, 3
  %2032 = fadd fast float %2029, %2005
  %2033 = fadd fast float %2030, %2006
  %2034 = fadd fast float %2031, %2007
  %2035 = fmul fast float %2032, %2021
  %2036 = call float @dx.op.tertiary.f32(i32 46, float %2033, float %2023, float %2035)  ; FMad(a,b,c)
  %2037 = call float @dx.op.tertiary.f32(i32 46, float %2034, float %2025, float %2036)  ; FMad(a,b,c)
  %2038 = fmul fast float %2032, %2026
  %2039 = call float @dx.op.tertiary.f32(i32 46, float %2033, float %2027, float %2038)  ; FMad(a,b,c)
  %2040 = call float @dx.op.tertiary.f32(i32 46, float %2034, float %2028, float %2039)  ; FMad(a,b,c)
  %2041 = fsub fast float %2037, %2029
  %2042 = fsub fast float %2040, %2030
  %2043 = fsub fast float %2041, %2009
  %2044 = fadd fast float %2043, %2017
  %2045 = fsub fast float %2042, %2010
  %2046 = fadd fast float %2045, %2017
  %2047 = extractvalue %dx.types.CBufRet.f32 %2008, 3
  %2048 = fmul fast float %2044, %2047
  %2049 = fmul fast float %2046, %2047
  %2050 = call float @dx.op.unary.f32(i32 7, float %2048)  ; Saturate(value)
  %2051 = call float @dx.op.unary.f32(i32 7, float %2049)  ; Saturate(value)
  %2052 = fsub fast float 1.000000e+00, %2050
  %2053 = fsub fast float 1.000000e+00, %2051
  %2054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %24, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2055 = extractvalue %dx.types.ResRet.f32 %2054, 0
  %2056 = fcmp fast ugt float %2055, 0.000000e+00
  br i1 %2056, label %2057, label %2360

; <label>:2057                                    ; preds = %2019
  %2058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2059 = extractvalue %dx.types.CBufRet.f32 %2058, 2
  %2060 = fmul fast float %2059, %2055
  %2061 = extractvalue %dx.types.CBufRet.f32 %2058, 3
  %2062 = fadd fast float %2061, %2060
  %2063 = extractvalue %dx.types.CBufRet.f32 %2024, 2
  %2064 = fadd fast float %2062, %2031
  %2065 = fmul fast float %2037, %2025
  %2066 = call float @dx.op.tertiary.f32(i32 46, float %2040, float %2028, float %2065)  ; FMad(a,b,c)
  %2067 = call float @dx.op.tertiary.f32(i32 46, float %2064, float %2063, float %2066)  ; FMad(a,b,c)
  %2068 = fsub fast float %2067, %2031
  %2069 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2070 = extractvalue %dx.types.CBufRet.f32 %2069, 2
  %2071 = fsub fast float %2068, %2070
  %2072 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %24, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2073 = extractvalue %dx.types.ResRet.f32 %2072, 0
  %2074 = extractvalue %dx.types.ResRet.f32 %2072, 1
  %2075 = extractvalue %dx.types.ResRet.f32 %2072, 2
  %2076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %24, float %2052, float %2053, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2077 = extractvalue %dx.types.ResRet.f32 %2076, 0
  %2078 = extractvalue %dx.types.ResRet.f32 %2076, 1
  %2079 = extractvalue %dx.types.ResRet.f32 %2076, 2
  %2080 = fadd fast float %2077, %2073
  %2081 = fmul fast float %2080, 0x3F847AE140000000
  %2082 = fadd fast float %2078, %2074
  %2083 = fmul fast float %2082, 0x3F847AE140000000
  %2084 = fadd fast float %2079, %2075
  %2085 = fmul fast float %2084, 0x3F847AE140000000
  br label %2360

; <label>:2086                                    ; preds = %1934
  %2087 = and i32 %127, 1
  %2088 = icmp eq i32 %2087, 0
  br i1 %2088, label %2360, label %2089

; <label>:2089                                    ; preds = %2086
  %2090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2091 = extractvalue %dx.types.CBufRet.f32 %2090, 0
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2095 = extractvalue %dx.types.CBufRet.f32 %2094, 0
  %2096 = extractvalue %dx.types.CBufRet.f32 %2090, 1
  %2097 = extractvalue %dx.types.CBufRet.f32 %2092, 1
  %2098 = extractvalue %dx.types.CBufRet.f32 %2094, 1
  %2099 = extractvalue %dx.types.CBufRet.f32 %2090, 3
  %2100 = extractvalue %dx.types.CBufRet.f32 %2092, 3
  %2101 = extractvalue %dx.types.CBufRet.f32 %2094, 3
  %2102 = fadd fast float %2099, %2005
  %2103 = fadd fast float %2100, %2006
  %2104 = fadd fast float %2101, %2007
  %2105 = fmul fast float %2102, %2091
  %2106 = call float @dx.op.tertiary.f32(i32 46, float %2103, float %2093, float %2105)  ; FMad(a,b,c)
  %2107 = call float @dx.op.tertiary.f32(i32 46, float %2104, float %2095, float %2106)  ; FMad(a,b,c)
  %2108 = fmul fast float %2102, %2096
  %2109 = call float @dx.op.tertiary.f32(i32 46, float %2103, float %2097, float %2108)  ; FMad(a,b,c)
  %2110 = call float @dx.op.tertiary.f32(i32 46, float %2104, float %2098, float %2109)  ; FMad(a,b,c)
  %2111 = fsub fast float %2107, %2099
  %2112 = fsub fast float %2110, %2100
  %2113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2114 = extractvalue %dx.types.CBufRet.f32 %2113, 0
  %2115 = extractvalue %dx.types.CBufRet.f32 %2113, 1
  %2116 = extractvalue %dx.types.CBufRet.f32 %2113, 2
  %2117 = extractvalue %dx.types.CBufRet.f32 %2113, 3
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 3
  %2120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2121 = extractvalue %dx.types.CBufRet.i32 %2120, 0
  %2122 = extractvalue %dx.types.CBufRet.i32 %2120, 1
  %2123 = udiv i32 %2122, %2121
  %2124 = fsub fast float %2111, %2114
  %2125 = fsub fast float %2112, %2115
  %2126 = call float @dx.op.binary.f32(i32 35, float %2124, float 0.000000e+00)  ; FMax(a,b)
  %2127 = call float @dx.op.binary.f32(i32 35, float %2125, float 0.000000e+00)  ; FMax(a,b)
  %2128 = call float @dx.op.binary.f32(i32 36, float %2126, float %2116)  ; FMin(a,b)
  %2129 = call float @dx.op.binary.f32(i32 36, float %2127, float %2117)  ; FMin(a,b)
  %2130 = add i32 %2121, -1
  %2131 = add i32 %2123, -1
  %2132 = fmul fast float %2128, %2119
  %2133 = fmul fast float %2129, %2119
  %2134 = fptoui float %2132 to i32
  %2135 = fptoui float %2133 to i32
  %2136 = call i32 @dx.op.binary.i32(i32 40, i32 %2134, i32 %2130)  ; UMin(a,b)
  %2137 = call i32 @dx.op.binary.i32(i32 40, i32 %2135, i32 %2131)  ; UMin(a,b)
  %2138 = mul i32 %2137, %2121
  %2139 = add i32 %2138, %2136
  %2140 = shl i32 %2139, 2
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = icmp eq i32 %2142, -1
  br i1 %2143, label %2360, label %2144

; <label>:2144                                    ; preds = %2089
  %2145 = mul i32 %2142, 148
  %2146 = add i32 %2145, 4
  %2147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.f32 %2147, 0
  %2149 = add i32 %2145, 8
  %2150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.f32 %2150, 0
  %2152 = add i32 %2145, 36
  %2153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.f32 %2153, 0
  %2155 = add i32 %2145, 60
  %2156 = add i32 %2145, 92
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2156, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = add i32 %2145, 116
  %2160 = fsub fast float %2111, %2148
  %2161 = fsub fast float %2112, %2151
  %2162 = fmul fast float %2119, %2160
  %2163 = fmul fast float %2119, %2161
  %2164 = call float @dx.op.unary.f32(i32 7, float %2162)  ; Saturate(value)
  %2165 = call float @dx.op.unary.f32(i32 7, float %2163)  ; Saturate(value)
  %2166 = fsub fast float 1.000000e+00, %2165
  %2167 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2168 = extractvalue %dx.types.CBufRet.f32 %2167, 2
  %2169 = call float @dx.op.unary.f32(i32 83, float %2164)  ; DerivCoarseX(value)
  %2170 = call float @dx.op.unary.f32(i32 83, float %2166)  ; DerivCoarseX(value)
  %2171 = call float @dx.op.unary.f32(i32 84, float %2164)  ; DerivCoarseY(value)
  %2172 = call float @dx.op.unary.f32(i32 84, float %2166)  ; DerivCoarseY(value)
  %2173 = fmul fast float %2169, %2168
  %2174 = fmul fast float %2170, %2168
  %2175 = fmul fast float %2171, %2168
  %2176 = fmul fast float %2172, %2168
  %2177 = call float @dx.op.dot2.f32(i32 54, float %2175, float %2176, float %2175, float %2176)  ; Dot2(ax,ay,bx,by)
  %2178 = call float @dx.op.dot2.f32(i32 54, float %2173, float %2174, float %2173, float %2174)  ; Dot2(ax,ay,bx,by)
  %2179 = call float @dx.op.binary.f32(i32 35, float %2178, float %2177)  ; FMax(a,b)
  %2180 = call float @dx.op.unary.f32(i32 23, float %2179)  ; Log(value)
  %2181 = fmul fast float %2180, 5.000000e-01
  %2182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2183 = extractvalue %dx.types.CBufRet.f32 %2182, 1
  %2184 = fadd fast float %2183, %2181
  %2185 = call float @dx.op.binary.f32(i32 35, float %2184, float 0.000000e+00)  ; FMax(a,b)
  %2186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2187 = extractvalue %dx.types.CBufRet.f32 %2186, 3
  %2188 = fadd fast float %2187, %2185
  %2189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2190 = extractvalue %dx.types.CBufRet.f32 %2189, 3
  %2191 = fadd fast float %2188, %2190
  %2192 = add i32 %2158, 0
  %2193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2192, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2194 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2193, i32 0)  ; GetDimensions(handle,mipLevel)
  %2195 = extractvalue %dx.types.Dimensions %2194, 0
  %2196 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2195)  ; FirstbitLo(value)
  %2197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.i32 %2197, 1
  %2199 = sub nsw i32 %2198, %2196
  %2200 = sitofp i32 %2199 to float
  %2201 = fsub fast float %2191, %2200
  %2202 = call float @dx.op.binary.f32(i32 35, float %2201, float 0.000000e+00)  ; FMax(a,b)
  %2203 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2193, %dx.types.Handle %23, float %2164, float %2166, float %2154, float undef, i32 0, i32 0, i32 undef, float %2202)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  %2205 = fcmp ule float %2204, 0x3FE0101020000000
  %2206 = extractvalue %dx.types.CBufRet.i32 %2197, 0
  %2207 = and i32 %2206, 128
  %2208 = icmp ne i32 %2207, 0
  %2209 = and i1 %2205, %2208
  br i1 %2209, label %2360, label %2210

; <label>:2210                                    ; preds = %2144
  %2211 = add i32 %2145, 20
  %2212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.f32 %2212, 0
  %2214 = add i32 %2145, 24
  %2215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.f32 %2215, 0
  %2217 = add i32 %2145, 40
  %2218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.f32 %2218, 0
  %2220 = add i32 %2145, 96
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2224 = extractvalue %dx.types.CBufRet.f32 %2223, 2
  %2225 = fmul fast float %2224, %2164
  %2226 = fmul fast float %2224, %2166
  %2227 = extractvalue %dx.types.CBufRet.f32 %2223, 3
  %2228 = fadd fast float %2225, %2227
  %2229 = fadd fast float %2226, %2227
  %2230 = add i32 %2222, 0
  %2231 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2230, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2232 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2231, i32 0)  ; GetDimensions(handle,mipLevel)
  %2233 = extractvalue %dx.types.Dimensions %2232, 0
  %2234 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2233)  ; FirstbitLo(value)
  %2235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2236 = extractvalue %dx.types.CBufRet.i32 %2235, 1
  %2237 = sub nsw i32 %2236, %2234
  %2238 = sitofp i32 %2237 to float
  %2239 = fsub fast float %2188, %2238
  %2240 = call float @dx.op.binary.f32(i32 35, float %2239, float 0.000000e+00)  ; FMax(a,b)
  %2241 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2231, %dx.types.Handle %23, float %2228, float %2229, float %2219, float undef, i32 0, i32 0, i32 undef, float %2240)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2242 = extractvalue %dx.types.ResRet.f32 %2241, 0
  %2243 = fmul fast float %2242, %2213
  %2244 = fadd fast float %2243, %2216
  %2245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2246 = extractvalue %dx.types.CBufRet.f32 %2245, 0
  %2247 = extractvalue %dx.types.CBufRet.f32 %2245, 1
  %2248 = extractvalue %dx.types.CBufRet.f32 %2245, 2
  %2249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2249, 3
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 3
  %2253 = extractvalue %dx.types.CBufRet.f32 %2245, 3
  %2254 = fadd fast float %2250, %2111
  %2255 = fadd fast float %2252, %2112
  %2256 = fadd fast float %2244, %2253
  %2257 = fmul fast float %2254, %2246
  %2258 = call float @dx.op.tertiary.f32(i32 46, float %2255, float %2247, float %2257)  ; FMad(a,b,c)
  %2259 = call float @dx.op.tertiary.f32(i32 46, float %2256, float %2248, float %2258)  ; FMad(a,b,c)
  %2260 = fsub fast float %2259, %2253
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 2
  %2263 = fsub fast float %2260, %2262
  %2264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2265 = extractvalue %dx.types.CBufRet.i32 %2264, 0
  %2266 = call i32 @dx.op.binary.i32(i32 40, i32 %2142, i32 %2265)  ; UMin(a,b)
  %2267 = mul i32 %2266, 36
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = add i32 %2267, 4
  %2271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2272 = extractvalue %dx.types.CBufRet.f32 %2271, 0
  %2273 = fmul fast float %2272, %2164
  %2274 = fmul fast float %2272, %2166
  %2275 = extractvalue %dx.types.CBufRet.f32 %2271, 1
  %2276 = fadd fast float %2273, %2275
  %2277 = fadd fast float %2274, %2275
  %2278 = icmp eq i32 %2269, 0
  br i1 %2278, label %2347, label %2279

; <label>:2279                                    ; preds = %2210
  br label %2280

; <label>:2280                                    ; preds = %2337, %2279
  %2281 = phi float [ %2338, %2337 ], [ 0.000000e+00, %2279 ]
  %2282 = phi float [ %2339, %2337 ], [ 0.000000e+00, %2279 ]
  %2283 = phi float [ %2340, %2337 ], [ 0.000000e+00, %2279 ]
  %2284 = phi float [ %2341, %2337 ], [ 0.000000e+00, %2279 ]
  %2285 = phi float [ %2342, %2337 ], [ 0.000000e+00, %2279 ]
  %2286 = phi float [ %2343, %2337 ], [ 0.000000e+00, %2279 ]
  %2287 = phi i32 [ %2344, %2337 ], [ 0, %2279 ]
  %2288 = shl i32 %2287, 2
  %2289 = add i32 %2155, %2288
  %2290 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2289, i32 undef)  ; BufferLoad(srv,index,wot)
  %2291 = extractvalue %dx.types.ResRet.f32 %2290, 0
  %2292 = add i32 %2159, %2288
  %2293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2292, i32 undef)  ; BufferLoad(srv,index,wot)
  %2294 = extractvalue %dx.types.ResRet.i32 %2293, 0
  %2295 = add i32 %2294, 0
  %2296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2295, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2297 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2296, i32 0)  ; GetDimensions(handle,mipLevel)
  %2298 = extractvalue %dx.types.Dimensions %2297, 0
  %2299 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2298)  ; FirstbitLo(value)
  %2300 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2301 = extractvalue %dx.types.CBufRet.i32 %2300, 1
  %2302 = sub nsw i32 %2301, %2299
  %2303 = sitofp i32 %2302 to float
  %2304 = fsub fast float %2188, %2303
  %2305 = call float @dx.op.binary.f32(i32 35, float %2304, float 0.000000e+00)  ; FMax(a,b)
  %2306 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2296, %dx.types.Handle %23, float %2276, float %2277, float %2291, float undef, i32 0, i32 0, i32 undef, float %2305)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2307 = extractvalue %dx.types.ResRet.f32 %2306, 0
  %2308 = fcmp fast ogt float %2307, 0.000000e+00
  br i1 %2308, label %2309, label %2337

; <label>:2309                                    ; preds = %2280
  %2310 = add i32 %2270, %2288
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2310, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 32767
  %2314 = mul nuw nsw i32 %2313, 928
  %2315 = add nuw nsw i32 %2314, 48
  %2316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.f32 %2316, 0
  %2318 = extractvalue %dx.types.ResRet.f32 %2316, 1
  %2319 = extractvalue %dx.types.ResRet.f32 %2316, 2
  %2320 = add nuw nsw i32 %2314, 60
  %2321 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.f32 %2321, 0
  %2323 = extractvalue %dx.types.ResRet.f32 %2321, 1
  %2324 = extractvalue %dx.types.ResRet.f32 %2321, 2
  %2325 = fmul fast float %2317, %2307
  %2326 = fmul fast float %2318, %2307
  %2327 = fmul fast float %2319, %2307
  %2328 = fadd fast float %2325, %2281
  %2329 = fadd fast float %2326, %2282
  %2330 = fadd fast float %2327, %2283
  %2331 = fmul fast float %2322, %2307
  %2332 = fmul fast float %2323, %2307
  %2333 = fmul fast float %2324, %2307
  %2334 = fadd fast float %2331, %2284
  %2335 = fadd fast float %2332, %2285
  %2336 = fadd fast float %2333, %2286
  br label %2337

; <label>:2337                                    ; preds = %2309, %2280
  %2338 = phi float [ %2328, %2309 ], [ %2281, %2280 ]
  %2339 = phi float [ %2329, %2309 ], [ %2282, %2280 ]
  %2340 = phi float [ %2330, %2309 ], [ %2283, %2280 ]
  %2341 = phi float [ %2334, %2309 ], [ %2284, %2280 ]
  %2342 = phi float [ %2335, %2309 ], [ %2285, %2280 ]
  %2343 = phi float [ %2336, %2309 ], [ %2286, %2280 ]
  %2344 = add nuw i32 %2287, 1
  %2345 = icmp eq i32 %2344, %2269
  br i1 %2345, label %2346, label %2280

; <label>:2346                                    ; preds = %2337
  br label %2347

; <label>:2347                                    ; preds = %2346, %2210
  %2348 = phi float [ 0.000000e+00, %2210 ], [ %2338, %2346 ]
  %2349 = phi float [ 0.000000e+00, %2210 ], [ %2339, %2346 ]
  %2350 = phi float [ 0.000000e+00, %2210 ], [ %2340, %2346 ]
  %2351 = phi float [ 0.000000e+00, %2210 ], [ %2341, %2346 ]
  %2352 = phi float [ 0.000000e+00, %2210 ], [ %2342, %2346 ]
  %2353 = phi float [ 0.000000e+00, %2210 ], [ %2343, %2346 ]
  %2354 = fadd fast float %2351, %2348
  %2355 = fmul fast float %2354, 0x3F847AE140000000
  %2356 = fadd fast float %2352, %2349
  %2357 = fmul fast float %2356, 0x3F847AE140000000
  %2358 = fadd fast float %2353, %2350
  %2359 = fmul fast float %2358, 0x3F847AE140000000
  br label %2360

; <label>:2360                                    ; preds = %2347, %2144, %2089, %2086, %2057, %2019
  %2361 = phi float [ %2071, %2057 ], [ -1.310720e+05, %2019 ], [ %2263, %2347 ], [ -1.310720e+05, %2089 ], [ -1.310720e+05, %2144 ], [ -1.310720e+05, %2086 ]
  %2362 = phi float [ %2081, %2057 ], [ 0.000000e+00, %2019 ], [ %2355, %2347 ], [ 0.000000e+00, %2089 ], [ 0.000000e+00, %2144 ], [ 0.000000e+00, %2086 ]
  %2363 = phi float [ %2083, %2057 ], [ 0.000000e+00, %2019 ], [ %2357, %2347 ], [ 0.000000e+00, %2089 ], [ 0.000000e+00, %2144 ], [ 0.000000e+00, %2086 ]
  %2364 = phi float [ %2085, %2057 ], [ 0.000000e+00, %2019 ], [ %2359, %2347 ], [ 0.000000e+00, %2089 ], [ 0.000000e+00, %2144 ], [ 0.000000e+00, %2086 ]
  %2365 = phi i1 [ true, %2057 ], [ false, %2019 ], [ true, %2347 ], [ false, %2089 ], [ false, %2144 ], [ false, %2086 ]
  %2366 = and i32 %127, 3
  %2367 = icmp eq i32 %2366, 1
  %2368 = select i1 %2367, float 1.000000e+00, float 0.000000e+00
  %2369 = fsub fast float %2361, %111
  %2370 = call float @dx.op.unary.f32(i32 7, float %2369)  ; Saturate(value)
  %2371 = select i1 %2365, float %2370, float 1.000000e+00
  %2372 = fmul fast float %2371, %2368
  %2373 = icmp eq i32 %2366, 3
  %2374 = select i1 %2373, float 1.000000e+00, float %2372
  %2375 = call float @dx.op.binary.f32(i32 35, float %1935, float %2374)  ; FMax(a,b)
  %2376 = call float @dx.op.unary.f32(i32 7, float %2375)  ; Saturate(value)
  %2377 = fcmp fast une float %2376, 0.000000e+00
  %2378 = call float @dx.op.dot3.f32(i32 55, float %109, float %110, float %111, float %109, float %110, float %111)  ; Dot3(ax,ay,az,bx,by,bz)
  %2379 = call float @dx.op.unary.f32(i32 25, float %2378)  ; Rsqrt(value)
  br i1 %2377, label %2387, label %2380

; <label>:2380                                    ; preds = %2360
  %2381 = fmul fast float %2379, %109
  %2382 = fmul fast float %2379, %110
  %2383 = fmul fast float %2379, %111
  %2384 = fsub fast float -0.000000e+00, %2381
  %2385 = fsub fast float -0.000000e+00, %2382
  %2386 = fsub fast float -0.000000e+00, %2383
  br label %2555

; <label>:2387                                    ; preds = %2360
  %2388 = fmul fast float %109, %2379
  %2389 = fsub fast float -0.000000e+00, %2388
  %2390 = fmul fast float %110, %2379
  %2391 = fsub fast float -0.000000e+00, %2390
  %2392 = fmul fast float %111, %2379
  %2393 = fsub fast float -0.000000e+00, %2392
  %2394 = call float @dx.op.dot3.f32(i32 55, float %2389, float %2391, float %2393, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2395 = fmul fast float %2376, 2.500000e+00
  %2396 = call float @dx.op.unary.f32(i32 7, float %2395)  ; Saturate(value)
  %2397 = fmul fast float %2376, 0x4013FFFFE0000000
  %2398 = fadd fast float %2397, 0xBFFFFFFFE0000000
  %2399 = call float @dx.op.unary.f32(i32 7, float %2398)  ; Saturate(value)
  %2400 = fmul fast float %2376, 0x4004000020000000
  %2401 = fadd fast float %2400, 0xBFF8000040000000
  %2402 = call float @dx.op.unary.f32(i32 7, float %2401)  ; Saturate(value)
  %2403 = call float @dx.op.unary.f32(i32 7, float %2396)  ; Saturate(value)
  %2404 = fmul fast float %1965, 1.000000e+01
  %2405 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  %2406 = fmul fast float %2405, 2.000000e+00
  %2407 = fsub fast float 3.000000e+00, %2406
  %2408 = fmul fast float %2405, %2405
  %2409 = fmul fast float %2408, %2407
  %2410 = fsub fast float 1.000000e+00, %2409
  %2411 = fsub fast float 0x3FE3333340000000, %1986
  %2412 = fmul fast float %2411, 0x400AAAAAA0000000
  %2413 = call float @dx.op.unary.f32(i32 7, float %2412)  ; Saturate(value)
  %2414 = fmul fast float %2410, %2413
  %2415 = fmul fast float %1998, 0x3FEA2B8620000000
  %2416 = fmul fast float %1999, 0x3FEA2B8620000000
  %2417 = fmul fast float %2000, 0x3FEA2B8620000000
  %2418 = fadd fast float %2415, 0x3FC81DFBA0000000
  %2419 = fmul fast float %2418, %1998
  %2420 = fadd fast float %2419, 0x3F910E6020000000
  %2421 = fadd fast float %2416, 0x3FC81DFBA0000000
  %2422 = fmul fast float %2421, %1999
  %2423 = fadd fast float %2422, 0x3F910E6020000000
  %2424 = fadd fast float %2417, 0x3FC81DFBA0000000
  %2425 = fmul fast float %2424, %2000
  %2426 = fadd fast float %2425, 0x3F910E6020000000
  %2427 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  %2428 = call float @dx.op.unary.f32(i32 7, float %2423)  ; Saturate(value)
  %2429 = call float @dx.op.unary.f32(i32 7, float %2426)  ; Saturate(value)
  %2430 = fsub fast float %2427, %1998
  %2431 = fsub fast float %2428, %1999
  %2432 = fsub fast float %2429, %2000
  %2433 = fmul fast float %2430, %2403
  %2434 = fmul fast float %2433, %2414
  %2435 = fmul fast float %2431, %2403
  %2436 = fmul fast float %2435, %2414
  %2437 = fmul fast float %2432, %2403
  %2438 = fmul fast float %2437, %2414
  %2439 = fadd fast float %2434, %1998
  %2440 = fadd fast float %2436, %1999
  %2441 = fadd fast float %2438, %2000
  %2442 = fmul fast float %1946, %1946
  %2443 = fmul fast float %2442, %2442
  %2444 = fadd fast float %2399, 1.000000e+00
  %2445 = fsub fast float %2444, %2414
  %2446 = call float @dx.op.unary.f32(i32 7, float %2445)  ; Saturate(value)
  %2447 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = call float @dx.op.unary.f32(i32 7, float %2447)  ; Saturate(value)
  %2449 = fsub fast float 1.000000e+00, %2443
  %2450 = call float @dx.op.binary.f32(i32 36, float %2446, float %2449)  ; FMin(a,b)
  %2451 = call float @dx.op.unary.f32(i32 7, float %2402)  ; Saturate(value)
  %2452 = call float @dx.op.binary.f32(i32 35, float %2450, float %2451)  ; FMax(a,b)
  %2453 = fadd fast float %2448, 0xBFE4CCCCC0000000
  %2454 = fmul fast float %2453, 0x4006DB6DA0000000
  %2455 = call float @dx.op.unary.f32(i32 7, float %2454)  ; Saturate(value)
  %2456 = fmul fast float %2455, 2.000000e+00
  %2457 = fsub fast float 3.000000e+00, %2456
  %2458 = bitcast float %1983 to i32
  %2459 = ashr i32 %2458, 1
  %2460 = add nsw i32 %2459, 532487669
  %2461 = bitcast i32 %2460 to float
  %2462 = fsub fast float 1.000000e+00, %2461
  %2463 = bitcast float %2462 to i32
  %2464 = sub nsw i32 2129859010, %2463
  %2465 = bitcast i32 %2464 to float
  %2466 = fmul fast float %2465, 2.000000e+00
  %2467 = bitcast float %1984 to i32
  %2468 = ashr i32 %2467, 1
  %2469 = add nsw i32 %2468, 532487669
  %2470 = bitcast i32 %2469 to float
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = bitcast float %2471 to i32
  %2473 = sub nsw i32 2129859010, %2472
  %2474 = bitcast i32 %2473 to float
  %2475 = fmul fast float %2474, 2.000000e+00
  %2476 = bitcast float %1985 to i32
  %2477 = ashr i32 %2476, 1
  %2478 = add nsw i32 %2477, 532487669
  %2479 = bitcast i32 %2478 to float
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = bitcast float %2480 to i32
  %2482 = sub nsw i32 2129859010, %2481
  %2483 = bitcast i32 %2482 to float
  %2484 = fmul fast float %2483, 2.000000e+00
  %2485 = fsub fast float 0x4002A9FBE0000000, %2466
  %2486 = fadd fast float %2466, 0x3FD54FDF00000000
  %2487 = bitcast float %2486 to i32
  %2488 = sub nsw i32 2129859010, %2487
  %2489 = bitcast i32 %2488 to float
  %2490 = fmul fast float %2489, %2485
  %2491 = fmul fast float %2490, %2490
  %2492 = fsub fast float 0x4002A9FBE0000000, %2475
  %2493 = fadd fast float %2475, 0x3FD54FDF00000000
  %2494 = bitcast float %2493 to i32
  %2495 = sub nsw i32 2129859010, %2494
  %2496 = bitcast i32 %2495 to float
  %2497 = fmul fast float %2496, %2492
  %2498 = fmul fast float %2497, %2497
  %2499 = fsub fast float 0x4002A9FBE0000000, %2484
  %2500 = fadd fast float %2484, 0x3FD54FDF00000000
  %2501 = bitcast float %2500 to i32
  %2502 = sub nsw i32 2129859010, %2501
  %2503 = bitcast i32 %2502 to float
  %2504 = fmul fast float %2503, %2499
  %2505 = fmul fast float %2504, %2504
  %2506 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2491)  ; FMax(a,b)
  %2507 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2498)  ; FMax(a,b)
  %2508 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2505)  ; FMax(a,b)
  %2509 = fsub fast float 1.000000e+00, %2394
  %2510 = fadd fast float %2509, %2410
  %2511 = call float @dx.op.unary.f32(i32 7, float %2510)  ; Saturate(value)
  %2512 = fsub fast float 1.000000e+00, %2374
  %2513 = fmul fast float %2452, %2512
  %2514 = fmul fast float %2455, %2455
  %2515 = fmul fast float %2514, %2513
  %2516 = fmul fast float %2515, %2457
  %2517 = fmul fast float %2512, 0xBFE99999A0000000
  %2518 = fmul fast float %2517, %2403
  %2519 = fmul fast float %2518, %2414
  %2520 = fadd fast float %2519, 1.000000e+00
  %2521 = fadd fast float %1986, -1.000000e+00
  %2522 = fmul fast float %2520, %2521
  %2523 = fadd fast float %2522, 1.000000e+00
  %2524 = fsub fast float %2506, %1983
  %2525 = fsub fast float %2507, %1984
  %2526 = fsub fast float %2508, %1985
  %2527 = fmul fast float %2516, %2524
  %2528 = fmul fast float %2516, %2525
  %2529 = fmul fast float %2516, %2526
  %2530 = fadd fast float %2527, %1983
  %2531 = fadd fast float %2528, %1984
  %2532 = fadd fast float %2529, %1985
  %2533 = fsub fast float %56, %1962
  %2534 = fsub fast float %57, %1963
  %2535 = fsub fast float %58, %1964
  %2536 = fmul fast float %2516, %2533
  %2537 = fmul fast float %2516, %2534
  %2538 = fmul fast float %2516, %2535
  %2539 = fadd fast float %2536, %1962
  %2540 = fadd fast float %2537, %1963
  %2541 = fadd fast float %2538, %1964
  %2542 = fmul fast float %2516, %2511
  %2543 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  %2544 = fsub fast float 1.000000e+00, %2543
  %2545 = fmul fast float %2542, %2544
  %2546 = fadd fast float %2545, %2543
  %2547 = fsub fast float 1.000000e+00, %1946
  %2548 = fmul fast float %2516, %2547
  %2549 = fadd fast float %2548, %1946
  %2550 = call float @dx.op.dot3.f32(i32 55, float %2539, float %2540, float %2541, float %2539, float %2540, float %2541)  ; Dot3(ax,ay,az,bx,by,bz)
  %2551 = call float @dx.op.unary.f32(i32 25, float %2550)  ; Rsqrt(value)
  %2552 = fmul fast float %2539, %2551
  %2553 = fmul fast float %2540, %2551
  %2554 = fmul fast float %2541, %2551
  br label %2555

; <label>:2555                                    ; preds = %2387, %2380
  %2556 = phi float [ %2386, %2380 ], [ %2393, %2387 ]
  %2557 = phi float [ %2385, %2380 ], [ %2391, %2387 ]
  %2558 = phi float [ %2384, %2380 ], [ %2389, %2387 ]
  %2559 = phi float [ %2383, %2380 ], [ %2392, %2387 ]
  %2560 = phi float [ %2382, %2380 ], [ %2390, %2387 ]
  %2561 = phi float [ %2381, %2380 ], [ %2388, %2387 ]
  %2562 = phi float [ %1983, %2380 ], [ %2530, %2387 ]
  %2563 = phi float [ %1984, %2380 ], [ %2531, %2387 ]
  %2564 = phi float [ %1985, %2380 ], [ %2532, %2387 ]
  %2565 = phi float [ %1998, %2380 ], [ %2439, %2387 ]
  %2566 = phi float [ %1999, %2380 ], [ %2440, %2387 ]
  %2567 = phi float [ %2000, %2380 ], [ %2441, %2387 ]
  %2568 = phi float [ %1962, %2380 ], [ %2552, %2387 ]
  %2569 = phi float [ %1963, %2380 ], [ %2553, %2387 ]
  %2570 = phi float [ %1964, %2380 ], [ %2554, %2387 ]
  %2571 = phi float [ %1986, %2380 ], [ %2546, %2387 ]
  %2572 = phi float [ %1946, %2380 ], [ %2549, %2387 ]
  %2573 = select i1 %151, float 0.000000e+00, float %2564
  %2574 = call float @dx.op.dot3.f32(i32 55, float %2568, float %2569, float %2570, float %2558, float %2557, float %2556)  ; Dot3(ax,ay,az,bx,by,bz)
  %2575 = call float @dx.op.unary.f32(i32 7, float %2574)  ; Saturate(value)
  %2576 = call float @dx.op.dot3.f32(i32 55, float %2561, float %2560, float %2559, float %2568, float %2569, float %2570)  ; Dot3(ax,ay,az,bx,by,bz)
  %2577 = fmul fast float %2576, 2.000000e+00
  %2578 = fmul fast float %2577, %2568
  %2579 = fmul fast float %2577, %2569
  %2580 = fmul fast float %2577, %2570
  %2581 = fsub fast float %2561, %2578
  %2582 = fsub fast float %2560, %2579
  %2583 = fsub fast float %2559, %2580
  %2584 = call float @dx.op.binary.f32(i32 36, float %2572, float 1.000000e+00)  ; FMin(a,b)
  %2585 = fsub fast float 1.000000e+00, %2572
  %2586 = bitcast float %2585 to i32
  %2587 = sub nsw i32 2129859010, %2586
  %2588 = bitcast i32 %2587 to float
  %2589 = fsub fast float 1.000000e+00, %33
  %2590 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2591 = call float @dx.op.binary.f32(i32 35, float %2590, float 0x3FA99999A0000000)  ; FMax(a,b)
  %2592 = fdiv fast float %2589, %2591
  %2593 = call float @dx.op.dot3.f32(i32 55, float %2568, float %2569, float %2570, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2595 = fmul fast float %2594, 5.000000e-01
  %2596 = fadd fast float %2595, 5.000000e-01
  %2597 = fmul fast float %2596, %33
  %2598 = call float @dx.op.dot3.f32(i32 55, float %2568, float %2569, float %2570, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %2599 = call float @dx.op.unary.f32(i32 7, float %2598)  ; Saturate(value)
  %2600 = fmul fast float %2599, %2592
  %2601 = fadd fast float %2597, %2600
  %2602 = fsub fast float 5.000000e-01, %2595
  %2603 = fmul fast float %2602, %2565
  %2604 = fmul fast float %2602, %2566
  %2605 = fmul fast float %2602, %2567
  %2606 = fadd fast float %2601, %2603
  %2607 = fadd fast float %2601, %2604
  %2608 = fadd fast float %2601, %2605
  %2609 = call float @dx.op.dot3.f32(i32 55, float %2581, float %2582, float %2583, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %2610 = call float @dx.op.unary.f32(i32 7, float %2609)  ; Saturate(value)
  %2611 = fmul fast float %2610, 5.000000e-01
  %2612 = fadd fast float %2611, 5.000000e-01
  %2613 = fmul fast float %2612, %33
  %2614 = call float @dx.op.dot3.f32(i32 55, float %2581, float %2582, float %2583, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  %2616 = fmul fast float %2615, %2592
  %2617 = fadd fast float %2613, %2616
  %2618 = fsub fast float 5.000000e-01, %2611
  %2619 = fmul fast float %2618, %2565
  %2620 = fmul fast float %2618, %2566
  %2621 = fmul fast float %2618, %2567
  %2622 = fadd fast float %2617, %2619
  %2623 = fadd fast float %2617, %2620
  %2624 = fadd fast float %2617, %2621
  %2625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %2626 = extractvalue %dx.types.CBufRet.f32 %2625, 0
  %2627 = call float @dx.op.binary.f32(i32 36, float %2565, float %2626)  ; FMin(a,b)
  %2628 = fsub fast float 1.000000e+00, %2584
  %2629 = fmul fast float %2627, %2628
  %2630 = fsub fast float 1.000000e+00, %2629
  %2631 = bitcast float %2630 to i32
  %2632 = sub nsw i32 2129859010, %2631
  %2633 = bitcast i32 %2632 to float
  %2634 = call float @dx.op.binary.f32(i32 36, float %2566, float %2626)  ; FMin(a,b)
  %2635 = fmul fast float %2634, %2628
  %2636 = fsub fast float 1.000000e+00, %2635
  %2637 = bitcast float %2636 to i32
  %2638 = sub nsw i32 2129859010, %2637
  %2639 = bitcast i32 %2638 to float
  %2640 = call float @dx.op.binary.f32(i32 36, float %2567, float %2626)  ; FMin(a,b)
  %2641 = fmul fast float %2640, %2628
  %2642 = fsub fast float 1.000000e+00, %2641
  %2643 = bitcast float %2642 to i32
  %2644 = sub nsw i32 2129859010, %2643
  %2645 = bitcast i32 %2644 to float
  %2646 = fmul fast float %2584, %34
  %2647 = fmul fast float %2646, %2606
  %2648 = fmul fast float %2647, %2633
  %2649 = fmul fast float %2584, %35
  %2650 = fmul fast float %2649, %2607
  %2651 = fmul fast float %2650, %2639
  %2652 = fmul fast float %2584, %36
  %2653 = fmul fast float %2652, %2608
  %2654 = fmul fast float %2653, %2645
  %2655 = call float @dx.op.binary.f32(i32 36, float %2562, float %2626)  ; FMin(a,b)
  %2656 = fmul fast float %2655, %2628
  %2657 = fsub fast float 1.000000e+00, %2656
  %2658 = bitcast float %2657 to i32
  %2659 = sub nsw i32 2129859010, %2658
  %2660 = bitcast i32 %2659 to float
  %2661 = call float @dx.op.binary.f32(i32 36, float %2563, float %2626)  ; FMin(a,b)
  %2662 = fmul fast float %2661, %2628
  %2663 = fsub fast float 1.000000e+00, %2662
  %2664 = bitcast float %2663 to i32
  %2665 = sub nsw i32 2129859010, %2664
  %2666 = bitcast i32 %2665 to float
  %2667 = call float @dx.op.binary.f32(i32 36, float %2573, float %2626)  ; FMin(a,b)
  %2668 = fmul fast float %2667, %2628
  %2669 = fsub fast float 1.000000e+00, %2668
  %2670 = bitcast float %2669 to i32
  %2671 = sub nsw i32 2129859010, %2670
  %2672 = bitcast i32 %2671 to float
  %2673 = fmul fast float %2646, %2622
  %2674 = fmul fast float %2673, %2660
  %2675 = fmul fast float %2649, %2623
  %2676 = fmul fast float %2675, %2666
  %2677 = fmul fast float %2652, %2624
  %2678 = fmul fast float %2677, %2672
  %2679 = call float @dx.op.dot3.f32(i32 55, float %2648, float %2651, float %2654, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2680 = select i1 %151, float 0.000000e+00, float %2648
  %2681 = select i1 %151, float %2679, float %2651
  %2682 = select i1 %151, float 0.000000e+00, float %2654
  %2683 = call float @dx.op.dot3.f32(i32 55, float %2674, float %2676, float %2678, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2684 = select i1 %151, float 0.000000e+00, float %2674
  %2685 = select i1 %151, float %2683, float %2676
  %2686 = select i1 %151, float 0.000000e+00, float %2678
  %2687 = fmul fast float %2575, 9.843750e-01
  %2688 = fmul fast float %2571, 9.843750e-01
  %2689 = fadd fast float %2687, 7.812500e-03
  %2690 = fadd fast float %2688, 7.812500e-03
  %2691 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2689, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2692 = extractvalue %dx.types.ResRet.f32 %2691, 2
  %2693 = extractvalue %dx.types.ResRet.f32 %2691, 3
  %2694 = fmul fast float %2692, %2562
  %2695 = fmul fast float %2692, %2563
  %2696 = fmul fast float %2692, %2573
  %2697 = fadd fast float %2694, %2693
  %2698 = fadd fast float %2695, %2693
  %2699 = fadd fast float %2696, %2693
  %2700 = fcmp fast ogt float %1939, 0.000000e+00
  br i1 %2700, label %2701, label %2727

; <label>:2701                                    ; preds = %2555
  %2702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1939, float %2575, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2703 = extractvalue %dx.types.ResRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.ResRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.ResRet.f32 %2702, 2
  %2706 = fadd fast float %2703, -5.000000e-01
  %2707 = fadd fast float %2704, -5.000000e-01
  %2708 = fadd fast float %2705, -5.000000e-01
  %2709 = fsub fast float 1.000000e+00, %2562
  %2710 = fsub fast float 1.000000e+00, %2563
  %2711 = fsub fast float 1.000000e+00, %2573
  %2712 = fmul fast float %2562, 4.000000e+00
  %2713 = fmul fast float %2712, %2709
  %2714 = fmul fast float %2713, %2706
  %2715 = fmul fast float %2563, 4.000000e+00
  %2716 = fmul fast float %2715, %2710
  %2717 = fmul fast float %2716, %2707
  %2718 = fmul fast float %2573, 4.000000e+00
  %2719 = fmul fast float %2718, %2711
  %2720 = fmul fast float %2719, %2708
  %2721 = fadd fast float %2714, %2697
  %2722 = fadd fast float %2717, %2698
  %2723 = fadd fast float %2720, %2699
  %2724 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2725 = call float @dx.op.unary.f32(i32 7, float %2722)  ; Saturate(value)
  %2726 = call float @dx.op.unary.f32(i32 7, float %2723)  ; Saturate(value)
  br label %2727

; <label>:2727                                    ; preds = %2701, %2555
  %2728 = phi float [ %2724, %2701 ], [ %2697, %2555 ]
  %2729 = phi float [ %2725, %2701 ], [ %2698, %2555 ]
  %2730 = phi float [ %2726, %2701 ], [ %2699, %2555 ]
  %2731 = call float @dx.op.binary.f32(i32 35, float %2729, float %2730)  ; FMax(a,b)
  %2732 = call float @dx.op.binary.f32(i32 35, float %2728, float %2731)  ; FMax(a,b)
  %2733 = fsub fast float 1.000000e+00, %2732
  %2734 = fmul fast float %2733, %2680
  %2735 = fmul fast float %2733, %2681
  %2736 = fmul fast float %2733, %2682
  %2737 = call float @dx.op.dot3.f32(i32 55, float %2565, float %2566, float %2567, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2738 = fcmp fast ogt float %2737, 0x3E7FF19E20000000
  %2739 = fdiv fast float 1.000000e+00, %2737
  %2740 = select i1 %2738, float %2739, float 0.000000e+00
  %2741 = fmul fast float %2740, %2565
  %2742 = fmul fast float %2740, %2566
  %2743 = fmul fast float %2740, %2567
  %2744 = fadd fast float %2741, -1.000000e+00
  %2745 = fadd fast float %2742, -1.000000e+00
  %2746 = fadd fast float %2743, -1.000000e+00
  %2747 = fmul fast float %2744, 5.000000e-01
  %2748 = fmul fast float %2745, 5.000000e-01
  %2749 = fmul fast float %2746, 5.000000e-01
  %2750 = fadd fast float %2747, 1.000000e+00
  %2751 = fadd fast float %2748, 1.000000e+00
  %2752 = fadd fast float %2749, 1.000000e+00
  %2753 = fmul fast float %2728, %2684
  %2754 = fmul fast float %2729, %2685
  %2755 = fmul fast float %2730, %2686
  %2756 = fsub fast float 1.000000e+00, %2575
  %2757 = bitcast float %2756 to i32
  %2758 = sitofp i32 %2757 to float
  %2759 = fmul fast float %2758, 5.000000e+00
  %2760 = fadd fast float %2759, 0xC1EFBF8940000000
  %2761 = fptosi float %2760 to i32
  %2762 = bitcast i32 %2761 to float
  %2763 = fmul fast float %2762, %1938
  %2764 = fmul fast float %2680, %2763
  %2765 = fmul fast float %2764, %2733
  %2766 = fmul fast float %2765, %2750
  %2767 = fmul fast float %2681, %2763
  %2768 = fmul fast float %2767, %2733
  %2769 = fmul fast float %2768, %2751
  %2770 = fmul fast float %2682, %2763
  %2771 = fmul fast float %2770, %2733
  %2772 = fmul fast float %2771, %2752
  %2773 = fmul fast float %2734, %1959
  %2774 = fmul fast float %2735, %1959
  %2775 = fmul fast float %2736, %1959
  %2776 = fadd fast float %2753, %1940
  %2777 = fadd fast float %2776, %2766
  %2778 = fmul fast float %2777, %1959
  %2779 = fadd fast float %2754, %1941
  %2780 = fadd fast float %2779, %2769
  %2781 = fmul fast float %2780, %1959
  %2782 = fadd fast float %2755, %1942
  %2783 = fadd fast float %2782, %2772
  %2784 = fmul fast float %2783, %1959
  %2785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %2786 = extractvalue %dx.types.CBufRet.f32 %2785, 3
  %2787 = fcmp fast oeq float %2786, 0.000000e+00
  br i1 %2787, label %3015, label %2788

; <label>:2788                                    ; preds = %2727
  %2789 = extractvalue %dx.types.CBufRet.f32 %2785, 0
  %2790 = extractvalue %dx.types.CBufRet.f32 %2785, 1
  %2791 = extractvalue %dx.types.CBufRet.f32 %2785, 2
  %2792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %2793 = extractvalue %dx.types.CBufRet.f32 %2792, 0
  %2794 = extractvalue %dx.types.CBufRet.f32 %2792, 1
  %2795 = extractvalue %dx.types.CBufRet.f32 %2792, 2
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.CBufRet.f32 %2796, 1
  %2799 = call float @dx.op.dot3.f32(i32 55, float %2793, float %2794, float %2795, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2800 = select i1 %151, float %2797, float %2793
  %2801 = select i1 %151, float %2799, float %2794
  %2802 = select i1 %151, float %2798, float %2795
  %2803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2804 = extractvalue %dx.types.CBufRet.f32 %2803, 1
  %2805 = fcmp fast une float %2804, 0.000000e+00
  br i1 %2805, label %2806, label %2823

; <label>:2806                                    ; preds = %2788
  %2807 = fptoui float %53 to i32
  %2808 = fptoui float %54 to i32
  %2809 = lshr i32 %2807, 4
  %2810 = lshr i32 %2808, 4
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = fptoui float %2812 to i32
  %2814 = add i32 %2813, 15
  %2815 = lshr i32 %2814, 4
  %2816 = mul i32 %2815, %2810
  %2817 = add i32 %2816, %2809
  %2818 = shl i32 %2817, 3
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = and i32 %2820, -268435456
  %2822 = icmp eq i32 %2821, -1342177280
  br i1 %2822, label %2833, label %2823

; <label>:2823                                    ; preds = %2806, %2788
  %2824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %26, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %2825 = extractvalue %dx.types.CBufRet.f32 %2824, 2
  %2826 = extractvalue %dx.types.CBufRet.f32 %2824, 3
  %2827 = fmul fast float %2825, %53
  %2828 = fmul fast float %2826, %54
  %2829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %25, float %2827, float %2828, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2830 = extractvalue %dx.types.ResRet.f32 %2829, 0
  %2831 = extractvalue %dx.types.ResRet.f32 %2829, 1
  %2832 = extractvalue %dx.types.ResRet.f32 %2829, 2
  br label %2833

; <label>:2833                                    ; preds = %2823, %2806
  %2834 = phi float [ %2830, %2823 ], [ 0.000000e+00, %2806 ]
  %2835 = phi float [ %2831, %2823 ], [ 0.000000e+00, %2806 ]
  %2836 = phi float [ %2832, %2823 ], [ 0.000000e+00, %2806 ]
  %2837 = call float @dx.op.binary.f32(i32 36, float %2835, float %2836)  ; FMin(a,b)
  %2838 = call float @dx.op.binary.f32(i32 36, float %2834, float %2837)  ; FMin(a,b)
  %2839 = fcmp fast ogt float %2838, 0.000000e+00
  br i1 %2839, label %2840, label %3015, !dx.controlflow.hints !62

; <label>:2840                                    ; preds = %2833
  %2841 = fmul fast float %2834, %2800
  %2842 = fmul fast float %2835, %2801
  %2843 = fmul fast float %2836, %2802
  %2844 = fsub fast float %2789, %2561
  %2845 = fsub fast float %2790, %2560
  %2846 = fsub fast float %2791, %2559
  %2847 = call float @dx.op.dot3.f32(i32 55, float %2844, float %2845, float %2846, float %2844, float %2845, float %2846)  ; Dot3(ax,ay,az,bx,by,bz)
  %2848 = call float @dx.op.unary.f32(i32 25, float %2847)  ; Rsqrt(value)
  %2849 = fmul fast float %2848, %2844
  %2850 = fmul fast float %2848, %2845
  %2851 = fmul fast float %2848, %2846
  %2852 = call float @dx.op.dot3.f32(i32 55, float %2789, float %2790, float %2791, float %2568, float %2569, float %2570)  ; Dot3(ax,ay,az,bx,by,bz)
  %2853 = call float @dx.op.dot3.f32(i32 55, float %2558, float %2557, float %2556, float %2849, float %2850, float %2851)  ; Dot3(ax,ay,az,bx,by,bz)
  %2854 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  %2855 = fmul fast float %2854, %2854
  %2856 = fmul fast float %2855, %2588
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  %2858 = fmul fast float %2857, %2854
  %2859 = call float @dx.op.dot3.f32(i32 55, float %2568, float %2569, float %2570, float %2849, float %2850, float %2851)  ; Dot3(ax,ay,az,bx,by,bz)
  %2860 = fmul fast float %2859, %2859
  %2861 = call float @dx.op.unary.f32(i32 6, float %2852)  ; FAbs(value)
  %2862 = fsub fast float 1.000000e+00, %2571
  %2863 = call float @dx.op.binary.f32(i32 35, float %2862, float 0x3F847AE140000000)  ; FMax(a,b)
  %2864 = fmul fast float %2863, %2863
  %2865 = fmul fast float %2864, %2864
  %2866 = fsub fast float 1.000000e+00, %2865
  %2867 = fmul fast float %2575, %2575
  %2868 = fmul fast float %2867, %2866
  %2869 = fadd fast float %2868, %2865
  %2870 = bitcast float %2869 to i32
  %2871 = ashr i32 %2870, 1
  %2872 = add nsw i32 %2871, 532487669
  %2873 = bitcast i32 %2872 to float
  %2874 = fadd fast float %2873, %2575
  %2875 = fmul fast float %2865, %2860
  %2876 = fsub fast float 1.000000e+00, %2860
  %2877 = fadd fast float %2876, %2875
  %2878 = fmul fast float %2861, %2861
  %2879 = fmul fast float %2878, %2866
  %2880 = fadd fast float %2879, %2865
  %2881 = bitcast float %2880 to i32
  %2882 = ashr i32 %2881, 1
  %2883 = add nsw i32 %2882, 532487669
  %2884 = bitcast i32 %2883 to float
  %2885 = fadd fast float %2884, %2861
  %2886 = fmul fast float %2877, %2877
  %2887 = fmul fast float %2886, %2874
  %2888 = fmul fast float %2887, %2885
  %2889 = fdiv fast float 0x3FF0A00000000000, %2888
  %2890 = fmul fast float %2889, %2865
  %2891 = call float @dx.op.unary.f32(i32 6, float %2853)  ; FAbs(value)
  %2892 = fsub fast float 1.000000e+00, %2891
  %2893 = bitcast float %2892 to i32
  %2894 = sitofp i32 %2893 to float
  %2895 = fmul fast float %2894, 5.000000e+00
  %2896 = fadd fast float %2895, 0xC1EFBF8940000000
  %2897 = fptosi float %2896 to i32
  %2898 = bitcast i32 %2897 to float
  %2899 = fsub fast float 1.000000e+00, %2562
  %2900 = fsub fast float 1.000000e+00, %2563
  %2901 = fsub fast float 1.000000e+00, %2573
  %2902 = fmul fast float %2898, %2899
  %2903 = fmul fast float %2898, %2900
  %2904 = fmul fast float %2898, %2901
  %2905 = fadd fast float %2902, %2562
  %2906 = fadd fast float %2903, %2563
  %2907 = fadd fast float %2904, %2573
  br i1 %2700, label %2908, label %2931

; <label>:2908                                    ; preds = %2840
  %2909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1939, float %2891, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2910 = extractvalue %dx.types.ResRet.f32 %2909, 0
  %2911 = extractvalue %dx.types.ResRet.f32 %2909, 1
  %2912 = extractvalue %dx.types.ResRet.f32 %2909, 2
  %2913 = fadd fast float %2910, -5.000000e-01
  %2914 = fadd fast float %2911, -5.000000e-01
  %2915 = fadd fast float %2912, -5.000000e-01
  %2916 = fmul fast float %2562, 4.000000e+00
  %2917 = fmul fast float %2916, %2899
  %2918 = fmul fast float %2917, %2913
  %2919 = fmul fast float %2563, 4.000000e+00
  %2920 = fmul fast float %2919, %2900
  %2921 = fmul fast float %2920, %2914
  %2922 = fmul fast float %2573, 4.000000e+00
  %2923 = fmul fast float %2922, %2901
  %2924 = fmul fast float %2923, %2915
  %2925 = fadd fast float %2918, %2905
  %2926 = fadd fast float %2921, %2906
  %2927 = fadd fast float %2924, %2907
  %2928 = call float @dx.op.unary.f32(i32 7, float %2925)  ; Saturate(value)
  %2929 = call float @dx.op.unary.f32(i32 7, float %2926)  ; Saturate(value)
  %2930 = call float @dx.op.unary.f32(i32 7, float %2927)  ; Saturate(value)
  br label %2931

; <label>:2931                                    ; preds = %2908, %2840
  %2932 = phi float [ %2928, %2908 ], [ %2905, %2840 ]
  %2933 = phi float [ %2929, %2908 ], [ %2906, %2840 ]
  %2934 = phi float [ %2930, %2908 ], [ %2907, %2840 ]
  %2935 = fmul fast float %2852, 9.843750e-01
  %2936 = fadd fast float %2935, 7.812500e-03
  %2937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %2936, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 2
  %2939 = extractvalue %dx.types.ResRet.f32 %2937, 3
  %2940 = fmul fast float %2938, %2562
  %2941 = fmul fast float %2938, %2563
  %2942 = fmul fast float %2938, %2573
  %2943 = fadd fast float %2940, %2939
  %2944 = fadd fast float %2941, %2939
  %2945 = fadd fast float %2942, %2939
  br i1 %2700, label %2946, label %2969

; <label>:2946                                    ; preds = %2931
  %2947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1939, float %2852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.ResRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.ResRet.f32 %2947, 2
  %2951 = fadd fast float %2948, -5.000000e-01
  %2952 = fadd fast float %2949, -5.000000e-01
  %2953 = fadd fast float %2950, -5.000000e-01
  %2954 = fmul fast float %2562, 4.000000e+00
  %2955 = fmul fast float %2954, %2899
  %2956 = fmul fast float %2955, %2951
  %2957 = fmul fast float %2563, 4.000000e+00
  %2958 = fmul fast float %2957, %2900
  %2959 = fmul fast float %2958, %2952
  %2960 = fmul fast float %2573, 4.000000e+00
  %2961 = fmul fast float %2960, %2901
  %2962 = fmul fast float %2961, %2953
  %2963 = fadd fast float %2956, %2943
  %2964 = fadd fast float %2959, %2944
  %2965 = fadd fast float %2962, %2945
  %2966 = call float @dx.op.unary.f32(i32 7, float %2963)  ; Saturate(value)
  %2967 = call float @dx.op.unary.f32(i32 7, float %2964)  ; Saturate(value)
  %2968 = call float @dx.op.unary.f32(i32 7, float %2965)  ; Saturate(value)
  br label %2969

; <label>:2969                                    ; preds = %2946, %2931
  %2970 = phi float [ %2966, %2946 ], [ %2943, %2931 ]
  %2971 = phi float [ %2967, %2946 ], [ %2944, %2931 ]
  %2972 = phi float [ %2968, %2946 ], [ %2945, %2931 ]
  %2973 = call float @dx.op.binary.f32(i32 35, float %2971, float %2972)  ; FMax(a,b)
  %2974 = call float @dx.op.binary.f32(i32 35, float %2970, float %2973)  ; FMax(a,b)
  %2975 = fsub fast float 1.000000e+00, %2974
  %2976 = fmul fast float %2932, %2890
  %2977 = fmul fast float %2933, %2890
  %2978 = fmul fast float %2934, %2890
  %2979 = fsub fast float 1.000000e+00, %2853
  %2980 = bitcast float %2979 to i32
  %2981 = sitofp i32 %2980 to float
  %2982 = fmul fast float %2981, 5.000000e+00
  %2983 = fadd fast float %2982, 0xC1EFBF8940000000
  %2984 = fptosi float %2983 to i32
  %2985 = bitcast i32 %2984 to float
  %2986 = fmul fast float %2985, %1938
  %2987 = fmul fast float %2975, %2986
  %2988 = fmul fast float %2987, %2750
  %2989 = fmul fast float %2987, %2751
  %2990 = fmul fast float %2987, %2752
  %2991 = fadd fast float %2988, %2976
  %2992 = fadd fast float %2989, %2977
  %2993 = fadd fast float %2990, %2978
  %2994 = fmul fast float %2858, %2841
  %2995 = fmul fast float %2994, %2975
  %2996 = fmul fast float %2858, %2842
  %2997 = fmul fast float %2996, %2975
  %2998 = fmul fast float %2858, %2843
  %2999 = fmul fast float %2998, %2975
  %3000 = fmul fast float %2994, %2991
  %3001 = fmul fast float %2996, %2992
  %3002 = fmul fast float %2998, %2993
  %3003 = fadd fast float %2995, %2734
  %3004 = fmul fast float %3003, %1959
  %3005 = fadd fast float %2997, %2735
  %3006 = fmul fast float %3005, %1959
  %3007 = fadd fast float %2999, %2736
  %3008 = fmul fast float %3007, %1959
  %3009 = fadd fast float %3000, %2777
  %3010 = fmul fast float %3009, %1959
  %3011 = fadd fast float %3001, %2780
  %3012 = fmul fast float %3011, %1959
  %3013 = fadd fast float %3002, %2783
  %3014 = fmul fast float %3013, %1959
  br label %3015

; <label>:3015                                    ; preds = %2969, %2833, %2727
  %3016 = phi float [ %2778, %2727 ], [ %2778, %2833 ], [ %3010, %2969 ]
  %3017 = phi float [ %2781, %2727 ], [ %2781, %2833 ], [ %3012, %2969 ]
  %3018 = phi float [ %2784, %2727 ], [ %2784, %2833 ], [ %3014, %2969 ]
  %3019 = phi float [ %2773, %2727 ], [ %2773, %2833 ], [ %3004, %2969 ]
  %3020 = phi float [ %2774, %2727 ], [ %2774, %2833 ], [ %3006, %2969 ]
  %3021 = phi float [ %2775, %2727 ], [ %2775, %2833 ], [ %3008, %2969 ]
  %3022 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3023 = extractvalue %dx.types.CBufRet.i32 %3022, 0
  %3024 = icmp eq i32 %3023, 0
  br i1 %3024, label %3459, label %3025

; <label>:3025                                    ; preds = %3015
  %3026 = fptoui float %53 to i32
  %3027 = fptoui float %54 to i32
  %3028 = lshr i32 %3026, 4
  %3029 = lshr i32 %3027, 4
  %3030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3031 = extractvalue %dx.types.CBufRet.i32 %3030, 0
  %3032 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3029, i32 %3031, i32 %3028)  ; UMad(a,b,c)
  %3033 = add nsw i32 %3023, -1
  %3034 = call i32 @dx.op.binary.i32(i32 37, i32 %3033, i32 0)  ; IMax(a,b)
  %3035 = call float @dx.op.binary.f32(i32 35, float %48, float 0.000000e+00)  ; FMax(a,b)
  %3036 = fptoui float %3035 to i32
  %3037 = lshr i32 %3036, 5
  %3038 = call i32 @dx.op.binary.i32(i32 40, i32 %3037, i32 8191)  ; UMin(a,b)
  %3039 = shl i32 %3038, 2
  %3040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3039, i32 undef)  ; BufferLoad(srv,index,wot)
  %3041 = extractvalue %dx.types.ResRet.i32 %3040, 0
  %3042 = lshr i32 %3041, 16
  %3043 = and i32 %3041, 65535
  %3044 = lshr i32 %3041, 21
  %3045 = lshr i32 %3043, 5
  %3046 = call i32 @dx.op.binary.i32(i32 40, i32 %3045, i32 %3034)  ; UMin(a,b)
  %3047 = icmp ugt i32 %3044, %3046
  br i1 %3047, label %3459, label %3048

; <label>:3048                                    ; preds = %3025
  br label %3049

; <label>:3049                                    ; preds = %3449, %3048
  %3050 = phi i32 [ %3456, %3449 ], [ %3044, %3048 ]
  %3051 = phi float [ %3450, %3449 ], [ %3016, %3048 ]
  %3052 = phi float [ %3451, %3449 ], [ %3017, %3048 ]
  %3053 = phi float [ %3452, %3449 ], [ %3018, %3048 ]
  %3054 = phi float [ %3453, %3449 ], [ %3019, %3048 ]
  %3055 = phi float [ %3454, %3449 ], [ %3020, %3048 ]
  %3056 = phi float [ %3455, %3449 ], [ %3021, %3048 ]
  %3057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %27, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3058 = extractvalue %dx.types.CBufRet.i32 %3057, 0
  %3059 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3032, i32 %3058, i32 %3050)  ; UMad(a,b,c)
  %3060 = shl i32 %3059, 2
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = shl i32 %3050, 5
  %3064 = sub nsw i32 %3042, %3063
  %3065 = call i32 @dx.op.binary.i32(i32 37, i32 %3064, i32 0)  ; IMax(a,b)
  %3066 = call i32 @dx.op.binary.i32(i32 38, i32 %3065, i32 31)  ; IMin(a,b)
  %3067 = sub nsw i32 1, %3042
  %3068 = add nsw i32 %3067, %3043
  %3069 = call i32 @dx.op.binary.i32(i32 37, i32 %3068, i32 0)  ; IMax(a,b)
  %3070 = call i32 @dx.op.binary.i32(i32 38, i32 %3069, i32 32)  ; IMin(a,b)
  %3071 = and i32 %3070, 31
  %3072 = shl i32 -1, %3071
  %3073 = xor i32 %3072, -1
  %3074 = and i32 %3066, 31
  %3075 = shl i32 %3073, %3074
  %3076 = icmp eq i32 %3070, 32
  %3077 = select i1 %3076, i32 -1, i32 %3075
  %3078 = and i32 %3077, %3062
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3449, label %3080

; <label>:3080                                    ; preds = %3049
  br label %3081

; <label>:3081                                    ; preds = %3161, %3080
  %3082 = phi i32 [ %3093, %3161 ], [ %3078, %3080 ]
  %3083 = phi float [ %3162, %3161 ], [ %3051, %3080 ]
  %3084 = phi float [ %3163, %3161 ], [ %3052, %3080 ]
  %3085 = phi float [ %3164, %3161 ], [ %3053, %3080 ]
  %3086 = phi float [ %3165, %3161 ], [ %3054, %3080 ]
  %3087 = phi float [ %3166, %3161 ], [ %3055, %3080 ]
  %3088 = phi float [ %3167, %3161 ], [ %3056, %3080 ]
  %3089 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3082)  ; FirstbitLo(value)
  %3090 = add i32 %3089, %3063
  %3091 = and i32 %3089, 31
  %3092 = shl i32 1, %3091
  %3093 = xor i32 %3092, %3082
  %3094 = mul i32 %3090, 112
  %3095 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.f32 %3095, 0
  %3097 = extractvalue %dx.types.ResRet.f32 %3095, 1
  %3098 = extractvalue %dx.types.ResRet.f32 %3095, 2
  %3099 = or i32 %3094, 12
  %3100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3099, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = add i32 %3094, 44
  %3103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.f32 %3103, 0
  %3105 = add i32 %3094, 48
  %3106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.f32 %3106, 0
  %3108 = extractvalue %dx.types.ResRet.f32 %3106, 1
  %3109 = extractvalue %dx.types.ResRet.f32 %3106, 2
  %3110 = add i32 %3094, 80
  %3111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 1
  %3113 = extractvalue %dx.types.ResRet.f32 %3111, 2
  %3114 = call float @dx.op.dot3.f32(i32 55, float %3096, float %3097, float %3098, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3115 = select i1 %151, float %3112, float %3096
  %3116 = select i1 %151, float %3114, float %3097
  %3117 = select i1 %151, float %3113, float %3098
  %3118 = fsub fast float %3107, %109
  %3119 = fsub fast float %3108, %110
  %3120 = fsub fast float %3109, %111
  %3121 = call float @dx.op.dot3.f32(i32 55, float %3118, float %3119, float %3120, float %3118, float %3119, float %3120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3122 = call float @dx.op.unary.f32(i32 24, float %3121)  ; Sqrt(value)
  %3123 = fdiv fast float 1.000000e+00, %3122
  %3124 = fmul fast float %3123, %3118
  %3125 = fmul fast float %3123, %3119
  %3126 = fmul fast float %3123, %3120
  %3127 = fadd fast float %3122, %3101
  %3128 = fdiv fast float 1.000000e+00, %3127
  %3129 = fmul float %3104, %3128
  %3130 = fmul float %3129, %3129
  %3131 = call float @dx.op.unary.f32(i32 7, float %3130)  ; Saturate(value)
  %3132 = and i32 %3092, %3078
  %3133 = icmp eq i32 %3132, 0
  br i1 %3133, label %3156, label %3134, !dx.controlflow.hints !63

; <label>:3134                                    ; preds = %3081
  %3135 = lshr i32 %3026, 5
  %3136 = lshr i32 %3027, 5
  %3137 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %20, i32 0, i32 %3135, i32 %3136, i32 %3090, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 3
  %3140 = icmp eq i32 %3139, 0
  %3141 = select i1 %3140, float 1.000000e+00, float 0.000000e+00
  %3142 = icmp eq i32 %3139, 3
  br i1 %3142, label %3143, label %3156

; <label>:3143                                    ; preds = %3134
  %3144 = lshr i32 %3138, 10
  %3145 = and i32 %3144, 8160
  %3146 = and i32 %3027, 31
  %3147 = or i32 %3145, %3146
  %3148 = lshr i32 %3138, 1
  %3149 = and i32 %3148, 16352
  %3150 = and i32 %3026, 31
  %3151 = or i32 %3149, %3150
  %3152 = lshr i32 %3138, 23
  %3153 = and i32 %3152, 255
  %3154 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %19, i32 0, i32 %3151, i32 %3147, i32 %3153, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  br label %3156

; <label>:3156                                    ; preds = %3143, %3134, %3081
  %3157 = phi float [ %3155, %3143 ], [ %3141, %3134 ], [ 0.000000e+00, %3081 ]
  %3158 = call float @dx.op.binary.f32(i32 36, float %3157, float %3157)  ; FMin(a,b)
  %3159 = call float @dx.op.binary.f32(i32 36, float %3157, float %3158)  ; FMin(a,b)
  %3160 = fcmp fast ogt float %3159, 0.000000e+00
  br i1 %3160, label %3169, label %3161, !dx.controlflow.hints !64

; <label>:3161                                    ; preds = %3405, %3156
  %3162 = phi float [ %3083, %3156 ], [ %3445, %3405 ]
  %3163 = phi float [ %3084, %3156 ], [ %3446, %3405 ]
  %3164 = phi float [ %3085, %3156 ], [ %3447, %3405 ]
  %3165 = phi float [ %3086, %3156 ], [ %3439, %3405 ]
  %3166 = phi float [ %3087, %3156 ], [ %3440, %3405 ]
  %3167 = phi float [ %3088, %3156 ], [ %3441, %3405 ]
  %3168 = icmp eq i32 %3082, %3092
  br i1 %3168, label %3448, label %3081

; <label>:3169                                    ; preds = %3156
  %3170 = fmul fast float %3157, %3115
  %3171 = fmul fast float %3157, %3116
  %3172 = fmul fast float %3157, %3117
  %3173 = fsub fast float %3109, %2361
  %3174 = fcmp fast ogt float %3173, 0.000000e+00
  %3175 = fsub fast float %111, %2361
  %3176 = fcmp fast ogt float %3175, 0.000000e+00
  %3177 = xor i1 %3176, %3174
  %3178 = fsub fast float %2361, %3109
  %3179 = fmul fast float %3178, 2.000000e+00
  %3180 = fadd fast float %3179, %3109
  %3181 = select i1 %3177, float %3109, float %3180
  %3182 = fsub fast float %3181, %111
  %3183 = call float @dx.op.dot3.f32(i32 55, float %3118, float %3119, float %3182, float %3118, float %3119, float %3182)  ; Dot3(ax,ay,az,bx,by,bz)
  %3184 = call float @dx.op.unary.f32(i32 25, float %3183)  ; Rsqrt(value)
  %3185 = fmul fast float %3184, %3118
  %3186 = fmul fast float %3184, %3119
  %3187 = fmul fast float %3184, %3182
  %3188 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2369)  ; Dot3(ax,ay,az,bx,by,bz)
  %3189 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3185, float %3186, float %3187)  ; Dot3(ax,ay,az,bx,by,bz)
  %3190 = fdiv fast float 1.000000e+00, %3189
  %3191 = fmul fast float %3190, %3188
  %3192 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3175, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3193 = fcmp fast ogt float %3192, 0.000000e+00
  %3194 = fcmp fast olt float %3192, 0.000000e+00
  %3195 = zext i1 %3193 to i32
  %3196 = zext i1 %3194 to i32
  %3197 = sub nsw i32 %3195, %3196
  %3198 = sitofp i32 %3197 to float
  %3199 = fsub fast float %3181, %2361
  %3200 = call float @dx.op.dot3.f32(i32 55, float %3118, float %3119, float %3199, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3201 = fcmp fast ogt float %3200, 0.000000e+00
  %3202 = fcmp fast olt float %3200, 0.000000e+00
  %3203 = zext i1 %3201 to i32
  %3204 = zext i1 %3202 to i32
  %3205 = sub nsw i32 %3203, %3204
  %3206 = sitofp i32 %3205 to float
  %3207 = fcmp fast une float %3198, %3206
  br i1 %3207, label %3208, label %3218

; <label>:3208                                    ; preds = %3169
  %3209 = fmul fast float %3191, %3187
  %3210 = fmul fast float %3191, %3186
  %3211 = fmul fast float %3191, %3185
  %3212 = fmul fast float %3211, %3211
  %3213 = fmul fast float %3210, %3210
  %3214 = fadd fast float %3212, %3213
  %3215 = fmul fast float %3209, %3209
  %3216 = fadd fast float %3214, %3215
  %3217 = call float @dx.op.unary.f32(i32 24, float %3216)  ; Sqrt(value)
  br label %3230

; <label>:3218                                    ; preds = %3169
  %3219 = icmp slt i32 %3197, 0
  br i1 %3219, label %3220, label %3230

; <label>:3220                                    ; preds = %3218
  %3221 = fsub fast float %109, %3107
  %3222 = fsub fast float %110, %3108
  %3223 = fsub fast float %111, %3181
  %3224 = fmul fast float %3221, %3221
  %3225 = fmul fast float %3222, %3222
  %3226 = fadd fast float %3224, %3225
  %3227 = fmul fast float %3223, %3223
  %3228 = fadd fast float %3226, %3227
  %3229 = call float @dx.op.unary.f32(i32 24, float %3228)  ; Sqrt(value)
  br label %3230

; <label>:3230                                    ; preds = %3220, %3218, %3208
  %3231 = phi float [ %3217, %3208 ], [ %3229, %3220 ], [ 0.000000e+00, %3218 ]
  %3232 = and i1 %3176, %3174
  %3233 = fsub fast float -0.000000e+00, %3231
  %3234 = select i1 %3232, float -0.000000e+00, float %3233
  %3235 = fmul fast float %2362, 0x3FF7154760000000
  %3236 = fmul fast float %3235, %3234
  %3237 = fmul fast float %2363, 0x3FF7154760000000
  %3238 = fmul fast float %3237, %3234
  %3239 = fmul fast float %2364, 0x3FF7154760000000
  %3240 = fmul fast float %3239, %3234
  %3241 = call float @dx.op.unary.f32(i32 21, float %3236)  ; Exp(value)
  %3242 = call float @dx.op.unary.f32(i32 21, float %3238)  ; Exp(value)
  %3243 = call float @dx.op.unary.f32(i32 21, float %3240)  ; Exp(value)
  %3244 = call float @dx.op.unary.f32(i32 7, float %3241)  ; Saturate(value)
  %3245 = call float @dx.op.unary.f32(i32 7, float %3242)  ; Saturate(value)
  %3246 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3247 = fmul fast float %3170, %3244
  %3248 = fmul fast float %3171, %3245
  %3249 = fmul fast float %3172, %3246
  %3250 = fsub fast float %3124, %2561
  %3251 = fsub fast float %3125, %2560
  %3252 = fsub fast float %3126, %2559
  %3253 = call float @dx.op.dot3.f32(i32 55, float %3250, float %3251, float %3252, float %3250, float %3251, float %3252)  ; Dot3(ax,ay,az,bx,by,bz)
  %3254 = call float @dx.op.unary.f32(i32 25, float %3253)  ; Rsqrt(value)
  %3255 = fmul fast float %3254, %3250
  %3256 = fmul fast float %3254, %3251
  %3257 = fmul fast float %3254, %3252
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3124, float %3125, float %3126, float %2568, float %2569, float %2570)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = call float @dx.op.dot3.f32(i32 55, float %2558, float %2557, float %2556, float %3255, float %3256, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3260 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  %3261 = fmul fast float %3260, %3131
  %3262 = fmul fast float %3260, %3260
  %3263 = fmul fast float %3262, %2588
  %3264 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3265 = fmul fast float %3261, %3264
  %3266 = bitcast float %3121 to i32
  %3267 = ashr i32 %3266, 1
  %3268 = sub nsw i32 1597463007, %3267
  %3269 = bitcast i32 %3268 to float
  %3270 = fmul fast float %3269, %3118
  %3271 = fmul fast float %3269, %3119
  %3272 = fmul fast float %3269, %3120
  %3273 = fsub fast float %3270, %2561
  %3274 = fsub fast float %3271, %2560
  %3275 = fsub fast float %3272, %2559
  %3276 = call float @dx.op.dot3.f32(i32 55, float %3273, float %3274, float %3275, float %3273, float %3274, float %3275)  ; Dot3(ax,ay,az,bx,by,bz)
  %3277 = call float @dx.op.unary.f32(i32 25, float %3276)  ; Rsqrt(value)
  %3278 = fmul fast float %3273, %3277
  %3279 = fmul fast float %3274, %3277
  %3280 = fmul fast float %3275, %3277
  %3281 = call float @dx.op.dot3.f32(i32 55, float %2568, float %2569, float %2570, float %3278, float %3279, float %3280)  ; Dot3(ax,ay,az,bx,by,bz)
  %3282 = fmul fast float %3281, %3281
  %3283 = call float @dx.op.unary.f32(i32 6, float %3258)  ; FAbs(value)
  %3284 = fsub fast float 1.000000e+00, %2571
  %3285 = call float @dx.op.binary.f32(i32 35, float %3284, float 0x3F847AE140000000)  ; FMax(a,b)
  %3286 = fmul fast float %3285, %3285
  %3287 = fmul fast float %3286, %3286
  %3288 = fsub fast float 1.000000e+00, %3287
  %3289 = fmul fast float %2575, %2575
  %3290 = fmul fast float %3289, %3288
  %3291 = fadd fast float %3290, %3287
  %3292 = bitcast float %3291 to i32
  %3293 = ashr i32 %3292, 1
  %3294 = add nsw i32 %3293, 532487669
  %3295 = bitcast i32 %3294 to float
  %3296 = fadd fast float %3295, %2575
  %3297 = fmul fast float %3287, %3282
  %3298 = fsub fast float 1.000000e+00, %3282
  %3299 = fadd fast float %3298, %3297
  %3300 = fmul fast float %3283, %3283
  %3301 = fmul fast float %3300, %3288
  %3302 = fadd fast float %3301, %3287
  %3303 = bitcast float %3302 to i32
  %3304 = ashr i32 %3303, 1
  %3305 = add nsw i32 %3304, 532487669
  %3306 = bitcast i32 %3305 to float
  %3307 = fadd fast float %3306, %3283
  %3308 = fmul fast float %3299, %3299
  %3309 = fmul fast float %3308, %3296
  %3310 = fmul fast float %3309, %3307
  %3311 = fdiv fast float 1.000000e+00, %3310
  %3312 = bitcast float %3287 to i32
  %3313 = sitofp i32 %3312 to float
  %3314 = fmul fast float %3313, 0x3FE7F73180000000
  %3315 = fadd fast float %3314, 0x41AFE27C40000000
  %3316 = fptosi float %3315 to i32
  %3317 = bitcast i32 %3316 to float
  %3318 = fmul fast float %3104, 0x3FD80E9D60000000
  %3319 = fmul fast float %3318, %3269
  %3320 = fadd fast float %3317, %3319
  %3321 = bitcast float %3320 to i32
  %3322 = sub nsw i32 2129859010, %3321
  %3323 = bitcast i32 %3322 to float
  %3324 = fmul fast float %3287, %3311
  %3325 = fmul fast float %3324, %3317
  %3326 = fmul fast float %3325, %3323
  %3327 = call float @dx.op.unary.f32(i32 6, float %3259)  ; FAbs(value)
  %3328 = fsub fast float 1.000000e+00, %3327
  %3329 = bitcast float %3328 to i32
  %3330 = sitofp i32 %3329 to float
  %3331 = fmul fast float %3330, 5.000000e+00
  %3332 = fadd fast float %3331, 0xC1EFBF8940000000
  %3333 = fptosi float %3332 to i32
  %3334 = bitcast i32 %3333 to float
  %3335 = fsub fast float 1.000000e+00, %2562
  %3336 = fsub fast float 1.000000e+00, %2563
  %3337 = fsub fast float 1.000000e+00, %2573
  %3338 = fmul fast float %3334, %3335
  %3339 = fmul fast float %3334, %3336
  %3340 = fmul fast float %3334, %3337
  %3341 = fadd fast float %3338, %2562
  %3342 = fadd fast float %3339, %2563
  %3343 = fadd fast float %3340, %2573
  br i1 %2700, label %3344, label %3367

; <label>:3344                                    ; preds = %3230
  %3345 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1939, float %3327, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.ResRet.f32 %3345, 1
  %3348 = extractvalue %dx.types.ResRet.f32 %3345, 2
  %3349 = fadd fast float %3346, -5.000000e-01
  %3350 = fadd fast float %3347, -5.000000e-01
  %3351 = fadd fast float %3348, -5.000000e-01
  %3352 = fmul fast float %2562, 4.000000e+00
  %3353 = fmul fast float %3352, %3335
  %3354 = fmul fast float %3353, %3349
  %3355 = fmul fast float %2563, 4.000000e+00
  %3356 = fmul fast float %3355, %3336
  %3357 = fmul fast float %3356, %3350
  %3358 = fmul fast float %2573, 4.000000e+00
  %3359 = fmul fast float %3358, %3337
  %3360 = fmul fast float %3359, %3351
  %3361 = fadd fast float %3354, %3341
  %3362 = fadd fast float %3357, %3342
  %3363 = fadd fast float %3360, %3343
  %3364 = call float @dx.op.unary.f32(i32 7, float %3361)  ; Saturate(value)
  %3365 = call float @dx.op.unary.f32(i32 7, float %3362)  ; Saturate(value)
  %3366 = call float @dx.op.unary.f32(i32 7, float %3363)  ; Saturate(value)
  br label %3367

; <label>:3367                                    ; preds = %3344, %3230
  %3368 = phi float [ %3364, %3344 ], [ %3341, %3230 ]
  %3369 = phi float [ %3365, %3344 ], [ %3342, %3230 ]
  %3370 = phi float [ %3366, %3344 ], [ %3343, %3230 ]
  %3371 = fmul fast float %3258, 9.843750e-01
  %3372 = fadd fast float %3371, 7.812500e-03
  %3373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %21, %dx.types.Handle %24, float %3372, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3374 = extractvalue %dx.types.ResRet.f32 %3373, 2
  %3375 = extractvalue %dx.types.ResRet.f32 %3373, 3
  %3376 = fmul fast float %3374, %2562
  %3377 = fmul fast float %3374, %2563
  %3378 = fmul fast float %3374, %2573
  %3379 = fadd fast float %3376, %3375
  %3380 = fadd fast float %3377, %3375
  %3381 = fadd fast float %3378, %3375
  br i1 %2700, label %3382, label %3405

; <label>:3382                                    ; preds = %3367
  %3383 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %24, float %1939, float %3258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3384 = extractvalue %dx.types.ResRet.f32 %3383, 0
  %3385 = extractvalue %dx.types.ResRet.f32 %3383, 1
  %3386 = extractvalue %dx.types.ResRet.f32 %3383, 2
  %3387 = fadd fast float %3384, -5.000000e-01
  %3388 = fadd fast float %3385, -5.000000e-01
  %3389 = fadd fast float %3386, -5.000000e-01
  %3390 = fmul fast float %2562, 4.000000e+00
  %3391 = fmul fast float %3390, %3335
  %3392 = fmul fast float %3391, %3387
  %3393 = fmul fast float %2563, 4.000000e+00
  %3394 = fmul fast float %3393, %3336
  %3395 = fmul fast float %3394, %3388
  %3396 = fmul fast float %2573, 4.000000e+00
  %3397 = fmul fast float %3396, %3337
  %3398 = fmul fast float %3397, %3389
  %3399 = fadd fast float %3392, %3379
  %3400 = fadd fast float %3395, %3380
  %3401 = fadd fast float %3398, %3381
  %3402 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3403 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3404 = call float @dx.op.unary.f32(i32 7, float %3401)  ; Saturate(value)
  br label %3405

; <label>:3405                                    ; preds = %3382, %3367
  %3406 = phi float [ %3402, %3382 ], [ %3379, %3367 ]
  %3407 = phi float [ %3403, %3382 ], [ %3380, %3367 ]
  %3408 = phi float [ %3404, %3382 ], [ %3381, %3367 ]
  %3409 = call float @dx.op.binary.f32(i32 35, float %3407, float %3408)  ; FMax(a,b)
  %3410 = call float @dx.op.binary.f32(i32 35, float %3406, float %3409)  ; FMax(a,b)
  %3411 = fsub fast float 1.000000e+00, %3410
  %3412 = fmul fast float %3368, %3326
  %3413 = fmul fast float %3369, %3326
  %3414 = fmul fast float %3370, %3326
  %3415 = fsub fast float 1.000000e+00, %3259
  %3416 = bitcast float %3415 to i32
  %3417 = sitofp i32 %3416 to float
  %3418 = fmul fast float %3417, 5.000000e+00
  %3419 = fadd fast float %3418, 0xC1EFBF8940000000
  %3420 = fptosi float %3419 to i32
  %3421 = bitcast i32 %3420 to float
  %3422 = fmul fast float %3421, %1938
  %3423 = fmul fast float %3411, %3422
  %3424 = fmul fast float %3423, %2750
  %3425 = fmul fast float %3423, %2751
  %3426 = fmul fast float %3423, %2752
  %3427 = fadd fast float %3424, %3412
  %3428 = fadd fast float %3425, %3413
  %3429 = fadd fast float %3426, %3414
  %3430 = fmul fast float %3247, %1959
  %3431 = fmul fast float %3430, %3265
  %3432 = fmul fast float %3431, %3411
  %3433 = fmul fast float %3248, %1959
  %3434 = fmul fast float %3433, %3265
  %3435 = fmul fast float %3434, %3411
  %3436 = fmul fast float %3249, %1959
  %3437 = fmul fast float %3436, %3265
  %3438 = fmul fast float %3437, %3411
  %3439 = fadd fast float %3432, %3086
  %3440 = fadd fast float %3435, %3087
  %3441 = fadd fast float %3438, %3088
  %3442 = fmul fast float %3431, %3427
  %3443 = fmul fast float %3434, %3428
  %3444 = fmul fast float %3437, %3429
  %3445 = fadd fast float %3442, %3083
  %3446 = fadd fast float %3443, %3084
  %3447 = fadd fast float %3444, %3085
  br label %3161

; <label>:3448                                    ; preds = %3161
  br label %3449

; <label>:3449                                    ; preds = %3448, %3049
  %3450 = phi float [ %3051, %3049 ], [ %3162, %3448 ]
  %3451 = phi float [ %3052, %3049 ], [ %3163, %3448 ]
  %3452 = phi float [ %3053, %3049 ], [ %3164, %3448 ]
  %3453 = phi float [ %3054, %3049 ], [ %3165, %3448 ]
  %3454 = phi float [ %3055, %3049 ], [ %3166, %3448 ]
  %3455 = phi float [ %3056, %3049 ], [ %3167, %3448 ]
  %3456 = add i32 %3050, 1
  %3457 = icmp ugt i32 %3456, %3046
  br i1 %3457, label %3458, label %3049

; <label>:3458                                    ; preds = %3449
  br label %3459

; <label>:3459                                    ; preds = %3458, %3025, %3015
  %3460 = phi float [ %3016, %3015 ], [ %3016, %3025 ], [ %3450, %3458 ]
  %3461 = phi float [ %3017, %3015 ], [ %3017, %3025 ], [ %3451, %3458 ]
  %3462 = phi float [ %3018, %3015 ], [ %3018, %3025 ], [ %3452, %3458 ]
  %3463 = phi float [ %3019, %3015 ], [ %3019, %3025 ], [ %3453, %3458 ]
  %3464 = phi float [ %3020, %3015 ], [ %3020, %3025 ], [ %3454, %3458 ]
  %3465 = phi float [ %3021, %3015 ], [ %3021, %3025 ], [ %3455, %3458 ]
  %3466 = call float @dx.op.unary.f32(i32 24, float %2565)  ; Sqrt(value)
  %3467 = call float @dx.op.unary.f32(i32 24, float %2566)  ; Sqrt(value)
  %3468 = call float @dx.op.unary.f32(i32 24, float %2567)  ; Sqrt(value)
  %3469 = fmul fast float %3466, %3463
  %3470 = fmul fast float %3467, %3464
  %3471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3472 = extractvalue %dx.types.CBufRet.f32 %3471, 0
  br i1 %151, label %3473, label %3493

; <label>:3473                                    ; preds = %3459
  %3474 = fadd fast float %3465, %1936
  %3475 = fmul fast float %3474, %1937
  %3476 = fsub fast float 1.000000e+00, %1937
  %3477 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 3
  %3480 = fmul fast float %3479, %3477
  %3481 = fadd fast float %3480, %3475
  %3482 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3482, 0
  %3484 = fmul fast float %3483, %2756
  %3485 = fsub fast float %3481, %3484
  %3486 = fadd fast float %3470, %3469
  %3487 = fmul fast float %3472, %3486
  %3488 = extractvalue %dx.types.CBufRet.f32 %3478, 1
  %3489 = fsub fast float %3485, %3488
  %3490 = extractvalue %dx.types.CBufRet.f32 %3478, 2
  %3491 = fmul fast float %3489, %3490
  %3492 = call float @dx.op.unary.f32(i32 7, float %3491)  ; Saturate(value)
  br label %3508

; <label>:3493                                    ; preds = %3459
  %3494 = fmul fast float %3468, %3465
  %3495 = fmul fast float %3472, %3469
  %3496 = fmul fast float %3472, %3470
  %3497 = fmul fast float %3494, %3472
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = and i32 %3499, 32
  %3501 = icmp eq i32 %3500, 0
  br i1 %3501, label %3508, label %3502

; <label>:3502                                    ; preds = %3493
  %3503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3504 = extractvalue %dx.types.CBufRet.f32 %3503, 0
  %3505 = fmul fast float %3504, 0x3FE99999A0000000
  %3506 = fadd fast float %3504, %3495
  %3507 = fadd fast float %3505, %3497
  br label %3508

; <label>:3508                                    ; preds = %3502, %3493, %3473
  %3509 = phi float [ %3487, %3473 ], [ %3506, %3502 ], [ %3495, %3493 ]
  %3510 = phi float [ %3492, %3473 ], [ %3496, %3502 ], [ %3496, %3493 ]
  %3511 = phi float [ 1.000000e+00, %3473 ], [ %3507, %3502 ], [ %3497, %3493 ]
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %27, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 0
  %3514 = fmul fast float %3513, %3461
  %3515 = fmul fast float %3513, %3462
  %3516 = fadd fast float %3461, %3460
  %3517 = select i1 %151, float %3516, float %3460
  %3518 = fmul float %3517, %3513
  %3519 = select i1 %151, float 0.000000e+00, float %3514
  %3520 = select i1 %151, float 0.000000e+00, float %3515
  %3521 = fmul fast float %3509, %3466
  %3522 = fmul fast float %3510, %3467
  %3523 = fmul fast float %3511, %3468
  %3524 = fadd fast float %3518, %3521
  %3525 = fadd fast float %3519, %3522
  %3526 = fadd fast float %3520, %3523
  %3527 = select i1 %151, float %3510, float %3525
  %3528 = select i1 %151, float %3511, float %3526
  %3529 = call float @dx.op.binary.f32(i32 36, float %3524, float 3.225500e+04)  ; FMin(a,b)
  %3530 = call float @dx.op.binary.f32(i32 36, float %3527, float 3.225500e+04)  ; FMin(a,b)
  %3531 = call float @dx.op.binary.f32(i32 36, float %3528, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3529)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3530)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3531)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

