;
; Note: shader requires additional functionality:
;       Wave level operations
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
; shader hash: 644bf138b6cd1dcd969112a41170f309
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
;   [80 x i8] (type annotation not present)
;
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
;                                   cbuffer      NA          NA     CB0            cb2     1
;                                   texture    byte         r/o      T0             t2     1
;                                   texture    byte         r/o      T1             t6     1
;                                   texture    byte         r/o      T2            t11     1
;                                   texture    byte         r/o      T3            t12     1
;                                   texture    byte         r/o      T4            t13     1
;                                   texture    byte         r/o      T5            t20     1
;                                   texture    byte         r/o      T6            t21     1
;                                   texture  struct         r/o      T7            t22     1
;                                   texture    byte         r/o      T8            t24     1
;                                   texture    byte         r/o      T9            t25     1
;                                   texture    byte         r/o     T10            t39     1
;                                   texture    byte         r/o     T11            t40     1
;                                       UAV    byte         r/w      U0             u2     1
;                                       UAV    byte         r/w      U1             u3     1
;                                       UAV    byte         r/w      U2             u6     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<GfxClutterCollectionGPUData>" = type { %struct.GfxClutterCollectionGPUData }
%struct.GfxClutterCollectionGPUData = type { i32, i32 }
%struct.RWByteAddressBuffer = type { i32 }
%GPLodParamsConsts = type { <3 x float>, i32, float, float, float, float, i32, i32, float, float, float, float, float, float, float, float, float, float }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4
@"\01?surfBufferPos@@3IA" = external addrspace(3) global i32, align 4

define void @smodel_surf_gen_pass() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 40, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 39, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 22, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 21, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 20, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 12, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %18 = call i32 @dx.op.flattenedThreadIdInGroup.i32(i32 96)  ; FlattenedThreadIdInGroup()
  %19 = alloca [8 x float], align 4
  %20 = alloca [8 x float], align 4
  %21 = alloca [8 x float], align 4
  %22 = shl i32 %17, 2
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %22, i32 undef)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = and i32 %24, 65535
  %26 = lshr i32 %24, 16
  %27 = shl nuw nsw i32 %25, 3
  %28 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %27, i32 undef)  ; BufferLoad(srv,index,wot)
  %29 = extractvalue %dx.types.ResRet.i32 %28, 0
  %30 = extractvalue %dx.types.ResRet.i32 %28, 1
  %31 = lshr i32 %29, 16
  %32 = and i32 %31, 255
  %33 = and i32 %30, 255
  %34 = lshr i32 %30, 8
  %35 = and i32 %34, 255
  %36 = lshr i32 %30, 16
  %37 = and i32 %36, 255
  %38 = lshr i32 %30, 24
  %39 = shl i32 %29, 4
  %40 = and i32 %39, 1048560
  %41 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %40, i32 undef)  ; BufferLoad(srv,index,wot)
  %42 = extractvalue %dx.types.ResRet.i32 %41, 0
  %43 = extractvalue %dx.types.ResRet.i32 %41, 1
  %44 = extractvalue %dx.types.ResRet.i32 %41, 2
  %45 = extractvalue %dx.types.ResRet.i32 %41, 3
  %46 = and i32 %44, 65535
  %47 = and i32 %45, 65535
  %48 = lshr i32 %45, 16
  %49 = and i32 %48, 32
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %56, label %51, !dx.controlflow.hints !28

; <label>:51                                      ; preds = %0
  %52 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %47, i32 0)  ; BufferLoad(srv,index,wot)
  %53 = extractvalue %dx.types.ResRet.i32 %52, 0
  %54 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %47, i32 4)  ; BufferLoad(srv,index,wot)
  %55 = extractvalue %dx.types.ResRet.i32 %54, 0
  br label %56

; <label>:56                                      ; preds = %51, %0
  %57 = phi i32 [ %55, %51 ], [ %43, %0 ]
  %58 = phi i32 [ %53, %51 ], [ %42, %0 ]
  %59 = mul nuw nsw i32 %46, 72
  %60 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %59, i32 undef)  ; BufferLoad(srv,index,wot)
  %61 = extractvalue %dx.types.ResRet.i32 %60, 0
  %62 = and i32 %61, 1048575
  %63 = lshr i32 %61, 20
  %64 = and i32 %63, 15
  %65 = or i32 %59, 4
  %66 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %65, i32 undef)  ; BufferLoad(srv,index,wot)
  %67 = extractvalue %dx.types.ResRet.i32 %66, 0
  %68 = extractvalue %dx.types.ResRet.i32 %66, 1
  %69 = extractvalue %dx.types.ResRet.i32 %66, 2
  %70 = bitcast i32 %67 to float
  %71 = bitcast i32 %68 to float
  %72 = bitcast i32 %69 to float
  %73 = add nuw nsw i32 %65, 12
  %74 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %73, i32 undef)  ; BufferLoad(srv,index,wot)
  %75 = extractvalue %dx.types.ResRet.i32 %74, 0
  %76 = extractvalue %dx.types.ResRet.i32 %74, 1
  %77 = extractvalue %dx.types.ResRet.i32 %74, 2
  %78 = bitcast i32 %75 to float
  %79 = bitcast i32 %76 to float
  %80 = bitcast i32 %77 to float
  %81 = shl nuw nsw i32 %26, 6
  %82 = call i32 @dx.op.binary.i32(i32 40, i32 %81, i32 %57)  ; UMin(a,b)
  %83 = sub i32 %57, %82
  %84 = call i32 @dx.op.binary.i32(i32 40, i32 64, i32 %83)  ; UMin(a,b)
  %85 = icmp ult i32 %18, %84
  %86 = and i32 %48, 64
  %87 = icmp ne i32 %86, 0
  %88 = icmp ne i32 %49, 0
  %89 = add i32 %58, %18
  %90 = add i32 %89, %82
  br i1 %85, label %91, label %639, !dx.controlflow.hints !29

; <label>:91                                      ; preds = %56
  %92 = shl i32 %90, 3
  %93 = or i32 %92, 4
  %94 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %93, i32 undef)  ; BufferLoad(srv,index,wot)
  %95 = extractvalue %dx.types.ResRet.i32 %94, 0
  %96 = lshr i32 %95, 16
  %97 = lshr i32 %95, 21
  %98 = and i32 %96, 31
  %99 = lshr i32 -2147483648, %98
  %100 = shl nuw nsw i32 %97, 2
  %101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.i32 %101, 0
  %103 = and i32 %102, %99
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %639, label %105, !dx.controlflow.hints !30

; <label>:105                                     ; preds = %91
  br i1 %87, label %106, label %118, !dx.controlflow.hints !31

