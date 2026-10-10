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
; shader hash: 55d0033ad28382042cfd33dc839af2b3
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
;   [176 x i8] (type annotation not present)
;
; }
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
;   [32 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb3     1
;                                   texture     f32          2d      T0             t0     1
;                                       UAV  struct         r/w      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.RWStructuredBuffer<MDAOTileBBox>" = type { %struct.MDAOTileBBox }
%struct.MDAOTileBBox = type { <4 x float>, <4 x float> }
%MDAOConstants = type { <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, float, float, float, float, float, i32, i32, i32, float, float, i32, i32, <4 x float>, <4 x i32> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

@"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [128 x float] undef, align 4

define void @cs_mdao_compute_tile_bboxes() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %6 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %7 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %8 = shl i32 %7, 2
  %9 = and i32 %8, 12
  %10 = lshr i32 %7, 2
  %11 = and i32 %10, 268435455
  %12 = shl i32 %5, 4
  %13 = shl i32 %6, 4
  %14 = or i32 %9, %12
  %15 = add i32 %11, %13
  %16 = uitofp i32 %14 to float
  %17 = uitofp i32 %15 to float
  %18 = fadd fast float %16, 5.000000e-01
  %19 = fadd fast float %17, 5.000000e-01
  %20 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %21 = extractvalue %dx.types.CBufRet.f32 %20, 2
  %22 = extractvalue %dx.types.CBufRet.f32 %20, 3
  %23 = fmul fast float %21, 2.000000e+00
  %24 = fmul fast float %23, %18
  %25 = fadd fast float %24, -1.000000e+00
  %26 = fmul fast float %22, 2.000000e+00
  %27 = fmul fast float %26, %19
  %28 = fsub fast float 1.000000e+00, %27
  %29 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %14, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %30 = extractvalue %dx.types.ResRet.f32 %29, 0
  %31 = fcmp fast olt float %30, -1.000000e+00
  %32 = fcmp fast ogt float %30, -1.000000e+00
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %35 = select i1 %32, float %34, float 1.000000e+00
  %36 = fadd fast float %30, 1.000000e+00
  %37 = fmul fast float %35, %36
  %38 = call float @dx.op.unary.f32(i32 6, float %37)  ; FAbs(value)
  %39 = fmul fast float %25, %38
  %40 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %41 = extractvalue %dx.types.CBufRet.f32 %40, 0
  %42 = fmul fast float %39, %41
  %43 = fmul fast float %28, %38
  %44 = extractvalue %dx.types.CBufRet.f32 %40, 1
  %45 = fmul fast float %43, %44
  %46 = select i1 %31, float 0x47D2CED320000000, float %38
  %47 = select i1 %31, float 0xC7D2CED320000000, float %38
  %48 = select i1 %31, float 0x47D2CED320000000, float %42
  %49 = select i1 %31, float 0xC7D2CED320000000, float %42
  %50 = select i1 %31, float 0x47D2CED320000000, float %45
  %51 = select i1 %31, float 0xC7D2CED320000000, float %45
  %52 = call float @dx.op.binary.f32(i32 36, float 0x47D2CED320000000, float %48)  ; FMin(a,b)
  %53 = call float @dx.op.binary.f32(i32 35, float 0xC7D2CED320000000, float %49)  ; FMax(a,b)
  %54 = call float @dx.op.binary.f32(i32 36, float 0x47D2CED320000000, float %50)  ; FMin(a,b)
  %55 = call float @dx.op.binary.f32(i32 35, float 0xC7D2CED320000000, float %51)  ; FMax(a,b)
  %56 = call float @dx.op.binary.f32(i32 36, float 0x47D2CED320000000, float %46)  ; FMin(a,b)
  %57 = call float @dx.op.binary.f32(i32 35, float 0xC7D2CED320000000, float %47)  ; FMax(a,b)
  %58 = or i32 %14, 1
  %59 = uitofp i32 %58 to float
  %60 = fadd fast float %59, 5.000000e-01
  %61 = fmul fast float %60, 2.000000e+00
  %62 = fmul fast float %61, %21
  %63 = fadd fast float %62, -1.000000e+00
  %64 = fmul fast float %19, 2.000000e+00
  %65 = fmul fast float %64, %22
  %66 = fsub fast float 1.000000e+00, %65
  %67 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %58, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %68 = extractvalue %dx.types.ResRet.f32 %67, 0
  %69 = fcmp fast olt float %68, -1.000000e+00
  %70 = fcmp fast ogt float %68, -1.000000e+00
  %71 = select i1 %70, float %34, float 1.000000e+00
  %72 = fadd fast float %68, 1.000000e+00
  %73 = fmul fast float %71, %72
  %74 = call float @dx.op.unary.f32(i32 6, float %73)  ; FAbs(value)
  %75 = fmul fast float %74, %63
  %76 = fmul fast float %75, %41
  %77 = fmul fast float %74, %66
  %78 = fmul fast float %77, %44
  %79 = select i1 %69, float 0x47D2CED320000000, float %74
  %80 = select i1 %69, float 0xC7D2CED320000000, float %74
  %81 = select i1 %69, float 0x47D2CED320000000, float %76
  %82 = select i1 %69, float 0xC7D2CED320000000, float %76
  %83 = select i1 %69, float 0x47D2CED320000000, float %78
  %84 = select i1 %69, float 0xC7D2CED320000000, float %78
  %85 = call float @dx.op.binary.f32(i32 36, float %52, float %81)  ; FMin(a,b)
  %86 = call float @dx.op.binary.f32(i32 35, float %53, float %82)  ; FMax(a,b)
  %87 = call float @dx.op.binary.f32(i32 36, float %54, float %83)  ; FMin(a,b)
  %88 = call float @dx.op.binary.f32(i32 35, float %55, float %84)  ; FMax(a,b)
  %89 = call float @dx.op.binary.f32(i32 36, float %56, float %79)  ; FMin(a,b)
  %90 = call float @dx.op.binary.f32(i32 35, float %57, float %80)  ; FMax(a,b)
  %91 = or i32 %14, 2
  %92 = uitofp i32 %91 to float
  %93 = fadd fast float %92, 5.000000e-01
  %94 = fmul fast float %93, 2.000000e+00
  %95 = fmul fast float %94, %21
  %96 = fadd fast float %95, -1.000000e+00
  %97 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %91, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fcmp fast olt float %98, -1.000000e+00
  %100 = fcmp fast ogt float %98, -1.000000e+00
  %101 = select i1 %100, float %34, float 1.000000e+00
  %102 = fadd fast float %98, 1.000000e+00
  %103 = fmul fast float %101, %102
  %104 = call float @dx.op.unary.f32(i32 6, float %103)  ; FAbs(value)
  %105 = fmul fast float %104, %96
  %106 = fmul fast float %105, %41
  %107 = fmul fast float %104, %66
  %108 = fmul fast float %107, %44
  %109 = select i1 %99, float 0x47D2CED320000000, float %104
  %110 = select i1 %99, float 0xC7D2CED320000000, float %104
  %111 = select i1 %99, float 0x47D2CED320000000, float %106
  %112 = select i1 %99, float 0xC7D2CED320000000, float %106
  %113 = select i1 %99, float 0x47D2CED320000000, float %108
  %114 = select i1 %99, float 0xC7D2CED320000000, float %108
  %115 = call float @dx.op.binary.f32(i32 36, float %85, float %111)  ; FMin(a,b)
  %116 = call float @dx.op.binary.f32(i32 35, float %86, float %112)  ; FMax(a,b)
  %117 = call float @dx.op.binary.f32(i32 36, float %87, float %113)  ; FMin(a,b)
  %118 = call float @dx.op.binary.f32(i32 35, float %88, float %114)  ; FMax(a,b)
  %119 = call float @dx.op.binary.f32(i32 36, float %89, float %109)  ; FMin(a,b)
  %120 = call float @dx.op.binary.f32(i32 35, float %90, float %110)  ; FMax(a,b)
  %121 = or i32 %14, 3
  %122 = uitofp i32 %121 to float
  %123 = fadd fast float %122, 5.000000e-01
  %124 = fmul fast float %123, 2.000000e+00
  %125 = fmul fast float %124, %21
  %126 = fadd fast float %125, -1.000000e+00
  %127 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %121, i32 %15, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = fcmp fast olt float %128, -1.000000e+00
  %130 = fcmp fast ogt float %128, -1.000000e+00
  %131 = select i1 %130, float %34, float 1.000000e+00
  %132 = fadd fast float %128, 1.000000e+00
  %133 = fmul fast float %131, %132
  %134 = call float @dx.op.unary.f32(i32 6, float %133)  ; FAbs(value)
  %135 = fmul fast float %134, %126
  %136 = fmul fast float %135, %41
  %137 = fmul fast float %134, %66
  %138 = fmul fast float %137, %44
  %139 = select i1 %129, float 0x47D2CED320000000, float %134
  %140 = select i1 %129, float 0xC7D2CED320000000, float %134
  %141 = select i1 %129, float 0x47D2CED320000000, float %136
  %142 = select i1 %129, float 0xC7D2CED320000000, float %136
  %143 = select i1 %129, float 0x47D2CED320000000, float %138
  %144 = select i1 %129, float 0xC7D2CED320000000, float %138
  %145 = call float @dx.op.binary.f32(i32 36, float %115, float %141)  ; FMin(a,b)
  %146 = call float @dx.op.binary.f32(i32 35, float %116, float %142)  ; FMax(a,b)
  %147 = call float @dx.op.binary.f32(i32 36, float %117, float %143)  ; FMin(a,b)
  %148 = call float @dx.op.binary.f32(i32 35, float %118, float %144)  ; FMax(a,b)
  %149 = call float @dx.op.binary.f32(i32 36, float %119, float %139)  ; FMin(a,b)
  %150 = call float @dx.op.binary.f32(i32 35, float %120, float %140)  ; FMax(a,b)
  %151 = mul i32 %7, 2
  %152 = add i32 0, %151
  %153 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %152
  store float %145, float addrspace(3)* %153, align 4
  %154 = mul i32 %7, 2
  %155 = add i32 1, %154
  %156 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %155
  store float %146, float addrspace(3)* %156, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %157 = icmp ult i32 %7, 32
  br i1 %157, label %158, label %172, !dx.controlflow.hints !17

; <label>:158                                     ; preds = %0
  %159 = load float, float addrspace(3)* %153, align 4
  %160 = load float, float addrspace(3)* %156, align 4
  %161 = add i32 %7, 32
  %162 = mul i32 %161, 2
  %163 = add i32 0, %162
  %164 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %163
  %165 = load float, float addrspace(3)* %164, align 4
  %166 = mul i32 %161, 2
  %167 = add i32 1, %166
  %168 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %167
  %169 = load float, float addrspace(3)* %168, align 4
  %170 = call float @dx.op.binary.f32(i32 36, float %159, float %165)  ; FMin(a,b)
  %171 = call float @dx.op.binary.f32(i32 35, float %160, float %169)  ; FMax(a,b)
  store float %170, float addrspace(3)* %153, align 4
  store float %171, float addrspace(3)* %156, align 4
  br label %172

; <label>:172                                     ; preds = %158, %0
  %173 = icmp ult i32 %7, 16
  br i1 %173, label %174, label %188, !dx.controlflow.hints !17

; <label>:174                                     ; preds = %172
  %175 = load float, float addrspace(3)* %153, align 4
  %176 = load float, float addrspace(3)* %156, align 4
  %177 = add i32 %7, 16
  %178 = mul i32 %177, 2
  %179 = add i32 0, %178
  %180 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %179
  %181 = load float, float addrspace(3)* %180, align 4
  %182 = mul i32 %177, 2
  %183 = add i32 1, %182
  %184 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %183
  %185 = load float, float addrspace(3)* %184, align 4
  %186 = call float @dx.op.binary.f32(i32 36, float %175, float %181)  ; FMin(a,b)
  %187 = call float @dx.op.binary.f32(i32 35, float %176, float %185)  ; FMax(a,b)
  store float %186, float addrspace(3)* %153, align 4
  store float %187, float addrspace(3)* %156, align 4
  br label %188

; <label>:188                                     ; preds = %174, %172
  %189 = icmp ult i32 %7, 8
  br i1 %189, label %190, label %204, !dx.controlflow.hints !17

; <label>:190                                     ; preds = %188
  %191 = load float, float addrspace(3)* %153, align 4
  %192 = load float, float addrspace(3)* %156, align 4
  %193 = add i32 %7, 8
  %194 = mul i32 %193, 2
  %195 = add i32 0, %194
  %196 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %195
  %197 = load float, float addrspace(3)* %196, align 4
  %198 = mul i32 %193, 2
  %199 = add i32 1, %198
  %200 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %199
  %201 = load float, float addrspace(3)* %200, align 4
  %202 = call float @dx.op.binary.f32(i32 36, float %191, float %197)  ; FMin(a,b)
  %203 = call float @dx.op.binary.f32(i32 35, float %192, float %201)  ; FMax(a,b)
  store float %202, float addrspace(3)* %153, align 4
  store float %203, float addrspace(3)* %156, align 4
  br label %204

; <label>:204                                     ; preds = %190, %188
  %205 = icmp ult i32 %7, 4
  br i1 %205, label %206, label %220, !dx.controlflow.hints !17

; <label>:206                                     ; preds = %204
  %207 = load float, float addrspace(3)* %153, align 4
  %208 = load float, float addrspace(3)* %156, align 4
  %209 = add i32 %7, 4
  %210 = mul i32 %209, 2
  %211 = add i32 0, %210
  %212 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %211
  %213 = load float, float addrspace(3)* %212, align 4
  %214 = mul i32 %209, 2
  %215 = add i32 1, %214
  %216 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %215
  %217 = load float, float addrspace(3)* %216, align 4
  %218 = call float @dx.op.binary.f32(i32 36, float %207, float %213)  ; FMin(a,b)
  %219 = call float @dx.op.binary.f32(i32 35, float %208, float %217)  ; FMax(a,b)
  store float %218, float addrspace(3)* %153, align 4
  store float %219, float addrspace(3)* %156, align 4
  br label %220

; <label>:220                                     ; preds = %206, %204
  %221 = icmp ult i32 %7, 2
  br i1 %221, label %222, label %236, !dx.controlflow.hints !17

; <label>:222                                     ; preds = %220
  %223 = load float, float addrspace(3)* %153, align 4
  %224 = load float, float addrspace(3)* %156, align 4
  %225 = add i32 %7, 2
  %226 = mul i32 %225, 2
  %227 = add i32 0, %226
  %228 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %227
  %229 = load float, float addrspace(3)* %228, align 4
  %230 = mul i32 %225, 2
  %231 = add i32 1, %230
  %232 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %231
  %233 = load float, float addrspace(3)* %232, align 4
  %234 = call float @dx.op.binary.f32(i32 36, float %223, float %229)  ; FMin(a,b)
  %235 = call float @dx.op.binary.f32(i32 35, float %224, float %233)  ; FMax(a,b)
  store float %234, float addrspace(3)* %153, align 4
  store float %235, float addrspace(3)* %156, align 4
  br label %236

; <label>:236                                     ; preds = %222, %220
  %237 = icmp eq i32 %7, 0
  br i1 %237, label %238, label %245, !dx.controlflow.hints !18

; <label>:238                                     ; preds = %236
  %239 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 0), align 4
  %240 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 1), align 4
  %241 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 2), align 4
  %242 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 3), align 4
  %243 = call float @dx.op.binary.f32(i32 36, float %239, float %241)  ; FMin(a,b)
  %244 = call float @dx.op.binary.f32(i32 35, float %240, float %242)  ; FMax(a,b)
  br label %245

