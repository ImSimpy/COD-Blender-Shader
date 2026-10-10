;
; Note: shader requires additional functionality:
;       Typed UAV Load Additional Formats
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
; shader hash: 0bc382eeaf167a51c38d882f9ed303dc
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
;                                   texture    byte         r/o      T0             t1     1
;                                   texture    byte         r/o      T1             t2     1
;                                       UAVunorm_f32     2darray      U0             u0     1
;                                       UAV     u32          2d      U1             u1     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<vector<float, 4> >" = type { <4 x float> }
%"class.RWTexture2D<unsigned int>" = type { i32 }
%hostlayout.scene = type { %hostlayout.struct.GfxCodeSceneConsts }
%hostlayout.struct.GfxCodeSceneConsts = type { <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x float>, float, float, float, float, i32, i32, float, float, <2 x i32>, <2 x i32>, <2 x float>, <2 x float>, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, <3 x float>, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <4 x float>, <3 x float>, float, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, i32, float, <4 x float>, i32, i32, i32, i32, i32, i32, i32, i32, <2 x i32>, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, [2 x <4 x i32>], [3 x <2 x float>], i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x i32>, <4 x float>, i32, float, float, float, i32, i32, i32, i32, <2 x float>, <2 x float>, <2 x float>, <2 x float>, i32, i32, <2 x float>, <2 x float>, <2 x float>, <3 x float>, i32, i32, i32, i32, i32, <4 x i32>, <4 x i32>, <4 x i32>, <4 x float>, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <3 x float>, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], <4 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [4 x <4 x float>], i32, i32, float, i32, <2 x float>, float, float, float, float, float, i32, <3 x float>, float, float, float, float, float, <3 x float>, float, <3 x float>, float, <3 x float>, float, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, <2 x float>, i32, i32, <3 x float>, float, float, float, float, float, float, float, float, float, [4 x <3 x float>], i32, [4 x <3 x float>], i32, [4 x <3 x float>], i32, <4 x i32>, <2 x float>, <2 x float>, <2 x float>, i32, i32, float, float, float, float, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, i32, <4 x float>, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, i32, float, float, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, float, float, float, i32, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, <4 x float>, <4 x float>, <4 x float>, i32, i32, i32, float, <4 x float>, float, i32, i32, i32, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, [8 x <4 x float>], [8 x <4 x float>], <4 x float>, <3 x float>, i32, <2 x float>, float, float, float, float, float, float, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <2 x float>, float, float, <4 x float>, i32, i32, i32, i32, <3 x float>, i32, <4 x i32>, <4 x i32>, <2 x float>, <2 x i32>, <4 x float>, <4 x float>, <2 x float>, <2 x float>, [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, float, i32, i32, i32, i32, i32, float, float, <2 x float>, <2 x float>, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32, i32, float, float, float, i32, <2 x i32>, <2 x i32>, <4 x i32>, float, float, float, float, <4 x float>, <4 x float>, <2 x float>, <2 x float>, <4 x float>, <4 x float>, float, float, float, float, <4 x float>, float, float, float, float, i32, i32, float, float, <4 x float>, <2 x float>, <2 x float>, i32, i32, float, float, [4 x <4 x float>], float, float, float, float, float, float, float, float, i32, i32, i32, float, <4 x float>, <4 x float>, i32, i32, i32, i32, <2 x i32>, <2 x i32>, [2 x <4 x i32>], i32, float, float, float, i32, float, float, i32, <2 x i32>, <2 x float>, float, float, float, i32, %struct.GfxWeatherData, %hostlayout.struct.GfxVolumetricData, %struct.GfxFogRaymarchingData, %struct.GfxEnvironmentalFogData, %struct.GfxShallowWaterData, %struct.GfxGroundDeformationData, %struct.GfxSplinedModelGlobals }
%struct.GfxWeatherData = type { i32, i32, i32, i32, float, float, float, float, float, float, i32, i32, float, float, float, float, i32, i32, i32, i32, float, float, float, float, float, i32, i32, i32, i32, i32, i32, i32, <3 x float>, i32, <3 x float>, i32, i32, float, i32, i32, float, float, float, float }
%hostlayout.struct.GfxVolumetricData = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <2 x float>, <2 x float>, <2 x float>, <2 x float>, <3 x i32>, i32, <3 x float>, i32, <4 x float>, <3 x float>, i32, i32, float, float, float, i32, i32, i32, float, <4 x float>, float, float, i32, i32, <3 x float>, i32, <3 x float>, float, <3 x float>, float, <2 x float>, float, float, <3 x float>, float, <3 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, <3 x float>, float, i32, float, float, float, <3 x float>, float, <2 x float>, <2 x float>, <3 x float>, float, i32, float, float, float, float, float, float, float, i32, i32, float, float, <3 x float>, float, i32, i32, <2 x float> }
%struct.GfxFogRaymarchingData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, <2 x float>, <2 x float>, <3 x float>, float }
%struct.GfxEnvironmentalFogData = type { float, float, float, i32 }
%struct.GfxShallowWaterData = type { i32, i32, i32, i32, float, float, float, float, <2 x float>, <2 x float>, float, float, float, float, <3 x float>, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, float, float, float, float, float, float, float, i32, float, float, float, float, i32, i32, i32 }
%struct.GfxGroundDeformationData = type { <2 x float>, <2 x float>, float, float, float, float, float, float, float, float, float, float, float, float, float, float, i32, i32 }
%struct.GfxSplinedModelGlobals = type { [64 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [32 x <4 x float>], [64 x <4 x float>], [16 x <4 x float>], [16 x <4 x float>], float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float, float }

define void @cs_update_msm_prepassed() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = alloca [4 x i32], align 4
  %7 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 1)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %11 = alloca [12 x float], align 4
  %12 = alloca [12 x float], align 4
  %13 = alloca [12 x float], align 4
  %14 = alloca [12 x float], align 4
  %15 = shl i32 %9, 2
  %16 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %15, i32 undef)  ; BufferLoad(srv,index,wot)
  %17 = extractvalue %dx.types.ResRet.i32 %16, 0
  %18 = and i32 %17, 65535
  %19 = lshr i32 %17, 16
  %20 = shl nuw nsw i32 %18, 3
  %21 = shl nuw nsw i32 %19, 3
  %22 = add i32 %20, %7
  %23 = add i32 %21, %8
  %24 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %1, i32 undef, i32 %18, i32 %19, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %25 = extractvalue %dx.types.ResRet.i32 %24, 0
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 8, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = bitcast i32 %27 to float
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = and i32 %30, 536870911
  %32 = uitofp i32 %31 to float
  %33 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %34 = extractvalue %dx.types.CBufRet.f32 %33, 0
  %35 = extractvalue %dx.types.CBufRet.f32 %33, 1
  %36 = uitofp i32 %22 to float
  %37 = uitofp i32 %23 to float
  %38 = fadd fast float %36, 5.000000e-01
  %39 = fadd fast float %37, 5.000000e-01
  %40 = fmul fast float %35, %38
  %41 = fmul fast float %35, %39
  %42 = fmul fast float %28, 5.000000e-01
  %43 = fmul fast float %42, %34
  %44 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 316)  ; CBufferLoadLegacy(handle,regIndex)
  %45 = extractvalue %dx.types.CBufRet.i32 %44, 2
  %46 = extractvalue %dx.types.CBufRet.i32 %44, 3
  %47 = and i32 %45, 31
  %48 = shl i32 1, %47
  %49 = uitofp i32 %45 to float
  %50 = fsub fast float -0.000000e+00, %49
  %51 = call float @dx.op.unary.f32(i32 21, float %50)  ; Exp(value)
  %52 = fmul fast float %51, %32
  %53 = icmp ugt i32 %45, %46
  br i1 %53, label %3760, label %54, !dx.controlflow.hints !18

; <label>:54                                      ; preds = %0
  %55 = lshr i32 %25, 1
  %56 = and i32 %55, 7
  %57 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %58 = extractvalue %dx.types.CBufRet.i32 %57, 1
  %59 = and i32 %58, 31
  %60 = lshr i32 %48, %59
  %61 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %60)  ; UMax(a,b)
  %62 = mul i32 %61, %61
  %63 = lshr i32 %62, 2
  %64 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %63)  ; UMax(a,b)
  %65 = mul i32 %64, %56
  %66 = icmp ult i32 %65, %62
  br i1 %66, label %67, label %976, !dx.controlflow.hints !19

; <label>:67                                      ; preds = %54
  %68 = shl nuw nsw i32 %56, 1
  %69 = add nuw nsw i32 %68, 2
  %70 = and i32 %69, 14
  %71 = and i32 %25, -15
  %72 = or i32 %70, %71
  %73 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 320)  ; CBufferLoadLegacy(handle,regIndex)
  %74 = extractvalue %dx.types.CBufRet.f32 %73, 0
  %75 = extractvalue %dx.types.CBufRet.f32 %73, 1
  %76 = fmul fast float %52, %35
  %77 = fmul fast float %74, %76
  %78 = fmul fast float %75, %76
  %79 = fsub fast float %40, %77
  %80 = fsub fast float %41, %78
  %81 = call float @dx.op.unary.f32(i32 22, float %79)  ; Frc(value)
  %82 = call float @dx.op.unary.f32(i32 22, float %80)  ; Frc(value)
  %83 = uitofp i32 %48 to float
  %84 = fmul fast float %83, %43
  %85 = fmul fast float %81, 2.000000e+00
  %86 = fmul fast float %82, 2.000000e+00
  %87 = fadd fast float %85, -1.000000e+00
  %88 = fadd fast float %86, -1.000000e+00
  %89 = fmul fast float %87, %84
  %90 = fmul fast float %88, %84
  %91 = fadd fast float %89, %74
  %92 = fadd fast float %90, %75
  %93 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %22, i32 %23, i32 0, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %94 = extractvalue %dx.types.ResRet.f32 %93, 0
  %95 = extractvalue %dx.types.ResRet.f32 %93, 1
  %96 = extractvalue %dx.types.ResRet.f32 %93, 2
  %97 = extractvalue %dx.types.ResRet.f32 %93, 3
  %98 = icmp eq i32 %64, 0
  br i1 %98, label %971, label %99

; <label>:99                                      ; preds = %67
  br label %100

; <label>:100                                     ; preds = %934, %99
  %101 = phi float [ %964, %934 ], [ %94, %99 ]
  %102 = phi float [ %965, %934 ], [ %95, %99 ]
  %103 = phi float [ %966, %934 ], [ %96, %99 ]
  %104 = phi float [ %967, %934 ], [ %97, %99 ]
  %105 = phi i32 [ %968, %934 ], [ 0, %99 ]
  %106 = add i32 %105, %65
  %107 = urem i32 %106, %61
  %108 = uitofp i32 %107 to float
  %109 = udiv i32 %106, %61
  %110 = uitofp i32 %109 to float
  %111 = fadd fast float %108, 5.000000e-01
  %112 = fadd fast float %110, 5.000000e-01
  %113 = uitofp i32 %61 to float
  %114 = fdiv fast float %111, %113
  %115 = fdiv fast float %112, %113
  %116 = fmul fast float %84, %35
  %117 = fmul fast float %114, 2.000000e+00
  %118 = fmul fast float %115, 2.000000e+00
  %119 = fadd fast float %117, -1.000000e+00
  %120 = fadd fast float %118, -1.000000e+00
  %121 = fmul fast float %119, %116
  %122 = fmul fast float %120, %116
  %123 = fadd fast float %91, %121
  %124 = fadd fast float %92, %122
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = and i32 %126, 536870911
  %128 = uitofp i32 %127 to float
  %129 = fmul fast float %128, %123
  %130 = fmul fast float %128, %124
  %131 = fptoui float %129 to i32
  %132 = fptoui float %130 to i32
  %133 = fcmp fast olt float %123, 0.000000e+00
  %134 = fcmp fast olt float %124, 0.000000e+00
  %135 = or i1 %133, %134
  %136 = fcmp fast oge float %123, 1.000000e+00
  %137 = fcmp fast oge float %124, 1.000000e+00
  %138 = or i1 %136, %137
  %139 = or i1 %135, %138
  br i1 %139, label %934, label %140, !dx.controlflow.hints !20

; <label>:140                                     ; preds = %100
  %141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %142 = extractvalue %dx.types.ResRet.i32 %141, 0
  %143 = and i32 %142, 31
  %144 = lshr i32 %131, %143
  %145 = lshr i32 %132, %143
  %146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.i32 %146, 0
  %148 = and i32 %147, 31
  %149 = shl i32 1, %148
  %150 = call i32 @dx.op.binary.i32(i32 40, i32 %149, i32 4)  ; UMin(a,b)
  %151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %152 = extractvalue %dx.types.ResRet.i32 %151, 0
  %153 = extractvalue %dx.types.ResRet.i32 %151, 1
  %154 = icmp eq i32 %150, 0
  br i1 %154, label %513, label %155

; <label>:155                                     ; preds = %140
  br label %156

; <label>:156                                     ; preds = %498, %155
  %157 = phi i32 [ %504, %498 ], [ 0, %155 ]
  %158 = phi i32 [ %503, %498 ], [ 0, %155 ]
  %159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %160 = extractvalue %dx.types.ResRet.i32 %159, 0
  %161 = lshr i32 %160, 16
  %162 = and i32 %161, 31
  %163 = shl i32 %145, %162
  %164 = add i32 %163, %144
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = and i32 %166, 31
  %168 = shl i32 %164, %167
  %169 = add i32 %168, %157
  %170 = shl i32 %169, 2
  %171 = add i32 %170, 32
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %185, label %175, !dx.controlflow.hints !21

; <label>:175                                     ; preds = %156
  %176 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %157
  %177 = bitcast float* %176 to i32*
  store i32 %173, i32* %177, align 4
  %178 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %157
  %179 = bitcast float* %178 to i32*
  store i32 %173, i32* %179, align 4
  %180 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %157
  %181 = bitcast float* %180 to i32*
  store i32 %152, i32* %181, align 4
  %182 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %157
  %183 = bitcast float* %182 to i32*
  store i32 %153, i32* %183, align 4
  %184 = bitcast i32 %173 to float
  br label %498

; <label>:185                                     ; preds = %156
  %186 = shl i32 1, %143
  %187 = add i32 %186, -1
  %188 = and i32 %187, %131
  %189 = and i32 %187, %132
  %190 = and i32 %173, 1073741823
  %191 = add nuw nsw i32 %190, 4
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = lshr i32 %193, 29
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %407, label %196, !dx.controlflow.hints !22

; <label>:196                                     ; preds = %185
  %197 = icmp eq i32 %194, 1
  br i1 %197, label %329, label %198, !dx.controlflow.hints !23

; <label>:198                                     ; preds = %196
  %199 = icmp eq i32 %194, 2
  br i1 %199, label %200, label %468, !dx.controlflow.hints !24

; <label>:200                                     ; preds = %198
  %201 = and i32 %193, 536870911
  %202 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %201)  ; FirstbitHi(value)
  %203 = icmp eq i32 %202, -1
  %204 = add i32 %202, 1
  %205 = call i32 @dx.op.unary.i32(i32 30, i32 %188)  ; Bfrev(value)
  %206 = and i32 %204, 31
  %207 = select i1 %203, i32 1, i32 %206
  %208 = lshr i32 %205, %207
  %209 = call i32 @dx.op.unary.i32(i32 30, i32 %189)  ; Bfrev(value)
  %210 = lshr i32 %209, %207
  %211 = and i32 %208, 1
  %212 = shl i32 %210, 1
  %213 = and i32 %212, 2
  %214 = or i32 %213, %211
  %215 = mul nuw nsw i32 %214, 10
  %216 = add nuw nsw i32 %190, 32
  %217 = add nuw i32 %216, %215
  br label %218

; <label>:218                                     ; preds = %229, %200
  %219 = phi i32 [ 3, %200 ], [ %250, %229 ]
  %220 = phi i32 [ %208, %200 ], [ %230, %229 ]
  %221 = phi i32 [ %210, %200 ], [ %231, %229 ]
  %222 = phi i32 [ %217, %200 ], [ %264, %229 ]
  %223 = phi i32 [ 0, %200 ], [ %234, %229 ]
  %224 = phi i32 [ 0, %200 ], [ %225, %229 ]
  %225 = add nuw nsw i32 %224, 1
  %226 = icmp eq i32 %219, 2
  %227 = icmp ugt i32 %225, 9
  %228 = or i1 %226, %227
  br i1 %228, label %266, label %229, !dx.controlflow.hints !25

; <label>:229                                     ; preds = %218
  %230 = lshr i32 %220, 1
  %231 = lshr i32 %221, 1
  %232 = icmp eq i32 %219, 3
  %233 = add i32 %222, 4
  %234 = select i1 %232, i32 %233, i32 %223
  %235 = and i32 %222, -4
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = extractvalue %dx.types.ResRet.i32 %236, 1
  %239 = and i32 %222, 2
  %240 = icmp ne i32 %239, 0
  %241 = lshr i32 %237, 16
  %242 = shl i32 %238, 16
  %243 = or i32 %241, %242
  %244 = select i1 %240, i32 %243, i32 %237
  %245 = and i32 %230, 1
  %246 = and i32 %221, 2
  %247 = or i32 %245, %246
  %248 = shl nuw nsw i32 %247, 1
  %249 = lshr i32 %244, %248
  %250 = and i32 %249, 3
  %251 = lshr i32 %244, 8
  %252 = sub nsw i32 4, %247
  %253 = shl nuw nsw i32 %252, 1
  %254 = lshr i32 255, %253
  %255 = and i32 %244, %254
  %256 = and i32 %255, 85
  %257 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %256)  ; Countbits(value)
  %258 = shl i32 %257, 2
  %259 = and i32 %255, 170
  %260 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %259)  ; Countbits(value)
  %261 = mul i32 %260, 6
  %262 = add i32 %258, %222
  %263 = add i32 %262, %261
  %264 = add i32 %263, %251
  %265 = icmp eq i32 %250, 0
  br i1 %265, label %266, label %218

; <label>:266                                     ; preds = %229, %218
  %267 = phi i32 [ %222, %218 ], [ %234, %229 ]
  %268 = and i32 %267, -4
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = extractvalue %dx.types.ResRet.i32 %269, 1
  %272 = and i32 %267, 2
  %273 = icmp ne i32 %272, 0
  %274 = lshr i32 %270, 16
  %275 = shl i32 %271, 16
  %276 = or i32 %274, %275
  %277 = select i1 %273, i32 %276, i32 %270
  %278 = add i32 %267, 4
  %279 = and i32 %278, -4
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %278, 2
  %283 = icmp ne i32 %282, 0
  %284 = lshr i32 %281, 16
  %285 = and i32 %281, 65535
  %286 = select i1 %283, i32 %284, i32 %285
  %287 = and i32 %277, 65535
  %288 = lshr i32 %277, 16
  %289 = and i32 %288, 16383
  %290 = lshr i32 %277, 30
  %291 = uitofp i32 %289 to float
  %292 = fmul fast float %291, 0x3F10004000000000
  %293 = fsub fast float 1.000000e+00, %292
  %294 = uitofp i32 %287 to float
  %295 = fmul fast float %294, 0x3EF0001000000000
  %296 = uitofp i32 %286 to float
  %297 = fmul fast float %296, 0x3F10001000000000
  %298 = fadd fast float %297, -2.000000e+00
  %299 = fmul fast float %295, %295
  %300 = fsub fast float 1.000000e+00, %299
  %301 = call float @dx.op.unary.f32(i32 24, float %300)  ; Sqrt(value)
  %302 = and i32 %290, 1
  %303 = icmp ne i32 %302, 0
  %304 = fsub fast float -0.000000e+00, %292
  %305 = select i1 %303, float %304, float %292
  %306 = and i32 %290, 2
  %307 = icmp ne i32 %306, 0
  %308 = fsub fast float -0.000000e+00, %293
  %309 = select i1 %307, float %308, float %293
  %310 = call float @dx.op.dot2.f32(i32 54, float %305, float %309, float %305, float %309)  ; Dot2(ax,ay,bx,by)
  %311 = call float @dx.op.unary.f32(i32 25, float %310)  ; Rsqrt(value)
  %312 = fmul fast float %311, %301
  %313 = fmul fast float %312, %305
  %314 = fmul fast float %312, %309
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = lshr i32 %316, 16
  %318 = and i32 %317, 31
  %319 = shl i32 1, %318
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, %123
  %322 = fmul fast float %320, %124
  %323 = call float @dx.op.unary.f32(i32 22, float %321)  ; Frc(value)
  %324 = call float @dx.op.unary.f32(i32 22, float %322)  ; Frc(value)
  %325 = call float @dx.op.dot2.f32(i32 54, float %313, float %314, float %323, float %324)  ; Dot2(ax,ay,bx,by)
  %326 = fsub fast float %298, %325
  %327 = fdiv fast float %326, %295
  %328 = call float @dx.op.unary.f32(i32 7, float %327)  ; Saturate(value)
  br label %468

; <label>:329                                     ; preds = %196
  %330 = and i32 %193, 536870911
  %331 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %330)  ; FirstbitHi(value)
  %332 = icmp eq i32 %331, -1
  %333 = add i32 %331, 1
  %334 = call i32 @dx.op.unary.i32(i32 30, i32 %188)  ; Bfrev(value)
  %335 = and i32 %333, 31
  %336 = select i1 %332, i32 1, i32 %335
  %337 = lshr i32 %334, %336
  %338 = call i32 @dx.op.unary.i32(i32 30, i32 %189)  ; Bfrev(value)
  %339 = lshr i32 %338, %336
  %340 = and i32 %337, 1
  %341 = shl i32 %339, 1
  %342 = and i32 %341, 2
  %343 = or i32 %342, %340
  %344 = shl nuw nsw i32 %343, 3
  %345 = or i32 %344, 32
  %346 = add nuw nsw i32 %345, %190
  br label %347

; <label>:347                                     ; preds = %358, %329
  %348 = phi i32 [ 3, %329 ], [ %379, %358 ]
  %349 = phi i32 [ %337, %329 ], [ %359, %358 ]
  %350 = phi i32 [ %339, %329 ], [ %360, %358 ]
  %351 = phi i32 [ %346, %329 ], [ %393, %358 ]
  %352 = phi i32 [ 0, %329 ], [ %363, %358 ]
  %353 = phi i32 [ 0, %329 ], [ %354, %358 ]
  %354 = add nuw nsw i32 %353, 1
  %355 = icmp eq i32 %348, 2
  %356 = icmp ugt i32 %354, 9
  %357 = or i1 %355, %356
  br i1 %357, label %395, label %358, !dx.controlflow.hints !26

; <label>:358                                     ; preds = %347
  %359 = lshr i32 %349, 1
  %360 = lshr i32 %350, 1
  %361 = icmp eq i32 %348, 3
  %362 = add i32 %351, 4
  %363 = select i1 %361, i32 %362, i32 %352
  %364 = and i32 %351, -4
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = extractvalue %dx.types.ResRet.i32 %365, 1
  %368 = and i32 %351, 2
  %369 = icmp ne i32 %368, 0
  %370 = lshr i32 %366, 16
  %371 = shl i32 %367, 16
  %372 = or i32 %370, %371
  %373 = select i1 %369, i32 %372, i32 %366
  %374 = and i32 %359, 1
  %375 = and i32 %350, 2
  %376 = or i32 %374, %375
  %377 = shl nuw nsw i32 %376, 1
  %378 = lshr i32 %373, %377
  %379 = and i32 %378, 3
  %380 = lshr i32 %373, 8
  %381 = sub nsw i32 4, %376
  %382 = shl nuw nsw i32 %381, 1
  %383 = lshr i32 255, %382
  %384 = and i32 %373, %383
  %385 = and i32 %384, 85
  %386 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %385)  ; Countbits(value)
  %387 = shl i32 %386, 2
  %388 = and i32 %384, 170
  %389 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %388)  ; Countbits(value)
  %390 = shl i32 %389, 1
  %391 = add i32 %387, %351
  %392 = add i32 %391, %390
  %393 = add i32 %392, %380
  %394 = icmp eq i32 %379, 0
  br i1 %394, label %395, label %347

; <label>:395                                     ; preds = %358, %347
  %396 = phi i32 [ %351, %347 ], [ %363, %358 ]
  %397 = and i32 %396, -4
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %396, 2
  %401 = icmp ne i32 %400, 0
  %402 = lshr i32 %399, 16
  %403 = and i32 %399, 65535
  %404 = select i1 %401, i32 %402, i32 %403
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3EF0001000000000
  br label %468

; <label>:407                                     ; preds = %185
  %408 = and i32 %193, 536870911
  %409 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %408)  ; FirstbitHi(value)
  %410 = icmp eq i32 %409, -1
  %411 = add i32 %409, 1
  %412 = call i32 @dx.op.unary.i32(i32 30, i32 %188)  ; Bfrev(value)
  %413 = and i32 %411, 31
  %414 = select i1 %410, i32 1, i32 %413
  %415 = lshr i32 %412, %414
  %416 = call i32 @dx.op.unary.i32(i32 30, i32 %189)  ; Bfrev(value)
  %417 = lshr i32 %416, %414
  %418 = and i32 %415, 1
  %419 = shl i32 %417, 1
  %420 = and i32 %419, 2
  %421 = or i32 %420, %418
  %422 = mul nuw nsw i32 %421, 12
  %423 = add nuw nsw i32 %190, 32
  %424 = add nuw i32 %423, %422
  br label %425

; <label>:425                                     ; preds = %436, %407
  %426 = phi i32 [ 2, %407 ], [ %449, %436 ]
  %427 = phi i32 [ %415, %407 ], [ %437, %436 ]
  %428 = phi i32 [ %417, %407 ], [ %438, %436 ]
  %429 = phi i32 [ %424, %407 ], [ %461, %436 ]
  %430 = phi i32 [ 0, %407 ], [ %441, %436 ]
  %431 = phi i32 [ 0, %407 ], [ %432, %436 ]
  %432 = add nuw nsw i32 %431, 1
  %433 = icmp eq i32 %426, 3
  %434 = icmp ugt i32 %432, 9
  %435 = or i1 %433, %434
  br i1 %435, label %463, label %436, !dx.controlflow.hints !27

