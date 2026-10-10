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
; shader hash: f8b5bd476c324887aba6a3e254ec0032
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
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<CellIndirection>" = type { %struct.CellIndirection }
%struct.CellIndirection = type { i32, i32, i32 }
%"class.RWStructuredBuffer<CellIndirection>" = type { %struct.CellIndirection }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
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
  br i1 %90, label %99, label %518, !dx.controlflow.hints !28

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
  %142 = lshr i32 %11, 6
  %143 = and i32 %11, 63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147, !dx.controlflow.hints !30

; <label>:145                                     ; preds = %140
  %146 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %142
  store i32 %141, i32 addrspace(3)* %146, align 4, !tbaa !31
  br label %147

; <label>:147                                     ; preds = %145, %140
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %148 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %142
  %149 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !31
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %153 = uitofp i32 %128 to float
  %154 = uitofp i32 %130 to float
  %155 = uitofp i32 %131 to float
  %156 = fmul fast float %155, %97
  %157 = fsub fast float %151, %152
  %158 = fmul fast float %156, %157
  %159 = fadd fast float %158, %152
  %160 = fadd fast float %155, 1.000000e+00
  %161 = fmul fast float %160, %97
  %162 = fmul fast float %161, %157
  %163 = fadd fast float %162, %152
  %164 = fmul fast float %95, 2.000000e+00
  %165 = fmul fast float %164, %153
  %166 = fadd fast float %165, -1.000000e+00
  %167 = fadd fast float %153, 1.000000e+00
  %168 = fmul fast float %164, %167
  %169 = fadd fast float %168, -1.000000e+00
  %170 = fmul fast float %96, 2.000000e+00
  %171 = fadd fast float %154, 1.000000e+00
  %172 = fmul fast float %170, %171
  %173 = fsub fast float 1.000000e+00, %172
  %174 = fmul fast float %170, %154
  %175 = fsub fast float 1.000000e+00, %174
  %176 = add i32 %109, 63
  %177 = and i32 %176, -64
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %485, label %179

; <label>:179                                     ; preds = %147
  br label %180

; <label>:180                                     ; preds = %480, %179
  %181 = phi i32 [ %481, %480 ], [ 0, %179 ]
  %182 = phi i32 [ %482, %480 ], [ 0, %179 ]
  %183 = add i32 %182, %11
  %184 = icmp ult i32 %183, %109
  %185 = and i1 %134, %184
  br i1 %185, label %186, label %191, !dx.controlflow.hints !35

; <label>:186                                     ; preds = %180
  %187 = add i32 %183, %107
  %188 = shl i32 %187, 2
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  br label %191

; <label>:191                                     ; preds = %186, %180
  %192 = phi i32 [ %190, %186 ], [ -1, %180 ]
  %193 = icmp ult i32 %192, %89
  br i1 %193, label %194, label %404, !dx.controlflow.hints !36

