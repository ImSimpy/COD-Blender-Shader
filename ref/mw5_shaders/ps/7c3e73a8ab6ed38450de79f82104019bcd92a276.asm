;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xyzw        1     NONE   float   xyzw
; TEXCOORD                 1   x           2     NONE   float   x   
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 76f1c968da9fd5386e76029f0039e62b
;
; Pipeline Runtime Information: 
;
; Pixel Shader
; DepthOutput=0
; SampleFrequency=0
;
;
; Input signature:
;
; Name                 Index             InterpMode DynIdx
; -------------------- ----- ---------------------- ------
; SV_Position              0          noperspective       
; TEXCOORD                 0                 linear       
; TEXCOORD                 1                 linear       
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s4     1
;                                   texture    byte         r/o      T0      t8,space1     1
;                                   texture     f32   cubearray      T1     t36,space2     1
;
;
; ViewId state:
;
; Number of inputs: 9, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5, 6, 7, 8 }
;   output 1 depends on inputs: { 4, 5, 6, 7, 8 }
;   output 2 depends on inputs: { 4, 5, 6, 7, 8 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.TextureCubeArray<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 36, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.dot3.f32(i32 55, float %6, float %7, float %8, float %6, float %7, float %8)  ; Dot3(ax,ay,az,bx,by,bz)
  %11 = call float @dx.op.unary.f32(i32 25, float %10)  ; Rsqrt(value)
  %12 = fmul fast float %11, %6
  %13 = fmul fast float %11, %7
  %14 = fmul fast float %11, %8
  %15 = fptoui float %9 to i32
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 141)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 3
  %18 = bitcast float %17 to i32
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 246)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %21 = and i32 %20, 2147483647
  %22 = add nsw i32 %21, -1
  %23 = icmp ult i32 %22, 2
  br i1 %23, label %24, label %267

; <label>:24                                      ; preds = %0
  %25 = icmp eq i32 %21, 2
  %26 = add i32 %18, %15
  %27 = mul i32 %26, 36
  %28 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = add i32 %27, 4
  %31 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  %33 = add i32 %27, 8
  %34 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %33, i32 undef)  ; BufferLoad(srv,index,wot)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = add i32 %27, 12
  %37 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %36, i32 undef)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = add i32 %27, 16
  %40 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %41 = extractvalue %dx.types.ResRet.f32 %40, 0
  %42 = add i32 %27, 20
  %43 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %42, i32 undef)  ; BufferLoad(srv,index,wot)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = add i32 %27, 24
  %46 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %45, i32 undef)  ; BufferLoad(srv,index,wot)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = add i32 %27, 28
  %49 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %48, i32 undef)  ; BufferLoad(srv,index,wot)
  %50 = extractvalue %dx.types.ResRet.f32 %49, 0
  %51 = add i32 %27, 32
  %52 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %51, i32 undef)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = shl i32 %18, 1
  %55 = add i32 %54, %15
  %56 = mul i32 %55, 36
  %57 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = add i32 %56, 4
  %60 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = add i32 %56, 8
  %63 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %62, i32 undef)  ; BufferLoad(srv,index,wot)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = add i32 %56, 12
  %66 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = add i32 %56, 16
  %69 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %68, i32 undef)  ; BufferLoad(srv,index,wot)
  %70 = extractvalue %dx.types.ResRet.f32 %69, 0
  %71 = add i32 %56, 20
  %72 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.f32 %72, 0
  %74 = add i32 %56, 24
  %75 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %74, i32 undef)  ; BufferLoad(srv,index,wot)
  %76 = extractvalue %dx.types.ResRet.f32 %75, 0
  %77 = add i32 %56, 28
  %78 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.f32 %78, 0
  %80 = add i32 %56, 32
  %81 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %80, i32 undef)  ; BufferLoad(srv,index,wot)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = mul i32 %18, 3
  %84 = add i32 %83, %15
  %85 = mul i32 %84, 36
  %86 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %85, i32 undef)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.f32 %86, 0
  %88 = add i32 %85, 4
  %89 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %88, i32 undef)  ; BufferLoad(srv,index,wot)
  %90 = extractvalue %dx.types.ResRet.f32 %89, 0
  %91 = add i32 %85, 8
  %92 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %91, i32 undef)  ; BufferLoad(srv,index,wot)
  %93 = extractvalue %dx.types.ResRet.f32 %92, 0
  %94 = add i32 %85, 12
  %95 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = add i32 %85, 16
  %98 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %97, i32 undef)  ; BufferLoad(srv,index,wot)
  %99 = extractvalue %dx.types.ResRet.f32 %98, 0
  %100 = add i32 %85, 20
  %101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = add i32 %85, 24
  %104 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %103, i32 undef)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.f32 %104, 0
  %106 = add i32 %85, 28
  %107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = add i32 %85, 32
  %110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %109, i32 undef)  ; BufferLoad(srv,index,wot)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fmul fast float %29, %5
  %113 = fmul fast float %32, %5
  %114 = fmul fast float %35, %5
  %115 = fmul fast float %38, %5
  %116 = fmul fast float %41, %5
  %117 = fmul fast float %44, %5
  %118 = fmul fast float %47, %5
  %119 = fmul fast float %50, %5
  %120 = fmul fast float %53, %5
  %121 = fmul fast float %58, %5
  %122 = fmul fast float %61, %5
  %123 = fmul fast float %64, %5
  %124 = fmul fast float %67, %5
  %125 = fmul fast float %70, %5
  %126 = fmul fast float %73, %5
  %127 = fmul fast float %76, %5
  %128 = fmul fast float %79, %5
  %129 = fmul fast float %82, %5
  %130 = fmul fast float %87, %5
  %131 = fmul fast float %90, %5
  %132 = fmul fast float %93, %5
  %133 = fmul fast float %96, %5
  %134 = fmul fast float %99, %5
  %135 = fmul fast float %102, %5
  %136 = fmul fast float %105, %5
  %137 = fmul fast float %108, %5
  %138 = fmul fast float %111, %5
  %139 = fmul fast float %112, 0x3FD20DD760000000
  %140 = fmul fast float %14, %14
  %141 = fmul fast float %140, 0x3FEE471020000000
  %142 = fadd fast float %141, 0xBFD42F6020000000
  %143 = fmul fast float %118, %142
  %144 = fmul fast float %14, 0xBFF17B1420000000
  %145 = fmul fast float %12, %12
  %146 = fmul fast float %13, %13
  %147 = fsub fast float %145, %146
  %148 = fmul fast float %121, 0x3FD20DD760000000
  %149 = fmul fast float %127, %142
  %150 = fmul fast float %130, 0x3FD20DD760000000
  %151 = fmul fast float %136, %142
  br i1 %25, label %152, label %211

