;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    yzw
; TEXCOORDS                0   xyzw        2     NONE   float   xy  
; NORMAL                   0   xyz         3     NONE   float   xyz 
; TANGENT                  0   xyzw        4     NONE   float   xyzw
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 2bdc0d269fffeb7a74334c57ea748eec
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
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
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32          2d      T5     t69,space2     1
;                                   texture    byte         r/o      T6     t49,space1     1
;                                   texture    byte         r/o      T7     t50,space1     1
;                                   texture    byte         r/o      T8     t51,space1     1
;                                   texture    byte         r/o      T9     t52,space1     1
;                                   texture    byte         r/o     T10     t16,space1     1
;                                   texture    byte         r/o     T11     t17,space1     1
;                                   texture     f32          2d     T12     t58,space2     1
;                                   texture     f32          2d     T13     t57,space2     1
;                                   texture    byte         r/o     T14     t69,space1     1
;                                   texture     f32          2d     T15     t34,space2     1
;                                   texture    byte         r/o     T16     t68,space1     1
;                                   texture     f32          2d     T17      t0,space2     1
;
;
; ViewId state:
;
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %60 = extractvalue %dx.types.CBufRet.f32 %59, 0
  %61 = fmul fast float %60, %54
  %62 = fmul fast float %60, %55
  %63 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %64 = bitcast float %63 to i32
  %65 = ashr i32 %64, 1
  %66 = sub nsw i32 1597250115, %65
  %67 = bitcast i32 %66 to float
  %68 = fmul fast float %67, %46
  %69 = fmul fast float %67, %47
  %70 = fmul fast float %67, %48
  %71 = fmul fast float %47, %44
  %72 = fmul fast float %48, %43
  %73 = fsub fast float %71, %72
  %74 = fmul fast float %48, %42
  %75 = fmul fast float %46, %44
  %76 = fsub fast float %74, %75
  %77 = fmul fast float %46, %43
  %78 = fmul fast float %47, %42
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %73, %45
  %81 = fmul fast float %76, %45
  %82 = fmul fast float %79, %45
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 3
  %86 = fmul fast float %61, 2.000000e+00
  %87 = fmul fast float %86, %84
  %88 = fmul fast float %62, 2.000000e+00
  %89 = fmul fast float %88, %85
  %90 = fsub fast float 1.000000e+00, %87
  %91 = fsub fast float 1.000000e+00, %89
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = fmul fast float %90, %93
  %97 = fmul fast float %90, %94
  %98 = fmul fast float %90, %95
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %91, %100
  %104 = fmul fast float %91, %101
  %105 = fmul fast float %91, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fadd fast float %103, %107
  %111 = fadd fast float %110, %96
  %112 = fadd fast float %104, %108
  %113 = fadd fast float %112, %97
  %114 = fadd fast float %105, %109
  %115 = fadd fast float %114, %98
  %116 = fmul fast float %111, %56
  %117 = fmul fast float %113, %56
  %118 = fmul fast float %115, %56
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 2
  %121 = extractvalue %dx.types.CBufRet.f32 %119, 3
  %122 = fmul fast float %120, %61
  %123 = fmul fast float %121, %62
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %125, 114688
  %127 = icmp ne i32 %126, 0
  %128 = select i1 %127, float %122, float 0.000000e+00
  %129 = select i1 %127, float %123, float 0.000000e+00
  %130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %128, float %129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = fmul fast float %131, 2.550000e+02
  %133 = fptoui float %132 to i32
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 3
  %137 = and i32 %136, 3
  %138 = icmp ne i32 %137, 0
  %139 = and i32 %136, 4
  %140 = icmp ne i32 %139, 0
  %141 = and i1 %138, %140
  br i1 %141, label %142, label %153

; <label>:142                                     ; preds = %0
  %143 = extractvalue %dx.types.CBufRet.f32 %134, 3
  %144 = fmul fast float %143, %62
  %145 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %146 = fmul fast float %145, %61
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %146, float %144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fsub fast float 1.000000e+00, %148
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = fcmp fast olt float %149, %151
  br label %156

; <label>:153                                     ; preds = %0
  %154 = icmp eq i32 %139, 0
  %155 = and i1 %138, %154
  br label %156

; <label>:156                                     ; preds = %153, %142
  %157 = phi i1 [ %152, %142 ], [ %155, %153 ]
  %158 = add i32 %21, 156
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = shl i32 %160, 4
  %162 = and i32 %161, 32752
  %163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %162)  ; LegacyF16ToF32(value)
  %164 = lshr i32 %160, 7
  %165 = and i32 %164, 32752
  %166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %165)  ; LegacyF16ToF32(value)
  %167 = lshr i32 %160, 22
  %168 = shl nuw nsw i32 %167, 5
  %169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %168)  ; LegacyF16ToF32(value)
  %170 = add i32 %21, 216
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = and i32 %172, 255
  %174 = uitofp i32 %173 to float
  %175 = fmul fast float %174, 0x3F70101020000000
  %176 = lshr i32 %172, 8
  %177 = and i32 %176, 255
  %178 = uitofp i32 %177 to float
  %179 = fmul fast float %178, 0x3F70101020000000
  %180 = lshr i32 %172, 16
  %181 = and i32 %180, 255
  %182 = uitofp i32 %181 to float
  %183 = fmul fast float %182, 0x3F70101020000000
  %184 = add i32 %21, 36
  %185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %184, i32 undef)  ; BufferLoad(srv,index,wot)
  %186 = extractvalue %dx.types.ResRet.i32 %185, 0
  %187 = and i32 %186, 65535
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = lshr i32 %186, 16
  %190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %189)  ; LegacyF16ToF32(value)
  %191 = add i32 %21, 288
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = and i32 %193, 65535
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = lshr i32 %193, 16
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = fmul fast float %195, 0x3F50624DE0000000
  %199 = fmul fast float %197, 0x3F50624DE0000000
  %200 = add i32 %21, 172
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = shl i32 %202, 4
  %204 = and i32 %203, 32752
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %202, 7
  %207 = and i32 %206, 32752
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %202, 22
  %210 = shl nuw nsw i32 %209, 5
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = add i32 %21, 232
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = lshr i32 %214, 8
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %214, 16
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = add i32 %21, 52
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = add i32 %21, 304
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = fmul fast float %237, 0x3F50624DE0000000
  %241 = fmul fast float %239, 0x3F50624DE0000000
  %242 = add i32 %21, 188
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = shl i32 %244, 4
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %244, 7
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %244, 22
  %252 = shl nuw nsw i32 %251, 5
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %21, 248
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %256, 8
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %256, 16
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = add i32 %21, 68
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = add i32 %21, 320
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = fmul fast float %279, 0x3F50624DE0000000
  %283 = fmul fast float %281, 0x3F50624DE0000000
  %284 = add i32 %21, 204
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %286, 4
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %286, 7
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %286, 22
  %294 = shl nuw nsw i32 %293, 5
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %21, 264
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %298, 8
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %298, 16
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = add i32 %21, 84
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %21, 336
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = fmul fast float %321, 0x3F50624DE0000000
  %325 = fmul fast float %323, 0x3F50624DE0000000
  %326 = add i32 %21, 348
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = and i32 %328, 32
  %330 = icmp eq i32 %329, 0
  %331 = and i32 %328, 64
  %332 = icmp eq i32 %331, 0
  %333 = and i32 %328, 128
  %334 = icmp eq i32 %333, 0
  %335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %336 = extractvalue %dx.types.ResRet.i32 %335, 0
  %337 = and i32 %336, 2
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %352, label %339

; <label>:339                                     ; preds = %156
  %340 = add i32 %21, 492
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = add i32 %342, 0
  %344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %345 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %344, %dx.types.Handle %58, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %346 = extractvalue %dx.types.ResRet.f32 %345, 0
  %347 = extractvalue %dx.types.ResRet.f32 %345, 1
  %348 = extractvalue %dx.types.ResRet.f32 %345, 2
  %349 = fmul fast float %346, %51
  %350 = fmul fast float %347, %52
  %351 = fmul fast float %348, %53
  br label %352

; <label>:352                                     ; preds = %339, %156
  %353 = phi float [ %53, %156 ], [ %351, %339 ]
  %354 = phi float [ %52, %156 ], [ %350, %339 ]
  %355 = phi float [ %51, %156 ], [ %349, %339 ]
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = and i32 %357, 2
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %379, label %360

; <label>:360                                     ; preds = %352
  %361 = add i32 %21, 44
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 1
  %365 = icmp ne i32 %364, 0
  %366 = select i1 %365, float %355, float 1.000000e+00
  %367 = add i32 %21, 60
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 1
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %371, float %354, float 1.000000e+00
  %373 = add i32 %21, 76
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 1
  %377 = icmp ne i32 %376, 0
  %378 = select i1 %377, float %353, float 1.000000e+00
  br label %379

; <label>:379                                     ; preds = %360, %352
  %380 = phi float [ %353, %352 ], [ %378, %360 ]
  %381 = phi float [ %354, %352 ], [ %372, %360 ]
  %382 = phi float [ %355, %352 ], [ %366, %360 ]
  %383 = lshr i32 %357, 20
  %384 = and i32 %383, 3
  %385 = add nuw nsw i32 %384, 1
  %386 = add i32 %21, 24
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = add i32 %21, 28
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = or i32 %391, %388
  %393 = icmp eq i32 %392, 0
  br i1 %393, label %905, label %394

; <label>:394                                     ; preds = %379
  %395 = and i32 %388, 262144
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %24, float 1.000000e+00
  %398 = select i1 %396, float %25, float 0.000000e+00
  %399 = select i1 %396, float %26, float 0.000000e+00
  %400 = select i1 %396, float %27, float 1.000000e+00
  %401 = select i1 %396, float %28, float %49
  %402 = select i1 %396, float %29, float %50
  %403 = add i32 %21, 284
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = lshr i32 %405, 16
  %407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %406)  ; LegacyF16ToF32(value)
  %408 = fmul fast float %407, 0x3F50624DE0000000
  %409 = add i32 %21, 88
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = lshr i32 %411, 16
  %413 = and i32 %412, 255
  %414 = lshr i32 %411, 24
  %415 = add i32 %21, 292
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 65535
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = lshr i32 %417, 16
  %421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %420)  ; LegacyF16ToF32(value)
  %422 = add i32 %21, 32
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = lshr i32 %424, 22
  %426 = shl nuw nsw i32 %425, 5
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = shl i32 %424, 4
  %429 = and i32 %428, 32752
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = lshr i32 %424, 7
  %432 = and i32 %431, 32752
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %435 = extractvalue %dx.types.CBufRet.f32 %434, 3
  %436 = fmul fast float %435, 1.000000e+03
  %437 = fmul fast float %198, %436
  %438 = call float @dx.op.unary.f32(i32 22, float %437)  ; Frc(value)
  %439 = fadd fast float %438, %188
  %440 = fmul fast float %199, %436
  %441 = call float @dx.op.unary.f32(i32 22, float %440)  ; Frc(value)
  %442 = fadd fast float %441, %190
  %443 = fmul fast float %408, %436
  %444 = call float @dx.op.unary.f32(i32 22, float %443)  ; Frc(value)
  %445 = fmul fast float %444, 0x401921FB60000000
  %446 = fadd fast float %445, %427
  %447 = call float @dx.op.unary.f32(i32 13, float %446)  ; Sin(value)
  %448 = call float @dx.op.unary.f32(i32 12, float %446)  ; Cos(value)
  %449 = fsub fast float -0.000000e+00, %447
  %450 = fadd fast float %401, -5.000000e-01
  %451 = fadd fast float %402, -5.000000e-01
  %452 = fmul fast float %419, %450
  %453 = fmul fast float %421, %451
  %454 = fadd fast float %452, 5.000000e-01
  %455 = fadd fast float %453, 5.000000e-01
  %456 = fmul fast float %430, %454
  %457 = fmul fast float %433, %455
  %458 = fmul fast float %448, %456
  %459 = call float @dx.op.tertiary.f32(i32 46, float %449, float %457, float %458)  ; FMad(a,b,c)
  %460 = fmul fast float %447, %456
  %461 = call float @dx.op.tertiary.f32(i32 46, float %448, float %457, float %460)  ; FMad(a,b,c)
  %462 = fadd fast float %439, %459
  %463 = fadd fast float %442, %461
  %464 = icmp ugt i32 %413, 1
  %465 = icmp ugt i32 %411, 33554431
  %466 = or i1 %465, %464
  br i1 %466, label %467, label %492

; <label>:467                                     ; preds = %394
  %468 = add i32 %21, 228
  %469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %468, i32 undef)  ; BufferLoad(srv,index,wot)
  %470 = extractvalue %dx.types.ResRet.i32 %469, 0
  %471 = lshr i32 %470, 16
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = fmul fast float %435, %472
  %474 = call float @dx.op.unary.f32(i32 22, float %473)  ; Frc(value)
  %475 = mul nuw nsw i32 %413, %414
  %476 = uitofp i32 %475 to float
  %477 = fmul fast float %474, %476
  %478 = call float @dx.op.unary.f32(i32 27, float %477)  ; Round_ni(value)
  %479 = fptoui float %478 to i32
  %480 = urem i32 %479, %413
  %481 = udiv i32 %479, %414
  %482 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %483 = call float @dx.op.unary.f32(i32 22, float %463)  ; Frc(value)
  %484 = uitofp i32 %480 to float
  %485 = uitofp i32 %481 to float
  %486 = fadd fast float %482, %484
  %487 = fadd fast float %483, %485
  %488 = uitofp i32 %413 to float
  %489 = uitofp i32 %414 to float
  %490 = fdiv fast float %486, %488
  %491 = fdiv fast float %487, %489
  br label %492

; <label>:492                                     ; preds = %467, %394
  %493 = phi float [ %490, %467 ], [ %462, %394 ]
  %494 = phi float [ %491, %467 ], [ %463, %394 ]
  %495 = and i32 %388, 16
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %693, label %497

; <label>:497                                     ; preds = %492
  %498 = add i32 %21, 376
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %498, i32 undef)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = add i32 %500, 0
  %502 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %501, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %503 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %502, %dx.types.Handle %57, float %493, float %494, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %504 = extractvalue %dx.types.ResRet.f32 %503, 0
  %505 = extractvalue %dx.types.ResRet.f32 %503, 1
  %506 = extractvalue %dx.types.ResRet.f32 %503, 2
  %507 = extractvalue %dx.types.ResRet.f32 %503, 3
  %508 = and i32 %411, 255
  %509 = uitofp i32 %508 to float
  %510 = lshr i32 %411, 8
  %511 = and i32 %510, 255
  %512 = uitofp i32 %511 to float
  %513 = fmul fast float %507, %509
  %514 = fadd fast float %513, %512
  %515 = fmul fast float %514, 0x3F70101000000000
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = and i32 %517, 512
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %528, label %520

; <label>:520                                     ; preds = %497
  %521 = add i32 %21, 460
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %521, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = add i32 %523, 0
  %525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %525, %dx.types.Handle %58, float %493, float %494, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %527 = extractvalue %dx.types.ResRet.f32 %526, 0
  br label %528

; <label>:528                                     ; preds = %520, %497
  %529 = phi float [ %527, %520 ], [ 1.000000e+00, %497 ]
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = and i32 %531, 33554432
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %640, label %534

; <label>:534                                     ; preds = %528
  %535 = add i32 %21, 224
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 65535
  %539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %538)  ; LegacyF16ToF32(value)
  %540 = lshr i32 %537, 16
  %541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %540)  ; LegacyF16ToF32(value)
  %542 = add i32 %21, 228
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, 65535
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = lshr i32 %548, 24
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %550, 0x3F70101020000000
  %552 = and i32 %548, 255
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %553, 0x3F70101020000000
  %555 = lshr i32 %548, 8
  %556 = and i32 %555, 255
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %557, 0x3F70101020000000
  %559 = lshr i32 %548, 16
  %560 = and i32 %559, 255
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, 0x3F70101020000000
  %563 = add i32 %21, 220
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = lshr i32 %565, 24
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = and i32 %565, 255
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3F70101020000000
  %572 = lshr i32 %565, 8
  %573 = and i32 %572, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %574, 0x3F70101020000000
  %576 = lshr i32 %565, 16
  %577 = and i32 %576, 255
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %578, 0x3F70101020000000
  %580 = bitcast float %504 to i32
  %581 = ashr i32 %580, 1
  %582 = sub nsw i32 1597463174, %581
  %583 = bitcast i32 %582 to float
  %584 = fmul fast float %504, 5.000000e-01
  %585 = fmul fast float %583, %583
  %586 = fmul fast float %585, %584
  %587 = fsub fast float 1.500000e+00, %586
  %588 = fmul fast float %583, %504
  %589 = fmul fast float %588, %587
  %590 = bitcast float %505 to i32
  %591 = ashr i32 %590, 1
  %592 = sub nsw i32 1597463174, %591
  %593 = bitcast i32 %592 to float
  %594 = fmul fast float %505, 5.000000e-01
  %595 = fmul fast float %593, %593
  %596 = fmul fast float %595, %594
  %597 = fsub fast float 1.500000e+00, %596
  %598 = fmul fast float %593, %505
  %599 = fmul fast float %598, %597
  %600 = bitcast float %506 to i32
  %601 = ashr i32 %600, 1
  %602 = sub nsw i32 1597463174, %601
  %603 = bitcast i32 %602 to float
  %604 = fmul fast float %506, 5.000000e-01
  %605 = fmul fast float %603, %603
  %606 = fmul fast float %605, %604
  %607 = fsub fast float 1.500000e+00, %606
  %608 = fmul fast float %603, %506
  %609 = fmul fast float %608, %607
  %610 = fsub fast float %589, %571
  %611 = fsub fast float %599, %575
  %612 = fsub fast float %609, %579
  %613 = fmul fast float %610, %539
  %614 = fmul fast float %611, %541
  %615 = fmul fast float %612, %546
  %616 = fadd fast float %613, %554
  %617 = fadd fast float %614, %558
  %618 = fadd fast float %615, %562
  %619 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %620 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %621 = call float @dx.op.unary.f32(i32 7, float %618)  ; Saturate(value)
  %622 = fmul fast float %619, %619
  %623 = fmul fast float %620, %620
  %624 = fmul fast float %621, %621
  %625 = fsub fast float %622, %504
  %626 = fsub fast float %623, %505
  %627 = fsub fast float %624, %506
  %628 = fmul fast float %625, %529
  %629 = fmul fast float %626, %529
  %630 = fmul fast float %627, %529
  %631 = fadd fast float %628, %504
  %632 = fadd fast float %629, %505
  %633 = fadd fast float %630, %506
  %634 = fadd fast float %551, %515
  %635 = fsub fast float %634, %568
  %636 = call float @dx.op.unary.f32(i32 7, float %635)  ; Saturate(value)
  %637 = fsub fast float %636, %515
  %638 = fmul fast float %637, %529
  %639 = fadd fast float %638, %515
  br label %693

; <label>:640                                     ; preds = %528
  %641 = and i32 %531, 134217728
  %642 = icmp eq i32 %641, 0
  br i1 %642, label %677, label %643

; <label>:643                                     ; preds = %640
  %644 = call float @dx.op.unary.f32(i32 24, float %175)  ; Sqrt(value)
  %645 = call float @dx.op.unary.f32(i32 24, float %179)  ; Sqrt(value)
  %646 = call float @dx.op.unary.f32(i32 24, float %183)  ; Sqrt(value)
  %647 = fadd fast float %644, -5.000000e-01
  %648 = fadd fast float %645, -5.000000e-01
  %649 = fadd fast float %646, -5.000000e-01
  %650 = fmul fast float %647, %529
  %651 = fmul fast float %648, %529
  %652 = fmul fast float %649, %529
  %653 = fadd fast float %650, 5.000000e-01
  %654 = fadd fast float %651, 5.000000e-01
  %655 = fadd fast float %652, 5.000000e-01
  %656 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %657 = call float @dx.op.unary.f32(i32 24, float %505)  ; Sqrt(value)
  %658 = call float @dx.op.unary.f32(i32 24, float %506)  ; Sqrt(value)
  %659 = fmul fast float %653, 2.000000e+00
  %660 = fsub fast float 1.000000e+00, %659
  %661 = fmul fast float %660, %656
  %662 = fadd fast float %661, %659
  %663 = fmul fast float %662, %656
  %664 = fmul fast float %654, 2.000000e+00
  %665 = fsub fast float 1.000000e+00, %664
  %666 = fmul fast float %665, %657
  %667 = fadd fast float %666, %664
  %668 = fmul fast float %667, %657
  %669 = fmul fast float %655, 2.000000e+00
  %670 = fsub fast float 1.000000e+00, %669
  %671 = fmul fast float %670, %658
  %672 = fadd fast float %671, %669
  %673 = fmul fast float %672, %658
  %674 = fmul fast float %663, %663
  %675 = fmul fast float %668, %668
  %676 = fmul fast float %673, %673
  br label %693

; <label>:677                                     ; preds = %640
  %678 = fmul fast float %175, %175
  %679 = fmul fast float %179, %179
  %680 = fmul fast float %183, %183
  %681 = fadd fast float %678, -1.000000e+00
  %682 = fadd fast float %679, -1.000000e+00
  %683 = fadd fast float %680, -1.000000e+00
  %684 = fmul fast float %529, %681
  %685 = fmul fast float %529, %682
  %686 = fmul fast float %529, %683
  %687 = fadd fast float %684, 1.000000e+00
  %688 = fadd fast float %685, 1.000000e+00
  %689 = fadd fast float %686, 1.000000e+00
  %690 = fmul fast float %687, %504
  %691 = fmul fast float %688, %505
  %692 = fmul fast float %689, %506
  br label %693

; <label>:693                                     ; preds = %677, %643, %534, %492
  %694 = phi float [ %639, %534 ], [ %515, %643 ], [ %515, %677 ], [ 0x3FA23C0BE0000000, %492 ]
  %695 = phi float [ %631, %534 ], [ %674, %643 ], [ %690, %677 ], [ 1.000000e+00, %492 ]
  %696 = phi float [ %632, %534 ], [ %675, %643 ], [ %691, %677 ], [ 1.000000e+00, %492 ]
  %697 = phi float [ %633, %534 ], [ %676, %643 ], [ %692, %677 ], [ 1.000000e+00, %492 ]
  %698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.i32 %698, 1
  %700 = and i32 %699, 1
  %701 = icmp ne i32 %700, 0
  %702 = add i32 %21, 356
  %703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %702, i32 undef)  ; BufferLoad(srv,index,wot)
  %704 = extractvalue %dx.types.ResRet.i32 %703, 0
  %705 = and i32 %704, 32
  %706 = icmp ne i32 %705, 0
  %707 = and i1 %701, %706
  %708 = select i1 %707, float 1.000000e+00, float %695
  %709 = select i1 %707, float 0x3FD3333340000000, float %696
  %710 = select i1 %707, float 0x3FD3333340000000, float %697
  %711 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %712 = extractvalue %dx.types.ResRet.i32 %711, 0
  %713 = and i32 %712, 32
  %714 = icmp eq i32 %713, 0
  br i1 %714, label %787, label %715

; <label>:715                                     ; preds = %693
  %716 = add i32 %21, 92
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = add i32 %21, 392
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = add i32 %721, 0
  %723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %724 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %723, %dx.types.Handle %57, float %493, float %494, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %725 = extractvalue %dx.types.ResRet.f32 %724, 0
  %726 = extractvalue %dx.types.ResRet.f32 %724, 1
  %727 = extractvalue %dx.types.ResRet.f32 %724, 2
  %728 = extractvalue %dx.types.ResRet.f32 %724, 3
  %729 = and i32 %718, 255
  %730 = uitofp i32 %729 to float
  %731 = lshr i32 %718, 8
  %732 = and i32 %731, 255
  %733 = uitofp i32 %732 to float
  %734 = lshr i32 %718, 16
  %735 = and i32 %734, 255
  %736 = uitofp i32 %735 to float
  %737 = fmul fast float %736, 0x3F70101000000000
  %738 = fmul fast float %725, %730
  %739 = fadd fast float %738, %733
  %740 = fmul fast float %739, 0x3F70101000000000
  %741 = fadd fast float %726, -5.000000e-01
  %742 = fadd fast float %728, -5.000000e-01
  %743 = fmul fast float %741, %737
  %744 = fmul fast float %742, %737
  %745 = fadd fast float %743, 5.000000e-01
  %746 = fadd fast float %744, 5.000000e-01
  %747 = fmul fast float %745, 2.000000e+00
  %748 = fadd fast float %747, -1.000000e+00
  %749 = fmul fast float %746, 2.000000e+00
  %750 = fadd fast float %749, -1.000000e+00
  %751 = fadd fast float %748, %750
  %752 = fmul fast float %751, 5.000000e-01
  %753 = fsub fast float %748, %750
  %754 = fmul fast float %753, 5.000000e-01
  %755 = call float @dx.op.unary.f32(i32 6, float %752)  ; FAbs(value)
  %756 = fsub fast float 1.000000e+00, %755
  %757 = call float @dx.op.unary.f32(i32 6, float %754)  ; FAbs(value)
  %758 = fsub fast float %756, %757
  %759 = call float @dx.op.dot3.f32(i32 55, float %752, float %754, float %758, float %752, float %754, float %758)  ; Dot3(ax,ay,az,bx,by,bz)
  %760 = call float @dx.op.unary.f32(i32 25, float %759)  ; Rsqrt(value)
  %761 = fmul fast float %752, %760
  %762 = fmul fast float %754, %760
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = and i32 %764, 67108864
  %766 = icmp eq i32 %765, 0
  br i1 %766, label %783, label %767

; <label>:767                                     ; preds = %715
  %768 = add i32 %21, 280
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %768, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = and i32 %770, 65535
  %772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %771)  ; LegacyF16ToF32(value)
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 65535
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = lshr i32 %770, 16
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = fsub fast float %740, %778
  %780 = fmul fast float %779, %772
  %781 = fadd fast float %780, %776
  %782 = call float @dx.op.unary.f32(i32 7, float %781)  ; Saturate(value)
  br label %783

; <label>:783                                     ; preds = %767, %715
  %784 = phi float [ %782, %767 ], [ %740, %715 ]
  %785 = call float @dx.op.dot2.f32(i32 54, float %761, float %762, float %397, float %398)  ; Dot2(ax,ay,bx,by)
  %786 = call float @dx.op.dot2.f32(i32 54, float %761, float %762, float %399, float %400)  ; Dot2(ax,ay,bx,by)
  br label %787

; <label>:787                                     ; preds = %783, %693
  %788 = phi float [ %784, %783 ], [ 0x3FD6666660000000, %693 ]
  %789 = phi float [ %785, %783 ], [ 0.000000e+00, %693 ]
  %790 = phi float [ %786, %783 ], [ 0.000000e+00, %693 ]
  %791 = phi float [ %727, %783 ], [ 1.000000e+00, %693 ]
  %792 = add i32 %21, 160
  %793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %794 = extractvalue %dx.types.ResRet.i32 %793, 0
  %795 = lshr i32 %794, 22
  %796 = shl nuw nsw i32 %795, 5
  %797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %796)  ; LegacyF16ToF32(value)
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 64
  %801 = icmp eq i32 %800, 0
  br i1 %801, label %835, label %802

; <label>:802                                     ; preds = %787
  %803 = add i32 %21, 408
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %803, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = add i32 %805, 0
  %807 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %806, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 131072
  %811 = icmp eq i32 %810, 0
  %812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %807, %dx.types.Handle %57, float %493, float %494, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %813 = extractvalue %dx.types.ResRet.f32 %812, 0
  %814 = extractvalue %dx.types.ResRet.f32 %812, 1
  %815 = extractvalue %dx.types.ResRet.f32 %812, 2
  %816 = fmul fast float %813, %163
  %817 = fmul fast float %814, %166
  %818 = fmul fast float %815, %169
  br i1 %811, label %825, label %819

; <label>:819                                     ; preds = %802
  %820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %821 = extractvalue %dx.types.CBufRet.f32 %820, 0
  %822 = fmul fast float %821, %816
  %823 = fmul fast float %821, %817
  %824 = fmul fast float %821, %818
  br label %825

; <label>:825                                     ; preds = %819, %802
  %826 = phi float [ %822, %819 ], [ %816, %802 ]
  %827 = phi float [ %823, %819 ], [ %817, %802 ]
  %828 = phi float [ %824, %819 ], [ %818, %802 ]
  %829 = fmul fast float %826, %797
  %830 = select i1 %157, float %829, float %826
  %831 = call float @dx.op.dot3.f32(i32 55, float %830, float %827, float %828, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %832 = select i1 %157, float 0.000000e+00, float %826
  %833 = select i1 %157, float %831, float %827
  %834 = select i1 %157, float 0.000000e+00, float %828
  br label %835

; <label>:835                                     ; preds = %825, %787
  %836 = phi float [ %832, %825 ], [ 0.000000e+00, %787 ]
  %837 = phi float [ %833, %825 ], [ 0.000000e+00, %787 ]
  %838 = phi float [ %834, %825 ], [ 0.000000e+00, %787 ]
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 10240
  %842 = icmp eq i32 %841, 0
  br i1 %842, label %887, label %843

; <label>:843                                     ; preds = %835
  %844 = add i32 %21, 476
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = add i32 %846, 0
  %848 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %847, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %849 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %848, %dx.types.Handle %58, float %493, float %494, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %850 = extractvalue %dx.types.ResRet.f32 %849, 1
  %851 = extractvalue %dx.types.ResRet.f32 %849, 3
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 1048576
  %855 = icmp ne i32 %854, 0
  %856 = and i32 %853, 8192
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %873, label %858

; <label>:858                                     ; preds = %843
  %859 = extractvalue %dx.types.ResRet.f32 %849, 2
  %860 = select i1 %855, float %859, float %850
  %861 = extractvalue %dx.types.ResRet.f32 %849, 0
  %862 = select i1 %855, float %861, float %850
  %863 = add i32 %21, 96
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = lshr i32 %865, 16
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %868, 0x3F80101020000000
  %870 = fmul fast float %869, %862
  %871 = fmul fast float %869, %850
  %872 = fmul fast float %869, %860
  br label %873

; <label>:873                                     ; preds = %858, %843
  %874 = phi float [ %870, %858 ], [ 0.000000e+00, %843 ]
  %875 = phi float [ %871, %858 ], [ 0.000000e+00, %843 ]
  %876 = phi float [ %872, %858 ], [ 0.000000e+00, %843 ]
  %877 = and i32 %853, 2048
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %887, label %879

; <label>:879                                     ; preds = %873
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %792, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = shl i32 %881, 4
  %883 = and i32 %882, 32752
  %884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %883)  ; LegacyF16ToF32(value)
  %885 = fmul fast float %884, %851
  %886 = call float @dx.op.binary.f32(i32 35, float %885, float 0x3F70101020000000)  ; FMax(a,b)
  br label %887

; <label>:887                                     ; preds = %879, %873, %835
  %888 = phi float [ %874, %879 ], [ %874, %873 ], [ 0.000000e+00, %835 ]
  %889 = phi float [ %875, %879 ], [ %875, %873 ], [ 0.000000e+00, %835 ]
  %890 = phi float [ %876, %879 ], [ %876, %873 ], [ 0.000000e+00, %835 ]
  %891 = phi float [ %886, %879 ], [ 0x3F70101020000000, %873 ], [ 0x3F70101020000000, %835 ]
  %892 = add i32 %21, 96
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = and i32 %894, 255
  %896 = uitofp i32 %895 to float
  %897 = lshr i32 %894, 8
  %898 = and i32 %897, 255
  %899 = uitofp i32 %898 to float
  %900 = call float @dx.op.dot3.f32(i32 55, float %708, float %709, float %710, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = fmul fast float %899, %900
  %902 = fadd fast float %901, %896
  %903 = fmul fast float %902, 0x3F70101020000000
  %904 = call float @dx.op.unary.f32(i32 7, float %903)  ; Saturate(value)
  br label %905

; <label>:905                                     ; preds = %887, %379
  %906 = phi float [ 0.000000e+00, %379 ], [ %789, %887 ]
  %907 = phi float [ 0.000000e+00, %379 ], [ %790, %887 ]
  %908 = phi float [ 0.000000e+00, %379 ], [ %836, %887 ]
  %909 = phi float [ 0.000000e+00, %379 ], [ %837, %887 ]
  %910 = phi float [ 0.000000e+00, %379 ], [ %838, %887 ]
  %911 = phi float [ 0.000000e+00, %379 ], [ %708, %887 ]
  %912 = phi float [ 0.000000e+00, %379 ], [ %709, %887 ]
  %913 = phi float [ 0.000000e+00, %379 ], [ %710, %887 ]
  %914 = phi float [ 0.000000e+00, %379 ], [ %888, %887 ]
  %915 = phi float [ 0.000000e+00, %379 ], [ %889, %887 ]
  %916 = phi float [ 0.000000e+00, %379 ], [ %890, %887 ]
  %917 = phi float [ 0.000000e+00, %379 ], [ %694, %887 ]
  %918 = phi float [ 0.000000e+00, %379 ], [ 1.000000e+00, %887 ]
  %919 = phi float [ 0.000000e+00, %379 ], [ %788, %887 ]
  %920 = phi float [ 0.000000e+00, %379 ], [ %791, %887 ]
  %921 = phi float [ 0.000000e+00, %379 ], [ %891, %887 ]
  %922 = phi float [ 0.000000e+00, %379 ], [ %904, %887 ]
  br i1 %330, label %1851, label %923

; <label>:923                                     ; preds = %905
  %924 = icmp ult i32 %385, 2
  %925 = add i32 %21, 40
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = add i32 %21, 44
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = or i32 %930, %927
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %1851, label %933

; <label>:933                                     ; preds = %923
  %934 = and i32 %927, 262144
  %935 = icmp ne i32 %934, 0
  %936 = select i1 %935, float %24, float 1.000000e+00
  %937 = select i1 %935, float %25, float 0.000000e+00
  %938 = select i1 %935, float %26, float 0.000000e+00
  %939 = select i1 %935, float %27, float 1.000000e+00
  %940 = select i1 %935, float %28, float %49
  %941 = select i1 %935, float %29, float %50
  %942 = add i32 %21, 300
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = lshr i32 %944, 16
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = fmul fast float %946, 0x3F50624DE0000000
  %948 = add i32 %21, 104
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = lshr i32 %950, 16
  %952 = and i32 %951, 255
  %953 = lshr i32 %950, 24
  %954 = add i32 %21, 308
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = and i32 %956, 65535
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = lshr i32 %956, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = add i32 %21, 48
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 22
  %965 = shl nuw nsw i32 %964, 5
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = shl i32 %963, 4
  %968 = and i32 %967, 32752
  %969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %968)  ; LegacyF16ToF32(value)
  %970 = lshr i32 %963, 7
  %971 = and i32 %970, 32752
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %974 = extractvalue %dx.types.CBufRet.f32 %973, 3
  %975 = fmul fast float %974, 1.000000e+03
  %976 = fmul fast float %240, %975
  %977 = call float @dx.op.unary.f32(i32 22, float %976)  ; Frc(value)
  %978 = fadd fast float %977, %230
  %979 = fmul fast float %241, %975
  %980 = call float @dx.op.unary.f32(i32 22, float %979)  ; Frc(value)
  %981 = fadd fast float %980, %232
  %982 = fmul fast float %947, %975
  %983 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %984 = fmul fast float %983, 0x401921FB60000000
  %985 = fadd fast float %984, %966
  %986 = call float @dx.op.unary.f32(i32 13, float %985)  ; Sin(value)
  %987 = call float @dx.op.unary.f32(i32 12, float %985)  ; Cos(value)
  %988 = fsub fast float -0.000000e+00, %986
  %989 = fadd fast float %940, -5.000000e-01
  %990 = fadd fast float %941, -5.000000e-01
  %991 = fmul fast float %958, %989
  %992 = fmul fast float %960, %990
  %993 = fadd fast float %991, 5.000000e-01
  %994 = fadd fast float %992, 5.000000e-01
  %995 = fmul fast float %969, %993
  %996 = fmul fast float %972, %994
  %997 = fmul fast float %987, %995
  %998 = call float @dx.op.tertiary.f32(i32 46, float %988, float %996, float %997)  ; FMad(a,b,c)
  %999 = fmul fast float %986, %995
  %1000 = call float @dx.op.tertiary.f32(i32 46, float %987, float %996, float %999)  ; FMad(a,b,c)
  %1001 = fadd fast float %978, %998
  %1002 = fadd fast float %981, %1000
  %1003 = icmp ugt i32 %952, 1
  %1004 = icmp ugt i32 %950, 33554431
  %1005 = or i1 %1004, %1003
  br i1 %1005, label %1006, label %1031

