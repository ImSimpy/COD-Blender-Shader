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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c1eff904769c2865cc3bc438fbd4766b
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %53 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 0
  %56 = fmul fast float %55, %49
  %57 = fmul fast float %55, %50
  %58 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %59 = bitcast float %58 to i32
  %60 = ashr i32 %59, 1
  %61 = sub nsw i32 1597250115, %60
  %62 = bitcast i32 %61 to float
  %63 = fmul fast float %62, %41
  %64 = fmul fast float %62, %42
  %65 = fmul fast float %62, %43
  %66 = fmul fast float %42, %39
  %67 = fmul fast float %43, %38
  %68 = fsub fast float %66, %67
  %69 = fmul fast float %43, %37
  %70 = fmul fast float %41, %39
  %71 = fsub fast float %69, %70
  %72 = fmul fast float %41, %38
  %73 = fmul fast float %42, %37
  %74 = fsub fast float %72, %73
  %75 = fmul fast float %68, %40
  %76 = fmul fast float %71, %40
  %77 = fmul fast float %74, %40
  %78 = call float @dx.op.dot3.f32(i32 55, float %30, float %31, float %32, float %30, float %31, float %32)  ; Dot3(ax,ay,az,bx,by,bz)
  %79 = bitcast float %78 to i32
  %80 = ashr i32 %79, 1
  %81 = sub nsw i32 1597250115, %80
  %82 = bitcast i32 %81 to float
  %83 = fmul fast float %82, %30
  %84 = fmul fast float %82, %31
  %85 = fmul fast float %82, %32
  %86 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %87 = extractvalue %dx.types.CBufRet.f32 %86, 2
  %88 = extractvalue %dx.types.CBufRet.f32 %86, 3
  %89 = fmul fast float %56, 2.000000e+00
  %90 = fmul fast float %89, %87
  %91 = fmul fast float %57, 2.000000e+00
  %92 = fmul fast float %91, %88
  %93 = fsub fast float 1.000000e+00, %90
  %94 = fsub fast float 1.000000e+00, %92
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %99 = fmul fast float %93, %96
  %100 = fmul fast float %93, %97
  %101 = fmul fast float %93, %98
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = fmul fast float %94, %103
  %107 = fmul fast float %94, %104
  %108 = fmul fast float %94, %105
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fadd fast float %106, %110
  %114 = fadd fast float %113, %99
  %115 = fadd fast float %107, %111
  %116 = fadd fast float %115, %100
  %117 = fadd fast float %108, %112
  %118 = fadd fast float %117, %101
  %119 = fmul fast float %114, %51
  %120 = fmul fast float %116, %51
  %121 = fmul fast float %118, %51
  %122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %123 = extractvalue %dx.types.CBufRet.f32 %122, 2
  %124 = extractvalue %dx.types.CBufRet.f32 %122, 3
  %125 = fmul fast float %123, %56
  %126 = fmul fast float %124, %57
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %128, 114688
  %130 = icmp ne i32 %129, 0
  %131 = select i1 %130, float %125, float 0.000000e+00
  %132 = select i1 %130, float %126, float 0.000000e+00
  %133 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %131, float %132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = fmul fast float %134, 2.550000e+02
  %136 = fptoui float %135 to i32
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %139 = extractvalue %dx.types.CBufRet.i32 %138, 3
  %140 = and i32 %139, 3
  %141 = icmp ne i32 %140, 0
  %142 = and i32 %139, 4
  %143 = icmp ne i32 %142, 0
  %144 = and i1 %141, %143
  br i1 %144, label %145, label %156

; <label>:145                                     ; preds = %0
  %146 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %147 = fmul fast float %146, %57
  %148 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %149 = fmul fast float %148, %56
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %149, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fsub fast float 1.000000e+00, %151
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = fcmp fast olt float %152, %154
  br label %159

; <label>:156                                     ; preds = %0
  %157 = icmp eq i32 %142, 0
  %158 = and i1 %141, %157
  br label %159

; <label>:159                                     ; preds = %156, %145
  %160 = phi i1 [ %155, %145 ], [ %158, %156 ]
  %161 = add i32 %21, 156
  %162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %161, i32 undef)  ; BufferLoad(srv,index,wot)
  %163 = extractvalue %dx.types.ResRet.i32 %162, 0
  %164 = shl i32 %163, 4
  %165 = and i32 %164, 32752
  %166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %165)  ; LegacyF16ToF32(value)
  %167 = lshr i32 %163, 7
  %168 = and i32 %167, 32752
  %169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %168)  ; LegacyF16ToF32(value)
  %170 = lshr i32 %163, 22
  %171 = shl nuw nsw i32 %170, 5
  %172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %171)  ; LegacyF16ToF32(value)
  %173 = add i32 %21, 216
  %174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %175 = extractvalue %dx.types.ResRet.i32 %174, 0
  %176 = and i32 %175, 255
  %177 = uitofp i32 %176 to float
  %178 = fmul fast float %177, 0x3F70101020000000
  %179 = lshr i32 %175, 8
  %180 = and i32 %179, 255
  %181 = uitofp i32 %180 to float
  %182 = fmul fast float %181, 0x3F70101020000000
  %183 = lshr i32 %175, 16
  %184 = and i32 %183, 255
  %185 = uitofp i32 %184 to float
  %186 = fmul fast float %185, 0x3F70101020000000
  %187 = add i32 %21, 36
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = and i32 %189, 65535
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = lshr i32 %189, 16
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192)  ; LegacyF16ToF32(value)
  %194 = add i32 %21, 288
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 65535
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %196, 16
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = fmul fast float %198, 0x3F50624DE0000000
  %202 = fmul fast float %200, 0x3F50624DE0000000
  %203 = add i32 %21, 172
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = shl i32 %205, 4
  %207 = and i32 %206, 32752
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %205, 7
  %210 = and i32 %209, 32752
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %205, 22
  %213 = shl nuw nsw i32 %212, 5
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = add i32 %21, 232
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = and i32 %217, 255
  %219 = uitofp i32 %218 to float
  %220 = fmul fast float %219, 0x3F70101020000000
  %221 = lshr i32 %217, 8
  %222 = and i32 %221, 255
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F70101020000000
  %225 = lshr i32 %217, 16
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F70101020000000
  %229 = add i32 %21, 52
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = and i32 %231, 65535
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %231, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = add i32 %21, 304
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %238, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = fmul fast float %240, 0x3F50624DE0000000
  %244 = fmul fast float %242, 0x3F50624DE0000000
  %245 = add i32 %21, 188
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = shl i32 %247, 4
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %247, 7
  %252 = and i32 %251, 32752
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %247, 22
  %255 = shl nuw nsw i32 %254, 5
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = add i32 %21, 248
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = and i32 %259, 255
  %261 = uitofp i32 %260 to float
  %262 = fmul fast float %261, 0x3F70101020000000
  %263 = lshr i32 %259, 8
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = lshr i32 %259, 16
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = add i32 %21, 68
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = and i32 %273, 65535
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %273, 16
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = add i32 %21, 320
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = fmul fast float %282, 0x3F50624DE0000000
  %286 = fmul fast float %284, 0x3F50624DE0000000
  %287 = add i32 %21, 204
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = shl i32 %289, 4
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %289, 7
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %289, 22
  %297 = shl nuw nsw i32 %296, 5
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = add i32 %21, 264
  %300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.i32 %300, 0
  %302 = and i32 %301, 255
  %303 = uitofp i32 %302 to float
  %304 = fmul fast float %303, 0x3F70101020000000
  %305 = lshr i32 %301, 8
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %301, 16
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = add i32 %21, 84
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = and i32 %315, 65535
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %315, 16
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = add i32 %21, 336
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = fmul fast float %324, 0x3F50624DE0000000
  %328 = fmul fast float %326, 0x3F50624DE0000000
  %329 = add i32 %21, 348
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 32
  %333 = icmp eq i32 %332, 0
  %334 = and i32 %331, 64
  %335 = icmp eq i32 %334, 0
  %336 = and i32 %331, 128
  %337 = icmp eq i32 %336, 0
  %338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %339 = extractvalue %dx.types.ResRet.i32 %338, 0
  %340 = and i32 %339, 2
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %355, label %342

; <label>:342                                     ; preds = %159
  %343 = add i32 %21, 508
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = add i32 %345, 0
  %347 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %346, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %347, %dx.types.Handle %53, float %44, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %349 = extractvalue %dx.types.ResRet.f32 %348, 0
  %350 = extractvalue %dx.types.ResRet.f32 %348, 1
  %351 = extractvalue %dx.types.ResRet.f32 %348, 2
  %352 = fmul fast float %349, %46
  %353 = fmul fast float %350, %47
  %354 = fmul fast float %351, %48
  br label %355

; <label>:355                                     ; preds = %342, %159
  %356 = phi float [ %48, %159 ], [ %354, %342 ]
  %357 = phi float [ %47, %159 ], [ %353, %342 ]
  %358 = phi float [ %46, %159 ], [ %352, %342 ]
  %359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %360 = extractvalue %dx.types.ResRet.i32 %359, 0
  %361 = and i32 %360, 2
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %382, label %363

; <label>:363                                     ; preds = %355
  %364 = add i32 %21, 44
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 1
  %368 = icmp ne i32 %367, 0
  %369 = select i1 %368, float %358, float 1.000000e+00
  %370 = add i32 %21, 60
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 1
  %374 = icmp ne i32 %373, 0
  %375 = select i1 %374, float %357, float 1.000000e+00
  %376 = add i32 %21, 76
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %376, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 1
  %380 = icmp ne i32 %379, 0
  %381 = select i1 %380, float %356, float 1.000000e+00
  br label %382

; <label>:382                                     ; preds = %363, %355
  %383 = phi float [ %356, %355 ], [ %381, %363 ]
  %384 = phi float [ %357, %355 ], [ %375, %363 ]
  %385 = phi float [ %358, %355 ], [ %369, %363 ]
  %386 = lshr i32 %360, 20
  %387 = and i32 %386, 3
  %388 = add nuw nsw i32 %387, 1
  %389 = add i32 %21, 24
  %390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %391 = extractvalue %dx.types.ResRet.i32 %390, 0
  %392 = add i32 %21, 28
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = or i32 %394, %391
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %855, label %397

; <label>:397                                     ; preds = %382
  %398 = and i32 %391, 262144
  %399 = icmp ne i32 %398, 0
  %400 = select i1 %399, float %24, float 1.000000e+00
  %401 = select i1 %399, float %25, float 0.000000e+00
  %402 = select i1 %399, float %26, float 0.000000e+00
  %403 = select i1 %399, float %27, float 1.000000e+00
  %404 = select i1 %399, float %28, float %44
  %405 = select i1 %399, float %29, float %45
  %406 = add i32 %21, 284
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = lshr i32 %408, 16
  %410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %409)  ; LegacyF16ToF32(value)
  %411 = fmul fast float %410, 0x3F50624DE0000000
  %412 = add i32 %21, 88
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = lshr i32 %414, 16
  %416 = and i32 %415, 255
  %417 = lshr i32 %414, 24
  %418 = add i32 %21, 292
  %419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %418, i32 undef)  ; BufferLoad(srv,index,wot)
  %420 = extractvalue %dx.types.ResRet.i32 %419, 0
  %421 = and i32 %420, 65535
  %422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %421)  ; LegacyF16ToF32(value)
  %423 = lshr i32 %420, 16
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = add i32 %21, 32
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = lshr i32 %427, 22
  %429 = shl nuw nsw i32 %428, 5
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = shl i32 %427, 4
  %432 = and i32 %431, 32752
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = lshr i32 %427, 7
  %435 = and i32 %434, 32752
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 3
  %439 = fmul fast float %438, 1.000000e+03
  %440 = fmul fast float %201, %439
  %441 = call float @dx.op.unary.f32(i32 22, float %440)  ; Frc(value)
  %442 = fadd fast float %441, %191
  %443 = fmul fast float %202, %439
  %444 = call float @dx.op.unary.f32(i32 22, float %443)  ; Frc(value)
  %445 = fadd fast float %444, %193
  %446 = fmul fast float %411, %439
  %447 = call float @dx.op.unary.f32(i32 22, float %446)  ; Frc(value)
  %448 = fmul fast float %447, 0x401921FB60000000
  %449 = fadd fast float %448, %430
  %450 = call float @dx.op.unary.f32(i32 13, float %449)  ; Sin(value)
  %451 = call float @dx.op.unary.f32(i32 12, float %449)  ; Cos(value)
  %452 = fsub fast float -0.000000e+00, %450
  %453 = fadd fast float %404, -5.000000e-01
  %454 = fadd fast float %405, -5.000000e-01
  %455 = fmul fast float %422, %453
  %456 = fmul fast float %424, %454
  %457 = fadd fast float %455, 5.000000e-01
  %458 = fadd fast float %456, 5.000000e-01
  %459 = fmul fast float %433, %457
  %460 = fmul fast float %436, %458
  %461 = fmul fast float %451, %459
  %462 = call float @dx.op.tertiary.f32(i32 46, float %452, float %460, float %461)  ; FMad(a,b,c)
  %463 = fmul fast float %450, %459
  %464 = call float @dx.op.tertiary.f32(i32 46, float %451, float %460, float %463)  ; FMad(a,b,c)
  %465 = fadd fast float %442, %462
  %466 = fadd fast float %445, %464
  %467 = icmp ugt i32 %416, 1
  %468 = icmp ugt i32 %414, 33554431
  %469 = or i1 %468, %467
  br i1 %469, label %470, label %495

; <label>:470                                     ; preds = %397
  %471 = add i32 %21, 228
  %472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %471, i32 undef)  ; BufferLoad(srv,index,wot)
  %473 = extractvalue %dx.types.ResRet.i32 %472, 0
  %474 = lshr i32 %473, 16
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = fmul fast float %438, %475
  %477 = call float @dx.op.unary.f32(i32 22, float %476)  ; Frc(value)
  %478 = mul nuw nsw i32 %416, %417
  %479 = uitofp i32 %478 to float
  %480 = fmul fast float %477, %479
  %481 = call float @dx.op.unary.f32(i32 27, float %480)  ; Round_ni(value)
  %482 = fptoui float %481 to i32
  %483 = urem i32 %482, %416
  %484 = udiv i32 %482, %417
  %485 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %486 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %487 = uitofp i32 %483 to float
  %488 = uitofp i32 %484 to float
  %489 = fadd fast float %485, %487
  %490 = fadd fast float %486, %488
  %491 = uitofp i32 %416 to float
  %492 = uitofp i32 %417 to float
  %493 = fdiv fast float %489, %491
  %494 = fdiv fast float %490, %492
  br label %495

; <label>:495                                     ; preds = %470, %397
  %496 = phi float [ %493, %470 ], [ %465, %397 ]
  %497 = phi float [ %494, %470 ], [ %466, %397 ]
  %498 = and i32 %391, 16
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %696, label %500

; <label>:500                                     ; preds = %495
  %501 = add i32 %21, 376
  %502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %501, i32 undef)  ; BufferLoad(srv,index,wot)
  %503 = extractvalue %dx.types.ResRet.i32 %502, 0
  %504 = add i32 %503, 0
  %505 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %504, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %506 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %505, %dx.types.Handle %52, float %496, float %497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %507 = extractvalue %dx.types.ResRet.f32 %506, 0
  %508 = extractvalue %dx.types.ResRet.f32 %506, 1
  %509 = extractvalue %dx.types.ResRet.f32 %506, 2
  %510 = extractvalue %dx.types.ResRet.f32 %506, 3
  %511 = and i32 %414, 255
  %512 = uitofp i32 %511 to float
  %513 = lshr i32 %414, 8
  %514 = and i32 %513, 255
  %515 = uitofp i32 %514 to float
  %516 = fmul fast float %510, %512
  %517 = fadd fast float %516, %515
  %518 = fmul fast float %517, 0x3F70101000000000
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = and i32 %520, 512
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %531, label %523

; <label>:523                                     ; preds = %500
  %524 = add i32 %21, 460
  %525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %524, i32 undef)  ; BufferLoad(srv,index,wot)
  %526 = extractvalue %dx.types.ResRet.i32 %525, 0
  %527 = add i32 %526, 0
  %528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %527, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %529 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %528, %dx.types.Handle %53, float %496, float %497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %530 = extractvalue %dx.types.ResRet.f32 %529, 0
  br label %531

; <label>:531                                     ; preds = %523, %500
  %532 = phi float [ %530, %523 ], [ 1.000000e+00, %500 ]
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = and i32 %534, 33554432
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %643, label %537

; <label>:537                                     ; preds = %531
  %538 = add i32 %21, 224
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = and i32 %540, 65535
  %542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %541)  ; LegacyF16ToF32(value)
  %543 = lshr i32 %540, 16
  %544 = call float @dx.op.legacyF16ToF32(i32 131, i32 %543)  ; LegacyF16ToF32(value)
  %545 = add i32 %21, 228
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 65535
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %173, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = lshr i32 %551, 24
  %553 = uitofp i32 %552 to float
  %554 = fmul fast float %553, 0x3F70101020000000
  %555 = and i32 %551, 255
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %556, 0x3F70101020000000
  %558 = lshr i32 %551, 8
  %559 = and i32 %558, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = lshr i32 %551, 16
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = add i32 %21, 220
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %566, i32 undef)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = lshr i32 %568, 24
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3F70101020000000
  %572 = and i32 %568, 255
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = lshr i32 %568, 8
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = lshr i32 %568, 16
  %580 = and i32 %579, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = bitcast float %507 to i32
  %584 = ashr i32 %583, 1
  %585 = sub nsw i32 1597463174, %584
  %586 = bitcast i32 %585 to float
  %587 = fmul fast float %507, 5.000000e-01
  %588 = fmul fast float %586, %586
  %589 = fmul fast float %588, %587
  %590 = fsub fast float 1.500000e+00, %589
  %591 = fmul fast float %586, %507
  %592 = fmul fast float %591, %590
  %593 = bitcast float %508 to i32
  %594 = ashr i32 %593, 1
  %595 = sub nsw i32 1597463174, %594
  %596 = bitcast i32 %595 to float
  %597 = fmul fast float %508, 5.000000e-01
  %598 = fmul fast float %596, %596
  %599 = fmul fast float %598, %597
  %600 = fsub fast float 1.500000e+00, %599
  %601 = fmul fast float %596, %508
  %602 = fmul fast float %601, %600
  %603 = bitcast float %509 to i32
  %604 = ashr i32 %603, 1
  %605 = sub nsw i32 1597463174, %604
  %606 = bitcast i32 %605 to float
  %607 = fmul fast float %509, 5.000000e-01
  %608 = fmul fast float %606, %606
  %609 = fmul fast float %608, %607
  %610 = fsub fast float 1.500000e+00, %609
  %611 = fmul fast float %606, %509
  %612 = fmul fast float %611, %610
  %613 = fsub fast float %592, %574
  %614 = fsub fast float %602, %578
  %615 = fsub fast float %612, %582
  %616 = fmul fast float %613, %542
  %617 = fmul fast float %614, %544
  %618 = fmul fast float %615, %549
  %619 = fadd fast float %616, %557
  %620 = fadd fast float %617, %561
  %621 = fadd fast float %618, %565
  %622 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %623 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  %624 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %625 = fmul fast float %622, %622
  %626 = fmul fast float %623, %623
  %627 = fmul fast float %624, %624
  %628 = fsub fast float %625, %507
  %629 = fsub fast float %626, %508
  %630 = fsub fast float %627, %509
  %631 = fmul fast float %628, %532
  %632 = fmul fast float %629, %532
  %633 = fmul fast float %630, %532
  %634 = fadd fast float %631, %507
  %635 = fadd fast float %632, %508
  %636 = fadd fast float %633, %509
  %637 = fadd fast float %554, %518
  %638 = fsub fast float %637, %571
  %639 = call float @dx.op.unary.f32(i32 7, float %638)  ; Saturate(value)
  %640 = fsub fast float %639, %518
  %641 = fmul fast float %640, %532
  %642 = fadd fast float %641, %518
  br label %696

; <label>:643                                     ; preds = %531
  %644 = and i32 %534, 134217728
  %645 = icmp eq i32 %644, 0
  br i1 %645, label %680, label %646

; <label>:646                                     ; preds = %643
  %647 = call float @dx.op.unary.f32(i32 24, float %178)  ; Sqrt(value)
  %648 = call float @dx.op.unary.f32(i32 24, float %182)  ; Sqrt(value)
  %649 = call float @dx.op.unary.f32(i32 24, float %186)  ; Sqrt(value)
  %650 = fadd fast float %647, -5.000000e-01
  %651 = fadd fast float %648, -5.000000e-01
  %652 = fadd fast float %649, -5.000000e-01
  %653 = fmul fast float %650, %532
  %654 = fmul fast float %651, %532
  %655 = fmul fast float %652, %532
  %656 = fadd fast float %653, 5.000000e-01
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fadd fast float %655, 5.000000e-01
  %659 = call float @dx.op.unary.f32(i32 24, float %507)  ; Sqrt(value)
  %660 = call float @dx.op.unary.f32(i32 24, float %508)  ; Sqrt(value)
  %661 = call float @dx.op.unary.f32(i32 24, float %509)  ; Sqrt(value)
  %662 = fmul fast float %656, 2.000000e+00
  %663 = fsub fast float 1.000000e+00, %662
  %664 = fmul fast float %663, %659
  %665 = fadd fast float %664, %662
  %666 = fmul fast float %665, %659
  %667 = fmul fast float %657, 2.000000e+00
  %668 = fsub fast float 1.000000e+00, %667
  %669 = fmul fast float %668, %660
  %670 = fadd fast float %669, %667
  %671 = fmul fast float %670, %660
  %672 = fmul fast float %658, 2.000000e+00
  %673 = fsub fast float 1.000000e+00, %672
  %674 = fmul fast float %673, %661
  %675 = fadd fast float %674, %672
  %676 = fmul fast float %675, %661
  %677 = fmul fast float %666, %666
  %678 = fmul fast float %671, %671
  %679 = fmul fast float %676, %676
  br label %696

; <label>:680                                     ; preds = %643
  %681 = fmul fast float %178, %178
  %682 = fmul fast float %182, %182
  %683 = fmul fast float %186, %186
  %684 = fadd fast float %681, -1.000000e+00
  %685 = fadd fast float %682, -1.000000e+00
  %686 = fadd fast float %683, -1.000000e+00
  %687 = fmul fast float %532, %684
  %688 = fmul fast float %532, %685
  %689 = fmul fast float %532, %686
  %690 = fadd fast float %687, 1.000000e+00
  %691 = fadd fast float %688, 1.000000e+00
  %692 = fadd fast float %689, 1.000000e+00
  %693 = fmul fast float %690, %507
  %694 = fmul fast float %691, %508
  %695 = fmul fast float %692, %509
  br label %696

; <label>:696                                     ; preds = %680, %646, %537, %495
  %697 = phi float [ %642, %537 ], [ %518, %646 ], [ %518, %680 ], [ 0x3FA23C0BE0000000, %495 ]
  %698 = phi float [ %634, %537 ], [ %677, %646 ], [ %693, %680 ], [ 1.000000e+00, %495 ]
  %699 = phi float [ %635, %537 ], [ %678, %646 ], [ %694, %680 ], [ 1.000000e+00, %495 ]
  %700 = phi float [ %636, %537 ], [ %679, %646 ], [ %695, %680 ], [ 1.000000e+00, %495 ]
  %701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.i32 %701, 1
  %703 = and i32 %702, 1
  %704 = icmp ne i32 %703, 0
  %705 = add i32 %21, 356
  %706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %705, i32 undef)  ; BufferLoad(srv,index,wot)
  %707 = extractvalue %dx.types.ResRet.i32 %706, 0
  %708 = and i32 %707, 32
  %709 = icmp ne i32 %708, 0
  %710 = and i1 %704, %709
  %711 = select i1 %710, float 1.000000e+00, float %698
  %712 = select i1 %710, float 0x3FD3333340000000, float %699
  %713 = select i1 %710, float 0x3FD3333340000000, float %700
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = and i32 %715, 32
  %717 = icmp eq i32 %716, 0
  br i1 %717, label %790, label %718

; <label>:718                                     ; preds = %696
  %719 = add i32 %21, 92
  %720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %719, i32 undef)  ; BufferLoad(srv,index,wot)
  %721 = extractvalue %dx.types.ResRet.i32 %720, 0
  %722 = add i32 %21, 392
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %724, 0
  %726 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %725, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %727 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %726, %dx.types.Handle %52, float %496, float %497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %728 = extractvalue %dx.types.ResRet.f32 %727, 0
  %729 = extractvalue %dx.types.ResRet.f32 %727, 1
  %730 = extractvalue %dx.types.ResRet.f32 %727, 2
  %731 = extractvalue %dx.types.ResRet.f32 %727, 3
  %732 = and i32 %721, 255
  %733 = uitofp i32 %732 to float
  %734 = lshr i32 %721, 8
  %735 = and i32 %734, 255
  %736 = uitofp i32 %735 to float
  %737 = lshr i32 %721, 16
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = fmul fast float %739, 0x3F70101000000000
  %741 = fmul fast float %728, %733
  %742 = fadd fast float %741, %736
  %743 = fmul fast float %742, 0x3F70101000000000
  %744 = fadd fast float %729, -5.000000e-01
  %745 = fadd fast float %731, -5.000000e-01
  %746 = fmul fast float %744, %740
  %747 = fmul fast float %745, %740
  %748 = fadd fast float %746, 5.000000e-01
  %749 = fadd fast float %747, 5.000000e-01
  %750 = fmul fast float %748, 2.000000e+00
  %751 = fadd fast float %750, -1.000000e+00
  %752 = fmul fast float %749, 2.000000e+00
  %753 = fadd fast float %752, -1.000000e+00
  %754 = fadd fast float %751, %753
  %755 = fmul fast float %754, 5.000000e-01
  %756 = fsub fast float %751, %753
  %757 = fmul fast float %756, 5.000000e-01
  %758 = call float @dx.op.unary.f32(i32 6, float %755)  ; FAbs(value)
  %759 = fsub fast float 1.000000e+00, %758
  %760 = call float @dx.op.unary.f32(i32 6, float %757)  ; FAbs(value)
  %761 = fsub fast float %759, %760
  %762 = call float @dx.op.dot3.f32(i32 55, float %755, float %757, float %761, float %755, float %757, float %761)  ; Dot3(ax,ay,az,bx,by,bz)
  %763 = call float @dx.op.unary.f32(i32 25, float %762)  ; Rsqrt(value)
  %764 = fmul fast float %755, %763
  %765 = fmul fast float %757, %763
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 67108864
  %769 = icmp eq i32 %768, 0
  br i1 %769, label %786, label %770

; <label>:770                                     ; preds = %718
  %771 = add i32 %21, 280
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %771, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 65535
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 65535
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = lshr i32 %773, 16
  %781 = call float @dx.op.legacyF16ToF32(i32 131, i32 %780)  ; LegacyF16ToF32(value)
  %782 = fsub fast float %743, %781
  %783 = fmul fast float %782, %775
  %784 = fadd fast float %783, %779
  %785 = call float @dx.op.unary.f32(i32 7, float %784)  ; Saturate(value)
  br label %786

; <label>:786                                     ; preds = %770, %718
  %787 = phi float [ %785, %770 ], [ %743, %718 ]
  %788 = call float @dx.op.dot2.f32(i32 54, float %764, float %765, float %400, float %401)  ; Dot2(ax,ay,bx,by)
  %789 = call float @dx.op.dot2.f32(i32 54, float %764, float %765, float %402, float %403)  ; Dot2(ax,ay,bx,by)
  br label %790

; <label>:790                                     ; preds = %786, %696
  %791 = phi float [ %787, %786 ], [ 0x3FD6666660000000, %696 ]
  %792 = phi float [ %788, %786 ], [ 0.000000e+00, %696 ]
  %793 = phi float [ %789, %786 ], [ 0.000000e+00, %696 ]
  %794 = phi float [ %730, %786 ], [ 1.000000e+00, %696 ]
  %795 = add i32 %21, 160
  %796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %795, i32 undef)  ; BufferLoad(srv,index,wot)
  %797 = extractvalue %dx.types.ResRet.i32 %796, 0
  %798 = lshr i32 %797, 22
  %799 = shl nuw nsw i32 %798, 5
  %800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %799)  ; LegacyF16ToF32(value)
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = and i32 %802, 64
  %804 = icmp eq i32 %803, 0
  br i1 %804, label %838, label %805

; <label>:805                                     ; preds = %790
  %806 = add i32 %21, 408
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = add i32 %808, 0
  %810 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %809, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %389, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 131072
  %814 = icmp eq i32 %813, 0
  %815 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %810, %dx.types.Handle %52, float %496, float %497, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %816 = extractvalue %dx.types.ResRet.f32 %815, 0
  %817 = extractvalue %dx.types.ResRet.f32 %815, 1
  %818 = extractvalue %dx.types.ResRet.f32 %815, 2
  %819 = fmul fast float %816, %166
  %820 = fmul fast float %817, %169
  %821 = fmul fast float %818, %172
  br i1 %814, label %828, label %822

; <label>:822                                     ; preds = %805
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = fmul fast float %824, %819
  %826 = fmul fast float %824, %820
  %827 = fmul fast float %824, %821
  br label %828

; <label>:828                                     ; preds = %822, %805
  %829 = phi float [ %825, %822 ], [ %819, %805 ]
  %830 = phi float [ %826, %822 ], [ %820, %805 ]
  %831 = phi float [ %827, %822 ], [ %821, %805 ]
  %832 = fmul fast float %829, %800
  %833 = select i1 %160, float %832, float %829
  %834 = call float @dx.op.dot3.f32(i32 55, float %833, float %830, float %831, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %835 = select i1 %160, float 0.000000e+00, float %829
  %836 = select i1 %160, float %834, float %830
  %837 = select i1 %160, float 0.000000e+00, float %831
  br label %838

; <label>:838                                     ; preds = %828, %790
  %839 = phi float [ %835, %828 ], [ 0.000000e+00, %790 ]
  %840 = phi float [ %836, %828 ], [ 0.000000e+00, %790 ]
  %841 = phi float [ %837, %828 ], [ 0.000000e+00, %790 ]
  %842 = add i32 %21, 96
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = and i32 %844, 255
  %846 = uitofp i32 %845 to float
  %847 = lshr i32 %844, 8
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = call float @dx.op.dot3.f32(i32 55, float %711, float %712, float %713, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = fmul fast float %849, %850
  %852 = fadd fast float %851, %846
  %853 = fmul fast float %852, 0x3F70101020000000
  %854 = call float @dx.op.unary.f32(i32 7, float %853)  ; Saturate(value)
  br label %855

; <label>:855                                     ; preds = %838, %382
  %856 = phi float [ 0.000000e+00, %382 ], [ %792, %838 ]
  %857 = phi float [ 0.000000e+00, %382 ], [ %793, %838 ]
  %858 = phi float [ 0.000000e+00, %382 ], [ %711, %838 ]
  %859 = phi float [ 0.000000e+00, %382 ], [ %712, %838 ]
  %860 = phi float [ 0.000000e+00, %382 ], [ %713, %838 ]
  %861 = phi float [ 0.000000e+00, %382 ], [ %839, %838 ]
  %862 = phi float [ 0.000000e+00, %382 ], [ %840, %838 ]
  %863 = phi float [ 0.000000e+00, %382 ], [ %841, %838 ]
  %864 = phi float [ 0.000000e+00, %382 ], [ %697, %838 ]
  %865 = phi float [ 0.000000e+00, %382 ], [ 1.000000e+00, %838 ]
  %866 = phi float [ 0.000000e+00, %382 ], [ %791, %838 ]
  %867 = phi float [ 0.000000e+00, %382 ], [ %794, %838 ]
  %868 = phi float [ 0.000000e+00, %382 ], [ %854, %838 ]
  br i1 %333, label %1821, label %869

; <label>:869                                     ; preds = %855
  %870 = icmp ult i32 %388, 2
  %871 = add i32 %21, 40
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = add i32 %21, 44
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = or i32 %876, %873
  %878 = icmp eq i32 %877, 0
  br i1 %878, label %1821, label %879

; <label>:879                                     ; preds = %869
  %880 = and i32 %873, 262144
  %881 = icmp ne i32 %880, 0
  %882 = select i1 %881, float %24, float 1.000000e+00
  %883 = select i1 %881, float %25, float 0.000000e+00
  %884 = select i1 %881, float %26, float 0.000000e+00
  %885 = select i1 %881, float %27, float 1.000000e+00
  %886 = select i1 %881, float %28, float %44
  %887 = select i1 %881, float %29, float %45
  %888 = add i32 %21, 300
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = lshr i32 %890, 16
  %892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %891)  ; LegacyF16ToF32(value)
  %893 = fmul fast float %892, 0x3F50624DE0000000
  %894 = add i32 %21, 104
  %895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %896 = extractvalue %dx.types.ResRet.i32 %895, 0
  %897 = lshr i32 %896, 16
  %898 = and i32 %897, 255
  %899 = lshr i32 %896, 24
  %900 = add i32 %21, 308
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = and i32 %902, 65535
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = lshr i32 %902, 16
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = add i32 %21, 48
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = lshr i32 %909, 22
  %911 = shl nuw nsw i32 %910, 5
  %912 = call float @dx.op.legacyF16ToF32(i32 131, i32 %911)  ; LegacyF16ToF32(value)
  %913 = shl i32 %909, 4
  %914 = and i32 %913, 32752
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = lshr i32 %909, 7
  %917 = and i32 %916, 32752
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.f32 %919, 3
  %921 = fmul fast float %920, 1.000000e+03
  %922 = fmul fast float %243, %921
  %923 = call float @dx.op.unary.f32(i32 22, float %922)  ; Frc(value)
  %924 = fadd fast float %923, %233
  %925 = fmul fast float %244, %921
  %926 = call float @dx.op.unary.f32(i32 22, float %925)  ; Frc(value)
  %927 = fadd fast float %926, %235
  %928 = fmul fast float %893, %921
  %929 = call float @dx.op.unary.f32(i32 22, float %928)  ; Frc(value)
  %930 = fmul fast float %929, 0x401921FB60000000
  %931 = fadd fast float %930, %912
  %932 = call float @dx.op.unary.f32(i32 13, float %931)  ; Sin(value)
  %933 = call float @dx.op.unary.f32(i32 12, float %931)  ; Cos(value)
  %934 = fsub fast float -0.000000e+00, %932
  %935 = fadd fast float %886, -5.000000e-01
  %936 = fadd fast float %887, -5.000000e-01
  %937 = fmul fast float %904, %935
  %938 = fmul fast float %906, %936
  %939 = fadd fast float %937, 5.000000e-01
  %940 = fadd fast float %938, 5.000000e-01
  %941 = fmul fast float %915, %939
  %942 = fmul fast float %918, %940
  %943 = fmul fast float %933, %941
  %944 = call float @dx.op.tertiary.f32(i32 46, float %934, float %942, float %943)  ; FMad(a,b,c)
  %945 = fmul fast float %932, %941
  %946 = call float @dx.op.tertiary.f32(i32 46, float %933, float %942, float %945)  ; FMad(a,b,c)
  %947 = fadd fast float %924, %944
  %948 = fadd fast float %927, %946
  %949 = icmp ugt i32 %898, 1
  %950 = icmp ugt i32 %896, 33554431
  %951 = or i1 %950, %949
  br i1 %951, label %952, label %977

; <label>:952                                     ; preds = %879
  %953 = add i32 %21, 244
  %954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %953, i32 undef)  ; BufferLoad(srv,index,wot)
  %955 = extractvalue %dx.types.ResRet.i32 %954, 0
  %956 = lshr i32 %955, 16
  %957 = call float @dx.op.legacyF16ToF32(i32 131, i32 %956)  ; LegacyF16ToF32(value)
  %958 = fmul fast float %920, %957
  %959 = call float @dx.op.unary.f32(i32 22, float %958)  ; Frc(value)
  %960 = mul nuw nsw i32 %898, %899
  %961 = uitofp i32 %960 to float
  %962 = fmul fast float %959, %961
  %963 = call float @dx.op.unary.f32(i32 27, float %962)  ; Round_ni(value)
  %964 = fptoui float %963 to i32
  %965 = urem i32 %964, %898
  %966 = udiv i32 %964, %899
  %967 = call float @dx.op.unary.f32(i32 22, float %947)  ; Frc(value)
  %968 = call float @dx.op.unary.f32(i32 22, float %948)  ; Frc(value)
  %969 = uitofp i32 %965 to float
  %970 = uitofp i32 %966 to float
  %971 = fadd fast float %967, %969
  %972 = fadd fast float %968, %970
  %973 = uitofp i32 %898 to float
  %974 = uitofp i32 %899 to float
  %975 = fdiv fast float %971, %973
  %976 = fdiv fast float %972, %974
  br label %977

