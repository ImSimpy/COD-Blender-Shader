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
; shader hash: a6c934e17eba3379e438a0d7b7f3675d
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
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          2d      T0            t16     1
;                                   texture     f32          2d      T1            t17     1
;                                   texture     f32          2d      T2            t27     1
;                                   texture    byte         r/o      T3            t44     1
;                                       UAV     f32     2darray      U0             u2     1
;                                       UAV     f32     2darray      U1             u3     1
;                                       UAV     f32          2d      U2             u0     1
;                                       UAV     f32          2d      U3             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
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
%struct.SamplerState = type { i32 }

define void @cs_max_floatz() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 44, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 27, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %13 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 392)  ; CBufferLoadLegacy(handle,regIndex)
  %14 = extractvalue %dx.types.CBufRet.i32 %13, 0
  %15 = extractvalue %dx.types.CBufRet.i32 %13, 1
  %16 = icmp uge i32 %11, %14
  %17 = icmp uge i32 %12, %15
  %18 = or i1 %16, %17
  br i1 %18, label %269, label %19, !dx.controlflow.hints !23

; <label>:19                                      ; preds = %0
  %20 = uitofp i32 %11 to float
  %21 = uitofp i32 %12 to float
  %22 = fadd fast float %20, 5.000000e-01
  %23 = fadd fast float %21, 5.000000e-01
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = fmul fast float %25, %22
  %28 = fmul fast float %26, %23
  %29 = call float @dx.op.unary.f32(i32 7, float %27)  ; Saturate(value)
  %30 = call float @dx.op.unary.f32(i32 7, float %28)  ; Saturate(value)
  %31 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %8, %dx.types.Handle %9, float %29, float %30, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  %33 = extractvalue %dx.types.ResRet.f32 %31, 1
  %34 = extractvalue %dx.types.ResRet.f32 %31, 2
  %35 = extractvalue %dx.types.ResRet.f32 %31, 3
  %36 = fcmp fast ogt float %32, -1.000000e+00
  %37 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.f32 %37, 1
  %39 = select i1 %36, float %38, float 1.000000e+00
  %40 = fadd fast float %32, 1.000000e+00
  %41 = fmul fast float %39, %40
  %42 = call float @dx.op.unary.f32(i32 6, float %41)  ; FAbs(value)
  %43 = fcmp fast ogt float %33, -1.000000e+00
  %44 = select i1 %43, float %38, float 1.000000e+00
  %45 = fadd fast float %33, 1.000000e+00
  %46 = fmul fast float %44, %45
  %47 = call float @dx.op.unary.f32(i32 6, float %46)  ; FAbs(value)
  %48 = fcmp fast ogt float %34, -1.000000e+00
  %49 = select i1 %48, float %38, float 1.000000e+00
  %50 = fadd fast float %34, 1.000000e+00
  %51 = fmul fast float %49, %50
  %52 = call float @dx.op.unary.f32(i32 6, float %51)  ; FAbs(value)
  %53 = fcmp fast ogt float %35, -1.000000e+00
  %54 = select i1 %53, float %38, float 1.000000e+00
  %55 = fadd fast float %35, 1.000000e+00
  %56 = fmul fast float %54, %55
  %57 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %58 = call float @dx.op.binary.f32(i32 35, float %47, float %52)  ; FMax(a,b)
  %59 = call float @dx.op.binary.f32(i32 35, float %42, float %58)  ; FMax(a,b)
  %60 = call float @dx.op.binary.f32(i32 35, float %59, float %57)  ; FMax(a,b)
  %61 = call float @dx.op.binary.f32(i32 35, float 0xBF10000000000000, float %60)  ; FMax(a,b)
  %62 = fcmp fast ogt float %61, 0.000000e+00
  %63 = extractvalue %dx.types.CBufRet.f32 %37, 0
  %64 = select i1 %62, float %63, float 1.000000e+00
  %65 = fmul fast float %64, %61
  %66 = fadd fast float %65, -1.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %11, i32 %12, i32 undef, float %66, float %66, float %66, float %66, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %67 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %68 = extractvalue %dx.types.CBufRet.i32 %67, 0
  %69 = add i32 %68, -1
  %70 = uitofp i32 %69 to float
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = extractvalue %dx.types.CBufRet.f32 %71, 2
  %74 = extractvalue %dx.types.CBufRet.f32 %71, 3
  %75 = fadd fast float %61, -4.000000e+00
  %76 = call float @dx.op.binary.f32(i32 35, float %75, float 0.000000e+00)  ; FMax(a,b)
  %77 = fadd fast float %76, %72
  %78 = fmul fast float %77, %73
  %79 = call float @dx.op.unary.f32(i32 23, float %78)  ; Log(value)
  %80 = fmul fast float %79, %74
  %81 = fadd fast float %80, 1.000000e+00
  %82 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %83 = call float @dx.op.binary.f32(i32 36, float %82, float %70)  ; FMin(a,b)
  %84 = fptoui float %83 to i32
  br label %85

