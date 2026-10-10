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
; shader hash: e0bba120ae189344657e2cec13d355cf
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
;                                   texture    byte         r/o      T2             t2     1
;                                   texture  struct         r/o      T3             t3     1
;                                   texture  struct         r/o      T4             t4     1
;                                       UAV  struct         r/w      U0             u1     1
;                                       UAV    byte         r/w      U1             u0     1
;
target datalayout = "e-m:e-p:32:32-i1:32-i8:32-i16:32-i32:32-i64:64-f16:32-f32:32-f64:64-n8:16:32:64"
target triple = "dxil-ms-dx"

%dx.types.Handle = type { i8* }
%dx.types.CBufRet.i32 = type { i32, i32, i32, i32 }
%dx.types.ResRet.i32 = type { i32, i32, i32, i32, i32 }
%dx.types.CBufRet.f32 = type { float, float, float, float }
%dx.types.ResRet.f32 = type { float, float, float, float, i32 }
%dx.types.fouri32 = type { i32, i32, i32, i32 }
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<CellIndirection>" = type { %struct.CellIndirection }
%struct.CellIndirection = type { i32, i32, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4
@"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?sharedMemAlloc@@3IA" = external addrspace(3) global i32, align 4
@"\01?sharedMemAllocGlobalBase@@3IA" = external addrspace(3) global i32, align 4

define void @cs_decal_volume_cluster_pass_last() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %10 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %11 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %12 = alloca [8 x float], align 4
  %13 = alloca [8 x float], align 4
  %14 = alloca [8 x float], align 4
  %15 = alloca [8 x float], align 4
  %16 = alloca [8 x float], align 4
  %17 = alloca [8 x float], align 4
  %18 = alloca [2 x i32], align 4
  %19 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %20 = extractvalue %dx.types.CBufRet.i32 %19, 3
  %21 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %22 = extractvalue %dx.types.ResRet.i32 %21, 0
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 2, i32 0)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 3, i32 0)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 4, i32 0)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 5, i32 0)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = shl i32 %20, 3
  %34 = call i32 @dx.op.binary.i32(i32 40, i32 %22, i32 %33)  ; UMin(a,b)
  %35 = call i32 @dx.op.binary.i32(i32 40, i32 %24, i32 %33)  ; UMin(a,b)
  %36 = call i32 @dx.op.binary.i32(i32 40, i32 %26, i32 %33)  ; UMin(a,b)
  %37 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 %33)  ; UMin(a,b)
  %38 = call i32 @dx.op.binary.i32(i32 40, i32 %30, i32 %33)  ; UMin(a,b)
  %39 = call i32 @dx.op.binary.i32(i32 40, i32 %32, i32 %33)  ; UMin(a,b)
  %40 = icmp ne i32 %34, 0
  %41 = add i32 %34, 63
  %42 = lshr i32 %41, 6
  %43 = select i1 %40, i32 %42, i32 0
  %44 = icmp ne i32 %35, 0
  %45 = add i32 %35, 31
  %46 = lshr i32 %45, 5
  %47 = select i1 %44, i32 %46, i32 0
  %48 = icmp ne i32 %36, 0
  %49 = add i32 %36, 15
  %50 = lshr i32 %49, 4
  %51 = select i1 %48, i32 %50, i32 0
  %52 = icmp ne i32 %37, 0
  %53 = add i32 %37, 7
  %54 = lshr i32 %53, 3
  %55 = select i1 %52, i32 %54, i32 0
  %56 = icmp ne i32 %38, 0
  %57 = add i32 %38, 3
  %58 = lshr i32 %57, 2
  %59 = select i1 %56, i32 %58, i32 0
  %60 = icmp ne i32 %39, 0
  %61 = add i32 %39, 1
  %62 = lshr i32 %61, 1
  %63 = select i1 %60, i32 %62, i32 0
  %64 = add nuw nsw i32 %47, %43
  %65 = add nuw nsw i32 %64, %51
  %66 = add nuw nsw i32 %65, %55
  %67 = add nuw nsw i32 %66, %59
  %68 = add nuw i32 %67, %63
  %69 = icmp ult i32 %10, %68
  br i1 %69, label %70, label %82, !dx.controlflow.hints !21

; <label>:70                                      ; preds = %0
  %71 = icmp ult i32 %10, %67
  br i1 %71, label %72, label %82, !dx.controlflow.hints !22

; <label>:72                                      ; preds = %70
  %73 = icmp ult i32 %10, %66
  br i1 %73, label %74, label %82, !dx.controlflow.hints !23

; <label>:74                                      ; preds = %72
  %75 = icmp ult i32 %10, %65
  br i1 %75, label %76, label %82, !dx.controlflow.hints !24

; <label>:76                                      ; preds = %74
  %77 = icmp ult i32 %10, %64
  br i1 %77, label %78, label %82, !dx.controlflow.hints !25

; <label>:78                                      ; preds = %76
  %79 = icmp uge i32 %10, %43
  %80 = zext i1 %79 to i32
  %81 = select i1 %79, i32 %43, i32 0
  br label %82

; <label>:82                                      ; preds = %78, %76, %74, %72, %70, %0
  %83 = phi i32 [ 6, %0 ], [ 5, %70 ], [ 4, %72 ], [ 3, %74 ], [ 2, %76 ], [ %80, %78 ]
  %84 = phi i32 [ %68, %0 ], [ %67, %70 ], [ %66, %72 ], [ %65, %74 ], [ %64, %76 ], [ %81, %78 ]
  %85 = shl i32 1, %83
  %86 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %87 = extractvalue %dx.types.ResRet.i32 %86, 0
  %88 = icmp eq i32 %83, 6
  %89 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.i32 %89, 0
  %91 = extractvalue %dx.types.CBufRet.i32 %89, 1
  %92 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %94 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %95 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %96 = extractvalue %dx.types.CBufRet.i32 %19, 0
  br i1 %88, label %97, label %487, !dx.controlflow.hints !26

