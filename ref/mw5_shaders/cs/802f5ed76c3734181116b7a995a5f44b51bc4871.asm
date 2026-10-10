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
; shader hash: c61e36e6965b0e27125ac4a8d7c92ab6
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
;   [36 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   sampler      NA          NA      S0             s2     1
;                                   sampler      NA          NA      S1             s4     1
;                                   texture     f32          3d      T0            t16     1
;                                   texture     f32          3d      T1            t17     1
;                                   texture     f32     2darray      T2            t50     1
;                                   texture     f32     2darray      T3            t21     1
;                                   texture     f32          3d      T4            t24     1
;                                   texture     f32          3d      T5            t26     1
;                                   texture     f32          3d      T6            t22     1
;                                   texture     f32          3d      T7            t23     1
;                                       UAV     f32          3d      U0             u0     1
;                                       UAV     f32          3d      U1             u1     1
;                                       UAV  struct         r/w      U2             u9     1
;                                       UAV     f32          3d      U3             u6     1
;                                       UAV     f32          3d      U4             u7     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 2> >" = type { <2 x float>, %"class.Texture3D<vector<float, 2> >::mips_type" }
%"class.Texture3D<vector<float, 2> >::mips_type" = type { i32 }
%"class.RWTexture3D<vector<float, 3> >" = type { <3 x float> }
%"class.RWStructuredBuffer<sceneInfo>" = type { %struct.sceneInfo }
%struct.sceneInfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%struct.SamplerState = type { i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_volumetric_forwardplus_accumulate() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 4, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 9, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 26, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %20 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %21 = uitofp i32 %18 to float
  %22 = uitofp i32 %19 to float
  %23 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %24 = extractvalue %dx.types.CBufRet.f32 %23, 2
  %25 = fmul fast float %24, 0x3FE3C6EF40000000
  %26 = call float @dx.op.dot2.f32(i32 54, float %21, float %22, float 0x4029FAC720000000, float 0x40538EE980000000)  ; Dot2(ax,ay,bx,by)
  %27 = call float @dx.op.unary.f32(i32 13, float %26)  ; Sin(value)
  %28 = fmul fast float %27, 0x40E55DD180000000
  %29 = call float @dx.op.unary.f32(i32 22, float %28)  ; Frc(value)
  %30 = fadd fast float %29, %25
  %31 = call float @dx.op.unary.f32(i32 22, float %30)  ; Frc(value)
  %32 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %33 = extractvalue %dx.types.CBufRet.i32 %32, 0
  %34 = add i32 %33, -1
  %35 = add i32 %18, -1
  %36 = add i32 %19, -1
  %37 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %35)  ; IMax(a,b)
  %38 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %36)  ; IMax(a,b)
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 0
  %41 = extractvalue %dx.types.CBufRet.i32 %39, 1
  %42 = add i32 %40, -1
  %43 = add i32 %41, -1
  %44 = call i32 @dx.op.binary.i32(i32 38, i32 %42, i32 %37)  ; IMin(a,b)
  %45 = call i32 @dx.op.binary.i32(i32 38, i32 %43, i32 %38)  ; IMin(a,b)
  %46 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %44, i32 %45, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %47 = extractvalue %dx.types.ResRet.f32 %46, 0
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %44, i32 %45, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = fmul fast float %47, 2.550000e+02
  %51 = fadd fast float %50, 0x3F70101020000000
  %52 = fptoui float %51 to i32
  %53 = fmul fast float %49, 2.550000e+02
  %54 = fadd fast float %53, 0x3F70101020000000
  %55 = fptoui float %54 to i32
  %56 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 %52)  ; UMin(a,b)
  %57 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %19)  ; IMax(a,b)
  %58 = call i32 @dx.op.binary.i32(i32 38, i32 %43, i32 %57)  ; IMin(a,b)
  %59 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %44, i32 %58, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %60 = extractvalue %dx.types.ResRet.f32 %59, 0
  %61 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %44, i32 %58, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %62 = extractvalue %dx.types.ResRet.f32 %61, 0
  %63 = fmul fast float %60, 2.550000e+02
  %64 = fadd fast float %63, 0x3F70101020000000
  %65 = fptoui float %64 to i32
  %66 = fmul fast float %62, 2.550000e+02
  %67 = fadd fast float %66, 0x3F70101020000000
  %68 = fptoui float %67 to i32
  %69 = call i32 @dx.op.binary.i32(i32 40, i32 %56, i32 %65)  ; UMin(a,b)
  %70 = call i32 @dx.op.binary.i32(i32 39, i32 %55, i32 %68)  ; UMax(a,b)
  %71 = add i32 %19, 1
  %72 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %71)  ; IMax(a,b)
  %73 = call i32 @dx.op.binary.i32(i32 38, i32 %43, i32 %72)  ; IMin(a,b)
  %74 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %44, i32 %73, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %75 = extractvalue %dx.types.ResRet.f32 %74, 0
  %76 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %44, i32 %73, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %77 = extractvalue %dx.types.ResRet.f32 %76, 0
  %78 = fmul fast float %75, 2.550000e+02
  %79 = fadd fast float %78, 0x3F70101020000000
  %80 = fptoui float %79 to i32
  %81 = fmul fast float %77, 2.550000e+02
  %82 = fadd fast float %81, 0x3F70101020000000
  %83 = fptoui float %82 to i32
  %84 = call i32 @dx.op.binary.i32(i32 40, i32 %69, i32 %80)  ; UMin(a,b)
  %85 = call i32 @dx.op.binary.i32(i32 39, i32 %70, i32 %83)  ; UMax(a,b)
  %86 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %18)  ; IMax(a,b)
  %87 = call i32 @dx.op.binary.i32(i32 38, i32 %42, i32 %86)  ; IMin(a,b)
  %88 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %87, i32 %45, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %89 = extractvalue %dx.types.ResRet.f32 %88, 0
  %90 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %87, i32 %45, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %91 = extractvalue %dx.types.ResRet.f32 %90, 0
  %92 = fmul fast float %89, 2.550000e+02
  %93 = fadd fast float %92, 0x3F70101020000000
  %94 = fptoui float %93 to i32
  %95 = fmul fast float %91, 2.550000e+02
  %96 = fadd fast float %95, 0x3F70101020000000
  %97 = fptoui float %96 to i32
  %98 = call i32 @dx.op.binary.i32(i32 40, i32 %84, i32 %94)  ; UMin(a,b)
  %99 = call i32 @dx.op.binary.i32(i32 39, i32 %85, i32 %97)  ; UMax(a,b)
  %100 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %87, i32 %58, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %101 = extractvalue %dx.types.ResRet.f32 %100, 0
  %102 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %87, i32 %58, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = fmul fast float %101, 2.550000e+02
  %105 = fadd fast float %104, 0x3F70101020000000
  %106 = fptoui float %105 to i32
  %107 = fmul fast float %103, 2.550000e+02
  %108 = fadd fast float %107, 0x3F70101020000000
  %109 = fptoui float %108 to i32
  %110 = call i32 @dx.op.binary.i32(i32 40, i32 %98, i32 %106)  ; UMin(a,b)
  %111 = call i32 @dx.op.binary.i32(i32 39, i32 %99, i32 %109)  ; UMax(a,b)
  %112 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %87, i32 %73, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %87, i32 %73, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = fmul fast float %113, 2.550000e+02
  %117 = fadd fast float %116, 0x3F70101020000000
  %118 = fptoui float %117 to i32
  %119 = fmul fast float %115, 2.550000e+02
  %120 = fadd fast float %119, 0x3F70101020000000
  %121 = fptoui float %120 to i32
  %122 = call i32 @dx.op.binary.i32(i32 40, i32 %110, i32 %118)  ; UMin(a,b)
  %123 = call i32 @dx.op.binary.i32(i32 39, i32 %111, i32 %121)  ; UMax(a,b)
  %124 = add i32 %18, 1
  %125 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %124)  ; IMax(a,b)
  %126 = call i32 @dx.op.binary.i32(i32 38, i32 %42, i32 %125)  ; IMin(a,b)
  %127 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %126, i32 %45, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %128 = extractvalue %dx.types.ResRet.f32 %127, 0
  %129 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %126, i32 %45, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %130 = extractvalue %dx.types.ResRet.f32 %129, 0
  %131 = fmul fast float %128, 2.550000e+02
  %132 = fadd fast float %131, 0x3F70101020000000
  %133 = fptoui float %132 to i32
  %134 = fmul fast float %130, 2.550000e+02
  %135 = fadd fast float %134, 0x3F70101020000000
  %136 = fptoui float %135 to i32
  %137 = call i32 @dx.op.binary.i32(i32 40, i32 %122, i32 %133)  ; UMin(a,b)
  %138 = call i32 @dx.op.binary.i32(i32 39, i32 %123, i32 %136)  ; UMax(a,b)
  %139 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %126, i32 %58, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %140 = extractvalue %dx.types.ResRet.f32 %139, 0
  %141 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %126, i32 %58, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = fmul fast float %140, 2.550000e+02
  %144 = fadd fast float %143, 0x3F70101020000000
  %145 = fptoui float %144 to i32
  %146 = fmul fast float %142, 2.550000e+02
  %147 = fadd fast float %146, 0x3F70101020000000
  %148 = fptoui float %147 to i32
  %149 = call i32 @dx.op.binary.i32(i32 40, i32 %137, i32 %145)  ; UMin(a,b)
  %150 = call i32 @dx.op.binary.i32(i32 39, i32 %138, i32 %148)  ; UMax(a,b)
  %151 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %126, i32 %73, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %152 = extractvalue %dx.types.ResRet.f32 %151, 0
  %153 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %126, i32 %73, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = fmul fast float %152, 2.550000e+02
  %156 = fadd fast float %155, 0x3F70101020000000
  %157 = fptoui float %156 to i32
  %158 = fmul fast float %154, 2.550000e+02
  %159 = fadd fast float %158, 0x3F70101020000000
  %160 = fptoui float %159 to i32
  %161 = call i32 @dx.op.binary.i32(i32 40, i32 %149, i32 %157)  ; UMin(a,b)
  %162 = call i32 @dx.op.binary.i32(i32 39, i32 %150, i32 %160)  ; UMax(a,b)
  %163 = icmp ugt i32 %161, %162
  %164 = select i1 %163, i32 0, i32 %161
  %165 = select i1 %163, i32 0, i32 %162
  %166 = icmp ugt i32 %164, %165
  br i1 %166, label %2252, label %167

; <label>:167                                     ; preds = %0
  br label %168

; <label>:168                                     ; preds = %2248, %167
  %169 = phi float [ %1978, %2248 ], [ undef, %167 ]
  %170 = phi float [ %1979, %2248 ], [ undef, %167 ]
  %171 = phi float [ %1980, %2248 ], [ undef, %167 ]
  %172 = phi float [ %1981, %2248 ], [ undef, %167 ]
  %173 = phi float [ %1982, %2248 ], [ undef, %167 ]
  %174 = phi float [ %1983, %2248 ], [ undef, %167 ]
  %175 = phi float [ %1984, %2248 ], [ undef, %167 ]
  %176 = phi float [ %1985, %2248 ], [ undef, %167 ]
  %177 = phi float [ %1986, %2248 ], [ undef, %167 ]
  %178 = phi float [ %1987, %2248 ], [ undef, %167 ]
  %179 = phi float [ %1988, %2248 ], [ undef, %167 ]
  %180 = phi float [ %1989, %2248 ], [ undef, %167 ]
  %181 = phi float [ %1990, %2248 ], [ undef, %167 ]
  %182 = phi float [ %1991, %2248 ], [ undef, %167 ]
  %183 = phi float [ %1992, %2248 ], [ undef, %167 ]
  %184 = phi float [ %1993, %2248 ], [ undef, %167 ]
  %185 = phi float [ %1994, %2248 ], [ undef, %167 ]
  %186 = phi float [ %1995, %2248 ], [ undef, %167 ]
  %187 = phi float [ %1996, %2248 ], [ undef, %167 ]
  %188 = phi float [ %1997, %2248 ], [ undef, %167 ]
  %189 = phi float [ %1998, %2248 ], [ undef, %167 ]
  %190 = phi float [ %1999, %2248 ], [ undef, %167 ]
  %191 = phi float [ %2000, %2248 ], [ undef, %167 ]
  %192 = phi float [ %2001, %2248 ], [ undef, %167 ]
  %193 = phi float [ %2002, %2248 ], [ undef, %167 ]
  %194 = phi float [ %2003, %2248 ], [ undef, %167 ]
  %195 = phi float [ %2004, %2248 ], [ undef, %167 ]
  %196 = phi float [ %2005, %2248 ], [ undef, %167 ]
  %197 = phi float [ %2006, %2248 ], [ undef, %167 ]
  %198 = phi float [ %2007, %2248 ], [ undef, %167 ]
  %199 = phi float [ %2008, %2248 ], [ undef, %167 ]
  %200 = phi float [ %2009, %2248 ], [ undef, %167 ]
  %201 = phi float [ %2010, %2248 ], [ undef, %167 ]
  %202 = phi float [ %2011, %2248 ], [ undef, %167 ]
  %203 = phi float [ %2012, %2248 ], [ undef, %167 ]
  %204 = phi float [ %2013, %2248 ], [ undef, %167 ]
  %205 = phi float [ %2014, %2248 ], [ undef, %167 ]
  %206 = phi float [ %2015, %2248 ], [ undef, %167 ]
  %207 = phi float [ %2016, %2248 ], [ undef, %167 ]
  %208 = phi float [ %2017, %2248 ], [ undef, %167 ]
  %209 = phi float [ %2018, %2248 ], [ undef, %167 ]
  %210 = phi float [ %2019, %2248 ], [ undef, %167 ]
  %211 = phi float [ %2020, %2248 ], [ undef, %167 ]
  %212 = phi float [ %2021, %2248 ], [ undef, %167 ]
  %213 = phi float [ %2022, %2248 ], [ undef, %167 ]
  %214 = phi float [ %2023, %2248 ], [ undef, %167 ]
  %215 = phi float [ %2024, %2248 ], [ undef, %167 ]
  %216 = phi float [ %2025, %2248 ], [ undef, %167 ]
  %217 = phi i32 [ %336, %2248 ], [ undef, %167 ]
  %218 = phi i32 [ %337, %2248 ], [ undef, %167 ]
  %219 = phi i32 [ %338, %2248 ], [ undef, %167 ]
  %220 = phi i32 [ %339, %2248 ], [ undef, %167 ]
  %221 = phi i32 [ %340, %2248 ], [ undef, %167 ]
  %222 = phi i32 [ %341, %2248 ], [ undef, %167 ]
  %223 = phi i32 [ %342, %2248 ], [ undef, %167 ]
  %224 = phi i32 [ %343, %2248 ], [ undef, %167 ]
  %225 = phi i32 [ %344, %2248 ], [ undef, %167 ]
  %226 = phi i32 [ %2026, %2248 ], [ 0, %167 ]
  %227 = phi i32 [ %2027, %2248 ], [ 0, %167 ]
  %228 = phi i32 [ %2028, %2248 ], [ 0, %167 ]
  %229 = phi float [ %2029, %2248 ], [ 0.000000e+00, %167 ]
  %230 = phi float [ %2030, %2248 ], [ 0.000000e+00, %167 ]
  %231 = phi float [ %2031, %2248 ], [ 0.000000e+00, %167 ]
  %232 = phi float [ %2032, %2248 ], [ 1.000000e+00, %167 ]
  %233 = phi float [ %2033, %2248 ], [ 1.000000e+00, %167 ]
  %234 = phi float [ %2034, %2248 ], [ 1.000000e+00, %167 ]
  %235 = phi i32 [ %2249, %2248 ], [ %164, %167 ]
  %236 = add i32 %235, %17
  %237 = icmp ugt i32 %236, %162
  br i1 %237, label %311, label %238, !dx.controlflow.hints !30

; <label>:238                                     ; preds = %168
  %239 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %18, i32 %19, i32 %236, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %240 = extractvalue %dx.types.ResRet.f32 %239, 0
  %241 = extractvalue %dx.types.ResRet.f32 %239, 1
  %242 = extractvalue %dx.types.ResRet.f32 %239, 2
  %243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %244 = extractvalue %dx.types.CBufRet.f32 %243, 1
  %245 = fmul fast float %244, %240
  %246 = fmul fast float %244, %241
  %247 = fmul fast float %244, %242
  %248 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %18, i32 %19, i32 %236, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %249 = extractvalue %dx.types.ResRet.f32 %248, 0
  %250 = extractvalue %dx.types.ResRet.f32 %248, 1
  %251 = extractvalue %dx.types.ResRet.f32 %248, 2
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %254 = fmul fast float %253, %249
  %255 = fmul fast float %253, %250
  %256 = fmul fast float %253, %251
  %257 = add i32 %17, 1
  %258 = add i32 %257, %235
  %259 = icmp ugt i32 %258, %162
  br i1 %259, label %311, label %260, !dx.controlflow.hints !30

; <label>:260                                     ; preds = %238
  %261 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %18, i32 %19, i32 %258, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = extractvalue %dx.types.ResRet.f32 %261, 1
  %264 = extractvalue %dx.types.ResRet.f32 %261, 2
  %265 = fmul fast float %244, %262
  %266 = fmul fast float %244, %263
  %267 = fmul fast float %244, %264
  %268 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %18, i32 %19, i32 %258, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %269 = extractvalue %dx.types.ResRet.f32 %268, 0
  %270 = extractvalue %dx.types.ResRet.f32 %268, 1
  %271 = extractvalue %dx.types.ResRet.f32 %268, 2
  %272 = fmul fast float %253, %269
  %273 = fmul fast float %253, %270
  %274 = fmul fast float %253, %271
  %275 = add i32 %17, 2
  %276 = add i32 %275, %235
  %277 = icmp ugt i32 %276, %162
  br i1 %277, label %311, label %278, !dx.controlflow.hints !30

; <label>:278                                     ; preds = %260
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %18, i32 %19, i32 %276, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = extractvalue %dx.types.ResRet.f32 %279, 1
  %282 = extractvalue %dx.types.ResRet.f32 %279, 2
  %283 = fmul fast float %244, %280
  %284 = fmul fast float %244, %281
  %285 = fmul fast float %244, %282
  %286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %18, i32 %19, i32 %276, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = fmul fast float %253, %287
  %291 = fmul fast float %253, %288
  %292 = fmul fast float %253, %289
  %293 = add i32 %17, 3
  %294 = add i32 %293, %235
  %295 = icmp ugt i32 %294, %162
  br i1 %295, label %311, label %296, !dx.controlflow.hints !30

; <label>:296                                     ; preds = %278
  %297 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %18, i32 %19, i32 %294, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %298 = extractvalue %dx.types.ResRet.f32 %297, 0
  %299 = extractvalue %dx.types.ResRet.f32 %297, 1
  %300 = extractvalue %dx.types.ResRet.f32 %297, 2
  %301 = fmul fast float %244, %298
  %302 = fmul fast float %244, %299
  %303 = fmul fast float %244, %300
  %304 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %18, i32 %19, i32 %294, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = extractvalue %dx.types.ResRet.f32 %304, 1
  %307 = extractvalue %dx.types.ResRet.f32 %304, 2
  %308 = fmul fast float %253, %305
  %309 = fmul fast float %253, %306
  %310 = fmul fast float %253, %307
  br label %311

