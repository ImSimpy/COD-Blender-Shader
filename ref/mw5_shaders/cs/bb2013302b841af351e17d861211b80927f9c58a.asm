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
; shader hash: 8085d4f338951657cac390bf2294841d
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
;   [16 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB1            cb0     1
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
%PerScatteringConstBuffer_decl = type { %struct.PerScatteringConstBuffer }
%struct.PerScatteringConstBuffer = type { float, i32, i32, i32 }
%struct.SamplerState = type { i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_volumetric_forwardplus_accumulate_water() {
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %19 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %20 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %21 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 0
  %24 = fcmp fast ogt float %23, 0.000000e+00
  %25 = uitofp i32 %19 to float
  %26 = uitofp i32 %20 to float
  %27 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %28 = extractvalue %dx.types.CBufRet.f32 %27, 2
  %29 = fmul fast float %28, 0x3FE3C6EF40000000
  %30 = call float @dx.op.dot2.f32(i32 54, float %25, float %26, float 0x4029FAC720000000, float 0x40538EE980000000)  ; Dot2(ax,ay,bx,by)
  %31 = call float @dx.op.unary.f32(i32 13, float %30)  ; Sin(value)
  %32 = fmul fast float %31, 0x40E55DD180000000
  %33 = call float @dx.op.unary.f32(i32 22, float %32)  ; Frc(value)
  %34 = fadd fast float %33, %29
  %35 = call float @dx.op.unary.f32(i32 22, float %34)  ; Frc(value)
  %36 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.i32 %36, 0
  %38 = add i32 %37, -1
  %39 = add i32 %19, -1
  %40 = add i32 %20, -1
  %41 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %39)  ; IMax(a,b)
  %42 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %40)  ; IMax(a,b)
  %43 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.i32 %43, 0
  %45 = extractvalue %dx.types.CBufRet.i32 %43, 1
  %46 = add i32 %44, -1
  %47 = add i32 %45, -1
  %48 = call i32 @dx.op.binary.i32(i32 38, i32 %46, i32 %41)  ; IMin(a,b)
  %49 = call i32 @dx.op.binary.i32(i32 38, i32 %47, i32 %42)  ; IMin(a,b)
  %50 = select i1 %24, i32 2, i32 0
  %51 = or i32 %50, 1
  %52 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %48, i32 %49, i32 %51, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %53 = extractvalue %dx.types.ResRet.f32 %52, 0
  %54 = add nuw nsw i32 %50, 2
  %55 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %48, i32 %49, i32 %54, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = fmul fast float %53, 2.550000e+02
  %58 = fadd fast float %57, 0x3F70101020000000
  %59 = fptoui float %58 to i32
  %60 = fmul fast float %56, 2.550000e+02
  %61 = fadd fast float %60, 0x3F70101020000000
  %62 = fptoui float %61 to i32
  %63 = call i32 @dx.op.binary.i32(i32 40, i32 %38, i32 %59)  ; UMin(a,b)
  %64 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %20)  ; IMax(a,b)
  %65 = call i32 @dx.op.binary.i32(i32 38, i32 %47, i32 %64)  ; IMin(a,b)
  %66 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %48, i32 %65, i32 %51, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %67 = extractvalue %dx.types.ResRet.f32 %66, 0
  %68 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %48, i32 %65, i32 %54, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %69 = extractvalue %dx.types.ResRet.f32 %68, 0
  %70 = fmul fast float %67, 2.550000e+02
  %71 = fadd fast float %70, 0x3F70101020000000
  %72 = fptoui float %71 to i32
  %73 = fmul fast float %69, 2.550000e+02
  %74 = fadd fast float %73, 0x3F70101020000000
  %75 = fptoui float %74 to i32
  %76 = call i32 @dx.op.binary.i32(i32 40, i32 %63, i32 %72)  ; UMin(a,b)
  %77 = call i32 @dx.op.binary.i32(i32 39, i32 %62, i32 %75)  ; UMax(a,b)
  %78 = add i32 %20, 1
  %79 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %78)  ; IMax(a,b)
  %80 = call i32 @dx.op.binary.i32(i32 38, i32 %47, i32 %79)  ; IMin(a,b)
  %81 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %48, i32 %80, i32 %51, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %82 = extractvalue %dx.types.ResRet.f32 %81, 0
  %83 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %48, i32 %80, i32 %54, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %84 = extractvalue %dx.types.ResRet.f32 %83, 0
  %85 = fmul fast float %82, 2.550000e+02
  %86 = fadd fast float %85, 0x3F70101020000000
  %87 = fptoui float %86 to i32
  %88 = fmul fast float %84, 2.550000e+02
  %89 = fadd fast float %88, 0x3F70101020000000
  %90 = fptoui float %89 to i32
  %91 = call i32 @dx.op.binary.i32(i32 40, i32 %76, i32 %87)  ; UMin(a,b)
  %92 = call i32 @dx.op.binary.i32(i32 39, i32 %77, i32 %90)  ; UMax(a,b)
  %93 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %19)  ; IMax(a,b)
  %94 = call i32 @dx.op.binary.i32(i32 38, i32 %46, i32 %93)  ; IMin(a,b)
  %95 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %94, i32 %49, i32 %51, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %94, i32 %49, i32 %54, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = fmul fast float %96, 2.550000e+02
  %100 = fadd fast float %99, 0x3F70101020000000
  %101 = fptoui float %100 to i32
  %102 = fmul fast float %98, 2.550000e+02
  %103 = fadd fast float %102, 0x3F70101020000000
  %104 = fptoui float %103 to i32
  %105 = call i32 @dx.op.binary.i32(i32 40, i32 %91, i32 %101)  ; UMin(a,b)
  %106 = call i32 @dx.op.binary.i32(i32 39, i32 %92, i32 %104)  ; UMax(a,b)
  %107 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %94, i32 %65, i32 %51, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %94, i32 %65, i32 %54, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = fmul fast float %108, 2.550000e+02
  %112 = fadd fast float %111, 0x3F70101020000000
  %113 = fptoui float %112 to i32
  %114 = fmul fast float %110, 2.550000e+02
  %115 = fadd fast float %114, 0x3F70101020000000
  %116 = fptoui float %115 to i32
  %117 = call i32 @dx.op.binary.i32(i32 40, i32 %105, i32 %113)  ; UMin(a,b)
  %118 = call i32 @dx.op.binary.i32(i32 39, i32 %106, i32 %116)  ; UMax(a,b)
  %119 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %94, i32 %80, i32 %51, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %120 = extractvalue %dx.types.ResRet.f32 %119, 0
  %121 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %94, i32 %80, i32 %54, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %122 = extractvalue %dx.types.ResRet.f32 %121, 0
  %123 = fmul fast float %120, 2.550000e+02
  %124 = fadd fast float %123, 0x3F70101020000000
  %125 = fptoui float %124 to i32
  %126 = fmul fast float %122, 2.550000e+02
  %127 = fadd fast float %126, 0x3F70101020000000
  %128 = fptoui float %127 to i32
  %129 = call i32 @dx.op.binary.i32(i32 40, i32 %117, i32 %125)  ; UMin(a,b)
  %130 = call i32 @dx.op.binary.i32(i32 39, i32 %118, i32 %128)  ; UMax(a,b)
  %131 = add i32 %19, 1
  %132 = call i32 @dx.op.binary.i32(i32 37, i32 0, i32 %131)  ; IMax(a,b)
  %133 = call i32 @dx.op.binary.i32(i32 38, i32 %46, i32 %132)  ; IMin(a,b)
  %134 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %133, i32 %49, i32 %51, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %135 = extractvalue %dx.types.ResRet.f32 %134, 0
  %136 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %133, i32 %49, i32 %54, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = fmul fast float %135, 2.550000e+02
  %139 = fadd fast float %138, 0x3F70101020000000
  %140 = fptoui float %139 to i32
  %141 = fmul fast float %137, 2.550000e+02
  %142 = fadd fast float %141, 0x3F70101020000000
  %143 = fptoui float %142 to i32
  %144 = call i32 @dx.op.binary.i32(i32 40, i32 %129, i32 %140)  ; UMin(a,b)
  %145 = call i32 @dx.op.binary.i32(i32 39, i32 %130, i32 %143)  ; UMax(a,b)
  %146 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %133, i32 %65, i32 %51, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %133, i32 %65, i32 %54, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %147, 2.550000e+02
  %151 = fadd fast float %150, 0x3F70101020000000
  %152 = fptoui float %151 to i32
  %153 = fmul fast float %149, 2.550000e+02
  %154 = fadd fast float %153, 0x3F70101020000000
  %155 = fptoui float %154 to i32
  %156 = call i32 @dx.op.binary.i32(i32 40, i32 %144, i32 %152)  ; UMin(a,b)
  %157 = call i32 @dx.op.binary.i32(i32 39, i32 %145, i32 %155)  ; UMax(a,b)
  %158 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %133, i32 %80, i32 %51, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %11, i32 0, i32 %133, i32 %80, i32 %54, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = fmul fast float %159, 2.550000e+02
  %163 = fadd fast float %162, 0x3F70101020000000
  %164 = fptoui float %163 to i32
  %165 = fmul fast float %161, 2.550000e+02
  %166 = fadd fast float %165, 0x3F70101020000000
  %167 = fptoui float %166 to i32
  %168 = call i32 @dx.op.binary.i32(i32 40, i32 %156, i32 %164)  ; UMin(a,b)
  %169 = call i32 @dx.op.binary.i32(i32 39, i32 %157, i32 %167)  ; UMax(a,b)
  %170 = icmp ugt i32 %168, %169
  %171 = select i1 %170, i32 0, i32 %168
  %172 = select i1 %170, i32 0, i32 %169
  %173 = icmp ugt i32 %171, %172
  br i1 %173, label %2348, label %174

; <label>:174                                     ; preds = %0
  br label %175

; <label>:175                                     ; preds = %2344, %174
  %176 = phi float [ %2074, %2344 ], [ undef, %174 ]
  %177 = phi float [ %2075, %2344 ], [ undef, %174 ]
  %178 = phi float [ %2076, %2344 ], [ undef, %174 ]
  %179 = phi float [ %2077, %2344 ], [ undef, %174 ]
  %180 = phi float [ %2078, %2344 ], [ undef, %174 ]
  %181 = phi float [ %2079, %2344 ], [ undef, %174 ]
  %182 = phi float [ %2080, %2344 ], [ undef, %174 ]
  %183 = phi float [ %2081, %2344 ], [ undef, %174 ]
  %184 = phi float [ %2082, %2344 ], [ undef, %174 ]
  %185 = phi float [ %2083, %2344 ], [ undef, %174 ]
  %186 = phi float [ %2084, %2344 ], [ undef, %174 ]
  %187 = phi float [ %2085, %2344 ], [ undef, %174 ]
  %188 = phi float [ %2086, %2344 ], [ undef, %174 ]
  %189 = phi float [ %2087, %2344 ], [ undef, %174 ]
  %190 = phi float [ %2088, %2344 ], [ undef, %174 ]
  %191 = phi float [ %2089, %2344 ], [ undef, %174 ]
  %192 = phi float [ %2090, %2344 ], [ undef, %174 ]
  %193 = phi float [ %2091, %2344 ], [ undef, %174 ]
  %194 = phi float [ %2092, %2344 ], [ undef, %174 ]
  %195 = phi float [ %2093, %2344 ], [ undef, %174 ]
  %196 = phi float [ %2094, %2344 ], [ undef, %174 ]
  %197 = phi float [ %2095, %2344 ], [ undef, %174 ]
  %198 = phi float [ %2096, %2344 ], [ undef, %174 ]
  %199 = phi float [ %2097, %2344 ], [ undef, %174 ]
  %200 = phi float [ %2098, %2344 ], [ undef, %174 ]
  %201 = phi float [ %2099, %2344 ], [ undef, %174 ]
  %202 = phi float [ %2100, %2344 ], [ undef, %174 ]
  %203 = phi float [ %2101, %2344 ], [ undef, %174 ]
  %204 = phi float [ %2102, %2344 ], [ undef, %174 ]
  %205 = phi float [ %2103, %2344 ], [ undef, %174 ]
  %206 = phi float [ %2104, %2344 ], [ undef, %174 ]
  %207 = phi float [ %2105, %2344 ], [ undef, %174 ]
  %208 = phi float [ %2106, %2344 ], [ undef, %174 ]
  %209 = phi float [ %2107, %2344 ], [ undef, %174 ]
  %210 = phi float [ %2108, %2344 ], [ undef, %174 ]
  %211 = phi float [ %2109, %2344 ], [ undef, %174 ]
  %212 = phi float [ %2110, %2344 ], [ undef, %174 ]
  %213 = phi float [ %2111, %2344 ], [ undef, %174 ]
  %214 = phi float [ %2112, %2344 ], [ undef, %174 ]
  %215 = phi float [ %2113, %2344 ], [ undef, %174 ]
  %216 = phi float [ %2114, %2344 ], [ undef, %174 ]
  %217 = phi float [ %2115, %2344 ], [ undef, %174 ]
  %218 = phi float [ %2116, %2344 ], [ undef, %174 ]
  %219 = phi float [ %2117, %2344 ], [ undef, %174 ]
  %220 = phi float [ %2118, %2344 ], [ undef, %174 ]
  %221 = phi float [ %2119, %2344 ], [ undef, %174 ]
  %222 = phi float [ %2120, %2344 ], [ undef, %174 ]
  %223 = phi float [ %2121, %2344 ], [ undef, %174 ]
  %224 = phi i32 [ %356, %2344 ], [ undef, %174 ]
  %225 = phi i32 [ %357, %2344 ], [ undef, %174 ]
  %226 = phi i32 [ %358, %2344 ], [ undef, %174 ]
  %227 = phi i32 [ %359, %2344 ], [ undef, %174 ]
  %228 = phi i32 [ %360, %2344 ], [ undef, %174 ]
  %229 = phi i32 [ %361, %2344 ], [ undef, %174 ]
  %230 = phi i32 [ %362, %2344 ], [ undef, %174 ]
  %231 = phi i32 [ %363, %2344 ], [ undef, %174 ]
  %232 = phi i32 [ %364, %2344 ], [ undef, %174 ]
  %233 = phi i32 [ %2122, %2344 ], [ 0, %174 ]
  %234 = phi i32 [ %2123, %2344 ], [ 0, %174 ]
  %235 = phi i32 [ %2124, %2344 ], [ 0, %174 ]
  %236 = phi float [ %2125, %2344 ], [ 0.000000e+00, %174 ]
  %237 = phi float [ %2126, %2344 ], [ 0.000000e+00, %174 ]
  %238 = phi float [ %2127, %2344 ], [ 0.000000e+00, %174 ]
  %239 = phi float [ %2128, %2344 ], [ 1.000000e+00, %174 ]
  %240 = phi float [ %2129, %2344 ], [ 1.000000e+00, %174 ]
  %241 = phi float [ %2130, %2344 ], [ 1.000000e+00, %174 ]
  %242 = phi i32 [ %2345, %2344 ], [ %171, %174 ]
  %243 = add i32 %242, %18
  %244 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %245 = extractvalue %dx.types.CBufRet.i32 %244, 0
  %246 = select i1 %24, i32 %245, i32 0
  %247 = add i32 %246, %243
  %248 = icmp ugt i32 %243, %169
  br i1 %248, label %331, label %249, !dx.controlflow.hints !31

; <label>:249                                     ; preds = %175
  %250 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %19, i32 %20, i32 %247, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %251 = extractvalue %dx.types.ResRet.f32 %250, 0
  %252 = extractvalue %dx.types.ResRet.f32 %250, 1
  %253 = extractvalue %dx.types.ResRet.f32 %250, 2
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %258 = select i1 %24, float %255, float %257
  %259 = fmul fast float %258, %251
  %260 = fmul fast float %258, %252
  %261 = fmul fast float %258, %253
  %262 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %19, i32 %20, i32 %247, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %269 = extractvalue %dx.types.CBufRet.f32 %268, 1
  %270 = select i1 %24, float %267, float %269
  %271 = fmul fast float %270, %263
  %272 = fmul fast float %270, %264
  %273 = fmul fast float %270, %265
  %274 = add i32 %18, 1
  %275 = add i32 %274, %242
  %276 = add i32 %246, %275
  %277 = icmp ugt i32 %275, %169
  br i1 %277, label %331, label %278, !dx.controlflow.hints !31

; <label>:278                                     ; preds = %249
  %279 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %19, i32 %20, i32 %276, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %280 = extractvalue %dx.types.ResRet.f32 %279, 0
  %281 = extractvalue %dx.types.ResRet.f32 %279, 1
  %282 = extractvalue %dx.types.ResRet.f32 %279, 2
  %283 = fmul fast float %258, %280
  %284 = fmul fast float %258, %281
  %285 = fmul fast float %258, %282
  %286 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %19, i32 %20, i32 %276, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %287 = extractvalue %dx.types.ResRet.f32 %286, 0
  %288 = extractvalue %dx.types.ResRet.f32 %286, 1
  %289 = extractvalue %dx.types.ResRet.f32 %286, 2
  %290 = fmul fast float %270, %287
  %291 = fmul fast float %270, %288
  %292 = fmul fast float %270, %289
  %293 = add i32 %18, 2
  %294 = add i32 %293, %242
  %295 = add i32 %246, %294
  %296 = icmp ugt i32 %294, %169
  br i1 %296, label %331, label %297, !dx.controlflow.hints !31

; <label>:297                                     ; preds = %278
  %298 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %19, i32 %20, i32 %295, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %299 = extractvalue %dx.types.ResRet.f32 %298, 0
  %300 = extractvalue %dx.types.ResRet.f32 %298, 1
  %301 = extractvalue %dx.types.ResRet.f32 %298, 2
  %302 = fmul fast float %258, %299
  %303 = fmul fast float %258, %300
  %304 = fmul fast float %258, %301
  %305 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %19, i32 %20, i32 %295, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %306 = extractvalue %dx.types.ResRet.f32 %305, 0
  %307 = extractvalue %dx.types.ResRet.f32 %305, 1
  %308 = extractvalue %dx.types.ResRet.f32 %305, 2
  %309 = fmul fast float %270, %306
  %310 = fmul fast float %270, %307
  %311 = fmul fast float %270, %308
  %312 = add i32 %18, 3
  %313 = add i32 %312, %242
  %314 = add i32 %246, %313
  %315 = icmp ugt i32 %313, %169
  br i1 %315, label %331, label %316, !dx.controlflow.hints !31

; <label>:316                                     ; preds = %297
  %317 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %7, i32 0, i32 %19, i32 %20, i32 %314, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %318 = extractvalue %dx.types.ResRet.f32 %317, 0
  %319 = extractvalue %dx.types.ResRet.f32 %317, 1
  %320 = extractvalue %dx.types.ResRet.f32 %317, 2
  %321 = fmul fast float %258, %318
  %322 = fmul fast float %258, %319
  %323 = fmul fast float %258, %320
  %324 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %6, i32 0, i32 %19, i32 %20, i32 %314, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %325 = extractvalue %dx.types.ResRet.f32 %324, 0
  %326 = extractvalue %dx.types.ResRet.f32 %324, 1
  %327 = extractvalue %dx.types.ResRet.f32 %324, 2
  %328 = fmul fast float %270, %325
  %329 = fmul fast float %270, %326
  %330 = fmul fast float %270, %327
  br label %331

