;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy  
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0ba22619b06df3cb69a8e5b9ba3eaefe
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
;   [80 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb0     1
;                                   cbuffer      NA          NA     CB2            cb2     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1     t12,space1     1
;                                   texture    byte         r/o      T2     t14,space1     1
;                                   texture    byte         r/o      T3      t5,space1     1
;                                   texture     u32     2darray      T4     t11,space2     1
;                                   texture     f32     2darray      T5     t10,space2     1
;
;
; ViewId state:
;
; Number of inputs: 4, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1 }
;   output 1 depends on inputs: { 0, 1 }
;   output 2 depends on inputs: { 0, 1 }
;   output 3 depends on inputs: { 0, 1 }
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%hostlayout.perPrim = type { [4 x <4 x float>], <4 x float> }
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float> }

define void @ps_main() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %11 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %12 = alloca [8 x i32], align 4
  %13 = alloca [8 x i32], align 4
  %14 = alloca [3 x i32], align 4
  %15 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.f32 %15, 0
  %17 = fptoui float %16 to i32
  %18 = extractvalue %dx.types.CBufRet.f32 %15, 1
  %19 = bitcast float %18 to i32
  %20 = and i32 %19, 65535
  %21 = extractvalue %dx.types.CBufRet.f32 %15, 2
  %22 = fptoui float %21 to i32
  %23 = extractvalue %dx.types.CBufRet.f32 %15, 3
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = fmul fast float %25, %10
  %28 = fmul fast float %26, %11
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %31 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %32 = fmul fast float %27, %30
  %33 = fmul fast float %28, %31
  %34 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %35 = extractvalue %dx.types.CBufRet.i32 %34, 0
  %36 = extractvalue %dx.types.CBufRet.i32 %34, 1
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 1
  %39 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = fptoui float %32 to i32
  %41 = fptoui float %33 to i32
  %42 = lshr i32 %40, 4
  %43 = lshr i32 %41, 4
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 0
  %46 = call i32 @dx.op.tertiary.i32(i32 49, i32 %43, i32 %45, i32 %42)  ; UMad(a,b,c)
  %47 = icmp ult i32 %17, 18
  br i1 %47, label %48, label %59, !dx.controlflow.hints !29

; <label>:48                                      ; preds = %0
  %49 = lshr i32 %19, 16
  %50 = call i32 @dx.op.binary.i32(i32 40, i32 %49, i32 %38)  ; UMin(a,b)
  %51 = call i32 @dx.op.binary.i32(i32 40, i32 %20, i32 %38)  ; UMin(a,b)
  %52 = extractvalue %dx.types.CBufRet.f32 %39, 3
  %53 = fmul fast float %52, %33
  %54 = fptoui float %53 to i32
  %55 = extractvalue %dx.types.CBufRet.f32 %39, 2
  %56 = fmul fast float %55, %32
  %57 = fptoui float %56 to i32
  %58 = lshr i32 %17, 1
  br label %138

; <label>:59                                      ; preds = %0
  %60 = add i32 %35, 1
  %61 = add i32 %36, 1
  %62 = uitofp i32 %38 to float
  %63 = call float @dx.op.unary.f32(i32 24, float %62)  ; Sqrt(value)
  %64 = call float @dx.op.unary.f32(i32 23, float %63)  ; Log(value)
  %65 = call float @dx.op.unary.f32(i32 28, float %64)  ; Round_pi(value)
  %66 = call float @dx.op.unary.f32(i32 21, float %65)  ; Exp(value)
  %67 = fptoui float %66 to i32
  %68 = add i32 %38, -1
  %69 = add i32 %68, %67
  %70 = udiv i32 %69, %67
  br label %71

; <label>:71                                      ; preds = %71, %59
  %72 = phi i32 [ 1, %59 ], [ %75, %71 ]
  %73 = uitofp i32 %67 to float
  %74 = uitofp i32 %70 to float
  %75 = add i32 %72, 1
  %76 = uitofp i32 %75 to float
  %77 = uitofp i32 %60 to float
  %78 = uitofp i32 %61 to float
  %79 = fmul fast float %73, %77
  %80 = fmul fast float %79, %76
  %81 = fmul fast float %74, %78
  %82 = fmul fast float %81, %76
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = fmul fast float %84, 0x3FE51EB860000000
  %87 = fmul fast float %85, 0x3FE51EB860000000
  %88 = fcmp fast olt float %80, %86
  %89 = fcmp fast olt float %82, %87
  %90 = and i1 %88, %89
  br i1 %90, label %71, label %91

