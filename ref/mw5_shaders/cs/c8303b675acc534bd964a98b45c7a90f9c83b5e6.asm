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
; shader hash: ec8727db514662b3487133bf98fd5055
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
;                                       UAV  struct         r/w      U0             u2     1
;                                       UAV  struct         r/w      U1             u3     1
;                                       UAV  struct         r/w      U2             u1     1
;                                       UAV    byte         r/w      U3             u0     1
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
%"class.RWStructuredBuffer<CellIndirection>" = type { %struct.CellIndirection }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

@"\01?gsTempData@@3PAIA" = external addrspace(3) global [4 x i32], align 4
@"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA" = external addrspace(3) global [64 x i32], align 4
@"\01?sharedMemAlloc@@3IA" = external addrspace(3) global i32, align 4
@"\01?sharedMemAllocGlobalBase@@3IA" = external addrspace(3) global i32, align 4

define void @cs_decal_volume_cluster_pass_mid() {
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 3, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 2, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 1, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 1, i32 0, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call i32 @dx.op.threadIdInGroup.i32(i32 95, i32 0)  ; ThreadIdInGroup(component)
  %12 = call i32 @dx.op.groupId.i32(i32 94, i32 0)  ; GroupId(component)
  %13 = call i32 @dx.op.threadId.i32(i32 93, i32 0)  ; ThreadId(component)
  %14 = alloca [8 x float], align 4
  %15 = alloca [8 x float], align 4
  %16 = alloca [8 x float], align 4
  %17 = alloca [8 x float], align 4
  %18 = alloca [8 x float], align 4
  %19 = alloca [8 x float], align 4
  %20 = alloca [2 x i32], align 4
  %21 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %22 = extractvalue %dx.types.CBufRet.i32 %21, 3
  %23 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %24 = extractvalue %dx.types.ResRet.i32 %23, 0
  %25 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 1, i32 0)  ; BufferLoad(srv,index,wot)
  %26 = extractvalue %dx.types.ResRet.i32 %25, 0
  %27 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 2, i32 0)  ; BufferLoad(srv,index,wot)
  %28 = extractvalue %dx.types.ResRet.i32 %27, 0
  %29 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 3, i32 0)  ; BufferLoad(srv,index,wot)
  %30 = extractvalue %dx.types.ResRet.i32 %29, 0
  %31 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 4, i32 0)  ; BufferLoad(srv,index,wot)
  %32 = extractvalue %dx.types.ResRet.i32 %31, 0
  %33 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 5, i32 0)  ; BufferLoad(srv,index,wot)
  %34 = extractvalue %dx.types.ResRet.i32 %33, 0
  %35 = shl i32 %22, 3
  %36 = call i32 @dx.op.binary.i32(i32 40, i32 %24, i32 %35)  ; UMin(a,b)
  %37 = call i32 @dx.op.binary.i32(i32 40, i32 %26, i32 %35)  ; UMin(a,b)
  %38 = call i32 @dx.op.binary.i32(i32 40, i32 %28, i32 %35)  ; UMin(a,b)
  %39 = call i32 @dx.op.binary.i32(i32 40, i32 %30, i32 %35)  ; UMin(a,b)
  %40 = call i32 @dx.op.binary.i32(i32 40, i32 %32, i32 %35)  ; UMin(a,b)
  %41 = call i32 @dx.op.binary.i32(i32 40, i32 %34, i32 %35)  ; UMin(a,b)
  %42 = icmp ne i32 %36, 0
  %43 = add i32 %36, 63
  %44 = lshr i32 %43, 6
  %45 = select i1 %42, i32 %44, i32 0
  %46 = icmp ne i32 %37, 0
  %47 = add i32 %37, 31
  %48 = lshr i32 %47, 5
  %49 = select i1 %46, i32 %48, i32 0
  %50 = icmp ne i32 %38, 0
  %51 = add i32 %38, 15
  %52 = lshr i32 %51, 4
  %53 = select i1 %50, i32 %52, i32 0
  %54 = icmp ne i32 %39, 0
  %55 = add i32 %39, 7
  %56 = lshr i32 %55, 3
  %57 = select i1 %54, i32 %56, i32 0
  %58 = icmp ne i32 %40, 0
  %59 = add i32 %40, 3
  %60 = lshr i32 %59, 2
  %61 = select i1 %58, i32 %60, i32 0
  %62 = icmp ne i32 %41, 0
  %63 = add i32 %41, 1
  %64 = lshr i32 %63, 1
  %65 = select i1 %62, i32 %64, i32 0
  %66 = add nuw nsw i32 %49, %45
  %67 = add nuw nsw i32 %66, %53
  %68 = add nuw nsw i32 %67, %57
  %69 = add nuw nsw i32 %68, %61
  %70 = add nuw i32 %69, %65
  %71 = icmp ult i32 %12, %70
  br i1 %71, label %72, label %84, !dx.controlflow.hints !23

; <label>:72                                      ; preds = %0
  %73 = icmp ult i32 %12, %69
  br i1 %73, label %74, label %84, !dx.controlflow.hints !24

; <label>:74                                      ; preds = %72
  %75 = icmp ult i32 %12, %68
  br i1 %75, label %76, label %84, !dx.controlflow.hints !25

; <label>:76                                      ; preds = %74
  %77 = icmp ult i32 %12, %67
  br i1 %77, label %78, label %84, !dx.controlflow.hints !26

