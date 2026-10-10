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
; shader hash: ed2f82a676bedc6e04044ea4933466fb
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

define void @cs_resolve_umbra_occlusion_16() {
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
  %89 = add i32 %10, 16
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = shl i32 %89, 1
  %93 = add i32 %92, -64
  %94 = add i32 %93, %17
  %95 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %94, i32 0)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fmul fast float %96, 9.843750e-01
  %98 = fsub fast float 9.843750e-01, %97
  %99 = call float @dx.op.binary.f32(i32 35, float %98, float 0x3E45798EE0000000)  ; FMax(a,b)
  %100 = fdiv fast float %91, %99
  %101 = fcmp fast ogt float %100, 0.000000e+00
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = select i1 %101, float %103, float 1.000000e+00
  %105 = fmul fast float %104, %100
  %106 = fadd fast float %105, -1.000000e+00
  %107 = call float @dx.op.binary.f32(i32 36, float %106, float 6.550000e+04)  ; FMin(a,b)
  %108 = call float @dx.op.binary.f32(i32 35, float %107, float -1.000000e+00)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %92, i32 %15, i32 undef, float %107, float %107, float %107, float %107, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %109 = or i32 %92, 1
  %110 = add i32 %109, -64
  %111 = add i32 %110, %17
  %112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %111, i32 0)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = fmul fast float %113, 9.843750e-01
  %115 = fsub fast float 9.843750e-01, %114
  %116 = call float @dx.op.binary.f32(i32 35, float %115, float 0x3E45798EE0000000)  ; FMax(a,b)
  %117 = fdiv fast float %91, %116
  %118 = fcmp fast ogt float %117, 0.000000e+00
  %119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.f32 %119, 0
  %121 = select i1 %118, float %120, float 1.000000e+00
  %122 = fmul fast float %121, %117
  %123 = fadd fast float %122, -1.000000e+00
  %124 = call float @dx.op.binary.f32(i32 36, float %123, float 6.550000e+04)  ; FMin(a,b)
  %125 = call float @dx.op.binary.f32(i32 35, float %124, float %108)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %109, i32 %15, i32 undef, float %124, float %124, float %124, float %124, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %126 = add i32 %93, %53
  %127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %126, i32 0)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = fmul fast float %128, 9.843750e-01
  %130 = fsub fast float 9.843750e-01, %129
  %131 = call float @dx.op.binary.f32(i32 35, float %130, float 0x3E45798EE0000000)  ; FMax(a,b)
  %132 = fdiv fast float %91, %131
  %133 = fcmp fast ogt float %132, 0.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = select i1 %133, float %135, float 1.000000e+00
  %137 = fmul fast float %136, %132
  %138 = fadd fast float %137, -1.000000e+00
  %139 = call float @dx.op.binary.f32(i32 36, float %138, float 6.550000e+04)  ; FMin(a,b)
  %140 = call float @dx.op.binary.f32(i32 35, float %139, float %125)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %92, i32 %51, i32 undef, float %139, float %139, float %139, float %139, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %141 = add i32 %110, %53
  %142 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %141, i32 0)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = fmul fast float %143, 9.843750e-01
  %145 = fsub fast float 9.843750e-01, %144
  %146 = call float @dx.op.binary.f32(i32 35, float %145, float 0x3E45798EE0000000)  ; FMax(a,b)
  %147 = fdiv fast float %91, %146
  %148 = fcmp fast ogt float %147, 0.000000e+00
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = select i1 %148, float %150, float 1.000000e+00
  %152 = fmul fast float %151, %147
  %153 = fadd fast float %152, -1.000000e+00
  %154 = call float @dx.op.binary.f32(i32 36, float %153, float 6.550000e+04)  ; FMin(a,b)
  %155 = call float @dx.op.binary.f32(i32 35, float %154, float %140)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %109, i32 %51, i32 undef, float %154, float %154, float %154, float %154, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %156 = call i32 @dx.op.binary.i32(i32 40, i32 %89, i32 31)  ; UMin(a,b)
  %157 = mul i32 %156, 32
  %158 = add i32 %84, %157
  %159 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %158
  store float %155, float addrspace(3)* %159, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %89, i32 %11, i32 undef, float %155, float %155, float %155, float %155, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %160 = add i32 %11, 16
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 2
  %163 = shl i32 %160, 1
  %164 = sub i32 64, %163
  %165 = shl i32 %164, 6
  %166 = add i32 %18, %165
  %167 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %166, i32 0)  ; BufferLoad(srv,index,wot)
  %168 = extractvalue %dx.types.ResRet.f32 %167, 0
  %169 = fmul fast float %168, 9.843750e-01
  %170 = fsub fast float 9.843750e-01, %169
  %171 = call float @dx.op.binary.f32(i32 35, float %170, float 0x3E45798EE0000000)  ; FMax(a,b)
  %172 = fdiv fast float %162, %171
  %173 = fcmp fast ogt float %172, 0.000000e+00
  %174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.f32 %174, 0
  %176 = select i1 %173, float %175, float 1.000000e+00
  %177 = fmul fast float %176, %172
  %178 = fadd fast float %177, -1.000000e+00
  %179 = call float @dx.op.binary.f32(i32 36, float %178, float 6.550000e+04)  ; FMin(a,b)
  %180 = call float @dx.op.binary.f32(i32 35, float %179, float -1.000000e+00)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %14, i32 %163, i32 undef, float %179, float %179, float %179, float %179, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %181 = add i32 %35, %165
  %182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %181, i32 0)  ; BufferLoad(srv,index,wot)
  %183 = extractvalue %dx.types.ResRet.f32 %182, 0
  %184 = fmul fast float %183, 9.843750e-01
  %185 = fsub fast float 9.843750e-01, %184
  %186 = call float @dx.op.binary.f32(i32 35, float %185, float 0x3E45798EE0000000)  ; FMax(a,b)
  %187 = fdiv fast float %162, %186
  %188 = fcmp fast ogt float %187, 0.000000e+00
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = select i1 %188, float %190, float 1.000000e+00
  %192 = fmul fast float %191, %187
  %193 = fadd fast float %192, -1.000000e+00
  %194 = call float @dx.op.binary.f32(i32 36, float %193, float 6.550000e+04)  ; FMin(a,b)
  %195 = call float @dx.op.binary.f32(i32 35, float %194, float %180)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %34, i32 %163, i32 undef, float %194, float %194, float %194, float %194, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %196 = or i32 %163, 1
  %197 = sub i32 64, %196
  %198 = shl i32 %197, 6
  %199 = add i32 %18, %198
  %200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %199, i32 0)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.f32 %200, 0
  %202 = fmul fast float %201, 9.843750e-01
  %203 = fsub fast float 9.843750e-01, %202
  %204 = call float @dx.op.binary.f32(i32 35, float %203, float 0x3E45798EE0000000)  ; FMax(a,b)
  %205 = fdiv fast float %162, %204
  %206 = fcmp fast ogt float %205, 0.000000e+00
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = select i1 %206, float %208, float 1.000000e+00
  %210 = fmul fast float %209, %205
  %211 = fadd fast float %210, -1.000000e+00
  %212 = call float @dx.op.binary.f32(i32 36, float %211, float 6.550000e+04)  ; FMin(a,b)
  %213 = call float @dx.op.binary.f32(i32 35, float %212, float %195)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %14, i32 %196, i32 undef, float %212, float %212, float %212, float %212, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %214 = add i32 %35, %198
  %215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %214, i32 0)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.f32 %215, 0
  %217 = fmul fast float %216, 9.843750e-01
  %218 = fsub fast float 9.843750e-01, %217
  %219 = call float @dx.op.binary.f32(i32 35, float %218, float 0x3E45798EE0000000)  ; FMax(a,b)
  %220 = fdiv fast float %162, %219
  %221 = fcmp fast ogt float %220, 0.000000e+00
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = select i1 %221, float %223, float 1.000000e+00
  %225 = fmul fast float %224, %220
  %226 = fadd fast float %225, -1.000000e+00
  %227 = call float @dx.op.binary.f32(i32 36, float %226, float 6.550000e+04)  ; FMin(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float %227, float %213)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %34, i32 %196, i32 undef, float %227, float %227, float %227, float %227, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %229 = call i32 @dx.op.binary.i32(i32 40, i32 %160, i32 31)  ; UMin(a,b)
  %230 = mul i32 %85, 32
  %231 = add i32 %229, %230
  %232 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %231
  store float %228, float addrspace(3)* %232, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %10, i32 %160, i32 undef, float %228, float %228, float %228, float %228, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %234 = extractvalue %dx.types.CBufRet.f32 %233, 2
  %235 = add i32 %93, %165
  %236 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %235, i32 0)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.f32 %236, 0
  %238 = fmul fast float %237, 9.843750e-01
  %239 = fsub fast float 9.843750e-01, %238
  %240 = call float @dx.op.binary.f32(i32 35, float %239, float 0x3E45798EE0000000)  ; FMax(a,b)
  %241 = fdiv fast float %234, %240
  %242 = fcmp fast ogt float %241, 0.000000e+00
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 0
  %245 = select i1 %242, float %244, float 1.000000e+00
  %246 = fmul fast float %245, %241
  %247 = fadd fast float %246, -1.000000e+00
  %248 = call float @dx.op.binary.f32(i32 36, float %247, float 6.550000e+04)  ; FMin(a,b)
  %249 = call float @dx.op.binary.f32(i32 35, float %248, float -1.000000e+00)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %92, i32 %163, i32 undef, float %248, float %248, float %248, float %248, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %250 = add i32 %110, %165
  %251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %250, i32 0)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.f32 %251, 0
  %253 = fmul fast float %252, 9.843750e-01
  %254 = fsub fast float 9.843750e-01, %253
  %255 = call float @dx.op.binary.f32(i32 35, float %254, float 0x3E45798EE0000000)  ; FMax(a,b)
  %256 = fdiv fast float %234, %255
  %257 = fcmp fast ogt float %256, 0.000000e+00
  %258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %259 = extractvalue %dx.types.CBufRet.f32 %258, 0
  %260 = select i1 %257, float %259, float 1.000000e+00
  %261 = fmul fast float %260, %256
  %262 = fadd fast float %261, -1.000000e+00
  %263 = call float @dx.op.binary.f32(i32 36, float %262, float 6.550000e+04)  ; FMin(a,b)
  %264 = call float @dx.op.binary.f32(i32 35, float %263, float %249)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %109, i32 %163, i32 undef, float %263, float %263, float %263, float %263, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %265 = add i32 %93, %198
  %266 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %265, i32 0)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.f32 %266, 0
  %268 = fmul fast float %267, 9.843750e-01
  %269 = fsub fast float 9.843750e-01, %268
  %270 = call float @dx.op.binary.f32(i32 35, float %269, float 0x3E45798EE0000000)  ; FMax(a,b)
  %271 = fdiv fast float %234, %270
  %272 = fcmp fast ogt float %271, 0.000000e+00
  %273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %274 = extractvalue %dx.types.CBufRet.f32 %273, 0
  %275 = select i1 %272, float %274, float 1.000000e+00
  %276 = fmul fast float %275, %271
  %277 = fadd fast float %276, -1.000000e+00
  %278 = call float @dx.op.binary.f32(i32 36, float %277, float 6.550000e+04)  ; FMin(a,b)
  %279 = call float @dx.op.binary.f32(i32 35, float %278, float %264)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %92, i32 %196, i32 undef, float %278, float %278, float %278, float %278, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %280 = add i32 %110, %198
  %281 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %280, i32 0)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.f32 %281, 0
  %283 = fmul fast float %282, 9.843750e-01
  %284 = fsub fast float 9.843750e-01, %283
  %285 = call float @dx.op.binary.f32(i32 35, float %284, float 0x3E45798EE0000000)  ; FMax(a,b)
  %286 = fdiv fast float %234, %285
  %287 = fcmp fast ogt float %286, 0.000000e+00
  %288 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %289 = extractvalue %dx.types.CBufRet.f32 %288, 0
  %290 = select i1 %287, float %289, float 1.000000e+00
  %291 = fmul fast float %290, %286
  %292 = fadd fast float %291, -1.000000e+00
  %293 = call float @dx.op.binary.f32(i32 36, float %292, float 6.550000e+04)  ; FMin(a,b)
  %294 = call float @dx.op.binary.f32(i32 35, float %293, float %279)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %7, i32 %109, i32 %196, i32 undef, float %293, float %293, float %293, float %293, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %295 = mul i32 %156, 32
  %296 = add i32 %229, %295
  %297 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %296
  store float %294, float addrspace(3)* %297, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %6, i32 %89, i32 %160, i32 undef, float %294, float %294, float %294, float %294, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %298 = or i32 %11, %10
  %299 = icmp ult i32 %298, 16
  br i1 %299, label %300, label %329, !dx.controlflow.hints !26

