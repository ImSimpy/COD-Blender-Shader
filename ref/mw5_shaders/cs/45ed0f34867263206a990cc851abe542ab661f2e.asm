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
; shader hash: 3deb62ca0bc16d935c9df13b6ba162dd
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
;                                   texture     u32          2d      T1            t13     1
;                                   texture     u32          2d      T2            t10     1
;                                       UAV     u32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
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

define void @cs_water_bounds_sdf_upscale() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = shl i32 %9, 2
  %11 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %10, i32 undef)  ; BufferLoad(srv,index,wot)
  %12 = extractvalue %dx.types.ResRet.i32 %11, 0
  %13 = lshr i32 %12, 16
  %14 = shl i32 %12, 3
  %15 = and i32 %14, 524280
  %16 = shl nuw nsw i32 %13, 3
  %17 = add i32 %15, %7
  %18 = add i32 %16, %8
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %21 = icmp uge i32 %17, %20
  %22 = icmp uge i32 %18, %20
  %23 = or i1 %21, %22
  br i1 %23, label %277, label %24, !dx.controlflow.hints !18

; <label>:24                                      ; preds = %0
  %25 = sitofp i32 %17 to float
  %26 = sitofp i32 %18 to float
  %27 = fadd fast float %25, 5.000000e-01
  %28 = fadd fast float %26, 5.000000e-01
  %29 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %30 = extractvalue %dx.types.CBufRet.f32 %29, 3
  %31 = fmul fast float %30, %27
  %32 = fmul fast float %30, %28
  %33 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.i32 %33, 0
  %35 = uitofp i32 %34 to float
  %36 = fmul fast float %31, %35
  %37 = fmul fast float %32, %35
  %38 = fptoui float %36 to i32
  %39 = fptoui float %37 to i32
  %40 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %38, i32 %39, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %41 = extractvalue %dx.types.ResRet.i32 %40, 0
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44, !dx.controlflow.hints !19

; <label>:43                                      ; preds = %24
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, i32 0, i32 0, i32 0, i32 0, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %277

; <label>:44                                      ; preds = %24
  %45 = and i32 %41, 2
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %274, !dx.controlflow.hints !20

; <label>:47                                      ; preds = %44
  %48 = extractvalue %dx.types.CBufRet.f32 %29, 2
  %49 = lshr i32 %41, 9
  %50 = and i32 %49, 127
  %51 = lshr i32 %41, 2
  %52 = and i32 %51, 127
  %53 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %6, i32 435)  ; CBufferLoadLegacy(handle,regIndex)
  %54 = extractvalue %dx.types.CBufRet.i32 %53, 0
  %55 = call i32 @dx.op.binary.i32(i32 40, i32 128, i32 %54)  ; UMin(a,b)
  %56 = add i32 %50, %38
  %57 = sub i32 %56, %55
  %58 = add i32 %52, %39
  %59 = sub i32 %58, %55
  %60 = sitofp i32 %57 to float
  %61 = sitofp i32 %59 to float
  %62 = fadd fast float %60, 5.000000e-01
  %63 = fadd fast float %61, 5.000000e-01
  %64 = fmul fast float %62, %48
  %65 = fmul fast float %63, %48
  %66 = call float @dx.op.unary.f32(i32 22, float %64)  ; Frc(value)
  %67 = call float @dx.op.unary.f32(i32 22, float %65)  ; Frc(value)
  %68 = fmul fast float %66, %35
  %69 = fmul fast float %67, %35
  %70 = fptoui float %68 to i32
  %71 = fptoui float %69 to i32
  %72 = uitofp i32 %70 to float
  %73 = uitofp i32 %71 to float
  %74 = fadd fast float %72, 5.000000e-01
  %75 = fadd fast float %73, 5.000000e-01
  %76 = fmul fast float %74, %48
  %77 = fmul fast float %75, %48
  %78 = fmul fast float %30, 5.000000e-01
  %79 = fsub fast float %76, %78
  %80 = fsub fast float %77, %78
  %81 = extractvalue %dx.types.CBufRet.i32 %33, 1
  %82 = uitofp i32 %81 to float
  %83 = fmul fast float %79, %82
  %84 = fmul fast float %80, %82
  %85 = fptoui float %83 to i32
  %86 = fptoui float %84 to i32
  %87 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %85, i32 %86, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %88 = extractvalue %dx.types.ResRet.i32 %87, 0
  %89 = add i32 %85, 1
  %90 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %89, i32 %86, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %91 = extractvalue %dx.types.ResRet.i32 %90, 0
  %92 = add i32 %86, 1
  %93 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %85, i32 %92, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %94 = extractvalue %dx.types.ResRet.i32 %93, 0
  %95 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %89, i32 %92, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = icmp eq i32 %88, 0
  br i1 %97, label %134, label %98, !dx.controlflow.hints !21