; <label>:78                                      ; preds = %76
  %79 = icmp ult i32 %12, %66
  br i1 %79, label %80, label %84, !dx.controlflow.hints !27

; <label>:80                                      ; preds = %78
  %81 = icmp uge i32 %12, %45
  %82 = zext i1 %81 to i32
  %83 = select i1 %81, i32 %45, i32 0
  br label %84

; <label>:84                                      ; preds = %80, %78, %76, %74, %72, %0
  %85 = phi i32 [ 6, %0 ], [ 5, %72 ], [ 4, %74 ], [ 3, %76 ], [ 2, %78 ], [ %82, %80 ]
  %86 = phi i32 [ %70, %0 ], [ %69, %72 ], [ %68, %74 ], [ %67, %76 ], [ %66, %78 ], [ %83, %80 ]
  %87 = shl i32 1, %85
  %88 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 0, i32 0)  ; BufferLoad(srv,index,wot)
  %89 = extractvalue %dx.types.ResRet.i32 %88, 0
  %90 = icmp eq i32 %85, 6
  %91 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.i32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.i32 %91, 1
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = extractvalue %dx.types.CBufRet.i32 %21, 0
  br i1 %90, label %99, label %499, !dx.controlflow.hints !28

; <label>:99                                      ; preds = %84
  %100 = sub i32 %12, %86
  %101 = lshr i32 %100, 3
  %102 = mul i32 %22, 6
  %103 = add i32 %102, %101
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %103, i32 0)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %103, i32 4)  ; BufferLoad(srv,index,wot)
  %107 = extractvalue %dx.types.ResRet.i32 %106, 0
  %108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %103, i32 8)  ; BufferLoad(srv,index,wot)
  %109 = extractvalue %dx.types.ResRet.i32 %108, 0
  %110 = lshr i32 %105, 20
  %111 = lshr i32 %100, 2
  %112 = and i32 %111, 1
  %113 = lshr i32 %100, 1
  %114 = and i32 %113, 1
  %115 = and i32 %100, 1
  %116 = shl nuw nsw i32 %110, 1
  %117 = or i32 %116, %115
  %118 = lshr i32 %105, 7
  %119 = and i32 %118, 8190
  %120 = or i32 %119, %114
  %121 = shl i32 %105, 1
  %122 = and i32 %121, 510
  %123 = or i32 %122, %112
  %124 = shl i32 %117, 20
  %125 = shl nuw nsw i32 %120, 8
  %126 = or i32 %124, %125
  %127 = or i32 %126, %123
  %128 = lshr i32 %126, 20
  %129 = lshr i32 %127, 8
  %130 = and i32 %129, 4095
  %131 = and i32 %123, 255
  %132 = icmp ult i32 %128, %92
  %133 = icmp ult i32 %130, %93
  %134 = and i1 %132, %133
  %135 = icmp eq i32 %11, 0
  br i1 %135, label %136, label %140, !dx.controlflow.hints !29

; <label>:136                                     ; preds = %99
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 1
  %139 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %138, i32 0, i32 undef, i32 %109)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  br label %140

; <label>:140                                     ; preds = %136, %99
  %141 = phi i32 [ %139, %136 ], [ 0, %99 ]
  %142 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %143 = lshr i32 %11, 6
  %144 = call i32 @dx.op.waveReadLaneFirst.i32(i32 118, i32 %141)  ; WaveReadLaneFirst(value)
  %145 = icmp eq i32 %142, 64
  br i1 %145, label %154, label %146, !dx.controlflow.hints !30

; <label>:146                                     ; preds = %140
  %147 = and i32 %11, 63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151, !dx.controlflow.hints !31

; <label>:149                                     ; preds = %146
  %150 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %143
  store i32 %144, i32 addrspace(3)* %150, align 4, !tbaa !32
  br label %151

; <label>:151                                     ; preds = %149, %146
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %152 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %143
  %153 = load i32, i32 addrspace(3)* %152, align 4, !tbaa !32
  br label %154

; <label>:154                                     ; preds = %151, %140
  %155 = phi i32 [ %153, %151 ], [ %144, %140 ]
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 1
  %158 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %159 = uitofp i32 %128 to float
  %160 = uitofp i32 %130 to float
  %161 = uitofp i32 %131 to float
  %162 = fmul fast float %161, %97
  %163 = fsub fast float %157, %158
  %164 = fmul fast float %162, %163
  %165 = fadd fast float %164, %158
  %166 = fadd fast float %161, 1.000000e+00
  %167 = fmul fast float %166, %97
  %168 = fmul fast float %167, %163
  %169 = fadd fast float %168, %158
  %170 = fmul fast float %95, 2.000000e+00
  %171 = fmul fast float %170, %159
  %172 = fadd fast float %171, -1.000000e+00
  %173 = fadd fast float %159, 1.000000e+00
  %174 = fmul fast float %170, %173
  %175 = fadd fast float %174, -1.000000e+00
  %176 = fmul fast float %96, 2.000000e+00
  %177 = fadd fast float %160, 1.000000e+00
  %178 = fmul fast float %176, %177
  %179 = fsub fast float 1.000000e+00, %178
  %180 = fmul fast float %176, %160
  %181 = fsub fast float 1.000000e+00, %180
  %182 = add i32 %109, 63
  %183 = and i32 %182, -64
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %466, label %185

; <label>:185                                     ; preds = %154
  br label %186

