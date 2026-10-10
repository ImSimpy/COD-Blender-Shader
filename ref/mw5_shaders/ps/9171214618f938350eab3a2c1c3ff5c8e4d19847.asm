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
; shader hash: 26f8f91788538a4c3449194c08e2b1c5
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
  %343 = add i32 %21, 492
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
  br i1 %333, label %1710, label %869

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
  br i1 %878, label %1710, label %879

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
  br i1 %1167, label %1710, label %1168

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
  %1517 = add i32 %21, 112
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 255
  %1521 = uitofp i32 %1520 to float
  %1522 = lshr i32 %1519, 8
  %1523 = and i32 %1522, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = call float @dx.op.dot3.f32(i32 55, float %1386, float %1387, float %1388, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1526 = fmul fast float %1524, %1525
  %1527 = fadd fast float %1526, %1521
  %1528 = fmul fast float %1527, 0x3F70101020000000
  %1529 = call float @dx.op.unary.f32(i32 7, float %1528)  ; Saturate(value)
  br i1 %870, label %1530, label %1538

; <label>:1530                                    ; preds = %1513
  %1531 = fsub fast float 1.000000e+00, %1166
  %1532 = fmul fast float %1531, %858
  %1533 = fmul fast float %1531, %859
  %1534 = fmul fast float %1531, %860
  %1535 = fmul fast float %1531, %861
  %1536 = fmul fast float %1531, %862
  %1537 = fmul fast float %1531, %863
  br label %1538

; <label>:1538                                    ; preds = %1530, %1513
  %1539 = phi float [ %1532, %1530 ], [ %858, %1513 ]
  %1540 = phi float [ %1533, %1530 ], [ %859, %1513 ]
  %1541 = phi float [ %1534, %1530 ], [ %860, %1513 ]
  %1542 = phi float [ %1535, %1530 ], [ %861, %1513 ]
  %1543 = phi float [ %1536, %1530 ], [ %862, %1513 ]
  %1544 = phi float [ %1537, %1530 ], [ %863, %1513 ]
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = and i32 %1546, 3
  %1548 = icmp eq i32 %1547, 3
  br i1 %1548, label %1627, label %1549

; <label>:1549                                    ; preds = %1538
  %1550 = and i32 %1546, 16
  %1551 = icmp ne i32 %1550, 0
  %1552 = select i1 %1551, float %1166, float 0.000000e+00
  %1553 = icmp eq i32 %1547, 0
  br i1 %1553, label %1554, label %1582

; <label>:1554                                    ; preds = %1549
  %1555 = and i32 %1546, 64
  %1556 = icmp ne i32 %1555, 0
  %1557 = select i1 %1556, float %1166, float 0.000000e+00
  %1558 = fsub fast float %1386, %1539
  %1559 = fsub fast float %1387, %1540
  %1560 = fsub fast float %1388, %1541
  %1561 = fmul fast float %1552, %1558
  %1562 = fmul fast float %1552, %1559
  %1563 = fmul fast float %1552, %1560
  %1564 = fadd fast float %1561, %1539
  %1565 = fadd fast float %1562, %1540
  %1566 = fadd fast float %1563, %1541
  %1567 = fsub fast float %1372, %864
  %1568 = fmul fast float %1552, %1567
  %1569 = fadd fast float %1568, %864
  %1570 = fsub fast float %1514, %1542
  %1571 = fsub fast float %1515, %1543
  %1572 = fsub fast float %1516, %1544
  %1573 = fmul fast float %1557, %1570
  %1574 = fmul fast float %1557, %1571
  %1575 = fmul fast float %1557, %1572
  %1576 = fadd fast float %1573, %1542
  %1577 = fadd fast float %1574, %1543
  %1578 = fadd fast float %1575, %1544
  %1579 = fsub fast float %1529, %868
  %1580 = fmul fast float %1552, %1579
  %1581 = fadd fast float %1580, %868
  br label %1627

; <label>:1582                                    ; preds = %1549
  %1583 = icmp eq i32 %1547, 1
  br i1 %1583, label %1584, label %1597

; <label>:1584                                    ; preds = %1582
  %1585 = fadd fast float %1386, -1.000000e+00
  %1586 = fadd fast float %1387, -1.000000e+00
  %1587 = fadd fast float %1388, -1.000000e+00
  %1588 = fmul fast float %1552, %1585
  %1589 = fmul fast float %1552, %1586
  %1590 = fmul fast float %1552, %1587
  %1591 = fadd fast float %1588, 1.000000e+00
  %1592 = fadd fast float %1589, 1.000000e+00
  %1593 = fadd fast float %1590, 1.000000e+00
  %1594 = fmul fast float %1591, %1539
  %1595 = fmul fast float %1592, %1540
  %1596 = fmul fast float %1593, %1541
  br label %1627

; <label>:1597                                    ; preds = %1582
  %1598 = icmp eq i32 %1547, 2
  br i1 %1598, label %1599, label %1627

; <label>:1599                                    ; preds = %1597
  %1600 = call float @dx.op.unary.f32(i32 24, float %1386)  ; Sqrt(value)
  %1601 = call float @dx.op.unary.f32(i32 24, float %1387)  ; Sqrt(value)
  %1602 = call float @dx.op.unary.f32(i32 24, float %1388)  ; Sqrt(value)
  %1603 = fadd fast float %1600, -5.000000e-01
  %1604 = fadd fast float %1601, -5.000000e-01
  %1605 = fadd fast float %1602, -5.000000e-01
  %1606 = fmul fast float %1603, %1552
  %1607 = fmul fast float %1604, %1552
  %1608 = fmul fast float %1605, %1552
  %1609 = fadd fast float %1606, 5.000000e-01
  %1610 = fadd fast float %1607, 5.000000e-01
  %1611 = fadd fast float %1608, 5.000000e-01
  %1612 = fmul fast float %1609, 2.000000e+00
  %1613 = fsub fast float 1.000000e+00, %1612
  %1614 = fmul fast float %1613, %1539
  %1615 = fadd fast float %1614, %1612
  %1616 = fmul fast float %1615, %1539
  %1617 = fmul fast float %1610, 2.000000e+00
  %1618 = fsub fast float 1.000000e+00, %1617
  %1619 = fmul fast float %1618, %1540
  %1620 = fadd fast float %1619, %1617
  %1621 = fmul fast float %1620, %1540
  %1622 = fmul fast float %1611, 2.000000e+00
  %1623 = fsub fast float 1.000000e+00, %1622
  %1624 = fmul fast float %1623, %1541
  %1625 = fadd fast float %1624, %1622
  %1626 = fmul fast float %1625, %1541
  br label %1627

; <label>:1627                                    ; preds = %1599, %1597, %1584, %1554, %1538
  %1628 = phi float [ %1539, %1538 ], [ %1616, %1599 ], [ %1539, %1597 ], [ %1594, %1584 ], [ %1564, %1554 ]
  %1629 = phi float [ %1540, %1538 ], [ %1621, %1599 ], [ %1540, %1597 ], [ %1595, %1584 ], [ %1565, %1554 ]
  %1630 = phi float [ %1541, %1538 ], [ %1626, %1599 ], [ %1541, %1597 ], [ %1596, %1584 ], [ %1566, %1554 ]
  %1631 = phi float [ %1542, %1538 ], [ %1542, %1599 ], [ %1542, %1597 ], [ %1542, %1584 ], [ %1576, %1554 ]
  %1632 = phi float [ %1543, %1538 ], [ %1543, %1599 ], [ %1543, %1597 ], [ %1543, %1584 ], [ %1577, %1554 ]
  %1633 = phi float [ %1544, %1538 ], [ %1544, %1599 ], [ %1544, %1597 ], [ %1544, %1584 ], [ %1578, %1554 ]
  %1634 = phi float [ %864, %1538 ], [ %864, %1599 ], [ %864, %1597 ], [ %864, %1584 ], [ %1569, %1554 ]
  %1635 = phi float [ %868, %1538 ], [ %868, %1599 ], [ %868, %1597 ], [ %868, %1584 ], [ %1581, %1554 ]
  %1636 = and i32 %1546, 12
  %1637 = icmp eq i32 %1636, 12
  br i1 %1637, label %1710, label %1638

; <label>:1638                                    ; preds = %1627
  %1639 = and i32 %1546, 2097184
  %1640 = icmp eq i32 %1639, 2097184
  %1641 = select i1 %1640, float %1166, float 0.000000e+00
  %1642 = and i32 %1546, 4194336
  %1643 = icmp eq i32 %1642, 4194336
  %1644 = select i1 %1643, float %1166, float 0.000000e+00
  %1645 = and i32 %1546, 8388640
  %1646 = icmp eq i32 %1645, 8388640
  %1647 = select i1 %1646, float %1166, float 0.000000e+00
  %1648 = icmp eq i32 %1636, 0
  br i1 %1648, label %1649, label %1662

; <label>:1649                                    ; preds = %1638
  %1650 = fsub fast float %1467, %856
  %1651 = fsub fast float %1468, %857
  %1652 = fmul fast float %1641, %1650
  %1653 = fmul fast float %1641, %1651
  %1654 = fadd fast float %1652, %856
  %1655 = fadd fast float %1653, %857
  %1656 = fsub fast float %1469, %867
  %1657 = fmul fast float %1644, %1656
  %1658 = fadd fast float %1657, %867
  %1659 = fsub fast float %1466, %866
  %1660 = fmul fast float %1647, %1659
  %1661 = fadd fast float %1660, %866
  br label %1710

; <label>:1662                                    ; preds = %1638
  %1663 = icmp eq i32 %1636, 4
  br i1 %1663, label %1664, label %1696

; <label>:1664                                    ; preds = %1662
  %1665 = fmul fast float %1641, %1467
  %1666 = fmul fast float %1641, %1468
  %1667 = fadd fast float %1665, %856
  %1668 = fadd fast float %1666, %857
  %1669 = call float @dx.op.binary.f32(i32 36, float %867, float %1469)  ; FMin(a,b)
  %1670 = fsub fast float %1669, %867
  %1671 = fmul fast float %1670, %1644
  %1672 = fadd fast float %1671, %867
  %1673 = fadd fast float %1466, %866
  %1674 = fmul fast float %1673, 0x3FF337FAE0000000
  %1675 = fmul fast float %866, %866
  %1676 = fmul fast float %1466, %1466
  %1677 = fadd fast float %1676, %1675
  %1678 = fmul fast float %1677, 0x3FE5152B00000000
  %1679 = fmul fast float %866, 0xBFCC1F85E0000000
  %1680 = fmul fast float %1679, %1466
  %1681 = fadd fast float %1680, 0xBFE1363700000000
  %1682 = fadd fast float %1681, %1674
  %1683 = fsub fast float %1682, %1678
  %1684 = fmul fast float %1673, 0x3FBA6F0D00000000
  %1685 = fmul fast float %1677, 0x3FD0432880000000
  %1686 = fmul fast float %866, 0xBFEF110800000000
  %1687 = fmul fast float %1686, %1466
  %1688 = fadd fast float %1687, 1.000000e+00
  %1689 = fsub fast float %1688, %1684
  %1690 = fadd fast float %1689, %1685
  %1691 = fdiv fast float %1683, %1690
  %1692 = call float @dx.op.unary.f32(i32 7, float %1691)  ; Saturate(value)
  %1693 = fsub fast float %1692, %866
  %1694 = fmul fast float %1693, %1647
  %1695 = fadd fast float %1694, %866
  br label %1710

; <label>:1696                                    ; preds = %1662
  %1697 = icmp eq i32 %1636, 8
  br i1 %1697, label %1698, label %1710

; <label>:1698                                    ; preds = %1696
  %1699 = fmul fast float %1641, %1467
  %1700 = fmul fast float %1641, %1468
  %1701 = fadd fast float %1699, %856
  %1702 = fadd fast float %1700, %857
  %1703 = call float @dx.op.binary.f32(i32 36, float %867, float %1469)  ; FMin(a,b)
  %1704 = fsub fast float %1703, %867
  %1705 = fmul fast float %1704, %1644
  %1706 = fadd fast float %1705, %867
  %1707 = fsub fast float %1466, %866
  %1708 = fmul fast float %1647, %1707
  %1709 = fadd fast float %1708, %866
  br label %1710

; <label>:1710                                    ; preds = %1698, %1696, %1664, %1649, %1627, %1165, %869, %855
  %1711 = phi float [ %856, %1627 ], [ %856, %1165 ], [ %856, %855 ], [ %1701, %1698 ], [ %856, %1696 ], [ %1667, %1664 ], [ %1654, %1649 ], [ %856, %869 ]
  %1712 = phi float [ %857, %1627 ], [ %857, %1165 ], [ %857, %855 ], [ %1702, %1698 ], [ %857, %1696 ], [ %1668, %1664 ], [ %1655, %1649 ], [ %857, %869 ]
  %1713 = phi float [ %1628, %1627 ], [ %858, %1165 ], [ %858, %855 ], [ %1628, %1698 ], [ %1628, %1696 ], [ %1628, %1664 ], [ %1628, %1649 ], [ %858, %869 ]
  %1714 = phi float [ %1629, %1627 ], [ %859, %1165 ], [ %859, %855 ], [ %1629, %1698 ], [ %1629, %1696 ], [ %1629, %1664 ], [ %1629, %1649 ], [ %859, %869 ]
  %1715 = phi float [ %1630, %1627 ], [ %860, %1165 ], [ %860, %855 ], [ %1630, %1698 ], [ %1630, %1696 ], [ %1630, %1664 ], [ %1630, %1649 ], [ %860, %869 ]
  %1716 = phi float [ %1631, %1627 ], [ %861, %1165 ], [ %861, %855 ], [ %1631, %1698 ], [ %1631, %1696 ], [ %1631, %1664 ], [ %1631, %1649 ], [ %861, %869 ]
  %1717 = phi float [ %1632, %1627 ], [ %862, %1165 ], [ %862, %855 ], [ %1632, %1698 ], [ %1632, %1696 ], [ %1632, %1664 ], [ %1632, %1649 ], [ %862, %869 ]
  %1718 = phi float [ %1633, %1627 ], [ %863, %1165 ], [ %863, %855 ], [ %1633, %1698 ], [ %1633, %1696 ], [ %1633, %1664 ], [ %1633, %1649 ], [ %863, %869 ]
  %1719 = phi float [ %1634, %1627 ], [ %864, %1165 ], [ %864, %855 ], [ %1634, %1698 ], [ %1634, %1696 ], [ %1634, %1664 ], [ %1634, %1649 ], [ %864, %869 ]
  %1720 = phi float [ %866, %1627 ], [ %866, %1165 ], [ %866, %855 ], [ %1709, %1698 ], [ %866, %1696 ], [ %1695, %1664 ], [ %1661, %1649 ], [ %866, %869 ]
  %1721 = phi float [ %867, %1627 ], [ %867, %1165 ], [ %867, %855 ], [ %1706, %1698 ], [ %867, %1696 ], [ %1672, %1664 ], [ %1658, %1649 ], [ %867, %869 ]
  %1722 = phi float [ %1635, %1627 ], [ %868, %1165 ], [ %868, %855 ], [ %1635, %1698 ], [ %1635, %1696 ], [ %1635, %1664 ], [ %1635, %1649 ], [ %868, %869 ]
  br i1 %335, label %2564, label %1723

; <label>:1723                                    ; preds = %1710
  %1724 = icmp ult i32 %388, 3
  %1725 = add i32 %21, 56
  %1726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1727 = extractvalue %dx.types.ResRet.i32 %1726, 0
  %1728 = add i32 %21, 60
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = or i32 %1730, %1727
  %1732 = icmp eq i32 %1731, 0
  br i1 %1732, label %2564, label %1733

; <label>:1733                                    ; preds = %1723
  %1734 = and i32 %1727, 262144
  %1735 = icmp ne i32 %1734, 0
  %1736 = select i1 %1735, float %24, float 1.000000e+00
  %1737 = select i1 %1735, float %25, float 0.000000e+00
  %1738 = select i1 %1735, float %26, float 0.000000e+00
  %1739 = select i1 %1735, float %27, float 1.000000e+00
  %1740 = select i1 %1735, float %28, float %44
  %1741 = select i1 %1735, float %29, float %45
  %1742 = add i32 %21, 316
  %1743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %1744 = extractvalue %dx.types.ResRet.i32 %1743, 0
  %1745 = lshr i32 %1744, 16
  %1746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1745)  ; LegacyF16ToF32(value)
  %1747 = fmul fast float %1746, 0x3F50624DE0000000
  %1748 = add i32 %21, 120
  %1749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %1750 = extractvalue %dx.types.ResRet.i32 %1749, 0
  %1751 = lshr i32 %1750, 16
  %1752 = and i32 %1751, 255
  %1753 = lshr i32 %1750, 24
  %1754 = add i32 %21, 324
  %1755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1754, i32 undef)  ; BufferLoad(srv,index,wot)
  %1756 = extractvalue %dx.types.ResRet.i32 %1755, 0
  %1757 = and i32 %1756, 65535
  %1758 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1757)  ; LegacyF16ToF32(value)
  %1759 = lshr i32 %1756, 16
  %1760 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1759)  ; LegacyF16ToF32(value)
  %1761 = add i32 %21, 64
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = lshr i32 %1763, 22
  %1765 = shl nuw nsw i32 %1764, 5
  %1766 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1765)  ; LegacyF16ToF32(value)
  %1767 = shl i32 %1763, 4
  %1768 = and i32 %1767, 32752
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = lshr i32 %1763, 7
  %1771 = and i32 %1770, 32752
  %1772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1771)  ; LegacyF16ToF32(value)
  %1773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1774 = extractvalue %dx.types.CBufRet.f32 %1773, 3
  %1775 = fmul fast float %1774, 1.000000e+03
  %1776 = fmul fast float %285, %1775
  %1777 = call float @dx.op.unary.f32(i32 22, float %1776)  ; Frc(value)
  %1778 = fadd fast float %1777, %275
  %1779 = fmul fast float %286, %1775
  %1780 = call float @dx.op.unary.f32(i32 22, float %1779)  ; Frc(value)
  %1781 = fadd fast float %1780, %277
  %1782 = fmul fast float %1747, %1775
  %1783 = call float @dx.op.unary.f32(i32 22, float %1782)  ; Frc(value)
  %1784 = fmul fast float %1783, 0x401921FB60000000
  %1785 = fadd fast float %1784, %1766
  %1786 = call float @dx.op.unary.f32(i32 13, float %1785)  ; Sin(value)
  %1787 = call float @dx.op.unary.f32(i32 12, float %1785)  ; Cos(value)
  %1788 = fsub fast float -0.000000e+00, %1786
  %1789 = fadd fast float %1740, -5.000000e-01
  %1790 = fadd fast float %1741, -5.000000e-01
  %1791 = fmul fast float %1758, %1789
  %1792 = fmul fast float %1760, %1790
  %1793 = fadd fast float %1791, 5.000000e-01
  %1794 = fadd fast float %1792, 5.000000e-01
  %1795 = fmul fast float %1769, %1793
  %1796 = fmul fast float %1772, %1794
  %1797 = fmul fast float %1787, %1795
  %1798 = call float @dx.op.tertiary.f32(i32 46, float %1788, float %1796, float %1797)  ; FMad(a,b,c)
  %1799 = fmul fast float %1786, %1795
  %1800 = call float @dx.op.tertiary.f32(i32 46, float %1787, float %1796, float %1799)  ; FMad(a,b,c)
  %1801 = fadd fast float %1778, %1798
  %1802 = fadd fast float %1781, %1800
  %1803 = icmp ugt i32 %1752, 1
  %1804 = icmp ugt i32 %1750, 33554431
  %1805 = or i1 %1804, %1803
  br i1 %1805, label %1806, label %1831

; <label>:1806                                    ; preds = %1733
  %1807 = add i32 %21, 260
  %1808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1807, i32 undef)  ; BufferLoad(srv,index,wot)
  %1809 = extractvalue %dx.types.ResRet.i32 %1808, 0
  %1810 = lshr i32 %1809, 16
  %1811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1810)  ; LegacyF16ToF32(value)
  %1812 = fmul fast float %1774, %1811
  %1813 = call float @dx.op.unary.f32(i32 22, float %1812)  ; Frc(value)
  %1814 = mul nuw nsw i32 %1752, %1753
  %1815 = uitofp i32 %1814 to float
  %1816 = fmul fast float %1813, %1815
  %1817 = call float @dx.op.unary.f32(i32 27, float %1816)  ; Round_ni(value)
  %1818 = fptoui float %1817 to i32
  %1819 = urem i32 %1818, %1752
  %1820 = udiv i32 %1818, %1753
  %1821 = call float @dx.op.unary.f32(i32 22, float %1801)  ; Frc(value)
  %1822 = call float @dx.op.unary.f32(i32 22, float %1802)  ; Frc(value)
  %1823 = uitofp i32 %1819 to float
  %1824 = uitofp i32 %1820 to float
  %1825 = fadd fast float %1821, %1823
  %1826 = fadd fast float %1822, %1824
  %1827 = uitofp i32 %1752 to float
  %1828 = uitofp i32 %1753 to float
  %1829 = fdiv fast float %1825, %1827
  %1830 = fdiv fast float %1826, %1828
  br label %1831

; <label>:1831                                    ; preds = %1806, %1733
  %1832 = phi float [ %1829, %1806 ], [ %1801, %1733 ]
  %1833 = phi float [ %1830, %1806 ], [ %1802, %1733 ]
  %1834 = and i32 %1727, 16777216
  %1835 = icmp eq i32 %1834, 0
  br i1 %1835, label %1945, label %1836

; <label>:1836                                    ; preds = %1831
  %1837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1838 = extractvalue %dx.types.CBufRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.CBufRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.CBufRet.f32 %1837, 2
  %1841 = fadd fast float %1838, %119
  %1842 = fadd fast float %1839, %120
  %1843 = fadd fast float %1840, %121
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = call float @dx.op.unary.f32(i32 7, float %1845)  ; Saturate(value)
  %1847 = icmp eq i32 %22, 65535
  br i1 %1847, label %1942, label %1848

; <label>:1848                                    ; preds = %1836
  %1849 = lshr i32 %22, 1
  %1850 = shl i32 %1849, 2
  %1851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.i32 %1851, 0
  %1853 = and i32 %22, 1
  %1854 = icmp ne i32 %1853, 0
  %1855 = lshr i32 %1852, 16
  %1856 = and i32 %1852, 65535
  %1857 = select i1 %1854, i32 %1855, i32 %1856
  %1858 = icmp eq i32 %1857, 65535
  br i1 %1858, label %1938, label %1859

