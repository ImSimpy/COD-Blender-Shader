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
; shader hash: 37f7a9372b71b94ad78cb28f9952317d
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
  %12 = alloca [3 x float], align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca [3 x float], align 4
  %16 = alloca [3 x float], align 4
  %17 = alloca [3 x float], align 4
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
  %93 = extractvalue %dx.types.CBufRet.f32 %92, 2
  %94 = extractvalue %dx.types.CBufRet.i32 %19, 0
  br i1 %88, label %95, label %1226, !dx.controlflow.hints !26

; <label>:95                                      ; preds = %82
  %96 = sub i32 %10, %84
  %97 = lshr i32 %96, 3
  %98 = mul i32 %20, 6
  %99 = add i32 %98, %97
  %100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %99, i32 0)  ; BufferLoad(srv,index,wot)
  %101 = extractvalue %dx.types.ResRet.i32 %100, 0
  %102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %99, i32 4)  ; BufferLoad(srv,index,wot)
  %103 = extractvalue %dx.types.ResRet.i32 %102, 0
  %104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %99, i32 8)  ; BufferLoad(srv,index,wot)
  %105 = extractvalue %dx.types.ResRet.i32 %104, 0
  %106 = lshr i32 %101, 20
  %107 = lshr i32 %96, 2
  %108 = and i32 %107, 1
  %109 = lshr i32 %96, 1
  %110 = and i32 %109, 1
  %111 = and i32 %96, 1
  %112 = shl nuw nsw i32 %106, 1
  %113 = or i32 %112, %111
  %114 = lshr i32 %101, 7
  %115 = and i32 %114, 8190
  %116 = or i32 %115, %110
  %117 = shl i32 %101, 1
  %118 = and i32 %117, 256
  %119 = shl i32 %113, 20
  %120 = shl nuw nsw i32 %116, 8
  %121 = or i32 %119, %120
  %122 = or i32 %120, %118
  %123 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %124 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %125 = lshr i32 %121, 20
  %126 = lshr exact i32 %122, 8
  %127 = and i32 %126, 4095
  %128 = and i32 %117, 254
  %129 = or i32 %128, %108
  %130 = icmp ult i32 %125, %90
  %131 = icmp ult i32 %127, %91
  %132 = and i1 %130, %131
  %133 = icmp eq i32 %9, 0
  br i1 %133, label %134, label %140, !dx.controlflow.hints !27

; <label>:134                                     ; preds = %95
  %135 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.i32 %135, 1
  %137 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %138 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %136, i32 0, i32 undef, i32 %105)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  %139 = add i32 %138, %137
  br label %140

; <label>:140                                     ; preds = %134, %95
  %141 = phi i32 [ %139, %134 ], [ 0, %95 ]
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
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = extractvalue %dx.types.CBufRet.f32 %162, 1
  %165 = fadd fast float %159, 5.000000e-01
  %166 = fadd fast float %160, 5.000000e-01
  %167 = fmul fast float %123, 2.000000e+00
  %168 = fmul fast float %167, %165
  %169 = fmul fast float %124, 2.000000e+00
  %170 = fmul fast float %169, %166
  %171 = fadd fast float %168, -1.000000e+00
  %172 = fsub fast float 1.000000e+00, %170
  %173 = fmul fast float %161, %93
  %174 = fsub fast float %157, %158
  %175 = fmul fast float %173, %174
  %176 = fadd fast float %175, %158
  %177 = fadd fast float %161, 1.000000e+00
  %178 = fmul fast float %177, %93
  %179 = fmul fast float %178, %174
  %180 = fadd fast float %179, %158
  %181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %182 = extractvalue %dx.types.CBufRet.f32 %181, 0
  %183 = extractvalue %dx.types.CBufRet.f32 %181, 1
  %184 = extractvalue %dx.types.CBufRet.f32 %181, 2
  %185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %186 = extractvalue %dx.types.CBufRet.f32 %185, 0
  %187 = extractvalue %dx.types.CBufRet.f32 %185, 1
  %188 = extractvalue %dx.types.CBufRet.f32 %185, 2
  %189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %190 = extractvalue %dx.types.CBufRet.f32 %189, 0
  %191 = extractvalue %dx.types.CBufRet.f32 %189, 1
  %192 = extractvalue %dx.types.CBufRet.f32 %189, 2
  %193 = fmul fast float %182, %171
  %194 = fmul fast float %183, %171
  %195 = fmul fast float %184, %171
  %196 = fmul fast float %186, %172
  %197 = fmul fast float %187, %172
  %198 = fmul fast float %188, %172
  %199 = fadd fast float %196, %193
  %200 = fadd fast float %197, %194
  %201 = fadd fast float %198, %195
  %202 = fadd fast float %199, %190
  %203 = fadd fast float %200, %191
  %204 = fadd fast float %201, %192
  %205 = fmul fast float %202, %176
  %206 = fmul fast float %203, %176
  %207 = fmul fast float %204, %176
  %208 = fmul fast float %182, %163
  %209 = fsub fast float -0.000000e+00, %208
  %210 = fmul fast float %183, %163
  %211 = fsub fast float -0.000000e+00, %210
  %212 = fmul fast float %184, %163
  %213 = fsub fast float -0.000000e+00, %212
  %214 = fmul fast float %208, %176
  %215 = fmul fast float %210, %176
  %216 = fmul fast float %212, %176
  %217 = fmul fast float %186, %164
  %218 = fmul fast float %187, %164
  %219 = fmul fast float %188, %164
  %220 = fmul fast float %217, %176
  %221 = fmul fast float %218, %176
  %222 = fmul fast float %219, %176
  %223 = fmul fast float %202, %180
  %224 = fmul fast float %203, %180
  %225 = fmul fast float %204, %180
  %226 = fmul fast float %208, %180
  %227 = fmul fast float %210, %180
  %228 = fmul fast float %212, %180
  %229 = fmul fast float %217, %180
  %230 = fmul fast float %218, %180
  %231 = fmul fast float %219, %180
  %232 = add i32 %105, 63
  %233 = and i32 %232, -64
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %1205, label %235

; <label>:235                                     ; preds = %154
  br label %236

; <label>:236                                     ; preds = %1199, %235
  %237 = phi i32 [ %1201, %1199 ], [ 0, %235 ]
  %238 = phi i32 [ %1202, %1199 ], [ 0, %235 ]
  %239 = add i32 %238, %9
  %240 = icmp ult i32 %239, %105
  %241 = and i1 %132, %240
  br i1 %241, label %242, label %247, !dx.controlflow.hints !34

; <label>:242                                     ; preds = %236
  %243 = add i32 %239, %103
  %244 = shl i32 %243, 2
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  br label %247

; <label>:247                                     ; preds = %242, %236
  %248 = phi i32 [ %246, %242 ], [ -1, %236 ]
  %249 = icmp ult i32 %248, %87
  br i1 %249, label %250, label %1150, !dx.controlflow.hints !35

; <label>:250                                     ; preds = %247
  %251 = mul i32 %248, 48
  %252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.f32 %252, 0
  %254 = extractvalue %dx.types.ResRet.f32 %252, 1
  %255 = extractvalue %dx.types.ResRet.f32 %252, 2
  %256 = or i32 %251, 12
  %257 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.f32 %257, 0
  %259 = extractvalue %dx.types.ResRet.f32 %257, 1
  %260 = extractvalue %dx.types.ResRet.f32 %257, 2
  %261 = add i32 %251, 24
  %262 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.f32 %262, 0
  %264 = extractvalue %dx.types.ResRet.f32 %262, 1
  %265 = extractvalue %dx.types.ResRet.f32 %262, 2
  %266 = add i32 %251, 36
  %267 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.f32 %267, 0
  %269 = extractvalue %dx.types.ResRet.f32 %267, 1
  %270 = extractvalue %dx.types.ResRet.f32 %267, 2
  %271 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 0
  %272 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 0
  %273 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 0
  store float %258, float* %271, align 4
  store float %259, float* %272, align 4
  store float %260, float* %273, align 4
  %274 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 1
  %275 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 1
  %276 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 1
  store float %263, float* %274, align 4
  store float %264, float* %275, align 4
  store float %265, float* %276, align 4
  %277 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 2
  %278 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 2
  %279 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 2
  store float %268, float* %277, align 4
  store float %269, float* %278, align 4
  store float %270, float* %279, align 4
  %280 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %281 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %282 = call float @dx.op.unary.f32(i32 6, float %281)  ; FAbs(value)
  %283 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %284 = call float @dx.op.unary.f32(i32 6, float %283)  ; FAbs(value)
  %285 = fadd fast float %284, %282
  %286 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %287 = call float @dx.op.unary.f32(i32 6, float %286)  ; FAbs(value)
  %288 = fadd fast float %285, %287
  %289 = fsub fast float %280, %288
  %290 = fadd fast float %288, %280
  %291 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %292 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %293 = call float @dx.op.unary.f32(i32 6, float %292)  ; FAbs(value)
  %294 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %295 = call float @dx.op.unary.f32(i32 6, float %294)  ; FAbs(value)
  %296 = fadd fast float %295, %293
  %297 = fsub fast float %291, %296
  %298 = fadd fast float %296, %291
  %299 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %300 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %301 = call float @dx.op.unary.f32(i32 6, float %300)  ; FAbs(value)
  %302 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %258, float %259, float %260)  ; Dot3(ax,ay,az,bx,by,bz)
  %303 = call float @dx.op.unary.f32(i32 6, float %302)  ; FAbs(value)
  %304 = fadd fast float %303, %301
  %305 = fsub fast float %299, %304
  %306 = fadd fast float %304, %299
  %307 = fcmp fast olt float %305, %297
  %308 = select i1 %307, float %305, float %297
  %309 = fcmp fast ogt float %306, %298
  %310 = select i1 %309, float %306, float %298
  %311 = fcmp fast olt float %310, %289
  %312 = fcmp fast olt float %290, %308
  %313 = or i1 %311, %312
  br i1 %313, label %1150, label %314, !dx.controlflow.hints !36

; <label>:314                                     ; preds = %250
  %315 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %316 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %317 = call float @dx.op.unary.f32(i32 6, float %316)  ; FAbs(value)
  %318 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %319 = call float @dx.op.unary.f32(i32 6, float %318)  ; FAbs(value)
  %320 = fadd fast float %319, %317
  %321 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %322 = call float @dx.op.unary.f32(i32 6, float %321)  ; FAbs(value)
  %323 = fadd fast float %320, %322
  %324 = fsub fast float %315, %323
  %325 = fadd fast float %323, %315
  %326 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %327 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %328 = call float @dx.op.unary.f32(i32 6, float %327)  ; FAbs(value)
  %329 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %330 = call float @dx.op.unary.f32(i32 6, float %329)  ; FAbs(value)
  %331 = fadd fast float %330, %328
  %332 = fsub fast float %326, %331
  %333 = fadd fast float %331, %326
  %334 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %335 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %336 = call float @dx.op.unary.f32(i32 6, float %335)  ; FAbs(value)
  %337 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %263, float %264, float %265)  ; Dot3(ax,ay,az,bx,by,bz)
  %338 = call float @dx.op.unary.f32(i32 6, float %337)  ; FAbs(value)
  %339 = fadd fast float %338, %336
  %340 = fsub fast float %334, %339
  %341 = fadd fast float %339, %334
  %342 = fcmp fast olt float %340, %332
  %343 = select i1 %342, float %340, float %332
  %344 = fcmp fast ogt float %341, %333
  %345 = select i1 %344, float %341, float %333
  %346 = fcmp fast olt float %345, %324
  %347 = fcmp fast olt float %325, %343
  %348 = or i1 %346, %347
  br i1 %348, label %1150, label %349, !dx.controlflow.hints !36

; <label>:349                                     ; preds = %314
  %350 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %351 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %352 = call float @dx.op.unary.f32(i32 6, float %351)  ; FAbs(value)
  %353 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %354 = call float @dx.op.unary.f32(i32 6, float %353)  ; FAbs(value)
  %355 = fadd fast float %354, %352
  %356 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %357 = call float @dx.op.unary.f32(i32 6, float %356)  ; FAbs(value)
  %358 = fadd fast float %355, %357
  %359 = fsub fast float %350, %358
  %360 = fadd fast float %358, %350
  %361 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %362 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %363 = call float @dx.op.unary.f32(i32 6, float %362)  ; FAbs(value)
  %364 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %365 = call float @dx.op.unary.f32(i32 6, float %364)  ; FAbs(value)
  %366 = fadd fast float %365, %363
  %367 = fsub fast float %361, %366
  %368 = fadd fast float %366, %361
  %369 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %370 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %371 = call float @dx.op.unary.f32(i32 6, float %370)  ; FAbs(value)
  %372 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %268, float %269, float %270)  ; Dot3(ax,ay,az,bx,by,bz)
  %373 = call float @dx.op.unary.f32(i32 6, float %372)  ; FAbs(value)
  %374 = fadd fast float %373, %371
  %375 = fsub fast float %369, %374
  %376 = fadd fast float %374, %369
  %377 = fcmp fast olt float %375, %367
  %378 = select i1 %377, float %375, float %367
  %379 = fcmp fast ogt float %376, %368
  %380 = select i1 %379, float %376, float %368
  %381 = fcmp fast olt float %380, %359
  %382 = fcmp fast olt float %360, %378
  %383 = or i1 %381, %382
  br i1 %383, label %1150, label %384, !dx.controlflow.hints !36

; <label>:384                                     ; preds = %349
  %385 = fcmp fast ole float %289, %308
  %386 = fcmp fast ole float %310, %290
  %387 = and i1 %385, %386
  %388 = zext i1 %387 to i32
  %389 = shl nuw nsw i32 %388, 1
  %390 = fcmp fast ole float %324, %343
  %391 = fcmp fast ole float %345, %325
  %392 = and i1 %390, %391
  %393 = zext i1 %392 to i32
  %394 = or i32 %393, %389
  %395 = shl nuw nsw i32 %394, 1
  %396 = fcmp fast ole float %359, %378
  %397 = fcmp fast ole float %380, %360
  %398 = and i1 %396, %397
  %399 = zext i1 %398 to i32
  %400 = or i32 %399, %395
  %401 = icmp eq i32 %400, 7
  br i1 %401, label %1150, label %402, !dx.controlflow.hints !37

; <label>:402                                     ; preds = %384
  %403 = fsub fast float %253, %205
  %404 = fsub fast float %254, %206
  %405 = fsub fast float %255, %207
  %406 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %407 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %408 = call float @dx.op.unary.f32(i32 6, float %407)  ; FAbs(value)
  %409 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %410 = call float @dx.op.unary.f32(i32 6, float %409)  ; FAbs(value)
  %411 = fadd fast float %410, %408
  %412 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %413 = call float @dx.op.unary.f32(i32 6, float %412)  ; FAbs(value)
  %414 = fadd fast float %411, %413
  %415 = fsub fast float %406, %414
  %416 = fadd fast float %414, %406
  %417 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %418 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %419 = call float @dx.op.unary.f32(i32 6, float %418)  ; FAbs(value)
  %420 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %421 = call float @dx.op.unary.f32(i32 6, float %420)  ; FAbs(value)
  %422 = fadd fast float %421, %419
  %423 = fsub fast float %417, %422
  %424 = fadd fast float %422, %417
  %425 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %426 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %427 = call float @dx.op.unary.f32(i32 6, float %426)  ; FAbs(value)
  %428 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %403, float %404, float %405)  ; Dot3(ax,ay,az,bx,by,bz)
  %429 = call float @dx.op.unary.f32(i32 6, float %428)  ; FAbs(value)
  %430 = fadd fast float %429, %427
  %431 = fsub fast float %425, %430
  %432 = fadd fast float %430, %425
  %433 = fcmp fast olt float %431, %423
  %434 = select i1 %433, float %431, float %423
  %435 = fcmp fast ogt float %432, %424
  %436 = select i1 %435, float %432, float %424
  %437 = fcmp fast olt float %436, %415
  %438 = fcmp fast olt float %416, %434
  %439 = or i1 %437, %438
  br i1 %439, label %1150, label %440, !dx.controlflow.hints !38