; <label>:97                                      ; preds = %82
  %98 = sub i32 %10, %84
  %99 = lshr i32 %98, 3
  %100 = mul i32 %20, 6
  %101 = add i32 %100, %99
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %101, i32 0)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %101, i32 4)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %101, i32 8)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = lshr i32 %103, 20
  %109 = lshr i32 %98, 2
  %110 = and i32 %109, 1
  %111 = lshr i32 %98, 1
  %112 = and i32 %111, 1
  %113 = and i32 %98, 1
  %114 = shl nuw nsw i32 %108, 1
  %115 = or i32 %114, %113
  %116 = lshr i32 %103, 7
  %117 = and i32 %116, 8190
  %118 = or i32 %117, %112
  %119 = shl i32 %103, 1
  %120 = and i32 %119, 256
  %121 = shl i32 %115, 20
  %122 = shl nuw nsw i32 %118, 8
  %123 = or i32 %121, %122
  %124 = or i32 %122, %120
  %125 = lshr i32 %123, 20
  %126 = lshr exact i32 %124, 8
  %127 = and i32 %126, 4095
  %128 = and i32 %119, 254
  %129 = or i32 %128, %110
  %130 = icmp ult i32 %125, %90
  %131 = icmp ult i32 %127, %91
  %132 = and i1 %130, %131
  %133 = icmp eq i32 %9, 0
  br i1 %133, label %134, label %140, !dx.controlflow.hints !27

; <label>:134                                     ; preds = %97
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 1
  %137 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %138 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %136, i32 0, i32 undef, i32 %107)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %139 = add i32 %138, %137
  br label %140

; <label>:140                                     ; preds = %134, %97
  %141 = phi i32 [ %139, %134 ], [ 0, %97 ]
  %142 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %143 = lshr i32 %9, 6
  %144 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %141)  ; WaveReadLaneFirst(value)
  %145 = icmp eq i32 %142, 64
  br i1 %145, label %154, label %146, !dx.controlflow.hints !28

; <label>:146                                     ; preds = %140
  %147 = and i32 %9, 63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151, !dx.controlflow.hints !29

; <label>:149                                     ; preds = %146
  %150 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %143
  store i32 %144, i32 addrspace(3)* %150, align 4, !tbaa !30
  br label %151

; <label>:151                                     ; preds = %149, %146
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %152 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %143
  %153 = load i32, i32 addrspace(3)* %152, align 4, !tbaa !30
  br label %154

; <label>:154                                     ; preds = %151, %140
  %155 = phi i32 [ %153, %151 ], [ %144, %140 ]
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %159 = uitofp i32 %125 to float
  %160 = uitofp i32 %127 to float
  %161 = uitofp i32 %129 to float
  %162 = fmul fast float %161, %95
  %163 = fsub fast float %157, %158
  %164 = fmul fast float %162, %163
  %165 = fadd fast float %164, %158
  %166 = fadd fast float %161, 1.000000e+00
  %167 = fmul fast float %166, %95
  %168 = fmul fast float %167, %163
  %169 = fadd fast float %168, %158
  %170 = fmul fast float %93, 2.000000e+00
  %171 = fmul fast float %170, %159
  %172 = fadd fast float %171, -1.000000e+00
  %173 = fadd fast float %159, 1.000000e+00
  %174 = fmul fast float %170, %173
  %175 = fadd fast float %174, -1.000000e+00
  %176 = fmul fast float %94, 2.000000e+00
  %177 = fadd fast float %160, 1.000000e+00
  %178 = fmul fast float %176, %177
  %179 = fsub fast float 1.000000e+00, %178
  %180 = fmul fast float %176, %160
  %181 = fsub fast float 1.000000e+00, %180
  %182 = add i32 %107, 63
  %183 = and i32 %182, -64
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %466, label %185

; <label>:185                                     ; preds = %154
  br label %186

; <label>:186                                     ; preds = %460, %185
  %187 = phi i32 [ %462, %460 ], [ 0, %185 ]
  %188 = phi i32 [ %463, %460 ], [ 0, %185 ]
  %189 = add i32 %188, %9
  %190 = icmp ult i32 %189, %107
  %191 = and i1 %132, %190
  br i1 %191, label %192, label %197, !dx.controlflow.hints !34

; <label>:192                                     ; preds = %186
  %193 = add i32 %189, %105
  %194 = shl i32 %193, 2
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  br label %197

; <label>:197                                     ; preds = %192, %186
  %198 = phi i32 [ %196, %192 ], [ -1, %186 ]
  %199 = icmp ult i32 %198, %87
  br i1 %199, label %200, label %410, !dx.controlflow.hints !35

