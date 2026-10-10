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
; shader hash: ae9c102487ad8a6e7f4861d1645bbf85
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
;   [80 x i8] (type annotation not present)
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
;                                   texture     f32          2d      T0             t1     1
;                                   texture     f32        2dMS      T1             t0     1
;                                   texture     u32          2d      T2             t2     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
%"class.Texture2DMS<vector<float, 4>, 0>" = type { <4 x float>, %"class.Texture2DMS<vector<float, 4>, 0>::sample_type" }
%"class.Texture2DMS<vector<float, 4>, 0>::sample_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.RWTexture2D<vector<float, 4> >" = type { <4 x float> }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }
%VeilSampleConsts = type { <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float> }
%struct.SamplerState = type { i32 }

@"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim" = addrspace(3) global [300 x float] undef, align 4

define void @cs_downsample_veil() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %9 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %10 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %12 = uitofp i32 %8 to float
  %13 = uitofp i32 %9 to float
  %14 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %15 = extractvalue %dx.types.CBufRet.f32 %14, 2
  %16 = extractvalue %dx.types.CBufRet.f32 %14, 3
  %17 = fcmp fast olt float %12, %15
  %18 = fcmp fast olt float %13, %16
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %380, !dx.controlflow.hints !21

; <label>:20                                      ; preds = %0
  %21 = extractvalue %dx.types.CBufRet.f32 %14, 0
  %22 = extractvalue %dx.types.CBufRet.f32 %14, 1
  %23 = fadd fast float %21, %12
  %24 = fadd fast float %22, %13
  %25 = fptoui float %23 to i32
  %26 = fptoui float %24 to i32
  %27 = shl i32 %11, 3
  %28 = add i32 %27, %10
  %29 = icmp ult i32 %28, 50
  br i1 %29, label %30, label %218, !dx.controlflow.hints !22

; <label>:30                                      ; preds = %20
  %31 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %32 = shl i32 %31, 3
  %33 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %34 = shl i32 %33, 3
  %35 = urem i32 %28, 10
  %36 = udiv i32 %28, 10
  %37 = add i32 %34, -1
  %38 = add i32 %32, -1
  %39 = add i32 %37, %35
  %40 = add i32 %38, %36
  %41 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %42 = extractvalue %dx.types.CBufRet.f32 %41, 2
  %43 = extractvalue %dx.types.CBufRet.f32 %41, 3
  %44 = uitofp i32 %39 to float
  %45 = uitofp i32 %40 to float
  %46 = fmul fast float %42, %44
  %47 = fmul fast float %43, %45
  %48 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %49 = extractvalue %dx.types.CBufRet.f32 %48, 2
  %50 = extractvalue %dx.types.CBufRet.f32 %48, 0
  %51 = call float @dx.op.binary.f32(i32 35, float %46, float %50)  ; FMax(a,b)
  %52 = call float @dx.op.binary.f32(i32 36, float %51, float %49)  ; FMin(a,b)
  %53 = call float @dx.op.binary.f32(i32 36, float %46, float %50)  ; FMin(a,b)
  %54 = call float @dx.op.binary.f32(i32 35, float %53, float %52)  ; FMax(a,b)
  %55 = fcmp fast oeq float %46, %54
  %56 = extractvalue %dx.types.CBufRet.f32 %48, 3
  %57 = extractvalue %dx.types.CBufRet.f32 %48, 1
  %58 = call float @dx.op.binary.f32(i32 35, float %47, float %57)  ; FMax(a,b)
  %59 = call float @dx.op.binary.f32(i32 36, float %58, float %56)  ; FMin(a,b)
  %60 = call float @dx.op.binary.f32(i32 36, float %47, float %57)  ; FMin(a,b)
  %61 = call float @dx.op.binary.f32(i32 35, float %60, float %59)  ; FMax(a,b)
  %62 = fcmp fast oeq float %47, %61
  %63 = and i1 %55, %62
  br i1 %63, label %64, label %71, !dx.controlflow.hints !23

; <label>:64                                      ; preds = %30
  %65 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %46, float %47, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %66 = extractvalue %dx.types.ResRet.f32 %65, 0
  %67 = fsub fast float 1.000000e+00, %66
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 0
  %70 = fcmp fast olt float %67, %69
  br label %71