; <label>:186                                     ; preds = %460, %185
  %187 = phi i32 [ %462, %460 ], [ 0, %185 ]
  %188 = phi i32 [ %463, %460 ], [ 0, %185 ]
  %189 = add i32 %188, %11
  %190 = icmp ult i32 %189, %109
  %191 = and i1 %134, %190
  br i1 %191, label %192, label %197, !dx.controlflow.hints !36

; <label>:192                                     ; preds = %186
  %193 = add i32 %189, %107
  %194 = shl i32 %193, 2
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  br label %197

; <label>:197                                     ; preds = %192, %186
  %198 = phi i32 [ %196, %192 ], [ -1, %186 ]
  %199 = icmp ult i32 %198, %89
  br i1 %199, label %200, label %410, !dx.controlflow.hints !37

; <label>:200                                     ; preds = %197
  %201 = mul i32 %198, 48
  %202 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.f32 %202, 0
  %204 = extractvalue %dx.types.ResRet.f32 %202, 1
  %205 = extractvalue %dx.types.ResRet.f32 %202, 2
  %206 = or i32 %201, 12
  %207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.f32 %207, 0
  %209 = extractvalue %dx.types.ResRet.f32 %207, 1
  %210 = extractvalue %dx.types.ResRet.f32 %207, 2
  %211 = add i32 %201, 24
  %212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %211, i32 undef)  ; BufferLoad(srv,index,wot)
  %213 = extractvalue %dx.types.ResRet.f32 %212, 0
  %214 = extractvalue %dx.types.ResRet.f32 %212, 1
  %215 = extractvalue %dx.types.ResRet.f32 %212, 2
  %216 = add i32 %201, 36
  %217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %249 = extractvalue %dx.types.CBufRet.f32 %248, 0
  %250 = extractvalue %dx.types.CBufRet.f32 %248, 1
  %251 = extractvalue %dx.types.CBufRet.f32 %248, 3
  %252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %253 = extractvalue %dx.types.CBufRet.f32 %252, 0
  %254 = extractvalue %dx.types.CBufRet.f32 %252, 1
  %255 = extractvalue %dx.types.CBufRet.f32 %252, 3
  %256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %257 = extractvalue %dx.types.CBufRet.f32 %256, 0
  %258 = extractvalue %dx.types.CBufRet.f32 %256, 1
  %259 = extractvalue %dx.types.CBufRet.f32 %256, 3
  %260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
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
  %330 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 0
  %331 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 0
  %332 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 0
  store float %267, float* %330, align 4
  store float %271, float* %331, align 4
  store float %275, float* %332, align 4
  %333 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 1
  %334 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 1
  %335 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 1
  store float %318, float* %333, align 4
  store float %319, float* %334, align 4
  store float %320, float* %335, align 4
  %336 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 2
  %337 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 2
  %338 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 2
  store float %321, float* %336, align 4
  store float %322, float* %337, align 4
  store float %323, float* %338, align 4
  %339 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 3
  %340 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 3
  %341 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 3
  store float %324, float* %339, align 4
  store float %325, float* %340, align 4
  store float %326, float* %341, align 4
  %342 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 4
  %343 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 4
  %344 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 4
  store float %279, float* %342, align 4
  store float %283, float* %343, align 4
  store float %287, float* %344, align 4
  %345 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 5
  %346 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 5
  %347 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 5
  store float %291, float* %345, align 4
  store float %295, float* %346, align 4
  store float %299, float* %347, align 4
  %348 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 6
  %349 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 6
  %350 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 6
  store float %327, float* %348, align 4
  store float %328, float* %349, align 4
  store float %329, float* %350, align 4
  %351 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 7
  %352 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 7
  %353 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 7
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
  %396 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 %387
  %397 = load float, float* %396, align 4
  %398 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 %387
  %399 = load float, float* %398, align 4
  %400 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 %387
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
  br i1 %416, label %438, label %417, !dx.controlflow.hints !38

; <label>:417                                     ; preds = %410
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %418 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %418, label %419, label %422, !dx.controlflow.hints !39

; <label>:419                                     ; preds = %417
  %420 = udiv i32 %11, %142
  %421 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %420
  store i32 %414, i32 addrspace(3)* %421, align 4, !tbaa !32, !noalias !40
  br label %422

; <label>:422                                     ; preds = %419, %417
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %423 = icmp eq i32 %142, 32
  br i1 %423, label %424, label %427, !dx.controlflow.hints !44

; <label>:424                                     ; preds = %422
  %425 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !32, !noalias !40
  %426 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !32, !noalias !40
  br label %438

; <label>:427                                     ; preds = %422
  %428 = icmp eq i32 %142, 16
  br i1 %428, label %429, label %438, !dx.controlflow.hints !45

; <label>:429                                     ; preds = %427
  %430 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !32, !noalias !40
  %431 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !32, !noalias !40
  %432 = shl i32 %431, 16
  %433 = or i32 %432, %430
  %434 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !32, !noalias !40
  %435 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !32, !noalias !40
  %436 = shl i32 %435, 16
  %437 = or i32 %436, %434
  br label %438