; <label>:200                                     ; preds = %197
  %201 = mul i32 %198, 48
  %202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = extractvalue %dx.types.ResRet.f32 %202, 1
  %205 = extractvalue %dx.types.ResRet.f32 %202, 2
  %206 = or i32 %201, 12
  %207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 1
  %210 = extractvalue %dx.types.ResRet.f32 %207, 2
  %211 = add i32 %201, 24
  %212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 1
  %215 = extractvalue %dx.types.ResRet.f32 %212, 2
  %216 = add i32 %201, 36
  %217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.f32 %217, 0
  %219 = extractvalue %dx.types.ResRet.f32 %217, 1
  %220 = extractvalue %dx.types.ResRet.f32 %217, 2
  %221 = fsub fast float %203, %208
  %222 = fsub fast float %204, %209
  %223 = fsub fast float %205, %210
  %224 = fsub fast float %221, %213
  %225 = fsub fast float %222, %214
  %226 = fsub fast float %223, %215
  %227 = fadd fast float %224, %218
  %228 = fadd fast float %225, %219
  %229 = fadd fast float %226, %220
  %230 = fsub fast float %224, %218
  %231 = fsub fast float %225, %219
  %232 = fsub fast float %226, %220
  %233 = fadd fast float %208, %203
  %234 = fadd fast float %209, %204
  %235 = fadd fast float %210, %205
  %236 = fsub fast float %233, %213
  %237 = fsub fast float %234, %214
  %238 = fsub fast float %235, %215
  %239 = fsub fast float %236, %218
  %240 = fsub fast float %237, %219
  %241 = fsub fast float %238, %220
  %242 = fadd fast float %221, %213
  %243 = fadd fast float %222, %214
  %244 = fadd fast float %223, %215
  %245 = fsub fast float %242, %218
  %246 = fsub fast float %243, %219
  %247 = fsub fast float %244, %220
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 3
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %261 = extractvalue %dx.types.CBufRet.f32 %260, 0
  %262 = extractvalue %dx.types.CBufRet.f32 %260, 1
  %263 = extractvalue %dx.types.CBufRet.f32 %260, 3
  %264 = fmul fast float %249, %227
  %265 = call float @dx.op.tertiary.f32(i32 46, float %253, float %228, float %264)  ; FMad(a,b,c)
  %266 = call float @dx.op.tertiary.f32(i32 46, float %257, float %229, float %265)  ; FMad(a,b,c)
  %267 = fadd fast float %266, %261
  %268 = fmul fast float %250, %227
  %269 = call float @dx.op.tertiary.f32(i32 46, float %254, float %228, float %268)  ; FMad(a,b,c)
  %270 = call float @dx.op.tertiary.f32(i32 46, float %258, float %229, float %269)  ; FMad(a,b,c)
  %271 = fadd fast float %270, %262
  %272 = fmul fast float %251, %227
  %273 = call float @dx.op.tertiary.f32(i32 46, float %255, float %228, float %272)  ; FMad(a,b,c)
  %274 = call float @dx.op.tertiary.f32(i32 46, float %259, float %229, float %273)  ; FMad(a,b,c)
  %275 = fadd fast float %274, %263
  %276 = fmul fast float %249, %230
  %277 = call float @dx.op.tertiary.f32(i32 46, float %253, float %231, float %276)  ; FMad(a,b,c)
  %278 = call float @dx.op.tertiary.f32(i32 46, float %257, float %232, float %277)  ; FMad(a,b,c)
  %279 = fadd fast float %278, %261
  %280 = fmul fast float %250, %230
  %281 = call float @dx.op.tertiary.f32(i32 46, float %254, float %231, float %280)  ; FMad(a,b,c)
  %282 = call float @dx.op.tertiary.f32(i32 46, float %258, float %232, float %281)  ; FMad(a,b,c)
  %283 = fadd fast float %282, %262
  %284 = fmul fast float %251, %230
  %285 = call float @dx.op.tertiary.f32(i32 46, float %255, float %231, float %284)  ; FMad(a,b,c)
  %286 = call float @dx.op.tertiary.f32(i32 46, float %259, float %232, float %285)  ; FMad(a,b,c)
  %287 = fadd fast float %286, %263
  %288 = fmul fast float %249, %239
  %289 = call float @dx.op.tertiary.f32(i32 46, float %253, float %240, float %288)  ; FMad(a,b,c)
  %290 = call float @dx.op.tertiary.f32(i32 46, float %257, float %241, float %289)  ; FMad(a,b,c)
  %291 = fadd fast float %290, %261
  %292 = fmul fast float %250, %239
  %293 = call float @dx.op.tertiary.f32(i32 46, float %254, float %240, float %292)  ; FMad(a,b,c)
  %294 = call float @dx.op.tertiary.f32(i32 46, float %258, float %241, float %293)  ; FMad(a,b,c)
  %295 = fadd fast float %294, %262
  %296 = fmul fast float %251, %239
  %297 = call float @dx.op.tertiary.f32(i32 46, float %255, float %240, float %296)  ; FMad(a,b,c)
  %298 = call float @dx.op.tertiary.f32(i32 46, float %259, float %241, float %297)  ; FMad(a,b,c)
  %299 = fadd fast float %298, %263
  %300 = fmul fast float %249, %245
  %301 = call float @dx.op.tertiary.f32(i32 46, float %253, float %246, float %300)  ; FMad(a,b,c)
  %302 = call float @dx.op.tertiary.f32(i32 46, float %257, float %247, float %301)  ; FMad(a,b,c)
  %303 = fadd fast float %302, %261
  %304 = fmul fast float %250, %245
  %305 = call float @dx.op.tertiary.f32(i32 46, float %254, float %246, float %304)  ; FMad(a,b,c)
  %306 = call float @dx.op.tertiary.f32(i32 46, float %258, float %247, float %305)  ; FMad(a,b,c)
  %307 = fadd fast float %306, %262
  %308 = fmul fast float %251, %245
  %309 = call float @dx.op.tertiary.f32(i32 46, float %255, float %246, float %308)  ; FMad(a,b,c)
  %310 = call float @dx.op.tertiary.f32(i32 46, float %259, float %247, float %309)  ; FMad(a,b,c)
  %311 = fadd fast float %310, %263
  %312 = fsub fast float %290, %278
  %313 = fsub fast float %294, %282
  %314 = fsub fast float %298, %286
  %315 = fsub fast float %302, %278
  %316 = fsub fast float %306, %282
  %317 = fsub fast float %310, %286
  %318 = fadd fast float %312, %267
  %319 = fadd fast float %313, %271
  %320 = fadd fast float %314, %275
  %321 = fadd fast float %315, %318
  %322 = fadd fast float %316, %319
  %323 = fadd fast float %317, %320
  %324 = fadd fast float %315, %267
  %325 = fadd fast float %316, %271
  %326 = fadd fast float %317, %275
  %327 = fadd fast float %315, %291
  %328 = fadd fast float %316, %295
  %329 = fadd fast float %317, %299
  %330 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 0
  %331 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 0
  %332 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 0
  store float %267, float* %330, align 4
  store float %271, float* %331, align 4
  store float %275, float* %332, align 4
  %333 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 1
  %334 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 1
  %335 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 1
  store float %318, float* %333, align 4
  store float %319, float* %334, align 4
  store float %320, float* %335, align 4
  %336 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 2
  %337 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 2
  %338 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 2
  store float %321, float* %336, align 4
  store float %322, float* %337, align 4
  store float %323, float* %338, align 4
  %339 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 3
  %340 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 3
  %341 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 3
  store float %324, float* %339, align 4
  store float %325, float* %340, align 4
  store float %326, float* %341, align 4
  %342 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 4
  %343 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 4
  %344 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 4
  store float %279, float* %342, align 4
  store float %283, float* %343, align 4
  store float %287, float* %344, align 4
  %345 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 5
  %346 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 5
  %347 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 5
  store float %291, float* %345, align 4
  store float %295, float* %346, align 4
  store float %299, float* %347, align 4
  %348 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 6
  %349 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 6
  %350 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 6
  store float %327, float* %348, align 4
  store float %328, float* %349, align 4
  store float %329, float* %350, align 4
  %351 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 7
  %352 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 7
  %353 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 7
  store float %303, float* %351, align 4
  store float %307, float* %352, align 4
  store float %311, float* %353, align 4
  br label %354

