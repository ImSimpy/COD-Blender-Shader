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
; shader hash: 45f1d2bd85e68c2b9d66a229783eca90
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
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
; Resource bind info for 
; {
;
;   [8 x i8] (type annotation not present)
; }
;
;
; Resource Bindings:
;
; Name                                 Type  Format         Dim      ID      HLSL Bind  Count
; ------------------------------ ---------- ------- ----------- ------- -------------- ------
;                                   cbuffer      NA          NA     CB0            cb6     1
;                                   texture    byte         r/o      T0             t0     1
;                                   texture    byte         r/o      T1             t1     1
;                                   texture    byte         r/o      T2             t2     1
;                                   texture    byte         r/o      T3             t3     1
;                                   texture    byte         r/o      T4             t5     1
;                                   texture    byte         r/o      T5             t6     1
;                                   texture    byte         r/o      T6            t13     1
;                                   texture  struct         r/o      T7            t14     1
;                                   texture    byte         r/o      T8            t15     1
;                                   texture    byte         r/o      T9            t16     1
;                                   texture    byte         r/o     T10            t19     1
;                                   texture    byte         r/o     T11            t20     1
;                                       UAV    byte         r/w      U0             u4     1
;                                       UAV  struct         r/w      U1             u5     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GPCulledSubMesh>" = type { %struct.GPCulledSubMesh }
%struct.GPCulledSubMesh = type { <2 x i32> }
%struct.RWByteAddressBuffer = type { i32 }
%"class.RWStructuredBuffer<GPSortItem>" = type { %struct.GPSortItem }
%struct.GPSortItem = type { i32, i32 }
%GPCullConsts = type { i32, i32, i32, i32, i32, i32, i32, i32 }

define void @sorted_cluster_workgroup_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 19, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %17 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %18 = shl i32 %16, 2
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = and i32 %20, 65535
  %22 = and i32 %20, 2097152
  %23 = and i32 %20, 4194304
  %24 = icmp ne i32 %23, 0
  %25 = lshr i32 %20, 10
  %26 = and i32 %25, 960
  %27 = add i32 %26, %17
  br i1 %24, label %28, label %42, !dx.controlflow.hints !27

; <label>:28                                      ; preds = %0
  %29 = shl nuw nsw i32 %21, 3
  %30 = or i32 %29, 5242880
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %30, i32 undef)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = extractvalue %dx.types.ResRet.i32 %31, 1
  %34 = and i32 %32, 65535
  %35 = lshr i32 %32, 16
  %36 = lshr i32 %33, 24
  %37 = lshr i32 %33, 25
  %38 = and i32 %37, 2
  %39 = xor i32 %38, 3
  %40 = shl i32 %33, 7
  %41 = and i32 %40, 2147483520
  br label %59

; <label>:42                                      ; preds = %0
  %43 = mul nuw nsw i32 %21, 12
  %44 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %43, i32 undef)  ; BufferLoad(srv,index,wot)
  %45 = extractvalue %dx.types.ResRet.i32 %44, 0
  %46 = extractvalue %dx.types.ResRet.i32 %44, 1
  %47 = extractvalue %dx.types.ResRet.i32 %44, 2
  %48 = lshr i32 %45, 28
  %49 = and i32 %46, 65535
  %50 = shl nuw nsw i32 %48, 16
  %51 = or i32 %50, %49
  %52 = and i32 %45, 268435455
  %53 = lshr i32 %46, 16
  %54 = and i32 %47, 15
  %55 = lshr i32 %47, 4
  %56 = and i32 %55, 15
  %57 = lshr i32 %47, 8
  %58 = shl nuw nsw i32 %51, 5
  br label %59

; <label>:59                                      ; preds = %42, %28
  %60 = phi i32 [ %41, %28 ], [ 0, %42 ]
  %61 = phi i32 [ %32, %28 ], [ %47, %42 ]
  %62 = phi i32 [ %35, %28 ], [ %57, %42 ]
  %63 = phi i32 [ %36, %28 ], [ %56, %42 ]
  %64 = phi i32 [ %39, %28 ], [ %54, %42 ]
  %65 = phi i32 [ %34, %28 ], [ %53, %42 ]
  %66 = phi i32 [ 0, %28 ], [ %58, %42 ]
  %67 = phi i32 [ 0, %28 ], [ %52, %42 ]
  %68 = lshr i32 %61, 24
  br i1 %24, label %69, label %75, !dx.controlflow.hints !28

