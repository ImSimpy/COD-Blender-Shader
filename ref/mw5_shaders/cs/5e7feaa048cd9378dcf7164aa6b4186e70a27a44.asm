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
; shader hash: 7bc2352f942c24893ebe08e40c8f0e38
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
  br i1 %85, label %91, label %637, !dx.controlflow.hints !29

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
  br i1 %104, label %637, label %105, !dx.controlflow.hints !30

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
  br i1 %317, label %637, label %318, !dx.controlflow.hints !34

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
  br i1 %333, label %334, label %637, !dx.controlflow.hints !37

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
  %361 = extractvalue %dx.types.ResRet.i32 %360, 3
  %362 = bitcast i32 %361 to float
  %363 = shl nuw nsw i32 %38, 4
  %364 = or i32 %363, 4096
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %364, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = extractvalue %dx.types.ResRet.i32 %365, 1
  %368 = extractvalue %dx.types.ResRet.i32 %365, 2
  %369 = extractvalue %dx.types.ResRet.i32 %365, 3
  %370 = icmp eq i32 %369, 1
  %371 = add nuw nsw i32 %363, 5120
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = extractvalue %dx.types.ResRet.i32 %372, 1
  %375 = bitcast i32 %373 to float
  %376 = bitcast i32 %374 to float
  %377 = bitcast float %233 to i32
  %378 = bitcast float %237 to i32
  %379 = bitcast float %241 to i32
  %380 = select i1 %370, i32 0, i32 %366
  %381 = select i1 %370, i32 0, i32 %367
  %382 = select i1 %370, i32 0, i32 %368
  %383 = sub i32 %377, %380
  %384 = sub i32 %378, %381
  %385 = sub i32 %379, %382
  %386 = sitofp i32 %383 to float
  %387 = sitofp i32 %384 to float
  %388 = sitofp i32 %385 to float
  %389 = fmul fast float %386, 0x3F30000000000000
  %390 = fmul fast float %387, 0x3F30000000000000
  %391 = fmul fast float %388, 0x3F30000000000000
  %392 = fmul fast float %340, %230
  %393 = call float @dx.op.tertiary.f32(i32 46, float %234, float %348, float %392)  ; FMad(a,b,c)
  %394 = call float @dx.op.tertiary.f32(i32 46, float %238, float %356, float %393)  ; FMad(a,b,c)
  %395 = fmul fast float %341, %230
  %396 = call float @dx.op.tertiary.f32(i32 46, float %234, float %349, float %395)  ; FMad(a,b,c)
  %397 = call float @dx.op.tertiary.f32(i32 46, float %238, float %357, float %396)  ; FMad(a,b,c)
  %398 = fmul fast float %342, %230
  %399 = call float @dx.op.tertiary.f32(i32 46, float %234, float %350, float %398)  ; FMad(a,b,c)
  %400 = call float @dx.op.tertiary.f32(i32 46, float %238, float %358, float %399)  ; FMad(a,b,c)
  %401 = fmul fast float %340, %231
  %402 = call float @dx.op.tertiary.f32(i32 46, float %235, float %348, float %401)  ; FMad(a,b,c)
  %403 = call float @dx.op.tertiary.f32(i32 46, float %239, float %356, float %402)  ; FMad(a,b,c)
  %404 = fmul fast float %341, %231
  %405 = call float @dx.op.tertiary.f32(i32 46, float %235, float %349, float %404)  ; FMad(a,b,c)
  %406 = call float @dx.op.tertiary.f32(i32 46, float %239, float %357, float %405)  ; FMad(a,b,c)
  %407 = fmul fast float %342, %231
  %408 = call float @dx.op.tertiary.f32(i32 46, float %235, float %350, float %407)  ; FMad(a,b,c)
  %409 = call float @dx.op.tertiary.f32(i32 46, float %239, float %358, float %408)  ; FMad(a,b,c)
  %410 = fmul fast float %340, %232
  %411 = call float @dx.op.tertiary.f32(i32 46, float %236, float %348, float %410)  ; FMad(a,b,c)
  %412 = call float @dx.op.tertiary.f32(i32 46, float %240, float %356, float %411)  ; FMad(a,b,c)
  %413 = fmul fast float %341, %232
  %414 = call float @dx.op.tertiary.f32(i32 46, float %236, float %349, float %413)  ; FMad(a,b,c)
  %415 = call float @dx.op.tertiary.f32(i32 46, float %240, float %357, float %414)  ; FMad(a,b,c)
  %416 = fmul fast float %342, %232
  %417 = call float @dx.op.tertiary.f32(i32 46, float %236, float %350, float %416)  ; FMad(a,b,c)
  %418 = call float @dx.op.tertiary.f32(i32 46, float %240, float %358, float %417)  ; FMad(a,b,c)
  %419 = fmul fast float %389, %342
  %420 = call float @dx.op.tertiary.f32(i32 46, float %390, float %350, float %419)  ; FMad(a,b,c)
  %421 = call float @dx.op.tertiary.f32(i32 46, float %391, float %358, float %420)  ; FMad(a,b,c)
  %422 = fadd fast float %421, %362
  %423 = select i1 %87, float %227, float %70
  %424 = select i1 %87, float %228, float %71
  %425 = select i1 %87, float %229, float %72
  %426 = select i1 %87, float %224, float %78
  %427 = select i1 %87, float %225, float %79
  %428 = select i1 %87, float %226, float %80
  %429 = fsub fast float %423, %426
  %430 = fsub fast float %424, %427
  %431 = fsub fast float %425, %428
  %432 = fmul fast float %400, %429
  %433 = call float @dx.op.tertiary.f32(i32 46, float %430, float %409, float %432)  ; FMad(a,b,c)
  %434 = call float @dx.op.tertiary.f32(i32 46, float %431, float %418, float %433)  ; FMad(a,b,c)
  %435 = fadd fast float %422, %434
  %436 = fmul fast float %426, 2.000000e+00
  %437 = fmul fast float %427, 2.000000e+00
  %438 = fmul fast float %428, 2.000000e+00
  %439 = fmul fast float %394, %436
  %440 = fmul fast float %397, %436
  %441 = fmul fast float %400, %436
  %442 = fmul fast float %403, %437
  %443 = fmul fast float %406, %437
  %444 = fmul fast float %409, %437
  %445 = fmul fast float %412, %438
  %446 = fmul fast float %415, %438
  %447 = fmul fast float %418, %438
  %448 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 0
  %449 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 0
  %450 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 0
  store float 0.000000e+00, float* %448, align 4
  store float 0.000000e+00, float* %449, align 4
  store float 0.000000e+00, float* %450, align 4
  %451 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 1
  %452 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 1
  %453 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 1
  store float %439, float* %451, align 4
  store float %440, float* %452, align 4
  store float %441, float* %453, align 4
  %454 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 2
  %455 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 2
  %456 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 2
  store float %442, float* %454, align 4
  store float %443, float* %455, align 4
  store float %444, float* %456, align 4
  %457 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 3
  %458 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 3
  %459 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 3
  %460 = fsub fast float -0.000000e+00, %439
  %461 = fsub fast float -0.000000e+00, %440
  %462 = fsub fast float -0.000000e+00, %441
  store float %460, float* %457, align 4
  store float %461, float* %458, align 4
  store float %462, float* %459, align 4
  %463 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 4
  %464 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 4
  %465 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 4
  store float %445, float* %463, align 4
  store float %446, float* %464, align 4
  store float %447, float* %465, align 4
  %466 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 5
  %467 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 5
  %468 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 5
  store float %439, float* %466, align 4
  store float %440, float* %467, align 4
  store float %441, float* %468, align 4
  %469 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 6
  %470 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 6
  %471 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 6
  %472 = fsub fast float -0.000000e+00, %442
  %473 = fsub fast float -0.000000e+00, %443
  %474 = fsub fast float -0.000000e+00, %444
  store float %472, float* %469, align 4
  store float %473, float* %470, align 4
  store float %474, float* %471, align 4
  %475 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 7
  %476 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 7
  %477 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 7
  store float %460, float* %475, align 4
  store float %461, float* %476, align 4
  store float %462, float* %477, align 4
  %478 = fcmp fast olt float %435, 0.000000e+00
  %479 = zext i1 %478 to i32
  %480 = fadd fast float %435, %441
  %481 = fcmp fast olt float %480, 0.000000e+00
  %482 = select i1 %481, i32 2, i32 0
  %483 = or i32 %482, %479
  %484 = fadd fast float %480, %444
  %485 = fcmp fast olt float %484, 0.000000e+00
  %486 = select i1 %485, i32 4, i32 0
  %487 = or i32 %483, %486
  %488 = fsub fast float %484, %441
  %489 = fcmp fast olt float %488, 0.000000e+00
  %490 = select i1 %489, i32 8, i32 0
  %491 = or i32 %487, %490
  %492 = fadd fast float %488, %447
  %493 = fcmp fast olt float %492, 0.000000e+00
  %494 = select i1 %493, i32 16, i32 0
  %495 = or i32 %491, %494
  %496 = fadd fast float %492, %441
  %497 = fcmp fast olt float %496, 0.000000e+00
  %498 = select i1 %497, i32 32, i32 0
  %499 = or i32 %495, %498
  %500 = fsub fast float %496, %444
  %501 = fcmp fast olt float %500, 0.000000e+00
  %502 = select i1 %501, i32 64, i32 0
  %503 = or i32 %499, %502
  %504 = fsub fast float %500, %441
  %505 = fcmp fast olt float %504, 0.000000e+00
  %506 = select i1 %505, i32 128, i32 0
  %507 = or i32 %503, %506
  %508 = icmp eq i32 %507, 255
  br i1 %508, label %588, label %509, !dx.controlflow.hints !38

