;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float       
; TEXCOORD                 0   xy          1     NONE   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0d7eea05f41e9cebc7e46dcdc0d0def3
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
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t0     1
;                                   texture    byte         r/o      T1     t15,space1     1
;
;
; ViewId state:
;
; Number of inputs: 6, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 4, 5 }
;   output 1 depends on inputs: { 4, 5 }
;   output 2 depends on inputs: { 4, 5 }
;   output 3 depends on inputs: { 4, 5 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
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
%perObject = type { <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %7 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %8 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.f32 %8, 0
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 2
  %12 = extractvalue %dx.types.CBufRet.f32 %10, 0
  %13 = extractvalue %dx.types.CBufRet.f32 %10, 1
  %14 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.f32 %14, 0
  %16 = extractvalue %dx.types.CBufRet.f32 %14, 1
  %17 = fmul fast float %15, %6
  %18 = fmul fast float %16, %7
  %19 = fptoui float %17 to i32
  %20 = fptoui float %18 to i32
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %23 = shl i32 %22, 2
  %24 = extractvalue %dx.types.CBufRet.i32 %21, 3
  %25 = add i32 %23, %24
  %26 = lshr i32 %20, 2
  %27 = extractvalue %dx.types.CBufRet.i32 %21, 2
  %28 = mul i32 %26, %27
  %29 = lshr i32 %19, 3
  %30 = add i32 %25, %29
  %31 = add i32 %30, %28
  %32 = shl i32 %31, 2
  %33 = shl i32 %20, 3
  %34 = and i32 %33, 24
  %35 = and i32 %19, 7
  %36 = or i32 %34, %35
  %37 = shl i32 1, %36
  %38 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %32, i32 undef)  ; BufferLoad(srv,index,wot)
  %39 = extractvalue %dx.types.ResRet.i32 %38, 0
  %40 = and i32 %39, %37
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

; <label>:42                                      ; preds = %0
  %43 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %6, float %7, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %44 = extractvalue %dx.types.ResRet.f32 %43, 0
  %45 = extractvalue %dx.types.ResRet.f32 %43, 1
  %46 = extractvalue %dx.types.ResRet.f32 %43, 2
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %44)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %45)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %46)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  br label %334

