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
; shader hash: 2628bd461fb2ebff2ec99046d88e5e80
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
;   [12 x i8] (type annotation not present)
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
;                                       UAV  struct         r/w      U0             u2     1
;                                       UAV  struct         r/w      U1             u3     1
;                                       UAV  struct         r/w      U2             u1     1
;                                       UAV    byte         r/w      U3             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.fouri32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.RWStructuredBuffer<CellIndirection>" = type { %struct.CellIndirection }
%struct.CellIndirection = type { i32, i32, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4

define void @cs_decal_volume_cluster_pass_first() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %9 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 1)  ; GroupId(component)
  %11 = call i32 @dx.op.groupId.i32(i32 94, i32 2)  ; GroupId(component)
  %12 = alloca [8 x float], align 4
  %13 = alloca [8 x float], align 4
  %14 = alloca [8 x float], align 4
  %15 = shl i32 %9, 20
  %16 = shl i32 %10, 8
  %17 = or i32 %16, %15
  %18 = or i32 %17, %11
  %19 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %20 = extractvalue %dx.types.ResRet.i32 %19, 0
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 0
  %23 = extractvalue %dx.types.CBufRet.i32 %21, 1
  %24 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %25 = extractvalue %dx.types.CBufRet.f32 %24, 0
  %26 = extractvalue %dx.types.CBufRet.f32 %24, 1
  %27 = extractvalue %dx.types.CBufRet.f32 %24, 2
  %28 = lshr i32 %18, 20
  %29 = lshr i32 %18, 8
  %30 = and i32 %29, 4095
  %31 = and i32 %11, 255
  %32 = icmp ult i32 %28, %22
  %33 = icmp ult i32 %30, %23
  %34 = and i1 %32, %33
  %35 = icmp eq i32 %8, 0
  br i1 %35, label %36, label %42, !dx.controlflow.hints !20

; <label>:36                                      ; preds = %0
  %37 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %38 = extractvalue %dx.types.CBufRet.i32 %37, 1
  %39 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %40 = extractvalue %dx.types.CBufRet.i32 %39, 1
  %41 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %38, i32 0, i32 undef, i32 %40)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %42

; <label>:42                                      ; preds = %36, %0
  %43 = phi i32 [ %41, %36 ], [ 0, %0 ]
  %44 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %45 = lshr i32 %8, 6
  %46 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %43)  ; WaveReadLaneFirst(value)
  %47 = icmp eq i32 %44, 64
  br i1 %47, label %56, label %48, !dx.controlflow.hints !21

; <label>:48                                      ; preds = %42
  %49 = and i32 %8, 63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53, !dx.controlflow.hints !22

; <label>:51                                      ; preds = %48
  %52 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %45
  store i32 %46, i32 addrspace(3)* %52, align 4, !tbaa !23
  br label %53

; <label>:53                                      ; preds = %51, %48
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %54 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %45
  %55 = load i32, i32 addrspace(3)* %54, align 4, !tbaa !23
  br label %56

; <label>:56                                      ; preds = %53, %42
  %57 = phi i32 [ %55, %53 ], [ %46, %42 ]
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 1
  %60 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %61 = uitofp i32 %28 to float
  %62 = uitofp i32 %30 to float
  %63 = uitofp i32 %31 to float
  %64 = fmul fast float %27, %63
  %65 = fsub fast float %59, %60
  %66 = fmul fast float %64, %65
  %67 = fadd fast float %66, %60
  %68 = fadd fast float %63, 1.000000e+00
  %69 = fmul fast float %27, %68
  %70 = fmul fast float %69, %65
  %71 = fadd fast float %70, %60
  %72 = fmul fast float %61, 2.000000e+00
  %73 = fmul fast float %72, %25
  %74 = fadd fast float %73, -1.000000e+00
  %75 = fadd fast float %61, 1.000000e+00
  %76 = fmul fast float %75, 2.000000e+00
  %77 = fmul fast float %76, %25
  %78 = fadd fast float %77, -1.000000e+00
  %79 = fadd fast float %62, 1.000000e+00
  %80 = fmul fast float %79, 2.000000e+00
  %81 = fmul fast float %80, %26
  %82 = fsub fast float 1.000000e+00, %81
  %83 = fmul fast float %62, 2.000000e+00
  %84 = fmul fast float %83, %26
  %85 = fsub fast float 1.000000e+00, %84
  %86 = add i32 %20, 63
  %87 = and i32 %86, -64
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %364, label %89

