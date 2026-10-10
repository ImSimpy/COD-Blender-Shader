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
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 59047b1837e28891f9461105879568e9
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
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
  %21 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %22 = icmp ne i32 %21, 0
  %23 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %24 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %25 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %26 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %27 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %28 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %29 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %30 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %31 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %32 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %33 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = fmul fast float %62, %56
  %64 = fmul fast float %62, %57
  %65 = select i1 %22, float 1.000000e+00, float -1.000000e+00
  %66 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %67 = bitcast float %66 to i32
  %68 = ashr i32 %67, 1
  %69 = sub nsw i32 1597250115, %68
  %70 = bitcast i32 %69 to float
  %71 = fmul fast float %48, %65
  %72 = fmul fast float %71, %70
  %73 = fmul fast float %49, %65
  %74 = fmul fast float %73, %70
  %75 = fmul fast float %50, %65
  %76 = fmul fast float %75, %70
  %77 = fmul fast float %49, %46
  %78 = fmul fast float %50, %45
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %50, %44
  %81 = fmul fast float %48, %46
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %48, %45
  %84 = fmul fast float %49, %44
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %79, %47
  %87 = fmul fast float %82, %47
  %88 = fmul fast float %85, %47
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %92 = fmul fast float %63, 2.000000e+00
  %93 = fmul fast float %92, %90
  %94 = fmul fast float %64, 2.000000e+00
  %95 = fmul fast float %94, %91
  %96 = fsub fast float 1.000000e+00, %93
  %97 = fsub fast float 1.000000e+00, %95
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fmul fast float %96, %99
  %103 = fmul fast float %96, %100
  %104 = fmul fast float %96, %101
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %97, %106
  %110 = fmul fast float %97, %107
  %111 = fmul fast float %97, %108
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fadd fast float %109, %113
  %117 = fadd fast float %116, %102
  %118 = fadd fast float %110, %114
  %119 = fadd fast float %118, %103
  %120 = fadd fast float %111, %115
  %121 = fadd fast float %120, %104
  %122 = fmul fast float %117, %58
  %123 = fmul fast float %119, %58
  %124 = fmul fast float %121, %58
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %126, %63
  %129 = fmul fast float %127, %64
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %131, 114688
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %133, float %128, float 0.000000e+00
  %135 = select i1 %133, float %129, float 0.000000e+00
  %136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %18, float %134, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = fmul fast float %137, 2.550000e+02
  %139 = fptoui float %138 to i32
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 3
  %143 = and i32 %142, 3
  %144 = icmp ne i32 %143, 0
  %145 = and i32 %142, 4
  %146 = icmp ne i32 %145, 0
  %147 = and i1 %144, %146
  br i1 %147, label %148, label %159

; <label>:148                                     ; preds = %0
  %149 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %150 = fmul fast float %149, %64
  %151 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %152 = fmul fast float %151, %63
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %17, float %152, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = fsub fast float 1.000000e+00, %154
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = fcmp fast olt float %155, %157
  br label %162

; <label>:159                                     ; preds = %0
  %160 = icmp eq i32 %145, 0
  %161 = and i1 %144, %160
  br label %162

; <label>:162                                     ; preds = %159, %148
  %163 = phi i1 [ %158, %148 ], [ %161, %159 ]
  %164 = add i32 %23, 156
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %176 = add i32 %23, 216
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %190 = add i32 %23, 36
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = and i32 %192, 65535
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = lshr i32 %192, 16
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = add i32 %23, 288
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = and i32 %199, 65535
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %199, 16
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = fmul fast float %201, 0x3F50624DE0000000
  %205 = fmul fast float %203, 0x3F50624DE0000000
  %206 = add i32 %23, 172
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = shl i32 %208, 4
  %210 = and i32 %209, 32752
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %208, 7
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %208, 22
  %216 = shl nuw nsw i32 %215, 5
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = add i32 %23, 232
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = lshr i32 %220, 8
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = lshr i32 %220, 16
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = add i32 %23, 52
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %234, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = add i32 %23, 304
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = fmul fast float %243, 0x3F50624DE0000000
  %247 = fmul fast float %245, 0x3F50624DE0000000
  %248 = add i32 %23, 188
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = shl i32 %250, 4
  %252 = and i32 %251, 32752
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %250, 7
  %255 = and i32 %254, 32752
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %250, 22
  %258 = shl nuw nsw i32 %257, 5
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = add i32 %23, 248
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = lshr i32 %262, 8
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %262, 16
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = add i32 %23, 68
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %23, 320
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 65535
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %283, 16
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = fmul fast float %285, 0x3F50624DE0000000
  %289 = fmul fast float %287, 0x3F50624DE0000000
  %290 = add i32 %23, 204
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = shl i32 %292, 4
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %292, 7
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %292, 22
  %300 = shl nuw nsw i32 %299, 5
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %23, 264
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %304, 8
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %304, 16
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = add i32 %23, 84
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %23, 336
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %325, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fmul fast float %327, 0x3F50624DE0000000
  %331 = fmul fast float %329, 0x3F50624DE0000000
  %332 = add i32 %23, 348
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 32
  %336 = icmp eq i32 %335, 0
  %337 = and i32 %334, 64
  %338 = icmp eq i32 %337, 0
  %339 = and i32 %334, 128
  %340 = icmp eq i32 %339, 0
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 2
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %358, label %345

; <label>:345                                     ; preds = %162
  %346 = add i32 %23, 488
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = add i32 %348, 0
  %350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %350, %dx.types.Handle %60, float %51, float %52, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = extractvalue %dx.types.ResRet.f32 %351, 1
  %354 = extractvalue %dx.types.ResRet.f32 %351, 2
  %355 = fmul fast float %352, %53
  %356 = fmul fast float %353, %54
  %357 = fmul fast float %354, %55
  br label %358

; <label>:358                                     ; preds = %345, %162
  %359 = phi float [ %55, %162 ], [ %357, %345 ]
  %360 = phi float [ %54, %162 ], [ %356, %345 ]
  %361 = phi float [ %53, %162 ], [ %355, %345 ]
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 2
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %385, label %366

; <label>:366                                     ; preds = %358
  %367 = add i32 %23, 44
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 1
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %371, float %361, float 1.000000e+00
  %373 = add i32 %23, 60
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 1
  %377 = icmp ne i32 %376, 0
  %378 = select i1 %377, float %360, float 1.000000e+00
  %379 = add i32 %23, 76
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 1
  %383 = icmp ne i32 %382, 0
  %384 = select i1 %383, float %359, float 1.000000e+00
  br label %385

; <label>:385                                     ; preds = %366, %358
  %386 = phi float [ %359, %358 ], [ %384, %366 ]
  %387 = phi float [ %360, %358 ], [ %378, %366 ]
  %388 = phi float [ %361, %358 ], [ %372, %366 ]
  %389 = lshr i32 %363, 20
  %390 = and i32 %389, 3
  %391 = add nuw nsw i32 %390, 1
  %392 = add i32 %23, 24
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = add i32 %23, 28
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = or i32 %397, %394
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %858, label %400

; <label>:400                                     ; preds = %385
  %401 = and i32 %394, 262144
  %402 = icmp ne i32 %401, 0
  %403 = select i1 %402, float %26, float 1.000000e+00
  %404 = select i1 %402, float %27, float 0.000000e+00
  %405 = select i1 %402, float %28, float 0.000000e+00
  %406 = select i1 %402, float %29, float 1.000000e+00
  %407 = select i1 %402, float %30, float %51
  %408 = select i1 %402, float %31, float %52
  %409 = add i32 %23, 284
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = lshr i32 %411, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = fmul fast float %413, 0x3F50624DE0000000
  %415 = add i32 %23, 88
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = lshr i32 %417, 16
  %419 = and i32 %418, 255
  %420 = lshr i32 %417, 24
  %421 = add i32 %23, 292
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %23, 32
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = lshr i32 %430, 22
  %432 = shl nuw nsw i32 %431, 5
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = shl i32 %430, 4
  %435 = and i32 %434, 32752
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %430, 7
  %438 = and i32 %437, 32752
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %442 = fmul fast float %441, 1.000000e+03
  %443 = fmul fast float %204, %442
  %444 = call float @dx.op.unary.f32(i32 22, float %443)  ; Frc(value)
  %445 = fadd fast float %444, %194
  %446 = fmul fast float %205, %442
  %447 = call float @dx.op.unary.f32(i32 22, float %446)  ; Frc(value)
  %448 = fadd fast float %447, %196
  %449 = fmul fast float %414, %442
  %450 = call float @dx.op.unary.f32(i32 22, float %449)  ; Frc(value)
  %451 = fmul fast float %450, 0x401921FB60000000
  %452 = fadd fast float %451, %433
  %453 = call float @dx.op.unary.f32(i32 13, float %452)  ; Sin(value)
  %454 = call float @dx.op.unary.f32(i32 12, float %452)  ; Cos(value)
  %455 = fsub fast float -0.000000e+00, %453
  %456 = fadd fast float %407, -5.000000e-01
  %457 = fadd fast float %408, -5.000000e-01
  %458 = fmul fast float %425, %456
  %459 = fmul fast float %427, %457
  %460 = fadd fast float %458, 5.000000e-01
  %461 = fadd fast float %459, 5.000000e-01
  %462 = fmul fast float %436, %460
  %463 = fmul fast float %439, %461
  %464 = fmul fast float %454, %462
  %465 = call float @dx.op.tertiary.f32(i32 46, float %455, float %463, float %464)  ; FMad(a,b,c)
  %466 = fmul fast float %453, %462
  %467 = call float @dx.op.tertiary.f32(i32 46, float %454, float %463, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %445, %465
  %469 = fadd fast float %448, %467
  %470 = icmp ugt i32 %419, 1
  %471 = icmp ugt i32 %417, 33554431
  %472 = or i1 %471, %470
  br i1 %472, label %473, label %498

; <label>:473                                     ; preds = %400
  %474 = add i32 %23, 228
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = fmul fast float %441, %478
  %480 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %481 = mul nuw nsw i32 %419, %420
  %482 = uitofp i32 %481 to float
  %483 = fmul fast float %480, %482
  %484 = call float @dx.op.unary.f32(i32 27, float %483)  ; Round_ni(value)
  %485 = fptoui float %484 to i32
  %486 = urem i32 %485, %419
  %487 = udiv i32 %485, %420
  %488 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %489 = call float @dx.op.unary.f32(i32 22, float %469)  ; Frc(value)
  %490 = uitofp i32 %486 to float
  %491 = uitofp i32 %487 to float
  %492 = fadd fast float %488, %490
  %493 = fadd fast float %489, %491
  %494 = uitofp i32 %419 to float
  %495 = uitofp i32 %420 to float
  %496 = fdiv fast float %492, %494
  %497 = fdiv fast float %493, %495
  br label %498

; <label>:498                                     ; preds = %473, %400
  %499 = phi float [ %496, %473 ], [ %468, %400 ]
  %500 = phi float [ %497, %473 ], [ %469, %400 ]
  %501 = and i32 %394, 16
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %699, label %503

; <label>:503                                     ; preds = %498
  %504 = add i32 %23, 360
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = add i32 %506, 0
  %508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %508, %dx.types.Handle %59, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = extractvalue %dx.types.ResRet.f32 %509, 3
  %514 = and i32 %417, 255
  %515 = uitofp i32 %514 to float
  %516 = lshr i32 %417, 8
  %517 = and i32 %516, 255
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %513, %515
  %520 = fadd fast float %519, %518
  %521 = fmul fast float %520, 0x3F70101000000000
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 512
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %534, label %526

; <label>:526                                     ; preds = %503
  %527 = add i32 %23, 440
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = add i32 %529, 0
  %531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %60, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  br label %534

; <label>:534                                     ; preds = %526, %503
  %535 = phi float [ %533, %526 ], [ 1.000000e+00, %503 ]
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 33554432
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %646, label %540

; <label>:540                                     ; preds = %534
  %541 = add i32 %23, 224
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = and i32 %543, 65535
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %543, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = add i32 %23, 228
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = lshr i32 %554, 24
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %556, 0x3F70101020000000
  %558 = and i32 %554, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %559, 0x3F70101020000000
  %561 = lshr i32 %554, 8
  %562 = and i32 %561, 255
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %563, 0x3F70101020000000
  %565 = lshr i32 %554, 16
  %566 = and i32 %565, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = add i32 %23, 220
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = lshr i32 %571, 24
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = and i32 %571, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = lshr i32 %571, 8
  %579 = and i32 %578, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = lshr i32 %571, 16
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = bitcast float %510 to i32
  %587 = ashr i32 %586, 1
  %588 = sub nsw i32 1597463174, %587
  %589 = bitcast i32 %588 to float
  %590 = fmul fast float %510, 5.000000e-01
  %591 = fmul fast float %589, %589
  %592 = fmul fast float %591, %590
  %593 = fsub fast float 1.500000e+00, %592
  %594 = fmul fast float %589, %510
  %595 = fmul fast float %594, %593
  %596 = bitcast float %511 to i32
  %597 = ashr i32 %596, 1
  %598 = sub nsw i32 1597463174, %597
  %599 = bitcast i32 %598 to float
  %600 = fmul fast float %511, 5.000000e-01
  %601 = fmul fast float %599, %599
  %602 = fmul fast float %601, %600
  %603 = fsub fast float 1.500000e+00, %602
  %604 = fmul fast float %599, %511
  %605 = fmul fast float %604, %603
  %606 = bitcast float %512 to i32
  %607 = ashr i32 %606, 1
  %608 = sub nsw i32 1597463174, %607
  %609 = bitcast i32 %608 to float
  %610 = fmul fast float %512, 5.000000e-01
  %611 = fmul fast float %609, %609
  %612 = fmul fast float %611, %610
  %613 = fsub fast float 1.500000e+00, %612
  %614 = fmul fast float %609, %512
  %615 = fmul fast float %614, %613
  %616 = fsub fast float %595, %577
  %617 = fsub fast float %605, %581
  %618 = fsub fast float %615, %585
  %619 = fmul fast float %616, %545
  %620 = fmul fast float %617, %547
  %621 = fmul fast float %618, %552
  %622 = fadd fast float %619, %560
  %623 = fadd fast float %620, %564
  %624 = fadd fast float %621, %568
  %625 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %626 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %627 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %628 = fmul fast float %625, %625
  %629 = fmul fast float %626, %626
  %630 = fmul fast float %627, %627
  %631 = fsub fast float %628, %510
  %632 = fsub fast float %629, %511
  %633 = fsub fast float %630, %512
  %634 = fmul fast float %631, %535
  %635 = fmul fast float %632, %535
  %636 = fmul fast float %633, %535
  %637 = fadd fast float %634, %510
  %638 = fadd fast float %635, %511
  %639 = fadd fast float %636, %512
  %640 = fadd fast float %557, %521
  %641 = fsub fast float %640, %574
  %642 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %643 = fsub fast float %642, %521
  %644 = fmul fast float %643, %535
  %645 = fadd fast float %644, %521
  br label %699

; <label>:646                                     ; preds = %534
  %647 = and i32 %537, 134217728
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %683, label %649

; <label>:649                                     ; preds = %646
  %650 = call float @dx.op.unary.f32(i32 24, float %181)  ; Sqrt(value)
  %651 = call float @dx.op.unary.f32(i32 24, float %185)  ; Sqrt(value)
  %652 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %653 = fadd fast float %650, -5.000000e-01
  %654 = fadd fast float %651, -5.000000e-01
  %655 = fadd fast float %652, -5.000000e-01
  %656 = fmul fast float %653, %535
  %657 = fmul fast float %654, %535
  %658 = fmul fast float %655, %535
  %659 = fadd fast float %656, 5.000000e-01
  %660 = fadd fast float %657, 5.000000e-01
  %661 = fadd fast float %658, 5.000000e-01
  %662 = call float @dx.op.unary.f32(i32 24, float %510)  ; Sqrt(value)
  %663 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %664 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %665 = fmul fast float %659, 2.000000e+00
  %666 = fsub fast float 1.000000e+00, %665
  %667 = fmul fast float %666, %662
  %668 = fadd fast float %667, %665
  %669 = fmul fast float %668, %662
  %670 = fmul fast float %660, 2.000000e+00
  %671 = fsub fast float 1.000000e+00, %670
  %672 = fmul fast float %671, %663
  %673 = fadd fast float %672, %670
  %674 = fmul fast float %673, %663
  %675 = fmul fast float %661, 2.000000e+00
  %676 = fsub fast float 1.000000e+00, %675
  %677 = fmul fast float %676, %664
  %678 = fadd fast float %677, %675
  %679 = fmul fast float %678, %664
  %680 = fmul fast float %669, %669
  %681 = fmul fast float %674, %674
  %682 = fmul fast float %679, %679
  br label %699

; <label>:683                                     ; preds = %646
  %684 = fmul fast float %181, %181
  %685 = fmul fast float %185, %185
  %686 = fmul fast float %189, %189
  %687 = fadd fast float %684, -1.000000e+00
  %688 = fadd fast float %685, -1.000000e+00
  %689 = fadd fast float %686, -1.000000e+00
  %690 = fmul fast float %535, %687
  %691 = fmul fast float %535, %688
  %692 = fmul fast float %535, %689
  %693 = fadd fast float %690, 1.000000e+00
  %694 = fadd fast float %691, 1.000000e+00
  %695 = fadd fast float %692, 1.000000e+00
  %696 = fmul fast float %693, %510
  %697 = fmul fast float %694, %511
  %698 = fmul fast float %695, %512
  br label %699

; <label>:699                                     ; preds = %683, %649, %540, %498
  %700 = phi float [ %645, %540 ], [ %521, %649 ], [ %521, %683 ], [ 0x3FA23C0BE0000000, %498 ]
  %701 = phi float [ %637, %540 ], [ %680, %649 ], [ %696, %683 ], [ 1.000000e+00, %498 ]
  %702 = phi float [ %638, %540 ], [ %681, %649 ], [ %697, %683 ], [ 1.000000e+00, %498 ]
  %703 = phi float [ %639, %540 ], [ %682, %649 ], [ %698, %683 ], [ 1.000000e+00, %498 ]
  %704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.i32 %704, 1
  %706 = and i32 %705, 1
  %707 = icmp ne i32 %706, 0
  %708 = add i32 %23, 356
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 32
  %712 = icmp ne i32 %711, 0
  %713 = and i1 %707, %712
  %714 = select i1 %713, float 1.000000e+00, float %701
  %715 = select i1 %713, float 0x3FD3333340000000, float %702
  %716 = select i1 %713, float 0x3FD3333340000000, float %703
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 32
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %793, label %721

; <label>:721                                     ; preds = %699
  %722 = add i32 %23, 92
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %23, 376
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %727, 0
  %729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %729, %dx.types.Handle %59, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = extractvalue %dx.types.ResRet.f32 %730, 1
  %733 = extractvalue %dx.types.ResRet.f32 %730, 2
  %734 = extractvalue %dx.types.ResRet.f32 %730, 3
  %735 = and i32 %724, 255
  %736 = uitofp i32 %735 to float
  %737 = lshr i32 %724, 8
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = lshr i32 %724, 16
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F70101000000000
  %744 = fmul fast float %731, %736
  %745 = fadd fast float %744, %739
  %746 = fmul fast float %745, 0x3F70101000000000
  %747 = fadd fast float %732, -5.000000e-01
  %748 = fadd fast float %734, -5.000000e-01
  %749 = fmul fast float %747, %743
  %750 = fmul fast float %748, %743
  %751 = fadd fast float %749, 5.000000e-01
  %752 = fadd fast float %750, 5.000000e-01
  %753 = fmul fast float %751, 2.000000e+00
  %754 = fadd fast float %753, -1.000000e+00
  %755 = fmul fast float %752, 2.000000e+00
  %756 = fadd fast float %755, -1.000000e+00
  %757 = fadd fast float %754, %756
  %758 = fmul fast float %757, 5.000000e-01
  %759 = fsub fast float %754, %756
  %760 = fmul fast float %759, 5.000000e-01
  %761 = call float @dx.op.unary.f32(i32 6, float %758)  ; FAbs(value)
  %762 = fsub fast float 1.000000e+00, %761
  %763 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %764 = fsub fast float %762, %763
  %765 = call float @dx.op.dot3.f32(i32 55, float %758, float %760, float %764, float %758, float %760, float %764)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = call float @dx.op.unary.f32(i32 25, float %765)  ; Rsqrt(value)
  %767 = fmul fast float %758, %766
  %768 = fmul fast float %760, %766
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = and i32 %770, 67108864
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %789, label %773

; <label>:773                                     ; preds = %721
  %774 = add i32 %23, 280
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 65535
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 65535
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = lshr i32 %776, 16
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = fsub fast float %746, %784
  %786 = fmul fast float %785, %778
  %787 = fadd fast float %786, %782
  %788 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  br label %789

; <label>:789                                     ; preds = %773, %721
  %790 = phi float [ %788, %773 ], [ %746, %721 ]
  %791 = call float @dx.op.dot2.f32(i32 54, float %767, float %768, float %403, float %404)  ; Dot2(ax,ay,bx,by)
  %792 = call float @dx.op.dot2.f32(i32 54, float %767, float %768, float %405, float %406)  ; Dot2(ax,ay,bx,by)
  br label %793

; <label>:793                                     ; preds = %789, %699
  %794 = phi float [ %790, %789 ], [ 0x3FD6666660000000, %699 ]
  %795 = phi float [ %791, %789 ], [ 0.000000e+00, %699 ]
  %796 = phi float [ %792, %789 ], [ 0.000000e+00, %699 ]
  %797 = phi float [ %733, %789 ], [ 1.000000e+00, %699 ]
  %798 = add i32 %23, 160
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = lshr i32 %800, 22
  %802 = shl nuw nsw i32 %801, 5
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 64
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %841, label %808

; <label>:808                                     ; preds = %793
  %809 = add i32 %23, 392
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = add i32 %811, 0
  %813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 131072
  %817 = icmp eq i32 %816, 0
  %818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %813, %dx.types.Handle %59, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  %822 = fmul fast float %819, %169
  %823 = fmul fast float %820, %172
  %824 = fmul fast float %821, %175
  br i1 %817, label %831, label %825

; <label>:825                                     ; preds = %808
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = fmul fast float %827, %822
  %829 = fmul fast float %827, %823
  %830 = fmul fast float %827, %824
  br label %831

; <label>:831                                     ; preds = %825, %808
  %832 = phi float [ %828, %825 ], [ %822, %808 ]
  %833 = phi float [ %829, %825 ], [ %823, %808 ]
  %834 = phi float [ %830, %825 ], [ %824, %808 ]
  %835 = fmul fast float %832, %803
  %836 = select i1 %163, float %835, float %832
  %837 = call float @dx.op.dot3.f32(i32 55, float %836, float %833, float %834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %838 = select i1 %163, float 0.000000e+00, float %832
  %839 = select i1 %163, float %837, float %833
  %840 = select i1 %163, float 0.000000e+00, float %834
  br label %841

; <label>:841                                     ; preds = %831, %793
  %842 = phi float [ %838, %831 ], [ 0.000000e+00, %793 ]
  %843 = phi float [ %839, %831 ], [ 0.000000e+00, %793 ]
  %844 = phi float [ %840, %831 ], [ 0.000000e+00, %793 ]
  %845 = add i32 %23, 96
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = lshr i32 %847, 8
  %851 = and i32 %850, 255
  %852 = uitofp i32 %851 to float
  %853 = call float @dx.op.dot3.f32(i32 55, float %714, float %715, float %716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = fmul fast float %852, %853
  %855 = fadd fast float %854, %849
  %856 = fmul fast float %855, 0x3F70101020000000
  %857 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  br label %858

; <label>:858                                     ; preds = %841, %385
  %859 = phi float [ 0.000000e+00, %385 ], [ %795, %841 ]
  %860 = phi float [ 0.000000e+00, %385 ], [ %796, %841 ]
  %861 = phi float [ 0.000000e+00, %385 ], [ %714, %841 ]
  %862 = phi float [ 0.000000e+00, %385 ], [ %715, %841 ]
  %863 = phi float [ 0.000000e+00, %385 ], [ %716, %841 ]
  %864 = phi float [ 0.000000e+00, %385 ], [ %842, %841 ]
  %865 = phi float [ 0.000000e+00, %385 ], [ %843, %841 ]
  %866 = phi float [ 0.000000e+00, %385 ], [ %844, %841 ]
  %867 = phi float [ 0.000000e+00, %385 ], [ %700, %841 ]
  %868 = phi float [ 0.000000e+00, %385 ], [ 1.000000e+00, %841 ]
  %869 = phi float [ 0.000000e+00, %385 ], [ %794, %841 ]
  %870 = phi float [ 0.000000e+00, %385 ], [ %797, %841 ]
  %871 = phi float [ 0.000000e+00, %385 ], [ %857, %841 ]
  br i1 %336, label %1824, label %872

; <label>:872                                     ; preds = %858
  %873 = icmp ult i32 %391, 2
  %874 = add i32 %23, 40
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %23, 44
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = or i32 %879, %876
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %1824, label %882

; <label>:882                                     ; preds = %872
  %883 = and i32 %876, 262144
  %884 = icmp ne i32 %883, 0
  %885 = select i1 %884, float %26, float 1.000000e+00
  %886 = select i1 %884, float %27, float 0.000000e+00
  %887 = select i1 %884, float %28, float 0.000000e+00
  %888 = select i1 %884, float %29, float 1.000000e+00
  %889 = select i1 %884, float %30, float %51
  %890 = select i1 %884, float %31, float %52
  %891 = add i32 %23, 300
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = lshr i32 %893, 16
  %895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %894)  ; LegacyF16ToF32(value)
  %896 = fmul fast float %895, 0x3F50624DE0000000
  %897 = add i32 %23, 104
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = lshr i32 %899, 16
  %901 = and i32 %900, 255
  %902 = lshr i32 %899, 24
  %903 = add i32 %23, 308
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 65535
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = lshr i32 %905, 16
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = add i32 %23, 48
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = lshr i32 %912, 22
  %914 = shl nuw nsw i32 %913, 5
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = shl i32 %912, 4
  %917 = and i32 %916, 32752
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = lshr i32 %912, 7
  %920 = and i32 %919, 32752
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %924 = fmul fast float %923, 1.000000e+03
  %925 = fmul fast float %246, %924
  %926 = call float @dx.op.unary.f32(i32 22, float %925)  ; Frc(value)
  %927 = fadd fast float %926, %236
  %928 = fmul fast float %247, %924
  %929 = call float @dx.op.unary.f32(i32 22, float %928)  ; Frc(value)
  %930 = fadd fast float %929, %238
  %931 = fmul fast float %896, %924
  %932 = call float @dx.op.unary.f32(i32 22, float %931)  ; Frc(value)
  %933 = fmul fast float %932, 0x401921FB60000000
  %934 = fadd fast float %933, %915
  %935 = call float @dx.op.unary.f32(i32 13, float %934)  ; Sin(value)
  %936 = call float @dx.op.unary.f32(i32 12, float %934)  ; Cos(value)
  %937 = fsub fast float -0.000000e+00, %935
  %938 = fadd fast float %889, -5.000000e-01
  %939 = fadd fast float %890, -5.000000e-01
  %940 = fmul fast float %907, %938
  %941 = fmul fast float %909, %939
  %942 = fadd fast float %940, 5.000000e-01
  %943 = fadd fast float %941, 5.000000e-01
  %944 = fmul fast float %918, %942
  %945 = fmul fast float %921, %943
  %946 = fmul fast float %936, %944
  %947 = call float @dx.op.tertiary.f32(i32 46, float %937, float %945, float %946)  ; FMad(a,b,c)
  %948 = fmul fast float %935, %944
  %949 = call float @dx.op.tertiary.f32(i32 46, float %936, float %945, float %948)  ; FMad(a,b,c)
  %950 = fadd fast float %927, %947
  %951 = fadd fast float %930, %949
  %952 = icmp ugt i32 %901, 1
  %953 = icmp ugt i32 %899, 33554431
  %954 = or i1 %953, %952
  br i1 %954, label %955, label %980

; <label>:955                                     ; preds = %882
  %956 = add i32 %23, 244
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = fmul fast float %923, %960
  %962 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %963 = mul nuw nsw i32 %901, %902
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %962, %964
  %966 = call float @dx.op.unary.f32(i32 27, float %965)  ; Round_ni(value)
  %967 = fptoui float %966 to i32
  %968 = urem i32 %967, %901
  %969 = udiv i32 %967, %902
  %970 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %971 = call float @dx.op.unary.f32(i32 22, float %951)  ; Frc(value)
  %972 = uitofp i32 %968 to float
  %973 = uitofp i32 %969 to float
  %974 = fadd fast float %970, %972
  %975 = fadd fast float %971, %973
  %976 = uitofp i32 %901 to float
  %977 = uitofp i32 %902 to float
  %978 = fdiv fast float %974, %976
  %979 = fdiv fast float %975, %977
  br label %980

; <label>:980                                     ; preds = %955, %882
  %981 = phi float [ %978, %955 ], [ %950, %882 ]
  %982 = phi float [ %979, %955 ], [ %951, %882 ]
  %983 = and i32 %876, 16777216
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1094, label %985

; <label>:985                                     ; preds = %980
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %989 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %990 = fadd fast float %987, %122
  %991 = fadd fast float %988, %123
  %992 = fadd fast float %989, %124
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = icmp eq i32 %24, 65535
  br i1 %996, label %1091, label %997

; <label>:997                                     ; preds = %985
  %998 = lshr i32 %24, 1
  %999 = shl i32 %998, 2
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %24, 1
  %1003 = icmp ne i32 %1002, 0
  %1004 = lshr i32 %1001, 16
  %1005 = and i32 %1001, 65535
  %1006 = select i1 %1003, i32 %1004, i32 %1005
  %1007 = icmp eq i32 %1006, 65535
  br i1 %1007, label %1087, label %1008

; <label>:1008                                    ; preds = %997
  %1009 = mul nuw nsw i32 %1006, 40
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = add nuw nsw i32 %1009, 12
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = add nuw nsw i32 %1009, 24
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = add nuw nsw i32 %1009, 36
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = fsub fast float %990, %1011
  %1028 = fsub fast float %991, %1012
  %1029 = fsub fast float %992, %1013
  %1030 = fmul fast float %1026, %1027
  %1031 = fmul fast float %1026, %1028
  %1032 = fmul fast float %1026, %1029
  %1033 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1034 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1035 = call float @dx.op.unary.f32(i32 27, float %1032)  ; Round_ni(value)
  %1036 = fadd fast float %1033, 5.000000e-01
  %1037 = fadd fast float %1034, 5.000000e-01
  %1038 = fadd fast float %1035, 5.000000e-01
  %1039 = fmul fast float %1036, %1016
  %1040 = fmul fast float %1037, %1017
  %1041 = fmul fast float %1038, %1018
  %1042 = shl i32 %24, 2
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = add i32 %1044, 0
  %1046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1047 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1048 = call float @dx.op.unary.f32(i32 22, float %1040)  ; Frc(value)
  %1049 = call float @dx.op.unary.f32(i32 22, float %1041)  ; Frc(value)
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1046, %dx.types.Handle %18, float %1047, float %1048, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = fmul fast float %1051, 1.023000e+03
  %1055 = fmul fast float %1052, 1.023000e+03
  %1056 = fmul fast float %1053, 1.023000e+03
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = fadd fast float %1055, 5.000000e-01
  %1059 = fadd fast float %1056, 5.000000e-01
  %1060 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1061 = call float @dx.op.unary.f32(i32 27, float %1058)  ; Round_ni(value)
  %1062 = call float @dx.op.unary.f32(i32 27, float %1059)  ; Round_ni(value)
  %1063 = fsub fast float %1030, %1033
  %1064 = fsub fast float %1031, %1034
  %1065 = fsub fast float %1032, %1035
  %1066 = fmul fast float %1063, 7.500000e-01
  %1067 = fmul fast float %1064, 7.500000e-01
  %1068 = fmul fast float %1065, 7.500000e-01
  %1069 = fadd fast float %1033, 1.250000e-01
  %1070 = fadd fast float %1069, %1066
  %1071 = fadd fast float %1070, %1060
  %1072 = fadd fast float %1034, 1.250000e-01
  %1073 = fadd fast float %1072, %1067
  %1074 = fadd fast float %1073, %1061
  %1075 = fadd fast float %1035, 1.250000e-01
  %1076 = fadd fast float %1075, %1068
  %1077 = fadd fast float %1076, %1062
  %1078 = fmul fast float %1071, %1021
  %1079 = fmul fast float %1074, %1022
  %1080 = fmul fast float %1077, %1023
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = add i32 %1082, 0
  %1084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1084, %dx.types.Handle %16, float %1078, float %1079, float %1080, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  br label %1087

; <label>:1087                                    ; preds = %1008, %997
  %1088 = phi float [ %1086, %1008 ], [ -1.000000e+00, %997 ]
  %1089 = fadd fast float %1088, %995
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  br label %1091

; <label>:1091                                    ; preds = %1087, %985
  %1092 = phi float [ %1090, %1087 ], [ %995, %985 ]
  %1093 = fmul fast float %1092, %388
  br label %1094

; <label>:1094                                    ; preds = %1091, %980
  %1095 = phi float [ %1093, %1091 ], [ %388, %980 ]
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 256
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1146, label %1100

; <label>:1100                                    ; preds = %1094
  %1101 = add i32 %23, 428
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1105, %dx.types.Handle %60, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = add i32 %23, 116
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = shl i32 %1110, 4
  %1112 = and i32 %1111, 32752
  %1113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1112)  ; LegacyF16ToF32(value)
  %1114 = lshr i32 %1110, 7
  %1115 = and i32 %1114, 32752
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = fsub fast float 1.000000e+00, %1095
  %1118 = call float @dx.op.binary.f32(i32 35, float %1117, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1119 = bitcast float %1095 to i32
  %1120 = sitofp i32 %1119 to float
  %1121 = fadd fast float %1120, 0xC1CFBF8940000000
  %1122 = fmul fast float %1116, %1121
  %1123 = fadd fast float %1122, 0x41CFBF8940000000
  %1124 = fptosi float %1123 to i32
  %1125 = bitcast i32 %1124 to float
  %1126 = bitcast float %1118 to i32
  %1127 = sitofp i32 %1126 to float
  %1128 = fadd fast float %1127, 0xC1CFBF8940000000
  %1129 = fmul fast float %1128, %1116
  %1130 = fadd fast float %1129, 0x41CFBF8940000000
  %1131 = fptosi float %1130 to i32
  %1132 = bitcast i32 %1131 to float
  %1133 = fmul fast float %1125, %1113
  %1134 = fmul fast float %1132, %1113
  %1135 = fsub fast float %1118, %1133
  %1136 = fadd fast float %1134, %1118
  %1137 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  %1138 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1139 = fsub fast float %1107, %1137
  %1140 = fsub fast float %1138, %1137
  %1141 = bitcast float %1140 to i32
  %1142 = sub nsw i32 2129859010, %1141
  %1143 = bitcast i32 %1142 to float
  %1144 = fmul fast float %1143, %1139
  %1145 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  br label %1146

; <label>:1146                                    ; preds = %1100, %1094
  %1147 = phi float [ %1145, %1100 ], [ %1095, %1094 ]
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = and i32 %1149, 128
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1168, label %1152

; <label>:1152                                    ; preds = %1146
  %1153 = add i32 %23, 412
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = add i32 %1155, 0
  %1157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1157, %dx.types.Handle %60, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 524288
  %1163 = icmp ne i32 %1162, 0
  %1164 = fcmp fast ogt float %1159, 0x3FE0101020000000
  %1165 = select i1 %1164, float 1.000000e+00, float 0.000000e+00
  %1166 = select i1 %1163, float %1165, float %1159
  %1167 = fmul fast float %1166, %1147
  br label %1168

; <label>:1168                                    ; preds = %1152, %1146
  %1169 = phi float [ %1167, %1152 ], [ %1147, %1146 ]
  %1170 = fcmp fast ult float %1169, 0x3F70101020000000
  br i1 %1170, label %1824, label %1171

; <label>:1171                                    ; preds = %1168
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 16
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1374, label %1176

; <label>:1176                                    ; preds = %1171
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = add i32 %23, 364
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = add i32 %1181, 0
  %1183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1183, %dx.types.Handle %59, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.f32 %1184, 2
  %1188 = extractvalue %dx.types.ResRet.f32 %1184, 3
  %1189 = and i32 %1178, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = lshr i32 %1178, 8
  %1192 = and i32 %1191, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = fmul fast float %1188, %1190
  %1195 = fadd fast float %1194, %1193
  %1196 = fmul fast float %1195, 0x3F70101000000000
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 512
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1209, label %1201

; <label>:1201                                    ; preds = %1176
  %1202 = add i32 %23, 444
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = add i32 %1204, 0
  %1206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1207 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1206, %dx.types.Handle %60, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  br label %1209

; <label>:1209                                    ; preds = %1201, %1176
  %1210 = phi float [ %1208, %1201 ], [ 1.000000e+00, %1176 ]
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 33554432
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1321, label %1215

; <label>:1215                                    ; preds = %1209
  %1216 = add i32 %23, 240
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 65535
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = lshr i32 %1218, 16
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = add i32 %23, 244
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 65535
  %1227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1226)  ; LegacyF16ToF32(value)
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = lshr i32 %1229, 24
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = and i32 %1229, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = fmul fast float %1234, 0x3F70101020000000
  %1236 = lshr i32 %1229, 8
  %1237 = and i32 %1236, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = fmul fast float %1238, 0x3F70101020000000
  %1240 = lshr i32 %1229, 16
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = add i32 %23, 236
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = lshr i32 %1246, 24
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = and i32 %1246, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1251, 0x3F70101020000000
  %1253 = lshr i32 %1246, 8
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1255, 0x3F70101020000000
  %1257 = lshr i32 %1246, 16
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = bitcast float %1185 to i32
  %1262 = ashr i32 %1261, 1
  %1263 = sub nsw i32 1597463174, %1262
  %1264 = bitcast i32 %1263 to float
  %1265 = fmul fast float %1185, 5.000000e-01
  %1266 = fmul fast float %1264, %1264
  %1267 = fmul fast float %1266, %1265
  %1268 = fsub fast float 1.500000e+00, %1267
  %1269 = fmul fast float %1264, %1185
  %1270 = fmul fast float %1269, %1268
  %1271 = bitcast float %1186 to i32
  %1272 = ashr i32 %1271, 1
  %1273 = sub nsw i32 1597463174, %1272
  %1274 = bitcast i32 %1273 to float
  %1275 = fmul fast float %1186, 5.000000e-01
  %1276 = fmul fast float %1274, %1274
  %1277 = fmul fast float %1276, %1275
  %1278 = fsub fast float 1.500000e+00, %1277
  %1279 = fmul fast float %1274, %1186
  %1280 = fmul fast float %1279, %1278
  %1281 = bitcast float %1187 to i32
  %1282 = ashr i32 %1281, 1
  %1283 = sub nsw i32 1597463174, %1282
  %1284 = bitcast i32 %1283 to float
  %1285 = fmul fast float %1187, 5.000000e-01
  %1286 = fmul fast float %1284, %1284
  %1287 = fmul fast float %1286, %1285
  %1288 = fsub fast float 1.500000e+00, %1287
  %1289 = fmul fast float %1284, %1187
  %1290 = fmul fast float %1289, %1288
  %1291 = fsub fast float %1270, %1252
  %1292 = fsub fast float %1280, %1256
  %1293 = fsub fast float %1290, %1260
  %1294 = fmul fast float %1291, %1220
  %1295 = fmul fast float %1292, %1222
  %1296 = fmul fast float %1293, %1227
  %1297 = fadd fast float %1294, %1235
  %1298 = fadd fast float %1295, %1239
  %1299 = fadd fast float %1296, %1243
  %1300 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1301 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1302 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1303 = fmul fast float %1300, %1300
  %1304 = fmul fast float %1301, %1301
  %1305 = fmul fast float %1302, %1302
  %1306 = fsub fast float %1303, %1185
  %1307 = fsub fast float %1304, %1186
  %1308 = fsub fast float %1305, %1187
  %1309 = fmul fast float %1306, %1210
  %1310 = fmul fast float %1307, %1210
  %1311 = fmul fast float %1308, %1210
  %1312 = fadd fast float %1309, %1185
  %1313 = fadd fast float %1310, %1186
  %1314 = fadd fast float %1311, %1187
  %1315 = fadd fast float %1232, %1196
  %1316 = fsub fast float %1315, %1249
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = fsub fast float %1317, %1196
  %1319 = fmul fast float %1318, %1210
  %1320 = fadd fast float %1319, %1196
  br label %1374

; <label>:1321                                    ; preds = %1209
  %1322 = and i32 %1212, 134217728
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1358, label %1324

; <label>:1324                                    ; preds = %1321
  %1325 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %1326 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %1327 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1328 = fadd fast float %1325, -5.000000e-01
  %1329 = fadd fast float %1326, -5.000000e-01
  %1330 = fadd fast float %1327, -5.000000e-01
  %1331 = fmul fast float %1328, %1210
  %1332 = fmul fast float %1329, %1210
  %1333 = fmul fast float %1330, %1210
  %1334 = fadd fast float %1331, 5.000000e-01
  %1335 = fadd fast float %1332, 5.000000e-01
  %1336 = fadd fast float %1333, 5.000000e-01
  %1337 = call float @dx.op.unary.f32(i32 24, float %1185)  ; Sqrt(value)
  %1338 = call float @dx.op.unary.f32(i32 24, float %1186)  ; Sqrt(value)
  %1339 = call float @dx.op.unary.f32(i32 24, float %1187)  ; Sqrt(value)
  %1340 = fmul fast float %1334, 2.000000e+00
  %1341 = fsub fast float 1.000000e+00, %1340
  %1342 = fmul fast float %1341, %1337
  %1343 = fadd fast float %1342, %1340
  %1344 = fmul fast float %1343, %1337
  %1345 = fmul fast float %1335, 2.000000e+00
  %1346 = fsub fast float 1.000000e+00, %1345
  %1347 = fmul fast float %1346, %1338
  %1348 = fadd fast float %1347, %1345
  %1349 = fmul fast float %1348, %1338
  %1350 = fmul fast float %1336, 2.000000e+00
  %1351 = fsub fast float 1.000000e+00, %1350
  %1352 = fmul fast float %1351, %1339
  %1353 = fadd fast float %1352, %1350
  %1354 = fmul fast float %1353, %1339
  %1355 = fmul fast float %1344, %1344
  %1356 = fmul fast float %1349, %1349
  %1357 = fmul fast float %1354, %1354
  br label %1374

; <label>:1358                                    ; preds = %1321
  %1359 = fmul fast float %223, %223
  %1360 = fmul fast float %227, %227
  %1361 = fmul fast float %231, %231
  %1362 = fadd fast float %1359, -1.000000e+00
  %1363 = fadd fast float %1360, -1.000000e+00
  %1364 = fadd fast float %1361, -1.000000e+00
  %1365 = fmul fast float %1210, %1362
  %1366 = fmul fast float %1210, %1363
  %1367 = fmul fast float %1210, %1364
  %1368 = fadd fast float %1365, 1.000000e+00
  %1369 = fadd fast float %1366, 1.000000e+00
  %1370 = fadd fast float %1367, 1.000000e+00
  %1371 = fmul fast float %1368, %1185
  %1372 = fmul fast float %1369, %1186
  %1373 = fmul fast float %1370, %1187
  br label %1374

; <label>:1374                                    ; preds = %1358, %1324, %1215, %1171
  %1375 = phi float [ %1320, %1215 ], [ %1196, %1324 ], [ %1196, %1358 ], [ 0x3FA23C0BE0000000, %1171 ]
  %1376 = phi float [ %1312, %1215 ], [ %1355, %1324 ], [ %1371, %1358 ], [ 1.000000e+00, %1171 ]
  %1377 = phi float [ %1313, %1215 ], [ %1356, %1324 ], [ %1372, %1358 ], [ 1.000000e+00, %1171 ]
  %1378 = phi float [ %1314, %1215 ], [ %1357, %1324 ], [ %1373, %1358 ], [ 1.000000e+00, %1171 ]
  %1379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.i32 %1379, 1
  %1381 = and i32 %1380, 1
  %1382 = icmp ne i32 %1381, 0
  %1383 = add i32 %23, 356
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 32
  %1387 = icmp ne i32 %1386, 0
  %1388 = and i1 %1382, %1387
  %1389 = select i1 %1388, float 1.000000e+00, float %1376
  %1390 = select i1 %1388, float 0x3FD3333340000000, float %1377
  %1391 = select i1 %1388, float 0x3FD3333340000000, float %1378
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 32
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1468, label %1396

; <label>:1396                                    ; preds = %1374
  %1397 = add i32 %23, 108
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = add i32 %23, 380
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = add i32 %1402, 0
  %1404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1404, %dx.types.Handle %59, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.ResRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.ResRet.f32 %1405, 2
  %1409 = extractvalue %dx.types.ResRet.f32 %1405, 3
  %1410 = and i32 %1399, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = lshr i32 %1399, 8
  %1413 = and i32 %1412, 255
  %1414 = uitofp i32 %1413 to float
  %1415 = lshr i32 %1399, 16
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101000000000
  %1419 = fmul fast float %1406, %1411
  %1420 = fadd fast float %1419, %1414
  %1421 = fmul fast float %1420, 0x3F70101000000000
  %1422 = fadd fast float %1407, -5.000000e-01
  %1423 = fadd fast float %1409, -5.000000e-01
  %1424 = fmul fast float %1422, %1418
  %1425 = fmul fast float %1423, %1418
  %1426 = fadd fast float %1424, 5.000000e-01
  %1427 = fadd fast float %1425, 5.000000e-01
  %1428 = fmul fast float %1426, 2.000000e+00
  %1429 = fadd fast float %1428, -1.000000e+00
  %1430 = fmul fast float %1427, 2.000000e+00
  %1431 = fadd fast float %1430, -1.000000e+00
  %1432 = fadd fast float %1429, %1431
  %1433 = fmul fast float %1432, 5.000000e-01
  %1434 = fsub fast float %1429, %1431
  %1435 = fmul fast float %1434, 5.000000e-01
  %1436 = call float @dx.op.unary.f32(i32 6, float %1433)  ; FAbs(value)
  %1437 = fsub fast float 1.000000e+00, %1436
  %1438 = call float @dx.op.unary.f32(i32 6, float %1435)  ; FAbs(value)
  %1439 = fsub fast float %1437, %1438
  %1440 = call float @dx.op.dot3.f32(i32 55, float %1433, float %1435, float %1439, float %1433, float %1435, float %1439)  ; Dot3(ax,ay,az,bx,by,bz)
  %1441 = call float @dx.op.unary.f32(i32 25, float %1440)  ; Rsqrt(value)
  %1442 = fmul fast float %1433, %1441
  %1443 = fmul fast float %1435, %1441
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = and i32 %1445, 67108864
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1464, label %1448

; <label>:1448                                    ; preds = %1396
  %1449 = add i32 %23, 296
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 65535
  %1453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1452)  ; LegacyF16ToF32(value)
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 65535
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = lshr i32 %1451, 16
  %1459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1458)  ; LegacyF16ToF32(value)
  %1460 = fsub fast float %1421, %1459
  %1461 = fmul fast float %1460, %1453
  %1462 = fadd fast float %1461, %1457
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  br label %1464