; <label>:1859                                    ; preds = %1848
  %1860 = mul nuw nsw i32 %1857, 40
  %1861 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.ResRet.f32 %1861, 1
  %1864 = extractvalue %dx.types.ResRet.f32 %1861, 2
  %1865 = add nuw nsw i32 %1860, 12
  %1866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.f32 %1866, 0
  %1868 = extractvalue %dx.types.ResRet.f32 %1866, 1
  %1869 = extractvalue %dx.types.ResRet.f32 %1866, 2
  %1870 = add nuw nsw i32 %1860, 24
  %1871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1870, i32 undef)  ; BufferLoad(srv,index,wot)
  %1872 = extractvalue %dx.types.ResRet.f32 %1871, 0
  %1873 = extractvalue %dx.types.ResRet.f32 %1871, 1
  %1874 = extractvalue %dx.types.ResRet.f32 %1871, 2
  %1875 = add nuw nsw i32 %1860, 36
  %1876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.f32 %1876, 0
  %1878 = fsub fast float %1841, %1862
  %1879 = fsub fast float %1842, %1863
  %1880 = fsub fast float %1843, %1864
  %1881 = fmul fast float %1877, %1878
  %1882 = fmul fast float %1877, %1879
  %1883 = fmul fast float %1877, %1880
  %1884 = call float @dx.op.unary.f32(i32 27, float %1881)  ; Round_ni(value)
  %1885 = call float @dx.op.unary.f32(i32 27, float %1882)  ; Round_ni(value)
  %1886 = call float @dx.op.unary.f32(i32 27, float %1883)  ; Round_ni(value)
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = fadd fast float %1885, 5.000000e-01
  %1889 = fadd fast float %1886, 5.000000e-01
  %1890 = fmul fast float %1887, %1867
  %1891 = fmul fast float %1888, %1868
  %1892 = fmul fast float %1889, %1869
  %1893 = shl i32 %22, 2
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = add i32 %1895, 0
  %1897 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1896, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1898 = call float @dx.op.unary.f32(i32 22, float %1890)  ; Frc(value)
  %1899 = call float @dx.op.unary.f32(i32 22, float %1891)  ; Frc(value)
  %1900 = call float @dx.op.unary.f32(i32 22, float %1892)  ; Frc(value)
  %1901 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1897, %dx.types.Handle %18, float %1898, float %1899, float %1900, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = extractvalue %dx.types.ResRet.f32 %1901, 1
  %1904 = extractvalue %dx.types.ResRet.f32 %1901, 2
  %1905 = fmul fast float %1902, 1.023000e+03
  %1906 = fmul fast float %1903, 1.023000e+03
  %1907 = fmul fast float %1904, 1.023000e+03
  %1908 = fadd fast float %1905, 5.000000e-01
  %1909 = fadd fast float %1906, 5.000000e-01
  %1910 = fadd fast float %1907, 5.000000e-01
  %1911 = call float @dx.op.unary.f32(i32 27, float %1908)  ; Round_ni(value)
  %1912 = call float @dx.op.unary.f32(i32 27, float %1909)  ; Round_ni(value)
  %1913 = call float @dx.op.unary.f32(i32 27, float %1910)  ; Round_ni(value)
  %1914 = fsub fast float %1881, %1884
  %1915 = fsub fast float %1882, %1885
  %1916 = fsub fast float %1883, %1886
  %1917 = fmul fast float %1914, 7.500000e-01
  %1918 = fmul fast float %1915, 7.500000e-01
  %1919 = fmul fast float %1916, 7.500000e-01
  %1920 = fadd fast float %1884, 1.250000e-01
  %1921 = fadd fast float %1920, %1917
  %1922 = fadd fast float %1921, %1911
  %1923 = fadd fast float %1885, 1.250000e-01
  %1924 = fadd fast float %1923, %1918
  %1925 = fadd fast float %1924, %1912
  %1926 = fadd fast float %1886, 1.250000e-01
  %1927 = fadd fast float %1926, %1919
  %1928 = fadd fast float %1927, %1913
  %1929 = fmul fast float %1922, %1872
  %1930 = fmul fast float %1925, %1873
  %1931 = fmul fast float %1928, %1874
  %1932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1933 = extractvalue %dx.types.ResRet.i32 %1932, 0
  %1934 = add i32 %1933, 0
  %1935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1934, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1935, %dx.types.Handle %16, float %1929, float %1930, float %1931, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1937 = extractvalue %dx.types.ResRet.f32 %1936, 0
  br label %1938

; <label>:1938                                    ; preds = %1859, %1848
  %1939 = phi float [ %1937, %1859 ], [ -1.000000e+00, %1848 ]
  %1940 = fadd fast float %1939, %1846
  %1941 = call float @dx.op.unary.f32(i32 7, float %1940)  ; Saturate(value)
  br label %1942

; <label>:1942                                    ; preds = %1938, %1836
  %1943 = phi float [ %1941, %1938 ], [ %1846, %1836 ]
  %1944 = fmul fast float %1943, %384
  br label %1945

; <label>:1945                                    ; preds = %1942, %1831
  %1946 = phi float [ %1944, %1942 ], [ %384, %1831 ]
  %1947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %1948 = extractvalue %dx.types.ResRet.i32 %1947, 0
  %1949 = and i32 %1948, 256
  %1950 = icmp eq i32 %1949, 0
  br i1 %1950, label %1997, label %1951

; <label>:1951                                    ; preds = %1945
  %1952 = add i32 %21, 448
  %1953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1954 = extractvalue %dx.types.ResRet.i32 %1953, 0
  %1955 = add i32 %1954, 0
  %1956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1956, %dx.types.Handle %53, float %1832, float %1833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1958 = extractvalue %dx.types.ResRet.f32 %1957, 0
  %1959 = add i32 %21, 132
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = shl i32 %1961, 4
  %1963 = and i32 %1962, 32752
  %1964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1963)  ; LegacyF16ToF32(value)
  %1965 = lshr i32 %1961, 7
  %1966 = and i32 %1965, 32752
  %1967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1966)  ; LegacyF16ToF32(value)
  %1968 = fsub fast float 1.000000e+00, %1946
  %1969 = call float @dx.op.binary.f32(i32 35, float %1968, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1970 = bitcast float %1946 to i32
  %1971 = sitofp i32 %1970 to float
  %1972 = fadd fast float %1971, 0xC1CFBF8940000000
  %1973 = fmul fast float %1967, %1972
  %1974 = fadd fast float %1973, 0x41CFBF8940000000
  %1975 = fptosi float %1974 to i32
  %1976 = bitcast i32 %1975 to float
  %1977 = bitcast float %1969 to i32
  %1978 = sitofp i32 %1977 to float
  %1979 = fadd fast float %1978, 0xC1CFBF8940000000
  %1980 = fmul fast float %1979, %1967
  %1981 = fadd fast float %1980, 0x41CFBF8940000000
  %1982 = fptosi float %1981 to i32
  %1983 = bitcast i32 %1982 to float
  %1984 = fmul fast float %1976, %1964
  %1985 = fmul fast float %1983, %1964
  %1986 = fsub fast float %1969, %1984
  %1987 = fadd fast float %1985, %1969
  %1988 = call float @dx.op.unary.f32(i32 7, float %1986)  ; Saturate(value)
  %1989 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1990 = fsub fast float %1958, %1988
  %1991 = fsub fast float %1989, %1988
  %1992 = bitcast float %1991 to i32
  %1993 = sub nsw i32 2129859010, %1992
  %1994 = bitcast i32 %1993 to float
  %1995 = fmul fast float %1994, %1990
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  br label %1997

; <label>:1997                                    ; preds = %1951, %1945
  %1998 = phi float [ %1996, %1951 ], [ %1946, %1945 ]
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = and i32 %2000, 128
  %2002 = icmp eq i32 %2001, 0
  br i1 %2002, label %2019, label %2003

; <label>:2003                                    ; preds = %1997
  %2004 = add i32 %21, 432
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = add i32 %2006, 0
  %2008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2009 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2008, %dx.types.Handle %53, float %1832, float %1833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = and i32 %2012, 524288
  %2014 = icmp ne i32 %2013, 0
  %2015 = fcmp fast ogt float %2010, 0x3FE0101020000000
  %2016 = select i1 %2015, float 1.000000e+00, float 0.000000e+00
  %2017 = select i1 %2014, float %2016, float %2010
  %2018 = fmul fast float %2017, %1998
  br label %2019

; <label>:2019                                    ; preds = %2003, %1997
  %2020 = phi float [ %2018, %2003 ], [ %1998, %1997 ]
  %2021 = fcmp fast ult float %2020, 0x3F70101020000000
  br i1 %2021, label %2564, label %2022

; <label>:2022                                    ; preds = %2019
  %2023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.i32 %2023, 0
  %2025 = and i32 %2024, 16
  %2026 = icmp eq i32 %2025, 0
  br i1 %2026, label %2225, label %2027

; <label>:2027                                    ; preds = %2022
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = add i32 %21, 384
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = add i32 %2032, 0
  %2034 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2033, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2035 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2034, %dx.types.Handle %52, float %1832, float %1833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2036 = extractvalue %dx.types.ResRet.f32 %2035, 0
  %2037 = extractvalue %dx.types.ResRet.f32 %2035, 1
  %2038 = extractvalue %dx.types.ResRet.f32 %2035, 2
  %2039 = extractvalue %dx.types.ResRet.f32 %2035, 3
  %2040 = and i32 %2029, 255
  %2041 = uitofp i32 %2040 to float
  %2042 = lshr i32 %2029, 8
  %2043 = and i32 %2042, 255
  %2044 = uitofp i32 %2043 to float
  %2045 = fmul fast float %2039, %2041
  %2046 = fadd fast float %2045, %2044
  %2047 = fmul fast float %2046, 0x3F70101000000000
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 512
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %2060, label %2052

; <label>:2052                                    ; preds = %2027
  %2053 = add i32 %21, 468
  %2054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2053, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.i32 %2054, 0
  %2056 = add i32 %2055, 0
  %2057 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2056, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2058 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2057, %dx.types.Handle %53, float %1832, float %1833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  br label %2060

; <label>:2060                                    ; preds = %2052, %2027
  %2061 = phi float [ %2059, %2052 ], [ 1.000000e+00, %2027 ]
  %2062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2063 = extractvalue %dx.types.ResRet.i32 %2062, 0
  %2064 = and i32 %2063, 33554432
  %2065 = icmp eq i32 %2064, 0
  br i1 %2065, label %2172, label %2066

; <label>:2066                                    ; preds = %2060
  %2067 = add i32 %21, 256
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2067, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = and i32 %2069, 65535
  %2071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2070)  ; LegacyF16ToF32(value)
  %2072 = lshr i32 %2069, 16
  %2073 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2072)  ; LegacyF16ToF32(value)
  %2074 = add i32 %21, 260
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 65535
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = lshr i32 %2080, 24
  %2082 = uitofp i32 %2081 to float
  %2083 = fmul fast float %2082, 0x3F70101020000000
  %2084 = and i32 %2080, 255
  %2085 = uitofp i32 %2084 to float
  %2086 = fmul fast float %2085, 0x3F70101020000000
  %2087 = lshr i32 %2080, 8
  %2088 = and i32 %2087, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3F70101020000000
  %2091 = lshr i32 %2080, 16
  %2092 = and i32 %2091, 255
  %2093 = uitofp i32 %2092 to float
  %2094 = fmul fast float %2093, 0x3F70101020000000
  %2095 = add i32 %21, 252
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2095, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = lshr i32 %2097, 24
  %2099 = uitofp i32 %2098 to float
  %2100 = fmul fast float %2099, 0x3F70101020000000
  %2101 = and i32 %2097, 255
  %2102 = uitofp i32 %2101 to float
  %2103 = fmul fast float %2102, 0x3F70101020000000
  %2104 = lshr i32 %2097, 8
  %2105 = and i32 %2104, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = lshr i32 %2097, 16
  %2109 = and i32 %2108, 255
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = bitcast float %2036 to i32
  %2113 = ashr i32 %2112, 1
  %2114 = sub nsw i32 1597463174, %2113
  %2115 = bitcast i32 %2114 to float
  %2116 = fmul fast float %2036, 5.000000e-01
  %2117 = fmul fast float %2115, %2115
  %2118 = fmul fast float %2117, %2116
  %2119 = fsub fast float 1.500000e+00, %2118
  %2120 = fmul fast float %2115, %2036
  %2121 = fmul fast float %2120, %2119
  %2122 = bitcast float %2037 to i32
  %2123 = ashr i32 %2122, 1
  %2124 = sub nsw i32 1597463174, %2123
  %2125 = bitcast i32 %2124 to float
  %2126 = fmul fast float %2037, 5.000000e-01
  %2127 = fmul fast float %2125, %2125
  %2128 = fmul fast float %2127, %2126
  %2129 = fsub fast float 1.500000e+00, %2128
  %2130 = fmul fast float %2125, %2037
  %2131 = fmul fast float %2130, %2129
  %2132 = bitcast float %2038 to i32
  %2133 = ashr i32 %2132, 1
  %2134 = sub nsw i32 1597463174, %2133
  %2135 = bitcast i32 %2134 to float
  %2136 = fmul fast float %2038, 5.000000e-01
  %2137 = fmul fast float %2135, %2135
  %2138 = fmul fast float %2137, %2136
  %2139 = fsub fast float 1.500000e+00, %2138
  %2140 = fmul fast float %2135, %2038
  %2141 = fmul fast float %2140, %2139
  %2142 = fsub fast float %2121, %2103
  %2143 = fsub fast float %2131, %2107
  %2144 = fsub fast float %2141, %2111
  %2145 = fmul fast float %2142, %2071
  %2146 = fmul fast float %2143, %2073
  %2147 = fmul fast float %2144, %2078
  %2148 = fadd fast float %2145, %2086
  %2149 = fadd fast float %2146, %2090
  %2150 = fadd fast float %2147, %2094
  %2151 = call float @dx.op.unary.f32(i32 7, float %2148)  ; Saturate(value)
  %2152 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2153 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2154 = fmul fast float %2151, %2151
  %2155 = fmul fast float %2152, %2152
  %2156 = fmul fast float %2153, %2153
  %2157 = fsub fast float %2154, %2036
  %2158 = fsub fast float %2155, %2037
  %2159 = fsub fast float %2156, %2038
  %2160 = fmul fast float %2157, %2061
  %2161 = fmul fast float %2158, %2061
  %2162 = fmul fast float %2159, %2061
  %2163 = fadd fast float %2160, %2036
  %2164 = fadd fast float %2161, %2037
  %2165 = fadd fast float %2162, %2038
  %2166 = fadd fast float %2083, %2047
  %2167 = fsub fast float %2166, %2100
  %2168 = call float @dx.op.unary.f32(i32 7, float %2167)  ; Saturate(value)
  %2169 = fsub fast float %2168, %2047
  %2170 = fmul fast float %2169, %2061
  %2171 = fadd fast float %2170, %2047
  br label %2225

; <label>:2172                                    ; preds = %2060
  %2173 = and i32 %2063, 134217728
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2209, label %2175

; <label>:2175                                    ; preds = %2172
  %2176 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %2177 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %2178 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %2179 = fadd fast float %2176, -5.000000e-01
  %2180 = fadd fast float %2177, -5.000000e-01
  %2181 = fadd fast float %2178, -5.000000e-01
  %2182 = fmul fast float %2179, %2061
  %2183 = fmul fast float %2180, %2061
  %2184 = fmul fast float %2181, %2061
  %2185 = fadd fast float %2182, 5.000000e-01
  %2186 = fadd fast float %2183, 5.000000e-01
  %2187 = fadd fast float %2184, 5.000000e-01
  %2188 = call float @dx.op.unary.f32(i32 24, float %2036)  ; Sqrt(value)
  %2189 = call float @dx.op.unary.f32(i32 24, float %2037)  ; Sqrt(value)
  %2190 = call float @dx.op.unary.f32(i32 24, float %2038)  ; Sqrt(value)
  %2191 = fmul fast float %2185, 2.000000e+00
  %2192 = fsub fast float 1.000000e+00, %2191
  %2193 = fmul fast float %2192, %2188
  %2194 = fadd fast float %2193, %2191
  %2195 = fmul fast float %2194, %2188
  %2196 = fmul fast float %2186, 2.000000e+00
  %2197 = fsub fast float 1.000000e+00, %2196
  %2198 = fmul fast float %2197, %2189
  %2199 = fadd fast float %2198, %2196
  %2200 = fmul fast float %2199, %2189
  %2201 = fmul fast float %2187, 2.000000e+00
  %2202 = fsub fast float 1.000000e+00, %2201
  %2203 = fmul fast float %2202, %2190
  %2204 = fadd fast float %2203, %2201
  %2205 = fmul fast float %2204, %2190
  %2206 = fmul fast float %2195, %2195
  %2207 = fmul fast float %2200, %2200
  %2208 = fmul fast float %2205, %2205
  br label %2225

; <label>:2209                                    ; preds = %2172
  %2210 = fmul fast float %262, %262
  %2211 = fmul fast float %266, %266
  %2212 = fmul fast float %270, %270
  %2213 = fadd fast float %2210, -1.000000e+00
  %2214 = fadd fast float %2211, -1.000000e+00
  %2215 = fadd fast float %2212, -1.000000e+00
  %2216 = fmul fast float %2061, %2213
  %2217 = fmul fast float %2061, %2214
  %2218 = fmul fast float %2061, %2215
  %2219 = fadd fast float %2216, 1.000000e+00
  %2220 = fadd fast float %2217, 1.000000e+00
  %2221 = fadd fast float %2218, 1.000000e+00
  %2222 = fmul fast float %2219, %2036
  %2223 = fmul fast float %2220, %2037
  %2224 = fmul fast float %2221, %2038
  br label %2225

; <label>:2225                                    ; preds = %2209, %2175, %2066, %2022
  %2226 = phi float [ %2171, %2066 ], [ %2047, %2175 ], [ %2047, %2209 ], [ 0x3FA23C0BE0000000, %2022 ]
  %2227 = phi float [ %2163, %2066 ], [ %2206, %2175 ], [ %2222, %2209 ], [ 1.000000e+00, %2022 ]
  %2228 = phi float [ %2164, %2066 ], [ %2207, %2175 ], [ %2223, %2209 ], [ 1.000000e+00, %2022 ]
  %2229 = phi float [ %2165, %2066 ], [ %2208, %2175 ], [ %2224, %2209 ], [ 1.000000e+00, %2022 ]
  %2230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.i32 %2230, 1
  %2232 = and i32 %2231, 1
  %2233 = icmp ne i32 %2232, 0
  %2234 = add i32 %21, 356
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2234, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 32
  %2238 = icmp ne i32 %2237, 0
  %2239 = and i1 %2233, %2238
  %2240 = select i1 %2239, float 1.000000e+00, float %2227
  %2241 = select i1 %2239, float 0x3FD3333340000000, float %2228
  %2242 = select i1 %2239, float 0x3FD3333340000000, float %2229
  %2243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2244 = extractvalue %dx.types.ResRet.i32 %2243, 0
  %2245 = and i32 %2244, 32
  %2246 = icmp eq i32 %2245, 0
  br i1 %2246, label %2319, label %2247

; <label>:2247                                    ; preds = %2225
  %2248 = add i32 %21, 124
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2248, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = add i32 %21, 400
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = add i32 %2253, 0
  %2255 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2254, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2256 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2255, %dx.types.Handle %52, float %1832, float %1833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2257 = extractvalue %dx.types.ResRet.f32 %2256, 0
  %2258 = extractvalue %dx.types.ResRet.f32 %2256, 1
  %2259 = extractvalue %dx.types.ResRet.f32 %2256, 2
  %2260 = extractvalue %dx.types.ResRet.f32 %2256, 3
  %2261 = and i32 %2250, 255
  %2262 = uitofp i32 %2261 to float
  %2263 = lshr i32 %2250, 8
  %2264 = and i32 %2263, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = lshr i32 %2250, 16
  %2267 = and i32 %2266, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101000000000
  %2270 = fmul fast float %2257, %2262
  %2271 = fadd fast float %2270, %2265
  %2272 = fmul fast float %2271, 0x3F70101000000000
  %2273 = fadd fast float %2258, -5.000000e-01
  %2274 = fadd fast float %2260, -5.000000e-01
  %2275 = fmul fast float %2273, %2269
  %2276 = fmul fast float %2274, %2269
  %2277 = fadd fast float %2275, 5.000000e-01
  %2278 = fadd fast float %2276, 5.000000e-01
  %2279 = fmul fast float %2277, 2.000000e+00
  %2280 = fadd fast float %2279, -1.000000e+00
  %2281 = fmul fast float %2278, 2.000000e+00
  %2282 = fadd fast float %2281, -1.000000e+00
  %2283 = fadd fast float %2280, %2282
  %2284 = fmul fast float %2283, 5.000000e-01
  %2285 = fsub fast float %2280, %2282
  %2286 = fmul fast float %2285, 5.000000e-01
  %2287 = call float @dx.op.unary.f32(i32 6, float %2284)  ; FAbs(value)
  %2288 = fsub fast float 1.000000e+00, %2287
  %2289 = call float @dx.op.unary.f32(i32 6, float %2286)  ; FAbs(value)
  %2290 = fsub fast float %2288, %2289
  %2291 = call float @dx.op.dot3.f32(i32 55, float %2284, float %2286, float %2290, float %2284, float %2286, float %2290)  ; Dot3(ax,ay,az,bx,by,bz)
  %2292 = call float @dx.op.unary.f32(i32 25, float %2291)  ; Rsqrt(value)
  %2293 = fmul fast float %2284, %2292
  %2294 = fmul fast float %2286, %2292
  %2295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2296 = extractvalue %dx.types.ResRet.i32 %2295, 0
  %2297 = and i32 %2296, 67108864
  %2298 = icmp eq i32 %2297, 0
  br i1 %2298, label %2315, label %2299

; <label>:2299                                    ; preds = %2247
  %2300 = add i32 %21, 312
  %2301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2302 = extractvalue %dx.types.ResRet.i32 %2301, 0
  %2303 = and i32 %2302, 65535
  %2304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2303)  ; LegacyF16ToF32(value)
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1742, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 65535
  %2308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2307)  ; LegacyF16ToF32(value)
  %2309 = lshr i32 %2302, 16
  %2310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2309)  ; LegacyF16ToF32(value)
  %2311 = fsub fast float %2272, %2310
  %2312 = fmul fast float %2311, %2304
  %2313 = fadd fast float %2312, %2308
  %2314 = call float @dx.op.unary.f32(i32 7, float %2313)  ; Saturate(value)
  br label %2315

; <label>:2315                                    ; preds = %2299, %2247
  %2316 = phi float [ %2314, %2299 ], [ %2272, %2247 ]
  %2317 = call float @dx.op.dot2.f32(i32 54, float %2293, float %2294, float %1736, float %1737)  ; Dot2(ax,ay,bx,by)
  %2318 = call float @dx.op.dot2.f32(i32 54, float %2293, float %2294, float %1738, float %1739)  ; Dot2(ax,ay,bx,by)
  br label %2319

; <label>:2319                                    ; preds = %2315, %2225
  %2320 = phi float [ %2316, %2315 ], [ 0x3FD6666660000000, %2225 ]
  %2321 = phi float [ %2317, %2315 ], [ 0.000000e+00, %2225 ]
  %2322 = phi float [ %2318, %2315 ], [ 0.000000e+00, %2225 ]
  %2323 = phi float [ %2259, %2315 ], [ 1.000000e+00, %2225 ]
  %2324 = add i32 %21, 192
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = lshr i32 %2326, 22
  %2328 = shl nuw nsw i32 %2327, 5
  %2329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2328)  ; LegacyF16ToF32(value)
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = and i32 %2331, 64
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2367, label %2334

; <label>:2334                                    ; preds = %2319
  %2335 = add i32 %21, 416
  %2336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2337 = extractvalue %dx.types.ResRet.i32 %2336, 0
  %2338 = add i32 %2337, 0
  %2339 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2338, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 131072
  %2343 = icmp eq i32 %2342, 0
  %2344 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2339, %dx.types.Handle %52, float %1832, float %1833, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2345 = extractvalue %dx.types.ResRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.ResRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.ResRet.f32 %2344, 2
  %2348 = fmul fast float %2345, %250
  %2349 = fmul fast float %2346, %253
  %2350 = fmul fast float %2347, %256
  br i1 %2343, label %2357, label %2351

; <label>:2351                                    ; preds = %2334
  %2352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2353 = extractvalue %dx.types.CBufRet.f32 %2352, 0
  %2354 = fmul fast float %2353, %2348
  %2355 = fmul fast float %2353, %2349
  %2356 = fmul fast float %2353, %2350
  br label %2357