; <label>:509                                     ; preds = %334
  %510 = icmp eq i32 %507, 0
  br i1 %510, label %511, label %588, !dx.controlflow.hints !39

; <label>:511                                     ; preds = %509
  %512 = fmul fast float %389, %340
  %513 = call float @dx.op.tertiary.f32(i32 46, float %390, float %348, float %512)  ; FMad(a,b,c)
  %514 = call float @dx.op.tertiary.f32(i32 46, float %391, float %356, float %513)  ; FMad(a,b,c)
  %515 = extractvalue %dx.types.ResRet.i32 %360, 0
  %516 = bitcast i32 %515 to float
  %517 = fadd fast float %514, %516
  %518 = fmul fast float %394, %429
  %519 = call float @dx.op.tertiary.f32(i32 46, float %430, float %403, float %518)  ; FMad(a,b,c)
  %520 = call float @dx.op.tertiary.f32(i32 46, float %431, float %412, float %519)  ; FMad(a,b,c)
  %521 = fadd fast float %517, %520
  %522 = fmul fast float %389, %341
  %523 = call float @dx.op.tertiary.f32(i32 46, float %390, float %349, float %522)  ; FMad(a,b,c)
  %524 = call float @dx.op.tertiary.f32(i32 46, float %391, float %357, float %523)  ; FMad(a,b,c)
  %525 = extractvalue %dx.types.ResRet.i32 %360, 1
  %526 = bitcast i32 %525 to float
  %527 = fadd fast float %524, %526
  %528 = fmul fast float %397, %429
  %529 = call float @dx.op.tertiary.f32(i32 46, float %430, float %406, float %528)  ; FMad(a,b,c)
  %530 = call float @dx.op.tertiary.f32(i32 46, float %431, float %415, float %529)  ; FMad(a,b,c)
  %531 = fadd fast float %527, %530
  br label %532