; <label>:89                                      ; preds = %56
  br label %90

; <label>:90                                      ; preds = %358, %89
  %91 = phi i32 [ %360, %358 ], [ 0, %89 ]
  %92 = phi i32 [ %361, %358 ], [ 0, %89 ]
  %93 = add i32 %92, %8
  %94 = icmp ult i32 %93, %20
  br i1 %94, label %95, label %305, !dx.controlflow.hints !27

; <label>:95                                      ; preds = %90
  %96 = mul i32 %93, 48
  %97 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %96, i32 undef)  ; BufferLoad(srv,index,wot)
  %98 = extractvalue %dx.types.ResRet.f32 %97, 0
  %99 = extractvalue %dx.types.ResRet.f32 %97, 1
  %100 = extractvalue %dx.types.ResRet.f32 %97, 2
  %101 = or i32 %96, 12
  %102 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %101, i32 undef)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.f32 %102, 0
  %104 = extractvalue %dx.types.ResRet.f32 %102, 1
  %105 = extractvalue %dx.types.ResRet.f32 %102, 2
  %106 = add i32 %96, 24
  %107 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %106, i32 undef)  ; BufferLoad(srv,index,wot)
  %108 = extractvalue %dx.types.ResRet.f32 %107, 0
  %109 = extractvalue %dx.types.ResRet.f32 %107, 1
  %110 = extractvalue %dx.types.ResRet.f32 %107, 2
  %111 = add i32 %96, 36
  %112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %111, i32 undef)  ; BufferLoad(srv,index,wot)
  %113 = extractvalue %dx.types.ResRet.f32 %112, 0
  %114 = extractvalue %dx.types.ResRet.f32 %112, 1
  %115 = extractvalue %dx.types.ResRet.f32 %112, 2
  %116 = fsub fast float %98, %103
  %117 = fsub fast float %99, %104
  %118 = fsub fast float %100, %105
  %119 = fsub fast float %116, %108
  %120 = fsub fast float %117, %109
  %121 = fsub fast float %118, %110
  %122 = fadd fast float %119, %113
  %123 = fadd fast float %120, %114
  %124 = fadd fast float %121, %115
  %125 = fsub fast float %119, %113
  %126 = fsub fast float %120, %114
  %127 = fsub fast float %121, %115
  %128 = fadd fast float %103, %98
  %129 = fadd fast float %104, %99
  %130 = fadd fast float %105, %100
  %131 = fsub fast float %128, %108
  %132 = fsub fast float %129, %109
  %133 = fsub fast float %130, %110
  %134 = fsub fast float %131, %113
  %135 = fsub fast float %132, %114
  %136 = fsub fast float %133, %115
  %137 = fadd fast float %116, %108
  %138 = fadd fast float %117, %109
  %139 = fadd fast float %118, %110
  %140 = fsub fast float %137, %113
  %141 = fsub fast float %138, %114
  %142 = fsub fast float %139, %115
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 0
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 1
  %146 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 0
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 1
  %150 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 0
  %153 = extractvalue %dx.types.CBufRet.f32 %151, 1
  %154 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %7, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = extractvalue %dx.types.CBufRet.f32 %155, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %155, 3
  %159 = fmul fast float %144, %122
  %160 = call float @dx.op.tertiary.f32(i32 46, float %148, float %123, float %159)  ; FMad(a,b,c)
  %161 = call float @dx.op.tertiary.f32(i32 46, float %152, float %124, float %160)  ; FMad(a,b,c)
  %162 = fadd fast float %161, %156
  %163 = fmul fast float %145, %122
  %164 = call float @dx.op.tertiary.f32(i32 46, float %149, float %123, float %163)  ; FMad(a,b,c)
  %165 = call float @dx.op.tertiary.f32(i32 46, float %153, float %124, float %164)  ; FMad(a,b,c)
  %166 = fadd fast float %165, %157
  %167 = fmul fast float %146, %122
  %168 = call float @dx.op.tertiary.f32(i32 46, float %150, float %123, float %167)  ; FMad(a,b,c)
  %169 = call float @dx.op.tertiary.f32(i32 46, float %154, float %124, float %168)  ; FMad(a,b,c)
  %170 = fadd fast float %169, %158
  %171 = fmul fast float %144, %125
  %172 = call float @dx.op.tertiary.f32(i32 46, float %148, float %126, float %171)  ; FMad(a,b,c)
  %173 = call float @dx.op.tertiary.f32(i32 46, float %152, float %127, float %172)  ; FMad(a,b,c)
  %174 = fadd fast float %173, %156
  %175 = fmul fast float %145, %125
  %176 = call float @dx.op.tertiary.f32(i32 46, float %149, float %126, float %175)  ; FMad(a,b,c)
  %177 = call float @dx.op.tertiary.f32(i32 46, float %153, float %127, float %176)  ; FMad(a,b,c)
  %178 = fadd fast float %177, %157
  %179 = fmul fast float %146, %125
  %180 = call float @dx.op.tertiary.f32(i32 46, float %150, float %126, float %179)  ; FMad(a,b,c)
  %181 = call float @dx.op.tertiary.f32(i32 46, float %154, float %127, float %180)  ; FMad(a,b,c)
  %182 = fadd fast float %181, %158
  %183 = fmul fast float %144, %134
  %184 = call float @dx.op.tertiary.f32(i32 46, float %148, float %135, float %183)  ; FMad(a,b,c)
  %185 = call float @dx.op.tertiary.f32(i32 46, float %152, float %136, float %184)  ; FMad(a,b,c)
  %186 = fadd fast float %185, %156
  %187 = fmul fast float %145, %134
  %188 = call float @dx.op.tertiary.f32(i32 46, float %149, float %135, float %187)  ; FMad(a,b,c)
  %189 = call float @dx.op.tertiary.f32(i32 46, float %153, float %136, float %188)  ; FMad(a,b,c)
  %190 = fadd fast float %189, %157
  %191 = fmul fast float %146, %134
  %192 = call float @dx.op.tertiary.f32(i32 46, float %150, float %135, float %191)  ; FMad(a,b,c)
  %193 = call float @dx.op.tertiary.f32(i32 46, float %154, float %136, float %192)  ; FMad(a,b,c)
  %194 = fadd fast float %193, %158
  %195 = fmul fast float %144, %140
  %196 = call float @dx.op.tertiary.f32(i32 46, float %148, float %141, float %195)  ; FMad(a,b,c)
  %197 = call float @dx.op.tertiary.f32(i32 46, float %152, float %142, float %196)  ; FMad(a,b,c)
  %198 = fadd fast float %197, %156
  %199 = fmul fast float %145, %140
  %200 = call float @dx.op.tertiary.f32(i32 46, float %149, float %141, float %199)  ; FMad(a,b,c)
  %201 = call float @dx.op.tertiary.f32(i32 46, float %153, float %142, float %200)  ; FMad(a,b,c)
  %202 = fadd fast float %201, %157
  %203 = fmul fast float %146, %140
  %204 = call float @dx.op.tertiary.f32(i32 46, float %150, float %141, float %203)  ; FMad(a,b,c)
  %205 = call float @dx.op.tertiary.f32(i32 46, float %154, float %142, float %204)  ; FMad(a,b,c)
  %206 = fadd fast float %205, %158
  %207 = fsub fast float %185, %173
  %208 = fsub fast float %189, %177
  %209 = fsub fast float %193, %181
  %210 = fsub fast float %197, %173
  %211 = fsub fast float %201, %177
  %212 = fsub fast float %205, %181
  %213 = fadd fast float %207, %162
  %214 = fadd fast float %208, %166
  %215 = fadd fast float %209, %170
  %216 = fadd fast float %210, %213
  %217 = fadd fast float %211, %214
  %218 = fadd fast float %212, %215
  %219 = fadd fast float %210, %162
  %220 = fadd fast float %211, %166
  %221 = fadd fast float %212, %170
  %222 = fadd fast float %210, %186
  %223 = fadd fast float %211, %190
  %224 = fadd fast float %212, %194
  %225 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 0
  %226 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 0
  %227 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 0
  store float %162, float* %225, align 4
  store float %166, float* %226, align 4
  store float %170, float* %227, align 4
  %228 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 1
  %229 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 1
  %230 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 1
  store float %213, float* %228, align 4
  store float %214, float* %229, align 4
  store float %215, float* %230, align 4
  %231 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 2
  %232 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 2
  %233 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 2
  store float %216, float* %231, align 4
  store float %217, float* %232, align 4
  store float %218, float* %233, align 4
  %234 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 3
  %235 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 3
  %236 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 3
  store float %219, float* %234, align 4
  store float %220, float* %235, align 4
  store float %221, float* %236, align 4
  %237 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 4
  %238 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 4
  %239 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 4
  store float %174, float* %237, align 4
  store float %178, float* %238, align 4
  store float %182, float* %239, align 4
  %240 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 5
  %241 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 5
  %242 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 5
  store float %186, float* %240, align 4
  store float %190, float* %241, align 4
  store float %194, float* %242, align 4
  %243 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 6
  %244 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 6
  %245 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 6
  store float %222, float* %243, align 4
  store float %223, float* %244, align 4
  store float %224, float* %245, align 4
  %246 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 7
  %247 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 7
  %248 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 7
  store float %198, float* %246, align 4
  store float %202, float* %247, align 4
  store float %206, float* %248, align 4
  br label %249