; <label>:440                                     ; preds = %402
  %441 = fmul fast float %222, %215
  %442 = fmul fast float %221, %216
  %443 = fsub fast float %441, %442
  %444 = fmul fast float %220, %216
  %445 = fmul fast float %222, %214
  %446 = fsub fast float %444, %445
  %447 = fmul fast float %221, %214
  %448 = fmul fast float %220, %215
  %449 = fsub fast float %447, %448
  %450 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %451 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %452 = call float @dx.op.unary.f32(i32 6, float %451)  ; FAbs(value)
  %453 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %454 = call float @dx.op.unary.f32(i32 6, float %453)  ; FAbs(value)
  %455 = fadd fast float %454, %452
  %456 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %457 = call float @dx.op.unary.f32(i32 6, float %456)  ; FAbs(value)
  %458 = fadd fast float %455, %457
  %459 = fsub fast float %450, %458
  %460 = fadd fast float %458, %450
  %461 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %462 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %463 = call float @dx.op.unary.f32(i32 6, float %462)  ; FAbs(value)
  %464 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %465 = call float @dx.op.unary.f32(i32 6, float %464)  ; FAbs(value)
  %466 = fadd fast float %465, %463
  %467 = fsub fast float %461, %466
  %468 = fadd fast float %466, %461
  %469 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %470 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %471 = call float @dx.op.unary.f32(i32 6, float %470)  ; FAbs(value)
  %472 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %443, float %446, float %449)  ; Dot3(ax,ay,az,bx,by,bz)
  %473 = call float @dx.op.unary.f32(i32 6, float %472)  ; FAbs(value)
  %474 = fadd fast float %473, %471
  %475 = fsub fast float %469, %474
  %476 = fadd fast float %474, %469
  %477 = fcmp fast olt float %475, %467
  %478 = select i1 %477, float %475, float %467
  %479 = fcmp fast ogt float %476, %468
  %480 = select i1 %479, float %476, float %468
  %481 = fcmp fast olt float %480, %459
  %482 = fcmp fast olt float %460, %478
  %483 = or i1 %481, %482
  br i1 %483, label %1150, label %484, !dx.controlflow.hints !39

; <label>:484                                     ; preds = %440
  %485 = fsub fast float %209, %217
  %486 = fadd fast float %485, %202
  %487 = fsub fast float %211, %218
  %488 = fadd fast float %487, %203
  %489 = fsub fast float %213, %219
  %490 = fadd fast float %489, %204
  %491 = fmul fast float %174, %93
  %492 = fmul fast float %486, %491
  %493 = fmul fast float %174, %93
  %494 = fmul fast float %488, %493
  %495 = fmul fast float %174, %93
  %496 = fmul fast float %490, %495
  %497 = fmul fast float %496, %215
  %498 = fmul fast float %494, %216
  %499 = fsub fast float %497, %498
  %500 = fmul fast float %492, %216
  %501 = fmul fast float %496, %214
  %502 = fsub fast float %500, %501
  %503 = fmul fast float %494, %214
  %504 = fmul fast float %492, %215
  %505 = fsub fast float %503, %504
  %506 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %507 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %508 = call float @dx.op.unary.f32(i32 6, float %507)  ; FAbs(value)
  %509 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %510 = call float @dx.op.unary.f32(i32 6, float %509)  ; FAbs(value)
  %511 = fadd fast float %510, %508
  %512 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %513 = call float @dx.op.unary.f32(i32 6, float %512)  ; FAbs(value)
  %514 = fadd fast float %511, %513
  %515 = fsub fast float %506, %514
  %516 = fadd fast float %514, %506
  %517 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %518 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %519 = call float @dx.op.unary.f32(i32 6, float %518)  ; FAbs(value)
  %520 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %521 = call float @dx.op.unary.f32(i32 6, float %520)  ; FAbs(value)
  %522 = fadd fast float %521, %519
  %523 = fsub fast float %517, %522
  %524 = fadd fast float %522, %517
  %525 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %526 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %527 = call float @dx.op.unary.f32(i32 6, float %526)  ; FAbs(value)
  %528 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %499, float %502, float %505)  ; Dot3(ax,ay,az,bx,by,bz)
  %529 = call float @dx.op.unary.f32(i32 6, float %528)  ; FAbs(value)
  %530 = fadd fast float %529, %527
  %531 = fsub fast float %525, %530
  %532 = fadd fast float %530, %525
  %533 = fcmp fast olt float %531, %523
  %534 = select i1 %533, float %531, float %523
  %535 = fcmp fast ogt float %532, %524
  %536 = select i1 %535, float %532, float %524
  %537 = fcmp fast olt float %536, %515
  %538 = fcmp fast olt float %516, %534
  %539 = or i1 %537, %538
  br i1 %539, label %1150, label %540, !dx.controlflow.hints !40

; <label>:540                                     ; preds = %484
  %541 = fmul fast float %496, %221
  %542 = fmul fast float %494, %222
  %543 = fsub fast float %541, %542
  %544 = fmul fast float %492, %222
  %545 = fmul fast float %496, %220
  %546 = fsub fast float %544, %545
  %547 = fmul fast float %494, %220
  %548 = fmul fast float %492, %221
  %549 = fsub fast float %547, %548
  %550 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %551 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %552 = call float @dx.op.unary.f32(i32 6, float %551)  ; FAbs(value)
  %553 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %554 = call float @dx.op.unary.f32(i32 6, float %553)  ; FAbs(value)
  %555 = fadd fast float %554, %552
  %556 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %557 = call float @dx.op.unary.f32(i32 6, float %556)  ; FAbs(value)
  %558 = fadd fast float %555, %557
  %559 = fsub fast float %550, %558
  %560 = fadd fast float %558, %550
  %561 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %562 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %563 = call float @dx.op.unary.f32(i32 6, float %562)  ; FAbs(value)
  %564 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %565 = call float @dx.op.unary.f32(i32 6, float %564)  ; FAbs(value)
  %566 = fadd fast float %565, %563
  %567 = fsub fast float %561, %566
  %568 = fadd fast float %566, %561
  %569 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %570 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %571 = call float @dx.op.unary.f32(i32 6, float %570)  ; FAbs(value)
  %572 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %543, float %546, float %549)  ; Dot3(ax,ay,az,bx,by,bz)
  %573 = call float @dx.op.unary.f32(i32 6, float %572)  ; FAbs(value)
  %574 = fadd fast float %573, %571
  %575 = fsub fast float %569, %574
  %576 = fadd fast float %574, %569
  %577 = fcmp fast olt float %575, %567
  %578 = select i1 %577, float %575, float %567
  %579 = fcmp fast ogt float %576, %568
  %580 = select i1 %579, float %576, float %568
  %581 = fcmp fast olt float %580, %559
  %582 = fcmp fast olt float %560, %578
  %583 = or i1 %581, %582
  br i1 %583, label %1150, label %584, !dx.controlflow.hints !41

; <label>:584                                     ; preds = %540
  %585 = fmul fast float %163, -2.000000e+00
  %586 = fmul fast float %585, %182
  %587 = fmul fast float %586, %176
  %588 = fmul fast float %585, %183
  %589 = fmul fast float %588, %176
  %590 = fmul fast float %585, %184
  %591 = fmul fast float %590, %176
  br label %592

; <label>:592                                     ; preds = %643, %584
  %593 = phi float [ %260, %584 ], [ %649, %643 ]
  %594 = phi float [ %259, %584 ], [ %647, %643 ]
  %595 = phi float [ %258, %584 ], [ %645, %643 ]
  %596 = phi i32 [ 0, %584 ], [ %641, %643 ]
  %597 = fmul fast float %593, %589
  %598 = fmul fast float %594, %591
  %599 = fsub fast float %597, %598
  %600 = fmul fast float %595, %591
  %601 = fmul fast float %593, %587
  %602 = fsub fast float %600, %601
  %603 = fmul fast float %594, %587
  %604 = fmul fast float %595, %589
  %605 = fsub fast float %603, %604
  %606 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %607 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %608 = call float @dx.op.unary.f32(i32 6, float %607)  ; FAbs(value)
  %609 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %610 = call float @dx.op.unary.f32(i32 6, float %609)  ; FAbs(value)
  %611 = fadd fast float %610, %608
  %612 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %613 = call float @dx.op.unary.f32(i32 6, float %612)  ; FAbs(value)
  %614 = fadd fast float %611, %613
  %615 = fsub fast float %606, %614
  %616 = fadd fast float %614, %606
  %617 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %618 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %619 = call float @dx.op.unary.f32(i32 6, float %618)  ; FAbs(value)
  %620 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %621 = call float @dx.op.unary.f32(i32 6, float %620)  ; FAbs(value)
  %622 = fadd fast float %621, %619
  %623 = fsub fast float %617, %622
  %624 = fadd fast float %622, %617
  %625 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %626 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %627 = call float @dx.op.unary.f32(i32 6, float %626)  ; FAbs(value)
  %628 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %599, float %602, float %605)  ; Dot3(ax,ay,az,bx,by,bz)
  %629 = call float @dx.op.unary.f32(i32 6, float %628)  ; FAbs(value)
  %630 = fadd fast float %629, %627
  %631 = fsub fast float %625, %630
  %632 = fadd fast float %630, %625
  %633 = fcmp fast olt float %631, %623
  %634 = select i1 %633, float %631, float %623
  %635 = fcmp fast ogt float %632, %624
  %636 = select i1 %635, float %632, float %624
  %637 = fcmp fast olt float %636, %615
  %638 = fcmp fast olt float %616, %634
  %639 = or i1 %637, %638
  br i1 %639, label %650, label %640, !dx.controlflow.hints !42

; <label>:640                                     ; preds = %592
  %641 = add nuw nsw i32 %596, 1
  %642 = icmp ult i32 %641, 3
  br i1 %642, label %643, label %650, !llvm.loop !43

; <label>:643                                     ; preds = %640
  %644 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %641
  %645 = load float, float* %644, align 4
  %646 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %641
  %647 = load float, float* %646, align 4
  %648 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %641
  %649 = load float, float* %648, align 4
  br label %592

; <label>:650                                     ; preds = %640, %592
  %651 = phi i1 [ true, %592 ], [ false, %640 ]
  br i1 %651, label %1150, label %652, !dx.controlflow.hints !45

; <label>:652                                     ; preds = %650
  %653 = fmul fast float %176, 2.000000e+00
  %654 = fmul fast float %217, %653
  %655 = fsub fast float -0.000000e+00, %654
  %656 = fmul fast float %218, %653
  %657 = fsub fast float -0.000000e+00, %656
  %658 = fmul fast float %219, %653
  %659 = fsub fast float -0.000000e+00, %658
  br label %660

; <label>:660                                     ; preds = %711, %652
  %661 = phi float [ %260, %652 ], [ %717, %711 ]
  %662 = phi float [ %259, %652 ], [ %715, %711 ]
  %663 = phi float [ %258, %652 ], [ %713, %711 ]
  %664 = phi i32 [ 0, %652 ], [ %709, %711 ]
  %665 = fmul fast float %661, %657
  %666 = fmul fast float %662, %659
  %667 = fsub fast float %665, %666
  %668 = fmul fast float %663, %659
  %669 = fmul fast float %661, %655
  %670 = fsub fast float %668, %669
  %671 = fmul fast float %662, %655
  %672 = fmul fast float %663, %657
  %673 = fsub fast float %671, %672
  %674 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %675 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %676 = call float @dx.op.unary.f32(i32 6, float %675)  ; FAbs(value)
  %677 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %678 = call float @dx.op.unary.f32(i32 6, float %677)  ; FAbs(value)
  %679 = fadd fast float %678, %676
  %680 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %681 = call float @dx.op.unary.f32(i32 6, float %680)  ; FAbs(value)
  %682 = fadd fast float %679, %681
  %683 = fsub fast float %674, %682
  %684 = fadd fast float %682, %674
  %685 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %686 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %687 = call float @dx.op.unary.f32(i32 6, float %686)  ; FAbs(value)
  %688 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %689 = call float @dx.op.unary.f32(i32 6, float %688)  ; FAbs(value)
  %690 = fadd fast float %689, %687
  %691 = fsub fast float %685, %690
  %692 = fadd fast float %690, %685
  %693 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %694 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %695 = call float @dx.op.unary.f32(i32 6, float %694)  ; FAbs(value)
  %696 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %667, float %670, float %673)  ; Dot3(ax,ay,az,bx,by,bz)
  %697 = call float @dx.op.unary.f32(i32 6, float %696)  ; FAbs(value)
  %698 = fadd fast float %697, %695
  %699 = fsub fast float %693, %698
  %700 = fadd fast float %698, %693
  %701 = fcmp fast olt float %699, %691
  %702 = select i1 %701, float %699, float %691
  %703 = fcmp fast ogt float %700, %692
  %704 = select i1 %703, float %700, float %692
  %705 = fcmp fast olt float %704, %683
  %706 = fcmp fast olt float %684, %702
  %707 = or i1 %705, %706
  br i1 %707, label %718, label %708, !dx.controlflow.hints !42

; <label>:708                                     ; preds = %660
  %709 = add nuw nsw i32 %664, 1
  %710 = icmp ult i32 %709, 3
  br i1 %710, label %711, label %718, !llvm.loop !43

; <label>:711                                     ; preds = %708
  %712 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %709
  %713 = load float, float* %712, align 4
  %714 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %709
  %715 = load float, float* %714, align 4
  %716 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %709
  %717 = load float, float* %716, align 4
  br label %660

; <label>:718                                     ; preds = %708, %660
  %719 = phi i1 [ true, %660 ], [ false, %708 ]
  br i1 %719, label %1150, label %720, !dx.controlflow.hints !46

; <label>:720                                     ; preds = %718
  %721 = fmul fast float %93, %174
  %722 = fmul fast float %721, %486
  %723 = fsub fast float -0.000000e+00, %722
  %724 = fmul fast float %93, %174
  %725 = fmul fast float %724, %488
  %726 = fsub fast float -0.000000e+00, %725
  %727 = fmul fast float %93, %174
  %728 = fmul fast float %727, %490
  %729 = fsub fast float -0.000000e+00, %728
  br label %730