; <label>:977                                     ; preds = %952, %879
  %978 = phi float [ %975, %952 ], [ %947, %879 ]
  %979 = phi float [ %976, %952 ], [ %948, %879 ]
  %980 = and i32 %873, 16777216
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %1091, label %982

; <label>:982                                     ; preds = %977
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %986 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %987 = fadd fast float %984, %119
  %988 = fadd fast float %985, %120
  %989 = fadd fast float %986, %121
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = call float @dx.op.unary.f32(i32 7, float %991)  ; Saturate(value)
  %993 = icmp eq i32 %22, 65535
  br i1 %993, label %1088, label %994

; <label>:994                                     ; preds = %982
  %995 = lshr i32 %22, 1
  %996 = shl i32 %995, 2
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = and i32 %22, 1
  %1000 = icmp ne i32 %999, 0
  %1001 = lshr i32 %998, 16
  %1002 = and i32 %998, 65535
  %1003 = select i1 %1000, i32 %1001, i32 %1002
  %1004 = icmp eq i32 %1003, 65535
  br i1 %1004, label %1084, label %1005

; <label>:1005                                    ; preds = %994
  %1006 = mul nuw nsw i32 %1003, 40
  %1007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = extractvalue %dx.types.ResRet.f32 %1007, 1
  %1010 = extractvalue %dx.types.ResRet.f32 %1007, 2
  %1011 = add nuw nsw i32 %1006, 12
  %1012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.f32 %1012, 0
  %1014 = extractvalue %dx.types.ResRet.f32 %1012, 1
  %1015 = extractvalue %dx.types.ResRet.f32 %1012, 2
  %1016 = add nuw nsw i32 %1006, 24
  %1017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1016, i32 undef)  ; BufferLoad(srv,index,wot)
  %1018 = extractvalue %dx.types.ResRet.f32 %1017, 0
  %1019 = extractvalue %dx.types.ResRet.f32 %1017, 1
  %1020 = extractvalue %dx.types.ResRet.f32 %1017, 2
  %1021 = add nuw nsw i32 %1006, 36
  %1022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.f32 %1022, 0
  %1024 = fsub fast float %987, %1008
  %1025 = fsub fast float %988, %1009
  %1026 = fsub fast float %989, %1010
  %1027 = fmul fast float %1023, %1024
  %1028 = fmul fast float %1023, %1025
  %1029 = fmul fast float %1023, %1026
  %1030 = call float @dx.op.unary.f32(i32 27, float %1027)  ; Round_ni(value)
  %1031 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1032 = call float @dx.op.unary.f32(i32 27, float %1029)  ; Round_ni(value)
  %1033 = fadd fast float %1030, 5.000000e-01
  %1034 = fadd fast float %1031, 5.000000e-01
  %1035 = fadd fast float %1032, 5.000000e-01
  %1036 = fmul fast float %1033, %1013
  %1037 = fmul fast float %1034, %1014
  %1038 = fmul fast float %1035, %1015
  %1039 = shl i32 %22, 2
  %1040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.i32 %1040, 0
  %1042 = add i32 %1041, 0
  %1043 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1042, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1044 = call float @dx.op.unary.f32(i32 22, float %1036)  ; Frc(value)
  %1045 = call float @dx.op.unary.f32(i32 22, float %1037)  ; Frc(value)
  %1046 = call float @dx.op.unary.f32(i32 22, float %1038)  ; Frc(value)
  %1047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1043, %dx.types.Handle %18, float %1044, float %1045, float %1046, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = fmul fast float %1048, 1.023000e+03
  %1052 = fmul fast float %1049, 1.023000e+03
  %1053 = fmul fast float %1050, 1.023000e+03
  %1054 = fadd fast float %1051, 5.000000e-01
  %1055 = fadd fast float %1052, 5.000000e-01
  %1056 = fadd fast float %1053, 5.000000e-01
  %1057 = call float @dx.op.unary.f32(i32 27, float %1054)  ; Round_ni(value)
  %1058 = call float @dx.op.unary.f32(i32 27, float %1055)  ; Round_ni(value)
  %1059 = call float @dx.op.unary.f32(i32 27, float %1056)  ; Round_ni(value)
  %1060 = fsub fast float %1027, %1030
  %1061 = fsub fast float %1028, %1031
  %1062 = fsub fast float %1029, %1032
  %1063 = fmul fast float %1060, 7.500000e-01
  %1064 = fmul fast float %1061, 7.500000e-01
  %1065 = fmul fast float %1062, 7.500000e-01
  %1066 = fadd fast float %1030, 1.250000e-01
  %1067 = fadd fast float %1066, %1063
  %1068 = fadd fast float %1067, %1057
  %1069 = fadd fast float %1031, 1.250000e-01
  %1070 = fadd fast float %1069, %1064
  %1071 = fadd fast float %1070, %1058
  %1072 = fadd fast float %1032, 1.250000e-01
  %1073 = fadd fast float %1072, %1065
  %1074 = fadd fast float %1073, %1059
  %1075 = fmul fast float %1068, %1018
  %1076 = fmul fast float %1071, %1019
  %1077 = fmul fast float %1074, %1020
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = add i32 %1079, 0
  %1081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1081, %dx.types.Handle %16, float %1075, float %1076, float %1077, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  br label %1084

; <label>:1084                                    ; preds = %1005, %994
  %1085 = phi float [ %1083, %1005 ], [ -1.000000e+00, %994 ]
  %1086 = fadd fast float %1085, %992
  %1087 = call float @dx.op.unary.f32(i32 7, float %1086)  ; Saturate(value)
  br label %1088

; <label>:1088                                    ; preds = %1084, %982
  %1089 = phi float [ %1087, %1084 ], [ %992, %982 ]
  %1090 = fmul fast float %1089, %385
  br label %1091

; <label>:1091                                    ; preds = %1088, %977
  %1092 = phi float [ %1090, %1088 ], [ %385, %977 ]
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = and i32 %1094, 256
  %1096 = icmp eq i32 %1095, 0
  br i1 %1096, label %1143, label %1097

; <label>:1097                                    ; preds = %1091
  %1098 = add i32 %21, 444
  %1099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1098, i32 undef)  ; BufferLoad(srv,index,wot)
  %1100 = extractvalue %dx.types.ResRet.i32 %1099, 0
  %1101 = add i32 %1100, 0
  %1102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1103 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1102, %dx.types.Handle %53, float %978, float %979, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = add i32 %21, 116
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = shl i32 %1107, 4
  %1109 = and i32 %1108, 32752
  %1110 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1109)  ; LegacyF16ToF32(value)
  %1111 = lshr i32 %1107, 7
  %1112 = and i32 %1111, 32752
  %1113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1112)  ; LegacyF16ToF32(value)
  %1114 = fsub fast float 1.000000e+00, %1092
  %1115 = call float @dx.op.binary.f32(i32 35, float %1114, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1116 = bitcast float %1092 to i32
  %1117 = sitofp i32 %1116 to float
  %1118 = fadd fast float %1117, 0xC1CFBF8940000000
  %1119 = fmul fast float %1113, %1118
  %1120 = fadd fast float %1119, 0x41CFBF8940000000
  %1121 = fptosi float %1120 to i32
  %1122 = bitcast i32 %1121 to float
  %1123 = bitcast float %1115 to i32
  %1124 = sitofp i32 %1123 to float
  %1125 = fadd fast float %1124, 0xC1CFBF8940000000
  %1126 = fmul fast float %1125, %1113
  %1127 = fadd fast float %1126, 0x41CFBF8940000000
  %1128 = fptosi float %1127 to i32
  %1129 = bitcast i32 %1128 to float
  %1130 = fmul fast float %1122, %1110
  %1131 = fmul fast float %1129, %1110
  %1132 = fsub fast float %1115, %1130
  %1133 = fadd fast float %1131, %1115
  %1134 = call float @dx.op.unary.f32(i32 7, float %1132)  ; Saturate(value)
  %1135 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1136 = fsub fast float %1104, %1134
  %1137 = fsub fast float %1135, %1134
  %1138 = bitcast float %1137 to i32
  %1139 = sub nsw i32 2129859010, %1138
  %1140 = bitcast i32 %1139 to float
  %1141 = fmul fast float %1140, %1136
  %1142 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  br label %1143

; <label>:1143                                    ; preds = %1097, %1091
  %1144 = phi float [ %1142, %1097 ], [ %1092, %1091 ]
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = and i32 %1146, 128
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1165, label %1149

; <label>:1149                                    ; preds = %1143
  %1150 = add i32 %21, 428
  %1151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1150, i32 undef)  ; BufferLoad(srv,index,wot)
  %1152 = extractvalue %dx.types.ResRet.i32 %1151, 0
  %1153 = add i32 %1152, 0
  %1154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1153, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1155 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1154, %dx.types.Handle %53, float %978, float %979, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1156 = extractvalue %dx.types.ResRet.f32 %1155, 0
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = and i32 %1158, 524288
  %1160 = icmp ne i32 %1159, 0
  %1161 = fcmp fast ogt float %1156, 0x3FE0101020000000
  %1162 = select i1 %1161, float 1.000000e+00, float 0.000000e+00
  %1163 = select i1 %1160, float %1162, float %1156
  %1164 = fmul fast float %1163, %1144
  br label %1165

; <label>:1165                                    ; preds = %1149, %1143
  %1166 = phi float [ %1164, %1149 ], [ %1144, %1143 ]
  %1167 = fcmp fast ult float %1166, 0x3F70101020000000
  br i1 %1167, label %1821, label %1168

; <label>:1168                                    ; preds = %1165
  %1169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1170 = extractvalue %dx.types.ResRet.i32 %1169, 0
  %1171 = and i32 %1170, 16
  %1172 = icmp eq i32 %1171, 0
  br i1 %1172, label %1371, label %1173

; <label>:1173                                    ; preds = %1168
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %21, 380
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = add i32 %1178, 0
  %1180 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1179, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1181 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1180, %dx.types.Handle %52, float %978, float %979, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1182 = extractvalue %dx.types.ResRet.f32 %1181, 0
  %1183 = extractvalue %dx.types.ResRet.f32 %1181, 1
  %1184 = extractvalue %dx.types.ResRet.f32 %1181, 2
  %1185 = extractvalue %dx.types.ResRet.f32 %1181, 3
  %1186 = and i32 %1175, 255
  %1187 = uitofp i32 %1186 to float
  %1188 = lshr i32 %1175, 8
  %1189 = and i32 %1188, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = fmul fast float %1185, %1187
  %1192 = fadd fast float %1191, %1190
  %1193 = fmul fast float %1192, 0x3F70101000000000
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 512
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1206, label %1198

; <label>:1198                                    ; preds = %1173
  %1199 = add i32 %21, 464
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = add i32 %1201, 0
  %1203 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1202, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1204 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1203, %dx.types.Handle %53, float %978, float %979, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1205 = extractvalue %dx.types.ResRet.f32 %1204, 0
  br label %1206

; <label>:1206                                    ; preds = %1198, %1173
  %1207 = phi float [ %1205, %1198 ], [ 1.000000e+00, %1173 ]
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1209, 33554432
  %1211 = icmp eq i32 %1210, 0
  br i1 %1211, label %1318, label %1212

; <label>:1212                                    ; preds = %1206
  %1213 = add i32 %21, 240
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = and i32 %1215, 65535
  %1217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1216)  ; LegacyF16ToF32(value)
  %1218 = lshr i32 %1215, 16
  %1219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1218)  ; LegacyF16ToF32(value)
  %1220 = add i32 %21, 244
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 65535
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %215, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = lshr i32 %1226, 24
  %1228 = uitofp i32 %1227 to float
  %1229 = fmul fast float %1228, 0x3F70101020000000
  %1230 = and i32 %1226, 255
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = lshr i32 %1226, 8
  %1234 = and i32 %1233, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = lshr i32 %1226, 16
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = add i32 %21, 236
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1241, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = lshr i32 %1243, 24
  %1245 = uitofp i32 %1244 to float
  %1246 = fmul fast float %1245, 0x3F70101020000000
  %1247 = and i32 %1243, 255
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = lshr i32 %1243, 8
  %1251 = and i32 %1250, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = lshr i32 %1243, 16
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = bitcast float %1182 to i32
  %1259 = ashr i32 %1258, 1
  %1260 = sub nsw i32 1597463174, %1259
  %1261 = bitcast i32 %1260 to float
  %1262 = fmul fast float %1182, 5.000000e-01
  %1263 = fmul fast float %1261, %1261
  %1264 = fmul fast float %1263, %1262
  %1265 = fsub fast float 1.500000e+00, %1264
  %1266 = fmul fast float %1261, %1182
  %1267 = fmul fast float %1266, %1265
  %1268 = bitcast float %1183 to i32
  %1269 = ashr i32 %1268, 1
  %1270 = sub nsw i32 1597463174, %1269
  %1271 = bitcast i32 %1270 to float
  %1272 = fmul fast float %1183, 5.000000e-01
  %1273 = fmul fast float %1271, %1271
  %1274 = fmul fast float %1273, %1272
  %1275 = fsub fast float 1.500000e+00, %1274
  %1276 = fmul fast float %1271, %1183
  %1277 = fmul fast float %1276, %1275
  %1278 = bitcast float %1184 to i32
  %1279 = ashr i32 %1278, 1
  %1280 = sub nsw i32 1597463174, %1279
  %1281 = bitcast i32 %1280 to float
  %1282 = fmul fast float %1184, 5.000000e-01
  %1283 = fmul fast float %1281, %1281
  %1284 = fmul fast float %1283, %1282
  %1285 = fsub fast float 1.500000e+00, %1284
  %1286 = fmul fast float %1281, %1184
  %1287 = fmul fast float %1286, %1285
  %1288 = fsub fast float %1267, %1249
  %1289 = fsub fast float %1277, %1253
  %1290 = fsub fast float %1287, %1257
  %1291 = fmul fast float %1288, %1217
  %1292 = fmul fast float %1289, %1219
  %1293 = fmul fast float %1290, %1224
  %1294 = fadd fast float %1291, %1232
  %1295 = fadd fast float %1292, %1236
  %1296 = fadd fast float %1293, %1240
  %1297 = call float @dx.op.unary.f32(i32 7, float %1294)  ; Saturate(value)
  %1298 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1299 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1300 = fmul fast float %1297, %1297
  %1301 = fmul fast float %1298, %1298
  %1302 = fmul fast float %1299, %1299
  %1303 = fsub fast float %1300, %1182
  %1304 = fsub fast float %1301, %1183
  %1305 = fsub fast float %1302, %1184
  %1306 = fmul fast float %1303, %1207
  %1307 = fmul fast float %1304, %1207
  %1308 = fmul fast float %1305, %1207
  %1309 = fadd fast float %1306, %1182
  %1310 = fadd fast float %1307, %1183
  %1311 = fadd fast float %1308, %1184
  %1312 = fadd fast float %1229, %1193
  %1313 = fsub fast float %1312, %1246
  %1314 = call float @dx.op.unary.f32(i32 7, float %1313)  ; Saturate(value)
  %1315 = fsub fast float %1314, %1193
  %1316 = fmul fast float %1315, %1207
  %1317 = fadd fast float %1316, %1193
  br label %1371

; <label>:1318                                    ; preds = %1206
  %1319 = and i32 %1209, 134217728
  %1320 = icmp eq i32 %1319, 0
  br i1 %1320, label %1355, label %1321

; <label>:1321                                    ; preds = %1318
  %1322 = call float @dx.op.unary.f32(i32 24, float %220)  ; Sqrt(value)
  %1323 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %1324 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %1325 = fadd fast float %1322, -5.000000e-01
  %1326 = fadd fast float %1323, -5.000000e-01
  %1327 = fadd fast float %1324, -5.000000e-01
  %1328 = fmul fast float %1325, %1207
  %1329 = fmul fast float %1326, %1207
  %1330 = fmul fast float %1327, %1207
  %1331 = fadd fast float %1328, 5.000000e-01
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = fadd fast float %1330, 5.000000e-01
  %1334 = call float @dx.op.unary.f32(i32 24, float %1182)  ; Sqrt(value)
  %1335 = call float @dx.op.unary.f32(i32 24, float %1183)  ; Sqrt(value)
  %1336 = call float @dx.op.unary.f32(i32 24, float %1184)  ; Sqrt(value)
  %1337 = fmul fast float %1331, 2.000000e+00
  %1338 = fsub fast float 1.000000e+00, %1337
  %1339 = fmul fast float %1338, %1334
  %1340 = fadd fast float %1339, %1337
  %1341 = fmul fast float %1340, %1334
  %1342 = fmul fast float %1332, 2.000000e+00
  %1343 = fsub fast float 1.000000e+00, %1342
  %1344 = fmul fast float %1343, %1335
  %1345 = fadd fast float %1344, %1342
  %1346 = fmul fast float %1345, %1335
  %1347 = fmul fast float %1333, 2.000000e+00
  %1348 = fsub fast float 1.000000e+00, %1347
  %1349 = fmul fast float %1348, %1336
  %1350 = fadd fast float %1349, %1347
  %1351 = fmul fast float %1350, %1336
  %1352 = fmul fast float %1341, %1341
  %1353 = fmul fast float %1346, %1346
  %1354 = fmul fast float %1351, %1351
  br label %1371

; <label>:1355                                    ; preds = %1318
  %1356 = fmul fast float %220, %220
  %1357 = fmul fast float %224, %224
  %1358 = fmul fast float %228, %228
  %1359 = fadd fast float %1356, -1.000000e+00
  %1360 = fadd fast float %1357, -1.000000e+00
  %1361 = fadd fast float %1358, -1.000000e+00
  %1362 = fmul fast float %1207, %1359
  %1363 = fmul fast float %1207, %1360
  %1364 = fmul fast float %1207, %1361
  %1365 = fadd fast float %1362, 1.000000e+00
  %1366 = fadd fast float %1363, 1.000000e+00
  %1367 = fadd fast float %1364, 1.000000e+00
  %1368 = fmul fast float %1365, %1182
  %1369 = fmul fast float %1366, %1183
  %1370 = fmul fast float %1367, %1184
  br label %1371

; <label>:1371                                    ; preds = %1355, %1321, %1212, %1168
  %1372 = phi float [ %1317, %1212 ], [ %1193, %1321 ], [ %1193, %1355 ], [ 0x3FA23C0BE0000000, %1168 ]
  %1373 = phi float [ %1309, %1212 ], [ %1352, %1321 ], [ %1368, %1355 ], [ 1.000000e+00, %1168 ]
  %1374 = phi float [ %1310, %1212 ], [ %1353, %1321 ], [ %1369, %1355 ], [ 1.000000e+00, %1168 ]
  %1375 = phi float [ %1311, %1212 ], [ %1354, %1321 ], [ %1370, %1355 ], [ 1.000000e+00, %1168 ]
  %1376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1377 = extractvalue %dx.types.CBufRet.i32 %1376, 1
  %1378 = and i32 %1377, 1
  %1379 = icmp ne i32 %1378, 0
  %1380 = add i32 %21, 356
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = and i32 %1382, 32
  %1384 = icmp ne i32 %1383, 0
  %1385 = and i1 %1379, %1384
  %1386 = select i1 %1385, float 1.000000e+00, float %1373
  %1387 = select i1 %1385, float 0x3FD3333340000000, float %1374
  %1388 = select i1 %1385, float 0x3FD3333340000000, float %1375
  %1389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1390 = extractvalue %dx.types.ResRet.i32 %1389, 0
  %1391 = and i32 %1390, 32
  %1392 = icmp eq i32 %1391, 0
  br i1 %1392, label %1465, label %1393

; <label>:1393                                    ; preds = %1371
  %1394 = add i32 %21, 108
  %1395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1394, i32 undef)  ; BufferLoad(srv,index,wot)
  %1396 = extractvalue %dx.types.ResRet.i32 %1395, 0
  %1397 = add i32 %21, 396
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = add i32 %1399, 0
  %1401 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1400, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1402 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1401, %dx.types.Handle %52, float %978, float %979, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1403 = extractvalue %dx.types.ResRet.f32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.f32 %1402, 1
  %1405 = extractvalue %dx.types.ResRet.f32 %1402, 2
  %1406 = extractvalue %dx.types.ResRet.f32 %1402, 3
  %1407 = and i32 %1396, 255
  %1408 = uitofp i32 %1407 to float
  %1409 = lshr i32 %1396, 8
  %1410 = and i32 %1409, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = lshr i32 %1396, 16
  %1413 = and i32 %1412, 255
  %1414 = uitofp i32 %1413 to float
  %1415 = fmul fast float %1414, 0x3F70101000000000
  %1416 = fmul fast float %1403, %1408
  %1417 = fadd fast float %1416, %1411
  %1418 = fmul fast float %1417, 0x3F70101000000000
  %1419 = fadd fast float %1404, -5.000000e-01
  %1420 = fadd fast float %1406, -5.000000e-01
  %1421 = fmul fast float %1419, %1415
  %1422 = fmul fast float %1420, %1415
  %1423 = fadd fast float %1421, 5.000000e-01
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = fmul fast float %1423, 2.000000e+00
  %1426 = fadd fast float %1425, -1.000000e+00
  %1427 = fmul fast float %1424, 2.000000e+00
  %1428 = fadd fast float %1427, -1.000000e+00
  %1429 = fadd fast float %1426, %1428
  %1430 = fmul fast float %1429, 5.000000e-01
  %1431 = fsub fast float %1426, %1428
  %1432 = fmul fast float %1431, 5.000000e-01
  %1433 = call float @dx.op.unary.f32(i32 6, float %1430)  ; FAbs(value)
  %1434 = fsub fast float 1.000000e+00, %1433
  %1435 = call float @dx.op.unary.f32(i32 6, float %1432)  ; FAbs(value)
  %1436 = fsub fast float %1434, %1435
  %1437 = call float @dx.op.dot3.f32(i32 55, float %1430, float %1432, float %1436, float %1430, float %1432, float %1436)  ; Dot3(ax,ay,az,bx,by,bz)
  %1438 = call float @dx.op.unary.f32(i32 25, float %1437)  ; Rsqrt(value)
  %1439 = fmul fast float %1430, %1438
  %1440 = fmul fast float %1432, %1438
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = and i32 %1442, 67108864
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1461, label %1445

; <label>:1445                                    ; preds = %1393
  %1446 = add i32 %21, 296
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 65535
  %1450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1449)  ; LegacyF16ToF32(value)
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 65535
  %1454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1453)  ; LegacyF16ToF32(value)
  %1455 = lshr i32 %1448, 16
  %1456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1455)  ; LegacyF16ToF32(value)
  %1457 = fsub fast float %1418, %1456
  %1458 = fmul fast float %1457, %1450
  %1459 = fadd fast float %1458, %1454
  %1460 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  br label %1461

; <label>:1461                                    ; preds = %1445, %1393
  %1462 = phi float [ %1460, %1445 ], [ %1418, %1393 ]
  %1463 = call float @dx.op.dot2.f32(i32 54, float %1439, float %1440, float %882, float %883)  ; Dot2(ax,ay,bx,by)
  %1464 = call float @dx.op.dot2.f32(i32 54, float %1439, float %1440, float %884, float %885)  ; Dot2(ax,ay,bx,by)
  br label %1465

; <label>:1465                                    ; preds = %1461, %1371
  %1466 = phi float [ %1462, %1461 ], [ 0x3FD6666660000000, %1371 ]
  %1467 = phi float [ %1463, %1461 ], [ 0.000000e+00, %1371 ]
  %1468 = phi float [ %1464, %1461 ], [ 0.000000e+00, %1371 ]
  %1469 = phi float [ %1405, %1461 ], [ 1.000000e+00, %1371 ]
  %1470 = add i32 %21, 176
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = lshr i32 %1472, 22
  %1474 = shl nuw nsw i32 %1473, 5
  %1475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1474)  ; LegacyF16ToF32(value)
  %1476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1477 = extractvalue %dx.types.ResRet.i32 %1476, 0
  %1478 = and i32 %1477, 64
  %1479 = icmp eq i32 %1478, 0
  br i1 %1479, label %1513, label %1480

; <label>:1480                                    ; preds = %1465
  %1481 = add i32 %21, 412
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1481, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = add i32 %1483, 0
  %1485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 131072
  %1489 = icmp eq i32 %1488, 0
  %1490 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1485, %dx.types.Handle %52, float %978, float %979, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1491 = extractvalue %dx.types.ResRet.f32 %1490, 0
  %1492 = extractvalue %dx.types.ResRet.f32 %1490, 1
  %1493 = extractvalue %dx.types.ResRet.f32 %1490, 2
  %1494 = fmul fast float %1491, %208
  %1495 = fmul fast float %1492, %211
  %1496 = fmul fast float %1493, %214
  br i1 %1489, label %1503, label %1497

; <label>:1497                                    ; preds = %1480
  %1498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1499 = extractvalue %dx.types.CBufRet.f32 %1498, 0
  %1500 = fmul fast float %1499, %1494
  %1501 = fmul fast float %1499, %1495
  %1502 = fmul fast float %1499, %1496
  br label %1503

; <label>:1503                                    ; preds = %1497, %1480
  %1504 = phi float [ %1500, %1497 ], [ %1494, %1480 ]
  %1505 = phi float [ %1501, %1497 ], [ %1495, %1480 ]
  %1506 = phi float [ %1502, %1497 ], [ %1496, %1480 ]
  %1507 = fmul fast float %1504, %1475
  %1508 = select i1 %160, float %1507, float %1504
  %1509 = call float @dx.op.dot3.f32(i32 55, float %1508, float %1505, float %1506, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1510 = select i1 %160, float 0.000000e+00, float %1504
  %1511 = select i1 %160, float %1509, float %1505
  %1512 = select i1 %160, float 0.000000e+00, float %1506
  br label %1513

; <label>:1513                                    ; preds = %1503, %1465
  %1514 = phi float [ %1510, %1503 ], [ 0.000000e+00, %1465 ]
  %1515 = phi float [ %1511, %1503 ], [ 0.000000e+00, %1465 ]
  %1516 = phi float [ %1512, %1503 ], [ 0.000000e+00, %1465 ]
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 1024
  %1520 = icmp eq i32 %1519, 0
  br i1 %1520, label %1551, label %1521

; <label>:1521                                    ; preds = %1513
  %1522 = add i32 %21, 168
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1522, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 255
  %1526 = uitofp i32 %1525 to float
  %1527 = fmul fast float %1526, 0x3F70101020000000
  %1528 = lshr i32 %1524, 8
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = fmul fast float %1530, 0x3F70101020000000
  %1532 = lshr i32 %1524, 16
  %1533 = and i32 %1532, 255
  %1534 = uitofp i32 %1533 to float
  %1535 = fmul fast float %1534, 0x3F70101020000000
  %1536 = fmul fast float %1527, %1527
  %1537 = fmul fast float %1531, %1531
  %1538 = fmul fast float %1535, %1535
  %1539 = add i32 %21, 480
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = add i32 %1541, 0
  %1543 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1542, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1544 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1543, %dx.types.Handle %53, float %978, float %979, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1545 = extractvalue %dx.types.ResRet.f32 %1544, 0
  %1546 = extractvalue %dx.types.ResRet.f32 %1544, 1
  %1547 = extractvalue %dx.types.ResRet.f32 %1544, 2
  %1548 = fmul fast float %1536, %1545
  %1549 = fmul fast float %1537, %1546
  %1550 = fmul fast float %1538, %1547
  br label %1551

; <label>:1551                                    ; preds = %1521, %1513
  %1552 = phi float [ %1548, %1521 ], [ 0.000000e+00, %1513 ]
  %1553 = phi float [ %1549, %1521 ], [ 0.000000e+00, %1513 ]
  %1554 = phi float [ %1550, %1521 ], [ 0.000000e+00, %1513 ]
  %1555 = fcmp fast ogt float %1552, 0.000000e+00
  %1556 = fcmp fast ogt float %1553, 0.000000e+00
  %1557 = fcmp fast ogt float %1554, 0.000000e+00
  %1558 = call float @dx.op.unary.f32(i32 23, float %1552)  ; Log(value)
  %1559 = call float @dx.op.unary.f32(i32 23, float %1553)  ; Log(value)
  %1560 = call float @dx.op.unary.f32(i32 23, float %1554)  ; Log(value)
  %1561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1562 = extractvalue %dx.types.ResRet.i32 %1561, 0
  %1563 = lshr i32 %1562, 7
  %1564 = and i32 %1563, 32752
  %1565 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1564)  ; LegacyF16ToF32(value)
  %1566 = fmul fast float %1558, 0xBFE62E4300000000
  %1567 = fmul fast float %1566, %1565
  %1568 = fmul fast float %1559, 0xBFE62E4300000000
  %1569 = fmul fast float %1568, %1565
  %1570 = fmul fast float %1560, 0xBFE62E4300000000
  %1571 = fmul fast float %1570, %1565
  %1572 = select i1 %1555, float %1567, float 1.270000e+02
  %1573 = select i1 %1556, float %1569, float 1.270000e+02
  %1574 = select i1 %1557, float %1571, float 1.270000e+02
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = and i32 %1576, 10240
  %1578 = icmp eq i32 %1577, 0
  br i1 %1578, label %1599, label %1579

; <label>:1579                                    ; preds = %1551
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 2048
  %1583 = icmp eq i32 %1582, 0
  br i1 %1583, label %1599, label %1584

