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
; shader hash: bdf629652698d1bdf10e2058cdb05037
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
;   [32 x i8] (type annotation not present)
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0             t2     1
;                                   texture     f32          2d      T1             t0     1
;                                   texture     f32          2d      T2             t3     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV     f32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
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
%ConstantBufferFromTex2d = type { i32, i32, i32, i32, i32, i32, float, float }
%struct.SamplerState = type { i32 }

@"\01?reductionData@@3PAUReductionData@@A.0" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.1" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.2" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.3" = addrspace(3) global [64 x float] undef, align 4
@"\01?reductionData@@3PAUReductionData@@A.4" = addrspace(3) global [64 x float] undef, align 4

define void @logaccumfromtex2d() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %13 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %14 = shl i32 %12, 3
  %15 = add i32 %14, %10
  %16 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %17 = extractvalue %dx.types.CBufRet.i32 %16, 1
  %18 = shl i32 %13, 3
  %19 = add i32 %18, %11
  %20 = add i32 %19, %17
  %21 = uitofp i32 %15 to float
  %22 = extractvalue %dx.types.CBufRet.i32 %16, 2
  %23 = extractvalue %dx.types.CBufRet.i32 %16, 0
  %24 = sub i32 %22, %23
  %25 = uitofp i32 %24 to float
  %26 = fdiv fast float %21, %25
  %27 = uitofp i32 %20 to float
  %28 = extractvalue %dx.types.CBufRet.i32 %16, 3
  %29 = sub i32 %28, %17
  %30 = uitofp i32 %29 to float
  %31 = fdiv fast float %27, %30
  %32 = fmul fast float %26, 2.000000e+00
  %33 = fmul fast float %31, 2.000000e+00
  %34 = fadd fast float %32, -1.000000e+00
  %35 = fadd fast float %33, -1.000000e+00
  %36 = fmul fast float %34, %34
  %37 = fmul fast float %35, %35
  %38 = fadd fast float %37, %36
  %39 = call float @dx.op.unary.f32(i32 24, float %38)  ; Sqrt(value)
  %40 = call float @dx.op.unary.f32(i32 7, float %39)  ; Saturate(value)
  %41 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %6, float %26, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %42 = extractvalue %dx.types.ResRet.f32 %41, 0
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %45 = fcmp fast ogt float %44, 0.000000e+00
  %46 = fsub fast float 1.000000e+00, %40
  %47 = call float @dx.op.unary.f32(i32 23, float %46)  ; Log(value)
  %48 = fmul fast float %47, %44
  %49 = call float @dx.op.unary.f32(i32 21, float %48)  ; Exp(value)
  %50 = select i1 %45, float %49, float 1.000000e+00
  %51 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 224)  ; CBufferLoadLegacy(handle,regIndex)
  %52 = extractvalue %dx.types.CBufRet.f32 %51, 1
  %53 = add i32 %23, %15
  %54 = add i32 %17, %20
  %55 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %4, i32 0, i32 %53, i32 %54, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = extractvalue %dx.types.ResRet.f32 %55, 1
  %58 = extractvalue %dx.types.ResRet.f32 %55, 2
  %59 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %6, float %26, float %31, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = extractvalue %dx.types.ResRet.f32 %59, 1
  %62 = extractvalue %dx.types.ResRet.f32 %59, 2
  %63 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 3
  %66 = and i32 %65, 3
  %67 = icmp ne i32 %66, 0
  %68 = and i32 %65, 4
  %69 = icmp ne i32 %68, 0
  %70 = and i1 %67, %69
  br i1 %70, label %71, label %75, !dx.controlflow.hints !21

; <label>:71                                      ; preds = %0
  %72 = fsub fast float 1.000000e+00, %42
  %73 = fsub fast float %72, %50
  %74 = fmul fast float %52, %73
  br label %82