; <label>:354                                     ; preds = %389, %200
  %355 = phi float [ %275, %200 ], [ %401, %389 ]
  %356 = phi float [ %271, %200 ], [ %399, %389 ]
  %357 = phi float [ %267, %200 ], [ %397, %389 ]
  %358 = phi i32 [ 1, %200 ], [ %395, %389 ]
  %359 = phi i32 [ 1, %200 ], [ %394, %389 ]
  %360 = phi i32 [ 1, %200 ], [ %393, %389 ]
  %361 = phi i32 [ 1, %200 ], [ %392, %389 ]
  %362 = phi i32 [ 1, %200 ], [ %391, %389 ]
  %363 = phi i32 [ 1, %200 ], [ %390, %389 ]
  %364 = phi i32 [ 0, %200 ], [ %387, %389 ]
  %365 = icmp ne i32 %358, 0
  %366 = fmul fast float %355, %172
  %367 = fcmp fast olt float %357, %366
  %368 = and i1 %365, %367
  %369 = icmp ne i32 %359, 0
  %370 = fmul fast float %355, %175
  %371 = fcmp fast ogt float %357, %370
  %372 = and i1 %369, %371
  %373 = icmp ne i32 %360, 0
  %374 = fmul fast float %355, %179
  %375 = fcmp fast olt float %356, %374
  %376 = and i1 %373, %375
  %377 = icmp ne i32 %361, 0
  %378 = fmul fast float %355, %181
  %379 = fcmp fast ogt float %356, %378
  %380 = and i1 %377, %379
  %381 = icmp ne i32 %362, 0
  %382 = fcmp fast olt float %355, %165
  %383 = and i1 %381, %382
  %384 = icmp ne i32 %363, 0
  %385 = fcmp fast ogt float %355, %169
  %386 = and i1 %384, %385
  %387 = add nuw nsw i32 %364, 1
  %388 = icmp eq i32 %387, 8
  br i1 %388, label %402, label %389

; <label>:389                                     ; preds = %354
  %390 = zext i1 %386 to i32
  %391 = zext i1 %383 to i32
  %392 = zext i1 %380 to i32
  %393 = zext i1 %376 to i32
  %394 = zext i1 %372 to i32
  %395 = zext i1 %368 to i32
  %396 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 %387
  %397 = load float, float* %396, align 4
  %398 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 %387
  %399 = load float, float* %398, align 4
  %400 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 %387
  %401 = load float, float* %400, align 4
  br label %354

; <label>:402                                     ; preds = %354
  %403 = or i1 %368, %372
  %404 = or i1 %376, %403
  %405 = or i1 %380, %404
  %406 = or i1 %383, %405
  %407 = or i1 %386, %406
  %408 = zext i1 %407 to i32
  %409 = xor i32 %408, 1
  br label %410

; <label>:410                                     ; preds = %402, %197
  %411 = phi i32 [ %409, %402 ], [ 0, %197 ]
  %412 = icmp ne i32 %411, 0
  %413 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %412)  ; WaveActiveBallot(cond)
  %414 = extractvalue %dx.types.fouri32 %413, 0
  %415 = extractvalue %dx.types.fouri32 %413, 1
  %416 = icmp ugt i32 %142, 63
  br i1 %416, label %438, label %417, !dx.controlflow.hints !36

; <label>:417                                     ; preds = %410
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %418 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %418, label %419, label %422, !dx.controlflow.hints !37

; <label>:419                                     ; preds = %417
  %420 = udiv i32 %9, %142
  %421 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %420
  store i32 %414, i32 addrspace(3)* %421, align 4, !tbaa !30, !noalias !38
  br label %422

; <label>:422                                     ; preds = %419, %417
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %423 = icmp eq i32 %142, 32
  br i1 %423, label %424, label %427, !dx.controlflow.hints !42

; <label>:424                                     ; preds = %422
  %425 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !30, !noalias !38
  %426 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !30, !noalias !38
  br label %438

; <label>:427                                     ; preds = %422
  %428 = icmp eq i32 %142, 16
  br i1 %428, label %429, label %438, !dx.controlflow.hints !43

; <label>:429                                     ; preds = %427
  %430 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !30, !noalias !38
  %431 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !30, !noalias !38
  %432 = shl i32 %431, 16
  %433 = or i32 %432, %430
  %434 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !30, !noalias !38
  %435 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !30, !noalias !38
  %436 = shl i32 %435, 16
  %437 = or i32 %436, %434
  br label %438

; <label>:438                                     ; preds = %429, %427, %424, %410
  %439 = phi i32 [ %425, %424 ], [ %433, %429 ], [ 0, %427 ], [ %414, %410 ]
  %440 = phi i32 [ %426, %424 ], [ %437, %429 ], [ 0, %427 ], [ %415, %410 ]
  %441 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %439)  ; Countbits(value)
  %442 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %440)  ; Countbits(value)
  %443 = and i32 %9, 32
  %444 = and i32 %9, 31
  %445 = shl i32 1, %444
  %446 = add i32 %445, -1
  %447 = icmp eq i32 %443, 0
  %448 = and i32 %439, %446
  %449 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %448)  ; Countbits(value)
  %450 = and i32 %440, %446
  %451 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %450)  ; Countbits(value)
  %452 = add i32 %451, %441
  %453 = select i1 %447, i32 %449, i32 %452
  %454 = add i32 %187, %155
  %455 = add i32 %454, %453
  %456 = icmp ult i32 %455, %96
  %457 = and i1 %412, %456
  br i1 %457, label %458, label %460, !dx.controlflow.hints !44

; <label>:458                                     ; preds = %438
  %459 = shl i32 %455, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %459, i32 undef, i32 %198, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %460

; <label>:460                                     ; preds = %458, %438
  %461 = add i32 %441, %187
  %462 = add i32 %461, %442
  %463 = add nuw i32 %188, 64
  %464 = icmp ult i32 %463, %183
  br i1 %464, label %186, label %465

; <label>:465                                     ; preds = %460
  br label %466

; <label>:466                                     ; preds = %465, %154
  %467 = phi i32 [ 0, %154 ], [ %462, %465 ]
  %468 = and i1 %133, %132
  br i1 %468, label %469, label %879, !dx.controlflow.hints !45