; <label>:245                                     ; preds = %238, %236
  %246 = phi float [ %243, %238 ], [ 0x47D2CED320000000, %236 ]
  %247 = phi float [ %244, %238 ], [ 0xC7D2CED320000000, %236 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %147, float addrspace(3)* %153, align 4
  store float %148, float addrspace(3)* %156, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %157, label %248, label %262, !dx.controlflow.hints !17

; <label>:248                                     ; preds = %245
  %249 = load float, float addrspace(3)* %153, align 4
  %250 = load float, float addrspace(3)* %156, align 4
  %251 = add i32 %7, 32
  %252 = mul i32 %251, 2
  %253 = add i32 0, %252
  %254 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %253
  %255 = load float, float addrspace(3)* %254, align 4
  %256 = mul i32 %251, 2
  %257 = add i32 1, %256
  %258 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %257
  %259 = load float, float addrspace(3)* %258, align 4
  %260 = call float @dx.op.binary.f32(i32 36, float %249, float %255)  ; FMin(a,b)
  %261 = call float @dx.op.binary.f32(i32 35, float %250, float %259)  ; FMax(a,b)
  store float %260, float addrspace(3)* %153, align 4
  store float %261, float addrspace(3)* %156, align 4
  br label %262

; <label>:262                                     ; preds = %248, %245
  br i1 %173, label %263, label %277, !dx.controlflow.hints !17

; <label>:263                                     ; preds = %262
  %264 = load float, float addrspace(3)* %153, align 4
  %265 = load float, float addrspace(3)* %156, align 4
  %266 = add i32 %7, 16
  %267 = mul i32 %266, 2
  %268 = add i32 0, %267
  %269 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %268
  %270 = load float, float addrspace(3)* %269, align 4
  %271 = mul i32 %266, 2
  %272 = add i32 1, %271
  %273 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %272
  %274 = load float, float addrspace(3)* %273, align 4
  %275 = call float @dx.op.binary.f32(i32 36, float %264, float %270)  ; FMin(a,b)
  %276 = call float @dx.op.binary.f32(i32 35, float %265, float %274)  ; FMax(a,b)
  store float %275, float addrspace(3)* %153, align 4
  store float %276, float addrspace(3)* %156, align 4
  br label %277

; <label>:277                                     ; preds = %263, %262
  br i1 %189, label %278, label %292, !dx.controlflow.hints !17

; <label>:278                                     ; preds = %277
  %279 = load float, float addrspace(3)* %153, align 4
  %280 = load float, float addrspace(3)* %156, align 4
  %281 = add i32 %7, 8
  %282 = mul i32 %281, 2
  %283 = add i32 0, %282
  %284 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %283
  %285 = load float, float addrspace(3)* %284, align 4
  %286 = mul i32 %281, 2
  %287 = add i32 1, %286
  %288 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %287
  %289 = load float, float addrspace(3)* %288, align 4
  %290 = call float @dx.op.binary.f32(i32 36, float %279, float %285)  ; FMin(a,b)
  %291 = call float @dx.op.binary.f32(i32 35, float %280, float %289)  ; FMax(a,b)
  store float %290, float addrspace(3)* %153, align 4
  store float %291, float addrspace(3)* %156, align 4
  br label %292

; <label>:292                                     ; preds = %278, %277
  br i1 %205, label %293, label %307, !dx.controlflow.hints !17

; <label>:293                                     ; preds = %292
  %294 = load float, float addrspace(3)* %153, align 4
  %295 = load float, float addrspace(3)* %156, align 4
  %296 = add i32 %7, 4
  %297 = mul i32 %296, 2
  %298 = add i32 0, %297
  %299 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %298
  %300 = load float, float addrspace(3)* %299, align 4
  %301 = mul i32 %296, 2
  %302 = add i32 1, %301
  %303 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %302
  %304 = load float, float addrspace(3)* %303, align 4
  %305 = call float @dx.op.binary.f32(i32 36, float %294, float %300)  ; FMin(a,b)
  %306 = call float @dx.op.binary.f32(i32 35, float %295, float %304)  ; FMax(a,b)
  store float %305, float addrspace(3)* %153, align 4
  store float %306, float addrspace(3)* %156, align 4
  br label %307

; <label>:307                                     ; preds = %293, %292
  br i1 %221, label %308, label %322, !dx.controlflow.hints !17

; <label>:308                                     ; preds = %307
  %309 = load float, float addrspace(3)* %153, align 4
  %310 = load float, float addrspace(3)* %156, align 4
  %311 = add i32 %7, 2
  %312 = mul i32 %311, 2
  %313 = add i32 0, %312
  %314 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %313
  %315 = load float, float addrspace(3)* %314, align 4
  %316 = mul i32 %311, 2
  %317 = add i32 1, %316
  %318 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %317
  %319 = load float, float addrspace(3)* %318, align 4
  %320 = call float @dx.op.binary.f32(i32 36, float %309, float %315)  ; FMin(a,b)
  %321 = call float @dx.op.binary.f32(i32 35, float %310, float %319)  ; FMax(a,b)
  store float %320, float addrspace(3)* %153, align 4
  store float %321, float addrspace(3)* %156, align 4
  br label %322

; <label>:322                                     ; preds = %308, %307
  br i1 %237, label %323, label %330, !dx.controlflow.hints !19

; <label>:323                                     ; preds = %322
  %324 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 0), align 4
  %325 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 1), align 4
  %326 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 2), align 4
  %327 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 3), align 4
  %328 = call float @dx.op.binary.f32(i32 36, float %324, float %326)  ; FMin(a,b)
  %329 = call float @dx.op.binary.f32(i32 35, float %325, float %327)  ; FMax(a,b)
  br label %330