; <label>:730                                     ; preds = %781, %720
  %731 = phi float [ %260, %720 ], [ %787, %781 ]
  %732 = phi float [ %259, %720 ], [ %785, %781 ]
  %733 = phi float [ %258, %720 ], [ %783, %781 ]
  %734 = phi i32 [ 0, %720 ], [ %779, %781 ]
  %735 = fmul fast float %731, %726
  %736 = fmul fast float %732, %729
  %737 = fsub fast float %735, %736
  %738 = fmul fast float %733, %729
  %739 = fmul fast float %731, %723
  %740 = fsub fast float %738, %739
  %741 = fmul fast float %732, %723
  %742 = fmul fast float %733, %726
  %743 = fsub fast float %741, %742
  %744 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %745 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %746 = call float @dx.op.unary.f32(i32 6, float %745)  ; FAbs(value)
  %747 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %748 = call float @dx.op.unary.f32(i32 6, float %747)  ; FAbs(value)
  %749 = fadd fast float %748, %746
  %750 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %751 = call float @dx.op.unary.f32(i32 6, float %750)  ; FAbs(value)
  %752 = fadd fast float %749, %751
  %753 = fsub fast float %744, %752
  %754 = fadd fast float %752, %744
  %755 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %756 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %757 = call float @dx.op.unary.f32(i32 6, float %756)  ; FAbs(value)
  %758 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %759 = call float @dx.op.unary.f32(i32 6, float %758)  ; FAbs(value)
  %760 = fadd fast float %759, %757
  %761 = fsub fast float %755, %760
  %762 = fadd fast float %760, %755
  %763 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %765 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %766 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %737, float %740, float %743)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %768 = fadd fast float %767, %765
  %769 = fsub fast float %763, %768
  %770 = fadd fast float %768, %763
  %771 = fcmp fast olt float %769, %761
  %772 = select i1 %771, float %769, float %761
  %773 = fcmp fast ogt float %770, %762
  %774 = select i1 %773, float %770, float %762
  %775 = fcmp fast olt float %774, %753
  %776 = fcmp fast olt float %754, %772
  %777 = or i1 %775, %776
  br i1 %777, label %788, label %778, !dx.controlflow.hints !42

; <label>:778                                     ; preds = %730
  %779 = add nuw nsw i32 %734, 1
  %780 = icmp ult i32 %779, 3
  br i1 %780, label %781, label %788, !llvm.loop !43

; <label>:781                                     ; preds = %778
  %782 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %779
  %783 = load float, float* %782, align 4
  %784 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %779
  %785 = load float, float* %784, align 4
  %786 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %779
  %787 = load float, float* %786, align 4
  br label %730

; <label>:788                                     ; preds = %778, %730
  %789 = phi i1 [ true, %730 ], [ false, %778 ]
  br i1 %789, label %1150, label %790, !dx.controlflow.hints !47

; <label>:790                                     ; preds = %788
  %791 = fsub fast float %253, %223
  %792 = fsub fast float %254, %224
  %793 = fsub fast float %255, %225
  %794 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %795 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %796 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %797 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %798 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %799 = fadd fast float %798, %796
  %800 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %801 = call float @dx.op.unary.f32(i32 6, float %800)  ; FAbs(value)
  %802 = fadd fast float %799, %801
  %803 = fsub fast float %794, %802
  %804 = fadd fast float %802, %794
  %805 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %806 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %807 = call float @dx.op.unary.f32(i32 6, float %806)  ; FAbs(value)
  %808 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %809 = call float @dx.op.unary.f32(i32 6, float %808)  ; FAbs(value)
  %810 = fadd fast float %809, %807
  %811 = fsub fast float %805, %810
  %812 = fadd fast float %810, %805
  %813 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %814 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %815 = call float @dx.op.unary.f32(i32 6, float %814)  ; FAbs(value)
  %816 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %791, float %792, float %793)  ; Dot3(ax,ay,az,bx,by,bz)
  %817 = call float @dx.op.unary.f32(i32 6, float %816)  ; FAbs(value)
  %818 = fadd fast float %817, %815
  %819 = fsub fast float %813, %818
  %820 = fadd fast float %818, %813
  %821 = fcmp fast olt float %819, %811
  %822 = select i1 %821, float %819, float %811
  %823 = fcmp fast ogt float %820, %812
  %824 = select i1 %823, float %820, float %812
  %825 = fcmp fast olt float %824, %803
  %826 = fcmp fast olt float %804, %822
  %827 = or i1 %825, %826
  br i1 %827, label %1150, label %828, !dx.controlflow.hints !48

; <label>:828                                     ; preds = %790
  %829 = fadd fast float %217, %208
  %830 = fadd fast float %829, %202
  %831 = fadd fast float %218, %210
  %832 = fadd fast float %831, %203
  %833 = fadd fast float %219, %212
  %834 = fadd fast float %833, %204
  %835 = fmul fast float %174, %93
  %836 = fmul fast float %830, %835
  %837 = fmul fast float %174, %93
  %838 = fmul fast float %832, %837
  %839 = fmul fast float %174, %93
  %840 = fmul fast float %834, %839
  %841 = fmul fast float %840, %215
  %842 = fmul fast float %838, %216
  %843 = fsub fast float %841, %842
  %844 = fmul fast float %836, %216
  %845 = fmul fast float %840, %214
  %846 = fsub fast float %844, %845
  %847 = fmul fast float %838, %214
  %848 = fmul fast float %836, %215
  %849 = fsub fast float %847, %848
  %850 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %851 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %852 = call float @dx.op.unary.f32(i32 6, float %851)  ; FAbs(value)
  %853 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = call float @dx.op.unary.f32(i32 6, float %853)  ; FAbs(value)
  %855 = fadd fast float %854, %852
  %856 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %857 = call float @dx.op.unary.f32(i32 6, float %856)  ; FAbs(value)
  %858 = fadd fast float %855, %857
  %859 = fsub fast float %850, %858
  %860 = fadd fast float %858, %850
  %861 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %862 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = call float @dx.op.unary.f32(i32 6, float %862)  ; FAbs(value)
  %864 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %865 = call float @dx.op.unary.f32(i32 6, float %864)  ; FAbs(value)
  %866 = fadd fast float %865, %863
  %867 = fsub fast float %861, %866
  %868 = fadd fast float %866, %861
  %869 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %870 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %871 = call float @dx.op.unary.f32(i32 6, float %870)  ; FAbs(value)
  %872 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %843, float %846, float %849)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = call float @dx.op.unary.f32(i32 6, float %872)  ; FAbs(value)
  %874 = fadd fast float %873, %871
  %875 = fsub fast float %869, %874
  %876 = fadd fast float %874, %869
  %877 = fcmp fast olt float %875, %867
  %878 = select i1 %877, float %875, float %867
  %879 = fcmp fast ogt float %876, %868
  %880 = select i1 %879, float %876, float %868
  %881 = fcmp fast olt float %880, %859
  %882 = fcmp fast olt float %860, %878
  %883 = or i1 %881, %882
  br i1 %883, label %1150, label %884, !dx.controlflow.hints !49

; <label>:884                                     ; preds = %828
  %885 = fmul fast float %840, %221
  %886 = fmul fast float %838, %222
  %887 = fsub fast float %885, %886
  %888 = fmul fast float %836, %222
  %889 = fmul fast float %840, %220
  %890 = fsub fast float %888, %889
  %891 = fmul fast float %838, %220
  %892 = fmul fast float %836, %221
  %893 = fsub fast float %891, %892
  %894 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %895 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %896 = call float @dx.op.unary.f32(i32 6, float %895)  ; FAbs(value)
  %897 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %898 = call float @dx.op.unary.f32(i32 6, float %897)  ; FAbs(value)
  %899 = fadd fast float %898, %896
  %900 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %901 = call float @dx.op.unary.f32(i32 6, float %900)  ; FAbs(value)
  %902 = fadd fast float %899, %901
  %903 = fsub fast float %894, %902
  %904 = fadd fast float %902, %894
  %905 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %906 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = call float @dx.op.unary.f32(i32 6, float %906)  ; FAbs(value)
  %908 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %909 = call float @dx.op.unary.f32(i32 6, float %908)  ; FAbs(value)
  %910 = fadd fast float %909, %907
  %911 = fsub fast float %905, %910
  %912 = fadd fast float %910, %905
  %913 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %915 = call float @dx.op.unary.f32(i32 6, float %914)  ; FAbs(value)
  %916 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %887, float %890, float %893)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = call float @dx.op.unary.f32(i32 6, float %916)  ; FAbs(value)
  %918 = fadd fast float %917, %915
  %919 = fsub fast float %913, %918
  %920 = fadd fast float %918, %913
  %921 = fcmp fast olt float %919, %911
  %922 = select i1 %921, float %919, float %911
  %923 = fcmp fast ogt float %920, %912
  %924 = select i1 %923, float %920, float %912
  %925 = fcmp fast olt float %924, %903
  %926 = fcmp fast olt float %904, %922
  %927 = or i1 %925, %926
  br i1 %927, label %1150, label %928, !dx.controlflow.hints !50

; <label>:928                                     ; preds = %884
  %929 = fmul fast float %93, %174
  %930 = fmul fast float %929, %830
  %931 = fsub fast float -0.000000e+00, %930
  %932 = fmul fast float %93, %174
  %933 = fmul fast float %932, %832
  %934 = fsub fast float -0.000000e+00, %933
  %935 = fmul fast float %93, %174
  %936 = fmul fast float %935, %834
  %937 = fsub fast float -0.000000e+00, %936
  br label %938

; <label>:938                                     ; preds = %989, %928
  %939 = phi float [ %260, %928 ], [ %995, %989 ]
  %940 = phi float [ %259, %928 ], [ %993, %989 ]
  %941 = phi float [ %258, %928 ], [ %991, %989 ]
  %942 = phi i32 [ 0, %928 ], [ %987, %989 ]
  %943 = fmul fast float %939, %934
  %944 = fmul fast float %940, %937
  %945 = fsub fast float %943, %944
  %946 = fmul fast float %941, %937
  %947 = fmul fast float %939, %931
  %948 = fsub fast float %946, %947
  %949 = fmul fast float %940, %931
  %950 = fmul fast float %941, %934
  %951 = fsub fast float %949, %950
  %952 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %953 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %954 = call float @dx.op.unary.f32(i32 6, float %953)  ; FAbs(value)
  %955 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = call float @dx.op.unary.f32(i32 6, float %955)  ; FAbs(value)
  %957 = fadd fast float %956, %954
  %958 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %959 = call float @dx.op.unary.f32(i32 6, float %958)  ; FAbs(value)
  %960 = fadd fast float %957, %959
  %961 = fsub fast float %952, %960
  %962 = fadd fast float %960, %952
  %963 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %964 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %965 = call float @dx.op.unary.f32(i32 6, float %964)  ; FAbs(value)
  %966 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %967 = call float @dx.op.unary.f32(i32 6, float %966)  ; FAbs(value)
  %968 = fadd fast float %967, %965
  %969 = fsub fast float %963, %968
  %970 = fadd fast float %968, %963
  %971 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %972 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %973 = call float @dx.op.unary.f32(i32 6, float %972)  ; FAbs(value)
  %974 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %945, float %948, float %951)  ; Dot3(ax,ay,az,bx,by,bz)
  %975 = call float @dx.op.unary.f32(i32 6, float %974)  ; FAbs(value)
  %976 = fadd fast float %975, %973
  %977 = fsub fast float %971, %976
  %978 = fadd fast float %976, %971
  %979 = fcmp fast olt float %977, %969
  %980 = select i1 %979, float %977, float %969
  %981 = fcmp fast ogt float %978, %970
  %982 = select i1 %981, float %978, float %970
  %983 = fcmp fast olt float %982, %961
  %984 = fcmp fast olt float %962, %980
  %985 = or i1 %983, %984
  br i1 %985, label %996, label %986, !dx.controlflow.hints !42

; <label>:986                                     ; preds = %938
  %987 = add nuw nsw i32 %942, 1
  %988 = icmp ult i32 %987, 3
  br i1 %988, label %989, label %996, !llvm.loop !43

; <label>:989                                     ; preds = %986
  %990 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %987
  %991 = load float, float* %990, align 4
  %992 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %987
  %993 = load float, float* %992, align 4
  %994 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %987
  %995 = load float, float* %994, align 4
  br label %938

; <label>:996                                     ; preds = %986, %938
  %997 = phi i1 [ true, %938 ], [ false, %986 ]
  br i1 %997, label %1150, label %998, !dx.controlflow.hints !51

; <label>:998                                     ; preds = %996
  %999 = fsub fast float %208, %217
  %1000 = fadd fast float %999, %202
  %1001 = fsub fast float %210, %218
  %1002 = fadd fast float %1001, %203
  %1003 = fsub fast float %212, %219
  %1004 = fadd fast float %1003, %204
  %1005 = fmul fast float %93, %174
  %1006 = fmul fast float %1005, %1000
  %1007 = fsub fast float -0.000000e+00, %1006
  %1008 = fmul fast float %93, %174
  %1009 = fmul fast float %1008, %1002
  %1010 = fsub fast float -0.000000e+00, %1009
  %1011 = fmul fast float %93, %174
  %1012 = fmul fast float %1011, %1004
  %1013 = fsub fast float -0.000000e+00, %1012
  br label %1014

; <label>:1014                                    ; preds = %1065, %998
  %1015 = phi float [ %260, %998 ], [ %1071, %1065 ]
  %1016 = phi float [ %259, %998 ], [ %1069, %1065 ]
  %1017 = phi float [ %258, %998 ], [ %1067, %1065 ]
  %1018 = phi i32 [ 0, %998 ], [ %1063, %1065 ]
  %1019 = fmul fast float %1015, %1010
  %1020 = fmul fast float %1016, %1013
  %1021 = fsub fast float %1019, %1020
  %1022 = fmul fast float %1017, %1013
  %1023 = fmul fast float %1015, %1007
  %1024 = fsub fast float %1022, %1023
  %1025 = fmul fast float %1016, %1007
  %1026 = fmul fast float %1017, %1010
  %1027 = fsub fast float %1025, %1026
  %1028 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1029 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1030 = call float @dx.op.unary.f32(i32 6, float %1029)  ; FAbs(value)
  %1031 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1032 = call float @dx.op.unary.f32(i32 6, float %1031)  ; FAbs(value)
  %1033 = fadd fast float %1032, %1030
  %1034 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1035 = call float @dx.op.unary.f32(i32 6, float %1034)  ; FAbs(value)
  %1036 = fadd fast float %1033, %1035
  %1037 = fsub fast float %1028, %1036
  %1038 = fadd fast float %1036, %1028
  %1039 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1040 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1041 = call float @dx.op.unary.f32(i32 6, float %1040)  ; FAbs(value)
  %1042 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1043 = call float @dx.op.unary.f32(i32 6, float %1042)  ; FAbs(value)
  %1044 = fadd fast float %1043, %1041
  %1045 = fsub fast float %1039, %1044
  %1046 = fadd fast float %1044, %1039
  %1047 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1048 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1049 = call float @dx.op.unary.f32(i32 6, float %1048)  ; FAbs(value)
  %1050 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %1021, float %1024, float %1027)  ; Dot3(ax,ay,az,bx,by,bz)
  %1051 = call float @dx.op.unary.f32(i32 6, float %1050)  ; FAbs(value)
  %1052 = fadd fast float %1051, %1049
  %1053 = fsub fast float %1047, %1052
  %1054 = fadd fast float %1052, %1047
  %1055 = fcmp fast olt float %1053, %1045
  %1056 = select i1 %1055, float %1053, float %1045
  %1057 = fcmp fast ogt float %1054, %1046
  %1058 = select i1 %1057, float %1054, float %1046
  %1059 = fcmp fast olt float %1058, %1037
  %1060 = fcmp fast olt float %1038, %1056
  %1061 = or i1 %1059, %1060
  br i1 %1061, label %1072, label %1062, !dx.controlflow.hints !42

; <label>:1062                                    ; preds = %1014
  %1063 = add nuw nsw i32 %1018, 1
  %1064 = icmp ult i32 %1063, 3
  br i1 %1064, label %1065, label %1072, !llvm.loop !43

; <label>:1065                                    ; preds = %1062
  %1066 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1063
  %1067 = load float, float* %1066, align 4
  %1068 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1063
  %1069 = load float, float* %1068, align 4
  %1070 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1063
  %1071 = load float, float* %1070, align 4
  br label %1014

