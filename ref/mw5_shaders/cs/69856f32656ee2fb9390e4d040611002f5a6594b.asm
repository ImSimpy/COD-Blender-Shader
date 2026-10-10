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
; shader hash: 38f4e2eed7bec3bdd819699c3990ec70
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
%struct.ByteAddressBuffer = type { i32 }
%"class.StructuredBuffer<unsigned int>" = type { i32 }
%"class.StructuredBuffer<CellIndirection>" = type { %struct.CellIndirection }
%struct.CellIndirection = type { i32, i32, i32 }
%"class.RWStructuredBuffer<unsigned int>" = type { i32 }
%struct.RWByteAddressBuffer = type { i32 }
%hostlayout.DecalVolumeCsConstants = type { [4 x <4 x float>], <4 x float>, <4 x float>, <4 x i32>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x i32>, <4 x i32>, <4 x i32>, i32, i32, i32, i32, i32, i32, float, i32, <3 x float>, i32, <4 x float>, float, float, float, float, i32, float, float, i32, %struct.StreamUpdateMultiViewGPU, i32, i32, i32, i32, [20 x <4 x float>], [20 x <4 x float>] }
%struct.StreamUpdateMultiViewGPU = type { [8 x <4 x float>], [8 x <4 x float>], [8 x <4 x float>], i32, i32, float, i32 }

@"\01?tiledSharedMem@@3PAIA" = external addrspace(3) global [64 x i32], align 4
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
  br i1 %88, label %97, label %506, !dx.controlflow.hints !26

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
  %142 = lshr i32 %9, 6
  %143 = and i32 %9, 63
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %147, !dx.controlflow.hints !28

; <label>:145                                     ; preds = %140
  %146 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %142
  store i32 %141, i32 addrspace(3)* %146, align 4, !tbaa !29
  br label %147

; <label>:147                                     ; preds = %145, %140
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %148 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %142
  %149 = load i32, i32 addrspace(3)* %148, align 4, !tbaa !29
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 1
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %153 = uitofp i32 %125 to float
  %154 = uitofp i32 %127 to float
  %155 = uitofp i32 %129 to float
  %156 = fmul fast float %155, %95
  %157 = fsub fast float %151, %152
  %158 = fmul fast float %156, %157
  %159 = fadd fast float %158, %152
  %160 = fadd fast float %155, 1.000000e+00
  %161 = fmul fast float %160, %95
  %162 = fmul fast float %161, %157
  %163 = fadd fast float %162, %152
  %164 = fmul fast float %93, 2.000000e+00
  %165 = fmul fast float %164, %153
  %166 = fadd fast float %165, -1.000000e+00
  %167 = fadd fast float %153, 1.000000e+00
  %168 = fmul fast float %164, %167
  %169 = fadd fast float %168, -1.000000e+00
  %170 = fmul fast float %94, 2.000000e+00
  %171 = fadd fast float %154, 1.000000e+00
  %172 = fmul fast float %170, %171
  %173 = fsub fast float 1.000000e+00, %172
  %174 = fmul fast float %170, %154
  %175 = fsub fast float 1.000000e+00, %174
  %176 = add i32 %107, 63
  %177 = and i32 %176, -64
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %485, label %179

; <label>:179                                     ; preds = %147
  br label %180

; <label>:180                                     ; preds = %480, %179
  %181 = phi i32 [ %481, %480 ], [ 0, %179 ]
  %182 = phi i32 [ %482, %480 ], [ 0, %179 ]
  %183 = add i32 %182, %9
  %184 = icmp ult i32 %183, %107
  %185 = and i1 %132, %184
  br i1 %185, label %186, label %191, !dx.controlflow.hints !33

; <label>:186                                     ; preds = %180
  %187 = add i32 %183, %105
  %188 = shl i32 %187, 2
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  br label %191

; <label>:191                                     ; preds = %186, %180
  %192 = phi i32 [ %190, %186 ], [ -1, %180 ]
  %193 = icmp ult i32 %192, %87
  br i1 %193, label %194, label %404, !dx.controlflow.hints !34