; <label>:331                                     ; preds = %316, %297, %278, %249, %175
  %332 = phi float [ %176, %175 ], [ %176, %249 ], [ %176, %278 ], [ %328, %316 ], [ %176, %297 ]
  %333 = phi float [ %177, %175 ], [ %177, %249 ], [ %177, %278 ], [ %309, %316 ], [ %309, %297 ]
  %334 = phi float [ %178, %175 ], [ %178, %249 ], [ %290, %278 ], [ %290, %316 ], [ %290, %297 ]
  %335 = phi float [ %179, %175 ], [ %271, %249 ], [ %271, %278 ], [ %271, %316 ], [ %271, %297 ]
  %336 = phi float [ %180, %175 ], [ %180, %249 ], [ %180, %278 ], [ %329, %316 ], [ %180, %297 ]
  %337 = phi float [ %181, %175 ], [ %181, %249 ], [ %181, %278 ], [ %310, %316 ], [ %310, %297 ]
  %338 = phi float [ %182, %175 ], [ %182, %249 ], [ %291, %278 ], [ %291, %316 ], [ %291, %297 ]
  %339 = phi float [ %183, %175 ], [ %272, %249 ], [ %272, %278 ], [ %272, %316 ], [ %272, %297 ]
  %340 = phi float [ %184, %175 ], [ %184, %249 ], [ %184, %278 ], [ %330, %316 ], [ %184, %297 ]
  %341 = phi float [ %185, %175 ], [ %185, %249 ], [ %185, %278 ], [ %311, %316 ], [ %311, %297 ]
  %342 = phi float [ %186, %175 ], [ %186, %249 ], [ %292, %278 ], [ %292, %316 ], [ %292, %297 ]
  %343 = phi float [ %187, %175 ], [ %273, %249 ], [ %273, %278 ], [ %273, %316 ], [ %273, %297 ]
  %344 = phi float [ %188, %175 ], [ %188, %249 ], [ %188, %278 ], [ %321, %316 ], [ %188, %297 ]
  %345 = phi float [ %189, %175 ], [ %189, %249 ], [ %189, %278 ], [ %302, %316 ], [ %302, %297 ]
  %346 = phi float [ %190, %175 ], [ %190, %249 ], [ %283, %278 ], [ %283, %316 ], [ %283, %297 ]
  %347 = phi float [ %191, %175 ], [ %259, %249 ], [ %259, %278 ], [ %259, %316 ], [ %259, %297 ]
  %348 = phi float [ %192, %175 ], [ %192, %249 ], [ %192, %278 ], [ %322, %316 ], [ %192, %297 ]
  %349 = phi float [ %193, %175 ], [ %193, %249 ], [ %193, %278 ], [ %303, %316 ], [ %303, %297 ]
  %350 = phi float [ %194, %175 ], [ %194, %249 ], [ %284, %278 ], [ %284, %316 ], [ %284, %297 ]
  %351 = phi float [ %195, %175 ], [ %260, %249 ], [ %260, %278 ], [ %260, %316 ], [ %260, %297 ]
  %352 = phi float [ %196, %175 ], [ %196, %249 ], [ %196, %278 ], [ %323, %316 ], [ %196, %297 ]
  %353 = phi float [ %197, %175 ], [ %197, %249 ], [ %197, %278 ], [ %304, %316 ], [ %304, %297 ]
  %354 = phi float [ %198, %175 ], [ %198, %249 ], [ %285, %278 ], [ %285, %316 ], [ %285, %297 ]
  %355 = phi float [ %199, %175 ], [ %261, %249 ], [ %261, %278 ], [ %261, %316 ], [ %261, %297 ]
  %356 = phi i32 [ %224, %175 ], [ %224, %249 ], [ %224, %278 ], [ %19, %316 ], [ %19, %297 ]
  %357 = phi i32 [ %225, %175 ], [ %225, %249 ], [ %19, %278 ], [ %19, %316 ], [ %19, %297 ]
  %358 = phi i32 [ %226, %175 ], [ %19, %249 ], [ %19, %278 ], [ %19, %316 ], [ %19, %297 ]
  %359 = phi i32 [ %227, %175 ], [ %227, %249 ], [ %227, %278 ], [ %20, %316 ], [ %20, %297 ]
  %360 = phi i32 [ %228, %175 ], [ %228, %249 ], [ %20, %278 ], [ %20, %316 ], [ %20, %297 ]
  %361 = phi i32 [ %229, %175 ], [ %20, %249 ], [ %20, %278 ], [ %20, %316 ], [ %20, %297 ]
  %362 = phi i32 [ %230, %175 ], [ %230, %249 ], [ %230, %278 ], [ %314, %316 ], [ %314, %297 ]
  %363 = phi i32 [ %231, %175 ], [ %231, %249 ], [ %295, %278 ], [ %295, %316 ], [ %295, %297 ]
  %364 = phi i32 [ %232, %175 ], [ %276, %249 ], [ %276, %278 ], [ %276, %316 ], [ %276, %297 ]
  br i1 %248, label %2073, label %365, !dx.controlflow.hints !32

; <label>:365                                     ; preds = %331
  %366 = fmul fast float %351, 5.000000e-01
  %367 = fadd fast float %355, %347
  %368 = fmul fast float %367, 2.500000e-01
  %369 = fadd fast float %368, %366
  %370 = fmul fast float %339, 5.000000e-01
  %371 = fadd fast float %343, %335
  %372 = fmul fast float %371, 2.500000e-01
  %373 = fadd fast float %372, %370
  %374 = fcmp fast une float %373, 0.000000e+00
  br i1 %374, label %375, label %395, !dx.controlflow.hints !33

; <label>:375                                     ; preds = %365
  %376 = add i32 %233, 1
  %377 = fcmp fast ogt float %369, 0.000000e+00
  %378 = call float @dx.op.unary.f32(i32 23, float %369)  ; Log(value)
  %379 = select i1 %377, float %378, float -3.200000e+01
  %380 = call float @dx.op.binary.f32(i32 35, float %379, float -3.200000e+01)  ; FMax(a,b)
  %381 = call float @dx.op.binary.f32(i32 36, float %380, float 3.200000e+01)  ; FMin(a,b)
  %382 = fadd fast float %381, 3.200000e+01
  %383 = fmul fast float %382, 2.000000e+00
  %384 = fptoui float %383 to i32
  %385 = add i32 %384, %234
  %386 = fcmp fast ogt float %373, 0.000000e+00
  %387 = call float @dx.op.unary.f32(i32 23, float %373)  ; Log(value)
  %388 = select i1 %386, float %387, float -3.200000e+01
  %389 = call float @dx.op.binary.f32(i32 35, float %388, float -3.200000e+01)  ; FMax(a,b)
  %390 = call float @dx.op.binary.f32(i32 36, float %389, float 3.200000e+01)  ; FMin(a,b)
  %391 = fadd fast float %390, 3.200000e+01
  %392 = fmul fast float %391, 2.000000e+00
  %393 = fptoui float %392 to i32
  %394 = add i32 %393, %235
  br label %395

; <label>:395                                     ; preds = %375, %365
  %396 = phi i32 [ %376, %375 ], [ %233, %365 ]
  %397 = phi i32 [ %385, %375 ], [ %234, %365 ]
  %398 = phi i32 [ %394, %375 ], [ %235, %365 ]
  %399 = uitofp i32 %243 to float
  %400 = fadd fast float %25, 5.000000e-01
  %401 = fadd fast float %26, 5.000000e-01
  %402 = fadd fast float %399, 5.000000e-01
  %403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %404 = extractvalue %dx.types.CBufRet.f32 %403, 0
  %405 = extractvalue %dx.types.CBufRet.f32 %403, 1
  %406 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %407 = extractvalue %dx.types.CBufRet.f32 %406, 0
  %408 = extractvalue %dx.types.CBufRet.f32 %406, 1
  %409 = fmul fast float %408, %402
  %410 = call float @dx.op.unary.f32(i32 21, float %409)  ; Exp(value)
  %411 = fmul fast float %410, %407
  %412 = fsub fast float 4.000000e+00, %407
  %413 = fadd fast float %412, %411
  %414 = fmul fast float %400, 2.000000e+00
  %415 = fmul fast float %414, %404
  %416 = fmul fast float %401, 2.000000e+00
  %417 = fmul fast float %416, %405
  %418 = fsub fast float 1.000000e+00, %415
  %419 = fsub fast float 1.000000e+00, %417
  %420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %421 = extractvalue %dx.types.CBufRet.f32 %420, 0
  %422 = extractvalue %dx.types.CBufRet.f32 %420, 1
  %423 = extractvalue %dx.types.CBufRet.f32 %420, 2
  %424 = fmul fast float %421, %418
  %425 = fmul fast float %422, %418
  %426 = fmul fast float %423, %418
  %427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %428 = extractvalue %dx.types.CBufRet.f32 %427, 0
  %429 = extractvalue %dx.types.CBufRet.f32 %427, 1
  %430 = extractvalue %dx.types.CBufRet.f32 %427, 2
  %431 = fmul fast float %428, %419
  %432 = fmul fast float %429, %419
  %433 = fmul fast float %430, %419
  %434 = fadd fast float %431, %424
  %435 = fadd fast float %432, %425
  %436 = fadd fast float %433, %426
  %437 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %438 = extractvalue %dx.types.CBufRet.f32 %437, 0
  %439 = extractvalue %dx.types.CBufRet.f32 %437, 1
  %440 = extractvalue %dx.types.CBufRet.f32 %437, 2
  %441 = fadd fast float %434, %438
  %442 = fadd fast float %435, %439
  %443 = fadd fast float %436, %440
  %444 = fmul fast float %441, %413
  %445 = fmul fast float %442, %413
  %446 = fmul fast float %443, %413
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 0
  %449 = extractvalue %dx.types.CBufRet.f32 %447, 1
  %450 = extractvalue %dx.types.CBufRet.f32 %447, 3
  %451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %452 = extractvalue %dx.types.CBufRet.f32 %451, 0
  %453 = extractvalue %dx.types.CBufRet.f32 %451, 1
  %454 = extractvalue %dx.types.CBufRet.f32 %451, 3
  %455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %456 = extractvalue %dx.types.CBufRet.f32 %455, 0
  %457 = extractvalue %dx.types.CBufRet.f32 %455, 1
  %458 = extractvalue %dx.types.CBufRet.f32 %455, 3
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 0
  %461 = extractvalue %dx.types.CBufRet.f32 %459, 1
  %462 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %463 = fmul fast float %444, %448
  %464 = call float @dx.op.tertiary.f32(i32 46, float %452, float %445, float %463)  ; FMad(a,b,c)
  %465 = call float @dx.op.tertiary.f32(i32 46, float %456, float %446, float %464)  ; FMad(a,b,c)
  %466 = fadd fast float %465, %460
  %467 = fmul fast float %444, %449
  %468 = call float @dx.op.tertiary.f32(i32 46, float %453, float %445, float %467)  ; FMad(a,b,c)
  %469 = call float @dx.op.tertiary.f32(i32 46, float %457, float %446, float %468)  ; FMad(a,b,c)
  %470 = fadd fast float %469, %461
  %471 = fmul fast float %444, %450
  %472 = call float @dx.op.tertiary.f32(i32 46, float %454, float %445, float %471)  ; FMad(a,b,c)
  %473 = call float @dx.op.tertiary.f32(i32 46, float %458, float %446, float %472)  ; FMad(a,b,c)
  %474 = fadd fast float %473, %462
  %475 = fmul fast float %466, 5.000000e-01
  %476 = fdiv fast float %475, %474
  %477 = fadd fast float %476, 5.000000e-01
  %478 = fmul fast float %470, -5.000000e-01
  %479 = fdiv fast float %478, %474
  %480 = fadd fast float %479, 5.000000e-01
  %481 = extractvalue %dx.types.CBufRet.f32 %406, 2
  %482 = extractvalue %dx.types.CBufRet.f32 %406, 3
  %483 = fadd fast float %474, -4.000000e+00
  %484 = call float @dx.op.binary.f32(i32 35, float %483, float 0.000000e+00)  ; FMax(a,b)
  %485 = fadd fast float %484, %407
  %486 = fmul fast float %485, %481
  %487 = call float @dx.op.unary.f32(i32 23, float %486)  ; Log(value)
  %488 = fmul fast float %487, %482
  %489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.f32 %489, 2
  %491 = fmul fast float %488, %490
  %492 = call float @dx.op.unary.f32(i32 27, float %477)  ; Round_ni(value)
  %493 = call float @dx.op.unary.f32(i32 6, float %492)  ; FAbs(value)
  %494 = call float @dx.op.unary.f32(i32 27, float %480)  ; Round_ni(value)
  %495 = call float @dx.op.unary.f32(i32 6, float %494)  ; FAbs(value)
  %496 = fadd fast float %495, %493
  %497 = call float @dx.op.unary.f32(i32 27, float %491)  ; Round_ni(value)
  %498 = call float @dx.op.unary.f32(i32 6, float %497)  ; FAbs(value)
  %499 = fadd fast float %496, %498
  %500 = fcmp fast oeq float %499, 0.000000e+00
  %501 = uitofp i32 %51 to float
  %502 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %477, float %480, float %501, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = uitofp i32 %54 to float
  %508 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %477, float %480, float %507, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %509 = extractvalue %dx.types.ResRet.f32 %508, 0
  %510 = extractvalue %dx.types.ResRet.f32 %508, 1
  %511 = extractvalue %dx.types.ResRet.f32 %508, 2
  %512 = extractvalue %dx.types.ResRet.f32 %508, 3
  %513 = call float @dx.op.binary.f32(i32 35, float %504, float %505)  ; FMax(a,b)
  %514 = call float @dx.op.binary.f32(i32 35, float %503, float %513)  ; FMax(a,b)
  %515 = call float @dx.op.binary.f32(i32 35, float %514, float %506)  ; FMax(a,b)
  %516 = call float @dx.op.binary.f32(i32 36, float %510, float %511)  ; FMin(a,b)
  %517 = call float @dx.op.binary.f32(i32 36, float %509, float %516)  ; FMin(a,b)
  %518 = call float @dx.op.binary.f32(i32 36, float %517, float %512)  ; FMin(a,b)
  %519 = fmul fast float %515, 2.550000e+02
  %520 = fadd fast float %519, 0x3F70101020000000
  %521 = fptoui float %520 to i32
  %522 = fmul fast float %518, 2.550000e+02
  %523 = fadd fast float %522, 0x3F70101020000000
  %524 = fptoui float %523 to i32
  %525 = uitofp i32 %245 to float
  %526 = fmul fast float %525, %491
  %527 = fptoui float %526 to i32
  %528 = icmp ult i32 %527, %524
  %529 = icmp uge i32 %527, %521
  %530 = and i1 %528, %529
  %531 = and i1 %500, %530
  %532 = uitofp i32 %521 to float
  %533 = uitofp i32 %524 to float
  %534 = fadd fast float %532, 5.000000e-01
  %535 = fadd fast float %533, 5.000000e-01
  %536 = fmul fast float %490, %534
  %537 = fmul fast float %535, %490
  %538 = fadd fast float %536, 0x3F0FFB4800000000
  %539 = fadd fast float %537, 0xBF0FFB4800000000
  %540 = call float @dx.op.binary.f32(i32 35, float %491, float %538)  ; FMax(a,b)
  %541 = call float @dx.op.binary.f32(i32 36, float %540, float %539)  ; FMin(a,b)
  %542 = extractvalue %dx.types.CBufRet.f32 %403, 2
  %543 = fmul fast float %404, %400
  %544 = fmul fast float %405, %401
  %545 = fmul fast float %542, %402
  %546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %547 = extractvalue %dx.types.CBufRet.f32 %546, 1
  %548 = extractvalue %dx.types.CBufRet.f32 %546, 2
  %549 = extractvalue %dx.types.CBufRet.f32 %546, 0
  %550 = select i1 %24, float %549, float 0.000000e+00
  %551 = fmul fast float %547, %541
  %552 = fadd fast float %550, %551
  %553 = fadd fast float %550, %548
  %554 = fsub fast float %547, %548
  %555 = fadd fast float %554, %550
  %556 = call float @dx.op.binary.f32(i32 35, float %552, float %553)  ; FMax(a,b)
  %557 = call float @dx.op.binary.f32(i32 36, float %556, float %555)  ; FMin(a,b)
  %558 = fmul fast float %548, 2.000000e+00
  %559 = fmul fast float %545, %547
  %560 = fadd fast float %550, %559
  %561 = fadd fast float %550, %558
  %562 = fsub fast float %547, %558
  %563 = fadd fast float %562, %550
  %564 = call float @dx.op.binary.f32(i32 35, float %560, float %561)  ; FMax(a,b)
  %565 = call float @dx.op.binary.f32(i32 36, float %564, float %563)  ; FMin(a,b)
  %566 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %543, float %544, float %565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  %568 = extractvalue %dx.types.ResRet.f32 %566, 1
  %569 = fmul fast float %567, 0x3FF7154760000000
  %570 = fmul fast float %568, 0x3FF7154760000000
  %571 = call float @dx.op.unary.f32(i32 21, float %569)  ; Exp(value)
  %572 = call float @dx.op.unary.f32(i32 21, float %570)  ; Exp(value)
  %573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %574 = extractvalue %dx.types.CBufRet.f32 %573, 1
  %575 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %576 = extractvalue %dx.types.CBufRet.f32 %575, 1
  %577 = select i1 %24, float %574, float %576
  %578 = fmul fast float %577, %571
  %579 = fmul fast float %577, %572
  %580 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %543, float %544, float %565, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %581 = extractvalue %dx.types.ResRet.f32 %580, 0
  %582 = extractvalue %dx.types.ResRet.f32 %580, 1
  %583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %584 = extractvalue %dx.types.CBufRet.f32 %583, 1
  %585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %586 = extractvalue %dx.types.CBufRet.f32 %585, 1
  %587 = select i1 %24, float %584, float %586
  %588 = fmul fast float %587, %581
  %589 = fmul fast float %587, %582
  %590 = fmul fast float %578, %578
  %591 = fsub fast float %579, %590
  %592 = call float @dx.op.unary.f32(i32 6, float %591)  ; FAbs(value)
  %593 = call float @dx.op.unary.f32(i32 24, float %592)  ; Sqrt(value)
  %594 = fdiv fast float %593, %578
  %595 = fmul fast float %588, %588
  %596 = fsub fast float %589, %595
  %597 = call float @dx.op.unary.f32(i32 6, float %596)  ; FAbs(value)
  %598 = call float @dx.op.unary.f32(i32 24, float %597)  ; Sqrt(value)
  %599 = fdiv fast float %598, %588
  %600 = call float @dx.op.binary.f32(i32 35, float %594, float %599)  ; FMax(a,b)
  %601 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %602 = extractvalue %dx.types.CBufRet.f32 %601, 2
  %603 = extractvalue %dx.types.CBufRet.f32 %601, 0
  %604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %477, float %480, float %557, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %605 = extractvalue %dx.types.ResRet.f32 %604, 0
  %606 = extractvalue %dx.types.ResRet.f32 %604, 1
  %607 = extractvalue %dx.types.ResRet.f32 %604, 2
  %608 = extractvalue %dx.types.CBufRet.f32 %573, 2
  %609 = extractvalue %dx.types.CBufRet.f32 %575, 2
  %610 = select i1 %24, float %608, float %609
  %611 = fmul fast float %610, %605
  %612 = fmul fast float %610, %606
  %613 = fmul fast float %610, %607
  %614 = fmul fast float %612, 5.000000e-01
  %615 = fadd fast float %607, %605
  %616 = fmul fast float %610, %615
  %617 = fmul fast float %616, 2.500000e-01
  %618 = fadd fast float %617, %614
  %619 = fmul fast float %600, %578
  %620 = fmul fast float %602, %619
  %621 = fsub fast float %578, %620
  %622 = fadd fast float %620, %578
  %623 = call float @dx.op.binary.f32(i32 35, float %618, float %621)  ; FMax(a,b)
  %624 = call float @dx.op.binary.f32(i32 36, float %623, float %622)  ; FMin(a,b)
  %625 = fcmp fast une float %618, 0.000000e+00
  %626 = fdiv fast float 1.000000e+00, %618
  %627 = fmul fast float %626, %624
  %628 = fmul fast float %627, %611
  %629 = fmul fast float %627, %612
  %630 = fmul fast float %627, %613
  %631 = select i1 %625, float %628, float %347
  %632 = select i1 %625, float %629, float %351
  %633 = select i1 %625, float %630, float %355
  %634 = fsub fast float %631, %347
  %635 = fsub fast float %632, %351
  %636 = fsub fast float %633, %355
  %637 = fmul fast float %634, %603
  %638 = fmul fast float %635, %603
  %639 = fmul fast float %636, %603
  %640 = fadd fast float %637, %347
  %641 = fadd fast float %638, %351
  %642 = fadd fast float %639, %355
  %643 = select i1 %531, float %640, float %347
  %644 = select i1 %531, float %641, float %351
  %645 = select i1 %531, float %642, float %355
  %646 = extractvalue %dx.types.CBufRet.f32 %601, 1
  %647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %477, float %480, float %557, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = extractvalue %dx.types.CBufRet.f32 %583, 2
  %652 = extractvalue %dx.types.CBufRet.f32 %585, 2
  %653 = select i1 %24, float %651, float %652
  %654 = fmul fast float %653, %648
  %655 = fmul fast float %653, %649
  %656 = fmul fast float %653, %650
  %657 = fmul fast float %655, 5.000000e-01
  %658 = fadd fast float %650, %648
  %659 = fmul fast float %653, %658
  %660 = fmul fast float %659, 2.500000e-01
  %661 = fadd fast float %660, %657
  %662 = fmul fast float %600, %588
  %663 = fmul fast float %602, %662
  %664 = fsub fast float %588, %663
  %665 = fadd fast float %663, %588
  %666 = call float @dx.op.binary.f32(i32 35, float %661, float %664)  ; FMax(a,b)
  %667 = call float @dx.op.binary.f32(i32 36, float %666, float %665)  ; FMin(a,b)
  %668 = fcmp fast une float %661, 0.000000e+00
  %669 = fdiv fast float 1.000000e+00, %661
  %670 = fmul fast float %669, %667
  %671 = fmul fast float %670, %654
  %672 = fmul fast float %670, %655
  %673 = fmul fast float %670, %656
  %674 = select i1 %668, float %671, float %335
  %675 = select i1 %668, float %672, float %339
  %676 = select i1 %668, float %673, float %343
  %677 = fsub fast float %674, %335
  %678 = fsub fast float %675, %339
  %679 = fsub fast float %676, %343
  %680 = fmul fast float %677, %646
  %681 = fmul fast float %678, %646
  %682 = fmul fast float %679, %646
  %683 = fadd fast float %680, %335
  %684 = fadd fast float %681, %339
  %685 = fadd fast float %682, %343
  %686 = select i1 %531, float %683, float %335
  %687 = select i1 %531, float %684, float %339
  %688 = select i1 %531, float %685, float %343
  %689 = extractvalue %dx.types.CBufRet.f32 %573, 0
  %690 = extractvalue %dx.types.CBufRet.f32 %575, 0
  %691 = select i1 %24, float %689, float %690
  %692 = fmul fast float %691, %643
  %693 = fmul fast float %691, %644
  %694 = fmul fast float %691, %645
  %695 = fadd fast float %35, 0x3FE3C6EF40000000
  %696 = call float @dx.op.unary.f32(i32 22, float %695)  ; Frc(value)
  %697 = call float @dx.op.unary.f32(i32 23, float %692)  ; Log(value)
  %698 = fadd fast float %697, -7.000000e+00
  %699 = call float @dx.op.unary.f32(i32 21, float %698)  ; Exp(value)
  %700 = fmul fast float %696, 2.000000e+00
  %701 = fadd fast float %700, -1.000000e+00
  %702 = fmul fast float %699, %701
  %703 = fcmp fast ogt float %692, 0.000000e+00
  %704 = select i1 %703, float %702, float 0.000000e+00
  %705 = fadd fast float %704, %692
  %706 = fadd fast float %35, 0x3FF3C6EF40000000
  %707 = call float @dx.op.unary.f32(i32 22, float %706)  ; Frc(value)
  %708 = call float @dx.op.unary.f32(i32 23, float %693)  ; Log(value)
  %709 = fadd fast float %708, -7.000000e+00
  %710 = call float @dx.op.unary.f32(i32 21, float %709)  ; Exp(value)
  %711 = fmul fast float %707, 2.000000e+00
  %712 = fadd fast float %711, -1.000000e+00
  %713 = fmul fast float %710, %712
  %714 = fcmp fast ogt float %693, 0.000000e+00
  %715 = select i1 %714, float %713, float 0.000000e+00
  %716 = fadd fast float %715, %693
  %717 = fadd fast float %35, 0x3FFDAA66E0000000
  %718 = call float @dx.op.unary.f32(i32 22, float %717)  ; Frc(value)
  %719 = call float @dx.op.unary.f32(i32 23, float %694)  ; Log(value)
  %720 = fadd fast float %719, -6.000000e+00
  %721 = call float @dx.op.unary.f32(i32 21, float %720)  ; Exp(value)
  %722 = fmul fast float %718, 2.000000e+00
  %723 = fadd fast float %722, -1.000000e+00
  %724 = fmul fast float %721, %723
  %725 = fcmp fast ogt float %694, 0.000000e+00
  %726 = select i1 %725, float %724, float 0.000000e+00
  %727 = fadd fast float %726, %694
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %19, i32 %20, i32 %247, float %705, float %716, float %727, float %705, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %729 = extractvalue %dx.types.CBufRet.f32 %728, 0
  %730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %731 = extractvalue %dx.types.CBufRet.f32 %730, 0
  %732 = select i1 %24, float %729, float %731
  %733 = fmul fast float %732, %686
  %734 = fmul fast float %732, %687
  %735 = fmul fast float %732, %688
  %736 = call float @dx.op.unary.f32(i32 23, float %733)  ; Log(value)
  %737 = fadd fast float %736, -7.000000e+00
  %738 = call float @dx.op.unary.f32(i32 21, float %737)  ; Exp(value)
  %739 = fmul fast float %738, %701
  %740 = fcmp fast ogt float %733, 0.000000e+00
  %741 = select i1 %740, float %739, float 0.000000e+00
  %742 = fadd fast float %741, %733
  %743 = call float @dx.op.unary.f32(i32 23, float %734)  ; Log(value)
  %744 = fadd fast float %743, -7.000000e+00
  %745 = call float @dx.op.unary.f32(i32 21, float %744)  ; Exp(value)
  %746 = fmul fast float %745, %712
  %747 = fcmp fast ogt float %734, 0.000000e+00
  %748 = select i1 %747, float %746, float 0.000000e+00
  %749 = fadd fast float %748, %734
  %750 = call float @dx.op.unary.f32(i32 23, float %735)  ; Log(value)
  %751 = fadd fast float %750, -6.000000e+00
  %752 = call float @dx.op.unary.f32(i32 21, float %751)  ; Exp(value)
  %753 = fmul fast float %752, %723
  %754 = fcmp fast ogt float %735, 0.000000e+00
  %755 = select i1 %754, float %753, float 0.000000e+00
  %756 = fadd fast float %755, %735
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %19, i32 %20, i32 %247, float %742, float %749, float %756, float %742, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %757 = add i32 %243, 1
  %758 = uitofp i32 %757 to float
  %759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %760 = extractvalue %dx.types.CBufRet.f32 %759, 0
  %761 = extractvalue %dx.types.CBufRet.f32 %759, 1
  %762 = fmul fast float %761, %758
  %763 = call float @dx.op.unary.f32(i32 21, float %762)  ; Exp(value)
  %764 = fmul fast float %761, %399
  %765 = call float @dx.op.unary.f32(i32 21, float %764)  ; Exp(value)
  %766 = fsub fast float %763, %765
  %767 = fmul fast float %760, %766
  %768 = fmul fast float %767, %686
  %769 = fmul fast float %767, %687
  %770 = fmul fast float %767, %688
  %771 = call float @dx.op.binary.f32(i32 36, float %768, float 9.300000e+01)  ; FMin(a,b)
  %772 = call float @dx.op.binary.f32(i32 36, float %769, float 9.300000e+01)  ; FMin(a,b)
  %773 = call float @dx.op.binary.f32(i32 36, float %770, float 9.300000e+01)  ; FMin(a,b)
  %774 = fmul fast float %771, 0xBFF7154760000000
  %775 = fmul fast float %772, 0xBFF7154760000000
  %776 = fmul fast float %773, 0xBFF7154760000000
  %777 = call float @dx.op.unary.f32(i32 21, float %774)  ; Exp(value)
  %778 = call float @dx.op.unary.f32(i32 21, float %775)  ; Exp(value)
  %779 = call float @dx.op.unary.f32(i32 21, float %776)  ; Exp(value)
  %780 = call float @dx.op.binary.f32(i32 35, float %686, float 0x3F10000000000000)  ; FMax(a,b)
  %781 = call float @dx.op.binary.f32(i32 35, float %687, float 0x3F10000000000000)  ; FMax(a,b)
  %782 = call float @dx.op.binary.f32(i32 35, float %688, float 0x3F10000000000000)  ; FMax(a,b)
  %783 = fdiv fast float 1.000000e+00, %780
  %784 = fdiv fast float 1.000000e+00, %781
  %785 = fdiv fast float 1.000000e+00, %782
  %786 = fsub fast float 1.000000e+00, %777
  %787 = fsub fast float 1.000000e+00, %778
  %788 = fsub fast float 1.000000e+00, %779
  %789 = fmul fast float %643, %239
  %790 = fmul fast float %789, %786
  %791 = fmul fast float %790, %783
  %792 = fmul fast float %644, %240
  %793 = fmul fast float %792, %787
  %794 = fmul fast float %793, %784
  %795 = fmul fast float %645, %241
  %796 = fmul fast float %795, %788
  %797 = fmul fast float %796, %785
  %798 = fadd fast float %791, %236
  %799 = fadd fast float %794, %237
  %800 = fadd fast float %797, %238
  %801 = fmul fast float %777, %239
  %802 = fmul fast float %778, %240
  %803 = fmul fast float %779, %241
  %804 = add i32 %18, 1
  %805 = add i32 %804, %242
  %806 = icmp ugt i32 %805, %169
  br i1 %806, label %2073, label %807, !dx.controlflow.hints !32