; <label>:71                                      ; preds = %64, %30
  %72 = phi i1 [ %70, %64 ], [ false, %30 ]
  %73 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %74 = extractvalue %dx.types.ResRet.i32 %73, 0
  %75 = and i32 %74, 1
  %76 = shl i32 1, %75
  %77 = and i32 %74, 2
  %78 = shl i32 1, %77
  %79 = and i32 %74, 3
  %80 = shl i32 1, %79
  %81 = or i32 %78, %76
  %82 = or i32 %81, %80
  %83 = or i32 %82, 1
  br label %84

; <label>:84                                      ; preds = %84, %71
  %85 = phi float [ 0.000000e+00, %71 ], [ %105, %84 ]
  %86 = phi float [ 0.000000e+00, %71 ], [ %106, %84 ]
  %87 = phi float [ 0.000000e+00, %71 ], [ %107, %84 ]
  %88 = phi float [ 0.000000e+00, %71 ], [ %101, %84 ]
  %89 = phi i32 [ %83, %71 ], [ %94, %84 ]
  %90 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %89)  ; FirstbitLo(value)
  %91 = and i32 %90, 31
  %92 = shl i32 1, %91
  %93 = xor i32 %92, -1
  %94 = and i32 %89, %93
  %95 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %90, i32 %39, i32 %40, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %96 = extractvalue %dx.types.ResRet.f32 %95, 0
  %97 = extractvalue %dx.types.ResRet.f32 %95, 1
  %98 = extractvalue %dx.types.ResRet.f32 %95, 2
  %99 = select i1 %72, float %96, float %97
  %100 = select i1 %72, float %96, float %98
  %101 = fadd fast float %88, 1.000000e+00
  %102 = call float @dx.op.unary.f32(i32 23, float %96)  ; Log(value)
  %103 = call float @dx.op.unary.f32(i32 23, float %99)  ; Log(value)
  %104 = call float @dx.op.unary.f32(i32 23, float %100)  ; Log(value)
  %105 = fadd fast float %102, %85
  %106 = fadd fast float %103, %86
  %107 = fadd fast float %104, %87
  %108 = icmp eq i32 %94, 0
  br i1 %108, label %109, label %84

