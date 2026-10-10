;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; no parameters
; shader hash: f15f6e4f37cc6a825209b57daeb03182
;
; Pipeline Runtime Information: 
;
;
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
;   [336 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0             t1     1
;                                   texture     f32          2d      T1             t2     1
;                                       UAV    byte         r/w      U0             u1     1
;                                       UAV  struct     r/w+cnt      U1             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%CsHudOutlineConstants = type { <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, float }

define void @cs_hudoutline_workgroups() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %9 = alloca [8 x float], align 4
  %10 = alloca [8 x float], align 4
  %11 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %12 = extractvalue %dx.types.CBufRet.f32 %11, 0
  %13 = extractvalue %dx.types.CBufRet.f32 %11, 1
  %14 = fptoui float %12 to i32
  %15 = fptoui float %13 to i32
  %16 = add i32 %14, 7
  %17 = add i32 %15, 7
  %18 = lshr i32 %16, 3
  %19 = lshr i32 %17, 3
  %20 = icmp uge i32 %7, %18
  %21 = icmp uge i32 %8, %19
  %22 = or i1 %20, %21
  br i1 %22, label %957, label %23, !dx.controlflow.hints !19

; <label>:23                                      ; preds = %0
  %24 = fptosi float %13 to i32
  %25 = ashr i32 %24, 3
  %26 = add nsw i32 %25, -1
  %27 = fptosi float %12 to i32
  %28 = ashr i32 %27, 3
  %29 = add nsw i32 %28, -1
  %30 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %31 = extractvalue %dx.types.CBufRet.i32 %30, 1
  %32 = shl i32 %31, 1
  %33 = lshr i32 %8, 2
  %34 = extractvalue %dx.types.CBufRet.i32 %30, 0
  %35 = mul i32 %34, %33
  %36 = lshr i32 %7, 3
  %37 = add i32 %32, %36
  %38 = add i32 %37, %35
  %39 = shl i32 %38, 2
  %40 = shl i32 %8, 3
  %41 = and i32 %40, 24
  %42 = and i32 %7, 7
  %43 = or i32 %41, %42
  %44 = shl i32 1, %43
  %45 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %39, i32 undef)  ; BufferLoad(srv,index,wot)
  %46 = extractvalue %dx.types.ResRet.i32 %45, 0
  %47 = and i32 %46, %44
  %48 = call i32 @dx.op.binary.i32(i32 40, i32 %7, i32 %29)  ; UMin(a,b)
  %49 = call i32 @dx.op.binary.i32(i32 40, i32 %8, i32 %26)  ; UMin(a,b)
  %50 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 3, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = fcmp fast ogt float %51, -1.000000e+00
  %53 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.f32 %53, 1
  %55 = select i1 %52, float %54, float 1.000000e+00
  %56 = fadd fast float %51, 1.000000e+00
  %57 = fmul fast float %55, %56
  %58 = call float @dx.op.unary.f32(i32 6, float %57)  ; FAbs(value)
  %59 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %48, i32 %49, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = fcmp fast ogt float %60, -1.000000e+00
  %62 = select i1 %61, float %54, float 1.000000e+00
  %63 = fadd fast float %60, 1.000000e+00
  %64 = fmul fast float %62, %63
  %65 = call float @dx.op.unary.f32(i32 6, float %64)  ; FAbs(value)
  %66 = uitofp i32 %7 to float
  %67 = uitofp i32 %8 to float
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %71 = fmul fast float %66, 1.600000e+01
  %72 = fmul fast float %71, %69
  %73 = fmul fast float %67, 1.600000e+01
  %74 = fmul fast float %73, %70
  %75 = fsub fast float 1.000000e+00, %72
  %76 = fsub fast float 1.000000e+00, %74
  %77 = fmul fast float %69, -1.600000e+01
  %78 = fmul fast float %70, -1.600000e+01
  %79 = fmul fast float %69, 8.000000e+00
  %80 = fmul fast float %70, 8.000000e+00
  %81 = fsub fast float %75, %79
  %82 = fsub fast float %76, %80
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = extractvalue %dx.types.CBufRet.f32 %83, 1
  %86 = extractvalue %dx.types.CBufRet.f32 %83, 2
  %87 = fmul fast float %81, %84
  %88 = fmul fast float %81, %85
  %89 = fmul fast float %81, %86
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 0
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 1
  %93 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %94 = fmul fast float %82, %91
  %95 = fmul fast float %82, %92
  %96 = fmul fast float %82, %93
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %101 = fadd fast float %94, %98
  %102 = fadd fast float %101, %87
  %103 = fadd fast float %95, %99
  %104 = fadd fast float %103, %88
  %105 = fadd fast float %96, %100
  %106 = fadd fast float %105, %89
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %109 = call float @dx.op.dot3.f32(i32 55, float %102, float %104, float %106, float %102, float %104, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %110 = call float @dx.op.unary.f32(i32 25, float %109)  ; Rsqrt(value)
  %111 = fmul fast float %110, %108
  %112 = fsub fast float %65, %111
  %113 = fmul fast float %84, %75
  %114 = fmul fast float %85, %75
  %115 = fmul fast float %86, %75
  %116 = fmul fast float %91, %76
  %117 = fmul fast float %92, %76
  %118 = fmul fast float %93, %76
  %119 = fadd fast float %116, %113
  %120 = fadd fast float %117, %114
  %121 = fadd fast float %118, %115
  %122 = fadd fast float %119, %98
  %123 = fadd fast float %120, %99
  %124 = fadd fast float %121, %100
  %125 = fmul fast float %122, %112
  %126 = fmul fast float %123, %112
  %127 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 0
  %128 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 0
  store float %125, float* %127, align 4
  store float %126, float* %128, align 4
  %129 = fadd fast float %76, %78
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fmul fast float %131, %75
  %135 = fmul fast float %132, %75
  %136 = fmul fast float %133, %75
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %141 = fmul fast float %138, %129
  %142 = fmul fast float %139, %129
  %143 = fmul fast float %140, %129
  %144 = fadd fast float %141, %134
  %145 = fadd fast float %142, %135
  %146 = fadd fast float %143, %136
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %151 = fadd fast float %144, %148
  %152 = fadd fast float %145, %149
  %153 = fadd fast float %146, %150
  %154 = fmul fast float %151, %112
  %155 = fmul fast float %152, %112
  %156 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 1
  %157 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 1
  store float %154, float* %156, align 4
  store float %155, float* %157, align 4
  %158 = fadd fast float %75, %77
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.f32 %159, 0
  %161 = extractvalue %dx.types.CBufRet.f32 %159, 1
  %162 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %163 = fmul fast float %160, %158
  %164 = fmul fast float %161, %158
  %165 = fmul fast float %162, %158
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 0
  %168 = extractvalue %dx.types.CBufRet.f32 %166, 1
  %169 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %170 = fmul fast float %167, %129
  %171 = fmul fast float %168, %129
  %172 = fmul fast float %169, %129
  %173 = fadd fast float %170, %163
  %174 = fadd fast float %171, %164
  %175 = fadd fast float %172, %165
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = extractvalue %dx.types.CBufRet.f32 %176, 1
  %179 = extractvalue %dx.types.CBufRet.f32 %176, 2
  %180 = fadd fast float %173, %177
  %181 = fadd fast float %174, %178
  %182 = fadd fast float %175, %179
  %183 = fmul fast float %180, %112
  %184 = fmul fast float %181, %112
  %185 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 2
  %186 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 2
  store float %183, float* %185, align 4
  store float %184, float* %186, align 4
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = extractvalue %dx.types.CBufRet.f32 %187, 1
  %190 = fmul fast float %188, %158
  %191 = fmul fast float %189, %158
  %192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.f32 %192, 0
  %194 = extractvalue %dx.types.CBufRet.f32 %192, 1
  %195 = fmul fast float %193, %76
  %196 = fmul fast float %194, %76
  %197 = fadd fast float %195, %190
  %198 = fadd fast float %196, %191
  %199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %200 = extractvalue %dx.types.CBufRet.f32 %199, 0
  %201 = extractvalue %dx.types.CBufRet.f32 %199, 1
  %202 = fadd fast float %197, %200
  %203 = fadd fast float %198, %201
  %204 = fmul fast float %202, %112
  %205 = fmul fast float %203, %112
  %206 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 3
  %207 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 3
  store float %204, float* %206, align 4
  store float %205, float* %207, align 4
  %208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %209 = extractvalue %dx.types.CBufRet.f32 %208, 0
  %210 = extractvalue %dx.types.CBufRet.f32 %208, 1
  %211 = extractvalue %dx.types.CBufRet.f32 %208, 2
  %212 = fmul fast float %209, %75
  %213 = fmul fast float %210, %75
  %214 = fmul fast float %211, %75
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 0
  %217 = extractvalue %dx.types.CBufRet.f32 %215, 1
  %218 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %219 = fmul fast float %216, %76
  %220 = fmul fast float %217, %76
  %221 = fmul fast float %218, %76
  %222 = fadd fast float %219, %212
  %223 = fadd fast float %220, %213
  %224 = fadd fast float %221, %214
  %225 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %226 = extractvalue %dx.types.CBufRet.f32 %225, 0
  %227 = extractvalue %dx.types.CBufRet.f32 %225, 1
  %228 = extractvalue %dx.types.CBufRet.f32 %225, 2
  %229 = fadd fast float %222, %226
  %230 = fadd fast float %223, %227
  %231 = fadd fast float %224, %228
  %232 = fmul fast float %229, %58
  %233 = fmul fast float %230, %58
  %234 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 4
  %235 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 4
  store float %232, float* %234, align 4
  store float %233, float* %235, align 4
  %236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %237 = extractvalue %dx.types.CBufRet.f32 %236, 0
  %238 = extractvalue %dx.types.CBufRet.f32 %236, 1
  %239 = extractvalue %dx.types.CBufRet.f32 %236, 2
  %240 = fmul fast float %237, %75
  %241 = fmul fast float %238, %75
  %242 = fmul fast float %239, %75
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %246 = extractvalue %dx.types.CBufRet.f32 %243, 2
  %247 = fmul fast float %244, %129
  %248 = fmul fast float %245, %129
  %249 = fmul fast float %246, %129
  %250 = fadd fast float %247, %240
  %251 = fadd fast float %248, %241
  %252 = fadd fast float %249, %242
  %253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %254 = extractvalue %dx.types.CBufRet.f32 %253, 0
  %255 = extractvalue %dx.types.CBufRet.f32 %253, 1
  %256 = extractvalue %dx.types.CBufRet.f32 %253, 2
  %257 = fadd fast float %250, %254
  %258 = fadd fast float %251, %255
  %259 = fadd fast float %252, %256
  %260 = fmul fast float %257, %58
  %261 = fmul fast float %258, %58
  %262 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 5
  %263 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 5
  store float %260, float* %262, align 4
  store float %261, float* %263, align 4
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 0
  %266 = extractvalue %dx.types.CBufRet.f32 %264, 1
  %267 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %268 = fmul fast float %265, %158
  %269 = fmul fast float %266, %158
  %270 = fmul fast float %267, %158
  %271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %272 = extractvalue %dx.types.CBufRet.f32 %271, 0
  %273 = extractvalue %dx.types.CBufRet.f32 %271, 1
  %274 = extractvalue %dx.types.CBufRet.f32 %271, 2
  %275 = fmul fast float %272, %129
  %276 = fmul fast float %273, %129
  %277 = fmul fast float %274, %129
  %278 = fadd fast float %275, %268
  %279 = fadd fast float %276, %269
  %280 = fadd fast float %277, %270
  %281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %282 = extractvalue %dx.types.CBufRet.f32 %281, 0
  %283 = extractvalue %dx.types.CBufRet.f32 %281, 1
  %284 = extractvalue %dx.types.CBufRet.f32 %281, 2
  %285 = fadd fast float %278, %282
  %286 = fadd fast float %279, %283
  %287 = fadd fast float %280, %284
  %288 = fmul fast float %285, %58
  %289 = fmul fast float %286, %58
  %290 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 6
  %291 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 6
  store float %288, float* %290, align 4
  store float %289, float* %291, align 4
  %292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %293 = extractvalue %dx.types.CBufRet.f32 %292, 0
  %294 = extractvalue %dx.types.CBufRet.f32 %292, 1
  %295 = fmul fast float %293, %158
  %296 = fmul fast float %294, %158
  %297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %298 = extractvalue %dx.types.CBufRet.f32 %297, 0
  %299 = extractvalue %dx.types.CBufRet.f32 %297, 1
  %300 = fmul fast float %298, %76
  %301 = fmul fast float %299, %76
  %302 = fadd fast float %300, %295
  %303 = fadd fast float %301, %296
  %304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.f32 %304, 0
  %306 = extractvalue %dx.types.CBufRet.f32 %304, 1
  %307 = fadd fast float %302, %305
  %308 = fadd fast float %303, %306
  %309 = fmul fast float %307, %58
  %310 = fmul fast float %308, %58
  %311 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 7
  %312 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 7
  store float %309, float* %311, align 4
  store float %310, float* %312, align 4
  %313 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %314 = extractvalue %dx.types.CBufRet.i32 %313, 0
  %315 = icmp eq i32 %314, 0
  br i1 %315, label %499, label %316

; <label>:316                                     ; preds = %23
  br label %317

; <label>:317                                     ; preds = %486, %316
  %318 = phi i32 [ %493, %486 ], [ 0, %316 ]
  %319 = phi i32 [ %494, %486 ], [ 0, %316 ]
  %320 = add i32 %319, 171
  %321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %320)  ; CBufferLoadLegacy(handle,regIndex)
  %322 = extractvalue %dx.types.CBufRet.f32 %321, 0
  %323 = extractvalue %dx.types.CBufRet.f32 %321, 1
  %324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %325 = extractvalue %dx.types.CBufRet.f32 %324, 0
  %326 = extractvalue %dx.types.CBufRet.f32 %324, 1
  %327 = fsub fast float %322, %325
  %328 = fsub fast float %323, %326
  %329 = extractvalue %dx.types.CBufRet.f32 %321, 2
  %330 = fmul fast float %329, %329
  %331 = fmul fast float %330, 2.000000e+00
  br label %332

