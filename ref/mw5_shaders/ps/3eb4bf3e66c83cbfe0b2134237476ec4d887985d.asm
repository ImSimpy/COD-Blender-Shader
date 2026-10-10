;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; INTERPOLANT_POSITION     0   xyzw        1     NONE   float   xy w
; COLOR                    0   xyzw        2     NONE   float      w
; TEXCOORD                 0   xy          3     NONE   float       
; TEXCOORD                 3   xyz         4     NONE   float       
; COLOR                    3   xyz         5     NONE    uint   x   
; COLOR                    4      w        5     NONE    uint      w
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 44f11159f39ea80dba52c8cd1680532b
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
; INTERPOLANT_POSITION     0                 linear       
; COLOR                    0                 linear       
; TEXCOORD                 0                 linear       
; TEXCOORD                 3                 linear       
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
;   [192 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;
;
; ViewId state:
;
; Number of inputs: 24, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call i32 @dx.op.loadInput.i32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %8 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %9 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = fadd fast float %8, 1.000000e+00
  %12 = fsub fast float 1.000000e+00, %9
  %13 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.f32 %13, 0
  %15 = extractvalue %dx.types.CBufRet.f32 %13, 1
  %16 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.f32 %16, 0
  %18 = extractvalue %dx.types.CBufRet.f32 %13, 2
  %19 = extractvalue %dx.types.CBufRet.f32 %13, 3
  %20 = fmul fast float %11, %14
  %21 = fmul fast float %20, %17
  %22 = fmul fast float %21, %18
  %23 = fmul fast float %12, %15
  %24 = fmul fast float %23, %17
  %25 = fmul fast float %24, %19
  %26 = fsub fast float 1.000000e+00, %22
  %27 = fsub fast float 1.000000e+00, %25
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 1
  %31 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %32 = fmul fast float %26, %29
  %33 = fmul fast float %26, %30
  %34 = fmul fast float %26, %31
  %35 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.f32 %35, 0
  %37 = extractvalue %dx.types.CBufRet.f32 %35, 1
  %38 = extractvalue %dx.types.CBufRet.f32 %35, 2
  %39 = fmul fast float %27, %36
  %40 = fmul fast float %27, %37
  %41 = fmul fast float %27, %38
  %42 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %43 = extractvalue %dx.types.CBufRet.f32 %42, 0
  %44 = extractvalue %dx.types.CBufRet.f32 %42, 1
  %45 = extractvalue %dx.types.CBufRet.f32 %42, 2
  %46 = fadd fast float %39, %43
  %47 = fadd fast float %46, %32
  %48 = fadd fast float %40, %44
  %49 = fadd fast float %48, %33
  %50 = fadd fast float %41, %45
  %51 = fadd fast float %50, %34
  %52 = fmul fast float %47, %10
  %53 = fmul fast float %49, %10
  %54 = fmul fast float %51, %10
  %55 = mul i32 %6, 208
  %56 = add i32 %55, 188
  %57 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %56, i32 undef)  ; BufferLoad(srv,index,wot)
  %58 = extractvalue %dx.types.ResRet.i32 %57, 0
  %59 = shl i32 %5, 5
  %60 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = extractvalue %dx.types.ResRet.f32 %60, 3
  %65 = or i32 %59, 16
  %66 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %1, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = extractvalue %dx.types.ResRet.f32 %66, 1
  %69 = extractvalue %dx.types.ResRet.f32 %66, 2
  %70 = extractvalue %dx.types.ResRet.f32 %66, 3
  %71 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %72 = call float @dx.op.unary.f32(i32 25, float %71)  ; Rsqrt(value)
  %73 = fmul fast float %52, %72
  %74 = fsub fast float -0.000000e+00, %73
  %75 = fmul fast float %53, %72
  %76 = fsub fast float -0.000000e+00, %75
  %77 = fmul fast float %54, %72
  %78 = fsub fast float -0.000000e+00, %77
  %79 = fsub fast float %67, %61
  %80 = fsub fast float %68, %62
  %81 = fsub fast float %69, %63
  %82 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %79, float %80, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %83 = fsub fast float %70, %64
  %84 = fmul fast float %83, %83
  %85 = fsub fast float %82, %84
  %86 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %74, float %76, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %87 = fmul fast float %86, %86
  %88 = fsub fast float %85, %87
  %89 = fadd fast float %88, 0x3EE4F8B580000000
  %90 = call float @dx.op.dot3.f32(i32 55, float %79, float %80, float %81, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %91 = call float @dx.op.dot3.f32(i32 55, float %74, float %76, float %78, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %92 = call float @dx.op.dot3.f32(i32 55, float %67, float %68, float %69, float %67, float %68, float %69)  ; Dot3(ax,ay,az,bx,by,bz)
  %93 = fmul fast float %91, %85
  %94 = fmul fast float %90, %86
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %83, %70
  %97 = fmul fast float %96, %86
  %98 = fadd fast float %95, %97
  %99 = fmul fast float %92, %85
  %100 = fmul fast float %90, %90
  %101 = fmul fast float %70, 2.000000e+00
  %102 = fmul fast float %101, %83
  %103 = fmul fast float %102, %90
  %104 = fmul fast float %70, %70
  %105 = fmul fast float %104, %82
  %106 = fsub fast float -0.000000e+00, %105
  %107 = fsub fast float %106, %100
  %108 = fadd fast float %107, %99
  %109 = fadd fast float %108, %103
  %110 = fmul fast float %98, %98
  %111 = fmul fast float %109, %89
  %112 = fsub fast float %110, %111
  %113 = fcmp fast olt float %112, 0.000000e+00
  %114 = fsub fast float -0.000000e+00, %112
  %115 = select i1 %113, float -1.000000e+00, float 1.000000e+00
  %116 = select i1 %113, float %114, float %112
  %117 = call float @dx.op.unary.f32(i32 24, float %116)  ; Sqrt(value)
  %118 = fsub fast float -0.000000e+00, %117
  %119 = fsub fast float %118, %98
  %120 = fdiv fast float %119, %89
  %121 = fsub fast float %90, %96
  %122 = fmul fast float %120, %86
  %123 = fadd fast float %122, %121
  %124 = fcmp fast ogt float %123, 0.000000e+00
  %125 = fcmp fast olt float %123, %85
  %126 = and i1 %124, %125
  br i1 %126, label %127, label %129

; <label>:127                                     ; preds = %0
  %128 = fmul fast float %115, %120
  br label %168

; <label>:129                                     ; preds = %0
  %130 = fmul fast float %91, %91
  %131 = fsub fast float %130, %92
  %132 = fadd fast float %131, %104
  %133 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %74, float %76, float %78)  ; Dot3(ax,ay,az,bx,by,bz)
  %134 = fmul fast float %133, %133
  %135 = call float @dx.op.dot3.f32(i32 55, float %61, float %62, float %63, float %61, float %62, float %63)  ; Dot3(ax,ay,az,bx,by,bz)
  %136 = fsub fast float %134, %135
  %137 = fmul fast float %64, %64
  %138 = fadd fast float %136, %137
  %139 = call float @dx.op.binary.f32(i32 35, float %132, float %138)  ; FMax(a,b)
  %140 = fcmp fast olt float %139, 0.000000e+00
  br i1 %140, label %141, label %148

; <label>:141                                     ; preds = %129
  %142 = fcmp fast ogt float %138, %132
  %143 = fsub fast float -0.000000e+00, %138
  %144 = select i1 %142, float %143, float %138
  %145 = fcmp fast ogt float %132, %144
  %146 = fsub fast float -0.000000e+00, %132
  %147 = select i1 %145, float %146, float %132
  br label %148

; <label>:148                                     ; preds = %141, %129
  %149 = phi float [ -1.000000e+00, %141 ], [ %115, %129 ]
  %150 = phi float [ %147, %141 ], [ %132, %129 ]
  %151 = phi float [ %144, %141 ], [ %138, %129 ]
  %152 = fcmp fast ogt float %150, 0.000000e+00
  br i1 %152, label %153, label %158

; <label>:153                                     ; preds = %148
  %154 = fsub fast float -0.000000e+00, %91
  %155 = call float @dx.op.unary.f32(i32 24, float %150)  ; Sqrt(value)
  %156 = fsub fast float %154, %155
  %157 = fmul fast float %156, %149
  br label %158

; <label>:158                                     ; preds = %153, %148
  %159 = phi float [ %157, %153 ], [ 0x4415AF1D80000000, %148 ]
  %160 = fcmp fast ogt float %151, 0.000000e+00
  br i1 %160, label %161, label %168

; <label>:161                                     ; preds = %158
  %162 = fsub fast float -0.000000e+00, %133
  %163 = call float @dx.op.unary.f32(i32 24, float %151)  ; Sqrt(value)
  %164 = fsub fast float %162, %163
  %165 = fcmp fast olt float %164, %159
  br i1 %165, label %166, label %168

; <label>:166                                     ; preds = %161
  %167 = fmul fast float %164, %149
  br label %168

; <label>:168                                     ; preds = %166, %161, %158, %127
  %169 = phi float [ %128, %127 ], [ %167, %166 ], [ %159, %161 ], [ %159, %158 ]
  %170 = fcmp fast ogt float %169, 0.000000e+00
  br i1 %170, label %172, label %171

; <label>:171                                     ; preds = %168
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %172

; <label>:172                                     ; preds = %171, %168
  %173 = and i32 %58, 16
  %174 = icmp ne i32 %173, 0
  %175 = select i1 %174, float 1.000000e+00, float %7
  %176 = icmp eq i32 %173, 0
  br i1 %176, label %196, label %177, !dx.controlflow.hints !33

; <label>:177                                     ; preds = %172
  %178 = add i32 %55, 64
  %179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 %178, i32 undef)  ; BufferLoad(srv,index,wot)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fadd fast float %180, 1.000000e+00
  %182 = fmul fast float %181, %7
  %183 = fsub fast float %182, %180
  %184 = fsub fast float %181, %183
  %185 = call float @dx.op.unary.f32(i32 7, float %184)  ; Saturate(value)
  %186 = fsub fast float 1.000000e+00, %182
  %187 = call float @dx.op.unary.f32(i32 7, float %186)  ; Saturate(value)
  %188 = fsub fast float %185, %187
  %189 = fsub fast float %175, %187
  %190 = fdiv fast float %189, %188
  %191 = call float @dx.op.unary.f32(i32 7, float %190)  ; Saturate(value)
  %192 = fmul fast float %191, 2.000000e+00
  %193 = fsub fast float 3.000000e+00, %192
  %194 = fmul fast float %191, %191
  %195 = fmul fast float %194, %193
  br label %196