; <label>:311                                     ; preds = %296, %278, %260, %238, %168
  %312 = phi float [ %169, %168 ], [ %169, %238 ], [ %169, %260 ], [ %308, %296 ], [ %169, %278 ]
  %313 = phi float [ %170, %168 ], [ %170, %238 ], [ %170, %260 ], [ %290, %296 ], [ %290, %278 ]
  %314 = phi float [ %171, %168 ], [ %171, %238 ], [ %272, %260 ], [ %272, %296 ], [ %272, %278 ]
  %315 = phi float [ %172, %168 ], [ %254, %238 ], [ %254, %260 ], [ %254, %296 ], [ %254, %278 ]
  %316 = phi float [ %173, %168 ], [ %173, %238 ], [ %173, %260 ], [ %309, %296 ], [ %173, %278 ]
  %317 = phi float [ %174, %168 ], [ %174, %238 ], [ %174, %260 ], [ %291, %296 ], [ %291, %278 ]
  %318 = phi float [ %175, %168 ], [ %175, %238 ], [ %273, %260 ], [ %273, %296 ], [ %273, %278 ]
  %319 = phi float [ %176, %168 ], [ %255, %238 ], [ %255, %260 ], [ %255, %296 ], [ %255, %278 ]
  %320 = phi float [ %177, %168 ], [ %177, %238 ], [ %177, %260 ], [ %310, %296 ], [ %177, %278 ]
  %321 = phi float [ %178, %168 ], [ %178, %238 ], [ %178, %260 ], [ %292, %296 ], [ %292, %278 ]
  %322 = phi float [ %179, %168 ], [ %179, %238 ], [ %274, %260 ], [ %274, %296 ], [ %274, %278 ]
  %323 = phi float [ %180, %168 ], [ %256, %238 ], [ %256, %260 ], [ %256, %296 ], [ %256, %278 ]
  %324 = phi float [ %181, %168 ], [ %181, %238 ], [ %181, %260 ], [ %301, %296 ], [ %181, %278 ]
  %325 = phi float [ %182, %168 ], [ %182, %238 ], [ %182, %260 ], [ %283, %296 ], [ %283, %278 ]
  %326 = phi float [ %183, %168 ], [ %183, %238 ], [ %265, %260 ], [ %265, %296 ], [ %265, %278 ]
  %327 = phi float [ %184, %168 ], [ %245, %238 ], [ %245, %260 ], [ %245, %296 ], [ %245, %278 ]
  %328 = phi float [ %185, %168 ], [ %185, %238 ], [ %185, %260 ], [ %302, %296 ], [ %185, %278 ]
  %329 = phi float [ %186, %168 ], [ %186, %238 ], [ %186, %260 ], [ %284, %296 ], [ %284, %278 ]
  %330 = phi float [ %187, %168 ], [ %187, %238 ], [ %266, %260 ], [ %266, %296 ], [ %266, %278 ]
  %331 = phi float [ %188, %168 ], [ %246, %238 ], [ %246, %260 ], [ %246, %296 ], [ %246, %278 ]
  %332 = phi float [ %189, %168 ], [ %189, %238 ], [ %189, %260 ], [ %303, %296 ], [ %189, %278 ]
  %333 = phi float [ %190, %168 ], [ %190, %238 ], [ %190, %260 ], [ %285, %296 ], [ %285, %278 ]
  %334 = phi float [ %191, %168 ], [ %191, %238 ], [ %267, %260 ], [ %267, %296 ], [ %267, %278 ]
  %335 = phi float [ %192, %168 ], [ %247, %238 ], [ %247, %260 ], [ %247, %296 ], [ %247, %278 ]
  %336 = phi i32 [ %217, %168 ], [ %217, %238 ], [ %217, %260 ], [ %18, %296 ], [ %18, %278 ]
  %337 = phi i32 [ %218, %168 ], [ %218, %238 ], [ %18, %260 ], [ %18, %296 ], [ %18, %278 ]
  %338 = phi i32 [ %219, %168 ], [ %18, %238 ], [ %18, %260 ], [ %18, %296 ], [ %18, %278 ]
  %339 = phi i32 [ %220, %168 ], [ %220, %238 ], [ %220, %260 ], [ %19, %296 ], [ %19, %278 ]
  %340 = phi i32 [ %221, %168 ], [ %221, %238 ], [ %19, %260 ], [ %19, %296 ], [ %19, %278 ]
  %341 = phi i32 [ %222, %168 ], [ %19, %238 ], [ %19, %260 ], [ %19, %296 ], [ %19, %278 ]
  %342 = phi i32 [ %223, %168 ], [ %223, %238 ], [ %223, %260 ], [ %294, %296 ], [ %294, %278 ]
  %343 = phi i32 [ %224, %168 ], [ %224, %238 ], [ %276, %260 ], [ %276, %296 ], [ %276, %278 ]
  %344 = phi i32 [ %225, %168 ], [ %258, %238 ], [ %258, %260 ], [ %258, %296 ], [ %258, %278 ]
  br i1 %237, label %1977, label %345, !dx.controlflow.hints !31

; <label>:345                                     ; preds = %311
  %346 = fmul fast float %331, 5.000000e-01
  %347 = fadd fast float %335, %327
  %348 = fmul fast float %347, 2.500000e-01
  %349 = fadd fast float %348, %346
  %350 = fmul fast float %319, 5.000000e-01
  %351 = fadd fast float %323, %315
  %352 = fmul fast float %351, 2.500000e-01
  %353 = fadd fast float %352, %350
  %354 = fcmp fast une float %353, 0.000000e+00
  br i1 %354, label %355, label %375, !dx.controlflow.hints !32

; <label>:355                                     ; preds = %345
  %356 = add i32 %226, 1
  %357 = fcmp fast ogt float %349, 0.000000e+00
  %358 = call float @dx.op.unary.f32(i32 23, float %349)  ; Log(value)
  %359 = select i1 %357, float %358, float -3.200000e+01
  %360 = call float @dx.op.binary.f32(i32 35, float %359, float -3.200000e+01)  ; FMax(a,b)
  %361 = call float @dx.op.binary.f32(i32 36, float %360, float 3.200000e+01)  ; FMin(a,b)
  %362 = fadd fast float %361, 3.200000e+01
  %363 = fmul fast float %362, 2.000000e+00
  %364 = fptoui float %363 to i32
  %365 = add i32 %364, %227
  %366 = fcmp fast ogt float %353, 0.000000e+00
  %367 = call float @dx.op.unary.f32(i32 23, float %353)  ; Log(value)
  %368 = select i1 %366, float %367, float -3.200000e+01
  %369 = call float @dx.op.binary.f32(i32 35, float %368, float -3.200000e+01)  ; FMax(a,b)
  %370 = call float @dx.op.binary.f32(i32 36, float %369, float 3.200000e+01)  ; FMin(a,b)
  %371 = fadd fast float %370, 3.200000e+01
  %372 = fmul fast float %371, 2.000000e+00
  %373 = fptoui float %372 to i32
  %374 = add i32 %373, %228
  br label %375

; <label>:375                                     ; preds = %355, %345
  %376 = phi i32 [ %356, %355 ], [ %226, %345 ]
  %377 = phi i32 [ %365, %355 ], [ %227, %345 ]
  %378 = phi i32 [ %374, %355 ], [ %228, %345 ]
  %379 = uitofp i32 %236 to float
  %380 = fadd fast float %21, 5.000000e-01
  %381 = fadd fast float %22, 5.000000e-01
  %382 = fadd fast float %379, 5.000000e-01
  %383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %384 = extractvalue %dx.types.CBufRet.f32 %383, 0
  %385 = extractvalue %dx.types.CBufRet.f32 %383, 1
  %386 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %387 = extractvalue %dx.types.CBufRet.f32 %386, 0
  %388 = extractvalue %dx.types.CBufRet.f32 %386, 1
  %389 = fmul fast float %388, %382
  %390 = call float @dx.op.unary.f32(i32 21, float %389)  ; Exp(value)
  %391 = fmul fast float %390, %387
  %392 = fsub fast float 4.000000e+00, %387
  %393 = fadd fast float %392, %391
  %394 = fmul fast float %380, 2.000000e+00
  %395 = fmul fast float %394, %384
  %396 = fmul fast float %381, 2.000000e+00
  %397 = fmul fast float %396, %385
  %398 = fsub fast float 1.000000e+00, %395
  %399 = fsub fast float 1.000000e+00, %397
  %400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %401 = extractvalue %dx.types.CBufRet.f32 %400, 0
  %402 = extractvalue %dx.types.CBufRet.f32 %400, 1
  %403 = extractvalue %dx.types.CBufRet.f32 %400, 2
  %404 = fmul fast float %401, %398
  %405 = fmul fast float %402, %398
  %406 = fmul fast float %403, %398
  %407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %408 = extractvalue %dx.types.CBufRet.f32 %407, 0
  %409 = extractvalue %dx.types.CBufRet.f32 %407, 1
  %410 = extractvalue %dx.types.CBufRet.f32 %407, 2
  %411 = fmul fast float %408, %399
  %412 = fmul fast float %409, %399
  %413 = fmul fast float %410, %399
  %414 = fadd fast float %411, %404
  %415 = fadd fast float %412, %405
  %416 = fadd fast float %413, %406
  %417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %418 = extractvalue %dx.types.CBufRet.f32 %417, 0
  %419 = extractvalue %dx.types.CBufRet.f32 %417, 1
  %420 = extractvalue %dx.types.CBufRet.f32 %417, 2
  %421 = fadd fast float %414, %418
  %422 = fadd fast float %415, %419
  %423 = fadd fast float %416, %420
  %424 = fmul fast float %421, %393
  %425 = fmul fast float %422, %393
  %426 = fmul fast float %423, %393
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %430 = extractvalue %dx.types.CBufRet.f32 %427, 3
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 0
  %433 = extractvalue %dx.types.CBufRet.f32 %431, 1
  %434 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %436 = extractvalue %dx.types.CBufRet.f32 %435, 0
  %437 = extractvalue %dx.types.CBufRet.f32 %435, 1
  %438 = extractvalue %dx.types.CBufRet.f32 %435, 3
  %439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %440 = extractvalue %dx.types.CBufRet.f32 %439, 0
  %441 = extractvalue %dx.types.CBufRet.f32 %439, 1
  %442 = extractvalue %dx.types.CBufRet.f32 %439, 3
  %443 = fmul fast float %424, %428
  %444 = call float @dx.op.tertiary.f32(i32 46, float %432, float %425, float %443)  ; FMad(a,b,c)
  %445 = call float @dx.op.tertiary.f32(i32 46, float %436, float %426, float %444)  ; FMad(a,b,c)
  %446 = fadd fast float %445, %440
  %447 = fmul fast float %424, %429
  %448 = call float @dx.op.tertiary.f32(i32 46, float %433, float %425, float %447)  ; FMad(a,b,c)
  %449 = call float @dx.op.tertiary.f32(i32 46, float %437, float %426, float %448)  ; FMad(a,b,c)
  %450 = fadd fast float %449, %441
  %451 = fmul fast float %424, %430
  %452 = call float @dx.op.tertiary.f32(i32 46, float %434, float %425, float %451)  ; FMad(a,b,c)
  %453 = call float @dx.op.tertiary.f32(i32 46, float %438, float %426, float %452)  ; FMad(a,b,c)
  %454 = fadd fast float %453, %442
  %455 = fmul fast float %446, 5.000000e-01
  %456 = fdiv fast float %455, %454
  %457 = fadd fast float %456, 5.000000e-01
  %458 = fmul fast float %450, -5.000000e-01
  %459 = fdiv fast float %458, %454
  %460 = fadd fast float %459, 5.000000e-01
  %461 = extractvalue %dx.types.CBufRet.f32 %386, 2
  %462 = extractvalue %dx.types.CBufRet.f32 %386, 3
  %463 = fadd fast float %454, -4.000000e+00
  %464 = call float @dx.op.binary.f32(i32 35, float %463, float 0.000000e+00)  ; FMax(a,b)
  %465 = fadd fast float %464, %387
  %466 = fmul fast float %465, %461
  %467 = call float @dx.op.unary.f32(i32 23, float %466)  ; Log(value)
  %468 = fmul fast float %467, %462
  %469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %470 = extractvalue %dx.types.CBufRet.f32 %469, 2
  %471 = fmul fast float %468, %470
  %472 = call float @dx.op.unary.f32(i32 27, float %457)  ; Round_ni(value)
  %473 = call float @dx.op.unary.f32(i32 6, float %472)  ; FAbs(value)
  %474 = call float @dx.op.unary.f32(i32 27, float %460)  ; Round_ni(value)
  %475 = call float @dx.op.unary.f32(i32 6, float %474)  ; FAbs(value)
  %476 = fadd fast float %475, %473
  %477 = call float @dx.op.unary.f32(i32 27, float %471)  ; Round_ni(value)
  %478 = call float @dx.op.unary.f32(i32 6, float %477)  ; FAbs(value)
  %479 = fadd fast float %476, %478
  %480 = fcmp fast oeq float %479, 0.000000e+00
  %481 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %457, float %460, float 1.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %482 = extractvalue %dx.types.ResRet.f32 %481, 0
  %483 = extractvalue %dx.types.ResRet.f32 %481, 1
  %484 = extractvalue %dx.types.ResRet.f32 %481, 2
  %485 = extractvalue %dx.types.ResRet.f32 %481, 3
  %486 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %457, float %460, float 2.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %487 = extractvalue %dx.types.ResRet.f32 %486, 0
  %488 = extractvalue %dx.types.ResRet.f32 %486, 1
  %489 = extractvalue %dx.types.ResRet.f32 %486, 2
  %490 = extractvalue %dx.types.ResRet.f32 %486, 3
  %491 = call float @dx.op.binary.f32(i32 35, float %483, float %484)  ; FMax(a,b)
  %492 = call float @dx.op.binary.f32(i32 35, float %482, float %491)  ; FMax(a,b)
  %493 = call float @dx.op.binary.f32(i32 35, float %492, float %485)  ; FMax(a,b)
  %494 = call float @dx.op.binary.f32(i32 36, float %488, float %489)  ; FMin(a,b)
  %495 = call float @dx.op.binary.f32(i32 36, float %487, float %494)  ; FMin(a,b)
  %496 = call float @dx.op.binary.f32(i32 36, float %495, float %490)  ; FMin(a,b)
  %497 = fmul fast float %493, 2.550000e+02
  %498 = fadd fast float %497, 0x3F70101020000000
  %499 = fptoui float %498 to i32
  %500 = fmul fast float %496, 2.550000e+02
  %501 = fadd fast float %500, 0x3F70101020000000
  %502 = fptoui float %501 to i32
  %503 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %504 = extractvalue %dx.types.CBufRet.i32 %503, 0
  %505 = uitofp i32 %504 to float
  %506 = fmul fast float %505, %471
  %507 = fptoui float %506 to i32
  %508 = icmp ult i32 %507, %502
  %509 = icmp uge i32 %507, %499
  %510 = and i1 %508, %509
  %511 = and i1 %480, %510
  %512 = uitofp i32 %499 to float
  %513 = uitofp i32 %502 to float
  %514 = fadd fast float %512, 5.000000e-01
  %515 = fadd fast float %513, 5.000000e-01
  %516 = fmul fast float %470, %514
  %517 = fmul fast float %515, %470
  %518 = fadd fast float %516, 0x3F0FFB4800000000
  %519 = fadd fast float %517, 0xBF0FFB4800000000
  %520 = call float @dx.op.binary.f32(i32 35, float %471, float %518)  ; FMax(a,b)
  %521 = call float @dx.op.binary.f32(i32 36, float %520, float %519)  ; FMin(a,b)
  %522 = extractvalue %dx.types.CBufRet.f32 %383, 2
  %523 = fmul fast float %384, %380
  %524 = fmul fast float %385, %381
  %525 = fmul fast float %522, %382
  %526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %527 = extractvalue %dx.types.CBufRet.f32 %526, 1
  %528 = extractvalue %dx.types.CBufRet.f32 %526, 2
  %529 = fmul fast float %527, %521
  %530 = fsub fast float %527, %528
  %531 = call float @dx.op.binary.f32(i32 35, float %529, float %528)  ; FMax(a,b)
  %532 = call float @dx.op.binary.f32(i32 36, float %531, float %530)  ; FMin(a,b)
  %533 = fmul fast float %528, 2.000000e+00
  %534 = fmul fast float %525, %527
  %535 = fsub fast float %527, %533
  %536 = call float @dx.op.binary.f32(i32 35, float %534, float %533)  ; FMax(a,b)
  %537 = call float @dx.op.binary.f32(i32 36, float %536, float %535)  ; FMin(a,b)
  %538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %523, float %524, float %537, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  %540 = extractvalue %dx.types.ResRet.f32 %538, 1
  %541 = fmul fast float %539, 0x3FF7154760000000
  %542 = fmul fast float %540, 0x3FF7154760000000
  %543 = call float @dx.op.unary.f32(i32 21, float %541)  ; Exp(value)
  %544 = call float @dx.op.unary.f32(i32 21, float %542)  ; Exp(value)
  %545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %546 = extractvalue %dx.types.CBufRet.f32 %545, 1
  %547 = fmul fast float %546, %543
  %548 = fmul fast float %546, %544
  %549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %523, float %524, float %537, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %553 = extractvalue %dx.types.CBufRet.f32 %552, 1
  %554 = fmul fast float %553, %550
  %555 = fmul fast float %553, %551
  %556 = fmul fast float %547, %547
  %557 = fsub fast float %548, %556
  %558 = call float @dx.op.unary.f32(i32 6, float %557)  ; FAbs(value)
  %559 = call float @dx.op.unary.f32(i32 24, float %558)  ; Sqrt(value)
  %560 = fdiv fast float %559, %547
  %561 = fmul fast float %554, %554
  %562 = fsub fast float %555, %561
  %563 = call float @dx.op.unary.f32(i32 6, float %562)  ; FAbs(value)
  %564 = call float @dx.op.unary.f32(i32 24, float %563)  ; Sqrt(value)
  %565 = fdiv fast float %564, %554
  %566 = call float @dx.op.binary.f32(i32 35, float %560, float %565)  ; FMax(a,b)
  %567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %568 = extractvalue %dx.types.CBufRet.f32 %567, 2
  %569 = extractvalue %dx.types.CBufRet.f32 %567, 0
  %570 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %457, float %460, float %532, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  %572 = extractvalue %dx.types.ResRet.f32 %570, 1
  %573 = extractvalue %dx.types.ResRet.f32 %570, 2
  %574 = extractvalue %dx.types.CBufRet.f32 %545, 2
  %575 = fmul fast float %574, %571
  %576 = fmul fast float %574, %572
  %577 = fmul fast float %574, %573
  %578 = fmul fast float %576, 5.000000e-01
  %579 = fadd fast float %573, %571
  %580 = fmul fast float %574, %579
  %581 = fmul fast float %580, 2.500000e-01
  %582 = fadd fast float %581, %578
  %583 = fmul fast float %566, %547
  %584 = fmul fast float %568, %583
  %585 = fsub fast float %547, %584
  %586 = fadd fast float %584, %547
  %587 = call float @dx.op.binary.f32(i32 35, float %582, float %585)  ; FMax(a,b)
  %588 = call float @dx.op.binary.f32(i32 36, float %587, float %586)  ; FMin(a,b)
  %589 = fcmp fast une float %582, 0.000000e+00
  %590 = fdiv fast float 1.000000e+00, %582
  %591 = fmul fast float %588, %575
  %592 = fmul fast float %591, %590
  %593 = fmul fast float %588, %576
  %594 = fmul fast float %593, %590
  %595 = fmul fast float %588, %577
  %596 = fmul fast float %595, %590
  %597 = select i1 %589, float %592, float %327
  %598 = select i1 %589, float %594, float %331
  %599 = select i1 %589, float %596, float %335
  %600 = fsub fast float %597, %327
  %601 = fsub fast float %598, %331
  %602 = fsub fast float %599, %335
  %603 = fmul fast float %600, %569
  %604 = fmul fast float %601, %569
  %605 = fmul fast float %602, %569
  %606 = fadd fast float %603, %327
  %607 = fadd fast float %604, %331
  %608 = fadd fast float %605, %335
  %609 = select i1 %511, float %606, float %327
  %610 = select i1 %511, float %607, float %331
  %611 = select i1 %511, float %608, float %335
  %612 = extractvalue %dx.types.CBufRet.f32 %567, 1
  %613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %457, float %460, float %532, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %614 = extractvalue %dx.types.ResRet.f32 %613, 0
  %615 = extractvalue %dx.types.ResRet.f32 %613, 1
  %616 = extractvalue %dx.types.ResRet.f32 %613, 2
  %617 = extractvalue %dx.types.CBufRet.f32 %552, 2
  %618 = fmul fast float %617, %614
  %619 = fmul fast float %617, %615
  %620 = fmul fast float %617, %616
  %621 = fmul fast float %619, 5.000000e-01
  %622 = fadd fast float %616, %614
  %623 = fmul fast float %617, %622
  %624 = fmul fast float %623, 2.500000e-01
  %625 = fadd fast float %624, %621
  %626 = fmul fast float %566, %554
  %627 = fmul fast float %568, %626
  %628 = fsub fast float %554, %627
  %629 = fadd fast float %627, %554
  %630 = call float @dx.op.binary.f32(i32 35, float %625, float %628)  ; FMax(a,b)
  %631 = call float @dx.op.binary.f32(i32 36, float %630, float %629)  ; FMin(a,b)
  %632 = fcmp fast une float %625, 0.000000e+00
  %633 = fdiv fast float 1.000000e+00, %625
  %634 = fmul fast float %631, %618
  %635 = fmul fast float %634, %633
  %636 = fmul fast float %631, %619
  %637 = fmul fast float %636, %633
  %638 = fmul fast float %631, %620
  %639 = fmul fast float %638, %633
  %640 = select i1 %632, float %635, float %315
  %641 = select i1 %632, float %637, float %319
  %642 = select i1 %632, float %639, float %323
  %643 = fsub fast float %640, %315
  %644 = fsub fast float %641, %319
  %645 = fsub fast float %642, %323
  %646 = fmul fast float %643, %612
  %647 = fmul fast float %644, %612
  %648 = fmul fast float %645, %612
  %649 = fadd fast float %646, %315
  %650 = fadd fast float %647, %319
  %651 = fadd fast float %648, %323
  %652 = select i1 %511, float %649, float %315
  %653 = select i1 %511, float %650, float %319
  %654 = select i1 %511, float %651, float %323
  %655 = extractvalue %dx.types.CBufRet.f32 %545, 0
  %656 = fmul fast float %655, %609
  %657 = fmul fast float %655, %610
  %658 = fmul fast float %655, %611
  %659 = fadd fast float %31, 0x3FE3C6EF40000000
  %660 = call float @dx.op.unary.f32(i32 22, float %659)  ; Frc(value)
  %661 = call float @dx.op.unary.f32(i32 23, float %656)  ; Log(value)
  %662 = fadd fast float %661, -7.000000e+00
  %663 = call float @dx.op.unary.f32(i32 21, float %662)  ; Exp(value)
  %664 = fmul fast float %660, 2.000000e+00
  %665 = fadd fast float %664, -1.000000e+00
  %666 = fmul fast float %663, %665
  %667 = fcmp fast ogt float %656, 0.000000e+00
  %668 = select i1 %667, float %666, float 0.000000e+00
  %669 = fadd fast float %668, %656
  %670 = fadd fast float %31, 0x3FF3C6EF40000000
  %671 = call float @dx.op.unary.f32(i32 22, float %670)  ; Frc(value)
  %672 = call float @dx.op.unary.f32(i32 23, float %657)  ; Log(value)
  %673 = fadd fast float %672, -7.000000e+00
  %674 = call float @dx.op.unary.f32(i32 21, float %673)  ; Exp(value)
  %675 = fmul fast float %671, 2.000000e+00
  %676 = fadd fast float %675, -1.000000e+00
  %677 = fmul fast float %674, %676
  %678 = fcmp fast ogt float %657, 0.000000e+00
  %679 = select i1 %678, float %677, float 0.000000e+00
  %680 = fadd fast float %679, %657
  %681 = fadd fast float %31, 0x3FFDAA66E0000000
  %682 = call float @dx.op.unary.f32(i32 22, float %681)  ; Frc(value)
  %683 = call float @dx.op.unary.f32(i32 23, float %658)  ; Log(value)
  %684 = fadd fast float %683, -6.000000e+00
  %685 = call float @dx.op.unary.f32(i32 21, float %684)  ; Exp(value)
  %686 = fmul fast float %682, 2.000000e+00
  %687 = fadd fast float %686, -1.000000e+00
  %688 = fmul fast float %685, %687
  %689 = fcmp fast ogt float %658, 0.000000e+00
  %690 = select i1 %689, float %688, float 0.000000e+00
  %691 = fadd fast float %690, %658
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %18, i32 %19, i32 %236, float %669, float %680, float %691, float %669, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %693 = extractvalue %dx.types.CBufRet.f32 %692, 0
  %694 = fmul fast float %693, %652
  %695 = fmul fast float %693, %653
  %696 = fmul fast float %693, %654
  %697 = call float @dx.op.unary.f32(i32 23, float %694)  ; Log(value)
  %698 = fadd fast float %697, -7.000000e+00
  %699 = call float @dx.op.unary.f32(i32 21, float %698)  ; Exp(value)
  %700 = fmul fast float %699, %665
  %701 = fcmp fast ogt float %694, 0.000000e+00
  %702 = select i1 %701, float %700, float 0.000000e+00
  %703 = fadd fast float %702, %694
  %704 = call float @dx.op.unary.f32(i32 23, float %695)  ; Log(value)
  %705 = fadd fast float %704, -7.000000e+00
  %706 = call float @dx.op.unary.f32(i32 21, float %705)  ; Exp(value)
  %707 = fmul fast float %706, %676
  %708 = fcmp fast ogt float %695, 0.000000e+00
  %709 = select i1 %708, float %707, float 0.000000e+00
  %710 = fadd fast float %709, %695
  %711 = call float @dx.op.unary.f32(i32 23, float %696)  ; Log(value)
  %712 = fadd fast float %711, -6.000000e+00
  %713 = call float @dx.op.unary.f32(i32 21, float %712)  ; Exp(value)
  %714 = fmul fast float %713, %687
  %715 = fcmp fast ogt float %696, 0.000000e+00
  %716 = select i1 %715, float %714, float 0.000000e+00
  %717 = fadd fast float %716, %696
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %18, i32 %19, i32 %236, float %703, float %710, float %717, float %703, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %718 = add i32 %236, 1
  %719 = uitofp i32 %718 to float
  %720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %721 = extractvalue %dx.types.CBufRet.f32 %720, 0
  %722 = extractvalue %dx.types.CBufRet.f32 %720, 1
  %723 = fmul fast float %722, %719
  %724 = call float @dx.op.unary.f32(i32 21, float %723)  ; Exp(value)
  %725 = fmul fast float %722, %379
  %726 = call float @dx.op.unary.f32(i32 21, float %725)  ; Exp(value)
  %727 = fsub fast float %724, %726
  %728 = fmul fast float %721, %727
  %729 = fmul fast float %728, %652
  %730 = fmul fast float %728, %653
  %731 = fmul fast float %728, %654
  %732 = call float @dx.op.binary.f32(i32 36, float %729, float 9.300000e+01)  ; FMin(a,b)
  %733 = call float @dx.op.binary.f32(i32 36, float %730, float 9.300000e+01)  ; FMin(a,b)
  %734 = call float @dx.op.binary.f32(i32 36, float %731, float 9.300000e+01)  ; FMin(a,b)
  %735 = fmul fast float %732, 0xBFF7154760000000
  %736 = fmul fast float %733, 0xBFF7154760000000
  %737 = fmul fast float %734, 0xBFF7154760000000
  %738 = call float @dx.op.unary.f32(i32 21, float %735)  ; Exp(value)
  %739 = call float @dx.op.unary.f32(i32 21, float %736)  ; Exp(value)
  %740 = call float @dx.op.unary.f32(i32 21, float %737)  ; Exp(value)
  %741 = call float @dx.op.binary.f32(i32 35, float %652, float 0x3F10000000000000)  ; FMax(a,b)
  %742 = call float @dx.op.binary.f32(i32 35, float %653, float 0x3F10000000000000)  ; FMax(a,b)
  %743 = call float @dx.op.binary.f32(i32 35, float %654, float 0x3F10000000000000)  ; FMax(a,b)
  %744 = fdiv fast float 1.000000e+00, %741
  %745 = fdiv fast float 1.000000e+00, %742
  %746 = fdiv fast float 1.000000e+00, %743
  %747 = fsub fast float 1.000000e+00, %738
  %748 = fsub fast float 1.000000e+00, %739
  %749 = fsub fast float 1.000000e+00, %740
  %750 = fmul fast float %609, %232
  %751 = fmul fast float %750, %747
  %752 = fmul fast float %751, %744
  %753 = fmul fast float %610, %233
  %754 = fmul fast float %753, %748
  %755 = fmul fast float %754, %745
  %756 = fmul fast float %611, %234
  %757 = fmul fast float %756, %749
  %758 = fmul fast float %757, %746
  %759 = fadd fast float %752, %229
  %760 = fadd fast float %755, %230
  %761 = fadd fast float %758, %231
  %762 = fmul fast float %738, %232
  %763 = fmul fast float %739, %233
  %764 = fmul fast float %740, %234
  %765 = add i32 %17, 1
  %766 = add i32 %765, %235
  %767 = icmp ugt i32 %766, %162
  br i1 %767, label %1977, label %768, !dx.controlflow.hints !31