; <label>:436                                     ; preds = %425
  %437 = lshr i32 %427, 1
  %438 = lshr i32 %428, 1
  %439 = icmp eq i32 %426, 2
  %440 = add i32 %429, 4
  %441 = select i1 %439, i32 %440, i32 %430
  %442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %443 = extractvalue %dx.types.ResRet.i32 %442, 0
  %444 = and i32 %437, 1
  %445 = and i32 %428, 2
  %446 = or i32 %444, %445
  %447 = shl nuw nsw i32 %446, 1
  %448 = lshr i32 %443, %447
  %449 = and i32 %448, 3
  %450 = lshr i32 %443, 8
  %451 = sub nsw i32 4, %446
  %452 = shl nuw nsw i32 %451, 1
  %453 = lshr i32 255, %452
  %454 = and i32 %443, %453
  %455 = lshr i32 %454, 1
  %456 = and i32 %455, 85
  %457 = xor i32 %456, %454
  %458 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %457)  ; Countbits(value)
  %459 = shl i32 %458, 2
  %460 = add i32 %459, %429
  %461 = add i32 %460, %450
  %462 = icmp eq i32 %449, 0
  br i1 %462, label %463, label %425

; <label>:463                                     ; preds = %436, %425
  %464 = phi i32 [ %429, %425 ], [ %441, %436 ]
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = bitcast i32 %466 to float
  br label %468

; <label>:468                                     ; preds = %463, %395, %266, %198
  %469 = phi float [ %467, %463 ], [ %406, %395 ], [ %328, %266 ], [ 0.000000e+00, %198 ]
  %470 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %157
  store float %469, float* %470, align 4
  %471 = fcmp fast ogt float %469, 0.000000e+00
  %472 = add nuw nsw i32 %190, 20
  br i1 %471, label %473, label %488, !dx.controlflow.hints !28

; <label>:473                                     ; preds = %468
  %474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %475 = extractvalue %dx.types.ResRet.i32 %474, 0
  %476 = extractvalue %dx.types.ResRet.i32 %474, 1
  %477 = bitcast i32 %475 to float
  %478 = bitcast i32 %476 to float
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = extractvalue %dx.types.ResRet.i32 %479, 1
  %482 = bitcast i32 %480 to float
  %483 = bitcast i32 %481 to float
  %484 = fdiv fast float %469, %478
  %485 = fsub fast float %484, %477
  %486 = fadd fast float %485, %482
  %487 = fmul fast float %486, %483
  br label %488

; <label>:488                                     ; preds = %473, %468
  %489 = phi float [ %487, %473 ], [ %469, %468 ]
  %490 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %157
  store float %489, float* %490, align 4
  %491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %492 = extractvalue %dx.types.ResRet.i32 %491, 0
  %493 = extractvalue %dx.types.ResRet.i32 %491, 1
  %494 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %157
  %495 = bitcast float* %494 to i32*
  store i32 %492, i32* %495, align 4
  %496 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %157
  %497 = bitcast float* %496 to i32*
  store i32 %493, i32* %497, align 4
  br label %498

; <label>:498                                     ; preds = %488, %175
  %499 = phi float [ %489, %488 ], [ %184, %175 ]
  %500 = getelementptr [12 x float], [12 x float]* %12, i32 0, i32 %158
  %501 = load float, float* %500, align 4
  %502 = fcmp fast ogt float %499, %501
  %503 = select i1 %502, i32 %157, i32 %158
  %504 = add nuw i32 %157, 1
  %505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.i32 %505, 2
  %507 = icmp eq i32 %506, 0
  %508 = icmp ugt i32 %173, -1073741825
  %509 = and i1 %508, %507
  %510 = icmp ult i32 %504, %150
  %511 = and i1 %509, %510
  br i1 %511, label %156, label %512, !dx.controlflow.hints !29

; <label>:512                                     ; preds = %498
  br label %513

; <label>:513                                     ; preds = %512, %140
  %514 = phi i32 [ 0, %140 ], [ %504, %512 ]
  %515 = phi i32 [ 0, %140 ], [ %503, %512 ]
  %516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %517 = extractvalue %dx.types.CBufRet.f32 %516, 2
  %518 = fptoui float %517 to i32
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %889, label %520

; <label>:520                                     ; preds = %513
  br label %521

; <label>:521                                     ; preds = %883, %520
  %522 = phi i32 [ %884, %883 ], [ %514, %520 ]
  %523 = phi i32 [ %885, %883 ], [ %515, %520 ]
  %524 = phi i32 [ %886, %883 ], [ 0, %520 ]
  %525 = lshr i32 %524, 2
  %526 = and i32 %524, 3
  %527 = add nuw nsw i32 %525, 83
  %528 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %527)  ; CBufferLoadLegacy(handle,regIndex)
  %529 = extractvalue %dx.types.CBufRet.i32 %528, 0
  %530 = extractvalue %dx.types.CBufRet.i32 %528, 1
  %531 = extractvalue %dx.types.CBufRet.i32 %528, 2
  %532 = extractvalue %dx.types.CBufRet.i32 %528, 3
  %533 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 0
  store i32 %529, i32* %533, align 4
  %534 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 1
  store i32 %530, i32* %534, align 4
  %535 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 2
  store i32 %531, i32* %535, align 4
  %536 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 3
  store i32 %532, i32* %536, align 4
  %537 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 %526
  %538 = load i32, i32* %537, align 4, !tbaa !30
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = lshr i32 %540, 16
  %542 = and i32 %541, 31
  %543 = shl i32 %145, %542
  %544 = add i32 %543, %144
  %545 = shl i32 %544, 2
  %546 = add i32 %545, %538
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %883, label %550, !dx.controlflow.hints !34

; <label>:550                                     ; preds = %521
  %551 = icmp slt i32 %548, 0
  br i1 %551, label %562, label %552, !dx.controlflow.hints !35

; <label>:552                                     ; preds = %550
  %553 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %522
  %554 = bitcast float* %553 to i32*
  store i32 %548, i32* %554, align 4
  %555 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %522
  %556 = bitcast float* %555 to i32*
  store i32 %548, i32* %556, align 4
  %557 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %522
  %558 = bitcast float* %557 to i32*
  store i32 %152, i32* %558, align 4
  %559 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %522
  %560 = bitcast float* %559 to i32*
  store i32 %153, i32* %560, align 4
  %561 = bitcast i32 %548 to float
  br label %876

; <label>:562                                     ; preds = %550
  %563 = shl i32 1, %143
  %564 = add i32 %563, -1
  %565 = and i32 %564, %131
  %566 = and i32 %564, %132
  %567 = and i32 %548, 1073741823
  %568 = add i32 %567, %538
  %569 = add i32 %568, 4
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = lshr i32 %571, 29
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %785, label %574, !dx.controlflow.hints !22

; <label>:574                                     ; preds = %562
  %575 = icmp eq i32 %572, 1
  br i1 %575, label %707, label %576, !dx.controlflow.hints !23

; <label>:576                                     ; preds = %574
  %577 = icmp eq i32 %572, 2
  br i1 %577, label %578, label %846, !dx.controlflow.hints !24

; <label>:578                                     ; preds = %576
  %579 = and i32 %571, 536870911
  %580 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %579)  ; FirstbitHi(value)
  %581 = icmp eq i32 %580, -1
  %582 = add i32 %580, 1
  %583 = call i32 @dx.op.unary.i32(i32 30, i32 %565)  ; Bfrev(value)
  %584 = and i32 %582, 31
  %585 = select i1 %581, i32 1, i32 %584
  %586 = lshr i32 %583, %585
  %587 = call i32 @dx.op.unary.i32(i32 30, i32 %566)  ; Bfrev(value)
  %588 = lshr i32 %587, %585
  %589 = and i32 %586, 1
  %590 = shl i32 %588, 1
  %591 = and i32 %590, 2
  %592 = or i32 %591, %589
  %593 = mul nuw nsw i32 %592, 10
  %594 = add i32 %568, 32
  %595 = add i32 %594, %593
  br label %596

; <label>:596                                     ; preds = %607, %578
  %597 = phi i32 [ 3, %578 ], [ %628, %607 ]
  %598 = phi i32 [ %586, %578 ], [ %608, %607 ]
  %599 = phi i32 [ %588, %578 ], [ %609, %607 ]
  %600 = phi i32 [ %595, %578 ], [ %642, %607 ]
  %601 = phi i32 [ 0, %578 ], [ %612, %607 ]
  %602 = phi i32 [ 0, %578 ], [ %603, %607 ]
  %603 = add nuw nsw i32 %602, 1
  %604 = icmp eq i32 %597, 2
  %605 = icmp ugt i32 %603, 9
  %606 = or i1 %604, %605
  br i1 %606, label %644, label %607, !dx.controlflow.hints !25

; <label>:607                                     ; preds = %596
  %608 = lshr i32 %598, 1
  %609 = lshr i32 %599, 1
  %610 = icmp eq i32 %597, 3
  %611 = add i32 %600, 4
  %612 = select i1 %610, i32 %611, i32 %601
  %613 = and i32 %600, -4
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = extractvalue %dx.types.ResRet.i32 %614, 1
  %617 = and i32 %600, 2
  %618 = icmp ne i32 %617, 0
  %619 = lshr i32 %615, 16
  %620 = shl i32 %616, 16
  %621 = or i32 %619, %620
  %622 = select i1 %618, i32 %621, i32 %615
  %623 = and i32 %608, 1
  %624 = and i32 %599, 2
  %625 = or i32 %623, %624
  %626 = shl nuw nsw i32 %625, 1
  %627 = lshr i32 %622, %626
  %628 = and i32 %627, 3
  %629 = lshr i32 %622, 8
  %630 = sub nsw i32 4, %625
  %631 = shl nuw nsw i32 %630, 1
  %632 = lshr i32 255, %631
  %633 = and i32 %622, %632
  %634 = and i32 %633, 85
  %635 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %634)  ; Countbits(value)
  %636 = shl i32 %635, 2
  %637 = and i32 %633, 170
  %638 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %637)  ; Countbits(value)
  %639 = mul i32 %638, 6
  %640 = add i32 %636, %600
  %641 = add i32 %640, %639
  %642 = add i32 %641, %629
  %643 = icmp eq i32 %628, 0
  br i1 %643, label %644, label %596

; <label>:644                                     ; preds = %607, %596
  %645 = phi i32 [ %600, %596 ], [ %612, %607 ]
  %646 = and i32 %645, -4
  %647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %646, i32 undef)  ; BufferLoad(srv,index,wot)
  %648 = extractvalue %dx.types.ResRet.i32 %647, 0
  %649 = extractvalue %dx.types.ResRet.i32 %647, 1
  %650 = and i32 %645, 2
  %651 = icmp ne i32 %650, 0
  %652 = lshr i32 %648, 16
  %653 = shl i32 %649, 16
  %654 = or i32 %652, %653
  %655 = select i1 %651, i32 %654, i32 %648
  %656 = add i32 %645, 4
  %657 = and i32 %656, -4
  %658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %657, i32 undef)  ; BufferLoad(srv,index,wot)
  %659 = extractvalue %dx.types.ResRet.i32 %658, 0
  %660 = and i32 %656, 2
  %661 = icmp ne i32 %660, 0
  %662 = lshr i32 %659, 16
  %663 = and i32 %659, 65535
  %664 = select i1 %661, i32 %662, i32 %663
  %665 = and i32 %655, 65535
  %666 = lshr i32 %655, 16
  %667 = and i32 %666, 16383
  %668 = lshr i32 %655, 30
  %669 = uitofp i32 %667 to float
  %670 = fmul fast float %669, 0x3F10004000000000
  %671 = fsub fast float 1.000000e+00, %670
  %672 = uitofp i32 %665 to float
  %673 = fmul fast float %672, 0x3EF0001000000000
  %674 = uitofp i32 %664 to float
  %675 = fmul fast float %674, 0x3F10001000000000
  %676 = fadd fast float %675, -2.000000e+00
  %677 = fmul fast float %673, %673
  %678 = fsub fast float 1.000000e+00, %677
  %679 = call float @dx.op.unary.f32(i32 24, float %678)  ; Sqrt(value)
  %680 = and i32 %668, 1
  %681 = icmp ne i32 %680, 0
  %682 = fsub fast float -0.000000e+00, %670
  %683 = select i1 %681, float %682, float %670
  %684 = and i32 %668, 2
  %685 = icmp ne i32 %684, 0
  %686 = fsub fast float -0.000000e+00, %671
  %687 = select i1 %685, float %686, float %671
  %688 = call float @dx.op.dot2.f32(i32 54, float %683, float %687, float %683, float %687)  ; Dot2(ax,ay,bx,by)
  %689 = call float @dx.op.unary.f32(i32 25, float %688)  ; Rsqrt(value)
  %690 = fmul fast float %689, %679
  %691 = fmul fast float %690, %683
  %692 = fmul fast float %690, %687
  %693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %694 = extractvalue %dx.types.ResRet.i32 %693, 0
  %695 = lshr i32 %694, 16
  %696 = and i32 %695, 31
  %697 = shl i32 1, %696
  %698 = uitofp i32 %697 to float
  %699 = fmul fast float %698, %123
  %700 = fmul fast float %698, %124
  %701 = call float @dx.op.unary.f32(i32 22, float %699)  ; Frc(value)
  %702 = call float @dx.op.unary.f32(i32 22, float %700)  ; Frc(value)
  %703 = call float @dx.op.dot2.f32(i32 54, float %691, float %692, float %701, float %702)  ; Dot2(ax,ay,bx,by)
  %704 = fsub fast float %676, %703
  %705 = fdiv fast float %704, %673
  %706 = call float @dx.op.unary.f32(i32 7, float %705)  ; Saturate(value)
  br label %846

; <label>:707                                     ; preds = %574
  %708 = and i32 %571, 536870911
  %709 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %708)  ; FirstbitHi(value)
  %710 = icmp eq i32 %709, -1
  %711 = add i32 %709, 1
  %712 = call i32 @dx.op.unary.i32(i32 30, i32 %565)  ; Bfrev(value)
  %713 = and i32 %711, 31
  %714 = select i1 %710, i32 1, i32 %713
  %715 = lshr i32 %712, %714
  %716 = call i32 @dx.op.unary.i32(i32 30, i32 %566)  ; Bfrev(value)
  %717 = lshr i32 %716, %714
  %718 = and i32 %715, 1
  %719 = shl i32 %717, 1
  %720 = and i32 %719, 2
  %721 = or i32 %720, %718
  %722 = shl nuw nsw i32 %721, 3
  %723 = or i32 %722, 32
  %724 = add i32 %723, %568
  br label %725

; <label>:725                                     ; preds = %736, %707
  %726 = phi i32 [ 3, %707 ], [ %757, %736 ]
  %727 = phi i32 [ %715, %707 ], [ %737, %736 ]
  %728 = phi i32 [ %717, %707 ], [ %738, %736 ]
  %729 = phi i32 [ %724, %707 ], [ %771, %736 ]
  %730 = phi i32 [ 0, %707 ], [ %741, %736 ]
  %731 = phi i32 [ 0, %707 ], [ %732, %736 ]
  %732 = add nuw nsw i32 %731, 1
  %733 = icmp eq i32 %726, 2
  %734 = icmp ugt i32 %732, 9
  %735 = or i1 %733, %734
  br i1 %735, label %773, label %736, !dx.controlflow.hints !26

; <label>:736                                     ; preds = %725
  %737 = lshr i32 %727, 1
  %738 = lshr i32 %728, 1
  %739 = icmp eq i32 %726, 3
  %740 = add i32 %729, 4
  %741 = select i1 %739, i32 %740, i32 %730
  %742 = and i32 %729, -4
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = extractvalue %dx.types.ResRet.i32 %743, 1
  %746 = and i32 %729, 2
  %747 = icmp ne i32 %746, 0
  %748 = lshr i32 %744, 16
  %749 = shl i32 %745, 16
  %750 = or i32 %748, %749
  %751 = select i1 %747, i32 %750, i32 %744
  %752 = and i32 %737, 1
  %753 = and i32 %728, 2
  %754 = or i32 %752, %753
  %755 = shl nuw nsw i32 %754, 1
  %756 = lshr i32 %751, %755
  %757 = and i32 %756, 3
  %758 = lshr i32 %751, 8
  %759 = sub nsw i32 4, %754
  %760 = shl nuw nsw i32 %759, 1
  %761 = lshr i32 255, %760
  %762 = and i32 %751, %761
  %763 = and i32 %762, 85
  %764 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %763)  ; Countbits(value)
  %765 = shl i32 %764, 2
  %766 = and i32 %762, 170
  %767 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %766)  ; Countbits(value)
  %768 = shl i32 %767, 1
  %769 = add i32 %765, %729
  %770 = add i32 %769, %768
  %771 = add i32 %770, %758
  %772 = icmp eq i32 %757, 0
  br i1 %772, label %773, label %725

; <label>:773                                     ; preds = %736, %725
  %774 = phi i32 [ %729, %725 ], [ %741, %736 ]
  %775 = and i32 %774, -4
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %774, 2
  %779 = icmp ne i32 %778, 0
  %780 = lshr i32 %777, 16
  %781 = and i32 %777, 65535
  %782 = select i1 %779, i32 %780, i32 %781
  %783 = uitofp i32 %782 to float
  %784 = fmul fast float %783, 0x3EF0001000000000
  br label %846

; <label>:785                                     ; preds = %562
  %786 = and i32 %571, 536870911
  %787 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %786)  ; FirstbitHi(value)
  %788 = icmp eq i32 %787, -1
  %789 = add i32 %787, 1
  %790 = call i32 @dx.op.unary.i32(i32 30, i32 %565)  ; Bfrev(value)
  %791 = and i32 %789, 31
  %792 = select i1 %788, i32 1, i32 %791
  %793 = lshr i32 %790, %792
  %794 = call i32 @dx.op.unary.i32(i32 30, i32 %566)  ; Bfrev(value)
  %795 = lshr i32 %794, %792
  %796 = and i32 %793, 1
  %797 = shl i32 %795, 1
  %798 = and i32 %797, 2
  %799 = or i32 %798, %796
  %800 = mul nuw nsw i32 %799, 12
  %801 = add i32 %568, 32
  %802 = add i32 %801, %800
  br label %803

; <label>:803                                     ; preds = %814, %785
  %804 = phi i32 [ 2, %785 ], [ %827, %814 ]
  %805 = phi i32 [ %793, %785 ], [ %815, %814 ]
  %806 = phi i32 [ %795, %785 ], [ %816, %814 ]
  %807 = phi i32 [ %802, %785 ], [ %839, %814 ]
  %808 = phi i32 [ 0, %785 ], [ %819, %814 ]
  %809 = phi i32 [ 0, %785 ], [ %810, %814 ]
  %810 = add nuw nsw i32 %809, 1
  %811 = icmp eq i32 %804, 3
  %812 = icmp ugt i32 %810, 9
  %813 = or i1 %811, %812
  br i1 %813, label %841, label %814, !dx.controlflow.hints !27

; <label>:814                                     ; preds = %803
  %815 = lshr i32 %805, 1
  %816 = lshr i32 %806, 1
  %817 = icmp eq i32 %804, 2
  %818 = add i32 %807, 4
  %819 = select i1 %817, i32 %818, i32 %808
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %815, 1
  %823 = and i32 %806, 2
  %824 = or i32 %822, %823
  %825 = shl nuw nsw i32 %824, 1
  %826 = lshr i32 %821, %825
  %827 = and i32 %826, 3
  %828 = lshr i32 %821, 8
  %829 = sub nsw i32 4, %824
  %830 = shl nuw nsw i32 %829, 1
  %831 = lshr i32 255, %830
  %832 = and i32 %821, %831
  %833 = lshr i32 %832, 1
  %834 = and i32 %833, 85
  %835 = xor i32 %834, %832
  %836 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %835)  ; Countbits(value)
  %837 = shl i32 %836, 2
  %838 = add i32 %837, %807
  %839 = add i32 %838, %828
  %840 = icmp eq i32 %827, 0
  br i1 %840, label %841, label %803

; <label>:841                                     ; preds = %814, %803
  %842 = phi i32 [ %807, %803 ], [ %819, %814 ]
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = bitcast i32 %844 to float
  br label %846

; <label>:846                                     ; preds = %841, %773, %644, %576
  %847 = phi float [ %845, %841 ], [ %784, %773 ], [ %706, %644 ], [ 0.000000e+00, %576 ]
  %848 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %522
  store float %847, float* %848, align 4
  %849 = fcmp fast ogt float %847, 0.000000e+00
  %850 = add i32 %568, 20
  br i1 %849, label %851, label %866, !dx.controlflow.hints !28

; <label>:851                                     ; preds = %846
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = extractvalue %dx.types.ResRet.i32 %852, 1
  %855 = bitcast i32 %853 to float
  %856 = bitcast i32 %854 to float
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = extractvalue %dx.types.ResRet.i32 %857, 1
  %860 = bitcast i32 %858 to float
  %861 = bitcast i32 %859 to float
  %862 = fdiv fast float %847, %856
  %863 = fsub fast float %862, %855
  %864 = fadd fast float %863, %860
  %865 = fmul fast float %864, %861
  br label %866

; <label>:866                                     ; preds = %851, %846
  %867 = phi float [ %865, %851 ], [ %847, %846 ]
  %868 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %522
  store float %867, float* %868, align 4
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = extractvalue %dx.types.ResRet.i32 %869, 1
  %872 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %522
  %873 = bitcast float* %872 to i32*
  store i32 %870, i32* %873, align 4
  %874 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %522
  %875 = bitcast float* %874 to i32*
  store i32 %871, i32* %875, align 4
  br label %876

; <label>:876                                     ; preds = %866, %552
  %877 = phi float [ %867, %866 ], [ %561, %552 ]
  %878 = getelementptr [12 x float], [12 x float]* %12, i32 0, i32 %523
  %879 = load float, float* %878, align 4
  %880 = fcmp fast ogt float %877, %879
  %881 = select i1 %880, i32 %522, i32 %523
  %882 = add i32 %522, 1
  br label %883

; <label>:883                                     ; preds = %876, %521
  %884 = phi i32 [ %522, %521 ], [ %882, %876 ]
  %885 = phi i32 [ %523, %521 ], [ %881, %876 ]
  %886 = add nuw i32 %524, 1
  %887 = icmp eq i32 %886, %518
  br i1 %887, label %888, label %521

; <label>:888                                     ; preds = %883
  br label %889

; <label>:889                                     ; preds = %888, %513
  %890 = phi i32 [ %514, %513 ], [ %884, %888 ]
  %891 = phi i32 [ %515, %513 ], [ %885, %888 ]
  %892 = icmp eq i32 %890, 1
  br i1 %892, label %931, label %893, !dx.controlflow.hints !36

; <label>:893                                     ; preds = %889
  %894 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 0
  %895 = load float, float* %894, align 4
  %896 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 0
  %897 = load float, float* %896, align 4
  %898 = fdiv fast float 1.000000e+00, %897
  %899 = fsub fast float %895, %898
  %900 = icmp ugt i32 %890, 1
  br i1 %900, label %901, label %917

; <label>:901                                     ; preds = %893
  br label %902

; <label>:902                                     ; preds = %902, %901
  %903 = phi float [ %912, %902 ], [ %899, %901 ]
  %904 = phi float [ %913, %902 ], [ %895, %901 ]
  %905 = phi i32 [ %914, %902 ], [ 1, %901 ]
  %906 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %905
  %907 = load float, float* %906, align 4
  %908 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %905
  %909 = load float, float* %908, align 4
  %910 = fdiv fast float 1.000000e+00, %909
  %911 = fsub fast float %907, %910
  %912 = call float @dx.op.binary.f32(i32 36, float %903, float %911)  ; FMin(a,b)
  %913 = call float @dx.op.binary.f32(i32 35, float %904, float %907)  ; FMax(a,b)
  %914 = add nuw i32 %905, 1
  %915 = icmp eq i32 %914, %890
  br i1 %915, label %916, label %902

; <label>:916                                     ; preds = %902
  br label %917

; <label>:917                                     ; preds = %916, %893
  %918 = phi float [ %899, %893 ], [ %912, %916 ]
  %919 = phi float [ %895, %893 ], [ %913, %916 ]
  %920 = getelementptr [12 x float], [12 x float]* %11, i32 0, i32 %891
  %921 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %891
  %922 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %891
  %923 = load float, float* %920, align 4
  %924 = load float, float* %921, align 4
  %925 = load float, float* %922, align 4
  %926 = fdiv fast float %923, %925
  %927 = fsub fast float %919, %924
  %928 = fadd fast float %927, %926
  %929 = fsub fast float %919, %918
  %930 = fdiv fast float %928, %929
  br label %934

; <label>:931                                     ; preds = %889
  %932 = getelementptr [12 x float], [12 x float]* %11, i32 0, i32 0
  %933 = load float, float* %932, align 4
  br label %934

; <label>:934                                     ; preds = %931, %917, %100
  %935 = phi float [ %933, %931 ], [ %930, %917 ], [ 0.000000e+00, %100 ]
  %936 = fmul fast float %935, 2.000000e+00
  %937 = fsub fast float 1.000000e+00, %936
  %938 = fmul fast float %937, %937
  %939 = fmul fast float %938, %937
  %940 = fmul fast float %938, %938
  %941 = add i32 %106, 1
  %942 = uitofp i32 %941 to float
  %943 = fdiv fast float 1.000000e+00, %942
  %944 = fmul fast float %935, 3.000000e+00
  %945 = fsub fast float 1.500000e+00, %944
  %946 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %939, float %945)  ; FMad(a,b,c)
  %947 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %938, float 0.000000e+00)  ; FMad(a,b,c)
  %948 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %940, float %947)  ; FMad(a,b,c)
  %949 = fmul fast float %935, 0x3FFBB67AE0000000
  %950 = fsub fast float 0x3FEBB67AE0000000, %949
  %951 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %939, float %950)  ; FMad(a,b,c)
  %952 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %938, float 0.000000e+00)  ; FMad(a,b,c)
  %953 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %940, float %952)  ; FMad(a,b,c)
  %954 = fsub fast float 5.000000e-01, %101
  %955 = fadd fast float %954, %946
  %956 = fsub fast float %948, %102
  %957 = fsub fast float 5.000000e-01, %103
  %958 = fadd fast float %957, %951
  %959 = fsub fast float %953, %104
  %960 = fmul fast float %955, %943
  %961 = fmul fast float %956, %943
  %962 = fmul fast float %958, %943
  %963 = fmul fast float %959, %943
  %964 = fadd fast float %960, %101
  %965 = fadd fast float %961, %102
  %966 = fadd fast float %962, %103
  %967 = fadd fast float %963, %104
  %968 = add nuw i32 %105, 1
  %969 = icmp eq i32 %968, %64
  br i1 %969, label %970, label %100, !llvm.loop !37

; <label>:970                                     ; preds = %934
  br label %971