; <label>:98                                      ; preds = %47
  %99 = call float @dx.op.unary.f32(i32 22, float %79)  ; Frc(value)
  %100 = call float @dx.op.unary.f32(i32 22, float %80)  ; Frc(value)
  %101 = fmul fast float %82, %99
  %102 = fmul fast float %82, %100
  %103 = fptoui float %101 to i32
  %104 = fptoui float %102 to i32
  %105 = sub nsw i32 %103, %17
  %106 = sub i32 0, %105
  %107 = call i32 @dx.op.binary.i32(i32 37, i32 %105, i32 %106)  ; IMax(a,b)
  %108 = sub nsw i32 %104, %18
  %109 = sub i32 0, %108
  %110 = call i32 @dx.op.binary.i32(i32 37, i32 %108, i32 %109)  ; IMax(a,b)
  %111 = lshr i32 %81, 1
  %112 = icmp sgt i32 %107, %111
  br i1 %112, label %113, label %118, !dx.controlflow.hints !22

; <label>:113                                     ; preds = %98
  %114 = icmp sgt i32 %17, %111
  %115 = sub i32 %81, %107
  %116 = sub i32 %107, %81
  %117 = select i1 %114, i32 %115, i32 %116
  br label %118

; <label>:118                                     ; preds = %113, %98
  %119 = phi i32 [ %117, %113 ], [ %105, %98 ]
  %120 = icmp sgt i32 %110, %111
  br i1 %120, label %121, label %126, !dx.controlflow.hints !23

; <label>:121                                     ; preds = %118
  %122 = icmp sgt i32 %18, %111
  %123 = sub i32 %81, %110
  %124 = sub i32 %110, %81
  %125 = select i1 %122, i32 %123, i32 %124
  br label %126

; <label>:126                                     ; preds = %121, %118
  %127 = phi i32 [ %125, %121 ], [ %108, %118 ]
  %128 = mul i32 %119, %119
  %129 = mul i32 %127, %127
  %130 = add nsw i32 %129, %128
  %131 = icmp ne i32 %130, -1
  %132 = select i1 %131, i32 %119, i32 0
  %133 = select i1 %131, i32 %127, i32 0
  br label %134

; <label>:134                                     ; preds = %126, %47
  %135 = phi i32 [ -1, %47 ], [ %130, %126 ]
  %136 = phi i32 [ 0, %47 ], [ %132, %126 ]
  %137 = phi i32 [ 0, %47 ], [ %133, %126 ]
  %138 = icmp eq i32 %91, 0
  br i1 %138, label %177, label %139, !dx.controlflow.hints !21

; <label>:139                                     ; preds = %134
  %140 = fadd fast float %78, %76
  %141 = call float @dx.op.unary.f32(i32 22, float %140)  ; Frc(value)
  %142 = call float @dx.op.unary.f32(i32 22, float %80)  ; Frc(value)
  %143 = fmul fast float %82, %141
  %144 = fmul fast float %82, %142
  %145 = fptoui float %143 to i32
  %146 = fptoui float %144 to i32
  %147 = sub nsw i32 %145, %17
  %148 = sub i32 0, %147
  %149 = call i32 @dx.op.binary.i32(i32 37, i32 %147, i32 %148)  ; IMax(a,b)
  %150 = sub nsw i32 %146, %18
  %151 = sub i32 0, %150
  %152 = call i32 @dx.op.binary.i32(i32 37, i32 %150, i32 %151)  ; IMax(a,b)
  %153 = lshr i32 %81, 1
  %154 = icmp sgt i32 %149, %153
  br i1 %154, label %155, label %160, !dx.controlflow.hints !22