; <label>:807                                     ; preds = %395
  %808 = fmul fast float %350, 5.000000e-01
  %809 = fadd fast float %354, %346
  %810 = fmul fast float %809, 2.500000e-01
  %811 = fadd fast float %810, %808
  %812 = fmul fast float %338, 5.000000e-01
  %813 = fadd fast float %342, %334
  %814 = fmul fast float %813, 2.500000e-01
  %815 = fadd fast float %814, %812
  %816 = fcmp fast une float %815, 0.000000e+00
  br i1 %816, label %817, label %837, !dx.controlflow.hints !33

; <label>:817                                     ; preds = %807
  %818 = add i32 %396, 1
  %819 = fcmp fast ogt float %811, 0.000000e+00
  %820 = call float @dx.op.unary.f32(i32 23, float %811)  ; Log(value)
  %821 = select i1 %819, float %820, float -3.200000e+01
  %822 = call float @dx.op.binary.f32(i32 35, float %821, float -3.200000e+01)  ; FMax(a,b)
  %823 = call float @dx.op.binary.f32(i32 36, float %822, float 3.200000e+01)  ; FMin(a,b)
  %824 = fadd fast float %823, 3.200000e+01
  %825 = fmul fast float %824, 2.000000e+00
  %826 = fptoui float %825 to i32
  %827 = add i32 %826, %397
  %828 = fcmp fast ogt float %815, 0.000000e+00
  %829 = call float @dx.op.unary.f32(i32 23, float %815)  ; Log(value)
  %830 = select i1 %828, float %829, float -3.200000e+01
  %831 = call float @dx.op.binary.f32(i32 35, float %830, float -3.200000e+01)  ; FMax(a,b)
  %832 = call float @dx.op.binary.f32(i32 36, float %831, float 3.200000e+01)  ; FMin(a,b)
  %833 = fadd fast float %832, 3.200000e+01
  %834 = fmul fast float %833, 2.000000e+00
  %835 = fptoui float %834 to i32
  %836 = add i32 %835, %398
  br label %837

