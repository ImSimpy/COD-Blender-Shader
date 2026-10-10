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
; shader hash: b01cfd845cae51238a64bad7c4fdbdf4
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
;                                   texture     f32          2d      T2             t2     1
;                                   texture     f32          2d      T3            t18     1
;                                   texture    byte         r/o      T4            t19     1
;                                   texture     f32          2d      T5            t22     1
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
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
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
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %14 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %15 = icmp ult i32 %14, 4
  br i1 %15, label %16, label %23, !dx.controlflow.hints !24

; <label>:16                                      ; preds = %0
  %17 = mul i32 %14, 2
  %18 = add i32 0, %17
  %19 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 %18
  store i32 0, i32 addrspace(3)* %19, align 4
  %20 = mul i32 %14, 2
  %21 = add i32 1, %20
  %22 = getelementptr [8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 %21
  store i32 0, i32 addrspace(3)* %22, align 4
  br label %23

; <label>:23                                      ; preds = %16, %0
  %24 = shl i32 %12, 1
  %25 = shl i32 %13, 1
  %26 = uitofp i32 %24 to float
  %27 = uitofp i32 %25 to float
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 3
  %31 = fmul fast float %29, %26
  %32 = fmul fast float %30, %27
  %33 = fadd fast float %31, %29
  %34 = fadd fast float %32, %30
  %35 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %9, float %33, float %34, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %36 = extractvalue %dx.types.ResRet.f32 %35, 0
  %37 = extractvalue %dx.types.ResRet.f32 %35, 1
  %38 = extractvalue %dx.types.ResRet.f32 %35, 2
  %39 = extractvalue %dx.types.ResRet.f32 %35, 3
  %40 = fcmp fast ogt float %39, -1.000000e+00
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %11, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 1
  %43 = select i1 %40, float %42, float 1.000000e+00
  %44 = fadd fast float %39, 1.000000e+00
  %45 = fmul fast float %43, %44
  %46 = call float @dx.op.unary.f32(i32 6, float %45)  ; FAbs(value)
  %47 = fcmp fast ogt float %38, -1.000000e+00
  %48 = select i1 %47, float %42, float 1.000000e+00
  %49 = fadd fast float %38, 1.000000e+00
  %50 = fmul fast float %48, %49
  %51 = call float @dx.op.unary.f32(i32 6, float %50)  ; FAbs(value)
  %52 = fcmp fast ogt float %36, -1.000000e+00
  %53 = select i1 %52, float %42, float 1.000000e+00
  %54 = fadd fast float %36, 1.000000e+00
  %55 = fmul fast float %53, %54
  %56 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %57 = fcmp fast ogt float %37, -1.000000e+00
  %58 = select i1 %57, float %42, float 1.000000e+00
  %59 = fadd fast float %37, 1.000000e+00
  %60 = fmul fast float %58, %59
  %61 = call float @dx.op.unary.f32(i32 6, float %60)  ; FAbs(value)
  %62 = call float @dx.op.binary.f32(i32 36, float %51, float %56)  ; FMin(a,b)
  %63 = call float @dx.op.binary.f32(i32 36, float %46, float %62)  ; FMin(a,b)
  %64 = call float @dx.op.binary.f32(i32 36, float %63, float %61)  ; FMin(a,b)
  %65 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %66 = call float @dx.op.binary.f32(i32 35, float %51, float %56)  ; FMax(a,b)
  %67 = call float @dx.op.binary.f32(i32 35, float %46, float %66)  ; FMax(a,b)
  %68 = call float @dx.op.binary.f32(i32 35, float %67, float %61)  ; FMax(a,b)
  %69 = call float @dx.op.binary.f32(i32 36, float %68, float %65)  ; FMin(a,b)
  %70 = fsub fast float %69, %64
  %71 = fdiv fast float 1.000000e+00, %69
  %72 = fmul fast float %70, %71
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 2
  %75 = fcmp fast oge float %72, %74
  %76 = zext i1 %75 to i32
  %77 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %78 = extractvalue %dx.types.ResRet.i32 %77, 0
  %79 = and i32 %78, 114688
  %80 = icmp ne i32 %79, 0
  %81 = select i1 %80, float %33, float 0.000000e+00
  %82 = select i1 %80, float %34, float 0.000000e+00
  %83 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %5, %dx.types.Handle %9, float %81, float %82, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = extractvalue %dx.types.ResRet.f32 %83, 1
  %86 = extractvalue %dx.types.ResRet.f32 %83, 2
  %87 = extractvalue %dx.types.ResRet.f32 %83, 3
  %88 = call float @dx.op.binary.f32(i32 36, float %85, float %86)  ; FMin(a,b)
  %89 = call float @dx.op.binary.f32(i32 36, float %84, float %88)  ; FMin(a,b)
  %90 = call float @dx.op.binary.f32(i32 36, float %89, float %87)  ; FMin(a,b)
  %91 = call float @dx.op.binary.f32(i32 35, float %85, float %86)  ; FMax(a,b)
  %92 = call float @dx.op.binary.f32(i32 35, float %84, float %91)  ; FMax(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float %92, float %87)  ; FMax(a,b)
  %94 = fcmp fast une float %90, %93
  %95 = and i1 %80, %94
  %96 = select i1 %95, i32 1, i32 %76
  %97 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %24, i32 %25, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fcmp fast ogt float %98, 0.000000e+00
  br i1 %99, label %109, label %100, !dx.controlflow.hints !25

; <label>:100                                     ; preds = %23
  %101 = or i32 %24, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %103 = fptoui float %102 to i32
  %104 = icmp uge i32 %101, %103
  %105 = extractvalue %dx.types.CBufRet.f32 %28, 1
  %106 = fptoui float %105 to i32
  %107 = icmp uge i32 %25, %106
  %108 = or i1 %104, %107
  br i1 %108, label %111, label %116, !dx.controlflow.hints !26

; <label>:109                                     ; preds = %23
  %110 = or i32 %96, 2
  br label %122

; <label>:111                                     ; preds = %116, %100
  %112 = or i32 %25, 1
  %113 = icmp uge i32 %24, %103
  %114 = icmp uge i32 %112, %106
  %115 = or i1 %113, %114
  br i1 %115, label %279, label %275, !dx.controlflow.hints !26

; <label>:116                                     ; preds = %100
  %117 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %101, i32 %25, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %118 = extractvalue %dx.types.ResRet.f32 %117, 0
  %119 = fcmp fast ogt float %118, 0.000000e+00
  br i1 %119, label %120, label %111, !dx.controlflow.hints !27

; <label>:120                                     ; preds = %281, %275, %116
  %121 = or i32 %96, 2
  br label %122

; <label>:122                                     ; preds = %281, %279, %120, %109
  %123 = phi i32 [ %110, %109 ], [ %121, %120 ], [ %96, %281 ], [ %96, %279 ]
  %124 = lshr i32 %12, 2
  %125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %11, i32 51)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.i32 %125, 1
  %127 = shl i32 %126, 1
  %128 = lshr i32 %13, 4
  %129 = and i32 %128, 134217727
  %130 = extractvalue %dx.types.CBufRet.i32 %125, 0
  %131 = mul i32 %130, %129
  %132 = lshr i32 %12, 5
  %133 = and i32 %132, 67108863
  %134 = add i32 %127, %133
  %135 = add i32 %134, %131
  %136 = shl i32 %135, 2
  %137 = and i32 %25, 24
  %138 = and i32 %124, 7
  %139 = or i32 %137, %138
  %140 = shl i32 1, %139
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, %140
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %151, label %145, !dx.controlflow.hints !28