; <label>:69                                      ; preds = %59
  %70 = shl nuw nsw i32 %21, 4
  %71 = add nuw nsw i32 %70, 5767168
  %72 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %71, i32 undef)  ; BufferLoad(srv,index,wot)
  %73 = extractvalue %dx.types.ResRet.i32 %72, 0
  %74 = extractvalue %dx.types.ResRet.i32 %72, 2
  br label %82

; <label>:75                                      ; preds = %59
  %76 = mul nuw nsw i32 %21, 12
  %77 = add nuw nsw i32 %76, 1572864
  %78 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %77, i32 undef)  ; BufferLoad(srv,index,wot)
  %79 = extractvalue %dx.types.ResRet.i32 %78, 1
  %80 = extractvalue %dx.types.ResRet.i32 %78, 2
  %81 = lshr i32 %79, 16
  br label %82

; <label>:82                                      ; preds = %75, %69
  %83 = phi i32 [ %74, %69 ], [ %80, %75 ]
  %84 = phi i32 [ %73, %69 ], [ %81, %75 ]
  %85 = call i32 @dx.op.binary.i32(i32 40, i32 %27, i32 %65)  ; UMin(a,b)
  %86 = add i32 %85, %83
  %87 = shl i32 %86, 2
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %87, i32 undef)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = shl i32 %89, 5
  %91 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.i32 %91, 0
  %93 = extractvalue %dx.types.ResRet.i32 %91, 1
  %94 = extractvalue %dx.types.ResRet.i32 %91, 2
  %95 = extractvalue %dx.types.ResRet.i32 %91, 3
  %96 = or i32 %90, 16
  %97 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.i32 %97, 3
  %99 = lshr i32 %98, 16
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %18, i32 undef)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = icmp eq i32 %64, 2
  br i1 %102, label %103, label %108, !dx.controlflow.hints !29

; <label>:103                                     ; preds = %82
  %104 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.i32 %104, 0
  %106 = icmp ne i32 %105, 0
  %107 = zext i1 %106 to i32
  br label %136

; <label>:108                                     ; preds = %82
  %109 = icmp eq i32 %64, 0
  br i1 %109, label %110, label %122, !dx.controlflow.hints !30

; <label>:110                                     ; preds = %108
  %111 = and i32 %63, 1
  %112 = icmp eq i32 %111, 0
  %113 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  br i1 %112, label %118, label %114, !dx.controlflow.hints !31

; <label>:114                                     ; preds = %110
  %115 = extractvalue %dx.types.CBufRet.i32 %113, 2
  %116 = icmp ne i32 %115, 0
  %117 = zext i1 %116 to i32
  br label %136

; <label>:118                                     ; preds = %110
  %119 = extractvalue %dx.types.CBufRet.i32 %113, 1
  %120 = icmp ne i32 %119, 0
  %121 = zext i1 %120 to i32
  br label %136

; <label>:122                                     ; preds = %108
  %123 = icmp eq i32 %64, 3
  br i1 %123, label %124, label %129, !dx.controlflow.hints !32

; <label>:124                                     ; preds = %122
  %125 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.i32 %125, 3
  %127 = icmp ne i32 %126, 0
  %128 = zext i1 %127 to i32
  br label %136

; <label>:129                                     ; preds = %122
  %130 = icmp eq i32 %64, 1
  br i1 %130, label %131, label %136, !dx.controlflow.hints !33

; <label>:131                                     ; preds = %129
  %132 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %133 = extractvalue %dx.types.CBufRet.i32 %132, 0
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i32
  br label %136

; <label>:136                                     ; preds = %131, %129, %124, %118, %114, %103
  %137 = phi i32 [ %107, %103 ], [ %117, %114 ], [ %121, %118 ], [ %128, %124 ], [ %135, %131 ], [ 0, %129 ]
  %138 = lshr i32 %17, 5
  %139 = shl nuw nsw i32 %138, 2
  %140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %16, i32 %139)  ; BufferLoad(srv,index,wot)
  %141 = extractvalue %dx.types.ResRet.i32 %140, 0
  %142 = and i32 %17, 31
  %143 = shl i32 1, %142
  %144 = and i32 %141, %143
  %145 = icmp eq i32 %144, 0
  %146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %16, i32 0)  ; BufferLoad(srv,index,wot)
  %147 = extractvalue %dx.types.ResRet.i32 %146, 0
  %148 = extractvalue %dx.types.ResRet.i32 %146, 1
  %149 = and i32 %17, 32
  %150 = add i32 %143, -1
  %151 = icmp eq i32 %149, 0
  %152 = and i32 %147, %150
  %153 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %152)  ; Countbits(value)
  %154 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %147)  ; Countbits(value)
  %155 = and i32 %148, %150
  %156 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %155)  ; Countbits(value)
  %157 = add i32 %156, %154
  %158 = select i1 %151, i32 %153, i32 %157
  %159 = add i32 %158, %101
  br i1 %145, label %599, label %160, !dx.controlflow.hints !34