; <label>:91                                      ; preds = %71
  %92 = fptoui float %84 to i32
  %93 = fptoui float %85 to i32
  %94 = mul i32 %67, %60
  %95 = mul i32 %94, %72
  %96 = mul i32 %70, %61
  %97 = mul i32 %96, %72
  %98 = sub i32 %92, %95
  %99 = sub i32 %93, %97
  %100 = lshr i32 %98, 1
  %101 = lshr i32 %99, 1
  %102 = uitofp i32 %100 to float
  %103 = uitofp i32 %101 to float
  %104 = fsub fast float %10, %102
  %105 = fsub fast float %11, %103
  %106 = fptoui float %104 to i32
  %107 = fptoui float %105 to i32
  %108 = udiv i32 %106, %72
  %109 = udiv i32 %107, %72
  %110 = udiv i32 %108, %60
  %111 = udiv i32 %109, %61
  %112 = urem i32 %108, %60
  %113 = urem i32 %109, %61
  %114 = mul i32 %111, %67
  %115 = add i32 %114, %110
  %116 = fcmp fast olt float %104, 0.000000e+00
  %117 = fcmp fast olt float %105, 0.000000e+00
  %118 = or i1 %116, %117
  %119 = icmp uge i32 %110, %67
  %120 = or i1 %119, %118
  %121 = icmp uge i32 %115, %38
  %122 = or i1 %121, %120
  %123 = icmp eq i32 %112, %35
  %124 = icmp eq i32 %113, %36
  %125 = or i1 %123, %124
  %126 = or i1 %125, %122
  %127 = select i1 %126, float 0.000000e+00, float %23
  %128 = select i1 %126, i32 -1, i32 %115
  %129 = select i1 %126, i32 -2, i32 %115
  %130 = icmp eq i32 %17, 18
  %131 = select i1 %130, i32 1, i32 %17
  %132 = icmp eq i32 %131, 19
  %133 = select i1 %132, i32 6, i32 %131
  %134 = icmp eq i32 %133, 20
  %135 = select i1 %134, i32 7, i32 %133
  %136 = icmp eq i32 %135, 21
  %137 = select i1 %136, i32 8, i32 %135
  br label %138

; <label>:138                                     ; preds = %91, %48
  %139 = phi i32 [ %58, %48 ], [ %137, %91 ]
  %140 = phi float [ %23, %48 ], [ %127, %91 ]
  %141 = phi i32 [ %57, %48 ], [ %112, %91 ]
  %142 = phi i32 [ %54, %48 ], [ %113, %91 ]
  %143 = phi i32 [ %51, %48 ], [ %128, %91 ]
  %144 = phi i32 [ %50, %48 ], [ %129, %91 ]
  %145 = phi i32 [ 1, %48 ], [ 0, %91 ]
  %146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.i32 %146, 0
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %177, label %149

; <label>:149                                     ; preds = %138
  br label %150

; <label>:150                                     ; preds = %150, %149
  %151 = phi i32 [ %173, %150 ], [ 0, %149 ]
  %152 = phi i32 [ %162, %150 ], [ 0, %149 ]
  %153 = phi i32 [ %174, %150 ], [ 0, %149 ]
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 0
  %156 = mul i32 %155, %46
  %157 = add i32 %156, %153
  %158 = shl i32 %157, 2
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %158, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %160)  ; Countbits(value)
  %162 = add i32 %161, %152
  %163 = shl i32 %153, 5
  %164 = sub i32 %22, %163
  %165 = icmp sgt i32 %164, 31
  %166 = select i1 %165, i32 0, i32 %164
  %167 = icmp sgt i32 %166, -1
  %168 = call i32 @dx.op.binary.i32(i32 37, i32 %166, i32 0)  ; IMax(a,b)
  %169 = and i32 %168, 31
  %170 = shl i32 1, %169
  %171 = select i1 %167, i32 %170, i32 0
  %172 = and i32 %171, %160
  %173 = or i32 %172, %151
  %174 = add i32 %153, 1
  %175 = icmp ult i32 %174, %155
  br i1 %175, label %150, label %176

; <label>:176                                     ; preds = %150
  br label %177

; <label>:177                                     ; preds = %176, %138
  %178 = phi i32 [ 0, %138 ], [ %173, %176 ]
  %179 = phi i32 [ 0, %138 ], [ %162, %176 ]
  %180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.i32 %180, 0
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %192, label %183

; <label>:183                                     ; preds = %177
  br label %184

; <label>:184                                     ; preds = %184, %183
  %185 = phi i32 [ %187, %184 ], [ 0, %183 ]
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i32 0, i32 %185
  store i32 0, i32* %186, align 4, !tbaa !30
  %187 = add i32 %185, 1
  %188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.i32 %188, 0
  %190 = icmp ult i32 %187, %189
  br i1 %190, label %184, label %191

; <label>:191                                     ; preds = %184
  br label %192

; <label>:192                                     ; preds = %191, %177
  %193 = icmp ugt i32 %143, %144
  br i1 %193, label %224, label %194

; <label>:194                                     ; preds = %192
  br label %195