; <label>:106                                     ; preds = %105
  %107 = and i32 %95, 65535
  %108 = mul nuw nsw i32 %107, 24
  %109 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %108, i32 undef)  ; BufferLoad(srv,index,wot)
  %110 = extractvalue %dx.types.ResRet.f32 %109, 0
  %111 = extractvalue %dx.types.ResRet.f32 %109, 1
  %112 = extractvalue %dx.types.ResRet.f32 %109, 2
  %113 = add nuw nsw i32 %108, 12
  %114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.f32 %114, 0
  %116 = extractvalue %dx.types.ResRet.f32 %114, 1
  %117 = extractvalue %dx.types.ResRet.f32 %114, 2
  br label %223

; <label>:118                                     ; preds = %105
  %119 = mul i32 %90, 24
  %120 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %119, i32 undef)  ; BufferLoad(srv,index,wot)
  %121 = extractvalue %dx.types.ResRet.f32 %120, 0
  %122 = extractvalue %dx.types.ResRet.f32 %120, 1
  %123 = extractvalue %dx.types.ResRet.f32 %120, 2
  %124 = add i32 %119, 12
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %124, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = extractvalue %dx.types.ResRet.i32 %125, 1
  %128 = add i32 %119, 20
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %128, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = and i32 %126, 65535
  %132 = uitofp i32 %131 to float
  %133 = lshr i32 %126, 16
  %134 = uitofp i32 %133 to float
  %135 = and i32 %127, 65535
  %136 = uitofp i32 %135 to float
  %137 = lshr i32 %127, 16
  %138 = uitofp i32 %137 to float
  %139 = fmul fast float %132, 0x3F00001000000000
  %140 = fmul fast float %134, 0x3F00001000000000
  %141 = fmul fast float %136, 0x3F00001000000000
  %142 = fmul fast float %138, 0x3F00001000000000
  %143 = fadd fast float %139, -1.000000e+00
  %144 = fadd fast float %140, -1.000000e+00
  %145 = fadd fast float %141, -1.000000e+00
  %146 = fadd fast float %142, -1.000000e+00
  %147 = and i32 %130, 65535
  %148 = call float @dx.op.legacyF16ToF32(i32 131, i32 %147)  ; LegacyF16ToF32(value)
  %149 = fmul fast float %134, 0x3F10001000000000
  %150 = fadd fast float %149, -2.000000e+00
  %151 = fmul fast float %150, %144
  %152 = fsub fast float 1.000000e+00, %151
  %153 = fmul fast float %136, 0x3F10001000000000
  %154 = fadd fast float %153, -2.000000e+00
  %155 = fmul fast float %154, %145
  %156 = fsub fast float %152, %155
  %157 = fmul fast float %132, 0x3F10001000000000
  %158 = fadd fast float %157, -2.000000e+00
  %159 = fmul fast float %158, %144
  %160 = fmul fast float %154, %146
  %161 = fsub fast float %159, %160
  %162 = fmul fast float %158, %145
  %163 = fmul fast float %150, %146
  %164 = fadd fast float %162, %163
  %165 = fadd fast float %159, %160
  %166 = fmul fast float %158, %143
  %167 = fsub fast float 1.000000e+00, %166
  %168 = fsub fast float %167, %155
  %169 = fmul fast float %150, %145
  %170 = fmul fast float %158, %146
  %171 = fsub fast float %169, %170
  %172 = fsub fast float %162, %163
  %173 = fadd fast float %169, %170
  %174 = fsub fast float %167, %151
  %175 = fmul fast float %156, %148
  %176 = fmul fast float %165, %148
  %177 = fmul fast float %172, %148
  %178 = fmul fast float %161, %148
  %179 = fmul fast float %168, %148
  %180 = fmul fast float %173, %148
  %181 = fmul fast float %164, %148
  %182 = fmul fast float %171, %148
  %183 = fmul fast float %174, %148
  %184 = bitcast float %121 to i32
  %185 = bitcast float %122 to i32
  %186 = bitcast float %123 to i32
  %187 = sitofp i32 %184 to float
  %188 = sitofp i32 %185 to float
  %189 = sitofp i32 %186 to float
  %190 = fmul fast float %187, 0x3F30000000000000
  %191 = fmul fast float %188, 0x3F30000000000000
  %192 = fmul fast float %189, 0x3F30000000000000
  %193 = fmul fast float %175, %70
  %194 = call float @dx.op.tertiary.f32(i32 46, float %71, float %178, float %193)  ; FMad(a,b,c)
  %195 = call float @dx.op.tertiary.f32(i32 46, float %72, float %181, float %194)  ; FMad(a,b,c)
  %196 = fadd fast float %195, %190
  %197 = fmul fast float %176, %70
  %198 = call float @dx.op.tertiary.f32(i32 46, float %71, float %179, float %197)  ; FMad(a,b,c)
  %199 = call float @dx.op.tertiary.f32(i32 46, float %72, float %182, float %198)  ; FMad(a,b,c)
  %200 = fadd fast float %199, %191
  %201 = fmul fast float %177, %70
  %202 = call float @dx.op.tertiary.f32(i32 46, float %71, float %180, float %201)  ; FMad(a,b,c)
  %203 = call float @dx.op.tertiary.f32(i32 46, float %72, float %183, float %202)  ; FMad(a,b,c)
  %204 = fadd fast float %203, %192
  %205 = call float @dx.op.unary.f32(i32 6, float %175)  ; FAbs(value)
  %206 = call float @dx.op.unary.f32(i32 6, float %176)  ; FAbs(value)
  %207 = call float @dx.op.unary.f32(i32 6, float %177)  ; FAbs(value)
  %208 = call float @dx.op.unary.f32(i32 6, float %178)  ; FAbs(value)
  %209 = call float @dx.op.unary.f32(i32 6, float %179)  ; FAbs(value)
  %210 = call float @dx.op.unary.f32(i32 6, float %180)  ; FAbs(value)
  %211 = call float @dx.op.unary.f32(i32 6, float %181)  ; FAbs(value)
  %212 = call float @dx.op.unary.f32(i32 6, float %182)  ; FAbs(value)
  %213 = call float @dx.op.unary.f32(i32 6, float %183)  ; FAbs(value)
  %214 = fmul fast float %205, %78
  %215 = call float @dx.op.tertiary.f32(i32 46, float %79, float %208, float %214)  ; FMad(a,b,c)
  %216 = call float @dx.op.tertiary.f32(i32 46, float %80, float %211, float %215)  ; FMad(a,b,c)
  %217 = fmul fast float %206, %78
  %218 = call float @dx.op.tertiary.f32(i32 46, float %79, float %209, float %217)  ; FMad(a,b,c)
  %219 = call float @dx.op.tertiary.f32(i32 46, float %80, float %212, float %218)  ; FMad(a,b,c)
  %220 = fmul fast float %207, %78
  %221 = call float @dx.op.tertiary.f32(i32 46, float %79, float %210, float %220)  ; FMad(a,b,c)
  %222 = call float @dx.op.tertiary.f32(i32 46, float %80, float %213, float %221)  ; FMad(a,b,c)
  br label %223