; <label>:109                                     ; preds = %84
  %110 = call float @dx.op.binary.f32(i32 35, float %101, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %111 = fdiv fast float 1.000000e+00, %110
  %112 = fmul fast float %111, %105
  %113 = fmul fast float %111, %106
  %114 = fmul fast float %111, %107
  %115 = mul i32 %28, 3
  %116 = add i32 0, %115
  %117 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %116
  store float %112, float addrspace(3)* %117, align 4
  %118 = mul i32 %28, 3
  %119 = add i32 1, %118
  %120 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %119
  store float %113, float addrspace(3)* %120, align 4
  %121 = mul i32 %28, 3
  %122 = add i32 2, %121
  %123 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %122
  store float %114, float addrspace(3)* %123, align 4
  %124 = add i32 %28, 50
  %125 = urem i32 %124, 10
  %126 = udiv i32 %124, 10
  %127 = add i32 %37, %125
  %128 = add i32 %38, %126
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 3
  %132 = uitofp i32 %127 to float
  %133 = uitofp i32 %128 to float
  %134 = fmul fast float %130, %132
  %135 = fmul fast float %131, %133
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 2
  %138 = extractvalue %dx.types.CBufRet.f32 %136, 0
  %139 = call float @dx.op.binary.f32(i32 35, float %134, float %138)  ; FMax(a,b)
  %140 = call float @dx.op.binary.f32(i32 36, float %139, float %137)  ; FMin(a,b)
  %141 = call float @dx.op.binary.f32(i32 36, float %134, float %138)  ; FMin(a,b)
  %142 = call float @dx.op.binary.f32(i32 35, float %141, float %140)  ; FMax(a,b)
  %143 = fcmp fast oeq float %134, %142
  %144 = extractvalue %dx.types.CBufRet.f32 %136, 3
  %145 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %146 = call float @dx.op.binary.f32(i32 35, float %135, float %145)  ; FMax(a,b)
  %147 = call float @dx.op.binary.f32(i32 36, float %146, float %144)  ; FMin(a,b)
  %148 = call float @dx.op.binary.f32(i32 36, float %135, float %145)  ; FMin(a,b)
  %149 = call float @dx.op.binary.f32(i32 35, float %148, float %147)  ; FMax(a,b)
  %150 = fcmp fast oeq float %135, %149
  %151 = and i1 %143, %150
  br i1 %151, label %152, label %159, !dx.controlflow.hints !23

; <label>:152                                     ; preds = %109
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %134, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = fsub fast float 1.000000e+00, %154
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = fcmp fast olt float %155, %157
  br label %159

; <label>:159                                     ; preds = %152, %109
  %160 = phi i1 [ %158, %152 ], [ false, %109 ]
  %161 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %127, i32 %128, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %162 = extractvalue %dx.types.ResRet.i32 %161, 0
  %163 = and i32 %162, 1
  %164 = shl i32 1, %163
  %165 = and i32 %162, 2
  %166 = shl i32 1, %165
  %167 = and i32 %162, 3
  %168 = shl i32 1, %167
  %169 = or i32 %166, %164
  %170 = or i32 %169, %168
  %171 = or i32 %170, 1
  br label %172

; <label>:172                                     ; preds = %172, %159
  %173 = phi float [ 0.000000e+00, %159 ], [ %193, %172 ]
  %174 = phi float [ 0.000000e+00, %159 ], [ %194, %172 ]
  %175 = phi float [ 0.000000e+00, %159 ], [ %195, %172 ]
  %176 = phi float [ 0.000000e+00, %159 ], [ %189, %172 ]
  %177 = phi i32 [ %171, %159 ], [ %182, %172 ]
  %178 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %177)  ; FirstbitLo(value)
  %179 = and i32 %178, 31
  %180 = shl i32 1, %179
  %181 = xor i32 %180, -1
  %182 = and i32 %177, %181
  %183 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %178, i32 %127, i32 %128, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = extractvalue %dx.types.ResRet.f32 %183, 1
  %186 = extractvalue %dx.types.ResRet.f32 %183, 2
  %187 = select i1 %160, float %184, float %185
  %188 = select i1 %160, float %184, float %186
  %189 = fadd fast float %176, 1.000000e+00
  %190 = call float @dx.op.unary.f32(i32 23, float %184)  ; Log(value)
  %191 = call float @dx.op.unary.f32(i32 23, float %187)  ; Log(value)
  %192 = call float @dx.op.unary.f32(i32 23, float %188)  ; Log(value)
  %193 = fadd fast float %190, %173
  %194 = fadd fast float %191, %174
  %195 = fadd fast float %192, %175
  %196 = icmp eq i32 %182, 0
  br i1 %196, label %197, label %172

