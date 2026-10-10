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
; shader hash: b2bdf8c0aa97430043edf7fbdbeacb0e
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
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
; Resource bind info for 
; {
;
;   [4 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb3     1
;                                   cbuffer      NA          NA     CB1            cb4     1
;                                   sampler      NA          NA      S0             s1     1
;                                   sampler      NA          NA      S1             s2     1
;                                   texture     f32     2darray      T0            t50     1
;                                   texture    byte         r/o      T1            t19     1
;                                   texture    byte         r/o      T2            t12     1
;                                   texture  struct         r/o      T3            t29     1
;                                   texture     f32          2d      T4            t51     1
;                                   texture     f32          2d      T5            t52     1
;                                   texture     f32          2d      T6            t53     1
;                                       UAV    byte         r/w      U0             u0     1
;                                       UAV    byte         r/w      U1             u1     1
;                                       UAV  struct         r/w      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%VolumetricFillIndirect_decl = type { %struct.VolumetricFillIndirect }
%struct.VolumetricFillIndirect = type { i32, i32, i32, i32, float, float, float, i32 }
%struct.SamplerState = type { i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?waveOffset@@3IA" = external addrspace(3) global i32, align 4

define void @cs_fill_indirect_scattering() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 53, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 29, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %16 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %17 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %20 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %23 = icmp ult i32 %15, %19
  %24 = icmp ult i32 %16, %20
  %25 = icmp ult i32 %17, %22
  %26 = and i1 %23, %24
  %27 = and i1 %26, %25
  %28 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.i32 %28, 2
  %30 = extractvalue %dx.types.CBufRet.i32 %28, 3
  %31 = call i32 @dx.op.tertiary.i32(i32 49, i32 %16, i32 %29, i32 %15)  ; UMad(a,b,c)
  %32 = call i32 @dx.op.tertiary.i32(i32 49, i32 %17, i32 %30, i32 %31)  ; UMad(a,b,c)
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %32, i32 0)  ; BufferLoad(srv,index,wot)
  br label %34

; <label>:34                                      ; preds = %68, %0
  %35 = phi float [ 0.000000e+00, %0 ], [ %65, %68 ]
  %36 = phi i32 [ 0, %0 ], [ %69, %68 ]
  br label %37

; <label>:37                                      ; preds = %37, %34
  %38 = phi float [ %35, %34 ], [ %65, %37 ]
  %39 = phi i32 [ 0, %34 ], [ %66, %37 ]
  %40 = shl i32 %15, 2
  %41 = shl i32 %16, 2
  %42 = add i32 %40, -2
  %43 = add i32 %41, -2
  %44 = shl i32 %39, 1
  %45 = shl i32 %36, 1
  %46 = add i32 %42, %44
  %47 = add i32 %43, %45
  %48 = or i32 %46, 1
  %49 = or i32 %47, 1
  %50 = sitofp i32 %48 to float
  %51 = sitofp i32 %49 to float
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %55 = fmul fast float %50, %53
  %56 = fmul fast float %54, %51
  %57 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %10, %dx.types.Handle %11, float %55, float %56, float 0.000000e+00, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %58 = extractvalue %dx.types.ResRet.f32 %57, 0
  %59 = extractvalue %dx.types.ResRet.f32 %57, 1
  %60 = extractvalue %dx.types.ResRet.f32 %57, 2
  %61 = extractvalue %dx.types.ResRet.f32 %57, 3
  %62 = call float @dx.op.binary.f32(i32 35, float %59, float %60)  ; FMax(a,b)
  %63 = call float @dx.op.binary.f32(i32 35, float %58, float %62)  ; FMax(a,b)
  %64 = call float @dx.op.binary.f32(i32 35, float %63, float %61)  ; FMax(a,b)
  %65 = call float @dx.op.binary.f32(i32 35, float %38, float %64)  ; FMax(a,b)
  %66 = add nuw nsw i32 %39, 1
  %67 = icmp eq i32 %66, 4
  br i1 %67, label %68, label %37

; <label>:68                                      ; preds = %37
  %69 = add nuw nsw i32 %36, 1
  %70 = icmp eq i32 %69, 4
  br i1 %70, label %71, label %34

; <label>:71                                      ; preds = %68
  %72 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %73 = extractvalue %dx.types.ResRet.i32 %33, 0
  %74 = fmul fast float %65, 2.550000e+02
  %75 = fadd fast float %74, 0x3F70101020000000
  %76 = fptoui float %75 to i32
  %77 = add i32 %76, 3
  %78 = lshr i32 %77, 2
  %79 = add nuw nsw i32 %78, 1
  %80 = icmp ule i32 %17, %79
  %81 = and i32 %73, 63
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.i32 %84, 0
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %127, label %87

; <label>:87                                      ; preds = %71
  br label %88

; <label>:88                                      ; preds = %121, %87
  %89 = phi i32 [ %122, %121 ], [ %83, %87 ]
  %90 = phi i32 [ %124, %121 ], [ 0, %87 ]
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 0
  %93 = call i32 @dx.op.tertiary.i32(i32 49, i32 %32, i32 %92, i32 %90)  ; UMad(a,b,c)
  %94 = shl i32 %93, 2
  %95 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %94, i32 undef)  ; BufferLoad(srv,index,wot)
  %96 = extractvalue %dx.types.ResRet.i32 %95, 0
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %121, label %98

; <label>:98                                      ; preds = %88
  br label %99

; <label>:99                                      ; preds = %99, %98
  %100 = phi i32 [ %116, %99 ], [ %89, %98 ]
  %101 = phi i32 [ %118, %99 ], [ 0, %98 ]
  %102 = phi i32 [ %108, %99 ], [ %96, %98 ]
  %103 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %102)  ; FirstbitLo(value)
  %104 = shl i32 %90, 5
  %105 = add i32 %103, %104
  %106 = and i32 %103, 31
  %107 = shl i32 1, %106
  %108 = xor i32 %107, %102
  %109 = mul i32 %105, 112
  %110 = add i32 %109, 28
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = and i32 %112, 1073741824
  %114 = icmp eq i32 %113, 0
  %115 = lshr exact i32 %113, 29
  %116 = or i32 %115, %100
  %117 = select i1 %114, i32 0, i32 %107
  %118 = or i32 %101, %117
  %119 = icmp eq i32 %102, %107
  br i1 %119, label %120, label %99

; <label>:120                                     ; preds = %99
  br label %121

; <label>:121                                     ; preds = %120, %88
  %122 = phi i32 [ %89, %88 ], [ %116, %120 ]
  %123 = phi i32 [ 0, %88 ], [ %118, %120 ]
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %93, i32 0, i32 %123, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %124 = add nuw i32 %90, 1
  %125 = icmp eq i32 %124, %85
  br i1 %125, label %126, label %88, !llvm.loop !28

