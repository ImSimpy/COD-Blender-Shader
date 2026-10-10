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
; shader hash: 2211f254395d8c2e45a10618e1966479
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
;                                   texture  struct         r/o      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;                                       UAV     f32          2d      U4             u4     1
;                                       UAV     f32          2d      U5             u5     1
;                                       UAV     f32          2d      U6             u6     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.StructuredBuffer<float>" = type { float }
%"class.RWTexture2D<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim" = addrspace(3) global [1024 x float] undef, align 4
@"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim" = addrspace(3) global [256 x float] undef, align 4
@"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim" = addrspace(3) global [64 x float] undef, align 4
@"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim" = addrspace(3) global [16 x float] undef, align 4
@"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim" = addrspace(3) global [4 x float] undef, align 4

define void @cs_resolve_umbra_occlusion() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 6, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 5, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %12 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.f32 %12, 2
  %14 = shl i32 %10, 1
  %15 = shl i32 %11, 1
  %16 = sub i32 64, %15
  %17 = shl i32 %16, 6
  %18 = add i32 %14, -64
  %19 = add i32 %18, %17
  %20 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %19, i32 0)  ; BufferLoad(srv,index,wot)
  %21 = extractvalue %dx.types.ResRet.f32 %20, 0
  %22 = fmul fast float %21, 9.843750e-01
  %23 = fsub fast float 9.843750e-01, %22
  %24 = call float @dx.op.binary.f32(i32 35, float %23, float 0x3E45798EE0000000)  ; FMax(a,b)
  %25 = fdiv fast float %13, %24
  %26 = fcmp fast ogt float %25, 0.000000e+00
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 0
  %29 = select i1 %26, float %28, float 1.000000e+00
  %30 = fmul fast float %29, %25
  %31 = fadd fast float %30, -1.000000e+00
  %32 = call float @dx.op.binary.f32(i32 36, float %31, float 6.550000e+04)  ; FMin(a,b)
  %33 = call float @dx.op.binary.f32(i32 35, float %32, float -1.000000e+00)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %14, i32 %15, i32 undef, float %32, float %32, float %32, float %32, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %34 = or i32 %14, 1
  %35 = add i32 %34, -64
  %36 = add i32 %35, %17
  %37 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %36, i32 0)  ; BufferLoad(srv,index,wot)
  %38 = extractvalue %dx.types.ResRet.f32 %37, 0
  %39 = fmul fast float %38, 9.843750e-01
  %40 = fsub fast float 9.843750e-01, %39
  %41 = call float @dx.op.binary.f32(i32 35, float %40, float 0x3E45798EE0000000)  ; FMax(a,b)
  %42 = fdiv fast float %13, %41
  %43 = fcmp fast ogt float %42, 0.000000e+00
  %44 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.f32 %44, 0
  %46 = select i1 %43, float %45, float 1.000000e+00
  %47 = fmul fast float %46, %42
  %48 = fadd fast float %47, -1.000000e+00
  %49 = call float @dx.op.binary.f32(i32 36, float %48, float 6.550000e+04)  ; FMin(a,b)
  %50 = call float @dx.op.binary.f32(i32 35, float %49, float %33)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %34, i32 %15, i32 undef, float %49, float %49, float %49, float %49, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %51 = or i32 %15, 1
  %52 = sub i32 64, %51
  %53 = shl i32 %52, 6
  %54 = add i32 %18, %53
  %55 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %54, i32 0)  ; BufferLoad(srv,index,wot)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = fmul fast float %56, 9.843750e-01
  %58 = fsub fast float 9.843750e-01, %57
  %59 = call float @dx.op.binary.f32(i32 35, float %58, float 0x3E45798EE0000000)  ; FMax(a,b)
  %60 = fdiv fast float %13, %59
  %61 = fcmp fast ogt float %60, 0.000000e+00
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = select i1 %61, float %63, float 1.000000e+00
  %65 = fmul fast float %64, %60
  %66 = fadd fast float %65, -1.000000e+00
  %67 = call float @dx.op.binary.f32(i32 36, float %66, float 6.550000e+04)  ; FMin(a,b)
  %68 = call float @dx.op.binary.f32(i32 35, float %67, float %50)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %14, i32 %51, i32 undef, float %67, float %67, float %67, float %67, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %69 = add i32 %35, %53
  %70 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %69, i32 0)  ; BufferLoad(srv,index,wot)
  %71 = extractvalue %dx.types.ResRet.f32 %70, 0
  %72 = fmul fast float %71, 9.843750e-01
  %73 = fsub fast float 9.843750e-01, %72
  %74 = call float @dx.op.binary.f32(i32 35, float %73, float 0x3E45798EE0000000)  ; FMax(a,b)
  %75 = fdiv fast float %13, %74
  %76 = fcmp fast ogt float %75, 0.000000e+00
  %77 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %78 = extractvalue %dx.types.CBufRet.f32 %77, 0
  %79 = select i1 %76, float %78, float 1.000000e+00
  %80 = fmul fast float %79, %75
  %81 = fadd fast float %80, -1.000000e+00
  %82 = call float @dx.op.binary.f32(i32 36, float %81, float 6.550000e+04)  ; FMin(a,b)
  %83 = call float @dx.op.binary.f32(i32 35, float %82, float %68)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %34, i32 %51, i32 undef, float %82, float %82, float %82, float %82, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %84 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 31)  ; UMin(a,b)
  %85 = call i32 @dx.op.binary.i32(i32 40, i32 %10, i32 31)  ; UMin(a,b)
  %86 = mul i32 %85, 32
  %87 = add i32 %84, %86
  %88 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %87
  store float %83, float addrspace(3)* %88, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %10, i32 %11, i32 undef, float %83, float %83, float %83, float %83, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %89 = or i32 %11, %10
  %90 = icmp ult i32 %89, 16
  br i1 %90, label %91, label %120, !dx.controlflow.hints !26