; <label>:160                                     ; preds = %136
  %161 = icmp ne i32 %137, 0
  %162 = and i32 %62, 16
  %163 = icmp ne i32 %162, 0
  %164 = and i1 %163, %161
  %165 = and i32 %62, 15
  %166 = icmp ne i32 %165, 0
  %167 = and i1 %166, %164
  %168 = and i32 %62, 8
  %169 = icmp eq i32 %168, 0
  %170 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %15, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %171 = extractvalue %dx.types.CBufRet.i32 %170, 1
  %172 = icmp ugt i32 %99, %171
  %173 = and i1 %167, %172
  %174 = shl i32 %84, 2
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  br i1 %169, label %580, label %177, !dx.controlflow.hints !35

; <label>:177                                     ; preds = %160
  %178 = and i32 %64, 14
  %179 = icmp eq i32 %178, 2
  %180 = icmp eq i32 %64, 1
  %181 = or i1 %180, %179
  br i1 %102, label %182, label %259, !dx.controlflow.hints !36

; <label>:182                                     ; preds = %177
  %183 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %66, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.f32 %183, 0
  %185 = extractvalue %dx.types.ResRet.f32 %183, 1
  %186 = extractvalue %dx.types.ResRet.f32 %183, 2
  %187 = or i32 %66, 16
  %188 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.f32 %188, 0
  %190 = extractvalue %dx.types.ResRet.f32 %188, 1
  %191 = extractvalue %dx.types.ResRet.f32 %188, 2
  %192 = mul i32 %67, 24
  %193 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %192, i32 undef)  ; BufferLoad(srv,index,wot)
  %194 = extractvalue %dx.types.ResRet.f32 %193, 0
  %195 = extractvalue %dx.types.ResRet.f32 %193, 1
  %196 = extractvalue %dx.types.ResRet.f32 %193, 2
  %197 = add i32 %192, 12
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = extractvalue %dx.types.ResRet.i32 %198, 1
  %201 = add i32 %192, 20
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %199, 65535
  %205 = uitofp i32 %204 to float
  %206 = lshr i32 %199, 16
  %207 = uitofp i32 %206 to float
  %208 = and i32 %200, 65535
  %209 = uitofp i32 %208 to float
  %210 = lshr i32 %200, 16
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %205, 0x3F00001000000000
  %213 = fmul fast float %207, 0x3F00001000000000
  %214 = fmul fast float %209, 0x3F00001000000000
  %215 = fmul fast float %211, 0x3F00001000000000
  %216 = fadd fast float %212, -1.000000e+00
  %217 = fadd fast float %213, -1.000000e+00
  %218 = fadd fast float %214, -1.000000e+00
  %219 = fadd fast float %215, -1.000000e+00
  %220 = and i32 %203, 65535
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = fmul fast float %207, 0x3F10001000000000
  %223 = fadd fast float %222, -2.000000e+00
  %224 = fmul fast float %223, %217
  %225 = fsub fast float 1.000000e+00, %224
  %226 = fmul fast float %209, 0x3F10001000000000
  %227 = fadd fast float %226, -2.000000e+00
  %228 = fmul fast float %227, %218
  %229 = fsub fast float %225, %228
  %230 = fmul fast float %205, 0x3F10001000000000
  %231 = fadd fast float %230, -2.000000e+00
  %232 = fmul fast float %231, %217
  %233 = fmul fast float %227, %219
  %234 = fsub fast float %232, %233
  %235 = fmul fast float %231, %218
  %236 = fmul fast float %223, %219
  %237 = fadd fast float %235, %236
  %238 = fadd fast float %232, %233
  %239 = fmul fast float %231, %216
  %240 = fsub fast float 1.000000e+00, %239
  %241 = fsub fast float %240, %228
  %242 = fmul fast float %223, %218
  %243 = fmul fast float %231, %219
  %244 = fsub fast float %242, %243
  %245 = fsub fast float %235, %236
  %246 = fadd fast float %242, %243
  %247 = fsub fast float %240, %224
  %248 = fmul fast float %229, %221
  %249 = fmul fast float %238, %221
  %250 = fmul fast float %245, %221
  %251 = fmul fast float %234, %221
  %252 = fmul fast float %241, %221
  %253 = fmul fast float %246, %221
  %254 = fmul fast float %237, %221
  %255 = fmul fast float %244, %221
  %256 = fmul fast float %247, %221
  %257 = call float @dx.op.binary.f32(i32 35, float %190, float %191), !dx.precise !37  ; FMax(a,b)
  %258 = call float @dx.op.binary.f32(i32 35, float %189, float %257), !dx.precise !37  ; FMax(a,b)
  br label %435