; <label>:223                                     ; preds = %118, %106
  %224 = phi float [ %115, %106 ], [ %216, %118 ]
  %225 = phi float [ %116, %106 ], [ %219, %118 ]
  %226 = phi float [ %117, %106 ], [ %222, %118 ]
  %227 = phi float [ %110, %106 ], [ %196, %118 ]
  %228 = phi float [ %111, %106 ], [ %200, %118 ]
  %229 = phi float [ %112, %106 ], [ %204, %118 ]
  %230 = phi float [ 1.000000e+00, %106 ], [ %175, %118 ]
  %231 = phi float [ 0.000000e+00, %106 ], [ %178, %118 ]
  %232 = phi float [ 0.000000e+00, %106 ], [ %181, %118 ]
  %233 = phi float [ 0.000000e+00, %106 ], [ %121, %118 ]
  %234 = phi float [ 0.000000e+00, %106 ], [ %176, %118 ]
  %235 = phi float [ 1.000000e+00, %106 ], [ %179, %118 ]
  %236 = phi float [ 0.000000e+00, %106 ], [ %182, %118 ]
  %237 = phi float [ 0.000000e+00, %106 ], [ %122, %118 ]
  %238 = phi float [ 0.000000e+00, %106 ], [ %177, %118 ]
  %239 = phi float [ 0.000000e+00, %106 ], [ %180, %118 ]
  %240 = phi float [ 1.000000e+00, %106 ], [ %183, %118 ]
  %241 = phi float [ 0.000000e+00, %106 ], [ %123, %118 ]
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 2
  %246 = fsub fast float %243, %227
  %247 = fsub fast float %244, %228
  %248 = fsub fast float %245, %229
  %249 = call float @dx.op.unary.f32(i32 6, float %246)  ; FAbs(value)
  %250 = call float @dx.op.unary.f32(i32 6, float %247)  ; FAbs(value)
  %251 = call float @dx.op.unary.f32(i32 6, float %248)  ; FAbs(value)
  %252 = fsub fast float %249, %224
  %253 = fsub fast float %250, %225
  %254 = fsub fast float %251, %226
  %255 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %252)  ; FMax(a,b)
  %256 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %253)  ; FMax(a,b)
  %257 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %254)  ; FMax(a,b)
  %258 = fmul fast float %255, %255
  %259 = fmul fast float %256, %256
  %260 = fadd fast float %259, %258
  %261 = fmul fast float %257, %257
  %262 = fadd fast float %260, %261
  %263 = call float @dx.op.unary.f32(i32 24, float %262)  ; Sqrt(value)
  %264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %265 = extractvalue %dx.types.CBufRet.f32 %264, 2
  %266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %267 = extractvalue %dx.types.CBufRet.f32 %266, 2
  %268 = select i1 %88, float %265, float %267
  %269 = extractvalue %dx.types.CBufRet.f32 %264, 3
  %270 = extractvalue %dx.types.CBufRet.f32 %266, 3
  %271 = select i1 %88, float %269, float %270
  %272 = fmul fast float %268, %263
  %273 = fadd fast float %271, %272
  %274 = uitofp i32 %37 to float
  %275 = fmul fast float %274, 1.250000e-01
  %276 = extractvalue %dx.types.CBufRet.f32 %266, 0
  %277 = fmul fast float %273, %276
  %278 = extractvalue %dx.types.CBufRet.f32 %266, 1
  %279 = fdiv fast float %278, %275
  %280 = select i1 %88, float 1.000000e+00, float %279
  %281 = fmul fast float %280, %273
  %282 = add i32 %30, -620756992
  %283 = icmp ult i32 %282, 335544320
  %284 = icmp ugt i32 %35, 1
  br i1 %284, label %285, label %312, !dx.controlflow.hints !32

; <label>:285                                     ; preds = %223
  %286 = add nuw nsw i32 %35, %33
  br label %287

; <label>:287                                     ; preds = %305, %285
  %288 = phi i32 [ %306, %305 ], [ %33, %285 ]
  %289 = phi i32 [ %300, %305 ], [ %286, %285 ]
  %290 = add nuw nsw i32 %59, 44
  %291 = shl i32 %288, 2
  %292 = add i32 %290, %291
  %293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %292, i32 undef)  ; BufferLoad(srv,index,wot)
  %294 = extractvalue %dx.types.ResRet.i32 %293, 0
  %295 = bitcast i32 %294 to float
  %296 = and i32 %288, 31
  %297 = shl i32 1, %296
  %298 = and i32 %297, %32
  %299 = icmp ne i32 %298, 0
  %300 = select i1 %299, i32 %288, i32 %289
  %301 = fcmp fast olt float %277, %295
  %302 = or i1 %283, %301
  %303 = icmp ne i32 %300, %286
  %304 = and i1 %303, %302
  br i1 %304, label %308, label %305, !dx.controlflow.hints !33

; <label>:305                                     ; preds = %287
  %306 = add nuw nsw i32 %288, 1
  %307 = icmp ult i32 %306, %286
  br i1 %307, label %287, label %308

; <label>:308                                     ; preds = %305, %287
  %309 = icmp eq i32 %300, %286
  %310 = add nsw i32 %286, -1
  %311 = select i1 %309, i32 %310, i32 %300
  br label %312

; <label>:312                                     ; preds = %308, %223
  %313 = phi i32 [ %33, %223 ], [ %311, %308 ]
  %314 = and i32 %313, 31
  %315 = shl i32 1, %314
  %316 = and i32 %315, %32
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %639, label %318, !dx.controlflow.hints !34

; <label>:318                                     ; preds = %312
  br i1 %283, label %334, label %319, !dx.controlflow.hints !35

; <label>:319                                     ; preds = %318
  %320 = add nsw i32 %64, -1
  %321 = add nuw nsw i32 %59, 44
  %322 = shl nsw i32 %320, 2
  %323 = add nsw i32 %321, %322
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = bitcast i32 %325 to float
  %327 = icmp eq i32 %313, %320
  %328 = fcmp fast oge float %281, %326
  %329 = and i1 %327, %328
  br i1 %329, label %330, label %334, !dx.controlflow.hints !36

; <label>:330                                     ; preds = %319
  %331 = fadd fast float %271, %263
  %332 = fmul fast float %331, %280
  %333 = fcmp fast ult float %332, %326
  br i1 %333, label %334, label %639, !dx.controlflow.hints !37