; <label>:195                                     ; preds = %220, %194
  %196 = phi i32 [ %221, %220 ], [ %143, %194 ]
  %197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %198 = extractvalue %dx.types.CBufRet.i32 %197, 2
  %199 = extractvalue %dx.types.CBufRet.i32 %197, 3
  %200 = call i32 @dx.op.tertiary.i32(i32 49, i32 %142, i32 %198, i32 %141)  ; UMad(a,b,c)
  %201 = call i32 @dx.op.tertiary.i32(i32 49, i32 %196, i32 %199, i32 %200)  ; UMad(a,b,c)
  %202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %203 = extractvalue %dx.types.CBufRet.i32 %202, 0
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %220, label %205

; <label>:205                                     ; preds = %195
  br label %206

; <label>:206                                     ; preds = %206, %205
  %207 = phi i32 [ %217, %206 ], [ 0, %205 ]
  %208 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i32 0, i32 %207
  %209 = load i32, i32* %208, align 4, !tbaa !30
  %210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.i32 %210, 0
  %212 = call i32 @dx.op.tertiary.i32(i32 49, i32 %201, i32 %211, i32 %207)  ; UMad(a,b,c)
  %213 = shl i32 %212, 2
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = or i32 %215, %209
  store i32 %216, i32* %208, align 4, !tbaa !30
  %217 = add i32 %207, 1
  %218 = icmp ult i32 %217, %211
  br i1 %218, label %206, label %219

; <label>:219                                     ; preds = %206
  br label %220

; <label>:220                                     ; preds = %219, %195
  %221 = add i32 %196, 1
  %222 = icmp ugt i32 %221, %144
  br i1 %222, label %223, label %195

; <label>:223                                     ; preds = %220
  br label %224

; <label>:224                                     ; preds = %223, %192
  %225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.i32 %225, 0
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %241, label %228

; <label>:228                                     ; preds = %224
  br label %229

; <label>:229                                     ; preds = %229, %228
  %230 = phi i32 [ %236, %229 ], [ 0, %228 ]
  %231 = phi i32 [ %235, %229 ], [ 0, %228 ]
  %232 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i32 0, i32 %230
  %233 = load i32, i32* %232, align 4, !tbaa !30
  %234 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %233)  ; Countbits(value)
  %235 = add i32 %234, %231
  %236 = add i32 %230, 1
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 0
  %239 = icmp ult i32 %236, %238
  br i1 %239, label %229, label %240

; <label>:240                                     ; preds = %229
  br label %241

; <label>:241                                     ; preds = %240, %224
  %242 = phi i32 [ 0, %224 ], [ %235, %240 ]
  %243 = icmp ne i32 %178, 0
  %244 = fmul fast float %32, 3.125000e-02
  %245 = fmul fast float %33, 3.125000e-02
  %246 = fptoui float %244 to i32
  %247 = fptoui float %245 to i32
  %248 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %246, i32 %247, i32 %22, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = select i1 %243, i32 %249, i32 0
  %251 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %40, i32 %41, i32 %20, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = fptoui float %254 to i32
  %256 = add i32 %255, 15
  %257 = lshr i32 %256, 4
  %258 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 50)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.i32 %258, 1
  %260 = icmp eq i32 %257, %259
  %261 = and i32 %250, 3
  %262 = lshr i32 %250, 6
  %263 = and i32 %262, 511
  %264 = lshr i32 %250, 15
  %265 = and i32 %264, 255
  %266 = lshr i32 %250, 23
  %267 = and i32 %266, 255
  br i1 %260, label %268, label %283

; <label>:268                                     ; preds = %241
  %269 = lshr i32 %40, 1
  %270 = lshr i32 %41, 1
  %271 = and i32 %269, 15
  %272 = and i32 %270, 15
  %273 = and i32 %40, 1
  %274 = shl i32 %41, 1
  %275 = and i32 %274, 2
  %276 = or i32 %275, %273
  %277 = shl nuw nsw i32 %263, 4
  %278 = shl nuw nsw i32 %265, 4
  %279 = or i32 %277, %271
  %280 = or i32 %278, %272
  %281 = shl nuw nsw i32 %267, 2
  %282 = or i32 %276, %281
  br label %290

; <label>:283                                     ; preds = %241
  %284 = and i32 %40, 31
  %285 = and i32 %41, 31
  %286 = shl nuw nsw i32 %263, 5
  %287 = shl nuw nsw i32 %265, 5
  %288 = or i32 %286, %284
  %289 = or i32 %287, %285
  br label %290

; <label>:290                                     ; preds = %283, %268
  %291 = phi i32 [ %279, %268 ], [ %288, %283 ]
  %292 = phi i32 [ %280, %268 ], [ %289, %283 ]
  %293 = phi i32 [ %282, %268 ], [ %267, %283 ]
  %294 = icmp eq i32 %178, 0
  br i1 %294, label %301, label %295

; <label>:295                                     ; preds = %290
  switch i32 %261, label %300 [
    i32 0, label %301
    i32 2, label %296
    i32 3, label %297
  ]

; <label>:296                                     ; preds = %295
  br label %301

; <label>:297                                     ; preds = %295
  %298 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %1, i32 0, i32 %291, i32 %292, i32 %293, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  br label %301