; <label>:126                                     ; preds = %121
  br label %127

; <label>:127                                     ; preds = %126, %71
  %128 = phi i32 [ %83, %71 ], [ %122, %126 ]
  %129 = uitofp i32 %15 to float
  %130 = fadd fast float %129, 1.000000e+00
  %131 = uitofp i32 %16 to float
  %132 = uitofp i32 %17 to float
  %133 = fmul fast float %132, 4.000000e+00
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = fmul fast float %133, %139
  %141 = call float @dx.op.unary.f32(i32 21, float %140)  ; Exp(value)
  %142 = fmul fast float %141, %138
  %143 = fsub fast float 4.000000e+00, %138
  %144 = fadd fast float %143, %142
  %145 = fmul fast float %130, 8.000000e+00
  %146 = fmul fast float %145, %135
  %147 = fmul fast float %131, 8.000000e+00
  %148 = fmul fast float %147, %136
  %149 = fsub fast float 1.000000e+00, %146
  %150 = fsub fast float 1.000000e+00, %148
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 2
  %155 = fmul fast float %152, %149
  %156 = fmul fast float %153, %149
  %157 = fmul fast float %154, %149
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 0
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 1
  %161 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %162 = fmul fast float %159, %150
  %163 = fmul fast float %160, %150
  %164 = fmul fast float %161, %150
  %165 = fadd fast float %162, %155
  %166 = fadd fast float %163, %156
  %167 = fadd fast float %164, %157
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 0
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %172 = fadd fast float %165, %169
  %173 = fadd fast float %166, %170
  %174 = fadd fast float %167, %171
  %175 = fadd fast float %131, 1.000000e+00
  %176 = fmul fast float %129, 8.000000e+00
  %177 = fmul fast float %176, %135
  %178 = fmul fast float %175, 8.000000e+00
  %179 = fmul fast float %178, %136
  %180 = fsub fast float 1.000000e+00, %177
  %181 = fsub fast float 1.000000e+00, %179
  %182 = fmul fast float %152, %180
  %183 = fmul fast float %153, %180
  %184 = fmul fast float %154, %180
  %185 = fmul fast float %159, %181
  %186 = fmul fast float %160, %181
  %187 = fmul fast float %161, %181
  %188 = fadd fast float %185, %182
  %189 = fadd fast float %186, %183
  %190 = fadd fast float %187, %184
  %191 = fadd fast float %188, %169
  %192 = fadd fast float %189, %170
  %193 = fadd fast float %190, %171
  %194 = fmul fast float %191, %144
  %195 = fmul fast float %192, %144
  %196 = fmul fast float %193, %144
  %197 = fadd fast float %191, %172
  %198 = fmul fast float %144, %197
  %199 = fadd fast float %192, %173
  %200 = fmul fast float %144, %199
  %201 = fadd fast float %193, %174
  %202 = fmul fast float %144, %201
  %203 = fmul fast float %198, 5.000000e-01
  %204 = fmul fast float %200, 5.000000e-01
  %205 = fmul fast float %202, 5.000000e-01
  %206 = fsub fast float %203, %194
  %207 = fsub fast float %204, %195
  %208 = fsub fast float %205, %196
  %209 = call float @dx.op.dot3.f32(i32 55, float %206, float %207, float %208, float %206, float %207, float %208)  ; Dot3(ax,ay,az,bx,by,bz)
  %210 = call float @dx.op.unary.f32(i32 25, float %209)  ; Rsqrt(value)
  %211 = fmul fast float %210, %209
  %212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 59)  ; CBufferLoadLegacy(handle,regIndex)
  %213 = extractvalue %dx.types.CBufRet.f32 %212, 0
  %214 = extractvalue %dx.types.CBufRet.f32 %212, 1
  %215 = extractvalue %dx.types.CBufRet.f32 %212, 2
  %216 = extractvalue %dx.types.CBufRet.f32 %212, 3
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 60)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %219 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %220 = extractvalue %dx.types.CBufRet.f32 %217, 2
  %221 = extractvalue %dx.types.CBufRet.f32 %217, 3
  %222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 61)  ; CBufferLoadLegacy(handle,regIndex)
  %223 = extractvalue %dx.types.CBufRet.f32 %222, 0
  %224 = extractvalue %dx.types.CBufRet.f32 %222, 1
  %225 = extractvalue %dx.types.CBufRet.f32 %222, 2
  %226 = extractvalue %dx.types.CBufRet.f32 %222, 3
  %227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %228 = extractvalue %dx.types.CBufRet.f32 %227, 0
  %229 = extractvalue %dx.types.CBufRet.f32 %227, 1
  %230 = extractvalue %dx.types.CBufRet.f32 %227, 2
  %231 = fmul fast float %228, %211
  %232 = fmul fast float %229, %211
  %233 = fmul fast float %230, %211
  %234 = fadd fast float %231, %203
  %235 = fadd fast float %232, %204
  %236 = fadd fast float %233, %205
  %237 = fmul fast float %234, %213
  %238 = call float @dx.op.tertiary.f32(i32 46, float %235, float %214, float %237)  ; FMad(a,b,c)
  %239 = call float @dx.op.tertiary.f32(i32 46, float %236, float %215, float %238)  ; FMad(a,b,c)
  %240 = fadd fast float %239, %216
  %241 = fmul fast float %234, %218
  %242 = call float @dx.op.tertiary.f32(i32 46, float %235, float %219, float %241)  ; FMad(a,b,c)
  %243 = call float @dx.op.tertiary.f32(i32 46, float %236, float %220, float %242)  ; FMad(a,b,c)
  %244 = fadd fast float %243, %221
  %245 = fmul fast float %234, %223
  %246 = call float @dx.op.tertiary.f32(i32 46, float %235, float %224, float %245)  ; FMad(a,b,c)
  %247 = call float @dx.op.tertiary.f32(i32 46, float %236, float %225, float %246)  ; FMad(a,b,c)
  %248 = fadd fast float %247, %226
  %249 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %13, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %250 = extractvalue %dx.types.CBufRet.i32 %249, 0
  %251 = shl i32 %17, 2
  %252 = add i32 %251, 4
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %139, %253
  %255 = call float @dx.op.unary.f32(i32 21, float %254)  ; Exp(value)
  %256 = uitofp i32 %251 to float
  %257 = fmul fast float %139, %256
  %258 = call float @dx.op.unary.f32(i32 21, float %257)  ; Exp(value)
  %259 = fsub fast float %255, %258
  %260 = fmul fast float %138, %259
  %261 = fmul fast float %211, 2.000000e+00
  %262 = call float @dx.op.binary.f32(i32 35, float %260, float %261)  ; FMax(a,b)
  %263 = fmul fast float %240, 2.000000e+00
  %264 = fmul fast float %244, 2.000000e+00
  %265 = fadd fast float %263, -1.000000e+00
  %266 = fadd fast float %264, -1.000000e+00
  %267 = call float @dx.op.unary.f32(i32 6, float %265)  ; FAbs(value)
  %268 = call float @dx.op.unary.f32(i32 6, float %266)  ; FAbs(value)
  %269 = call float @dx.op.binary.f32(i32 35, float %267, float %268)  ; FMax(a,b)
  %270 = fcmp fast olt float %269, 1.000000e+00
  br i1 %270, label %271, label %312, !dx.controlflow.hints !30