; <label>:438                                     ; preds = %429, %427, %424, %410
  %439 = phi i32 [ %425, %424 ], [ %433, %429 ], [ 0, %427 ], [ %414, %410 ]
  %440 = phi i32 [ %426, %424 ], [ %437, %429 ], [ 0, %427 ], [ %415, %410 ]
  %441 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %439)  ; Countbits(value)
  %442 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %440)  ; Countbits(value)
  %443 = and i32 %11, 32
  %444 = and i32 %11, 31
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
  %456 = icmp ult i32 %455, %98
  %457 = and i1 %412, %456
  br i1 %457, label %458, label %460, !dx.controlflow.hints !46

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
  %468 = and i1 %135, %134
  br i1 %468, label %469, label %901, !dx.controlflow.hints !47

; <label>:469                                     ; preds = %466
  %470 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %471 = extractvalue %dx.types.CBufRet.i32 %470, 0
  %472 = icmp ugt i32 %471, %155
  %473 = icmp ne i32 %467, 0
  %474 = and i1 %473, %472
  br i1 %474, label %475, label %901, !dx.controlflow.hints !48

; <label>:475                                     ; preds = %469
  %476 = extractvalue %dx.types.CBufRet.i32 %470, 2
  %477 = sub i32 %471, %155
  %478 = call i32 @dx.op.binary.i32(i32 40, i32 %467, i32 %477)  ; UMin(a,b)
  %479 = add i32 %478, -1
  %480 = lshr i32 %479, 1
  %481 = or i32 %480, %479
  %482 = lshr i32 %481, 2
  %483 = or i32 %482, %481
  %484 = lshr i32 %483, 4
  %485 = or i32 %484, %483
  %486 = lshr i32 %485, 8
  %487 = or i32 %486, %485
  %488 = lshr i32 %487, 16
  %489 = or i32 %488, %487
  %490 = add i32 %489, 1
  %491 = call i32 @dx.op.binary.i32(i32 40, i32 %490, i32 64)  ; UMin(a,b)
  %492 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %491)  ; FirstbitLo(value)
  %493 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %492, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %494 = lshr i32 %493, 3
  %495 = icmp ult i32 %494, %476
  br i1 %495, label %496, label %901, !dx.controlflow.hints !49

; <label>:496                                     ; preds = %475
  %497 = mul i32 %492, %476
  %498 = add i32 %494, %497
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %498, i32 0, i32 %127, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %498, i32 4, i32 %155, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %498, i32 8, i32 %478, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %901

; <label>:499                                     ; preds = %84
  %500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %85, i32 0)  ; BufferLoad(srv,index,wot)
  %501 = extractvalue %dx.types.ResRet.i32 %500, 0
  %502 = call i32 @dx.op.binary.i32(i32 40, i32 %501, i32 %35)  ; UMin(a,b)
  %503 = shl i32 %86, 6
  %504 = sub i32 %13, %503
  %505 = lshr i32 %504, %85
  %506 = lshr i32 %505, 3
  %507 = mul i32 %22, %85
  %508 = add i32 %507, %506
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %508, i32 0)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %508, i32 4)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %510, 20
  %514 = lshr i32 %505, 2
  %515 = and i32 %514, 1
  %516 = lshr i32 %505, 1
  %517 = and i32 %516, 1
  %518 = and i32 %505, 1
  %519 = shl nuw nsw i32 %513, 1
  %520 = or i32 %519, %518
  %521 = lshr i32 %510, 7
  %522 = and i32 %521, 8190
  %523 = or i32 %522, %517
  %524 = shl i32 %510, 1
  %525 = and i32 %524, 510
  %526 = or i32 %525, %515
  %527 = shl i32 %520, 20
  %528 = shl nuw nsw i32 %523, 8
  %529 = or i32 %527, %528
  %530 = or i32 %529, %526
  %531 = lshr i32 %11, %85
  %532 = add i32 %87, -1
  %533 = and i32 %532, %11
  %534 = shl i32 %531, %85
  %535 = lshr i32 %11, 5
  %536 = lshr i32 %529, 20
  %537 = lshr i32 %530, 8
  %538 = and i32 %537, 4095
  %539 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %540 = extractvalue %dx.types.CBufRet.i32 %539, 1
  %541 = icmp uge i32 %536, %92
  %542 = icmp uge i32 %538, %93
  %543 = or i1 %541, %542
  %544 = icmp uge i32 %505, %502
  %545 = or i1 %543, %544
  br i1 %545, label %794, label %546, !dx.controlflow.hints !50

; <label>:546                                     ; preds = %499
  %547 = and i32 %526, 255
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %508, i32 8)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %551 = extractvalue %dx.types.CBufRet.f32 %550, 1
  %552 = extractvalue %dx.types.CBufRet.f32 %550, 0
  %553 = uitofp i32 %536 to float
  %554 = uitofp i32 %538 to float
  %555 = uitofp i32 %547 to float
  %556 = fmul fast float %555, %97
  %557 = fsub fast float %551, %552
  %558 = fmul fast float %556, %557
  %559 = fadd fast float %558, %552
  %560 = fadd fast float %555, 1.000000e+00
  %561 = fmul fast float %560, %97
  %562 = fmul fast float %561, %557
  %563 = fadd fast float %562, %552
  %564 = fmul fast float %95, 2.000000e+00
  %565 = fmul fast float %564, %553
  %566 = fadd fast float %565, -1.000000e+00
  %567 = fadd fast float %553, 1.000000e+00
  %568 = fmul fast float %564, %567
  %569 = fadd fast float %568, -1.000000e+00
  %570 = fmul fast float %96, 2.000000e+00
  %571 = fadd fast float %554, 1.000000e+00
  %572 = fmul fast float %570, %571
  %573 = fsub fast float 1.000000e+00, %572
  %574 = fmul fast float %570, %554
  %575 = fsub fast float 1.000000e+00, %574
  %576 = icmp ult i32 %533, %549
  br i1 %576, label %577, label %582, !dx.controlflow.hints !51