; <label>:768                                     ; preds = %375
  %769 = fmul fast float %330, 5.000000e-01
  %770 = fadd fast float %334, %326
  %771 = fmul fast float %770, 2.500000e-01
  %772 = fadd fast float %771, %769
  %773 = fmul fast float %318, 5.000000e-01
  %774 = fadd fast float %322, %314
  %775 = fmul fast float %774, 2.500000e-01
  %776 = fadd fast float %775, %773
  %777 = fcmp fast une float %776, 0.000000e+00
  br i1 %777, label %778, label %798, !dx.controlflow.hints !32

; <label>:778                                     ; preds = %768
  %779 = add i32 %376, 1
  %780 = fcmp fast ogt float %772, 0.000000e+00
  %781 = call float @dx.op.unary.f32(i32 23, float %772)  ; Log(value)
  %782 = select i1 %780, float %781, float -3.200000e+01
  %783 = call float @dx.op.binary.f32(i32 35, float %782, float -3.200000e+01)  ; FMax(a,b)
  %784 = call float @dx.op.binary.f32(i32 36, float %783, float 3.200000e+01)  ; FMin(a,b)
  %785 = fadd fast float %784, 3.200000e+01
  %786 = fmul fast float %785, 2.000000e+00
  %787 = fptoui float %786 to i32
  %788 = add i32 %787, %377
  %789 = fcmp fast ogt float %776, 0.000000e+00
  %790 = call float @dx.op.unary.f32(i32 23, float %776)  ; Log(value)
  %791 = select i1 %789, float %790, float -3.200000e+01
  %792 = call float @dx.op.binary.f32(i32 35, float %791, float -3.200000e+01)  ; FMax(a,b)
  %793 = call float @dx.op.binary.f32(i32 36, float %792, float 3.200000e+01)  ; FMin(a,b)
  %794 = fadd fast float %793, 3.200000e+01
  %795 = fmul fast float %794, 2.000000e+00
  %796 = fptoui float %795 to i32
  %797 = add i32 %796, %378
  br label %798

