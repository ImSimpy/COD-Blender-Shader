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
; shader hash: a348bd5c58494bfec522b8b76171f722
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
  br i1 %19, label %20, label %371, !dx.controlflow.hints !21

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
  br i1 %29, label %30, label %212, !dx.controlflow.hints !22

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
  %85 = phi float [ 0.000000e+00, %71 ], [ %102, %84 ]
  %86 = phi float [ 0.000000e+00, %71 ], [ %103, %84 ]
  %87 = phi float [ 0.000000e+00, %71 ], [ %104, %84 ]
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
  %102 = fadd fast float %96, %85
  %103 = fadd fast float %99, %86
  %104 = fadd fast float %100, %87
  %105 = icmp eq i32 %94, 0
  br i1 %105, label %106, label %84

; <label>:106                                     ; preds = %84
  %107 = call float @dx.op.binary.f32(i32 35, float %101, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %108 = fdiv fast float 1.000000e+00, %107
  %109 = fmul fast float %108, %102
  %110 = fmul fast float %108, %103
  %111 = fmul fast float %108, %104
  %112 = mul i32 %28, 3
  %113 = add i32 0, %112
  %114 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %113
  store float %109, float addrspace(3)* %114, align 4
  %115 = mul i32 %28, 3
  %116 = add i32 1, %115
  %117 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %116
  store float %110, float addrspace(3)* %117, align 4
  %118 = mul i32 %28, 3
  %119 = add i32 2, %118
  %120 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %119
  store float %111, float addrspace(3)* %120, align 4
  %121 = add i32 %28, 50
  %122 = urem i32 %121, 10
  %123 = udiv i32 %121, 10
  %124 = add i32 %37, %122
  %125 = add i32 %38, %123
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %6, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 3
  %129 = uitofp i32 %124 to float
  %130 = uitofp i32 %125 to float
  %131 = fmul fast float %127, %129
  %132 = fmul fast float %128, %130
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 228)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 2
  %135 = extractvalue %dx.types.CBufRet.f32 %133, 0
  %136 = call float @dx.op.binary.f32(i32 35, float %131, float %135)  ; FMax(a,b)
  %137 = call float @dx.op.binary.f32(i32 36, float %136, float %134)  ; FMin(a,b)
  %138 = call float @dx.op.binary.f32(i32 36, float %131, float %135)  ; FMin(a,b)
  %139 = call float @dx.op.binary.f32(i32 35, float %138, float %137)  ; FMax(a,b)
  %140 = fcmp fast oeq float %131, %139
  %141 = extractvalue %dx.types.CBufRet.f32 %133, 3
  %142 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %143 = call float @dx.op.binary.f32(i32 35, float %132, float %142)  ; FMax(a,b)
  %144 = call float @dx.op.binary.f32(i32 36, float %143, float %141)  ; FMin(a,b)
  %145 = call float @dx.op.binary.f32(i32 36, float %132, float %142)  ; FMin(a,b)
  %146 = call float @dx.op.binary.f32(i32 35, float %145, float %144)  ; FMax(a,b)
  %147 = fcmp fast oeq float %132, %146
  %148 = and i1 %140, %147
  br i1 %148, label %149, label %156, !dx.controlflow.hints !23

; <label>:149                                     ; preds = %106
  %150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %5, float %131, float %132, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %151 = extractvalue %dx.types.ResRet.f32 %150, 0
  %152 = fsub fast float 1.000000e+00, %151
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.f32 %153, 0
  %155 = fcmp fast olt float %152, %154
  br label %156

; <label>:156                                     ; preds = %149, %106
  %157 = phi i1 [ %155, %149 ], [ false, %106 ]
  %158 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %2, i32 0, i32 %124, i32 %125, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %159 = extractvalue %dx.types.ResRet.i32 %158, 0
  %160 = and i32 %159, 1
  %161 = shl i32 1, %160
  %162 = and i32 %159, 2
  %163 = shl i32 1, %162
  %164 = and i32 %159, 3
  %165 = shl i32 1, %164
  %166 = or i32 %163, %161
  %167 = or i32 %166, %165
  %168 = or i32 %167, 1
  br label %169

; <label>:169                                     ; preds = %169, %156
  %170 = phi float [ 0.000000e+00, %156 ], [ %187, %169 ]
  %171 = phi float [ 0.000000e+00, %156 ], [ %188, %169 ]
  %172 = phi float [ 0.000000e+00, %156 ], [ %189, %169 ]
  %173 = phi float [ 0.000000e+00, %156 ], [ %186, %169 ]
  %174 = phi i32 [ %168, %156 ], [ %179, %169 ]
  %175 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %174)  ; FirstbitLo(value)
  %176 = and i32 %175, 31
  %177 = shl i32 1, %176
  %178 = xor i32 %177, -1
  %179 = and i32 %174, %178
  %180 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 %175, i32 %124, i32 %125, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = extractvalue %dx.types.ResRet.f32 %180, 1
  %183 = extractvalue %dx.types.ResRet.f32 %180, 2
  %184 = select i1 %157, float %181, float %182
  %185 = select i1 %157, float %181, float %183
  %186 = fadd fast float %173, 1.000000e+00
  %187 = fadd fast float %181, %170
  %188 = fadd fast float %184, %171
  %189 = fadd fast float %185, %172
  %190 = icmp eq i32 %179, 0
  br i1 %190, label %191, label %169