; <label>:271                                     ; preds = %127
  %272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %273 = extractvalue %dx.types.CBufRet.f32 %272, 0
  %274 = fmul fast float %273, %262
  %275 = call float @dx.op.unary.f32(i32 23, float %274)  ; Log(value)
  %276 = call float @dx.op.unary.f32(i32 28, float %275)  ; Round_pi(value)
  %277 = fptoui float %276 to i32
  %278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %279 = extractvalue %dx.types.CBufRet.f32 %278, 0
  %280 = extractvalue %dx.types.CBufRet.f32 %278, 1
  %281 = fptoui float %279 to i32
  %282 = fptoui float %280 to i32
  %283 = and i32 %277, 31
  %284 = lshr i32 %281, %283
  %285 = lshr i32 %282, %283
  %286 = uitofp i32 %284 to float
  %287 = uitofp i32 %285 to float
  %288 = fdiv fast float 1.000000e+00, %286
  %289 = fdiv fast float 1.000000e+00, %287
  %290 = add i32 %277, -1
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %288, 1.953125e-03
  %293 = fmul fast float %289, 1.953125e-03
  %294 = fmul fast float %288, 5.000000e-01
  %295 = fmul fast float %289, 5.000000e-01
  %296 = fsub fast float %240, %294
  %297 = fadd fast float %295, %244
  %298 = fadd fast float %296, %292
  %299 = fadd fast float %297, %293
  %300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %298, float %299, float undef, float undef, i32 0, i32 0, i32 undef, float %291)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %301 = extractvalue %dx.types.ResRet.f32 %300, 0
  %302 = fadd fast float %294, %240
  %303 = fadd fast float %302, %292
  %304 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %303, float %299, float undef, float undef, i32 0, i32 0, i32 undef, float %291)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %305 = extractvalue %dx.types.ResRet.f32 %304, 0
  %306 = fsub fast float %244, %295
  %307 = fadd fast float %306, %293
  %308 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %303, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float %291)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %309 = extractvalue %dx.types.ResRet.f32 %308, 0
  %310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %12, float %298, float %307, float undef, float undef, i32 0, i32 0, i32 undef, float %291)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %311 = extractvalue %dx.types.ResRet.f32 %310, 0
  br label %432

; <label>:312                                     ; preds = %127
  %313 = icmp eq i32 %250, 0
  br i1 %313, label %432, label %314, !dx.controlflow.hints !31

; <label>:314                                     ; preds = %312
  %315 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 68)  ; CBufferLoadLegacy(handle,regIndex)
  %316 = extractvalue %dx.types.CBufRet.f32 %315, 0
  %317 = extractvalue %dx.types.CBufRet.f32 %315, 1
  %318 = extractvalue %dx.types.CBufRet.f32 %315, 3
  %319 = fmul fast float %318, %240
  %320 = fmul fast float %318, %244
  %321 = fadd fast float %319, %316
  %322 = fadd fast float %320, %317
  %323 = fmul fast float %321, 2.000000e+00
  %324 = fmul fast float %322, 2.000000e+00
  %325 = fadd fast float %323, -1.000000e+00
  %326 = fadd fast float %324, -1.000000e+00
  %327 = call float @dx.op.unary.f32(i32 6, float %325)  ; FAbs(value)
  %328 = call float @dx.op.unary.f32(i32 6, float %326)  ; FAbs(value)
  %329 = call float @dx.op.binary.f32(i32 35, float %327, float %328)  ; FMax(a,b)
  %330 = fcmp fast olt float %329, 1.000000e+00
  br i1 %330, label %331, label %372, !dx.controlflow.hints !32

; <label>:331                                     ; preds = %314
  %332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %333 = extractvalue %dx.types.CBufRet.f32 %332, 1
  %334 = fmul fast float %333, %262
  %335 = call float @dx.op.unary.f32(i32 23, float %334)  ; Log(value)
  %336 = call float @dx.op.unary.f32(i32 28, float %335)  ; Round_pi(value)
  %337 = fptoui float %336 to i32
  %338 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %339 = extractvalue %dx.types.CBufRet.f32 %338, 0
  %340 = extractvalue %dx.types.CBufRet.f32 %338, 1
  %341 = fptoui float %339 to i32
  %342 = fptoui float %340 to i32
  %343 = and i32 %337, 31
  %344 = lshr i32 %341, %343
  %345 = lshr i32 %342, %343
  %346 = uitofp i32 %344 to float
  %347 = uitofp i32 %345 to float
  %348 = fdiv fast float 1.000000e+00, %346
  %349 = fdiv fast float 1.000000e+00, %347
  %350 = add i32 %337, -1
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %348, 1.953125e-03
  %353 = fmul fast float %349, 1.953125e-03
  %354 = fmul fast float %348, 5.000000e-01
  %355 = fmul fast float %349, 5.000000e-01
  %356 = fsub fast float %321, %354
  %357 = fadd fast float %355, %322
  %358 = fadd fast float %356, %352
  %359 = fadd fast float %357, %353
  %360 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %358, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float %351)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %361 = extractvalue %dx.types.ResRet.f32 %360, 0
  %362 = fadd fast float %354, %321
  %363 = fadd fast float %362, %352
  %364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %363, float %359, float undef, float undef, i32 0, i32 0, i32 undef, float %351)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = fsub fast float %322, %355
  %367 = fadd fast float %366, %353
  %368 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %363, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float %351)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %369 = extractvalue %dx.types.ResRet.f32 %368, 0
  %370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %5, %dx.types.Handle %12, float %358, float %367, float undef, float undef, i32 0, i32 0, i32 undef, float %351)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  br label %432

; <label>:372                                     ; preds = %314
  %373 = icmp ugt i32 %250, 1
  br i1 %373, label %374, label %432, !dx.controlflow.hints !33

