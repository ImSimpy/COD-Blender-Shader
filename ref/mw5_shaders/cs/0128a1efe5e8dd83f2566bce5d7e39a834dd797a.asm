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
; shader hash: cc6a2552b56e245655b4f0a61ccf372d
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
;                                   texture     f32     2darray      T0             t0     1
;                                   texture    byte         r/o      T1             t2     1
;                                       UAV     f32     2darray      U0             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.Dimensions = type { i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Texture2DArray<vector<float, 4> >" = type { <4 x float>, %"class.Texture2DArray<vector<float, 4> >::mips_type" }
%"class.Texture2DArray<vector<float, 4> >::mips_type" = type { i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%ReflectionProbeFilteringComputeConstants = type { i32, i32, i32, i32, i32, float, float, float }

define void @cs_reflection_probe_filtering_brute_force() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %6 = call i32 @dx.op.threadId.i32(i32 93, i32 1)  ; ThreadId(component)
  %7 = call i32 @dx.op.threadId.i32(i32 93, i32 2)  ; ThreadId(component)
  %8 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1, i32 0)  ; GetDimensions(handle,mipLevel)
  %9 = extractvalue %dx.types.Dimensions %8, 0
  %10 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %11 = extractvalue %dx.types.CBufRet.i32 %10, 0
  %12 = add i32 %11, %7
  %13 = icmp uge i32 %5, %9
  %14 = icmp uge i32 %6, %9
  %15 = or i1 %13, %14
  %16 = extractvalue %dx.types.CBufRet.i32 %10, 1
  %17 = add i32 %16, %11
  %18 = icmp uge i32 %12, %17
  %19 = or i1 %15, %18
  br i1 %19, label %273, label %20, !dx.controlflow.hints !16

; <label>:20                                      ; preds = %0
  %21 = extractvalue %dx.types.CBufRet.i32 %10, 2
  %22 = uitofp i32 %5 to float
  %23 = uitofp i32 %6 to float
  %24 = fadd fast float %22, 5.000000e-01
  %25 = fadd fast float %23, 5.000000e-01
  %26 = uitofp i32 %9 to float
  %27 = fdiv fast float %24, %26
  %28 = fdiv fast float %25, %26
  %29 = fmul fast float %27, 2.000000e+00
  %30 = fmul fast float %28, 2.000000e+00
  %31 = fadd fast float %29, -1.000000e+00
  %32 = fadd fast float %30, -1.000000e+00
  switch i32 %12, label %33 [
    i32 5, label %42
    i32 1, label %36
    i32 2, label %45
    i32 3, label %38
    i32 4, label %40
  ], !dx.controlflow.hints !17

; <label>:33                                      ; preds = %20
  %34 = fsub fast float -0.000000e+00, %32
  %35 = fsub fast float -0.000000e+00, %31
  br label %45

; <label>:36                                      ; preds = %20
  %37 = fsub fast float -0.000000e+00, %32
  br label %45

; <label>:38                                      ; preds = %20
  %39 = fsub fast float -0.000000e+00, %32
  br label %45

; <label>:40                                      ; preds = %20
  %41 = fsub fast float -0.000000e+00, %32
  br label %45

; <label>:42                                      ; preds = %20
  %43 = fsub fast float -0.000000e+00, %31
  %44 = fsub fast float -0.000000e+00, %32
  br label %45

; <label>:45                                      ; preds = %42, %40, %38, %36, %33, %20
  %46 = phi float [ 1.000000e+00, %33 ], [ %31, %40 ], [ %31, %38 ], [ -1.000000e+00, %36 ], [ %43, %42 ], [ %31, %20 ]
  %47 = phi float [ %34, %33 ], [ %41, %40 ], [ -1.000000e+00, %38 ], [ %37, %36 ], [ %44, %42 ], [ 1.000000e+00, %20 ]
  %48 = phi float [ %35, %33 ], [ 1.000000e+00, %40 ], [ %39, %38 ], [ %31, %36 ], [ -1.000000e+00, %42 ], [ %32, %20 ]
  %49 = call float @dx.op.dot3.f32(i32 55, float %46, float %47, float %48, float %46, float %47, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %50 = call float @dx.op.unary.f32(i32 25, float %49)  ; Rsqrt(value)
  %51 = fmul fast float %50, %46
  %52 = fmul fast float %50, %47
  %53 = fmul fast float %50, %48
  %54 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %55 = extractvalue %dx.types.CBufRet.f32 %54, 1
  %56 = fsub fast float 1.000000e+00, %55
  %57 = call float @dx.op.binary.f32(i32 35, float %56, float 0x3F847AE140000000)  ; FMax(a,b)
  %58 = fmul fast float %57, %57
  %59 = fmul fast float %58, %58
  %60 = uitofp i32 %21 to float
  %61 = fdiv fast float 1.000000e+00, %60
  br label %62

; <label>:62                                      ; preds = %246, %45
  %63 = phi float [ 0.000000e+00, %45 ], [ %247, %246 ]
  %64 = phi float [ 0.000000e+00, %45 ], [ %248, %246 ]
  %65 = phi float [ 0.000000e+00, %45 ], [ %249, %246 ]
  %66 = phi float [ 0.000000e+00, %45 ], [ %250, %246 ]
  %67 = phi i32 [ 0, %45 ], [ %251, %246 ]
  %68 = icmp eq i32 %21, 0
  br i1 %68, label %246, label %69

; <label>:69                                      ; preds = %62
  br label %70

; <label>:70                                      ; preds = %242, %69
  %71 = phi float [ %236, %242 ], [ %63, %69 ]
  %72 = phi float [ %237, %242 ], [ %64, %69 ]
  %73 = phi float [ %238, %242 ], [ %65, %69 ]
  %74 = phi float [ %239, %242 ], [ %66, %69 ]
  %75 = phi i32 [ %243, %242 ], [ 0, %69 ]
  br label %76

; <label>:76                                      ; preds = %235, %70
  %77 = phi float [ %236, %235 ], [ %71, %70 ]
  %78 = phi float [ %237, %235 ], [ %72, %70 ]
  %79 = phi float [ %238, %235 ], [ %73, %70 ]
  %80 = phi float [ %239, %235 ], [ %74, %70 ]
  %81 = phi i32 [ %240, %235 ], [ 0, %70 ]
  %82 = sitofp i32 %81 to float
  %83 = sitofp i32 %75 to float
  %84 = fadd fast float %82, 5.000000e-01
  %85 = fadd fast float %83, 5.000000e-01
  %86 = fmul fast float %84, %61
  %87 = fmul fast float %85, %61
  %88 = fmul fast float %86, 2.000000e+00
  %89 = fmul fast float %87, 2.000000e+00
  %90 = fadd fast float %88, -1.000000e+00
  %91 = fadd fast float %89, -1.000000e+00
  switch i32 %67, label %92 [
    i32 5, label %101
    i32 1, label %95
    i32 2, label %104
    i32 3, label %97
    i32 4, label %99
  ], !dx.controlflow.hints !17

; <label>:92                                      ; preds = %76
  %93 = fsub fast float -0.000000e+00, %91
  %94 = fsub fast float -0.000000e+00, %90
  br label %104

; <label>:95                                      ; preds = %76
  %96 = fsub fast float -0.000000e+00, %91
  br label %104

; <label>:97                                      ; preds = %76
  %98 = fsub fast float -0.000000e+00, %91
  br label %104

; <label>:99                                      ; preds = %76
  %100 = fsub fast float -0.000000e+00, %91
  br label %104

; <label>:101                                     ; preds = %76
  %102 = fsub fast float -0.000000e+00, %90
  %103 = fsub fast float -0.000000e+00, %91
  br label %104

; <label>:104                                     ; preds = %101, %99, %97, %95, %92, %76
  %105 = phi float [ 1.000000e+00, %92 ], [ %90, %99 ], [ %90, %97 ], [ -1.000000e+00, %95 ], [ %102, %101 ], [ %90, %76 ]
  %106 = phi float [ %93, %92 ], [ %100, %99 ], [ -1.000000e+00, %97 ], [ %96, %95 ], [ %103, %101 ], [ 1.000000e+00, %76 ]
  %107 = phi float [ %94, %92 ], [ 1.000000e+00, %99 ], [ %98, %97 ], [ %90, %95 ], [ -1.000000e+00, %101 ], [ %91, %76 ]
  %108 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %109 = call float @dx.op.unary.f32(i32 25, float %108)  ; Rsqrt(value)
  %110 = fmul fast float %109, %105
  %111 = fmul fast float %109, %106
  %112 = fmul fast float %109, %107
  %113 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %110, float %111, float %112)  ; Dot3(ax,ay,az,bx,by,bz)
  %114 = fcmp fast ogt float %113, 0.000000e+00
  br i1 %114, label %115, label %235, !dx.controlflow.hints !18

; <label>:115                                     ; preds = %104
  %116 = fadd fast float %110, %51
  %117 = fadd fast float %111, %52
  %118 = fadd fast float %112, %53
  %119 = call float @dx.op.dot3.f32(i32 55, float %116, float %117, float %118, float %116, float %117, float %118)  ; Dot3(ax,ay,az,bx,by,bz)
  %120 = call float @dx.op.unary.f32(i32 25, float %119)  ; Rsqrt(value)
  %121 = fmul fast float %120, %116
  %122 = fmul fast float %120, %117
  %123 = fmul fast float %120, %118
  %124 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %125 = call float @dx.op.unary.f32(i32 7, float %124)  ; Saturate(value)
  %126 = fadd fast float %59, -1.000000e+00
  %127 = fmul fast float %125, %125
  %128 = fmul fast float %127, %126
  %129 = fadd fast float %128, 1.000000e+00
  %130 = fmul fast float %129, %129
  %131 = fdiv fast float %59, %130
  %132 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %3, i32 0, i32 %81, i32 %75, i32 %67, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = extractvalue %dx.types.ResRet.f32 %132, 1
  %135 = extractvalue %dx.types.ResRet.f32 %132, 2
  %136 = fsub fast float %90, %61
  %137 = fsub fast float %91, %61
  %138 = fadd fast float %90, %61
  %139 = fadd fast float %91, %61
  %140 = fmul fast float %136, %136
  %141 = fmul fast float %137, %137
  %142 = fadd fast float %141, 1.000000e+00
  %143 = fadd fast float %142, %140
  %144 = call float @dx.op.unary.f32(i32 24, float %143)  ; Sqrt(value)
  %145 = fmul fast float %136, %137
  %146 = fdiv fast float %145, %144
  %147 = call float @dx.op.unary.f32(i32 17, float %146)  ; Atan(value)
  %148 = fadd fast float %147, 0x400921FB60000000
  %149 = fadd fast float %147, 0xC00921FB60000000
  %150 = fcmp fast olt float %144, 0.000000e+00
  %151 = fcmp fast oeq float %144, 0.000000e+00
  %152 = fcmp fast oge float %145, 0.000000e+00
  %153 = fcmp fast olt float %145, 0.000000e+00
  %154 = and i1 %152, %150
  %155 = select i1 %154, float %148, float %147
  %156 = and i1 %153, %150
  %157 = select i1 %156, float %149, float %155
  %158 = and i1 %153, %151
  %159 = select i1 %158, float 0xBFF921FB60000000, float %157
  %160 = and i1 %152, %151
  %161 = select i1 %160, float 0x3FF921FB60000000, float %159
  %162 = fmul fast float %138, %138
  %163 = fadd fast float %142, %162
  %164 = call float @dx.op.unary.f32(i32 24, float %163)  ; Sqrt(value)
  %165 = fmul fast float %138, %137
  %166 = fdiv fast float %165, %164
  %167 = call float @dx.op.unary.f32(i32 17, float %166)  ; Atan(value)
  %168 = fadd fast float %167, 0x400921FB60000000
  %169 = fadd fast float %167, 0xC00921FB60000000
  %170 = fcmp fast olt float %164, 0.000000e+00
  %171 = fcmp fast oeq float %164, 0.000000e+00
  %172 = fcmp fast oge float %165, 0.000000e+00
  %173 = fcmp fast olt float %165, 0.000000e+00
  %174 = and i1 %172, %170
  %175 = select i1 %174, float %168, float %167
  %176 = and i1 %173, %170
  %177 = select i1 %176, float %169, float %175
  %178 = and i1 %173, %171
  %179 = and i1 %172, %171
  %180 = fmul fast float %139, %139
  %181 = fadd fast float %180, 1.000000e+00
  %182 = fadd fast float %181, %140
  %183 = call float @dx.op.unary.f32(i32 24, float %182)  ; Sqrt(value)
  %184 = fmul fast float %136, %139
  %185 = fdiv fast float %184, %183
  %186 = call float @dx.op.unary.f32(i32 17, float %185)  ; Atan(value)
  %187 = fadd fast float %186, 0x400921FB60000000
  %188 = fadd fast float %186, 0xC00921FB60000000
  %189 = fcmp fast olt float %183, 0.000000e+00
  %190 = fcmp fast oeq float %183, 0.000000e+00
  %191 = fcmp fast oge float %184, 0.000000e+00
  %192 = fcmp fast olt float %184, 0.000000e+00
  %193 = and i1 %191, %189
  %194 = select i1 %193, float %187, float %186
  %195 = and i1 %192, %189
  %196 = select i1 %195, float %188, float %194
  %197 = and i1 %192, %190
  %198 = and i1 %191, %190
  %199 = fadd fast float %181, %162
  %200 = call float @dx.op.unary.f32(i32 24, float %199)  ; Sqrt(value)
  %201 = fmul fast float %138, %139
  %202 = fdiv fast float %201, %200
  %203 = call float @dx.op.unary.f32(i32 17, float %202)  ; Atan(value)
  %204 = fadd fast float %203, 0x400921FB60000000
  %205 = fadd fast float %203, 0xC00921FB60000000
  %206 = fcmp fast olt float %200, 0.000000e+00
  %207 = fcmp fast oeq float %200, 0.000000e+00
  %208 = fcmp fast oge float %201, 0.000000e+00
  %209 = fcmp fast olt float %201, 0.000000e+00
  %210 = and i1 %208, %206
  %211 = select i1 %210, float %204, float %203
  %212 = and i1 %209, %206
  %213 = select i1 %212, float %205, float %211
  %214 = and i1 %209, %207
  %215 = select i1 %214, float 0xBFF921FB60000000, float %213
  %216 = and i1 %208, %207
  %217 = select i1 %216, float 0x3FF921FB60000000, float %215
  %218 = fsub fast float -0.000000e+00, %177
  %219 = select i1 %178, float 0x3FF921FB60000000, float %218
  %220 = select i1 %179, float 0xBFF921FB60000000, float %219
  %221 = fadd fast float %220, %161
  %222 = fsub fast float -0.000000e+00, %196
  %223 = select i1 %197, float 0x3FF921FB60000000, float %222
  %224 = select i1 %198, float 0xBFF921FB60000000, float %223
  %225 = fadd fast float %221, %224
  %226 = fadd fast float %225, %217
  %227 = fmul fast float %226, %131
  %228 = fmul fast float %227, %133
  %229 = fmul fast float %227, %134
  %230 = fmul fast float %227, %135
  %231 = fadd fast float %228, %77
  %232 = fadd fast float %229, %78
  %233 = fadd fast float %230, %79
  %234 = fadd fast float %227, %80
  br label %235

; <label>:235                                     ; preds = %115, %104
  %236 = phi float [ %231, %115 ], [ %77, %104 ]
  %237 = phi float [ %232, %115 ], [ %78, %104 ]
  %238 = phi float [ %233, %115 ], [ %79, %104 ]
  %239 = phi float [ %234, %115 ], [ %80, %104 ]
  %240 = add nuw i32 %81, 1
  %241 = icmp eq i32 %240, %21
  br i1 %241, label %242, label %76

; <label>:242                                     ; preds = %235
  %243 = add nuw i32 %75, 1
  %244 = icmp eq i32 %243, %21
  br i1 %244, label %245, label %70

; <label>:245                                     ; preds = %242
  br label %246

; <label>:246                                     ; preds = %245, %62
  %247 = phi float [ %63, %62 ], [ %236, %245 ]
  %248 = phi float [ %64, %62 ], [ %237, %245 ]
  %249 = phi float [ %65, %62 ], [ %238, %245 ]
  %250 = phi float [ %66, %62 ], [ %239, %245 ]
  %251 = add nuw nsw i32 %67, 1
  %252 = icmp eq i32 %251, 6
  br i1 %252, label %253, label %62

; <label>:253                                     ; preds = %246
  %254 = fcmp fast ogt float %250, 0.000000e+00
  %255 = fdiv fast float 1.000000e+00, %250
  %256 = select i1 %254, float %255, float 1.000000e+00
  %257 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %4, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %258 = extractvalue %dx.types.CBufRet.i32 %257, 0
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %268, label %260, !dx.controlflow.hints !19

; <label>:260                                     ; preds = %253
  %261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %2, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.f32 %261, 0
  %263 = fmul fast float %262, 0x3FD20DD760000000
  %264 = extractvalue %dx.types.CBufRet.f32 %54, 2
  %265 = call float @dx.op.binary.f32(i32 35, float %263, float %264)  ; FMax(a,b)
  %266 = fdiv fast float 1.000000e+00, %265
  %267 = fmul fast float %266, %256
  br label %268

; <label>:268                                     ; preds = %260, %253
  %269 = phi float [ %267, %260 ], [ %256, %253 ]
  %270 = fmul fast float %269, %247
  %271 = fmul fast float %269, %248
  %272 = fmul fast float %269, %249
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %5, i32 %6, i32 %12, float %270, float %271, float %272, float %270, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %273

; <label>:273                                     ; preds = %268, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!dx.entryPoints = !{!13}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !11, null}
!5 = !{!6, !8}
!6 = !{i32 0, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 7, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{!10}
!10 = !{i32 0, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!11 = !{!12}
!12 = !{i32 0, %ReflectionProbeFilteringComputeConstants* undef, !"", i32 0, i32 0, i32 1, i32 32, null}
!13 = !{void ()* @cs_reflection_probe_filtering_brute_force, !"cs_reflection_probe_filtering_brute_force", null, !4, !14}
!14 = !{i32 0, i64 272, i32 4, !15}
!15 = !{i32 8, i32 8, i32 1}
!16 = distinct !{!16, !"dx.controlflow.hints", i32 2}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = distinct !{!19, !"dx.controlflow.hints", i32 2}