; <label>:1464                                    ; preds = %1448, %1396
  %1465 = phi float [ %1463, %1448 ], [ %1421, %1396 ]
  %1466 = call float @dx.op.dot2.f32(i32 54, float %1442, float %1443, float %885, float %886)  ; Dot2(ax,ay,bx,by)
  %1467 = call float @dx.op.dot2.f32(i32 54, float %1442, float %1443, float %887, float %888)  ; Dot2(ax,ay,bx,by)
  br label %1468

; <label>:1468                                    ; preds = %1464, %1374
  %1469 = phi float [ %1465, %1464 ], [ 0x3FD6666660000000, %1374 ]
  %1470 = phi float [ %1466, %1464 ], [ 0.000000e+00, %1374 ]
  %1471 = phi float [ %1467, %1464 ], [ 0.000000e+00, %1374 ]
  %1472 = phi float [ %1408, %1464 ], [ 1.000000e+00, %1374 ]
  %1473 = add i32 %23, 176
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = lshr i32 %1475, 22
  %1477 = shl nuw nsw i32 %1476, 5
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 64
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1516, label %1483

; <label>:1483                                    ; preds = %1468
  %1484 = add i32 %23, 396
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %1486, 0
  %1488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 131072
  %1492 = icmp eq i32 %1491, 0
  %1493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1488, %dx.types.Handle %59, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1494 = extractvalue %dx.types.ResRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.ResRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.ResRet.f32 %1493, 2
  %1497 = fmul fast float %1494, %211
  %1498 = fmul fast float %1495, %214
  %1499 = fmul fast float %1496, %217
  br i1 %1492, label %1506, label %1500

; <label>:1500                                    ; preds = %1483
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 0
  %1503 = fmul fast float %1502, %1497
  %1504 = fmul fast float %1502, %1498
  %1505 = fmul fast float %1502, %1499
  br label %1506

; <label>:1506                                    ; preds = %1500, %1483
  %1507 = phi float [ %1503, %1500 ], [ %1497, %1483 ]
  %1508 = phi float [ %1504, %1500 ], [ %1498, %1483 ]
  %1509 = phi float [ %1505, %1500 ], [ %1499, %1483 ]
  %1510 = fmul fast float %1507, %1478
  %1511 = select i1 %163, float %1510, float %1507
  %1512 = call float @dx.op.dot3.f32(i32 55, float %1511, float %1508, float %1509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = select i1 %163, float 0.000000e+00, float %1507
  %1514 = select i1 %163, float %1512, float %1508
  %1515 = select i1 %163, float 0.000000e+00, float %1509
  br label %1516

; <label>:1516                                    ; preds = %1506, %1468
  %1517 = phi float [ %1513, %1506 ], [ 0.000000e+00, %1468 ]
  %1518 = phi float [ %1514, %1506 ], [ 0.000000e+00, %1468 ]
  %1519 = phi float [ %1515, %1506 ], [ 0.000000e+00, %1468 ]
  %1520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1521 = extractvalue %dx.types.ResRet.i32 %1520, 0
  %1522 = and i32 %1521, 1024
  %1523 = icmp eq i32 %1522, 0
  br i1 %1523, label %1554, label %1524

; <label>:1524                                    ; preds = %1516
  %1525 = add i32 %23, 168
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1525, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 255
  %1529 = uitofp i32 %1528 to float
  %1530 = fmul fast float %1529, 0x3F70101020000000
  %1531 = lshr i32 %1527, 8
  %1532 = and i32 %1531, 255
  %1533 = uitofp i32 %1532 to float
  %1534 = fmul fast float %1533, 0x3F70101020000000
  %1535 = lshr i32 %1527, 16
  %1536 = and i32 %1535, 255
  %1537 = uitofp i32 %1536 to float
  %1538 = fmul fast float %1537, 0x3F70101020000000
  %1539 = fmul fast float %1530, %1530
  %1540 = fmul fast float %1534, %1534
  %1541 = fmul fast float %1538, %1538
  %1542 = add i32 %23, 460
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = add i32 %1544, 0
  %1546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1547 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1546, %dx.types.Handle %60, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1548 = extractvalue %dx.types.ResRet.f32 %1547, 0
  %1549 = extractvalue %dx.types.ResRet.f32 %1547, 1
  %1550 = extractvalue %dx.types.ResRet.f32 %1547, 2
  %1551 = fmul fast float %1539, %1548
  %1552 = fmul fast float %1540, %1549
  %1553 = fmul fast float %1541, %1550
  br label %1554

; <label>:1554                                    ; preds = %1524, %1516
  %1555 = phi float [ %1551, %1524 ], [ 0.000000e+00, %1516 ]
  %1556 = phi float [ %1552, %1524 ], [ 0.000000e+00, %1516 ]
  %1557 = phi float [ %1553, %1524 ], [ 0.000000e+00, %1516 ]
  %1558 = fcmp fast ogt float %1555, 0.000000e+00
  %1559 = fcmp fast ogt float %1556, 0.000000e+00
  %1560 = fcmp fast ogt float %1557, 0.000000e+00
  %1561 = call float @dx.op.unary.f32(i32 23, float %1555)  ; Log(value)
  %1562 = call float @dx.op.unary.f32(i32 23, float %1556)  ; Log(value)
  %1563 = call float @dx.op.unary.f32(i32 23, float %1557)  ; Log(value)
  %1564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1565 = extractvalue %dx.types.ResRet.i32 %1564, 0
  %1566 = lshr i32 %1565, 7
  %1567 = and i32 %1566, 32752
  %1568 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1567)  ; LegacyF16ToF32(value)
  %1569 = fmul fast float %1561, 0xBFE62E4300000000
  %1570 = fmul fast float %1569, %1568
  %1571 = fmul fast float %1562, 0xBFE62E4300000000
  %1572 = fmul fast float %1571, %1568
  %1573 = fmul fast float %1563, 0xBFE62E4300000000
  %1574 = fmul fast float %1573, %1568
  %1575 = select i1 %1558, float %1570, float 1.270000e+02
  %1576 = select i1 %1559, float %1572, float 1.270000e+02
  %1577 = select i1 %1560, float %1574, float 1.270000e+02
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = and i32 %1579, 10240
  %1581 = icmp eq i32 %1580, 0
  br i1 %1581, label %1602, label %1582

; <label>:1582                                    ; preds = %1554
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 2048
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1602, label %1587

; <label>:1587                                    ; preds = %1582
  %1588 = add i32 %23, 476
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = add i32 %1590, 0
  %1592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1592, %dx.types.Handle %60, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1594 = extractvalue %dx.types.ResRet.f32 %1593, 3
  %1595 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1596 = extractvalue %dx.types.ResRet.i32 %1595, 0
  %1597 = shl i32 %1596, 4
  %1598 = and i32 %1597, 32752
  %1599 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1598)  ; LegacyF16ToF32(value)
  %1600 = fmul fast float %1599, %1594
  %1601 = call float @dx.op.binary.f32(i32 35, float %1600, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1602

; <label>:1602                                    ; preds = %1587, %1582, %1554
  %1603 = phi float [ %1601, %1587 ], [ 0x3F70101020000000, %1582 ], [ 0x3F70101020000000, %1554 ]
  %1604 = add i32 %23, 112
  %1605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1604, i32 undef)  ; BufferLoad(srv,index,wot)
  %1606 = extractvalue %dx.types.ResRet.i32 %1605, 0
  %1607 = and i32 %1606, 255
  %1608 = uitofp i32 %1607 to float
  %1609 = lshr i32 %1606, 8
  %1610 = and i32 %1609, 255
  %1611 = uitofp i32 %1610 to float
  %1612 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1613 = fmul fast float %1611, %1612
  %1614 = fadd fast float %1613, %1608
  %1615 = fmul fast float %1614, 0x3F70101020000000
  %1616 = call float @dx.op.unary.f32(i32 7, float %1615)  ; Saturate(value)
  br i1 %873, label %1617, label %1652

; <label>:1617                                    ; preds = %1602
  %1618 = fmul fast float %1603, 2.000000e+00
  %1619 = fcmp fast olt float %1575, 1.270000e+02
  %1620 = fcmp fast olt float %1576, 1.270000e+02
  %1621 = fcmp fast olt float %1577, 1.270000e+02
  %1622 = fmul fast float %1575, 0xBFF7154760000000
  %1623 = fmul fast float %1622, %1618
  %1624 = fmul fast float %1576, 0xBFF7154760000000
  %1625 = fmul fast float %1624, %1618
  %1626 = fmul fast float %1577, 0xBFF7154760000000
  %1627 = fmul fast float %1626, %1618
  %1628 = call float @dx.op.unary.f32(i32 21, float %1623)  ; Exp(value)
  %1629 = call float @dx.op.unary.f32(i32 21, float %1625)  ; Exp(value)
  %1630 = call float @dx.op.unary.f32(i32 21, float %1627)  ; Exp(value)
  %1631 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  %1632 = call float @dx.op.unary.f32(i32 7, float %1629)  ; Saturate(value)
  %1633 = call float @dx.op.unary.f32(i32 7, float %1630)  ; Saturate(value)
  %1634 = fadd fast float %1631, -1.000000e+00
  %1635 = select i1 %1619, float %1634, float -1.000000e+00
  %1636 = fadd fast float %1632, -1.000000e+00
  %1637 = select i1 %1620, float %1636, float -1.000000e+00
  %1638 = fadd fast float %1633, -1.000000e+00
  %1639 = select i1 %1621, float %1638, float -1.000000e+00
  %1640 = fmul fast float %1635, %1169
  %1641 = fmul fast float %1637, %1169
  %1642 = fmul fast float %1639, %1169
  %1643 = fadd fast float %1640, 1.000000e+00
  %1644 = fadd fast float %1641, 1.000000e+00
  %1645 = fadd fast float %1642, 1.000000e+00
  %1646 = fmul fast float %1643, %861
  %1647 = fmul fast float %1644, %862
  %1648 = fmul fast float %1645, %863
  %1649 = fmul fast float %1643, %864
  %1650 = fmul fast float %1644, %865
  %1651 = fmul fast float %1645, %866
  br label %1652

; <label>:1652                                    ; preds = %1617, %1602
  %1653 = phi float [ %1646, %1617 ], [ %861, %1602 ]
  %1654 = phi float [ %1647, %1617 ], [ %862, %1602 ]
  %1655 = phi float [ %1648, %1617 ], [ %863, %1602 ]
  %1656 = phi float [ %1649, %1617 ], [ %864, %1602 ]
  %1657 = phi float [ %1650, %1617 ], [ %865, %1602 ]
  %1658 = phi float [ %1651, %1617 ], [ %866, %1602 ]
  %1659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1660 = extractvalue %dx.types.ResRet.i32 %1659, 0
  %1661 = and i32 %1660, 3
  %1662 = icmp eq i32 %1661, 3
  br i1 %1662, label %1741, label %1663

; <label>:1663                                    ; preds = %1652
  %1664 = and i32 %1660, 16
  %1665 = icmp ne i32 %1664, 0
  %1666 = select i1 %1665, float %1169, float 0.000000e+00
  %1667 = icmp eq i32 %1661, 0
  br i1 %1667, label %1668, label %1696

; <label>:1668                                    ; preds = %1663
  %1669 = and i32 %1660, 64
  %1670 = icmp ne i32 %1669, 0
  %1671 = select i1 %1670, float %1169, float 0.000000e+00
  %1672 = fsub fast float %1389, %1653
  %1673 = fsub fast float %1390, %1654
  %1674 = fsub fast float %1391, %1655
  %1675 = fmul fast float %1666, %1672
  %1676 = fmul fast float %1666, %1673
  %1677 = fmul fast float %1666, %1674
  %1678 = fadd fast float %1675, %1653
  %1679 = fadd fast float %1676, %1654
  %1680 = fadd fast float %1677, %1655
  %1681 = fsub fast float %1375, %867
  %1682 = fmul fast float %1666, %1681
  %1683 = fadd fast float %1682, %867
  %1684 = fsub fast float %1517, %1656
  %1685 = fsub fast float %1518, %1657
  %1686 = fsub fast float %1519, %1658
  %1687 = fmul fast float %1671, %1684
  %1688 = fmul fast float %1671, %1685
  %1689 = fmul fast float %1671, %1686
  %1690 = fadd fast float %1687, %1656
  %1691 = fadd fast float %1688, %1657
  %1692 = fadd fast float %1689, %1658
  %1693 = fsub fast float %1616, %871
  %1694 = fmul fast float %1666, %1693
  %1695 = fadd fast float %1694, %871
  br label %1741

; <label>:1696                                    ; preds = %1663
  %1697 = icmp eq i32 %1661, 1
  br i1 %1697, label %1698, label %1711

; <label>:1698                                    ; preds = %1696
  %1699 = fadd fast float %1389, -1.000000e+00
  %1700 = fadd fast float %1390, -1.000000e+00
  %1701 = fadd fast float %1391, -1.000000e+00
  %1702 = fmul fast float %1666, %1699
  %1703 = fmul fast float %1666, %1700
  %1704 = fmul fast float %1666, %1701
  %1705 = fadd fast float %1702, 1.000000e+00
  %1706 = fadd fast float %1703, 1.000000e+00
  %1707 = fadd fast float %1704, 1.000000e+00
  %1708 = fmul fast float %1705, %1653
  %1709 = fmul fast float %1706, %1654
  %1710 = fmul fast float %1707, %1655
  br label %1741

; <label>:1711                                    ; preds = %1696
  %1712 = icmp eq i32 %1661, 2
  br i1 %1712, label %1713, label %1741

; <label>:1713                                    ; preds = %1711
  %1714 = call float @dx.op.unary.f32(i32 24, float %1389)  ; Sqrt(value)
  %1715 = call float @dx.op.unary.f32(i32 24, float %1390)  ; Sqrt(value)
  %1716 = call float @dx.op.unary.f32(i32 24, float %1391)  ; Sqrt(value)
  %1717 = fadd fast float %1714, -5.000000e-01
  %1718 = fadd fast float %1715, -5.000000e-01
  %1719 = fadd fast float %1716, -5.000000e-01
  %1720 = fmul fast float %1717, %1666
  %1721 = fmul fast float %1718, %1666
  %1722 = fmul fast float %1719, %1666
  %1723 = fadd fast float %1720, 5.000000e-01
  %1724 = fadd fast float %1721, 5.000000e-01
  %1725 = fadd fast float %1722, 5.000000e-01
  %1726 = fmul fast float %1723, 2.000000e+00
  %1727 = fsub fast float 1.000000e+00, %1726
  %1728 = fmul fast float %1727, %1653
  %1729 = fadd fast float %1728, %1726
  %1730 = fmul fast float %1729, %1653
  %1731 = fmul fast float %1724, 2.000000e+00
  %1732 = fsub fast float 1.000000e+00, %1731
  %1733 = fmul fast float %1732, %1654
  %1734 = fadd fast float %1733, %1731
  %1735 = fmul fast float %1734, %1654
  %1736 = fmul fast float %1725, 2.000000e+00
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = fmul fast float %1737, %1655
  %1739 = fadd fast float %1738, %1736
  %1740 = fmul fast float %1739, %1655
  br label %1741

; <label>:1741                                    ; preds = %1713, %1711, %1698, %1668, %1652
  %1742 = phi float [ %1653, %1652 ], [ %1730, %1713 ], [ %1653, %1711 ], [ %1708, %1698 ], [ %1678, %1668 ]
  %1743 = phi float [ %1654, %1652 ], [ %1735, %1713 ], [ %1654, %1711 ], [ %1709, %1698 ], [ %1679, %1668 ]
  %1744 = phi float [ %1655, %1652 ], [ %1740, %1713 ], [ %1655, %1711 ], [ %1710, %1698 ], [ %1680, %1668 ]
  %1745 = phi float [ %1656, %1652 ], [ %1656, %1713 ], [ %1656, %1711 ], [ %1656, %1698 ], [ %1690, %1668 ]
  %1746 = phi float [ %1657, %1652 ], [ %1657, %1713 ], [ %1657, %1711 ], [ %1657, %1698 ], [ %1691, %1668 ]
  %1747 = phi float [ %1658, %1652 ], [ %1658, %1713 ], [ %1658, %1711 ], [ %1658, %1698 ], [ %1692, %1668 ]
  %1748 = phi float [ %867, %1652 ], [ %867, %1713 ], [ %867, %1711 ], [ %867, %1698 ], [ %1683, %1668 ]
  %1749 = phi float [ %871, %1652 ], [ %871, %1713 ], [ %871, %1711 ], [ %871, %1698 ], [ %1695, %1668 ]
  %1750 = and i32 %1660, 12
  %1751 = icmp eq i32 %1750, 12
  br i1 %1751, label %1824, label %1752

; <label>:1752                                    ; preds = %1741
  %1753 = and i32 %1660, 2097184
  %1754 = icmp eq i32 %1753, 2097184
  %1755 = select i1 %1754, float %1169, float 0.000000e+00
  %1756 = and i32 %1660, 4194336
  %1757 = icmp eq i32 %1756, 4194336
  %1758 = select i1 %1757, float %1169, float 0.000000e+00
  %1759 = and i32 %1660, 8388640
  %1760 = icmp eq i32 %1759, 8388640
  %1761 = select i1 %1760, float %1169, float 0.000000e+00
  %1762 = icmp eq i32 %1750, 0
  br i1 %1762, label %1763, label %1776

; <label>:1763                                    ; preds = %1752
  %1764 = fsub fast float %1470, %859
  %1765 = fsub fast float %1471, %860
  %1766 = fmul fast float %1755, %1764
  %1767 = fmul fast float %1755, %1765
  %1768 = fadd fast float %1766, %859
  %1769 = fadd fast float %1767, %860
  %1770 = fsub fast float %1472, %870
  %1771 = fmul fast float %1758, %1770
  %1772 = fadd fast float %1771, %870
  %1773 = fsub fast float %1469, %869
  %1774 = fmul fast float %1761, %1773
  %1775 = fadd fast float %1774, %869
  br label %1824

; <label>:1776                                    ; preds = %1752
  %1777 = icmp eq i32 %1750, 4
  br i1 %1777, label %1778, label %1810

; <label>:1778                                    ; preds = %1776
  %1779 = fmul fast float %1755, %1470
  %1780 = fmul fast float %1755, %1471
  %1781 = fadd fast float %1779, %859
  %1782 = fadd fast float %1780, %860
  %1783 = call float @dx.op.binary.f32(i32 36, float %870, float %1472)  ; FMin(a,b)
  %1784 = fsub fast float %1783, %870
  %1785 = fmul fast float %1784, %1758
  %1786 = fadd fast float %1785, %870
  %1787 = fadd fast float %1469, %869
  %1788 = fmul fast float %1787, 0x3FF337FAE0000000
  %1789 = fmul fast float %869, %869
  %1790 = fmul fast float %1469, %1469
  %1791 = fadd fast float %1790, %1789
  %1792 = fmul fast float %1791, 0x3FE5152B00000000
  %1793 = fmul fast float %869, 0xBFCC1F85E0000000
  %1794 = fmul fast float %1793, %1469
  %1795 = fadd fast float %1794, 0xBFE1363700000000
  %1796 = fadd fast float %1795, %1788
  %1797 = fsub fast float %1796, %1792
  %1798 = fmul fast float %1787, 0x3FBA6F0D00000000
  %1799 = fmul fast float %1791, 0x3FD0432880000000
  %1800 = fmul fast float %869, 0xBFEF110800000000
  %1801 = fmul fast float %1800, %1469
  %1802 = fadd fast float %1801, 1.000000e+00
  %1803 = fsub fast float %1802, %1798
  %1804 = fadd fast float %1803, %1799
  %1805 = fdiv fast float %1797, %1804
  %1806 = call float @dx.op.unary.f32(i32 7, float %1805)  ; Saturate(value)
  %1807 = fsub fast float %1806, %869
  %1808 = fmul fast float %1807, %1761
  %1809 = fadd fast float %1808, %869
  br label %1824

; <label>:1810                                    ; preds = %1776
  %1811 = icmp eq i32 %1750, 8
  br i1 %1811, label %1812, label %1824

; <label>:1812                                    ; preds = %1810
  %1813 = fmul fast float %1755, %1470
  %1814 = fmul fast float %1755, %1471
  %1815 = fadd fast float %1813, %859
  %1816 = fadd fast float %1814, %860
  %1817 = call float @dx.op.binary.f32(i32 36, float %870, float %1472)  ; FMin(a,b)
  %1818 = fsub fast float %1817, %870
  %1819 = fmul fast float %1818, %1758
  %1820 = fadd fast float %1819, %870
  %1821 = fsub fast float %1469, %869
  %1822 = fmul fast float %1761, %1821
  %1823 = fadd fast float %1822, %869
  br label %1824