; <label>:330                                     ; preds = %323, %322
  %331 = phi float [ %328, %323 ], [ 0x47D2CED320000000, %322 ]
  %332 = phi float [ %329, %323 ], [ 0xC7D2CED320000000, %322 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store float %149, float addrspace(3)* %153, align 4
  store float %150, float addrspace(3)* %156, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %157, label %333, label %347, !dx.controlflow.hints !17

; <label>:333                                     ; preds = %330
  %334 = load float, float addrspace(3)* %153, align 4
  %335 = load float, float addrspace(3)* %156, align 4
  %336 = add i32 %7, 32
  %337 = mul i32 %336, 2
  %338 = add i32 0, %337
  %339 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %338
  %340 = load float, float addrspace(3)* %339, align 4
  %341 = mul i32 %336, 2
  %342 = add i32 1, %341
  %343 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %342
  %344 = load float, float addrspace(3)* %343, align 4
  %345 = call float @dx.op.binary.f32(i32 36, float %334, float %340)  ; FMin(a,b)
  %346 = call float @dx.op.binary.f32(i32 35, float %335, float %344)  ; FMax(a,b)
  store float %345, float addrspace(3)* %153, align 4
  store float %346, float addrspace(3)* %156, align 4
  br label %347

; <label>:347                                     ; preds = %333, %330
  br i1 %173, label %348, label %362, !dx.controlflow.hints !17

; <label>:348                                     ; preds = %347
  %349 = load float, float addrspace(3)* %153, align 4
  %350 = load float, float addrspace(3)* %156, align 4
  %351 = add i32 %7, 16
  %352 = mul i32 %351, 2
  %353 = add i32 0, %352
  %354 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %353
  %355 = load float, float addrspace(3)* %354, align 4
  %356 = mul i32 %351, 2
  %357 = add i32 1, %356
  %358 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %357
  %359 = load float, float addrspace(3)* %358, align 4
  %360 = call float @dx.op.binary.f32(i32 36, float %349, float %355)  ; FMin(a,b)
  %361 = call float @dx.op.binary.f32(i32 35, float %350, float %359)  ; FMax(a,b)
  store float %360, float addrspace(3)* %153, align 4
  store float %361, float addrspace(3)* %156, align 4
  br label %362

; <label>:362                                     ; preds = %348, %347
  br i1 %189, label %363, label %377, !dx.controlflow.hints !17

; <label>:363                                     ; preds = %362
  %364 = load float, float addrspace(3)* %153, align 4
  %365 = load float, float addrspace(3)* %156, align 4
  %366 = add i32 %7, 8
  %367 = mul i32 %366, 2
  %368 = add i32 0, %367
  %369 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %368
  %370 = load float, float addrspace(3)* %369, align 4
  %371 = mul i32 %366, 2
  %372 = add i32 1, %371
  %373 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %372
  %374 = load float, float addrspace(3)* %373, align 4
  %375 = call float @dx.op.binary.f32(i32 36, float %364, float %370)  ; FMin(a,b)
  %376 = call float @dx.op.binary.f32(i32 35, float %365, float %374)  ; FMax(a,b)
  store float %375, float addrspace(3)* %153, align 4
  store float %376, float addrspace(3)* %156, align 4
  br label %377

; <label>:377                                     ; preds = %363, %362
  br i1 %205, label %378, label %392, !dx.controlflow.hints !17

; <label>:378                                     ; preds = %377
  %379 = load float, float addrspace(3)* %153, align 4
  %380 = load float, float addrspace(3)* %156, align 4
  %381 = add i32 %7, 4
  %382 = mul i32 %381, 2
  %383 = add i32 0, %382
  %384 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %383
  %385 = load float, float addrspace(3)* %384, align 4
  %386 = mul i32 %381, 2
  %387 = add i32 1, %386
  %388 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %387
  %389 = load float, float addrspace(3)* %388, align 4
  %390 = call float @dx.op.binary.f32(i32 36, float %379, float %385)  ; FMin(a,b)
  %391 = call float @dx.op.binary.f32(i32 35, float %380, float %389)  ; FMax(a,b)
  store float %390, float addrspace(3)* %153, align 4
  store float %391, float addrspace(3)* %156, align 4
  br label %392

; <label>:392                                     ; preds = %378, %377
  br i1 %221, label %393, label %407, !dx.controlflow.hints !17

; <label>:393                                     ; preds = %392
  %394 = load float, float addrspace(3)* %153, align 4
  %395 = load float, float addrspace(3)* %156, align 4
  %396 = add i32 %7, 2
  %397 = mul i32 %396, 2
  %398 = add i32 0, %397
  %399 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %398
  %400 = load float, float addrspace(3)* %399, align 4
  %401 = mul i32 %396, 2
  %402 = add i32 1, %401
  %403 = getelementptr [128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %402
  %404 = load float, float addrspace(3)* %403, align 4
  %405 = call float @dx.op.binary.f32(i32 36, float %394, float %400)  ; FMin(a,b)
  %406 = call float @dx.op.binary.f32(i32 35, float %395, float %404)  ; FMax(a,b)
  store float %405, float addrspace(3)* %153, align 4
  store float %406, float addrspace(3)* %156, align 4
  br label %407

; <label>:407                                     ; preds = %393, %392
  br i1 %237, label %408, label %415, !dx.controlflow.hints !20

; <label>:408                                     ; preds = %407
  %409 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 0), align 4
  %410 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 1), align 4
  %411 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 2), align 4
  %412 = load float, float addrspace(3)* getelementptr inbounds ([128 x float], [128 x float] addrspace(3)* @"\01?g_reductionBuffer@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 3), align 4
  %413 = call float @dx.op.binary.f32(i32 36, float %409, float %411)  ; FMin(a,b)
  %414 = call float @dx.op.binary.f32(i32 35, float %410, float %412)  ; FMax(a,b)
  br label %415

; <label>:415                                     ; preds = %408, %407
  %416 = phi float [ %413, %408 ], [ 0x47D2CED320000000, %407 ]
  %417 = phi float [ %414, %408 ], [ 0xC7D2CED320000000, %407 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %237, label %418, label %428, !dx.controlflow.hints !21

; <label>:418                                     ; preds = %415
  %419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %420 = extractvalue %dx.types.CBufRet.f32 %419, 3
  %421 = fcmp fast olt float %417, %420
  %422 = select i1 %421, float 1.000000e+05, float %417
  %423 = select i1 %421, float 1.000000e+05, float %416
  %424 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %425 = extractvalue %dx.types.CBufRet.i32 %424, 0
  %426 = mul i32 %425, %6
  %427 = add i32 %426, %5
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %427, i32 0, float %246, float %331, float %423, float 1.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.f32(i32 69, %dx.types.Handle %1, i32 %427, i32 16, float %247, float %332, float %422, float 1.000000e+00, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %428

; <label>:428                                     ; preds = %418, %415
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind
declare void @dx.op.bufferStore.f32(i32, %dx.types.Handle, i32, i32, float, float, float, float, i8) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { nounwind }

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
!4 = !{!5, !8, !11, null}
!5 = !{!6}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWStructuredBuffer<MDAOTileBBox>"* undef, !"", i32 0, i32 0, i32 1, i32 12, i1 false, i1 false, i1 false, !10}
!10 = !{i32 1, i32 32}
!11 = !{!12, !13}
!12 = !{i32 0, %MDAOConstants* undef, !"", i32 0, i32 0, i32 1, i32 176, null}
!13 = !{i32 1, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!14 = !{void ()* @cs_mdao_compute_tile_bboxes, !"cs_mdao_compute_tile_bboxes", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}