; <label>:971                                     ; preds = %970, %67
  %972 = phi float [ %94, %67 ], [ %964, %970 ]
  %973 = phi float [ %95, %67 ], [ %965, %970 ]
  %974 = phi float [ %96, %67 ], [ %966, %970 ]
  %975 = phi float [ %97, %67 ], [ %967, %970 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 0, float %972, float %973, float %974, float %975, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %976

; <label>:976                                     ; preds = %971, %54
  %977 = phi i32 [ %25, %54 ], [ %72, %971 ]
  %978 = shl i32 %48, 1
  %979 = add i32 %45, 1
  %980 = icmp ugt i32 %979, %46
  br i1 %980, label %3760, label %981, !dx.controlflow.hints !18

; <label>:981                                     ; preds = %976
  %982 = lshr i32 %977, 4
  %983 = and i32 %982, 31
  %984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.i32 %984, 1
  %986 = and i32 %985, 31
  %987 = lshr i32 %978, %986
  %988 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %987)  ; UMax(a,b)
  %989 = mul i32 %988, %988
  %990 = lshr i32 %989, 4
  %991 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %990)  ; UMax(a,b)
  %992 = mul i32 %991, %983
  %993 = icmp ult i32 %992, %989
  br i1 %993, label %994, label %1904, !dx.controlflow.hints !19

; <label>:994                                     ; preds = %981
  %995 = shl nuw nsw i32 %983, 4
  %996 = add nuw nsw i32 %995, 16
  %997 = and i32 %996, 496
  %998 = and i32 %977, -497
  %999 = or i32 %997, %998
  %1000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 321)  ; CBufferLoadLegacy(handle,regIndex)
  %1001 = extractvalue %dx.types.CBufRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.CBufRet.f32 %1000, 1
  %1003 = fmul fast float %35, 5.000000e-01
  %1004 = fmul fast float %1003, %52
  %1005 = fmul fast float %1001, %1004
  %1006 = fmul fast float %1002, %1004
  %1007 = fsub fast float %40, %1005
  %1008 = fsub fast float %41, %1006
  %1009 = call float @dx.op.unary.f32(i32 22, float %1007)  ; Frc(value)
  %1010 = call float @dx.op.unary.f32(i32 22, float %1008)  ; Frc(value)
  %1011 = uitofp i32 %978 to float
  %1012 = fmul fast float %1011, %43
  %1013 = fmul fast float %1009, 2.000000e+00
  %1014 = fmul fast float %1010, 2.000000e+00
  %1015 = fadd fast float %1013, -1.000000e+00
  %1016 = fadd fast float %1014, -1.000000e+00
  %1017 = fmul fast float %1015, %1012
  %1018 = fmul fast float %1016, %1012
  %1019 = fadd fast float %1017, %1001
  %1020 = fadd fast float %1018, %1002
  %1021 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %22, i32 %23, i32 1, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = extractvalue %dx.types.ResRet.f32 %1021, 3
  %1026 = icmp eq i32 %991, 0
  br i1 %1026, label %1899, label %1027

; <label>:1027                                    ; preds = %994
  br label %1028

; <label>:1028                                    ; preds = %1862, %1027
  %1029 = phi float [ %1892, %1862 ], [ %1022, %1027 ]
  %1030 = phi float [ %1893, %1862 ], [ %1023, %1027 ]
  %1031 = phi float [ %1894, %1862 ], [ %1024, %1027 ]
  %1032 = phi float [ %1895, %1862 ], [ %1025, %1027 ]
  %1033 = phi i32 [ %1896, %1862 ], [ 0, %1027 ]
  %1034 = add i32 %1033, %992
  %1035 = urem i32 %1034, %988
  %1036 = uitofp i32 %1035 to float
  %1037 = udiv i32 %1034, %988
  %1038 = uitofp i32 %1037 to float
  %1039 = fadd fast float %1036, 5.000000e-01
  %1040 = fadd fast float %1038, 5.000000e-01
  %1041 = uitofp i32 %988 to float
  %1042 = fdiv fast float %1039, %1041
  %1043 = fdiv fast float %1040, %1041
  %1044 = fmul fast float %1012, %35
  %1045 = fmul fast float %1042, 2.000000e+00
  %1046 = fmul fast float %1043, 2.000000e+00
  %1047 = fadd fast float %1045, -1.000000e+00
  %1048 = fadd fast float %1046, -1.000000e+00
  %1049 = fmul fast float %1047, %1044
  %1050 = fmul fast float %1048, %1044
  %1051 = fadd fast float %1019, %1049
  %1052 = fadd fast float %1020, %1050
  %1053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.i32 %1053, 0
  %1055 = and i32 %1054, 536870911
  %1056 = uitofp i32 %1055 to float
  %1057 = fmul fast float %1056, %1051
  %1058 = fmul fast float %1056, %1052
  %1059 = fptoui float %1057 to i32
  %1060 = fptoui float %1058 to i32
  %1061 = fcmp fast olt float %1051, 0.000000e+00
  %1062 = fcmp fast olt float %1052, 0.000000e+00
  %1063 = or i1 %1061, %1062
  %1064 = fcmp fast oge float %1051, 1.000000e+00
  %1065 = fcmp fast oge float %1052, 1.000000e+00
  %1066 = or i1 %1064, %1065
  %1067 = or i1 %1063, %1066
  br i1 %1067, label %1862, label %1068, !dx.controlflow.hints !20

; <label>:1068                                    ; preds = %1028
  %1069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1070 = extractvalue %dx.types.ResRet.i32 %1069, 0
  %1071 = and i32 %1070, 31
  %1072 = lshr i32 %1059, %1071
  %1073 = lshr i32 %1060, %1071
  %1074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.i32 %1074, 0
  %1076 = and i32 %1075, 31
  %1077 = shl i32 1, %1076
  %1078 = call i32 @dx.op.binary.i32(i32 40, i32 %1077, i32 4)  ; UMin(a,b)
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.i32 %1079, 1
  %1082 = icmp eq i32 %1078, 0
  br i1 %1082, label %1441, label %1083

; <label>:1083                                    ; preds = %1068
  br label %1084

; <label>:1084                                    ; preds = %1426, %1083
  %1085 = phi i32 [ %1432, %1426 ], [ 0, %1083 ]
  %1086 = phi i32 [ %1431, %1426 ], [ 0, %1083 ]
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = lshr i32 %1088, 16
  %1090 = and i32 %1089, 31
  %1091 = shl i32 %1073, %1090
  %1092 = add i32 %1091, %1072
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = and i32 %1094, 31
  %1096 = shl i32 %1092, %1095
  %1097 = add i32 %1096, %1085
  %1098 = shl i32 %1097, 2
  %1099 = add i32 %1098, 32
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = icmp slt i32 %1101, 0
  br i1 %1102, label %1113, label %1103, !dx.controlflow.hints !21

; <label>:1103                                    ; preds = %1084
  %1104 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %1085
  %1105 = bitcast float* %1104 to i32*
  store i32 %1101, i32* %1105, align 4
  %1106 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %1085
  %1107 = bitcast float* %1106 to i32*
  store i32 %1101, i32* %1107, align 4
  %1108 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %1085
  %1109 = bitcast float* %1108 to i32*
  store i32 %1080, i32* %1109, align 4
  %1110 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %1085
  %1111 = bitcast float* %1110 to i32*
  store i32 %1081, i32* %1111, align 4
  %1112 = bitcast i32 %1101 to float
  br label %1426

; <label>:1113                                    ; preds = %1084
  %1114 = shl i32 1, %1071
  %1115 = add i32 %1114, -1
  %1116 = and i32 %1115, %1059
  %1117 = and i32 %1115, %1060
  %1118 = and i32 %1101, 1073741823
  %1119 = add nuw nsw i32 %1118, 4
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = lshr i32 %1121, 29
  %1123 = icmp eq i32 %1122, 0
  br i1 %1123, label %1335, label %1124, !dx.controlflow.hints !22

; <label>:1124                                    ; preds = %1113
  %1125 = icmp eq i32 %1122, 1
  br i1 %1125, label %1257, label %1126, !dx.controlflow.hints !23

; <label>:1126                                    ; preds = %1124
  %1127 = icmp eq i32 %1122, 2
  br i1 %1127, label %1128, label %1396, !dx.controlflow.hints !24

; <label>:1128                                    ; preds = %1126
  %1129 = and i32 %1121, 536870911
  %1130 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1129)  ; FirstbitHi(value)
  %1131 = icmp eq i32 %1130, -1
  %1132 = add i32 %1130, 1
  %1133 = call i32 @dx.op.unary.i32(i32 30, i32 %1116)  ; Bfrev(value)
  %1134 = and i32 %1132, 31
  %1135 = select i1 %1131, i32 1, i32 %1134
  %1136 = lshr i32 %1133, %1135
  %1137 = call i32 @dx.op.unary.i32(i32 30, i32 %1117)  ; Bfrev(value)
  %1138 = lshr i32 %1137, %1135
  %1139 = and i32 %1136, 1
  %1140 = shl i32 %1138, 1
  %1141 = and i32 %1140, 2
  %1142 = or i32 %1141, %1139
  %1143 = mul nuw nsw i32 %1142, 10
  %1144 = add nuw nsw i32 %1118, 32
  %1145 = add nuw i32 %1144, %1143
  br label %1146

; <label>:1146                                    ; preds = %1157, %1128
  %1147 = phi i32 [ 3, %1128 ], [ %1178, %1157 ]
  %1148 = phi i32 [ %1136, %1128 ], [ %1158, %1157 ]
  %1149 = phi i32 [ %1138, %1128 ], [ %1159, %1157 ]
  %1150 = phi i32 [ %1145, %1128 ], [ %1192, %1157 ]
  %1151 = phi i32 [ 0, %1128 ], [ %1162, %1157 ]
  %1152 = phi i32 [ 0, %1128 ], [ %1153, %1157 ]
  %1153 = add nuw nsw i32 %1152, 1
  %1154 = icmp eq i32 %1147, 2
  %1155 = icmp ugt i32 %1153, 9
  %1156 = or i1 %1154, %1155
  br i1 %1156, label %1194, label %1157, !dx.controlflow.hints !25

; <label>:1157                                    ; preds = %1146
  %1158 = lshr i32 %1148, 1
  %1159 = lshr i32 %1149, 1
  %1160 = icmp eq i32 %1147, 3
  %1161 = add i32 %1150, 4
  %1162 = select i1 %1160, i32 %1161, i32 %1151
  %1163 = and i32 %1150, -4
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1163, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = extractvalue %dx.types.ResRet.i32 %1164, 1
  %1167 = and i32 %1150, 2
  %1168 = icmp ne i32 %1167, 0
  %1169 = lshr i32 %1165, 16
  %1170 = shl i32 %1166, 16
  %1171 = or i32 %1169, %1170
  %1172 = select i1 %1168, i32 %1171, i32 %1165
  %1173 = and i32 %1158, 1
  %1174 = and i32 %1149, 2
  %1175 = or i32 %1173, %1174
  %1176 = shl nuw nsw i32 %1175, 1
  %1177 = lshr i32 %1172, %1176
  %1178 = and i32 %1177, 3
  %1179 = lshr i32 %1172, 8
  %1180 = sub nsw i32 4, %1175
  %1181 = shl nuw nsw i32 %1180, 1
  %1182 = lshr i32 255, %1181
  %1183 = and i32 %1172, %1182
  %1184 = and i32 %1183, 85
  %1185 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1184)  ; Countbits(value)
  %1186 = shl i32 %1185, 2
  %1187 = and i32 %1183, 170
  %1188 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1187)  ; Countbits(value)
  %1189 = mul i32 %1188, 6
  %1190 = add i32 %1186, %1150
  %1191 = add i32 %1190, %1189
  %1192 = add i32 %1191, %1179
  %1193 = icmp eq i32 %1178, 0
  br i1 %1193, label %1194, label %1146

; <label>:1194                                    ; preds = %1157, %1146
  %1195 = phi i32 [ %1150, %1146 ], [ %1162, %1157 ]
  %1196 = and i32 %1195, -4
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1196, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = extractvalue %dx.types.ResRet.i32 %1197, 1
  %1200 = and i32 %1195, 2
  %1201 = icmp ne i32 %1200, 0
  %1202 = lshr i32 %1198, 16
  %1203 = shl i32 %1199, 16
  %1204 = or i32 %1202, %1203
  %1205 = select i1 %1201, i32 %1204, i32 %1198
  %1206 = add i32 %1195, 4
  %1207 = and i32 %1206, -4
  %1208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1207, i32 undef)  ; BufferLoad(srv,index,wot)
  %1209 = extractvalue %dx.types.ResRet.i32 %1208, 0
  %1210 = and i32 %1206, 2
  %1211 = icmp ne i32 %1210, 0
  %1212 = lshr i32 %1209, 16
  %1213 = and i32 %1209, 65535
  %1214 = select i1 %1211, i32 %1212, i32 %1213
  %1215 = and i32 %1205, 65535
  %1216 = lshr i32 %1205, 16
  %1217 = and i32 %1216, 16383
  %1218 = lshr i32 %1205, 30
  %1219 = uitofp i32 %1217 to float
  %1220 = fmul fast float %1219, 0x3F10004000000000
  %1221 = fsub fast float 1.000000e+00, %1220
  %1222 = uitofp i32 %1215 to float
  %1223 = fmul fast float %1222, 0x3EF0001000000000
  %1224 = uitofp i32 %1214 to float
  %1225 = fmul fast float %1224, 0x3F10001000000000
  %1226 = fadd fast float %1225, -2.000000e+00
  %1227 = fmul fast float %1223, %1223
  %1228 = fsub fast float 1.000000e+00, %1227
  %1229 = call float @dx.op.unary.f32(i32 24, float %1228)  ; Sqrt(value)
  %1230 = and i32 %1218, 1
  %1231 = icmp ne i32 %1230, 0
  %1232 = fsub fast float -0.000000e+00, %1220
  %1233 = select i1 %1231, float %1232, float %1220
  %1234 = and i32 %1218, 2
  %1235 = icmp ne i32 %1234, 0
  %1236 = fsub fast float -0.000000e+00, %1221
  %1237 = select i1 %1235, float %1236, float %1221
  %1238 = call float @dx.op.dot2.f32(i32 54, float %1233, float %1237, float %1233, float %1237)  ; Dot2(ax,ay,bx,by)
  %1239 = call float @dx.op.unary.f32(i32 25, float %1238)  ; Rsqrt(value)
  %1240 = fmul fast float %1239, %1229
  %1241 = fmul fast float %1240, %1233
  %1242 = fmul fast float %1240, %1237
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = lshr i32 %1244, 16
  %1246 = and i32 %1245, 31
  %1247 = shl i32 1, %1246
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, %1051
  %1250 = fmul fast float %1248, %1052
  %1251 = call float @dx.op.unary.f32(i32 22, float %1249)  ; Frc(value)
  %1252 = call float @dx.op.unary.f32(i32 22, float %1250)  ; Frc(value)
  %1253 = call float @dx.op.dot2.f32(i32 54, float %1241, float %1242, float %1251, float %1252)  ; Dot2(ax,ay,bx,by)
  %1254 = fsub fast float %1226, %1253
  %1255 = fdiv fast float %1254, %1223
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  br label %1396

; <label>:1257                                    ; preds = %1124
  %1258 = and i32 %1121, 536870911
  %1259 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1258)  ; FirstbitHi(value)
  %1260 = icmp eq i32 %1259, -1
  %1261 = add i32 %1259, 1
  %1262 = call i32 @dx.op.unary.i32(i32 30, i32 %1116)  ; Bfrev(value)
  %1263 = and i32 %1261, 31
  %1264 = select i1 %1260, i32 1, i32 %1263
  %1265 = lshr i32 %1262, %1264
  %1266 = call i32 @dx.op.unary.i32(i32 30, i32 %1117)  ; Bfrev(value)
  %1267 = lshr i32 %1266, %1264
  %1268 = and i32 %1265, 1
  %1269 = shl i32 %1267, 1
  %1270 = and i32 %1269, 2
  %1271 = or i32 %1270, %1268
  %1272 = shl nuw nsw i32 %1271, 3
  %1273 = or i32 %1272, 32
  %1274 = add nuw nsw i32 %1273, %1118
  br label %1275

; <label>:1275                                    ; preds = %1286, %1257
  %1276 = phi i32 [ 3, %1257 ], [ %1307, %1286 ]
  %1277 = phi i32 [ %1265, %1257 ], [ %1287, %1286 ]
  %1278 = phi i32 [ %1267, %1257 ], [ %1288, %1286 ]
  %1279 = phi i32 [ %1274, %1257 ], [ %1321, %1286 ]
  %1280 = phi i32 [ 0, %1257 ], [ %1291, %1286 ]
  %1281 = phi i32 [ 0, %1257 ], [ %1282, %1286 ]
  %1282 = add nuw nsw i32 %1281, 1
  %1283 = icmp eq i32 %1276, 2
  %1284 = icmp ugt i32 %1282, 9
  %1285 = or i1 %1283, %1284
  br i1 %1285, label %1323, label %1286, !dx.controlflow.hints !26

; <label>:1286                                    ; preds = %1275
  %1287 = lshr i32 %1277, 1
  %1288 = lshr i32 %1278, 1
  %1289 = icmp eq i32 %1276, 3
  %1290 = add i32 %1279, 4
  %1291 = select i1 %1289, i32 %1290, i32 %1280
  %1292 = and i32 %1279, -4
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1292, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = extractvalue %dx.types.ResRet.i32 %1293, 1
  %1296 = and i32 %1279, 2
  %1297 = icmp ne i32 %1296, 0
  %1298 = lshr i32 %1294, 16
  %1299 = shl i32 %1295, 16
  %1300 = or i32 %1298, %1299
  %1301 = select i1 %1297, i32 %1300, i32 %1294
  %1302 = and i32 %1287, 1
  %1303 = and i32 %1278, 2
  %1304 = or i32 %1302, %1303
  %1305 = shl nuw nsw i32 %1304, 1
  %1306 = lshr i32 %1301, %1305
  %1307 = and i32 %1306, 3
  %1308 = lshr i32 %1301, 8
  %1309 = sub nsw i32 4, %1304
  %1310 = shl nuw nsw i32 %1309, 1
  %1311 = lshr i32 255, %1310
  %1312 = and i32 %1301, %1311
  %1313 = and i32 %1312, 85
  %1314 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1313)  ; Countbits(value)
  %1315 = shl i32 %1314, 2
  %1316 = and i32 %1312, 170
  %1317 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1316)  ; Countbits(value)
  %1318 = shl i32 %1317, 1
  %1319 = add i32 %1315, %1279
  %1320 = add i32 %1319, %1318
  %1321 = add i32 %1320, %1308
  %1322 = icmp eq i32 %1307, 0
  br i1 %1322, label %1323, label %1275

; <label>:1323                                    ; preds = %1286, %1275
  %1324 = phi i32 [ %1279, %1275 ], [ %1291, %1286 ]
  %1325 = and i32 %1324, -4
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1324, 2
  %1329 = icmp ne i32 %1328, 0
  %1330 = lshr i32 %1327, 16
  %1331 = and i32 %1327, 65535
  %1332 = select i1 %1329, i32 %1330, i32 %1331
  %1333 = uitofp i32 %1332 to float
  %1334 = fmul fast float %1333, 0x3EF0001000000000
  br label %1396

; <label>:1335                                    ; preds = %1113
  %1336 = and i32 %1121, 536870911
  %1337 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1336)  ; FirstbitHi(value)
  %1338 = icmp eq i32 %1337, -1
  %1339 = add i32 %1337, 1
  %1340 = call i32 @dx.op.unary.i32(i32 30, i32 %1116)  ; Bfrev(value)
  %1341 = and i32 %1339, 31
  %1342 = select i1 %1338, i32 1, i32 %1341
  %1343 = lshr i32 %1340, %1342
  %1344 = call i32 @dx.op.unary.i32(i32 30, i32 %1117)  ; Bfrev(value)
  %1345 = lshr i32 %1344, %1342
  %1346 = and i32 %1343, 1
  %1347 = shl i32 %1345, 1
  %1348 = and i32 %1347, 2
  %1349 = or i32 %1348, %1346
  %1350 = mul nuw nsw i32 %1349, 12
  %1351 = add nuw nsw i32 %1118, 32
  %1352 = add nuw i32 %1351, %1350
  br label %1353

; <label>:1353                                    ; preds = %1364, %1335
  %1354 = phi i32 [ 2, %1335 ], [ %1377, %1364 ]
  %1355 = phi i32 [ %1343, %1335 ], [ %1365, %1364 ]
  %1356 = phi i32 [ %1345, %1335 ], [ %1366, %1364 ]
  %1357 = phi i32 [ %1352, %1335 ], [ %1389, %1364 ]
  %1358 = phi i32 [ 0, %1335 ], [ %1369, %1364 ]
  %1359 = phi i32 [ 0, %1335 ], [ %1360, %1364 ]
  %1360 = add nuw nsw i32 %1359, 1
  %1361 = icmp eq i32 %1354, 3
  %1362 = icmp ugt i32 %1360, 9
  %1363 = or i1 %1361, %1362
  br i1 %1363, label %1391, label %1364, !dx.controlflow.hints !27

; <label>:1364                                    ; preds = %1353
  %1365 = lshr i32 %1355, 1
  %1366 = lshr i32 %1356, 1
  %1367 = icmp eq i32 %1354, 2
  %1368 = add i32 %1357, 4
  %1369 = select i1 %1367, i32 %1368, i32 %1358
  %1370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1357, i32 undef)  ; BufferLoad(srv,index,wot)
  %1371 = extractvalue %dx.types.ResRet.i32 %1370, 0
  %1372 = and i32 %1365, 1
  %1373 = and i32 %1356, 2
  %1374 = or i32 %1372, %1373
  %1375 = shl nuw nsw i32 %1374, 1
  %1376 = lshr i32 %1371, %1375
  %1377 = and i32 %1376, 3
  %1378 = lshr i32 %1371, 8
  %1379 = sub nsw i32 4, %1374
  %1380 = shl nuw nsw i32 %1379, 1
  %1381 = lshr i32 255, %1380
  %1382 = and i32 %1371, %1381
  %1383 = lshr i32 %1382, 1
  %1384 = and i32 %1383, 85
  %1385 = xor i32 %1384, %1382
  %1386 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1385)  ; Countbits(value)
  %1387 = shl i32 %1386, 2
  %1388 = add i32 %1387, %1357
  %1389 = add i32 %1388, %1378
  %1390 = icmp eq i32 %1377, 0
  br i1 %1390, label %1391, label %1353

; <label>:1391                                    ; preds = %1364, %1353
  %1392 = phi i32 [ %1357, %1353 ], [ %1369, %1364 ]
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1392, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = bitcast i32 %1394 to float
  br label %1396

; <label>:1396                                    ; preds = %1391, %1323, %1194, %1126
  %1397 = phi float [ %1395, %1391 ], [ %1334, %1323 ], [ %1256, %1194 ], [ 0.000000e+00, %1126 ]
  %1398 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %1085
  store float %1397, float* %1398, align 4
  %1399 = fcmp fast ogt float %1397, 0.000000e+00
  %1400 = add nuw nsw i32 %1118, 20
  br i1 %1399, label %1401, label %1416, !dx.controlflow.hints !28

; <label>:1401                                    ; preds = %1396
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = extractvalue %dx.types.ResRet.i32 %1402, 1
  %1405 = bitcast i32 %1403 to float
  %1406 = bitcast i32 %1404 to float
  %1407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1408 = extractvalue %dx.types.ResRet.i32 %1407, 0
  %1409 = extractvalue %dx.types.ResRet.i32 %1407, 1
  %1410 = bitcast i32 %1408 to float
  %1411 = bitcast i32 %1409 to float
  %1412 = fdiv fast float %1397, %1406
  %1413 = fsub fast float %1412, %1405
  %1414 = fadd fast float %1413, %1410
  %1415 = fmul fast float %1414, %1411
  br label %1416

; <label>:1416                                    ; preds = %1401, %1396
  %1417 = phi float [ %1415, %1401 ], [ %1397, %1396 ]
  %1418 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %1085
  store float %1417, float* %1418, align 4
  %1419 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1420 = extractvalue %dx.types.ResRet.i32 %1419, 0
  %1421 = extractvalue %dx.types.ResRet.i32 %1419, 1
  %1422 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %1085
  %1423 = bitcast float* %1422 to i32*
  store i32 %1420, i32* %1423, align 4
  %1424 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %1085
  %1425 = bitcast float* %1424 to i32*
  store i32 %1421, i32* %1425, align 4
  br label %1426

; <label>:1426                                    ; preds = %1416, %1103
  %1427 = phi float [ %1417, %1416 ], [ %1112, %1103 ]
  %1428 = getelementptr [12 x float], [12 x float]* %12, i32 0, i32 %1086
  %1429 = load float, float* %1428, align 4
  %1430 = fcmp fast ogt float %1427, %1429
  %1431 = select i1 %1430, i32 %1085, i32 %1086
  %1432 = add nuw i32 %1085, 1
  %1433 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1434 = extractvalue %dx.types.CBufRet.i32 %1433, 2
  %1435 = icmp eq i32 %1434, 0
  %1436 = icmp ugt i32 %1101, -1073741825
  %1437 = and i1 %1436, %1435
  %1438 = icmp ult i32 %1432, %1078
  %1439 = and i1 %1437, %1438
  br i1 %1439, label %1084, label %1440, !dx.controlflow.hints !29

; <label>:1440                                    ; preds = %1426
  br label %1441

; <label>:1441                                    ; preds = %1440, %1068
  %1442 = phi i32 [ 0, %1068 ], [ %1432, %1440 ]
  %1443 = phi i32 [ 0, %1068 ], [ %1431, %1440 ]
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 2
  %1446 = fptoui float %1445 to i32
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1817, label %1448

; <label>:1448                                    ; preds = %1441
  br label %1449

; <label>:1449                                    ; preds = %1811, %1448
  %1450 = phi i32 [ %1812, %1811 ], [ %1442, %1448 ]
  %1451 = phi i32 [ %1813, %1811 ], [ %1443, %1448 ]
  %1452 = phi i32 [ %1814, %1811 ], [ 0, %1448 ]
  %1453 = lshr i32 %1452, 2
  %1454 = and i32 %1452, 3
  %1455 = add nuw nsw i32 %1453, 83
  %1456 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %1455)  ; CBufferLoadLegacy(handle,regIndex)
  %1457 = extractvalue %dx.types.CBufRet.i32 %1456, 0
  %1458 = extractvalue %dx.types.CBufRet.i32 %1456, 1
  %1459 = extractvalue %dx.types.CBufRet.i32 %1456, 2
  %1460 = extractvalue %dx.types.CBufRet.i32 %1456, 3
  %1461 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 0
  store i32 %1457, i32* %1461, align 4
  %1462 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 1
  store i32 %1458, i32* %1462, align 4
  %1463 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 2
  store i32 %1459, i32* %1463, align 4
  %1464 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 3
  store i32 %1460, i32* %1464, align 4
  %1465 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 %1454
  %1466 = load i32, i32* %1465, align 4, !tbaa !30
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = lshr i32 %1468, 16
  %1470 = and i32 %1469, 31
  %1471 = shl i32 %1073, %1470
  %1472 = add i32 %1471, %1072
  %1473 = shl i32 %1472, 2
  %1474 = add i32 %1473, %1466
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1811, label %1478, !dx.controlflow.hints !34

