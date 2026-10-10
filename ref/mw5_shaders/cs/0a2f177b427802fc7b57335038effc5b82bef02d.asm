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
; shader hash: 8ef1fcf8914df04061e336c88fe5627e
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
;   [64 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0            t17     1
;                                   texture     u32          2d      T1            t10     1
;                                       UAV     u32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%ConstantBufferShallowWater = type { %struct.FluidConstants }
%struct.FluidConstants = type { i32, i32, i32, float, i32, i32, float, float, i32, i32, <2 x float>, i32, i32, i32, i32 }

define void @cs_water_bounds_sdf() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13, !dx.controlflow.hints !17

; <label>:13                                      ; preds = %0
  %14 = shl i32 %8, 2
  %15 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %14, i32 undef)  ; BufferLoad(srv,index,wot)
  %16 = extractvalue %dx.types.ResRet.i32 %15, 0
  %17 = and i32 %16, 65535
  %18 = lshr i32 %16, 16
  br label %19

; <label>:19                                      ; preds = %13, %0
  %20 = phi i32 [ %17, %13 ], [ %8, %0 ]
  %21 = phi i32 [ %18, %13 ], [ %9, %0 ]
  %22 = shl i32 %20, 3
  %23 = shl i32 %21, 3
  %24 = add i32 %22, %6
  %25 = add i32 %23, %7
  %26 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %27 = extractvalue %dx.types.CBufRet.i32 %26, 1
  %28 = icmp uge i32 %24, %27
  %29 = icmp uge i32 %25, %27
  %30 = or i1 %28, %29
  br i1 %30, label %711, label %31, !dx.controlflow.hints !18

; <label>:31                                      ; preds = %19
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 0
  %34 = sub i32 %24, %33
  %35 = sub i32 %25, %33
  %36 = sitofp i32 %34 to float
  %37 = sitofp i32 %35 to float
  %38 = fadd fast float %36, 5.000000e-01
  %39 = fadd fast float %37, 5.000000e-01
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 3
  %42 = fmul fast float %38, %41
  %43 = fmul fast float %39, %41
  %44 = call float @dx.op.unary.f32(i32 22, float %42)  ; Frc(value)
  %45 = call float @dx.op.unary.f32(i32 22, float %43)  ; Frc(value)
  %46 = uitofp i32 %27 to float
  %47 = fmul fast float %46, %44
  %48 = fmul fast float %46, %45
  %49 = fptoui float %47 to i32
  %50 = fptoui float %48 to i32
  %51 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %49, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %52 = extractvalue %dx.types.ResRet.i32 %51, 0
  %53 = sitofp i32 %25 to float
  %54 = fadd fast float %53, 5.000000e-01
  %55 = fmul fast float %41, %54
  %56 = call float @dx.op.unary.f32(i32 22, float %55)  ; Frc(value)
  %57 = fmul fast float %46, %56
  %58 = fptoui float %57 to i32
  %59 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %49, i32 %58, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %60 = extractvalue %dx.types.ResRet.i32 %59, 0
  %61 = add i32 %33, %25
  %62 = sitofp i32 %61 to float
  %63 = fadd fast float %62, 5.000000e-01
  %64 = fmul fast float %63, %41
  %65 = call float @dx.op.unary.f32(i32 22, float %64)  ; Frc(value)
  %66 = fmul fast float %46, %65
  %67 = fptoui float %66 to i32
  %68 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %49, i32 %67, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %69 = extractvalue %dx.types.ResRet.i32 %68, 0
  %70 = sitofp i32 %24 to float
  %71 = fadd fast float %70, 5.000000e-01
  %72 = fmul fast float %41, %71
  %73 = call float @dx.op.unary.f32(i32 22, float %72)  ; Frc(value)
  %74 = fmul fast float %46, %73
  %75 = fptoui float %74 to i32
  %76 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %75, i32 %67, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %75, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 0
  %80 = add i32 %33, %24
  %81 = sitofp i32 %80 to float
  %82 = fadd fast float %81, 5.000000e-01
  %83 = fmul fast float %82, %41
  %84 = call float @dx.op.unary.f32(i32 22, float %83)  ; Frc(value)
  %85 = fmul fast float %46, %84
  %86 = fptoui float %85 to i32
  %87 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %86, i32 %67, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %86, i32 %58, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %90 = extractvalue %dx.types.ResRet.i32 %89, 0
  %91 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %86, i32 %50, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %75, i32 %58, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = icmp eq i32 %52, 0
  br i1 %95, label %156, label %96, !dx.controlflow.hints !19

; <label>:96                                      ; preds = %31
  %97 = and i32 %52, 2
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %123, !dx.controlflow.hints !20