; <label>:259                                     ; preds = %177
  %260 = icmp eq i32 %64, 0
  br i1 %260, label %261, label %361, !dx.controlflow.hints !38

; <label>:261                                     ; preds = %259
  %262 = and i32 %63, 1
  %263 = icmp eq i32 %262, 0
  %264 = shl i32 %67, 6
  %265 = add i32 %264, %22
  %266 = or i32 %265, 16
  %267 = or i32 %265, 48
  br i1 %263, label %279, label %268, !dx.controlflow.hints !39

; <label>:268                                     ; preds = %261
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 3
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = extractvalue %dx.types.ResRet.i32 %271, 1
  %274 = extractvalue %dx.types.ResRet.i32 %271, 2
  %275 = bitcast i32 %270 to float
  %276 = bitcast i32 %272 to float
  %277 = bitcast i32 %273 to float
  %278 = bitcast i32 %274 to float
  br label %435

; <label>:279                                     ; preds = %261
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = extractvalue %dx.types.ResRet.i32 %280, 1
  %283 = extractvalue %dx.types.ResRet.i32 %280, 2
  %284 = extractvalue %dx.types.ResRet.i32 %280, 3
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = extractvalue %dx.types.ResRet.i32 %285, 1
  %288 = extractvalue %dx.types.ResRet.i32 %285, 2
  %289 = extractvalue %dx.types.ResRet.i32 %285, 3
  %290 = or i32 %265, 32
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = extractvalue %dx.types.ResRet.i32 %291, 1
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = extractvalue %dx.types.ResRet.i32 %294, 1
  %297 = extractvalue %dx.types.ResRet.i32 %294, 2
  %298 = extractvalue %dx.types.ResRet.i32 %294, 3
  %299 = bitcast i32 %281 to float
  %300 = bitcast i32 %282 to float
  %301 = bitcast i32 %283 to float
  %302 = bitcast i32 %284 to float
  %303 = bitcast i32 %286 to float
  %304 = bitcast i32 %287 to float
  %305 = bitcast i32 %288 to float
  %306 = bitcast i32 %289 to float
  %307 = bitcast i32 %295 to float
  %308 = bitcast i32 %296 to float
  %309 = bitcast i32 %297 to float
  %310 = bitcast i32 %298 to float
  %311 = and i32 %292, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %292, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = and i32 %293, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = fmul fast float %300, %300
  %318 = fmul fast float %317, 2.000000e+00
  %319 = fsub fast float 1.000000e+00, %318
  %320 = fmul fast float %301, %301
  %321 = fmul fast float %320, 2.000000e+00
  %322 = fsub fast float %319, %321
  %323 = fmul fast float %299, 2.000000e+00
  %324 = fmul fast float %323, %300
  %325 = fmul fast float %301, 2.000000e+00
  %326 = fmul fast float %325, %302
  %327 = fsub fast float %324, %326
  %328 = fmul fast float %301, %299
  %329 = fmul fast float %302, %300
  %330 = fadd fast float %328, %329
  %331 = fmul fast float %330, 2.000000e+00
  %332 = fmul fast float %300, %299
  %333 = fmul fast float %302, %301
  %334 = fadd fast float %332, %333
  %335 = fmul fast float %334, 2.000000e+00
  %336 = fmul fast float %299, %299
  %337 = fmul fast float %336, 2.000000e+00
  %338 = fsub fast float 1.000000e+00, %337
  %339 = fsub fast float %338, %321
  %340 = fmul fast float %300, 2.000000e+00
  %341 = fmul fast float %340, %301
  %342 = fmul fast float %323, %302
  %343 = fsub fast float %341, %342
  %344 = fmul fast float %323, %301
  %345 = fmul fast float %340, %302
  %346 = fsub fast float %344, %345
  %347 = fmul fast float %301, %300
  %348 = fmul fast float %302, %299
  %349 = fadd fast float %347, %348
  %350 = fmul fast float %349, 2.000000e+00
  %351 = fsub fast float %338, %318
  %352 = fmul fast float %322, %306
  %353 = fmul fast float %335, %306
  %354 = fmul fast float %346, %306
  %355 = fmul fast float %327, %306
  %356 = fmul fast float %339, %306
  %357 = fmul fast float %350, %306
  %358 = fmul fast float %331, %306
  %359 = fmul fast float %343, %306
  %360 = fmul fast float %351, %306
  br label %435

