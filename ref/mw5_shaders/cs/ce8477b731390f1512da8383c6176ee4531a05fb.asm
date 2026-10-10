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
; shader hash: c43e0b0f5665440eb9cedd53a939f5eb
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
;   [32 x i8] (type annotation not present)
;
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   sampler      NA          NA      S0             s4     1
;                                   texture     f32        cube      T0             t1     1
;                                   texture    byte         r/o      T1             t2     1
;                                       UAV     f32     2darray      U0             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.TextureCube<vector<float, 4> >" = type { <4 x float> }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%ReflectionProbeFilteringComputeConstants = type { i32, i32, i32, i32, i32, float, float, float }
%struct.SamplerState = type { i32 }

define void @cs_reflection_probe_filtering_octahedron_importance_sample() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %8 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %9 = extractvalue %dx.types.Dimensions %8, 0
  %10 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.f32 %10, 3
  %12 = uitofp i32 %9 to float
  %13 = fdiv fast float 1.000000e+00, %12
  %14 = uitofp i32 %6 to float
  %15 = uitofp i32 %7 to float
  %16 = fadd fast float %14, 5.000000e-01
  %17 = fadd fast float %15, 5.000000e-01
  %18 = fmul fast float %13, %16
  %19 = fmul fast float %13, %17
  %20 = fptosi float %11 to i32
  %21 = add nsw i32 %20, -3
  %22 = call i32 @dx.op.binary.i32(i32 37, i32 %21, i32 0)  ; IMax(a,b)
  %23 = and i32 %22, 31
  %24 = lshr i32 4, %23
  %25 = sitofp i32 %24 to float
  %26 = fmul fast float %25, 2.000000e+00
  %27 = fsub fast float %12, %26
  %28 = fdiv fast float %12, %27
  %29 = fadd fast float %18, -5.000000e-01
  %30 = fmul fast float %28, %29
  %31 = fadd fast float %19, -5.000000e-01
  %32 = fmul fast float %28, %31
  %33 = fadd fast float %30, 5.000000e-01
  %34 = fadd fast float %32, 5.000000e-01
  %35 = call float @dx.op.unary.f32(i32 7, float %33)  ; Saturate(value)
  %36 = fcmp fast une float %35, %33
  %37 = call float @dx.op.unary.f32(i32 7, float %34)  ; Saturate(value)
  %38 = fcmp fast une float %37, %34
  %39 = or i1 %36, %38
  %40 = and i1 %36, %38
  %41 = fadd fast float %30, 1.500000e+00
  %42 = fadd fast float %32, 1.500000e+00
  %43 = call float @dx.op.unary.f32(i32 27, float %41)  ; Round_ni(value)
  %44 = call float @dx.op.unary.f32(i32 27, float %42)  ; Round_ni(value)
  %45 = fsub fast float %43, %33
  %46 = fsub fast float %44, %34
  %47 = select i1 %39, float %45, float %33
  %48 = select i1 %39, float %46, float %34
  %49 = call float @dx.op.unary.f32(i32 22, float %41)  ; Frc(value)
  %50 = call float @dx.op.unary.f32(i32 22, float %42)  ; Frc(value)
  %51 = select i1 %40, float %49, float %47
  %52 = select i1 %40, float %50, float %48
  %53 = fmul fast float %51, 2.000000e+00
  %54 = fmul fast float %52, 2.000000e+00
  %55 = fadd fast float %53, -1.000000e+00
  %56 = fadd fast float %54, -1.000000e+00
  %57 = call float @dx.op.unary.f32(i32 6, float %55)  ; FAbs(value)
  %58 = fsub fast float 1.000000e+00, %57
  %59 = call float @dx.op.unary.f32(i32 6, float %56)  ; FAbs(value)
  %60 = fsub fast float %58, %59
  %61 = fsub fast float 1.000000e+00, %59
  %62 = fcmp fast oge float %55, 0.000000e+00
  %63 = fcmp fast oge float %56, 0.000000e+00
  %64 = select i1 %62, float 1.000000e+00, float -1.000000e+00
  %65 = select i1 %63, float 1.000000e+00, float -1.000000e+00
  %66 = fcmp fast olt float %60, 0.000000e+00
  %67 = fmul fast float %61, %64
  %68 = fmul fast float %58, %65
  %69 = select i1 %66, float %67, float %55
  %70 = select i1 %66, float %68, float %56
  %71 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %60, float %69, float %70, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %72 = call float @dx.op.unary.f32(i32 25, float %71)  ; Rsqrt(value)
  %73 = fmul fast float %69, %72
  %74 = fmul fast float %70, %72
  %75 = fmul fast float %72, %60
  %76 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.i32 %76, 2
  %78 = extractvalue %dx.types.CBufRet.f32 %10, 1
  %79 = fsub fast float 1.000000e+00, %78
  %80 = call float @dx.op.binary.f32(i32 35, float %79, float 0x3F847AE140000000)  ; FMax(a,b)
  %81 = fmul fast float %80, %80
  %82 = fmul fast float %81, %81
  %83 = extractvalue %dx.types.CBufRet.i32 %76, 3
  %84 = uitofp i32 %77 to float
  %85 = fmul fast float %84, %84
  %86 = uitofp i32 %83 to float
  %87 = icmp eq i32 %83, 0
  br i1 %87, label %229, label %88