; <label>:249                                     ; preds = %284, %95
  %250 = phi float [ %170, %95 ], [ %296, %284 ]
  %251 = phi float [ %166, %95 ], [ %294, %284 ]
  %252 = phi float [ %162, %95 ], [ %292, %284 ]
  %253 = phi i32 [ 1, %95 ], [ %290, %284 ]
  %254 = phi i32 [ 1, %95 ], [ %289, %284 ]
  %255 = phi i32 [ 1, %95 ], [ %288, %284 ]
  %256 = phi i32 [ 1, %95 ], [ %287, %284 ]
  %257 = phi i32 [ 1, %95 ], [ %286, %284 ]
  %258 = phi i32 [ 1, %95 ], [ %285, %284 ]
  %259 = phi i32 [ 0, %95 ], [ %282, %284 ]
  %260 = icmp ne i32 %253, 0
  %261 = fmul fast float %250, %74
  %262 = fcmp fast olt float %252, %261
  %263 = and i1 %260, %262
  %264 = icmp ne i32 %254, 0
  %265 = fmul fast float %250, %78
  %266 = fcmp fast ogt float %252, %265
  %267 = and i1 %264, %266
  %268 = icmp ne i32 %255, 0
  %269 = fmul fast float %250, %82
  %270 = fcmp fast olt float %251, %269
  %271 = and i1 %268, %270
  %272 = icmp ne i32 %256, 0
  %273 = fmul fast float %250, %85
  %274 = fcmp fast ogt float %251, %273
  %275 = and i1 %272, %274
  %276 = icmp ne i32 %257, 0
  %277 = fcmp fast olt float %250, %67
  %278 = and i1 %276, %277
  %279 = icmp ne i32 %258, 0
  %280 = fcmp fast ogt float %250, %71
  %281 = and i1 %279, %280
  %282 = add nuw nsw i32 %259, 1
  %283 = icmp eq i32 %282, 8
  br i1 %283, label %297, label %284