; <label>:1006                                    ; preds = %933
  %1007 = add i32 %21, 244
  %1008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.i32 %1008, 0
  %1010 = lshr i32 %1009, 16
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = fmul fast float %974, %1011
  %1013 = call float @dx.op.unary.f32(i32 22, float %1012)  ; Frc(value)
  %1014 = mul nuw nsw i32 %952, %953
  %1015 = uitofp i32 %1014 to float
  %1016 = fmul fast float %1013, %1015
  %1017 = call float @dx.op.unary.f32(i32 27, float %1016)  ; Round_ni(value)
  %1018 = fptoui float %1017 to i32
  %1019 = urem i32 %1018, %952
  %1020 = udiv i32 %1018, %953
  %1021 = call float @dx.op.unary.f32(i32 22, float %1001)  ; Frc(value)
  %1022 = call float @dx.op.unary.f32(i32 22, float %1002)  ; Frc(value)
  %1023 = uitofp i32 %1019 to float
  %1024 = uitofp i32 %1020 to float
  %1025 = fadd fast float %1021, %1023
  %1026 = fadd fast float %1022, %1024
  %1027 = uitofp i32 %952 to float
  %1028 = uitofp i32 %953 to float
  %1029 = fdiv fast float %1025, %1027
  %1030 = fdiv fast float %1026, %1028
  br label %1031

; <label>:1031                                    ; preds = %1006, %933
  %1032 = phi float [ %1029, %1006 ], [ %1001, %933 ]
  %1033 = phi float [ %1030, %1006 ], [ %1002, %933 ]
  %1034 = and i32 %927, 16777216
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1145, label %1036

; <label>:1036                                    ; preds = %1031
  %1037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1038 = extractvalue %dx.types.CBufRet.f32 %1037, 0
  %1039 = extractvalue %dx.types.CBufRet.f32 %1037, 1
  %1040 = extractvalue %dx.types.CBufRet.f32 %1037, 2
  %1041 = fadd fast float %1038, %116
  %1042 = fadd fast float %1039, %117
  %1043 = fadd fast float %1040, %118
  %1044 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1045 = extractvalue %dx.types.CBufRet.f32 %1044, 0
  %1046 = call float @dx.op.unary.f32(i32 7, float %1045)  ; Saturate(value)
  %1047 = icmp eq i32 %22, 65535
  br i1 %1047, label %1142, label %1048

; <label>:1048                                    ; preds = %1036
  %1049 = lshr i32 %22, 1
  %1050 = shl i32 %1049, 2
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1050, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = and i32 %22, 1
  %1054 = icmp ne i32 %1053, 0
  %1055 = lshr i32 %1052, 16
  %1056 = and i32 %1052, 65535
  %1057 = select i1 %1054, i32 %1055, i32 %1056
  %1058 = icmp eq i32 %1057, 65535
  br i1 %1058, label %1138, label %1059

; <label>:1059                                    ; preds = %1048
  %1060 = mul nuw nsw i32 %1057, 40
  %1061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = extractvalue %dx.types.ResRet.f32 %1061, 1
  %1064 = extractvalue %dx.types.ResRet.f32 %1061, 2
  %1065 = add nuw nsw i32 %1060, 12
  %1066 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1065, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.f32 %1066, 0
  %1068 = extractvalue %dx.types.ResRet.f32 %1066, 1
  %1069 = extractvalue %dx.types.ResRet.f32 %1066, 2
  %1070 = add nuw nsw i32 %1060, 24
  %1071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = add nuw nsw i32 %1060, 36
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = fsub fast float %1041, %1062
  %1079 = fsub fast float %1042, %1063
  %1080 = fsub fast float %1043, %1064
  %1081 = fmul fast float %1077, %1078
  %1082 = fmul fast float %1077, %1079
  %1083 = fmul fast float %1077, %1080
  %1084 = call float @dx.op.unary.f32(i32 27, float %1081)  ; Round_ni(value)
  %1085 = call float @dx.op.unary.f32(i32 27, float %1082)  ; Round_ni(value)
  %1086 = call float @dx.op.unary.f32(i32 27, float %1083)  ; Round_ni(value)
  %1087 = fadd fast float %1084, 5.000000e-01
  %1088 = fadd fast float %1085, 5.000000e-01
  %1089 = fadd fast float %1086, 5.000000e-01
  %1090 = fmul fast float %1087, %1067
  %1091 = fmul fast float %1088, %1068
  %1092 = fmul fast float %1089, %1069
  %1093 = shl i32 %22, 2
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = add i32 %1095, 0
  %1097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1096, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1098 = call float @dx.op.unary.f32(i32 22, float %1090)  ; Frc(value)
  %1099 = call float @dx.op.unary.f32(i32 22, float %1091)  ; Frc(value)
  %1100 = call float @dx.op.unary.f32(i32 22, float %1092)  ; Frc(value)
  %1101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1097, %dx.types.Handle %18, float %1098, float %1099, float %1100, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1102 = extractvalue %dx.types.ResRet.f32 %1101, 0
  %1103 = extractvalue %dx.types.ResRet.f32 %1101, 1
  %1104 = extractvalue %dx.types.ResRet.f32 %1101, 2
  %1105 = fmul fast float %1102, 1.023000e+03
  %1106 = fmul fast float %1103, 1.023000e+03
  %1107 = fmul fast float %1104, 1.023000e+03
  %1108 = fadd fast float %1105, 5.000000e-01
  %1109 = fadd fast float %1106, 5.000000e-01
  %1110 = fadd fast float %1107, 5.000000e-01
  %1111 = call float @dx.op.unary.f32(i32 27, float %1108)  ; Round_ni(value)
  %1112 = call float @dx.op.unary.f32(i32 27, float %1109)  ; Round_ni(value)
  %1113 = call float @dx.op.unary.f32(i32 27, float %1110)  ; Round_ni(value)
  %1114 = fsub fast float %1081, %1084
  %1115 = fsub fast float %1082, %1085
  %1116 = fsub fast float %1083, %1086
  %1117 = fmul fast float %1114, 7.500000e-01
  %1118 = fmul fast float %1115, 7.500000e-01
  %1119 = fmul fast float %1116, 7.500000e-01
  %1120 = fadd fast float %1084, 1.250000e-01
  %1121 = fadd fast float %1120, %1117
  %1122 = fadd fast float %1121, %1111
  %1123 = fadd fast float %1085, 1.250000e-01
  %1124 = fadd fast float %1123, %1118
  %1125 = fadd fast float %1124, %1112
  %1126 = fadd fast float %1086, 1.250000e-01
  %1127 = fadd fast float %1126, %1119
  %1128 = fadd fast float %1127, %1113
  %1129 = fmul fast float %1122, %1072
  %1130 = fmul fast float %1125, %1073
  %1131 = fmul fast float %1128, %1074
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = add i32 %1133, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1135, %dx.types.Handle %16, float %1129, float %1130, float %1131, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  br label %1138

; <label>:1138                                    ; preds = %1059, %1048
  %1139 = phi float [ %1137, %1059 ], [ -1.000000e+00, %1048 ]
  %1140 = fadd fast float %1139, %1046
  %1141 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  br label %1142

; <label>:1142                                    ; preds = %1138, %1036
  %1143 = phi float [ %1141, %1138 ], [ %1046, %1036 ]
  %1144 = fmul fast float %1143, %382
  br label %1145

; <label>:1145                                    ; preds = %1142, %1031
  %1146 = phi float [ %1144, %1142 ], [ %382, %1031 ]
  %1147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1148 = extractvalue %dx.types.ResRet.i32 %1147, 0
  %1149 = and i32 %1148, 256
  %1150 = icmp eq i32 %1149, 0
  br i1 %1150, label %1197, label %1151

; <label>:1151                                    ; preds = %1145
  %1152 = add i32 %21, 444
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1152, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = add i32 %1154, 0
  %1156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1156, %dx.types.Handle %58, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1158 = extractvalue %dx.types.ResRet.f32 %1157, 0
  %1159 = add i32 %21, 116
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1159, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = shl i32 %1161, 4
  %1163 = and i32 %1162, 32752
  %1164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1163)  ; LegacyF16ToF32(value)
  %1165 = lshr i32 %1161, 7
  %1166 = and i32 %1165, 32752
  %1167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1166)  ; LegacyF16ToF32(value)
  %1168 = fsub fast float 1.000000e+00, %1146
  %1169 = call float @dx.op.binary.f32(i32 35, float %1168, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1170 = bitcast float %1146 to i32
  %1171 = sitofp i32 %1170 to float
  %1172 = fadd fast float %1171, 0xC1CFBF8940000000
  %1173 = fmul fast float %1167, %1172
  %1174 = fadd fast float %1173, 0x41CFBF8940000000
  %1175 = fptosi float %1174 to i32
  %1176 = bitcast i32 %1175 to float
  %1177 = bitcast float %1169 to i32
  %1178 = sitofp i32 %1177 to float
  %1179 = fadd fast float %1178, 0xC1CFBF8940000000
  %1180 = fmul fast float %1179, %1167
  %1181 = fadd fast float %1180, 0x41CFBF8940000000
  %1182 = fptosi float %1181 to i32
  %1183 = bitcast i32 %1182 to float
  %1184 = fmul fast float %1176, %1164
  %1185 = fmul fast float %1183, %1164
  %1186 = fsub fast float %1169, %1184
  %1187 = fadd fast float %1185, %1169
  %1188 = call float @dx.op.unary.f32(i32 7, float %1186)  ; Saturate(value)
  %1189 = call float @dx.op.unary.f32(i32 7, float %1187)  ; Saturate(value)
  %1190 = fsub fast float %1158, %1188
  %1191 = fsub fast float %1189, %1188
  %1192 = bitcast float %1191 to i32
  %1193 = sub nsw i32 2129859010, %1192
  %1194 = bitcast i32 %1193 to float
  %1195 = fmul fast float %1194, %1190
  %1196 = call float @dx.op.unary.f32(i32 7, float %1195)  ; Saturate(value)
  br label %1197

; <label>:1197                                    ; preds = %1151, %1145
  %1198 = phi float [ %1196, %1151 ], [ %1146, %1145 ]
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 128
  %1202 = icmp eq i32 %1201, 0
  br i1 %1202, label %1219, label %1203

; <label>:1203                                    ; preds = %1197
  %1204 = add i32 %21, 428
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1204, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = add i32 %1206, 0
  %1208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1208, %dx.types.Handle %58, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1210 = extractvalue %dx.types.ResRet.f32 %1209, 0
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 524288
  %1214 = icmp ne i32 %1213, 0
  %1215 = fcmp fast ogt float %1210, 0x3FE0101020000000
  %1216 = select i1 %1215, float 1.000000e+00, float 0.000000e+00
  %1217 = select i1 %1214, float %1216, float %1210
  %1218 = fmul fast float %1217, %1198
  br label %1219

; <label>:1219                                    ; preds = %1203, %1197
  %1220 = phi float [ %1218, %1203 ], [ %1198, %1197 ]
  %1221 = fcmp fast ult float %1220, 0x3F70101020000000
  br i1 %1221, label %1851, label %1222

; <label>:1222                                    ; preds = %1219
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = and i32 %1224, 16
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1425, label %1227

; <label>:1227                                    ; preds = %1222
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = add i32 %21, 380
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1230, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = add i32 %1232, 0
  %1234 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1233, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1235 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1234, %dx.types.Handle %57, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1236 = extractvalue %dx.types.ResRet.f32 %1235, 0
  %1237 = extractvalue %dx.types.ResRet.f32 %1235, 1
  %1238 = extractvalue %dx.types.ResRet.f32 %1235, 2
  %1239 = extractvalue %dx.types.ResRet.f32 %1235, 3
  %1240 = and i32 %1229, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = lshr i32 %1229, 8
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1239, %1241
  %1246 = fadd fast float %1245, %1244
  %1247 = fmul fast float %1246, 0x3F70101000000000
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 512
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1260, label %1252

; <label>:1252                                    ; preds = %1227
  %1253 = add i32 %21, 464
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = add i32 %1255, 0
  %1257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1256, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1258 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1257, %dx.types.Handle %58, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1259 = extractvalue %dx.types.ResRet.f32 %1258, 0
  br label %1260

; <label>:1260                                    ; preds = %1252, %1227
  %1261 = phi float [ %1259, %1252 ], [ 1.000000e+00, %1227 ]
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 33554432
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1372, label %1266

; <label>:1266                                    ; preds = %1260
  %1267 = add i32 %21, 240
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = and i32 %1269, 65535
  %1271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1270)  ; LegacyF16ToF32(value)
  %1272 = lshr i32 %1269, 16
  %1273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1272)  ; LegacyF16ToF32(value)
  %1274 = add i32 %21, 244
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = and i32 %1276, 65535
  %1278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1277)  ; LegacyF16ToF32(value)
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = lshr i32 %1280, 24
  %1282 = uitofp i32 %1281 to float
  %1283 = fmul fast float %1282, 0x3F70101020000000
  %1284 = and i32 %1280, 255
  %1285 = uitofp i32 %1284 to float
  %1286 = fmul fast float %1285, 0x3F70101020000000
  %1287 = lshr i32 %1280, 8
  %1288 = and i32 %1287, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F70101020000000
  %1291 = lshr i32 %1280, 16
  %1292 = and i32 %1291, 255
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = add i32 %21, 236
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 24
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = and i32 %1297, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = lshr i32 %1297, 8
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = lshr i32 %1297, 16
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = bitcast float %1236 to i32
  %1313 = ashr i32 %1312, 1
  %1314 = sub nsw i32 1597463174, %1313
  %1315 = bitcast i32 %1314 to float
  %1316 = fmul fast float %1236, 5.000000e-01
  %1317 = fmul fast float %1315, %1315
  %1318 = fmul fast float %1317, %1316
  %1319 = fsub fast float 1.500000e+00, %1318
  %1320 = fmul fast float %1315, %1236
  %1321 = fmul fast float %1320, %1319
  %1322 = bitcast float %1237 to i32
  %1323 = ashr i32 %1322, 1
  %1324 = sub nsw i32 1597463174, %1323
  %1325 = bitcast i32 %1324 to float
  %1326 = fmul fast float %1237, 5.000000e-01
  %1327 = fmul fast float %1325, %1325
  %1328 = fmul fast float %1327, %1326
  %1329 = fsub fast float 1.500000e+00, %1328
  %1330 = fmul fast float %1325, %1237
  %1331 = fmul fast float %1330, %1329
  %1332 = bitcast float %1238 to i32
  %1333 = ashr i32 %1332, 1
  %1334 = sub nsw i32 1597463174, %1333
  %1335 = bitcast i32 %1334 to float
  %1336 = fmul fast float %1238, 5.000000e-01
  %1337 = fmul fast float %1335, %1335
  %1338 = fmul fast float %1337, %1336
  %1339 = fsub fast float 1.500000e+00, %1338
  %1340 = fmul fast float %1335, %1238
  %1341 = fmul fast float %1340, %1339
  %1342 = fsub fast float %1321, %1303
  %1343 = fsub fast float %1331, %1307
  %1344 = fsub fast float %1341, %1311
  %1345 = fmul fast float %1342, %1271
  %1346 = fmul fast float %1343, %1273
  %1347 = fmul fast float %1344, %1278
  %1348 = fadd fast float %1345, %1286
  %1349 = fadd fast float %1346, %1290
  %1350 = fadd fast float %1347, %1294
  %1351 = call float @dx.op.unary.f32(i32 7, float %1348)  ; Saturate(value)
  %1352 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1353 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1354 = fmul fast float %1351, %1351
  %1355 = fmul fast float %1352, %1352
  %1356 = fmul fast float %1353, %1353
  %1357 = fsub fast float %1354, %1236
  %1358 = fsub fast float %1355, %1237
  %1359 = fsub fast float %1356, %1238
  %1360 = fmul fast float %1357, %1261
  %1361 = fmul fast float %1358, %1261
  %1362 = fmul fast float %1359, %1261
  %1363 = fadd fast float %1360, %1236
  %1364 = fadd fast float %1361, %1237
  %1365 = fadd fast float %1362, %1238
  %1366 = fadd fast float %1283, %1247
  %1367 = fsub fast float %1366, %1300
  %1368 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1369 = fsub fast float %1368, %1247
  %1370 = fmul fast float %1369, %1261
  %1371 = fadd fast float %1370, %1247
  br label %1425

; <label>:1372                                    ; preds = %1260
  %1373 = and i32 %1263, 134217728
  %1374 = icmp eq i32 %1373, 0
  br i1 %1374, label %1409, label %1375

; <label>:1375                                    ; preds = %1372
  %1376 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %1377 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %1378 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %1379 = fadd fast float %1376, -5.000000e-01
  %1380 = fadd fast float %1377, -5.000000e-01
  %1381 = fadd fast float %1378, -5.000000e-01
  %1382 = fmul fast float %1379, %1261
  %1383 = fmul fast float %1380, %1261
  %1384 = fmul fast float %1381, %1261
  %1385 = fadd fast float %1382, 5.000000e-01
  %1386 = fadd fast float %1383, 5.000000e-01
  %1387 = fadd fast float %1384, 5.000000e-01
  %1388 = call float @dx.op.unary.f32(i32 24, float %1236)  ; Sqrt(value)
  %1389 = call float @dx.op.unary.f32(i32 24, float %1237)  ; Sqrt(value)
  %1390 = call float @dx.op.unary.f32(i32 24, float %1238)  ; Sqrt(value)
  %1391 = fmul fast float %1385, 2.000000e+00
  %1392 = fsub fast float 1.000000e+00, %1391
  %1393 = fmul fast float %1392, %1388
  %1394 = fadd fast float %1393, %1391
  %1395 = fmul fast float %1394, %1388
  %1396 = fmul fast float %1386, 2.000000e+00
  %1397 = fsub fast float 1.000000e+00, %1396
  %1398 = fmul fast float %1397, %1389
  %1399 = fadd fast float %1398, %1396
  %1400 = fmul fast float %1399, %1389
  %1401 = fmul fast float %1387, 2.000000e+00
  %1402 = fsub fast float 1.000000e+00, %1401
  %1403 = fmul fast float %1402, %1390
  %1404 = fadd fast float %1403, %1401
  %1405 = fmul fast float %1404, %1390
  %1406 = fmul fast float %1395, %1395
  %1407 = fmul fast float %1400, %1400
  %1408 = fmul fast float %1405, %1405
  br label %1425

; <label>:1409                                    ; preds = %1372
  %1410 = fmul fast float %217, %217
  %1411 = fmul fast float %221, %221
  %1412 = fmul fast float %225, %225
  %1413 = fadd fast float %1410, -1.000000e+00
  %1414 = fadd fast float %1411, -1.000000e+00
  %1415 = fadd fast float %1412, -1.000000e+00
  %1416 = fmul fast float %1261, %1413
  %1417 = fmul fast float %1261, %1414
  %1418 = fmul fast float %1261, %1415
  %1419 = fadd fast float %1416, 1.000000e+00
  %1420 = fadd fast float %1417, 1.000000e+00
  %1421 = fadd fast float %1418, 1.000000e+00
  %1422 = fmul fast float %1419, %1236
  %1423 = fmul fast float %1420, %1237
  %1424 = fmul fast float %1421, %1238
  br label %1425

; <label>:1425                                    ; preds = %1409, %1375, %1266, %1222
  %1426 = phi float [ %1371, %1266 ], [ %1247, %1375 ], [ %1247, %1409 ], [ 0x3FA23C0BE0000000, %1222 ]
  %1427 = phi float [ %1363, %1266 ], [ %1406, %1375 ], [ %1422, %1409 ], [ 1.000000e+00, %1222 ]
  %1428 = phi float [ %1364, %1266 ], [ %1407, %1375 ], [ %1423, %1409 ], [ 1.000000e+00, %1222 ]
  %1429 = phi float [ %1365, %1266 ], [ %1408, %1375 ], [ %1424, %1409 ], [ 1.000000e+00, %1222 ]
  %1430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1431 = extractvalue %dx.types.CBufRet.i32 %1430, 1
  %1432 = and i32 %1431, 1
  %1433 = icmp ne i32 %1432, 0
  %1434 = add i32 %21, 356
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = and i32 %1436, 32
  %1438 = icmp ne i32 %1437, 0
  %1439 = and i1 %1433, %1438
  %1440 = select i1 %1439, float 1.000000e+00, float %1427
  %1441 = select i1 %1439, float 0x3FD3333340000000, float %1428
  %1442 = select i1 %1439, float 0x3FD3333340000000, float %1429
  %1443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1444 = extractvalue %dx.types.ResRet.i32 %1443, 0
  %1445 = and i32 %1444, 32
  %1446 = icmp eq i32 %1445, 0
  br i1 %1446, label %1519, label %1447

; <label>:1447                                    ; preds = %1425
  %1448 = add i32 %21, 108
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = add i32 %21, 396
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = add i32 %1453, 0
  %1455 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1454, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1456 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1455, %dx.types.Handle %57, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1457 = extractvalue %dx.types.ResRet.f32 %1456, 0
  %1458 = extractvalue %dx.types.ResRet.f32 %1456, 1
  %1459 = extractvalue %dx.types.ResRet.f32 %1456, 2
  %1460 = extractvalue %dx.types.ResRet.f32 %1456, 3
  %1461 = and i32 %1450, 255
  %1462 = uitofp i32 %1461 to float
  %1463 = lshr i32 %1450, 8
  %1464 = and i32 %1463, 255
  %1465 = uitofp i32 %1464 to float
  %1466 = lshr i32 %1450, 16
  %1467 = and i32 %1466, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = fmul fast float %1468, 0x3F70101000000000
  %1470 = fmul fast float %1457, %1462
  %1471 = fadd fast float %1470, %1465
  %1472 = fmul fast float %1471, 0x3F70101000000000
  %1473 = fadd fast float %1458, -5.000000e-01
  %1474 = fadd fast float %1460, -5.000000e-01
  %1475 = fmul fast float %1473, %1469
  %1476 = fmul fast float %1474, %1469
  %1477 = fadd fast float %1475, 5.000000e-01
  %1478 = fadd fast float %1476, 5.000000e-01
  %1479 = fmul fast float %1477, 2.000000e+00
  %1480 = fadd fast float %1479, -1.000000e+00
  %1481 = fmul fast float %1478, 2.000000e+00
  %1482 = fadd fast float %1481, -1.000000e+00
  %1483 = fadd fast float %1480, %1482
  %1484 = fmul fast float %1483, 5.000000e-01
  %1485 = fsub fast float %1480, %1482
  %1486 = fmul fast float %1485, 5.000000e-01
  %1487 = call float @dx.op.unary.f32(i32 6, float %1484)  ; FAbs(value)
  %1488 = fsub fast float 1.000000e+00, %1487
  %1489 = call float @dx.op.unary.f32(i32 6, float %1486)  ; FAbs(value)
  %1490 = fsub fast float %1488, %1489
  %1491 = call float @dx.op.dot3.f32(i32 55, float %1484, float %1486, float %1490, float %1484, float %1486, float %1490)  ; Dot3(ax,ay,az,bx,by,bz)
  %1492 = call float @dx.op.unary.f32(i32 25, float %1491)  ; Rsqrt(value)
  %1493 = fmul fast float %1484, %1492
  %1494 = fmul fast float %1486, %1492
  %1495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.i32 %1495, 0
  %1497 = and i32 %1496, 67108864
  %1498 = icmp eq i32 %1497, 0
  br i1 %1498, label %1515, label %1499

; <label>:1499                                    ; preds = %1447
  %1500 = add i32 %21, 296
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1500, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 65535
  %1504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1503)  ; LegacyF16ToF32(value)
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 65535
  %1508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1507)  ; LegacyF16ToF32(value)
  %1509 = lshr i32 %1502, 16
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = fsub fast float %1472, %1510
  %1512 = fmul fast float %1511, %1504
  %1513 = fadd fast float %1512, %1508
  %1514 = call float @dx.op.unary.f32(i32 7, float %1513)  ; Saturate(value)
  br label %1515

; <label>:1515                                    ; preds = %1499, %1447
  %1516 = phi float [ %1514, %1499 ], [ %1472, %1447 ]
  %1517 = call float @dx.op.dot2.f32(i32 54, float %1493, float %1494, float %936, float %937)  ; Dot2(ax,ay,bx,by)
  %1518 = call float @dx.op.dot2.f32(i32 54, float %1493, float %1494, float %938, float %939)  ; Dot2(ax,ay,bx,by)
  br label %1519

; <label>:1519                                    ; preds = %1515, %1425
  %1520 = phi float [ %1516, %1515 ], [ 0x3FD6666660000000, %1425 ]
  %1521 = phi float [ %1517, %1515 ], [ 0.000000e+00, %1425 ]
  %1522 = phi float [ %1518, %1515 ], [ 0.000000e+00, %1425 ]
  %1523 = phi float [ %1459, %1515 ], [ 1.000000e+00, %1425 ]
  %1524 = add i32 %21, 176
  %1525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1526 = extractvalue %dx.types.ResRet.i32 %1525, 0
  %1527 = lshr i32 %1526, 22
  %1528 = shl nuw nsw i32 %1527, 5
  %1529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1528)  ; LegacyF16ToF32(value)
  %1530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1531 = extractvalue %dx.types.ResRet.i32 %1530, 0
  %1532 = and i32 %1531, 64
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1567, label %1534

; <label>:1534                                    ; preds = %1519
  %1535 = add i32 %21, 412
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1535, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = add i32 %1537, 0
  %1539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1538, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 131072
  %1543 = icmp eq i32 %1542, 0
  %1544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1539, %dx.types.Handle %57, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1545 = extractvalue %dx.types.ResRet.f32 %1544, 0
  %1546 = extractvalue %dx.types.ResRet.f32 %1544, 1
  %1547 = extractvalue %dx.types.ResRet.f32 %1544, 2
  %1548 = fmul fast float %1545, %205
  %1549 = fmul fast float %1546, %208
  %1550 = fmul fast float %1547, %211
  br i1 %1543, label %1557, label %1551

; <label>:1551                                    ; preds = %1534
  %1552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1553 = extractvalue %dx.types.CBufRet.f32 %1552, 0
  %1554 = fmul fast float %1553, %1548
  %1555 = fmul fast float %1553, %1549
  %1556 = fmul fast float %1553, %1550
  br label %1557