; <label>:374                                     ; preds = %372
  %375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 69)  ; CBufferLoadLegacy(handle,regIndex)
  %376 = extractvalue %dx.types.CBufRet.f32 %375, 0
  %377 = extractvalue %dx.types.CBufRet.f32 %375, 1
  %378 = extractvalue %dx.types.CBufRet.f32 %375, 3
  %379 = fmul fast float %378, %240
  %380 = fmul fast float %378, %244
  %381 = fadd fast float %379, %376
  %382 = fadd fast float %380, %377
  %383 = fmul fast float %381, 2.000000e+00
  %384 = fmul fast float %382, 2.000000e+00
  %385 = fadd fast float %383, -1.000000e+00
  %386 = fadd fast float %384, -1.000000e+00
  %387 = call float @dx.op.unary.f32(i32 6, float %385)  ; FAbs(value)
  %388 = call float @dx.op.unary.f32(i32 6, float %386)  ; FAbs(value)
  %389 = call float @dx.op.binary.f32(i32 35, float %387, float %388)  ; FMax(a,b)
  %390 = fcmp fast olt float %389, 1.000000e+00
  br i1 %390, label %391, label %432, !dx.controlflow.hints !34

; <label>:391                                     ; preds = %374
  %392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %13, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %393 = extractvalue %dx.types.CBufRet.f32 %392, 2
  %394 = fmul fast float %393, %262
  %395 = call float @dx.op.unary.f32(i32 23, float %394)  ; Log(value)
  %396 = call float @dx.op.unary.f32(i32 28, float %395)  ; Round_pi(value)
  %397 = fptoui float %396 to i32
  %398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %14, i32 79)  ; CBufferLoadLegacy(handle,regIndex)
  %399 = extractvalue %dx.types.CBufRet.f32 %398, 0
  %400 = extractvalue %dx.types.CBufRet.f32 %398, 1
  %401 = fptoui float %399 to i32
  %402 = fptoui float %400 to i32
  %403 = and i32 %397, 31
  %404 = lshr i32 %401, %403
  %405 = lshr i32 %402, %403
  %406 = uitofp i32 %404 to float
  %407 = uitofp i32 %405 to float
  %408 = fdiv fast float 1.000000e+00, %406
  %409 = fdiv fast float 1.000000e+00, %407
  %410 = add i32 %397, -1
  %411 = uitofp i32 %410 to float
  %412 = fmul fast float %408, 1.953125e-03
  %413 = fmul fast float %409, 1.953125e-03
  %414 = fmul fast float %408, 5.000000e-01
  %415 = fmul fast float %409, 5.000000e-01
  %416 = fsub fast float %381, %414
  %417 = fadd fast float %415, %382
  %418 = fadd fast float %416, %412
  %419 = fadd fast float %417, %413
  %420 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %418, float %419, float undef, float undef, i32 0, i32 0, i32 undef, float %411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %421 = extractvalue %dx.types.ResRet.f32 %420, 0
  %422 = fadd fast float %414, %381
  %423 = fadd fast float %422, %412
  %424 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %423, float %419, float undef, float undef, i32 0, i32 0, i32 undef, float %411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %425 = extractvalue %dx.types.ResRet.f32 %424, 0
  %426 = fsub fast float %382, %415
  %427 = fadd fast float %426, %413
  %428 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %423, float %427, float undef, float undef, i32 0, i32 0, i32 undef, float %411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %12, float %418, float %427, float undef, float undef, i32 0, i32 0, i32 undef, float %411)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %431 = extractvalue %dx.types.ResRet.f32 %430, 0
  br label %432

; <label>:432                                     ; preds = %391, %374, %372, %331, %312, %271
  %433 = phi float [ %301, %271 ], [ %361, %331 ], [ %421, %391 ], [ 0.000000e+00, %374 ], [ 0.000000e+00, %372 ], [ 0.000000e+00, %312 ]
  %434 = phi float [ %305, %271 ], [ %365, %331 ], [ %425, %391 ], [ 0.000000e+00, %374 ], [ 0.000000e+00, %372 ], [ 0.000000e+00, %312 ]
  %435 = phi float [ %309, %271 ], [ %369, %331 ], [ %429, %391 ], [ 0.000000e+00, %374 ], [ 0.000000e+00, %372 ], [ 0.000000e+00, %312 ]
  %436 = phi float [ %311, %271 ], [ %371, %331 ], [ %431, %391 ], [ 0.000000e+00, %374 ], [ 0.000000e+00, %372 ], [ 0.000000e+00, %312 ]
  %437 = call float @dx.op.binary.f32(i32 36, float %434, float %435)  ; FMin(a,b)
  %438 = call float @dx.op.binary.f32(i32 36, float %433, float %437)  ; FMin(a,b)
  %439 = call float @dx.op.binary.f32(i32 36, float %438, float %436)  ; FMin(a,b)
  %440 = fcmp fast ogt float %248, %439
  %441 = or i32 %128, 4
  %442 = select i1 %440, i32 %441, i32 %128
  %443 = and i1 %80, %27
  %444 = select i1 %443, i32 %442, i32 0
  %445 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %446 = extractvalue %dx.types.CBufRet.i32 %445, 3
  %447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %14, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.i32 %447, 1
  %449 = mul i32 %448, %446
  %450 = shl i32 %17, 16
  %451 = shl i32 %16, 8
  %452 = or i32 %451, %15
  %453 = or i32 %452, %450
  %454 = icmp eq i32 %444, 0
  %455 = and i1 %443, %454
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %456 = and i32 %72, 31
  %457 = shl i32 1, %456
  %458 = select i1 %455, i32 %457, i32 0
  %459 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %72
  store i32 %458, i32 addrspace(3)* %459, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %460 = icmp ult i32 %456, 16
  br i1 %460, label %461, label %467, !dx.controlflow.hints !39

; <label>:461                                     ; preds = %432
  %462 = add i32 %72, 16
  %463 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %462
  %464 = load i32, i32 addrspace(3)* %463, align 4, !tbaa !35
  %465 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %466 = or i32 %465, %464
  store i32 %466, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %467

; <label>:467                                     ; preds = %461, %432
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %468 = icmp ult i32 %456, 8
  br i1 %468, label %469, label %475, !dx.controlflow.hints !40

; <label>:469                                     ; preds = %467
  %470 = add i32 %72, 8
  %471 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %470
  %472 = load i32, i32 addrspace(3)* %471, align 4, !tbaa !35
  %473 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %474 = or i32 %473, %472
  store i32 %474, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %475

; <label>:475                                     ; preds = %469, %467
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %476 = icmp ult i32 %456, 4
  br i1 %476, label %477, label %483, !dx.controlflow.hints !41