; <label>:2357                                    ; preds = %2351, %2334
  %2358 = phi float [ %2354, %2351 ], [ %2348, %2334 ]
  %2359 = phi float [ %2355, %2351 ], [ %2349, %2334 ]
  %2360 = phi float [ %2356, %2351 ], [ %2350, %2334 ]
  %2361 = fmul fast float %2358, %2329
  %2362 = select i1 %160, float %2361, float %2358
  %2363 = call float @dx.op.dot3.f32(i32 55, float %2362, float %2359, float %2360, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2364 = select i1 %160, float 0.000000e+00, float %2358
  %2365 = select i1 %160, float %2363, float %2359
  %2366 = select i1 %160, float 0.000000e+00, float %2360
  br label %2367

; <label>:2367                                    ; preds = %2357, %2319
  %2368 = phi float [ %2364, %2357 ], [ 0.000000e+00, %2319 ]
  %2369 = phi float [ %2365, %2357 ], [ 0.000000e+00, %2319 ]
  %2370 = phi float [ %2366, %2357 ], [ 0.000000e+00, %2319 ]
  %2371 = add i32 %21, 128
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = lshr i32 %2373, 8
  %2377 = and i32 %2376, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = call float @dx.op.dot3.f32(i32 55, float %2240, float %2241, float %2242, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2380 = fmul fast float %2378, %2379
  %2381 = fadd fast float %2380, %2375
  %2382 = fmul fast float %2381, 0x3F70101020000000
  %2383 = call float @dx.op.unary.f32(i32 7, float %2382)  ; Saturate(value)
  br i1 %1724, label %2384, label %2392

; <label>:2384                                    ; preds = %2367
  %2385 = fsub fast float 1.000000e+00, %2020
  %2386 = fmul fast float %2385, %1713
  %2387 = fmul fast float %2385, %1714
  %2388 = fmul fast float %2385, %1715
  %2389 = fmul fast float %2385, %1716
  %2390 = fmul fast float %2385, %1717
  %2391 = fmul fast float %2385, %1718
  br label %2392

; <label>:2392                                    ; preds = %2384, %2367
  %2393 = phi float [ %2386, %2384 ], [ %1713, %2367 ]
  %2394 = phi float [ %2387, %2384 ], [ %1714, %2367 ]
  %2395 = phi float [ %2388, %2384 ], [ %1715, %2367 ]
  %2396 = phi float [ %2389, %2384 ], [ %1716, %2367 ]
  %2397 = phi float [ %2390, %2384 ], [ %1717, %2367 ]
  %2398 = phi float [ %2391, %2384 ], [ %1718, %2367 ]
  %2399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2400 = extractvalue %dx.types.ResRet.i32 %2399, 0
  %2401 = and i32 %2400, 3
  %2402 = icmp eq i32 %2401, 3
  br i1 %2402, label %2481, label %2403

; <label>:2403                                    ; preds = %2392
  %2404 = and i32 %2400, 16
  %2405 = icmp ne i32 %2404, 0
  %2406 = select i1 %2405, float %2020, float 0.000000e+00
  %2407 = icmp eq i32 %2401, 0
  br i1 %2407, label %2408, label %2436

; <label>:2408                                    ; preds = %2403
  %2409 = and i32 %2400, 64
  %2410 = icmp ne i32 %2409, 0
  %2411 = select i1 %2410, float %2020, float 0.000000e+00
  %2412 = fsub fast float %2240, %2393
  %2413 = fsub fast float %2241, %2394
  %2414 = fsub fast float %2242, %2395
  %2415 = fmul fast float %2406, %2412
  %2416 = fmul fast float %2406, %2413
  %2417 = fmul fast float %2406, %2414
  %2418 = fadd fast float %2415, %2393
  %2419 = fadd fast float %2416, %2394
  %2420 = fadd fast float %2417, %2395
  %2421 = fsub fast float %2226, %1719
  %2422 = fmul fast float %2406, %2421
  %2423 = fadd fast float %2422, %1719
  %2424 = fsub fast float %2368, %2396
  %2425 = fsub fast float %2369, %2397
  %2426 = fsub fast float %2370, %2398
  %2427 = fmul fast float %2411, %2424
  %2428 = fmul fast float %2411, %2425
  %2429 = fmul fast float %2411, %2426
  %2430 = fadd fast float %2427, %2396
  %2431 = fadd fast float %2428, %2397
  %2432 = fadd fast float %2429, %2398
  %2433 = fsub fast float %2383, %1722
  %2434 = fmul fast float %2406, %2433
  %2435 = fadd fast float %2434, %1722
  br label %2481

; <label>:2436                                    ; preds = %2403
  %2437 = icmp eq i32 %2401, 1
  br i1 %2437, label %2438, label %2451

; <label>:2438                                    ; preds = %2436
  %2439 = fadd fast float %2240, -1.000000e+00
  %2440 = fadd fast float %2241, -1.000000e+00
  %2441 = fadd fast float %2242, -1.000000e+00
  %2442 = fmul fast float %2406, %2439
  %2443 = fmul fast float %2406, %2440
  %2444 = fmul fast float %2406, %2441
  %2445 = fadd fast float %2442, 1.000000e+00
  %2446 = fadd fast float %2443, 1.000000e+00
  %2447 = fadd fast float %2444, 1.000000e+00
  %2448 = fmul fast float %2445, %2393
  %2449 = fmul fast float %2446, %2394
  %2450 = fmul fast float %2447, %2395
  br label %2481

; <label>:2451                                    ; preds = %2436
  %2452 = icmp eq i32 %2401, 2
  br i1 %2452, label %2453, label %2481

; <label>:2453                                    ; preds = %2451
  %2454 = call float @dx.op.unary.f32(i32 24, float %2240)  ; Sqrt(value)
  %2455 = call float @dx.op.unary.f32(i32 24, float %2241)  ; Sqrt(value)
  %2456 = call float @dx.op.unary.f32(i32 24, float %2242)  ; Sqrt(value)
  %2457 = fadd fast float %2454, -5.000000e-01
  %2458 = fadd fast float %2455, -5.000000e-01
  %2459 = fadd fast float %2456, -5.000000e-01
  %2460 = fmul fast float %2457, %2406
  %2461 = fmul fast float %2458, %2406
  %2462 = fmul fast float %2459, %2406
  %2463 = fadd fast float %2460, 5.000000e-01
  %2464 = fadd fast float %2461, 5.000000e-01
  %2465 = fadd fast float %2462, 5.000000e-01
  %2466 = fmul fast float %2463, 2.000000e+00
  %2467 = fsub fast float 1.000000e+00, %2466
  %2468 = fmul fast float %2467, %2393
  %2469 = fadd fast float %2468, %2466
  %2470 = fmul fast float %2469, %2393
  %2471 = fmul fast float %2464, 2.000000e+00
  %2472 = fsub fast float 1.000000e+00, %2471
  %2473 = fmul fast float %2472, %2394
  %2474 = fadd fast float %2473, %2471
  %2475 = fmul fast float %2474, %2394
  %2476 = fmul fast float %2465, 2.000000e+00
  %2477 = fsub fast float 1.000000e+00, %2476
  %2478 = fmul fast float %2477, %2395
  %2479 = fadd fast float %2478, %2476
  %2480 = fmul fast float %2479, %2395
  br label %2481

; <label>:2481                                    ; preds = %2453, %2451, %2438, %2408, %2392
  %2482 = phi float [ %2393, %2392 ], [ %2470, %2453 ], [ %2393, %2451 ], [ %2448, %2438 ], [ %2418, %2408 ]
  %2483 = phi float [ %2394, %2392 ], [ %2475, %2453 ], [ %2394, %2451 ], [ %2449, %2438 ], [ %2419, %2408 ]
  %2484 = phi float [ %2395, %2392 ], [ %2480, %2453 ], [ %2395, %2451 ], [ %2450, %2438 ], [ %2420, %2408 ]
  %2485 = phi float [ %2396, %2392 ], [ %2396, %2453 ], [ %2396, %2451 ], [ %2396, %2438 ], [ %2430, %2408 ]
  %2486 = phi float [ %2397, %2392 ], [ %2397, %2453 ], [ %2397, %2451 ], [ %2397, %2438 ], [ %2431, %2408 ]
  %2487 = phi float [ %2398, %2392 ], [ %2398, %2453 ], [ %2398, %2451 ], [ %2398, %2438 ], [ %2432, %2408 ]
  %2488 = phi float [ %1719, %2392 ], [ %1719, %2453 ], [ %1719, %2451 ], [ %1719, %2438 ], [ %2423, %2408 ]
  %2489 = phi float [ %1722, %2392 ], [ %1722, %2453 ], [ %1722, %2451 ], [ %1722, %2438 ], [ %2435, %2408 ]
  %2490 = and i32 %2400, 12
  %2491 = icmp eq i32 %2490, 12
  br i1 %2491, label %2564, label %2492

; <label>:2492                                    ; preds = %2481
  %2493 = and i32 %2400, 2097184
  %2494 = icmp eq i32 %2493, 2097184
  %2495 = select i1 %2494, float %2020, float 0.000000e+00
  %2496 = and i32 %2400, 4194336
  %2497 = icmp eq i32 %2496, 4194336
  %2498 = select i1 %2497, float %2020, float 0.000000e+00
  %2499 = and i32 %2400, 8388640
  %2500 = icmp eq i32 %2499, 8388640
  %2501 = select i1 %2500, float %2020, float 0.000000e+00
  %2502 = icmp eq i32 %2490, 0
  br i1 %2502, label %2503, label %2516

; <label>:2503                                    ; preds = %2492
  %2504 = fsub fast float %2321, %1711
  %2505 = fsub fast float %2322, %1712
  %2506 = fmul fast float %2495, %2504
  %2507 = fmul fast float %2495, %2505
  %2508 = fadd fast float %2506, %1711
  %2509 = fadd fast float %2507, %1712
  %2510 = fsub fast float %2323, %1721
  %2511 = fmul fast float %2498, %2510
  %2512 = fadd fast float %2511, %1721
  %2513 = fsub fast float %2320, %1720
  %2514 = fmul fast float %2501, %2513
  %2515 = fadd fast float %2514, %1720
  br label %2564

; <label>:2516                                    ; preds = %2492
  %2517 = icmp eq i32 %2490, 4
  br i1 %2517, label %2518, label %2550

; <label>:2518                                    ; preds = %2516
  %2519 = fmul fast float %2495, %2321
  %2520 = fmul fast float %2495, %2322
  %2521 = fadd fast float %2519, %1711
  %2522 = fadd fast float %2520, %1712
  %2523 = call float @dx.op.binary.f32(i32 36, float %1721, float %2323)  ; FMin(a,b)
  %2524 = fsub fast float %2523, %1721
  %2525 = fmul fast float %2524, %2498
  %2526 = fadd fast float %2525, %1721
  %2527 = fadd fast float %2320, %1720
  %2528 = fmul fast float %2527, 0x3FF337FAE0000000
  %2529 = fmul fast float %1720, %1720
  %2530 = fmul fast float %2320, %2320
  %2531 = fadd fast float %2530, %2529
  %2532 = fmul fast float %2531, 0x3FE5152B00000000
  %2533 = fmul fast float %1720, 0xBFCC1F85E0000000
  %2534 = fmul fast float %2533, %2320
  %2535 = fadd fast float %2534, 0xBFE1363700000000
  %2536 = fadd fast float %2535, %2528
  %2537 = fsub fast float %2536, %2532
  %2538 = fmul fast float %2527, 0x3FBA6F0D00000000
  %2539 = fmul fast float %2531, 0x3FD0432880000000
  %2540 = fmul fast float %1720, 0xBFEF110800000000
  %2541 = fmul fast float %2540, %2320
  %2542 = fadd fast float %2541, 1.000000e+00
  %2543 = fsub fast float %2542, %2538
  %2544 = fadd fast float %2543, %2539
  %2545 = fdiv fast float %2537, %2544
  %2546 = call float @dx.op.unary.f32(i32 7, float %2545)  ; Saturate(value)
  %2547 = fsub fast float %2546, %1720
  %2548 = fmul fast float %2547, %2501
  %2549 = fadd fast float %2548, %1720
  br label %2564

; <label>:2550                                    ; preds = %2516
  %2551 = icmp eq i32 %2490, 8
  br i1 %2551, label %2552, label %2564

; <label>:2552                                    ; preds = %2550
  %2553 = fmul fast float %2495, %2321
  %2554 = fmul fast float %2495, %2322
  %2555 = fadd fast float %2553, %1711
  %2556 = fadd fast float %2554, %1712
  %2557 = call float @dx.op.binary.f32(i32 36, float %1721, float %2323)  ; FMin(a,b)
  %2558 = fsub fast float %2557, %1721
  %2559 = fmul fast float %2558, %2498
  %2560 = fadd fast float %2559, %1721
  %2561 = fsub fast float %2320, %1720
  %2562 = fmul fast float %2501, %2561
  %2563 = fadd fast float %2562, %1720
  br label %2564

; <label>:2564                                    ; preds = %2552, %2550, %2518, %2503, %2481, %2019, %1723, %1710
  %2565 = phi float [ %1711, %2481 ], [ %1711, %2019 ], [ %1711, %1710 ], [ %2555, %2552 ], [ %1711, %2550 ], [ %2521, %2518 ], [ %2508, %2503 ], [ %1711, %1723 ]
  %2566 = phi float [ %1712, %2481 ], [ %1712, %2019 ], [ %1712, %1710 ], [ %2556, %2552 ], [ %1712, %2550 ], [ %2522, %2518 ], [ %2509, %2503 ], [ %1712, %1723 ]
  %2567 = phi float [ %2482, %2481 ], [ %1713, %2019 ], [ %1713, %1710 ], [ %2482, %2552 ], [ %2482, %2550 ], [ %2482, %2518 ], [ %2482, %2503 ], [ %1713, %1723 ]
  %2568 = phi float [ %2483, %2481 ], [ %1714, %2019 ], [ %1714, %1710 ], [ %2483, %2552 ], [ %2483, %2550 ], [ %2483, %2518 ], [ %2483, %2503 ], [ %1714, %1723 ]
  %2569 = phi float [ %2484, %2481 ], [ %1715, %2019 ], [ %1715, %1710 ], [ %2484, %2552 ], [ %2484, %2550 ], [ %2484, %2518 ], [ %2484, %2503 ], [ %1715, %1723 ]
  %2570 = phi float [ %2485, %2481 ], [ %1716, %2019 ], [ %1716, %1710 ], [ %2485, %2552 ], [ %2485, %2550 ], [ %2485, %2518 ], [ %2485, %2503 ], [ %1716, %1723 ]
  %2571 = phi float [ %2486, %2481 ], [ %1717, %2019 ], [ %1717, %1710 ], [ %2486, %2552 ], [ %2486, %2550 ], [ %2486, %2518 ], [ %2486, %2503 ], [ %1717, %1723 ]
  %2572 = phi float [ %2487, %2481 ], [ %1718, %2019 ], [ %1718, %1710 ], [ %2487, %2552 ], [ %2487, %2550 ], [ %2487, %2518 ], [ %2487, %2503 ], [ %1718, %1723 ]
  %2573 = phi float [ %2488, %2481 ], [ %1719, %2019 ], [ %1719, %1710 ], [ %2488, %2552 ], [ %2488, %2550 ], [ %2488, %2518 ], [ %2488, %2503 ], [ %1719, %1723 ]
  %2574 = phi float [ %1720, %2481 ], [ %1720, %2019 ], [ %1720, %1710 ], [ %2563, %2552 ], [ %1720, %2550 ], [ %2549, %2518 ], [ %2515, %2503 ], [ %1720, %1723 ]
  %2575 = phi float [ %1721, %2481 ], [ %1721, %2019 ], [ %1721, %1710 ], [ %2560, %2552 ], [ %1721, %2550 ], [ %2526, %2518 ], [ %2512, %2503 ], [ %1721, %1723 ]
  %2576 = phi float [ %2489, %2481 ], [ %1722, %2019 ], [ %1722, %1710 ], [ %2489, %2552 ], [ %2489, %2550 ], [ %2489, %2518 ], [ %2489, %2503 ], [ %1722, %1723 ]
  br i1 %337, label %3418, label %2577

; <label>:2577                                    ; preds = %2564
  %2578 = icmp ult i32 %388, 4
  %2579 = add i32 %21, 72
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = add i32 %21, 76
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = or i32 %2584, %2581
  %2586 = icmp eq i32 %2585, 0
  br i1 %2586, label %3418, label %2587

; <label>:2587                                    ; preds = %2577
  %2588 = and i32 %2581, 262144
  %2589 = icmp ne i32 %2588, 0
  %2590 = select i1 %2589, float %24, float 1.000000e+00
  %2591 = select i1 %2589, float %25, float 0.000000e+00
  %2592 = select i1 %2589, float %26, float 0.000000e+00
  %2593 = select i1 %2589, float %27, float 1.000000e+00
  %2594 = select i1 %2589, float %28, float %44
  %2595 = select i1 %2589, float %29, float %45
  %2596 = add i32 %21, 332
  %2597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %2598 = extractvalue %dx.types.ResRet.i32 %2597, 0
  %2599 = lshr i32 %2598, 16
  %2600 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2599)  ; LegacyF16ToF32(value)
  %2601 = fmul fast float %2600, 0x3F50624DE0000000
  %2602 = add i32 %21, 136
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2602, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = lshr i32 %2604, 16
  %2606 = and i32 %2605, 255
  %2607 = lshr i32 %2604, 24
  %2608 = add i32 %21, 340
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2608, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = and i32 %2610, 65535
  %2612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2611)  ; LegacyF16ToF32(value)
  %2613 = lshr i32 %2610, 16
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = add i32 %21, 80
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = lshr i32 %2617, 22
  %2619 = shl nuw nsw i32 %2618, 5
  %2620 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2619)  ; LegacyF16ToF32(value)
  %2621 = shl i32 %2617, 4
  %2622 = and i32 %2621, 32752
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = lshr i32 %2617, 7
  %2625 = and i32 %2624, 32752
  %2626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2625)  ; LegacyF16ToF32(value)
  %2627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2628 = extractvalue %dx.types.CBufRet.f32 %2627, 3
  %2629 = fmul fast float %2628, 1.000000e+03
  %2630 = fmul fast float %327, %2629
  %2631 = call float @dx.op.unary.f32(i32 22, float %2630)  ; Frc(value)
  %2632 = fadd fast float %2631, %317
  %2633 = fmul fast float %328, %2629
  %2634 = call float @dx.op.unary.f32(i32 22, float %2633)  ; Frc(value)
  %2635 = fadd fast float %2634, %319
  %2636 = fmul fast float %2601, %2629
  %2637 = call float @dx.op.unary.f32(i32 22, float %2636)  ; Frc(value)
  %2638 = fmul fast float %2637, 0x401921FB60000000
  %2639 = fadd fast float %2638, %2620
  %2640 = call float @dx.op.unary.f32(i32 13, float %2639)  ; Sin(value)
  %2641 = call float @dx.op.unary.f32(i32 12, float %2639)  ; Cos(value)
  %2642 = fsub fast float -0.000000e+00, %2640
  %2643 = fadd fast float %2594, -5.000000e-01
  %2644 = fadd fast float %2595, -5.000000e-01
  %2645 = fmul fast float %2612, %2643
  %2646 = fmul fast float %2614, %2644
  %2647 = fadd fast float %2645, 5.000000e-01
  %2648 = fadd fast float %2646, 5.000000e-01
  %2649 = fmul fast float %2623, %2647
  %2650 = fmul fast float %2626, %2648
  %2651 = fmul fast float %2641, %2649
  %2652 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %2650, float %2651)  ; FMad(a,b,c)
  %2653 = fmul fast float %2640, %2649
  %2654 = call float @dx.op.tertiary.f32(i32 46, float %2641, float %2650, float %2653)  ; FMad(a,b,c)
  %2655 = fadd fast float %2632, %2652
  %2656 = fadd fast float %2635, %2654
  %2657 = icmp ugt i32 %2606, 1
  %2658 = icmp ugt i32 %2604, 33554431
  %2659 = or i1 %2658, %2657
  br i1 %2659, label %2660, label %2685

; <label>:2660                                    ; preds = %2587
  %2661 = add i32 %21, 276
  %2662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2661, i32 undef)  ; BufferLoad(srv,index,wot)
  %2663 = extractvalue %dx.types.ResRet.i32 %2662, 0
  %2664 = lshr i32 %2663, 16
  %2665 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2664)  ; LegacyF16ToF32(value)
  %2666 = fmul fast float %2628, %2665
  %2667 = call float @dx.op.unary.f32(i32 22, float %2666)  ; Frc(value)
  %2668 = mul nuw nsw i32 %2606, %2607
  %2669 = uitofp i32 %2668 to float
  %2670 = fmul fast float %2667, %2669
  %2671 = call float @dx.op.unary.f32(i32 27, float %2670)  ; Round_ni(value)
  %2672 = fptoui float %2671 to i32
  %2673 = urem i32 %2672, %2606
  %2674 = udiv i32 %2672, %2607
  %2675 = call float @dx.op.unary.f32(i32 22, float %2655)  ; Frc(value)
  %2676 = call float @dx.op.unary.f32(i32 22, float %2656)  ; Frc(value)
  %2677 = uitofp i32 %2673 to float
  %2678 = uitofp i32 %2674 to float
  %2679 = fadd fast float %2675, %2677
  %2680 = fadd fast float %2676, %2678
  %2681 = uitofp i32 %2606 to float
  %2682 = uitofp i32 %2607 to float
  %2683 = fdiv fast float %2679, %2681
  %2684 = fdiv fast float %2680, %2682
  br label %2685

; <label>:2685                                    ; preds = %2660, %2587
  %2686 = phi float [ %2683, %2660 ], [ %2655, %2587 ]
  %2687 = phi float [ %2684, %2660 ], [ %2656, %2587 ]
  %2688 = and i32 %2581, 16777216
  %2689 = icmp eq i32 %2688, 0
  br i1 %2689, label %2799, label %2690

; <label>:2690                                    ; preds = %2685
  %2691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2692 = extractvalue %dx.types.CBufRet.f32 %2691, 0
  %2693 = extractvalue %dx.types.CBufRet.f32 %2691, 1
  %2694 = extractvalue %dx.types.CBufRet.f32 %2691, 2
  %2695 = fadd fast float %2692, %119
  %2696 = fadd fast float %2693, %120
  %2697 = fadd fast float %2694, %121
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2700 = call float @dx.op.unary.f32(i32 7, float %2699)  ; Saturate(value)
  %2701 = icmp eq i32 %22, 65535
  br i1 %2701, label %2796, label %2702

; <label>:2702                                    ; preds = %2690
  %2703 = lshr i32 %22, 1
  %2704 = shl i32 %2703, 2
  %2705 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2704, i32 undef)  ; BufferLoad(srv,index,wot)
  %2706 = extractvalue %dx.types.ResRet.i32 %2705, 0
  %2707 = and i32 %22, 1
  %2708 = icmp ne i32 %2707, 0
  %2709 = lshr i32 %2706, 16
  %2710 = and i32 %2706, 65535
  %2711 = select i1 %2708, i32 %2709, i32 %2710
  %2712 = icmp eq i32 %2711, 65535
  br i1 %2712, label %2792, label %2713

; <label>:2713                                    ; preds = %2702
  %2714 = mul nuw nsw i32 %2711, 40
  %2715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2714, i32 undef)  ; BufferLoad(srv,index,wot)
  %2716 = extractvalue %dx.types.ResRet.f32 %2715, 0
  %2717 = extractvalue %dx.types.ResRet.f32 %2715, 1
  %2718 = extractvalue %dx.types.ResRet.f32 %2715, 2
  %2719 = add nuw nsw i32 %2714, 12
  %2720 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.f32 %2720, 0
  %2722 = extractvalue %dx.types.ResRet.f32 %2720, 1
  %2723 = extractvalue %dx.types.ResRet.f32 %2720, 2
  %2724 = add nuw nsw i32 %2714, 24
  %2725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2724, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 0
  %2727 = extractvalue %dx.types.ResRet.f32 %2725, 1
  %2728 = extractvalue %dx.types.ResRet.f32 %2725, 2
  %2729 = add nuw nsw i32 %2714, 36
  %2730 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.f32 %2730, 0
  %2732 = fsub fast float %2695, %2716
  %2733 = fsub fast float %2696, %2717
  %2734 = fsub fast float %2697, %2718
  %2735 = fmul fast float %2731, %2732
  %2736 = fmul fast float %2731, %2733
  %2737 = fmul fast float %2731, %2734
  %2738 = call float @dx.op.unary.f32(i32 27, float %2735)  ; Round_ni(value)
  %2739 = call float @dx.op.unary.f32(i32 27, float %2736)  ; Round_ni(value)
  %2740 = call float @dx.op.unary.f32(i32 27, float %2737)  ; Round_ni(value)
  %2741 = fadd fast float %2738, 5.000000e-01
  %2742 = fadd fast float %2739, 5.000000e-01
  %2743 = fadd fast float %2740, 5.000000e-01
  %2744 = fmul fast float %2741, %2721
  %2745 = fmul fast float %2742, %2722
  %2746 = fmul fast float %2743, %2723
  %2747 = shl i32 %22, 2
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = add i32 %2749, 0
  %2751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2750, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2752 = call float @dx.op.unary.f32(i32 22, float %2744)  ; Frc(value)
  %2753 = call float @dx.op.unary.f32(i32 22, float %2745)  ; Frc(value)
  %2754 = call float @dx.op.unary.f32(i32 22, float %2746)  ; Frc(value)
  %2755 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2751, %dx.types.Handle %18, float %2752, float %2753, float %2754, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = fmul fast float %2756, 1.023000e+03
  %2760 = fmul fast float %2757, 1.023000e+03
  %2761 = fmul fast float %2758, 1.023000e+03
  %2762 = fadd fast float %2759, 5.000000e-01
  %2763 = fadd fast float %2760, 5.000000e-01
  %2764 = fadd fast float %2761, 5.000000e-01
  %2765 = call float @dx.op.unary.f32(i32 27, float %2762)  ; Round_ni(value)
  %2766 = call float @dx.op.unary.f32(i32 27, float %2763)  ; Round_ni(value)
  %2767 = call float @dx.op.unary.f32(i32 27, float %2764)  ; Round_ni(value)
  %2768 = fsub fast float %2735, %2738
  %2769 = fsub fast float %2736, %2739
  %2770 = fsub fast float %2737, %2740
  %2771 = fmul fast float %2768, 7.500000e-01
  %2772 = fmul fast float %2769, 7.500000e-01
  %2773 = fmul fast float %2770, 7.500000e-01
  %2774 = fadd fast float %2738, 1.250000e-01
  %2775 = fadd fast float %2774, %2771
  %2776 = fadd fast float %2775, %2765
  %2777 = fadd fast float %2739, 1.250000e-01
  %2778 = fadd fast float %2777, %2772
  %2779 = fadd fast float %2778, %2766
  %2780 = fadd fast float %2740, 1.250000e-01
  %2781 = fadd fast float %2780, %2773
  %2782 = fadd fast float %2781, %2767
  %2783 = fmul fast float %2776, %2726
  %2784 = fmul fast float %2779, %2727
  %2785 = fmul fast float %2782, %2728
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = add i32 %2787, 0
  %2789 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2788, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2790 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2789, %dx.types.Handle %16, float %2783, float %2784, float %2785, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2791 = extractvalue %dx.types.ResRet.f32 %2790, 0
  br label %2792