; <label>:85                                      ; preds = %85, %19
  %86 = phi i32 [ %69, %19 ], [ %172, %85 ]
  %87 = phi i32 [ 0, %19 ], [ %174, %85 ]
  %88 = phi i32 [ %69, %19 ], [ %176, %85 ]
  %89 = phi i32 [ 0, %19 ], [ %178, %85 ]
  %90 = phi i32 [ 0, %19 ], [ %179, %85 ]
  %91 = uitofp i32 %90 to float
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = fmul fast float %94, %91
  %96 = call float @dx.op.unary.f32(i32 21, float %95)  ; Exp(value)
  %97 = fmul fast float %96, %93
  %98 = fsub fast float 4.000000e+00, %93
  %99 = fadd fast float %98, %97
  %100 = fmul fast float %29, 2.000000e+00
  %101 = fmul fast float %30, 2.000000e+00
  %102 = fsub fast float 1.000000e+00, %100
  %103 = fsub fast float 1.000000e+00, %101
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %108 = fmul fast float %105, %102
  %109 = fmul fast float %106, %102
  %110 = fmul fast float %107, %102
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fmul fast float %112, %103
  %116 = fmul fast float %113, %103
  %117 = fmul fast float %114, %103
  %118 = fadd fast float %115, %108
  %119 = fadd fast float %116, %109
  %120 = fadd fast float %117, %110
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fadd fast float %118, %122
  %126 = fadd fast float %119, %123
  %127 = fadd fast float %120, %124
  %128 = fmul fast float %125, %99
  %129 = fmul fast float %126, %99
  %130 = fmul fast float %127, %99
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fadd fast float %130, %134
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %139 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %140 = fsub fast float %132, %137
  %141 = fadd fast float %140, %128
  %142 = fadd fast float %141, %139
  %143 = fsub fast float %133, %138
  %144 = fadd fast float %143, %129
  %145 = fadd fast float %144, %139
  %146 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %147 = fmul fast float %142, %146
  %148 = fmul fast float %145, %146
  %149 = call float @dx.op.unary.f32(i32 7, float %147)  ; Saturate(value)
  %150 = call float @dx.op.unary.f32(i32 7, float %148)  ; Saturate(value)
  %151 = fsub fast float 1.000000e+00, %149
  %152 = fsub fast float 1.000000e+00, %150
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %9, float %151, float %152, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 2
  %157 = fmul fast float %156, %154
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %159 = fadd fast float %158, %157
  %160 = fcmp fast ogt float %154, 0.000000e+00
  %161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = and i32 %162, 32768
  %164 = icmp ne i32 %163, 0
  %165 = and i1 %160, %164
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 331)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %168 = fadd fast float %159, %167
  %169 = fcmp fast ole float %135, %168
  %170 = and i1 %165, %169
  %171 = call i32 @dx.op.binary.i32(i32 40, i32 %86, i32 %90)  ; UMin(a,b)
  %172 = select i1 %170, i32 %86, i32 %171
  %173 = call i32 @dx.op.binary.i32(i32 39, i32 %87, i32 %90)  ; UMax(a,b)
  %174 = select i1 %170, i32 %87, i32 %173
  %175 = call i32 @dx.op.binary.i32(i32 40, i32 %88, i32 %90)  ; UMin(a,b)
  %176 = select i1 %170, i32 %175, i32 %88
  %177 = call i32 @dx.op.binary.i32(i32 39, i32 %89, i32 %90)  ; UMax(a,b)
  %178 = select i1 %170, i32 %177, i32 %89
  %179 = add i32 %90, 1
  %180 = icmp ugt i32 %179, %84
  br i1 %180, label %181, label %85, !llvm.loop !24