; <label>:1557                                    ; preds = %1551, %1534
  %1558 = phi float [ %1554, %1551 ], [ %1548, %1534 ]
  %1559 = phi float [ %1555, %1551 ], [ %1549, %1534 ]
  %1560 = phi float [ %1556, %1551 ], [ %1550, %1534 ]
  %1561 = fmul fast float %1558, %1529
  %1562 = select i1 %157, float %1561, float %1558
  %1563 = call float @dx.op.dot3.f32(i32 55, float %1562, float %1559, float %1560, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1564 = select i1 %157, float 0.000000e+00, float %1558
  %1565 = select i1 %157, float %1563, float %1559
  %1566 = select i1 %157, float 0.000000e+00, float %1560
  br label %1567

; <label>:1567                                    ; preds = %1557, %1519
  %1568 = phi float [ %1564, %1557 ], [ 0.000000e+00, %1519 ]
  %1569 = phi float [ %1565, %1557 ], [ 0.000000e+00, %1519 ]
  %1570 = phi float [ %1566, %1557 ], [ 0.000000e+00, %1519 ]
  %1571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1572 = extractvalue %dx.types.ResRet.i32 %1571, 0
  %1573 = and i32 %1572, 10240
  %1574 = icmp eq i32 %1573, 0
  br i1 %1574, label %1619, label %1575

; <label>:1575                                    ; preds = %1567
  %1576 = add i32 %21, 480
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = add i32 %1578, 0
  %1580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1581 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1580, %dx.types.Handle %58, float %1032, float %1033, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 1
  %1583 = extractvalue %dx.types.ResRet.f32 %1581, 3
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 1048576
  %1587 = icmp ne i32 %1586, 0
  %1588 = and i32 %1585, 8192
  %1589 = icmp eq i32 %1588, 0
  br i1 %1589, label %1605, label %1590

; <label>:1590                                    ; preds = %1575
  %1591 = extractvalue %dx.types.ResRet.f32 %1581, 2
  %1592 = select i1 %1587, float %1591, float %1582
  %1593 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1594 = select i1 %1587, float %1593, float %1582
  %1595 = add i32 %21, 112
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1595, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = lshr i32 %1597, 16
  %1599 = and i32 %1598, 255
  %1600 = uitofp i32 %1599 to float
  %1601 = fmul fast float %1600, 0x3F80101020000000
  %1602 = fmul fast float %1601, %1594
  %1603 = fmul fast float %1601, %1582
  %1604 = fmul fast float %1601, %1592
  br label %1605

; <label>:1605                                    ; preds = %1590, %1575
  %1606 = phi float [ %1602, %1590 ], [ 0.000000e+00, %1575 ]
  %1607 = phi float [ %1603, %1590 ], [ 0.000000e+00, %1575 ]
  %1608 = phi float [ %1604, %1590 ], [ 0.000000e+00, %1575 ]
  %1609 = and i32 %1585, 2048
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1619, label %1611

; <label>:1611                                    ; preds = %1605
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1524, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = shl i32 %1613, 4
  %1615 = and i32 %1614, 32752
  %1616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1615)  ; LegacyF16ToF32(value)
  %1617 = fmul fast float %1616, %1583
  %1618 = call float @dx.op.binary.f32(i32 35, float %1617, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1619

; <label>:1619                                    ; preds = %1611, %1605, %1567
  %1620 = phi float [ %1606, %1611 ], [ %1606, %1605 ], [ 0.000000e+00, %1567 ]
  %1621 = phi float [ %1607, %1611 ], [ %1607, %1605 ], [ 0.000000e+00, %1567 ]
  %1622 = phi float [ %1608, %1611 ], [ %1608, %1605 ], [ 0.000000e+00, %1567 ]
  %1623 = phi float [ %1618, %1611 ], [ 0x3F70101020000000, %1605 ], [ 0x3F70101020000000, %1567 ]
  %1624 = add i32 %21, 112
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1624, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = and i32 %1626, 255
  %1628 = uitofp i32 %1627 to float
  %1629 = lshr i32 %1626, 8
  %1630 = and i32 %1629, 255
  %1631 = uitofp i32 %1630 to float
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1440, float %1441, float %1442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = fmul fast float %1631, %1632
  %1634 = fadd fast float %1633, %1628
  %1635 = fmul fast float %1634, 0x3F70101020000000
  %1636 = call float @dx.op.unary.f32(i32 7, float %1635)  ; Saturate(value)
  br i1 %924, label %1637, label %1645

; <label>:1637                                    ; preds = %1619
  %1638 = fsub fast float 1.000000e+00, %1220
  %1639 = fmul fast float %1638, %911
  %1640 = fmul fast float %1638, %912
  %1641 = fmul fast float %1638, %913
  %1642 = fmul fast float %1638, %908
  %1643 = fmul fast float %1638, %909
  %1644 = fmul fast float %1638, %910
  br label %1645

; <label>:1645                                    ; preds = %1637, %1619
  %1646 = phi float [ %1642, %1637 ], [ %908, %1619 ]
  %1647 = phi float [ %1643, %1637 ], [ %909, %1619 ]
  %1648 = phi float [ %1644, %1637 ], [ %910, %1619 ]
  %1649 = phi float [ %1639, %1637 ], [ %911, %1619 ]
  %1650 = phi float [ %1640, %1637 ], [ %912, %1619 ]
  %1651 = phi float [ %1641, %1637 ], [ %913, %1619 ]
  %1652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1653 = extractvalue %dx.types.ResRet.i32 %1652, 0
  %1654 = and i32 %1653, 3
  %1655 = icmp eq i32 %1654, 3
  br i1 %1655, label %1734, label %1656

; <label>:1656                                    ; preds = %1645
  %1657 = and i32 %1653, 16
  %1658 = icmp ne i32 %1657, 0
  %1659 = select i1 %1658, float %1220, float 0.000000e+00
  %1660 = icmp eq i32 %1654, 0
  br i1 %1660, label %1661, label %1689

; <label>:1661                                    ; preds = %1656
  %1662 = and i32 %1653, 64
  %1663 = icmp ne i32 %1662, 0
  %1664 = select i1 %1663, float %1220, float 0.000000e+00
  %1665 = fsub fast float %1440, %1649
  %1666 = fsub fast float %1441, %1650
  %1667 = fsub fast float %1442, %1651
  %1668 = fmul fast float %1659, %1665
  %1669 = fmul fast float %1659, %1666
  %1670 = fmul fast float %1659, %1667
  %1671 = fadd fast float %1668, %1649
  %1672 = fadd fast float %1669, %1650
  %1673 = fadd fast float %1670, %1651
  %1674 = fsub fast float %1426, %917
  %1675 = fmul fast float %1659, %1674
  %1676 = fadd fast float %1675, %917
  %1677 = fsub fast float %1568, %1646
  %1678 = fsub fast float %1569, %1647
  %1679 = fsub fast float %1570, %1648
  %1680 = fmul fast float %1664, %1677
  %1681 = fmul fast float %1664, %1678
  %1682 = fmul fast float %1664, %1679
  %1683 = fadd fast float %1680, %1646
  %1684 = fadd fast float %1681, %1647
  %1685 = fadd fast float %1682, %1648
  %1686 = fsub fast float %1636, %922
  %1687 = fmul fast float %1659, %1686
  %1688 = fadd fast float %1687, %922
  br label %1734

; <label>:1689                                    ; preds = %1656
  %1690 = icmp eq i32 %1654, 1
  br i1 %1690, label %1691, label %1704

; <label>:1691                                    ; preds = %1689
  %1692 = fadd fast float %1440, -1.000000e+00
  %1693 = fadd fast float %1441, -1.000000e+00
  %1694 = fadd fast float %1442, -1.000000e+00
  %1695 = fmul fast float %1659, %1692
  %1696 = fmul fast float %1659, %1693
  %1697 = fmul fast float %1659, %1694
  %1698 = fadd fast float %1695, 1.000000e+00
  %1699 = fadd fast float %1696, 1.000000e+00
  %1700 = fadd fast float %1697, 1.000000e+00
  %1701 = fmul fast float %1698, %1649
  %1702 = fmul fast float %1699, %1650
  %1703 = fmul fast float %1700, %1651
  br label %1734

; <label>:1704                                    ; preds = %1689
  %1705 = icmp eq i32 %1654, 2
  br i1 %1705, label %1706, label %1734

; <label>:1706                                    ; preds = %1704
  %1707 = call float @dx.op.unary.f32(i32 24, float %1440)  ; Sqrt(value)
  %1708 = call float @dx.op.unary.f32(i32 24, float %1441)  ; Sqrt(value)
  %1709 = call float @dx.op.unary.f32(i32 24, float %1442)  ; Sqrt(value)
  %1710 = fadd fast float %1707, -5.000000e-01
  %1711 = fadd fast float %1708, -5.000000e-01
  %1712 = fadd fast float %1709, -5.000000e-01
  %1713 = fmul fast float %1710, %1659
  %1714 = fmul fast float %1711, %1659
  %1715 = fmul fast float %1712, %1659
  %1716 = fadd fast float %1713, 5.000000e-01
  %1717 = fadd fast float %1714, 5.000000e-01
  %1718 = fadd fast float %1715, 5.000000e-01
  %1719 = fmul fast float %1716, 2.000000e+00
  %1720 = fsub fast float 1.000000e+00, %1719
  %1721 = fmul fast float %1720, %1649
  %1722 = fadd fast float %1721, %1719
  %1723 = fmul fast float %1722, %1649
  %1724 = fmul fast float %1717, 2.000000e+00
  %1725 = fsub fast float 1.000000e+00, %1724
  %1726 = fmul fast float %1725, %1650
  %1727 = fadd fast float %1726, %1724
  %1728 = fmul fast float %1727, %1650
  %1729 = fmul fast float %1718, 2.000000e+00
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fmul fast float %1730, %1651
  %1732 = fadd fast float %1731, %1729
  %1733 = fmul fast float %1732, %1651
  br label %1734

; <label>:1734                                    ; preds = %1706, %1704, %1691, %1661, %1645
  %1735 = phi float [ %1646, %1645 ], [ %1646, %1706 ], [ %1646, %1704 ], [ %1646, %1691 ], [ %1683, %1661 ]
  %1736 = phi float [ %1647, %1645 ], [ %1647, %1706 ], [ %1647, %1704 ], [ %1647, %1691 ], [ %1684, %1661 ]
  %1737 = phi float [ %1648, %1645 ], [ %1648, %1706 ], [ %1648, %1704 ], [ %1648, %1691 ], [ %1685, %1661 ]
  %1738 = phi float [ %1649, %1645 ], [ %1723, %1706 ], [ %1649, %1704 ], [ %1701, %1691 ], [ %1671, %1661 ]
  %1739 = phi float [ %1650, %1645 ], [ %1728, %1706 ], [ %1650, %1704 ], [ %1702, %1691 ], [ %1672, %1661 ]
  %1740 = phi float [ %1651, %1645 ], [ %1733, %1706 ], [ %1651, %1704 ], [ %1703, %1691 ], [ %1673, %1661 ]
  %1741 = phi float [ %917, %1645 ], [ %917, %1706 ], [ %917, %1704 ], [ %917, %1691 ], [ %1676, %1661 ]
  %1742 = phi float [ %922, %1645 ], [ %922, %1706 ], [ %922, %1704 ], [ %922, %1691 ], [ %1688, %1661 ]
  %1743 = and i32 %1653, 12
  %1744 = icmp eq i32 %1743, 12
  br i1 %1744, label %1851, label %1745

; <label>:1745                                    ; preds = %1734
  %1746 = and i32 %1653, 2097184
  %1747 = icmp eq i32 %1746, 2097184
  %1748 = select i1 %1747, float %1220, float 0.000000e+00
  %1749 = and i32 %1653, 4194336
  %1750 = icmp eq i32 %1749, 4194336
  %1751 = select i1 %1750, float %1220, float 0.000000e+00
  %1752 = and i32 %1653, 8388640
  %1753 = icmp eq i32 %1752, 8388640
  %1754 = select i1 %1753, float %1220, float 0.000000e+00
  %1755 = and i32 %1653, 2048
  %1756 = icmp ne i32 %1755, 0
  %1757 = select i1 %1756, float %1220, float 0.000000e+00
  %1758 = and i32 %1653, 8192
  %1759 = icmp ne i32 %1758, 0
  %1760 = select i1 %1759, float %1220, float 0.000000e+00
  %1761 = icmp eq i32 %1743, 0
  br i1 %1761, label %1762, label %1787

; <label>:1762                                    ; preds = %1745
  %1763 = fsub fast float %1521, %906
  %1764 = fsub fast float %1522, %907
  %1765 = fmul fast float %1748, %1763
  %1766 = fmul fast float %1748, %1764
  %1767 = fadd fast float %1765, %906
  %1768 = fadd fast float %1766, %907
  %1769 = fsub fast float %1523, %920
  %1770 = fmul fast float %1751, %1769
  %1771 = fadd fast float %1770, %920
  %1772 = fsub fast float %1520, %919
  %1773 = fmul fast float %1754, %1772
  %1774 = fadd fast float %1773, %919
  %1775 = fsub fast float %1623, %921
  %1776 = fmul fast float %1757, %1775
  %1777 = fadd fast float %1776, %921
  %1778 = fsub fast float %1620, %914
  %1779 = fsub fast float %1621, %915
  %1780 = fsub fast float %1622, %916
  %1781 = fmul fast float %1760, %1778
  %1782 = fmul fast float %1760, %1779
  %1783 = fmul fast float %1760, %1780
  %1784 = fadd fast float %1781, %914
  %1785 = fadd fast float %1782, %915
  %1786 = fadd fast float %1783, %916
  br label %1851

; <label>:1787                                    ; preds = %1745
  %1788 = icmp eq i32 %1743, 4
  br i1 %1788, label %1789, label %1829

; <label>:1789                                    ; preds = %1787
  %1790 = fmul fast float %1748, %1521
  %1791 = fmul fast float %1748, %1522
  %1792 = fadd fast float %1790, %906
  %1793 = fadd fast float %1791, %907
  %1794 = call float @dx.op.binary.f32(i32 36, float %920, float %1523)  ; FMin(a,b)
  %1795 = fsub fast float %1794, %920
  %1796 = fmul fast float %1795, %1751
  %1797 = fadd fast float %1796, %920
  %1798 = fadd fast float %1520, %919
  %1799 = fmul fast float %1798, 0x3FF337FAE0000000
  %1800 = fmul fast float %919, %919
  %1801 = fmul fast float %1520, %1520
  %1802 = fadd fast float %1801, %1800
  %1803 = fmul fast float %1802, 0x3FE5152B00000000
  %1804 = fmul fast float %919, 0xBFCC1F85E0000000
  %1805 = fmul fast float %1804, %1520
  %1806 = fadd fast float %1805, 0xBFE1363700000000
  %1807 = fadd fast float %1806, %1799
  %1808 = fsub fast float %1807, %1803
  %1809 = fmul fast float %1798, 0x3FBA6F0D00000000
  %1810 = fmul fast float %1802, 0x3FD0432880000000
  %1811 = fmul fast float %919, 0xBFEF110800000000
  %1812 = fmul fast float %1811, %1520
  %1813 = fadd fast float %1812, 1.000000e+00
  %1814 = fsub fast float %1813, %1809
  %1815 = fadd fast float %1814, %1810
  %1816 = fdiv fast float %1808, %1815
  %1817 = call float @dx.op.unary.f32(i32 7, float %1816)  ; Saturate(value)
  %1818 = fsub fast float %1817, %919
  %1819 = fmul fast float %1818, %1754
  %1820 = fadd fast float %1819, %919
  %1821 = fmul fast float %1757, %1623
  %1822 = fadd fast float %1821, %921
  %1823 = fmul fast float %1760, %1620
  %1824 = fmul fast float %1760, %1621
  %1825 = fmul fast float %1760, %1622
  %1826 = fadd fast float %1823, %914
  %1827 = fadd fast float %1824, %915
  %1828 = fadd fast float %1825, %916
  br label %1851

; <label>:1829                                    ; preds = %1787
  %1830 = icmp eq i32 %1743, 8
  br i1 %1830, label %1831, label %1851

; <label>:1831                                    ; preds = %1829
  %1832 = fmul fast float %1748, %1521
  %1833 = fmul fast float %1748, %1522
  %1834 = fadd fast float %1832, %906
  %1835 = fadd fast float %1833, %907
  %1836 = call float @dx.op.binary.f32(i32 36, float %920, float %1523)  ; FMin(a,b)
  %1837 = fsub fast float %1836, %920
  %1838 = fmul fast float %1837, %1751
  %1839 = fadd fast float %1838, %920
  %1840 = fsub fast float %1520, %919
  %1841 = fmul fast float %1754, %1840
  %1842 = fadd fast float %1841, %919
  %1843 = fmul fast float %1757, %1623
  %1844 = fadd fast float %1843, %921
  %1845 = fmul fast float %1760, %1620
  %1846 = fmul fast float %1760, %1621
  %1847 = fmul fast float %1760, %1622
  %1848 = fadd fast float %1845, %914
  %1849 = fadd fast float %1846, %915
  %1850 = fadd fast float %1847, %916
  br label %1851

; <label>:1851                                    ; preds = %1831, %1829, %1789, %1762, %1734, %1219, %923, %905
  %1852 = phi float [ %906, %1734 ], [ %906, %1219 ], [ %906, %905 ], [ %1834, %1831 ], [ %906, %1829 ], [ %1792, %1789 ], [ %1767, %1762 ], [ %906, %923 ]
  %1853 = phi float [ %907, %1734 ], [ %907, %1219 ], [ %907, %905 ], [ %1835, %1831 ], [ %907, %1829 ], [ %1793, %1789 ], [ %1768, %1762 ], [ %907, %923 ]
  %1854 = phi float [ %1735, %1734 ], [ %908, %1219 ], [ %908, %905 ], [ %1735, %1831 ], [ %1735, %1829 ], [ %1735, %1789 ], [ %1735, %1762 ], [ %908, %923 ]
  %1855 = phi float [ %1736, %1734 ], [ %909, %1219 ], [ %909, %905 ], [ %1736, %1831 ], [ %1736, %1829 ], [ %1736, %1789 ], [ %1736, %1762 ], [ %909, %923 ]
  %1856 = phi float [ %1737, %1734 ], [ %910, %1219 ], [ %910, %905 ], [ %1737, %1831 ], [ %1737, %1829 ], [ %1737, %1789 ], [ %1737, %1762 ], [ %910, %923 ]
  %1857 = phi float [ %1738, %1734 ], [ %911, %1219 ], [ %911, %905 ], [ %1738, %1831 ], [ %1738, %1829 ], [ %1738, %1789 ], [ %1738, %1762 ], [ %911, %923 ]
  %1858 = phi float [ %1739, %1734 ], [ %912, %1219 ], [ %912, %905 ], [ %1739, %1831 ], [ %1739, %1829 ], [ %1739, %1789 ], [ %1739, %1762 ], [ %912, %923 ]
  %1859 = phi float [ %1740, %1734 ], [ %913, %1219 ], [ %913, %905 ], [ %1740, %1831 ], [ %1740, %1829 ], [ %1740, %1789 ], [ %1740, %1762 ], [ %913, %923 ]
  %1860 = phi float [ %914, %1734 ], [ %914, %1219 ], [ %914, %905 ], [ %1848, %1831 ], [ %914, %1829 ], [ %1826, %1789 ], [ %1784, %1762 ], [ %914, %923 ]
  %1861 = phi float [ %915, %1734 ], [ %915, %1219 ], [ %915, %905 ], [ %1849, %1831 ], [ %915, %1829 ], [ %1827, %1789 ], [ %1785, %1762 ], [ %915, %923 ]
  %1862 = phi float [ %916, %1734 ], [ %916, %1219 ], [ %916, %905 ], [ %1850, %1831 ], [ %916, %1829 ], [ %1828, %1789 ], [ %1786, %1762 ], [ %916, %923 ]
  %1863 = phi float [ %1741, %1734 ], [ %917, %1219 ], [ %917, %905 ], [ %1741, %1831 ], [ %1741, %1829 ], [ %1741, %1789 ], [ %1741, %1762 ], [ %917, %923 ]
  %1864 = phi float [ %919, %1734 ], [ %919, %1219 ], [ %919, %905 ], [ %1842, %1831 ], [ %919, %1829 ], [ %1820, %1789 ], [ %1774, %1762 ], [ %919, %923 ]
  %1865 = phi float [ %920, %1734 ], [ %920, %1219 ], [ %920, %905 ], [ %1839, %1831 ], [ %920, %1829 ], [ %1797, %1789 ], [ %1771, %1762 ], [ %920, %923 ]
  %1866 = phi float [ %921, %1734 ], [ %921, %1219 ], [ %921, %905 ], [ %1844, %1831 ], [ %921, %1829 ], [ %1822, %1789 ], [ %1777, %1762 ], [ %921, %923 ]
  %1867 = phi float [ %1742, %1734 ], [ %922, %1219 ], [ %922, %905 ], [ %1742, %1831 ], [ %1742, %1829 ], [ %1742, %1789 ], [ %1742, %1762 ], [ %922, %923 ]
  br i1 %332, label %2796, label %1868

; <label>:1868                                    ; preds = %1851
  %1869 = icmp ult i32 %385, 3
  %1870 = add i32 %21, 56
  %1871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.i32 %1871, 0
  %1873 = add i32 %21, 60
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = or i32 %1875, %1872
  %1877 = icmp eq i32 %1876, 0
  br i1 %1877, label %2796, label %1878

; <label>:1878                                    ; preds = %1868
  %1879 = and i32 %1872, 262144
  %1880 = icmp ne i32 %1879, 0
  %1881 = select i1 %1880, float %24, float 1.000000e+00
  %1882 = select i1 %1880, float %25, float 0.000000e+00
  %1883 = select i1 %1880, float %26, float 0.000000e+00
  %1884 = select i1 %1880, float %27, float 1.000000e+00
  %1885 = select i1 %1880, float %28, float %49
  %1886 = select i1 %1880, float %29, float %50
  %1887 = add i32 %21, 316
  %1888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.i32 %1888, 0
  %1890 = lshr i32 %1889, 16
  %1891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1890)  ; LegacyF16ToF32(value)
  %1892 = fmul fast float %1891, 0x3F50624DE0000000
  %1893 = add i32 %21, 120
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = lshr i32 %1895, 16
  %1897 = and i32 %1896, 255
  %1898 = lshr i32 %1895, 24
  %1899 = add i32 %21, 324
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = and i32 %1901, 65535
  %1903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1902)  ; LegacyF16ToF32(value)
  %1904 = lshr i32 %1901, 16
  %1905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1904)  ; LegacyF16ToF32(value)
  %1906 = add i32 %21, 64
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = lshr i32 %1908, 22
  %1910 = shl nuw nsw i32 %1909, 5
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = shl i32 %1908, 4
  %1913 = and i32 %1912, 32752
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = lshr i32 %1908, 7
  %1916 = and i32 %1915, 32752
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 3
  %1920 = fmul fast float %1919, 1.000000e+03
  %1921 = fmul fast float %282, %1920
  %1922 = call float @dx.op.unary.f32(i32 22, float %1921)  ; Frc(value)
  %1923 = fadd fast float %1922, %272
  %1924 = fmul fast float %283, %1920
  %1925 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1926 = fadd fast float %1925, %274
  %1927 = fmul fast float %1892, %1920
  %1928 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1929 = fmul fast float %1928, 0x401921FB60000000
  %1930 = fadd fast float %1929, %1911
  %1931 = call float @dx.op.unary.f32(i32 13, float %1930)  ; Sin(value)
  %1932 = call float @dx.op.unary.f32(i32 12, float %1930)  ; Cos(value)
  %1933 = fsub fast float -0.000000e+00, %1931
  %1934 = fadd fast float %1885, -5.000000e-01
  %1935 = fadd fast float %1886, -5.000000e-01
  %1936 = fmul fast float %1903, %1934
  %1937 = fmul fast float %1905, %1935
  %1938 = fadd fast float %1936, 5.000000e-01
  %1939 = fadd fast float %1937, 5.000000e-01
  %1940 = fmul fast float %1914, %1938
  %1941 = fmul fast float %1917, %1939
  %1942 = fmul fast float %1932, %1940
  %1943 = call float @dx.op.tertiary.f32(i32 46, float %1933, float %1941, float %1942)  ; FMad(a,b,c)
  %1944 = fmul fast float %1931, %1940
  %1945 = call float @dx.op.tertiary.f32(i32 46, float %1932, float %1941, float %1944)  ; FMad(a,b,c)
  %1946 = fadd fast float %1923, %1943
  %1947 = fadd fast float %1926, %1945
  %1948 = icmp ugt i32 %1897, 1
  %1949 = icmp ugt i32 %1895, 33554431
  %1950 = or i1 %1949, %1948
  br i1 %1950, label %1951, label %1976

; <label>:1951                                    ; preds = %1878
  %1952 = add i32 %21, 260
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = lshr i32 %1954, 16
  %1956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1955)  ; LegacyF16ToF32(value)
  %1957 = fmul fast float %1919, %1956
  %1958 = call float @dx.op.unary.f32(i32 22, float %1957)  ; Frc(value)
  %1959 = mul nuw nsw i32 %1897, %1898
  %1960 = uitofp i32 %1959 to float
  %1961 = fmul fast float %1958, %1960
  %1962 = call float @dx.op.unary.f32(i32 27, float %1961)  ; Round_ni(value)
  %1963 = fptoui float %1962 to i32
  %1964 = urem i32 %1963, %1897
  %1965 = udiv i32 %1963, %1898
  %1966 = call float @dx.op.unary.f32(i32 22, float %1946)  ; Frc(value)
  %1967 = call float @dx.op.unary.f32(i32 22, float %1947)  ; Frc(value)
  %1968 = uitofp i32 %1964 to float
  %1969 = uitofp i32 %1965 to float
  %1970 = fadd fast float %1966, %1968
  %1971 = fadd fast float %1967, %1969
  %1972 = uitofp i32 %1897 to float
  %1973 = uitofp i32 %1898 to float
  %1974 = fdiv fast float %1970, %1972
  %1975 = fdiv fast float %1971, %1973
  br label %1976

; <label>:1976                                    ; preds = %1951, %1878
  %1977 = phi float [ %1974, %1951 ], [ %1946, %1878 ]
  %1978 = phi float [ %1975, %1951 ], [ %1947, %1878 ]
  %1979 = and i32 %1872, 16777216
  %1980 = icmp eq i32 %1979, 0
  br i1 %1980, label %2090, label %1981

; <label>:1981                                    ; preds = %1976
  %1982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1983 = extractvalue %dx.types.CBufRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.CBufRet.f32 %1982, 1
  %1985 = extractvalue %dx.types.CBufRet.f32 %1982, 2
  %1986 = fadd fast float %1983, %116
  %1987 = fadd fast float %1984, %117
  %1988 = fadd fast float %1985, %118
  %1989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1990 = extractvalue %dx.types.CBufRet.f32 %1989, 0
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = icmp eq i32 %22, 65535
  br i1 %1992, label %2087, label %1993

; <label>:1993                                    ; preds = %1981
  %1994 = lshr i32 %22, 1
  %1995 = shl i32 %1994, 2
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = and i32 %22, 1
  %1999 = icmp ne i32 %1998, 0
  %2000 = lshr i32 %1997, 16
  %2001 = and i32 %1997, 65535
  %2002 = select i1 %1999, i32 %2000, i32 %2001
  %2003 = icmp eq i32 %2002, 65535
  br i1 %2003, label %2083, label %2004

; <label>:2004                                    ; preds = %1993
  %2005 = mul nuw nsw i32 %2002, 40
  %2006 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.ResRet.f32 %2006, 1
  %2009 = extractvalue %dx.types.ResRet.f32 %2006, 2
  %2010 = add nuw nsw i32 %2005, 12
  %2011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.f32 %2011, 0
  %2013 = extractvalue %dx.types.ResRet.f32 %2011, 1
  %2014 = extractvalue %dx.types.ResRet.f32 %2011, 2
  %2015 = add nuw nsw i32 %2005, 24
  %2016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = extractvalue %dx.types.ResRet.f32 %2016, 1
  %2019 = extractvalue %dx.types.ResRet.f32 %2016, 2
  %2020 = add nuw nsw i32 %2005, 36
  %2021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = fsub fast float %1986, %2007
  %2024 = fsub fast float %1987, %2008
  %2025 = fsub fast float %1988, %2009
  %2026 = fmul fast float %2022, %2023
  %2027 = fmul fast float %2022, %2024
  %2028 = fmul fast float %2022, %2025
  %2029 = call float @dx.op.unary.f32(i32 27, float %2026)  ; Round_ni(value)
  %2030 = call float @dx.op.unary.f32(i32 27, float %2027)  ; Round_ni(value)
  %2031 = call float @dx.op.unary.f32(i32 27, float %2028)  ; Round_ni(value)
  %2032 = fadd fast float %2029, 5.000000e-01
  %2033 = fadd fast float %2030, 5.000000e-01
  %2034 = fadd fast float %2031, 5.000000e-01
  %2035 = fmul fast float %2032, %2012
  %2036 = fmul fast float %2033, %2013
  %2037 = fmul fast float %2034, %2014
  %2038 = shl i32 %22, 2
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = add i32 %2040, 0
  %2042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2043 = call float @dx.op.unary.f32(i32 22, float %2035)  ; Frc(value)
  %2044 = call float @dx.op.unary.f32(i32 22, float %2036)  ; Frc(value)
  %2045 = call float @dx.op.unary.f32(i32 22, float %2037)  ; Frc(value)
  %2046 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2042, %dx.types.Handle %18, float %2043, float %2044, float %2045, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2047 = extractvalue %dx.types.ResRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.ResRet.f32 %2046, 1
  %2049 = extractvalue %dx.types.ResRet.f32 %2046, 2
  %2050 = fmul fast float %2047, 1.023000e+03
  %2051 = fmul fast float %2048, 1.023000e+03
  %2052 = fmul fast float %2049, 1.023000e+03
  %2053 = fadd fast float %2050, 5.000000e-01
  %2054 = fadd fast float %2051, 5.000000e-01
  %2055 = fadd fast float %2052, 5.000000e-01
  %2056 = call float @dx.op.unary.f32(i32 27, float %2053)  ; Round_ni(value)
  %2057 = call float @dx.op.unary.f32(i32 27, float %2054)  ; Round_ni(value)
  %2058 = call float @dx.op.unary.f32(i32 27, float %2055)  ; Round_ni(value)
  %2059 = fsub fast float %2026, %2029
  %2060 = fsub fast float %2027, %2030
  %2061 = fsub fast float %2028, %2031
  %2062 = fmul fast float %2059, 7.500000e-01
  %2063 = fmul fast float %2060, 7.500000e-01
  %2064 = fmul fast float %2061, 7.500000e-01
  %2065 = fadd fast float %2029, 1.250000e-01
  %2066 = fadd fast float %2065, %2062
  %2067 = fadd fast float %2066, %2056
  %2068 = fadd fast float %2030, 1.250000e-01
  %2069 = fadd fast float %2068, %2063
  %2070 = fadd fast float %2069, %2057
  %2071 = fadd fast float %2031, 1.250000e-01
  %2072 = fadd fast float %2071, %2064
  %2073 = fadd fast float %2072, %2058
  %2074 = fmul fast float %2067, %2017
  %2075 = fmul fast float %2070, %2018
  %2076 = fmul fast float %2073, %2019
  %2077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2038, i32 undef)  ; BufferLoad(srv,index,wot)
  %2078 = extractvalue %dx.types.ResRet.i32 %2077, 0
  %2079 = add i32 %2078, 0
  %2080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2081 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2080, %dx.types.Handle %16, float %2074, float %2075, float %2076, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2082 = extractvalue %dx.types.ResRet.f32 %2081, 0
  br label %2083

; <label>:2083                                    ; preds = %2004, %1993
  %2084 = phi float [ %2082, %2004 ], [ -1.000000e+00, %1993 ]
  %2085 = fadd fast float %2084, %1991
  %2086 = call float @dx.op.unary.f32(i32 7, float %2085)  ; Saturate(value)
  br label %2087

; <label>:2087                                    ; preds = %2083, %1981
  %2088 = phi float [ %2086, %2083 ], [ %1991, %1981 ]
  %2089 = fmul fast float %2088, %381
  br label %2090

; <label>:2090                                    ; preds = %2087, %1976
  %2091 = phi float [ %2089, %2087 ], [ %381, %1976 ]
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = and i32 %2093, 256
  %2095 = icmp eq i32 %2094, 0
  br i1 %2095, label %2142, label %2096

; <label>:2096                                    ; preds = %2090
  %2097 = add i32 %21, 448
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2097, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = add i32 %2099, 0
  %2101 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2100, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2102 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2101, %dx.types.Handle %58, float %1977, float %1978, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2103 = extractvalue %dx.types.ResRet.f32 %2102, 0
  %2104 = add i32 %21, 132
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2104, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = shl i32 %2106, 4
  %2108 = and i32 %2107, 32752
  %2109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2108)  ; LegacyF16ToF32(value)
  %2110 = lshr i32 %2106, 7
  %2111 = and i32 %2110, 32752
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = fsub fast float 1.000000e+00, %2091
  %2114 = call float @dx.op.binary.f32(i32 35, float %2113, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2115 = bitcast float %2091 to i32
  %2116 = sitofp i32 %2115 to float
  %2117 = fadd fast float %2116, 0xC1CFBF8940000000
  %2118 = fmul fast float %2112, %2117
  %2119 = fadd fast float %2118, 0x41CFBF8940000000
  %2120 = fptosi float %2119 to i32
  %2121 = bitcast i32 %2120 to float
  %2122 = bitcast float %2114 to i32
  %2123 = sitofp i32 %2122 to float
  %2124 = fadd fast float %2123, 0xC1CFBF8940000000
  %2125 = fmul fast float %2124, %2112
  %2126 = fadd fast float %2125, 0x41CFBF8940000000
  %2127 = fptosi float %2126 to i32
  %2128 = bitcast i32 %2127 to float
  %2129 = fmul fast float %2121, %2109
  %2130 = fmul fast float %2128, %2109
  %2131 = fsub fast float %2114, %2129
  %2132 = fadd fast float %2130, %2114
  %2133 = call float @dx.op.unary.f32(i32 7, float %2131)  ; Saturate(value)
  %2134 = call float @dx.op.unary.f32(i32 7, float %2132)  ; Saturate(value)
  %2135 = fsub fast float %2103, %2133
  %2136 = fsub fast float %2134, %2133
  %2137 = bitcast float %2136 to i32
  %2138 = sub nsw i32 2129859010, %2137
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2139, %2135
  %2141 = call float @dx.op.unary.f32(i32 7, float %2140)  ; Saturate(value)
  br label %2142

; <label>:2142                                    ; preds = %2096, %2090
  %2143 = phi float [ %2141, %2096 ], [ %2091, %2090 ]
  %2144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2145 = extractvalue %dx.types.ResRet.i32 %2144, 0
  %2146 = and i32 %2145, 128
  %2147 = icmp eq i32 %2146, 0
  br i1 %2147, label %2164, label %2148

; <label>:2148                                    ; preds = %2142
  %2149 = add i32 %21, 432
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2149, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = add i32 %2151, 0
  %2153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2153, %dx.types.Handle %58, float %1977, float %1978, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = and i32 %2157, 524288
  %2159 = icmp ne i32 %2158, 0
  %2160 = fcmp fast ogt float %2155, 0x3FE0101020000000
  %2161 = select i1 %2160, float 1.000000e+00, float 0.000000e+00
  %2162 = select i1 %2159, float %2161, float %2155
  %2163 = fmul fast float %2162, %2143
  br label %2164

; <label>:2164                                    ; preds = %2148, %2142
  %2165 = phi float [ %2163, %2148 ], [ %2143, %2142 ]
  %2166 = fcmp fast ult float %2165, 0x3F70101020000000
  br i1 %2166, label %2796, label %2167

; <label>:2167                                    ; preds = %2164
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = and i32 %2169, 16
  %2171 = icmp eq i32 %2170, 0
  br i1 %2171, label %2370, label %2172

; <label>:2172                                    ; preds = %2167
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = add i32 %21, 384
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2175, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = add i32 %2177, 0
  %2179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2178, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2180 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2179, %dx.types.Handle %57, float %1977, float %1978, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2181 = extractvalue %dx.types.ResRet.f32 %2180, 0
  %2182 = extractvalue %dx.types.ResRet.f32 %2180, 1
  %2183 = extractvalue %dx.types.ResRet.f32 %2180, 2
  %2184 = extractvalue %dx.types.ResRet.f32 %2180, 3
  %2185 = and i32 %2174, 255
  %2186 = uitofp i32 %2185 to float
  %2187 = lshr i32 %2174, 8
  %2188 = and i32 %2187, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = fmul fast float %2184, %2186
  %2191 = fadd fast float %2190, %2189
  %2192 = fmul fast float %2191, 0x3F70101000000000
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = and i32 %2194, 512
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %2205, label %2197

; <label>:2197                                    ; preds = %2172
  %2198 = add i32 %21, 468
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2198, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = add i32 %2200, 0
  %2202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2202, %dx.types.Handle %58, float %1977, float %1978, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2204 = extractvalue %dx.types.ResRet.f32 %2203, 0
  br label %2205

; <label>:2205                                    ; preds = %2197, %2172
  %2206 = phi float [ %2204, %2197 ], [ 1.000000e+00, %2172 ]
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = and i32 %2208, 33554432
  %2210 = icmp eq i32 %2209, 0
  br i1 %2210, label %2317, label %2211

; <label>:2211                                    ; preds = %2205
  %2212 = add i32 %21, 256
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 65535
  %2216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2215)  ; LegacyF16ToF32(value)
  %2217 = lshr i32 %2214, 16
  %2218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2217)  ; LegacyF16ToF32(value)
  %2219 = add i32 %21, 260
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2219, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 65535
  %2223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2222)  ; LegacyF16ToF32(value)
  %2224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2225 = extractvalue %dx.types.ResRet.i32 %2224, 0
  %2226 = lshr i32 %2225, 24
  %2227 = uitofp i32 %2226 to float
  %2228 = fmul fast float %2227, 0x3F70101020000000
  %2229 = and i32 %2225, 255
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2230, 0x3F70101020000000
  %2232 = lshr i32 %2225, 8
  %2233 = and i32 %2232, 255
  %2234 = uitofp i32 %2233 to float
  %2235 = fmul fast float %2234, 0x3F70101020000000
  %2236 = lshr i32 %2225, 16
  %2237 = and i32 %2236, 255
  %2238 = uitofp i32 %2237 to float
  %2239 = fmul fast float %2238, 0x3F70101020000000
  %2240 = add i32 %21, 252
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = lshr i32 %2242, 24
  %2244 = uitofp i32 %2243 to float
  %2245 = fmul fast float %2244, 0x3F70101020000000
  %2246 = and i32 %2242, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 0x3F70101020000000
  %2249 = lshr i32 %2242, 8
  %2250 = and i32 %2249, 255
  %2251 = uitofp i32 %2250 to float
  %2252 = fmul fast float %2251, 0x3F70101020000000
  %2253 = lshr i32 %2242, 16
  %2254 = and i32 %2253, 255
  %2255 = uitofp i32 %2254 to float
  %2256 = fmul fast float %2255, 0x3F70101020000000
  %2257 = bitcast float %2181 to i32
  %2258 = ashr i32 %2257, 1
  %2259 = sub nsw i32 1597463174, %2258
  %2260 = bitcast i32 %2259 to float
  %2261 = fmul fast float %2181, 5.000000e-01
  %2262 = fmul fast float %2260, %2260
  %2263 = fmul fast float %2262, %2261
  %2264 = fsub fast float 1.500000e+00, %2263
  %2265 = fmul fast float %2260, %2181
  %2266 = fmul fast float %2265, %2264
  %2267 = bitcast float %2182 to i32
  %2268 = ashr i32 %2267, 1
  %2269 = sub nsw i32 1597463174, %2268
  %2270 = bitcast i32 %2269 to float
  %2271 = fmul fast float %2182, 5.000000e-01
  %2272 = fmul fast float %2270, %2270
  %2273 = fmul fast float %2272, %2271
  %2274 = fsub fast float 1.500000e+00, %2273
  %2275 = fmul fast float %2270, %2182
  %2276 = fmul fast float %2275, %2274
  %2277 = bitcast float %2183 to i32
  %2278 = ashr i32 %2277, 1
  %2279 = sub nsw i32 1597463174, %2278
  %2280 = bitcast i32 %2279 to float
  %2281 = fmul fast float %2183, 5.000000e-01
  %2282 = fmul fast float %2280, %2280
  %2283 = fmul fast float %2282, %2281
  %2284 = fsub fast float 1.500000e+00, %2283
  %2285 = fmul fast float %2280, %2183
  %2286 = fmul fast float %2285, %2284
  %2287 = fsub fast float %2266, %2248
  %2288 = fsub fast float %2276, %2252
  %2289 = fsub fast float %2286, %2256
  %2290 = fmul fast float %2287, %2216
  %2291 = fmul fast float %2288, %2218
  %2292 = fmul fast float %2289, %2223
  %2293 = fadd fast float %2290, %2231
  %2294 = fadd fast float %2291, %2235
  %2295 = fadd fast float %2292, %2239
  %2296 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  %2297 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2298 = call float @dx.op.unary.f32(i32 7, float %2295)  ; Saturate(value)
  %2299 = fmul fast float %2296, %2296
  %2300 = fmul fast float %2297, %2297
  %2301 = fmul fast float %2298, %2298
  %2302 = fsub fast float %2299, %2181
  %2303 = fsub fast float %2300, %2182
  %2304 = fsub fast float %2301, %2183
  %2305 = fmul fast float %2302, %2206
  %2306 = fmul fast float %2303, %2206
  %2307 = fmul fast float %2304, %2206
  %2308 = fadd fast float %2305, %2181
  %2309 = fadd fast float %2306, %2182
  %2310 = fadd fast float %2307, %2183
  %2311 = fadd fast float %2228, %2192
  %2312 = fsub fast float %2311, %2245
  %2313 = call float @dx.op.unary.f32(i32 7, float %2312)  ; Saturate(value)
  %2314 = fsub fast float %2313, %2192
  %2315 = fmul fast float %2314, %2206
  %2316 = fadd fast float %2315, %2192
  br label %2370

; <label>:2317                                    ; preds = %2205
  %2318 = and i32 %2208, 134217728
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2354, label %2320

; <label>:2320                                    ; preds = %2317
  %2321 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %2322 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %2323 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %2324 = fadd fast float %2321, -5.000000e-01
  %2325 = fadd fast float %2322, -5.000000e-01
  %2326 = fadd fast float %2323, -5.000000e-01
  %2327 = fmul fast float %2324, %2206
  %2328 = fmul fast float %2325, %2206
  %2329 = fmul fast float %2326, %2206
  %2330 = fadd fast float %2327, 5.000000e-01
  %2331 = fadd fast float %2328, 5.000000e-01
  %2332 = fadd fast float %2329, 5.000000e-01
  %2333 = call float @dx.op.unary.f32(i32 24, float %2181)  ; Sqrt(value)
  %2334 = call float @dx.op.unary.f32(i32 24, float %2182)  ; Sqrt(value)
  %2335 = call float @dx.op.unary.f32(i32 24, float %2183)  ; Sqrt(value)
  %2336 = fmul fast float %2330, 2.000000e+00
  %2337 = fsub fast float 1.000000e+00, %2336
  %2338 = fmul fast float %2337, %2333
  %2339 = fadd fast float %2338, %2336
  %2340 = fmul fast float %2339, %2333
  %2341 = fmul fast float %2331, 2.000000e+00
  %2342 = fsub fast float 1.000000e+00, %2341
  %2343 = fmul fast float %2342, %2334
  %2344 = fadd fast float %2343, %2341
  %2345 = fmul fast float %2344, %2334
  %2346 = fmul fast float %2332, 2.000000e+00
  %2347 = fsub fast float 1.000000e+00, %2346
  %2348 = fmul fast float %2347, %2335
  %2349 = fadd fast float %2348, %2346
  %2350 = fmul fast float %2349, %2335
  %2351 = fmul fast float %2340, %2340
  %2352 = fmul fast float %2345, %2345
  %2353 = fmul fast float %2350, %2350
  br label %2370

; <label>:2354                                    ; preds = %2317
  %2355 = fmul fast float %259, %259
  %2356 = fmul fast float %263, %263
  %2357 = fmul fast float %267, %267
  %2358 = fadd fast float %2355, -1.000000e+00
  %2359 = fadd fast float %2356, -1.000000e+00
  %2360 = fadd fast float %2357, -1.000000e+00
  %2361 = fmul fast float %2206, %2358
  %2362 = fmul fast float %2206, %2359
  %2363 = fmul fast float %2206, %2360
  %2364 = fadd fast float %2361, 1.000000e+00
  %2365 = fadd fast float %2362, 1.000000e+00
  %2366 = fadd fast float %2363, 1.000000e+00
  %2367 = fmul fast float %2364, %2181
  %2368 = fmul fast float %2365, %2182
  %2369 = fmul fast float %2366, %2183
  br label %2370

; <label>:2370                                    ; preds = %2354, %2320, %2211, %2167
  %2371 = phi float [ %2316, %2211 ], [ %2192, %2320 ], [ %2192, %2354 ], [ 0x3FA23C0BE0000000, %2167 ]
  %2372 = phi float [ %2308, %2211 ], [ %2351, %2320 ], [ %2367, %2354 ], [ 1.000000e+00, %2167 ]
  %2373 = phi float [ %2309, %2211 ], [ %2352, %2320 ], [ %2368, %2354 ], [ 1.000000e+00, %2167 ]
  %2374 = phi float [ %2310, %2211 ], [ %2353, %2320 ], [ %2369, %2354 ], [ 1.000000e+00, %2167 ]
  %2375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2376 = extractvalue %dx.types.CBufRet.i32 %2375, 1
  %2377 = and i32 %2376, 1
  %2378 = icmp ne i32 %2377, 0
  %2379 = add i32 %21, 356
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2379, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = and i32 %2381, 32
  %2383 = icmp ne i32 %2382, 0
  %2384 = and i1 %2378, %2383
  %2385 = select i1 %2384, float 1.000000e+00, float %2372
  %2386 = select i1 %2384, float 0x3FD3333340000000, float %2373
  %2387 = select i1 %2384, float 0x3FD3333340000000, float %2374
  %2388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2389 = extractvalue %dx.types.ResRet.i32 %2388, 0
  %2390 = and i32 %2389, 32
  %2391 = icmp eq i32 %2390, 0
  br i1 %2391, label %2464, label %2392

; <label>:2392                                    ; preds = %2370
  %2393 = add i32 %21, 124
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = add i32 %21, 400
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = add i32 %2398, 0
  %2400 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2399, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2401 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2400, %dx.types.Handle %57, float %1977, float %1978, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2402 = extractvalue %dx.types.ResRet.f32 %2401, 0
  %2403 = extractvalue %dx.types.ResRet.f32 %2401, 1
  %2404 = extractvalue %dx.types.ResRet.f32 %2401, 2
  %2405 = extractvalue %dx.types.ResRet.f32 %2401, 3
  %2406 = and i32 %2395, 255
  %2407 = uitofp i32 %2406 to float
  %2408 = lshr i32 %2395, 8
  %2409 = and i32 %2408, 255
  %2410 = uitofp i32 %2409 to float
  %2411 = lshr i32 %2395, 16
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = fmul fast float %2413, 0x3F70101000000000
  %2415 = fmul fast float %2402, %2407
  %2416 = fadd fast float %2415, %2410
  %2417 = fmul fast float %2416, 0x3F70101000000000
  %2418 = fadd fast float %2403, -5.000000e-01
  %2419 = fadd fast float %2405, -5.000000e-01
  %2420 = fmul fast float %2418, %2414
  %2421 = fmul fast float %2419, %2414
  %2422 = fadd fast float %2420, 5.000000e-01
  %2423 = fadd fast float %2421, 5.000000e-01
  %2424 = fmul fast float %2422, 2.000000e+00
  %2425 = fadd fast float %2424, -1.000000e+00
  %2426 = fmul fast float %2423, 2.000000e+00
  %2427 = fadd fast float %2426, -1.000000e+00
  %2428 = fadd fast float %2425, %2427
  %2429 = fmul fast float %2428, 5.000000e-01
  %2430 = fsub fast float %2425, %2427
  %2431 = fmul fast float %2430, 5.000000e-01
  %2432 = call float @dx.op.unary.f32(i32 6, float %2429)  ; FAbs(value)
  %2433 = fsub fast float 1.000000e+00, %2432
  %2434 = call float @dx.op.unary.f32(i32 6, float %2431)  ; FAbs(value)
  %2435 = fsub fast float %2433, %2434
  %2436 = call float @dx.op.dot3.f32(i32 55, float %2429, float %2431, float %2435, float %2429, float %2431, float %2435)  ; Dot3(ax,ay,az,bx,by,bz)
  %2437 = call float @dx.op.unary.f32(i32 25, float %2436)  ; Rsqrt(value)
  %2438 = fmul fast float %2429, %2437
  %2439 = fmul fast float %2431, %2437
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 67108864
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2460, label %2444