; <label>:99                                      ; preds = %96
  %100 = lshr i32 %52, 9
  %101 = and i32 %100, 127
  %102 = lshr i32 %52, 2
  %103 = and i32 %102, 127
  %104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.i32 %104, 0
  %106 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %105)  ; UMin(a,b)
  %107 = add i32 %49, %101
  %108 = sub i32 %107, %106
  %109 = add i32 %50, %103
  %110 = sub i32 %109, %106
  %111 = sitofp i32 %108 to float
  %112 = sitofp i32 %110 to float
  %113 = fadd fast float %111, 5.000000e-01
  %114 = fadd fast float %112, 5.000000e-01
  %115 = fmul fast float %113, %41
  %116 = fmul fast float %114, %41
  %117 = call float @dx.op.unary.f32(i32 22, float %115)  ; Frc(value)
  %118 = call float @dx.op.unary.f32(i32 22, float %116)  ; Frc(value)
  %119 = fmul fast float %117, %46
  %120 = fmul fast float %118, %46
  %121 = fptoui float %119 to i32
  %122 = fptoui float %120 to i32
  br label %123

; <label>:123                                     ; preds = %99, %96
  %124 = phi i32 [ %121, %99 ], [ %49, %96 ]
  %125 = phi i32 [ %122, %99 ], [ %50, %96 ]
  %126 = sub nsw i32 %124, %24
  %127 = sub i32 0, %126
  %128 = call i32 @dx.op.binary.i32(i32 37, i32 %126, i32 %127)  ; IMax(a,b)
  %129 = sub nsw i32 %125, %25
  %130 = sub i32 0, %129
  %131 = call i32 @dx.op.binary.i32(i32 37, i32 %129, i32 %130)  ; IMax(a,b)
  %132 = lshr i32 %27, 1
  %133 = icmp sgt i32 %128, %132
  br i1 %133, label %134, label %139, !dx.controlflow.hints !21

; <label>:134                                     ; preds = %123
  %135 = icmp sgt i32 %24, %132
  %136 = sub i32 %27, %128
  %137 = sub i32 %128, %27
  %138 = select i1 %135, i32 %136, i32 %137
  br label %139

; <label>:139                                     ; preds = %134, %123
  %140 = phi i32 [ %138, %134 ], [ %126, %123 ]
  %141 = icmp sgt i32 %131, %132
  br i1 %141, label %142, label %147, !dx.controlflow.hints !22

; <label>:142                                     ; preds = %139
  %143 = icmp sgt i32 %25, %132
  %144 = sub i32 %27, %131
  %145 = sub i32 %131, %27
  %146 = select i1 %143, i32 %144, i32 %145
  br label %147

; <label>:147                                     ; preds = %142, %139
  %148 = phi i32 [ %146, %142 ], [ %129, %139 ]
  %149 = mul i32 %140, %140
  %150 = mul i32 %148, %148
  %151 = add nsw i32 %150, %149
  %152 = icmp ne i32 %151, -1
  %153 = select i1 %152, i32 %140, i32 0
  %154 = select i1 %152, i32 %148, i32 0
  %155 = zext i1 %152 to i32
  br label %156

; <label>:156                                     ; preds = %147, %31
  %157 = phi i32 [ 0, %31 ], [ %153, %147 ]
  %158 = phi i32 [ 0, %31 ], [ %154, %147 ]
  %159 = phi i32 [ -1, %31 ], [ %151, %147 ]
  %160 = phi i32 [ 0, %31 ], [ %155, %147 ]
  %161 = icmp eq i32 %60, 0
  br i1 %161, label %223, label %162, !dx.controlflow.hints !19

; <label>:162                                     ; preds = %156
  %163 = and i32 %60, 2
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %189, !dx.controlflow.hints !20

; <label>:165                                     ; preds = %162
  %166 = lshr i32 %60, 9
  %167 = and i32 %166, 127
  %168 = lshr i32 %60, 2
  %169 = and i32 %168, 127
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 0
  %172 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %171)  ; UMin(a,b)
  %173 = add i32 %49, %167
  %174 = sub i32 %173, %172
  %175 = add i32 %58, %169
  %176 = sub i32 %175, %172
  %177 = sitofp i32 %174 to float
  %178 = sitofp i32 %176 to float
  %179 = fadd fast float %177, 5.000000e-01
  %180 = fadd fast float %178, 5.000000e-01
  %181 = fmul fast float %179, %41
  %182 = fmul fast float %180, %41
  %183 = call float @dx.op.unary.f32(i32 22, float %181)  ; Frc(value)
  %184 = call float @dx.op.unary.f32(i32 22, float %182)  ; Frc(value)
  %185 = fmul fast float %183, %46
  %186 = fmul fast float %184, %46
  %187 = fptoui float %185 to i32
  %188 = fptoui float %186 to i32
  br label %189

; <label>:189                                     ; preds = %165, %162
  %190 = phi i32 [ %187, %165 ], [ %49, %162 ]
  %191 = phi i32 [ %188, %165 ], [ %58, %162 ]
  %192 = sub nsw i32 %190, %24
  %193 = sub i32 0, %192
  %194 = call i32 @dx.op.binary.i32(i32 37, i32 %192, i32 %193)  ; IMax(a,b)
  %195 = sub nsw i32 %191, %25
  %196 = sub i32 0, %195
  %197 = call i32 @dx.op.binary.i32(i32 37, i32 %195, i32 %196)  ; IMax(a,b)
  %198 = lshr i32 %27, 1
  %199 = icmp sgt i32 %194, %198
  br i1 %199, label %200, label %205, !dx.controlflow.hints !21