; <label>:300                                     ; preds = %0
  %301 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 31)  ; UMin(a,b)
  %302 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 31)  ; UMin(a,b)
  %303 = mul i32 %302, 32
  %304 = add i32 %301, %303
  %305 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %304
  %306 = load float, float addrspace(3)* %305, align 4, !tbaa !22
  %307 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 31)  ; UMin(a,b)
  %308 = mul i32 %302, 32
  %309 = add i32 %307, %308
  %310 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %309
  %311 = load float, float addrspace(3)* %310, align 4, !tbaa !22
  %312 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 31)  ; UMin(a,b)
  %313 = mul i32 %312, 32
  %314 = add i32 %307, %313
  %315 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %314
  %316 = load float, float addrspace(3)* %315, align 4, !tbaa !22
  %317 = mul i32 %312, 32
  %318 = add i32 %301, %317
  %319 = getelementptr [1024 x float], [1024 x float] addrspace(3)* @"\01?umbraFloatZLinear1@@3PAY0CA@$$CAMA.1dim", i32 0, i32 %318
  %320 = load float, float addrspace(3)* %319, align 4, !tbaa !22
  %321 = call float @dx.op.binary.f32(i32 35, float %311, float %316)  ; FMax(a,b)
  %322 = call float @dx.op.binary.f32(i32 35, float %306, float %321)  ; FMax(a,b)
  %323 = call float @dx.op.binary.f32(i32 35, float %320, float %322)  ; FMax(a,b)
  %324 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 15)  ; UMin(a,b)
  %325 = call i32 @dx.op.binary.i32(i32 40, i32 %10, i32 15)  ; UMin(a,b)
  %326 = mul i32 %325, 16
  %327 = add i32 %324, %326
  %328 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %327
  store float %323, float addrspace(3)* %328, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %10, i32 %11, i32 undef, float %323, float %323, float %323, float %323, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %329