; <label>:532                                     ; preds = %561, %511
  %533 = phi float [ %567, %561 ], [ 0.000000e+00, %511 ]
  %534 = phi float [ %565, %561 ], [ 0.000000e+00, %511 ]
  %535 = phi float [ %563, %561 ], [ 0.000000e+00, %511 ]
  %536 = phi float [ %555, %561 ], [ 9.999999e+06, %511 ]
  %537 = phi float [ %556, %561 ], [ 9.999999e+06, %511 ]
  %538 = phi float [ %557, %561 ], [ -9.999999e+06, %511 ]
  %539 = phi float [ %558, %561 ], [ -9.999999e+06, %511 ]
  %540 = phi float [ %544, %561 ], [ %521, %511 ]
  %541 = phi float [ %545, %561 ], [ %531, %511 ]
  %542 = phi float [ %546, %561 ], [ %435, %511 ]
  %543 = phi i32 [ %559, %561 ], [ 0, %511 ]
  %544 = fadd fast float %535, %540
  %545 = fadd fast float %534, %541
  %546 = fadd fast float %533, %542
  %547 = fdiv fast float %544, %546
  %548 = fdiv fast float %545, %546
  %549 = fmul fast float %547, 5.000000e-01
  %550 = fmul fast float %548, 5.000000e-01
  %551 = fadd fast float %549, 5.000000e-01
  %552 = fsub fast float 5.000000e-01, %550
  %553 = call float @dx.op.unary.f32(i32 7, float %551)  ; Saturate(value)
  %554 = call float @dx.op.unary.f32(i32 7, float %552)  ; Saturate(value)
  %555 = call float @dx.op.binary.f32(i32 36, float %536, float %553)  ; FMin(a,b)
  %556 = call float @dx.op.binary.f32(i32 36, float %537, float %554)  ; FMin(a,b)
  %557 = call float @dx.op.binary.f32(i32 35, float %538, float %553)  ; FMax(a,b)
  %558 = call float @dx.op.binary.f32(i32 35, float %539, float %554)  ; FMax(a,b)
  %559 = add nuw nsw i32 %543, 1
  %560 = icmp eq i32 %559, 8
  br i1 %560, label %568, label %561