; <label>:200                                     ; preds = %189
  %201 = icmp sgt i32 %24, %198
  %202 = sub i32 %27, %194
  %203 = sub i32 %194, %27
  %204 = select i1 %201, i32 %202, i32 %203
  br label %205

; <label>:205                                     ; preds = %200, %189
  %206 = phi i32 [ %204, %200 ], [ %192, %189 ]
  %207 = icmp sgt i32 %197, %198
  br i1 %207, label %208, label %213, !dx.controlflow.hints !22

; <label>:208                                     ; preds = %205
  %209 = icmp sgt i32 %25, %198
  %210 = sub i32 %27, %197
  %211 = sub i32 %197, %27
  %212 = select i1 %209, i32 %210, i32 %211
  br label %213

; <label>:213                                     ; preds = %208, %205
  %214 = phi i32 [ %212, %208 ], [ %195, %205 ]
  %215 = mul i32 %206, %206
  %216 = mul i32 %214, %214
  %217 = add nsw i32 %216, %215
  %218 = icmp ult i32 %217, %159
  %219 = select i1 %218, i32 %206, i32 %157
  %220 = select i1 %218, i32 %214, i32 %158
  %221 = select i1 %218, i32 %217, i32 %159
  %222 = select i1 %218, i32 1, i32 %160
  br label %223

; <label>:223                                     ; preds = %213, %156
  %224 = phi i32 [ %157, %156 ], [ %219, %213 ]
  %225 = phi i32 [ %158, %156 ], [ %220, %213 ]
  %226 = phi i32 [ %159, %156 ], [ %221, %213 ]
  %227 = phi i32 [ %160, %156 ], [ %222, %213 ]
  %228 = icmp eq i32 %69, 0
  br i1 %228, label %290, label %229, !dx.controlflow.hints !19

; <label>:229                                     ; preds = %223
  %230 = and i32 %69, 2
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %256, !dx.controlflow.hints !20

; <label>:232                                     ; preds = %229
  %233 = lshr i32 %69, 9
  %234 = and i32 %233, 127
  %235 = lshr i32 %69, 2
  %236 = and i32 %235, 127
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 0
  %239 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %238)  ; UMin(a,b)
  %240 = add i32 %49, %234
  %241 = sub i32 %240, %239
  %242 = add i32 %67, %236
  %243 = sub i32 %242, %239
  %244 = sitofp i32 %241 to float
  %245 = sitofp i32 %243 to float
  %246 = fadd fast float %244, 5.000000e-01
  %247 = fadd fast float %245, 5.000000e-01
  %248 = fmul fast float %246, %41
  %249 = fmul fast float %247, %41
  %250 = call float @dx.op.unary.f32(i32 22, float %248)  ; Frc(value)
  %251 = call float @dx.op.unary.f32(i32 22, float %249)  ; Frc(value)
  %252 = fmul fast float %250, %46
  %253 = fmul fast float %251, %46
  %254 = fptoui float %252 to i32
  %255 = fptoui float %253 to i32
  br label %256

; <label>:256                                     ; preds = %232, %229
  %257 = phi i32 [ %254, %232 ], [ %49, %229 ]
  %258 = phi i32 [ %255, %232 ], [ %67, %229 ]
  %259 = sub nsw i32 %257, %24
  %260 = sub i32 0, %259
  %261 = call i32 @dx.op.binary.i32(i32 37, i32 %259, i32 %260)  ; IMax(a,b)
  %262 = sub nsw i32 %258, %25
  %263 = sub i32 0, %262
  %264 = call i32 @dx.op.binary.i32(i32 37, i32 %262, i32 %263)  ; IMax(a,b)
  %265 = lshr i32 %27, 1
  %266 = icmp sgt i32 %261, %265
  br i1 %266, label %267, label %272, !dx.controlflow.hints !21

; <label>:267                                     ; preds = %256
  %268 = icmp sgt i32 %24, %265
  %269 = sub i32 %27, %261
  %270 = sub i32 %261, %27
  %271 = select i1 %268, i32 %269, i32 %270
  br label %272

; <label>:272                                     ; preds = %267, %256
  %273 = phi i32 [ %271, %267 ], [ %259, %256 ]
  %274 = icmp sgt i32 %264, %265
  br i1 %274, label %275, label %280, !dx.controlflow.hints !22

; <label>:275                                     ; preds = %272
  %276 = icmp sgt i32 %25, %265
  %277 = sub i32 %27, %264
  %278 = sub i32 %264, %27
  %279 = select i1 %276, i32 %277, i32 %278
  br label %280