; <label>:477                                     ; preds = %475
  %478 = add i32 %72, 4
  %479 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %478
  %480 = load i32, i32 addrspace(3)* %479, align 4, !tbaa !35
  %481 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %482 = or i32 %481, %480
  store i32 %482, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %483

; <label>:483                                     ; preds = %477, %475
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %484 = icmp ult i32 %456, 2
  br i1 %484, label %485, label %491, !dx.controlflow.hints !42

; <label>:485                                     ; preds = %483
  %486 = add i32 %72, 2
  %487 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %486
  %488 = load i32, i32 addrspace(3)* %487, align 4, !tbaa !35
  %489 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %490 = or i32 %489, %488
  store i32 %490, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %491

; <label>:491                                     ; preds = %485, %483
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %492 = icmp eq i32 %456, 0
  br i1 %492, label %493, label %499, !dx.controlflow.hints !43

; <label>:493                                     ; preds = %491
  %494 = add i32 %72, 1
  %495 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %494
  %496 = load i32, i32 addrspace(3)* %495, align 4, !tbaa !35
  %497 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %498 = or i32 %497, %496
  store i32 %498, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %499

; <label>:499                                     ; preds = %493, %491
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %500 = and i32 %72, -64
  %501 = or i32 %500, 32
  %502 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %500
  %503 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !35
  %504 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %501
  %505 = load i32, i32 addrspace(3)* %504, align 4, !tbaa !35
  %506 = and i32 %72, 32
  %507 = add i32 %457, -1
  %508 = icmp eq i32 %506, 0
  %509 = and i32 %503, %507
  %510 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %509)  ; Countbits(value)
  %511 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %503)  ; Countbits(value)
  %512 = and i32 %505, %507
  %513 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %512)  ; Countbits(value)
  %514 = add i32 %513, %511
  %515 = select i1 %508, i32 %510, i32 %514
  %516 = icmp eq i32 %72, 0
  br i1 %516, label %517, label %521, !dx.controlflow.hints !44

; <label>:517                                     ; preds = %499
  %518 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %505)  ; Countbits(value)
  %519 = add i32 %518, %511
  %520 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 undef, i32 undef, i32 %519)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %520, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  br label %521

; <label>:521                                     ; preds = %517, %499
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %455, label %522, label %526, !dx.controlflow.hints !45

; <label>:522                                     ; preds = %521
  %523 = load i32, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  %524 = add i32 %523, %515
  %525 = shl i32 %524, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %525, i32 undef, i32 %453, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %526

; <label>:526                                     ; preds = %522, %521
  %527 = icmp eq i32 %444, 1
  %528 = and i1 %443, %527
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %529 = select i1 %528, i32 %457, i32 0
  store i32 %529, i32 addrspace(3)* %459, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %460, label %530, label %536, !dx.controlflow.hints !39

; <label>:530                                     ; preds = %526
  %531 = add i32 %72, 16
  %532 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %531
  %533 = load i32, i32 addrspace(3)* %532, align 4, !tbaa !35
  %534 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %535 = or i32 %534, %533
  store i32 %535, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %536

; <label>:536                                     ; preds = %530, %526
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %468, label %537, label %543, !dx.controlflow.hints !40

; <label>:537                                     ; preds = %536
  %538 = add i32 %72, 8
  %539 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %538
  %540 = load i32, i32 addrspace(3)* %539, align 4, !tbaa !35
  %541 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %542 = or i32 %541, %540
  store i32 %542, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %543

; <label>:543                                     ; preds = %537, %536
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %476, label %544, label %550, !dx.controlflow.hints !41

; <label>:544                                     ; preds = %543
  %545 = add i32 %72, 4
  %546 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %545
  %547 = load i32, i32 addrspace(3)* %546, align 4, !tbaa !35
  %548 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %549 = or i32 %548, %547
  store i32 %549, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %550

; <label>:550                                     ; preds = %544, %543
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %484, label %551, label %557, !dx.controlflow.hints !42

; <label>:551                                     ; preds = %550
  %552 = add i32 %72, 2
  %553 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %552
  %554 = load i32, i32 addrspace(3)* %553, align 4, !tbaa !35
  %555 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %556 = or i32 %555, %554
  store i32 %556, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %557

; <label>:557                                     ; preds = %551, %550
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %492, label %558, label %564, !dx.controlflow.hints !43

; <label>:558                                     ; preds = %557
  %559 = add i32 %72, 1
  %560 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %559
  %561 = load i32, i32 addrspace(3)* %560, align 4, !tbaa !35
  %562 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %563 = or i32 %562, %561
  store i32 %563, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %564

; <label>:564                                     ; preds = %558, %557
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %565 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !35
  %566 = load i32, i32 addrspace(3)* %504, align 4, !tbaa !35
  %567 = and i32 %565, %507
  %568 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %567)  ; Countbits(value)
  %569 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %565)  ; Countbits(value)
  %570 = and i32 %566, %507
  %571 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %570)  ; Countbits(value)
  %572 = add i32 %571, %569
  %573 = select i1 %508, i32 %568, i32 %572
  br i1 %516, label %574, label %578, !dx.controlflow.hints !44

; <label>:574                                     ; preds = %564
  %575 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %566)  ; Countbits(value)
  %576 = add i32 %575, %569
  %577 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 32, i32 undef, i32 undef, i32 %576)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %577, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  br label %578

; <label>:578                                     ; preds = %574, %564
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %528, label %579, label %584, !dx.controlflow.hints !45

; <label>:579                                     ; preds = %578
  %580 = load i32, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  %581 = add i32 %573, %449
  %582 = add i32 %581, %580
  %583 = shl i32 %582, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %583, i32 undef, i32 %453, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %584

; <label>:584                                     ; preds = %579, %578
  %585 = icmp eq i32 %444, 2
  %586 = and i1 %443, %585
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %587 = select i1 %586, i32 %457, i32 0
  store i32 %587, i32 addrspace(3)* %459, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %460, label %588, label %594, !dx.controlflow.hints !39

; <label>:588                                     ; preds = %584
  %589 = add i32 %72, 16
  %590 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %589
  %591 = load i32, i32 addrspace(3)* %590, align 4, !tbaa !35
  %592 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %593 = or i32 %592, %591
  store i32 %593, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %594

; <label>:594                                     ; preds = %588, %584
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %468, label %595, label %601, !dx.controlflow.hints !40

; <label>:595                                     ; preds = %594
  %596 = add i32 %72, 8
  %597 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %596
  %598 = load i32, i32 addrspace(3)* %597, align 4, !tbaa !35
  %599 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %600 = or i32 %599, %598
  store i32 %600, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %601

; <label>:601                                     ; preds = %595, %594
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %476, label %602, label %608, !dx.controlflow.hints !41