; <label>:798                                     ; preds = %778, %768
  %799 = phi i32 [ %779, %778 ], [ %376, %768 ]
  %800 = phi i32 [ %788, %778 ], [ %377, %768 ]
  %801 = phi i32 [ %797, %778 ], [ %378, %768 ]
  %802 = uitofp i32 %766 to float
  %803 = fadd fast float %802, 5.000000e-01
  %804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %805 = extractvalue %dx.types.CBufRet.f32 %804, 0
  %806 = extractvalue %dx.types.CBufRet.f32 %804, 1
  %807 = fmul fast float %722, %803
  %808 = call float @dx.op.unary.f32(i32 21, float %807)  ; Exp(value)
  %809 = fmul fast float %808, %721
  %810 = fsub fast float 4.000000e+00, %721
  %811 = fadd fast float %810, %809
  %812 = fmul fast float %394, %805
  %813 = fmul fast float %396, %806
  %814 = fsub fast float 1.000000e+00, %812
  %815 = fsub fast float 1.000000e+00, %813
  %816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %817 = extractvalue %dx.types.CBufRet.f32 %816, 0
  %818 = extractvalue %dx.types.CBufRet.f32 %816, 1
  %819 = extractvalue %dx.types.CBufRet.f32 %816, 2
  %820 = fmul fast float %817, %814
  %821 = fmul fast float %818, %814
  %822 = fmul fast float %819, %814
  %823 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %824 = extractvalue %dx.types.CBufRet.f32 %823, 0
  %825 = extractvalue %dx.types.CBufRet.f32 %823, 1
  %826 = extractvalue %dx.types.CBufRet.f32 %823, 2
  %827 = fmul fast float %824, %815
  %828 = fmul fast float %825, %815
  %829 = fmul fast float %826, %815
  %830 = fadd fast float %827, %820
  %831 = fadd fast float %828, %821
  %832 = fadd fast float %829, %822
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = extractvalue %dx.types.CBufRet.f32 %833, 1
  %836 = extractvalue %dx.types.CBufRet.f32 %833, 2
  %837 = fadd fast float %830, %834
  %838 = fadd fast float %831, %835
  %839 = fadd fast float %832, %836
  %840 = fmul fast float %837, %811
  %841 = fmul fast float %838, %811
  %842 = fmul fast float %839, %811
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %846 = extractvalue %dx.types.CBufRet.f32 %843, 3
  %847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %848 = extractvalue %dx.types.CBufRet.f32 %847, 0
  %849 = extractvalue %dx.types.CBufRet.f32 %847, 1
  %850 = extractvalue %dx.types.CBufRet.f32 %847, 3
  %851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %852 = extractvalue %dx.types.CBufRet.f32 %851, 0
  %853 = extractvalue %dx.types.CBufRet.f32 %851, 1
  %854 = extractvalue %dx.types.CBufRet.f32 %851, 3
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 3
  %859 = fmul fast float %840, %844
  %860 = call float @dx.op.tertiary.f32(i32 46, float %848, float %841, float %859)  ; FMad(a,b,c)
  %861 = call float @dx.op.tertiary.f32(i32 46, float %852, float %842, float %860)  ; FMad(a,b,c)
  %862 = fadd fast float %861, %856
  %863 = fmul fast float %840, %845
  %864 = call float @dx.op.tertiary.f32(i32 46, float %849, float %841, float %863)  ; FMad(a,b,c)
  %865 = call float @dx.op.tertiary.f32(i32 46, float %853, float %842, float %864)  ; FMad(a,b,c)
  %866 = fadd fast float %865, %857
  %867 = fmul fast float %840, %846
  %868 = call float @dx.op.tertiary.f32(i32 46, float %850, float %841, float %867)  ; FMad(a,b,c)
  %869 = call float @dx.op.tertiary.f32(i32 46, float %854, float %842, float %868)  ; FMad(a,b,c)
  %870 = fadd fast float %869, %858
  %871 = fmul fast float %862, 5.000000e-01
  %872 = fdiv fast float %871, %870
  %873 = fadd fast float %872, 5.000000e-01
  %874 = fmul fast float %866, -5.000000e-01
  %875 = fdiv fast float %874, %870
  %876 = fadd fast float %875, 5.000000e-01
  %877 = extractvalue %dx.types.CBufRet.f32 %720, 2
  %878 = extractvalue %dx.types.CBufRet.f32 %720, 3
  %879 = fadd fast float %870, -4.000000e+00
  %880 = call float @dx.op.binary.f32(i32 35, float %879, float 0.000000e+00)  ; FMax(a,b)
  %881 = fadd fast float %880, %721
  %882 = fmul fast float %881, %877
  %883 = call float @dx.op.unary.f32(i32 23, float %882)  ; Log(value)
  %884 = fmul fast float %883, %878
  %885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %886 = extractvalue %dx.types.CBufRet.f32 %885, 2
  %887 = fmul fast float %884, %886
  %888 = call float @dx.op.unary.f32(i32 27, float %873)  ; Round_ni(value)
  %889 = call float @dx.op.unary.f32(i32 6, float %888)  ; FAbs(value)
  %890 = call float @dx.op.unary.f32(i32 27, float %876)  ; Round_ni(value)
  %891 = call float @dx.op.unary.f32(i32 6, float %890)  ; FAbs(value)
  %892 = fadd fast float %891, %889
  %893 = call float @dx.op.unary.f32(i32 27, float %887)  ; Round_ni(value)
  %894 = call float @dx.op.unary.f32(i32 6, float %893)  ; FAbs(value)
  %895 = fadd fast float %892, %894
  %896 = fcmp fast oeq float %895, 0.000000e+00
  %897 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %873, float %876, float 1.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %898 = extractvalue %dx.types.ResRet.f32 %897, 0
  %899 = extractvalue %dx.types.ResRet.f32 %897, 1
  %900 = extractvalue %dx.types.ResRet.f32 %897, 2
  %901 = extractvalue %dx.types.ResRet.f32 %897, 3
  %902 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %873, float %876, float 2.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %903 = extractvalue %dx.types.ResRet.f32 %902, 0
  %904 = extractvalue %dx.types.ResRet.f32 %902, 1
  %905 = extractvalue %dx.types.ResRet.f32 %902, 2
  %906 = extractvalue %dx.types.ResRet.f32 %902, 3
  %907 = call float @dx.op.binary.f32(i32 35, float %899, float %900)  ; FMax(a,b)
  %908 = call float @dx.op.binary.f32(i32 35, float %898, float %907)  ; FMax(a,b)
  %909 = call float @dx.op.binary.f32(i32 35, float %908, float %901)  ; FMax(a,b)
  %910 = call float @dx.op.binary.f32(i32 36, float %904, float %905)  ; FMin(a,b)
  %911 = call float @dx.op.binary.f32(i32 36, float %903, float %910)  ; FMin(a,b)
  %912 = call float @dx.op.binary.f32(i32 36, float %911, float %906)  ; FMin(a,b)
  %913 = fmul fast float %909, 2.550000e+02
  %914 = fadd fast float %913, 0x3F70101020000000
  %915 = fptoui float %914 to i32
  %916 = fmul fast float %912, 2.550000e+02
  %917 = fadd fast float %916, 0x3F70101020000000
  %918 = fptoui float %917 to i32
  %919 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %920 = extractvalue %dx.types.CBufRet.i32 %919, 0
  %921 = uitofp i32 %920 to float
  %922 = fmul fast float %921, %887
  %923 = fptoui float %922 to i32
  %924 = icmp ult i32 %923, %918
  %925 = icmp uge i32 %923, %915
  %926 = and i1 %924, %925
  %927 = and i1 %896, %926
  %928 = uitofp i32 %915 to float
  %929 = uitofp i32 %918 to float
  %930 = fadd fast float %928, 5.000000e-01
  %931 = fadd fast float %929, 5.000000e-01
  %932 = fmul fast float %886, %930
  %933 = fmul fast float %931, %886
  %934 = fadd fast float %932, 0x3F0FFB4800000000
  %935 = fadd fast float %933, 0xBF0FFB4800000000
  %936 = call float @dx.op.binary.f32(i32 35, float %887, float %934)  ; FMax(a,b)
  %937 = call float @dx.op.binary.f32(i32 36, float %936, float %935)  ; FMin(a,b)
  %938 = extractvalue %dx.types.CBufRet.f32 %804, 2
  %939 = fmul fast float %805, %380
  %940 = fmul fast float %806, %381
  %941 = fmul fast float %938, %803
  %942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %943 = extractvalue %dx.types.CBufRet.f32 %942, 1
  %944 = extractvalue %dx.types.CBufRet.f32 %942, 2
  %945 = fmul fast float %943, %937
  %946 = fsub fast float %943, %944
  %947 = call float @dx.op.binary.f32(i32 35, float %945, float %944)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 36, float %947, float %946)  ; FMin(a,b)
  %949 = fmul fast float %944, 2.000000e+00
  %950 = fmul fast float %941, %943
  %951 = fsub fast float %943, %949
  %952 = call float @dx.op.binary.f32(i32 35, float %950, float %949)  ; FMax(a,b)
  %953 = call float @dx.op.binary.f32(i32 36, float %952, float %951)  ; FMin(a,b)
  %954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %939, float %940, float %953, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %955 = extractvalue %dx.types.ResRet.f32 %954, 0
  %956 = extractvalue %dx.types.ResRet.f32 %954, 1
  %957 = fmul fast float %955, 0x3FF7154760000000
  %958 = fmul fast float %956, 0x3FF7154760000000
  %959 = call float @dx.op.unary.f32(i32 21, float %957)  ; Exp(value)
  %960 = call float @dx.op.unary.f32(i32 21, float %958)  ; Exp(value)
  %961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %962 = extractvalue %dx.types.CBufRet.f32 %961, 1
  %963 = fmul fast float %962, %959
  %964 = fmul fast float %962, %960
  %965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %939, float %940, float %953, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %966 = extractvalue %dx.types.ResRet.f32 %965, 0
  %967 = extractvalue %dx.types.ResRet.f32 %965, 1
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %970 = fmul fast float %969, %966
  %971 = fmul fast float %969, %967
  %972 = fmul fast float %963, %963
  %973 = fsub fast float %964, %972
  %974 = call float @dx.op.unary.f32(i32 6, float %973)  ; FAbs(value)
  %975 = call float @dx.op.unary.f32(i32 24, float %974)  ; Sqrt(value)
  %976 = fdiv fast float %975, %963
  %977 = fmul fast float %970, %970
  %978 = fsub fast float %971, %977
  %979 = call float @dx.op.unary.f32(i32 6, float %978)  ; FAbs(value)
  %980 = call float @dx.op.unary.f32(i32 24, float %979)  ; Sqrt(value)
  %981 = fdiv fast float %980, %970
  %982 = call float @dx.op.binary.f32(i32 35, float %976, float %981)  ; FMax(a,b)
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 2
  %985 = extractvalue %dx.types.CBufRet.f32 %983, 0
  %986 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %873, float %876, float %948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %987 = extractvalue %dx.types.ResRet.f32 %986, 0
  %988 = extractvalue %dx.types.ResRet.f32 %986, 1
  %989 = extractvalue %dx.types.ResRet.f32 %986, 2
  %990 = extractvalue %dx.types.CBufRet.f32 %961, 2
  %991 = fmul fast float %990, %987
  %992 = fmul fast float %990, %988
  %993 = fmul fast float %990, %989
  %994 = fmul fast float %992, 5.000000e-01
  %995 = fadd fast float %989, %987
  %996 = fmul fast float %990, %995
  %997 = fmul fast float %996, 2.500000e-01
  %998 = fadd fast float %997, %994
  %999 = fmul fast float %982, %963
  %1000 = fmul fast float %984, %999
  %1001 = fsub fast float %963, %1000
  %1002 = fadd fast float %1000, %963
  %1003 = call float @dx.op.binary.f32(i32 35, float %998, float %1001)  ; FMax(a,b)
  %1004 = call float @dx.op.binary.f32(i32 36, float %1003, float %1002)  ; FMin(a,b)
  %1005 = fcmp fast une float %998, 0.000000e+00
  %1006 = fdiv fast float 1.000000e+00, %998
  %1007 = fmul fast float %1004, %991
  %1008 = fmul fast float %1007, %1006
  %1009 = fmul fast float %1004, %992
  %1010 = fmul fast float %1009, %1006
  %1011 = fmul fast float %1004, %993
  %1012 = fmul fast float %1011, %1006
  %1013 = select i1 %1005, float %1008, float %326
  %1014 = select i1 %1005, float %1010, float %330
  %1015 = select i1 %1005, float %1012, float %334
  %1016 = fsub fast float %1013, %326
  %1017 = fsub fast float %1014, %330
  %1018 = fsub fast float %1015, %334
  %1019 = fmul fast float %1016, %985
  %1020 = fmul fast float %1017, %985
  %1021 = fmul fast float %1018, %985
  %1022 = fadd fast float %1019, %326
  %1023 = fadd fast float %1020, %330
  %1024 = fadd fast float %1021, %334
  %1025 = select i1 %927, float %1022, float %326
  %1026 = select i1 %927, float %1023, float %330
  %1027 = select i1 %927, float %1024, float %334
  %1028 = extractvalue %dx.types.CBufRet.f32 %983, 1
  %1029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %873, float %876, float %948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %1034 = fmul fast float %1033, %1030
  %1035 = fmul fast float %1033, %1031
  %1036 = fmul fast float %1033, %1032
  %1037 = fmul fast float %1035, 5.000000e-01
  %1038 = fadd fast float %1032, %1030
  %1039 = fmul fast float %1033, %1038
  %1040 = fmul fast float %1039, 2.500000e-01
  %1041 = fadd fast float %1040, %1037
  %1042 = fmul fast float %982, %970
  %1043 = fmul fast float %984, %1042
  %1044 = fsub fast float %970, %1043
  %1045 = fadd fast float %1043, %970
  %1046 = call float @dx.op.binary.f32(i32 35, float %1041, float %1044)  ; FMax(a,b)
  %1047 = call float @dx.op.binary.f32(i32 36, float %1046, float %1045)  ; FMin(a,b)
  %1048 = fcmp fast une float %1041, 0.000000e+00
  %1049 = fdiv fast float 1.000000e+00, %1041
  %1050 = fmul fast float %1047, %1034
  %1051 = fmul fast float %1050, %1049
  %1052 = fmul fast float %1047, %1035
  %1053 = fmul fast float %1052, %1049
  %1054 = fmul fast float %1047, %1036
  %1055 = fmul fast float %1054, %1049
  %1056 = select i1 %1048, float %1051, float %314
  %1057 = select i1 %1048, float %1053, float %318
  %1058 = select i1 %1048, float %1055, float %322
  %1059 = fsub fast float %1056, %314
  %1060 = fsub fast float %1057, %318
  %1061 = fsub fast float %1058, %322
  %1062 = fmul fast float %1059, %1028
  %1063 = fmul fast float %1060, %1028
  %1064 = fmul fast float %1061, %1028
  %1065 = fadd fast float %1062, %314
  %1066 = fadd fast float %1063, %318
  %1067 = fadd fast float %1064, %322
  %1068 = select i1 %927, float %1065, float %314
  %1069 = select i1 %927, float %1066, float %318
  %1070 = select i1 %927, float %1067, float %322
  %1071 = extractvalue %dx.types.CBufRet.f32 %961, 0
  %1072 = fmul fast float %1071, %1025
  %1073 = fmul fast float %1071, %1026
  %1074 = fmul fast float %1071, %1027
  %1075 = call float @dx.op.unary.f32(i32 23, float %1072)  ; Log(value)
  %1076 = fadd fast float %1075, -7.000000e+00
  %1077 = call float @dx.op.unary.f32(i32 21, float %1076)  ; Exp(value)
  %1078 = fmul fast float %1077, %665
  %1079 = fcmp fast ogt float %1072, 0.000000e+00
  %1080 = select i1 %1079, float %1078, float 0.000000e+00
  %1081 = fadd fast float %1080, %1072
  %1082 = call float @dx.op.unary.f32(i32 23, float %1073)  ; Log(value)
  %1083 = fadd fast float %1082, -7.000000e+00
  %1084 = call float @dx.op.unary.f32(i32 21, float %1083)  ; Exp(value)
  %1085 = fmul fast float %1084, %676
  %1086 = fcmp fast ogt float %1073, 0.000000e+00
  %1087 = select i1 %1086, float %1085, float 0.000000e+00
  %1088 = fadd fast float %1087, %1073
  %1089 = call float @dx.op.unary.f32(i32 23, float %1074)  ; Log(value)
  %1090 = fadd fast float %1089, -6.000000e+00
  %1091 = call float @dx.op.unary.f32(i32 21, float %1090)  ; Exp(value)
  %1092 = fmul fast float %1091, %687
  %1093 = fcmp fast ogt float %1074, 0.000000e+00
  %1094 = select i1 %1093, float %1092, float 0.000000e+00
  %1095 = fadd fast float %1094, %1074
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %338, i32 %341, i32 %344, float %1081, float %1088, float %1095, float %1081, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1097 = extractvalue %dx.types.CBufRet.f32 %1096, 0
  %1098 = fmul fast float %1097, %1068
  %1099 = fmul fast float %1097, %1069
  %1100 = fmul fast float %1097, %1070
  %1101 = call float @dx.op.unary.f32(i32 23, float %1098)  ; Log(value)
  %1102 = fadd fast float %1101, -7.000000e+00
  %1103 = call float @dx.op.unary.f32(i32 21, float %1102)  ; Exp(value)
  %1104 = fmul fast float %1103, %665
  %1105 = fcmp fast ogt float %1098, 0.000000e+00
  %1106 = select i1 %1105, float %1104, float 0.000000e+00
  %1107 = fadd fast float %1106, %1098
  %1108 = call float @dx.op.unary.f32(i32 23, float %1099)  ; Log(value)
  %1109 = fadd fast float %1108, -7.000000e+00
  %1110 = call float @dx.op.unary.f32(i32 21, float %1109)  ; Exp(value)
  %1111 = fmul fast float %1110, %676
  %1112 = fcmp fast ogt float %1099, 0.000000e+00
  %1113 = select i1 %1112, float %1111, float 0.000000e+00
  %1114 = fadd fast float %1113, %1099
  %1115 = call float @dx.op.unary.f32(i32 23, float %1100)  ; Log(value)
  %1116 = fadd fast float %1115, -6.000000e+00
  %1117 = call float @dx.op.unary.f32(i32 21, float %1116)  ; Exp(value)
  %1118 = fmul fast float %1117, %687
  %1119 = fcmp fast ogt float %1100, 0.000000e+00
  %1120 = select i1 %1119, float %1118, float 0.000000e+00
  %1121 = fadd fast float %1120, %1100
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %338, i32 %341, i32 %344, float %1107, float %1114, float %1121, float %1107, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1122 = add i32 %766, 1
  %1123 = uitofp i32 %1122 to float
  %1124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1125 = extractvalue %dx.types.CBufRet.f32 %1124, 0
  %1126 = extractvalue %dx.types.CBufRet.f32 %1124, 1
  %1127 = fmul fast float %1126, %1123
  %1128 = call float @dx.op.unary.f32(i32 21, float %1127)  ; Exp(value)
  %1129 = fmul fast float %1126, %802
  %1130 = call float @dx.op.unary.f32(i32 21, float %1129)  ; Exp(value)
  %1131 = fsub fast float %1128, %1130
  %1132 = fmul fast float %1125, %1131
  %1133 = fmul fast float %1132, %1068
  %1134 = fmul fast float %1132, %1069
  %1135 = fmul fast float %1132, %1070
  %1136 = call float @dx.op.binary.f32(i32 36, float %1133, float 9.300000e+01)  ; FMin(a,b)
  %1137 = call float @dx.op.binary.f32(i32 36, float %1134, float 9.300000e+01)  ; FMin(a,b)
  %1138 = call float @dx.op.binary.f32(i32 36, float %1135, float 9.300000e+01)  ; FMin(a,b)
  %1139 = fmul fast float %1136, 0xBFF7154760000000
  %1140 = fmul fast float %1137, 0xBFF7154760000000
  %1141 = fmul fast float %1138, 0xBFF7154760000000
  %1142 = call float @dx.op.unary.f32(i32 21, float %1139)  ; Exp(value)
  %1143 = call float @dx.op.unary.f32(i32 21, float %1140)  ; Exp(value)
  %1144 = call float @dx.op.unary.f32(i32 21, float %1141)  ; Exp(value)
  %1145 = call float @dx.op.binary.f32(i32 35, float %1068, float 0x3F10000000000000)  ; FMax(a,b)
  %1146 = call float @dx.op.binary.f32(i32 35, float %1069, float 0x3F10000000000000)  ; FMax(a,b)
  %1147 = call float @dx.op.binary.f32(i32 35, float %1070, float 0x3F10000000000000)  ; FMax(a,b)
  %1148 = fdiv fast float 1.000000e+00, %1145
  %1149 = fdiv fast float 1.000000e+00, %1146
  %1150 = fdiv fast float 1.000000e+00, %1147
  %1151 = fsub fast float 1.000000e+00, %1142
  %1152 = fsub fast float 1.000000e+00, %1143
  %1153 = fsub fast float 1.000000e+00, %1144
  %1154 = fmul fast float %1025, %762
  %1155 = fmul fast float %1154, %1151
  %1156 = fmul fast float %1155, %1148
  %1157 = fmul fast float %1026, %763
  %1158 = fmul fast float %1157, %1152
  %1159 = fmul fast float %1158, %1149
  %1160 = fmul fast float %1027, %764
  %1161 = fmul fast float %1160, %1153
  %1162 = fmul fast float %1161, %1150
  %1163 = fadd fast float %1156, %759
  %1164 = fadd fast float %1159, %760
  %1165 = fadd fast float %1162, %761
  %1166 = fmul fast float %1142, %762
  %1167 = fmul fast float %1143, %763
  %1168 = fmul fast float %1144, %764
  %1169 = add i32 %17, 2
  %1170 = add i32 %1169, %235
  %1171 = icmp ugt i32 %1170, %162
  br i1 %1171, label %1977, label %1172, !dx.controlflow.hints !31

; <label>:1172                                    ; preds = %798
  %1173 = fmul fast float %329, 5.000000e-01
  %1174 = fadd fast float %333, %325
  %1175 = fmul fast float %1174, 2.500000e-01
  %1176 = fadd fast float %1175, %1173
  %1177 = fmul fast float %317, 5.000000e-01
  %1178 = fadd fast float %321, %313
  %1179 = fmul fast float %1178, 2.500000e-01
  %1180 = fadd fast float %1179, %1177
  %1181 = fcmp fast une float %1180, 0.000000e+00
  br i1 %1181, label %1182, label %1202, !dx.controlflow.hints !32

; <label>:1182                                    ; preds = %1172
  %1183 = add i32 %799, 1
  %1184 = fcmp fast ogt float %1176, 0.000000e+00
  %1185 = call float @dx.op.unary.f32(i32 23, float %1176)  ; Log(value)
  %1186 = select i1 %1184, float %1185, float -3.200000e+01
  %1187 = call float @dx.op.binary.f32(i32 35, float %1186, float -3.200000e+01)  ; FMax(a,b)
  %1188 = call float @dx.op.binary.f32(i32 36, float %1187, float 3.200000e+01)  ; FMin(a,b)
  %1189 = fadd fast float %1188, 3.200000e+01
  %1190 = fmul fast float %1189, 2.000000e+00
  %1191 = fptoui float %1190 to i32
  %1192 = add i32 %1191, %800
  %1193 = fcmp fast ogt float %1180, 0.000000e+00
  %1194 = call float @dx.op.unary.f32(i32 23, float %1180)  ; Log(value)
  %1195 = select i1 %1193, float %1194, float -3.200000e+01
  %1196 = call float @dx.op.binary.f32(i32 35, float %1195, float -3.200000e+01)  ; FMax(a,b)
  %1197 = call float @dx.op.binary.f32(i32 36, float %1196, float 3.200000e+01)  ; FMin(a,b)
  %1198 = fadd fast float %1197, 3.200000e+01
  %1199 = fmul fast float %1198, 2.000000e+00
  %1200 = fptoui float %1199 to i32
  %1201 = add i32 %1200, %801
  br label %1202

