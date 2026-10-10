;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float      w
; TEXCOORD                 0   xy          2     NONE   float   xy  
; TEXCOORD                 3   xyzw        3     NONE   float      w
; TEXCOORD                 8   xyzw        4     NONE   float   xyzw
; COLOR                    3   xyz         5     NONE    uint   x   
; COLOR                    4      w        5     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 7a63b18b809ad6d047cdadd21b010c06
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
; TEXCOORD                 0                 linear       
; TEXCOORD                 3                 linear       
; TEXCOORD                 8                 linear       
; COLOR                    3        nointerpolation       
; COLOR                    4        nointerpolation       
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
;   [128 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1     t37,space2     1
;                                   texture    byte         r/o      T2             t0     1
;                                   texture    byte         r/o      T3             t1     1
;                                   texture     f32          2d      T4     t69,space2     1
;                                   texture    byte         r/o      T5             t2     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 7, 8, 9, 15, 16, 17, 18, 19, 20 }
;   output 1 depends on inputs: { 0, 1, 3, 7, 8, 9, 15, 16, 17, 18, 19, 20 }
;   output 2 depends on inputs: { 0, 1, 3, 7, 8, 9, 15, 18, 19, 20 }
;   output 3 depends on inputs: { 0, 1, 7, 8, 9, 20 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.stable = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %13 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %14 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %15 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %16 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %17 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %18 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %19 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %20 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 0
  %24 = fmul fast float %23, %18
  %25 = fmul fast float %23, %19
  %26 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.i32 %27, 3
  %29 = and i32 %28, 3
  %30 = icmp ne i32 %29, 0
  %31 = and i32 %28, 4
  %32 = icmp ne i32 %31, 0
  %33 = and i1 %30, %32
  br i1 %33, label %34, label %45

; <label>:34                                      ; preds = %0
  %35 = extractvalue %dx.types.CBufRet.f32 %26, 3
  %36 = extractvalue %dx.types.CBufRet.f32 %26, 2
  %37 = fmul fast float %35, %25
  %38 = fmul fast float %36, %24
  %39 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %6, float %38, float %37, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %40 = extractvalue %dx.types.ResRet.f32 %39, 0
  %41 = fsub fast float 1.000000e+00, %40
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = fcmp fast olt float %41, %43
  br label %53

; <label>:45                                      ; preds = %0
  %46 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %47 = extractvalue %dx.types.CBufRet.i32 %46, 3
  %48 = and i32 %47, 3
  %49 = icmp ne i32 %48, 0
  %50 = and i32 %47, 4
  %51 = icmp eq i32 %50, 0
  %52 = and i1 %49, %51
  br label %53

; <label>:53                                      ; preds = %45, %34
  %54 = phi i1 [ %44, %34 ], [ %52, %45 ]
  %55 = shl i32 %9, 3
  %56 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %55, i32 undef)  ; BufferLoad(srv,index,wot)
  %57 = extractvalue %dx.types.ResRet.f32 %56, 0
  %58 = or i32 %55, 4
  %59 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %3, i32 %58, i32 undef)  ; BufferLoad(srv,index,wot)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = select i1 %54, float %60, float %57
  %62 = fmul fast float %61, %17
  %63 = mul i32 %9, 208
  %64 = add i32 %63, 188
  %65 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %64, i32 undef)  ; BufferLoad(srv,index,wot)
  %66 = extractvalue %dx.types.ResRet.i32 %65, 0
  %67 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.i32 %67, 3
  %69 = and i32 %68, 114688
  %70 = and i32 %68, 8
  %71 = icmp ne i32 %70, 0
  %72 = or i1 %54, %71
  %73 = select i1 %72, i32 %69, i32 16384
  %74 = and i32 %73, %66
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %53
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %77

; <label>:77                                      ; preds = %76, %53
  %78 = and i32 %66, 512
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %104, label %80

; <label>:80                                      ; preds = %77
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 3
  %84 = fmul fast float %82, %24
  %85 = fmul fast float %83, %25
  %86 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %87 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %88 = fdiv fast float %86, %87
  %89 = fcmp fast ogt float %88, 0x3FFC71C720000000
  br i1 %89, label %90, label %96

; <label>:90                                      ; preds = %80
  %91 = fdiv fast float 0x3FFC71C720000000, %88
  %92 = fmul fast float %91, %85
  %93 = fsub fast float 1.000000e+00, %91
  %94 = fmul fast float %93, 5.000000e-01
  %95 = fadd fast float %94, %92
  br label %104

