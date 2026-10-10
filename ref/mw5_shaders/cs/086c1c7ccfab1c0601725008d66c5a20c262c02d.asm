;
; Note: shader requires additional functionality:
;       Wave level operations
;
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
; shader hash: 9d3cbd8449b5761e3588377f8970d300
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

@"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim" = addrspace(3) global [16 x float] undef, align 4

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
  %28 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 235)  ; CBufferLoadLegacy(handle,regIndex)
  %29 = extractvalue %dx.types.CBufRet.f32 %28, 0
  %30 = extractvalue %dx.types.CBufRet.f32 %28, 2
  %31 = fcmp fast ogt float %27, 9.843750e-01
  %32 = select i1 %31, float 6.400000e+01, float 0x3FF0410420000000
  %33 = select i1 %31, float -6.300000e+01, float -0.000000e+00
  %34 = select i1 %31, float %29, float %30
  %35 = call float @dx.op.unary.f32(i32 7, float %27)  ; Saturate(value)
  %36 = fmul fast float %32, %35
  %37 = fadd fast float %36, %33
  %38 = call float @dx.op.binary.f32(i32 35, float %37, float 0x3E45798EE0000000)  ; FMax(a,b)
  %39 = fdiv fast float %34, %38
  %40 = fsub fast float -0.000000e+00, %39
  %41 = select i1 %31, float %40, float %39
  %42 = fcmp fast ogt float %41, 0.000000e+00
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 0
  %45 = select i1 %42, float %44, float 1.000000e+00
  %46 = fmul fast float %45, %41
  %47 = fadd fast float %46, -1.000000e+00
  br i1 %25, label %48, label %49, !dx.controlflow.hints !20

; <label>:48                                      ; preds = %0
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %5, i32 %16, i32 %17, i32 undef, float %47, float %47, float %47, float %47, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %49

; <label>:49                                      ; preds = %48, %0
  %50 = select i1 %25, float %47, float 0.000000e+00
  %51 = select i1 %25, float %47, float 6.550000e+04
  %52 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %53 = add i32 %52, -1
  %54 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  %55 = and i32 %52, 1
  %56 = xor i32 %55, 1
  %57 = and i32 %53, %54
  %58 = xor i32 %56, %57
  %59 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %50, i32 %58)  ; WaveReadLaneAt(value,lane)
  %60 = fcmp fast ole float %50, -1.000000e+00
  %61 = fcmp fast ole float %59, -1.000000e+00
  %62 = select i1 %60, float -1.000000e+00, float %50
  %63 = select i1 %61, float -1.000000e+00, float %59
  %64 = and i1 %60, %61
  %65 = call float @dx.op.binary.f32(i32 36, float %50, float %59)  ; FMin(a,b)
  %66 = call float @dx.op.binary.f32(i32 35, float %62, float %63)  ; FMax(a,b)
  %67 = select i1 %64, float %65, float %66
  %68 = add i32 %52, 15
  %69 = and i32 %68, 8
  %70 = xor i32 %57, %69
  %71 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %67, i32 %70)  ; WaveReadLaneAt(value,lane)
  %72 = fcmp fast ole float %67, -1.000000e+00
  %73 = fcmp fast ole float %71, -1.000000e+00
  %74 = select i1 %72, float -1.000000e+00, float %67
  %75 = select i1 %73, float -1.000000e+00, float %71
  %76 = and i1 %72, %73
  %77 = call float @dx.op.binary.f32(i32 36, float %67, float %71)  ; FMin(a,b)
  %78 = call float @dx.op.binary.f32(i32 35, float %74, float %75)  ; FMax(a,b)
  %79 = select i1 %76, float %77, float %78
  %80 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %51, i32 %58)  ; WaveReadLaneAt(value,lane)
  %81 = fcmp fast ole float %51, -1.000000e+00
  %82 = fcmp fast ole float %80, -1.000000e+00
  %83 = select i1 %81, float 0x47EFFFFFE0000000, float %51
  %84 = select i1 %82, float 0x47EFFFFFE0000000, float %80
  %85 = and i1 %81, %82
  %86 = call float @dx.op.binary.f32(i32 35, float %51, float %80)  ; FMax(a,b)
  %87 = call float @dx.op.binary.f32(i32 36, float %83, float %84)  ; FMin(a,b)
  %88 = select i1 %85, float %86, float %87
  %89 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %88, i32 %70)  ; WaveReadLaneAt(value,lane)
  %90 = fcmp fast ole float %88, -1.000000e+00
  %91 = fcmp fast ole float %89, -1.000000e+00
  %92 = select i1 %90, float 0x47EFFFFFE0000000, float %88
  %93 = select i1 %91, float 0x47EFFFFFE0000000, float %89
  %94 = and i1 %90, %91
  %95 = call float @dx.op.binary.f32(i32 35, float %88, float %89)  ; FMax(a,b)
  %96 = call float @dx.op.binary.f32(i32 36, float %92, float %93)  ; FMin(a,b)
  %97 = select i1 %94, float %95, float %96
  %98 = or i32 %12, %11
  %99 = and i32 %98, 1
  %100 = icmp eq i32 %99, 0
  %101 = and i1 %100, %25
  br i1 %101, label %102, label %105, !dx.controlflow.hints !21