; <label>:194                                     ; preds = %191
  %195 = mul i32 %192, 48
  %196 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.f32 %196, 0
  %198 = extractvalue %dx.types.ResRet.f32 %196, 1
  %199 = extractvalue %dx.types.ResRet.f32 %196, 2
  %200 = or i32 %195, 12
  %201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.f32 %201, 0
  %203 = extractvalue %dx.types.ResRet.f32 %201, 1
  %204 = extractvalue %dx.types.ResRet.f32 %201, 2
  %205 = add i32 %195, 24
  %206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.f32 %206, 0
  %208 = extractvalue %dx.types.ResRet.f32 %206, 1
  %209 = extractvalue %dx.types.ResRet.f32 %206, 2
  %210 = add i32 %195, 36
  %211 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %243 = extractvalue %dx.types.CBufRet.f32 %242, 0
  %244 = extractvalue %dx.types.CBufRet.f32 %242, 1
  %245 = extractvalue %dx.types.CBufRet.f32 %242, 3
  %246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %247 = extractvalue %dx.types.CBufRet.f32 %246, 0
  %248 = extractvalue %dx.types.CBufRet.f32 %246, 1
  %249 = extractvalue %dx.types.CBufRet.f32 %246, 3
  %250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %251 = extractvalue %dx.types.CBufRet.f32 %250, 0
  %252 = extractvalue %dx.types.CBufRet.f32 %250, 1
  %253 = extractvalue %dx.types.CBufRet.f32 %250, 3
  %254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
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
  %324 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 0
  %325 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 0
  %326 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 0
  store float %261, float* %324, align 4
  store float %265, float* %325, align 4
  store float %269, float* %326, align 4
  %327 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 1
  %328 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 1
  %329 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 1
  store float %312, float* %327, align 4
  store float %313, float* %328, align 4
  store float %314, float* %329, align 4
  %330 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 2
  %331 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 2
  %332 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 2
  store float %315, float* %330, align 4
  store float %316, float* %331, align 4
  store float %317, float* %332, align 4
  %333 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 3
  %334 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 3
  %335 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 3
  store float %318, float* %333, align 4
  store float %319, float* %334, align 4
  store float %320, float* %335, align 4
  %336 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 4
  %337 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 4
  %338 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 4
  store float %273, float* %336, align 4
  store float %277, float* %337, align 4
  store float %281, float* %338, align 4
  %339 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 5
  %340 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 5
  %341 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 5
  store float %285, float* %339, align 4
  store float %289, float* %340, align 4
  store float %293, float* %341, align 4
  %342 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 6
  %343 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 6
  %344 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 6
  store float %321, float* %342, align 4
  store float %322, float* %343, align 4
  store float %323, float* %344, align 4
  %345 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 7
  %346 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 7
  %347 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 7
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
  %390 = getelementptr [8 x float], [8 x float]* %12, i32 0, i32 %381
  %391 = load float, float* %390, align 4
  %392 = getelementptr [8 x float], [8 x float]* %13, i32 0, i32 %381
  %393 = load float, float* %392, align 4
  %394 = getelementptr [8 x float], [8 x float]* %14, i32 0, i32 %381
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
  %406 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %9
  store i32 %405, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %407 = and i32 %9, 1
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %415, label %409, !dx.controlflow.hints !39

; <label>:409                                     ; preds = %404
  %410 = and i32 %9, -2
  %411 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %410
  %412 = load i32, i32 addrspace(3)* %411, align 4, !tbaa !29, !noalias !35
  %413 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  %414 = add i32 %413, %412
  store i32 %414, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  br label %415

; <label>:415                                     ; preds = %409, %404
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %416 = and i32 %9, 2
  %417 = icmp eq i32 %416, 0
  br i1 %417, label %425, label %418, !dx.controlflow.hints !40

; <label>:418                                     ; preds = %415
  %419 = and i32 %9, -4
  %420 = or i32 %419, 1
  %421 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %420
  %422 = load i32, i32 addrspace(3)* %421, align 4, !tbaa !29, !noalias !35
  %423 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  %424 = add i32 %423, %422
  store i32 %424, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  br label %425

; <label>:425                                     ; preds = %418, %415
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %426 = and i32 %9, 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %435, label %428, !dx.controlflow.hints !41

; <label>:428                                     ; preds = %425
  %429 = and i32 %9, -8
  %430 = or i32 %429, 3
  %431 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %430
  %432 = load i32, i32 addrspace(3)* %431, align 4, !tbaa !29, !noalias !35
  %433 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  %434 = add i32 %433, %432
  store i32 %434, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  br label %435

; <label>:435                                     ; preds = %428, %425
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %436 = and i32 %9, 8
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %445, label %438, !dx.controlflow.hints !42

; <label>:438                                     ; preds = %435
  %439 = and i32 %9, -16
  %440 = or i32 %439, 7
  %441 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %440
  %442 = load i32, i32 addrspace(3)* %441, align 4, !tbaa !29, !noalias !35
  %443 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  %444 = add i32 %443, %442
  store i32 %444, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  br label %445

; <label>:445                                     ; preds = %438, %435
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %446 = and i32 %9, 16
  %447 = icmp eq i32 %446, 0
  br i1 %447, label %455, label %448, !dx.controlflow.hints !43