; <label>:155                                     ; preds = %139
  %156 = icmp sgt i32 %17, %153
  %157 = sub i32 %81, %149
  %158 = sub i32 %149, %81
  %159 = select i1 %156, i32 %157, i32 %158
  br label %160

; <label>:160                                     ; preds = %155, %139
  %161 = phi i32 [ %159, %155 ], [ %147, %139 ]
  %162 = icmp sgt i32 %152, %153
  br i1 %162, label %163, label %168, !dx.controlflow.hints !23

; <label>:163                                     ; preds = %160
  %164 = icmp sgt i32 %18, %153
  %165 = sub i32 %81, %152
  %166 = sub i32 %152, %81
  %167 = select i1 %164, i32 %165, i32 %166
  br label %168

; <label>:168                                     ; preds = %163, %160
  %169 = phi i32 [ %167, %163 ], [ %150, %160 ]
  %170 = mul i32 %161, %161
  %171 = mul i32 %169, %169
  %172 = add nsw i32 %171, %170
  %173 = icmp ult i32 %172, %135
  %174 = select i1 %173, i32 %172, i32 %135
  %175 = select i1 %173, i32 %161, i32 %136
  %176 = select i1 %173, i32 %169, i32 %137
  br label %177

; <label>:177                                     ; preds = %168, %134
  %178 = phi i32 [ %135, %134 ], [ %174, %168 ]
  %179 = phi i32 [ %136, %134 ], [ %175, %168 ]
  %180 = phi i32 [ %137, %134 ], [ %176, %168 ]
  %181 = icmp eq i32 %94, 0
  br i1 %181, label %220, label %182, !dx.controlflow.hints !21

; <label>:182                                     ; preds = %177
  %183 = fadd fast float %78, %77
  %184 = call float @dx.op.unary.f32(i32 22, float %79)  ; Frc(value)
  %185 = call float @dx.op.unary.f32(i32 22, float %183)  ; Frc(value)
  %186 = fmul fast float %82, %184
  %187 = fmul fast float %82, %185
  %188 = fptoui float %186 to i32
  %189 = fptoui float %187 to i32
  %190 = sub nsw i32 %188, %17
  %191 = sub i32 0, %190
  %192 = call i32 @dx.op.binary.i32(i32 37, i32 %190, i32 %191)  ; IMax(a,b)
  %193 = sub nsw i32 %189, %18
  %194 = sub i32 0, %193
  %195 = call i32 @dx.op.binary.i32(i32 37, i32 %193, i32 %194)  ; IMax(a,b)
  %196 = lshr i32 %81, 1
  %197 = icmp sgt i32 %192, %196
  br i1 %197, label %198, label %203, !dx.controlflow.hints !22

; <label>:198                                     ; preds = %182
  %199 = icmp sgt i32 %17, %196
  %200 = sub i32 %81, %192
  %201 = sub i32 %192, %81
  %202 = select i1 %199, i32 %200, i32 %201
  br label %203

; <label>:203                                     ; preds = %198, %182
  %204 = phi i32 [ %202, %198 ], [ %190, %182 ]
  %205 = icmp sgt i32 %195, %196
  br i1 %205, label %206, label %211, !dx.controlflow.hints !23

; <label>:206                                     ; preds = %203
  %207 = icmp sgt i32 %18, %196
  %208 = sub i32 %81, %195
  %209 = sub i32 %195, %81
  %210 = select i1 %207, i32 %208, i32 %209
  br label %211

; <label>:211                                     ; preds = %206, %203
  %212 = phi i32 [ %210, %206 ], [ %193, %203 ]
  %213 = mul i32 %204, %204
  %214 = mul i32 %212, %212
  %215 = add nsw i32 %214, %213
  %216 = icmp ult i32 %215, %178
  %217 = select i1 %216, i32 %215, i32 %178
  %218 = select i1 %216, i32 %204, i32 %179
  %219 = select i1 %216, i32 %212, i32 %180
  br label %220