; <label>:1478                                    ; preds = %1449
  %1479 = icmp slt i32 %1476, 0
  br i1 %1479, label %1490, label %1480, !dx.controlflow.hints !35

; <label>:1480                                    ; preds = %1478
  %1481 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %1450
  %1482 = bitcast float* %1481 to i32*
  store i32 %1476, i32* %1482, align 4
  %1483 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %1450
  %1484 = bitcast float* %1483 to i32*
  store i32 %1476, i32* %1484, align 4
  %1485 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %1450
  %1486 = bitcast float* %1485 to i32*
  store i32 %1080, i32* %1486, align 4
  %1487 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %1450
  %1488 = bitcast float* %1487 to i32*
  store i32 %1081, i32* %1488, align 4
  %1489 = bitcast i32 %1476 to float
  br label %1804

; <label>:1490                                    ; preds = %1478
  %1491 = shl i32 1, %1071
  %1492 = add i32 %1491, -1
  %1493 = and i32 %1492, %1059
  %1494 = and i32 %1492, %1060
  %1495 = and i32 %1476, 1073741823
  %1496 = add i32 %1495, %1466
  %1497 = add i32 %1496, 4
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = lshr i32 %1499, 29
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1713, label %1502, !dx.controlflow.hints !22

; <label>:1502                                    ; preds = %1490
  %1503 = icmp eq i32 %1500, 1
  br i1 %1503, label %1635, label %1504, !dx.controlflow.hints !23

; <label>:1504                                    ; preds = %1502
  %1505 = icmp eq i32 %1500, 2
  br i1 %1505, label %1506, label %1774, !dx.controlflow.hints !24

; <label>:1506                                    ; preds = %1504
  %1507 = and i32 %1499, 536870911
  %1508 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1507)  ; FirstbitHi(value)
  %1509 = icmp eq i32 %1508, -1
  %1510 = add i32 %1508, 1
  %1511 = call i32 @dx.op.unary.i32(i32 30, i32 %1493)  ; Bfrev(value)
  %1512 = and i32 %1510, 31
  %1513 = select i1 %1509, i32 1, i32 %1512
  %1514 = lshr i32 %1511, %1513
  %1515 = call i32 @dx.op.unary.i32(i32 30, i32 %1494)  ; Bfrev(value)
  %1516 = lshr i32 %1515, %1513
  %1517 = and i32 %1514, 1
  %1518 = shl i32 %1516, 1
  %1519 = and i32 %1518, 2
  %1520 = or i32 %1519, %1517
  %1521 = mul nuw nsw i32 %1520, 10
  %1522 = add i32 %1496, 32
  %1523 = add i32 %1522, %1521
  br label %1524

; <label>:1524                                    ; preds = %1535, %1506
  %1525 = phi i32 [ 3, %1506 ], [ %1556, %1535 ]
  %1526 = phi i32 [ %1514, %1506 ], [ %1536, %1535 ]
  %1527 = phi i32 [ %1516, %1506 ], [ %1537, %1535 ]
  %1528 = phi i32 [ %1523, %1506 ], [ %1570, %1535 ]
  %1529 = phi i32 [ 0, %1506 ], [ %1540, %1535 ]
  %1530 = phi i32 [ 0, %1506 ], [ %1531, %1535 ]
  %1531 = add nuw nsw i32 %1530, 1
  %1532 = icmp eq i32 %1525, 2
  %1533 = icmp ugt i32 %1531, 9
  %1534 = or i1 %1532, %1533
  br i1 %1534, label %1572, label %1535, !dx.controlflow.hints !25

; <label>:1535                                    ; preds = %1524
  %1536 = lshr i32 %1526, 1
  %1537 = lshr i32 %1527, 1
  %1538 = icmp eq i32 %1525, 3
  %1539 = add i32 %1528, 4
  %1540 = select i1 %1538, i32 %1539, i32 %1529
  %1541 = and i32 %1528, -4
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = extractvalue %dx.types.ResRet.i32 %1542, 1
  %1545 = and i32 %1528, 2
  %1546 = icmp ne i32 %1545, 0
  %1547 = lshr i32 %1543, 16
  %1548 = shl i32 %1544, 16
  %1549 = or i32 %1547, %1548
  %1550 = select i1 %1546, i32 %1549, i32 %1543
  %1551 = and i32 %1536, 1
  %1552 = and i32 %1527, 2
  %1553 = or i32 %1551, %1552
  %1554 = shl nuw nsw i32 %1553, 1
  %1555 = lshr i32 %1550, %1554
  %1556 = and i32 %1555, 3
  %1557 = lshr i32 %1550, 8
  %1558 = sub nsw i32 4, %1553
  %1559 = shl nuw nsw i32 %1558, 1
  %1560 = lshr i32 255, %1559
  %1561 = and i32 %1550, %1560
  %1562 = and i32 %1561, 85
  %1563 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1562)  ; Countbits(value)
  %1564 = shl i32 %1563, 2
  %1565 = and i32 %1561, 170
  %1566 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1565)  ; Countbits(value)
  %1567 = mul i32 %1566, 6
  %1568 = add i32 %1564, %1528
  %1569 = add i32 %1568, %1567
  %1570 = add i32 %1569, %1557
  %1571 = icmp eq i32 %1556, 0
  br i1 %1571, label %1572, label %1524

; <label>:1572                                    ; preds = %1535, %1524
  %1573 = phi i32 [ %1528, %1524 ], [ %1540, %1535 ]
  %1574 = and i32 %1573, -4
  %1575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1574, i32 undef)  ; BufferLoad(srv,index,wot)
  %1576 = extractvalue %dx.types.ResRet.i32 %1575, 0
  %1577 = extractvalue %dx.types.ResRet.i32 %1575, 1
  %1578 = and i32 %1573, 2
  %1579 = icmp ne i32 %1578, 0
  %1580 = lshr i32 %1576, 16
  %1581 = shl i32 %1577, 16
  %1582 = or i32 %1580, %1581
  %1583 = select i1 %1579, i32 %1582, i32 %1576
  %1584 = add i32 %1573, 4
  %1585 = and i32 %1584, -4
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1584, 2
  %1589 = icmp ne i32 %1588, 0
  %1590 = lshr i32 %1587, 16
  %1591 = and i32 %1587, 65535
  %1592 = select i1 %1589, i32 %1590, i32 %1591
  %1593 = and i32 %1583, 65535
  %1594 = lshr i32 %1583, 16
  %1595 = and i32 %1594, 16383
  %1596 = lshr i32 %1583, 30
  %1597 = uitofp i32 %1595 to float
  %1598 = fmul fast float %1597, 0x3F10004000000000
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = uitofp i32 %1593 to float
  %1601 = fmul fast float %1600, 0x3EF0001000000000
  %1602 = uitofp i32 %1592 to float
  %1603 = fmul fast float %1602, 0x3F10001000000000
  %1604 = fadd fast float %1603, -2.000000e+00
  %1605 = fmul fast float %1601, %1601
  %1606 = fsub fast float 1.000000e+00, %1605
  %1607 = call float @dx.op.unary.f32(i32 24, float %1606)  ; Sqrt(value)
  %1608 = and i32 %1596, 1
  %1609 = icmp ne i32 %1608, 0
  %1610 = fsub fast float -0.000000e+00, %1598
  %1611 = select i1 %1609, float %1610, float %1598
  %1612 = and i32 %1596, 2
  %1613 = icmp ne i32 %1612, 0
  %1614 = fsub fast float -0.000000e+00, %1599
  %1615 = select i1 %1613, float %1614, float %1599
  %1616 = call float @dx.op.dot2.f32(i32 54, float %1611, float %1615, float %1611, float %1615)  ; Dot2(ax,ay,bx,by)
  %1617 = call float @dx.op.unary.f32(i32 25, float %1616)  ; Rsqrt(value)
  %1618 = fmul fast float %1617, %1607
  %1619 = fmul fast float %1618, %1611
  %1620 = fmul fast float %1618, %1615
  %1621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1622 = extractvalue %dx.types.ResRet.i32 %1621, 0
  %1623 = lshr i32 %1622, 16
  %1624 = and i32 %1623, 31
  %1625 = shl i32 1, %1624
  %1626 = uitofp i32 %1625 to float
  %1627 = fmul fast float %1626, %1051
  %1628 = fmul fast float %1626, %1052
  %1629 = call float @dx.op.unary.f32(i32 22, float %1627)  ; Frc(value)
  %1630 = call float @dx.op.unary.f32(i32 22, float %1628)  ; Frc(value)
  %1631 = call float @dx.op.dot2.f32(i32 54, float %1619, float %1620, float %1629, float %1630)  ; Dot2(ax,ay,bx,by)
  %1632 = fsub fast float %1604, %1631
  %1633 = fdiv fast float %1632, %1601
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  br label %1774

; <label>:1635                                    ; preds = %1502
  %1636 = and i32 %1499, 536870911
  %1637 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1636)  ; FirstbitHi(value)
  %1638 = icmp eq i32 %1637, -1
  %1639 = add i32 %1637, 1
  %1640 = call i32 @dx.op.unary.i32(i32 30, i32 %1493)  ; Bfrev(value)
  %1641 = and i32 %1639, 31
  %1642 = select i1 %1638, i32 1, i32 %1641
  %1643 = lshr i32 %1640, %1642
  %1644 = call i32 @dx.op.unary.i32(i32 30, i32 %1494)  ; Bfrev(value)
  %1645 = lshr i32 %1644, %1642
  %1646 = and i32 %1643, 1
  %1647 = shl i32 %1645, 1
  %1648 = and i32 %1647, 2
  %1649 = or i32 %1648, %1646
  %1650 = shl nuw nsw i32 %1649, 3
  %1651 = or i32 %1650, 32
  %1652 = add i32 %1651, %1496
  br label %1653

; <label>:1653                                    ; preds = %1664, %1635
  %1654 = phi i32 [ 3, %1635 ], [ %1685, %1664 ]
  %1655 = phi i32 [ %1643, %1635 ], [ %1665, %1664 ]
  %1656 = phi i32 [ %1645, %1635 ], [ %1666, %1664 ]
  %1657 = phi i32 [ %1652, %1635 ], [ %1699, %1664 ]
  %1658 = phi i32 [ 0, %1635 ], [ %1669, %1664 ]
  %1659 = phi i32 [ 0, %1635 ], [ %1660, %1664 ]
  %1660 = add nuw nsw i32 %1659, 1
  %1661 = icmp eq i32 %1654, 2
  %1662 = icmp ugt i32 %1660, 9
  %1663 = or i1 %1661, %1662
  br i1 %1663, label %1701, label %1664, !dx.controlflow.hints !26

; <label>:1664                                    ; preds = %1653
  %1665 = lshr i32 %1655, 1
  %1666 = lshr i32 %1656, 1
  %1667 = icmp eq i32 %1654, 3
  %1668 = add i32 %1657, 4
  %1669 = select i1 %1667, i32 %1668, i32 %1658
  %1670 = and i32 %1657, -4
  %1671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1670, i32 undef)  ; BufferLoad(srv,index,wot)
  %1672 = extractvalue %dx.types.ResRet.i32 %1671, 0
  %1673 = extractvalue %dx.types.ResRet.i32 %1671, 1
  %1674 = and i32 %1657, 2
  %1675 = icmp ne i32 %1674, 0
  %1676 = lshr i32 %1672, 16
  %1677 = shl i32 %1673, 16
  %1678 = or i32 %1676, %1677
  %1679 = select i1 %1675, i32 %1678, i32 %1672
  %1680 = and i32 %1665, 1
  %1681 = and i32 %1656, 2
  %1682 = or i32 %1680, %1681
  %1683 = shl nuw nsw i32 %1682, 1
  %1684 = lshr i32 %1679, %1683
  %1685 = and i32 %1684, 3
  %1686 = lshr i32 %1679, 8
  %1687 = sub nsw i32 4, %1682
  %1688 = shl nuw nsw i32 %1687, 1
  %1689 = lshr i32 255, %1688
  %1690 = and i32 %1679, %1689
  %1691 = and i32 %1690, 85
  %1692 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1691)  ; Countbits(value)
  %1693 = shl i32 %1692, 2
  %1694 = and i32 %1690, 170
  %1695 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1694)  ; Countbits(value)
  %1696 = shl i32 %1695, 1
  %1697 = add i32 %1693, %1657
  %1698 = add i32 %1697, %1696
  %1699 = add i32 %1698, %1686
  %1700 = icmp eq i32 %1685, 0
  br i1 %1700, label %1701, label %1653

; <label>:1701                                    ; preds = %1664, %1653
  %1702 = phi i32 [ %1657, %1653 ], [ %1669, %1664 ]
  %1703 = and i32 %1702, -4
  %1704 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1703, i32 undef)  ; BufferLoad(srv,index,wot)
  %1705 = extractvalue %dx.types.ResRet.i32 %1704, 0
  %1706 = and i32 %1702, 2
  %1707 = icmp ne i32 %1706, 0
  %1708 = lshr i32 %1705, 16
  %1709 = and i32 %1705, 65535
  %1710 = select i1 %1707, i32 %1708, i32 %1709
  %1711 = uitofp i32 %1710 to float
  %1712 = fmul fast float %1711, 0x3EF0001000000000
  br label %1774

; <label>:1713                                    ; preds = %1490
  %1714 = and i32 %1499, 536870911
  %1715 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %1714)  ; FirstbitHi(value)
  %1716 = icmp eq i32 %1715, -1
  %1717 = add i32 %1715, 1
  %1718 = call i32 @dx.op.unary.i32(i32 30, i32 %1493)  ; Bfrev(value)
  %1719 = and i32 %1717, 31
  %1720 = select i1 %1716, i32 1, i32 %1719
  %1721 = lshr i32 %1718, %1720
  %1722 = call i32 @dx.op.unary.i32(i32 30, i32 %1494)  ; Bfrev(value)
  %1723 = lshr i32 %1722, %1720
  %1724 = and i32 %1721, 1
  %1725 = shl i32 %1723, 1
  %1726 = and i32 %1725, 2
  %1727 = or i32 %1726, %1724
  %1728 = mul nuw nsw i32 %1727, 12
  %1729 = add i32 %1496, 32
  %1730 = add i32 %1729, %1728
  br label %1731

; <label>:1731                                    ; preds = %1742, %1713
  %1732 = phi i32 [ 2, %1713 ], [ %1755, %1742 ]
  %1733 = phi i32 [ %1721, %1713 ], [ %1743, %1742 ]
  %1734 = phi i32 [ %1723, %1713 ], [ %1744, %1742 ]
  %1735 = phi i32 [ %1730, %1713 ], [ %1767, %1742 ]
  %1736 = phi i32 [ 0, %1713 ], [ %1747, %1742 ]
  %1737 = phi i32 [ 0, %1713 ], [ %1738, %1742 ]
  %1738 = add nuw nsw i32 %1737, 1
  %1739 = icmp eq i32 %1732, 3
  %1740 = icmp ugt i32 %1738, 9
  %1741 = or i1 %1739, %1740
  br i1 %1741, label %1769, label %1742, !dx.controlflow.hints !27

; <label>:1742                                    ; preds = %1731
  %1743 = lshr i32 %1733, 1
  %1744 = lshr i32 %1734, 1
  %1745 = icmp eq i32 %1732, 2
  %1746 = add i32 %1735, 4
  %1747 = select i1 %1745, i32 %1746, i32 %1736
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = and i32 %1743, 1
  %1751 = and i32 %1734, 2
  %1752 = or i32 %1750, %1751
  %1753 = shl nuw nsw i32 %1752, 1
  %1754 = lshr i32 %1749, %1753
  %1755 = and i32 %1754, 3
  %1756 = lshr i32 %1749, 8
  %1757 = sub nsw i32 4, %1752
  %1758 = shl nuw nsw i32 %1757, 1
  %1759 = lshr i32 255, %1758
  %1760 = and i32 %1749, %1759
  %1761 = lshr i32 %1760, 1
  %1762 = and i32 %1761, 85
  %1763 = xor i32 %1762, %1760
  %1764 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1763)  ; Countbits(value)
  %1765 = shl i32 %1764, 2
  %1766 = add i32 %1765, %1735
  %1767 = add i32 %1766, %1756
  %1768 = icmp eq i32 %1755, 0
  br i1 %1768, label %1769, label %1731

; <label>:1769                                    ; preds = %1742, %1731
  %1770 = phi i32 [ %1735, %1731 ], [ %1747, %1742 ]
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = bitcast i32 %1772 to float
  br label %1774

; <label>:1774                                    ; preds = %1769, %1701, %1572, %1504
  %1775 = phi float [ %1773, %1769 ], [ %1712, %1701 ], [ %1634, %1572 ], [ 0.000000e+00, %1504 ]
  %1776 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %1450
  store float %1775, float* %1776, align 4
  %1777 = fcmp fast ogt float %1775, 0.000000e+00
  %1778 = add i32 %1496, 20
  br i1 %1777, label %1779, label %1794, !dx.controlflow.hints !28

; <label>:1779                                    ; preds = %1774
  %1780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.i32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.i32 %1780, 1
  %1783 = bitcast i32 %1781 to float
  %1784 = bitcast i32 %1782 to float
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = extractvalue %dx.types.ResRet.i32 %1785, 1
  %1788 = bitcast i32 %1786 to float
  %1789 = bitcast i32 %1787 to float
  %1790 = fdiv fast float %1775, %1784
  %1791 = fsub fast float %1790, %1783
  %1792 = fadd fast float %1791, %1788
  %1793 = fmul fast float %1792, %1789
  br label %1794

; <label>:1794                                    ; preds = %1779, %1774
  %1795 = phi float [ %1793, %1779 ], [ %1775, %1774 ]
  %1796 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %1450
  store float %1795, float* %1796, align 4
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = extractvalue %dx.types.ResRet.i32 %1797, 1
  %1800 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %1450
  %1801 = bitcast float* %1800 to i32*
  store i32 %1798, i32* %1801, align 4
  %1802 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %1450
  %1803 = bitcast float* %1802 to i32*
  store i32 %1799, i32* %1803, align 4
  br label %1804

; <label>:1804                                    ; preds = %1794, %1480
  %1805 = phi float [ %1795, %1794 ], [ %1489, %1480 ]
  %1806 = getelementptr [12 x float], [12 x float]* %12, i32 0, i32 %1451
  %1807 = load float, float* %1806, align 4
  %1808 = fcmp fast ogt float %1805, %1807
  %1809 = select i1 %1808, i32 %1450, i32 %1451
  %1810 = add i32 %1450, 1
  br label %1811

; <label>:1811                                    ; preds = %1804, %1449
  %1812 = phi i32 [ %1450, %1449 ], [ %1810, %1804 ]
  %1813 = phi i32 [ %1451, %1449 ], [ %1809, %1804 ]
  %1814 = add nuw i32 %1452, 1
  %1815 = icmp eq i32 %1814, %1446
  br i1 %1815, label %1816, label %1449

; <label>:1816                                    ; preds = %1811
  br label %1817

; <label>:1817                                    ; preds = %1816, %1441
  %1818 = phi i32 [ %1442, %1441 ], [ %1812, %1816 ]
  %1819 = phi i32 [ %1443, %1441 ], [ %1813, %1816 ]
  %1820 = icmp eq i32 %1818, 1
  br i1 %1820, label %1859, label %1821, !dx.controlflow.hints !36

; <label>:1821                                    ; preds = %1817
  %1822 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 0
  %1823 = load float, float* %1822, align 4
  %1824 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 0
  %1825 = load float, float* %1824, align 4
  %1826 = fdiv fast float 1.000000e+00, %1825
  %1827 = fsub fast float %1823, %1826
  %1828 = icmp ugt i32 %1818, 1
  br i1 %1828, label %1829, label %1845

; <label>:1829                                    ; preds = %1821
  br label %1830

; <label>:1830                                    ; preds = %1830, %1829
  %1831 = phi float [ %1840, %1830 ], [ %1827, %1829 ]
  %1832 = phi float [ %1841, %1830 ], [ %1823, %1829 ]
  %1833 = phi i32 [ %1842, %1830 ], [ 1, %1829 ]
  %1834 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %1833
  %1835 = load float, float* %1834, align 4
  %1836 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %1833
  %1837 = load float, float* %1836, align 4
  %1838 = fdiv fast float 1.000000e+00, %1837
  %1839 = fsub fast float %1835, %1838
  %1840 = call float @dx.op.binary.f32(i32 36, float %1831, float %1839)  ; FMin(a,b)
  %1841 = call float @dx.op.binary.f32(i32 35, float %1832, float %1835)  ; FMax(a,b)
  %1842 = add nuw i32 %1833, 1
  %1843 = icmp eq i32 %1842, %1818
  br i1 %1843, label %1844, label %1830

; <label>:1844                                    ; preds = %1830
  br label %1845

; <label>:1845                                    ; preds = %1844, %1821
  %1846 = phi float [ %1827, %1821 ], [ %1840, %1844 ]
  %1847 = phi float [ %1823, %1821 ], [ %1841, %1844 ]
  %1848 = getelementptr [12 x float], [12 x float]* %11, i32 0, i32 %1819
  %1849 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %1819
  %1850 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %1819
  %1851 = load float, float* %1848, align 4
  %1852 = load float, float* %1849, align 4
  %1853 = load float, float* %1850, align 4
  %1854 = fdiv fast float %1851, %1853
  %1855 = fsub fast float %1847, %1852
  %1856 = fadd fast float %1855, %1854
  %1857 = fsub fast float %1847, %1846
  %1858 = fdiv fast float %1856, %1857
  br label %1862

; <label>:1859                                    ; preds = %1817
  %1860 = getelementptr [12 x float], [12 x float]* %11, i32 0, i32 0
  %1861 = load float, float* %1860, align 4
  br label %1862

; <label>:1862                                    ; preds = %1859, %1845, %1028
  %1863 = phi float [ %1861, %1859 ], [ %1858, %1845 ], [ 0.000000e+00, %1028 ]
  %1864 = fmul fast float %1863, 2.000000e+00
  %1865 = fsub fast float 1.000000e+00, %1864
  %1866 = fmul fast float %1865, %1865
  %1867 = fmul fast float %1866, %1865
  %1868 = fmul fast float %1866, %1866
  %1869 = add i32 %1034, 1
  %1870 = uitofp i32 %1869 to float
  %1871 = fdiv fast float 1.000000e+00, %1870
  %1872 = fmul fast float %1863, 3.000000e+00
  %1873 = fsub fast float 1.500000e+00, %1872
  %1874 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %1867, float %1873)  ; FMad(a,b,c)
  %1875 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %1866, float 0.000000e+00)  ; FMad(a,b,c)
  %1876 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %1868, float %1875)  ; FMad(a,b,c)
  %1877 = fmul fast float %1863, 0x3FFBB67AE0000000
  %1878 = fsub fast float 0x3FEBB67AE0000000, %1877
  %1879 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %1867, float %1878)  ; FMad(a,b,c)
  %1880 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1866, float 0.000000e+00)  ; FMad(a,b,c)
  %1881 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %1868, float %1880)  ; FMad(a,b,c)
  %1882 = fsub fast float 5.000000e-01, %1029
  %1883 = fadd fast float %1882, %1874
  %1884 = fsub fast float %1876, %1030
  %1885 = fsub fast float 5.000000e-01, %1031
  %1886 = fadd fast float %1885, %1879
  %1887 = fsub fast float %1881, %1032
  %1888 = fmul fast float %1883, %1871
  %1889 = fmul fast float %1884, %1871
  %1890 = fmul fast float %1886, %1871
  %1891 = fmul fast float %1887, %1871
  %1892 = fadd fast float %1888, %1029
  %1893 = fadd fast float %1889, %1030
  %1894 = fadd fast float %1890, %1031
  %1895 = fadd fast float %1891, %1032
  %1896 = add nuw i32 %1033, 1
  %1897 = icmp eq i32 %1896, %991
  br i1 %1897, label %1898, label %1028, !llvm.loop !37

; <label>:1898                                    ; preds = %1862
  br label %1899

; <label>:1899                                    ; preds = %1898, %994
  %1900 = phi float [ %1022, %994 ], [ %1892, %1898 ]
  %1901 = phi float [ %1023, %994 ], [ %1893, %1898 ]
  %1902 = phi float [ %1024, %994 ], [ %1894, %1898 ]
  %1903 = phi float [ %1025, %994 ], [ %1895, %1898 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 1, float %1900, float %1901, float %1902, float %1903, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %1904

; <label>:1904                                    ; preds = %1899, %981
  %1905 = phi i32 [ %977, %981 ], [ %999, %1899 ]
  %1906 = shl i32 %48, 2
  %1907 = add i32 %45, 2
  %1908 = icmp ugt i32 %1907, %46
  br i1 %1908, label %3760, label %1909, !dx.controlflow.hints !18

; <label>:1909                                    ; preds = %1904
  %1910 = lshr i32 %1905, 9
  %1911 = and i32 %1910, 127
  %1912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.i32 %1912, 1
  %1914 = and i32 %1913, 31
  %1915 = lshr i32 %1906, %1914
  %1916 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %1915)  ; UMax(a,b)
  %1917 = mul i32 %1916, %1916
  %1918 = lshr i32 %1917, 6
  %1919 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %1918)  ; UMax(a,b)
  %1920 = mul i32 %1919, %1911
  %1921 = icmp ult i32 %1920, %1917
  br i1 %1921, label %1922, label %2832, !dx.controlflow.hints !19