; <label>:561                                     ; preds = %532
  %562 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 %559
  %563 = load float, float* %562, align 4
  %564 = getelementptr [8 x float], [8 x float]* %20, i32 0, i32 %559
  %565 = load float, float* %564, align 4
  %566 = getelementptr [8 x float], [8 x float]* %21, i32 0, i32 %559
  %567 = load float, float* %566, align 4
  br label %532

; <label>:568                                     ; preds = %532
  %569 = fcmp fast ole float %557, 0.000000e+00
  %570 = fcmp fast oge float %555, 1.000000e+00
  %571 = or i1 %570, %569
  %572 = fcmp fast ole float %558, 0.000000e+00
  %573 = or i1 %571, %572
  %574 = fcmp fast oge float %556, 1.000000e+00
  %575 = or i1 %574, %573
  br i1 %575, label %588, label %576, !dx.controlflow.hints !40

; <label>:576                                     ; preds = %568
  %577 = fmul fast float %555, %375
  %578 = fmul fast float %556, %376
  %579 = fmul fast float %557, %375
  %580 = fmul fast float %558, %376
  %581 = call float @dx.op.unary.f32(i32 26, float %577)  ; Round_ne(value)
  %582 = call float @dx.op.unary.f32(i32 26, float %578)  ; Round_ne(value)
  %583 = call float @dx.op.unary.f32(i32 26, float %579)  ; Round_ne(value)
  %584 = call float @dx.op.unary.f32(i32 26, float %580)  ; Round_ne(value)
  %585 = fcmp une float %581, %583
  %586 = fcmp une float %582, %584
  %587 = and i1 %585, %586
  br label %588

; <label>:588                                     ; preds = %576, %568, %509, %334
  %589 = phi i1 [ false, %334 ], [ true, %509 ], [ false, %568 ], [ %587, %576 ]
  %590 = phi float [ undef, %334 ], [ undef, %509 ], [ undef, %568 ], [ %555, %576 ]
  %591 = phi float [ undef, %334 ], [ undef, %509 ], [ undef, %568 ], [ %556, %576 ]
  %592 = phi float [ undef, %334 ], [ undef, %509 ], [ undef, %568 ], [ %557, %576 ]
  %593 = phi float [ undef, %334 ], [ undef, %509 ], [ undef, %568 ], [ %558, %576 ]
  %594 = xor i1 %589, true
  %595 = or i1 %87, %594
  %596 = zext i1 %594 to i32
  %597 = xor i32 %596, 1
  %598 = select i1 %589, i32 255, i32 0
  br i1 %595, label %637, label %599, !dx.controlflow.hints !41