; <label>:220                                     ; preds = %211, %177
  %221 = phi i32 [ %178, %177 ], [ %217, %211 ]
  %222 = phi i32 [ %179, %177 ], [ %218, %211 ]
  %223 = phi i32 [ %180, %177 ], [ %219, %211 ]
  %224 = icmp eq i32 %96, 0
  br i1 %224, label %263, label %225, !dx.controlflow.hints !21

; <label>:225                                     ; preds = %220
  %226 = fadd fast float %78, %76
  %227 = fadd fast float %78, %77
  %228 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %229 = call float @dx.op.unary.f32(i32 22, float %227)  ; Frc(value)
  %230 = fmul fast float %82, %228
  %231 = fmul fast float %82, %229
  %232 = fptoui float %230 to i32
  %233 = fptoui float %231 to i32
  %234 = sub nsw i32 %232, %17
  %235 = sub i32 0, %234
  %236 = call i32 @dx.op.binary.i32(i32 37, i32 %234, i32 %235)  ; IMax(a,b)
  %237 = sub nsw i32 %233, %18
  %238 = sub i32 0, %237
  %239 = call i32 @dx.op.binary.i32(i32 37, i32 %237, i32 %238)  ; IMax(a,b)
  %240 = lshr i32 %81, 1
  %241 = icmp sgt i32 %236, %240
  br i1 %241, label %242, label %247, !dx.controlflow.hints !22

; <label>:242                                     ; preds = %225
  %243 = icmp sgt i32 %17, %240
  %244 = sub i32 %81, %236
  %245 = sub i32 %236, %81
  %246 = select i1 %243, i32 %244, i32 %245
  br label %247

; <label>:247                                     ; preds = %242, %225
  %248 = phi i32 [ %246, %242 ], [ %234, %225 ]
  %249 = icmp sgt i32 %239, %240
  br i1 %249, label %250, label %255, !dx.controlflow.hints !23

; <label>:250                                     ; preds = %247
  %251 = icmp sgt i32 %18, %240
  %252 = sub i32 %81, %239
  %253 = sub i32 %239, %81
  %254 = select i1 %251, i32 %252, i32 %253
  br label %255

; <label>:255                                     ; preds = %250, %247
  %256 = phi i32 [ %254, %250 ], [ %237, %247 ]
  %257 = mul i32 %248, %248
  %258 = mul i32 %256, %256
  %259 = add nsw i32 %258, %257
  %260 = icmp ult i32 %259, %221
  %261 = select i1 %260, i32 %248, i32 %222
  %262 = select i1 %260, i32 %256, i32 %223
  br label %263

; <label>:263                                     ; preds = %255, %220
  %264 = phi i32 [ %222, %220 ], [ %261, %255 ]
  %265 = phi i32 [ %223, %220 ], [ %262, %255 ]
  %266 = add i32 %55, %264
  %267 = add i32 %55, %265
  %268 = shl i32 %266, 9
  %269 = and i32 %268, 65024
  %270 = shl i32 %267, 2
  %271 = and i32 %270, 508
  %272 = or i32 %269, %271
  %273 = or i32 %272, 1
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, i32 %273, i32 %273, i32 %273, i32 %273, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %277

; <label>:274                                     ; preds = %44
  %275 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %3, i32 0, i32 %17, i32 %18, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %17, i32 %18, i32 undef, i32 %276, i32 %276, i32 %276, i32 %276, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %277

; <label>:277                                     ; preds = %274, %263, %43, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !12, null}
!5 = !{!6, !7, !9}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 17, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 13, i32 1, i32 2, i32 0, !8}
!8 = !{i32 0, i32 5}
!9 = !{i32 2, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 10, i32 1, i32 2, i32 0, !8}
!10 = !{!11}
!11 = !{i32 0, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !8}
!12 = !{!13, !14}
!13 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{i32 1, %ConstantBufferShallowWater* undef, !"", i32 0, i32 0, i32 1, i32 64, null}
!15 = !{void ()* @cs_water_bounds_sdf_upscale, !"cs_water_bounds_sdf_upscale", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}