; <label>:1824                                    ; preds = %1812, %1810, %1778, %1763, %1741, %1168, %872, %858
  %1825 = phi float [ %859, %1741 ], [ %859, %1168 ], [ %859, %858 ], [ %1815, %1812 ], [ %859, %1810 ], [ %1781, %1778 ], [ %1768, %1763 ], [ %859, %872 ]
  %1826 = phi float [ %860, %1741 ], [ %860, %1168 ], [ %860, %858 ], [ %1816, %1812 ], [ %860, %1810 ], [ %1782, %1778 ], [ %1769, %1763 ], [ %860, %872 ]
  %1827 = phi float [ %1742, %1741 ], [ %861, %1168 ], [ %861, %858 ], [ %1742, %1812 ], [ %1742, %1810 ], [ %1742, %1778 ], [ %1742, %1763 ], [ %861, %872 ]
  %1828 = phi float [ %1743, %1741 ], [ %862, %1168 ], [ %862, %858 ], [ %1743, %1812 ], [ %1743, %1810 ], [ %1743, %1778 ], [ %1743, %1763 ], [ %862, %872 ]
  %1829 = phi float [ %1744, %1741 ], [ %863, %1168 ], [ %863, %858 ], [ %1744, %1812 ], [ %1744, %1810 ], [ %1744, %1778 ], [ %1744, %1763 ], [ %863, %872 ]
  %1830 = phi float [ %1745, %1741 ], [ %864, %1168 ], [ %864, %858 ], [ %1745, %1812 ], [ %1745, %1810 ], [ %1745, %1778 ], [ %1745, %1763 ], [ %864, %872 ]
  %1831 = phi float [ %1746, %1741 ], [ %865, %1168 ], [ %865, %858 ], [ %1746, %1812 ], [ %1746, %1810 ], [ %1746, %1778 ], [ %1746, %1763 ], [ %865, %872 ]
  %1832 = phi float [ %1747, %1741 ], [ %866, %1168 ], [ %866, %858 ], [ %1747, %1812 ], [ %1747, %1810 ], [ %1747, %1778 ], [ %1747, %1763 ], [ %866, %872 ]
  %1833 = phi float [ %1748, %1741 ], [ %867, %1168 ], [ %867, %858 ], [ %1748, %1812 ], [ %1748, %1810 ], [ %1748, %1778 ], [ %1748, %1763 ], [ %867, %872 ]
  %1834 = phi float [ %869, %1741 ], [ %869, %1168 ], [ %869, %858 ], [ %1823, %1812 ], [ %869, %1810 ], [ %1809, %1778 ], [ %1775, %1763 ], [ %869, %872 ]
  %1835 = phi float [ %870, %1741 ], [ %870, %1168 ], [ %870, %858 ], [ %1820, %1812 ], [ %870, %1810 ], [ %1786, %1778 ], [ %1772, %1763 ], [ %870, %872 ]
  %1836 = phi float [ %1749, %1741 ], [ %871, %1168 ], [ %871, %858 ], [ %1749, %1812 ], [ %1749, %1810 ], [ %1749, %1778 ], [ %1749, %1763 ], [ %871, %872 ]
  br i1 %338, label %2789, label %1837

; <label>:1837                                    ; preds = %1824
  %1838 = icmp ult i32 %391, 3
  %1839 = add i32 %23, 56
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = add i32 %23, 60
  %1843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.i32 %1843, 0
  %1845 = or i32 %1844, %1841
  %1846 = icmp eq i32 %1845, 0
  br i1 %1846, label %2789, label %1847

; <label>:1847                                    ; preds = %1837
  %1848 = and i32 %1841, 262144
  %1849 = icmp ne i32 %1848, 0
  %1850 = select i1 %1849, float %26, float 1.000000e+00
  %1851 = select i1 %1849, float %27, float 0.000000e+00
  %1852 = select i1 %1849, float %28, float 0.000000e+00
  %1853 = select i1 %1849, float %29, float 1.000000e+00
  %1854 = select i1 %1849, float %30, float %51
  %1855 = select i1 %1849, float %31, float %52
  %1856 = add i32 %23, 316
  %1857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1858 = extractvalue %dx.types.ResRet.i32 %1857, 0
  %1859 = lshr i32 %1858, 16
  %1860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1859)  ; LegacyF16ToF32(value)
  %1861 = fmul fast float %1860, 0x3F50624DE0000000
  %1862 = add i32 %23, 120
  %1863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %1864 = extractvalue %dx.types.ResRet.i32 %1863, 0
  %1865 = lshr i32 %1864, 16
  %1866 = and i32 %1865, 255
  %1867 = lshr i32 %1864, 24
  %1868 = add i32 %23, 324
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = and i32 %1870, 65535
  %1872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1871)  ; LegacyF16ToF32(value)
  %1873 = lshr i32 %1870, 16
  %1874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1873)  ; LegacyF16ToF32(value)
  %1875 = add i32 %23, 64
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = lshr i32 %1877, 22
  %1879 = shl nuw nsw i32 %1878, 5
  %1880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1879)  ; LegacyF16ToF32(value)
  %1881 = shl i32 %1877, 4
  %1882 = and i32 %1881, 32752
  %1883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1882)  ; LegacyF16ToF32(value)
  %1884 = lshr i32 %1877, 7
  %1885 = and i32 %1884, 32752
  %1886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1885)  ; LegacyF16ToF32(value)
  %1887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1888 = extractvalue %dx.types.CBufRet.f32 %1887, 3
  %1889 = fmul fast float %1888, 1.000000e+03
  %1890 = fmul fast float %288, %1889
  %1891 = call float @dx.op.unary.f32(i32 22, float %1890)  ; Frc(value)
  %1892 = fadd fast float %1891, %278
  %1893 = fmul fast float %289, %1889
  %1894 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1895 = fadd fast float %1894, %280
  %1896 = fmul fast float %1861, %1889
  %1897 = call float @dx.op.unary.f32(i32 22, float %1896)  ; Frc(value)
  %1898 = fmul fast float %1897, 0x401921FB60000000
  %1899 = fadd fast float %1898, %1880
  %1900 = call float @dx.op.unary.f32(i32 13, float %1899)  ; Sin(value)
  %1901 = call float @dx.op.unary.f32(i32 12, float %1899)  ; Cos(value)
  %1902 = fsub fast float -0.000000e+00, %1900
  %1903 = fadd fast float %1854, -5.000000e-01
  %1904 = fadd fast float %1855, -5.000000e-01
  %1905 = fmul fast float %1872, %1903
  %1906 = fmul fast float %1874, %1904
  %1907 = fadd fast float %1905, 5.000000e-01
  %1908 = fadd fast float %1906, 5.000000e-01
  %1909 = fmul fast float %1883, %1907
  %1910 = fmul fast float %1886, %1908
  %1911 = fmul fast float %1901, %1909
  %1912 = call float @dx.op.tertiary.f32(i32 46, float %1902, float %1910, float %1911)  ; FMad(a,b,c)
  %1913 = fmul fast float %1900, %1909
  %1914 = call float @dx.op.tertiary.f32(i32 46, float %1901, float %1910, float %1913)  ; FMad(a,b,c)
  %1915 = fadd fast float %1892, %1912
  %1916 = fadd fast float %1895, %1914
  %1917 = icmp ugt i32 %1866, 1
  %1918 = icmp ugt i32 %1864, 33554431
  %1919 = or i1 %1918, %1917
  br i1 %1919, label %1920, label %1945

; <label>:1920                                    ; preds = %1847
  %1921 = add i32 %23, 260
  %1922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1923 = extractvalue %dx.types.ResRet.i32 %1922, 0
  %1924 = lshr i32 %1923, 16
  %1925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1924)  ; LegacyF16ToF32(value)
  %1926 = fmul fast float %1888, %1925
  %1927 = call float @dx.op.unary.f32(i32 22, float %1926)  ; Frc(value)
  %1928 = mul nuw nsw i32 %1866, %1867
  %1929 = uitofp i32 %1928 to float
  %1930 = fmul fast float %1927, %1929
  %1931 = call float @dx.op.unary.f32(i32 27, float %1930)  ; Round_ni(value)
  %1932 = fptoui float %1931 to i32
  %1933 = urem i32 %1932, %1866
  %1934 = udiv i32 %1932, %1867
  %1935 = call float @dx.op.unary.f32(i32 22, float %1915)  ; Frc(value)
  %1936 = call float @dx.op.unary.f32(i32 22, float %1916)  ; Frc(value)
  %1937 = uitofp i32 %1933 to float
  %1938 = uitofp i32 %1934 to float
  %1939 = fadd fast float %1935, %1937
  %1940 = fadd fast float %1936, %1938
  %1941 = uitofp i32 %1866 to float
  %1942 = uitofp i32 %1867 to float
  %1943 = fdiv fast float %1939, %1941
  %1944 = fdiv fast float %1940, %1942
  br label %1945

; <label>:1945                                    ; preds = %1920, %1847
  %1946 = phi float [ %1943, %1920 ], [ %1915, %1847 ]
  %1947 = phi float [ %1944, %1920 ], [ %1916, %1847 ]
  %1948 = and i32 %1841, 16777216
  %1949 = icmp eq i32 %1948, 0
  br i1 %1949, label %2059, label %1950

; <label>:1950                                    ; preds = %1945
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 0
  %1953 = extractvalue %dx.types.CBufRet.f32 %1951, 1
  %1954 = extractvalue %dx.types.CBufRet.f32 %1951, 2
  %1955 = fadd fast float %1952, %122
  %1956 = fadd fast float %1953, %123
  %1957 = fadd fast float %1954, %124
  %1958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1959 = extractvalue %dx.types.CBufRet.f32 %1958, 0
  %1960 = call float @dx.op.unary.f32(i32 7, float %1959)  ; Saturate(value)
  %1961 = icmp eq i32 %24, 65535
  br i1 %1961, label %2056, label %1962

; <label>:1962                                    ; preds = %1950
  %1963 = lshr i32 %24, 1
  %1964 = shl i32 %1963, 2
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = and i32 %24, 1
  %1968 = icmp ne i32 %1967, 0
  %1969 = lshr i32 %1966, 16
  %1970 = and i32 %1966, 65535
  %1971 = select i1 %1968, i32 %1969, i32 %1970
  %1972 = icmp eq i32 %1971, 65535
  br i1 %1972, label %2052, label %1973

; <label>:1973                                    ; preds = %1962
  %1974 = mul nuw nsw i32 %1971, 40
  %1975 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.f32 %1975, 0
  %1977 = extractvalue %dx.types.ResRet.f32 %1975, 1
  %1978 = extractvalue %dx.types.ResRet.f32 %1975, 2
  %1979 = add nuw nsw i32 %1974, 12
  %1980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1979, i32 undef)  ; BufferLoad(srv,index,wot)
  %1981 = extractvalue %dx.types.ResRet.f32 %1980, 0
  %1982 = extractvalue %dx.types.ResRet.f32 %1980, 1
  %1983 = extractvalue %dx.types.ResRet.f32 %1980, 2
  %1984 = add nuw nsw i32 %1974, 24
  %1985 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.ResRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.ResRet.f32 %1985, 2
  %1989 = add nuw nsw i32 %1974, 36
  %1990 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1989, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.f32 %1990, 0
  %1992 = fsub fast float %1955, %1976
  %1993 = fsub fast float %1956, %1977
  %1994 = fsub fast float %1957, %1978
  %1995 = fmul fast float %1991, %1992
  %1996 = fmul fast float %1991, %1993
  %1997 = fmul fast float %1991, %1994
  %1998 = call float @dx.op.unary.f32(i32 27, float %1995)  ; Round_ni(value)
  %1999 = call float @dx.op.unary.f32(i32 27, float %1996)  ; Round_ni(value)
  %2000 = call float @dx.op.unary.f32(i32 27, float %1997)  ; Round_ni(value)
  %2001 = fadd fast float %1998, 5.000000e-01
  %2002 = fadd fast float %1999, 5.000000e-01
  %2003 = fadd fast float %2000, 5.000000e-01
  %2004 = fmul fast float %2001, %1981
  %2005 = fmul fast float %2002, %1982
  %2006 = fmul fast float %2003, %1983
  %2007 = shl i32 %24, 2
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %2009, 0
  %2011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2012 = call float @dx.op.unary.f32(i32 22, float %2004)  ; Frc(value)
  %2013 = call float @dx.op.unary.f32(i32 22, float %2005)  ; Frc(value)
  %2014 = call float @dx.op.unary.f32(i32 22, float %2006)  ; Frc(value)
  %2015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2011, %dx.types.Handle %18, float %2012, float %2013, float %2014, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.ResRet.f32 %2015, 1
  %2018 = extractvalue %dx.types.ResRet.f32 %2015, 2
  %2019 = fmul fast float %2016, 1.023000e+03
  %2020 = fmul fast float %2017, 1.023000e+03
  %2021 = fmul fast float %2018, 1.023000e+03
  %2022 = fadd fast float %2019, 5.000000e-01
  %2023 = fadd fast float %2020, 5.000000e-01
  %2024 = fadd fast float %2021, 5.000000e-01
  %2025 = call float @dx.op.unary.f32(i32 27, float %2022)  ; Round_ni(value)
  %2026 = call float @dx.op.unary.f32(i32 27, float %2023)  ; Round_ni(value)
  %2027 = call float @dx.op.unary.f32(i32 27, float %2024)  ; Round_ni(value)
  %2028 = fsub fast float %1995, %1998
  %2029 = fsub fast float %1996, %1999
  %2030 = fsub fast float %1997, %2000
  %2031 = fmul fast float %2028, 7.500000e-01
  %2032 = fmul fast float %2029, 7.500000e-01
  %2033 = fmul fast float %2030, 7.500000e-01
  %2034 = fadd fast float %1998, 1.250000e-01
  %2035 = fadd fast float %2034, %2031
  %2036 = fadd fast float %2035, %2025
  %2037 = fadd fast float %1999, 1.250000e-01
  %2038 = fadd fast float %2037, %2032
  %2039 = fadd fast float %2038, %2026
  %2040 = fadd fast float %2000, 1.250000e-01
  %2041 = fadd fast float %2040, %2033
  %2042 = fadd fast float %2041, %2027
  %2043 = fmul fast float %2036, %1986
  %2044 = fmul fast float %2039, %1987
  %2045 = fmul fast float %2042, %1988
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = add i32 %2047, 0
  %2049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2048, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2049, %dx.types.Handle %16, float %2043, float %2044, float %2045, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2051 = extractvalue %dx.types.ResRet.f32 %2050, 0
  br label %2052

; <label>:2052                                    ; preds = %1973, %1962
  %2053 = phi float [ %2051, %1973 ], [ -1.000000e+00, %1962 ]
  %2054 = fadd fast float %2053, %1960
  %2055 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  br label %2056

; <label>:2056                                    ; preds = %2052, %1950
  %2057 = phi float [ %2055, %2052 ], [ %1960, %1950 ]
  %2058 = fmul fast float %2057, %387
  br label %2059

; <label>:2059                                    ; preds = %2056, %1945
  %2060 = phi float [ %2058, %2056 ], [ %387, %1945 ]
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = and i32 %2062, 256
  %2064 = icmp eq i32 %2063, 0
  br i1 %2064, label %2111, label %2065

; <label>:2065                                    ; preds = %2059
  %2066 = add i32 %23, 432
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = add i32 %2068, 0
  %2070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2070, %dx.types.Handle %60, float %1946, float %1947, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  %2073 = add i32 %23, 132
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = shl i32 %2075, 4
  %2077 = and i32 %2076, 32752
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = lshr i32 %2075, 7
  %2080 = and i32 %2079, 32752
  %2081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2080)  ; LegacyF16ToF32(value)
  %2082 = fsub fast float 1.000000e+00, %2060
  %2083 = call float @dx.op.binary.f32(i32 35, float %2082, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2084 = bitcast float %2060 to i32
  %2085 = sitofp i32 %2084 to float
  %2086 = fadd fast float %2085, 0xC1CFBF8940000000
  %2087 = fmul fast float %2081, %2086
  %2088 = fadd fast float %2087, 0x41CFBF8940000000
  %2089 = fptosi float %2088 to i32
  %2090 = bitcast i32 %2089 to float
  %2091 = bitcast float %2083 to i32
  %2092 = sitofp i32 %2091 to float
  %2093 = fadd fast float %2092, 0xC1CFBF8940000000
  %2094 = fmul fast float %2093, %2081
  %2095 = fadd fast float %2094, 0x41CFBF8940000000
  %2096 = fptosi float %2095 to i32
  %2097 = bitcast i32 %2096 to float
  %2098 = fmul fast float %2090, %2078
  %2099 = fmul fast float %2097, %2078
  %2100 = fsub fast float %2083, %2098
  %2101 = fadd fast float %2099, %2083
  %2102 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  %2103 = call float @dx.op.unary.f32(i32 7, float %2101)  ; Saturate(value)
  %2104 = fsub fast float %2072, %2102
  %2105 = fsub fast float %2103, %2102
  %2106 = bitcast float %2105 to i32
  %2107 = sub nsw i32 2129859010, %2106
  %2108 = bitcast i32 %2107 to float
  %2109 = fmul fast float %2108, %2104
  %2110 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  br label %2111

; <label>:2111                                    ; preds = %2065, %2059
  %2112 = phi float [ %2110, %2065 ], [ %2060, %2059 ]
  %2113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2114 = extractvalue %dx.types.ResRet.i32 %2113, 0
  %2115 = and i32 %2114, 128
  %2116 = icmp eq i32 %2115, 0
  br i1 %2116, label %2133, label %2117

; <label>:2117                                    ; preds = %2111
  %2118 = add i32 %23, 416
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2118, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = add i32 %2120, 0
  %2122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2123 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2122, %dx.types.Handle %60, float %1946, float %1947, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = and i32 %2126, 524288
  %2128 = icmp ne i32 %2127, 0
  %2129 = fcmp fast ogt float %2124, 0x3FE0101020000000
  %2130 = select i1 %2129, float 1.000000e+00, float 0.000000e+00
  %2131 = select i1 %2128, float %2130, float %2124
  %2132 = fmul fast float %2131, %2112
  br label %2133

; <label>:2133                                    ; preds = %2117, %2111
  %2134 = phi float [ %2132, %2117 ], [ %2112, %2111 ]
  %2135 = fcmp fast ult float %2134, 0x3F70101020000000
  br i1 %2135, label %2789, label %2136

; <label>:2136                                    ; preds = %2133
  %2137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2138 = extractvalue %dx.types.ResRet.i32 %2137, 0
  %2139 = and i32 %2138, 16
  %2140 = icmp eq i32 %2139, 0
  br i1 %2140, label %2339, label %2141

; <label>:2141                                    ; preds = %2136
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = add i32 %23, 368
  %2145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2144, i32 undef)  ; BufferLoad(srv,index,wot)
  %2146 = extractvalue %dx.types.ResRet.i32 %2145, 0
  %2147 = add i32 %2146, 0
  %2148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2149 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2148, %dx.types.Handle %59, float %1946, float %1947, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2150 = extractvalue %dx.types.ResRet.f32 %2149, 0
  %2151 = extractvalue %dx.types.ResRet.f32 %2149, 1
  %2152 = extractvalue %dx.types.ResRet.f32 %2149, 2
  %2153 = extractvalue %dx.types.ResRet.f32 %2149, 3
  %2154 = and i32 %2143, 255
  %2155 = uitofp i32 %2154 to float
  %2156 = lshr i32 %2143, 8
  %2157 = and i32 %2156, 255
  %2158 = uitofp i32 %2157 to float
  %2159 = fmul fast float %2153, %2155
  %2160 = fadd fast float %2159, %2158
  %2161 = fmul fast float %2160, 0x3F70101000000000
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, 512
  %2165 = icmp eq i32 %2164, 0
  br i1 %2165, label %2174, label %2166

; <label>:2166                                    ; preds = %2141
  %2167 = add i32 %23, 448
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2167, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = add i32 %2169, 0
  %2171 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2170, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2172 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2171, %dx.types.Handle %60, float %1946, float %1947, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2173 = extractvalue %dx.types.ResRet.f32 %2172, 0
  br label %2174

; <label>:2174                                    ; preds = %2166, %2141
  %2175 = phi float [ %2173, %2166 ], [ 1.000000e+00, %2141 ]
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = and i32 %2177, 33554432
  %2179 = icmp eq i32 %2178, 0
  br i1 %2179, label %2286, label %2180

; <label>:2180                                    ; preds = %2174
  %2181 = add i32 %23, 256
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = and i32 %2183, 65535
  %2185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2184)  ; LegacyF16ToF32(value)
  %2186 = lshr i32 %2183, 16
  %2187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2186)  ; LegacyF16ToF32(value)
  %2188 = add i32 %23, 260
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = and i32 %2190, 65535
  %2192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2191)  ; LegacyF16ToF32(value)
  %2193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2194 = extractvalue %dx.types.ResRet.i32 %2193, 0
  %2195 = lshr i32 %2194, 24
  %2196 = uitofp i32 %2195 to float
  %2197 = fmul fast float %2196, 0x3F70101020000000
  %2198 = and i32 %2194, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2199, 0x3F70101020000000
  %2201 = lshr i32 %2194, 8
  %2202 = and i32 %2201, 255
  %2203 = uitofp i32 %2202 to float
  %2204 = fmul fast float %2203, 0x3F70101020000000
  %2205 = lshr i32 %2194, 16
  %2206 = and i32 %2205, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = fmul fast float %2207, 0x3F70101020000000
  %2209 = add i32 %23, 252
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2209, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = lshr i32 %2211, 24
  %2213 = uitofp i32 %2212 to float
  %2214 = fmul fast float %2213, 0x3F70101020000000
  %2215 = and i32 %2211, 255
  %2216 = uitofp i32 %2215 to float
  %2217 = fmul fast float %2216, 0x3F70101020000000
  %2218 = lshr i32 %2211, 8
  %2219 = and i32 %2218, 255
  %2220 = uitofp i32 %2219 to float
  %2221 = fmul fast float %2220, 0x3F70101020000000
  %2222 = lshr i32 %2211, 16
  %2223 = and i32 %2222, 255
  %2224 = uitofp i32 %2223 to float
  %2225 = fmul fast float %2224, 0x3F70101020000000
  %2226 = bitcast float %2150 to i32
  %2227 = ashr i32 %2226, 1
  %2228 = sub nsw i32 1597463174, %2227
  %2229 = bitcast i32 %2228 to float
  %2230 = fmul fast float %2150, 5.000000e-01
  %2231 = fmul fast float %2229, %2229
  %2232 = fmul fast float %2231, %2230
  %2233 = fsub fast float 1.500000e+00, %2232
  %2234 = fmul fast float %2229, %2150
  %2235 = fmul fast float %2234, %2233
  %2236 = bitcast float %2151 to i32
  %2237 = ashr i32 %2236, 1
  %2238 = sub nsw i32 1597463174, %2237
  %2239 = bitcast i32 %2238 to float
  %2240 = fmul fast float %2151, 5.000000e-01
  %2241 = fmul fast float %2239, %2239
  %2242 = fmul fast float %2241, %2240
  %2243 = fsub fast float 1.500000e+00, %2242
  %2244 = fmul fast float %2239, %2151
  %2245 = fmul fast float %2244, %2243
  %2246 = bitcast float %2152 to i32
  %2247 = ashr i32 %2246, 1
  %2248 = sub nsw i32 1597463174, %2247
  %2249 = bitcast i32 %2248 to float
  %2250 = fmul fast float %2152, 5.000000e-01
  %2251 = fmul fast float %2249, %2249
  %2252 = fmul fast float %2251, %2250
  %2253 = fsub fast float 1.500000e+00, %2252
  %2254 = fmul fast float %2249, %2152
  %2255 = fmul fast float %2254, %2253
  %2256 = fsub fast float %2235, %2217
  %2257 = fsub fast float %2245, %2221
  %2258 = fsub fast float %2255, %2225
  %2259 = fmul fast float %2256, %2185
  %2260 = fmul fast float %2257, %2187
  %2261 = fmul fast float %2258, %2192
  %2262 = fadd fast float %2259, %2200
  %2263 = fadd fast float %2260, %2204
  %2264 = fadd fast float %2261, %2208
  %2265 = call float @dx.op.unary.f32(i32 7, float %2262)  ; Saturate(value)
  %2266 = call float @dx.op.unary.f32(i32 7, float %2263)  ; Saturate(value)
  %2267 = call float @dx.op.unary.f32(i32 7, float %2264)  ; Saturate(value)
  %2268 = fmul fast float %2265, %2265
  %2269 = fmul fast float %2266, %2266
  %2270 = fmul fast float %2267, %2267
  %2271 = fsub fast float %2268, %2150
  %2272 = fsub fast float %2269, %2151
  %2273 = fsub fast float %2270, %2152
  %2274 = fmul fast float %2271, %2175
  %2275 = fmul fast float %2272, %2175
  %2276 = fmul fast float %2273, %2175
  %2277 = fadd fast float %2274, %2150
  %2278 = fadd fast float %2275, %2151
  %2279 = fadd fast float %2276, %2152
  %2280 = fadd fast float %2197, %2161
  %2281 = fsub fast float %2280, %2214
  %2282 = call float @dx.op.unary.f32(i32 7, float %2281)  ; Saturate(value)
  %2283 = fsub fast float %2282, %2161
  %2284 = fmul fast float %2283, %2175
  %2285 = fadd fast float %2284, %2161
  br label %2339

; <label>:2286                                    ; preds = %2174
  %2287 = and i32 %2177, 134217728
  %2288 = icmp eq i32 %2287, 0
  br i1 %2288, label %2323, label %2289

; <label>:2289                                    ; preds = %2286
  %2290 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %2291 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %2292 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2293 = fadd fast float %2290, -5.000000e-01
  %2294 = fadd fast float %2291, -5.000000e-01
  %2295 = fadd fast float %2292, -5.000000e-01
  %2296 = fmul fast float %2293, %2175
  %2297 = fmul fast float %2294, %2175
  %2298 = fmul fast float %2295, %2175
  %2299 = fadd fast float %2296, 5.000000e-01
  %2300 = fadd fast float %2297, 5.000000e-01
  %2301 = fadd fast float %2298, 5.000000e-01
  %2302 = call float @dx.op.unary.f32(i32 24, float %2150)  ; Sqrt(value)
  %2303 = call float @dx.op.unary.f32(i32 24, float %2151)  ; Sqrt(value)
  %2304 = call float @dx.op.unary.f32(i32 24, float %2152)  ; Sqrt(value)
  %2305 = fmul fast float %2299, 2.000000e+00
  %2306 = fsub fast float 1.000000e+00, %2305
  %2307 = fmul fast float %2306, %2302
  %2308 = fadd fast float %2307, %2305
  %2309 = fmul fast float %2308, %2302
  %2310 = fmul fast float %2300, 2.000000e+00
  %2311 = fsub fast float 1.000000e+00, %2310
  %2312 = fmul fast float %2311, %2303
  %2313 = fadd fast float %2312, %2310
  %2314 = fmul fast float %2313, %2303
  %2315 = fmul fast float %2301, 2.000000e+00
  %2316 = fsub fast float 1.000000e+00, %2315
  %2317 = fmul fast float %2316, %2304
  %2318 = fadd fast float %2317, %2315
  %2319 = fmul fast float %2318, %2304
  %2320 = fmul fast float %2309, %2309
  %2321 = fmul fast float %2314, %2314
  %2322 = fmul fast float %2319, %2319
  br label %2339

; <label>:2323                                    ; preds = %2286
  %2324 = fmul fast float %265, %265
  %2325 = fmul fast float %269, %269
  %2326 = fmul fast float %273, %273
  %2327 = fadd fast float %2324, -1.000000e+00
  %2328 = fadd fast float %2325, -1.000000e+00
  %2329 = fadd fast float %2326, -1.000000e+00
  %2330 = fmul fast float %2175, %2327
  %2331 = fmul fast float %2175, %2328
  %2332 = fmul fast float %2175, %2329
  %2333 = fadd fast float %2330, 1.000000e+00
  %2334 = fadd fast float %2331, 1.000000e+00
  %2335 = fadd fast float %2332, 1.000000e+00
  %2336 = fmul fast float %2333, %2150
  %2337 = fmul fast float %2334, %2151
  %2338 = fmul fast float %2335, %2152
  br label %2339

; <label>:2339                                    ; preds = %2323, %2289, %2180, %2136
  %2340 = phi float [ %2285, %2180 ], [ %2161, %2289 ], [ %2161, %2323 ], [ 0x3FA23C0BE0000000, %2136 ]
  %2341 = phi float [ %2277, %2180 ], [ %2320, %2289 ], [ %2336, %2323 ], [ 1.000000e+00, %2136 ]
  %2342 = phi float [ %2278, %2180 ], [ %2321, %2289 ], [ %2337, %2323 ], [ 1.000000e+00, %2136 ]
  %2343 = phi float [ %2279, %2180 ], [ %2322, %2289 ], [ %2338, %2323 ], [ 1.000000e+00, %2136 ]
  %2344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.i32 %2344, 1
  %2346 = and i32 %2345, 1
  %2347 = icmp ne i32 %2346, 0
  %2348 = add i32 %23, 356
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2348, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = and i32 %2350, 32
  %2352 = icmp ne i32 %2351, 0
  %2353 = and i1 %2347, %2352
  %2354 = select i1 %2353, float 1.000000e+00, float %2341
  %2355 = select i1 %2353, float 0x3FD3333340000000, float %2342
  %2356 = select i1 %2353, float 0x3FD3333340000000, float %2343
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = and i32 %2358, 32
  %2360 = icmp eq i32 %2359, 0
  br i1 %2360, label %2433, label %2361

; <label>:2361                                    ; preds = %2339
  %2362 = add i32 %23, 124
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = add i32 %23, 384
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2365, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = add i32 %2367, 0
  %2369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2369, %dx.types.Handle %59, float %1946, float %1947, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2371 = extractvalue %dx.types.ResRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.ResRet.f32 %2370, 1
  %2373 = extractvalue %dx.types.ResRet.f32 %2370, 2
  %2374 = extractvalue %dx.types.ResRet.f32 %2370, 3
  %2375 = and i32 %2364, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = lshr i32 %2364, 8
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = lshr i32 %2364, 16
  %2381 = and i32 %2380, 255
  %2382 = uitofp i32 %2381 to float
  %2383 = fmul fast float %2382, 0x3F70101000000000
  %2384 = fmul fast float %2371, %2376
  %2385 = fadd fast float %2384, %2379
  %2386 = fmul fast float %2385, 0x3F70101000000000
  %2387 = fadd fast float %2372, -5.000000e-01
  %2388 = fadd fast float %2374, -5.000000e-01
  %2389 = fmul fast float %2387, %2383
  %2390 = fmul fast float %2388, %2383
  %2391 = fadd fast float %2389, 5.000000e-01
  %2392 = fadd fast float %2390, 5.000000e-01
  %2393 = fmul fast float %2391, 2.000000e+00
  %2394 = fadd fast float %2393, -1.000000e+00
  %2395 = fmul fast float %2392, 2.000000e+00
  %2396 = fadd fast float %2395, -1.000000e+00
  %2397 = fadd fast float %2394, %2396
  %2398 = fmul fast float %2397, 5.000000e-01
  %2399 = fsub fast float %2394, %2396
  %2400 = fmul fast float %2399, 5.000000e-01
  %2401 = call float @dx.op.unary.f32(i32 6, float %2398)  ; FAbs(value)
  %2402 = fsub fast float 1.000000e+00, %2401
  %2403 = call float @dx.op.unary.f32(i32 6, float %2400)  ; FAbs(value)
  %2404 = fsub fast float %2402, %2403
  %2405 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2400, float %2404, float %2398, float %2400, float %2404)  ; Dot3(ax,ay,az,bx,by,bz)
  %2406 = call float @dx.op.unary.f32(i32 25, float %2405)  ; Rsqrt(value)
  %2407 = fmul fast float %2398, %2406
  %2408 = fmul fast float %2400, %2406
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = and i32 %2410, 67108864
  %2412 = icmp eq i32 %2411, 0
  br i1 %2412, label %2429, label %2413

; <label>:2413                                    ; preds = %2361
  %2414 = add i32 %23, 312
  %2415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2414, i32 undef)  ; BufferLoad(srv,index,wot)
  %2416 = extractvalue %dx.types.ResRet.i32 %2415, 0
  %2417 = and i32 %2416, 65535
  %2418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2417)  ; LegacyF16ToF32(value)
  %2419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2420 = extractvalue %dx.types.ResRet.i32 %2419, 0
  %2421 = and i32 %2420, 65535
  %2422 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2421)  ; LegacyF16ToF32(value)
  %2423 = lshr i32 %2416, 16
  %2424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2423)  ; LegacyF16ToF32(value)
  %2425 = fsub fast float %2386, %2424
  %2426 = fmul fast float %2425, %2418
  %2427 = fadd fast float %2426, %2422
  %2428 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  br label %2429

; <label>:2429                                    ; preds = %2413, %2361
  %2430 = phi float [ %2428, %2413 ], [ %2386, %2361 ]
  %2431 = call float @dx.op.dot2.f32(i32 54, float %2407, float %2408, float %1850, float %1851)  ; Dot2(ax,ay,bx,by)
  %2432 = call float @dx.op.dot2.f32(i32 54, float %2407, float %2408, float %1852, float %1853)  ; Dot2(ax,ay,bx,by)
  br label %2433

; <label>:2433                                    ; preds = %2429, %2339
  %2434 = phi float [ %2430, %2429 ], [ 0x3FD6666660000000, %2339 ]
  %2435 = phi float [ %2431, %2429 ], [ 0.000000e+00, %2339 ]
  %2436 = phi float [ %2432, %2429 ], [ 0.000000e+00, %2339 ]
  %2437 = phi float [ %2373, %2429 ], [ 1.000000e+00, %2339 ]
  %2438 = add i32 %23, 192
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = lshr i32 %2440, 22
  %2442 = shl nuw nsw i32 %2441, 5
  %2443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2442)  ; LegacyF16ToF32(value)
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = and i32 %2445, 64
  %2447 = icmp eq i32 %2446, 0
  br i1 %2447, label %2481, label %2448