; <label>:2792                                    ; preds = %2713, %2702
  %2793 = phi float [ %2791, %2713 ], [ -1.000000e+00, %2702 ]
  %2794 = fadd fast float %2793, %2700
  %2795 = call float @dx.op.unary.f32(i32 7, float %2794)  ; Saturate(value)
  br label %2796

; <label>:2796                                    ; preds = %2792, %2690
  %2797 = phi float [ %2795, %2792 ], [ %2700, %2690 ]
  %2798 = fmul fast float %2797, %383
  br label %2799

; <label>:2799                                    ; preds = %2796, %2685
  %2800 = phi float [ %2798, %2796 ], [ %383, %2685 ]
  %2801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2802 = extractvalue %dx.types.ResRet.i32 %2801, 0
  %2803 = and i32 %2802, 256
  %2804 = icmp eq i32 %2803, 0
  br i1 %2804, label %2851, label %2805

; <label>:2805                                    ; preds = %2799
  %2806 = add i32 %21, 452
  %2807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2806, i32 undef)  ; BufferLoad(srv,index,wot)
  %2808 = extractvalue %dx.types.ResRet.i32 %2807, 0
  %2809 = add i32 %2808, 0
  %2810 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2809, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2811 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2810, %dx.types.Handle %53, float %2686, float %2687, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2812 = extractvalue %dx.types.ResRet.f32 %2811, 0
  %2813 = add i32 %21, 148
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = shl i32 %2815, 4
  %2817 = and i32 %2816, 32752
  %2818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2817)  ; LegacyF16ToF32(value)
  %2819 = lshr i32 %2815, 7
  %2820 = and i32 %2819, 32752
  %2821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2820)  ; LegacyF16ToF32(value)
  %2822 = fsub fast float 1.000000e+00, %2800
  %2823 = call float @dx.op.binary.f32(i32 35, float %2822, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2824 = bitcast float %2800 to i32
  %2825 = sitofp i32 %2824 to float
  %2826 = fadd fast float %2825, 0xC1CFBF8940000000
  %2827 = fmul fast float %2821, %2826
  %2828 = fadd fast float %2827, 0x41CFBF8940000000
  %2829 = fptosi float %2828 to i32
  %2830 = bitcast i32 %2829 to float
  %2831 = bitcast float %2823 to i32
  %2832 = sitofp i32 %2831 to float
  %2833 = fadd fast float %2832, 0xC1CFBF8940000000
  %2834 = fmul fast float %2833, %2821
  %2835 = fadd fast float %2834, 0x41CFBF8940000000
  %2836 = fptosi float %2835 to i32
  %2837 = bitcast i32 %2836 to float
  %2838 = fmul fast float %2830, %2818
  %2839 = fmul fast float %2837, %2818
  %2840 = fsub fast float %2823, %2838
  %2841 = fadd fast float %2839, %2823
  %2842 = call float @dx.op.unary.f32(i32 7, float %2840)  ; Saturate(value)
  %2843 = call float @dx.op.unary.f32(i32 7, float %2841)  ; Saturate(value)
  %2844 = fsub fast float %2812, %2842
  %2845 = fsub fast float %2843, %2842
  %2846 = bitcast float %2845 to i32
  %2847 = sub nsw i32 2129859010, %2846
  %2848 = bitcast i32 %2847 to float
  %2849 = fmul fast float %2848, %2844
  %2850 = call float @dx.op.unary.f32(i32 7, float %2849)  ; Saturate(value)
  br label %2851

; <label>:2851                                    ; preds = %2805, %2799
  %2852 = phi float [ %2850, %2805 ], [ %2800, %2799 ]
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = and i32 %2854, 128
  %2856 = icmp eq i32 %2855, 0
  br i1 %2856, label %2873, label %2857

; <label>:2857                                    ; preds = %2851
  %2858 = add i32 %21, 436
  %2859 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2858, i32 undef)  ; BufferLoad(srv,index,wot)
  %2860 = extractvalue %dx.types.ResRet.i32 %2859, 0
  %2861 = add i32 %2860, 0
  %2862 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2861, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2863 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2862, %dx.types.Handle %53, float %2686, float %2687, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2864 = extractvalue %dx.types.ResRet.f32 %2863, 0
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = and i32 %2866, 524288
  %2868 = icmp ne i32 %2867, 0
  %2869 = fcmp fast ogt float %2864, 0x3FE0101020000000
  %2870 = select i1 %2869, float 1.000000e+00, float 0.000000e+00
  %2871 = select i1 %2868, float %2870, float %2864
  %2872 = fmul fast float %2871, %2852
  br label %2873

; <label>:2873                                    ; preds = %2857, %2851
  %2874 = phi float [ %2872, %2857 ], [ %2852, %2851 ]
  %2875 = fcmp fast ult float %2874, 0x3F70101020000000
  br i1 %2875, label %3418, label %2876

; <label>:2876                                    ; preds = %2873
  %2877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.i32 %2877, 0
  %2879 = and i32 %2878, 16
  %2880 = icmp eq i32 %2879, 0
  br i1 %2880, label %3079, label %2881

; <label>:2881                                    ; preds = %2876
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2602, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = add i32 %21, 388
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2884, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = add i32 %2886, 0
  %2888 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2887, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2889 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2888, %dx.types.Handle %52, float %2686, float %2687, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2890 = extractvalue %dx.types.ResRet.f32 %2889, 0
  %2891 = extractvalue %dx.types.ResRet.f32 %2889, 1
  %2892 = extractvalue %dx.types.ResRet.f32 %2889, 2
  %2893 = extractvalue %dx.types.ResRet.f32 %2889, 3
  %2894 = and i32 %2883, 255
  %2895 = uitofp i32 %2894 to float
  %2896 = lshr i32 %2883, 8
  %2897 = and i32 %2896, 255
  %2898 = uitofp i32 %2897 to float
  %2899 = fmul fast float %2893, %2895
  %2900 = fadd fast float %2899, %2898
  %2901 = fmul fast float %2900, 0x3F70101000000000
  %2902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2903 = extractvalue %dx.types.ResRet.i32 %2902, 0
  %2904 = and i32 %2903, 512
  %2905 = icmp eq i32 %2904, 0
  br i1 %2905, label %2914, label %2906

; <label>:2906                                    ; preds = %2881
  %2907 = add i32 %21, 472
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = add i32 %2909, 0
  %2911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2910, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2912 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2911, %dx.types.Handle %53, float %2686, float %2687, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2913 = extractvalue %dx.types.ResRet.f32 %2912, 0
  br label %2914

; <label>:2914                                    ; preds = %2906, %2881
  %2915 = phi float [ %2913, %2906 ], [ 1.000000e+00, %2881 ]
  %2916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2917 = extractvalue %dx.types.ResRet.i32 %2916, 0
  %2918 = and i32 %2917, 33554432
  %2919 = icmp eq i32 %2918, 0
  br i1 %2919, label %3026, label %2920

; <label>:2920                                    ; preds = %2914
  %2921 = add i32 %21, 272
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = and i32 %2923, 65535
  %2925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2924)  ; LegacyF16ToF32(value)
  %2926 = lshr i32 %2923, 16
  %2927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2926)  ; LegacyF16ToF32(value)
  %2928 = add i32 %21, 276
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 65535
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = lshr i32 %2934, 24
  %2936 = uitofp i32 %2935 to float
  %2937 = fmul fast float %2936, 0x3F70101020000000
  %2938 = and i32 %2934, 255
  %2939 = uitofp i32 %2938 to float
  %2940 = fmul fast float %2939, 0x3F70101020000000
  %2941 = lshr i32 %2934, 8
  %2942 = and i32 %2941, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = fmul fast float %2943, 0x3F70101020000000
  %2945 = lshr i32 %2934, 16
  %2946 = and i32 %2945, 255
  %2947 = uitofp i32 %2946 to float
  %2948 = fmul fast float %2947, 0x3F70101020000000
  %2949 = add i32 %21, 268
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = lshr i32 %2951, 24
  %2953 = uitofp i32 %2952 to float
  %2954 = fmul fast float %2953, 0x3F70101020000000
  %2955 = and i32 %2951, 255
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2956, 0x3F70101020000000
  %2958 = lshr i32 %2951, 8
  %2959 = and i32 %2958, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101020000000
  %2962 = lshr i32 %2951, 16
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = bitcast float %2890 to i32
  %2967 = ashr i32 %2966, 1
  %2968 = sub nsw i32 1597463174, %2967
  %2969 = bitcast i32 %2968 to float
  %2970 = fmul fast float %2890, 5.000000e-01
  %2971 = fmul fast float %2969, %2969
  %2972 = fmul fast float %2971, %2970
  %2973 = fsub fast float 1.500000e+00, %2972
  %2974 = fmul fast float %2969, %2890
  %2975 = fmul fast float %2974, %2973
  %2976 = bitcast float %2891 to i32
  %2977 = ashr i32 %2976, 1
  %2978 = sub nsw i32 1597463174, %2977
  %2979 = bitcast i32 %2978 to float
  %2980 = fmul fast float %2891, 5.000000e-01
  %2981 = fmul fast float %2979, %2979
  %2982 = fmul fast float %2981, %2980
  %2983 = fsub fast float 1.500000e+00, %2982
  %2984 = fmul fast float %2979, %2891
  %2985 = fmul fast float %2984, %2983
  %2986 = bitcast float %2892 to i32
  %2987 = ashr i32 %2986, 1
  %2988 = sub nsw i32 1597463174, %2987
  %2989 = bitcast i32 %2988 to float
  %2990 = fmul fast float %2892, 5.000000e-01
  %2991 = fmul fast float %2989, %2989
  %2992 = fmul fast float %2991, %2990
  %2993 = fsub fast float 1.500000e+00, %2992
  %2994 = fmul fast float %2989, %2892
  %2995 = fmul fast float %2994, %2993
  %2996 = fsub fast float %2975, %2957
  %2997 = fsub fast float %2985, %2961
  %2998 = fsub fast float %2995, %2965
  %2999 = fmul fast float %2996, %2925
  %3000 = fmul fast float %2997, %2927
  %3001 = fmul fast float %2998, %2932
  %3002 = fadd fast float %2999, %2940
  %3003 = fadd fast float %3000, %2944
  %3004 = fadd fast float %3001, %2948
  %3005 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  %3006 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3007 = call float @dx.op.unary.f32(i32 7, float %3004)  ; Saturate(value)
  %3008 = fmul fast float %3005, %3005
  %3009 = fmul fast float %3006, %3006
  %3010 = fmul fast float %3007, %3007
  %3011 = fsub fast float %3008, %2890
  %3012 = fsub fast float %3009, %2891
  %3013 = fsub fast float %3010, %2892
  %3014 = fmul fast float %3011, %2915
  %3015 = fmul fast float %3012, %2915
  %3016 = fmul fast float %3013, %2915
  %3017 = fadd fast float %3014, %2890
  %3018 = fadd fast float %3015, %2891
  %3019 = fadd fast float %3016, %2892
  %3020 = fadd fast float %2937, %2901
  %3021 = fsub fast float %3020, %2954
  %3022 = call float @dx.op.unary.f32(i32 7, float %3021)  ; Saturate(value)
  %3023 = fsub fast float %3022, %2901
  %3024 = fmul fast float %3023, %2915
  %3025 = fadd fast float %3024, %2901
  br label %3079

; <label>:3026                                    ; preds = %2914
  %3027 = and i32 %2917, 134217728
  %3028 = icmp eq i32 %3027, 0
  br i1 %3028, label %3063, label %3029

; <label>:3029                                    ; preds = %3026
  %3030 = call float @dx.op.unary.f32(i32 24, float %304)  ; Sqrt(value)
  %3031 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %3032 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %3033 = fadd fast float %3030, -5.000000e-01
  %3034 = fadd fast float %3031, -5.000000e-01
  %3035 = fadd fast float %3032, -5.000000e-01
  %3036 = fmul fast float %3033, %2915
  %3037 = fmul fast float %3034, %2915
  %3038 = fmul fast float %3035, %2915
  %3039 = fadd fast float %3036, 5.000000e-01
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fadd fast float %3038, 5.000000e-01
  %3042 = call float @dx.op.unary.f32(i32 24, float %2890)  ; Sqrt(value)
  %3043 = call float @dx.op.unary.f32(i32 24, float %2891)  ; Sqrt(value)
  %3044 = call float @dx.op.unary.f32(i32 24, float %2892)  ; Sqrt(value)
  %3045 = fmul fast float %3039, 2.000000e+00
  %3046 = fsub fast float 1.000000e+00, %3045
  %3047 = fmul fast float %3046, %3042
  %3048 = fadd fast float %3047, %3045
  %3049 = fmul fast float %3048, %3042
  %3050 = fmul fast float %3040, 2.000000e+00
  %3051 = fsub fast float 1.000000e+00, %3050
  %3052 = fmul fast float %3051, %3043
  %3053 = fadd fast float %3052, %3050
  %3054 = fmul fast float %3053, %3043
  %3055 = fmul fast float %3041, 2.000000e+00
  %3056 = fsub fast float 1.000000e+00, %3055
  %3057 = fmul fast float %3056, %3044
  %3058 = fadd fast float %3057, %3055
  %3059 = fmul fast float %3058, %3044
  %3060 = fmul fast float %3049, %3049
  %3061 = fmul fast float %3054, %3054
  %3062 = fmul fast float %3059, %3059
  br label %3079

; <label>:3063                                    ; preds = %3026
  %3064 = fmul fast float %304, %304
  %3065 = fmul fast float %308, %308
  %3066 = fmul fast float %312, %312
  %3067 = fadd fast float %3064, -1.000000e+00
  %3068 = fadd fast float %3065, -1.000000e+00
  %3069 = fadd fast float %3066, -1.000000e+00
  %3070 = fmul fast float %2915, %3067
  %3071 = fmul fast float %2915, %3068
  %3072 = fmul fast float %2915, %3069
  %3073 = fadd fast float %3070, 1.000000e+00
  %3074 = fadd fast float %3071, 1.000000e+00
  %3075 = fadd fast float %3072, 1.000000e+00
  %3076 = fmul fast float %3073, %2890
  %3077 = fmul fast float %3074, %2891
  %3078 = fmul fast float %3075, %2892
  br label %3079

; <label>:3079                                    ; preds = %3063, %3029, %2920, %2876
  %3080 = phi float [ %3025, %2920 ], [ %2901, %3029 ], [ %2901, %3063 ], [ 0x3FA23C0BE0000000, %2876 ]
  %3081 = phi float [ %3017, %2920 ], [ %3060, %3029 ], [ %3076, %3063 ], [ 1.000000e+00, %2876 ]
  %3082 = phi float [ %3018, %2920 ], [ %3061, %3029 ], [ %3077, %3063 ], [ 1.000000e+00, %2876 ]
  %3083 = phi float [ %3019, %2920 ], [ %3062, %3029 ], [ %3078, %3063 ], [ 1.000000e+00, %2876 ]
  %3084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3085 = extractvalue %dx.types.CBufRet.i32 %3084, 1
  %3086 = and i32 %3085, 1
  %3087 = icmp ne i32 %3086, 0
  %3088 = add i32 %21, 356
  %3089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3088, i32 undef)  ; BufferLoad(srv,index,wot)
  %3090 = extractvalue %dx.types.ResRet.i32 %3089, 0
  %3091 = and i32 %3090, 32
  %3092 = icmp ne i32 %3091, 0
  %3093 = and i1 %3087, %3092
  %3094 = select i1 %3093, float 1.000000e+00, float %3081
  %3095 = select i1 %3093, float 0x3FD3333340000000, float %3082
  %3096 = select i1 %3093, float 0x3FD3333340000000, float %3083
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = and i32 %3098, 32
  %3100 = icmp eq i32 %3099, 0
  br i1 %3100, label %3173, label %3101

; <label>:3101                                    ; preds = %3079
  %3102 = add i32 %21, 140
  %3103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3102, i32 undef)  ; BufferLoad(srv,index,wot)
  %3104 = extractvalue %dx.types.ResRet.i32 %3103, 0
  %3105 = add i32 %21, 404
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = add i32 %3107, 0
  %3109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3109, %dx.types.Handle %52, float %2686, float %2687, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3111 = extractvalue %dx.types.ResRet.f32 %3110, 0
  %3112 = extractvalue %dx.types.ResRet.f32 %3110, 1
  %3113 = extractvalue %dx.types.ResRet.f32 %3110, 2
  %3114 = extractvalue %dx.types.ResRet.f32 %3110, 3
  %3115 = and i32 %3104, 255
  %3116 = uitofp i32 %3115 to float
  %3117 = lshr i32 %3104, 8
  %3118 = and i32 %3117, 255
  %3119 = uitofp i32 %3118 to float
  %3120 = lshr i32 %3104, 16
  %3121 = and i32 %3120, 255
  %3122 = uitofp i32 %3121 to float
  %3123 = fmul fast float %3122, 0x3F70101000000000
  %3124 = fmul fast float %3111, %3116
  %3125 = fadd fast float %3124, %3119
  %3126 = fmul fast float %3125, 0x3F70101000000000
  %3127 = fadd fast float %3112, -5.000000e-01
  %3128 = fadd fast float %3114, -5.000000e-01
  %3129 = fmul fast float %3127, %3123
  %3130 = fmul fast float %3128, %3123
  %3131 = fadd fast float %3129, 5.000000e-01
  %3132 = fadd fast float %3130, 5.000000e-01
  %3133 = fmul fast float %3131, 2.000000e+00
  %3134 = fadd fast float %3133, -1.000000e+00
  %3135 = fmul fast float %3132, 2.000000e+00
  %3136 = fadd fast float %3135, -1.000000e+00
  %3137 = fadd fast float %3134, %3136
  %3138 = fmul fast float %3137, 5.000000e-01
  %3139 = fsub fast float %3134, %3136
  %3140 = fmul fast float %3139, 5.000000e-01
  %3141 = call float @dx.op.unary.f32(i32 6, float %3138)  ; FAbs(value)
  %3142 = fsub fast float 1.000000e+00, %3141
  %3143 = call float @dx.op.unary.f32(i32 6, float %3140)  ; FAbs(value)
  %3144 = fsub fast float %3142, %3143
  %3145 = call float @dx.op.dot3.f32(i32 55, float %3138, float %3140, float %3144, float %3138, float %3140, float %3144)  ; Dot3(ax,ay,az,bx,by,bz)
  %3146 = call float @dx.op.unary.f32(i32 25, float %3145)  ; Rsqrt(value)
  %3147 = fmul fast float %3138, %3146
  %3148 = fmul fast float %3140, %3146
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = and i32 %3150, 67108864
  %3152 = icmp eq i32 %3151, 0
  br i1 %3152, label %3169, label %3153

; <label>:3153                                    ; preds = %3101
  %3154 = add i32 %21, 328
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3154, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 65535
  %3158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3157)  ; LegacyF16ToF32(value)
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2596, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = and i32 %3160, 65535
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = lshr i32 %3156, 16
  %3164 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3163)  ; LegacyF16ToF32(value)
  %3165 = fsub fast float %3126, %3164
  %3166 = fmul fast float %3165, %3158
  %3167 = fadd fast float %3166, %3162
  %3168 = call float @dx.op.unary.f32(i32 7, float %3167)  ; Saturate(value)
  br label %3169

; <label>:3169                                    ; preds = %3153, %3101
  %3170 = phi float [ %3168, %3153 ], [ %3126, %3101 ]
  %3171 = call float @dx.op.dot2.f32(i32 54, float %3147, float %3148, float %2590, float %2591)  ; Dot2(ax,ay,bx,by)
  %3172 = call float @dx.op.dot2.f32(i32 54, float %3147, float %3148, float %2592, float %2593)  ; Dot2(ax,ay,bx,by)
  br label %3173

; <label>:3173                                    ; preds = %3169, %3079
  %3174 = phi float [ %3170, %3169 ], [ 0x3FD6666660000000, %3079 ]
  %3175 = phi float [ %3171, %3169 ], [ 0.000000e+00, %3079 ]
  %3176 = phi float [ %3172, %3169 ], [ 0.000000e+00, %3079 ]
  %3177 = phi float [ %3113, %3169 ], [ 1.000000e+00, %3079 ]
  %3178 = add i32 %21, 208
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3178, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = lshr i32 %3180, 22
  %3182 = shl nuw nsw i32 %3181, 5
  %3183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3182)  ; LegacyF16ToF32(value)
  %3184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3185 = extractvalue %dx.types.ResRet.i32 %3184, 0
  %3186 = and i32 %3185, 64
  %3187 = icmp eq i32 %3186, 0
  br i1 %3187, label %3221, label %3188

; <label>:3188                                    ; preds = %3173
  %3189 = add i32 %21, 420
  %3190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3189, i32 undef)  ; BufferLoad(srv,index,wot)
  %3191 = extractvalue %dx.types.ResRet.i32 %3190, 0
  %3192 = add i32 %3191, 0
  %3193 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3192, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 131072
  %3197 = icmp eq i32 %3196, 0
  %3198 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3193, %dx.types.Handle %52, float %2686, float %2687, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3199 = extractvalue %dx.types.ResRet.f32 %3198, 0
  %3200 = extractvalue %dx.types.ResRet.f32 %3198, 1
  %3201 = extractvalue %dx.types.ResRet.f32 %3198, 2
  %3202 = fmul fast float %3199, %292
  %3203 = fmul fast float %3200, %295
  %3204 = fmul fast float %3201, %298
  br i1 %3197, label %3211, label %3205

; <label>:3205                                    ; preds = %3188
  %3206 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3207 = extractvalue %dx.types.CBufRet.f32 %3206, 0
  %3208 = fmul fast float %3207, %3202
  %3209 = fmul fast float %3207, %3203
  %3210 = fmul fast float %3207, %3204
  br label %3211