; <label>:75                                      ; preds = %0
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 2
  %78 = fmul fast float %77, %52
  %79 = call float @dx.op.unary.f32(i32 7, float %78)  ; Saturate(value)
  %80 = fsub fast float %42, %50
  %81 = fmul fast float %79, %80
  br label %82

; <label>:82                                      ; preds = %75, %71
  %83 = phi float [ %74, %71 ], [ %81, %75 ]
  %84 = fadd fast float %83, %50
  %85 = call float @dx.op.unary.f32(i32 7, float %84)  ; Saturate(value)
  %86 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %87 = call float @dx.op.binary.f32(i32 35, float %85, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %88 = call float @dx.op.binary.f32(i32 36, float %87, float 6.550400e+04)  ; FMin(a,b)
  %89 = call float @dx.op.binary.f32(i32 35, float %86, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %90 = call float @dx.op.binary.f32(i32 36, float %89, float 6.550400e+04)  ; FMin(a,b)
  %91 = call float @dx.op.binary.f32(i32 35, float %63, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %92 = call float @dx.op.binary.f32(i32 36, float %91, float 6.550400e+04)  ; FMin(a,b)
  %93 = call float @dx.op.binary.f32(i32 35, float %56, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %94 = call float @dx.op.binary.f32(i32 36, float %93, float 6.550400e+04)  ; FMin(a,b)
  %95 = icmp ule i32 %53, %22
  %96 = icmp ule i32 %54, %28
  %97 = and i1 %95, %96
  %98 = call float @dx.op.unary.f32(i32 23, float %90)  ; Log(value)
  %99 = fmul fast float %88, 0x3FE62E4300000000
  %100 = fmul fast float %99, %98
  %101 = select i1 %97, float %100, float 0.000000e+00
  %102 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 %9
  store float %101, float addrspace(3)* %102, align 4, !tbaa !22
  %103 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.i32 %103, 2
  %105 = icmp ule i32 %53, %104
  %106 = extractvalue %dx.types.CBufRet.i32 %103, 3
  %107 = icmp ule i32 %54, %106
  %108 = and i1 %105, %107
  %109 = select i1 %108, float %88, float 0.000000e+00
  %110 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 %9
  store float %109, float addrspace(3)* %110, align 4, !tbaa !22
  %111 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.i32 %111, 2
  %113 = icmp ule i32 %53, %112
  %114 = extractvalue %dx.types.CBufRet.i32 %111, 3
  %115 = icmp ule i32 %54, %114
  %116 = and i1 %113, %115
  %117 = select i1 %116, float %42, float 0.000000e+00
  %118 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 %9
  store float %117, float addrspace(3)* %118, align 4, !tbaa !22
  %119 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %120 = extractvalue %dx.types.CBufRet.i32 %119, 2
  %121 = icmp ule i32 %53, %120
  %122 = extractvalue %dx.types.CBufRet.i32 %119, 3
  %123 = icmp ule i32 %54, %122
  %124 = and i1 %121, %123
  %125 = call float @dx.op.unary.f32(i32 23, float %94)  ; Log(value)
  %126 = fmul fast float %42, 0x3FE62E4300000000
  %127 = fmul fast float %126, %125
  %128 = select i1 %124, float %127, float 0.000000e+00
  %129 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 %9
  store float %128, float addrspace(3)* %129, align 4, !tbaa !22
  %130 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.i32 %130, 2
  %132 = icmp ule i32 %53, %131
  %133 = extractvalue %dx.types.CBufRet.i32 %130, 3
  %134 = icmp ule i32 %54, %133
  %135 = and i1 %132, %134
  %136 = call float @dx.op.unary.f32(i32 23, float %92)  ; Log(value)
  %137 = fmul fast float %99, %136
  %138 = select i1 %135, float %137, float 0.000000e+00
  %139 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 %9
  store float %138, float addrspace(3)* %139, align 4, !tbaa !22
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %142 = fmul fast float %141, %90
  %143 = call float @dx.op.unary.f32(i32 23, float %142)  ; Log(value)
  %144 = fmul fast float %143, 0x3FE62E4300000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %53, i32 %54, i32 undef, float %144, float %144, float %144, float %144, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %145

; <label>:145                                     ; preds = %172, %82
  %146 = phi i32 [ 1, %82 ], [ %147, %172 ]
  %147 = shl i32 %146, 1
  %148 = urem i32 %9, %147
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %172, !dx.controlflow.hints !26

; <label>:150                                     ; preds = %145
  %151 = add i32 %146, %9
  %152 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 %151
  %153 = load float, float addrspace(3)* %152, align 4, !tbaa !22
  %154 = load float, float addrspace(3)* %102, align 4, !tbaa !22
  %155 = fadd fast float %154, %153
  store float %155, float addrspace(3)* %102, align 4, !tbaa !22
  %156 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 %151
  %157 = load float, float addrspace(3)* %156, align 4, !tbaa !22
  %158 = load float, float addrspace(3)* %110, align 4, !tbaa !22
  %159 = fadd fast float %158, %157
  store float %159, float addrspace(3)* %110, align 4, !tbaa !22
  %160 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 %151
  %161 = load float, float addrspace(3)* %160, align 4, !tbaa !22
  %162 = load float, float addrspace(3)* %129, align 4, !tbaa !22
  %163 = fadd fast float %162, %161
  store float %163, float addrspace(3)* %129, align 4, !tbaa !22
  %164 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 %151
  %165 = load float, float addrspace(3)* %164, align 4, !tbaa !22
  %166 = load float, float addrspace(3)* %139, align 4, !tbaa !22
  %167 = fadd fast float %166, %165
  store float %167, float addrspace(3)* %139, align 4, !tbaa !22
  %168 = getelementptr [64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 %151
  %169 = load float, float addrspace(3)* %168, align 4, !tbaa !22
  %170 = load float, float addrspace(3)* %118, align 4, !tbaa !22
  %171 = fadd fast float %170, %169
  store float %171, float addrspace(3)* %118, align 4, !tbaa !22
  br label %172

; <label>:172                                     ; preds = %150, %145
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %173 = icmp ult i32 %147, 64
  br i1 %173, label %145, label %174

; <label>:174                                     ; preds = %172
  %175 = icmp eq i32 %9, 0
  br i1 %175, label %176, label %193, !dx.controlflow.hints !27

; <label>:176                                     ; preds = %174
  %177 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.0", i32 0, i32 0), align 4
  %178 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.1", i32 0, i32 0), align 4
  %179 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.2", i32 0, i32 0), align 4
  %180 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.3", i32 0, i32 0), align 4
  %181 = load float, float addrspace(3)* getelementptr inbounds ([64 x float], [64 x float] addrspace(3)* @"\01?reductionData@@3PAUReductionData@@A.4", i32 0, i32 0), align 4
  %182 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.i32 %182, 0
  %184 = mul i32 %183, %13
  %185 = add i32 %184, %12
  %186 = bitcast float %177 to i32
  %187 = bitcast float %178 to i32
  %188 = bitcast float %179 to i32
  %189 = bitcast float %180 to i32
  %190 = mul i32 %185, 20
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %190, i32 undef, i32 %186, i32 %187, i32 %188, i32 %189, i8 15)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %191 = bitcast float %181 to i32
  %192 = add i32 %190, 16
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %192, i32 undef, i32 %191, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %193

; <label>:193                                     ; preds = %176, %174
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !10, !13, !16}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 0, i32 3, i32 1, i32 2, i32 0, !7}
!10 = !{!11, !12}
!11 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{i32 1, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %ConstantBufferFromTex2d* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{void ()* @logaccumfromtex2d, !"logaccumfromtex2d", null, !4, !19}
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = !{!23, !23, i64 0}
!23 = !{!"float", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}