; <label>:1072                                    ; preds = %1062, %1014
  %1073 = phi i1 [ true, %1014 ], [ false, %1062 ]
  br i1 %1073, label %1150, label %1074, !dx.controlflow.hints !52

; <label>:1074                                    ; preds = %1072
  %1075 = fsub fast float %217, %208
  %1076 = fadd fast float %1075, %202
  %1077 = fsub fast float %218, %210
  %1078 = fadd fast float %1077, %203
  %1079 = fsub fast float %219, %212
  %1080 = fadd fast float %1079, %204
  %1081 = fmul fast float %93, %174
  %1082 = fmul fast float %1081, %1076
  %1083 = fsub fast float -0.000000e+00, %1082
  %1084 = fmul fast float %93, %174
  %1085 = fmul fast float %1084, %1078
  %1086 = fsub fast float -0.000000e+00, %1085
  %1087 = fmul fast float %93, %174
  %1088 = fmul fast float %1087, %1080
  %1089 = fsub fast float -0.000000e+00, %1088
  br label %1090

; <label>:1090                                    ; preds = %1141, %1074
  %1091 = phi float [ %260, %1074 ], [ %1147, %1141 ]
  %1092 = phi float [ %259, %1074 ], [ %1145, %1141 ]
  %1093 = phi float [ %258, %1074 ], [ %1143, %1141 ]
  %1094 = phi i32 [ 0, %1074 ], [ %1139, %1141 ]
  %1095 = fmul fast float %1091, %1086
  %1096 = fmul fast float %1092, %1089
  %1097 = fsub fast float %1095, %1096
  %1098 = fmul fast float %1093, %1089
  %1099 = fmul fast float %1091, %1083
  %1100 = fsub fast float %1098, %1099
  %1101 = fmul fast float %1092, %1083
  %1102 = fmul fast float %1093, %1086
  %1103 = fsub fast float %1101, %1102
  %1104 = call float @dx.op.dot3.f32(i32 55, float %253, float %254, float %255, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1105 = call float @dx.op.dot3.f32(i32 55, float %258, float %259, float %260, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1106 = call float @dx.op.unary.f32(i32 6, float %1105)  ; FAbs(value)
  %1107 = call float @dx.op.dot3.f32(i32 55, float %263, float %264, float %265, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1108 = call float @dx.op.unary.f32(i32 6, float %1107)  ; FAbs(value)
  %1109 = fadd fast float %1108, %1106
  %1110 = call float @dx.op.dot3.f32(i32 55, float %268, float %269, float %270, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1111 = call float @dx.op.unary.f32(i32 6, float %1110)  ; FAbs(value)
  %1112 = fadd fast float %1109, %1111
  %1113 = fsub fast float %1104, %1112
  %1114 = fadd fast float %1112, %1104
  %1115 = call float @dx.op.dot3.f32(i32 55, float %205, float %206, float %207, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1116 = call float @dx.op.dot3.f32(i32 55, float %214, float %215, float %216, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1117 = call float @dx.op.unary.f32(i32 6, float %1116)  ; FAbs(value)
  %1118 = call float @dx.op.dot3.f32(i32 55, float %220, float %221, float %222, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1119 = call float @dx.op.unary.f32(i32 6, float %1118)  ; FAbs(value)
  %1120 = fadd fast float %1119, %1117
  %1121 = fsub fast float %1115, %1120
  %1122 = fadd fast float %1120, %1115
  %1123 = call float @dx.op.dot3.f32(i32 55, float %223, float %224, float %225, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1124 = call float @dx.op.dot3.f32(i32 55, float %226, float %227, float %228, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1125 = call float @dx.op.unary.f32(i32 6, float %1124)  ; FAbs(value)
  %1126 = call float @dx.op.dot3.f32(i32 55, float %229, float %230, float %231, float %1097, float %1100, float %1103)  ; Dot3(ax,ay,az,bx,by,bz)
  %1127 = call float @dx.op.unary.f32(i32 6, float %1126)  ; FAbs(value)
  %1128 = fadd fast float %1127, %1125
  %1129 = fsub fast float %1123, %1128
  %1130 = fadd fast float %1128, %1123
  %1131 = fcmp fast olt float %1129, %1121
  %1132 = select i1 %1131, float %1129, float %1121
  %1133 = fcmp fast ogt float %1130, %1122
  %1134 = select i1 %1133, float %1130, float %1122
  %1135 = fcmp fast olt float %1134, %1113
  %1136 = fcmp fast olt float %1114, %1132
  %1137 = or i1 %1135, %1136
  br i1 %1137, label %1148, label %1138, !dx.controlflow.hints !42

; <label>:1138                                    ; preds = %1090
  %1139 = add nuw nsw i32 %1094, 1
  %1140 = icmp ult i32 %1139, 3
  br i1 %1140, label %1141, label %1148, !llvm.loop !43

; <label>:1141                                    ; preds = %1138
  %1142 = getelementptr [3 x float], [3 x float]* %15, i32 0, i32 %1139
  %1143 = load float, float* %1142, align 4
  %1144 = getelementptr [3 x float], [3 x float]* %16, i32 0, i32 %1139
  %1145 = load float, float* %1144, align 4
  %1146 = getelementptr [3 x float], [3 x float]* %17, i32 0, i32 %1139
  %1147 = load float, float* %1146, align 4
  br label %1090

; <label>:1148                                    ; preds = %1138, %1090
  %1149 = phi i1 [ false, %1090 ], [ true, %1138 ]
  br label %1150

; <label>:1150                                    ; preds = %1148, %1072, %996, %884, %828, %790, %788, %718, %650, %540, %484, %440, %402, %384, %349, %314, %250, %247
  %1151 = phi i1 [ false, %247 ], [ true, %384 ], [ false, %402 ], [ false, %440 ], [ false, %484 ], [ false, %540 ], [ false, %650 ], [ false, %718 ], [ false, %788 ], [ false, %790 ], [ false, %828 ], [ false, %884 ], [ false, %996 ], [ false, %1072 ], [ false, %349 ], [ false, %314 ], [ false, %250 ], [ %1149, %1148 ]
  %1152 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %1151)  ; WaveActiveBallot(cond)
  %1153 = extractvalue %dx.types.fouri32 %1152, 0
  %1154 = extractvalue %dx.types.fouri32 %1152, 1
  %1155 = icmp ugt i32 %142, 63
  br i1 %1155, label %1177, label %1156, !dx.controlflow.hints !53

; <label>:1156                                    ; preds = %1150
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1157 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %1157, label %1158, label %1161, !dx.controlflow.hints !54

; <label>:1158                                    ; preds = %1156
  %1159 = udiv i32 %9, %142
  %1160 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %1159
  store i32 %1153, i32 addrspace(3)* %1160, align 4, !tbaa !30, !noalias !55
  br label %1161

; <label>:1161                                    ; preds = %1158, %1156
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %1162 = icmp eq i32 %142, 32
  br i1 %1162, label %1163, label %1166, !dx.controlflow.hints !59

; <label>:1163                                    ; preds = %1161
  %1164 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !30, !noalias !55
  %1165 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !30, !noalias !55
  br label %1177

; <label>:1166                                    ; preds = %1161
  %1167 = icmp eq i32 %142, 16
  br i1 %1167, label %1168, label %1177, !dx.controlflow.hints !60

; <label>:1168                                    ; preds = %1166
  %1169 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !30, !noalias !55
  %1170 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !30, !noalias !55
  %1171 = shl i32 %1170, 16
  %1172 = or i32 %1171, %1169
  %1173 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !30, !noalias !55
  %1174 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !30, !noalias !55
  %1175 = shl i32 %1174, 16
  %1176 = or i32 %1175, %1173
  br label %1177

; <label>:1177                                    ; preds = %1168, %1166, %1163, %1150
  %1178 = phi i32 [ %1164, %1163 ], [ %1172, %1168 ], [ 0, %1166 ], [ %1153, %1150 ]
  %1179 = phi i32 [ %1165, %1163 ], [ %1176, %1168 ], [ 0, %1166 ], [ %1154, %1150 ]
  %1180 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1178)  ; Countbits(value)
  %1181 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1179)  ; Countbits(value)
  %1182 = and i32 %9, 32
  %1183 = and i32 %9, 31
  %1184 = shl i32 1, %1183
  %1185 = add i32 %1184, -1
  %1186 = icmp eq i32 %1182, 0
  %1187 = and i32 %1178, %1185
  %1188 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1187)  ; Countbits(value)
  %1189 = and i32 %1179, %1185
  %1190 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %1189)  ; Countbits(value)
  %1191 = add i32 %1190, %1180
  %1192 = select i1 %1186, i32 %1188, i32 %1191
  %1193 = add i32 %237, %155
  %1194 = add i32 %1193, %1192
  %1195 = icmp ult i32 %1194, %94
  %1196 = and i1 %1151, %1195
  br i1 %1196, label %1197, label %1199, !dx.controlflow.hints !61

; <label>:1197                                    ; preds = %1177
  %1198 = shl i32 %1194, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1198, i32 undef, i32 %248, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %1199

; <label>:1199                                    ; preds = %1197, %1177
  %1200 = add i32 %1180, %237
  %1201 = add i32 %1200, %1181
  %1202 = add nuw i32 %238, 64
  %1203 = icmp ult i32 %1202, %233
  br i1 %1203, label %236, label %1204

; <label>:1204                                    ; preds = %1199
  br label %1205

; <label>:1205                                    ; preds = %1204, %154
  %1206 = phi i32 [ 0, %154 ], [ %1201, %1204 ]
  %1207 = and i1 %133, %132
  br i1 %1207, label %1208, label %2361, !dx.controlflow.hints !62

; <label>:1208                                    ; preds = %1205
  %1209 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.i32 %1209, 0
  %1211 = icmp ult i32 %155, %1210
  %1212 = icmp ne i32 %1206, 0
  %1213 = and i1 %1212, %1211
  br i1 %1213, label %1214, label %2361, !dx.controlflow.hints !63

; <label>:1214                                    ; preds = %1208
  %1215 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %1216 = extractvalue %dx.types.CBufRet.i32 %1215, 0
  %1217 = extractvalue %dx.types.CBufRet.i32 %1215, 1
  %1218 = mul i32 %1217, %129
  %1219 = add i32 %1218, %127
  %1220 = mul i32 %1219, %1216
  %1221 = add i32 %1220, %125
  %1222 = and i32 %1206, 1023
  %1223 = shl i32 %155, 10
  %1224 = or i32 %1222, %1223
  %1225 = shl i32 %1221, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %1225, i32 undef, i32 %1224, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2361

; <label>:1226                                    ; preds = %82
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %83, i32 0)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = call i32 @dx.op.binary.i32(i32 40, i32 %1228, i32 %33)  ; UMin(a,b)
  %1230 = shl i32 %84, 6
  %1231 = sub i32 %11, %1230
  %1232 = lshr i32 %1231, %83
  %1233 = lshr i32 %1232, 3
  %1234 = mul i32 %20, %83
  %1235 = add i32 %1234, %1233
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1235, i32 0)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1235, i32 4)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = lshr i32 %1237, 20
  %1241 = lshr i32 %1232, 2
  %1242 = and i32 %1241, 1
  %1243 = lshr i32 %1232, 1
  %1244 = and i32 %1243, 1
  %1245 = and i32 %1232, 1
  %1246 = shl nuw nsw i32 %1240, 1
  %1247 = or i32 %1246, %1245
  %1248 = lshr i32 %1237, 7
  %1249 = and i32 %1248, 8190
  %1250 = or i32 %1249, %1244
  %1251 = shl i32 %1237, 1
  %1252 = and i32 %1251, 256
  %1253 = shl i32 %1247, 20
  %1254 = shl nuw nsw i32 %1250, 8
  %1255 = or i32 %1253, %1254
  %1256 = or i32 %1254, %1252
  %1257 = lshr i32 %9, %83
  %1258 = add i32 %85, -1
  %1259 = and i32 %1258, %9
  %1260 = shl i32 %1257, %83
  %1261 = lshr i32 %9, 5
  %1262 = extractvalue %dx.types.CBufRet.i32 %89, 3
  %1263 = lshr i32 %1255, 20
  %1264 = lshr exact i32 %1256, 8
  %1265 = and i32 %1264, 4095
  %1266 = and i32 %1251, 254
  %1267 = or i32 %1266, %1242
  %1268 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 16)  ; CBufferLoadLegacy(handle,regIndex)
  %1269 = extractvalue %dx.types.CBufRet.i32 %1268, 1
  %1270 = icmp uge i32 %1263, %90
  %1271 = icmp uge i32 %1265, %91
  %1272 = or i1 %1270, %1271
  %1273 = icmp uge i32 %1232, %1229
  %1274 = or i1 %1272, %1273
  br i1 %1274, label %2265, label %1275, !dx.controlflow.hints !64

; <label>:1275                                    ; preds = %1226
  %1276 = extractvalue %dx.types.CBufRet.f32 %92, 1
  %1277 = extractvalue %dx.types.CBufRet.f32 %92, 0
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %1235, i32 8)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1281 = extractvalue %dx.types.CBufRet.f32 %1280, 1
  %1282 = extractvalue %dx.types.CBufRet.f32 %1280, 0
  %1283 = uitofp i32 %1263 to float
  %1284 = uitofp i32 %1265 to float
  %1285 = uitofp i32 %1267 to float
  %1286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1287 = extractvalue %dx.types.CBufRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.CBufRet.f32 %1286, 1
  %1289 = fadd fast float %1283, 5.000000e-01
  %1290 = fadd fast float %1284, 5.000000e-01
  %1291 = fmul fast float %1277, 2.000000e+00
  %1292 = fmul fast float %1291, %1289
  %1293 = fmul fast float %1276, 2.000000e+00
  %1294 = fmul fast float %1293, %1290
  %1295 = fadd fast float %1292, -1.000000e+00
  %1296 = fsub fast float 1.000000e+00, %1294
  %1297 = fmul fast float %1285, %93
  %1298 = fsub fast float %1281, %1282
  %1299 = fmul fast float %1297, %1298
  %1300 = fadd fast float %1299, %1282
  %1301 = fadd fast float %1285, 1.000000e+00
  %1302 = fmul fast float %1301, %93
  %1303 = fmul fast float %1302, %1298
  %1304 = fadd fast float %1303, %1282
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 10)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1310 = extractvalue %dx.types.CBufRet.f32 %1309, 0
  %1311 = extractvalue %dx.types.CBufRet.f32 %1309, 1
  %1312 = extractvalue %dx.types.CBufRet.f32 %1309, 2
  %1313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %8, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1313, 0
  %1315 = extractvalue %dx.types.CBufRet.f32 %1313, 1
  %1316 = extractvalue %dx.types.CBufRet.f32 %1313, 2
  %1317 = fmul fast float %1306, %1295
  %1318 = fmul fast float %1307, %1295
  %1319 = fmul fast float %1308, %1295
  %1320 = fmul fast float %1310, %1296
  %1321 = fmul fast float %1311, %1296
  %1322 = fmul fast float %1312, %1296
  %1323 = fadd fast float %1320, %1317
  %1324 = fadd fast float %1321, %1318
  %1325 = fadd fast float %1322, %1319
  %1326 = fadd fast float %1323, %1314
  %1327 = fadd fast float %1324, %1315
  %1328 = fadd fast float %1325, %1316
  %1329 = fmul fast float %1326, %1300
  %1330 = fmul fast float %1327, %1300
  %1331 = fmul fast float %1328, %1300
  %1332 = fmul fast float %1306, %1287
  %1333 = fsub fast float -0.000000e+00, %1332
  %1334 = fmul fast float %1307, %1287
  %1335 = fsub fast float -0.000000e+00, %1334
  %1336 = fmul fast float %1308, %1287
  %1337 = fsub fast float -0.000000e+00, %1336
  %1338 = fmul fast float %1332, %1300
  %1339 = fmul fast float %1334, %1300
  %1340 = fmul fast float %1336, %1300
  %1341 = fmul fast float %1310, %1288
  %1342 = fmul fast float %1311, %1288
  %1343 = fmul fast float %1312, %1288
  %1344 = fmul fast float %1341, %1300
  %1345 = fmul fast float %1342, %1300
  %1346 = fmul fast float %1343, %1300
  %1347 = fmul fast float %1326, %1304
  %1348 = fmul fast float %1327, %1304
  %1349 = fmul fast float %1328, %1304
  %1350 = fmul fast float %1332, %1304
  %1351 = fmul fast float %1334, %1304
  %1352 = fmul fast float %1336, %1304
  %1353 = fmul fast float %1341, %1304
  %1354 = fmul fast float %1342, %1304
  %1355 = fmul fast float %1343, %1304
  %1356 = icmp ult i32 %1259, %1279
  br i1 %1356, label %1357, label %1362, !dx.controlflow.hints !65