; <label>:1922                                    ; preds = %1909
  %1923 = shl nuw nsw i32 %1911, 9
  %1924 = add nuw nsw i32 %1923, 512
  %1925 = and i32 %1924, 65024
  %1926 = and i32 %1905, -65025
  %1927 = or i32 %1925, %1926
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 322)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 0
  %1930 = extractvalue %dx.types.CBufRet.f32 %1928, 1
  %1931 = fmul fast float %35, 2.500000e-01
  %1932 = fmul fast float %1931, %52
  %1933 = fmul fast float %1929, %1932
  %1934 = fmul fast float %1930, %1932
  %1935 = fsub fast float %40, %1933
  %1936 = fsub fast float %41, %1934
  %1937 = call float @dx.op.unary.f32(i32 22, float %1935)  ; Frc(value)
  %1938 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1939 = uitofp i32 %1906 to float
  %1940 = fmul fast float %1939, %43
  %1941 = fmul fast float %1937, 2.000000e+00
  %1942 = fmul fast float %1938, 2.000000e+00
  %1943 = fadd fast float %1941, -1.000000e+00
  %1944 = fadd fast float %1942, -1.000000e+00
  %1945 = fmul fast float %1943, %1940
  %1946 = fmul fast float %1944, %1940
  %1947 = fadd fast float %1945, %1929
  %1948 = fadd fast float %1946, %1930
  %1949 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %22, i32 %23, i32 2, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = extractvalue %dx.types.ResRet.f32 %1949, 1
  %1952 = extractvalue %dx.types.ResRet.f32 %1949, 2
  %1953 = extractvalue %dx.types.ResRet.f32 %1949, 3
  %1954 = icmp eq i32 %1919, 0
  br i1 %1954, label %2827, label %1955

; <label>:1955                                    ; preds = %1922
  br label %1956

; <label>:1956                                    ; preds = %2790, %1955
  %1957 = phi float [ %2820, %2790 ], [ %1950, %1955 ]
  %1958 = phi float [ %2821, %2790 ], [ %1951, %1955 ]
  %1959 = phi float [ %2822, %2790 ], [ %1952, %1955 ]
  %1960 = phi float [ %2823, %2790 ], [ %1953, %1955 ]
  %1961 = phi i32 [ %2824, %2790 ], [ 0, %1955 ]
  %1962 = add i32 %1961, %1920
  %1963 = urem i32 %1962, %1916
  %1964 = uitofp i32 %1963 to float
  %1965 = udiv i32 %1962, %1916
  %1966 = uitofp i32 %1965 to float
  %1967 = fadd fast float %1964, 5.000000e-01
  %1968 = fadd fast float %1966, 5.000000e-01
  %1969 = uitofp i32 %1916 to float
  %1970 = fdiv fast float %1967, %1969
  %1971 = fdiv fast float %1968, %1969
  %1972 = fmul fast float %1940, %35
  %1973 = fmul fast float %1970, 2.000000e+00
  %1974 = fmul fast float %1971, 2.000000e+00
  %1975 = fadd fast float %1973, -1.000000e+00
  %1976 = fadd fast float %1974, -1.000000e+00
  %1977 = fmul fast float %1975, %1972
  %1978 = fmul fast float %1976, %1972
  %1979 = fadd fast float %1947, %1977
  %1980 = fadd fast float %1948, %1978
  %1981 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.i32 %1981, 0
  %1983 = and i32 %1982, 536870911
  %1984 = uitofp i32 %1983 to float
  %1985 = fmul fast float %1984, %1979
  %1986 = fmul fast float %1984, %1980
  %1987 = fptoui float %1985 to i32
  %1988 = fptoui float %1986 to i32
  %1989 = fcmp fast olt float %1979, 0.000000e+00
  %1990 = fcmp fast olt float %1980, 0.000000e+00
  %1991 = or i1 %1989, %1990
  %1992 = fcmp fast oge float %1979, 1.000000e+00
  %1993 = fcmp fast oge float %1980, 1.000000e+00
  %1994 = or i1 %1992, %1993
  %1995 = or i1 %1991, %1994
  br i1 %1995, label %2790, label %1996, !dx.controlflow.hints !20

; <label>:1996                                    ; preds = %1956
  %1997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %1998 = extractvalue %dx.types.ResRet.i32 %1997, 0
  %1999 = and i32 %1998, 31
  %2000 = lshr i32 %1987, %1999
  %2001 = lshr i32 %1988, %1999
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = and i32 %2003, 31
  %2005 = shl i32 1, %2004
  %2006 = call i32 @dx.op.binary.i32(i32 40, i32 %2005, i32 4)  ; UMin(a,b)
  %2007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2008 = extractvalue %dx.types.ResRet.i32 %2007, 0
  %2009 = extractvalue %dx.types.ResRet.i32 %2007, 1
  %2010 = icmp eq i32 %2006, 0
  br i1 %2010, label %2369, label %2011

; <label>:2011                                    ; preds = %1996
  br label %2012

; <label>:2012                                    ; preds = %2354, %2011
  %2013 = phi i32 [ %2360, %2354 ], [ 0, %2011 ]
  %2014 = phi i32 [ %2359, %2354 ], [ 0, %2011 ]
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = lshr i32 %2016, 16
  %2018 = and i32 %2017, 31
  %2019 = shl i32 %2001, %2018
  %2020 = add i32 %2019, %2000
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = and i32 %2022, 31
  %2024 = shl i32 %2020, %2023
  %2025 = add i32 %2024, %2013
  %2026 = shl i32 %2025, 2
  %2027 = add i32 %2026, 32
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = icmp slt i32 %2029, 0
  br i1 %2030, label %2041, label %2031, !dx.controlflow.hints !21

; <label>:2031                                    ; preds = %2012
  %2032 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %2013
  %2033 = bitcast float* %2032 to i32*
  store i32 %2029, i32* %2033, align 4
  %2034 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %2013
  %2035 = bitcast float* %2034 to i32*
  store i32 %2029, i32* %2035, align 4
  %2036 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2013
  %2037 = bitcast float* %2036 to i32*
  store i32 %2008, i32* %2037, align 4
  %2038 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2013
  %2039 = bitcast float* %2038 to i32*
  store i32 %2009, i32* %2039, align 4
  %2040 = bitcast i32 %2029 to float
  br label %2354

; <label>:2041                                    ; preds = %2012
  %2042 = shl i32 1, %1999
  %2043 = add i32 %2042, -1
  %2044 = and i32 %2043, %1987
  %2045 = and i32 %2043, %1988
  %2046 = and i32 %2029, 1073741823
  %2047 = add nuw nsw i32 %2046, 4
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = lshr i32 %2049, 29
  %2051 = icmp eq i32 %2050, 0
  br i1 %2051, label %2263, label %2052, !dx.controlflow.hints !22

; <label>:2052                                    ; preds = %2041
  %2053 = icmp eq i32 %2050, 1
  br i1 %2053, label %2185, label %2054, !dx.controlflow.hints !23

; <label>:2054                                    ; preds = %2052
  %2055 = icmp eq i32 %2050, 2
  br i1 %2055, label %2056, label %2324, !dx.controlflow.hints !24

; <label>:2056                                    ; preds = %2054
  %2057 = and i32 %2049, 536870911
  %2058 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2057)  ; FirstbitHi(value)
  %2059 = icmp eq i32 %2058, -1
  %2060 = add i32 %2058, 1
  %2061 = call i32 @dx.op.unary.i32(i32 30, i32 %2044)  ; Bfrev(value)
  %2062 = and i32 %2060, 31
  %2063 = select i1 %2059, i32 1, i32 %2062
  %2064 = lshr i32 %2061, %2063
  %2065 = call i32 @dx.op.unary.i32(i32 30, i32 %2045)  ; Bfrev(value)
  %2066 = lshr i32 %2065, %2063
  %2067 = and i32 %2064, 1
  %2068 = shl i32 %2066, 1
  %2069 = and i32 %2068, 2
  %2070 = or i32 %2069, %2067
  %2071 = mul nuw nsw i32 %2070, 10
  %2072 = add nuw nsw i32 %2046, 32
  %2073 = add nuw i32 %2072, %2071
  br label %2074

; <label>:2074                                    ; preds = %2085, %2056
  %2075 = phi i32 [ 3, %2056 ], [ %2106, %2085 ]
  %2076 = phi i32 [ %2064, %2056 ], [ %2086, %2085 ]
  %2077 = phi i32 [ %2066, %2056 ], [ %2087, %2085 ]
  %2078 = phi i32 [ %2073, %2056 ], [ %2120, %2085 ]
  %2079 = phi i32 [ 0, %2056 ], [ %2090, %2085 ]
  %2080 = phi i32 [ 0, %2056 ], [ %2081, %2085 ]
  %2081 = add nuw nsw i32 %2080, 1
  %2082 = icmp eq i32 %2075, 2
  %2083 = icmp ugt i32 %2081, 9
  %2084 = or i1 %2082, %2083
  br i1 %2084, label %2122, label %2085, !dx.controlflow.hints !25

; <label>:2085                                    ; preds = %2074
  %2086 = lshr i32 %2076, 1
  %2087 = lshr i32 %2077, 1
  %2088 = icmp eq i32 %2075, 3
  %2089 = add i32 %2078, 4
  %2090 = select i1 %2088, i32 %2089, i32 %2079
  %2091 = and i32 %2078, -4
  %2092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2091, i32 undef)  ; BufferLoad(srv,index,wot)
  %2093 = extractvalue %dx.types.ResRet.i32 %2092, 0
  %2094 = extractvalue %dx.types.ResRet.i32 %2092, 1
  %2095 = and i32 %2078, 2
  %2096 = icmp ne i32 %2095, 0
  %2097 = lshr i32 %2093, 16
  %2098 = shl i32 %2094, 16
  %2099 = or i32 %2097, %2098
  %2100 = select i1 %2096, i32 %2099, i32 %2093
  %2101 = and i32 %2086, 1
  %2102 = and i32 %2077, 2
  %2103 = or i32 %2101, %2102
  %2104 = shl nuw nsw i32 %2103, 1
  %2105 = lshr i32 %2100, %2104
  %2106 = and i32 %2105, 3
  %2107 = lshr i32 %2100, 8
  %2108 = sub nsw i32 4, %2103
  %2109 = shl nuw nsw i32 %2108, 1
  %2110 = lshr i32 255, %2109
  %2111 = and i32 %2100, %2110
  %2112 = and i32 %2111, 85
  %2113 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2112)  ; Countbits(value)
  %2114 = shl i32 %2113, 2
  %2115 = and i32 %2111, 170
  %2116 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2115)  ; Countbits(value)
  %2117 = mul i32 %2116, 6
  %2118 = add i32 %2114, %2078
  %2119 = add i32 %2118, %2117
  %2120 = add i32 %2119, %2107
  %2121 = icmp eq i32 %2106, 0
  br i1 %2121, label %2122, label %2074

; <label>:2122                                    ; preds = %2085, %2074
  %2123 = phi i32 [ %2078, %2074 ], [ %2090, %2085 ]
  %2124 = and i32 %2123, -4
  %2125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2124, i32 undef)  ; BufferLoad(srv,index,wot)
  %2126 = extractvalue %dx.types.ResRet.i32 %2125, 0
  %2127 = extractvalue %dx.types.ResRet.i32 %2125, 1
  %2128 = and i32 %2123, 2
  %2129 = icmp ne i32 %2128, 0
  %2130 = lshr i32 %2126, 16
  %2131 = shl i32 %2127, 16
  %2132 = or i32 %2130, %2131
  %2133 = select i1 %2129, i32 %2132, i32 %2126
  %2134 = add i32 %2123, 4
  %2135 = and i32 %2134, -4
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = and i32 %2134, 2
  %2139 = icmp ne i32 %2138, 0
  %2140 = lshr i32 %2137, 16
  %2141 = and i32 %2137, 65535
  %2142 = select i1 %2139, i32 %2140, i32 %2141
  %2143 = and i32 %2133, 65535
  %2144 = lshr i32 %2133, 16
  %2145 = and i32 %2144, 16383
  %2146 = lshr i32 %2133, 30
  %2147 = uitofp i32 %2145 to float
  %2148 = fmul fast float %2147, 0x3F10004000000000
  %2149 = fsub fast float 1.000000e+00, %2148
  %2150 = uitofp i32 %2143 to float
  %2151 = fmul fast float %2150, 0x3EF0001000000000
  %2152 = uitofp i32 %2142 to float
  %2153 = fmul fast float %2152, 0x3F10001000000000
  %2154 = fadd fast float %2153, -2.000000e+00
  %2155 = fmul fast float %2151, %2151
  %2156 = fsub fast float 1.000000e+00, %2155
  %2157 = call float @dx.op.unary.f32(i32 24, float %2156)  ; Sqrt(value)
  %2158 = and i32 %2146, 1
  %2159 = icmp ne i32 %2158, 0
  %2160 = fsub fast float -0.000000e+00, %2148
  %2161 = select i1 %2159, float %2160, float %2148
  %2162 = and i32 %2146, 2
  %2163 = icmp ne i32 %2162, 0
  %2164 = fsub fast float -0.000000e+00, %2149
  %2165 = select i1 %2163, float %2164, float %2149
  %2166 = call float @dx.op.dot2.f32(i32 54, float %2161, float %2165, float %2161, float %2165)  ; Dot2(ax,ay,bx,by)
  %2167 = call float @dx.op.unary.f32(i32 25, float %2166)  ; Rsqrt(value)
  %2168 = fmul fast float %2167, %2157
  %2169 = fmul fast float %2168, %2161
  %2170 = fmul fast float %2168, %2165
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = lshr i32 %2172, 16
  %2174 = and i32 %2173, 31
  %2175 = shl i32 1, %2174
  %2176 = uitofp i32 %2175 to float
  %2177 = fmul fast float %2176, %1979
  %2178 = fmul fast float %2176, %1980
  %2179 = call float @dx.op.unary.f32(i32 22, float %2177)  ; Frc(value)
  %2180 = call float @dx.op.unary.f32(i32 22, float %2178)  ; Frc(value)
  %2181 = call float @dx.op.dot2.f32(i32 54, float %2169, float %2170, float %2179, float %2180)  ; Dot2(ax,ay,bx,by)
  %2182 = fsub fast float %2154, %2181
  %2183 = fdiv fast float %2182, %2151
  %2184 = call float @dx.op.unary.f32(i32 7, float %2183)  ; Saturate(value)
  br label %2324

; <label>:2185                                    ; preds = %2052
  %2186 = and i32 %2049, 536870911
  %2187 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2186)  ; FirstbitHi(value)
  %2188 = icmp eq i32 %2187, -1
  %2189 = add i32 %2187, 1
  %2190 = call i32 @dx.op.unary.i32(i32 30, i32 %2044)  ; Bfrev(value)
  %2191 = and i32 %2189, 31
  %2192 = select i1 %2188, i32 1, i32 %2191
  %2193 = lshr i32 %2190, %2192
  %2194 = call i32 @dx.op.unary.i32(i32 30, i32 %2045)  ; Bfrev(value)
  %2195 = lshr i32 %2194, %2192
  %2196 = and i32 %2193, 1
  %2197 = shl i32 %2195, 1
  %2198 = and i32 %2197, 2
  %2199 = or i32 %2198, %2196
  %2200 = shl nuw nsw i32 %2199, 3
  %2201 = or i32 %2200, 32
  %2202 = add nuw nsw i32 %2201, %2046
  br label %2203

; <label>:2203                                    ; preds = %2214, %2185
  %2204 = phi i32 [ 3, %2185 ], [ %2235, %2214 ]
  %2205 = phi i32 [ %2193, %2185 ], [ %2215, %2214 ]
  %2206 = phi i32 [ %2195, %2185 ], [ %2216, %2214 ]
  %2207 = phi i32 [ %2202, %2185 ], [ %2249, %2214 ]
  %2208 = phi i32 [ 0, %2185 ], [ %2219, %2214 ]
  %2209 = phi i32 [ 0, %2185 ], [ %2210, %2214 ]
  %2210 = add nuw nsw i32 %2209, 1
  %2211 = icmp eq i32 %2204, 2
  %2212 = icmp ugt i32 %2210, 9
  %2213 = or i1 %2211, %2212
  br i1 %2213, label %2251, label %2214, !dx.controlflow.hints !26

; <label>:2214                                    ; preds = %2203
  %2215 = lshr i32 %2205, 1
  %2216 = lshr i32 %2206, 1
  %2217 = icmp eq i32 %2204, 3
  %2218 = add i32 %2207, 4
  %2219 = select i1 %2217, i32 %2218, i32 %2208
  %2220 = and i32 %2207, -4
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2220, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = extractvalue %dx.types.ResRet.i32 %2221, 1
  %2224 = and i32 %2207, 2
  %2225 = icmp ne i32 %2224, 0
  %2226 = lshr i32 %2222, 16
  %2227 = shl i32 %2223, 16
  %2228 = or i32 %2226, %2227
  %2229 = select i1 %2225, i32 %2228, i32 %2222
  %2230 = and i32 %2215, 1
  %2231 = and i32 %2206, 2
  %2232 = or i32 %2230, %2231
  %2233 = shl nuw nsw i32 %2232, 1
  %2234 = lshr i32 %2229, %2233
  %2235 = and i32 %2234, 3
  %2236 = lshr i32 %2229, 8
  %2237 = sub nsw i32 4, %2232
  %2238 = shl nuw nsw i32 %2237, 1
  %2239 = lshr i32 255, %2238
  %2240 = and i32 %2229, %2239
  %2241 = and i32 %2240, 85
  %2242 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2241)  ; Countbits(value)
  %2243 = shl i32 %2242, 2
  %2244 = and i32 %2240, 170
  %2245 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2244)  ; Countbits(value)
  %2246 = shl i32 %2245, 1
  %2247 = add i32 %2243, %2207
  %2248 = add i32 %2247, %2246
  %2249 = add i32 %2248, %2236
  %2250 = icmp eq i32 %2235, 0
  br i1 %2250, label %2251, label %2203

; <label>:2251                                    ; preds = %2214, %2203
  %2252 = phi i32 [ %2207, %2203 ], [ %2219, %2214 ]
  %2253 = and i32 %2252, -4
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = and i32 %2252, 2
  %2257 = icmp ne i32 %2256, 0
  %2258 = lshr i32 %2255, 16
  %2259 = and i32 %2255, 65535
  %2260 = select i1 %2257, i32 %2258, i32 %2259
  %2261 = uitofp i32 %2260 to float
  %2262 = fmul fast float %2261, 0x3EF0001000000000
  br label %2324

; <label>:2263                                    ; preds = %2041
  %2264 = and i32 %2049, 536870911
  %2265 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2264)  ; FirstbitHi(value)
  %2266 = icmp eq i32 %2265, -1
  %2267 = add i32 %2265, 1
  %2268 = call i32 @dx.op.unary.i32(i32 30, i32 %2044)  ; Bfrev(value)
  %2269 = and i32 %2267, 31
  %2270 = select i1 %2266, i32 1, i32 %2269
  %2271 = lshr i32 %2268, %2270
  %2272 = call i32 @dx.op.unary.i32(i32 30, i32 %2045)  ; Bfrev(value)
  %2273 = lshr i32 %2272, %2270
  %2274 = and i32 %2271, 1
  %2275 = shl i32 %2273, 1
  %2276 = and i32 %2275, 2
  %2277 = or i32 %2276, %2274
  %2278 = mul nuw nsw i32 %2277, 12
  %2279 = add nuw nsw i32 %2046, 32
  %2280 = add nuw i32 %2279, %2278
  br label %2281

; <label>:2281                                    ; preds = %2292, %2263
  %2282 = phi i32 [ 2, %2263 ], [ %2305, %2292 ]
  %2283 = phi i32 [ %2271, %2263 ], [ %2293, %2292 ]
  %2284 = phi i32 [ %2273, %2263 ], [ %2294, %2292 ]
  %2285 = phi i32 [ %2280, %2263 ], [ %2317, %2292 ]
  %2286 = phi i32 [ 0, %2263 ], [ %2297, %2292 ]
  %2287 = phi i32 [ 0, %2263 ], [ %2288, %2292 ]
  %2288 = add nuw nsw i32 %2287, 1
  %2289 = icmp eq i32 %2282, 3
  %2290 = icmp ugt i32 %2288, 9
  %2291 = or i1 %2289, %2290
  br i1 %2291, label %2319, label %2292, !dx.controlflow.hints !27

; <label>:2292                                    ; preds = %2281
  %2293 = lshr i32 %2283, 1
  %2294 = lshr i32 %2284, 1
  %2295 = icmp eq i32 %2282, 2
  %2296 = add i32 %2285, 4
  %2297 = select i1 %2295, i32 %2296, i32 %2286
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2285, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = and i32 %2293, 1
  %2301 = and i32 %2284, 2
  %2302 = or i32 %2300, %2301
  %2303 = shl nuw nsw i32 %2302, 1
  %2304 = lshr i32 %2299, %2303
  %2305 = and i32 %2304, 3
  %2306 = lshr i32 %2299, 8
  %2307 = sub nsw i32 4, %2302
  %2308 = shl nuw nsw i32 %2307, 1
  %2309 = lshr i32 255, %2308
  %2310 = and i32 %2299, %2309
  %2311 = lshr i32 %2310, 1
  %2312 = and i32 %2311, 85
  %2313 = xor i32 %2312, %2310
  %2314 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2313)  ; Countbits(value)
  %2315 = shl i32 %2314, 2
  %2316 = add i32 %2315, %2285
  %2317 = add i32 %2316, %2306
  %2318 = icmp eq i32 %2305, 0
  br i1 %2318, label %2319, label %2281

; <label>:2319                                    ; preds = %2292, %2281
  %2320 = phi i32 [ %2285, %2281 ], [ %2297, %2292 ]
  %2321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2320, i32 undef)  ; BufferLoad(srv,index,wot)
  %2322 = extractvalue %dx.types.ResRet.i32 %2321, 0
  %2323 = bitcast i32 %2322 to float
  br label %2324

; <label>:2324                                    ; preds = %2319, %2251, %2122, %2054
  %2325 = phi float [ %2323, %2319 ], [ %2262, %2251 ], [ %2184, %2122 ], [ 0.000000e+00, %2054 ]
  %2326 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %2013
  store float %2325, float* %2326, align 4
  %2327 = fcmp fast ogt float %2325, 0.000000e+00
  %2328 = add nuw nsw i32 %2046, 20
  br i1 %2327, label %2329, label %2344, !dx.controlflow.hints !28

; <label>:2329                                    ; preds = %2324
  %2330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2331 = extractvalue %dx.types.ResRet.i32 %2330, 0
  %2332 = extractvalue %dx.types.ResRet.i32 %2330, 1
  %2333 = bitcast i32 %2331 to float
  %2334 = bitcast i32 %2332 to float
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = extractvalue %dx.types.ResRet.i32 %2335, 1
  %2338 = bitcast i32 %2336 to float
  %2339 = bitcast i32 %2337 to float
  %2340 = fdiv fast float %2325, %2334
  %2341 = fsub fast float %2340, %2333
  %2342 = fadd fast float %2341, %2338
  %2343 = fmul fast float %2342, %2339
  br label %2344

; <label>:2344                                    ; preds = %2329, %2324
  %2345 = phi float [ %2343, %2329 ], [ %2325, %2324 ]
  %2346 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %2013
  store float %2345, float* %2346, align 4
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = extractvalue %dx.types.ResRet.i32 %2347, 1
  %2350 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2013
  %2351 = bitcast float* %2350 to i32*
  store i32 %2348, i32* %2351, align 4
  %2352 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2013
  %2353 = bitcast float* %2352 to i32*
  store i32 %2349, i32* %2353, align 4
  br label %2354

; <label>:2354                                    ; preds = %2344, %2031
  %2355 = phi float [ %2345, %2344 ], [ %2040, %2031 ]
  %2356 = getelementptr [12 x float], [12 x float]* %12, i32 0, i32 %2014
  %2357 = load float, float* %2356, align 4
  %2358 = fcmp fast ogt float %2355, %2357
  %2359 = select i1 %2358, i32 %2013, i32 %2014
  %2360 = add nuw i32 %2013, 1
  %2361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.i32 %2361, 2
  %2363 = icmp eq i32 %2362, 0
  %2364 = icmp ugt i32 %2029, -1073741825
  %2365 = and i1 %2364, %2363
  %2366 = icmp ult i32 %2360, %2006
  %2367 = and i1 %2365, %2366
  br i1 %2367, label %2012, label %2368, !dx.controlflow.hints !29

; <label>:2368                                    ; preds = %2354
  br label %2369

; <label>:2369                                    ; preds = %2368, %1996
  %2370 = phi i32 [ 0, %1996 ], [ %2360, %2368 ]
  %2371 = phi i32 [ 0, %1996 ], [ %2359, %2368 ]
  %2372 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %2373 = extractvalue %dx.types.CBufRet.f32 %2372, 2
  %2374 = fptoui float %2373 to i32
  %2375 = icmp eq i32 %2374, 0
  br i1 %2375, label %2745, label %2376

; <label>:2376                                    ; preds = %2369
  br label %2377

; <label>:2377                                    ; preds = %2739, %2376
  %2378 = phi i32 [ %2740, %2739 ], [ %2370, %2376 ]
  %2379 = phi i32 [ %2741, %2739 ], [ %2371, %2376 ]
  %2380 = phi i32 [ %2742, %2739 ], [ 0, %2376 ]
  %2381 = lshr i32 %2380, 2
  %2382 = and i32 %2380, 3
  %2383 = add nuw nsw i32 %2381, 83
  %2384 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %2383)  ; CBufferLoadLegacy(handle,regIndex)
  %2385 = extractvalue %dx.types.CBufRet.i32 %2384, 0
  %2386 = extractvalue %dx.types.CBufRet.i32 %2384, 1
  %2387 = extractvalue %dx.types.CBufRet.i32 %2384, 2
  %2388 = extractvalue %dx.types.CBufRet.i32 %2384, 3
  %2389 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 0
  store i32 %2385, i32* %2389, align 4
  %2390 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 1
  store i32 %2386, i32* %2390, align 4
  %2391 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 2
  store i32 %2387, i32* %2391, align 4
  %2392 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 3
  store i32 %2388, i32* %2392, align 4
  %2393 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 %2382
  %2394 = load i32, i32* %2393, align 4, !tbaa !30
  %2395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2396 = extractvalue %dx.types.ResRet.i32 %2395, 0
  %2397 = lshr i32 %2396, 16
  %2398 = and i32 %2397, 31
  %2399 = shl i32 %2001, %2398
  %2400 = add i32 %2399, %2000
  %2401 = shl i32 %2400, 2
  %2402 = add i32 %2401, %2394
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = icmp eq i32 %2404, 0
  br i1 %2405, label %2739, label %2406, !dx.controlflow.hints !34

; <label>:2406                                    ; preds = %2377
  %2407 = icmp slt i32 %2404, 0
  br i1 %2407, label %2418, label %2408, !dx.controlflow.hints !35

