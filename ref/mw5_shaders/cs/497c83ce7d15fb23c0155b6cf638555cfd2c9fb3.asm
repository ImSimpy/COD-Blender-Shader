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
; shader hash: fa355d2ed255bb3558b724220a12c3f4
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
;   [80 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s1     1
;                                   texture    byte         r/o      T0            t11     1
;                                   texture     f32          2d      T1             t3     1
;                                   texture     f32          2d      T2            t18     1
;                                   texture    byte         r/o      T3            t19     1
;                                   texture     f32          2d      T4            t22     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%PostOpaqueConstants = type { <4 x float>, <2 x float>, float, float, <4 x i32>, float, i32, i32, i32, i32, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim" = addrspace(3) global [8 x i32] undef, align 4

define void @cs_post_opaque_processes_prepass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %15, label %22, !dx.controlflow.hints !23

; <label>:15                                      ; preds = %0
  %16 = mul i32 %13, 2
  %17 = add i32 0, %16
  %18 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 %17
  store i32 0, i32 addrspace(3)* %18, align 4
  %19 = mul i32 %13, 2
  %20 = add i32 1, %19
  %21 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 %20
  store i32 0, i32 addrspace(3)* %21, align 4
  br label %22

; <label>:22                                      ; preds = %15, %0
  %23 = shl i32 %11, 1
  %24 = shl i32 %12, 1
  %25 = uitofp i32 %23 to float
  %26 = uitofp i32 %24 to float
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %29 = extractvalue %dx.types.CBufRet.f32 %27, 3
  %30 = fmul fast float %28, %25
  %31 = fmul fast float %29, %26
  %32 = fadd fast float %30, %28
  %33 = fadd fast float %31, %29
  %34 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %6, %dx.types.Handle %8, float %32, float %33, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %35 = extractvalue %dx.types.ResRet.f32 %34, 0
  %36 = extractvalue %dx.types.ResRet.f32 %34, 1
  %37 = extractvalue %dx.types.ResRet.f32 %34, 2
  %38 = extractvalue %dx.types.ResRet.f32 %34, 3
  %39 = fcmp fast ogt float %38, -1.000000e+00
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %42 = select i1 %39, float %41, float 1.000000e+00
  %43 = fadd fast float %38, 1.000000e+00
  %44 = fmul fast float %42, %43
  %45 = call float @dx.op.unary.f32(i32 6, float %44)  ; FAbs(value)
  %46 = fcmp fast ogt float %37, -1.000000e+00
  %47 = select i1 %46, float %41, float 1.000000e+00
  %48 = fadd fast float %37, 1.000000e+00
  %49 = fmul fast float %47, %48
  %50 = call float @dx.op.unary.f32(i32 6, float %49)  ; FAbs(value)
  %51 = fcmp fast ogt float %35, -1.000000e+00
  %52 = select i1 %51, float %41, float 1.000000e+00
  %53 = fadd fast float %35, 1.000000e+00
  %54 = fmul fast float %52, %53
  %55 = call float @dx.op.unary.f32(i32 6, float %54)  ; FAbs(value)
  %56 = fcmp fast ogt float %36, -1.000000e+00
  %57 = select i1 %56, float %41, float 1.000000e+00
  %58 = fadd fast float %36, 1.000000e+00
  %59 = fmul fast float %57, %58
  %60 = call float @dx.op.unary.f32(i32 6, float %59)  ; FAbs(value)
  %61 = call float @dx.op.binary.f32(i32 36, float %50, float %55)  ; FMin(a,b)
  %62 = call float @dx.op.binary.f32(i32 36, float %45, float %61)  ; FMin(a,b)
  %63 = call float @dx.op.binary.f32(i32 36, float %62, float %60)  ; FMin(a,b)
  %64 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %65 = call float @dx.op.binary.f32(i32 35, float %50, float %55)  ; FMax(a,b)
  %66 = call float @dx.op.binary.f32(i32 35, float %45, float %65)  ; FMax(a,b)
  %67 = call float @dx.op.binary.f32(i32 35, float %66, float %60)  ; FMax(a,b)
  %68 = call float @dx.op.binary.f32(i32 36, float %67, float %64)  ; FMin(a,b)
  %69 = fsub fast float %68, %63
  %70 = fdiv fast float 1.000000e+00, %68
  %71 = fmul fast float %69, %70
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %9, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %74 = fcmp fast oge float %71, %73
  %75 = zext i1 %74 to i32
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = and i32 %77, 114688
  %79 = icmp ne i32 %78, 0
  %80 = select i1 %79, float %32, float 0.000000e+00
  %81 = select i1 %79, float %33, float 0.000000e+00
  %82 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %8, float %80, float %81, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %83 = extractvalue %dx.types.ResRet.f32 %82, 0
  %84 = extractvalue %dx.types.ResRet.f32 %82, 1
  %85 = extractvalue %dx.types.ResRet.f32 %82, 2
  %86 = extractvalue %dx.types.ResRet.f32 %82, 3
  %87 = call float @dx.op.binary.f32(i32 36, float %84, float %85)  ; FMin(a,b)
  %88 = call float @dx.op.binary.f32(i32 36, float %83, float %87)  ; FMin(a,b)
  %89 = call float @dx.op.binary.f32(i32 36, float %88, float %86)  ; FMin(a,b)
  %90 = call float @dx.op.binary.f32(i32 35, float %84, float %85)  ; FMax(a,b)
  %91 = call float @dx.op.binary.f32(i32 35, float %83, float %90)  ; FMax(a,b)
  %92 = call float @dx.op.binary.f32(i32 35, float %91, float %86)  ; FMax(a,b)
  %93 = fcmp fast une float %89, %92
  %94 = and i1 %79, %93
  %95 = select i1 %94, i32 1, i32 %75
  %96 = lshr i32 %11, 2
  %97 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.i32 %97, 1
  %99 = shl i32 %98, 1
  %100 = lshr i32 %12, 4
  %101 = and i32 %100, 134217727
  %102 = extractvalue %dx.types.CBufRet.i32 %97, 0
  %103 = mul i32 %102, %101
  %104 = lshr i32 %11, 5
  %105 = and i32 %104, 67108863
  %106 = add i32 %99, %105
  %107 = add i32 %106, %103
  %108 = shl i32 %107, 2
  %109 = and i32 %24, 24
  %110 = and i32 %96, 7
  %111 = or i32 %109, %110
  %112 = shl i32 1, %111
  %113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %114 = extractvalue %dx.types.ResRet.i32 %113, 0
  %115 = and i32 %114, %112
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %122, label %117, !dx.controlflow.hints !24

; <label>:117                                     ; preds = %22
  %118 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %23, i32 %24, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %119 = extractvalue %dx.types.ResRet.f32 %118, 0
  %120 = fcmp fast ogt float %119, 0.000000e+00
  br i1 %120, label %121, label %122, !dx.controlflow.hints !25

; <label>:121                                     ; preds = %117
  br label %122

; <label>:122                                     ; preds = %121, %117, %22
  %123 = phi i32 [ 1, %121 ], [ %95, %117 ], [ %95, %22 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %135, !dx.controlflow.hints !26

; <label>:125                                     ; preds = %122
  %126 = icmp ugt i32 %13, 31
  %127 = and i32 %13, 31
  %128 = shl i32 1, %127
  br i1 %126, label %132, label %129, !dx.controlflow.hints !27

; <label>:129                                     ; preds = %125
  %130 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 1), align 4
  %131 = or i32 %130, %128
  store i32 %131, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 1), align 4
  br label %135

; <label>:132                                     ; preds = %125
  %133 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 0), align 4
  %134 = or i32 %133, %128
  store i32 %134, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 0), align 4
  br label %135