; <label>:469                                     ; preds = %466
  %470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.i32 %470, 0
  %472 = icmp ult i32 %155, %471
  %473 = icmp ne i32 %467, 0
  %474 = and i1 %473, %472
  br i1 %474, label %475, label %879, !dx.controlflow.hints !46

; <label>:475                                     ; preds = %469
  %476 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.i32 %476, 0
  %478 = extractvalue %dx.types.CBufRet.i32 %476, 1
  %479 = mul i32 %478, %129
  %480 = add i32 %479, %127
  %481 = mul i32 %480, %477
  %482 = add i32 %481, %125
  %483 = and i32 %467, 1023
  %484 = shl i32 %155, 10
  %485 = or i32 %483, %484
  %486 = shl i32 %482, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %486, i32 undef, i32 %485, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %879

; <label>:487                                     ; preds = %82
  %488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %83, i32 0)  ; BufferLoad(srv,index,wot)
  %489 = extractvalue %dx.types.ResRet.i32 %488, 0
  %490 = call i32 @dx.op.binary.i32(i32 40, i32 %489, i32 %33)  ; UMin(a,b)
  %491 = shl i32 %84, 6
  %492 = sub i32 %11, %491
  %493 = lshr i32 %492, %83
  %494 = lshr i32 %493, 3
  %495 = mul i32 %20, %83
  %496 = add i32 %495, %494
  %497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %496, i32 0)  ; BufferLoad(srv,index,wot)
  %498 = extractvalue %dx.types.ResRet.i32 %497, 0
  %499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %496, i32 4)  ; BufferLoad(srv,index,wot)
  %500 = extractvalue %dx.types.ResRet.i32 %499, 0
  %501 = lshr i32 %498, 20
  %502 = lshr i32 %493, 2
  %503 = and i32 %502, 1
  %504 = lshr i32 %493, 1
  %505 = and i32 %504, 1
  %506 = and i32 %493, 1
  %507 = shl nuw nsw i32 %501, 1
  %508 = or i32 %507, %506
  %509 = lshr i32 %498, 7
  %510 = and i32 %509, 8190
  %511 = or i32 %510, %505
  %512 = shl i32 %498, 1
  %513 = and i32 %512, 256
  %514 = shl i32 %508, 20
  %515 = shl nuw nsw i32 %511, 8
  %516 = or i32 %514, %515
  %517 = or i32 %515, %513
  %518 = lshr i32 %9, %83
  %519 = add i32 %85, -1
  %520 = and i32 %519, %9
  %521 = shl i32 %518, %83
  %522 = lshr i32 %9, 5
  %523 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %524 = lshr i32 %516, 20
  %525 = lshr exact i32 %517, 8
  %526 = and i32 %525, 4095
  %527 = and i32 %512, 254
  %528 = or i32 %527, %503
  %529 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %530 = extractvalue %dx.types.CBufRet.i32 %529, 1
  %531 = icmp uge i32 %524, %90
  %532 = icmp uge i32 %526, %91
  %533 = or i1 %531, %532
  %534 = icmp uge i32 %493, %490
  %535 = or i1 %533, %534
  br i1 %535, label %783, label %536, !dx.controlflow.hints !47

; <label>:536                                     ; preds = %487
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %496, i32 8)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.f32 %539, 1
  %541 = extractvalue %dx.types.CBufRet.f32 %539, 0
  %542 = uitofp i32 %524 to float
  %543 = uitofp i32 %526 to float
  %544 = uitofp i32 %528 to float
  %545 = fmul fast float %544, %95
  %546 = fsub fast float %540, %541
  %547 = fmul fast float %545, %546
  %548 = fadd fast float %547, %541
  %549 = fadd fast float %544, 1.000000e+00
  %550 = fmul fast float %549, %95
  %551 = fmul fast float %550, %546
  %552 = fadd fast float %551, %541
  %553 = fmul fast float %93, 2.000000e+00
  %554 = fmul fast float %553, %542
  %555 = fadd fast float %554, -1.000000e+00
  %556 = fadd fast float %542, 1.000000e+00
  %557 = fmul fast float %553, %556
  %558 = fadd fast float %557, -1.000000e+00
  %559 = fmul fast float %94, 2.000000e+00
  %560 = fadd fast float %543, 1.000000e+00
  %561 = fmul fast float %559, %560
  %562 = fsub fast float 1.000000e+00, %561
  %563 = fmul fast float %559, %543
  %564 = fsub fast float 1.000000e+00, %563
  %565 = icmp ult i32 %520, %538
  br i1 %565, label %566, label %571, !dx.controlflow.hints !48

; <label>:566                                     ; preds = %536
  %567 = add i32 %500, %520
  %568 = shl i32 %567, 2
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %568, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  br label %571

; <label>:571                                     ; preds = %566, %536
  %572 = phi i32 [ %570, %566 ], [ -1, %536 ]
  %573 = icmp ult i32 %572, %87
  br i1 %573, label %574, label %783, !dx.controlflow.hints !49