; <label>:837                                     ; preds = %817, %807
  %838 = phi i32 [ %818, %817 ], [ %396, %807 ]
  %839 = phi i32 [ %827, %817 ], [ %397, %807 ]
  %840 = phi i32 [ %836, %817 ], [ %398, %807 ]
  %841 = uitofp i32 %805 to float
  %842 = fadd fast float %841, 5.000000e-01
  %843 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %844 = extractvalue %dx.types.CBufRet.f32 %843, 0
  %845 = extractvalue %dx.types.CBufRet.f32 %843, 1
  %846 = fmul fast float %761, %842
  %847 = call float @dx.op.unary.f32(i32 21, float %846)  ; Exp(value)
  %848 = fmul fast float %847, %760
  %849 = fsub fast float 4.000000e+00, %760
  %850 = fadd fast float %849, %848
  %851 = fmul fast float %414, %844
  %852 = fmul fast float %416, %845
  %853 = fsub fast float 1.000000e+00, %851
  %854 = fsub fast float 1.000000e+00, %852
  %855 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %856 = extractvalue %dx.types.CBufRet.f32 %855, 0
  %857 = extractvalue %dx.types.CBufRet.f32 %855, 1
  %858 = extractvalue %dx.types.CBufRet.f32 %855, 2
  %859 = fmul fast float %856, %853
  %860 = fmul fast float %857, %853
  %861 = fmul fast float %858, %853
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = extractvalue %dx.types.CBufRet.f32 %862, 1
  %865 = extractvalue %dx.types.CBufRet.f32 %862, 2
  %866 = fmul fast float %863, %854
  %867 = fmul fast float %864, %854
  %868 = fmul fast float %865, %854
  %869 = fadd fast float %866, %859
  %870 = fadd fast float %867, %860
  %871 = fadd fast float %868, %861
  %872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.f32 %872, 0
  %874 = extractvalue %dx.types.CBufRet.f32 %872, 1
  %875 = extractvalue %dx.types.CBufRet.f32 %872, 2
  %876 = fadd fast float %869, %873
  %877 = fadd fast float %870, %874
  %878 = fadd fast float %871, %875
  %879 = fmul fast float %876, %850
  %880 = fmul fast float %877, %850
  %881 = fmul fast float %878, %850
  %882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %883 = extractvalue %dx.types.CBufRet.f32 %882, 0
  %884 = extractvalue %dx.types.CBufRet.f32 %882, 1
  %885 = extractvalue %dx.types.CBufRet.f32 %882, 3
  %886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %887 = extractvalue %dx.types.CBufRet.f32 %886, 0
  %888 = extractvalue %dx.types.CBufRet.f32 %886, 1
  %889 = extractvalue %dx.types.CBufRet.f32 %886, 3
  %890 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %891 = extractvalue %dx.types.CBufRet.f32 %890, 0
  %892 = extractvalue %dx.types.CBufRet.f32 %890, 1
  %893 = extractvalue %dx.types.CBufRet.f32 %890, 3
  %894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %895 = extractvalue %dx.types.CBufRet.f32 %894, 0
  %896 = extractvalue %dx.types.CBufRet.f32 %894, 1
  %897 = extractvalue %dx.types.CBufRet.f32 %894, 3
  %898 = fmul fast float %879, %883
  %899 = call float @dx.op.tertiary.f32(i32 46, float %887, float %880, float %898)  ; FMad(a,b,c)
  %900 = call float @dx.op.tertiary.f32(i32 46, float %891, float %881, float %899)  ; FMad(a,b,c)
  %901 = fadd fast float %900, %895
  %902 = fmul fast float %879, %884
  %903 = call float @dx.op.tertiary.f32(i32 46, float %888, float %880, float %902)  ; FMad(a,b,c)
  %904 = call float @dx.op.tertiary.f32(i32 46, float %892, float %881, float %903)  ; FMad(a,b,c)
  %905 = fadd fast float %904, %896
  %906 = fmul fast float %879, %885
  %907 = call float @dx.op.tertiary.f32(i32 46, float %889, float %880, float %906)  ; FMad(a,b,c)
  %908 = call float @dx.op.tertiary.f32(i32 46, float %893, float %881, float %907)  ; FMad(a,b,c)
  %909 = fadd fast float %908, %897
  %910 = fmul fast float %901, 5.000000e-01
  %911 = fdiv fast float %910, %909
  %912 = fadd fast float %911, 5.000000e-01
  %913 = fmul fast float %905, -5.000000e-01
  %914 = fdiv fast float %913, %909
  %915 = fadd fast float %914, 5.000000e-01
  %916 = extractvalue %dx.types.CBufRet.f32 %759, 2
  %917 = extractvalue %dx.types.CBufRet.f32 %759, 3
  %918 = fadd fast float %909, -4.000000e+00
  %919 = call float @dx.op.binary.f32(i32 35, float %918, float 0.000000e+00)  ; FMax(a,b)
  %920 = fadd fast float %919, %760
  %921 = fmul fast float %920, %916
  %922 = call float @dx.op.unary.f32(i32 23, float %921)  ; Log(value)
  %923 = fmul fast float %922, %917
  %924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %925 = extractvalue %dx.types.CBufRet.f32 %924, 2
  %926 = fmul fast float %923, %925
  %927 = call float @dx.op.unary.f32(i32 27, float %912)  ; Round_ni(value)
  %928 = call float @dx.op.unary.f32(i32 6, float %927)  ; FAbs(value)
  %929 = call float @dx.op.unary.f32(i32 27, float %915)  ; Round_ni(value)
  %930 = call float @dx.op.unary.f32(i32 6, float %929)  ; FAbs(value)
  %931 = fadd fast float %930, %928
  %932 = call float @dx.op.unary.f32(i32 27, float %926)  ; Round_ni(value)
  %933 = call float @dx.op.unary.f32(i32 6, float %932)  ; FAbs(value)
  %934 = fadd fast float %931, %933
  %935 = fcmp fast oeq float %934, 0.000000e+00
  %936 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %912, float %915, float %501, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %937 = extractvalue %dx.types.ResRet.f32 %936, 0
  %938 = extractvalue %dx.types.ResRet.f32 %936, 1
  %939 = extractvalue %dx.types.ResRet.f32 %936, 2
  %940 = extractvalue %dx.types.ResRet.f32 %936, 3
  %941 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %912, float %915, float %507, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %942 = extractvalue %dx.types.ResRet.f32 %941, 0
  %943 = extractvalue %dx.types.ResRet.f32 %941, 1
  %944 = extractvalue %dx.types.ResRet.f32 %941, 2
  %945 = extractvalue %dx.types.ResRet.f32 %941, 3
  %946 = call float @dx.op.binary.f32(i32 35, float %938, float %939)  ; FMax(a,b)
  %947 = call float @dx.op.binary.f32(i32 35, float %937, float %946)  ; FMax(a,b)
  %948 = call float @dx.op.binary.f32(i32 35, float %947, float %940)  ; FMax(a,b)
  %949 = call float @dx.op.binary.f32(i32 36, float %943, float %944)  ; FMin(a,b)
  %950 = call float @dx.op.binary.f32(i32 36, float %942, float %949)  ; FMin(a,b)
  %951 = call float @dx.op.binary.f32(i32 36, float %950, float %945)  ; FMin(a,b)
  %952 = fmul fast float %948, 2.550000e+02
  %953 = fadd fast float %952, 0x3F70101020000000
  %954 = fptoui float %953 to i32
  %955 = fmul fast float %951, 2.550000e+02
  %956 = fadd fast float %955, 0x3F70101020000000
  %957 = fptoui float %956 to i32
  %958 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %959 = extractvalue %dx.types.CBufRet.i32 %958, 0
  %960 = uitofp i32 %959 to float
  %961 = fmul fast float %960, %926
  %962 = fptoui float %961 to i32
  %963 = icmp ult i32 %962, %957
  %964 = icmp uge i32 %962, %954
  %965 = and i1 %963, %964
  %966 = and i1 %935, %965
  %967 = uitofp i32 %954 to float
  %968 = uitofp i32 %957 to float
  %969 = fadd fast float %967, 5.000000e-01
  %970 = fadd fast float %968, 5.000000e-01
  %971 = fmul fast float %925, %969
  %972 = fmul fast float %970, %925
  %973 = fadd fast float %971, 0x3F0FFB4800000000
  %974 = fadd fast float %972, 0xBF0FFB4800000000
  %975 = call float @dx.op.binary.f32(i32 35, float %926, float %973)  ; FMax(a,b)
  %976 = call float @dx.op.binary.f32(i32 36, float %975, float %974)  ; FMin(a,b)
  %977 = extractvalue %dx.types.CBufRet.f32 %843, 2
  %978 = fmul fast float %844, %400
  %979 = fmul fast float %845, %401
  %980 = fmul fast float %977, %842
  %981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %982 = extractvalue %dx.types.CBufRet.f32 %981, 1
  %983 = extractvalue %dx.types.CBufRet.f32 %981, 2
  %984 = extractvalue %dx.types.CBufRet.f32 %981, 0
  %985 = select i1 %24, float %984, float 0.000000e+00
  %986 = fmul fast float %982, %976
  %987 = fadd fast float %985, %986
  %988 = fadd fast float %985, %983
  %989 = fsub fast float %982, %983
  %990 = fadd fast float %989, %985
  %991 = call float @dx.op.binary.f32(i32 35, float %987, float %988)  ; FMax(a,b)
  %992 = call float @dx.op.binary.f32(i32 36, float %991, float %990)  ; FMin(a,b)
  %993 = fmul fast float %983, 2.000000e+00
  %994 = fmul fast float %980, %982
  %995 = fadd fast float %985, %994
  %996 = fadd fast float %985, %993
  %997 = fsub fast float %982, %993
  %998 = fadd fast float %997, %985
  %999 = call float @dx.op.binary.f32(i32 35, float %995, float %996)  ; FMax(a,b)
  %1000 = call float @dx.op.binary.f32(i32 36, float %999, float %998)  ; FMin(a,b)
  %1001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %978, float %979, float %1000, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1002 = extractvalue %dx.types.ResRet.f32 %1001, 0
  %1003 = extractvalue %dx.types.ResRet.f32 %1001, 1
  %1004 = fmul fast float %1002, 0x3FF7154760000000
  %1005 = fmul fast float %1003, 0x3FF7154760000000
  %1006 = call float @dx.op.unary.f32(i32 21, float %1004)  ; Exp(value)
  %1007 = call float @dx.op.unary.f32(i32 21, float %1005)  ; Exp(value)
  %1008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1009 = extractvalue %dx.types.CBufRet.f32 %1008, 1
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 1
  %1012 = select i1 %24, float %1009, float %1011
  %1013 = fmul fast float %1012, %1006
  %1014 = fmul fast float %1012, %1007
  %1015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %978, float %979, float %1000, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1019 = extractvalue %dx.types.CBufRet.f32 %1018, 1
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1022 = select i1 %24, float %1019, float %1021
  %1023 = fmul fast float %1022, %1016
  %1024 = fmul fast float %1022, %1017
  %1025 = fmul fast float %1013, %1013
  %1026 = fsub fast float %1014, %1025
  %1027 = call float @dx.op.unary.f32(i32 6, float %1026)  ; FAbs(value)
  %1028 = call float @dx.op.unary.f32(i32 24, float %1027)  ; Sqrt(value)
  %1029 = fdiv fast float %1028, %1013
  %1030 = fmul fast float %1023, %1023
  %1031 = fsub fast float %1024, %1030
  %1032 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1033 = call float @dx.op.unary.f32(i32 24, float %1032)  ; Sqrt(value)
  %1034 = fdiv fast float %1033, %1023
  %1035 = call float @dx.op.binary.f32(i32 35, float %1029, float %1034)  ; FMax(a,b)
  %1036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %1037 = extractvalue %dx.types.CBufRet.f32 %1036, 2
  %1038 = extractvalue %dx.types.CBufRet.f32 %1036, 0
  %1039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %912, float %915, float %992, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = extractvalue %dx.types.CBufRet.f32 %1008, 2
  %1044 = extractvalue %dx.types.CBufRet.f32 %1010, 2
  %1045 = select i1 %24, float %1043, float %1044
  %1046 = fmul fast float %1045, %1040
  %1047 = fmul fast float %1045, %1041
  %1048 = fmul fast float %1045, %1042
  %1049 = fmul fast float %1047, 5.000000e-01
  %1050 = fadd fast float %1042, %1040
  %1051 = fmul fast float %1045, %1050
  %1052 = fmul fast float %1051, 2.500000e-01
  %1053 = fadd fast float %1052, %1049
  %1054 = fmul fast float %1035, %1013
  %1055 = fmul fast float %1037, %1054
  %1056 = fsub fast float %1013, %1055
  %1057 = fadd fast float %1055, %1013
  %1058 = call float @dx.op.binary.f32(i32 35, float %1053, float %1056)  ; FMax(a,b)
  %1059 = call float @dx.op.binary.f32(i32 36, float %1058, float %1057)  ; FMin(a,b)
  %1060 = fcmp fast une float %1053, 0.000000e+00
  %1061 = fdiv fast float 1.000000e+00, %1053
  %1062 = fmul fast float %1061, %1059
  %1063 = fmul fast float %1062, %1046
  %1064 = fmul fast float %1062, %1047
  %1065 = fmul fast float %1062, %1048
  %1066 = select i1 %1060, float %1063, float %346
  %1067 = select i1 %1060, float %1064, float %350
  %1068 = select i1 %1060, float %1065, float %354
  %1069 = fsub fast float %1066, %346
  %1070 = fsub fast float %1067, %350
  %1071 = fsub fast float %1068, %354
  %1072 = fmul fast float %1069, %1038
  %1073 = fmul fast float %1070, %1038
  %1074 = fmul fast float %1071, %1038
  %1075 = fadd fast float %1072, %346
  %1076 = fadd fast float %1073, %350
  %1077 = fadd fast float %1074, %354
  %1078 = select i1 %966, float %1075, float %346
  %1079 = select i1 %966, float %1076, float %350
  %1080 = select i1 %966, float %1077, float %354
  %1081 = extractvalue %dx.types.CBufRet.f32 %1036, 1
  %1082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %912, float %915, float %992, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = extractvalue %dx.types.ResRet.f32 %1082, 1
  %1085 = extractvalue %dx.types.ResRet.f32 %1082, 2
  %1086 = extractvalue %dx.types.CBufRet.f32 %1018, 2
  %1087 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1088 = select i1 %24, float %1086, float %1087
  %1089 = fmul fast float %1088, %1083
  %1090 = fmul fast float %1088, %1084
  %1091 = fmul fast float %1088, %1085
  %1092 = fmul fast float %1090, 5.000000e-01
  %1093 = fadd fast float %1085, %1083
  %1094 = fmul fast float %1088, %1093
  %1095 = fmul fast float %1094, 2.500000e-01
  %1096 = fadd fast float %1095, %1092
  %1097 = fmul fast float %1035, %1023
  %1098 = fmul fast float %1037, %1097
  %1099 = fsub fast float %1023, %1098
  %1100 = fadd fast float %1098, %1023
  %1101 = call float @dx.op.binary.f32(i32 35, float %1096, float %1099)  ; FMax(a,b)
  %1102 = call float @dx.op.binary.f32(i32 36, float %1101, float %1100)  ; FMin(a,b)
  %1103 = fcmp fast une float %1096, 0.000000e+00
  %1104 = fdiv fast float 1.000000e+00, %1096
  %1105 = fmul fast float %1104, %1102
  %1106 = fmul fast float %1105, %1089
  %1107 = fmul fast float %1105, %1090
  %1108 = fmul fast float %1105, %1091
  %1109 = select i1 %1103, float %1106, float %334
  %1110 = select i1 %1103, float %1107, float %338
  %1111 = select i1 %1103, float %1108, float %342
  %1112 = fsub fast float %1109, %334
  %1113 = fsub fast float %1110, %338
  %1114 = fsub fast float %1111, %342
  %1115 = fmul fast float %1112, %1081
  %1116 = fmul fast float %1113, %1081
  %1117 = fmul fast float %1114, %1081
  %1118 = fadd fast float %1115, %334
  %1119 = fadd fast float %1116, %338
  %1120 = fadd fast float %1117, %342
  %1121 = select i1 %966, float %1118, float %334
  %1122 = select i1 %966, float %1119, float %338
  %1123 = select i1 %966, float %1120, float %342
  %1124 = extractvalue %dx.types.CBufRet.f32 %1008, 0
  %1125 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1126 = select i1 %24, float %1124, float %1125
  %1127 = fmul fast float %1126, %1078
  %1128 = fmul fast float %1126, %1079
  %1129 = fmul fast float %1126, %1080
  %1130 = call float @dx.op.unary.f32(i32 23, float %1127)  ; Log(value)
  %1131 = fadd fast float %1130, -7.000000e+00
  %1132 = call float @dx.op.unary.f32(i32 21, float %1131)  ; Exp(value)
  %1133 = fmul fast float %1132, %701
  %1134 = fcmp fast ogt float %1127, 0.000000e+00
  %1135 = select i1 %1134, float %1133, float 0.000000e+00
  %1136 = fadd fast float %1135, %1127
  %1137 = call float @dx.op.unary.f32(i32 23, float %1128)  ; Log(value)
  %1138 = fadd fast float %1137, -7.000000e+00
  %1139 = call float @dx.op.unary.f32(i32 21, float %1138)  ; Exp(value)
  %1140 = fmul fast float %1139, %712
  %1141 = fcmp fast ogt float %1128, 0.000000e+00
  %1142 = select i1 %1141, float %1140, float 0.000000e+00
  %1143 = fadd fast float %1142, %1128
  %1144 = call float @dx.op.unary.f32(i32 23, float %1129)  ; Log(value)
  %1145 = fadd fast float %1144, -6.000000e+00
  %1146 = call float @dx.op.unary.f32(i32 21, float %1145)  ; Exp(value)
  %1147 = fmul fast float %1146, %723
  %1148 = fcmp fast ogt float %1129, 0.000000e+00
  %1149 = select i1 %1148, float %1147, float 0.000000e+00
  %1150 = fadd fast float %1149, %1129
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %358, i32 %361, i32 %364, float %1136, float %1143, float %1150, float %1136, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1152 = extractvalue %dx.types.CBufRet.f32 %1151, 0
  %1153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1154 = extractvalue %dx.types.CBufRet.f32 %1153, 0
  %1155 = select i1 %24, float %1152, float %1154
  %1156 = fmul fast float %1155, %1121
  %1157 = fmul fast float %1155, %1122
  %1158 = fmul fast float %1155, %1123
  %1159 = call float @dx.op.unary.f32(i32 23, float %1156)  ; Log(value)
  %1160 = fadd fast float %1159, -7.000000e+00
  %1161 = call float @dx.op.unary.f32(i32 21, float %1160)  ; Exp(value)
  %1162 = fmul fast float %1161, %701
  %1163 = fcmp fast ogt float %1156, 0.000000e+00
  %1164 = select i1 %1163, float %1162, float 0.000000e+00
  %1165 = fadd fast float %1164, %1156
  %1166 = call float @dx.op.unary.f32(i32 23, float %1157)  ; Log(value)
  %1167 = fadd fast float %1166, -7.000000e+00
  %1168 = call float @dx.op.unary.f32(i32 21, float %1167)  ; Exp(value)
  %1169 = fmul fast float %1168, %712
  %1170 = fcmp fast ogt float %1157, 0.000000e+00
  %1171 = select i1 %1170, float %1169, float 0.000000e+00
  %1172 = fadd fast float %1171, %1157
  %1173 = call float @dx.op.unary.f32(i32 23, float %1158)  ; Log(value)
  %1174 = fadd fast float %1173, -6.000000e+00
  %1175 = call float @dx.op.unary.f32(i32 21, float %1174)  ; Exp(value)
  %1176 = fmul fast float %1175, %723
  %1177 = fcmp fast ogt float %1158, 0.000000e+00
  %1178 = select i1 %1177, float %1176, float 0.000000e+00
  %1179 = fadd fast float %1178, %1158
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %358, i32 %361, i32 %364, float %1165, float %1172, float %1179, float %1165, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1180 = add i32 %805, 1
  %1181 = uitofp i32 %1180 to float
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.CBufRet.f32 %1182, 1
  %1185 = fmul fast float %1184, %1181
  %1186 = call float @dx.op.unary.f32(i32 21, float %1185)  ; Exp(value)
  %1187 = fmul fast float %1184, %841
  %1188 = call float @dx.op.unary.f32(i32 21, float %1187)  ; Exp(value)
  %1189 = fsub fast float %1186, %1188
  %1190 = fmul fast float %1183, %1189
  %1191 = fmul fast float %1190, %1121
  %1192 = fmul fast float %1190, %1122
  %1193 = fmul fast float %1190, %1123
  %1194 = call float @dx.op.binary.f32(i32 36, float %1191, float 9.300000e+01)  ; FMin(a,b)
  %1195 = call float @dx.op.binary.f32(i32 36, float %1192, float 9.300000e+01)  ; FMin(a,b)
  %1196 = call float @dx.op.binary.f32(i32 36, float %1193, float 9.300000e+01)  ; FMin(a,b)
  %1197 = fmul fast float %1194, 0xBFF7154760000000
  %1198 = fmul fast float %1195, 0xBFF7154760000000
  %1199 = fmul fast float %1196, 0xBFF7154760000000
  %1200 = call float @dx.op.unary.f32(i32 21, float %1197)  ; Exp(value)
  %1201 = call float @dx.op.unary.f32(i32 21, float %1198)  ; Exp(value)
  %1202 = call float @dx.op.unary.f32(i32 21, float %1199)  ; Exp(value)
  %1203 = call float @dx.op.binary.f32(i32 35, float %1121, float 0x3F10000000000000)  ; FMax(a,b)
  %1204 = call float @dx.op.binary.f32(i32 35, float %1122, float 0x3F10000000000000)  ; FMax(a,b)
  %1205 = call float @dx.op.binary.f32(i32 35, float %1123, float 0x3F10000000000000)  ; FMax(a,b)
  %1206 = fdiv fast float 1.000000e+00, %1203
  %1207 = fdiv fast float 1.000000e+00, %1204
  %1208 = fdiv fast float 1.000000e+00, %1205
  %1209 = fsub fast float 1.000000e+00, %1200
  %1210 = fsub fast float 1.000000e+00, %1201
  %1211 = fsub fast float 1.000000e+00, %1202
  %1212 = fmul fast float %1078, %801
  %1213 = fmul fast float %1212, %1209
  %1214 = fmul fast float %1213, %1206
  %1215 = fmul fast float %1079, %802
  %1216 = fmul fast float %1215, %1210
  %1217 = fmul fast float %1216, %1207
  %1218 = fmul fast float %1080, %803
  %1219 = fmul fast float %1218, %1211
  %1220 = fmul fast float %1219, %1208
  %1221 = fadd fast float %1214, %798
  %1222 = fadd fast float %1217, %799
  %1223 = fadd fast float %1220, %800
  %1224 = fmul fast float %1200, %801
  %1225 = fmul fast float %1201, %802
  %1226 = fmul fast float %1202, %803
  %1227 = add i32 %18, 2
  %1228 = add i32 %1227, %242
  %1229 = icmp ugt i32 %1228, %169
  br i1 %1229, label %2073, label %1230, !dx.controlflow.hints !32

; <label>:1230                                    ; preds = %837
  %1231 = fmul fast float %349, 5.000000e-01
  %1232 = fadd fast float %353, %345
  %1233 = fmul fast float %1232, 2.500000e-01
  %1234 = fadd fast float %1233, %1231
  %1235 = fmul fast float %337, 5.000000e-01
  %1236 = fadd fast float %341, %333
  %1237 = fmul fast float %1236, 2.500000e-01
  %1238 = fadd fast float %1237, %1235
  %1239 = fcmp fast une float %1238, 0.000000e+00
  br i1 %1239, label %1240, label %1260, !dx.controlflow.hints !33

; <label>:1240                                    ; preds = %1230
  %1241 = add i32 %838, 1
  %1242 = fcmp fast ogt float %1234, 0.000000e+00
  %1243 = call float @dx.op.unary.f32(i32 23, float %1234)  ; Log(value)
  %1244 = select i1 %1242, float %1243, float -3.200000e+01
  %1245 = call float @dx.op.binary.f32(i32 35, float %1244, float -3.200000e+01)  ; FMax(a,b)
  %1246 = call float @dx.op.binary.f32(i32 36, float %1245, float 3.200000e+01)  ; FMin(a,b)
  %1247 = fadd fast float %1246, 3.200000e+01
  %1248 = fmul fast float %1247, 2.000000e+00
  %1249 = fptoui float %1248 to i32
  %1250 = add i32 %1249, %839
  %1251 = fcmp fast ogt float %1238, 0.000000e+00
  %1252 = call float @dx.op.unary.f32(i32 23, float %1238)  ; Log(value)
  %1253 = select i1 %1251, float %1252, float -3.200000e+01
  %1254 = call float @dx.op.binary.f32(i32 35, float %1253, float -3.200000e+01)  ; FMax(a,b)
  %1255 = call float @dx.op.binary.f32(i32 36, float %1254, float 3.200000e+01)  ; FMin(a,b)
  %1256 = fadd fast float %1255, 3.200000e+01
  %1257 = fmul fast float %1256, 2.000000e+00
  %1258 = fptoui float %1257 to i32
  %1259 = add i32 %1258, %840
  br label %1260

