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
; shader hash: a9c767653a7bffe7febbd4e8520a5c52
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
;                                   texture     f32          2d      T0             t0     1
;                                   texture     f32          2d      T1             t1     1
;                                       UAV     f32          2d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2D<vector<float, 4> >" = type { <4 x float>, %"class.Texture2D<vector<float, 4> >::mips_type" }
%"class.Texture2D<vector<float, 4> >::mips_type" = type { i32 }
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

define void @cs_blend() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = alloca [4 x float], align 4
  %8 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %9 = extractvalue %dx.types.CBufRet.f32 %8, 0
  %10 = extractvalue %dx.types.CBufRet.f32 %8, 1
  %11 = extractvalue %dx.types.CBufRet.f32 %8, 2
  %12 = extractvalue %dx.types.CBufRet.f32 %8, 3
  %13 = uitofp i32 %5 to float
  %14 = uitofp i32 %6 to float
  %15 = fadd fast float %13, 5.000000e-01
  %16 = fadd fast float %14, 5.000000e-01
  %17 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %5, i32 %6, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %18 = extractvalue %dx.types.ResRet.f32 %17, 0
  %19 = extractvalue %dx.types.ResRet.f32 %17, 1
  %20 = extractvalue %dx.types.ResRet.f32 %17, 2
  %21 = extractvalue %dx.types.ResRet.f32 %17, 3
  %22 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %5, i32 %6, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %23 = extractvalue %dx.types.ResRet.f32 %22, 0
  %24 = extractvalue %dx.types.ResRet.f32 %22, 1
  %25 = extractvalue %dx.types.ResRet.f32 %22, 2
  %26 = extractvalue %dx.types.ResRet.f32 %22, 3
  %27 = fsub fast float %23, %18
  %28 = fsub fast float %24, %19
  %29 = fsub fast float %25, %20
  %30 = fmul fast float %27, %26
  %31 = fmul fast float %28, %26
  %32 = fmul fast float %29, %26
  %33 = fadd fast float %30, %18
  %34 = fadd fast float %31, %19
  %35 = fadd fast float %32, %20
  br label %36

; <label>:36                                      ; preds = %199, %0
  %37 = phi float [ %33, %0 ], [ %191, %199 ]
  %38 = phi float [ %34, %0 ], [ %192, %199 ]
  %39 = phi float [ %35, %0 ], [ %193, %199 ]
  %40 = phi i32 [ 0, %0 ], [ %200, %199 ]
  %41 = fmul fast float %9, 5.000000e-01
  %42 = shl i32 %40, 1
  %43 = uitofp i32 %42 to float
  %44 = fadd fast float %43, %41
  %45 = fptosi float %44 to i32
  %46 = fadd fast float %10, -1.000000e+00
  %47 = fptosi float %46 to i32
  %48 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %45, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %49 = extractvalue %dx.types.ResRet.f32 %48, 0
  %50 = extractvalue %dx.types.ResRet.f32 %48, 1
  %51 = extractvalue %dx.types.ResRet.f32 %48, 2
  %52 = extractvalue %dx.types.ResRet.f32 %48, 3
  %53 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 0
  store float %49, float* %53, align 4
  %54 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 1
  store float %50, float* %54, align 4
  %55 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 2
  store float %51, float* %55, align 4
  %56 = getelementptr inbounds [4 x float], [4 x float]* %7, i32 0, i32 3
  store float %52, float* %56, align 4
  %57 = fadd fast float %41, 1.000000e+00
  %58 = fadd fast float %57, %43
  %59 = fptosi float %58 to i32
  %60 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %59, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %61 = extractvalue %dx.types.ResRet.f32 %60, 0
  %62 = extractvalue %dx.types.ResRet.f32 %60, 1
  %63 = extractvalue %dx.types.ResRet.f32 %60, 2
  %64 = extractvalue %dx.types.ResRet.f32 %60, 3
  %65 = fcmp fast oeq float %64, -2.046000e+03
  br i1 %65, label %66, label %202, !dx.controlflow.hints !16

; <label>:66                                      ; preds = %36
  br label %67