; <label>:300                                     ; preds = %295
  br label %301

; <label>:301                                     ; preds = %300, %297, %296, %295, %290
  %302 = phi float [ 0.000000e+00, %300 ], [ 1.000000e+00, %297 ], [ 1.000000e+00, %296 ], [ 1.000000e+00, %290 ], [ 1.000000e+00, %295 ]
  %303 = phi float [ 1.000000e+00, %300 ], [ %299, %297 ], [ 0.000000e+00, %296 ], [ 0.000000e+00, %290 ], [ 1.000000e+00, %295 ]
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.i32 %304, 1
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %316, label %307

; <label>:307                                     ; preds = %301
  br label %308

; <label>:308                                     ; preds = %308, %307
  %309 = phi i32 [ %311, %308 ], [ 0, %307 ]
  %310 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i32 0, i32 %309
  store i32 0, i32* %310, align 4, !tbaa !30
  %311 = add i32 %309, 1
  %312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %313 = extractvalue %dx.types.CBufRet.i32 %312, 1
  %314 = icmp ult i32 %311, %313
  br i1 %314, label %308, label %315

; <label>:315                                     ; preds = %308
  br label %316

; <label>:316                                     ; preds = %315, %301
  br i1 %193, label %347, label %317

; <label>:317                                     ; preds = %316
  br label %318

; <label>:318                                     ; preds = %343, %317
  %319 = phi i32 [ %344, %343 ], [ %143, %317 ]
  %320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.i32 %320, 2
  %322 = extractvalue %dx.types.CBufRet.i32 %320, 3
  %323 = call i32 @dx.op.tertiary.i32(i32 49, i32 %142, i32 %321, i32 %141)  ; UMad(a,b,c)
  %324 = call i32 @dx.op.tertiary.i32(i32 49, i32 %319, i32 %322, i32 %323)  ; UMad(a,b,c)
  %325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %326 = extractvalue %dx.types.CBufRet.i32 %325, 1
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %343, label %328

; <label>:328                                     ; preds = %318
  br label %329

; <label>:329                                     ; preds = %329, %328
  %330 = phi i32 [ %340, %329 ], [ 0, %328 ]
  %331 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i32 0, i32 %330
  %332 = load i32, i32* %331, align 4, !tbaa !30
  %333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %334 = extractvalue %dx.types.CBufRet.i32 %333, 1
  %335 = call i32 @dx.op.tertiary.i32(i32 49, i32 %324, i32 %334, i32 %330)  ; UMad(a,b,c)
  %336 = shl i32 %335, 2
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = or i32 %338, %332
  store i32 %339, i32* %331, align 4, !tbaa !30
  %340 = add i32 %330, 1
  %341 = icmp ult i32 %340, %334
  br i1 %341, label %329, label %342

; <label>:342                                     ; preds = %329
  br label %343

; <label>:343                                     ; preds = %342, %318
  %344 = add i32 %319, 1
  %345 = icmp ugt i32 %344, %144
  br i1 %345, label %346, label %318

; <label>:346                                     ; preds = %343
  br label %347

; <label>:347                                     ; preds = %346, %316
  %348 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %349 = extractvalue %dx.types.CBufRet.i32 %348, 1
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %364, label %351

; <label>:351                                     ; preds = %347
  br label %352

; <label>:352                                     ; preds = %352, %351
  %353 = phi i32 [ %359, %352 ], [ 0, %351 ]
  %354 = phi i32 [ %358, %352 ], [ 0, %351 ]
  %355 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i32 0, i32 %353
  %356 = load i32, i32* %355, align 4, !tbaa !30
  %357 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %356)  ; Countbits(value)
  %358 = add i32 %357, %354
  %359 = add i32 %353, 1
  %360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %361 = extractvalue %dx.types.CBufRet.i32 %360, 1
  %362 = icmp ult i32 %359, %361
  br i1 %362, label %352, label %363

; <label>:363                                     ; preds = %352
  br label %364

; <label>:364                                     ; preds = %363, %347
  %365 = phi i32 [ 0, %347 ], [ %358, %363 ]
  %366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %367 = extractvalue %dx.types.CBufRet.i32 %366, 2
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %378, label %369

; <label>:369                                     ; preds = %364
  br label %370

; <label>:370                                     ; preds = %370, %369
  %371 = phi i32 [ %373, %370 ], [ 0, %369 ]
  %372 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i32 0, i32 %371
  store i32 0, i32* %372, align 4, !tbaa !30
  %373 = add i32 %371, 1
  %374 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %375 = extractvalue %dx.types.CBufRet.i32 %374, 2
  %376 = icmp ult i32 %373, %375
  br i1 %376, label %370, label %377

; <label>:377                                     ; preds = %370
  br label %378

; <label>:378                                     ; preds = %377, %364
  br i1 %193, label %410, label %379

; <label>:379                                     ; preds = %378
  br label %380