; <label>:1260                                    ; preds = %1240, %1230
  %1261 = phi i32 [ %1241, %1240 ], [ %838, %1230 ]
  %1262 = phi i32 [ %1250, %1240 ], [ %839, %1230 ]
  %1263 = phi i32 [ %1259, %1240 ], [ %840, %1230 ]
  %1264 = uitofp i32 %1228 to float
  %1265 = fadd fast float %1264, 5.000000e-01
  %1266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1267 = extractvalue %dx.types.CBufRet.f32 %1266, 0
  %1268 = extractvalue %dx.types.CBufRet.f32 %1266, 1
  %1269 = fmul fast float %1184, %1265
  %1270 = call float @dx.op.unary.f32(i32 21, float %1269)  ; Exp(value)
  %1271 = fmul fast float %1270, %1183
  %1272 = fsub fast float 4.000000e+00, %1183
  %1273 = fadd fast float %1272, %1271
  %1274 = fmul fast float %414, %1267
  %1275 = fmul fast float %416, %1268
  %1276 = fsub fast float 1.000000e+00, %1274
  %1277 = fsub fast float 1.000000e+00, %1275
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1278, 2
  %1282 = fmul fast float %1279, %1276
  %1283 = fmul fast float %1280, %1276
  %1284 = fmul fast float %1281, %1276
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1288 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1289 = fmul fast float %1286, %1277
  %1290 = fmul fast float %1287, %1277
  %1291 = fmul fast float %1288, %1277
  %1292 = fadd fast float %1289, %1282
  %1293 = fadd fast float %1290, %1283
  %1294 = fadd fast float %1291, %1284
  %1295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1296 = extractvalue %dx.types.CBufRet.f32 %1295, 0
  %1297 = extractvalue %dx.types.CBufRet.f32 %1295, 1
  %1298 = extractvalue %dx.types.CBufRet.f32 %1295, 2
  %1299 = fadd fast float %1292, %1296
  %1300 = fadd fast float %1293, %1297
  %1301 = fadd fast float %1294, %1298
  %1302 = fmul fast float %1299, %1273
  %1303 = fmul fast float %1300, %1273
  %1304 = fmul fast float %1301, %1273
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.CBufRet.f32 %1309, 3
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.CBufRet.f32 %1313, 3
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1320 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1321 = fmul fast float %1302, %1306
  %1322 = call float @dx.op.tertiary.f32(i32 46, float %1310, float %1303, float %1321)  ; FMad(a,b,c)
  %1323 = call float @dx.op.tertiary.f32(i32 46, float %1314, float %1304, float %1322)  ; FMad(a,b,c)
  %1324 = fadd fast float %1323, %1318
  %1325 = fmul fast float %1302, %1307
  %1326 = call float @dx.op.tertiary.f32(i32 46, float %1311, float %1303, float %1325)  ; FMad(a,b,c)
  %1327 = call float @dx.op.tertiary.f32(i32 46, float %1315, float %1304, float %1326)  ; FMad(a,b,c)
  %1328 = fadd fast float %1327, %1319
  %1329 = fmul fast float %1302, %1308
  %1330 = call float @dx.op.tertiary.f32(i32 46, float %1312, float %1303, float %1329)  ; FMad(a,b,c)
  %1331 = call float @dx.op.tertiary.f32(i32 46, float %1316, float %1304, float %1330)  ; FMad(a,b,c)
  %1332 = fadd fast float %1331, %1320
  %1333 = fmul fast float %1324, 5.000000e-01
  %1334 = fdiv fast float %1333, %1332
  %1335 = fadd fast float %1334, 5.000000e-01
  %1336 = fmul fast float %1328, -5.000000e-01
  %1337 = fdiv fast float %1336, %1332
  %1338 = fadd fast float %1337, 5.000000e-01
  %1339 = extractvalue %dx.types.CBufRet.f32 %1182, 2
  %1340 = extractvalue %dx.types.CBufRet.f32 %1182, 3
  %1341 = fadd fast float %1332, -4.000000e+00
  %1342 = call float @dx.op.binary.f32(i32 35, float %1341, float 0.000000e+00)  ; FMax(a,b)
  %1343 = fadd fast float %1342, %1183
  %1344 = fmul fast float %1343, %1339
  %1345 = call float @dx.op.unary.f32(i32 23, float %1344)  ; Log(value)
  %1346 = fmul fast float %1345, %1340
  %1347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1348 = extractvalue %dx.types.CBufRet.f32 %1347, 2
  %1349 = fmul fast float %1346, %1348
  %1350 = call float @dx.op.unary.f32(i32 27, float %1335)  ; Round_ni(value)
  %1351 = call float @dx.op.unary.f32(i32 6, float %1350)  ; FAbs(value)
  %1352 = call float @dx.op.unary.f32(i32 27, float %1338)  ; Round_ni(value)
  %1353 = call float @dx.op.unary.f32(i32 6, float %1352)  ; FAbs(value)
  %1354 = fadd fast float %1353, %1351
  %1355 = call float @dx.op.unary.f32(i32 27, float %1349)  ; Round_ni(value)
  %1356 = call float @dx.op.unary.f32(i32 6, float %1355)  ; FAbs(value)
  %1357 = fadd fast float %1354, %1356
  %1358 = fcmp fast oeq float %1357, 0.000000e+00
  %1359 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %1335, float %1338, float %501, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1360 = extractvalue %dx.types.ResRet.f32 %1359, 0
  %1361 = extractvalue %dx.types.ResRet.f32 %1359, 1
  %1362 = extractvalue %dx.types.ResRet.f32 %1359, 2
  %1363 = extractvalue %dx.types.ResRet.f32 %1359, 3
  %1364 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %1335, float %1338, float %507, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1365 = extractvalue %dx.types.ResRet.f32 %1364, 0
  %1366 = extractvalue %dx.types.ResRet.f32 %1364, 1
  %1367 = extractvalue %dx.types.ResRet.f32 %1364, 2
  %1368 = extractvalue %dx.types.ResRet.f32 %1364, 3
  %1369 = call float @dx.op.binary.f32(i32 35, float %1361, float %1362)  ; FMax(a,b)
  %1370 = call float @dx.op.binary.f32(i32 35, float %1360, float %1369)  ; FMax(a,b)
  %1371 = call float @dx.op.binary.f32(i32 35, float %1370, float %1363)  ; FMax(a,b)
  %1372 = call float @dx.op.binary.f32(i32 36, float %1366, float %1367)  ; FMin(a,b)
  %1373 = call float @dx.op.binary.f32(i32 36, float %1365, float %1372)  ; FMin(a,b)
  %1374 = call float @dx.op.binary.f32(i32 36, float %1373, float %1368)  ; FMin(a,b)
  %1375 = fmul fast float %1371, 2.550000e+02
  %1376 = fadd fast float %1375, 0x3F70101020000000
  %1377 = fptoui float %1376 to i32
  %1378 = fmul fast float %1374, 2.550000e+02
  %1379 = fadd fast float %1378, 0x3F70101020000000
  %1380 = fptoui float %1379 to i32
  %1381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1382 = extractvalue %dx.types.CBufRet.i32 %1381, 0
  %1383 = uitofp i32 %1382 to float
  %1384 = fmul fast float %1383, %1349
  %1385 = fptoui float %1384 to i32
  %1386 = icmp ult i32 %1385, %1380
  %1387 = icmp uge i32 %1385, %1377
  %1388 = and i1 %1386, %1387
  %1389 = and i1 %1358, %1388
  %1390 = uitofp i32 %1377 to float
  %1391 = uitofp i32 %1380 to float
  %1392 = fadd fast float %1390, 5.000000e-01
  %1393 = fadd fast float %1391, 5.000000e-01
  %1394 = fmul fast float %1348, %1392
  %1395 = fmul fast float %1393, %1348
  %1396 = fadd fast float %1394, 0x3F0FFB4800000000
  %1397 = fadd fast float %1395, 0xBF0FFB4800000000
  %1398 = call float @dx.op.binary.f32(i32 35, float %1349, float %1396)  ; FMax(a,b)
  %1399 = call float @dx.op.binary.f32(i32 36, float %1398, float %1397)  ; FMin(a,b)
  %1400 = extractvalue %dx.types.CBufRet.f32 %1266, 2
  %1401 = fmul fast float %1267, %400
  %1402 = fmul fast float %1268, %401
  %1403 = fmul fast float %1400, %1265
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 1
  %1406 = extractvalue %dx.types.CBufRet.f32 %1404, 2
  %1407 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1408 = select i1 %24, float %1407, float 0.000000e+00
  %1409 = fmul fast float %1405, %1399
  %1410 = fadd fast float %1408, %1409
  %1411 = fadd fast float %1408, %1406
  %1412 = fsub fast float %1405, %1406
  %1413 = fadd fast float %1412, %1408
  %1414 = call float @dx.op.binary.f32(i32 35, float %1410, float %1411)  ; FMax(a,b)
  %1415 = call float @dx.op.binary.f32(i32 36, float %1414, float %1413)  ; FMin(a,b)
  %1416 = fmul fast float %1406, 2.000000e+00
  %1417 = fmul fast float %1403, %1405
  %1418 = fadd fast float %1408, %1417
  %1419 = fadd fast float %1408, %1416
  %1420 = fsub fast float %1405, %1416
  %1421 = fadd fast float %1420, %1408
  %1422 = call float @dx.op.binary.f32(i32 35, float %1418, float %1419)  ; FMax(a,b)
  %1423 = call float @dx.op.binary.f32(i32 36, float %1422, float %1421)  ; FMin(a,b)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %1401, float %1402, float %1423, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = fmul fast float %1425, 0x3FF7154760000000
  %1428 = fmul fast float %1426, 0x3FF7154760000000
  %1429 = call float @dx.op.unary.f32(i32 21, float %1427)  ; Exp(value)
  %1430 = call float @dx.op.unary.f32(i32 21, float %1428)  ; Exp(value)
  %1431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1432 = extractvalue %dx.types.CBufRet.f32 %1431, 1
  %1433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.f32 %1433, 1
  %1435 = select i1 %24, float %1432, float %1434
  %1436 = fmul fast float %1435, %1429
  %1437 = fmul fast float %1435, %1430
  %1438 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %1401, float %1402, float %1423, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1442 = extractvalue %dx.types.CBufRet.f32 %1441, 1
  %1443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.f32 %1443, 1
  %1445 = select i1 %24, float %1442, float %1444
  %1446 = fmul fast float %1445, %1439
  %1447 = fmul fast float %1445, %1440
  %1448 = fmul fast float %1436, %1436
  %1449 = fsub fast float %1437, %1448
  %1450 = call float @dx.op.unary.f32(i32 6, float %1449)  ; FAbs(value)
  %1451 = call float @dx.op.unary.f32(i32 24, float %1450)  ; Sqrt(value)
  %1452 = fdiv fast float %1451, %1436
  %1453 = fmul fast float %1446, %1446
  %1454 = fsub fast float %1447, %1453
  %1455 = call float @dx.op.unary.f32(i32 6, float %1454)  ; FAbs(value)
  %1456 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1457 = fdiv fast float %1456, %1446
  %1458 = call float @dx.op.binary.f32(i32 35, float %1452, float %1457)  ; FMax(a,b)
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 2
  %1461 = extractvalue %dx.types.CBufRet.f32 %1459, 0
  %1462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %1335, float %1338, float %1415, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.ResRet.f32 %1462, 2
  %1466 = extractvalue %dx.types.CBufRet.f32 %1431, 2
  %1467 = extractvalue %dx.types.CBufRet.f32 %1433, 2
  %1468 = select i1 %24, float %1466, float %1467
  %1469 = fmul fast float %1468, %1463
  %1470 = fmul fast float %1468, %1464
  %1471 = fmul fast float %1468, %1465
  %1472 = fmul fast float %1470, 5.000000e-01
  %1473 = fadd fast float %1465, %1463
  %1474 = fmul fast float %1468, %1473
  %1475 = fmul fast float %1474, 2.500000e-01
  %1476 = fadd fast float %1475, %1472
  %1477 = fmul fast float %1458, %1436
  %1478 = fmul fast float %1460, %1477
  %1479 = fsub fast float %1436, %1478
  %1480 = fadd fast float %1478, %1436
  %1481 = call float @dx.op.binary.f32(i32 35, float %1476, float %1479)  ; FMax(a,b)
  %1482 = call float @dx.op.binary.f32(i32 36, float %1481, float %1480)  ; FMin(a,b)
  %1483 = fcmp fast une float %1476, 0.000000e+00
  %1484 = fdiv fast float 1.000000e+00, %1476
  %1485 = fmul fast float %1484, %1482
  %1486 = fmul fast float %1485, %1469
  %1487 = fmul fast float %1485, %1470
  %1488 = fmul fast float %1485, %1471
  %1489 = select i1 %1483, float %1486, float %345
  %1490 = select i1 %1483, float %1487, float %349
  %1491 = select i1 %1483, float %1488, float %353
  %1492 = fsub fast float %1489, %345
  %1493 = fsub fast float %1490, %349
  %1494 = fsub fast float %1491, %353
  %1495 = fmul fast float %1492, %1461
  %1496 = fmul fast float %1493, %1461
  %1497 = fmul fast float %1494, %1461
  %1498 = fadd fast float %1495, %345
  %1499 = fadd fast float %1496, %349
  %1500 = fadd fast float %1497, %353
  %1501 = select i1 %1389, float %1498, float %345
  %1502 = select i1 %1389, float %1499, float %349
  %1503 = select i1 %1389, float %1500, float %353
  %1504 = extractvalue %dx.types.CBufRet.f32 %1459, 1
  %1505 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1335, float %1338, float %1415, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1506 = extractvalue %dx.types.ResRet.f32 %1505, 0
  %1507 = extractvalue %dx.types.ResRet.f32 %1505, 1
  %1508 = extractvalue %dx.types.ResRet.f32 %1505, 2
  %1509 = extractvalue %dx.types.CBufRet.f32 %1441, 2
  %1510 = extractvalue %dx.types.CBufRet.f32 %1443, 2
  %1511 = select i1 %24, float %1509, float %1510
  %1512 = fmul fast float %1511, %1506
  %1513 = fmul fast float %1511, %1507
  %1514 = fmul fast float %1511, %1508
  %1515 = fmul fast float %1513, 5.000000e-01
  %1516 = fadd fast float %1508, %1506
  %1517 = fmul fast float %1511, %1516
  %1518 = fmul fast float %1517, 2.500000e-01
  %1519 = fadd fast float %1518, %1515
  %1520 = fmul fast float %1458, %1446
  %1521 = fmul fast float %1460, %1520
  %1522 = fsub fast float %1446, %1521
  %1523 = fadd fast float %1521, %1446
  %1524 = call float @dx.op.binary.f32(i32 35, float %1519, float %1522)  ; FMax(a,b)
  %1525 = call float @dx.op.binary.f32(i32 36, float %1524, float %1523)  ; FMin(a,b)
  %1526 = fcmp fast une float %1519, 0.000000e+00
  %1527 = fdiv fast float 1.000000e+00, %1519
  %1528 = fmul fast float %1527, %1525
  %1529 = fmul fast float %1528, %1512
  %1530 = fmul fast float %1528, %1513
  %1531 = fmul fast float %1528, %1514
  %1532 = select i1 %1526, float %1529, float %333
  %1533 = select i1 %1526, float %1530, float %337
  %1534 = select i1 %1526, float %1531, float %341
  %1535 = fsub fast float %1532, %333
  %1536 = fsub fast float %1533, %337
  %1537 = fsub fast float %1534, %341
  %1538 = fmul fast float %1535, %1504
  %1539 = fmul fast float %1536, %1504
  %1540 = fmul fast float %1537, %1504
  %1541 = fadd fast float %1538, %333
  %1542 = fadd fast float %1539, %337
  %1543 = fadd fast float %1540, %341
  %1544 = select i1 %1389, float %1541, float %333
  %1545 = select i1 %1389, float %1542, float %337
  %1546 = select i1 %1389, float %1543, float %341
  %1547 = extractvalue %dx.types.CBufRet.f32 %1431, 0
  %1548 = extractvalue %dx.types.CBufRet.f32 %1433, 0
  %1549 = select i1 %24, float %1547, float %1548
  %1550 = fmul fast float %1549, %1501
  %1551 = fmul fast float %1549, %1502
  %1552 = fmul fast float %1549, %1503
  %1553 = call float @dx.op.unary.f32(i32 23, float %1550)  ; Log(value)
  %1554 = fadd fast float %1553, -7.000000e+00
  %1555 = call float @dx.op.unary.f32(i32 21, float %1554)  ; Exp(value)
  %1556 = fmul fast float %1555, %701
  %1557 = fcmp fast ogt float %1550, 0.000000e+00
  %1558 = select i1 %1557, float %1556, float 0.000000e+00
  %1559 = fadd fast float %1558, %1550
  %1560 = call float @dx.op.unary.f32(i32 23, float %1551)  ; Log(value)
  %1561 = fadd fast float %1560, -7.000000e+00
  %1562 = call float @dx.op.unary.f32(i32 21, float %1561)  ; Exp(value)
  %1563 = fmul fast float %1562, %712
  %1564 = fcmp fast ogt float %1551, 0.000000e+00
  %1565 = select i1 %1564, float %1563, float 0.000000e+00
  %1566 = fadd fast float %1565, %1551
  %1567 = call float @dx.op.unary.f32(i32 23, float %1552)  ; Log(value)
  %1568 = fadd fast float %1567, -6.000000e+00
  %1569 = call float @dx.op.unary.f32(i32 21, float %1568)  ; Exp(value)
  %1570 = fmul fast float %1569, %723
  %1571 = fcmp fast ogt float %1552, 0.000000e+00
  %1572 = select i1 %1571, float %1570, float 0.000000e+00
  %1573 = fadd fast float %1572, %1552
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %357, i32 %360, i32 %363, float %1559, float %1566, float %1573, float %1559, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1575 = extractvalue %dx.types.CBufRet.f32 %1574, 0
  %1576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1577 = extractvalue %dx.types.CBufRet.f32 %1576, 0
  %1578 = select i1 %24, float %1575, float %1577
  %1579 = fmul fast float %1578, %1544
  %1580 = fmul fast float %1578, %1545
  %1581 = fmul fast float %1578, %1546
  %1582 = call float @dx.op.unary.f32(i32 23, float %1579)  ; Log(value)
  %1583 = fadd fast float %1582, -7.000000e+00
  %1584 = call float @dx.op.unary.f32(i32 21, float %1583)  ; Exp(value)
  %1585 = fmul fast float %1584, %701
  %1586 = fcmp fast ogt float %1579, 0.000000e+00
  %1587 = select i1 %1586, float %1585, float 0.000000e+00
  %1588 = fadd fast float %1587, %1579
  %1589 = call float @dx.op.unary.f32(i32 23, float %1580)  ; Log(value)
  %1590 = fadd fast float %1589, -7.000000e+00
  %1591 = call float @dx.op.unary.f32(i32 21, float %1590)  ; Exp(value)
  %1592 = fmul fast float %1591, %712
  %1593 = fcmp fast ogt float %1580, 0.000000e+00
  %1594 = select i1 %1593, float %1592, float 0.000000e+00
  %1595 = fadd fast float %1594, %1580
  %1596 = call float @dx.op.unary.f32(i32 23, float %1581)  ; Log(value)
  %1597 = fadd fast float %1596, -6.000000e+00
  %1598 = call float @dx.op.unary.f32(i32 21, float %1597)  ; Exp(value)
  %1599 = fmul fast float %1598, %723
  %1600 = fcmp fast ogt float %1581, 0.000000e+00
  %1601 = select i1 %1600, float %1599, float 0.000000e+00
  %1602 = fadd fast float %1601, %1581
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %357, i32 %360, i32 %363, float %1588, float %1595, float %1602, float %1588, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1603 = add i32 %1228, 1
  %1604 = uitofp i32 %1603 to float
  %1605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %1606 = extractvalue %dx.types.CBufRet.f32 %1605, 0
  %1607 = extractvalue %dx.types.CBufRet.f32 %1605, 1
  %1608 = fmul fast float %1607, %1604
  %1609 = call float @dx.op.unary.f32(i32 21, float %1608)  ; Exp(value)
  %1610 = fmul fast float %1607, %1264
  %1611 = call float @dx.op.unary.f32(i32 21, float %1610)  ; Exp(value)
  %1612 = fsub fast float %1609, %1611
  %1613 = fmul fast float %1606, %1612
  %1614 = fmul fast float %1613, %1544
  %1615 = fmul fast float %1613, %1545
  %1616 = fmul fast float %1613, %1546
  %1617 = call float @dx.op.binary.f32(i32 36, float %1614, float 9.300000e+01)  ; FMin(a,b)
  %1618 = call float @dx.op.binary.f32(i32 36, float %1615, float 9.300000e+01)  ; FMin(a,b)
  %1619 = call float @dx.op.binary.f32(i32 36, float %1616, float 9.300000e+01)  ; FMin(a,b)
  %1620 = fmul fast float %1617, 0xBFF7154760000000
  %1621 = fmul fast float %1618, 0xBFF7154760000000
  %1622 = fmul fast float %1619, 0xBFF7154760000000
  %1623 = call float @dx.op.unary.f32(i32 21, float %1620)  ; Exp(value)
  %1624 = call float @dx.op.unary.f32(i32 21, float %1621)  ; Exp(value)
  %1625 = call float @dx.op.unary.f32(i32 21, float %1622)  ; Exp(value)
  %1626 = call float @dx.op.binary.f32(i32 35, float %1544, float 0x3F10000000000000)  ; FMax(a,b)
  %1627 = call float @dx.op.binary.f32(i32 35, float %1545, float 0x3F10000000000000)  ; FMax(a,b)
  %1628 = call float @dx.op.binary.f32(i32 35, float %1546, float 0x3F10000000000000)  ; FMax(a,b)
  %1629 = fdiv fast float 1.000000e+00, %1626
  %1630 = fdiv fast float 1.000000e+00, %1627
  %1631 = fdiv fast float 1.000000e+00, %1628
  %1632 = fsub fast float 1.000000e+00, %1623
  %1633 = fsub fast float 1.000000e+00, %1624
  %1634 = fsub fast float 1.000000e+00, %1625
  %1635 = fmul fast float %1501, %1224
  %1636 = fmul fast float %1635, %1632
  %1637 = fmul fast float %1636, %1629
  %1638 = fmul fast float %1502, %1225
  %1639 = fmul fast float %1638, %1633
  %1640 = fmul fast float %1639, %1630
  %1641 = fmul fast float %1503, %1226
  %1642 = fmul fast float %1641, %1634
  %1643 = fmul fast float %1642, %1631
  %1644 = fadd fast float %1637, %1221
  %1645 = fadd fast float %1640, %1222
  %1646 = fadd fast float %1643, %1223
  %1647 = fmul fast float %1623, %1224
  %1648 = fmul fast float %1624, %1225
  %1649 = fmul fast float %1625, %1226
  %1650 = add i32 %18, 3
  %1651 = add i32 %1650, %242
  %1652 = icmp ugt i32 %1651, %169
  br i1 %1652, label %2073, label %1653, !dx.controlflow.hints !32

; <label>:1653                                    ; preds = %1260
  %1654 = fmul fast float %348, 5.000000e-01
  %1655 = fadd fast float %352, %344
  %1656 = fmul fast float %1655, 2.500000e-01
  %1657 = fadd fast float %1656, %1654
  %1658 = fmul fast float %336, 5.000000e-01
  %1659 = fadd fast float %340, %332
  %1660 = fmul fast float %1659, 2.500000e-01
  %1661 = fadd fast float %1660, %1658
  %1662 = fcmp fast une float %1661, 0.000000e+00
  br i1 %1662, label %1663, label %1683, !dx.controlflow.hints !33