; <label>:67                                      ; preds = %196, %66
  %68 = phi float [ %198, %196 ], [ %49, %66 ]
  %69 = phi float [ %191, %196 ], [ %37, %66 ]
  %70 = phi float [ %192, %196 ], [ %38, %66 ]
  %71 = phi float [ %193, %196 ], [ %39, %66 ]
  %72 = phi i32 [ %194, %196 ], [ 0, %66 ]
  %73 = shl i32 %72, 7
  %74 = or i32 %73, 10
  %75 = sub i32 %5, %74
  %76 = mul nsw i32 %40, -18
  %77 = add i32 %6, -30
  %78 = add i32 %77, %76
  %79 = uitofp i32 %75 to float
  %80 = uitofp i32 %78 to float
  %81 = fmul fast float %79, 6.250000e-02
  %82 = fmul fast float %80, 6.250000e-02
  %83 = fcmp fast olt float %82, 0.000000e+00
  %84 = fcmp fast oge float %82, 1.000000e+00
  %85 = or i1 %83, %84
  br i1 %85, label %185, label %86, !dx.controlflow.hints !17

; <label>:86                                      ; preds = %67
  %87 = call float @dx.op.unary.f32(i32 27, float %81)  ; Round_ni(value)
  %88 = fptosi float %87 to i32
  %89 = sub nsw i32 3, %88
  %90 = lshr i32 %89, 31
  %91 = xor i32 %90, 1
  %92 = sub nsw i32 %89, %91
  %93 = call float @dx.op.unary.f32(i32 6, float %68)  ; FAbs(value)
  %94 = call float @dx.op.unary.f32(i32 23, float %93)  ; Log(value)
  %95 = fmul fast float %94, 0x3FD3441360000000
  %96 = call float @dx.op.unary.f32(i32 27, float %95)  ; Round_ni(value)
  %97 = call float @dx.op.binary.f32(i32 35, float %96, float 0.000000e+00)  ; FMax(a,b)
  %98 = fptosi float %97 to i32
  %99 = fcmp fast olt float %68, 0.000000e+00
  %100 = zext i1 %99 to i32
  %101 = add nsw i32 %98, %100
  %102 = icmp sgt i32 %92, %101
  %103 = icmp slt i32 %92, -3
  %104 = or i1 %103, %102
  br i1 %104, label %185, label %105, !dx.controlflow.hints !18

; <label>:105                                     ; preds = %86
  %106 = icmp eq i32 %92, %101
  %107 = and i1 %99, %106
  br i1 %107, label %122, label %108, !dx.controlflow.hints !19

; <label>:108                                     ; preds = %105
  %109 = icmp eq i32 %89, 0
  br i1 %109, label %122, label %110, !dx.controlflow.hints !20

; <label>:110                                     ; preds = %108
  %111 = sitofp i32 %92 to float
  %112 = fmul fast float %111, 0xC00A934F00000000
  %113 = call float @dx.op.unary.f32(i32 21, float %112)  ; Exp(value)
  %114 = fmul fast float %113, %68
  %115 = call float @dx.op.unary.f32(i32 6, float %114)  ; FAbs(value)
  %116 = fmul fast float %115, 0x3FB99999A0000000
  %117 = call float @dx.op.unary.f32(i32 22, float %116)  ; Frc(value)
  %118 = fmul fast float %117, 1.000000e+01
  %119 = call float @dx.op.unary.f32(i32 27, float %118)  ; Round_ni(value)
  %120 = fptoui float %119 to i32
  %121 = add i32 %120, 48
  br label %122