; <label>:599                                     ; preds = %588
  %600 = fsub fast float %592, %590
  %601 = call float @dx.op.unary.f32(i32 6, float %600)  ; FAbs(value)
  %602 = fsub fast float %593, %591
  %603 = call float @dx.op.unary.f32(i32 6, float %602)  ; FAbs(value)
  %604 = call float @dx.op.binary.f32(i32 35, float %601, float %603)  ; FMax(a,b)
  %605 = call float @dx.op.unary.f32(i32 7, float %604)  ; Saturate(value)
  %606 = fadd fast float %605, -1.000000e+00
  br i1 %88, label %607, label %622, !dx.controlflow.hints !42

; <label>:607                                     ; preds = %599
  %608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %609 = extractvalue %dx.types.CBufRet.f32 %608, 2
  %610 = fadd fast float %606, %609
  %611 = extractvalue %dx.types.CBufRet.f32 %608, 3
  %612 = fmul fast float %610, %611
  %613 = call float @dx.op.unary.f32(i32 7, float %612)  ; Saturate(value)
  %614 = extractvalue %dx.types.CBufRet.f32 %608, 0
  %615 = fsub fast float %614, %273
  %616 = extractvalue %dx.types.CBufRet.f32 %608, 1
  %617 = fmul fast float %615, %616
  %618 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %619 = fmul fast float %613, 2.540000e+02
  %620 = fmul fast float %619, %618
  %621 = fptoui float %620 to i32
  br label %637

; <label>:622                                     ; preds = %599
  %623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %16, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %624 = extractvalue %dx.types.CBufRet.f32 %623, 2
  %625 = fadd fast float %606, %624
  %626 = extractvalue %dx.types.CBufRet.f32 %623, 3
  %627 = fmul fast float %625, %626
  %628 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %629 = extractvalue %dx.types.CBufRet.f32 %623, 0
  %630 = fsub fast float %629, %273
  %631 = extractvalue %dx.types.CBufRet.f32 %623, 1
  %632 = fmul fast float %630, %631
  %633 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %634 = fmul fast float %628, 2.540000e+02
  %635 = fmul fast float %634, %633
  %636 = fptoui float %635 to i32
  br label %637

; <label>:637                                     ; preds = %622, %607, %588, %330, %312, %91, %56
  %638 = phi i32 [ 0, %56 ], [ 0, %91 ], [ 0, %312 ], [ 0, %330 ], [ %597, %588 ], [ 1, %622 ], [ 1, %607 ]
  %639 = phi i32 [ 0, %56 ], [ undef, %91 ], [ %313, %312 ], [ %313, %330 ], [ %313, %588 ], [ %313, %622 ], [ %313, %607 ]
  %640 = phi i32 [ 0, %56 ], [ 0, %91 ], [ 0, %312 ], [ 0, %330 ], [ %598, %588 ], [ %636, %622 ], [ %621, %607 ]
  %641 = icmp eq i32 %638, 0
  br i1 %641, label %656, label %642, !dx.controlflow.hints !43

; <label>:642                                     ; preds = %637
  %643 = lshr i32 %639, 1
  %644 = shl i32 %643, 2
  %645 = shl i32 %639, 4
  %646 = add nuw nsw i32 %59, 28
  %647 = add i32 %646, %644
  %648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %647, i32 undef)  ; BufferLoad(srv,index,wot)
  %649 = extractvalue %dx.types.ResRet.i32 %648, 0
  %650 = and i32 %645, 16
  %651 = lshr i32 %649, %650
  %652 = and i32 %651, 255
  %653 = lshr i32 %651, 8
  %654 = and i32 %653, 255
  %655 = add nuw nsw i32 %652, %62
  br label %656

; <label>:656                                     ; preds = %642, %637
  %657 = phi i32 [ %655, %642 ], [ 0, %637 ]
  %658 = phi i32 [ %654, %642 ], [ 0, %637 ]
  %659 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %660 = and i32 %18, 63
  %661 = udiv i32 %660, %659
  %662 = udiv i32 64, %659
  %663 = lshr i32 %18, 6
  %664 = mul i32 %662, %663
  %665 = call i32 @dx.op.wavePrefixOp.i32(i32 121, i32 %658, i8 0, i8 1)  ; WavePrefixOp(value,op,sop)
  %666 = add i32 %665, %658
  %667 = icmp eq i32 %659, 64
  br i1 %667, label %707, label %668, !dx.controlflow.hints !44