; <label>:102                                     ; preds = %49
  %103 = lshr i32 %17, 1
  %104 = lshr i32 %16, 1
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %104, i32 %103, i32 undef, float %79, float %79, float %79, float %79, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %105

; <label>:105                                     ; preds = %102, %49
  %106 = lshr i32 %16, 2
  %107 = lshr i32 %17, 2
  %108 = udiv i32 %13, %52
  %109 = icmp ugt i32 %52, 31
  %110 = add i32 %52, 3
  %111 = and i32 %110, 2
  %112 = xor i32 %57, %111
  %113 = fcmp fast ole float %79, -1.000000e+00
  %114 = select i1 %113, float -1.000000e+00, float %79
  %115 = fcmp fast ole float %97, -1.000000e+00
  %116 = select i1 %115, float 0x47EFFFFFE0000000, float %97
  br i1 %109, label %117, label %153, !dx.controlflow.hints !22

; <label>:117                                     ; preds = %105
  %118 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %79, i32 %112)  ; WaveReadLaneAt(value,lane)
  %119 = fcmp fast ole float %118, -1.000000e+00
  %120 = select i1 %119, float -1.000000e+00, float %118
  %121 = and i1 %113, %119
  %122 = call float @dx.op.binary.f32(i32 36, float %79, float %118)  ; FMin(a,b)
  %123 = call float @dx.op.binary.f32(i32 35, float %114, float %120)  ; FMax(a,b)
  %124 = select i1 %121, float %122, float %123
  %125 = add i32 %52, 31
  %126 = and i32 %125, 16
  %127 = xor i32 %57, %126
  %128 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %124, i32 %127)  ; WaveReadLaneAt(value,lane)
  %129 = fcmp fast ole float %124, -1.000000e+00
  %130 = fcmp fast ole float %128, -1.000000e+00
  %131 = select i1 %129, float -1.000000e+00, float %124
  %132 = select i1 %130, float -1.000000e+00, float %128
  %133 = and i1 %129, %130
  %134 = call float @dx.op.binary.f32(i32 36, float %124, float %128)  ; FMin(a,b)
  %135 = call float @dx.op.binary.f32(i32 35, float %131, float %132)  ; FMax(a,b)
  %136 = select i1 %133, float %134, float %135
  %137 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %97, i32 %112)  ; WaveReadLaneAt(value,lane)
  %138 = fcmp fast ole float %137, -1.000000e+00
  %139 = select i1 %138, float 0x47EFFFFFE0000000, float %137
  %140 = and i1 %115, %138
  %141 = call float @dx.op.binary.f32(i32 35, float %97, float %137)  ; FMax(a,b)
  %142 = call float @dx.op.binary.f32(i32 36, float %116, float %139)  ; FMin(a,b)
  %143 = select i1 %140, float %141, float %142
  %144 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %143, i32 %127)  ; WaveReadLaneAt(value,lane)
  %145 = fcmp fast ole float %143, -1.000000e+00
  %146 = fcmp fast ole float %144, -1.000000e+00
  %147 = select i1 %145, float 0x47EFFFFFE0000000, float %143
  %148 = select i1 %146, float 0x47EFFFFFE0000000, float %144
  %149 = and i1 %145, %146
  %150 = call float @dx.op.binary.f32(i32 35, float %143, float %144)  ; FMax(a,b)
  %151 = call float @dx.op.binary.f32(i32 36, float %147, float %148)  ; FMin(a,b)
  %152 = select i1 %149, float %150, float %151
  br label %205

