;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
; TEXCOORDS                0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 267c625cb4aa33e58e8b232e03ff5bd0
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
; TEXCOORDS                0                 linear       
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
;   [176 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float> }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8 = call float @dx.op.dot2.f32(i32 54, float %4, float %5, float %4, float %5)  ; Dot2(ax,ay,bx,by)
  %9 = fcmp fast ult float %8, 1.000000e+00
  br i1 %9, label %11, label %10, !dx.controlflow.hints !22

; <label>:10                                      ; preds = %0
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %11

; <label>:11                                      ; preds = %10, %0
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 221)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 3
  %14 = fcmp fast une float %13, 0.000000e+00
  br i1 %14, label %15, label %293, !dx.controlflow.hints !23

; <label>:15                                      ; preds = %11
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %2, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 2
  %18 = extractvalue %dx.types.CBufRet.f32 %16, 3
  %19 = fmul fast float %17, %6
  %20 = fmul fast float %18, %7
  %21 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.f32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.f32 %21, 1
  %24 = fmul fast float %19, %22
  %25 = fmul fast float %20, %23
  %26 = fptoui float %24 to i32
  %27 = fptoui float %25 to i32
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 1
  %30 = shl i32 %29, 2
  %31 = extractvalue %dx.types.CBufRet.i32 %28, 3
  %32 = add i32 %30, %31
  %33 = lshr i32 %27, 2
  %34 = extractvalue %dx.types.CBufRet.i32 %28, 2
  %35 = mul i32 %33, %34
  %36 = lshr i32 %26, 3
  %37 = add i32 %32, %36
  %38 = add i32 %37, %35
  %39 = shl i32 %38, 2
  %40 = shl i32 %27, 3
  %41 = and i32 %40, 24
  %42 = and i32 %26, 7
  %43 = or i32 %41, %42
  %44 = shl i32 1, %43
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = and i32 %46, %44
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %293, !dx.controlflow.hints !24