; <label>:2444                                    ; preds = %2392
  %2445 = add i32 %21, 312
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2445, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = and i32 %2447, 65535
  %2449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2448)  ; LegacyF16ToF32(value)
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 65535
  %2453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2452)  ; LegacyF16ToF32(value)
  %2454 = lshr i32 %2447, 16
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = fsub fast float %2417, %2455
  %2457 = fmul fast float %2456, %2449
  %2458 = fadd fast float %2457, %2453
  %2459 = call float @dx.op.unary.f32(i32 7, float %2458)  ; Saturate(value)
  br label %2460

; <label>:2460                                    ; preds = %2444, %2392
  %2461 = phi float [ %2459, %2444 ], [ %2417, %2392 ]
  %2462 = call float @dx.op.dot2.f32(i32 54, float %2438, float %2439, float %1881, float %1882)  ; Dot2(ax,ay,bx,by)
  %2463 = call float @dx.op.dot2.f32(i32 54, float %2438, float %2439, float %1883, float %1884)  ; Dot2(ax,ay,bx,by)
  br label %2464

; <label>:2464                                    ; preds = %2460, %2370
  %2465 = phi float [ %2461, %2460 ], [ 0x3FD6666660000000, %2370 ]
  %2466 = phi float [ %2462, %2460 ], [ 0.000000e+00, %2370 ]
  %2467 = phi float [ %2463, %2460 ], [ 0.000000e+00, %2370 ]
  %2468 = phi float [ %2404, %2460 ], [ 1.000000e+00, %2370 ]
  %2469 = add i32 %21, 192
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = lshr i32 %2471, 22
  %2473 = shl nuw nsw i32 %2472, 5
  %2474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2473)  ; LegacyF16ToF32(value)
  %2475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2476 = extractvalue %dx.types.ResRet.i32 %2475, 0
  %2477 = and i32 %2476, 64
  %2478 = icmp eq i32 %2477, 0
  br i1 %2478, label %2512, label %2479

; <label>:2479                                    ; preds = %2464
  %2480 = add i32 %21, 416
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2480, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = add i32 %2482, 0
  %2484 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2483, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = and i32 %2486, 131072
  %2488 = icmp eq i32 %2487, 0
  %2489 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2484, %dx.types.Handle %57, float %1977, float %1978, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2490 = extractvalue %dx.types.ResRet.f32 %2489, 0
  %2491 = extractvalue %dx.types.ResRet.f32 %2489, 1
  %2492 = extractvalue %dx.types.ResRet.f32 %2489, 2
  %2493 = fmul fast float %2490, %247
  %2494 = fmul fast float %2491, %250
  %2495 = fmul fast float %2492, %253
  br i1 %2488, label %2502, label %2496

; <label>:2496                                    ; preds = %2479
  %2497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2498 = extractvalue %dx.types.CBufRet.f32 %2497, 0
  %2499 = fmul fast float %2498, %2493
  %2500 = fmul fast float %2498, %2494
  %2501 = fmul fast float %2498, %2495
  br label %2502

; <label>:2502                                    ; preds = %2496, %2479
  %2503 = phi float [ %2499, %2496 ], [ %2493, %2479 ]
  %2504 = phi float [ %2500, %2496 ], [ %2494, %2479 ]
  %2505 = phi float [ %2501, %2496 ], [ %2495, %2479 ]
  %2506 = fmul fast float %2503, %2474
  %2507 = select i1 %157, float %2506, float %2503
  %2508 = call float @dx.op.dot3.f32(i32 55, float %2507, float %2504, float %2505, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2509 = select i1 %157, float 0.000000e+00, float %2503
  %2510 = select i1 %157, float %2508, float %2504
  %2511 = select i1 %157, float 0.000000e+00, float %2505
  br label %2512

; <label>:2512                                    ; preds = %2502, %2464
  %2513 = phi float [ %2509, %2502 ], [ 0.000000e+00, %2464 ]
  %2514 = phi float [ %2510, %2502 ], [ 0.000000e+00, %2464 ]
  %2515 = phi float [ %2511, %2502 ], [ 0.000000e+00, %2464 ]
  %2516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2517 = extractvalue %dx.types.ResRet.i32 %2516, 0
  %2518 = and i32 %2517, 10240
  %2519 = icmp eq i32 %2518, 0
  br i1 %2519, label %2564, label %2520

; <label>:2520                                    ; preds = %2512
  %2521 = add i32 %21, 484
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2521, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = add i32 %2523, 0
  %2525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2525, %dx.types.Handle %58, float %1977, float %1978, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2527 = extractvalue %dx.types.ResRet.f32 %2526, 1
  %2528 = extractvalue %dx.types.ResRet.f32 %2526, 3
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = and i32 %2530, 1048576
  %2532 = icmp ne i32 %2531, 0
  %2533 = and i32 %2530, 8192
  %2534 = icmp eq i32 %2533, 0
  br i1 %2534, label %2550, label %2535

; <label>:2535                                    ; preds = %2520
  %2536 = extractvalue %dx.types.ResRet.f32 %2526, 2
  %2537 = select i1 %2532, float %2536, float %2527
  %2538 = extractvalue %dx.types.ResRet.f32 %2526, 0
  %2539 = select i1 %2532, float %2538, float %2527
  %2540 = add i32 %21, 128
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2540, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = lshr i32 %2542, 16
  %2544 = and i32 %2543, 255
  %2545 = uitofp i32 %2544 to float
  %2546 = fmul fast float %2545, 0x3F80101020000000
  %2547 = fmul fast float %2546, %2539
  %2548 = fmul fast float %2546, %2527
  %2549 = fmul fast float %2546, %2537
  br label %2550

; <label>:2550                                    ; preds = %2535, %2520
  %2551 = phi float [ %2547, %2535 ], [ 0.000000e+00, %2520 ]
  %2552 = phi float [ %2548, %2535 ], [ 0.000000e+00, %2520 ]
  %2553 = phi float [ %2549, %2535 ], [ 0.000000e+00, %2520 ]
  %2554 = and i32 %2530, 2048
  %2555 = icmp eq i32 %2554, 0
  br i1 %2555, label %2564, label %2556

; <label>:2556                                    ; preds = %2550
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = shl i32 %2558, 4
  %2560 = and i32 %2559, 32752
  %2561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2560)  ; LegacyF16ToF32(value)
  %2562 = fmul fast float %2561, %2528
  %2563 = call float @dx.op.binary.f32(i32 35, float %2562, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2564

; <label>:2564                                    ; preds = %2556, %2550, %2512
  %2565 = phi float [ %2551, %2556 ], [ %2551, %2550 ], [ 0.000000e+00, %2512 ]
  %2566 = phi float [ %2552, %2556 ], [ %2552, %2550 ], [ 0.000000e+00, %2512 ]
  %2567 = phi float [ %2553, %2556 ], [ %2553, %2550 ], [ 0.000000e+00, %2512 ]
  %2568 = phi float [ %2563, %2556 ], [ 0x3F70101020000000, %2550 ], [ 0x3F70101020000000, %2512 ]
  %2569 = add i32 %21, 128
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 255
  %2573 = uitofp i32 %2572 to float
  %2574 = lshr i32 %2571, 8
  %2575 = and i32 %2574, 255
  %2576 = uitofp i32 %2575 to float
  %2577 = call float @dx.op.dot3.f32(i32 55, float %2385, float %2386, float %2387, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2578 = fmul fast float %2576, %2577
  %2579 = fadd fast float %2578, %2573
  %2580 = fmul fast float %2579, 0x3F70101020000000
  %2581 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  br i1 %1869, label %2582, label %2590

; <label>:2582                                    ; preds = %2564
  %2583 = fsub fast float 1.000000e+00, %2165
  %2584 = fmul fast float %2583, %1857
  %2585 = fmul fast float %2583, %1858
  %2586 = fmul fast float %2583, %1859
  %2587 = fmul fast float %2583, %1854
  %2588 = fmul fast float %2583, %1855
  %2589 = fmul fast float %2583, %1856
  br label %2590

; <label>:2590                                    ; preds = %2582, %2564
  %2591 = phi float [ %2587, %2582 ], [ %1854, %2564 ]
  %2592 = phi float [ %2588, %2582 ], [ %1855, %2564 ]
  %2593 = phi float [ %2589, %2582 ], [ %1856, %2564 ]
  %2594 = phi float [ %2584, %2582 ], [ %1857, %2564 ]
  %2595 = phi float [ %2585, %2582 ], [ %1858, %2564 ]
  %2596 = phi float [ %2586, %2582 ], [ %1859, %2564 ]
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = and i32 %2598, 3
  %2600 = icmp eq i32 %2599, 3
  br i1 %2600, label %2679, label %2601

; <label>:2601                                    ; preds = %2590
  %2602 = and i32 %2598, 16
  %2603 = icmp ne i32 %2602, 0
  %2604 = select i1 %2603, float %2165, float 0.000000e+00
  %2605 = icmp eq i32 %2599, 0
  br i1 %2605, label %2606, label %2634

; <label>:2606                                    ; preds = %2601
  %2607 = and i32 %2598, 64
  %2608 = icmp ne i32 %2607, 0
  %2609 = select i1 %2608, float %2165, float 0.000000e+00
  %2610 = fsub fast float %2385, %2594
  %2611 = fsub fast float %2386, %2595
  %2612 = fsub fast float %2387, %2596
  %2613 = fmul fast float %2604, %2610
  %2614 = fmul fast float %2604, %2611
  %2615 = fmul fast float %2604, %2612
  %2616 = fadd fast float %2613, %2594
  %2617 = fadd fast float %2614, %2595
  %2618 = fadd fast float %2615, %2596
  %2619 = fsub fast float %2371, %1863
  %2620 = fmul fast float %2604, %2619
  %2621 = fadd fast float %2620, %1863
  %2622 = fsub fast float %2513, %2591
  %2623 = fsub fast float %2514, %2592
  %2624 = fsub fast float %2515, %2593
  %2625 = fmul fast float %2609, %2622
  %2626 = fmul fast float %2609, %2623
  %2627 = fmul fast float %2609, %2624
  %2628 = fadd fast float %2625, %2591
  %2629 = fadd fast float %2626, %2592
  %2630 = fadd fast float %2627, %2593
  %2631 = fsub fast float %2581, %1867
  %2632 = fmul fast float %2604, %2631
  %2633 = fadd fast float %2632, %1867
  br label %2679

; <label>:2634                                    ; preds = %2601
  %2635 = icmp eq i32 %2599, 1
  br i1 %2635, label %2636, label %2649

; <label>:2636                                    ; preds = %2634
  %2637 = fadd fast float %2385, -1.000000e+00
  %2638 = fadd fast float %2386, -1.000000e+00
  %2639 = fadd fast float %2387, -1.000000e+00
  %2640 = fmul fast float %2604, %2637
  %2641 = fmul fast float %2604, %2638
  %2642 = fmul fast float %2604, %2639
  %2643 = fadd fast float %2640, 1.000000e+00
  %2644 = fadd fast float %2641, 1.000000e+00
  %2645 = fadd fast float %2642, 1.000000e+00
  %2646 = fmul fast float %2643, %2594
  %2647 = fmul fast float %2644, %2595
  %2648 = fmul fast float %2645, %2596
  br label %2679

; <label>:2649                                    ; preds = %2634
  %2650 = icmp eq i32 %2599, 2
  br i1 %2650, label %2651, label %2679

; <label>:2651                                    ; preds = %2649
  %2652 = call float @dx.op.unary.f32(i32 24, float %2385)  ; Sqrt(value)
  %2653 = call float @dx.op.unary.f32(i32 24, float %2386)  ; Sqrt(value)
  %2654 = call float @dx.op.unary.f32(i32 24, float %2387)  ; Sqrt(value)
  %2655 = fadd fast float %2652, -5.000000e-01
  %2656 = fadd fast float %2653, -5.000000e-01
  %2657 = fadd fast float %2654, -5.000000e-01
  %2658 = fmul fast float %2655, %2604
  %2659 = fmul fast float %2656, %2604
  %2660 = fmul fast float %2657, %2604
  %2661 = fadd fast float %2658, 5.000000e-01
  %2662 = fadd fast float %2659, 5.000000e-01
  %2663 = fadd fast float %2660, 5.000000e-01
  %2664 = fmul fast float %2661, 2.000000e+00
  %2665 = fsub fast float 1.000000e+00, %2664
  %2666 = fmul fast float %2665, %2594
  %2667 = fadd fast float %2666, %2664
  %2668 = fmul fast float %2667, %2594
  %2669 = fmul fast float %2662, 2.000000e+00
  %2670 = fsub fast float 1.000000e+00, %2669
  %2671 = fmul fast float %2670, %2595
  %2672 = fadd fast float %2671, %2669
  %2673 = fmul fast float %2672, %2595
  %2674 = fmul fast float %2663, 2.000000e+00
  %2675 = fsub fast float 1.000000e+00, %2674
  %2676 = fmul fast float %2675, %2596
  %2677 = fadd fast float %2676, %2674
  %2678 = fmul fast float %2677, %2596
  br label %2679

; <label>:2679                                    ; preds = %2651, %2649, %2636, %2606, %2590
  %2680 = phi float [ %2591, %2590 ], [ %2591, %2651 ], [ %2591, %2649 ], [ %2591, %2636 ], [ %2628, %2606 ]
  %2681 = phi float [ %2592, %2590 ], [ %2592, %2651 ], [ %2592, %2649 ], [ %2592, %2636 ], [ %2629, %2606 ]
  %2682 = phi float [ %2593, %2590 ], [ %2593, %2651 ], [ %2593, %2649 ], [ %2593, %2636 ], [ %2630, %2606 ]
  %2683 = phi float [ %2594, %2590 ], [ %2668, %2651 ], [ %2594, %2649 ], [ %2646, %2636 ], [ %2616, %2606 ]
  %2684 = phi float [ %2595, %2590 ], [ %2673, %2651 ], [ %2595, %2649 ], [ %2647, %2636 ], [ %2617, %2606 ]
  %2685 = phi float [ %2596, %2590 ], [ %2678, %2651 ], [ %2596, %2649 ], [ %2648, %2636 ], [ %2618, %2606 ]
  %2686 = phi float [ %1863, %2590 ], [ %1863, %2651 ], [ %1863, %2649 ], [ %1863, %2636 ], [ %2621, %2606 ]
  %2687 = phi float [ %1867, %2590 ], [ %1867, %2651 ], [ %1867, %2649 ], [ %1867, %2636 ], [ %2633, %2606 ]
  %2688 = and i32 %2598, 12
  %2689 = icmp eq i32 %2688, 12
  br i1 %2689, label %2796, label %2690

; <label>:2690                                    ; preds = %2679
  %2691 = and i32 %2598, 2097184
  %2692 = icmp eq i32 %2691, 2097184
  %2693 = select i1 %2692, float %2165, float 0.000000e+00
  %2694 = and i32 %2598, 4194336
  %2695 = icmp eq i32 %2694, 4194336
  %2696 = select i1 %2695, float %2165, float 0.000000e+00
  %2697 = and i32 %2598, 8388640
  %2698 = icmp eq i32 %2697, 8388640
  %2699 = select i1 %2698, float %2165, float 0.000000e+00
  %2700 = and i32 %2598, 2048
  %2701 = icmp ne i32 %2700, 0
  %2702 = select i1 %2701, float %2165, float 0.000000e+00
  %2703 = and i32 %2598, 8192
  %2704 = icmp ne i32 %2703, 0
  %2705 = select i1 %2704, float %2165, float 0.000000e+00
  %2706 = icmp eq i32 %2688, 0
  br i1 %2706, label %2707, label %2732

; <label>:2707                                    ; preds = %2690
  %2708 = fsub fast float %2466, %1852
  %2709 = fsub fast float %2467, %1853
  %2710 = fmul fast float %2693, %2708
  %2711 = fmul fast float %2693, %2709
  %2712 = fadd fast float %2710, %1852
  %2713 = fadd fast float %2711, %1853
  %2714 = fsub fast float %2468, %1865
  %2715 = fmul fast float %2696, %2714
  %2716 = fadd fast float %2715, %1865
  %2717 = fsub fast float %2465, %1864
  %2718 = fmul fast float %2699, %2717
  %2719 = fadd fast float %2718, %1864
  %2720 = fsub fast float %2568, %1866
  %2721 = fmul fast float %2702, %2720
  %2722 = fadd fast float %2721, %1866
  %2723 = fsub fast float %2565, %1860
  %2724 = fsub fast float %2566, %1861
  %2725 = fsub fast float %2567, %1862
  %2726 = fmul fast float %2705, %2723
  %2727 = fmul fast float %2705, %2724
  %2728 = fmul fast float %2705, %2725
  %2729 = fadd fast float %2726, %1860
  %2730 = fadd fast float %2727, %1861
  %2731 = fadd fast float %2728, %1862
  br label %2796

; <label>:2732                                    ; preds = %2690
  %2733 = icmp eq i32 %2688, 4
  br i1 %2733, label %2734, label %2774

; <label>:2734                                    ; preds = %2732
  %2735 = fmul fast float %2693, %2466
  %2736 = fmul fast float %2693, %2467
  %2737 = fadd fast float %2735, %1852
  %2738 = fadd fast float %2736, %1853
  %2739 = call float @dx.op.binary.f32(i32 36, float %1865, float %2468)  ; FMin(a,b)
  %2740 = fsub fast float %2739, %1865
  %2741 = fmul fast float %2740, %2696
  %2742 = fadd fast float %2741, %1865
  %2743 = fadd fast float %2465, %1864
  %2744 = fmul fast float %2743, 0x3FF337FAE0000000
  %2745 = fmul fast float %1864, %1864
  %2746 = fmul fast float %2465, %2465
  %2747 = fadd fast float %2746, %2745
  %2748 = fmul fast float %2747, 0x3FE5152B00000000
  %2749 = fmul fast float %1864, 0xBFCC1F85E0000000
  %2750 = fmul fast float %2749, %2465
  %2751 = fadd fast float %2750, 0xBFE1363700000000
  %2752 = fadd fast float %2751, %2744
  %2753 = fsub fast float %2752, %2748
  %2754 = fmul fast float %2743, 0x3FBA6F0D00000000
  %2755 = fmul fast float %2747, 0x3FD0432880000000
  %2756 = fmul fast float %1864, 0xBFEF110800000000
  %2757 = fmul fast float %2756, %2465
  %2758 = fadd fast float %2757, 1.000000e+00
  %2759 = fsub fast float %2758, %2754
  %2760 = fadd fast float %2759, %2755
  %2761 = fdiv fast float %2753, %2760
  %2762 = call float @dx.op.unary.f32(i32 7, float %2761)  ; Saturate(value)
  %2763 = fsub fast float %2762, %1864
  %2764 = fmul fast float %2763, %2699
  %2765 = fadd fast float %2764, %1864
  %2766 = fmul fast float %2702, %2568
  %2767 = fadd fast float %2766, %1866
  %2768 = fmul fast float %2705, %2565
  %2769 = fmul fast float %2705, %2566
  %2770 = fmul fast float %2705, %2567
  %2771 = fadd fast float %2768, %1860
  %2772 = fadd fast float %2769, %1861
  %2773 = fadd fast float %2770, %1862
  br label %2796

; <label>:2774                                    ; preds = %2732
  %2775 = icmp eq i32 %2688, 8
  br i1 %2775, label %2776, label %2796

; <label>:2776                                    ; preds = %2774
  %2777 = fmul fast float %2693, %2466
  %2778 = fmul fast float %2693, %2467
  %2779 = fadd fast float %2777, %1852
  %2780 = fadd fast float %2778, %1853
  %2781 = call float @dx.op.binary.f32(i32 36, float %1865, float %2468)  ; FMin(a,b)
  %2782 = fsub fast float %2781, %1865
  %2783 = fmul fast float %2782, %2696
  %2784 = fadd fast float %2783, %1865
  %2785 = fsub fast float %2465, %1864
  %2786 = fmul fast float %2699, %2785
  %2787 = fadd fast float %2786, %1864
  %2788 = fmul fast float %2702, %2568
  %2789 = fadd fast float %2788, %1866
  %2790 = fmul fast float %2705, %2565
  %2791 = fmul fast float %2705, %2566
  %2792 = fmul fast float %2705, %2567
  %2793 = fadd fast float %2790, %1860
  %2794 = fadd fast float %2791, %1861
  %2795 = fadd fast float %2792, %1862
  br label %2796

; <label>:2796                                    ; preds = %2776, %2774, %2734, %2707, %2679, %2164, %1868, %1851
  %2797 = phi float [ %1852, %2679 ], [ %1852, %2164 ], [ %1852, %1851 ], [ %2779, %2776 ], [ %1852, %2774 ], [ %2737, %2734 ], [ %2712, %2707 ], [ %1852, %1868 ]
  %2798 = phi float [ %1853, %2679 ], [ %1853, %2164 ], [ %1853, %1851 ], [ %2780, %2776 ], [ %1853, %2774 ], [ %2738, %2734 ], [ %2713, %2707 ], [ %1853, %1868 ]
  %2799 = phi float [ %2680, %2679 ], [ %1854, %2164 ], [ %1854, %1851 ], [ %2680, %2776 ], [ %2680, %2774 ], [ %2680, %2734 ], [ %2680, %2707 ], [ %1854, %1868 ]
  %2800 = phi float [ %2681, %2679 ], [ %1855, %2164 ], [ %1855, %1851 ], [ %2681, %2776 ], [ %2681, %2774 ], [ %2681, %2734 ], [ %2681, %2707 ], [ %1855, %1868 ]
  %2801 = phi float [ %2682, %2679 ], [ %1856, %2164 ], [ %1856, %1851 ], [ %2682, %2776 ], [ %2682, %2774 ], [ %2682, %2734 ], [ %2682, %2707 ], [ %1856, %1868 ]
  %2802 = phi float [ %2683, %2679 ], [ %1857, %2164 ], [ %1857, %1851 ], [ %2683, %2776 ], [ %2683, %2774 ], [ %2683, %2734 ], [ %2683, %2707 ], [ %1857, %1868 ]
  %2803 = phi float [ %2684, %2679 ], [ %1858, %2164 ], [ %1858, %1851 ], [ %2684, %2776 ], [ %2684, %2774 ], [ %2684, %2734 ], [ %2684, %2707 ], [ %1858, %1868 ]
  %2804 = phi float [ %2685, %2679 ], [ %1859, %2164 ], [ %1859, %1851 ], [ %2685, %2776 ], [ %2685, %2774 ], [ %2685, %2734 ], [ %2685, %2707 ], [ %1859, %1868 ]
  %2805 = phi float [ %1860, %2679 ], [ %1860, %2164 ], [ %1860, %1851 ], [ %2793, %2776 ], [ %1860, %2774 ], [ %2771, %2734 ], [ %2729, %2707 ], [ %1860, %1868 ]
  %2806 = phi float [ %1861, %2679 ], [ %1861, %2164 ], [ %1861, %1851 ], [ %2794, %2776 ], [ %1861, %2774 ], [ %2772, %2734 ], [ %2730, %2707 ], [ %1861, %1868 ]
  %2807 = phi float [ %1862, %2679 ], [ %1862, %2164 ], [ %1862, %1851 ], [ %2795, %2776 ], [ %1862, %2774 ], [ %2773, %2734 ], [ %2731, %2707 ], [ %1862, %1868 ]
  %2808 = phi float [ %2686, %2679 ], [ %1863, %2164 ], [ %1863, %1851 ], [ %2686, %2776 ], [ %2686, %2774 ], [ %2686, %2734 ], [ %2686, %2707 ], [ %1863, %1868 ]
  %2809 = phi float [ %1864, %2679 ], [ %1864, %2164 ], [ %1864, %1851 ], [ %2787, %2776 ], [ %1864, %2774 ], [ %2765, %2734 ], [ %2719, %2707 ], [ %1864, %1868 ]
  %2810 = phi float [ %1865, %2679 ], [ %1865, %2164 ], [ %1865, %1851 ], [ %2784, %2776 ], [ %1865, %2774 ], [ %2742, %2734 ], [ %2716, %2707 ], [ %1865, %1868 ]
  %2811 = phi float [ %1866, %2679 ], [ %1866, %2164 ], [ %1866, %1851 ], [ %2789, %2776 ], [ %1866, %2774 ], [ %2767, %2734 ], [ %2722, %2707 ], [ %1866, %1868 ]
  %2812 = phi float [ %2687, %2679 ], [ %1867, %2164 ], [ %1867, %1851 ], [ %2687, %2776 ], [ %2687, %2774 ], [ %2687, %2734 ], [ %2687, %2707 ], [ %1867, %1868 ]
  br i1 %334, label %3741, label %2813

; <label>:2813                                    ; preds = %2796
  %2814 = icmp ult i32 %385, 4
  %2815 = add i32 %21, 72
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = add i32 %21, 76
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = or i32 %2820, %2817
  %2822 = icmp eq i32 %2821, 0
  br i1 %2822, label %3741, label %2823

; <label>:2823                                    ; preds = %2813
  %2824 = and i32 %2817, 262144
  %2825 = icmp ne i32 %2824, 0
  %2826 = select i1 %2825, float %24, float 1.000000e+00
  %2827 = select i1 %2825, float %25, float 0.000000e+00
  %2828 = select i1 %2825, float %26, float 0.000000e+00
  %2829 = select i1 %2825, float %27, float 1.000000e+00
  %2830 = select i1 %2825, float %28, float %49
  %2831 = select i1 %2825, float %29, float %50
  %2832 = add i32 %21, 332
  %2833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.i32 %2833, 0
  %2835 = lshr i32 %2834, 16
  %2836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2835)  ; LegacyF16ToF32(value)
  %2837 = fmul fast float %2836, 0x3F50624DE0000000
  %2838 = add i32 %21, 136
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = lshr i32 %2840, 16
  %2842 = and i32 %2841, 255
  %2843 = lshr i32 %2840, 24
  %2844 = add i32 %21, 340
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = and i32 %2846, 65535
  %2848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2847)  ; LegacyF16ToF32(value)
  %2849 = lshr i32 %2846, 16
  %2850 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2849)  ; LegacyF16ToF32(value)
  %2851 = add i32 %21, 80
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = lshr i32 %2853, 22
  %2855 = shl nuw nsw i32 %2854, 5
  %2856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2855)  ; LegacyF16ToF32(value)
  %2857 = shl i32 %2853, 4
  %2858 = and i32 %2857, 32752
  %2859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2858)  ; LegacyF16ToF32(value)
  %2860 = lshr i32 %2853, 7
  %2861 = and i32 %2860, 32752
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2864 = extractvalue %dx.types.CBufRet.f32 %2863, 3
  %2865 = fmul fast float %2864, 1.000000e+03
  %2866 = fmul fast float %324, %2865
  %2867 = call float @dx.op.unary.f32(i32 22, float %2866)  ; Frc(value)
  %2868 = fadd fast float %2867, %314
  %2869 = fmul fast float %325, %2865
  %2870 = call float @dx.op.unary.f32(i32 22, float %2869)  ; Frc(value)
  %2871 = fadd fast float %2870, %316
  %2872 = fmul fast float %2837, %2865
  %2873 = call float @dx.op.unary.f32(i32 22, float %2872)  ; Frc(value)
  %2874 = fmul fast float %2873, 0x401921FB60000000
  %2875 = fadd fast float %2874, %2856
  %2876 = call float @dx.op.unary.f32(i32 13, float %2875)  ; Sin(value)
  %2877 = call float @dx.op.unary.f32(i32 12, float %2875)  ; Cos(value)
  %2878 = fsub fast float -0.000000e+00, %2876
  %2879 = fadd fast float %2830, -5.000000e-01
  %2880 = fadd fast float %2831, -5.000000e-01
  %2881 = fmul fast float %2848, %2879
  %2882 = fmul fast float %2850, %2880
  %2883 = fadd fast float %2881, 5.000000e-01
  %2884 = fadd fast float %2882, 5.000000e-01
  %2885 = fmul fast float %2859, %2883
  %2886 = fmul fast float %2862, %2884
  %2887 = fmul fast float %2877, %2885
  %2888 = call float @dx.op.tertiary.f32(i32 46, float %2878, float %2886, float %2887)  ; FMad(a,b,c)
  %2889 = fmul fast float %2876, %2885
  %2890 = call float @dx.op.tertiary.f32(i32 46, float %2877, float %2886, float %2889)  ; FMad(a,b,c)
  %2891 = fadd fast float %2868, %2888
  %2892 = fadd fast float %2871, %2890
  %2893 = icmp ugt i32 %2842, 1
  %2894 = icmp ugt i32 %2840, 33554431
  %2895 = or i1 %2894, %2893
  br i1 %2895, label %2896, label %2921

; <label>:2896                                    ; preds = %2823
  %2897 = add i32 %21, 276
  %2898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2899 = extractvalue %dx.types.ResRet.i32 %2898, 0
  %2900 = lshr i32 %2899, 16
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = fmul fast float %2864, %2901
  %2903 = call float @dx.op.unary.f32(i32 22, float %2902)  ; Frc(value)
  %2904 = mul nuw nsw i32 %2842, %2843
  %2905 = uitofp i32 %2904 to float
  %2906 = fmul fast float %2903, %2905
  %2907 = call float @dx.op.unary.f32(i32 27, float %2906)  ; Round_ni(value)
  %2908 = fptoui float %2907 to i32
  %2909 = urem i32 %2908, %2842
  %2910 = udiv i32 %2908, %2843
  %2911 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2912 = call float @dx.op.unary.f32(i32 22, float %2892)  ; Frc(value)
  %2913 = uitofp i32 %2909 to float
  %2914 = uitofp i32 %2910 to float
  %2915 = fadd fast float %2911, %2913
  %2916 = fadd fast float %2912, %2914
  %2917 = uitofp i32 %2842 to float
  %2918 = uitofp i32 %2843 to float
  %2919 = fdiv fast float %2915, %2917
  %2920 = fdiv fast float %2916, %2918
  br label %2921

; <label>:2921                                    ; preds = %2896, %2823
  %2922 = phi float [ %2919, %2896 ], [ %2891, %2823 ]
  %2923 = phi float [ %2920, %2896 ], [ %2892, %2823 ]
  %2924 = and i32 %2817, 16777216
  %2925 = icmp eq i32 %2924, 0
  br i1 %2925, label %3035, label %2926

; <label>:2926                                    ; preds = %2921
  %2927 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2928 = extractvalue %dx.types.CBufRet.f32 %2927, 0
  %2929 = extractvalue %dx.types.CBufRet.f32 %2927, 1
  %2930 = extractvalue %dx.types.CBufRet.f32 %2927, 2
  %2931 = fadd fast float %2928, %116
  %2932 = fadd fast float %2929, %117
  %2933 = fadd fast float %2930, %118
  %2934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2935 = extractvalue %dx.types.CBufRet.f32 %2934, 0
  %2936 = call float @dx.op.unary.f32(i32 7, float %2935)  ; Saturate(value)
  %2937 = icmp eq i32 %22, 65535
  br i1 %2937, label %3032, label %2938

; <label>:2938                                    ; preds = %2926
  %2939 = lshr i32 %22, 1
  %2940 = shl i32 %2939, 2
  %2941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2940, i32 undef)  ; BufferLoad(srv,index,wot)
  %2942 = extractvalue %dx.types.ResRet.i32 %2941, 0
  %2943 = and i32 %22, 1
  %2944 = icmp ne i32 %2943, 0
  %2945 = lshr i32 %2942, 16
  %2946 = and i32 %2942, 65535
  %2947 = select i1 %2944, i32 %2945, i32 %2946
  %2948 = icmp eq i32 %2947, 65535
  br i1 %2948, label %3028, label %2949

; <label>:2949                                    ; preds = %2938
  %2950 = mul nuw nsw i32 %2947, 40
  %2951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.f32 %2951, 0
  %2953 = extractvalue %dx.types.ResRet.f32 %2951, 1
  %2954 = extractvalue %dx.types.ResRet.f32 %2951, 2
  %2955 = add nuw nsw i32 %2950, 12
  %2956 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.f32 %2956, 0
  %2958 = extractvalue %dx.types.ResRet.f32 %2956, 1
  %2959 = extractvalue %dx.types.ResRet.f32 %2956, 2
  %2960 = add nuw nsw i32 %2950, 24
  %2961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.f32 %2961, 0
  %2963 = extractvalue %dx.types.ResRet.f32 %2961, 1
  %2964 = extractvalue %dx.types.ResRet.f32 %2961, 2
  %2965 = add nuw nsw i32 %2950, 36
  %2966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 0
  %2968 = fsub fast float %2931, %2952
  %2969 = fsub fast float %2932, %2953
  %2970 = fsub fast float %2933, %2954
  %2971 = fmul fast float %2967, %2968
  %2972 = fmul fast float %2967, %2969
  %2973 = fmul fast float %2967, %2970
  %2974 = call float @dx.op.unary.f32(i32 27, float %2971)  ; Round_ni(value)
  %2975 = call float @dx.op.unary.f32(i32 27, float %2972)  ; Round_ni(value)
  %2976 = call float @dx.op.unary.f32(i32 27, float %2973)  ; Round_ni(value)
  %2977 = fadd fast float %2974, 5.000000e-01
  %2978 = fadd fast float %2975, 5.000000e-01
  %2979 = fadd fast float %2976, 5.000000e-01
  %2980 = fmul fast float %2977, %2957
  %2981 = fmul fast float %2978, %2958
  %2982 = fmul fast float %2979, %2959
  %2983 = shl i32 %22, 2
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = add i32 %2985, 0
  %2987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2988 = call float @dx.op.unary.f32(i32 22, float %2980)  ; Frc(value)
  %2989 = call float @dx.op.unary.f32(i32 22, float %2981)  ; Frc(value)
  %2990 = call float @dx.op.unary.f32(i32 22, float %2982)  ; Frc(value)
  %2991 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2987, %dx.types.Handle %18, float %2988, float %2989, float %2990, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2992 = extractvalue %dx.types.ResRet.f32 %2991, 0
  %2993 = extractvalue %dx.types.ResRet.f32 %2991, 1
  %2994 = extractvalue %dx.types.ResRet.f32 %2991, 2
  %2995 = fmul fast float %2992, 1.023000e+03
  %2996 = fmul fast float %2993, 1.023000e+03
  %2997 = fmul fast float %2994, 1.023000e+03
  %2998 = fadd fast float %2995, 5.000000e-01
  %2999 = fadd fast float %2996, 5.000000e-01
  %3000 = fadd fast float %2997, 5.000000e-01
  %3001 = call float @dx.op.unary.f32(i32 27, float %2998)  ; Round_ni(value)
  %3002 = call float @dx.op.unary.f32(i32 27, float %2999)  ; Round_ni(value)
  %3003 = call float @dx.op.unary.f32(i32 27, float %3000)  ; Round_ni(value)
  %3004 = fsub fast float %2971, %2974
  %3005 = fsub fast float %2972, %2975
  %3006 = fsub fast float %2973, %2976
  %3007 = fmul fast float %3004, 7.500000e-01
  %3008 = fmul fast float %3005, 7.500000e-01
  %3009 = fmul fast float %3006, 7.500000e-01
  %3010 = fadd fast float %2974, 1.250000e-01
  %3011 = fadd fast float %3010, %3007
  %3012 = fadd fast float %3011, %3001
  %3013 = fadd fast float %2975, 1.250000e-01
  %3014 = fadd fast float %3013, %3008
  %3015 = fadd fast float %3014, %3002
  %3016 = fadd fast float %2976, 1.250000e-01
  %3017 = fadd fast float %3016, %3009
  %3018 = fadd fast float %3017, %3003
  %3019 = fmul fast float %3012, %2962
  %3020 = fmul fast float %3015, %2963
  %3021 = fmul fast float %3018, %2964
  %3022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %3023 = extractvalue %dx.types.ResRet.i32 %3022, 0
  %3024 = add i32 %3023, 0
  %3025 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3024, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3026 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3025, %dx.types.Handle %16, float %3019, float %3020, float %3021, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3027 = extractvalue %dx.types.ResRet.f32 %3026, 0
  br label %3028

; <label>:3028                                    ; preds = %2949, %2938
  %3029 = phi float [ %3027, %2949 ], [ -1.000000e+00, %2938 ]
  %3030 = fadd fast float %3029, %2936
  %3031 = call float @dx.op.unary.f32(i32 7, float %3030)  ; Saturate(value)
  br label %3032

; <label>:3032                                    ; preds = %3028, %2926
  %3033 = phi float [ %3031, %3028 ], [ %2936, %2926 ]
  %3034 = fmul fast float %3033, %380
  br label %3035

; <label>:3035                                    ; preds = %3032, %2921
  %3036 = phi float [ %3034, %3032 ], [ %380, %2921 ]
  %3037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3038 = extractvalue %dx.types.ResRet.i32 %3037, 0
  %3039 = and i32 %3038, 256
  %3040 = icmp eq i32 %3039, 0
  br i1 %3040, label %3087, label %3041