; <label>:280                                     ; preds = %275, %272
  %281 = phi i32 [ %279, %275 ], [ %262, %272 ]
  %282 = mul i32 %273, %273
  %283 = mul i32 %281, %281
  %284 = add nsw i32 %283, %282
  %285 = icmp ult i32 %284, %226
  %286 = select i1 %285, i32 %273, i32 %224
  %287 = select i1 %285, i32 %281, i32 %225
  %288 = select i1 %285, i32 %284, i32 %226
  %289 = select i1 %285, i32 1, i32 %227
  br label %290

; <label>:290                                     ; preds = %280, %223
  %291 = phi i32 [ %224, %223 ], [ %286, %280 ]
  %292 = phi i32 [ %225, %223 ], [ %287, %280 ]
  %293 = phi i32 [ %226, %223 ], [ %288, %280 ]
  %294 = phi i32 [ %227, %223 ], [ %289, %280 ]
  %295 = icmp eq i32 %77, 0
  br i1 %295, label %357, label %296, !dx.controlflow.hints !19

; <label>:296                                     ; preds = %290
  %297 = and i32 %77, 2
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %323, !dx.controlflow.hints !20

; <label>:299                                     ; preds = %296
  %300 = lshr i32 %77, 9
  %301 = and i32 %300, 127
  %302 = lshr i32 %77, 2
  %303 = and i32 %302, 127
  %304 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %305 = extractvalue %dx.types.CBufRet.i32 %304, 0
  %306 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %305)  ; UMin(a,b)
  %307 = add i32 %75, %301
  %308 = sub i32 %307, %306
  %309 = add i32 %67, %303
  %310 = sub i32 %309, %306
  %311 = sitofp i32 %308 to float
  %312 = sitofp i32 %310 to float
  %313 = fadd fast float %311, 5.000000e-01
  %314 = fadd fast float %312, 5.000000e-01
  %315 = fmul fast float %313, %41
  %316 = fmul fast float %314, %41
  %317 = call float @dx.op.unary.f32(i32 22, float %315)  ; Frc(value)
  %318 = call float @dx.op.unary.f32(i32 22, float %316)  ; Frc(value)
  %319 = fmul fast float %317, %46
  %320 = fmul fast float %318, %46
  %321 = fptoui float %319 to i32
  %322 = fptoui float %320 to i32
  br label %323

; <label>:323                                     ; preds = %299, %296
  %324 = phi i32 [ %321, %299 ], [ %75, %296 ]
  %325 = phi i32 [ %322, %299 ], [ %67, %296 ]
  %326 = sub nsw i32 %324, %24
  %327 = sub i32 0, %326
  %328 = call i32 @dx.op.binary.i32(i32 37, i32 %326, i32 %327)  ; IMax(a,b)
  %329 = sub nsw i32 %325, %25
  %330 = sub i32 0, %329
  %331 = call i32 @dx.op.binary.i32(i32 37, i32 %329, i32 %330)  ; IMax(a,b)
  %332 = lshr i32 %27, 1
  %333 = icmp sgt i32 %328, %332
  br i1 %333, label %334, label %339, !dx.controlflow.hints !21

; <label>:334                                     ; preds = %323
  %335 = icmp sgt i32 %24, %332
  %336 = sub i32 %27, %328
  %337 = sub i32 %328, %27
  %338 = select i1 %335, i32 %336, i32 %337
  br label %339

; <label>:339                                     ; preds = %334, %323
  %340 = phi i32 [ %338, %334 ], [ %326, %323 ]
  %341 = icmp sgt i32 %331, %332
  br i1 %341, label %342, label %347, !dx.controlflow.hints !22

; <label>:342                                     ; preds = %339
  %343 = icmp sgt i32 %25, %332
  %344 = sub i32 %27, %331
  %345 = sub i32 %331, %27
  %346 = select i1 %343, i32 %344, i32 %345
  br label %347

; <label>:347                                     ; preds = %342, %339
  %348 = phi i32 [ %346, %342 ], [ %329, %339 ]
  %349 = mul i32 %340, %340
  %350 = mul i32 %348, %348
  %351 = add nsw i32 %350, %349
  %352 = icmp ult i32 %351, %293
  %353 = select i1 %352, i32 %340, i32 %291
  %354 = select i1 %352, i32 %348, i32 %292
  %355 = select i1 %352, i32 %351, i32 %293
  %356 = select i1 %352, i32 1, i32 %294
  br label %357

; <label>:357                                     ; preds = %347, %290
  %358 = phi i32 [ %291, %290 ], [ %353, %347 ]
  %359 = phi i32 [ %292, %290 ], [ %354, %347 ]
  %360 = phi i32 [ %293, %290 ], [ %355, %347 ]
  %361 = phi i32 [ %294, %290 ], [ %356, %347 ]
  %362 = icmp eq i32 %79, 0
  br i1 %362, label %424, label %363, !dx.controlflow.hints !19

; <label>:363                                     ; preds = %357
  %364 = and i32 %79, 2
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %390, !dx.controlflow.hints !20