; <label>:194                                     ; preds = %191
  %195 = mul i32 %192, 48
  %196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = extractvalue %dx.types.ResRet.f32 %196, 1
  %199 = extractvalue %dx.types.ResRet.f32 %196, 2
  %200 = or i32 %195, 12
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = extractvalue %dx.types.ResRet.f32 %201, 1
  %204 = extractvalue %dx.types.ResRet.f32 %201, 2
  %205 = add i32 %195, 24
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = extractvalue %dx.types.ResRet.f32 %206, 1
  %209 = extractvalue %dx.types.ResRet.f32 %206, 2
  %210 = add i32 %195, 36
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.f32 %211, 0
  %213 = extractvalue %dx.types.ResRet.f32 %211, 1
  %214 = extractvalue %dx.types.ResRet.f32 %211, 2
  %215 = fsub fast float %197, %202
  %216 = fsub fast float %198, %203
  %217 = fsub fast float %199, %204
  %218 = fsub fast float %215, %207
  %219 = fsub fast float %216, %208
  %220 = fsub fast float %217, %209
  %221 = fadd fast float %218, %212
  %222 = fadd fast float %219, %213
  %223 = fadd fast float %220, %214
  %224 = fsub fast float %218, %212
  %225 = fsub fast float %219, %213
  %226 = fsub fast float %220, %214
  %227 = fadd fast float %202, %197
  %228 = fadd fast float %203, %198
  %229 = fadd fast float %204, %199
  %230 = fsub fast float %227, %207
  %231 = fsub fast float %228, %208
  %232 = fsub fast float %229, %209
  %233 = fsub fast float %230, %212
  %234 = fsub fast float %231, %213
  %235 = fsub fast float %232, %214
  %236 = fadd fast float %215, %207
  %237 = fadd fast float %216, %208
  %238 = fadd fast float %217, %209
  %239 = fsub fast float %236, %212
  %240 = fsub fast float %237, %213
  %241 = fsub fast float %238, %214
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 3
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %255 = extractvalue %dx.types.CBufRet.f32 %254, 0
  %256 = extractvalue %dx.types.CBufRet.f32 %254, 1
  %257 = extractvalue %dx.types.CBufRet.f32 %254, 3
  %258 = fmul fast float %243, %221
  %259 = call float @dx.op.tertiary.f32(i32 46, float %247, float %222, float %258)  ; FMad(a,b,c)
  %260 = call float @dx.op.tertiary.f32(i32 46, float %251, float %223, float %259)  ; FMad(a,b,c)
  %261 = fadd fast float %260, %255
  %262 = fmul fast float %244, %221
  %263 = call float @dx.op.tertiary.f32(i32 46, float %248, float %222, float %262)  ; FMad(a,b,c)
  %264 = call float @dx.op.tertiary.f32(i32 46, float %252, float %223, float %263)  ; FMad(a,b,c)
  %265 = fadd fast float %264, %256
  %266 = fmul fast float %245, %221
  %267 = call float @dx.op.tertiary.f32(i32 46, float %249, float %222, float %266)  ; FMad(a,b,c)
  %268 = call float @dx.op.tertiary.f32(i32 46, float %253, float %223, float %267)  ; FMad(a,b,c)
  %269 = fadd fast float %268, %257
  %270 = fmul fast float %243, %224
  %271 = call float @dx.op.tertiary.f32(i32 46, float %247, float %225, float %270)  ; FMad(a,b,c)
  %272 = call float @dx.op.tertiary.f32(i32 46, float %251, float %226, float %271)  ; FMad(a,b,c)
  %273 = fadd fast float %272, %255
  %274 = fmul fast float %244, %224
  %275 = call float @dx.op.tertiary.f32(i32 46, float %248, float %225, float %274)  ; FMad(a,b,c)
  %276 = call float @dx.op.tertiary.f32(i32 46, float %252, float %226, float %275)  ; FMad(a,b,c)
  %277 = fadd fast float %276, %256
  %278 = fmul fast float %245, %224
  %279 = call float @dx.op.tertiary.f32(i32 46, float %249, float %225, float %278)  ; FMad(a,b,c)
  %280 = call float @dx.op.tertiary.f32(i32 46, float %253, float %226, float %279)  ; FMad(a,b,c)
  %281 = fadd fast float %280, %257
  %282 = fmul fast float %243, %233
  %283 = call float @dx.op.tertiary.f32(i32 46, float %247, float %234, float %282)  ; FMad(a,b,c)
  %284 = call float @dx.op.tertiary.f32(i32 46, float %251, float %235, float %283)  ; FMad(a,b,c)
  %285 = fadd fast float %284, %255
  %286 = fmul fast float %244, %233
  %287 = call float @dx.op.tertiary.f32(i32 46, float %248, float %234, float %286)  ; FMad(a,b,c)
  %288 = call float @dx.op.tertiary.f32(i32 46, float %252, float %235, float %287)  ; FMad(a,b,c)
  %289 = fadd fast float %288, %256
  %290 = fmul fast float %245, %233
  %291 = call float @dx.op.tertiary.f32(i32 46, float %249, float %234, float %290)  ; FMad(a,b,c)
  %292 = call float @dx.op.tertiary.f32(i32 46, float %253, float %235, float %291)  ; FMad(a,b,c)
  %293 = fadd fast float %292, %257
  %294 = fmul fast float %243, %239
  %295 = call float @dx.op.tertiary.f32(i32 46, float %247, float %240, float %294)  ; FMad(a,b,c)
  %296 = call float @dx.op.tertiary.f32(i32 46, float %251, float %241, float %295)  ; FMad(a,b,c)
  %297 = fadd fast float %296, %255
  %298 = fmul fast float %244, %239
  %299 = call float @dx.op.tertiary.f32(i32 46, float %248, float %240, float %298)  ; FMad(a,b,c)
  %300 = call float @dx.op.tertiary.f32(i32 46, float %252, float %241, float %299)  ; FMad(a,b,c)
  %301 = fadd fast float %300, %256
  %302 = fmul fast float %245, %239
  %303 = call float @dx.op.tertiary.f32(i32 46, float %249, float %240, float %302)  ; FMad(a,b,c)
  %304 = call float @dx.op.tertiary.f32(i32 46, float %253, float %241, float %303)  ; FMad(a,b,c)
  %305 = fadd fast float %304, %257
  %306 = fsub fast float %284, %272
  %307 = fsub fast float %288, %276
  %308 = fsub fast float %292, %280
  %309 = fsub fast float %296, %272
  %310 = fsub fast float %300, %276
  %311 = fsub fast float %304, %280
  %312 = fadd fast float %306, %261
  %313 = fadd fast float %307, %265
  %314 = fadd fast float %308, %269
  %315 = fadd fast float %309, %312
  %316 = fadd fast float %310, %313
  %317 = fadd fast float %311, %314
  %318 = fadd fast float %309, %261
  %319 = fadd fast float %310, %265
  %320 = fadd fast float %311, %269
  %321 = fadd fast float %309, %285
  %322 = fadd fast float %310, %289
  %323 = fadd fast float %311, %293
  %324 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 0
  %325 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 0
  %326 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 0
  store float %261, float* %324, align 4
  store float %265, float* %325, align 4
  store float %269, float* %326, align 4
  %327 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 1
  %328 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 1
  %329 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 1
  store float %312, float* %327, align 4
  store float %313, float* %328, align 4
  store float %314, float* %329, align 4
  %330 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 2
  %331 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 2
  %332 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 2
  store float %315, float* %330, align 4
  store float %316, float* %331, align 4
  store float %317, float* %332, align 4
  %333 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 3
  %334 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 3
  %335 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 3
  store float %318, float* %333, align 4
  store float %319, float* %334, align 4
  store float %320, float* %335, align 4
  %336 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 4
  %337 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 4
  %338 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 4
  store float %273, float* %336, align 4
  store float %277, float* %337, align 4
  store float %281, float* %338, align 4
  %339 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 5
  %340 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 5
  %341 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 5
  store float %285, float* %339, align 4
  store float %289, float* %340, align 4
  store float %293, float* %341, align 4
  %342 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 6
  %343 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 6
  %344 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 6
  store float %321, float* %342, align 4
  store float %322, float* %343, align 4
  store float %323, float* %344, align 4
  %345 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 7
  %346 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 7
  %347 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 7
  store float %297, float* %345, align 4
  store float %301, float* %346, align 4
  store float %305, float* %347, align 4
  br label %348