; <label>:334                                     ; preds = %330, %319, %318
  %335 = shl nuw nsw i32 %38, 6
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = extractvalue %dx.types.ResRet.i32 %336, 1
  %339 = extractvalue %dx.types.ResRet.i32 %336, 3
  %340 = bitcast i32 %337 to float
  %341 = bitcast i32 %338 to float
  %342 = bitcast i32 %339 to float
  %343 = or i32 %335, 16
  %344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %343, i32 undef)  ; BufferLoad(srv,index,wot)
  %345 = extractvalue %dx.types.ResRet.i32 %344, 0
  %346 = extractvalue %dx.types.ResRet.i32 %344, 1
  %347 = extractvalue %dx.types.ResRet.i32 %344, 3
  %348 = bitcast i32 %345 to float
  %349 = bitcast i32 %346 to float
  %350 = bitcast i32 %347 to float
  %351 = or i32 %335, 32
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = extractvalue %dx.types.ResRet.i32 %352, 1
  %355 = extractvalue %dx.types.ResRet.i32 %352, 3
  %356 = bitcast i32 %353 to float
  %357 = bitcast i32 %354 to float
  %358 = bitcast i32 %355 to float
  %359 = or i32 %335, 48
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = extractvalue %dx.types.ResRet.i32 %360, 1
  %363 = extractvalue %dx.types.ResRet.i32 %360, 3
  %364 = bitcast i32 %361 to float
  %365 = bitcast i32 %362 to float
  %366 = bitcast i32 %363 to float
  %367 = shl nuw nsw i32 %38, 4
  %368 = or i32 %367, 4096
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = extractvalue %dx.types.ResRet.i32 %369, 1
  %372 = extractvalue %dx.types.ResRet.i32 %369, 2
  %373 = extractvalue %dx.types.ResRet.i32 %369, 3
  %374 = icmp eq i32 %373, 1
  %375 = add nuw nsw i32 %367, 5120
  %376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %375, i32 undef)  ; BufferLoad(srv,index,wot)
  %377 = extractvalue %dx.types.ResRet.i32 %376, 0
  %378 = extractvalue %dx.types.ResRet.i32 %376, 1
  %379 = bitcast i32 %377 to float
  %380 = bitcast i32 %378 to float
  %381 = bitcast float %233 to i32
  %382 = bitcast float %237 to i32
  %383 = bitcast float %241 to i32
  %384 = select i1 %374, i32 0, i32 %370
  %385 = select i1 %374, i32 0, i32 %371
  %386 = select i1 %374, i32 0, i32 %372
  %387 = sub i32 %381, %384
  %388 = sub i32 %382, %385
  %389 = sub i32 %383, %386
  %390 = sitofp i32 %387 to float
  %391 = sitofp i32 %388 to float
  %392 = sitofp i32 %389 to float
  %393 = fmul fast float %390, 0x3F30000000000000
  %394 = fmul fast float %391, 0x3F30000000000000
  %395 = fmul fast float %392, 0x3F30000000000000
  %396 = fmul fast float %340, %230
  %397 = call float @dx.op.tertiary.f32(i32 46, float %234, float %348, float %396)  ; FMad(a,b,c)
  %398 = call float @dx.op.tertiary.f32(i32 46, float %238, float %356, float %397)  ; FMad(a,b,c)
  %399 = fmul fast float %341, %230
  %400 = call float @dx.op.tertiary.f32(i32 46, float %234, float %349, float %399)  ; FMad(a,b,c)
  %401 = call float @dx.op.tertiary.f32(i32 46, float %238, float %357, float %400)  ; FMad(a,b,c)
  %402 = fmul fast float %342, %230
  %403 = call float @dx.op.tertiary.f32(i32 46, float %234, float %350, float %402)  ; FMad(a,b,c)
  %404 = call float @dx.op.tertiary.f32(i32 46, float %238, float %358, float %403)  ; FMad(a,b,c)
  %405 = fmul fast float %340, %231
  %406 = call float @dx.op.tertiary.f32(i32 46, float %235, float %348, float %405)  ; FMad(a,b,c)
  %407 = call float @dx.op.tertiary.f32(i32 46, float %239, float %356, float %406)  ; FMad(a,b,c)
  %408 = fmul fast float %341, %231
  %409 = call float @dx.op.tertiary.f32(i32 46, float %235, float %349, float %408)  ; FMad(a,b,c)
  %410 = call float @dx.op.tertiary.f32(i32 46, float %239, float %357, float %409)  ; FMad(a,b,c)
  %411 = fmul fast float %342, %231
  %412 = call float @dx.op.tertiary.f32(i32 46, float %235, float %350, float %411)  ; FMad(a,b,c)
  %413 = call float @dx.op.tertiary.f32(i32 46, float %239, float %358, float %412)  ; FMad(a,b,c)
  %414 = fmul fast float %340, %232
  %415 = call float @dx.op.tertiary.f32(i32 46, float %236, float %348, float %414)  ; FMad(a,b,c)
  %416 = call float @dx.op.tertiary.f32(i32 46, float %240, float %356, float %415)  ; FMad(a,b,c)
  %417 = fmul fast float %341, %232
  %418 = call float @dx.op.tertiary.f32(i32 46, float %236, float %349, float %417)  ; FMad(a,b,c)
  %419 = call float @dx.op.tertiary.f32(i32 46, float %240, float %357, float %418)  ; FMad(a,b,c)
  %420 = fmul fast float %342, %232
  %421 = call float @dx.op.tertiary.f32(i32 46, float %236, float %350, float %420)  ; FMad(a,b,c)
  %422 = call float @dx.op.tertiary.f32(i32 46, float %240, float %358, float %421)  ; FMad(a,b,c)
  %423 = fmul fast float %393, %340
  %424 = call float @dx.op.tertiary.f32(i32 46, float %394, float %348, float %423)  ; FMad(a,b,c)
  %425 = call float @dx.op.tertiary.f32(i32 46, float %395, float %356, float %424)  ; FMad(a,b,c)
  %426 = fadd fast float %425, %364
  %427 = fmul fast float %393, %341
  %428 = call float @dx.op.tertiary.f32(i32 46, float %394, float %349, float %427)  ; FMad(a,b,c)
  %429 = call float @dx.op.tertiary.f32(i32 46, float %395, float %357, float %428)  ; FMad(a,b,c)
  %430 = fadd fast float %429, %365
  %431 = fmul fast float %393, %342
  %432 = call float @dx.op.tertiary.f32(i32 46, float %394, float %350, float %431)  ; FMad(a,b,c)
  %433 = call float @dx.op.tertiary.f32(i32 46, float %395, float %358, float %432)  ; FMad(a,b,c)
  %434 = fadd fast float %433, %366
  %435 = select i1 %87, float %227, float %70
  %436 = select i1 %87, float %228, float %71
  %437 = select i1 %87, float %229, float %72
  %438 = select i1 %87, float %224, float %78
  %439 = select i1 %87, float %225, float %79
  %440 = select i1 %87, float %226, float %80
  %441 = fsub fast float %435, %438
  %442 = fsub fast float %436, %439
  %443 = fsub fast float %437, %440
  %444 = fmul fast float %398, %441
  %445 = call float @dx.op.tertiary.f32(i32 46, float %442, float %407, float %444)  ; FMad(a,b,c)
  %446 = call float @dx.op.tertiary.f32(i32 46, float %443, float %416, float %445)  ; FMad(a,b,c)
  %447 = fadd fast float %426, %446
  %448 = fmul fast float %401, %441
  %449 = call float @dx.op.tertiary.f32(i32 46, float %442, float %410, float %448)  ; FMad(a,b,c)
  %450 = call float @dx.op.tertiary.f32(i32 46, float %443, float %419, float %449)  ; FMad(a,b,c)
  %451 = fadd fast float %430, %450
  %452 = fmul fast float %404, %441
  %453 = call float @dx.op.tertiary.f32(i32 46, float %442, float %413, float %452)  ; FMad(a,b,c)
  %454 = call float @dx.op.tertiary.f32(i32 46, float %443, float %422, float %453)  ; FMad(a,b,c)
  %455 = fadd fast float %434, %454
  %456 = fmul fast float %438, 2.000000e+00
  %457 = fmul fast float %439, 2.000000e+00
  %458 = fmul fast float %440, 2.000000e+00
  %459 = fmul fast float %398, %456
  %460 = fmul fast float %401, %456
  %461 = fmul fast float %404, %456
  %462 = fmul fast float %407, %457
  %463 = fmul fast float %410, %457
  %464 = fmul fast float %413, %457
  %465 = fcmp fast oeq float %422, 0.000000e+00
  br i1 %465, label %590, label %466, !dx.controlflow.hints !38