; <label>:574                                     ; preds = %571
  %575 = mul i32 %572, 48
  %576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.f32 %576, 0
  %578 = extractvalue %dx.types.ResRet.f32 %576, 1
  %579 = extractvalue %dx.types.ResRet.f32 %576, 2
  %580 = or i32 %575, 12
  %581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %580, i32 undef)  ; BufferLoad(srv,index,wot)
  %582 = extractvalue %dx.types.ResRet.f32 %581, 0
  %583 = extractvalue %dx.types.ResRet.f32 %581, 1
  %584 = extractvalue %dx.types.ResRet.f32 %581, 2
  %585 = add i32 %575, 24
  %586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.f32 %586, 0
  %588 = extractvalue %dx.types.ResRet.f32 %586, 1
  %589 = extractvalue %dx.types.ResRet.f32 %586, 2
  %590 = add i32 %575, 36
  %591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %590, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.f32 %591, 0
  %593 = extractvalue %dx.types.ResRet.f32 %591, 1
  %594 = extractvalue %dx.types.ResRet.f32 %591, 2
  %595 = fsub fast float %577, %582
  %596 = fsub fast float %578, %583
  %597 = fsub fast float %579, %584
  %598 = fsub fast float %595, %587
  %599 = fsub fast float %596, %588
  %600 = fsub fast float %597, %589
  %601 = fadd fast float %598, %592
  %602 = fadd fast float %599, %593
  %603 = fadd fast float %600, %594
  %604 = fsub fast float %598, %592
  %605 = fsub fast float %599, %593
  %606 = fsub fast float %600, %594
  %607 = fadd fast float %582, %577
  %608 = fadd fast float %583, %578
  %609 = fadd fast float %584, %579
  %610 = fsub fast float %607, %587
  %611 = fsub fast float %608, %588
  %612 = fsub fast float %609, %589
  %613 = fsub fast float %610, %592
  %614 = fsub fast float %611, %593
  %615 = fsub fast float %612, %594
  %616 = fadd fast float %595, %587
  %617 = fadd fast float %596, %588
  %618 = fadd fast float %597, %589
  %619 = fsub fast float %616, %592
  %620 = fsub fast float %617, %593
  %621 = fsub fast float %618, %594
  %622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %623 = extractvalue %dx.types.CBufRet.f32 %622, 0
  %624 = extractvalue %dx.types.CBufRet.f32 %622, 1
  %625 = extractvalue %dx.types.CBufRet.f32 %622, 3
  %626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %627 = extractvalue %dx.types.CBufRet.f32 %626, 0
  %628 = extractvalue %dx.types.CBufRet.f32 %626, 1
  %629 = extractvalue %dx.types.CBufRet.f32 %626, 3
  %630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %631 = extractvalue %dx.types.CBufRet.f32 %630, 0
  %632 = extractvalue %dx.types.CBufRet.f32 %630, 1
  %633 = extractvalue %dx.types.CBufRet.f32 %630, 3
  %634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %635 = extractvalue %dx.types.CBufRet.f32 %634, 0
  %636 = extractvalue %dx.types.CBufRet.f32 %634, 1
  %637 = extractvalue %dx.types.CBufRet.f32 %634, 3
  %638 = fmul fast float %623, %601
  %639 = call float @dx.op.tertiary.f32(i32 46, float %627, float %602, float %638)  ; FMad(a,b,c)
  %640 = call float @dx.op.tertiary.f32(i32 46, float %631, float %603, float %639)  ; FMad(a,b,c)
  %641 = fadd fast float %640, %635
  %642 = fmul fast float %624, %601
  %643 = call float @dx.op.tertiary.f32(i32 46, float %628, float %602, float %642)  ; FMad(a,b,c)
  %644 = call float @dx.op.tertiary.f32(i32 46, float %632, float %603, float %643)  ; FMad(a,b,c)
  %645 = fadd fast float %644, %636
  %646 = fmul fast float %625, %601
  %647 = call float @dx.op.tertiary.f32(i32 46, float %629, float %602, float %646)  ; FMad(a,b,c)
  %648 = call float @dx.op.tertiary.f32(i32 46, float %633, float %603, float %647)  ; FMad(a,b,c)
  %649 = fadd fast float %648, %637
  %650 = fmul fast float %623, %604
  %651 = call float @dx.op.tertiary.f32(i32 46, float %627, float %605, float %650)  ; FMad(a,b,c)
  %652 = call float @dx.op.tertiary.f32(i32 46, float %631, float %606, float %651)  ; FMad(a,b,c)
  %653 = fadd fast float %652, %635
  %654 = fmul fast float %624, %604
  %655 = call float @dx.op.tertiary.f32(i32 46, float %628, float %605, float %654)  ; FMad(a,b,c)
  %656 = call float @dx.op.tertiary.f32(i32 46, float %632, float %606, float %655)  ; FMad(a,b,c)
  %657 = fadd fast float %656, %636
  %658 = fmul fast float %625, %604
  %659 = call float @dx.op.tertiary.f32(i32 46, float %629, float %605, float %658)  ; FMad(a,b,c)
  %660 = call float @dx.op.tertiary.f32(i32 46, float %633, float %606, float %659)  ; FMad(a,b,c)
  %661 = fadd fast float %660, %637
  %662 = fmul fast float %623, %613
  %663 = call float @dx.op.tertiary.f32(i32 46, float %627, float %614, float %662)  ; FMad(a,b,c)
  %664 = call float @dx.op.tertiary.f32(i32 46, float %631, float %615, float %663)  ; FMad(a,b,c)
  %665 = fadd fast float %664, %635
  %666 = fmul fast float %624, %613
  %667 = call float @dx.op.tertiary.f32(i32 46, float %628, float %614, float %666)  ; FMad(a,b,c)
  %668 = call float @dx.op.tertiary.f32(i32 46, float %632, float %615, float %667)  ; FMad(a,b,c)
  %669 = fadd fast float %668, %636
  %670 = fmul fast float %625, %613
  %671 = call float @dx.op.tertiary.f32(i32 46, float %629, float %614, float %670)  ; FMad(a,b,c)
  %672 = call float @dx.op.tertiary.f32(i32 46, float %633, float %615, float %671)  ; FMad(a,b,c)
  %673 = fadd fast float %672, %637
  %674 = fmul fast float %623, %619
  %675 = call float @dx.op.tertiary.f32(i32 46, float %627, float %620, float %674)  ; FMad(a,b,c)
  %676 = call float @dx.op.tertiary.f32(i32 46, float %631, float %621, float %675)  ; FMad(a,b,c)
  %677 = fadd fast float %676, %635
  %678 = fmul fast float %624, %619
  %679 = call float @dx.op.tertiary.f32(i32 46, float %628, float %620, float %678)  ; FMad(a,b,c)
  %680 = call float @dx.op.tertiary.f32(i32 46, float %632, float %621, float %679)  ; FMad(a,b,c)
  %681 = fadd fast float %680, %636
  %682 = fmul fast float %625, %619
  %683 = call float @dx.op.tertiary.f32(i32 46, float %629, float %620, float %682)  ; FMad(a,b,c)
  %684 = call float @dx.op.tertiary.f32(i32 46, float %633, float %621, float %683)  ; FMad(a,b,c)
  %685 = fadd fast float %684, %637
  %686 = fsub fast float %664, %652
  %687 = fsub fast float %668, %656
  %688 = fsub fast float %672, %660
  %689 = fsub fast float %676, %652
  %690 = fsub fast float %680, %656
  %691 = fsub fast float %684, %660
  %692 = fadd fast float %686, %641
  %693 = fadd fast float %687, %645
  %694 = fadd fast float %688, %649
  %695 = fadd fast float %689, %692
  %696 = fadd fast float %690, %693
  %697 = fadd fast float %691, %694
  %698 = fadd fast float %689, %641
  %699 = fadd fast float %690, %645
  %700 = fadd fast float %691, %649
  %701 = fadd fast float %689, %665
  %702 = fadd fast float %690, %669
  %703 = fadd fast float %691, %673
  %704 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 0
  %705 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 0
  %706 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 0
  store float %641, float* %704, align 4
  store float %645, float* %705, align 4
  store float %649, float* %706, align 4
  %707 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 1
  %708 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 1
  %709 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 1
  store float %692, float* %707, align 4
  store float %693, float* %708, align 4
  store float %694, float* %709, align 4
  %710 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 2
  %711 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 2
  %712 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 2
  store float %695, float* %710, align 4
  store float %696, float* %711, align 4
  store float %697, float* %712, align 4
  %713 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 3
  %714 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 3
  %715 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 3
  store float %698, float* %713, align 4
  store float %699, float* %714, align 4
  store float %700, float* %715, align 4
  %716 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 4
  %717 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 4
  %718 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 4
  store float %653, float* %716, align 4
  store float %657, float* %717, align 4
  store float %661, float* %718, align 4
  %719 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 5
  %720 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 5
  %721 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 5
  store float %665, float* %719, align 4
  store float %669, float* %720, align 4
  store float %673, float* %721, align 4
  %722 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 6
  %723 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 6
  %724 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 6
  store float %701, float* %722, align 4
  store float %702, float* %723, align 4
  store float %703, float* %724, align 4
  %725 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 7
  %726 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 7
  %727 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 7
  store float %677, float* %725, align 4
  store float %681, float* %726, align 4
  store float %685, float* %727, align 4
  br label %728

