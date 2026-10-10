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
; shader hash: 2217c26fc175107e6c212834386414de
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
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 0
  %31 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %32 = fcmp fast ogt float %27, 9.843750e-01
  %33 = select i1 %32, float 6.400000e+01, float 0x3FF0410420000000
  %34 = select i1 %32, float -6.300000e+01, float -0.000000e+00
  %35 = select i1 %32, float %30, float %31
  %36 = call float @dx.op.unary.f32(i32 7, float %27)  ; Saturate(value)
  %37 = fmul fast float %33, %36
  %38 = fadd fast float %37, %34
  %39 = call float @dx.op.binary.f32(i32 35, float %38, float 0x3E45798EE0000000)  ; FMax(a,b)
  %40 = fdiv fast float %35, %39
  %41 = or i1 %28, %32
  %42 = fsub fast float -0.000000e+00, %40
  %43 = select i1 %32, float %42, float %40
  %44 = fcmp fast ogt float %43, 0.000000e+00
  %45 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %46 = extractvalue %dx.types.CBufRet.f32 %45, 0
  %47 = select i1 %44, float %46, float 1.000000e+00
  %48 = fmul fast float %47, %43
  %49 = fadd fast float %48, -1.000000e+00
  br i1 %25, label %50, label %51, !dx.controlflow.hints !20

; <label>:50                                      ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %16, i32 %17, i32 undef, float %49, float %49, float %49, float %49, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %51

; <label>:51                                      ; preds = %50, %0
  %52 = select i1 %25, float %49, float 0.000000e+00
  %53 = select i1 %25, float %49, float 6.550000e+04
  %54 = and i1 %23, %24
  %55 = xor i1 %54, true
  %56 = or i1 %32, %55
  %57 = zext i1 %56 to i32
  %58 = and i1 %25, %32
  %59 = select i1 %58, i32 2, i32 0
  %60 = or i32 %57, %59
  %61 = xor i1 %41, true
  %62 = and i1 %25, %61
  %63 = select i1 %62, i32 4, i32 0
  %64 = and i1 %25, %28
  %65 = select i1 %64, i32 8, i32 0
  %66 = or i32 %60, %65
  %67 = or i32 %66, %63
  %68 = mul i32 %13, 2
  %69 = add i32 0, %68
  %70 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %69
  store float %52, float addrspace(3)* %70, align 4
  %71 = mul i32 %13, 2
  %72 = add i32 1, %71
  %73 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %72
  store float %53, float addrspace(3)* %73, align 4
  %74 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %13
  store i32 %67, i32 addrspace(3)* %74, align 4, !tbaa !21, !noalias !25
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %75 = xor i32 %13, 1
  %76 = mul i32 %75, 2
  %77 = add i32 0, %76
  %78 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %77
  %79 = load float, float addrspace(3)* %78, align 4
  %80 = mul i32 %75, 2
  %81 = add i32 1, %80
  %82 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %81
  %83 = load float, float addrspace(3)* %82, align 4
  %84 = fcmp fast ole float %52, -1.000000e+00
  %85 = fcmp fast ole float %79, -1.000000e+00
  %86 = select i1 %84, float -1.000000e+00, float %52
  %87 = select i1 %85, float -1.000000e+00, float %79
  %88 = and i1 %84, %85
  %89 = call float @dx.op.binary.f32(i32 36, float %52, float %79)  ; FMin(a,b)
  %90 = call float @dx.op.binary.f32(i32 35, float %86, float %87)  ; FMax(a,b)
  %91 = select i1 %88, float %89, float %90
  %92 = fcmp fast ole float %53, -1.000000e+00
  %93 = fcmp fast ole float %83, -1.000000e+00
  %94 = select i1 %92, float 0x47EFFFFFE0000000, float %53
  %95 = select i1 %93, float 0x47EFFFFFE0000000, float %83
  %96 = and i1 %92, %93
  %97 = call float @dx.op.binary.f32(i32 35, float %53, float %83)  ; FMax(a,b)
  %98 = call float @dx.op.binary.f32(i32 36, float %94, float %95)  ; FMin(a,b)
  %99 = select i1 %96, float %97, float %98
  %100 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %75
  %101 = load i32, i32 addrspace(3)* %100, align 4, !tbaa !21, !noalias !25
  %102 = or i32 %101, 14
  %103 = and i32 %102, %67
  %104 = and i32 %101, 14
  %105 = or i32 %103, %104
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %91, float addrspace(3)* %70, align 4
  store float %99, float addrspace(3)* %73, align 4
  store i32 %105, i32 addrspace(3)* %74, align 4, !tbaa !21, !noalias !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %106 = xor i32 %13, 8
  %107 = mul i32 %106, 2
  %108 = add i32 0, %107
  %109 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %108
  %110 = load float, float addrspace(3)* %109, align 4
  %111 = mul i32 %106, 2
  %112 = add i32 1, %111
  %113 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %112
  %114 = load float, float addrspace(3)* %113, align 4
  %115 = fcmp fast ole float %91, -1.000000e+00
  %116 = fcmp fast ole float %110, -1.000000e+00
  %117 = select i1 %115, float -1.000000e+00, float %91
  %118 = select i1 %116, float -1.000000e+00, float %110
  %119 = and i1 %115, %116
  %120 = call float @dx.op.binary.f32(i32 36, float %91, float %110)  ; FMin(a,b)
  %121 = call float @dx.op.binary.f32(i32 35, float %117, float %118)  ; FMax(a,b)
  %122 = select i1 %119, float %120, float %121
  %123 = fcmp fast ole float %99, -1.000000e+00
  %124 = fcmp fast ole float %114, -1.000000e+00
  %125 = select i1 %123, float 0x47EFFFFFE0000000, float %99
  %126 = select i1 %124, float 0x47EFFFFFE0000000, float %114
  %127 = and i1 %123, %124
  %128 = call float @dx.op.binary.f32(i32 35, float %99, float %114)  ; FMax(a,b)
  %129 = call float @dx.op.binary.f32(i32 36, float %125, float %126)  ; FMin(a,b)
  %130 = select i1 %127, float %128, float %129
  %131 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %106
  %132 = load i32, i32 addrspace(3)* %131, align 4, !tbaa !21, !noalias !29
  %133 = or i32 %132, -2
  %134 = and i32 %133, %105
  %135 = and i32 %132, 14
  %136 = or i32 %134, %135
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %137 = or i32 %12, %11
  %138 = and i32 %137, 1
  %139 = icmp eq i32 %138, 0
  %140 = and i1 %139, %25
  br i1 %140, label %141, label %144, !dx.controlflow.hints !33