; <label>:1357                                    ; preds = %1275
  %1358 = add i32 %1239, %1259
  %1359 = shl i32 %1358, 2
  %1360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %1359, i32 undef)  ; BufferLoad(srv,index,wot)
  %1361 = extractvalue %dx.types.ResRet.i32 %1360, 0
  br label %1362

; <label>:1362                                    ; preds = %1357, %1275
  %1363 = phi i32 [ %1361, %1357 ], [ -1, %1275 ]
  %1364 = icmp ult i32 %1363, %87
  br i1 %1364, label %1365, label %2265, !dx.controlflow.hints !66

; <label>:1365                                    ; preds = %1362
  %1366 = mul i32 %1363, 48
  %1367 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.f32 %1367, 0
  %1369 = extractvalue %dx.types.ResRet.f32 %1367, 1
  %1370 = extractvalue %dx.types.ResRet.f32 %1367, 2
  %1371 = or i32 %1366, 12
  %1372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1371, i32 undef)  ; BufferLoad(srv,index,wot)
  %1373 = extractvalue %dx.types.ResRet.f32 %1372, 0
  %1374 = extractvalue %dx.types.ResRet.f32 %1372, 1
  %1375 = extractvalue %dx.types.ResRet.f32 %1372, 2
  %1376 = add i32 %1366, 24
  %1377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.f32 %1377, 0
  %1379 = extractvalue %dx.types.ResRet.f32 %1377, 1
  %1380 = extractvalue %dx.types.ResRet.f32 %1377, 2
  %1381 = add i32 %1366, 36
  %1382 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %7, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.f32 %1382, 0
  %1384 = extractvalue %dx.types.ResRet.f32 %1382, 1
  %1385 = extractvalue %dx.types.ResRet.f32 %1382, 2
  %1386 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 0
  %1387 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 0
  %1388 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 0
  store float %1373, float* %1386, align 4
  store float %1374, float* %1387, align 4
  store float %1375, float* %1388, align 4
  %1389 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 1
  %1390 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 1
  %1391 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 1
  store float %1378, float* %1389, align 4
  store float %1379, float* %1390, align 4
  store float %1380, float* %1391, align 4
  %1392 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 2
  %1393 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 2
  %1394 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 2
  store float %1383, float* %1392, align 4
  store float %1384, float* %1393, align 4
  store float %1385, float* %1394, align 4
  %1395 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1396 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1397 = call float @dx.op.unary.f32(i32 6, float %1396)  ; FAbs(value)
  %1398 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1399 = call float @dx.op.unary.f32(i32 6, float %1398)  ; FAbs(value)
  %1400 = fadd fast float %1399, %1397
  %1401 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1402 = call float @dx.op.unary.f32(i32 6, float %1401)  ; FAbs(value)
  %1403 = fadd fast float %1400, %1402
  %1404 = fsub fast float %1395, %1403
  %1405 = fadd fast float %1403, %1395
  %1406 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1407 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1408 = call float @dx.op.unary.f32(i32 6, float %1407)  ; FAbs(value)
  %1409 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1410 = call float @dx.op.unary.f32(i32 6, float %1409)  ; FAbs(value)
  %1411 = fadd fast float %1410, %1408
  %1412 = fsub fast float %1406, %1411
  %1413 = fadd fast float %1411, %1406
  %1414 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1415 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1416 = call float @dx.op.unary.f32(i32 6, float %1415)  ; FAbs(value)
  %1417 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1373, float %1374, float %1375)  ; Dot3(ax,ay,az,bx,by,bz)
  %1418 = call float @dx.op.unary.f32(i32 6, float %1417)  ; FAbs(value)
  %1419 = fadd fast float %1418, %1416
  %1420 = fsub fast float %1414, %1419
  %1421 = fadd fast float %1419, %1414
  %1422 = fcmp fast olt float %1420, %1412
  %1423 = select i1 %1422, float %1420, float %1412
  %1424 = fcmp fast ogt float %1421, %1413
  %1425 = select i1 %1424, float %1421, float %1413
  %1426 = fcmp fast olt float %1425, %1404
  %1427 = fcmp fast olt float %1405, %1423
  %1428 = or i1 %1426, %1427
  br i1 %1428, label %2265, label %1429, !dx.controlflow.hints !36

; <label>:1429                                    ; preds = %1365
  %1430 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1431 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1432 = call float @dx.op.unary.f32(i32 6, float %1431)  ; FAbs(value)
  %1433 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1434 = call float @dx.op.unary.f32(i32 6, float %1433)  ; FAbs(value)
  %1435 = fadd fast float %1434, %1432
  %1436 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1437 = call float @dx.op.unary.f32(i32 6, float %1436)  ; FAbs(value)
  %1438 = fadd fast float %1435, %1437
  %1439 = fsub fast float %1430, %1438
  %1440 = fadd fast float %1438, %1430
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1443 = call float @dx.op.unary.f32(i32 6, float %1442)  ; FAbs(value)
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = call float @dx.op.unary.f32(i32 6, float %1444)  ; FAbs(value)
  %1446 = fadd fast float %1445, %1443
  %1447 = fsub fast float %1441, %1446
  %1448 = fadd fast float %1446, %1441
  %1449 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1450 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1451 = call float @dx.op.unary.f32(i32 6, float %1450)  ; FAbs(value)
  %1452 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1378, float %1379, float %1380)  ; Dot3(ax,ay,az,bx,by,bz)
  %1453 = call float @dx.op.unary.f32(i32 6, float %1452)  ; FAbs(value)
  %1454 = fadd fast float %1453, %1451
  %1455 = fsub fast float %1449, %1454
  %1456 = fadd fast float %1454, %1449
  %1457 = fcmp fast olt float %1455, %1447
  %1458 = select i1 %1457, float %1455, float %1447
  %1459 = fcmp fast ogt float %1456, %1448
  %1460 = select i1 %1459, float %1456, float %1448
  %1461 = fcmp fast olt float %1460, %1439
  %1462 = fcmp fast olt float %1440, %1458
  %1463 = or i1 %1461, %1462
  br i1 %1463, label %2265, label %1464, !dx.controlflow.hints !36

; <label>:1464                                    ; preds = %1429
  %1465 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1466 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1467 = call float @dx.op.unary.f32(i32 6, float %1466)  ; FAbs(value)
  %1468 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1469 = call float @dx.op.unary.f32(i32 6, float %1468)  ; FAbs(value)
  %1470 = fadd fast float %1469, %1467
  %1471 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1472 = call float @dx.op.unary.f32(i32 6, float %1471)  ; FAbs(value)
  %1473 = fadd fast float %1470, %1472
  %1474 = fsub fast float %1465, %1473
  %1475 = fadd fast float %1473, %1465
  %1476 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1477 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1478 = call float @dx.op.unary.f32(i32 6, float %1477)  ; FAbs(value)
  %1479 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1480 = call float @dx.op.unary.f32(i32 6, float %1479)  ; FAbs(value)
  %1481 = fadd fast float %1480, %1478
  %1482 = fsub fast float %1476, %1481
  %1483 = fadd fast float %1481, %1476
  %1484 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1485 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1486 = call float @dx.op.unary.f32(i32 6, float %1485)  ; FAbs(value)
  %1487 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1383, float %1384, float %1385)  ; Dot3(ax,ay,az,bx,by,bz)
  %1488 = call float @dx.op.unary.f32(i32 6, float %1487)  ; FAbs(value)
  %1489 = fadd fast float %1488, %1486
  %1490 = fsub fast float %1484, %1489
  %1491 = fadd fast float %1489, %1484
  %1492 = fcmp fast olt float %1490, %1482
  %1493 = select i1 %1492, float %1490, float %1482
  %1494 = fcmp fast ogt float %1491, %1483
  %1495 = select i1 %1494, float %1491, float %1483
  %1496 = fcmp fast olt float %1495, %1474
  %1497 = fcmp fast olt float %1475, %1493
  %1498 = or i1 %1496, %1497
  br i1 %1498, label %2265, label %1499, !dx.controlflow.hints !36

; <label>:1499                                    ; preds = %1464
  %1500 = fcmp fast ole float %1404, %1423
  %1501 = fcmp fast ole float %1425, %1405
  %1502 = and i1 %1500, %1501
  %1503 = zext i1 %1502 to i32
  %1504 = shl nuw nsw i32 %1503, 1
  %1505 = fcmp fast ole float %1439, %1458
  %1506 = fcmp fast ole float %1460, %1440
  %1507 = and i1 %1505, %1506
  %1508 = zext i1 %1507 to i32
  %1509 = or i32 %1508, %1504
  %1510 = shl nuw nsw i32 %1509, 1
  %1511 = fcmp fast ole float %1474, %1493
  %1512 = fcmp fast ole float %1495, %1475
  %1513 = and i1 %1511, %1512
  %1514 = zext i1 %1513 to i32
  %1515 = or i32 %1514, %1510
  %1516 = icmp eq i32 %1515, 7
  br i1 %1516, label %2265, label %1517, !dx.controlflow.hints !37

; <label>:1517                                    ; preds = %1499
  %1518 = fsub fast float %1368, %1329
  %1519 = fsub fast float %1369, %1330
  %1520 = fsub fast float %1370, %1331
  %1521 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1522 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1523 = call float @dx.op.unary.f32(i32 6, float %1522)  ; FAbs(value)
  %1524 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1525 = call float @dx.op.unary.f32(i32 6, float %1524)  ; FAbs(value)
  %1526 = fadd fast float %1525, %1523
  %1527 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1528 = call float @dx.op.unary.f32(i32 6, float %1527)  ; FAbs(value)
  %1529 = fadd fast float %1526, %1528
  %1530 = fsub fast float %1521, %1529
  %1531 = fadd fast float %1529, %1521
  %1532 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = call float @dx.op.unary.f32(i32 6, float %1533)  ; FAbs(value)
  %1535 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1536 = call float @dx.op.unary.f32(i32 6, float %1535)  ; FAbs(value)
  %1537 = fadd fast float %1536, %1534
  %1538 = fsub fast float %1532, %1537
  %1539 = fadd fast float %1537, %1532
  %1540 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1541 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1542 = call float @dx.op.unary.f32(i32 6, float %1541)  ; FAbs(value)
  %1543 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1518, float %1519, float %1520)  ; Dot3(ax,ay,az,bx,by,bz)
  %1544 = call float @dx.op.unary.f32(i32 6, float %1543)  ; FAbs(value)
  %1545 = fadd fast float %1544, %1542
  %1546 = fsub fast float %1540, %1545
  %1547 = fadd fast float %1545, %1540
  %1548 = fcmp fast olt float %1546, %1538
  %1549 = select i1 %1548, float %1546, float %1538
  %1550 = fcmp fast ogt float %1547, %1539
  %1551 = select i1 %1550, float %1547, float %1539
  %1552 = fcmp fast olt float %1551, %1530
  %1553 = fcmp fast olt float %1531, %1549
  %1554 = or i1 %1552, %1553
  br i1 %1554, label %2265, label %1555, !dx.controlflow.hints !38

; <label>:1555                                    ; preds = %1517
  %1556 = fmul fast float %1346, %1339
  %1557 = fmul fast float %1345, %1340
  %1558 = fsub fast float %1556, %1557
  %1559 = fmul fast float %1344, %1340
  %1560 = fmul fast float %1346, %1338
  %1561 = fsub fast float %1559, %1560
  %1562 = fmul fast float %1345, %1338
  %1563 = fmul fast float %1344, %1339
  %1564 = fsub fast float %1562, %1563
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1567 = call float @dx.op.unary.f32(i32 6, float %1566)  ; FAbs(value)
  %1568 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1569 = call float @dx.op.unary.f32(i32 6, float %1568)  ; FAbs(value)
  %1570 = fadd fast float %1569, %1567
  %1571 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1572 = call float @dx.op.unary.f32(i32 6, float %1571)  ; FAbs(value)
  %1573 = fadd fast float %1570, %1572
  %1574 = fsub fast float %1565, %1573
  %1575 = fadd fast float %1573, %1565
  %1576 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = call float @dx.op.unary.f32(i32 6, float %1577)  ; FAbs(value)
  %1579 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1580 = call float @dx.op.unary.f32(i32 6, float %1579)  ; FAbs(value)
  %1581 = fadd fast float %1580, %1578
  %1582 = fsub fast float %1576, %1581
  %1583 = fadd fast float %1581, %1576
  %1584 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1585 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1586 = call float @dx.op.unary.f32(i32 6, float %1585)  ; FAbs(value)
  %1587 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1558, float %1561, float %1564)  ; Dot3(ax,ay,az,bx,by,bz)
  %1588 = call float @dx.op.unary.f32(i32 6, float %1587)  ; FAbs(value)
  %1589 = fadd fast float %1588, %1586
  %1590 = fsub fast float %1584, %1589
  %1591 = fadd fast float %1589, %1584
  %1592 = fcmp fast olt float %1590, %1582
  %1593 = select i1 %1592, float %1590, float %1582
  %1594 = fcmp fast ogt float %1591, %1583
  %1595 = select i1 %1594, float %1591, float %1583
  %1596 = fcmp fast olt float %1595, %1574
  %1597 = fcmp fast olt float %1575, %1593
  %1598 = or i1 %1596, %1597
  br i1 %1598, label %2265, label %1599, !dx.controlflow.hints !39