; <label>:602                                     ; preds = %601
  %603 = add i32 %72, 4
  %604 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %603
  %605 = load i32, i32 addrspace(3)* %604, align 4, !tbaa !35
  %606 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %607 = or i32 %606, %605
  store i32 %607, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %608

; <label>:608                                     ; preds = %602, %601
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %484, label %609, label %615, !dx.controlflow.hints !42

; <label>:609                                     ; preds = %608
  %610 = add i32 %72, 2
  %611 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %610
  %612 = load i32, i32 addrspace(3)* %611, align 4, !tbaa !35
  %613 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %614 = or i32 %613, %612
  store i32 %614, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %615

; <label>:615                                     ; preds = %609, %608
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %492, label %616, label %622, !dx.controlflow.hints !43

; <label>:616                                     ; preds = %615
  %617 = add i32 %72, 1
  %618 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %617
  %619 = load i32, i32 addrspace(3)* %618, align 4, !tbaa !35
  %620 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %621 = or i32 %620, %619
  store i32 %621, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %622

; <label>:622                                     ; preds = %616, %615
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %623 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !35
  %624 = load i32, i32 addrspace(3)* %504, align 4, !tbaa !35
  %625 = and i32 %623, %507
  %626 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %625)  ; Countbits(value)
  %627 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %623)  ; Countbits(value)
  %628 = and i32 %624, %507
  %629 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %628)  ; Countbits(value)
  %630 = add i32 %629, %627
  %631 = select i1 %508, i32 %626, i32 %630
  br i1 %516, label %632, label %636, !dx.controlflow.hints !44

; <label>:632                                     ; preds = %622
  %633 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %624)  ; Countbits(value)
  %634 = add i32 %633, %627
  %635 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 64, i32 undef, i32 undef, i32 %634)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %635, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  br label %636

; <label>:636                                     ; preds = %632, %622
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %586, label %637, label %643, !dx.controlflow.hints !45

; <label>:637                                     ; preds = %636
  %638 = shl i32 %449, 1
  %639 = load i32, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  %640 = add i32 %631, %638
  %641 = add i32 %640, %639
  %642 = shl i32 %641, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %642, i32 undef, i32 %453, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %643

; <label>:643                                     ; preds = %637, %636
  %644 = icmp eq i32 %444, 3
  %645 = and i1 %443, %644
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %646 = select i1 %645, i32 %457, i32 0
  store i32 %646, i32 addrspace(3)* %459, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %460, label %647, label %653, !dx.controlflow.hints !39

; <label>:647                                     ; preds = %643
  %648 = add i32 %72, 16
  %649 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %648
  %650 = load i32, i32 addrspace(3)* %649, align 4, !tbaa !35
  %651 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %652 = or i32 %651, %650
  store i32 %652, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %653

; <label>:653                                     ; preds = %647, %643
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %468, label %654, label %660, !dx.controlflow.hints !40

; <label>:654                                     ; preds = %653
  %655 = add i32 %72, 8
  %656 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %655
  %657 = load i32, i32 addrspace(3)* %656, align 4, !tbaa !35
  %658 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %659 = or i32 %658, %657
  store i32 %659, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %660

; <label>:660                                     ; preds = %654, %653
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %476, label %661, label %667, !dx.controlflow.hints !41

; <label>:661                                     ; preds = %660
  %662 = add i32 %72, 4
  %663 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %662
  %664 = load i32, i32 addrspace(3)* %663, align 4, !tbaa !35
  %665 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %666 = or i32 %665, %664
  store i32 %666, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %667

; <label>:667                                     ; preds = %661, %660
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %484, label %668, label %674, !dx.controlflow.hints !42

; <label>:668                                     ; preds = %667
  %669 = add i32 %72, 2
  %670 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %669
  %671 = load i32, i32 addrspace(3)* %670, align 4, !tbaa !35
  %672 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %673 = or i32 %672, %671
  store i32 %673, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %674

; <label>:674                                     ; preds = %668, %667
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %492, label %675, label %681, !dx.controlflow.hints !43

; <label>:675                                     ; preds = %674
  %676 = add i32 %72, 1
  %677 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %676
  %678 = load i32, i32 addrspace(3)* %677, align 4, !tbaa !35
  %679 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %680 = or i32 %679, %678
  store i32 %680, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %681

; <label>:681                                     ; preds = %675, %674
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %682 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !35
  %683 = load i32, i32 addrspace(3)* %504, align 4, !tbaa !35
  %684 = and i32 %682, %507
  %685 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %684)  ; Countbits(value)
  %686 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %682)  ; Countbits(value)
  %687 = and i32 %683, %507
  %688 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %687)  ; Countbits(value)
  %689 = add i32 %688, %686
  %690 = select i1 %508, i32 %685, i32 %689
  br i1 %516, label %691, label %695, !dx.controlflow.hints !44

; <label>:691                                     ; preds = %681
  %692 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %683)  ; Countbits(value)
  %693 = add i32 %692, %686
  %694 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 96, i32 undef, i32 undef, i32 %693)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %694, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  br label %695

; <label>:695                                     ; preds = %691, %681
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %645, label %696, label %702, !dx.controlflow.hints !45

; <label>:696                                     ; preds = %695
  %697 = mul i32 %449, 3
  %698 = load i32, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  %699 = add i32 %690, %697
  %700 = add i32 %699, %698
  %701 = shl i32 %700, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %701, i32 undef, i32 %453, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %702

; <label>:702                                     ; preds = %696, %695
  %703 = icmp eq i32 %444, 4
  %704 = and i1 %443, %703
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %705 = select i1 %704, i32 %457, i32 0
  store i32 %705, i32 addrspace(3)* %459, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %460, label %706, label %712, !dx.controlflow.hints !39

; <label>:706                                     ; preds = %702
  %707 = add i32 %72, 16
  %708 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %707
  %709 = load i32, i32 addrspace(3)* %708, align 4, !tbaa !35
  %710 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %711 = or i32 %710, %709
  store i32 %711, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %712

; <label>:712                                     ; preds = %706, %702
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %468, label %713, label %719, !dx.controlflow.hints !40

; <label>:713                                     ; preds = %712
  %714 = add i32 %72, 8
  %715 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %714
  %716 = load i32, i32 addrspace(3)* %715, align 4, !tbaa !35
  %717 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %718 = or i32 %717, %716
  store i32 %718, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %719

; <label>:719                                     ; preds = %713, %712
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %476, label %720, label %726, !dx.controlflow.hints !41

; <label>:720                                     ; preds = %719
  %721 = add i32 %72, 4
  %722 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %721
  %723 = load i32, i32 addrspace(3)* %722, align 4, !tbaa !35
  %724 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %725 = or i32 %724, %723
  store i32 %725, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %726