; <label>:3041                                    ; preds = %3035
  %3042 = add i32 %21, 452
  %3043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3042, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.i32 %3043, 0
  %3045 = add i32 %3044, 0
  %3046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3047 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3046, %dx.types.Handle %58, float %2922, float %2923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3048 = extractvalue %dx.types.ResRet.f32 %3047, 0
  %3049 = add i32 %21, 148
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3049, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = shl i32 %3051, 4
  %3053 = and i32 %3052, 32752
  %3054 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3053)  ; LegacyF16ToF32(value)
  %3055 = lshr i32 %3051, 7
  %3056 = and i32 %3055, 32752
  %3057 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3056)  ; LegacyF16ToF32(value)
  %3058 = fsub fast float 1.000000e+00, %3036
  %3059 = call float @dx.op.binary.f32(i32 35, float %3058, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3060 = bitcast float %3036 to i32
  %3061 = sitofp i32 %3060 to float
  %3062 = fadd fast float %3061, 0xC1CFBF8940000000
  %3063 = fmul fast float %3057, %3062
  %3064 = fadd fast float %3063, 0x41CFBF8940000000
  %3065 = fptosi float %3064 to i32
  %3066 = bitcast i32 %3065 to float
  %3067 = bitcast float %3059 to i32
  %3068 = sitofp i32 %3067 to float
  %3069 = fadd fast float %3068, 0xC1CFBF8940000000
  %3070 = fmul fast float %3069, %3057
  %3071 = fadd fast float %3070, 0x41CFBF8940000000
  %3072 = fptosi float %3071 to i32
  %3073 = bitcast i32 %3072 to float
  %3074 = fmul fast float %3066, %3054
  %3075 = fmul fast float %3073, %3054
  %3076 = fsub fast float %3059, %3074
  %3077 = fadd fast float %3075, %3059
  %3078 = call float @dx.op.unary.f32(i32 7, float %3076)  ; Saturate(value)
  %3079 = call float @dx.op.unary.f32(i32 7, float %3077)  ; Saturate(value)
  %3080 = fsub fast float %3048, %3078
  %3081 = fsub fast float %3079, %3078
  %3082 = bitcast float %3081 to i32
  %3083 = sub nsw i32 2129859010, %3082
  %3084 = bitcast i32 %3083 to float
  %3085 = fmul fast float %3084, %3080
  %3086 = call float @dx.op.unary.f32(i32 7, float %3085)  ; Saturate(value)
  br label %3087

; <label>:3087                                    ; preds = %3041, %3035
  %3088 = phi float [ %3086, %3041 ], [ %3036, %3035 ]
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 128
  %3092 = icmp eq i32 %3091, 0
  br i1 %3092, label %3109, label %3093

; <label>:3093                                    ; preds = %3087
  %3094 = add i32 %21, 436
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3094, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = add i32 %3096, 0
  %3098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3097, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3099 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3098, %dx.types.Handle %58, float %2922, float %2923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3100 = extractvalue %dx.types.ResRet.f32 %3099, 0
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 524288
  %3104 = icmp ne i32 %3103, 0
  %3105 = fcmp fast ogt float %3100, 0x3FE0101020000000
  %3106 = select i1 %3105, float 1.000000e+00, float 0.000000e+00
  %3107 = select i1 %3104, float %3106, float %3100
  %3108 = fmul fast float %3107, %3088
  br label %3109

; <label>:3109                                    ; preds = %3093, %3087
  %3110 = phi float [ %3108, %3093 ], [ %3088, %3087 ]
  %3111 = fcmp fast ult float %3110, 0x3F70101020000000
  br i1 %3111, label %3741, label %3112

; <label>:3112                                    ; preds = %3109
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 16
  %3116 = icmp eq i32 %3115, 0
  br i1 %3116, label %3315, label %3117

; <label>:3117                                    ; preds = %3112
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = add i32 %21, 388
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3120, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = add i32 %3122, 0
  %3124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3124, %dx.types.Handle %57, float %2922, float %2923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3126 = extractvalue %dx.types.ResRet.f32 %3125, 0
  %3127 = extractvalue %dx.types.ResRet.f32 %3125, 1
  %3128 = extractvalue %dx.types.ResRet.f32 %3125, 2
  %3129 = extractvalue %dx.types.ResRet.f32 %3125, 3
  %3130 = and i32 %3119, 255
  %3131 = uitofp i32 %3130 to float
  %3132 = lshr i32 %3119, 8
  %3133 = and i32 %3132, 255
  %3134 = uitofp i32 %3133 to float
  %3135 = fmul fast float %3129, %3131
  %3136 = fadd fast float %3135, %3134
  %3137 = fmul fast float %3136, 0x3F70101000000000
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 512
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3150, label %3142

; <label>:3142                                    ; preds = %3117
  %3143 = add i32 %21, 472
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = add i32 %3145, 0
  %3147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3147, %dx.types.Handle %58, float %2922, float %2923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3149 = extractvalue %dx.types.ResRet.f32 %3148, 0
  br label %3150

; <label>:3150                                    ; preds = %3142, %3117
  %3151 = phi float [ %3149, %3142 ], [ 1.000000e+00, %3117 ]
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 33554432
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3262, label %3156

; <label>:3156                                    ; preds = %3150
  %3157 = add i32 %21, 272
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 65535
  %3161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3160)  ; LegacyF16ToF32(value)
  %3162 = lshr i32 %3159, 16
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = add i32 %21, 276
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3164, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 65535
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %3170 = extractvalue %dx.types.ResRet.i32 %3169, 0
  %3171 = lshr i32 %3170, 24
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3172, 0x3F70101020000000
  %3174 = and i32 %3170, 255
  %3175 = uitofp i32 %3174 to float
  %3176 = fmul fast float %3175, 0x3F70101020000000
  %3177 = lshr i32 %3170, 8
  %3178 = and i32 %3177, 255
  %3179 = uitofp i32 %3178 to float
  %3180 = fmul fast float %3179, 0x3F70101020000000
  %3181 = lshr i32 %3170, 16
  %3182 = and i32 %3181, 255
  %3183 = uitofp i32 %3182 to float
  %3184 = fmul fast float %3183, 0x3F70101020000000
  %3185 = add i32 %21, 268
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = lshr i32 %3187, 24
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = and i32 %3187, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101020000000
  %3194 = lshr i32 %3187, 8
  %3195 = and i32 %3194, 255
  %3196 = uitofp i32 %3195 to float
  %3197 = fmul fast float %3196, 0x3F70101020000000
  %3198 = lshr i32 %3187, 16
  %3199 = and i32 %3198, 255
  %3200 = uitofp i32 %3199 to float
  %3201 = fmul fast float %3200, 0x3F70101020000000
  %3202 = bitcast float %3126 to i32
  %3203 = ashr i32 %3202, 1
  %3204 = sub nsw i32 1597463174, %3203
  %3205 = bitcast i32 %3204 to float
  %3206 = fmul fast float %3126, 5.000000e-01
  %3207 = fmul fast float %3205, %3205
  %3208 = fmul fast float %3207, %3206
  %3209 = fsub fast float 1.500000e+00, %3208
  %3210 = fmul fast float %3205, %3126
  %3211 = fmul fast float %3210, %3209
  %3212 = bitcast float %3127 to i32
  %3213 = ashr i32 %3212, 1
  %3214 = sub nsw i32 1597463174, %3213
  %3215 = bitcast i32 %3214 to float
  %3216 = fmul fast float %3127, 5.000000e-01
  %3217 = fmul fast float %3215, %3215
  %3218 = fmul fast float %3217, %3216
  %3219 = fsub fast float 1.500000e+00, %3218
  %3220 = fmul fast float %3215, %3127
  %3221 = fmul fast float %3220, %3219
  %3222 = bitcast float %3128 to i32
  %3223 = ashr i32 %3222, 1
  %3224 = sub nsw i32 1597463174, %3223
  %3225 = bitcast i32 %3224 to float
  %3226 = fmul fast float %3128, 5.000000e-01
  %3227 = fmul fast float %3225, %3225
  %3228 = fmul fast float %3227, %3226
  %3229 = fsub fast float 1.500000e+00, %3228
  %3230 = fmul fast float %3225, %3128
  %3231 = fmul fast float %3230, %3229
  %3232 = fsub fast float %3211, %3193
  %3233 = fsub fast float %3221, %3197
  %3234 = fsub fast float %3231, %3201
  %3235 = fmul fast float %3232, %3161
  %3236 = fmul fast float %3233, %3163
  %3237 = fmul fast float %3234, %3168
  %3238 = fadd fast float %3235, %3176
  %3239 = fadd fast float %3236, %3180
  %3240 = fadd fast float %3237, %3184
  %3241 = call float @dx.op.unary.f32(i32 7, float %3238)  ; Saturate(value)
  %3242 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  %3243 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3244 = fmul fast float %3241, %3241
  %3245 = fmul fast float %3242, %3242
  %3246 = fmul fast float %3243, %3243
  %3247 = fsub fast float %3244, %3126
  %3248 = fsub fast float %3245, %3127
  %3249 = fsub fast float %3246, %3128
  %3250 = fmul fast float %3247, %3151
  %3251 = fmul fast float %3248, %3151
  %3252 = fmul fast float %3249, %3151
  %3253 = fadd fast float %3250, %3126
  %3254 = fadd fast float %3251, %3127
  %3255 = fadd fast float %3252, %3128
  %3256 = fadd fast float %3173, %3137
  %3257 = fsub fast float %3256, %3190
  %3258 = call float @dx.op.unary.f32(i32 7, float %3257)  ; Saturate(value)
  %3259 = fsub fast float %3258, %3137
  %3260 = fmul fast float %3259, %3151
  %3261 = fadd fast float %3260, %3137
  br label %3315

; <label>:3262                                    ; preds = %3150
  %3263 = and i32 %3153, 134217728
  %3264 = icmp eq i32 %3263, 0
  br i1 %3264, label %3299, label %3265

; <label>:3265                                    ; preds = %3262
  %3266 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %3267 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %3268 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %3269 = fadd fast float %3266, -5.000000e-01
  %3270 = fadd fast float %3267, -5.000000e-01
  %3271 = fadd fast float %3268, -5.000000e-01
  %3272 = fmul fast float %3269, %3151
  %3273 = fmul fast float %3270, %3151
  %3274 = fmul fast float %3271, %3151
  %3275 = fadd fast float %3272, 5.000000e-01
  %3276 = fadd fast float %3273, 5.000000e-01
  %3277 = fadd fast float %3274, 5.000000e-01
  %3278 = call float @dx.op.unary.f32(i32 24, float %3126)  ; Sqrt(value)
  %3279 = call float @dx.op.unary.f32(i32 24, float %3127)  ; Sqrt(value)
  %3280 = call float @dx.op.unary.f32(i32 24, float %3128)  ; Sqrt(value)
  %3281 = fmul fast float %3275, 2.000000e+00
  %3282 = fsub fast float 1.000000e+00, %3281
  %3283 = fmul fast float %3282, %3278
  %3284 = fadd fast float %3283, %3281
  %3285 = fmul fast float %3284, %3278
  %3286 = fmul fast float %3276, 2.000000e+00
  %3287 = fsub fast float 1.000000e+00, %3286
  %3288 = fmul fast float %3287, %3279
  %3289 = fadd fast float %3288, %3286
  %3290 = fmul fast float %3289, %3279
  %3291 = fmul fast float %3277, 2.000000e+00
  %3292 = fsub fast float 1.000000e+00, %3291
  %3293 = fmul fast float %3292, %3280
  %3294 = fadd fast float %3293, %3291
  %3295 = fmul fast float %3294, %3280
  %3296 = fmul fast float %3285, %3285
  %3297 = fmul fast float %3290, %3290
  %3298 = fmul fast float %3295, %3295
  br label %3315

; <label>:3299                                    ; preds = %3262
  %3300 = fmul fast float %301, %301
  %3301 = fmul fast float %305, %305
  %3302 = fmul fast float %309, %309
  %3303 = fadd fast float %3300, -1.000000e+00
  %3304 = fadd fast float %3301, -1.000000e+00
  %3305 = fadd fast float %3302, -1.000000e+00
  %3306 = fmul fast float %3151, %3303
  %3307 = fmul fast float %3151, %3304
  %3308 = fmul fast float %3151, %3305
  %3309 = fadd fast float %3306, 1.000000e+00
  %3310 = fadd fast float %3307, 1.000000e+00
  %3311 = fadd fast float %3308, 1.000000e+00
  %3312 = fmul fast float %3309, %3126
  %3313 = fmul fast float %3310, %3127
  %3314 = fmul fast float %3311, %3128
  br label %3315

; <label>:3315                                    ; preds = %3299, %3265, %3156, %3112
  %3316 = phi float [ %3261, %3156 ], [ %3137, %3265 ], [ %3137, %3299 ], [ 0x3FA23C0BE0000000, %3112 ]
  %3317 = phi float [ %3253, %3156 ], [ %3296, %3265 ], [ %3312, %3299 ], [ 1.000000e+00, %3112 ]
  %3318 = phi float [ %3254, %3156 ], [ %3297, %3265 ], [ %3313, %3299 ], [ 1.000000e+00, %3112 ]
  %3319 = phi float [ %3255, %3156 ], [ %3298, %3265 ], [ %3314, %3299 ], [ 1.000000e+00, %3112 ]
  %3320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3321 = extractvalue %dx.types.CBufRet.i32 %3320, 1
  %3322 = and i32 %3321, 1
  %3323 = icmp ne i32 %3322, 0
  %3324 = add i32 %21, 356
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = and i32 %3326, 32
  %3328 = icmp ne i32 %3327, 0
  %3329 = and i1 %3323, %3328
  %3330 = select i1 %3329, float 1.000000e+00, float %3317
  %3331 = select i1 %3329, float 0x3FD3333340000000, float %3318
  %3332 = select i1 %3329, float 0x3FD3333340000000, float %3319
  %3333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3334 = extractvalue %dx.types.ResRet.i32 %3333, 0
  %3335 = and i32 %3334, 32
  %3336 = icmp eq i32 %3335, 0
  br i1 %3336, label %3409, label %3337

; <label>:3337                                    ; preds = %3315
  %3338 = add i32 %21, 140
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = add i32 %21, 404
  %3342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3341, i32 undef)  ; BufferLoad(srv,index,wot)
  %3343 = extractvalue %dx.types.ResRet.i32 %3342, 0
  %3344 = add i32 %3343, 0
  %3345 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3344, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3346 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3345, %dx.types.Handle %57, float %2922, float %2923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3347 = extractvalue %dx.types.ResRet.f32 %3346, 0
  %3348 = extractvalue %dx.types.ResRet.f32 %3346, 1
  %3349 = extractvalue %dx.types.ResRet.f32 %3346, 2
  %3350 = extractvalue %dx.types.ResRet.f32 %3346, 3
  %3351 = and i32 %3340, 255
  %3352 = uitofp i32 %3351 to float
  %3353 = lshr i32 %3340, 8
  %3354 = and i32 %3353, 255
  %3355 = uitofp i32 %3354 to float
  %3356 = lshr i32 %3340, 16
  %3357 = and i32 %3356, 255
  %3358 = uitofp i32 %3357 to float
  %3359 = fmul fast float %3358, 0x3F70101000000000
  %3360 = fmul fast float %3347, %3352
  %3361 = fadd fast float %3360, %3355
  %3362 = fmul fast float %3361, 0x3F70101000000000
  %3363 = fadd fast float %3348, -5.000000e-01
  %3364 = fadd fast float %3350, -5.000000e-01
  %3365 = fmul fast float %3363, %3359
  %3366 = fmul fast float %3364, %3359
  %3367 = fadd fast float %3365, 5.000000e-01
  %3368 = fadd fast float %3366, 5.000000e-01
  %3369 = fmul fast float %3367, 2.000000e+00
  %3370 = fadd fast float %3369, -1.000000e+00
  %3371 = fmul fast float %3368, 2.000000e+00
  %3372 = fadd fast float %3371, -1.000000e+00
  %3373 = fadd fast float %3370, %3372
  %3374 = fmul fast float %3373, 5.000000e-01
  %3375 = fsub fast float %3370, %3372
  %3376 = fmul fast float %3375, 5.000000e-01
  %3377 = call float @dx.op.unary.f32(i32 6, float %3374)  ; FAbs(value)
  %3378 = fsub fast float 1.000000e+00, %3377
  %3379 = call float @dx.op.unary.f32(i32 6, float %3376)  ; FAbs(value)
  %3380 = fsub fast float %3378, %3379
  %3381 = call float @dx.op.dot3.f32(i32 55, float %3374, float %3376, float %3380, float %3374, float %3376, float %3380)  ; Dot3(ax,ay,az,bx,by,bz)
  %3382 = call float @dx.op.unary.f32(i32 25, float %3381)  ; Rsqrt(value)
  %3383 = fmul fast float %3374, %3382
  %3384 = fmul fast float %3376, %3382
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = and i32 %3386, 67108864
  %3388 = icmp eq i32 %3387, 0
  br i1 %3388, label %3405, label %3389

; <label>:3389                                    ; preds = %3337
  %3390 = add i32 %21, 328
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3390, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, 65535
  %3394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3393)  ; LegacyF16ToF32(value)
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 65535
  %3398 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3397)  ; LegacyF16ToF32(value)
  %3399 = lshr i32 %3392, 16
  %3400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3399)  ; LegacyF16ToF32(value)
  %3401 = fsub fast float %3362, %3400
  %3402 = fmul fast float %3401, %3394
  %3403 = fadd fast float %3402, %3398
  %3404 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  br label %3405

; <label>:3405                                    ; preds = %3389, %3337
  %3406 = phi float [ %3404, %3389 ], [ %3362, %3337 ]
  %3407 = call float @dx.op.dot2.f32(i32 54, float %3383, float %3384, float %2826, float %2827)  ; Dot2(ax,ay,bx,by)
  %3408 = call float @dx.op.dot2.f32(i32 54, float %3383, float %3384, float %2828, float %2829)  ; Dot2(ax,ay,bx,by)
  br label %3409

; <label>:3409                                    ; preds = %3405, %3315
  %3410 = phi float [ %3406, %3405 ], [ 0x3FD6666660000000, %3315 ]
  %3411 = phi float [ %3407, %3405 ], [ 0.000000e+00, %3315 ]
  %3412 = phi float [ %3408, %3405 ], [ 0.000000e+00, %3315 ]
  %3413 = phi float [ %3349, %3405 ], [ 1.000000e+00, %3315 ]
  %3414 = add i32 %21, 208
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = lshr i32 %3416, 22
  %3418 = shl nuw nsw i32 %3417, 5
  %3419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3418)  ; LegacyF16ToF32(value)
  %3420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3421 = extractvalue %dx.types.ResRet.i32 %3420, 0
  %3422 = and i32 %3421, 64
  %3423 = icmp eq i32 %3422, 0
  br i1 %3423, label %3457, label %3424

; <label>:3424                                    ; preds = %3409
  %3425 = add i32 %21, 420
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3425, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = add i32 %3427, 0
  %3429 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3428, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = and i32 %3431, 131072
  %3433 = icmp eq i32 %3432, 0
  %3434 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3429, %dx.types.Handle %57, float %2922, float %2923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3435 = extractvalue %dx.types.ResRet.f32 %3434, 0
  %3436 = extractvalue %dx.types.ResRet.f32 %3434, 1
  %3437 = extractvalue %dx.types.ResRet.f32 %3434, 2
  %3438 = fmul fast float %3435, %289
  %3439 = fmul fast float %3436, %292
  %3440 = fmul fast float %3437, %295
  br i1 %3433, label %3447, label %3441

; <label>:3441                                    ; preds = %3424
  %3442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3443 = extractvalue %dx.types.CBufRet.f32 %3442, 0
  %3444 = fmul fast float %3443, %3438
  %3445 = fmul fast float %3443, %3439
  %3446 = fmul fast float %3443, %3440
  br label %3447