; <label>:448                                     ; preds = %445
  %449 = and i32 %9, -32
  %450 = or i32 %449, 15
  %451 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %450
  %452 = load i32, i32 addrspace(3)* %451, align 4, !tbaa !29, !noalias !35
  %453 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  %454 = add i32 %453, %452
  store i32 %454, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  br label %455

; <label>:455                                     ; preds = %448, %445
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %456 = and i32 %9, 32
  %457 = icmp eq i32 %456, 0
  br i1 %457, label %458, label %460, !dx.controlflow.hints !44

; <label>:458                                     ; preds = %455
  %459 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  br label %467

; <label>:460                                     ; preds = %455
  %461 = and i32 %9, -64
  %462 = or i32 %461, 31
  %463 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %462
  %464 = load i32, i32 addrspace(3)* %463, align 4, !tbaa !29, !noalias !35
  %465 = load i32, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  %466 = add i32 %465, %464
  store i32 %466, i32 addrspace(3)* %406, align 4, !tbaa !29, !noalias !35
  br label %467

; <label>:467                                     ; preds = %460, %458
  %468 = phi i32 [ %459, %458 ], [ %466, %460 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %469 = or i32 %9, 63
  %470 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %469
  %471 = load i32, i32 addrspace(3)* %470, align 4, !tbaa !29, !noalias !35
  %472 = sub i32 %468, %405
  %473 = add i32 %181, %149
  %474 = add i32 %473, %472
  %475 = icmp ne i32 %405, 0
  %476 = icmp ult i32 %474, %96
  %477 = and i1 %475, %476
  br i1 %477, label %478, label %480, !dx.controlflow.hints !45

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
  %487 = and i1 %133, %132
  br i1 %487, label %488, label %919, !dx.controlflow.hints !46

; <label>:488                                     ; preds = %485
  %489 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %490 = extractvalue %dx.types.CBufRet.i32 %489, 0
  %491 = icmp ult i32 %149, %490
  %492 = icmp ne i32 %486, 0
  %493 = and i1 %492, %491
  br i1 %493, label %494, label %919, !dx.controlflow.hints !47

; <label>:494                                     ; preds = %488
  %495 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %496 = extractvalue %dx.types.CBufRet.i32 %495, 0
  %497 = extractvalue %dx.types.CBufRet.i32 %495, 1
  %498 = mul i32 %497, %129
  %499 = add i32 %498, %127
  %500 = mul i32 %499, %496
  %501 = add i32 %500, %125
  %502 = and i32 %486, 1023
  %503 = shl i32 %149, 10
  %504 = or i32 %502, %503
  %505 = shl i32 %501, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %505, i32 undef, i32 %504, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %919

; <label>:506                                     ; preds = %82
  %507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %83, i32 0)  ; BufferLoad(srv,index,wot)
  %508 = extractvalue %dx.types.ResRet.i32 %507, 0
  %509 = call i32 @dx.op.binary.i32(i32 40, i32 %508, i32 %33)  ; UMin(a,b)
  %510 = shl i32 %84, 6
  %511 = sub i32 %11, %510
  %512 = lshr i32 %511, %83
  %513 = lshr i32 %512, 3
  %514 = mul i32 %20, %83
  %515 = add i32 %514, %513
  %516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %515, i32 0)  ; BufferLoad(srv,index,wot)
  %517 = extractvalue %dx.types.ResRet.i32 %516, 0
  %518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %515, i32 4)  ; BufferLoad(srv,index,wot)
  %519 = extractvalue %dx.types.ResRet.i32 %518, 0
  %520 = lshr i32 %517, 20
  %521 = lshr i32 %512, 2
  %522 = and i32 %521, 1
  %523 = lshr i32 %512, 1
  %524 = and i32 %523, 1
  %525 = and i32 %512, 1
  %526 = shl nuw nsw i32 %520, 1
  %527 = or i32 %526, %525
  %528 = lshr i32 %517, 7
  %529 = and i32 %528, 8190
  %530 = or i32 %529, %524
  %531 = shl i32 %517, 1
  %532 = and i32 %531, 256
  %533 = shl i32 %527, 20
  %534 = shl nuw nsw i32 %530, 8
  %535 = or i32 %533, %534
  %536 = or i32 %534, %532
  %537 = lshr i32 %9, %83
  %538 = add i32 %85, -1
  %539 = and i32 %538, %9
  %540 = shl i32 %537, %83
  %541 = lshr i32 %9, 5
  %542 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %543 = lshr i32 %535, 20
  %544 = lshr exact i32 %536, 8
  %545 = and i32 %544, 4095
  %546 = and i32 %531, 254
  %547 = or i32 %546, %522
  %548 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %549 = extractvalue %dx.types.CBufRet.i32 %548, 1
  %550 = icmp uge i32 %543, %90
  %551 = icmp uge i32 %545, %91
  %552 = or i1 %550, %551
  %553 = icmp uge i32 %512, %509
  %554 = or i1 %552, %553
  br i1 %554, label %802, label %555, !dx.controlflow.hints !48