; <label>:726                                     ; preds = %720, %719
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %484, label %727, label %733, !dx.controlflow.hints !42

; <label>:727                                     ; preds = %726
  %728 = add i32 %72, 2
  %729 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %728
  %730 = load i32, i32 addrspace(3)* %729, align 4, !tbaa !35
  %731 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %732 = or i32 %731, %730
  store i32 %732, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %733

; <label>:733                                     ; preds = %727, %726
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %492, label %734, label %740, !dx.controlflow.hints !43

; <label>:734                                     ; preds = %733
  %735 = add i32 %72, 1
  %736 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %735
  %737 = load i32, i32 addrspace(3)* %736, align 4, !tbaa !35
  %738 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %739 = or i32 %738, %737
  store i32 %739, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %740

; <label>:740                                     ; preds = %734, %733
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %741 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !35
  %742 = load i32, i32 addrspace(3)* %504, align 4, !tbaa !35
  %743 = and i32 %741, %507
  %744 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %743)  ; Countbits(value)
  %745 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %741)  ; Countbits(value)
  %746 = and i32 %742, %507
  %747 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %746)  ; Countbits(value)
  %748 = add i32 %747, %745
  %749 = select i1 %508, i32 %744, i32 %748
  br i1 %516, label %750, label %754, !dx.controlflow.hints !44

; <label>:750                                     ; preds = %740
  %751 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %742)  ; Countbits(value)
  %752 = add i32 %751, %745
  %753 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 128, i32 undef, i32 undef, i32 %752)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %753, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  br label %754

; <label>:754                                     ; preds = %750, %740
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %704, label %755, label %761, !dx.controlflow.hints !45

; <label>:755                                     ; preds = %754
  %756 = shl i32 %449, 2
  %757 = load i32, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  %758 = add i32 %749, %756
  %759 = add i32 %758, %757
  %760 = shl i32 %759, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %760, i32 undef, i32 %453, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %761

; <label>:761                                     ; preds = %755, %754
  %762 = icmp eq i32 %444, 5
  %763 = and i1 %443, %762
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %764 = select i1 %763, i32 %457, i32 0
  store i32 %764, i32 addrspace(3)* %459, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %460, label %765, label %771, !dx.controlflow.hints !39

; <label>:765                                     ; preds = %761
  %766 = add i32 %72, 16
  %767 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %766
  %768 = load i32, i32 addrspace(3)* %767, align 4, !tbaa !35
  %769 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %770 = or i32 %769, %768
  store i32 %770, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %771

; <label>:771                                     ; preds = %765, %761
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %468, label %772, label %778, !dx.controlflow.hints !40

; <label>:772                                     ; preds = %771
  %773 = add i32 %72, 8
  %774 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %773
  %775 = load i32, i32 addrspace(3)* %774, align 4, !tbaa !35
  %776 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %777 = or i32 %776, %775
  store i32 %777, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %778

; <label>:778                                     ; preds = %772, %771
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %476, label %779, label %785, !dx.controlflow.hints !41

; <label>:779                                     ; preds = %778
  %780 = add i32 %72, 4
  %781 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %780
  %782 = load i32, i32 addrspace(3)* %781, align 4, !tbaa !35
  %783 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %784 = or i32 %783, %782
  store i32 %784, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %785

; <label>:785                                     ; preds = %779, %778
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %484, label %786, label %792, !dx.controlflow.hints !42

; <label>:786                                     ; preds = %785
  %787 = add i32 %72, 2
  %788 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %787
  %789 = load i32, i32 addrspace(3)* %788, align 4, !tbaa !35
  %790 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %791 = or i32 %790, %789
  store i32 %791, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %792

; <label>:792                                     ; preds = %786, %785
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %492, label %793, label %799, !dx.controlflow.hints !43

; <label>:793                                     ; preds = %792
  %794 = add i32 %72, 1
  %795 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %794
  %796 = load i32, i32 addrspace(3)* %795, align 4, !tbaa !35
  %797 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %798 = or i32 %797, %796
  store i32 %798, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %799

; <label>:799                                     ; preds = %793, %792
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %800 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !35
  %801 = load i32, i32 addrspace(3)* %504, align 4, !tbaa !35
  %802 = and i32 %800, %507
  %803 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %802)  ; Countbits(value)
  %804 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %800)  ; Countbits(value)
  %805 = and i32 %801, %507
  %806 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %805)  ; Countbits(value)
  %807 = add i32 %806, %804
  %808 = select i1 %508, i32 %803, i32 %807
  br i1 %516, label %809, label %813, !dx.controlflow.hints !44

; <label>:809                                     ; preds = %799
  %810 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %801)  ; Countbits(value)
  %811 = add i32 %810, %804
  %812 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 160, i32 undef, i32 undef, i32 %811)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %812, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  br label %813

; <label>:813                                     ; preds = %809, %799
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %763, label %814, label %820, !dx.controlflow.hints !45

; <label>:814                                     ; preds = %813
  %815 = mul i32 %449, 5
  %816 = load i32, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  %817 = add i32 %808, %815
  %818 = add i32 %817, %816
  %819 = shl i32 %818, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %819, i32 undef, i32 %453, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %820

; <label>:820                                     ; preds = %814, %813
  %821 = icmp eq i32 %444, 6
  %822 = and i1 %443, %821
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %823 = select i1 %822, i32 %457, i32 0
  store i32 %823, i32 addrspace(3)* %459, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %460, label %824, label %830, !dx.controlflow.hints !39

; <label>:824                                     ; preds = %820
  %825 = add i32 %72, 16
  %826 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %825
  %827 = load i32, i32 addrspace(3)* %826, align 4, !tbaa !35
  %828 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %829 = or i32 %828, %827
  store i32 %829, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %830

; <label>:830                                     ; preds = %824, %820
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %468, label %831, label %837, !dx.controlflow.hints !40

; <label>:831                                     ; preds = %830
  %832 = add i32 %72, 8
  %833 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %832
  %834 = load i32, i32 addrspace(3)* %833, align 4, !tbaa !35
  %835 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %836 = or i32 %835, %834
  store i32 %836, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %837

; <label>:837                                     ; preds = %831, %830
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %476, label %838, label %844, !dx.controlflow.hints !41

; <label>:838                                     ; preds = %837
  %839 = add i32 %72, 4
  %840 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %839
  %841 = load i32, i32 addrspace(3)* %840, align 4, !tbaa !35
  %842 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %843 = or i32 %842, %841
  store i32 %843, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %844

; <label>:844                                     ; preds = %838, %837
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %484, label %845, label %851, !dx.controlflow.hints !42