; <label>:668                                     ; preds = %656
  %669 = call i32 @dx.op.waveGetLaneIndex(i32 111)  ; WaveGetLaneIndex()
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %670 = add i32 %659, -1
  %671 = icmp eq i32 %669, %670
  br i1 %671, label %672, label %675, !dx.controlflow.hints !45

; <label>:672                                     ; preds = %668
  %673 = add i32 %664, %661
  %674 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %673
  store i32 %666, i32 addrspace(3)* %674, align 4, !tbaa !46, !noalias !50
  br label %675

; <label>:675                                     ; preds = %672, %668
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %676 = icmp eq i32 %659, 32
  br i1 %676, label %677, label %683, !dx.controlflow.hints !54

; <label>:677                                     ; preds = %675
  %678 = icmp ugt i32 %660, 31
  br i1 %678, label %679, label %707, !dx.controlflow.hints !55

; <label>:679                                     ; preds = %677
  %680 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %664
  %681 = load i32, i32 addrspace(3)* %680, align 4, !tbaa !46, !noalias !50
  %682 = add i32 %681, %666
  br label %707

; <label>:683                                     ; preds = %675
  %684 = icmp eq i32 %659, 16
  br i1 %684, label %685, label %707, !dx.controlflow.hints !56

; <label>:685                                     ; preds = %683
  %686 = icmp ugt i32 %660, 15
  br i1 %686, label %687, label %691, !dx.controlflow.hints !57

; <label>:687                                     ; preds = %685
  %688 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %664
  %689 = load i32, i32 addrspace(3)* %688, align 4, !tbaa !46, !noalias !50
  %690 = add i32 %689, %666
  br label %691

; <label>:691                                     ; preds = %687, %685
  %692 = phi i32 [ %690, %687 ], [ %666, %685 ]
  %693 = icmp ugt i32 %660, 31
  br i1 %693, label %694, label %699, !dx.controlflow.hints !58

; <label>:694                                     ; preds = %691
  %695 = add i32 %664, 1
  %696 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %695
  %697 = load i32, i32 addrspace(3)* %696, align 4, !tbaa !46, !noalias !50
  %698 = add i32 %697, %692
  br label %699

; <label>:699                                     ; preds = %694, %691
  %700 = phi i32 [ %698, %694 ], [ %692, %691 ]
  %701 = icmp ugt i32 %660, 47
  br i1 %701, label %702, label %707, !dx.controlflow.hints !59

; <label>:702                                     ; preds = %699
  %703 = add i32 %664, 2
  %704 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %703
  %705 = load i32, i32 addrspace(3)* %704, align 4, !tbaa !46, !noalias !50
  %706 = add i32 %705, %700
  br label %707

; <label>:707                                     ; preds = %702, %699, %683, %679, %677, %656
  %708 = phi i32 [ %666, %656 ], [ %682, %679 ], [ %666, %677 ], [ %706, %702 ], [ %700, %699 ], [ 0, %683 ]
  %709 = sub i32 %708, %658
  br i1 %667, label %710, label %712, !dx.controlflow.hints !60

; <label>:710                                     ; preds = %707
  %711 = call i32 @dx.op.waveReadLaneAt.i32(i32 117, i32 %708, i32 63)  ; WaveReadLaneAt(value,lane)
  br label %745

; <label>:712                                     ; preds = %707
  %713 = icmp eq i32 %659, 32
  br i1 %713, label %714, label %721, !dx.controlflow.hints !61

; <label>:714                                     ; preds = %712
  %715 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %664
  %716 = load i32, i32 addrspace(3)* %715, align 4, !tbaa !46, !noalias !50
  %717 = add i32 %664, 1
  %718 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %717
  %719 = load i32, i32 addrspace(3)* %718, align 4, !tbaa !46, !noalias !50
  %720 = add i32 %719, %716
  br label %745