; <label>:2408                                    ; preds = %2406
  %2409 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %2378
  %2410 = bitcast float* %2409 to i32*
  store i32 %2404, i32* %2410, align 4
  %2411 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %2378
  %2412 = bitcast float* %2411 to i32*
  store i32 %2404, i32* %2412, align 4
  %2413 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2378
  %2414 = bitcast float* %2413 to i32*
  store i32 %2008, i32* %2414, align 4
  %2415 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2378
  %2416 = bitcast float* %2415 to i32*
  store i32 %2009, i32* %2416, align 4
  %2417 = bitcast i32 %2404 to float
  br label %2732

; <label>:2418                                    ; preds = %2406
  %2419 = shl i32 1, %1999
  %2420 = add i32 %2419, -1
  %2421 = and i32 %2420, %1987
  %2422 = and i32 %2420, %1988
  %2423 = and i32 %2404, 1073741823
  %2424 = add i32 %2423, %2394
  %2425 = add i32 %2424, 4
  %2426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2425, i32 undef)  ; BufferLoad(srv,index,wot)
  %2427 = extractvalue %dx.types.ResRet.i32 %2426, 0
  %2428 = lshr i32 %2427, 29
  %2429 = icmp eq i32 %2428, 0
  br i1 %2429, label %2641, label %2430, !dx.controlflow.hints !22

; <label>:2430                                    ; preds = %2418
  %2431 = icmp eq i32 %2428, 1
  br i1 %2431, label %2563, label %2432, !dx.controlflow.hints !23

; <label>:2432                                    ; preds = %2430
  %2433 = icmp eq i32 %2428, 2
  br i1 %2433, label %2434, label %2702, !dx.controlflow.hints !24

; <label>:2434                                    ; preds = %2432
  %2435 = and i32 %2427, 536870911
  %2436 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2435)  ; FirstbitHi(value)
  %2437 = icmp eq i32 %2436, -1
  %2438 = add i32 %2436, 1
  %2439 = call i32 @dx.op.unary.i32(i32 30, i32 %2421)  ; Bfrev(value)
  %2440 = and i32 %2438, 31
  %2441 = select i1 %2437, i32 1, i32 %2440
  %2442 = lshr i32 %2439, %2441
  %2443 = call i32 @dx.op.unary.i32(i32 30, i32 %2422)  ; Bfrev(value)
  %2444 = lshr i32 %2443, %2441
  %2445 = and i32 %2442, 1
  %2446 = shl i32 %2444, 1
  %2447 = and i32 %2446, 2
  %2448 = or i32 %2447, %2445
  %2449 = mul nuw nsw i32 %2448, 10
  %2450 = add i32 %2424, 32
  %2451 = add i32 %2450, %2449
  br label %2452

; <label>:2452                                    ; preds = %2463, %2434
  %2453 = phi i32 [ 3, %2434 ], [ %2484, %2463 ]
  %2454 = phi i32 [ %2442, %2434 ], [ %2464, %2463 ]
  %2455 = phi i32 [ %2444, %2434 ], [ %2465, %2463 ]
  %2456 = phi i32 [ %2451, %2434 ], [ %2498, %2463 ]
  %2457 = phi i32 [ 0, %2434 ], [ %2468, %2463 ]
  %2458 = phi i32 [ 0, %2434 ], [ %2459, %2463 ]
  %2459 = add nuw nsw i32 %2458, 1
  %2460 = icmp eq i32 %2453, 2
  %2461 = icmp ugt i32 %2459, 9
  %2462 = or i1 %2460, %2461
  br i1 %2462, label %2500, label %2463, !dx.controlflow.hints !25

; <label>:2463                                    ; preds = %2452
  %2464 = lshr i32 %2454, 1
  %2465 = lshr i32 %2455, 1
  %2466 = icmp eq i32 %2453, 3
  %2467 = add i32 %2456, 4
  %2468 = select i1 %2466, i32 %2467, i32 %2457
  %2469 = and i32 %2456, -4
  %2470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2469, i32 undef)  ; BufferLoad(srv,index,wot)
  %2471 = extractvalue %dx.types.ResRet.i32 %2470, 0
  %2472 = extractvalue %dx.types.ResRet.i32 %2470, 1
  %2473 = and i32 %2456, 2
  %2474 = icmp ne i32 %2473, 0
  %2475 = lshr i32 %2471, 16
  %2476 = shl i32 %2472, 16
  %2477 = or i32 %2475, %2476
  %2478 = select i1 %2474, i32 %2477, i32 %2471
  %2479 = and i32 %2464, 1
  %2480 = and i32 %2455, 2
  %2481 = or i32 %2479, %2480
  %2482 = shl nuw nsw i32 %2481, 1
  %2483 = lshr i32 %2478, %2482
  %2484 = and i32 %2483, 3
  %2485 = lshr i32 %2478, 8
  %2486 = sub nsw i32 4, %2481
  %2487 = shl nuw nsw i32 %2486, 1
  %2488 = lshr i32 255, %2487
  %2489 = and i32 %2478, %2488
  %2490 = and i32 %2489, 85
  %2491 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2490)  ; Countbits(value)
  %2492 = shl i32 %2491, 2
  %2493 = and i32 %2489, 170
  %2494 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2493)  ; Countbits(value)
  %2495 = mul i32 %2494, 6
  %2496 = add i32 %2492, %2456
  %2497 = add i32 %2496, %2495
  %2498 = add i32 %2497, %2485
  %2499 = icmp eq i32 %2484, 0
  br i1 %2499, label %2500, label %2452

; <label>:2500                                    ; preds = %2463, %2452
  %2501 = phi i32 [ %2456, %2452 ], [ %2468, %2463 ]
  %2502 = and i32 %2501, -4
  %2503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2502, i32 undef)  ; BufferLoad(srv,index,wot)
  %2504 = extractvalue %dx.types.ResRet.i32 %2503, 0
  %2505 = extractvalue %dx.types.ResRet.i32 %2503, 1
  %2506 = and i32 %2501, 2
  %2507 = icmp ne i32 %2506, 0
  %2508 = lshr i32 %2504, 16
  %2509 = shl i32 %2505, 16
  %2510 = or i32 %2508, %2509
  %2511 = select i1 %2507, i32 %2510, i32 %2504
  %2512 = add i32 %2501, 4
  %2513 = and i32 %2512, -4
  %2514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2513, i32 undef)  ; BufferLoad(srv,index,wot)
  %2515 = extractvalue %dx.types.ResRet.i32 %2514, 0
  %2516 = and i32 %2512, 2
  %2517 = icmp ne i32 %2516, 0
  %2518 = lshr i32 %2515, 16
  %2519 = and i32 %2515, 65535
  %2520 = select i1 %2517, i32 %2518, i32 %2519
  %2521 = and i32 %2511, 65535
  %2522 = lshr i32 %2511, 16
  %2523 = and i32 %2522, 16383
  %2524 = lshr i32 %2511, 30
  %2525 = uitofp i32 %2523 to float
  %2526 = fmul fast float %2525, 0x3F10004000000000
  %2527 = fsub fast float 1.000000e+00, %2526
  %2528 = uitofp i32 %2521 to float
  %2529 = fmul fast float %2528, 0x3EF0001000000000
  %2530 = uitofp i32 %2520 to float
  %2531 = fmul fast float %2530, 0x3F10001000000000
  %2532 = fadd fast float %2531, -2.000000e+00
  %2533 = fmul fast float %2529, %2529
  %2534 = fsub fast float 1.000000e+00, %2533
  %2535 = call float @dx.op.unary.f32(i32 24, float %2534)  ; Sqrt(value)
  %2536 = and i32 %2524, 1
  %2537 = icmp ne i32 %2536, 0
  %2538 = fsub fast float -0.000000e+00, %2526
  %2539 = select i1 %2537, float %2538, float %2526
  %2540 = and i32 %2524, 2
  %2541 = icmp ne i32 %2540, 0
  %2542 = fsub fast float -0.000000e+00, %2527
  %2543 = select i1 %2541, float %2542, float %2527
  %2544 = call float @dx.op.dot2.f32(i32 54, float %2539, float %2543, float %2539, float %2543)  ; Dot2(ax,ay,bx,by)
  %2545 = call float @dx.op.unary.f32(i32 25, float %2544)  ; Rsqrt(value)
  %2546 = fmul fast float %2545, %2535
  %2547 = fmul fast float %2546, %2539
  %2548 = fmul fast float %2546, %2543
  %2549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2550 = extractvalue %dx.types.ResRet.i32 %2549, 0
  %2551 = lshr i32 %2550, 16
  %2552 = and i32 %2551, 31
  %2553 = shl i32 1, %2552
  %2554 = uitofp i32 %2553 to float
  %2555 = fmul fast float %2554, %1979
  %2556 = fmul fast float %2554, %1980
  %2557 = call float @dx.op.unary.f32(i32 22, float %2555)  ; Frc(value)
  %2558 = call float @dx.op.unary.f32(i32 22, float %2556)  ; Frc(value)
  %2559 = call float @dx.op.dot2.f32(i32 54, float %2547, float %2548, float %2557, float %2558)  ; Dot2(ax,ay,bx,by)
  %2560 = fsub fast float %2532, %2559
  %2561 = fdiv fast float %2560, %2529
  %2562 = call float @dx.op.unary.f32(i32 7, float %2561)  ; Saturate(value)
  br label %2702

; <label>:2563                                    ; preds = %2430
  %2564 = and i32 %2427, 536870911
  %2565 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2564)  ; FirstbitHi(value)
  %2566 = icmp eq i32 %2565, -1
  %2567 = add i32 %2565, 1
  %2568 = call i32 @dx.op.unary.i32(i32 30, i32 %2421)  ; Bfrev(value)
  %2569 = and i32 %2567, 31
  %2570 = select i1 %2566, i32 1, i32 %2569
  %2571 = lshr i32 %2568, %2570
  %2572 = call i32 @dx.op.unary.i32(i32 30, i32 %2422)  ; Bfrev(value)
  %2573 = lshr i32 %2572, %2570
  %2574 = and i32 %2571, 1
  %2575 = shl i32 %2573, 1
  %2576 = and i32 %2575, 2
  %2577 = or i32 %2576, %2574
  %2578 = shl nuw nsw i32 %2577, 3
  %2579 = or i32 %2578, 32
  %2580 = add i32 %2579, %2424
  br label %2581

; <label>:2581                                    ; preds = %2592, %2563
  %2582 = phi i32 [ 3, %2563 ], [ %2613, %2592 ]
  %2583 = phi i32 [ %2571, %2563 ], [ %2593, %2592 ]
  %2584 = phi i32 [ %2573, %2563 ], [ %2594, %2592 ]
  %2585 = phi i32 [ %2580, %2563 ], [ %2627, %2592 ]
  %2586 = phi i32 [ 0, %2563 ], [ %2597, %2592 ]
  %2587 = phi i32 [ 0, %2563 ], [ %2588, %2592 ]
  %2588 = add nuw nsw i32 %2587, 1
  %2589 = icmp eq i32 %2582, 2
  %2590 = icmp ugt i32 %2588, 9
  %2591 = or i1 %2589, %2590
  br i1 %2591, label %2629, label %2592, !dx.controlflow.hints !26

; <label>:2592                                    ; preds = %2581
  %2593 = lshr i32 %2583, 1
  %2594 = lshr i32 %2584, 1
  %2595 = icmp eq i32 %2582, 3
  %2596 = add i32 %2585, 4
  %2597 = select i1 %2595, i32 %2596, i32 %2586
  %2598 = and i32 %2585, -4
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2598, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = extractvalue %dx.types.ResRet.i32 %2599, 1
  %2602 = and i32 %2585, 2
  %2603 = icmp ne i32 %2602, 0
  %2604 = lshr i32 %2600, 16
  %2605 = shl i32 %2601, 16
  %2606 = or i32 %2604, %2605
  %2607 = select i1 %2603, i32 %2606, i32 %2600
  %2608 = and i32 %2593, 1
  %2609 = and i32 %2584, 2
  %2610 = or i32 %2608, %2609
  %2611 = shl nuw nsw i32 %2610, 1
  %2612 = lshr i32 %2607, %2611
  %2613 = and i32 %2612, 3
  %2614 = lshr i32 %2607, 8
  %2615 = sub nsw i32 4, %2610
  %2616 = shl nuw nsw i32 %2615, 1
  %2617 = lshr i32 255, %2616
  %2618 = and i32 %2607, %2617
  %2619 = and i32 %2618, 85
  %2620 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2619)  ; Countbits(value)
  %2621 = shl i32 %2620, 2
  %2622 = and i32 %2618, 170
  %2623 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2622)  ; Countbits(value)
  %2624 = shl i32 %2623, 1
  %2625 = add i32 %2621, %2585
  %2626 = add i32 %2625, %2624
  %2627 = add i32 %2626, %2614
  %2628 = icmp eq i32 %2613, 0
  br i1 %2628, label %2629, label %2581

; <label>:2629                                    ; preds = %2592, %2581
  %2630 = phi i32 [ %2585, %2581 ], [ %2597, %2592 ]
  %2631 = and i32 %2630, -4
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = and i32 %2630, 2
  %2635 = icmp ne i32 %2634, 0
  %2636 = lshr i32 %2633, 16
  %2637 = and i32 %2633, 65535
  %2638 = select i1 %2635, i32 %2636, i32 %2637
  %2639 = uitofp i32 %2638 to float
  %2640 = fmul fast float %2639, 0x3EF0001000000000
  br label %2702

; <label>:2641                                    ; preds = %2418
  %2642 = and i32 %2427, 536870911
  %2643 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2642)  ; FirstbitHi(value)
  %2644 = icmp eq i32 %2643, -1
  %2645 = add i32 %2643, 1
  %2646 = call i32 @dx.op.unary.i32(i32 30, i32 %2421)  ; Bfrev(value)
  %2647 = and i32 %2645, 31
  %2648 = select i1 %2644, i32 1, i32 %2647
  %2649 = lshr i32 %2646, %2648
  %2650 = call i32 @dx.op.unary.i32(i32 30, i32 %2422)  ; Bfrev(value)
  %2651 = lshr i32 %2650, %2648
  %2652 = and i32 %2649, 1
  %2653 = shl i32 %2651, 1
  %2654 = and i32 %2653, 2
  %2655 = or i32 %2654, %2652
  %2656 = mul nuw nsw i32 %2655, 12
  %2657 = add i32 %2424, 32
  %2658 = add i32 %2657, %2656
  br label %2659

; <label>:2659                                    ; preds = %2670, %2641
  %2660 = phi i32 [ 2, %2641 ], [ %2683, %2670 ]
  %2661 = phi i32 [ %2649, %2641 ], [ %2671, %2670 ]
  %2662 = phi i32 [ %2651, %2641 ], [ %2672, %2670 ]
  %2663 = phi i32 [ %2658, %2641 ], [ %2695, %2670 ]
  %2664 = phi i32 [ 0, %2641 ], [ %2675, %2670 ]
  %2665 = phi i32 [ 0, %2641 ], [ %2666, %2670 ]
  %2666 = add nuw nsw i32 %2665, 1
  %2667 = icmp eq i32 %2660, 3
  %2668 = icmp ugt i32 %2666, 9
  %2669 = or i1 %2667, %2668
  br i1 %2669, label %2697, label %2670, !dx.controlflow.hints !27

; <label>:2670                                    ; preds = %2659
  %2671 = lshr i32 %2661, 1
  %2672 = lshr i32 %2662, 1
  %2673 = icmp eq i32 %2660, 2
  %2674 = add i32 %2663, 4
  %2675 = select i1 %2673, i32 %2674, i32 %2664
  %2676 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2677 = extractvalue %dx.types.ResRet.i32 %2676, 0
  %2678 = and i32 %2671, 1
  %2679 = and i32 %2662, 2
  %2680 = or i32 %2678, %2679
  %2681 = shl nuw nsw i32 %2680, 1
  %2682 = lshr i32 %2677, %2681
  %2683 = and i32 %2682, 3
  %2684 = lshr i32 %2677, 8
  %2685 = sub nsw i32 4, %2680
  %2686 = shl nuw nsw i32 %2685, 1
  %2687 = lshr i32 255, %2686
  %2688 = and i32 %2677, %2687
  %2689 = lshr i32 %2688, 1
  %2690 = and i32 %2689, 85
  %2691 = xor i32 %2690, %2688
  %2692 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2691)  ; Countbits(value)
  %2693 = shl i32 %2692, 2
  %2694 = add i32 %2693, %2663
  %2695 = add i32 %2694, %2684
  %2696 = icmp eq i32 %2683, 0
  br i1 %2696, label %2697, label %2659

; <label>:2697                                    ; preds = %2670, %2659
  %2698 = phi i32 [ %2663, %2659 ], [ %2675, %2670 ]
  %2699 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2698, i32 undef)  ; BufferLoad(srv,index,wot)
  %2700 = extractvalue %dx.types.ResRet.i32 %2699, 0
  %2701 = bitcast i32 %2700 to float
  br label %2702

; <label>:2702                                    ; preds = %2697, %2629, %2500, %2432
  %2703 = phi float [ %2701, %2697 ], [ %2640, %2629 ], [ %2562, %2500 ], [ 0.000000e+00, %2432 ]
  %2704 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %2378
  store float %2703, float* %2704, align 4
  %2705 = fcmp fast ogt float %2703, 0.000000e+00
  %2706 = add i32 %2424, 20
  br i1 %2705, label %2707, label %2722, !dx.controlflow.hints !28

; <label>:2707                                    ; preds = %2702
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = extractvalue %dx.types.ResRet.i32 %2708, 1
  %2711 = bitcast i32 %2709 to float
  %2712 = bitcast i32 %2710 to float
  %2713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2714 = extractvalue %dx.types.ResRet.i32 %2713, 0
  %2715 = extractvalue %dx.types.ResRet.i32 %2713, 1
  %2716 = bitcast i32 %2714 to float
  %2717 = bitcast i32 %2715 to float
  %2718 = fdiv fast float %2703, %2712
  %2719 = fsub fast float %2718, %2711
  %2720 = fadd fast float %2719, %2716
  %2721 = fmul fast float %2720, %2717
  br label %2722

; <label>:2722                                    ; preds = %2707, %2702
  %2723 = phi float [ %2721, %2707 ], [ %2703, %2702 ]
  %2724 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %2378
  store float %2723, float* %2724, align 4
  %2725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2706, i32 undef)  ; BufferLoad(srv,index,wot)
  %2726 = extractvalue %dx.types.ResRet.i32 %2725, 0
  %2727 = extractvalue %dx.types.ResRet.i32 %2725, 1
  %2728 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2378
  %2729 = bitcast float* %2728 to i32*
  store i32 %2726, i32* %2729, align 4
  %2730 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2378
  %2731 = bitcast float* %2730 to i32*
  store i32 %2727, i32* %2731, align 4
  br label %2732

; <label>:2732                                    ; preds = %2722, %2408
  %2733 = phi float [ %2723, %2722 ], [ %2417, %2408 ]
  %2734 = getelementptr [12 x float], [12 x float]* %12, i32 0, i32 %2379
  %2735 = load float, float* %2734, align 4
  %2736 = fcmp fast ogt float %2733, %2735
  %2737 = select i1 %2736, i32 %2378, i32 %2379
  %2738 = add i32 %2378, 1
  br label %2739

; <label>:2739                                    ; preds = %2732, %2377
  %2740 = phi i32 [ %2378, %2377 ], [ %2738, %2732 ]
  %2741 = phi i32 [ %2379, %2377 ], [ %2737, %2732 ]
  %2742 = add nuw i32 %2380, 1
  %2743 = icmp eq i32 %2742, %2374
  br i1 %2743, label %2744, label %2377

; <label>:2744                                    ; preds = %2739
  br label %2745

; <label>:2745                                    ; preds = %2744, %2369
  %2746 = phi i32 [ %2370, %2369 ], [ %2740, %2744 ]
  %2747 = phi i32 [ %2371, %2369 ], [ %2741, %2744 ]
  %2748 = icmp eq i32 %2746, 1
  br i1 %2748, label %2787, label %2749, !dx.controlflow.hints !36

; <label>:2749                                    ; preds = %2745
  %2750 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 0
  %2751 = load float, float* %2750, align 4
  %2752 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 0
  %2753 = load float, float* %2752, align 4
  %2754 = fdiv fast float 1.000000e+00, %2753
  %2755 = fsub fast float %2751, %2754
  %2756 = icmp ugt i32 %2746, 1
  br i1 %2756, label %2757, label %2773

; <label>:2757                                    ; preds = %2749
  br label %2758

; <label>:2758                                    ; preds = %2758, %2757
  %2759 = phi float [ %2768, %2758 ], [ %2755, %2757 ]
  %2760 = phi float [ %2769, %2758 ], [ %2751, %2757 ]
  %2761 = phi i32 [ %2770, %2758 ], [ 1, %2757 ]
  %2762 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %2761
  %2763 = load float, float* %2762, align 4
  %2764 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %2761
  %2765 = load float, float* %2764, align 4
  %2766 = fdiv fast float 1.000000e+00, %2765
  %2767 = fsub fast float %2763, %2766
  %2768 = call float @dx.op.binary.f32(i32 36, float %2759, float %2767)  ; FMin(a,b)
  %2769 = call float @dx.op.binary.f32(i32 35, float %2760, float %2763)  ; FMax(a,b)
  %2770 = add nuw i32 %2761, 1
  %2771 = icmp eq i32 %2770, %2746
  br i1 %2771, label %2772, label %2758

; <label>:2772                                    ; preds = %2758
  br label %2773

; <label>:2773                                    ; preds = %2772, %2749
  %2774 = phi float [ %2755, %2749 ], [ %2768, %2772 ]
  %2775 = phi float [ %2751, %2749 ], [ %2769, %2772 ]
  %2776 = getelementptr [12 x float], [12 x float]* %11, i32 0, i32 %2747
  %2777 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %2747
  %2778 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %2747
  %2779 = load float, float* %2776, align 4
  %2780 = load float, float* %2777, align 4
  %2781 = load float, float* %2778, align 4
  %2782 = fdiv fast float %2779, %2781
  %2783 = fsub fast float %2775, %2780
  %2784 = fadd fast float %2783, %2782
  %2785 = fsub fast float %2775, %2774
  %2786 = fdiv fast float %2784, %2785
  br label %2790

; <label>:2787                                    ; preds = %2745
  %2788 = getelementptr [12 x float], [12 x float]* %11, i32 0, i32 0
  %2789 = load float, float* %2788, align 4
  br label %2790

; <label>:2790                                    ; preds = %2787, %2773, %1956
  %2791 = phi float [ %2789, %2787 ], [ %2786, %2773 ], [ 0.000000e+00, %1956 ]
  %2792 = fmul fast float %2791, 2.000000e+00
  %2793 = fsub fast float 1.000000e+00, %2792
  %2794 = fmul fast float %2793, %2793
  %2795 = fmul fast float %2794, %2793
  %2796 = fmul fast float %2794, %2794
  %2797 = add i32 %1962, 1
  %2798 = uitofp i32 %2797 to float
  %2799 = fdiv fast float 1.000000e+00, %2798
  %2800 = fmul fast float %2791, 3.000000e+00
  %2801 = fsub fast float 1.500000e+00, %2800
  %2802 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %2795, float %2801)  ; FMad(a,b,c)
  %2803 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %2794, float 0.000000e+00)  ; FMad(a,b,c)
  %2804 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %2796, float %2803)  ; FMad(a,b,c)
  %2805 = fmul fast float %2791, 0x3FFBB67AE0000000
  %2806 = fsub fast float 0x3FEBB67AE0000000, %2805
  %2807 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %2795, float %2806)  ; FMad(a,b,c)
  %2808 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2794, float 0.000000e+00)  ; FMad(a,b,c)
  %2809 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %2796, float %2808)  ; FMad(a,b,c)
  %2810 = fsub fast float 5.000000e-01, %1957
  %2811 = fadd fast float %2810, %2802
  %2812 = fsub fast float %2804, %1958
  %2813 = fsub fast float 5.000000e-01, %1959
  %2814 = fadd fast float %2813, %2807
  %2815 = fsub fast float %2809, %1960
  %2816 = fmul fast float %2811, %2799
  %2817 = fmul fast float %2812, %2799
  %2818 = fmul fast float %2814, %2799
  %2819 = fmul fast float %2815, %2799
  %2820 = fadd fast float %2816, %1957
  %2821 = fadd fast float %2817, %1958
  %2822 = fadd fast float %2818, %1959
  %2823 = fadd fast float %2819, %1960
  %2824 = add nuw i32 %1961, 1
  %2825 = icmp eq i32 %2824, %1919
  br i1 %2825, label %2826, label %1956, !llvm.loop !37

; <label>:2826                                    ; preds = %2790
  br label %2827

; <label>:2827                                    ; preds = %2826, %1922
  %2828 = phi float [ %1950, %1922 ], [ %2820, %2826 ]
  %2829 = phi float [ %1951, %1922 ], [ %2821, %2826 ]
  %2830 = phi float [ %1952, %1922 ], [ %2822, %2826 ]
  %2831 = phi float [ %1953, %1922 ], [ %2823, %2826 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 2, float %2828, float %2829, float %2830, float %2831, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %2832

; <label>:2832                                    ; preds = %2827, %1909
  %2833 = phi i32 [ %1905, %1909 ], [ %1927, %2827 ]
  %2834 = shl i32 %48, 3
  %2835 = add i32 %45, 3
  %2836 = icmp ugt i32 %2835, %46
  br i1 %2836, label %3760, label %2837, !dx.controlflow.hints !18

; <label>:2837                                    ; preds = %2832
  %2838 = lshr i32 %2833, 16
  %2839 = and i32 %2838, 511
  %2840 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.i32 %2840, 1
  %2842 = and i32 %2841, 31
  %2843 = lshr i32 %2834, %2842
  %2844 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %2843)  ; UMax(a,b)
  %2845 = mul i32 %2844, %2844
  %2846 = lshr i32 %2845, 8
  %2847 = call i32 @dx.op.binary.i32(i32 39, i32 1, i32 %2846)  ; UMax(a,b)
  %2848 = mul i32 %2847, %2839
  %2849 = icmp ult i32 %2848, %2845
  br i1 %2849, label %2850, label %3760, !dx.controlflow.hints !19