; <label>:577                                     ; preds = %546
  %578 = add i32 %512, %533
  %579 = shl i32 %578, 2
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  br label %582

; <label>:582                                     ; preds = %577, %546
  %583 = phi i32 [ %581, %577 ], [ -1, %546 ]
  %584 = icmp ult i32 %583, %89
  br i1 %584, label %585, label %794, !dx.controlflow.hints !52

; <label>:585                                     ; preds = %582
  %586 = mul i32 %583, 48
  %587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.f32 %587, 0
  %589 = extractvalue %dx.types.ResRet.f32 %587, 1
  %590 = extractvalue %dx.types.ResRet.f32 %587, 2
  %591 = or i32 %586, 12
  %592 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %591, i32 undef)  ; BufferLoad(srv,index,wot)
  %593 = extractvalue %dx.types.ResRet.f32 %592, 0
  %594 = extractvalue %dx.types.ResRet.f32 %592, 1
  %595 = extractvalue %dx.types.ResRet.f32 %592, 2
  %596 = add i32 %586, 24
  %597 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %596, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  %599 = extractvalue %dx.types.ResRet.f32 %597, 1
  %600 = extractvalue %dx.types.ResRet.f32 %597, 2
  %601 = add i32 %586, 36
  %602 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %601, i32 undef)  ; BufferLoad(srv,index,wot)
  %603 = extractvalue %dx.types.ResRet.f32 %602, 0
  %604 = extractvalue %dx.types.ResRet.f32 %602, 1
  %605 = extractvalue %dx.types.ResRet.f32 %602, 2
  %606 = fsub fast float %588, %593
  %607 = fsub fast float %589, %594
  %608 = fsub fast float %590, %595
  %609 = fsub fast float %606, %598
  %610 = fsub fast float %607, %599
  %611 = fsub fast float %608, %600
  %612 = fadd fast float %609, %603
  %613 = fadd fast float %610, %604
  %614 = fadd fast float %611, %605
  %615 = fsub fast float %609, %603
  %616 = fsub fast float %610, %604
  %617 = fsub fast float %611, %605
  %618 = fadd fast float %593, %588
  %619 = fadd fast float %594, %589
  %620 = fadd fast float %595, %590
  %621 = fsub fast float %618, %598
  %622 = fsub fast float %619, %599
  %623 = fsub fast float %620, %600
  %624 = fsub fast float %621, %603
  %625 = fsub fast float %622, %604
  %626 = fsub fast float %623, %605
  %627 = fadd fast float %606, %598
  %628 = fadd fast float %607, %599
  %629 = fadd fast float %608, %600
  %630 = fsub fast float %627, %603
  %631 = fsub fast float %628, %604
  %632 = fsub fast float %629, %605
  %633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %634 = extractvalue %dx.types.CBufRet.f32 %633, 0
  %635 = extractvalue %dx.types.CBufRet.f32 %633, 1
  %636 = extractvalue %dx.types.CBufRet.f32 %633, 3
  %637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %638 = extractvalue %dx.types.CBufRet.f32 %637, 0
  %639 = extractvalue %dx.types.CBufRet.f32 %637, 1
  %640 = extractvalue %dx.types.CBufRet.f32 %637, 3
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %644 = extractvalue %dx.types.CBufRet.f32 %641, 3
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %648 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %649 = fmul fast float %634, %612
  %650 = call float @dx.op.tertiary.f32(i32 46, float %638, float %613, float %649)  ; FMad(a,b,c)
  %651 = call float @dx.op.tertiary.f32(i32 46, float %642, float %614, float %650)  ; FMad(a,b,c)
  %652 = fadd fast float %651, %646
  %653 = fmul fast float %635, %612
  %654 = call float @dx.op.tertiary.f32(i32 46, float %639, float %613, float %653)  ; FMad(a,b,c)
  %655 = call float @dx.op.tertiary.f32(i32 46, float %643, float %614, float %654)  ; FMad(a,b,c)
  %656 = fadd fast float %655, %647
  %657 = fmul fast float %636, %612
  %658 = call float @dx.op.tertiary.f32(i32 46, float %640, float %613, float %657)  ; FMad(a,b,c)
  %659 = call float @dx.op.tertiary.f32(i32 46, float %644, float %614, float %658)  ; FMad(a,b,c)
  %660 = fadd fast float %659, %648
  %661 = fmul fast float %634, %615
  %662 = call float @dx.op.tertiary.f32(i32 46, float %638, float %616, float %661)  ; FMad(a,b,c)
  %663 = call float @dx.op.tertiary.f32(i32 46, float %642, float %617, float %662)  ; FMad(a,b,c)
  %664 = fadd fast float %663, %646
  %665 = fmul fast float %635, %615
  %666 = call float @dx.op.tertiary.f32(i32 46, float %639, float %616, float %665)  ; FMad(a,b,c)
  %667 = call float @dx.op.tertiary.f32(i32 46, float %643, float %617, float %666)  ; FMad(a,b,c)
  %668 = fadd fast float %667, %647
  %669 = fmul fast float %636, %615
  %670 = call float @dx.op.tertiary.f32(i32 46, float %640, float %616, float %669)  ; FMad(a,b,c)
  %671 = call float @dx.op.tertiary.f32(i32 46, float %644, float %617, float %670)  ; FMad(a,b,c)
  %672 = fadd fast float %671, %648
  %673 = fmul fast float %634, %624
  %674 = call float @dx.op.tertiary.f32(i32 46, float %638, float %625, float %673)  ; FMad(a,b,c)
  %675 = call float @dx.op.tertiary.f32(i32 46, float %642, float %626, float %674)  ; FMad(a,b,c)
  %676 = fadd fast float %675, %646
  %677 = fmul fast float %635, %624
  %678 = call float @dx.op.tertiary.f32(i32 46, float %639, float %625, float %677)  ; FMad(a,b,c)
  %679 = call float @dx.op.tertiary.f32(i32 46, float %643, float %626, float %678)  ; FMad(a,b,c)
  %680 = fadd fast float %679, %647
  %681 = fmul fast float %636, %624
  %682 = call float @dx.op.tertiary.f32(i32 46, float %640, float %625, float %681)  ; FMad(a,b,c)
  %683 = call float @dx.op.tertiary.f32(i32 46, float %644, float %626, float %682)  ; FMad(a,b,c)
  %684 = fadd fast float %683, %648
  %685 = fmul fast float %634, %630
  %686 = call float @dx.op.tertiary.f32(i32 46, float %638, float %631, float %685)  ; FMad(a,b,c)
  %687 = call float @dx.op.tertiary.f32(i32 46, float %642, float %632, float %686)  ; FMad(a,b,c)
  %688 = fadd fast float %687, %646
  %689 = fmul fast float %635, %630
  %690 = call float @dx.op.tertiary.f32(i32 46, float %639, float %631, float %689)  ; FMad(a,b,c)
  %691 = call float @dx.op.tertiary.f32(i32 46, float %643, float %632, float %690)  ; FMad(a,b,c)
  %692 = fadd fast float %691, %647
  %693 = fmul fast float %636, %630
  %694 = call float @dx.op.tertiary.f32(i32 46, float %640, float %631, float %693)  ; FMad(a,b,c)
  %695 = call float @dx.op.tertiary.f32(i32 46, float %644, float %632, float %694)  ; FMad(a,b,c)
  %696 = fadd fast float %695, %648
  %697 = fsub fast float %675, %663
  %698 = fsub fast float %679, %667
  %699 = fsub fast float %683, %671
  %700 = fsub fast float %687, %663
  %701 = fsub fast float %691, %667
  %702 = fsub fast float %695, %671
  %703 = fadd fast float %697, %652
  %704 = fadd fast float %698, %656
  %705 = fadd fast float %699, %660
  %706 = fadd fast float %700, %703
  %707 = fadd fast float %701, %704
  %708 = fadd fast float %702, %705
  %709 = fadd fast float %700, %652
  %710 = fadd fast float %701, %656
  %711 = fadd fast float %702, %660
  %712 = fadd fast float %700, %676
  %713 = fadd fast float %701, %680
  %714 = fadd fast float %702, %684
  %715 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 0
  %716 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 0
  %717 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 0
  store float %652, float* %715, align 4
  store float %656, float* %716, align 4
  store float %660, float* %717, align 4
  %718 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 1
  %719 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 1
  %720 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 1
  store float %703, float* %718, align 4
  store float %704, float* %719, align 4
  store float %705, float* %720, align 4
  %721 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 2
  %722 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 2
  %723 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 2
  store float %706, float* %721, align 4
  store float %707, float* %722, align 4
  store float %708, float* %723, align 4
  %724 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 3
  %725 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 3
  %726 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 3
  store float %709, float* %724, align 4
  store float %710, float* %725, align 4
  store float %711, float* %726, align 4
  %727 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 4
  %728 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 4
  %729 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 4
  store float %664, float* %727, align 4
  store float %668, float* %728, align 4
  store float %672, float* %729, align 4
  %730 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 5
  %731 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 5
  %732 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 5
  store float %676, float* %730, align 4
  store float %680, float* %731, align 4
  store float %684, float* %732, align 4
  %733 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 6
  %734 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 6
  %735 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 6
  store float %712, float* %733, align 4
  store float %713, float* %734, align 4
  store float %714, float* %735, align 4
  %736 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 7
  %737 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 7
  %738 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 7
  store float %688, float* %736, align 4
  store float %692, float* %737, align 4
  store float %696, float* %738, align 4
  br label %739