; <label>:153                                     ; preds = %105
  %154 = lshr i32 %54, 2
  %155 = and i32 %154, 1
  %156 = shl i32 %108, 1
  %157 = or i32 %155, %156
  %158 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %79, i32 %112)  ; WaveReadLaneAt(value,lane)
  %159 = fcmp fast ole float %158, -1.000000e+00
  %160 = select i1 %159, float -1.000000e+00, float %158
  %161 = and i1 %113, %159
  %162 = call float @dx.op.binary.f32(i32 36, float %79, float %158)  ; FMin(a,b)
  %163 = call float @dx.op.binary.f32(i32 35, float %114, float %160)  ; FMax(a,b)
  %164 = select i1 %161, float %162, float %163
  %165 = mul i32 %157, 2
  %166 = add i32 0, %165
  %167 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %166
  store float %164, float addrspace(3)* %167, align 4
  %168 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %97, i32 %112)  ; WaveReadLaneAt(value,lane)
  %169 = fcmp fast ole float %168, -1.000000e+00
  %170 = select i1 %169, float 0x47EFFFFFE0000000, float %168
  %171 = and i1 %115, %169
  %172 = call float @dx.op.binary.f32(i32 35, float %97, float %168)  ; FMax(a,b)
  %173 = call float @dx.op.binary.f32(i32 36, float %116, float %170)  ; FMin(a,b)
  %174 = select i1 %171, float %172, float %173
  %175 = mul i32 %157, 2
  %176 = add i32 1, %175
  %177 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %176
  store float %174, float addrspace(3)* %177, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %178 = xor i32 %157, 2
  %179 = mul i32 %178, 2
  %180 = add i32 0, %179
  %181 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %180
  %182 = load float, float addrspace(3)* %181, align 4
  %183 = load float, float addrspace(3)* %167, align 4
  %184 = fcmp fast ole float %183, -1.000000e+00
  %185 = fcmp fast ole float %182, -1.000000e+00
  %186 = select i1 %184, float -1.000000e+00, float %183
  %187 = select i1 %185, float -1.000000e+00, float %182
  %188 = and i1 %185, %184
  %189 = call float @dx.op.binary.f32(i32 36, float %183, float %182)  ; FMin(a,b)
  %190 = call float @dx.op.binary.f32(i32 35, float %186, float %187)  ; FMax(a,b)
  %191 = select i1 %188, float %189, float %190
  %192 = mul i32 %178, 2
  %193 = add i32 1, %192
  %194 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %193
  %195 = load float, float addrspace(3)* %194, align 4
  %196 = load float, float addrspace(3)* %177, align 4
  %197 = fcmp fast ole float %196, -1.000000e+00
  %198 = fcmp fast ole float %195, -1.000000e+00
  %199 = select i1 %197, float 0x47EFFFFFE0000000, float %196
  %200 = select i1 %198, float 0x47EFFFFFE0000000, float %195
  %201 = and i1 %198, %197
  %202 = call float @dx.op.binary.f32(i32 35, float %196, float %195)  ; FMax(a,b)
  %203 = call float @dx.op.binary.f32(i32 36, float %199, float %200)  ; FMin(a,b)
  %204 = select i1 %201, float %202, float %203
  br label %205