; <label>:284                                     ; preds = %249
  %285 = zext i1 %281 to i32
  %286 = zext i1 %278 to i32
  %287 = zext i1 %275 to i32
  %288 = zext i1 %271 to i32
  %289 = zext i1 %267 to i32
  %290 = zext i1 %263 to i32
  %291 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 %282
  %292 = load float, float* %291, align 4
  %293 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 %282
  %294 = load float, float* %293, align 4
  %295 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 %282
  %296 = load float, float* %295, align 4
  br label %249

; <label>:297                                     ; preds = %249
  %298 = or i1 %263, %267
  %299 = or i1 %271, %298
  %300 = or i1 %275, %299
  %301 = or i1 %278, %300
  %302 = or i1 %281, %301
  %303 = zext i1 %302 to i32
  %304 = xor i32 %303, 1
  br label %305

; <label>:305                                     ; preds = %297, %90
  %306 = phi i32 [ %304, %297 ], [ 0, %90 ]
  %307 = icmp ne i32 %306, 0
  %308 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %307)  ; WaveActiveBallot(cond)
  %309 = extractvalue %dx.types.fouri32 %308, 0
  %310 = extractvalue %dx.types.fouri32 %308, 1
  %311 = icmp ugt i32 %44, 63
  br i1 %311, label %333, label %312, !dx.controlflow.hints !28