; <label>:1202                                    ; preds = %1182, %1172
  %1203 = phi i32 [ %1183, %1182 ], [ %799, %1172 ]
  %1204 = phi i32 [ %1192, %1182 ], [ %800, %1172 ]
  %1205 = phi i32 [ %1201, %1182 ], [ %801, %1172 ]
  %1206 = uitofp i32 %1170 to float
  %1207 = fadd fast float %1206, 5.000000e-01
  %1208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1209 = extractvalue %dx.types.CBufRet.f32 %1208, 0
  %1210 = extractvalue %dx.types.CBufRet.f32 %1208, 1
  %1211 = fmul fast float %1126, %1207
  %1212 = call float @dx.op.unary.f32(i32 21, float %1211)  ; Exp(value)
  %1213 = fmul fast float %1212, %1125
  %1214 = fsub fast float 4.000000e+00, %1125
  %1215 = fadd fast float %1214, %1213
  %1216 = fmul fast float %394, %1209
  %1217 = fmul fast float %396, %1210
  %1218 = fsub fast float 1.000000e+00, %1216
  %1219 = fsub fast float 1.000000e+00, %1217
  %1220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1221 = extractvalue %dx.types.CBufRet.f32 %1220, 0
  %1222 = extractvalue %dx.types.CBufRet.f32 %1220, 1
  %1223 = extractvalue %dx.types.CBufRet.f32 %1220, 2
  %1224 = fmul fast float %1221, %1218
  %1225 = fmul fast float %1222, %1218
  %1226 = fmul fast float %1223, %1218
  %1227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1228 = extractvalue %dx.types.CBufRet.f32 %1227, 0
  %1229 = extractvalue %dx.types.CBufRet.f32 %1227, 1
  %1230 = extractvalue %dx.types.CBufRet.f32 %1227, 2
  %1231 = fmul fast float %1228, %1219
  %1232 = fmul fast float %1229, %1219
  %1233 = fmul fast float %1230, %1219
  %1234 = fadd fast float %1231, %1224
  %1235 = fadd fast float %1232, %1225
  %1236 = fadd fast float %1233, %1226
  %1237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1238 = extractvalue %dx.types.CBufRet.f32 %1237, 0
  %1239 = extractvalue %dx.types.CBufRet.f32 %1237, 1
  %1240 = extractvalue %dx.types.CBufRet.f32 %1237, 2
  %1241 = fadd fast float %1234, %1238
  %1242 = fadd fast float %1235, %1239
  %1243 = fadd fast float %1236, %1240
  %1244 = fmul fast float %1241, %1215
  %1245 = fmul fast float %1242, %1215
  %1246 = fmul fast float %1243, %1215
  %1247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %1248 = extractvalue %dx.types.CBufRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.CBufRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.CBufRet.f32 %1247, 3
  %1251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %1252 = extractvalue %dx.types.CBufRet.f32 %1251, 0
  %1253 = extractvalue %dx.types.CBufRet.f32 %1251, 1
  %1254 = extractvalue %dx.types.CBufRet.f32 %1251, 3
  %1255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %1256 = extractvalue %dx.types.CBufRet.f32 %1255, 0
  %1257 = extractvalue %dx.types.CBufRet.f32 %1255, 1
  %1258 = extractvalue %dx.types.CBufRet.f32 %1255, 3
  %1259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %1260 = extractvalue %dx.types.CBufRet.f32 %1259, 0
  %1261 = extractvalue %dx.types.CBufRet.f32 %1259, 1
  %1262 = extractvalue %dx.types.CBufRet.f32 %1259, 3
  %1263 = fmul fast float %1244, %1248
  %1264 = call float @dx.op.tertiary.f32(i32 46, float %1252, float %1245, float %1263)  ; FMad(a,b,c)
  %1265 = call float @dx.op.tertiary.f32(i32 46, float %1256, float %1246, float %1264)  ; FMad(a,b,c)
  %1266 = fadd fast float %1265, %1260
  %1267 = fmul fast float %1244, %1249
  %1268 = call float @dx.op.tertiary.f32(i32 46, float %1253, float %1245, float %1267)  ; FMad(a,b,c)
  %1269 = call float @dx.op.tertiary.f32(i32 46, float %1257, float %1246, float %1268)  ; FMad(a,b,c)
  %1270 = fadd fast float %1269, %1261
  %1271 = fmul fast float %1244, %1250
  %1272 = call float @dx.op.tertiary.f32(i32 46, float %1254, float %1245, float %1271)  ; FMad(a,b,c)
  %1273 = call float @dx.op.tertiary.f32(i32 46, float %1258, float %1246, float %1272)  ; FMad(a,b,c)
  %1274 = fadd fast float %1273, %1262
  %1275 = fmul fast float %1266, 5.000000e-01
  %1276 = fdiv fast float %1275, %1274
  %1277 = fadd fast float %1276, 5.000000e-01
  %1278 = fmul fast float %1270, -5.000000e-01
  %1279 = fdiv fast float %1278, %1274
  %1280 = fadd fast float %1279, 5.000000e-01
  %1281 = extractvalue %dx.types.CBufRet.f32 %1124, 2
  %1282 = extractvalue %dx.types.CBufRet.f32 %1124, 3
  %1283 = fadd fast float %1274, -4.000000e+00
  %1284 = call float @dx.op.binary.f32(i32 35, float %1283, float 0.000000e+00)  ; FMax(a,b)
  %1285 = fadd fast float %1284, %1125
  %1286 = fmul fast float %1285, %1281
  %1287 = call float @dx.op.unary.f32(i32 23, float %1286)  ; Log(value)
  %1288 = fmul fast float %1287, %1282
  %1289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1290 = extractvalue %dx.types.CBufRet.f32 %1289, 2
  %1291 = fmul fast float %1288, %1290
  %1292 = call float @dx.op.unary.f32(i32 27, float %1277)  ; Round_ni(value)
  %1293 = call float @dx.op.unary.f32(i32 6, float %1292)  ; FAbs(value)
  %1294 = call float @dx.op.unary.f32(i32 27, float %1280)  ; Round_ni(value)
  %1295 = call float @dx.op.unary.f32(i32 6, float %1294)  ; FAbs(value)
  %1296 = fadd fast float %1295, %1293
  %1297 = call float @dx.op.unary.f32(i32 27, float %1291)  ; Round_ni(value)
  %1298 = call float @dx.op.unary.f32(i32 6, float %1297)  ; FAbs(value)
  %1299 = fadd fast float %1296, %1298
  %1300 = fcmp fast oeq float %1299, 0.000000e+00
  %1301 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %1277, float %1280, float 1.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1302 = extractvalue %dx.types.ResRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.ResRet.f32 %1301, 1
  %1304 = extractvalue %dx.types.ResRet.f32 %1301, 2
  %1305 = extractvalue %dx.types.ResRet.f32 %1301, 3
  %1306 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %1277, float %1280, float 2.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1307 = extractvalue %dx.types.ResRet.f32 %1306, 0
  %1308 = extractvalue %dx.types.ResRet.f32 %1306, 1
  %1309 = extractvalue %dx.types.ResRet.f32 %1306, 2
  %1310 = extractvalue %dx.types.ResRet.f32 %1306, 3
  %1311 = call float @dx.op.binary.f32(i32 35, float %1303, float %1304)  ; FMax(a,b)
  %1312 = call float @dx.op.binary.f32(i32 35, float %1302, float %1311)  ; FMax(a,b)
  %1313 = call float @dx.op.binary.f32(i32 35, float %1312, float %1305)  ; FMax(a,b)
  %1314 = call float @dx.op.binary.f32(i32 36, float %1308, float %1309)  ; FMin(a,b)
  %1315 = call float @dx.op.binary.f32(i32 36, float %1307, float %1314)  ; FMin(a,b)
  %1316 = call float @dx.op.binary.f32(i32 36, float %1315, float %1310)  ; FMin(a,b)
  %1317 = fmul fast float %1313, 2.550000e+02
  %1318 = fadd fast float %1317, 0x3F70101020000000
  %1319 = fptoui float %1318 to i32
  %1320 = fmul fast float %1316, 2.550000e+02
  %1321 = fadd fast float %1320, 0x3F70101020000000
  %1322 = fptoui float %1321 to i32
  %1323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1324 = extractvalue %dx.types.CBufRet.i32 %1323, 0
  %1325 = uitofp i32 %1324 to float
  %1326 = fmul fast float %1325, %1291
  %1327 = fptoui float %1326 to i32
  %1328 = icmp ult i32 %1327, %1322
  %1329 = icmp uge i32 %1327, %1319
  %1330 = and i1 %1328, %1329
  %1331 = and i1 %1300, %1330
  %1332 = uitofp i32 %1319 to float
  %1333 = uitofp i32 %1322 to float
  %1334 = fadd fast float %1332, 5.000000e-01
  %1335 = fadd fast float %1333, 5.000000e-01
  %1336 = fmul fast float %1290, %1334
  %1337 = fmul fast float %1335, %1290
  %1338 = fadd fast float %1336, 0x3F0FFB4800000000
  %1339 = fadd fast float %1337, 0xBF0FFB4800000000
  %1340 = call float @dx.op.binary.f32(i32 35, float %1291, float %1338)  ; FMax(a,b)
  %1341 = call float @dx.op.binary.f32(i32 36, float %1340, float %1339)  ; FMin(a,b)
  %1342 = extractvalue %dx.types.CBufRet.f32 %1208, 2
  %1343 = fmul fast float %1209, %380
  %1344 = fmul fast float %1210, %381
  %1345 = fmul fast float %1342, %1207
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 1
  %1348 = extractvalue %dx.types.CBufRet.f32 %1346, 2
  %1349 = fmul fast float %1347, %1341
  %1350 = fsub fast float %1347, %1348
  %1351 = call float @dx.op.binary.f32(i32 35, float %1349, float %1348)  ; FMax(a,b)
  %1352 = call float @dx.op.binary.f32(i32 36, float %1351, float %1350)  ; FMin(a,b)
  %1353 = fmul fast float %1348, 2.000000e+00
  %1354 = fmul fast float %1345, %1347
  %1355 = fsub fast float %1347, %1353
  %1356 = call float @dx.op.binary.f32(i32 35, float %1354, float %1353)  ; FMax(a,b)
  %1357 = call float @dx.op.binary.f32(i32 36, float %1356, float %1355)  ; FMin(a,b)
  %1358 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %1343, float %1344, float %1357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1359 = extractvalue %dx.types.ResRet.f32 %1358, 0
  %1360 = extractvalue %dx.types.ResRet.f32 %1358, 1
  %1361 = fmul fast float %1359, 0x3FF7154760000000
  %1362 = fmul fast float %1360, 0x3FF7154760000000
  %1363 = call float @dx.op.unary.f32(i32 21, float %1361)  ; Exp(value)
  %1364 = call float @dx.op.unary.f32(i32 21, float %1362)  ; Exp(value)
  %1365 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1366 = extractvalue %dx.types.CBufRet.f32 %1365, 1
  %1367 = fmul fast float %1366, %1363
  %1368 = fmul fast float %1366, %1364
  %1369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %1343, float %1344, float %1357, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.ResRet.f32 %1369, 1
  %1372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1373 = extractvalue %dx.types.CBufRet.f32 %1372, 1
  %1374 = fmul fast float %1373, %1370
  %1375 = fmul fast float %1373, %1371
  %1376 = fmul fast float %1367, %1367
  %1377 = fsub fast float %1368, %1376
  %1378 = call float @dx.op.unary.f32(i32 6, float %1377)  ; FAbs(value)
  %1379 = call float @dx.op.unary.f32(i32 24, float %1378)  ; Sqrt(value)
  %1380 = fdiv fast float %1379, %1367
  %1381 = fmul fast float %1374, %1374
  %1382 = fsub fast float %1375, %1381
  %1383 = call float @dx.op.unary.f32(i32 6, float %1382)  ; FAbs(value)
  %1384 = call float @dx.op.unary.f32(i32 24, float %1383)  ; Sqrt(value)
  %1385 = fdiv fast float %1384, %1374
  %1386 = call float @dx.op.binary.f32(i32 35, float %1380, float %1385)  ; FMax(a,b)
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 2
  %1389 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %1277, float %1280, float %1352, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.ResRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.ResRet.f32 %1390, 2
  %1394 = extractvalue %dx.types.CBufRet.f32 %1365, 2
  %1395 = fmul fast float %1394, %1391
  %1396 = fmul fast float %1394, %1392
  %1397 = fmul fast float %1394, %1393
  %1398 = fmul fast float %1396, 5.000000e-01
  %1399 = fadd fast float %1393, %1391
  %1400 = fmul fast float %1394, %1399
  %1401 = fmul fast float %1400, 2.500000e-01
  %1402 = fadd fast float %1401, %1398
  %1403 = fmul fast float %1386, %1367
  %1404 = fmul fast float %1388, %1403
  %1405 = fsub fast float %1367, %1404
  %1406 = fadd fast float %1404, %1367
  %1407 = call float @dx.op.binary.f32(i32 35, float %1402, float %1405)  ; FMax(a,b)
  %1408 = call float @dx.op.binary.f32(i32 36, float %1407, float %1406)  ; FMin(a,b)
  %1409 = fcmp fast une float %1402, 0.000000e+00
  %1410 = fdiv fast float 1.000000e+00, %1402
  %1411 = fmul fast float %1408, %1395
  %1412 = fmul fast float %1411, %1410
  %1413 = fmul fast float %1408, %1396
  %1414 = fmul fast float %1413, %1410
  %1415 = fmul fast float %1408, %1397
  %1416 = fmul fast float %1415, %1410
  %1417 = select i1 %1409, float %1412, float %325
  %1418 = select i1 %1409, float %1414, float %329
  %1419 = select i1 %1409, float %1416, float %333
  %1420 = fsub fast float %1417, %325
  %1421 = fsub fast float %1418, %329
  %1422 = fsub fast float %1419, %333
  %1423 = fmul fast float %1420, %1389
  %1424 = fmul fast float %1421, %1389
  %1425 = fmul fast float %1422, %1389
  %1426 = fadd fast float %1423, %325
  %1427 = fadd fast float %1424, %329
  %1428 = fadd fast float %1425, %333
  %1429 = select i1 %1331, float %1426, float %325
  %1430 = select i1 %1331, float %1427, float %329
  %1431 = select i1 %1331, float %1428, float %333
  %1432 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1277, float %1280, float %1352, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1434 = extractvalue %dx.types.ResRet.f32 %1433, 0
  %1435 = extractvalue %dx.types.ResRet.f32 %1433, 1
  %1436 = extractvalue %dx.types.ResRet.f32 %1433, 2
  %1437 = extractvalue %dx.types.CBufRet.f32 %1372, 2
  %1438 = fmul fast float %1437, %1434
  %1439 = fmul fast float %1437, %1435
  %1440 = fmul fast float %1437, %1436
  %1441 = fmul fast float %1439, 5.000000e-01
  %1442 = fadd fast float %1436, %1434
  %1443 = fmul fast float %1437, %1442
  %1444 = fmul fast float %1443, 2.500000e-01
  %1445 = fadd fast float %1444, %1441
  %1446 = fmul fast float %1386, %1374
  %1447 = fmul fast float %1388, %1446
  %1448 = fsub fast float %1374, %1447
  %1449 = fadd fast float %1447, %1374
  %1450 = call float @dx.op.binary.f32(i32 35, float %1445, float %1448)  ; FMax(a,b)
  %1451 = call float @dx.op.binary.f32(i32 36, float %1450, float %1449)  ; FMin(a,b)
  %1452 = fcmp fast une float %1445, 0.000000e+00
  %1453 = fdiv fast float 1.000000e+00, %1445
  %1454 = fmul fast float %1451, %1438
  %1455 = fmul fast float %1454, %1453
  %1456 = fmul fast float %1451, %1439
  %1457 = fmul fast float %1456, %1453
  %1458 = fmul fast float %1451, %1440
  %1459 = fmul fast float %1458, %1453
  %1460 = select i1 %1452, float %1455, float %313
  %1461 = select i1 %1452, float %1457, float %317
  %1462 = select i1 %1452, float %1459, float %321
  %1463 = fsub fast float %1460, %313
  %1464 = fsub fast float %1461, %317
  %1465 = fsub fast float %1462, %321
  %1466 = fmul fast float %1463, %1432
  %1467 = fmul fast float %1464, %1432
  %1468 = fmul fast float %1465, %1432
  %1469 = fadd fast float %1466, %313
  %1470 = fadd fast float %1467, %317
  %1471 = fadd fast float %1468, %321
  %1472 = select i1 %1331, float %1469, float %313
  %1473 = select i1 %1331, float %1470, float %317
  %1474 = select i1 %1331, float %1471, float %321
  %1475 = extractvalue %dx.types.CBufRet.f32 %1365, 0
  %1476 = fmul fast float %1475, %1429
  %1477 = fmul fast float %1475, %1430
  %1478 = fmul fast float %1475, %1431
  %1479 = call float @dx.op.unary.f32(i32 23, float %1476)  ; Log(value)
  %1480 = fadd fast float %1479, -7.000000e+00
  %1481 = call float @dx.op.unary.f32(i32 21, float %1480)  ; Exp(value)
  %1482 = fmul fast float %1481, %665
  %1483 = fcmp fast ogt float %1476, 0.000000e+00
  %1484 = select i1 %1483, float %1482, float 0.000000e+00
  %1485 = fadd fast float %1484, %1476
  %1486 = call float @dx.op.unary.f32(i32 23, float %1477)  ; Log(value)
  %1487 = fadd fast float %1486, -7.000000e+00
  %1488 = call float @dx.op.unary.f32(i32 21, float %1487)  ; Exp(value)
  %1489 = fmul fast float %1488, %676
  %1490 = fcmp fast ogt float %1477, 0.000000e+00
  %1491 = select i1 %1490, float %1489, float 0.000000e+00
  %1492 = fadd fast float %1491, %1477
  %1493 = call float @dx.op.unary.f32(i32 23, float %1478)  ; Log(value)
  %1494 = fadd fast float %1493, -6.000000e+00
  %1495 = call float @dx.op.unary.f32(i32 21, float %1494)  ; Exp(value)
  %1496 = fmul fast float %1495, %687
  %1497 = fcmp fast ogt float %1478, 0.000000e+00
  %1498 = select i1 %1497, float %1496, float 0.000000e+00
  %1499 = fadd fast float %1498, %1478
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %337, i32 %340, i32 %343, float %1485, float %1492, float %1499, float %1485, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 0
  %1502 = fmul fast float %1501, %1472
  %1503 = fmul fast float %1501, %1473
  %1504 = fmul fast float %1501, %1474
  %1505 = call float @dx.op.unary.f32(i32 23, float %1502)  ; Log(value)
  %1506 = fadd fast float %1505, -7.000000e+00
  %1507 = call float @dx.op.unary.f32(i32 21, float %1506)  ; Exp(value)
  %1508 = fmul fast float %1507, %665
  %1509 = fcmp fast ogt float %1502, 0.000000e+00
  %1510 = select i1 %1509, float %1508, float 0.000000e+00
  %1511 = fadd fast float %1510, %1502
  %1512 = call float @dx.op.unary.f32(i32 23, float %1503)  ; Log(value)
  %1513 = fadd fast float %1512, -7.000000e+00
  %1514 = call float @dx.op.unary.f32(i32 21, float %1513)  ; Exp(value)
  %1515 = fmul fast float %1514, %676
  %1516 = fcmp fast ogt float %1503, 0.000000e+00
  %1517 = select i1 %1516, float %1515, float 0.000000e+00
  %1518 = fadd fast float %1517, %1503
  %1519 = call float @dx.op.unary.f32(i32 23, float %1504)  ; Log(value)
  %1520 = fadd fast float %1519, -6.000000e+00
  %1521 = call float @dx.op.unary.f32(i32 21, float %1520)  ; Exp(value)
  %1522 = fmul fast float %1521, %687
  %1523 = fcmp fast ogt float %1504, 0.000000e+00
  %1524 = select i1 %1523, float %1522, float 0.000000e+00
  %1525 = fadd fast float %1524, %1504
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %337, i32 %340, i32 %343, float %1511, float %1518, float %1525, float %1511, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1526 = add i32 %1170, 1
  %1527 = uitofp i32 %1526 to float
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 0
  %1530 = extractvalue %dx.types.CBufRet.f32 %1528, 1
  %1531 = fmul fast float %1530, %1527
  %1532 = call float @dx.op.unary.f32(i32 21, float %1531)  ; Exp(value)
  %1533 = fmul fast float %1530, %1206
  %1534 = call float @dx.op.unary.f32(i32 21, float %1533)  ; Exp(value)
  %1535 = fsub fast float %1532, %1534
  %1536 = fmul fast float %1529, %1535
  %1537 = fmul fast float %1536, %1472
  %1538 = fmul fast float %1536, %1473
  %1539 = fmul fast float %1536, %1474
  %1540 = call float @dx.op.binary.f32(i32 36, float %1537, float 9.300000e+01)  ; FMin(a,b)
  %1541 = call float @dx.op.binary.f32(i32 36, float %1538, float 9.300000e+01)  ; FMin(a,b)
  %1542 = call float @dx.op.binary.f32(i32 36, float %1539, float 9.300000e+01)  ; FMin(a,b)
  %1543 = fmul fast float %1540, 0xBFF7154760000000
  %1544 = fmul fast float %1541, 0xBFF7154760000000
  %1545 = fmul fast float %1542, 0xBFF7154760000000
  %1546 = call float @dx.op.unary.f32(i32 21, float %1543)  ; Exp(value)
  %1547 = call float @dx.op.unary.f32(i32 21, float %1544)  ; Exp(value)
  %1548 = call float @dx.op.unary.f32(i32 21, float %1545)  ; Exp(value)
  %1549 = call float @dx.op.binary.f32(i32 35, float %1472, float 0x3F10000000000000)  ; FMax(a,b)
  %1550 = call float @dx.op.binary.f32(i32 35, float %1473, float 0x3F10000000000000)  ; FMax(a,b)
  %1551 = call float @dx.op.binary.f32(i32 35, float %1474, float 0x3F10000000000000)  ; FMax(a,b)
  %1552 = fdiv fast float 1.000000e+00, %1549
  %1553 = fdiv fast float 1.000000e+00, %1550
  %1554 = fdiv fast float 1.000000e+00, %1551
  %1555 = fsub fast float 1.000000e+00, %1546
  %1556 = fsub fast float 1.000000e+00, %1547
  %1557 = fsub fast float 1.000000e+00, %1548
  %1558 = fmul fast float %1429, %1166
  %1559 = fmul fast float %1558, %1555
  %1560 = fmul fast float %1559, %1552
  %1561 = fmul fast float %1430, %1167
  %1562 = fmul fast float %1561, %1556
  %1563 = fmul fast float %1562, %1553
  %1564 = fmul fast float %1431, %1168
  %1565 = fmul fast float %1564, %1557
  %1566 = fmul fast float %1565, %1554
  %1567 = fadd fast float %1560, %1163
  %1568 = fadd fast float %1563, %1164
  %1569 = fadd fast float %1566, %1165
  %1570 = fmul fast float %1546, %1166
  %1571 = fmul fast float %1547, %1167
  %1572 = fmul fast float %1548, %1168
  %1573 = add i32 %17, 3
  %1574 = add i32 %1573, %235
  %1575 = icmp ugt i32 %1574, %162
  br i1 %1575, label %1977, label %1576, !dx.controlflow.hints !31

; <label>:1576                                    ; preds = %1202
  %1577 = fmul fast float %328, 5.000000e-01
  %1578 = fadd fast float %332, %324
  %1579 = fmul fast float %1578, 2.500000e-01
  %1580 = fadd fast float %1579, %1577
  %1581 = fmul fast float %316, 5.000000e-01
  %1582 = fadd fast float %320, %312
  %1583 = fmul fast float %1582, 2.500000e-01
  %1584 = fadd fast float %1583, %1581
  %1585 = fcmp fast une float %1584, 0.000000e+00
  br i1 %1585, label %1586, label %1606, !dx.controlflow.hints !32