; <label>:555                                     ; preds = %506
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %515, i32 8)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %559 = extractvalue %dx.types.CBufRet.f32 %558, 1
  %560 = extractvalue %dx.types.CBufRet.f32 %558, 0
  %561 = uitofp i32 %543 to float
  %562 = uitofp i32 %545 to float
  %563 = uitofp i32 %547 to float
  %564 = fmul fast float %563, %95
  %565 = fsub fast float %559, %560
  %566 = fmul fast float %564, %565
  %567 = fadd fast float %566, %560
  %568 = fadd fast float %563, 1.000000e+00
  %569 = fmul fast float %568, %95
  %570 = fmul fast float %569, %565
  %571 = fadd fast float %570, %560
  %572 = fmul fast float %93, 2.000000e+00
  %573 = fmul fast float %572, %561
  %574 = fadd fast float %573, -1.000000e+00
  %575 = fadd fast float %561, 1.000000e+00
  %576 = fmul fast float %572, %575
  %577 = fadd fast float %576, -1.000000e+00
  %578 = fmul fast float %94, 2.000000e+00
  %579 = fadd fast float %562, 1.000000e+00
  %580 = fmul fast float %578, %579
  %581 = fsub fast float 1.000000e+00, %580
  %582 = fmul fast float %578, %562
  %583 = fsub fast float 1.000000e+00, %582
  %584 = icmp ult i32 %539, %557
  br i1 %584, label %585, label %590, !dx.controlflow.hints !49

; <label>:585                                     ; preds = %555
  %586 = add i32 %519, %539
  %587 = shl i32 %586, 2
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %587, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  br label %590

; <label>:590                                     ; preds = %585, %555
  %591 = phi i32 [ %589, %585 ], [ -1, %555 ]
  %592 = icmp ult i32 %591, %87
  br i1 %592, label %593, label %802, !dx.controlflow.hints !50