; <label>:88                                      ; preds = %0
  br label %89

; <label>:89                                      ; preds = %172, %88
  %90 = phi float [ %222, %172 ], [ 0.000000e+00, %88 ]
  %91 = phi float [ %223, %172 ], [ 0.000000e+00, %88 ]
  %92 = phi float [ %224, %172 ], [ 0.000000e+00, %88 ]
  %93 = phi float [ %225, %172 ], [ 0.000000e+00, %88 ]
  %94 = phi i32 [ %226, %172 ], [ 0, %88 ]
  %95 = uitofp i32 %94 to float
  %96 = shl i32 %94, 16
  %97 = lshr i32 %94, 16
  %98 = or i32 %96, %97
  %99 = shl i32 %98, 1
  %100 = and i32 %99, -1431655766
  %101 = lshr i32 %98, 1
  %102 = and i32 %101, 1431655765
  %103 = or i32 %100, %102
  %104 = shl i32 %103, 2
  %105 = and i32 %104, -858993460
  %106 = lshr i32 %103, 2
  %107 = and i32 %106, 858993459
  %108 = or i32 %105, %107
  %109 = shl i32 %108, 4
  %110 = and i32 %109, -252645136
  %111 = lshr i32 %108, 4
  %112 = and i32 %111, 252645135
  %113 = or i32 %110, %112
  %114 = shl i32 %113, 8
  %115 = and i32 %114, -16711936
  %116 = lshr i32 %113, 8
  %117 = and i32 %116, 16711935
  %118 = or i32 %115, %117
  %119 = uitofp i32 %118 to float
  %120 = fmul fast float %119, 0x3DF0000000000000
  %121 = fsub fast float 1.000000e+00, %120
  %122 = fadd fast float %82, -1.000000e+00
  %123 = fmul fast float %120, %122
  %124 = fadd fast float %123, 1.000000e+00
  %125 = fdiv fast float %121, %124
  %126 = call float @dx.op.unary.f32(i32 24, float %125)  ; Sqrt(value)
  %127 = call float @dx.op.unary.f32(i32 15, float %126)  ; Acos(value)
  %128 = fdiv fast float 0x401921FB60000000, %86
  %129 = fmul fast float %128, %95
  %130 = call float @dx.op.unary.f32(i32 13, float %127)  ; Sin(value)
  %131 = call float @dx.op.unary.f32(i32 12, float %129)  ; Cos(value)
  %132 = fmul fast float %131, %130
  %133 = call float @dx.op.unary.f32(i32 13, float %129)  ; Sin(value)
  %134 = fmul fast float %133, %130
  %135 = call float @dx.op.unary.f32(i32 12, float %127)  ; Cos(value)
  %136 = call float @dx.op.unary.f32(i32 6, float %74)  ; FAbs(value)
  %137 = fcmp fast olt float %136, 0x3FEFF7CEE0000000
  %138 = fsub fast float -0.000000e+00, %74
  %139 = fsub fast float -0.000000e+00, %75
  br i1 %137, label %140, label %156, !dx.controlflow.hints !18