; <label>:348                                     ; preds = %383, %194
  %349 = phi float [ %269, %194 ], [ %395, %383 ]
  %350 = phi float [ %265, %194 ], [ %393, %383 ]
  %351 = phi float [ %261, %194 ], [ %391, %383 ]
  %352 = phi i32 [ 1, %194 ], [ %389, %383 ]
  %353 = phi i32 [ 1, %194 ], [ %388, %383 ]
  %354 = phi i32 [ 1, %194 ], [ %387, %383 ]
  %355 = phi i32 [ 1, %194 ], [ %386, %383 ]
  %356 = phi i32 [ 1, %194 ], [ %385, %383 ]
  %357 = phi i32 [ 1, %194 ], [ %384, %383 ]
  %358 = phi i32 [ 0, %194 ], [ %381, %383 ]
  %359 = icmp ne i32 %352, 0
  %360 = fmul fast float %349, %166
  %361 = fcmp fast olt float %351, %360
  %362 = and i1 %359, %361
  %363 = icmp ne i32 %353, 0
  %364 = fmul fast float %349, %169
  %365 = fcmp fast ogt float %351, %364
  %366 = and i1 %363, %365
  %367 = icmp ne i32 %354, 0
  %368 = fmul fast float %349, %173
  %369 = fcmp fast olt float %350, %368
  %370 = and i1 %367, %369
  %371 = icmp ne i32 %355, 0
  %372 = fmul fast float %349, %175
  %373 = fcmp fast ogt float %350, %372
  %374 = and i1 %371, %373
  %375 = icmp ne i32 %356, 0
  %376 = fcmp fast olt float %349, %159
  %377 = and i1 %375, %376
  %378 = icmp ne i32 %357, 0
  %379 = fcmp fast ogt float %349, %163
  %380 = and i1 %378, %379
  %381 = add nuw nsw i32 %358, 1
  %382 = icmp eq i32 %381, 8
  br i1 %382, label %396, label %383

; <label>:383                                     ; preds = %348
  %384 = zext i1 %380 to i32
  %385 = zext i1 %377 to i32
  %386 = zext i1 %374 to i32
  %387 = zext i1 %370 to i32
  %388 = zext i1 %366 to i32
  %389 = zext i1 %362 to i32
  %390 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 %381
  %391 = load float, float* %390, align 4
  %392 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 %381
  %393 = load float, float* %392, align 4
  %394 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 %381
  %395 = load float, float* %394, align 4
  br label %348

; <label>:396                                     ; preds = %348
  %397 = or i1 %362, %366
  %398 = or i1 %370, %397
  %399 = or i1 %374, %398
  %400 = or i1 %377, %399
  %401 = or i1 %380, %400
  %402 = zext i1 %401 to i32
  %403 = xor i32 %402, 1
  br label %404

