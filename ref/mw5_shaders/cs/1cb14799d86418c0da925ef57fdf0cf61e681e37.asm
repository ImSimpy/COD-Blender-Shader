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
; shader hash: 2e3d0490e42a8e0356885f86770a296a
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
;   [144 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s2     1
;                                   texture     f32          1d      T0             t0     8
;                                       UAV     f32          1d      U0             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture1D<float>" = type { float, %"class.Texture1D<float>::mips_type" }
%"class.Texture1D<float>::mips_type" = type { i32 }
%"class.RWTexture1D<float>" = type { float }
%fogSplineBlend_cbuffer = type { %struct.R_FogSplineBlend_CSParams }
%struct.R_FogSplineBlend_CSParams = type { i32, float, float, float, [8 x <4 x float>] }
%struct.SamplerState = type { i32 }

define void @cs_blend_fog_splines() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %5 = uitofp i32 %4 to float
  %6 = fmul fast float %5, 0x3F80204080000000
  %7 = fsub fast float 1.000000e+00, %6
  %8 = call float @dx.op.unary.f32(i32 24, float %7)  ; Sqrt(value)
  %9 = fsub fast float 1.000000e+00, %8
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 2
  %12 = fmul fast float %11, %9
  %13 = extractvalue %dx.types.CBufRet.f32 %10, 3
  %14 = fadd fast float %12, %13
  %15 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %16 = extractvalue %dx.types.CBufRet.i32 %15, 0
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %214, label %18, !dx.controlflow.hints !17

; <label>:18                                      ; preds = %0
  %19 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.f32 %19, 1
  %21 = extractvalue %dx.types.CBufRet.f32 %19, 2
  %22 = extractvalue %dx.types.CBufRet.f32 %19, 3
  %23 = fmul fast float %21, %14
  %24 = fadd fast float %23, %22
  %25 = call float @dx.op.unary.f32(i32 7, float %24)  ; Saturate(value)
  %26 = fsub fast float 2.000000e+00, %25
  %27 = fmul fast float %25, 9.921875e-01
  %28 = fmul fast float %27, %26
  %29 = fadd fast float %28, 3.906250e-03
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %2, float %29, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %32 = extractvalue %dx.types.ResRet.f32 %31, 0
  %33 = fsub fast float %24, %32
  %34 = fmul fast float %33, %20
  %35 = fsub fast float %12, %34
  %36 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %37 = extractvalue %dx.types.CBufRet.f32 %36, 0
  %38 = fmul fast float %35, %37
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 0
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %214, label %42, !dx.controlflow.hints !17

; <label>:42                                      ; preds = %18
  %43 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %44 = extractvalue %dx.types.CBufRet.f32 %43, 1
  %45 = extractvalue %dx.types.CBufRet.f32 %43, 2
  %46 = extractvalue %dx.types.CBufRet.f32 %43, 3
  %47 = fmul fast float %45, %14
  %48 = fadd fast float %47, %46
  %49 = call float @dx.op.unary.f32(i32 7, float %48)  ; Saturate(value)
  %50 = fsub fast float 2.000000e+00, %49
  %51 = fmul fast float %49, 9.921875e-01
  %52 = fmul fast float %51, %50
  %53 = fadd fast float %52, 3.906250e-03
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %54, %dx.types.Handle %2, float %53, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %56 = extractvalue %dx.types.ResRet.f32 %55, 0
  %57 = fsub fast float %48, %56
  %58 = fmul fast float %57, %44
  %59 = fsub fast float %12, %58
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = fmul fast float %59, %61
  %63 = fadd fast float %62, %38
  %64 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.i32 %64, 0
  %66 = icmp ult i32 %65, 3
  br i1 %66, label %214, label %67, !dx.controlflow.hints !17

; <label>:67                                      ; preds = %42
  %68 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %69 = extractvalue %dx.types.CBufRet.f32 %68, 1
  %70 = extractvalue %dx.types.CBufRet.f32 %68, 2
  %71 = extractvalue %dx.types.CBufRet.f32 %68, 3
  %72 = fmul fast float %70, %14
  %73 = fadd fast float %72, %71
  %74 = call float @dx.op.unary.f32(i32 7, float %73)  ; Saturate(value)
  %75 = fsub fast float 2.000000e+00, %74
  %76 = fmul fast float %74, 9.921875e-01
  %77 = fmul fast float %76, %75
  %78 = fadd fast float %77, 3.906250e-03
  %79 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %80 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %79, %dx.types.Handle %2, float %78, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %81 = extractvalue %dx.types.ResRet.f32 %80, 0
  %82 = fsub fast float %73, %81
  %83 = fmul fast float %82, %69
  %84 = fsub fast float %12, %83
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 0
  %87 = fmul fast float %84, %86
  %88 = fadd fast float %87, %63
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 0
  %91 = icmp ult i32 %90, 4
  br i1 %91, label %214, label %92, !dx.controlflow.hints !17

; <label>:92                                      ; preds = %67
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 3
  %97 = fmul fast float %95, %14
  %98 = fadd fast float %97, %96
  %99 = call float @dx.op.unary.f32(i32 7, float %98)  ; Saturate(value)
  %100 = fsub fast float 2.000000e+00, %99
  %101 = fmul fast float %99, 9.921875e-01
  %102 = fmul fast float %101, %100
  %103 = fadd fast float %102, 3.906250e-03
  %104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %104, %dx.types.Handle %2, float %103, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %106 = extractvalue %dx.types.ResRet.f32 %105, 0
  %107 = fsub fast float %98, %106
  %108 = fmul fast float %107, %94
  %109 = fsub fast float %12, %108
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = fmul fast float %109, %111
  %113 = fadd fast float %112, %88
  %114 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %115 = extractvalue %dx.types.CBufRet.i32 %114, 0
  %116 = icmp ult i32 %115, 5
  br i1 %116, label %214, label %117, !dx.controlflow.hints !17

; <label>:117                                     ; preds = %92
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 3
  %122 = fmul fast float %120, %14
  %123 = fadd fast float %122, %121
  %124 = call float @dx.op.unary.f32(i32 7, float %123)  ; Saturate(value)
  %125 = fsub fast float 2.000000e+00, %124
  %126 = fmul fast float %124, 9.921875e-01
  %127 = fmul fast float %126, %125
  %128 = fadd fast float %127, 3.906250e-03
  %129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %129, %dx.types.Handle %2, float %128, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %131 = extractvalue %dx.types.ResRet.f32 %130, 0
  %132 = fsub fast float %123, %131
  %133 = fmul fast float %132, %119
  %134 = fsub fast float %12, %133
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = fmul fast float %134, %136
  %138 = fadd fast float %137, %113
  %139 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %140 = extractvalue %dx.types.CBufRet.i32 %139, 0
  %141 = icmp ult i32 %140, 6
  br i1 %141, label %214, label %142, !dx.controlflow.hints !17

; <label>:142                                     ; preds = %117
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %147 = fmul fast float %145, %14
  %148 = fadd fast float %147, %146
  %149 = call float @dx.op.unary.f32(i32 7, float %148)  ; Saturate(value)
  %150 = fsub fast float 2.000000e+00, %149
  %151 = fmul fast float %149, 9.921875e-01
  %152 = fmul fast float %151, %150
  %153 = fadd fast float %152, 3.906250e-03
  %154 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %154, %dx.types.Handle %2, float %153, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = fsub fast float %148, %156
  %158 = fmul fast float %157, %144
  %159 = fsub fast float %12, %158
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.f32 %160, 0
  %162 = fmul fast float %159, %161
  %163 = fadd fast float %162, %138
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 0
  %166 = icmp ult i32 %165, 7
  br i1 %166, label %214, label %167, !dx.controlflow.hints !17

; <label>:167                                     ; preds = %142
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 1
  %170 = extractvalue %dx.types.CBufRet.f32 %168, 2
  %171 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %172 = fmul fast float %170, %14
  %173 = fadd fast float %172, %171
  %174 = call float @dx.op.unary.f32(i32 7, float %173)  ; Saturate(value)
  %175 = fsub fast float 2.000000e+00, %174
  %176 = fmul fast float %174, 9.921875e-01
  %177 = fmul fast float %176, %175
  %178 = fadd fast float %177, 3.906250e-03
  %179 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %180 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %179, %dx.types.Handle %2, float %178, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %181 = extractvalue %dx.types.ResRet.f32 %180, 0
  %182 = fsub fast float %173, %181
  %183 = fmul fast float %182, %169
  %184 = fsub fast float %12, %183
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = fmul fast float %184, %186
  %188 = fadd fast float %187, %163
  %189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.i32 %189, 0
  %191 = icmp ult i32 %190, 8
  br i1 %191, label %214, label %192, !dx.controlflow.hints !17

; <label>:192                                     ; preds = %167
  %193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %194 = extractvalue %dx.types.CBufRet.f32 %193, 1
  %195 = extractvalue %dx.types.CBufRet.f32 %193, 2
  %196 = extractvalue %dx.types.CBufRet.f32 %193, 3
  %197 = fmul fast float %195, %14
  %198 = fadd fast float %197, %196
  %199 = call float @dx.op.unary.f32(i32 7, float %198)  ; Saturate(value)
  %200 = fsub fast float 2.000000e+00, %199
  %201 = fmul fast float %199, 9.921875e-01
  %202 = fmul fast float %201, %200
  %203 = fadd fast float %202, 3.906250e-03
  %204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 7, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %204, %dx.types.Handle %2, float %203, float undef, float undef, float undef, i32 0, i32 undef, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %206 = extractvalue %dx.types.ResRet.f32 %205, 0
  %207 = fsub fast float %198, %206
  %208 = fmul fast float %207, %194
  %209 = fsub fast float %12, %208
  %210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %211 = extractvalue %dx.types.CBufRet.f32 %210, 0
  %212 = fmul fast float %209, %211
  %213 = fadd fast float %212, %188
  br label %214

; <label>:214                                     ; preds = %192, %167, %142, %117, %92, %67, %42, %18, %0
  %215 = phi float [ 0.000000e+00, %0 ], [ %38, %18 ], [ %63, %42 ], [ %88, %67 ], [ %113, %92 ], [ %138, %117 ], [ %163, %142 ], [ %213, %192 ], [ %188, %167 ]
  %216 = icmp eq i32 %4, 0
  %217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %3, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %218 = extractvalue %dx.types.CBufRet.f32 %217, 1
  %219 = fmul fast float %218, %215
  %220 = select i1 %216, float 0.000000e+00, float %219
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %4, i32 undef, i32 undef, float %220, float %220, float %220, float %220, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !8, !10, !12}
!5 = !{!6}
!6 = !{i32 0, [8 x %"class.Texture1D<float>"]* undef, !"", i32 0, i32 0, i32 8, i32 1, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{!9}
!9 = !{i32 0, %"class.RWTexture1D<float>"* undef, !"", i32 0, i32 0, i32 1, i32 1, i1 false, i1 false, i1 false, !7}
!10 = !{!11}
!11 = !{i32 0, %fogSplineBlend_cbuffer* undef, !"", i32 0, i32 0, i32 1, i32 144, null}
!12 = !{!13}
!13 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!14 = !{void ()* @cs_blend_fog_splines, !"cs_blend_fog_splines", null, !4, !15}
!15 = !{i32 0, i64 256, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}