; <label>:332                                     ; preds = %358, %317
  %333 = phi float [ %126, %317 ], [ %362, %358 ]
  %334 = phi float [ %125, %317 ], [ %360, %358 ]
  %335 = phi float [ %331, %317 ], [ %355, %358 ]
  %336 = phi i32 [ 0, %317 ], [ %356, %358 ]
  %337 = add nuw nsw i32 %336, 4
  %338 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 %337
  %339 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 %337
  %340 = load float, float* %338, align 4
  %341 = load float, float* %339, align 4
  %342 = fsub fast float %340, %334
  %343 = fsub fast float %341, %333
  %344 = fsub fast float %327, %334
  %345 = fsub fast float %328, %333
  %346 = call float @dx.op.dot2.f32(i32 54, float %344, float %345, float %342, float %343)  ; Dot2(ax,ay,bx,by)
  %347 = call float @dx.op.dot2.f32(i32 54, float %342, float %343, float %342, float %343)  ; Dot2(ax,ay,bx,by)
  %348 = fdiv fast float %346, %347
  %349 = call float @dx.op.unary.f32(i32 7, float %348)  ; Saturate(value)
  %350 = fmul fast float %349, %342
  %351 = fmul fast float %349, %343
  %352 = fsub fast float %344, %350
  %353 = fsub fast float %345, %351
  %354 = call float @dx.op.dot2.f32(i32 54, float %352, float %353, float %352, float %353)  ; Dot2(ax,ay,bx,by)
  %355 = call float @dx.op.binary.f32(i32 36, float %335, float %354)  ; FMin(a,b)
  %356 = add nuw nsw i32 %336, 1
  %357 = icmp eq i32 %356, 4
  br i1 %357, label %363, label %358