; <label>:47                                      ; preds = %0
  %48 = extractvalue %dx.types.CBufRet.f32 %8, 1
  %49 = fmul fast float %7, 1.000000e+02
  %50 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %51 = extractvalue %dx.types.CBufRet.f32 %50, 3
  %52 = fmul fast float %51, 1.234000e+03
  %53 = call float @dx.op.unary.f32(i32 22, float %52)  ; Frc(value)
  %54 = fmul fast float %53, 1.234500e+04
  %55 = fadd fast float %54, %49
  %56 = fmul fast float %55, 0x3FBA64C300000000
  %57 = call float @dx.op.unary.f32(i32 22, float %56)  ; Frc(value)
  %58 = fadd fast float %57, 0x403330A3E0000000
  %59 = call float @dx.op.dot3.f32(i32 55, float %57, float %57, float %57, float %58, float %58, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %60 = fadd fast float %59, %57
  %61 = fmul fast float %59, 2.000000e+00
  %62 = fadd fast float %57, %57
  %63 = fadd fast float %62, %61
  %64 = fmul fast float %63, %60
  %65 = call float @dx.op.unary.f32(i32 22, float %64)  ; Frc(value)
  %66 = fmul fast float %65, 0x405EDCCCC0000000
  %67 = call float @dx.op.unary.f32(i32 22, float %66)  ; Frc(value)
  %68 = fmul fast float %67, %48
  %69 = fmul fast float %68, 2.000000e+00
  %70 = fsub fast float 0x3FD3333340000000, %7
  %71 = fmul fast float %70, 3.000000e+00
  %72 = call float @dx.op.unary.f32(i32 22, float %71)  ; Frc(value)
  %73 = fmul fast float %72, 0x3FD5555560000000
  %74 = fmul fast float %72, 0x4005555560000000
  %75 = call float @dx.op.unary.f32(i32 7, float %74)  ; Saturate(value)
  %76 = fsub fast float 1.000000e+00, %75
  %77 = fmul fast float %76, 0xC02CDA9940000000
  %78 = call float @dx.op.unary.f32(i32 21, float %77)  ; Exp(value)
  %79 = fmul fast float %9, 5.000000e+00
  %80 = fmul fast float %79, %65
  %81 = fmul fast float %80, %76
  %82 = fmul fast float %81, %78
  %83 = fmul fast float %68, 0x3F80F5EE00000000
  %84 = fadd fast float %73, 0xBFBEB851E0000000
  %85 = call float @dx.op.unary.f32(i32 6, float %84)  ; FAbs(value)
  %86 = fmul fast float %85, 2.000000e+01
  %87 = fsub fast float 1.000000e+00, %86
  %88 = call float @dx.op.unary.f32(i32 7, float %87)  ; Saturate(value)
  %89 = fmul fast float %9, 0x3FD99999A0000000
  %90 = fmul fast float %88, %88
  %91 = fmul fast float %90, %89
  %92 = fadd fast float %91, %69
  %93 = fadd fast float %83, %6
  %94 = fadd fast float %93, %82
  %95 = fmul fast float %51, 0x3FD5555560000000
  %96 = call float @dx.op.unary.f32(i32 27, float %95)  ; Round_ni(value)
  %97 = fsub fast float %95, %96
  %98 = fmul fast float %97, 0xC045A3F2E0000000
  %99 = call float @dx.op.unary.f32(i32 21, float %98)  ; Exp(value)
  %100 = fadd fast float %99, 0xBF847AE140000000
  %101 = call float @dx.op.unary.f32(i32 7, float %100)  ; Saturate(value)
  %102 = fmul fast float %97, 3.000000e+01
  %103 = call float @dx.op.unary.f32(i32 12, float %102)  ; Cos(value)
  %104 = fmul fast float %12, 0xBFE3333340000000
  %105 = fmul fast float %104, %101
  %106 = fmul fast float %105, %103
  %107 = fcmp fast ogt float %12, 0x3FEE666660000000
  %108 = fmul fast float %51, 0x3FC99999A0000000
  br i1 %107, label %109, label %113

; <label>:109                                     ; preds = %47
  %110 = call float @dx.op.unary.f32(i32 22, float %108)  ; Frc(value)
  %111 = fadd fast float %106, -5.000000e-01
  %112 = fadd fast float %111, %110
  br label %113

; <label>:113                                     ; preds = %109, %47
  %114 = phi float [ %112, %109 ], [ %106, %47 ]
  %115 = fmul fast float %114, 0x3FF1642C80000000
  %116 = fadd fast float %115, %7
  %117 = fmul fast float %116, 0x3FED70A3E0000000
  %118 = call float @dx.op.unary.f32(i32 22, float %117)  ; Frc(value)
  %119 = fmul fast float %118, 0x3FF1642C80000000
  %120 = fcmp fast ogt float %119, 1.000000e+00
  %121 = fmul fast float %118, 0x402B2C8580000000
  %122 = fadd fast float %121, -1.250000e+01
  %123 = select i1 %120, float %122, float 0.000000e+00
  %124 = fmul fast float %118, 2.625000e+02
  %125 = fmul fast float %118, 5.250000e+02
  %126 = call float @dx.op.unary.f32(i32 27, float %125)  ; Round_ni(value)
  %127 = fmul fast float %126, 0x3F60F5EE00000000
  %128 = fsub fast float %127, %119
  %129 = fmul fast float %128, %11
  %130 = fadd fast float %129, %119
  %131 = fcmp fast oeq float %13, 0.000000e+00
  %132 = select i1 %131, float 0.000000e+00, float %92
  %133 = fmul fast float %132, 4.000000e+00
  %134 = fadd fast float %133, %13
  %135 = fadd fast float %92, 1.000000e+00
  %136 = fadd fast float %65, 1.000000e+00
  %137 = fmul fast float %136, 0x3F60F5EE00000000
  %138 = fmul fast float %137, %134
  %139 = fmul fast float %136, 0xBF40F5EE00000000
  %140 = fmul fast float %139, %135
  %141 = fsub fast float %94, %138
  %142 = fsub fast float %130, %140
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = extractvalue %dx.types.ResRet.f32 %143, 1
  %146 = extractvalue %dx.types.ResRet.f32 %143, 2
  %147 = fmul fast float %145, 0x3FD27EF9E0000000
  %148 = fmul fast float %145, 0x3FE07AE140000000
  %149 = fmul fast float %65, 0x3F60F5EE00000000
  %150 = fmul fast float %149, %134
  %151 = fmul fast float %65, 0x3F40F5EE00000000
  %152 = fmul fast float %151, %135
  %153 = fsub fast float %94, %150
  %154 = fsub fast float %130, %152
  %155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %153, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = extractvalue %dx.types.ResRet.f32 %155, 1
  %158 = extractvalue %dx.types.ResRet.f32 %155, 2
  %159 = fmul fast float %157, 0xBFD27EF9E0000000
  %160 = fmul fast float %157, 0x3FE07AE140000000
  %161 = fmul fast float %158, 0x3FB99999A0000000
  %162 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %94, float %130, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %163 = extractvalue %dx.types.ResRet.f32 %162, 0
  %164 = extractvalue %dx.types.ResRet.f32 %162, 1
  %165 = extractvalue %dx.types.ResRet.f32 %162, 2
  %166 = fmul fast float %163, 0x3FD322D0E0000000
  %167 = fmul fast float %164, 0x3FE2C8B440000000
  %168 = fadd fast float %166, %167
  %169 = fmul fast float %165, 0x3FBD2F1AA0000000
  %170 = fadd fast float %168, %169
  %171 = fmul fast float %164, 0xBFD27EF9E0000000
  %172 = fmul fast float %164, 0x3FE07AE140000000
  %173 = fmul fast float %165, 0x3FB99999A0000000
  %174 = fmul fast float %65, 0xBF40F5EE00000000
  %175 = fmul fast float %174, %135
  %176 = fadd fast float %150, %94
  %177 = fadd fast float %130, %175
  %178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %176, float %177, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %179 = extractvalue %dx.types.ResRet.f32 %178, 0
  %180 = extractvalue %dx.types.ResRet.f32 %178, 1
  %181 = extractvalue %dx.types.ResRet.f32 %178, 2
  %182 = fmul fast float %180, 0xBFD27EF9E0000000
  %183 = fmul fast float %180, 0xBFE07AE140000000
  %184 = fmul fast float %181, 0xBFB99999A0000000
  %185 = fmul fast float %136, 0x3F40F5EE00000000
  %186 = fmul fast float %185, %135
  %187 = fadd fast float %138, %94
  %188 = fadd fast float %130, %186
  %189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2, %dx.types.Handle %3, float %187, float %188, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %190 = extractvalue %dx.types.ResRet.f32 %189, 0
  %191 = extractvalue %dx.types.ResRet.f32 %189, 1
  %192 = extractvalue %dx.types.ResRet.f32 %189, 2
  %193 = fmul fast float %191, 0xBFD27EF9E0000000
  %194 = fmul fast float %191, 0xBFE07AE140000000
  %195 = fmul fast float %192, 0xBFB99999A0000000
  %196 = fmul fast float %132, 0x3FC99999A0000000
  %197 = fadd fast float %196, 0x3FC99999A0000000
  %198 = fadd fast float %158, %146
  %199 = fadd fast float %198, %165
  %200 = fadd fast float %199, %181
  %201 = fadd fast float %200, %192
  %202 = fmul fast float %201, 0x3FDBE76C80000000
  %203 = fadd fast float %156, %144
  %204 = fadd fast float %203, %163
  %205 = fadd fast float %204, %179
  %206 = fadd fast float %205, %190
  %207 = fmul fast float %206, 0x3FC2D0E560000000
  %208 = fsub fast float %159, %147
  %209 = fadd fast float %208, %171
  %210 = fadd fast float %209, %182
  %211 = fadd fast float %210, %193
  %212 = fadd fast float %211, %202
  %213 = fsub fast float %212, %207
  %214 = fmul fast float %206, 0x3FE3AE1480000000
  %215 = fmul fast float %146, 0xBFB99999A0000000
  %216 = fsub fast float %215, %148
  %217 = fsub fast float %216, %160
  %218 = fsub fast float %217, %161
  %219 = fsub fast float %218, %172
  %220 = fsub fast float %219, %173
  %221 = fadd fast float %220, %183
  %222 = fadd fast float %221, %184
  %223 = fadd fast float %222, %194
  %224 = fadd fast float %223, %195
  %225 = fadd fast float %224, %214
  %226 = fmul fast float %213, %197
  %227 = fmul fast float %225, %197
  %228 = fmul fast float %227, 0x3FF23D70A0000000
  %229 = fadd fast float %228, %170
  %230 = fmul fast float %226, 0x3FD947AE20000000
  %231 = fsub fast float %170, %230
  %232 = fmul fast float %227, 0x3FE2978D40000000
  %233 = fsub fast float %231, %232
  %234 = fmul fast float %226, 0x4000418940000000
  %235 = fadd fast float %234, %170
  %236 = fmul fast float %130, 4.830000e+02
  %237 = fadd fast float %236, %94
  %238 = fmul fast float %51, 0x405EF1EB80000000
  %239 = call float @dx.op.unary.f32(i32 22, float %238)  ; Frc(value)
  %240 = fmul fast float %237, 2.345000e+02
  %241 = fmul fast float %239, 0x40C81CCCC0000000
  %242 = fadd fast float %241, %240
  %243 = call float @dx.op.unary.f32(i32 27, float %242)  ; Round_ni(value)
  %244 = call float @dx.op.unary.f32(i32 22, float %242)  ; Frc(value)
  %245 = fmul fast float %243, 0x3FBA64C300000000
  %246 = call float @dx.op.unary.f32(i32 22, float %245)  ; Frc(value)
  %247 = fadd fast float %246, 0x403330A3E0000000
  %248 = call float @dx.op.dot3.f32(i32 55, float %246, float %246, float %246, float %247, float %247, float %247)  ; Dot3(ax,ay,az,bx,by,bz)
  %249 = fadd fast float %248, %246
  %250 = fmul fast float %248, 2.000000e+00
  %251 = fadd fast float %246, %246
  %252 = fadd fast float %251, %250
  %253 = fmul fast float %252, %249
  %254 = call float @dx.op.unary.f32(i32 22, float %253)  ; Frc(value)
  %255 = fadd fast float %243, 1.000000e+00
  %256 = fmul fast float %255, 0x3FBA64C300000000
  %257 = call float @dx.op.unary.f32(i32 22, float %256)  ; Frc(value)
  %258 = fadd fast float %257, 0x403330A3E0000000
  %259 = call float @dx.op.dot3.f32(i32 55, float %257, float %257, float %257, float %258, float %258, float %258)  ; Dot3(ax,ay,az,bx,by,bz)
  %260 = fadd fast float %259, %257
  %261 = fmul fast float %259, 2.000000e+00
  %262 = fadd fast float %257, %257
  %263 = fadd fast float %262, %261
  %264 = fmul fast float %263, %260
  %265 = call float @dx.op.unary.f32(i32 22, float %264)  ; Frc(value)
  %266 = fmul fast float %265, %244
  %267 = fsub fast float 1.000000e+00, %244
  %268 = fmul fast float %254, %267
  %269 = fadd fast float %266, %268
  %270 = fmul fast float %11, 0x3FD3333340000000
  %271 = fadd fast float %270, 1.000000e+00
  %272 = fmul fast float %229, %271
  %273 = fmul fast float %233, %271
  %274 = fmul fast float %235, %271
  %275 = fadd fast float %123, 0xBFE6666660000000
  %276 = call float @dx.op.unary.f32(i32 6, float %275)  ; FAbs(value)
  %277 = fmul fast float %276, 4.000000e+00
  %278 = call float @dx.op.unary.f32(i32 7, float %277)  ; Saturate(value)
  %279 = fsub fast float 1.000000e+00, %278
  %280 = fcmp fast olt float %123, 0x3F50624DE0000000
  %281 = select i1 %280, float 0.000000e+00, float 1.000000e+00
  %282 = fmul fast float %269, %281
  %283 = fmul fast float %282, %279
  %284 = fcmp fast ogt float %123, 0.000000e+00
  %285 = select i1 %284, float %283, float %272
  %286 = select i1 %284, float %283, float %273
  %287 = select i1 %284, float %283, float %274
  %288 = fadd fast float %269, -5.000000e-01
  %289 = fmul fast float %92, 2.000000e+00
  %290 = fmul fast float %289, %288
  %291 = fadd fast float %285, %290
  %292 = fadd fast float %286, %290
  %293 = fadd fast float %287, %290
  %294 = call float @dx.op.unary.f32(i32 7, float %291)  ; Saturate(value)
  %295 = call float @dx.op.unary.f32(i32 7, float %292)  ; Saturate(value)
  %296 = call float @dx.op.unary.f32(i32 7, float %293)  ; Saturate(value)
  %297 = fmul fast float %94, 8.000000e+00
  %298 = fmul fast float %130, 2.000000e+00
  %299 = fadd fast float %298, %297
  %300 = fadd fast float %299, %108
  %301 = fmul fast float %300, 2.000000e+01
  %302 = call float @dx.op.unary.f32(i32 22, float %301)  ; Frc(value)
  %303 = fmul fast float %302, 2.000000e+00
  %304 = fsub fast float 1.000000e+00, %303
  %305 = call float @dx.op.unary.f32(i32 6, float %304)  ; FAbs(value)
  %306 = fmul fast float %11, 5.000000e-01
  %307 = fmul fast float %306, %305
  %308 = fmul fast float %92, 2.500000e-01
  %309 = fadd fast float %307, %308
  %310 = call float @dx.op.unary.f32(i32 7, float %309)  ; Saturate(value)
  %311 = call float @dx.op.dot3.f32(i32 55, float %294, float %295, float %296, float 0x3FD322D0E0000000, float 0x3FE2C8B440000000, float 0x3FBD2F1AA0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %312 = fsub fast float %311, %294
  %313 = fsub fast float %311, %295
  %314 = fsub fast float %311, %296
  %315 = fmul fast float %312, %310
  %316 = fmul fast float %313, %310
  %317 = fmul fast float %314, %310
  %318 = fadd fast float %315, %294
  %319 = fadd fast float %316, %295
  %320 = fadd fast float %317, %296
  %321 = call float @dx.op.unary.f32(i32 22, float %124)  ; Frc(value)
  %322 = fmul fast float %321, 2.000000e+00
  %323 = fsub fast float 1.000000e+00, %322
  %324 = call float @dx.op.unary.f32(i32 6, float %323)  ; FAbs(value)
  %325 = fmul fast float %11, 7.500000e-01
  %326 = fmul fast float %325, %324
  %327 = fsub fast float 1.000000e+00, %326
  %328 = fmul fast float %327, %318
  %329 = fmul fast float %327, %319
  %330 = fmul fast float %327, %320
  %331 = call float @dx.op.unary.f32(i32 7, float %328)  ; Saturate(value)
  %332 = call float @dx.op.unary.f32(i32 7, float %329)  ; Saturate(value)
  %333 = call float @dx.op.unary.f32(i32 7, float %330)  ; Saturate(value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %331)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %332)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %333)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  br label %334

; <label>:334                                     ; preds = %113, %42
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.viewIdState = !{!14}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !9, !12}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 15, i32 1, i32 11, i32 0, null}
!9 = !{!10, !11}
!10 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!11 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 15, i32 15]}
!15 = !{void ()* @ps_main, !"ps_main", !16, !4, !25}
!16 = !{!17, !22, null}
!17 = !{!18, !20}
!18 = !{i32 0, !"SV_Position", i8 9, i8 3, !19, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!19 = !{i32 0}
!20 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !19, i8 2, i32 1, i8 2, i32 1, i8 0, !21}
!21 = !{i32 3, i32 3}
!22 = !{!23}
!23 = !{i32 0, !"SV_Target", i8 9, i8 16, !19, i8 0, i32 1, i8 4, i32 0, i8 0, !24}
!24 = !{i32 3, i32 15}
!25 = !{i32 0, i64 16}