; <label>:3211                                    ; preds = %3205, %3188
  %3212 = phi float [ %3208, %3205 ], [ %3202, %3188 ]
  %3213 = phi float [ %3209, %3205 ], [ %3203, %3188 ]
  %3214 = phi float [ %3210, %3205 ], [ %3204, %3188 ]
  %3215 = fmul fast float %3212, %3183
  %3216 = select i1 %160, float %3215, float %3212
  %3217 = call float @dx.op.dot3.f32(i32 55, float %3216, float %3213, float %3214, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3218 = select i1 %160, float 0.000000e+00, float %3212
  %3219 = select i1 %160, float %3217, float %3213
  %3220 = select i1 %160, float 0.000000e+00, float %3214
  br label %3221

; <label>:3221                                    ; preds = %3211, %3173
  %3222 = phi float [ %3218, %3211 ], [ 0.000000e+00, %3173 ]
  %3223 = phi float [ %3219, %3211 ], [ 0.000000e+00, %3173 ]
  %3224 = phi float [ %3220, %3211 ], [ 0.000000e+00, %3173 ]
  %3225 = add i32 %21, 144
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3227, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = lshr i32 %3227, 8
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = call float @dx.op.dot3.f32(i32 55, float %3094, float %3095, float %3096, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3234 = fmul fast float %3232, %3233
  %3235 = fadd fast float %3234, %3229
  %3236 = fmul fast float %3235, 0x3F70101020000000
  %3237 = call float @dx.op.unary.f32(i32 7, float %3236)  ; Saturate(value)
  br i1 %2578, label %3238, label %3246

; <label>:3238                                    ; preds = %3221
  %3239 = fsub fast float 1.000000e+00, %2874
  %3240 = fmul fast float %3239, %2567
  %3241 = fmul fast float %3239, %2568
  %3242 = fmul fast float %3239, %2569
  %3243 = fmul fast float %3239, %2570
  %3244 = fmul fast float %3239, %2571
  %3245 = fmul fast float %3239, %2572
  br label %3246

; <label>:3246                                    ; preds = %3238, %3221
  %3247 = phi float [ %3240, %3238 ], [ %2567, %3221 ]
  %3248 = phi float [ %3241, %3238 ], [ %2568, %3221 ]
  %3249 = phi float [ %3242, %3238 ], [ %2569, %3221 ]
  %3250 = phi float [ %3243, %3238 ], [ %2570, %3221 ]
  %3251 = phi float [ %3244, %3238 ], [ %2571, %3221 ]
  %3252 = phi float [ %3245, %3238 ], [ %2572, %3221 ]
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = and i32 %3254, 3
  %3256 = icmp eq i32 %3255, 3
  br i1 %3256, label %3335, label %3257

; <label>:3257                                    ; preds = %3246
  %3258 = and i32 %3254, 16
  %3259 = icmp ne i32 %3258, 0
  %3260 = select i1 %3259, float %2874, float 0.000000e+00
  %3261 = icmp eq i32 %3255, 0
  br i1 %3261, label %3262, label %3290

; <label>:3262                                    ; preds = %3257
  %3263 = and i32 %3254, 64
  %3264 = icmp ne i32 %3263, 0
  %3265 = select i1 %3264, float %2874, float 0.000000e+00
  %3266 = fsub fast float %3094, %3247
  %3267 = fsub fast float %3095, %3248
  %3268 = fsub fast float %3096, %3249
  %3269 = fmul fast float %3260, %3266
  %3270 = fmul fast float %3260, %3267
  %3271 = fmul fast float %3260, %3268
  %3272 = fadd fast float %3269, %3247
  %3273 = fadd fast float %3270, %3248
  %3274 = fadd fast float %3271, %3249
  %3275 = fsub fast float %3080, %2573
  %3276 = fmul fast float %3260, %3275
  %3277 = fadd fast float %3276, %2573
  %3278 = fsub fast float %3222, %3250
  %3279 = fsub fast float %3223, %3251
  %3280 = fsub fast float %3224, %3252
  %3281 = fmul fast float %3265, %3278
  %3282 = fmul fast float %3265, %3279
  %3283 = fmul fast float %3265, %3280
  %3284 = fadd fast float %3281, %3250
  %3285 = fadd fast float %3282, %3251
  %3286 = fadd fast float %3283, %3252
  %3287 = fsub fast float %3237, %2576
  %3288 = fmul fast float %3260, %3287
  %3289 = fadd fast float %3288, %2576
  br label %3335

; <label>:3290                                    ; preds = %3257
  %3291 = icmp eq i32 %3255, 1
  br i1 %3291, label %3292, label %3305

; <label>:3292                                    ; preds = %3290
  %3293 = fadd fast float %3094, -1.000000e+00
  %3294 = fadd fast float %3095, -1.000000e+00
  %3295 = fadd fast float %3096, -1.000000e+00
  %3296 = fmul fast float %3260, %3293
  %3297 = fmul fast float %3260, %3294
  %3298 = fmul fast float %3260, %3295
  %3299 = fadd fast float %3296, 1.000000e+00
  %3300 = fadd fast float %3297, 1.000000e+00
  %3301 = fadd fast float %3298, 1.000000e+00
  %3302 = fmul fast float %3299, %3247
  %3303 = fmul fast float %3300, %3248
  %3304 = fmul fast float %3301, %3249
  br label %3335

; <label>:3305                                    ; preds = %3290
  %3306 = icmp eq i32 %3255, 2
  br i1 %3306, label %3307, label %3335

; <label>:3307                                    ; preds = %3305
  %3308 = call float @dx.op.unary.f32(i32 24, float %3094)  ; Sqrt(value)
  %3309 = call float @dx.op.unary.f32(i32 24, float %3095)  ; Sqrt(value)
  %3310 = call float @dx.op.unary.f32(i32 24, float %3096)  ; Sqrt(value)
  %3311 = fadd fast float %3308, -5.000000e-01
  %3312 = fadd fast float %3309, -5.000000e-01
  %3313 = fadd fast float %3310, -5.000000e-01
  %3314 = fmul fast float %3311, %3260
  %3315 = fmul fast float %3312, %3260
  %3316 = fmul fast float %3313, %3260
  %3317 = fadd fast float %3314, 5.000000e-01
  %3318 = fadd fast float %3315, 5.000000e-01
  %3319 = fadd fast float %3316, 5.000000e-01
  %3320 = fmul fast float %3317, 2.000000e+00
  %3321 = fsub fast float 1.000000e+00, %3320
  %3322 = fmul fast float %3321, %3247
  %3323 = fadd fast float %3322, %3320
  %3324 = fmul fast float %3323, %3247
  %3325 = fmul fast float %3318, 2.000000e+00
  %3326 = fsub fast float 1.000000e+00, %3325
  %3327 = fmul fast float %3326, %3248
  %3328 = fadd fast float %3327, %3325
  %3329 = fmul fast float %3328, %3248
  %3330 = fmul fast float %3319, 2.000000e+00
  %3331 = fsub fast float 1.000000e+00, %3330
  %3332 = fmul fast float %3331, %3249
  %3333 = fadd fast float %3332, %3330
  %3334 = fmul fast float %3333, %3249
  br label %3335

; <label>:3335                                    ; preds = %3307, %3305, %3292, %3262, %3246
  %3336 = phi float [ %3247, %3246 ], [ %3324, %3307 ], [ %3247, %3305 ], [ %3302, %3292 ], [ %3272, %3262 ]
  %3337 = phi float [ %3248, %3246 ], [ %3329, %3307 ], [ %3248, %3305 ], [ %3303, %3292 ], [ %3273, %3262 ]
  %3338 = phi float [ %3249, %3246 ], [ %3334, %3307 ], [ %3249, %3305 ], [ %3304, %3292 ], [ %3274, %3262 ]
  %3339 = phi float [ %3250, %3246 ], [ %3250, %3307 ], [ %3250, %3305 ], [ %3250, %3292 ], [ %3284, %3262 ]
  %3340 = phi float [ %3251, %3246 ], [ %3251, %3307 ], [ %3251, %3305 ], [ %3251, %3292 ], [ %3285, %3262 ]
  %3341 = phi float [ %3252, %3246 ], [ %3252, %3307 ], [ %3252, %3305 ], [ %3252, %3292 ], [ %3286, %3262 ]
  %3342 = phi float [ %2573, %3246 ], [ %2573, %3307 ], [ %2573, %3305 ], [ %2573, %3292 ], [ %3277, %3262 ]
  %3343 = phi float [ %2576, %3246 ], [ %2576, %3307 ], [ %2576, %3305 ], [ %2576, %3292 ], [ %3289, %3262 ]
  %3344 = and i32 %3254, 12
  %3345 = icmp eq i32 %3344, 12
  br i1 %3345, label %3418, label %3346

; <label>:3346                                    ; preds = %3335
  %3347 = and i32 %3254, 2097184
  %3348 = icmp eq i32 %3347, 2097184
  %3349 = select i1 %3348, float %2874, float 0.000000e+00
  %3350 = and i32 %3254, 4194336
  %3351 = icmp eq i32 %3350, 4194336
  %3352 = select i1 %3351, float %2874, float 0.000000e+00
  %3353 = and i32 %3254, 8388640
  %3354 = icmp eq i32 %3353, 8388640
  %3355 = select i1 %3354, float %2874, float 0.000000e+00
  %3356 = icmp eq i32 %3344, 0
  br i1 %3356, label %3357, label %3370

; <label>:3357                                    ; preds = %3346
  %3358 = fsub fast float %3175, %2565
  %3359 = fsub fast float %3176, %2566
  %3360 = fmul fast float %3349, %3358
  %3361 = fmul fast float %3349, %3359
  %3362 = fadd fast float %3360, %2565
  %3363 = fadd fast float %3361, %2566
  %3364 = fsub fast float %3177, %2575
  %3365 = fmul fast float %3352, %3364
  %3366 = fadd fast float %3365, %2575
  %3367 = fsub fast float %3174, %2574
  %3368 = fmul fast float %3355, %3367
  %3369 = fadd fast float %3368, %2574
  br label %3418

; <label>:3370                                    ; preds = %3346
  %3371 = icmp eq i32 %3344, 4
  br i1 %3371, label %3372, label %3404

; <label>:3372                                    ; preds = %3370
  %3373 = fmul fast float %3349, %3175
  %3374 = fmul fast float %3349, %3176
  %3375 = fadd fast float %3373, %2565
  %3376 = fadd fast float %3374, %2566
  %3377 = call float @dx.op.binary.f32(i32 36, float %2575, float %3177)  ; FMin(a,b)
  %3378 = fsub fast float %3377, %2575
  %3379 = fmul fast float %3378, %3352
  %3380 = fadd fast float %3379, %2575
  %3381 = fadd fast float %3174, %2574
  %3382 = fmul fast float %3381, 0x3FF337FAE0000000
  %3383 = fmul fast float %2574, %2574
  %3384 = fmul fast float %3174, %3174
  %3385 = fadd fast float %3384, %3383
  %3386 = fmul fast float %3385, 0x3FE5152B00000000
  %3387 = fmul fast float %2574, 0xBFCC1F85E0000000
  %3388 = fmul fast float %3387, %3174
  %3389 = fadd fast float %3388, 0xBFE1363700000000
  %3390 = fadd fast float %3389, %3382
  %3391 = fsub fast float %3390, %3386
  %3392 = fmul fast float %3381, 0x3FBA6F0D00000000
  %3393 = fmul fast float %3385, 0x3FD0432880000000
  %3394 = fmul fast float %2574, 0xBFEF110800000000
  %3395 = fmul fast float %3394, %3174
  %3396 = fadd fast float %3395, 1.000000e+00
  %3397 = fsub fast float %3396, %3392
  %3398 = fadd fast float %3397, %3393
  %3399 = fdiv fast float %3391, %3398
  %3400 = call float @dx.op.unary.f32(i32 7, float %3399)  ; Saturate(value)
  %3401 = fsub fast float %3400, %2574
  %3402 = fmul fast float %3401, %3355
  %3403 = fadd fast float %3402, %2574
  br label %3418

; <label>:3404                                    ; preds = %3370
  %3405 = icmp eq i32 %3344, 8
  br i1 %3405, label %3406, label %3418

; <label>:3406                                    ; preds = %3404
  %3407 = fmul fast float %3349, %3175
  %3408 = fmul fast float %3349, %3176
  %3409 = fadd fast float %3407, %2565
  %3410 = fadd fast float %3408, %2566
  %3411 = call float @dx.op.binary.f32(i32 36, float %2575, float %3177)  ; FMin(a,b)
  %3412 = fsub fast float %3411, %2575
  %3413 = fmul fast float %3412, %3352
  %3414 = fadd fast float %3413, %2575
  %3415 = fsub fast float %3174, %2574
  %3416 = fmul fast float %3355, %3415
  %3417 = fadd fast float %3416, %2574
  br label %3418

; <label>:3418                                    ; preds = %3406, %3404, %3372, %3357, %3335, %2873, %2577, %2564
  %3419 = phi float [ %2565, %3335 ], [ %2565, %2873 ], [ %2565, %2564 ], [ %2565, %2577 ], [ %3362, %3357 ], [ %3375, %3372 ], [ %2565, %3404 ], [ %3409, %3406 ]
  %3420 = phi float [ %2566, %3335 ], [ %2566, %2873 ], [ %2566, %2564 ], [ %2566, %2577 ], [ %3363, %3357 ], [ %3376, %3372 ], [ %2566, %3404 ], [ %3410, %3406 ]
  %3421 = phi float [ %3336, %3335 ], [ %2567, %2873 ], [ %2567, %2564 ], [ %2567, %2577 ], [ %3336, %3357 ], [ %3336, %3372 ], [ %3336, %3404 ], [ %3336, %3406 ]
  %3422 = phi float [ %3337, %3335 ], [ %2568, %2873 ], [ %2568, %2564 ], [ %2568, %2577 ], [ %3337, %3357 ], [ %3337, %3372 ], [ %3337, %3404 ], [ %3337, %3406 ]
  %3423 = phi float [ %3338, %3335 ], [ %2569, %2873 ], [ %2569, %2564 ], [ %2569, %2577 ], [ %3338, %3357 ], [ %3338, %3372 ], [ %3338, %3404 ], [ %3338, %3406 ]
  %3424 = phi float [ %3339, %3335 ], [ %2570, %2873 ], [ %2570, %2564 ], [ %2570, %2577 ], [ %3339, %3357 ], [ %3339, %3372 ], [ %3339, %3404 ], [ %3339, %3406 ]
  %3425 = phi float [ %3340, %3335 ], [ %2571, %2873 ], [ %2571, %2564 ], [ %2571, %2577 ], [ %3340, %3357 ], [ %3340, %3372 ], [ %3340, %3404 ], [ %3340, %3406 ]
  %3426 = phi float [ %3341, %3335 ], [ %2572, %2873 ], [ %2572, %2564 ], [ %2572, %2577 ], [ %3341, %3357 ], [ %3341, %3372 ], [ %3341, %3404 ], [ %3341, %3406 ]
  %3427 = phi float [ %3342, %3335 ], [ %2573, %2873 ], [ %2573, %2564 ], [ %2573, %2577 ], [ %3342, %3357 ], [ %3342, %3372 ], [ %3342, %3404 ], [ %3342, %3406 ]
  %3428 = phi float [ %2574, %3335 ], [ %2574, %2873 ], [ %2574, %2564 ], [ %2574, %2577 ], [ %3369, %3357 ], [ %3403, %3372 ], [ %2574, %3404 ], [ %3417, %3406 ]
  %3429 = phi float [ %2575, %3335 ], [ %2575, %2873 ], [ %2575, %2564 ], [ %2575, %2577 ], [ %3366, %3357 ], [ %3380, %3372 ], [ %2575, %3404 ], [ %3414, %3406 ]
  %3430 = phi float [ %3343, %3335 ], [ %2576, %2873 ], [ %2576, %2564 ], [ %2576, %2577 ], [ %3343, %3357 ], [ %3343, %3372 ], [ %3343, %3404 ], [ %3343, %3406 ]
  %3431 = add i32 %21, 360
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = extractvalue %dx.types.ResRet.i32 %3432, 1
  %3435 = bitcast i32 %3433 to float
  %3436 = bitcast i32 %3434 to float
  %3437 = fcmp fast oge float %3435, 0.000000e+00
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 0
  %3440 = select i1 %3437, float %3435, float %3439
  %3441 = add i32 %21, 456
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = add i32 %3443, 0
  %3445 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3444, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3445, %dx.types.Handle %53, float %44, float %45, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 0
  %3448 = fmul fast float %3447, %3436
  %3449 = fadd fast float %3448, %3440
  %3450 = call float @dx.op.dot2.f32(i32 54, float %3419, float %3420, float %3419, float %3420)  ; Dot2(ax,ay,bx,by)
  %3451 = fmul fast float %3450, 0x3FE3333340000000
  %3452 = fsub fast float 1.000000e+00, %3451
  %3453 = call float @dx.op.dot3.f32(i32 55, float %3419, float %3420, float %3452, float %3419, float %3420, float %3452)  ; Dot3(ax,ay,az,bx,by,bz)
  %3454 = call float @dx.op.unary.f32(i32 25, float %3453)  ; Rsqrt(value)
  %3455 = fmul fast float %3454, %3419
  %3456 = fmul fast float %3454, %3420
  %3457 = fmul fast float %3452, %3454
  %3458 = fmul fast float %3457, %63
  %3459 = fmul fast float %3457, %64
  %3460 = fmul fast float %3457, %65
  %3461 = fmul fast float %3455, %37
  %3462 = fmul fast float %3455, %38
  %3463 = fmul fast float %3455, %39
  %3464 = fadd fast float %3458, %3461
  %3465 = fadd fast float %3459, %3462
  %3466 = fadd fast float %3460, %3463
  %3467 = fmul fast float %75, %3456
  %3468 = fmul fast float %76, %3456
  %3469 = fmul fast float %77, %3456
  %3470 = fadd fast float %3464, %3467
  %3471 = fadd fast float %3465, %3468
  %3472 = fadd fast float %3466, %3469
  %3473 = call float @dx.op.dot3.f32(i32 55, float %3470, float %3471, float %3472, float %3470, float %3471, float %3472)  ; Dot3(ax,ay,az,bx,by,bz)
  %3474 = call float @dx.op.unary.f32(i32 25, float %3473)  ; Rsqrt(value)
  %3475 = fmul fast float %3470, %3474
  %3476 = fmul fast float %3471, %3474
  %3477 = fmul fast float %3472, %3474
  %3478 = and i32 %23, 1
  %3479 = icmp eq i32 %3478, 0
  br i1 %3479, label %3480, label %3988

; <label>:3480                                    ; preds = %3418
  %3481 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %3482 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %3483 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %3484 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %3485 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %3486 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %3487 = fadd fast float %3481, %119
  %3488 = fadd fast float %3482, %120
  %3489 = fadd fast float %3483, %121
  %3490 = fadd fast float %3484, %119
  %3491 = fadd fast float %3485, %120
  %3492 = fadd fast float %3486, %121
  %3493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3494 = extractvalue %dx.types.CBufRet.f32 %3493, 0
  %3495 = extractvalue %dx.types.CBufRet.f32 %3493, 1
  %3496 = extractvalue %dx.types.CBufRet.f32 %3493, 2
  %3497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3498 = extractvalue %dx.types.CBufRet.f32 %3497, 2
  %3499 = extractvalue %dx.types.CBufRet.f32 %3497, 3
  %3500 = fmul fast float %3494, %56
  %3501 = fmul fast float %3500, %3498
  %3502 = fmul fast float %3495, %57
  %3503 = fmul fast float %3502, %3499
  %3504 = fptoui float %3501 to i32
  %3505 = fptoui float %3503 to i32
  %3506 = fadd fast float %3494, -1.000000e+00
  %3507 = fadd fast float %3495, -1.000000e+00
  %3508 = fptoui float %3506 to i32
  %3509 = fptoui float %3507 to i32
  %3510 = call i32 @dx.op.binary.i32(i32 40, i32 %3504, i32 %3508)  ; UMin(a,b)
  %3511 = call i32 @dx.op.binary.i32(i32 40, i32 %3505, i32 %3509)  ; UMin(a,b)
  %3512 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3513 = extractvalue %dx.types.CBufRet.f32 %3512, 2
  %3514 = extractvalue %dx.types.CBufRet.f32 %3512, 3
  %3515 = fmul fast float %3513, %51
  %3516 = fsub fast float %3515, %3514
  %3517 = fadd fast float %3496, -1.000000e+00
  %3518 = call float @dx.op.binary.f32(i32 36, float %3516, float %3517)  ; FMin(a,b)
  %3519 = fptoui float %3518 to i32
  %3520 = fptoui float %3494 to i32
  %3521 = fptoui float %3495 to i32
  %3522 = mul i32 %3519, %3521
  %3523 = add i32 %3522, %3511
  %3524 = mul i32 %3523, %3520
  %3525 = add i32 %3524, %3510
  %3526 = shl i32 %3525, 2
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 1023
  %3530 = lshr i32 %3528, 10
  %3531 = icmp eq i32 %3529, 0
  br i1 %3531, label %3957, label %3532

; <label>:3532                                    ; preds = %3480
  %3533 = and i32 %3528, 1023
  br label %3534

; <label>:3534                                    ; preds = %3660, %3532
  %3535 = phi i32 [ %3610, %3660 ], [ 0, %3532 ]
  %3536 = phi float [ %3661, %3660 ], [ 0.000000e+00, %3532 ]
  %3537 = phi float [ %3662, %3660 ], [ %3449, %3532 ]
  %3538 = phi float [ %3663, %3660 ], [ %3430, %3532 ]
  %3539 = phi float [ %3664, %3660 ], [ 0.000000e+00, %3532 ]
  %3540 = phi float [ %3665, %3660 ], [ 0.000000e+00, %3532 ]
  %3541 = phi float [ %3666, %3660 ], [ %3424, %3532 ]
  %3542 = phi float [ %3667, %3660 ], [ %3425, %3532 ]
  %3543 = phi float [ %3668, %3660 ], [ %3426, %3532 ]
  %3544 = phi float [ %3669, %3660 ], [ %3475, %3532 ]
  %3545 = phi float [ %3670, %3660 ], [ %3476, %3532 ]
  %3546 = phi float [ %3671, %3660 ], [ %3477, %3532 ]
  %3547 = phi float [ %3672, %3660 ], [ %3429, %3532 ]
  %3548 = phi float [ %3673, %3660 ], [ %3428, %3532 ]
  %3549 = phi float [ %3674, %3660 ], [ 0.000000e+00, %3532 ]
  %3550 = phi float [ %3675, %3660 ], [ %3427, %3532 ]
  %3551 = phi float [ %3676, %3660 ], [ %3421, %3532 ]
  %3552 = phi float [ %3677, %3660 ], [ %3422, %3532 ]
  %3553 = phi float [ %3678, %3660 ], [ %3423, %3532 ]
  %3554 = add nuw nsw i32 %3535, %3530
  %3555 = shl i32 %3554, 2
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = shl i32 %3557, 8
  %3559 = or i32 %3558, 48
  %3560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.f32 %3560, 0
  %3562 = extractvalue %dx.types.ResRet.f32 %3560, 1
  %3563 = extractvalue %dx.types.ResRet.f32 %3560, 2
  %3564 = extractvalue %dx.types.ResRet.f32 %3560, 3
  %3565 = or i32 %3558, 64
  %3566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.i32 %3566, 0
  %3568 = extractvalue %dx.types.ResRet.i32 %3566, 1
  %3569 = or i32 %3558, 80
  %3570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.f32 %3570, 2
  %3572 = extractvalue %dx.types.ResRet.f32 %3570, 3
  %3573 = or i32 %3558, 96
  %3574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3573, i32 undef)  ; BufferLoad(srv,index,wot)
  %3575 = extractvalue %dx.types.ResRet.f32 %3574, 0
  %3576 = extractvalue %dx.types.ResRet.f32 %3574, 1
  %3577 = extractvalue %dx.types.ResRet.f32 %3574, 2
  %3578 = extractvalue %dx.types.ResRet.f32 %3574, 3
  %3579 = or i32 %3558, 112
  %3580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3579, i32 undef)  ; BufferLoad(srv,index,wot)
  %3581 = extractvalue %dx.types.ResRet.f32 %3580, 2
  %3582 = or i32 %3558, 128
  %3583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = extractvalue %dx.types.ResRet.f32 %3583, 3
  %3588 = or i32 %3558, 144
  %3589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.f32 %3589, 0
  %3591 = extractvalue %dx.types.ResRet.f32 %3589, 1
  %3592 = extractvalue %dx.types.ResRet.f32 %3589, 2
  %3593 = extractvalue %dx.types.ResRet.f32 %3589, 3
  %3594 = or i32 %3558, 160
  %3595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3594, i32 undef)  ; BufferLoad(srv,index,wot)
  %3596 = extractvalue %dx.types.ResRet.f32 %3595, 0
  %3597 = extractvalue %dx.types.ResRet.f32 %3595, 1
  %3598 = extractvalue %dx.types.ResRet.f32 %3595, 2
  %3599 = extractvalue %dx.types.ResRet.f32 %3595, 3
  %3600 = or i32 %3558, 192
  %3601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.i32 %3601, 0
  %3603 = or i32 %3558, 208
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = or i32 %3558, 248
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = add nuw nsw i32 %3535, 1
  %3611 = bitcast float %3564 to i32
  %3612 = and i32 %3611, 512
  %3613 = icmp eq i32 %3612, 0
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = call float @dx.op.dot4.f32(i32 56, float %3615, float %3616, float %3617, float %3618, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3620 = or i32 %3558, 16
  %3621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3620, i32 undef)  ; BufferLoad(srv,index,wot)
  %3622 = extractvalue %dx.types.ResRet.f32 %3621, 0
  %3623 = extractvalue %dx.types.ResRet.f32 %3621, 1
  %3624 = extractvalue %dx.types.ResRet.f32 %3621, 2
  %3625 = extractvalue %dx.types.ResRet.f32 %3621, 3
  %3626 = call float @dx.op.dot4.f32(i32 56, float %3622, float %3623, float %3624, float %3625, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3627 = or i32 %3558, 32
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.ResRet.f32 %3628, 3
  %3633 = call float @dx.op.dot4.f32(i32 56, float %3629, float %3630, float %3631, float %3632, float %119, float %120, float %121, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3634 = call float @dx.op.unary.f32(i32 27, float %3619)  ; Round_ni(value)
  %3635 = call float @dx.op.unary.f32(i32 6, float %3634)  ; FAbs(value)
  %3636 = call float @dx.op.unary.f32(i32 27, float %3626)  ; Round_ni(value)
  %3637 = call float @dx.op.unary.f32(i32 6, float %3636)  ; FAbs(value)
  %3638 = call float @dx.op.unary.f32(i32 6, float %3633)  ; FAbs(value)
  %3639 = call float @dx.op.unary.f32(i32 27, float %3638)  ; Round_ni(value)
  %3640 = fadd fast float %3637, %3635
  %3641 = fadd fast float %3640, %3639
  %3642 = fcmp fast oeq float %3641, 0.000000e+00
  %3643 = call float @dx.op.dot4.f32(i32 56, float %3615, float %3616, float %3617, float %3618, float %3487, float %3488, float %3489, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3644 = call float @dx.op.dot4.f32(i32 56, float %3622, float %3623, float %3624, float %3625, float %3487, float %3488, float %3489, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3645 = call float @dx.op.dot4.f32(i32 56, float %3615, float %3616, float %3617, float %3618, float %3490, float %3491, float %3492, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3646 = call float @dx.op.dot4.f32(i32 56, float %3622, float %3623, float %3624, float %3625, float %3490, float %3491, float %3492, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3647 = fsub fast float %3643, %3619
  %3648 = fsub fast float %3645, %3619
  %3649 = fsub fast float %3644, %3626
  %3650 = fsub fast float %3646, %3626
  %3651 = call float @dx.op.dot3.f32(i32 55, float %3561, float %3562, float %3563, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 2
  %3654 = fadd fast float %3653, %3651
  %3655 = call float @dx.op.unary.f32(i32 7, float %3654)  ; Saturate(value)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3652, 0
  %3657 = fcmp fast ogt float %3655, %3656
  %3658 = and i1 %3642, %3657
  %3659 = and i1 %3613, %3658
  br i1 %3659, label %3680, label %3660

; <label>:3660                                    ; preds = %3943, %3761, %3680, %3534
  %3661 = phi float [ %3536, %3680 ], [ %3764, %3761 ], [ %3764, %3943 ], [ %3536, %3534 ]
  %3662 = phi float [ %3537, %3680 ], [ %3537, %3761 ], [ %3918, %3943 ], [ %3537, %3534 ]
  %3663 = phi float [ %3538, %3680 ], [ %3538, %3761 ], [ %3916, %3943 ], [ %3538, %3534 ]
  %3664 = phi float [ %3539, %3680 ], [ %3539, %3761 ], [ %3888, %3943 ], [ %3539, %3534 ]
  %3665 = phi float [ %3540, %3680 ], [ %3540, %3761 ], [ %3886, %3943 ], [ %3540, %3534 ]
  %3666 = phi float [ %3541, %3680 ], [ %3541, %3761 ], [ %3953, %3943 ], [ %3541, %3534 ]
  %3667 = phi float [ %3542, %3680 ], [ %3542, %3761 ], [ %3954, %3943 ], [ %3542, %3534 ]
  %3668 = phi float [ %3543, %3680 ], [ %3543, %3761 ], [ %3955, %3943 ], [ %3543, %3534 ]
  %3669 = phi float [ %3544, %3680 ], [ %3544, %3761 ], [ %3867, %3943 ], [ %3544, %3534 ]
  %3670 = phi float [ %3545, %3680 ], [ %3545, %3761 ], [ %3868, %3943 ], [ %3545, %3534 ]
  %3671 = phi float [ %3546, %3680 ], [ %3546, %3761 ], [ %3869, %3943 ], [ %3546, %3534 ]
  %3672 = phi float [ %3547, %3680 ], [ %3547, %3761 ], [ %3896, %3943 ], [ %3547, %3534 ]
  %3673 = phi float [ %3548, %3680 ], [ %3548, %3761 ], [ %3893, %3943 ], [ %3548, %3534 ]
  %3674 = phi float [ %3549, %3680 ], [ %3549, %3761 ], [ %3890, %3943 ], [ %3549, %3534 ]
  %3675 = phi float [ %3550, %3680 ], [ %3550, %3761 ], [ %3884, %3943 ], [ %3550, %3534 ]
  %3676 = phi float [ %3551, %3680 ], [ %3551, %3761 ], [ %3879, %3943 ], [ %3551, %3534 ]
  %3677 = phi float [ %3552, %3680 ], [ %3552, %3761 ], [ %3880, %3943 ], [ %3552, %3534 ]
  %3678 = phi float [ %3553, %3680 ], [ %3553, %3761 ], [ %3881, %3943 ], [ %3553, %3534 ]
  %3679 = icmp eq i32 %3610, %3533
  br i1 %3679, label %3956, label %3534

; <label>:3680                                    ; preds = %3534
  %3681 = extractvalue %dx.types.ResRet.f32 %3580, 3
  %3682 = extractvalue %dx.types.ResRet.f32 %3580, 1
  %3683 = extractvalue %dx.types.ResRet.f32 %3580, 0
  %3684 = extractvalue %dx.types.ResRet.f32 %3570, 1
  %3685 = extractvalue %dx.types.ResRet.f32 %3570, 0
  %3686 = extractvalue %dx.types.ResRet.i32 %3566, 3
  %3687 = extractvalue %dx.types.ResRet.i32 %3566, 2
  %3688 = add i32 %3686, 0
  %3689 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3688, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3691 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3689, %dx.types.Handle %3690, float %3619, float %3626, float undef, float undef, i32 0, i32 0, i32 undef, float %3647, float %3649, float undef, float %3648, float %3650, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3692 = extractvalue %dx.types.ResRet.f32 %3691, 0
  %3693 = fmul fast float %3692, %3685
  %3694 = fadd fast float %3693, %3684
  %3695 = call float @dx.op.unary.f32(i32 7, float %3694)  ; Saturate(value)
  %3696 = fmul fast float %3619, %3575
  %3697 = call float @dx.op.tertiary.f32(i32 46, float %3576, float %3626, float %3696)  ; FMad(a,b,c)
  %3698 = fadd fast float %3697, %3683
  %3699 = fmul fast float %3619, %3577
  %3700 = call float @dx.op.tertiary.f32(i32 46, float %3578, float %3626, float %3699)  ; FMad(a,b,c)
  %3701 = fadd fast float %3700, %3682
  %3702 = fmul fast float %3647, %3575
  %3703 = call float @dx.op.tertiary.f32(i32 46, float %3576, float %3649, float %3702)  ; FMad(a,b,c)
  %3704 = fmul fast float %3647, %3577
  %3705 = call float @dx.op.tertiary.f32(i32 46, float %3578, float %3649, float %3704)  ; FMad(a,b,c)
  %3706 = fmul fast float %3648, %3575
  %3707 = call float @dx.op.tertiary.f32(i32 46, float %3576, float %3650, float %3706)  ; FMad(a,b,c)
  %3708 = fmul fast float %3648, %3577
  %3709 = call float @dx.op.tertiary.f32(i32 46, float %3578, float %3650, float %3708)  ; FMad(a,b,c)
  %3710 = add i32 %3687, 0
  %3711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3710, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3712 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3711, %dx.types.Handle %3690, float %3698, float %3701, float undef, float undef, i32 0, i32 0, i32 undef, float %3703, float %3705, float undef, float %3707, float %3709, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = and i32 %3611, 1024
  %3715 = icmp ne i32 %3714, 0
  %3716 = fcmp fast ogt float %3713, 0x3FE0101020000000
  %3717 = uitofp i1 %3716 to float
  %3718 = select i1 %3715, float %3717, float %3713
  %3719 = and i32 %3611, 8192
  %3720 = icmp ne i32 %3719, 0
  %3721 = select i1 %3720, float %3681, float 1.000000e+00
  %3722 = fmul fast float %3619, 2.000000e+00
  %3723 = fadd fast float %3722, -1.000000e+00
  %3724 = call float @dx.op.unary.f32(i32 6, float %3723)  ; FAbs(value)
  %3725 = fmul fast float %3724, %3608
  %3726 = fsub fast float %3725, %3608
  %3727 = call float @dx.op.unary.f32(i32 7, float %3726)  ; Saturate(value)
  %3728 = fmul fast float %3626, 2.000000e+00
  %3729 = fadd fast float %3728, -1.000000e+00
  %3730 = call float @dx.op.unary.f32(i32 6, float %3729)  ; FAbs(value)
  %3731 = fmul fast float %3730, %3609
  %3732 = fsub fast float %3731, %3609
  %3733 = call float @dx.op.unary.f32(i32 7, float %3732)  ; Saturate(value)
  %3734 = fmul fast float %3638, %3571
  %3735 = fsub fast float %3734, %3571
  %3736 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  %3737 = fmul fast float %3695, %3721
  %3738 = fmul fast float %3737, %3692
  %3739 = fmul fast float %3738, %3727
  %3740 = fmul fast float %3739, %3718
  %3741 = fmul fast float %3740, %3733
  %3742 = fmul fast float %3741, %3736
  %3743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3743, 1
  %3745 = extractvalue %dx.types.CBufRet.f32 %3743, 0
  %3746 = fsub fast float %3655, %3745
  %3747 = fmul fast float %3746, %3744
  %3748 = call float @dx.op.unary.f32(i32 7, float %3747)  ; Saturate(value)
  %3749 = fmul fast float %3742, %3572
  %3750 = fadd fast float %3742, %3572
  %3751 = fmul fast float %3750, %3581
  %3752 = fsub fast float %3751, %3581
  %3753 = call float @dx.op.unary.f32(i32 7, float %3752)  ; Saturate(value)
  %3754 = and i32 %3611, 128
  %3755 = icmp ne i32 %3754, 0
  %3756 = select i1 %3755, float %3753, float %3749
  %3757 = fmul fast float %3756, %3748
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 0
  %3760 = fcmp fast ugt float %3757, %3759
  br i1 %3760, label %3761, label %3660

; <label>:3761                                    ; preds = %3680
  %3762 = select i1 %3720, float %3757, float 0.000000e+00
  %3763 = fadd fast float %3762, %3536
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  br i1 %3720, label %3660, label %3765

; <label>:3765                                    ; preds = %3761
  %3766 = and i32 %3611, 4
  %3767 = and i32 %3611, 8
  %3768 = add i32 %3567, 0
  %3769 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3768, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3770 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3771 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3769, %dx.types.Handle %3770, float %3698, float %3701, float undef, float undef, i32 0, i32 0, i32 undef, float %3703, float %3705, float undef, float %3707, float %3709, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3772 = extractvalue %dx.types.ResRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.ResRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.ResRet.f32 %3771, 2
  %3775 = extractvalue %dx.types.ResRet.f32 %3771, 3
  %3776 = bitcast float %3593 to i32
  %3777 = and i32 %3776, 255
  %3778 = uitofp i32 %3777 to float
  %3779 = lshr i32 %3776, 8
  %3780 = and i32 %3779, 255
  %3781 = uitofp i32 %3780 to float
  %3782 = fmul fast float %3775, %3778
  %3783 = fadd fast float %3782, %3781
  %3784 = fmul fast float %3783, 0x3F70101000000000
  %3785 = add i32 %3568, 0
  %3786 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3785, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3787 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3786, %dx.types.Handle %3770, float %3698, float %3701, float undef, float undef, i32 0, i32 0, i32 undef, float %3703, float %3705, float undef, float %3707, float %3709, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3788 = extractvalue %dx.types.ResRet.f32 %3787, 0
  %3789 = extractvalue %dx.types.ResRet.f32 %3787, 1
  %3790 = extractvalue %dx.types.ResRet.f32 %3787, 2
  %3791 = extractvalue %dx.types.ResRet.f32 %3787, 3
  %3792 = bitcast float %3587 to i32
  %3793 = and i32 %3792, 255
  %3794 = uitofp i32 %3793 to float
  %3795 = lshr i32 %3792, 8
  %3796 = and i32 %3795, 255
  %3797 = uitofp i32 %3796 to float
  %3798 = lshr i32 %3792, 16
  %3799 = and i32 %3798, 255
  %3800 = uitofp i32 %3799 to float
  %3801 = fmul fast float %3800, 0x3F70101000000000
  %3802 = fmul fast float %3788, %3794
  %3803 = fadd fast float %3802, %3797
  %3804 = fmul fast float %3803, 0x3F70101000000000
  %3805 = fadd fast float %3789, -5.000000e-01
  %3806 = fadd fast float %3791, -5.000000e-01
  %3807 = fmul fast float %3805, %3801
  %3808 = fmul fast float %3806, %3801
  %3809 = fadd fast float %3807, 5.000000e-01
  %3810 = fadd fast float %3808, 5.000000e-01
  %3811 = fmul fast float %3772, %3596
  %3812 = fmul fast float %3773, %3597
  %3813 = fmul fast float %3774, %3598
  %3814 = fmul fast float %3809, 2.000000e+00
  %3815 = fadd fast float %3814, -1.000000e+00
  %3816 = fmul fast float %3810, 2.000000e+00
  %3817 = fadd fast float %3816, -1.000000e+00
  %3818 = fadd fast float %3815, %3817
  %3819 = fmul fast float %3818, 5.000000e-01
  %3820 = fsub fast float %3815, %3817
  %3821 = fmul fast float %3820, 5.000000e-01
  %3822 = call float @dx.op.unary.f32(i32 6, float %3819)  ; FAbs(value)
  %3823 = fsub fast float 1.000000e+00, %3822
  %3824 = call float @dx.op.unary.f32(i32 6, float %3821)  ; FAbs(value)
  %3825 = fsub fast float %3823, %3824
  %3826 = call float @dx.op.dot3.f32(i32 55, float %3819, float %3821, float %3825, float %3819, float %3821, float %3825)  ; Dot3(ax,ay,az,bx,by,bz)
  %3827 = call float @dx.op.unary.f32(i32 25, float %3826)  ; Rsqrt(value)
  %3828 = fmul fast float %3819, %3827
  %3829 = fmul fast float %3821, %3827
  %3830 = fmul fast float %3827, %3825
  %3831 = fmul fast float %3830, %3561
  %3832 = fmul fast float %3830, %3562
  %3833 = fmul fast float %3830, %3563
  %3834 = fmul fast float %3828, %3584
  %3835 = fmul fast float %3828, %3585
  %3836 = fmul fast float %3828, %3586
  %3837 = fadd fast float %3834, %3831
  %3838 = fadd fast float %3835, %3832
  %3839 = fadd fast float %3836, %3833
  %3840 = fmul fast float %3829, %3590
  %3841 = fmul fast float %3829, %3591
  %3842 = fmul fast float %3829, %3592
  %3843 = fadd fast float %3837, %3840
  %3844 = fadd fast float %3838, %3841
  %3845 = fadd fast float %3839, %3842
  %3846 = call float @dx.op.dot3.f32(i32 55, float %3843, float %3844, float %3845, float %3843, float %3844, float %3845)  ; Dot3(ax,ay,az,bx,by,bz)
  %3847 = call float @dx.op.unary.f32(i32 25, float %3846)  ; Rsqrt(value)
  %3848 = fmul fast float %3843, %3847
  %3849 = fmul fast float %3844, %3847
  %3850 = fmul fast float %3845, %3847
  %3851 = icmp ne i32 %3767, 0
  %3852 = select i1 %3851, float 1.000000e+00, float 0.000000e+00
  %3853 = fmul fast float %3757, %3852
  %3854 = and i32 %3611, 1
  %3855 = icmp eq i32 %3854, 0
  br i1 %3855, label %3856, label %3860

; <label>:3856                                    ; preds = %3765
  %3857 = fsub fast float %3848, %3544
  %3858 = fsub fast float %3849, %3545
  %3859 = fsub fast float %3850, %3546
  br label %3860

; <label>:3860                                    ; preds = %3856, %3765
  %3861 = phi float [ %3857, %3856 ], [ %3848, %3765 ]
  %3862 = phi float [ %3858, %3856 ], [ %3849, %3765 ]
  %3863 = phi float [ %3859, %3856 ], [ %3850, %3765 ]
  %3864 = fmul float %3863, %3853
  %3865 = fmul float %3862, %3853
  %3866 = fmul float %3861, %3853
  %3867 = fadd fast float %3866, %3544
  %3868 = fadd fast float %3865, %3545
  %3869 = fadd fast float %3864, %3546
  %3870 = icmp ne i32 %3766, 0
  %3871 = select i1 %3870, float 1.000000e+00, float 0.000000e+00
  %3872 = fmul fast float %3757, %3871
  %3873 = fsub fast float %3811, %3551
  %3874 = fsub fast float %3812, %3552
  %3875 = fsub fast float %3813, %3553
  %3876 = fmul fast float %3873, %3872
  %3877 = fmul fast float %3874, %3872
  %3878 = fmul fast float %3875, %3872
  %3879 = fadd fast float %3876, %3551
  %3880 = fadd fast float %3877, %3552
  %3881 = fadd fast float %3878, %3553
  %3882 = fsub fast float %3784, %3550
  %3883 = fmul fast float %3882, %3872
  %3884 = fadd fast float %3883, %3550
  %3885 = fmul fast float %3872, %3540
  %3886 = fsub fast float %3540, %3885
  %3887 = fmul fast float %3872, %3539
  %3888 = fsub fast float %3539, %3887
  %3889 = fadd fast float %3757, %3549
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = fsub fast float %3804, %3548
  %3892 = fmul fast float %3891, %3853
  %3893 = fadd fast float %3892, %3548
  %3894 = fsub fast float %3790, %3547
  %3895 = fmul fast float %3894, %3853
  %3896 = fadd fast float %3895, %3547
  %3897 = call float @dx.op.dot3.f32(i32 55, float %3811, float %3812, float %3813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3898 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3899 = extractvalue %dx.types.CBufRet.f32 %3898, 0
  %3900 = extractvalue %dx.types.CBufRet.f32 %3898, 1
  %3901 = fmul fast float %3900, %3897
  %3902 = fadd fast float %3901, %3899
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = bitcast float %3599 to i32
  %3905 = and i32 %3904, 65535
  %3906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3905)  ; LegacyF16ToF32(value)
  %3907 = lshr i32 %3904, 16
  %3908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3907)  ; LegacyF16ToF32(value)
  %3909 = fcmp fast oge float %3906, 0.000000e+00
  %3910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3911 = extractvalue %dx.types.CBufRet.f32 %3910, 0
  %3912 = select i1 %3909, float %3906, float %3911
  %3913 = fadd fast float %3912, %3908
  %3914 = fsub fast float %3903, %3538
  %3915 = fmul fast float %3914, %3757
  %3916 = fadd fast float %3915, %3538
  %3917 = fmul fast float %3913, %3757
  %3918 = call float @dx.op.binary.f32(i32 35, float %3537, float %3917)  ; FMax(a,b)
  %3919 = and i32 %3611, 16
  %3920 = icmp eq i32 %3919, 0
  br i1 %3920, label %3943, label %3921

; <label>:3921                                    ; preds = %3860
  %3922 = bitcast float %3605 to i32
  %3923 = add i32 %3602, 0
  %3924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3923, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3925 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3924, %dx.types.Handle %3770, float %3698, float %3701, float undef, float undef, i32 0, i32 0, i32 undef, float %3703, float %3705, float undef, float %3707, float %3709, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3926 = extractvalue %dx.types.ResRet.f32 %3925, 0
  %3927 = extractvalue %dx.types.ResRet.f32 %3925, 1
  %3928 = extractvalue %dx.types.ResRet.f32 %3925, 2
  %3929 = and i32 %3922, 65535
  %3930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3929)  ; LegacyF16ToF32(value)
  %3931 = fmul fast float %3926, %3596
  %3932 = fmul fast float %3927, %3597
  %3933 = fmul fast float %3928, %3598
  %3934 = and i32 %3611, 16384
  %3935 = icmp ne i32 %3934, 0
  %3936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3937 = extractvalue %dx.types.CBufRet.f32 %3936, 0
  %3938 = select i1 %3935, float %3937, float 1.000000e+00
  %3939 = fmul fast float %3938, %3930
  %3940 = fmul fast float %3931, %3939
  %3941 = fmul fast float %3932, %3939
  %3942 = fmul fast float %3933, %3939
  br label %3943

; <label>:3943                                    ; preds = %3921, %3860
  %3944 = phi float [ %3940, %3921 ], [ 0.000000e+00, %3860 ]
  %3945 = phi float [ %3941, %3921 ], [ 0.000000e+00, %3860 ]
  %3946 = phi float [ %3942, %3921 ], [ 0.000000e+00, %3860 ]
  %3947 = fsub fast float %3944, %3541
  %3948 = fsub fast float %3945, %3542
  %3949 = fsub fast float %3946, %3543
  %3950 = fmul fast float %3947, %3757
  %3951 = fmul fast float %3948, %3757
  %3952 = fmul fast float %3949, %3757
  %3953 = fadd fast float %3950, %3541
  %3954 = fadd fast float %3951, %3542
  %3955 = fadd fast float %3952, %3543
  br label %3660

; <label>:3956                                    ; preds = %3660
  br label %3957

; <label>:3957                                    ; preds = %3956, %3480
  %3958 = phi float [ 0.000000e+00, %3480 ], [ %3661, %3956 ]
  %3959 = phi float [ %3449, %3480 ], [ %3662, %3956 ]
  %3960 = phi float [ %3430, %3480 ], [ %3663, %3956 ]
  %3961 = phi float [ 0.000000e+00, %3480 ], [ %3664, %3956 ]
  %3962 = phi float [ 0.000000e+00, %3480 ], [ %3665, %3956 ]
  %3963 = phi float [ %3424, %3480 ], [ %3666, %3956 ]
  %3964 = phi float [ %3425, %3480 ], [ %3667, %3956 ]
  %3965 = phi float [ %3426, %3480 ], [ %3668, %3956 ]
  %3966 = phi float [ %3475, %3480 ], [ %3669, %3956 ]
  %3967 = phi float [ %3476, %3480 ], [ %3670, %3956 ]
  %3968 = phi float [ %3477, %3480 ], [ %3671, %3956 ]
  %3969 = phi float [ %3429, %3480 ], [ %3672, %3956 ]
  %3970 = phi float [ %3428, %3480 ], [ %3673, %3956 ]
  %3971 = phi float [ 0.000000e+00, %3480 ], [ %3674, %3956 ]
  %3972 = phi float [ %3427, %3480 ], [ %3675, %3956 ]
  %3973 = phi float [ %3421, %3480 ], [ %3676, %3956 ]
  %3974 = phi float [ %3422, %3480 ], [ %3677, %3956 ]
  %3975 = phi float [ %3423, %3480 ], [ %3678, %3956 ]
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3966, float %3967, float %3968, float %3966, float %3967, float %3968)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = call float @dx.op.unary.f32(i32 25, float %3976)  ; Rsqrt(value)
  %3978 = fmul fast float %3977, %3966
  %3979 = fmul fast float %3977, %3967
  %3980 = fmul fast float %3977, %3968
  %3981 = fadd fast float %3971, %865
  %3982 = call float @dx.op.unary.f32(i32 7, float %3981)  ; Saturate(value)
  %3983 = call float @dx.op.dot3.f32(i32 55, float %3978, float %3979, float %3980, float %3978, float %3979, float %3980)  ; Dot3(ax,ay,az,bx,by,bz)
  %3984 = call float @dx.op.unary.f32(i32 25, float %3983)  ; Rsqrt(value)
  %3985 = fmul fast float %3984, %3978
  %3986 = fmul fast float %3984, %3979
  %3987 = fmul fast float %3984, %3980
  br label %3988

; <label>:3988                                    ; preds = %3957, %3418
  %3989 = phi float [ %3985, %3957 ], [ %3475, %3418 ]
  %3990 = phi float [ %3986, %3957 ], [ %3476, %3418 ]
  %3991 = phi float [ %3987, %3957 ], [ %3477, %3418 ]
  %3992 = phi float [ %3973, %3957 ], [ %3421, %3418 ]
  %3993 = phi float [ %3974, %3957 ], [ %3422, %3418 ]
  %3994 = phi float [ %3975, %3957 ], [ %3423, %3418 ]
  %3995 = phi float [ %3963, %3957 ], [ %3424, %3418 ]
  %3996 = phi float [ %3964, %3957 ], [ %3425, %3418 ]
  %3997 = phi float [ %3965, %3957 ], [ %3426, %3418 ]
  %3998 = phi float [ %3972, %3957 ], [ %3427, %3418 ]
  %3999 = phi float [ %3982, %3957 ], [ %865, %3418 ]
  %4000 = phi float [ %3970, %3957 ], [ %3428, %3418 ]
  %4001 = phi float [ %3969, %3957 ], [ %3429, %3418 ]
  %4002 = phi float [ %3962, %3957 ], [ 0.000000e+00, %3418 ]
  %4003 = phi float [ %3961, %3957 ], [ 0.000000e+00, %3418 ]
  %4004 = phi float [ %3958, %3957 ], [ 0.000000e+00, %3418 ]
  %4005 = phi float [ %3959, %3957 ], [ %3449, %3418 ]
  %4006 = phi float [ %3960, %3957 ], [ %3430, %3418 ]
  %4007 = fadd fast float %3998, 0xBFB99999A0000000
  %4008 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4009 = fmul fast float %4008, 0x3FF1C71C80000000
  %4010 = call float @dx.op.binary.f32(i32 36, float %3998, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4011 = fsub fast float 1.000000e+00, %4009
  %4012 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4013 = fmul fast float %4012, %3992
  %4014 = fmul fast float %4012, %3993
  %4015 = fmul fast float %4012, %3994
  %4016 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4017 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4018 = call float @dx.op.unary.f32(i32 7, float %4015)  ; Saturate(value)
  %4019 = fmul fast float %4009, %3992
  %4020 = fmul fast float %4009, %3993
  %4021 = fmul fast float %4009, %3994
  %4022 = fadd fast float %4019, %4010
  %4023 = fadd fast float %4020, %4010
  %4024 = fadd fast float %4021, %4010
  %4025 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4026 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4027 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4028 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4029 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.i32 %4029, 3
  %4031 = and i32 %4030, 8
  %4032 = icmp ne i32 %4031, 0
  %4033 = call float @dx.op.binary.f32(i32 35, float %4016, float %3992)  ; FMax(a,b)
  %4034 = call float @dx.op.binary.f32(i32 35, float %4017, float %3992)  ; FMax(a,b)
  %4035 = call float @dx.op.binary.f32(i32 35, float %4018, float %3992)  ; FMax(a,b)
  %4036 = call float @dx.op.dot3.f32(i32 55, float %4016, float %4017, float %4018, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4037 = select i1 %160, float %3992, float %4016
  %4038 = select i1 %160, float %4036, float %4017
  %4039 = select i1 %160, float 1.000000e+00, float %4018
  %4040 = select i1 %4032, float %4033, float %4037
  %4041 = select i1 %4032, float %4034, float %4038
  %4042 = select i1 %4032, float %4035, float %4039
  %4043 = and i32 %136, 3
  %4044 = select i1 %130, i32 %4043, i32 0
  %4045 = icmp eq i32 %4044, 1
  br i1 %4045, label %4046, label %4122

; <label>:4046                                    ; preds = %3988
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.CBufRet.f32 %4047, 1
  %4050 = fadd fast float %4048, %119
  %4051 = fadd fast float %4049, %120
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4055 = fsub fast float %4050, %4053
  %4056 = fsub fast float %4051, %4054
  %4057 = fmul fast float %4055, %4055
  %4058 = fmul fast float %4056, %4056
  %4059 = fadd fast float %4057, %4058
  %4060 = call float @dx.op.unary.f32(i32 24, float %4059)  ; Sqrt(value)
  %4061 = extractvalue %dx.types.CBufRet.f32 %4052, 2
  %4062 = fcmp fast olt float %4060, %4061
  br i1 %4062, label %4063, label %4116

; <label>:4063                                    ; preds = %4046
  %4064 = extractvalue %dx.types.CBufRet.f32 %4047, 2
  %4065 = fadd fast float %4064, %121
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4071 = extractvalue %dx.types.CBufRet.f32 %4070, 0
  %4072 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4073 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4074 = extractvalue %dx.types.CBufRet.f32 %4070, 1
  %4075 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4076 = extractvalue %dx.types.CBufRet.f32 %4068, 3
  %4077 = extractvalue %dx.types.CBufRet.f32 %4070, 3
  %4078 = fadd fast float %4075, %4050
  %4079 = fadd fast float %4076, %4051
  %4080 = fadd fast float %4065, %4077
  %4081 = fmul fast float %4078, %4067
  %4082 = call float @dx.op.tertiary.f32(i32 46, float %4079, float %4069, float %4081)  ; FMad(a,b,c)
  %4083 = call float @dx.op.tertiary.f32(i32 46, float %4080, float %4071, float %4082)  ; FMad(a,b,c)
  %4084 = fmul fast float %4078, %4072
  %4085 = call float @dx.op.tertiary.f32(i32 46, float %4079, float %4073, float %4084)  ; FMad(a,b,c)
  %4086 = call float @dx.op.tertiary.f32(i32 46, float %4080, float %4074, float %4085)  ; FMad(a,b,c)
  %4087 = fsub fast float %4083, %4075
  %4088 = fsub fast float %4086, %4076
  %4089 = fsub fast float %4087, %4053
  %4090 = fadd fast float %4089, %4061
  %4091 = fsub fast float %4088, %4054
  %4092 = fadd fast float %4091, %4061
  %4093 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4094 = fmul fast float %4090, %4093
  %4095 = fmul fast float %4092, %4093
  %4096 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4097 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4098 = fsub fast float 1.000000e+00, %4096
  %4099 = fsub fast float 1.000000e+00, %4097
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %4098, float %4099, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = fcmp fast ugt float %4101, 0.000000e+00
  br i1 %4102, label %4103, label %4116

; <label>:4103                                    ; preds = %4063
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 2
  %4106 = fmul fast float %4105, %4101
  %4107 = extractvalue %dx.types.CBufRet.f32 %4104, 3
  %4108 = fadd fast float %4107, %4106
  %4109 = extractvalue %dx.types.CBufRet.f32 %4070, 2
  %4110 = fadd fast float %4108, %4077
  %4111 = fmul fast float %4083, %4071
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4074, float %4111)  ; FMad(a,b,c)
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4109, float %4112)  ; FMad(a,b,c)
  %4114 = fsub fast float %4113, %4077
  %4115 = fsub fast float %4114, %4064
  br label %4116

; <label>:4116                                    ; preds = %4103, %4063, %4046
  %4117 = phi i1 [ true, %4103 ], [ false, %4063 ], [ false, %4046 ]
  %4118 = phi float [ %4115, %4103 ], [ -1.310720e+05, %4063 ], [ -1.310720e+05, %4046 ]
  %4119 = fsub fast float %4118, %121
  %4120 = call float @dx.op.unary.f32(i32 7, float %4119)  ; Saturate(value)
  %4121 = select i1 %4117, float %4120, float 1.000000e+00
  br label %4122

; <label>:4122                                    ; preds = %4116, %3988
  %4123 = phi float [ %4121, %4116 ], [ 0.000000e+00, %3988 ]
  %4124 = icmp eq i32 %4044, 3
  %4125 = select i1 %4124, float 1.000000e+00, float %4123
  %4126 = call float @dx.op.binary.f32(i32 35, float %4004, float %4125)  ; FMax(a,b)
  %4127 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  %4128 = fcmp fast une float %4127, 0.000000e+00
  %4129 = call float @dx.op.dot3.f32(i32 55, float %119, float %120, float %121, float %119, float %120, float %121)  ; Dot3(ax,ay,az,bx,by,bz)
  %4130 = call float @dx.op.unary.f32(i32 25, float %4129)  ; Rsqrt(value)
  br i1 %4128, label %4138, label %4131

; <label>:4131                                    ; preds = %4122
  %4132 = fmul fast float %4130, %119
  %4133 = fmul fast float %4130, %120
  %4134 = fmul fast float %4130, %121
  %4135 = fsub fast float -0.000000e+00, %4132
  %4136 = fsub fast float -0.000000e+00, %4133
  %4137 = fsub fast float -0.000000e+00, %4134
  br label %4306

; <label>:4138                                    ; preds = %4122
  %4139 = fmul fast float %119, %4130
  %4140 = fsub fast float -0.000000e+00, %4139
  %4141 = fmul fast float %120, %4130
  %4142 = fsub fast float -0.000000e+00, %4141
  %4143 = fmul fast float %121, %4130
  %4144 = fsub fast float -0.000000e+00, %4143
  %4145 = call float @dx.op.dot3.f32(i32 55, float %4140, float %4142, float %4144, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4146 = fmul fast float %4127, 2.500000e+00
  %4147 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4148 = fmul fast float %4127, 0x4013FFFFE0000000
  %4149 = fadd fast float %4148, 0xBFFFFFFFE0000000
  %4150 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4151 = fmul fast float %4127, 0x4004000020000000
  %4152 = fadd fast float %4151, 0xBFF8000040000000
  %4153 = call float @dx.op.unary.f32(i32 7, float %4152)  ; Saturate(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4155 = fmul fast float %4007, 1.000000e+01
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = fmul fast float %4156, 2.000000e+00
  %4158 = fsub fast float 3.000000e+00, %4157
  %4159 = fmul fast float %4156, %4156
  %4160 = fmul fast float %4159, %4158
  %4161 = fsub fast float 1.000000e+00, %4160
  %4162 = fsub fast float 0x3FE3333340000000, %4028
  %4163 = fmul fast float %4162, 0x400AAAAAA0000000
  %4164 = call float @dx.op.unary.f32(i32 7, float %4163)  ; Saturate(value)
  %4165 = fmul fast float %4161, %4164
  %4166 = fmul fast float %4040, 0x3FEA2B8620000000
  %4167 = fmul fast float %4041, 0x3FEA2B8620000000
  %4168 = fmul fast float %4042, 0x3FEA2B8620000000
  %4169 = fadd fast float %4166, 0x3FC81DFBA0000000
  %4170 = fmul fast float %4169, %4040
  %4171 = fadd fast float %4170, 0x3F910E6020000000
  %4172 = fadd fast float %4167, 0x3FC81DFBA0000000
  %4173 = fmul fast float %4172, %4041
  %4174 = fadd fast float %4173, 0x3F910E6020000000
  %4175 = fadd fast float %4168, 0x3FC81DFBA0000000
  %4176 = fmul fast float %4175, %4042
  %4177 = fadd fast float %4176, 0x3F910E6020000000
  %4178 = call float @dx.op.unary.f32(i32 7, float %4171)  ; Saturate(value)
  %4179 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4180 = call float @dx.op.unary.f32(i32 7, float %4177)  ; Saturate(value)
  %4181 = fsub fast float %4178, %4040
  %4182 = fsub fast float %4179, %4041
  %4183 = fsub fast float %4180, %4042
  %4184 = fmul fast float %4181, %4154
  %4185 = fmul fast float %4184, %4165
  %4186 = fmul fast float %4182, %4154
  %4187 = fmul fast float %4186, %4165
  %4188 = fmul fast float %4183, %4154
  %4189 = fmul fast float %4188, %4165
  %4190 = fadd fast float %4185, %4040
  %4191 = fadd fast float %4187, %4041
  %4192 = fadd fast float %4189, %4042
  %4193 = fmul fast float %4001, %4001
  %4194 = fmul fast float %4193, %4193
  %4195 = fadd fast float %4150, 1.000000e+00
  %4196 = fsub fast float %4195, %4165
  %4197 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4198 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4199 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4200 = fsub fast float 1.000000e+00, %4194
  %4201 = call float @dx.op.binary.f32(i32 36, float %4197, float %4200)  ; FMin(a,b)
  %4202 = call float @dx.op.unary.f32(i32 7, float %4153)  ; Saturate(value)
  %4203 = call float @dx.op.binary.f32(i32 35, float %4201, float %4202)  ; FMax(a,b)
  %4204 = fadd fast float %4199, 0xBFE4CCCCC0000000
  %4205 = fmul fast float %4204, 0x4006DB6DA0000000
  %4206 = call float @dx.op.unary.f32(i32 7, float %4205)  ; Saturate(value)
  %4207 = fmul fast float %4206, 2.000000e+00
  %4208 = fsub fast float 3.000000e+00, %4207
  %4209 = bitcast float %4025 to i32
  %4210 = ashr i32 %4209, 1
  %4211 = add nsw i32 %4210, 532487669
  %4212 = bitcast i32 %4211 to float
  %4213 = fsub fast float 1.000000e+00, %4212
  %4214 = bitcast float %4213 to i32
  %4215 = sub nsw i32 2129859010, %4214
  %4216 = bitcast i32 %4215 to float
  %4217 = fmul fast float %4216, 2.000000e+00
  %4218 = bitcast float %4026 to i32
  %4219 = ashr i32 %4218, 1
  %4220 = add nsw i32 %4219, 532487669
  %4221 = bitcast i32 %4220 to float
  %4222 = fsub fast float 1.000000e+00, %4221
  %4223 = bitcast float %4222 to i32
  %4224 = sub nsw i32 2129859010, %4223
  %4225 = bitcast i32 %4224 to float
  %4226 = fmul fast float %4225, 2.000000e+00
  %4227 = bitcast float %4027 to i32
  %4228 = ashr i32 %4227, 1
  %4229 = add nsw i32 %4228, 532487669
  %4230 = bitcast i32 %4229 to float
  %4231 = fsub fast float 1.000000e+00, %4230
  %4232 = bitcast float %4231 to i32
  %4233 = sub nsw i32 2129859010, %4232
  %4234 = bitcast i32 %4233 to float
  %4235 = fmul fast float %4234, 2.000000e+00
  %4236 = fsub fast float 0x4002A9FBE0000000, %4217
  %4237 = fadd fast float %4217, 0x3FD54FDF00000000
  %4238 = bitcast float %4237 to i32
  %4239 = sub nsw i32 2129859010, %4238
  %4240 = bitcast i32 %4239 to float
  %4241 = fmul fast float %4240, %4236
  %4242 = fmul fast float %4241, %4241
  %4243 = fsub fast float 0x4002A9FBE0000000, %4226
  %4244 = fadd fast float %4226, 0x3FD54FDF00000000
  %4245 = bitcast float %4244 to i32
  %4246 = sub nsw i32 2129859010, %4245
  %4247 = bitcast i32 %4246 to float
  %4248 = fmul fast float %4247, %4243
  %4249 = fmul fast float %4248, %4248
  %4250 = fsub fast float 0x4002A9FBE0000000, %4235
  %4251 = fadd fast float %4235, 0x3FD54FDF00000000
  %4252 = bitcast float %4251 to i32
  %4253 = sub nsw i32 2129859010, %4252
  %4254 = bitcast i32 %4253 to float
  %4255 = fmul fast float %4254, %4250
  %4256 = fmul fast float %4255, %4255
  %4257 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4242)  ; FMax(a,b)
  %4258 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4249)  ; FMax(a,b)
  %4259 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4256)  ; FMax(a,b)
  %4260 = fsub fast float 1.000000e+00, %4145
  %4261 = fadd fast float %4260, %4161
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = fsub fast float 1.000000e+00, %4125
  %4264 = fmul fast float %4203, %4263
  %4265 = fmul fast float %4206, %4206
  %4266 = fmul fast float %4265, %4264
  %4267 = fmul fast float %4266, %4208
  %4268 = fmul fast float %4263, 0xBFE99999A0000000
  %4269 = fmul fast float %4268, %4154
  %4270 = fmul fast float %4269, %4165
  %4271 = fadd fast float %4270, 1.000000e+00
  %4272 = fadd fast float %4028, -1.000000e+00
  %4273 = fmul fast float %4271, %4272
  %4274 = fadd fast float %4273, 1.000000e+00
  %4275 = fsub fast float %4257, %4025
  %4276 = fsub fast float %4258, %4026
  %4277 = fsub fast float %4259, %4027
  %4278 = fmul fast float %4267, %4275
  %4279 = fmul fast float %4267, %4276
  %4280 = fmul fast float %4267, %4277
  %4281 = fadd fast float %4278, %4025
  %4282 = fadd fast float %4279, %4026
  %4283 = fadd fast float %4280, %4027
  %4284 = fsub fast float %63, %3989
  %4285 = fsub fast float %64, %3990
  %4286 = fsub fast float %65, %3991
  %4287 = fmul fast float %4267, %4284
  %4288 = fmul fast float %4267, %4285
  %4289 = fmul fast float %4267, %4286
  %4290 = fadd fast float %4287, %3989
  %4291 = fadd fast float %4288, %3990
  %4292 = fadd fast float %4289, %3991
  %4293 = fmul fast float %4267, %4262
  %4294 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4295 = fsub fast float 1.000000e+00, %4294
  %4296 = fmul fast float %4293, %4295
  %4297 = fadd fast float %4296, %4294
  %4298 = fsub fast float 1.000000e+00, %4001
  %4299 = fmul fast float %4267, %4298
  %4300 = fadd fast float %4299, %4001
  %4301 = call float @dx.op.dot3.f32(i32 55, float %4290, float %4291, float %4292, float %4290, float %4291, float %4292)  ; Dot3(ax,ay,az,bx,by,bz)
  %4302 = call float @dx.op.unary.f32(i32 25, float %4301)  ; Rsqrt(value)
  %4303 = fmul fast float %4290, %4302
  %4304 = fmul fast float %4291, %4302
  %4305 = fmul fast float %4292, %4302
  br label %4306

; <label>:4306                                    ; preds = %4138, %4131
  %4307 = phi float [ %4137, %4131 ], [ %4144, %4138 ]
  %4308 = phi float [ %4136, %4131 ], [ %4142, %4138 ]
  %4309 = phi float [ %4135, %4131 ], [ %4140, %4138 ]
  %4310 = phi float [ %4134, %4131 ], [ %4143, %4138 ]
  %4311 = phi float [ %4133, %4131 ], [ %4141, %4138 ]
  %4312 = phi float [ %4132, %4131 ], [ %4139, %4138 ]
  %4313 = phi float [ %4025, %4131 ], [ %4281, %4138 ]
  %4314 = phi float [ %4026, %4131 ], [ %4282, %4138 ]
  %4315 = phi float [ %4027, %4131 ], [ %4283, %4138 ]
  %4316 = phi float [ %4040, %4131 ], [ %4190, %4138 ]
  %4317 = phi float [ %4041, %4131 ], [ %4191, %4138 ]
  %4318 = phi float [ %4042, %4131 ], [ %4192, %4138 ]
  %4319 = phi float [ %3989, %4131 ], [ %4303, %4138 ]
  %4320 = phi float [ %3990, %4131 ], [ %4304, %4138 ]
  %4321 = phi float [ %3991, %4131 ], [ %4305, %4138 ]
  %4322 = phi float [ %4028, %4131 ], [ %4297, %4138 ]
  %4323 = phi float [ %4001, %4131 ], [ %4300, %4138 ]
  %4324 = select i1 %160, float 0.000000e+00, float %4315
  %4325 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4320, float %4321, float %4309, float %4308, float %4307)  ; Dot3(ax,ay,az,bx,by,bz)
  %4326 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4327 = call float @dx.op.dot3.f32(i32 55, float %4312, float %4311, float %4310, float %4319, float %4320, float %4321)  ; Dot3(ax,ay,az,bx,by,bz)
  %4328 = fmul fast float %4327, 2.000000e+00
  %4329 = fmul fast float %4328, %4319
  %4330 = fmul fast float %4328, %4320
  %4331 = fmul fast float %4328, %4321
  %4332 = fsub fast float %4312, %4329
  %4333 = fsub fast float %4311, %4330
  %4334 = fsub fast float %4310, %4331
  %4335 = call float @dx.op.binary.f32(i32 36, float %4323, float 1.000000e+00)  ; FMin(a,b)
  %4336 = fsub fast float 1.000000e+00, %4323
  %4337 = bitcast float %4336 to i32
  %4338 = sub nsw i32 2129859010, %4337
  %4339 = bitcast i32 %4338 to float
  %4340 = fsub fast float 1.000000e+00, %33
  %4341 = call float @dx.op.dot3.f32(i32 55, float %83, float %84, float %85, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4342 = call float @dx.op.binary.f32(i32 35, float %4341, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4343 = fdiv fast float %4340, %4342
  %4344 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4320, float %4321, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4346 = fmul fast float %4345, 5.000000e-01
  %4347 = fadd fast float %4346, 5.000000e-01
  %4348 = fmul fast float %4347, %33
  %4349 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4320, float %4321, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4349)  ; Saturate(value)
  %4351 = fmul fast float %4350, %4343
  %4352 = fadd fast float %4348, %4351
  %4353 = fsub fast float 5.000000e-01, %4346
  %4354 = fmul fast float %4353, %4316
  %4355 = fmul fast float %4353, %4317
  %4356 = fmul fast float %4353, %4318
  %4357 = fadd fast float %4352, %4354
  %4358 = fadd fast float %4352, %4355
  %4359 = fadd fast float %4352, %4356
  %4360 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4361 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4362 = fmul fast float %4361, 5.000000e-01
  %4363 = fadd fast float %4362, 5.000000e-01
  %4364 = fmul fast float %4363, %33
  %4365 = call float @dx.op.dot3.f32(i32 55, float %4332, float %4333, float %4334, float %83, float %84, float %85)  ; Dot3(ax,ay,az,bx,by,bz)
  %4366 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4367 = fmul fast float %4366, %4343
  %4368 = fadd fast float %4364, %4367
  %4369 = fsub fast float 5.000000e-01, %4362
  %4370 = fmul fast float %4369, %4316
  %4371 = fmul fast float %4369, %4317
  %4372 = fmul fast float %4369, %4318
  %4373 = fadd fast float %4368, %4370
  %4374 = fadd fast float %4368, %4371
  %4375 = fadd fast float %4368, %4372
  %4376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.f32 %4376, 0
  %4378 = call float @dx.op.binary.f32(i32 36, float %4316, float %4377)  ; FMin(a,b)
  %4379 = fsub fast float 1.000000e+00, %4335
  %4380 = fmul fast float %4378, %4379
  %4381 = fsub fast float 1.000000e+00, %4380
  %4382 = bitcast float %4381 to i32
  %4383 = sub nsw i32 2129859010, %4382
  %4384 = bitcast i32 %4383 to float
  %4385 = call float @dx.op.binary.f32(i32 36, float %4317, float %4377)  ; FMin(a,b)
  %4386 = fmul fast float %4385, %4379
  %4387 = fsub fast float 1.000000e+00, %4386
  %4388 = bitcast float %4387 to i32
  %4389 = sub nsw i32 2129859010, %4388
  %4390 = bitcast i32 %4389 to float
  %4391 = call float @dx.op.binary.f32(i32 36, float %4318, float %4377)  ; FMin(a,b)
  %4392 = fmul fast float %4391, %4379
  %4393 = fsub fast float 1.000000e+00, %4392
  %4394 = bitcast float %4393 to i32
  %4395 = sub nsw i32 2129859010, %4394
  %4396 = bitcast i32 %4395 to float
  %4397 = fmul fast float %4335, %34
  %4398 = fmul fast float %4397, %4357
  %4399 = fmul fast float %4398, %4384
  %4400 = fmul fast float %4335, %35
  %4401 = fmul fast float %4400, %4358
  %4402 = fmul fast float %4401, %4390
  %4403 = fmul fast float %4335, %36
  %4404 = fmul fast float %4403, %4359
  %4405 = fmul fast float %4404, %4396
  %4406 = call float @dx.op.binary.f32(i32 36, float %4313, float %4377)  ; FMin(a,b)
  %4407 = fmul fast float %4406, %4379
  %4408 = fsub fast float 1.000000e+00, %4407
  %4409 = bitcast float %4408 to i32
  %4410 = sub nsw i32 2129859010, %4409
  %4411 = bitcast i32 %4410 to float
  %4412 = call float @dx.op.binary.f32(i32 36, float %4314, float %4377)  ; FMin(a,b)
  %4413 = fmul fast float %4412, %4379
  %4414 = fsub fast float 1.000000e+00, %4413
  %4415 = bitcast float %4414 to i32
  %4416 = sub nsw i32 2129859010, %4415
  %4417 = bitcast i32 %4416 to float
  %4418 = call float @dx.op.binary.f32(i32 36, float %4324, float %4377)  ; FMin(a,b)
  %4419 = fmul fast float %4418, %4379
  %4420 = fsub fast float 1.000000e+00, %4419
  %4421 = bitcast float %4420 to i32
  %4422 = sub nsw i32 2129859010, %4421
  %4423 = bitcast i32 %4422 to float
  %4424 = fmul fast float %4397, %4373
  %4425 = fmul fast float %4424, %4411
  %4426 = fmul fast float %4400, %4374
  %4427 = fmul fast float %4426, %4417
  %4428 = fmul fast float %4403, %4375
  %4429 = fmul fast float %4428, %4423
  %4430 = call float @dx.op.dot3.f32(i32 55, float %4399, float %4402, float %4405, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4431 = select i1 %160, float 0.000000e+00, float %4399
  %4432 = select i1 %160, float %4430, float %4402
  %4433 = select i1 %160, float 0.000000e+00, float %4405
  %4434 = call float @dx.op.dot3.f32(i32 55, float %4425, float %4427, float %4429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4435 = select i1 %160, float 0.000000e+00, float %4425
  %4436 = select i1 %160, float %4434, float %4427
  %4437 = select i1 %160, float 0.000000e+00, float %4429
  %4438 = fmul fast float %4326, 9.843750e-01
  %4439 = fmul fast float %4322, 9.843750e-01
  %4440 = fadd fast float %4438, 7.812500e-03
  %4441 = fadd fast float %4439, 7.812500e-03
  %4442 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %4440, float %4441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4443 = extractvalue %dx.types.ResRet.f32 %4442, 2
  %4444 = extractvalue %dx.types.ResRet.f32 %4442, 3
  %4445 = fmul fast float %4443, %4313
  %4446 = fmul fast float %4443, %4314
  %4447 = fmul fast float %4443, %4324
  %4448 = fadd fast float %4445, %4444
  %4449 = fadd fast float %4446, %4444
  %4450 = fadd fast float %4447, %4444
  %4451 = fcmp fast ogt float %4002, 0.000000e+00
  br i1 %4451, label %4452, label %4478

; <label>:4452                                    ; preds = %4306
  %4453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4002, float %4326, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4454 = extractvalue %dx.types.ResRet.f32 %4453, 0
  %4455 = extractvalue %dx.types.ResRet.f32 %4453, 1
  %4456 = extractvalue %dx.types.ResRet.f32 %4453, 2
  %4457 = fadd fast float %4454, -5.000000e-01
  %4458 = fadd fast float %4455, -5.000000e-01
  %4459 = fadd fast float %4456, -5.000000e-01
  %4460 = fsub fast float 1.000000e+00, %4313
  %4461 = fsub fast float 1.000000e+00, %4314
  %4462 = fsub fast float 1.000000e+00, %4324
  %4463 = fmul fast float %4313, 4.000000e+00
  %4464 = fmul fast float %4463, %4460
  %4465 = fmul fast float %4464, %4457
  %4466 = fmul fast float %4314, 4.000000e+00
  %4467 = fmul fast float %4466, %4461
  %4468 = fmul fast float %4467, %4458
  %4469 = fmul fast float %4324, 4.000000e+00
  %4470 = fmul fast float %4469, %4462
  %4471 = fmul fast float %4470, %4459
  %4472 = fadd fast float %4465, %4448
  %4473 = fadd fast float %4468, %4449
  %4474 = fadd fast float %4471, %4450
  %4475 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4476 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4477 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  br label %4478

; <label>:4478                                    ; preds = %4452, %4306
  %4479 = phi float [ %4475, %4452 ], [ %4448, %4306 ]
  %4480 = phi float [ %4476, %4452 ], [ %4449, %4306 ]
  %4481 = phi float [ %4477, %4452 ], [ %4450, %4306 ]
  %4482 = call float @dx.op.binary.f32(i32 35, float %4480, float %4481)  ; FMax(a,b)
  %4483 = call float @dx.op.binary.f32(i32 35, float %4479, float %4482)  ; FMax(a,b)
  %4484 = fsub fast float 1.000000e+00, %4483
  %4485 = fmul fast float %4484, %4431
  %4486 = fmul fast float %4484, %4432
  %4487 = fmul fast float %4484, %4433
  %4488 = call float @dx.op.dot3.f32(i32 55, float %4316, float %4317, float %4318, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4489 = fcmp fast ogt float %4488, 0x3E7FF19E20000000
  %4490 = fdiv fast float 1.000000e+00, %4488
  %4491 = select i1 %4489, float %4490, float 0.000000e+00
  %4492 = fmul fast float %4491, %4316
  %4493 = fmul fast float %4491, %4317
  %4494 = fmul fast float %4491, %4318
  %4495 = fadd fast float %4492, -1.000000e+00
  %4496 = fadd fast float %4493, -1.000000e+00
  %4497 = fadd fast float %4494, -1.000000e+00
  %4498 = fmul fast float %4495, 5.000000e-01
  %4499 = fmul fast float %4496, 5.000000e-01
  %4500 = fmul fast float %4497, 5.000000e-01
  %4501 = fadd fast float %4498, 1.000000e+00
  %4502 = fadd fast float %4499, 1.000000e+00
  %4503 = fadd fast float %4500, 1.000000e+00
  %4504 = fmul fast float %4479, %4435
  %4505 = fmul fast float %4480, %4436
  %4506 = fmul fast float %4481, %4437
  %4507 = fsub fast float 1.000000e+00, %4326
  %4508 = bitcast float %4507 to i32
  %4509 = sitofp i32 %4508 to float
  %4510 = fmul fast float %4509, 5.000000e+00
  %4511 = fadd fast float %4510, 0xC1EFBF8940000000
  %4512 = fptosi float %4511 to i32
  %4513 = bitcast i32 %4512 to float
  %4514 = fmul fast float %4513, %4003
  %4515 = fmul fast float %4431, %4514
  %4516 = fmul fast float %4515, %4484
  %4517 = fmul fast float %4516, %4501
  %4518 = fmul fast float %4432, %4514
  %4519 = fmul fast float %4518, %4484
  %4520 = fmul fast float %4519, %4502
  %4521 = fmul fast float %4433, %4514
  %4522 = fmul fast float %4521, %4484
  %4523 = fmul fast float %4522, %4503
  %4524 = fmul fast float %4485, %3999
  %4525 = fmul fast float %4486, %3999
  %4526 = fmul fast float %4487, %3999
  %4527 = fadd fast float %4504, %3995
  %4528 = fadd fast float %4527, %4517
  %4529 = fmul fast float %4528, %3999
  %4530 = fadd fast float %4505, %3996
  %4531 = fadd fast float %4530, %4520
  %4532 = fmul fast float %4531, %3999
  %4533 = fadd fast float %4506, %3997
  %4534 = fadd fast float %4533, %4523
  %4535 = fmul fast float %4534, %3999
  %4536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4537 = extractvalue %dx.types.CBufRet.f32 %4536, 3
  %4538 = fcmp fast oeq float %4537, 0.000000e+00
  br i1 %4538, label %4766, label %4539

; <label>:4539                                    ; preds = %4478
  %4540 = extractvalue %dx.types.CBufRet.f32 %4536, 0
  %4541 = extractvalue %dx.types.CBufRet.f32 %4536, 1
  %4542 = extractvalue %dx.types.CBufRet.f32 %4536, 2
  %4543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4544 = extractvalue %dx.types.CBufRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.CBufRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.CBufRet.f32 %4543, 2
  %4547 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4548 = extractvalue %dx.types.CBufRet.f32 %4547, 0
  %4549 = extractvalue %dx.types.CBufRet.f32 %4547, 1
  %4550 = call float @dx.op.dot3.f32(i32 55, float %4544, float %4545, float %4546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4551 = select i1 %160, float %4548, float %4544
  %4552 = select i1 %160, float %4550, float %4545
  %4553 = select i1 %160, float %4549, float %4546
  %4554 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4555 = extractvalue %dx.types.CBufRet.f32 %4554, 1
  %4556 = fcmp fast une float %4555, 0.000000e+00
  br i1 %4556, label %4557, label %4574

; <label>:4557                                    ; preds = %4539
  %4558 = fptoui float %56 to i32
  %4559 = fptoui float %57 to i32
  %4560 = lshr i32 %4558, 4
  %4561 = lshr i32 %4559, 4
  %4562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4563 = extractvalue %dx.types.CBufRet.f32 %4562, 0
  %4564 = fptoui float %4563 to i32
  %4565 = add i32 %4564, 15
  %4566 = lshr i32 %4565, 4
  %4567 = mul i32 %4566, %4561
  %4568 = add i32 %4567, %4560
  %4569 = shl i32 %4568, 3
  %4570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4569, i32 undef)  ; BufferLoad(srv,index,wot)
  %4571 = extractvalue %dx.types.ResRet.i32 %4570, 0
  %4572 = and i32 %4571, -268435456
  %4573 = icmp eq i32 %4572, -1342177280
  br i1 %4573, label %4584, label %4574

; <label>:4574                                    ; preds = %4557, %4539
  %4575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4576 = extractvalue %dx.types.CBufRet.f32 %4575, 2
  %4577 = extractvalue %dx.types.CBufRet.f32 %4575, 3
  %4578 = fmul fast float %4576, %56
  %4579 = fmul fast float %4577, %57
  %4580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %4578, float %4579, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4581 = extractvalue %dx.types.ResRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.ResRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.ResRet.f32 %4580, 2
  br label %4584

; <label>:4584                                    ; preds = %4574, %4557
  %4585 = phi float [ %4581, %4574 ], [ 0.000000e+00, %4557 ]
  %4586 = phi float [ %4582, %4574 ], [ 0.000000e+00, %4557 ]
  %4587 = phi float [ %4583, %4574 ], [ 0.000000e+00, %4557 ]
  %4588 = call float @dx.op.binary.f32(i32 36, float %4586, float %4587)  ; FMin(a,b)
  %4589 = call float @dx.op.binary.f32(i32 36, float %4585, float %4588)  ; FMin(a,b)
  %4590 = fcmp fast ogt float %4589, 0.000000e+00
  br i1 %4590, label %4591, label %4766, !dx.controlflow.hints !58

; <label>:4591                                    ; preds = %4584
  %4592 = fmul fast float %4585, %4551
  %4593 = fmul fast float %4586, %4552
  %4594 = fmul fast float %4587, %4553
  %4595 = fsub fast float %4540, %4312
  %4596 = fsub fast float %4541, %4311
  %4597 = fsub fast float %4542, %4310
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float %4595, float %4596, float %4597)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.unary.f32(i32 25, float %4598)  ; Rsqrt(value)
  %4600 = fmul fast float %4599, %4595
  %4601 = fmul fast float %4599, %4596
  %4602 = fmul fast float %4599, %4597
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4540, float %4541, float %4542, float %4319, float %4320, float %4321)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4309, float %4308, float %4307, float %4600, float %4601, float %4602)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4606 = fmul fast float %4605, %4605
  %4607 = fmul fast float %4606, %4339
  %4608 = call float @dx.op.unary.f32(i32 7, float %4607)  ; Saturate(value)
  %4609 = fmul fast float %4608, %4605
  %4610 = call float @dx.op.dot3.f32(i32 55, float %4319, float %4320, float %4321, float %4600, float %4601, float %4602)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = fmul fast float %4610, %4610
  %4612 = call float @dx.op.unary.f32(i32 6, float %4603)  ; FAbs(value)
  %4613 = fsub fast float 1.000000e+00, %4322
  %4614 = call float @dx.op.binary.f32(i32 35, float %4613, float 0x3F847AE140000000)  ; FMax(a,b)
  %4615 = fmul fast float %4614, %4614
  %4616 = fmul fast float %4615, %4615
  %4617 = fsub fast float 1.000000e+00, %4616
  %4618 = fmul fast float %4326, %4326
  %4619 = fmul fast float %4618, %4617
  %4620 = fadd fast float %4619, %4616
  %4621 = bitcast float %4620 to i32
  %4622 = ashr i32 %4621, 1
  %4623 = add nsw i32 %4622, 532487669
  %4624 = bitcast i32 %4623 to float
  %4625 = fadd fast float %4624, %4326
  %4626 = fmul fast float %4616, %4611
  %4627 = fsub fast float 1.000000e+00, %4611
  %4628 = fadd fast float %4627, %4626
  %4629 = fmul fast float %4612, %4612
  %4630 = fmul fast float %4629, %4617
  %4631 = fadd fast float %4630, %4616
  %4632 = bitcast float %4631 to i32
  %4633 = ashr i32 %4632, 1
  %4634 = add nsw i32 %4633, 532487669
  %4635 = bitcast i32 %4634 to float
  %4636 = fadd fast float %4635, %4612
  %4637 = fmul fast float %4628, %4628
  %4638 = fmul fast float %4637, %4625
  %4639 = fmul fast float %4638, %4636
  %4640 = fdiv fast float 0x3FF0A00000000000, %4639
  %4641 = fmul fast float %4640, %4616
  %4642 = call float @dx.op.unary.f32(i32 6, float %4604)  ; FAbs(value)
  %4643 = fsub fast float 1.000000e+00, %4642
  %4644 = bitcast float %4643 to i32
  %4645 = sitofp i32 %4644 to float
  %4646 = fmul fast float %4645, 5.000000e+00
  %4647 = fadd fast float %4646, 0xC1EFBF8940000000
  %4648 = fptosi float %4647 to i32
  %4649 = bitcast i32 %4648 to float
  %4650 = fsub fast float 1.000000e+00, %4313
  %4651 = fsub fast float 1.000000e+00, %4314
  %4652 = fsub fast float 1.000000e+00, %4324
  %4653 = fmul fast float %4649, %4650
  %4654 = fmul fast float %4649, %4651
  %4655 = fmul fast float %4649, %4652
  %4656 = fadd fast float %4653, %4313
  %4657 = fadd fast float %4654, %4314
  %4658 = fadd fast float %4655, %4324
  br i1 %4451, label %4659, label %4682

; <label>:4659                                    ; preds = %4591
  %4660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4002, float %4642, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 0
  %4662 = extractvalue %dx.types.ResRet.f32 %4660, 1
  %4663 = extractvalue %dx.types.ResRet.f32 %4660, 2
  %4664 = fadd fast float %4661, -5.000000e-01
  %4665 = fadd fast float %4662, -5.000000e-01
  %4666 = fadd fast float %4663, -5.000000e-01
  %4667 = fmul fast float %4313, 4.000000e+00
  %4668 = fmul fast float %4667, %4650
  %4669 = fmul fast float %4668, %4664
  %4670 = fmul fast float %4314, 4.000000e+00
  %4671 = fmul fast float %4670, %4651
  %4672 = fmul fast float %4671, %4665
  %4673 = fmul fast float %4324, 4.000000e+00
  %4674 = fmul fast float %4673, %4652
  %4675 = fmul fast float %4674, %4666
  %4676 = fadd fast float %4669, %4656
  %4677 = fadd fast float %4672, %4657
  %4678 = fadd fast float %4675, %4658
  %4679 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4680 = call float @dx.op.unary.f32(i32 7, float %4677)  ; Saturate(value)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4678)  ; Saturate(value)
  br label %4682

; <label>:4682                                    ; preds = %4659, %4591
  %4683 = phi float [ %4679, %4659 ], [ %4656, %4591 ]
  %4684 = phi float [ %4680, %4659 ], [ %4657, %4591 ]
  %4685 = phi float [ %4681, %4659 ], [ %4658, %4591 ]
  %4686 = fmul fast float %4603, 9.843750e-01
  %4687 = fadd fast float %4686, 7.812500e-03
  %4688 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %4687, float %4441, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4689 = extractvalue %dx.types.ResRet.f32 %4688, 2
  %4690 = extractvalue %dx.types.ResRet.f32 %4688, 3
  %4691 = fmul fast float %4689, %4313
  %4692 = fmul fast float %4689, %4314
  %4693 = fmul fast float %4689, %4324
  %4694 = fadd fast float %4691, %4690
  %4695 = fadd fast float %4692, %4690
  %4696 = fadd fast float %4693, %4690
  br i1 %4451, label %4697, label %4720

; <label>:4697                                    ; preds = %4682
  %4698 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4002, float %4603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = extractvalue %dx.types.ResRet.f32 %4698, 1
  %4701 = extractvalue %dx.types.ResRet.f32 %4698, 2
  %4702 = fadd fast float %4699, -5.000000e-01
  %4703 = fadd fast float %4700, -5.000000e-01
  %4704 = fadd fast float %4701, -5.000000e-01
  %4705 = fmul fast float %4313, 4.000000e+00
  %4706 = fmul fast float %4705, %4650
  %4707 = fmul fast float %4706, %4702
  %4708 = fmul fast float %4314, 4.000000e+00
  %4709 = fmul fast float %4708, %4651
  %4710 = fmul fast float %4709, %4703
  %4711 = fmul fast float %4324, 4.000000e+00
  %4712 = fmul fast float %4711, %4652
  %4713 = fmul fast float %4712, %4704
  %4714 = fadd fast float %4707, %4694
  %4715 = fadd fast float %4710, %4695
  %4716 = fadd fast float %4713, %4696
  %4717 = call float @dx.op.unary.f32(i32 7, float %4714)  ; Saturate(value)
  %4718 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4719 = call float @dx.op.unary.f32(i32 7, float %4716)  ; Saturate(value)
  br label %4720

; <label>:4720                                    ; preds = %4697, %4682
  %4721 = phi float [ %4717, %4697 ], [ %4694, %4682 ]
  %4722 = phi float [ %4718, %4697 ], [ %4695, %4682 ]
  %4723 = phi float [ %4719, %4697 ], [ %4696, %4682 ]
  %4724 = call float @dx.op.binary.f32(i32 35, float %4722, float %4723)  ; FMax(a,b)
  %4725 = call float @dx.op.binary.f32(i32 35, float %4721, float %4724)  ; FMax(a,b)
  %4726 = fsub fast float 1.000000e+00, %4725
  %4727 = fmul fast float %4683, %4641
  %4728 = fmul fast float %4684, %4641
  %4729 = fmul fast float %4685, %4641
  %4730 = fsub fast float 1.000000e+00, %4604
  %4731 = bitcast float %4730 to i32
  %4732 = sitofp i32 %4731 to float
  %4733 = fmul fast float %4732, 5.000000e+00
  %4734 = fadd fast float %4733, 0xC1EFBF8940000000
  %4735 = fptosi float %4734 to i32
  %4736 = bitcast i32 %4735 to float
  %4737 = fmul fast float %4736, %4003
  %4738 = fmul fast float %4726, %4737
  %4739 = fmul fast float %4738, %4501
  %4740 = fmul fast float %4738, %4502
  %4741 = fmul fast float %4738, %4503
  %4742 = fadd fast float %4739, %4727
  %4743 = fadd fast float %4740, %4728
  %4744 = fadd fast float %4741, %4729
  %4745 = fmul fast float %4609, %4592
  %4746 = fmul fast float %4745, %4726
  %4747 = fmul fast float %4609, %4593
  %4748 = fmul fast float %4747, %4726
  %4749 = fmul fast float %4609, %4594
  %4750 = fmul fast float %4749, %4726
  %4751 = fmul fast float %4745, %4742
  %4752 = fmul fast float %4747, %4743
  %4753 = fmul fast float %4749, %4744
  %4754 = fadd fast float %4746, %4485
  %4755 = fmul fast float %4754, %3999
  %4756 = fadd fast float %4748, %4486
  %4757 = fmul fast float %4756, %3999
  %4758 = fadd fast float %4750, %4487
  %4759 = fmul fast float %4758, %3999
  %4760 = fadd fast float %4751, %4528
  %4761 = fmul fast float %4760, %3999
  %4762 = fadd fast float %4752, %4531
  %4763 = fmul fast float %4762, %3999
  %4764 = fadd fast float %4753, %4534
  %4765 = fmul fast float %4764, %3999
  br label %4766

; <label>:4766                                    ; preds = %4720, %4584, %4478
  %4767 = phi float [ %4529, %4478 ], [ %4529, %4584 ], [ %4761, %4720 ]
  %4768 = phi float [ %4532, %4478 ], [ %4532, %4584 ], [ %4763, %4720 ]
  %4769 = phi float [ %4535, %4478 ], [ %4535, %4584 ], [ %4765, %4720 ]
  %4770 = phi float [ %4524, %4478 ], [ %4524, %4584 ], [ %4755, %4720 ]
  %4771 = phi float [ %4525, %4478 ], [ %4525, %4584 ], [ %4757, %4720 ]
  %4772 = phi float [ %4526, %4478 ], [ %4526, %4584 ], [ %4759, %4720 ]
  %4773 = call float @dx.op.unary.f32(i32 24, float %4316)  ; Sqrt(value)
  %4774 = call float @dx.op.unary.f32(i32 24, float %4317)  ; Sqrt(value)
  %4775 = call float @dx.op.unary.f32(i32 24, float %4318)  ; Sqrt(value)
  %4776 = fmul fast float %4773, %4770
  %4777 = fmul fast float %4774, %4771
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  br i1 %160, label %4780, label %4800

; <label>:4780                                    ; preds = %4766
  %4781 = fadd fast float %4772, %4005
  %4782 = fmul fast float %4781, %4006
  %4783 = fsub fast float 1.000000e+00, %4006
  %4784 = call float @dx.op.unary.f32(i32 7, float %4783)  ; Saturate(value)
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 3
  %4787 = fmul fast float %4786, %4784
  %4788 = fadd fast float %4787, %4782
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 0
  %4791 = fmul fast float %4790, %4507
  %4792 = fsub fast float %4788, %4791
  %4793 = fadd fast float %4777, %4776
  %4794 = fmul fast float %4779, %4793
  %4795 = extractvalue %dx.types.CBufRet.f32 %4785, 1
  %4796 = fsub fast float %4792, %4795
  %4797 = extractvalue %dx.types.CBufRet.f32 %4785, 2
  %4798 = fmul fast float %4796, %4797
  %4799 = call float @dx.op.unary.f32(i32 7, float %4798)  ; Saturate(value)
  br label %4816

; <label>:4800                                    ; preds = %4766
  %4801 = fmul fast float %4775, %4772
  %4802 = fmul fast float %4779, %4776
  %4803 = fmul fast float %4779, %4777
  %4804 = fmul fast float %4801, %4779
  %4805 = add i32 %21, 356
  %4806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %4805, i32 undef)  ; BufferLoad(srv,index,wot)
  %4807 = extractvalue %dx.types.ResRet.i32 %4806, 0
  %4808 = and i32 %4807, 32
  %4809 = icmp eq i32 %4808, 0
  br i1 %4809, label %4816, label %4810

; <label>:4810                                    ; preds = %4800
  %4811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4812 = extractvalue %dx.types.CBufRet.f32 %4811, 0
  %4813 = fmul fast float %4812, 0x3FE99999A0000000
  %4814 = fadd fast float %4812, %4802
  %4815 = fadd fast float %4813, %4804
  br label %4816

; <label>:4816                                    ; preds = %4810, %4800, %4780
  %4817 = phi float [ %4794, %4780 ], [ %4814, %4810 ], [ %4802, %4800 ]
  %4818 = phi float [ %4799, %4780 ], [ %4803, %4810 ], [ %4803, %4800 ]
  %4819 = phi float [ 1.000000e+00, %4780 ], [ %4815, %4810 ], [ %4804, %4800 ]
  %4820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4821 = extractvalue %dx.types.CBufRet.f32 %4820, 0
  %4822 = fmul fast float %4821, %4768
  %4823 = fmul fast float %4821, %4769
  %4824 = fadd fast float %4768, %4767
  %4825 = select i1 %160, float %4824, float %4767
  %4826 = fmul float %4825, %4821
  %4827 = select i1 %160, float 0.000000e+00, float %4822
  %4828 = select i1 %160, float 0.000000e+00, float %4823
  %4829 = fmul fast float %4817, %4773
  %4830 = fmul fast float %4818, %4774
  %4831 = fmul fast float %4819, %4775
  %4832 = fadd fast float %4826, %4829
  %4833 = fadd fast float %4827, %4830
  %4834 = fadd fast float %4828, %4831
  %4835 = select i1 %160, float %4818, float %4833
  %4836 = select i1 %160, float %4819, float %4834
  %4837 = call float @dx.op.binary.f32(i32 36, float %4832, float 3.225500e+04)  ; FMin(a,b)
  %4838 = call float @dx.op.binary.f32(i32 36, float %4835, float 3.225500e+04)  ; FMin(a,b)
  %4839 = call float @dx.op.binary.f32(i32 36, float %4836, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4837)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4838)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4839)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