; <label>:739                                     ; preds = %774, %585
  %740 = phi float [ %660, %585 ], [ %786, %774 ]
  %741 = phi float [ %656, %585 ], [ %784, %774 ]
  %742 = phi float [ %652, %585 ], [ %782, %774 ]
  %743 = phi i32 [ 1, %585 ], [ %780, %774 ]
  %744 = phi i32 [ 1, %585 ], [ %779, %774 ]
  %745 = phi i32 [ 1, %585 ], [ %778, %774 ]
  %746 = phi i32 [ 1, %585 ], [ %777, %774 ]
  %747 = phi i32 [ 1, %585 ], [ %776, %774 ]
  %748 = phi i32 [ 1, %585 ], [ %775, %774 ]
  %749 = phi i32 [ 0, %585 ], [ %772, %774 ]
  %750 = icmp ne i32 %743, 0
  %751 = fmul fast float %740, %566
  %752 = fcmp fast olt float %742, %751
  %753 = and i1 %750, %752
  %754 = icmp ne i32 %744, 0
  %755 = fmul fast float %740, %569
  %756 = fcmp fast ogt float %742, %755
  %757 = and i1 %754, %756
  %758 = icmp ne i32 %745, 0
  %759 = fmul fast float %740, %573
  %760 = fcmp fast olt float %741, %759
  %761 = and i1 %758, %760
  %762 = icmp ne i32 %746, 0
  %763 = fmul fast float %740, %575
  %764 = fcmp fast ogt float %741, %763
  %765 = and i1 %762, %764
  %766 = icmp ne i32 %747, 0
  %767 = fcmp fast olt float %740, %559
  %768 = and i1 %766, %767
  %769 = icmp ne i32 %748, 0
  %770 = fcmp fast ogt float %740, %563
  %771 = and i1 %769, %770
  %772 = add nuw nsw i32 %749, 1
  %773 = icmp eq i32 %772, 8
  br i1 %773, label %787, label %774