; <label>:361                                     ; preds = %259
  %362 = icmp eq i32 %64, 3
  br i1 %362, label %363, label %371, !dx.controlflow.hints !40

; <label>:363                                     ; preds = %361
  %364 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %365 = extractvalue %dx.types.ResRet.f32 %364, 0
  %366 = extractvalue %dx.types.ResRet.f32 %364, 1
  %367 = extractvalue %dx.types.ResRet.f32 %364, 2
  %368 = or i32 %60, 12
  %369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.f32 %369, 0
  br label %435

; <label>:371                                     ; preds = %361
  br i1 %180, label %372, label %435, !dx.controlflow.hints !41

; <label>:372                                     ; preds = %371
  %373 = shl nuw nsw i32 %21, 6
  %374 = or i32 %22, 1572864
  %375 = add nuw nsw i32 %374, %373
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = extractvalue %dx.types.ResRet.i32 %376, 1
  %379 = extractvalue %dx.types.ResRet.i32 %376, 2
  %380 = extractvalue %dx.types.ResRet.i32 %376, 3
  %381 = or i32 %375, 16
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = extractvalue %dx.types.ResRet.i32 %382, 1
  %385 = extractvalue %dx.types.ResRet.i32 %382, 2
  %386 = bitcast i32 %377 to float
  %387 = bitcast i32 %378 to float
  %388 = bitcast i32 %379 to float
  %389 = bitcast i32 %380 to float
  %390 = bitcast i32 %383 to float
  %391 = bitcast i32 %384 to float
  %392 = bitcast i32 %385 to float
  %393 = fmul fast float %387, %387
  %394 = fmul fast float %393, 2.000000e+00
  %395 = fsub fast float 1.000000e+00, %394
  %396 = fmul fast float %388, %388
  %397 = fmul fast float %396, 2.000000e+00
  %398 = fsub fast float %395, %397
  %399 = fmul fast float %386, 2.000000e+00
  %400 = fmul fast float %399, %387
  %401 = fmul fast float %388, 2.000000e+00
  %402 = fmul fast float %401, %389
  %403 = fsub fast float %400, %402
  %404 = fmul fast float %388, %386
  %405 = fmul fast float %389, %387
  %406 = fadd fast float %404, %405
  %407 = fmul fast float %406, 2.000000e+00
  %408 = fmul fast float %387, %386
  %409 = fmul fast float %389, %388
  %410 = fadd fast float %408, %409
  %411 = fmul fast float %410, 2.000000e+00
  %412 = fmul fast float %386, %386
  %413 = fmul fast float %412, 2.000000e+00
  %414 = fsub fast float 1.000000e+00, %413
  %415 = fsub fast float %414, %397
  %416 = fmul fast float %387, 2.000000e+00
  %417 = fmul fast float %416, %388
  %418 = fmul fast float %399, %389
  %419 = fsub fast float %417, %418
  %420 = fmul fast float %399, %388
  %421 = fmul fast float %416, %389
  %422 = fsub fast float %420, %421
  %423 = fmul fast float %388, %387
  %424 = fmul fast float %389, %386
  %425 = fadd fast float %423, %424
  %426 = fmul fast float %425, 2.000000e+00
  %427 = fsub fast float %414, %394
  %428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %60, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.f32 %428, 0
  %430 = extractvalue %dx.types.ResRet.f32 %428, 1
  %431 = extractvalue %dx.types.ResRet.f32 %428, 2
  %432 = or i32 %60, 12
  %433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.f32 %433, 0
  br label %435