; <label>:721                                     ; preds = %712
  %722 = icmp eq i32 %659, 16
  br i1 %722, label %723, label %738, !dx.controlflow.hints !62

; <label>:723                                     ; preds = %721
  %724 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %664
  %725 = load i32, i32 addrspace(3)* %724, align 4, !tbaa !46, !noalias !50
  %726 = add i32 %664, 1
  %727 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %726
  %728 = load i32, i32 addrspace(3)* %727, align 4, !tbaa !46, !noalias !50
  %729 = add i32 %728, %725
  %730 = add i32 %664, 2
  %731 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %730
  %732 = load i32, i32 addrspace(3)* %731, align 4, !tbaa !46, !noalias !50
  %733 = add i32 %729, %732
  %734 = add i32 %664, 3
  %735 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %734
  %736 = load i32, i32 addrspace(3)* %735, align 4, !tbaa !46, !noalias !50
  %737 = add i32 %733, %736
  br label %745

; <label>:738                                     ; preds = %721
  %739 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %658, i8 0, i8 1)  ; WaveActiveOp(value,op,sop)
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %740 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %740, label %741, label %744, !dx.controlflow.hints !63

; <label>:741                                     ; preds = %738
  %742 = udiv i32 %18, %659
  %743 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %742
  store i32 %739, i32 addrspace(3)* %743, align 4, !tbaa !46, !noalias !50
  br label %744

; <label>:744                                     ; preds = %741, %738
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br label %745

; <label>:745                                     ; preds = %744, %723, %714, %710
  %746 = phi i32 [ %711, %710 ], [ %720, %714 ], [ %737, %723 ], [ 0, %744 ]
  %747 = icmp eq i32 %18, 0
  br i1 %747, label %748, label %749, !dx.controlflow.hints !64

; <label>:748                                     ; preds = %745
  store i32 0, i32 addrspace(3)* @"\01?surfBufferPos@@3IA", align 4, !tbaa !46
  br label %749

; <label>:749                                     ; preds = %748, %745
  %750 = phi i1 [ %747, %748 ], [ false, %745 ]
  br i1 %750, label %751, label %753, !dx.controlflow.hints !65

; <label>:751                                     ; preds = %749
  %752 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 0, i32 undef, i32 undef, i32 %746)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %752, i32 addrspace(3)* @"\01?surfBufferPos@@3IA", align 4, !tbaa !46
  br label %753

; <label>:753                                     ; preds = %751, %749
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %754 = udiv i32 %18, %659
  %755 = call i32 @dx.op.waveActiveOp.i32(i32 119, i32 %658, i8 3, i8 1)  ; WaveActiveOp(value,op,sop)
  br i1 %667, label %782, label %756, !dx.controlflow.hints !66

; <label>:756                                     ; preds = %753
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %757 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %757, label %758, label %760, !dx.controlflow.hints !67

; <label>:758                                     ; preds = %756
  %759 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %754
  store i32 %755, i32 addrspace(3)* %759, align 4, !tbaa !46
  br label %760

; <label>:760                                     ; preds = %758, %756
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %761 = icmp eq i32 %659, 32
  br i1 %761, label %762, label %767, !dx.controlflow.hints !68

; <label>:762                                     ; preds = %760
  %763 = xor i32 %754, 1
  %764 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %763
  %765 = load i32, i32 addrspace(3)* %764, align 4, !tbaa !46
  %766 = call i32 @dx.op.binary.i32(i32 39, i32 %755, i32 %765)  ; UMax(a,b)
  br label %782

; <label>:767                                     ; preds = %760
  %768 = icmp eq i32 %659, 16
  br i1 %768, label %769, label %782, !dx.controlflow.hints !69

; <label>:769                                     ; preds = %767
  %770 = xor i32 %754, 3
  %771 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %770
  %772 = load i32, i32 addrspace(3)* %771, align 4, !tbaa !46
  %773 = xor i32 %754, 2
  %774 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %773
  %775 = load i32, i32 addrspace(3)* %774, align 4, !tbaa !46
  %776 = call i32 @dx.op.binary.i32(i32 39, i32 %775, i32 %772)  ; UMax(a,b)
  %777 = xor i32 %754, 1
  %778 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %777
  %779 = load i32, i32 addrspace(3)* %778, align 4, !tbaa !46
  %780 = call i32 @dx.op.binary.i32(i32 39, i32 %755, i32 %779)  ; UMax(a,b)
  %781 = call i32 @dx.op.binary.i32(i32 39, i32 %780, i32 %776)  ; UMax(a,b)
  br label %782