; <label>:404                                     ; preds = %396, %191
  %405 = phi i32 [ %403, %396 ], [ 0, %191 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %406 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %11
  store i32 %405, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %407 = and i32 %11, 1
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %415, label %409, !dx.controlflow.hints !41

; <label>:409                                     ; preds = %404
  %410 = and i32 %11, -2
  %411 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %410
  %412 = load i32, i32 addrspace(3)* %411, align 4, !tbaa !31, !noalias !37
  %413 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  %414 = add i32 %413, %412
  store i32 %414, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  br label %415

; <label>:415                                     ; preds = %409, %404
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %416 = and i32 %11, 2
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %425, label %418, !dx.controlflow.hints !42

; <label>:418                                     ; preds = %415
  %419 = and i32 %11, -4
  %420 = or i32 %419, 1
  %421 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %420
  %422 = load i32, i32 addrspace(3)* %421, align 4, !tbaa !31, !noalias !37
  %423 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  %424 = add i32 %423, %422
  store i32 %424, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  br label %425

; <label>:425                                     ; preds = %418, %415
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %426 = and i32 %11, 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %435, label %428, !dx.controlflow.hints !43

; <label>:428                                     ; preds = %425
  %429 = and i32 %11, -8
  %430 = or i32 %429, 3
  %431 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %430
  %432 = load i32, i32 addrspace(3)* %431, align 4, !tbaa !31, !noalias !37
  %433 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  %434 = add i32 %433, %432
  store i32 %434, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  br label %435

; <label>:435                                     ; preds = %428, %425
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %436 = and i32 %11, 8
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %445, label %438, !dx.controlflow.hints !44

; <label>:438                                     ; preds = %435
  %439 = and i32 %11, -16
  %440 = or i32 %439, 7
  %441 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %440
  %442 = load i32, i32 addrspace(3)* %441, align 4, !tbaa !31, !noalias !37
  %443 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  %444 = add i32 %443, %442
  store i32 %444, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  br label %445

; <label>:445                                     ; preds = %438, %435
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %446 = and i32 %11, 16
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %455, label %448, !dx.controlflow.hints !45

; <label>:448                                     ; preds = %445
  %449 = and i32 %11, -32
  %450 = or i32 %449, 15
  %451 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %450
  %452 = load i32, i32 addrspace(3)* %451, align 4, !tbaa !31, !noalias !37
  %453 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  %454 = add i32 %453, %452
  store i32 %454, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  br label %455

; <label>:455                                     ; preds = %448, %445
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %456 = and i32 %11, 32
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %460, !dx.controlflow.hints !46

; <label>:458                                     ; preds = %455
  %459 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  br label %467

; <label>:460                                     ; preds = %455
  %461 = and i32 %11, -64
  %462 = or i32 %461, 31
  %463 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %462
  %464 = load i32, i32 addrspace(3)* %463, align 4, !tbaa !31, !noalias !37
  %465 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  %466 = add i32 %465, %464
  store i32 %466, i32 addrspace(3)* %406, align 4, !tbaa !31, !noalias !37
  br label %467

; <label>:467                                     ; preds = %460, %458
  %468 = phi i32 [ %459, %458 ], [ %466, %460 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %469 = or i32 %11, 63
  %470 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %469
  %471 = load i32, i32 addrspace(3)* %470, align 4, !tbaa !31, !noalias !37
  %472 = sub i32 %468, %405
  %473 = add i32 %181, %149
  %474 = add i32 %473, %472
  %475 = icmp ne i32 %405, 0
  %476 = icmp ult i32 %474, %98
  %477 = and i1 %475, %476
  br i1 %477, label %478, label %480, !dx.controlflow.hints !47

; <label>:478                                     ; preds = %467
  %479 = shl i32 %474, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %479, i32 undef, i32 %192, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %480

; <label>:480                                     ; preds = %478, %467
  %481 = add i32 %471, %181
  %482 = add nuw i32 %182, 64
  %483 = icmp ult i32 %482, %177
  br i1 %483, label %180, label %484

; <label>:484                                     ; preds = %480
  br label %485

; <label>:485                                     ; preds = %484, %147
  %486 = phi i32 [ 0, %147 ], [ %481, %484 ]
  %487 = and i1 %135, %134
  br i1 %487, label %488, label %941, !dx.controlflow.hints !48

; <label>:488                                     ; preds = %485
  %489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.i32 %489, 0
  %491 = icmp ugt i32 %490, %149
  %492 = icmp ne i32 %486, 0
  %493 = and i1 %492, %491
  br i1 %493, label %494, label %941, !dx.controlflow.hints !49

; <label>:494                                     ; preds = %488
  %495 = extractvalue %dx.types.CBufRet.i32 %489, 2
  %496 = sub i32 %490, %149
  %497 = call i32 @dx.op.binary.i32(i32 40, i32 %486, i32 %496)  ; UMin(a,b)
  %498 = add i32 %497, -1
  %499 = lshr i32 %498, 1
  %500 = or i32 %499, %498
  %501 = lshr i32 %500, 2
  %502 = or i32 %501, %500
  %503 = lshr i32 %502, 4
  %504 = or i32 %503, %502
  %505 = lshr i32 %504, 8
  %506 = or i32 %505, %504
  %507 = lshr i32 %506, 16
  %508 = or i32 %507, %506
  %509 = add i32 %508, 1
  %510 = call i32 @dx.op.binary.i32(i32 40, i32 %509, i32 64)  ; UMin(a,b)
  %511 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %510)  ; FirstbitLo(value)
  %512 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %511, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %513 = lshr i32 %512, 3
  %514 = icmp ult i32 %513, %495
  br i1 %514, label %515, label %941, !dx.controlflow.hints !50

; <label>:515                                     ; preds = %494
  %516 = mul i32 %511, %495
  %517 = add i32 %513, %516
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %517, i32 0, i32 %127, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %517, i32 4, i32 %149, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %517, i32 8, i32 %497, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %941

; <label>:518                                     ; preds = %84
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %85, i32 0)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = call i32 @dx.op.binary.i32(i32 40, i32 %520, i32 %35)  ; UMin(a,b)
  %522 = shl i32 %86, 6
  %523 = sub i32 %13, %522
  %524 = lshr i32 %523, %85
  %525 = lshr i32 %524, 3
  %526 = mul i32 %22, %85
  %527 = add i32 %526, %525
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %527, i32 0)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %527, i32 4)  ; BufferLoad(srv,index,wot)
  %531 = extractvalue %dx.types.ResRet.i32 %530, 0
  %532 = lshr i32 %529, 20
  %533 = lshr i32 %524, 2
  %534 = and i32 %533, 1
  %535 = lshr i32 %524, 1
  %536 = and i32 %535, 1
  %537 = and i32 %524, 1
  %538 = shl nuw nsw i32 %532, 1
  %539 = or i32 %538, %537
  %540 = lshr i32 %529, 7
  %541 = and i32 %540, 8190
  %542 = or i32 %541, %536
  %543 = shl i32 %529, 1
  %544 = and i32 %543, 510
  %545 = or i32 %544, %534
  %546 = shl i32 %539, 20
  %547 = shl nuw nsw i32 %542, 8
  %548 = or i32 %546, %547
  %549 = or i32 %548, %545
  %550 = lshr i32 %11, %85
  %551 = add i32 %87, -1
  %552 = and i32 %551, %11
  %553 = shl i32 %550, %85
  %554 = lshr i32 %11, 5
  %555 = lshr i32 %548, 20
  %556 = lshr i32 %549, 8
  %557 = and i32 %556, 4095
  %558 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.i32 %558, 1
  %560 = icmp uge i32 %555, %92
  %561 = icmp uge i32 %557, %93
  %562 = or i1 %560, %561
  %563 = icmp uge i32 %524, %521
  %564 = or i1 %562, %563
  br i1 %564, label %813, label %565, !dx.controlflow.hints !51

; <label>:565                                     ; preds = %518
  %566 = and i32 %545, 255
  %567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 %527, i32 8)  ; BufferLoad(srv,index,wot)
  %568 = extractvalue %dx.types.ResRet.i32 %567, 0
  %569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %570 = extractvalue %dx.types.CBufRet.f32 %569, 1
  %571 = extractvalue %dx.types.CBufRet.f32 %569, 0
  %572 = uitofp i32 %555 to float
  %573 = uitofp i32 %557 to float
  %574 = uitofp i32 %566 to float
  %575 = fmul fast float %574, %97
  %576 = fsub fast float %570, %571
  %577 = fmul fast float %575, %576
  %578 = fadd fast float %577, %571
  %579 = fadd fast float %574, 1.000000e+00
  %580 = fmul fast float %579, %97
  %581 = fmul fast float %580, %576
  %582 = fadd fast float %581, %571
  %583 = fmul fast float %95, 2.000000e+00
  %584 = fmul fast float %583, %572
  %585 = fadd fast float %584, -1.000000e+00
  %586 = fadd fast float %572, 1.000000e+00
  %587 = fmul fast float %583, %586
  %588 = fadd fast float %587, -1.000000e+00
  %589 = fmul fast float %96, 2.000000e+00
  %590 = fadd fast float %573, 1.000000e+00
  %591 = fmul fast float %589, %590
  %592 = fsub fast float 1.000000e+00, %591
  %593 = fmul fast float %589, %573
  %594 = fsub fast float 1.000000e+00, %593
  %595 = icmp ult i32 %552, %568
  br i1 %595, label %596, label %601, !dx.controlflow.hints !52