; <label>:145                                     ; preds = %122
  %146 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %24, i32 %25, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = fcmp fast ogt float %147, 0.000000e+00
  br i1 %148, label %149, label %151, !dx.controlflow.hints !29

; <label>:149                                     ; preds = %145
  %150 = or i32 %123, 1
  br label %151

; <label>:151                                     ; preds = %149, %145, %122
  %152 = phi i32 [ %150, %149 ], [ %123, %145 ], [ %123, %122 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %164, !dx.controlflow.hints !30

; <label>:154                                     ; preds = %151
  %155 = icmp ugt i32 %14, 31
  %156 = and i32 %14, 31
  %157 = shl i32 1, %156
  br i1 %155, label %161, label %158, !dx.controlflow.hints !31

; <label>:158                                     ; preds = %154
  %159 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 1), align 4
  %160 = or i32 %159, %157
  store i32 %160, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 1), align 4
  br label %164

; <label>:161                                     ; preds = %154
  %162 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 0), align 4
  %163 = or i32 %162, %157
  store i32 %163, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 0), align 4
  br label %164

; <label>:164                                     ; preds = %161, %158, %151
  %165 = icmp eq i32 %152, 1
  br i1 %165, label %166, label %176, !dx.controlflow.hints !30

; <label>:166                                     ; preds = %164
  %167 = icmp ugt i32 %14, 31
  %168 = and i32 %14, 31
  %169 = shl i32 1, %168
  br i1 %167, label %173, label %170, !dx.controlflow.hints !31