; <label>:366                                     ; preds = %363
  %367 = lshr i32 %79, 9
  %368 = and i32 %367, 127
  %369 = lshr i32 %79, 2
  %370 = and i32 %369, 127
  %371 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %372 = extractvalue %dx.types.CBufRet.i32 %371, 0
  %373 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %372)  ; UMin(a,b)
  %374 = add i32 %75, %368
  %375 = sub i32 %374, %373
  %376 = add i32 %50, %370
  %377 = sub i32 %376, %373
  %378 = sitofp i32 %375 to float
  %379 = sitofp i32 %377 to float
  %380 = fadd fast float %378, 5.000000e-01
  %381 = fadd fast float %379, 5.000000e-01
  %382 = fmul fast float %380, %41
  %383 = fmul fast float %381, %41
  %384 = call float @dx.op.unary.f32(i32 22, float %382)  ; Frc(value)
  %385 = call float @dx.op.unary.f32(i32 22, float %383)  ; Frc(value)
  %386 = fmul fast float %384, %46
  %387 = fmul fast float %385, %46
  %388 = fptoui float %386 to i32
  %389 = fptoui float %387 to i32
  br label %390

; <label>:390                                     ; preds = %366, %363
  %391 = phi i32 [ %388, %366 ], [ %75, %363 ]
  %392 = phi i32 [ %389, %366 ], [ %50, %363 ]
  %393 = sub nsw i32 %391, %24
  %394 = sub i32 0, %393
  %395 = call i32 @dx.op.binary.i32(i32 37, i32 %393, i32 %394)  ; IMax(a,b)
  %396 = sub nsw i32 %392, %25
  %397 = sub i32 0, %396
  %398 = call i32 @dx.op.binary.i32(i32 37, i32 %396, i32 %397)  ; IMax(a,b)
  %399 = lshr i32 %27, 1
  %400 = icmp sgt i32 %395, %399
  br i1 %400, label %401, label %406, !dx.controlflow.hints !21

; <label>:401                                     ; preds = %390
  %402 = icmp sgt i32 %24, %399
  %403 = sub i32 %27, %395
  %404 = sub i32 %395, %27
  %405 = select i1 %402, i32 %403, i32 %404
  br label %406

; <label>:406                                     ; preds = %401, %390
  %407 = phi i32 [ %405, %401 ], [ %393, %390 ]
  %408 = icmp sgt i32 %398, %399
  br i1 %408, label %409, label %414, !dx.controlflow.hints !22

; <label>:409                                     ; preds = %406
  %410 = icmp sgt i32 %25, %399
  %411 = sub i32 %27, %398
  %412 = sub i32 %398, %27
  %413 = select i1 %410, i32 %411, i32 %412
  br label %414

; <label>:414                                     ; preds = %409, %406
  %415 = phi i32 [ %413, %409 ], [ %396, %406 ]
  %416 = mul i32 %407, %407
  %417 = mul i32 %415, %415
  %418 = add nsw i32 %417, %416
  %419 = icmp ult i32 %418, %360
  %420 = select i1 %419, i32 %407, i32 %358
  %421 = select i1 %419, i32 %415, i32 %359
  %422 = select i1 %419, i32 %418, i32 %360
  %423 = select i1 %419, i32 1, i32 %361
  br label %424

; <label>:424                                     ; preds = %414, %357
  %425 = phi i32 [ %358, %357 ], [ %420, %414 ]
  %426 = phi i32 [ %359, %357 ], [ %421, %414 ]
  %427 = phi i32 [ %360, %357 ], [ %422, %414 ]
  %428 = phi i32 [ %361, %357 ], [ %423, %414 ]
  %429 = icmp eq i32 %88, 0
  br i1 %429, label %491, label %430, !dx.controlflow.hints !19

; <label>:430                                     ; preds = %424
  %431 = and i32 %88, 2
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %457, !dx.controlflow.hints !20

; <label>:433                                     ; preds = %430
  %434 = lshr i32 %88, 9
  %435 = and i32 %434, 127
  %436 = lshr i32 %88, 2
  %437 = and i32 %436, 127
  %438 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.i32 %438, 0
  %440 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %439)  ; UMin(a,b)
  %441 = add i32 %86, %435
  %442 = sub i32 %441, %440
  %443 = add i32 %67, %437
  %444 = sub i32 %443, %440
  %445 = sitofp i32 %442 to float
  %446 = sitofp i32 %444 to float
  %447 = fadd fast float %445, 5.000000e-01
  %448 = fadd fast float %446, 5.000000e-01
  %449 = fmul fast float %447, %41
  %450 = fmul fast float %448, %41
  %451 = call float @dx.op.unary.f32(i32 22, float %449)  ; Frc(value)
  %452 = call float @dx.op.unary.f32(i32 22, float %450)  ; Frc(value)
  %453 = fmul fast float %451, %46
  %454 = fmul fast float %452, %46
  %455 = fptoui float %453 to i32
  %456 = fptoui float %454 to i32
  br label %457