; <label>:1599                                    ; preds = %1555
  %1600 = fsub fast float %1333, %1341
  %1601 = fadd fast float %1600, %1326
  %1602 = fsub fast float %1335, %1342
  %1603 = fadd fast float %1602, %1327
  %1604 = fsub fast float %1337, %1343
  %1605 = fadd fast float %1604, %1328
  %1606 = fmul fast float %1298, %93
  %1607 = fmul fast float %1601, %1606
  %1608 = fmul fast float %1298, %93
  %1609 = fmul fast float %1603, %1608
  %1610 = fmul fast float %1298, %93
  %1611 = fmul fast float %1605, %1610
  %1612 = fmul fast float %1611, %1339
  %1613 = fmul fast float %1609, %1340
  %1614 = fsub fast float %1612, %1613
  %1615 = fmul fast float %1607, %1340
  %1616 = fmul fast float %1611, %1338
  %1617 = fsub fast float %1615, %1616
  %1618 = fmul fast float %1609, %1338
  %1619 = fmul fast float %1607, %1339
  %1620 = fsub fast float %1618, %1619
  %1621 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1623 = call float @dx.op.unary.f32(i32 6, float %1622)  ; FAbs(value)
  %1624 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1625 = call float @dx.op.unary.f32(i32 6, float %1624)  ; FAbs(value)
  %1626 = fadd fast float %1625, %1623
  %1627 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1628 = call float @dx.op.unary.f32(i32 6, float %1627)  ; FAbs(value)
  %1629 = fadd fast float %1626, %1628
  %1630 = fsub fast float %1621, %1629
  %1631 = fadd fast float %1629, %1621
  %1632 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1633 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1634 = call float @dx.op.unary.f32(i32 6, float %1633)  ; FAbs(value)
  %1635 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1636 = call float @dx.op.unary.f32(i32 6, float %1635)  ; FAbs(value)
  %1637 = fadd fast float %1636, %1634
  %1638 = fsub fast float %1632, %1637
  %1639 = fadd fast float %1637, %1632
  %1640 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1641 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1642 = call float @dx.op.unary.f32(i32 6, float %1641)  ; FAbs(value)
  %1643 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1614, float %1617, float %1620)  ; Dot3(ax,ay,az,bx,by,bz)
  %1644 = call float @dx.op.unary.f32(i32 6, float %1643)  ; FAbs(value)
  %1645 = fadd fast float %1644, %1642
  %1646 = fsub fast float %1640, %1645
  %1647 = fadd fast float %1645, %1640
  %1648 = fcmp fast olt float %1646, %1638
  %1649 = select i1 %1648, float %1646, float %1638
  %1650 = fcmp fast ogt float %1647, %1639
  %1651 = select i1 %1650, float %1647, float %1639
  %1652 = fcmp fast olt float %1651, %1630
  %1653 = fcmp fast olt float %1631, %1649
  %1654 = or i1 %1652, %1653
  br i1 %1654, label %2265, label %1655, !dx.controlflow.hints !40

; <label>:1655                                    ; preds = %1599
  %1656 = fmul fast float %1611, %1345
  %1657 = fmul fast float %1609, %1346
  %1658 = fsub fast float %1656, %1657
  %1659 = fmul fast float %1607, %1346
  %1660 = fmul fast float %1611, %1344
  %1661 = fsub fast float %1659, %1660
  %1662 = fmul fast float %1609, %1344
  %1663 = fmul fast float %1607, %1345
  %1664 = fsub fast float %1662, %1663
  %1665 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1666 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1667 = call float @dx.op.unary.f32(i32 6, float %1666)  ; FAbs(value)
  %1668 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1669 = call float @dx.op.unary.f32(i32 6, float %1668)  ; FAbs(value)
  %1670 = fadd fast float %1669, %1667
  %1671 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1672 = call float @dx.op.unary.f32(i32 6, float %1671)  ; FAbs(value)
  %1673 = fadd fast float %1670, %1672
  %1674 = fsub fast float %1665, %1673
  %1675 = fadd fast float %1673, %1665
  %1676 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1677 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1678 = call float @dx.op.unary.f32(i32 6, float %1677)  ; FAbs(value)
  %1679 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1680 = call float @dx.op.unary.f32(i32 6, float %1679)  ; FAbs(value)
  %1681 = fadd fast float %1680, %1678
  %1682 = fsub fast float %1676, %1681
  %1683 = fadd fast float %1681, %1676
  %1684 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1685 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1686 = call float @dx.op.unary.f32(i32 6, float %1685)  ; FAbs(value)
  %1687 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1658, float %1661, float %1664)  ; Dot3(ax,ay,az,bx,by,bz)
  %1688 = call float @dx.op.unary.f32(i32 6, float %1687)  ; FAbs(value)
  %1689 = fadd fast float %1688, %1686
  %1690 = fsub fast float %1684, %1689
  %1691 = fadd fast float %1689, %1684
  %1692 = fcmp fast olt float %1690, %1682
  %1693 = select i1 %1692, float %1690, float %1682
  %1694 = fcmp fast ogt float %1691, %1683
  %1695 = select i1 %1694, float %1691, float %1683
  %1696 = fcmp fast olt float %1695, %1674
  %1697 = fcmp fast olt float %1675, %1693
  %1698 = or i1 %1696, %1697
  br i1 %1698, label %2265, label %1699, !dx.controlflow.hints !41

; <label>:1699                                    ; preds = %1655
  %1700 = fmul fast float %1287, -2.000000e+00
  %1701 = fmul fast float %1700, %1306
  %1702 = fmul fast float %1701, %1300
  %1703 = fmul fast float %1700, %1307
  %1704 = fmul fast float %1703, %1300
  %1705 = fmul fast float %1700, %1308
  %1706 = fmul fast float %1705, %1300
  br label %1707

; <label>:1707                                    ; preds = %1758, %1699
  %1708 = phi float [ %1375, %1699 ], [ %1764, %1758 ]
  %1709 = phi float [ %1374, %1699 ], [ %1762, %1758 ]
  %1710 = phi float [ %1373, %1699 ], [ %1760, %1758 ]
  %1711 = phi i32 [ 0, %1699 ], [ %1756, %1758 ]
  %1712 = fmul fast float %1708, %1704
  %1713 = fmul fast float %1709, %1706
  %1714 = fsub fast float %1712, %1713
  %1715 = fmul fast float %1710, %1706
  %1716 = fmul fast float %1708, %1702
  %1717 = fsub fast float %1715, %1716
  %1718 = fmul fast float %1709, %1702
  %1719 = fmul fast float %1710, %1704
  %1720 = fsub fast float %1718, %1719
  %1721 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1722 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1723 = call float @dx.op.unary.f32(i32 6, float %1722)  ; FAbs(value)
  %1724 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1725 = call float @dx.op.unary.f32(i32 6, float %1724)  ; FAbs(value)
  %1726 = fadd fast float %1725, %1723
  %1727 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1728 = call float @dx.op.unary.f32(i32 6, float %1727)  ; FAbs(value)
  %1729 = fadd fast float %1726, %1728
  %1730 = fsub fast float %1721, %1729
  %1731 = fadd fast float %1729, %1721
  %1732 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1733 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1734 = call float @dx.op.unary.f32(i32 6, float %1733)  ; FAbs(value)
  %1735 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1736 = call float @dx.op.unary.f32(i32 6, float %1735)  ; FAbs(value)
  %1737 = fadd fast float %1736, %1734
  %1738 = fsub fast float %1732, %1737
  %1739 = fadd fast float %1737, %1732
  %1740 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1741 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1742 = call float @dx.op.unary.f32(i32 6, float %1741)  ; FAbs(value)
  %1743 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1714, float %1717, float %1720)  ; Dot3(ax,ay,az,bx,by,bz)
  %1744 = call float @dx.op.unary.f32(i32 6, float %1743)  ; FAbs(value)
  %1745 = fadd fast float %1744, %1742
  %1746 = fsub fast float %1740, %1745
  %1747 = fadd fast float %1745, %1740
  %1748 = fcmp fast olt float %1746, %1738
  %1749 = select i1 %1748, float %1746, float %1738
  %1750 = fcmp fast ogt float %1747, %1739
  %1751 = select i1 %1750, float %1747, float %1739
  %1752 = fcmp fast olt float %1751, %1730
  %1753 = fcmp fast olt float %1731, %1749
  %1754 = or i1 %1752, %1753
  br i1 %1754, label %1765, label %1755, !dx.controlflow.hints !42

; <label>:1755                                    ; preds = %1707
  %1756 = add nuw nsw i32 %1711, 1
  %1757 = icmp ult i32 %1756, 3
  br i1 %1757, label %1758, label %1765, !llvm.loop !43

; <label>:1758                                    ; preds = %1755
  %1759 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %1756
  %1760 = load float, float* %1759, align 4
  %1761 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %1756
  %1762 = load float, float* %1761, align 4
  %1763 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1756
  %1764 = load float, float* %1763, align 4
  br label %1707

; <label>:1765                                    ; preds = %1755, %1707
  %1766 = phi i1 [ true, %1707 ], [ false, %1755 ]
  br i1 %1766, label %2265, label %1767, !dx.controlflow.hints !45

; <label>:1767                                    ; preds = %1765
  %1768 = fmul fast float %1300, 2.000000e+00
  %1769 = fmul fast float %1341, %1768
  %1770 = fsub fast float -0.000000e+00, %1769
  %1771 = fmul fast float %1342, %1768
  %1772 = fsub fast float -0.000000e+00, %1771
  %1773 = fmul fast float %1343, %1768
  %1774 = fsub fast float -0.000000e+00, %1773
  br label %1775

; <label>:1775                                    ; preds = %1826, %1767
  %1776 = phi float [ %1375, %1767 ], [ %1832, %1826 ]
  %1777 = phi float [ %1374, %1767 ], [ %1830, %1826 ]
  %1778 = phi float [ %1373, %1767 ], [ %1828, %1826 ]
  %1779 = phi i32 [ 0, %1767 ], [ %1824, %1826 ]
  %1780 = fmul fast float %1776, %1772
  %1781 = fmul fast float %1777, %1774
  %1782 = fsub fast float %1780, %1781
  %1783 = fmul fast float %1778, %1774
  %1784 = fmul fast float %1776, %1770
  %1785 = fsub fast float %1783, %1784
  %1786 = fmul fast float %1777, %1770
  %1787 = fmul fast float %1778, %1772
  %1788 = fsub fast float %1786, %1787
  %1789 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1790 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1791 = call float @dx.op.unary.f32(i32 6, float %1790)  ; FAbs(value)
  %1792 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1793 = call float @dx.op.unary.f32(i32 6, float %1792)  ; FAbs(value)
  %1794 = fadd fast float %1793, %1791
  %1795 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1796 = call float @dx.op.unary.f32(i32 6, float %1795)  ; FAbs(value)
  %1797 = fadd fast float %1794, %1796
  %1798 = fsub fast float %1789, %1797
  %1799 = fadd fast float %1797, %1789
  %1800 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1801 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1802 = call float @dx.op.unary.f32(i32 6, float %1801)  ; FAbs(value)
  %1803 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1804 = call float @dx.op.unary.f32(i32 6, float %1803)  ; FAbs(value)
  %1805 = fadd fast float %1804, %1802
  %1806 = fsub fast float %1800, %1805
  %1807 = fadd fast float %1805, %1800
  %1808 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1809 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1810 = call float @dx.op.unary.f32(i32 6, float %1809)  ; FAbs(value)
  %1811 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1782, float %1785, float %1788)  ; Dot3(ax,ay,az,bx,by,bz)
  %1812 = call float @dx.op.unary.f32(i32 6, float %1811)  ; FAbs(value)
  %1813 = fadd fast float %1812, %1810
  %1814 = fsub fast float %1808, %1813
  %1815 = fadd fast float %1813, %1808
  %1816 = fcmp fast olt float %1814, %1806
  %1817 = select i1 %1816, float %1814, float %1806
  %1818 = fcmp fast ogt float %1815, %1807
  %1819 = select i1 %1818, float %1815, float %1807
  %1820 = fcmp fast olt float %1819, %1798
  %1821 = fcmp fast olt float %1799, %1817
  %1822 = or i1 %1820, %1821
  br i1 %1822, label %1833, label %1823, !dx.controlflow.hints !42

; <label>:1823                                    ; preds = %1775
  %1824 = add nuw nsw i32 %1779, 1
  %1825 = icmp ult i32 %1824, 3
  br i1 %1825, label %1826, label %1833, !llvm.loop !43

; <label>:1826                                    ; preds = %1823
  %1827 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %1824
  %1828 = load float, float* %1827, align 4
  %1829 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %1824
  %1830 = load float, float* %1829, align 4
  %1831 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1824
  %1832 = load float, float* %1831, align 4
  br label %1775

; <label>:1833                                    ; preds = %1823, %1775
  %1834 = phi i1 [ true, %1775 ], [ false, %1823 ]
  br i1 %1834, label %2265, label %1835, !dx.controlflow.hints !46

; <label>:1835                                    ; preds = %1833
  %1836 = fmul fast float %93, %1298
  %1837 = fmul fast float %1836, %1601
  %1838 = fsub fast float -0.000000e+00, %1837
  %1839 = fmul fast float %93, %1298
  %1840 = fmul fast float %1839, %1603
  %1841 = fsub fast float -0.000000e+00, %1840
  %1842 = fmul fast float %93, %1298
  %1843 = fmul fast float %1842, %1605
  %1844 = fsub fast float -0.000000e+00, %1843
  br label %1845

; <label>:1845                                    ; preds = %1896, %1835
  %1846 = phi float [ %1375, %1835 ], [ %1902, %1896 ]
  %1847 = phi float [ %1374, %1835 ], [ %1900, %1896 ]
  %1848 = phi float [ %1373, %1835 ], [ %1898, %1896 ]
  %1849 = phi i32 [ 0, %1835 ], [ %1894, %1896 ]
  %1850 = fmul fast float %1846, %1841
  %1851 = fmul fast float %1847, %1844
  %1852 = fsub fast float %1850, %1851
  %1853 = fmul fast float %1848, %1844
  %1854 = fmul fast float %1846, %1838
  %1855 = fsub fast float %1853, %1854
  %1856 = fmul fast float %1847, %1838
  %1857 = fmul fast float %1848, %1841
  %1858 = fsub fast float %1856, %1857
  %1859 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1860 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1861 = call float @dx.op.unary.f32(i32 6, float %1860)  ; FAbs(value)
  %1862 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1863 = call float @dx.op.unary.f32(i32 6, float %1862)  ; FAbs(value)
  %1864 = fadd fast float %1863, %1861
  %1865 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1866 = call float @dx.op.unary.f32(i32 6, float %1865)  ; FAbs(value)
  %1867 = fadd fast float %1864, %1866
  %1868 = fsub fast float %1859, %1867
  %1869 = fadd fast float %1867, %1859
  %1870 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = call float @dx.op.unary.f32(i32 6, float %1871)  ; FAbs(value)
  %1873 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1874 = call float @dx.op.unary.f32(i32 6, float %1873)  ; FAbs(value)
  %1875 = fadd fast float %1874, %1872
  %1876 = fsub fast float %1870, %1875
  %1877 = fadd fast float %1875, %1870
  %1878 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1879 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1880 = call float @dx.op.unary.f32(i32 6, float %1879)  ; FAbs(value)
  %1881 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1852, float %1855, float %1858)  ; Dot3(ax,ay,az,bx,by,bz)
  %1882 = call float @dx.op.unary.f32(i32 6, float %1881)  ; FAbs(value)
  %1883 = fadd fast float %1882, %1880
  %1884 = fsub fast float %1878, %1883
  %1885 = fadd fast float %1883, %1878
  %1886 = fcmp fast olt float %1884, %1876
  %1887 = select i1 %1886, float %1884, float %1876
  %1888 = fcmp fast ogt float %1885, %1877
  %1889 = select i1 %1888, float %1885, float %1877
  %1890 = fcmp fast olt float %1889, %1868
  %1891 = fcmp fast olt float %1869, %1887
  %1892 = or i1 %1890, %1891
  br i1 %1892, label %1903, label %1893, !dx.controlflow.hints !42

; <label>:1893                                    ; preds = %1845
  %1894 = add nuw nsw i32 %1849, 1
  %1895 = icmp ult i32 %1894, 3
  br i1 %1895, label %1896, label %1903, !llvm.loop !43