; <label>:466                                     ; preds = %334
  %467 = fmul fast float %422, %458
  %468 = fmul fast float %419, %458
  %469 = fmul fast float %416, %458
  %470 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 0
  %471 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 0
  %472 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 0
  store float 0.000000e+00, float* %470, align 4
  store float 0.000000e+00, float* %471, align 4
  store float 0.000000e+00, float* %472, align 4
  %473 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 1
  %474 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 1
  %475 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 1
  store float %459, float* %473, align 4
  store float %460, float* %474, align 4
  store float %461, float* %475, align 4
  %476 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 2
  %477 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 2
  %478 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 2
  store float %462, float* %476, align 4
  store float %463, float* %477, align 4
  store float %464, float* %478, align 4
  %479 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 3
  %480 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 3
  %481 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 3
  %482 = fsub fast float -0.000000e+00, %459
  %483 = fsub fast float -0.000000e+00, %460
  %484 = fsub fast float -0.000000e+00, %461
  store float %482, float* %479, align 4
  store float %483, float* %480, align 4
  store float %484, float* %481, align 4
  %485 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 4
  %486 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 4
  %487 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 4
  store float %469, float* %485, align 4
  store float %468, float* %486, align 4
  store float %467, float* %487, align 4
  %488 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 5
  %489 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 5
  %490 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 5
  store float %459, float* %488, align 4
  store float %460, float* %489, align 4
  store float %461, float* %490, align 4
  %491 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 6
  %492 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 6
  %493 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 6
  %494 = fsub fast float -0.000000e+00, %462
  %495 = fsub fast float -0.000000e+00, %463
  %496 = fsub fast float -0.000000e+00, %464
  store float %494, float* %491, align 4
  store float %495, float* %492, align 4
  store float %496, float* %493, align 4
  %497 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 7
  %498 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 7
  %499 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 7
  store float %482, float* %497, align 4
  store float %483, float* %498, align 4
  store float %484, float* %499, align 4
  %500 = fcmp fast olt float %455, 0.000000e+00
  %501 = zext i1 %500 to i32
  %502 = fadd fast float %455, %461
  %503 = fcmp fast olt float %502, 0.000000e+00
  %504 = select i1 %503, i32 2, i32 0
  %505 = or i32 %504, %501
  %506 = fadd fast float %502, %464
  %507 = fcmp fast olt float %506, 0.000000e+00
  %508 = select i1 %507, i32 4, i32 0
  %509 = or i32 %505, %508
  %510 = fsub fast float %506, %461
  %511 = fcmp fast olt float %510, 0.000000e+00
  %512 = select i1 %511, i32 8, i32 0
  %513 = or i32 %509, %512
  %514 = fadd fast float %510, %467
  %515 = fcmp fast olt float %514, 0.000000e+00
  %516 = select i1 %515, i32 16, i32 0
  %517 = or i32 %513, %516
  %518 = fadd fast float %514, %461
  %519 = fcmp fast olt float %518, 0.000000e+00
  %520 = select i1 %519, i32 32, i32 0
  %521 = or i32 %517, %520
  %522 = fsub fast float %518, %464
  %523 = fcmp fast olt float %522, 0.000000e+00
  %524 = select i1 %523, i32 64, i32 0
  %525 = or i32 %521, %524
  %526 = fsub fast float %522, %461
  %527 = fcmp fast olt float %526, 0.000000e+00
  %528 = select i1 %527, i32 128, i32 0
  %529 = or i32 %525, %528
  %530 = icmp eq i32 %529, 255
  br i1 %530, label %590, label %531, !dx.controlflow.hints !39

; <label>:531                                     ; preds = %466
  %532 = icmp eq i32 %529, 0
  br i1 %532, label %533, label %590, !dx.controlflow.hints !40

; <label>:533                                     ; preds = %531
  br label %534

; <label>:534                                     ; preds = %563, %533
  %535 = phi float [ %569, %563 ], [ 0.000000e+00, %533 ]
  %536 = phi float [ %567, %563 ], [ 0.000000e+00, %533 ]
  %537 = phi float [ %565, %563 ], [ 0.000000e+00, %533 ]
  %538 = phi float [ %557, %563 ], [ 9.999999e+06, %533 ]
  %539 = phi float [ %558, %563 ], [ 9.999999e+06, %533 ]
  %540 = phi float [ %559, %563 ], [ -9.999999e+06, %533 ]
  %541 = phi float [ %560, %563 ], [ -9.999999e+06, %533 ]
  %542 = phi float [ %546, %563 ], [ %447, %533 ]
  %543 = phi float [ %547, %563 ], [ %451, %533 ]
  %544 = phi float [ %548, %563 ], [ %455, %533 ]
  %545 = phi i32 [ %561, %563 ], [ 0, %533 ]
  %546 = fadd fast float %537, %542
  %547 = fadd fast float %536, %543
  %548 = fadd fast float %535, %544
  %549 = fdiv fast float %546, %548
  %550 = fdiv fast float %547, %548
  %551 = fmul fast float %549, 5.000000e-01
  %552 = fmul fast float %550, 5.000000e-01
  %553 = fadd fast float %551, 5.000000e-01
  %554 = fsub fast float 5.000000e-01, %552
  %555 = call float @dx.op.unary.f32(i32 7, float %553)  ; Saturate(value)
  %556 = call float @dx.op.unary.f32(i32 7, float %554)  ; Saturate(value)
  %557 = call float @dx.op.binary.f32(i32 36, float %538, float %555)  ; FMin(a,b)
  %558 = call float @dx.op.binary.f32(i32 36, float %539, float %556)  ; FMin(a,b)
  %559 = call float @dx.op.binary.f32(i32 35, float %540, float %555)  ; FMax(a,b)
  %560 = call float @dx.op.binary.f32(i32 35, float %541, float %556)  ; FMax(a,b)
  %561 = add nuw nsw i32 %545, 1
  %562 = icmp eq i32 %561, 8
  br i1 %562, label %570, label %563