; <label>:596                                     ; preds = %565
  %597 = add i32 %531, %552
  %598 = shl i32 %597, 2
  %599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 %598, i32 undef)  ; BufferLoad(srv,index,wot)
  %600 = extractvalue %dx.types.ResRet.i32 %599, 0
  br label %601

; <label>:601                                     ; preds = %596, %565
  %602 = phi i32 [ %600, %596 ], [ -1, %565 ]
  %603 = icmp ult i32 %602, %89
  br i1 %603, label %604, label %813, !dx.controlflow.hints !53

; <label>:604                                     ; preds = %601
  %605 = mul i32 %602, 48
  %606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.f32 %606, 0
  %608 = extractvalue %dx.types.ResRet.f32 %606, 1
  %609 = extractvalue %dx.types.ResRet.f32 %606, 2
  %610 = or i32 %605, 12
  %611 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %610, i32 undef)  ; BufferLoad(srv,index,wot)
  %612 = extractvalue %dx.types.ResRet.f32 %611, 0
  %613 = extractvalue %dx.types.ResRet.f32 %611, 1
  %614 = extractvalue %dx.types.ResRet.f32 %611, 2
  %615 = add i32 %605, 24
  %616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %615, i32 undef)  ; BufferLoad(srv,index,wot)
  %617 = extractvalue %dx.types.ResRet.f32 %616, 0
  %618 = extractvalue %dx.types.ResRet.f32 %616, 1
  %619 = extractvalue %dx.types.ResRet.f32 %616, 2
  %620 = add i32 %605, 36
  %621 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %9, i32 %620, i32 undef)  ; BufferLoad(srv,index,wot)
  %622 = extractvalue %dx.types.ResRet.f32 %621, 0
  %623 = extractvalue %dx.types.ResRet.f32 %621, 1
  %624 = extractvalue %dx.types.ResRet.f32 %621, 2
  %625 = fsub fast float %607, %612
  %626 = fsub fast float %608, %613
  %627 = fsub fast float %609, %614
  %628 = fsub fast float %625, %617
  %629 = fsub fast float %626, %618
  %630 = fsub fast float %627, %619
  %631 = fadd fast float %628, %622
  %632 = fadd fast float %629, %623
  %633 = fadd fast float %630, %624
  %634 = fsub fast float %628, %622
  %635 = fsub fast float %629, %623
  %636 = fsub fast float %630, %624
  %637 = fadd fast float %612, %607
  %638 = fadd fast float %613, %608
  %639 = fadd fast float %614, %609
  %640 = fsub fast float %637, %617
  %641 = fsub fast float %638, %618
  %642 = fsub fast float %639, %619
  %643 = fsub fast float %640, %622
  %644 = fsub fast float %641, %623
  %645 = fsub fast float %642, %624
  %646 = fadd fast float %625, %617
  %647 = fadd fast float %626, %618
  %648 = fadd fast float %627, %619
  %649 = fsub fast float %646, %622
  %650 = fsub fast float %647, %623
  %651 = fsub fast float %648, %624
  %652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %653 = extractvalue %dx.types.CBufRet.f32 %652, 0
  %654 = extractvalue %dx.types.CBufRet.f32 %652, 1
  %655 = extractvalue %dx.types.CBufRet.f32 %652, 3
  %656 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %657 = extractvalue %dx.types.CBufRet.f32 %656, 0
  %658 = extractvalue %dx.types.CBufRet.f32 %656, 1
  %659 = extractvalue %dx.types.CBufRet.f32 %656, 3
  %660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %661 = extractvalue %dx.types.CBufRet.f32 %660, 0
  %662 = extractvalue %dx.types.CBufRet.f32 %660, 1
  %663 = extractvalue %dx.types.CBufRet.f32 %660, 3
  %664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %10, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %665 = extractvalue %dx.types.CBufRet.f32 %664, 0
  %666 = extractvalue %dx.types.CBufRet.f32 %664, 1
  %667 = extractvalue %dx.types.CBufRet.f32 %664, 3
  %668 = fmul fast float %653, %631
  %669 = call float @dx.op.tertiary.f32(i32 46, float %657, float %632, float %668)  ; FMad(a,b,c)
  %670 = call float @dx.op.tertiary.f32(i32 46, float %661, float %633, float %669)  ; FMad(a,b,c)
  %671 = fadd fast float %670, %665
  %672 = fmul fast float %654, %631
  %673 = call float @dx.op.tertiary.f32(i32 46, float %658, float %632, float %672)  ; FMad(a,b,c)
  %674 = call float @dx.op.tertiary.f32(i32 46, float %662, float %633, float %673)  ; FMad(a,b,c)
  %675 = fadd fast float %674, %666
  %676 = fmul fast float %655, %631
  %677 = call float @dx.op.tertiary.f32(i32 46, float %659, float %632, float %676)  ; FMad(a,b,c)
  %678 = call float @dx.op.tertiary.f32(i32 46, float %663, float %633, float %677)  ; FMad(a,b,c)
  %679 = fadd fast float %678, %667
  %680 = fmul fast float %653, %634
  %681 = call float @dx.op.tertiary.f32(i32 46, float %657, float %635, float %680)  ; FMad(a,b,c)
  %682 = call float @dx.op.tertiary.f32(i32 46, float %661, float %636, float %681)  ; FMad(a,b,c)
  %683 = fadd fast float %682, %665
  %684 = fmul fast float %654, %634
  %685 = call float @dx.op.tertiary.f32(i32 46, float %658, float %635, float %684)  ; FMad(a,b,c)
  %686 = call float @dx.op.tertiary.f32(i32 46, float %662, float %636, float %685)  ; FMad(a,b,c)
  %687 = fadd fast float %686, %666
  %688 = fmul fast float %655, %634
  %689 = call float @dx.op.tertiary.f32(i32 46, float %659, float %635, float %688)  ; FMad(a,b,c)
  %690 = call float @dx.op.tertiary.f32(i32 46, float %663, float %636, float %689)  ; FMad(a,b,c)
  %691 = fadd fast float %690, %667
  %692 = fmul fast float %653, %643
  %693 = call float @dx.op.tertiary.f32(i32 46, float %657, float %644, float %692)  ; FMad(a,b,c)
  %694 = call float @dx.op.tertiary.f32(i32 46, float %661, float %645, float %693)  ; FMad(a,b,c)
  %695 = fadd fast float %694, %665
  %696 = fmul fast float %654, %643
  %697 = call float @dx.op.tertiary.f32(i32 46, float %658, float %644, float %696)  ; FMad(a,b,c)
  %698 = call float @dx.op.tertiary.f32(i32 46, float %662, float %645, float %697)  ; FMad(a,b,c)
  %699 = fadd fast float %698, %666
  %700 = fmul fast float %655, %643
  %701 = call float @dx.op.tertiary.f32(i32 46, float %659, float %644, float %700)  ; FMad(a,b,c)
  %702 = call float @dx.op.tertiary.f32(i32 46, float %663, float %645, float %701)  ; FMad(a,b,c)
  %703 = fadd fast float %702, %667
  %704 = fmul fast float %653, %649
  %705 = call float @dx.op.tertiary.f32(i32 46, float %657, float %650, float %704)  ; FMad(a,b,c)
  %706 = call float @dx.op.tertiary.f32(i32 46, float %661, float %651, float %705)  ; FMad(a,b,c)
  %707 = fadd fast float %706, %665
  %708 = fmul fast float %654, %649
  %709 = call float @dx.op.tertiary.f32(i32 46, float %658, float %650, float %708)  ; FMad(a,b,c)
  %710 = call float @dx.op.tertiary.f32(i32 46, float %662, float %651, float %709)  ; FMad(a,b,c)
  %711 = fadd fast float %710, %666
  %712 = fmul fast float %655, %649
  %713 = call float @dx.op.tertiary.f32(i32 46, float %659, float %650, float %712)  ; FMad(a,b,c)
  %714 = call float @dx.op.tertiary.f32(i32 46, float %663, float %651, float %713)  ; FMad(a,b,c)
  %715 = fadd fast float %714, %667
  %716 = fsub fast float %694, %682
  %717 = fsub fast float %698, %686
  %718 = fsub fast float %702, %690
  %719 = fsub fast float %706, %682
  %720 = fsub fast float %710, %686
  %721 = fsub fast float %714, %690
  %722 = fadd fast float %716, %671
  %723 = fadd fast float %717, %675
  %724 = fadd fast float %718, %679
  %725 = fadd fast float %719, %722
  %726 = fadd fast float %720, %723
  %727 = fadd fast float %721, %724
  %728 = fadd fast float %719, %671
  %729 = fadd fast float %720, %675
  %730 = fadd fast float %721, %679
  %731 = fadd fast float %719, %695
  %732 = fadd fast float %720, %699
  %733 = fadd fast float %721, %703
  %734 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 0
  %735 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 0
  %736 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 0
  store float %671, float* %734, align 4
  store float %675, float* %735, align 4
  store float %679, float* %736, align 4
  %737 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 1
  %738 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 1
  %739 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 1
  store float %722, float* %737, align 4
  store float %723, float* %738, align 4
  store float %724, float* %739, align 4
  %740 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 2
  %741 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 2
  %742 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 2
  store float %725, float* %740, align 4
  store float %726, float* %741, align 4
  store float %727, float* %742, align 4
  %743 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 3
  %744 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 3
  %745 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 3
  store float %728, float* %743, align 4
  store float %729, float* %744, align 4
  store float %730, float* %745, align 4
  %746 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 4
  %747 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 4
  %748 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 4
  store float %683, float* %746, align 4
  store float %687, float* %747, align 4
  store float %691, float* %748, align 4
  %749 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 5
  %750 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 5
  %751 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 5
  store float %695, float* %749, align 4
  store float %699, float* %750, align 4
  store float %703, float* %751, align 4
  %752 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 6
  %753 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 6
  %754 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 6
  store float %731, float* %752, align 4
  store float %732, float* %753, align 4
  store float %733, float* %754, align 4
  %755 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 7
  %756 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 7
  %757 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 7
  store float %707, float* %755, align 4
  store float %711, float* %756, align 4
  store float %715, float* %757, align 4
  br label %758