; <label>:181                                     ; preds = %85
  %182 = uitofp i32 %172 to float
  %183 = uitofp i32 %174 to float
  %184 = fadd fast float %182, 0x3F70101020000000
  %185 = fadd fast float %183, 0x3F70101020000000
  %186 = fmul fast float %184, 0x3F70101020000000
  %187 = fmul fast float %185, 0x3F70101020000000
  %188 = uitofp i32 %176 to float
  %189 = uitofp i32 %178 to float
  %190 = fadd fast float %188, 0x3F70101020000000
  %191 = fadd fast float %189, 0x3F70101020000000
  %192 = fmul fast float %190, 0x3F70101020000000
  %193 = fmul fast float %191, 0x3F70101020000000
  %194 = call float @dx.op.binary.f32(i32 35, float %187, float %193)  ; FMax(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %11, i32 %12, i32 0, float %194, float %194, float %194, float %194, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %11, i32 %12, i32 1, float %186, float %186, float %186, float %186, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %11, i32 %12, i32 2, float %187, float %187, float %187, float %187, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %11, i32 %12, i32 3, float %192, float %192, float %192, float %192, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %4, i32 %11, i32 %12, i32 4, float %193, float %193, float %193, float %193, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %195 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 49)  ; CBufferLoadLegacy(handle,regIndex)
  %196 = extractvalue %dx.types.CBufRet.i32 %195, 0
  %197 = extractvalue %dx.types.CBufRet.i32 %195, 1
  %198 = icmp uge i32 %11, %196
  %199 = icmp uge i32 %12, %197
  %200 = or i1 %198, %199
  br i1 %200, label %269, label %201, !dx.controlflow.hints !26