; <label>:728                                     ; preds = %763, %574
  %729 = phi float [ %649, %574 ], [ %775, %763 ]
  %730 = phi float [ %645, %574 ], [ %773, %763 ]
  %731 = phi float [ %641, %574 ], [ %771, %763 ]
  %732 = phi i32 [ 1, %574 ], [ %769, %763 ]
  %733 = phi i32 [ 1, %574 ], [ %768, %763 ]
  %734 = phi i32 [ 1, %574 ], [ %767, %763 ]
  %735 = phi i32 [ 1, %574 ], [ %766, %763 ]
  %736 = phi i32 [ 1, %574 ], [ %765, %763 ]
  %737 = phi i32 [ 1, %574 ], [ %764, %763 ]
  %738 = phi i32 [ 0, %574 ], [ %761, %763 ]
  %739 = icmp ne i32 %732, 0
  %740 = fmul fast float %729, %555
  %741 = fcmp fast olt float %731, %740
  %742 = and i1 %739, %741
  %743 = icmp ne i32 %733, 0
  %744 = fmul fast float %729, %558
  %745 = fcmp fast ogt float %731, %744
  %746 = and i1 %743, %745
  %747 = icmp ne i32 %734, 0
  %748 = fmul fast float %729, %562
  %749 = fcmp fast olt float %730, %748
  %750 = and i1 %747, %749
  %751 = icmp ne i32 %735, 0
  %752 = fmul fast float %729, %564
  %753 = fcmp fast ogt float %730, %752
  %754 = and i1 %751, %753
  %755 = icmp ne i32 %736, 0
  %756 = fcmp fast olt float %729, %548
  %757 = and i1 %755, %756
  %758 = icmp ne i32 %737, 0
  %759 = fcmp fast ogt float %729, %552
  %760 = and i1 %758, %759
  %761 = add nuw nsw i32 %738, 1
  %762 = icmp eq i32 %761, 8
  br i1 %762, label %776, label %763

; <label>:763                                     ; preds = %728
  %764 = zext i1 %760 to i32
  %765 = zext i1 %757 to i32
  %766 = zext i1 %754 to i32
  %767 = zext i1 %750 to i32
  %768 = zext i1 %746 to i32
  %769 = zext i1 %742 to i32
  %770 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 %761
  %771 = load float, float* %770, align 4
  %772 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 %761
  %773 = load float, float* %772, align 4
  %774 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 %761
  %775 = load float, float* %774, align 4
  br label %728

; <label>:776                                     ; preds = %728
  %777 = or i1 %742, %746
  %778 = or i1 %750, %777
  %779 = or i1 %754, %778
  %780 = or i1 %757, %779
  %781 = or i1 %760, %780
  %782 = xor i1 %781, true
  br label %783

; <label>:783                                     ; preds = %776, %571, %487
  %784 = phi i32 [ %572, %776 ], [ %572, %571 ], [ 0, %487 ]
  %785 = phi i1 [ %782, %776 ], [ false, %571 ], [ false, %487 ]
  %786 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %787 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %785)  ; WaveActiveBallot(cond)
  %788 = extractvalue %dx.types.fouri32 %787, 0
  %789 = extractvalue %dx.types.fouri32 %787, 1
  %790 = icmp ugt i32 %786, 63
  br i1 %790, label %812, label %791, !dx.controlflow.hints !36

; <label>:791                                     ; preds = %783
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %792 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %792, label %793, label %796, !dx.controlflow.hints !37

; <label>:793                                     ; preds = %791
  %794 = udiv i32 %9, %786
  %795 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %794
  store i32 %788, i32 addrspace(3)* %795, align 4, !tbaa !30
  br label %796

; <label>:796                                     ; preds = %793, %791
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %797 = icmp eq i32 %786, 32
  br i1 %797, label %798, label %801, !dx.controlflow.hints !42

; <label>:798                                     ; preds = %796
  %799 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !30
  %800 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !30
  br label %812

; <label>:801                                     ; preds = %796
  %802 = icmp eq i32 %786, 16
  br i1 %802, label %803, label %812, !dx.controlflow.hints !43

; <label>:803                                     ; preds = %801
  %804 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !30
  %805 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !30
  %806 = shl i32 %805, 16
  %807 = or i32 %806, %804
  %808 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !30
  %809 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !30
  %810 = shl i32 %809, 16
  %811 = or i32 %810, %808
  br label %812