; <label>:1584                                    ; preds = %1579
  %1585 = add i32 %21, 496
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = add i32 %1587, 0
  %1589 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1588, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1590 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1589, %dx.types.Handle %53, float %978, float %979, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1591 = extractvalue %dx.types.ResRet.f32 %1590, 3
  %1592 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1470, i32 undef)  ; BufferLoad(srv,index,wot)
  %1593 = extractvalue %dx.types.ResRet.i32 %1592, 0
  %1594 = shl i32 %1593, 4
  %1595 = and i32 %1594, 32752
  %1596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1595)  ; LegacyF16ToF32(value)
  %1597 = fmul fast float %1596, %1591
  %1598 = call float @dx.op.binary.f32(i32 35, float %1597, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1599

; <label>:1599                                    ; preds = %1584, %1579, %1551
  %1600 = phi float [ %1598, %1584 ], [ 0x3F70101020000000, %1579 ], [ 0x3F70101020000000, %1551 ]
  %1601 = add i32 %21, 112
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = and i32 %1603, 255
  %1605 = uitofp i32 %1604 to float
  %1606 = lshr i32 %1603, 8
  %1607 = and i32 %1606, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = call float @dx.op.dot3.f32(i32 55, float %1386, float %1387, float %1388, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1610 = fmul fast float %1608, %1609
  %1611 = fadd fast float %1610, %1605
  %1612 = fmul fast float %1611, 0x3F70101020000000
  %1613 = call float @dx.op.unary.f32(i32 7, float %1612)  ; Saturate(value)
  br i1 %870, label %1614, label %1649

; <label>:1614                                    ; preds = %1599
  %1615 = fmul fast float %1600, 2.000000e+00
  %1616 = fcmp fast olt float %1572, 1.270000e+02
  %1617 = fcmp fast olt float %1573, 1.270000e+02
  %1618 = fcmp fast olt float %1574, 1.270000e+02
  %1619 = fmul fast float %1572, 0xBFF7154760000000
  %1620 = fmul fast float %1619, %1615
  %1621 = fmul fast float %1573, 0xBFF7154760000000
  %1622 = fmul fast float %1621, %1615
  %1623 = fmul fast float %1574, 0xBFF7154760000000
  %1624 = fmul fast float %1623, %1615
  %1625 = call float @dx.op.unary.f32(i32 21, float %1620)  ; Exp(value)
  %1626 = call float @dx.op.unary.f32(i32 21, float %1622)  ; Exp(value)
  %1627 = call float @dx.op.unary.f32(i32 21, float %1624)  ; Exp(value)
  %1628 = call float @dx.op.unary.f32(i32 7, float %1625)  ; Saturate(value)
  %1629 = call float @dx.op.unary.f32(i32 7, float %1626)  ; Saturate(value)
  %1630 = call float @dx.op.unary.f32(i32 7, float %1627)  ; Saturate(value)
  %1631 = fadd fast float %1628, -1.000000e+00
  %1632 = select i1 %1616, float %1631, float -1.000000e+00
  %1633 = fadd fast float %1629, -1.000000e+00
  %1634 = select i1 %1617, float %1633, float -1.000000e+00
  %1635 = fadd fast float %1630, -1.000000e+00
  %1636 = select i1 %1618, float %1635, float -1.000000e+00
  %1637 = fmul fast float %1632, %1166
  %1638 = fmul fast float %1634, %1166
  %1639 = fmul fast float %1636, %1166
  %1640 = fadd fast float %1637, 1.000000e+00
  %1641 = fadd fast float %1638, 1.000000e+00
  %1642 = fadd fast float %1639, 1.000000e+00
  %1643 = fmul fast float %1640, %858
  %1644 = fmul fast float %1641, %859
  %1645 = fmul fast float %1642, %860
  %1646 = fmul fast float %1640, %861
  %1647 = fmul fast float %1641, %862
  %1648 = fmul fast float %1642, %863
  br label %1649

; <label>:1649                                    ; preds = %1614, %1599
  %1650 = phi float [ %1643, %1614 ], [ %858, %1599 ]
  %1651 = phi float [ %1644, %1614 ], [ %859, %1599 ]
  %1652 = phi float [ %1645, %1614 ], [ %860, %1599 ]
  %1653 = phi float [ %1646, %1614 ], [ %861, %1599 ]
  %1654 = phi float [ %1647, %1614 ], [ %862, %1599 ]
  %1655 = phi float [ %1648, %1614 ], [ %863, %1599 ]
  %1656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1657 = extractvalue %dx.types.ResRet.i32 %1656, 0
  %1658 = and i32 %1657, 3
  %1659 = icmp eq i32 %1658, 3
  br i1 %1659, label %1738, label %1660

; <label>:1660                                    ; preds = %1649
  %1661 = and i32 %1657, 16
  %1662 = icmp ne i32 %1661, 0
  %1663 = select i1 %1662, float %1166, float 0.000000e+00
  %1664 = icmp eq i32 %1658, 0
  br i1 %1664, label %1665, label %1693

; <label>:1665                                    ; preds = %1660
  %1666 = and i32 %1657, 64
  %1667 = icmp ne i32 %1666, 0
  %1668 = select i1 %1667, float %1166, float 0.000000e+00
  %1669 = fsub fast float %1386, %1650
  %1670 = fsub fast float %1387, %1651
  %1671 = fsub fast float %1388, %1652
  %1672 = fmul fast float %1663, %1669
  %1673 = fmul fast float %1663, %1670
  %1674 = fmul fast float %1663, %1671
  %1675 = fadd fast float %1672, %1650
  %1676 = fadd fast float %1673, %1651
  %1677 = fadd fast float %1674, %1652
  %1678 = fsub fast float %1372, %864
  %1679 = fmul fast float %1663, %1678
  %1680 = fadd fast float %1679, %864
  %1681 = fsub fast float %1514, %1653
  %1682 = fsub fast float %1515, %1654
  %1683 = fsub fast float %1516, %1655
  %1684 = fmul fast float %1668, %1681
  %1685 = fmul fast float %1668, %1682
  %1686 = fmul fast float %1668, %1683
  %1687 = fadd fast float %1684, %1653
  %1688 = fadd fast float %1685, %1654
  %1689 = fadd fast float %1686, %1655
  %1690 = fsub fast float %1613, %868
  %1691 = fmul fast float %1663, %1690
  %1692 = fadd fast float %1691, %868
  br label %1738

; <label>:1693                                    ; preds = %1660
  %1694 = icmp eq i32 %1658, 1
  br i1 %1694, label %1695, label %1708

; <label>:1695                                    ; preds = %1693
  %1696 = fadd fast float %1386, -1.000000e+00
  %1697 = fadd fast float %1387, -1.000000e+00
  %1698 = fadd fast float %1388, -1.000000e+00
  %1699 = fmul fast float %1663, %1696
  %1700 = fmul fast float %1663, %1697
  %1701 = fmul fast float %1663, %1698
  %1702 = fadd fast float %1699, 1.000000e+00
  %1703 = fadd fast float %1700, 1.000000e+00
  %1704 = fadd fast float %1701, 1.000000e+00
  %1705 = fmul fast float %1702, %1650
  %1706 = fmul fast float %1703, %1651
  %1707 = fmul fast float %1704, %1652
  br label %1738

; <label>:1708                                    ; preds = %1693
  %1709 = icmp eq i32 %1658, 2
  br i1 %1709, label %1710, label %1738

; <label>:1710                                    ; preds = %1708
  %1711 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1712 = call float @dx.op.unary.f32(i32 24, float %1387)  ; Sqrt(value)
  %1713 = call float @dx.op.unary.f32(i32 24, float %1388)  ; Sqrt(value)
  %1714 = fadd fast float %1711, -5.000000e-01
  %1715 = fadd fast float %1712, -5.000000e-01
  %1716 = fadd fast float %1713, -5.000000e-01
  %1717 = fmul fast float %1714, %1663
  %1718 = fmul fast float %1715, %1663
  %1719 = fmul fast float %1716, %1663
  %1720 = fadd fast float %1717, 5.000000e-01
  %1721 = fadd fast float %1718, 5.000000e-01
  %1722 = fadd fast float %1719, 5.000000e-01
  %1723 = fmul fast float %1720, 2.000000e+00
  %1724 = fsub fast float 1.000000e+00, %1723
  %1725 = fmul fast float %1724, %1650
  %1726 = fadd fast float %1725, %1723
  %1727 = fmul fast float %1726, %1650
  %1728 = fmul fast float %1721, 2.000000e+00
  %1729 = fsub fast float 1.000000e+00, %1728
  %1730 = fmul fast float %1729, %1651
  %1731 = fadd fast float %1730, %1728
  %1732 = fmul fast float %1731, %1651
  %1733 = fmul fast float %1722, 2.000000e+00
  %1734 = fsub fast float 1.000000e+00, %1733
  %1735 = fmul fast float %1734, %1652
  %1736 = fadd fast float %1735, %1733
  %1737 = fmul fast float %1736, %1652
  br label %1738

; <label>:1738                                    ; preds = %1710, %1708, %1695, %1665, %1649
  %1739 = phi float [ %1650, %1649 ], [ %1727, %1710 ], [ %1650, %1708 ], [ %1705, %1695 ], [ %1675, %1665 ]
  %1740 = phi float [ %1651, %1649 ], [ %1732, %1710 ], [ %1651, %1708 ], [ %1706, %1695 ], [ %1676, %1665 ]
  %1741 = phi float [ %1652, %1649 ], [ %1737, %1710 ], [ %1652, %1708 ], [ %1707, %1695 ], [ %1677, %1665 ]
  %1742 = phi float [ %1653, %1649 ], [ %1653, %1710 ], [ %1653, %1708 ], [ %1653, %1695 ], [ %1687, %1665 ]
  %1743 = phi float [ %1654, %1649 ], [ %1654, %1710 ], [ %1654, %1708 ], [ %1654, %1695 ], [ %1688, %1665 ]
  %1744 = phi float [ %1655, %1649 ], [ %1655, %1710 ], [ %1655, %1708 ], [ %1655, %1695 ], [ %1689, %1665 ]
  %1745 = phi float [ %864, %1649 ], [ %864, %1710 ], [ %864, %1708 ], [ %864, %1695 ], [ %1680, %1665 ]
  %1746 = phi float [ %868, %1649 ], [ %868, %1710 ], [ %868, %1708 ], [ %868, %1695 ], [ %1692, %1665 ]
  %1747 = and i32 %1657, 12
  %1748 = icmp eq i32 %1747, 12
  br i1 %1748, label %1821, label %1749

; <label>:1749                                    ; preds = %1738
  %1750 = and i32 %1657, 2097184
  %1751 = icmp eq i32 %1750, 2097184
  %1752 = select i1 %1751, float %1166, float 0.000000e+00
  %1753 = and i32 %1657, 4194336
  %1754 = icmp eq i32 %1753, 4194336
  %1755 = select i1 %1754, float %1166, float 0.000000e+00
  %1756 = and i32 %1657, 8388640
  %1757 = icmp eq i32 %1756, 8388640
  %1758 = select i1 %1757, float %1166, float 0.000000e+00
  %1759 = icmp eq i32 %1747, 0
  br i1 %1759, label %1760, label %1773

; <label>:1760                                    ; preds = %1749
  %1761 = fsub fast float %1467, %856
  %1762 = fsub fast float %1468, %857
  %1763 = fmul fast float %1752, %1761
  %1764 = fmul fast float %1752, %1762
  %1765 = fadd fast float %1763, %856
  %1766 = fadd fast float %1764, %857
  %1767 = fsub fast float %1469, %867
  %1768 = fmul fast float %1755, %1767
  %1769 = fadd fast float %1768, %867
  %1770 = fsub fast float %1466, %866
  %1771 = fmul fast float %1758, %1770
  %1772 = fadd fast float %1771, %866
  br label %1821

; <label>:1773                                    ; preds = %1749
  %1774 = icmp eq i32 %1747, 4
  br i1 %1774, label %1775, label %1807

; <label>:1775                                    ; preds = %1773
  %1776 = fmul fast float %1752, %1467
  %1777 = fmul fast float %1752, %1468
  %1778 = fadd fast float %1776, %856
  %1779 = fadd fast float %1777, %857
  %1780 = call float @dx.op.binary.f32(i32 36, float %867, float %1469)  ; FMin(a,b)
  %1781 = fsub fast float %1780, %867
  %1782 = fmul fast float %1781, %1755
  %1783 = fadd fast float %1782, %867
  %1784 = fadd fast float %1466, %866
  %1785 = fmul fast float %1784, 0x3FF337FAE0000000
  %1786 = fmul fast float %866, %866
  %1787 = fmul fast float %1466, %1466
  %1788 = fadd fast float %1787, %1786
  %1789 = fmul fast float %1788, 0x3FE5152B00000000
  %1790 = fmul fast float %866, 0xBFCC1F85E0000000
  %1791 = fmul fast float %1790, %1466
  %1792 = fadd fast float %1791, 0xBFE1363700000000
  %1793 = fadd fast float %1792, %1785
  %1794 = fsub fast float %1793, %1789
  %1795 = fmul fast float %1784, 0x3FBA6F0D00000000
  %1796 = fmul fast float %1788, 0x3FD0432880000000
  %1797 = fmul fast float %866, 0xBFEF110800000000
  %1798 = fmul fast float %1797, %1466
  %1799 = fadd fast float %1798, 1.000000e+00
  %1800 = fsub fast float %1799, %1795
  %1801 = fadd fast float %1800, %1796
  %1802 = fdiv fast float %1794, %1801
  %1803 = call float @dx.op.unary.f32(i32 7, float %1802)  ; Saturate(value)
  %1804 = fsub fast float %1803, %866
  %1805 = fmul fast float %1804, %1758
  %1806 = fadd fast float %1805, %866
  br label %1821

; <label>:1807                                    ; preds = %1773
  %1808 = icmp eq i32 %1747, 8
  br i1 %1808, label %1809, label %1821

; <label>:1809                                    ; preds = %1807
  %1810 = fmul fast float %1752, %1467
  %1811 = fmul fast float %1752, %1468
  %1812 = fadd fast float %1810, %856
  %1813 = fadd fast float %1811, %857
  %1814 = call float @dx.op.binary.f32(i32 36, float %867, float %1469)  ; FMin(a,b)
  %1815 = fsub fast float %1814, %867
  %1816 = fmul fast float %1815, %1755
  %1817 = fadd fast float %1816, %867
  %1818 = fsub fast float %1466, %866
  %1819 = fmul fast float %1758, %1818
  %1820 = fadd fast float %1819, %866
  br label %1821

; <label>:1821                                    ; preds = %1809, %1807, %1775, %1760, %1738, %1165, %869, %855
  %1822 = phi float [ %856, %1738 ], [ %856, %1165 ], [ %856, %855 ], [ %1812, %1809 ], [ %856, %1807 ], [ %1778, %1775 ], [ %1765, %1760 ], [ %856, %869 ]
  %1823 = phi float [ %857, %1738 ], [ %857, %1165 ], [ %857, %855 ], [ %1813, %1809 ], [ %857, %1807 ], [ %1779, %1775 ], [ %1766, %1760 ], [ %857, %869 ]
  %1824 = phi float [ %1739, %1738 ], [ %858, %1165 ], [ %858, %855 ], [ %1739, %1809 ], [ %1739, %1807 ], [ %1739, %1775 ], [ %1739, %1760 ], [ %858, %869 ]
  %1825 = phi float [ %1740, %1738 ], [ %859, %1165 ], [ %859, %855 ], [ %1740, %1809 ], [ %1740, %1807 ], [ %1740, %1775 ], [ %1740, %1760 ], [ %859, %869 ]
  %1826 = phi float [ %1741, %1738 ], [ %860, %1165 ], [ %860, %855 ], [ %1741, %1809 ], [ %1741, %1807 ], [ %1741, %1775 ], [ %1741, %1760 ], [ %860, %869 ]
  %1827 = phi float [ %1742, %1738 ], [ %861, %1165 ], [ %861, %855 ], [ %1742, %1809 ], [ %1742, %1807 ], [ %1742, %1775 ], [ %1742, %1760 ], [ %861, %869 ]
  %1828 = phi float [ %1743, %1738 ], [ %862, %1165 ], [ %862, %855 ], [ %1743, %1809 ], [ %1743, %1807 ], [ %1743, %1775 ], [ %1743, %1760 ], [ %862, %869 ]
  %1829 = phi float [ %1744, %1738 ], [ %863, %1165 ], [ %863, %855 ], [ %1744, %1809 ], [ %1744, %1807 ], [ %1744, %1775 ], [ %1744, %1760 ], [ %863, %869 ]
  %1830 = phi float [ %1745, %1738 ], [ %864, %1165 ], [ %864, %855 ], [ %1745, %1809 ], [ %1745, %1807 ], [ %1745, %1775 ], [ %1745, %1760 ], [ %864, %869 ]
  %1831 = phi float [ %866, %1738 ], [ %866, %1165 ], [ %866, %855 ], [ %1820, %1809 ], [ %866, %1807 ], [ %1806, %1775 ], [ %1772, %1760 ], [ %866, %869 ]
  %1832 = phi float [ %867, %1738 ], [ %867, %1165 ], [ %867, %855 ], [ %1817, %1809 ], [ %867, %1807 ], [ %1783, %1775 ], [ %1769, %1760 ], [ %867, %869 ]
  %1833 = phi float [ %1746, %1738 ], [ %868, %1165 ], [ %868, %855 ], [ %1746, %1809 ], [ %1746, %1807 ], [ %1746, %1775 ], [ %1746, %1760 ], [ %868, %869 ]
  br i1 %335, label %2786, label %1834

; <label>:1834                                    ; preds = %1821
  %1835 = icmp ult i32 %388, 3
  %1836 = add i32 %21, 56
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = add i32 %21, 60
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = or i32 %1841, %1838
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %2786, label %1844

; <label>:1844                                    ; preds = %1834
  %1845 = and i32 %1838, 262144
  %1846 = icmp ne i32 %1845, 0
  %1847 = select i1 %1846, float %24, float 1.000000e+00
  %1848 = select i1 %1846, float %25, float 0.000000e+00
  %1849 = select i1 %1846, float %26, float 0.000000e+00
  %1850 = select i1 %1846, float %27, float 1.000000e+00
  %1851 = select i1 %1846, float %28, float %44
  %1852 = select i1 %1846, float %29, float %45
  %1853 = add i32 %21, 316
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = lshr i32 %1855, 16
  %1857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1856)  ; LegacyF16ToF32(value)
  %1858 = fmul fast float %1857, 0x3F50624DE0000000
  %1859 = add i32 %21, 120
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = lshr i32 %1861, 16
  %1863 = and i32 %1862, 255
  %1864 = lshr i32 %1861, 24
  %1865 = add i32 %21, 324
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 65535
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = lshr i32 %1867, 16
  %1871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1870)  ; LegacyF16ToF32(value)
  %1872 = add i32 %21, 64
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = lshr i32 %1874, 22
  %1876 = shl nuw nsw i32 %1875, 5
  %1877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1876)  ; LegacyF16ToF32(value)
  %1878 = shl i32 %1874, 4
  %1879 = and i32 %1878, 32752
  %1880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1879)  ; LegacyF16ToF32(value)
  %1881 = lshr i32 %1874, 7
  %1882 = and i32 %1881, 32752
  %1883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1882)  ; LegacyF16ToF32(value)
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 3
  %1886 = fmul fast float %1885, 1.000000e+03
  %1887 = fmul fast float %285, %1886
  %1888 = call float @dx.op.unary.f32(i32 22, float %1887)  ; Frc(value)
  %1889 = fadd fast float %1888, %275
  %1890 = fmul fast float %286, %1886
  %1891 = call float @dx.op.unary.f32(i32 22, float %1890)  ; Frc(value)
  %1892 = fadd fast float %1891, %277
  %1893 = fmul fast float %1858, %1886
  %1894 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1895 = fmul fast float %1894, 0x401921FB60000000
  %1896 = fadd fast float %1895, %1877
  %1897 = call float @dx.op.unary.f32(i32 13, float %1896)  ; Sin(value)
  %1898 = call float @dx.op.unary.f32(i32 12, float %1896)  ; Cos(value)
  %1899 = fsub fast float -0.000000e+00, %1897
  %1900 = fadd fast float %1851, -5.000000e-01
  %1901 = fadd fast float %1852, -5.000000e-01
  %1902 = fmul fast float %1869, %1900
  %1903 = fmul fast float %1871, %1901
  %1904 = fadd fast float %1902, 5.000000e-01
  %1905 = fadd fast float %1903, 5.000000e-01
  %1906 = fmul fast float %1880, %1904
  %1907 = fmul fast float %1883, %1905
  %1908 = fmul fast float %1898, %1906
  %1909 = call float @dx.op.tertiary.f32(i32 46, float %1899, float %1907, float %1908)  ; FMad(a,b,c)
  %1910 = fmul fast float %1897, %1906
  %1911 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %1907, float %1910)  ; FMad(a,b,c)
  %1912 = fadd fast float %1889, %1909
  %1913 = fadd fast float %1892, %1911
  %1914 = icmp ugt i32 %1863, 1
  %1915 = icmp ugt i32 %1861, 33554431
  %1916 = or i1 %1915, %1914
  br i1 %1916, label %1917, label %1942

; <label>:1917                                    ; preds = %1844
  %1918 = add i32 %21, 260
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = lshr i32 %1920, 16
  %1922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1921)  ; LegacyF16ToF32(value)
  %1923 = fmul fast float %1885, %1922
  %1924 = call float @dx.op.unary.f32(i32 22, float %1923)  ; Frc(value)
  %1925 = mul nuw nsw i32 %1863, %1864
  %1926 = uitofp i32 %1925 to float
  %1927 = fmul fast float %1924, %1926
  %1928 = call float @dx.op.unary.f32(i32 27, float %1927)  ; Round_ni(value)
  %1929 = fptoui float %1928 to i32
  %1930 = urem i32 %1929, %1863
  %1931 = udiv i32 %1929, %1864
  %1932 = call float @dx.op.unary.f32(i32 22, float %1912)  ; Frc(value)
  %1933 = call float @dx.op.unary.f32(i32 22, float %1913)  ; Frc(value)
  %1934 = uitofp i32 %1930 to float
  %1935 = uitofp i32 %1931 to float
  %1936 = fadd fast float %1932, %1934
  %1937 = fadd fast float %1933, %1935
  %1938 = uitofp i32 %1863 to float
  %1939 = uitofp i32 %1864 to float
  %1940 = fdiv fast float %1936, %1938
  %1941 = fdiv fast float %1937, %1939
  br label %1942

; <label>:1942                                    ; preds = %1917, %1844
  %1943 = phi float [ %1940, %1917 ], [ %1912, %1844 ]
  %1944 = phi float [ %1941, %1917 ], [ %1913, %1844 ]
  %1945 = and i32 %1838, 16777216
  %1946 = icmp eq i32 %1945, 0
  br i1 %1946, label %2056, label %1947

; <label>:1947                                    ; preds = %1942
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1951 = extractvalue %dx.types.CBufRet.f32 %1948, 2
  %1952 = fadd fast float %1949, %119
  %1953 = fadd fast float %1950, %120
  %1954 = fadd fast float %1951, %121
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = icmp eq i32 %22, 65535
  br i1 %1958, label %2053, label %1959

; <label>:1959                                    ; preds = %1947
  %1960 = lshr i32 %22, 1
  %1961 = shl i32 %1960, 2
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = and i32 %22, 1
  %1965 = icmp ne i32 %1964, 0
  %1966 = lshr i32 %1963, 16
  %1967 = and i32 %1963, 65535
  %1968 = select i1 %1965, i32 %1966, i32 %1967
  %1969 = icmp eq i32 %1968, 65535
  br i1 %1969, label %2049, label %1970

; <label>:1970                                    ; preds = %1959
  %1971 = mul nuw nsw i32 %1968, 40
  %1972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.ResRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.ResRet.f32 %1972, 2
  %1976 = add nuw nsw i32 %1971, 12
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.ResRet.f32 %1977, 1
  %1980 = extractvalue %dx.types.ResRet.f32 %1977, 2
  %1981 = add nuw nsw i32 %1971, 24
  %1982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.ResRet.f32 %1982, 1
  %1985 = extractvalue %dx.types.ResRet.f32 %1982, 2
  %1986 = add nuw nsw i32 %1971, 36
  %1987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = fsub fast float %1952, %1973
  %1990 = fsub fast float %1953, %1974
  %1991 = fsub fast float %1954, %1975
  %1992 = fmul fast float %1988, %1989
  %1993 = fmul fast float %1988, %1990
  %1994 = fmul fast float %1988, %1991
  %1995 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1996 = call float @dx.op.unary.f32(i32 27, float %1993)  ; Round_ni(value)
  %1997 = call float @dx.op.unary.f32(i32 27, float %1994)  ; Round_ni(value)
  %1998 = fadd fast float %1995, 5.000000e-01
  %1999 = fadd fast float %1996, 5.000000e-01
  %2000 = fadd fast float %1997, 5.000000e-01
  %2001 = fmul fast float %1998, %1978
  %2002 = fmul fast float %1999, %1979
  %2003 = fmul fast float %2000, %1980
  %2004 = shl i32 %22, 2
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = add i32 %2006, 0
  %2008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2009 = call float @dx.op.unary.f32(i32 22, float %2001)  ; Frc(value)
  %2010 = call float @dx.op.unary.f32(i32 22, float %2002)  ; Frc(value)
  %2011 = call float @dx.op.unary.f32(i32 22, float %2003)  ; Frc(value)
  %2012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2008, %dx.types.Handle %18, float %2009, float %2010, float %2011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.ResRet.f32 %2012, 1
  %2015 = extractvalue %dx.types.ResRet.f32 %2012, 2
  %2016 = fmul fast float %2013, 1.023000e+03
  %2017 = fmul fast float %2014, 1.023000e+03
  %2018 = fmul fast float %2015, 1.023000e+03
  %2019 = fadd fast float %2016, 5.000000e-01
  %2020 = fadd fast float %2017, 5.000000e-01
  %2021 = fadd fast float %2018, 5.000000e-01
  %2022 = call float @dx.op.unary.f32(i32 27, float %2019)  ; Round_ni(value)
  %2023 = call float @dx.op.unary.f32(i32 27, float %2020)  ; Round_ni(value)
  %2024 = call float @dx.op.unary.f32(i32 27, float %2021)  ; Round_ni(value)
  %2025 = fsub fast float %1992, %1995
  %2026 = fsub fast float %1993, %1996
  %2027 = fsub fast float %1994, %1997
  %2028 = fmul fast float %2025, 7.500000e-01
  %2029 = fmul fast float %2026, 7.500000e-01
  %2030 = fmul fast float %2027, 7.500000e-01
  %2031 = fadd fast float %1995, 1.250000e-01
  %2032 = fadd fast float %2031, %2028
  %2033 = fadd fast float %2032, %2022
  %2034 = fadd fast float %1996, 1.250000e-01
  %2035 = fadd fast float %2034, %2029
  %2036 = fadd fast float %2035, %2023
  %2037 = fadd fast float %1997, 1.250000e-01
  %2038 = fadd fast float %2037, %2030
  %2039 = fadd fast float %2038, %2024
  %2040 = fmul fast float %2033, %1983
  %2041 = fmul fast float %2036, %1984
  %2042 = fmul fast float %2039, %1985
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = add i32 %2044, 0
  %2046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2046, %dx.types.Handle %16, float %2040, float %2041, float %2042, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2048 = extractvalue %dx.types.ResRet.f32 %2047, 0
  br label %2049

; <label>:2049                                    ; preds = %1970, %1959
  %2050 = phi float [ %2048, %1970 ], [ -1.000000e+00, %1959 ]
  %2051 = fadd fast float %2050, %1957
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  br label %2053

; <label>:2053                                    ; preds = %2049, %1947
  %2054 = phi float [ %2052, %2049 ], [ %1957, %1947 ]
  %2055 = fmul fast float %2054, %384
  br label %2056

; <label>:2056                                    ; preds = %2053, %1942
  %2057 = phi float [ %2055, %2053 ], [ %384, %1942 ]
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = and i32 %2059, 256
  %2061 = icmp eq i32 %2060, 0
  br i1 %2061, label %2108, label %2062

; <label>:2062                                    ; preds = %2056
  %2063 = add i32 %21, 448
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = add i32 %2065, 0
  %2067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2067, %dx.types.Handle %53, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = add i32 %21, 132
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = shl i32 %2072, 4
  %2074 = and i32 %2073, 32752
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = lshr i32 %2072, 7
  %2077 = and i32 %2076, 32752
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = fsub fast float 1.000000e+00, %2057
  %2080 = call float @dx.op.binary.f32(i32 35, float %2079, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2081 = bitcast float %2057 to i32
  %2082 = sitofp i32 %2081 to float
  %2083 = fadd fast float %2082, 0xC1CFBF8940000000
  %2084 = fmul fast float %2078, %2083
  %2085 = fadd fast float %2084, 0x41CFBF8940000000
  %2086 = fptosi float %2085 to i32
  %2087 = bitcast i32 %2086 to float
  %2088 = bitcast float %2080 to i32
  %2089 = sitofp i32 %2088 to float
  %2090 = fadd fast float %2089, 0xC1CFBF8940000000
  %2091 = fmul fast float %2090, %2078
  %2092 = fadd fast float %2091, 0x41CFBF8940000000
  %2093 = fptosi float %2092 to i32
  %2094 = bitcast i32 %2093 to float
  %2095 = fmul fast float %2087, %2075
  %2096 = fmul fast float %2094, %2075
  %2097 = fsub fast float %2080, %2095
  %2098 = fadd fast float %2096, %2080
  %2099 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  %2100 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2101 = fsub fast float %2069, %2099
  %2102 = fsub fast float %2100, %2099
  %2103 = bitcast float %2102 to i32
  %2104 = sub nsw i32 2129859010, %2103
  %2105 = bitcast i32 %2104 to float
  %2106 = fmul fast float %2105, %2101
  %2107 = call float @dx.op.unary.f32(i32 7, float %2106)  ; Saturate(value)
  br label %2108

; <label>:2108                                    ; preds = %2062, %2056
  %2109 = phi float [ %2107, %2062 ], [ %2057, %2056 ]
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = and i32 %2111, 128
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2130, label %2114

; <label>:2114                                    ; preds = %2108
  %2115 = add i32 %21, 432
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = add i32 %2117, 0
  %2119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2119, %dx.types.Handle %53, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = and i32 %2123, 524288
  %2125 = icmp ne i32 %2124, 0
  %2126 = fcmp fast ogt float %2121, 0x3FE0101020000000
  %2127 = select i1 %2126, float 1.000000e+00, float 0.000000e+00
  %2128 = select i1 %2125, float %2127, float %2121
  %2129 = fmul fast float %2128, %2109
  br label %2130

; <label>:2130                                    ; preds = %2114, %2108
  %2131 = phi float [ %2129, %2114 ], [ %2109, %2108 ]
  %2132 = fcmp fast ult float %2131, 0x3F70101020000000
  br i1 %2132, label %2786, label %2133

; <label>:2133                                    ; preds = %2130
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = and i32 %2135, 16
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2336, label %2138

; <label>:2138                                    ; preds = %2133
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = add i32 %21, 384
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = add i32 %2143, 0
  %2145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2145, %dx.types.Handle %52, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.ResRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.ResRet.f32 %2146, 2
  %2150 = extractvalue %dx.types.ResRet.f32 %2146, 3
  %2151 = and i32 %2140, 255
  %2152 = uitofp i32 %2151 to float
  %2153 = lshr i32 %2140, 8
  %2154 = and i32 %2153, 255
  %2155 = uitofp i32 %2154 to float
  %2156 = fmul fast float %2150, %2152
  %2157 = fadd fast float %2156, %2155
  %2158 = fmul fast float %2157, 0x3F70101000000000
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, 512
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2171, label %2163

; <label>:2163                                    ; preds = %2138
  %2164 = add i32 %21, 468
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = add i32 %2166, 0
  %2168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2168, %dx.types.Handle %53, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  br label %2171

; <label>:2171                                    ; preds = %2163, %2138
  %2172 = phi float [ %2170, %2163 ], [ 1.000000e+00, %2138 ]
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = and i32 %2174, 33554432
  %2176 = icmp eq i32 %2175, 0
  br i1 %2176, label %2283, label %2177

; <label>:2177                                    ; preds = %2171
  %2178 = add i32 %21, 256
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = and i32 %2180, 65535
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = lshr i32 %2180, 16
  %2184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2183)  ; LegacyF16ToF32(value)
  %2185 = add i32 %21, 260
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 65535
  %2189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2188)  ; LegacyF16ToF32(value)
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = lshr i32 %2191, 24
  %2193 = uitofp i32 %2192 to float
  %2194 = fmul fast float %2193, 0x3F70101020000000
  %2195 = and i32 %2191, 255
  %2196 = uitofp i32 %2195 to float
  %2197 = fmul fast float %2196, 0x3F70101020000000
  %2198 = lshr i32 %2191, 8
  %2199 = and i32 %2198, 255
  %2200 = uitofp i32 %2199 to float
  %2201 = fmul fast float %2200, 0x3F70101020000000
  %2202 = lshr i32 %2191, 16
  %2203 = and i32 %2202, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = fmul fast float %2204, 0x3F70101020000000
  %2206 = add i32 %21, 252
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = lshr i32 %2208, 24
  %2210 = uitofp i32 %2209 to float
  %2211 = fmul fast float %2210, 0x3F70101020000000
  %2212 = and i32 %2208, 255
  %2213 = uitofp i32 %2212 to float
  %2214 = fmul fast float %2213, 0x3F70101020000000
  %2215 = lshr i32 %2208, 8
  %2216 = and i32 %2215, 255
  %2217 = uitofp i32 %2216 to float
  %2218 = fmul fast float %2217, 0x3F70101020000000
  %2219 = lshr i32 %2208, 16
  %2220 = and i32 %2219, 255
  %2221 = uitofp i32 %2220 to float
  %2222 = fmul fast float %2221, 0x3F70101020000000
  %2223 = bitcast float %2147 to i32
  %2224 = ashr i32 %2223, 1
  %2225 = sub nsw i32 1597463174, %2224
  %2226 = bitcast i32 %2225 to float
  %2227 = fmul fast float %2147, 5.000000e-01
  %2228 = fmul fast float %2226, %2226
  %2229 = fmul fast float %2228, %2227
  %2230 = fsub fast float 1.500000e+00, %2229
  %2231 = fmul fast float %2226, %2147
  %2232 = fmul fast float %2231, %2230
  %2233 = bitcast float %2148 to i32
  %2234 = ashr i32 %2233, 1
  %2235 = sub nsw i32 1597463174, %2234
  %2236 = bitcast i32 %2235 to float
  %2237 = fmul fast float %2148, 5.000000e-01
  %2238 = fmul fast float %2236, %2236
  %2239 = fmul fast float %2238, %2237
  %2240 = fsub fast float 1.500000e+00, %2239
  %2241 = fmul fast float %2236, %2148
  %2242 = fmul fast float %2241, %2240
  %2243 = bitcast float %2149 to i32
  %2244 = ashr i32 %2243, 1
  %2245 = sub nsw i32 1597463174, %2244
  %2246 = bitcast i32 %2245 to float
  %2247 = fmul fast float %2149, 5.000000e-01
  %2248 = fmul fast float %2246, %2246
  %2249 = fmul fast float %2248, %2247
  %2250 = fsub fast float 1.500000e+00, %2249
  %2251 = fmul fast float %2246, %2149
  %2252 = fmul fast float %2251, %2250
  %2253 = fsub fast float %2232, %2214
  %2254 = fsub fast float %2242, %2218
  %2255 = fsub fast float %2252, %2222
  %2256 = fmul fast float %2253, %2182
  %2257 = fmul fast float %2254, %2184
  %2258 = fmul fast float %2255, %2189
  %2259 = fadd fast float %2256, %2197
  %2260 = fadd fast float %2257, %2201
  %2261 = fadd fast float %2258, %2205
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2264 = call float @dx.op.unary.f32(i32 7, float %2261)  ; Saturate(value)
  %2265 = fmul fast float %2262, %2262
  %2266 = fmul fast float %2263, %2263
  %2267 = fmul fast float %2264, %2264
  %2268 = fsub fast float %2265, %2147
  %2269 = fsub fast float %2266, %2148
  %2270 = fsub fast float %2267, %2149
  %2271 = fmul fast float %2268, %2172
  %2272 = fmul fast float %2269, %2172
  %2273 = fmul fast float %2270, %2172
  %2274 = fadd fast float %2271, %2147
  %2275 = fadd fast float %2272, %2148
  %2276 = fadd fast float %2273, %2149
  %2277 = fadd fast float %2194, %2158
  %2278 = fsub fast float %2277, %2211
  %2279 = call float @dx.op.unary.f32(i32 7, float %2278)  ; Saturate(value)
  %2280 = fsub fast float %2279, %2158
  %2281 = fmul fast float %2280, %2172
  %2282 = fadd fast float %2281, %2158
  br label %2336