; <label>:3447                                    ; preds = %3441, %3424
  %3448 = phi float [ %3444, %3441 ], [ %3438, %3424 ]
  %3449 = phi float [ %3445, %3441 ], [ %3439, %3424 ]
  %3450 = phi float [ %3446, %3441 ], [ %3440, %3424 ]
  %3451 = fmul fast float %3448, %3419
  %3452 = select i1 %157, float %3451, float %3448
  %3453 = call float @dx.op.dot3.f32(i32 55, float %3452, float %3449, float %3450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3454 = select i1 %157, float 0.000000e+00, float %3448
  %3455 = select i1 %157, float %3453, float %3449
  %3456 = select i1 %157, float 0.000000e+00, float %3450
  br label %3457

; <label>:3457                                    ; preds = %3447, %3409
  %3458 = phi float [ %3454, %3447 ], [ 0.000000e+00, %3409 ]
  %3459 = phi float [ %3455, %3447 ], [ 0.000000e+00, %3409 ]
  %3460 = phi float [ %3456, %3447 ], [ 0.000000e+00, %3409 ]
  %3461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3462 = extractvalue %dx.types.ResRet.i32 %3461, 0
  %3463 = and i32 %3462, 10240
  %3464 = icmp eq i32 %3463, 0
  br i1 %3464, label %3509, label %3465

; <label>:3465                                    ; preds = %3457
  %3466 = add i32 %21, 488
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3466, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = add i32 %3468, 0
  %3470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3471 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3470, %dx.types.Handle %58, float %2922, float %2923, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3472 = extractvalue %dx.types.ResRet.f32 %3471, 1
  %3473 = extractvalue %dx.types.ResRet.f32 %3471, 3
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = and i32 %3475, 1048576
  %3477 = icmp ne i32 %3476, 0
  %3478 = and i32 %3475, 8192
  %3479 = icmp eq i32 %3478, 0
  br i1 %3479, label %3495, label %3480

; <label>:3480                                    ; preds = %3465
  %3481 = extractvalue %dx.types.ResRet.f32 %3471, 2
  %3482 = select i1 %3477, float %3481, float %3472
  %3483 = extractvalue %dx.types.ResRet.f32 %3471, 0
  %3484 = select i1 %3477, float %3483, float %3472
  %3485 = add i32 %21, 144
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3485, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = lshr i32 %3487, 16
  %3489 = and i32 %3488, 255
  %3490 = uitofp i32 %3489 to float
  %3491 = fmul fast float %3490, 0x3F80101020000000
  %3492 = fmul fast float %3491, %3484
  %3493 = fmul fast float %3491, %3472
  %3494 = fmul fast float %3491, %3482
  br label %3495

; <label>:3495                                    ; preds = %3480, %3465
  %3496 = phi float [ %3492, %3480 ], [ 0.000000e+00, %3465 ]
  %3497 = phi float [ %3493, %3480 ], [ 0.000000e+00, %3465 ]
  %3498 = phi float [ %3494, %3480 ], [ 0.000000e+00, %3465 ]
  %3499 = and i32 %3475, 2048
  %3500 = icmp eq i32 %3499, 0
  br i1 %3500, label %3509, label %3501

; <label>:3501                                    ; preds = %3495
  %3502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3503 = extractvalue %dx.types.ResRet.i32 %3502, 0
  %3504 = shl i32 %3503, 4
  %3505 = and i32 %3504, 32752
  %3506 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3505)  ; LegacyF16ToF32(value)
  %3507 = fmul fast float %3506, %3473
  %3508 = call float @dx.op.binary.f32(i32 35, float %3507, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3509

; <label>:3509                                    ; preds = %3501, %3495, %3457
  %3510 = phi float [ %3496, %3501 ], [ %3496, %3495 ], [ 0.000000e+00, %3457 ]
  %3511 = phi float [ %3497, %3501 ], [ %3497, %3495 ], [ 0.000000e+00, %3457 ]
  %3512 = phi float [ %3498, %3501 ], [ %3498, %3495 ], [ 0.000000e+00, %3457 ]
  %3513 = phi float [ %3508, %3501 ], [ 0x3F70101020000000, %3495 ], [ 0x3F70101020000000, %3457 ]
  %3514 = add i32 %21, 144
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = and i32 %3516, 255
  %3518 = uitofp i32 %3517 to float
  %3519 = lshr i32 %3516, 8
  %3520 = and i32 %3519, 255
  %3521 = uitofp i32 %3520 to float
  %3522 = call float @dx.op.dot3.f32(i32 55, float %3330, float %3331, float %3332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3523 = fmul fast float %3521, %3522
  %3524 = fadd fast float %3523, %3518
  %3525 = fmul fast float %3524, 0x3F70101020000000
  %3526 = call float @dx.op.unary.f32(i32 7, float %3525)  ; Saturate(value)
  br i1 %2814, label %3527, label %3535

; <label>:3527                                    ; preds = %3509
  %3528 = fsub fast float 1.000000e+00, %3110
  %3529 = fmul fast float %3528, %2802
  %3530 = fmul fast float %3528, %2803
  %3531 = fmul fast float %3528, %2804
  %3532 = fmul fast float %3528, %2799
  %3533 = fmul fast float %3528, %2800
  %3534 = fmul fast float %3528, %2801
  br label %3535

; <label>:3535                                    ; preds = %3527, %3509
  %3536 = phi float [ %3532, %3527 ], [ %2799, %3509 ]
  %3537 = phi float [ %3533, %3527 ], [ %2800, %3509 ]
  %3538 = phi float [ %3534, %3527 ], [ %2801, %3509 ]
  %3539 = phi float [ %3529, %3527 ], [ %2802, %3509 ]
  %3540 = phi float [ %3530, %3527 ], [ %2803, %3509 ]
  %3541 = phi float [ %3531, %3527 ], [ %2804, %3509 ]
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = and i32 %3543, 3
  %3545 = icmp eq i32 %3544, 3
  br i1 %3545, label %3624, label %3546

; <label>:3546                                    ; preds = %3535
  %3547 = and i32 %3543, 16
  %3548 = icmp ne i32 %3547, 0
  %3549 = select i1 %3548, float %3110, float 0.000000e+00
  %3550 = icmp eq i32 %3544, 0
  br i1 %3550, label %3551, label %3579

; <label>:3551                                    ; preds = %3546
  %3552 = and i32 %3543, 64
  %3553 = icmp ne i32 %3552, 0
  %3554 = select i1 %3553, float %3110, float 0.000000e+00
  %3555 = fsub fast float %3330, %3539
  %3556 = fsub fast float %3331, %3540
  %3557 = fsub fast float %3332, %3541
  %3558 = fmul fast float %3549, %3555
  %3559 = fmul fast float %3549, %3556
  %3560 = fmul fast float %3549, %3557
  %3561 = fadd fast float %3558, %3539
  %3562 = fadd fast float %3559, %3540
  %3563 = fadd fast float %3560, %3541
  %3564 = fsub fast float %3316, %2808
  %3565 = fmul fast float %3549, %3564
  %3566 = fadd fast float %3565, %2808
  %3567 = fsub fast float %3458, %3536
  %3568 = fsub fast float %3459, %3537
  %3569 = fsub fast float %3460, %3538
  %3570 = fmul fast float %3554, %3567
  %3571 = fmul fast float %3554, %3568
  %3572 = fmul fast float %3554, %3569
  %3573 = fadd fast float %3570, %3536
  %3574 = fadd fast float %3571, %3537
  %3575 = fadd fast float %3572, %3538
  %3576 = fsub fast float %3526, %2812
  %3577 = fmul fast float %3549, %3576
  %3578 = fadd fast float %3577, %2812
  br label %3624

; <label>:3579                                    ; preds = %3546
  %3580 = icmp eq i32 %3544, 1
  br i1 %3580, label %3581, label %3594

; <label>:3581                                    ; preds = %3579
  %3582 = fadd fast float %3330, -1.000000e+00
  %3583 = fadd fast float %3331, -1.000000e+00
  %3584 = fadd fast float %3332, -1.000000e+00
  %3585 = fmul fast float %3549, %3582
  %3586 = fmul fast float %3549, %3583
  %3587 = fmul fast float %3549, %3584
  %3588 = fadd fast float %3585, 1.000000e+00
  %3589 = fadd fast float %3586, 1.000000e+00
  %3590 = fadd fast float %3587, 1.000000e+00
  %3591 = fmul fast float %3588, %3539
  %3592 = fmul fast float %3589, %3540
  %3593 = fmul fast float %3590, %3541
  br label %3624

; <label>:3594                                    ; preds = %3579
  %3595 = icmp eq i32 %3544, 2
  br i1 %3595, label %3596, label %3624

; <label>:3596                                    ; preds = %3594
  %3597 = call float @dx.op.unary.f32(i32 24, float %3330)  ; Sqrt(value)
  %3598 = call float @dx.op.unary.f32(i32 24, float %3331)  ; Sqrt(value)
  %3599 = call float @dx.op.unary.f32(i32 24, float %3332)  ; Sqrt(value)
  %3600 = fadd fast float %3597, -5.000000e-01
  %3601 = fadd fast float %3598, -5.000000e-01
  %3602 = fadd fast float %3599, -5.000000e-01
  %3603 = fmul fast float %3600, %3549
  %3604 = fmul fast float %3601, %3549
  %3605 = fmul fast float %3602, %3549
  %3606 = fadd fast float %3603, 5.000000e-01
  %3607 = fadd fast float %3604, 5.000000e-01
  %3608 = fadd fast float %3605, 5.000000e-01
  %3609 = fmul fast float %3606, 2.000000e+00
  %3610 = fsub fast float 1.000000e+00, %3609
  %3611 = fmul fast float %3610, %3539
  %3612 = fadd fast float %3611, %3609
  %3613 = fmul fast float %3612, %3539
  %3614 = fmul fast float %3607, 2.000000e+00
  %3615 = fsub fast float 1.000000e+00, %3614
  %3616 = fmul fast float %3615, %3540
  %3617 = fadd fast float %3616, %3614
  %3618 = fmul fast float %3617, %3540
  %3619 = fmul fast float %3608, 2.000000e+00
  %3620 = fsub fast float 1.000000e+00, %3619
  %3621 = fmul fast float %3620, %3541
  %3622 = fadd fast float %3621, %3619
  %3623 = fmul fast float %3622, %3541
  br label %3624

; <label>:3624                                    ; preds = %3596, %3594, %3581, %3551, %3535
  %3625 = phi float [ %3536, %3535 ], [ %3536, %3596 ], [ %3536, %3594 ], [ %3536, %3581 ], [ %3573, %3551 ]
  %3626 = phi float [ %3537, %3535 ], [ %3537, %3596 ], [ %3537, %3594 ], [ %3537, %3581 ], [ %3574, %3551 ]
  %3627 = phi float [ %3538, %3535 ], [ %3538, %3596 ], [ %3538, %3594 ], [ %3538, %3581 ], [ %3575, %3551 ]
  %3628 = phi float [ %3539, %3535 ], [ %3613, %3596 ], [ %3539, %3594 ], [ %3591, %3581 ], [ %3561, %3551 ]
  %3629 = phi float [ %3540, %3535 ], [ %3618, %3596 ], [ %3540, %3594 ], [ %3592, %3581 ], [ %3562, %3551 ]
  %3630 = phi float [ %3541, %3535 ], [ %3623, %3596 ], [ %3541, %3594 ], [ %3593, %3581 ], [ %3563, %3551 ]
  %3631 = phi float [ %2808, %3535 ], [ %2808, %3596 ], [ %2808, %3594 ], [ %2808, %3581 ], [ %3566, %3551 ]
  %3632 = phi float [ %2812, %3535 ], [ %2812, %3596 ], [ %2812, %3594 ], [ %2812, %3581 ], [ %3578, %3551 ]
  %3633 = and i32 %3543, 12
  %3634 = icmp eq i32 %3633, 12
  br i1 %3634, label %3741, label %3635

; <label>:3635                                    ; preds = %3624
  %3636 = and i32 %3543, 2097184
  %3637 = icmp eq i32 %3636, 2097184
  %3638 = select i1 %3637, float %3110, float 0.000000e+00
  %3639 = and i32 %3543, 4194336
  %3640 = icmp eq i32 %3639, 4194336
  %3641 = select i1 %3640, float %3110, float 0.000000e+00
  %3642 = and i32 %3543, 8388640
  %3643 = icmp eq i32 %3642, 8388640
  %3644 = select i1 %3643, float %3110, float 0.000000e+00
  %3645 = and i32 %3543, 2048
  %3646 = icmp ne i32 %3645, 0
  %3647 = select i1 %3646, float %3110, float 0.000000e+00
  %3648 = and i32 %3543, 8192
  %3649 = icmp ne i32 %3648, 0
  %3650 = select i1 %3649, float %3110, float 0.000000e+00
  %3651 = icmp eq i32 %3633, 0
  br i1 %3651, label %3652, label %3677

; <label>:3652                                    ; preds = %3635
  %3653 = fsub fast float %3411, %2797
  %3654 = fsub fast float %3412, %2798
  %3655 = fmul fast float %3638, %3653
  %3656 = fmul fast float %3638, %3654
  %3657 = fadd fast float %3655, %2797
  %3658 = fadd fast float %3656, %2798
  %3659 = fsub fast float %3413, %2810
  %3660 = fmul fast float %3641, %3659
  %3661 = fadd fast float %3660, %2810
  %3662 = fsub fast float %3410, %2809
  %3663 = fmul fast float %3644, %3662
  %3664 = fadd fast float %3663, %2809
  %3665 = fsub fast float %3513, %2811
  %3666 = fmul fast float %3647, %3665
  %3667 = fadd fast float %3666, %2811
  %3668 = fsub fast float %3510, %2805
  %3669 = fsub fast float %3511, %2806
  %3670 = fsub fast float %3512, %2807
  %3671 = fmul fast float %3650, %3668
  %3672 = fmul fast float %3650, %3669
  %3673 = fmul fast float %3650, %3670
  %3674 = fadd fast float %3671, %2805
  %3675 = fadd fast float %3672, %2806
  %3676 = fadd fast float %3673, %2807
  br label %3741

; <label>:3677                                    ; preds = %3635
  %3678 = icmp eq i32 %3633, 4
  br i1 %3678, label %3679, label %3719

; <label>:3679                                    ; preds = %3677
  %3680 = fmul fast float %3638, %3411
  %3681 = fmul fast float %3638, %3412
  %3682 = fadd fast float %3680, %2797
  %3683 = fadd fast float %3681, %2798
  %3684 = call float @dx.op.binary.f32(i32 36, float %2810, float %3413)  ; FMin(a,b)
  %3685 = fsub fast float %3684, %2810
  %3686 = fmul fast float %3685, %3641
  %3687 = fadd fast float %3686, %2810
  %3688 = fadd fast float %3410, %2809
  %3689 = fmul fast float %3688, 0x3FF337FAE0000000
  %3690 = fmul fast float %2809, %2809
  %3691 = fmul fast float %3410, %3410
  %3692 = fadd fast float %3691, %3690
  %3693 = fmul fast float %3692, 0x3FE5152B00000000
  %3694 = fmul fast float %2809, 0xBFCC1F85E0000000
  %3695 = fmul fast float %3694, %3410
  %3696 = fadd fast float %3695, 0xBFE1363700000000
  %3697 = fadd fast float %3696, %3689
  %3698 = fsub fast float %3697, %3693
  %3699 = fmul fast float %3688, 0x3FBA6F0D00000000
  %3700 = fmul fast float %3692, 0x3FD0432880000000
  %3701 = fmul fast float %2809, 0xBFEF110800000000
  %3702 = fmul fast float %3701, %3410
  %3703 = fadd fast float %3702, 1.000000e+00
  %3704 = fsub fast float %3703, %3699
  %3705 = fadd fast float %3704, %3700
  %3706 = fdiv fast float %3698, %3705
  %3707 = call float @dx.op.unary.f32(i32 7, float %3706)  ; Saturate(value)
  %3708 = fsub fast float %3707, %2809
  %3709 = fmul fast float %3708, %3644
  %3710 = fadd fast float %3709, %2809
  %3711 = fmul fast float %3647, %3513
  %3712 = fadd fast float %3711, %2811
  %3713 = fmul fast float %3650, %3510
  %3714 = fmul fast float %3650, %3511
  %3715 = fmul fast float %3650, %3512
  %3716 = fadd fast float %3713, %2805
  %3717 = fadd fast float %3714, %2806
  %3718 = fadd fast float %3715, %2807
  br label %3741

; <label>:3719                                    ; preds = %3677
  %3720 = icmp eq i32 %3633, 8
  br i1 %3720, label %3721, label %3741

; <label>:3721                                    ; preds = %3719
  %3722 = fmul fast float %3638, %3411
  %3723 = fmul fast float %3638, %3412
  %3724 = fadd fast float %3722, %2797
  %3725 = fadd fast float %3723, %2798
  %3726 = call float @dx.op.binary.f32(i32 36, float %2810, float %3413)  ; FMin(a,b)
  %3727 = fsub fast float %3726, %2810
  %3728 = fmul fast float %3727, %3641
  %3729 = fadd fast float %3728, %2810
  %3730 = fsub fast float %3410, %2809
  %3731 = fmul fast float %3644, %3730
  %3732 = fadd fast float %3731, %2809
  %3733 = fmul fast float %3647, %3513
  %3734 = fadd fast float %3733, %2811
  %3735 = fmul fast float %3650, %3510
  %3736 = fmul fast float %3650, %3511
  %3737 = fmul fast float %3650, %3512
  %3738 = fadd fast float %3735, %2805
  %3739 = fadd fast float %3736, %2806
  %3740 = fadd fast float %3737, %2807
  br label %3741

; <label>:3741                                    ; preds = %3721, %3719, %3679, %3652, %3624, %3109, %2813, %2796
  %3742 = phi float [ %2797, %3624 ], [ %2797, %3109 ], [ %2797, %2796 ], [ %2797, %2813 ], [ %3657, %3652 ], [ %3682, %3679 ], [ %2797, %3719 ], [ %3724, %3721 ]
  %3743 = phi float [ %2798, %3624 ], [ %2798, %3109 ], [ %2798, %2796 ], [ %2798, %2813 ], [ %3658, %3652 ], [ %3683, %3679 ], [ %2798, %3719 ], [ %3725, %3721 ]
  %3744 = phi float [ %3625, %3624 ], [ %2799, %3109 ], [ %2799, %2796 ], [ %2799, %2813 ], [ %3625, %3652 ], [ %3625, %3679 ], [ %3625, %3719 ], [ %3625, %3721 ]
  %3745 = phi float [ %3626, %3624 ], [ %2800, %3109 ], [ %2800, %2796 ], [ %2800, %2813 ], [ %3626, %3652 ], [ %3626, %3679 ], [ %3626, %3719 ], [ %3626, %3721 ]
  %3746 = phi float [ %3627, %3624 ], [ %2801, %3109 ], [ %2801, %2796 ], [ %2801, %2813 ], [ %3627, %3652 ], [ %3627, %3679 ], [ %3627, %3719 ], [ %3627, %3721 ]
  %3747 = phi float [ %3628, %3624 ], [ %2802, %3109 ], [ %2802, %2796 ], [ %2802, %2813 ], [ %3628, %3652 ], [ %3628, %3679 ], [ %3628, %3719 ], [ %3628, %3721 ]
  %3748 = phi float [ %3629, %3624 ], [ %2803, %3109 ], [ %2803, %2796 ], [ %2803, %2813 ], [ %3629, %3652 ], [ %3629, %3679 ], [ %3629, %3719 ], [ %3629, %3721 ]
  %3749 = phi float [ %3630, %3624 ], [ %2804, %3109 ], [ %2804, %2796 ], [ %2804, %2813 ], [ %3630, %3652 ], [ %3630, %3679 ], [ %3630, %3719 ], [ %3630, %3721 ]
  %3750 = phi float [ %2805, %3624 ], [ %2805, %3109 ], [ %2805, %2796 ], [ %2805, %2813 ], [ %3674, %3652 ], [ %3716, %3679 ], [ %2805, %3719 ], [ %3738, %3721 ]
  %3751 = phi float [ %2806, %3624 ], [ %2806, %3109 ], [ %2806, %2796 ], [ %2806, %2813 ], [ %3675, %3652 ], [ %3717, %3679 ], [ %2806, %3719 ], [ %3739, %3721 ]
  %3752 = phi float [ %2807, %3624 ], [ %2807, %3109 ], [ %2807, %2796 ], [ %2807, %2813 ], [ %3676, %3652 ], [ %3718, %3679 ], [ %2807, %3719 ], [ %3740, %3721 ]
  %3753 = phi float [ %3631, %3624 ], [ %2808, %3109 ], [ %2808, %2796 ], [ %2808, %2813 ], [ %3631, %3652 ], [ %3631, %3679 ], [ %3631, %3719 ], [ %3631, %3721 ]
  %3754 = phi float [ %2809, %3624 ], [ %2809, %3109 ], [ %2809, %2796 ], [ %2809, %2813 ], [ %3664, %3652 ], [ %3710, %3679 ], [ %2809, %3719 ], [ %3732, %3721 ]
  %3755 = phi float [ %2810, %3624 ], [ %2810, %3109 ], [ %2810, %2796 ], [ %2810, %2813 ], [ %3661, %3652 ], [ %3687, %3679 ], [ %2810, %3719 ], [ %3729, %3721 ]
  %3756 = phi float [ %2811, %3624 ], [ %2811, %3109 ], [ %2811, %2796 ], [ %2811, %2813 ], [ %3667, %3652 ], [ %3712, %3679 ], [ %2811, %3719 ], [ %3734, %3721 ]
  %3757 = phi float [ %3632, %3624 ], [ %2812, %3109 ], [ %2812, %2796 ], [ %2812, %2813 ], [ %3632, %3652 ], [ %3632, %3679 ], [ %3632, %3719 ], [ %3632, %3721 ]
  %3758 = add i32 %21, 360
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = extractvalue %dx.types.ResRet.i32 %3759, 1
  %3762 = bitcast i32 %3760 to float
  %3763 = bitcast i32 %3761 to float
  %3764 = fcmp fast oge float %3762, 0.000000e+00
  %3765 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3766 = extractvalue %dx.types.CBufRet.f32 %3765, 0
  %3767 = select i1 %3764, float %3762, float %3766
  %3768 = add i32 %21, 456
  %3769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3768, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.i32 %3769, 0
  %3771 = add i32 %3770, 0
  %3772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3771, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3773 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3772, %dx.types.Handle %58, float %49, float %50, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = fmul fast float %3774, %3763
  %3776 = fadd fast float %3775, %3767
  %3777 = call float @dx.op.dot2.f32(i32 54, float %3742, float %3743, float %3742, float %3743)  ; Dot2(ax,ay,bx,by)
  %3778 = fmul fast float %3777, 0x3FE3333340000000
  %3779 = fsub fast float 1.000000e+00, %3778
  %3780 = call float @dx.op.dot3.f32(i32 55, float %3742, float %3743, float %3779, float %3742, float %3743, float %3779)  ; Dot3(ax,ay,az,bx,by,bz)
  %3781 = call float @dx.op.unary.f32(i32 25, float %3780)  ; Rsqrt(value)
  %3782 = fmul fast float %3781, %3742
  %3783 = fmul fast float %3781, %3743
  %3784 = fmul fast float %3779, %3781
  %3785 = fmul fast float %3784, %68
  %3786 = fmul fast float %3784, %69
  %3787 = fmul fast float %3784, %70
  %3788 = fmul fast float %3782, %42
  %3789 = fmul fast float %3782, %43
  %3790 = fmul fast float %3782, %44
  %3791 = fadd fast float %3785, %3788
  %3792 = fadd fast float %3786, %3789
  %3793 = fadd fast float %3787, %3790
  %3794 = fmul fast float %80, %3783
  %3795 = fmul fast float %81, %3783
  %3796 = fmul fast float %82, %3783
  %3797 = fadd fast float %3791, %3794
  %3798 = fadd fast float %3792, %3795
  %3799 = fadd fast float %3793, %3796
  %3800 = call float @dx.op.dot3.f32(i32 55, float %3797, float %3798, float %3799, float %3797, float %3798, float %3799)  ; Dot3(ax,ay,az,bx,by,bz)
  %3801 = call float @dx.op.unary.f32(i32 25, float %3800)  ; Rsqrt(value)
  %3802 = fmul fast float %3797, %3801
  %3803 = fmul fast float %3798, %3801
  %3804 = fmul fast float %3799, %3801
  %3805 = and i32 %23, 1
  %3806 = icmp eq i32 %3805, 0
  br i1 %3806, label %3807, label %4368

; <label>:3807                                    ; preds = %3741
  %3808 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %3809 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %3810 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %3811 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %3812 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %3813 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %3814 = fadd fast float %3808, %116
  %3815 = fadd fast float %3809, %117
  %3816 = fadd fast float %3810, %118
  %3817 = fadd fast float %3811, %116
  %3818 = fadd fast float %3812, %117
  %3819 = fadd fast float %3813, %118
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 0
  %3822 = extractvalue %dx.types.CBufRet.f32 %3820, 1
  %3823 = extractvalue %dx.types.CBufRet.f32 %3820, 2
  %3824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3825 = extractvalue %dx.types.CBufRet.f32 %3824, 2
  %3826 = extractvalue %dx.types.CBufRet.f32 %3824, 3
  %3827 = fmul fast float %3821, %61
  %3828 = fmul fast float %3827, %3825
  %3829 = fmul fast float %3822, %62
  %3830 = fmul fast float %3829, %3826
  %3831 = fptoui float %3828 to i32
  %3832 = fptoui float %3830 to i32
  %3833 = fadd fast float %3821, -1.000000e+00
  %3834 = fadd fast float %3822, -1.000000e+00
  %3835 = fptoui float %3833 to i32
  %3836 = fptoui float %3834 to i32
  %3837 = call i32 @dx.op.binary.i32(i32 40, i32 %3831, i32 %3835)  ; UMin(a,b)
  %3838 = call i32 @dx.op.binary.i32(i32 40, i32 %3832, i32 %3836)  ; UMin(a,b)
  %3839 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3840 = extractvalue %dx.types.CBufRet.f32 %3839, 2
  %3841 = extractvalue %dx.types.CBufRet.f32 %3839, 3
  %3842 = fmul fast float %3840, %56
  %3843 = fsub fast float %3842, %3841
  %3844 = fadd fast float %3823, -1.000000e+00
  %3845 = call float @dx.op.binary.f32(i32 36, float %3843, float %3844)  ; FMin(a,b)
  %3846 = fptoui float %3845 to i32
  %3847 = fptoui float %3821 to i32
  %3848 = fptoui float %3822 to i32
  %3849 = mul i32 %3846, %3848
  %3850 = add i32 %3849, %3838
  %3851 = mul i32 %3850, %3847
  %3852 = add i32 %3851, %3837
  %3853 = shl i32 %3852, 2
  %3854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3853, i32 undef)  ; BufferLoad(srv,index,wot)
  %3855 = extractvalue %dx.types.ResRet.i32 %3854, 0
  %3856 = and i32 %3855, 1023
  %3857 = lshr i32 %3855, 10
  %3858 = icmp eq i32 %3856, 0
  br i1 %3858, label %4334, label %3859

; <label>:3859                                    ; preds = %3807
  %3860 = and i32 %3855, 1023
  br label %3861

; <label>:3861                                    ; preds = %3990, %3859
  %3862 = phi i32 [ %3940, %3990 ], [ 0, %3859 ]
  %3863 = phi float [ %3991, %3990 ], [ 0.000000e+00, %3859 ]
  %3864 = phi float [ %3992, %3990 ], [ %3776, %3859 ]
  %3865 = phi float [ %3993, %3990 ], [ %3757, %3859 ]
  %3866 = phi float [ %3994, %3990 ], [ 0.000000e+00, %3859 ]
  %3867 = phi float [ %3995, %3990 ], [ 0.000000e+00, %3859 ]
  %3868 = phi float [ %3996, %3990 ], [ %3750, %3859 ]
  %3869 = phi float [ %3997, %3990 ], [ %3751, %3859 ]
  %3870 = phi float [ %3998, %3990 ], [ %3752, %3859 ]
  %3871 = phi float [ %3999, %3990 ], [ %3744, %3859 ]
  %3872 = phi float [ %4000, %3990 ], [ %3745, %3859 ]
  %3873 = phi float [ %4001, %3990 ], [ %3746, %3859 ]
  %3874 = phi float [ %4002, %3990 ], [ %3802, %3859 ]
  %3875 = phi float [ %4003, %3990 ], [ %3803, %3859 ]
  %3876 = phi float [ %4004, %3990 ], [ %3804, %3859 ]
  %3877 = phi float [ %4005, %3990 ], [ %3755, %3859 ]
  %3878 = phi float [ %4006, %3990 ], [ %3754, %3859 ]
  %3879 = phi float [ %4007, %3990 ], [ 0.000000e+00, %3859 ]
  %3880 = phi float [ %4008, %3990 ], [ %3753, %3859 ]
  %3881 = phi float [ %4009, %3990 ], [ %3747, %3859 ]
  %3882 = phi float [ %4010, %3990 ], [ %3748, %3859 ]
  %3883 = phi float [ %4011, %3990 ], [ %3749, %3859 ]
  %3884 = add nuw nsw i32 %3862, %3857
  %3885 = shl i32 %3884, 2
  %3886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.i32 %3886, 0
  %3888 = shl i32 %3887, 8
  %3889 = or i32 %3888, 48
  %3890 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3889, i32 undef)  ; BufferLoad(srv,index,wot)
  %3891 = extractvalue %dx.types.ResRet.f32 %3890, 0
  %3892 = extractvalue %dx.types.ResRet.f32 %3890, 1
  %3893 = extractvalue %dx.types.ResRet.f32 %3890, 2
  %3894 = extractvalue %dx.types.ResRet.f32 %3890, 3
  %3895 = or i32 %3888, 64
  %3896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.i32 %3896, 0
  %3898 = extractvalue %dx.types.ResRet.i32 %3896, 1
  %3899 = or i32 %3888, 80
  %3900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 2
  %3902 = extractvalue %dx.types.ResRet.f32 %3900, 3
  %3903 = or i32 %3888, 96
  %3904 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3903, i32 undef)  ; BufferLoad(srv,index,wot)
  %3905 = extractvalue %dx.types.ResRet.f32 %3904, 0
  %3906 = extractvalue %dx.types.ResRet.f32 %3904, 1
  %3907 = extractvalue %dx.types.ResRet.f32 %3904, 2
  %3908 = extractvalue %dx.types.ResRet.f32 %3904, 3
  %3909 = or i32 %3888, 112
  %3910 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3909, i32 undef)  ; BufferLoad(srv,index,wot)
  %3911 = extractvalue %dx.types.ResRet.f32 %3910, 2
  %3912 = or i32 %3888, 128
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %3915 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %3916 = extractvalue %dx.types.ResRet.f32 %3913, 2
  %3917 = extractvalue %dx.types.ResRet.f32 %3913, 3
  %3918 = or i32 %3888, 144
  %3919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.ResRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.ResRet.f32 %3919, 3
  %3924 = or i32 %3888, 160
  %3925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.ResRet.f32 %3925, 1
  %3928 = extractvalue %dx.types.ResRet.f32 %3925, 2
  %3929 = extractvalue %dx.types.ResRet.f32 %3925, 3
  %3930 = or i32 %3888, 192
  %3931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3930, i32 undef)  ; BufferLoad(srv,index,wot)
  %3932 = extractvalue %dx.types.ResRet.i32 %3931, 0
  %3933 = or i32 %3888, 208
  %3934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.f32 %3934, 0
  %3936 = or i32 %3888, 248
  %3937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3936, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = extractvalue %dx.types.ResRet.f32 %3937, 1
  %3940 = add nuw nsw i32 %3862, 1
  %3941 = bitcast float %3894 to i32
  %3942 = and i32 %3941, 512
  %3943 = icmp eq i32 %3942, 0
  %3944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3945 = extractvalue %dx.types.ResRet.f32 %3944, 0
  %3946 = extractvalue %dx.types.ResRet.f32 %3944, 1
  %3947 = extractvalue %dx.types.ResRet.f32 %3944, 2
  %3948 = extractvalue %dx.types.ResRet.f32 %3944, 3
  %3949 = call float @dx.op.dot4.f32(i32 56, float %3945, float %3946, float %3947, float %3948, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3950 = or i32 %3888, 16
  %3951 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3950, i32 undef)  ; BufferLoad(srv,index,wot)
  %3952 = extractvalue %dx.types.ResRet.f32 %3951, 0
  %3953 = extractvalue %dx.types.ResRet.f32 %3951, 1
  %3954 = extractvalue %dx.types.ResRet.f32 %3951, 2
  %3955 = extractvalue %dx.types.ResRet.f32 %3951, 3
  %3956 = call float @dx.op.dot4.f32(i32 56, float %3952, float %3953, float %3954, float %3955, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3957 = or i32 %3888, 32
  %3958 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.ResRet.f32 %3958, 1
  %3961 = extractvalue %dx.types.ResRet.f32 %3958, 2
  %3962 = extractvalue %dx.types.ResRet.f32 %3958, 3
  %3963 = call float @dx.op.dot4.f32(i32 56, float %3959, float %3960, float %3961, float %3962, float %116, float %117, float %118, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3964 = call float @dx.op.unary.f32(i32 27, float %3949)  ; Round_ni(value)
  %3965 = call float @dx.op.unary.f32(i32 6, float %3964)  ; FAbs(value)
  %3966 = call float @dx.op.unary.f32(i32 27, float %3956)  ; Round_ni(value)
  %3967 = call float @dx.op.unary.f32(i32 6, float %3966)  ; FAbs(value)
  %3968 = call float @dx.op.unary.f32(i32 6, float %3963)  ; FAbs(value)
  %3969 = call float @dx.op.unary.f32(i32 27, float %3968)  ; Round_ni(value)
  %3970 = fadd fast float %3967, %3965
  %3971 = fadd fast float %3970, %3969
  %3972 = fcmp fast oeq float %3971, 0.000000e+00
  %3973 = call float @dx.op.dot4.f32(i32 56, float %3945, float %3946, float %3947, float %3948, float %3814, float %3815, float %3816, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3974 = call float @dx.op.dot4.f32(i32 56, float %3952, float %3953, float %3954, float %3955, float %3814, float %3815, float %3816, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3975 = call float @dx.op.dot4.f32(i32 56, float %3945, float %3946, float %3947, float %3948, float %3817, float %3818, float %3819, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3976 = call float @dx.op.dot4.f32(i32 56, float %3952, float %3953, float %3954, float %3955, float %3817, float %3818, float %3819, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3977 = fsub fast float %3973, %3949
  %3978 = fsub fast float %3975, %3949
  %3979 = fsub fast float %3974, %3956
  %3980 = fsub fast float %3976, %3956
  %3981 = call float @dx.op.dot3.f32(i32 55, float %3891, float %3892, float %3893, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %3982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3983 = extractvalue %dx.types.CBufRet.f32 %3982, 2
  %3984 = fadd fast float %3983, %3981
  %3985 = call float @dx.op.unary.f32(i32 7, float %3984)  ; Saturate(value)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3982, 0
  %3987 = fcmp fast ogt float %3985, %3986
  %3988 = and i1 %3972, %3987
  %3989 = and i1 %3943, %3988
  br i1 %3989, label %4013, label %3990

; <label>:3990                                    ; preds = %4320, %4094, %4013, %3861
  %3991 = phi float [ %3863, %4013 ], [ %4097, %4094 ], [ %4097, %4320 ], [ %3863, %3861 ]
  %3992 = phi float [ %3864, %4013 ], [ %3864, %4094 ], [ %4296, %4320 ], [ %3864, %3861 ]
  %3993 = phi float [ %3865, %4013 ], [ %3865, %4094 ], [ %4294, %4320 ], [ %3865, %3861 ]
  %3994 = phi float [ %3866, %4013 ], [ %3866, %4094 ], [ %4221, %4320 ], [ %3866, %3861 ]
  %3995 = phi float [ %3867, %4013 ], [ %3867, %4094 ], [ %4219, %4320 ], [ %3867, %3861 ]
  %3996 = phi float [ %3868, %4013 ], [ %3868, %4094 ], [ %4264, %4320 ], [ %3868, %3861 ]
  %3997 = phi float [ %3869, %4013 ], [ %3869, %4094 ], [ %4265, %4320 ], [ %3869, %3861 ]
  %3998 = phi float [ %3870, %4013 ], [ %3870, %4094 ], [ %4266, %4320 ], [ %3870, %3861 ]
  %3999 = phi float [ %3871, %4013 ], [ %3871, %4094 ], [ %4330, %4320 ], [ %3871, %3861 ]
  %4000 = phi float [ %3872, %4013 ], [ %3872, %4094 ], [ %4331, %4320 ], [ %3872, %3861 ]
  %4001 = phi float [ %3873, %4013 ], [ %3873, %4094 ], [ %4332, %4320 ], [ %3873, %3861 ]
  %4002 = phi float [ %3874, %4013 ], [ %3874, %4094 ], [ %4200, %4320 ], [ %3874, %3861 ]
  %4003 = phi float [ %3875, %4013 ], [ %3875, %4094 ], [ %4201, %4320 ], [ %3875, %3861 ]
  %4004 = phi float [ %3876, %4013 ], [ %3876, %4094 ], [ %4202, %4320 ], [ %3876, %3861 ]
  %4005 = phi float [ %3877, %4013 ], [ %3877, %4094 ], [ %4274, %4320 ], [ %3877, %3861 ]
  %4006 = phi float [ %3878, %4013 ], [ %3878, %4094 ], [ %4271, %4320 ], [ %3878, %3861 ]
  %4007 = phi float [ %3879, %4013 ], [ %3879, %4094 ], [ %4268, %4320 ], [ %3879, %3861 ]
  %4008 = phi float [ %3880, %4013 ], [ %3880, %4094 ], [ %4217, %4320 ], [ %3880, %3861 ]
  %4009 = phi float [ %3881, %4013 ], [ %3881, %4094 ], [ %4212, %4320 ], [ %3881, %3861 ]
  %4010 = phi float [ %3882, %4013 ], [ %3882, %4094 ], [ %4213, %4320 ], [ %3882, %3861 ]
  %4011 = phi float [ %3883, %4013 ], [ %3883, %4094 ], [ %4214, %4320 ], [ %3883, %3861 ]
  %4012 = icmp eq i32 %3940, %3860
  br i1 %4012, label %4333, label %3861

; <label>:4013                                    ; preds = %3861
  %4014 = extractvalue %dx.types.ResRet.f32 %3910, 3
  %4015 = extractvalue %dx.types.ResRet.f32 %3910, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %3910, 0
  %4017 = extractvalue %dx.types.ResRet.f32 %3900, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %4019 = extractvalue %dx.types.ResRet.i32 %3896, 3
  %4020 = extractvalue %dx.types.ResRet.i32 %3896, 2
  %4021 = add i32 %4019, 0
  %4022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4021, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4024 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4022, %dx.types.Handle %4023, float %3949, float %3956, float undef, float undef, i32 0, i32 0, i32 undef, float %3977, float %3979, float undef, float %3978, float %3980, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = fmul fast float %4025, %4018
  %4027 = fadd fast float %4026, %4017
  %4028 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4029 = fmul fast float %3949, %3905
  %4030 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3956, float %4029)  ; FMad(a,b,c)
  %4031 = fadd fast float %4030, %4016
  %4032 = fmul fast float %3949, %3907
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3956, float %4032)  ; FMad(a,b,c)
  %4034 = fadd fast float %4033, %4015
  %4035 = fmul fast float %3977, %3905
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3979, float %4035)  ; FMad(a,b,c)
  %4037 = fmul fast float %3977, %3907
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3979, float %4037)  ; FMad(a,b,c)
  %4039 = fmul fast float %3978, %3905
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %3906, float %3980, float %4039)  ; FMad(a,b,c)
  %4041 = fmul fast float %3978, %3907
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %3908, float %3980, float %4041)  ; FMad(a,b,c)
  %4043 = add i32 %4020, 0
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4043, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4044, %dx.types.Handle %4023, float %4031, float %4034, float undef, float undef, i32 0, i32 0, i32 undef, float %4036, float %4038, float undef, float %4040, float %4042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = and i32 %3941, 1024
  %4048 = icmp ne i32 %4047, 0
  %4049 = fcmp fast ogt float %4046, 0x3FE0101020000000
  %4050 = uitofp i1 %4049 to float
  %4051 = select i1 %4048, float %4050, float %4046
  %4052 = and i32 %3941, 8192
  %4053 = icmp ne i32 %4052, 0
  %4054 = select i1 %4053, float %4014, float 1.000000e+00
  %4055 = fmul fast float %3949, 2.000000e+00
  %4056 = fadd fast float %4055, -1.000000e+00
  %4057 = call float @dx.op.unary.f32(i32 6, float %4056)  ; FAbs(value)
  %4058 = fmul fast float %4057, %3938
  %4059 = fsub fast float %4058, %3938
  %4060 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4061 = fmul fast float %3956, 2.000000e+00
  %4062 = fadd fast float %4061, -1.000000e+00
  %4063 = call float @dx.op.unary.f32(i32 6, float %4062)  ; FAbs(value)
  %4064 = fmul fast float %4063, %3939
  %4065 = fsub fast float %4064, %3939
  %4066 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4067 = fmul fast float %3968, %3901
  %4068 = fsub fast float %4067, %3901
  %4069 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4070 = fmul fast float %4028, %4054
  %4071 = fmul fast float %4070, %4025
  %4072 = fmul fast float %4071, %4060
  %4073 = fmul fast float %4072, %4051
  %4074 = fmul fast float %4073, %4066
  %4075 = fmul fast float %4074, %4069
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4078 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4079 = fsub fast float %3985, %4078
  %4080 = fmul fast float %4079, %4077
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = fmul fast float %4075, %3902
  %4083 = fadd fast float %4075, %3902
  %4084 = fmul fast float %4083, %3911
  %4085 = fsub fast float %4084, %3911
  %4086 = call float @dx.op.unary.f32(i32 7, float %4085)  ; Saturate(value)
  %4087 = and i32 %3941, 128
  %4088 = icmp ne i32 %4087, 0
  %4089 = select i1 %4088, float %4086, float %4082
  %4090 = fmul fast float %4089, %4081
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = fcmp fast ugt float %4090, %4092
  br i1 %4093, label %4094, label %3990

; <label>:4094                                    ; preds = %4013
  %4095 = select i1 %4053, float %4090, float 0.000000e+00
  %4096 = fadd fast float %4095, %3863
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  br i1 %4053, label %3990, label %4098

; <label>:4098                                    ; preds = %4094
  %4099 = and i32 %3941, 4
  %4100 = and i32 %3941, 8
  %4101 = add i32 %3897, 0
  %4102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4101, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4104 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4102, %dx.types.Handle %4103, float %4031, float %4034, float undef, float undef, i32 0, i32 0, i32 undef, float %4036, float %4038, float undef, float %4040, float %4042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4105 = extractvalue %dx.types.ResRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.ResRet.f32 %4104, 1
  %4107 = extractvalue %dx.types.ResRet.f32 %4104, 2
  %4108 = extractvalue %dx.types.ResRet.f32 %4104, 3
  %4109 = bitcast float %3923 to i32
  %4110 = and i32 %4109, 255
  %4111 = uitofp i32 %4110 to float
  %4112 = lshr i32 %4109, 8
  %4113 = and i32 %4112, 255
  %4114 = uitofp i32 %4113 to float
  %4115 = fmul fast float %4108, %4111
  %4116 = fadd fast float %4115, %4114
  %4117 = fmul fast float %4116, 0x3F70101000000000
  %4118 = add i32 %3898, 0
  %4119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4118, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4120 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4119, %dx.types.Handle %4103, float %4031, float %4034, float undef, float undef, i32 0, i32 0, i32 undef, float %4036, float %4038, float undef, float %4040, float %4042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.ResRet.f32 %4120, 1
  %4123 = extractvalue %dx.types.ResRet.f32 %4120, 2
  %4124 = extractvalue %dx.types.ResRet.f32 %4120, 3
  %4125 = bitcast float %3917 to i32
  %4126 = and i32 %4125, 255
  %4127 = uitofp i32 %4126 to float
  %4128 = lshr i32 %4125, 8
  %4129 = and i32 %4128, 255
  %4130 = uitofp i32 %4129 to float
  %4131 = lshr i32 %4125, 16
  %4132 = and i32 %4131, 255
  %4133 = uitofp i32 %4132 to float
  %4134 = fmul fast float %4133, 0x3F70101000000000
  %4135 = fmul fast float %4121, %4127
  %4136 = fadd fast float %4135, %4130
  %4137 = fmul fast float %4136, 0x3F70101000000000
  %4138 = fadd fast float %4122, -5.000000e-01
  %4139 = fadd fast float %4124, -5.000000e-01
  %4140 = fmul fast float %4138, %4134
  %4141 = fmul fast float %4139, %4134
  %4142 = fadd fast float %4140, 5.000000e-01
  %4143 = fadd fast float %4141, 5.000000e-01
  %4144 = fmul fast float %4105, %3926
  %4145 = fmul fast float %4106, %3927
  %4146 = fmul fast float %4107, %3928
  %4147 = fmul fast float %4142, 2.000000e+00
  %4148 = fadd fast float %4147, -1.000000e+00
  %4149 = fmul fast float %4143, 2.000000e+00
  %4150 = fadd fast float %4149, -1.000000e+00
  %4151 = fadd fast float %4148, %4150
  %4152 = fmul fast float %4151, 5.000000e-01
  %4153 = fsub fast float %4148, %4150
  %4154 = fmul fast float %4153, 5.000000e-01
  %4155 = call float @dx.op.unary.f32(i32 6, float %4152)  ; FAbs(value)
  %4156 = fsub fast float 1.000000e+00, %4155
  %4157 = call float @dx.op.unary.f32(i32 6, float %4154)  ; FAbs(value)
  %4158 = fsub fast float %4156, %4157
  %4159 = call float @dx.op.dot3.f32(i32 55, float %4152, float %4154, float %4158, float %4152, float %4154, float %4158)  ; Dot3(ax,ay,az,bx,by,bz)
  %4160 = call float @dx.op.unary.f32(i32 25, float %4159)  ; Rsqrt(value)
  %4161 = fmul fast float %4152, %4160
  %4162 = fmul fast float %4154, %4160
  %4163 = fmul fast float %4160, %4158
  %4164 = fmul fast float %4163, %3891
  %4165 = fmul fast float %4163, %3892
  %4166 = fmul fast float %4163, %3893
  %4167 = fmul fast float %4161, %3914
  %4168 = fmul fast float %4161, %3915
  %4169 = fmul fast float %4161, %3916
  %4170 = fadd fast float %4167, %4164
  %4171 = fadd fast float %4168, %4165
  %4172 = fadd fast float %4169, %4166
  %4173 = fmul fast float %4162, %3920
  %4174 = fmul fast float %4162, %3921
  %4175 = fmul fast float %4162, %3922
  %4176 = fadd fast float %4170, %4173
  %4177 = fadd fast float %4171, %4174
  %4178 = fadd fast float %4172, %4175
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4176, float %4177, float %4178, float %4176, float %4177, float %4178)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = call float @dx.op.unary.f32(i32 25, float %4179)  ; Rsqrt(value)
  %4181 = fmul fast float %4176, %4180
  %4182 = fmul fast float %4177, %4180
  %4183 = fmul fast float %4178, %4180
  %4184 = icmp ne i32 %4100, 0
  %4185 = select i1 %4184, float 1.000000e+00, float 0.000000e+00
  %4186 = fmul fast float %4090, %4185
  %4187 = and i32 %3941, 1
  %4188 = icmp eq i32 %4187, 0
  br i1 %4188, label %4189, label %4193

; <label>:4189                                    ; preds = %4098
  %4190 = fsub fast float %4181, %3874
  %4191 = fsub fast float %4182, %3875
  %4192 = fsub fast float %4183, %3876
  br label %4193

; <label>:4193                                    ; preds = %4189, %4098
  %4194 = phi float [ %4190, %4189 ], [ %4181, %4098 ]
  %4195 = phi float [ %4191, %4189 ], [ %4182, %4098 ]
  %4196 = phi float [ %4192, %4189 ], [ %4183, %4098 ]
  %4197 = fmul float %4196, %4186
  %4198 = fmul float %4195, %4186
  %4199 = fmul float %4194, %4186
  %4200 = fadd fast float %4199, %3874
  %4201 = fadd fast float %4198, %3875
  %4202 = fadd fast float %4197, %3876
  %4203 = icmp ne i32 %4099, 0
  %4204 = select i1 %4203, float 1.000000e+00, float 0.000000e+00
  %4205 = fmul fast float %4090, %4204
  %4206 = fsub fast float %4144, %3881
  %4207 = fsub fast float %4145, %3882
  %4208 = fsub fast float %4146, %3883
  %4209 = fmul fast float %4206, %4205
  %4210 = fmul fast float %4207, %4205
  %4211 = fmul fast float %4208, %4205
  %4212 = fadd fast float %4209, %3881
  %4213 = fadd fast float %4210, %3882
  %4214 = fadd fast float %4211, %3883
  %4215 = fsub fast float %4117, %3880
  %4216 = fmul fast float %4215, %4205
  %4217 = fadd fast float %4216, %3880
  %4218 = fmul fast float %4205, %3867
  %4219 = fsub fast float %3867, %4218
  %4220 = fmul fast float %4205, %3866
  %4221 = fsub fast float %3866, %4220
  %4222 = bitcast float %3935 to i32
  %4223 = lshr i32 %4222, 16
  %4224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4223)  ; LegacyF16ToF32(value)
  %4225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4226 = extractvalue %dx.types.ResRet.i32 %4225, 0
  %4227 = and i32 %4226, 1
  %4228 = icmp eq i32 %4227, 0
  br i1 %4228, label %4229, label %4254

; <label>:4229                                    ; preds = %4193
  %4230 = fadd fast float %4117, 0xBFB99999A0000000
  %4231 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4232 = fmul fast float %4231, 0x3FF1C71C80000000
  %4233 = fsub fast float 1.000000e+00, %4232
  %4234 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4235 = fmul fast float %4234, %4144
  %4236 = fmul fast float %4234, %4145
  %4237 = fmul fast float %4234, %4146
  %4238 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4239 = call float @dx.op.unary.f32(i32 7, float %4236)  ; Saturate(value)
  %4240 = call float @dx.op.unary.f32(i32 7, float %4237)  ; Saturate(value)
  %4241 = call float @dx.op.binary.f32(i32 35, float %4239, float %4240)  ; FMax(a,b)
  %4242 = call float @dx.op.binary.f32(i32 35, float %4238, float %4241)  ; FMax(a,b)
  %4243 = fcmp fast ogt float %4242, 0.000000e+00
  %4244 = bitcast float %4242 to i32
  %4245 = sub nsw i32 2129859010, %4244
  %4246 = bitcast i32 %4245 to float
  %4247 = select i1 %4243, float %4246, float 0.000000e+00
  %4248 = fmul fast float %4238, %4224
  %4249 = fmul fast float %4239, %4224
  %4250 = fmul fast float %4240, %4224
  %4251 = fmul fast float %4248, %4247
  %4252 = fmul fast float %4249, %4247
  %4253 = fmul fast float %4250, %4247
  br label %4254

; <label>:4254                                    ; preds = %4229, %4193
  %4255 = phi float [ %4224, %4193 ], [ %4251, %4229 ]
  %4256 = phi float [ %4224, %4193 ], [ %4252, %4229 ]
  %4257 = phi float [ %4224, %4193 ], [ %4253, %4229 ]
  %4258 = fsub fast float %4255, %3868
  %4259 = fsub fast float %4256, %3869
  %4260 = fsub fast float %4257, %3870
  %4261 = fmul fast float %4258, %4205
  %4262 = fmul fast float %4259, %4205
  %4263 = fmul fast float %4260, %4205
  %4264 = fadd fast float %4261, %3868
  %4265 = fadd fast float %4262, %3869
  %4266 = fadd fast float %4263, %3870
  %4267 = fadd fast float %4090, %3879
  %4268 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4269 = fsub fast float %4137, %3878
  %4270 = fmul fast float %4269, %4186
  %4271 = fadd fast float %4270, %3878
  %4272 = fsub fast float %4123, %3877
  %4273 = fmul fast float %4272, %4186
  %4274 = fadd fast float %4273, %3877
  %4275 = call float @dx.op.dot3.f32(i32 55, float %4144, float %4145, float %4146, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 0
  %4278 = extractvalue %dx.types.CBufRet.f32 %4276, 1
  %4279 = fmul fast float %4278, %4275
  %4280 = fadd fast float %4279, %4277
  %4281 = call float @dx.op.unary.f32(i32 7, float %4280)  ; Saturate(value)
  %4282 = bitcast float %3929 to i32
  %4283 = and i32 %4282, 65535
  %4284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4283)  ; LegacyF16ToF32(value)
  %4285 = lshr i32 %4282, 16
  %4286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4285)  ; LegacyF16ToF32(value)
  %4287 = fcmp fast oge float %4284, 0.000000e+00
  %4288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.f32 %4288, 0
  %4290 = select i1 %4287, float %4284, float %4289
  %4291 = fadd fast float %4290, %4286
  %4292 = fsub fast float %4281, %3865
  %4293 = fmul fast float %4292, %4090
  %4294 = fadd fast float %4293, %3865
  %4295 = fmul fast float %4291, %4090
  %4296 = call float @dx.op.binary.f32(i32 35, float %3864, float %4295)  ; FMax(a,b)
  %4297 = and i32 %3941, 16
  %4298 = icmp eq i32 %4297, 0
  br i1 %4298, label %4320, label %4299

; <label>:4299                                    ; preds = %4254
  %4300 = add i32 %3932, 0
  %4301 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4300, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4302 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4301, %dx.types.Handle %4103, float %4031, float %4034, float undef, float undef, i32 0, i32 0, i32 undef, float %4036, float %4038, float undef, float %4040, float %4042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4303 = extractvalue %dx.types.ResRet.f32 %4302, 0
  %4304 = extractvalue %dx.types.ResRet.f32 %4302, 1
  %4305 = extractvalue %dx.types.ResRet.f32 %4302, 2
  %4306 = and i32 %4222, 65535
  %4307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4306)  ; LegacyF16ToF32(value)
  %4308 = fmul fast float %4303, %3926
  %4309 = fmul fast float %4304, %3927
  %4310 = fmul fast float %4305, %3928
  %4311 = and i32 %3941, 16384
  %4312 = icmp ne i32 %4311, 0
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = select i1 %4312, float %4314, float 1.000000e+00
  %4316 = fmul fast float %4315, %4307
  %4317 = fmul fast float %4308, %4316
  %4318 = fmul fast float %4309, %4316
  %4319 = fmul fast float %4310, %4316
  br label %4320