; <label>:1663                                    ; preds = %1653
  %1664 = add i32 %1261, 1
  %1665 = fcmp fast ogt float %1657, 0.000000e+00
  %1666 = call float @dx.op.unary.f32(i32 23, float %1657)  ; Log(value)
  %1667 = select i1 %1665, float %1666, float -3.200000e+01
  %1668 = call float @dx.op.binary.f32(i32 35, float %1667, float -3.200000e+01)  ; FMax(a,b)
  %1669 = call float @dx.op.binary.f32(i32 36, float %1668, float 3.200000e+01)  ; FMin(a,b)
  %1670 = fadd fast float %1669, 3.200000e+01
  %1671 = fmul fast float %1670, 2.000000e+00
  %1672 = fptoui float %1671 to i32
  %1673 = add i32 %1672, %1262
  %1674 = fcmp fast ogt float %1661, 0.000000e+00
  %1675 = call float @dx.op.unary.f32(i32 23, float %1661)  ; Log(value)
  %1676 = select i1 %1674, float %1675, float -3.200000e+01
  %1677 = call float @dx.op.binary.f32(i32 35, float %1676, float -3.200000e+01)  ; FMax(a,b)
  %1678 = call float @dx.op.binary.f32(i32 36, float %1677, float 3.200000e+01)  ; FMin(a,b)
  %1679 = fadd fast float %1678, 3.200000e+01
  %1680 = fmul fast float %1679, 2.000000e+00
  %1681 = fptoui float %1680 to i32
  %1682 = add i32 %1681, %1263
  br label %1683

; <label>:1683                                    ; preds = %1663, %1653
  %1684 = phi i32 [ %1664, %1663 ], [ %1261, %1653 ]
  %1685 = phi i32 [ %1673, %1663 ], [ %1262, %1653 ]
  %1686 = phi i32 [ %1682, %1663 ], [ %1263, %1653 ]
  %1687 = uitofp i32 %1651 to float
  %1688 = fadd fast float %1687, 5.000000e-01
  %1689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %1690 = extractvalue %dx.types.CBufRet.f32 %1689, 0
  %1691 = extractvalue %dx.types.CBufRet.f32 %1689, 1
  %1692 = fmul fast float %1607, %1688
  %1693 = call float @dx.op.unary.f32(i32 21, float %1692)  ; Exp(value)
  %1694 = fmul fast float %1693, %1606
  %1695 = fsub fast float 4.000000e+00, %1606
  %1696 = fadd fast float %1695, %1694
  %1697 = fmul fast float %414, %1690
  %1698 = fmul fast float %416, %1691
  %1699 = fsub fast float 1.000000e+00, %1697
  %1700 = fsub fast float 1.000000e+00, %1698
  %1701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %1702 = extractvalue %dx.types.CBufRet.f32 %1701, 0
  %1703 = extractvalue %dx.types.CBufRet.f32 %1701, 1
  %1704 = extractvalue %dx.types.CBufRet.f32 %1701, 2
  %1705 = fmul fast float %1702, %1699
  %1706 = fmul fast float %1703, %1699
  %1707 = fmul fast float %1704, %1699
  %1708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %1709 = extractvalue %dx.types.CBufRet.f32 %1708, 0
  %1710 = extractvalue %dx.types.CBufRet.f32 %1708, 1
  %1711 = extractvalue %dx.types.CBufRet.f32 %1708, 2
  %1712 = fmul fast float %1709, %1700
  %1713 = fmul fast float %1710, %1700
  %1714 = fmul fast float %1711, %1700
  %1715 = fadd fast float %1712, %1705
  %1716 = fadd fast float %1713, %1706
  %1717 = fadd fast float %1714, %1707
  %1718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %1719 = extractvalue %dx.types.CBufRet.f32 %1718, 0
  %1720 = extractvalue %dx.types.CBufRet.f32 %1718, 1
  %1721 = extractvalue %dx.types.CBufRet.f32 %1718, 2
  %1722 = fadd fast float %1715, %1719
  %1723 = fadd fast float %1716, %1720
  %1724 = fadd fast float %1717, %1721
  %1725 = fmul fast float %1722, %1696
  %1726 = fmul fast float %1723, %1696
  %1727 = fmul fast float %1724, %1696
  %1728 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 385)  ; CBufferLoadLegacy(handle,regIndex)
  %1729 = extractvalue %dx.types.CBufRet.f32 %1728, 0
  %1730 = extractvalue %dx.types.CBufRet.f32 %1728, 1
  %1731 = extractvalue %dx.types.CBufRet.f32 %1728, 3
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 386)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 0
  %1734 = extractvalue %dx.types.CBufRet.f32 %1732, 1
  %1735 = extractvalue %dx.types.CBufRet.f32 %1732, 3
  %1736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 387)  ; CBufferLoadLegacy(handle,regIndex)
  %1737 = extractvalue %dx.types.CBufRet.f32 %1736, 0
  %1738 = extractvalue %dx.types.CBufRet.f32 %1736, 1
  %1739 = extractvalue %dx.types.CBufRet.f32 %1736, 3
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 388)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 0
  %1742 = extractvalue %dx.types.CBufRet.f32 %1740, 1
  %1743 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1744 = fmul fast float %1725, %1729
  %1745 = call float @dx.op.tertiary.f32(i32 46, float %1733, float %1726, float %1744)  ; FMad(a,b,c)
  %1746 = call float @dx.op.tertiary.f32(i32 46, float %1737, float %1727, float %1745)  ; FMad(a,b,c)
  %1747 = fadd fast float %1746, %1741
  %1748 = fmul fast float %1725, %1730
  %1749 = call float @dx.op.tertiary.f32(i32 46, float %1734, float %1726, float %1748)  ; FMad(a,b,c)
  %1750 = call float @dx.op.tertiary.f32(i32 46, float %1738, float %1727, float %1749)  ; FMad(a,b,c)
  %1751 = fadd fast float %1750, %1742
  %1752 = fmul fast float %1725, %1731
  %1753 = call float @dx.op.tertiary.f32(i32 46, float %1735, float %1726, float %1752)  ; FMad(a,b,c)
  %1754 = call float @dx.op.tertiary.f32(i32 46, float %1739, float %1727, float %1753)  ; FMad(a,b,c)
  %1755 = fadd fast float %1754, %1743
  %1756 = fmul fast float %1747, 5.000000e-01
  %1757 = fdiv fast float %1756, %1755
  %1758 = fadd fast float %1757, 5.000000e-01
  %1759 = fmul fast float %1751, -5.000000e-01
  %1760 = fdiv fast float %1759, %1755
  %1761 = fadd fast float %1760, 5.000000e-01
  %1762 = extractvalue %dx.types.CBufRet.f32 %1605, 2
  %1763 = extractvalue %dx.types.CBufRet.f32 %1605, 3
  %1764 = fadd fast float %1755, -4.000000e+00
  %1765 = call float @dx.op.binary.f32(i32 35, float %1764, float 0.000000e+00)  ; FMax(a,b)
  %1766 = fadd fast float %1765, %1606
  %1767 = fmul fast float %1766, %1762
  %1768 = call float @dx.op.unary.f32(i32 23, float %1767)  ; Log(value)
  %1769 = fmul fast float %1768, %1763
  %1770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1771 = extractvalue %dx.types.CBufRet.f32 %1770, 2
  %1772 = fmul fast float %1769, %1771
  %1773 = call float @dx.op.unary.f32(i32 27, float %1758)  ; Round_ni(value)
  %1774 = call float @dx.op.unary.f32(i32 6, float %1773)  ; FAbs(value)
  %1775 = call float @dx.op.unary.f32(i32 27, float %1761)  ; Round_ni(value)
  %1776 = call float @dx.op.unary.f32(i32 6, float %1775)  ; FAbs(value)
  %1777 = fadd fast float %1776, %1774
  %1778 = call float @dx.op.unary.f32(i32 27, float %1772)  ; Round_ni(value)
  %1779 = call float @dx.op.unary.f32(i32 6, float %1778)  ; FAbs(value)
  %1780 = fadd fast float %1777, %1779
  %1781 = fcmp fast oeq float %1780, 0.000000e+00
  %1782 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %1758, float %1761, float %501, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1783 = extractvalue %dx.types.ResRet.f32 %1782, 0
  %1784 = extractvalue %dx.types.ResRet.f32 %1782, 1
  %1785 = extractvalue %dx.types.ResRet.f32 %1782, 2
  %1786 = extractvalue %dx.types.ResRet.f32 %1782, 3
  %1787 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %15, float %1758, float %1761, float %507, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %1788 = extractvalue %dx.types.ResRet.f32 %1787, 0
  %1789 = extractvalue %dx.types.ResRet.f32 %1787, 1
  %1790 = extractvalue %dx.types.ResRet.f32 %1787, 2
  %1791 = extractvalue %dx.types.ResRet.f32 %1787, 3
  %1792 = call float @dx.op.binary.f32(i32 35, float %1784, float %1785)  ; FMax(a,b)
  %1793 = call float @dx.op.binary.f32(i32 35, float %1783, float %1792)  ; FMax(a,b)
  %1794 = call float @dx.op.binary.f32(i32 35, float %1793, float %1786)  ; FMax(a,b)
  %1795 = call float @dx.op.binary.f32(i32 36, float %1789, float %1790)  ; FMin(a,b)
  %1796 = call float @dx.op.binary.f32(i32 36, float %1788, float %1795)  ; FMin(a,b)
  %1797 = call float @dx.op.binary.f32(i32 36, float %1796, float %1791)  ; FMin(a,b)
  %1798 = fmul fast float %1794, 2.550000e+02
  %1799 = fadd fast float %1798, 0x3F70101020000000
  %1800 = fptoui float %1799 to i32
  %1801 = fmul fast float %1797, 2.550000e+02
  %1802 = fadd fast float %1801, 0x3F70101020000000
  %1803 = fptoui float %1802 to i32
  %1804 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %17, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.i32 %1804, 0
  %1806 = uitofp i32 %1805 to float
  %1807 = fmul fast float %1806, %1772
  %1808 = fptoui float %1807 to i32
  %1809 = icmp ult i32 %1808, %1803
  %1810 = icmp uge i32 %1808, %1800
  %1811 = and i1 %1809, %1810
  %1812 = and i1 %1781, %1811
  %1813 = uitofp i32 %1800 to float
  %1814 = uitofp i32 %1803 to float
  %1815 = fadd fast float %1813, 5.000000e-01
  %1816 = fadd fast float %1814, 5.000000e-01
  %1817 = fmul fast float %1771, %1815
  %1818 = fmul fast float %1816, %1771
  %1819 = fadd fast float %1817, 0x3F0FFB4800000000
  %1820 = fadd fast float %1818, 0xBF0FFB4800000000
  %1821 = call float @dx.op.binary.f32(i32 35, float %1772, float %1819)  ; FMax(a,b)
  %1822 = call float @dx.op.binary.f32(i32 36, float %1821, float %1820)  ; FMin(a,b)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1689, 2
  %1824 = fmul fast float %1690, %400
  %1825 = fmul fast float %1691, %401
  %1826 = fmul fast float %1823, %1688
  %1827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %1828 = extractvalue %dx.types.CBufRet.f32 %1827, 1
  %1829 = extractvalue %dx.types.CBufRet.f32 %1827, 2
  %1830 = extractvalue %dx.types.CBufRet.f32 %1827, 0
  %1831 = select i1 %24, float %1830, float 0.000000e+00
  %1832 = fmul fast float %1828, %1822
  %1833 = fadd fast float %1831, %1832
  %1834 = fadd fast float %1831, %1829
  %1835 = fsub fast float %1828, %1829
  %1836 = fadd fast float %1835, %1831
  %1837 = call float @dx.op.binary.f32(i32 35, float %1833, float %1834)  ; FMax(a,b)
  %1838 = call float @dx.op.binary.f32(i32 36, float %1837, float %1836)  ; FMin(a,b)
  %1839 = fmul fast float %1829, 2.000000e+00
  %1840 = fmul fast float %1826, %1828
  %1841 = fadd fast float %1831, %1840
  %1842 = fadd fast float %1831, %1839
  %1843 = fsub fast float %1828, %1839
  %1844 = fadd fast float %1843, %1831
  %1845 = call float @dx.op.binary.f32(i32 35, float %1841, float %1842)  ; FMax(a,b)
  %1846 = call float @dx.op.binary.f32(i32 36, float %1845, float %1844)  ; FMin(a,b)
  %1847 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %14, float %1824, float %1825, float %1846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1848 = extractvalue %dx.types.ResRet.f32 %1847, 0
  %1849 = extractvalue %dx.types.ResRet.f32 %1847, 1
  %1850 = fmul fast float %1848, 0x3FF7154760000000
  %1851 = fmul fast float %1849, 0x3FF7154760000000
  %1852 = call float @dx.op.unary.f32(i32 21, float %1850)  ; Exp(value)
  %1853 = call float @dx.op.unary.f32(i32 21, float %1851)  ; Exp(value)
  %1854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 18)  ; CBufferLoadLegacy(handle,regIndex)
  %1855 = extractvalue %dx.types.CBufRet.f32 %1854, 1
  %1856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1857 = extractvalue %dx.types.CBufRet.f32 %1856, 1
  %1858 = select i1 %24, float %1855, float %1857
  %1859 = fmul fast float %1858, %1852
  %1860 = fmul fast float %1858, %1853
  %1861 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %14, float %1824, float %1825, float %1846, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1862 = extractvalue %dx.types.ResRet.f32 %1861, 0
  %1863 = extractvalue %dx.types.ResRet.f32 %1861, 1
  %1864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1865 = extractvalue %dx.types.CBufRet.f32 %1864, 1
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 1
  %1868 = select i1 %24, float %1865, float %1867
  %1869 = fmul fast float %1868, %1862
  %1870 = fmul fast float %1868, %1863
  %1871 = fmul fast float %1859, %1859
  %1872 = fsub fast float %1860, %1871
  %1873 = call float @dx.op.unary.f32(i32 6, float %1872)  ; FAbs(value)
  %1874 = call float @dx.op.unary.f32(i32 24, float %1873)  ; Sqrt(value)
  %1875 = fdiv fast float %1874, %1859
  %1876 = fmul fast float %1869, %1869
  %1877 = fsub fast float %1870, %1876
  %1878 = call float @dx.op.unary.f32(i32 6, float %1877)  ; FAbs(value)
  %1879 = call float @dx.op.unary.f32(i32 24, float %1878)  ; Sqrt(value)
  %1880 = fdiv fast float %1879, %1869
  %1881 = call float @dx.op.binary.f32(i32 35, float %1875, float %1880)  ; FMax(a,b)
  %1882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 394)  ; CBufferLoadLegacy(handle,regIndex)
  %1883 = extractvalue %dx.types.CBufRet.f32 %1882, 2
  %1884 = extractvalue %dx.types.CBufRet.f32 %1882, 0
  %1885 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %14, float %1758, float %1761, float %1838, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1886 = extractvalue %dx.types.ResRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.ResRet.f32 %1885, 1
  %1888 = extractvalue %dx.types.ResRet.f32 %1885, 2
  %1889 = extractvalue %dx.types.CBufRet.f32 %1854, 2
  %1890 = extractvalue %dx.types.CBufRet.f32 %1856, 2
  %1891 = select i1 %24, float %1889, float %1890
  %1892 = fmul fast float %1891, %1886
  %1893 = fmul fast float %1891, %1887
  %1894 = fmul fast float %1891, %1888
  %1895 = fmul fast float %1893, 5.000000e-01
  %1896 = fadd fast float %1888, %1886
  %1897 = fmul fast float %1891, %1896
  %1898 = fmul fast float %1897, 2.500000e-01
  %1899 = fadd fast float %1898, %1895
  %1900 = fmul fast float %1881, %1859
  %1901 = fmul fast float %1883, %1900
  %1902 = fsub fast float %1859, %1901
  %1903 = fadd fast float %1901, %1859
  %1904 = call float @dx.op.binary.f32(i32 35, float %1899, float %1902)  ; FMax(a,b)
  %1905 = call float @dx.op.binary.f32(i32 36, float %1904, float %1903)  ; FMin(a,b)
  %1906 = fcmp fast une float %1899, 0.000000e+00
  %1907 = fdiv fast float 1.000000e+00, %1899
  %1908 = fmul fast float %1907, %1905
  %1909 = fmul fast float %1908, %1892
  %1910 = fmul fast float %1908, %1893
  %1911 = fmul fast float %1908, %1894
  %1912 = select i1 %1906, float %1909, float %344
  %1913 = select i1 %1906, float %1910, float %348
  %1914 = select i1 %1906, float %1911, float %352
  %1915 = fsub fast float %1912, %344
  %1916 = fsub fast float %1913, %348
  %1917 = fsub fast float %1914, %352
  %1918 = fmul fast float %1915, %1884
  %1919 = fmul fast float %1916, %1884
  %1920 = fmul fast float %1917, %1884
  %1921 = fadd fast float %1918, %344
  %1922 = fadd fast float %1919, %348
  %1923 = fadd fast float %1920, %352
  %1924 = select i1 %1812, float %1921, float %344
  %1925 = select i1 %1812, float %1922, float %348
  %1926 = select i1 %1812, float %1923, float %352
  %1927 = extractvalue %dx.types.CBufRet.f32 %1882, 1
  %1928 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %14, float %1758, float %1761, float %1838, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1929 = extractvalue %dx.types.ResRet.f32 %1928, 0
  %1930 = extractvalue %dx.types.ResRet.f32 %1928, 1
  %1931 = extractvalue %dx.types.ResRet.f32 %1928, 2
  %1932 = extractvalue %dx.types.CBufRet.f32 %1864, 2
  %1933 = extractvalue %dx.types.CBufRet.f32 %1866, 2
  %1934 = select i1 %24, float %1932, float %1933
  %1935 = fmul fast float %1934, %1929
  %1936 = fmul fast float %1934, %1930
  %1937 = fmul fast float %1934, %1931
  %1938 = fmul fast float %1936, 5.000000e-01
  %1939 = fadd fast float %1931, %1929
  %1940 = fmul fast float %1934, %1939
  %1941 = fmul fast float %1940, 2.500000e-01
  %1942 = fadd fast float %1941, %1938
  %1943 = fmul fast float %1881, %1869
  %1944 = fmul fast float %1883, %1943
  %1945 = fsub fast float %1869, %1944
  %1946 = fadd fast float %1944, %1869
  %1947 = call float @dx.op.binary.f32(i32 35, float %1942, float %1945)  ; FMax(a,b)
  %1948 = call float @dx.op.binary.f32(i32 36, float %1947, float %1946)  ; FMin(a,b)
  %1949 = fcmp fast une float %1942, 0.000000e+00
  %1950 = fdiv fast float 1.000000e+00, %1942
  %1951 = fmul fast float %1950, %1948
  %1952 = fmul fast float %1951, %1935
  %1953 = fmul fast float %1951, %1936
  %1954 = fmul fast float %1951, %1937
  %1955 = select i1 %1949, float %1952, float %332
  %1956 = select i1 %1949, float %1953, float %336
  %1957 = select i1 %1949, float %1954, float %340
  %1958 = fsub fast float %1955, %332
  %1959 = fsub fast float %1956, %336
  %1960 = fsub fast float %1957, %340
  %1961 = fmul fast float %1958, %1927
  %1962 = fmul fast float %1959, %1927
  %1963 = fmul fast float %1960, %1927
  %1964 = fadd fast float %1961, %332
  %1965 = fadd fast float %1962, %336
  %1966 = fadd fast float %1963, %340
  %1967 = select i1 %1812, float %1964, float %332
  %1968 = select i1 %1812, float %1965, float %336
  %1969 = select i1 %1812, float %1966, float %340
  %1970 = extractvalue %dx.types.CBufRet.f32 %1854, 0
  %1971 = extractvalue %dx.types.CBufRet.f32 %1856, 0
  %1972 = select i1 %24, float %1970, float %1971
  %1973 = fmul fast float %1972, %1924
  %1974 = fmul fast float %1972, %1925
  %1975 = fmul fast float %1972, %1926
  %1976 = call float @dx.op.unary.f32(i32 23, float %1973)  ; Log(value)
  %1977 = fadd fast float %1976, -7.000000e+00
  %1978 = call float @dx.op.unary.f32(i32 21, float %1977)  ; Exp(value)
  %1979 = fmul fast float %1978, %701
  %1980 = fcmp fast ogt float %1973, 0.000000e+00
  %1981 = select i1 %1980, float %1979, float 0.000000e+00
  %1982 = fadd fast float %1981, %1973
  %1983 = call float @dx.op.unary.f32(i32 23, float %1974)  ; Log(value)
  %1984 = fadd fast float %1983, -7.000000e+00
  %1985 = call float @dx.op.unary.f32(i32 21, float %1984)  ; Exp(value)
  %1986 = fmul fast float %1985, %712
  %1987 = fcmp fast ogt float %1974, 0.000000e+00
  %1988 = select i1 %1987, float %1986, float 0.000000e+00
  %1989 = fadd fast float %1988, %1974
  %1990 = call float @dx.op.unary.f32(i32 23, float %1975)  ; Log(value)
  %1991 = fadd fast float %1990, -6.000000e+00
  %1992 = call float @dx.op.unary.f32(i32 21, float %1991)  ; Exp(value)
  %1993 = fmul fast float %1992, %723
  %1994 = fcmp fast ogt float %1975, 0.000000e+00
  %1995 = select i1 %1994, float %1993, float 0.000000e+00
  %1996 = fadd fast float %1995, %1975
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %356, i32 %359, i32 %362, float %1982, float %1989, float %1996, float %1982, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %1997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 19)  ; CBufferLoadLegacy(handle,regIndex)
  %1998 = extractvalue %dx.types.CBufRet.f32 %1997, 0
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 17)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2001 = select i1 %24, float %1998, float %2000
  %2002 = fmul fast float %2001, %1967
  %2003 = fmul fast float %2001, %1968
  %2004 = fmul fast float %2001, %1969
  %2005 = call float @dx.op.unary.f32(i32 23, float %2002)  ; Log(value)
  %2006 = fadd fast float %2005, -7.000000e+00
  %2007 = call float @dx.op.unary.f32(i32 21, float %2006)  ; Exp(value)
  %2008 = fmul fast float %2007, %701
  %2009 = fcmp fast ogt float %2002, 0.000000e+00
  %2010 = select i1 %2009, float %2008, float 0.000000e+00
  %2011 = fadd fast float %2010, %2002
  %2012 = call float @dx.op.unary.f32(i32 23, float %2003)  ; Log(value)
  %2013 = fadd fast float %2012, -7.000000e+00
  %2014 = call float @dx.op.unary.f32(i32 21, float %2013)  ; Exp(value)
  %2015 = fmul fast float %2014, %712
  %2016 = fcmp fast ogt float %2003, 0.000000e+00
  %2017 = select i1 %2016, float %2015, float 0.000000e+00
  %2018 = fadd fast float %2017, %2003
  %2019 = call float @dx.op.unary.f32(i32 23, float %2004)  ; Log(value)
  %2020 = fadd fast float %2019, -6.000000e+00
  %2021 = call float @dx.op.unary.f32(i32 21, float %2020)  ; Exp(value)
  %2022 = fmul fast float %2021, %723
  %2023 = fcmp fast ogt float %2004, 0.000000e+00
  %2024 = select i1 %2023, float %2022, float 0.000000e+00
  %2025 = fadd fast float %2024, %2004
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %356, i32 %359, i32 %362, float %2011, float %2018, float %2025, float %2011, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2026 = add i32 %1651, 1
  %2027 = uitofp i32 %2026 to float
  %2028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %2029 = extractvalue %dx.types.CBufRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.CBufRet.f32 %2028, 1
  %2031 = fmul fast float %2030, %2027
  %2032 = call float @dx.op.unary.f32(i32 21, float %2031)  ; Exp(value)
  %2033 = fmul fast float %2030, %1687
  %2034 = call float @dx.op.unary.f32(i32 21, float %2033)  ; Exp(value)
  %2035 = fsub fast float %2032, %2034
  %2036 = fmul fast float %2029, %2035
  %2037 = fmul fast float %2036, %1967
  %2038 = fmul fast float %2036, %1968
  %2039 = fmul fast float %2036, %1969
  %2040 = call float @dx.op.binary.f32(i32 36, float %2037, float 9.300000e+01)  ; FMin(a,b)
  %2041 = call float @dx.op.binary.f32(i32 36, float %2038, float 9.300000e+01)  ; FMin(a,b)
  %2042 = call float @dx.op.binary.f32(i32 36, float %2039, float 9.300000e+01)  ; FMin(a,b)
  %2043 = fmul fast float %2040, 0xBFF7154760000000
  %2044 = fmul fast float %2041, 0xBFF7154760000000
  %2045 = fmul fast float %2042, 0xBFF7154760000000
  %2046 = call float @dx.op.unary.f32(i32 21, float %2043)  ; Exp(value)
  %2047 = call float @dx.op.unary.f32(i32 21, float %2044)  ; Exp(value)
  %2048 = call float @dx.op.unary.f32(i32 21, float %2045)  ; Exp(value)
  %2049 = call float @dx.op.binary.f32(i32 35, float %1967, float 0x3F10000000000000)  ; FMax(a,b)
  %2050 = call float @dx.op.binary.f32(i32 35, float %1968, float 0x3F10000000000000)  ; FMax(a,b)
  %2051 = call float @dx.op.binary.f32(i32 35, float %1969, float 0x3F10000000000000)  ; FMax(a,b)
  %2052 = fdiv fast float 1.000000e+00, %2049
  %2053 = fdiv fast float 1.000000e+00, %2050
  %2054 = fdiv fast float 1.000000e+00, %2051
  %2055 = fsub fast float 1.000000e+00, %2046
  %2056 = fsub fast float 1.000000e+00, %2047
  %2057 = fsub fast float 1.000000e+00, %2048
  %2058 = fmul fast float %1924, %1647
  %2059 = fmul fast float %2058, %2055
  %2060 = fmul fast float %2059, %2052
  %2061 = fmul fast float %1925, %1648
  %2062 = fmul fast float %2061, %2056
  %2063 = fmul fast float %2062, %2053
  %2064 = fmul fast float %1926, %1649
  %2065 = fmul fast float %2064, %2057
  %2066 = fmul fast float %2065, %2054
  %2067 = fadd fast float %2060, %1644
  %2068 = fadd fast float %2063, %1645
  %2069 = fadd fast float %2066, %1646
  %2070 = fmul fast float %2046, %1647
  %2071 = fmul fast float %2047, %1648
  %2072 = fmul fast float %2048, %1649
  br label %2073