; <label>:2283                                    ; preds = %2171
  %2284 = and i32 %2174, 134217728
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2320, label %2286

; <label>:2286                                    ; preds = %2283
  %2287 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %2288 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %2289 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %2290 = fadd fast float %2287, -5.000000e-01
  %2291 = fadd fast float %2288, -5.000000e-01
  %2292 = fadd fast float %2289, -5.000000e-01
  %2293 = fmul fast float %2290, %2172
  %2294 = fmul fast float %2291, %2172
  %2295 = fmul fast float %2292, %2172
  %2296 = fadd fast float %2293, 5.000000e-01
  %2297 = fadd fast float %2294, 5.000000e-01
  %2298 = fadd fast float %2295, 5.000000e-01
  %2299 = call float @dx.op.unary.f32(i32 24, float %2147)  ; Sqrt(value)
  %2300 = call float @dx.op.unary.f32(i32 24, float %2148)  ; Sqrt(value)
  %2301 = call float @dx.op.unary.f32(i32 24, float %2149)  ; Sqrt(value)
  %2302 = fmul fast float %2296, 2.000000e+00
  %2303 = fsub fast float 1.000000e+00, %2302
  %2304 = fmul fast float %2303, %2299
  %2305 = fadd fast float %2304, %2302
  %2306 = fmul fast float %2305, %2299
  %2307 = fmul fast float %2297, 2.000000e+00
  %2308 = fsub fast float 1.000000e+00, %2307
  %2309 = fmul fast float %2308, %2300
  %2310 = fadd fast float %2309, %2307
  %2311 = fmul fast float %2310, %2300
  %2312 = fmul fast float %2298, 2.000000e+00
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = fmul fast float %2313, %2301
  %2315 = fadd fast float %2314, %2312
  %2316 = fmul fast float %2315, %2301
  %2317 = fmul fast float %2306, %2306
  %2318 = fmul fast float %2311, %2311
  %2319 = fmul fast float %2316, %2316
  br label %2336

; <label>:2320                                    ; preds = %2283
  %2321 = fmul fast float %262, %262
  %2322 = fmul fast float %266, %266
  %2323 = fmul fast float %270, %270
  %2324 = fadd fast float %2321, -1.000000e+00
  %2325 = fadd fast float %2322, -1.000000e+00
  %2326 = fadd fast float %2323, -1.000000e+00
  %2327 = fmul fast float %2172, %2324
  %2328 = fmul fast float %2172, %2325
  %2329 = fmul fast float %2172, %2326
  %2330 = fadd fast float %2327, 1.000000e+00
  %2331 = fadd fast float %2328, 1.000000e+00
  %2332 = fadd fast float %2329, 1.000000e+00
  %2333 = fmul fast float %2330, %2147
  %2334 = fmul fast float %2331, %2148
  %2335 = fmul fast float %2332, %2149
  br label %2336

; <label>:2336                                    ; preds = %2320, %2286, %2177, %2133
  %2337 = phi float [ %2282, %2177 ], [ %2158, %2286 ], [ %2158, %2320 ], [ 0x3FA23C0BE0000000, %2133 ]
  %2338 = phi float [ %2274, %2177 ], [ %2317, %2286 ], [ %2333, %2320 ], [ 1.000000e+00, %2133 ]
  %2339 = phi float [ %2275, %2177 ], [ %2318, %2286 ], [ %2334, %2320 ], [ 1.000000e+00, %2133 ]
  %2340 = phi float [ %2276, %2177 ], [ %2319, %2286 ], [ %2335, %2320 ], [ 1.000000e+00, %2133 ]
  %2341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.i32 %2341, 1
  %2343 = and i32 %2342, 1
  %2344 = icmp ne i32 %2343, 0
  %2345 = add i32 %21, 356
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 32
  %2349 = icmp ne i32 %2348, 0
  %2350 = and i1 %2344, %2349
  %2351 = select i1 %2350, float 1.000000e+00, float %2338
  %2352 = select i1 %2350, float 0x3FD3333340000000, float %2339
  %2353 = select i1 %2350, float 0x3FD3333340000000, float %2340
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 32
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2430, label %2358

; <label>:2358                                    ; preds = %2336
  %2359 = add i32 %21, 124
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = add i32 %21, 400
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = add i32 %2364, 0
  %2366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2366, %dx.types.Handle %52, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2368 = extractvalue %dx.types.ResRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.ResRet.f32 %2367, 1
  %2370 = extractvalue %dx.types.ResRet.f32 %2367, 2
  %2371 = extractvalue %dx.types.ResRet.f32 %2367, 3
  %2372 = and i32 %2361, 255
  %2373 = uitofp i32 %2372 to float
  %2374 = lshr i32 %2361, 8
  %2375 = and i32 %2374, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = lshr i32 %2361, 16
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101000000000
  %2381 = fmul fast float %2368, %2373
  %2382 = fadd fast float %2381, %2376
  %2383 = fmul fast float %2382, 0x3F70101000000000
  %2384 = fadd fast float %2369, -5.000000e-01
  %2385 = fadd fast float %2371, -5.000000e-01
  %2386 = fmul fast float %2384, %2380
  %2387 = fmul fast float %2385, %2380
  %2388 = fadd fast float %2386, 5.000000e-01
  %2389 = fadd fast float %2387, 5.000000e-01
  %2390 = fmul fast float %2388, 2.000000e+00
  %2391 = fadd fast float %2390, -1.000000e+00
  %2392 = fmul fast float %2389, 2.000000e+00
  %2393 = fadd fast float %2392, -1.000000e+00
  %2394 = fadd fast float %2391, %2393
  %2395 = fmul fast float %2394, 5.000000e-01
  %2396 = fsub fast float %2391, %2393
  %2397 = fmul fast float %2396, 5.000000e-01
  %2398 = call float @dx.op.unary.f32(i32 6, float %2395)  ; FAbs(value)
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = call float @dx.op.unary.f32(i32 6, float %2397)  ; FAbs(value)
  %2401 = fsub fast float %2399, %2400
  %2402 = call float @dx.op.dot3.f32(i32 55, float %2395, float %2397, float %2401, float %2395, float %2397, float %2401)  ; Dot3(ax,ay,az,bx,by,bz)
  %2403 = call float @dx.op.unary.f32(i32 25, float %2402)  ; Rsqrt(value)
  %2404 = fmul fast float %2395, %2403
  %2405 = fmul fast float %2397, %2403
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 67108864
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2426, label %2410

; <label>:2410                                    ; preds = %2358
  %2411 = add i32 %21, 312
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 65535
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = and i32 %2417, 65535
  %2419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2418)  ; LegacyF16ToF32(value)
  %2420 = lshr i32 %2413, 16
  %2421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2420)  ; LegacyF16ToF32(value)
  %2422 = fsub fast float %2383, %2421
  %2423 = fmul fast float %2422, %2415
  %2424 = fadd fast float %2423, %2419
  %2425 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  br label %2426

; <label>:2426                                    ; preds = %2410, %2358
  %2427 = phi float [ %2425, %2410 ], [ %2383, %2358 ]
  %2428 = call float @dx.op.dot2.f32(i32 54, float %2404, float %2405, float %1847, float %1848)  ; Dot2(ax,ay,bx,by)
  %2429 = call float @dx.op.dot2.f32(i32 54, float %2404, float %2405, float %1849, float %1850)  ; Dot2(ax,ay,bx,by)
  br label %2430

; <label>:2430                                    ; preds = %2426, %2336
  %2431 = phi float [ %2427, %2426 ], [ 0x3FD6666660000000, %2336 ]
  %2432 = phi float [ %2428, %2426 ], [ 0.000000e+00, %2336 ]
  %2433 = phi float [ %2429, %2426 ], [ 0.000000e+00, %2336 ]
  %2434 = phi float [ %2370, %2426 ], [ 1.000000e+00, %2336 ]
  %2435 = add i32 %21, 192
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = lshr i32 %2437, 22
  %2439 = shl nuw nsw i32 %2438, 5
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 64
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2478, label %2445

; <label>:2445                                    ; preds = %2430
  %2446 = add i32 %21, 416
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = add i32 %2448, 0
  %2450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2449, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = and i32 %2452, 131072
  %2454 = icmp eq i32 %2453, 0
  %2455 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2450, %dx.types.Handle %52, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = fmul fast float %2456, %250
  %2460 = fmul fast float %2457, %253
  %2461 = fmul fast float %2458, %256
  br i1 %2454, label %2468, label %2462

; <label>:2462                                    ; preds = %2445
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 0
  %2465 = fmul fast float %2464, %2459
  %2466 = fmul fast float %2464, %2460
  %2467 = fmul fast float %2464, %2461
  br label %2468

; <label>:2468                                    ; preds = %2462, %2445
  %2469 = phi float [ %2465, %2462 ], [ %2459, %2445 ]
  %2470 = phi float [ %2466, %2462 ], [ %2460, %2445 ]
  %2471 = phi float [ %2467, %2462 ], [ %2461, %2445 ]
  %2472 = fmul fast float %2469, %2440
  %2473 = select i1 %160, float %2472, float %2469
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2473, float %2470, float %2471, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = select i1 %160, float 0.000000e+00, float %2469
  %2476 = select i1 %160, float %2474, float %2470
  %2477 = select i1 %160, float 0.000000e+00, float %2471
  br label %2478

; <label>:2478                                    ; preds = %2468, %2430
  %2479 = phi float [ %2475, %2468 ], [ 0.000000e+00, %2430 ]
  %2480 = phi float [ %2476, %2468 ], [ 0.000000e+00, %2430 ]
  %2481 = phi float [ %2477, %2468 ], [ 0.000000e+00, %2430 ]
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 1024
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2516, label %2486

; <label>:2486                                    ; preds = %2478
  %2487 = add i32 %21, 184
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 255
  %2491 = uitofp i32 %2490 to float
  %2492 = fmul fast float %2491, 0x3F70101020000000
  %2493 = lshr i32 %2489, 8
  %2494 = and i32 %2493, 255
  %2495 = uitofp i32 %2494 to float
  %2496 = fmul fast float %2495, 0x3F70101020000000
  %2497 = lshr i32 %2489, 16
  %2498 = and i32 %2497, 255
  %2499 = uitofp i32 %2498 to float
  %2500 = fmul fast float %2499, 0x3F70101020000000
  %2501 = fmul fast float %2492, %2492
  %2502 = fmul fast float %2496, %2496
  %2503 = fmul fast float %2500, %2500
  %2504 = add i32 %21, 484
  %2505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2504, i32 undef)  ; BufferLoad(srv,index,wot)
  %2506 = extractvalue %dx.types.ResRet.i32 %2505, 0
  %2507 = add i32 %2506, 0
  %2508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2508, %dx.types.Handle %53, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2510 = extractvalue %dx.types.ResRet.f32 %2509, 0
  %2511 = extractvalue %dx.types.ResRet.f32 %2509, 1
  %2512 = extractvalue %dx.types.ResRet.f32 %2509, 2
  %2513 = fmul fast float %2501, %2510
  %2514 = fmul fast float %2502, %2511
  %2515 = fmul fast float %2503, %2512
  br label %2516

; <label>:2516                                    ; preds = %2486, %2478
  %2517 = phi float [ %2513, %2486 ], [ 0.000000e+00, %2478 ]
  %2518 = phi float [ %2514, %2486 ], [ 0.000000e+00, %2478 ]
  %2519 = phi float [ %2515, %2486 ], [ 0.000000e+00, %2478 ]
  %2520 = fcmp fast ogt float %2517, 0.000000e+00
  %2521 = fcmp fast ogt float %2518, 0.000000e+00
  %2522 = fcmp fast ogt float %2519, 0.000000e+00
  %2523 = call float @dx.op.unary.f32(i32 23, float %2517)  ; Log(value)
  %2524 = call float @dx.op.unary.f32(i32 23, float %2518)  ; Log(value)
  %2525 = call float @dx.op.unary.f32(i32 23, float %2519)  ; Log(value)
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = lshr i32 %2527, 7
  %2529 = and i32 %2528, 32752
  %2530 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2529)  ; LegacyF16ToF32(value)
  %2531 = fmul fast float %2523, 0xBFE62E4300000000
  %2532 = fmul fast float %2531, %2530
  %2533 = fmul fast float %2524, 0xBFE62E4300000000
  %2534 = fmul fast float %2533, %2530
  %2535 = fmul fast float %2525, 0xBFE62E4300000000
  %2536 = fmul fast float %2535, %2530
  %2537 = select i1 %2520, float %2532, float 1.270000e+02
  %2538 = select i1 %2521, float %2534, float 1.270000e+02
  %2539 = select i1 %2522, float %2536, float 1.270000e+02
  %2540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2541 = extractvalue %dx.types.ResRet.i32 %2540, 0
  %2542 = and i32 %2541, 10240
  %2543 = icmp eq i32 %2542, 0
  br i1 %2543, label %2564, label %2544

; <label>:2544                                    ; preds = %2516
  %2545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2546 = extractvalue %dx.types.ResRet.i32 %2545, 0
  %2547 = and i32 %2546, 2048
  %2548 = icmp eq i32 %2547, 0
  br i1 %2548, label %2564, label %2549

; <label>:2549                                    ; preds = %2544
  %2550 = add i32 %21, 500
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = add i32 %2552, 0
  %2554 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2553, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2555 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2554, %dx.types.Handle %53, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2556 = extractvalue %dx.types.ResRet.f32 %2555, 3
  %2557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2558 = extractvalue %dx.types.ResRet.i32 %2557, 0
  %2559 = shl i32 %2558, 4
  %2560 = and i32 %2559, 32752
  %2561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2560)  ; LegacyF16ToF32(value)
  %2562 = fmul fast float %2561, %2556
  %2563 = call float @dx.op.binary.f32(i32 35, float %2562, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2564

; <label>:2564                                    ; preds = %2549, %2544, %2516
  %2565 = phi float [ %2563, %2549 ], [ 0x3F70101020000000, %2544 ], [ 0x3F70101020000000, %2516 ]
  %2566 = add i32 %21, 128
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = and i32 %2568, 255
  %2570 = uitofp i32 %2569 to float
  %2571 = lshr i32 %2568, 8
  %2572 = and i32 %2571, 255
  %2573 = uitofp i32 %2572 to float
  %2574 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2352, float %2353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2575 = fmul fast float %2573, %2574
  %2576 = fadd fast float %2575, %2570
  %2577 = fmul fast float %2576, 0x3F70101020000000
  %2578 = call float @dx.op.unary.f32(i32 7, float %2577)  ; Saturate(value)
  br i1 %1835, label %2579, label %2614

; <label>:2579                                    ; preds = %2564
  %2580 = fmul fast float %2565, 2.000000e+00
  %2581 = fcmp fast olt float %2537, 1.270000e+02
  %2582 = fcmp fast olt float %2538, 1.270000e+02
  %2583 = fcmp fast olt float %2539, 1.270000e+02
  %2584 = fmul fast float %2537, 0xBFF7154760000000
  %2585 = fmul fast float %2584, %2580
  %2586 = fmul fast float %2538, 0xBFF7154760000000
  %2587 = fmul fast float %2586, %2580
  %2588 = fmul fast float %2539, 0xBFF7154760000000
  %2589 = fmul fast float %2588, %2580
  %2590 = call float @dx.op.unary.f32(i32 21, float %2585)  ; Exp(value)
  %2591 = call float @dx.op.unary.f32(i32 21, float %2587)  ; Exp(value)
  %2592 = call float @dx.op.unary.f32(i32 21, float %2589)  ; Exp(value)
  %2593 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  %2594 = call float @dx.op.unary.f32(i32 7, float %2591)  ; Saturate(value)
  %2595 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  %2596 = fadd fast float %2593, -1.000000e+00
  %2597 = select i1 %2581, float %2596, float -1.000000e+00
  %2598 = fadd fast float %2594, -1.000000e+00
  %2599 = select i1 %2582, float %2598, float -1.000000e+00
  %2600 = fadd fast float %2595, -1.000000e+00
  %2601 = select i1 %2583, float %2600, float -1.000000e+00
  %2602 = fmul fast float %2597, %2131
  %2603 = fmul fast float %2599, %2131
  %2604 = fmul fast float %2601, %2131
  %2605 = fadd fast float %2602, 1.000000e+00
  %2606 = fadd fast float %2603, 1.000000e+00
  %2607 = fadd fast float %2604, 1.000000e+00
  %2608 = fmul fast float %2605, %1824
  %2609 = fmul fast float %2606, %1825
  %2610 = fmul fast float %2607, %1826
  %2611 = fmul fast float %2605, %1827
  %2612 = fmul fast float %2606, %1828
  %2613 = fmul fast float %2607, %1829
  br label %2614

; <label>:2614                                    ; preds = %2579, %2564
  %2615 = phi float [ %2608, %2579 ], [ %1824, %2564 ]
  %2616 = phi float [ %2609, %2579 ], [ %1825, %2564 ]
  %2617 = phi float [ %2610, %2579 ], [ %1826, %2564 ]
  %2618 = phi float [ %2611, %2579 ], [ %1827, %2564 ]
  %2619 = phi float [ %2612, %2579 ], [ %1828, %2564 ]
  %2620 = phi float [ %2613, %2579 ], [ %1829, %2564 ]
  %2621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2622 = extractvalue %dx.types.ResRet.i32 %2621, 0
  %2623 = and i32 %2622, 3
  %2624 = icmp eq i32 %2623, 3
  br i1 %2624, label %2703, label %2625

; <label>:2625                                    ; preds = %2614
  %2626 = and i32 %2622, 16
  %2627 = icmp ne i32 %2626, 0
  %2628 = select i1 %2627, float %2131, float 0.000000e+00
  %2629 = icmp eq i32 %2623, 0
  br i1 %2629, label %2630, label %2658

; <label>:2630                                    ; preds = %2625
  %2631 = and i32 %2622, 64
  %2632 = icmp ne i32 %2631, 0
  %2633 = select i1 %2632, float %2131, float 0.000000e+00
  %2634 = fsub fast float %2351, %2615
  %2635 = fsub fast float %2352, %2616
  %2636 = fsub fast float %2353, %2617
  %2637 = fmul fast float %2628, %2634
  %2638 = fmul fast float %2628, %2635
  %2639 = fmul fast float %2628, %2636
  %2640 = fadd fast float %2637, %2615
  %2641 = fadd fast float %2638, %2616
  %2642 = fadd fast float %2639, %2617
  %2643 = fsub fast float %2337, %1830
  %2644 = fmul fast float %2628, %2643
  %2645 = fadd fast float %2644, %1830
  %2646 = fsub fast float %2479, %2618
  %2647 = fsub fast float %2480, %2619
  %2648 = fsub fast float %2481, %2620
  %2649 = fmul fast float %2633, %2646
  %2650 = fmul fast float %2633, %2647
  %2651 = fmul fast float %2633, %2648
  %2652 = fadd fast float %2649, %2618
  %2653 = fadd fast float %2650, %2619
  %2654 = fadd fast float %2651, %2620
  %2655 = fsub fast float %2578, %1833
  %2656 = fmul fast float %2628, %2655
  %2657 = fadd fast float %2656, %1833
  br label %2703

; <label>:2658                                    ; preds = %2625
  %2659 = icmp eq i32 %2623, 1
  br i1 %2659, label %2660, label %2673

; <label>:2660                                    ; preds = %2658
  %2661 = fadd fast float %2351, -1.000000e+00
  %2662 = fadd fast float %2352, -1.000000e+00
  %2663 = fadd fast float %2353, -1.000000e+00
  %2664 = fmul fast float %2628, %2661
  %2665 = fmul fast float %2628, %2662
  %2666 = fmul fast float %2628, %2663
  %2667 = fadd fast float %2664, 1.000000e+00
  %2668 = fadd fast float %2665, 1.000000e+00
  %2669 = fadd fast float %2666, 1.000000e+00
  %2670 = fmul fast float %2667, %2615
  %2671 = fmul fast float %2668, %2616
  %2672 = fmul fast float %2669, %2617
  br label %2703

; <label>:2673                                    ; preds = %2658
  %2674 = icmp eq i32 %2623, 2
  br i1 %2674, label %2675, label %2703

; <label>:2675                                    ; preds = %2673
  %2676 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2677 = call float @dx.op.unary.f32(i32 24, float %2352)  ; Sqrt(value)
  %2678 = call float @dx.op.unary.f32(i32 24, float %2353)  ; Sqrt(value)
  %2679 = fadd fast float %2676, -5.000000e-01
  %2680 = fadd fast float %2677, -5.000000e-01
  %2681 = fadd fast float %2678, -5.000000e-01
  %2682 = fmul fast float %2679, %2628
  %2683 = fmul fast float %2680, %2628
  %2684 = fmul fast float %2681, %2628
  %2685 = fadd fast float %2682, 5.000000e-01
  %2686 = fadd fast float %2683, 5.000000e-01
  %2687 = fadd fast float %2684, 5.000000e-01
  %2688 = fmul fast float %2685, 2.000000e+00
  %2689 = fsub fast float 1.000000e+00, %2688
  %2690 = fmul fast float %2689, %2615
  %2691 = fadd fast float %2690, %2688
  %2692 = fmul fast float %2691, %2615
  %2693 = fmul fast float %2686, 2.000000e+00
  %2694 = fsub fast float 1.000000e+00, %2693
  %2695 = fmul fast float %2694, %2616
  %2696 = fadd fast float %2695, %2693
  %2697 = fmul fast float %2696, %2616
  %2698 = fmul fast float %2687, 2.000000e+00
  %2699 = fsub fast float 1.000000e+00, %2698
  %2700 = fmul fast float %2699, %2617
  %2701 = fadd fast float %2700, %2698
  %2702 = fmul fast float %2701, %2617
  br label %2703

; <label>:2703                                    ; preds = %2675, %2673, %2660, %2630, %2614
  %2704 = phi float [ %2615, %2614 ], [ %2692, %2675 ], [ %2615, %2673 ], [ %2670, %2660 ], [ %2640, %2630 ]
  %2705 = phi float [ %2616, %2614 ], [ %2697, %2675 ], [ %2616, %2673 ], [ %2671, %2660 ], [ %2641, %2630 ]
  %2706 = phi float [ %2617, %2614 ], [ %2702, %2675 ], [ %2617, %2673 ], [ %2672, %2660 ], [ %2642, %2630 ]
  %2707 = phi float [ %2618, %2614 ], [ %2618, %2675 ], [ %2618, %2673 ], [ %2618, %2660 ], [ %2652, %2630 ]
  %2708 = phi float [ %2619, %2614 ], [ %2619, %2675 ], [ %2619, %2673 ], [ %2619, %2660 ], [ %2653, %2630 ]
  %2709 = phi float [ %2620, %2614 ], [ %2620, %2675 ], [ %2620, %2673 ], [ %2620, %2660 ], [ %2654, %2630 ]
  %2710 = phi float [ %1830, %2614 ], [ %1830, %2675 ], [ %1830, %2673 ], [ %1830, %2660 ], [ %2645, %2630 ]
  %2711 = phi float [ %1833, %2614 ], [ %1833, %2675 ], [ %1833, %2673 ], [ %1833, %2660 ], [ %2657, %2630 ]
  %2712 = and i32 %2622, 12
  %2713 = icmp eq i32 %2712, 12
  br i1 %2713, label %2786, label %2714

; <label>:2714                                    ; preds = %2703
  %2715 = and i32 %2622, 2097184
  %2716 = icmp eq i32 %2715, 2097184
  %2717 = select i1 %2716, float %2131, float 0.000000e+00
  %2718 = and i32 %2622, 4194336
  %2719 = icmp eq i32 %2718, 4194336
  %2720 = select i1 %2719, float %2131, float 0.000000e+00
  %2721 = and i32 %2622, 8388640
  %2722 = icmp eq i32 %2721, 8388640
  %2723 = select i1 %2722, float %2131, float 0.000000e+00
  %2724 = icmp eq i32 %2712, 0
  br i1 %2724, label %2725, label %2738

; <label>:2725                                    ; preds = %2714
  %2726 = fsub fast float %2432, %1822
  %2727 = fsub fast float %2433, %1823
  %2728 = fmul fast float %2717, %2726
  %2729 = fmul fast float %2717, %2727
  %2730 = fadd fast float %2728, %1822
  %2731 = fadd fast float %2729, %1823
  %2732 = fsub fast float %2434, %1832
  %2733 = fmul fast float %2720, %2732
  %2734 = fadd fast float %2733, %1832
  %2735 = fsub fast float %2431, %1831
  %2736 = fmul fast float %2723, %2735
  %2737 = fadd fast float %2736, %1831
  br label %2786

; <label>:2738                                    ; preds = %2714
  %2739 = icmp eq i32 %2712, 4
  br i1 %2739, label %2740, label %2772

; <label>:2740                                    ; preds = %2738
  %2741 = fmul fast float %2717, %2432
  %2742 = fmul fast float %2717, %2433
  %2743 = fadd fast float %2741, %1822
  %2744 = fadd fast float %2742, %1823
  %2745 = call float @dx.op.binary.f32(i32 36, float %1832, float %2434)  ; FMin(a,b)
  %2746 = fsub fast float %2745, %1832
  %2747 = fmul fast float %2746, %2720
  %2748 = fadd fast float %2747, %1832
  %2749 = fadd fast float %2431, %1831
  %2750 = fmul fast float %2749, 0x3FF337FAE0000000
  %2751 = fmul fast float %1831, %1831
  %2752 = fmul fast float %2431, %2431
  %2753 = fadd fast float %2752, %2751
  %2754 = fmul fast float %2753, 0x3FE5152B00000000
  %2755 = fmul fast float %1831, 0xBFCC1F85E0000000
  %2756 = fmul fast float %2755, %2431
  %2757 = fadd fast float %2756, 0xBFE1363700000000
  %2758 = fadd fast float %2757, %2750
  %2759 = fsub fast float %2758, %2754
  %2760 = fmul fast float %2749, 0x3FBA6F0D00000000
  %2761 = fmul fast float %2753, 0x3FD0432880000000
  %2762 = fmul fast float %1831, 0xBFEF110800000000
  %2763 = fmul fast float %2762, %2431
  %2764 = fadd fast float %2763, 1.000000e+00
  %2765 = fsub fast float %2764, %2760
  %2766 = fadd fast float %2765, %2761
  %2767 = fdiv fast float %2759, %2766
  %2768 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2769 = fsub fast float %2768, %1831
  %2770 = fmul fast float %2769, %2723
  %2771 = fadd fast float %2770, %1831
  br label %2786

; <label>:2772                                    ; preds = %2738
  %2773 = icmp eq i32 %2712, 8
  br i1 %2773, label %2774, label %2786

; <label>:2774                                    ; preds = %2772
  %2775 = fmul fast float %2717, %2432
  %2776 = fmul fast float %2717, %2433
  %2777 = fadd fast float %2775, %1822
  %2778 = fadd fast float %2776, %1823
  %2779 = call float @dx.op.binary.f32(i32 36, float %1832, float %2434)  ; FMin(a,b)
  %2780 = fsub fast float %2779, %1832
  %2781 = fmul fast float %2780, %2720
  %2782 = fadd fast float %2781, %1832
  %2783 = fsub fast float %2431, %1831
  %2784 = fmul fast float %2723, %2783
  %2785 = fadd fast float %2784, %1831
  br label %2786

; <label>:2786                                    ; preds = %2774, %2772, %2740, %2725, %2703, %2130, %1834, %1821
  %2787 = phi float [ %1822, %2703 ], [ %1822, %2130 ], [ %1822, %1821 ], [ %2777, %2774 ], [ %1822, %2772 ], [ %2743, %2740 ], [ %2730, %2725 ], [ %1822, %1834 ]
  %2788 = phi float [ %1823, %2703 ], [ %1823, %2130 ], [ %1823, %1821 ], [ %2778, %2774 ], [ %1823, %2772 ], [ %2744, %2740 ], [ %2731, %2725 ], [ %1823, %1834 ]
  %2789 = phi float [ %2704, %2703 ], [ %1824, %2130 ], [ %1824, %1821 ], [ %2704, %2774 ], [ %2704, %2772 ], [ %2704, %2740 ], [ %2704, %2725 ], [ %1824, %1834 ]
  %2790 = phi float [ %2705, %2703 ], [ %1825, %2130 ], [ %1825, %1821 ], [ %2705, %2774 ], [ %2705, %2772 ], [ %2705, %2740 ], [ %2705, %2725 ], [ %1825, %1834 ]
  %2791 = phi float [ %2706, %2703 ], [ %1826, %2130 ], [ %1826, %1821 ], [ %2706, %2774 ], [ %2706, %2772 ], [ %2706, %2740 ], [ %2706, %2725 ], [ %1826, %1834 ]
  %2792 = phi float [ %2707, %2703 ], [ %1827, %2130 ], [ %1827, %1821 ], [ %2707, %2774 ], [ %2707, %2772 ], [ %2707, %2740 ], [ %2707, %2725 ], [ %1827, %1834 ]
  %2793 = phi float [ %2708, %2703 ], [ %1828, %2130 ], [ %1828, %1821 ], [ %2708, %2774 ], [ %2708, %2772 ], [ %2708, %2740 ], [ %2708, %2725 ], [ %1828, %1834 ]
  %2794 = phi float [ %2709, %2703 ], [ %1829, %2130 ], [ %1829, %1821 ], [ %2709, %2774 ], [ %2709, %2772 ], [ %2709, %2740 ], [ %2709, %2725 ], [ %1829, %1834 ]
  %2795 = phi float [ %2710, %2703 ], [ %1830, %2130 ], [ %1830, %1821 ], [ %2710, %2774 ], [ %2710, %2772 ], [ %2710, %2740 ], [ %2710, %2725 ], [ %1830, %1834 ]
  %2796 = phi float [ %1831, %2703 ], [ %1831, %2130 ], [ %1831, %1821 ], [ %2785, %2774 ], [ %1831, %2772 ], [ %2771, %2740 ], [ %2737, %2725 ], [ %1831, %1834 ]
  %2797 = phi float [ %1832, %2703 ], [ %1832, %2130 ], [ %1832, %1821 ], [ %2782, %2774 ], [ %1832, %2772 ], [ %2748, %2740 ], [ %2734, %2725 ], [ %1832, %1834 ]
  %2798 = phi float [ %2711, %2703 ], [ %1833, %2130 ], [ %1833, %1821 ], [ %2711, %2774 ], [ %2711, %2772 ], [ %2711, %2740 ], [ %2711, %2725 ], [ %1833, %1834 ]
  br i1 %337, label %3751, label %2799

; <label>:2799                                    ; preds = %2786
  %2800 = icmp ult i32 %388, 4
  %2801 = add i32 %21, 72
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = add i32 %21, 76
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = or i32 %2806, %2803
  %2808 = icmp eq i32 %2807, 0
  br i1 %2808, label %3751, label %2809

; <label>:2809                                    ; preds = %2799
  %2810 = and i32 %2803, 262144
  %2811 = icmp ne i32 %2810, 0
  %2812 = select i1 %2811, float %24, float 1.000000e+00
  %2813 = select i1 %2811, float %25, float 0.000000e+00
  %2814 = select i1 %2811, float %26, float 0.000000e+00
  %2815 = select i1 %2811, float %27, float 1.000000e+00
  %2816 = select i1 %2811, float %28, float %44
  %2817 = select i1 %2811, float %29, float %45
  %2818 = add i32 %21, 332
  %2819 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %2820 = extractvalue %dx.types.ResRet.i32 %2819, 0
  %2821 = lshr i32 %2820, 16
  %2822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2821)  ; LegacyF16ToF32(value)
  %2823 = fmul fast float %2822, 0x3F50624DE0000000
  %2824 = add i32 %21, 136
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = lshr i32 %2826, 16
  %2828 = and i32 %2827, 255
  %2829 = lshr i32 %2826, 24
  %2830 = add i32 %21, 340
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = and i32 %2832, 65535
  %2834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2833)  ; LegacyF16ToF32(value)
  %2835 = lshr i32 %2832, 16
  %2836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2835)  ; LegacyF16ToF32(value)
  %2837 = add i32 %21, 80
  %2838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.i32 %2838, 0
  %2840 = lshr i32 %2839, 22
  %2841 = shl nuw nsw i32 %2840, 5
  %2842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2841)  ; LegacyF16ToF32(value)
  %2843 = shl i32 %2839, 4
  %2844 = and i32 %2843, 32752
  %2845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2844)  ; LegacyF16ToF32(value)
  %2846 = lshr i32 %2839, 7
  %2847 = and i32 %2846, 32752
  %2848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2847)  ; LegacyF16ToF32(value)
  %2849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2850 = extractvalue %dx.types.CBufRet.f32 %2849, 3
  %2851 = fmul fast float %2850, 1.000000e+03
  %2852 = fmul fast float %327, %2851
  %2853 = call float @dx.op.unary.f32(i32 22, float %2852)  ; Frc(value)
  %2854 = fadd fast float %2853, %317
  %2855 = fmul fast float %328, %2851
  %2856 = call float @dx.op.unary.f32(i32 22, float %2855)  ; Frc(value)
  %2857 = fadd fast float %2856, %319
  %2858 = fmul fast float %2823, %2851
  %2859 = call float @dx.op.unary.f32(i32 22, float %2858)  ; Frc(value)
  %2860 = fmul fast float %2859, 0x401921FB60000000
  %2861 = fadd fast float %2860, %2842
  %2862 = call float @dx.op.unary.f32(i32 13, float %2861)  ; Sin(value)
  %2863 = call float @dx.op.unary.f32(i32 12, float %2861)  ; Cos(value)
  %2864 = fsub fast float -0.000000e+00, %2862
  %2865 = fadd fast float %2816, -5.000000e-01
  %2866 = fadd fast float %2817, -5.000000e-01
  %2867 = fmul fast float %2834, %2865
  %2868 = fmul fast float %2836, %2866
  %2869 = fadd fast float %2867, 5.000000e-01
  %2870 = fadd fast float %2868, 5.000000e-01
  %2871 = fmul fast float %2845, %2869
  %2872 = fmul fast float %2848, %2870
  %2873 = fmul fast float %2863, %2871
  %2874 = call float @dx.op.tertiary.f32(i32 46, float %2864, float %2872, float %2873)  ; FMad(a,b,c)
  %2875 = fmul fast float %2862, %2871
  %2876 = call float @dx.op.tertiary.f32(i32 46, float %2863, float %2872, float %2875)  ; FMad(a,b,c)
  %2877 = fadd fast float %2854, %2874
  %2878 = fadd fast float %2857, %2876
  %2879 = icmp ugt i32 %2828, 1
  %2880 = icmp ugt i32 %2826, 33554431
  %2881 = or i1 %2880, %2879
  br i1 %2881, label %2882, label %2907