; <label>:201                                     ; preds = %181
  %202 = fmul fast float %22, 4.000000e+00
  %203 = fmul fast float %23, 4.000000e+00
  %204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 393)  ; CBufferLoadLegacy(handle,regIndex)
  %205 = extractvalue %dx.types.CBufRet.f32 %204, 0
  %206 = extractvalue %dx.types.CBufRet.f32 %204, 1
  %207 = fmul fast float %202, %205
  %208 = fmul fast float %203, %206
  %209 = call float @dx.op.unary.f32(i32 7, float %207)  ; Saturate(value)
  %210 = call float @dx.op.unary.f32(i32 7, float %208)  ; Saturate(value)
  %211 = call %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32 73, %dx.types.Handle %7, %dx.types.Handle %9, float %209, float %210, float undef, float undef, i32 0, i32 0, i32 0)  ; TextureGather(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,channel)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 1
  %214 = extractvalue %dx.types.ResRet.f32 %211, 2
  %215 = extractvalue %dx.types.ResRet.f32 %211, 3
  %216 = fcmp fast ogt float %212, -1.000000e+00
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %219 = select i1 %216, float %218, float 1.000000e+00
  %220 = fadd fast float %212, 1.000000e+00
  %221 = fmul fast float %219, %220
  %222 = call float @dx.op.unary.f32(i32 6, float %221)  ; FAbs(value)
  %223 = fcmp fast ogt float %213, -1.000000e+00
  %224 = select i1 %223, float %218, float 1.000000e+00
  %225 = fadd fast float %213, 1.000000e+00
  %226 = fmul fast float %224, %225
  %227 = call float @dx.op.unary.f32(i32 6, float %226)  ; FAbs(value)
  %228 = fcmp fast ogt float %214, -1.000000e+00
  %229 = select i1 %228, float %218, float 1.000000e+00
  %230 = fadd fast float %214, 1.000000e+00
  %231 = fmul fast float %229, %230
  %232 = call float @dx.op.unary.f32(i32 6, float %231)  ; FAbs(value)
  %233 = fcmp fast ogt float %215, -1.000000e+00
  %234 = select i1 %233, float %218, float 1.000000e+00
  %235 = fadd fast float %215, 1.000000e+00
  %236 = fmul fast float %234, %235
  %237 = call float @dx.op.unary.f32(i32 6, float %236)  ; FAbs(value)
  %238 = call float @dx.op.binary.f32(i32 35, float %227, float %232)  ; FMax(a,b)
  %239 = call float @dx.op.binary.f32(i32 35, float %222, float %238)  ; FMax(a,b)
  %240 = call float @dx.op.binary.f32(i32 35, float %239, float %237)  ; FMax(a,b)
  %241 = call float @dx.op.binary.f32(i32 35, float 0xBF10000000000000, float %240)  ; FMax(a,b)
  %242 = fcmp fast ogt float %241, 0.000000e+00
  %243 = extractvalue %dx.types.CBufRet.f32 %217, 0
  %244 = select i1 %242, float %243, float 1.000000e+00
  %245 = fmul fast float %244, %241
  %246 = fadd fast float %245, -1.000000e+00
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %11, i32 %12, i32 undef, float %246, float %246, float %246, float %246, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %247 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %248 = extractvalue %dx.types.CBufRet.i32 %247, 1
  %249 = add i32 %248, -1
  %250 = uitofp i32 %249 to float
  %251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %252 = extractvalue %dx.types.CBufRet.f32 %251, 0
  %253 = extractvalue %dx.types.CBufRet.f32 %251, 2
  %254 = extractvalue %dx.types.CBufRet.f32 %251, 3
  %255 = fadd fast float %241, -4.000000e+00
  %256 = call float @dx.op.binary.f32(i32 35, float %255, float 0.000000e+00)  ; FMax(a,b)
  %257 = fadd fast float %256, %252
  %258 = fmul fast float %257, %253
  %259 = call float @dx.op.unary.f32(i32 23, float %258)  ; Log(value)
  %260 = fmul fast float %254, 2.500000e-01
  %261 = fmul fast float %260, %259
  %262 = fadd fast float %261, 1.000000e+00
  %263 = call float @dx.op.binary.f32(i32 35, float %262, float 0.000000e+00)  ; FMax(a,b)
  %264 = call float @dx.op.binary.f32(i32 36, float %263, float %250)  ; FMin(a,b)
  %265 = fptoui float %264 to i32
  %266 = uitofp i32 %265 to float
  %267 = fadd fast float %266, 0x3F70101020000000
  %268 = fmul fast float %267, 0x3F70101020000000
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %11, i32 %12, i32 0, float %268, float %268, float %268, float %268, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %269

; <label>:269                                     ; preds = %201, %181, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureGather.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !11, !16, !18}
!5 = !{!6, !8, !9, !10}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 16, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 17, i32 1, i32 2, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 0, i32 27, i32 1, i32 2, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 44, i32 1, i32 11, i32 0, null}
!11 = !{!12, !13, !14, !15}
!12 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!13 = !{i32 1, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 3, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!14 = !{i32 2, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!15 = !{i32 3, %"class.RWTexture2D<float>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!16 = !{!17}
!17 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!18 = !{!19}
!19 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!20 = !{void ()* @cs_max_floatz, !"cs_max_floatz", null, !4, !21}
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 8, i32 8, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 1}