; <label>:2448                                    ; preds = %2433
  %2449 = add i32 %23, 400
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2449, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = add i32 %2451, 0
  %2453 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2452, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2455 = extractvalue %dx.types.ResRet.i32 %2454, 0
  %2456 = and i32 %2455, 131072
  %2457 = icmp eq i32 %2456, 0
  %2458 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2453, %dx.types.Handle %59, float %1946, float %1947, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = extractvalue %dx.types.ResRet.f32 %2458, 1
  %2461 = extractvalue %dx.types.ResRet.f32 %2458, 2
  %2462 = fmul fast float %2459, %253
  %2463 = fmul fast float %2460, %256
  %2464 = fmul fast float %2461, %259
  br i1 %2457, label %2471, label %2465

; <label>:2465                                    ; preds = %2448
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 0
  %2468 = fmul fast float %2467, %2462
  %2469 = fmul fast float %2467, %2463
  %2470 = fmul fast float %2467, %2464
  br label %2471

; <label>:2471                                    ; preds = %2465, %2448
  %2472 = phi float [ %2468, %2465 ], [ %2462, %2448 ]
  %2473 = phi float [ %2469, %2465 ], [ %2463, %2448 ]
  %2474 = phi float [ %2470, %2465 ], [ %2464, %2448 ]
  %2475 = fmul fast float %2472, %2443
  %2476 = select i1 %163, float %2475, float %2472
  %2477 = call float @dx.op.dot3.f32(i32 55, float %2476, float %2473, float %2474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2478 = select i1 %163, float 0.000000e+00, float %2472
  %2479 = select i1 %163, float %2477, float %2473
  %2480 = select i1 %163, float 0.000000e+00, float %2474
  br label %2481

; <label>:2481                                    ; preds = %2471, %2433
  %2482 = phi float [ %2478, %2471 ], [ 0.000000e+00, %2433 ]
  %2483 = phi float [ %2479, %2471 ], [ 0.000000e+00, %2433 ]
  %2484 = phi float [ %2480, %2471 ], [ 0.000000e+00, %2433 ]
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = and i32 %2486, 1024
  %2488 = icmp eq i32 %2487, 0
  br i1 %2488, label %2519, label %2489

; <label>:2489                                    ; preds = %2481
  %2490 = add i32 %23, 184
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = and i32 %2492, 255
  %2494 = uitofp i32 %2493 to float
  %2495 = fmul fast float %2494, 0x3F70101020000000
  %2496 = lshr i32 %2492, 8
  %2497 = and i32 %2496, 255
  %2498 = uitofp i32 %2497 to float
  %2499 = fmul fast float %2498, 0x3F70101020000000
  %2500 = lshr i32 %2492, 16
  %2501 = and i32 %2500, 255
  %2502 = uitofp i32 %2501 to float
  %2503 = fmul fast float %2502, 0x3F70101020000000
  %2504 = fmul fast float %2495, %2495
  %2505 = fmul fast float %2499, %2499
  %2506 = fmul fast float %2503, %2503
  %2507 = add i32 %23, 464
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = add i32 %2509, 0
  %2511 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2510, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2512 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2511, %dx.types.Handle %60, float %1946, float %1947, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2513 = extractvalue %dx.types.ResRet.f32 %2512, 0
  %2514 = extractvalue %dx.types.ResRet.f32 %2512, 1
  %2515 = extractvalue %dx.types.ResRet.f32 %2512, 2
  %2516 = fmul fast float %2504, %2513
  %2517 = fmul fast float %2505, %2514
  %2518 = fmul fast float %2506, %2515
  br label %2519

; <label>:2519                                    ; preds = %2489, %2481
  %2520 = phi float [ %2516, %2489 ], [ 0.000000e+00, %2481 ]
  %2521 = phi float [ %2517, %2489 ], [ 0.000000e+00, %2481 ]
  %2522 = phi float [ %2518, %2489 ], [ 0.000000e+00, %2481 ]
  %2523 = fcmp fast ogt float %2520, 0.000000e+00
  %2524 = fcmp fast ogt float %2521, 0.000000e+00
  %2525 = fcmp fast ogt float %2522, 0.000000e+00
  %2526 = call float @dx.op.unary.f32(i32 23, float %2520)  ; Log(value)
  %2527 = call float @dx.op.unary.f32(i32 23, float %2521)  ; Log(value)
  %2528 = call float @dx.op.unary.f32(i32 23, float %2522)  ; Log(value)
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = lshr i32 %2530, 7
  %2532 = and i32 %2531, 32752
  %2533 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2532)  ; LegacyF16ToF32(value)
  %2534 = fmul fast float %2526, 0xBFE62E4300000000
  %2535 = fmul fast float %2534, %2533
  %2536 = fmul fast float %2527, 0xBFE62E4300000000
  %2537 = fmul fast float %2536, %2533
  %2538 = fmul fast float %2528, 0xBFE62E4300000000
  %2539 = fmul fast float %2538, %2533
  %2540 = select i1 %2523, float %2535, float 1.270000e+02
  %2541 = select i1 %2524, float %2537, float 1.270000e+02
  %2542 = select i1 %2525, float %2539, float 1.270000e+02
  %2543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2544 = extractvalue %dx.types.ResRet.i32 %2543, 0
  %2545 = and i32 %2544, 10240
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %2567, label %2547

; <label>:2547                                    ; preds = %2519
  %2548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2549 = extractvalue %dx.types.ResRet.i32 %2548, 0
  %2550 = and i32 %2549, 2048
  %2551 = icmp eq i32 %2550, 0
  br i1 %2551, label %2567, label %2552

; <label>:2552                                    ; preds = %2547
  %2553 = add i32 %23, 480
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = add i32 %2555, 0
  %2557 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2556, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2558 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2557, %dx.types.Handle %60, float %1946, float %1947, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2559 = extractvalue %dx.types.ResRet.f32 %2558, 3
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = shl i32 %2561, 4
  %2563 = and i32 %2562, 32752
  %2564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2563)  ; LegacyF16ToF32(value)
  %2565 = fmul fast float %2564, %2559
  %2566 = call float @dx.op.binary.f32(i32 35, float %2565, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2567

; <label>:2567                                    ; preds = %2552, %2547, %2519
  %2568 = phi float [ %2566, %2552 ], [ 0x3F70101020000000, %2547 ], [ 0x3F70101020000000, %2519 ]
  %2569 = add i32 %23, 128
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2569, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = and i32 %2571, 255
  %2573 = uitofp i32 %2572 to float
  %2574 = lshr i32 %2571, 8
  %2575 = and i32 %2574, 255
  %2576 = uitofp i32 %2575 to float
  %2577 = call float @dx.op.dot3.f32(i32 55, float %2354, float %2355, float %2356, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2578 = fmul fast float %2576, %2577
  %2579 = fadd fast float %2578, %2573
  %2580 = fmul fast float %2579, 0x3F70101020000000
  %2581 = call float @dx.op.unary.f32(i32 7, float %2580)  ; Saturate(value)
  br i1 %1838, label %2582, label %2617

; <label>:2582                                    ; preds = %2567
  %2583 = fmul fast float %2568, 2.000000e+00
  %2584 = fcmp fast olt float %2540, 1.270000e+02
  %2585 = fcmp fast olt float %2541, 1.270000e+02
  %2586 = fcmp fast olt float %2542, 1.270000e+02
  %2587 = fmul fast float %2540, 0xBFF7154760000000
  %2588 = fmul fast float %2587, %2583
  %2589 = fmul fast float %2541, 0xBFF7154760000000
  %2590 = fmul fast float %2589, %2583
  %2591 = fmul fast float %2542, 0xBFF7154760000000
  %2592 = fmul fast float %2591, %2583
  %2593 = call float @dx.op.unary.f32(i32 21, float %2588)  ; Exp(value)
  %2594 = call float @dx.op.unary.f32(i32 21, float %2590)  ; Exp(value)
  %2595 = call float @dx.op.unary.f32(i32 21, float %2592)  ; Exp(value)
  %2596 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  %2597 = call float @dx.op.unary.f32(i32 7, float %2594)  ; Saturate(value)
  %2598 = call float @dx.op.unary.f32(i32 7, float %2595)  ; Saturate(value)
  %2599 = fadd fast float %2596, -1.000000e+00
  %2600 = select i1 %2584, float %2599, float -1.000000e+00
  %2601 = fadd fast float %2597, -1.000000e+00
  %2602 = select i1 %2585, float %2601, float -1.000000e+00
  %2603 = fadd fast float %2598, -1.000000e+00
  %2604 = select i1 %2586, float %2603, float -1.000000e+00
  %2605 = fmul fast float %2600, %2134
  %2606 = fmul fast float %2602, %2134
  %2607 = fmul fast float %2604, %2134
  %2608 = fadd fast float %2605, 1.000000e+00
  %2609 = fadd fast float %2606, 1.000000e+00
  %2610 = fadd fast float %2607, 1.000000e+00
  %2611 = fmul fast float %2608, %1827
  %2612 = fmul fast float %2609, %1828
  %2613 = fmul fast float %2610, %1829
  %2614 = fmul fast float %2608, %1830
  %2615 = fmul fast float %2609, %1831
  %2616 = fmul fast float %2610, %1832
  br label %2617

; <label>:2617                                    ; preds = %2582, %2567
  %2618 = phi float [ %2611, %2582 ], [ %1827, %2567 ]
  %2619 = phi float [ %2612, %2582 ], [ %1828, %2567 ]
  %2620 = phi float [ %2613, %2582 ], [ %1829, %2567 ]
  %2621 = phi float [ %2614, %2582 ], [ %1830, %2567 ]
  %2622 = phi float [ %2615, %2582 ], [ %1831, %2567 ]
  %2623 = phi float [ %2616, %2582 ], [ %1832, %2567 ]
  %2624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %2625 = extractvalue %dx.types.ResRet.i32 %2624, 0
  %2626 = and i32 %2625, 3
  %2627 = icmp eq i32 %2626, 3
  br i1 %2627, label %2706, label %2628

; <label>:2628                                    ; preds = %2617
  %2629 = and i32 %2625, 16
  %2630 = icmp ne i32 %2629, 0
  %2631 = select i1 %2630, float %2134, float 0.000000e+00
  %2632 = icmp eq i32 %2626, 0
  br i1 %2632, label %2633, label %2661

; <label>:2633                                    ; preds = %2628
  %2634 = and i32 %2625, 64
  %2635 = icmp ne i32 %2634, 0
  %2636 = select i1 %2635, float %2134, float 0.000000e+00
  %2637 = fsub fast float %2354, %2618
  %2638 = fsub fast float %2355, %2619
  %2639 = fsub fast float %2356, %2620
  %2640 = fmul fast float %2631, %2637
  %2641 = fmul fast float %2631, %2638
  %2642 = fmul fast float %2631, %2639
  %2643 = fadd fast float %2640, %2618
  %2644 = fadd fast float %2641, %2619
  %2645 = fadd fast float %2642, %2620
  %2646 = fsub fast float %2340, %1833
  %2647 = fmul fast float %2631, %2646
  %2648 = fadd fast float %2647, %1833
  %2649 = fsub fast float %2482, %2621
  %2650 = fsub fast float %2483, %2622
  %2651 = fsub fast float %2484, %2623
  %2652 = fmul fast float %2636, %2649
  %2653 = fmul fast float %2636, %2650
  %2654 = fmul fast float %2636, %2651
  %2655 = fadd fast float %2652, %2621
  %2656 = fadd fast float %2653, %2622
  %2657 = fadd fast float %2654, %2623
  %2658 = fsub fast float %2581, %1836
  %2659 = fmul fast float %2631, %2658
  %2660 = fadd fast float %2659, %1836
  br label %2706

; <label>:2661                                    ; preds = %2628
  %2662 = icmp eq i32 %2626, 1
  br i1 %2662, label %2663, label %2676

; <label>:2663                                    ; preds = %2661
  %2664 = fadd fast float %2354, -1.000000e+00
  %2665 = fadd fast float %2355, -1.000000e+00
  %2666 = fadd fast float %2356, -1.000000e+00
  %2667 = fmul fast float %2631, %2664
  %2668 = fmul fast float %2631, %2665
  %2669 = fmul fast float %2631, %2666
  %2670 = fadd fast float %2667, 1.000000e+00
  %2671 = fadd fast float %2668, 1.000000e+00
  %2672 = fadd fast float %2669, 1.000000e+00
  %2673 = fmul fast float %2670, %2618
  %2674 = fmul fast float %2671, %2619
  %2675 = fmul fast float %2672, %2620
  br label %2706

; <label>:2676                                    ; preds = %2661
  %2677 = icmp eq i32 %2626, 2
  br i1 %2677, label %2678, label %2706

; <label>:2678                                    ; preds = %2676
  %2679 = call float @dx.op.unary.f32(i32 24, float %2354)  ; Sqrt(value)
  %2680 = call float @dx.op.unary.f32(i32 24, float %2355)  ; Sqrt(value)
  %2681 = call float @dx.op.unary.f32(i32 24, float %2356)  ; Sqrt(value)
  %2682 = fadd fast float %2679, -5.000000e-01
  %2683 = fadd fast float %2680, -5.000000e-01
  %2684 = fadd fast float %2681, -5.000000e-01
  %2685 = fmul fast float %2682, %2631
  %2686 = fmul fast float %2683, %2631
  %2687 = fmul fast float %2684, %2631
  %2688 = fadd fast float %2685, 5.000000e-01
  %2689 = fadd fast float %2686, 5.000000e-01
  %2690 = fadd fast float %2687, 5.000000e-01
  %2691 = fmul fast float %2688, 2.000000e+00
  %2692 = fsub fast float 1.000000e+00, %2691
  %2693 = fmul fast float %2692, %2618
  %2694 = fadd fast float %2693, %2691
  %2695 = fmul fast float %2694, %2618
  %2696 = fmul fast float %2689, 2.000000e+00
  %2697 = fsub fast float 1.000000e+00, %2696
  %2698 = fmul fast float %2697, %2619
  %2699 = fadd fast float %2698, %2696
  %2700 = fmul fast float %2699, %2619
  %2701 = fmul fast float %2690, 2.000000e+00
  %2702 = fsub fast float 1.000000e+00, %2701
  %2703 = fmul fast float %2702, %2620
  %2704 = fadd fast float %2703, %2701
  %2705 = fmul fast float %2704, %2620
  br label %2706

; <label>:2706                                    ; preds = %2678, %2676, %2663, %2633, %2617
  %2707 = phi float [ %2618, %2617 ], [ %2695, %2678 ], [ %2618, %2676 ], [ %2673, %2663 ], [ %2643, %2633 ]
  %2708 = phi float [ %2619, %2617 ], [ %2700, %2678 ], [ %2619, %2676 ], [ %2674, %2663 ], [ %2644, %2633 ]
  %2709 = phi float [ %2620, %2617 ], [ %2705, %2678 ], [ %2620, %2676 ], [ %2675, %2663 ], [ %2645, %2633 ]
  %2710 = phi float [ %2621, %2617 ], [ %2621, %2678 ], [ %2621, %2676 ], [ %2621, %2663 ], [ %2655, %2633 ]
  %2711 = phi float [ %2622, %2617 ], [ %2622, %2678 ], [ %2622, %2676 ], [ %2622, %2663 ], [ %2656, %2633 ]
  %2712 = phi float [ %2623, %2617 ], [ %2623, %2678 ], [ %2623, %2676 ], [ %2623, %2663 ], [ %2657, %2633 ]
  %2713 = phi float [ %1833, %2617 ], [ %1833, %2678 ], [ %1833, %2676 ], [ %1833, %2663 ], [ %2648, %2633 ]
  %2714 = phi float [ %1836, %2617 ], [ %1836, %2678 ], [ %1836, %2676 ], [ %1836, %2663 ], [ %2660, %2633 ]
  %2715 = and i32 %2625, 12
  %2716 = icmp eq i32 %2715, 12
  br i1 %2716, label %2789, label %2717

; <label>:2717                                    ; preds = %2706
  %2718 = and i32 %2625, 2097184
  %2719 = icmp eq i32 %2718, 2097184
  %2720 = select i1 %2719, float %2134, float 0.000000e+00
  %2721 = and i32 %2625, 4194336
  %2722 = icmp eq i32 %2721, 4194336
  %2723 = select i1 %2722, float %2134, float 0.000000e+00
  %2724 = and i32 %2625, 8388640
  %2725 = icmp eq i32 %2724, 8388640
  %2726 = select i1 %2725, float %2134, float 0.000000e+00
  %2727 = icmp eq i32 %2715, 0
  br i1 %2727, label %2728, label %2741

; <label>:2728                                    ; preds = %2717
  %2729 = fsub fast float %2435, %1825
  %2730 = fsub fast float %2436, %1826
  %2731 = fmul fast float %2720, %2729
  %2732 = fmul fast float %2720, %2730
  %2733 = fadd fast float %2731, %1825
  %2734 = fadd fast float %2732, %1826
  %2735 = fsub fast float %2437, %1835
  %2736 = fmul fast float %2723, %2735
  %2737 = fadd fast float %2736, %1835
  %2738 = fsub fast float %2434, %1834
  %2739 = fmul fast float %2726, %2738
  %2740 = fadd fast float %2739, %1834
  br label %2789

; <label>:2741                                    ; preds = %2717
  %2742 = icmp eq i32 %2715, 4
  br i1 %2742, label %2743, label %2775

; <label>:2743                                    ; preds = %2741
  %2744 = fmul fast float %2720, %2435
  %2745 = fmul fast float %2720, %2436
  %2746 = fadd fast float %2744, %1825
  %2747 = fadd fast float %2745, %1826
  %2748 = call float @dx.op.binary.f32(i32 36, float %1835, float %2437)  ; FMin(a,b)
  %2749 = fsub fast float %2748, %1835
  %2750 = fmul fast float %2749, %2723
  %2751 = fadd fast float %2750, %1835
  %2752 = fadd fast float %2434, %1834
  %2753 = fmul fast float %2752, 0x3FF337FAE0000000
  %2754 = fmul fast float %1834, %1834
  %2755 = fmul fast float %2434, %2434
  %2756 = fadd fast float %2755, %2754
  %2757 = fmul fast float %2756, 0x3FE5152B00000000
  %2758 = fmul fast float %1834, 0xBFCC1F85E0000000
  %2759 = fmul fast float %2758, %2434
  %2760 = fadd fast float %2759, 0xBFE1363700000000
  %2761 = fadd fast float %2760, %2753
  %2762 = fsub fast float %2761, %2757
  %2763 = fmul fast float %2752, 0x3FBA6F0D00000000
  %2764 = fmul fast float %2756, 0x3FD0432880000000
  %2765 = fmul fast float %1834, 0xBFEF110800000000
  %2766 = fmul fast float %2765, %2434
  %2767 = fadd fast float %2766, 1.000000e+00
  %2768 = fsub fast float %2767, %2763
  %2769 = fadd fast float %2768, %2764
  %2770 = fdiv fast float %2762, %2769
  %2771 = call float @dx.op.unary.f32(i32 7, float %2770)  ; Saturate(value)
  %2772 = fsub fast float %2771, %1834
  %2773 = fmul fast float %2772, %2726
  %2774 = fadd fast float %2773, %1834
  br label %2789

; <label>:2775                                    ; preds = %2741
  %2776 = icmp eq i32 %2715, 8
  br i1 %2776, label %2777, label %2789

; <label>:2777                                    ; preds = %2775
  %2778 = fmul fast float %2720, %2435
  %2779 = fmul fast float %2720, %2436
  %2780 = fadd fast float %2778, %1825
  %2781 = fadd fast float %2779, %1826
  %2782 = call float @dx.op.binary.f32(i32 36, float %1835, float %2437)  ; FMin(a,b)
  %2783 = fsub fast float %2782, %1835
  %2784 = fmul fast float %2783, %2723
  %2785 = fadd fast float %2784, %1835
  %2786 = fsub fast float %2434, %1834
  %2787 = fmul fast float %2726, %2786
  %2788 = fadd fast float %2787, %1834
  br label %2789

; <label>:2789                                    ; preds = %2777, %2775, %2743, %2728, %2706, %2133, %1837, %1824
  %2790 = phi float [ %1825, %2706 ], [ %1825, %2133 ], [ %1825, %1824 ], [ %2780, %2777 ], [ %1825, %2775 ], [ %2746, %2743 ], [ %2733, %2728 ], [ %1825, %1837 ]
  %2791 = phi float [ %1826, %2706 ], [ %1826, %2133 ], [ %1826, %1824 ], [ %2781, %2777 ], [ %1826, %2775 ], [ %2747, %2743 ], [ %2734, %2728 ], [ %1826, %1837 ]
  %2792 = phi float [ %2707, %2706 ], [ %1827, %2133 ], [ %1827, %1824 ], [ %2707, %2777 ], [ %2707, %2775 ], [ %2707, %2743 ], [ %2707, %2728 ], [ %1827, %1837 ]
  %2793 = phi float [ %2708, %2706 ], [ %1828, %2133 ], [ %1828, %1824 ], [ %2708, %2777 ], [ %2708, %2775 ], [ %2708, %2743 ], [ %2708, %2728 ], [ %1828, %1837 ]
  %2794 = phi float [ %2709, %2706 ], [ %1829, %2133 ], [ %1829, %1824 ], [ %2709, %2777 ], [ %2709, %2775 ], [ %2709, %2743 ], [ %2709, %2728 ], [ %1829, %1837 ]
  %2795 = phi float [ %2710, %2706 ], [ %1830, %2133 ], [ %1830, %1824 ], [ %2710, %2777 ], [ %2710, %2775 ], [ %2710, %2743 ], [ %2710, %2728 ], [ %1830, %1837 ]
  %2796 = phi float [ %2711, %2706 ], [ %1831, %2133 ], [ %1831, %1824 ], [ %2711, %2777 ], [ %2711, %2775 ], [ %2711, %2743 ], [ %2711, %2728 ], [ %1831, %1837 ]
  %2797 = phi float [ %2712, %2706 ], [ %1832, %2133 ], [ %1832, %1824 ], [ %2712, %2777 ], [ %2712, %2775 ], [ %2712, %2743 ], [ %2712, %2728 ], [ %1832, %1837 ]
  %2798 = phi float [ %2713, %2706 ], [ %1833, %2133 ], [ %1833, %1824 ], [ %2713, %2777 ], [ %2713, %2775 ], [ %2713, %2743 ], [ %2713, %2728 ], [ %1833, %1837 ]
  %2799 = phi float [ %1834, %2706 ], [ %1834, %2133 ], [ %1834, %1824 ], [ %2788, %2777 ], [ %1834, %2775 ], [ %2774, %2743 ], [ %2740, %2728 ], [ %1834, %1837 ]
  %2800 = phi float [ %1835, %2706 ], [ %1835, %2133 ], [ %1835, %1824 ], [ %2785, %2777 ], [ %1835, %2775 ], [ %2751, %2743 ], [ %2737, %2728 ], [ %1835, %1837 ]
  %2801 = phi float [ %2714, %2706 ], [ %1836, %2133 ], [ %1836, %1824 ], [ %2714, %2777 ], [ %2714, %2775 ], [ %2714, %2743 ], [ %2714, %2728 ], [ %1836, %1837 ]
  br i1 %340, label %3754, label %2802

; <label>:2802                                    ; preds = %2789
  %2803 = icmp ult i32 %391, 4
  %2804 = add i32 %23, 72
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = add i32 %23, 76
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = or i32 %2809, %2806
  %2811 = icmp eq i32 %2810, 0
  br i1 %2811, label %3754, label %2812

; <label>:2812                                    ; preds = %2802
  %2813 = and i32 %2806, 262144
  %2814 = icmp ne i32 %2813, 0
  %2815 = select i1 %2814, float %26, float 1.000000e+00
  %2816 = select i1 %2814, float %27, float 0.000000e+00
  %2817 = select i1 %2814, float %28, float 0.000000e+00
  %2818 = select i1 %2814, float %29, float 1.000000e+00
  %2819 = select i1 %2814, float %30, float %51
  %2820 = select i1 %2814, float %31, float %52
  %2821 = add i32 %23, 332
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = lshr i32 %2823, 16
  %2825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2824)  ; LegacyF16ToF32(value)
  %2826 = fmul fast float %2825, 0x3F50624DE0000000
  %2827 = add i32 %23, 136
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = lshr i32 %2829, 16
  %2831 = and i32 %2830, 255
  %2832 = lshr i32 %2829, 24
  %2833 = add i32 %23, 340
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = and i32 %2835, 65535
  %2837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2836)  ; LegacyF16ToF32(value)
  %2838 = lshr i32 %2835, 16
  %2839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2838)  ; LegacyF16ToF32(value)
  %2840 = add i32 %23, 80
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2840, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = lshr i32 %2842, 22
  %2844 = shl nuw nsw i32 %2843, 5
  %2845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2844)  ; LegacyF16ToF32(value)
  %2846 = shl i32 %2842, 4
  %2847 = and i32 %2846, 32752
  %2848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2847)  ; LegacyF16ToF32(value)
  %2849 = lshr i32 %2842, 7
  %2850 = and i32 %2849, 32752
  %2851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2850)  ; LegacyF16ToF32(value)
  %2852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2853 = extractvalue %dx.types.CBufRet.f32 %2852, 3
  %2854 = fmul fast float %2853, 1.000000e+03
  %2855 = fmul fast float %330, %2854
  %2856 = call float @dx.op.unary.f32(i32 22, float %2855)  ; Frc(value)
  %2857 = fadd fast float %2856, %320
  %2858 = fmul fast float %331, %2854
  %2859 = call float @dx.op.unary.f32(i32 22, float %2858)  ; Frc(value)
  %2860 = fadd fast float %2859, %322
  %2861 = fmul fast float %2826, %2854
  %2862 = call float @dx.op.unary.f32(i32 22, float %2861)  ; Frc(value)
  %2863 = fmul fast float %2862, 0x401921FB60000000
  %2864 = fadd fast float %2863, %2845
  %2865 = call float @dx.op.unary.f32(i32 13, float %2864)  ; Sin(value)
  %2866 = call float @dx.op.unary.f32(i32 12, float %2864)  ; Cos(value)
  %2867 = fsub fast float -0.000000e+00, %2865
  %2868 = fadd fast float %2819, -5.000000e-01
  %2869 = fadd fast float %2820, -5.000000e-01
  %2870 = fmul fast float %2837, %2868
  %2871 = fmul fast float %2839, %2869
  %2872 = fadd fast float %2870, 5.000000e-01
  %2873 = fadd fast float %2871, 5.000000e-01
  %2874 = fmul fast float %2848, %2872
  %2875 = fmul fast float %2851, %2873
  %2876 = fmul fast float %2866, %2874
  %2877 = call float @dx.op.tertiary.f32(i32 46, float %2867, float %2875, float %2876)  ; FMad(a,b,c)
  %2878 = fmul fast float %2865, %2874
  %2879 = call float @dx.op.tertiary.f32(i32 46, float %2866, float %2875, float %2878)  ; FMad(a,b,c)
  %2880 = fadd fast float %2857, %2877
  %2881 = fadd fast float %2860, %2879
  %2882 = icmp ugt i32 %2831, 1
  %2883 = icmp ugt i32 %2829, 33554431
  %2884 = or i1 %2883, %2882
  br i1 %2884, label %2885, label %2910

; <label>:2885                                    ; preds = %2812
  %2886 = add i32 %23, 276
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = lshr i32 %2888, 16
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = fmul fast float %2853, %2890
  %2892 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2893 = mul nuw nsw i32 %2831, %2832
  %2894 = uitofp i32 %2893 to float
  %2895 = fmul fast float %2892, %2894
  %2896 = call float @dx.op.unary.f32(i32 27, float %2895)  ; Round_ni(value)
  %2897 = fptoui float %2896 to i32
  %2898 = urem i32 %2897, %2831
  %2899 = udiv i32 %2897, %2832
  %2900 = call float @dx.op.unary.f32(i32 22, float %2880)  ; Frc(value)
  %2901 = call float @dx.op.unary.f32(i32 22, float %2881)  ; Frc(value)
  %2902 = uitofp i32 %2898 to float
  %2903 = uitofp i32 %2899 to float
  %2904 = fadd fast float %2900, %2902
  %2905 = fadd fast float %2901, %2903
  %2906 = uitofp i32 %2831 to float
  %2907 = uitofp i32 %2832 to float
  %2908 = fdiv fast float %2904, %2906
  %2909 = fdiv fast float %2905, %2907
  br label %2910

; <label>:2910                                    ; preds = %2885, %2812
  %2911 = phi float [ %2908, %2885 ], [ %2880, %2812 ]
  %2912 = phi float [ %2909, %2885 ], [ %2881, %2812 ]
  %2913 = and i32 %2806, 16777216
  %2914 = icmp eq i32 %2913, 0
  br i1 %2914, label %3024, label %2915

; <label>:2915                                    ; preds = %2910
  %2916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2917 = extractvalue %dx.types.CBufRet.f32 %2916, 0
  %2918 = extractvalue %dx.types.CBufRet.f32 %2916, 1
  %2919 = extractvalue %dx.types.CBufRet.f32 %2916, 2
  %2920 = fadd fast float %2917, %122
  %2921 = fadd fast float %2918, %123
  %2922 = fadd fast float %2919, %124
  %2923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2924 = extractvalue %dx.types.CBufRet.f32 %2923, 0
  %2925 = call float @dx.op.unary.f32(i32 7, float %2924)  ; Saturate(value)
  %2926 = icmp eq i32 %24, 65535
  br i1 %2926, label %3021, label %2927

; <label>:2927                                    ; preds = %2915
  %2928 = lshr i32 %24, 1
  %2929 = shl i32 %2928, 2
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %24, 1
  %2933 = icmp ne i32 %2932, 0
  %2934 = lshr i32 %2931, 16
  %2935 = and i32 %2931, 65535
  %2936 = select i1 %2933, i32 %2934, i32 %2935
  %2937 = icmp eq i32 %2936, 65535
  br i1 %2937, label %3017, label %2938

; <label>:2938                                    ; preds = %2927
  %2939 = mul nuw nsw i32 %2936, 40
  %2940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.ResRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.ResRet.f32 %2940, 2
  %2944 = add nuw nsw i32 %2939, 12
  %2945 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2944, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.f32 %2945, 0
  %2947 = extractvalue %dx.types.ResRet.f32 %2945, 1
  %2948 = extractvalue %dx.types.ResRet.f32 %2945, 2
  %2949 = add nuw nsw i32 %2939, 24
  %2950 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2949, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.f32 %2950, 0
  %2952 = extractvalue %dx.types.ResRet.f32 %2950, 1
  %2953 = extractvalue %dx.types.ResRet.f32 %2950, 2
  %2954 = add nuw nsw i32 %2939, 36
  %2955 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2954, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.f32 %2955, 0
  %2957 = fsub fast float %2920, %2941
  %2958 = fsub fast float %2921, %2942
  %2959 = fsub fast float %2922, %2943
  %2960 = fmul fast float %2956, %2957
  %2961 = fmul fast float %2956, %2958
  %2962 = fmul fast float %2956, %2959
  %2963 = call float @dx.op.unary.f32(i32 27, float %2960)  ; Round_ni(value)
  %2964 = call float @dx.op.unary.f32(i32 27, float %2961)  ; Round_ni(value)
  %2965 = call float @dx.op.unary.f32(i32 27, float %2962)  ; Round_ni(value)
  %2966 = fadd fast float %2963, 5.000000e-01
  %2967 = fadd fast float %2964, 5.000000e-01
  %2968 = fadd fast float %2965, 5.000000e-01
  %2969 = fmul fast float %2966, %2946
  %2970 = fmul fast float %2967, %2947
  %2971 = fmul fast float %2968, %2948
  %2972 = shl i32 %24, 2
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = add i32 %2974, 0
  %2976 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2975, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2977 = call float @dx.op.unary.f32(i32 22, float %2969)  ; Frc(value)
  %2978 = call float @dx.op.unary.f32(i32 22, float %2970)  ; Frc(value)
  %2979 = call float @dx.op.unary.f32(i32 22, float %2971)  ; Frc(value)
  %2980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2976, %dx.types.Handle %18, float %2977, float %2978, float %2979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  %2982 = extractvalue %dx.types.ResRet.f32 %2980, 1
  %2983 = extractvalue %dx.types.ResRet.f32 %2980, 2
  %2984 = fmul fast float %2981, 1.023000e+03
  %2985 = fmul fast float %2982, 1.023000e+03
  %2986 = fmul fast float %2983, 1.023000e+03
  %2987 = fadd fast float %2984, 5.000000e-01
  %2988 = fadd fast float %2985, 5.000000e-01
  %2989 = fadd fast float %2986, 5.000000e-01
  %2990 = call float @dx.op.unary.f32(i32 27, float %2987)  ; Round_ni(value)
  %2991 = call float @dx.op.unary.f32(i32 27, float %2988)  ; Round_ni(value)
  %2992 = call float @dx.op.unary.f32(i32 27, float %2989)  ; Round_ni(value)
  %2993 = fsub fast float %2960, %2963
  %2994 = fsub fast float %2961, %2964
  %2995 = fsub fast float %2962, %2965
  %2996 = fmul fast float %2993, 7.500000e-01
  %2997 = fmul fast float %2994, 7.500000e-01
  %2998 = fmul fast float %2995, 7.500000e-01
  %2999 = fadd fast float %2963, 1.250000e-01
  %3000 = fadd fast float %2999, %2996
  %3001 = fadd fast float %3000, %2990
  %3002 = fadd fast float %2964, 1.250000e-01
  %3003 = fadd fast float %3002, %2997
  %3004 = fadd fast float %3003, %2991
  %3005 = fadd fast float %2965, 1.250000e-01
  %3006 = fadd fast float %3005, %2998
  %3007 = fadd fast float %3006, %2992
  %3008 = fmul fast float %3001, %2951
  %3009 = fmul fast float %3004, %2952
  %3010 = fmul fast float %3007, %2953
  %3011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %3012 = extractvalue %dx.types.ResRet.i32 %3011, 0
  %3013 = add i32 %3012, 0
  %3014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3014, %dx.types.Handle %16, float %3008, float %3009, float %3010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3016 = extractvalue %dx.types.ResRet.f32 %3015, 0
  br label %3017