; <label>:2882                                    ; preds = %2809
  %2883 = add i32 %21, 276
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = lshr i32 %2885, 16
  %2887 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2886)  ; LegacyF16ToF32(value)
  %2888 = fmul fast float %2850, %2887
  %2889 = call float @dx.op.unary.f32(i32 22, float %2888)  ; Frc(value)
  %2890 = mul nuw nsw i32 %2828, %2829
  %2891 = uitofp i32 %2890 to float
  %2892 = fmul fast float %2889, %2891
  %2893 = call float @dx.op.unary.f32(i32 27, float %2892)  ; Round_ni(value)
  %2894 = fptoui float %2893 to i32
  %2895 = urem i32 %2894, %2828
  %2896 = udiv i32 %2894, %2829
  %2897 = call float @dx.op.unary.f32(i32 22, float %2877)  ; Frc(value)
  %2898 = call float @dx.op.unary.f32(i32 22, float %2878)  ; Frc(value)
  %2899 = uitofp i32 %2895 to float
  %2900 = uitofp i32 %2896 to float
  %2901 = fadd fast float %2897, %2899
  %2902 = fadd fast float %2898, %2900
  %2903 = uitofp i32 %2828 to float
  %2904 = uitofp i32 %2829 to float
  %2905 = fdiv fast float %2901, %2903
  %2906 = fdiv fast float %2902, %2904
  br label %2907

; <label>:2907                                    ; preds = %2882, %2809
  %2908 = phi float [ %2905, %2882 ], [ %2877, %2809 ]
  %2909 = phi float [ %2906, %2882 ], [ %2878, %2809 ]
  %2910 = and i32 %2803, 16777216
  %2911 = icmp eq i32 %2910, 0
  br i1 %2911, label %3021, label %2912

; <label>:2912                                    ; preds = %2907
  %2913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2914 = extractvalue %dx.types.CBufRet.f32 %2913, 0
  %2915 = extractvalue %dx.types.CBufRet.f32 %2913, 1
  %2916 = extractvalue %dx.types.CBufRet.f32 %2913, 2
  %2917 = fadd fast float %2914, %119
  %2918 = fadd fast float %2915, %120
  %2919 = fadd fast float %2916, %121
  %2920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2921 = extractvalue %dx.types.CBufRet.f32 %2920, 0
  %2922 = call float @dx.op.unary.f32(i32 7, float %2921)  ; Saturate(value)
  %2923 = icmp eq i32 %22, 65535
  br i1 %2923, label %3018, label %2924

; <label>:2924                                    ; preds = %2912
  %2925 = lshr i32 %22, 1
  %2926 = shl i32 %2925, 2
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = and i32 %22, 1
  %2930 = icmp ne i32 %2929, 0
  %2931 = lshr i32 %2928, 16
  %2932 = and i32 %2928, 65535
  %2933 = select i1 %2930, i32 %2931, i32 %2932
  %2934 = icmp eq i32 %2933, 65535
  br i1 %2934, label %3014, label %2935

; <label>:2935                                    ; preds = %2924
  %2936 = mul nuw nsw i32 %2933, 40
  %2937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2936, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.ResRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.ResRet.f32 %2937, 2
  %2941 = add nuw nsw i32 %2936, 12
  %2942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2941, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.f32 %2942, 0
  %2944 = extractvalue %dx.types.ResRet.f32 %2942, 1
  %2945 = extractvalue %dx.types.ResRet.f32 %2942, 2
  %2946 = add nuw nsw i32 %2936, 24
  %2947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.f32 %2947, 0
  %2949 = extractvalue %dx.types.ResRet.f32 %2947, 1
  %2950 = extractvalue %dx.types.ResRet.f32 %2947, 2
  %2951 = add nuw nsw i32 %2936, 36
  %2952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2951, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.f32 %2952, 0
  %2954 = fsub fast float %2917, %2938
  %2955 = fsub fast float %2918, %2939
  %2956 = fsub fast float %2919, %2940
  %2957 = fmul fast float %2953, %2954
  %2958 = fmul fast float %2953, %2955
  %2959 = fmul fast float %2953, %2956
  %2960 = call float @dx.op.unary.f32(i32 27, float %2957)  ; Round_ni(value)
  %2961 = call float @dx.op.unary.f32(i32 27, float %2958)  ; Round_ni(value)
  %2962 = call float @dx.op.unary.f32(i32 27, float %2959)  ; Round_ni(value)
  %2963 = fadd fast float %2960, 5.000000e-01
  %2964 = fadd fast float %2961, 5.000000e-01
  %2965 = fadd fast float %2962, 5.000000e-01
  %2966 = fmul fast float %2963, %2943
  %2967 = fmul fast float %2964, %2944
  %2968 = fmul fast float %2965, %2945
  %2969 = shl i32 %22, 2
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = add i32 %2971, 0
  %2973 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2972, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2974 = call float @dx.op.unary.f32(i32 22, float %2966)  ; Frc(value)
  %2975 = call float @dx.op.unary.f32(i32 22, float %2967)  ; Frc(value)
  %2976 = call float @dx.op.unary.f32(i32 22, float %2968)  ; Frc(value)
  %2977 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2973, %dx.types.Handle %18, float %2974, float %2975, float %2976, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2978 = extractvalue %dx.types.ResRet.f32 %2977, 0
  %2979 = extractvalue %dx.types.ResRet.f32 %2977, 1
  %2980 = extractvalue %dx.types.ResRet.f32 %2977, 2
  %2981 = fmul fast float %2978, 1.023000e+03
  %2982 = fmul fast float %2979, 1.023000e+03
  %2983 = fmul fast float %2980, 1.023000e+03
  %2984 = fadd fast float %2981, 5.000000e-01
  %2985 = fadd fast float %2982, 5.000000e-01
  %2986 = fadd fast float %2983, 5.000000e-01
  %2987 = call float @dx.op.unary.f32(i32 27, float %2984)  ; Round_ni(value)
  %2988 = call float @dx.op.unary.f32(i32 27, float %2985)  ; Round_ni(value)
  %2989 = call float @dx.op.unary.f32(i32 27, float %2986)  ; Round_ni(value)
  %2990 = fsub fast float %2957, %2960
  %2991 = fsub fast float %2958, %2961
  %2992 = fsub fast float %2959, %2962
  %2993 = fmul fast float %2990, 7.500000e-01
  %2994 = fmul fast float %2991, 7.500000e-01
  %2995 = fmul fast float %2992, 7.500000e-01
  %2996 = fadd fast float %2960, 1.250000e-01
  %2997 = fadd fast float %2996, %2993
  %2998 = fadd fast float %2997, %2987
  %2999 = fadd fast float %2961, 1.250000e-01
  %3000 = fadd fast float %2999, %2994
  %3001 = fadd fast float %3000, %2988
  %3002 = fadd fast float %2962, 1.250000e-01
  %3003 = fadd fast float %3002, %2995
  %3004 = fadd fast float %3003, %2989
  %3005 = fmul fast float %2998, %2948
  %3006 = fmul fast float %3001, %2949
  %3007 = fmul fast float %3004, %2950
  %3008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2969, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.i32 %3008, 0
  %3010 = add i32 %3009, 0
  %3011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3011, %dx.types.Handle %16, float %3005, float %3006, float %3007, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3013 = extractvalue %dx.types.ResRet.f32 %3012, 0
  br label %3014

; <label>:3014                                    ; preds = %2935, %2924
  %3015 = phi float [ %3013, %2935 ], [ -1.000000e+00, %2924 ]
  %3016 = fadd fast float %3015, %2922
  %3017 = call float @dx.op.unary.f32(i32 7, float %3016)  ; Saturate(value)
  br label %3018

; <label>:3018                                    ; preds = %3014, %2912
  %3019 = phi float [ %3017, %3014 ], [ %2922, %2912 ]
  %3020 = fmul fast float %3019, %383
  br label %3021

; <label>:3021                                    ; preds = %3018, %2907
  %3022 = phi float [ %3020, %3018 ], [ %383, %2907 ]
  %3023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3024 = extractvalue %dx.types.ResRet.i32 %3023, 0
  %3025 = and i32 %3024, 256
  %3026 = icmp eq i32 %3025, 0
  br i1 %3026, label %3073, label %3027

; <label>:3027                                    ; preds = %3021
  %3028 = add i32 %21, 452
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3028, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = add i32 %3030, 0
  %3032 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3031, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3033 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3032, %dx.types.Handle %53, float %2908, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = add i32 %21, 148
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = shl i32 %3037, 4
  %3039 = and i32 %3038, 32752
  %3040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3039)  ; LegacyF16ToF32(value)
  %3041 = lshr i32 %3037, 7
  %3042 = and i32 %3041, 32752
  %3043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3042)  ; LegacyF16ToF32(value)
  %3044 = fsub fast float 1.000000e+00, %3022
  %3045 = call float @dx.op.binary.f32(i32 35, float %3044, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3046 = bitcast float %3022 to i32
  %3047 = sitofp i32 %3046 to float
  %3048 = fadd fast float %3047, 0xC1CFBF8940000000
  %3049 = fmul fast float %3043, %3048
  %3050 = fadd fast float %3049, 0x41CFBF8940000000
  %3051 = fptosi float %3050 to i32
  %3052 = bitcast i32 %3051 to float
  %3053 = bitcast float %3045 to i32
  %3054 = sitofp i32 %3053 to float
  %3055 = fadd fast float %3054, 0xC1CFBF8940000000
  %3056 = fmul fast float %3055, %3043
  %3057 = fadd fast float %3056, 0x41CFBF8940000000
  %3058 = fptosi float %3057 to i32
  %3059 = bitcast i32 %3058 to float
  %3060 = fmul fast float %3052, %3040
  %3061 = fmul fast float %3059, %3040
  %3062 = fsub fast float %3045, %3060
  %3063 = fadd fast float %3061, %3045
  %3064 = call float @dx.op.unary.f32(i32 7, float %3062)  ; Saturate(value)
  %3065 = call float @dx.op.unary.f32(i32 7, float %3063)  ; Saturate(value)
  %3066 = fsub fast float %3034, %3064
  %3067 = fsub fast float %3065, %3064
  %3068 = bitcast float %3067 to i32
  %3069 = sub nsw i32 2129859010, %3068
  %3070 = bitcast i32 %3069 to float
  %3071 = fmul fast float %3070, %3066
  %3072 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  br label %3073

; <label>:3073                                    ; preds = %3027, %3021
  %3074 = phi float [ %3072, %3027 ], [ %3022, %3021 ]
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = and i32 %3076, 128
  %3078 = icmp eq i32 %3077, 0
  br i1 %3078, label %3095, label %3079

; <label>:3079                                    ; preds = %3073
  %3080 = add i32 %21, 436
  %3081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3080, i32 undef)  ; BufferLoad(srv,index,wot)
  %3082 = extractvalue %dx.types.ResRet.i32 %3081, 0
  %3083 = add i32 %3082, 0
  %3084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3085 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3084, %dx.types.Handle %53, float %2908, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3086 = extractvalue %dx.types.ResRet.f32 %3085, 0
  %3087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3088 = extractvalue %dx.types.ResRet.i32 %3087, 0
  %3089 = and i32 %3088, 524288
  %3090 = icmp ne i32 %3089, 0
  %3091 = fcmp fast ogt float %3086, 0x3FE0101020000000
  %3092 = select i1 %3091, float 1.000000e+00, float 0.000000e+00
  %3093 = select i1 %3090, float %3092, float %3086
  %3094 = fmul fast float %3093, %3074
  br label %3095

; <label>:3095                                    ; preds = %3079, %3073
  %3096 = phi float [ %3094, %3079 ], [ %3074, %3073 ]
  %3097 = fcmp fast ult float %3096, 0x3F70101020000000
  br i1 %3097, label %3751, label %3098

; <label>:3098                                    ; preds = %3095
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = and i32 %3100, 16
  %3102 = icmp eq i32 %3101, 0
  br i1 %3102, label %3301, label %3103

; <label>:3103                                    ; preds = %3098
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = add i32 %21, 388
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = add i32 %3108, 0
  %3110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3111 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3110, %dx.types.Handle %52, float %2908, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 0
  %3113 = extractvalue %dx.types.ResRet.f32 %3111, 1
  %3114 = extractvalue %dx.types.ResRet.f32 %3111, 2
  %3115 = extractvalue %dx.types.ResRet.f32 %3111, 3
  %3116 = and i32 %3105, 255
  %3117 = uitofp i32 %3116 to float
  %3118 = lshr i32 %3105, 8
  %3119 = and i32 %3118, 255
  %3120 = uitofp i32 %3119 to float
  %3121 = fmul fast float %3115, %3117
  %3122 = fadd fast float %3121, %3120
  %3123 = fmul fast float %3122, 0x3F70101000000000
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = and i32 %3125, 512
  %3127 = icmp eq i32 %3126, 0
  br i1 %3127, label %3136, label %3128

; <label>:3128                                    ; preds = %3103
  %3129 = add i32 %21, 472
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3129, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = add i32 %3131, 0
  %3133 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3132, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3134 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3133, %dx.types.Handle %53, float %2908, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3135 = extractvalue %dx.types.ResRet.f32 %3134, 0
  br label %3136

; <label>:3136                                    ; preds = %3128, %3103
  %3137 = phi float [ %3135, %3128 ], [ 1.000000e+00, %3103 ]
  %3138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3139 = extractvalue %dx.types.ResRet.i32 %3138, 0
  %3140 = and i32 %3139, 33554432
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3248, label %3142

; <label>:3142                                    ; preds = %3136
  %3143 = add i32 %21, 272
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = and i32 %3145, 65535
  %3147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3146)  ; LegacyF16ToF32(value)
  %3148 = lshr i32 %3145, 16
  %3149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3148)  ; LegacyF16ToF32(value)
  %3150 = add i32 %21, 276
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = and i32 %3152, 65535
  %3154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3153)  ; LegacyF16ToF32(value)
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = lshr i32 %3156, 24
  %3158 = uitofp i32 %3157 to float
  %3159 = fmul fast float %3158, 0x3F70101020000000
  %3160 = and i32 %3156, 255
  %3161 = uitofp i32 %3160 to float
  %3162 = fmul fast float %3161, 0x3F70101020000000
  %3163 = lshr i32 %3156, 8
  %3164 = and i32 %3163, 255
  %3165 = uitofp i32 %3164 to float
  %3166 = fmul fast float %3165, 0x3F70101020000000
  %3167 = lshr i32 %3156, 16
  %3168 = and i32 %3167, 255
  %3169 = uitofp i32 %3168 to float
  %3170 = fmul fast float %3169, 0x3F70101020000000
  %3171 = add i32 %21, 268
  %3172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3171, i32 undef)  ; BufferLoad(srv,index,wot)
  %3173 = extractvalue %dx.types.ResRet.i32 %3172, 0
  %3174 = lshr i32 %3173, 24
  %3175 = uitofp i32 %3174 to float
  %3176 = fmul fast float %3175, 0x3F70101020000000
  %3177 = and i32 %3173, 255
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101020000000
  %3180 = lshr i32 %3173, 8
  %3181 = and i32 %3180, 255
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101020000000
  %3184 = lshr i32 %3173, 16
  %3185 = and i32 %3184, 255
  %3186 = uitofp i32 %3185 to float
  %3187 = fmul fast float %3186, 0x3F70101020000000
  %3188 = bitcast float %3112 to i32
  %3189 = ashr i32 %3188, 1
  %3190 = sub nsw i32 1597463174, %3189
  %3191 = bitcast i32 %3190 to float
  %3192 = fmul fast float %3112, 5.000000e-01
  %3193 = fmul fast float %3191, %3191
  %3194 = fmul fast float %3193, %3192
  %3195 = fsub fast float 1.500000e+00, %3194
  %3196 = fmul fast float %3191, %3112
  %3197 = fmul fast float %3196, %3195
  %3198 = bitcast float %3113 to i32
  %3199 = ashr i32 %3198, 1
  %3200 = sub nsw i32 1597463174, %3199
  %3201 = bitcast i32 %3200 to float
  %3202 = fmul fast float %3113, 5.000000e-01
  %3203 = fmul fast float %3201, %3201
  %3204 = fmul fast float %3203, %3202
  %3205 = fsub fast float 1.500000e+00, %3204
  %3206 = fmul fast float %3201, %3113
  %3207 = fmul fast float %3206, %3205
  %3208 = bitcast float %3114 to i32
  %3209 = ashr i32 %3208, 1
  %3210 = sub nsw i32 1597463174, %3209
  %3211 = bitcast i32 %3210 to float
  %3212 = fmul fast float %3114, 5.000000e-01
  %3213 = fmul fast float %3211, %3211
  %3214 = fmul fast float %3213, %3212
  %3215 = fsub fast float 1.500000e+00, %3214
  %3216 = fmul fast float %3211, %3114
  %3217 = fmul fast float %3216, %3215
  %3218 = fsub fast float %3197, %3179
  %3219 = fsub fast float %3207, %3183
  %3220 = fsub fast float %3217, %3187
  %3221 = fmul fast float %3218, %3147
  %3222 = fmul fast float %3219, %3149
  %3223 = fmul fast float %3220, %3154
  %3224 = fadd fast float %3221, %3162
  %3225 = fadd fast float %3222, %3166
  %3226 = fadd fast float %3223, %3170
  %3227 = call float @dx.op.unary.f32(i32 7, float %3224)  ; Saturate(value)
  %3228 = call float @dx.op.unary.f32(i32 7, float %3225)  ; Saturate(value)
  %3229 = call float @dx.op.unary.f32(i32 7, float %3226)  ; Saturate(value)
  %3230 = fmul fast float %3227, %3227
  %3231 = fmul fast float %3228, %3228
  %3232 = fmul fast float %3229, %3229
  %3233 = fsub fast float %3230, %3112
  %3234 = fsub fast float %3231, %3113
  %3235 = fsub fast float %3232, %3114
  %3236 = fmul fast float %3233, %3137
  %3237 = fmul fast float %3234, %3137
  %3238 = fmul fast float %3235, %3137
  %3239 = fadd fast float %3236, %3112
  %3240 = fadd fast float %3237, %3113
  %3241 = fadd fast float %3238, %3114
  %3242 = fadd fast float %3159, %3123
  %3243 = fsub fast float %3242, %3176
  %3244 = call float @dx.op.unary.f32(i32 7, float %3243)  ; Saturate(value)
  %3245 = fsub fast float %3244, %3123
  %3246 = fmul fast float %3245, %3137
  %3247 = fadd fast float %3246, %3123
  br label %3301

; <label>:3248                                    ; preds = %3136
  %3249 = and i32 %3139, 134217728
  %3250 = icmp eq i32 %3249, 0
  br i1 %3250, label %3285, label %3251

; <label>:3251                                    ; preds = %3248
  %3252 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %3253 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %3254 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %3255 = fadd fast float %3252, -5.000000e-01
  %3256 = fadd fast float %3253, -5.000000e-01
  %3257 = fadd fast float %3254, -5.000000e-01
  %3258 = fmul fast float %3255, %3137
  %3259 = fmul fast float %3256, %3137
  %3260 = fmul fast float %3257, %3137
  %3261 = fadd fast float %3258, 5.000000e-01
  %3262 = fadd fast float %3259, 5.000000e-01
  %3263 = fadd fast float %3260, 5.000000e-01
  %3264 = call float @dx.op.unary.f32(i32 24, float %3112)  ; Sqrt(value)
  %3265 = call float @dx.op.unary.f32(i32 24, float %3113)  ; Sqrt(value)
  %3266 = call float @dx.op.unary.f32(i32 24, float %3114)  ; Sqrt(value)
  %3267 = fmul fast float %3261, 2.000000e+00
  %3268 = fsub fast float 1.000000e+00, %3267
  %3269 = fmul fast float %3268, %3264
  %3270 = fadd fast float %3269, %3267
  %3271 = fmul fast float %3270, %3264
  %3272 = fmul fast float %3262, 2.000000e+00
  %3273 = fsub fast float 1.000000e+00, %3272
  %3274 = fmul fast float %3273, %3265
  %3275 = fadd fast float %3274, %3272
  %3276 = fmul fast float %3275, %3265
  %3277 = fmul fast float %3263, 2.000000e+00
  %3278 = fsub fast float 1.000000e+00, %3277
  %3279 = fmul fast float %3278, %3266
  %3280 = fadd fast float %3279, %3277
  %3281 = fmul fast float %3280, %3266
  %3282 = fmul fast float %3271, %3271
  %3283 = fmul fast float %3276, %3276
  %3284 = fmul fast float %3281, %3281
  br label %3301

; <label>:3285                                    ; preds = %3248
  %3286 = fmul fast float %304, %304
  %3287 = fmul fast float %308, %308
  %3288 = fmul fast float %312, %312
  %3289 = fadd fast float %3286, -1.000000e+00
  %3290 = fadd fast float %3287, -1.000000e+00
  %3291 = fadd fast float %3288, -1.000000e+00
  %3292 = fmul fast float %3137, %3289
  %3293 = fmul fast float %3137, %3290
  %3294 = fmul fast float %3137, %3291
  %3295 = fadd fast float %3292, 1.000000e+00
  %3296 = fadd fast float %3293, 1.000000e+00
  %3297 = fadd fast float %3294, 1.000000e+00
  %3298 = fmul fast float %3295, %3112
  %3299 = fmul fast float %3296, %3113
  %3300 = fmul fast float %3297, %3114
  br label %3301

; <label>:3301                                    ; preds = %3285, %3251, %3142, %3098
  %3302 = phi float [ %3247, %3142 ], [ %3123, %3251 ], [ %3123, %3285 ], [ 0x3FA23C0BE0000000, %3098 ]
  %3303 = phi float [ %3239, %3142 ], [ %3282, %3251 ], [ %3298, %3285 ], [ 1.000000e+00, %3098 ]
  %3304 = phi float [ %3240, %3142 ], [ %3283, %3251 ], [ %3299, %3285 ], [ 1.000000e+00, %3098 ]
  %3305 = phi float [ %3241, %3142 ], [ %3284, %3251 ], [ %3300, %3285 ], [ 1.000000e+00, %3098 ]
  %3306 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3307 = extractvalue %dx.types.CBufRet.i32 %3306, 1
  %3308 = and i32 %3307, 1
  %3309 = icmp ne i32 %3308, 0
  %3310 = add i32 %21, 356
  %3311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3310, i32 undef)  ; BufferLoad(srv,index,wot)
  %3312 = extractvalue %dx.types.ResRet.i32 %3311, 0
  %3313 = and i32 %3312, 32
  %3314 = icmp ne i32 %3313, 0
  %3315 = and i1 %3309, %3314
  %3316 = select i1 %3315, float 1.000000e+00, float %3303
  %3317 = select i1 %3315, float 0x3FD3333340000000, float %3304
  %3318 = select i1 %3315, float 0x3FD3333340000000, float %3305
  %3319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3320 = extractvalue %dx.types.ResRet.i32 %3319, 0
  %3321 = and i32 %3320, 32
  %3322 = icmp eq i32 %3321, 0
  br i1 %3322, label %3395, label %3323

; <label>:3323                                    ; preds = %3301
  %3324 = add i32 %21, 140
  %3325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3324, i32 undef)  ; BufferLoad(srv,index,wot)
  %3326 = extractvalue %dx.types.ResRet.i32 %3325, 0
  %3327 = add i32 %21, 404
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = add i32 %3329, 0
  %3331 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3330, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3332 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3331, %dx.types.Handle %52, float %2908, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3333 = extractvalue %dx.types.ResRet.f32 %3332, 0
  %3334 = extractvalue %dx.types.ResRet.f32 %3332, 1
  %3335 = extractvalue %dx.types.ResRet.f32 %3332, 2
  %3336 = extractvalue %dx.types.ResRet.f32 %3332, 3
  %3337 = and i32 %3326, 255
  %3338 = uitofp i32 %3337 to float
  %3339 = lshr i32 %3326, 8
  %3340 = and i32 %3339, 255
  %3341 = uitofp i32 %3340 to float
  %3342 = lshr i32 %3326, 16
  %3343 = and i32 %3342, 255
  %3344 = uitofp i32 %3343 to float
  %3345 = fmul fast float %3344, 0x3F70101000000000
  %3346 = fmul fast float %3333, %3338
  %3347 = fadd fast float %3346, %3341
  %3348 = fmul fast float %3347, 0x3F70101000000000
  %3349 = fadd fast float %3334, -5.000000e-01
  %3350 = fadd fast float %3336, -5.000000e-01
  %3351 = fmul fast float %3349, %3345
  %3352 = fmul fast float %3350, %3345
  %3353 = fadd fast float %3351, 5.000000e-01
  %3354 = fadd fast float %3352, 5.000000e-01
  %3355 = fmul fast float %3353, 2.000000e+00
  %3356 = fadd fast float %3355, -1.000000e+00
  %3357 = fmul fast float %3354, 2.000000e+00
  %3358 = fadd fast float %3357, -1.000000e+00
  %3359 = fadd fast float %3356, %3358
  %3360 = fmul fast float %3359, 5.000000e-01
  %3361 = fsub fast float %3356, %3358
  %3362 = fmul fast float %3361, 5.000000e-01
  %3363 = call float @dx.op.unary.f32(i32 6, float %3360)  ; FAbs(value)
  %3364 = fsub fast float 1.000000e+00, %3363
  %3365 = call float @dx.op.unary.f32(i32 6, float %3362)  ; FAbs(value)
  %3366 = fsub fast float %3364, %3365
  %3367 = call float @dx.op.dot3.f32(i32 55, float %3360, float %3362, float %3366, float %3360, float %3362, float %3366)  ; Dot3(ax,ay,az,bx,by,bz)
  %3368 = call float @dx.op.unary.f32(i32 25, float %3367)  ; Rsqrt(value)
  %3369 = fmul fast float %3360, %3368
  %3370 = fmul fast float %3362, %3368
  %3371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3372 = extractvalue %dx.types.ResRet.i32 %3371, 0
  %3373 = and i32 %3372, 67108864
  %3374 = icmp eq i32 %3373, 0
  br i1 %3374, label %3391, label %3375

; <label>:3375                                    ; preds = %3323
  %3376 = add i32 %21, 328
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3376, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = and i32 %3378, 65535
  %3380 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3379)  ; LegacyF16ToF32(value)
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = and i32 %3382, 65535
  %3384 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3383)  ; LegacyF16ToF32(value)
  %3385 = lshr i32 %3378, 16
  %3386 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3385)  ; LegacyF16ToF32(value)
  %3387 = fsub fast float %3348, %3386
  %3388 = fmul fast float %3387, %3380
  %3389 = fadd fast float %3388, %3384
  %3390 = call float @dx.op.unary.f32(i32 7, float %3389)  ; Saturate(value)
  br label %3391

; <label>:3391                                    ; preds = %3375, %3323
  %3392 = phi float [ %3390, %3375 ], [ %3348, %3323 ]
  %3393 = call float @dx.op.dot2.f32(i32 54, float %3369, float %3370, float %2812, float %2813)  ; Dot2(ax,ay,bx,by)
  %3394 = call float @dx.op.dot2.f32(i32 54, float %3369, float %3370, float %2814, float %2815)  ; Dot2(ax,ay,bx,by)
  br label %3395

; <label>:3395                                    ; preds = %3391, %3301
  %3396 = phi float [ %3392, %3391 ], [ 0x3FD6666660000000, %3301 ]
  %3397 = phi float [ %3393, %3391 ], [ 0.000000e+00, %3301 ]
  %3398 = phi float [ %3394, %3391 ], [ 0.000000e+00, %3301 ]
  %3399 = phi float [ %3335, %3391 ], [ 1.000000e+00, %3301 ]
  %3400 = add i32 %21, 208
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = lshr i32 %3402, 22
  %3404 = shl nuw nsw i32 %3403, 5
  %3405 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3404)  ; LegacyF16ToF32(value)
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = and i32 %3407, 64
  %3409 = icmp eq i32 %3408, 0
  br i1 %3409, label %3443, label %3410

; <label>:3410                                    ; preds = %3395
  %3411 = add i32 %21, 420
  %3412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3411, i32 undef)  ; BufferLoad(srv,index,wot)
  %3413 = extractvalue %dx.types.ResRet.i32 %3412, 0
  %3414 = add i32 %3413, 0
  %3415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3417 = extractvalue %dx.types.ResRet.i32 %3416, 0
  %3418 = and i32 %3417, 131072
  %3419 = icmp eq i32 %3418, 0
  %3420 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3415, %dx.types.Handle %52, float %2908, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3421 = extractvalue %dx.types.ResRet.f32 %3420, 0
  %3422 = extractvalue %dx.types.ResRet.f32 %3420, 1
  %3423 = extractvalue %dx.types.ResRet.f32 %3420, 2
  %3424 = fmul fast float %3421, %292
  %3425 = fmul fast float %3422, %295
  %3426 = fmul fast float %3423, %298
  br i1 %3419, label %3433, label %3427

; <label>:3427                                    ; preds = %3410
  %3428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3429 = extractvalue %dx.types.CBufRet.f32 %3428, 0
  %3430 = fmul fast float %3429, %3424
  %3431 = fmul fast float %3429, %3425
  %3432 = fmul fast float %3429, %3426
  br label %3433