; <label>:152                                     ; preds = %24
  %153 = fmul fast float %14, 0x3FD4D8D7C0000000
  %154 = fmul fast float %153, %114
  %155 = fmul fast float %12, 0x3FD4D8D7C0000000
  %156 = fmul fast float %155, %115
  %157 = fmul fast float %13, 0x3FD4D8D7C0000000
  %158 = fmul fast float %157, %113
  %159 = fmul fast float %119, %12
  %160 = fmul fast float %117, %13
  %161 = fmul fast float %147, 0x3FC17B1420000000
  %162 = fmul fast float %161, %120
  %163 = fmul fast float %7, 0x3FD17B1420000000
  %164 = fmul fast float %163, %11
  %165 = fmul fast float %164, %12
  %166 = fmul fast float %165, %116
  %167 = fadd fast float %159, %160
  %168 = fmul fast float %144, %167
  %169 = fadd fast float %168, %143
  %170 = fmul fast float %169, 2.500000e-01
  %171 = fsub fast float %139, %158
  %172 = fadd fast float %171, %154
  %173 = fsub fast float %172, %156
  %174 = fadd fast float %173, %166
  %175 = fadd fast float %174, %162
  %176 = fadd fast float %175, %170
  %177 = fmul fast float %153, %123
  %178 = fmul fast float %155, %124
  %179 = fmul fast float %157, %122
  %180 = fmul fast float %128, %12
  %181 = fmul fast float %126, %13
  %182 = fmul fast float %161, %129
  %183 = fmul fast float %165, %125
  %184 = fadd fast float %180, %181
  %185 = fmul fast float %144, %184
  %186 = fadd fast float %185, %149
  %187 = fmul fast float %186, 2.500000e-01
  %188 = fsub fast float %148, %179
  %189 = fadd fast float %188, %177
  %190 = fsub fast float %189, %178
  %191 = fadd fast float %190, %183
  %192 = fadd fast float %191, %182
  %193 = fadd fast float %192, %187
  %194 = fmul fast float %153, %132
  %195 = fmul fast float %155, %133
  %196 = fmul fast float %157, %131
  %197 = fmul fast float %137, %12
  %198 = fmul fast float %135, %13
  %199 = fmul fast float %161, %138
  %200 = fmul fast float %165, %134
  %201 = fadd fast float %197, %198
  %202 = fmul fast float %144, %201
  %203 = fadd fast float %202, %151
  %204 = fmul fast float %203, 2.500000e-01
  %205 = fsub fast float %150, %196
  %206 = fadd fast float %205, %194
  %207 = fsub fast float %206, %195
  %208 = fadd fast float %207, %200
  %209 = fadd fast float %208, %199
  %210 = fadd fast float %209, %204
  br label %344