; <label>:49                                      ; preds = %15
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 226)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 0
  %52 = extractvalue %dx.types.CBufRet.f32 %50, 1
  %53 = fsub fast float %19, %51
  %54 = fsub fast float %20, %52
  %55 = fmul fast float %53, %53
  %56 = fmul fast float %54, %54
  %57 = fadd fast float %55, %56
  %58 = call float @dx.op.unary.f32(i32 24, float %57)  ; Sqrt(value)
  %59 = fcmp fast ogt float %58, 3.906250e-03
  %60 = fdiv fast float %53, %58
  %61 = fdiv fast float %54, %58
  %62 = fmul fast float %60, 5.000000e-01
  %63 = select i1 %59, float %62, float 0.000000e+00
  %64 = fmul fast float %61, 5.000000e-01
  %65 = select i1 %59, float %64, float 0.000000e+00
  %66 = fsub fast float %6, %63
  %67 = fsub fast float %7, %65
  %68 = fsub fast float %66, %63
  %69 = fmul fast float %17, %68
  %70 = fsub fast float %67, %65
  %71 = fmul fast float %18, %70
  %72 = fmul fast float %69, %22
  %73 = fmul fast float %71, %23
  %74 = fptoui float %72 to i32
  %75 = fptoui float %73 to i32
  %76 = lshr i32 %75, 2
  %77 = mul i32 %76, %34
  %78 = lshr i32 %74, 3
  %79 = add i32 %32, %78
  %80 = add i32 %79, %77
  %81 = shl i32 %80, 2
  %82 = shl i32 %75, 3
  %83 = and i32 %82, 24
  %84 = and i32 %74, 7
  %85 = or i32 %83, %84
  %86 = shl i32 1, %85
  %87 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %81, i32 undef)  ; BufferLoad(srv,index,wot)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  %91 = select i1 %90, float 0x3FE99999A0000000, float 0.000000e+00
  %92 = fsub fast float %68, %63
  %93 = fmul fast float %17, %92
  %94 = fsub fast float %70, %65
  %95 = fmul fast float %18, %94
  %96 = fmul fast float %22, %93
  %97 = fmul fast float %23, %95
  %98 = fptoui float %96 to i32
  %99 = fptoui float %97 to i32
  %100 = lshr i32 %99, 2
  %101 = mul i32 %100, %34
  %102 = lshr i32 %98, 3
  %103 = add i32 %32, %102
  %104 = add i32 %103, %101
  %105 = shl i32 %104, 2
  %106 = shl i32 %99, 3
  %107 = and i32 %106, 24
  %108 = and i32 %98, 7
  %109 = or i32 %107, %108
  %110 = shl i32 1, %109
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, %110
  %114 = icmp ne i32 %113, 0
  %115 = select i1 %114, float 0x3FE47AE160000000, float 0.000000e+00
  %116 = fadd fast float %115, %91
  %117 = fsub fast float %92, %63
  %118 = fmul fast float %17, %117
  %119 = fsub fast float %94, %65
  %120 = fmul fast float %18, %119
  %121 = fmul fast float %22, %118
  %122 = fmul fast float %23, %120
  %123 = fptoui float %121 to i32
  %124 = fptoui float %122 to i32
  %125 = lshr i32 %124, 2
  %126 = mul i32 %125, %34
  %127 = lshr i32 %123, 3
  %128 = add i32 %32, %127
  %129 = add i32 %128, %126
  %130 = shl i32 %129, 2
  %131 = shl i32 %124, 3
  %132 = and i32 %131, 24
  %133 = and i32 %123, 7
  %134 = or i32 %132, %133
  %135 = shl i32 1, %134
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %130, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = and i32 %137, %135
  %139 = icmp ne i32 %138, 0
  %140 = select i1 %139, float 0x3FE0624DE0000000, float 0.000000e+00
  %141 = fadd fast float %116, %140
  %142 = fsub fast float %117, %63
  %143 = fmul fast float %17, %142
  %144 = fsub fast float %119, %65
  %145 = fmul fast float %18, %144
  %146 = fmul fast float %22, %143
  %147 = fmul fast float %23, %145
  %148 = fptoui float %146 to i32
  %149 = fptoui float %147 to i32
  %150 = lshr i32 %149, 2
  %151 = mul i32 %150, %34
  %152 = lshr i32 %148, 3
  %153 = add i32 %32, %152
  %154 = add i32 %153, %151
  %155 = shl i32 %154, 2
  %156 = shl i32 %149, 3
  %157 = and i32 %156, 24
  %158 = and i32 %148, 7
  %159 = or i32 %157, %158
  %160 = shl i32 1, %159
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %155, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = and i32 %162, %160
  %164 = icmp ne i32 %163, 0
  %165 = select i1 %164, float 0x3FDA36E300000000, float 0.000000e+00
  %166 = fadd fast float %141, %165
  %167 = fsub fast float %142, %63
  %168 = fmul fast float %17, %167
  %169 = fsub fast float %144, %65
  %170 = fmul fast float %18, %169
  %171 = fmul fast float %22, %168
  %172 = fmul fast float %23, %170
  %173 = fptoui float %171 to i32
  %174 = fptoui float %172 to i32
  %175 = lshr i32 %174, 2
  %176 = mul i32 %175, %34
  %177 = lshr i32 %173, 3
  %178 = add i32 %32, %177
  %179 = add i32 %178, %176
  %180 = shl i32 %179, 2
  %181 = shl i32 %174, 3
  %182 = and i32 %181, 24
  %183 = and i32 %173, 7
  %184 = or i32 %182, %183
  %185 = shl i32 1, %184
  %186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %187 = extractvalue %dx.types.ResRet.i32 %186, 0
  %188 = and i32 %187, %185
  %189 = icmp ne i32 %188, 0
  %190 = select i1 %189, float 0x3FD4F8B5A0000000, float 0.000000e+00
  %191 = fadd fast float %166, %190
  %192 = fsub fast float %167, %63
  %193 = fmul fast float %17, %192
  %194 = fsub fast float %169, %65
  %195 = fmul fast float %18, %194
  %196 = fmul fast float %22, %193
  %197 = fmul fast float %23, %195
  %198 = fptoui float %196 to i32
  %199 = fptoui float %197 to i32
  %200 = lshr i32 %199, 2
  %201 = mul i32 %200, %34
  %202 = lshr i32 %198, 3
  %203 = add i32 %32, %202
  %204 = add i32 %203, %201
  %205 = shl i32 %204, 2
  %206 = shl i32 %199, 3
  %207 = and i32 %206, 24
  %208 = and i32 %198, 7
  %209 = or i32 %207, %208
  %210 = shl i32 1, %209
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %212, %210
  %214 = icmp ne i32 %213, 0
  %215 = select i1 %214, float 0x3FD0C6F7C0000000, float 0.000000e+00
  %216 = fadd fast float %191, %215
  %217 = fsub fast float %192, %63
  %218 = fmul fast float %17, %217
  %219 = fsub fast float %194, %65
  %220 = fmul fast float %18, %219
  %221 = fmul fast float %22, %218
  %222 = fmul fast float %23, %220
  %223 = fptoui float %221 to i32
  %224 = fptoui float %222 to i32
  %225 = lshr i32 %224, 2
  %226 = mul i32 %225, %34
  %227 = lshr i32 %223, 3
  %228 = add i32 %32, %227
  %229 = add i32 %228, %226
  %230 = shl i32 %229, 2
  %231 = shl i32 %224, 3
  %232 = and i32 %231, 24
  %233 = and i32 %223, 7
  %234 = or i32 %232, %233
  %235 = shl i32 1, %234
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, %235
  %239 = icmp ne i32 %238, 0
  %240 = select i1 %239, float 0x3FCAD7F2E0000000, float 0.000000e+00
  %241 = fadd fast float %216, %240
  %242 = fsub fast float %217, %63
  %243 = fmul fast float %17, %242
  %244 = fsub fast float %219, %65
  %245 = fmul fast float %18, %244
  %246 = fmul fast float %22, %243
  %247 = fmul fast float %23, %245
  %248 = fptoui float %246 to i32
  %249 = fptoui float %247 to i32
  %250 = lshr i32 %249, 2
  %251 = mul i32 %250, %34
  %252 = lshr i32 %248, 3
  %253 = add i32 %32, %252
  %254 = add i32 %253, %251
  %255 = shl i32 %254, 2
  %256 = shl i32 %249, 3
  %257 = and i32 %256, 24
  %258 = and i32 %248, 7
  %259 = or i32 %257, %258
  %260 = shl i32 1, %259
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, %260
  %264 = icmp ne i32 %263, 0
  %265 = select i1 %264, float 0x3FC5798F20000000, float 0.000000e+00
  %266 = fadd fast float %241, %265
  %267 = fsub fast float %242, %63
  %268 = fmul fast float %17, %267
  %269 = fsub fast float %244, %65
  %270 = fmul fast float %18, %269
  %271 = fmul fast float %22, %268
  %272 = fmul fast float %23, %270
  %273 = fptoui float %271 to i32
  %274 = fptoui float %272 to i32
  %275 = lshr i32 %274, 2
  %276 = mul i32 %275, %34
  %277 = lshr i32 %273, 3
  %278 = add i32 %32, %277
  %279 = add i32 %278, %276
  %280 = shl i32 %279, 2
  %281 = shl i32 %274, 3
  %282 = and i32 %281, 24
  %283 = and i32 %273, 7
  %284 = or i32 %282, %283
  %285 = shl i32 1, %284
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, %285
  %289 = icmp ne i32 %288, 0
  %290 = select i1 %289, float 0x3FC12E0C20000000, float 0.000000e+00
  %291 = fadd fast float %266, %290
  %292 = fmul fast float %291, 0x3FCCADEF00000000
  br label %293