; <label>:1896                                    ; preds = %1893
  %1897 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %1894
  %1898 = load float, float* %1897, align 4
  %1899 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %1894
  %1900 = load float, float* %1899, align 4
  %1901 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %1894
  %1902 = load float, float* %1901, align 4
  br label %1845

; <label>:1903                                    ; preds = %1893, %1845
  %1904 = phi i1 [ true, %1845 ], [ false, %1893 ]
  br i1 %1904, label %2265, label %1905, !dx.controlflow.hints !47

; <label>:1905                                    ; preds = %1903
  %1906 = fsub fast float %1368, %1347
  %1907 = fsub fast float %1369, %1348
  %1908 = fsub fast float %1370, %1349
  %1909 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1910 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1911 = call float @dx.op.unary.f32(i32 6, float %1910)  ; FAbs(value)
  %1912 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1913 = call float @dx.op.unary.f32(i32 6, float %1912)  ; FAbs(value)
  %1914 = fadd fast float %1913, %1911
  %1915 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1916 = call float @dx.op.unary.f32(i32 6, float %1915)  ; FAbs(value)
  %1917 = fadd fast float %1914, %1916
  %1918 = fsub fast float %1909, %1917
  %1919 = fadd fast float %1917, %1909
  %1920 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1921 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1922 = call float @dx.op.unary.f32(i32 6, float %1921)  ; FAbs(value)
  %1923 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1924 = call float @dx.op.unary.f32(i32 6, float %1923)  ; FAbs(value)
  %1925 = fadd fast float %1924, %1922
  %1926 = fsub fast float %1920, %1925
  %1927 = fadd fast float %1925, %1920
  %1928 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1929 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1930 = call float @dx.op.unary.f32(i32 6, float %1929)  ; FAbs(value)
  %1931 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1906, float %1907, float %1908)  ; Dot3(ax,ay,az,bx,by,bz)
  %1932 = call float @dx.op.unary.f32(i32 6, float %1931)  ; FAbs(value)
  %1933 = fadd fast float %1932, %1930
  %1934 = fsub fast float %1928, %1933
  %1935 = fadd fast float %1933, %1928
  %1936 = fcmp fast olt float %1934, %1926
  %1937 = select i1 %1936, float %1934, float %1926
  %1938 = fcmp fast ogt float %1935, %1927
  %1939 = select i1 %1938, float %1935, float %1927
  %1940 = fcmp fast olt float %1939, %1918
  %1941 = fcmp fast olt float %1919, %1937
  %1942 = or i1 %1940, %1941
  br i1 %1942, label %2265, label %1943, !dx.controlflow.hints !48

; <label>:1943                                    ; preds = %1905
  %1944 = fadd fast float %1341, %1332
  %1945 = fadd fast float %1944, %1326
  %1946 = fadd fast float %1342, %1334
  %1947 = fadd fast float %1946, %1327
  %1948 = fadd fast float %1343, %1336
  %1949 = fadd fast float %1948, %1328
  %1950 = fmul fast float %1298, %93
  %1951 = fmul fast float %1945, %1950
  %1952 = fmul fast float %1298, %93
  %1953 = fmul fast float %1947, %1952
  %1954 = fmul fast float %1298, %93
  %1955 = fmul fast float %1949, %1954
  %1956 = fmul fast float %1955, %1339
  %1957 = fmul fast float %1953, %1340
  %1958 = fsub fast float %1956, %1957
  %1959 = fmul fast float %1951, %1340
  %1960 = fmul fast float %1955, %1338
  %1961 = fsub fast float %1959, %1960
  %1962 = fmul fast float %1953, %1338
  %1963 = fmul fast float %1951, %1339
  %1964 = fsub fast float %1962, %1963
  %1965 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1966 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1967 = call float @dx.op.unary.f32(i32 6, float %1966)  ; FAbs(value)
  %1968 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1969 = call float @dx.op.unary.f32(i32 6, float %1968)  ; FAbs(value)
  %1970 = fadd fast float %1969, %1967
  %1971 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1972 = call float @dx.op.unary.f32(i32 6, float %1971)  ; FAbs(value)
  %1973 = fadd fast float %1970, %1972
  %1974 = fsub fast float %1965, %1973
  %1975 = fadd fast float %1973, %1965
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1978 = call float @dx.op.unary.f32(i32 6, float %1977)  ; FAbs(value)
  %1979 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1980 = call float @dx.op.unary.f32(i32 6, float %1979)  ; FAbs(value)
  %1981 = fadd fast float %1980, %1978
  %1982 = fsub fast float %1976, %1981
  %1983 = fadd fast float %1981, %1976
  %1984 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1985 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1986 = call float @dx.op.unary.f32(i32 6, float %1985)  ; FAbs(value)
  %1987 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %1958, float %1961, float %1964)  ; Dot3(ax,ay,az,bx,by,bz)
  %1988 = call float @dx.op.unary.f32(i32 6, float %1987)  ; FAbs(value)
  %1989 = fadd fast float %1988, %1986
  %1990 = fsub fast float %1984, %1989
  %1991 = fadd fast float %1989, %1984
  %1992 = fcmp fast olt float %1990, %1982
  %1993 = select i1 %1992, float %1990, float %1982
  %1994 = fcmp fast ogt float %1991, %1983
  %1995 = select i1 %1994, float %1991, float %1983
  %1996 = fcmp fast olt float %1995, %1974
  %1997 = fcmp fast olt float %1975, %1993
  %1998 = or i1 %1996, %1997
  br i1 %1998, label %2265, label %1999, !dx.controlflow.hints !49

; <label>:1999                                    ; preds = %1943
  %2000 = fmul fast float %1955, %1345
  %2001 = fmul fast float %1953, %1346
  %2002 = fsub fast float %2000, %2001
  %2003 = fmul fast float %1951, %1346
  %2004 = fmul fast float %1955, %1344
  %2005 = fsub fast float %2003, %2004
  %2006 = fmul fast float %1953, %1344
  %2007 = fmul fast float %1951, %1345
  %2008 = fsub fast float %2006, %2007
  %2009 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2010 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2011 = call float @dx.op.unary.f32(i32 6, float %2010)  ; FAbs(value)
  %2012 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2013 = call float @dx.op.unary.f32(i32 6, float %2012)  ; FAbs(value)
  %2014 = fadd fast float %2013, %2011
  %2015 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = call float @dx.op.unary.f32(i32 6, float %2015)  ; FAbs(value)
  %2017 = fadd fast float %2014, %2016
  %2018 = fsub fast float %2009, %2017
  %2019 = fadd fast float %2017, %2009
  %2020 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2021 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2022 = call float @dx.op.unary.f32(i32 6, float %2021)  ; FAbs(value)
  %2023 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2024 = call float @dx.op.unary.f32(i32 6, float %2023)  ; FAbs(value)
  %2025 = fadd fast float %2024, %2022
  %2026 = fsub fast float %2020, %2025
  %2027 = fadd fast float %2025, %2020
  %2028 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2029 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2030 = call float @dx.op.unary.f32(i32 6, float %2029)  ; FAbs(value)
  %2031 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %2002, float %2005, float %2008)  ; Dot3(ax,ay,az,bx,by,bz)
  %2032 = call float @dx.op.unary.f32(i32 6, float %2031)  ; FAbs(value)
  %2033 = fadd fast float %2032, %2030
  %2034 = fsub fast float %2028, %2033
  %2035 = fadd fast float %2033, %2028
  %2036 = fcmp fast olt float %2034, %2026
  %2037 = select i1 %2036, float %2034, float %2026
  %2038 = fcmp fast ogt float %2035, %2027
  %2039 = select i1 %2038, float %2035, float %2027
  %2040 = fcmp fast olt float %2039, %2018
  %2041 = fcmp fast olt float %2019, %2037
  %2042 = or i1 %2040, %2041
  br i1 %2042, label %2265, label %2043, !dx.controlflow.hints !50

; <label>:2043                                    ; preds = %1999
  %2044 = fmul fast float %93, %1298
  %2045 = fmul fast float %2044, %1945
  %2046 = fsub fast float -0.000000e+00, %2045
  %2047 = fmul fast float %93, %1298
  %2048 = fmul fast float %2047, %1947
  %2049 = fsub fast float -0.000000e+00, %2048
  %2050 = fmul fast float %93, %1298
  %2051 = fmul fast float %2050, %1949
  %2052 = fsub fast float -0.000000e+00, %2051
  br label %2053

; <label>:2053                                    ; preds = %2104, %2043
  %2054 = phi float [ %1375, %2043 ], [ %2110, %2104 ]
  %2055 = phi float [ %1374, %2043 ], [ %2108, %2104 ]
  %2056 = phi float [ %1373, %2043 ], [ %2106, %2104 ]
  %2057 = phi i32 [ 0, %2043 ], [ %2102, %2104 ]
  %2058 = fmul fast float %2054, %2049
  %2059 = fmul fast float %2055, %2052
  %2060 = fsub fast float %2058, %2059
  %2061 = fmul fast float %2056, %2052
  %2062 = fmul fast float %2054, %2046
  %2063 = fsub fast float %2061, %2062
  %2064 = fmul fast float %2055, %2046
  %2065 = fmul fast float %2056, %2049
  %2066 = fsub fast float %2064, %2065
  %2067 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2068 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2069 = call float @dx.op.unary.f32(i32 6, float %2068)  ; FAbs(value)
  %2070 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2071 = call float @dx.op.unary.f32(i32 6, float %2070)  ; FAbs(value)
  %2072 = fadd fast float %2071, %2069
  %2073 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2074 = call float @dx.op.unary.f32(i32 6, float %2073)  ; FAbs(value)
  %2075 = fadd fast float %2072, %2074
  %2076 = fsub fast float %2067, %2075
  %2077 = fadd fast float %2075, %2067
  %2078 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2079 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2080 = call float @dx.op.unary.f32(i32 6, float %2079)  ; FAbs(value)
  %2081 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2082 = call float @dx.op.unary.f32(i32 6, float %2081)  ; FAbs(value)
  %2083 = fadd fast float %2082, %2080
  %2084 = fsub fast float %2078, %2083
  %2085 = fadd fast float %2083, %2078
  %2086 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2087 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2088 = call float @dx.op.unary.f32(i32 6, float %2087)  ; FAbs(value)
  %2089 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %2060, float %2063, float %2066)  ; Dot3(ax,ay,az,bx,by,bz)
  %2090 = call float @dx.op.unary.f32(i32 6, float %2089)  ; FAbs(value)
  %2091 = fadd fast float %2090, %2088
  %2092 = fsub fast float %2086, %2091
  %2093 = fadd fast float %2091, %2086
  %2094 = fcmp fast olt float %2092, %2084
  %2095 = select i1 %2094, float %2092, float %2084
  %2096 = fcmp fast ogt float %2093, %2085
  %2097 = select i1 %2096, float %2093, float %2085
  %2098 = fcmp fast olt float %2097, %2076
  %2099 = fcmp fast olt float %2077, %2095
  %2100 = or i1 %2098, %2099
  br i1 %2100, label %2111, label %2101, !dx.controlflow.hints !42

; <label>:2101                                    ; preds = %2053
  %2102 = add nuw nsw i32 %2057, 1
  %2103 = icmp ult i32 %2102, 3
  br i1 %2103, label %2104, label %2111, !llvm.loop !43

; <label>:2104                                    ; preds = %2101
  %2105 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %2102
  %2106 = load float, float* %2105, align 4
  %2107 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %2102
  %2108 = load float, float* %2107, align 4
  %2109 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %2102
  %2110 = load float, float* %2109, align 4
  br label %2053

; <label>:2111                                    ; preds = %2101, %2053
  %2112 = phi i1 [ true, %2053 ], [ false, %2101 ]
  br i1 %2112, label %2265, label %2113, !dx.controlflow.hints !51

; <label>:2113                                    ; preds = %2111
  %2114 = fsub fast float %1332, %1341
  %2115 = fadd fast float %2114, %1326
  %2116 = fsub fast float %1334, %1342
  %2117 = fadd fast float %2116, %1327
  %2118 = fsub fast float %1336, %1343
  %2119 = fadd fast float %2118, %1328
  %2120 = fmul fast float %93, %1298
  %2121 = fmul fast float %2120, %2115
  %2122 = fsub fast float -0.000000e+00, %2121
  %2123 = fmul fast float %93, %1298
  %2124 = fmul fast float %2123, %2117
  %2125 = fsub fast float -0.000000e+00, %2124
  %2126 = fmul fast float %93, %1298
  %2127 = fmul fast float %2126, %2119
  %2128 = fsub fast float -0.000000e+00, %2127
  br label %2129

; <label>:2129                                    ; preds = %2180, %2113
  %2130 = phi float [ %1375, %2113 ], [ %2186, %2180 ]
  %2131 = phi float [ %1374, %2113 ], [ %2184, %2180 ]
  %2132 = phi float [ %1373, %2113 ], [ %2182, %2180 ]
  %2133 = phi i32 [ 0, %2113 ], [ %2178, %2180 ]
  %2134 = fmul fast float %2130, %2125
  %2135 = fmul fast float %2131, %2128
  %2136 = fsub fast float %2134, %2135
  %2137 = fmul fast float %2132, %2128
  %2138 = fmul fast float %2130, %2122
  %2139 = fsub fast float %2137, %2138
  %2140 = fmul fast float %2131, %2122
  %2141 = fmul fast float %2132, %2125
  %2142 = fsub fast float %2140, %2141
  %2143 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2144 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2145 = call float @dx.op.unary.f32(i32 6, float %2144)  ; FAbs(value)
  %2146 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2147 = call float @dx.op.unary.f32(i32 6, float %2146)  ; FAbs(value)
  %2148 = fadd fast float %2147, %2145
  %2149 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2150 = call float @dx.op.unary.f32(i32 6, float %2149)  ; FAbs(value)
  %2151 = fadd fast float %2148, %2150
  %2152 = fsub fast float %2143, %2151
  %2153 = fadd fast float %2151, %2143
  %2154 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2155 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2156 = call float @dx.op.unary.f32(i32 6, float %2155)  ; FAbs(value)
  %2157 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2158 = call float @dx.op.unary.f32(i32 6, float %2157)  ; FAbs(value)
  %2159 = fadd fast float %2158, %2156
  %2160 = fsub fast float %2154, %2159
  %2161 = fadd fast float %2159, %2154
  %2162 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2163 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2164 = call float @dx.op.unary.f32(i32 6, float %2163)  ; FAbs(value)
  %2165 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %2136, float %2139, float %2142)  ; Dot3(ax,ay,az,bx,by,bz)
  %2166 = call float @dx.op.unary.f32(i32 6, float %2165)  ; FAbs(value)
  %2167 = fadd fast float %2166, %2164
  %2168 = fsub fast float %2162, %2167
  %2169 = fadd fast float %2167, %2162
  %2170 = fcmp fast olt float %2168, %2160
  %2171 = select i1 %2170, float %2168, float %2160
  %2172 = fcmp fast ogt float %2169, %2161
  %2173 = select i1 %2172, float %2169, float %2161
  %2174 = fcmp fast olt float %2173, %2152
  %2175 = fcmp fast olt float %2153, %2171
  %2176 = or i1 %2174, %2175
  br i1 %2176, label %2187, label %2177, !dx.controlflow.hints !42

; <label>:2177                                    ; preds = %2129
  %2178 = add nuw nsw i32 %2133, 1
  %2179 = icmp ult i32 %2178, 3
  br i1 %2179, label %2180, label %2187, !llvm.loop !43

; <label>:2180                                    ; preds = %2177
  %2181 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %2178
  %2182 = load float, float* %2181, align 4
  %2183 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %2178
  %2184 = load float, float* %2183, align 4
  %2185 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %2178
  %2186 = load float, float* %2185, align 4
  br label %2129