; <label>:211                                     ; preds = %24
  %212 = fmul fast float %114, %14
  %213 = fmul fast float %115, 0x3FDF454380000000
  %214 = fmul fast float %113, %13
  %215 = fmul fast float %119, %144
  %216 = fmul fast float %144, %13
  %217 = fmul fast float %216, %117
  %218 = fmul fast float %147, 0x3FE17B1420000000
  %219 = fmul fast float %218, %120
  %220 = fmul fast float %7, 0x3FF17B1420000000
  %221 = fmul fast float %220, %11
  %222 = fmul fast float %221, %116
  %223 = fadd fast float %222, %215
  %224 = fsub fast float %223, %213
  %225 = fmul fast float %224, %12
  %226 = fsub fast float %212, %214
  %227 = fmul fast float %226, 0x3FDF454380000000
  %228 = fadd fast float %217, %139
  %229 = fadd fast float %228, %143
  %230 = fadd fast float %229, %219
  %231 = fadd fast float %230, %225
  %232 = fadd fast float %231, %227
  %233 = fmul fast float %123, %14
  %234 = fmul fast float %124, 0x3FDF454380000000
  %235 = fmul fast float %122, %13
  %236 = fmul fast float %128, %144
  %237 = fmul fast float %216, %126
  %238 = fmul fast float %218, %129
  %239 = fmul fast float %221, %125
  %240 = fadd fast float %239, %236
  %241 = fsub fast float %240, %234
  %242 = fmul fast float %241, %12
  %243 = fsub fast float %233, %235
  %244 = fmul fast float %243, 0x3FDF454380000000
  %245 = fadd fast float %237, %148
  %246 = fadd fast float %245, %149
  %247 = fadd fast float %246, %238
  %248 = fadd fast float %247, %242
  %249 = fadd fast float %248, %244
  %250 = fmul fast float %132, %14
  %251 = fmul fast float %133, 0x3FDF454380000000
  %252 = fmul fast float %131, %13
  %253 = fmul fast float %137, %144
  %254 = fmul fast float %216, %135
  %255 = fmul fast float %218, %138
  %256 = fmul fast float %221, %134
  %257 = fadd fast float %256, %253
  %258 = fsub fast float %257, %251
  %259 = fmul fast float %258, %12
  %260 = fsub fast float %250, %252
  %261 = fmul fast float %260, 0x3FDF454380000000
  %262 = fadd fast float %254, %150
  %263 = fadd fast float %262, %151
  %264 = fadd fast float %263, %255
  %265 = fadd fast float %264, %259
  %266 = fadd fast float %265, %261
  br label %344

; <label>:267                                     ; preds = %0
  %268 = uitofp i32 %15 to float
  %269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %3, float %12, float %13, float %14, float %268, i32 undef, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %270 = extractvalue %dx.types.ResRet.f32 %269, 0
  %271 = extractvalue %dx.types.ResRet.f32 %269, 1
  %272 = extractvalue %dx.types.ResRet.f32 %269, 2
  %273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 246)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.i32 %273, 1
  %275 = and i32 %274, 2147483647
  switch i32 %275, label %344 [
    i32 7, label %276
    i32 8, label %276
    i32 9, label %276
    i32 4, label %280
  ]

; <label>:276                                     ; preds = %267, %267, %267
  %277 = fmul fast float %270, %5
  %278 = fmul fast float %271, %5
  %279 = fmul fast float %272, %5
  br label %344