; <label>:122                                     ; preds = %110, %108, %105
  %123 = phi i32 [ %121, %110 ], [ 45, %105 ], [ 46, %108 ]
  %124 = call float @dx.op.unary.f32(i32 22, float %81)  ; Frc(value)
  %125 = call float @dx.op.unary.f32(i32 22, float %82)  ; Frc(value)
  %126 = icmp eq i32 %123, 45
  %127 = icmp eq i32 %123, 46
  %128 = icmp eq i32 %123, 48
  %129 = icmp eq i32 %123, 49
  %130 = icmp eq i32 %123, 50
  %131 = icmp eq i32 %123, 51
  %132 = icmp eq i32 %123, 52
  %133 = icmp eq i32 %123, 53
  %134 = icmp eq i32 %123, 54
  %135 = icmp eq i32 %123, 55
  %136 = icmp eq i32 %123, 56
  %137 = icmp eq i32 %123, 57
  %138 = select i1 %137, i32 1667448320, i32 0
  %139 = select i1 %137, i32 4087934, i32 0
  %140 = select i1 %136, i32 1046691328, i32 %138
  %141 = select i1 %136, i32 4088675, i32 %139
  %142 = select i1 %135, i32 811630336, i32 %140
  %143 = select i1 %135, i32 789528, i32 %141
  %144 = select i1 %134, i32 1057177088, i32 %142
  %145 = select i1 %134, i32 4088675, i32 %143
  %146 = select i1 %133, i32 1057193728, i32 %144
  %147 = select i1 %133, i32 4088672, i32 %145
  %148 = select i1 %132, i32 505157632, i32 %146
  %149 = select i1 %132, i32 1605403, i32 %147
  %150 = select i1 %131, i32 946028032, i32 %148
  %151 = select i1 %131, i32 4088672, i32 %149
  %152 = select i1 %130, i32 1617116672, i32 %150
  %153 = select i1 %130, i32 8323902, i32 %151
  %154 = select i1 %129, i32 404494336, i32 %152
  %155 = select i1 %129, i32 3938328, i32 %153
  %156 = select i1 %128, i32 2071150080, i32 %154
  %157 = select i1 %128, i32 4089711, i32 %155
  %158 = select i1 %127, i32 0, i32 %156
  %159 = select i1 %127, i32 1579008, i32 %157
  %160 = select i1 %126, i32 2113929216, i32 %158
  %161 = select i1 %126, i32 0, i32 %159
  %162 = fcmp fast olt float %124, 0.000000e+00
  %163 = fcmp fast olt float %125, 0.000000e+00
  %164 = or i1 %162, %163
  %165 = fcmp fast oge float %124, 1.000000e+00
  %166 = or i1 %165, %164
  %167 = fcmp fast oge float %125, 1.000000e+00
  %168 = or i1 %167, %166
  %169 = select i1 %168, float 0.000000e+00, float 1.000000e+00
  %170 = fmul fast float %124, 8.000000e+00
  %171 = fmul fast float %125, 8.000000e+00
  %172 = call float @dx.op.unary.f32(i32 27, float %170)  ; Round_ni(value)
  %173 = call float @dx.op.unary.f32(i32 27, float %171)  ; Round_ni(value)
  %174 = fptoui float %172 to i32
  %175 = fptoui float %173 to i32
  %176 = shl i32 %175, 3
  %177 = add i32 %176, %174
  %178 = icmp ult i32 %175, 4
  %179 = select i1 %178, i32 %160, i32 %161
  %180 = and i32 %177, 31
  %181 = lshr i32 %179, %180
  %182 = and i32 %181, 1
  %183 = uitofp i32 %182 to float
  %184 = fmul fast float %183, %169
  br label %185

; <label>:185                                     ; preds = %122, %86, %67
  %186 = phi float [ %184, %122 ], [ 0.000000e+00, %67 ], [ 0.000000e+00, %86 ]
  %187 = fcmp fast une float %186, 0.000000e+00
  %188 = fadd fast float %69, %61
  %189 = fadd fast float %70, %62
  %190 = fadd fast float %71, %63
  %191 = select i1 %187, float %188, float %69
  %192 = select i1 %187, float %189, float %70
  %193 = select i1 %187, float %190, float %71
  %194 = add nuw nsw i32 %72, 1
  %195 = icmp eq i32 %194, 4
  br i1 %195, label %199, label %196

; <label>:196                                     ; preds = %185
  %197 = getelementptr [4 x float], [4 x float]* %7, i32 0, i32 %194
  %198 = load float, float* %197, align 4, !tbaa !21
  br label %67

; <label>:199                                     ; preds = %185
  %200 = add nuw nsw i32 %40, 1
  %201 = icmp ult i32 %200, 16
  br i1 %201, label %36, label %202

; <label>:202                                     ; preds = %199, %36
  %203 = phi float [ %37, %36 ], [ %191, %199 ]
  %204 = phi float [ %38, %36 ], [ %192, %199 ]
  %205 = phi float [ %39, %36 ], [ %193, %199 ]
  br label %206