; <label>:170                                     ; preds = %166
  %171 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 3), align 4
  %172 = or i32 %171, %169
  store i32 %172, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 3), align 4
  br label %176

; <label>:173                                     ; preds = %166
  %174 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 2), align 4
  %175 = or i32 %174, %169
  store i32 %175, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 2), align 4
  br label %176

; <label>:176                                     ; preds = %173, %170, %164
  %177 = icmp eq i32 %152, 2
  br i1 %177, label %178, label %188, !dx.controlflow.hints !30

; <label>:178                                     ; preds = %176
  %179 = icmp ugt i32 %14, 31
  %180 = and i32 %14, 31
  %181 = shl i32 1, %180
  br i1 %179, label %185, label %182, !dx.controlflow.hints !31

; <label>:182                                     ; preds = %178
  %183 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 5), align 4
  %184 = or i32 %183, %181
  store i32 %184, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 5), align 4
  br label %188

; <label>:185                                     ; preds = %178
  %186 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 4), align 4
  %187 = or i32 %186, %181
  store i32 %187, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 4), align 4
  br label %188

; <label>:188                                     ; preds = %185, %182, %176
  %189 = icmp eq i32 %152, 3
  br i1 %189, label %190, label %200, !dx.controlflow.hints !30

; <label>:190                                     ; preds = %188
  %191 = icmp ugt i32 %14, 31
  %192 = and i32 %14, 31
  %193 = shl i32 1, %192
  br i1 %191, label %197, label %194, !dx.controlflow.hints !31

; <label>:194                                     ; preds = %190
  %195 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 7), align 4
  %196 = or i32 %195, %193
  store i32 %196, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 7), align 4
  br label %200

; <label>:197                                     ; preds = %190
  %198 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 6), align 4
  %199 = or i32 %198, %193
  store i32 %199, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 6), align 4
  br label %200

; <label>:200                                     ; preds = %197, %194, %188
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %201 = icmp eq i32 %14, 0
  br i1 %201, label %202, label %274, !dx.controlflow.hints !32

; <label>:202                                     ; preds = %200
  %203 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 6), align 4
  %204 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 7), align 4
  %205 = or i32 %204, %203
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %219, label %207, !dx.controlflow.hints !33

; <label>:207                                     ; preds = %202
  %208 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 96, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %209 = lshr i32 %13, 3
  %210 = lshr i32 %12, 3
  %211 = and i32 %210, 65535
  %212 = shl i32 %209, 16
  %213 = or i32 %212, %211
  %214 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %215 = extractvalue %dx.types.CBufRet.i32 %214, 1
  %216 = mul i32 %215, 3
  %217 = add i32 %216, %208
  %218 = shl i32 %217, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %218, i32 undef, i32 %213, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %219