; <label>:91                                      ; preds = %0
  %92 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 31)  ; UMin(a,b)
  %93 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 31)  ; UMin(a,b)
  %94 = mul i32 %93, 32
  %95 = add i32 %92, %94
  %96 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %95
  %97 = load float, float addrspace(3)* %96, align 4, !tbaa !22
  %98 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 31)  ; UMin(a,b)
  %99 = mul i32 %93, 32
  %100 = add i32 %98, %99
  %101 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %100
  %102 = load float, float addrspace(3)* %101, align 4, !tbaa !22
  %103 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 31)  ; UMin(a,b)
  %104 = mul i32 %103, 32
  %105 = add i32 %98, %104
  %106 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %105
  %107 = load float, float addrspace(3)* %106, align 4, !tbaa !22
  %108 = mul i32 %103, 32
  %109 = add i32 %92, %108
  %110 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %109
  %111 = load float, float addrspace(3)* %110, align 4, !tbaa !22
  %112 = call float @dx.op.binary.f32(i32 35, float %102, float %107)  ; FMax(a,b)
  %113 = call float @dx.op.binary.f32(i32 35, float %97, float %112)  ; FMax(a,b)
  %114 = call float @dx.op.binary.f32(i32 35, float %111, float %113)  ; FMax(a,b)
  %115 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 15)  ; UMin(a,b)
  %116 = call i32 @dx.op.binary.i32(i32 40, i32 %10, i32 15)  ; UMin(a,b)
  %117 = mul i32 %116, 16
  %118 = add i32 %115, %117
  %119 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %118
  store float %114, float addrspace(3)* %119, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %10, i32 %11, i32 undef, float %114, float %114, float %114, float %114, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %120

; <label>:120                                     ; preds = %91, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %121 = icmp ult i32 %89, 8
  br i1 %121, label %122, label %151, !dx.controlflow.hints !27

; <label>:122                                     ; preds = %120
  %123 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 15)  ; UMin(a,b)
  %124 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 15)  ; UMin(a,b)
  %125 = mul i32 %124, 16
  %126 = add i32 %123, %125
  %127 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %126
  %128 = load float, float addrspace(3)* %127, align 4, !tbaa !22
  %129 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 15)  ; UMin(a,b)
  %130 = mul i32 %124, 16
  %131 = add i32 %129, %130
  %132 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %131
  %133 = load float, float addrspace(3)* %132, align 4, !tbaa !22
  %134 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 15)  ; UMin(a,b)
  %135 = mul i32 %134, 16
  %136 = add i32 %129, %135
  %137 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %136
  %138 = load float, float addrspace(3)* %137, align 4, !tbaa !22
  %139 = mul i32 %134, 16
  %140 = add i32 %123, %139
  %141 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %140
  %142 = load float, float addrspace(3)* %141, align 4, !tbaa !22
  %143 = call float @dx.op.binary.f32(i32 35, float %133, float %138)  ; FMax(a,b)
  %144 = call float @dx.op.binary.f32(i32 35, float %128, float %143)  ; FMax(a,b)
  %145 = call float @dx.op.binary.f32(i32 35, float %142, float %144)  ; FMax(a,b)
  %146 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 7)  ; UMin(a,b)
  %147 = call i32 @dx.op.binary.i32(i32 40, i32 %10, i32 7)  ; UMin(a,b)
  %148 = mul i32 %147, 8
  %149 = add i32 %146, %148
  %150 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %149
  store float %145, float addrspace(3)* %150, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %10, i32 %11, i32 undef, float %145, float %145, float %145, float %145, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %151

; <label>:151                                     ; preds = %122, %120
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %152 = icmp ult i32 %89, 4
  br i1 %152, label %153, label %182, !dx.controlflow.hints !28