; <label>:2187                                    ; preds = %2177, %2129
  %2188 = phi i1 [ true, %2129 ], [ false, %2177 ]
  br i1 %2188, label %2265, label %2189, !dx.controlflow.hints !52

; <label>:2189                                    ; preds = %2187
  %2190 = fsub fast float %1341, %1332
  %2191 = fadd fast float %2190, %1326
  %2192 = fsub fast float %1342, %1334
  %2193 = fadd fast float %2192, %1327
  %2194 = fsub fast float %1343, %1336
  %2195 = fadd fast float %2194, %1328
  %2196 = fmul fast float %93, %1298
  %2197 = fmul fast float %2196, %2191
  %2198 = fsub fast float -0.000000e+00, %2197
  %2199 = fmul fast float %93, %1298
  %2200 = fmul fast float %2199, %2193
  %2201 = fsub fast float -0.000000e+00, %2200
  %2202 = fmul fast float %93, %1298
  %2203 = fmul fast float %2202, %2195
  %2204 = fsub fast float -0.000000e+00, %2203
  br label %2205

; <label>:2205                                    ; preds = %2256, %2189
  %2206 = phi float [ %1375, %2189 ], [ %2262, %2256 ]
  %2207 = phi float [ %1374, %2189 ], [ %2260, %2256 ]
  %2208 = phi float [ %1373, %2189 ], [ %2258, %2256 ]
  %2209 = phi i32 [ 0, %2189 ], [ %2254, %2256 ]
  %2210 = fmul fast float %2206, %2201
  %2211 = fmul fast float %2207, %2204
  %2212 = fsub fast float %2210, %2211
  %2213 = fmul fast float %2208, %2204
  %2214 = fmul fast float %2206, %2198
  %2215 = fsub fast float %2213, %2214
  %2216 = fmul fast float %2207, %2198
  %2217 = fmul fast float %2208, %2201
  %2218 = fsub fast float %2216, %2217
  %2219 = call float @dx.op.dot3.f32(i32 55, float %1368, float %1369, float %1370, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2220 = call float @dx.op.dot3.f32(i32 55, float %1373, float %1374, float %1375, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2221 = call float @dx.op.unary.f32(i32 6, float %2220)  ; FAbs(value)
  %2222 = call float @dx.op.dot3.f32(i32 55, float %1378, float %1379, float %1380, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2223 = call float @dx.op.unary.f32(i32 6, float %2222)  ; FAbs(value)
  %2224 = fadd fast float %2223, %2221
  %2225 = call float @dx.op.dot3.f32(i32 55, float %1383, float %1384, float %1385, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2226 = call float @dx.op.unary.f32(i32 6, float %2225)  ; FAbs(value)
  %2227 = fadd fast float %2224, %2226
  %2228 = fsub fast float %2219, %2227
  %2229 = fadd fast float %2227, %2219
  %2230 = call float @dx.op.dot3.f32(i32 55, float %1329, float %1330, float %1331, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2231 = call float @dx.op.dot3.f32(i32 55, float %1338, float %1339, float %1340, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2232 = call float @dx.op.unary.f32(i32 6, float %2231)  ; FAbs(value)
  %2233 = call float @dx.op.dot3.f32(i32 55, float %1344, float %1345, float %1346, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2234 = call float @dx.op.unary.f32(i32 6, float %2233)  ; FAbs(value)
  %2235 = fadd fast float %2234, %2232
  %2236 = fsub fast float %2230, %2235
  %2237 = fadd fast float %2235, %2230
  %2238 = call float @dx.op.dot3.f32(i32 55, float %1347, float %1348, float %1349, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2239 = call float @dx.op.dot3.f32(i32 55, float %1350, float %1351, float %1352, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2240 = call float @dx.op.unary.f32(i32 6, float %2239)  ; FAbs(value)
  %2241 = call float @dx.op.dot3.f32(i32 55, float %1353, float %1354, float %1355, float %2212, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2242 = call float @dx.op.unary.f32(i32 6, float %2241)  ; FAbs(value)
  %2243 = fadd fast float %2242, %2240
  %2244 = fsub fast float %2238, %2243
  %2245 = fadd fast float %2243, %2238
  %2246 = fcmp fast olt float %2244, %2236
  %2247 = select i1 %2246, float %2244, float %2236
  %2248 = fcmp fast ogt float %2245, %2237
  %2249 = select i1 %2248, float %2245, float %2237
  %2250 = fcmp fast olt float %2249, %2228
  %2251 = fcmp fast olt float %2229, %2247
  %2252 = or i1 %2250, %2251
  br i1 %2252, label %2263, label %2253, !dx.controlflow.hints !42

; <label>:2253                                    ; preds = %2205
  %2254 = add nuw nsw i32 %2209, 1
  %2255 = icmp ult i32 %2254, 3
  br i1 %2255, label %2256, label %2263, !llvm.loop !43

; <label>:2256                                    ; preds = %2253
  %2257 = getelementptr [3 x float], [3 x float]* %12, i32 0, i32 %2254
  %2258 = load float, float* %2257, align 4
  %2259 = getelementptr [3 x float], [3 x float]* %13, i32 0, i32 %2254
  %2260 = load float, float* %2259, align 4
  %2261 = getelementptr [3 x float], [3 x float]* %14, i32 0, i32 %2254
  %2262 = load float, float* %2261, align 4
  br label %2205

; <label>:2263                                    ; preds = %2253, %2205
  %2264 = phi i1 [ true, %2253 ], [ false, %2205 ]
  br label %2265

; <label>:2265                                    ; preds = %2263, %2187, %2111, %1999, %1943, %1905, %1903, %1833, %1765, %1655, %1599, %1555, %1517, %1499, %1464, %1429, %1365, %1362, %1226
  %2266 = phi i32 [ %1363, %1362 ], [ 0, %1226 ], [ %1363, %1365 ], [ %1363, %1429 ], [ %1363, %1464 ], [ %1363, %2187 ], [ %1363, %2111 ], [ %1363, %1999 ], [ %1363, %1943 ], [ %1363, %1905 ], [ %1363, %1903 ], [ %1363, %1833 ], [ %1363, %1765 ], [ %1363, %1655 ], [ %1363, %1599 ], [ %1363, %1555 ], [ %1363, %1517 ], [ %1363, %1499 ], [ %1363, %2263 ]
  %2267 = phi i1 [ false, %1362 ], [ false, %1226 ], [ false, %1365 ], [ false, %1429 ], [ false, %1464 ], [ false, %2187 ], [ false, %2111 ], [ false, %1999 ], [ false, %1943 ], [ false, %1905 ], [ false, %1903 ], [ false, %1833 ], [ false, %1765 ], [ false, %1655 ], [ false, %1599 ], [ false, %1555 ], [ false, %1517 ], [ true, %1499 ], [ %2264, %2263 ]
  %2268 = call i32 @dx.op.waveGetLaneCount(i32 112)  ; WaveGetLaneCount()
  %2269 = call %dx.types.fouri32 @dx.op.waveActiveBallot(i32 116, i1 %2267)  ; WaveActiveBallot(cond)
  %2270 = extractvalue %dx.types.fouri32 %2269, 0
  %2271 = extractvalue %dx.types.fouri32 %2269, 1
  %2272 = icmp ugt i32 %2268, 63
  br i1 %2272, label %2294, label %2273, !dx.controlflow.hints !53

; <label>:2273                                    ; preds = %2265
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2274 = call i1 @dx.op.waveIsFirstLane(i32 110)  ; WaveIsFirstLane()
  br i1 %2274, label %2275, label %2278, !dx.controlflow.hints !54

; <label>:2275                                    ; preds = %2273
  %2276 = udiv i32 %9, %2268
  %2277 = getelementptr [4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 %2276
  store i32 %2270, i32 addrspace(3)* %2277, align 4, !tbaa !30
  br label %2278

; <label>:2278                                    ; preds = %2275, %2273
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2279 = icmp eq i32 %2268, 32
  br i1 %2279, label %2280, label %2283, !dx.controlflow.hints !59

; <label>:2280                                    ; preds = %2278
  %2281 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !30
  %2282 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !30
  br label %2294

; <label>:2283                                    ; preds = %2278
  %2284 = icmp eq i32 %2268, 16
  br i1 %2284, label %2285, label %2294, !dx.controlflow.hints !60

; <label>:2285                                    ; preds = %2283
  %2286 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 0), align 4, !tbaa !30
  %2287 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 1), align 4, !tbaa !30
  %2288 = shl i32 %2287, 16
  %2289 = or i32 %2288, %2286
  %2290 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 2), align 4, !tbaa !30
  %2291 = load i32, i32 addrspace(3)* getelementptr inbounds ([4 x i32], [4 x i32] addrspace(3)* @"\01?gsTempData@@3PAIA", i32 0, i32 3), align 4, !tbaa !30
  %2292 = shl i32 %2291, 16
  %2293 = or i32 %2292, %2290
  br label %2294

; <label>:2294                                    ; preds = %2285, %2283, %2280, %2265
  %2295 = phi i32 [ %2281, %2280 ], [ %2289, %2285 ], [ 0, %2283 ], [ %2270, %2265 ]
  %2296 = phi i32 [ %2282, %2280 ], [ %2293, %2285 ], [ 0, %2283 ], [ %2271, %2265 ]
  %2297 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i32 0, i32 0
  store i32 %2295, i32* %2297, align 4
  %2298 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i32 0, i32 1
  store i32 %2296, i32* %2298, align 4
  %2299 = icmp eq i32 %83, 5
  %2300 = and i32 %85, 31
  %2301 = shl i32 1, %2300
  %2302 = add i32 %2301, -1
  %2303 = select i1 %2299, i32 -1, i32 %2302
  %2304 = getelementptr [2 x i32], [2 x i32]* %18, i32 0, i32 %1261
  %2305 = load i32, i32* %2304, align 4, !tbaa !30
  %2306 = and i32 %1260, 31
  %2307 = lshr i32 %2305, %2306
  %2308 = and i32 %2307, %2303
  %2309 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2308)  ; Countbits(value)
  %2310 = icmp eq i32 %9, 0
  br i1 %2310, label %2311, label %2312, !dx.controlflow.hints !67

; <label>:2311                                    ; preds = %2294
  store i32 0, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !30
  br label %2312

; <label>:2312                                    ; preds = %2311, %2294
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  %2313 = icmp eq i32 %1259, 0
  br i1 %2313, label %2314, label %2319, !dx.controlflow.hints !68

; <label>:2314                                    ; preds = %2312
  %2315 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %1257
  br i1 %1274, label %2318, label %2316, !dx.controlflow.hints !69

; <label>:2316                                    ; preds = %2314
  %2317 = atomicrmw add i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", i32 %2309 seq_cst
  store i32 %2317, i32 addrspace(3)* %2315, align 4, !tbaa !30
  br label %2319

; <label>:2318                                    ; preds = %2314
  store i32 0, i32 addrspace(3)* %2315, align 4, !tbaa !30
  br label %2319

; <label>:2319                                    ; preds = %2318, %2316, %2312
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %2310, label %2320, label %2323, !dx.controlflow.hints !70

; <label>:2320                                    ; preds = %2319
  %2321 = load i32, i32 addrspace(3)* @"\01?sharedMemAlloc@@3IA", align 4, !tbaa !30
  %2322 = call i32 @dx.op.atomicBinOp.i32(i32 78, %dx.types.Handle %2, i32 0, i32 %1269, i32 0, i32 undef, i32 %2321)  ; AtomicBinOp(handle,atomicOp,offset0,offset1,offset2,newValue)
  store i32 %2322, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !30
  br label %2323

; <label>:2323                                    ; preds = %2320, %2319
  call void @dx.op.barrier(i32 80, i32 9)  ; Barrier(barrierMode)
  br i1 %1274, label %2361, label %2324, !dx.controlflow.hints !71

; <label>:2324                                    ; preds = %2323
  %2325 = getelementptr [64 x i32], [64 x i32] addrspace(3)* @"\01?sharedOffsetToFirstDecalIndexPerCell@@3PAIA", i32 0, i32 %1257
  %2326 = load i32, i32 addrspace(3)* %2325, align 4, !tbaa !30
  %2327 = load i32, i32 addrspace(3)* @"\01?sharedMemAllocGlobalBase@@3IA", align 4, !tbaa !30
  %2328 = add i32 %2326, %1262
  %2329 = add i32 %2328, %2327
  %2330 = and i32 %1259, 31
  %2331 = shl i32 1, %2330
  %2332 = and i32 %2308, %2331
  %2333 = icmp eq i32 %2332, 0
  br i1 %2333, label %2342, label %2334, !dx.controlflow.hints !72

; <label>:2334                                    ; preds = %2324
  %2335 = add i32 %2331, -1
  %2336 = and i32 %2308, %2335
  %2337 = call i32 @dx.op.unaryBits.i32(i32 31, i32 %2336)  ; Countbits(value)
  %2338 = add i32 %2337, %2329
  %2339 = icmp ult i32 %2338, %94
  br i1 %2339, label %2340, label %2342, !dx.controlflow.hints !73

; <label>:2340                                    ; preds = %2334
  %2341 = shl i32 %2338, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2341, i32 undef, i32 %2266, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2342

; <label>:2342                                    ; preds = %2340, %2334, %2324
  br i1 %2313, label %2343, label %2361, !dx.controlflow.hints !74

; <label>:2343                                    ; preds = %2342
  %2344 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2345 = extractvalue %dx.types.CBufRet.i32 %2344, 0
  %2346 = icmp ult i32 %2329, %2345
  %2347 = icmp ne i32 %2309, 0
  %2348 = and i1 %2347, %2346
  br i1 %2348, label %2349, label %2361, !dx.controlflow.hints !63

; <label>:2349                                    ; preds = %2343
  %2350 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %8, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %2351 = extractvalue %dx.types.CBufRet.i32 %2350, 0
  %2352 = extractvalue %dx.types.CBufRet.i32 %2350, 1
  %2353 = mul i32 %2352, %1267
  %2354 = add i32 %2353, %1265
  %2355 = mul i32 %2354, %2351
  %2356 = add i32 %2355, %1263
  %2357 = and i32 %2309, 1023
  %2358 = shl i32 %2329, 10
  %2359 = or i32 %2358, %2357
  %2360 = shl i32 %2356, 2
  call void @dx.op.bufferStore.i32(i32 69, %dx.types.Handle %1, i32 %2360, i32 undef, i32 %2359, i32 undef, i32 undef, i32 undef, i8 1)  ; BufferStore(uav,coord0,coord1,value0,value1,value2,value3,mask)
  br label %2361

; <label>:2361                                    ; preds = %2349, %2343, %2342, %2323, %1214, %1208, %1205
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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
!38 = distinct !{!38, !"dx.controlflow.hints", i32 2}
!39 = distinct !{!39, !"dx.controlflow.hints", i32 2}
!40 = distinct !{!40, !"dx.controlflow.hints", i32 2}
!41 = distinct !{!41, !"dx.controlflow.hints", i32 2}
!42 = distinct !{!42, !"dx.controlflow.hints", i32 2}
!43 = distinct !{!43, !44}
!44 = !{!"llvm.loop.unroll.disable"}
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
!55 = !{!56, !58}
!56 = distinct !{!56, !57, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outStreamIndex"}
!57 = distinct !{!57, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z"}
!58 = distinct !{!58, !57, !"\01?TiledBitCountAndStreamCompact64@@YAXI_NAIAI1@Z: %outBitCount"}
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