; <label>:593                                     ; preds = %590
  %594 = mul i32 %591, 48
  %595 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %594, i32 undef)  ; BufferLoad(srv,index,wot)
  %596 = extractvalue %dx.types.ResRet.f32 %595, 0
  %597 = extractvalue %dx.types.ResRet.f32 %595, 1
  %598 = extractvalue %dx.types.ResRet.f32 %595, 2
  %599 = or i32 %594, 12
  %600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %599, i32 undef)  ; BufferLoad(srv,index,wot)
  %601 = extractvalue %dx.types.ResRet.f32 %600, 0
  %602 = extractvalue %dx.types.ResRet.f32 %600, 1
  %603 = extractvalue %dx.types.ResRet.f32 %600, 2
  %604 = add i32 %594, 24
  %605 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %604, i32 undef)  ; BufferLoad(srv,index,wot)
  %606 = extractvalue %dx.types.ResRet.f32 %605, 0
  %607 = extractvalue %dx.types.ResRet.f32 %605, 1
  %608 = extractvalue %dx.types.ResRet.f32 %605, 2
  %609 = add i32 %594, 36
  %610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %609, i32 undef)  ; BufferLoad(srv,index,wot)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = fsub fast float %596, %601
  %615 = fsub fast float %597, %602
  %616 = fsub fast float %598, %603
  %617 = fsub fast float %614, %606
  %618 = fsub fast float %615, %607
  %619 = fsub fast float %616, %608
  %620 = fadd fast float %617, %611
  %621 = fadd fast float %618, %612
  %622 = fadd fast float %619, %613
  %623 = fsub fast float %617, %611
  %624 = fsub fast float %618, %612
  %625 = fsub fast float %619, %613
  %626 = fadd fast float %601, %596
  %627 = fadd fast float %602, %597
  %628 = fadd fast float %603, %598
  %629 = fsub fast float %626, %606
  %630 = fsub fast float %627, %607
  %631 = fsub fast float %628, %608
  %632 = fsub fast float %629, %611
  %633 = fsub fast float %630, %612
  %634 = fsub fast float %631, %613
  %635 = fadd fast float %614, %606
  %636 = fadd fast float %615, %607
  %637 = fadd fast float %616, %608
  %638 = fsub fast float %635, %611
  %639 = fsub fast float %636, %612
  %640 = fsub fast float %637, %613
  %641 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 0)  ; CBufferLoadLegacy(handle,regIndex)
  %642 = extractvalue %dx.types.CBufRet.f32 %641, 0
  %643 = extractvalue %dx.types.CBufRet.f32 %641, 1
  %644 = extractvalue %dx.types.CBufRet.f32 %641, 3
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 1)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = extractvalue %dx.types.CBufRet.f32 %645, 1
  %648 = extractvalue %dx.types.CBufRet.f32 %645, 3
  %649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 2)  ; CBufferLoadLegacy(handle,regIndex)
  %650 = extractvalue %dx.types.CBufRet.f32 %649, 0
  %651 = extractvalue %dx.types.CBufRet.f32 %649, 1
  %652 = extractvalue %dx.types.CBufRet.f32 %649, 3
  %653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 3)  ; CBufferLoadLegacy(handle,regIndex)
  %654 = extractvalue %dx.types.CBufRet.f32 %653, 0
  %655 = extractvalue %dx.types.CBufRet.f32 %653, 1
  %656 = extractvalue %dx.types.CBufRet.f32 %653, 3
  %657 = fmul fast float %642, %620
  %658 = call float @dx.op.tertiary.f32(i32 46, float %646, float %621, float %657)  ; FMad(a,b,c)
  %659 = call float @dx.op.tertiary.f32(i32 46, float %650, float %622, float %658)  ; FMad(a,b,c)
  %660 = fadd fast float %659, %654
  %661 = fmul fast float %643, %620
  %662 = call float @dx.op.tertiary.f32(i32 46, float %647, float %621, float %661)  ; FMad(a,b,c)
  %663 = call float @dx.op.tertiary.f32(i32 46, float %651, float %622, float %662)  ; FMad(a,b,c)
  %664 = fadd fast float %663, %655
  %665 = fmul fast float %644, %620
  %666 = call float @dx.op.tertiary.f32(i32 46, float %648, float %621, float %665)  ; FMad(a,b,c)
  %667 = call float @dx.op.tertiary.f32(i32 46, float %652, float %622, float %666)  ; FMad(a,b,c)
  %668 = fadd fast float %667, %656
  %669 = fmul fast float %642, %623
  %670 = call float @dx.op.tertiary.f32(i32 46, float %646, float %624, float %669)  ; FMad(a,b,c)
  %671 = call float @dx.op.tertiary.f32(i32 46, float %650, float %625, float %670)  ; FMad(a,b,c)
  %672 = fadd fast float %671, %654
  %673 = fmul fast float %643, %623
  %674 = call float @dx.op.tertiary.f32(i32 46, float %647, float %624, float %673)  ; FMad(a,b,c)
  %675 = call float @dx.op.tertiary.f32(i32 46, float %651, float %625, float %674)  ; FMad(a,b,c)
  %676 = fadd fast float %675, %655
  %677 = fmul fast float %644, %623
  %678 = call float @dx.op.tertiary.f32(i32 46, float %648, float %624, float %677)  ; FMad(a,b,c)
  %679 = call float @dx.op.tertiary.f32(i32 46, float %652, float %625, float %678)  ; FMad(a,b,c)
  %680 = fadd fast float %679, %656
  %681 = fmul fast float %642, %632
  %682 = call float @dx.op.tertiary.f32(i32 46, float %646, float %633, float %681)  ; FMad(a,b,c)
  %683 = call float @dx.op.tertiary.f32(i32 46, float %650, float %634, float %682)  ; FMad(a,b,c)
  %684 = fadd fast float %683, %654
  %685 = fmul fast float %643, %632
  %686 = call float @dx.op.tertiary.f32(i32 46, float %647, float %633, float %685)  ; FMad(a,b,c)
  %687 = call float @dx.op.tertiary.f32(i32 46, float %651, float %634, float %686)  ; FMad(a,b,c)
  %688 = fadd fast float %687, %655
  %689 = fmul fast float %644, %632
  %690 = call float @dx.op.tertiary.f32(i32 46, float %648, float %633, float %689)  ; FMad(a,b,c)
  %691 = call float @dx.op.tertiary.f32(i32 46, float %652, float %634, float %690)  ; FMad(a,b,c)
  %692 = fadd fast float %691, %656
  %693 = fmul fast float %642, %638
  %694 = call float @dx.op.tertiary.f32(i32 46, float %646, float %639, float %693)  ; FMad(a,b,c)
  %695 = call float @dx.op.tertiary.f32(i32 46, float %650, float %640, float %694)  ; FMad(a,b,c)
  %696 = fadd fast float %695, %654
  %697 = fmul fast float %643, %638
  %698 = call float @dx.op.tertiary.f32(i32 46, float %647, float %639, float %697)  ; FMad(a,b,c)
  %699 = call float @dx.op.tertiary.f32(i32 46, float %651, float %640, float %698)  ; FMad(a,b,c)
  %700 = fadd fast float %699, %655
  %701 = fmul fast float %644, %638
  %702 = call float @dx.op.tertiary.f32(i32 46, float %648, float %639, float %701)  ; FMad(a,b,c)
  %703 = call float @dx.op.tertiary.f32(i32 46, float %652, float %640, float %702)  ; FMad(a,b,c)
  %704 = fadd fast float %703, %656
  %705 = fsub fast float %683, %671
  %706 = fsub fast float %687, %675
  %707 = fsub fast float %691, %679
  %708 = fsub fast float %695, %671
  %709 = fsub fast float %699, %675
  %710 = fsub fast float %703, %679
  %711 = fadd fast float %705, %660
  %712 = fadd fast float %706, %664
  %713 = fadd fast float %707, %668
  %714 = fadd fast float %708, %711
  %715 = fadd fast float %709, %712
  %716 = fadd fast float %710, %713
  %717 = fadd fast float %708, %660
  %718 = fadd fast float %709, %664
  %719 = fadd fast float %710, %668
  %720 = fadd fast float %708, %684
  %721 = fadd fast float %709, %688
  %722 = fadd fast float %710, %692
  %723 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 0
  %724 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 0
  %725 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 0
  store float %660, float* %723, align 4
  store float %664, float* %724, align 4
  store float %668, float* %725, align 4
  %726 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 1
  %727 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 1
  %728 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 1
  store float %711, float* %726, align 4
  store float %712, float* %727, align 4
  store float %713, float* %728, align 4
  %729 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 2
  %730 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 2
  %731 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 2
  store float %714, float* %729, align 4
  store float %715, float* %730, align 4
  store float %716, float* %731, align 4
  %732 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 3
  %733 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 3
  %734 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 3
  store float %717, float* %732, align 4
  store float %718, float* %733, align 4
  store float %719, float* %734, align 4
  %735 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 4
  %736 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 4
  %737 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 4
  store float %672, float* %735, align 4
  store float %676, float* %736, align 4
  store float %680, float* %737, align 4
  %738 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 5
  %739 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 5
  %740 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 5
  store float %684, float* %738, align 4
  store float %688, float* %739, align 4
  store float %692, float* %740, align 4
  %741 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 6
  %742 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 6
  %743 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 6
  store float %720, float* %741, align 4
  store float %721, float* %742, align 4
  store float %722, float* %743, align 4
  %744 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 7
  %745 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 7
  %746 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 7
  store float %696, float* %744, align 4
  store float %700, float* %745, align 4
  store float %704, float* %746, align 4
  br label %747

