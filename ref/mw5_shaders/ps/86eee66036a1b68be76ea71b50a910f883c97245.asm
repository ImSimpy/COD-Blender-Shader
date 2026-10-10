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
; shader hash: 204749fbaf03bee70e66f7631e5e8595
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
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %6 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  %7 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %8 = extractvalue %dx.types.CBufRet.f32 %7, 0
  %9 = extractvalue %dx.types.CBufRet.f32 %7, 1
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 2
  %12 = extractvalue %dx.types.CBufRet.f32 %10, 0
  %13 = extractvalue %dx.types.CBufRet.f32 %10, 1
  %14 = fmul fast float %6, 1.000000e+02
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 3
  %17 = fmul fast float %16, 1.234000e+03
  %18 = call float @dx.op.unary.f32(i32 22, float %17)  ; Frc(value)
  %19 = fmul fast float %18, 1.234500e+04
  %20 = fadd fast float %19, %14
  %21 = fmul fast float %20, 0x3FBA64C300000000
  %22 = call float @dx.op.unary.f32(i32 22, float %21)  ; Frc(value)
  %23 = fadd fast float %22, 0x403330A3E0000000
  %24 = call float @dx.op.dot3.f32(i32 55, float %22, float %22, float %22, float %23, float %23, float %23)  ; Dot3(ax,ay,az,bx,by,bz)
  %25 = fadd fast float %24, %22
  %26 = fmul fast float %24, 2.000000e+00
  %27 = fadd fast float %22, %22
  %28 = fadd fast float %27, %26
  %29 = fmul fast float %28, %25
  %30 = call float @dx.op.unary.f32(i32 22, float %29)  ; Frc(value)
  %31 = fmul fast float %30, 0x405EDCCCC0000000
  %32 = call float @dx.op.unary.f32(i32 22, float %31)  ; Frc(value)
  %33 = fmul fast float %32, %9
  %34 = fmul fast float %33, 2.000000e+00
  %35 = fsub fast float 0x3FD3333340000000, %6
  %36 = fmul fast float %35, 3.000000e+00
  %37 = call float @dx.op.unary.f32(i32 22, float %36)  ; Frc(value)
  %38 = fmul fast float %37, 0x3FD5555560000000
  %39 = fmul fast float %37, 0x4005555560000000
  %40 = call float @dx.op.unary.f32(i32 7, float %39)  ; Saturate(value)
  %41 = fsub fast float 1.000000e+00, %40
  %42 = fmul fast float %41, 0xC02CDA9940000000
  %43 = call float @dx.op.unary.f32(i32 21, float %42)  ; Exp(value)
  %44 = fmul fast float %8, 5.000000e+00
  %45 = fmul fast float %44, %30
  %46 = fmul fast float %45, %41
  %47 = fmul fast float %46, %43
  %48 = fmul fast float %33, 0x3F80F5EE00000000
  %49 = fadd fast float %38, 0xBFBEB851E0000000
  %50 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %51 = fmul fast float %50, 2.000000e+01
  %52 = fsub fast float 1.000000e+00, %51
  %53 = call float @dx.op.unary.f32(i32 7, float %52)  ; Saturate(value)
  %54 = fmul fast float %8, 0x3FD99999A0000000
  %55 = fmul fast float %53, %53
  %56 = fmul fast float %55, %54
  %57 = fadd fast float %56, %34
  %58 = fadd fast float %48, %5
  %59 = fadd fast float %58, %47
  %60 = fmul fast float %16, 0x3FD5555560000000
  %61 = call float @dx.op.unary.f32(i32 27, float %60)  ; Round_ni(value)
  %62 = fsub fast float %60, %61
  %63 = fmul fast float %62, 0xC045A3F2E0000000
  %64 = call float @dx.op.unary.f32(i32 21, float %63)  ; Exp(value)
  %65 = fadd fast float %64, 0xBF847AE140000000
  %66 = call float @dx.op.unary.f32(i32 7, float %65)  ; Saturate(value)
  %67 = fmul fast float %62, 3.000000e+01
  %68 = call float @dx.op.unary.f32(i32 12, float %67)  ; Cos(value)
  %69 = fmul fast float %12, 0xBFE3333340000000
  %70 = fmul fast float %69, %66
  %71 = fmul fast float %70, %68
  %72 = fcmp fast ogt float %12, 0x3FEE666660000000
  %73 = fmul fast float %16, 0x3FC99999A0000000
  br i1 %72, label %74, label %78

; <label>:74                                      ; preds = %0
  %75 = call float @dx.op.unary.f32(i32 22, float %73)  ; Frc(value)
  %76 = fadd fast float %71, -5.000000e-01
  %77 = fadd fast float %76, %75
  br label %78