; <label>:457                                     ; preds = %433, %430
  %458 = phi i32 [ %455, %433 ], [ %86, %430 ]
  %459 = phi i32 [ %456, %433 ], [ %67, %430 ]
  %460 = sub nsw i32 %458, %24
  %461 = sub i32 0, %460
  %462 = call i32 @dx.op.binary.i32(i32 37, i32 %460, i32 %461)  ; IMax(a,b)
  %463 = sub nsw i32 %459, %25
  %464 = sub i32 0, %463
  %465 = call i32 @dx.op.binary.i32(i32 37, i32 %463, i32 %464)  ; IMax(a,b)
  %466 = lshr i32 %27, 1
  %467 = icmp sgt i32 %462, %466
  br i1 %467, label %468, label %473, !dx.controlflow.hints !21

; <label>:468                                     ; preds = %457
  %469 = icmp sgt i32 %24, %466
  %470 = sub i32 %27, %462
  %471 = sub i32 %462, %27
  %472 = select i1 %469, i32 %470, i32 %471
  br label %473

; <label>:473                                     ; preds = %468, %457
  %474 = phi i32 [ %472, %468 ], [ %460, %457 ]
  %475 = icmp sgt i32 %465, %466
  br i1 %475, label %476, label %481, !dx.controlflow.hints !22

; <label>:476                                     ; preds = %473
  %477 = icmp sgt i32 %25, %466
  %478 = sub i32 %27, %465
  %479 = sub i32 %465, %27
  %480 = select i1 %477, i32 %478, i32 %479
  br label %481

; <label>:481                                     ; preds = %476, %473
  %482 = phi i32 [ %480, %476 ], [ %463, %473 ]
  %483 = mul i32 %474, %474
  %484 = mul i32 %482, %482
  %485 = add nsw i32 %484, %483
  %486 = icmp ult i32 %485, %427
  %487 = select i1 %486, i32 %474, i32 %425
  %488 = select i1 %486, i32 %482, i32 %426
  %489 = select i1 %486, i32 %485, i32 %427
  %490 = select i1 %486, i32 1, i32 %428
  br label %491

; <label>:491                                     ; preds = %481, %424
  %492 = phi i32 [ %425, %424 ], [ %487, %481 ]
  %493 = phi i32 [ %426, %424 ], [ %488, %481 ]
  %494 = phi i32 [ %427, %424 ], [ %489, %481 ]
  %495 = phi i32 [ %428, %424 ], [ %490, %481 ]
  %496 = icmp eq i32 %90, 0
  br i1 %496, label %558, label %497, !dx.controlflow.hints !19

; <label>:497                                     ; preds = %491
  %498 = and i32 %90, 2
  %499 = icmp eq i32 %498, 0
  br i1 %499, label %500, label %524, !dx.controlflow.hints !20

; <label>:500                                     ; preds = %497
  %501 = lshr i32 %90, 9
  %502 = and i32 %501, 127
  %503 = lshr i32 %90, 2
  %504 = and i32 %503, 127
  %505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.i32 %505, 0
  %507 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %506)  ; UMin(a,b)
  %508 = add i32 %86, %502
  %509 = sub i32 %508, %507
  %510 = add i32 %58, %504
  %511 = sub i32 %510, %507
  %512 = sitofp i32 %509 to float
  %513 = sitofp i32 %511 to float
  %514 = fadd fast float %512, 5.000000e-01
  %515 = fadd fast float %513, 5.000000e-01
  %516 = fmul fast float %514, %41
  %517 = fmul fast float %515, %41
  %518 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %519 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %520 = fmul fast float %518, %46
  %521 = fmul fast float %519, %46
  %522 = fptoui float %520 to i32
  %523 = fptoui float %521 to i32
  br label %524

; <label>:524                                     ; preds = %500, %497
  %525 = phi i32 [ %522, %500 ], [ %86, %497 ]
  %526 = phi i32 [ %523, %500 ], [ %58, %497 ]
  %527 = sub nsw i32 %525, %24
  %528 = sub i32 0, %527
  %529 = call i32 @dx.op.binary.i32(i32 37, i32 %527, i32 %528)  ; IMax(a,b)
  %530 = sub nsw i32 %526, %25
  %531 = sub i32 0, %530
  %532 = call i32 @dx.op.binary.i32(i32 37, i32 %530, i32 %531)  ; IMax(a,b)
  %533 = lshr i32 %27, 1
  %534 = icmp sgt i32 %529, %533
  br i1 %534, label %535, label %540, !dx.controlflow.hints !21

; <label>:535                                     ; preds = %524
  %536 = icmp sgt i32 %24, %533
  %537 = sub i32 %27, %529
  %538 = sub i32 %529, %27
  %539 = select i1 %536, i32 %537, i32 %538
  br label %540

; <label>:540                                     ; preds = %535, %524
  %541 = phi i32 [ %539, %535 ], [ %527, %524 ]
  %542 = icmp sgt i32 %532, %533
  br i1 %542, label %543, label %548, !dx.controlflow.hints !22

; <label>:543                                     ; preds = %540
  %544 = icmp sgt i32 %25, %533
  %545 = sub i32 %27, %532
  %546 = sub i32 %532, %27
  %547 = select i1 %544, i32 %545, i32 %546
  br label %548