; <label>:3433                                    ; preds = %3427, %3410
  %3434 = phi float [ %3430, %3427 ], [ %3424, %3410 ]
  %3435 = phi float [ %3431, %3427 ], [ %3425, %3410 ]
  %3436 = phi float [ %3432, %3427 ], [ %3426, %3410 ]
  %3437 = fmul fast float %3434, %3405
  %3438 = select i1 %160, float %3437, float %3434
  %3439 = call float @dx.op.dot3.f32(i32 55, float %3438, float %3435, float %3436, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3440 = select i1 %160, float 0.000000e+00, float %3434
  %3441 = select i1 %160, float %3439, float %3435
  %3442 = select i1 %160, float 0.000000e+00, float %3436
  br label %3443

; <label>:3443                                    ; preds = %3433, %3395
  %3444 = phi float [ %3440, %3433 ], [ 0.000000e+00, %3395 ]
  %3445 = phi float [ %3441, %3433 ], [ 0.000000e+00, %3395 ]
  %3446 = phi float [ %3442, %3433 ], [ 0.000000e+00, %3395 ]
  %3447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3448 = extractvalue %dx.types.ResRet.i32 %3447, 0
  %3449 = and i32 %3448, 1024
  %3450 = icmp eq i32 %3449, 0
  br i1 %3450, label %3481, label %3451

; <label>:3451                                    ; preds = %3443
  %3452 = add i32 %21, 200
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3452, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = and i32 %3454, 255
  %3456 = uitofp i32 %3455 to float
  %3457 = fmul fast float %3456, 0x3F70101020000000
  %3458 = lshr i32 %3454, 8
  %3459 = and i32 %3458, 255
  %3460 = uitofp i32 %3459 to float
  %3461 = fmul fast float %3460, 0x3F70101020000000
  %3462 = lshr i32 %3454, 16
  %3463 = and i32 %3462, 255
  %3464 = uitofp i32 %3463 to float
  %3465 = fmul fast float %3464, 0x3F70101020000000
  %3466 = fmul fast float %3457, %3457
  %3467 = fmul fast float %3461, %3461
  %3468 = fmul fast float %3465, %3465
  %3469 = add i32 %21, 488
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = add i32 %3471, 0
  %3473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3474 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3473, %dx.types.Handle %53, float %2908, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3475 = extractvalue %dx.types.ResRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.ResRet.f32 %3474, 1
  %3477 = extractvalue %dx.types.ResRet.f32 %3474, 2
  %3478 = fmul fast float %3466, %3475
  %3479 = fmul fast float %3467, %3476
  %3480 = fmul fast float %3468, %3477
  br label %3481

; <label>:3481                                    ; preds = %3451, %3443
  %3482 = phi float [ %3478, %3451 ], [ 0.000000e+00, %3443 ]
  %3483 = phi float [ %3479, %3451 ], [ 0.000000e+00, %3443 ]
  %3484 = phi float [ %3480, %3451 ], [ 0.000000e+00, %3443 ]
  %3485 = fcmp fast ogt float %3482, 0.000000e+00
  %3486 = fcmp fast ogt float %3483, 0.000000e+00
  %3487 = fcmp fast ogt float %3484, 0.000000e+00
  %3488 = call float @dx.op.unary.f32(i32 23, float %3482)  ; Log(value)
  %3489 = call float @dx.op.unary.f32(i32 23, float %3483)  ; Log(value)
  %3490 = call float @dx.op.unary.f32(i32 23, float %3484)  ; Log(value)
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = lshr i32 %3492, 7
  %3494 = and i32 %3493, 32752
  %3495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3494)  ; LegacyF16ToF32(value)
  %3496 = fmul fast float %3488, 0xBFE62E4300000000
  %3497 = fmul fast float %3496, %3495
  %3498 = fmul fast float %3489, 0xBFE62E4300000000
  %3499 = fmul fast float %3498, %3495
  %3500 = fmul fast float %3490, 0xBFE62E4300000000
  %3501 = fmul fast float %3500, %3495
  %3502 = select i1 %3485, float %3497, float 1.270000e+02
  %3503 = select i1 %3486, float %3499, float 1.270000e+02
  %3504 = select i1 %3487, float %3501, float 1.270000e+02
  %3505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3506 = extractvalue %dx.types.ResRet.i32 %3505, 0
  %3507 = and i32 %3506, 10240
  %3508 = icmp eq i32 %3507, 0
  br i1 %3508, label %3529, label %3509

; <label>:3509                                    ; preds = %3481
  %3510 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.i32 %3510, 0
  %3512 = and i32 %3511, 2048
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3529, label %3514

; <label>:3514                                    ; preds = %3509
  %3515 = add i32 %21, 504
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = add i32 %3517, 0
  %3519 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3518, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3520 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3519, %dx.types.Handle %53, float %2908, float %2909, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 3
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = shl i32 %3523, 4
  %3525 = and i32 %3524, 32752
  %3526 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3525)  ; LegacyF16ToF32(value)
  %3527 = fmul fast float %3526, %3521
  %3528 = call float @dx.op.binary.f32(i32 35, float %3527, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3529

; <label>:3529                                    ; preds = %3514, %3509, %3481
  %3530 = phi float [ %3528, %3514 ], [ 0x3F70101020000000, %3509 ], [ 0x3F70101020000000, %3481 ]
  %3531 = add i32 %21, 144
  %3532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3531, i32 undef)  ; BufferLoad(srv,index,wot)
  %3533 = extractvalue %dx.types.ResRet.i32 %3532, 0
  %3534 = and i32 %3533, 255
  %3535 = uitofp i32 %3534 to float
  %3536 = lshr i32 %3533, 8
  %3537 = and i32 %3536, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = call float @dx.op.dot3.f32(i32 55, float %3316, float %3317, float %3318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3540 = fmul fast float %3538, %3539
  %3541 = fadd fast float %3540, %3535
  %3542 = fmul fast float %3541, 0x3F70101020000000
  %3543 = call float @dx.op.unary.f32(i32 7, float %3542)  ; Saturate(value)
  br i1 %2800, label %3544, label %3579

; <label>:3544                                    ; preds = %3529
  %3545 = fmul fast float %3530, 2.000000e+00
  %3546 = fcmp fast olt float %3502, 1.270000e+02
  %3547 = fcmp fast olt float %3503, 1.270000e+02
  %3548 = fcmp fast olt float %3504, 1.270000e+02
  %3549 = fmul fast float %3502, 0xBFF7154760000000
  %3550 = fmul fast float %3549, %3545
  %3551 = fmul fast float %3503, 0xBFF7154760000000
  %3552 = fmul fast float %3551, %3545
  %3553 = fmul fast float %3504, 0xBFF7154760000000
  %3554 = fmul fast float %3553, %3545
  %3555 = call float @dx.op.unary.f32(i32 21, float %3550)  ; Exp(value)
  %3556 = call float @dx.op.unary.f32(i32 21, float %3552)  ; Exp(value)
  %3557 = call float @dx.op.unary.f32(i32 21, float %3554)  ; Exp(value)
  %3558 = call float @dx.op.unary.f32(i32 7, float %3555)  ; Saturate(value)
  %3559 = call float @dx.op.unary.f32(i32 7, float %3556)  ; Saturate(value)
  %3560 = call float @dx.op.unary.f32(i32 7, float %3557)  ; Saturate(value)
  %3561 = fadd fast float %3558, -1.000000e+00
  %3562 = select i1 %3546, float %3561, float -1.000000e+00
  %3563 = fadd fast float %3559, -1.000000e+00
  %3564 = select i1 %3547, float %3563, float -1.000000e+00
  %3565 = fadd fast float %3560, -1.000000e+00
  %3566 = select i1 %3548, float %3565, float -1.000000e+00
  %3567 = fmul fast float %3562, %3096
  %3568 = fmul fast float %3564, %3096
  %3569 = fmul fast float %3566, %3096
  %3570 = fadd fast float %3567, 1.000000e+00
  %3571 = fadd fast float %3568, 1.000000e+00
  %3572 = fadd fast float %3569, 1.000000e+00
  %3573 = fmul fast float %3570, %2789
  %3574 = fmul fast float %3571, %2790
  %3575 = fmul fast float %3572, %2791
  %3576 = fmul fast float %3570, %2792
  %3577 = fmul fast float %3571, %2793
  %3578 = fmul fast float %3572, %2794
  br label %3579

; <label>:3579                                    ; preds = %3544, %3529
  %3580 = phi float [ %3573, %3544 ], [ %2789, %3529 ]
  %3581 = phi float [ %3574, %3544 ], [ %2790, %3529 ]
  %3582 = phi float [ %3575, %3544 ], [ %2791, %3529 ]
  %3583 = phi float [ %3576, %3544 ], [ %2792, %3529 ]
  %3584 = phi float [ %3577, %3544 ], [ %2793, %3529 ]
  %3585 = phi float [ %3578, %3544 ], [ %2794, %3529 ]
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = and i32 %3587, 3
  %3589 = icmp eq i32 %3588, 3
  br i1 %3589, label %3668, label %3590

; <label>:3590                                    ; preds = %3579
  %3591 = and i32 %3587, 16
  %3592 = icmp ne i32 %3591, 0
  %3593 = select i1 %3592, float %3096, float 0.000000e+00
  %3594 = icmp eq i32 %3588, 0
  br i1 %3594, label %3595, label %3623

; <label>:3595                                    ; preds = %3590
  %3596 = and i32 %3587, 64
  %3597 = icmp ne i32 %3596, 0
  %3598 = select i1 %3597, float %3096, float 0.000000e+00
  %3599 = fsub fast float %3316, %3580
  %3600 = fsub fast float %3317, %3581
  %3601 = fsub fast float %3318, %3582
  %3602 = fmul fast float %3593, %3599
  %3603 = fmul fast float %3593, %3600
  %3604 = fmul fast float %3593, %3601
  %3605 = fadd fast float %3602, %3580
  %3606 = fadd fast float %3603, %3581
  %3607 = fadd fast float %3604, %3582
  %3608 = fsub fast float %3302, %2795
  %3609 = fmul fast float %3593, %3608
  %3610 = fadd fast float %3609, %2795
  %3611 = fsub fast float %3444, %3583
  %3612 = fsub fast float %3445, %3584
  %3613 = fsub fast float %3446, %3585
  %3614 = fmul fast float %3598, %3611
  %3615 = fmul fast float %3598, %3612
  %3616 = fmul fast float %3598, %3613
  %3617 = fadd fast float %3614, %3583
  %3618 = fadd fast float %3615, %3584
  %3619 = fadd fast float %3616, %3585
  %3620 = fsub fast float %3543, %2798
  %3621 = fmul fast float %3593, %3620
  %3622 = fadd fast float %3621, %2798
  br label %3668

; <label>:3623                                    ; preds = %3590
  %3624 = icmp eq i32 %3588, 1
  br i1 %3624, label %3625, label %3638

; <label>:3625                                    ; preds = %3623
  %3626 = fadd fast float %3316, -1.000000e+00
  %3627 = fadd fast float %3317, -1.000000e+00
  %3628 = fadd fast float %3318, -1.000000e+00
  %3629 = fmul fast float %3593, %3626
  %3630 = fmul fast float %3593, %3627
  %3631 = fmul fast float %3593, %3628
  %3632 = fadd fast float %3629, 1.000000e+00
  %3633 = fadd fast float %3630, 1.000000e+00
  %3634 = fadd fast float %3631, 1.000000e+00
  %3635 = fmul fast float %3632, %3580
  %3636 = fmul fast float %3633, %3581
  %3637 = fmul fast float %3634, %3582
  br label %3668

; <label>:3638                                    ; preds = %3623
  %3639 = icmp eq i32 %3588, 2
  br i1 %3639, label %3640, label %3668

; <label>:3640                                    ; preds = %3638
  %3641 = call float @dx.op.unary.f32(i32 24, float %3316)  ; Sqrt(value)
  %3642 = call float @dx.op.unary.f32(i32 24, float %3317)  ; Sqrt(value)
  %3643 = call float @dx.op.unary.f32(i32 24, float %3318)  ; Sqrt(value)
  %3644 = fadd fast float %3641, -5.000000e-01
  %3645 = fadd fast float %3642, -5.000000e-01
  %3646 = fadd fast float %3643, -5.000000e-01
  %3647 = fmul fast float %3644, %3593
  %3648 = fmul fast float %3645, %3593
  %3649 = fmul fast float %3646, %3593
  %3650 = fadd fast float %3647, 5.000000e-01
  %3651 = fadd fast float %3648, 5.000000e-01
  %3652 = fadd fast float %3649, 5.000000e-01
  %3653 = fmul fast float %3650, 2.000000e+00
  %3654 = fsub fast float 1.000000e+00, %3653
  %3655 = fmul fast float %3654, %3580
  %3656 = fadd fast float %3655, %3653
  %3657 = fmul fast float %3656, %3580
  %3658 = fmul fast float %3651, 2.000000e+00
  %3659 = fsub fast float 1.000000e+00, %3658
  %3660 = fmul fast float %3659, %3581
  %3661 = fadd fast float %3660, %3658
  %3662 = fmul fast float %3661, %3581
  %3663 = fmul fast float %3652, 2.000000e+00
  %3664 = fsub fast float 1.000000e+00, %3663
  %3665 = fmul fast float %3664, %3582
  %3666 = fadd fast float %3665, %3663
  %3667 = fmul fast float %3666, %3582
  br label %3668

; <label>:3668                                    ; preds = %3640, %3638, %3625, %3595, %3579
  %3669 = phi float [ %3580, %3579 ], [ %3657, %3640 ], [ %3580, %3638 ], [ %3635, %3625 ], [ %3605, %3595 ]
  %3670 = phi float [ %3581, %3579 ], [ %3662, %3640 ], [ %3581, %3638 ], [ %3636, %3625 ], [ %3606, %3595 ]
  %3671 = phi float [ %3582, %3579 ], [ %3667, %3640 ], [ %3582, %3638 ], [ %3637, %3625 ], [ %3607, %3595 ]
  %3672 = phi float [ %3583, %3579 ], [ %3583, %3640 ], [ %3583, %3638 ], [ %3583, %3625 ], [ %3617, %3595 ]
  %3673 = phi float [ %3584, %3579 ], [ %3584, %3640 ], [ %3584, %3638 ], [ %3584, %3625 ], [ %3618, %3595 ]
  %3674 = phi float [ %3585, %3579 ], [ %3585, %3640 ], [ %3585, %3638 ], [ %3585, %3625 ], [ %3619, %3595 ]
  %3675 = phi float [ %2795, %3579 ], [ %2795, %3640 ], [ %2795, %3638 ], [ %2795, %3625 ], [ %3610, %3595 ]
  %3676 = phi float [ %2798, %3579 ], [ %2798, %3640 ], [ %2798, %3638 ], [ %2798, %3625 ], [ %3622, %3595 ]
  %3677 = and i32 %3587, 12
  %3678 = icmp eq i32 %3677, 12
  br i1 %3678, label %3751, label %3679

; <label>:3679                                    ; preds = %3668
  %3680 = and i32 %3587, 2097184
  %3681 = icmp eq i32 %3680, 2097184
  %3682 = select i1 %3681, float %3096, float 0.000000e+00
  %3683 = and i32 %3587, 4194336
  %3684 = icmp eq i32 %3683, 4194336
  %3685 = select i1 %3684, float %3096, float 0.000000e+00
  %3686 = and i32 %3587, 8388640
  %3687 = icmp eq i32 %3686, 8388640
  %3688 = select i1 %3687, float %3096, float 0.000000e+00
  %3689 = icmp eq i32 %3677, 0
  br i1 %3689, label %3690, label %3703

; <label>:3690                                    ; preds = %3679
  %3691 = fsub fast float %3397, %2787
  %3692 = fsub fast float %3398, %2788
  %3693 = fmul fast float %3682, %3691
  %3694 = fmul fast float %3682, %3692
  %3695 = fadd fast float %3693, %2787
  %3696 = fadd fast float %3694, %2788
  %3697 = fsub fast float %3399, %2797
  %3698 = fmul fast float %3685, %3697
  %3699 = fadd fast float %3698, %2797
  %3700 = fsub fast float %3396, %2796
  %3701 = fmul fast float %3688, %3700
  %3702 = fadd fast float %3701, %2796
  br label %3751

; <label>:3703                                    ; preds = %3679
  %3704 = icmp eq i32 %3677, 4
  br i1 %3704, label %3705, label %3737

; <label>:3705                                    ; preds = %3703
  %3706 = fmul fast float %3682, %3397
  %3707 = fmul fast float %3682, %3398
  %3708 = fadd fast float %3706, %2787
  %3709 = fadd fast float %3707, %2788
  %3710 = call float @dx.op.binary.f32(i32 36, float %2797, float %3399)  ; FMin(a,b)
  %3711 = fsub fast float %3710, %2797
  %3712 = fmul fast float %3711, %3685
  %3713 = fadd fast float %3712, %2797
  %3714 = fadd fast float %3396, %2796
  %3715 = fmul fast float %3714, 0x3FF337FAE0000000
  %3716 = fmul fast float %2796, %2796
  %3717 = fmul fast float %3396, %3396
  %3718 = fadd fast float %3717, %3716
  %3719 = fmul fast float %3718, 0x3FE5152B00000000
  %3720 = fmul fast float %2796, 0xBFCC1F85E0000000
  %3721 = fmul fast float %3720, %3396
  %3722 = fadd fast float %3721, 0xBFE1363700000000
  %3723 = fadd fast float %3722, %3715
  %3724 = fsub fast float %3723, %3719
  %3725 = fmul fast float %3714, 0x3FBA6F0D00000000
  %3726 = fmul fast float %3718, 0x3FD0432880000000
  %3727 = fmul fast float %2796, 0xBFEF110800000000
  %3728 = fmul fast float %3727, %3396
  %3729 = fadd fast float %3728, 1.000000e+00
  %3730 = fsub fast float %3729, %3725
  %3731 = fadd fast float %3730, %3726
  %3732 = fdiv fast float %3724, %3731
  %3733 = call float @dx.op.unary.f32(i32 7, float %3732)  ; Saturate(value)
  %3734 = fsub fast float %3733, %2796
  %3735 = fmul fast float %3734, %3688
  %3736 = fadd fast float %3735, %2796
  br label %3751

; <label>:3737                                    ; preds = %3703
  %3738 = icmp eq i32 %3677, 8
  br i1 %3738, label %3739, label %3751

; <label>:3739                                    ; preds = %3737
  %3740 = fmul fast float %3682, %3397
  %3741 = fmul fast float %3682, %3398
  %3742 = fadd fast float %3740, %2787
  %3743 = fadd fast float %3741, %2788
  %3744 = call float @dx.op.binary.f32(i32 36, float %2797, float %3399)  ; FMin(a,b)
  %3745 = fsub fast float %3744, %2797
  %3746 = fmul fast float %3745, %3685
  %3747 = fadd fast float %3746, %2797
  %3748 = fsub fast float %3396, %2796
  %3749 = fmul fast float %3688, %3748
  %3750 = fadd fast float %3749, %2796
  br label %3751

; <label>:3751                                    ; preds = %3739, %3737, %3705, %3690, %3668, %3095, %2799, %2786
  %3752 = phi float [ %2787, %3668 ], [ %2787, %3095 ], [ %2787, %2786 ], [ %2787, %2799 ], [ %3695, %3690 ], [ %3708, %3705 ], [ %2787, %3737 ], [ %3742, %3739 ]
  %3753 = phi float [ %2788, %3668 ], [ %2788, %3095 ], [ %2788, %2786 ], [ %2788, %2799 ], [ %3696, %3690 ], [ %3709, %3705 ], [ %2788, %3737 ], [ %3743, %3739 ]
  %3754 = phi float [ %3669, %3668 ], [ %2789, %3095 ], [ %2789, %2786 ], [ %2789, %2799 ], [ %3669, %3690 ], [ %3669, %3705 ], [ %3669, %3737 ], [ %3669, %3739 ]
  %3755 = phi float [ %3670, %3668 ], [ %2790, %3095 ], [ %2790, %2786 ], [ %2790, %2799 ], [ %3670, %3690 ], [ %3670, %3705 ], [ %3670, %3737 ], [ %3670, %3739 ]
  %3756 = phi float [ %3671, %3668 ], [ %2791, %3095 ], [ %2791, %2786 ], [ %2791, %2799 ], [ %3671, %3690 ], [ %3671, %3705 ], [ %3671, %3737 ], [ %3671, %3739 ]
  %3757 = phi float [ %3672, %3668 ], [ %2792, %3095 ], [ %2792, %2786 ], [ %2792, %2799 ], [ %3672, %3690 ], [ %3672, %3705 ], [ %3672, %3737 ], [ %3672, %3739 ]
  %3758 = phi float [ %3673, %3668 ], [ %2793, %3095 ], [ %2793, %2786 ], [ %2793, %2799 ], [ %3673, %3690 ], [ %3673, %3705 ], [ %3673, %3737 ], [ %3673, %3739 ]
  %3759 = phi float [ %3674, %3668 ], [ %2794, %3095 ], [ %2794, %2786 ], [ %2794, %2799 ], [ %3674, %3690 ], [ %3674, %3705 ], [ %3674, %3737 ], [ %3674, %3739 ]
  %3760 = phi float [ %3675, %3668 ], [ %2795, %3095 ], [ %2795, %2786 ], [ %2795, %2799 ], [ %3675, %3690 ], [ %3675, %3705 ], [ %3675, %3737 ], [ %3675, %3739 ]
  %3761 = phi float [ %2796, %3668 ], [ %2796, %3095 ], [ %2796, %2786 ], [ %2796, %2799 ], [ %3702, %3690 ], [ %3736, %3705 ], [ %2796, %3737 ], [ %3750, %3739 ]
  %3762 = phi float [ %2797, %3668 ], [ %2797, %3095 ], [ %2797, %2786 ], [ %2797, %2799 ], [ %3699, %3690 ], [ %3713, %3705 ], [ %2797, %3737 ], [ %3747, %3739 ]
  %3763 = phi float [ %3676, %3668 ], [ %2798, %3095 ], [ %2798, %2786 ], [ %2798, %2799 ], [ %3676, %3690 ], [ %3676, %3705 ], [ %3676, %3737 ], [ %3676, %3739 ]
  %3764 = add i32 %21, 360
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = extractvalue %dx.types.ResRet.i32 %3765, 1
  %3768 = bitcast i32 %3766 to float
  %3769 = bitcast i32 %3767 to float
  %3770 = fcmp fast oge float %3768, 0.000000e+00
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = select i1 %3770, float %3768, float %3772
  %3774 = add i32 %21, 456
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = add i32 %3776, 0
  %3778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3777, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3779 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3778, %dx.types.Handle %53, float %44, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = fmul fast float %3780, %3769
  %3782 = fadd fast float %3781, %3773
  %3783 = call float @dx.op.dot2.f32(i32 54, float %3752, float %3753, float %3752, float %3753)  ; Dot2(ax,ay,bx,by)
  %3784 = fmul fast float %3783, 0x3FE3333340000000
  %3785 = fsub fast float 1.000000e+00, %3784
  %3786 = call float @dx.op.dot3.f32(i32 55, float %3752, float %3753, float %3785, float %3752, float %3753, float %3785)  ; Dot3(ax,ay,az,bx,by,bz)
  %3787 = call float @dx.op.unary.f32(i32 25, float %3786)  ; Rsqrt(value)
  %3788 = fmul fast float %3787, %3752
  %3789 = fmul fast float %3787, %3753
  %3790 = fmul fast float %3785, %3787
  %3791 = fmul fast float %3790, %63
  %3792 = fmul fast float %3790, %64
  %3793 = fmul fast float %3790, %65
  %3794 = fmul fast float %3788, %37
  %3795 = fmul fast float %3788, %38
  %3796 = fmul fast float %3788, %39
  %3797 = fadd fast float %3791, %3794
  %3798 = fadd fast float %3792, %3795
  %3799 = fadd fast float %3793, %3796
  %3800 = fmul fast float %75, %3789
  %3801 = fmul fast float %76, %3789
  %3802 = fmul fast float %77, %3789
  %3803 = fadd fast float %3797, %3800
  %3804 = fadd fast float %3798, %3801
  %3805 = fadd fast float %3799, %3802
  %3806 = call float @dx.op.dot3.f32(i32 55, float %3803, float %3804, float %3805, float %3803, float %3804, float %3805)  ; Dot3(ax,ay,az,bx,by,bz)
  %3807 = call float @dx.op.unary.f32(i32 25, float %3806)  ; Rsqrt(value)
  %3808 = fmul fast float %3803, %3807
  %3809 = fmul fast float %3804, %3807
  %3810 = fmul fast float %3805, %3807
  %3811 = and i32 %23, 1
  %3812 = icmp eq i32 %3811, 0
  br i1 %3812, label %3813, label %4321

; <label>:3813                                    ; preds = %3751
  %3814 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %3815 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %3816 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %3817 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %3818 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %3819 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %3820 = fadd fast float %3814, %119
  %3821 = fadd fast float %3815, %120
  %3822 = fadd fast float %3816, %121
  %3823 = fadd fast float %3817, %119
  %3824 = fadd fast float %3818, %120
  %3825 = fadd fast float %3819, %121
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  %3828 = extractvalue %dx.types.CBufRet.f32 %3826, 1
  %3829 = extractvalue %dx.types.CBufRet.f32 %3826, 2
  %3830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3831 = extractvalue %dx.types.CBufRet.f32 %3830, 2
  %3832 = extractvalue %dx.types.CBufRet.f32 %3830, 3
  %3833 = fmul fast float %3827, %56
  %3834 = fmul fast float %3833, %3831
  %3835 = fmul fast float %3828, %57
  %3836 = fmul fast float %3835, %3832
  %3837 = fptoui float %3834 to i32
  %3838 = fptoui float %3836 to i32
  %3839 = fadd fast float %3827, -1.000000e+00
  %3840 = fadd fast float %3828, -1.000000e+00
  %3841 = fptoui float %3839 to i32
  %3842 = fptoui float %3840 to i32
  %3843 = call i32 @dx.op.binary.i32(i32 40, i32 %3837, i32 %3841)  ; UMin(a,b)
  %3844 = call i32 @dx.op.binary.i32(i32 40, i32 %3838, i32 %3842)  ; UMin(a,b)
  %3845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3846 = extractvalue %dx.types.CBufRet.f32 %3845, 2
  %3847 = extractvalue %dx.types.CBufRet.f32 %3845, 3
  %3848 = fmul fast float %3846, %51
  %3849 = fsub fast float %3848, %3847
  %3850 = fadd fast float %3829, -1.000000e+00
  %3851 = call float @dx.op.binary.f32(i32 36, float %3849, float %3850)  ; FMin(a,b)
  %3852 = fptoui float %3851 to i32
  %3853 = fptoui float %3827 to i32
  %3854 = fptoui float %3828 to i32
  %3855 = mul i32 %3852, %3854
  %3856 = add i32 %3855, %3844
  %3857 = mul i32 %3856, %3853
  %3858 = add i32 %3857, %3843
  %3859 = shl i32 %3858, 2
  %3860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3859, i32 undef)  ; BufferLoad(srv,index,wot)
  %3861 = extractvalue %dx.types.ResRet.i32 %3860, 0
  %3862 = and i32 %3861, 1023
  %3863 = lshr i32 %3861, 10
  %3864 = icmp eq i32 %3862, 0
  br i1 %3864, label %4290, label %3865

; <label>:3865                                    ; preds = %3813
  %3866 = and i32 %3861, 1023
  br label %3867