; <label>:782                                     ; preds = %769, %767, %762, %753
  %783 = phi i32 [ %766, %762 ], [ %781, %769 ], [ %755, %753 ], [ 0, %767 ]
  %784 = icmp ne i32 %638, 0
  %785 = icmp ne i32 %783, 0
  %786 = and i1 %784, %785
  br i1 %786, label %787, label %846, !dx.controlflow.hints !70

; <label>:787                                     ; preds = %782
  br label %788

; <label>:788                                     ; preds = %841, %787
  %789 = phi i32 [ %842, %841 ], [ %709, %787 ]
  %790 = phi i32 [ %843, %841 ], [ 0, %787 ]
  %791 = icmp ult i32 %790, %658
  br i1 %791, label %792, label %841, !dx.controlflow.hints !71

; <label>:792                                     ; preds = %788
  %793 = add i32 %790, %657
  %794 = lshr i32 %793, 16
  %795 = and i32 %793, 65535
  %796 = and i32 %90, 268435455
  %797 = shl i32 %794, 28
  %798 = or i32 %797, %796
  %799 = and i32 %640, 255
  %800 = shl nuw nsw i32 %38, 8
  %801 = or i32 %799, %800
  %802 = shl nuw i32 %801, 16
  %803 = or i32 %795, %802
  %804 = load i32, i32 addrspace(3)* @"\01?surfBufferPos@@3IA", align 4, !tbaa !46
  %805 = add i32 %804, %789
  %806 = shl i32 %805, 3
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %2, i32 %806, i32 undef, i32 %798, i32 %803, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %807 = shl i32 %90, 3
  %808 = or i32 %807, 4
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = shl nuw nsw i32 %25, 2
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = icmp eq i32 %814, 0
  br i1 %815, label %824, label %816, !dx.controlflow.hints !72

; <label>:816                                     ; preds = %792
  %817 = add i32 %18, 536870911
  %818 = add i32 %817, %81
  %819 = add i32 %818, %814
  %820 = shl i32 %819, 3
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = extractvalue %dx.types.ResRet.i32 %821, 1
  br label %824

; <label>:824                                     ; preds = %816, %792
  %825 = phi i32 [ %822, %816 ], [ 0, %792 ]
  %826 = phi i32 [ %823, %816 ], [ 0, %792 ]
  %827 = icmp ne i32 %811, 0
  %828 = icmp ne i32 %826, 0
  %829 = and i1 %827, %828
  br i1 %829, label %830, label %835, !dx.controlflow.hints !73

; <label>:830                                     ; preds = %824
  %831 = lshr i32 %826, 1
  %832 = and i32 %826, 1
  %833 = mul i32 %831, %790
  %834 = add i32 %833, %825
  br label %835

; <label>:835                                     ; preds = %830, %824
  %836 = phi i32 [ %834, %830 ], [ 0, %824 ]
  %837 = phi i32 [ %832, %830 ], [ 1, %824 ]
  %838 = shl i32 %639, 1
  %839 = or i32 %837, %838
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %806, i32 undef, i32 %836, i32 %839, i32 undef, i32 undef, i8 3)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  %840 = add i32 %789, 1
  br label %841

; <label>:841                                     ; preds = %835, %788
  %842 = phi i32 [ %840, %835 ], [ %789, %788 ]
  %843 = add nuw i32 %790, 1
  %844 = icmp eq i32 %843, %783
  br i1 %844, label %845, label %788

; <label>:845                                     ; preds = %841
  br label %846

; <label>:846                                     ; preds = %845, %782
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
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !53}
!51 = distinct !{!51, !52, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z: %outOffset"}
!52 = distinct !{!52, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z"}
!53 = distinct !{!53, !52, !"\01?TiledSumAndOffsets64@@YAXIIAIAI0@Z: %outTotalSum"}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
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

