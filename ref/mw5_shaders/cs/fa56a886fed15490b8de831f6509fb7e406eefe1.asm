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
; shader hash: 4094db552a402989f55c54107d4edc03
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
;   [256 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0             t0     1
;                                       UAV     f32          2d      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;                                       UAV     f32          2d      U2             u2     1
;                                       UAV     f32          2d      U3             u3     1
;                                       UAV     f32          2d      U4             u4     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
%hostlayout.FloatZConsts = type { <4 x float>, <4 x float>, float, i32, i32, i32, [4 x <4 x float>], [4 x <4 x float>], [2 x <4 x i32>], <4 x i32>, <4 x i32>, <4 x i32> }

@"\01?gTileMaskBits@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [128 x float] undef, align 4

define void @cs_resolve_floatz_downsample() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %12 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %13 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %14 = shl i32 %9, 3
  %15 = shl i32 %10, 3
  %16 = or i32 %11, %14
  %17 = or i32 %12, %15
  %18 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.f32 %18, 0
  %20 = extractvalue %dx.types.CBufRet.f32 %18, 1
  %21 = fptoui float %19 to i32
  %22 = fptoui float %20 to i32
  %23 = icmp ult i32 %16, %21
  %24 = icmp ult i32 %17, %22
  %25 = and i1 %23, %24
  %26 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %16, i32 %17, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %27 = extractvalue %dx.types.ResRet.f32 %26, 0
  %28 = fcmp fast oeq float %27, 0.000000e+00
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = fcmp fast ogt float %27, 9.843750e-01
  %31 = select i1 %30, float 6.400000e+01, float 0x3FF0410420000000
  %32 = select i1 %30, float -6.300000e+01, float -0.000000e+00
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 2
  %35 = fcmp fast oeq float %34, 0.000000e+00
  %36 = call float @dx.op.unary.f32(i32 7, float %27)  ; Saturate(value)
  %37 = fmul fast float %36, %31
  %38 = fadd fast float %37, %32
  %39 = call float @dx.op.binary.f32(i32 35, float %38, float 0x3E45798EE0000000)  ; FMax(a,b)
  br i1 %35, label %45, label %40, !dx.controlflow.hints !20

; <label>:40                                      ; preds = %0
  %41 = extractvalue %dx.types.CBufRet.f32 %29, 0
  %42 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %43 = select i1 %30, float %41, float %42
  %44 = fdiv fast float %43, %39
  br label %45

; <label>:45                                      ; preds = %40, %0
  %46 = phi float [ %44, %40 ], [ %39, %0 ]
  %47 = or i1 %28, %30
  %48 = fsub fast float -0.000000e+00, %46
  %49 = select i1 %30, float %48, float %46
  %50 = fcmp fast ogt float %49, 0.000000e+00
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 0
  %53 = select i1 %50, float %52, float 1.000000e+00
  %54 = fmul fast float %53, %49
  %55 = fadd fast float %54, -1.000000e+00
  br i1 %25, label %56, label %57, !dx.controlflow.hints !21

; <label>:56                                      ; preds = %45
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %16, i32 %17, i32 undef, float %55, float %55, float %55, float %55, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %57

; <label>:57                                      ; preds = %56, %45
  %58 = select i1 %25, float %55, float 0.000000e+00
  %59 = select i1 %25, float %55, float 6.550000e+04
  %60 = and i1 %23, %24
  %61 = xor i1 %60, true
  %62 = or i1 %30, %61
  %63 = zext i1 %62 to i32
  %64 = and i1 %25, %30
  %65 = select i1 %64, i32 2, i32 0
  %66 = or i32 %63, %65
  %67 = xor i1 %47, true
  %68 = and i1 %25, %67
  %69 = select i1 %68, i32 4, i32 0
  %70 = and i1 %25, %28
  %71 = select i1 %70, i32 8, i32 0
  %72 = or i32 %66, %71
  %73 = or i32 %72, %69
  %74 = mul i32 %13, 2
  %75 = add i32 0, %74
  %76 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %75
  store float %58, float addrspace(3)* %76, align 4
  %77 = mul i32 %13, 2
  %78 = add i32 1, %77
  %79 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %78
  store float %59, float addrspace(3)* %79, align 4
  %80 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %13
  store i32 %73, i32 addrspace(3)* %80, align 4, !tbaa !22, !noalias !26
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %81 = xor i32 %13, 1
  %82 = mul i32 %81, 2
  %83 = add i32 0, %82
  %84 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %83
  %85 = load float, float addrspace(3)* %84, align 4
  %86 = mul i32 %81, 2
  %87 = add i32 1, %86
  %88 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %87
  %89 = load float, float addrspace(3)* %88, align 4
  %90 = fcmp fast ole float %58, -1.000000e+00
  %91 = fcmp fast ole float %85, -1.000000e+00
  %92 = select i1 %90, float -1.000000e+00, float %58
  %93 = select i1 %91, float -1.000000e+00, float %85
  %94 = and i1 %90, %91
  %95 = call float @dx.op.binary.f32(i32 36, float %58, float %85)  ; FMin(a,b)
  %96 = call float @dx.op.binary.f32(i32 35, float %92, float %93)  ; FMax(a,b)
  %97 = select i1 %94, float %95, float %96
  %98 = fcmp fast ole float %59, -1.000000e+00
  %99 = fcmp fast ole float %89, -1.000000e+00
  %100 = select i1 %98, float 0x47EFFFFFE0000000, float %59
  %101 = select i1 %99, float 0x47EFFFFFE0000000, float %89
  %102 = and i1 %98, %99
  %103 = call float @dx.op.binary.f32(i32 35, float %59, float %89)  ; FMax(a,b)
  %104 = call float @dx.op.binary.f32(i32 36, float %100, float %101)  ; FMin(a,b)
  %105 = select i1 %102, float %103, float %104
  %106 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %81
  %107 = load i32, i32 addrspace(3)* %106, align 4, !tbaa !22, !noalias !26
  %108 = or i32 %107, 14
  %109 = and i32 %108, %73
  %110 = and i32 %107, 14
  %111 = or i32 %109, %110
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %97, float addrspace(3)* %76, align 4
  store float %105, float addrspace(3)* %79, align 4
  store i32 %111, i32 addrspace(3)* %80, align 4, !tbaa !22, !noalias !30
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %112 = xor i32 %13, 8
  %113 = mul i32 %112, 2
  %114 = add i32 0, %113
  %115 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %114
  %116 = load float, float addrspace(3)* %115, align 4
  %117 = mul i32 %112, 2
  %118 = add i32 1, %117
  %119 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %118
  %120 = load float, float addrspace(3)* %119, align 4
  %121 = fcmp fast ole float %97, -1.000000e+00
  %122 = fcmp fast ole float %116, -1.000000e+00
  %123 = select i1 %121, float -1.000000e+00, float %97
  %124 = select i1 %122, float -1.000000e+00, float %116
  %125 = and i1 %121, %122
  %126 = call float @dx.op.binary.f32(i32 36, float %97, float %116)  ; FMin(a,b)
  %127 = call float @dx.op.binary.f32(i32 35, float %123, float %124)  ; FMax(a,b)
  %128 = select i1 %125, float %126, float %127
  %129 = fcmp fast ole float %105, -1.000000e+00
  %130 = fcmp fast ole float %120, -1.000000e+00
  %131 = select i1 %129, float 0x47EFFFFFE0000000, float %105
  %132 = select i1 %130, float 0x47EFFFFFE0000000, float %120
  %133 = and i1 %129, %130
  %134 = call float @dx.op.binary.f32(i32 35, float %105, float %120)  ; FMax(a,b)
  %135 = call float @dx.op.binary.f32(i32 36, float %131, float %132)  ; FMin(a,b)
  %136 = select i1 %133, float %134, float %135
  %137 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %112
  %138 = load i32, i32 addrspace(3)* %137, align 4, !tbaa !22, !noalias !30
  %139 = or i32 %138, -2
  %140 = and i32 %139, %111
  %141 = and i32 %138, 14
  %142 = or i32 %140, %141
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %143 = or i32 %12, %11
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  %146 = and i1 %145, %25
  br i1 %146, label %147, label %150, !dx.controlflow.hints !34

; <label>:147                                     ; preds = %57
  %148 = lshr i32 %17, 1
  %149 = lshr i32 %16, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %149, i32 %148, i32 undef, float %128, float %128, float %128, float %128, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %150

; <label>:150                                     ; preds = %147, %57
  store float %128, float addrspace(3)* %76, align 4
  store float %136, float addrspace(3)* %79, align 4
  store i32 %142, i32 addrspace(3)* %80, align 4, !tbaa !22, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %151 = xor i32 %13, 2
  %152 = mul i32 %151, 2
  %153 = add i32 0, %152
  %154 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %153
  %155 = load float, float addrspace(3)* %154, align 4
  %156 = mul i32 %151, 2
  %157 = add i32 1, %156
  %158 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %157
  %159 = load float, float addrspace(3)* %158, align 4
  %160 = fcmp fast ole float %128, -1.000000e+00
  %161 = fcmp fast ole float %155, -1.000000e+00
  %162 = select i1 %160, float -1.000000e+00, float %128
  %163 = select i1 %161, float -1.000000e+00, float %155
  %164 = and i1 %160, %161
  %165 = call float @dx.op.binary.f32(i32 36, float %128, float %155)  ; FMin(a,b)
  %166 = call float @dx.op.binary.f32(i32 35, float %162, float %163)  ; FMax(a,b)
  %167 = select i1 %164, float %165, float %166
  %168 = fcmp fast ole float %136, -1.000000e+00
  %169 = fcmp fast ole float %159, -1.000000e+00
  %170 = select i1 %168, float 0x47EFFFFFE0000000, float %136
  %171 = select i1 %169, float 0x47EFFFFFE0000000, float %159
  %172 = and i1 %168, %169
  %173 = call float @dx.op.binary.f32(i32 35, float %136, float %159)  ; FMax(a,b)
  %174 = call float @dx.op.binary.f32(i32 36, float %170, float %171)  ; FMin(a,b)
  %175 = select i1 %172, float %173, float %174
  %176 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %151
  %177 = load i32, i32 addrspace(3)* %176, align 4, !tbaa !22, !noalias !35
  %178 = or i32 %177, -2
  %179 = and i32 %178, %142
  %180 = and i32 %177, 14
  %181 = or i32 %179, %180
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %167, float addrspace(3)* %76, align 4
  store float %175, float addrspace(3)* %79, align 4
  store i32 %181, i32 addrspace(3)* %80, align 4, !tbaa !22, !noalias !39
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %182 = xor i32 %13, 16
  %183 = mul i32 %182, 2
  %184 = add i32 0, %183
  %185 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %184
  %186 = load float, float addrspace(3)* %185, align 4
  %187 = mul i32 %182, 2
  %188 = add i32 1, %187
  %189 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %188
  %190 = load float, float addrspace(3)* %189, align 4
  %191 = fcmp fast ole float %167, -1.000000e+00
  %192 = fcmp fast ole float %186, -1.000000e+00
  %193 = select i1 %191, float -1.000000e+00, float %167
  %194 = select i1 %192, float -1.000000e+00, float %186
  %195 = and i1 %191, %192
  %196 = call float @dx.op.binary.f32(i32 36, float %167, float %186)  ; FMin(a,b)
  %197 = call float @dx.op.binary.f32(i32 35, float %193, float %194)  ; FMax(a,b)
  %198 = select i1 %195, float %196, float %197
  %199 = fcmp fast ole float %175, -1.000000e+00
  %200 = fcmp fast ole float %190, -1.000000e+00
  %201 = select i1 %199, float 0x47EFFFFFE0000000, float %175
  %202 = select i1 %200, float 0x47EFFFFFE0000000, float %190
  %203 = and i1 %199, %200
  %204 = call float @dx.op.binary.f32(i32 35, float %175, float %190)  ; FMax(a,b)
  %205 = call float @dx.op.binary.f32(i32 36, float %201, float %202)  ; FMin(a,b)
  %206 = select i1 %203, float %204, float %205
  %207 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %182
  %208 = load i32, i32 addrspace(3)* %207, align 4, !tbaa !22, !noalias !39
  %209 = or i32 %208, -2
  %210 = and i32 %209, %181
  %211 = and i32 %208, 14
  %212 = or i32 %210, %211
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %213 = and i32 %143, 3
  %214 = icmp eq i32 %213, 0
  %215 = and i1 %214, %25
  br i1 %215, label %216, label %219, !dx.controlflow.hints !43

; <label>:216                                     ; preds = %150
  %217 = lshr i32 %17, 2
  %218 = lshr i32 %16, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %218, i32 %217, i32 undef, float %198, float %198, float %198, float %198, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %219

; <label>:219                                     ; preds = %216, %150
  %220 = lshr i32 %16, 3
  %221 = lshr i32 %17, 3
  store float %198, float addrspace(3)* %76, align 4
  store float %206, float addrspace(3)* %79, align 4
  store i32 %212, i32 addrspace(3)* %80, align 4, !tbaa !22, !noalias !44
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %222 = xor i32 %13, 4
  %223 = mul i32 %222, 2
  %224 = add i32 0, %223
  %225 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %224
  %226 = load float, float addrspace(3)* %225, align 4
  %227 = mul i32 %222, 2
  %228 = add i32 1, %227
  %229 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %228
  %230 = load float, float addrspace(3)* %229, align 4
  %231 = fcmp fast ole float %198, -1.000000e+00
  %232 = fcmp fast ole float %226, -1.000000e+00
  %233 = select i1 %231, float -1.000000e+00, float %198
  %234 = select i1 %232, float -1.000000e+00, float %226
  %235 = and i1 %231, %232
  %236 = call float @dx.op.binary.f32(i32 36, float %198, float %226)  ; FMin(a,b)
  %237 = call float @dx.op.binary.f32(i32 35, float %233, float %234)  ; FMax(a,b)
  %238 = select i1 %235, float %236, float %237
  %239 = fcmp fast ole float %206, -1.000000e+00
  %240 = fcmp fast ole float %230, -1.000000e+00
  %241 = select i1 %239, float 0x47EFFFFFE0000000, float %206
  %242 = select i1 %240, float 0x47EFFFFFE0000000, float %230
  %243 = and i1 %239, %240
  %244 = call float @dx.op.binary.f32(i32 35, float %206, float %230)  ; FMax(a,b)
  %245 = call float @dx.op.binary.f32(i32 36, float %241, float %242)  ; FMin(a,b)
  %246 = select i1 %243, float %244, float %245
  %247 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %222
  %248 = load i32, i32 addrspace(3)* %247, align 4, !tbaa !22, !noalias !44
  %249 = or i32 %248, -2
  %250 = and i32 %249, %212
  %251 = and i32 %248, 14
  %252 = or i32 %250, %251
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %238, float addrspace(3)* %76, align 4
  store float %246, float addrspace(3)* %79, align 4
  store i32 %252, i32 addrspace(3)* %80, align 4, !tbaa !22, !noalias !48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %253 = xor i32 %13, 32
  %254 = mul i32 %253, 2
  %255 = add i32 0, %254
  %256 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %255
  %257 = load float, float addrspace(3)* %256, align 4
  %258 = mul i32 %253, 2
  %259 = add i32 1, %258
  %260 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %259
  %261 = load float, float addrspace(3)* %260, align 4
  %262 = fcmp fast ole float %238, -1.000000e+00
  %263 = fcmp fast ole float %257, -1.000000e+00
  %264 = select i1 %262, float -1.000000e+00, float %238
  %265 = select i1 %263, float -1.000000e+00, float %257
  %266 = and i1 %262, %263
  %267 = call float @dx.op.binary.f32(i32 36, float %238, float %257)  ; FMin(a,b)
  %268 = call float @dx.op.binary.f32(i32 35, float %264, float %265)  ; FMax(a,b)
  %269 = select i1 %266, float %267, float %268
  %270 = fcmp fast ole float %246, -1.000000e+00
  %271 = fcmp fast ole float %261, -1.000000e+00
  %272 = select i1 %270, float 0x47EFFFFFE0000000, float %246
  %273 = select i1 %271, float 0x47EFFFFFE0000000, float %261
  %274 = and i1 %270, %271
  %275 = call float @dx.op.binary.f32(i32 35, float %246, float %261)  ; FMax(a,b)
  %276 = call float @dx.op.binary.f32(i32 36, float %272, float %273)  ; FMin(a,b)
  %277 = select i1 %274, float %275, float %276
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %278 = and i32 %143, 7
  %279 = icmp eq i32 %278, 0
  %280 = and i1 %279, %25
  br i1 %280, label %281, label %282, !dx.controlflow.hints !52

; <label>:281                                     ; preds = %219
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %220, i32 %221, i32 undef, float %269, float %269, float %269, float %269, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %220, i32 %221, i32 undef, float %277, float %277, float %277, float %277, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %282

; <label>:282                                     ; preds = %281, %219
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !14, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9, !10, !11, !12, !13}
!9 = !{i32 0, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!10 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!12 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 3, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{i32 4, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 4, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!14 = !{!15, !16}
!15 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!16 = !{i32 1, %hostlayout.FloatZConsts* undef, !"", i32 0, i32 0, i32 1, i32 256, null}
!17 = !{void ()* @cs_resolve_floatz_downsample, !"cs_resolve_floatz_downsample", null, !4, !18}
!18 = !{i32 0, i64 256, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !{!27, !29}
!27 = distinct !{!27, !28, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!28 = distinct !{!28, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!29 = distinct !{!29, !28, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!32 = distinct !{!32, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!33 = distinct !{!33, !32, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!37 = distinct !{!37, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!38 = distinct !{!38, !37, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!39 = !{!40, !42}
!40 = distinct !{!40, !41, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!41 = distinct !{!41, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!42 = distinct !{!42, !41, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = !{!45, !47}
!45 = distinct !{!45, !46, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!46 = distinct !{!46, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!47 = distinct !{!47, !46, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!48 = !{!49, !51}
!49 = distinct !{!49, !50, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!50 = distinct !{!50, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!51 = distinct !{!51, !50, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}