; <label>:141                                     ; preds = %51
  %142 = lshr i32 %17, 1
  %143 = lshr i32 %16, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %143, i32 %142, i32 undef, float %122, float %122, float %122, float %122, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %144

; <label>:144                                     ; preds = %141, %51
  store float %122, float addrspace(3)* %70, align 4
  store float %130, float addrspace(3)* %73, align 4
  store i32 %136, i32 addrspace(3)* %74, align 4, !tbaa !21, !noalias !34
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %145 = xor i32 %13, 2
  %146 = mul i32 %145, 2
  %147 = add i32 0, %146
  %148 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %147
  %149 = load float, float addrspace(3)* %148, align 4
  %150 = mul i32 %145, 2
  %151 = add i32 1, %150
  %152 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %151
  %153 = load float, float addrspace(3)* %152, align 4
  %154 = fcmp fast ole float %122, -1.000000e+00
  %155 = fcmp fast ole float %149, -1.000000e+00
  %156 = select i1 %154, float -1.000000e+00, float %122
  %157 = select i1 %155, float -1.000000e+00, float %149
  %158 = and i1 %154, %155
  %159 = call float @dx.op.binary.f32(i32 36, float %122, float %149)  ; FMin(a,b)
  %160 = call float @dx.op.binary.f32(i32 35, float %156, float %157)  ; FMax(a,b)
  %161 = select i1 %158, float %159, float %160
  %162 = fcmp fast ole float %130, -1.000000e+00
  %163 = fcmp fast ole float %153, -1.000000e+00
  %164 = select i1 %162, float 0x47EFFFFFE0000000, float %130
  %165 = select i1 %163, float 0x47EFFFFFE0000000, float %153
  %166 = and i1 %162, %163
  %167 = call float @dx.op.binary.f32(i32 35, float %130, float %153)  ; FMax(a,b)
  %168 = call float @dx.op.binary.f32(i32 36, float %164, float %165)  ; FMin(a,b)
  %169 = select i1 %166, float %167, float %168
  %170 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %145
  %171 = load i32, i32 addrspace(3)* %170, align 4, !tbaa !21, !noalias !34
  %172 = or i32 %171, -2
  %173 = and i32 %172, %136
  %174 = and i32 %171, 14
  %175 = or i32 %173, %174
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %161, float addrspace(3)* %70, align 4
  store float %169, float addrspace(3)* %73, align 4
  store i32 %175, i32 addrspace(3)* %74, align 4, !tbaa !21, !noalias !38
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %176 = xor i32 %13, 16
  %177 = mul i32 %176, 2
  %178 = add i32 0, %177
  %179 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %178
  %180 = load float, float addrspace(3)* %179, align 4
  %181 = mul i32 %176, 2
  %182 = add i32 1, %181
  %183 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %182
  %184 = load float, float addrspace(3)* %183, align 4
  %185 = fcmp fast ole float %161, -1.000000e+00
  %186 = fcmp fast ole float %180, -1.000000e+00
  %187 = select i1 %185, float -1.000000e+00, float %161
  %188 = select i1 %186, float -1.000000e+00, float %180
  %189 = and i1 %185, %186
  %190 = call float @dx.op.binary.f32(i32 36, float %161, float %180)  ; FMin(a,b)
  %191 = call float @dx.op.binary.f32(i32 35, float %187, float %188)  ; FMax(a,b)
  %192 = select i1 %189, float %190, float %191
  %193 = fcmp fast ole float %169, -1.000000e+00
  %194 = fcmp fast ole float %184, -1.000000e+00
  %195 = select i1 %193, float 0x47EFFFFFE0000000, float %169
  %196 = select i1 %194, float 0x47EFFFFFE0000000, float %184
  %197 = and i1 %193, %194
  %198 = call float @dx.op.binary.f32(i32 35, float %169, float %184)  ; FMax(a,b)
  %199 = call float @dx.op.binary.f32(i32 36, float %195, float %196)  ; FMin(a,b)
  %200 = select i1 %197, float %198, float %199
  %201 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %176
  %202 = load i32, i32 addrspace(3)* %201, align 4, !tbaa !21, !noalias !38
  %203 = or i32 %202, -2
  %204 = and i32 %203, %175
  %205 = and i32 %202, 14
  %206 = or i32 %204, %205
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %207 = and i32 %137, 3
  %208 = icmp eq i32 %207, 0
  %209 = and i1 %208, %25
  br i1 %209, label %210, label %213, !dx.controlflow.hints !42