; <label>:548                                     ; preds = %543, %540
  %549 = phi i32 [ %547, %543 ], [ %530, %540 ]
  %550 = mul i32 %541, %541
  %551 = mul i32 %549, %549
  %552 = add nsw i32 %551, %550
  %553 = icmp ult i32 %552, %494
  %554 = select i1 %553, i32 %541, i32 %492
  %555 = select i1 %553, i32 %549, i32 %493
  %556 = select i1 %553, i32 %552, i32 %494
  %557 = select i1 %553, i32 1, i32 %495
  br label %558

; <label>:558                                     ; preds = %548, %491
  %559 = phi i32 [ %492, %491 ], [ %554, %548 ]
  %560 = phi i32 [ %493, %491 ], [ %555, %548 ]
  %561 = phi i32 [ %494, %491 ], [ %556, %548 ]
  %562 = phi i32 [ %495, %491 ], [ %557, %548 ]
  %563 = icmp eq i32 %92, 0
  br i1 %563, label %625, label %564, !dx.controlflow.hints !19

; <label>:564                                     ; preds = %558
  %565 = and i32 %92, 2
  %566 = icmp eq i32 %565, 0
  br i1 %566, label %567, label %591, !dx.controlflow.hints !20

; <label>:567                                     ; preds = %564
  %568 = lshr i32 %92, 9
  %569 = and i32 %568, 127
  %570 = lshr i32 %92, 2
  %571 = and i32 %570, 127
  %572 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %573 = extractvalue %dx.types.CBufRet.i32 %572, 0
  %574 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %573)  ; UMin(a,b)
  %575 = add i32 %86, %569
  %576 = sub i32 %575, %574
  %577 = add i32 %50, %571
  %578 = sub i32 %577, %574
  %579 = sitofp i32 %576 to float
  %580 = sitofp i32 %578 to float
  %581 = fadd fast float %579, 5.000000e-01
  %582 = fadd fast float %580, 5.000000e-01
  %583 = fmul fast float %581, %41
  %584 = fmul fast float %582, %41
  %585 = call float @dx.op.unary.f32(i32 22, float %583)  ; Frc(value)
  %586 = call float @dx.op.unary.f32(i32 22, float %584)  ; Frc(value)
  %587 = fmul fast float %585, %46
  %588 = fmul fast float %586, %46
  %589 = fptoui float %587 to i32
  %590 = fptoui float %588 to i32
  br label %591

; <label>:591                                     ; preds = %567, %564
  %592 = phi i32 [ %589, %567 ], [ %86, %564 ]
  %593 = phi i32 [ %590, %567 ], [ %50, %564 ]
  %594 = sub nsw i32 %592, %24
  %595 = sub i32 0, %594
  %596 = call i32 @dx.op.binary.i32(i32 37, i32 %594, i32 %595)  ; IMax(a,b)
  %597 = sub nsw i32 %593, %25
  %598 = sub i32 0, %597
  %599 = call i32 @dx.op.binary.i32(i32 37, i32 %597, i32 %598)  ; IMax(a,b)
  %600 = lshr i32 %27, 1
  %601 = icmp sgt i32 %596, %600
  br i1 %601, label %602, label %607, !dx.controlflow.hints !21

; <label>:602                                     ; preds = %591
  %603 = icmp sgt i32 %24, %600
  %604 = sub i32 %27, %596
  %605 = sub i32 %596, %27
  %606 = select i1 %603, i32 %604, i32 %605
  br label %607

; <label>:607                                     ; preds = %602, %591
  %608 = phi i32 [ %606, %602 ], [ %594, %591 ]
  %609 = icmp sgt i32 %599, %600
  br i1 %609, label %610, label %615, !dx.controlflow.hints !22

; <label>:610                                     ; preds = %607
  %611 = icmp sgt i32 %25, %600
  %612 = sub i32 %27, %599
  %613 = sub i32 %599, %27
  %614 = select i1 %611, i32 %612, i32 %613
  br label %615

; <label>:615                                     ; preds = %610, %607
  %616 = phi i32 [ %614, %610 ], [ %597, %607 ]
  %617 = mul i32 %608, %608
  %618 = mul i32 %616, %616
  %619 = add nsw i32 %618, %617
  %620 = icmp ult i32 %619, %561
  %621 = select i1 %620, i32 %608, i32 %559
  %622 = select i1 %620, i32 %616, i32 %560
  %623 = select i1 %620, i32 %619, i32 %561
  %624 = select i1 %620, i32 1, i32 %562
  br label %625

; <label>:625                                     ; preds = %615, %558
  %626 = phi i32 [ %559, %558 ], [ %621, %615 ]
  %627 = phi i32 [ %560, %558 ], [ %622, %615 ]
  %628 = phi i32 [ %561, %558 ], [ %623, %615 ]
  %629 = phi i32 [ %562, %558 ], [ %624, %615 ]
  %630 = icmp eq i32 %94, 0
  %631 = and i32 %94, 2
  br i1 %630, label %691, label %632, !dx.controlflow.hints !19