; <label>:747                                     ; preds = %782, %593
  %748 = phi float [ %668, %593 ], [ %794, %782 ]
  %749 = phi float [ %664, %593 ], [ %792, %782 ]
  %750 = phi float [ %660, %593 ], [ %790, %782 ]
  %751 = phi i32 [ 1, %593 ], [ %788, %782 ]
  %752 = phi i32 [ 1, %593 ], [ %787, %782 ]
  %753 = phi i32 [ 1, %593 ], [ %786, %782 ]
  %754 = phi i32 [ 1, %593 ], [ %785, %782 ]
  %755 = phi i32 [ 1, %593 ], [ %784, %782 ]
  %756 = phi i32 [ 1, %593 ], [ %783, %782 ]
  %757 = phi i32 [ 0, %593 ], [ %780, %782 ]
  %758 = icmp ne i32 %751, 0
  %759 = fmul fast float %748, %574
  %760 = fcmp fast olt float %750, %759
  %761 = and i1 %758, %760
  %762 = icmp ne i32 %752, 0
  %763 = fmul fast float %748, %577
  %764 = fcmp fast ogt float %750, %763
  %765 = and i1 %762, %764
  %766 = icmp ne i32 %753, 0
  %767 = fmul fast float %748, %581
  %768 = fcmp fast olt float %749, %767
  %769 = and i1 %766, %768
  %770 = icmp ne i32 %754, 0
  %771 = fmul fast float %748, %583
  %772 = fcmp fast ogt float %749, %771
  %773 = and i1 %770, %772
  %774 = icmp ne i32 %755, 0
  %775 = fcmp fast olt float %748, %567
  %776 = and i1 %774, %775
  %777 = icmp ne i32 %756, 0
  %778 = fcmp fast ogt float %748, %571
  %779 = and i1 %777, %778
  %780 = add nuw nsw i32 %757, 1
  %781 = icmp eq i32 %780, 8
  br i1 %781, label %795, label %782

; <label>:782                                     ; preds = %747
  %783 = zext i1 %779 to i32
  %784 = zext i1 %776 to i32
  %785 = zext i1 %773 to i32
  %786 = zext i1 %769 to i32
  %787 = zext i1 %765 to i32
  %788 = zext i1 %761 to i32
  %789 = getelementptr [8 x float], [8 x float]* %15, i32 0, i32 %780
  %790 = load float, float* %789, align 4
  %791 = getelementptr [8 x float], [8 x float]* %16, i32 0, i32 %780
  %792 = load float, float* %791, align 4
  %793 = getelementptr [8 x float], [8 x float]* %17, i32 0, i32 %780
  %794 = load float, float* %793, align 4
  br label %747