; <label>:3867                                    ; preds = %3993, %3865
  %3868 = phi i32 [ %3943, %3993 ], [ 0, %3865 ]
  %3869 = phi float [ %3994, %3993 ], [ 0.000000e+00, %3865 ]
  %3870 = phi float [ %3995, %3993 ], [ %3782, %3865 ]
  %3871 = phi float [ %3996, %3993 ], [ %3763, %3865 ]
  %3872 = phi float [ %3997, %3993 ], [ 0.000000e+00, %3865 ]
  %3873 = phi float [ %3998, %3993 ], [ 0.000000e+00, %3865 ]
  %3874 = phi float [ %3999, %3993 ], [ %3757, %3865 ]
  %3875 = phi float [ %4000, %3993 ], [ %3758, %3865 ]
  %3876 = phi float [ %4001, %3993 ], [ %3759, %3865 ]
  %3877 = phi float [ %4002, %3993 ], [ %3808, %3865 ]
  %3878 = phi float [ %4003, %3993 ], [ %3809, %3865 ]
  %3879 = phi float [ %4004, %3993 ], [ %3810, %3865 ]
  %3880 = phi float [ %4005, %3993 ], [ %3762, %3865 ]
  %3881 = phi float [ %4006, %3993 ], [ %3761, %3865 ]
  %3882 = phi float [ %4007, %3993 ], [ 0.000000e+00, %3865 ]
  %3883 = phi float [ %4008, %3993 ], [ %3760, %3865 ]
  %3884 = phi float [ %4009, %3993 ], [ %3754, %3865 ]
  %3885 = phi float [ %4010, %3993 ], [ %3755, %3865 ]
  %3886 = phi float [ %4011, %3993 ], [ %3756, %3865 ]
  %3887 = add nuw nsw i32 %3868, %3863
  %3888 = shl i32 %3887, 2
  %3889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.i32 %3889, 0
  %3891 = shl i32 %3890, 8
  %3892 = or i32 %3891, 48
  %3893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.f32 %3893, 0
  %3895 = extractvalue %dx.types.ResRet.f32 %3893, 1
  %3896 = extractvalue %dx.types.ResRet.f32 %3893, 2
  %3897 = extractvalue %dx.types.ResRet.f32 %3893, 3
  %3898 = or i32 %3891, 64
  %3899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.i32 %3899, 0
  %3901 = extractvalue %dx.types.ResRet.i32 %3899, 1
  %3902 = or i32 %3891, 80
  %3903 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3902, i32 undef)  ; BufferLoad(srv,index,wot)
  %3904 = extractvalue %dx.types.ResRet.f32 %3903, 2
  %3905 = extractvalue %dx.types.ResRet.f32 %3903, 3
  %3906 = or i32 %3891, 96
  %3907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3906, i32 undef)  ; BufferLoad(srv,index,wot)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.ResRet.f32 %3907, 1
  %3910 = extractvalue %dx.types.ResRet.f32 %3907, 2
  %3911 = extractvalue %dx.types.ResRet.f32 %3907, 3
  %3912 = or i32 %3891, 112
  %3913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3912, i32 undef)  ; BufferLoad(srv,index,wot)
  %3914 = extractvalue %dx.types.ResRet.f32 %3913, 2
  %3915 = or i32 %3891, 128
  %3916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3915, i32 undef)  ; BufferLoad(srv,index,wot)
  %3917 = extractvalue %dx.types.ResRet.f32 %3916, 0
  %3918 = extractvalue %dx.types.ResRet.f32 %3916, 1
  %3919 = extractvalue %dx.types.ResRet.f32 %3916, 2
  %3920 = extractvalue %dx.types.ResRet.f32 %3916, 3
  %3921 = or i32 %3891, 144
  %3922 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3921, i32 undef)  ; BufferLoad(srv,index,wot)
  %3923 = extractvalue %dx.types.ResRet.f32 %3922, 0
  %3924 = extractvalue %dx.types.ResRet.f32 %3922, 1
  %3925 = extractvalue %dx.types.ResRet.f32 %3922, 2
  %3926 = extractvalue %dx.types.ResRet.f32 %3922, 3
  %3927 = or i32 %3891, 160
  %3928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3927, i32 undef)  ; BufferLoad(srv,index,wot)
  %3929 = extractvalue %dx.types.ResRet.f32 %3928, 0
  %3930 = extractvalue %dx.types.ResRet.f32 %3928, 1
  %3931 = extractvalue %dx.types.ResRet.f32 %3928, 2
  %3932 = extractvalue %dx.types.ResRet.f32 %3928, 3
  %3933 = or i32 %3891, 192
  %3934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3933, i32 undef)  ; BufferLoad(srv,index,wot)
  %3935 = extractvalue %dx.types.ResRet.i32 %3934, 0
  %3936 = or i32 %3891, 208
  %3937 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3936, i32 undef)  ; BufferLoad(srv,index,wot)
  %3938 = extractvalue %dx.types.ResRet.f32 %3937, 0
  %3939 = or i32 %3891, 248
  %3940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3940, 1
  %3943 = add nuw nsw i32 %3868, 1
  %3944 = bitcast float %3897 to i32
  %3945 = and i32 %3944, 512
  %3946 = icmp eq i32 %3945, 0
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = call float @dx.op.dot4.f32(i32 56, float %3948, float %3949, float %3950, float %3951, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3953 = or i32 %3891, 16
  %3954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = extractvalue %dx.types.ResRet.f32 %3954, 3
  %3959 = call float @dx.op.dot4.f32(i32 56, float %3955, float %3956, float %3957, float %3958, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3960 = or i32 %3891, 32
  %3961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3960, i32 undef)  ; BufferLoad(srv,index,wot)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %3963 = extractvalue %dx.types.ResRet.f32 %3961, 1
  %3964 = extractvalue %dx.types.ResRet.f32 %3961, 2
  %3965 = extractvalue %dx.types.ResRet.f32 %3961, 3
  %3966 = call float @dx.op.dot4.f32(i32 56, float %3962, float %3963, float %3964, float %3965, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3967 = call float @dx.op.unary.f32(i32 27, float %3952)  ; Round_ni(value)
  %3968 = call float @dx.op.unary.f32(i32 6, float %3967)  ; FAbs(value)
  %3969 = call float @dx.op.unary.f32(i32 27, float %3959)  ; Round_ni(value)
  %3970 = call float @dx.op.unary.f32(i32 6, float %3969)  ; FAbs(value)
  %3971 = call float @dx.op.unary.f32(i32 6, float %3966)  ; FAbs(value)
  %3972 = call float @dx.op.unary.f32(i32 27, float %3971)  ; Round_ni(value)
  %3973 = fadd fast float %3970, %3968
  %3974 = fadd fast float %3973, %3972
  %3975 = fcmp fast oeq float %3974, 0.000000e+00
  %3976 = call float @dx.op.dot4.f32(i32 56, float %3948, float %3949, float %3950, float %3951, float %3820, float %3821, float %3822, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3977 = call float @dx.op.dot4.f32(i32 56, float %3955, float %3956, float %3957, float %3958, float %3820, float %3821, float %3822, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3978 = call float @dx.op.dot4.f32(i32 56, float %3948, float %3949, float %3950, float %3951, float %3823, float %3824, float %3825, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3979 = call float @dx.op.dot4.f32(i32 56, float %3955, float %3956, float %3957, float %3958, float %3823, float %3824, float %3825, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3980 = fsub fast float %3976, %3952
  %3981 = fsub fast float %3978, %3952
  %3982 = fsub fast float %3977, %3959
  %3983 = fsub fast float %3979, %3959
  %3984 = call float @dx.op.dot3.f32(i32 55, float %3894, float %3895, float %3896, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 2
  %3987 = fadd fast float %3986, %3984
  %3988 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %3989 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3990 = fcmp fast ogt float %3988, %3989
  %3991 = and i1 %3975, %3990
  %3992 = and i1 %3946, %3991
  br i1 %3992, label %4013, label %3993

; <label>:3993                                    ; preds = %4276, %4094, %4013, %3867
  %3994 = phi float [ %3869, %4013 ], [ %4097, %4094 ], [ %4097, %4276 ], [ %3869, %3867 ]
  %3995 = phi float [ %3870, %4013 ], [ %3870, %4094 ], [ %4251, %4276 ], [ %3870, %3867 ]
  %3996 = phi float [ %3871, %4013 ], [ %3871, %4094 ], [ %4249, %4276 ], [ %3871, %3867 ]
  %3997 = phi float [ %3872, %4013 ], [ %3872, %4094 ], [ %4221, %4276 ], [ %3872, %3867 ]
  %3998 = phi float [ %3873, %4013 ], [ %3873, %4094 ], [ %4219, %4276 ], [ %3873, %3867 ]
  %3999 = phi float [ %3874, %4013 ], [ %3874, %4094 ], [ %4286, %4276 ], [ %3874, %3867 ]
  %4000 = phi float [ %3875, %4013 ], [ %3875, %4094 ], [ %4287, %4276 ], [ %3875, %3867 ]
  %4001 = phi float [ %3876, %4013 ], [ %3876, %4094 ], [ %4288, %4276 ], [ %3876, %3867 ]
  %4002 = phi float [ %3877, %4013 ], [ %3877, %4094 ], [ %4200, %4276 ], [ %3877, %3867 ]
  %4003 = phi float [ %3878, %4013 ], [ %3878, %4094 ], [ %4201, %4276 ], [ %3878, %3867 ]
  %4004 = phi float [ %3879, %4013 ], [ %3879, %4094 ], [ %4202, %4276 ], [ %3879, %3867 ]
  %4005 = phi float [ %3880, %4013 ], [ %3880, %4094 ], [ %4229, %4276 ], [ %3880, %3867 ]
  %4006 = phi float [ %3881, %4013 ], [ %3881, %4094 ], [ %4226, %4276 ], [ %3881, %3867 ]
  %4007 = phi float [ %3882, %4013 ], [ %3882, %4094 ], [ %4223, %4276 ], [ %3882, %3867 ]
  %4008 = phi float [ %3883, %4013 ], [ %3883, %4094 ], [ %4217, %4276 ], [ %3883, %3867 ]
  %4009 = phi float [ %3884, %4013 ], [ %3884, %4094 ], [ %4212, %4276 ], [ %3884, %3867 ]
  %4010 = phi float [ %3885, %4013 ], [ %3885, %4094 ], [ %4213, %4276 ], [ %3885, %3867 ]
  %4011 = phi float [ %3886, %4013 ], [ %3886, %4094 ], [ %4214, %4276 ], [ %3886, %3867 ]
  %4012 = icmp eq i32 %3943, %3866
  br i1 %4012, label %4289, label %3867

; <label>:4013                                    ; preds = %3867
  %4014 = extractvalue %dx.types.ResRet.f32 %3913, 3
  %4015 = extractvalue %dx.types.ResRet.f32 %3913, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %3913, 0
  %4017 = extractvalue %dx.types.ResRet.f32 %3903, 1
  %4018 = extractvalue %dx.types.ResRet.f32 %3903, 0
  %4019 = extractvalue %dx.types.ResRet.i32 %3899, 3
  %4020 = extractvalue %dx.types.ResRet.i32 %3899, 2
  %4021 = add i32 %4019, 0
  %4022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4021, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4023 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4024 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4022, %dx.types.Handle %4023, float %3952, float %3959, float undef, float undef, i32 0, i32 0, i32 undef, float %3980, float %3982, float undef, float %3981, float %3983, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4025 = extractvalue %dx.types.ResRet.f32 %4024, 0
  %4026 = fmul fast float %4025, %4018
  %4027 = fadd fast float %4026, %4017
  %4028 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4029 = fmul fast float %3952, %3908
  %4030 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3959, float %4029)  ; FMad(a,b,c)
  %4031 = fadd fast float %4030, %4016
  %4032 = fmul fast float %3952, %3910
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %3911, float %3959, float %4032)  ; FMad(a,b,c)
  %4034 = fadd fast float %4033, %4015
  %4035 = fmul fast float %3980, %3908
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3982, float %4035)  ; FMad(a,b,c)
  %4037 = fmul fast float %3980, %3910
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %3911, float %3982, float %4037)  ; FMad(a,b,c)
  %4039 = fmul fast float %3981, %3908
  %4040 = call float @dx.op.tertiary.f32(i32 46, float %3909, float %3983, float %4039)  ; FMad(a,b,c)
  %4041 = fmul fast float %3981, %3910
  %4042 = call float @dx.op.tertiary.f32(i32 46, float %3911, float %3983, float %4041)  ; FMad(a,b,c)
  %4043 = add i32 %4020, 0
  %4044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4043, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4045 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4044, %dx.types.Handle %4023, float %4031, float %4034, float undef, float undef, i32 0, i32 0, i32 undef, float %4036, float %4038, float undef, float %4040, float %4042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4046 = extractvalue %dx.types.ResRet.f32 %4045, 0
  %4047 = and i32 %3944, 1024
  %4048 = icmp ne i32 %4047, 0
  %4049 = fcmp fast ogt float %4046, 0x3FE0101020000000
  %4050 = uitofp i1 %4049 to float
  %4051 = select i1 %4048, float %4050, float %4046
  %4052 = and i32 %3944, 8192
  %4053 = icmp ne i32 %4052, 0
  %4054 = select i1 %4053, float %4014, float 1.000000e+00
  %4055 = fmul fast float %3952, 2.000000e+00
  %4056 = fadd fast float %4055, -1.000000e+00
  %4057 = call float @dx.op.unary.f32(i32 6, float %4056)  ; FAbs(value)
  %4058 = fmul fast float %4057, %3941
  %4059 = fsub fast float %4058, %3941
  %4060 = call float @dx.op.unary.f32(i32 7, float %4059)  ; Saturate(value)
  %4061 = fmul fast float %3959, 2.000000e+00
  %4062 = fadd fast float %4061, -1.000000e+00
  %4063 = call float @dx.op.unary.f32(i32 6, float %4062)  ; FAbs(value)
  %4064 = fmul fast float %4063, %3942
  %4065 = fsub fast float %4064, %3942
  %4066 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4067 = fmul fast float %3971, %3904
  %4068 = fsub fast float %4067, %3904
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
  %4079 = fsub fast float %3988, %4078
  %4080 = fmul fast float %4079, %4077
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = fmul fast float %4075, %3905
  %4083 = fadd fast float %4075, %3905
  %4084 = fmul fast float %4083, %3914
  %4085 = fsub fast float %4084, %3914
  %4086 = call float @dx.op.unary.f32(i32 7, float %4085)  ; Saturate(value)
  %4087 = and i32 %3944, 128
  %4088 = icmp ne i32 %4087, 0
  %4089 = select i1 %4088, float %4086, float %4082
  %4090 = fmul fast float %4089, %4081
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = fcmp fast ugt float %4090, %4092
  br i1 %4093, label %4094, label %3993

; <label>:4094                                    ; preds = %4013
  %4095 = select i1 %4053, float %4090, float 0.000000e+00
  %4096 = fadd fast float %4095, %3869
  %4097 = call float @dx.op.unary.f32(i32 7, float %4096)  ; Saturate(value)
  br i1 %4053, label %3993, label %4098

; <label>:4098                                    ; preds = %4094
  %4099 = and i32 %3944, 4
  %4100 = and i32 %3944, 8
  %4101 = add i32 %3900, 0
  %4102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4101, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4104 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4102, %dx.types.Handle %4103, float %4031, float %4034, float undef, float undef, i32 0, i32 0, i32 undef, float %4036, float %4038, float undef, float %4040, float %4042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4105 = extractvalue %dx.types.ResRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.ResRet.f32 %4104, 1
  %4107 = extractvalue %dx.types.ResRet.f32 %4104, 2
  %4108 = extractvalue %dx.types.ResRet.f32 %4104, 3
  %4109 = bitcast float %3926 to i32
  %4110 = and i32 %4109, 255
  %4111 = uitofp i32 %4110 to float
  %4112 = lshr i32 %4109, 8
  %4113 = and i32 %4112, 255
  %4114 = uitofp i32 %4113 to float
  %4115 = fmul fast float %4108, %4111
  %4116 = fadd fast float %4115, %4114
  %4117 = fmul fast float %4116, 0x3F70101000000000
  %4118 = add i32 %3901, 0
  %4119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4118, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4120 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4119, %dx.types.Handle %4103, float %4031, float %4034, float undef, float undef, i32 0, i32 0, i32 undef, float %4036, float %4038, float undef, float %4040, float %4042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4121 = extractvalue %dx.types.ResRet.f32 %4120, 0
  %4122 = extractvalue %dx.types.ResRet.f32 %4120, 1
  %4123 = extractvalue %dx.types.ResRet.f32 %4120, 2
  %4124 = extractvalue %dx.types.ResRet.f32 %4120, 3
  %4125 = bitcast float %3920 to i32
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
  %4144 = fmul fast float %4105, %3929
  %4145 = fmul fast float %4106, %3930
  %4146 = fmul fast float %4107, %3931
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
  %4164 = fmul fast float %4163, %3894
  %4165 = fmul fast float %4163, %3895
  %4166 = fmul fast float %4163, %3896
  %4167 = fmul fast float %4161, %3917
  %4168 = fmul fast float %4161, %3918
  %4169 = fmul fast float %4161, %3919
  %4170 = fadd fast float %4167, %4164
  %4171 = fadd fast float %4168, %4165
  %4172 = fadd fast float %4169, %4166
  %4173 = fmul fast float %4162, %3923
  %4174 = fmul fast float %4162, %3924
  %4175 = fmul fast float %4162, %3925
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
  %4187 = and i32 %3944, 1
  %4188 = icmp eq i32 %4187, 0
  br i1 %4188, label %4189, label %4193

; <label>:4189                                    ; preds = %4098
  %4190 = fsub fast float %4181, %3877
  %4191 = fsub fast float %4182, %3878
  %4192 = fsub fast float %4183, %3879
  br label %4193

; <label>:4193                                    ; preds = %4189, %4098
  %4194 = phi float [ %4190, %4189 ], [ %4181, %4098 ]
  %4195 = phi float [ %4191, %4189 ], [ %4182, %4098 ]
  %4196 = phi float [ %4192, %4189 ], [ %4183, %4098 ]
  %4197 = fmul float %4196, %4186
  %4198 = fmul float %4195, %4186
  %4199 = fmul float %4194, %4186
  %4200 = fadd fast float %4199, %3877
  %4201 = fadd fast float %4198, %3878
  %4202 = fadd fast float %4197, %3879
  %4203 = icmp ne i32 %4099, 0
  %4204 = select i1 %4203, float 1.000000e+00, float 0.000000e+00
  %4205 = fmul fast float %4090, %4204
  %4206 = fsub fast float %4144, %3884
  %4207 = fsub fast float %4145, %3885
  %4208 = fsub fast float %4146, %3886
  %4209 = fmul fast float %4206, %4205
  %4210 = fmul fast float %4207, %4205
  %4211 = fmul fast float %4208, %4205
  %4212 = fadd fast float %4209, %3884
  %4213 = fadd fast float %4210, %3885
  %4214 = fadd fast float %4211, %3886
  %4215 = fsub fast float %4117, %3883
  %4216 = fmul fast float %4215, %4205
  %4217 = fadd fast float %4216, %3883
  %4218 = fmul fast float %4205, %3873
  %4219 = fsub fast float %3873, %4218
  %4220 = fmul fast float %4205, %3872
  %4221 = fsub fast float %3872, %4220
  %4222 = fadd fast float %4090, %3882
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = fsub fast float %4137, %3881
  %4225 = fmul fast float %4224, %4186
  %4226 = fadd fast float %4225, %3881
  %4227 = fsub fast float %4123, %3880
  %4228 = fmul fast float %4227, %4186
  %4229 = fadd fast float %4228, %3880
  %4230 = call float @dx.op.dot3.f32(i32 55, float %4144, float %4145, float %4146, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4231 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4232 = extractvalue %dx.types.CBufRet.f32 %4231, 0
  %4233 = extractvalue %dx.types.CBufRet.f32 %4231, 1
  %4234 = fmul fast float %4233, %4230
  %4235 = fadd fast float %4234, %4232
  %4236 = call float @dx.op.unary.f32(i32 7, float %4235)  ; Saturate(value)
  %4237 = bitcast float %3932 to i32
  %4238 = and i32 %4237, 65535
  %4239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4238)  ; LegacyF16ToF32(value)
  %4240 = lshr i32 %4237, 16
  %4241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4240)  ; LegacyF16ToF32(value)
  %4242 = fcmp fast oge float %4239, 0.000000e+00
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4245 = select i1 %4242, float %4239, float %4244
  %4246 = fadd fast float %4245, %4241
  %4247 = fsub fast float %4236, %3871
  %4248 = fmul fast float %4247, %4090
  %4249 = fadd fast float %4248, %3871
  %4250 = fmul fast float %4246, %4090
  %4251 = call float @dx.op.binary.f32(i32 35, float %3870, float %4250)  ; FMax(a,b)
  %4252 = and i32 %3944, 16
  %4253 = icmp eq i32 %4252, 0
  br i1 %4253, label %4276, label %4254

; <label>:4254                                    ; preds = %4193
  %4255 = bitcast float %3938 to i32
  %4256 = add i32 %3935, 0
  %4257 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4256, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4258 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4257, %dx.types.Handle %4103, float %4031, float %4034, float undef, float undef, i32 0, i32 0, i32 undef, float %4036, float %4038, float undef, float %4040, float %4042, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4259 = extractvalue %dx.types.ResRet.f32 %4258, 0
  %4260 = extractvalue %dx.types.ResRet.f32 %4258, 1
  %4261 = extractvalue %dx.types.ResRet.f32 %4258, 2
  %4262 = and i32 %4255, 65535
  %4263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4262)  ; LegacyF16ToF32(value)
  %4264 = fmul fast float %4259, %3929
  %4265 = fmul fast float %4260, %3930
  %4266 = fmul fast float %4261, %3931
  %4267 = and i32 %3944, 16384
  %4268 = icmp ne i32 %4267, 0
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = select i1 %4268, float %4270, float 1.000000e+00
  %4272 = fmul fast float %4271, %4263
  %4273 = fmul fast float %4264, %4272
  %4274 = fmul fast float %4265, %4272
  %4275 = fmul fast float %4266, %4272
  br label %4276

; <label>:4276                                    ; preds = %4254, %4193
  %4277 = phi float [ %4273, %4254 ], [ 0.000000e+00, %4193 ]
  %4278 = phi float [ %4274, %4254 ], [ 0.000000e+00, %4193 ]
  %4279 = phi float [ %4275, %4254 ], [ 0.000000e+00, %4193 ]
  %4280 = fsub fast float %4277, %3874
  %4281 = fsub fast float %4278, %3875
  %4282 = fsub fast float %4279, %3876
  %4283 = fmul fast float %4280, %4090
  %4284 = fmul fast float %4281, %4090
  %4285 = fmul fast float %4282, %4090
  %4286 = fadd fast float %4283, %3874
  %4287 = fadd fast float %4284, %3875
  %4288 = fadd fast float %4285, %3876
  br label %3993

; <label>:4289                                    ; preds = %3993
  br label %4290

; <label>:4290                                    ; preds = %4289, %3813
  %4291 = phi float [ 0.000000e+00, %3813 ], [ %3994, %4289 ]
  %4292 = phi float [ %3782, %3813 ], [ %3995, %4289 ]
  %4293 = phi float [ %3763, %3813 ], [ %3996, %4289 ]
  %4294 = phi float [ 0.000000e+00, %3813 ], [ %3997, %4289 ]
  %4295 = phi float [ 0.000000e+00, %3813 ], [ %3998, %4289 ]
  %4296 = phi float [ %3757, %3813 ], [ %3999, %4289 ]
  %4297 = phi float [ %3758, %3813 ], [ %4000, %4289 ]
  %4298 = phi float [ %3759, %3813 ], [ %4001, %4289 ]
  %4299 = phi float [ %3808, %3813 ], [ %4002, %4289 ]
  %4300 = phi float [ %3809, %3813 ], [ %4003, %4289 ]
  %4301 = phi float [ %3810, %3813 ], [ %4004, %4289 ]
  %4302 = phi float [ %3762, %3813 ], [ %4005, %4289 ]
  %4303 = phi float [ %3761, %3813 ], [ %4006, %4289 ]
  %4304 = phi float [ 0.000000e+00, %3813 ], [ %4007, %4289 ]
  %4305 = phi float [ %3760, %3813 ], [ %4008, %4289 ]
  %4306 = phi float [ %3754, %3813 ], [ %4009, %4289 ]
  %4307 = phi float [ %3755, %3813 ], [ %4010, %4289 ]
  %4308 = phi float [ %3756, %3813 ], [ %4011, %4289 ]
  %4309 = call float @dx.op.dot3.f32(i32 55, float %4299, float %4300, float %4301, float %4299, float %4300, float %4301)  ; Dot3(ax,ay,az,bx,by,bz)
  %4310 = call float @dx.op.unary.f32(i32 25, float %4309)  ; Rsqrt(value)
  %4311 = fmul fast float %4310, %4299
  %4312 = fmul fast float %4310, %4300
  %4313 = fmul fast float %4310, %4301
  %4314 = fadd fast float %4304, %865
  %4315 = call float @dx.op.unary.f32(i32 7, float %4314)  ; Saturate(value)
  %4316 = call float @dx.op.dot3.f32(i32 55, float %4311, float %4312, float %4313, float %4311, float %4312, float %4313)  ; Dot3(ax,ay,az,bx,by,bz)
  %4317 = call float @dx.op.unary.f32(i32 25, float %4316)  ; Rsqrt(value)
  %4318 = fmul fast float %4317, %4311
  %4319 = fmul fast float %4317, %4312
  %4320 = fmul fast float %4317, %4313
  br label %4321

; <label>:4321                                    ; preds = %4290, %3751
  %4322 = phi float [ %4318, %4290 ], [ %3808, %3751 ]
  %4323 = phi float [ %4319, %4290 ], [ %3809, %3751 ]
  %4324 = phi float [ %4320, %4290 ], [ %3810, %3751 ]
  %4325 = phi float [ %4306, %4290 ], [ %3754, %3751 ]
  %4326 = phi float [ %4307, %4290 ], [ %3755, %3751 ]
  %4327 = phi float [ %4308, %4290 ], [ %3756, %3751 ]
  %4328 = phi float [ %4296, %4290 ], [ %3757, %3751 ]
  %4329 = phi float [ %4297, %4290 ], [ %3758, %3751 ]
  %4330 = phi float [ %4298, %4290 ], [ %3759, %3751 ]
  %4331 = phi float [ %4305, %4290 ], [ %3760, %3751 ]
  %4332 = phi float [ %4315, %4290 ], [ %865, %3751 ]
  %4333 = phi float [ %4303, %4290 ], [ %3761, %3751 ]
  %4334 = phi float [ %4302, %4290 ], [ %3762, %3751 ]
  %4335 = phi float [ %4295, %4290 ], [ 0.000000e+00, %3751 ]
  %4336 = phi float [ %4294, %4290 ], [ 0.000000e+00, %3751 ]
  %4337 = phi float [ %4291, %4290 ], [ 0.000000e+00, %3751 ]
  %4338 = phi float [ %4292, %4290 ], [ %3782, %3751 ]
  %4339 = phi float [ %4293, %4290 ], [ %3763, %3751 ]
  %4340 = fadd fast float %4331, 0xBFB99999A0000000
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = fmul fast float %4341, 0x3FF1C71C80000000
  %4343 = call float @dx.op.binary.f32(i32 36, float %4331, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4344 = fsub fast float 1.000000e+00, %4342
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4346 = fmul fast float %4345, %4325
  %4347 = fmul fast float %4345, %4326
  %4348 = fmul fast float %4345, %4327
  %4349 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4347)  ; Saturate(value)
  %4351 = call float @dx.op.unary.f32(i32 7, float %4348)  ; Saturate(value)
  %4352 = fmul fast float %4342, %4325
  %4353 = fmul fast float %4342, %4326
  %4354 = fmul fast float %4342, %4327
  %4355 = fadd fast float %4352, %4343
  %4356 = fadd fast float %4353, %4343
  %4357 = fadd fast float %4354, %4343
  %4358 = call float @dx.op.unary.f32(i32 7, float %4355)  ; Saturate(value)
  %4359 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4360 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.i32 %4362, 3
  %4364 = and i32 %4363, 8
  %4365 = icmp ne i32 %4364, 0
  %4366 = call float @dx.op.binary.f32(i32 35, float %4349, float %4325)  ; FMax(a,b)
  %4367 = call float @dx.op.binary.f32(i32 35, float %4350, float %4325)  ; FMax(a,b)
  %4368 = call float @dx.op.binary.f32(i32 35, float %4351, float %4325)  ; FMax(a,b)
  %4369 = call float @dx.op.dot3.f32(i32 55, float %4349, float %4350, float %4351, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4370 = select i1 %160, float %4325, float %4349
  %4371 = select i1 %160, float %4369, float %4350
  %4372 = select i1 %160, float 1.000000e+00, float %4351
  %4373 = select i1 %4365, float %4366, float %4370
  %4374 = select i1 %4365, float %4367, float %4371
  %4375 = select i1 %4365, float %4368, float %4372
  %4376 = and i32 %136, 3
  %4377 = select i1 %130, i32 %4376, i32 0
  %4378 = icmp eq i32 %4377, 1
  br i1 %4378, label %4379, label %4455

; <label>:4379                                    ; preds = %4321
  %4380 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4381 = extractvalue %dx.types.CBufRet.f32 %4380, 0
  %4382 = extractvalue %dx.types.CBufRet.f32 %4380, 1
  %4383 = fadd fast float %4381, %119
  %4384 = fadd fast float %4382, %120
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4387 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4388 = fsub fast float %4383, %4386
  %4389 = fsub fast float %4384, %4387
  %4390 = fmul fast float %4388, %4388
  %4391 = fmul fast float %4389, %4389
  %4392 = fadd fast float %4390, %4391
  %4393 = call float @dx.op.unary.f32(i32 24, float %4392)  ; Sqrt(value)
  %4394 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4395 = fcmp fast olt float %4393, %4394
  br i1 %4395, label %4396, label %4449

; <label>:4396                                    ; preds = %4379
  %4397 = extractvalue %dx.types.CBufRet.f32 %4380, 2
  %4398 = fadd fast float %4397, %121
  %4399 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4400 = extractvalue %dx.types.CBufRet.f32 %4399, 0
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4404 = extractvalue %dx.types.CBufRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.CBufRet.f32 %4399, 1
  %4406 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4407 = extractvalue %dx.types.CBufRet.f32 %4403, 1
  %4408 = extractvalue %dx.types.CBufRet.f32 %4399, 3
  %4409 = extractvalue %dx.types.CBufRet.f32 %4401, 3
  %4410 = extractvalue %dx.types.CBufRet.f32 %4403, 3
  %4411 = fadd fast float %4408, %4383
  %4412 = fadd fast float %4409, %4384
  %4413 = fadd fast float %4398, %4410
  %4414 = fmul fast float %4411, %4400
  %4415 = call float @dx.op.tertiary.f32(i32 46, float %4412, float %4402, float %4414)  ; FMad(a,b,c)
  %4416 = call float @dx.op.tertiary.f32(i32 46, float %4413, float %4404, float %4415)  ; FMad(a,b,c)
  %4417 = fmul fast float %4411, %4405
  %4418 = call float @dx.op.tertiary.f32(i32 46, float %4412, float %4406, float %4417)  ; FMad(a,b,c)
  %4419 = call float @dx.op.tertiary.f32(i32 46, float %4413, float %4407, float %4418)  ; FMad(a,b,c)
  %4420 = fsub fast float %4416, %4408
  %4421 = fsub fast float %4419, %4409
  %4422 = fsub fast float %4420, %4386
  %4423 = fadd fast float %4422, %4394
  %4424 = fsub fast float %4421, %4387
  %4425 = fadd fast float %4424, %4394
  %4426 = extractvalue %dx.types.CBufRet.f32 %4385, 3
  %4427 = fmul fast float %4423, %4426
  %4428 = fmul fast float %4425, %4426
  %4429 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4430 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4431 = fsub fast float 1.000000e+00, %4429
  %4432 = fsub fast float 1.000000e+00, %4430
  %4433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %4431, float %4432, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = fcmp fast ugt float %4434, 0.000000e+00
  br i1 %4435, label %4436, label %4449

; <label>:4436                                    ; preds = %4396
  %4437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4438 = extractvalue %dx.types.CBufRet.f32 %4437, 2
  %4439 = fmul fast float %4438, %4434
  %4440 = extractvalue %dx.types.CBufRet.f32 %4437, 3
  %4441 = fadd fast float %4440, %4439
  %4442 = extractvalue %dx.types.CBufRet.f32 %4403, 2
  %4443 = fadd fast float %4441, %4410
  %4444 = fmul fast float %4416, %4404
  %4445 = call float @dx.op.tertiary.f32(i32 46, float %4419, float %4407, float %4444)  ; FMad(a,b,c)
  %4446 = call float @dx.op.tertiary.f32(i32 46, float %4443, float %4442, float %4445)  ; FMad(a,b,c)
  %4447 = fsub fast float %4446, %4410
  %4448 = fsub fast float %4447, %4397
  br label %4449

; <label>:4449                                    ; preds = %4436, %4396, %4379
  %4450 = phi i1 [ true, %4436 ], [ false, %4396 ], [ false, %4379 ]
  %4451 = phi float [ %4448, %4436 ], [ -1.310720e+05, %4396 ], [ -1.310720e+05, %4379 ]
  %4452 = fsub fast float %4451, %121
  %4453 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4454 = select i1 %4450, float %4453, float 1.000000e+00
  br label %4455

; <label>:4455                                    ; preds = %4449, %4321
  %4456 = phi float [ %4454, %4449 ], [ 0.000000e+00, %4321 ]
  %4457 = icmp eq i32 %4377, 3
  %4458 = select i1 %4457, float 1.000000e+00, float %4456
  %4459 = call float @dx.op.binary.f32(i32 35, float %4337, float %4458)  ; FMax(a,b)
  %4460 = call float @dx.op.unary.f32(i32 7, float %4459)  ; Saturate(value)
  %4461 = fcmp fast une float %4460, 0.000000e+00
  %4462 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4463 = call float @dx.op.unary.f32(i32 25, float %4462)  ; Rsqrt(value)
  br i1 %4461, label %4471, label %4464

; <label>:4464                                    ; preds = %4455
  %4465 = fmul fast float %4463, %119
  %4466 = fmul fast float %4463, %120
  %4467 = fmul fast float %4463, %121
  %4468 = fsub fast float -0.000000e+00, %4465
  %4469 = fsub fast float -0.000000e+00, %4466
  %4470 = fsub fast float -0.000000e+00, %4467
  br label %4639

; <label>:4471                                    ; preds = %4455
  %4472 = fmul fast float %119, %4463
  %4473 = fsub fast float -0.000000e+00, %4472
  %4474 = fmul fast float %120, %4463
  %4475 = fsub fast float -0.000000e+00, %4474
  %4476 = fmul fast float %121, %4463
  %4477 = fsub fast float -0.000000e+00, %4476
  %4478 = call float @dx.op.dot3.f32(i32 55, float %4473, float %4475, float %4477, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4479 = fmul fast float %4460, 2.500000e+00
  %4480 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4481 = fmul fast float %4460, 0x4013FFFFE0000000
  %4482 = fadd fast float %4481, 0xBFFFFFFFE0000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4460, 0x4004000020000000
  %4485 = fadd fast float %4484, 0xBFF8000040000000
  %4486 = call float @dx.op.unary.f32(i32 7, float %4485)  ; Saturate(value)
  %4487 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4488 = fmul fast float %4340, 1.000000e+01
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = fmul fast float %4489, 2.000000e+00
  %4491 = fsub fast float 3.000000e+00, %4490
  %4492 = fmul fast float %4489, %4489
  %4493 = fmul fast float %4492, %4491
  %4494 = fsub fast float 1.000000e+00, %4493
  %4495 = fsub fast float 0x3FE3333340000000, %4361
  %4496 = fmul fast float %4495, 0x400AAAAAA0000000
  %4497 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4498 = fmul fast float %4494, %4497
  %4499 = fmul fast float %4373, 0x3FEA2B8620000000
  %4500 = fmul fast float %4374, 0x3FEA2B8620000000
  %4501 = fmul fast float %4375, 0x3FEA2B8620000000
  %4502 = fadd fast float %4499, 0x3FC81DFBA0000000
  %4503 = fmul fast float %4502, %4373
  %4504 = fadd fast float %4503, 0x3F910E6020000000
  %4505 = fadd fast float %4500, 0x3FC81DFBA0000000
  %4506 = fmul fast float %4505, %4374
  %4507 = fadd fast float %4506, 0x3F910E6020000000
  %4508 = fadd fast float %4501, 0x3FC81DFBA0000000
  %4509 = fmul fast float %4508, %4375
  %4510 = fadd fast float %4509, 0x3F910E6020000000
  %4511 = call float @dx.op.unary.f32(i32 7, float %4504)  ; Saturate(value)
  %4512 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4514 = fsub fast float %4511, %4373
  %4515 = fsub fast float %4512, %4374
  %4516 = fsub fast float %4513, %4375
  %4517 = fmul fast float %4514, %4487
  %4518 = fmul fast float %4517, %4498
  %4519 = fmul fast float %4515, %4487
  %4520 = fmul fast float %4519, %4498
  %4521 = fmul fast float %4516, %4487
  %4522 = fmul fast float %4521, %4498
  %4523 = fadd fast float %4518, %4373
  %4524 = fadd fast float %4520, %4374
  %4525 = fadd fast float %4522, %4375
  %4526 = fmul fast float %4334, %4334
  %4527 = fmul fast float %4526, %4526
  %4528 = fadd fast float %4483, 1.000000e+00
  %4529 = fsub fast float %4528, %4498
  %4530 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4531 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4532 = call float @dx.op.unary.f32(i32 7, float %4531)  ; Saturate(value)
  %4533 = fsub fast float 1.000000e+00, %4527
  %4534 = call float @dx.op.binary.f32(i32 36, float %4530, float %4533)  ; FMin(a,b)
  %4535 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4536 = call float @dx.op.binary.f32(i32 35, float %4534, float %4535)  ; FMax(a,b)
  %4537 = fadd fast float %4532, 0xBFE4CCCCC0000000
  %4538 = fmul fast float %4537, 0x4006DB6DA0000000
  %4539 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4540 = fmul fast float %4539, 2.000000e+00
  %4541 = fsub fast float 3.000000e+00, %4540
  %4542 = bitcast float %4358 to i32
  %4543 = ashr i32 %4542, 1
  %4544 = add nsw i32 %4543, 532487669
  %4545 = bitcast i32 %4544 to float
  %4546 = fsub fast float 1.000000e+00, %4545
  %4547 = bitcast float %4546 to i32
  %4548 = sub nsw i32 2129859010, %4547
  %4549 = bitcast i32 %4548 to float
  %4550 = fmul fast float %4549, 2.000000e+00
  %4551 = bitcast float %4359 to i32
  %4552 = ashr i32 %4551, 1
  %4553 = add nsw i32 %4552, 532487669
  %4554 = bitcast i32 %4553 to float
  %4555 = fsub fast float 1.000000e+00, %4554
  %4556 = bitcast float %4555 to i32
  %4557 = sub nsw i32 2129859010, %4556
  %4558 = bitcast i32 %4557 to float
  %4559 = fmul fast float %4558, 2.000000e+00
  %4560 = bitcast float %4360 to i32
  %4561 = ashr i32 %4560, 1
  %4562 = add nsw i32 %4561, 532487669
  %4563 = bitcast i32 %4562 to float
  %4564 = fsub fast float 1.000000e+00, %4563
  %4565 = bitcast float %4564 to i32
  %4566 = sub nsw i32 2129859010, %4565
  %4567 = bitcast i32 %4566 to float
  %4568 = fmul fast float %4567, 2.000000e+00
  %4569 = fsub fast float 0x4002A9FBE0000000, %4550
  %4570 = fadd fast float %4550, 0x3FD54FDF00000000
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = fmul fast float %4573, %4569
  %4575 = fmul fast float %4574, %4574
  %4576 = fsub fast float 0x4002A9FBE0000000, %4559
  %4577 = fadd fast float %4559, 0x3FD54FDF00000000
  %4578 = bitcast float %4577 to i32
  %4579 = sub nsw i32 2129859010, %4578
  %4580 = bitcast i32 %4579 to float
  %4581 = fmul fast float %4580, %4576
  %4582 = fmul fast float %4581, %4581
  %4583 = fsub fast float 0x4002A9FBE0000000, %4568
  %4584 = fadd fast float %4568, 0x3FD54FDF00000000
  %4585 = bitcast float %4584 to i32
  %4586 = sub nsw i32 2129859010, %4585
  %4587 = bitcast i32 %4586 to float
  %4588 = fmul fast float %4587, %4583
  %4589 = fmul fast float %4588, %4588
  %4590 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4575)  ; FMax(a,b)
  %4591 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4582)  ; FMax(a,b)
  %4592 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4589)  ; FMax(a,b)
  %4593 = fsub fast float 1.000000e+00, %4478
  %4594 = fadd fast float %4593, %4494
  %4595 = call float @dx.op.unary.f32(i32 7, float %4594)  ; Saturate(value)
  %4596 = fsub fast float 1.000000e+00, %4458
  %4597 = fmul fast float %4536, %4596
  %4598 = fmul fast float %4539, %4539
  %4599 = fmul fast float %4598, %4597
  %4600 = fmul fast float %4599, %4541
  %4601 = fmul fast float %4596, 0xBFE99999A0000000
  %4602 = fmul fast float %4601, %4487
  %4603 = fmul fast float %4602, %4498
  %4604 = fadd fast float %4603, 1.000000e+00
  %4605 = fadd fast float %4361, -1.000000e+00
  %4606 = fmul fast float %4604, %4605
  %4607 = fadd fast float %4606, 1.000000e+00
  %4608 = fsub fast float %4590, %4358
  %4609 = fsub fast float %4591, %4359
  %4610 = fsub fast float %4592, %4360
  %4611 = fmul fast float %4600, %4608
  %4612 = fmul fast float %4600, %4609
  %4613 = fmul fast float %4600, %4610
  %4614 = fadd fast float %4611, %4358
  %4615 = fadd fast float %4612, %4359
  %4616 = fadd fast float %4613, %4360
  %4617 = fsub fast float %63, %4322
  %4618 = fsub fast float %64, %4323
  %4619 = fsub fast float %65, %4324
  %4620 = fmul fast float %4600, %4617
  %4621 = fmul fast float %4600, %4618
  %4622 = fmul fast float %4600, %4619
  %4623 = fadd fast float %4620, %4322
  %4624 = fadd fast float %4621, %4323
  %4625 = fadd fast float %4622, %4324
  %4626 = fmul fast float %4600, %4595
  %4627 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4628 = fsub fast float 1.000000e+00, %4627
  %4629 = fmul fast float %4626, %4628
  %4630 = fadd fast float %4629, %4627
  %4631 = fsub fast float 1.000000e+00, %4334
  %4632 = fmul fast float %4600, %4631
  %4633 = fadd fast float %4632, %4334
  %4634 = call float @dx.op.dot3.f32(i32 55, float %4623, float %4624, float %4625, float %4623, float %4624, float %4625)  ; Dot3(ax,ay,az,bx,by,bz)
  %4635 = call float @dx.op.unary.f32(i32 25, float %4634)  ; Rsqrt(value)
  %4636 = fmul fast float %4623, %4635
  %4637 = fmul fast float %4624, %4635
  %4638 = fmul fast float %4625, %4635
  br label %4639