; <label>:2850                                    ; preds = %2837
  %2851 = shl nuw nsw i32 %2839, 16
  %2852 = add nuw nsw i32 %2851, 65536
  %2853 = and i32 %2852, 33488896
  %2854 = and i32 %2833, -33488897
  %2855 = or i32 %2853, %2854
  %2856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 323)  ; CBufferLoadLegacy(handle,regIndex)
  %2857 = extractvalue %dx.types.CBufRet.f32 %2856, 0
  %2858 = extractvalue %dx.types.CBufRet.f32 %2856, 1
  %2859 = fmul fast float %35, 1.250000e-01
  %2860 = fmul fast float %2859, %52
  %2861 = fmul fast float %2857, %2860
  %2862 = fmul fast float %2858, %2860
  %2863 = fsub fast float %40, %2861
  %2864 = fsub fast float %41, %2862
  %2865 = call float @dx.op.unary.f32(i32 22, float %2863)  ; Frc(value)
  %2866 = call float @dx.op.unary.f32(i32 22, float %2864)  ; Frc(value)
  %2867 = uitofp i32 %2834 to float
  %2868 = fmul fast float %2867, %43
  %2869 = fmul fast float %2865, 2.000000e+00
  %2870 = fmul fast float %2866, 2.000000e+00
  %2871 = fadd fast float %2869, -1.000000e+00
  %2872 = fadd fast float %2870, -1.000000e+00
  %2873 = fmul fast float %2871, %2868
  %2874 = fmul fast float %2872, %2868
  %2875 = fadd fast float %2873, %2857
  %2876 = fadd fast float %2874, %2858
  %2877 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %2, i32 undef, i32 %22, i32 %23, i32 3, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = extractvalue %dx.types.ResRet.f32 %2877, 1
  %2880 = extractvalue %dx.types.ResRet.f32 %2877, 2
  %2881 = extractvalue %dx.types.ResRet.f32 %2877, 3
  %2882 = icmp eq i32 %2847, 0
  br i1 %2882, label %3755, label %2883

; <label>:2883                                    ; preds = %2850
  br label %2884

; <label>:2884                                    ; preds = %3718, %2883
  %2885 = phi float [ %3748, %3718 ], [ %2878, %2883 ]
  %2886 = phi float [ %3749, %3718 ], [ %2879, %2883 ]
  %2887 = phi float [ %3750, %3718 ], [ %2880, %2883 ]
  %2888 = phi float [ %3751, %3718 ], [ %2881, %2883 ]
  %2889 = phi i32 [ %3752, %3718 ], [ 0, %2883 ]
  %2890 = add i32 %2889, %2848
  %2891 = urem i32 %2890, %2844
  %2892 = uitofp i32 %2891 to float
  %2893 = udiv i32 %2890, %2844
  %2894 = uitofp i32 %2893 to float
  %2895 = fadd fast float %2892, 5.000000e-01
  %2896 = fadd fast float %2894, 5.000000e-01
  %2897 = uitofp i32 %2844 to float
  %2898 = fdiv fast float %2895, %2897
  %2899 = fdiv fast float %2896, %2897
  %2900 = fmul fast float %2868, %35
  %2901 = fmul fast float %2898, 2.000000e+00
  %2902 = fmul fast float %2899, 2.000000e+00
  %2903 = fadd fast float %2901, -1.000000e+00
  %2904 = fadd fast float %2902, -1.000000e+00
  %2905 = fmul fast float %2903, %2900
  %2906 = fmul fast float %2904, %2900
  %2907 = fadd fast float %2875, %2905
  %2908 = fadd fast float %2876, %2906
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 4, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = and i32 %2910, 536870911
  %2912 = uitofp i32 %2911 to float
  %2913 = fmul fast float %2912, %2907
  %2914 = fmul fast float %2912, %2908
  %2915 = fptoui float %2913 to i32
  %2916 = fptoui float %2914 to i32
  %2917 = fcmp fast olt float %2907, 0.000000e+00
  %2918 = fcmp fast olt float %2908, 0.000000e+00
  %2919 = or i1 %2917, %2918
  %2920 = fcmp fast oge float %2907, 1.000000e+00
  %2921 = fcmp fast oge float %2908, 1.000000e+00
  %2922 = or i1 %2920, %2921
  %2923 = or i1 %2919, %2922
  br i1 %2923, label %3718, label %2924, !dx.controlflow.hints !20

; <label>:2924                                    ; preds = %2884
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 31
  %2928 = lshr i32 %2915, %2927
  %2929 = lshr i32 %2916, %2927
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 31
  %2933 = shl i32 1, %2932
  %2934 = call i32 @dx.op.binary.i32(i32 40, i32 %2933, i32 4)  ; UMin(a,b)
  %2935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %2936 = extractvalue %dx.types.ResRet.i32 %2935, 0
  %2937 = extractvalue %dx.types.ResRet.i32 %2935, 1
  %2938 = icmp eq i32 %2934, 0
  br i1 %2938, label %3297, label %2939

; <label>:2939                                    ; preds = %2924
  br label %2940

; <label>:2940                                    ; preds = %3282, %2939
  %2941 = phi i32 [ %3288, %3282 ], [ 0, %2939 ]
  %2942 = phi i32 [ %3287, %3282 ], [ 0, %2939 ]
  %2943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %2944 = extractvalue %dx.types.ResRet.i32 %2943, 0
  %2945 = lshr i32 %2944, 16
  %2946 = and i32 %2945, 31
  %2947 = shl i32 %2929, %2946
  %2948 = add i32 %2947, %2928
  %2949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 16, i32 undef)  ; BufferLoad(srv,index,wot)
  %2950 = extractvalue %dx.types.ResRet.i32 %2949, 0
  %2951 = and i32 %2950, 31
  %2952 = shl i32 %2948, %2951
  %2953 = add i32 %2952, %2941
  %2954 = shl i32 %2953, 2
  %2955 = add i32 %2954, 32
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2955, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = icmp slt i32 %2957, 0
  br i1 %2958, label %2969, label %2959, !dx.controlflow.hints !21

; <label>:2959                                    ; preds = %2940
  %2960 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %2941
  %2961 = bitcast float* %2960 to i32*
  store i32 %2957, i32* %2961, align 4
  %2962 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %2941
  %2963 = bitcast float* %2962 to i32*
  store i32 %2957, i32* %2963, align 4
  %2964 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2941
  %2965 = bitcast float* %2964 to i32*
  store i32 %2936, i32* %2965, align 4
  %2966 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2941
  %2967 = bitcast float* %2966 to i32*
  store i32 %2937, i32* %2967, align 4
  %2968 = bitcast i32 %2957 to float
  br label %3282

; <label>:2969                                    ; preds = %2940
  %2970 = shl i32 1, %2927
  %2971 = add i32 %2970, -1
  %2972 = and i32 %2971, %2915
  %2973 = and i32 %2971, %2916
  %2974 = and i32 %2957, 1073741823
  %2975 = add nuw nsw i32 %2974, 4
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = lshr i32 %2977, 29
  %2979 = icmp eq i32 %2978, 0
  br i1 %2979, label %3191, label %2980, !dx.controlflow.hints !22

; <label>:2980                                    ; preds = %2969
  %2981 = icmp eq i32 %2978, 1
  br i1 %2981, label %3113, label %2982, !dx.controlflow.hints !23

; <label>:2982                                    ; preds = %2980
  %2983 = icmp eq i32 %2978, 2
  br i1 %2983, label %2984, label %3252, !dx.controlflow.hints !24

; <label>:2984                                    ; preds = %2982
  %2985 = and i32 %2977, 536870911
  %2986 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %2985)  ; FirstbitHi(value)
  %2987 = icmp eq i32 %2986, -1
  %2988 = add i32 %2986, 1
  %2989 = call i32 @dx.op.unary.i32(i32 30, i32 %2972)  ; Bfrev(value)
  %2990 = and i32 %2988, 31
  %2991 = select i1 %2987, i32 1, i32 %2990
  %2992 = lshr i32 %2989, %2991
  %2993 = call i32 @dx.op.unary.i32(i32 30, i32 %2973)  ; Bfrev(value)
  %2994 = lshr i32 %2993, %2991
  %2995 = and i32 %2992, 1
  %2996 = shl i32 %2994, 1
  %2997 = and i32 %2996, 2
  %2998 = or i32 %2997, %2995
  %2999 = mul nuw nsw i32 %2998, 10
  %3000 = add nuw nsw i32 %2974, 32
  %3001 = add nuw i32 %3000, %2999
  br label %3002

; <label>:3002                                    ; preds = %3013, %2984
  %3003 = phi i32 [ 3, %2984 ], [ %3034, %3013 ]
  %3004 = phi i32 [ %2992, %2984 ], [ %3014, %3013 ]
  %3005 = phi i32 [ %2994, %2984 ], [ %3015, %3013 ]
  %3006 = phi i32 [ %3001, %2984 ], [ %3048, %3013 ]
  %3007 = phi i32 [ 0, %2984 ], [ %3018, %3013 ]
  %3008 = phi i32 [ 0, %2984 ], [ %3009, %3013 ]
  %3009 = add nuw nsw i32 %3008, 1
  %3010 = icmp eq i32 %3003, 2
  %3011 = icmp ugt i32 %3009, 9
  %3012 = or i1 %3010, %3011
  br i1 %3012, label %3050, label %3013, !dx.controlflow.hints !25

; <label>:3013                                    ; preds = %3002
  %3014 = lshr i32 %3004, 1
  %3015 = lshr i32 %3005, 1
  %3016 = icmp eq i32 %3003, 3
  %3017 = add i32 %3006, 4
  %3018 = select i1 %3016, i32 %3017, i32 %3007
  %3019 = and i32 %3006, -4
  %3020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3019, i32 undef)  ; BufferLoad(srv,index,wot)
  %3021 = extractvalue %dx.types.ResRet.i32 %3020, 0
  %3022 = extractvalue %dx.types.ResRet.i32 %3020, 1
  %3023 = and i32 %3006, 2
  %3024 = icmp ne i32 %3023, 0
  %3025 = lshr i32 %3021, 16
  %3026 = shl i32 %3022, 16
  %3027 = or i32 %3025, %3026
  %3028 = select i1 %3024, i32 %3027, i32 %3021
  %3029 = and i32 %3014, 1
  %3030 = and i32 %3005, 2
  %3031 = or i32 %3029, %3030
  %3032 = shl nuw nsw i32 %3031, 1
  %3033 = lshr i32 %3028, %3032
  %3034 = and i32 %3033, 3
  %3035 = lshr i32 %3028, 8
  %3036 = sub nsw i32 4, %3031
  %3037 = shl nuw nsw i32 %3036, 1
  %3038 = lshr i32 255, %3037
  %3039 = and i32 %3028, %3038
  %3040 = and i32 %3039, 85
  %3041 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3040)  ; Countbits(value)
  %3042 = shl i32 %3041, 2
  %3043 = and i32 %3039, 170
  %3044 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3043)  ; Countbits(value)
  %3045 = mul i32 %3044, 6
  %3046 = add i32 %3042, %3006
  %3047 = add i32 %3046, %3045
  %3048 = add i32 %3047, %3035
  %3049 = icmp eq i32 %3034, 0
  br i1 %3049, label %3050, label %3002

; <label>:3050                                    ; preds = %3013, %3002
  %3051 = phi i32 [ %3006, %3002 ], [ %3018, %3013 ]
  %3052 = and i32 %3051, -4
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = extractvalue %dx.types.ResRet.i32 %3053, 1
  %3056 = and i32 %3051, 2
  %3057 = icmp ne i32 %3056, 0
  %3058 = lshr i32 %3054, 16
  %3059 = shl i32 %3055, 16
  %3060 = or i32 %3058, %3059
  %3061 = select i1 %3057, i32 %3060, i32 %3054
  %3062 = add i32 %3051, 4
  %3063 = and i32 %3062, -4
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3063, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = and i32 %3062, 2
  %3067 = icmp ne i32 %3066, 0
  %3068 = lshr i32 %3065, 16
  %3069 = and i32 %3065, 65535
  %3070 = select i1 %3067, i32 %3068, i32 %3069
  %3071 = and i32 %3061, 65535
  %3072 = lshr i32 %3061, 16
  %3073 = and i32 %3072, 16383
  %3074 = lshr i32 %3061, 30
  %3075 = uitofp i32 %3073 to float
  %3076 = fmul fast float %3075, 0x3F10004000000000
  %3077 = fsub fast float 1.000000e+00, %3076
  %3078 = uitofp i32 %3071 to float
  %3079 = fmul fast float %3078, 0x3EF0001000000000
  %3080 = uitofp i32 %3070 to float
  %3081 = fmul fast float %3080, 0x3F10001000000000
  %3082 = fadd fast float %3081, -2.000000e+00
  %3083 = fmul fast float %3079, %3079
  %3084 = fsub fast float 1.000000e+00, %3083
  %3085 = call float @dx.op.unary.f32(i32 24, float %3084)  ; Sqrt(value)
  %3086 = and i32 %3074, 1
  %3087 = icmp ne i32 %3086, 0
  %3088 = fsub fast float -0.000000e+00, %3076
  %3089 = select i1 %3087, float %3088, float %3076
  %3090 = and i32 %3074, 2
  %3091 = icmp ne i32 %3090, 0
  %3092 = fsub fast float -0.000000e+00, %3077
  %3093 = select i1 %3091, float %3092, float %3077
  %3094 = call float @dx.op.dot2.f32(i32 54, float %3089, float %3093, float %3089, float %3093)  ; Dot2(ax,ay,bx,by)
  %3095 = call float @dx.op.unary.f32(i32 25, float %3094)  ; Rsqrt(value)
  %3096 = fmul fast float %3095, %3085
  %3097 = fmul fast float %3096, %3089
  %3098 = fmul fast float %3096, %3093
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = lshr i32 %3100, 16
  %3102 = and i32 %3101, 31
  %3103 = shl i32 1, %3102
  %3104 = uitofp i32 %3103 to float
  %3105 = fmul fast float %3104, %2907
  %3106 = fmul fast float %3104, %2908
  %3107 = call float @dx.op.unary.f32(i32 22, float %3105)  ; Frc(value)
  %3108 = call float @dx.op.unary.f32(i32 22, float %3106)  ; Frc(value)
  %3109 = call float @dx.op.dot2.f32(i32 54, float %3097, float %3098, float %3107, float %3108)  ; Dot2(ax,ay,bx,by)
  %3110 = fsub fast float %3082, %3109
  %3111 = fdiv fast float %3110, %3079
  %3112 = call float @dx.op.unary.f32(i32 7, float %3111)  ; Saturate(value)
  br label %3252

; <label>:3113                                    ; preds = %2980
  %3114 = and i32 %2977, 536870911
  %3115 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3114)  ; FirstbitHi(value)
  %3116 = icmp eq i32 %3115, -1
  %3117 = add i32 %3115, 1
  %3118 = call i32 @dx.op.unary.i32(i32 30, i32 %2972)  ; Bfrev(value)
  %3119 = and i32 %3117, 31
  %3120 = select i1 %3116, i32 1, i32 %3119
  %3121 = lshr i32 %3118, %3120
  %3122 = call i32 @dx.op.unary.i32(i32 30, i32 %2973)  ; Bfrev(value)
  %3123 = lshr i32 %3122, %3120
  %3124 = and i32 %3121, 1
  %3125 = shl i32 %3123, 1
  %3126 = and i32 %3125, 2
  %3127 = or i32 %3126, %3124
  %3128 = shl nuw nsw i32 %3127, 3
  %3129 = or i32 %3128, 32
  %3130 = add nuw nsw i32 %3129, %2974
  br label %3131

; <label>:3131                                    ; preds = %3142, %3113
  %3132 = phi i32 [ 3, %3113 ], [ %3163, %3142 ]
  %3133 = phi i32 [ %3121, %3113 ], [ %3143, %3142 ]
  %3134 = phi i32 [ %3123, %3113 ], [ %3144, %3142 ]
  %3135 = phi i32 [ %3130, %3113 ], [ %3177, %3142 ]
  %3136 = phi i32 [ 0, %3113 ], [ %3147, %3142 ]
  %3137 = phi i32 [ 0, %3113 ], [ %3138, %3142 ]
  %3138 = add nuw nsw i32 %3137, 1
  %3139 = icmp eq i32 %3132, 2
  %3140 = icmp ugt i32 %3138, 9
  %3141 = or i1 %3139, %3140
  br i1 %3141, label %3179, label %3142, !dx.controlflow.hints !26

; <label>:3142                                    ; preds = %3131
  %3143 = lshr i32 %3133, 1
  %3144 = lshr i32 %3134, 1
  %3145 = icmp eq i32 %3132, 3
  %3146 = add i32 %3135, 4
  %3147 = select i1 %3145, i32 %3146, i32 %3136
  %3148 = and i32 %3135, -4
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = extractvalue %dx.types.ResRet.i32 %3149, 1
  %3152 = and i32 %3135, 2
  %3153 = icmp ne i32 %3152, 0
  %3154 = lshr i32 %3150, 16
  %3155 = shl i32 %3151, 16
  %3156 = or i32 %3154, %3155
  %3157 = select i1 %3153, i32 %3156, i32 %3150
  %3158 = and i32 %3143, 1
  %3159 = and i32 %3134, 2
  %3160 = or i32 %3158, %3159
  %3161 = shl nuw nsw i32 %3160, 1
  %3162 = lshr i32 %3157, %3161
  %3163 = and i32 %3162, 3
  %3164 = lshr i32 %3157, 8
  %3165 = sub nsw i32 4, %3160
  %3166 = shl nuw nsw i32 %3165, 1
  %3167 = lshr i32 255, %3166
  %3168 = and i32 %3157, %3167
  %3169 = and i32 %3168, 85
  %3170 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3169)  ; Countbits(value)
  %3171 = shl i32 %3170, 2
  %3172 = and i32 %3168, 170
  %3173 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3172)  ; Countbits(value)
  %3174 = shl i32 %3173, 1
  %3175 = add i32 %3171, %3135
  %3176 = add i32 %3175, %3174
  %3177 = add i32 %3176, %3164
  %3178 = icmp eq i32 %3163, 0
  br i1 %3178, label %3179, label %3131

; <label>:3179                                    ; preds = %3142, %3131
  %3180 = phi i32 [ %3135, %3131 ], [ %3147, %3142 ]
  %3181 = and i32 %3180, -4
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = and i32 %3180, 2
  %3185 = icmp ne i32 %3184, 0
  %3186 = lshr i32 %3183, 16
  %3187 = and i32 %3183, 65535
  %3188 = select i1 %3185, i32 %3186, i32 %3187
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3EF0001000000000
  br label %3252

; <label>:3191                                    ; preds = %2969
  %3192 = and i32 %2977, 536870911
  %3193 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3192)  ; FirstbitHi(value)
  %3194 = icmp eq i32 %3193, -1
  %3195 = add i32 %3193, 1
  %3196 = call i32 @dx.op.unary.i32(i32 30, i32 %2972)  ; Bfrev(value)
  %3197 = and i32 %3195, 31
  %3198 = select i1 %3194, i32 1, i32 %3197
  %3199 = lshr i32 %3196, %3198
  %3200 = call i32 @dx.op.unary.i32(i32 30, i32 %2973)  ; Bfrev(value)
  %3201 = lshr i32 %3200, %3198
  %3202 = and i32 %3199, 1
  %3203 = shl i32 %3201, 1
  %3204 = and i32 %3203, 2
  %3205 = or i32 %3204, %3202
  %3206 = mul nuw nsw i32 %3205, 12
  %3207 = add nuw nsw i32 %2974, 32
  %3208 = add nuw i32 %3207, %3206
  br label %3209

; <label>:3209                                    ; preds = %3220, %3191
  %3210 = phi i32 [ 2, %3191 ], [ %3233, %3220 ]
  %3211 = phi i32 [ %3199, %3191 ], [ %3221, %3220 ]
  %3212 = phi i32 [ %3201, %3191 ], [ %3222, %3220 ]
  %3213 = phi i32 [ %3208, %3191 ], [ %3245, %3220 ]
  %3214 = phi i32 [ 0, %3191 ], [ %3225, %3220 ]
  %3215 = phi i32 [ 0, %3191 ], [ %3216, %3220 ]
  %3216 = add nuw nsw i32 %3215, 1
  %3217 = icmp eq i32 %3210, 3
  %3218 = icmp ugt i32 %3216, 9
  %3219 = or i1 %3217, %3218
  br i1 %3219, label %3247, label %3220, !dx.controlflow.hints !27

; <label>:3220                                    ; preds = %3209
  %3221 = lshr i32 %3211, 1
  %3222 = lshr i32 %3212, 1
  %3223 = icmp eq i32 %3210, 2
  %3224 = add i32 %3213, 4
  %3225 = select i1 %3223, i32 %3224, i32 %3214
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3213, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = and i32 %3221, 1
  %3229 = and i32 %3212, 2
  %3230 = or i32 %3228, %3229
  %3231 = shl nuw nsw i32 %3230, 1
  %3232 = lshr i32 %3227, %3231
  %3233 = and i32 %3232, 3
  %3234 = lshr i32 %3227, 8
  %3235 = sub nsw i32 4, %3230
  %3236 = shl nuw nsw i32 %3235, 1
  %3237 = lshr i32 255, %3236
  %3238 = and i32 %3227, %3237
  %3239 = lshr i32 %3238, 1
  %3240 = and i32 %3239, 85
  %3241 = xor i32 %3240, %3238
  %3242 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3241)  ; Countbits(value)
  %3243 = shl i32 %3242, 2
  %3244 = add i32 %3243, %3213
  %3245 = add i32 %3244, %3234
  %3246 = icmp eq i32 %3233, 0
  br i1 %3246, label %3247, label %3209

; <label>:3247                                    ; preds = %3220, %3209
  %3248 = phi i32 [ %3213, %3209 ], [ %3225, %3220 ]
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = bitcast i32 %3250 to float
  br label %3252

; <label>:3252                                    ; preds = %3247, %3179, %3050, %2982
  %3253 = phi float [ %3251, %3247 ], [ %3190, %3179 ], [ %3112, %3050 ], [ 0.000000e+00, %2982 ]
  %3254 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %2941
  store float %3253, float* %3254, align 4
  %3255 = fcmp fast ogt float %3253, 0.000000e+00
  %3256 = add nuw nsw i32 %2974, 20
  br i1 %3255, label %3257, label %3272, !dx.controlflow.hints !28

; <label>:3257                                    ; preds = %3252
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = extractvalue %dx.types.ResRet.i32 %3258, 1
  %3261 = bitcast i32 %3259 to float
  %3262 = bitcast i32 %3260 to float
  %3263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3264 = extractvalue %dx.types.ResRet.i32 %3263, 0
  %3265 = extractvalue %dx.types.ResRet.i32 %3263, 1
  %3266 = bitcast i32 %3264 to float
  %3267 = bitcast i32 %3265 to float
  %3268 = fdiv fast float %3253, %3262
  %3269 = fsub fast float %3268, %3261
  %3270 = fadd fast float %3269, %3266
  %3271 = fmul fast float %3270, %3267
  br label %3272

; <label>:3272                                    ; preds = %3257, %3252
  %3273 = phi float [ %3271, %3257 ], [ %3253, %3252 ]
  %3274 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %2941
  store float %3273, float* %3274, align 4
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = extractvalue %dx.types.ResRet.i32 %3275, 1
  %3278 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %2941
  %3279 = bitcast float* %3278 to i32*
  store i32 %3276, i32* %3279, align 4
  %3280 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %2941
  %3281 = bitcast float* %3280 to i32*
  store i32 %3277, i32* %3281, align 4
  br label %3282

; <label>:3282                                    ; preds = %3272, %2959
  %3283 = phi float [ %3273, %3272 ], [ %2968, %2959 ]
  %3284 = getelementptr [12 x float], [12 x float]* %12, i32 0, i32 %2942
  %3285 = load float, float* %3284, align 4
  %3286 = fcmp fast ogt float %3283, %3285
  %3287 = select i1 %3286, i32 %2941, i32 %2942
  %3288 = add nuw i32 %2941, 1
  %3289 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 314)  ; CBufferLoadLegacy(handle,regIndex)
  %3290 = extractvalue %dx.types.CBufRet.i32 %3289, 2
  %3291 = icmp eq i32 %3290, 0
  %3292 = icmp ugt i32 %2957, -1073741825
  %3293 = and i1 %3292, %3291
  %3294 = icmp ult i32 %3288, %2934
  %3295 = and i1 %3293, %3294
  br i1 %3295, label %2940, label %3296, !dx.controlflow.hints !29

; <label>:3296                                    ; preds = %3282
  br label %3297

; <label>:3297                                    ; preds = %3296, %2924
  %3298 = phi i32 [ 0, %2924 ], [ %3288, %3296 ]
  %3299 = phi i32 [ 0, %2924 ], [ %3287, %3296 ]
  %3300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3301 = extractvalue %dx.types.CBufRet.f32 %3300, 2
  %3302 = fptoui float %3301 to i32
  %3303 = icmp eq i32 %3302, 0
  br i1 %3303, label %3673, label %3304

; <label>:3304                                    ; preds = %3297
  br label %3305

; <label>:3305                                    ; preds = %3667, %3304
  %3306 = phi i32 [ %3668, %3667 ], [ %3298, %3304 ]
  %3307 = phi i32 [ %3669, %3667 ], [ %3299, %3304 ]
  %3308 = phi i32 [ %3670, %3667 ], [ 0, %3304 ]
  %3309 = lshr i32 %3308, 2
  %3310 = and i32 %3308, 3
  %3311 = add nuw nsw i32 %3309, 83
  %3312 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 %3311)  ; CBufferLoadLegacy(handle,regIndex)
  %3313 = extractvalue %dx.types.CBufRet.i32 %3312, 0
  %3314 = extractvalue %dx.types.CBufRet.i32 %3312, 1
  %3315 = extractvalue %dx.types.CBufRet.i32 %3312, 2
  %3316 = extractvalue %dx.types.CBufRet.i32 %3312, 3
  %3317 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 0
  store i32 %3313, i32* %3317, align 4
  %3318 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 1
  store i32 %3314, i32* %3318, align 4
  %3319 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 2
  store i32 %3315, i32* %3319, align 4
  %3320 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 3
  store i32 %3316, i32* %3320, align 4
  %3321 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i32 0, i32 %3310
  %3322 = load i32, i32* %3321, align 4, !tbaa !30
  %3323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3324 = extractvalue %dx.types.ResRet.i32 %3323, 0
  %3325 = lshr i32 %3324, 16
  %3326 = and i32 %3325, 31
  %3327 = shl i32 %2929, %3326
  %3328 = add i32 %3327, %2928
  %3329 = shl i32 %3328, 2
  %3330 = add i32 %3329, %3322
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = icmp eq i32 %3332, 0
  br i1 %3333, label %3667, label %3334, !dx.controlflow.hints !34

; <label>:3334                                    ; preds = %3305
  %3335 = icmp slt i32 %3332, 0
  br i1 %3335, label %3346, label %3336, !dx.controlflow.hints !35