; <label>:135                                     ; preds = %132, %129, %122
  %136 = icmp eq i32 %123, 1
  br i1 %136, label %137, label %147, !dx.controlflow.hints !26

; <label>:137                                     ; preds = %135
  %138 = icmp ugt i32 %13, 31
  %139 = and i32 %13, 31
  %140 = shl i32 1, %139
  br i1 %138, label %144, label %141, !dx.controlflow.hints !27

; <label>:141                                     ; preds = %137
  %142 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 3), align 4
  %143 = or i32 %142, %140
  store i32 %143, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 3), align 4
  br label %147

; <label>:144                                     ; preds = %137
  %145 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 2), align 4
  %146 = or i32 %145, %140
  store i32 %146, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 2), align 4
  br label %147

; <label>:147                                     ; preds = %144, %141, %135
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %148 = icmp eq i32 %13, 0
  br i1 %148, label %149, label %180, !dx.controlflow.hints !28

; <label>:149                                     ; preds = %147
  %150 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 2), align 4
  %151 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 3), align 4
  %152 = or i32 %151, %150
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %165, label %154, !dx.controlflow.hints !29

; <label>:154                                     ; preds = %149
  %155 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 32, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %156 = lshr i32 %12, 3
  %157 = lshr i32 %11, 3
  %158 = and i32 %157, 65535
  %159 = shl i32 %156, 16
  %160 = or i32 %159, %158
  %161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.i32 %161, 1
  %163 = add i32 %162, %155
  %164 = shl i32 %163, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %164, i32 undef, i32 %160, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %165

; <label>:165                                     ; preds = %154, %149
  %166 = phi i1 [ false, %154 ], [ true, %149 ]
  %167 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 0), align 4
  %168 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 1), align 4
  %169 = or i32 %168, %167
  %170 = icmp ne i32 %169, 0
  %171 = and i1 %166, %170
  br i1 %171, label %172, label %180, !dx.controlflow.hints !29

; <label>:172                                     ; preds = %165
  %173 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %174 = lshr i32 %12, 3
  %175 = lshr i32 %11, 3
  %176 = and i32 %175, 65535
  %177 = shl i32 %174, 16
  %178 = or i32 %177, %176
  %179 = shl i32 %173, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %179, i32 undef, i32 %178, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %180

; <label>:180                                     ; preds = %172, %165, %147
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !12, !15, !18}
!5 = !{!6, !7, !9, !10, !11}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{i32 2, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !8}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !8}
!12 = !{!13, !14}
!13 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!14 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{!16, !17}
!16 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!17 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!18 = !{!19}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!20 = !{void ()* @cs_post_opaque_processes_prepass, !"cs_post_opaque_processes_prepass", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}