; <label>:845                                     ; preds = %844
  %846 = add i32 %72, 2
  %847 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %846
  %848 = load i32, i32 addrspace(3)* %847, align 4, !tbaa !35
  %849 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %850 = or i32 %849, %848
  store i32 %850, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %851

; <label>:851                                     ; preds = %845, %844
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %492, label %852, label %858, !dx.controlflow.hints !43

; <label>:852                                     ; preds = %851
  %853 = add i32 %72, 1
  %854 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %853
  %855 = load i32, i32 addrspace(3)* %854, align 4, !tbaa !35
  %856 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %857 = or i32 %856, %855
  store i32 %857, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %858

; <label>:858                                     ; preds = %852, %851
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %859 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !35
  %860 = load i32, i32 addrspace(3)* %504, align 4, !tbaa !35
  %861 = and i32 %859, %507
  %862 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %861)  ; Countbits(value)
  %863 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %859)  ; Countbits(value)
  %864 = and i32 %860, %507
  %865 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %864)  ; Countbits(value)
  %866 = add i32 %865, %863
  %867 = select i1 %508, i32 %862, i32 %866
  br i1 %516, label %868, label %872, !dx.controlflow.hints !44

; <label>:868                                     ; preds = %858
  %869 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %860)  ; Countbits(value)
  %870 = add i32 %869, %863
  %871 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 192, i32 undef, i32 undef, i32 %870)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %871, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  br label %872

; <label>:872                                     ; preds = %868, %858
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %822, label %873, label %879, !dx.controlflow.hints !45

; <label>:873                                     ; preds = %872
  %874 = mul i32 %449, 6
  %875 = load i32, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  %876 = add i32 %867, %874
  %877 = add i32 %876, %875
  %878 = shl i32 %877, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %878, i32 undef, i32 %453, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %879

; <label>:879                                     ; preds = %873, %872
  %880 = icmp eq i32 %444, 7
  %881 = and i1 %443, %880
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %882 = select i1 %881, i32 %457, i32 0
  store i32 %882, i32 addrspace(3)* %459, align 4, !tbaa !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %460, label %883, label %889, !dx.controlflow.hints !39

; <label>:883                                     ; preds = %879
  %884 = add i32 %72, 16
  %885 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %884
  %886 = load i32, i32 addrspace(3)* %885, align 4, !tbaa !35
  %887 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %888 = or i32 %887, %886
  store i32 %888, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %889

; <label>:889                                     ; preds = %883, %879
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %468, label %890, label %896, !dx.controlflow.hints !40

; <label>:890                                     ; preds = %889
  %891 = add i32 %72, 8
  %892 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %891
  %893 = load i32, i32 addrspace(3)* %892, align 4, !tbaa !35
  %894 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %895 = or i32 %894, %893
  store i32 %895, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %896

; <label>:896                                     ; preds = %890, %889
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %476, label %897, label %903, !dx.controlflow.hints !41

; <label>:897                                     ; preds = %896
  %898 = add i32 %72, 4
  %899 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %898
  %900 = load i32, i32 addrspace(3)* %899, align 4, !tbaa !35
  %901 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %902 = or i32 %901, %900
  store i32 %902, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %903

; <label>:903                                     ; preds = %897, %896
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %484, label %904, label %910, !dx.controlflow.hints !42

; <label>:904                                     ; preds = %903
  %905 = add i32 %72, 2
  %906 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %905
  %907 = load i32, i32 addrspace(3)* %906, align 4, !tbaa !35
  %908 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %909 = or i32 %908, %907
  store i32 %909, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %910

; <label>:910                                     ; preds = %904, %903
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  br i1 %492, label %911, label %917, !dx.controlflow.hints !43

; <label>:911                                     ; preds = %910
  %912 = add i32 %72, 1
  %913 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %912
  %914 = load i32, i32 addrspace(3)* %913, align 4, !tbaa !35
  %915 = load i32, i32 addrspace(3)* %459, align 4, !tbaa !35
  %916 = or i32 %915, %914
  store i32 %916, i32 addrspace(3)* %459, align 4, !tbaa !35
  br label %917

; <label>:917                                     ; preds = %911, %910
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %918 = load i32, i32 addrspace(3)* %502, align 4, !tbaa !35
  %919 = load i32, i32 addrspace(3)* %504, align 4, !tbaa !35
  %920 = and i32 %918, %507
  %921 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %920)  ; Countbits(value)
  %922 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %918)  ; Countbits(value)
  %923 = and i32 %919, %507
  %924 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %923)  ; Countbits(value)
  %925 = add i32 %924, %922
  %926 = select i1 %508, i32 %921, i32 %925
  br i1 %516, label %927, label %931, !dx.controlflow.hints !44

; <label>:927                                     ; preds = %917
  %928 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %919)  ; Countbits(value)
  %929 = add i32 %928, %922
  %930 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 224, i32 undef, i32 undef, i32 %929)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %930, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  br label %931

; <label>:931                                     ; preds = %927, %917
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %881, label %932, label %938, !dx.controlflow.hints !45

; <label>:932                                     ; preds = %931
  %933 = mul i32 %449, 7
  %934 = load i32, i32 addrspace(3)* @"\01?waveOffset@@3IA", align 4, !tbaa !35
  %935 = add i32 %926, %933
  %936 = add i32 %935, %934
  %937 = shl i32 %936, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %937, i32 undef, i32 %453, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %938

; <label>:938                                     ; preds = %932, %931
  ret void
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
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !15, !19, !22}
!5 = !{!6, !8, !9, !10, !12, !13, !14}
!6 = !{i32 0, %"class.Texture2DArray<float>"* undef, !"", i32 0, i32 50, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 29, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 4}
!12 = !{i32 4, %"class.Texture2D<float>"* undef, !"", i32 0, i32 51, i32 1, i32 2, i32 0, !7}
!13 = !{i32 5, %"class.Texture2D<float>"* undef, !"", i32 0, i32 52, i32 1, i32 2, i32 0, !7}
!14 = !{i32 6, %"class.Texture2D<float>"* undef, !"", i32 0, i32 53, i32 1, i32 2, i32 0, !7}
!15 = !{!16, !17, !18}
!16 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!17 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!18 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!19 = !{!20, !21}
!20 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!21 = !{i32 1, %VolumetricFillIndirect_decl* undef, !"", i32 0, i32 4, i32 1, i32 32, null}
!22 = !{!23, !24}
!23 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!24 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!25 = !{void ()* @cs_fill_indirect_scattering, !"cs_fill_indirect_scattering", null, !4, !26}
!26 = !{i32 0, i64 272, i32 4, !27}
!27 = !{i32 4, i32 4, i32 4}
!28 = distinct !{!28, !29}
!29 = !{!"llvm.loop.unroll.disable"}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}