; <label>:435                                     ; preds = %372, %371, %363, %279, %268, %182
  %436 = phi float [ %248, %182 ], [ 1.000000e+00, %268 ], [ %352, %279 ], [ 1.000000e+00, %363 ], [ %398, %372 ], [ 0.000000e+00, %371 ]
  %437 = phi float [ %251, %182 ], [ 0.000000e+00, %268 ], [ %355, %279 ], [ 0.000000e+00, %363 ], [ %403, %372 ], [ 0.000000e+00, %371 ]
  %438 = phi float [ %254, %182 ], [ 0.000000e+00, %268 ], [ %358, %279 ], [ 0.000000e+00, %363 ], [ %407, %372 ], [ 0.000000e+00, %371 ]
  %439 = phi float [ %194, %182 ], [ 0.000000e+00, %268 ], [ %303, %279 ], [ 0.000000e+00, %363 ], [ %390, %372 ], [ 0.000000e+00, %371 ]
  %440 = phi float [ %249, %182 ], [ 0.000000e+00, %268 ], [ %353, %279 ], [ 0.000000e+00, %363 ], [ %411, %372 ], [ 0.000000e+00, %371 ]
  %441 = phi float [ %252, %182 ], [ 1.000000e+00, %268 ], [ %356, %279 ], [ 1.000000e+00, %363 ], [ %415, %372 ], [ 0.000000e+00, %371 ]
  %442 = phi float [ %255, %182 ], [ 0.000000e+00, %268 ], [ %359, %279 ], [ 0.000000e+00, %363 ], [ %419, %372 ], [ 0.000000e+00, %371 ]
  %443 = phi float [ %195, %182 ], [ 0.000000e+00, %268 ], [ %304, %279 ], [ 0.000000e+00, %363 ], [ %391, %372 ], [ 0.000000e+00, %371 ]
  %444 = phi float [ %250, %182 ], [ 0.000000e+00, %268 ], [ %354, %279 ], [ 0.000000e+00, %363 ], [ %422, %372 ], [ 0.000000e+00, %371 ]
  %445 = phi float [ %253, %182 ], [ 0.000000e+00, %268 ], [ %357, %279 ], [ 0.000000e+00, %363 ], [ %426, %372 ], [ 0.000000e+00, %371 ]
  %446 = phi float [ %256, %182 ], [ 1.000000e+00, %268 ], [ %360, %279 ], [ 1.000000e+00, %363 ], [ %427, %372 ], [ 0.000000e+00, %371 ]
  %447 = phi float [ %196, %182 ], [ 0.000000e+00, %268 ], [ %305, %279 ], [ 0.000000e+00, %363 ], [ %392, %372 ], [ 0.000000e+00, %371 ]
  %448 = phi float [ 1.000000e+00, %182 ], [ 1.000000e+00, %268 ], [ 1.000000e+00, %279 ], [ 1.000000e+00, %363 ], [ 1.000000e+00, %372 ], [ 0.000000e+00, %371 ]
  %449 = phi float [ %184, %182 ], [ 0.000000e+00, %268 ], [ %307, %279 ], [ %365, %363 ], [ %429, %372 ], [ 0.000000e+00, %371 ]
  %450 = phi float [ %185, %182 ], [ 0.000000e+00, %268 ], [ %308, %279 ], [ %366, %363 ], [ %430, %372 ], [ 0.000000e+00, %371 ]
  %451 = phi float [ %186, %182 ], [ 0.000000e+00, %268 ], [ %309, %279 ], [ %367, %363 ], [ %431, %372 ], [ 0.000000e+00, %371 ]
  %452 = phi float [ %258, %182 ], [ %275, %268 ], [ %310, %279 ], [ %370, %363 ], [ %434, %372 ], [ 0.000000e+00, %371 ]
  %453 = phi float [ undef, %182 ], [ %276, %268 ], [ %312, %279 ], [ undef, %363 ], [ undef, %372 ], [ undef, %371 ]
  %454 = phi float [ undef, %182 ], [ %277, %268 ], [ %314, %279 ], [ undef, %363 ], [ undef, %372 ], [ undef, %371 ]
  %455 = phi float [ undef, %182 ], [ %278, %268 ], [ %316, %279 ], [ undef, %363 ], [ undef, %372 ], [ undef, %371 ]
  br i1 %181, label %456, label %523, !dx.controlflow.hints !42