; <label>:2073                                    ; preds = %1683, %1260, %837, %395, %331
  %2074 = phi float [ %332, %331 ], [ %332, %395 ], [ %332, %837 ], [ %1967, %1683 ], [ %332, %1260 ]
  %2075 = phi float [ %333, %331 ], [ %333, %395 ], [ %333, %837 ], [ %1544, %1683 ], [ %1544, %1260 ]
  %2076 = phi float [ %334, %331 ], [ %334, %395 ], [ %1121, %837 ], [ %1121, %1683 ], [ %1121, %1260 ]
  %2077 = phi float [ %335, %331 ], [ %686, %395 ], [ %686, %837 ], [ %686, %1683 ], [ %686, %1260 ]
  %2078 = phi float [ %336, %331 ], [ %336, %395 ], [ %336, %837 ], [ %1968, %1683 ], [ %336, %1260 ]
  %2079 = phi float [ %337, %331 ], [ %337, %395 ], [ %337, %837 ], [ %1545, %1683 ], [ %1545, %1260 ]
  %2080 = phi float [ %338, %331 ], [ %338, %395 ], [ %1122, %837 ], [ %1122, %1683 ], [ %1122, %1260 ]
  %2081 = phi float [ %339, %331 ], [ %687, %395 ], [ %687, %837 ], [ %687, %1683 ], [ %687, %1260 ]
  %2082 = phi float [ %340, %331 ], [ %340, %395 ], [ %340, %837 ], [ %1969, %1683 ], [ %340, %1260 ]
  %2083 = phi float [ %341, %331 ], [ %341, %395 ], [ %341, %837 ], [ %1546, %1683 ], [ %1546, %1260 ]
  %2084 = phi float [ %342, %331 ], [ %342, %395 ], [ %1123, %837 ], [ %1123, %1683 ], [ %1123, %1260 ]
  %2085 = phi float [ %343, %331 ], [ %688, %395 ], [ %688, %837 ], [ %688, %1683 ], [ %688, %1260 ]
  %2086 = phi float [ %344, %331 ], [ %344, %395 ], [ %344, %837 ], [ %1924, %1683 ], [ %344, %1260 ]
  %2087 = phi float [ %345, %331 ], [ %345, %395 ], [ %345, %837 ], [ %1501, %1683 ], [ %1501, %1260 ]
  %2088 = phi float [ %346, %331 ], [ %346, %395 ], [ %1078, %837 ], [ %1078, %1683 ], [ %1078, %1260 ]
  %2089 = phi float [ %347, %331 ], [ %643, %395 ], [ %643, %837 ], [ %643, %1683 ], [ %643, %1260 ]
  %2090 = phi float [ %348, %331 ], [ %348, %395 ], [ %348, %837 ], [ %1925, %1683 ], [ %348, %1260 ]
  %2091 = phi float [ %349, %331 ], [ %349, %395 ], [ %349, %837 ], [ %1502, %1683 ], [ %1502, %1260 ]
  %2092 = phi float [ %350, %331 ], [ %350, %395 ], [ %1079, %837 ], [ %1079, %1683 ], [ %1079, %1260 ]
  %2093 = phi float [ %351, %331 ], [ %644, %395 ], [ %644, %837 ], [ %644, %1683 ], [ %644, %1260 ]
  %2094 = phi float [ %352, %331 ], [ %352, %395 ], [ %352, %837 ], [ %1926, %1683 ], [ %352, %1260 ]
  %2095 = phi float [ %353, %331 ], [ %353, %395 ], [ %353, %837 ], [ %1503, %1683 ], [ %1503, %1260 ]
  %2096 = phi float [ %354, %331 ], [ %354, %395 ], [ %1080, %837 ], [ %1080, %1683 ], [ %1080, %1260 ]
  %2097 = phi float [ %355, %331 ], [ %645, %395 ], [ %645, %837 ], [ %645, %1683 ], [ %645, %1260 ]
  %2098 = phi float [ %200, %331 ], [ %200, %395 ], [ %200, %837 ], [ %2070, %1683 ], [ %200, %1260 ]
  %2099 = phi float [ %201, %331 ], [ %201, %395 ], [ %201, %837 ], [ %1647, %1683 ], [ %1647, %1260 ]
  %2100 = phi float [ %202, %331 ], [ %202, %395 ], [ %1224, %837 ], [ %1224, %1683 ], [ %1224, %1260 ]
  %2101 = phi float [ %203, %331 ], [ %801, %395 ], [ %801, %837 ], [ %801, %1683 ], [ %801, %1260 ]
  %2102 = phi float [ %204, %331 ], [ %204, %395 ], [ %204, %837 ], [ %2071, %1683 ], [ %204, %1260 ]
  %2103 = phi float [ %205, %331 ], [ %205, %395 ], [ %205, %837 ], [ %1648, %1683 ], [ %1648, %1260 ]
  %2104 = phi float [ %206, %331 ], [ %206, %395 ], [ %1225, %837 ], [ %1225, %1683 ], [ %1225, %1260 ]
  %2105 = phi float [ %207, %331 ], [ %802, %395 ], [ %802, %837 ], [ %802, %1683 ], [ %802, %1260 ]
  %2106 = phi float [ %208, %331 ], [ %208, %395 ], [ %208, %837 ], [ %2072, %1683 ], [ %208, %1260 ]
  %2107 = phi float [ %209, %331 ], [ %209, %395 ], [ %209, %837 ], [ %1649, %1683 ], [ %1649, %1260 ]
  %2108 = phi float [ %210, %331 ], [ %210, %395 ], [ %1226, %837 ], [ %1226, %1683 ], [ %1226, %1260 ]
  %2109 = phi float [ %211, %331 ], [ %803, %395 ], [ %803, %837 ], [ %803, %1683 ], [ %803, %1260 ]
  %2110 = phi float [ %212, %331 ], [ %212, %395 ], [ %212, %837 ], [ %2067, %1683 ], [ %212, %1260 ]
  %2111 = phi float [ %213, %331 ], [ %213, %395 ], [ %213, %837 ], [ %1644, %1683 ], [ %1644, %1260 ]
  %2112 = phi float [ %214, %331 ], [ %214, %395 ], [ %1221, %837 ], [ %1221, %1683 ], [ %1221, %1260 ]
  %2113 = phi float [ %215, %331 ], [ %798, %395 ], [ %798, %837 ], [ %798, %1683 ], [ %798, %1260 ]
  %2114 = phi float [ %216, %331 ], [ %216, %395 ], [ %216, %837 ], [ %2068, %1683 ], [ %216, %1260 ]
  %2115 = phi float [ %217, %331 ], [ %217, %395 ], [ %217, %837 ], [ %1645, %1683 ], [ %1645, %1260 ]
  %2116 = phi float [ %218, %331 ], [ %218, %395 ], [ %1222, %837 ], [ %1222, %1683 ], [ %1222, %1260 ]
  %2117 = phi float [ %219, %331 ], [ %799, %395 ], [ %799, %837 ], [ %799, %1683 ], [ %799, %1260 ]
  %2118 = phi float [ %220, %331 ], [ %220, %395 ], [ %220, %837 ], [ %2069, %1683 ], [ %220, %1260 ]
  %2119 = phi float [ %221, %331 ], [ %221, %395 ], [ %221, %837 ], [ %1646, %1683 ], [ %1646, %1260 ]
  %2120 = phi float [ %222, %331 ], [ %222, %395 ], [ %1223, %837 ], [ %1223, %1683 ], [ %1223, %1260 ]
  %2121 = phi float [ %223, %331 ], [ %800, %395 ], [ %800, %837 ], [ %800, %1683 ], [ %800, %1260 ]
  %2122 = phi i32 [ %233, %331 ], [ %396, %395 ], [ %838, %837 ], [ %1684, %1683 ], [ %1261, %1260 ]
  %2123 = phi i32 [ %234, %331 ], [ %397, %395 ], [ %839, %837 ], [ %1685, %1683 ], [ %1262, %1260 ]
  %2124 = phi i32 [ %235, %331 ], [ %398, %395 ], [ %840, %837 ], [ %1686, %1683 ], [ %1263, %1260 ]
  %2125 = phi float [ %236, %331 ], [ %798, %395 ], [ %1221, %837 ], [ %2067, %1683 ], [ %1644, %1260 ]
  %2126 = phi float [ %237, %331 ], [ %799, %395 ], [ %1222, %837 ], [ %2068, %1683 ], [ %1645, %1260 ]
  %2127 = phi float [ %238, %331 ], [ %800, %395 ], [ %1223, %837 ], [ %2069, %1683 ], [ %1646, %1260 ]
  %2128 = phi float [ %239, %331 ], [ %801, %395 ], [ %1224, %837 ], [ %2070, %1683 ], [ %1647, %1260 ]
  %2129 = phi float [ %240, %331 ], [ %802, %395 ], [ %1225, %837 ], [ %2071, %1683 ], [ %1648, %1260 ]
  %2130 = phi float [ %241, %331 ], [ %803, %395 ], [ %1226, %837 ], [ %2072, %1683 ], [ %1649, %1260 ]
  br i1 %248, label %2344, label %2131, !dx.controlflow.hints !34

; <label>:2131                                    ; preds = %2073
  %2132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2133 = extractvalue %dx.types.CBufRet.f32 %2132, 0
  %2134 = fmul fast float %2133, %2113
  %2135 = fmul fast float %2133, %2117
  %2136 = fmul fast float %2133, %2121
  %2137 = fadd fast float %35, 0x3FE3C6EF40000000
  %2138 = call float @dx.op.unary.f32(i32 22, float %2137)  ; Frc(value)
  %2139 = call float @dx.op.unary.f32(i32 23, float %2134)  ; Log(value)
  %2140 = fadd fast float %2139, -7.000000e+00
  %2141 = call float @dx.op.unary.f32(i32 21, float %2140)  ; Exp(value)
  %2142 = fmul fast float %2138, 2.000000e+00
  %2143 = fadd fast float %2142, -1.000000e+00
  %2144 = fmul fast float %2141, %2143
  %2145 = fcmp fast ogt float %2134, 0.000000e+00
  %2146 = select i1 %2145, float %2144, float 0.000000e+00
  %2147 = fadd fast float %2146, %2134
  %2148 = fadd fast float %35, 0x3FF3C6EF40000000
  %2149 = call float @dx.op.unary.f32(i32 22, float %2148)  ; Frc(value)
  %2150 = call float @dx.op.unary.f32(i32 23, float %2135)  ; Log(value)
  %2151 = fadd fast float %2150, -7.000000e+00
  %2152 = call float @dx.op.unary.f32(i32 21, float %2151)  ; Exp(value)
  %2153 = fmul fast float %2149, 2.000000e+00
  %2154 = fadd fast float %2153, -1.000000e+00
  %2155 = fmul fast float %2152, %2154
  %2156 = fcmp fast ogt float %2135, 0.000000e+00
  %2157 = select i1 %2156, float %2155, float 0.000000e+00
  %2158 = fadd fast float %2157, %2135
  %2159 = fadd fast float %35, 0x3FFDAA66E0000000
  %2160 = call float @dx.op.unary.f32(i32 22, float %2159)  ; Frc(value)
  %2161 = call float @dx.op.unary.f32(i32 23, float %2136)  ; Log(value)
  %2162 = fadd fast float %2161, -6.000000e+00
  %2163 = call float @dx.op.unary.f32(i32 21, float %2162)  ; Exp(value)
  %2164 = fmul fast float %2160, 2.000000e+00
  %2165 = fadd fast float %2164, -1.000000e+00
  %2166 = fmul fast float %2163, %2165
  %2167 = fcmp fast ogt float %2136, 0.000000e+00
  %2168 = select i1 %2167, float %2166, float 0.000000e+00
  %2169 = fadd fast float %2168, %2136
  %2170 = call float @dx.op.unary.f32(i32 23, float %2101)  ; Log(value)
  %2171 = fadd fast float %2170, -7.000000e+00
  %2172 = call float @dx.op.unary.f32(i32 21, float %2171)  ; Exp(value)
  %2173 = fmul fast float %2172, %2143
  %2174 = fcmp fast ogt float %2101, 0.000000e+00
  %2175 = select i1 %2174, float %2173, float 0.000000e+00
  %2176 = fadd fast float %2175, %2101
  %2177 = call float @dx.op.unary.f32(i32 23, float %2105)  ; Log(value)
  %2178 = fadd fast float %2177, -7.000000e+00
  %2179 = call float @dx.op.unary.f32(i32 21, float %2178)  ; Exp(value)
  %2180 = fmul fast float %2179, %2154
  %2181 = fcmp fast ogt float %2105, 0.000000e+00
  %2182 = select i1 %2181, float %2180, float 0.000000e+00
  %2183 = fadd fast float %2182, %2105
  %2184 = call float @dx.op.unary.f32(i32 23, float %2109)  ; Log(value)
  %2185 = fadd fast float %2184, -6.000000e+00
  %2186 = call float @dx.op.unary.f32(i32 21, float %2185)  ; Exp(value)
  %2187 = fmul fast float %2186, %2165
  %2188 = fcmp fast ogt float %2109, 0.000000e+00
  %2189 = select i1 %2188, float %2187, float 0.000000e+00
  %2190 = fadd fast float %2189, %2109
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %19, i32 %20, i32 %247, float %2147, float %2158, float %2169, float %2147, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %19, i32 %20, i32 %247, float %2176, float %2183, float %2190, float %2176, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2191 = add i32 %18, 1
  %2192 = add i32 %2191, %242
  %2193 = icmp ugt i32 %2192, %169
  br i1 %2193, label %2344, label %2194, !dx.controlflow.hints !34