; <label>:78                                      ; preds = %74, %0
  %79 = phi float [ %77, %74 ], [ %71, %0 ]
  %80 = fmul fast float %79, 0x3FF1642C80000000
  %81 = fadd fast float %80, %6
  %82 = fmul fast float %81, 0x3FED70A3E0000000
  %83 = call float @dx.op.unary.f32(i32 22, float %82)  ; Frc(value)
  %84 = fmul fast float %83, 0x3FF1642C80000000
  %85 = fcmp fast ogt float %84, 1.000000e+00
  %86 = fmul fast float %83, 0x402B2C8580000000
  %87 = fadd fast float %86, -1.250000e+01
  %88 = select i1 %85, float %87, float 0.000000e+00
  %89 = fmul fast float %83, 2.625000e+02
  %90 = fmul fast float %83, 5.250000e+02
  %91 = call float @dx.op.unary.f32(i32 27, float %90)  ; Round_ni(value)
  %92 = fmul fast float %91, 0x3F60F5EE00000000
  %93 = fsub fast float %92, %84
  %94 = fmul fast float %93, %11
  %95 = fadd fast float %94, %84
  %96 = fcmp fast oeq float %13, 0.000000e+00
  %97 = select i1 %96, float 0.000000e+00, float %57
  %98 = fmul fast float %97, 4.000000e+00
  %99 = fadd fast float %98, %13
  %100 = fadd fast float %57, 1.000000e+00
  %101 = fadd fast float %30, 1.000000e+00
  %102 = fmul fast float %101, 0x3F60F5EE00000000
  %103 = fmul fast float %102, %99
  %104 = fmul fast float %101, 0xBF40F5EE00000000
  %105 = fmul fast float %104, %100
  %106 = fsub fast float %59, %103
  %107 = fsub fast float %95, %105
  %108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %106, float %107, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %109 = extractvalue %dx.types.ResRet.f32 %108, 0
  %110 = extractvalue %dx.types.ResRet.f32 %108, 1
  %111 = extractvalue %dx.types.ResRet.f32 %108, 2
  %112 = fmul fast float %110, 0x3FD27EF9E0000000
  %113 = fmul fast float %110, 0x3FE07AE140000000
  %114 = fmul fast float %30, 0x3F60F5EE00000000
  %115 = fmul fast float %114, %99
  %116 = fmul fast float %30, 0x3F40F5EE00000000
  %117 = fmul fast float %116, %100
  %118 = fsub fast float %59, %115
  %119 = fsub fast float %95, %117
  %120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %118, float %119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = extractvalue %dx.types.ResRet.f32 %120, 1
  %123 = extractvalue %dx.types.ResRet.f32 %120, 2
  %124 = fmul fast float %122, 0xBFD27EF9E0000000
  %125 = fmul fast float %122, 0x3FE07AE140000000
  %126 = fmul fast float %123, 0x3FB99999A0000000
  %127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %59, float %95, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = extractvalue %dx.types.ResRet.f32 %127, 1
  %130 = extractvalue %dx.types.ResRet.f32 %127, 2
  %131 = fmul fast float %128, 0x3FD322D0E0000000
  %132 = fmul fast float %129, 0x3FE2C8B440000000
  %133 = fadd fast float %131, %132
  %134 = fmul fast float %130, 0x3FBD2F1AA0000000
  %135 = fadd fast float %133, %134
  %136 = fmul fast float %129, 0xBFD27EF9E0000000
  %137 = fmul fast float %129, 0x3FE07AE140000000
  %138 = fmul fast float %130, 0x3FB99999A0000000
  %139 = fmul fast float %30, 0xBF40F5EE00000000
  %140 = fmul fast float %139, %100
  %141 = fadd fast float %115, %59
  %142 = fadd fast float %95, %140
  %143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %141, float %142, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = extractvalue %dx.types.ResRet.f32 %143, 1
  %146 = extractvalue %dx.types.ResRet.f32 %143, 2
  %147 = fmul fast float %145, 0xBFD27EF9E0000000
  %148 = fmul fast float %145, 0xBFE07AE140000000
  %149 = fmul fast float %146, 0xBFB99999A0000000
  %150 = fmul fast float %101, 0x3F40F5EE00000000
  %151 = fmul fast float %150, %100
  %152 = fadd fast float %103, %59
  %153 = fadd fast float %95, %151
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %2, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = extractvalue %dx.types.ResRet.f32 %154, 1
  %157 = extractvalue %dx.types.ResRet.f32 %154, 2
  %158 = fmul fast float %156, 0xBFD27EF9E0000000
  %159 = fmul fast float %156, 0xBFE07AE140000000
  %160 = fmul fast float %157, 0xBFB99999A0000000
  %161 = fmul fast float %97, 0x3FC99999A0000000
  %162 = fadd fast float %161, 0x3FC99999A0000000
  %163 = fadd fast float %123, %111
  %164 = fadd fast float %163, %130
  %165 = fadd fast float %164, %146
  %166 = fadd fast float %165, %157
  %167 = fmul fast float %166, 0x3FDBE76C80000000
  %168 = fadd fast float %121, %109
  %169 = fadd fast float %168, %128
  %170 = fadd fast float %169, %144
  %171 = fadd fast float %170, %155
  %172 = fmul fast float %171, 0x3FC2D0E560000000
  %173 = fsub fast float %124, %112
  %174 = fadd fast float %173, %136
  %175 = fadd fast float %174, %147
  %176 = fadd fast float %175, %158
  %177 = fadd fast float %176, %167
  %178 = fsub fast float %177, %172
  %179 = fmul fast float %171, 0x3FE3AE1480000000
  %180 = fmul fast float %111, 0xBFB99999A0000000
  %181 = fsub fast float %180, %113
  %182 = fsub fast float %181, %125
  %183 = fsub fast float %182, %126
  %184 = fsub fast float %183, %137
  %185 = fsub fast float %184, %138
  %186 = fadd fast float %185, %148
  %187 = fadd fast float %186, %149
  %188 = fadd fast float %187, %159
  %189 = fadd fast float %188, %160
  %190 = fadd fast float %189, %179
  %191 = fmul fast float %178, %162
  %192 = fmul fast float %190, %162
  %193 = fmul fast float %192, 0x3FF23D70A0000000
  %194 = fadd fast float %193, %135
  %195 = fmul fast float %191, 0x3FD947AE20000000
  %196 = fsub fast float %135, %195
  %197 = fmul fast float %192, 0x3FE2978D40000000
  %198 = fsub fast float %196, %197
  %199 = fmul fast float %191, 0x4000418940000000
  %200 = fadd fast float %199, %135
  %201 = fmul fast float %95, 4.830000e+02
  %202 = fadd fast float %201, %59
  %203 = fmul fast float %16, 0x405EF1EB80000000
  %204 = call float @dx.op.unary.f32(i32 22, float %203)  ; Frc(value)
  %205 = fmul fast float %202, 2.345000e+02
  %206 = fmul fast float %204, 0x40C81CCCC0000000
  %207 = fadd fast float %206, %205
  %208 = call float @dx.op.unary.f32(i32 27, float %207)  ; Round_ni(value)
  %209 = call float @dx.op.unary.f32(i32 22, float %207)  ; Frc(value)
  %210 = fmul fast float %208, 0x3FBA64C300000000
  %211 = call float @dx.op.unary.f32(i32 22, float %210)  ; Frc(value)
  %212 = fadd fast float %211, 0x403330A3E0000000
  %213 = call float @dx.op.dot3.f32(i32 55, float %211, float %211, float %211, float %212, float %212, float %212)  ; Dot3(ax,ay,az,bx,by,bz)
  %214 = fadd fast float %213, %211
  %215 = fmul fast float %213, 2.000000e+00
  %216 = fadd fast float %211, %211
  %217 = fadd fast float %216, %215
  %218 = fmul fast float %217, %214
  %219 = call float @dx.op.unary.f32(i32 22, float %218)  ; Frc(value)
  %220 = fadd fast float %208, 1.000000e+00
  %221 = fmul fast float %220, 0x3FBA64C300000000
  %222 = call float @dx.op.unary.f32(i32 22, float %221)  ; Frc(value)
  %223 = fadd fast float %222, 0x403330A3E0000000
  %224 = call float @dx.op.dot3.f32(i32 55, float %222, float %222, float %222, float %223, float %223, float %223)  ; Dot3(ax,ay,az,bx,by,bz)
  %225 = fadd fast float %224, %222
  %226 = fmul fast float %224, 2.000000e+00
  %227 = fadd fast float %222, %222
  %228 = fadd fast float %227, %226
  %229 = fmul fast float %228, %225
  %230 = call float @dx.op.unary.f32(i32 22, float %229)  ; Frc(value)
  %231 = fmul fast float %230, %209
  %232 = fsub fast float 1.000000e+00, %209
  %233 = fmul fast float %219, %232
  %234 = fadd fast float %231, %233
  %235 = fmul fast float %11, 0x3FD3333340000000
  %236 = fadd fast float %235, 1.000000e+00
  %237 = fmul fast float %194, %236
  %238 = fmul fast float %198, %236
  %239 = fmul fast float %200, %236
  %240 = fadd fast float %88, 0xBFE6666660000000
  %241 = call float @dx.op.unary.f32(i32 6, float %240)  ; FAbs(value)
  %242 = fmul fast float %241, 4.000000e+00
  %243 = call float @dx.op.unary.f32(i32 7, float %242)  ; Saturate(value)
  %244 = fsub fast float 1.000000e+00, %243
  %245 = fcmp fast olt float %88, 0x3F50624DE0000000
  %246 = select i1 %245, float 0.000000e+00, float 1.000000e+00
  %247 = fmul fast float %234, %246
  %248 = fmul fast float %247, %244
  %249 = fcmp fast ogt float %88, 0.000000e+00
  %250 = select i1 %249, float %248, float %237
  %251 = select i1 %249, float %248, float %238
  %252 = select i1 %249, float %248, float %239
  %253 = fadd fast float %234, -5.000000e-01
  %254 = fmul fast float %57, 2.000000e+00
  %255 = fmul fast float %254, %253
  %256 = fadd fast float %250, %255
  %257 = fadd fast float %251, %255
  %258 = fadd fast float %252, %255
  %259 = call float @dx.op.unary.f32(i32 7, float %256)  ; Saturate(value)
  %260 = call float @dx.op.unary.f32(i32 7, float %257)  ; Saturate(value)
  %261 = call float @dx.op.unary.f32(i32 7, float %258)  ; Saturate(value)
  %262 = fmul fast float %59, 8.000000e+00
  %263 = fmul fast float %95, 2.000000e+00
  %264 = fadd fast float %263, %262
  %265 = fadd fast float %264, %73
  %266 = fmul fast float %265, 2.000000e+01
  %267 = call float @dx.op.unary.f32(i32 22, float %266)  ; Frc(value)
  %268 = fmul fast float %267, 2.000000e+00
  %269 = fsub fast float 1.000000e+00, %268
  %270 = call float @dx.op.unary.f32(i32 6, float %269)  ; FAbs(value)
  %271 = fmul fast float %11, 5.000000e-01
  %272 = fmul fast float %271, %270
  %273 = fmul fast float %57, 2.500000e-01
  %274 = fadd fast float %272, %273
  %275 = call float @dx.op.unary.f32(i32 7, float %274)  ; Saturate(value)
  %276 = call float @dx.op.dot3.f32(i32 55, float %259, float %260, float %261, float 0x3FD322D0E0000000, float 0x3FE2C8B440000000, float 0x3FBD2F1AA0000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %277 = fsub fast float %276, %259
  %278 = fsub fast float %276, %260
  %279 = fsub fast float %276, %261
  %280 = fmul fast float %277, %275
  %281 = fmul fast float %278, %275
  %282 = fmul fast float %279, %275
  %283 = fadd fast float %280, %259
  %284 = fadd fast float %281, %260
  %285 = fadd fast float %282, %261
  %286 = call float @dx.op.unary.f32(i32 22, float %89)  ; Frc(value)
  %287 = fmul fast float %286, 2.000000e+00
  %288 = fsub fast float 1.000000e+00, %287
  %289 = call float @dx.op.unary.f32(i32 6, float %288)  ; FAbs(value)
  %290 = fmul fast float %11, 7.500000e-01
  %291 = fmul fast float %290, %289
  %292 = fsub fast float 1.000000e+00, %291
  %293 = fmul fast float %292, %283
  %294 = fmul fast float %292, %284
  %295 = fmul fast float %292, %285
  %296 = call float @dx.op.unary.f32(i32 7, float %293)  ; Saturate(value)
  %297 = call float @dx.op.unary.f32(i32 7, float %294)  ; Saturate(value)
  %298 = call float @dx.op.unary.f32(i32 7, float %295)  ; Saturate(value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %296)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %297)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %298)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 1.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

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
!4 = !{!5, null, !8, !11}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10}
!9 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!10 = !{i32 1, %perObject* undef, !"", i32 0, i32 1, i32 1, i32 32, null}
!11 = !{!12}
!12 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!13 = !{[8 x i32] [i32 6, i32 4, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7]}
!14 = !{void ()* @ps_main, !"ps_main", !15, !4, null}
!15 = !{!16, !21, null}
!16 = !{!17, !19}
!17 = !{i32 0, !"SV_Position", i8 9, i8 3, !18, i8 4, i32 1, i8 4, i32 0, i8 0, null}
!18 = !{i32 0}
!19 = !{i32 1, !"TEXCOORD", i8 9, i8 0, !18, i8 2, i32 1, i8 2, i32 1, i8 0, !20}
!20 = !{i32 3, i32 3}
!21 = !{!22}
!22 = !{i32 0, !"SV_Target", i8 9, i8 16, !18, i8 0, i32 1, i8 4, i32 0, i8 0, !23}
!23 = !{i32 3, i32 15}