; <label>:358                                     ; preds = %332
  %359 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 %356
  %360 = load float, float* %359, align 4
  %361 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 %356
  %362 = load float, float* %361, align 4
  br label %332

; <label>:363                                     ; preds = %332
  %364 = fsub fast float %125, %327
  %365 = fsub fast float %126, %328
  %366 = call float @dx.op.dot2.f32(i32 54, float %364, float %365, float %364, float %365)  ; Dot2(ax,ay,bx,by)
  %367 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %366)  ; FMax(a,b)
  %368 = fsub fast float %154, %327
  %369 = fsub fast float %155, %328
  %370 = call float @dx.op.dot2.f32(i32 54, float %368, float %369, float %368, float %369)  ; Dot2(ax,ay,bx,by)
  %371 = call float @dx.op.binary.f32(i32 35, float %367, float %370)  ; FMax(a,b)
  %372 = fsub fast float %183, %327
  %373 = fsub fast float %184, %328
  %374 = call float @dx.op.dot2.f32(i32 54, float %372, float %373, float %372, float %373)  ; Dot2(ax,ay,bx,by)
  %375 = call float @dx.op.binary.f32(i32 35, float %371, float %374)  ; FMax(a,b)
  %376 = fsub fast float %204, %327
  %377 = fsub fast float %205, %328
  %378 = call float @dx.op.dot2.f32(i32 54, float %376, float %377, float %376, float %377)  ; Dot2(ax,ay,bx,by)
  %379 = call float @dx.op.binary.f32(i32 35, float %375, float %378)  ; FMax(a,b)
  %380 = fsub fast float %232, %327
  %381 = fsub fast float %233, %328
  %382 = call float @dx.op.dot2.f32(i32 54, float %380, float %381, float %380, float %381)  ; Dot2(ax,ay,bx,by)
  %383 = call float @dx.op.binary.f32(i32 35, float %379, float %382)  ; FMax(a,b)
  %384 = fsub fast float %260, %327
  %385 = fsub fast float %261, %328
  %386 = call float @dx.op.dot2.f32(i32 54, float %384, float %385, float %384, float %385)  ; Dot2(ax,ay,bx,by)
  %387 = call float @dx.op.binary.f32(i32 35, float %383, float %386)  ; FMax(a,b)
  %388 = fsub fast float %288, %327
  %389 = fsub fast float %289, %328
  %390 = call float @dx.op.dot2.f32(i32 54, float %388, float %389, float %388, float %389)  ; Dot2(ax,ay,bx,by)
  %391 = call float @dx.op.binary.f32(i32 35, float %387, float %390)  ; FMax(a,b)
  %392 = fsub fast float %309, %327
  %393 = fsub fast float %310, %328
  %394 = call float @dx.op.dot2.f32(i32 54, float %392, float %393, float %392, float %393)  ; Dot2(ax,ay,bx,by)
  %395 = call float @dx.op.binary.f32(i32 35, float %391, float %394)  ; FMax(a,b)
  %396 = fcmp fast ole float %355, %330
  %397 = fcmp fast oge float %395, %330
  %398 = and i1 %396, %397
  %399 = fcmp fast ole float %366, %330
  %400 = zext i1 %399 to i32
  %401 = fcmp fast ole float %370, %330
  %402 = zext i1 %401 to i32
  %403 = add nuw nsw i32 %402, %400
  %404 = fcmp fast ole float %374, %330
  %405 = zext i1 %404 to i32
  %406 = add nuw nsw i32 %403, %405
  %407 = fcmp fast ole float %378, %330
  %408 = zext i1 %407 to i32
  %409 = add nuw nsw i32 %406, %408
  %410 = fcmp fast ole float %382, %330
  %411 = zext i1 %410 to i32
  %412 = add nuw nsw i32 %409, %411
  %413 = fcmp fast ole float %386, %330
  %414 = zext i1 %413 to i32
  %415 = add nuw nsw i32 %412, %414
  %416 = fcmp fast ole float %390, %330
  %417 = zext i1 %416 to i32
  %418 = add nuw nsw i32 %415, %417
  %419 = fcmp fast ole float %394, %330
  %420 = zext i1 %419 to i32
  %421 = add i32 %418, %420
  %422 = icmp eq i32 %421, 0
  br i1 %422, label %423, label %486, !dx.controlflow.hints !20

