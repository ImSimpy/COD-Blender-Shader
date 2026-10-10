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
; shader hash: 3e68edfe623fe5a6b547542bd4ba0d53
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
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   texture     f32     2darray      T0             t0     1
;                                       UAV     f32     2darray      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

define void @cs_dilate_visibility_ranges() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %6 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %4, i32 %5, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %7 = extractvalue %dx.types.ResRet.f32 %6, 0
  %8 = fmul fast float %7, 2.550000e+02
  %9 = fadd fast float %8, 0x3F70101020000000
  %10 = fptoui float %9 to i32
  %11 = uitofp i32 %10 to float
  %12 = fadd fast float %11, 0x3F70101020000000
  %13 = fmul fast float %12, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 0, float %13, float %13, float %13, float %13, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %14 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.i32 %14, 0
  %16 = add i32 %15, -1
  %17 = add i32 %4, -1
  %18 = add i32 %5, -1
  %19 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %17)  ; IMax(a,b)
  %20 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %18)  ; IMax(a,b)
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %24 = add i32 %22, -1
  %25 = add i32 %23, -1
  %26 = call i32 @dx.op.binary.i32(i32 38, i32 %24, i32 %19)  ; IMin(a,b)
  %27 = call i32 @dx.op.binary.i32(i32 38, i32 %25, i32 %20)  ; IMin(a,b)
  %28 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %26, i32 %27, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %29 = extractvalue %dx.types.ResRet.f32 %28, 0
  %30 = fmul fast float %29, 2.550000e+02
  %31 = fadd fast float %30, 0x3F70101020000000
  %32 = fptoui float %31 to i32
  %33 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %26, i32 %27, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %34 = extractvalue %dx.types.ResRet.f32 %33, 0
  %35 = fmul fast float %34, 2.550000e+02
  %36 = fadd fast float %35, 0x3F70101020000000
  %37 = fptoui float %36 to i32
  %38 = icmp sgt i32 %32, %37
  %39 = call i32 @dx.op.binary.i32(i32 38, i32 %16, i32 %32)  ; IMin(a,b)
  %40 = select i1 %38, i32 %16, i32 %39
  %41 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %37)  ; IMax(a,b)
  %42 = select i1 %38, i32 0, i32 %41
  %43 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %5)  ; IMax(a,b)
  %44 = call i32 @dx.op.binary.i32(i32 38, i32 %25, i32 %43)  ; IMin(a,b)
  %45 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %26, i32 %44, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %46 = extractvalue %dx.types.ResRet.f32 %45, 0
  %47 = fmul fast float %46, 2.550000e+02
  %48 = fadd fast float %47, 0x3F70101020000000
  %49 = fptoui float %48 to i32
  %50 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %26, i32 %44, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %51 = extractvalue %dx.types.ResRet.f32 %50, 0
  %52 = fmul fast float %51, 2.550000e+02
  %53 = fadd fast float %52, 0x3F70101020000000
  %54 = fptoui float %53 to i32
  %55 = icmp sgt i32 %49, %54
  %56 = call i32 @dx.op.binary.i32(i32 38, i32 %40, i32 %49)  ; IMin(a,b)
  %57 = select i1 %55, i32 %40, i32 %56
  %58 = call i32 @dx.op.binary.i32(i32 37, i32 %42, i32 %54)  ; IMax(a,b)
  %59 = select i1 %55, i32 %42, i32 %58
  %60 = add i32 %5, 1
  %61 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %60)  ; IMax(a,b)
  %62 = call i32 @dx.op.binary.i32(i32 38, i32 %25, i32 %61)  ; IMin(a,b)
  %63 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %26, i32 %62, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %64 = extractvalue %dx.types.ResRet.f32 %63, 0
  %65 = fmul fast float %64, 2.550000e+02
  %66 = fadd fast float %65, 0x3F70101020000000
  %67 = fptoui float %66 to i32
  %68 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %26, i32 %62, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = fmul fast float %69, 2.550000e+02
  %71 = fadd fast float %70, 0x3F70101020000000
  %72 = fptoui float %71 to i32
  %73 = icmp sgt i32 %67, %72
  %74 = call i32 @dx.op.binary.i32(i32 38, i32 %57, i32 %67)  ; IMin(a,b)
  %75 = select i1 %73, i32 %57, i32 %74
  %76 = call i32 @dx.op.binary.i32(i32 37, i32 %59, i32 %72)  ; IMax(a,b)
  %77 = select i1 %73, i32 %59, i32 %76
  %78 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %4)  ; IMax(a,b)
  %79 = call i32 @dx.op.binary.i32(i32 38, i32 %24, i32 %78)  ; IMin(a,b)
  %80 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %79, i32 %27, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = fmul fast float %81, 2.550000e+02
  %83 = fadd fast float %82, 0x3F70101020000000
  %84 = fptoui float %83 to i32
  %85 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %79, i32 %27, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %86 = extractvalue %dx.types.ResRet.f32 %85, 0
  %87 = fmul fast float %86, 2.550000e+02
  %88 = fadd fast float %87, 0x3F70101020000000
  %89 = fptoui float %88 to i32
  %90 = icmp sgt i32 %84, %89
  %91 = call i32 @dx.op.binary.i32(i32 38, i32 %75, i32 %84)  ; IMin(a,b)
  %92 = select i1 %90, i32 %75, i32 %91
  %93 = call i32 @dx.op.binary.i32(i32 37, i32 %77, i32 %89)  ; IMax(a,b)
  %94 = select i1 %90, i32 %77, i32 %93
  %95 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %79, i32 %44, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = fmul fast float %96, 2.550000e+02
  %98 = fadd fast float %97, 0x3F70101020000000
  %99 = fptoui float %98 to i32
  %100 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %79, i32 %44, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = fmul fast float %101, 2.550000e+02
  %103 = fadd fast float %102, 0x3F70101020000000
  %104 = fptoui float %103 to i32
  %105 = icmp sgt i32 %99, %104
  %106 = call i32 @dx.op.binary.i32(i32 38, i32 %92, i32 %99)  ; IMin(a,b)
  %107 = select i1 %105, i32 %92, i32 %106
  %108 = call i32 @dx.op.binary.i32(i32 37, i32 %94, i32 %104)  ; IMax(a,b)
  %109 = select i1 %105, i32 %94, i32 %108
  %110 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %79, i32 %62, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %111 = extractvalue %dx.types.ResRet.f32 %110, 0
  %112 = fmul fast float %111, 2.550000e+02
  %113 = fadd fast float %112, 0x3F70101020000000
  %114 = fptoui float %113 to i32
  %115 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %79, i32 %62, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %116 = extractvalue %dx.types.ResRet.f32 %115, 0
  %117 = fmul fast float %116, 2.550000e+02
  %118 = fadd fast float %117, 0x3F70101020000000
  %119 = fptoui float %118 to i32
  %120 = icmp sgt i32 %114, %119
  %121 = call i32 @dx.op.binary.i32(i32 38, i32 %107, i32 %114)  ; IMin(a,b)
  %122 = select i1 %120, i32 %107, i32 %121
  %123 = call i32 @dx.op.binary.i32(i32 37, i32 %109, i32 %119)  ; IMax(a,b)
  %124 = select i1 %120, i32 %109, i32 %123
  %125 = add i32 %4, 1
  %126 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %125)  ; IMax(a,b)
  %127 = call i32 @dx.op.binary.i32(i32 38, i32 %24, i32 %126)  ; IMin(a,b)
  %128 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %127, i32 %27, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %129 = extractvalue %dx.types.ResRet.f32 %128, 0
  %130 = fmul fast float %129, 2.550000e+02
  %131 = fadd fast float %130, 0x3F70101020000000
  %132 = fptoui float %131 to i32
  %133 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %127, i32 %27, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %134 = extractvalue %dx.types.ResRet.f32 %133, 0
  %135 = fmul fast float %134, 2.550000e+02
  %136 = fadd fast float %135, 0x3F70101020000000
  %137 = fptoui float %136 to i32
  %138 = icmp sgt i32 %132, %137
  %139 = call i32 @dx.op.binary.i32(i32 38, i32 %122, i32 %132)  ; IMin(a,b)
  %140 = select i1 %138, i32 %122, i32 %139
  %141 = call i32 @dx.op.binary.i32(i32 37, i32 %124, i32 %137)  ; IMax(a,b)
  %142 = select i1 %138, i32 %124, i32 %141
  %143 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %127, i32 %44, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %144 = extractvalue %dx.types.ResRet.f32 %143, 0
  %145 = fmul fast float %144, 2.550000e+02
  %146 = fadd fast float %145, 0x3F70101020000000
  %147 = fptoui float %146 to i32
  %148 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %127, i32 %44, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, 2.550000e+02
  %151 = fadd fast float %150, 0x3F70101020000000
  %152 = fptoui float %151 to i32
  %153 = icmp sgt i32 %147, %152
  %154 = call i32 @dx.op.binary.i32(i32 38, i32 %140, i32 %147)  ; IMin(a,b)
  %155 = select i1 %153, i32 %140, i32 %154
  %156 = call i32 @dx.op.binary.i32(i32 37, i32 %142, i32 %152)  ; IMax(a,b)
  %157 = select i1 %153, i32 %142, i32 %156
  %158 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %127, i32 %62, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fmul fast float %159, 2.550000e+02
  %161 = fadd fast float %160, 0x3F70101020000000
  %162 = fptoui float %161 to i32
  %163 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %127, i32 %62, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %164 = extractvalue %dx.types.ResRet.f32 %163, 0
  %165 = fmul fast float %164, 2.550000e+02
  %166 = fadd fast float %165, 0x3F70101020000000
  %167 = fptoui float %166 to i32
  %168 = icmp sgt i32 %162, %167
  %169 = call i32 @dx.op.binary.i32(i32 38, i32 %155, i32 %162)  ; IMin(a,b)
  %170 = select i1 %168, i32 %155, i32 %169
  %171 = call i32 @dx.op.binary.i32(i32 37, i32 %157, i32 %167)  ; IMax(a,b)
  %172 = select i1 %168, i32 %157, i32 %171
  %173 = add nsw i32 %170, -1
  %174 = add nsw i32 %172, 1
  %175 = call i32 @dx.op.binary.i32(i32 37, i32 %173, i32 0)  ; IMax(a,b)
  %176 = call i32 @dx.op.binary.i32(i32 38, i32 %174, i32 %10)  ; IMin(a,b)
  %177 = uitofp i32 %175 to float
  %178 = fadd fast float %177, 0x3F70101020000000
  %179 = fmul fast float %178, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 1, float %179, float %179, float %179, float %179, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %180 = uitofp i32 %176 to float
  %181 = fadd fast float %180, 0x3F70101020000000
  %182 = fmul fast float %181, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 2, float %182, float %182, float %182, float %182, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %183 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.i32 %183, 0
  %185 = add i32 %184, -1
  %186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %187 = extractvalue %dx.types.CBufRet.i32 %186, 0
  %188 = extractvalue %dx.types.CBufRet.i32 %186, 1
  %189 = add i32 %187, -1
  %190 = add i32 %188, -1
  %191 = call i32 @dx.op.binary.i32(i32 38, i32 %189, i32 %19)  ; IMin(a,b)
  %192 = call i32 @dx.op.binary.i32(i32 38, i32 %190, i32 %20)  ; IMin(a,b)
  %193 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %191, i32 %192, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = fmul fast float %194, 2.550000e+02
  %196 = fadd fast float %195, 0x3F70101020000000
  %197 = fptoui float %196 to i32
  %198 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %191, i32 %192, i32 4, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %199 = extractvalue %dx.types.ResRet.f32 %198, 0
  %200 = fmul fast float %199, 2.550000e+02
  %201 = fadd fast float %200, 0x3F70101020000000
  %202 = fptoui float %201 to i32
  %203 = icmp sgt i32 %197, %202
  %204 = call i32 @dx.op.binary.i32(i32 38, i32 %185, i32 %197)  ; IMin(a,b)
  %205 = select i1 %203, i32 %185, i32 %204
  %206 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %202)  ; IMax(a,b)
  %207 = select i1 %203, i32 0, i32 %206
  %208 = call i32 @dx.op.binary.i32(i32 38, i32 %190, i32 %43)  ; IMin(a,b)
  %209 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %191, i32 %208, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %210 = extractvalue %dx.types.ResRet.f32 %209, 0
  %211 = fmul fast float %210, 2.550000e+02
  %212 = fadd fast float %211, 0x3F70101020000000
  %213 = fptoui float %212 to i32
  %214 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %191, i32 %208, i32 4, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %215 = extractvalue %dx.types.ResRet.f32 %214, 0
  %216 = fmul fast float %215, 2.550000e+02
  %217 = fadd fast float %216, 0x3F70101020000000
  %218 = fptoui float %217 to i32
  %219 = icmp sgt i32 %213, %218
  %220 = call i32 @dx.op.binary.i32(i32 38, i32 %205, i32 %213)  ; IMin(a,b)
  %221 = select i1 %219, i32 %205, i32 %220
  %222 = call i32 @dx.op.binary.i32(i32 37, i32 %207, i32 %218)  ; IMax(a,b)
  %223 = select i1 %219, i32 %207, i32 %222
  %224 = call i32 @dx.op.binary.i32(i32 38, i32 %190, i32 %61)  ; IMin(a,b)
  %225 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %191, i32 %224, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %226 = extractvalue %dx.types.ResRet.f32 %225, 0
  %227 = fmul fast float %226, 2.550000e+02
  %228 = fadd fast float %227, 0x3F70101020000000
  %229 = fptoui float %228 to i32
  %230 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %191, i32 %224, i32 4, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %231 = extractvalue %dx.types.ResRet.f32 %230, 0
  %232 = fmul fast float %231, 2.550000e+02
  %233 = fadd fast float %232, 0x3F70101020000000
  %234 = fptoui float %233 to i32
  %235 = icmp sgt i32 %229, %234
  %236 = call i32 @dx.op.binary.i32(i32 38, i32 %221, i32 %229)  ; IMin(a,b)
  %237 = select i1 %235, i32 %221, i32 %236
  %238 = call i32 @dx.op.binary.i32(i32 37, i32 %223, i32 %234)  ; IMax(a,b)
  %239 = select i1 %235, i32 %223, i32 %238
  %240 = call i32 @dx.op.binary.i32(i32 38, i32 %189, i32 %78)  ; IMin(a,b)
  %241 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %192, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fmul fast float %242, 2.550000e+02
  %244 = fadd fast float %243, 0x3F70101020000000
  %245 = fptoui float %244 to i32
  %246 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %192, i32 4, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %247 = extractvalue %dx.types.ResRet.f32 %246, 0
  %248 = fmul fast float %247, 2.550000e+02
  %249 = fadd fast float %248, 0x3F70101020000000
  %250 = fptoui float %249 to i32
  %251 = icmp sgt i32 %245, %250
  %252 = call i32 @dx.op.binary.i32(i32 38, i32 %237, i32 %245)  ; IMin(a,b)
  %253 = select i1 %251, i32 %237, i32 %252
  %254 = call i32 @dx.op.binary.i32(i32 37, i32 %239, i32 %250)  ; IMax(a,b)
  %255 = select i1 %251, i32 %239, i32 %254
  %256 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %208, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %257 = extractvalue %dx.types.ResRet.f32 %256, 0
  %258 = fmul fast float %257, 2.550000e+02
  %259 = fadd fast float %258, 0x3F70101020000000
  %260 = fptoui float %259 to i32
  %261 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %208, i32 4, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fmul fast float %262, 2.550000e+02
  %264 = fadd fast float %263, 0x3F70101020000000
  %265 = fptoui float %264 to i32
  %266 = icmp sgt i32 %260, %265
  %267 = call i32 @dx.op.binary.i32(i32 38, i32 %253, i32 %260)  ; IMin(a,b)
  %268 = select i1 %266, i32 %253, i32 %267
  %269 = call i32 @dx.op.binary.i32(i32 37, i32 %255, i32 %265)  ; IMax(a,b)
  %270 = select i1 %266, i32 %255, i32 %269
  %271 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %224, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %272 = extractvalue %dx.types.ResRet.f32 %271, 0
  %273 = fmul fast float %272, 2.550000e+02
  %274 = fadd fast float %273, 0x3F70101020000000
  %275 = fptoui float %274 to i32
  %276 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %240, i32 %224, i32 4, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %277 = extractvalue %dx.types.ResRet.f32 %276, 0
  %278 = fmul fast float %277, 2.550000e+02
  %279 = fadd fast float %278, 0x3F70101020000000
  %280 = fptoui float %279 to i32
  %281 = icmp sgt i32 %275, %280
  %282 = call i32 @dx.op.binary.i32(i32 38, i32 %268, i32 %275)  ; IMin(a,b)
  %283 = select i1 %281, i32 %268, i32 %282
  %284 = call i32 @dx.op.binary.i32(i32 37, i32 %270, i32 %280)  ; IMax(a,b)
  %285 = select i1 %281, i32 %270, i32 %284
  %286 = call i32 @dx.op.binary.i32(i32 38, i32 %189, i32 %126)  ; IMin(a,b)
  %287 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %286, i32 %192, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %288 = extractvalue %dx.types.ResRet.f32 %287, 0
  %289 = fmul fast float %288, 2.550000e+02
  %290 = fadd fast float %289, 0x3F70101020000000
  %291 = fptoui float %290 to i32
  %292 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %286, i32 %192, i32 4, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %293 = extractvalue %dx.types.ResRet.f32 %292, 0
  %294 = fmul fast float %293, 2.550000e+02
  %295 = fadd fast float %294, 0x3F70101020000000
  %296 = fptoui float %295 to i32
  %297 = icmp sgt i32 %291, %296
  %298 = call i32 @dx.op.binary.i32(i32 38, i32 %283, i32 %291)  ; IMin(a,b)
  %299 = select i1 %297, i32 %283, i32 %298
  %300 = call i32 @dx.op.binary.i32(i32 37, i32 %285, i32 %296)  ; IMax(a,b)
  %301 = select i1 %297, i32 %285, i32 %300
  %302 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %286, i32 %208, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %303 = extractvalue %dx.types.ResRet.f32 %302, 0
  %304 = fmul fast float %303, 2.550000e+02
  %305 = fadd fast float %304, 0x3F70101020000000
  %306 = fptoui float %305 to i32
  %307 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %286, i32 %208, i32 4, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %308 = extractvalue %dx.types.ResRet.f32 %307, 0
  %309 = fmul fast float %308, 2.550000e+02
  %310 = fadd fast float %309, 0x3F70101020000000
  %311 = fptoui float %310 to i32
  %312 = icmp sgt i32 %306, %311
  %313 = call i32 @dx.op.binary.i32(i32 38, i32 %299, i32 %306)  ; IMin(a,b)
  %314 = select i1 %312, i32 %299, i32 %313
  %315 = call i32 @dx.op.binary.i32(i32 37, i32 %301, i32 %311)  ; IMax(a,b)
  %316 = select i1 %312, i32 %301, i32 %315
  %317 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %286, i32 %224, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = fmul fast float %318, 2.550000e+02
  %320 = fadd fast float %319, 0x3F70101020000000
  %321 = fptoui float %320 to i32
  %322 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %286, i32 %224, i32 4, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %323 = extractvalue %dx.types.ResRet.f32 %322, 0
  %324 = fmul fast float %323, 2.550000e+02
  %325 = fadd fast float %324, 0x3F70101020000000
  %326 = fptoui float %325 to i32
  %327 = icmp sgt i32 %321, %326
  %328 = call i32 @dx.op.binary.i32(i32 38, i32 %314, i32 %321)  ; IMin(a,b)
  %329 = select i1 %327, i32 %314, i32 %328
  %330 = call i32 @dx.op.binary.i32(i32 37, i32 %316, i32 %326)  ; IMax(a,b)
  %331 = select i1 %327, i32 %316, i32 %330
  %332 = add nsw i32 %329, -1
  %333 = add nsw i32 %331, 1
  %334 = call i32 @dx.op.binary.i32(i32 37, i32 %332, i32 0)  ; IMax(a,b)
  %335 = call i32 @dx.op.binary.i32(i32 38, i32 %333, i32 %10)  ; IMin(a,b)
  %336 = uitofp i32 %334 to float
  %337 = fadd fast float %336, 0x3F70101020000000
  %338 = fmul fast float %337, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 3, float %338, float %338, float %338, float %338, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %339 = uitofp i32 %335 to float
  %340 = fadd fast float %339, 0x3F70101020000000
  %341 = fmul fast float %340, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 %5, i32 4, float %341, float %341, float %341, float %341, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!12}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!12 = !{void ()* @cs_dilate_visibility_ranges, !"cs_dilate_visibility_ranges", null, !4, !13}
!13 = !{i32 0, i64 256, i32 4, !14}
!14 = !{i32 8, i32 8, i32 1}