; <label>:210                                     ; preds = %144
  %211 = lshr i32 %17, 2
  %212 = lshr i32 %16, 2
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %212, i32 %211, i32 undef, float %192, float %192, float %192, float %192, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %213

; <label>:213                                     ; preds = %210, %144
  %214 = lshr i32 %16, 3
  %215 = lshr i32 %17, 3
  store float %192, float addrspace(3)* %70, align 4
  store float %200, float addrspace(3)* %73, align 4
  store i32 %206, i32 addrspace(3)* %74, align 4, !tbaa !21, !noalias !43
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %216 = xor i32 %13, 4
  %217 = mul i32 %216, 2
  %218 = add i32 0, %217
  %219 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %218
  %220 = load float, float addrspace(3)* %219, align 4
  %221 = mul i32 %216, 2
  %222 = add i32 1, %221
  %223 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %222
  %224 = load float, float addrspace(3)* %223, align 4
  %225 = fcmp fast ole float %192, -1.000000e+00
  %226 = fcmp fast ole float %220, -1.000000e+00
  %227 = select i1 %225, float -1.000000e+00, float %192
  %228 = select i1 %226, float -1.000000e+00, float %220
  %229 = and i1 %225, %226
  %230 = call float @dx.op.binary.f32(i32 36, float %192, float %220)  ; FMin(a,b)
  %231 = call float @dx.op.binary.f32(i32 35, float %227, float %228)  ; FMax(a,b)
  %232 = select i1 %229, float %230, float %231
  %233 = fcmp fast ole float %200, -1.000000e+00
  %234 = fcmp fast ole float %224, -1.000000e+00
  %235 = select i1 %233, float 0x47EFFFFFE0000000, float %200
  %236 = select i1 %234, float 0x47EFFFFFE0000000, float %224
  %237 = and i1 %233, %234
  %238 = call float @dx.op.binary.f32(i32 35, float %200, float %224)  ; FMax(a,b)
  %239 = call float @dx.op.binary.f32(i32 36, float %235, float %236)  ; FMin(a,b)
  %240 = select i1 %237, float %238, float %239
  %241 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?gTileMaskBits@@3PAIA", i32 0, i32 %216
  %242 = load i32, i32 addrspace(3)* %241, align 4, !tbaa !21, !noalias !43
  %243 = or i32 %242, -2
  %244 = and i32 %243, %206
  %245 = and i32 %242, 14
  %246 = or i32 %244, %245
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %232, float addrspace(3)* %70, align 4
  store float %240, float addrspace(3)* %73, align 4
  store i32 %246, i32 addrspace(3)* %74, align 4, !tbaa !21, !noalias !47
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %247 = xor i32 %13, 32
  %248 = mul i32 %247, 2
  %249 = add i32 0, %248
  %250 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %249
  %251 = load float, float addrspace(3)* %250, align 4
  %252 = mul i32 %247, 2
  %253 = add i32 1, %252
  %254 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %253
  %255 = load float, float addrspace(3)* %254, align 4
  %256 = fcmp fast ole float %232, -1.000000e+00
  %257 = fcmp fast ole float %251, -1.000000e+00
  %258 = select i1 %256, float -1.000000e+00, float %232
  %259 = select i1 %257, float -1.000000e+00, float %251
  %260 = and i1 %256, %257
  %261 = call float @dx.op.binary.f32(i32 36, float %232, float %251)  ; FMin(a,b)
  %262 = call float @dx.op.binary.f32(i32 35, float %258, float %259)  ; FMax(a,b)
  %263 = select i1 %260, float %261, float %262
  %264 = fcmp fast ole float %240, -1.000000e+00
  %265 = fcmp fast ole float %255, -1.000000e+00
  %266 = select i1 %264, float 0x47EFFFFFE0000000, float %240
  %267 = select i1 %265, float 0x47EFFFFFE0000000, float %255
  %268 = and i1 %264, %265
  %269 = call float @dx.op.binary.f32(i32 35, float %240, float %255)  ; FMax(a,b)
  %270 = call float @dx.op.binary.f32(i32 36, float %266, float %267)  ; FMin(a,b)
  %271 = select i1 %268, float %269, float %270
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %272 = and i32 %137, 7
  %273 = icmp eq i32 %272, 0
  %274 = and i1 %273, %25
  br i1 %274, label %275, label %276, !dx.controlflow.hints !51

; <label>:275                                     ; preds = %213
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %214, i32 %215, i32 undef, float %263, float %263, float %263, float %263, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %214, i32 %215, i32 undef, float %271, float %271, float %271, float %271, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %276

; <label>:276                                     ; preds = %275, %213
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
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !{!26, !28}
!26 = distinct !{!26, !27, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!27 = distinct !{!27, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!28 = distinct !{!28, !27, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!29 = !{!30, !32}
!30 = distinct !{!30, !31, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!31 = distinct !{!31, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!32 = distinct !{!32, !31, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = !{!35, !37}
!35 = distinct !{!35, !36, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!36 = distinct !{!36, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!37 = distinct !{!37, !36, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!40 = distinct !{!40, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!41 = distinct !{!41, !40, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = !{!44, !46}
!44 = distinct !{!44, !45, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!45 = distinct !{!45, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!46 = distinct !{!46, !45, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %floatZ"}
!49 = distinct !{!49, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z"}
!50 = distinct !{!50, !49, !"\01?groupshared_reduce_onestep@@YAXAIAV?$vector@M$01@@AIAIII@Z: %tileMaskBits"}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}