; <label>:329                                     ; preds = %300, %0
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %330 = icmp ult i32 %298, 8
  br i1 %330, label %331, label %360, !dx.controlflow.hints !27

; <label>:331                                     ; preds = %329
  %332 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 15)  ; UMin(a,b)
  %333 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 15)  ; UMin(a,b)
  %334 = mul i32 %333, 16
  %335 = add i32 %332, %334
  %336 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %335
  %337 = load float, float addrspace(3)* %336, align 4, !tbaa !22
  %338 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 15)  ; UMin(a,b)
  %339 = mul i32 %333, 16
  %340 = add i32 %338, %339
  %341 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %340
  %342 = load float, float addrspace(3)* %341, align 4, !tbaa !22
  %343 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 15)  ; UMin(a,b)
  %344 = mul i32 %343, 16
  %345 = add i32 %338, %344
  %346 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %345
  %347 = load float, float addrspace(3)* %346, align 4, !tbaa !22
  %348 = mul i32 %343, 16
  %349 = add i32 %332, %348
  %350 = getelementptr [256 x float], [256 x float] addrspace(3)* @"\01?umbraFloatZLinear2@@3PAY0BA@$$CAMA.1dim", i32 0, i32 %349
  %351 = load float, float addrspace(3)* %350, align 4, !tbaa !22
  %352 = call float @dx.op.binary.f32(i32 35, float %342, float %347)  ; FMax(a,b)
  %353 = call float @dx.op.binary.f32(i32 35, float %337, float %352)  ; FMax(a,b)
  %354 = call float @dx.op.binary.f32(i32 35, float %351, float %353)  ; FMax(a,b)
  %355 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 7)  ; UMin(a,b)
  %356 = call i32 @dx.op.binary.i32(i32 40, i32 %10, i32 7)  ; UMin(a,b)
  %357 = mul i32 %356, 8
  %358 = add i32 %355, %357
  %359 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %358
  store float %354, float addrspace(3)* %359, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %10, i32 %11, i32 undef, float %354, float %354, float %354, float %354, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %360