; <label>:280                                     ; preds = %267
  %281 = mul i32 %15, 36
  %282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = add i32 %281, 4
  %285 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.f32 %285, 0
  %287 = add i32 %281, 8
  %288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.f32 %288, 0
  %290 = add i32 %281, 12
  %291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.f32 %291, 0
  %293 = add i32 %281, 16
  %294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.f32 %294, 0
  %296 = add i32 %281, 20
  %297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = add i32 %281, 24
  %300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %299, i32 undef)  ; BufferLoad(srv,index,wot)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = add i32 %281, 28
  %303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.f32 %303, 0
  %305 = add i32 %281, 32
  %306 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %305, i32 undef)  ; BufferLoad(srv,index,wot)
  %307 = extractvalue %dx.types.ResRet.f32 %306, 0
  %308 = fmul fast float %283, 0x3FD20DD760000000
  %309 = fmul fast float %14, 0x3FD4D8D7C0000000
  %310 = fmul fast float %309, %289
  %311 = fmul fast float %14, %14
  %312 = fmul fast float %311, 0x3FEE471020000000
  %313 = fadd fast float %312, 0xBFD42F6020000000
  %314 = fmul fast float %301, %313
  %315 = fmul fast float %292, %12
  %316 = fmul fast float %286, %13
  %317 = fmul fast float %14, 0xBFF17B1420000000
  %318 = fmul fast float %304, %12
  %319 = fmul fast float %298, %13
  %320 = fmul fast float %12, %12
  %321 = fmul fast float %13, %13
  %322 = fsub fast float %320, %321
  %323 = fmul fast float %322, 0x3FC17B1420000000
  %324 = fmul fast float %323, %307
  %325 = fmul fast float %7, 0x3FD17B1420000000
  %326 = fmul fast float %325, %11
  %327 = fmul fast float %326, %12
  %328 = fmul fast float %327, %295
  %329 = fadd fast float %318, %319
  %330 = fmul fast float %317, %329
  %331 = fadd fast float %330, %314
  %332 = fmul fast float %331, 2.500000e-01
  %333 = fadd fast float %310, %308
  %334 = fadd fast float %333, %328
  %335 = fadd fast float %334, %324
  %336 = fadd fast float %335, %332
  %337 = fadd fast float %315, %316
  %338 = fmul fast float %337, 0x3FD4D8D7C0000000
  %339 = fsub fast float %336, %338
  %340 = fmul fast float %339, %5
  %341 = fmul fast float %340, %270
  %342 = fmul fast float %340, %271
  %343 = fmul fast float %340, %272
  br label %344

; <label>:344                                     ; preds = %280, %276, %267, %211, %152
  %345 = phi float [ %270, %267 ], [ %341, %280 ], [ %277, %276 ], [ %176, %152 ], [ %232, %211 ]
  %346 = phi float [ %271, %267 ], [ %342, %280 ], [ %278, %276 ], [ %193, %152 ], [ %249, %211 ]
  %347 = phi float [ %272, %267 ], [ %343, %280 ], [ %279, %276 ], [ %210, %152 ], [ %266, %211 ]
  %348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 246)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.i32 %348, 1
  %350 = icmp slt i32 %349, 0
  br i1 %350, label %351, label %357

; <label>:351                                     ; preds = %344
  %352 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %353 = extractvalue %dx.types.CBufRet.f32 %352, 0
  %354 = fmul fast float %353, %345
  %355 = fmul fast float %353, %346
  %356 = fmul fast float %353, %347
  br label %357

; <label>:357                                     ; preds = %351, %344
  %358 = phi float [ %354, %351 ], [ %345, %344 ]
  %359 = phi float [ %355, %351 ], [ %346, %344 ]
  %360 = phi float [ %356, %351 ], [ %347, %344 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %358)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %359)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %360)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!dx.viewIdState = !{!13}
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !11}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 8, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.TextureCubeArray<vector<float, 4> >"* undef, !"", i32 2, i32 36, i32 1, i32 9, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{!10}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!13 = !{[11 x i32] [i32 9, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, !26}
!15 = !{!16, !24, null}
!16 = !{!17, !19, !21}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !18, i8 2, i32 1, i8 4, i32 1, i8 0, !20}
!20 = !{i32 3, i32 15}
!21 = !{i32 2, !"TEXCOORD", i8 9, i8 0, !22, i8 2, i32 1, i8 1, i32 2, i8 0, !23}
!22 = !{i32 1}
!23 = !{i32 3, i32 1}
!24 = !{!25}
!25 = !{i32 0, !"SV_Target", i8 9, i8 16, !18, i8 0, i32 1, i8 4, i32 0, i8 0, !20}
!26 = !{i32 0, i64 16}