; <label>:758                                     ; preds = %793, %604
  %759 = phi float [ %679, %604 ], [ %805, %793 ]
  %760 = phi float [ %675, %604 ], [ %803, %793 ]
  %761 = phi float [ %671, %604 ], [ %801, %793 ]
  %762 = phi i32 [ 1, %604 ], [ %799, %793 ]
  %763 = phi i32 [ 1, %604 ], [ %798, %793 ]
  %764 = phi i32 [ 1, %604 ], [ %797, %793 ]
  %765 = phi i32 [ 1, %604 ], [ %796, %793 ]
  %766 = phi i32 [ 1, %604 ], [ %795, %793 ]
  %767 = phi i32 [ 1, %604 ], [ %794, %793 ]
  %768 = phi i32 [ 0, %604 ], [ %791, %793 ]
  %769 = icmp ne i32 %762, 0
  %770 = fmul fast float %759, %585
  %771 = fcmp fast olt float %761, %770
  %772 = and i1 %769, %771
  %773 = icmp ne i32 %763, 0
  %774 = fmul fast float %759, %588
  %775 = fcmp fast ogt float %761, %774
  %776 = and i1 %773, %775
  %777 = icmp ne i32 %764, 0
  %778 = fmul fast float %759, %592
  %779 = fcmp fast olt float %760, %778
  %780 = and i1 %777, %779
  %781 = icmp ne i32 %765, 0
  %782 = fmul fast float %759, %594
  %783 = fcmp fast ogt float %760, %782
  %784 = and i1 %781, %783
  %785 = icmp ne i32 %766, 0
  %786 = fcmp fast olt float %759, %578
  %787 = and i1 %785, %786
  %788 = icmp ne i32 %767, 0
  %789 = fcmp fast ogt float %759, %582
  %790 = and i1 %788, %789
  %791 = add nuw nsw i32 %768, 1
  %792 = icmp eq i32 %791, 8
  br i1 %792, label %806, label %793