; <label>:3017                                    ; preds = %2938, %2927
  %3018 = phi float [ %3016, %2938 ], [ -1.000000e+00, %2927 ]
  %3019 = fadd fast float %3018, %2925
  %3020 = call float @dx.op.unary.f32(i32 7, float %3019)  ; Saturate(value)
  br label %3021

; <label>:3021                                    ; preds = %3017, %2915
  %3022 = phi float [ %3020, %3017 ], [ %2925, %2915 ]
  %3023 = fmul fast float %3022, %386
  br label %3024

; <label>:3024                                    ; preds = %3021, %2910
  %3025 = phi float [ %3023, %3021 ], [ %386, %2910 ]
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = and i32 %3027, 256
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3076, label %3030

; <label>:3030                                    ; preds = %3024
  %3031 = add i32 %23, 436
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = add i32 %3033, 0
  %3035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3035, %dx.types.Handle %60, float %2911, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = add i32 %23, 148
  %3039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3038, i32 undef)  ; BufferLoad(srv,index,wot)
  %3040 = extractvalue %dx.types.ResRet.i32 %3039, 0
  %3041 = shl i32 %3040, 4
  %3042 = and i32 %3041, 32752
  %3043 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3042)  ; LegacyF16ToF32(value)
  %3044 = lshr i32 %3040, 7
  %3045 = and i32 %3044, 32752
  %3046 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3045)  ; LegacyF16ToF32(value)
  %3047 = fsub fast float 1.000000e+00, %3025
  %3048 = call float @dx.op.binary.f32(i32 35, float %3047, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3049 = bitcast float %3025 to i32
  %3050 = sitofp i32 %3049 to float
  %3051 = fadd fast float %3050, 0xC1CFBF8940000000
  %3052 = fmul fast float %3046, %3051
  %3053 = fadd fast float %3052, 0x41CFBF8940000000
  %3054 = fptosi float %3053 to i32
  %3055 = bitcast i32 %3054 to float
  %3056 = bitcast float %3048 to i32
  %3057 = sitofp i32 %3056 to float
  %3058 = fadd fast float %3057, 0xC1CFBF8940000000
  %3059 = fmul fast float %3058, %3046
  %3060 = fadd fast float %3059, 0x41CFBF8940000000
  %3061 = fptosi float %3060 to i32
  %3062 = bitcast i32 %3061 to float
  %3063 = fmul fast float %3055, %3043
  %3064 = fmul fast float %3062, %3043
  %3065 = fsub fast float %3048, %3063
  %3066 = fadd fast float %3064, %3048
  %3067 = call float @dx.op.unary.f32(i32 7, float %3065)  ; Saturate(value)
  %3068 = call float @dx.op.unary.f32(i32 7, float %3066)  ; Saturate(value)
  %3069 = fsub fast float %3037, %3067
  %3070 = fsub fast float %3068, %3067
  %3071 = bitcast float %3070 to i32
  %3072 = sub nsw i32 2129859010, %3071
  %3073 = bitcast i32 %3072 to float
  %3074 = fmul fast float %3073, %3069
  %3075 = call float @dx.op.unary.f32(i32 7, float %3074)  ; Saturate(value)
  br label %3076

; <label>:3076                                    ; preds = %3030, %3024
  %3077 = phi float [ %3075, %3030 ], [ %3025, %3024 ]
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = and i32 %3079, 128
  %3081 = icmp eq i32 %3080, 0
  br i1 %3081, label %3098, label %3082

; <label>:3082                                    ; preds = %3076
  %3083 = add i32 %23, 420
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3083, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = add i32 %3085, 0
  %3087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3087, %dx.types.Handle %60, float %2911, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3089 = extractvalue %dx.types.ResRet.f32 %3088, 0
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = and i32 %3091, 524288
  %3093 = icmp ne i32 %3092, 0
  %3094 = fcmp fast ogt float %3089, 0x3FE0101020000000
  %3095 = select i1 %3094, float 1.000000e+00, float 0.000000e+00
  %3096 = select i1 %3093, float %3095, float %3089
  %3097 = fmul fast float %3096, %3077
  br label %3098

; <label>:3098                                    ; preds = %3082, %3076
  %3099 = phi float [ %3097, %3082 ], [ %3077, %3076 ]
  %3100 = fcmp fast ult float %3099, 0x3F70101020000000
  br i1 %3100, label %3754, label %3101

; <label>:3101                                    ; preds = %3098
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 16
  %3105 = icmp eq i32 %3104, 0
  br i1 %3105, label %3304, label %3106

; <label>:3106                                    ; preds = %3101
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = add i32 %23, 372
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = add i32 %3111, 0
  %3113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3113, %dx.types.Handle %59, float %2911, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = extractvalue %dx.types.ResRet.f32 %3114, 1
  %3117 = extractvalue %dx.types.ResRet.f32 %3114, 2
  %3118 = extractvalue %dx.types.ResRet.f32 %3114, 3
  %3119 = and i32 %3108, 255
  %3120 = uitofp i32 %3119 to float
  %3121 = lshr i32 %3108, 8
  %3122 = and i32 %3121, 255
  %3123 = uitofp i32 %3122 to float
  %3124 = fmul fast float %3118, %3120
  %3125 = fadd fast float %3124, %3123
  %3126 = fmul fast float %3125, 0x3F70101000000000
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 512
  %3130 = icmp eq i32 %3129, 0
  br i1 %3130, label %3139, label %3131

; <label>:3131                                    ; preds = %3106
  %3132 = add i32 %23, 452
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = add i32 %3134, 0
  %3136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3136, %dx.types.Handle %60, float %2911, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  br label %3139

; <label>:3139                                    ; preds = %3131, %3106
  %3140 = phi float [ %3138, %3131 ], [ 1.000000e+00, %3106 ]
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = and i32 %3142, 33554432
  %3144 = icmp eq i32 %3143, 0
  br i1 %3144, label %3251, label %3145

; <label>:3145                                    ; preds = %3139
  %3146 = add i32 %23, 272
  %3147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3146, i32 undef)  ; BufferLoad(srv,index,wot)
  %3148 = extractvalue %dx.types.ResRet.i32 %3147, 0
  %3149 = and i32 %3148, 65535
  %3150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3149)  ; LegacyF16ToF32(value)
  %3151 = lshr i32 %3148, 16
  %3152 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3151)  ; LegacyF16ToF32(value)
  %3153 = add i32 %23, 276
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = and i32 %3155, 65535
  %3157 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3156)  ; LegacyF16ToF32(value)
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = lshr i32 %3159, 24
  %3161 = uitofp i32 %3160 to float
  %3162 = fmul fast float %3161, 0x3F70101020000000
  %3163 = and i32 %3159, 255
  %3164 = uitofp i32 %3163 to float
  %3165 = fmul fast float %3164, 0x3F70101020000000
  %3166 = lshr i32 %3159, 8
  %3167 = and i32 %3166, 255
  %3168 = uitofp i32 %3167 to float
  %3169 = fmul fast float %3168, 0x3F70101020000000
  %3170 = lshr i32 %3159, 16
  %3171 = and i32 %3170, 255
  %3172 = uitofp i32 %3171 to float
  %3173 = fmul fast float %3172, 0x3F70101020000000
  %3174 = add i32 %23, 268
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = lshr i32 %3176, 24
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101020000000
  %3180 = and i32 %3176, 255
  %3181 = uitofp i32 %3180 to float
  %3182 = fmul fast float %3181, 0x3F70101020000000
  %3183 = lshr i32 %3176, 8
  %3184 = and i32 %3183, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = lshr i32 %3176, 16
  %3188 = and i32 %3187, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = bitcast float %3115 to i32
  %3192 = ashr i32 %3191, 1
  %3193 = sub nsw i32 1597463174, %3192
  %3194 = bitcast i32 %3193 to float
  %3195 = fmul fast float %3115, 5.000000e-01
  %3196 = fmul fast float %3194, %3194
  %3197 = fmul fast float %3196, %3195
  %3198 = fsub fast float 1.500000e+00, %3197
  %3199 = fmul fast float %3194, %3115
  %3200 = fmul fast float %3199, %3198
  %3201 = bitcast float %3116 to i32
  %3202 = ashr i32 %3201, 1
  %3203 = sub nsw i32 1597463174, %3202
  %3204 = bitcast i32 %3203 to float
  %3205 = fmul fast float %3116, 5.000000e-01
  %3206 = fmul fast float %3204, %3204
  %3207 = fmul fast float %3206, %3205
  %3208 = fsub fast float 1.500000e+00, %3207
  %3209 = fmul fast float %3204, %3116
  %3210 = fmul fast float %3209, %3208
  %3211 = bitcast float %3117 to i32
  %3212 = ashr i32 %3211, 1
  %3213 = sub nsw i32 1597463174, %3212
  %3214 = bitcast i32 %3213 to float
  %3215 = fmul fast float %3117, 5.000000e-01
  %3216 = fmul fast float %3214, %3214
  %3217 = fmul fast float %3216, %3215
  %3218 = fsub fast float 1.500000e+00, %3217
  %3219 = fmul fast float %3214, %3117
  %3220 = fmul fast float %3219, %3218
  %3221 = fsub fast float %3200, %3182
  %3222 = fsub fast float %3210, %3186
  %3223 = fsub fast float %3220, %3190
  %3224 = fmul fast float %3221, %3150
  %3225 = fmul fast float %3222, %3152
  %3226 = fmul fast float %3223, %3157
  %3227 = fadd fast float %3224, %3165
  %3228 = fadd fast float %3225, %3169
  %3229 = fadd fast float %3226, %3173
  %3230 = call float @dx.op.unary.f32(i32 7, float %3227)  ; Saturate(value)
  %3231 = call float @dx.op.unary.f32(i32 7, float %3228)  ; Saturate(value)
  %3232 = call float @dx.op.unary.f32(i32 7, float %3229)  ; Saturate(value)
  %3233 = fmul fast float %3230, %3230
  %3234 = fmul fast float %3231, %3231
  %3235 = fmul fast float %3232, %3232
  %3236 = fsub fast float %3233, %3115
  %3237 = fsub fast float %3234, %3116
  %3238 = fsub fast float %3235, %3117
  %3239 = fmul fast float %3236, %3140
  %3240 = fmul fast float %3237, %3140
  %3241 = fmul fast float %3238, %3140
  %3242 = fadd fast float %3239, %3115
  %3243 = fadd fast float %3240, %3116
  %3244 = fadd fast float %3241, %3117
  %3245 = fadd fast float %3162, %3126
  %3246 = fsub fast float %3245, %3179
  %3247 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3248 = fsub fast float %3247, %3126
  %3249 = fmul fast float %3248, %3140
  %3250 = fadd fast float %3249, %3126
  br label %3304

; <label>:3251                                    ; preds = %3139
  %3252 = and i32 %3142, 134217728
  %3253 = icmp eq i32 %3252, 0
  br i1 %3253, label %3288, label %3254

; <label>:3254                                    ; preds = %3251
  %3255 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %3256 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %3257 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %3258 = fadd fast float %3255, -5.000000e-01
  %3259 = fadd fast float %3256, -5.000000e-01
  %3260 = fadd fast float %3257, -5.000000e-01
  %3261 = fmul fast float %3258, %3140
  %3262 = fmul fast float %3259, %3140
  %3263 = fmul fast float %3260, %3140
  %3264 = fadd fast float %3261, 5.000000e-01
  %3265 = fadd fast float %3262, 5.000000e-01
  %3266 = fadd fast float %3263, 5.000000e-01
  %3267 = call float @dx.op.unary.f32(i32 24, float %3115)  ; Sqrt(value)
  %3268 = call float @dx.op.unary.f32(i32 24, float %3116)  ; Sqrt(value)
  %3269 = call float @dx.op.unary.f32(i32 24, float %3117)  ; Sqrt(value)
  %3270 = fmul fast float %3264, 2.000000e+00
  %3271 = fsub fast float 1.000000e+00, %3270
  %3272 = fmul fast float %3271, %3267
  %3273 = fadd fast float %3272, %3270
  %3274 = fmul fast float %3273, %3267
  %3275 = fmul fast float %3265, 2.000000e+00
  %3276 = fsub fast float 1.000000e+00, %3275
  %3277 = fmul fast float %3276, %3268
  %3278 = fadd fast float %3277, %3275
  %3279 = fmul fast float %3278, %3268
  %3280 = fmul fast float %3266, 2.000000e+00
  %3281 = fsub fast float 1.000000e+00, %3280
  %3282 = fmul fast float %3281, %3269
  %3283 = fadd fast float %3282, %3280
  %3284 = fmul fast float %3283, %3269
  %3285 = fmul fast float %3274, %3274
  %3286 = fmul fast float %3279, %3279
  %3287 = fmul fast float %3284, %3284
  br label %3304

; <label>:3288                                    ; preds = %3251
  %3289 = fmul fast float %307, %307
  %3290 = fmul fast float %311, %311
  %3291 = fmul fast float %315, %315
  %3292 = fadd fast float %3289, -1.000000e+00
  %3293 = fadd fast float %3290, -1.000000e+00
  %3294 = fadd fast float %3291, -1.000000e+00
  %3295 = fmul fast float %3140, %3292
  %3296 = fmul fast float %3140, %3293
  %3297 = fmul fast float %3140, %3294
  %3298 = fadd fast float %3295, 1.000000e+00
  %3299 = fadd fast float %3296, 1.000000e+00
  %3300 = fadd fast float %3297, 1.000000e+00
  %3301 = fmul fast float %3298, %3115
  %3302 = fmul fast float %3299, %3116
  %3303 = fmul fast float %3300, %3117
  br label %3304

; <label>:3304                                    ; preds = %3288, %3254, %3145, %3101
  %3305 = phi float [ %3250, %3145 ], [ %3126, %3254 ], [ %3126, %3288 ], [ 0x3FA23C0BE0000000, %3101 ]
  %3306 = phi float [ %3242, %3145 ], [ %3285, %3254 ], [ %3301, %3288 ], [ 1.000000e+00, %3101 ]
  %3307 = phi float [ %3243, %3145 ], [ %3286, %3254 ], [ %3302, %3288 ], [ 1.000000e+00, %3101 ]
  %3308 = phi float [ %3244, %3145 ], [ %3287, %3254 ], [ %3303, %3288 ], [ 1.000000e+00, %3101 ]
  %3309 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3310 = extractvalue %dx.types.CBufRet.i32 %3309, 1
  %3311 = and i32 %3310, 1
  %3312 = icmp ne i32 %3311, 0
  %3313 = add i32 %23, 356
  %3314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3313, i32 undef)  ; BufferLoad(srv,index,wot)
  %3315 = extractvalue %dx.types.ResRet.i32 %3314, 0
  %3316 = and i32 %3315, 32
  %3317 = icmp ne i32 %3316, 0
  %3318 = and i1 %3312, %3317
  %3319 = select i1 %3318, float 1.000000e+00, float %3306
  %3320 = select i1 %3318, float 0x3FD3333340000000, float %3307
  %3321 = select i1 %3318, float 0x3FD3333340000000, float %3308
  %3322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3323 = extractvalue %dx.types.ResRet.i32 %3322, 0
  %3324 = and i32 %3323, 32
  %3325 = icmp eq i32 %3324, 0
  br i1 %3325, label %3398, label %3326

; <label>:3326                                    ; preds = %3304
  %3327 = add i32 %23, 140
  %3328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3327, i32 undef)  ; BufferLoad(srv,index,wot)
  %3329 = extractvalue %dx.types.ResRet.i32 %3328, 0
  %3330 = add i32 %23, 388
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = add i32 %3332, 0
  %3334 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3333, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3335 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3334, %dx.types.Handle %59, float %2911, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3336 = extractvalue %dx.types.ResRet.f32 %3335, 0
  %3337 = extractvalue %dx.types.ResRet.f32 %3335, 1
  %3338 = extractvalue %dx.types.ResRet.f32 %3335, 2
  %3339 = extractvalue %dx.types.ResRet.f32 %3335, 3
  %3340 = and i32 %3329, 255
  %3341 = uitofp i32 %3340 to float
  %3342 = lshr i32 %3329, 8
  %3343 = and i32 %3342, 255
  %3344 = uitofp i32 %3343 to float
  %3345 = lshr i32 %3329, 16
  %3346 = and i32 %3345, 255
  %3347 = uitofp i32 %3346 to float
  %3348 = fmul fast float %3347, 0x3F70101000000000
  %3349 = fmul fast float %3336, %3341
  %3350 = fadd fast float %3349, %3344
  %3351 = fmul fast float %3350, 0x3F70101000000000
  %3352 = fadd fast float %3337, -5.000000e-01
  %3353 = fadd fast float %3339, -5.000000e-01
  %3354 = fmul fast float %3352, %3348
  %3355 = fmul fast float %3353, %3348
  %3356 = fadd fast float %3354, 5.000000e-01
  %3357 = fadd fast float %3355, 5.000000e-01
  %3358 = fmul fast float %3356, 2.000000e+00
  %3359 = fadd fast float %3358, -1.000000e+00
  %3360 = fmul fast float %3357, 2.000000e+00
  %3361 = fadd fast float %3360, -1.000000e+00
  %3362 = fadd fast float %3359, %3361
  %3363 = fmul fast float %3362, 5.000000e-01
  %3364 = fsub fast float %3359, %3361
  %3365 = fmul fast float %3364, 5.000000e-01
  %3366 = call float @dx.op.unary.f32(i32 6, float %3363)  ; FAbs(value)
  %3367 = fsub fast float 1.000000e+00, %3366
  %3368 = call float @dx.op.unary.f32(i32 6, float %3365)  ; FAbs(value)
  %3369 = fsub fast float %3367, %3368
  %3370 = call float @dx.op.dot3.f32(i32 55, float %3363, float %3365, float %3369, float %3363, float %3365, float %3369)  ; Dot3(ax,ay,az,bx,by,bz)
  %3371 = call float @dx.op.unary.f32(i32 25, float %3370)  ; Rsqrt(value)
  %3372 = fmul fast float %3363, %3371
  %3373 = fmul fast float %3365, %3371
  %3374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3375 = extractvalue %dx.types.ResRet.i32 %3374, 0
  %3376 = and i32 %3375, 67108864
  %3377 = icmp eq i32 %3376, 0
  br i1 %3377, label %3394, label %3378

; <label>:3378                                    ; preds = %3326
  %3379 = add i32 %23, 328
  %3380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3379, i32 undef)  ; BufferLoad(srv,index,wot)
  %3381 = extractvalue %dx.types.ResRet.i32 %3380, 0
  %3382 = and i32 %3381, 65535
  %3383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3382)  ; LegacyF16ToF32(value)
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = and i32 %3385, 65535
  %3387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3386)  ; LegacyF16ToF32(value)
  %3388 = lshr i32 %3381, 16
  %3389 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3388)  ; LegacyF16ToF32(value)
  %3390 = fsub fast float %3351, %3389
  %3391 = fmul fast float %3390, %3383
  %3392 = fadd fast float %3391, %3387
  %3393 = call float @dx.op.unary.f32(i32 7, float %3392)  ; Saturate(value)
  br label %3394

; <label>:3394                                    ; preds = %3378, %3326
  %3395 = phi float [ %3393, %3378 ], [ %3351, %3326 ]
  %3396 = call float @dx.op.dot2.f32(i32 54, float %3372, float %3373, float %2815, float %2816)  ; Dot2(ax,ay,bx,by)
  %3397 = call float @dx.op.dot2.f32(i32 54, float %3372, float %3373, float %2817, float %2818)  ; Dot2(ax,ay,bx,by)
  br label %3398

; <label>:3398                                    ; preds = %3394, %3304
  %3399 = phi float [ %3395, %3394 ], [ 0x3FD6666660000000, %3304 ]
  %3400 = phi float [ %3396, %3394 ], [ 0.000000e+00, %3304 ]
  %3401 = phi float [ %3397, %3394 ], [ 0.000000e+00, %3304 ]
  %3402 = phi float [ %3338, %3394 ], [ 1.000000e+00, %3304 ]
  %3403 = add i32 %23, 208
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = lshr i32 %3405, 22
  %3407 = shl nuw nsw i32 %3406, 5
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3410 = extractvalue %dx.types.ResRet.i32 %3409, 0
  %3411 = and i32 %3410, 64
  %3412 = icmp eq i32 %3411, 0
  br i1 %3412, label %3446, label %3413

; <label>:3413                                    ; preds = %3398
  %3414 = add i32 %23, 404
  %3415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3414, i32 undef)  ; BufferLoad(srv,index,wot)
  %3416 = extractvalue %dx.types.ResRet.i32 %3415, 0
  %3417 = add i32 %3416, 0
  %3418 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3417, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3420 = extractvalue %dx.types.ResRet.i32 %3419, 0
  %3421 = and i32 %3420, 131072
  %3422 = icmp eq i32 %3421, 0
  %3423 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3418, %dx.types.Handle %59, float %2911, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3424 = extractvalue %dx.types.ResRet.f32 %3423, 0
  %3425 = extractvalue %dx.types.ResRet.f32 %3423, 1
  %3426 = extractvalue %dx.types.ResRet.f32 %3423, 2
  %3427 = fmul fast float %3424, %295
  %3428 = fmul fast float %3425, %298
  %3429 = fmul fast float %3426, %301
  br i1 %3422, label %3436, label %3430

; <label>:3430                                    ; preds = %3413
  %3431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3432 = extractvalue %dx.types.CBufRet.f32 %3431, 0
  %3433 = fmul fast float %3432, %3427
  %3434 = fmul fast float %3432, %3428
  %3435 = fmul fast float %3432, %3429
  br label %3436

; <label>:3436                                    ; preds = %3430, %3413
  %3437 = phi float [ %3433, %3430 ], [ %3427, %3413 ]
  %3438 = phi float [ %3434, %3430 ], [ %3428, %3413 ]
  %3439 = phi float [ %3435, %3430 ], [ %3429, %3413 ]
  %3440 = fmul fast float %3437, %3408
  %3441 = select i1 %163, float %3440, float %3437
  %3442 = call float @dx.op.dot3.f32(i32 55, float %3441, float %3438, float %3439, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3443 = select i1 %163, float 0.000000e+00, float %3437
  %3444 = select i1 %163, float %3442, float %3438
  %3445 = select i1 %163, float 0.000000e+00, float %3439
  br label %3446

; <label>:3446                                    ; preds = %3436, %3398
  %3447 = phi float [ %3443, %3436 ], [ 0.000000e+00, %3398 ]
  %3448 = phi float [ %3444, %3436 ], [ 0.000000e+00, %3398 ]
  %3449 = phi float [ %3445, %3436 ], [ 0.000000e+00, %3398 ]
  %3450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3451 = extractvalue %dx.types.ResRet.i32 %3450, 0
  %3452 = and i32 %3451, 1024
  %3453 = icmp eq i32 %3452, 0
  br i1 %3453, label %3484, label %3454

; <label>:3454                                    ; preds = %3446
  %3455 = add i32 %23, 200
  %3456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3455, i32 undef)  ; BufferLoad(srv,index,wot)
  %3457 = extractvalue %dx.types.ResRet.i32 %3456, 0
  %3458 = and i32 %3457, 255
  %3459 = uitofp i32 %3458 to float
  %3460 = fmul fast float %3459, 0x3F70101020000000
  %3461 = lshr i32 %3457, 8
  %3462 = and i32 %3461, 255
  %3463 = uitofp i32 %3462 to float
  %3464 = fmul fast float %3463, 0x3F70101020000000
  %3465 = lshr i32 %3457, 16
  %3466 = and i32 %3465, 255
  %3467 = uitofp i32 %3466 to float
  %3468 = fmul fast float %3467, 0x3F70101020000000
  %3469 = fmul fast float %3460, %3460
  %3470 = fmul fast float %3464, %3464
  %3471 = fmul fast float %3468, %3468
  %3472 = add i32 %23, 468
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = add i32 %3474, 0
  %3476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3476, %dx.types.Handle %60, float %2911, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3478 = extractvalue %dx.types.ResRet.f32 %3477, 0
  %3479 = extractvalue %dx.types.ResRet.f32 %3477, 1
  %3480 = extractvalue %dx.types.ResRet.f32 %3477, 2
  %3481 = fmul fast float %3469, %3478
  %3482 = fmul fast float %3470, %3479
  %3483 = fmul fast float %3471, %3480
  br label %3484

; <label>:3484                                    ; preds = %3454, %3446
  %3485 = phi float [ %3481, %3454 ], [ 0.000000e+00, %3446 ]
  %3486 = phi float [ %3482, %3454 ], [ 0.000000e+00, %3446 ]
  %3487 = phi float [ %3483, %3454 ], [ 0.000000e+00, %3446 ]
  %3488 = fcmp fast ogt float %3485, 0.000000e+00
  %3489 = fcmp fast ogt float %3486, 0.000000e+00
  %3490 = fcmp fast ogt float %3487, 0.000000e+00
  %3491 = call float @dx.op.unary.f32(i32 23, float %3485)  ; Log(value)
  %3492 = call float @dx.op.unary.f32(i32 23, float %3486)  ; Log(value)
  %3493 = call float @dx.op.unary.f32(i32 23, float %3487)  ; Log(value)
  %3494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3495 = extractvalue %dx.types.ResRet.i32 %3494, 0
  %3496 = lshr i32 %3495, 7
  %3497 = and i32 %3496, 32752
  %3498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3497)  ; LegacyF16ToF32(value)
  %3499 = fmul fast float %3491, 0xBFE62E4300000000
  %3500 = fmul fast float %3499, %3498
  %3501 = fmul fast float %3492, 0xBFE62E4300000000
  %3502 = fmul fast float %3501, %3498
  %3503 = fmul fast float %3493, 0xBFE62E4300000000
  %3504 = fmul fast float %3503, %3498
  %3505 = select i1 %3488, float %3500, float 1.270000e+02
  %3506 = select i1 %3489, float %3502, float 1.270000e+02
  %3507 = select i1 %3490, float %3504, float 1.270000e+02
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = and i32 %3509, 10240
  %3511 = icmp eq i32 %3510, 0
  br i1 %3511, label %3532, label %3512

; <label>:3512                                    ; preds = %3484
  %3513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.i32 %3513, 0
  %3515 = and i32 %3514, 2048
  %3516 = icmp eq i32 %3515, 0
  br i1 %3516, label %3532, label %3517