; <label>:563                                     ; preds = %534
  %564 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 %561
  %565 = load float, float* %564, align 4
  %566 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 %561
  %567 = load float, float* %566, align 4
  %568 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 %561
  %569 = load float, float* %568, align 4
  br label %534

; <label>:570                                     ; preds = %534
  %571 = fcmp fast ole float %559, 0.000000e+00
  %572 = fcmp fast oge float %557, 1.000000e+00
  %573 = or i1 %572, %571
  %574 = fcmp fast ole float %560, 0.000000e+00
  %575 = or i1 %573, %574
  %576 = fcmp fast oge float %558, 1.000000e+00
  %577 = or i1 %576, %575
  br i1 %577, label %590, label %578, !dx.controlflow.hints !41

; <label>:578                                     ; preds = %570
  %579 = fmul fast float %557, %379
  %580 = fmul fast float %558, %380
  %581 = fmul fast float %559, %379
  %582 = fmul fast float %560, %380
  %583 = call float @dx.op.unary.f32(i32 26, float %579)  ; Round_ne(value)
  %584 = call float @dx.op.unary.f32(i32 26, float %580)  ; Round_ne(value)
  %585 = call float @dx.op.unary.f32(i32 26, float %581)  ; Round_ne(value)
  %586 = call float @dx.op.unary.f32(i32 26, float %582)  ; Round_ne(value)
  %587 = fcmp une float %583, %585
  %588 = fcmp une float %584, %586
  %589 = and i1 %587, %588
  br label %590

; <label>:590                                     ; preds = %578, %570, %531, %466, %334
  %591 = phi i1 [ true, %334 ], [ false, %466 ], [ true, %531 ], [ false, %570 ], [ %589, %578 ]
  %592 = phi float [ undef, %334 ], [ undef, %466 ], [ undef, %531 ], [ undef, %570 ], [ %557, %578 ]
  %593 = phi float [ undef, %334 ], [ undef, %466 ], [ undef, %531 ], [ undef, %570 ], [ %558, %578 ]
  %594 = phi float [ undef, %334 ], [ undef, %466 ], [ undef, %531 ], [ undef, %570 ], [ %559, %578 ]
  %595 = phi float [ undef, %334 ], [ undef, %466 ], [ undef, %531 ], [ undef, %570 ], [ %560, %578 ]
  %596 = xor i1 %591, true
  %597 = or i1 %87, %596
  %598 = zext i1 %596 to i32
  %599 = xor i32 %598, 1
  %600 = select i1 %591, i32 255, i32 0
  br i1 %597, label %639, label %601, !dx.controlflow.hints !42

; <label>:601                                     ; preds = %590
  %602 = fsub fast float %594, %592
  %603 = call float @dx.op.unary.f32(i32 6, float %602)  ; FAbs(value)
  %604 = fsub fast float %595, %593
  %605 = call float @dx.op.unary.f32(i32 6, float %604)  ; FAbs(value)
  %606 = call float @dx.op.binary.f32(i32 35, float %603, float %605)  ; FMax(a,b)
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  %608 = fadd fast float %607, -1.000000e+00
  br i1 %88, label %609, label %624, !dx.controlflow.hints !43

; <label>:609                                     ; preds = %601
  %610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %611 = extractvalue %dx.types.CBufRet.f32 %610, 2
  %612 = fadd fast float %608, %611
  %613 = extractvalue %dx.types.CBufRet.f32 %610, 3
  %614 = fmul fast float %612, %613
  %615 = call float @dx.op.unary.f32(i32 7, float %614)  ; Saturate(value)
  %616 = extractvalue %dx.types.CBufRet.f32 %610, 0
  %617 = fsub fast float %616, %273
  %618 = extractvalue %dx.types.CBufRet.f32 %610, 1
  %619 = fmul fast float %617, %618
  %620 = call float @dx.op.unary.f32(i32 7, float %619)  ; Saturate(value)
  %621 = fmul fast float %615, 2.540000e+02
  %622 = fmul fast float %621, %620
  %623 = fptoui float %622 to i32
  br label %639

; <label>:624                                     ; preds = %601
  %625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %626 = extractvalue %dx.types.CBufRet.f32 %625, 2
  %627 = fadd fast float %608, %626
  %628 = extractvalue %dx.types.CBufRet.f32 %625, 3
  %629 = fmul fast float %627, %628
  %630 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %631 = extractvalue %dx.types.CBufRet.f32 %625, 0
  %632 = fsub fast float %631, %273
  %633 = extractvalue %dx.types.CBufRet.f32 %625, 1
  %634 = fmul fast float %632, %633
  %635 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %636 = fmul fast float %630, 2.540000e+02
  %637 = fmul fast float %636, %635
  %638 = fptoui float %637 to i32
  br label %639

; <label>:639                                     ; preds = %624, %609, %590, %330, %312, %91, %56
  %640 = phi i32 [ 0, %56 ], [ 0, %91 ], [ 0, %312 ], [ 0, %330 ], [ %599, %590 ], [ 1, %624 ], [ 1, %609 ]
  %641 = phi i32 [ 0, %56 ], [ undef, %91 ], [ %313, %312 ], [ %313, %330 ], [ %313, %590 ], [ %313, %624 ], [ %313, %609 ]
  %642 = phi i32 [ 0, %56 ], [ 0, %91 ], [ 0, %312 ], [ 0, %330 ], [ %600, %590 ], [ %638, %624 ], [ %623, %609 ]
  %643 = icmp eq i32 %640, 0
  br i1 %643, label %658, label %644, !dx.controlflow.hints !44

; <label>:644                                     ; preds = %639
  %645 = lshr i32 %641, 1
  %646 = shl i32 %645, 2
  %647 = shl i32 %641, 4
  %648 = add nuw nsw i32 %59, 28
  %649 = add i32 %648, %646
  %650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %649, i32 undef)  ; BufferLoad(srv,index,wot)
  %651 = extractvalue %dx.types.ResRet.i32 %650, 0
  %652 = and i32 %647, 16
  %653 = lshr i32 %651, %652
  %654 = and i32 %653, 255
  %655 = lshr i32 %653, 8
  %656 = and i32 %655, 255
  %657 = add nuw nsw i32 %654, %62
  br label %658

; <label>:658                                     ; preds = %644, %639
  %659 = phi i32 [ %657, %644 ], [ 0, %639 ]
  %660 = phi i32 [ %656, %644 ], [ 0, %639 ]
  %661 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %662 = and i32 %18, 63
  %663 = udiv i32 %662, %661
  %664 = udiv i32 64, %661
  %665 = lshr i32 %18, 6
  %666 = mul i32 %664, %665
  %667 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %660, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %668 = add i32 %667, %660
  %669 = icmp eq i32 %661, 64
  br i1 %669, label %709, label %670, !dx.controlflow.hints !45

; <label>:670                                     ; preds = %658
  %671 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %672 = add i32 %661, -1
  %673 = icmp eq i32 %671, %672
  br i1 %673, label %674, label %677, !dx.controlflow.hints !46