; <label>:793                                     ; preds = %758
  %794 = zext i1 %790 to i32
  %795 = zext i1 %787 to i32
  %796 = zext i1 %784 to i32
  %797 = zext i1 %780 to i32
  %798 = zext i1 %776 to i32
  %799 = zext i1 %772 to i32
  %800 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 %791
  %801 = load float, float* %800, align 4
  %802 = getelementptr [8 x float], [8 x float]* %18, i32 0, i32 %791
  %803 = load float, float* %802, align 4
  %804 = getelementptr [8 x float], [8 x float]* %19, i32 0, i32 %791
  %805 = load float, float* %804, align 4
  br label %758

; <label>:806                                     ; preds = %758
  %807 = or i1 %772, %776
  %808 = or i1 %780, %807
  %809 = or i1 %784, %808
  %810 = or i1 %787, %809
  %811 = or i1 %790, %810
  %812 = xor i1 %811, true
  br label %813

; <label>:813                                     ; preds = %806, %601, %518
  %814 = phi i32 [ %602, %806 ], [ %602, %601 ], [ 0, %518 ]
  %815 = phi i1 [ %812, %806 ], [ false, %601 ], [ false, %518 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %816 = and i32 %11, 31
  %817 = shl i32 1, %816
  %818 = select i1 %815, i32 %817, i32 0
  %819 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %11
  store i32 %818, i32 addrspace(3)* %819, align 4, !tbaa !31
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %820 = icmp ult i32 %816, 16
  br i1 %820, label %821, label %827, !dx.controlflow.hints !54

; <label>:821                                     ; preds = %813
  %822 = add i32 %11, 16
  %823 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %822
  %824 = load i32, i32 addrspace(3)* %823, align 4, !tbaa !31
  %825 = load i32, i32 addrspace(3)* %819, align 4, !tbaa !31
  %826 = or i32 %825, %824
  store i32 %826, i32 addrspace(3)* %819, align 4, !tbaa !31
  br label %827

; <label>:827                                     ; preds = %821, %813
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %828 = icmp ult i32 %816, 8
  br i1 %828, label %829, label %835, !dx.controlflow.hints !55

; <label>:829                                     ; preds = %827
  %830 = add i32 %11, 8
  %831 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %830
  %832 = load i32, i32 addrspace(3)* %831, align 4, !tbaa !31
  %833 = load i32, i32 addrspace(3)* %819, align 4, !tbaa !31
  %834 = or i32 %833, %832
  store i32 %834, i32 addrspace(3)* %819, align 4, !tbaa !31
  br label %835

; <label>:835                                     ; preds = %829, %827
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %836 = icmp ult i32 %816, 4
  br i1 %836, label %837, label %843, !dx.controlflow.hints !56

; <label>:837                                     ; preds = %835
  %838 = add i32 %11, 4
  %839 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %838
  %840 = load i32, i32 addrspace(3)* %839, align 4, !tbaa !31
  %841 = load i32, i32 addrspace(3)* %819, align 4, !tbaa !31
  %842 = or i32 %841, %840
  store i32 %842, i32 addrspace(3)* %819, align 4, !tbaa !31
  br label %843

; <label>:843                                     ; preds = %837, %835
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %844 = icmp ult i32 %816, 2
  br i1 %844, label %845, label %851, !dx.controlflow.hints !57

; <label>:845                                     ; preds = %843
  %846 = add i32 %11, 2
  %847 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %846
  %848 = load i32, i32 addrspace(3)* %847, align 4, !tbaa !31
  %849 = load i32, i32 addrspace(3)* %819, align 4, !tbaa !31
  %850 = or i32 %849, %848
  store i32 %850, i32 addrspace(3)* %819, align 4, !tbaa !31
  br label %851

; <label>:851                                     ; preds = %845, %843
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %852 = icmp eq i32 %816, 0
  br i1 %852, label %853, label %859, !dx.controlflow.hints !58

; <label>:853                                     ; preds = %851
  %854 = add i32 %11, 1
  %855 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %854
  %856 = load i32, i32 addrspace(3)* %855, align 4, !tbaa !31
  %857 = load i32, i32 addrspace(3)* %819, align 4, !tbaa !31
  %858 = or i32 %857, %856
  store i32 %858, i32 addrspace(3)* %819, align 4, !tbaa !31
  br label %859

; <label>:859                                     ; preds = %853, %851
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %860 = and i32 %11, -64
  %861 = or i32 %860, 32
  %862 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %860
  %863 = load i32, i32 addrspace(3)* %862, align 4, !tbaa !31
  %864 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %861
  %865 = load i32, i32 addrspace(3)* %864, align 4, !tbaa !31
  %866 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 0
  store i32 %863, i32* %866, align 4
  %867 = getelementptr inbounds [2 x i32], [2 x i32]* %20, i32 0, i32 1
  store i32 %865, i32* %867, align 4
  %868 = icmp eq i32 %85, 5
  %869 = and i32 %87, 31
  %870 = shl i32 1, %869
  %871 = add i32 %870, -1
  %872 = select i1 %868, i32 -1, i32 %871
  %873 = getelementptr [2 x i32], [2 x i32]* %20, i32 0, i32 %554
  %874 = load i32, i32* %873, align 4, !tbaa !31
  %875 = and i32 %553, 31
  %876 = lshr i32 %874, %875
  %877 = and i32 %876, %872
  %878 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %877)  ; Countbits(value)
  %879 = icmp eq i32 %11, 0
  br i1 %879, label %880, label %881, !dx.controlflow.hints !59