; <label>:3517                                    ; preds = %3512
  %3518 = add i32 %23, 484
  %3519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3518, i32 undef)  ; BufferLoad(srv,index,wot)
  %3520 = extractvalue %dx.types.ResRet.i32 %3519, 0
  %3521 = add i32 %3520, 0
  %3522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3522, %dx.types.Handle %60, float %2911, float %2912, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3524 = extractvalue %dx.types.ResRet.f32 %3523, 3
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = shl i32 %3526, 4
  %3528 = and i32 %3527, 32752
  %3529 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3528)  ; LegacyF16ToF32(value)
  %3530 = fmul fast float %3529, %3524
  %3531 = call float @dx.op.binary.f32(i32 35, float %3530, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3532

; <label>:3532                                    ; preds = %3517, %3512, %3484
  %3533 = phi float [ %3531, %3517 ], [ 0x3F70101020000000, %3512 ], [ 0x3F70101020000000, %3484 ]
  %3534 = add i32 %23, 144
  %3535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.i32 %3535, 0
  %3537 = and i32 %3536, 255
  %3538 = uitofp i32 %3537 to float
  %3539 = lshr i32 %3536, 8
  %3540 = and i32 %3539, 255
  %3541 = uitofp i32 %3540 to float
  %3542 = call float @dx.op.dot3.f32(i32 55, float %3319, float %3320, float %3321, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3543 = fmul fast float %3541, %3542
  %3544 = fadd fast float %3543, %3538
  %3545 = fmul fast float %3544, 0x3F70101020000000
  %3546 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  br i1 %2803, label %3547, label %3582

; <label>:3547                                    ; preds = %3532
  %3548 = fmul fast float %3533, 2.000000e+00
  %3549 = fcmp fast olt float %3505, 1.270000e+02
  %3550 = fcmp fast olt float %3506, 1.270000e+02
  %3551 = fcmp fast olt float %3507, 1.270000e+02
  %3552 = fmul fast float %3505, 0xBFF7154760000000
  %3553 = fmul fast float %3552, %3548
  %3554 = fmul fast float %3506, 0xBFF7154760000000
  %3555 = fmul fast float %3554, %3548
  %3556 = fmul fast float %3507, 0xBFF7154760000000
  %3557 = fmul fast float %3556, %3548
  %3558 = call float @dx.op.unary.f32(i32 21, float %3553)  ; Exp(value)
  %3559 = call float @dx.op.unary.f32(i32 21, float %3555)  ; Exp(value)
  %3560 = call float @dx.op.unary.f32(i32 21, float %3557)  ; Exp(value)
  %3561 = call float @dx.op.unary.f32(i32 7, float %3558)  ; Saturate(value)
  %3562 = call float @dx.op.unary.f32(i32 7, float %3559)  ; Saturate(value)
  %3563 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3564 = fadd fast float %3561, -1.000000e+00
  %3565 = select i1 %3549, float %3564, float -1.000000e+00
  %3566 = fadd fast float %3562, -1.000000e+00
  %3567 = select i1 %3550, float %3566, float -1.000000e+00
  %3568 = fadd fast float %3563, -1.000000e+00
  %3569 = select i1 %3551, float %3568, float -1.000000e+00
  %3570 = fmul fast float %3565, %3099
  %3571 = fmul fast float %3567, %3099
  %3572 = fmul fast float %3569, %3099
  %3573 = fadd fast float %3570, 1.000000e+00
  %3574 = fadd fast float %3571, 1.000000e+00
  %3575 = fadd fast float %3572, 1.000000e+00
  %3576 = fmul fast float %3573, %2792
  %3577 = fmul fast float %3574, %2793
  %3578 = fmul fast float %3575, %2794
  %3579 = fmul fast float %3573, %2795
  %3580 = fmul fast float %3574, %2796
  %3581 = fmul fast float %3575, %2797
  br label %3582

; <label>:3582                                    ; preds = %3547, %3532
  %3583 = phi float [ %3576, %3547 ], [ %2792, %3532 ]
  %3584 = phi float [ %3577, %3547 ], [ %2793, %3532 ]
  %3585 = phi float [ %3578, %3547 ], [ %2794, %3532 ]
  %3586 = phi float [ %3579, %3547 ], [ %2795, %3532 ]
  %3587 = phi float [ %3580, %3547 ], [ %2796, %3532 ]
  %3588 = phi float [ %3581, %3547 ], [ %2797, %3532 ]
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2804, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = and i32 %3590, 3
  %3592 = icmp eq i32 %3591, 3
  br i1 %3592, label %3671, label %3593

; <label>:3593                                    ; preds = %3582
  %3594 = and i32 %3590, 16
  %3595 = icmp ne i32 %3594, 0
  %3596 = select i1 %3595, float %3099, float 0.000000e+00
  %3597 = icmp eq i32 %3591, 0
  br i1 %3597, label %3598, label %3626

; <label>:3598                                    ; preds = %3593
  %3599 = and i32 %3590, 64
  %3600 = icmp ne i32 %3599, 0
  %3601 = select i1 %3600, float %3099, float 0.000000e+00
  %3602 = fsub fast float %3319, %3583
  %3603 = fsub fast float %3320, %3584
  %3604 = fsub fast float %3321, %3585
  %3605 = fmul fast float %3596, %3602
  %3606 = fmul fast float %3596, %3603
  %3607 = fmul fast float %3596, %3604
  %3608 = fadd fast float %3605, %3583
  %3609 = fadd fast float %3606, %3584
  %3610 = fadd fast float %3607, %3585
  %3611 = fsub fast float %3305, %2798
  %3612 = fmul fast float %3596, %3611
  %3613 = fadd fast float %3612, %2798
  %3614 = fsub fast float %3447, %3586
  %3615 = fsub fast float %3448, %3587
  %3616 = fsub fast float %3449, %3588
  %3617 = fmul fast float %3601, %3614
  %3618 = fmul fast float %3601, %3615
  %3619 = fmul fast float %3601, %3616
  %3620 = fadd fast float %3617, %3586
  %3621 = fadd fast float %3618, %3587
  %3622 = fadd fast float %3619, %3588
  %3623 = fsub fast float %3546, %2801
  %3624 = fmul fast float %3596, %3623
  %3625 = fadd fast float %3624, %2801
  br label %3671

; <label>:3626                                    ; preds = %3593
  %3627 = icmp eq i32 %3591, 1
  br i1 %3627, label %3628, label %3641

; <label>:3628                                    ; preds = %3626
  %3629 = fadd fast float %3319, -1.000000e+00
  %3630 = fadd fast float %3320, -1.000000e+00
  %3631 = fadd fast float %3321, -1.000000e+00
  %3632 = fmul fast float %3596, %3629
  %3633 = fmul fast float %3596, %3630
  %3634 = fmul fast float %3596, %3631
  %3635 = fadd fast float %3632, 1.000000e+00
  %3636 = fadd fast float %3633, 1.000000e+00
  %3637 = fadd fast float %3634, 1.000000e+00
  %3638 = fmul fast float %3635, %3583
  %3639 = fmul fast float %3636, %3584
  %3640 = fmul fast float %3637, %3585
  br label %3671

; <label>:3641                                    ; preds = %3626
  %3642 = icmp eq i32 %3591, 2
  br i1 %3642, label %3643, label %3671

; <label>:3643                                    ; preds = %3641
  %3644 = call float @dx.op.unary.f32(i32 24, float %3319)  ; Sqrt(value)
  %3645 = call float @dx.op.unary.f32(i32 24, float %3320)  ; Sqrt(value)
  %3646 = call float @dx.op.unary.f32(i32 24, float %3321)  ; Sqrt(value)
  %3647 = fadd fast float %3644, -5.000000e-01
  %3648 = fadd fast float %3645, -5.000000e-01
  %3649 = fadd fast float %3646, -5.000000e-01
  %3650 = fmul fast float %3647, %3596
  %3651 = fmul fast float %3648, %3596
  %3652 = fmul fast float %3649, %3596
  %3653 = fadd fast float %3650, 5.000000e-01
  %3654 = fadd fast float %3651, 5.000000e-01
  %3655 = fadd fast float %3652, 5.000000e-01
  %3656 = fmul fast float %3653, 2.000000e+00
  %3657 = fsub fast float 1.000000e+00, %3656
  %3658 = fmul fast float %3657, %3583
  %3659 = fadd fast float %3658, %3656
  %3660 = fmul fast float %3659, %3583
  %3661 = fmul fast float %3654, 2.000000e+00
  %3662 = fsub fast float 1.000000e+00, %3661
  %3663 = fmul fast float %3662, %3584
  %3664 = fadd fast float %3663, %3661
  %3665 = fmul fast float %3664, %3584
  %3666 = fmul fast float %3655, 2.000000e+00
  %3667 = fsub fast float 1.000000e+00, %3666
  %3668 = fmul fast float %3667, %3585
  %3669 = fadd fast float %3668, %3666
  %3670 = fmul fast float %3669, %3585
  br label %3671

; <label>:3671                                    ; preds = %3643, %3641, %3628, %3598, %3582
  %3672 = phi float [ %3583, %3582 ], [ %3660, %3643 ], [ %3583, %3641 ], [ %3638, %3628 ], [ %3608, %3598 ]
  %3673 = phi float [ %3584, %3582 ], [ %3665, %3643 ], [ %3584, %3641 ], [ %3639, %3628 ], [ %3609, %3598 ]
  %3674 = phi float [ %3585, %3582 ], [ %3670, %3643 ], [ %3585, %3641 ], [ %3640, %3628 ], [ %3610, %3598 ]
  %3675 = phi float [ %3586, %3582 ], [ %3586, %3643 ], [ %3586, %3641 ], [ %3586, %3628 ], [ %3620, %3598 ]
  %3676 = phi float [ %3587, %3582 ], [ %3587, %3643 ], [ %3587, %3641 ], [ %3587, %3628 ], [ %3621, %3598 ]
  %3677 = phi float [ %3588, %3582 ], [ %3588, %3643 ], [ %3588, %3641 ], [ %3588, %3628 ], [ %3622, %3598 ]
  %3678 = phi float [ %2798, %3582 ], [ %2798, %3643 ], [ %2798, %3641 ], [ %2798, %3628 ], [ %3613, %3598 ]
  %3679 = phi float [ %2801, %3582 ], [ %2801, %3643 ], [ %2801, %3641 ], [ %2801, %3628 ], [ %3625, %3598 ]
  %3680 = and i32 %3590, 12
  %3681 = icmp eq i32 %3680, 12
  br i1 %3681, label %3754, label %3682

; <label>:3682                                    ; preds = %3671
  %3683 = and i32 %3590, 2097184
  %3684 = icmp eq i32 %3683, 2097184
  %3685 = select i1 %3684, float %3099, float 0.000000e+00
  %3686 = and i32 %3590, 4194336
  %3687 = icmp eq i32 %3686, 4194336
  %3688 = select i1 %3687, float %3099, float 0.000000e+00
  %3689 = and i32 %3590, 8388640
  %3690 = icmp eq i32 %3689, 8388640
  %3691 = select i1 %3690, float %3099, float 0.000000e+00
  %3692 = icmp eq i32 %3680, 0
  br i1 %3692, label %3693, label %3706

; <label>:3693                                    ; preds = %3682
  %3694 = fsub fast float %3400, %2790
  %3695 = fsub fast float %3401, %2791
  %3696 = fmul fast float %3685, %3694
  %3697 = fmul fast float %3685, %3695
  %3698 = fadd fast float %3696, %2790
  %3699 = fadd fast float %3697, %2791
  %3700 = fsub fast float %3402, %2800
  %3701 = fmul fast float %3688, %3700
  %3702 = fadd fast float %3701, %2800
  %3703 = fsub fast float %3399, %2799
  %3704 = fmul fast float %3691, %3703
  %3705 = fadd fast float %3704, %2799
  br label %3754

; <label>:3706                                    ; preds = %3682
  %3707 = icmp eq i32 %3680, 4
  br i1 %3707, label %3708, label %3740

; <label>:3708                                    ; preds = %3706
  %3709 = fmul fast float %3685, %3400
  %3710 = fmul fast float %3685, %3401
  %3711 = fadd fast float %3709, %2790
  %3712 = fadd fast float %3710, %2791
  %3713 = call float @dx.op.binary.f32(i32 36, float %2800, float %3402)  ; FMin(a,b)
  %3714 = fsub fast float %3713, %2800
  %3715 = fmul fast float %3714, %3688
  %3716 = fadd fast float %3715, %2800
  %3717 = fadd fast float %3399, %2799
  %3718 = fmul fast float %3717, 0x3FF337FAE0000000
  %3719 = fmul fast float %2799, %2799
  %3720 = fmul fast float %3399, %3399
  %3721 = fadd fast float %3720, %3719
  %3722 = fmul fast float %3721, 0x3FE5152B00000000
  %3723 = fmul fast float %2799, 0xBFCC1F85E0000000
  %3724 = fmul fast float %3723, %3399
  %3725 = fadd fast float %3724, 0xBFE1363700000000
  %3726 = fadd fast float %3725, %3718
  %3727 = fsub fast float %3726, %3722
  %3728 = fmul fast float %3717, 0x3FBA6F0D00000000
  %3729 = fmul fast float %3721, 0x3FD0432880000000
  %3730 = fmul fast float %2799, 0xBFEF110800000000
  %3731 = fmul fast float %3730, %3399
  %3732 = fadd fast float %3731, 1.000000e+00
  %3733 = fsub fast float %3732, %3728
  %3734 = fadd fast float %3733, %3729
  %3735 = fdiv fast float %3727, %3734
  %3736 = call float @dx.op.unary.f32(i32 7, float %3735)  ; Saturate(value)
  %3737 = fsub fast float %3736, %2799
  %3738 = fmul fast float %3737, %3691
  %3739 = fadd fast float %3738, %2799
  br label %3754

; <label>:3740                                    ; preds = %3706
  %3741 = icmp eq i32 %3680, 8
  br i1 %3741, label %3742, label %3754

; <label>:3742                                    ; preds = %3740
  %3743 = fmul fast float %3685, %3400
  %3744 = fmul fast float %3685, %3401
  %3745 = fadd fast float %3743, %2790
  %3746 = fadd fast float %3744, %2791
  %3747 = call float @dx.op.binary.f32(i32 36, float %2800, float %3402)  ; FMin(a,b)
  %3748 = fsub fast float %3747, %2800
  %3749 = fmul fast float %3748, %3688
  %3750 = fadd fast float %3749, %2800
  %3751 = fsub fast float %3399, %2799
  %3752 = fmul fast float %3691, %3751
  %3753 = fadd fast float %3752, %2799
  br label %3754

; <label>:3754                                    ; preds = %3742, %3740, %3708, %3693, %3671, %3098, %2802, %2789
  %3755 = phi float [ %2790, %3671 ], [ %2790, %3098 ], [ %2790, %2789 ], [ %2790, %2802 ], [ %3698, %3693 ], [ %3711, %3708 ], [ %2790, %3740 ], [ %3745, %3742 ]
  %3756 = phi float [ %2791, %3671 ], [ %2791, %3098 ], [ %2791, %2789 ], [ %2791, %2802 ], [ %3699, %3693 ], [ %3712, %3708 ], [ %2791, %3740 ], [ %3746, %3742 ]
  %3757 = phi float [ %3672, %3671 ], [ %2792, %3098 ], [ %2792, %2789 ], [ %2792, %2802 ], [ %3672, %3693 ], [ %3672, %3708 ], [ %3672, %3740 ], [ %3672, %3742 ]
  %3758 = phi float [ %3673, %3671 ], [ %2793, %3098 ], [ %2793, %2789 ], [ %2793, %2802 ], [ %3673, %3693 ], [ %3673, %3708 ], [ %3673, %3740 ], [ %3673, %3742 ]
  %3759 = phi float [ %3674, %3671 ], [ %2794, %3098 ], [ %2794, %2789 ], [ %2794, %2802 ], [ %3674, %3693 ], [ %3674, %3708 ], [ %3674, %3740 ], [ %3674, %3742 ]
  %3760 = phi float [ %3675, %3671 ], [ %2795, %3098 ], [ %2795, %2789 ], [ %2795, %2802 ], [ %3675, %3693 ], [ %3675, %3708 ], [ %3675, %3740 ], [ %3675, %3742 ]
  %3761 = phi float [ %3676, %3671 ], [ %2796, %3098 ], [ %2796, %2789 ], [ %2796, %2802 ], [ %3676, %3693 ], [ %3676, %3708 ], [ %3676, %3740 ], [ %3676, %3742 ]
  %3762 = phi float [ %3677, %3671 ], [ %2797, %3098 ], [ %2797, %2789 ], [ %2797, %2802 ], [ %3677, %3693 ], [ %3677, %3708 ], [ %3677, %3740 ], [ %3677, %3742 ]
  %3763 = phi float [ %3678, %3671 ], [ %2798, %3098 ], [ %2798, %2789 ], [ %2798, %2802 ], [ %3678, %3693 ], [ %3678, %3708 ], [ %3678, %3740 ], [ %3678, %3742 ]
  %3764 = phi float [ %2799, %3671 ], [ %2799, %3098 ], [ %2799, %2789 ], [ %2799, %2802 ], [ %3705, %3693 ], [ %3739, %3708 ], [ %2799, %3740 ], [ %3753, %3742 ]
  %3765 = phi float [ %2800, %3671 ], [ %2800, %3098 ], [ %2800, %2789 ], [ %2800, %2802 ], [ %3702, %3693 ], [ %3716, %3708 ], [ %2800, %3740 ], [ %3750, %3742 ]
  %3766 = phi float [ %3679, %3671 ], [ %2801, %3098 ], [ %2801, %2789 ], [ %2801, %2802 ], [ %3679, %3693 ], [ %3679, %3708 ], [ %3679, %3740 ], [ %3679, %3742 ]
  %3767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.f32 %3767, 0
  %3769 = call float @dx.op.dot2.f32(i32 54, float %3755, float %3756, float %3755, float %3756)  ; Dot2(ax,ay,bx,by)
  %3770 = fmul fast float %3769, 0x3FE3333340000000
  %3771 = fsub fast float 1.000000e+00, %3770
  %3772 = call float @dx.op.dot3.f32(i32 55, float %3755, float %3756, float %3771, float %3755, float %3756, float %3771)  ; Dot3(ax,ay,az,bx,by,bz)
  %3773 = call float @dx.op.unary.f32(i32 25, float %3772)  ; Rsqrt(value)
  %3774 = fmul fast float %3773, %3755
  %3775 = fmul fast float %3773, %3756
  %3776 = fmul fast float %3771, %3773
  %3777 = fmul fast float %3776, %72
  %3778 = fmul fast float %3776, %74
  %3779 = fmul fast float %3776, %76
  %3780 = fmul fast float %3774, %44
  %3781 = fmul fast float %3774, %45
  %3782 = fmul fast float %3774, %46
  %3783 = fadd fast float %3777, %3780
  %3784 = fadd fast float %3778, %3781
  %3785 = fadd fast float %3779, %3782
  %3786 = fmul fast float %86, %3775
  %3787 = fmul fast float %87, %3775
  %3788 = fmul fast float %88, %3775
  %3789 = fadd fast float %3783, %3786
  %3790 = fadd fast float %3784, %3787
  %3791 = fadd fast float %3785, %3788
  %3792 = call float @dx.op.dot3.f32(i32 55, float %3789, float %3790, float %3791, float %3789, float %3790, float %3791)  ; Dot3(ax,ay,az,bx,by,bz)
  %3793 = call float @dx.op.unary.f32(i32 25, float %3792)  ; Rsqrt(value)
  %3794 = fmul fast float %3789, %3793
  %3795 = fmul fast float %3790, %3793
  %3796 = fmul fast float %3791, %3793
  %3797 = and i32 %25, 1
  %3798 = icmp eq i32 %3797, 0
  br i1 %3798, label %3799, label %4307

; <label>:3799                                    ; preds = %3754
  %3800 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %3801 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %3802 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %3803 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %3804 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %3805 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %3806 = fadd fast float %3800, %122
  %3807 = fadd fast float %3801, %123
  %3808 = fadd fast float %3802, %124
  %3809 = fadd fast float %3803, %122
  %3810 = fadd fast float %3804, %123
  %3811 = fadd fast float %3805, %124
  %3812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3813 = extractvalue %dx.types.CBufRet.f32 %3812, 0
  %3814 = extractvalue %dx.types.CBufRet.f32 %3812, 1
  %3815 = extractvalue %dx.types.CBufRet.f32 %3812, 2
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 2
  %3818 = extractvalue %dx.types.CBufRet.f32 %3816, 3
  %3819 = fmul fast float %3813, %63
  %3820 = fmul fast float %3819, %3817
  %3821 = fmul fast float %3814, %64
  %3822 = fmul fast float %3821, %3818
  %3823 = fptoui float %3820 to i32
  %3824 = fptoui float %3822 to i32
  %3825 = fadd fast float %3813, -1.000000e+00
  %3826 = fadd fast float %3814, -1.000000e+00
  %3827 = fptoui float %3825 to i32
  %3828 = fptoui float %3826 to i32
  %3829 = call i32 @dx.op.binary.i32(i32 40, i32 %3823, i32 %3827)  ; UMin(a,b)
  %3830 = call i32 @dx.op.binary.i32(i32 40, i32 %3824, i32 %3828)  ; UMin(a,b)
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 2
  %3833 = extractvalue %dx.types.CBufRet.f32 %3831, 3
  %3834 = fmul fast float %3832, %58
  %3835 = fsub fast float %3834, %3833
  %3836 = fadd fast float %3815, -1.000000e+00
  %3837 = call float @dx.op.binary.f32(i32 36, float %3835, float %3836)  ; FMin(a,b)
  %3838 = fptoui float %3837 to i32
  %3839 = fptoui float %3813 to i32
  %3840 = fptoui float %3814 to i32
  %3841 = mul i32 %3838, %3840
  %3842 = add i32 %3841, %3830
  %3843 = mul i32 %3842, %3839
  %3844 = add i32 %3843, %3829
  %3845 = shl i32 %3844, 2
  %3846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3847 = extractvalue %dx.types.ResRet.i32 %3846, 0
  %3848 = and i32 %3847, 1023
  %3849 = lshr i32 %3847, 10
  %3850 = icmp eq i32 %3848, 0
  br i1 %3850, label %4276, label %3851

; <label>:3851                                    ; preds = %3799
  %3852 = and i32 %3847, 1023
  br label %3853

; <label>:3853                                    ; preds = %3979, %3851
  %3854 = phi i32 [ %3929, %3979 ], [ 0, %3851 ]
  %3855 = phi float [ %3980, %3979 ], [ 0.000000e+00, %3851 ]
  %3856 = phi float [ %3981, %3979 ], [ %3768, %3851 ]
  %3857 = phi float [ %3982, %3979 ], [ %3766, %3851 ]
  %3858 = phi float [ %3983, %3979 ], [ 0.000000e+00, %3851 ]
  %3859 = phi float [ %3984, %3979 ], [ 0.000000e+00, %3851 ]
  %3860 = phi float [ %3985, %3979 ], [ %3760, %3851 ]
  %3861 = phi float [ %3986, %3979 ], [ %3761, %3851 ]
  %3862 = phi float [ %3987, %3979 ], [ %3762, %3851 ]
  %3863 = phi float [ %3988, %3979 ], [ %3794, %3851 ]
  %3864 = phi float [ %3989, %3979 ], [ %3795, %3851 ]
  %3865 = phi float [ %3990, %3979 ], [ %3796, %3851 ]
  %3866 = phi float [ %3991, %3979 ], [ %3765, %3851 ]
  %3867 = phi float [ %3992, %3979 ], [ %3764, %3851 ]
  %3868 = phi float [ %3993, %3979 ], [ 0.000000e+00, %3851 ]
  %3869 = phi float [ %3994, %3979 ], [ %3763, %3851 ]
  %3870 = phi float [ %3995, %3979 ], [ %3757, %3851 ]
  %3871 = phi float [ %3996, %3979 ], [ %3758, %3851 ]
  %3872 = phi float [ %3997, %3979 ], [ %3759, %3851 ]
  %3873 = add nuw nsw i32 %3854, %3849
  %3874 = shl i32 %3873, 2
  %3875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.i32 %3875, 0
  %3877 = shl i32 %3876, 8
  %3878 = or i32 %3877, 48
  %3879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.ResRet.f32 %3879, 3
  %3884 = or i32 %3877, 64
  %3885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.i32 %3885, 0
  %3887 = extractvalue %dx.types.ResRet.i32 %3885, 1
  %3888 = or i32 %3877, 80
  %3889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.f32 %3889, 2
  %3891 = extractvalue %dx.types.ResRet.f32 %3889, 3
  %3892 = or i32 %3877, 96
  %3893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.f32 %3893, 0
  %3895 = extractvalue %dx.types.ResRet.f32 %3893, 1
  %3896 = extractvalue %dx.types.ResRet.f32 %3893, 2
  %3897 = extractvalue %dx.types.ResRet.f32 %3893, 3
  %3898 = or i32 %3877, 112
  %3899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 2
  %3901 = or i32 %3877, 128
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = or i32 %3877, 144
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %3913 = or i32 %3877, 160
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.ResRet.f32 %3914, 3
  %3919 = or i32 %3877, 192
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = or i32 %3877, 208
  %3923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %3925 = or i32 %3877, 248
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = add nuw nsw i32 %3854, 1
  %3930 = bitcast float %3883 to i32
  %3931 = and i32 %3930, 512
  %3932 = icmp eq i32 %3931, 0
  %3933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.f32 %3933, 3
  %3938 = call float @dx.op.dot4.f32(i32 56, float %3934, float %3935, float %3936, float %3937, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3939 = or i32 %3877, 16
  %3940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3940, 2
  %3944 = extractvalue %dx.types.ResRet.f32 %3940, 3
  %3945 = call float @dx.op.dot4.f32(i32 56, float %3941, float %3942, float %3943, float %3944, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3946 = or i32 %3877, 32
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = call float @dx.op.dot4.f32(i32 56, float %3948, float %3949, float %3950, float %3951, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3953 = call float @dx.op.unary.f32(i32 27, float %3938)  ; Round_ni(value)
  %3954 = call float @dx.op.unary.f32(i32 6, float %3953)  ; FAbs(value)
  %3955 = call float @dx.op.unary.f32(i32 27, float %3945)  ; Round_ni(value)
  %3956 = call float @dx.op.unary.f32(i32 6, float %3955)  ; FAbs(value)
  %3957 = call float @dx.op.unary.f32(i32 6, float %3952)  ; FAbs(value)
  %3958 = call float @dx.op.unary.f32(i32 27, float %3957)  ; Round_ni(value)
  %3959 = fadd fast float %3956, %3954
  %3960 = fadd fast float %3959, %3958
  %3961 = fcmp fast oeq float %3960, 0.000000e+00
  %3962 = call float @dx.op.dot4.f32(i32 56, float %3934, float %3935, float %3936, float %3937, float %3806, float %3807, float %3808, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3963 = call float @dx.op.dot4.f32(i32 56, float %3941, float %3942, float %3943, float %3944, float %3806, float %3807, float %3808, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3964 = call float @dx.op.dot4.f32(i32 56, float %3934, float %3935, float %3936, float %3937, float %3809, float %3810, float %3811, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3965 = call float @dx.op.dot4.f32(i32 56, float %3941, float %3942, float %3943, float %3944, float %3809, float %3810, float %3811, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3966 = fsub fast float %3962, %3938
  %3967 = fsub fast float %3964, %3938
  %3968 = fsub fast float %3963, %3945
  %3969 = fsub fast float %3965, %3945
  %3970 = call float @dx.op.dot3.f32(i32 55, float %3880, float %3881, float %3882, float %72, float %74, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 2
  %3973 = fadd fast float %3972, %3970
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3971, 0
  %3976 = fcmp fast ogt float %3974, %3975
  %3977 = and i1 %3961, %3976
  %3978 = and i1 %3932, %3977
  br i1 %3978, label %3999, label %3979

; <label>:3979                                    ; preds = %4262, %4080, %3999, %3853
  %3980 = phi float [ %3855, %3999 ], [ %4083, %4080 ], [ %4083, %4262 ], [ %3855, %3853 ]
  %3981 = phi float [ %3856, %3999 ], [ %3856, %4080 ], [ %4237, %4262 ], [ %3856, %3853 ]
  %3982 = phi float [ %3857, %3999 ], [ %3857, %4080 ], [ %4235, %4262 ], [ %3857, %3853 ]
  %3983 = phi float [ %3858, %3999 ], [ %3858, %4080 ], [ %4207, %4262 ], [ %3858, %3853 ]
  %3984 = phi float [ %3859, %3999 ], [ %3859, %4080 ], [ %4205, %4262 ], [ %3859, %3853 ]
  %3985 = phi float [ %3860, %3999 ], [ %3860, %4080 ], [ %4272, %4262 ], [ %3860, %3853 ]
  %3986 = phi float [ %3861, %3999 ], [ %3861, %4080 ], [ %4273, %4262 ], [ %3861, %3853 ]
  %3987 = phi float [ %3862, %3999 ], [ %3862, %4080 ], [ %4274, %4262 ], [ %3862, %3853 ]
  %3988 = phi float [ %3863, %3999 ], [ %3863, %4080 ], [ %4186, %4262 ], [ %3863, %3853 ]
  %3989 = phi float [ %3864, %3999 ], [ %3864, %4080 ], [ %4187, %4262 ], [ %3864, %3853 ]
  %3990 = phi float [ %3865, %3999 ], [ %3865, %4080 ], [ %4188, %4262 ], [ %3865, %3853 ]
  %3991 = phi float [ %3866, %3999 ], [ %3866, %4080 ], [ %4215, %4262 ], [ %3866, %3853 ]
  %3992 = phi float [ %3867, %3999 ], [ %3867, %4080 ], [ %4212, %4262 ], [ %3867, %3853 ]
  %3993 = phi float [ %3868, %3999 ], [ %3868, %4080 ], [ %4209, %4262 ], [ %3868, %3853 ]
  %3994 = phi float [ %3869, %3999 ], [ %3869, %4080 ], [ %4203, %4262 ], [ %3869, %3853 ]
  %3995 = phi float [ %3870, %3999 ], [ %3870, %4080 ], [ %4198, %4262 ], [ %3870, %3853 ]
  %3996 = phi float [ %3871, %3999 ], [ %3871, %4080 ], [ %4199, %4262 ], [ %3871, %3853 ]
  %3997 = phi float [ %3872, %3999 ], [ %3872, %4080 ], [ %4200, %4262 ], [ %3872, %3853 ]
  %3998 = icmp eq i32 %3929, %3852
  br i1 %3998, label %4275, label %3853

; <label>:3999                                    ; preds = %3853
  %4000 = extractvalue %dx.types.ResRet.f32 %3899, 3
  %4001 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %4002 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %4003 = extractvalue %dx.types.ResRet.f32 %3889, 1
  %4004 = extractvalue %dx.types.ResRet.f32 %3889, 0
  %4005 = extractvalue %dx.types.ResRet.i32 %3885, 3
  %4006 = extractvalue %dx.types.ResRet.i32 %3885, 2
  %4007 = add i32 %4005, 0
  %4008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4007, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4010 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4008, %dx.types.Handle %4009, float %3938, float %3945, float undef, float undef, i32 0, i32 0, i32 undef, float %3966, float %3968, float undef, float %3967, float %3969, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4011 = extractvalue %dx.types.ResRet.f32 %4010, 0
  %4012 = fmul fast float %4011, %4004
  %4013 = fadd fast float %4012, %4003
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4015 = fmul fast float %3938, %3894
  %4016 = call float @dx.op.tertiary.f32(i32 46, float %3895, float %3945, float %4015)  ; FMad(a,b,c)
  %4017 = fadd fast float %4016, %4002
  %4018 = fmul fast float %3938, %3896
  %4019 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3945, float %4018)  ; FMad(a,b,c)
  %4020 = fadd fast float %4019, %4001
  %4021 = fmul fast float %3966, %3894
  %4022 = call float @dx.op.tertiary.f32(i32 46, float %3895, float %3968, float %4021)  ; FMad(a,b,c)
  %4023 = fmul fast float %3966, %3896
  %4024 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3968, float %4023)  ; FMad(a,b,c)
  %4025 = fmul fast float %3967, %3894
  %4026 = call float @dx.op.tertiary.f32(i32 46, float %3895, float %3969, float %4025)  ; FMad(a,b,c)
  %4027 = fmul fast float %3967, %3896
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3969, float %4027)  ; FMad(a,b,c)
  %4029 = add i32 %4006, 0
  %4030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4029, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4031 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4030, %dx.types.Handle %4009, float %4017, float %4020, float undef, float undef, i32 0, i32 0, i32 undef, float %4022, float %4024, float undef, float %4026, float %4028, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4032 = extractvalue %dx.types.ResRet.f32 %4031, 0
  %4033 = and i32 %3930, 1024
  %4034 = icmp ne i32 %4033, 0
  %4035 = fcmp fast ogt float %4032, 0x3FE0101020000000
  %4036 = uitofp i1 %4035 to float
  %4037 = select i1 %4034, float %4036, float %4032
  %4038 = and i32 %3930, 8192
  %4039 = icmp ne i32 %4038, 0
  %4040 = select i1 %4039, float %4000, float 1.000000e+00
  %4041 = fmul fast float %3938, 2.000000e+00
  %4042 = fadd fast float %4041, -1.000000e+00
  %4043 = call float @dx.op.unary.f32(i32 6, float %4042)  ; FAbs(value)
  %4044 = fmul fast float %4043, %3927
  %4045 = fsub fast float %4044, %3927
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4047 = fmul fast float %3945, 2.000000e+00
  %4048 = fadd fast float %4047, -1.000000e+00
  %4049 = call float @dx.op.unary.f32(i32 6, float %4048)  ; FAbs(value)
  %4050 = fmul fast float %4049, %3928
  %4051 = fsub fast float %4050, %3928
  %4052 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4053 = fmul fast float %3957, %3890
  %4054 = fsub fast float %4053, %3890
  %4055 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4056 = fmul fast float %4014, %4040
  %4057 = fmul fast float %4056, %4011
  %4058 = fmul fast float %4057, %4046
  %4059 = fmul fast float %4058, %4037
  %4060 = fmul fast float %4059, %4052
  %4061 = fmul fast float %4060, %4055
  %4062 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4063 = extractvalue %dx.types.CBufRet.f32 %4062, 1
  %4064 = extractvalue %dx.types.CBufRet.f32 %4062, 0
  %4065 = fsub fast float %3974, %4064
  %4066 = fmul fast float %4065, %4063
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = fmul fast float %4061, %3891
  %4069 = fadd fast float %4061, %3891
  %4070 = fmul fast float %4069, %3900
  %4071 = fsub fast float %4070, %3900
  %4072 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4073 = and i32 %3930, 128
  %4074 = icmp ne i32 %4073, 0
  %4075 = select i1 %4074, float %4072, float %4068
  %4076 = fmul fast float %4075, %4067
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = fcmp fast ugt float %4076, %4078
  br i1 %4079, label %4080, label %3979

; <label>:4080                                    ; preds = %3999
  %4081 = select i1 %4039, float %4076, float 0.000000e+00
  %4082 = fadd fast float %4081, %3855
  %4083 = call float @dx.op.unary.f32(i32 7, float %4082)  ; Saturate(value)
  br i1 %4039, label %3979, label %4084

; <label>:4084                                    ; preds = %4080
  %4085 = and i32 %3930, 4
  %4086 = and i32 %3930, 8
  %4087 = add i32 %3886, 0
  %4088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4087, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4089 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4090 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4088, %dx.types.Handle %4089, float %4017, float %4020, float undef, float undef, i32 0, i32 0, i32 undef, float %4022, float %4024, float undef, float %4026, float %4028, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4091 = extractvalue %dx.types.ResRet.f32 %4090, 0
  %4092 = extractvalue %dx.types.ResRet.f32 %4090, 1
  %4093 = extractvalue %dx.types.ResRet.f32 %4090, 2
  %4094 = extractvalue %dx.types.ResRet.f32 %4090, 3
  %4095 = bitcast float %3912 to i32
  %4096 = and i32 %4095, 255
  %4097 = uitofp i32 %4096 to float
  %4098 = lshr i32 %4095, 8
  %4099 = and i32 %4098, 255
  %4100 = uitofp i32 %4099 to float
  %4101 = fmul fast float %4094, %4097
  %4102 = fadd fast float %4101, %4100
  %4103 = fmul fast float %4102, 0x3F70101000000000
  %4104 = add i32 %3887, 0
  %4105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4104, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4106 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4105, %dx.types.Handle %4089, float %4017, float %4020, float undef, float undef, i32 0, i32 0, i32 undef, float %4022, float %4024, float undef, float %4026, float %4028, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.ResRet.f32 %4106, 1
  %4109 = extractvalue %dx.types.ResRet.f32 %4106, 2
  %4110 = extractvalue %dx.types.ResRet.f32 %4106, 3
  %4111 = bitcast float %3906 to i32
  %4112 = and i32 %4111, 255
  %4113 = uitofp i32 %4112 to float
  %4114 = lshr i32 %4111, 8
  %4115 = and i32 %4114, 255
  %4116 = uitofp i32 %4115 to float
  %4117 = lshr i32 %4111, 16
  %4118 = and i32 %4117, 255
  %4119 = uitofp i32 %4118 to float
  %4120 = fmul fast float %4119, 0x3F70101000000000
  %4121 = fmul fast float %4107, %4113
  %4122 = fadd fast float %4121, %4116
  %4123 = fmul fast float %4122, 0x3F70101000000000
  %4124 = fadd fast float %4108, -5.000000e-01
  %4125 = fadd fast float %4110, -5.000000e-01
  %4126 = fmul fast float %4124, %4120
  %4127 = fmul fast float %4125, %4120
  %4128 = fadd fast float %4126, 5.000000e-01
  %4129 = fadd fast float %4127, 5.000000e-01
  %4130 = fmul fast float %4091, %3915
  %4131 = fmul fast float %4092, %3916
  %4132 = fmul fast float %4093, %3917
  %4133 = fmul fast float %4128, 2.000000e+00
  %4134 = fadd fast float %4133, -1.000000e+00
  %4135 = fmul fast float %4129, 2.000000e+00
  %4136 = fadd fast float %4135, -1.000000e+00
  %4137 = fadd fast float %4134, %4136
  %4138 = fmul fast float %4137, 5.000000e-01
  %4139 = fsub fast float %4134, %4136
  %4140 = fmul fast float %4139, 5.000000e-01
  %4141 = call float @dx.op.unary.f32(i32 6, float %4138)  ; FAbs(value)
  %4142 = fsub fast float 1.000000e+00, %4141
  %4143 = call float @dx.op.unary.f32(i32 6, float %4140)  ; FAbs(value)
  %4144 = fsub fast float %4142, %4143
  %4145 = call float @dx.op.dot3.f32(i32 55, float %4138, float %4140, float %4144, float %4138, float %4140, float %4144)  ; Dot3(ax,ay,az,bx,by,bz)
  %4146 = call float @dx.op.unary.f32(i32 25, float %4145)  ; Rsqrt(value)
  %4147 = fmul fast float %4138, %4146
  %4148 = fmul fast float %4140, %4146
  %4149 = fmul fast float %4146, %4144
  %4150 = fmul fast float %4149, %3880
  %4151 = fmul fast float %4149, %3881
  %4152 = fmul fast float %4149, %3882
  %4153 = fmul fast float %4147, %3903
  %4154 = fmul fast float %4147, %3904
  %4155 = fmul fast float %4147, %3905
  %4156 = fadd fast float %4153, %4150
  %4157 = fadd fast float %4154, %4151
  %4158 = fadd fast float %4155, %4152
  %4159 = fmul fast float %4148, %3909
  %4160 = fmul fast float %4148, %3910
  %4161 = fmul fast float %4148, %3911
  %4162 = fadd fast float %4156, %4159
  %4163 = fadd fast float %4157, %4160
  %4164 = fadd fast float %4158, %4161
  %4165 = call float @dx.op.dot3.f32(i32 55, float %4162, float %4163, float %4164, float %4162, float %4163, float %4164)  ; Dot3(ax,ay,az,bx,by,bz)
  %4166 = call float @dx.op.unary.f32(i32 25, float %4165)  ; Rsqrt(value)
  %4167 = fmul fast float %4162, %4166
  %4168 = fmul fast float %4163, %4166
  %4169 = fmul fast float %4164, %4166
  %4170 = icmp ne i32 %4086, 0
  %4171 = select i1 %4170, float 1.000000e+00, float 0.000000e+00
  %4172 = fmul fast float %4076, %4171
  %4173 = and i32 %3930, 1
  %4174 = icmp eq i32 %4173, 0
  br i1 %4174, label %4175, label %4179

; <label>:4175                                    ; preds = %4084
  %4176 = fsub fast float %4167, %3863
  %4177 = fsub fast float %4168, %3864
  %4178 = fsub fast float %4169, %3865
  br label %4179

; <label>:4179                                    ; preds = %4175, %4084
  %4180 = phi float [ %4176, %4175 ], [ %4167, %4084 ]
  %4181 = phi float [ %4177, %4175 ], [ %4168, %4084 ]
  %4182 = phi float [ %4178, %4175 ], [ %4169, %4084 ]
  %4183 = fmul float %4182, %4172
  %4184 = fmul float %4181, %4172
  %4185 = fmul float %4180, %4172
  %4186 = fadd fast float %4185, %3863
  %4187 = fadd fast float %4184, %3864
  %4188 = fadd fast float %4183, %3865
  %4189 = icmp ne i32 %4085, 0
  %4190 = select i1 %4189, float 1.000000e+00, float 0.000000e+00
  %4191 = fmul fast float %4076, %4190
  %4192 = fsub fast float %4130, %3870
  %4193 = fsub fast float %4131, %3871
  %4194 = fsub fast float %4132, %3872
  %4195 = fmul fast float %4192, %4191
  %4196 = fmul fast float %4193, %4191
  %4197 = fmul fast float %4194, %4191
  %4198 = fadd fast float %4195, %3870
  %4199 = fadd fast float %4196, %3871
  %4200 = fadd fast float %4197, %3872
  %4201 = fsub fast float %4103, %3869
  %4202 = fmul fast float %4201, %4191
  %4203 = fadd fast float %4202, %3869
  %4204 = fmul fast float %4191, %3859
  %4205 = fsub fast float %3859, %4204
  %4206 = fmul fast float %4191, %3858
  %4207 = fsub fast float %3858, %4206
  %4208 = fadd fast float %4076, %3868
  %4209 = call float @dx.op.unary.f32(i32 7, float %4208)  ; Saturate(value)
  %4210 = fsub fast float %4123, %3867
  %4211 = fmul fast float %4210, %4172
  %4212 = fadd fast float %4211, %3867
  %4213 = fsub fast float %4109, %3866
  %4214 = fmul fast float %4213, %4172
  %4215 = fadd fast float %4214, %3866
  %4216 = call float @dx.op.dot3.f32(i32 55, float %4130, float %4131, float %4132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.CBufRet.f32 %4217, 1
  %4220 = fmul fast float %4219, %4216
  %4221 = fadd fast float %4220, %4218
  %4222 = call float @dx.op.unary.f32(i32 7, float %4221)  ; Saturate(value)
  %4223 = bitcast float %3918 to i32
  %4224 = and i32 %4223, 65535
  %4225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4224)  ; LegacyF16ToF32(value)
  %4226 = lshr i32 %4223, 16
  %4227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4226)  ; LegacyF16ToF32(value)
  %4228 = fcmp fast oge float %4225, 0.000000e+00
  %4229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4230 = extractvalue %dx.types.CBufRet.f32 %4229, 0
  %4231 = select i1 %4228, float %4225, float %4230
  %4232 = fadd fast float %4231, %4227
  %4233 = fsub fast float %4222, %3857
  %4234 = fmul fast float %4233, %4076
  %4235 = fadd fast float %4234, %3857
  %4236 = fmul fast float %4232, %4076
  %4237 = call float @dx.op.binary.f32(i32 35, float %3856, float %4236)  ; FMax(a,b)
  %4238 = and i32 %3930, 16
  %4239 = icmp eq i32 %4238, 0
  br i1 %4239, label %4262, label %4240

; <label>:4240                                    ; preds = %4179
  %4241 = bitcast float %3924 to i32
  %4242 = add i32 %3921, 0
  %4243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4242, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4244 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4243, %dx.types.Handle %4089, float %4017, float %4020, float undef, float undef, i32 0, i32 0, i32 undef, float %4022, float %4024, float undef, float %4026, float %4028, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = extractvalue %dx.types.ResRet.f32 %4244, 1
  %4247 = extractvalue %dx.types.ResRet.f32 %4244, 2
  %4248 = and i32 %4241, 65535
  %4249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4248)  ; LegacyF16ToF32(value)
  %4250 = fmul fast float %4245, %3915
  %4251 = fmul fast float %4246, %3916
  %4252 = fmul fast float %4247, %3917
  %4253 = and i32 %3930, 16384
  %4254 = icmp ne i32 %4253, 0
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4257 = select i1 %4254, float %4256, float 1.000000e+00
  %4258 = fmul fast float %4257, %4249
  %4259 = fmul fast float %4250, %4258
  %4260 = fmul fast float %4251, %4258
  %4261 = fmul fast float %4252, %4258
  br label %4262

; <label>:4262                                    ; preds = %4240, %4179
  %4263 = phi float [ %4259, %4240 ], [ 0.000000e+00, %4179 ]
  %4264 = phi float [ %4260, %4240 ], [ 0.000000e+00, %4179 ]
  %4265 = phi float [ %4261, %4240 ], [ 0.000000e+00, %4179 ]
  %4266 = fsub fast float %4263, %3860
  %4267 = fsub fast float %4264, %3861
  %4268 = fsub fast float %4265, %3862
  %4269 = fmul fast float %4266, %4076
  %4270 = fmul fast float %4267, %4076
  %4271 = fmul fast float %4268, %4076
  %4272 = fadd fast float %4269, %3860
  %4273 = fadd fast float %4270, %3861
  %4274 = fadd fast float %4271, %3862
  br label %3979

; <label>:4275                                    ; preds = %3979
  br label %4276

; <label>:4276                                    ; preds = %4275, %3799
  %4277 = phi float [ 0.000000e+00, %3799 ], [ %3980, %4275 ]
  %4278 = phi float [ %3768, %3799 ], [ %3981, %4275 ]
  %4279 = phi float [ %3766, %3799 ], [ %3982, %4275 ]
  %4280 = phi float [ 0.000000e+00, %3799 ], [ %3983, %4275 ]
  %4281 = phi float [ 0.000000e+00, %3799 ], [ %3984, %4275 ]
  %4282 = phi float [ %3760, %3799 ], [ %3985, %4275 ]
  %4283 = phi float [ %3761, %3799 ], [ %3986, %4275 ]
  %4284 = phi float [ %3762, %3799 ], [ %3987, %4275 ]
  %4285 = phi float [ %3794, %3799 ], [ %3988, %4275 ]
  %4286 = phi float [ %3795, %3799 ], [ %3989, %4275 ]
  %4287 = phi float [ %3796, %3799 ], [ %3990, %4275 ]
  %4288 = phi float [ %3765, %3799 ], [ %3991, %4275 ]
  %4289 = phi float [ %3764, %3799 ], [ %3992, %4275 ]
  %4290 = phi float [ 0.000000e+00, %3799 ], [ %3993, %4275 ]
  %4291 = phi float [ %3763, %3799 ], [ %3994, %4275 ]
  %4292 = phi float [ %3757, %3799 ], [ %3995, %4275 ]
  %4293 = phi float [ %3758, %3799 ], [ %3996, %4275 ]
  %4294 = phi float [ %3759, %3799 ], [ %3997, %4275 ]
  %4295 = call float @dx.op.dot3.f32(i32 55, float %4285, float %4286, float %4287, float %4285, float %4286, float %4287)  ; Dot3(ax,ay,az,bx,by,bz)
  %4296 = call float @dx.op.unary.f32(i32 25, float %4295)  ; Rsqrt(value)
  %4297 = fmul fast float %4296, %4285
  %4298 = fmul fast float %4296, %4286
  %4299 = fmul fast float %4296, %4287
  %4300 = fadd fast float %4290, %868
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = call float @dx.op.dot3.f32(i32 55, float %4297, float %4298, float %4299, float %4297, float %4298, float %4299)  ; Dot3(ax,ay,az,bx,by,bz)
  %4303 = call float @dx.op.unary.f32(i32 25, float %4302)  ; Rsqrt(value)
  %4304 = fmul fast float %4303, %4297
  %4305 = fmul fast float %4303, %4298
  %4306 = fmul fast float %4303, %4299
  br label %4307

; <label>:4307                                    ; preds = %4276, %3754
  %4308 = phi float [ %4304, %4276 ], [ %3794, %3754 ]
  %4309 = phi float [ %4305, %4276 ], [ %3795, %3754 ]
  %4310 = phi float [ %4306, %4276 ], [ %3796, %3754 ]
  %4311 = phi float [ %4292, %4276 ], [ %3757, %3754 ]
  %4312 = phi float [ %4293, %4276 ], [ %3758, %3754 ]
  %4313 = phi float [ %4294, %4276 ], [ %3759, %3754 ]
  %4314 = phi float [ %4282, %4276 ], [ %3760, %3754 ]
  %4315 = phi float [ %4283, %4276 ], [ %3761, %3754 ]
  %4316 = phi float [ %4284, %4276 ], [ %3762, %3754 ]
  %4317 = phi float [ %4291, %4276 ], [ %3763, %3754 ]
  %4318 = phi float [ %4301, %4276 ], [ %868, %3754 ]
  %4319 = phi float [ %4289, %4276 ], [ %3764, %3754 ]
  %4320 = phi float [ %4288, %4276 ], [ %3765, %3754 ]
  %4321 = phi float [ %4281, %4276 ], [ 0.000000e+00, %3754 ]
  %4322 = phi float [ %4280, %4276 ], [ 0.000000e+00, %3754 ]
  %4323 = phi float [ %4277, %4276 ], [ 0.000000e+00, %3754 ]
  %4324 = phi float [ %4278, %4276 ], [ %3768, %3754 ]
  %4325 = phi float [ %4279, %4276 ], [ %3766, %3754 ]
  %4326 = fadd fast float %4317, 0xBFB99999A0000000
  %4327 = call float @dx.op.unary.f32(i32 7, float %4326)  ; Saturate(value)
  %4328 = fmul fast float %4327, 0x3FF1C71C80000000
  %4329 = call float @dx.op.binary.f32(i32 36, float %4317, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4330 = fsub fast float 1.000000e+00, %4328
  %4331 = call float @dx.op.unary.f32(i32 7, float %4330)  ; Saturate(value)
  %4332 = fmul fast float %4331, %4311
  %4333 = fmul fast float %4331, %4312
  %4334 = fmul fast float %4331, %4313
  %4335 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4336 = call float @dx.op.unary.f32(i32 7, float %4333)  ; Saturate(value)
  %4337 = call float @dx.op.unary.f32(i32 7, float %4334)  ; Saturate(value)
  %4338 = fmul fast float %4328, %4311
  %4339 = fmul fast float %4328, %4312
  %4340 = fmul fast float %4328, %4313
  %4341 = fadd fast float %4338, %4329
  %4342 = fadd fast float %4339, %4329
  %4343 = fadd fast float %4340, %4329
  %4344 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4345 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4346 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4347 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.i32 %4348, 3
  %4350 = and i32 %4349, 8
  %4351 = icmp ne i32 %4350, 0
  %4352 = call float @dx.op.binary.f32(i32 35, float %4335, float %4311)  ; FMax(a,b)
  %4353 = call float @dx.op.binary.f32(i32 35, float %4336, float %4311)  ; FMax(a,b)
  %4354 = call float @dx.op.binary.f32(i32 35, float %4337, float %4311)  ; FMax(a,b)
  %4355 = call float @dx.op.dot3.f32(i32 55, float %4335, float %4336, float %4337, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4356 = select i1 %163, float %4311, float %4335
  %4357 = select i1 %163, float %4355, float %4336
  %4358 = select i1 %163, float 1.000000e+00, float %4337
  %4359 = select i1 %4351, float %4352, float %4356
  %4360 = select i1 %4351, float %4353, float %4357
  %4361 = select i1 %4351, float %4354, float %4358
  %4362 = and i32 %139, 3
  %4363 = select i1 %133, i32 %4362, i32 0
  %4364 = icmp eq i32 %4363, 1
  br i1 %4364, label %4365, label %4441

; <label>:4365                                    ; preds = %4307
  %4366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4367 = extractvalue %dx.types.CBufRet.f32 %4366, 0
  %4368 = extractvalue %dx.types.CBufRet.f32 %4366, 1
  %4369 = fadd fast float %4367, %122
  %4370 = fadd fast float %4368, %123
  %4371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4372 = extractvalue %dx.types.CBufRet.f32 %4371, 0
  %4373 = extractvalue %dx.types.CBufRet.f32 %4371, 1
  %4374 = fsub fast float %4369, %4372
  %4375 = fsub fast float %4370, %4373
  %4376 = fmul fast float %4374, %4374
  %4377 = fmul fast float %4375, %4375
  %4378 = fadd fast float %4376, %4377
  %4379 = call float @dx.op.unary.f32(i32 24, float %4378)  ; Sqrt(value)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4371, 2
  %4381 = fcmp fast olt float %4379, %4380
  br i1 %4381, label %4382, label %4435

; <label>:4382                                    ; preds = %4365
  %4383 = extractvalue %dx.types.CBufRet.f32 %4366, 2
  %4384 = fadd fast float %4383, %124
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 0
  %4387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4388 = extractvalue %dx.types.CBufRet.f32 %4387, 0
  %4389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4390 = extractvalue %dx.types.CBufRet.f32 %4389, 0
  %4391 = extractvalue %dx.types.CBufRet.f32 %4385, 1
  %4392 = extractvalue %dx.types.CBufRet.f32 %4387, 1
  %4393 = extractvalue %dx.types.CBufRet.f32 %4389, 1
  %4394 = extractvalue %dx.types.CBufRet.f32 %4385, 3
  %4395 = extractvalue %dx.types.CBufRet.f32 %4387, 3
  %4396 = extractvalue %dx.types.CBufRet.f32 %4389, 3
  %4397 = fadd fast float %4394, %4369
  %4398 = fadd fast float %4395, %4370
  %4399 = fadd fast float %4384, %4396
  %4400 = fmul fast float %4397, %4386
  %4401 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4388, float %4400)  ; FMad(a,b,c)
  %4402 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4390, float %4401)  ; FMad(a,b,c)
  %4403 = fmul fast float %4397, %4391
  %4404 = call float @dx.op.tertiary.f32(i32 46, float %4398, float %4392, float %4403)  ; FMad(a,b,c)
  %4405 = call float @dx.op.tertiary.f32(i32 46, float %4399, float %4393, float %4404)  ; FMad(a,b,c)
  %4406 = fsub fast float %4402, %4394
  %4407 = fsub fast float %4405, %4395
  %4408 = fsub fast float %4406, %4372
  %4409 = fadd fast float %4408, %4380
  %4410 = fsub fast float %4407, %4373
  %4411 = fadd fast float %4410, %4380
  %4412 = extractvalue %dx.types.CBufRet.f32 %4371, 3
  %4413 = fmul fast float %4409, %4412
  %4414 = fmul fast float %4411, %4412
  %4415 = call float @dx.op.unary.f32(i32 7, float %4413)  ; Saturate(value)
  %4416 = call float @dx.op.unary.f32(i32 7, float %4414)  ; Saturate(value)
  %4417 = fsub fast float 1.000000e+00, %4415
  %4418 = fsub fast float 1.000000e+00, %4416
  %4419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %17, float %4417, float %4418, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4420 = extractvalue %dx.types.ResRet.f32 %4419, 0
  %4421 = fcmp fast ugt float %4420, 0.000000e+00
  br i1 %4421, label %4422, label %4435

; <label>:4422                                    ; preds = %4382
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 2
  %4425 = fmul fast float %4424, %4420
  %4426 = extractvalue %dx.types.CBufRet.f32 %4423, 3
  %4427 = fadd fast float %4426, %4425
  %4428 = extractvalue %dx.types.CBufRet.f32 %4389, 2
  %4429 = fadd fast float %4427, %4396
  %4430 = fmul fast float %4402, %4390
  %4431 = call float @dx.op.tertiary.f32(i32 46, float %4405, float %4393, float %4430)  ; FMad(a,b,c)
  %4432 = call float @dx.op.tertiary.f32(i32 46, float %4429, float %4428, float %4431)  ; FMad(a,b,c)
  %4433 = fsub fast float %4432, %4396
  %4434 = fsub fast float %4433, %4383
  br label %4435

; <label>:4435                                    ; preds = %4422, %4382, %4365
  %4436 = phi i1 [ true, %4422 ], [ false, %4382 ], [ false, %4365 ]
  %4437 = phi float [ %4434, %4422 ], [ -1.310720e+05, %4382 ], [ -1.310720e+05, %4365 ]
  %4438 = fsub fast float %4437, %124
  %4439 = call float @dx.op.unary.f32(i32 7, float %4438)  ; Saturate(value)
  %4440 = select i1 %4436, float %4439, float 1.000000e+00
  br label %4441

; <label>:4441                                    ; preds = %4435, %4307
  %4442 = phi float [ %4440, %4435 ], [ 0.000000e+00, %4307 ]
  %4443 = icmp eq i32 %4363, 3
  %4444 = select i1 %4443, float 1.000000e+00, float %4442
  %4445 = call float @dx.op.binary.f32(i32 35, float %4323, float %4444)  ; FMax(a,b)
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = fcmp fast une float %4446, 0.000000e+00
  %4448 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4449 = call float @dx.op.unary.f32(i32 25, float %4448)  ; Rsqrt(value)
  br i1 %4447, label %4457, label %4450

; <label>:4450                                    ; preds = %4441
  %4451 = fmul fast float %4449, %122
  %4452 = fmul fast float %4449, %123
  %4453 = fmul fast float %4449, %124
  %4454 = fsub fast float -0.000000e+00, %4451
  %4455 = fsub fast float -0.000000e+00, %4452
  %4456 = fsub fast float -0.000000e+00, %4453
  br label %4625

; <label>:4457                                    ; preds = %4441
  %4458 = fmul fast float %122, %4449
  %4459 = fsub fast float -0.000000e+00, %4458
  %4460 = fmul fast float %123, %4449
  %4461 = fsub fast float -0.000000e+00, %4460
  %4462 = fmul fast float %124, %4449
  %4463 = fsub fast float -0.000000e+00, %4462
  %4464 = call float @dx.op.dot3.f32(i32 55, float %4459, float %4461, float %4463, float %72, float %74, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4465 = fmul fast float %4446, 2.500000e+00
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4446, 0x4013FFFFE0000000
  %4468 = fadd fast float %4467, 0xBFFFFFFFE0000000
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = fmul fast float %4446, 0x4004000020000000
  %4471 = fadd fast float %4470, 0xBFF8000040000000
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4474 = fmul fast float %4326, 1.000000e+01
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = fmul fast float %4475, 2.000000e+00
  %4477 = fsub fast float 3.000000e+00, %4476
  %4478 = fmul fast float %4475, %4475
  %4479 = fmul fast float %4478, %4477
  %4480 = fsub fast float 1.000000e+00, %4479
  %4481 = fsub fast float 0x3FE3333340000000, %4347
  %4482 = fmul fast float %4481, 0x400AAAAAA0000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4480, %4483
  %4485 = fmul fast float %4359, 0x3FEA2B8620000000
  %4486 = fmul fast float %4360, 0x3FEA2B8620000000
  %4487 = fmul fast float %4361, 0x3FEA2B8620000000
  %4488 = fadd fast float %4485, 0x3FC81DFBA0000000
  %4489 = fmul fast float %4488, %4359
  %4490 = fadd fast float %4489, 0x3F910E6020000000
  %4491 = fadd fast float %4486, 0x3FC81DFBA0000000
  %4492 = fmul fast float %4491, %4360
  %4493 = fadd fast float %4492, 0x3F910E6020000000
  %4494 = fadd fast float %4487, 0x3FC81DFBA0000000
  %4495 = fmul fast float %4494, %4361
  %4496 = fadd fast float %4495, 0x3F910E6020000000
  %4497 = call float @dx.op.unary.f32(i32 7, float %4490)  ; Saturate(value)
  %4498 = call float @dx.op.unary.f32(i32 7, float %4493)  ; Saturate(value)
  %4499 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4500 = fsub fast float %4497, %4359
  %4501 = fsub fast float %4498, %4360
  %4502 = fsub fast float %4499, %4361
  %4503 = fmul fast float %4500, %4473
  %4504 = fmul fast float %4503, %4484
  %4505 = fmul fast float %4501, %4473
  %4506 = fmul fast float %4505, %4484
  %4507 = fmul fast float %4502, %4473
  %4508 = fmul fast float %4507, %4484
  %4509 = fadd fast float %4504, %4359
  %4510 = fadd fast float %4506, %4360
  %4511 = fadd fast float %4508, %4361
  %4512 = fmul fast float %4320, %4320
  %4513 = fmul fast float %4512, %4512
  %4514 = fadd fast float %4469, 1.000000e+00
  %4515 = fsub fast float %4514, %4484
  %4516 = call float @dx.op.unary.f32(i32 7, float %4515)  ; Saturate(value)
  %4517 = call float @dx.op.dot3.f32(i32 55, float %72, float %74, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4518 = call float @dx.op.unary.f32(i32 7, float %4517)  ; Saturate(value)
  %4519 = fsub fast float 1.000000e+00, %4513
  %4520 = call float @dx.op.binary.f32(i32 36, float %4516, float %4519)  ; FMin(a,b)
  %4521 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4522 = call float @dx.op.binary.f32(i32 35, float %4520, float %4521)  ; FMax(a,b)
  %4523 = fadd fast float %4518, 0xBFE4CCCCC0000000
  %4524 = fmul fast float %4523, 0x4006DB6DA0000000
  %4525 = call float @dx.op.unary.f32(i32 7, float %4524)  ; Saturate(value)
  %4526 = fmul fast float %4525, 2.000000e+00
  %4527 = fsub fast float 3.000000e+00, %4526
  %4528 = bitcast float %4344 to i32
  %4529 = ashr i32 %4528, 1
  %4530 = add nsw i32 %4529, 532487669
  %4531 = bitcast i32 %4530 to float
  %4532 = fsub fast float 1.000000e+00, %4531
  %4533 = bitcast float %4532 to i32
  %4534 = sub nsw i32 2129859010, %4533
  %4535 = bitcast i32 %4534 to float
  %4536 = fmul fast float %4535, 2.000000e+00
  %4537 = bitcast float %4345 to i32
  %4538 = ashr i32 %4537, 1
  %4539 = add nsw i32 %4538, 532487669
  %4540 = bitcast i32 %4539 to float
  %4541 = fsub fast float 1.000000e+00, %4540
  %4542 = bitcast float %4541 to i32
  %4543 = sub nsw i32 2129859010, %4542
  %4544 = bitcast i32 %4543 to float
  %4545 = fmul fast float %4544, 2.000000e+00
  %4546 = bitcast float %4346 to i32
  %4547 = ashr i32 %4546, 1
  %4548 = add nsw i32 %4547, 532487669
  %4549 = bitcast i32 %4548 to float
  %4550 = fsub fast float 1.000000e+00, %4549
  %4551 = bitcast float %4550 to i32
  %4552 = sub nsw i32 2129859010, %4551
  %4553 = bitcast i32 %4552 to float
  %4554 = fmul fast float %4553, 2.000000e+00
  %4555 = fsub fast float 0x4002A9FBE0000000, %4536
  %4556 = fadd fast float %4536, 0x3FD54FDF00000000
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, %4555
  %4561 = fmul fast float %4560, %4560
  %4562 = fsub fast float 0x4002A9FBE0000000, %4545
  %4563 = fadd fast float %4545, 0x3FD54FDF00000000
  %4564 = bitcast float %4563 to i32
  %4565 = sub nsw i32 2129859010, %4564
  %4566 = bitcast i32 %4565 to float
  %4567 = fmul fast float %4566, %4562
  %4568 = fmul fast float %4567, %4567
  %4569 = fsub fast float 0x4002A9FBE0000000, %4554
  %4570 = fadd fast float %4554, 0x3FD54FDF00000000
  %4571 = bitcast float %4570 to i32
  %4572 = sub nsw i32 2129859010, %4571
  %4573 = bitcast i32 %4572 to float
  %4574 = fmul fast float %4573, %4569
  %4575 = fmul fast float %4574, %4574
  %4576 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4561)  ; FMax(a,b)
  %4577 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4568)  ; FMax(a,b)
  %4578 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4575)  ; FMax(a,b)
  %4579 = fsub fast float 1.000000e+00, %4464
  %4580 = fadd fast float %4579, %4480
  %4581 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4582 = fsub fast float 1.000000e+00, %4444
  %4583 = fmul fast float %4522, %4582
  %4584 = fmul fast float %4525, %4525
  %4585 = fmul fast float %4584, %4583
  %4586 = fmul fast float %4585, %4527
  %4587 = fmul fast float %4582, 0xBFE99999A0000000
  %4588 = fmul fast float %4587, %4473
  %4589 = fmul fast float %4588, %4484
  %4590 = fadd fast float %4589, 1.000000e+00
  %4591 = fadd fast float %4347, -1.000000e+00
  %4592 = fmul fast float %4590, %4591
  %4593 = fadd fast float %4592, 1.000000e+00
  %4594 = fsub fast float %4576, %4344
  %4595 = fsub fast float %4577, %4345
  %4596 = fsub fast float %4578, %4346
  %4597 = fmul fast float %4586, %4594
  %4598 = fmul fast float %4586, %4595
  %4599 = fmul fast float %4586, %4596
  %4600 = fadd fast float %4597, %4344
  %4601 = fadd fast float %4598, %4345
  %4602 = fadd fast float %4599, %4346
  %4603 = fsub fast float %72, %4308
  %4604 = fsub fast float %74, %4309
  %4605 = fsub fast float %76, %4310
  %4606 = fmul fast float %4586, %4603
  %4607 = fmul fast float %4586, %4604
  %4608 = fmul fast float %4586, %4605
  %4609 = fadd fast float %4606, %4308
  %4610 = fadd fast float %4607, %4309
  %4611 = fadd fast float %4608, %4310
  %4612 = fmul fast float %4586, %4581
  %4613 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4614 = fsub fast float 1.000000e+00, %4613
  %4615 = fmul fast float %4612, %4614
  %4616 = fadd fast float %4615, %4613
  %4617 = fsub fast float 1.000000e+00, %4320
  %4618 = fmul fast float %4586, %4617
  %4619 = fadd fast float %4618, %4320
  %4620 = call float @dx.op.dot3.f32(i32 55, float %4609, float %4610, float %4611, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %4621 = call float @dx.op.unary.f32(i32 25, float %4620)  ; Rsqrt(value)
  %4622 = fmul fast float %4609, %4621
  %4623 = fmul fast float %4610, %4621
  %4624 = fmul fast float %4611, %4621
  br label %4625

; <label>:4625                                    ; preds = %4457, %4450
  %4626 = phi float [ %4456, %4450 ], [ %4463, %4457 ]
  %4627 = phi float [ %4455, %4450 ], [ %4461, %4457 ]
  %4628 = phi float [ %4454, %4450 ], [ %4459, %4457 ]
  %4629 = phi float [ %4453, %4450 ], [ %4462, %4457 ]
  %4630 = phi float [ %4452, %4450 ], [ %4460, %4457 ]
  %4631 = phi float [ %4451, %4450 ], [ %4458, %4457 ]
  %4632 = phi float [ %4344, %4450 ], [ %4600, %4457 ]
  %4633 = phi float [ %4345, %4450 ], [ %4601, %4457 ]
  %4634 = phi float [ %4346, %4450 ], [ %4602, %4457 ]
  %4635 = phi float [ %4359, %4450 ], [ %4509, %4457 ]
  %4636 = phi float [ %4360, %4450 ], [ %4510, %4457 ]
  %4637 = phi float [ %4361, %4450 ], [ %4511, %4457 ]
  %4638 = phi float [ %4308, %4450 ], [ %4622, %4457 ]
  %4639 = phi float [ %4309, %4450 ], [ %4623, %4457 ]
  %4640 = phi float [ %4310, %4450 ], [ %4624, %4457 ]
  %4641 = phi float [ %4347, %4450 ], [ %4616, %4457 ]
  %4642 = phi float [ %4320, %4450 ], [ %4619, %4457 ]
  %4643 = select i1 %163, float 0.000000e+00, float %4634
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %4628, float %4627, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4646 = call float @dx.op.dot3.f32(i32 55, float %4631, float %4630, float %4629, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4647 = fmul fast float %4646, 2.000000e+00
  %4648 = fmul fast float %4647, %4638
  %4649 = fmul fast float %4647, %4639
  %4650 = fmul fast float %4647, %4640
  %4651 = fsub fast float %4631, %4648
  %4652 = fsub fast float %4630, %4649
  %4653 = fsub fast float %4629, %4650
  %4654 = call float @dx.op.binary.f32(i32 36, float %4642, float 1.000000e+00)  ; FMin(a,b)
  %4655 = fsub fast float 1.000000e+00, %4642
  %4656 = bitcast float %4655 to i32
  %4657 = sub nsw i32 2129859010, %4656
  %4658 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %40)  ; FMax(a,b)
  %4659 = call float @dx.op.dot3.f32(i32 55, float %41, float %42, float %43, float %41, float %42, float %43)  ; Dot3(ax,ay,az,bx,by,bz)
  %4660 = fcmp fast oeq float %4659, 0.000000e+00
  %4661 = fcmp fast oeq float %4658, 0.000000e+00
  %4662 = or i1 %4661, %4660
  br i1 %4662, label %4692, label %4663

; <label>:4663                                    ; preds = %4625
  %4664 = fsub fast float -0.000000e+00, %43
  %4665 = fsub fast float -0.000000e+00, %41
  %4666 = call float @dx.op.unary.f32(i32 24, float %4659)  ; Sqrt(value)
  %4667 = fdiv fast float %4666, %4658
  %4668 = fcmp fast ogt float %4667, 0x3FFB6F8900000000
  %4669 = select i1 %4668, float 0x3FFB6F8900000000, float %4667
  %4670 = fmul fast float %4669, 0x3FE8A23460000000
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = call float @dx.op.binary.f32(i32 35, float %4669, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4673 = fmul fast float %4671, %4658
  %4674 = fmul fast float %4672, 0x3FF279A740000000
  %4675 = fadd fast float %4674, -1.000000e+00
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4664, float %4665, float %42, float %4664, float %4665, float %42)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call float @dx.op.unary.f32(i32 25, float %4676)  ; Rsqrt(value)
  %4678 = fmul fast float %4677, %4664
  %4679 = fmul fast float %4677, %4665
  %4680 = fmul fast float %4677, %42
  %4681 = fmul fast float %4675, %4675
  %4682 = fsub fast float 1.000000e+00, %4681
  %4683 = fmul fast float %4672, 0x40005F8BE0000000
  %4684 = fsub fast float 0x400C5BF8A0000000, %4683
  %4685 = fdiv fast float %4673, %4684
  %4686 = fmul fast float %4685, 0x3FEE31C3C0000000
  %4687 = fmul fast float %4686, %4682
  %4688 = fmul fast float %4672, 0x3FDACB7480000000
  %4689 = fadd fast float %4688, 0xBFD7347680000000
  %4690 = fmul fast float %4689, %4685
  %4691 = fmul fast float %4690, %4682
  br label %4692

; <label>:4692                                    ; preds = %4663, %4625
  %4693 = phi float [ %4678, %4663 ], [ 0.000000e+00, %4625 ]
  %4694 = phi float [ %4679, %4663 ], [ 0.000000e+00, %4625 ]
  %4695 = phi float [ %4680, %4663 ], [ 0.000000e+00, %4625 ]
  %4696 = phi float [ %4687, %4663 ], [ 0.000000e+00, %4625 ]
  %4697 = phi float [ %4691, %4663 ], [ 0.000000e+00, %4625 ]
  %4698 = call float @dx.op.dot3.f32(i32 55, float %4693, float %4694, float %4695, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = fmul fast float %4698, %4698
  %4700 = fmul fast float %4699, 0x3FEE471020000000
  %4701 = fadd fast float %4700, 0xBFD42F6020000000
  %4702 = fmul fast float %4658, 0x3FD20DD760000000
  %4703 = fmul fast float %4701, %4697
  %4704 = fmul fast float %4696, 0x3FDF454380000000
  %4705 = fmul fast float %4704, %4698
  %4706 = fadd fast float %4705, %4702
  %4707 = fadd fast float %4706, %4703
  %4708 = call float @dx.op.dot3.f32(i32 55, float %4693, float %4694, float %4695, float %4651, float %4652, float %4653)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = fmul fast float %4708, 0x3FDF454380000000
  %4710 = fmul fast float %4708, %4708
  %4711 = fmul fast float %4710, 0x3FEE471020000000
  %4712 = fadd fast float %4711, 0xBFD42F6020000000
  %4713 = call float @dx.op.dot3.f32(i32 55, float %4658, float %4696, float %4697, float 0x3FD20DD760000000, float %4709, float %4712)  ; Dot3(ax,ay,az,bx,by,bz)
  %4714 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %36)  ; FMax(a,b)
  %4715 = call float @dx.op.dot3.f32(i32 55, float %37, float %38, float %39, float %37, float %38, float %39)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = fcmp fast oeq float %4715, 0.000000e+00
  %4717 = fcmp fast oeq float %4714, 0.000000e+00
  %4718 = or i1 %4717, %4716
  br i1 %4718, label %4748, label %4719

; <label>:4719                                    ; preds = %4692
  %4720 = fsub fast float -0.000000e+00, %39
  %4721 = fsub fast float -0.000000e+00, %37
  %4722 = call float @dx.op.unary.f32(i32 24, float %4715)  ; Sqrt(value)
  %4723 = fdiv fast float %4722, %4714
  %4724 = fcmp fast ogt float %4723, 0x3FFB6F8900000000
  %4725 = select i1 %4724, float 0x3FFB6F8900000000, float %4723
  %4726 = fmul fast float %4725, 0x3FE8A23460000000
  %4727 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4728 = call float @dx.op.binary.f32(i32 35, float %4725, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4729 = fmul fast float %4727, %4714
  %4730 = fmul fast float %4728, 0x3FF279A740000000
  %4731 = fadd fast float %4730, -1.000000e+00
  %4732 = call float @dx.op.dot3.f32(i32 55, float %4720, float %4721, float %38, float %4720, float %4721, float %38)  ; Dot3(ax,ay,az,bx,by,bz)
  %4733 = call float @dx.op.unary.f32(i32 25, float %4732)  ; Rsqrt(value)
  %4734 = fmul fast float %4733, %4720
  %4735 = fmul fast float %4733, %4721
  %4736 = fmul fast float %4733, %38
  %4737 = fmul fast float %4731, %4731
  %4738 = fsub fast float 1.000000e+00, %4737
  %4739 = fmul fast float %4728, 0x40005F8BE0000000
  %4740 = fsub fast float 0x400C5BF8A0000000, %4739
  %4741 = fdiv fast float %4729, %4740
  %4742 = fmul fast float %4741, 0x3FEE31C3C0000000
  %4743 = fmul fast float %4742, %4738
  %4744 = fmul fast float %4728, 0x3FDACB7480000000
  %4745 = fadd fast float %4744, 0xBFD7347680000000
  %4746 = fmul fast float %4745, %4741
  %4747 = fmul fast float %4746, %4738
  br label %4748

; <label>:4748                                    ; preds = %4719, %4692
  %4749 = phi float [ %4734, %4719 ], [ 0.000000e+00, %4692 ]
  %4750 = phi float [ %4735, %4719 ], [ 0.000000e+00, %4692 ]
  %4751 = phi float [ %4736, %4719 ], [ 0.000000e+00, %4692 ]
  %4752 = phi float [ %4743, %4719 ], [ 0.000000e+00, %4692 ]
  %4753 = phi float [ %4747, %4719 ], [ 0.000000e+00, %4692 ]
  %4754 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4750, float %4751, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = fmul fast float %4754, %4754
  %4756 = fmul fast float %4755, 0x3FEE471020000000
  %4757 = fadd fast float %4756, 0xBFD42F6020000000
  %4758 = fmul fast float %4714, 0x3FD20DD760000000
  %4759 = fmul fast float %4757, %4753
  %4760 = fmul fast float %4752, 0x3FDF454380000000
  %4761 = fmul fast float %4760, %4754
  %4762 = fadd fast float %4761, %4758
  %4763 = fadd fast float %4762, %4759
  %4764 = call float @dx.op.dot3.f32(i32 55, float %4749, float %4750, float %4751, float %4651, float %4652, float %4653)  ; Dot3(ax,ay,az,bx,by,bz)
  %4765 = fmul fast float %4764, 0x3FDF454380000000
  %4766 = fmul fast float %4764, %4764
  %4767 = fmul fast float %4766, 0x3FEE471020000000
  %4768 = fadd fast float %4767, 0xBFD42F6020000000
  %4769 = call float @dx.op.dot3.f32(i32 55, float %4714, float %4752, float %4753, float 0x3FD20DD760000000, float %4765, float %4768)  ; Dot3(ax,ay,az,bx,by,bz)
  %4770 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %32)  ; FMax(a,b)
  %4771 = call float @dx.op.dot3.f32(i32 55, float %33, float %34, float %35, float %33, float %34, float %35)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = fcmp fast oeq float %4771, 0.000000e+00
  %4773 = fcmp fast oeq float %4770, 0.000000e+00
  %4774 = or i1 %4773, %4772
  br i1 %4774, label %4804, label %4775

; <label>:4775                                    ; preds = %4748
  %4776 = fsub fast float -0.000000e+00, %35
  %4777 = fsub fast float -0.000000e+00, %33
  %4778 = call float @dx.op.unary.f32(i32 24, float %4771)  ; Sqrt(value)
  %4779 = fdiv fast float %4778, %4770
  %4780 = fcmp fast ogt float %4779, 0x3FFB6F8900000000
  %4781 = select i1 %4780, float 0x3FFB6F8900000000, float %4779
  %4782 = fmul fast float %4781, 0x3FE8A23460000000
  %4783 = call float @dx.op.unary.f32(i32 7, float %4782)  ; Saturate(value)
  %4784 = call float @dx.op.binary.f32(i32 35, float %4781, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4785 = fmul fast float %4783, %4770
  %4786 = fmul fast float %4784, 0x3FF279A740000000
  %4787 = fadd fast float %4786, -1.000000e+00
  %4788 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4777, float %34, float %4776, float %4777, float %34)  ; Dot3(ax,ay,az,bx,by,bz)
  %4789 = call float @dx.op.unary.f32(i32 25, float %4788)  ; Rsqrt(value)
  %4790 = fmul fast float %4789, %4776
  %4791 = fmul fast float %4789, %4777
  %4792 = fmul fast float %4789, %34
  %4793 = fmul fast float %4787, %4787
  %4794 = fsub fast float 1.000000e+00, %4793
  %4795 = fmul fast float %4784, 0x40005F8BE0000000
  %4796 = fsub fast float 0x400C5BF8A0000000, %4795
  %4797 = fdiv fast float %4785, %4796
  %4798 = fmul fast float %4797, 0x3FEE31C3C0000000
  %4799 = fmul fast float %4798, %4794
  %4800 = fmul fast float %4784, 0x3FDACB7480000000
  %4801 = fadd fast float %4800, 0xBFD7347680000000
  %4802 = fmul fast float %4801, %4797
  %4803 = fmul fast float %4802, %4794
  br label %4804

; <label>:4804                                    ; preds = %4775, %4748
  %4805 = phi float [ %4790, %4775 ], [ 0.000000e+00, %4748 ]
  %4806 = phi float [ %4791, %4775 ], [ 0.000000e+00, %4748 ]
  %4807 = phi float [ %4792, %4775 ], [ 0.000000e+00, %4748 ]
  %4808 = phi float [ %4799, %4775 ], [ 0.000000e+00, %4748 ]
  %4809 = phi float [ %4803, %4775 ], [ 0.000000e+00, %4748 ]
  %4810 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4806, float %4807, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %4811 = fmul fast float %4810, %4810
  %4812 = fmul fast float %4811, 0x3FEE471020000000
  %4813 = fadd fast float %4812, 0xBFD42F6020000000
  %4814 = fmul fast float %4770, 0x3FD20DD760000000
  %4815 = fmul fast float %4813, %4809
  %4816 = fmul fast float %4808, 0x3FDF454380000000
  %4817 = fmul fast float %4816, %4810
  %4818 = fadd fast float %4817, %4814
  %4819 = fadd fast float %4818, %4815
  %4820 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4806, float %4807, float %4651, float %4652, float %4653)  ; Dot3(ax,ay,az,bx,by,bz)
  %4821 = fmul fast float %4820, 0x3FDF454380000000
  %4822 = fmul fast float %4820, %4820
  %4823 = fmul fast float %4822, 0x3FEE471020000000
  %4824 = fadd fast float %4823, 0xBFD42F6020000000
  %4825 = call float @dx.op.dot3.f32(i32 55, float %4770, float %4808, float %4809, float 0x3FD20DD760000000, float %4821, float %4824)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = call float @dx.op.binary.f32(i32 35, float %4707, float 0.000000e+00)  ; FMax(a,b)
  %4827 = call float @dx.op.binary.f32(i32 35, float %4763, float 0.000000e+00)  ; FMax(a,b)
  %4828 = call float @dx.op.binary.f32(i32 35, float %4819, float 0.000000e+00)  ; FMax(a,b)
  %4829 = call float @dx.op.binary.f32(i32 35, float %4713, float 0.000000e+00)  ; FMax(a,b)
  %4830 = call float @dx.op.binary.f32(i32 35, float %4769, float 0.000000e+00)  ; FMax(a,b)
  %4831 = call float @dx.op.binary.f32(i32 35, float %4825, float 0.000000e+00)  ; FMax(a,b)
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = call float @dx.op.binary.f32(i32 36, float %4635, float %4833)  ; FMin(a,b)
  %4835 = fsub fast float 1.000000e+00, %4654
  %4836 = fmul fast float %4834, %4835
  %4837 = fsub fast float 1.000000e+00, %4836
  %4838 = bitcast float %4837 to i32
  %4839 = sub nsw i32 2129859010, %4838
  %4840 = bitcast i32 %4839 to float
  %4841 = call float @dx.op.binary.f32(i32 36, float %4636, float %4833)  ; FMin(a,b)
  %4842 = fmul fast float %4841, %4835
  %4843 = fsub fast float 1.000000e+00, %4842
  %4844 = bitcast float %4843 to i32
  %4845 = sub nsw i32 2129859010, %4844
  %4846 = bitcast i32 %4845 to float
  %4847 = call float @dx.op.binary.f32(i32 36, float %4637, float %4833)  ; FMin(a,b)
  %4848 = fmul fast float %4847, %4835
  %4849 = fsub fast float 1.000000e+00, %4848
  %4850 = bitcast float %4849 to i32
  %4851 = sub nsw i32 2129859010, %4850
  %4852 = bitcast i32 %4851 to float
  %4853 = fmul fast float %4826, %4654
  %4854 = fmul fast float %4853, %4840
  %4855 = fmul fast float %4827, %4654
  %4856 = fmul fast float %4855, %4846
  %4857 = fmul fast float %4828, %4654
  %4858 = fmul fast float %4857, %4852
  %4859 = call float @dx.op.binary.f32(i32 36, float %4632, float %4833)  ; FMin(a,b)
  %4860 = fmul fast float %4859, %4835
  %4861 = fsub fast float 1.000000e+00, %4860
  %4862 = bitcast float %4861 to i32
  %4863 = sub nsw i32 2129859010, %4862
  %4864 = bitcast i32 %4863 to float
  %4865 = call float @dx.op.binary.f32(i32 36, float %4633, float %4833)  ; FMin(a,b)
  %4866 = fmul fast float %4865, %4835
  %4867 = fsub fast float 1.000000e+00, %4866
  %4868 = bitcast float %4867 to i32
  %4869 = sub nsw i32 2129859010, %4868
  %4870 = bitcast i32 %4869 to float
  %4871 = call float @dx.op.binary.f32(i32 36, float %4643, float %4833)  ; FMin(a,b)
  %4872 = fmul fast float %4871, %4835
  %4873 = fsub fast float 1.000000e+00, %4872
  %4874 = bitcast float %4873 to i32
  %4875 = sub nsw i32 2129859010, %4874
  %4876 = bitcast i32 %4875 to float
  %4877 = fmul fast float %4829, %4654
  %4878 = fmul fast float %4877, %4864
  %4879 = fmul fast float %4830, %4654
  %4880 = fmul fast float %4879, %4870
  %4881 = fmul fast float %4831, %4654
  %4882 = fmul fast float %4881, %4876
  %4883 = call float @dx.op.dot3.f32(i32 55, float %4854, float %4856, float %4858, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4884 = select i1 %163, float 0.000000e+00, float %4854
  %4885 = select i1 %163, float %4883, float %4856
  %4886 = select i1 %163, float 0.000000e+00, float %4858
  %4887 = call float @dx.op.dot3.f32(i32 55, float %4878, float %4880, float %4882, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = select i1 %163, float 0.000000e+00, float %4878
  %4889 = select i1 %163, float %4887, float %4880
  %4890 = select i1 %163, float 0.000000e+00, float %4882
  %4891 = fmul fast float %4645, 9.843750e-01
  %4892 = fmul fast float %4641, 9.843750e-01
  %4893 = fadd fast float %4891, 7.812500e-03
  %4894 = fadd fast float %4892, 7.812500e-03
  %4895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %4893, float %4894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4896 = extractvalue %dx.types.ResRet.f32 %4895, 2
  %4897 = extractvalue %dx.types.ResRet.f32 %4895, 3
  %4898 = fmul fast float %4896, %4632
  %4899 = fmul fast float %4896, %4633
  %4900 = fmul fast float %4896, %4643
  %4901 = fadd fast float %4898, %4897
  %4902 = fadd fast float %4899, %4897
  %4903 = fadd fast float %4900, %4897
  %4904 = fcmp fast ogt float %4321, 0.000000e+00
  br i1 %4904, label %4905, label %4931

; <label>:4905                                    ; preds = %4804
  %4906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4321, float %4645, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4907 = extractvalue %dx.types.ResRet.f32 %4906, 0
  %4908 = extractvalue %dx.types.ResRet.f32 %4906, 1
  %4909 = extractvalue %dx.types.ResRet.f32 %4906, 2
  %4910 = fadd fast float %4907, -5.000000e-01
  %4911 = fadd fast float %4908, -5.000000e-01
  %4912 = fadd fast float %4909, -5.000000e-01
  %4913 = fsub fast float 1.000000e+00, %4632
  %4914 = fsub fast float 1.000000e+00, %4633
  %4915 = fsub fast float 1.000000e+00, %4643
  %4916 = fmul fast float %4632, 4.000000e+00
  %4917 = fmul fast float %4916, %4913
  %4918 = fmul fast float %4917, %4910
  %4919 = fmul fast float %4633, 4.000000e+00
  %4920 = fmul fast float %4919, %4914
  %4921 = fmul fast float %4920, %4911
  %4922 = fmul fast float %4643, 4.000000e+00
  %4923 = fmul fast float %4922, %4915
  %4924 = fmul fast float %4923, %4912
  %4925 = fadd fast float %4918, %4901
  %4926 = fadd fast float %4921, %4902
  %4927 = fadd fast float %4924, %4903
  %4928 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4929 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4930 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  br label %4931

; <label>:4931                                    ; preds = %4905, %4804
  %4932 = phi float [ %4928, %4905 ], [ %4901, %4804 ]
  %4933 = phi float [ %4929, %4905 ], [ %4902, %4804 ]
  %4934 = phi float [ %4930, %4905 ], [ %4903, %4804 ]
  %4935 = call float @dx.op.binary.f32(i32 35, float %4933, float %4934)  ; FMax(a,b)
  %4936 = call float @dx.op.binary.f32(i32 35, float %4932, float %4935)  ; FMax(a,b)
  %4937 = fsub fast float 1.000000e+00, %4936
  %4938 = fmul fast float %4937, %4884
  %4939 = fmul fast float %4937, %4885
  %4940 = fmul fast float %4937, %4886
  %4941 = call float @dx.op.dot3.f32(i32 55, float %4635, float %4636, float %4637, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4942 = fcmp fast ogt float %4941, 0x3E7FF19E20000000
  %4943 = fdiv fast float 1.000000e+00, %4941
  %4944 = select i1 %4942, float %4943, float 0.000000e+00
  %4945 = fmul fast float %4944, %4635
  %4946 = fmul fast float %4944, %4636
  %4947 = fmul fast float %4944, %4637
  %4948 = fadd fast float %4945, -1.000000e+00
  %4949 = fadd fast float %4946, -1.000000e+00
  %4950 = fadd fast float %4947, -1.000000e+00
  %4951 = fmul fast float %4948, 5.000000e-01
  %4952 = fmul fast float %4949, 5.000000e-01
  %4953 = fmul fast float %4950, 5.000000e-01
  %4954 = fadd fast float %4951, 1.000000e+00
  %4955 = fadd fast float %4952, 1.000000e+00
  %4956 = fadd fast float %4953, 1.000000e+00
  %4957 = fmul fast float %4932, %4888
  %4958 = fmul fast float %4933, %4889
  %4959 = fmul fast float %4934, %4890
  %4960 = fsub fast float 1.000000e+00, %4645
  %4961 = bitcast float %4960 to i32
  %4962 = sitofp i32 %4961 to float
  %4963 = fmul fast float %4962, 5.000000e+00
  %4964 = fadd fast float %4963, 0xC1EFBF8940000000
  %4965 = fptosi float %4964 to i32
  %4966 = bitcast i32 %4965 to float
  %4967 = fmul fast float %4966, %4322
  %4968 = fmul fast float %4884, %4967
  %4969 = fmul fast float %4968, %4937
  %4970 = fmul fast float %4969, %4954
  %4971 = fmul fast float %4885, %4967
  %4972 = fmul fast float %4971, %4937
  %4973 = fmul fast float %4972, %4955
  %4974 = fmul fast float %4886, %4967
  %4975 = fmul fast float %4974, %4937
  %4976 = fmul fast float %4975, %4956
  %4977 = fmul fast float %4938, %4318
  %4978 = fmul fast float %4939, %4318
  %4979 = fmul fast float %4940, %4318
  %4980 = fadd fast float %4957, %4314
  %4981 = fadd fast float %4980, %4970
  %4982 = fmul fast float %4981, %4318
  %4983 = fadd fast float %4958, %4315
  %4984 = fadd fast float %4983, %4973
  %4985 = fmul fast float %4984, %4318
  %4986 = fadd fast float %4959, %4316
  %4987 = fadd fast float %4986, %4976
  %4988 = fmul fast float %4987, %4318
  %4989 = bitcast i32 %4657 to float
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 3
  %4992 = fcmp fast oeq float %4991, 0.000000e+00
  br i1 %4992, label %5220, label %4993

; <label>:4993                                    ; preds = %4931
  %4994 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4995 = extractvalue %dx.types.CBufRet.f32 %4990, 1
  %4996 = extractvalue %dx.types.CBufRet.f32 %4990, 2
  %4997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4997, 0
  %4999 = extractvalue %dx.types.CBufRet.f32 %4997, 1
  %5000 = extractvalue %dx.types.CBufRet.f32 %4997, 2
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.CBufRet.f32 %5001, 1
  %5004 = call float @dx.op.dot3.f32(i32 55, float %4998, float %4999, float %5000, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5005 = select i1 %163, float %5002, float %4998
  %5006 = select i1 %163, float %5004, float %4999
  %5007 = select i1 %163, float %5003, float %5000
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 1
  %5010 = fcmp fast une float %5009, 0.000000e+00
  br i1 %5010, label %5011, label %5028

; <label>:5011                                    ; preds = %4993
  %5012 = fptoui float %63 to i32
  %5013 = fptoui float %64 to i32
  %5014 = lshr i32 %5012, 4
  %5015 = lshr i32 %5013, 4
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = fptoui float %5017 to i32
  %5019 = add i32 %5018, 15
  %5020 = lshr i32 %5019, 4
  %5021 = mul i32 %5020, %5015
  %5022 = add i32 %5021, %5014
  %5023 = shl i32 %5022, 3
  %5024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5023, i32 undef)  ; BufferLoad(srv,index,wot)
  %5025 = extractvalue %dx.types.ResRet.i32 %5024, 0
  %5026 = and i32 %5025, -268435456
  %5027 = icmp eq i32 %5026, -1342177280
  br i1 %5027, label %5038, label %5028

; <label>:5028                                    ; preds = %5011, %4993
  %5029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %19, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5030 = extractvalue %dx.types.CBufRet.f32 %5029, 2
  %5031 = extractvalue %dx.types.CBufRet.f32 %5029, 3
  %5032 = fmul fast float %5030, %63
  %5033 = fmul fast float %5031, %64
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %18, float %5032, float %5033, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.ResRet.f32 %5034, 2
  br label %5038

; <label>:5038                                    ; preds = %5028, %5011
  %5039 = phi float [ %5035, %5028 ], [ 0.000000e+00, %5011 ]
  %5040 = phi float [ %5036, %5028 ], [ 0.000000e+00, %5011 ]
  %5041 = phi float [ %5037, %5028 ], [ 0.000000e+00, %5011 ]
  %5042 = call float @dx.op.binary.f32(i32 36, float %5040, float %5041)  ; FMin(a,b)
  %5043 = call float @dx.op.binary.f32(i32 36, float %5039, float %5042)  ; FMin(a,b)
  %5044 = fcmp fast ogt float %5043, 0.000000e+00
  br i1 %5044, label %5045, label %5220, !dx.controlflow.hints !61

; <label>:5045                                    ; preds = %5038
  %5046 = fmul fast float %5039, %5005
  %5047 = fmul fast float %5040, %5006
  %5048 = fmul fast float %5041, %5007
  %5049 = fsub fast float %4994, %4631
  %5050 = fsub fast float %4995, %4630
  %5051 = fsub fast float %4996, %4629
  %5052 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float %5049, float %5050, float %5051)  ; Dot3(ax,ay,az,bx,by,bz)
  %5053 = call float @dx.op.unary.f32(i32 25, float %5052)  ; Rsqrt(value)
  %5054 = fmul fast float %5053, %5049
  %5055 = fmul fast float %5053, %5050
  %5056 = fmul fast float %5053, %5051
  %5057 = call float @dx.op.dot3.f32(i32 55, float %4994, float %4995, float %4996, float %4638, float %4639, float %4640)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = call float @dx.op.dot3.f32(i32 55, float %4628, float %4627, float %4626, float %5054, float %5055, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = call float @dx.op.unary.f32(i32 7, float %5057)  ; Saturate(value)
  %5060 = fmul fast float %5059, %5059
  %5061 = fmul fast float %5060, %4989
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = fmul fast float %5062, %5059
  %5064 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float %5054, float %5055, float %5056)  ; Dot3(ax,ay,az,bx,by,bz)
  %5065 = fmul fast float %5064, %5064
  %5066 = call float @dx.op.unary.f32(i32 6, float %5057)  ; FAbs(value)
  %5067 = fsub fast float 1.000000e+00, %4641
  %5068 = call float @dx.op.binary.f32(i32 35, float %5067, float 0x3F847AE140000000)  ; FMax(a,b)
  %5069 = fmul fast float %5068, %5068
  %5070 = fmul fast float %5069, %5069
  %5071 = fsub fast float 1.000000e+00, %5070
  %5072 = fmul fast float %4645, %4645
  %5073 = fmul fast float %5072, %5071
  %5074 = fadd fast float %5073, %5070
  %5075 = bitcast float %5074 to i32
  %5076 = ashr i32 %5075, 1
  %5077 = add nsw i32 %5076, 532487669
  %5078 = bitcast i32 %5077 to float
  %5079 = fadd fast float %5078, %4645
  %5080 = fmul fast float %5070, %5065
  %5081 = fsub fast float 1.000000e+00, %5065
  %5082 = fadd fast float %5081, %5080
  %5083 = fmul fast float %5066, %5066
  %5084 = fmul fast float %5083, %5071
  %5085 = fadd fast float %5084, %5070
  %5086 = bitcast float %5085 to i32
  %5087 = ashr i32 %5086, 1
  %5088 = add nsw i32 %5087, 532487669
  %5089 = bitcast i32 %5088 to float
  %5090 = fadd fast float %5089, %5066
  %5091 = fmul fast float %5082, %5082
  %5092 = fmul fast float %5091, %5079
  %5093 = fmul fast float %5092, %5090
  %5094 = fdiv fast float 0x3FF0A00000000000, %5093
  %5095 = fmul fast float %5094, %5070
  %5096 = call float @dx.op.unary.f32(i32 6, float %5058)  ; FAbs(value)
  %5097 = fsub fast float 1.000000e+00, %5096
  %5098 = bitcast float %5097 to i32
  %5099 = sitofp i32 %5098 to float
  %5100 = fmul fast float %5099, 5.000000e+00
  %5101 = fadd fast float %5100, 0xC1EFBF8940000000
  %5102 = fptosi float %5101 to i32
  %5103 = bitcast i32 %5102 to float
  %5104 = fsub fast float 1.000000e+00, %4632
  %5105 = fsub fast float 1.000000e+00, %4633
  %5106 = fsub fast float 1.000000e+00, %4643
  %5107 = fmul fast float %5103, %5104
  %5108 = fmul fast float %5103, %5105
  %5109 = fmul fast float %5103, %5106
  %5110 = fadd fast float %5107, %4632
  %5111 = fadd fast float %5108, %4633
  %5112 = fadd fast float %5109, %4643
  br i1 %4904, label %5113, label %5136

; <label>:5113                                    ; preds = %5045
  %5114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4321, float %5096, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 0
  %5116 = extractvalue %dx.types.ResRet.f32 %5114, 1
  %5117 = extractvalue %dx.types.ResRet.f32 %5114, 2
  %5118 = fadd fast float %5115, -5.000000e-01
  %5119 = fadd fast float %5116, -5.000000e-01
  %5120 = fadd fast float %5117, -5.000000e-01
  %5121 = fmul fast float %4632, 4.000000e+00
  %5122 = fmul fast float %5121, %5104
  %5123 = fmul fast float %5122, %5118
  %5124 = fmul fast float %4633, 4.000000e+00
  %5125 = fmul fast float %5124, %5105
  %5126 = fmul fast float %5125, %5119
  %5127 = fmul fast float %4643, 4.000000e+00
  %5128 = fmul fast float %5127, %5106
  %5129 = fmul fast float %5128, %5120
  %5130 = fadd fast float %5123, %5110
  %5131 = fadd fast float %5126, %5111
  %5132 = fadd fast float %5129, %5112
  %5133 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5134 = call float @dx.op.unary.f32(i32 7, float %5131)  ; Saturate(value)
  %5135 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  br label %5136

; <label>:5136                                    ; preds = %5113, %5045
  %5137 = phi float [ %5133, %5113 ], [ %5110, %5045 ]
  %5138 = phi float [ %5134, %5113 ], [ %5111, %5045 ]
  %5139 = phi float [ %5135, %5113 ], [ %5112, %5045 ]
  %5140 = fmul fast float %5057, 9.843750e-01
  %5141 = fadd fast float %5140, 7.812500e-03
  %5142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %17, float %5141, float %4894, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5143 = extractvalue %dx.types.ResRet.f32 %5142, 2
  %5144 = extractvalue %dx.types.ResRet.f32 %5142, 3
  %5145 = fmul fast float %5143, %4632
  %5146 = fmul fast float %5143, %4633
  %5147 = fmul fast float %5143, %4643
  %5148 = fadd fast float %5145, %5144
  %5149 = fadd fast float %5146, %5144
  %5150 = fadd fast float %5147, %5144
  br i1 %4904, label %5151, label %5174

; <label>:5151                                    ; preds = %5136
  %5152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %17, float %4321, float %5057, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5153 = extractvalue %dx.types.ResRet.f32 %5152, 0
  %5154 = extractvalue %dx.types.ResRet.f32 %5152, 1
  %5155 = extractvalue %dx.types.ResRet.f32 %5152, 2
  %5156 = fadd fast float %5153, -5.000000e-01
  %5157 = fadd fast float %5154, -5.000000e-01
  %5158 = fadd fast float %5155, -5.000000e-01
  %5159 = fmul fast float %4632, 4.000000e+00
  %5160 = fmul fast float %5159, %5104
  %5161 = fmul fast float %5160, %5156
  %5162 = fmul fast float %4633, 4.000000e+00
  %5163 = fmul fast float %5162, %5105
  %5164 = fmul fast float %5163, %5157
  %5165 = fmul fast float %4643, 4.000000e+00
  %5166 = fmul fast float %5165, %5106
  %5167 = fmul fast float %5166, %5158
  %5168 = fadd fast float %5161, %5148
  %5169 = fadd fast float %5164, %5149
  %5170 = fadd fast float %5167, %5150
  %5171 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5172 = call float @dx.op.unary.f32(i32 7, float %5169)  ; Saturate(value)
  %5173 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  br label %5174

; <label>:5174                                    ; preds = %5151, %5136
  %5175 = phi float [ %5171, %5151 ], [ %5148, %5136 ]
  %5176 = phi float [ %5172, %5151 ], [ %5149, %5136 ]
  %5177 = phi float [ %5173, %5151 ], [ %5150, %5136 ]
  %5178 = call float @dx.op.binary.f32(i32 35, float %5176, float %5177)  ; FMax(a,b)
  %5179 = call float @dx.op.binary.f32(i32 35, float %5175, float %5178)  ; FMax(a,b)
  %5180 = fsub fast float 1.000000e+00, %5179
  %5181 = fmul fast float %5137, %5095
  %5182 = fmul fast float %5138, %5095
  %5183 = fmul fast float %5139, %5095
  %5184 = fsub fast float 1.000000e+00, %5058
  %5185 = bitcast float %5184 to i32
  %5186 = sitofp i32 %5185 to float
  %5187 = fmul fast float %5186, 5.000000e+00
  %5188 = fadd fast float %5187, 0xC1EFBF8940000000
  %5189 = fptosi float %5188 to i32
  %5190 = bitcast i32 %5189 to float
  %5191 = fmul fast float %5190, %4322
  %5192 = fmul fast float %5180, %5191
  %5193 = fmul fast float %5192, %4954
  %5194 = fmul fast float %5192, %4955
  %5195 = fmul fast float %5192, %4956
  %5196 = fadd fast float %5193, %5181
  %5197 = fadd fast float %5194, %5182
  %5198 = fadd fast float %5195, %5183
  %5199 = fmul fast float %5063, %5046
  %5200 = fmul fast float %5199, %5180
  %5201 = fmul fast float %5063, %5047
  %5202 = fmul fast float %5201, %5180
  %5203 = fmul fast float %5063, %5048
  %5204 = fmul fast float %5203, %5180
  %5205 = fmul fast float %5199, %5196
  %5206 = fmul fast float %5201, %5197
  %5207 = fmul fast float %5203, %5198
  %5208 = fadd fast float %5200, %4938
  %5209 = fmul fast float %5208, %4318
  %5210 = fadd fast float %5202, %4939
  %5211 = fmul fast float %5210, %4318
  %5212 = fadd fast float %5204, %4940
  %5213 = fmul fast float %5212, %4318
  %5214 = fadd fast float %5205, %4981
  %5215 = fmul fast float %5214, %4318
  %5216 = fadd fast float %5206, %4984
  %5217 = fmul fast float %5216, %4318
  %5218 = fadd fast float %5207, %4987
  %5219 = fmul fast float %5218, %4318
  br label %5220

; <label>:5220                                    ; preds = %5174, %5038, %4931
  %5221 = phi float [ %4982, %4931 ], [ %4982, %5038 ], [ %5215, %5174 ]
  %5222 = phi float [ %4985, %4931 ], [ %4985, %5038 ], [ %5217, %5174 ]
  %5223 = phi float [ %4988, %4931 ], [ %4988, %5038 ], [ %5219, %5174 ]
  %5224 = phi float [ %4977, %4931 ], [ %4977, %5038 ], [ %5209, %5174 ]
  %5225 = phi float [ %4978, %4931 ], [ %4978, %5038 ], [ %5211, %5174 ]
  %5226 = phi float [ %4979, %4931 ], [ %4979, %5038 ], [ %5213, %5174 ]
  %5227 = call float @dx.op.unary.f32(i32 24, float %4635)  ; Sqrt(value)
  %5228 = call float @dx.op.unary.f32(i32 24, float %4636)  ; Sqrt(value)
  %5229 = call float @dx.op.unary.f32(i32 24, float %4637)  ; Sqrt(value)
  %5230 = fmul fast float %5227, %5224
  %5231 = fmul fast float %5228, %5225
  %5232 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5233 = extractvalue %dx.types.CBufRet.f32 %5232, 0
  br i1 %163, label %5234, label %5254

; <label>:5234                                    ; preds = %5220
  %5235 = fadd fast float %5226, %4324
  %5236 = fmul fast float %5235, %4325
  %5237 = fsub fast float 1.000000e+00, %4325
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5240 = extractvalue %dx.types.CBufRet.f32 %5239, 3
  %5241 = fmul fast float %5240, %5238
  %5242 = fadd fast float %5241, %5236
  %5243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5244 = extractvalue %dx.types.CBufRet.f32 %5243, 0
  %5245 = fmul fast float %5244, %4960
  %5246 = fsub fast float %5242, %5245
  %5247 = fadd fast float %5231, %5230
  %5248 = fmul fast float %5233, %5247
  %5249 = extractvalue %dx.types.CBufRet.f32 %5239, 1
  %5250 = fsub fast float %5246, %5249
  %5251 = extractvalue %dx.types.CBufRet.f32 %5239, 2
  %5252 = fmul fast float %5250, %5251
  %5253 = call float @dx.op.unary.f32(i32 7, float %5252)  ; Saturate(value)
  br label %5270

; <label>:5254                                    ; preds = %5220
  %5255 = fmul fast float %5229, %5226
  %5256 = fmul fast float %5233, %5230
  %5257 = fmul fast float %5233, %5231
  %5258 = fmul fast float %5255, %5233
  %5259 = add i32 %23, 356
  %5260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5261 = extractvalue %dx.types.ResRet.i32 %5260, 0
  %5262 = and i32 %5261, 32
  %5263 = icmp eq i32 %5262, 0
  br i1 %5263, label %5270, label %5264

; <label>:5264                                    ; preds = %5254
  %5265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5266 = extractvalue %dx.types.CBufRet.f32 %5265, 0
  %5267 = fmul fast float %5266, 0x3FE99999A0000000
  %5268 = fadd fast float %5266, %5256
  %5269 = fadd fast float %5267, %5258
  br label %5270

; <label>:5270                                    ; preds = %5264, %5254, %5234
  %5271 = phi float [ %5248, %5234 ], [ %5268, %5264 ], [ %5256, %5254 ]
  %5272 = phi float [ %5253, %5234 ], [ %5257, %5264 ], [ %5257, %5254 ]
  %5273 = phi float [ 1.000000e+00, %5234 ], [ %5269, %5264 ], [ %5258, %5254 ]
  %5274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %20, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5275 = extractvalue %dx.types.CBufRet.f32 %5274, 0
  %5276 = fmul fast float %5275, %5222
  %5277 = fmul fast float %5275, %5223
  %5278 = fadd fast float %5222, %5221
  %5279 = select i1 %163, float %5278, float %5221
  %5280 = fmul float %5279, %5275
  %5281 = select i1 %163, float 0.000000e+00, float %5276
  %5282 = select i1 %163, float 0.000000e+00, float %5277
  %5283 = fmul fast float %5271, %5227
  %5284 = fmul fast float %5272, %5228
  %5285 = fmul fast float %5273, %5229
  %5286 = fadd fast float %5280, %5283
  %5287 = fadd fast float %5281, %5284
  %5288 = fadd fast float %5282, %5285
  %5289 = select i1 %163, float %5272, float %5287
  %5290 = select i1 %163, float %5273, float %5288
  %5291 = call float @dx.op.binary.f32(i32 36, float %5286, float 3.225500e+04)  ; FMin(a,b)
  %5292 = call float @dx.op.binary.f32(i32 36, float %5289, float 3.225500e+04)  ; FMin(a,b)
  %5293 = call float @dx.op.binary.f32(i32 36, float %5290, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5291)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5292)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5293)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!33 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!34 = !{void ()* @ps_main, !"ps_main", !35, !4, !60}
!35 = !{!36, !58, null}
!36 = !{!37, !40, !42, !44, !46, !48, !49, !50, !51, !52, !53, !55, !57}
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
!55 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !38, i8 1, i32 1, i8 1, i32 11, i8 0, !56}
!56 = !{i32 3, i32 1}
!57 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !38, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!58 = !{!59}
!59 = !{i32 0, !"SV_Target", i8 9, i8 16, !38, i8 0, i32 1, i8 4, i32 0, i8 0, !47}
!60 = !{i32 0, i64 24}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 1}