; <label>:812                                     ; preds = %803, %801, %798, %783
  %813 = phi i32 [ %799, %798 ], [ %807, %803 ], [ 0, %801 ], [ %788, %783 ]
  %814 = phi i32 [ %800, %798 ], [ %811, %803 ], [ 0, %801 ], [ %789, %783 ]
  %815 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i32 0, i32 0
  store i32 %813, i32* %815, align 4
  %816 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i32 0, i32 1
  store i32 %814, i32* %816, align 4
  %817 = icmp eq i32 %83, 5
  %818 = and i32 %85, 31
  %819 = shl i32 1, %818
  %820 = add i32 %819, -1
  %821 = select i1 %817, i32 -1, i32 %820
  %822 = getelementptr [2 x i32], [2 x i32]* %18, i32 0, i32 %522
  %823 = load i32, i32* %822, align 4, !tbaa !30
  %824 = and i32 %521, 31
  %825 = lshr i32 %823, %824
  %826 = and i32 %825, %821
  %827 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %826)  ; Countbits(value)
  %828 = icmp eq i32 %9, 0
  br i1 %828, label %829, label %830, !dx.controlflow.hints !50

; <label>:829                                     ; preds = %812
  store i32 0, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !30
  br label %830

; <label>:830                                     ; preds = %829, %812
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %831 = icmp eq i32 %520, 0
  br i1 %831, label %832, label %837, !dx.controlflow.hints !51

; <label>:832                                     ; preds = %830
  %833 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %518
  br i1 %535, label %836, label %834, !dx.controlflow.hints !52

; <label>:834                                     ; preds = %832
  %835 = atomicrmw add i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", i32 %827 seq_cst
  store i32 %835, i32 addrspace(3)* %833, align 4, !tbaa !30
  br label %837

; <label>:836                                     ; preds = %832
  store i32 0, i32 addrspace(3)* %833, align 4, !tbaa !30
  br label %837

; <label>:837                                     ; preds = %836, %834, %830
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %828, label %838, label %841, !dx.controlflow.hints !53

; <label>:838                                     ; preds = %837
  %839 = load i32, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !30
  %840 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %530, i32 0, i32 undef, i32 %839)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %840, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !30
  br label %841

; <label>:841                                     ; preds = %838, %837
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %535, label %879, label %842, !dx.controlflow.hints !54

; <label>:842                                     ; preds = %841
  %843 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %518
  %844 = load i32, i32 addrspace(3)* %843, align 4, !tbaa !30
  %845 = load i32, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !30
  %846 = add i32 %844, %523
  %847 = add i32 %846, %845
  %848 = and i32 %520, 31
  %849 = shl i32 1, %848
  %850 = and i32 %826, %849
  %851 = icmp eq i32 %850, 0
  br i1 %851, label %860, label %852, !dx.controlflow.hints !55

; <label>:852                                     ; preds = %842
  %853 = add i32 %849, -1
  %854 = and i32 %826, %853
  %855 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %854)  ; Countbits(value)
  %856 = add i32 %855, %847
  %857 = icmp ult i32 %856, %96
  br i1 %857, label %858, label %860, !dx.controlflow.hints !56

; <label>:858                                     ; preds = %852
  %859 = shl i32 %856, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %859, i32 undef, i32 %784, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %860

; <label>:860                                     ; preds = %858, %852, %842
  br i1 %831, label %861, label %879, !dx.controlflow.hints !57

; <label>:861                                     ; preds = %860
  %862 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.i32 %862, 0
  %864 = icmp ult i32 %847, %863
  %865 = icmp ne i32 %827, 0
  %866 = and i1 %865, %864
  br i1 %866, label %867, label %879, !dx.controlflow.hints !46

; <label>:867                                     ; preds = %861
  %868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %869 = extractvalue %dx.types.CBufRet.i32 %868, 0
  %870 = extractvalue %dx.types.CBufRet.i32 %868, 1
  %871 = mul i32 %870, %528
  %872 = add i32 %871, %526
  %873 = mul i32 %872, %869
  %874 = add i32 %873, %524
  %875 = and i32 %827, 1023
  %876 = shl i32 %847, 10
  %877 = or i32 %876, %875
  %878 = shl i32 %874, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %878, i32 undef, i32 %877, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %879

; <label>:879                                     ; preds = %867, %861, %860, %841, %475, %469, %466
  ret void
}

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadIdInGroup.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.groupId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.threadId.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.binary.i32(i32, i32, i32) #0

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

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32, %dx.types.Handle, i32) #3

; Function Attrs: nounwind readonly
declare %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32, %dx.types.Handle, i32) #3

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
!dx.entryPoints = !{!18}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !16, null}
!5 = !{!6, !7, !9, !10, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 4}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.StructuredBuffer<CellIndirection>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 12}
!12 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !8}
!13 = !{!14, !15}
!14 = !{i32 0, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !8}
!15 = !{i32 1, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!16 = !{!17}
!17 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!18 = !{void ()* @cs_decal_volume_cluster_pass_last, !"cs_decal_volume_cluster_pass_last", null, !4, !19}
!19 = !{i32 0, i64 524560, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
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
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = !{!39, !41}
!39 = distinct !{!39, !40, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!40 = distinct !{!40, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!41 = distinct !{!41, !40, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !"dx.controlflow.hints", i32 2}
!44 = distinct !{!44, !"dx.controlflow.hints", i32 2}
!45 = distinct !{!45, !"dx.controlflow.hints", i32 2}
!46 = distinct !{!46, !"dx.controlflow.hints", i32 2}
!47 = distinct !{!47, !"dx.controlflow.hints", i32 2}
!48 = distinct !{!48, !"dx.controlflow.hints", i32 2}
!49 = distinct !{!49, !"dx.controlflow.hints", i32 2}
!50 = distinct !{!50, !"dx.controlflow.hints", i32 2}
!51 = distinct !{!51, !"dx.controlflow.hints", i32 2}
!52 = distinct !{!52, !"dx.controlflow.hints", i32 2}
!53 = distinct !{!53, !"dx.controlflow.hints", i32 2}
!54 = distinct !{!54, !"dx.controlflow.hints", i32 2}
!55 = distinct !{!55, !"dx.controlflow.hints", i32 2}
!56 = distinct !{!56, !"dx.controlflow.hints", i32 2}
!57 = distinct !{!57, !"dx.controlflow.hints", i32 2}