; <label>:1586                                    ; preds = %1576
  %1587 = add i32 %1203, 1
  %1588 = fcmp fast ogt float %1580, 0.000000e+00
  %1589 = call float @dx.op.unary.f32(i32 23, float %1580)  ; Log(value)
  %1590 = select i1 %1588, float %1589, float -3.200000e+01
  %1591 = call float @dx.op.binary.f32(i32 35, float %1590, float -3.200000e+01)  ; FMax(a,b)
  %1592 = call float @dx.op.binary.f32(i32 36, float %1591, float 3.200000e+01)  ; FMin(a,b)
  %1593 = fadd fast float %1592, 3.200000e+01
  %1594 = fmul fast float %1593, 2.000000e+00
  %1595 = fptoui float %1594 to i32
  %1596 = add i32 %1595, %1204
  %1597 = fcmp fast ogt float %1584, 0.000000e+00
  %1598 = call float @dx.op.unary.f32(i32 23, float %1584)  ; Log(value)
  %1599 = select i1 %1597, float %1598, float -3.200000e+01
  %1600 = call float @dx.op.binary.f32(i32 35, float %1599, float -3.200000e+01)  ; FMax(a,b)
  %1601 = call float @dx.op.binary.f32(i32 36, float %1600, float 3.200000e+01)  ; FMin(a,b)
  %1602 = fadd fast float %1601, 3.200000e+01
  %1603 = fmul fast float %1602, 2.000000e+00
  %1604 = fptoui float %1603 to i32
  %1605 = add i32 %1604, %1205
  br label %1606

; <label>:1606                                    ; preds = %1586, %1576
  %1607 = phi i32 [ %1587, %1586 ], [ %1203, %1576 ]
  %1608 = phi i32 [ %1596, %1586 ], [ %1204, %1576 ]
  %1609 = phi i32 [ %1605, %1586 ], [ %1205, %1576 ]
  %1610 = uitofp i32 %1574 to float
  %1611 = fadd fast float %1610, 5.000000e-01
  %1612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1613 = extractvalue %dx.types.CBufRet.f32 %1612, 0
  %1614 = extractvalue %dx.types.CBufRet.f32 %1612, 1
  %1615 = fmul fast float %1530, %1611
  %1616 = call float @dx.op.unary.f32(i32 21, float %1615)  ; Exp(value)
  %1617 = fmul fast float %1616, %1529
  %1618 = fsub fast float 4.000000e+00, %1529
  %1619 = fadd fast float %1618, %1617
  %1620 = fmul fast float %394, %1613
  %1621 = fmul fast float %396, %1614
  %1622 = fsub fast float 1.000000e+00, %1620
  %1623 = fsub fast float 1.000000e+00, %1621
  %1624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1625 = extractvalue %dx.types.CBufRet.f32 %1624, 0
  %1626 = extractvalue %dx.types.CBufRet.f32 %1624, 1
  %1627 = extractvalue %dx.types.CBufRet.f32 %1624, 2
  %1628 = fmul fast float %1625, %1622
  %1629 = fmul fast float %1626, %1622
  %1630 = fmul fast float %1627, %1622
  %1631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1632 = extractvalue %dx.types.CBufRet.f32 %1631, 0
  %1633 = extractvalue %dx.types.CBufRet.f32 %1631, 1
  %1634 = extractvalue %dx.types.CBufRet.f32 %1631, 2
  %1635 = fmul fast float %1632, %1623
  %1636 = fmul fast float %1633, %1623
  %1637 = fmul fast float %1634, %1623
  %1638 = fadd fast float %1635, %1628
  %1639 = fadd fast float %1636, %1629
  %1640 = fadd fast float %1637, %1630
  %1641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1642 = extractvalue %dx.types.CBufRet.f32 %1641, 0
  %1643 = extractvalue %dx.types.CBufRet.f32 %1641, 1
  %1644 = extractvalue %dx.types.CBufRet.f32 %1641, 2
  %1645 = fadd fast float %1638, %1642
  %1646 = fadd fast float %1639, %1643
  %1647 = fadd fast float %1640, %1644
  %1648 = fmul fast float %1645, %1619
  %1649 = fmul fast float %1646, %1619
  %1650 = fmul fast float %1647, %1619
  %1651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %1652 = extractvalue %dx.types.CBufRet.f32 %1651, 0
  %1653 = extractvalue %dx.types.CBufRet.f32 %1651, 1
  %1654 = extractvalue %dx.types.CBufRet.f32 %1651, 3
  %1655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %1656 = extractvalue %dx.types.CBufRet.f32 %1655, 0
  %1657 = extractvalue %dx.types.CBufRet.f32 %1655, 1
  %1658 = extractvalue %dx.types.CBufRet.f32 %1655, 3
  %1659 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %1660 = extractvalue %dx.types.CBufRet.f32 %1659, 0
  %1661 = extractvalue %dx.types.CBufRet.f32 %1659, 1
  %1662 = extractvalue %dx.types.CBufRet.f32 %1659, 3
  %1663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %1664 = extractvalue %dx.types.CBufRet.f32 %1663, 0
  %1665 = extractvalue %dx.types.CBufRet.f32 %1663, 1
  %1666 = extractvalue %dx.types.CBufRet.f32 %1663, 3
  %1667 = fmul fast float %1648, %1652
  %1668 = call float @dx.op.tertiary.f32(i32 46, float %1656, float %1649, float %1667)  ; FMad(a,b,c)
  %1669 = call float @dx.op.tertiary.f32(i32 46, float %1660, float %1650, float %1668)  ; FMad(a,b,c)
  %1670 = fadd fast float %1669, %1664
  %1671 = fmul fast float %1648, %1653
  %1672 = call float @dx.op.tertiary.f32(i32 46, float %1657, float %1649, float %1671)  ; FMad(a,b,c)
  %1673 = call float @dx.op.tertiary.f32(i32 46, float %1661, float %1650, float %1672)  ; FMad(a,b,c)
  %1674 = fadd fast float %1673, %1665
  %1675 = fmul fast float %1648, %1654
  %1676 = call float @dx.op.tertiary.f32(i32 46, float %1658, float %1649, float %1675)  ; FMad(a,b,c)
  %1677 = call float @dx.op.tertiary.f32(i32 46, float %1662, float %1650, float %1676)  ; FMad(a,b,c)
  %1678 = fadd fast float %1677, %1666
  %1679 = fmul fast float %1670, 5.000000e-01
  %1680 = fdiv fast float %1679, %1678
  %1681 = fadd fast float %1680, 5.000000e-01
  %1682 = fmul fast float %1674, -5.000000e-01
  %1683 = fdiv fast float %1682, %1678
  %1684 = fadd fast float %1683, 5.000000e-01
  %1685 = extractvalue %dx.types.CBufRet.f32 %1528, 2
  %1686 = extractvalue %dx.types.CBufRet.f32 %1528, 3
  %1687 = fadd fast float %1678, -4.000000e+00
  %1688 = call float @dx.op.binary.f32(i32 35, float %1687, float 0.000000e+00)  ; FMax(a,b)
  %1689 = fadd fast float %1688, %1529
  %1690 = fmul fast float %1689, %1685
  %1691 = call float @dx.op.unary.f32(i32 23, float %1690)  ; Log(value)
  %1692 = fmul fast float %1691, %1686
  %1693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1694 = extractvalue %dx.types.CBufRet.f32 %1693, 2
  %1695 = fmul fast float %1692, %1694
  %1696 = call float @dx.op.unary.f32(i32 27, float %1681)  ; Round_ni(value)
  %1697 = call float @dx.op.unary.f32(i32 6, float %1696)  ; FAbs(value)
  %1698 = call float @dx.op.unary.f32(i32 27, float %1684)  ; Round_ni(value)
  %1699 = call float @dx.op.unary.f32(i32 6, float %1698)  ; FAbs(value)
  %1700 = fadd fast float %1699, %1697
  %1701 = call float @dx.op.unary.f32(i32 27, float %1695)  ; Round_ni(value)
  %1702 = call float @dx.op.unary.f32(i32 6, float %1701)  ; FAbs(value)
  %1703 = fadd fast float %1700, %1702
  %1704 = fcmp fast oeq float %1703, 0.000000e+00
  %1705 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %1681, float %1684, float 1.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1706 = extractvalue %dx.types.ResRet.f32 %1705, 0
  %1707 = extractvalue %dx.types.ResRet.f32 %1705, 1
  %1708 = extractvalue %dx.types.ResRet.f32 %1705, 2
  %1709 = extractvalue %dx.types.ResRet.f32 %1705, 3
  %1710 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %1681, float %1684, float 2.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1711 = extractvalue %dx.types.ResRet.f32 %1710, 0
  %1712 = extractvalue %dx.types.ResRet.f32 %1710, 1
  %1713 = extractvalue %dx.types.ResRet.f32 %1710, 2
  %1714 = extractvalue %dx.types.ResRet.f32 %1710, 3
  %1715 = call float @dx.op.binary.f32(i32 35, float %1707, float %1708)  ; FMax(a,b)
  %1716 = call float @dx.op.binary.f32(i32 35, float %1706, float %1715)  ; FMax(a,b)
  %1717 = call float @dx.op.binary.f32(i32 35, float %1716, float %1709)  ; FMax(a,b)
  %1718 = call float @dx.op.binary.f32(i32 36, float %1712, float %1713)  ; FMin(a,b)
  %1719 = call float @dx.op.binary.f32(i32 36, float %1711, float %1718)  ; FMin(a,b)
  %1720 = call float @dx.op.binary.f32(i32 36, float %1719, float %1714)  ; FMin(a,b)
  %1721 = fmul fast float %1717, 2.550000e+02
  %1722 = fadd fast float %1721, 0x3F70101020000000
  %1723 = fptoui float %1722 to i32
  %1724 = fmul fast float %1720, 2.550000e+02
  %1725 = fadd fast float %1724, 0x3F70101020000000
  %1726 = fptoui float %1725 to i32
  %1727 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %16, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1728 = extractvalue %dx.types.CBufRet.i32 %1727, 0
  %1729 = uitofp i32 %1728 to float
  %1730 = fmul fast float %1729, %1695
  %1731 = fptoui float %1730 to i32
  %1732 = icmp ult i32 %1731, %1726
  %1733 = icmp uge i32 %1731, %1723
  %1734 = and i1 %1732, %1733
  %1735 = and i1 %1704, %1734
  %1736 = uitofp i32 %1723 to float
  %1737 = uitofp i32 %1726 to float
  %1738 = fadd fast float %1736, 5.000000e-01
  %1739 = fadd fast float %1737, 5.000000e-01
  %1740 = fmul fast float %1694, %1738
  %1741 = fmul fast float %1739, %1694
  %1742 = fadd fast float %1740, 0x3F0FFB4800000000
  %1743 = fadd fast float %1741, 0xBF0FFB4800000000
  %1744 = call float @dx.op.binary.f32(i32 35, float %1695, float %1742)  ; FMax(a,b)
  %1745 = call float @dx.op.binary.f32(i32 36, float %1744, float %1743)  ; FMin(a,b)
  %1746 = extractvalue %dx.types.CBufRet.f32 %1612, 2
  %1747 = fmul fast float %1613, %380
  %1748 = fmul fast float %1614, %381
  %1749 = fmul fast float %1746, %1611
  %1750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1751 = extractvalue %dx.types.CBufRet.f32 %1750, 1
  %1752 = extractvalue %dx.types.CBufRet.f32 %1750, 2
  %1753 = fmul fast float %1751, %1745
  %1754 = fsub fast float %1751, %1752
  %1755 = call float @dx.op.binary.f32(i32 35, float %1753, float %1752)  ; FMax(a,b)
  %1756 = call float @dx.op.binary.f32(i32 36, float %1755, float %1754)  ; FMin(a,b)
  %1757 = fmul fast float %1752, 2.000000e+00
  %1758 = fmul fast float %1749, %1751
  %1759 = fsub fast float %1751, %1757
  %1760 = call float @dx.op.binary.f32(i32 35, float %1758, float %1757)  ; FMax(a,b)
  %1761 = call float @dx.op.binary.f32(i32 36, float %1760, float %1759)  ; FMin(a,b)
  %1762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %1747, float %1748, float %1761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1763 = extractvalue %dx.types.ResRet.f32 %1762, 0
  %1764 = extractvalue %dx.types.ResRet.f32 %1762, 1
  %1765 = fmul fast float %1763, 0x3FF7154760000000
  %1766 = fmul fast float %1764, 0x3FF7154760000000
  %1767 = call float @dx.op.unary.f32(i32 21, float %1765)  ; Exp(value)
  %1768 = call float @dx.op.unary.f32(i32 21, float %1766)  ; Exp(value)
  %1769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1770 = extractvalue %dx.types.CBufRet.f32 %1769, 1
  %1771 = fmul fast float %1770, %1767
  %1772 = fmul fast float %1770, %1768
  %1773 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %1747, float %1748, float %1761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1774 = extractvalue %dx.types.ResRet.f32 %1773, 0
  %1775 = extractvalue %dx.types.ResRet.f32 %1773, 1
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 1
  %1778 = fmul fast float %1777, %1774
  %1779 = fmul fast float %1777, %1775
  %1780 = fmul fast float %1771, %1771
  %1781 = fsub fast float %1772, %1780
  %1782 = call float @dx.op.unary.f32(i32 6, float %1781)  ; FAbs(value)
  %1783 = call float @dx.op.unary.f32(i32 24, float %1782)  ; Sqrt(value)
  %1784 = fdiv fast float %1783, %1771
  %1785 = fmul fast float %1778, %1778
  %1786 = fsub fast float %1779, %1785
  %1787 = call float @dx.op.unary.f32(i32 6, float %1786)  ; FAbs(value)
  %1788 = call float @dx.op.unary.f32(i32 24, float %1787)  ; Sqrt(value)
  %1789 = fdiv fast float %1788, %1778
  %1790 = call float @dx.op.binary.f32(i32 35, float %1784, float %1789)  ; FMax(a,b)
  %1791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %1792 = extractvalue %dx.types.CBufRet.f32 %1791, 2
  %1793 = extractvalue %dx.types.CBufRet.f32 %1791, 0
  %1794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %1681, float %1684, float %1756, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1795 = extractvalue %dx.types.ResRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.ResRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.ResRet.f32 %1794, 2
  %1798 = extractvalue %dx.types.CBufRet.f32 %1769, 2
  %1799 = fmul fast float %1798, %1795
  %1800 = fmul fast float %1798, %1796
  %1801 = fmul fast float %1798, %1797
  %1802 = fmul fast float %1800, 5.000000e-01
  %1803 = fadd fast float %1797, %1795
  %1804 = fmul fast float %1798, %1803
  %1805 = fmul fast float %1804, 2.500000e-01
  %1806 = fadd fast float %1805, %1802
  %1807 = fmul fast float %1790, %1771
  %1808 = fmul fast float %1792, %1807
  %1809 = fsub fast float %1771, %1808
  %1810 = fadd fast float %1808, %1771
  %1811 = call float @dx.op.binary.f32(i32 35, float %1806, float %1809)  ; FMax(a,b)
  %1812 = call float @dx.op.binary.f32(i32 36, float %1811, float %1810)  ; FMin(a,b)
  %1813 = fcmp fast une float %1806, 0.000000e+00
  %1814 = fdiv fast float 1.000000e+00, %1806
  %1815 = fmul fast float %1812, %1799
  %1816 = fmul fast float %1815, %1814
  %1817 = fmul fast float %1812, %1800
  %1818 = fmul fast float %1817, %1814
  %1819 = fmul fast float %1812, %1801
  %1820 = fmul fast float %1819, %1814
  %1821 = select i1 %1813, float %1816, float %324
  %1822 = select i1 %1813, float %1818, float %328
  %1823 = select i1 %1813, float %1820, float %332
  %1824 = fsub fast float %1821, %324
  %1825 = fsub fast float %1822, %328
  %1826 = fsub fast float %1823, %332
  %1827 = fmul fast float %1824, %1793
  %1828 = fmul fast float %1825, %1793
  %1829 = fmul fast float %1826, %1793
  %1830 = fadd fast float %1827, %324
  %1831 = fadd fast float %1828, %328
  %1832 = fadd fast float %1829, %332
  %1833 = select i1 %1735, float %1830, float %324
  %1834 = select i1 %1735, float %1831, float %328
  %1835 = select i1 %1735, float %1832, float %332
  %1836 = extractvalue %dx.types.CBufRet.f32 %1791, 1
  %1837 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1681, float %1684, float %1756, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1838 = extractvalue %dx.types.ResRet.f32 %1837, 0
  %1839 = extractvalue %dx.types.ResRet.f32 %1837, 1
  %1840 = extractvalue %dx.types.ResRet.f32 %1837, 2
  %1841 = extractvalue %dx.types.CBufRet.f32 %1776, 2
  %1842 = fmul fast float %1841, %1838
  %1843 = fmul fast float %1841, %1839
  %1844 = fmul fast float %1841, %1840
  %1845 = fmul fast float %1843, 5.000000e-01
  %1846 = fadd fast float %1840, %1838
  %1847 = fmul fast float %1841, %1846
  %1848 = fmul fast float %1847, 2.500000e-01
  %1849 = fadd fast float %1848, %1845
  %1850 = fmul fast float %1790, %1778
  %1851 = fmul fast float %1792, %1850
  %1852 = fsub fast float %1778, %1851
  %1853 = fadd fast float %1851, %1778
  %1854 = call float @dx.op.binary.f32(i32 35, float %1849, float %1852)  ; FMax(a,b)
  %1855 = call float @dx.op.binary.f32(i32 36, float %1854, float %1853)  ; FMin(a,b)
  %1856 = fcmp fast une float %1849, 0.000000e+00
  %1857 = fdiv fast float 1.000000e+00, %1849
  %1858 = fmul fast float %1855, %1842
  %1859 = fmul fast float %1858, %1857
  %1860 = fmul fast float %1855, %1843
  %1861 = fmul fast float %1860, %1857
  %1862 = fmul fast float %1855, %1844
  %1863 = fmul fast float %1862, %1857
  %1864 = select i1 %1856, float %1859, float %312
  %1865 = select i1 %1856, float %1861, float %316
  %1866 = select i1 %1856, float %1863, float %320
  %1867 = fsub fast float %1864, %312
  %1868 = fsub fast float %1865, %316
  %1869 = fsub fast float %1866, %320
  %1870 = fmul fast float %1867, %1836
  %1871 = fmul fast float %1868, %1836
  %1872 = fmul fast float %1869, %1836
  %1873 = fadd fast float %1870, %312
  %1874 = fadd fast float %1871, %316
  %1875 = fadd fast float %1872, %320
  %1876 = select i1 %1735, float %1873, float %312
  %1877 = select i1 %1735, float %1874, float %316
  %1878 = select i1 %1735, float %1875, float %320
  %1879 = extractvalue %dx.types.CBufRet.f32 %1769, 0
  %1880 = fmul fast float %1879, %1833
  %1881 = fmul fast float %1879, %1834
  %1882 = fmul fast float %1879, %1835
  %1883 = call float @dx.op.unary.f32(i32 23, float %1880)  ; Log(value)
  %1884 = fadd fast float %1883, -7.000000e+00
  %1885 = call float @dx.op.unary.f32(i32 21, float %1884)  ; Exp(value)
  %1886 = fmul fast float %1885, %665
  %1887 = fcmp fast ogt float %1880, 0.000000e+00
  %1888 = select i1 %1887, float %1886, float 0.000000e+00
  %1889 = fadd fast float %1888, %1880
  %1890 = call float @dx.op.unary.f32(i32 23, float %1881)  ; Log(value)
  %1891 = fadd fast float %1890, -7.000000e+00
  %1892 = call float @dx.op.unary.f32(i32 21, float %1891)  ; Exp(value)
  %1893 = fmul fast float %1892, %676
  %1894 = fcmp fast ogt float %1881, 0.000000e+00
  %1895 = select i1 %1894, float %1893, float 0.000000e+00
  %1896 = fadd fast float %1895, %1881
  %1897 = call float @dx.op.unary.f32(i32 23, float %1882)  ; Log(value)
  %1898 = fadd fast float %1897, -6.000000e+00
  %1899 = call float @dx.op.unary.f32(i32 21, float %1898)  ; Exp(value)
  %1900 = fmul fast float %1899, %687
  %1901 = fcmp fast ogt float %1882, 0.000000e+00
  %1902 = select i1 %1901, float %1900, float 0.000000e+00
  %1903 = fadd fast float %1902, %1882
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %336, i32 %339, i32 %342, float %1889, float %1896, float %1903, float %1889, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1905 = extractvalue %dx.types.CBufRet.f32 %1904, 0
  %1906 = fmul fast float %1905, %1876
  %1907 = fmul fast float %1905, %1877
  %1908 = fmul fast float %1905, %1878
  %1909 = call float @dx.op.unary.f32(i32 23, float %1906)  ; Log(value)
  %1910 = fadd fast float %1909, -7.000000e+00
  %1911 = call float @dx.op.unary.f32(i32 21, float %1910)  ; Exp(value)
  %1912 = fmul fast float %1911, %665
  %1913 = fcmp fast ogt float %1906, 0.000000e+00
  %1914 = select i1 %1913, float %1912, float 0.000000e+00
  %1915 = fadd fast float %1914, %1906
  %1916 = call float @dx.op.unary.f32(i32 23, float %1907)  ; Log(value)
  %1917 = fadd fast float %1916, -7.000000e+00
  %1918 = call float @dx.op.unary.f32(i32 21, float %1917)  ; Exp(value)
  %1919 = fmul fast float %1918, %676
  %1920 = fcmp fast ogt float %1907, 0.000000e+00
  %1921 = select i1 %1920, float %1919, float 0.000000e+00
  %1922 = fadd fast float %1921, %1907
  %1923 = call float @dx.op.unary.f32(i32 23, float %1908)  ; Log(value)
  %1924 = fadd fast float %1923, -6.000000e+00
  %1925 = call float @dx.op.unary.f32(i32 21, float %1924)  ; Exp(value)
  %1926 = fmul fast float %1925, %687
  %1927 = fcmp fast ogt float %1908, 0.000000e+00
  %1928 = select i1 %1927, float %1926, float 0.000000e+00
  %1929 = fadd fast float %1928, %1908
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %336, i32 %339, i32 %342, float %1915, float %1922, float %1929, float %1915, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1930 = add i32 %1574, 1
  %1931 = uitofp i32 %1930 to float
  %1932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1933 = extractvalue %dx.types.CBufRet.f32 %1932, 0
  %1934 = extractvalue %dx.types.CBufRet.f32 %1932, 1
  %1935 = fmul fast float %1934, %1931
  %1936 = call float @dx.op.unary.f32(i32 21, float %1935)  ; Exp(value)
  %1937 = fmul fast float %1934, %1610
  %1938 = call float @dx.op.unary.f32(i32 21, float %1937)  ; Exp(value)
  %1939 = fsub fast float %1936, %1938
  %1940 = fmul fast float %1933, %1939
  %1941 = fmul fast float %1940, %1876
  %1942 = fmul fast float %1940, %1877
  %1943 = fmul fast float %1940, %1878
  %1944 = call float @dx.op.binary.f32(i32 36, float %1941, float 9.300000e+01)  ; FMin(a,b)
  %1945 = call float @dx.op.binary.f32(i32 36, float %1942, float 9.300000e+01)  ; FMin(a,b)
  %1946 = call float @dx.op.binary.f32(i32 36, float %1943, float 9.300000e+01)  ; FMin(a,b)
  %1947 = fmul fast float %1944, 0xBFF7154760000000
  %1948 = fmul fast float %1945, 0xBFF7154760000000
  %1949 = fmul fast float %1946, 0xBFF7154760000000
  %1950 = call float @dx.op.unary.f32(i32 21, float %1947)  ; Exp(value)
  %1951 = call float @dx.op.unary.f32(i32 21, float %1948)  ; Exp(value)
  %1952 = call float @dx.op.unary.f32(i32 21, float %1949)  ; Exp(value)
  %1953 = call float @dx.op.binary.f32(i32 35, float %1876, float 0x3F10000000000000)  ; FMax(a,b)
  %1954 = call float @dx.op.binary.f32(i32 35, float %1877, float 0x3F10000000000000)  ; FMax(a,b)
  %1955 = call float @dx.op.binary.f32(i32 35, float %1878, float 0x3F10000000000000)  ; FMax(a,b)
  %1956 = fdiv fast float 1.000000e+00, %1953
  %1957 = fdiv fast float 1.000000e+00, %1954
  %1958 = fdiv fast float 1.000000e+00, %1955
  %1959 = fsub fast float 1.000000e+00, %1950
  %1960 = fsub fast float 1.000000e+00, %1951
  %1961 = fsub fast float 1.000000e+00, %1952
  %1962 = fmul fast float %1833, %1570
  %1963 = fmul fast float %1962, %1959
  %1964 = fmul fast float %1963, %1956
  %1965 = fmul fast float %1834, %1571
  %1966 = fmul fast float %1965, %1960
  %1967 = fmul fast float %1966, %1957
  %1968 = fmul fast float %1835, %1572
  %1969 = fmul fast float %1968, %1961
  %1970 = fmul fast float %1969, %1958
  %1971 = fadd fast float %1964, %1567
  %1972 = fadd fast float %1967, %1568
  %1973 = fadd fast float %1970, %1569
  %1974 = fmul fast float %1950, %1570
  %1975 = fmul fast float %1951, %1571
  %1976 = fmul fast float %1952, %1572
  br label %1977