; <label>:205                                     ; preds = %153, %117
  %206 = phi float [ %136, %117 ], [ %191, %153 ]
  %207 = phi float [ %152, %117 ], [ %204, %153 ]
  %208 = and i32 %98, 3
  %209 = icmp eq i32 %208, 0
  %210 = and i1 %209, %25
  br i1 %210, label %211, label %212, !dx.controlflow.hints !23

; <label>:211                                     ; preds = %205
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %106, i32 %107, i32 undef, float %206, float %206, float %206, float %206, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %212

; <label>:212                                     ; preds = %211, %205
  %213 = lshr i32 %16, 3
  %214 = lshr i32 %17, 3
  %215 = icmp eq i32 %52, 64
  %216 = fcmp fast ole float %206, -1.000000e+00
  %217 = select i1 %216, float -1.000000e+00, float %206
  %218 = fcmp fast ole float %207, -1.000000e+00
  %219 = select i1 %218, float 0x47EFFFFFE0000000, float %207
  br i1 %215, label %220, label %257, !dx.controlflow.hints !24

; <label>:220                                     ; preds = %212
  %221 = and i32 %54, 63
  %222 = xor i32 %221, 4
  %223 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %206, i32 %222)  ; WaveReadLaneAt(value,lane)
  %224 = fcmp fast ole float %223, -1.000000e+00
  %225 = select i1 %224, float -1.000000e+00, float %223
  %226 = and i1 %216, %224
  %227 = call float @dx.op.binary.f32(i32 36, float %206, float %223)  ; FMin(a,b)
  %228 = call float @dx.op.binary.f32(i32 35, float %217, float %225)  ; FMax(a,b)
  %229 = select i1 %226, float %227, float %228
  %230 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %229, i32 32)  ; WaveReadLaneAt(value,lane)
  %231 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %229, i32 0)  ; WaveReadLaneAt(value,lane)
  %232 = fcmp fast ole float %231, -1.000000e+00
  %233 = fcmp fast ole float %230, -1.000000e+00
  %234 = select i1 %232, float -1.000000e+00, float %231
  %235 = select i1 %233, float -1.000000e+00, float %230
  %236 = and i1 %233, %232
  %237 = call float @dx.op.binary.f32(i32 36, float %231, float %230)  ; FMin(a,b)
  %238 = call float @dx.op.binary.f32(i32 35, float %234, float %235)  ; FMax(a,b)
  %239 = select i1 %236, float %237, float %238
  %240 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %207, i32 %222)  ; WaveReadLaneAt(value,lane)
  %241 = fcmp fast ole float %240, -1.000000e+00
  %242 = select i1 %241, float 0x47EFFFFFE0000000, float %240
  %243 = and i1 %218, %241
  %244 = call float @dx.op.binary.f32(i32 35, float %207, float %240)  ; FMax(a,b)
  %245 = call float @dx.op.binary.f32(i32 36, float %219, float %242)  ; FMin(a,b)
  %246 = select i1 %243, float %244, float %245
  %247 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %246, i32 32)  ; WaveReadLaneAt(value,lane)
  %248 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %246, i32 0)  ; WaveReadLaneAt(value,lane)
  %249 = fcmp fast ole float %248, -1.000000e+00
  %250 = fcmp fast ole float %247, -1.000000e+00
  %251 = select i1 %249, float 0x47EFFFFFE0000000, float %248
  %252 = select i1 %250, float 0x47EFFFFFE0000000, float %247
  %253 = and i1 %250, %249
  %254 = call float @dx.op.binary.f32(i32 35, float %248, float %247)  ; FMax(a,b)
  %255 = call float @dx.op.binary.f32(i32 36, float %251, float %252)  ; FMin(a,b)
  %256 = select i1 %253, float %254, float %255
  br label %304