; <label>:795                                     ; preds = %747
  %796 = or i1 %761, %765
  %797 = or i1 %769, %796
  %798 = or i1 %773, %797
  %799 = or i1 %776, %798
  %800 = or i1 %779, %799
  %801 = xor i1 %800, true
  br label %802

; <label>:802                                     ; preds = %795, %590, %506
  %803 = phi i32 [ %591, %795 ], [ %591, %590 ], [ 0, %506 ]
  %804 = phi i1 [ %801, %795 ], [ false, %590 ], [ false, %506 ]
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %805 = and i32 %9, 31
  %806 = shl i32 1, %805
  %807 = select i1 %804, i32 %806, i32 0
  %808 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %9
  store i32 %807, i32 addrspace(3)* %808, align 4, !tbaa !29
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %809 = icmp ult i32 %805, 16
  br i1 %809, label %810, label %816, !dx.controlflow.hints !51

; <label>:810                                     ; preds = %802
  %811 = add i32 %9, 16
  %812 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %811
  %813 = load i32, i32 addrspace(3)* %812, align 4, !tbaa !29
  %814 = load i32, i32 addrspace(3)* %808, align 4, !tbaa !29
  %815 = or i32 %814, %813
  store i32 %815, i32 addrspace(3)* %808, align 4, !tbaa !29
  br label %816

; <label>:816                                     ; preds = %810, %802
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %817 = icmp ult i32 %805, 8
  br i1 %817, label %818, label %824, !dx.controlflow.hints !52

; <label>:818                                     ; preds = %816
  %819 = add i32 %9, 8
  %820 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %819
  %821 = load i32, i32 addrspace(3)* %820, align 4, !tbaa !29
  %822 = load i32, i32 addrspace(3)* %808, align 4, !tbaa !29
  %823 = or i32 %822, %821
  store i32 %823, i32 addrspace(3)* %808, align 4, !tbaa !29
  br label %824

; <label>:824                                     ; preds = %818, %816
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %825 = icmp ult i32 %805, 4
  br i1 %825, label %826, label %832, !dx.controlflow.hints !53

; <label>:826                                     ; preds = %824
  %827 = add i32 %9, 4
  %828 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %827
  %829 = load i32, i32 addrspace(3)* %828, align 4, !tbaa !29
  %830 = load i32, i32 addrspace(3)* %808, align 4, !tbaa !29
  %831 = or i32 %830, %829
  store i32 %831, i32 addrspace(3)* %808, align 4, !tbaa !29
  br label %832

; <label>:832                                     ; preds = %826, %824
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %833 = icmp ult i32 %805, 2
  br i1 %833, label %834, label %840, !dx.controlflow.hints !54

; <label>:834                                     ; preds = %832
  %835 = add i32 %9, 2
  %836 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %835
  %837 = load i32, i32 addrspace(3)* %836, align 4, !tbaa !29
  %838 = load i32, i32 addrspace(3)* %808, align 4, !tbaa !29
  %839 = or i32 %838, %837
  store i32 %839, i32 addrspace(3)* %808, align 4, !tbaa !29
  br label %840

; <label>:840                                     ; preds = %834, %832
  call void @dx.op.barrier(i32 80, i32 8)  ; Barrier(barrierMode)
  %841 = icmp eq i32 %805, 0
  br i1 %841, label %842, label %848, !dx.controlflow.hints !55

; <label>:842                                     ; preds = %840
  %843 = add i32 %9, 1
  %844 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %843
  %845 = load i32, i32 addrspace(3)* %844, align 4, !tbaa !29
  %846 = load i32, i32 addrspace(3)* %808, align 4, !tbaa !29
  %847 = or i32 %846, %845
  store i32 %847, i32 addrspace(3)* %808, align 4, !tbaa !29
  br label %848

; <label>:848                                     ; preds = %842, %840
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %849 = and i32 %9, -64
  %850 = or i32 %849, 32
  %851 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %849
  %852 = load i32, i32 addrspace(3)* %851, align 4, !tbaa !29
  %853 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?tiledSharedMem@@3PAIA", i32 0, i32 %850
  %854 = load i32, i32 addrspace(3)* %853, align 4, !tbaa !29
  %855 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i32 0, i32 0
  store i32 %852, i32* %855, align 4
  %856 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i32 0, i32 1
  store i32 %854, i32* %856, align 4
  %857 = icmp eq i32 %83, 5
  %858 = and i32 %85, 31
  %859 = shl i32 1, %858
  %860 = add i32 %859, -1
  %861 = select i1 %857, i32 -1, i32 %860
  %862 = getelementptr [2 x i32], [2 x i32]* %18, i32 0, i32 %541
  %863 = load i32, i32* %862, align 4, !tbaa !29
  %864 = and i32 %540, 31
  %865 = lshr i32 %863, %864
  %866 = and i32 %865, %861
  %867 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %866)  ; Countbits(value)
  %868 = icmp eq i32 %9, 0
  br i1 %868, label %869, label %870, !dx.controlflow.hints !56

