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
; shader hash: ed7f38a060ca591cc947fd07d07fe278
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
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %115 = fptosi float %20 to i32
  %116 = sitofp i32 %115 to float
  %117 = fadd fast float %114, %116
  %118 = fmul fast float %117, 0x3FE3C6EF40000000
  %119 = frem fast float %24, 2.560000e+02
  %120 = frem fast float %25, 2.560000e+02
  %121 = fptoui float %119 to i32
  %122 = fptoui float %120 to i32
  %123 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %5, i32 0, i32 %121, i32 %122, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %124 = extractvalue %dx.types.ResRet.f32 %123, 0
  %125 = fadd fast float %124, %118
  %126 = call float @dx.op.unary.f32(i32 22, float %125)  ; Frc(value)
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 72, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = add i32 %128, 0
  %130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %130, %dx.types.Handle %21, float %105, float %106, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = extractvalue %dx.types.ResRet.f32 %131, 1
  %134 = extractvalue %dx.types.ResRet.f32 %131, 2
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 44, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = shl i32 %136, 4
  %138 = and i32 %137, 32752
  %139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %138)  ; LegacyF16ToF32(value)
  %140 = lshr i32 %136, 7
  %141 = and i32 %140, 32752
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141)  ; LegacyF16ToF32(value)
  %143 = lshr i32 %136, 22
  %144 = shl nuw nsw i32 %143, 5
  %145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %144)  ; LegacyF16ToF32(value)
  %146 = fmul fast float %139, %132
  %147 = fmul fast float %142, %133
  %148 = fmul fast float %145, %134
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 48, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = lshr i32 %150, 22
  %152 = shl nuw nsw i32 %151, 5
  %153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %152)  ; LegacyF16ToF32(value)
  %154 = fmul fast float %153, %146
  %155 = select i1 %54, float %154, float %146
  %156 = fmul fast float %13, %10
  %157 = fmul fast float %156, %61
  %158 = fmul fast float %157, %155
  %159 = fmul fast float %13, %11
  %160 = fmul fast float %159, %61
  %161 = fmul fast float %160, %147
  %162 = fmul fast float %13, %12
  %163 = fmul fast float %162, %61
  %164 = fmul fast float %163, %148
  %165 = call float @dx.op.dot3.f32(i32 55, float %158, float %161, float %164, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %166 = select i1 %54, float 0.000000e+00, float %158
  %167 = select i1 %54, float %165, float %161
  %168 = fmul fast float %111, %155
  %169 = fmul fast float %112, %147
  %170 = fadd fast float %166, %168
  %171 = fadd fast float %167, %169
  %172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %173 = extractvalue %dx.types.CBufRet.f32 %172, 0
  br i1 %54, label %174, label %178

; <label>:174                                     ; preds = %109
  %175 = fadd fast float %170, %171
  %176 = fmul fast float %175, %110
  %177 = fmul fast float %176, %173
  br label %194

; <label>:178                                     ; preds = %109
  %179 = fmul fast float %14, %12
  %180 = fmul fast float %179, %148
  %181 = select i1 %54, float 0.000000e+00, float %164
  %182 = fmul fast float %170, %110
  %183 = fmul fast float %171, %110
  %184 = fadd fast float %181, %180
  %185 = fmul fast float %184, %110
  %186 = fmul fast float %182, %173
  %187 = fmul fast float %183, %173
  %188 = fmul fast float %185, %173
  %189 = call float @dx.op.binary.f32(i32 35, float %187, float %188)  ; FMax(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float %186, float %189)  ; FMax(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float %190, float 0.000000e+00)  ; FMax(a,b)
  %192 = fcmp fast ugt float %191, 0x3F10000000000000
  br i1 %192, label %194, label %193

; <label>:193                                     ; preds = %178
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %194

; <label>:194                                     ; preds = %193, %178, %174
  %195 = phi float [ %177, %174 ], [ %186, %193 ], [ %186, %178 ]
  %196 = phi float [ 0.000000e+00, %174 ], [ %187, %193 ], [ %187, %178 ]
  %197 = phi float [ 0.000000e+00, %174 ], [ %188, %193 ], [ %188, %178 ]
  %198 = fadd fast float %126, 0x3FE3C6EF40000000
  %199 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  %200 = call float @dx.op.unary.f32(i32 23, float %195)  ; Log(value)
  %201 = fadd fast float %200, -7.000000e+00
  %202 = call float @dx.op.unary.f32(i32 21, float %201)  ; Exp(value)
  %203 = fmul fast float %199, 2.000000e+00
  %204 = fadd fast float %203, -1.000000e+00
  %205 = fmul fast float %202, %204
  %206 = fcmp fast ogt float %195, 0.000000e+00
  %207 = select i1 %206, float %205, float 0.000000e+00
  %208 = fadd fast float %207, %195
  %209 = fadd fast float %126, 0x3FF3C6EF40000000
  %210 = call float @dx.op.unary.f32(i32 22, float %209)  ; Frc(value)
  %211 = call float @dx.op.unary.f32(i32 23, float %196)  ; Log(value)
  %212 = fadd fast float %211, -7.000000e+00
  %213 = call float @dx.op.unary.f32(i32 21, float %212)  ; Exp(value)
  %214 = fmul fast float %210, 2.000000e+00
  %215 = fadd fast float %214, -1.000000e+00
  %216 = fmul fast float %213, %215
  %217 = fcmp fast ogt float %196, 0.000000e+00
  %218 = select i1 %217, float %216, float 0.000000e+00
  %219 = fadd fast float %218, %196
  %220 = fadd fast float %126, 0x3FFDAA66E0000000
  %221 = call float @dx.op.unary.f32(i32 22, float %220)  ; Frc(value)
  %222 = call float @dx.op.unary.f32(i32 23, float %197)  ; Log(value)
  %223 = fadd fast float %222, -6.000000e+00
  %224 = call float @dx.op.unary.f32(i32 21, float %223)  ; Exp(value)
  %225 = fmul fast float %221, 2.000000e+00
  %226 = fadd fast float %225, -1.000000e+00
  %227 = fmul fast float %224, %226
  %228 = fcmp fast ogt float %197, 0.000000e+00
  %229 = select i1 %228, float %227, float 0.000000e+00
  %230 = fadd fast float %229, %197
  %231 = select i1 %54, float %196, float %219
  %232 = select i1 %54, float %197, float %230
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %233 = call float @dx.op.binary.f32(i32 36, float %208, float 3.225500e+04)  ; FMin(a,b)
  %234 = call float @dx.op.binary.f32(i32 36, float %231, float 3.225500e+04)  ; FMin(a,b)
  %235 = call float @dx.op.binary.f32(i32 36, float %232, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %233)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %234)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %235)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!19 = !{[26 x i32] [i32 24, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 3, i32 3, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0]}
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