; <label>:880                                     ; preds = %859
  store i32 0, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !31
  br label %881

; <label>:881                                     ; preds = %880, %859
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %882 = icmp eq i32 %552, 0
  br i1 %882, label %883, label %888, !dx.controlflow.hints !60

; <label>:883                                     ; preds = %881
  %884 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %550
  br i1 %564, label %887, label %885, !dx.controlflow.hints !61

; <label>:885                                     ; preds = %883
  %886 = atomicrmw add i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", i32 %878 seq_cst
  store i32 %886, i32 addrspace(3)* %884, align 4, !tbaa !31
  br label %888

; <label>:887                                     ; preds = %883
  store i32 0, i32 addrspace(3)* %884, align 4, !tbaa !31
  br label %888

; <label>:888                                     ; preds = %887, %885, %881
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %879, label %889, label %892, !dx.controlflow.hints !62

; <label>:889                                     ; preds = %888
  %890 = load i32, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !31
  %891 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %559, i32 0, i32 undef, i32 %890)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %891, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !31
  br label %892

; <label>:892                                     ; preds = %889, %888
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %564, label %941, label %893, !dx.controlflow.hints !63

; <label>:893                                     ; preds = %892
  %894 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %550
  %895 = load i32, i32 addrspace(3)* %894, align 4, !tbaa !31
  %896 = load i32, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !31
  %897 = add i32 %896, %895
  %898 = and i32 %552, 31
  %899 = shl i32 1, %898
  %900 = and i32 %877, %899
  %901 = icmp eq i32 %900, 0
  br i1 %901, label %910, label %902, !dx.controlflow.hints !64

; <label>:902                                     ; preds = %893
  %903 = add i32 %899, -1
  %904 = and i32 %877, %903
  %905 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %904)  ; Countbits(value)
  %906 = add i32 %905, %897
  %907 = icmp ult i32 %906, %98
  br i1 %907, label %908, label %910, !dx.controlflow.hints !65

; <label>:908                                     ; preds = %902
  %909 = shl i32 %906, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %909, i32 undef, i32 %814, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %910

; <label>:910                                     ; preds = %908, %902, %893
  br i1 %882, label %911, label %941, !dx.controlflow.hints !66

; <label>:911                                     ; preds = %910
  %912 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %10, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %913 = extractvalue %dx.types.CBufRet.i32 %912, 0
  %914 = icmp ugt i32 %913, %897
  %915 = icmp ne i32 %878, 0
  %916 = and i1 %915, %914
  br i1 %916, label %917, label %941, !dx.controlflow.hints !49

; <label>:917                                     ; preds = %911
  %918 = extractvalue %dx.types.CBufRet.i32 %912, 2
  %919 = sub i32 %913, %897
  %920 = call i32 @dx.op.binary.i32(i32 40, i32 %878, i32 %919)  ; UMin(a,b)
  %921 = add i32 %920, -1
  %922 = lshr i32 %921, 1
  %923 = or i32 %922, %921
  %924 = lshr i32 %923, 2
  %925 = or i32 %924, %923
  %926 = lshr i32 %925, 4
  %927 = or i32 %926, %925
  %928 = lshr i32 %927, 8
  %929 = or i32 %928, %927
  %930 = lshr i32 %929, 16
  %931 = or i32 %930, %929
  %932 = add i32 %931, 1
  %933 = call i32 @dx.op.binary.i32(i32 40, i32 %932, i32 64)  ; UMin(a,b)
  %934 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %933)  ; FirstbitLo(value)
  %935 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %3, i32 0, i32 %934, i32 0, i32 undef, i32 8)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %936 = lshr i32 %935, 3
  %937 = icmp ult i32 %936, %918
  br i1 %937, label %938, label %941, !dx.controlflow.hints !50

; <label>:938                                     ; preds = %917
  %939 = mul i32 %934, %918
  %940 = add i32 %936, %939
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %940, i32 0, i32 %549, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %940, i32 4, i32 %897, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %4, i32 %940, i32 8, i32 %920, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %941

; <label>:941                                     ; preds = %938, %917, %911, %910, %892, %515, %494, %488, %485
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

; Function Attrs: noduplicate nounwind
declare void @dx.op.barrier(i32, i32) #2

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

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
!21 = !{i32 0, i64 272, i32 4, !22}
!22 = !{i32 64, i32 1, i32 1}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = distinct !{!29, !"dx.controlflow.hints", i32 2}
!30 = distinct !{!30, !"dx.controlflow.hints", i32 2}
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = distinct !{!35, !"dx.controlflow.hints", i32 2}
!36 = distinct !{!36, !"dx.controlflow.hints", i32 2}
!37 = !{!38, !40}
!38 = distinct !{!38, !39, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!39 = distinct !{!39, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!40 = distinct !{!40, !39, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
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
!58 = distinct !{!58, !"dx.controlflow.hints", i32 2}
!59 = distinct !{!59, !"dx.controlflow.hints", i32 2}
!60 = distinct !{!60, !"dx.controlflow.hints", i32 2}
!61 = distinct !{!61, !"dx.controlflow.hints", i32 2}
!62 = distinct !{!62, !"dx.controlflow.hints", i32 2}
!63 = distinct !{!63, !"dx.controlflow.hints", i32 2}
!64 = distinct !{!64, !"dx.controlflow.hints", i32 2}
!65 = distinct !{!65, !"dx.controlflow.hints", i32 2}
!66 = distinct !{!66, !"dx.controlflow.hints", i32 2}