; <label>:360                                     ; preds = %331, %329
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %361 = icmp ult i32 %298, 4
  br i1 %361, label %362, label %391, !dx.controlflow.hints !28

; <label>:362                                     ; preds = %360
  %363 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 7)  ; UMin(a,b)
  %364 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 7)  ; UMin(a,b)
  %365 = mul i32 %364, 8
  %366 = add i32 %363, %365
  %367 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %366
  %368 = load float, float addrspace(3)* %367, align 4, !tbaa !22
  %369 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 7)  ; UMin(a,b)
  %370 = mul i32 %364, 8
  %371 = add i32 %369, %370
  %372 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %371
  %373 = load float, float addrspace(3)* %372, align 4, !tbaa !22
  %374 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 7)  ; UMin(a,b)
  %375 = mul i32 %374, 8
  %376 = add i32 %369, %375
  %377 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %376
  %378 = load float, float addrspace(3)* %377, align 4, !tbaa !22
  %379 = mul i32 %374, 8
  %380 = add i32 %363, %379
  %381 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?umbraFloatZLinear3@@3PAY07$$CAMA.1dim", i32 0, i32 %380
  %382 = load float, float addrspace(3)* %381, align 4, !tbaa !22
  %383 = call float @dx.op.binary.f32(i32 35, float %373, float %378)  ; FMax(a,b)
  %384 = call float @dx.op.binary.f32(i32 35, float %368, float %383)  ; FMax(a,b)
  %385 = call float @dx.op.binary.f32(i32 35, float %382, float %384)  ; FMax(a,b)
  %386 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 3)  ; UMin(a,b)
  %387 = call i32 @dx.op.binary.i32(i32 40, i32 %10, i32 3)  ; UMin(a,b)
  %388 = mul i32 %387, 4
  %389 = add i32 %386, %388
  %390 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %389
  store float %385, float addrspace(3)* %390, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %10, i32 %11, i32 undef, float %385, float %385, float %385, float %385, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %391