; <label>:423                                     ; preds = %363
  %424 = fsub fast float %232, %125
  %425 = fsub fast float %233, %126
  %426 = fmul fast float %424, %424
  %427 = fmul fast float %425, %425
  %428 = fadd fast float %427, %426
  %429 = call float @dx.op.unary.f32(i32 24, float %428)  ; Sqrt(value)
  %430 = fdiv fast float 1.000000e+00, %429
  %431 = fmul fast float %430, %424
  %432 = fmul fast float %430, %425
  %433 = call float @dx.op.dot2.f32(i32 54, float %364, float %365, float %431, float %432)  ; Dot2(ax,ay,bx,by)
  %434 = fsub fast float %366, %330
  %435 = fmul fast float %433, %433
  %436 = fsub fast float %435, %434
  %437 = fsub fast float -0.000000e+00, %433
  %438 = call float @dx.op.unary.f32(i32 6, float %436)  ; FAbs(value)
  %439 = call float @dx.op.unary.f32(i32 24, float %438)  ; Sqrt(value)
  %440 = fsub fast float %437, %439
  %441 = fcmp fast oge float %436, 0.000000e+00
  %442 = fcmp fast ogt float %440, 0.000000e+00
  %443 = and i1 %441, %442
  %444 = fcmp fast ole float %440, %429
  %445 = and i1 %444, %443
  %446 = zext i1 %445 to i32
  br label %447

; <label>:447                                     ; preds = %447, %423
  %448 = phi i32 [ %446, %423 ], [ %482, %447 ]
  %449 = phi i32 [ 1, %423 ], [ %483, %447 ]
  %450 = add nuw nsw i32 %449, 4
  %451 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 %450
  %452 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 %450
  %453 = load float, float* %451, align 4
  %454 = load float, float* %452, align 4
  %455 = getelementptr [8 x float], [8 x float]* %9, i32 0, i32 %449
  %456 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 %449
  %457 = load float, float* %455, align 4
  %458 = load float, float* %456, align 4
  %459 = fsub fast float %453, %457
  %460 = fsub fast float %454, %458
  %461 = call float @dx.op.dot2.f32(i32 54, float %459, float %460, float %459, float %460)  ; Dot2(ax,ay,bx,by)
  %462 = call float @dx.op.unary.f32(i32 25, float %461)  ; Rsqrt(value)
  %463 = fmul fast float %462, %459
  %464 = fmul fast float %462, %460
  %465 = fsub fast float %457, %327
  %466 = fsub fast float %458, %328
  %467 = call float @dx.op.dot2.f32(i32 54, float %465, float %466, float %463, float %464)  ; Dot2(ax,ay,bx,by)
  %468 = call float @dx.op.dot2.f32(i32 54, float %465, float %466, float %465, float %466)  ; Dot2(ax,ay,bx,by)
  %469 = fsub fast float %468, %330
  %470 = fmul fast float %467, %467
  %471 = fsub fast float %470, %469
  %472 = fsub fast float -0.000000e+00, %467
  %473 = call float @dx.op.unary.f32(i32 6, float %471)  ; FAbs(value)
  %474 = call float @dx.op.unary.f32(i32 24, float %473)  ; Sqrt(value)
  %475 = fsub fast float %472, %474
  %476 = fcmp fast oge float %471, 0.000000e+00
  %477 = fcmp fast ogt float %475, 0.000000e+00
  %478 = and i1 %476, %477
  %479 = fcmp fast ole float %475, %429
  %480 = and i1 %479, %478
  %481 = zext i1 %480 to i32
  %482 = add i32 %481, %448
  %483 = add nuw nsw i32 %449, 1
  %484 = icmp eq i32 %483, 4
  br i1 %484, label %485, label %447

; <label>:485                                     ; preds = %447
  br label %486

; <label>:486                                     ; preds = %485, %363
  %487 = phi i32 [ %421, %363 ], [ %482, %485 ]
  %488 = icmp ne i32 %487, 0
  %489 = icmp ne i32 %487, 8
  %490 = and i1 %488, %489
  %491 = or i1 %398, %490
  %492 = zext i1 %491 to i32
  %493 = add i32 %492, %318
  %494 = add nuw nsw i32 %319, 1
  %495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 175)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.i32 %495, 0
  %497 = icmp ult i32 %494, %496
  br i1 %497, label %317, label %498