; <label>:191                                     ; preds = %169
  %192 = call float @dx.op.binary.f32(i32 35, float %186, float 0x3EE4F8B580000000)  ; FMax(a,b)
  %193 = fdiv fast float 1.000000e+00, %192
  %194 = fmul fast float %193, %187
  %195 = fmul fast float %193, %188
  %196 = fmul fast float %193, %189
  %197 = mul i32 %121, 3
  %198 = add i32 0, %197
  %199 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %198
  store float %194, float addrspace(3)* %199, align 4
  %200 = mul i32 %121, 3
  %201 = add i32 1, %200
  %202 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %201
  store float %195, float addrspace(3)* %202, align 4
  %203 = mul i32 %121, 3
  %204 = add i32 2, %203
  %205 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %204
  store float %196, float addrspace(3)* %205, align 4
  %206 = fmul float %109, 0x3FDC496680000000
  %207 = fmul float %110, 0x3FDC496680000000
  %208 = fmul float %111, 0x3FDC496680000000
  %209 = fmul float %194, 0x3FDC496680000000
  %210 = fmul float %195, 0x3FDC496680000000
  %211 = fmul float %196, 0x3FDC496680000000
  br label %212

; <label>:212                                     ; preds = %191, %20
  %213 = phi float [ %206, %191 ], [ 0.000000e+00, %20 ]
  %214 = phi float [ %207, %191 ], [ 0.000000e+00, %20 ]
  %215 = phi float [ %208, %191 ], [ 0.000000e+00, %20 ]
  %216 = phi float [ %209, %191 ], [ 0.000000e+00, %20 ]
  %217 = phi float [ %210, %191 ], [ 0.000000e+00, %20 ]
  %218 = phi float [ %211, %191 ], [ 0.000000e+00, %20 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %29, label %219, label %309, !dx.controlflow.hints !24

; <label>:219                                     ; preds = %212
  %220 = add i32 %28, -1
  %221 = mul i32 %220, 3
  %222 = add i32 0, %221
  %223 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %222
  %224 = load float, float addrspace(3)* %223, align 4
  %225 = mul i32 %220, 3
  %226 = add i32 1, %225
  %227 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %226
  %228 = load float, float addrspace(3)* %227, align 4
  %229 = mul i32 %220, 3
  %230 = add i32 2, %229
  %231 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %230
  %232 = load float, float addrspace(3)* %231, align 4
  %233 = add i32 %28, 1
  %234 = mul i32 %233, 3
  %235 = add i32 0, %234
  %236 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %235
  %237 = load float, float addrspace(3)* %236, align 4
  %238 = mul i32 %233, 3
  %239 = add i32 1, %238
  %240 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %239
  %241 = load float, float addrspace(3)* %240, align 4
  %242 = mul i32 %233, 3
  %243 = add i32 2, %242
  %244 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %243
  %245 = load float, float addrspace(3)* %244, align 4
  %246 = fadd fast float %237, %224
  %247 = fmul fast float %246, 0x3FD1DB4CC0000000
  %248 = fadd fast float %247, %213
  %249 = fadd fast float %241, %228
  %250 = fmul fast float %249, 0x3FD1DB4CC0000000
  %251 = fadd fast float %250, %214
  %252 = fadd fast float %245, %232
  %253 = fmul fast float %252, 0x3FD1DB4CC0000000
  %254 = fadd fast float %253, %215
  %255 = mul i32 %28, 3
  %256 = add i32 0, %255
  %257 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %256
  store float %248, float addrspace(3)* %257, align 4
  %258 = mul i32 %28, 3
  %259 = add i32 1, %258
  %260 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %259
  store float %251, float addrspace(3)* %260, align 4
  %261 = mul i32 %28, 3
  %262 = add i32 2, %261
  %263 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %262
  store float %254, float addrspace(3)* %263, align 4
  %264 = add i32 %28, 50
  %265 = add i32 %28, 49
  %266 = mul i32 %265, 3
  %267 = add i32 0, %266
  %268 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %267
  %269 = load float, float addrspace(3)* %268, align 4
  %270 = mul i32 %265, 3
  %271 = add i32 1, %270
  %272 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %271
  %273 = load float, float addrspace(3)* %272, align 4
  %274 = mul i32 %265, 3
  %275 = add i32 2, %274
  %276 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %275
  %277 = load float, float addrspace(3)* %276, align 4
  %278 = add i32 %28, 51
  %279 = mul i32 %278, 3
  %280 = add i32 0, %279
  %281 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %280
  %282 = load float, float addrspace(3)* %281, align 4
  %283 = mul i32 %278, 3
  %284 = add i32 1, %283
  %285 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %284
  %286 = load float, float addrspace(3)* %285, align 4
  %287 = mul i32 %278, 3
  %288 = add i32 2, %287
  %289 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %288
  %290 = load float, float addrspace(3)* %289, align 4
  %291 = fadd fast float %282, %269
  %292 = fmul fast float %291, 0x3FD1DB4CC0000000
  %293 = fadd fast float %292, %216
  %294 = fadd fast float %286, %273
  %295 = fmul fast float %294, 0x3FD1DB4CC0000000
  %296 = fadd fast float %295, %217
  %297 = fadd fast float %290, %277
  %298 = fmul fast float %297, 0x3FD1DB4CC0000000
  %299 = fadd fast float %298, %218
  %300 = mul i32 %264, 3
  %301 = add i32 0, %300
  %302 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %301
  store float %293, float addrspace(3)* %302, align 4
  %303 = mul i32 %264, 3
  %304 = add i32 1, %303
  %305 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %304
  store float %296, float addrspace(3)* %305, align 4
  %306 = mul i32 %264, 3
  %307 = add i32 2, %306
  %308 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %307
  store float %299, float addrspace(3)* %308, align 4
  br label %309

; <label>:309                                     ; preds = %219, %212
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %310 = add i32 %10, 1
  %311 = mul i32 %11, 10
  %312 = add i32 %311, %310
  %313 = mul i32 %312, 3
  %314 = add i32 0, %313
  %315 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %314
  %316 = load float, float addrspace(3)* %315, align 4
  %317 = mul i32 %312, 3
  %318 = add i32 1, %317
  %319 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %318
  %320 = load float, float addrspace(3)* %319, align 4
  %321 = mul i32 %312, 3
  %322 = add i32 2, %321
  %323 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %322
  %324 = load float, float addrspace(3)* %323, align 4
  %325 = add i32 %10, 11
  %326 = add i32 %325, %311
  %327 = mul i32 %326, 3
  %328 = add i32 0, %327
  %329 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %328
  %330 = load float, float addrspace(3)* %329, align 4
  %331 = mul i32 %326, 3
  %332 = add i32 1, %331
  %333 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %332
  %334 = load float, float addrspace(3)* %333, align 4
  %335 = mul i32 %326, 3
  %336 = add i32 2, %335
  %337 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %336
  %338 = load float, float addrspace(3)* %337, align 4
  %339 = fmul fast float %330, 0x3FDC496680000000
  %340 = fmul fast float %334, 0x3FDC496680000000
  %341 = fmul fast float %338, 0x3FDC496680000000
  %342 = add i32 %10, 21
  %343 = add i32 %342, %311
  %344 = mul i32 %343, 3
  %345 = add i32 0, %344
  %346 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %345
  %347 = load float, float addrspace(3)* %346, align 4
  %348 = mul i32 %343, 3
  %349 = add i32 1, %348
  %350 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %349
  %351 = load float, float addrspace(3)* %350, align 4
  %352 = mul i32 %343, 3
  %353 = add i32 2, %352
  %354 = getelementptr [300 x float], [300 x float] addrspace(3)* @"\01?localStore@@3PAV?$vector@M$02@@A.v.1dim", i32 0, i32 %353
  %355 = load float, float addrspace(3)* %354, align 4
  %356 = fadd fast float %347, %316
  %357 = fmul fast float %356, 0x3FD1DB4CC0000000
  %358 = fadd fast float %357, %339
  %359 = fadd fast float %351, %320
  %360 = fmul fast float %359, 0x3FD1DB4CC0000000
  %361 = fadd fast float %360, %340
  %362 = fadd fast float %355, %324
  %363 = fmul fast float %362, 0x3FD1DB4CC0000000
  %364 = fadd fast float %363, %341
  %365 = call float @dx.op.binary.f32(i32 35, float %358, float -3.225500e+04)  ; FMax(a,b)
  %366 = call float @dx.op.binary.f32(i32 35, float %361, float -3.225500e+04)  ; FMax(a,b)
  %367 = call float @dx.op.binary.f32(i32 35, float %364, float -3.225500e+04)  ; FMax(a,b)
  %368 = call float @dx.op.binary.f32(i32 36, float %365, float 3.225500e+04)  ; FMin(a,b)
  %369 = call float @dx.op.binary.f32(i32 36, float %366, float 3.225500e+04)  ; FMin(a,b)
  %370 = call float @dx.op.binary.f32(i32 36, float %367, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %25, i32 %26, i32 undef, float %368, float %369, float %370, float 1.000000e+00, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %371

; <label>:371                                     ; preds = %309, %0
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