; <label>:456                                     ; preds = %435
  %457 = and i32 %92, 2097151
  %458 = uitofp i32 %457 to float
  %459 = lshr i32 %92, 21
  %460 = shl i32 %93, 11
  %461 = and i32 %460, 2095104
  %462 = or i32 %461, %459
  %463 = uitofp i32 %462 to float
  %464 = lshr i32 %93, 10
  %465 = and i32 %464, 2097151
  %466 = uitofp i32 %465 to float
  br i1 %24, label %477, label %467, !dx.controlflow.hints !43

; <label>:467                                     ; preds = %456
  %468 = fdiv float %458, 2.097151e+06
  %469 = fdiv float %463, 2.097151e+06
  %470 = fdiv float %466, 2.097151e+06
  %471 = fmul float %468, 2.000000e+00
  %472 = fmul float %469, 2.000000e+00
  %473 = fmul float %470, 2.000000e+00
  %474 = fadd float %471, -1.000000e+00
  %475 = fadd float %472, -1.000000e+00
  %476 = fadd float %473, -1.000000e+00
  br label %477

; <label>:477                                     ; preds = %467, %456
  %478 = phi float [ %474, %467 ], [ %458, %456 ]
  %479 = phi float [ %475, %467 ], [ %463, %456 ]
  %480 = phi float [ %476, %467 ], [ %466, %456 ]
  %481 = fmul float %452, %480
  %482 = fadd float %451, %481
  %483 = fmul float %452, %479
  %484 = fadd float %450, %483
  %485 = fmul float %452, %478
  %486 = fadd float %449, %485
  %487 = and i32 %94, 2097151
  %488 = uitofp i32 %487 to float
  %489 = lshr i32 %94, 21
  %490 = shl i32 %95, 11
  %491 = and i32 %490, 2095104
  %492 = or i32 %491, %489
  %493 = uitofp i32 %492 to float
  %494 = lshr i32 %95, 10
  %495 = and i32 %494, 2097151
  %496 = uitofp i32 %495 to float
  br i1 %24, label %507, label %497, !dx.controlflow.hints !43

; <label>:497                                     ; preds = %477
  %498 = fdiv float %488, 2.097151e+06
  %499 = fdiv float %493, 2.097151e+06
  %500 = fdiv float %496, 2.097151e+06
  %501 = fmul float %498, 2.000000e+00
  %502 = fmul float %499, 2.000000e+00
  %503 = fmul float %500, 2.000000e+00
  %504 = fadd float %501, -1.000000e+00
  %505 = fadd float %502, -1.000000e+00
  %506 = fadd float %503, -1.000000e+00
  br label %507

; <label>:507                                     ; preds = %497, %477
  %508 = phi float [ %504, %497 ], [ %488, %477 ]
  %509 = phi float [ %505, %497 ], [ %493, %477 ]
  %510 = phi float [ %506, %497 ], [ %496, %477 ]
  %511 = fmul float %452, %510
  %512 = fadd float %451, %511
  %513 = fmul float %452, %509
  %514 = fadd float %450, %513
  %515 = fmul float %452, %508
  %516 = fadd float %449, %515
  %517 = fadd fast float %516, %486
  %518 = fadd fast float %514, %484
  %519 = fadd fast float %512, %482
  %520 = fmul fast float %517, 5.000000e-01
  %521 = fmul fast float %518, 5.000000e-01
  %522 = fmul fast float %519, 5.000000e-01
  br label %523