; <label>:380                                     ; preds = %406, %379
  %381 = phi i32 [ %407, %406 ], [ %143, %379 ]
  %382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %383 = extractvalue %dx.types.CBufRet.i32 %382, 2
  %384 = extractvalue %dx.types.CBufRet.i32 %382, 3
  %385 = call i32 @dx.op.tertiary.i32(i32 49, i32 %142, i32 %383, i32 %141)  ; UMad(a,b,c)
  %386 = call i32 @dx.op.tertiary.i32(i32 49, i32 %381, i32 %384, i32 %385)  ; UMad(a,b,c)
  %387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.i32 %387, 2
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %406, label %390

; <label>:390                                     ; preds = %380
  br label %391

; <label>:391                                     ; preds = %391, %390
  %392 = phi i32 [ %403, %391 ], [ 0, %390 ]
  %393 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i32 0, i32 %392
  %394 = load i32, i32* %393, align 4, !tbaa !30
  %395 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %396 = extractvalue %dx.types.CBufRet.i32 %395, 2
  %397 = mul i32 %396, %386
  %398 = add i32 %397, %392
  %399 = shl i32 %398, 2
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = or i32 %401, %394
  store i32 %402, i32* %393, align 4, !tbaa !30
  %403 = add i32 %392, 1
  %404 = icmp ult i32 %403, %396
  br i1 %404, label %391, label %405

; <label>:405                                     ; preds = %391
  br label %406

; <label>:406                                     ; preds = %405, %380
  %407 = add i32 %381, 1
  %408 = icmp ugt i32 %407, %144
  br i1 %408, label %409, label %380

; <label>:409                                     ; preds = %406
  br label %410

; <label>:410                                     ; preds = %409, %378
  %411 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %412 = extractvalue %dx.types.CBufRet.i32 %411, 2
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %427, label %414

; <label>:414                                     ; preds = %410
  br label %415

; <label>:415                                     ; preds = %415, %414
  %416 = phi i32 [ %422, %415 ], [ 0, %414 ]
  %417 = phi i32 [ %421, %415 ], [ 0, %414 ]
  %418 = getelementptr inbounds [3 x i32], [3 x i32]* %14, i32 0, i32 %416
  %419 = load i32, i32* %418, align 4, !tbaa !30
  %420 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %419)  ; Countbits(value)
  %421 = add i32 %420, %417
  %422 = add i32 %416, 1
  %423 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %424 = extractvalue %dx.types.CBufRet.i32 %423, 2
  %425 = icmp ult i32 %422, %424
  br i1 %425, label %415, label %426

; <label>:426                                     ; preds = %415
  br label %427

; <label>:427                                     ; preds = %426, %410
  %428 = phi i32 [ 0, %410 ], [ %421, %426 ]
  %429 = icmp eq i32 %139, 0
  br i1 %429, label %430, label %435

; <label>:430                                     ; preds = %427
  %431 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.i32 %431, 0
  %433 = extractvalue %dx.types.CBufRet.i32 %431, 1
  %434 = udiv i32 %433, %432
  br label %481

; <label>:435                                     ; preds = %427
  %436 = icmp eq i32 %139, 1
  br i1 %436, label %437, label %442

; <label>:437                                     ; preds = %435
  %438 = extractvalue %dx.types.CBufRet.f32 %39, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %440 = fptoui float %438 to i32
  %441 = fptoui float %439 to i32
  br label %481

; <label>:442                                     ; preds = %435
  %443 = icmp eq i32 %139, 2
  br i1 %443, label %444, label %451

; <label>:444                                     ; preds = %442
  %445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.i32 %445, 0
  %447 = lshr i32 %446, 1
  %448 = extractvalue %dx.types.CBufRet.i32 %445, 1
  %449 = lshr i32 %448, 1
  %450 = udiv i32 %449, %447
  br label %481

; <label>:451                                     ; preds = %442
  %452 = icmp eq i32 %139, 3
  br i1 %452, label %481, label %453

; <label>:453                                     ; preds = %451
  %454 = icmp eq i32 %139, 4
  br i1 %454, label %481, label %455

; <label>:455                                     ; preds = %453
  %456 = icmp eq i32 %139, 5
  br i1 %456, label %457, label %460

; <label>:457                                     ; preds = %455
  %458 = icmp ugt i32 %179, %242
  %459 = zext i1 %458 to i32
  br label %481

; <label>:460                                     ; preds = %455
  %461 = icmp eq i32 %139, 6
  br i1 %461, label %462, label %467

; <label>:462                                     ; preds = %460
  %463 = extractvalue %dx.types.CBufRet.f32 %39, 0
  %464 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %465 = fptoui float %463 to i32
  %466 = fptoui float %464 to i32
  br label %481

; <label>:467                                     ; preds = %460
  %468 = icmp eq i32 %139, 7
  br i1 %468, label %469, label %474

; <label>:469                                     ; preds = %467
  %470 = extractvalue %dx.types.CBufRet.f32 %39, 0
  %471 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %472 = fptoui float %470 to i32
  %473 = fptoui float %471 to i32
  br label %481