; <label>:498                                     ; preds = %486
  br label %499

; <label>:499                                     ; preds = %498, %23
  %500 = phi i32 [ 0, %23 ], [ %493, %498 ]
  br label %501

; <label>:501                                     ; preds = %938, %499
  %502 = phi i32 [ %941, %938 ], [ %500, %499 ]
  %503 = phi i32 [ %942, %938 ], [ 0, %499 ]
  %504 = add nuw nsw i32 %503, 191
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %504)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 0
  %507 = extractvalue %dx.types.CBufRet.f32 %505, 1
  %508 = extractvalue %dx.types.CBufRet.f32 %505, 2
  %509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %510 = extractvalue %dx.types.CBufRet.f32 %509, 0
  %511 = extractvalue %dx.types.CBufRet.f32 %509, 1
  %512 = extractvalue %dx.types.CBufRet.f32 %509, 2
  %513 = fsub fast float %506, %510
  %514 = fsub fast float %507, %511
  %515 = fsub fast float %508, %512
  %516 = add nuw nsw i32 %503, 195
  %517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 %516)  ; CBufferLoadLegacy(handle,regIndex)
  %518 = extractvalue %dx.types.CBufRet.f32 %517, 0
  %519 = extractvalue %dx.types.CBufRet.f32 %517, 1
  %520 = extractvalue %dx.types.CBufRet.f32 %517, 2
  %521 = fsub fast float %180, %122
  %522 = fmul fast float %112, %521
  %523 = fsub fast float %181, %123
  %524 = fmul fast float %112, %523
  %525 = fsub fast float %182, %124
  %526 = fmul fast float %522, 5.000000e-01
  %527 = fmul fast float %524, 5.000000e-01
  %528 = fmul fast float %525, 5.000000e-01
  %529 = fadd fast float %526, %125
  %530 = fsub fast float -0.000000e+00, %529
  %531 = fadd fast float %527, %126
  %532 = fsub fast float -0.000000e+00, %531
  %533 = fadd fast float %528, %124
  %534 = fmul fast float %533, %112
  %535 = fsub fast float %122, %151
  %536 = fmul fast float %112, %535
  %537 = fsub fast float %123, %152
  %538 = fmul fast float %112, %537
  %539 = fsub fast float %124, %153
  %540 = fmul fast float %539, %112
  %541 = call float @dx.op.dot3.f32(i32 55, float %536, float %538, float %540, float %536, float %538, float %540)  ; Dot3(ax,ay,az,bx,by,bz)
  %542 = call float @dx.op.unary.f32(i32 25, float %541)  ; Rsqrt(value)
  %543 = fmul fast float %542, %536
  %544 = fmul fast float %542, %538
  %545 = fmul fast float %542, %540
  %546 = fsub fast float %180, %151
  %547 = fmul fast float %112, %546
  %548 = fsub fast float %181, %152
  %549 = fmul fast float %112, %548
  %550 = fsub fast float %182, %153
  %551 = fmul fast float %550, %112
  %552 = call float @dx.op.dot3.f32(i32 55, float %547, float %549, float %551, float %547, float %549, float %551)  ; Dot3(ax,ay,az,bx,by,bz)
  %553 = call float @dx.op.unary.f32(i32 25, float %552)  ; Rsqrt(value)
  %554 = fmul fast float %553, %547
  %555 = fmul fast float %553, %549
  %556 = fmul fast float %553, %551
  %557 = fsub fast float %285, %229
  %558 = fmul fast float %58, %557
  %559 = fsub fast float %286, %230
  %560 = fmul fast float %58, %559
  %561 = fsub fast float %287, %231
  %562 = fmul fast float %558, 5.000000e-01
  %563 = fmul fast float %560, 5.000000e-01
  %564 = fmul fast float %561, 5.000000e-01
  %565 = fadd fast float %562, %232
  %566 = fadd fast float %563, %233
  %567 = fadd fast float %564, %231
  %568 = fmul fast float %567, %58
  %569 = fsub fast float %229, %257
  %570 = fmul fast float %58, %569
  %571 = fsub fast float %230, %258
  %572 = fmul fast float %58, %571
  %573 = fsub fast float %231, %259
  %574 = fmul fast float %573, %58
  %575 = call float @dx.op.dot3.f32(i32 55, float %570, float %572, float %574, float %570, float %572, float %574)  ; Dot3(ax,ay,az,bx,by,bz)
  %576 = call float @dx.op.unary.f32(i32 25, float %575)  ; Rsqrt(value)
  %577 = fmul fast float %576, %570
  %578 = fmul fast float %576, %572
  %579 = fmul fast float %576, %574
  %580 = fsub fast float %285, %257
  %581 = fmul fast float %58, %580
  %582 = fsub fast float %286, %258
  %583 = fmul fast float %58, %582
  %584 = fsub fast float %287, %259
  %585 = fmul fast float %584, %58
  %586 = call float @dx.op.dot3.f32(i32 55, float %581, float %583, float %585, float %581, float %583, float %585)  ; Dot3(ax,ay,az,bx,by,bz)
  %587 = call float @dx.op.unary.f32(i32 25, float %586)  ; Rsqrt(value)
  %588 = fmul fast float %587, %581
  %589 = fmul fast float %587, %583
  %590 = fmul fast float %587, %585
  %591 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %592 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %593 = fsub fast float %591, %592
  %594 = fadd fast float %592, %591
  %595 = call float @dx.op.dot3.f32(i32 55, float %529, float %531, float %534, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %596 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %597 = call float @dx.op.unary.f32(i32 6, float %596)  ; FAbs(value)
  %598 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %599 = call float @dx.op.unary.f32(i32 6, float %598)  ; FAbs(value)
  %600 = fadd fast float %599, %597
  %601 = fsub fast float %595, %600
  %602 = fadd fast float %600, %595
  %603 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %568, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %604 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %605 = call float @dx.op.unary.f32(i32 6, float %604)  ; FAbs(value)
  %606 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %607 = call float @dx.op.unary.f32(i32 6, float %606)  ; FAbs(value)
  %608 = fadd fast float %607, %605
  %609 = fsub fast float %603, %608
  %610 = fadd fast float %608, %603
  %611 = fcmp fast olt float %609, %601
  %612 = select i1 %611, float %609, float %601
  %613 = fcmp fast ogt float %610, %602
  %614 = select i1 %613, float %610, float %602
  %615 = fcmp fast olt float %614, %593
  %616 = fcmp fast olt float %594, %612
  %617 = or i1 %615, %616
  br i1 %617, label %938, label %618, !dx.controlflow.hints !21

; <label>:618                                     ; preds = %501
  %619 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %620 = call float @dx.op.unary.f32(i32 6, float %519)  ; FAbs(value)
  %621 = fsub fast float %619, %620
  %622 = fadd fast float %620, %619
  %623 = call float @dx.op.dot3.f32(i32 55, float %529, float %531, float %534, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %624 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %625 = call float @dx.op.unary.f32(i32 6, float %624)  ; FAbs(value)
  %626 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 6, float %626)  ; FAbs(value)
  %628 = fadd fast float %627, %625
  %629 = fsub fast float %623, %628
  %630 = fadd fast float %628, %623
  %631 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %568, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %632 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %633 = call float @dx.op.unary.f32(i32 6, float %632)  ; FAbs(value)
  %634 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %635 = call float @dx.op.unary.f32(i32 6, float %634)  ; FAbs(value)
  %636 = fadd fast float %635, %633
  %637 = fsub fast float %631, %636
  %638 = fadd fast float %636, %631
  %639 = fcmp fast olt float %637, %629
  %640 = select i1 %639, float %637, float %629
  %641 = fcmp fast ogt float %638, %630
  %642 = select i1 %641, float %638, float %630
  %643 = fcmp fast olt float %642, %621
  %644 = fcmp fast olt float %622, %640
  %645 = or i1 %643, %644
  br i1 %645, label %938, label %646, !dx.controlflow.hints !21

; <label>:646                                     ; preds = %618
  %647 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %648 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %649 = fsub fast float %647, %648
  %650 = fadd fast float %648, %647
  %651 = call float @dx.op.dot3.f32(i32 55, float %529, float %531, float %534, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %652 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %653 = call float @dx.op.unary.f32(i32 6, float %652)  ; FAbs(value)
  %654 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %655 = call float @dx.op.unary.f32(i32 6, float %654)  ; FAbs(value)
  %656 = fadd fast float %655, %653
  %657 = fsub fast float %651, %656
  %658 = fadd fast float %656, %651
  %659 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %568, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %660 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %661 = call float @dx.op.unary.f32(i32 6, float %660)  ; FAbs(value)
  %662 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %663 = call float @dx.op.unary.f32(i32 6, float %662)  ; FAbs(value)
  %664 = fadd fast float %663, %661
  %665 = fsub fast float %659, %664
  %666 = fadd fast float %664, %659
  %667 = fcmp fast olt float %665, %657
  %668 = select i1 %667, float %665, float %657
  %669 = fcmp fast ogt float %666, %658
  %670 = select i1 %669, float %666, float %658
  %671 = fcmp fast olt float %670, %649
  %672 = fcmp fast olt float %650, %668
  %673 = or i1 %671, %672
  br i1 %673, label %938, label %674, !dx.controlflow.hints !21

; <label>:674                                     ; preds = %646
  %675 = fmul fast float %556, %544
  %676 = fmul fast float %555, %545
  %677 = fsub fast float %675, %676
  %678 = fmul fast float %554, %545
  %679 = fmul fast float %556, %543
  %680 = fsub fast float %678, %679
  %681 = fmul fast float %555, %543
  %682 = fmul fast float %554, %544
  %683 = fsub fast float %681, %682
  %684 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %685 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = fmul fast float %685, %518
  %687 = call float @dx.op.unary.f32(i32 6, float %686)  ; FAbs(value)
  %688 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = fmul fast float %688, %519
  %690 = call float @dx.op.unary.f32(i32 6, float %689)  ; FAbs(value)
  %691 = fadd fast float %690, %687
  %692 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %693 = fmul fast float %692, %520
  %694 = call float @dx.op.unary.f32(i32 6, float %693)  ; FAbs(value)
  %695 = fadd fast float %691, %694
  %696 = fsub fast float %684, %695
  %697 = fadd fast float %695, %684
  %698 = call float @dx.op.dot3.f32(i32 55, float %529, float %531, float %534, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %699 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %700 = call float @dx.op.unary.f32(i32 6, float %699)  ; FAbs(value)
  %701 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = call float @dx.op.unary.f32(i32 6, float %701)  ; FAbs(value)
  %703 = fadd fast float %702, %700
  %704 = fsub fast float %698, %703
  %705 = fadd fast float %703, %698
  %706 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %568, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %707 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %708 = call float @dx.op.unary.f32(i32 6, float %707)  ; FAbs(value)
  %709 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %677, float %680, float %683)  ; Dot3(ax,ay,az,bx,by,bz)
  %710 = call float @dx.op.unary.f32(i32 6, float %709)  ; FAbs(value)
  %711 = fadd fast float %710, %708
  %712 = fsub fast float %706, %711
  %713 = fadd fast float %711, %706
  %714 = fcmp fast olt float %712, %704
  %715 = select i1 %714, float %712, float %704
  %716 = fcmp fast ogt float %713, %705
  %717 = select i1 %716, float %713, float %705
  %718 = fcmp fast olt float %717, %696
  %719 = fcmp fast olt float %697, %715
  %720 = or i1 %718, %719
  br i1 %720, label %938, label %721, !dx.controlflow.hints !22

; <label>:721                                     ; preds = %674
  %722 = fsub fast float %543, %529
  %723 = fadd fast float %722, %554
  %724 = fadd fast float %723, %565
  %725 = fsub fast float %724, %577
  %726 = fsub fast float %725, %588
  %727 = fsub fast float %544, %531
  %728 = fadd fast float %727, %555
  %729 = fadd fast float %728, %566
  %730 = fsub fast float %729, %578
  %731 = fsub fast float %730, %589
  %732 = fsub fast float %568, %534
  %733 = fadd fast float %732, %545
  %734 = fadd fast float %733, %556
  %735 = fsub fast float %734, %579
  %736 = fsub fast float %735, %590
  %737 = fmul fast float %736, %544
  %738 = fmul fast float %731, %545
  %739 = fsub fast float %737, %738
  %740 = fmul fast float %726, %545
  %741 = fmul fast float %736, %543
  %742 = fsub fast float %740, %741
  %743 = fmul fast float %731, %543
  %744 = fmul fast float %726, %544
  %745 = fsub fast float %743, %744
  %746 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %747 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %748 = fmul fast float %747, %518
  %749 = call float @dx.op.unary.f32(i32 6, float %748)  ; FAbs(value)
  %750 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %751 = fmul fast float %750, %519
  %752 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %753 = fadd fast float %752, %749
  %754 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %755 = fmul fast float %754, %520
  %756 = call float @dx.op.unary.f32(i32 6, float %755)  ; FAbs(value)
  %757 = fadd fast float %753, %756
  %758 = fsub fast float %746, %757
  %759 = fadd fast float %757, %746
  %760 = call float @dx.op.dot3.f32(i32 55, float %529, float %531, float %534, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %761 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %762 = call float @dx.op.unary.f32(i32 6, float %761)  ; FAbs(value)
  %763 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = call float @dx.op.unary.f32(i32 6, float %763)  ; FAbs(value)
  %765 = fadd fast float %764, %762
  %766 = fsub fast float %760, %765
  %767 = fadd fast float %765, %760
  %768 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %568, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %769 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = call float @dx.op.unary.f32(i32 6, float %769)  ; FAbs(value)
  %771 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %739, float %742, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %772 = call float @dx.op.unary.f32(i32 6, float %771)  ; FAbs(value)
  %773 = fadd fast float %772, %770
  %774 = fsub fast float %768, %773
  %775 = fadd fast float %773, %768
  %776 = fcmp fast olt float %774, %766
  %777 = select i1 %776, float %774, float %766
  %778 = fcmp fast ogt float %775, %767
  %779 = select i1 %778, float %775, float %767
  %780 = fcmp fast olt float %779, %758
  %781 = fcmp fast olt float %759, %777
  %782 = or i1 %780, %781
  br i1 %782, label %938, label %783, !dx.controlflow.hints !23

; <label>:783                                     ; preds = %721
  %784 = fmul fast float %736, %555
  %785 = fmul fast float %731, %556
  %786 = fsub fast float %784, %785
  %787 = fmul fast float %726, %556
  %788 = fmul fast float %736, %554
  %789 = fsub fast float %787, %788
  %790 = fmul fast float %731, %554
  %791 = fmul fast float %726, %555
  %792 = fsub fast float %790, %791
  %793 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %794 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = fmul fast float %794, %518
  %796 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %797 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = fmul fast float %797, %519
  %799 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %800 = fadd fast float %799, %796
  %801 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = fmul fast float %801, %520
  %803 = call float @dx.op.unary.f32(i32 6, float %802)  ; FAbs(value)
  %804 = fadd fast float %800, %803
  %805 = fsub fast float %793, %804
  %806 = fadd fast float %804, %793
  %807 = call float @dx.op.dot3.f32(i32 55, float %529, float %531, float %534, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %808 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %809 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %810 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %811 = call float @dx.op.unary.f32(i32 6, float %810)  ; FAbs(value)
  %812 = fadd fast float %811, %809
  %813 = fsub fast float %807, %812
  %814 = fadd fast float %812, %807
  %815 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %568, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %816 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %817 = call float @dx.op.unary.f32(i32 6, float %816)  ; FAbs(value)
  %818 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %786, float %789, float %792)  ; Dot3(ax,ay,az,bx,by,bz)
  %819 = call float @dx.op.unary.f32(i32 6, float %818)  ; FAbs(value)
  %820 = fadd fast float %819, %817
  %821 = fsub fast float %815, %820
  %822 = fadd fast float %820, %815
  %823 = fcmp fast olt float %821, %813
  %824 = select i1 %823, float %821, float %813
  %825 = fcmp fast ogt float %822, %814
  %826 = select i1 %825, float %822, float %814
  %827 = fcmp fast olt float %826, %805
  %828 = fcmp fast olt float %806, %824
  %829 = or i1 %827, %828
  br i1 %829, label %938, label %830, !dx.controlflow.hints !24

; <label>:830                                     ; preds = %783
  %831 = fsub fast float %530, %543
  %832 = fsub fast float %831, %554
  %833 = fadd fast float %832, %565
  %834 = fadd fast float %833, %577
  %835 = fadd fast float %834, %588
  %836 = fsub fast float %532, %544
  %837 = fsub fast float %836, %555
  %838 = fadd fast float %837, %566
  %839 = fadd fast float %838, %578
  %840 = fadd fast float %839, %589
  %841 = fsub fast float %732, %545
  %842 = fsub fast float %841, %556
  %843 = fadd fast float %842, %579
  %844 = fadd fast float %843, %590
  %845 = fmul fast float %844, %544
  %846 = fmul fast float %840, %545
  %847 = fsub fast float %845, %846
  %848 = fmul fast float %835, %545
  %849 = fmul fast float %844, %543
  %850 = fsub fast float %848, %849
  %851 = fmul fast float %840, %543
  %852 = fmul fast float %835, %544
  %853 = fsub fast float %851, %852
  %854 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %856 = fmul fast float %855, %518
  %857 = call float @dx.op.unary.f32(i32 6, float %856)  ; FAbs(value)
  %858 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %859 = fmul fast float %858, %519
  %860 = call float @dx.op.unary.f32(i32 6, float %859)  ; FAbs(value)
  %861 = fadd fast float %860, %857
  %862 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = fmul fast float %862, %520
  %864 = call float @dx.op.unary.f32(i32 6, float %863)  ; FAbs(value)
  %865 = fadd fast float %861, %864
  %866 = fsub fast float %854, %865
  %867 = fadd fast float %865, %854
  %868 = call float @dx.op.dot3.f32(i32 55, float %529, float %531, float %534, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %869 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = call float @dx.op.unary.f32(i32 6, float %869)  ; FAbs(value)
  %871 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %872 = call float @dx.op.unary.f32(i32 6, float %871)  ; FAbs(value)
  %873 = fadd fast float %872, %870
  %874 = fsub fast float %868, %873
  %875 = fadd fast float %873, %868
  %876 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %568, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %877 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %878 = call float @dx.op.unary.f32(i32 6, float %877)  ; FAbs(value)
  %879 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %847, float %850, float %853)  ; Dot3(ax,ay,az,bx,by,bz)
  %880 = call float @dx.op.unary.f32(i32 6, float %879)  ; FAbs(value)
  %881 = fadd fast float %880, %878
  %882 = fsub fast float %876, %881
  %883 = fadd fast float %881, %876
  %884 = fcmp fast olt float %882, %874
  %885 = select i1 %884, float %882, float %874
  %886 = fcmp fast ogt float %883, %875
  %887 = select i1 %886, float %883, float %875
  %888 = fcmp fast olt float %887, %866
  %889 = fcmp fast olt float %867, %885
  %890 = or i1 %888, %889
  br i1 %890, label %938, label %891, !dx.controlflow.hints !25

; <label>:891                                     ; preds = %830
  %892 = fmul fast float %844, %555
  %893 = fmul fast float %840, %556
  %894 = fsub fast float %892, %893
  %895 = fmul fast float %835, %556
  %896 = fmul fast float %844, %554
  %897 = fsub fast float %895, %896
  %898 = fmul fast float %840, %554
  %899 = fmul fast float %835, %555
  %900 = fsub fast float %898, %899
  %901 = call float @dx.op.dot3.f32(i32 55, float %513, float %514, float %515, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %902 = call float @dx.op.dot3.f32(i32 55, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = fmul fast float %902, %518
  %904 = call float @dx.op.unary.f32(i32 6, float %903)  ; FAbs(value)
  %905 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = fmul fast float %905, %519
  %907 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %908 = fadd fast float %907, %904
  %909 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %910 = fmul fast float %909, %520
  %911 = call float @dx.op.unary.f32(i32 6, float %910)  ; FAbs(value)
  %912 = fadd fast float %908, %911
  %913 = fsub fast float %901, %912
  %914 = fadd fast float %912, %901
  %915 = call float @dx.op.dot3.f32(i32 55, float %529, float %531, float %534, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %916 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = call float @dx.op.unary.f32(i32 6, float %916)  ; FAbs(value)
  %918 = call float @dx.op.dot3.f32(i32 55, float %554, float %555, float %556, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = call float @dx.op.unary.f32(i32 6, float %918)  ; FAbs(value)
  %920 = fadd fast float %919, %917
  %921 = fsub fast float %915, %920
  %922 = fadd fast float %920, %915
  %923 = call float @dx.op.dot3.f32(i32 55, float %565, float %566, float %568, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %924 = call float @dx.op.dot3.f32(i32 55, float %577, float %578, float %579, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %925 = call float @dx.op.unary.f32(i32 6, float %924)  ; FAbs(value)
  %926 = call float @dx.op.dot3.f32(i32 55, float %588, float %589, float %590, float %894, float %897, float %900)  ; Dot3(ax,ay,az,bx,by,bz)
  %927 = call float @dx.op.unary.f32(i32 6, float %926)  ; FAbs(value)
  %928 = fadd fast float %927, %925
  %929 = fsub fast float %923, %928
  %930 = fadd fast float %928, %923
  %931 = fcmp fast olt float %929, %921
  %932 = select i1 %931, float %929, float %921
  %933 = fcmp fast ogt float %930, %922
  %934 = select i1 %933, float %930, float %922
  %935 = fcmp uge float %934, %913
  %936 = fcmp uge float %914, %932
  %937 = and i1 %936, %935
  br label %938

; <label>:938                                     ; preds = %891, %830, %783, %721, %674, %646, %618, %501
  %939 = phi i1 [ false, %674 ], [ false, %721 ], [ false, %783 ], [ false, %830 ], [ %937, %891 ], [ false, %646 ], [ false, %618 ], [ false, %501 ]
  %940 = zext i1 %939 to i32
  %941 = add i32 %940, %502
  %942 = add nuw nsw i32 %503, 1
  %943 = icmp eq i32 %942, 4
  br i1 %943, label %944, label %501

; <label>:944                                     ; preds = %938
  %945 = icmp ne i32 %941, 0
  %946 = select i1 %945, i32 -2147483648, i32 0
  br i1 %945, label %947, label %949, !dx.controlflow.hints !26

; <label>:947                                     ; preds = %944
  %948 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 2, i32 %39, i32 undef, i32 undef, i32 %44)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %949

; <label>:949                                     ; preds = %947, %944
  %950 = or i32 %941, %47
  %951 = icmp eq i32 %950, 0
  br i1 %951, label %957, label %952, !dx.controlflow.hints !27

; <label>:952                                     ; preds = %949
  %953 = call i32 @dx.op.bufferUpdateCounter(i32 70, %dx.types.Handle %1, i8 1)  ; BufferUpdateCounter(uav,inc)
  %954 = shl i32 %8, 16
  %955 = or i32 %954, %7
  %956 = or i32 %955, %946
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %953, i32 0, i32 %956, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %957

; <label>:957                                     ; preds = %952, %949, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.bufferUpdateCounter(i32, %dx.types.Handle, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!16}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !13, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!9 = !{!10, !11}
!10 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!11 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 true, i1 false, !12}
!12 = !{i32 1, i32 4}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %CsHudOutlineConstants* undef, !"", i32 0, i32 0, i32 1, i32 336, null}
!16 = !{void ()* @cs_hudoutline_workgroups, !"cs_hudoutline_workgroups", null, !4, !17}
!17 = !{i32 0, i64 272, i32 4, !18}
!18 = !{i32 8, i32 8, i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