; <label>:674                                     ; preds = %670
  %675 = add i32 %666, %663
  %676 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %675
  store i32 %668, i32 addrspace(3)* %676, align 4, !tbaa !47, !noalias !51
  br label %677

; <label>:677                                     ; preds = %674, %670
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %678 = icmp eq i32 %661, 32
  br i1 %678, label %679, label %685, !dx.controlflow.hints !55

; <label>:679                                     ; preds = %677
  %680 = icmp ugt i32 %662, 31
  br i1 %680, label %681, label %709, !dx.controlflow.hints !56

; <label>:681                                     ; preds = %679
  %682 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %666
  %683 = load i32, i32 addrspace(3)* %682, align 4, !tbaa !47, !noalias !51
  %684 = add i32 %683, %668
  br label %709

; <label>:685                                     ; preds = %677
  %686 = icmp eq i32 %661, 16
  br i1 %686, label %687, label %709, !dx.controlflow.hints !57

; <label>:687                                     ; preds = %685
  %688 = icmp ugt i32 %662, 15
  br i1 %688, label %689, label %693, !dx.controlflow.hints !58

; <label>:689                                     ; preds = %687
  %690 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %666
  %691 = load i32, i32 addrspace(3)* %690, align 4, !tbaa !47, !noalias !51
  %692 = add i32 %691, %668
  br label %693

; <label>:693                                     ; preds = %689, %687
  %694 = phi i32 [ %692, %689 ], [ %668, %687 ]
  %695 = icmp ugt i32 %662, 31
  br i1 %695, label %696, label %701, !dx.controlflow.hints !59

; <label>:696                                     ; preds = %693
  %697 = add i32 %666, 1
  %698 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %697
  %699 = load i32, i32 addrspace(3)* %698, align 4, !tbaa !47, !noalias !51
  %700 = add i32 %699, %694
  br label %701

; <label>:701                                     ; preds = %696, %693
  %702 = phi i32 [ %700, %696 ], [ %694, %693 ]
  %703 = icmp ugt i32 %662, 47
  br i1 %703, label %704, label %709, !dx.controlflow.hints !60

; <label>:704                                     ; preds = %701
  %705 = add i32 %666, 2
  %706 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %705
  %707 = load i32, i32 addrspace(3)* %706, align 4, !tbaa !47, !noalias !51
  %708 = add i32 %707, %702
  br label %709

; <label>:709                                     ; preds = %704, %701, %685, %681, %679, %658
  %710 = phi i32 [ %668, %658 ], [ %684, %681 ], [ %668, %679 ], [ %708, %704 ], [ %702, %701 ], [ 0, %685 ]
  %711 = sub i32 %710, %660
  br i1 %669, label %712, label %714, !dx.controlflow.hints !61

; <label>:712                                     ; preds = %709
  %713 = call i32 @dx.op.waveReadLaneAt.i32(i32 117, i32 %710, i32 63)  ; WaveReadLaneAt(value,lane)
  br label %747

; <label>:714                                     ; preds = %709
  %715 = icmp eq i32 %661, 32
  br i1 %715, label %716, label %723, !dx.controlflow.hints !62

; <label>:716                                     ; preds = %714
  %717 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %666
  %718 = load i32, i32 addrspace(3)* %717, align 4, !tbaa !47, !noalias !51
  %719 = add i32 %666, 1
  %720 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %719
  %721 = load i32, i32 addrspace(3)* %720, align 4, !tbaa !47, !noalias !51
  %722 = add i32 %721, %718
  br label %747

; <label>:723                                     ; preds = %714
  %724 = icmp eq i32 %661, 16
  br i1 %724, label %725, label %740, !dx.controlflow.hints !63

; <label>:725                                     ; preds = %723
  %726 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %666
  %727 = load i32, i32 addrspace(3)* %726, align 4, !tbaa !47, !noalias !51
  %728 = add i32 %666, 1
  %729 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %728
  %730 = load i32, i32 addrspace(3)* %729, align 4, !tbaa !47, !noalias !51
  %731 = add i32 %730, %727
  %732 = add i32 %666, 2
  %733 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %732
  %734 = load i32, i32 addrspace(3)* %733, align 4, !tbaa !47, !noalias !51
  %735 = add i32 %731, %734
  %736 = add i32 %666, 3
  %737 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %736
  %738 = load i32, i32 addrspace(3)* %737, align 4, !tbaa !47, !noalias !51
  %739 = add i32 %735, %738
  br label %747

; <label>:740                                     ; preds = %723
  %741 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %660, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %742 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %742, label %743, label %746, !dx.controlflow.hints !64

; <label>:743                                     ; preds = %740
  %744 = udiv i32 %18, %661
  %745 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %744
  store i32 %741, i32 addrspace(3)* %745, align 4, !tbaa !47, !noalias !51
  br label %746

; <label>:746                                     ; preds = %743, %740
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %747

; <label>:747                                     ; preds = %746, %725, %716, %712
  %748 = phi i32 [ %713, %712 ], [ %722, %716 ], [ %739, %725 ], [ 0, %746 ]
  %749 = icmp eq i32 %18, 0
  br i1 %749, label %750, label %751, !dx.controlflow.hints !65

; <label>:750                                     ; preds = %747
  store i32 0, i32 addrspace(3)* @"\01?surfBufferPos@@3IA", align 4, !tbaa !47
  br label %751

; <label>:751                                     ; preds = %750, %747
  %752 = phi i1 [ %749, %750 ], [ false, %747 ]
  br i1 %752, label %753, label %755, !dx.controlflow.hints !66

; <label>:753                                     ; preds = %751
  %754 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 undef, i32 undef, i32 %748)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %754, i32 addrspace(3)* @"\01?surfBufferPos@@3IA", align 4, !tbaa !47
  br label %755

; <label>:755                                     ; preds = %753, %751
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %756 = udiv i32 %18, %661
  %757 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %660, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %669, label %784, label %758, !dx.controlflow.hints !67

; <label>:758                                     ; preds = %755
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %759 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %759, label %760, label %762, !dx.controlflow.hints !68

; <label>:760                                     ; preds = %758
  %761 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %756
  store i32 %757, i32 addrspace(3)* %761, align 4, !tbaa !47
  br label %762

; <label>:762                                     ; preds = %760, %758
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %763 = icmp eq i32 %661, 32
  br i1 %763, label %764, label %769, !dx.controlflow.hints !69

; <label>:764                                     ; preds = %762
  %765 = xor i32 %756, 1
  %766 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %765
  %767 = load i32, i32 addrspace(3)* %766, align 4, !tbaa !47
  %768 = call i32 @dx.op.binary.i32(i32 39, i32 %757, i32 %767)  ; UMax(a,b)
  br label %784

; <label>:769                                     ; preds = %762
  %770 = icmp eq i32 %661, 16
  br i1 %770, label %771, label %784, !dx.controlflow.hints !70