; <label>:474                                     ; preds = %467
  %475 = icmp eq i32 %139, 8
  br i1 %475, label %476, label %481

; <label>:476                                     ; preds = %474
  %477 = extractvalue %dx.types.CBufRet.f32 %39, 0
  %478 = extractvalue %dx.types.CBufRet.f32 %39, 1
  %479 = fptoui float %477 to i32
  %480 = fptoui float %478 to i32
  br label %481

; <label>:481                                     ; preds = %476, %474, %469, %462, %457, %453, %451, %444, %437, %430
  %482 = phi i32 [ 16, %430 ], [ %440, %437 ], [ 32, %444 ], [ 0, %457 ], [ %465, %462 ], [ %472, %469 ], [ %479, %476 ], [ 0, %474 ], [ 0, %451 ], [ 0, %453 ]
  %483 = phi i32 [ 16, %430 ], [ %441, %437 ], [ 32, %444 ], [ 0, %457 ], [ %466, %462 ], [ %473, %469 ], [ %480, %476 ], [ 0, %474 ], [ 0, %451 ], [ 0, %453 ]
  %484 = phi i32 [ %432, %430 ], [ %35, %437 ], [ %447, %444 ], [ 0, %457 ], [ %35, %462 ], [ %35, %469 ], [ %35, %476 ], [ 0, %474 ], [ 0, %451 ], [ 0, %453 ]
  %485 = phi i32 [ %434, %430 ], [ %36, %437 ], [ %450, %444 ], [ 0, %457 ], [ %36, %462 ], [ %36, %469 ], [ %36, %476 ], [ 0, %474 ], [ 0, %451 ], [ 0, %453 ]
  %486 = phi i32 [ %179, %430 ], [ %242, %437 ], [ %250, %444 ], [ %459, %457 ], [ %365, %462 ], [ %428, %469 ], [ 0, %476 ], [ 0, %474 ], [ 0, %451 ], [ 0, %453 ]
  %487 = phi float [ 0.000000e+00, %430 ], [ 0.000000e+00, %437 ], [ 0.000000e+00, %444 ], [ 0.000000e+00, %457 ], [ 0.000000e+00, %462 ], [ 0.000000e+00, %469 ], [ 0.000000e+00, %476 ], [ 0.000000e+00, %474 ], [ %252, %451 ], [ %303, %453 ]
  %488 = phi i1 [ true, %430 ], [ true, %437 ], [ true, %444 ], [ true, %457 ], [ true, %462 ], [ true, %469 ], [ true, %476 ], [ true, %474 ], [ false, %451 ], [ false, %453 ]
  %489 = uitofp i32 %486 to float
  %490 = fadd fast float %489, -4.000000e+00
  %491 = fmul fast float %490, 0x3FB5555560000000
  %492 = call float @dx.op.unary.f32(i32 7, float %491)  ; Saturate(value)
  %493 = icmp eq i32 %486, 0
  %494 = select i1 %493, float 0.000000e+00, float %492
  %495 = icmp ult i32 %486, 2
  %496 = select i1 %495, float 0.000000e+00, float %492
  %497 = add i32 %486, -1
  %498 = icmp ult i32 %497, 2
  %499 = select i1 %498, float 1.000000e+00, float %494
  %500 = icmp ult i32 %486, 4
  %501 = select i1 %500, float 0.000000e+00, float 1.000000e+00
  %502 = and i32 %486, -2
  %503 = icmp eq i32 %502, 2
  %504 = icmp eq i32 %486, 4
  %505 = select i1 %504, float 1.000000e+00, float %501
  %506 = or i1 %504, %503
  %507 = select i1 %506, float 1.000000e+00, float %496
  %508 = add i32 %486, -3
  %509 = icmp ult i32 %508, 2
  %510 = select i1 %509, float 0.000000e+00, float %499
  %511 = select i1 %488, float %505, float %487
  %512 = select i1 %488, float %507, float %487
  %513 = select i1 %488, float %510, float %487
  %514 = fmul fast float %512, %302
  %515 = fmul fast float %513, %302
  %516 = icmp ne i32 %482, 0
  %517 = icmp ne i32 %145, 0
  %518 = and i1 %517, %516
  %519 = and i1 %518, %488
  br i1 %519, label %520, label %676