; <label>:869                                     ; preds = %848
  store i32 0, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !29
  br label %870

; <label>:870                                     ; preds = %869, %848
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %871 = icmp eq i32 %539, 0
  br i1 %871, label %872, label %877, !dx.controlflow.hints !57

; <label>:872                                     ; preds = %870
  %873 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %537
  br i1 %554, label %876, label %874, !dx.controlflow.hints !58

; <label>:874                                     ; preds = %872
  %875 = atomicrmw add i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", i32 %867 seq_cst
  store i32 %875, i32 addrspace(3)* %873, align 4, !tbaa !29
  br label %877

; <label>:876                                     ; preds = %872
  store i32 0, i32 addrspace(3)* %873, align 4, !tbaa !29
  br label %877

; <label>:877                                     ; preds = %876, %874, %870
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %868, label %878, label %881, !dx.controlflow.hints !59

; <label>:878                                     ; preds = %877
  %879 = load i32, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !29
  %880 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %549, i32 0, i32 undef, i32 %879)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %880, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !29
  br label %881

; <label>:881                                     ; preds = %878, %877
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %554, label %919, label %882, !dx.controlflow.hints !60

; <label>:882                                     ; preds = %881
  %883 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %537
  %884 = load i32, i32 addrspace(3)* %883, align 4, !tbaa !29
  %885 = load i32, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !29
  %886 = add i32 %884, %542
  %887 = add i32 %886, %885
  %888 = and i32 %539, 31
  %889 = shl i32 1, %888
  %890 = and i32 %866, %889
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %900, label %892, !dx.controlflow.hints !61

; <label>:892                                     ; preds = %882
  %893 = add i32 %889, -1
  %894 = and i32 %866, %893
  %895 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %894)  ; Countbits(value)
  %896 = add i32 %895, %887
  %897 = icmp ult i32 %896, %96
  br i1 %897, label %898, label %900, !dx.controlflow.hints !62

; <label>:898                                     ; preds = %892
  %899 = shl i32 %896, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %899, i32 undef, i32 %803, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %900

; <label>:900                                     ; preds = %898, %892, %882
  br i1 %871, label %901, label %919, !dx.controlflow.hints !63

; <label>:901                                     ; preds = %900
  %902 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %903 = extractvalue %dx.types.CBufRet.i32 %902, 0
  %904 = icmp ult i32 %887, %903
  %905 = icmp ne i32 %867, 0
  %906 = and i1 %905, %904
  br i1 %906, label %907, label %919, !dx.controlflow.hints !47

; <label>:907                                     ; preds = %901
  %908 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %909 = extractvalue %dx.types.CBufRet.i32 %908, 0
  %910 = extractvalue %dx.types.CBufRet.i32 %908, 1
  %911 = mul i32 %910, %547
  %912 = add i32 %911, %545
  %913 = mul i32 %912, %909
  %914 = add i32 %913, %543
  %915 = and i32 %867, 1023
  %916 = shl i32 %887, 10
  %917 = or i32 %916, %915
  %918 = shl i32 %914, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %918, i32 undef, i32 %917, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %919

; <label>:919                                     ; preds = %907, %901, %900, %881, %494, %488, %485
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
!19 = !{i32 0, i64 272, i32 4, !20}
!20 = !{i32 64, i32 1, i32 1}
!21 = distinct !{!21, !"dx.controlflow.hints", i32 2}
!22 = distinct !{!22, !"dx.controlflow.hints", i32 2}
!23 = distinct !{!23, !"dx.controlflow.hints", i32 2}
!24 = distinct !{!24, !"dx.controlflow.hints", i32 2}
!25 = distinct !{!25, !"dx.controlflow.hints", i32 2}
!26 = distinct !{!26, !"dx.controlflow.hints", i32 2}
!27 = distinct !{!27, !"dx.controlflow.hints", i32 2}
!28 = distinct !{!28, !"dx.controlflow.hints", i32 2}
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = distinct !{!33, !"dx.controlflow.hints", i32 2}
!34 = distinct !{!34, !"dx.controlflow.hints", i32 2}
!35 = !{!36, !38}
!36 = distinct !{!36, !37, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!37 = distinct !{!37, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!38 = distinct !{!38, !37, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
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