; <label>:4639                                    ; preds = %4471, %4464
  %4640 = phi float [ %4470, %4464 ], [ %4477, %4471 ]
  %4641 = phi float [ %4469, %4464 ], [ %4475, %4471 ]
  %4642 = phi float [ %4468, %4464 ], [ %4473, %4471 ]
  %4643 = phi float [ %4467, %4464 ], [ %4476, %4471 ]
  %4644 = phi float [ %4466, %4464 ], [ %4474, %4471 ]
  %4645 = phi float [ %4465, %4464 ], [ %4472, %4471 ]
  %4646 = phi float [ %4322, %4464 ], [ %4636, %4471 ]
  %4647 = phi float [ %4323, %4464 ], [ %4637, %4471 ]
  %4648 = phi float [ %4324, %4464 ], [ %4638, %4471 ]
  %4649 = phi float [ %4373, %4464 ], [ %4523, %4471 ]
  %4650 = phi float [ %4374, %4464 ], [ %4524, %4471 ]
  %4651 = phi float [ %4375, %4464 ], [ %4525, %4471 ]
  %4652 = phi float [ %4358, %4464 ], [ %4614, %4471 ]
  %4653 = phi float [ %4359, %4464 ], [ %4615, %4471 ]
  %4654 = phi float [ %4360, %4464 ], [ %4616, %4471 ]
  %4655 = phi float [ %4361, %4464 ], [ %4630, %4471 ]
  %4656 = phi float [ %4334, %4464 ], [ %4633, %4471 ]
  %4657 = select i1 %160, float 0.000000e+00, float %4654
  %4658 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %4642, float %4641, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4659 = call float @dx.op.unary.f32(i32 7, float %4658)  ; Saturate(value)
  %4660 = call float @dx.op.dot3.f32(i32 55, float %4645, float %4644, float %4643, float %4646, float %4647, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4661 = fmul fast float %4660, 2.000000e+00
  %4662 = fmul fast float %4661, %4646
  %4663 = fmul fast float %4661, %4647
  %4664 = fmul fast float %4661, %4648
  %4665 = fsub fast float %4645, %4662
  %4666 = fsub fast float %4644, %4663
  %4667 = fsub fast float %4643, %4664
  %4668 = call float @dx.op.binary.f32(i32 36, float %4656, float 1.000000e+00)  ; FMin(a,b)
  %4669 = fsub fast float 1.000000e+00, %4656
  %4670 = bitcast float %4669 to i32
  %4671 = sub nsw i32 2129859010, %4670
  %4672 = bitcast i32 %4671 to float
  %4673 = fsub fast float 1.000000e+00, %33
  %4674 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.binary.f32(i32 35, float %4674, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4676 = fdiv fast float %4673, %4675
  %4677 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4679 = fmul fast float %4678, 5.000000e-01
  %4680 = fadd fast float %4679, 5.000000e-01
  %4681 = fmul fast float %4680, %33
  %4682 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4683 = call float @dx.op.unary.f32(i32 7, float %4682)  ; Saturate(value)
  %4684 = fmul fast float %4683, %4676
  %4685 = fadd fast float %4681, %4684
  %4686 = fsub fast float 5.000000e-01, %4679
  %4687 = fmul fast float %4686, %4649
  %4688 = fmul fast float %4686, %4650
  %4689 = fmul fast float %4686, %4651
  %4690 = fadd fast float %4685, %4687
  %4691 = fadd fast float %4685, %4688
  %4692 = fadd fast float %4685, %4689
  %4693 = call float @dx.op.dot3.f32(i32 55, float %4665, float %4666, float %4667, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4694 = call float @dx.op.unary.f32(i32 7, float %4693)  ; Saturate(value)
  %4695 = fmul fast float %4694, 5.000000e-01
  %4696 = fadd fast float %4695, 5.000000e-01
  %4697 = fmul fast float %4696, %33
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4665, float %4666, float %4667, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = call float @dx.op.unary.f32(i32 7, float %4698)  ; Saturate(value)
  %4700 = fmul fast float %4699, %4676
  %4701 = fadd fast float %4697, %4700
  %4702 = fsub fast float 5.000000e-01, %4695
  %4703 = fmul fast float %4702, %4649
  %4704 = fmul fast float %4702, %4650
  %4705 = fmul fast float %4702, %4651
  %4706 = fadd fast float %4701, %4703
  %4707 = fadd fast float %4701, %4704
  %4708 = fadd fast float %4701, %4705
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 0
  %4711 = call float @dx.op.binary.f32(i32 36, float %4649, float %4710)  ; FMin(a,b)
  %4712 = fsub fast float 1.000000e+00, %4668
  %4713 = fmul fast float %4711, %4712
  %4714 = fsub fast float 1.000000e+00, %4713
  %4715 = bitcast float %4714 to i32
  %4716 = sub nsw i32 2129859010, %4715
  %4717 = bitcast i32 %4716 to float
  %4718 = call float @dx.op.binary.f32(i32 36, float %4650, float %4710)  ; FMin(a,b)
  %4719 = fmul fast float %4718, %4712
  %4720 = fsub fast float 1.000000e+00, %4719
  %4721 = bitcast float %4720 to i32
  %4722 = sub nsw i32 2129859010, %4721
  %4723 = bitcast i32 %4722 to float
  %4724 = call float @dx.op.binary.f32(i32 36, float %4651, float %4710)  ; FMin(a,b)
  %4725 = fmul fast float %4724, %4712
  %4726 = fsub fast float 1.000000e+00, %4725
  %4727 = bitcast float %4726 to i32
  %4728 = sub nsw i32 2129859010, %4727
  %4729 = bitcast i32 %4728 to float
  %4730 = fmul fast float %4668, %34
  %4731 = fmul fast float %4730, %4690
  %4732 = fmul fast float %4731, %4717
  %4733 = fmul fast float %4668, %35
  %4734 = fmul fast float %4733, %4691
  %4735 = fmul fast float %4734, %4723
  %4736 = fmul fast float %4668, %36
  %4737 = fmul fast float %4736, %4692
  %4738 = fmul fast float %4737, %4729
  %4739 = call float @dx.op.binary.f32(i32 36, float %4652, float %4710)  ; FMin(a,b)
  %4740 = fmul fast float %4739, %4712
  %4741 = fsub fast float 1.000000e+00, %4740
  %4742 = bitcast float %4741 to i32
  %4743 = sub nsw i32 2129859010, %4742
  %4744 = bitcast i32 %4743 to float
  %4745 = call float @dx.op.binary.f32(i32 36, float %4653, float %4710)  ; FMin(a,b)
  %4746 = fmul fast float %4745, %4712
  %4747 = fsub fast float 1.000000e+00, %4746
  %4748 = bitcast float %4747 to i32
  %4749 = sub nsw i32 2129859010, %4748
  %4750 = bitcast i32 %4749 to float
  %4751 = call float @dx.op.binary.f32(i32 36, float %4657, float %4710)  ; FMin(a,b)
  %4752 = fmul fast float %4751, %4712
  %4753 = fsub fast float 1.000000e+00, %4752
  %4754 = bitcast float %4753 to i32
  %4755 = sub nsw i32 2129859010, %4754
  %4756 = bitcast i32 %4755 to float
  %4757 = fmul fast float %4730, %4706
  %4758 = fmul fast float %4757, %4744
  %4759 = fmul fast float %4733, %4707
  %4760 = fmul fast float %4759, %4750
  %4761 = fmul fast float %4736, %4708
  %4762 = fmul fast float %4761, %4756
  %4763 = call float @dx.op.dot3.f32(i32 55, float %4732, float %4735, float %4738, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4764 = select i1 %160, float 0.000000e+00, float %4732
  %4765 = select i1 %160, float %4763, float %4735
  %4766 = select i1 %160, float 0.000000e+00, float %4738
  %4767 = call float @dx.op.dot3.f32(i32 55, float %4758, float %4760, float %4762, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4768 = select i1 %160, float 0.000000e+00, float %4758
  %4769 = select i1 %160, float %4767, float %4760
  %4770 = select i1 %160, float 0.000000e+00, float %4762
  %4771 = fmul fast float %4659, 9.843750e-01
  %4772 = fmul fast float %4655, 9.843750e-01
  %4773 = fadd fast float %4771, 7.812500e-03
  %4774 = fadd fast float %4772, 7.812500e-03
  %4775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %4773, float %4774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4776 = extractvalue %dx.types.ResRet.f32 %4775, 2
  %4777 = extractvalue %dx.types.ResRet.f32 %4775, 3
  %4778 = fmul fast float %4776, %4652
  %4779 = fmul fast float %4776, %4653
  %4780 = fmul fast float %4776, %4657
  %4781 = fadd fast float %4778, %4777
  %4782 = fadd fast float %4779, %4777
  %4783 = fadd fast float %4780, %4777
  %4784 = fcmp fast ogt float %4335, 0.000000e+00
  br i1 %4784, label %4785, label %4811

; <label>:4785                                    ; preds = %4639
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4335, float %4659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = extractvalue %dx.types.ResRet.f32 %4786, 1
  %4789 = extractvalue %dx.types.ResRet.f32 %4786, 2
  %4790 = fadd fast float %4787, -5.000000e-01
  %4791 = fadd fast float %4788, -5.000000e-01
  %4792 = fadd fast float %4789, -5.000000e-01
  %4793 = fsub fast float 1.000000e+00, %4652
  %4794 = fsub fast float 1.000000e+00, %4653
  %4795 = fsub fast float 1.000000e+00, %4657
  %4796 = fmul fast float %4652, 4.000000e+00
  %4797 = fmul fast float %4796, %4793
  %4798 = fmul fast float %4797, %4790
  %4799 = fmul fast float %4653, 4.000000e+00
  %4800 = fmul fast float %4799, %4794
  %4801 = fmul fast float %4800, %4791
  %4802 = fmul fast float %4657, 4.000000e+00
  %4803 = fmul fast float %4802, %4795
  %4804 = fmul fast float %4803, %4792
  %4805 = fadd fast float %4798, %4781
  %4806 = fadd fast float %4801, %4782
  %4807 = fadd fast float %4804, %4783
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4810 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  br label %4811

; <label>:4811                                    ; preds = %4785, %4639
  %4812 = phi float [ %4808, %4785 ], [ %4781, %4639 ]
  %4813 = phi float [ %4809, %4785 ], [ %4782, %4639 ]
  %4814 = phi float [ %4810, %4785 ], [ %4783, %4639 ]
  %4815 = call float @dx.op.binary.f32(i32 35, float %4813, float %4814)  ; FMax(a,b)
  %4816 = call float @dx.op.binary.f32(i32 35, float %4812, float %4815)  ; FMax(a,b)
  %4817 = fsub fast float 1.000000e+00, %4816
  %4818 = fmul fast float %4817, %4764
  %4819 = fmul fast float %4817, %4765
  %4820 = fmul fast float %4817, %4766
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4650, float %4651, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = fcmp fast ogt float %4821, 0x3E7FF19E20000000
  %4823 = fdiv fast float 1.000000e+00, %4821
  %4824 = select i1 %4822, float %4823, float 0.000000e+00
  %4825 = fmul fast float %4824, %4649
  %4826 = fmul fast float %4824, %4650
  %4827 = fmul fast float %4824, %4651
  %4828 = fadd fast float %4825, -1.000000e+00
  %4829 = fadd fast float %4826, -1.000000e+00
  %4830 = fadd fast float %4827, -1.000000e+00
  %4831 = fmul fast float %4828, 5.000000e-01
  %4832 = fmul fast float %4829, 5.000000e-01
  %4833 = fmul fast float %4830, 5.000000e-01
  %4834 = fadd fast float %4831, 1.000000e+00
  %4835 = fadd fast float %4832, 1.000000e+00
  %4836 = fadd fast float %4833, 1.000000e+00
  %4837 = fmul fast float %4812, %4768
  %4838 = fmul fast float %4813, %4769
  %4839 = fmul fast float %4814, %4770
  %4840 = fsub fast float 1.000000e+00, %4659
  %4841 = bitcast float %4840 to i32
  %4842 = sitofp i32 %4841 to float
  %4843 = fmul fast float %4842, 5.000000e+00
  %4844 = fadd fast float %4843, 0xC1EFBF8940000000
  %4845 = fptosi float %4844 to i32
  %4846 = bitcast i32 %4845 to float
  %4847 = fmul fast float %4846, %4336
  %4848 = fmul fast float %4764, %4847
  %4849 = fmul fast float %4848, %4817
  %4850 = fmul fast float %4849, %4834
  %4851 = fmul fast float %4765, %4847
  %4852 = fmul fast float %4851, %4817
  %4853 = fmul fast float %4852, %4835
  %4854 = fmul fast float %4766, %4847
  %4855 = fmul fast float %4854, %4817
  %4856 = fmul fast float %4855, %4836
  %4857 = fmul fast float %4818, %4332
  %4858 = fmul fast float %4819, %4332
  %4859 = fmul fast float %4820, %4332
  %4860 = fadd fast float %4837, %4328
  %4861 = fadd fast float %4860, %4850
  %4862 = fmul fast float %4861, %4332
  %4863 = fadd fast float %4838, %4329
  %4864 = fadd fast float %4863, %4853
  %4865 = fmul fast float %4864, %4332
  %4866 = fadd fast float %4839, %4330
  %4867 = fadd fast float %4866, %4856
  %4868 = fmul fast float %4867, %4332
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 3
  %4871 = fcmp fast oeq float %4870, 0.000000e+00
  br i1 %4871, label %5099, label %4872

; <label>:4872                                    ; preds = %4811
  %4873 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4875 = extractvalue %dx.types.CBufRet.f32 %4869, 2
  %4876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.CBufRet.f32 %4876, 1
  %4879 = extractvalue %dx.types.CBufRet.f32 %4876, 2
  %4880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4881 = extractvalue %dx.types.CBufRet.f32 %4880, 0
  %4882 = extractvalue %dx.types.CBufRet.f32 %4880, 1
  %4883 = call float @dx.op.dot3.f32(i32 55, float %4877, float %4878, float %4879, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = select i1 %160, float %4881, float %4877
  %4885 = select i1 %160, float %4883, float %4878
  %4886 = select i1 %160, float %4882, float %4879
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 1
  %4889 = fcmp fast une float %4888, 0.000000e+00
  br i1 %4889, label %4890, label %4907

; <label>:4890                                    ; preds = %4872
  %4891 = fptoui float %56 to i32
  %4892 = fptoui float %57 to i32
  %4893 = lshr i32 %4891, 4
  %4894 = lshr i32 %4892, 4
  %4895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4896 = extractvalue %dx.types.CBufRet.f32 %4895, 0
  %4897 = fptoui float %4896 to i32
  %4898 = add i32 %4897, 15
  %4899 = lshr i32 %4898, 4
  %4900 = mul i32 %4899, %4894
  %4901 = add i32 %4900, %4893
  %4902 = shl i32 %4901, 3
  %4903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4902, i32 undef)  ; BufferLoad(srv,index,wot)
  %4904 = extractvalue %dx.types.ResRet.i32 %4903, 0
  %4905 = and i32 %4904, -268435456
  %4906 = icmp eq i32 %4905, -1342177280
  br i1 %4906, label %4917, label %4907

; <label>:4907                                    ; preds = %4890, %4872
  %4908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4909 = extractvalue %dx.types.CBufRet.f32 %4908, 2
  %4910 = extractvalue %dx.types.CBufRet.f32 %4908, 3
  %4911 = fmul fast float %4909, %56
  %4912 = fmul fast float %4910, %57
  %4913 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %4911, float %4912, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4914 = extractvalue %dx.types.ResRet.f32 %4913, 0
  %4915 = extractvalue %dx.types.ResRet.f32 %4913, 1
  %4916 = extractvalue %dx.types.ResRet.f32 %4913, 2
  br label %4917

; <label>:4917                                    ; preds = %4907, %4890
  %4918 = phi float [ %4914, %4907 ], [ 0.000000e+00, %4890 ]
  %4919 = phi float [ %4915, %4907 ], [ 0.000000e+00, %4890 ]
  %4920 = phi float [ %4916, %4907 ], [ 0.000000e+00, %4890 ]
  %4921 = call float @dx.op.binary.f32(i32 36, float %4919, float %4920)  ; FMin(a,b)
  %4922 = call float @dx.op.binary.f32(i32 36, float %4918, float %4921)  ; FMin(a,b)
  %4923 = fcmp fast ogt float %4922, 0.000000e+00
  br i1 %4923, label %4924, label %5099, !dx.controlflow.hints !58

; <label>:4924                                    ; preds = %4917
  %4925 = fmul fast float %4918, %4884
  %4926 = fmul fast float %4919, %4885
  %4927 = fmul fast float %4920, %4886
  %4928 = fsub fast float %4873, %4645
  %4929 = fsub fast float %4874, %4644
  %4930 = fsub fast float %4875, %4643
  %4931 = call float @dx.op.dot3.f32(i32 55, float %4928, float %4929, float %4930, float %4928, float %4929, float %4930)  ; Dot3(ax,ay,az,bx,by,bz)
  %4932 = call float @dx.op.unary.f32(i32 25, float %4931)  ; Rsqrt(value)
  %4933 = fmul fast float %4932, %4928
  %4934 = fmul fast float %4932, %4929
  %4935 = fmul fast float %4932, %4930
  %4936 = call float @dx.op.dot3.f32(i32 55, float %4873, float %4874, float %4875, float %4646, float %4647, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4937 = call float @dx.op.dot3.f32(i32 55, float %4642, float %4641, float %4640, float %4933, float %4934, float %4935)  ; Dot3(ax,ay,az,bx,by,bz)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4936)  ; Saturate(value)
  %4939 = fmul fast float %4938, %4938
  %4940 = fmul fast float %4939, %4672
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fmul fast float %4941, %4938
  %4943 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %4933, float %4934, float %4935)  ; Dot3(ax,ay,az,bx,by,bz)
  %4944 = fmul fast float %4943, %4943
  %4945 = call float @dx.op.unary.f32(i32 6, float %4936)  ; FAbs(value)
  %4946 = fsub fast float 1.000000e+00, %4655
  %4947 = call float @dx.op.binary.f32(i32 35, float %4946, float 0x3F847AE140000000)  ; FMax(a,b)
  %4948 = fmul fast float %4947, %4947
  %4949 = fmul fast float %4948, %4948
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = fmul fast float %4659, %4659
  %4952 = fmul fast float %4951, %4950
  %4953 = fadd fast float %4952, %4949
  %4954 = bitcast float %4953 to i32
  %4955 = ashr i32 %4954, 1
  %4956 = add nsw i32 %4955, 532487669
  %4957 = bitcast i32 %4956 to float
  %4958 = fadd fast float %4957, %4659
  %4959 = fmul fast float %4949, %4944
  %4960 = fsub fast float 1.000000e+00, %4944
  %4961 = fadd fast float %4960, %4959
  %4962 = fmul fast float %4945, %4945
  %4963 = fmul fast float %4962, %4950
  %4964 = fadd fast float %4963, %4949
  %4965 = bitcast float %4964 to i32
  %4966 = ashr i32 %4965, 1
  %4967 = add nsw i32 %4966, 532487669
  %4968 = bitcast i32 %4967 to float
  %4969 = fadd fast float %4968, %4945
  %4970 = fmul fast float %4961, %4961
  %4971 = fmul fast float %4970, %4958
  %4972 = fmul fast float %4971, %4969
  %4973 = fdiv fast float 0x3FF0A00000000000, %4972
  %4974 = fmul fast float %4973, %4949
  %4975 = call float @dx.op.unary.f32(i32 6, float %4937)  ; FAbs(value)
  %4976 = fsub fast float 1.000000e+00, %4975
  %4977 = bitcast float %4976 to i32
  %4978 = sitofp i32 %4977 to float
  %4979 = fmul fast float %4978, 5.000000e+00
  %4980 = fadd fast float %4979, 0xC1EFBF8940000000
  %4981 = fptosi float %4980 to i32
  %4982 = bitcast i32 %4981 to float
  %4983 = fsub fast float 1.000000e+00, %4652
  %4984 = fsub fast float 1.000000e+00, %4653
  %4985 = fsub fast float 1.000000e+00, %4657
  %4986 = fmul fast float %4982, %4983
  %4987 = fmul fast float %4982, %4984
  %4988 = fmul fast float %4982, %4985
  %4989 = fadd fast float %4986, %4652
  %4990 = fadd fast float %4987, %4653
  %4991 = fadd fast float %4988, %4657
  br i1 %4784, label %4992, label %5015

; <label>:4992                                    ; preds = %4924
  %4993 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4335, float %4975, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4994 = extractvalue %dx.types.ResRet.f32 %4993, 0
  %4995 = extractvalue %dx.types.ResRet.f32 %4993, 1
  %4996 = extractvalue %dx.types.ResRet.f32 %4993, 2
  %4997 = fadd fast float %4994, -5.000000e-01
  %4998 = fadd fast float %4995, -5.000000e-01
  %4999 = fadd fast float %4996, -5.000000e-01
  %5000 = fmul fast float %4652, 4.000000e+00
  %5001 = fmul fast float %5000, %4983
  %5002 = fmul fast float %5001, %4997
  %5003 = fmul fast float %4653, 4.000000e+00
  %5004 = fmul fast float %5003, %4984
  %5005 = fmul fast float %5004, %4998
  %5006 = fmul fast float %4657, 4.000000e+00
  %5007 = fmul fast float %5006, %4985
  %5008 = fmul fast float %5007, %4999
  %5009 = fadd fast float %5002, %4989
  %5010 = fadd fast float %5005, %4990
  %5011 = fadd fast float %5008, %4991
  %5012 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5013 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5014 = call float @dx.op.unary.f32(i32 7, float %5011)  ; Saturate(value)
  br label %5015

; <label>:5015                                    ; preds = %4992, %4924
  %5016 = phi float [ %5012, %4992 ], [ %4989, %4924 ]
  %5017 = phi float [ %5013, %4992 ], [ %4990, %4924 ]
  %5018 = phi float [ %5014, %4992 ], [ %4991, %4924 ]
  %5019 = fmul fast float %4936, 9.843750e-01
  %5020 = fadd fast float %5019, 7.812500e-03
  %5021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %5020, float %4774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5022 = extractvalue %dx.types.ResRet.f32 %5021, 2
  %5023 = extractvalue %dx.types.ResRet.f32 %5021, 3
  %5024 = fmul fast float %5022, %4652
  %5025 = fmul fast float %5022, %4653
  %5026 = fmul fast float %5022, %4657
  %5027 = fadd fast float %5024, %5023
  %5028 = fadd fast float %5025, %5023
  %5029 = fadd fast float %5026, %5023
  br i1 %4784, label %5030, label %5053

; <label>:5030                                    ; preds = %5015
  %5031 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4335, float %4936, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5032 = extractvalue %dx.types.ResRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.ResRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.ResRet.f32 %5031, 2
  %5035 = fadd fast float %5032, -5.000000e-01
  %5036 = fadd fast float %5033, -5.000000e-01
  %5037 = fadd fast float %5034, -5.000000e-01
  %5038 = fmul fast float %4652, 4.000000e+00
  %5039 = fmul fast float %5038, %4983
  %5040 = fmul fast float %5039, %5035
  %5041 = fmul fast float %4653, 4.000000e+00
  %5042 = fmul fast float %5041, %4984
  %5043 = fmul fast float %5042, %5036
  %5044 = fmul fast float %4657, 4.000000e+00
  %5045 = fmul fast float %5044, %4985
  %5046 = fmul fast float %5045, %5037
  %5047 = fadd fast float %5040, %5027
  %5048 = fadd fast float %5043, %5028
  %5049 = fadd fast float %5046, %5029
  %5050 = call float @dx.op.unary.f32(i32 7, float %5047)  ; Saturate(value)
  %5051 = call float @dx.op.unary.f32(i32 7, float %5048)  ; Saturate(value)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5049)  ; Saturate(value)
  br label %5053

; <label>:5053                                    ; preds = %5030, %5015
  %5054 = phi float [ %5050, %5030 ], [ %5027, %5015 ]
  %5055 = phi float [ %5051, %5030 ], [ %5028, %5015 ]
  %5056 = phi float [ %5052, %5030 ], [ %5029, %5015 ]
  %5057 = call float @dx.op.binary.f32(i32 35, float %5055, float %5056)  ; FMax(a,b)
  %5058 = call float @dx.op.binary.f32(i32 35, float %5054, float %5057)  ; FMax(a,b)
  %5059 = fsub fast float 1.000000e+00, %5058
  %5060 = fmul fast float %5016, %4974
  %5061 = fmul fast float %5017, %4974
  %5062 = fmul fast float %5018, %4974
  %5063 = fsub fast float 1.000000e+00, %4937
  %5064 = bitcast float %5063 to i32
  %5065 = sitofp i32 %5064 to float
  %5066 = fmul fast float %5065, 5.000000e+00
  %5067 = fadd fast float %5066, 0xC1EFBF8940000000
  %5068 = fptosi float %5067 to i32
  %5069 = bitcast i32 %5068 to float
  %5070 = fmul fast float %5069, %4336
  %5071 = fmul fast float %5059, %5070
  %5072 = fmul fast float %5071, %4834
  %5073 = fmul fast float %5071, %4835
  %5074 = fmul fast float %5071, %4836
  %5075 = fadd fast float %5072, %5060
  %5076 = fadd fast float %5073, %5061
  %5077 = fadd fast float %5074, %5062
  %5078 = fmul fast float %4942, %4925
  %5079 = fmul fast float %5078, %5059
  %5080 = fmul fast float %4942, %4926
  %5081 = fmul fast float %5080, %5059
  %5082 = fmul fast float %4942, %4927
  %5083 = fmul fast float %5082, %5059
  %5084 = fmul fast float %5078, %5075
  %5085 = fmul fast float %5080, %5076
  %5086 = fmul fast float %5082, %5077
  %5087 = fadd fast float %5079, %4818
  %5088 = fmul fast float %5087, %4332
  %5089 = fadd fast float %5081, %4819
  %5090 = fmul fast float %5089, %4332
  %5091 = fadd fast float %5083, %4820
  %5092 = fmul fast float %5091, %4332
  %5093 = fadd fast float %5084, %4861
  %5094 = fmul fast float %5093, %4332
  %5095 = fadd fast float %5085, %4864
  %5096 = fmul fast float %5095, %4332
  %5097 = fadd fast float %5086, %4867
  %5098 = fmul fast float %5097, %4332
  br label %5099

; <label>:5099                                    ; preds = %5053, %4917, %4811
  %5100 = phi float [ %4862, %4811 ], [ %4862, %4917 ], [ %5094, %5053 ]
  %5101 = phi float [ %4865, %4811 ], [ %4865, %4917 ], [ %5096, %5053 ]
  %5102 = phi float [ %4868, %4811 ], [ %4868, %4917 ], [ %5098, %5053 ]
  %5103 = phi float [ %4857, %4811 ], [ %4857, %4917 ], [ %5088, %5053 ]
  %5104 = phi float [ %4858, %4811 ], [ %4858, %4917 ], [ %5090, %5053 ]
  %5105 = phi float [ %4859, %4811 ], [ %4859, %4917 ], [ %5092, %5053 ]
  %5106 = call float @dx.op.unary.f32(i32 24, float %4649)  ; Sqrt(value)
  %5107 = call float @dx.op.unary.f32(i32 24, float %4650)  ; Sqrt(value)
  %5108 = call float @dx.op.unary.f32(i32 24, float %4651)  ; Sqrt(value)
  %5109 = fmul fast float %5106, %5103
  %5110 = fmul fast float %5107, %5104
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 0
  br i1 %160, label %5113, label %5133

; <label>:5113                                    ; preds = %5099
  %5114 = fadd fast float %5105, %4338
  %5115 = fmul fast float %5114, %4339
  %5116 = fsub fast float 1.000000e+00, %4339
  %5117 = call float @dx.op.unary.f32(i32 7, float %5116)  ; Saturate(value)
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 3
  %5120 = fmul fast float %5119, %5117
  %5121 = fadd fast float %5120, %5115
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5124 = fmul fast float %5123, %4840
  %5125 = fsub fast float %5121, %5124
  %5126 = fadd fast float %5110, %5109
  %5127 = fmul fast float %5112, %5126
  %5128 = extractvalue %dx.types.CBufRet.f32 %5118, 1
  %5129 = fsub fast float %5125, %5128
  %5130 = extractvalue %dx.types.CBufRet.f32 %5118, 2
  %5131 = fmul fast float %5129, %5130
  %5132 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  br label %5149

; <label>:5133                                    ; preds = %5099
  %5134 = fmul fast float %5108, %5105
  %5135 = fmul fast float %5112, %5109
  %5136 = fmul fast float %5112, %5110
  %5137 = fmul fast float %5134, %5112
  %5138 = add i32 %21, 356
  %5139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5138, i32 undef)  ; BufferLoad(srv,index,wot)
  %5140 = extractvalue %dx.types.ResRet.i32 %5139, 0
  %5141 = and i32 %5140, 32
  %5142 = icmp eq i32 %5141, 0
  br i1 %5142, label %5149, label %5143

; <label>:5143                                    ; preds = %5133
  %5144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5145 = extractvalue %dx.types.CBufRet.f32 %5144, 0
  %5146 = fmul fast float %5145, 0x3FE99999A0000000
  %5147 = fadd fast float %5145, %5135
  %5148 = fadd fast float %5146, %5137
  br label %5149

; <label>:5149                                    ; preds = %5143, %5133, %5113
  %5150 = phi float [ %5127, %5113 ], [ %5147, %5143 ], [ %5135, %5133 ]
  %5151 = phi float [ %5132, %5113 ], [ %5136, %5143 ], [ %5136, %5133 ]
  %5152 = phi float [ 1.000000e+00, %5113 ], [ %5148, %5143 ], [ %5137, %5133 ]
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = fmul fast float %5154, %5101
  %5156 = fmul fast float %5154, %5102
  %5157 = fadd fast float %5101, %5100
  %5158 = select i1 %160, float %5157, float %5100
  %5159 = fmul float %5158, %5154
  %5160 = select i1 %160, float 0.000000e+00, float %5155
  %5161 = select i1 %160, float 0.000000e+00, float %5156
  %5162 = fmul fast float %5150, %5106
  %5163 = fmul fast float %5151, %5107
  %5164 = fmul fast float %5152, %5108
  %5165 = fadd fast float %5159, %5162
  %5166 = fadd fast float %5160, %5163
  %5167 = fadd fast float %5161, %5164
  %5168 = select i1 %160, float %5151, float %5166
  %5169 = select i1 %160, float %5152, float %5167
  %5170 = call float @dx.op.binary.f32(i32 36, float %5165, float 3.225500e+04)  ; FMin(a,b)
  %5171 = call float @dx.op.binary.f32(i32 36, float %5168, float 3.225500e+04)  ; FMin(a,b)
  %5172 = call float @dx.op.binary.f32(i32 36, float %5169, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5170)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5171)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5172)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!33 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !57}
!35 = !{!36, !55, null}
!36 = !{!37, !40, !42, !44, !46, !48, !49, !50, !51, !52, !54}
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
!48 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !38, i8 2, i32 1, i8 3, i32 5, i8 0, !45}
!49 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 6, i8 0, !47}
!50 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !38, i8 2, i32 1, i8 2, i32 7, i8 0, !43}
!51 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !38, i8 2, i32 1, i8 4, i32 8, i8 0, !47}
!52 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !38, i8 1, i32 1, i8 4, i32 9, i8 0, !53}
!53 = !{i32 3, i32 13}
!54 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!55 = !{!56}
!56 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !47}
!57 = !{i32 0, i64 24}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 1}

