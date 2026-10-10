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
; shader hash: e920147446aab9ba138c5212408a801f
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
;   [1424 x i8] (type annotation not present)
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
;                                   texture    byte         r/o      T0             t0     1
;                                   texture  struct         r/o      T1             t1     1
;                                       UAV  struct         r/w      U0             u1     1
;                                       UAV    byte         r/w      U1             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4

define void @cs_decal_volume_cluster_pass_single() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %7 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %8 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %10 = alloca [8 x float], align 4
  %11 = alloca [8 x float], align 4
  %12 = alloca [8 x float], align 4
  %13 = shl i32 %7, 20
  %14 = shl i32 %8, 8
  %15 = or i32 %14, %13
  %16 = or i32 %15, %9
  %17 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %18 = extractvalue %dx.types.ResRet.i32 %17, 0
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 0
  %21 = extractvalue %dx.types.CBufRet.i32 %19, 1
  %22 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %23 = extractvalue %dx.types.CBufRet.f32 %22, 0
  %24 = extractvalue %dx.types.CBufRet.f32 %22, 1
  %25 = extractvalue %dx.types.CBufRet.f32 %22, 2
  %26 = lshr i32 %16, 20
  %27 = lshr i32 %16, 8
  %28 = and i32 %27, 4095
  %29 = and i32 %9, 255
  %30 = icmp ult i32 %26, %20
  %31 = icmp ult i32 %28, %21
  %32 = and i1 %30, %31
  %33 = icmp eq i32 %6, 0
  br i1 %33, label %34, label %42, !dx.controlflow.hints !17

; <label>:34                                      ; preds = %0
  %35 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %36 = extractvalue %dx.types.CBufRet.i32 %35, 1
  %37 = extractvalue %dx.types.CBufRet.i32 %19, 3
  %38 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %39 = extractvalue %dx.types.CBufRet.i32 %38, 1
  %40 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %36, i32 0, i32 undef, i32 %39)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %41 = add i32 %40, %37
  br label %42

; <label>:42                                      ; preds = %34, %0
  %43 = phi i32 [ %41, %34 ], [ 0, %0 ]
  %44 = lshr i32 %6, 6
  %45 = and i32 %6, 63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49, !dx.controlflow.hints !18

; <label>:47                                      ; preds = %42
  %48 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %44
  store i32 %43, i32 addrspace(3)* %48, align 4, !tbaa !19
  br label %49

; <label>:49                                      ; preds = %47, %42
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %50 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %44
  %51 = load i32, i32 addrspace(3)* %50, align 4, !tbaa !19
  %52 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %53 = extractvalue %dx.types.CBufRet.f32 %52, 1
  %54 = extractvalue %dx.types.CBufRet.f32 %52, 0
  %55 = uitofp i32 %26 to float
  %56 = uitofp i32 %28 to float
  %57 = uitofp i32 %29 to float
  %58 = fmul fast float %25, %57
  %59 = fsub fast float %53, %54
  %60 = fmul fast float %58, %59
  %61 = fadd fast float %60, %54
  %62 = fadd fast float %57, 1.000000e+00
  %63 = fmul fast float %25, %62
  %64 = fmul fast float %63, %59
  %65 = fadd fast float %64, %54
  %66 = fmul fast float %55, 2.000000e+00
  %67 = fmul fast float %66, %23
  %68 = fadd fast float %67, -1.000000e+00
  %69 = fadd fast float %55, 1.000000e+00
  %70 = fmul fast float %69, 2.000000e+00
  %71 = fmul fast float %70, %23
  %72 = fadd fast float %71, -1.000000e+00
  %73 = fadd fast float %56, 1.000000e+00
  %74 = fmul fast float %73, 2.000000e+00
  %75 = fmul fast float %74, %24
  %76 = fsub fast float 1.000000e+00, %75
  %77 = fmul fast float %56, 2.000000e+00
  %78 = fmul fast float %77, %24
  %79 = fsub fast float 1.000000e+00, %78
  %80 = add i32 %18, 63
  %81 = and i32 %80, -64
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %383, label %83