; <label>:312                                     ; preds = %305
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %313 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %313, label %314, label %317, !dx.controlflow.hints !29

; <label>:314                                     ; preds = %312
  %315 = udiv i32 %8, %44
  %316 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %315
  store i32 %309, i32 addrspace(3)* %316, align 4, !tbaa !23, !noalias !30
  br label %317

; <label>:317                                     ; preds = %314, %312
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %318 = icmp eq i32 %44, 32
  br i1 %318, label %319, label %322, !dx.controlflow.hints !34

; <label>:319                                     ; preds = %317
  %320 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !23, !noalias !30
  %321 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !23, !noalias !30
  br label %333

; <label>:322                                     ; preds = %317
  %323 = icmp eq i32 %44, 16
  br i1 %323, label %324, label %333, !dx.controlflow.hints !35

; <label>:324                                     ; preds = %322
  %325 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !23, !noalias !30
  %326 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !23, !noalias !30
  %327 = shl i32 %326, 16
  %328 = or i32 %327, %325
  %329 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !23, !noalias !30
  %330 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !23, !noalias !30
  %331 = shl i32 %330, 16
  %332 = or i32 %331, %329
  br label %333

; <label>:333                                     ; preds = %324, %322, %319, %305
  %334 = phi i32 [ %320, %319 ], [ %328, %324 ], [ 0, %322 ], [ %309, %305 ]
  %335 = phi i32 [ %321, %319 ], [ %332, %324 ], [ 0, %322 ], [ %310, %305 ]
  %336 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %334)  ; Countbits(value)
  %337 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %335)  ; Countbits(value)
  %338 = and i32 %8, 32
  %339 = and i32 %8, 31
  %340 = shl i32 1, %339
  %341 = add i32 %340, -1
  %342 = icmp eq i32 %338, 0
  %343 = and i32 %334, %341
  %344 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %343)  ; Countbits(value)
  %345 = and i32 %335, %341
  %346 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %345)  ; Countbits(value)
  %347 = add i32 %346, %336
  %348 = select i1 %342, i32 %344, i32 %347
  %349 = add i32 %348, %91
  %350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %351 = extractvalue %dx.types.CBufRet.i32 %350, 1
  %352 = icmp ult i32 %349, %351
  %353 = and i1 %307, %352
  br i1 %353, label %354, label %358, !dx.controlflow.hints !36