; <label>:520                                     ; preds = %481
  %521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %522 = extractvalue %dx.types.CBufRet.f32 %521, 2
  %523 = extractvalue %dx.types.CBufRet.f32 %521, 3
  %524 = fmul fast float %511, 5.000000e-01
  %525 = fmul fast float %512, 5.000000e-01
  %526 = fmul fast float %513, 5.000000e-01
  %527 = extractvalue %dx.types.CBufRet.f32 %521, 0
  %528 = extractvalue %dx.types.CBufRet.f32 %521, 1
  %529 = fadd fast float %32, -5.000000e-01
  %530 = fmul fast float %522, %529
  %531 = fadd fast float %33, -5.000000e-01
  %532 = fmul fast float %523, %531
  %533 = uitofp i32 %482 to float
  %534 = uitofp i32 %483 to float
  %535 = fdiv fast float %527, %533
  %536 = fdiv fast float %528, %534
  %537 = fmul fast float %530, %535
  %538 = fmul fast float %532, %536
  %539 = uitofp i32 %484 to float
  %540 = uitofp i32 %485 to float
  %541 = fdiv fast float %537, %539
  %542 = fdiv fast float %538, %540
  %543 = fmul fast float %541, %539
  %544 = fmul fast float %542, %540
  %545 = fptoui float %543 to i32
  %546 = fptoui float %544 to i32
  %547 = uitofp i32 %545 to float
  %548 = uitofp i32 %546 to float
  %549 = fsub fast float %537, %547
  %550 = fdiv fast float %549, %539
  %551 = fsub fast float %538, %548
  %552 = fdiv fast float %551, %540
  %553 = fmul fast float %550, %539
  %554 = fmul fast float %552, %540
  %555 = fmul fast float %553, 2.000000e+00
  %556 = fcmp fast olt float %554, 0.000000e+00
  %557 = fcmp fast oge float %554, 1.000000e+00
  %558 = or i1 %556, %557
  br i1 %558, label %657, label %559

; <label>:559                                     ; preds = %520
  %560 = call float @dx.op.unary.f32(i32 27, float %555)  ; Round_ni(value)
  %561 = fptosi float %560 to i32
  %562 = sub nsw i32 1, %561
  %563 = sub i32 0, %486
  %564 = call i32 @dx.op.binary.i32(i32 37, i32 %486, i32 %563)  ; IMax(a,b)
  %565 = sitofp i32 %564 to float
  %566 = call float @dx.op.unary.f32(i32 23, float %565)  ; Log(value)
  %567 = fmul fast float %566, 0x3FD3441360000000
  %568 = call float @dx.op.unary.f32(i32 27, float %567)  ; Round_ni(value)
  %569 = call float @dx.op.binary.f32(i32 35, float %568, float 0.000000e+00)  ; FMax(a,b)
  %570 = fptosi float %569 to i32
  %571 = lshr i32 %486, 31
  %572 = add nsw i32 %570, %571
  %573 = icmp sgt i32 %562, %572
  %574 = icmp slt i32 %562, 0
  %575 = or i1 %574, %573
  br i1 %575, label %657, label %576

; <label>:576                                     ; preds = %559
  %577 = icmp slt i32 %486, 0
  %578 = icmp eq i32 %562, %572
  %579 = and i1 %577, %578
  br i1 %579, label %593, label %580

; <label>:580                                     ; preds = %576
  %581 = sitofp i32 %486 to float
  %582 = sitofp i32 %562 to float
  %583 = fmul fast float %582, 0xC00A934F00000000
  %584 = call float @dx.op.unary.f32(i32 21, float %583)  ; Exp(value)
  %585 = fmul fast float %584, %581
  %586 = call float @dx.op.unary.f32(i32 6, float %585)  ; FAbs(value)
  %587 = fmul fast float %586, 0x3FB99999A0000000
  %588 = call float @dx.op.unary.f32(i32 22, float %587)  ; Frc(value)
  %589 = fmul fast float %588, 1.000000e+01
  %590 = call float @dx.op.unary.f32(i32 27, float %589)  ; Round_ni(value)
  %591 = fptoui float %590 to i32
  %592 = add i32 %591, 48
  br label %593