; <label>:257                                     ; preds = %212
  %258 = lshr i32 %52, 4
  %259 = mul i32 %258, %108
  %260 = lshr i32 %259, 1
  %261 = add i32 %52, 7
  %262 = and i32 %261, 4
  %263 = xor i32 %57, %262
  %264 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %206, i32 %263)  ; WaveReadLaneAt(value,lane)
  %265 = fcmp fast ole float %264, -1.000000e+00
  %266 = select i1 %265, float -1.000000e+00, float %264
  %267 = and i1 %216, %265
  %268 = call float @dx.op.binary.f32(i32 36, float %206, float %264)  ; FMin(a,b)
  %269 = call float @dx.op.binary.f32(i32 35, float %217, float %266)  ; FMax(a,b)
  %270 = select i1 %267, float %268, float %269
  %271 = mul i32 %260, 2
  %272 = add i32 0, %271
  %273 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %272
  store float %270, float addrspace(3)* %273, align 4
  %274 = call float @dx.op.waveReadLaneAt.f32(i32 117, float %207, i32 %263)  ; WaveReadLaneAt(value,lane)
  %275 = fcmp fast ole float %274, -1.000000e+00
  %276 = select i1 %275, float 0x47EFFFFFE0000000, float %274
  %277 = and i1 %218, %275
  %278 = call float @dx.op.binary.f32(i32 35, float %207, float %274)  ; FMax(a,b)
  %279 = call float @dx.op.binary.f32(i32 36, float %219, float %276)  ; FMin(a,b)
  %280 = select i1 %277, float %278, float %279
  %281 = mul i32 %260, 2
  %282 = add i32 1, %281
  %283 = getelementptr [16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 %282
  store float %280, float addrspace(3)* %283, align 4
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %284 = load float, float addrspace(3)* getelementptr inbounds ([16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 2), align 4
  %285 = load float, float addrspace(3)* getelementptr inbounds ([16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 0), align 4
  %286 = fcmp fast ole float %285, -1.000000e+00
  %287 = fcmp fast ole float %284, -1.000000e+00
  %288 = select i1 %286, float -1.000000e+00, float %285
  %289 = select i1 %287, float -1.000000e+00, float %284
  %290 = and i1 %287, %286
  %291 = call float @dx.op.binary.f32(i32 36, float %285, float %284)  ; FMin(a,b)
  %292 = call float @dx.op.binary.f32(i32 35, float %288, float %289)  ; FMax(a,b)
  %293 = select i1 %290, float %291, float %292
  %294 = load float, float addrspace(3)* getelementptr inbounds ([16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 3), align 4
  %295 = load float, float addrspace(3)* getelementptr inbounds ([16 x float], [16 x float] addrspace(3)* @"\01?gFloatZ@@3PAV?$vector@M$01@@A.v.1dim", i32 0, i32 1), align 4
  %296 = fcmp fast ole float %295, -1.000000e+00
  %297 = fcmp fast ole float %294, -1.000000e+00
  %298 = select i1 %296, float 0x47EFFFFFE0000000, float %295
  %299 = select i1 %297, float 0x47EFFFFFE0000000, float %294
  %300 = and i1 %297, %296
  %301 = call float @dx.op.binary.f32(i32 35, float %295, float %294)  ; FMax(a,b)
  %302 = call float @dx.op.binary.f32(i32 36, float %298, float %299)  ; FMin(a,b)
  %303 = select i1 %300, float %301, float %302
  br label %304

; <label>:304                                     ; preds = %257, %220
  %305 = phi float [ %239, %220 ], [ %293, %257 ]
  %306 = phi float [ %256, %220 ], [ %303, %257 ]
  %307 = and i32 %98, 7
  %308 = icmp eq i32 %307, 0
  %309 = and i1 %308, %25
  br i1 %309, label %310, label %311, !dx.controlflow.hints !25

; <label>:310                                     ; preds = %304
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %213, i32 %214, i32 undef, float %305, float %305, float %305, float %305, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %213, i32 %214, i32 undef, float %306, float %306, float %306, float %306, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %311

; <label>:311                                     ; preds = %310, %304
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
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare float @dx.op.waveReadLaneAt.f32(i32, float, i32) #2

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
!18 = !{i32 0, i64 524544, i32 4, !19}
!19 = !{i32 8, i32 8, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