; <label>:774                                     ; preds = %739
  %775 = zext i1 %771 to i32
  %776 = zext i1 %768 to i32
  %777 = zext i1 %765 to i32
  %778 = zext i1 %761 to i32
  %779 = zext i1 %757 to i32
  %780 = zext i1 %753 to i32
  %781 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 %772
  %782 = load float, float* %781, align 4
  %783 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 %772
  %784 = load float, float* %783, align 4
  %785 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 %772
  %786 = load float, float* %785, align 4
  br label %739

; <label>:787                                     ; preds = %739
  %788 = or i1 %753, %757
  %789 = or i1 %761, %788
  %790 = or i1 %765, %789
  %791 = or i1 %768, %790
  %792 = or i1 %771, %791
  %793 = xor i1 %792, true
  br label %794

; <label>:794                                     ; preds = %787, %582, %499
  %795 = phi i32 [ %583, %787 ], [ %583, %582 ], [ 0, %499 ]
  %796 = phi i1 [ %793, %787 ], [ false, %582 ], [ false, %499 ]
  %797 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %798 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %796)  ; WaveActiveBallot(cond)
  %799 = extractvalue %dx.types.fouri32 %798, 0
  %800 = extractvalue %dx.types.fouri32 %798, 1
  %801 = icmp ugt i32 %797, 63
  br i1 %801, label %823, label %802, !dx.controlflow.hints !38

; <label>:802                                     ; preds = %794
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %803 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %803, label %804, label %807, !dx.controlflow.hints !39

; <label>:804                                     ; preds = %802
  %805 = udiv i32 %11, %797
  %806 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %805
  store i32 %799, i32 addrspace(3)* %806, align 4, !tbaa !32
  br label %807

; <label>:807                                     ; preds = %804, %802
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %808 = icmp eq i32 %797, 32
  br i1 %808, label %809, label %812, !dx.controlflow.hints !44

; <label>:809                                     ; preds = %807
  %810 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !32
  %811 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !32
  br label %823

; <label>:812                                     ; preds = %807
  %813 = icmp eq i32 %797, 16
  br i1 %813, label %814, label %823, !dx.controlflow.hints !45

; <label>:814                                     ; preds = %812
  %815 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !32
  %816 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !32
  %817 = shl i32 %816, 16
  %818 = or i32 %817, %815
  %819 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !32
  %820 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !32
  %821 = shl i32 %820, 16
  %822 = or i32 %821, %819
  br label %823

; <label>:823                                     ; preds = %814, %812, %809, %794
  %824 = phi i32 [ %810, %809 ], [ %818, %814 ], [ 0, %812 ], [ %799, %794 ]
  %825 = phi i32 [ %811, %809 ], [ %822, %814 ], [ 0, %812 ], [ %800, %794 ]
  %826 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %824, i32* %826, align 4
  %827 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %825, i32* %827, align 4
  %828 = icmp eq i32 %85, 5
  %829 = and i32 %87, 31
  %830 = shl i32 1, %829
  %831 = add i32 %830, -1
  %832 = select i1 %828, i32 -1, i32 %831
  %833 = getelementptr [2 x i32], [2 x i32]* %20, i32 0, i32 %535
  %834 = load i32, i32* %833, align 4, !tbaa !32
  %835 = and i32 %534, 31
  %836 = lshr i32 %834, %835
  %837 = and i32 %836, %832
  %838 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %837)  ; Countbits(value)
  %839 = icmp eq i32 %11, 0
  br i1 %839, label %840, label %841, !dx.controlflow.hints !53

; <label>:840                                     ; preds = %823
  store i32 0, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !32
  br label %841

; <label>:841                                     ; preds = %840, %823
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %842 = icmp eq i32 %533, 0
  br i1 %842, label %843, label %848, !dx.controlflow.hints !54

; <label>:843                                     ; preds = %841
  %844 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %531
  br i1 %545, label %847, label %845, !dx.controlflow.hints !55

; <label>:845                                     ; preds = %843
  %846 = atomicrmw add i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", i32 %838 seq_cst
  store i32 %846, i32 addrspace(3)* %844, align 4, !tbaa !32
  br label %848

; <label>:847                                     ; preds = %843
  store i32 0, i32 addrspace(3)* %844, align 4, !tbaa !32
  br label %848

; <label>:848                                     ; preds = %847, %845, %841
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %839, label %849, label %852, !dx.controlflow.hints !56