; <label>:593                                     ; preds = %580, %576
  %594 = phi i32 [ %592, %580 ], [ 45, %576 ]
  %595 = call float @dx.op.unary.f32(i32 22, float %555)  ; Frc(value)
  %596 = call float @dx.op.unary.f32(i32 22, float %554)  ; Frc(value)
  %597 = icmp eq i32 %594, 45
  %598 = icmp eq i32 %594, 46
  %599 = icmp eq i32 %594, 48
  %600 = icmp eq i32 %594, 49
  %601 = icmp eq i32 %594, 50
  %602 = icmp eq i32 %594, 51
  %603 = icmp eq i32 %594, 52
  %604 = icmp eq i32 %594, 53
  %605 = icmp eq i32 %594, 54
  %606 = icmp eq i32 %594, 55
  %607 = icmp eq i32 %594, 56
  %608 = icmp eq i32 %594, 57
  %609 = select i1 %608, i32 1667448320, i32 0
  %610 = select i1 %608, i32 4087934, i32 0
  %611 = select i1 %607, i32 1046691328, i32 %609
  %612 = select i1 %607, i32 4088675, i32 %610
  %613 = select i1 %606, i32 811630336, i32 %611
  %614 = select i1 %606, i32 789528, i32 %612
  %615 = select i1 %605, i32 1057177088, i32 %613
  %616 = select i1 %605, i32 4088675, i32 %614
  %617 = select i1 %604, i32 1057193728, i32 %615
  %618 = select i1 %604, i32 4088672, i32 %616
  %619 = select i1 %603, i32 505157632, i32 %617
  %620 = select i1 %603, i32 1605403, i32 %618
  %621 = select i1 %602, i32 946028032, i32 %619
  %622 = select i1 %602, i32 4088672, i32 %620
  %623 = select i1 %601, i32 1617116672, i32 %621
  %624 = select i1 %601, i32 8323902, i32 %622
  %625 = select i1 %600, i32 404494336, i32 %623
  %626 = select i1 %600, i32 3938328, i32 %624
  %627 = select i1 %599, i32 2071150080, i32 %625
  %628 = select i1 %599, i32 4089711, i32 %626
  %629 = select i1 %598, i32 0, i32 %627
  %630 = select i1 %598, i32 1579008, i32 %628
  %631 = select i1 %597, i32 2113929216, i32 %629
  %632 = select i1 %597, i32 0, i32 %630
  %633 = fcmp fast olt float %595, 0.000000e+00
  %634 = fcmp fast olt float %596, 0.000000e+00
  %635 = or i1 %633, %634
  %636 = fcmp fast oge float %595, 1.000000e+00
  %637 = or i1 %636, %635
  %638 = fcmp fast oge float %596, 1.000000e+00
  %639 = or i1 %638, %637
  %640 = select i1 %639, float 0.000000e+00, float 1.000000e+00
  %641 = fmul fast float %595, 8.000000e+00
  %642 = fmul fast float %596, 8.000000e+00
  %643 = call float @dx.op.unary.f32(i32 27, float %641)  ; Round_ni(value)
  %644 = call float @dx.op.unary.f32(i32 27, float %642)  ; Round_ni(value)
  %645 = fptoui float %643 to i32
  %646 = fptoui float %644 to i32
  %647 = shl i32 %646, 3
  %648 = add i32 %647, %645
  %649 = icmp ult i32 %646, 4
  %650 = select i1 %649, i32 %631, i32 %632
  %651 = and i32 %648, 31
  %652 = lshr i32 %650, %651
  %653 = and i32 %652, 1
  %654 = uitofp i32 %653 to float
  %655 = fmul fast float %654, %640
  %656 = fcmp une float %655, 0.000000e+00
  br label %657

; <label>:657                                     ; preds = %593, %559, %520
  %658 = phi i1 [ %656, %593 ], [ false, %520 ], [ false, %559 ]
  %659 = select i1 %658, float 1.000000e+00, float %524
  %660 = select i1 %658, float 1.000000e+00, float %525
  %661 = select i1 %658, float 1.000000e+00, float %526
  %662 = fadd fast float %553, -5.000000e-01
  %663 = fadd fast float %554, -5.000000e-01
  %664 = fmul fast float %662, 2.000000e+00
  %665 = fmul fast float %663, 2.000000e+00
  %666 = call float @dx.op.unary.f32(i32 6, float %664)  ; FAbs(value)
  %667 = call float @dx.op.unary.f32(i32 6, float %665)  ; FAbs(value)
  %668 = fsub fast float 1.000000e+00, %666
  %669 = fsub fast float 1.000000e+00, %667
  %670 = call float @dx.op.binary.f32(i32 36, float %668, float %669)  ; FMin(a,b)
  %671 = fmul fast float %670, %533
  %672 = call float @dx.op.unary.f32(i32 7, float %671)  ; Saturate(value)
  %673 = fmul fast float %672, %659
  %674 = fmul fast float %672, %660
  %675 = fmul fast float %672, %661
  br label %676

; <label>:676                                     ; preds = %657, %481
  %677 = phi float [ %673, %657 ], [ %511, %481 ]
  %678 = phi float [ %674, %657 ], [ %514, %481 ]
  %679 = phi float [ %675, %657 ], [ %515, %481 ]
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %677)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %678)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %679)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float %140)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!18}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !14, null}
!5 = !{!6, !7, !8, !9, !10, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 12, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 14, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !11}
!11 = !{i32 0, i32 5}
!12 = !{i32 5, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !13}
!13 = !{i32 0, i32 9}
!14 = !{!15, !16, !17}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %hostlayout.perPrim* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!17 = !{i32 2, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 192, null}
!18 = !{[6 x i32] [i32 4, i32 4, i32 15, i32 15, i32 0, i32 0]}
!19 = !{void ()* @ps_main, !"ps_main", !20, !4, !28}
!20 = !{!21, !25, null}
!21 = !{!22}
!22 = !{i32 0, !"SV_Position", i8 9, i8 3, !23, i8 4, i32 1, i8 4, i32 0, i8 0, !24}
!23 = !{i32 0}
!24 = !{i32 3, i32 3}
!25 = !{!26}
!26 = !{i32 0, !"SV_Target", i8 9, i8 16, !23, i8 0, i32 1, i8 4, i32 0, i8 0, !27}
!27 = !{i32 3, i32 15}
!28 = !{i32 0, i64 16}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 1}
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}