; <label>:1977                                    ; preds = %1606, %1202, %798, %375, %311
  %1978 = phi float [ %312, %311 ], [ %312, %375 ], [ %312, %798 ], [ %1876, %1606 ], [ %312, %1202 ]
  %1979 = phi float [ %313, %311 ], [ %313, %375 ], [ %313, %798 ], [ %1472, %1606 ], [ %1472, %1202 ]
  %1980 = phi float [ %314, %311 ], [ %314, %375 ], [ %1068, %798 ], [ %1068, %1606 ], [ %1068, %1202 ]
  %1981 = phi float [ %315, %311 ], [ %652, %375 ], [ %652, %798 ], [ %652, %1606 ], [ %652, %1202 ]
  %1982 = phi float [ %316, %311 ], [ %316, %375 ], [ %316, %798 ], [ %1877, %1606 ], [ %316, %1202 ]
  %1983 = phi float [ %317, %311 ], [ %317, %375 ], [ %317, %798 ], [ %1473, %1606 ], [ %1473, %1202 ]
  %1984 = phi float [ %318, %311 ], [ %318, %375 ], [ %1069, %798 ], [ %1069, %1606 ], [ %1069, %1202 ]
  %1985 = phi float [ %319, %311 ], [ %653, %375 ], [ %653, %798 ], [ %653, %1606 ], [ %653, %1202 ]
  %1986 = phi float [ %320, %311 ], [ %320, %375 ], [ %320, %798 ], [ %1878, %1606 ], [ %320, %1202 ]
  %1987 = phi float [ %321, %311 ], [ %321, %375 ], [ %321, %798 ], [ %1474, %1606 ], [ %1474, %1202 ]
  %1988 = phi float [ %322, %311 ], [ %322, %375 ], [ %1070, %798 ], [ %1070, %1606 ], [ %1070, %1202 ]
  %1989 = phi float [ %323, %311 ], [ %654, %375 ], [ %654, %798 ], [ %654, %1606 ], [ %654, %1202 ]
  %1990 = phi float [ %324, %311 ], [ %324, %375 ], [ %324, %798 ], [ %1833, %1606 ], [ %324, %1202 ]
  %1991 = phi float [ %325, %311 ], [ %325, %375 ], [ %325, %798 ], [ %1429, %1606 ], [ %1429, %1202 ]
  %1992 = phi float [ %326, %311 ], [ %326, %375 ], [ %1025, %798 ], [ %1025, %1606 ], [ %1025, %1202 ]
  %1993 = phi float [ %327, %311 ], [ %609, %375 ], [ %609, %798 ], [ %609, %1606 ], [ %609, %1202 ]
  %1994 = phi float [ %328, %311 ], [ %328, %375 ], [ %328, %798 ], [ %1834, %1606 ], [ %328, %1202 ]
  %1995 = phi float [ %329, %311 ], [ %329, %375 ], [ %329, %798 ], [ %1430, %1606 ], [ %1430, %1202 ]
  %1996 = phi float [ %330, %311 ], [ %330, %375 ], [ %1026, %798 ], [ %1026, %1606 ], [ %1026, %1202 ]
  %1997 = phi float [ %331, %311 ], [ %610, %375 ], [ %610, %798 ], [ %610, %1606 ], [ %610, %1202 ]
  %1998 = phi float [ %332, %311 ], [ %332, %375 ], [ %332, %798 ], [ %1835, %1606 ], [ %332, %1202 ]
  %1999 = phi float [ %333, %311 ], [ %333, %375 ], [ %333, %798 ], [ %1431, %1606 ], [ %1431, %1202 ]
  %2000 = phi float [ %334, %311 ], [ %334, %375 ], [ %1027, %798 ], [ %1027, %1606 ], [ %1027, %1202 ]
  %2001 = phi float [ %335, %311 ], [ %611, %375 ], [ %611, %798 ], [ %611, %1606 ], [ %611, %1202 ]
  %2002 = phi float [ %193, %311 ], [ %193, %375 ], [ %193, %798 ], [ %1974, %1606 ], [ %193, %1202 ]
  %2003 = phi float [ %194, %311 ], [ %194, %375 ], [ %194, %798 ], [ %1570, %1606 ], [ %1570, %1202 ]
  %2004 = phi float [ %195, %311 ], [ %195, %375 ], [ %1166, %798 ], [ %1166, %1606 ], [ %1166, %1202 ]
  %2005 = phi float [ %196, %311 ], [ %762, %375 ], [ %762, %798 ], [ %762, %1606 ], [ %762, %1202 ]
  %2006 = phi float [ %197, %311 ], [ %197, %375 ], [ %197, %798 ], [ %1975, %1606 ], [ %197, %1202 ]
  %2007 = phi float [ %198, %311 ], [ %198, %375 ], [ %198, %798 ], [ %1571, %1606 ], [ %1571, %1202 ]
  %2008 = phi float [ %199, %311 ], [ %199, %375 ], [ %1167, %798 ], [ %1167, %1606 ], [ %1167, %1202 ]
  %2009 = phi float [ %200, %311 ], [ %763, %375 ], [ %763, %798 ], [ %763, %1606 ], [ %763, %1202 ]
  %2010 = phi float [ %201, %311 ], [ %201, %375 ], [ %201, %798 ], [ %1976, %1606 ], [ %201, %1202 ]
  %2011 = phi float [ %202, %311 ], [ %202, %375 ], [ %202, %798 ], [ %1572, %1606 ], [ %1572, %1202 ]
  %2012 = phi float [ %203, %311 ], [ %203, %375 ], [ %1168, %798 ], [ %1168, %1606 ], [ %1168, %1202 ]
  %2013 = phi float [ %204, %311 ], [ %764, %375 ], [ %764, %798 ], [ %764, %1606 ], [ %764, %1202 ]
  %2014 = phi float [ %205, %311 ], [ %205, %375 ], [ %205, %798 ], [ %1971, %1606 ], [ %205, %1202 ]
  %2015 = phi float [ %206, %311 ], [ %206, %375 ], [ %206, %798 ], [ %1567, %1606 ], [ %1567, %1202 ]
  %2016 = phi float [ %207, %311 ], [ %207, %375 ], [ %1163, %798 ], [ %1163, %1606 ], [ %1163, %1202 ]
  %2017 = phi float [ %208, %311 ], [ %759, %375 ], [ %759, %798 ], [ %759, %1606 ], [ %759, %1202 ]
  %2018 = phi float [ %209, %311 ], [ %209, %375 ], [ %209, %798 ], [ %1972, %1606 ], [ %209, %1202 ]
  %2019 = phi float [ %210, %311 ], [ %210, %375 ], [ %210, %798 ], [ %1568, %1606 ], [ %1568, %1202 ]
  %2020 = phi float [ %211, %311 ], [ %211, %375 ], [ %1164, %798 ], [ %1164, %1606 ], [ %1164, %1202 ]
  %2021 = phi float [ %212, %311 ], [ %760, %375 ], [ %760, %798 ], [ %760, %1606 ], [ %760, %1202 ]
  %2022 = phi float [ %213, %311 ], [ %213, %375 ], [ %213, %798 ], [ %1973, %1606 ], [ %213, %1202 ]
  %2023 = phi float [ %214, %311 ], [ %214, %375 ], [ %214, %798 ], [ %1569, %1606 ], [ %1569, %1202 ]
  %2024 = phi float [ %215, %311 ], [ %215, %375 ], [ %1165, %798 ], [ %1165, %1606 ], [ %1165, %1202 ]
  %2025 = phi float [ %216, %311 ], [ %761, %375 ], [ %761, %798 ], [ %761, %1606 ], [ %761, %1202 ]
  %2026 = phi i32 [ %226, %311 ], [ %376, %375 ], [ %799, %798 ], [ %1607, %1606 ], [ %1203, %1202 ]
  %2027 = phi i32 [ %227, %311 ], [ %377, %375 ], [ %800, %798 ], [ %1608, %1606 ], [ %1204, %1202 ]
  %2028 = phi i32 [ %228, %311 ], [ %378, %375 ], [ %801, %798 ], [ %1609, %1606 ], [ %1205, %1202 ]
  %2029 = phi float [ %229, %311 ], [ %759, %375 ], [ %1163, %798 ], [ %1971, %1606 ], [ %1567, %1202 ]
  %2030 = phi float [ %230, %311 ], [ %760, %375 ], [ %1164, %798 ], [ %1972, %1606 ], [ %1568, %1202 ]
  %2031 = phi float [ %231, %311 ], [ %761, %375 ], [ %1165, %798 ], [ %1973, %1606 ], [ %1569, %1202 ]
  %2032 = phi float [ %232, %311 ], [ %762, %375 ], [ %1166, %798 ], [ %1974, %1606 ], [ %1570, %1202 ]
  %2033 = phi float [ %233, %311 ], [ %763, %375 ], [ %1167, %798 ], [ %1975, %1606 ], [ %1571, %1202 ]
  %2034 = phi float [ %234, %311 ], [ %764, %375 ], [ %1168, %798 ], [ %1976, %1606 ], [ %1572, %1202 ]
  br i1 %237, label %2248, label %2035, !dx.controlflow.hints !33

; <label>:2035                                    ; preds = %1977
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 0
  %2038 = fmul fast float %2037, %2017
  %2039 = fmul fast float %2037, %2021
  %2040 = fmul fast float %2037, %2025
  %2041 = fadd fast float %31, 0x3FE3C6EF40000000
  %2042 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2043 = call float @dx.op.unary.f32(i32 23, float %2038)  ; Log(value)
  %2044 = fadd fast float %2043, -7.000000e+00
  %2045 = call float @dx.op.unary.f32(i32 21, float %2044)  ; Exp(value)
  %2046 = fmul fast float %2042, 2.000000e+00
  %2047 = fadd fast float %2046, -1.000000e+00
  %2048 = fmul fast float %2045, %2047
  %2049 = fcmp fast ogt float %2038, 0.000000e+00
  %2050 = select i1 %2049, float %2048, float 0.000000e+00
  %2051 = fadd fast float %2050, %2038
  %2052 = fadd fast float %31, 0x3FF3C6EF40000000
  %2053 = call float @dx.op.unary.f32(i32 22, float %2052)  ; Frc(value)
  %2054 = call float @dx.op.unary.f32(i32 23, float %2039)  ; Log(value)
  %2055 = fadd fast float %2054, -7.000000e+00
  %2056 = call float @dx.op.unary.f32(i32 21, float %2055)  ; Exp(value)
  %2057 = fmul fast float %2053, 2.000000e+00
  %2058 = fadd fast float %2057, -1.000000e+00
  %2059 = fmul fast float %2056, %2058
  %2060 = fcmp fast ogt float %2039, 0.000000e+00
  %2061 = select i1 %2060, float %2059, float 0.000000e+00
  %2062 = fadd fast float %2061, %2039
  %2063 = fadd fast float %31, 0x3FFDAA66E0000000
  %2064 = call float @dx.op.unary.f32(i32 22, float %2063)  ; Frc(value)
  %2065 = call float @dx.op.unary.f32(i32 23, float %2040)  ; Log(value)
  %2066 = fadd fast float %2065, -6.000000e+00
  %2067 = call float @dx.op.unary.f32(i32 21, float %2066)  ; Exp(value)
  %2068 = fmul fast float %2064, 2.000000e+00
  %2069 = fadd fast float %2068, -1.000000e+00
  %2070 = fmul fast float %2067, %2069
  %2071 = fcmp fast ogt float %2040, 0.000000e+00
  %2072 = select i1 %2071, float %2070, float 0.000000e+00
  %2073 = fadd fast float %2072, %2040
  %2074 = call float @dx.op.unary.f32(i32 23, float %2005)  ; Log(value)
  %2075 = fadd fast float %2074, -7.000000e+00
  %2076 = call float @dx.op.unary.f32(i32 21, float %2075)  ; Exp(value)
  %2077 = fmul fast float %2076, %2047
  %2078 = fcmp fast ogt float %2005, 0.000000e+00
  %2079 = select i1 %2078, float %2077, float 0.000000e+00
  %2080 = fadd fast float %2079, %2005
  %2081 = call float @dx.op.unary.f32(i32 23, float %2009)  ; Log(value)
  %2082 = fadd fast float %2081, -7.000000e+00
  %2083 = call float @dx.op.unary.f32(i32 21, float %2082)  ; Exp(value)
  %2084 = fmul fast float %2083, %2058
  %2085 = fcmp fast ogt float %2009, 0.000000e+00
  %2086 = select i1 %2085, float %2084, float 0.000000e+00
  %2087 = fadd fast float %2086, %2009
  %2088 = call float @dx.op.unary.f32(i32 23, float %2013)  ; Log(value)
  %2089 = fadd fast float %2088, -6.000000e+00
  %2090 = call float @dx.op.unary.f32(i32 21, float %2089)  ; Exp(value)
  %2091 = fmul fast float %2090, %2069
  %2092 = fcmp fast ogt float %2013, 0.000000e+00
  %2093 = select i1 %2092, float %2091, float 0.000000e+00
  %2094 = fadd fast float %2093, %2013
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %18, i32 %19, i32 %236, float %2051, float %2062, float %2073, float %2051, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 %236, float %2080, float %2087, float %2094, float %2080, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2095 = add i32 %17, 1
  %2096 = add i32 %2095, %235
  %2097 = icmp ugt i32 %2096, %162
  br i1 %2097, label %2248, label %2098, !dx.controlflow.hints !33