; <label>:523                                     ; preds = %507, %435
  %524 = phi float [ %520, %507 ], [ %453, %435 ]
  %525 = phi float [ %521, %507 ], [ %454, %435 ]
  %526 = phi float [ %522, %507 ], [ %455, %435 ]
  %527 = shl nuw nsw i32 %68, 6
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 3
  %530 = bitcast i32 %529 to float
  %531 = or i32 %527, 16
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 3
  %534 = bitcast i32 %533 to float
  %535 = or i32 %527, 32
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %535, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 3
  %538 = bitcast i32 %537 to float
  %539 = or i32 %527, 48
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 3
  %542 = bitcast i32 %541 to float
  %543 = shl nuw nsw i32 %68, 4
  %544 = or i32 %543, 4096
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = extractvalue %dx.types.ResRet.i32 %545, 1
  %548 = extractvalue %dx.types.ResRet.i32 %545, 2
  %549 = extractvalue %dx.types.ResRet.i32 %545, 3
  %550 = icmp eq i32 %549, 1
  %551 = bitcast float %439 to i32
  %552 = bitcast float %443 to i32
  %553 = bitcast float %447 to i32
  %554 = select i1 %550, i32 0, i32 %546
  %555 = select i1 %550, i32 0, i32 %547
  %556 = select i1 %550, i32 0, i32 %548
  %557 = sub i32 %551, %554
  %558 = sub i32 %552, %555
  %559 = sub i32 %553, %556
  %560 = sitofp i32 %557 to float
  %561 = sitofp i32 %558 to float
  %562 = sitofp i32 %559 to float
  %563 = fmul fast float %561, 0x3F30000000000000
  %564 = fmul fast float %562, 0x3F30000000000000
  %565 = fmul fast float %530, %436
  %566 = call float @dx.op.tertiary.f32(i32 46, float %440, float %534, float %565)  ; FMad(a,b,c)
  %567 = call float @dx.op.tertiary.f32(i32 46, float %444, float %538, float %566)  ; FMad(a,b,c)
  %568 = fmul fast float %530, %437
  %569 = call float @dx.op.tertiary.f32(i32 46, float %441, float %534, float %568)  ; FMad(a,b,c)
  %570 = call float @dx.op.tertiary.f32(i32 46, float %445, float %538, float %569)  ; FMad(a,b,c)
  %571 = fmul fast float %530, %438
  %572 = call float @dx.op.tertiary.f32(i32 46, float %442, float %534, float %571)  ; FMad(a,b,c)
  %573 = call float @dx.op.tertiary.f32(i32 46, float %446, float %538, float %572)  ; FMad(a,b,c)
  %574 = fmul fast float %530, 0x3F30000000000000
  %575 = fmul fast float %574, %560
  %576 = call float @dx.op.tertiary.f32(i32 46, float %563, float %534, float %575)  ; FMad(a,b,c)
  %577 = call float @dx.op.tertiary.f32(i32 46, float %564, float %538, float %576)  ; FMad(a,b,c)
  %578 = call float @dx.op.tertiary.f32(i32 46, float %448, float %542, float %577)  ; FMad(a,b,c)
  %579 = call float @dx.op.dot4.f32(i32 56, float %524, float %525, float %526, float 1.000000e+00, float %567, float %570, float %573, float %578)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  br label %580

; <label>:580                                     ; preds = %523, %160
  %581 = phi float [ %579, %523 ], [ 0.000000e+00, %160 ]
  %582 = call i32 @dx.op.legacyF32ToF16(i32 130, float %581)  ; LegacyF32ToF16(value)
  %583 = and i32 %582, 65535
  %584 = shl i32 %176, 16
  %585 = or i32 %583, %584
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %159, i32 0, i32 %585, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %159, i32 4, i32 %159, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %586 = and i32 %85, 1023
  %587 = zext i1 %173 to i32
  %588 = shl nuw nsw i32 %587, 10
  %589 = lshr exact i32 %22, 10
  %590 = shl nuw nsw i32 %168, 9
  %591 = lshr exact i32 %23, 9
  %592 = or i32 %591, %589
  %593 = or i32 %592, %590
  %594 = or i32 %593, %586
  %595 = or i32 %594, %588
  %596 = shl nuw nsw i32 %595, 16
  %597 = or i32 %596, %21
  %598 = shl i32 %159, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %598, i32 undef, i32 %597, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %599

; <label>:599                                     ; preds = %580, %136
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.legacyF32ToF16(i32, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #1

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #1

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #1

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind readonly }
attributes #2 = { nounwind }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!24}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !22, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 1, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 5, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %"class.StructuredBuffer<GPCulledSubMesh>"* undef, !"", i32 0, i32 14, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 8}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 15, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 16, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 19, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!19 = !{!20, !21}
!20 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 4, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!21 = !{i32 1, %"class.RWStructuredBuffer<GPSortItem>"* undef, !"", i32 0, i32 5, i32 1, i32 12, i1 false, i1 false, i1 false, !14}
!22 = !{!23}
!23 = !{i32 0, %GPCullConsts* undef, !"", i32 0, i32 6, i32 1, i32 32, null}
!24 = !{void ()* @sorted_cluster_workgroup_gen_pass, !"sorted_cluster_workgroup_gen_pass", null, !4, !25}
!25 = !{i32 0, i64 272, i32 4, !26}
!26 = !{i32 64, i32 1, i32 1}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{i32 1}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}