; <label>:354                                     ; preds = %333
  %355 = add i32 %91, %57
  %356 = add i32 %355, %348
  %357 = shl i32 %356, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %357, i32 undef, i32 %93, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %358

; <label>:358                                     ; preds = %354, %333
  %359 = add i32 %336, %91
  %360 = add i32 %359, %337
  %361 = add nuw i32 %92, 64
  %362 = icmp ult i32 %361, %87
  br i1 %362, label %90, label %363

; <label>:363                                     ; preds = %358
  br label %364

; <label>:364                                     ; preds = %363, %56
  %365 = phi i32 [ 0, %56 ], [ %360, %363 ]
  %366 = and i1 %35, %34
  br i1 %366, label %367, label %397, !dx.controlflow.hints !37

; <label>:367                                     ; preds = %364
  %368 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %7, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %369 = extractvalue %dx.types.CBufRet.i32 %368, 0
  %370 = icmp ugt i32 %369, %57
  %371 = icmp ne i32 %365, 0
  %372 = and i1 %371, %370
  br i1 %372, label %373, label %397, !dx.controlflow.hints !38

; <label>:373                                     ; preds = %367
  %374 = extractvalue %dx.types.CBufRet.i32 %368, 2
  %375 = sub i32 %369, %57
  %376 = call i32 @dx.op.binary.i32(i32 40, i32 %365, i32 %375)  ; UMin(a,b)
  %377 = add i32 %376, -1
  %378 = lshr i32 %377, 1
  %379 = or i32 %378, %377
  %380 = lshr i32 %379, 2
  %381 = or i32 %380, %379
  %382 = lshr i32 %381, 4
  %383 = or i32 %382, %381
  %384 = lshr i32 %383, 8
  %385 = or i32 %384, %383
  %386 = lshr i32 %385, 16
  %387 = or i32 %386, %385
  %388 = add i32 %387, 1
  %389 = call i32 @dx.op.binary.i32(i32 40, i32 %388, i32 64)  ; UMin(a,b)
  %390 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %389)  ; FirstbitLo(value)
  %391 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %390, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %392 = lshr i32 %391, 3
  %393 = icmp ult i32 %392, %374
  br i1 %393, label %394, label %397, !dx.controlflow.hints !39

; <label>:394                                     ; preds = %373
  %395 = mul i32 %390, %374
  %396 = add i32 %392, %395
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %396, i32 0, i32 %18, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %396, i32 4, i32 %57, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %396, i32 8, i32 %376, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %397

; <label>:397                                     ; preds = %394, %373, %367, %364
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.atomicBinOp.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.waveGetLaneCount(i32) #0

; Function Attrs: nounwind
declare i32 @dx.op.waveReadLaneFirst.i32(i32, i32) #1

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind
declare %dx.types.fouri32 @dx.op.waveActiveBallot(i32, i1) #1

; Function Attrs: nounwind
declare i1 @dx.op.waveIsFirstLane(i32) #1

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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
!dx.entryPoints = !{!17}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !9, !15, null}
!5 = !{!6, !7}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 4}
!9 = !{!10, !12, !13, !14}
!10 = !{i32 0, %"class.RWStructuredBuffer<CellIndirection>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!11 = !{i32 1, i32 12}
!12 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !8}
!13 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !8}
!14 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!15 = !{!16}
!16 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!17 = !{void ()* @cs_decal_volume_cluster_pass_first, !"cs_decal_volume_cluster_pass_first", null, !4, !18}
!18 = !{i32 0, i64 524560, i32 4, !19}
!19 = !{i32 64, i32 1, i32 1}
!20 = distinct !{!20, !"dx.controlflow.hints", i32 2}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = !{!31, !33}
!31 = distinct !{!31, !32, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!32 = distinct !{!32, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!33 = distinct !{!33, !32, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}