; <label>:391                                     ; preds = %362, %360
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %392 = icmp ult i32 %298, 2
  br i1 %392, label %393, label %422, !dx.controlflow.hints !29

; <label>:393                                     ; preds = %391
  %394 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 3)  ; UMin(a,b)
  %395 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 3)  ; UMin(a,b)
  %396 = mul i32 %395, 4
  %397 = add i32 %394, %396
  %398 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %397
  %399 = load float, float addrspace(3)* %398, align 4, !tbaa !22
  %400 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 3)  ; UMin(a,b)
  %401 = mul i32 %395, 4
  %402 = add i32 %400, %401
  %403 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %402
  %404 = load float, float addrspace(3)* %403, align 4, !tbaa !22
  %405 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 3)  ; UMin(a,b)
  %406 = mul i32 %405, 4
  %407 = add i32 %400, %406
  %408 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %407
  %409 = load float, float addrspace(3)* %408, align 4, !tbaa !22
  %410 = mul i32 %405, 4
  %411 = add i32 %394, %410
  %412 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?umbraFloatZLinear4@@3PAY03$$CAMA.1dim", i32 0, i32 %411
  %413 = load float, float addrspace(3)* %412, align 4, !tbaa !22
  %414 = call float @dx.op.binary.f32(i32 35, float %404, float %409)  ; FMax(a,b)
  %415 = call float @dx.op.binary.f32(i32 35, float %399, float %414)  ; FMax(a,b)
  %416 = call float @dx.op.binary.f32(i32 35, float %413, float %415)  ; FMax(a,b)
  %417 = call i32 @dx.op.binary.i32(i32 40, i32 %11, i32 1)  ; UMin(a,b)
  %418 = call i32 @dx.op.binary.i32(i32 40, i32 %10, i32 1)  ; UMin(a,b)
  %419 = mul i32 %418, 2
  %420 = add i32 %417, %419
  %421 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %420
  store float %416, float addrspace(3)* %421, align 4, !tbaa !22
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %10, i32 %11, i32 undef, float %416, float %416, float %416, float %416, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %422