; <label>:4320                                    ; preds = %4299, %4254
  %4321 = phi float [ %4317, %4299 ], [ 0.000000e+00, %4254 ]
  %4322 = phi float [ %4318, %4299 ], [ 0.000000e+00, %4254 ]
  %4323 = phi float [ %4319, %4299 ], [ 0.000000e+00, %4254 ]
  %4324 = fsub fast float %4321, %3871
  %4325 = fsub fast float %4322, %3872
  %4326 = fsub fast float %4323, %3873
  %4327 = fmul fast float %4324, %4090
  %4328 = fmul fast float %4325, %4090
  %4329 = fmul fast float %4326, %4090
  %4330 = fadd fast float %4327, %3871
  %4331 = fadd fast float %4328, %3872
  %4332 = fadd fast float %4329, %3873
  br label %3990

; <label>:4333                                    ; preds = %3990
  br label %4334

; <label>:4334                                    ; preds = %4333, %3807
  %4335 = phi float [ 0.000000e+00, %3807 ], [ %3991, %4333 ]
  %4336 = phi float [ %3776, %3807 ], [ %3992, %4333 ]
  %4337 = phi float [ %3757, %3807 ], [ %3993, %4333 ]
  %4338 = phi float [ 0.000000e+00, %3807 ], [ %3994, %4333 ]
  %4339 = phi float [ 0.000000e+00, %3807 ], [ %3995, %4333 ]
  %4340 = phi float [ %3750, %3807 ], [ %3996, %4333 ]
  %4341 = phi float [ %3751, %3807 ], [ %3997, %4333 ]
  %4342 = phi float [ %3752, %3807 ], [ %3998, %4333 ]
  %4343 = phi float [ %3744, %3807 ], [ %3999, %4333 ]
  %4344 = phi float [ %3745, %3807 ], [ %4000, %4333 ]
  %4345 = phi float [ %3746, %3807 ], [ %4001, %4333 ]
  %4346 = phi float [ %3802, %3807 ], [ %4002, %4333 ]
  %4347 = phi float [ %3803, %3807 ], [ %4003, %4333 ]
  %4348 = phi float [ %3804, %3807 ], [ %4004, %4333 ]
  %4349 = phi float [ %3755, %3807 ], [ %4005, %4333 ]
  %4350 = phi float [ %3754, %3807 ], [ %4006, %4333 ]
  %4351 = phi float [ 0.000000e+00, %3807 ], [ %4007, %4333 ]
  %4352 = phi float [ %3753, %3807 ], [ %4008, %4333 ]
  %4353 = phi float [ %3747, %3807 ], [ %4009, %4333 ]
  %4354 = phi float [ %3748, %3807 ], [ %4010, %4333 ]
  %4355 = phi float [ %3749, %3807 ], [ %4011, %4333 ]
  %4356 = call float @dx.op.dot3.f32(i32 55, float %4346, float %4347, float %4348, float %4346, float %4347, float %4348)  ; Dot3(ax,ay,az,bx,by,bz)
  %4357 = call float @dx.op.unary.f32(i32 25, float %4356)  ; Rsqrt(value)
  %4358 = fmul fast float %4357, %4346
  %4359 = fmul fast float %4357, %4347
  %4360 = fmul fast float %4357, %4348
  %4361 = fadd fast float %4351, %918
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = call float @dx.op.dot3.f32(i32 55, float %4358, float %4359, float %4360, float %4358, float %4359, float %4360)  ; Dot3(ax,ay,az,bx,by,bz)
  %4364 = call float @dx.op.unary.f32(i32 25, float %4363)  ; Rsqrt(value)
  %4365 = fmul fast float %4364, %4358
  %4366 = fmul fast float %4364, %4359
  %4367 = fmul fast float %4364, %4360
  br label %4368

; <label>:4368                                    ; preds = %4334, %3741
  %4369 = phi float [ %4365, %4334 ], [ %3802, %3741 ]
  %4370 = phi float [ %4366, %4334 ], [ %3803, %3741 ]
  %4371 = phi float [ %4367, %4334 ], [ %3804, %3741 ]
  %4372 = phi float [ %4343, %4334 ], [ %3744, %3741 ]
  %4373 = phi float [ %4344, %4334 ], [ %3745, %3741 ]
  %4374 = phi float [ %4345, %4334 ], [ %3746, %3741 ]
  %4375 = phi float [ %4353, %4334 ], [ %3747, %3741 ]
  %4376 = phi float [ %4354, %4334 ], [ %3748, %3741 ]
  %4377 = phi float [ %4355, %4334 ], [ %3749, %3741 ]
  %4378 = phi float [ %4340, %4334 ], [ %3750, %3741 ]
  %4379 = phi float [ %4341, %4334 ], [ %3751, %3741 ]
  %4380 = phi float [ %4342, %4334 ], [ %3752, %3741 ]
  %4381 = phi float [ %4352, %4334 ], [ %3753, %3741 ]
  %4382 = phi float [ %4362, %4334 ], [ %918, %3741 ]
  %4383 = phi float [ %4350, %4334 ], [ %3754, %3741 ]
  %4384 = phi float [ %4349, %4334 ], [ %3755, %3741 ]
  %4385 = phi float [ %4339, %4334 ], [ 0.000000e+00, %3741 ]
  %4386 = phi float [ %4338, %4334 ], [ 0.000000e+00, %3741 ]
  %4387 = phi float [ %4335, %4334 ], [ 0.000000e+00, %3741 ]
  %4388 = phi float [ %4336, %4334 ], [ %3776, %3741 ]
  %4389 = phi float [ %4337, %4334 ], [ %3757, %3741 ]
  %4390 = fadd fast float %4381, 0xBFB99999A0000000
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = fmul fast float %4391, 0x3FF1C71C80000000
  %4393 = call float @dx.op.binary.f32(i32 36, float %4381, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4394 = fsub fast float 1.000000e+00, %4392
  %4395 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4396 = fmul fast float %4395, %4375
  %4397 = fmul fast float %4395, %4376
  %4398 = fmul fast float %4395, %4377
  %4399 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4401 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4402 = fmul fast float %4392, %4375
  %4403 = fmul fast float %4392, %4376
  %4404 = fmul fast float %4392, %4377
  %4405 = fadd fast float %4402, %4393
  %4406 = fadd fast float %4403, %4393
  %4407 = fadd fast float %4404, %4393
  %4408 = call float @dx.op.unary.f32(i32 7, float %4405)  ; Saturate(value)
  %4409 = call float @dx.op.unary.f32(i32 7, float %4406)  ; Saturate(value)
  %4410 = call float @dx.op.unary.f32(i32 7, float %4407)  ; Saturate(value)
  %4411 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %4413 = extractvalue %dx.types.ResRet.i32 %4412, 0
  %4414 = and i32 %4413, 1
  %4415 = icmp eq i32 %4414, 0
  br i1 %4415, label %4430, label %4416

; <label>:4416                                    ; preds = %4368
  %4417 = call float @dx.op.binary.f32(i32 35, float %4400, float %4401)  ; FMax(a,b)
  %4418 = call float @dx.op.binary.f32(i32 35, float %4399, float %4417)  ; FMax(a,b)
  %4419 = fcmp fast ogt float %4418, 0.000000e+00
  %4420 = bitcast float %4418 to i32
  %4421 = sub nsw i32 2129859010, %4420
  %4422 = bitcast i32 %4421 to float
  %4423 = select i1 %4419, float %4422, float 0.000000e+00
  %4424 = fmul fast float %4399, %4378
  %4425 = fmul fast float %4400, %4379
  %4426 = fmul fast float %4401, %4380
  %4427 = fmul fast float %4424, %4423
  %4428 = fmul fast float %4425, %4423
  %4429 = fmul fast float %4426, %4423
  br label %4430

; <label>:4430                                    ; preds = %4416, %4368
  %4431 = phi float [ %4427, %4416 ], [ %4378, %4368 ]
  %4432 = phi float [ %4428, %4416 ], [ %4379, %4368 ]
  %4433 = phi float [ %4429, %4416 ], [ %4380, %4368 ]
  %4434 = fadd fast float %4399, 0xBFD51EB860000000
  %4435 = fadd fast float %4400, 0xBFD51EB860000000
  %4436 = fadd fast float %4401, 0xBFD51EB860000000
  %4437 = fmul fast float %4434, %4434
  %4438 = fmul fast float %4435, %4435
  %4439 = fmul fast float %4436, %4436
  %4440 = fmul fast float %4437, %4437
  %4441 = fmul fast float %4440, 1.000000e+02
  %4442 = fmul fast float %4438, %4438
  %4443 = fmul fast float %4442, 1.000000e+02
  %4444 = fmul fast float %4439, %4439
  %4445 = fmul fast float %4444, 1.000000e+02
  %4446 = fadd fast float %4441, 3.500000e+00
  %4447 = fadd fast float %4443, 3.500000e+00
  %4448 = fadd fast float %4445, 3.500000e+00
  %4449 = call float @dx.op.binary.f32(i32 35, float %4431, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4450 = call float @dx.op.binary.f32(i32 35, float %4432, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4451 = call float @dx.op.binary.f32(i32 35, float %4433, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4452 = fdiv fast float %4446, %4449
  %4453 = fdiv fast float %4447, %4450
  %4454 = fdiv fast float %4448, %4451
  %4455 = fmul fast float %3756, 0xBFF7154760000000
  %4456 = fmul fast float %4455, %4452
  %4457 = call float @dx.op.unary.f32(i32 21, float %4456)  ; Exp(value)
  %4458 = fmul fast float %4457, 2.500000e-01
  %4459 = fmul fast float %3756, 0xBFDEC709E0000000
  %4460 = fmul fast float %4459, %4452
  %4461 = call float @dx.op.unary.f32(i32 21, float %4460)  ; Exp(value)
  %4462 = fmul fast float %4461, 7.500000e-01
  %4463 = fmul fast float %4455, %4453
  %4464 = call float @dx.op.unary.f32(i32 21, float %4463)  ; Exp(value)
  %4465 = fmul fast float %4464, 2.500000e-01
  %4466 = fmul fast float %4459, %4453
  %4467 = call float @dx.op.unary.f32(i32 21, float %4466)  ; Exp(value)
  %4468 = fmul fast float %4467, 7.500000e-01
  %4469 = fmul fast float %4455, %4454
  %4470 = call float @dx.op.unary.f32(i32 21, float %4469)  ; Exp(value)
  %4471 = fmul fast float %4470, 2.500000e-01
  %4472 = fmul fast float %4459, %4454
  %4473 = call float @dx.op.unary.f32(i32 21, float %4472)  ; Exp(value)
  %4474 = fmul fast float %4473, 7.500000e-01
  %4475 = fadd fast float %4458, %4462
  %4476 = fadd fast float %4465, %4468
  %4477 = fadd fast float %4471, %4474
  %4478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.i32 %4478, 3
  %4480 = and i32 %4479, 8
  %4481 = icmp ne i32 %4480, 0
  %4482 = call float @dx.op.binary.f32(i32 35, float %4399, float %4375)  ; FMax(a,b)
  %4483 = call float @dx.op.binary.f32(i32 35, float %4400, float %4375)  ; FMax(a,b)
  %4484 = call float @dx.op.binary.f32(i32 35, float %4401, float %4375)  ; FMax(a,b)
  %4485 = call float @dx.op.dot3.f32(i32 55, float %4399, float %4400, float %4401, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4486 = select i1 %157, float %4375, float %4399
  %4487 = select i1 %157, float %4485, float %4400
  %4488 = select i1 %157, float 1.000000e+00, float %4401
  %4489 = select i1 %4481, float %4482, float %4486
  %4490 = select i1 %4481, float %4483, float %4487
  %4491 = select i1 %4481, float %4484, float %4488
  %4492 = and i32 %133, 3
  %4493 = select i1 %127, i32 %4492, i32 0
  %4494 = icmp eq i32 %4493, 1
  br i1 %4494, label %4495, label %4571

; <label>:4495                                    ; preds = %4430
  %4496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4496, 0
  %4498 = extractvalue %dx.types.CBufRet.f32 %4496, 1
  %4499 = fadd fast float %4497, %116
  %4500 = fadd fast float %4498, %117
  %4501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4502 = extractvalue %dx.types.CBufRet.f32 %4501, 0
  %4503 = extractvalue %dx.types.CBufRet.f32 %4501, 1
  %4504 = fsub fast float %4499, %4502
  %4505 = fsub fast float %4500, %4503
  %4506 = fmul fast float %4504, %4504
  %4507 = fmul fast float %4505, %4505
  %4508 = fadd fast float %4506, %4507
  %4509 = call float @dx.op.unary.f32(i32 24, float %4508)  ; Sqrt(value)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4501, 2
  %4511 = fcmp fast olt float %4509, %4510
  br i1 %4511, label %4512, label %4565

; <label>:4512                                    ; preds = %4495
  %4513 = extractvalue %dx.types.CBufRet.f32 %4496, 2
  %4514 = fadd fast float %4513, %118
  %4515 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4516 = extractvalue %dx.types.CBufRet.f32 %4515, 0
  %4517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4518 = extractvalue %dx.types.CBufRet.f32 %4517, 0
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 0
  %4521 = extractvalue %dx.types.CBufRet.f32 %4515, 1
  %4522 = extractvalue %dx.types.CBufRet.f32 %4517, 1
  %4523 = extractvalue %dx.types.CBufRet.f32 %4519, 1
  %4524 = extractvalue %dx.types.CBufRet.f32 %4515, 3
  %4525 = extractvalue %dx.types.CBufRet.f32 %4517, 3
  %4526 = extractvalue %dx.types.CBufRet.f32 %4519, 3
  %4527 = fadd fast float %4524, %4499
  %4528 = fadd fast float %4525, %4500
  %4529 = fadd fast float %4514, %4526
  %4530 = fmul fast float %4527, %4516
  %4531 = call float @dx.op.tertiary.f32(i32 46, float %4528, float %4518, float %4530)  ; FMad(a,b,c)
  %4532 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4520, float %4531)  ; FMad(a,b,c)
  %4533 = fmul fast float %4527, %4521
  %4534 = call float @dx.op.tertiary.f32(i32 46, float %4528, float %4522, float %4533)  ; FMad(a,b,c)
  %4535 = call float @dx.op.tertiary.f32(i32 46, float %4529, float %4523, float %4534)  ; FMad(a,b,c)
  %4536 = fsub fast float %4532, %4524
  %4537 = fsub fast float %4535, %4525
  %4538 = fsub fast float %4536, %4502
  %4539 = fadd fast float %4538, %4510
  %4540 = fsub fast float %4537, %4503
  %4541 = fadd fast float %4540, %4510
  %4542 = extractvalue %dx.types.CBufRet.f32 %4501, 3
  %4543 = fmul fast float %4539, %4542
  %4544 = fmul fast float %4541, %4542
  %4545 = call float @dx.op.unary.f32(i32 7, float %4543)  ; Saturate(value)
  %4546 = call float @dx.op.unary.f32(i32 7, float %4544)  ; Saturate(value)
  %4547 = fsub fast float 1.000000e+00, %4545
  %4548 = fsub fast float 1.000000e+00, %4546
  %4549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %4547, float %4548, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = fcmp fast ugt float %4550, 0.000000e+00
  br i1 %4551, label %4552, label %4565

; <label>:4552                                    ; preds = %4512
  %4553 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4554 = extractvalue %dx.types.CBufRet.f32 %4553, 2
  %4555 = fmul fast float %4554, %4550
  %4556 = extractvalue %dx.types.CBufRet.f32 %4553, 3
  %4557 = fadd fast float %4556, %4555
  %4558 = extractvalue %dx.types.CBufRet.f32 %4519, 2
  %4559 = fadd fast float %4557, %4526
  %4560 = fmul fast float %4532, %4520
  %4561 = call float @dx.op.tertiary.f32(i32 46, float %4535, float %4523, float %4560)  ; FMad(a,b,c)
  %4562 = call float @dx.op.tertiary.f32(i32 46, float %4559, float %4558, float %4561)  ; FMad(a,b,c)
  %4563 = fsub fast float %4562, %4526
  %4564 = fsub fast float %4563, %4513
  br label %4565

; <label>:4565                                    ; preds = %4552, %4512, %4495
  %4566 = phi i1 [ true, %4552 ], [ false, %4512 ], [ false, %4495 ]
  %4567 = phi float [ %4564, %4552 ], [ -1.310720e+05, %4512 ], [ -1.310720e+05, %4495 ]
  %4568 = fsub fast float %4567, %118
  %4569 = call float @dx.op.unary.f32(i32 7, float %4568)  ; Saturate(value)
  %4570 = select i1 %4566, float %4569, float 1.000000e+00
  br label %4571

; <label>:4571                                    ; preds = %4565, %4430
  %4572 = phi float [ %4570, %4565 ], [ 0.000000e+00, %4430 ]
  %4573 = icmp eq i32 %4493, 3
  %4574 = select i1 %4573, float 1.000000e+00, float %4572
  %4575 = call float @dx.op.binary.f32(i32 35, float %4387, float %4574)  ; FMax(a,b)
  %4576 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4577 = fcmp fast une float %4576, 0.000000e+00
  %4578 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call float @dx.op.unary.f32(i32 25, float %4578)  ; Rsqrt(value)
  br i1 %4577, label %4587, label %4580

; <label>:4580                                    ; preds = %4571
  %4581 = fmul fast float %4579, %116
  %4582 = fmul fast float %4579, %117
  %4583 = fmul fast float %4579, %118
  %4584 = fsub fast float -0.000000e+00, %4581
  %4585 = fsub fast float -0.000000e+00, %4582
  %4586 = fsub fast float -0.000000e+00, %4583
  br label %4755

; <label>:4587                                    ; preds = %4571
  %4588 = fmul fast float %116, %4579
  %4589 = fsub fast float -0.000000e+00, %4588
  %4590 = fmul fast float %117, %4579
  %4591 = fsub fast float -0.000000e+00, %4590
  %4592 = fmul fast float %118, %4579
  %4593 = fsub fast float -0.000000e+00, %4592
  %4594 = call float @dx.op.dot3.f32(i32 55, float %4589, float %4591, float %4593, float %68, float %69, float %70)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = fmul fast float %4576, 2.500000e+00
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = fmul fast float %4576, 0x4013FFFFE0000000
  %4598 = fadd fast float %4597, 0xBFFFFFFFE0000000
  %4599 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4600 = fmul fast float %4576, 0x4004000020000000
  %4601 = fadd fast float %4600, 0xBFF8000040000000
  %4602 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4603 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4604 = fmul fast float %4390, 1.000000e+01
  %4605 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4606 = fmul fast float %4605, 2.000000e+00
  %4607 = fsub fast float 3.000000e+00, %4606
  %4608 = fmul fast float %4605, %4605
  %4609 = fmul fast float %4608, %4607
  %4610 = fsub fast float 1.000000e+00, %4609
  %4611 = fsub fast float 0x3FE3333340000000, %4411
  %4612 = fmul fast float %4611, 0x400AAAAAA0000000
  %4613 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4614 = fmul fast float %4610, %4613
  %4615 = fmul fast float %4489, 0x3FEA2B8620000000
  %4616 = fmul fast float %4490, 0x3FEA2B8620000000
  %4617 = fmul fast float %4491, 0x3FEA2B8620000000
  %4618 = fadd fast float %4615, 0x3FC81DFBA0000000
  %4619 = fmul fast float %4618, %4489
  %4620 = fadd fast float %4619, 0x3F910E6020000000
  %4621 = fadd fast float %4616, 0x3FC81DFBA0000000
  %4622 = fmul fast float %4621, %4490
  %4623 = fadd fast float %4622, 0x3F910E6020000000
  %4624 = fadd fast float %4617, 0x3FC81DFBA0000000
  %4625 = fmul fast float %4624, %4491
  %4626 = fadd fast float %4625, 0x3F910E6020000000
  %4627 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4628 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4626)  ; Saturate(value)
  %4630 = fsub fast float %4627, %4489
  %4631 = fsub fast float %4628, %4490
  %4632 = fsub fast float %4629, %4491
  %4633 = fmul fast float %4630, %4603
  %4634 = fmul fast float %4633, %4614
  %4635 = fmul fast float %4631, %4603
  %4636 = fmul fast float %4635, %4614
  %4637 = fmul fast float %4632, %4603
  %4638 = fmul fast float %4637, %4614
  %4639 = fadd fast float %4634, %4489
  %4640 = fadd fast float %4636, %4490
  %4641 = fadd fast float %4638, %4491
  %4642 = fmul fast float %4384, %4384
  %4643 = fmul fast float %4642, %4642
  %4644 = fadd fast float %4599, 1.000000e+00
  %4645 = fsub fast float %4644, %4614
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = call float @dx.op.dot3.f32(i32 55, float %68, float %69, float %70, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4648 = call float @dx.op.unary.f32(i32 7, float %4647)  ; Saturate(value)
  %4649 = fsub fast float 1.000000e+00, %4643
  %4650 = call float @dx.op.binary.f32(i32 36, float %4646, float %4649)  ; FMin(a,b)
  %4651 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4652 = call float @dx.op.binary.f32(i32 35, float %4650, float %4651)  ; FMax(a,b)
  %4653 = fadd fast float %4648, 0xBFE4CCCCC0000000
  %4654 = fmul fast float %4653, 0x4006DB6DA0000000
  %4655 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4656 = fmul fast float %4655, 2.000000e+00
  %4657 = fsub fast float 3.000000e+00, %4656
  %4658 = bitcast float %4408 to i32
  %4659 = ashr i32 %4658, 1
  %4660 = add nsw i32 %4659, 532487669
  %4661 = bitcast i32 %4660 to float
  %4662 = fsub fast float 1.000000e+00, %4661
  %4663 = bitcast float %4662 to i32
  %4664 = sub nsw i32 2129859010, %4663
  %4665 = bitcast i32 %4664 to float
  %4666 = fmul fast float %4665, 2.000000e+00
  %4667 = bitcast float %4409 to i32
  %4668 = ashr i32 %4667, 1
  %4669 = add nsw i32 %4668, 532487669
  %4670 = bitcast i32 %4669 to float
  %4671 = fsub fast float 1.000000e+00, %4670
  %4672 = bitcast float %4671 to i32
  %4673 = sub nsw i32 2129859010, %4672
  %4674 = bitcast i32 %4673 to float
  %4675 = fmul fast float %4674, 2.000000e+00
  %4676 = bitcast float %4410 to i32
  %4677 = ashr i32 %4676, 1
  %4678 = add nsw i32 %4677, 532487669
  %4679 = bitcast i32 %4678 to float
  %4680 = fsub fast float 1.000000e+00, %4679
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = fmul fast float %4683, 2.000000e+00
  %4685 = fsub fast float 0x4002A9FBE0000000, %4666
  %4686 = fadd fast float %4666, 0x3FD54FDF00000000
  %4687 = bitcast float %4686 to i32
  %4688 = sub nsw i32 2129859010, %4687
  %4689 = bitcast i32 %4688 to float
  %4690 = fmul fast float %4689, %4685
  %4691 = fmul fast float %4690, %4690
  %4692 = fsub fast float 0x4002A9FBE0000000, %4675
  %4693 = fadd fast float %4675, 0x3FD54FDF00000000
  %4694 = bitcast float %4693 to i32
  %4695 = sub nsw i32 2129859010, %4694
  %4696 = bitcast i32 %4695 to float
  %4697 = fmul fast float %4696, %4692
  %4698 = fmul fast float %4697, %4697
  %4699 = fsub fast float 0x4002A9FBE0000000, %4684
  %4700 = fadd fast float %4684, 0x3FD54FDF00000000
  %4701 = bitcast float %4700 to i32
  %4702 = sub nsw i32 2129859010, %4701
  %4703 = bitcast i32 %4702 to float
  %4704 = fmul fast float %4703, %4699
  %4705 = fmul fast float %4704, %4704
  %4706 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4691)  ; FMax(a,b)
  %4707 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4698)  ; FMax(a,b)
  %4708 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4705)  ; FMax(a,b)
  %4709 = fsub fast float 1.000000e+00, %4594
  %4710 = fadd fast float %4709, %4610
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fsub fast float 1.000000e+00, %4574
  %4713 = fmul fast float %4652, %4712
  %4714 = fmul fast float %4655, %4655
  %4715 = fmul fast float %4714, %4713
  %4716 = fmul fast float %4715, %4657
  %4717 = fmul fast float %4712, 0xBFE99999A0000000
  %4718 = fmul fast float %4717, %4603
  %4719 = fmul fast float %4718, %4614
  %4720 = fadd fast float %4719, 1.000000e+00
  %4721 = fadd fast float %4411, -1.000000e+00
  %4722 = fmul fast float %4720, %4721
  %4723 = fadd fast float %4722, 1.000000e+00
  %4724 = fsub fast float %4706, %4408
  %4725 = fsub fast float %4707, %4409
  %4726 = fsub fast float %4708, %4410
  %4727 = fmul fast float %4716, %4724
  %4728 = fmul fast float %4716, %4725
  %4729 = fmul fast float %4716, %4726
  %4730 = fadd fast float %4727, %4408
  %4731 = fadd fast float %4728, %4409
  %4732 = fadd fast float %4729, %4410
  %4733 = fsub fast float %68, %4369
  %4734 = fsub fast float %69, %4370
  %4735 = fsub fast float %70, %4371
  %4736 = fmul fast float %4716, %4733
  %4737 = fmul fast float %4716, %4734
  %4738 = fmul fast float %4716, %4735
  %4739 = fadd fast float %4736, %4369
  %4740 = fadd fast float %4737, %4370
  %4741 = fadd fast float %4738, %4371
  %4742 = fmul fast float %4716, %4711
  %4743 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4744 = fsub fast float 1.000000e+00, %4743
  %4745 = fmul fast float %4742, %4744
  %4746 = fadd fast float %4745, %4743
  %4747 = fsub fast float 1.000000e+00, %4384
  %4748 = fmul fast float %4716, %4747
  %4749 = fadd fast float %4748, %4384
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4740, float %4741, float %4739, float %4740, float %4741)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = call float @dx.op.unary.f32(i32 25, float %4750)  ; Rsqrt(value)
  %4752 = fmul fast float %4739, %4751
  %4753 = fmul fast float %4740, %4751
  %4754 = fmul fast float %4741, %4751
  br label %4755

; <label>:4755                                    ; preds = %4587, %4580
  %4756 = phi float [ %4586, %4580 ], [ %4593, %4587 ]
  %4757 = phi float [ %4585, %4580 ], [ %4591, %4587 ]
  %4758 = phi float [ %4584, %4580 ], [ %4589, %4587 ]
  %4759 = phi float [ %4583, %4580 ], [ %4592, %4587 ]
  %4760 = phi float [ %4582, %4580 ], [ %4590, %4587 ]
  %4761 = phi float [ %4581, %4580 ], [ %4588, %4587 ]
  %4762 = phi float [ %4408, %4580 ], [ %4730, %4587 ]
  %4763 = phi float [ %4409, %4580 ], [ %4731, %4587 ]
  %4764 = phi float [ %4410, %4580 ], [ %4732, %4587 ]
  %4765 = phi float [ %4369, %4580 ], [ %4752, %4587 ]
  %4766 = phi float [ %4370, %4580 ], [ %4753, %4587 ]
  %4767 = phi float [ %4371, %4580 ], [ %4754, %4587 ]
  %4768 = phi float [ %4489, %4580 ], [ %4639, %4587 ]
  %4769 = phi float [ %4490, %4580 ], [ %4640, %4587 ]
  %4770 = phi float [ %4491, %4580 ], [ %4641, %4587 ]
  %4771 = phi float [ %4411, %4580 ], [ %4746, %4587 ]
  %4772 = phi float [ %4384, %4580 ], [ %4749, %4587 ]
  %4773 = select i1 %157, float 0.000000e+00, float %4764
  %4774 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4766, float %4767, float %4758, float %4757, float %4756)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = call float @dx.op.unary.f32(i32 7, float %4774)  ; Saturate(value)
  %4776 = call float @dx.op.dot3.f32(i32 55, float %4761, float %4760, float %4759, float %4765, float %4766, float %4767)  ; Dot3(ax,ay,az,bx,by,bz)
  %4777 = fmul fast float %4776, 2.000000e+00
  %4778 = fmul fast float %4777, %4765
  %4779 = fmul fast float %4777, %4766
  %4780 = fmul fast float %4777, %4767
  %4781 = fsub fast float %4761, %4778
  %4782 = fsub fast float %4760, %4779
  %4783 = fsub fast float %4759, %4780
  %4784 = call float @dx.op.binary.f32(i32 36, float %4772, float 1.000000e+00)  ; FMin(a,b)
  %4785 = fsub fast float 1.000000e+00, %4772
  %4786 = bitcast float %4785 to i32
  %4787 = sub nsw i32 2129859010, %4786
  %4788 = bitcast i32 %4787 to float
  %4789 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %38)  ; FMax(a,b)
  %4790 = call float @dx.op.dot3.f32(i32 55, float %39, float %40, float %41, float %39, float %40, float %41)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = fcmp fast oeq float %4790, 0.000000e+00
  %4792 = fcmp fast oeq float %4789, 0.000000e+00
  %4793 = or i1 %4792, %4791
  br i1 %4793, label %4823, label %4794

; <label>:4794                                    ; preds = %4755
  %4795 = fsub fast float -0.000000e+00, %41
  %4796 = fsub fast float -0.000000e+00, %39
  %4797 = call float @dx.op.unary.f32(i32 24, float %4790)  ; Sqrt(value)
  %4798 = fdiv fast float %4797, %4789
  %4799 = fcmp fast ogt float %4798, 0x3FFB6F8900000000
  %4800 = select i1 %4799, float 0x3FFB6F8900000000, float %4798
  %4801 = fmul fast float %4800, 0x3FE8A23460000000
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = call float @dx.op.binary.f32(i32 35, float %4800, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4804 = fmul fast float %4802, %4789
  %4805 = fmul fast float %4803, 0x3FF279A740000000
  %4806 = fadd fast float %4805, -1.000000e+00
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4795, float %4796, float %40, float %4795, float %4796, float %40)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 25, float %4807)  ; Rsqrt(value)
  %4809 = fmul fast float %4808, %4795
  %4810 = fmul fast float %4808, %4796
  %4811 = fmul fast float %4808, %40
  %4812 = fmul fast float %4806, %4806
  %4813 = fsub fast float 1.000000e+00, %4812
  %4814 = fmul fast float %4803, 0x40005F8BE0000000
  %4815 = fsub fast float 0x400C5BF8A0000000, %4814
  %4816 = fdiv fast float %4804, %4815
  %4817 = fmul fast float %4816, 0x3FEE31C3C0000000
  %4818 = fmul fast float %4817, %4813
  %4819 = fmul fast float %4803, 0x3FDACB7480000000
  %4820 = fadd fast float %4819, 0xBFD7347680000000
  %4821 = fmul fast float %4820, %4816
  %4822 = fmul fast float %4821, %4813
  br label %4823

; <label>:4823                                    ; preds = %4794, %4755
  %4824 = phi float [ %4809, %4794 ], [ 0.000000e+00, %4755 ]
  %4825 = phi float [ %4810, %4794 ], [ 0.000000e+00, %4755 ]
  %4826 = phi float [ %4811, %4794 ], [ 0.000000e+00, %4755 ]
  %4827 = phi float [ %4818, %4794 ], [ 0.000000e+00, %4755 ]
  %4828 = phi float [ %4822, %4794 ], [ 0.000000e+00, %4755 ]
  %4829 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4825, float %4826, float %4765, float %4766, float %4767)  ; Dot3(ax,ay,az,bx,by,bz)
  %4830 = fmul fast float %4829, 0x3FDF454380000000
  %4831 = fmul fast float %4829, %4829
  %4832 = fmul fast float %4831, 0x3FEE471020000000
  %4833 = fadd fast float %4832, 0xBFD42F6020000000
  %4834 = fmul fast float %4789, 0x3FD20DD760000000
  %4835 = fmul fast float %4833, %4828
  %4836 = fadd fast float %4835, %4834
  %4837 = fmul fast float %4830, %4827
  %4838 = fadd fast float %4836, %4837
  %4839 = fsub fast float %4836, %4837
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4824, float %4825, float %4826, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = fmul fast float %4840, 0x3FDF454380000000
  %4842 = fmul fast float %4840, %4840
  %4843 = fmul fast float %4842, 0x3FEE471020000000
  %4844 = fadd fast float %4843, 0xBFD42F6020000000
  %4845 = call float @dx.op.dot3.f32(i32 55, float %4789, float %4827, float %4828, float 0x3FD20DD760000000, float %4841, float %4844)  ; Dot3(ax,ay,az,bx,by,bz)
  %4846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %34)  ; FMax(a,b)
  %4847 = call float @dx.op.dot3.f32(i32 55, float %35, float %36, float %37, float %35, float %36, float %37)  ; Dot3(ax,ay,az,bx,by,bz)
  %4848 = fcmp fast oeq float %4847, 0.000000e+00
  %4849 = fcmp fast oeq float %4846, 0.000000e+00
  %4850 = or i1 %4849, %4848
  br i1 %4850, label %4880, label %4851

; <label>:4851                                    ; preds = %4823
  %4852 = fsub fast float -0.000000e+00, %37
  %4853 = fsub fast float -0.000000e+00, %35
  %4854 = call float @dx.op.unary.f32(i32 24, float %4847)  ; Sqrt(value)
  %4855 = fdiv fast float %4854, %4846
  %4856 = fcmp fast ogt float %4855, 0x3FFB6F8900000000
  %4857 = select i1 %4856, float 0x3FFB6F8900000000, float %4855
  %4858 = fmul fast float %4857, 0x3FE8A23460000000
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = call float @dx.op.binary.f32(i32 35, float %4857, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4861 = fmul fast float %4859, %4846
  %4862 = fmul fast float %4860, 0x3FF279A740000000
  %4863 = fadd fast float %4862, -1.000000e+00
  %4864 = call float @dx.op.dot3.f32(i32 55, float %4852, float %4853, float %36, float %4852, float %4853, float %36)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = call float @dx.op.unary.f32(i32 25, float %4864)  ; Rsqrt(value)
  %4866 = fmul fast float %4865, %4852
  %4867 = fmul fast float %4865, %4853
  %4868 = fmul fast float %4865, %36
  %4869 = fmul fast float %4863, %4863
  %4870 = fsub fast float 1.000000e+00, %4869
  %4871 = fmul fast float %4860, 0x40005F8BE0000000
  %4872 = fsub fast float 0x400C5BF8A0000000, %4871
  %4873 = fdiv fast float %4861, %4872
  %4874 = fmul fast float %4873, 0x3FEE31C3C0000000
  %4875 = fmul fast float %4874, %4870
  %4876 = fmul fast float %4860, 0x3FDACB7480000000
  %4877 = fadd fast float %4876, 0xBFD7347680000000
  %4878 = fmul fast float %4877, %4873
  %4879 = fmul fast float %4878, %4870
  br label %4880

; <label>:4880                                    ; preds = %4851, %4823
  %4881 = phi float [ %4866, %4851 ], [ 0.000000e+00, %4823 ]
  %4882 = phi float [ %4867, %4851 ], [ 0.000000e+00, %4823 ]
  %4883 = phi float [ %4868, %4851 ], [ 0.000000e+00, %4823 ]
  %4884 = phi float [ %4875, %4851 ], [ 0.000000e+00, %4823 ]
  %4885 = phi float [ %4879, %4851 ], [ 0.000000e+00, %4823 ]
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float %4765, float %4766, float %4767)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = fmul fast float %4886, 0x3FDF454380000000
  %4888 = fmul fast float %4886, %4886
  %4889 = fmul fast float %4888, 0x3FEE471020000000
  %4890 = fadd fast float %4889, 0xBFD42F6020000000
  %4891 = fmul fast float %4846, 0x3FD20DD760000000
  %4892 = fmul fast float %4890, %4885
  %4893 = fadd fast float %4892, %4891
  %4894 = fmul fast float %4887, %4884
  %4895 = fadd fast float %4893, %4894
  %4896 = fsub fast float %4893, %4894
  %4897 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = fmul fast float %4897, 0x3FDF454380000000
  %4899 = fmul fast float %4897, %4897
  %4900 = fmul fast float %4899, 0x3FEE471020000000
  %4901 = fadd fast float %4900, 0xBFD42F6020000000
  %4902 = call float @dx.op.dot3.f32(i32 55, float %4846, float %4884, float %4885, float 0x3FD20DD760000000, float %4898, float %4901)  ; Dot3(ax,ay,az,bx,by,bz)
  %4903 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %30)  ; FMax(a,b)
  %4904 = call float @dx.op.dot3.f32(i32 55, float %31, float %32, float %33, float %31, float %32, float %33)  ; Dot3(ax,ay,az,bx,by,bz)
  %4905 = fcmp fast oeq float %4904, 0.000000e+00
  %4906 = fcmp fast oeq float %4903, 0.000000e+00
  %4907 = or i1 %4906, %4905
  br i1 %4907, label %4937, label %4908