; <label>:83                                      ; preds = %49
  br label %84

; <label>:84                                      ; preds = %378, %83
  %85 = phi i32 [ %379, %378 ], [ 0, %83 ]
  %86 = phi i32 [ %380, %378 ], [ 0, %83 ]
  %87 = add i32 %86, %6
  %88 = icmp ult i32 %87, %18
  br i1 %88, label %89, label %299, !dx.controlflow.hints !23

; <label>:89                                      ; preds = %84
  %90 = mul i32 %87, 48
  %91 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %90, i32 undef)  ; BufferLoad(srv,index,wot)
  %92 = extractvalue %dx.types.ResRet.f32 %91, 0
  %93 = extractvalue %dx.types.ResRet.f32 %91, 1
  %94 = extractvalue %dx.types.ResRet.f32 %91, 2
  %95 = or i32 %90, 12
  %96 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %95, i32 undef)  ; BufferLoad(srv,index,wot)
  %97 = extractvalue %dx.types.ResRet.f32 %96, 0
  %98 = extractvalue %dx.types.ResRet.f32 %96, 1
  %99 = extractvalue %dx.types.ResRet.f32 %96, 2
  %100 = add i32 %90, 24
  %101 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %100, i32 undef)  ; BufferLoad(srv,index,wot)
  %102 = extractvalue %dx.types.ResRet.f32 %101, 0
  %103 = extractvalue %dx.types.ResRet.f32 %101, 1
  %104 = extractvalue %dx.types.ResRet.f32 %101, 2
  %105 = add i32 %90, 36
  %106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %4, i32 %105, i32 undef)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.f32 %106, 0
  %108 = extractvalue %dx.types.ResRet.f32 %106, 1
  %109 = extractvalue %dx.types.ResRet.f32 %106, 2
  %110 = fsub fast float %92, %97
  %111 = fsub fast float %93, %98
  %112 = fsub fast float %94, %99
  %113 = fsub fast float %110, %102
  %114 = fsub fast float %111, %103
  %115 = fsub fast float %112, %104
  %116 = fadd fast float %113, %107
  %117 = fadd fast float %114, %108
  %118 = fadd fast float %115, %109
  %119 = fsub fast float %113, %107
  %120 = fsub fast float %114, %108
  %121 = fsub fast float %115, %109
  %122 = fadd fast float %97, %92
  %123 = fadd fast float %98, %93
  %124 = fadd fast float %99, %94
  %125 = fsub fast float %122, %102
  %126 = fsub fast float %123, %103
  %127 = fsub fast float %124, %104
  %128 = fsub fast float %125, %107
  %129 = fsub fast float %126, %108
  %130 = fsub fast float %127, %109
  %131 = fadd fast float %110, %102
  %132 = fadd fast float %111, %103
  %133 = fadd fast float %112, %104
  %134 = fsub fast float %131, %107
  %135 = fsub fast float %132, %108
  %136 = fsub fast float %133, %109
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 0
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 1
  %140 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.f32 %141, 0
  %143 = extractvalue %dx.types.CBufRet.f32 %141, 1
  %144 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = extractvalue %dx.types.CBufRet.f32 %145, 0
  %147 = extractvalue %dx.types.CBufRet.f32 %145, 1
  %148 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %5, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = extractvalue %dx.types.CBufRet.f32 %149, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %149, 3
  %153 = fmul fast float %138, %116
  %154 = call float @dx.op.tertiary.f32(i32 46, float %142, float %117, float %153)  ; FMad(a,b,c)
  %155 = call float @dx.op.tertiary.f32(i32 46, float %146, float %118, float %154)  ; FMad(a,b,c)
  %156 = fadd fast float %155, %150
  %157 = fmul fast float %139, %116
  %158 = call float @dx.op.tertiary.f32(i32 46, float %143, float %117, float %157)  ; FMad(a,b,c)
  %159 = call float @dx.op.tertiary.f32(i32 46, float %147, float %118, float %158)  ; FMad(a,b,c)
  %160 = fadd fast float %159, %151
  %161 = fmul fast float %140, %116
  %162 = call float @dx.op.tertiary.f32(i32 46, float %144, float %117, float %161)  ; FMad(a,b,c)
  %163 = call float @dx.op.tertiary.f32(i32 46, float %148, float %118, float %162)  ; FMad(a,b,c)
  %164 = fadd fast float %163, %152
  %165 = fmul fast float %138, %119
  %166 = call float @dx.op.tertiary.f32(i32 46, float %142, float %120, float %165)  ; FMad(a,b,c)
  %167 = call float @dx.op.tertiary.f32(i32 46, float %146, float %121, float %166)  ; FMad(a,b,c)
  %168 = fadd fast float %167, %150
  %169 = fmul fast float %139, %119
  %170 = call float @dx.op.tertiary.f32(i32 46, float %143, float %120, float %169)  ; FMad(a,b,c)
  %171 = call float @dx.op.tertiary.f32(i32 46, float %147, float %121, float %170)  ; FMad(a,b,c)
  %172 = fadd fast float %171, %151
  %173 = fmul fast float %140, %119
  %174 = call float @dx.op.tertiary.f32(i32 46, float %144, float %120, float %173)  ; FMad(a,b,c)
  %175 = call float @dx.op.tertiary.f32(i32 46, float %148, float %121, float %174)  ; FMad(a,b,c)
  %176 = fadd fast float %175, %152
  %177 = fmul fast float %138, %128
  %178 = call float @dx.op.tertiary.f32(i32 46, float %142, float %129, float %177)  ; FMad(a,b,c)
  %179 = call float @dx.op.tertiary.f32(i32 46, float %146, float %130, float %178)  ; FMad(a,b,c)
  %180 = fadd fast float %179, %150
  %181 = fmul fast float %139, %128
  %182 = call float @dx.op.tertiary.f32(i32 46, float %143, float %129, float %181)  ; FMad(a,b,c)
  %183 = call float @dx.op.tertiary.f32(i32 46, float %147, float %130, float %182)  ; FMad(a,b,c)
  %184 = fadd fast float %183, %151
  %185 = fmul fast float %140, %128
  %186 = call float @dx.op.tertiary.f32(i32 46, float %144, float %129, float %185)  ; FMad(a,b,c)
  %187 = call float @dx.op.tertiary.f32(i32 46, float %148, float %130, float %186)  ; FMad(a,b,c)
  %188 = fadd fast float %187, %152
  %189 = fmul fast float %138, %134
  %190 = call float @dx.op.tertiary.f32(i32 46, float %142, float %135, float %189)  ; FMad(a,b,c)
  %191 = call float @dx.op.tertiary.f32(i32 46, float %146, float %136, float %190)  ; FMad(a,b,c)
  %192 = fadd fast float %191, %150
  %193 = fmul fast float %139, %134
  %194 = call float @dx.op.tertiary.f32(i32 46, float %143, float %135, float %193)  ; FMad(a,b,c)
  %195 = call float @dx.op.tertiary.f32(i32 46, float %147, float %136, float %194)  ; FMad(a,b,c)
  %196 = fadd fast float %195, %151
  %197 = fmul fast float %140, %134
  %198 = call float @dx.op.tertiary.f32(i32 46, float %144, float %135, float %197)  ; FMad(a,b,c)
  %199 = call float @dx.op.tertiary.f32(i32 46, float %148, float %136, float %198)  ; FMad(a,b,c)
  %200 = fadd fast float %199, %152
  %201 = fsub fast float %179, %167
  %202 = fsub fast float %183, %171
  %203 = fsub fast float %187, %175
  %204 = fsub fast float %191, %167
  %205 = fsub fast float %195, %171
  %206 = fsub fast float %199, %175
  %207 = fadd fast float %201, %156
  %208 = fadd fast float %202, %160
  %209 = fadd fast float %203, %164
  %210 = fadd fast float %204, %207
  %211 = fadd fast float %205, %208
  %212 = fadd fast float %206, %209
  %213 = fadd fast float %204, %156
  %214 = fadd fast float %205, %160
  %215 = fadd fast float %206, %164
  %216 = fadd fast float %204, %180
  %217 = fadd fast float %205, %184
  %218 = fadd fast float %206, %188
  %219 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 0
  %220 = getelementptr [8 x float], [8 x float]* %11, i32 0, i32 0
  %221 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 0
  store float %156, float* %219, align 4
  store float %160, float* %220, align 4
  store float %164, float* %221, align 4
  %222 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 1
  %223 = getelementptr [8 x float], [8 x float]* %11, i32 0, i32 1
  %224 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 1
  store float %207, float* %222, align 4
  store float %208, float* %223, align 4
  store float %209, float* %224, align 4
  %225 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 2
  %226 = getelementptr [8 x float], [8 x float]* %11, i32 0, i32 2
  %227 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 2
  store float %210, float* %225, align 4
  store float %211, float* %226, align 4
  store float %212, float* %227, align 4
  %228 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 3
  %229 = getelementptr [8 x float], [8 x float]* %11, i32 0, i32 3
  %230 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 3
  store float %213, float* %228, align 4
  store float %214, float* %229, align 4
  store float %215, float* %230, align 4
  %231 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 4
  %232 = getelementptr [8 x float], [8 x float]* %11, i32 0, i32 4
  %233 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 4
  store float %168, float* %231, align 4
  store float %172, float* %232, align 4
  store float %176, float* %233, align 4
  %234 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 5
  %235 = getelementptr [8 x float], [8 x float]* %11, i32 0, i32 5
  %236 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 5
  store float %180, float* %234, align 4
  store float %184, float* %235, align 4
  store float %188, float* %236, align 4
  %237 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 6
  %238 = getelementptr [8 x float], [8 x float]* %11, i32 0, i32 6
  %239 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 6
  store float %216, float* %237, align 4
  store float %217, float* %238, align 4
  store float %218, float* %239, align 4
  %240 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 7
  %241 = getelementptr [8 x float], [8 x float]* %11, i32 0, i32 7
  %242 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 7
  store float %192, float* %240, align 4
  store float %196, float* %241, align 4
  store float %200, float* %242, align 4
  br label %243