; <label>:3336                                    ; preds = %3334
  %3337 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %3306
  %3338 = bitcast float* %3337 to i32*
  store i32 %3332, i32* %3338, align 4
  %3339 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %3306
  %3340 = bitcast float* %3339 to i32*
  store i32 %3332, i32* %3340, align 4
  %3341 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %3306
  %3342 = bitcast float* %3341 to i32*
  store i32 %2936, i32* %3342, align 4
  %3343 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %3306
  %3344 = bitcast float* %3343 to i32*
  store i32 %2937, i32* %3344, align 4
  %3345 = bitcast i32 %3332 to float
  br label %3660

; <label>:3346                                    ; preds = %3334
  %3347 = shl i32 1, %2927
  %3348 = add i32 %3347, -1
  %3349 = and i32 %3348, %2915
  %3350 = and i32 %3348, %2916
  %3351 = and i32 %3332, 1073741823
  %3352 = add i32 %3351, %3322
  %3353 = add i32 %3352, 4
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = lshr i32 %3355, 29
  %3357 = icmp eq i32 %3356, 0
  br i1 %3357, label %3569, label %3358, !dx.controlflow.hints !22

; <label>:3358                                    ; preds = %3346
  %3359 = icmp eq i32 %3356, 1
  br i1 %3359, label %3491, label %3360, !dx.controlflow.hints !23

; <label>:3360                                    ; preds = %3358
  %3361 = icmp eq i32 %3356, 2
  br i1 %3361, label %3362, label %3630, !dx.controlflow.hints !24

; <label>:3362                                    ; preds = %3360
  %3363 = and i32 %3355, 536870911
  %3364 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3363)  ; FirstbitHi(value)
  %3365 = icmp eq i32 %3364, -1
  %3366 = add i32 %3364, 1
  %3367 = call i32 @dx.op.unary.i32(i32 30, i32 %3349)  ; Bfrev(value)
  %3368 = and i32 %3366, 31
  %3369 = select i1 %3365, i32 1, i32 %3368
  %3370 = lshr i32 %3367, %3369
  %3371 = call i32 @dx.op.unary.i32(i32 30, i32 %3350)  ; Bfrev(value)
  %3372 = lshr i32 %3371, %3369
  %3373 = and i32 %3370, 1
  %3374 = shl i32 %3372, 1
  %3375 = and i32 %3374, 2
  %3376 = or i32 %3375, %3373
  %3377 = mul nuw nsw i32 %3376, 10
  %3378 = add i32 %3352, 32
  %3379 = add i32 %3378, %3377
  br label %3380

; <label>:3380                                    ; preds = %3391, %3362
  %3381 = phi i32 [ 3, %3362 ], [ %3412, %3391 ]
  %3382 = phi i32 [ %3370, %3362 ], [ %3392, %3391 ]
  %3383 = phi i32 [ %3372, %3362 ], [ %3393, %3391 ]
  %3384 = phi i32 [ %3379, %3362 ], [ %3426, %3391 ]
  %3385 = phi i32 [ 0, %3362 ], [ %3396, %3391 ]
  %3386 = phi i32 [ 0, %3362 ], [ %3387, %3391 ]
  %3387 = add nuw nsw i32 %3386, 1
  %3388 = icmp eq i32 %3381, 2
  %3389 = icmp ugt i32 %3387, 9
  %3390 = or i1 %3388, %3389
  br i1 %3390, label %3428, label %3391, !dx.controlflow.hints !25

; <label>:3391                                    ; preds = %3380
  %3392 = lshr i32 %3382, 1
  %3393 = lshr i32 %3383, 1
  %3394 = icmp eq i32 %3381, 3
  %3395 = add i32 %3384, 4
  %3396 = select i1 %3394, i32 %3395, i32 %3385
  %3397 = and i32 %3384, -4
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3397, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = extractvalue %dx.types.ResRet.i32 %3398, 1
  %3401 = and i32 %3384, 2
  %3402 = icmp ne i32 %3401, 0
  %3403 = lshr i32 %3399, 16
  %3404 = shl i32 %3400, 16
  %3405 = or i32 %3403, %3404
  %3406 = select i1 %3402, i32 %3405, i32 %3399
  %3407 = and i32 %3392, 1
  %3408 = and i32 %3383, 2
  %3409 = or i32 %3407, %3408
  %3410 = shl nuw nsw i32 %3409, 1
  %3411 = lshr i32 %3406, %3410
  %3412 = and i32 %3411, 3
  %3413 = lshr i32 %3406, 8
  %3414 = sub nsw i32 4, %3409
  %3415 = shl nuw nsw i32 %3414, 1
  %3416 = lshr i32 255, %3415
  %3417 = and i32 %3406, %3416
  %3418 = and i32 %3417, 85
  %3419 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3418)  ; Countbits(value)
  %3420 = shl i32 %3419, 2
  %3421 = and i32 %3417, 170
  %3422 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3421)  ; Countbits(value)
  %3423 = mul i32 %3422, 6
  %3424 = add i32 %3420, %3384
  %3425 = add i32 %3424, %3423
  %3426 = add i32 %3425, %3413
  %3427 = icmp eq i32 %3412, 0
  br i1 %3427, label %3428, label %3380

; <label>:3428                                    ; preds = %3391, %3380
  %3429 = phi i32 [ %3384, %3380 ], [ %3396, %3391 ]
  %3430 = and i32 %3429, -4
  %3431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3430, i32 undef)  ; BufferLoad(srv,index,wot)
  %3432 = extractvalue %dx.types.ResRet.i32 %3431, 0
  %3433 = extractvalue %dx.types.ResRet.i32 %3431, 1
  %3434 = and i32 %3429, 2
  %3435 = icmp ne i32 %3434, 0
  %3436 = lshr i32 %3432, 16
  %3437 = shl i32 %3433, 16
  %3438 = or i32 %3436, %3437
  %3439 = select i1 %3435, i32 %3438, i32 %3432
  %3440 = add i32 %3429, 4
  %3441 = and i32 %3440, -4
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3441, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = and i32 %3440, 2
  %3445 = icmp ne i32 %3444, 0
  %3446 = lshr i32 %3443, 16
  %3447 = and i32 %3443, 65535
  %3448 = select i1 %3445, i32 %3446, i32 %3447
  %3449 = and i32 %3439, 65535
  %3450 = lshr i32 %3439, 16
  %3451 = and i32 %3450, 16383
  %3452 = lshr i32 %3439, 30
  %3453 = uitofp i32 %3451 to float
  %3454 = fmul fast float %3453, 0x3F10004000000000
  %3455 = fsub fast float 1.000000e+00, %3454
  %3456 = uitofp i32 %3449 to float
  %3457 = fmul fast float %3456, 0x3EF0001000000000
  %3458 = uitofp i32 %3448 to float
  %3459 = fmul fast float %3458, 0x3F10001000000000
  %3460 = fadd fast float %3459, -2.000000e+00
  %3461 = fmul fast float %3457, %3457
  %3462 = fsub fast float 1.000000e+00, %3461
  %3463 = call float @dx.op.unary.f32(i32 24, float %3462)  ; Sqrt(value)
  %3464 = and i32 %3452, 1
  %3465 = icmp ne i32 %3464, 0
  %3466 = fsub fast float -0.000000e+00, %3454
  %3467 = select i1 %3465, float %3466, float %3454
  %3468 = and i32 %3452, 2
  %3469 = icmp ne i32 %3468, 0
  %3470 = fsub fast float -0.000000e+00, %3455
  %3471 = select i1 %3469, float %3470, float %3455
  %3472 = call float @dx.op.dot2.f32(i32 54, float %3467, float %3471, float %3467, float %3471)  ; Dot2(ax,ay,bx,by)
  %3473 = call float @dx.op.unary.f32(i32 25, float %3472)  ; Rsqrt(value)
  %3474 = fmul fast float %3473, %3463
  %3475 = fmul fast float %3474, %3467
  %3476 = fmul fast float %3474, %3471
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 12, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = lshr i32 %3478, 16
  %3480 = and i32 %3479, 31
  %3481 = shl i32 1, %3480
  %3482 = uitofp i32 %3481 to float
  %3483 = fmul fast float %3482, %2907
  %3484 = fmul fast float %3482, %2908
  %3485 = call float @dx.op.unary.f32(i32 22, float %3483)  ; Frc(value)
  %3486 = call float @dx.op.unary.f32(i32 22, float %3484)  ; Frc(value)
  %3487 = call float @dx.op.dot2.f32(i32 54, float %3475, float %3476, float %3485, float %3486)  ; Dot2(ax,ay,bx,by)
  %3488 = fsub fast float %3460, %3487
  %3489 = fdiv fast float %3488, %3457
  %3490 = call float @dx.op.unary.f32(i32 7, float %3489)  ; Saturate(value)
  br label %3630

; <label>:3491                                    ; preds = %3358
  %3492 = and i32 %3355, 536870911
  %3493 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3492)  ; FirstbitHi(value)
  %3494 = icmp eq i32 %3493, -1
  %3495 = add i32 %3493, 1
  %3496 = call i32 @dx.op.unary.i32(i32 30, i32 %3349)  ; Bfrev(value)
  %3497 = and i32 %3495, 31
  %3498 = select i1 %3494, i32 1, i32 %3497
  %3499 = lshr i32 %3496, %3498
  %3500 = call i32 @dx.op.unary.i32(i32 30, i32 %3350)  ; Bfrev(value)
  %3501 = lshr i32 %3500, %3498
  %3502 = and i32 %3499, 1
  %3503 = shl i32 %3501, 1
  %3504 = and i32 %3503, 2
  %3505 = or i32 %3504, %3502
  %3506 = shl nuw nsw i32 %3505, 3
  %3507 = or i32 %3506, 32
  %3508 = add i32 %3507, %3352
  br label %3509

; <label>:3509                                    ; preds = %3520, %3491
  %3510 = phi i32 [ 3, %3491 ], [ %3541, %3520 ]
  %3511 = phi i32 [ %3499, %3491 ], [ %3521, %3520 ]
  %3512 = phi i32 [ %3501, %3491 ], [ %3522, %3520 ]
  %3513 = phi i32 [ %3508, %3491 ], [ %3555, %3520 ]
  %3514 = phi i32 [ 0, %3491 ], [ %3525, %3520 ]
  %3515 = phi i32 [ 0, %3491 ], [ %3516, %3520 ]
  %3516 = add nuw nsw i32 %3515, 1
  %3517 = icmp eq i32 %3510, 2
  %3518 = icmp ugt i32 %3516, 9
  %3519 = or i1 %3517, %3518
  br i1 %3519, label %3557, label %3520, !dx.controlflow.hints !26

; <label>:3520                                    ; preds = %3509
  %3521 = lshr i32 %3511, 1
  %3522 = lshr i32 %3512, 1
  %3523 = icmp eq i32 %3510, 3
  %3524 = add i32 %3513, 4
  %3525 = select i1 %3523, i32 %3524, i32 %3514
  %3526 = and i32 %3513, -4
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = extractvalue %dx.types.ResRet.i32 %3527, 1
  %3530 = and i32 %3513, 2
  %3531 = icmp ne i32 %3530, 0
  %3532 = lshr i32 %3528, 16
  %3533 = shl i32 %3529, 16
  %3534 = or i32 %3532, %3533
  %3535 = select i1 %3531, i32 %3534, i32 %3528
  %3536 = and i32 %3521, 1
  %3537 = and i32 %3512, 2
  %3538 = or i32 %3536, %3537
  %3539 = shl nuw nsw i32 %3538, 1
  %3540 = lshr i32 %3535, %3539
  %3541 = and i32 %3540, 3
  %3542 = lshr i32 %3535, 8
  %3543 = sub nsw i32 4, %3538
  %3544 = shl nuw nsw i32 %3543, 1
  %3545 = lshr i32 255, %3544
  %3546 = and i32 %3535, %3545
  %3547 = and i32 %3546, 85
  %3548 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3547)  ; Countbits(value)
  %3549 = shl i32 %3548, 2
  %3550 = and i32 %3546, 170
  %3551 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3550)  ; Countbits(value)
  %3552 = shl i32 %3551, 1
  %3553 = add i32 %3549, %3513
  %3554 = add i32 %3553, %3552
  %3555 = add i32 %3554, %3542
  %3556 = icmp eq i32 %3541, 0
  br i1 %3556, label %3557, label %3509

; <label>:3557                                    ; preds = %3520, %3509
  %3558 = phi i32 [ %3513, %3509 ], [ %3525, %3520 ]
  %3559 = and i32 %3558, -4
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3558, 2
  %3563 = icmp ne i32 %3562, 0
  %3564 = lshr i32 %3561, 16
  %3565 = and i32 %3561, 65535
  %3566 = select i1 %3563, i32 %3564, i32 %3565
  %3567 = uitofp i32 %3566 to float
  %3568 = fmul fast float %3567, 0x3EF0001000000000
  br label %3630

; <label>:3569                                    ; preds = %3346
  %3570 = and i32 %3355, 536870911
  %3571 = call i32 @dx.op.unaryBits.i32(i32 33, i32 %3570)  ; FirstbitHi(value)
  %3572 = icmp eq i32 %3571, -1
  %3573 = add i32 %3571, 1
  %3574 = call i32 @dx.op.unary.i32(i32 30, i32 %3349)  ; Bfrev(value)
  %3575 = and i32 %3573, 31
  %3576 = select i1 %3572, i32 1, i32 %3575
  %3577 = lshr i32 %3574, %3576
  %3578 = call i32 @dx.op.unary.i32(i32 30, i32 %3350)  ; Bfrev(value)
  %3579 = lshr i32 %3578, %3576
  %3580 = and i32 %3577, 1
  %3581 = shl i32 %3579, 1
  %3582 = and i32 %3581, 2
  %3583 = or i32 %3582, %3580
  %3584 = mul nuw nsw i32 %3583, 12
  %3585 = add i32 %3352, 32
  %3586 = add i32 %3585, %3584
  br label %3587

; <label>:3587                                    ; preds = %3598, %3569
  %3588 = phi i32 [ 2, %3569 ], [ %3611, %3598 ]
  %3589 = phi i32 [ %3577, %3569 ], [ %3599, %3598 ]
  %3590 = phi i32 [ %3579, %3569 ], [ %3600, %3598 ]
  %3591 = phi i32 [ %3586, %3569 ], [ %3623, %3598 ]
  %3592 = phi i32 [ 0, %3569 ], [ %3603, %3598 ]
  %3593 = phi i32 [ 0, %3569 ], [ %3594, %3598 ]
  %3594 = add nuw nsw i32 %3593, 1
  %3595 = icmp eq i32 %3588, 3
  %3596 = icmp ugt i32 %3594, 9
  %3597 = or i1 %3595, %3596
  br i1 %3597, label %3625, label %3598, !dx.controlflow.hints !27

; <label>:3598                                    ; preds = %3587
  %3599 = lshr i32 %3589, 1
  %3600 = lshr i32 %3590, 1
  %3601 = icmp eq i32 %3588, 2
  %3602 = add i32 %3591, 4
  %3603 = select i1 %3601, i32 %3602, i32 %3592
  %3604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.i32 %3604, 0
  %3606 = and i32 %3599, 1
  %3607 = and i32 %3590, 2
  %3608 = or i32 %3606, %3607
  %3609 = shl nuw nsw i32 %3608, 1
  %3610 = lshr i32 %3605, %3609
  %3611 = and i32 %3610, 3
  %3612 = lshr i32 %3605, 8
  %3613 = sub nsw i32 4, %3608
  %3614 = shl nuw nsw i32 %3613, 1
  %3615 = lshr i32 255, %3614
  %3616 = and i32 %3605, %3615
  %3617 = lshr i32 %3616, 1
  %3618 = and i32 %3617, 85
  %3619 = xor i32 %3618, %3616
  %3620 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %3619)  ; Countbits(value)
  %3621 = shl i32 %3620, 2
  %3622 = add i32 %3621, %3591
  %3623 = add i32 %3622, %3612
  %3624 = icmp eq i32 %3611, 0
  br i1 %3624, label %3625, label %3587

; <label>:3625                                    ; preds = %3598, %3587
  %3626 = phi i32 [ %3591, %3587 ], [ %3603, %3598 ]
  %3627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3626, i32 undef)  ; BufferLoad(srv,index,wot)
  %3628 = extractvalue %dx.types.ResRet.i32 %3627, 0
  %3629 = bitcast i32 %3628 to float
  br label %3630

; <label>:3630                                    ; preds = %3625, %3557, %3428, %3360
  %3631 = phi float [ %3629, %3625 ], [ %3568, %3557 ], [ %3490, %3428 ], [ 0.000000e+00, %3360 ]
  %3632 = getelementptr inbounds [12 x float], [12 x float]* %11, i32 0, i32 %3306
  store float %3631, float* %3632, align 4
  %3633 = fcmp fast ogt float %3631, 0.000000e+00
  %3634 = add i32 %3352, 20
  br i1 %3633, label %3635, label %3650, !dx.controlflow.hints !28

; <label>:3635                                    ; preds = %3630
  %3636 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3637 = extractvalue %dx.types.ResRet.i32 %3636, 0
  %3638 = extractvalue %dx.types.ResRet.i32 %3636, 1
  %3639 = bitcast i32 %3637 to float
  %3640 = bitcast i32 %3638 to float
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 20, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = extractvalue %dx.types.ResRet.i32 %3641, 1
  %3644 = bitcast i32 %3642 to float
  %3645 = bitcast i32 %3643 to float
  %3646 = fdiv fast float %3631, %3640
  %3647 = fsub fast float %3646, %3639
  %3648 = fadd fast float %3647, %3644
  %3649 = fmul fast float %3648, %3645
  br label %3650

; <label>:3650                                    ; preds = %3635, %3630
  %3651 = phi float [ %3649, %3635 ], [ %3631, %3630 ]
  %3652 = getelementptr inbounds [12 x float], [12 x float]* %12, i32 0, i32 %3306
  store float %3651, float* %3652, align 4
  %3653 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.i32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.i32 %3653, 1
  %3656 = getelementptr inbounds [12 x float], [12 x float]* %13, i32 0, i32 %3306
  %3657 = bitcast float* %3656 to i32*
  store i32 %3654, i32* %3657, align 4
  %3658 = getelementptr inbounds [12 x float], [12 x float]* %14, i32 0, i32 %3306
  %3659 = bitcast float* %3658 to i32*
  store i32 %3655, i32* %3659, align 4
  br label %3660

; <label>:3660                                    ; preds = %3650, %3336
  %3661 = phi float [ %3651, %3650 ], [ %3345, %3336 ]
  %3662 = getelementptr [12 x float], [12 x float]* %12, i32 0, i32 %3307
  %3663 = load float, float* %3662, align 4
  %3664 = fcmp fast ogt float %3661, %3663
  %3665 = select i1 %3664, i32 %3306, i32 %3307
  %3666 = add i32 %3306, 1
  br label %3667

; <label>:3667                                    ; preds = %3660, %3305
  %3668 = phi i32 [ %3306, %3305 ], [ %3666, %3660 ]
  %3669 = phi i32 [ %3307, %3305 ], [ %3665, %3660 ]
  %3670 = add nuw i32 %3308, 1
  %3671 = icmp eq i32 %3670, %3302
  br i1 %3671, label %3672, label %3305

; <label>:3672                                    ; preds = %3667
  br label %3673

; <label>:3673                                    ; preds = %3672, %3297
  %3674 = phi i32 [ %3298, %3297 ], [ %3668, %3672 ]
  %3675 = phi i32 [ %3299, %3297 ], [ %3669, %3672 ]
  %3676 = icmp eq i32 %3674, 1
  br i1 %3676, label %3715, label %3677, !dx.controlflow.hints !36

; <label>:3677                                    ; preds = %3673
  %3678 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 0
  %3679 = load float, float* %3678, align 4
  %3680 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 0
  %3681 = load float, float* %3680, align 4
  %3682 = fdiv fast float 1.000000e+00, %3681
  %3683 = fsub fast float %3679, %3682
  %3684 = icmp ugt i32 %3674, 1
  br i1 %3684, label %3685, label %3701

; <label>:3685                                    ; preds = %3677
  br label %3686

; <label>:3686                                    ; preds = %3686, %3685
  %3687 = phi float [ %3696, %3686 ], [ %3683, %3685 ]
  %3688 = phi float [ %3697, %3686 ], [ %3679, %3685 ]
  %3689 = phi i32 [ %3698, %3686 ], [ 1, %3685 ]
  %3690 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %3689
  %3691 = load float, float* %3690, align 4
  %3692 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %3689
  %3693 = load float, float* %3692, align 4
  %3694 = fdiv fast float 1.000000e+00, %3693
  %3695 = fsub fast float %3691, %3694
  %3696 = call float @dx.op.binary.f32(i32 36, float %3687, float %3695)  ; FMin(a,b)
  %3697 = call float @dx.op.binary.f32(i32 35, float %3688, float %3691)  ; FMax(a,b)
  %3698 = add nuw i32 %3689, 1
  %3699 = icmp eq i32 %3698, %3674
  br i1 %3699, label %3700, label %3686

; <label>:3700                                    ; preds = %3686
  br label %3701

; <label>:3701                                    ; preds = %3700, %3677
  %3702 = phi float [ %3683, %3677 ], [ %3696, %3700 ]
  %3703 = phi float [ %3679, %3677 ], [ %3697, %3700 ]
  %3704 = getelementptr [12 x float], [12 x float]* %11, i32 0, i32 %3675
  %3705 = getelementptr [12 x float], [12 x float]* %13, i32 0, i32 %3675
  %3706 = getelementptr [12 x float], [12 x float]* %14, i32 0, i32 %3675
  %3707 = load float, float* %3704, align 4
  %3708 = load float, float* %3705, align 4
  %3709 = load float, float* %3706, align 4
  %3710 = fdiv fast float %3707, %3709
  %3711 = fsub fast float %3703, %3708
  %3712 = fadd fast float %3711, %3710
  %3713 = fsub fast float %3703, %3702
  %3714 = fdiv fast float %3712, %3713
  br label %3718

; <label>:3715                                    ; preds = %3673
  %3716 = getelementptr [12 x float], [12 x float]* %11, i32 0, i32 0
  %3717 = load float, float* %3716, align 4
  br label %3718

; <label>:3718                                    ; preds = %3715, %3701, %2884
  %3719 = phi float [ %3717, %3715 ], [ %3714, %3701 ], [ 0.000000e+00, %2884 ]
  %3720 = fmul fast float %3719, 2.000000e+00
  %3721 = fsub fast float 1.000000e+00, %3720
  %3722 = fmul fast float %3721, %3721
  %3723 = fmul fast float %3722, %3721
  %3724 = fmul fast float %3722, %3722
  %3725 = add i32 %2890, 1
  %3726 = uitofp i32 %3725 to float
  %3727 = fdiv fast float 1.000000e+00, %3726
  %3728 = fmul fast float %3719, 3.000000e+00
  %3729 = fsub fast float 1.500000e+00, %3728
  %3730 = call float @dx.op.tertiary.f32(i32 46, float -2.000000e+00, float %3723, float %3729)  ; FMad(a,b,c)
  %3731 = call float @dx.op.tertiary.f32(i32 46, float 4.000000e+00, float %3722, float 0.000000e+00)  ; FMad(a,b,c)
  %3732 = call float @dx.op.tertiary.f32(i32 46, float -4.000000e+00, float %3724, float %3731)  ; FMad(a,b,c)
  %3733 = fmul fast float %3719, 0x3FFBB67AE0000000
  %3734 = fsub fast float 0x3FEBB67AE0000000, %3733
  %3735 = call float @dx.op.tertiary.f32(i32 46, float 0xBFD8A23460000000, float %3723, float %3734)  ; FMad(a,b,c)
  %3736 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3722, float 0.000000e+00)  ; FMad(a,b,c)
  %3737 = call float @dx.op.tertiary.f32(i32 46, float 5.000000e-01, float %3724, float %3736)  ; FMad(a,b,c)
  %3738 = fsub fast float 5.000000e-01, %2885
  %3739 = fadd fast float %3738, %3730
  %3740 = fsub fast float %3732, %2886
  %3741 = fsub fast float 5.000000e-01, %2887
  %3742 = fadd fast float %3741, %3735
  %3743 = fsub fast float %3737, %2888
  %3744 = fmul fast float %3739, %3727
  %3745 = fmul fast float %3740, %3727
  %3746 = fmul fast float %3742, %3727
  %3747 = fmul fast float %3743, %3727
  %3748 = fadd fast float %3744, %2885
  %3749 = fadd fast float %3745, %2886
  %3750 = fadd fast float %3746, %2887
  %3751 = fadd fast float %3747, %2888
  %3752 = add nuw i32 %2889, 1
  %3753 = icmp eq i32 %3752, %2847
  br i1 %3753, label %3754, label %2884, !llvm.loop !37

; <label>:3754                                    ; preds = %3718
  br label %3755

; <label>:3755                                    ; preds = %3754, %2850
  %3756 = phi float [ %2878, %2850 ], [ %3748, %3754 ]
  %3757 = phi float [ %2879, %2850 ], [ %3749, %3754 ]
  %3758 = phi float [ %2880, %2850 ], [ %3750, %3754 ]
  %3759 = phi float [ %2881, %2850 ], [ %3751, %3754 ]
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %22, i32 %23, i32 3, float %3756, float %3757, float %3758, float %3759, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3760

; <label>:3760                                    ; preds = %3755, %2837, %2832, %1904, %976, %0
  %3761 = phi i32 [ %25, %0 ], [ %977, %976 ], [ %1905, %1904 ], [ %2833, %2832 ], [ %2833, %2837 ], [ %2855, %3755 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %3762 = icmp eq i32 %10, 0
  br i1 %3762, label %3763, label %3764, !dx.controlflow.hints !39

; <label>:3763                                    ; preds = %3760
  call void @dx.op.textureStore.i32(i32 67, %dx.types.Handle %1, i32 %18, i32 %19, i32 undef, i32 %3761, i32 %3761, i32 %3761, i32 %3761, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %3764

; <label>:3764                                    ; preds = %3763, %3760
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot2.f32(i32, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.textureStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unary.i32(i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }
attributes #3 = { noduplicate nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!15}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !13, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!8 = !{!9, !11}
!9 = !{i32 0, %"class.RWTexture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !10}
!10 = !{i32 0, i32 14}
!11 = !{i32 1, %"class.RWTexture2D<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 2, i1 false, i1 false, i1 false, !12}
!12 = !{i32 0, i32 5}
!13 = !{!14}
!14 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!15 = !{void ()* @cs_update_msm_prepassed, !"cs_update_msm_prepassed", null, !4, !16}
!16 = !{i32 0, i64 8464, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 1}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = !{!31, !31, i64 0}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