; <label>:771                                     ; preds = %769
  %772 = xor i32 %756, 3
  %773 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %772
  %774 = load i32, i32 addrspace(3)* %773, align 4, !tbaa !47
  %775 = xor i32 %756, 2
  %776 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %775
  %777 = load i32, i32 addrspace(3)* %776, align 4, !tbaa !47
  %778 = call i32 @dx.op.binary.i32(i32 39, i32 %777, i32 %774)  ; UMax(a,b)
  %779 = xor i32 %756, 1
  %780 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %779
  %781 = load i32, i32 addrspace(3)* %780, align 4, !tbaa !47
  %782 = call i32 @dx.op.binary.i32(i32 39, i32 %757, i32 %781)  ; UMax(a,b)
  %783 = call i32 @dx.op.binary.i32(i32 39, i32 %782, i32 %778)  ; UMax(a,b)
  br label %784

; <label>:784                                     ; preds = %771, %769, %764, %755
  %785 = phi i32 [ %768, %764 ], [ %783, %771 ], [ %757, %755 ], [ 0, %769 ]
  %786 = icmp ne i32 %640, 0
  %787 = icmp ne i32 %785, 0
  %788 = and i1 %786, %787
  br i1 %788, label %789, label %848, !dx.controlflow.hints !71

; <label>:789                                     ; preds = %784
  br label %790

; <label>:790                                     ; preds = %843, %789
  %791 = phi i32 [ %844, %843 ], [ %711, %789 ]
  %792 = phi i32 [ %845, %843 ], [ 0, %789 ]
  %793 = icmp ult i32 %792, %660
  br i1 %793, label %794, label %843, !dx.controlflow.hints !72

; <label>:794                                     ; preds = %790
  %795 = add i32 %792, %659
  %796 = lshr i32 %795, 16
  %797 = and i32 %795, 65535
  %798 = and i32 %90, 268435455
  %799 = shl i32 %796, 28
  %800 = or i32 %799, %798
  %801 = and i32 %642, 255
  %802 = shl nuw nsw i32 %38, 8
  %803 = or i32 %801, %802
  %804 = shl nuw i32 %803, 16
  %805 = or i32 %797, %804
  %806 = load i32, i32 addrspace(3)* @"\01?surfBufferPos@@3IA", align 4, !tbaa !47
  %807 = add i32 %806, %791
  %808 = shl i32 %807, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %808, i32 undef, i32 %800, i32 %805, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %809 = shl i32 %90, 3
  %810 = or i32 %809, 4
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = shl nuw nsw i32 %25, 2
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %814, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = icmp eq i32 %816, 0
  br i1 %817, label %826, label %818, !dx.controlflow.hints !73

; <label>:818                                     ; preds = %794
  %819 = add i32 %18, 536870911
  %820 = add i32 %819, %81
  %821 = add i32 %820, %816
  %822 = shl i32 %821, 3
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %822, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = extractvalue %dx.types.ResRet.i32 %823, 1
  br label %826

; <label>:826                                     ; preds = %818, %794
  %827 = phi i32 [ %824, %818 ], [ 0, %794 ]
  %828 = phi i32 [ %825, %818 ], [ 0, %794 ]
  %829 = icmp ne i32 %813, 0
  %830 = icmp ne i32 %828, 0
  %831 = and i1 %829, %830
  br i1 %831, label %832, label %837, !dx.controlflow.hints !74

; <label>:832                                     ; preds = %826
  %833 = lshr i32 %828, 1
  %834 = and i32 %828, 1
  %835 = mul i32 %833, %792
  %836 = add i32 %835, %827
  br label %837

; <label>:837                                     ; preds = %832, %826
  %838 = phi i32 [ %836, %832 ], [ 0, %826 ]
  %839 = phi i32 [ %834, %832 ], [ 1, %826 ]
  %840 = shl i32 %641, 1
  %841 = or i32 %839, %840
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %808, i32 undef, i32 %838, i32 %841, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %842 = add i32 %791, 1
  br label %843

; <label>:843                                     ; preds = %837, %790
  %844 = phi i32 [ %842, %837 ], [ %791, %790 ]
  %845 = add nuw i32 %792, 1
  %846 = icmp eq i32 %845, %785
  br i1 %846, label %847, label %790

; <label>:847                                     ; preds = %843
  br label %848

; <label>:848                                     ; preds = %847, %784
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.flattenedThreadIdInGroup.i32(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneAt.i32(i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneIndex(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveActiveOp.i32(i32, i32, i8, i8) #1

; Function Attrs: nounwind
declare i32 @dx.op.wavePrefixOp.i32(i32, i32, i8, i8) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #1

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.Handle @dx.op.createHandle(i32, i8, i32, i32, i1) #3

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32, %dx.types.Handle, i32, i32) #3

; Function Attrs: nounwind
declare void @dx.op.bufferStore.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i8) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32, %dx.types.Handle, i32, i32) #3

attributes #0 = { nounwind readnone }
attributes #1 = { nounwind }
attributes #2 = { noduplicate nounwind }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}
!dx.version = !{!1}
!dx.valver = !{!2}
!dx.shaderModel = !{!3}
!dx.resources = !{!4}
!dx.entryPoints = !{!25}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !19, !23, null}
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !15, !16, !17, !18}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i32 0, null}
!8 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 11, i32 1, i32 11, i32 0, null}
!9 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 12, i32 1, i32 11, i32 0, null}
!10 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 13, i32 1, i32 11, i32 0, null}
!11 = !{i32 5, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 20, i32 1, i32 11, i32 0, null}
!12 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 21, i32 1, i32 11, i32 0, null}
!13 = !{i32 7, %"class.StructuredBuffer<GfxClutterCollectionGPUData>"* undef, !"", i32 0, i32 22, i32 1, i32 12, i32 0, !14}
!14 = !{i32 1, i32 8}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 24, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 25, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 39, i32 1, i32 11, i32 0, null}
!18 = !{i32 11, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 40, i32 1, i32 11, i32 0, null}
!19 = !{!20, !21, !22}
!20 = !{i32 0, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!21 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 3, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!22 = !{i32 2, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 6, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!23 = !{!24}
!24 = !{i32 0, %GPLodParamsConsts* undef, !"", i32 0, i32 2, i32 1, i32 80, null}
!25 = !{void ()* @smodel_surf_gen_pass, !"smodel_surf_gen_pass", null, !4, !26}
!26 = !{i32 0, i64 524560, i32 4, !27}
!27 = !{i32 64, i32 1, i32 1}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !54}
!52 = distinct !{!52, !53, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z: %outOffset"}
!53 = distinct !{!53, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z"}
!54 = distinct !{!54, !53, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z: %outTotalSum"}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}
!67 = distinct !{!67, !"dx.controlflow.hints", i32 2}
!68 = distinct !{!68, !"dx.controlflow.hints", i32 2}
!69 = distinct !{!69, !"dx.controlflow.hints", i32 2}
!70 = distinct !{!70, !"dx.controlflow.hints", i32 2}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 2}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 2}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 2}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 2}