; <label>:422                                     ; preds = %393, %391
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %423 = icmp eq i32 %298, 0
  br i1 %423, label %424, label %448, !dx.controlflow.hints !30

; <label>:424                                     ; preds = %422
  %425 = call i32 @dx.op.binary.i32(i32 40, i32 %15, i32 1)  ; UMin(a,b)
  %426 = call i32 @dx.op.binary.i32(i32 40, i32 %14, i32 1)  ; UMin(a,b)
  %427 = mul i32 %426, 2
  %428 = add i32 %425, %427
  %429 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %428
  %430 = load float, float addrspace(3)* %429, align 4, !tbaa !22
  %431 = call i32 @dx.op.binary.i32(i32 40, i32 %51, i32 1)  ; UMin(a,b)
  %432 = mul i32 %426, 2
  %433 = add i32 %431, %432
  %434 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %433
  %435 = load float, float addrspace(3)* %434, align 4, !tbaa !22
  %436 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 1)  ; UMin(a,b)
  %437 = mul i32 %436, 2
  %438 = add i32 %431, %437
  %439 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %438
  %440 = load float, float addrspace(3)* %439, align 4, !tbaa !22
  %441 = mul i32 %436, 2
  %442 = add i32 %425, %441
  %443 = getelementptr [4 x float], [4 x float] addrspace(3)* @"\01?umbraFloatZLinear5@@3PAY01$$CAMA.1dim", i32 0, i32 %442
  %444 = load float, float addrspace(3)* %443, align 4, !tbaa !22
  %445 = call float @dx.op.binary.f32(i32 35, float %435, float %440)  ; FMax(a,b)
  %446 = call float @dx.op.binary.f32(i32 35, float %430, float %445)  ; FMax(a,b)
  %447 = call float @dx.op.binary.f32(i32 35, float %444, float %446)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %10, i32 %11, i32 undef, float %447, float %447, float %447, float %447, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %448

; <label>:448                                     ; preds = %424, %422
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
!19 = !{void ()* @cs_resolve_umbra_occlusion_16, !"cs_resolve_umbra_occlusion_16", null, !4, !20}
!20 = !{i32 0, i64 272, i32 4, !21}
!21 = !{i32 16, i32 16, i32 1}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}

