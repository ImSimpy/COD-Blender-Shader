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
; shader hash: f906b46638a60ea5a505aede1cdc4662
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
;   [16 x i8] (type annotation not present)
;
; }
;
; cbuffer 
; {
;
;   [16 x i8] (type annotation not present)
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
;                                   cbuffer      NA          NA     CB0            cb0     1
;                                   cbuffer      NA          NA     CB1            cb1     1
;                                   texture     f32         buf      T0             t3     1
;                                   texture    byte         r/o      T1             t0     1
;                                   texture    byte         r/o      T2             t4     1
;                                   texture    byte         r/o      T3             t2     1
;                                   texture  struct         r/o      T4             t1     1
;                                       UAVunorm_f32     2darray      U0             u0     1
;                                       UAV     f32     2darray      U1             u1     1
;                                       UAVunorm_f32     2darray      U2             u2     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%"class.Buffer<vector<float, 4> >" = type { <4 x float> }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWTexture2DArray<float>" = type { float }
%"class.RWTexture2DArray<vector<float, 3> >" = type { <3 x float> }
%"class.RWTexture2DArray<vector<float, 2> >" = type { <2 x float> }
%GfxDynmLightLMOptShared = type { i32, i32, i32, i32 }
%GfxDynLightLMOpt = type { i32, i32, i32, i32 }

define void @cs_optlm_blend2_to_lm_tile() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %13 = extractvalue %dx.types.CBufRet.i32 %12, 0
  %14 = and i32 %13, -1610612737
  %15 = lshr i32 %13, 29
  %16 = icmp ult i32 %11, %14
  br i1 %16, label %17, label %243, !dx.controlflow.hints !24

; <label>:17                                      ; preds = %0
  %18 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %9, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %19 = extractvalue %dx.types.CBufRet.i32 %18, 1
  %20 = shl i32 %19, 3
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %20, i32 undef)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = extractvalue %dx.types.ResRet.i32 %21, 1
  %24 = add i32 %22, %11
  %25 = shl i32 %24, 3
  %26 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %25, i32 undef)  ; BufferLoad(srv,index,wot)
  %27 = extractvalue %dx.types.ResRet.i32 %26, 0
  %28 = extractvalue %dx.types.ResRet.i32 %26, 1
  %29 = shl i32 %27, 4
  %30 = and i32 %29, 32752
  %31 = call float @dx.op.legacyF16ToF32(i32 131, i32 %30)  ; LegacyF16ToF32(value)
  %32 = lshr i32 %27, 7
  %33 = and i32 %32, 32752
  %34 = call float @dx.op.legacyF16ToF32(i32 131, i32 %33)  ; LegacyF16ToF32(value)
  %35 = lshr i32 %27, 22
  %36 = shl nuw nsw i32 %35, 5
  %37 = call float @dx.op.legacyF16ToF32(i32 131, i32 %36)  ; LegacyF16ToF32(value)
  %38 = and i32 %28, 255
  %39 = uitofp i32 %38 to float
  %40 = fmul fast float %39, 0x3F80101020000000
  %41 = fadd fast float %40, -1.000000e+00
  %42 = lshr i32 %28, 8
  %43 = and i32 %42, 255
  %44 = uitofp i32 %43 to float
  %45 = fmul fast float %44, 0x3F80101020000000
  %46 = fadd fast float %45, -1.000000e+00
  %47 = fadd fast float %46, %41
  %48 = fmul fast float %47, 5.000000e-01
  %49 = fsub fast float %41, %46
  %50 = fmul fast float %49, 5.000000e-01
  %51 = call float @dx.op.unary.f32(i32 6, float %48)  ; FAbs(value)
  %52 = fsub fast float 1.000000e+00, %51
  %53 = call float @dx.op.unary.f32(i32 6, float %50)  ; FAbs(value)
  %54 = fsub fast float %52, %53
  %55 = call float @dx.op.dot3.f32(i32 55, float %48, float %50, float %54, float %48, float %50, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %56 = call float @dx.op.unary.f32(i32 25, float %55)  ; Rsqrt(value)
  %57 = fmul fast float %48, %56
  %58 = fmul fast float %50, %56
  %59 = fmul fast float %56, %54
  %60 = lshr i32 %28, 16
  %61 = and i32 %60, 255
  %62 = uitofp i32 %61 to float
  %63 = call float @dx.op.dot3.f32(i32 55, float %31, float %34, float %37, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %64 = fmul fast float %57, %63
  %65 = fmul fast float %58, %63
  %66 = fmul fast float %59, %63
  %67 = fmul fast float %63, %62
  %68 = extractvalue %dx.types.CBufRet.i32 %18, 3
  %69 = extractvalue %dx.types.CBufRet.i32 %18, 2
  %70 = add i32 %69, %11
  %71 = and i32 %68, 7
  %72 = extractvalue %dx.types.CBufRet.i32 %18, 0
  %73 = mul i32 %72, %71
  %74 = add i32 %70, %73
  %75 = shl i32 %74, 3
  %76 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %75, i32 undef)  ; BufferLoad(srv,index,wot)
  %77 = extractvalue %dx.types.ResRet.i32 %76, 0
  %78 = extractvalue %dx.types.ResRet.i32 %76, 1
  %79 = shl i32 %77, 4
  %80 = and i32 %79, 32752
  %81 = call float @dx.op.legacyF16ToF32(i32 131, i32 %80)  ; LegacyF16ToF32(value)
  %82 = lshr i32 %77, 7
  %83 = and i32 %82, 32752
  %84 = call float @dx.op.legacyF16ToF32(i32 131, i32 %83)  ; LegacyF16ToF32(value)
  %85 = lshr i32 %77, 22
  %86 = shl nuw nsw i32 %85, 5
  %87 = call float @dx.op.legacyF16ToF32(i32 131, i32 %86)  ; LegacyF16ToF32(value)
  %88 = and i32 %78, 255
  %89 = uitofp i32 %88 to float
  %90 = fmul fast float %89, 0x3F80101020000000
  %91 = fadd fast float %90, -1.000000e+00
  %92 = lshr i32 %78, 8
  %93 = and i32 %92, 255
  %94 = uitofp i32 %93 to float
  %95 = fmul fast float %94, 0x3F80101020000000
  %96 = fadd fast float %95, -1.000000e+00
  %97 = fadd fast float %96, %91
  %98 = fmul fast float %97, 5.000000e-01
  %99 = fsub fast float %91, %96
  %100 = fmul fast float %99, 5.000000e-01
  %101 = call float @dx.op.unary.f32(i32 6, float %98)  ; FAbs(value)
  %102 = fsub fast float 1.000000e+00, %101
  %103 = call float @dx.op.unary.f32(i32 6, float %100)  ; FAbs(value)
  %104 = fsub fast float %102, %103
  %105 = call float @dx.op.dot3.f32(i32 55, float %98, float %100, float %104, float %98, float %100, float %104)  ; Dot3(ax,ay,az,bx,by,bz)
  %106 = call float @dx.op.unary.f32(i32 25, float %105)  ; Rsqrt(value)
  %107 = fmul fast float %98, %106
  %108 = fmul fast float %100, %106
  %109 = fmul fast float %106, %104
  %110 = lshr i32 %78, 16
  %111 = and i32 %110, 255
  %112 = uitofp i32 %111 to float
  %113 = lshr i32 %78, 24
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = extractvalue %dx.types.ResRet.f32 %114, 2
  %118 = fmul fast float %115, %81
  %119 = fmul fast float %116, %84
  %120 = fmul fast float %117, %87
  %121 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %122 = fmul fast float %107, %121
  %123 = fmul fast float %108, %121
  %124 = fmul fast float %109, %121
  %125 = fmul fast float %121, %112
  %126 = fadd fast float %118, %31
  %127 = fadd fast float %119, %34
  %128 = fadd fast float %120, %37
  %129 = fadd fast float %122, %64
  %130 = fadd fast float %123, %65
  %131 = fadd fast float %124, %66
  %132 = lshr i32 %68, 3
  %133 = and i32 %132, 7
  %134 = mul i32 %72, %133
  %135 = add i32 %70, %134
  %136 = shl i32 %135, 3
  %137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %136, i32 undef)  ; BufferLoad(srv,index,wot)
  %138 = extractvalue %dx.types.ResRet.i32 %137, 0
  %139 = extractvalue %dx.types.ResRet.i32 %137, 1
  %140 = shl i32 %138, 4
  %141 = and i32 %140, 32752
  %142 = call float @dx.op.legacyF16ToF32(i32 131, i32 %141)  ; LegacyF16ToF32(value)
  %143 = lshr i32 %138, 7
  %144 = and i32 %143, 32752
  %145 = call float @dx.op.legacyF16ToF32(i32 131, i32 %144)  ; LegacyF16ToF32(value)
  %146 = lshr i32 %138, 22
  %147 = shl nuw nsw i32 %146, 5
  %148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %147)  ; LegacyF16ToF32(value)
  %149 = and i32 %139, 255
  %150 = uitofp i32 %149 to float
  %151 = fmul fast float %150, 0x3F80101020000000
  %152 = fadd fast float %151, -1.000000e+00
  %153 = lshr i32 %139, 8
  %154 = and i32 %153, 255
  %155 = uitofp i32 %154 to float
  %156 = fmul fast float %155, 0x3F80101020000000
  %157 = fadd fast float %156, -1.000000e+00
  %158 = fadd fast float %157, %152
  %159 = fmul fast float %158, 5.000000e-01
  %160 = fsub fast float %152, %157
  %161 = fmul fast float %160, 5.000000e-01
  %162 = call float @dx.op.unary.f32(i32 6, float %159)  ; FAbs(value)
  %163 = fsub fast float 1.000000e+00, %162
  %164 = call float @dx.op.unary.f32(i32 6, float %161)  ; FAbs(value)
  %165 = fsub fast float %163, %164
  %166 = call float @dx.op.dot3.f32(i32 55, float %159, float %161, float %165, float %159, float %161, float %165)  ; Dot3(ax,ay,az,bx,by,bz)
  %167 = call float @dx.op.unary.f32(i32 25, float %166)  ; Rsqrt(value)
  %168 = fmul fast float %159, %167
  %169 = fmul fast float %161, %167
  %170 = fmul fast float %167, %165
  %171 = lshr i32 %139, 16
  %172 = and i32 %171, 255
  %173 = uitofp i32 %172 to float
  %174 = lshr i32 %139, 24
  %175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %8, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.f32 %175, 0
  %177 = extractvalue %dx.types.ResRet.f32 %175, 1
  %178 = extractvalue %dx.types.ResRet.f32 %175, 2
  %179 = fmul fast float %176, %142
  %180 = fmul fast float %177, %145
  %181 = fmul fast float %178, %148
  %182 = call float @dx.op.dot3.f32(i32 55, float %179, float %180, float %181, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %183 = fmul fast float %168, %182
  %184 = fmul fast float %169, %182
  %185 = fmul fast float %170, %182
  %186 = fmul fast float %182, %173
  %187 = fadd fast float %126, %179
  %188 = fadd fast float %127, %180
  %189 = fadd fast float %128, %181
  %190 = fadd fast float %125, %67
  %191 = fadd fast float %190, %186
  %192 = fmul fast float %191, 0x3F70101020000000
  %193 = fadd fast float %129, %183
  %194 = fadd fast float %130, %184
  %195 = fadd fast float %131, %185
  %196 = call float @dx.op.dot3.f32(i32 55, float %187, float %188, float %189, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %197 = fcmp fast ogt float %196, 0.000000e+00
  %198 = fdiv fast float 1.000000e+00, %196
  %199 = select i1 %197, float %198, float 0.000000e+00
  %200 = fmul fast float %192, %199
  %201 = call float @dx.op.dot3.f32(i32 55, float %193, float %194, float %195, float %193, float %194, float %195)  ; Dot3(ax,ay,az,bx,by,bz)
  %202 = fcmp fast ogt float %201, 0.000000e+00
  br i1 %202, label %203, label %206, !dx.controlflow.hints !25

; <label>:203                                     ; preds = %17
  %204 = call float @dx.op.unary.f32(i32 24, float %201)  ; Sqrt(value)
  %205 = fdiv fast float 1.000000e+00, %204
  br label %206

; <label>:206                                     ; preds = %203, %17
  %207 = phi float [ %205, %203 ], [ %201, %17 ]
  %208 = fmul fast float %207, %193
  %209 = fmul fast float %207, %194
  %210 = fmul fast float %207, %195
  %211 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %212 = extractvalue %dx.types.CBufRet.i32 %211, 0
  %213 = shl nuw nsw i32 %15, 1
  %214 = lshr i32 %11, %213
  %215 = add i32 %23, %214
  %216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %215, i32 0)  ; BufferLoad(srv,index,wot)
  %217 = extractvalue %dx.types.ResRet.i32 %216, 0
  %218 = add i32 %217, %212
  %219 = and i32 %218, 65535
  %220 = lshr i32 %218, 16
  %221 = shl i32 1, %15
  %222 = add i32 %221, -1
  %223 = and i32 %222, %11
  %224 = add i32 %219, %223
  %225 = lshr i32 %11, %15
  %226 = and i32 %222, %225
  %227 = add i32 %220, %226
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %2, i32 %224, i32 %227, i32 0, float %187, float %188, float %189, float %187, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  %228 = call float @dx.op.unary.f32(i32 6, float %208)  ; FAbs(value)
  %229 = call float @dx.op.unary.f32(i32 6, float %209)  ; FAbs(value)
  %230 = fadd fast float %228, %210
  %231 = fadd fast float %230, %229
  %232 = fdiv fast float 1.000000e+00, %231
  %233 = fadd fast float %193, %194
  %234 = fsub fast float %193, %194
  %235 = fmul fast float %233, 5.000000e-01
  %236 = fmul fast float %235, %207
  %237 = fmul fast float %236, %232
  %238 = fadd fast float %237, 5.000000e-01
  %239 = fmul fast float %234, 5.000000e-01
  %240 = fmul fast float %239, %207
  %241 = fmul fast float %240, %232
  %242 = fadd fast float %241, 5.000000e-01
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %1, i32 %224, i32 %227, i32 0, float %238, float %242, float %238, float %238, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  call void @dx.op.textureStore.f32(i32 67, %dx.types.Handle %3, i32 %224, i32 %227, i32 0, float %200, float %200, float %200, float %200, i8 15)  ; TextureStore(srv,coord0,coord1,coord2,value0,value1,value2,value3,mask)
  br label %243

; <label>:243                                     ; preds = %206, %0
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.textureStore.f32(i32, %dx.types.Handle, i32, i32, i32, float, float, float, float, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!21}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !18, null}
!5 = !{!6, !8, !9, !10, !11}
!6 = !{i32 0, %"class.Buffer<vector<float, 4> >"* undef, !"", i32 0, i32 3, i32 1, i32 10, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !12}
!12 = !{i32 1, i32 4}
!13 = !{!14, !16, !17}
!14 = !{i32 0, %"class.RWTexture2DArray<float>"* undef, !"", i32 0, i32 0, i32 1, i32 7, i1 false, i1 false, i1 false, !15}
!15 = !{i32 0, i32 14}
!16 = !{i32 1, %"class.RWTexture2DArray<vector<float, 3> >"* undef, !"", i32 0, i32 1, i32 1, i32 7, i1 false, i1 false, i1 false, !7}
!17 = !{i32 2, %"class.RWTexture2DArray<vector<float, 2> >"* undef, !"", i32 0, i32 2, i32 1, i32 7, i1 false, i1 false, i1 false, !15}
!18 = !{!19, !20}
!19 = !{i32 0, %GfxDynmLightLMOptShared* undef, !"", i32 0, i32 0, i32 1, i32 16, null}
!20 = !{i32 1, %GfxDynLightLMOpt* undef, !"", i32 0, i32 1, i32 1, i32 16, null}
!21 = !{void ()* @cs_optlm_blend2_to_lm_tile, !"cs_optlm_blend2_to_lm_tile", null, !4, !22}
!22 = !{i32 0, i64 272, i32 4, !23}
!23 = !{i32 64, i32 1, i32 1}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}