; <label>:243                                     ; preds = %278, %89
  %244 = phi float [ %164, %89 ], [ %290, %278 ]
  %245 = phi float [ %160, %89 ], [ %288, %278 ]
  %246 = phi float [ %156, %89 ], [ %286, %278 ]
  %247 = phi i32 [ 1, %89 ], [ %284, %278 ]
  %248 = phi i32 [ 1, %89 ], [ %283, %278 ]
  %249 = phi i32 [ 1, %89 ], [ %282, %278 ]
  %250 = phi i32 [ 1, %89 ], [ %281, %278 ]
  %251 = phi i32 [ 1, %89 ], [ %280, %278 ]
  %252 = phi i32 [ 1, %89 ], [ %279, %278 ]
  %253 = phi i32 [ 0, %89 ], [ %276, %278 ]
  %254 = icmp ne i32 %247, 0
  %255 = fmul fast float %244, %68
  %256 = fcmp fast olt float %246, %255
  %257 = and i1 %254, %256
  %258 = icmp ne i32 %248, 0
  %259 = fmul fast float %244, %72
  %260 = fcmp fast ogt float %246, %259
  %261 = and i1 %258, %260
  %262 = icmp ne i32 %249, 0
  %263 = fmul fast float %244, %76
  %264 = fcmp fast olt float %245, %263
  %265 = and i1 %262, %264
  %266 = icmp ne i32 %250, 0
  %267 = fmul fast float %244, %79
  %268 = fcmp fast ogt float %245, %267
  %269 = and i1 %266, %268
  %270 = icmp ne i32 %251, 0
  %271 = fcmp fast olt float %244, %61
  %272 = and i1 %270, %271
  %273 = icmp ne i32 %252, 0
  %274 = fcmp fast ogt float %244, %65
  %275 = and i1 %273, %274
  %276 = add nuw nsw i32 %253, 1
  %277 = icmp eq i32 %276, 8
  br i1 %277, label %291, label %278