; <label>:632                                     ; preds = %625
  %633 = icmp eq i32 %631, 0
  br i1 %633, label %634, label %658, !dx.controlflow.hints !20

; <label>:634                                     ; preds = %632
  %635 = lshr i32 %94, 9
  %636 = and i32 %635, 127
  %637 = lshr i32 %94, 2
  %638 = and i32 %637, 127
  %639 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %640 = extractvalue %dx.types.CBufRet.i32 %639, 0
  %641 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %640)  ; UMin(a,b)
  %642 = add i32 %75, %636
  %643 = sub i32 %642, %641
  %644 = add i32 %58, %638
  %645 = sub i32 %644, %641
  %646 = sitofp i32 %643 to float
  %647 = sitofp i32 %645 to float
  %648 = fadd fast float %646, 5.000000e-01
  %649 = fadd fast float %647, 5.000000e-01
  %650 = fmul fast float %648, %41
  %651 = fmul fast float %649, %41
  %652 = call float @dx.op.unary.f32(i32 22, float %650)  ; Frc(value)
  %653 = call float @dx.op.unary.f32(i32 22, float %651)  ; Frc(value)
  %654 = fmul fast float %652, %46
  %655 = fmul fast float %653, %46
  %656 = fptoui float %654 to i32
  %657 = fptoui float %655 to i32
  br label %658

; <label>:658                                     ; preds = %634, %632
  %659 = phi i32 [ %656, %634 ], [ %75, %632 ]
  %660 = phi i32 [ %657, %634 ], [ %58, %632 ]
  %661 = sub nsw i32 %659, %24
  %662 = sub i32 0, %661
  %663 = call i32 @dx.op.binary.i32(i32 37, i32 %661, i32 %662)  ; IMax(a,b)
  %664 = sub nsw i32 %660, %25
  %665 = sub i32 0, %664
  %666 = call i32 @dx.op.binary.i32(i32 37, i32 %664, i32 %665)  ; IMax(a,b)
  %667 = lshr i32 %27, 1
  %668 = icmp sgt i32 %663, %667
  br i1 %668, label %669, label %674, !dx.controlflow.hints !21

; <label>:669                                     ; preds = %658
  %670 = icmp sgt i32 %24, %667
  %671 = sub i32 %27, %663
  %672 = sub i32 %663, %27
  %673 = select i1 %670, i32 %671, i32 %672
  br label %674

; <label>:674                                     ; preds = %669, %658
  %675 = phi i32 [ %673, %669 ], [ %661, %658 ]
  %676 = icmp sgt i32 %666, %667
  br i1 %676, label %677, label %682, !dx.controlflow.hints !22

; <label>:677                                     ; preds = %674
  %678 = icmp sgt i32 %25, %667
  %679 = sub i32 %27, %666
  %680 = sub i32 %666, %27
  %681 = select i1 %678, i32 %679, i32 %680
  br label %682

; <label>:682                                     ; preds = %677, %674
  %683 = phi i32 [ %681, %677 ], [ %664, %674 ]
  %684 = mul i32 %675, %675
  %685 = mul i32 %683, %683
  %686 = add nsw i32 %685, %684
  %687 = icmp ult i32 %686, %628
  %688 = select i1 %687, i32 %675, i32 %626
  %689 = select i1 %687, i32 %683, i32 %627
  %690 = select i1 %687, i32 1, i32 %629
  br label %691

; <label>:691                                     ; preds = %682, %625
  %692 = phi i32 [ %688, %682 ], [ %626, %625 ]
  %693 = phi i32 [ %689, %682 ], [ %627, %625 ]
  %694 = phi i32 [ %690, %682 ], [ %629, %625 ]
  %695 = icmp eq i32 %631, 0
  br i1 %695, label %696, label %710, !dx.controlflow.hints !23

; <label>:696                                     ; preds = %691
  %697 = icmp ne i32 %694, 0
  %698 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %699 = extractvalue %dx.types.CBufRet.i32 %698, 0
  %700 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %699)  ; UMin(a,b)
  %701 = add i32 %700, %692
  %702 = add i32 %700, %693
  %703 = shl i32 %701, 9
  %704 = and i32 %703, 65024
  %705 = shl i32 %702, 2
  %706 = and i32 %705, 508
  %707 = or i32 %704, %706
  %708 = or i32 %707, 1
  %709 = select i1 %697, i32 %708, i32 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 undef, i32 %709, i32 %709, i32 %709, i32 %709, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %711

; <label>:710                                     ; preds = %691
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %24, i32 %25, i32 undef, i32 %94, i32 %94, i32 %94, i32 %94, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %711

; <label>:711                                     ; preds = %710, %696, %19
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 5}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!11 = !{!12, !13}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{i32 1, %ConstantBufferShallowWater* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!14 = !{void ()* @cs_water_bounds_sdf, !"cs_water_bounds_sdf", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 8, i32 8, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}