; <label>:206                                     ; preds = %320, %202
  %207 = phi float [ %321, %320 ], [ %203, %202 ]
  %208 = phi float [ %322, %320 ], [ %204, %202 ]
  %209 = phi float [ %323, %320 ], [ %205, %202 ]
  %210 = phi i32 [ %324, %320 ], [ 0, %202 ]
  %211 = mul nuw nsw i32 %210, 3
  %212 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %211, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 1
  %215 = extractvalue %dx.types.ResRet.f32 %212, 2
  %216 = extractvalue %dx.types.ResRet.f32 %212, 3
  %217 = add nuw nsw i32 %211, 1
  %218 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %217, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = extractvalue %dx.types.ResRet.f32 %218, 1
  %221 = extractvalue %dx.types.ResRet.f32 %218, 2
  %222 = add nuw nsw i32 %211, 2
  %223 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 0, i32 %222, i32 %47, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %224 = extractvalue %dx.types.ResRet.f32 %223, 0
  %225 = extractvalue %dx.types.ResRet.f32 %223, 1
  %226 = extractvalue %dx.types.ResRet.f32 %223, 2
  %227 = fcmp fast oeq float %216, -2.048000e+03
  br i1 %227, label %228, label %299, !dx.controlflow.hints !25

; <label>:228                                     ; preds = %206
  %229 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %230 = extractvalue %dx.types.CBufRet.f32 %229, 0
  %231 = extractvalue %dx.types.CBufRet.f32 %229, 1
  %232 = extractvalue %dx.types.CBufRet.f32 %229, 2
  %233 = extractvalue %dx.types.CBufRet.f32 %229, 3
  %234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %235 = extractvalue %dx.types.CBufRet.f32 %234, 0
  %236 = extractvalue %dx.types.CBufRet.f32 %234, 1
  %237 = extractvalue %dx.types.CBufRet.f32 %234, 2
  %238 = extractvalue %dx.types.CBufRet.f32 %234, 3
  %239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %240 = extractvalue %dx.types.CBufRet.f32 %239, 0
  %241 = extractvalue %dx.types.CBufRet.f32 %239, 1
  %242 = extractvalue %dx.types.CBufRet.f32 %239, 2
  %243 = extractvalue %dx.types.CBufRet.f32 %239, 3
  %244 = fmul fast float %230, %213
  %245 = call float @dx.op.tertiary.f32(i32 46, float %214, float %231, float %244)  ; FMad(a,b,c)
  %246 = call float @dx.op.tertiary.f32(i32 46, float %215, float %232, float %245)  ; FMad(a,b,c)
  %247 = fadd fast float %246, %233
  %248 = fmul fast float %235, %213
  %249 = call float @dx.op.tertiary.f32(i32 46, float %214, float %236, float %248)  ; FMad(a,b,c)
  %250 = call float @dx.op.tertiary.f32(i32 46, float %215, float %237, float %249)  ; FMad(a,b,c)
  %251 = fadd fast float %250, %238
  %252 = fmul fast float %240, %213
  %253 = call float @dx.op.tertiary.f32(i32 46, float %214, float %241, float %252)  ; FMad(a,b,c)
  %254 = call float @dx.op.tertiary.f32(i32 46, float %215, float %242, float %253)  ; FMad(a,b,c)
  %255 = fadd fast float %254, %243
  %256 = fmul fast float %230, %219
  %257 = call float @dx.op.tertiary.f32(i32 46, float %220, float %231, float %256)  ; FMad(a,b,c)
  %258 = call float @dx.op.tertiary.f32(i32 46, float %221, float %232, float %257)  ; FMad(a,b,c)
  %259 = fadd fast float %258, %233
  %260 = fmul fast float %235, %219
  %261 = call float @dx.op.tertiary.f32(i32 46, float %220, float %236, float %260)  ; FMad(a,b,c)
  %262 = call float @dx.op.tertiary.f32(i32 46, float %221, float %237, float %261)  ; FMad(a,b,c)
  %263 = fadd fast float %262, %238
  %264 = fmul fast float %240, %219
  %265 = call float @dx.op.tertiary.f32(i32 46, float %220, float %241, float %264)  ; FMad(a,b,c)
  %266 = call float @dx.op.tertiary.f32(i32 46, float %221, float %242, float %265)  ; FMad(a,b,c)
  %267 = fadd fast float %266, %243
  %268 = fdiv fast float 1.000000e+00, %255
  %269 = fmul fast float %268, %247
  %270 = fmul fast float %268, %251
  %271 = fdiv fast float 1.000000e+00, %267
  %272 = fmul fast float %271, %259
  %273 = fmul fast float %271, %263
  %274 = fmul fast float %15, 2.000000e+00
  %275 = fmul fast float %274, %11
  %276 = fmul fast float %16, 2.000000e+00
  %277 = fmul fast float %276, %12
  %278 = fadd fast float %275, -1.000000e+00
  %279 = fsub fast float 1.000000e+00, %277
  %280 = fsub fast float %278, %269
  %281 = fsub fast float %279, %270
  %282 = fsub fast float %272, %269
  %283 = fsub fast float %273, %270
  %284 = call float @dx.op.dot3.f32(i32 55, float %280, float %281, float 0.000000e+00, float %282, float %283, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %285 = call float @dx.op.dot3.f32(i32 55, float %282, float %283, float 0.000000e+00, float %282, float %283, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %286 = fdiv fast float %284, %285
  %287 = call float @dx.op.unary.f32(i32 7, float %286)  ; Saturate(value)
  %288 = fmul fast float %287, %282
  %289 = fmul fast float %287, %283
  %290 = fsub fast float %280, %288
  %291 = fsub fast float %281, %289
  %292 = fmul fast float %290, %290
  %293 = fmul fast float %291, %291
  %294 = fadd fast float %292, %293
  %295 = call float @dx.op.unary.f32(i32 24, float %294)  ; Sqrt(value)
  %296 = fmul fast float %11, 2.000000e+00
  %297 = fcmp fast olt float %295, %296
  br i1 %297, label %298, label %320, !dx.controlflow.hints !26

; <label>:298                                     ; preds = %228
  br label %320

; <label>:299                                     ; preds = %206
  %300 = fcmp fast oeq float %216, -2.047000e+03
  br i1 %300, label %301, label %326, !dx.controlflow.hints !27

; <label>:301                                     ; preds = %299
  %302 = fsub fast float %13, %213
  %303 = fsub fast float %14, %214
  %304 = fsub fast float %219, %213
  %305 = fsub fast float %220, %214
  %306 = call float @dx.op.dot3.f32(i32 55, float %302, float %303, float 0.000000e+00, float %304, float %305, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %307 = call float @dx.op.dot3.f32(i32 55, float %304, float %305, float 0.000000e+00, float %304, float %305, float 0.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %308 = fdiv fast float %306, %307
  %309 = call float @dx.op.unary.f32(i32 7, float %308)  ; Saturate(value)
  %310 = fmul fast float %309, %304
  %311 = fmul fast float %309, %305
  %312 = fsub fast float %302, %310
  %313 = fsub fast float %303, %311
  %314 = fmul fast float %312, %312
  %315 = fmul fast float %313, %313
  %316 = fadd fast float %314, %315
  %317 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %318 = fcmp fast olt float %317, 2.000000e+00
  br i1 %318, label %319, label %320, !dx.controlflow.hints !28

; <label>:319                                     ; preds = %301
  br label %320

; <label>:320                                     ; preds = %319, %301, %298, %228
  %321 = phi float [ %224, %298 ], [ %207, %228 ], [ %224, %319 ], [ %207, %301 ]
  %322 = phi float [ %225, %298 ], [ %208, %228 ], [ %225, %319 ], [ %208, %301 ]
  %323 = phi float [ %226, %298 ], [ %209, %228 ], [ %226, %319 ], [ %209, %301 ]
  %324 = add nuw nsw i32 %210, 1
  %325 = icmp ult i32 %324, 16
  br i1 %325, label %206, label %326

; <label>:326                                     ; preds = %320, %299
  %327 = phi float [ %207, %299 ], [ %321, %320 ]
  %328 = phi float [ %208, %299 ], [ %322, %320 ]
  %329 = phi float [ %209, %299 ], [ %323, %320 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 undef, float %327, float %328, float %329, float %21, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 2, i32 0, !7}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!13 = !{void ()* @cs_blend, !"cs_blend", null, !4, !14}
!14 = !{i32 0, i64 256, i32 4, !15}
!15 = !{i32 16, i32 16, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}