; <label>:96                                      ; preds = %80
  %97 = fcmp fast olt float %88, 0x3FFC71C720000000
  br i1 %97, label %98, label %104

; <label>:98                                      ; preds = %96
  %99 = fmul fast float %84, 5.625000e-01
  %100 = fmul fast float %99, %88
  %101 = fmul fast float %88, 2.812500e-01
  %102 = fsub fast float 5.000000e-01, %101
  %103 = fadd fast float %102, %100
  br label %104

; <label>:104                                     ; preds = %98, %96, %90, %77
  %105 = phi float [ %15, %77 ], [ %84, %90 ], [ %103, %98 ], [ %84, %96 ]
  %106 = phi float [ %16, %77 ], [ %95, %90 ], [ %85, %98 ], [ %85, %96 ]
  %107 = fcmp fast ogt float %62, 0.000000e+00
  br i1 %107, label %109, label %108

; <label>:108                                     ; preds = %104
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %109

; <label>:109                                     ; preds = %108, %104
  %110 = call float @dx.op.unary.f32(i32 7, float %62)  ; Saturate(value)
  %111 = fmul fast float %14, %10
  %112 = fmul fast float %14, %11
  %113 = fmul fast float %14, %12
  %114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.f32 %114, 2
  %116 = fptosi float %20 to i32
  %117 = sitofp i32 %116 to float
  %118 = fadd fast float %115, %117
  %119 = fmul fast float %118, 0x3FE3C6EF40000000
  %120 = frem fast float %24, 2.560000e+02
  %121 = frem fast float %25, 2.560000e+02
  %122 = fptoui float %120 to i32
  %123 = fptoui float %121 to i32
  %124 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %122, i32 %123, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %125 = extractvalue %dx.types.ResRet.f32 %124, 0
  %126 = fadd fast float %125, %119
  %127 = call float @dx.op.unary.f32(i32 22, float %126)  ; Frc(value)
  %128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 88, i32 undef)  ; BufferLoad(srv,index,wot)
  %129 = extractvalue %dx.types.ResRet.i32 %128, 0
  %130 = add i32 %129, 0
  %131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %131, %dx.types.Handle %21, float %105, float %106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = extractvalue %dx.types.ResRet.f32 %132, 1
  %135 = extractvalue %dx.types.ResRet.f32 %132, 2
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = shl i32 %137, 4
  %139 = and i32 %138, 32752
  %140 = call float @dx.op.legacyF16ToF32(i32 131, i32 %139)  ; LegacyF16ToF32(value)
  %141 = lshr i32 %137, 7
  %142 = and i32 %141, 32752
  %143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %142)  ; LegacyF16ToF32(value)
  %144 = lshr i32 %137, 22
  %145 = shl nuw nsw i32 %144, 5
  %146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %145)  ; LegacyF16ToF32(value)
  %147 = fmul fast float %140, %133
  %148 = fmul fast float %143, %134
  %149 = fmul fast float %146, %135
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = fmul fast float %147, %151
  %153 = fmul fast float %148, %151
  %154 = fmul fast float %149, %151
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = lshr i32 %156, 22
  %158 = shl nuw nsw i32 %157, 5
  %159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %158)  ; LegacyF16ToF32(value)
  %160 = fmul fast float %159, %152
  %161 = select i1 %54, float %160, float %152
  %162 = fmul fast float %13, %10
  %163 = fmul fast float %162, %61
  %164 = fmul fast float %163, %161
  %165 = fmul fast float %13, %11
  %166 = fmul fast float %165, %61
  %167 = fmul fast float %166, %153
  %168 = fmul fast float %13, %12
  %169 = fmul fast float %168, %61
  %170 = fmul fast float %169, %154
  %171 = call float @dx.op.dot3.f32(i32 55, float %164, float %167, float %170, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %172 = select i1 %54, float 0.000000e+00, float %164
  %173 = select i1 %54, float %171, float %167
  %174 = select i1 %54, float 0.000000e+00, float %170
  %175 = fmul fast float %111, %161
  %176 = fmul fast float %112, %153
  %177 = fmul fast float %113, %154
  %178 = call float @dx.op.dot3.f32(i32 55, float %133, float %134, float %135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 32, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.i32 %179, 0
  %181 = and i32 %180, 255
  %182 = uitofp i32 %181 to float
  %183 = lshr i32 %180, 8
  %184 = and i32 %183, 255
  %185 = uitofp i32 %184 to float
  %186 = fmul fast float %185, %178
  %187 = fadd fast float %186, %182
  %188 = fmul fast float %187, 0x3F70101020000000
  %189 = call float @dx.op.unary.f32(i32 7, float %188)  ; Saturate(value)
  %190 = and i32 %66, 8192
  %191 = icmp eq i32 %190, 0
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  br i1 %191, label %200, label %194, !dx.controlflow.hints !43

; <label>:194                                     ; preds = %109
  %195 = add i32 %63, 176
  %196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = fcmp fast oge float %197, 0.000000e+00
  %199 = select i1 %198, float %197, float %193
  br label %206

; <label>:200                                     ; preds = %109
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = bitcast i32 %202 to float
  %204 = fcmp fast oge float %203, 0.000000e+00
  %205 = select i1 %204, float %203, float %193
  br label %206

; <label>:206                                     ; preds = %200, %194
  %207 = phi float [ %199, %194 ], [ %205, %200 ]
  %208 = fmul fast float %178, %17
  %209 = fadd fast float %172, %175
  %210 = fadd fast float %173, %176
  %211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.f32 %211, 0
  br i1 %54, label %213, label %237

; <label>:213                                     ; preds = %206
  %214 = fmul fast float %207, %189
  %215 = fsub fast float 1.000000e+00, %189
  %216 = fsub fast float %215, %208
  %217 = call float @dx.op.unary.f32(i32 7, float %216)  ; Saturate(value)
  %218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %219 = extractvalue %dx.types.CBufRet.f32 %218, 3
  %220 = fmul fast float %219, %217
  %221 = fadd fast float %220, %214
  %222 = fadd fast float %209, %210
  %223 = fmul fast float %222, %110
  %224 = fmul fast float %223, %212
  %225 = extractvalue %dx.types.CBufRet.f32 %218, 1
  %226 = fsub fast float %221, %225
  %227 = extractvalue %dx.types.CBufRet.f32 %218, 2
  %228 = fmul fast float %226, %227
  %229 = call float @dx.op.unary.f32(i32 7, float %228)  ; Saturate(value)
  %230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %231 = extractvalue %dx.types.CBufRet.f32 %230, 0
  %232 = fsub fast float %229, %231
  %233 = fmul fast float %232, 1.000000e+01
  %234 = call float @dx.op.unary.f32(i32 7, float %233)  ; Saturate(value)
  %235 = fmul fast float %234, %208
  %236 = fmul fast float %235, %229
  br label %250

; <label>:237                                     ; preds = %206
  %238 = fmul fast float %209, %110
  %239 = fmul fast float %210, %110
  %240 = fadd fast float %174, %177
  %241 = fmul fast float %240, %110
  %242 = fmul fast float %238, %212
  %243 = fmul fast float %239, %212
  %244 = fmul fast float %241, %212
  %245 = call float @dx.op.binary.f32(i32 35, float %243, float %244)  ; FMax(a,b)
  %246 = call float @dx.op.binary.f32(i32 35, float %242, float %245)  ; FMax(a,b)
  %247 = call float @dx.op.binary.f32(i32 35, float %246, float 0.000000e+00)  ; FMax(a,b)
  %248 = fcmp fast ugt float %247, 0x3F10000000000000
  br i1 %248, label %250, label %249

; <label>:249                                     ; preds = %237
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %250

; <label>:250                                     ; preds = %249, %237, %213
  %251 = phi float [ %224, %213 ], [ %242, %249 ], [ %242, %237 ]
  %252 = phi float [ %236, %213 ], [ %243, %249 ], [ %243, %237 ]
  %253 = phi float [ %235, %213 ], [ %244, %249 ], [ %244, %237 ]
  %254 = phi float [ %235, %213 ], [ 0.000000e+00, %249 ], [ 0.000000e+00, %237 ]
  %255 = fadd fast float %127, 0x3FE3C6EF40000000
  %256 = call float @dx.op.unary.f32(i32 22, float %255)  ; Frc(value)
  %257 = call float @dx.op.unary.f32(i32 23, float %251)  ; Log(value)
  %258 = fadd fast float %257, -7.000000e+00
  %259 = call float @dx.op.unary.f32(i32 21, float %258)  ; Exp(value)
  %260 = fmul fast float %256, 2.000000e+00
  %261 = fadd fast float %260, -1.000000e+00
  %262 = fmul fast float %259, %261
  %263 = fcmp fast ogt float %251, 0.000000e+00
  %264 = select i1 %263, float %262, float 0.000000e+00
  %265 = fadd fast float %264, %251
  %266 = fadd fast float %127, 0x3FF3C6EF40000000
  %267 = call float @dx.op.unary.f32(i32 22, float %266)  ; Frc(value)
  %268 = call float @dx.op.unary.f32(i32 23, float %252)  ; Log(value)
  %269 = fadd fast float %268, -7.000000e+00
  %270 = call float @dx.op.unary.f32(i32 21, float %269)  ; Exp(value)
  %271 = fmul fast float %267, 2.000000e+00
  %272 = fadd fast float %271, -1.000000e+00
  %273 = fmul fast float %270, %272
  %274 = fcmp fast ogt float %252, 0.000000e+00
  %275 = select i1 %274, float %273, float 0.000000e+00
  %276 = fadd fast float %275, %252
  %277 = fadd fast float %127, 0x3FFDAA66E0000000
  %278 = call float @dx.op.unary.f32(i32 22, float %277)  ; Frc(value)
  %279 = call float @dx.op.unary.f32(i32 23, float %253)  ; Log(value)
  %280 = fadd fast float %279, -6.000000e+00
  %281 = call float @dx.op.unary.f32(i32 21, float %280)  ; Exp(value)
  %282 = fmul fast float %278, 2.000000e+00
  %283 = fadd fast float %282, -1.000000e+00
  %284 = fmul fast float %281, %283
  %285 = fcmp fast ogt float %253, 0.000000e+00
  %286 = select i1 %285, float %284, float 0.000000e+00
  %287 = fadd fast float %286, %253
  %288 = select i1 %54, float %252, float %276
  %289 = select i1 %54, float %253, float %287
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %290 = call float @dx.op.binary.f32(i32 36, float %265, float 3.225500e+04)  ; FMin(a,b)
  %291 = call float @dx.op.binary.f32(i32 36, float %288, float 3.225500e+04)  ; FMin(a,b)
  %292 = call float @dx.op.binary.f32(i32 36, float %289, float 3.225500e+04)  ; FMin(a,b)
  %293 = call float @dx.op.binary.f32(i32 36, float %254, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %290)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %291)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %292)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %293)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.viewIdState = !{!19}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !13, !16}