; <label>:278                                     ; preds = %243
  %279 = zext i1 %275 to i32
  %280 = zext i1 %272 to i32
  %281 = zext i1 %269 to i32
  %282 = zext i1 %265 to i32
  %283 = zext i1 %261 to i32
  %284 = zext i1 %257 to i32
  %285 = getelementptr [8 x float], [8 x float]* %10, i32 0, i32 %276
  %286 = load float, float* %285, align 4
  %287 = getelementptr [8 x float], [8 x float]* %11, i32 0, i32 %276
  %288 = load float, float* %287, align 4
  %289 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 %276
  %290 = load float, float* %289, align 4
  br label %243

; <label>:291                                     ; preds = %243
  %292 = or i1 %257, %261
  %293 = or i1 %265, %292
  %294 = or i1 %269, %293
  %295 = or i1 %272, %294
  %296 = or i1 %275, %295
  %297 = zext i1 %296 to i32
  %298 = xor i32 %297, 1
  br label %299

; <label>:299                                     ; preds = %291, %84
  %300 = phi i32 [ %298, %291 ], [ 0, %84 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %301 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %6
  store i32 %300, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %302 = and i32 %6, 1
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %310, label %304, !dx.controlflow.hints !28

; <label>:304                                     ; preds = %299
  %305 = and i32 %6, -2
  %306 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %305
  %307 = load i32, i32 addrspace(3)* %306, align 4, !tbaa !19, !noalias !24
  %308 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  %309 = add i32 %308, %307
  store i32 %309, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  br label %310

; <label>:310                                     ; preds = %304, %299
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %311 = and i32 %6, 2
  %312 = icmp eq i32 %311, 0
  br i1 %312, label %320, label %313, !dx.controlflow.hints !29

; <label>:313                                     ; preds = %310
  %314 = and i32 %6, -4
  %315 = or i32 %314, 1
  %316 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %315
  %317 = load i32, i32 addrspace(3)* %316, align 4, !tbaa !19, !noalias !24
  %318 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  %319 = add i32 %318, %317
  store i32 %319, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  br label %320

; <label>:320                                     ; preds = %313, %310
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %321 = and i32 %6, 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %330, label %323, !dx.controlflow.hints !30

; <label>:323                                     ; preds = %320
  %324 = and i32 %6, -8
  %325 = or i32 %324, 3
  %326 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %325
  %327 = load i32, i32 addrspace(3)* %326, align 4, !tbaa !19, !noalias !24
  %328 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  %329 = add i32 %328, %327
  store i32 %329, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  br label %330

; <label>:330                                     ; preds = %323, %320
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %331 = and i32 %6, 8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %340, label %333, !dx.controlflow.hints !31

; <label>:333                                     ; preds = %330
  %334 = and i32 %6, -16
  %335 = or i32 %334, 7
  %336 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %335
  %337 = load i32, i32 addrspace(3)* %336, align 4, !tbaa !19, !noalias !24
  %338 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  %339 = add i32 %338, %337
  store i32 %339, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  br label %340

; <label>:340                                     ; preds = %333, %330
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %341 = and i32 %6, 16
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %350, label %343, !dx.controlflow.hints !32

; <label>:343                                     ; preds = %340
  %344 = and i32 %6, -32
  %345 = or i32 %344, 15
  %346 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %345
  %347 = load i32, i32 addrspace(3)* %346, align 4, !tbaa !19, !noalias !24
  %348 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  %349 = add i32 %348, %347
  store i32 %349, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  br label %350

; <label>:350                                     ; preds = %343, %340
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %351 = and i32 %6, 32
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %355, !dx.controlflow.hints !33

; <label>:353                                     ; preds = %350
  %354 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  br label %362

; <label>:355                                     ; preds = %350
  %356 = and i32 %6, -64
  %357 = or i32 %356, 31
  %358 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %357
  %359 = load i32, i32 addrspace(3)* %358, align 4, !tbaa !19, !noalias !24
  %360 = load i32, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  %361 = add i32 %360, %359
  store i32 %361, i32 addrspace(3)* %301, align 4, !tbaa !19, !noalias !24
  br label %362

; <label>:362                                     ; preds = %355, %353
  %363 = phi i32 [ %354, %353 ], [ %361, %355 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %364 = or i32 %6, 63
  %365 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %364
  %366 = load i32, i32 addrspace(3)* %365, align 4, !tbaa !19, !noalias !24
  %367 = sub i32 %363, %300
  %368 = icmp ne i32 %300, 0
  %369 = add i32 %367, %85
  %370 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %371 = extractvalue %dx.types.CBufRet.i32 %370, 1
  %372 = icmp ult i32 %369, %371
  %373 = and i1 %368, %372
  br i1 %373, label %374, label %378, !dx.controlflow.hints !34

; <label>:374                                     ; preds = %362
  %375 = add i32 %85, %51
  %376 = add i32 %375, %367
  %377 = shl i32 %376, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %377, i32 undef, i32 %87, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %378

; <label>:378                                     ; preds = %374, %362
  %379 = add i32 %366, %85
  %380 = add nuw i32 %86, 64
  %381 = icmp ult i32 %380, %81
  br i1 %381, label %84, label %382

; <label>:382                                     ; preds = %378
  br label %383

; <label>:383                                     ; preds = %382, %49
  %384 = phi i32 [ 0, %49 ], [ %379, %382 ]
  %385 = and i1 %33, %32
  br i1 %385, label %386, label %404, !dx.controlflow.hints !35

; <label>:386                                     ; preds = %383
  %387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %388 = extractvalue %dx.types.CBufRet.i32 %387, 0
  %389 = icmp ult i32 %51, %388
  %390 = icmp ne i32 %384, 0
  %391 = and i1 %390, %389
  br i1 %391, label %392, label %404, !dx.controlflow.hints !36

; <label>:392                                     ; preds = %386
  %393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %5, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %394 = extractvalue %dx.types.CBufRet.i32 %393, 0
  %395 = extractvalue %dx.types.CBufRet.i32 %393, 1
  %396 = mul i32 %395, %29
  %397 = add i32 %396, %28
  %398 = mul i32 %397, %394
  %399 = add i32 %398, %26
  %400 = and i32 %384, 1023
  %401 = shl i32 %51, 10
  %402 = or i32 %400, %401
  %403 = shl i32 %399, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %403, i32 undef, i32 %402, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %404

; <label>:404                                     ; preds = %392, %386, %383
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

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
!dx.entryPoints = !{!14}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !12, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 4}
!9 = !{!10, !11}
!10 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !8}
!11 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!12 = !{!13}
!13 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!14 = !{void ()* @cs_decal_volume_cluster_pass_single, !"cs_decal_volume_cluster_pass_single", null, !4, !15}
!15 = !{i32 0, i64 272, i32 4, !16}
!16 = !{i32 64, i32 1, i32 1}
!17 = distinct !{!17, !"dx.controlflow.hints", i32 2}
!18 = distinct !{!18, !"dx.controlflow.hints", i32 2}
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = !{!25, !27}
!25 = distinct !{!25, !26, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!26 = distinct !{!26, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!27 = distinct !{!27, !26, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = distinct !{!32, !"dx.controlflow.hints", i32 2}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}