; <label>:140                                     ; preds = %89
  %141 = call float @dx.op.dot3.f32(i32 55, float %139, float 0.000000e+00, float %73, float %139, float 0.000000e+00, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %142 = call float @dx.op.unary.f32(i32 25, float %141)  ; Rsqrt(value)
  %143 = fmul fast float %142, %139
  %144 = fmul fast float %142, %73
  %145 = fmul fast float %74, %144
  %146 = fsub fast float -0.000000e+00, %145
  %147 = fmul fast float %144, %73
  %148 = fmul fast float %143, %75
  %149 = fsub fast float %147, %148
  %150 = fmul fast float %143, %74
  %151 = call float @dx.op.dot3.f32(i32 55, float %146, float %149, float %150, float %146, float %149, float %150)  ; Dot3(ax,ay,az,bx,by,bz)
  %152 = call float @dx.op.unary.f32(i32 25, float %151)  ; Rsqrt(value)
  %153 = fmul fast float %152, %146
  %154 = fmul fast float %149, %152
  %155 = fmul fast float %150, %152
  br label %172

; <label>:156                                     ; preds = %89
  %157 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float %75, float %138, float 0.000000e+00, float %75, float %138)  ; Dot3(ax,ay,az,bx,by,bz)
  %158 = call float @dx.op.unary.f32(i32 25, float %157)  ; Rsqrt(value)
  %159 = fmul fast float %158, %75
  %160 = fmul fast float %158, %138
  %161 = fmul fast float %159, %75
  %162 = fmul fast float %160, %74
  %163 = fsub fast float %161, %162
  %164 = fmul fast float %160, %73
  %165 = fmul fast float %73, %159
  %166 = fsub fast float -0.000000e+00, %165
  %167 = call float @dx.op.dot3.f32(i32 55, float %163, float %164, float %166, float %163, float %164, float %166)  ; Dot3(ax,ay,az,bx,by,bz)
  %168 = call float @dx.op.unary.f32(i32 25, float %167)  ; Rsqrt(value)
  %169 = fmul fast float %163, %168
  %170 = fmul fast float %164, %168
  %171 = fmul fast float %168, %166
  br label %172