; <label>:197                                     ; preds = %172
  %198 = call float @dx.op.binary.f32(i32 35, float %189, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %199 = fdiv fast float 1.000000e+00, %198
  %200 = fmul fast float %199, %193
  %201 = fmul fast float %199, %194
  %202 = fmul fast float %199, %195
  %203 = mul i32 %124, 3
  %204 = add i32 0, %203
  %205 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %204
  store float %200, float addrspace(3)* %205, align 4
  %206 = mul i32 %124, 3
  %207 = add i32 1, %206
  %208 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %207
  store float %201, float addrspace(3)* %208, align 4
  %209 = mul i32 %124, 3
  %210 = add i32 2, %209
  %211 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %210
  store float %202, float addrspace(3)* %211, align 4
  %212 = fmul float %112, 0x3FDC496680000000
  %213 = fmul float %113, 0x3FDC496680000000
  %214 = fmul float %114, 0x3FDC496680000000
  %215 = fmul float %200, 0x3FDC496680000000
  %216 = fmul float %201, 0x3FDC496680000000
  %217 = fmul float %202, 0x3FDC496680000000
  br label %218

; <label>:218                                     ; preds = %197, %20
  %219 = phi float [ %212, %197 ], [ 0.000000e+00, %20 ]
  %220 = phi float [ %213, %197 ], [ 0.000000e+00, %20 ]
  %221 = phi float [ %214, %197 ], [ 0.000000e+00, %20 ]
  %222 = phi float [ %215, %197 ], [ 0.000000e+00, %20 ]
  %223 = phi float [ %216, %197 ], [ 0.000000e+00, %20 ]
  %224 = phi float [ %217, %197 ], [ 0.000000e+00, %20 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %29, label %225, label %315, !dx.controlflow.hints !24

; <label>:225                                     ; preds = %218
  %226 = add i32 %28, -1
  %227 = mul i32 %226, 3
  %228 = add i32 0, %227
  %229 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %228
  %230 = load float, float addrspace(3)* %229, align 4
  %231 = mul i32 %226, 3
  %232 = add i32 1, %231
  %233 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %232
  %234 = load float, float addrspace(3)* %233, align 4
  %235 = mul i32 %226, 3
  %236 = add i32 2, %235
  %237 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %236
  %238 = load float, float addrspace(3)* %237, align 4
  %239 = add i32 %28, 1
  %240 = mul i32 %239, 3
  %241 = add i32 0, %240
  %242 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %241
  %243 = load float, float addrspace(3)* %242, align 4
  %244 = mul i32 %239, 3
  %245 = add i32 1, %244
  %246 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %245
  %247 = load float, float addrspace(3)* %246, align 4
  %248 = mul i32 %239, 3
  %249 = add i32 2, %248
  %250 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %249
  %251 = load float, float addrspace(3)* %250, align 4
  %252 = fadd fast float %243, %230
  %253 = fmul fast float %252, 0x3FD1DB4CC0000000
  %254 = fadd fast float %253, %219
  %255 = fadd fast float %247, %234
  %256 = fmul fast float %255, 0x3FD1DB4CC0000000
  %257 = fadd fast float %256, %220
  %258 = fadd fast float %251, %238
  %259 = fmul fast float %258, 0x3FD1DB4CC0000000
  %260 = fadd fast float %259, %221
  %261 = mul i32 %28, 3
  %262 = add i32 0, %261
  %263 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %262
  store float %254, float addrspace(3)* %263, align 4
  %264 = mul i32 %28, 3
  %265 = add i32 1, %264
  %266 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %265
  store float %257, float addrspace(3)* %266, align 4
  %267 = mul i32 %28, 3
  %268 = add i32 2, %267
  %269 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %268
  store float %260, float addrspace(3)* %269, align 4
  %270 = add i32 %28, 50
  %271 = add i32 %28, 49
  %272 = mul i32 %271, 3
  %273 = add i32 0, %272
  %274 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %273
  %275 = load float, float addrspace(3)* %274, align 4
  %276 = mul i32 %271, 3
  %277 = add i32 1, %276
  %278 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %277
  %279 = load float, float addrspace(3)* %278, align 4
  %280 = mul i32 %271, 3
  %281 = add i32 2, %280
  %282 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %281
  %283 = load float, float addrspace(3)* %282, align 4
  %284 = add i32 %28, 51
  %285 = mul i32 %284, 3
  %286 = add i32 0, %285
  %287 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %286
  %288 = load float, float addrspace(3)* %287, align 4
  %289 = mul i32 %284, 3
  %290 = add i32 1, %289
  %291 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %290
  %292 = load float, float addrspace(3)* %291, align 4
  %293 = mul i32 %284, 3
  %294 = add i32 2, %293
  %295 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %294
  %296 = load float, float addrspace(3)* %295, align 4
  %297 = fadd fast float %288, %275
  %298 = fmul fast float %297, 0x3FD1DB4CC0000000
  %299 = fadd fast float %298, %222
  %300 = fadd fast float %292, %279
  %301 = fmul fast float %300, 0x3FD1DB4CC0000000
  %302 = fadd fast float %301, %223
  %303 = fadd fast float %296, %283
  %304 = fmul fast float %303, 0x3FD1DB4CC0000000
  %305 = fadd fast float %304, %224
  %306 = mul i32 %270, 3
  %307 = add i32 0, %306
  %308 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %307
  store float %299, float addrspace(3)* %308, align 4
  %309 = mul i32 %270, 3
  %310 = add i32 1, %309
  %311 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %310
  store float %302, float addrspace(3)* %311, align 4
  %312 = mul i32 %270, 3
  %313 = add i32 2, %312
  %314 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %313
  store float %305, float addrspace(3)* %314, align 4
  br label %315

; <label>:315                                     ; preds = %225, %218
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %316 = add i32 %10, 1
  %317 = mul i32 %11, 10
  %318 = add i32 %317, %316
  %319 = mul i32 %318, 3
  %320 = add i32 0, %319
  %321 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %320
  %322 = load float, float addrspace(3)* %321, align 4
  %323 = mul i32 %318, 3
  %324 = add i32 1, %323
  %325 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %324
  %326 = load float, float addrspace(3)* %325, align 4
  %327 = mul i32 %318, 3
  %328 = add i32 2, %327
  %329 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %328
  %330 = load float, float addrspace(3)* %329, align 4
  %331 = add i32 %10, 11
  %332 = add i32 %331, %317
  %333 = mul i32 %332, 3
  %334 = add i32 0, %333
  %335 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %334
  %336 = load float, float addrspace(3)* %335, align 4
  %337 = mul i32 %332, 3
  %338 = add i32 1, %337
  %339 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %338
  %340 = load float, float addrspace(3)* %339, align 4
  %341 = mul i32 %332, 3
  %342 = add i32 2, %341
  %343 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %342
  %344 = load float, float addrspace(3)* %343, align 4
  %345 = fmul fast float %336, 0x3FDC496680000000
  %346 = fmul fast float %340, 0x3FDC496680000000
  %347 = fmul fast float %344, 0x3FDC496680000000
  %348 = add i32 %10, 21
  %349 = add i32 %348, %317
  %350 = mul i32 %349, 3
  %351 = add i32 0, %350
  %352 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %351
  %353 = load float, float addrspace(3)* %352, align 4
  %354 = mul i32 %349, 3
  %355 = add i32 1, %354
  %356 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %355
  %357 = load float, float addrspace(3)* %356, align 4
  %358 = mul i32 %349, 3
  %359 = add i32 2, %358
  %360 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %359
  %361 = load float, float addrspace(3)* %360, align 4
  %362 = fadd fast float %353, %322
  %363 = fmul fast float %362, 0x3FD1DB4CC0000000
  %364 = fadd fast float %363, %345
  %365 = fadd fast float %357, %326
  %366 = fmul fast float %365, 0x3FD1DB4CC0000000
  %367 = fadd fast float %366, %346
  %368 = fadd fast float %361, %330
  %369 = fmul fast float %368, 0x3FD1DB4CC0000000
  %370 = fadd fast float %369, %347
  %371 = call float @dx.op.unary.f32(i32 21, float %364)  ; Exp(value)
  %372 = call float @dx.op.unary.f32(i32 21, float %367)  ; Exp(value)
  %373 = call float @dx.op.unary.f32(i32 21, float %370)  ; Exp(value)
  %374 = call float @dx.op.binary.f32(i32 35, float %371, float -3.225500e+04)  ; FMax(a,b)
  %375 = call float @dx.op.binary.f32(i32 35, float %372, float -3.225500e+04)  ; FMax(a,b)
  %376 = call float @dx.op.binary.f32(i32 35, float %373, float -3.225500e+04)  ; FMax(a,b)
  %377 = call float @dx.op.binary.f32(i32 36, float %374, float 3.225500e+04)  ; FMin(a,b)
  %378 = call float @dx.op.binary.f32(i32 36, float %375, float 3.225500e+04)  ; FMin(a,b)
  %379 = call float @dx.op.binary.f32(i32 36, float %376, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 undef, float %377, float %378, float %379, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %380

; <label>:380                                     ; preds = %315, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

attributes #0 = { nounwind readnone }
attributes #1 = { noduplicate nounwind }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly }

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
!4 = !{!5, !11, !13, !16}
!5 = !{!6, !8, !9}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2DMS<vector<float, 4>, 0>"* undef, !"", i32 0, i32 0, i32 1, i32 3, i32 0, !7}
!9 = !{i32 2, %"class.Texture2D<unsigned int>"* undef, !"", i32 0, i32 2, i32 1, i32 2, i32 0, !10}
!10 = !{i32 0, i32 5}
!11 = !{!12}
!12 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!13 = !{!14, !15}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{i32 1, %VeilSampleConsts* undef, !"", i32 0, i32 0, i32 1, i32 80, null}
!16 = !{!17}
!17 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!18 = !{void ()* @cs_downsample_veil, !"cs_downsample_veil", null, !4, !19}
!19 = !{i32 0, i64 256, i32 4, !20}
!20 = !{i32 8, i32 8, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 1}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}