; <label>:2194                                    ; preds = %2131
  %2195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2196 = extractvalue %dx.types.CBufRet.f32 %2195, 0
  %2197 = fmul fast float %2196, %2112
  %2198 = fmul fast float %2196, %2116
  %2199 = fmul fast float %2196, %2120
  %2200 = call float @dx.op.unary.f32(i32 23, float %2197)  ; Log(value)
  %2201 = fadd fast float %2200, -7.000000e+00
  %2202 = call float @dx.op.unary.f32(i32 21, float %2201)  ; Exp(value)
  %2203 = fmul fast float %2202, %2143
  %2204 = fcmp fast ogt float %2197, 0.000000e+00
  %2205 = select i1 %2204, float %2203, float 0.000000e+00
  %2206 = fadd fast float %2205, %2197
  %2207 = call float @dx.op.unary.f32(i32 23, float %2198)  ; Log(value)
  %2208 = fadd fast float %2207, -7.000000e+00
  %2209 = call float @dx.op.unary.f32(i32 21, float %2208)  ; Exp(value)
  %2210 = fmul fast float %2209, %2154
  %2211 = fcmp fast ogt float %2198, 0.000000e+00
  %2212 = select i1 %2211, float %2210, float 0.000000e+00
  %2213 = fadd fast float %2212, %2198
  %2214 = call float @dx.op.unary.f32(i32 23, float %2199)  ; Log(value)
  %2215 = fadd fast float %2214, -6.000000e+00
  %2216 = call float @dx.op.unary.f32(i32 21, float %2215)  ; Exp(value)
  %2217 = fmul fast float %2216, %2165
  %2218 = fcmp fast ogt float %2199, 0.000000e+00
  %2219 = select i1 %2218, float %2217, float 0.000000e+00
  %2220 = fadd fast float %2219, %2199
  %2221 = call float @dx.op.unary.f32(i32 23, float %2100)  ; Log(value)
  %2222 = fadd fast float %2221, -7.000000e+00
  %2223 = call float @dx.op.unary.f32(i32 21, float %2222)  ; Exp(value)
  %2224 = fmul fast float %2223, %2143
  %2225 = fcmp fast ogt float %2100, 0.000000e+00
  %2226 = select i1 %2225, float %2224, float 0.000000e+00
  %2227 = fadd fast float %2226, %2100
  %2228 = call float @dx.op.unary.f32(i32 23, float %2104)  ; Log(value)
  %2229 = fadd fast float %2228, -7.000000e+00
  %2230 = call float @dx.op.unary.f32(i32 21, float %2229)  ; Exp(value)
  %2231 = fmul fast float %2230, %2154
  %2232 = fcmp fast ogt float %2104, 0.000000e+00
  %2233 = select i1 %2232, float %2231, float 0.000000e+00
  %2234 = fadd fast float %2233, %2104
  %2235 = call float @dx.op.unary.f32(i32 23, float %2108)  ; Log(value)
  %2236 = fadd fast float %2235, -6.000000e+00
  %2237 = call float @dx.op.unary.f32(i32 21, float %2236)  ; Exp(value)
  %2238 = fmul fast float %2237, %2165
  %2239 = fcmp fast ogt float %2108, 0.000000e+00
  %2240 = select i1 %2239, float %2238, float 0.000000e+00
  %2241 = fadd fast float %2240, %2108
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %358, i32 %361, i32 %364, float %2206, float %2213, float %2220, float %2206, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %358, i32 %361, i32 %364, float %2227, float %2234, float %2241, float %2227, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2242 = add i32 %18, 2
  %2243 = add i32 %2242, %242
  %2244 = icmp ugt i32 %2243, %169
  br i1 %2244, label %2344, label %2245, !dx.controlflow.hints !34

; <label>:2245                                    ; preds = %2194
  %2246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2247 = extractvalue %dx.types.CBufRet.f32 %2246, 0
  %2248 = fmul fast float %2247, %2111
  %2249 = fmul fast float %2247, %2115
  %2250 = fmul fast float %2247, %2119
  %2251 = call float @dx.op.unary.f32(i32 23, float %2248)  ; Log(value)
  %2252 = fadd fast float %2251, -7.000000e+00
  %2253 = call float @dx.op.unary.f32(i32 21, float %2252)  ; Exp(value)
  %2254 = fmul fast float %2253, %2143
  %2255 = fcmp fast ogt float %2248, 0.000000e+00
  %2256 = select i1 %2255, float %2254, float 0.000000e+00
  %2257 = fadd fast float %2256, %2248
  %2258 = call float @dx.op.unary.f32(i32 23, float %2249)  ; Log(value)
  %2259 = fadd fast float %2258, -7.000000e+00
  %2260 = call float @dx.op.unary.f32(i32 21, float %2259)  ; Exp(value)
  %2261 = fmul fast float %2260, %2154
  %2262 = fcmp fast ogt float %2249, 0.000000e+00
  %2263 = select i1 %2262, float %2261, float 0.000000e+00
  %2264 = fadd fast float %2263, %2249
  %2265 = call float @dx.op.unary.f32(i32 23, float %2250)  ; Log(value)
  %2266 = fadd fast float %2265, -6.000000e+00
  %2267 = call float @dx.op.unary.f32(i32 21, float %2266)  ; Exp(value)
  %2268 = fmul fast float %2267, %2165
  %2269 = fcmp fast ogt float %2250, 0.000000e+00
  %2270 = select i1 %2269, float %2268, float 0.000000e+00
  %2271 = fadd fast float %2270, %2250
  %2272 = call float @dx.op.unary.f32(i32 23, float %2099)  ; Log(value)
  %2273 = fadd fast float %2272, -7.000000e+00
  %2274 = call float @dx.op.unary.f32(i32 21, float %2273)  ; Exp(value)
  %2275 = fmul fast float %2274, %2143
  %2276 = fcmp fast ogt float %2099, 0.000000e+00
  %2277 = select i1 %2276, float %2275, float 0.000000e+00
  %2278 = fadd fast float %2277, %2099
  %2279 = call float @dx.op.unary.f32(i32 23, float %2103)  ; Log(value)
  %2280 = fadd fast float %2279, -7.000000e+00
  %2281 = call float @dx.op.unary.f32(i32 21, float %2280)  ; Exp(value)
  %2282 = fmul fast float %2281, %2154
  %2283 = fcmp fast ogt float %2103, 0.000000e+00
  %2284 = select i1 %2283, float %2282, float 0.000000e+00
  %2285 = fadd fast float %2284, %2103
  %2286 = call float @dx.op.unary.f32(i32 23, float %2107)  ; Log(value)
  %2287 = fadd fast float %2286, -6.000000e+00
  %2288 = call float @dx.op.unary.f32(i32 21, float %2287)  ; Exp(value)
  %2289 = fmul fast float %2288, %2165
  %2290 = fcmp fast ogt float %2107, 0.000000e+00
  %2291 = select i1 %2290, float %2289, float 0.000000e+00
  %2292 = fadd fast float %2291, %2107
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %357, i32 %360, i32 %363, float %2257, float %2264, float %2271, float %2257, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %357, i32 %360, i32 %363, float %2278, float %2285, float %2292, float %2278, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %2293 = add i32 %18, 3
  %2294 = add i32 %2293, %242
  %2295 = icmp ugt i32 %2294, %169
  br i1 %2295, label %2344, label %2296, !dx.controlflow.hints !34

; <label>:2296                                    ; preds = %2245
  %2297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %17, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2298 = extractvalue %dx.types.CBufRet.f32 %2297, 0
  %2299 = fmul fast float %2298, %2110
  %2300 = fmul fast float %2298, %2114
  %2301 = fmul fast float %2298, %2118
  %2302 = call float @dx.op.unary.f32(i32 23, float %2299)  ; Log(value)
  %2303 = fadd fast float %2302, -7.000000e+00
  %2304 = call float @dx.op.unary.f32(i32 21, float %2303)  ; Exp(value)
  %2305 = fmul fast float %2304, %2143
  %2306 = fcmp fast ogt float %2299, 0.000000e+00
  %2307 = select i1 %2306, float %2305, float 0.000000e+00
  %2308 = fadd fast float %2307, %2299
  %2309 = call float @dx.op.unary.f32(i32 23, float %2300)  ; Log(value)
  %2310 = fadd fast float %2309, -7.000000e+00
  %2311 = call float @dx.op.unary.f32(i32 21, float %2310)  ; Exp(value)
  %2312 = fmul fast float %2311, %2154
  %2313 = fcmp fast ogt float %2300, 0.000000e+00
  %2314 = select i1 %2313, float %2312, float 0.000000e+00
  %2315 = fadd fast float %2314, %2300
  %2316 = call float @dx.op.unary.f32(i32 23, float %2301)  ; Log(value)
  %2317 = fadd fast float %2316, -6.000000e+00
  %2318 = call float @dx.op.unary.f32(i32 21, float %2317)  ; Exp(value)
  %2319 = fmul fast float %2318, %2165
  %2320 = fcmp fast ogt float %2301, 0.000000e+00
  %2321 = select i1 %2320, float %2319, float 0.000000e+00
  %2322 = fadd fast float %2321, %2301
  %2323 = call float @dx.op.unary.f32(i32 23, float %2098)  ; Log(value)
  %2324 = fadd fast float %2323, -7.000000e+00
  %2325 = call float @dx.op.unary.f32(i32 21, float %2324)  ; Exp(value)
  %2326 = fmul fast float %2325, %2143
  %2327 = fcmp fast ogt float %2098, 0.000000e+00
  %2328 = select i1 %2327, float %2326, float 0.000000e+00
  %2329 = fadd fast float %2328, %2098
  %2330 = call float @dx.op.unary.f32(i32 23, float %2102)  ; Log(value)
  %2331 = fadd fast float %2330, -7.000000e+00
  %2332 = call float @dx.op.unary.f32(i32 21, float %2331)  ; Exp(value)
  %2333 = fmul fast float %2332, %2154
  %2334 = fcmp fast ogt float %2102, 0.000000e+00
  %2335 = select i1 %2334, float %2333, float 0.000000e+00
  %2336 = fadd fast float %2335, %2102
  %2337 = call float @dx.op.unary.f32(i32 23, float %2106)  ; Log(value)
  %2338 = fadd fast float %2337, -6.000000e+00
  %2339 = call float @dx.op.unary.f32(i32 21, float %2338)  ; Exp(value)
  %2340 = fmul fast float %2339, %2165
  %2341 = fcmp fast ogt float %2106, 0.000000e+00
  %2342 = select i1 %2341, float %2340, float 0.000000e+00
  %2343 = fadd fast float %2342, %2106
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %356, i32 %359, i32 %362, float %2308, float %2315, float %2322, float %2308, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %356, i32 %359, i32 %362, float %2329, float %2336, float %2343, float %2329, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2344

; <label>:2344                                    ; preds = %2296, %2245, %2194, %2131, %2073
  %2345 = add i32 %242, 4
  %2346 = icmp ugt i32 %2345, %172
  br i1 %2346, label %2347, label %175, !llvm.loop !35

; <label>:2347                                    ; preds = %2344
  br label %2348

; <label>:2348                                    ; preds = %2347, %0
  %2349 = phi i32 [ 0, %0 ], [ %2122, %2347 ]
  %2350 = phi i32 [ 0, %0 ], [ %2123, %2347 ]
  %2351 = phi i32 [ 0, %0 ], [ %2124, %2347 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2352 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %21
  store i32 %2349, i32 addrspace(3)* %2352, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2353 = and i32 %21, 63
  %2354 = icmp ult i32 %2353, 32
  br i1 %2354, label %2355, label %2361, !dx.controlflow.hints !41

; <label>:2355                                    ; preds = %2348
  %2356 = add i32 %21, 32
  %2357 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2356
  %2358 = load i32, i32 addrspace(3)* %2357, align 4, !tbaa !37
  %2359 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2360 = add i32 %2359, %2358
  store i32 %2360, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2361

; <label>:2361                                    ; preds = %2355, %2348
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2362 = icmp ult i32 %2353, 16
  br i1 %2362, label %2363, label %2369, !dx.controlflow.hints !42

; <label>:2363                                    ; preds = %2361
  %2364 = add i32 %21, 16
  %2365 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2364
  %2366 = load i32, i32 addrspace(3)* %2365, align 4, !tbaa !37
  %2367 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2368 = add i32 %2367, %2366
  store i32 %2368, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2369

; <label>:2369                                    ; preds = %2363, %2361
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2370 = icmp ult i32 %2353, 8
  br i1 %2370, label %2371, label %2377, !dx.controlflow.hints !43

; <label>:2371                                    ; preds = %2369
  %2372 = add i32 %21, 8
  %2373 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2372
  %2374 = load i32, i32 addrspace(3)* %2373, align 4, !tbaa !37
  %2375 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2376 = add i32 %2375, %2374
  store i32 %2376, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2377

; <label>:2377                                    ; preds = %2371, %2369
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2378 = icmp ult i32 %2353, 4
  br i1 %2378, label %2379, label %2385, !dx.controlflow.hints !44

; <label>:2379                                    ; preds = %2377
  %2380 = add i32 %21, 4
  %2381 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2380
  %2382 = load i32, i32 addrspace(3)* %2381, align 4, !tbaa !37
  %2383 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2384 = add i32 %2383, %2382
  store i32 %2384, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2385

; <label>:2385                                    ; preds = %2379, %2377
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2386 = icmp ult i32 %2353, 2
  br i1 %2386, label %2387, label %2393, !dx.controlflow.hints !45

; <label>:2387                                    ; preds = %2385
  %2388 = add i32 %21, 2
  %2389 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2388
  %2390 = load i32, i32 addrspace(3)* %2389, align 4, !tbaa !37
  %2391 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2392 = add i32 %2391, %2390
  store i32 %2392, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2393

; <label>:2393                                    ; preds = %2387, %2385
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %2394 = icmp eq i32 %2353, 0
  br i1 %2394, label %2395, label %2401, !dx.controlflow.hints !46

; <label>:2395                                    ; preds = %2393
  %2396 = add i32 %21, 1
  %2397 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2396
  %2398 = load i32, i32 addrspace(3)* %2397, align 4, !tbaa !37
  %2399 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2400 = add i32 %2399, %2398
  store i32 %2400, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2401

; <label>:2401                                    ; preds = %2395, %2393
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2402 = and i32 %21, -64
  %2403 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2402
  %2404 = load i32, i32 addrspace(3)* %2403, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2350, i32 addrspace(3)* %2352, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2354, label %2405, label %2411, !dx.controlflow.hints !41

; <label>:2405                                    ; preds = %2401
  %2406 = add i32 %21, 32
  %2407 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2406
  %2408 = load i32, i32 addrspace(3)* %2407, align 4, !tbaa !37
  %2409 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2410 = add i32 %2409, %2408
  store i32 %2410, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2411

; <label>:2411                                    ; preds = %2405, %2401
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2362, label %2412, label %2418, !dx.controlflow.hints !42

; <label>:2412                                    ; preds = %2411
  %2413 = add i32 %21, 16
  %2414 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2413
  %2415 = load i32, i32 addrspace(3)* %2414, align 4, !tbaa !37
  %2416 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2417 = add i32 %2416, %2415
  store i32 %2417, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2418

; <label>:2418                                    ; preds = %2412, %2411
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2370, label %2419, label %2425, !dx.controlflow.hints !43

; <label>:2419                                    ; preds = %2418
  %2420 = add i32 %21, 8
  %2421 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2420
  %2422 = load i32, i32 addrspace(3)* %2421, align 4, !tbaa !37
  %2423 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2424 = add i32 %2423, %2422
  store i32 %2424, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2425

; <label>:2425                                    ; preds = %2419, %2418
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2378, label %2426, label %2432, !dx.controlflow.hints !44

; <label>:2426                                    ; preds = %2425
  %2427 = add i32 %21, 4
  %2428 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2427
  %2429 = load i32, i32 addrspace(3)* %2428, align 4, !tbaa !37
  %2430 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2431 = add i32 %2430, %2429
  store i32 %2431, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2432

; <label>:2432                                    ; preds = %2426, %2425
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2386, label %2433, label %2439, !dx.controlflow.hints !45

; <label>:2433                                    ; preds = %2432
  %2434 = add i32 %21, 2
  %2435 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2434
  %2436 = load i32, i32 addrspace(3)* %2435, align 4, !tbaa !37
  %2437 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2438 = add i32 %2437, %2436
  store i32 %2438, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2439

; <label>:2439                                    ; preds = %2433, %2432
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2394, label %2440, label %2446, !dx.controlflow.hints !46

; <label>:2440                                    ; preds = %2439
  %2441 = add i32 %21, 1
  %2442 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2441
  %2443 = load i32, i32 addrspace(3)* %2442, align 4, !tbaa !37
  %2444 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2445 = add i32 %2444, %2443
  store i32 %2445, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2446

; <label>:2446                                    ; preds = %2440, %2439
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2447 = load i32, i32 addrspace(3)* %2403, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  store i32 %2351, i32 addrspace(3)* %2352, align 4, !tbaa !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2354, label %2448, label %2454, !dx.controlflow.hints !41

; <label>:2448                                    ; preds = %2446
  %2449 = add i32 %21, 32
  %2450 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2449
  %2451 = load i32, i32 addrspace(3)* %2450, align 4, !tbaa !37
  %2452 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2453 = add i32 %2452, %2451
  store i32 %2453, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2454

; <label>:2454                                    ; preds = %2448, %2446
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2362, label %2455, label %2461, !dx.controlflow.hints !42

; <label>:2455                                    ; preds = %2454
  %2456 = add i32 %21, 16
  %2457 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2456
  %2458 = load i32, i32 addrspace(3)* %2457, align 4, !tbaa !37
  %2459 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2460 = add i32 %2459, %2458
  store i32 %2460, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2461

; <label>:2461                                    ; preds = %2455, %2454
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2370, label %2462, label %2468, !dx.controlflow.hints !43

; <label>:2462                                    ; preds = %2461
  %2463 = add i32 %21, 8
  %2464 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2463
  %2465 = load i32, i32 addrspace(3)* %2464, align 4, !tbaa !37
  %2466 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2467 = add i32 %2466, %2465
  store i32 %2467, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2468

; <label>:2468                                    ; preds = %2462, %2461
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2378, label %2469, label %2475, !dx.controlflow.hints !44

; <label>:2469                                    ; preds = %2468
  %2470 = add i32 %21, 4
  %2471 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2470
  %2472 = load i32, i32 addrspace(3)* %2471, align 4, !tbaa !37
  %2473 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2474 = add i32 %2473, %2472
  store i32 %2474, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2475

; <label>:2475                                    ; preds = %2469, %2468
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2386, label %2476, label %2482, !dx.controlflow.hints !45

; <label>:2476                                    ; preds = %2475
  %2477 = add i32 %21, 2
  %2478 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2477
  %2479 = load i32, i32 addrspace(3)* %2478, align 4, !tbaa !37
  %2480 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2481 = add i32 %2480, %2479
  store i32 %2481, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2482

; <label>:2482                                    ; preds = %2476, %2475
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %2394, label %2483, label %2489, !dx.controlflow.hints !46

; <label>:2483                                    ; preds = %2482
  %2484 = add i32 %21, 1
  %2485 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %2484
  %2486 = load i32, i32 addrspace(3)* %2485, align 4, !tbaa !37
  %2487 = load i32, i32 addrspace(3)* %2352, align 4, !tbaa !37
  %2488 = add i32 %2487, %2486
  store i32 %2488, i32 addrspace(3)* %2352, align 4, !tbaa !37
  br label %2489

; <label>:2489                                    ; preds = %2483, %2482
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2490 = load i32, i32 addrspace(3)* %2403, align 4, !tbaa !37
  %2491 = icmp eq i32 %21, 0
  br i1 %2491, label %2492, label %2501, !dx.controlflow.hints !47

; <label>:2492                                    ; preds = %2489
  br i1 %24, label %2493, label %2497, !dx.controlflow.hints !48

; <label>:2493                                    ; preds = %2492
  %2494 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 12, i32 undef, i32 %2404)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2495 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 16, i32 undef, i32 %2447)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2496 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 20, i32 undef, i32 %2490)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %2501

; <label>:2497                                    ; preds = %2492
  %2498 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 0, i32 undef, i32 %2404)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2499 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 4, i32 undef, i32 %2447)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %2500 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 8, i32 undef, i32 %2490)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %2501

; <label>:2501                                    ; preds = %2497, %2493, %2489
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
!dx.entryPoints = !{!28}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !22, !25}
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
!22 = !{!23, !24}
!23 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!24 = !{i32 1, %PerScatteringConstBuffer_decl* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!25 = !{!26, !27}
!26 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!27 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!28 = !{void ()* @cs_volumetric_forwardplus_accumulate_water, !"cs_volumetric_forwardplus_accumulate_water", null, !4, !29}
!29 = !{i32 0, i64 272, i32 4, !30}
!30 = !{i32 1, i32 8, i32 8}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !36}
!36 = !{!"llvm.loop.unroll.disable"}
!37 = !{!38, !38, i64 0}
!38 = !{!"int", !39, i64 0}
!39 = !{!"omnipotent char", !40, i64 0}
!40 = !{!"Simple C/C++ TBAA"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}