; <label>:172                                     ; preds = %156, %140
  %173 = phi float [ %143, %140 ], [ 0.000000e+00, %156 ]
  %174 = phi float [ %153, %140 ], [ %169, %156 ]
  %175 = phi float [ 0.000000e+00, %140 ], [ %159, %156 ]
  %176 = phi float [ %154, %140 ], [ %170, %156 ]
  %177 = phi float [ %144, %140 ], [ %160, %156 ]
  %178 = phi float [ %155, %140 ], [ %171, %156 ]
  %179 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %180 = call float @dx.op.unary.f32(i32 25, float %179)  ; Rsqrt(value)
  %181 = fmul fast float %180, %73
  %182 = fmul fast float %180, %74
  %183 = fmul fast float %180, %75
  %184 = fmul fast float %173, %132
  %185 = call float @dx.op.tertiary.f32(i32 46, float %134, float %174, float %184)  ; FMad(a,b,c)
  %186 = call float @dx.op.tertiary.f32(i32 46, float %135, float %181, float %185)  ; FMad(a,b,c)
  %187 = fmul fast float %175, %132
  %188 = call float @dx.op.tertiary.f32(i32 46, float %134, float %176, float %187)  ; FMad(a,b,c)
  %189 = call float @dx.op.tertiary.f32(i32 46, float %135, float %182, float %188)  ; FMad(a,b,c)
  %190 = fmul fast float %177, %132
  %191 = call float @dx.op.tertiary.f32(i32 46, float %134, float %178, float %190)  ; FMad(a,b,c)
  %192 = call float @dx.op.tertiary.f32(i32 46, float %135, float %183, float %191)  ; FMad(a,b,c)
  %193 = fsub fast float -0.000000e+00, %73
  %194 = call float @dx.op.dot3.f32(i32 55, float %193, float %138, float %139, float %186, float %189, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %195 = fmul fast float %194, 2.000000e+00
  %196 = fmul fast float %195, %186
  %197 = fmul fast float %195, %189
  %198 = fmul fast float %195, %192
  %199 = fsub fast float %193, %196
  %200 = fsub fast float %138, %197
  %201 = fsub fast float %139, %198
  %202 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float %186, float %189, float %192)  ; Dot3(ax,ay,az,bx,by,bz)
  %203 = call float @dx.op.unary.f32(i32 7, float %202)  ; Saturate(value)
  %204 = fmul fast float %203, %203
  %205 = fmul fast float %204, %122
  %206 = fadd fast float %205, 1.000000e+00
  %207 = fmul fast float %206, %206
  %208 = fdiv fast float %82, %207
  %209 = fmul fast float %86, 0x3FB45F3060000000
  %210 = fmul fast float %209, %208
  %211 = fdiv fast float 1.000000e+00, %210
  %212 = fmul fast float %85, %211
  %213 = call float @dx.op.unary.f32(i32 23, float %212)  ; Log(value)
  %214 = fmul fast float %213, 5.000000e-01
  %215 = fadd fast float %214, -5.000000e-01
  %216 = call float @dx.op.binary.f32(i32 35, float %215, float 0.000000e+00)  ; FMax(a,b)
  %217 = call float @dx.op.binary.f32(i32 36, float %216, float 5.000000e+00)  ; FMin(a,b)
  %218 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %4, float %199, float %200, float %201, float undef, i32 undef, i32 undef, i32 undef, float %217)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %219 = extractvalue %dx.types.ResRet.f32 %218, 0
  %220 = extractvalue %dx.types.ResRet.f32 %218, 1
  %221 = extractvalue %dx.types.ResRet.f32 %218, 2
  %222 = fadd fast float %219, %90
  %223 = fadd fast float %220, %91
  %224 = fadd fast float %221, %92
  %225 = fadd fast float %93, 1.000000e+00
  %226 = add nuw i32 %94, 1
  %227 = icmp eq i32 %226, %83
  br i1 %227, label %228, label %89

; <label>:228                                     ; preds = %172
  br label %229

; <label>:229                                     ; preds = %228, %0
  %230 = phi float [ 0.000000e+00, %0 ], [ %222, %228 ]
  %231 = phi float [ 0.000000e+00, %0 ], [ %223, %228 ]
  %232 = phi float [ 0.000000e+00, %0 ], [ %224, %228 ]
  %233 = phi float [ 0.000000e+00, %0 ], [ %225, %228 ]
  %234 = fcmp fast ogt float %233, 0.000000e+00
  %235 = fdiv fast float 1.000000e+00, %233
  %236 = select i1 %234, float %235, float 1.000000e+00
  %237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %238 = extractvalue %dx.types.CBufRet.i32 %237, 0
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %248, label %240, !dx.controlflow.hints !19

; <label>:240                                     ; preds = %229
  %241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.f32 %241, 0
  %243 = fmul fast float %242, 0x3FD20DD760000000
  %244 = extractvalue %dx.types.CBufRet.f32 %10, 2
  %245 = call float @dx.op.binary.f32(i32 35, float %243, float %244)  ; FMax(a,b)
  %246 = fdiv fast float 1.000000e+00, %245
  %247 = fmul fast float %246, %236
  br label %248

; <label>:248                                     ; preds = %240, %229
  %249 = phi float [ %247, %240 ], [ %236, %229 ]
  %250 = fmul fast float %249, %230
  %251 = fmul fast float %249, %231
  %252 = fmul fast float %249, %232
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %6, i32 %7, i32 0, float %250, float %251, float %252, float %250, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #2

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { nounwind readonly }

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
!4 = !{!5, !9, !11, !13}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.TextureCube<vector<float, 4> >"* undef, !"", i32 0, i32 1, i32 1, i32 5, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %ReflectionProbeFilteringComputeConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{!14}
!14 = !{i32 0, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!15 = !{void ()* @cs_reflection_probe_filtering_octahedron_importance_sample, !"cs_reflection_probe_filtering_octahedron_importance_sample", null, !4, !16}
!16 = !{i32 0, i64 272, i32 4, !17}
!17 = !{i32 8, i32 8, i32 1}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