; <label>:293                                     ; preds = %49, %15, %11
  %294 = phi float [ 1.000000e+00, %11 ], [ %292, %49 ], [ 1.000000e+00, %15 ]
  %295 = fmul fast float %4, %4
  %296 = fmul fast float %5, %5
  %297 = fadd fast float %296, %295
  %298 = call float @dx.op.unary.f32(i32 24, float %297)  ; Sqrt(value)
  %299 = call float @dx.op.unary.f32(i32 7, float %298)  ; Saturate(value)
  %300 = fsub fast float 1.000000e+00, %299
  %301 = fmul fast float %300, %294
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %301)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind
declare void @dx.op.discard(i32, i1) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!dx.viewIdState = !{!10}
!dx.entryPoints = !{!11}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !7, null}
!5 = !{!6}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!7 = !{!8, !9}
!8 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!9 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 176, null}
!10 = !{[8 x i32] [i32 6, i32 4, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1]}
!11 = !{void ()* @ps_main, !"ps_main", !12, !4, !21}
!12 = !{!13, !18, null}
!13 = !{!14, !17}
!14 = !{i32 0, !"SV_Position", i8 9, i8 3, !15, i8 4, i32 1, i8 4, i32 0, i8 0, !16}
!15 = !{i32 0}
!16 = !{i32 3, i32 3}
!17 = !{i32 1, !"TEXCOORDS", i8 9, i8 0, !15, i8 2, i32 1, i8 2, i32 1, i8 0, !16}
!18 = !{!19}
!19 = !{i32 0, !"SV_Target", i8 9, i8 16, !15, i8 0, i32 1, i8 4, i32 0, i8 0, !20}
!20 = !{i32 3, i32 15}
!21 = !{i32 0, i64 16}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 1}