; <label>:153                                     ; preds = %151
  %154 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 7)  ; UMin(a,b)
  %155 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 7)  ; UMin(a,b)
  %156 = mul i32 %155, 8
  %157 = add i32 %154, %156
  %158 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %157
  %159 = load float, float addrspace(3)* %158, align 4, !tbaa !22
  %160 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 7)  ; UMin(a,b)
  %161 = mul i32 %155, 8
  %162 = add i32 %160, %161
  %163 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %162
  %164 = load float, float addrspace(3)* %163, align 4, !tbaa !22
  %165 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 7)  ; UMin(a,b)
  %166 = mul i32 %165, 8
  %167 = add i32 %160, %166
  %168 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %167
  %169 = load float, float addrspace(3)* %168, align 4, !tbaa !22
  %170 = mul i32 %165, 8
  %171 = add i32 %154, %170
  %172 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %171
  %173 = load float, float addrspace(3)* %172, align 4, !tbaa !22
  %174 = call float @dx.op.binary.f32(i32 35, float %164, float %169)  ; FMax(a,b)
  %175 = call float @dx.op.binary.f32(i32 35, float %159, float %174)  ; FMax(a,b)
  %176 = call float @dx.op.binary.f32(i32 35, float %173, float %175)  ; FMax(a,b)
  %177 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 3)  ; UMin(a,b)
  %178 = call i32 @dx.op.binary.i32(i32 40, i32 %10, i32 3)  ; UMin(a,b)
  %179 = mul i32 %178, 4
  %180 = add i32 %177, %179
  %181 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %180
  store float %176, float addrspace(3)* %181, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %10, i32 %11, i32 undef, float %176, float %176, float %176, float %176, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %182

; <label>:182                                     ; preds = %153, %151
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %183 = icmp ult i32 %89, 2
  br i1 %183, label %184, label %213, !dx.controlflow.hints !29

; <label>:184                                     ; preds = %182
  %185 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 3)  ; UMin(a,b)
  %186 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 3)  ; UMin(a,b)
  %187 = mul i32 %186, 4
  %188 = add i32 %185, %187
  %189 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %188
  %190 = load float, float addrspace(3)* %189, align 4, !tbaa !22
  %191 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 3)  ; UMin(a,b)
  %192 = mul i32 %186, 4
  %193 = add i32 %191, %192
  %194 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %193
  %195 = load float, float addrspace(3)* %194, align 4, !tbaa !22
  %196 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 3)  ; UMin(a,b)
  %197 = mul i32 %196, 4
  %198 = add i32 %191, %197
  %199 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %198
  %200 = load float, float addrspace(3)* %199, align 4, !tbaa !22
  %201 = mul i32 %196, 4
  %202 = add i32 %185, %201
  %203 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %202
  %204 = load float, float addrspace(3)* %203, align 4, !tbaa !22
  %205 = call float @dx.op.binary.f32(i32 35, float %195, float %200)  ; FMax(a,b)
  %206 = call float @dx.op.binary.f32(i32 35, float %190, float %205)  ; FMax(a,b)
  %207 = call float @dx.op.binary.f32(i32 35, float %204, float %206)  ; FMax(a,b)
  %208 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 1)  ; UMin(a,b)
  %209 = call i32 @dx.op.binary.i32(i32 40, i32 %10, i32 1)  ; UMin(a,b)
  %210 = mul i32 %209, 2
  %211 = add i32 %208, %210
  %212 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %211
  store float %207, float addrspace(3)* %212, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %10, i32 %11, i32 undef, float %207, float %207, float %207, float %207, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %213

; <label>:213                                     ; preds = %184, %182
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %214 = icmp eq i32 %89, 0
  br i1 %214, label %215, label %239, !dx.controlflow.hints !30

; <label>:215                                     ; preds = %213
  %216 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 1)  ; UMin(a,b)
  %217 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 1)  ; UMin(a,b)
  %218 = mul i32 %217, 2
  %219 = add i32 %216, %218
  %220 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %219
  %221 = load float, float addrspace(3)* %220, align 4, !tbaa !22
  %222 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 1)  ; UMin(a,b)
  %223 = mul i32 %217, 2
  %224 = add i32 %222, %223
  %225 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %224
  %226 = load float, float addrspace(3)* %225, align 4, !tbaa !22
  %227 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 1)  ; UMin(a,b)
  %228 = mul i32 %227, 2
  %229 = add i32 %222, %228
  %230 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %229
  %231 = load float, float addrspace(3)* %230, align 4, !tbaa !22
  %232 = mul i32 %227, 2
  %233 = add i32 %216, %232
  %234 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %233
  %235 = load float, float addrspace(3)* %234, align 4, !tbaa !22
  %236 = call float @dx.op.binary.f32(i32 35, float %226, float %231)  ; FMax(a,b)
  %237 = call float @dx.op.binary.f32(i32 35, float %221, float %236)  ; FMax(a,b)
  %238 = call float @dx.op.binary.f32(i32 35, float %235, float %237)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %10, i32 %11, i32 undef, float %238, float %238, float %238, float %238, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %239

; <label>:239                                     ; preds = %215, %213
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!19}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !17, null}
!5 = !{!6}
!6 = !{i32 0, %"class.StructuredBuffer<float>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i32 0, !7}
!7 = !{i32 1, i32 4}
!8 = !{!9, !11, !12, !13, !14, !15, !16}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 9}
!11 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!12 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!13 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!14 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!15 = !{i32 5, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 5, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!16 = !{i32 6, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 6, i32 1, i32 2, i1 false, i1 false, i1 false, !10}
!17 = !{!18}
!18 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!19 = !{void ()* @cs_resolve_umbra_occlusion, !"cs_resolve_umbra_occlusion", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 32, i32 32, i32 1}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