; <label>:2098                                    ; preds = %2035
  %2099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2100 = extractvalue %dx.types.CBufRet.f32 %2099, 0
  %2101 = fmul fast float %2100, %2016
  %2102 = fmul fast float %2100, %2020
  %2103 = fmul fast float %2100, %2024
  %2104 = call float @dx.op.unary.f32(i32 23, float %2101)  ; Log(value)
  %2105 = fadd fast float %2104, -7.000000e+00
  %2106 = call float @dx.op.unary.f32(i32 21, float %2105)  ; Exp(value)
  %2107 = fmul fast float %2106, %2047
  %2108 = fcmp fast ogt float %2101, 0.000000e+00
  %2109 = select i1 %2108, float %2107, float 0.000000e+00
  %2110 = fadd fast float %2109, %2101
  %2111 = call float @dx.op.unary.f32(i32 23, float %2102)  ; Log(value)
  %2112 = fadd fast float %2111, -7.000000e+00
  %2113 = call float @dx.op.unary.f32(i32 21, float %2112)  ; Exp(value)
  %2114 = fmul fast float %2113, %2058
  %2115 = fcmp fast ogt float %2102, 0.000000e+00
  %2116 = select i1 %2115, float %2114, float 0.000000e+00
  %2117 = fadd fast float %2116, %2102
  %2118 = call float @dx.op.unary.f32(i32 23, float %2103)  ; Log(value)
  %2119 = fadd fast float %2118, -6.000000e+00
  %2120 = call float @dx.op.unary.f32(i32 21, float %2119)  ; Exp(value)
  %2121 = fmul fast float %2120, %2069
  %2122 = fcmp fast ogt float %2103, 0.000000e+00
  %2123 = select i1 %2122, float %2121, float 0.000000e+00
  %2124 = fadd fast float %2123, %2103
  %2125 = call float @dx.op.unary.f32(i32 23, float %2004)  ; Log(value)
  %2126 = fadd fast float %2125, -7.000000e+00
  %2127 = call float @dx.op.unary.f32(i32 21, float %2126)  ; Exp(value)
  %2128 = fmul fast float %2127, %2047
  %2129 = fcmp fast ogt float %2004, 0.000000e+00
  %2130 = select i1 %2129, float %2128, float 0.000000e+00
  %2131 = fadd fast float %2130, %2004
  %2132 = call float @dx.op.unary.f32(i32 23, float %2008)  ; Log(value)
  %2133 = fadd fast float %2132, -7.000000e+00
  %2134 = call float @dx.op.unary.f32(i32 21, float %2133)  ; Exp(value)
  %2135 = fmul fast float %2134, %2058
  %2136 = fcmp fast ogt float %2008, 0.000000e+00
  %2137 = select i1 %2136, float %2135, float 0.000000e+00
  %2138 = fadd fast float %2137, %2008
  %2139 = call float @dx.op.unary.f32(i32 23, float %2012)  ; Log(value)
  %2140 = fadd fast float %2139, -6.000000e+00
  %2141 = call float @dx.op.unary.f32(i32 21, float %2140)  ; Exp(value)
  %2142 = fmul fast float %2141, %2069
  %2143 = fcmp fast ogt float %2012, 0.000000e+00
  %2144 = select i1 %2143, float %2142, float 0.000000e+00
  %2145 = fadd fast float %2144, %2012
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %338, i32 %341, i32 %344, float %2110, float %2117, float %2124, float %2110, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %338, i32 %341, i32 %344, float %2131, float %2138, float %2145, float %2131, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2146 = add i32 %17, 2
  %2147 = add i32 %2146, %235
  %2148 = icmp ugt i32 %2147, %162
  br i1 %2148, label %2248, label %2149, !dx.controlflow.hints !33

; <label>:2149                                    ; preds = %2098
  %2150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2151 = extractvalue %dx.types.CBufRet.f32 %2150, 0
  %2152 = fmul fast float %2151, %2015
  %2153 = fmul fast float %2151, %2019
  %2154 = fmul fast float %2151, %2023
  %2155 = call float @dx.op.unary.f32(i32 23, float %2152)  ; Log(value)
  %2156 = fadd fast float %2155, -7.000000e+00
  %2157 = call float @dx.op.unary.f32(i32 21, float %2156)  ; Exp(value)
  %2158 = fmul fast float %2157, %2047
  %2159 = fcmp fast ogt float %2152, 0.000000e+00
  %2160 = select i1 %2159, float %2158, float 0.000000e+00
  %2161 = fadd fast float %2160, %2152
  %2162 = call float @dx.op.unary.f32(i32 23, float %2153)  ; Log(value)
  %2163 = fadd fast float %2162, -7.000000e+00
  %2164 = call float @dx.op.unary.f32(i32 21, float %2163)  ; Exp(value)
  %2165 = fmul fast float %2164, %2058
  %2166 = fcmp fast ogt float %2153, 0.000000e+00
  %2167 = select i1 %2166, float %2165, float 0.000000e+00
  %2168 = fadd fast float %2167, %2153
  %2169 = call float @dx.op.unary.f32(i32 23, float %2154)  ; Log(value)
  %2170 = fadd fast float %2169, -6.000000e+00
  %2171 = call float @dx.op.unary.f32(i32 21, float %2170)  ; Exp(value)
  %2172 = fmul fast float %2171, %2069
  %2173 = fcmp fast ogt float %2154, 0.000000e+00
  %2174 = select i1 %2173, float %2172, float 0.000000e+00
  %2175 = fadd fast float %2174, %2154
  %2176 = call float @dx.op.unary.f32(i32 23, float %2003)  ; Log(value)
  %2177 = fadd fast float %2176, -7.000000e+00
  %2178 = call float @dx.op.unary.f32(i32 21, float %2177)  ; Exp(value)
  %2179 = fmul fast float %2178, %2047
  %2180 = fcmp fast ogt float %2003, 0.000000e+00
  %2181 = select i1 %2180, float %2179, float 0.000000e+00
  %2182 = fadd fast float %2181, %2003
  %2183 = call float @dx.op.unary.f32(i32 23, float %2007)  ; Log(value)
  %2184 = fadd fast float %2183, -7.000000e+00
  %2185 = call float @dx.op.unary.f32(i32 21, float %2184)  ; Exp(value)
  %2186 = fmul fast float %2185, %2058
  %2187 = fcmp fast ogt float %2007, 0.000000e+00
  %2188 = select i1 %2187, float %2186, float 0.000000e+00
  %2189 = fadd fast float %2188, %2007
  %2190 = call float @dx.op.unary.f32(i32 23, float %2011)  ; Log(value)
  %2191 = fadd fast float %2190, -6.000000e+00
  %2192 = call float @dx.op.unary.f32(i32 21, float %2191)  ; Exp(value)
  %2193 = fmul fast float %2192, %2069
  %2194 = fcmp fast ogt float %2011, 0.000000e+00
  %2195 = select i1 %2194, float %2193, float 0.000000e+00
  %2196 = fadd fast float %2195, %2011
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %337, i32 %340, i32 %343, float %2161, float %2168, float %2175, float %2161, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %337, i32 %340, i32 %343, float %2182, float %2189, float %2196, float %2182, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2197 = add i32 %17, 3
  %2198 = add i32 %2197, %235
  %2199 = icmp ugt i32 %2198, %162
  br i1 %2199, label %2248, label %2200, !dx.controlflow.hints !33

; <label>:2200                                    ; preds = %2149
  %2201 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2202 = extractvalue %dx.types.CBufRet.f32 %2201, 0
  %2203 = fmul fast float %2202, %2014
  %2204 = fmul fast float %2202, %2018
  %2205 = fmul fast float %2202, %2022
  %2206 = call float @dx.op.unary.f32(i32 23, float %2203)  ; Log(value)
  %2207 = fadd fast float %2206, -7.000000e+00
  %2208 = call float @dx.op.unary.f32(i32 21, float %2207)  ; Exp(value)
  %2209 = fmul fast float %2208, %2047
  %2210 = fcmp fast ogt float %2203, 0.000000e+00
  %2211 = select i1 %2210, float %2209, float 0.000000e+00
  %2212 = fadd fast float %2211, %2203
  %2213 = call float @dx.op.unary.f32(i32 23, float %2204)  ; Log(value)
  %2214 = fadd fast float %2213, -7.000000e+00
  %2215 = call float @dx.op.unary.f32(i32 21, float %2214)  ; Exp(value)
  %2216 = fmul fast float %2215, %2058
  %2217 = fcmp fast ogt float %2204, 0.000000e+00
  %2218 = select i1 %2217, float %2216, float 0.000000e+00
  %2219 = fadd fast float %2218, %2204
  %2220 = call float @dx.op.unary.f32(i32 23, float %2205)  ; Log(value)
  %2221 = fadd fast float %2220, -6.000000e+00
  %2222 = call float @dx.op.unary.f32(i32 21, float %2221)  ; Exp(value)
  %2223 = fmul fast float %2222, %2069
  %2224 = fcmp fast ogt float %2205, 0.000000e+00
  %2225 = select i1 %2224, float %2223, float 0.000000e+00
  %2226 = fadd fast float %2225, %2205
  %2227 = call float @dx.op.unary.f32(i32 23, float %2002)  ; Log(value)
  %2228 = fadd fast float %2227, -7.000000e+00
  %2229 = call float @dx.op.unary.f32(i32 21, float %2228)  ; Exp(value)
  %2230 = fmul fast float %2229, %2047
  %2231 = fcmp fast ogt float %2002, 0.000000e+00
  %2232 = select i1 %2231, float %2230, float 0.000000e+00
  %2233 = fadd fast float %2232, %2002
  %2234 = call float @dx.op.unary.f32(i32 23, float %2006)  ; Log(value)
  %2235 = fadd fast float %2234, -7.000000e+00
  %2236 = call float @dx.op.unary.f32(i32 21, float %2235)  ; Exp(value)
  %2237 = fmul fast float %2236, %2058
  %2238 = fcmp fast ogt float %2006, 0.000000e+00
  %2239 = select i1 %2238, float %2237, float 0.000000e+00
  %2240 = fadd fast float %2239, %2006
  %2241 = call float @dx.op.unary.f32(i32 23, float %2010)  ; Log(value)
  %2242 = fadd fast float %2241, -6.000000e+00
  %2243 = call float @dx.op.unary.f32(i32 21, float %2242)  ; Exp(value)
  %2244 = fmul fast float %2243, %2069
  %2245 = fcmp fast ogt float %2010, 0.000000e+00
  %2246 = select i1 %2245, float %2244, float 0.000000e+00
  %2247 = fadd fast float %2246, %2010
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %336, i32 %339, i32 %342, float %2212, float %2219, float %2226, float %2212, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %336, i32 %339, i32 %342, float %2233, float %2240, float %2247, float %2233, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2248

; <label>:2248                                    ; preds = %2200, %2149, %2098, %2035, %1977
  %2249 = add i32 %235, 4
  %2250 = icmp ugt i32 %2249, %165
  br i1 %2250, label %2251, label %168, !llvm.loop !34

; <label>:2251                                    ; preds = %2248
  br label %2252

; <label>:2252                                    ; preds = %2251, %0
  %2253 = phi i32 [ 0, %0 ], [ %2026, %2251 ]
  %2254 = phi i32 [ 0, %0 ], [ %2027, %2251 ]
  %2255 = phi i32 [ 0, %0 ], [ %2028, %2251 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2256 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %20
  store i32 %2253, i32 addrspace(3)* %2256, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2257 = and i32 %20, 63
  %2258 = icmp ult i32 %2257, 32
  br i1 %2258, label %2259, label %2265, !dx.controlflow.hints !40

; <label>:2259                                    ; preds = %2252
  %2260 = add i32 %20, 32
  %2261 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2260
  %2262 = load i32, i32 addrspace(3)* %2261, align 4, !tbaa !36
  %2263 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2264 = add i32 %2263, %2262
  store i32 %2264, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2265

; <label>:2265                                    ; preds = %2259, %2252
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2266 = icmp ult i32 %2257, 16
  br i1 %2266, label %2267, label %2273, !dx.controlflow.hints !41

; <label>:2267                                    ; preds = %2265
  %2268 = add i32 %20, 16
  %2269 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2268
  %2270 = load i32, i32 addrspace(3)* %2269, align 4, !tbaa !36
  %2271 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2272 = add i32 %2271, %2270
  store i32 %2272, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2273

; <label>:2273                                    ; preds = %2267, %2265
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2274 = icmp ult i32 %2257, 8
  br i1 %2274, label %2275, label %2281, !dx.controlflow.hints !42

; <label>:2275                                    ; preds = %2273
  %2276 = add i32 %20, 8
  %2277 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2276
  %2278 = load i32, i32 addrspace(3)* %2277, align 4, !tbaa !36
  %2279 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2280 = add i32 %2279, %2278
  store i32 %2280, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2281

; <label>:2281                                    ; preds = %2275, %2273
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2282 = icmp ult i32 %2257, 4
  br i1 %2282, label %2283, label %2289, !dx.controlflow.hints !43

; <label>:2283                                    ; preds = %2281
  %2284 = add i32 %20, 4
  %2285 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2284
  %2286 = load i32, i32 addrspace(3)* %2285, align 4, !tbaa !36
  %2287 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2288 = add i32 %2287, %2286
  store i32 %2288, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2289

; <label>:2289                                    ; preds = %2283, %2281
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2290 = icmp ult i32 %2257, 2
  br i1 %2290, label %2291, label %2297, !dx.controlflow.hints !44

; <label>:2291                                    ; preds = %2289
  %2292 = add i32 %20, 2
  %2293 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2292
  %2294 = load i32, i32 addrspace(3)* %2293, align 4, !tbaa !36
  %2295 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2296 = add i32 %2295, %2294
  store i32 %2296, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2297

; <label>:2297                                    ; preds = %2291, %2289
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2298 = icmp eq i32 %2257, 0
  br i1 %2298, label %2299, label %2305, !dx.controlflow.hints !45

; <label>:2299                                    ; preds = %2297
  %2300 = add i32 %20, 1
  %2301 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2300
  %2302 = load i32, i32 addrspace(3)* %2301, align 4, !tbaa !36
  %2303 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2304 = add i32 %2303, %2302
  store i32 %2304, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2305

; <label>:2305                                    ; preds = %2299, %2297
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2306 = and i32 %20, -64
  %2307 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2306
  %2308 = load i32, i32 addrspace(3)* %2307, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2254, i32 addrspace(3)* %2256, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2258, label %2309, label %2315, !dx.controlflow.hints !40

; <label>:2309                                    ; preds = %2305
  %2310 = add i32 %20, 32
  %2311 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2310
  %2312 = load i32, i32 addrspace(3)* %2311, align 4, !tbaa !36
  %2313 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2314 = add i32 %2313, %2312
  store i32 %2314, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2315

; <label>:2315                                    ; preds = %2309, %2305
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2266, label %2316, label %2322, !dx.controlflow.hints !41

; <label>:2316                                    ; preds = %2315
  %2317 = add i32 %20, 16
  %2318 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2317
  %2319 = load i32, i32 addrspace(3)* %2318, align 4, !tbaa !36
  %2320 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2321 = add i32 %2320, %2319
  store i32 %2321, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2322

; <label>:2322                                    ; preds = %2316, %2315
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2274, label %2323, label %2329, !dx.controlflow.hints !42

; <label>:2323                                    ; preds = %2322
  %2324 = add i32 %20, 8
  %2325 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2324
  %2326 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !36
  %2327 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2328 = add i32 %2327, %2326
  store i32 %2328, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2329

; <label>:2329                                    ; preds = %2323, %2322
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2282, label %2330, label %2336, !dx.controlflow.hints !43

; <label>:2330                                    ; preds = %2329
  %2331 = add i32 %20, 4
  %2332 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2331
  %2333 = load i32, i32 addrspace(3)* %2332, align 4, !tbaa !36
  %2334 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2335 = add i32 %2334, %2333
  store i32 %2335, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2336

; <label>:2336                                    ; preds = %2330, %2329
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2290, label %2337, label %2343, !dx.controlflow.hints !44

; <label>:2337                                    ; preds = %2336
  %2338 = add i32 %20, 2
  %2339 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2338
  %2340 = load i32, i32 addrspace(3)* %2339, align 4, !tbaa !36
  %2341 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2342 = add i32 %2341, %2340
  store i32 %2342, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2343

; <label>:2343                                    ; preds = %2337, %2336
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2298, label %2344, label %2350, !dx.controlflow.hints !45

; <label>:2344                                    ; preds = %2343
  %2345 = add i32 %20, 1
  %2346 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2345
  %2347 = load i32, i32 addrspace(3)* %2346, align 4, !tbaa !36
  %2348 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2349 = add i32 %2348, %2347
  store i32 %2349, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2350

; <label>:2350                                    ; preds = %2344, %2343
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2351 = load i32, i32 addrspace(3)* %2307, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2255, i32 addrspace(3)* %2256, align 4, !tbaa !36
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2258, label %2352, label %2358, !dx.controlflow.hints !40

; <label>:2352                                    ; preds = %2350
  %2353 = add i32 %20, 32
  %2354 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2353
  %2355 = load i32, i32 addrspace(3)* %2354, align 4, !tbaa !36
  %2356 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2357 = add i32 %2356, %2355
  store i32 %2357, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2358

; <label>:2358                                    ; preds = %2352, %2350
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2266, label %2359, label %2365, !dx.controlflow.hints !41

; <label>:2359                                    ; preds = %2358
  %2360 = add i32 %20, 16
  %2361 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2360
  %2362 = load i32, i32 addrspace(3)* %2361, align 4, !tbaa !36
  %2363 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2364 = add i32 %2363, %2362
  store i32 %2364, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2365

; <label>:2365                                    ; preds = %2359, %2358
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2274, label %2366, label %2372, !dx.controlflow.hints !42

; <label>:2366                                    ; preds = %2365
  %2367 = add i32 %20, 8
  %2368 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2367
  %2369 = load i32, i32 addrspace(3)* %2368, align 4, !tbaa !36
  %2370 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2371 = add i32 %2370, %2369
  store i32 %2371, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2372

; <label>:2372                                    ; preds = %2366, %2365
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2282, label %2373, label %2379, !dx.controlflow.hints !43

; <label>:2373                                    ; preds = %2372
  %2374 = add i32 %20, 4
  %2375 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2374
  %2376 = load i32, i32 addrspace(3)* %2375, align 4, !tbaa !36
  %2377 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2378 = add i32 %2377, %2376
  store i32 %2378, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2379

; <label>:2379                                    ; preds = %2373, %2372
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2290, label %2380, label %2386, !dx.controlflow.hints !44

; <label>:2380                                    ; preds = %2379
  %2381 = add i32 %20, 2
  %2382 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2381
  %2383 = load i32, i32 addrspace(3)* %2382, align 4, !tbaa !36
  %2384 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2385 = add i32 %2384, %2383
  store i32 %2385, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2386

; <label>:2386                                    ; preds = %2380, %2379
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2298, label %2387, label %2393, !dx.controlflow.hints !45

; <label>:2387                                    ; preds = %2386
  %2388 = add i32 %20, 1
  %2389 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2388
  %2390 = load i32, i32 addrspace(3)* %2389, align 4, !tbaa !36
  %2391 = load i32, i32 addrspace(3)* %2256, align 4, !tbaa !36
  %2392 = add i32 %2391, %2390
  store i32 %2392, i32 addrspace(3)* %2256, align 4, !tbaa !36
  br label %2393

; <label>:2393                                    ; preds = %2387, %2386
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2394 = icmp eq i32 %20, 0
  br i1 %2394, label %2395, label %2400, !dx.controlflow.hints !46

; <label>:2395                                    ; preds = %2393
  %2396 = load i32, i32 addrspace(3)* getelementptr inbounds ([64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 0), align 4, !tbaa !36
  %2397 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 %2308)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2398 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 4, i32 undef, i32 %2351)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2399 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 8, i32 undef, i32 %2396)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %2400

; <label>:2400                                    ; preds = %2395, %2393
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!27}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !22, !24}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14}
!6 = !{i32 0, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 16, i32 1, i32 4, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 17, i32 1, i32 4, i32 0, !7}
!9 = !{i32 2, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !7}
!10 = !{i32 3, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 21, i32 1, i32 7, i32 0, !7}
!11 = !{i32 4, %"class.Texture3D<vector<float, 2> >"* undef, !"", i32 0, i32 24, i32 1, i32 4, i32 0, !7}
!12 = !{i32 5, %"class.Texture3D<vector<float, 2> >"* undef, !"", i32 0, i32 26, i32 1, i32 4, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 22, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 0, i32 23, i32 1, i32 4, i32 0, !7}
!15 = !{!16, !17, !18, !20, !21}
!16 = !{i32 0, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 0, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!17 = !{i32 1, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!18 = !{i32 2, %"class.RWStructuredBuffer<sceneInfo>"* undef, !"", i32 0, i32 9, i32 1, i32 12, i1 false, i1 false, i1 false, !19}
!19 = !{i32 1, i32 36}
!20 = !{i32 3, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 6, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!21 = !{i32 4, %"class.RWTexture3D<vector<float, 3> >"* undef, !"", i32 0, i32 7, i32 1, i32 4, i1 false, i1 false, i1 false, !7}
!22 = !{!23}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{!25, !26}
!25 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!26 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!27 = !{void ()* @cs_volumetric_forwardplus_accumulate, !"cs_volumetric_forwardplus_accumulate", null, !4, !28}
!28 = !{i32 0, i64 272, i32 4, !29}
!29 = !{i32 1, i32 8, i32 8}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}