; <label>:196                                     ; preds = %177, %172
  %197 = phi float [ %195, %177 ], [ %175, %172 ]
  %198 = fcmp fast ogt float %197, 0.000000e+00
  br i1 %198, label %200, label %199

; <label>:199                                     ; preds = %196
  call void @dx.op.discard(i32 82, i1 true)  ; Discard(condition)
  br label %200

; <label>:200                                     ; preds = %199, %196
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float -0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!11}
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !8, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{!9, !10}
!9 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!10 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!11 = !{[26 x i32] [i32 24, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0]}
!12 = !{void ()* @ps_main, !"ps_main", !13, !4, !32}
!13 = !{!14, !29, null}
!14 = !{!15, !17, !19, !21, !22, !24, !26, !28}
!15 = !{i32 0, !"SV_Position", i8 9, i8 3, !16, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!16 = !{i32 0}
!17 = !{i32 1, !"INTERPOLANT_POSITION", i8 9, i8 0, !16, i8 2, i32 1, i8 4, i32 1, i8 0, !18}
!18 = !{i32 3, i32 11}
!19 = !{i32 2, !"COLOR", i8 9, i8 0, !16, i8 2, i32 1, i8 4, i32 2, i8 0, !20}
!20 = !{i32 3, i32 8}
!21 = !{i32 3, !"TEXCOORD", i8 9, i8 0, !16, i8 2, i32 1, i8 2, i32 3, i8 0, null}
!22 = !{i32 4, !"TEXCOORD", i8 9, i8 0, !23, i8 2, i32 1, i8 3, i32 4, i8 0, null}
!23 = !{i32 3}
!24 = !{i32 5, !"COLOR", i8 5, i8 0, !23, i8 1, i32 1, i8 3, i32 5, i8 0, !25}
!25 = !{i32 3, i32 1}
!26 = !{i32 6, !"COLOR", i8 5, i8 0, !27, i8 1, i32 1, i8 1, i32 5, i8 3, !25}
!27 = !{i32 4}
!28 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !16, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!29 = !{!30}
!30 = !{i32 0, !"SV_Target", i8 9, i8 16, !16, i8 0, i32 1, i8 4, i32 0, i8 0, !31}
!31 = !{i32 3, i32 15}
!32 = !{i32 0, i64 24}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 1}