; <label>:219                                     ; preds = %207, %202
  %220 = phi i32 [ 1, %207 ], [ 0, %202 ]
  %221 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 4), align 4
  %222 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 5), align 4
  %223 = or i32 %222, %221
  %224 = icmp ne i32 %223, 0
  %225 = icmp eq i32 %220, 0
  %226 = and i1 %225, %224
  br i1 %226, label %227, label %239, !dx.controlflow.hints !33

; <label>:227                                     ; preds = %219
  %228 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 64, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %229 = lshr i32 %13, 3
  %230 = lshr i32 %12, 3
  %231 = and i32 %230, 65535
  %232 = shl i32 %229, 16
  %233 = or i32 %232, %231
  %234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.i32 %234, 1
  %236 = shl i32 %235, 1
  %237 = add i32 %236, %228
  %238 = shl i32 %237, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %238, i32 undef, i32 %233, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %239

; <label>:239                                     ; preds = %227, %219
  %240 = phi i32 [ 1, %227 ], [ %220, %219 ]
  %241 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 2), align 4
  %242 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 3), align 4
  %243 = or i32 %242, %241
  %244 = icmp ne i32 %243, 0
  %245 = icmp eq i32 %240, 0
  %246 = and i1 %245, %244
  br i1 %246, label %247, label %258, !dx.controlflow.hints !33

; <label>:247                                     ; preds = %239
  %248 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 32, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %249 = lshr i32 %13, 3
  %250 = lshr i32 %12, 3
  %251 = and i32 %250, 65535
  %252 = shl i32 %249, 16
  %253 = or i32 %252, %251
  %254 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.i32 %254, 1
  %256 = add i32 %255, %248
  %257 = shl i32 %256, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %257, i32 undef, i32 %253, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %258

; <label>:258                                     ; preds = %247, %239
  %259 = phi i32 [ 1, %247 ], [ %240, %239 ]
  %260 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 0), align 4
  %261 = load i32, i32 addrspace(3)* getelementptr inbounds ([8 x i32], [8 x i32] addrspace(3)* @"\01?sharedMemoryMask@@3PAV?$vector@I$01@@A.v.1dim", i32 0, i32 1), align 4
  %262 = or i32 %261, %260
  %263 = icmp ne i32 %262, 0
  %264 = icmp eq i32 %259, 0
  %265 = and i1 %264, %263
  br i1 %265, label %266, label %274, !dx.controlflow.hints !33

; <label>:266                                     ; preds = %258
  %267 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 0, i32 undef, i32 undef, i32 1)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %268 = lshr i32 %13, 3
  %269 = lshr i32 %12, 3
  %270 = and i32 %269, 65535
  %271 = shl i32 %268, 16
  %272 = or i32 %271, %270
  %273 = shl i32 %267, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %273, i32 undef, i32 %272, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %274

; <label>:274                                     ; preds = %266, %258, %200
  ret void

; <label>:275                                     ; preds = %111
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %24, i32 %112, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fcmp fast ogt float %277, 0.000000e+00
  br i1 %278, label %120, label %279, !dx.controlflow.hints !27

; <label>:279                                     ; preds = %275, %111
  %280 = or i1 %104, %114
  br i1 %280, label %122, label %281, !dx.controlflow.hints !26

; <label>:281                                     ; preds = %279
  %282 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %101, i32 %112, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %283 = extractvalue %dx.types.ResRet.f32 %282, 0
  %284 = fcmp fast ogt float %283, 0.000000e+00
  br i1 %284, label %120, label %122, !dx.controlflow.hints !27
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
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !16, !19}
!5 = !{!6, !7, !9, !10, !11, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 9}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !8}
!10 = !{i32 3, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 18, i32 1, i32 2, i32 0, !8}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 22, i32 1, i32 2, i32 0, !8}
!13 = !{!14, !15}
!14 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{!17, !18}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{i32 1, %PostOpaqueConstants* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!19 = !{!20}
!20 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!21 = !{void ()* @cs_post_opaque_processes_prepass, !"cs_post_opaque_processes_prepass", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 8, i32 8, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}