; <label>:4908                                    ; preds = %4880
  %4909 = fsub fast float -0.000000e+00, %33
  %4910 = fsub fast float -0.000000e+00, %31
  %4911 = call float @dx.op.unary.f32(i32 24, float %4904)  ; Sqrt(value)
  %4912 = fdiv fast float %4911, %4903
  %4913 = fcmp fast ogt float %4912, 0x3FFB6F8900000000
  %4914 = select i1 %4913, float 0x3FFB6F8900000000, float %4912
  %4915 = fmul fast float %4914, 0x3FE8A23460000000
  %4916 = call float @dx.op.unary.f32(i32 7, float %4915)  ; Saturate(value)
  %4917 = call float @dx.op.binary.f32(i32 35, float %4914, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4918 = fmul fast float %4916, %4903
  %4919 = fmul fast float %4917, 0x3FF279A740000000
  %4920 = fadd fast float %4919, -1.000000e+00
  %4921 = call float @dx.op.dot3.f32(i32 55, float %4909, float %4910, float %32, float %4909, float %4910, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %4922 = call float @dx.op.unary.f32(i32 25, float %4921)  ; Rsqrt(value)
  %4923 = fmul fast float %4922, %4909
  %4924 = fmul fast float %4922, %4910
  %4925 = fmul fast float %4922, %32
  %4926 = fmul fast float %4920, %4920
  %4927 = fsub fast float 1.000000e+00, %4926
  %4928 = fmul fast float %4917, 0x40005F8BE0000000
  %4929 = fsub fast float 0x400C5BF8A0000000, %4928
  %4930 = fdiv fast float %4918, %4929
  %4931 = fmul fast float %4930, 0x3FEE31C3C0000000
  %4932 = fmul fast float %4931, %4927
  %4933 = fmul fast float %4917, 0x3FDACB7480000000
  %4934 = fadd fast float %4933, 0xBFD7347680000000
  %4935 = fmul fast float %4934, %4930
  %4936 = fmul fast float %4935, %4927
  br label %4937

; <label>:4937                                    ; preds = %4908, %4880
  %4938 = phi float [ %4923, %4908 ], [ 0.000000e+00, %4880 ]
  %4939 = phi float [ %4924, %4908 ], [ 0.000000e+00, %4880 ]
  %4940 = phi float [ %4925, %4908 ], [ 0.000000e+00, %4880 ]
  %4941 = phi float [ %4932, %4908 ], [ 0.000000e+00, %4880 ]
  %4942 = phi float [ %4936, %4908 ], [ 0.000000e+00, %4880 ]
  %4943 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %4765, float %4766, float %4767)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = fmul fast float %4943, 0x3FDF454380000000
  %4945 = fmul fast float %4943, %4943
  %4946 = fmul fast float %4945, 0x3FEE471020000000
  %4947 = fadd fast float %4946, 0xBFD42F6020000000
  %4948 = fmul fast float %4903, 0x3FD20DD760000000
  %4949 = fmul fast float %4947, %4942
  %4950 = fadd fast float %4949, %4948
  %4951 = fmul fast float %4944, %4941
  %4952 = fadd fast float %4950, %4951
  %4953 = fsub fast float %4950, %4951
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4938, float %4939, float %4940, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = fmul fast float %4954, 0x3FDF454380000000
  %4956 = fmul fast float %4954, %4954
  %4957 = fmul fast float %4956, 0x3FEE471020000000
  %4958 = fadd fast float %4957, 0xBFD42F6020000000
  %4959 = call float @dx.op.dot3.f32(i32 55, float %4903, float %4941, float %4942, float 0x3FD20DD760000000, float %4955, float %4958)  ; Dot3(ax,ay,az,bx,by,bz)
  %4960 = call float @dx.op.binary.f32(i32 35, float %4838, float 0.000000e+00)  ; FMax(a,b)
  %4961 = call float @dx.op.binary.f32(i32 35, float %4895, float 0.000000e+00)  ; FMax(a,b)
  %4962 = call float @dx.op.binary.f32(i32 35, float %4952, float 0.000000e+00)  ; FMax(a,b)
  %4963 = call float @dx.op.binary.f32(i32 35, float %4839, float 0.000000e+00)  ; FMax(a,b)
  %4964 = call float @dx.op.binary.f32(i32 35, float %4896, float 0.000000e+00)  ; FMax(a,b)
  %4965 = call float @dx.op.binary.f32(i32 35, float %4953, float 0.000000e+00)  ; FMax(a,b)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4845, float 0.000000e+00)  ; FMax(a,b)
  %4967 = call float @dx.op.binary.f32(i32 35, float %4902, float 0.000000e+00)  ; FMax(a,b)
  %4968 = call float @dx.op.binary.f32(i32 35, float %4959, float 0.000000e+00)  ; FMax(a,b)
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %4971 = call float @dx.op.binary.f32(i32 36, float %4768, float %4970)  ; FMin(a,b)
  %4972 = fsub fast float 1.000000e+00, %4784
  %4973 = fmul fast float %4971, %4972
  %4974 = fsub fast float 1.000000e+00, %4973
  %4975 = bitcast float %4974 to i32
  %4976 = sub nsw i32 2129859010, %4975
  %4977 = bitcast i32 %4976 to float
  %4978 = call float @dx.op.binary.f32(i32 36, float %4769, float %4970)  ; FMin(a,b)
  %4979 = fmul fast float %4978, %4972
  %4980 = fsub fast float 1.000000e+00, %4979
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = call float @dx.op.binary.f32(i32 36, float %4770, float %4970)  ; FMin(a,b)
  %4985 = fmul fast float %4984, %4972
  %4986 = fsub fast float 1.000000e+00, %4985
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = fmul fast float %4960, %4784
  %4991 = fmul fast float %4990, %4977
  %4992 = fmul fast float %4961, %4784
  %4993 = fmul fast float %4992, %4983
  %4994 = fmul fast float %4962, %4784
  %4995 = fmul fast float %4994, %4989
  %4996 = call float @dx.op.binary.f32(i32 36, float %4762, float %4970)  ; FMin(a,b)
  %4997 = fmul fast float %4996, %4972
  %4998 = fsub fast float 1.000000e+00, %4997
  %4999 = bitcast float %4998 to i32
  %5000 = sub nsw i32 2129859010, %4999
  %5001 = bitcast i32 %5000 to float
  %5002 = call float @dx.op.binary.f32(i32 36, float %4763, float %4970)  ; FMin(a,b)
  %5003 = fmul fast float %5002, %4972
  %5004 = fsub fast float 1.000000e+00, %5003
  %5005 = bitcast float %5004 to i32
  %5006 = sub nsw i32 2129859010, %5005
  %5007 = bitcast i32 %5006 to float
  %5008 = call float @dx.op.binary.f32(i32 36, float %4773, float %4970)  ; FMin(a,b)
  %5009 = fmul fast float %5008, %4972
  %5010 = fsub fast float 1.000000e+00, %5009
  %5011 = bitcast float %5010 to i32
  %5012 = sub nsw i32 2129859010, %5011
  %5013 = bitcast i32 %5012 to float
  %5014 = fmul fast float %4966, %4784
  %5015 = fmul fast float %5014, %5001
  %5016 = fmul fast float %4967, %4784
  %5017 = fmul fast float %5016, %5007
  %5018 = fmul fast float %4968, %4784
  %5019 = fmul fast float %5018, %5013
  %5020 = call float @dx.op.dot3.f32(i32 55, float %4991, float %4993, float %4995, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5021 = select i1 %157, float 0.000000e+00, float %4991
  %5022 = select i1 %157, float %5020, float %4993
  %5023 = select i1 %157, float 0.000000e+00, float %4995
  %5024 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5025 = select i1 %157, float 0.000000e+00, float %4963
  %5026 = select i1 %157, float %5024, float %4964
  %5027 = select i1 %157, float 0.000000e+00, float %4965
  %5028 = call float @dx.op.dot3.f32(i32 55, float %5015, float %5017, float %5019, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5029 = select i1 %157, float 0.000000e+00, float %5015
  %5030 = select i1 %157, float %5028, float %5017
  %5031 = select i1 %157, float 0.000000e+00, float %5019
  %5032 = fmul fast float %4775, 9.843750e-01
  %5033 = fmul fast float %4771, 9.843750e-01
  %5034 = fadd fast float %5032, 7.812500e-03
  %5035 = fadd fast float %5033, 7.812500e-03
  %5036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %5034, float %5035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5037 = extractvalue %dx.types.ResRet.f32 %5036, 2
  %5038 = extractvalue %dx.types.ResRet.f32 %5036, 3
  %5039 = fmul fast float %5037, %4762
  %5040 = fmul fast float %5037, %4763
  %5041 = fmul fast float %5037, %4773
  %5042 = fadd fast float %5039, %5038
  %5043 = fadd fast float %5040, %5038
  %5044 = fadd fast float %5041, %5038
  %5045 = fcmp fast ogt float %4385, 0.000000e+00
  br i1 %5045, label %5046, label %5072

; <label>:5046                                    ; preds = %4937
  %5047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4385, float %4775, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5048 = extractvalue %dx.types.ResRet.f32 %5047, 0
  %5049 = extractvalue %dx.types.ResRet.f32 %5047, 1
  %5050 = extractvalue %dx.types.ResRet.f32 %5047, 2
  %5051 = fadd fast float %5048, -5.000000e-01
  %5052 = fadd fast float %5049, -5.000000e-01
  %5053 = fadd fast float %5050, -5.000000e-01
  %5054 = fsub fast float 1.000000e+00, %4762
  %5055 = fsub fast float 1.000000e+00, %4763
  %5056 = fsub fast float 1.000000e+00, %4773
  %5057 = fmul fast float %4762, 4.000000e+00
  %5058 = fmul fast float %5057, %5054
  %5059 = fmul fast float %5058, %5051
  %5060 = fmul fast float %4763, 4.000000e+00
  %5061 = fmul fast float %5060, %5055
  %5062 = fmul fast float %5061, %5052
  %5063 = fmul fast float %4773, 4.000000e+00
  %5064 = fmul fast float %5063, %5056
  %5065 = fmul fast float %5064, %5053
  %5066 = fadd fast float %5059, %5042
  %5067 = fadd fast float %5062, %5043
  %5068 = fadd fast float %5065, %5044
  %5069 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5070 = call float @dx.op.unary.f32(i32 7, float %5067)  ; Saturate(value)
  %5071 = call float @dx.op.unary.f32(i32 7, float %5068)  ; Saturate(value)
  br label %5072

; <label>:5072                                    ; preds = %5046, %4937
  %5073 = phi float [ %5069, %5046 ], [ %5042, %4937 ]
  %5074 = phi float [ %5070, %5046 ], [ %5043, %4937 ]
  %5075 = phi float [ %5071, %5046 ], [ %5044, %4937 ]
  %5076 = call float @dx.op.binary.f32(i32 35, float %5074, float %5075)  ; FMax(a,b)
  %5077 = call float @dx.op.binary.f32(i32 35, float %5073, float %5076)  ; FMax(a,b)
  %5078 = fsub fast float 1.000000e+00, %5077
  %5079 = call float @dx.op.dot3.f32(i32 55, float %4768, float %4769, float %4770, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5080 = fcmp fast ogt float %5079, 0x3E7FF19E20000000
  %5081 = fdiv fast float 1.000000e+00, %5079
  %5082 = select i1 %5080, float %5081, float 0.000000e+00
  %5083 = fmul fast float %5082, %4768
  %5084 = fmul fast float %5082, %4769
  %5085 = fmul fast float %5082, %4770
  %5086 = fadd fast float %5083, -1.000000e+00
  %5087 = fadd fast float %5084, -1.000000e+00
  %5088 = fadd fast float %5085, -1.000000e+00
  %5089 = fmul fast float %5086, 5.000000e-01
  %5090 = fmul fast float %5087, 5.000000e-01
  %5091 = fmul fast float %5088, 5.000000e-01
  %5092 = fadd fast float %5089, 1.000000e+00
  %5093 = fadd fast float %5090, 1.000000e+00
  %5094 = fadd fast float %5091, 1.000000e+00
  %5095 = fmul fast float %5073, %5029
  %5096 = fmul fast float %5074, %5030
  %5097 = fmul fast float %5075, %5031
  %5098 = fsub fast float 1.000000e+00, %4775
  %5099 = bitcast float %5098 to i32
  %5100 = sitofp i32 %5099 to float
  %5101 = fmul fast float %5100, 5.000000e+00
  %5102 = fadd fast float %5101, 0xC1EFBF8940000000
  %5103 = fptosi float %5102 to i32
  %5104 = bitcast i32 %5103 to float
  %5105 = fmul fast float %5104, %4386
  %5106 = fmul fast float %5021, %5105
  %5107 = fmul fast float %5106, %5078
  %5108 = fmul fast float %5107, %5092
  %5109 = fmul fast float %5022, %5105
  %5110 = fmul fast float %5109, %5078
  %5111 = fmul fast float %5110, %5093
  %5112 = fmul fast float %5023, %5105
  %5113 = fmul fast float %5112, %5078
  %5114 = fmul fast float %5113, %5094
  %5115 = fadd fast float %5095, %4372
  %5116 = fadd fast float %5115, %5108
  %5117 = fmul fast float %5116, %4382
  %5118 = fadd fast float %5096, %4373
  %5119 = fadd fast float %5118, %5111
  %5120 = fmul fast float %5119, %4382
  %5121 = fadd fast float %5097, %4374
  %5122 = fadd fast float %5121, %5114
  %5123 = fmul fast float %5122, %4382
  %5124 = fmul fast float %5078, %5023
  %5125 = fmul fast float %5078, %5022
  %5126 = fmul fast float %5078, %5021
  %5127 = fmul fast float %5078, %4477
  %5128 = fadd fast float %5127, -1.000000e+00
  %5129 = fmul fast float %5128, %4382
  %5130 = fadd fast float %5129, 1.000000e+00
  %5131 = fmul fast float %5078, %4476
  %5132 = fadd fast float %5131, -1.000000e+00
  %5133 = fmul fast float %5132, %4382
  %5134 = fadd fast float %5133, 1.000000e+00
  %5135 = fmul fast float %5078, %4475
  %5136 = fadd fast float %5135, -1.000000e+00
  %5137 = fmul fast float %5136, %4382
  %5138 = fadd fast float %5137, 1.000000e+00
  %5139 = fmul fast float %5138, %5025
  %5140 = fmul fast float %5134, %5026
  %5141 = fmul fast float %5130, %5027
  %5142 = fadd fast float %5139, %5126
  %5143 = fmul fast float %5142, %4382
  %5144 = fadd fast float %5140, %5125
  %5145 = fmul fast float %5144, %4382
  %5146 = fadd fast float %5141, %5124
  %5147 = fmul fast float %5146, %4382
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 3
  %5150 = fcmp fast oeq float %5149, 0.000000e+00
  br i1 %5150, label %5432, label %5151

; <label>:5151                                    ; preds = %5072
  %5152 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5156 = extractvalue %dx.types.CBufRet.f32 %5155, 0
  %5157 = extractvalue %dx.types.CBufRet.f32 %5155, 1
  %5158 = extractvalue %dx.types.CBufRet.f32 %5155, 2
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5162 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5157, float %5158, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5163 = select i1 %157, float %5160, float %5156
  %5164 = select i1 %157, float %5162, float %5157
  %5165 = select i1 %157, float %5161, float %5158
  %5166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5167 = extractvalue %dx.types.CBufRet.f32 %5166, 1
  %5168 = fcmp fast une float %5167, 0.000000e+00
  br i1 %5168, label %5169, label %5186

; <label>:5169                                    ; preds = %5151
  %5170 = fptoui float %61 to i32
  %5171 = fptoui float %62 to i32
  %5172 = lshr i32 %5170, 4
  %5173 = lshr i32 %5171, 4
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 0
  %5176 = fptoui float %5175 to i32
  %5177 = add i32 %5176, 15
  %5178 = lshr i32 %5177, 4
  %5179 = mul i32 %5178, %5173
  %5180 = add i32 %5179, %5172
  %5181 = shl i32 %5180, 3
  %5182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5181, i32 undef)  ; BufferLoad(srv,index,wot)
  %5183 = extractvalue %dx.types.ResRet.i32 %5182, 0
  %5184 = and i32 %5183, -268435456
  %5185 = icmp eq i32 %5184, -1342177280
  br i1 %5185, label %5196, label %5186

; <label>:5186                                    ; preds = %5169, %5151
  %5187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5188 = extractvalue %dx.types.CBufRet.f32 %5187, 2
  %5189 = extractvalue %dx.types.CBufRet.f32 %5187, 3
  %5190 = fmul fast float %5188, %61
  %5191 = fmul fast float %5189, %62
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %5190, float %5191, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = extractvalue %dx.types.ResRet.f32 %5192, 1
  %5195 = extractvalue %dx.types.ResRet.f32 %5192, 2
  br label %5196

; <label>:5196                                    ; preds = %5186, %5169
  %5197 = phi float [ %5193, %5186 ], [ 0.000000e+00, %5169 ]
  %5198 = phi float [ %5194, %5186 ], [ 0.000000e+00, %5169 ]
  %5199 = phi float [ %5195, %5186 ], [ 0.000000e+00, %5169 ]
  %5200 = call float @dx.op.binary.f32(i32 36, float %5198, float %5199)  ; FMin(a,b)
  %5201 = call float @dx.op.binary.f32(i32 36, float %5197, float %5200)  ; FMin(a,b)
  %5202 = fcmp fast ogt float %5201, 0.000000e+00
  br i1 %5202, label %5203, label %5432, !dx.controlflow.hints !59

; <label>:5203                                    ; preds = %5196
  %5204 = fmul fast float %5197, %5163
  %5205 = fmul fast float %5198, %5164
  %5206 = fmul fast float %5199, %5165
  %5207 = fsub fast float %5152, %4761
  %5208 = fsub fast float %5153, %4760
  %5209 = fsub fast float %5154, %4759
  %5210 = call float @dx.op.dot3.f32(i32 55, float %5207, float %5208, float %5209, float %5207, float %5208, float %5209)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = call float @dx.op.unary.f32(i32 25, float %5210)  ; Rsqrt(value)
  %5212 = fmul fast float %5211, %5207
  %5213 = fmul fast float %5211, %5208
  %5214 = fmul fast float %5211, %5209
  %5215 = call float @dx.op.dot3.f32(i32 55, float %5152, float %5153, float %5154, float %4765, float %4766, float %4767)  ; Dot3(ax,ay,az,bx,by,bz)
  %5216 = call float @dx.op.dot3.f32(i32 55, float %4758, float %4757, float %4756, float %5212, float %5213, float %5214)  ; Dot3(ax,ay,az,bx,by,bz)
  %5217 = call float @dx.op.unary.f32(i32 7, float %5215)  ; Saturate(value)
  %5218 = fmul fast float %5217, %5217
  %5219 = fmul fast float %5218, %4788
  %5220 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5221 = fmul fast float %5220, %5217
  %5222 = call float @dx.op.dot3.f32(i32 55, float %4765, float %4766, float %4767, float %5212, float %5213, float %5214)  ; Dot3(ax,ay,az,bx,by,bz)
  %5223 = fmul fast float %5222, %5222
  %5224 = call float @dx.op.unary.f32(i32 6, float %5215)  ; FAbs(value)
  %5225 = fsub fast float 1.000000e+00, %4771
  %5226 = call float @dx.op.binary.f32(i32 35, float %5225, float 0x3F847AE140000000)  ; FMax(a,b)
  %5227 = fmul fast float %5226, %5226
  %5228 = fmul fast float %5227, %5227
  %5229 = fsub fast float 1.000000e+00, %5228
  %5230 = fmul fast float %4775, %4775
  %5231 = fmul fast float %5230, %5229
  %5232 = fadd fast float %5231, %5228
  %5233 = bitcast float %5232 to i32
  %5234 = ashr i32 %5233, 1
  %5235 = add nsw i32 %5234, 532487669
  %5236 = bitcast i32 %5235 to float
  %5237 = fadd fast float %5236, %4775
  %5238 = fmul fast float %5228, %5223
  %5239 = fsub fast float 1.000000e+00, %5223
  %5240 = fadd fast float %5239, %5238
  %5241 = fmul fast float %5224, %5224
  %5242 = fmul fast float %5241, %5229
  %5243 = fadd fast float %5242, %5228
  %5244 = bitcast float %5243 to i32
  %5245 = ashr i32 %5244, 1
  %5246 = add nsw i32 %5245, 532487669
  %5247 = bitcast i32 %5246 to float
  %5248 = fadd fast float %5247, %5224
  %5249 = fmul fast float %5240, %5240
  %5250 = fmul fast float %5249, %5237
  %5251 = fmul fast float %5250, %5248
  %5252 = fdiv fast float 0x3FF0A00000000000, %5251
  %5253 = fmul fast float %5252, %5228
  %5254 = call float @dx.op.unary.f32(i32 6, float %5216)  ; FAbs(value)
  %5255 = fsub fast float 1.000000e+00, %5254
  %5256 = bitcast float %5255 to i32
  %5257 = sitofp i32 %5256 to float
  %5258 = fmul fast float %5257, 5.000000e+00
  %5259 = fadd fast float %5258, 0xC1EFBF8940000000
  %5260 = fptosi float %5259 to i32
  %5261 = bitcast i32 %5260 to float
  %5262 = fsub fast float 1.000000e+00, %4762
  %5263 = fsub fast float 1.000000e+00, %4763
  %5264 = fsub fast float 1.000000e+00, %4773
  %5265 = fmul fast float %5261, %5262
  %5266 = fmul fast float %5261, %5263
  %5267 = fmul fast float %5261, %5264
  %5268 = fadd fast float %5265, %4762
  %5269 = fadd fast float %5266, %4763
  %5270 = fadd fast float %5267, %4773
  br i1 %5045, label %5271, label %5294

; <label>:5271                                    ; preds = %5203
  %5272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4385, float %5254, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5273 = extractvalue %dx.types.ResRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.ResRet.f32 %5272, 1
  %5275 = extractvalue %dx.types.ResRet.f32 %5272, 2
  %5276 = fadd fast float %5273, -5.000000e-01
  %5277 = fadd fast float %5274, -5.000000e-01
  %5278 = fadd fast float %5275, -5.000000e-01
  %5279 = fmul fast float %4762, 4.000000e+00
  %5280 = fmul fast float %5279, %5262
  %5281 = fmul fast float %5280, %5276
  %5282 = fmul fast float %4763, 4.000000e+00
  %5283 = fmul fast float %5282, %5263
  %5284 = fmul fast float %5283, %5277
  %5285 = fmul fast float %4773, 4.000000e+00
  %5286 = fmul fast float %5285, %5264
  %5287 = fmul fast float %5286, %5278
  %5288 = fadd fast float %5281, %5268
  %5289 = fadd fast float %5284, %5269
  %5290 = fadd fast float %5287, %5270
  %5291 = call float @dx.op.unary.f32(i32 7, float %5288)  ; Saturate(value)
  %5292 = call float @dx.op.unary.f32(i32 7, float %5289)  ; Saturate(value)
  %5293 = call float @dx.op.unary.f32(i32 7, float %5290)  ; Saturate(value)
  br label %5294

; <label>:5294                                    ; preds = %5271, %5203
  %5295 = phi float [ %5291, %5271 ], [ %5268, %5203 ]
  %5296 = phi float [ %5292, %5271 ], [ %5269, %5203 ]
  %5297 = phi float [ %5293, %5271 ], [ %5270, %5203 ]
  %5298 = fmul fast float %5215, 9.843750e-01
  %5299 = fadd fast float %5298, 7.812500e-03
  %5300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %5299, float %5035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5301 = extractvalue %dx.types.ResRet.f32 %5300, 2
  %5302 = extractvalue %dx.types.ResRet.f32 %5300, 3
  %5303 = fmul fast float %5301, %4762
  %5304 = fmul fast float %5301, %4763
  %5305 = fmul fast float %5301, %4773
  %5306 = fadd fast float %5303, %5302
  %5307 = fadd fast float %5304, %5302
  %5308 = fadd fast float %5305, %5302
  br i1 %5045, label %5309, label %5332

; <label>:5309                                    ; preds = %5294
  %5310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4385, float %5215, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5311 = extractvalue %dx.types.ResRet.f32 %5310, 0
  %5312 = extractvalue %dx.types.ResRet.f32 %5310, 1
  %5313 = extractvalue %dx.types.ResRet.f32 %5310, 2
  %5314 = fadd fast float %5311, -5.000000e-01
  %5315 = fadd fast float %5312, -5.000000e-01
  %5316 = fadd fast float %5313, -5.000000e-01
  %5317 = fmul fast float %4762, 4.000000e+00
  %5318 = fmul fast float %5317, %5262
  %5319 = fmul fast float %5318, %5314
  %5320 = fmul fast float %4763, 4.000000e+00
  %5321 = fmul fast float %5320, %5263
  %5322 = fmul fast float %5321, %5315
  %5323 = fmul fast float %4773, 4.000000e+00
  %5324 = fmul fast float %5323, %5264
  %5325 = fmul fast float %5324, %5316
  %5326 = fadd fast float %5319, %5306
  %5327 = fadd fast float %5322, %5307
  %5328 = fadd fast float %5325, %5308
  %5329 = call float @dx.op.unary.f32(i32 7, float %5326)  ; Saturate(value)
  %5330 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5331 = call float @dx.op.unary.f32(i32 7, float %5328)  ; Saturate(value)
  br label %5332

; <label>:5332                                    ; preds = %5309, %5294
  %5333 = phi float [ %5329, %5309 ], [ %5306, %5294 ]
  %5334 = phi float [ %5330, %5309 ], [ %5307, %5294 ]
  %5335 = phi float [ %5331, %5309 ], [ %5308, %5294 ]
  %5336 = call float @dx.op.binary.f32(i32 35, float %5334, float %5335)  ; FMax(a,b)
  %5337 = call float @dx.op.binary.f32(i32 35, float %5333, float %5336)  ; FMax(a,b)
  %5338 = fsub fast float 1.000000e+00, %5337
  %5339 = fsub fast float -0.000000e+00, %4765
  %5340 = fsub fast float -0.000000e+00, %4766
  %5341 = fsub fast float -0.000000e+00, %4767
  %5342 = call float @dx.op.dot3.f32(i32 55, float %5152, float %5153, float %5154, float %5339, float %5340, float %5341)  ; Dot3(ax,ay,az,bx,by,bz)
  %5343 = call float @dx.op.unary.f32(i32 7, float %5342)  ; Saturate(value)
  %5344 = fmul fast float %5343, 9.843750e-01
  %5345 = fadd fast float %5344, 7.812500e-03
  %5346 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %5345, float %5035, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5347 = extractvalue %dx.types.ResRet.f32 %5346, 2
  %5348 = extractvalue %dx.types.ResRet.f32 %5346, 3
  %5349 = fmul fast float %5347, %4762
  %5350 = fmul fast float %5347, %4763
  %5351 = fmul fast float %5347, %4773
  %5352 = fadd fast float %5349, %5348
  %5353 = fadd fast float %5350, %5348
  %5354 = fadd fast float %5351, %5348
  br i1 %5045, label %5355, label %5378

; <label>:5355                                    ; preds = %5332
  %5356 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4385, float %5343, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5357 = extractvalue %dx.types.ResRet.f32 %5356, 0
  %5358 = extractvalue %dx.types.ResRet.f32 %5356, 1
  %5359 = extractvalue %dx.types.ResRet.f32 %5356, 2
  %5360 = fadd fast float %5357, -5.000000e-01
  %5361 = fadd fast float %5358, -5.000000e-01
  %5362 = fadd fast float %5359, -5.000000e-01
  %5363 = fmul fast float %4762, 4.000000e+00
  %5364 = fmul fast float %5363, %5262
  %5365 = fmul fast float %5364, %5360
  %5366 = fmul fast float %4763, 4.000000e+00
  %5367 = fmul fast float %5366, %5263
  %5368 = fmul fast float %5367, %5361
  %5369 = fmul fast float %4773, 4.000000e+00
  %5370 = fmul fast float %5369, %5264
  %5371 = fmul fast float %5370, %5362
  %5372 = fadd fast float %5365, %5352
  %5373 = fadd fast float %5368, %5353
  %5374 = fadd fast float %5371, %5354
  %5375 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5376 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5377 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  br label %5378

; <label>:5378                                    ; preds = %5355, %5332
  %5379 = phi float [ %5375, %5355 ], [ %5352, %5332 ]
  %5380 = phi float [ %5376, %5355 ], [ %5353, %5332 ]
  %5381 = phi float [ %5377, %5355 ], [ %5354, %5332 ]
  %5382 = call float @dx.op.binary.f32(i32 35, float %5380, float %5381)  ; FMax(a,b)
  %5383 = call float @dx.op.binary.f32(i32 35, float %5379, float %5382)  ; FMax(a,b)
  %5384 = fsub fast float 1.000000e+00, %5383
  %5385 = fmul fast float %5384, %5343
  %5386 = fmul fast float %5385, %4475
  %5387 = fmul fast float %5385, %4476
  %5388 = fmul fast float %5385, %4477
  %5389 = fmul fast float %5295, %5253
  %5390 = fmul fast float %5296, %5253
  %5391 = fmul fast float %5297, %5253
  %5392 = fsub fast float 1.000000e+00, %5216
  %5393 = bitcast float %5392 to i32
  %5394 = sitofp i32 %5393 to float
  %5395 = fmul fast float %5394, 5.000000e+00
  %5396 = fadd fast float %5395, 0xC1EFBF8940000000
  %5397 = fptosi float %5396 to i32
  %5398 = bitcast i32 %5397 to float
  %5399 = fmul fast float %5398, %4386
  %5400 = fmul fast float %5338, %5399
  %5401 = fmul fast float %5400, %5092
  %5402 = fmul fast float %5400, %5093
  %5403 = fmul fast float %5400, %5094
  %5404 = fmul fast float %5338, %5221
  %5405 = fadd fast float %5401, %5389
  %5406 = fadd fast float %5402, %5390
  %5407 = fadd fast float %5403, %5391
  %5408 = fadd fast float %5386, %5404
  %5409 = fadd fast float %5387, %5404
  %5410 = fadd fast float %5388, %5404
  %5411 = fmul fast float %5408, %5204
  %5412 = fmul fast float %5409, %5205
  %5413 = fmul fast float %5410, %5206
  %5414 = fmul fast float %5221, %5204
  %5415 = fmul fast float %5414, %5405
  %5416 = fmul fast float %5221, %5205
  %5417 = fmul fast float %5416, %5406
  %5418 = fmul fast float %5221, %5206
  %5419 = fmul fast float %5418, %5407
  %5420 = fadd fast float %5411, %5142
  %5421 = fmul fast float %5420, %4382
  %5422 = fadd fast float %5412, %5144
  %5423 = fmul fast float %5422, %4382
  %5424 = fadd fast float %5413, %5146
  %5425 = fmul fast float %5424, %4382
  %5426 = fadd fast float %5415, %5116
  %5427 = fmul fast float %5426, %4382
  %5428 = fadd fast float %5417, %5119
  %5429 = fmul fast float %5428, %4382
  %5430 = fadd fast float %5419, %5122
  %5431 = fmul fast float %5430, %4382
  br label %5432

; <label>:5432                                    ; preds = %5378, %5196, %5072
  %5433 = phi float [ %5117, %5072 ], [ %5117, %5196 ], [ %5427, %5378 ]
  %5434 = phi float [ %5120, %5072 ], [ %5120, %5196 ], [ %5429, %5378 ]
  %5435 = phi float [ %5123, %5072 ], [ %5123, %5196 ], [ %5431, %5378 ]
  %5436 = phi float [ %5143, %5072 ], [ %5143, %5196 ], [ %5421, %5378 ]
  %5437 = phi float [ %5145, %5072 ], [ %5145, %5196 ], [ %5423, %5378 ]
  %5438 = phi float [ %5147, %5072 ], [ %5147, %5196 ], [ %5425, %5378 ]
  %5439 = call float @dx.op.unary.f32(i32 24, float %4768)  ; Sqrt(value)
  %5440 = call float @dx.op.unary.f32(i32 24, float %4769)  ; Sqrt(value)
  %5441 = call float @dx.op.unary.f32(i32 24, float %4770)  ; Sqrt(value)
  %5442 = fmul fast float %5439, %5436
  %5443 = fmul fast float %5440, %5437
  %5444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5445 = extractvalue %dx.types.CBufRet.f32 %5444, 0
  br i1 %157, label %5446, label %5466

; <label>:5446                                    ; preds = %5432
  %5447 = fadd fast float %5438, %4388
  %5448 = fmul fast float %5447, %4389
  %5449 = fsub fast float 1.000000e+00, %4389
  %5450 = call float @dx.op.unary.f32(i32 7, float %5449)  ; Saturate(value)
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 3
  %5453 = fmul fast float %5452, %5450
  %5454 = fadd fast float %5453, %5448
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = fmul fast float %5456, %5098
  %5458 = fsub fast float %5454, %5457
  %5459 = fadd fast float %5443, %5442
  %5460 = fmul fast float %5445, %5459
  %5461 = extractvalue %dx.types.CBufRet.f32 %5451, 1
  %5462 = fsub fast float %5458, %5461
  %5463 = extractvalue %dx.types.CBufRet.f32 %5451, 2
  %5464 = fmul fast float %5462, %5463
  %5465 = call float @dx.op.unary.f32(i32 7, float %5464)  ; Saturate(value)
  br label %5482

; <label>:5466                                    ; preds = %5432
  %5467 = fmul fast float %5441, %5438
  %5468 = fmul fast float %5445, %5442
  %5469 = fmul fast float %5445, %5443
  %5470 = fmul fast float %5467, %5445
  %5471 = add i32 %21, 356
  %5472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5471, i32 undef)  ; BufferLoad(srv,index,wot)
  %5473 = extractvalue %dx.types.ResRet.i32 %5472, 0
  %5474 = and i32 %5473, 32
  %5475 = icmp eq i32 %5474, 0
  br i1 %5475, label %5482, label %5476

; <label>:5476                                    ; preds = %5466
  %5477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.f32 %5477, 0
  %5479 = fmul fast float %5478, 0x3FE99999A0000000
  %5480 = fadd fast float %5478, %5468
  %5481 = fadd fast float %5479, %5470
  br label %5482

; <label>:5482                                    ; preds = %5476, %5466, %5446
  %5483 = phi float [ %5460, %5446 ], [ %5480, %5476 ], [ %5468, %5466 ]
  %5484 = phi float [ %5465, %5446 ], [ %5469, %5476 ], [ %5469, %5466 ]
  %5485 = phi float [ 1.000000e+00, %5446 ], [ %5481, %5476 ], [ %5470, %5466 ]
  %5486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5487 = extractvalue %dx.types.CBufRet.f32 %5486, 0
  %5488 = fmul fast float %5487, %5434
  %5489 = fmul fast float %5487, %5435
  %5490 = fadd fast float %5434, %5433
  %5491 = select i1 %157, float %5490, float %5433
  %5492 = fmul float %5491, %5487
  %5493 = select i1 %157, float 0.000000e+00, float %5488
  %5494 = select i1 %157, float 0.000000e+00, float %5489
  %5495 = fmul fast float %5483, %5439
  %5496 = fmul fast float %5484, %5440
  %5497 = fmul fast float %5485, %5441
  %5498 = fadd fast float %5492, %5495
  %5499 = fadd fast float %5493, %5496
  %5500 = fadd fast float %5494, %5497
  %5501 = select i1 %157, float %5484, float %5499
  %5502 = select i1 %157, float %5485, float %5500
  %5503 = call float @dx.op.binary.f32(i32 36, float %5498, float 3.225500e+04)  ; FMin(a,b)
  %5504 = call float @dx.op.binary.f32(i32 36, float %5501, float 3.225500e+04)  ; FMin(a,b)
  %5505 = call float @dx.op.binary.f32(i32 36, float %5502, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5503)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5504)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5505)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

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
!dx.viewIdState = !{!33}
!dx.entryPoints = !{!34}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !25, !28}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!19 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!21 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!22 = !{i32 15, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!23 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!24 = !{i32 17, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!25 = !{!26, !27}
!26 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!27 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!28 = !{!29, !30, !31, !32}
!29 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!30 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!31 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!32 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!33 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !58}
!35 = !{!36, !56, null}
!36 = !{!37, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !55}
!37 = !{i32 0, !"SV_Position", i8 9, i8 3, !38, i8 4, i32 1, i8 4, i32 0, i8 0, !39}
!38 = !{i32 0}
!39 = !{i32 3, i32 11}
!40 = !{i32 1, !"COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 1, i8 0, !41}
!41 = !{i32 3, i32 14}
!42 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 2, i8 0, !43}
!43 = !{i32 3, i32 3}
!44 = !{i32 3, !"NORMAL", i8 9, i8 0, !38, i8 2, i32 1, i8 3, i32 3, i8 0, !45}
!45 = !{i32 3, i32 7}
!46 = !{i32 4, !"TANGENT", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 4, i8 0, !47}
!47 = !{i32 3, i32 15}
!48 = !{i32 5, !"SH_RED", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 5, i8 0, !47}
!49 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 6, i8 0, !47}
!50 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 7, i8 0, !47}
!51 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 8, i8 0, !43}
!52 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 9, i8 0, !47}
!53 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !38, i8 1, i32 1, i8 4, i32 10, i8 0, !54}
!54 = !{i32 3, i32 13}
!55 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!56 = !{!57}
!57 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !47}
!58 = !{i32 0, i64 24}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 1}