!5 = !{!6, !8, !9, !10, !11, !12}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 128, null}
!16 = !{!17, !18}
!17 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!18 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!19 = !{[26 x i32] [i32 24, i32 4, i32 15, i32 15, i32 0, i32 7, i32 0, i32 0, i32 0, i32 15, i32 15, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 3, i32 3, i32 7, i32 7, i32 15, i32 0, i32 0, i32 0]}
!20 = !{void ()* @ps_main, !"ps_main", !21, !4, !42}
!21 = !{!22, !40, null}
!22 = !{!23, !26, !28, !30, !32, !35, !37, !39}
!23 = !{i32 0, !"SV_Position", i8 9, i8 3, !24, i8 4, i32 1, i8 4, i32 0, i8 0, !25}
!24 = !{i32 0}
!25 = !{i32 3, i32 11}
!26 = !{i32 1, !"COLOR", i8 9, i8 0, !24, i8 2, i32 1, i8 4, i32 1, i8 0, !27}
!27 = !{i32 3, i32 8}
!28 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !24, i8 2, i32 1, i8 2, i32 2, i8 0, !29}
!29 = !{i32 3, i32 3}
!30 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !31, i8 2, i32 1, i8 4, i32 3, i8 0, !27}
!31 = !{i32 3}
!32 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !33, i8 2, i32 1, i8 4, i32 4, i8 0, !34}
!33 = !{i32 8}
!34 = !{i32 3, i32 15}
!35 = !{i32 5, !"COLOR", i8 5, i8 0, !31, i8 1, i32 1, i8 3, i32 5, i8 0, !36}
!36 = !{i32 3, i32 1}
!37 = !{i32 6, !"COLOR", i8 5, i8 0, !38, i8 1, i32 1, i8 1, i32 5, i8 3, null}
!38 = !{i32 4}
!39 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !24, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!40 = !{!41}
!41 = !{i32 0, !"SV_Target", i8 9, i8 16, !24, i8 0, i32 1, i8 4, i32 0, i8 0, !34}
!42 = !{i32 0, i64 24}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 1}