; <label>:849                                     ; preds = %848
  %850 = load i32, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !32
  %851 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %540, i32 0, i32 undef, i32 %850)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %851, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !32
  br label %852

; <label>:852                                     ; preds = %849, %848
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %545, label %901, label %853, !dx.controlflow.hints !57

; <label>:853                                     ; preds = %852
  %854 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %531
  %855 = load i32, i32 addrspace(3)* %854, align 4, !tbaa !32
  %856 = load i32, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !32
  %857 = add i32 %856, %855
  %858 = and i32 %533, 31
  %859 = shl i32 1, %858
  %860 = and i32 %837, %859
  %861 = icmp eq i32 %860, 0
  br i1 %861, label %870, label %862, !dx.controlflow.hints !58

; <label>:862                                     ; preds = %853
  %863 = add i32 %859, -1
  %864 = and i32 %837, %863
  %865 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %864)  ; Countbits(value)
  %866 = add i32 %865, %857
  %867 = icmp ult i32 %866, %98
  br i1 %867, label %868, label %870, !dx.controlflow.hints !59

; <label>:868                                     ; preds = %862
  %869 = shl i32 %866, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %869, i32 undef, i32 %795, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %870

; <label>:870                                     ; preds = %868, %862, %853
  br i1 %842, label %871, label %901, !dx.controlflow.hints !60

; <label>:871                                     ; preds = %870
  %872 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %873 = extractvalue %dx.types.CBufRet.i32 %872, 0
  %874 = icmp ugt i32 %873, %857
  %875 = icmp ne i32 %838, 0
  %876 = and i1 %875, %874
  br i1 %876, label %877, label %901, !dx.controlflow.hints !48

; <label>:877                                     ; preds = %871
  %878 = extractvalue %dx.types.CBufRet.i32 %872, 2
  %879 = sub i32 %873, %857
  %880 = call i32 @dx.op.binary.i32(i32 40, i32 %838, i32 %879)  ; UMin(a,b)
  %881 = add i32 %880, -1
  %882 = lshr i32 %881, 1
  %883 = or i32 %882, %881
  %884 = lshr i32 %883, 2
  %885 = or i32 %884, %883
  %886 = lshr i32 %885, 4
  %887 = or i32 %886, %885
  %888 = lshr i32 %887, 8
  %889 = or i32 %888, %887
  %890 = lshr i32 %889, 16
  %891 = or i32 %890, %889
  %892 = add i32 %891, 1
  %893 = call i32 @dx.op.binary.i32(i32 40, i32 %892, i32 64)  ; UMin(a,b)
  %894 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %893)  ; FirstbitLo(value)
  %895 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %894, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %896 = lshr i32 %895, 3
  %897 = icmp ult i32 %896, %878
  br i1 %897, label %898, label %901, !dx.controlflow.hints !49

; <label>:898                                     ; preds = %877
  %899 = mul i32 %894, %878
  %900 = add i32 %896, %899
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %900, i32 0, i32 %530, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %900, i32 4, i32 %857, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %900, i32 8, i32 %880, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %901

; <label>:901                                     ; preds = %898, %877, %871, %870, %852, %496, %475, %469, %466
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
!dx.entryPoints = !{!20}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 0}
!2 = !{i32 1, i32 6}
!3 = !{!"cs", i32 6, i32 0}
!4 = !{!5, !13, !18, null}
!5 = !{!6, !7, !9, !10, !12}
!6 = !{i32 0, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i32 0, null}
!7 = !{i32 1, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i32 0, !8}
!8 = !{i32 1, i32 4}
!9 = !{i32 2, %struct.ByteAddressBuffer* undef, !"", i32 0, i32 2, i32 1, i32 11, i32 0, null}
!10 = !{i32 3, %"class.StructuredBuffer<CellIndirection>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i32 0, !11}
!11 = !{i32 1, i32 12}
!12 = !{i32 4, %"class.StructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 4, i32 1, i32 12, i32 0, !8}
!13 = !{!14, !15, !16, !17}
!14 = !{i32 0, %"class.RWStructuredBuffer<CellIndirection>"* undef, !"", i32 0, i32 2, i32 1, i32 12, i1 false, i1 false, i1 false, !11}
!15 = !{i32 1, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 3, i32 1, i32 12, i1 false, i1 false, i1 false, !8}
!16 = !{i32 2, %"class.RWStructuredBuffer<unsigned int>"* undef, !"", i32 0, i32 1, i32 1, i32 12, i1 false, i1 false, i1 false, !8}
!17 = !{i32 3, %struct.RWByteAddressBuffer* undef, !"", i32 0, i32 0, i32 1, i32 11, i1 false, i1 false, i1 false, null}
!18 = !{!19}
!19 = !{i32 0, %hostlayout.DecalVolumeCsConstants* undef, !"", i32 0, i32 0, i32 1, i32 1424, null}
!20 = !{void ()* @cs_decal_volume_cluster_pass_mid, !"cs_decal_volume_cluster_pass_mid", null, !4, !21}
!21 = !{i32 0, i64 524560, i32 4, !22}
!22 = !{i32 64, i32 1, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = distinct !{!31, !"dx.controlflow.hints", i32 2}
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = distinct !{!37, !"dx.controlflow.hints", i32 2}
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = !{!41, !43}
!41 = distinct !{!41, !42, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!42 = distinct !{!42, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!43 = distinct !{!43, !42, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
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
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}

